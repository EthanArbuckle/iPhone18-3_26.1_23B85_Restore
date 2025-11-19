uint64_t sub_245FDEC78(uint64_t a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  if (*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
  {
    v11 = sub_245FA31EC();
    (*(v4 + 16))(v8, v11, v3);
    v12 = sub_2460918D4();
    v13 = sub_246091FB4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_245F8A000, v12, v13, "Can't add new samples. Backend manager is closed", v14, 2u);
      MEMORY[0x24C1989D0](v14, -1, -1);
    }

    return (*(v4 + 8))(v8, v3);
  }

  if (*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted))
  {
    v16 = sub_245FA31EC();
    (*(v4 + 16))(v10, v16, v3);
    v17 = sub_2460918D4();
    v18 = sub_246091FC4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_245F8A000, v17, v18, "Images have already been added... continuing.", v19, 2u);
      MEMORY[0x24C1989D0](v19, -1, -1);
    }

    return (*(v4 + 8))(v10, v3);
  }

  if (*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader))
  {
    v20 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader);

    sub_245FE6070(v21, a1);
LABEL_14:
  }

  if (*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples))
  {
    v22 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples);

    sub_245FE6EC8(v23, a1, 0, 1, 0, 1);
    goto LABEL_14;
  }

  v24 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_245FFEAE4;
  *(v25 + 24) = v1;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858DF5C8;
  v26 = _Block_copy(aBlock);
  v27 = v24;

  dispatch_sync(v27, v26);

  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_245FDF048(uint64_t a1)
{
  v2 = type metadata accessor for PhotogrammetrySession.Output(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) = 1;
    result = (*(*a1 + 464))(result);
    if (result)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      swift_storeEnumTagMultiPayload();
      (*(v8 + 8))(v6, ObjectType, v8);
      swift_unknownObjectRelease();
      return sub_245FFEA30(v6, type metadata accessor for PhotogrammetrySession.Output);
    }
  }

  return result;
}

uint64_t sub_245FDF174(char **a1, uint64_t *a2)
{
  v104 = a2;
  i = a1;
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v105 = &v89 - v9;
  v95 = sub_246091704();
  v94 = *(v95 - 8);
  v10 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v97 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for PhotogrammetrySession.Request(0);
  v100 = *(v92 - 8);
  v12 = *(v100 + 64);
  v13 = MEMORY[0x28223BE20](v92);
  v96 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v101 = &v89 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = (&v89 - v17);
  v19 = sub_245F8E624(&qword_27EE3A590, &qword_246098400);
  v93 = *(v19 - 8);
  v20 = *(v93 + 64);
  MEMORY[0x28223BE20](v19);
  v99 = (&v89 - v21);
  v22 = sub_245F8E624(&qword_27EE3A598, &qword_246098408);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = (&v89 - v27);
  v29 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  result = MEMORY[0x28223BE20](v31);
  v35 = &v89 - v34;
  if (*(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
  {
    v36 = sub_245FA31EC();
    v37 = v4;
    (*(v4 + 16))(v8, v36, v3);
    v38 = sub_2460918D4();
    v39 = sub_246091FB4();
    v40 = v37;
    v41 = v8;
    if (os_log_type_enabled(v38, v39))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_245F8A000, v38, v39, "Process exited. Backend manager is closed.", v42, 2u);
      MEMORY[0x24C1989D0](v42, -1, -1);
    }

    return (*(v40 + 8))(v41, v3);
  }

  if (*(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) != 1)
  {
    v81 = sub_245FA31EC();
    v82 = v4;
    v83 = v105;
    (*(v4 + 16))(v105, v81, v3);
    v84 = sub_2460918D4();
    v85 = sub_246091FB4();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_245F8A000, v84, v85, "Process has not started.", v86, 2u);
      MEMORY[0x24C1989D0](v86, -1, -1);
    }

    (*(v82 + 8))(v83, v3);
    v87 = 4;
    goto LABEL_40;
  }

  v43 = *i;
  v44 = *(i + 8);
  v103 = *(i + 10);
  v98 = v2;
  v105 = v43;
  if (v44)
  {
    v91 = v33;
    LODWORD(i) = *(i + 9);
    v45 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
    swift_beginAccess();
    sub_245F8E7A4(v2 + v45, v35, &qword_27EE3A4B8, &unk_246097ED8);
    v46 = v92;
    v90 = *(v100 + 48);
    v47 = v90(v35, 1, v92);
    result = sub_245F8E744(v35, &qword_27EE3A4B8, &unk_246097ED8);
    if (v47 == 1)
    {
      goto LABEL_42;
    }

    if (i != 7)
    {
      LOBYTE(v106) = i;
      if (sub_245FE9894(&v106))
      {
        v48 = v98 + v45;
        v49 = v91;
        sub_245F8E7A4(v48, v91, &qword_27EE3A4B8, &unk_246097ED8);
        result = v90(v49, 1, v46);
        if (result == 1)
        {
          goto LABEL_43;
        }

        sub_245FEA118(v49);
        v51 = v50;
        result = sub_245FFEA30(v49, type metadata accessor for PhotogrammetrySession.Request);
        *(v98 + OBJC_IVAR____TtC6CoreOC9PGManager_modelFileRequestEstimatedTime) = v51;
        v43 = v105;
        goto LABEL_13;
      }
    }

    v87 = 3;
LABEL_40:
    v88 = v104;
    *v104 = v87;
    *(v88 + 8) = 1;
    v106 = v87;
    v107 = 1;
    sub_245FFD204();
    return swift_willThrowTypedImpl();
  }

LABEL_13:
  v52 = 0;
  v53 = *(v43 + 2);
  v92 = OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap;
  v104 = (v93 + 56);
  v54 = (v93 + 48);
  v91 = (v94 + 32);
  v90 = OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests;
  v93 = v94 + 8;
  v55 = v95;
  for (i = v53; ; v53 = i)
  {
    if (v52 == v53)
    {
      v56 = 1;
      v52 = v53;
      goto LABEL_20;
    }

    if (v52 >= *(v43 + 2))
    {
      break;
    }

    v57 = &v43[((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v52];
    v58 = *(v19 + 48);
    v59 = v99;
    *v99 = v52;
    sub_245FFE868(v57, v59 + v58, type metadata accessor for PhotogrammetrySession.Request);
    v60 = v59;
    v43 = v105;
    sub_245FC5914(v60, v26, &qword_27EE3A590, &qword_246098400);
    v56 = 0;
    ++v52;
LABEL_20:
    (*v104)(v26, v56, 1, v19);
    sub_245FC5914(v26, v28, &qword_27EE3A598, &qword_246098408);
    result = (*v54)(v28, 1, v19);
    if (result == 1)
    {
      return result;
    }

    v61 = *v28;
    sub_245FFE800(v28 + *(v19 + 48), v18, type metadata accessor for PhotogrammetrySession.Request);
    if (((v61 == 0) & v103) == 1)
    {
      goto LABEL_14;
    }

    v62 = v101;
    sub_245FFE868(v18, v101, type metadata accessor for PhotogrammetrySession.Request);
    v63 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
    v64 = (*(*(v63 - 8) + 48))(v62, 3, v63);
    if (v64 > 1)
    {
      v43 = v105;
      if (v64 == 2)
      {
        sub_245FEB84C(v18);
      }

      else
      {
        sub_245FEBC1C(v18);
      }

LABEL_14:
      result = sub_245FFEA30(v18, type metadata accessor for PhotogrammetrySession.Request);
      continue;
    }

    if (v64)
    {
      sub_245FEB48C(v18);
    }

    else
    {
      LODWORD(v94) = *(v101 + *(v63 + 48));
      v65 = v101 + *(v63 + 64);
      v66 = *(v65 + 112);
      v108[6] = *(v65 + 96);
      v108[7] = v66;
      v109 = *(v65 + 128);
      v67 = *(v65 + 48);
      v108[2] = *(v65 + 32);
      v108[3] = v67;
      v68 = *(v65 + 80);
      v108[4] = *(v65 + 64);
      v108[5] = v68;
      v69 = *(v65 + 16);
      v108[0] = *v65;
      v108[1] = v69;
      v70 = v97;
      (*v91)(v97);
      v72 = v98;
      if (*(v98 + v92))
      {
        LOBYTE(v106) = v94;
        sub_245FEA360(v18, v71, &v106, v108);
        (*v93)(v70, v55);
      }

      else
      {
        sub_245FFE868(v18, v96, type metadata accessor for PhotogrammetrySession.Request);
        v73 = v90;
        swift_beginAccess();
        v74 = *(v73 + v72);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v73 + v72) = v74;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v74 = sub_245FF7EC4(0, v74[2] + 1, 1, v74);
          *(v90 + v98) = v74;
        }

        v76 = v97;
        v78 = v74[2];
        v77 = v74[3];
        v79 = v78 + 1;
        if (v78 >= v77 >> 1)
        {
          v94 = v78 + 1;
          v80 = sub_245FF7EC4(v77 > 1, v78 + 1, 1, v74);
          v79 = v94;
          v74 = v80;
        }

        v74[2] = v79;
        sub_245FFE800(v96, v74 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v78, type metadata accessor for PhotogrammetrySession.Request);
        *(v90 + v98) = v74;
        swift_endAccess();
        v55 = v95;
        (*v93)(v76, v95);
      }
    }

    result = sub_245FFEA30(v18, type metadata accessor for PhotogrammetrySession.Request);
    v43 = v105;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_245FDFD9C()
{
  v1 = v0;
  v2 = sub_2460919F4();
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_246091A64();
  v16 = *(v6 - 8);
  v17 = v6;
  v7 = *(v16 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled);
  LOBYTE(aBlock[0]) = 1;

  sub_2460901B8(aBlock);

  v11 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_245FFD384;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DF000;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  sub_246091A14();
  v19 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v9, v5, v13);
  _Block_release(v13);

  (*(v18 + 8))(v5, v2);
  (*(v16 + 8))(v9, v17);
}

uint64_t sub_245FE00AC()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v36 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v36 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v36 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted))
    {
      if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
      {
        v16 = sub_245FA31EC();
        (*(v1 + 16))(v8, v16, v0);
        v17 = sub_2460918D4();
        v18 = sub_246091FB4();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_245F8A000, v17, v18, "Skip cancel. Backend manager is closed.", v19, 2u);
          MEMORY[0x24C1989D0](v19, -1, -1);
        }

        (*(v1 + 8))(v8, v0);
      }

      else
      {
        v30 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
        swift_beginAccess();
        if (*(v15 + v30))
        {
          v31 = CPGSessionCancelProcessing();
          if (v31 != -10)
          {
            if (v31)
            {
              v32 = sub_245FA31EC();
              (*(v1 + 16))(v11, v32, v0);
              v33 = sub_2460918D4();
              v34 = sub_246091FB4();
              if (os_log_type_enabled(v33, v34))
              {
                v35 = swift_slowAlloc();
                *v35 = 0;
                _os_log_impl(&dword_245F8A000, v33, v34, "Cancel processing submits but failed", v35, 2u);
                MEMORY[0x24C1989D0](v35, -1, -1);
              }

              (*(v1 + 8))(v11, v0);
            }
          }
        }
      }
    }

    else
    {
      v26 = sub_245FA31EC();
      (*(v1 + 16))(v5, v26, v0);
      v27 = sub_2460918D4();
      v28 = sub_246091FC4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_245F8A000, v27, v28, "Process has not started, nothing to cancel.", v29, 2u);
        MEMORY[0x24C1989D0](v29, -1, -1);
      }

      (*(v1 + 8))(v5, v0);
    }
  }

  else
  {
    v20 = sub_245FA31EC();
    (*(v1 + 16))(v13, v20, v0);
    v21 = sub_2460918D4();
    v22 = sub_246091FB4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36[0] = v24;
      *v23 = 136380675;
      *(v23 + 4) = sub_245F8D3C0(0x29286C65636E6163, 0xE800000000000000, v36);
      _os_log_impl(&dword_245F8A000, v21, v22, "Backend Manager.%{private}s failed to capture the instance!", v23, 0xCu);
      sub_245F8E6F4(v24);
      MEMORY[0x24C1989D0](v24, -1, -1);
      MEMORY[0x24C1989D0](v23, -1, -1);
    }

    return (*(v1 + 8))(v13, v0);
  }
}

uint64_t sub_245FE0544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_245FA31EC();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2460918D4();
  v15 = sub_246091FC4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134349056;
    *(v16 + 4) = a2;
    _os_log_impl(&dword_245F8A000, v14, v15, "Processing cancellation status callback with code = %{public}llu", v16, 0xCu);
    MEMORY[0x24C1989D0](v16, -1, -1);
  }

  result = (*(v9 + 8))(v12, v8);
  if (a1)
  {
    if (a4)
    {
      v18 = *(*a4 + 1976);

      v18(a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_245FE0718()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245FA31EC();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2460918D4();
  v9 = sub_246091FC4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock = v11;
    *v10 = 136380675;
    *(v10 + 4) = sub_245F8D3C0(0x292865736F6C63, 0xE700000000000000, &aBlock);
    _os_log_impl(&dword_245F8A000, v8, v9, "Backend Manager.%{private}s called", v10, 0xCu);
    sub_245F8E6F4(v11);
    MEMORY[0x24C1989D0](v11, -1, -1);
    MEMORY[0x24C1989D0](v10, -1, -1);
  }

  result = (*(v3 + 8))(v6, v2);
  if ((*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed) = 1;
    v13 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
    v25 = nullsub_1;
    v26 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_245FB4BFC;
    v24 = &unk_2858DF028;
    v14 = _Block_copy(&aBlock);
    v15 = v13;

    dispatch_sync(v15, v14);

    _Block_release(v14);
    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      __break(1u);
    }

    else
    {
      v16 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = sub_245FFD38C;
      *(v18 + 24) = v17;
      v25 = sub_245FC4C80;
      v26 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v22 = 1107296256;
      v23 = sub_245FB4BFC;
      v24 = &unk_2858DF078;
      v19 = _Block_copy(&aBlock);
      v20 = v16;

      dispatch_sync(v20, v19);

      _Block_release(v19);
      LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

      if ((v19 & 1) == 0)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_245FE0AD0()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
    swift_beginAccess();
    if (*(v12 + v13))
    {
      v14 = sub_245FA31EC();
      v38 = v1[2];
      v38(v8, v14, v0);
      v15 = sub_2460918D4();
      v16 = sub_246091FC4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v37 = v1;
        v18 = v17;
        v19 = swift_slowAlloc();
        v36 = v14;
        v20 = v19;
        v39 = v19;
        *v18 = 136380675;
        *(v18 + 4) = sub_245F8D3C0(0x292865736F6C63, 0xE700000000000000, &v39);
        _os_log_impl(&dword_245F8A000, v15, v16, "Backend Manager.%{private}s happened.", v18, 0xCu);
        sub_245F8E6F4(v20);
        v21 = v20;
        v14 = v36;
        MEMORY[0x24C1989D0](v21, -1, -1);
        v22 = v18;
        v1 = v37;
        MEMORY[0x24C1989D0](v22, -1, -1);
      }

      v23 = v1[1];
      v23(v8, v0);
      v24 = *(v12 + v13);
      v25 = CPGSessionCancelProcessing();
      if (v25 != -10 && v25 != 0)
      {
        v38(v5, v14, v0);
        v27 = sub_2460918D4();
        v28 = sub_246091FB4();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_245F8A000, v27, v28, "Unexpected return state for cancel.", v29, 2u);
          MEMORY[0x24C1989D0](v29, -1, -1);
        }

        v23(v5, v0);
      }

      sub_245FEDFE8();
    }
  }

  else
  {
    v31 = sub_245FA31EC();
    (v1[2])(v10, v31, v0);
    v32 = sub_2460918D4();
    v33 = sub_246091FB4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136380675;
      *(v34 + 4) = sub_245F8D3C0(0x292865736F6C63, 0xE700000000000000, &v40);
      _os_log_impl(&dword_245F8A000, v32, v33, "Backend Manager.%{private}s failed to capture the instance!", v34, 0xCu);
      sub_245F8E6F4(v35);
      MEMORY[0x24C1989D0](v35, -1, -1);
      MEMORY[0x24C1989D0](v34, -1, -1);
    }

    return (v1[1])(v10, v0);
  }
}

uint64_t sub_245FE0F04(uint64_t a1)
{
  v3 = sub_2460919F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_246091A64();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PhotogrammetrySample();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20](v12 - 8);
  if ((*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) & 1) == 0)
  {
    v22 = v8;
    v16 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
    sub_245FFE868(a1, &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotogrammetrySample);
    v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    sub_245FFE800(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PhotogrammetrySample);
    aBlock[4] = sub_245FFD5B8;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858DF0C8;
    v19 = _Block_copy(aBlock);
    v20 = v16;

    sub_246091A14();
    v24 = MEMORY[0x277D84F90];
    sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v11, v7, v19);
    _Block_release(v19);

    (*(v4 + 8))(v7, v3);
    (*(v23 + 8))(v11, v22);
  }

  return result;
}

uint64_t sub_245FE12A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotogrammetrySample();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = (&v43 - v7);
  v9 = sub_2460918F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  if (*(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted))
  {
    v18 = sub_245FA31EC();
    (*(v10 + 16))(v14, v18, v9);
    v19 = sub_2460918D4();
    v20 = sub_246091FC4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_245F8A000, v19, v20, "Process has started, ignore new re-localization queries.", v21, 2u);
      MEMORY[0x24C1989D0](v21, -1, -1);
    }

    return (*(v10 + 8))(v14, v9);
  }

  v46 = v9;
  v23 = *(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter);

  sub_245FD1F30(a2, v23, 0);
  v45 = v24;

  v25 = a2 + *(v4 + 84);
  if (*(v25 + 8))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(a2 + 728))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v26 = *v25;
  v27 = *(a2 + 720);
  type metadata accessor for RelocContext();

  v44 = v26;
  sub_245FC8664(v27, v28, v26);
  v29 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
  swift_beginAccess();
  v30 = *(a1 + v29);
  v31 = CPGSessionLocalizeSample();
  if (v31)
  {
    v32 = v31;
    v33 = sub_245FA31EC();
    v34 = v46;
    (*(v10 + 16))(v17, v33, v46);
    sub_245FFE868(a2, v8, type metadata accessor for PhotogrammetrySample);
    v35 = sub_2460918D4();
    v36 = sub_246091FB4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134349312;
      v38 = *v8;
      sub_245FFEA30(v8, type metadata accessor for PhotogrammetrySample);
      *(v37 + 4) = v38;
      *(v37 + 12) = 1026;
      *(v37 + 14) = v32;
      _os_log_impl(&dword_245F8A000, v35, v36, "Failed to re-localize sample of id = %{public}ld with\nerror = %{public}d", v37, 0x12u);
      v34 = v46;
      MEMORY[0x24C1989D0](v37, -1, -1);
    }

    else
    {
      sub_245FFEA30(v8, type metadata accessor for PhotogrammetrySample);
    }

    v39 = (*(v10 + 8))(v17, v34);
    if ((*(*a1 + 488))(v39))
    {
      v41 = v40;
      ObjectType = swift_getObjectType();
      v47 = 1;
      memset(v48, 0, sizeof(v48));
      v49 = 1;
      (*(v41 + 8))(v48, *a2, v44, ObjectType, v41, v27);
      swift_unknownObjectRelease();
    }
  }

  return CPGSampleRelease();
}

uint64_t sub_245FE1964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = (*(*a4 + 104))(result);
  if (!result)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = result;
  v14 = (*(*a4 + 128))();
  v15 = (*(*a4 + 152))();
  v16 = sub_245FA31EC();
  (*(v8 + 16))(v12, v16, v7);
  v17 = sub_2460918D4();
  v18 = sub_246091FC4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v23 = a1;
    v20 = a3;
    v21 = v19;
    *v19 = 134349312;
    *(v19 + 4) = v24;
    *(v19 + 12) = 2050;
    *(v19 + 14) = v14;
    _os_log_impl(&dword_245F8A000, v17, v18, "Processing re-localization callback for query sample of id = %{public}llu in static segment ID = %{public}ld", v19, 0x16u);
    v22 = v21;
    a3 = v20;
    a1 = v23;
    MEMORY[0x24C1989D0](v22, -1, -1);
  }

  result = (*(v8 + 8))(v12, v7);
  if (!a1)
  {
    goto LABEL_10;
  }

  if (a3)
  {
    (*(*v13 + 2000))(a1, v24, a3, v14, v15);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_245FE1C08()
{
  v1 = sub_2460919F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_246091A64();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader))
  {
    sub_245FFCF7C();
    swift_allocError();
    *v12 = 0xD00000000000003ALL;
    *(v12 + 8) = 0x800000024609FE60;
    *(v12 + 16) = 6;
    return swift_willThrow();
  }

  else
  {
    v22 = v2;
    v23 = v8;
    v14 = *(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
    v21 = v9;
    v15 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_245FFD648;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858DF0F0;
    v20 = _Block_copy(aBlock);
    v19 = v14;

    sub_246091A14();
    aBlock[7] = MEMORY[0x277D84F90];
    sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
    sub_2460921A4();
    v16 = v19;
    v17 = v20;
    MEMORY[0x24C1969D0](0, v11, v5, v20);
    _Block_release(v17);

    (*(v22 + 8))(v5, v1);
    (*(v21 + 8))(v11, v23);
  }
}

uint64_t sub_245FE1F5C()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v37 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v37 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v37 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
    {
      v16 = sub_245FA31EC();
      (*(v1 + 16))(v5, v16, v0);
      v17 = sub_2460918D4();
      v18 = sub_246091FB4();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_245F8A000, v17, v18, "Skip resume. PGManager is closed.", v19, 2u);
        MEMORY[0x24C1989D0](v19, -1, -1);
      }

      else
      {
      }

      return (*(v1 + 8))(v5, v0);
    }

    else
    {
      v26 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
      swift_beginAccess();
      v27 = *(v15 + v26);
      v28 = *(v15 + OBJC_IVAR____TtC6CoreOC9PGManager_processingCallbackBundle);
      LODWORD(v26) = CPGSessionResumeProcessingWithCallbacks();
      v29 = sub_245FA31EC();
      v30 = *(v1 + 16);
      if (v26)
      {
        v30(v8, v29, v0);
        v31 = sub_2460918D4();
        v32 = sub_246091FB4();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_245F8A000, v31, v32, "Request resumption failure.", v33, 2u);
          MEMORY[0x24C1989D0](v33, -1, -1);
        }

        else
        {
        }

        return (*(v1 + 8))(v8, v0);
      }

      else
      {
        v30(v11, v29, v0);
        v34 = sub_2460918D4();
        v35 = sub_246091FC4();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_245F8A000, v34, v35, "Request resumption success.", v36, 2u);
          MEMORY[0x24C1989D0](v36, -1, -1);
        }

        else
        {
        }

        return (*(v1 + 8))(v11, v0);
      }
    }
  }

  else
  {
    v20 = sub_245FA31EC();
    (*(v1 + 16))(v13, v20, v0);
    v21 = sub_2460918D4();
    v22 = sub_246091FB4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37[0] = v24;
      *v23 = 136380675;
      *(v23 + 4) = sub_245F8D3C0(0x2928656D75736572, 0xE800000000000000, v37);
      _os_log_impl(&dword_245F8A000, v21, v22, "Backend Manager.%{private}s failed to capture the instance!", v23, 0xCu);
      sub_245F8E6F4(v24);
      MEMORY[0x24C1989D0](v24, -1, -1);
      MEMORY[0x24C1989D0](v23, -1, -1);
    }

    return (*(v1 + 8))(v13, v0);
  }
}

uint64_t sub_245FE23F4()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = (v1 + 112);
  swift_beginAccess();
  if (*(v1 + 112) > 0.0001)
  {
    v11 = sub_245FA31EC();
    (*(v3 + 16))(v9, v11, v2);

    v12 = sub_2460918D4();
    v13 = sub_246091FC4();

    if (!os_log_type_enabled(v12, v13))
    {
      v7 = v9;
      goto LABEL_8;
    }

    v14 = swift_slowAlloc();
    *v14 = 134349056;
    *(v14 + 4) = *v10;
    _os_log_impl(&dword_245F8A000, v12, v13, "Mobile sfm point cloud voxel dimension set to %{public}f", v14, 0xCu);
    v7 = v9;
    goto LABEL_6;
  }

  *(v1 + 112) = 1008981770;
  v15 = sub_245FA31EC();
  (*(v3 + 16))(v7, v15, v2);

  v12 = sub_2460918D4();
  v16 = sub_246091FB4();

  if (os_log_type_enabled(v12, v16))
  {
    v14 = swift_slowAlloc();
    *v14 = 134349056;
    *(v14 + 4) = *v10;
    _os_log_impl(&dword_245F8A000, v12, v16, "Invalid mobile sfm point cloud voxel dimension, resume to default value %{public}f", v14, 0xCu);
LABEL_6:
    MEMORY[0x24C1989D0](v14, -1, -1);
  }

LABEL_8:

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_245FE26BC(float a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
  return sub_245FE23F4();
}

uint64_t (*sub_245FE2700(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_245FE2754;
}

uint64_t sub_245FE2754(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_245FE23F4();
  }

  return result;
}

uint64_t sub_245FE2788()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v63 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v63 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v63 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v63 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v63 - v20;
  if (*(v1 + 32) == 3)
  {
    v41 = sub_245FA31EC();
    (*(v3 + 16))(v10, v41, v2);
    v42 = sub_2460918D4();
    v43 = sub_246091FB4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v2;
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_245F8A000, v42, v43, "Session initialization failed previously.  Not trying again.", v45, 2u);
      v46 = v45;
      v2 = v44;
      MEMORY[0x24C1989D0](v46, -1, -1);
    }

    (*(v3 + 8))(v10, v2);
    sub_245FFD204();
    swift_allocError();
    *v47 = 2;
    *(v47 + 8) = 1;
    return swift_willThrow();
  }

  else if (*(v1 + 32))
  {
    v48 = sub_245FA31EC();
    (*(v3 + 16))(v13, v48, v2);
    v49 = v2;
    v50 = sub_2460918D4();
    v51 = sub_246091FB4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_245F8A000, v50, v51, "Session is already initialized.  Not running again.", v52, 2u);
      MEMORY[0x24C1989D0](v52, -1, -1);
    }

    return (*(v3 + 8))(v13, v49);
  }

  else
  {
    v70 = v2;
    v69 = *(v1 + 16);
    if (v69)
    {
      v22 = *(v1 + 24);

      v23 = sub_245FA31EC();
      v24 = *(v3 + 16);
      v64 = v23;
      v65 = v24;
      v66 = v3 + 16;
      (v24)(v21);
      v25 = sub_2460918D4();
      v26 = sub_246091FC4();
      v27 = os_log_type_enabled(v25, v26);
      v68 = v22;
      if (v27)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_245F8A000, v25, v26, "Running the delayed initializer...", v28, 2u);
        MEMORY[0x24C1989D0](v28, -1, -1);
      }

      v29 = v70;
      v67 = *(v3 + 8);
      v30 = v67(v21, v70);
      *(v1 + 32) = 1;
      v31 = v71;
      v69(v30);
      if (v31)
      {
        v65(v7, v64, v29);
        v32 = v31;
        v33 = sub_2460918D4();
        v34 = sub_246091FB4();

        v35 = v29;
        if (os_log_type_enabled(v33, v34))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v36 = 138412290;
          v38 = v31;
          v39 = _swift_stdlib_bridgeErrorToNSError();
          *(v36 + 4) = v39;
          *v37 = v39;
          _os_log_impl(&dword_245F8A000, v33, v34, "Delayed initialization failed: %@", v36, 0xCu);
          sub_245F8E744(v37, &qword_27EE3AE80, &qword_246096FA0);
          MEMORY[0x24C1989D0](v37, -1, -1);
          MEMORY[0x24C1989D0](v36, -1, -1);
        }

        v67(v7, v35);
        *(v1 + 32) = 3;
        swift_willThrow();
        return sub_245FFDCC4(v69);
      }

      else
      {
        v58 = *(v1 + 16);
        v59 = *(v1 + 24);
        *(v1 + 16) = 0;
        *(v1 + 24) = 0;
        sub_245FFDCC4(v58);
        *(v1 + 32) = 2;
        v65(v19, v64, v29);
        v60 = sub_2460918D4();
        v61 = sub_246091FC4();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_245F8A000, v60, v61, "... done running the delayed initializer.", v62, 2u);
          MEMORY[0x24C1989D0](v62, -1, -1);
        }

        sub_245FFDCC4(v69);

        return v67(v19, v29);
      }
    }

    else
    {
      v53 = sub_245FA31EC();
      v54 = v70;
      (*(v3 + 16))(v16, v53, v70);
      v55 = sub_2460918D4();
      v56 = sub_246091FB4();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_245F8A000, v55, v56, "Initializer is nil.  Perhaps it failed on a previous run?", v57, 2u);
        MEMORY[0x24C1989D0](v57, -1, -1);
      }

      return (*(v3 + 8))(v16, v54);
    }
  }
}

uint64_t sub_245FE2E40()
{
  v1 = *(v0 + 24);
  sub_245FFDCC4(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_245FE2E78()
{
  v1 = v0;
  v2 = type metadata accessor for PhotogrammetrySession.Output(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  v7 = *(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
  if (v7 < 0)
  {
    __break(1u);
  }

  else if (!v7)
  {
    v8 = OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled;
    v9 = *(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled);
    v10 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled);

    sub_2460900AC();

    if (v20[1] == 1 || *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_isProcessCancelled) == 1)
    {
      if ((*(*v1 + 464))(v11))
      {
        v13 = v12;
        ObjectType = swift_getObjectType();
        swift_storeEnumTagMultiPayload();
        (*(v13 + 8))(v6, ObjectType, v13);
        swift_unknownObjectRelease();
        sub_245FFEA30(v6, type metadata accessor for PhotogrammetrySession.Output);
      }

      v15 = *(v1 + v8);
      v20[0] = 0;

      sub_2460901B8(v20);

      *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_isProcessCancelled) = 0;
    }

    else
    {
      result = (*(*v1 + 464))(v11);
      if (result)
      {
        v17 = v16;
        v18 = swift_getObjectType();
        swift_storeEnumTagMultiPayload();
        (*(v17 + 8))(v6, v18, v17);
        swift_unknownObjectRelease();
        return sub_245FFEA30(v6, type metadata accessor for PhotogrammetrySession.Output);
      }
    }
  }

  return result;
}

uint64_t sub_245FE30BC()
{
  v1 = OBJC_IVAR____TtC6CoreOC9PGManager_numPixelsAccumulated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_245FE3100(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6CoreOC9PGManager_numPixelsAccumulated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_245FE3150()
{
  v1 = OBJC_IVAR____TtC6CoreOC9PGManager_numImagesAccumulated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_245FE3194(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6CoreOC9PGManager_numImagesAccumulated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_245FE31E4()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v7 = sub_245F8E624(&qword_27EE3A5B8, &qword_246098418);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23[-v9];
  v11 = *(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader);
  if (v11)
  {
    v12 = *(*v11 + 160);
    v13 = *(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader);

    v12(v14);

    sub_246092324();

    sub_246092394();

    v21 = type metadata accessor for PhotogrammetrySample();
    if ((*(*(v21 - 8) + 48))(v10, 1, v21) != 1)
    {
      v22 = v10[688];
      sub_245FFEA30(v10, type metadata accessor for PhotogrammetrySample);
      v19 = v22 ^ 1;
      return v19 & 1;
    }
  }

  else
  {
    v15 = sub_245FA31EC();
    (*(v2 + 16))(v6, v15, v1);
    v16 = sub_2460918D4();
    v17 = sub_246091FB4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_245F8A000, v16, v17, "Backend Manager: Tried to check if image url contain area mode data without a valid input reader!", v18, 2u);
      MEMORY[0x24C1989D0](v18, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
  }

  v19 = 0;
  return v19 & 1;
}

uint64_t sub_245FE356C()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v76 = *(v2 - 8);
  v77 = v2;
  v3 = *(v76 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v75 = &v71 - v7;
  MEMORY[0x28223BE20](v6);
  v73 = &v71 - v8;
  v83 = sub_246091834();
  v82 = *(v83 - 8);
  v9 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v80 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v71 - v13;
  v15 = sub_246091704();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v71 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v81 = &v71 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v71 - v26;
  v28 = CPGSessionOptionsCreate();
  v29 = CPGSfmOptionsCreate();
  if (v28)
  {
    v78 = v29;
    v79 = v28;
    v30 = OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL;
    swift_beginAccess();
    sub_245F8E7A4(v1 + v30, v14, &qword_27EE3A498, &unk_246097EB8);
    v31 = v15;
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      v71 = v1;
      sub_245F8E744(v14, &qword_27EE3A498, &unk_246097EB8);
      v32 = [objc_opt_self() defaultManager];
      v33 = [v32 temporaryDirectory];

      sub_2460916D4();
      sub_246091694();
      v34 = *(v16 + 8);
      v34(v20, v15);
      v35 = v80;
      sub_246091824();
      sub_2460917F4();
      (*(v82 + 8))(v35, v83);
      v36 = v81;
      sub_246091694();

      v34(v23, v31);
      v37 = sub_246091674();
      LODWORD(v35) = CPGSessionOptionsSetWorkingDirectory();

      if (v35)
      {
        sub_245FFCF7C();
        swift_allocError();
        *v38 = 0xD00000000000002BLL;
        *(v38 + 8) = 0x80000002460A0940;
        *(v38 + 16) = 1;
        swift_willThrow();
        v34(v36, v31);
LABEL_33:
        CPGSfmOptionsRelease();
        return CPGSessionOptionsRelease();
      }

      v34(v36, v31);
      v41 = v71;
      if (v78)
      {
LABEL_9:
        if (*(v41 + OBJC_IVAR____TtC6CoreOC9PGManager_isImageURLFreeformData) == 1)
        {
          CPGMaskingOptionsCreate();
          if (CPGMaskingOptionsSetMaskingType())
          {
            CPGMaskingOptionsRelease();
            v42 = sub_245FA31EC();
            (*(v76 + 16))(v75, v42, v77);
            v43 = sub_2460918D4();
            v44 = sub_246091FB4();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              *v45 = 0;
              _os_log_impl(&dword_245F8A000, v43, v44, "Backend Manager: Failed to set CPG segmentation masking type", v45, 2u);
              MEMORY[0x24C1989D0](v45, -1, -1);
            }

            (*(v76 + 8))(v75, v77);
            v46 = 0x80000002460A09E0;
            sub_245FFCF7C();
            swift_allocError();
            *v47 = 0xD00000000000002BLL;
LABEL_23:
            *(v47 + 8) = v46;
            *(v47 + 16) = 0;
            goto LABEL_32;
          }

          v53 = CPGSessionOptionsSetMaskingOptions();
          CPGMaskingOptionsRelease();
          if (v53)
          {
            v54 = sub_245FA31EC();
            (*(v76 + 16))(v73, v54, v77);
            v55 = sub_2460918D4();
            v56 = sub_246091FB4();
            if (os_log_type_enabled(v55, v56))
            {
              v57 = swift_slowAlloc();
              *v57 = 0;
              _os_log_impl(&dword_245F8A000, v55, v56, "Backend Manager: Failed to set CPG segmentation masking option to session option", v57, 2u);
              MEMORY[0x24C1989D0](v57, -1, -1);
            }

            (*(v76 + 8))(v73, v77);
            v46 = 0x80000002460A0A10;
            sub_245FFCF7C();
            swift_allocError();
            *v47 = 0xD000000000000040;
            goto LABEL_23;
          }
        }

        v58 = *(v41 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration);
        v59 = *(v41 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 4);
        v60 = *(v41 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 8);
        v61 = v74;
        sub_245FFCCA4();
        if (v61)
        {
          goto LABEL_33;
        }

        CPGSfmOptionsSetPoseUpdateCallback();
        if (*sub_245F925DC())
        {
          CPGSfmOptionsSetTrackUpdateCallback();
        }

        if (CPGSessionOptionsSetSfmOptions())
        {
          sub_245FFCF7C();
          swift_allocError();
          *v62 = 0xD000000000000026;
          *(v62 + 8) = 0x80000002460A0990;
          v63 = 1;
        }

        else
        {
          swift_beginAccess();
          v64 = CPGSessionCreate();
          swift_endAccess();
          if (!v64)
          {
            sub_245FE4E40();
            v66 = sub_245FA31EC();
            v67 = v72;
            (*(v76 + 16))(v72, v66, v77);
            v68 = sub_2460918D4();
            v69 = sub_246091FC4();
            if (os_log_type_enabled(v68, v69))
            {
              v70 = swift_slowAlloc();
              *v70 = 0;
              _os_log_impl(&dword_245F8A000, v68, v69, "Successfully initialized the backend session.", v70, 2u);
              MEMORY[0x24C1989D0](v70, -1, -1);
            }

            (*(v76 + 8))(v67, v77);
            goto LABEL_33;
          }

          sub_245FFCF7C();
          swift_allocError();
          *v62 = 0xD000000000000018;
          *(v62 + 8) = 0x80000002460A09C0;
          v63 = 3;
        }

        *(v62 + 16) = v63;
LABEL_32:
        swift_willThrow();
        goto LABEL_33;
      }

LABEL_18:
      sub_245FFCF7C();
      swift_allocError();
      *v52 = 0xD00000000000001ALL;
      *(v52 + 8) = 0x80000002460A0970;
      *(v52 + 16) = 2;
      swift_willThrow();
      goto LABEL_33;
    }

    (*(v16 + 32))(v27, v14, v15);
    if (CPGSessionOptionsSetSnapshotEnabled())
    {
      sub_245FFCF7C();
      swift_allocError();
      *v40 = 0xD00000000000002ALL;
      *(v40 + 8) = 0x80000002460A0A60;
      *(v40 + 16) = 1;
    }

    else
    {
      v48 = v1;
      v49 = sub_246091674();
      v50 = CPGSessionOptionsSetWorkingDirectory();

      if (!v50)
      {
        (*(v16 + 8))(v27, v31);
        v41 = v48;
        if (v78)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

      sub_245FFCF7C();
      swift_allocError();
      *v51 = 0xD00000000000002BLL;
      *(v51 + 8) = 0x80000002460A0940;
      *(v51 + 16) = 1;
    }

    swift_willThrow();
    (*(v16 + 8))(v27, v31);
    goto LABEL_33;
  }

  sub_245FFCF7C();
  swift_allocError();
  *v39 = 0xD00000000000001ELL;
  *(v39 + 8) = 0x80000002460A0900;
  *(v39 + 16) = 1;
  swift_willThrow();
  CPGSfmOptionsRelease();
  return CPGSessionOptionsRelease();
}

uint64_t sub_245FE407C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a2 && a3)
  {
    v12 = result;
    v13 = CPGUpdatedPosesCopySampleIDs();
    if (v13)
    {
      v14 = v13;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v22 = 0;
        sub_246091DC4();

        v15 = v22;
        if (v22)
        {
          if (*(v22 + 16))
          {
            v16 = sub_245FA31EC();
            (*(v7 + 16))(v11, v16, v12);

            v17 = sub_2460918D4();
            v18 = sub_246091FC4();
            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              *v19 = 134349056;
              v21 = *(v15 + 16);

              *(v19 + 4) = v21;

              _os_log_impl(&dword_245F8A000, v17, v18, "Processing pose update callback for %{public}ld samples", v19, 0xCu);
              MEMORY[0x24C1989D0](v19, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            (*(v7 + 8))(v11, v12);
          }

          else
          {
          }
        }
      }

      else
      {
      }
    }

    v20 = *(*a3 + 1984);

    v20(a1, a2);
  }

  return result;
}

uint64_t sub_245FE42F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a2 && a3)
  {
    v12 = sub_245FA31EC();
    (*(v7 + 16))(v11, v12, v6);
    v13 = sub_2460918D4();
    v14 = sub_246091FC4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_245F8A000, v13, v14, "Received mobile sfm world tracks.", v15, 2u);
      MEMORY[0x24C1989D0](v15, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    v16 = *(*a3 + 1992);

    v16(a1, a2);
  }

  return result;
}

uint64_t sub_245FE44C0()
{
  v1 = v0;
  v49 = sub_2460918F4();
  v47 = *(v49 - 8);
  v2 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - v6;
  v8 = sub_246091704();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL;
  swift_beginAccess();
  sub_245F8E7A4(v1 + v16, v7, &qword_27EE3A498, &unk_246097EB8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_245F8E744(v7, &qword_27EE3A498, &unk_246097EB8);
    sub_245FFCF7C();
    swift_allocError();
    *v17 = 0xD000000000000039;
    *(v17 + 8) = 0x80000002460A0860;
    *(v17 + 16) = 3;
    return swift_willThrow();
  }

  (*(v9 + 32))(v15, v7, v8);
  v19 = CPGSessionResumeOptionsCreate();
  if (!v19)
  {
    sub_245FFCF7C();
    swift_allocError();
    *v25 = 0xD000000000000025;
    *(v25 + 8) = 0x80000002460A08A0;
    *(v25 + 16) = 1;
    swift_willThrow();
    return (*(v9 + 8))(v15, v8);
  }

  v20 = v19;
  v21 = sub_246091674();
  v22 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
  swift_beginAccess();
  v23 = CPGSessionCreateWithSnapshotURL();
  swift_endAccess();

  if (v23)
  {
    sub_245FFCF7C();
    swift_allocError();
    *v24 = 0xD000000000000027;
    *(v24 + 8) = 0x80000002460A08D0;
    *(v24 + 16) = 3;
LABEL_9:
    swift_willThrow();
    CPGSessionResumeOptionsRelease();
    return (*(v9 + 8))(v15, v8);
  }

  v26 = v51;
  sub_245FE4E40();
  if (v26)
  {
    v27 = *(v1 + v22);
    CPGSessionRelease();
    goto LABEL_9;
  }

  v51 = v20;
  *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) = 1;
  v28 = sub_245FA31EC();
  v29 = v47;
  v30 = v48;
  (*(v47 + 16))(v48, v28, v49);
  (*(v9 + 16))(v13, v15, v8);
  v31 = sub_2460918D4();
  v32 = sub_246091FC4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v33 = 141558275;
    *(v33 + 4) = 1752392040;
    *(v33 + 12) = 2081;
    v45 = v31;
    v34 = sub_2460916F4();
    v42 = v35;
    v43 = v34;
    v44 = v32;
    v36 = *(v9 + 8);
    v36(v13, v8);
    v37 = v36;
    v38 = sub_245F8D3C0(v43, v42, &v50);

    *(v33 + 14) = v38;
    v39 = v45;
    _os_log_impl(&dword_245F8A000, v45, v44, "Successfully initialized backend session with snapshot = %{private,mask.hash}s", v33, 0x16u);
    v40 = v46;
    sub_245F8E6F4(v46);
    MEMORY[0x24C1989D0](v40, -1, -1);
    MEMORY[0x24C1989D0](v33, -1, -1);

    (*(v29 + 8))(v48, v49);
  }

  else
  {

    v41 = *(v9 + 8);
    v41(v13, v8);
    v37 = v41;
    (*(v29 + 8))(v30, v49);
  }

  CPGSessionResumeOptionsRelease();
  return v37(v15, v8);
}

uint64_t sub_245FE4A74()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = CPGAddSampleCallbackBundleCreate();
  v8 = OBJC_IVAR____TtC6CoreOC9PGManager_addSampleCallbackBundle;
  *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleCallbackBundle) = v7;
  if (CPGAddSampleCallbackBundleSetStreamProcessingCallback())
  {
    v9 = *(v1 + v8);
    CPGAddSampleCallbackBundleRelease();
    sub_245FFCF7C();
    swift_allocError();
    *v10 = 0xD00000000000003CLL;
    *(v10 + 8) = 0x80000002460A0820;
    *(v10 + 16) = 4;
    return swift_willThrow();
  }

  else
  {
    v12 = sub_245FA31EC();
    (*(v3 + 16))(v6, v12, v2);
    v13 = sub_2460918D4();
    v14 = sub_246091FC4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_245F8A000, v13, v14, "Successfully set the add sample callback bundle.", v15, 2u);
      MEMORY[0x24C1989D0](v15, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_245FE4C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a3 && a4)
  {
    v14 = sub_245FA31EC();
    (*(v9 + 16))(v13, v14, v8);
    v15 = sub_2460918D4();
    v16 = sub_246091FC4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134349056;
      *(v17 + 4) = a2;
      _os_log_impl(&dword_245F8A000, v15, v16, "Add sample stream processing callback for id = %{public}llu", v17, 0xCu);
      MEMORY[0x24C1989D0](v17, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    v18 = *(*a4 + 1912);

    v18(a1, a2, a3);
  }

  return result;
}

uint64_t sub_245FE4E40()
{
  v1 = v0;
  v2 = 0xD000000000000034;
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = CPGProcessingCallbackBundleCreate();
  v9 = OBJC_IVAR____TtC6CoreOC9PGManager_processingCallbackBundle;
  *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_processingCallbackBundle) = v8;
  v10 = CPGProcessingCallbackBundleSetCompleteOutputCallback();
  v11 = *(v1 + v9);
  if (v10)
  {
    v12 = "tCompletionCallback failed!";
    v2 = 0xD00000000000003CLL;
LABEL_7:
    CPGProcessingCallbackBundleRelease();
    sub_245FFCF7C();
    swift_allocError();
    *v16 = v2;
    *(v16 + 8) = v12 | 0x8000000000000000;
    *(v16 + 16) = 4;
    return swift_willThrow();
  }

  v13 = CPGProcessingCallbackBundleSetProgressCallback();
  v14 = *(v1 + v9);
  if (v13)
  {
    v12 = "mpleteOutputCallback failed!";
    v2 = 0xD000000000000036;
    goto LABEL_7;
  }

  if (CPGProcessingCallbackBundleSetWarningCallback())
  {
    v15 = *(v1 + v9);
    v12 = "ogressCallback failed!";
    goto LABEL_7;
  }

  v18 = sub_245FA31EC();
  (*(v4 + 16))(v7, v18, v3);
  v19 = sub_2460918D4();
  v20 = sub_246091FC4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_245F8A000, v19, v20, "Successfully set callback bundle.", v21, 2u);
    MEMORY[0x24C1989D0](v21, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_245FE5098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a2;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v53 - v14;
  v16 = sub_246091704();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v53 - v22;
  result = MEMORY[0x28223BE20](v21);
  v27 = &v53 - v26;
  if (a1 && v61 && a3 && a4)
  {
    v59 = result;
    v60 = v25;
    if (!CPGOutputGetFailure())
    {
      ModelURL = CPGOutputGetModelURL();
      if (ModelURL)
      {
        v58 = ModelURL;
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          v31 = *(v60 + 56);
          v56 = v30;
          v57 = a3;
          v32 = v59;
          v31(v15, 1, 1, v59);
          sub_245FFF308(&qword_27EE3A5C8, MEMORY[0x277CC9260]);
          sub_2460923B4();

          v33 = v32;
          a3 = v57;
          if ((*(v60 + 48))(v15, 1, v33) != 1)
          {
            v34 = v15;
            v35 = *(v60 + 32);
            v35(v23, v34, v59);
            v36 = v23;
            v37 = v59;
            v35(v27, v36, v59);
            v38 = sub_245FA31EC();
            v39 = v8;
            v40 = v60;
            v58 = v39;
            (v39)[2](v11, v38, v7);
            (*(v40 + 16))(v20, v27, v37);
            v41 = sub_2460918D4();
            v42 = sub_246091FC4();
            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v62 = v56;
              *v43 = 141558275;
              *(v43 + 4) = 1752392040;
              *(v43 + 12) = 2081;
              v55 = v42;
              v53 = sub_2460916F4();
              v54 = v41;
              v45 = v44;
              v46 = *(v40 + 8);
              v46(v20, v59);
              v47 = sub_245F8D3C0(v53, v45, &v62);

              *(v43 + 14) = v47;
              v48 = v54;
              _os_log_impl(&dword_245F8A000, v54, v55, "Processing output callback at url = %{private,mask.hash}s", v43, 0x16u);
              v49 = v56;
              sub_245F8E6F4(v56);
              MEMORY[0x24C1989D0](v49, -1, -1);
              MEMORY[0x24C1989D0](v43, -1, -1);

              (*(v58 + 1))(v11, v7);
              v50 = v27;
              v51 = v59;
            }

            else
            {

              v46 = *(v40 + 8);
              v52 = v59;
              v46(v20, v59);
              (*(v58 + 1))(v11, v7);
              v50 = v27;
              v51 = v52;
            }

            v46(v50, v51);
            a3 = v57;
          }
        }

        else
        {
        }
      }
    }

    v28 = *(*a4 + 1968);

    v28(a1, v61, a3);
  }

  return result;
}

void *sub_245FE55D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a2 && a3 && a4)
  {
    v33 = result;
    CPGProgressGetFractionCompleted();
    v15 = v14;
    result = CPGProgressGetMessage();
    if (result)
    {
      v16 = result;
      v17 = sub_246091C04();
      v19 = v18;

      v20 = sub_245FA31EC();
      (*(v9 + 16))(v13, v20, v33);

      v21 = sub_2460918D4();
      v22 = sub_246091FC4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v32 = v22;
        v24 = v17;
        v25 = v23;
        v26 = swift_slowAlloc();
        v31 = v21;
        v27 = v26;
        v34 = v26;
        *v25 = 134349314;
        *(v25 + 4) = v15;
        *(v25 + 12) = 2082;
        v28 = sub_245F8D3C0(v24, v19, &v34);

        *(v25 + 14) = v28;
        v29 = v31;
        _os_log_impl(&dword_245F8A000, v31, v32, "Processing progress callback with fraction completed = %{public}f, message = %{public}s", v25, 0x16u);
        sub_245F8E6F4(v27);
        MEMORY[0x24C1989D0](v27, -1, -1);
        MEMORY[0x24C1989D0](v25, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v13, v33);
      v30 = *(*a4 + 1920);

      v30(a1, a2, a3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_245FE588C()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = CPGFinalizeInputCallbackBundleCreate();
  v8 = OBJC_IVAR____TtC6CoreOC9PGManager_finalizeInputCallbackBundle;
  *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_finalizeInputCallbackBundle) = v7;
  if (CPGFinalizeInputCallbackBundleSetCompletionCallback())
  {
    v9 = *(v1 + v8);
    CPGFinalizeInputCallbackBundleRelease();
    sub_245FFCF7C();
    swift_allocError();
    *v10 = 0xD00000000000003BLL;
    *(v10 + 8) = 0x80000002460A0720;
    *(v10 + 16) = 4;
    return swift_willThrow();
  }

  else
  {
    v12 = sub_245FA31EC();
    (*(v3 + 16))(v6, v12, v2);
    v13 = sub_2460918D4();
    v14 = sub_246091FC4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_245F8A000, v13, v14, "Successfully set finalizing input callback bundle.", v15, 2u);
      MEMORY[0x24C1989D0](v15, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_245FE5A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v26 - v13;
  if (a1 && a2 && a3)
  {
    v29 = a2;
    v15 = sub_245FA31EC();
    v27 = v7[2];
    v28 = v15;
    v27(v14);
    v16 = sub_2460918D4();
    v17 = sub_246091FC4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_245F8A000, v16, v17, "Finalize input C-callback", v18, 2u);
      MEMORY[0x24C1989D0](v18, -1, -1);
    }

    v19 = v7[1];
    v19(v14, v6);
    v20 = v29;
    if (CPGFinalizeInputResultGetErrorCode())
    {
      (v27)(v11, v28, v6);
      v21 = sub_2460918D4();
      v22 = sub_246091FB4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_245F8A000, v21, v22, "Error in finalizing input result!", v23, 2u);
        v24 = v23;
        v20 = v29;
        MEMORY[0x24C1989D0](v24, -1, -1);
      }

      v19(v11, v6);
    }

    v25 = *(*a3 + 2008);

    v25(a1, v20);
  }

  return result;
}

uint64_t sub_245FE5D14(uint64_t a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = &v30 - v8;
  v9 = sub_245FD36E0(a1);
  v38 = *(v9 + 2);
  v31 = v4;
  if (v38)
  {
    v37 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
    result = swift_beginAccess();
    v11 = 0;
    v12 = 0;
    v35 = (v4 + 16);
    v36 = 0;
    v34 = (v4 + 8);
    v13 = v33;
    while (v12 < *(v9 + 2))
    {
      v14 = *&v9[8 * v12 + 32];
      v15 = *(v1 + v37);
      result = CPGSessionAddTemporalDepthPointFrame();
      if (result)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_18;
        }

        v17 = sub_245FA31EC();
        (*v35)(v13, v17, v3);
        v18 = sub_2460918D4();
        v19 = sub_246091FB4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = v3;
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_245F8A000, v18, v19, "Failed to add temporal LiDAR point frame.", v21, 2u);
          v22 = v21;
          v3 = v20;
          v13 = v33;
          MEMORY[0x24C1989D0](v22, -1, -1);
        }

        (*v34)(v13, v3);
      }

      else
      {
        if (__OFADD__(v36, 1))
        {
          goto LABEL_19;
        }

        ++v36;
      }

      ++v12;
      result = CPGTemporalDepthPointFrameRelease();
      if (v38 == v12)
      {

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

    v11 = 0;
    v36 = 0;
LABEL_14:
    v23 = sub_245FA31EC();
    v24 = v31;
    (*(v31 + 16))(v32, v23, v3);
    v25 = sub_2460918D4();
    v26 = sub_246091FC4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v3;
      v28 = swift_slowAlloc();
      *v28 = 134349312;
      *(v28 + 4) = v36;
      *(v28 + 12) = 2050;
      *(v28 + 14) = v11;
      _os_log_impl(&dword_245F8A000, v25, v26, "Passed %{public}ld temporal LiDAR point frames to backend session, failed for %{public}ld frames.", v28, 0x16u);
      v29 = v28;
      v3 = v27;
      MEMORY[0x24C1989D0](v29, -1, -1);
    }

    return (*(v24 + 8))(v32, v3);
  }

  return result;
}

uint64_t sub_245FE6070(uint64_t (*a1)(void), uint64_t a2)
{
  v99 = a1;
  v102 = type metadata accessor for PhotogrammetrySession.Output(0);
  v4 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v101 = (&v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v90 - v8;
  v98 = sub_246091704();
  *&v96 = *(v98 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v98);
  v93 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2460918F4();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v100 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v95 = &v90 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v94 = &v90 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v92 = &v90 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v90 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v90 - v25;
  v27 = sub_246091AF4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = (&v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
  *v31 = v32;
  (*(v28 + 104))(v31, *MEMORY[0x277D85200], v27);
  v33 = v32;
  LOBYTE(v32) = sub_246091B24();
  result = (*(v28 + 8))(v31, v27);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v91 = a2;
  v106 = v2;
  v35 = sub_245FA31EC();
  v36 = v12[2];
  v103 = v35;
  v104 = v36;
  (v36)(v26);
  v37 = sub_2460918D4();
  v38 = sub_246091FC4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_245F8A000, v37, v38, "Began adding images from the image folder...", v39, 2u);
    MEMORY[0x24C1989D0](v39, -1, -1);
  }

  v40 = (v12 + 1);
  v105 = v12[1];
  v105(v26, v11);
  v41 = v106;
  if (*(v106 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
  {
    v42 = v100;
    v104(v100, v103, v11);
    v43 = sub_2460918D4();
    v44 = sub_246091FB4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_245F8A000, v43, v44, "Can't add new samples. Backend manager is closed", v45, 2u);
      MEMORY[0x24C1989D0](v45, -1, -1);
    }

    v50 = v42;
    return (v105)(v50, v11);
  }

  if (*(v106 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted))
  {
    v46 = v95;
    v104(v95, v103, v11);
    v47 = sub_2460918D4();
    v48 = sub_246091FC4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_245F8A000, v47, v48, "Images have already been added... continuing.", v49, 2u);
      MEMORY[0x24C1989D0](v49, -1, -1);
    }

    v50 = v46;
    return (v105)(v50, v11);
  }

  v51 = OBJC_IVAR____TtC6CoreOC9PGManager_imagesURL;
  swift_beginAccess();
  v52 = v41 + v51;
  v53 = v97;
  sub_245F8E7A4(v52, v97, &qword_27EE3A498, &unk_246097EB8);
  v54 = v96;
  v55 = v98;
  if ((*(v96 + 48))(v53, 1, v98) == 1)
  {
    v56 = sub_245F8E744(v53, &qword_27EE3A498, &unk_246097EB8);
    v57 = 0;
    v58 = 1;
  }

  else
  {
    v59 = v93;
    (*(v54 + 32))(v93, v53, v55);
    v57 = sub_245FFC654();
    v58 = v60;
    v56 = (*(v54 + 8))(v59, v55);
  }

  v61 = v99;
  v62 = (*(*v99 + 160))(v56);
  v99 = v57;
  v100 = v40;
  v63 = *(v106 + OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter);
  v64 = *(*v61 + 184);
  LODWORD(v98) = v58;
  v65 = v62;

  v67 = v64(v66);
  (*(*v63 + 120))(v67 & 1);

  v69 = (*(*v61 + 128))(v68);
  v94 = v65;
  v70 = sub_245FE6EC8(v65, v91, v69, 0, v99, v98 & 1);
  v71 = (*(*v61 + 176))(v70);
  v95 = v71;
  v73 = *(v71 + 16);
  if (v73)
  {
    v74 = *(*v106 + 464);
    v98 = *v106 + 464;
    v99 = v74;
    v75 = (v95 + 32);
    v97 = 0x80000002460A06D0;
    *&v72 = 134349056;
    v96 = v72;
    do
    {
      v77 = *v75++;
      v76 = v77;
      v104(v24, v103, v11);
      v78 = sub_2460918D4();
      v79 = sub_246091FC4();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = v96;
        *(v80 + 4) = v76;
        _os_log_impl(&dword_245F8A000, v78, v79, "invalidSample: id = %{public}ld", v80, 0xCu);
        MEMORY[0x24C1989D0](v80, -1, -1);
      }

      v81 = (v105)(v24, v11);
      if (v99(v81))
      {
        v83 = v82;
        ObjectType = swift_getObjectType();
        v85 = v101;
        *v101 = v76;
        *(v85 + 8) = 0xD00000000000004ELL;
        *(v85 + 16) = v97;
        swift_storeEnumTagMultiPayload();
        (*(v83 + 8))(v85, ObjectType, v83);
        swift_unknownObjectRelease();
        sub_245FFEA30(v85, type metadata accessor for PhotogrammetrySession.Output);
      }

      --v73;
    }

    while (v73);
  }

  v86 = v92;
  v104(v92, v103, v11);
  v87 = sub_2460918D4();
  v88 = sub_246091FC4();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_245F8A000, v87, v88, "... done adding images from the image folder.", v89, 2u);
    MEMORY[0x24C1989D0](v89, -1, -1);
  }

  return (v105)(v86, v11);
}

uint64_t sub_245FE6AE0(uint64_t a1, int a2, float a3)
{
  v35 = a2;
  v36 = a1;
  v5 = type metadata accessor for PhotogrammetrySession.Output(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34[-v11];
  v13 = type metadata accessor for PhotogrammetrySession.Request(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
  swift_beginAccess();
  sub_245F8E7A4(v3 + v18, v12, &qword_27EE3A4B8, &unk_246097ED8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_245F8E744(v12, &qword_27EE3A4B8, &unk_246097ED8);
  }

  v20 = sub_245FFE800(v12, v17, type metadata accessor for PhotogrammetrySession.Request);
  v21 = *(*v3 + 464);
  if (v21(v20))
  {
    v23 = v22;
    ObjectType = swift_getObjectType();
    v25 = *(sub_245F8E624(&qword_27EE3A568, &qword_2460983E0) + 48);
    sub_245FFE868(v17, v8, type metadata accessor for PhotogrammetrySession.Request);
    *&v8[v25] = a3;
    swift_storeEnumTagMultiPayload();
    (*(v23 + 8))(v8, ObjectType, v23);
    swift_unknownObjectRelease();
    sub_245FFEA30(v8, type metadata accessor for PhotogrammetrySession.Output);
  }

  v37 = 0;
  v26 = sub_24602883C(v36, v35 & 1, &v37, &v38);
  v27 = v38;
  v28 = v39;
  v29 = v40;
  if (v21(v26))
  {
    v31 = v30;
    v32 = swift_getObjectType();
    v33 = &v8[*(sub_245F8E624(&qword_27EE3A570, &qword_2460983E8) + 48)];
    sub_245FFE868(v17, v8, type metadata accessor for PhotogrammetrySession.Request);
    *v33 = v27;
    v33[8] = v28;
    v33[9] = v29;
    swift_storeEnumTagMultiPayload();
    (*(v31 + 8))(v8, v32, v31);
    swift_unknownObjectRelease();
    sub_245FFEA30(v8, type metadata accessor for PhotogrammetrySession.Output);
  }

  return sub_245FFEA30(v17, type metadata accessor for PhotogrammetrySession.Request);
}

uint64_t sub_245FE6EC8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v7 = v6;
  v170 = a6;
  v171 = a5;
  v181 = a4;
  v158 = a3;
  v187 = a2;
  v179 = a1;
  v186 = type metadata accessor for PhotogrammetrySample();
  v189 = *(v186 - 8);
  v8 = *(v189 + 64);
  v9 = MEMORY[0x28223BE20](v186);
  v169 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v160 = (&v147 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v152 = (&v147 - v14);
  MEMORY[0x28223BE20](v13);
  v174 = (&v147 - v15);
  v16 = sub_245F8E624(&qword_27EE3A5B8, &qword_246098418);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v180 = &v147 - v18;
  v172 = type metadata accessor for PhotogrammetrySession.Output(0);
  v19 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v173 = (&v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = type metadata accessor for PhotogrammetrySession.Request(0);
  v167 = *(v163 - 8);
  v21 = *(v167 + 64);
  MEMORY[0x28223BE20](v163);
  v178 = (&v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v156 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v147 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v147 - v30;
  v32 = sub_2460918F4();
  v33 = *(v32 - 8);
  v34 = v33[8];
  v35 = MEMORY[0x28223BE20](v32);
  v157 = &v147 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v148 = &v147 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v188 = &v147 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v159 = &v147 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v151 = &v147 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v147 - v45;
  v47 = sub_246091AF4();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  v51 = (&v147 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
  *v51 = v52;
  (*(v48 + 104))(v51, *MEMORY[0x277D85200], v47);
  v53 = v52;
  LOBYTE(v52) = sub_246091B24();
  result = (*(v48 + 8))(v51, v47);
  if ((v52 & 1) == 0)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    return result;
  }

  v55 = sub_245FA31EC();
  v56 = v33[2];
  v183 = v55;
  v184 = v33 + 2;
  v182 = v56;
  (v56)(v46);
  v57 = sub_2460918D4();
  v58 = sub_246091FC4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_245F8A000, v57, v58, "Began adding images from the sample sequence...", v59, 2u);
    MEMORY[0x24C1989D0](v59, -1, -1);
  }

  v60 = v33 + 1;
  v185 = v33[1];
  v185(v46, v32);
  v166 = OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled;
  v61 = *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled);
  LOBYTE(v193) = 0;

  sub_2460901B8(&v193);

  if (!*(v187 + 16))
  {
    goto LABEL_55;
  }

  v62 = v167;
  sub_245FFE868(v187 + ((*(v167 + 80) + 32) & ~*(v167 + 80)), v31, type metadata accessor for PhotogrammetrySession.Request);
  v63 = v163;
  (*(v62 + 56))(v31, 0, 1, v163);
  v64 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
  swift_beginAccess();
  sub_245F97BAC(v31, v7 + v64, &qword_27EE3A4B8, &unk_246097ED8);
  swift_endAccess();
  v155 = v64;
  sub_245F8E7A4(v7 + v64, v29, &qword_27EE3A4B8, &unk_246097ED8);
  v65 = *(v62 + 48);
  v167 = v62 + 48;
  v154 = v65;
  v66 = v65(v29, 1, v63);
  v165 = v60;
  if (v66 == 1)
  {
    sub_245F8E744(v29, &qword_27EE3A4B8, &unk_246097ED8);
  }

  else
  {
    v67 = v178;
    v68 = sub_245FFE800(v29, v178, type metadata accessor for PhotogrammetrySession.Request);
    v69 = *(*v7 + 464);
    if (v69(v68))
    {
      v71 = v70;
      ObjectType = swift_getObjectType();
      v73 = v32;
      v74 = *(sub_245F8E624(&qword_27EE3A568, &qword_2460983E0) + 48);
      v75 = v67;
      v76 = v173;
      sub_245FFE868(v75, v173, type metadata accessor for PhotogrammetrySession.Request);
      *(v76 + v74) = 0;
      v32 = v73;
      swift_storeEnumTagMultiPayload();
      (*(v71 + 8))(v76, ObjectType, v71);
      swift_unknownObjectRelease();
      sub_245FFEA30(v76, type metadata accessor for PhotogrammetrySession.Output);
    }

    LOBYTE(v191) = 0;
    v77 = sub_24602883C(v171, v170 & 1, &v191, &v193);
    v78 = v193;
    v79 = v194;
    v80 = BYTE1(v194);
    if (v69(v77))
    {
      v82 = v81;
      v187 = swift_getObjectType();
      v83 = sub_245F8E624(&qword_27EE3A570, &qword_2460983E8);
      v84 = v173;
      v85 = v173 + *(v83 + 48);
      v86 = v178;
      sub_245FFE868(v178, v173, type metadata accessor for PhotogrammetrySession.Request);
      *v85 = v78;
      v85[8] = v79;
      v85[9] = v80;
      swift_storeEnumTagMultiPayload();
      (*(v82 + 8))(v84, v187, v82);
      swift_unknownObjectRelease();
      sub_245FFEA30(v84, type metadata accessor for PhotogrammetrySession.Output);
      v87 = v86;
    }

    else
    {
      v87 = v178;
    }

    sub_245FFEA30(v87, type metadata accessor for PhotogrammetrySession.Request);
  }

  v88 = v174;
  sub_24601EF7C(&v193);
  v89 = v194;
  v90 = sub_246092324();
  v179 = OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter;
  v91 = OBJC_IVAR____TtC6CoreOC9PGManager_configuration;
  v164 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
  swift_beginAccess();
  v92 = v180;
  sub_246092394();
  v93 = *(v189 + 48);
  v189 += 48;
  v178 = v93;
  v94 = (v93)(v92, 1, v186);
  v96 = 0;
  v97 = v166;
  if (v94 == 1)
  {
LABEL_42:

    if (v181)
    {
LABEL_44:
      sub_245FE6AE0(v171, v170 & 1, 0.1);
      goto LABEL_45;
    }
  }

  else
  {
    v177 = v90;
    v96 = 0;
    v187 = 0;
    v175 = v7 + v91;
    v98 = v158;
    v176 = v89;
    if (v89 < v158)
    {
      v98 = v89;
    }

    v161 = 0x80000002460A0330;
    v149 = 0x80000002460A0350;
    v99 = v98;
    *&v95 = 134349056;
    v162 = v95;
    *&v95 = 134349312;
    v147 = v95;
    v150 = v32;
    while (1)
    {
      sub_245FFE800(v92, v88, type metadata accessor for PhotogrammetrySample);
      v100 = *(v7 + v97);

      sub_2460900AC();

      if (v191)
      {
        sub_245FFEA30(v88, type metadata accessor for PhotogrammetrySample);
      }

      if (v187 >= v176)
      {
        break;
      }

      v101 = *(v7 + v179);
      v102 = *(v175 + 24);

      sub_245FD1F30(v88, v101, v102);
      v104 = v103;

      v105 = *(v7 + v164);
      v168 = v104;
      v106 = CPGSessionAddSample();
      if (v106)
      {
        v107 = v106;
        v191 = 0;
        v192 = 0xE000000000000000;
        sub_246092284();

        v191 = 0xD00000000000002FLL;
        v192 = v149;
        v153 = v107;
        v190 = v107;
        v108 = sub_2460923D4();
        MEMORY[0x24C196640](v108);

        v110 = v191;
        v111 = v192;
        if ((*(*v7 + 464))(v109))
        {
          v113 = v112;
          v114 = swift_getObjectType();
          v115 = v174;
          v116 = v173;
          *v173 = *v174;
          v116[1] = v110;
          v116[2] = v111;
          swift_storeEnumTagMultiPayload();
          (*(v113 + 8))(v116, v114, v113);
          swift_unknownObjectRelease();
          sub_245FFEA30(v116, type metadata accessor for PhotogrammetrySession.Output);
        }

        else
        {

          v115 = v174;
        }

        v117 = v159;
        v32 = v150;
        v182(v159, v183, v150);
        v124 = v115;
        v125 = v160;
        sub_245FFE868(v124, v160, type metadata accessor for PhotogrammetrySample);
        v119 = sub_2460918D4();
        v126 = sub_246091FB4();
        if (os_log_type_enabled(v119, v126))
        {
          v127 = v117;
          v128 = swift_slowAlloc();
          *v128 = v147;
          v129 = *v125;
          sub_245FFEA30(v125, type metadata accessor for PhotogrammetrySample);
          *(v128 + 4) = v129;
          *(v128 + 12) = 1026;
          *(v128 + 14) = v153;
          _os_log_impl(&dword_245F8A000, v119, v126, "Failed to add sample of id = %{public}ld, with error code = %{public}d", v128, 0x12u);
          MEMORY[0x24C1989D0](v128, -1, -1);
          v117 = v127;
        }

        else
        {
          sub_245FFEA30(v125, type metadata accessor for PhotogrammetrySample);
        }

        v92 = v180;
        v97 = v166;
      }

      else
      {
        ++v187;
        v117 = v151;
        v182(v151, v183, v32);
        v118 = v152;
        sub_245FFE868(v88, v152, type metadata accessor for PhotogrammetrySample);
        v119 = sub_2460918D4();
        v120 = sub_246091FC4();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = v117;
          v122 = swift_slowAlloc();
          *v122 = v162;
          v123 = *v118;
          sub_245FFEA30(v118, type metadata accessor for PhotogrammetrySample);
          *(v122 + 4) = v123;
          v92 = v180;
          _os_log_impl(&dword_245F8A000, v119, v120, "Added sample of id = %{public}ld", v122, 0xCu);
          MEMORY[0x24C1989D0](v122, -1, -1);
          v117 = v121;
          v97 = v166;
        }

        else
        {
          sub_245FFEA30(v118, type metadata accessor for PhotogrammetrySample);
        }
      }

      v185(v117, v32);
      CPGSampleRelease();
      v88 = v174;
      result = sub_245FE5D14(v174);
      v130 = v96 + 1;
      if (__OFADD__(v96, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if ((v181 & 1) == 0)
      {
        v131 = (v130 / v99) * 0.1;
        if (v131 > 0.1)
        {
          v131 = 0.1;
        }

        sub_245FE6AE0(v171, v170 & 1, v131);
      }

      sub_245FFEA30(v88, type metadata accessor for PhotogrammetrySample);
      sub_246092394();
      ++v96;
      if ((v178)(v92, 1, v186) == 1)
      {
        v96 = v130;
        goto LABEL_42;
      }
    }

    v132 = v148;
    v182(v148, v183, v32);
    v133 = sub_2460918D4();
    v134 = sub_246091FB4();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = v162;
      *(v135 + 4) = v176;
      _os_log_impl(&dword_245F8A000, v133, v134, "Stop adding sample, exceeded max number of samples device limit: %{public}ld.", v135, 0xCu);
      MEMORY[0x24C1989D0](v135, -1, -1);
    }

    v185(v132, v32);
    sub_245FFEA30(v88, type metadata accessor for PhotogrammetrySample);
    if (v181)
    {
      goto LABEL_44;
    }
  }

  if (v96 < v158)
  {
    goto LABEL_44;
  }

LABEL_45:
  v136 = v156;
  sub_245F8E7A4(v7 + v155, v156, &qword_27EE3A4B8, &unk_246097ED8);
  v137 = v154(v136, 1, v163);
  v138 = sub_245F8E744(v136, &qword_27EE3A4B8, &unk_246097ED8);
  if (v137 != 1)
  {
    *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase) = 1036831949;
  }

  v139 = v157;
  if ((*(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) & 1) == 0)
  {
    *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) = 1;
    if ((*(*v7 + 464))(v138))
    {
      v141 = v140;
      v142 = swift_getObjectType();
      v143 = v173;
      swift_storeEnumTagMultiPayload();
      (*(v141 + 8))(v143, v142, v141);
      swift_unknownObjectRelease();
      sub_245FFEA30(v143, type metadata accessor for PhotogrammetrySession.Output);
    }
  }

  v182(v139, v183, v32);
  v144 = sub_2460918D4();
  v145 = sub_246091FC4();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    *v146 = 0;
    _os_log_impl(&dword_245F8A000, v144, v145, "... done adding images from sample sequence.", v146, 2u);
    MEMORY[0x24C1989D0](v146, -1, -1);
  }

  return (v185)(v139, v32);
}

uint64_t sub_245FE84A8@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = 6;
  if (a1 < 25001)
  {
    v9 = &byte_2858DEC60;
  }

  else if (a1 < 0xC351)
  {
    v9 = &byte_2858DEC70;
  }

  else if (a1 < 0x186A1)
  {
    v9 = &byte_2858DEC80;
  }

  else if (a1 < 0x3D091)
  {
    v9 = &byte_2858DECA0;
  }

  else
  {
    if (a1 > 0x1C9C380)
    {
      goto LABEL_12;
    }

    v9 = &byte_2858DECB0;
  }

  v22 = *v9;
LABEL_12:
  v10 = sub_245FA31EC();
  (*(v5 + 16))(v8, v10, v4);
  v11 = v22;
  v12 = sub_2460918D4();
  v13 = sub_246091FC4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136446210;
    v20[15] = v11;
    v16 = sub_246091C54();
    v18 = sub_245F8D3C0(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_245F8A000, v12, v13, "Selected %{public}s as next high detail level", v14, 0xCu);
    sub_245F8E6F4(v15);
    MEMORY[0x24C1989D0](v15, -1, -1);
    MEMORY[0x24C1989D0](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  result = swift_beginAccess();
  *a2 = v22;
  return result;
}

uint64_t sub_245FE8728(char *a1, uint64_t a2)
{
  v69 = a1;
  v4 = sub_2460918F4();
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  MEMORY[0x28223BE20](v4);
  v66 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotogrammetrySession.Request(0);
  v74 = *(v7 - 8);
  v8 = *(v74 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v61 - v12;
  v14 = sub_245F8E624(&qword_27EE3A590, &qword_246098400);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v73 = (&v61 - v17);
  v18 = sub_245F8E624(&qword_27EE3A598, &qword_246098408);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = (&v61 - v23);
  v81 = 3;
  v25 = *(a2 + 16);
  v75 = a2;
  v76 = v25;
  v63 = v2 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration;
  result = swift_beginAccess();
  v27 = 0;
  v28 = 0;
  v29 = (v15 + 56);
  v30 = (v15 + 48);
  v70 = -1;
  v71 = 0;
LABEL_2:
  v72 = v28;
  while (1)
  {
    if (v27 == v76)
    {
      v31 = 1;
      v27 = v76;
      goto LABEL_8;
    }

    if (v27 >= v76)
    {
      break;
    }

    if (__OFADD__(v27, 1))
    {
      goto LABEL_37;
    }

    v32 = v73;
    v33 = v75 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v27;
    v34 = *(v14 + 48);
    *v73 = v27;
    sub_245FFE868(v33, v32 + v34, type metadata accessor for PhotogrammetrySession.Request);
    sub_245FC5914(v32, v22, &qword_27EE3A590, &qword_246098400);
    v31 = 0;
    ++v27;
LABEL_8:
    (*v29)(v22, v31, 1, v14);
    sub_245FC5914(v22, v24, &qword_27EE3A598, &qword_246098408);
    if ((*v30)(v24, 1, v14) == 1)
    {
      v48 = sub_245FA31EC();
      v50 = v66;
      v49 = v67;
      v51 = v68;
      (*(v67 + 16))(v66, v48, v68);
      v52 = sub_2460918D4();
      v53 = sub_246091FA4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v80 = v55;
        *v54 = 136446466;
        LOBYTE(v77) = v81;
        v56 = sub_246091C54();
        v58 = sub_245F8D3C0(v56, v57, &v80);

        *(v54 + 4) = v58;
        *(v54 + 12) = 2050;
        v59 = v71;
        *(v54 + 14) = v71;
        _os_log_impl(&dword_245F8A000, v52, v53, "Request with the highest detail level = %{public}s is at the index = %{public}ld", v54, 0x16u);
        sub_245F8E6F4(v55);
        MEMORY[0x24C1989D0](v55, -1, -1);
        MEMORY[0x24C1989D0](v54, -1, -1);

        (*(v49 + 8))(v50, v51);
        v60 = v69;
      }

      else
      {

        (*(v49 + 8))(v50, v51);
        v60 = v69;
        v59 = v71;
      }

      *v60 = v81;
      return v59;
    }

    v35 = *v24;
    sub_245FFE800(v24 + *(v14 + 48), v13, type metadata accessor for PhotogrammetrySession.Request);
    sub_245FFE868(v13, v11, type metadata accessor for PhotogrammetrySession.Request);
    v36 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
    if (!(*(*(v36 - 8) + 48))(v11, 3, v36))
    {
      v64 = v11[*(v36 + 48)];
      v79 = v64;
      v78 = 6;
      v65 = sub_245FFE8D0();
      sub_246091D94();
      sub_246091D94();
      if (v80 == v77)
      {
        v37 = *(v63 + 16);
        MaxPolyCount = CPGOutputModelOptionsGetMaxPolyCount();
        sub_245FE84A8(MaxPolyCount, &v80);
        v39 = v80;
        if (qword_27EE3C130 != -1)
        {
          v47 = v80;
          swift_once();
          v39 = v47;
        }

        v40 = qword_27EE3C138;
        if (!*(qword_27EE3C138 + 16))
        {
          goto LABEL_22;
        }

        v41 = sub_245FF84C0(v39);
        if ((v42 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_21:
        LODWORD(v65) = 0;
        v62 = *(*(v40 + 56) + 8 * v41);
      }

      else
      {
        if (qword_27EE3C130 != -1)
        {
          swift_once();
        }

        v40 = qword_27EE3C138;
        if (*(qword_27EE3C138 + 16))
        {
          v41 = sub_245FF84C0(v64);
          if (v43)
          {
            goto LABEL_21;
          }
        }

LABEL_22:
        v62 = 0;
        LODWORD(v65) = 1;
      }

      v44 = sub_245FCA01C(v13);
      sub_245FFEA30(v13, type metadata accessor for PhotogrammetrySession.Request);
      if (v65)
      {
LABEL_24:
        v45 = v70;
        v35 = v71;
      }

      else if (v70 >= v62)
      {
        if (v62 != v70) | v44 & 1 || ((v72 ^ 1))
        {
          v72 &= (v62 != v70) | v44;
          goto LABEL_24;
        }

        v72 = 0;
        v81 = v64;
        v45 = v70;
      }

      else
      {
        v81 = v64;
        v72 = v44;
        v45 = v62;
      }

      v46 = sub_246091704();
      result = (*(*(v46 - 8) + 8))(v11, v46);
      v70 = v45;
      v71 = v35;
      v28 = v72;
      goto LABEL_2;
    }

    sub_245FFEA30(v13, type metadata accessor for PhotogrammetrySession.Request);
    result = sub_245FFEA30(v11, type metadata accessor for PhotogrammetrySession.Request);
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_245FE8EF8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v5 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v73 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v72 = &v65[-v9];
  v10 = sub_245F8E624(&qword_27EE3A590, &qword_246098400);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v65[-v13];
  v15 = sub_245F8E624(&qword_27EE3A598, &qword_246098408);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v65[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v65[-v20];
  v22 = type metadata accessor for PhotogrammetrySession.Request(0);
  v77 = *(v22 - 8);
  v23 = *(v77 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v71 = &v65[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v24);
  v76 = &v65[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v65[-v29];
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v65[-v32];
  v75 = &v65[-v32];
  v34 = *(a1 + 16);
  if (!v34)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v74 = v11;
  v70 = v31;
  v80.i64[0] = v2;
  v11 = OBJC_IVAR____TtC6CoreOC9PGManager_requestByCPGRequest;
  swift_beginAccess();
  v2 = v80.i64[0];
  if (*(*(v80.i64[0] + v11) + 16) || *(v80.i64[0] + OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap))
  {
    *(a2 + 8) = 1792;
    *(a2 + 10) = 0;
    *a2 = a1;
  }

  v67 = a2;
  v36 = sub_245FE8728(&v82, a1);
  if (v36 >= v34)
  {
    goto LABEL_33;
  }

  v66 = v82.u8[0];
  v11 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v37 = *(v77 + 72);
  v81.i64[0] = v36;
  v78.i64[0] = a1 + v11;
  v79.i64[0] = v37;
  a2 = v75;
  sub_245FFE868(a1 + v11 + v37 * v36, v75, type metadata accessor for PhotogrammetrySession.Request);
  v69 = sub_245FF7EC4(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = v69[2];
  v33 = v69[3];
  a1 = v2 + 1;
  if (v2 >= v33 >> 1)
  {
LABEL_34:
    v69 = sub_245FF7EC4(v33 > 1, a1, 1, v69);
  }

  v38 = v69;
  v69[2] = a1;
  v68 = v11;
  sub_245FFE800(a2, v38 + v11 + v2 * v79.i64[0], type metadata accessor for PhotogrammetrySession.Request);
  v11 = 0;
  v33 = v74;
  v2 = v74 + 56;
  a1 = v74 + 48;
  while (1)
  {
    if (v11 == v34)
    {
      v39 = 1;
      v11 = v34;
    }

    else
    {
      if (v11 >= v34)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      a2 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_31;
      }

      v40 = v11 * v79.i64[0];
      v41 = *(v10 + 48);
      *v14 = v11;
      sub_245FFE868(v78.i64[0] + v40, v14 + v41, type metadata accessor for PhotogrammetrySession.Request);
      sub_245FC5914(v14, v19, &qword_27EE3A590, &qword_246098400);
      v39 = 0;
      ++v11;
    }

    (*v2)(v19, v39, 1, v10);
    sub_245FC5914(v19, v21, &qword_27EE3A598, &qword_246098408);
    result = (*a1)(v21, 1, v10);
    if (result == 1)
    {
      break;
    }

    a2 = *v21;
    sub_245FFE800(v21 + *(v10 + 48), v30, type metadata accessor for PhotogrammetrySession.Request);
    if (a2 == v81.i64[0])
    {
      sub_245FFEA30(v30, type metadata accessor for PhotogrammetrySession.Request);
    }

    else
    {
      sub_245FFE868(v30, v76, type metadata accessor for PhotogrammetrySession.Request);
      a2 = v69[2];
      v42 = v69[3];
      v75 = (a2 + 1);
      if (a2 >= v42 >> 1)
      {
        v69 = sub_245FF7EC4(v42 > 1, a2 + 1, 1, v69);
      }

      sub_245FFEA30(v30, type metadata accessor for PhotogrammetrySession.Request);
      v43 = v69;
      v69[2] = v75;
      sub_245FFE800(v76, v43 + v68 + a2 * v79.i64[0], type metadata accessor for PhotogrammetrySession.Request);
    }
  }

  v44 = v69;
  if (v69[2])
  {
    v45 = v72;
    sub_245FFE868(v69 + v68, v72, type metadata accessor for PhotogrammetrySession.Request);
    v46 = v77;
    v47 = v70;
    (*(v77 + 56))(v45, 0, 1, v70);
    v48 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
    v49 = v80.i64[0];
    swift_beginAccess();
    sub_245F97BAC(v45, v49 + v48, &qword_27EE3A4B8, &unk_246097ED8);
    swift_endAccess();
    v91 = 1;
    v50 = v49 + v48;
    v51 = v73;
    sub_245F8E7A4(v50, v73, &qword_27EE3A4B8, &unk_246097ED8);
    result = (*(v46 + 48))(v51, 1, v47);
    if (result != 1)
    {
      v52 = v71;
      sub_245FFE868(v51, v71, type metadata accessor for PhotogrammetrySession.Request);
      v53 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
      v54 = (*(*(v53 - 8) + 48))(v52, 3, v53);
      v55 = v67;
      if (v54)
      {

        sub_245FFEA30(v52, type metadata accessor for PhotogrammetrySession.Request);
LABEL_23:
        v56 = 0;
LABEL_29:
        sub_245FFEA30(v51, type metadata accessor for PhotogrammetrySession.Request);

        v64 = v91;
        *v55 = v44;
        *(v55 + 8) = v64;
        *(v55 + 9) = v66;
        *(v55 + 10) = v56;
        return result;
      }

      v57 = &v52[*(v53 + 64)];
      v58 = *(v57 + 7);
      v88 = *(v57 + 6);
      v89 = v58;
      v90 = v57[128];
      v59 = *(v57 + 3);
      v84 = *(v57 + 2);
      v85 = v59;
      v60 = *(v57 + 5);
      v86 = *(v57 + 4);
      v87 = v60;
      v61 = *(v57 + 1);
      v82 = *v57;
      v83 = v61;
      if (sub_245F97DBC(&v82) == 1)
      {
      }

      else
      {
        v81 = v82;
        v80 = v83;
        v79 = v84;
        v78 = v85;

        if (sub_246021E38(v81, v80, v79, v78))
        {
          v62 = sub_246091704();
          (*(*(v62 - 8) + 8))(v52, v62);
          goto LABEL_23;
        }
      }

      v63 = sub_246091704();
      (*(*(v63 - 8) + 8))(v52, v63);
      v56 = 1;
      goto LABEL_29;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_245FE9894(char *a1)
{
  v82 = *MEMORY[0x277D85DE8];
  v3 = sub_2460918F4();
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v70 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v73 = &v66 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v67 = &v66 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v66 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v66 - v14;
  v16 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v72 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v69 = &v66 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v66 - v22;
  v24 = *a1;
  v25 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
  swift_beginAccess();
  v76 = v1;
  sub_245F8E7A4(v1 + v25, v23, &qword_27EE3A4B8, &unk_246097ED8);
  v26 = type metadata accessor for PhotogrammetrySession.Request(0);
  v68 = *(v26 - 8);
  v71 = *(v68 + 48);
  v27 = v71(v23, 1, v26);
  sub_245F8E744(v23, &qword_27EE3A4B8, &unk_246097ED8);
  if (v27 == 1)
  {
    __break(1u);
    goto LABEL_33;
  }

  v81 = 0;
  v28 = dword_246098564[v24];
  if (CPGRequestCreateWithDetail())
  {
    goto LABEL_24;
  }

  v78 = v24;
  v77 = 6;
  sub_245FFE8D0();
  sub_246091D94();
  sub_246091D94();
  v29 = v74;
  v30 = v75;
  v31 = v76;
  if (v80 != v79)
  {
    goto LABEL_10;
  }

  if (!*(v76 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 16))
  {
    v42 = sub_245FA31EC();
    (*(v29 + 16))(v13, v42, v30);
    v43 = sub_2460918D4();
    v44 = sub_246091FB4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v29;
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_245F8A000, v43, v44, "Output model options is nil", v46, 2u);
      MEMORY[0x24C1989D0](v46, -1, -1);

      (*(v45 + 8))(v13, v30);
    }

    else
    {

      (*(v29 + 8))(v13, v30);
    }

    goto LABEL_24;
  }

  if (CPGRequestSetCustomOutputModelOptions())
  {
LABEL_24:
    result = 0;
LABEL_25:
    v58 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (!v81)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v32 = sub_245FA31EC();
  (*(v29 + 16))(v15, v32, v30);
  v33 = sub_2460918D4();
  v34 = sub_246091FC4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_245F8A000, v33, v34, "Set custom detail level for base frame request", v35, 2u);
    v36 = v35;
    v31 = v76;
    MEMORY[0x24C1989D0](v36, -1, -1);
  }

  (*(v29 + 8))(v15, v30);
LABEL_10:
  if (!v81)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (*(v31 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 25) != 1)
  {
    goto LABEL_22;
  }

  if (CPGRequestSetOutputQuadMeshEnabled())
  {
    v37 = sub_245FA31EC();
    v38 = v73;
    (*(v29 + 16))(v73, v37, v30);
    v39 = sub_2460918D4();
    v40 = sub_246091FB4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_245F8A000, v39, v40, "Error setting quad mesh output for base frame request", v41, 2u);
      MEMORY[0x24C1989D0](v41, -1, -1);
    }

    (*(v29 + 8))(v38, v30);
    goto LABEL_23;
  }

  if (!v81)
  {
LABEL_35:
    __break(1u);
  }

  v47 = sub_245FA31EC();
  v48 = v67;
  (*(v29 + 16))(v67, v47, v30);
  v49 = sub_2460918D4();
  v50 = sub_246091FC4();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_245F8A000, v49, v50, "Set quad mesh model file for base frame request", v51, 2u);
    v52 = v51;
    v31 = v76;
    MEMORY[0x24C1989D0](v52, -1, -1);
  }

  (*(v29 + 8))(v48, v30);
LABEL_22:
  v53 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
  swift_beginAccess();
  v54 = *(v31 + v53);
  v55 = *(v31 + OBJC_IVAR____TtC6CoreOC9PGManager_processingCallbackBundle);
  result = CPGSessionProcessRequestWithCallbacks();
  v57 = v81;
  if (result)
  {
LABEL_23:
    CPGRequestRelease();
    goto LABEL_24;
  }

  *(v31 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameCPGRequest) = v81;
  if (v57)
  {
    v59 = v72;
    sub_245F8E7A4(v31 + v25, v72, &qword_27EE3A4B8, &unk_246097ED8);
    result = v71(v59, 1, v26);
    if (result != 1)
    {
      v60 = v69;
      sub_245FFE800(v59, v69, type metadata accessor for PhotogrammetrySession.Request);
      (*(v68 + 56))(v60, 0, 1, v26);
      swift_beginAccess();
      sub_245FD4674(v60, v57);
      swift_endAccess();
      v61 = sub_245FA31EC();
      v62 = v70;
      (*(v29 + 16))(v70, v61, v30);
      v63 = sub_2460918D4();
      v64 = sub_246091FC4();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_245F8A000, v63, v64, "Successfully passed a base frame request to backend session.", v65, 2u);
        MEMORY[0x24C1989D0](v65, -1, -1);
      }

      (*(v29 + 8))(v62, v30);
      CPGRequestRelease();
      result = 1;
      goto LABEL_25;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_245FEA118(uint64_t a1)
{
  v16[5] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for PhotogrammetrySession.Request(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245FFE868(a1, v6, type metadata accessor for PhotogrammetrySession.Request);
  v7 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  if ((*(*(v7 - 8) + 48))(v6, 3, v7))
  {
    result = sub_245FFEA30(v6, type metadata accessor for PhotogrammetrySession.Request);
  }

  else
  {
    v9 = v6[*(v7 + 48)];
    v16[4] = 0;
    v10 = dword_246098564[v9];
    if (!CPGRequestCreateWithDetail())
    {
      if (*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 25) != 1 || !CPGRequestSetOutputQuadMeshEnabled())
      {
        v12 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
        swift_beginAccess();
        v13 = *(v1 + v12);
        CPGSessionGetEstimatedProcessingTime();
        CPGRequestRelease();
        v14 = sub_246091704();
        result = (*(*(v14 - 8) + 8))(v6, v14);
        goto LABEL_9;
      }

      CPGRequestRelease();
    }

    v11 = sub_246091704();
    result = (*(*(v11 - 8) + 8))(v6, v11);
  }

LABEL_9:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245FEA360(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v147 = a1;
  v197 = *MEMORY[0x277D85DE8];
  v8 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v140 = &v132 - v10;
  v11 = sub_2460918F4();
  v144 = *(v11 - 8);
  v145 = v11;
  v12 = *(v144 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v141 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v143 = &v132 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v142 = &v132 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v132 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v132 - v22;
  v146 = type metadata accessor for PhotogrammetrySession.Output(0);
  v24 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v26 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap;
  if (!*(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap))
  {
LABEL_87:
    __break(1u);
  }

  v28 = *a3;
  v29 = (v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform);
  v30 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 112);
  v176[6] = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 96);
  v176[7] = v30;
  v177 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 128);
  v31 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 48);
  v176[2] = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 32);
  v176[3] = v31;
  v32 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 80);
  v176[4] = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 64);
  v176[5] = v32;
  v33 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 16);
  v176[0] = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform);
  v176[1] = v33;
  if (sub_245F97DBC(v176))
  {
    __break(1u);
    goto LABEL_78;
  }

  v175 = 0;
  v34 = *(a4 + 112);
  v184 = *(a4 + 96);
  v185 = v34;
  v186 = *(a4 + 128);
  v35 = *(a4 + 48);
  v180 = *(a4 + 32);
  v181 = v35;
  v36 = *(a4 + 80);
  v182 = *(a4 + 64);
  v183 = v36;
  v37 = *(a4 + 16);
  v178 = *a4;
  v179 = v37;
  if (sub_245F97DBC(&v178) == 1 || (result = sub_246021E38(v178, v179, v180, v181), (result & 1) == 0))
  {
LABEL_16:
    v50 = dword_246098564[v28];
    if (!CPGRequestCreateWithDetail())
    {
      goto LABEL_35;
    }

    if ((*(*v5 + 464))())
    {
      v52 = v51;
      ObjectType = swift_getObjectType();
      v54 = &v26[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
      sub_245FFE868(v147, v26, type metadata accessor for PhotogrammetrySession.Request);
      *v54 = 3;
      v54[8] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v52 + 8))(v26, ObjectType, v52);
      swift_unknownObjectRelease();
      sub_245FFEA30(v26, type metadata accessor for PhotogrammetrySession.Output);
    }

    v46 = OBJC_IVAR____TtC6CoreOC9PGManager_requestNum;
    v55 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v48 = __OFSUB__(v55, 1);
    v49 = v55 - 1;
    if (!v48)
    {
LABEL_20:
      *(v5 + v46) = v49;
      result = sub_245FE2E78();
LABEL_21:
      v56 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (!*(v5 + v27))
  {
    __break(1u);
    goto LABEL_89;
  }

  v39 = v29[7];
  v163 = v29[6];
  v164 = v39;
  v165 = v29[8].i8[0];
  v40 = v29[3];
  v159 = v29[2];
  v160 = v40;
  v41 = v29[5];
  v161 = v29[4];
  v162 = v41;
  v42 = v29[1];
  v157 = *v29;
  v158 = v42;
  if (sub_245F97DBC(&v157))
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v172 = v163;
  v173 = v164;
  v174 = v165;
  v168 = v159;
  v169 = v160;
  v170 = v161;
  v171 = v162;
  v166 = v157;
  v167 = v158;
  result = sub_245F97DBC(&v166);
  if (result == 1)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v152 = v170;
  v153 = v171;
  v154 = v172;
  v155 = v173;
  v148 = v166;
  v149 = v167;
  v150 = v168;
  v151 = v169;
  MutableCopy = CPGSfmMapCreateMutableCopy();
  if (!MutableCopy)
  {
LABEL_11:
    if ((*(*v5 + 464))(MutableCopy))
    {
      v21 = v44;
      v45 = swift_getObjectType();
      v23 = &v26[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
      sub_245FFE868(v147, v26, type metadata accessor for PhotogrammetrySession.Request);
      *v23 = 3;
      v23[8] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v21 + 1))(v26, v45, v21);
      swift_unknownObjectRelease();
      sub_245FFEA30(v26, type metadata accessor for PhotogrammetrySession.Output);
    }

    v46 = OBJC_IVAR____TtC6CoreOC9PGManager_requestNum;
    v47 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v48 = __OFSUB__(v47, 1);
    v49 = v47 - 1;
    if (!v48)
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_16;
  }

  v192 = v152;
  v193 = v153;
  v194 = v154;
  v195 = v155;
  v188 = v148;
  v189 = v149;
  v190 = v150;
  v191 = v151;
  if (CPGSfmMapTransformBy())
  {
    goto LABEL_10;
  }

  v57 = *(a4 + 112);
  v194 = *(a4 + 96);
  v195 = v57;
  v196 = *(a4 + 128);
  v58 = *(a4 + 48);
  v190 = *(a4 + 32);
  v191 = v58;
  v59 = *(a4 + 80);
  v192 = *(a4 + 64);
  v193 = v59;
  v60 = *(a4 + 16);
  v188 = *a4;
  v189 = v60;
  if (sub_245F97DBC(&v188) == 1)
  {
    OCNonModularSPI_Serialization_InvalidBoundingBoxTransform();
    v138 = v62;
    v139 = v61;
    v136 = v64;
    v137 = v63;
    sub_246027DB4();
    PhotogrammetrySession.Request.Geometry.init(orientedBoundsTransform:rootTransform:)(&v156, v65, v66);
  }

  else
  {
    v67 = *(a4 + 80);
    v156.rootTransform.columns[0] = *(a4 + 64);
    v156.rootTransform.columns[1] = v67;
    v68 = *(a4 + 112);
    v156.rootTransform.columns[2] = *(a4 + 96);
    v156.rootTransform.columns[3] = v68;
    v69 = *(a4 + 16);
    v156.orientedBoundsTransform.columns[0] = *a4;
    v156.orientedBoundsTransform.columns[1] = v69;
    v70 = *(a4 + 48);
    v156.orientedBoundsTransform.columns[2] = *(a4 + 32);
    v156.orientedBoundsTransform.columns[3] = v70;
  }

  v138 = v156.rootTransform.columns[1];
  v139 = v156.rootTransform.columns[0];
  v136 = v156.rootTransform.columns[3];
  v137 = v156.rootTransform.columns[2];
  v134 = v156.orientedBoundsTransform.columns[1];
  v135 = v156.orientedBoundsTransform.columns[0];
  v132 = v156.orientedBoundsTransform.columns[3];
  v133 = v156.orientedBoundsTransform.columns[2];
  if (sub_246021E38(v156.orientedBoundsTransform.columns[0], v156.orientedBoundsTransform.columns[1], v156.orientedBoundsTransform.columns[2], v156.orientedBoundsTransform.columns[3]))
  {
    v187 = 0;
    sub_246021188(&v156, v135, v134, v133, v132);
    if (CPGBoundingBoxCreateFromTransform())
    {
      goto LABEL_10;
    }

    v71 = CPGSfmMapSetBoundingBox();
    CPGBoundingBoxRelease();
    if (v71)
    {
      goto LABEL_10;
    }
  }

  sub_246021188(&v156, v139, v138, v137, v136);
  if (CPGSfmMapTransformBy())
  {
LABEL_10:
    MutableCopy = CPGSfmMapRelease();
    goto LABEL_11;
  }

  CPGSfmMapRetain();
  CPGSfmMapRelease();
  v72 = dword_246098564[v28];
  if (CPGRequestCreateWithDetailAndSfmMap())
  {
    if ((*(*v5 + 464))())
    {
      v74 = v73;
      v75 = swift_getObjectType();
      v76 = &v26[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
      sub_245FFE868(v147, v26, type metadata accessor for PhotogrammetrySession.Request);
      *v76 = 3;
      v76[8] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v74 + 8))(v26, v75, v74);
      swift_unknownObjectRelease();
      sub_245FFEA30(v26, type metadata accessor for PhotogrammetrySession.Output);
    }

    v77 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v48 = __OFSUB__(v77, 1);
    v78 = v77 - 1;
    if (!v48)
    {
      *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v78;
      sub_245FE2E78();
      result = CPGSfmMapRelease();
      goto LABEL_21;
    }

    goto LABEL_86;
  }

  CPGSfmMapRelease();
LABEL_35:
  if (!v175)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v157.i8[0] = v28;
  v156.orientedBoundsTransform.columns[0].i8[0] = 6;
  sub_245FFE8D0();
  sub_246091D94();
  v79 = sub_246091D94();
  if (v188.i64[0] == v166.i64[0])
  {
    if (!*(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 16))
    {
LABEL_44:
      if ((*(*v5 + 464))(v79))
      {
        v85 = v84;
        v86 = swift_getObjectType();
        v87 = &v26[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
        sub_245FFE868(v147, v26, type metadata accessor for PhotogrammetrySession.Request);
        *v87 = 3;
        v87[8] = 1;
        swift_storeEnumTagMultiPayload();
        (*(v85 + 8))(v26, v86, v85);
        swift_unknownObjectRelease();
        sub_245FFEA30(v26, type metadata accessor for PhotogrammetrySession.Output);
      }

      v88 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
      v48 = __OFSUB__(v88, 1);
      v89 = v88 - 1;
      v91 = v144;
      v90 = v145;
      if (!v48)
      {
        *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v89;
        sub_245FE2E78();
        v92 = sub_245FA31EC();
        (*(v91 + 16))(v21, v92, v90);
        v93 = sub_2460918D4();
        v94 = sub_246091FB4();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&dword_245F8A000, v93, v94, "Output model options is nil", v95, 2u);
          MEMORY[0x24C1989D0](v95, -1, -1);
        }

        result = (*(v91 + 8))(v21, v90);
        goto LABEL_21;
      }

      goto LABEL_83;
    }

    if (CPGRequestSetCustomOutputModelOptions())
    {
      v79 = (*(*v5 + 464))();
      if (v79)
      {
        v21 = v80;
        v81 = swift_getObjectType();
        v82 = &v26[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
        sub_245FFE868(v147, v26, type metadata accessor for PhotogrammetrySession.Request);
        *v82 = 3;
        v82[8] = 1;
        swift_storeEnumTagMultiPayload();
        (*(v21 + 1))(v26, v81, v21);
        swift_unknownObjectRelease();
        v79 = sub_245FFEA30(v26, type metadata accessor for PhotogrammetrySession.Output);
      }

      v46 = OBJC_IVAR____TtC6CoreOC9PGManager_requestNum;
      v83 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
      v48 = __OFSUB__(v83, 1);
      v49 = v83 - 1;
      if (!v48)
      {
        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_44;
    }

    if (!v175)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v96 = sub_245FA31EC();
    (*(v144 + 16))(v23, v96, v145);
    v97 = sub_2460918D4();
    v98 = sub_246091FC4();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_245F8A000, v97, v98, "Set custom detail level model file request", v99, 2u);
      MEMORY[0x24C1989D0](v99, -1, -1);
    }

    (*(v144 + 8))(v23, v145);
  }

  v101 = v144;
  v100 = v145;
  if (*(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 25) == 1)
  {
    if (CPGRequestSetOutputQuadMeshEnabled())
    {
      if ((*(*v5 + 464))())
      {
        v103 = v102;
        v104 = swift_getObjectType();
        v105 = &v26[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
        sub_245FFE868(v147, v26, type metadata accessor for PhotogrammetrySession.Request);
        *v105 = 3;
        v105[8] = 1;
        swift_storeEnumTagMultiPayload();
        (*(v103 + 8))(v26, v104, v103);
        swift_unknownObjectRelease();
        sub_245FFEA30(v26, type metadata accessor for PhotogrammetrySession.Output);
      }

      v106 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
      v48 = __OFSUB__(v106, 1);
      v107 = v106 - 1;
      if (!v48)
      {
        *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v107;
        sub_245FE2E78();
        v108 = sub_245FA31EC();
        v109 = v143;
        (*(v101 + 16))(v143, v108, v100);
        v110 = sub_2460918D4();
        v111 = sub_246091FB4();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 0;
          v113 = "Error setting quad mesh output model";
LABEL_74:
          _os_log_impl(&dword_245F8A000, v110, v111, v113, v112, 2u);
          MEMORY[0x24C1989D0](v112, -1, -1);
          goto LABEL_75;
        }

        goto LABEL_75;
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (!v175)
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v114 = sub_245FA31EC();
    v115 = v142;
    (*(v101 + 16))(v142, v114, v100);
    v116 = sub_2460918D4();
    v117 = sub_246091FC4();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&dword_245F8A000, v116, v117, "Set quad mesh model file request", v118, 2u);
      v115 = v142;
      MEMORY[0x24C1989D0](v118, -1, -1);
    }

    (*(v101 + 8))(v115, v100);
  }

  v119 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
  result = swift_beginAccess();
  if (!v175)
  {
    goto LABEL_90;
  }

  v120 = *(v5 + v119);
  v121 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_processingCallbackBundle);
  result = CPGSessionProcessRequestWithCallbacks();
  if (result)
  {
    if ((*(*v5 + 464))())
    {
      v123 = v122;
      v124 = swift_getObjectType();
      v125 = &v26[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
      sub_245FFE868(v147, v26, type metadata accessor for PhotogrammetrySession.Request);
      *v125 = 3;
      v125[8] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v123 + 8))(v26, v124, v123);
      swift_unknownObjectRelease();
      sub_245FFEA30(v26, type metadata accessor for PhotogrammetrySession.Output);
    }

    v126 = *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v48 = __OFSUB__(v126, 1);
    v127 = v126 - 1;
    if (!v48)
    {
      *(v5 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v127;
      sub_245FE2E78();
LABEL_76:
      result = CPGRequestRelease();
      goto LABEL_21;
    }

    goto LABEL_81;
  }

  v128 = v175;
  if (v175)
  {
    v129 = v140;
    sub_245FFE868(v147, v140, type metadata accessor for PhotogrammetrySession.Request);
    v130 = type metadata accessor for PhotogrammetrySession.Request(0);
    (*(*(v130 - 8) + 56))(v129, 0, 1, v130);
    swift_beginAccess();
    sub_245FD4674(v129, v128);
    swift_endAccess();
    v131 = sub_245FA31EC();
    v109 = v141;
    (*(v101 + 16))(v141, v131, v100);
    v110 = sub_2460918D4();
    v111 = sub_246091FC4();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      v113 = "Successfully passed the model file request to backend session.";
      goto LABEL_74;
    }

LABEL_75:

    (*(v101 + 8))(v109, v100);
    goto LABEL_76;
  }

LABEL_91:
  __break(1u);
  return result;
}

uint64_t sub_245FEB48C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotogrammetrySession.Request(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v33[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PhotogrammetrySession.Output(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v33[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PhotogrammetrySession.Result(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v33[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud;
  if (*(*(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud) + 16))
  {
    v5 = v2;
    sub_245FEC2F4(a1);
    v18 = *(v2 + v17);

    _s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackV8rawValueAGSi_tcfC_0(v19, v33);
    *v16 = v33[0];
    v20 = swift_storeEnumTagMultiPayload();
    v21 = (*(*v2 + 464))(v20);
    if (v21)
    {
      v5 = v21;
      v8 = v22;
      ObjectType = swift_getObjectType();
      v24 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
      sub_245FFE868(a1, v12, type metadata accessor for PhotogrammetrySession.Request);
      sub_245FFE868(v16, &v12[v24], type metadata accessor for PhotogrammetrySession.Result);
      swift_storeEnumTagMultiPayload();
      v8[1](v12, ObjectType, v8);
      swift_unknownObjectRelease();
      sub_245FFEA30(v12, type metadata accessor for PhotogrammetrySession.Output);
    }

    v25 = *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v26 = __OFSUB__(v25, 1);
    v27 = v25 - 1;
    if (!v26)
    {
      *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v27;
      sub_245FE2E78();
      return sub_245FFEA30(v16, type metadata accessor for PhotogrammetrySession.Result);
    }

    __break(1u);
    goto LABEL_11;
  }

  sub_245FFE868(a1, v8, type metadata accessor for PhotogrammetrySession.Request);
  v12 = OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests;
  swift_beginAccess();
  a1 = *&v12[v2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v12[v2] = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_11:
    a1 = sub_245FF7EC4(0, a1[2] + 1, 1, a1);
    *&v12[v2] = a1;
  }

  v31 = a1[2];
  v30 = a1[3];
  if (v31 >= v30 >> 1)
  {
    a1 = sub_245FF7EC4(v30 > 1, v31 + 1, 1, a1);
  }

  a1[2] = v31 + 1;
  sub_245FFE800(v8, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v31, type metadata accessor for PhotogrammetrySession.Request);
  *&v12[v2] = a1;
  return swift_endAccess();
}

uint64_t sub_245FEB84C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotogrammetrySession.Request(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhotogrammetrySession.Output(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PhotogrammetrySession.Result(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v2 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform);
  if (*(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform + 64))
  {
    sub_245FFE868(a1, v8, type metadata accessor for PhotogrammetrySession.Request);
    v18 = OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests;
    swift_beginAccess();
    v19 = *(v2 + v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v18) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_245FF7EC4(0, v19[2] + 1, 1, v19);
      *(v2 + v18) = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_245FF7EC4(v21 > 1, v22 + 1, 1, v19);
    }

    v19[2] = v22 + 1;
    sub_245FFE800(v8, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, type metadata accessor for PhotogrammetrySession.Request);
    *(v2 + v18) = v19;
    return swift_endAccess();
  }

  else
  {
    v24 = v17[2];
    v37 = v17[1];
    v38 = v24;
    v36 = *v17;
    v25 = *(v17 + 6);
    v26 = *(v17 + 7);
    sub_245FEC2F4(a1);
    v27 = v37;
    *v16 = v36;
    *(v16 + 1) = v27;
    *(v16 + 2) = v38;
    *(v16 + 6) = v25;
    *(v16 + 7) = v26;
    v28 = swift_storeEnumTagMultiPayload();
    result = (*(*v2 + 464))(v28);
    if (result)
    {
      v30 = v29;
      ObjectType = swift_getObjectType();
      v32 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
      sub_245FFE868(a1, v12, type metadata accessor for PhotogrammetrySession.Request);
      sub_245FFE868(v16, &v12[v32], type metadata accessor for PhotogrammetrySession.Result);
      swift_storeEnumTagMultiPayload();
      (*(v30 + 8))(v12, ObjectType, v30);
      swift_unknownObjectRelease();
      result = sub_245FFEA30(v12, type metadata accessor for PhotogrammetrySession.Output);
    }

    v33 = *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v34 = __OFSUB__(v33, 1);
    v35 = v33 - 1;
    if (v34)
    {
      __break(1u);
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v35;
      sub_245FE2E78();
      return sub_245FFEA30(v16, type metadata accessor for PhotogrammetrySession.Result);
    }
  }

  return result;
}

uint64_t sub_245FEBC1C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotogrammetrySession.Request(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = (v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PhotogrammetrySession.Output(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PhotogrammetrySession.Result(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC6CoreOC9PGManager_posesBySample;
  swift_beginAccess();
  if (*(*(v2 + v17) + 16))
  {
    sub_245FEC2F4(a1);
    v18 = OBJC_IVAR____TtC6CoreOC9PGManager_lensDistortionDataBySample;
    swift_beginAccess();
    v19 = *(v2 + v18);

    v8 = sub_245FEC06C(v20);

    v21._rawValue = *(v2 + v17);
    v22 = OBJC_IVAR____TtC6CoreOC9PGManager_intrinsicsBySample;
    swift_beginAccess();
    v23._rawValue = *(v2 + v22);

    PhotogrammetrySession.Poses.init(posesBySample:intrinsicsBySample:lensDistortionDataBySample:)(v21, v23, v8);
    v24 = v38;
    *v16 = v37[2];
    *(v16 + 2) = v24;
    v25 = swift_storeEnumTagMultiPayload();
    v5 = v2;
    v26 = (*(*v2 + 464))(v25);
    if (v26)
    {
      v5 = v26;
      v8 = v27;
      ObjectType = swift_getObjectType();
      v29 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
      sub_245FFE868(a1, v12, type metadata accessor for PhotogrammetrySession.Request);
      sub_245FFE868(v16, &v12[v29], type metadata accessor for PhotogrammetrySession.Result);
      swift_storeEnumTagMultiPayload();
      v8[1](v12, ObjectType, v8);
      swift_unknownObjectRelease();
      sub_245FFEA30(v12, type metadata accessor for PhotogrammetrySession.Output);
    }

    v30 = *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v31 = __OFSUB__(v30, 1);
    v32 = v30 - 1;
    if (!v31)
    {
      *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v32;
      sub_245FE2E78();
      return sub_245FFEA30(v16, type metadata accessor for PhotogrammetrySession.Result);
    }

    __break(1u);
    goto LABEL_11;
  }

  sub_245FFE868(a1, v8, type metadata accessor for PhotogrammetrySession.Request);
  v12 = OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests;
  swift_beginAccess();
  a1 = *&v12[v2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v12[v2] = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_11:
    a1 = sub_245FF7EC4(0, a1[2] + 1, 1, a1);
    *&v12[v2] = a1;
  }

  v36 = a1[2];
  v35 = a1[3];
  if (v36 >= v35 >> 1)
  {
    a1 = sub_245FF7EC4(v35 > 1, v36 + 1, 1, a1);
  }

  a1[2] = v36 + 1;
  sub_245FFE800(v8, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v36, type metadata accessor for PhotogrammetrySession.Request);
  *&v12[v2] = a1;
  return swift_endAccess();
}

uint64_t sub_245FEC06C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_245F8E624(&qword_27EE3A558, &unk_2460983D0);
    v1 = sub_246092384();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    sub_245F8E7A4(*(a1 + 56) + 32 * v11, &v23, &unk_27EE3AA00, &qword_246098380);
    sub_245F8E624(&unk_27EE3AA00, &qword_246098380);
    sub_245F8E624(&qword_27EE3A560, &qword_246099A90);
    swift_dynamicCast();
    v13 = *(v1 + 40);
    result = sub_2460924F4();
    v14 = -1 << *(v1 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v6 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v6 + 8 * v16);
        if (v20 != -1)
        {
          v9 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v15) & ~*(v6 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    *(*(v1 + 48) + 8 * v9) = v12;
    *(*(v1 + 56) + 16 * v9) = v22;
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_245FEC2F4(uint64_t a1)
{
  v2 = v1;
  v60 = type metadata accessor for PhotogrammetrySession.Output(0);
  v4 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v59 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - v11;
  v13 = type metadata accessor for PhotogrammetrySession.Request(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64[0] = 6;
  sub_24602883C(0, 1, v64, &v65);
  v61 = v65;
  v62 = v66;
  v63 = v67;
  v18 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
  swift_beginAccess();
  sub_245F8E7A4(v2 + v18, v12, &qword_27EE3A4B8, &unk_246097ED8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v19 = sub_245F8E744(v12, &qword_27EE3A4B8, &unk_246097ED8);
LABEL_10:
    v32 = (*v2 + 464);
    v33 = *v32;
    v34 = (*v32)(v19);
    if (v34)
    {
      v36 = v35;
      ObjectType = swift_getObjectType();
      v38 = *(sub_245F8E624(&qword_27EE3A568, &qword_2460983E0) + 48);
      sub_245FFE868(a1, v6, type metadata accessor for PhotogrammetrySession.Request);
      *&v6[v38] = 0;
      swift_storeEnumTagMultiPayload();
      (*(v36 + 8))(v6, ObjectType, v36);
      swift_unknownObjectRelease();
      v34 = sub_245FFEA30(v6, type metadata accessor for PhotogrammetrySession.Output);
    }

    v39 = v33(v34);
    if (v39)
    {
      v41 = v40;
      v42 = swift_getObjectType();
      v43 = &v6[*(sub_245F8E624(&qword_27EE3A570, &qword_2460983E8) + 48)];
      sub_245FFE868(a1, v6, type metadata accessor for PhotogrammetrySession.Request);
      *v43 = v61;
      v44 = v63;
      v43[8] = v62;
      v43[9] = v44;
      swift_storeEnumTagMultiPayload();
      (*(v41 + 8))(v6, v42, v41);
      swift_unknownObjectRelease();
      v39 = sub_245FFEA30(v6, type metadata accessor for PhotogrammetrySession.Output);
    }

    v45 = v33(v39);
    if (v45)
    {
      v47 = v46;
      v48 = swift_getObjectType();
      v49 = *(sub_245F8E624(&qword_27EE3A568, &qword_2460983E0) + 48);
      sub_245FFE868(a1, v6, type metadata accessor for PhotogrammetrySession.Request);
      *&v6[v49] = 0x3FF0000000000000;
      swift_storeEnumTagMultiPayload();
      (*(v47 + 8))(v6, v48, v47);
      swift_unknownObjectRelease();
      v45 = sub_245FFEA30(v6, type metadata accessor for PhotogrammetrySession.Output);
    }

    result = v33(v45);
    if (result)
    {
      v51 = v50;
      v52 = swift_getObjectType();
      v53 = &v6[*(sub_245F8E624(&qword_27EE3A570, &qword_2460983E8) + 48)];
      sub_245FFE868(a1, v6, type metadata accessor for PhotogrammetrySession.Request);
      *v53 = v61;
      v54 = v63;
      v53[8] = v62;
      v53[9] = v54;
      swift_storeEnumTagMultiPayload();
      (*(v51 + 8))(v6, v52, v51);
      swift_unknownObjectRelease();
      return sub_245FFEA30(v6, type metadata accessor for PhotogrammetrySession.Output);
    }

    return result;
  }

  sub_245FFE800(v12, v17, type metadata accessor for PhotogrammetrySession.Request);
  if ((static PhotogrammetrySession.Request.== infix(_:_:)(v17, a1) & 1) == 0)
  {
    v19 = sub_245FFEA30(v17, type metadata accessor for PhotogrammetrySession.Request);
    goto LABEL_10;
  }

  v58 = a1;
  v20 = (*v2 + 464);
  v21 = *v20;
  v22 = (*v20)();
  if (v22)
  {
    v56 = v23;
    v57 = swift_getObjectType();
    v24 = *(sub_245F8E624(&qword_27EE3A568, &qword_2460983E0) + 48);
    sub_245FFE868(v58, v6, type metadata accessor for PhotogrammetrySession.Request);
    *&v6[v24] = 0x3FF0000000000000;
    swift_storeEnumTagMultiPayload();
    (*(v56 + 8))(v6, v57);
    swift_unknownObjectRelease();
    v22 = sub_245FFEA30(v6, type metadata accessor for PhotogrammetrySession.Output);
  }

  if ((v21)(v22))
  {
    v26 = v25;
    v27 = swift_getObjectType();
    v28 = &v6[*(sub_245F8E624(&qword_27EE3A570, &qword_2460983E8) + 48)];
    sub_245FFE868(v58, v6, type metadata accessor for PhotogrammetrySession.Request);
    *v28 = v61;
    v29 = v63;
    v28[8] = v62;
    v28[9] = v29;
    swift_storeEnumTagMultiPayload();
    (*(v26 + 8))(v6, v27, v26);
    swift_unknownObjectRelease();
    sub_245FFEA30(v6, type metadata accessor for PhotogrammetrySession.Output);
  }

  sub_245FFEA30(v17, type metadata accessor for PhotogrammetrySession.Request);
  v30 = v59;
  (*(v14 + 56))(v59, 1, 1, v13);
  swift_beginAccess();
  sub_245F97BAC(v30, v2 + v18, &qword_27EE3A4B8, &unk_246097ED8);
  return swift_endAccess();
}

uint64_t sub_245FECAB0()
{
  v1 = v0;
  v102 = type metadata accessor for PhotogrammetrySession.Output(0);
  v2 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for PhotogrammetrySession.Result(0);
  v4 = *(*(v105 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v105);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v89 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = (&v89 - v11);
  v98 = sub_246091704();
  v13 = *(v98 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v98);
  v97 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PhotogrammetrySession.Request(0);
  v109 = *(v16 - 8);
  v17 = *(v109 + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v110 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v18);
  v22 = &v89 - v21;
  v96 = OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud;
  if (!*(*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud) + 16))
  {
    goto LABEL_32;
  }

  v95 = v1 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform;
  if (*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform + 64))
  {
    goto LABEL_35;
  }

  v23 = OBJC_IVAR____TtC6CoreOC9PGManager_posesBySample;
  result = swift_beginAccess();
  v94 = v23;
  if (!*(*(v1 + v23) + 16))
  {
    goto LABEL_33;
  }

  v24 = OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests;
  swift_beginAccess();
  v25 = *(v1 + v24);
  v108 = *(v25 + 16);
  if (!v108)
  {
LABEL_27:
    *(v1 + v24) = MEMORY[0x277D84F90];
  }

  v89 = v24;
  v103 = v10;
  v26 = OBJC_IVAR____TtC6CoreOC9PGManager_lensDistortionDataBySample;
  v27 = OBJC_IVAR____TtC6CoreOC9PGManager_intrinsicsBySample;
  v104 = OBJC_IVAR____TtC6CoreOC9PGManager_requestNum;
  v107 = v25 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
  v28 = v25;

  v93 = v26;
  swift_beginAccess();
  v92 = v27;
  result = swift_beginAccess();
  v29 = 0;
  v90 = (v13 + 8);
  v91 = (v13 + 32);
  v99 = v12;
  v100 = v7;
  v106 = v28;
  while (v29 < *(v28 + 16))
  {
    sub_245FFE868(v107 + *(v109 + 72) * v29, v22, type metadata accessor for PhotogrammetrySession.Request);
    v30 = v110;
    sub_245FFE868(v22, v110, type metadata accessor for PhotogrammetrySession.Request);
    v31 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
    v32 = (*(*(v31 - 8) + 48))(v30, 3, v31);
    if (v32 > 1)
    {
      if (v32 == 2)
      {
        result = sub_245FEC2F4(v22);
        if (*(v95 + 64))
        {
          goto LABEL_34;
        }

        v43 = *(v95 + 16);
        v42 = *(v95 + 32);
        v44 = *(v95 + 48);
        v45 = *(v95 + 56);
        v46 = v103;
        *v103 = *v95;
        *(v46 + 16) = v43;
        *(v46 + 32) = v42;
        *(v46 + 48) = v44;
        *(v46 + 56) = v45;
        v47 = swift_storeEnumTagMultiPayload();
        result = (*(*v1 + 464))(v47);
        if (result)
        {
          v49 = v48;
          ObjectType = swift_getObjectType();
          v51 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
          v52 = v101;
          sub_245FFE868(v22, v101, type metadata accessor for PhotogrammetrySession.Request);
          v53 = v52 + v51;
          v7 = v100;
          sub_245FFE868(v46, v53, type metadata accessor for PhotogrammetrySession.Result);
          swift_storeEnumTagMultiPayload();
          v54 = ObjectType;
          v28 = v106;
          (*(v49 + 8))(v52, v54, v49);
          swift_unknownObjectRelease();
          v55 = v52;
          v12 = v99;
          result = sub_245FFEA30(v55, type metadata accessor for PhotogrammetrySession.Output);
        }

        v56 = *(v1 + v104);
        v57 = __OFSUB__(v56, 1);
        v58 = v56 - 1;
        if (v57)
        {
          goto LABEL_31;
        }

        *(v1 + v104) = v58;
        sub_245FE2E78();
        v59 = v103;
      }

      else
      {
        sub_245FEC2F4(v22);
        v72 = *(v1 + v93);

        v74 = sub_245FEC06C(v73);

        v75._rawValue = *(v1 + v94);
        v76._rawValue = *(v1 + v92);

        PhotogrammetrySession.Poses.init(posesBySample:intrinsicsBySample:lensDistortionDataBySample:)(v75, v76, v74);
        v77 = v114;
        *v7 = v113;
        *(v7 + 2) = v77;
        v78 = swift_storeEnumTagMultiPayload();
        result = (*(*v1 + 464))(v78);
        if (result)
        {
          v80 = v79;
          v81 = swift_getObjectType();
          v82 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
          v83 = v101;
          sub_245FFE868(v22, v101, type metadata accessor for PhotogrammetrySession.Request);
          v84 = v83 + v82;
          v7 = v100;
          sub_245FFE868(v100, v84, type metadata accessor for PhotogrammetrySession.Result);
          swift_storeEnumTagMultiPayload();
          (*(v80 + 8))(v83, v81, v80);
          swift_unknownObjectRelease();
          v85 = v83;
          v12 = v99;
          result = sub_245FFEA30(v85, type metadata accessor for PhotogrammetrySession.Output);
        }

        v86 = *(v1 + v104);
        v57 = __OFSUB__(v86, 1);
        v87 = v86 - 1;
        v28 = v106;
        if (v57)
        {
          goto LABEL_30;
        }

        *(v1 + v104) = v87;
        sub_245FE2E78();
        v59 = v7;
      }
    }

    else
    {
      if (!v32)
      {
        v33 = *(v110 + *(v31 + 48));
        v34 = v110 + *(v31 + 64);
        v35 = *(v34 + 112);
        v111[6] = *(v34 + 96);
        v111[7] = v35;
        v112 = *(v34 + 128);
        v36 = *(v34 + 48);
        v111[2] = *(v34 + 32);
        v111[3] = v36;
        v37 = *(v34 + 80);
        v111[4] = *(v34 + 64);
        v111[5] = v37;
        v38 = *(v34 + 16);
        v111[0] = *v34;
        v111[1] = v38;
        v40 = v97;
        v39 = v98;
        (*v91)(v97);
        LOBYTE(v113) = v33;
        v28 = v106;
        sub_245FEA360(v22, v41, &v113, v111);
        (*v90)(v40, v39);
        goto LABEL_7;
      }

      sub_245FEC2F4(v22);
      v60 = *(v1 + v96);

      _s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackV8rawValueAGSi_tcfC_0(v61, &v113);
      *v12 = v113;
      v62 = swift_storeEnumTagMultiPayload();
      result = (*(*v1 + 464))(v62);
      if (result)
      {
        v64 = v63;
        v65 = swift_getObjectType();
        v66 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
        v67 = v101;
        sub_245FFE868(v22, v101, type metadata accessor for PhotogrammetrySession.Request);
        v68 = v67 + v66;
        v7 = v100;
        sub_245FFE868(v12, v68, type metadata accessor for PhotogrammetrySession.Result);
        swift_storeEnumTagMultiPayload();
        v69 = v65;
        v28 = v106;
        (*(v64 + 8))(v67, v69, v64);
        swift_unknownObjectRelease();
        result = sub_245FFEA30(v67, type metadata accessor for PhotogrammetrySession.Output);
      }

      v70 = *(v1 + v104);
      v57 = __OFSUB__(v70, 1);
      v71 = v70 - 1;
      if (v57)
      {
        goto LABEL_29;
      }

      *(v1 + v104) = v71;
      sub_245FE2E78();
      v59 = v12;
    }

    sub_245FFEA30(v59, type metadata accessor for PhotogrammetrySession.Result);
LABEL_7:
    result = sub_245FFEA30(v22, type metadata accessor for PhotogrammetrySession.Request);
    if (v108 == ++v29)
    {

      v24 = v89;
      v88 = *(v1 + v89);
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_245FED478()
{
  v114 = type metadata accessor for PhotogrammetrySession.Output(0);
  v1 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v113 = &v103 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PhotogrammetrySession.Request(0);
  v109 = *(v3 - 8);
  v4 = *(v109 + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v106 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v103 - v8;
  MEMORY[0x28223BE20](v7);
  v108 = &v103 - v10;
  v11 = sub_245F8E624(&qword_27EE3A538, &qword_2460983A8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v103 - v16);
  v18 = OBJC_IVAR____TtC6CoreOC9PGManager_requestByCPGRequest;
  swift_beginAccess();
  v103 = v18;
  v19 = *(v0 + v18);
  v22 = *(v19 + 64);
  v21 = v19 + 64;
  v20 = v22;
  v23 = 1 << *(*(v0 + v18) + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v110 = *(v0 + v18);
  v111 = OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameCPGRequest;
  v117 = OBJC_IVAR____TtC6CoreOC9PGManager_requestNum;
  v107 = OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled;
  v105 = OBJC_IVAR____TtC6CoreOC9PGManager_isProcessCancelled;
  v26 = (v23 + 63) >> 6;

  v28 = 0;
  v118 = v0;
  v115 = v15;
  v116 = v17;
  v112 = v9;
  v104 = v21;
  while (2)
  {
    if (v25)
    {
      v29 = v28;
      goto LABEL_16;
    }

    if (v26 <= v28 + 1)
    {
      v30 = v28 + 1;
    }

    else
    {
      v30 = v26;
    }

    v31 = v30 - 1;
    do
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return result;
      }

      if (v29 >= v26)
      {
        v65 = sub_245F8E624(&qword_27EE3A540, &unk_2460983B0);
        (*(*(v65 - 8) + 56))(v15, 1, 1, v65);
        v25 = 0;
        v28 = v31;
        goto LABEL_17;
      }

      v25 = *(v21 + 8 * v29);
      ++v28;
    }

    while (!v25);
    v28 = v29;
LABEL_16:
    v32 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v33 = v32 | (v29 << 6);
    v34 = *(*(v110 + 48) + 8 * v33);
    v35 = v108;
    sub_245FFE868(*(v110 + 56) + *(v109 + 72) * v33, v108, type metadata accessor for PhotogrammetrySession.Request);
    v36 = sub_245F8E624(&qword_27EE3A540, &unk_2460983B0);
    v37 = *(v36 + 48);
    v38 = v115;
    *v115 = v34;
    v39 = v35;
    v15 = v38;
    sub_245FFE800(v39, &v38[v37], type metadata accessor for PhotogrammetrySession.Request);
    (*(*(v36 - 8) + 56))(v15, 0, 1, v36);
    v17 = v116;
LABEL_17:
    sub_245FC5914(v15, v17, &qword_27EE3A538, &qword_2460983A8);
    v40 = sub_245F8E624(&qword_27EE3A540, &unk_2460983B0);
    if ((*(*(v40 - 8) + 48))(v17, 1, v40) != 1)
    {
      v41 = v17;
      v42 = *v17;
      v43 = sub_245FFE800(v41 + *(v40 + 48), v9, type metadata accessor for PhotogrammetrySession.Request);
      v44 = *(v118 + v111);
      if (v44)
      {
        if (v42 == v44)
        {
          if (!sub_245FC9F0C(v9) || (v43 = sub_245FCA01C(v9), (v43 & 1) != 0))
          {
            result = sub_245FFEA30(v9, type metadata accessor for PhotogrammetrySession.Request);
            goto LABEL_5;
          }
        }
      }

      v45 = (*v118 + 464);
      v46 = *v45;
      result = (*v45)(v43);
      if (result)
      {
        v48 = v47;
        ObjectType = swift_getObjectType();
        v50 = sub_245F8E624(&qword_27EE3A548, &unk_246098FB0);
        v51 = v113;
        v52 = v113 + *(v50 + 48);
        sub_245FFE868(v112, v113, type metadata accessor for PhotogrammetrySession.Request);
        *v52 = 5;
        *(v52 + 8) = 1;
        swift_storeEnumTagMultiPayload();
        (*(v48 + 8))(v51, ObjectType, v48);
        swift_unknownObjectRelease();
        v21 = v104;
        result = sub_245FFEA30(v51, type metadata accessor for PhotogrammetrySession.Output);
      }

      v53 = *(v118 + v117);
      v54 = __OFSUB__(v53, 1);
      v55 = v53 - 1;
      if (v54)
      {
        goto LABEL_58;
      }

      *(v118 + v117) = v55;
      if (v55 < 0)
      {
        goto LABEL_59;
      }

      if (v55)
      {
        v9 = v112;
        result = sub_245FFEA30(v112, type metadata accessor for PhotogrammetrySession.Request);
        v15 = v115;
LABEL_5:
        v17 = v116;
      }

      else
      {
        v56 = *(v118 + v107);

        sub_2460900AC();

        v17 = v116;
        if ((v120[0] & 1) != 0 || *(v118 + v105) == 1)
        {
          if (v46(v57))
          {
            v59 = v58;
            v60 = swift_getObjectType();
            v61 = v113;
            swift_storeEnumTagMultiPayload();
            v62 = v60;
            v17 = v116;
            (*(v59 + 8))(v61, v62, v59);
            swift_unknownObjectRelease();
            sub_245FFEA30(v61, type metadata accessor for PhotogrammetrySession.Output);
          }

          v63 = v118;
          v64 = *(v118 + v107);
          v120[0] = 0;

          sub_2460901B8(v120);

          v9 = v112;
          result = sub_245FFEA30(v112, type metadata accessor for PhotogrammetrySession.Request);
          *(v63 + v105) = 0;
          v15 = v115;
        }

        else
        {
          if (v46(v57))
          {
            v67 = v66;
            v68 = swift_getObjectType();
            v69 = v113;
            swift_storeEnumTagMultiPayload();
            v70 = v68;
            v17 = v116;
            (*(v67 + 8))(v69, v70, v67);
            swift_unknownObjectRelease();
            sub_245FFEA30(v69, type metadata accessor for PhotogrammetrySession.Output);
          }

          v9 = v112;
          result = sub_245FFEA30(v112, type metadata accessor for PhotogrammetrySession.Request);
          v15 = v115;
        }
      }

      continue;
    }

    break;
  }

  v71 = OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests;
  v72 = v118;
  swift_beginAccess();
  v73 = *(v72 + v71);
  v74 = *(v73 + 16);
  if (v74)
  {
    v115 = v71;
    v75 = *(*v118 + 464);
    v76 = v109;
    v77 = v73 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v112 = v73;

    v116 = *(v76 + 72);
    v78 = v106;
    while (1)
    {
      v79 = sub_245FFE868(v77, v78, type metadata accessor for PhotogrammetrySession.Request);
      result = v75(v79);
      if (result)
      {
        v81 = v80;
        v82 = swift_getObjectType();
        v83 = sub_245F8E624(&qword_27EE3A548, &unk_246098FB0);
        v84 = v113;
        v85 = v113 + *(v83 + 48);
        sub_245FFE868(v78, v113, type metadata accessor for PhotogrammetrySession.Request);
        *v85 = 5;
        *(v85 + 8) = 1;
        swift_storeEnumTagMultiPayload();
        (*(v81 + 8))(v84, v82, v81);
        swift_unknownObjectRelease();
        result = sub_245FFEA30(v84, type metadata accessor for PhotogrammetrySession.Output);
      }

      v86 = *(v118 + v117);
      v54 = __OFSUB__(v86, 1);
      v87 = v86 - 1;
      if (v54)
      {
        goto LABEL_56;
      }

      *(v118 + v117) = v87;
      if (v87 < 0)
      {
        goto LABEL_57;
      }

      if (!v87)
      {
        v88 = *(v118 + v107);

        sub_2460900AC();

        if ((v119 & 1) != 0 || *(v118 + v105) == 1)
        {
          if (v75(v89))
          {
            v91 = v90;
            v92 = swift_getObjectType();
            v93 = v113;
            swift_storeEnumTagMultiPayload();
            (*(v91 + 8))(v93, v92, v91);
            swift_unknownObjectRelease();
            sub_245FFEA30(v93, type metadata accessor for PhotogrammetrySession.Output);
          }

          v94 = v118;
          v95 = *(v118 + v107);
          v119 = 0;

          sub_2460901B8(&v119);

          v78 = v106;
          sub_245FFEA30(v106, type metadata accessor for PhotogrammetrySession.Request);
          *(v94 + v105) = 0;
          goto LABEL_40;
        }

        if (v75(v89))
        {
          v97 = v96;
          v98 = swift_getObjectType();
          v99 = v113;
          swift_storeEnumTagMultiPayload();
          (*(v97 + 8))(v99, v98, v97);
          swift_unknownObjectRelease();
          sub_245FFEA30(v99, type metadata accessor for PhotogrammetrySession.Output);
        }
      }

      v78 = v106;
      sub_245FFEA30(v106, type metadata accessor for PhotogrammetrySession.Request);
LABEL_40:
      v77 += v116;
      if (!--v74)
      {

        v71 = v115;
        v100 = *&v115[v118];
        break;
      }
    }
  }

  v101 = v118;
  *(v118 + v71) = MEMORY[0x277D84F90];

  v102 = *(v101 + v103);
  *(v101 + v103) = MEMORY[0x277D84F98];
}

uint64_t sub_245FEDFE8()
{
  v1 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    CPGSessionRelease();
  }

  if (*(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleCallbackBundle))
  {
    CPGAddSampleCallbackBundleRelease();
  }

  if (*(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_processingCallbackBundle))
  {
    CPGProcessingCallbackBundleRelease();
  }

  if (*(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_finalizeInputCallbackBundle))
  {
    CPGFinalizeInputCallbackBundleRelease();
  }

  if (*(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap))
  {
    CPGSfmMapRelease();
  }

  result = *(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 16);
  if (result)
  {
    return CPGOutputModelOptionsRelease();
  }

  return result;
}

id sub_245FEE09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v291 = a1;
  v296 = *MEMORY[0x277D85DE8];
  v6 = sub_245F8E624(&qword_27EE3A508, &unk_246098368);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v258 - v8);
  v10 = sub_246091704();
  v11 = *(v10 - 8);
  v288 = v10;
  v289 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v258 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v278 = &v258 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v275 = &v258 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v282 = (&v258 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v280 = &v258 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v284 = (&v258 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v272 = &v258 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v273 = &v258 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v286 = &v258 - v31;
  MEMORY[0x28223BE20](v30);
  v290 = &v258 - v32;
  v33 = sub_2460918F4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v277 = &v258 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = (&v258 - v39);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v258 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v283 = (&v258 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v276 = &v258 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v279 = &v258 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v274 = &v258 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v281 = &v258 - v53;
  MEMORY[0x28223BE20](v52);
  v55 = &v258 - v54;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v64 = sub_245FA31EC();
    (*(v34 + 16))(v55, v64, v33);
    v65 = sub_2460918D4();
    v66 = sub_246091FB4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v294 = v68;
      *v67 = 136380675;
      *(v67 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A0BA0, &v294);
      _os_log_impl(&dword_245F8A000, v65, v66, "Backend Manager.%{private}s failed to capture the instance!", v67, 0xCu);
      sub_245F8E6F4(v68);
      MEMORY[0x24C1989D0](v68, -1, -1);
      MEMORY[0x24C1989D0](v67, -1, -1);
    }

    (*(v34 + 8))(v55, v33);
    goto LABEL_86;
  }

  v57 = Strong;
  v287 = v33;
  v285 = v34;
  if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
  {
    v58 = sub_245FA31EC();
    v59 = v285;
    v60 = v287;
    (*(v285 + 16))(v43, v58, v287);
    v61 = sub_2460918D4();
    v62 = sub_246091FB4();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_245F8A000, v61, v62, "Can't copy to URL. Backend manager is closed.", v63, 2u);
      MEMORY[0x24C1989D0](v63, -1, -1);
    }

    else
    {
    }

    (*(v59 + 8))(v43, v60);
    goto LABEL_86;
  }

  v69 = swift_allocObject();
  *(v69 + 16) = 1;
  v70 = sub_246091614();
  v71 = sub_246091654();
  v271 = v57;
  if ((v71 & 1) == 0)
  {
    if (*(v70 + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v72 = *(v70 + 16);
        if (v72)
        {
LABEL_12:
          v73 = v72 - 1;
          v74 = *(v70 + 16 * v73 + 40);
          *(v70 + 16) = v73;

          goto LABEL_13;
        }

LABEL_96:
        __break(1u);
        goto LABEL_97;
      }
    }

    else
    {
      __break(1u);
    }

    v70 = sub_245FFBC54(v70);
    v72 = *(v70 + 16);
    if (v72)
    {
      goto LABEL_12;
    }

    goto LABEL_96;
  }

LABEL_13:
  v269 = a3;
  v270 = a4;
  v75 = objc_opt_self();
  v268 = v70;
  v76 = sub_246091DB4();
  v77 = [v75 pathWithComponents_];

  v78 = v77;
  if (!v77)
  {
    sub_246091C04();
    v78 = sub_246091BD4();
  }

  sub_246091C04();
  sub_246091644();
  v79 = objc_opt_self();
  v80 = [v79 defaultManager];
  v81 = [v80 fileExistsAtPath_];

  if ((v81 & 1) == 0)
  {
    v82 = [v79 defaultManager];
    v83 = v290;
    v84 = sub_246091674();
    v294 = 0;
    v85 = [v82 createDirectoryAtURL:v84 withIntermediateDirectories:1 attributes:0 error:&v294];

    if (!v85)
    {
      v265 = v69;
      v110 = v294;

      v111 = sub_2460915D4();

      swift_willThrow();
      v112 = sub_245FA31EC();
      v113 = v285;
      (*(v285 + 16))(v40, v112, v287);
      v115 = v288;
      v114 = v289;
      (*(v289 + 16))(v15, v83, v288);
      v116 = sub_2460918D4();
      v117 = sub_246091FB4();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v284 = swift_slowAlloc();
        v294 = v284;
        *v118 = 141558275;
        *(v118 + 4) = 1752392040;
        *(v118 + 12) = 2081;
        v119 = sub_2460916F4();
        v286 = v111;
        v120 = v114;
        v122 = v121;
        v123 = *(v120 + 8);
        v123(v15, v115);
        v124 = sub_245F8D3C0(v119, v122, &v294);

        *(v118 + 14) = v124;
        _os_log_impl(&dword_245F8A000, v116, v117, "Failed to create directory = %{private,mask.hash}s", v118, 0x16u);
        v125 = v284;
        sub_245F8E6F4(v284);
        MEMORY[0x24C1989D0](v125, -1, -1);
        MEMORY[0x24C1989D0](v118, -1, -1);

        (*(v113 + 8))(v40, v287);
        v123(v290, v288);
      }

      else
      {

        v137 = *(v114 + 8);
        v137(v15, v115);
        (*(v113 + 8))(v40, v287);
        v137(v83, v115);
      }

      v138 = v269;
      v139 = v265;
      *(v265 + 16) = 0;
      sub_245FF02E8(v271, v139, v138, v270);

      goto LABEL_85;
    }

    v86 = v294;
  }

  v87 = v271;
  v88 = (v271 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration);
  sub_245FC8730(*(v271 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 25), v9);
  v89 = sub_245F8E624(&qword_27EE3A468, &unk_246097A90);
  if ((*(*(v89 - 8) + 48))(v9, 1, v89) == 1)
  {
    (*(v289 + 8))(v290, v288);

    sub_245F8E744(v9, &qword_27EE3A508, &unk_246098368);
    *(v69 + 16) = 0;
LABEL_20:
    v90 = v87;
    v91 = v69;
    v92 = v269;
LABEL_83:
    v212 = v270;
LABEL_84:
    sub_245FF02E8(v90, v91, v92, v212);

LABEL_85:

LABEL_86:
    result = CPGOutputRelease();
    v221 = *MEMORY[0x277D85DE8];
    return result;
  }

  v262 = v88;
  v93 = *v9;
  v94 = *(v9 + *(v89 + 64));
  v95 = *(v289 + 32);
  v96 = v9 + *(v89 + 48);
  v267 = v289 + 32;
  v266 = v95;
  v95(v286, v96, v288);
  v263 = v93;
  v97 = [v93 rootNode];
  result = [objc_msgSend(v97 subtreeIterator)];
  v264 = result;
  if (result)
  {

    swift_unknownObjectRelease();
    v99 = sub_246091BD4();
    v100 = sub_246091BD4();
    type metadata accessor for PGManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v102 = objc_opt_self();
    v103 = [v102 bundleForClass_];
    v104 = [v103 infoDictionary];

    v258 = v97;
    v259 = v94;
    v261 = v99;
    v260 = v100;
    if (v104)
    {
      v105 = sub_246091B64();

      if (*(v105 + 16) && (v106 = sub_245F8D968(0x656C646E75424643, 0xEF6E6F6973726556), (v107 & 1) != 0))
      {
        sub_245F8E5C8(*(v105 + 56) + 32 * v106, &v294);

        if (swift_dynamicCast())
        {
          v108 = v292;
          v109 = v293;
LABEL_33:
          v126 = OCGitHash()();
          v294 = v108;
          v295 = v109;

          MEMORY[0x24C196640](46, 0xE100000000000000);

          MEMORY[0x24C196640](v126._countAndFlagsBits, v126._object);

          v128 = v294;
          v127 = v295;
          v129 = sub_246091BD4();
          v130 = [v102 bundleWithIdentifier_];

          v265 = v69;
          if (v130)
          {
            v131 = [v130 infoDictionary];

            if (v131)
            {
              v132 = sub_246091B64();

              if (*(v132 + 16) && (v133 = sub_245F8D968(0x656C646E75424643, 0xEF6E6F6973726556), (v134 & 1) != 0))
              {
                sub_245F8E5C8(*(v132 + 56) + 32 * v133, &v294);

                if (swift_dynamicCast())
                {
                  v136 = v292;
                  v135 = v293;
LABEL_43:
                  v294 = 0xD00000000000001BLL;
                  v295 = 0x80000002460A0D60;
                  MEMORY[0x24C196640](v128, v127);

                  MEMORY[0x24C196640](8254, 0xE200000000000000);

                  MEMORY[0x24C196640](60, 0xE100000000000000);

                  MEMORY[0x24C196640](v136, v135);

                  MEMORY[0x24C196640](62, 0xE100000000000000);

                  v140 = objc_allocWithZone(MEMORY[0x277D77878]);
                  v141 = sub_246091BD4();

                  v40 = &off_278E99000;
                  v142 = [v140 initWithString_];

                  v143 = v264;
                  v144 = v261;
                  v145 = v260;
                  [v264 setDictionaryMetadataWithKey:v261 dictionaryKey:v260 value:v142];

                  v146 = sub_246091BD4();
                  v147 = sub_246091BD4();
                  v148 = v262;
                  if (v262[25])
                  {
                    v149 = 256;
                  }

                  else
                  {
                    v149 = 0;
                  }

                  sub_245FD02E8(v270, *v262 | (*(v262 + 1) << 32), *(v262 + 2), *(v262 + 2), v149 | v262[24]);
                  v150 = objc_allocWithZone(MEMORY[0x277D77878]);
                  v151 = sub_246091BD4();

                  v152 = [v150 initWithString_];

                  [v143 setDictionaryMetadataWithKey:v146 dictionaryKey:v147 value:v152];
                  v153 = v263;
                  [v263 save];
                  a3 = v269;
                  if (sub_246091654())
                  {
                    v9 = v288;
                    v154 = v285;
                    if (v148[25] == 1)
                    {
                      QuadMeshObjAssetsURLs = CPGOutputGetQuadMeshObjAssetsURLs();
                    }

                    else
                    {
                      QuadMeshObjAssetsURLs = CPGOutputGetObjAssetsURLs();
                    }

                    v183 = v289;
                    v184 = v281;
                    v185 = v265;
                    if (QuadMeshObjAssetsURLs)
                    {
                      a3 = v154;
                      v40 = v289;
                      v186 = v265;
                      v187 = QuadMeshObjAssetsURLs;
                      objc_opt_self();
                      if (swift_dynamicCastObjCClass())
                      {
                        v294 = 0;
                        type metadata accessor for CFURL();
                        v188 = v187;
                        sub_246091DC4();
                        v284 = v188;

                        v57 = v294;
                        if (v294)
                        {
                          v69 = v186;
                          if (!(v294 >> 62))
                          {
                            v189 = *((v294 & 0xFFFFFFFFFFFFFF8) + 0x10);
                            v190 = v40;
                            if (v189)
                            {
LABEL_63:
                              v294 = MEMORY[0x277D84F90];
                              sub_245FAC7A8(0, v189 & ~(v189 >> 63), 0);
                              if (v189 < 0)
                              {
                                __break(1u);
                              }

                              v191 = 0;
                              v192 = v294;
                              v193 = v273;
                              do
                              {
                                if ((v57 & 0xC000000000000001) != 0)
                                {
                                  v194 = MEMORY[0x24C196C20](v191, v57);
                                }

                                else
                                {
                                  v194 = *(v57 + 8 * v191 + 32);
                                }

                                v195 = v194;
                                sub_2460916D4();

                                v294 = v192;
                                v197 = *(v192 + 2);
                                v196 = *(v192 + 3);
                                if (v197 >= v196 >> 1)
                                {
                                  sub_245FAC7A8(v196 > 1, v197 + 1, 1);
                                  v192 = v294;
                                }

                                ++v191;
                                *(v192 + 2) = v197 + 1;
                                v266(&v192[((*(v289 + 80) + 32) & ~*(v289 + 80)) + *(v289 + 72) * v197], v193, v9);
                              }

                              while (v189 != v191);

                              v238 = v269;
                              v239 = v285;
                              v190 = v289;
                              goto LABEL_100;
                            }

LABEL_99:
                            v239 = a3;

                            v192 = MEMORY[0x277D84F90];
                            v238 = v269;
LABEL_100:
                            v241 = sub_245FFDE2C(v192);

                            v242 = sub_245FFDE2C(v259);

                            v243 = sub_245FF0760(v242, v241);
                            MEMORY[0x28223BE20](v243);
                            *(&v258 - 2) = v238;
                            sub_245FF0BEC(sub_245FFECB4, (&v258 - 4), v243);

                            v244 = sub_245FA31EC();
                            (*(v239 + 16))(v274, v244, v287);
                            v245 = v272;
                            (v190[2])(v272, v238, v9);
                            v246 = sub_2460918D4();
                            v247 = sub_246091FC4();
                            if (os_log_type_enabled(v246, v247))
                            {
                              v248 = v245;
                              v249 = swift_slowAlloc();
                              v250 = swift_slowAlloc();
                              v294 = v250;
                              *v249 = 141558275;
                              *(v249 + 4) = 1752392040;
                              *(v249 + 12) = 2081;
                              v251 = sub_2460916F4();
                              v253 = v252;
                              v254 = v190[1];
                              (v254)(v248, v9);
                              v255 = sub_245F8D3C0(v251, v253, &v294);

                              *(v249 + 14) = v255;
                              _os_log_impl(&dword_245F8A000, v246, v247, "Save OBJ+USDA assets to directory = %{private,mask.hash}s", v249, 0x16u);
                              sub_245F8E6F4(v250);
                              v256 = v250;
                              v69 = v265;
                              MEMORY[0x24C1989D0](v256, -1, -1);
                              MEMORY[0x24C1989D0](v249, -1, -1);

                              (*(v285 + 8))(v274, v287);
                              (v254)(v286, v9);
                              (v254)(v290, v9);
                            }

                            else
                            {

                              v257 = v190[1];
                              (v257)(v245, v9);
                              (*(v239 + 8))(v274, v287);
                              (v257)(v286, v9);
                              (v257)(v290, v9);
                            }

LABEL_91:
                            v87 = v271;
                            goto LABEL_20;
                          }

LABEL_98:
                          v189 = sub_246092354();
                          v190 = v40;
                          if (v189)
                          {
                            goto LABEL_63;
                          }

                          goto LABEL_99;
                        }
                      }

                      else
                      {
                        v284 = v187;
                      }

                      v185 = v186;
                      v183 = v40;
                      v154 = a3;
                      a3 = v269;
                    }

                    else
                    {
                      v284 = 0;
                    }

                    v214 = sub_245FA31EC();
                    (*(v154 + 16))(v184, v214, v287);
                    v215 = sub_2460918D4();
                    v216 = sub_246091FB4();
                    if (os_log_type_enabled(v215, v216))
                    {
                      v217 = swift_slowAlloc();
                      *v217 = 0;
                      _os_log_impl(&dword_245F8A000, v215, v216, "Failed to get output OBJ assets!", v217, 2u);
                      v218 = v217;
                      v153 = v263;
                      MEMORY[0x24C1989D0](v218, -1, -1);
                    }

                    (*(v154 + 8))(v184, v287);
                    v219 = v183[1];
                    (v219)(v286, v9);
                    (v219)(v290, v9);
                    *(v185 + 16) = 0;
                    v220 = v271;
LABEL_82:
                    v90 = v220;
                    v91 = v185;
                    v92 = a3;
                    goto LABEL_83;
                  }

                  if (sub_2460915F4() == 2053403509 && v156 == 0xE400000000000000)
                  {

                    v57 = v289;
                    v157 = v283;
                    v69 = v284;
                    v9 = v282;
LABEL_53:
                    v159 = v280;
                    sub_246091684();
                    sub_2460916B4();
                    v160 = *(v57 + 8);
                    v161 = v288;
                    v289 = v57 + 8;
                    v282 = v160;
                    (v160)(v159, v288);
                    v162 = sub_246091674();
                    v163 = [v153 exportToURL_];

                    if (!v163)
                    {
                      v198 = sub_245FA31EC();
                      v199 = v285;
                      (*(v285 + 16))(v157, v198, v287);
                      v200 = v278;
                      (*(v57 + 16))(v278, v69, v161);
                      v201 = sub_2460918D4();
                      v202 = sub_246091FB4();
                      if (os_log_type_enabled(v201, v202))
                      {
                        v203 = swift_slowAlloc();
                        v204 = v200;
                        v205 = swift_slowAlloc();
                        v294 = v205;
                        *v203 = 141558275;
                        *(v203 + 4) = 1752392040;
                        *(v203 + 12) = 2081;
                        v206 = sub_2460916F4();
                        v208 = v207;
                        (v282)(v204, v161);
                        v209 = sub_245F8D3C0(v206, v208, &v294);
                        v210 = v265;

                        *(v203 + 14) = v209;
                        _os_log_impl(&dword_245F8A000, v201, v202, "Failed to compile USDA to USDC = %{private,mask.hash}s", v203, 0x16u);
                        sub_245F8E6F4(v205);
                        MEMORY[0x24C1989D0](v205, -1, -1);
                        MEMORY[0x24C1989D0](v203, -1, -1);

                        (*(v199 + 8))(v283, v287);
                        v211 = v282;
                        (v282)(v284, v161);
                        (v211)(v286, v161);
                        (v211)(v290, v161);
                        v212 = v270;
                      }

                      else
                      {

                        v213 = v282;
                        (v282)(v200, v161);
                        (*(v199 + 8))(v157, v287);
                        (v213)(v69, v161);
                        (v213)(v286, v161);
                        (v213)(v290, v161);
                        v212 = v270;
                        v210 = v265;
                      }

                      *(v210 + 16) = 0;
                      v90 = v271;
                      v91 = v210;
                      v92 = v269;
                      goto LABEL_84;
                    }

                    v164 = objc_allocWithZone(MEMORY[0x277D778A8]);
                    v165 = sub_246091674();
                    v166 = [v164 initSceneFromURL_];

                    v167 = v287;
                    if (v166)
                    {
                      v168 = sub_246091674();
                      [v166 saveAndCreateUSDZPackageWithURL_];

                      v169 = sub_245FA31EC();
                      v170 = v285;
                      (*(v285 + 16))(v279, v169, v167);
                      v171 = v288;
                      (*(v57 + 16))(v9, a3, v288);
                      v172 = sub_2460918D4();
                      v173 = sub_246091FC4();
                      if (os_log_type_enabled(v172, v173))
                      {
                        v174 = v9;
                        v175 = swift_slowAlloc();
                        v283 = swift_slowAlloc();
                        v294 = v283;
                        *v175 = 141558275;
                        *(v175 + 4) = 1752392040;
                        *(v175 + 12) = 2081;
                        v176 = sub_2460916F4();
                        v177 = v170;
                        v179 = v178;
                        v180 = v282;
                        (v282)(v174, v171);
                        v181 = sub_245F8D3C0(v176, v179, &v294);

                        *(v175 + 14) = v181;
                        _os_log_impl(&dword_245F8A000, v172, v173, "Save USD scene to USDZ = %{private,mask.hash}s", v175, 0x16u);
                        v182 = v283;
                        sub_245F8E6F4(v283);
                        MEMORY[0x24C1989D0](v182, -1, -1);
                        MEMORY[0x24C1989D0](v175, -1, -1);

                        (*(v177 + 8))(v279, v287);
                        (v180)(v284, v171);
                        (v180)(v286, v171);
                        (v180)(v290, v171);
                      }

                      else
                      {

                        v237 = v282;
                        (v282)(v9, v171);
                        (*(v170 + 8))(v279, v287);
                        (v237)(v284, v171);
                        (v237)(v286, v171);
                        (v237)(v290, v171);
                      }

                      v69 = v265;
                      goto LABEL_91;
                    }

                    v222 = sub_245FA31EC();
                    v223 = v276;
                    (*(v285 + 16))(v276, v222, v167);
                    v224 = v275;
                    v225 = v288;
                    (*(v57 + 16))(v275, v69, v288);
                    v226 = sub_2460918D4();
                    v227 = sub_246091FB4();
                    if (os_log_type_enabled(v226, v227))
                    {
                      v228 = swift_slowAlloc();
                      v229 = swift_slowAlloc();
                      v294 = v229;
                      *v228 = 141558275;
                      *(v228 + 4) = 1752392040;
                      *(v228 + 12) = 2081;
                      v230 = sub_2460916F4();
                      v232 = v231;
                      v233 = v224;
                      v234 = v282;
                      (v282)(v233, v225);
                      v235 = sub_245F8D3C0(v230, v232, &v294);
                      v185 = v265;

                      *(v228 + 14) = v235;
                      _os_log_impl(&dword_245F8A000, v226, v227, "Failed to load the compiled USDC (%{private,mask.hash}s scene for archival.", v228, 0x16u);
                      sub_245F8E6F4(v229);
                      v236 = v229;
                      a3 = v269;
                      MEMORY[0x24C1989D0](v236, -1, -1);
                      MEMORY[0x24C1989D0](v228, -1, -1);

                      (*(v285 + 8))(v276, v287);
                      (v234)(v284, v225);
                      (v234)(v286, v225);
                      (v234)(v290, v225);
                      v220 = v271;
                    }

                    else
                    {

                      v240 = v282;
                      (v282)(v224, v225);
                      (*(v285 + 8))(v223, v167);
                      (v240)(v69, v225);
                      (v240)(v286, v225);
                      (v240)(v290, v225);
                      v220 = v271;
                      v185 = v265;
                    }

                    *(v185 + 16) = 0;
                    goto LABEL_82;
                  }

                  v158 = sub_2460923E4();

                  v57 = v289;
                  v157 = v283;
                  v69 = v284;
                  v9 = v282;
                  if (v158)
                  {
                    goto LABEL_53;
                  }

LABEL_97:
                  __break(1u);
                  goto LABEL_98;
                }
              }

              else
              {
              }
            }
          }

          v135 = 0xE300000000000000;
          v136 = 4271950;
          goto LABEL_43;
        }
      }

      else
      {
      }
    }

    v109 = 0xE500000000000000;
    v108 = 0x302E302E30;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_245FF02E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v33 = sub_2460919F4();
  v36 = *(v33 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_246091A64();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PhotogrammetrySession.Request(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_246091704();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
  (*(v16 + 16))(v18, v29, v15);
  sub_245FFE868(v30, v14, type metadata accessor for PhotogrammetrySession.Request);
  v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v20 = (v17 + *(v12 + 80) + v19) & ~*(v12 + 80);
  v21 = swift_allocObject();
  v22 = v31;
  *(v21 + 16) = a1;
  *(v21 + 24) = v22;
  (*(v16 + 32))(v21 + v19, v18, v15);
  sub_245FFE800(v14, v21 + v20, type metadata accessor for PhotogrammetrySession.Request);
  aBlock[4] = sub_245FFEE68;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DF690;
  v23 = _Block_copy(aBlock);
  v24 = v28;

  sub_246091A14();
  v37 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  v26 = v32;
  v25 = v33;
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v10, v26, v23);
  _Block_release(v23);

  (*(v36 + 8))(v26, v25);
  (*(v34 + 8))(v10, v35);
}

uint64_t sub_245FF0760(uint64_t a1, uint64_t a2)
{
  v4 = sub_246091704();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v26 - v11;
  result = MEMORY[0x28223BE20](v10);
  v15 = v26 - v14;
  v16 = 0;
  v27 = a1;
  v28 = a2;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v5 + 32;
  v26[3] = v5 + 16;
  v26[1] = v5 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v5 + 16))(v15, *(v27 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
      (*(v5 + 32))(v9, v15, v4);
      sub_245FFA960(v12, v9);
      result = (*(v5 + 8))(v12, v4);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_245FF097C()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = sub_246091704();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_246091664();
  sub_2460916A4();

  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  v6 = sub_246091674();
  v22[0] = 0;
  v7 = [v5 removeItemAtURL:v6 error:v22];

  if (v7)
  {
    v8 = v22[0];
  }

  else
  {
    v9 = v22[0];
    v10 = sub_2460915D4();

    swift_willThrow();
  }

  v11 = [v4 defaultManager];
  v12 = sub_246091674();
  v13 = sub_246091674();
  v22[0] = 0;
  v14 = [v11 copyItemAtURL:v12 toURL:v13 error:v22];

  if (v14)
  {
    v15 = *(v0 + 8);
    v16 = v22[0];
    result = v15(v3, v21);
  }

  else
  {
    v18 = v22[0];
    sub_2460915D4();

    swift_willThrow();
    result = (*(v0 + 8))(v3, v21);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245FF0BEC(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v21 = sub_246091704();
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v21);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v18 = v5 + 16;
  v20 = (v5 + 8);
  v22 = a3;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
      v17 = v21;
LABEL_9:
      (*(v5 + 16))(v8, *(v22 + 48) + *(v5 + 72) * (__clz(__rbit64(v12)) | (v16 << 6)), v17);
      v19(v8);
      if (v3)
      {
        break;
      }

      v12 &= v12 - 1;
      result = (*v20)(v8, v17);
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    (*v20)(v8, v17);
  }

  else
  {
LABEL_5:
    v17 = v21;
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
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_245FF0DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_2460919F4();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_246091A64();
  v21 = *(v11 - 8);
  v22 = v11;
  v12 = *(v21 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  CPGAddSampleStreamProcessingOutputRetain();
  v15 = *(v4 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = v16;
  v17[4] = a2;
  aBlock[4] = sub_245FFD650;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DF140;
  v18 = _Block_copy(aBlock);
  v19 = v15;

  sub_246091A14();
  v24 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v14, v10, v18);
  _Block_release(v18);

  (*(v23 + 8))(v10, v7);
  (*(v21 + 8))(v14, v22);
}

uint64_t sub_245FF10F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
    {
      v11 = sub_245FA31EC();
      (*(v5 + 16))(v8, v11, v4);
      v12 = sub_2460918D4();
      v13 = sub_246091FC4();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_245F8A000, v12, v13, "Skip add sample callback. Backend manager is closed.", v14, 2u);
        MEMORY[0x24C1989D0](v14, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v8, v4);
    }

    else
    {
      FlipRecommendation = CPGAddSampleStreamProcessingOutputGetFlipRecommendation();
      if ((*(*v10 + 440))())
      {
        v17 = v16;
        ObjectType = swift_getObjectType();
        (*(v17 + 8))(a3, FlipRecommendation == 1, ObjectType, v17);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return CPGAddSampleStreamProcessingOutputRelease();
}

uint64_t sub_245FF1388(uint64_t a1, uint64_t a2)
{
  v82 = a1;
  v83 = a2;
  v80 = type metadata accessor for PhotogrammetrySession.Output(0);
  v2 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v77 - v6;
  v8 = type metadata accessor for PhotogrammetrySession.Request(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v77 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v77 - v17;
  MEMORY[0x28223BE20](v16);
  v81 = &v77 - v19;
  v20 = sub_2460918F4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v77 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
    {
      v30 = sub_245FA31EC();
      (*(v21 + 16))(v25, v30, v20);
      v31 = sub_2460918D4();
      v32 = sub_246091FB4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_245F8A000, v31, v32, "Skip progress callback. Backend manager is closed.", v33, 2u);
        MEMORY[0x24C1989D0](v33, -1, -1);
      }

      else
      {
      }

      (*(v21 + 8))(v25, v20);
      goto LABEL_18;
    }

    v39 = OBJC_IVAR____TtC6CoreOC9PGManager_requestByCPGRequest;
    swift_beginAccess();
    v40 = *(v29 + v39);
    v41 = v82;
    if (!*(v40 + 16) || (v42 = sub_245FF8528(v82), (v43 & 1) == 0))
    {

      goto LABEL_18;
    }

    sub_245FFE868(*(v40 + 56) + *(v9 + 72) * v42, v18, type metadata accessor for PhotogrammetrySession.Request);
    v44 = v18;
    v45 = v81;
    sub_245FFE800(v44, v81, type metadata accessor for PhotogrammetrySession.Request);
    CPGProgressGetFractionCompleted();
    v47 = v46;
    CPGProgressGetEstimatedRemainingTime();
    v49 = v48;
    ProcessingStep = CPGProgressGetProcessingStep();
    if (ProcessingStep >= 7)
    {
      v51 = 6;
    }

    else
    {
      v51 = 0x5040302010006uLL >> (8 * ProcessingStep);
    }

    v52 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
    swift_beginAccess();
    sub_245F8E7A4(v29 + v52, v7, &qword_27EE3A4B8, &unk_246097ED8);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      v53 = sub_245F8E744(v7, &qword_27EE3A4B8, &unk_246097ED8);
LABEL_26:
      v58 = v79;
LABEL_34:
      v62 = (*v29 + 464);
      v63 = *v62;
      if ((*v62)(v53))
      {
        v65 = v64;
        ObjectType = swift_getObjectType();
        v67 = *(sub_245F8E624(&qword_27EE3A568, &qword_2460983E0) + 48);
        sub_245FFE868(v81, v58, type metadata accessor for PhotogrammetrySession.Request);
        *(v58 + v67) = v47;
        swift_storeEnumTagMultiPayload();
        (*(v65 + 8))(v58, ObjectType, v65);
        swift_unknownObjectRelease();
        sub_245FFEA30(v58, type metadata accessor for PhotogrammetrySession.Output);
      }

      v84 = v51;
      v68 = sub_24602883C(*&v49, 0, &v84, &v85);
      v69 = v85;
      v70 = v86;
      v71 = v87;
      if (v63(v68))
      {
        v73 = v72;
        v74 = swift_getObjectType();
        v75 = v58 + *(sub_245F8E624(&qword_27EE3A570, &qword_2460983E8) + 48);
        v76 = v81;
        sub_245FFE868(v81, v58, type metadata accessor for PhotogrammetrySession.Request);
        *v75 = v69;
        *(v75 + 8) = v70;
        *(v75 + 9) = v71;
        swift_storeEnumTagMultiPayload();
        (*(v73 + 8))(v58, v74, v73);

        swift_unknownObjectRelease();
        sub_245FFEA30(v58, type metadata accessor for PhotogrammetrySession.Output);
      }

      else
      {

        v76 = v81;
      }

      sub_245FFEA30(v76, type metadata accessor for PhotogrammetrySession.Request);
      goto LABEL_18;
    }

    sub_245FFE800(v7, v15, type metadata accessor for PhotogrammetrySession.Request);
    if ((static PhotogrammetrySession.Request.== infix(_:_:)(v15, v45) & 1) == 0)
    {
      v53 = sub_245FFEA30(v15, type metadata accessor for PhotogrammetrySession.Request);
      goto LABEL_26;
    }

    v55 = *(v29 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameCPGRequest);
    if (!v55 || v55 != v41)
    {
      v59 = v78;
      sub_245FFE800(v15, v78, type metadata accessor for PhotogrammetrySession.Request);
      v60 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
      if ((*(*(v60 - 8) + 48))(v59, 3, v60))
      {
        v53 = sub_245FFEA30(v59, type metadata accessor for PhotogrammetrySession.Request);
        v51 = 1;
      }

      else
      {
        v61 = sub_246091704();
        v53 = (*(*(v61 - 8) + 8))(v59, v61);
        v51 = 5;
      }

      v57 = 1.0;
      goto LABEL_33;
    }

    if (sub_245FC9F0C(v45))
    {
      v56 = sub_245FCA01C(v45);
      v53 = sub_245FFEA30(v15, type metadata accessor for PhotogrammetrySession.Request);
      v57 = 1.0;
      if ((v56 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v53 = sub_245FFEA30(v15, type metadata accessor for PhotogrammetrySession.Request);
    }

    v49 = v49 + *(v29 + OBJC_IVAR____TtC6CoreOC9PGManager_modelFileRequestEstimatedTime);
    v57 = 0.9;
LABEL_33:
    v58 = v79;
    v47 = *(v29 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase) + (v47 * (v57 - *(v29 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase)));
    goto LABEL_34;
  }

  v34 = sub_245FA31EC();
  (*(v21 + 16))(v27, v34, v20);
  v35 = sub_2460918D4();
  v36 = sub_246091FB4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v88 = v38;
    *v37 = 136380675;
    *(v37 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x80000002460A0D80, &v88);
    _os_log_impl(&dword_245F8A000, v35, v36, "Backend Manager.%{private}s failed to capture the instance!", v37, 0xCu);
    sub_245F8E6F4(v38);
    MEMORY[0x24C1989D0](v38, -1, -1);
    MEMORY[0x24C1989D0](v37, -1, -1);
  }

  (*(v21 + 8))(v27, v20);
LABEL_18:
  CPGRequestRelease();
  return CPGProgressRelease();
}

uint64_t sub_245FF1D14(uint64_t a1)
{
  v185 = a1;
  v254 = *MEMORY[0x277D85DE8];
  v2 = sub_2460918F4();
  v187 = *(v2 - 8);
  v188 = v2;
  v3 = *(v187 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  *&v186 = v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v159 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v159 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v159 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v159 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v159 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v159 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v159 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v159 - v27;
  v29 = sub_245F8E624(&qword_27EE3A508, &unk_246098368);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  if (*(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap))
  {
    v32 = v189;
    v33 = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 64);
    v240 = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 80);
    v34 = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 112);
    v241 = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 96);
    v242 = v34;
    v35 = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform);
    v236 = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 16);
    v36 = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 48);
    v237 = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 32);
    v238 = v36;
    v239 = v33;
    v243 = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 128);
    v235 = v35;
    v37 = sub_245F97DBC(&v235);
    v38 = v187;
    v39 = v188;
    v40 = v186;
    if (v37 != 1)
    {
      v41 = v32;
      if (!*(*(v32 + OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud) + 16))
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        v151 = v38;

        v152 = sub_245FA31EC();
        v154 = v187;
        v153 = v188;
        v155 = v177.f64[0];
        (*(v187 + 16))(*&v177.f64[0], v152, v188);
        v156 = sub_2460918D4();
        v157 = sub_246091FB4();
        if (os_log_type_enabled(v156, v157))
        {
          v158 = swift_slowAlloc();
          *v158 = 0;
          _os_log_impl(&dword_245F8A000, v156, v157, "Failed to get bounding box in world coordinate.", v158, 2u);
          MEMORY[0x24C1989D0](v158, -1, -1);
        }

        (*(v154 + 8))(COERCE_FLOAT64_T(*&v155), v153);
        CPGSfmWorldTracksRelease();

        goto LABEL_27;
      }

      if ((*(v32 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform + 64) & 1) == 0)
      {
        v42 = OBJC_IVAR____TtC6CoreOC9PGManager_posesBySample;
        swift_beginAccess();
        if (*(*(v41 + v42) + 16))
        {
          v43 = sub_245FA31EC();
          (*(v38 + 16))(COERCE_DOUBLE(*&v40), v43, v39);
          v44 = sub_2460918D4();
          v45 = sub_246091FC4();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&dword_245F8A000, v44, v45, "Base coordinate system built.", v46, 2u);
            MEMORY[0x24C1989D0](v46, -1, -1);
          }

          (*(v38 + 8))(COERCE_DOUBLE(*&v40), v39);
          result = 1;
          goto LABEL_28;
        }

        goto LABEL_73;
      }
    }

LABEL_81:
    __break(1u);
  }

  *&v184.f64[0] = v159 - v31;
  v186 = *&v8;
  v182 = v26;
  *&v183.f64[0] = v11;
  v180 = v23;
  *&v181.f64[0] = v14;
  v178 = OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap;
  *&v179.f64[0] = v17;
  *&v177.f64[0] = v20;
  v48 = v189;
  v49 = v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform;
  v50 = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 112);
  v227[6] = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 96);
  v227[7] = v50;
  v228 = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 128);
  v51 = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 48);
  v227[2] = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 32);
  v227[3] = v51;
  v52 = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 80);
  v227[4] = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 64);
  v227[5] = v52;
  v53 = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform + 16);
  v227[0] = *(v189 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform);
  v227[1] = v53;
  result = sub_245F97DBC(v227);
  v54 = v187;
  if (result == 1)
  {
    v55 = OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud;
    if (*(*(v48 + OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud) + 16))
    {
      __break(1u);
      goto LABEL_78;
    }

    v56 = (v48 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform);
    if (*(v48 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform + 64))
    {
      v57 = OBJC_IVAR____TtC6CoreOC9PGManager_posesBySample;
      swift_beginAccess();
      if (!*(*(v48 + v57) + 16))
      {
        v176 = v55;
        SfmMap = CPGOutputGetSfmMap();
        if (SfmMap)
        {
          v59 = SfmMap;
          v60 = CPGSfmMapCopyAllSampleIDs();
          if (v60)
          {
            v61 = v60;
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v175 = v28;
              v235.f64[0] = 0.0;
              sub_246091DC4();

              if (*&v235.f64[0])
              {
                v62 = *(*&v235.f64[0] + 16);
                if (v62)
                {
                  v186 = v235.f64[0];
                  v174 = v62;
                  v63 = *&v184.f64[0];
                  sub_245FC8730(*(v48 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration + 25), *&v184.f64[0]);
                  v64 = sub_245F8E624(&qword_27EE3A468, &unk_246097A90);
                  if ((*(*(v64 - 8) + 48))(v63, 1, v64) == 1)
                  {

                    sub_245F8E744(v63, &qword_27EE3A508, &unk_246098368);
                  }

                  else
                  {
                    v167 = v56;
                    v73 = *v63;
                    v185 = v59;
                    v74 = *(v64 + 48);
                    v75 = *(v63 + *(v64 + 64));

                    v76 = sub_246091704();
                    v77 = v63 + v74;
                    v38 = v73;
                    v78 = v185;
                    (*(*(v76 - 8) + 8))(v77, v76);
                    sub_245FC9964(v78, v38, v229);
                    v240 = v229[5];
                    v241 = v229[6];
                    v242 = v229[7];
                    v236 = v229[1];
                    v237 = v229[2];
                    v238 = v229[3];
                    v239 = v229[4];
                    v243 = v230;
                    v235 = v229[0];
                    if (sub_245F97DBC(&v235) != 1)
                    {
                      v183 = v235;
                      v184 = v236;
                      v172 = v237;
                      v173 = v238;
                      v170 = v239;
                      v171 = v240;
                      v168 = v241;
                      v169 = v242;
                      v226 = 0;
                      if (!CPGSfmMapCopyTracksInsideBoundingBoxInWorldCoordinate())
                      {
                        v85 = v226;
                        if (v226)
                        {
                          v166 = v57;
                          Count = CPGSfmWorldTracksGetCount();
                          if (Count < 1 || (v87 = Count, (Positions = CPGSfmWorldTracksGetPositions()) == 0) || (v89 = Positions, (Colors = CPGSfmWorldTracksGetColors()) == 0))
                          {
                            v111 = v38;

                            v112 = sub_245FA31EC();
                            v113 = v187;
                            v114 = v188;
                            v115 = v179.f64[0];
                            (*(v187 + 16))(*&v179.f64[0], v112, v188);
                            v116 = sub_2460918D4();
                            v117 = sub_246091FB4();
                            if (os_log_type_enabled(v116, v117))
                            {
                              v118 = swift_slowAlloc();
                              *v118 = 0;
                              _os_log_impl(&dword_245F8A000, v116, v117, "Failed to get positions or colors of world tracks.", v118, 2u);
                              MEMORY[0x24C1989D0](v118, -1, -1);
                            }

                            (*(v113 + 8))(COERCE_FLOAT64_T(*&v115), v114);
                            CPGSfmWorldTracksRelease();

                            goto LABEL_27;
                          }

                          v91 = Colors;
                          v92 = CPGSfmMapCopyBoundingBox();
                          if (v92)
                          {
                            v159[2] = v85;
                            v160 = v38;
                            v159[1] = v92;
                            CPGBoundingBoxGetTransform();
                            v161 = v217;
                            v162 = v218;
                            v163 = v219;
                            v164 = v220;
                            v177 = v222;
                            v165 = v221;
                            v181 = v224;
                            v179 = v223;
                            v217 = v183;
                            v218 = v184;
                            v219 = v172;
                            v220 = v173;
                            v221 = v170;
                            v222 = v171;
                            v223 = v168;
                            v224 = v169;
                            sub_245F97D8C(&v217);
                            v93 = v224;
                            *(v49 + 96) = v223;
                            *(v49 + 112) = v93;
                            *(v49 + 128) = v225;
                            v94 = v220;
                            *(v49 + 32) = v219;
                            *(v49 + 48) = v94;
                            v95 = v222;
                            *(v49 + 64) = v221;
                            *(v49 + 80) = v95;
                            v96 = v218;
                            *v49 = v217;
                            *(v49 + 16) = v96;
                            v204[0] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v183, v161.f64[0]), v172, v161, 1), v170, v162.f64[0]), v168, v162, 1);
                            v204[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v184, v161.f64[0]), v173, v161, 1), v171, v162.f64[0]), v169, v162, 1);
                            v204[2] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v183, v163.f64[0]), v172, v163, 1), v170, v164.f64[0]), v168, v164, 1);
                            v204[3] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v184, v163.f64[0]), v173, v163, 1), v171, v164.f64[0]), v169, v164, 1);
                            v204[4] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v183, v165.f64[0]), v172, v165, 1), v170, v177.f64[0]), v168, v177, 1);
                            v204[5] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v184, v165.f64[0]), v173, v165, 1), v171, v177.f64[0]), v169, v177, 1);
                            v204[6] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v183, v179.f64[0]), v172, v179, 1), v170, v181.f64[0]), v168, v181, 1);
                            v204[7] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v184, v179.f64[0]), v173, v179, 1), v171, v181.f64[0]), v169, v181, 1);
                            *&v97 = sub_2460211BC(v204);
                            v191 = 0;
                            v98 = v167;
                            *v167 = v97;
                            v98[1] = v99;
                            v98[2] = v100;
                            v98[3] = v101;
                            *(v98 + 64) = 0;
                            v102 = MEMORY[0x277D84F90];
                            do
                            {
                              v103 = *(v89 + 16);
                              v104 = vaddq_f64(v169, vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v184, *v89), v173, *v89, 1), v171, v103.n128_f64[0])).f64[0];
                              v103.n128_u64[0] = vcvt_f32_f64(vaddq_f64(v168, vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v183, *v89), v172, *v89, 1), v170, v103.n128_f64[0])));
                              *&v104 = v104;
                              v103.n128_u64[1] = LODWORD(v104);
                              LODWORD(v104) = *v91;
                              v105 = vmovl_u8(*&v104);
                              v105.i16[3] = 255;
                              sub_2460286C4(vuzp1_s8(*v105.i8, v103.n128_u64[0]).u32[0], &v196, v103);
                              v181 = v196;
                              v1.i32[0] = LODWORD(v197.f64[0]);
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                v102 = sub_245FF81A8(0, *(v102 + 2) + 1, 1, v102);
                              }

                              v107 = *(v102 + 2);
                              v106 = *(v102 + 3);
                              if (v107 >= v106 >> 1)
                              {
                                v102 = sub_245FF81A8((v106 > 1), v107 + 1, 1, v102);
                              }

                              v108 = vmovl_u8(v1).u64[0];
                              *(v102 + 2) = v107 + 1;
                              v109 = &v102[32 * v107];
                              *(v109 + 2) = v181;
                              *(v109 + 12) = vuzp1_s8(v108, v108).u32[0];
                              ++v91;
                              v89 += 32;
                              --v87;
                              v110 = v175;
                            }

                            while (v87);
                            v119 = *(v48 + v176);
                            *(v48 + v176) = v102;

                            v120 = OBJC_IVAR____TtC6CoreOC9PGManager_intrinsicsBySample;
                            *&v179.f64[0] = OBJC_IVAR____TtC6CoreOC9PGManager_lensDistortionDataBySample;
                            *&v181.f64[0] = v187 + 16;
                            v187 += 8;
                            v121 = 32;
                            *&v122.f64[0] = 134349056;
                            v177 = v122;
                            v123 = v182;
                            do
                            {
                              v125 = *(*&v186 + v121);
                              if (CPGSfmMapIsSampleRegistered())
                              {
                                v213 = 0;
                                if (CPGSfmMapGetCameraBySampleID() || !v213)
                                {
                                  v126 = sub_245FA31EC();
                                  v127 = v180;
                                  (**&v181.f64[0])(v180, v126, v188);
                                  v128 = sub_2460918D4();
                                  v129 = sub_246091FB4();
                                  if (os_log_type_enabled(v128, v129))
                                  {
                                    v130 = swift_slowAlloc();
                                    *v130 = LODWORD(v177.f64[0]);
                                    *(v130 + 4) = v125;
                                    _os_log_impl(&dword_245F8A000, v128, v129, "Failed to get the camera of sample %{public}llu", v130, 0xCu);
                                    v131 = v130;
                                    v127 = v180;
                                    MEMORY[0x24C1989D0](v131, -1, -1);
                                  }

                                  (*v187)(v127, v188);
                                  v190 = 1;
                                  memset(v251, 0, 64);
                                  v251[64] = 1;
                                  if (v125 < 0)
                                  {
                                    goto LABEL_80;
                                  }

                                  swift_beginAccess();
                                  sub_245FFBAA4(v251, v125, &v233);
                                  swift_endAccess();
                                  memset(v250, 0, 48);
                                  v250[48] = 1;
                                  swift_beginAccess();
                                  sub_245FFB8F8(v250, v125, &v234);
                                  swift_endAccess();
                                  v215 = 0u;
                                  v216 = 0u;
                                  swift_beginAccess();
                                  sub_245FFB794(&v215, v125, &v205);
                                  sub_245F8E744(&v205, &qword_27EE3A510, &qword_246098378);
                                  swift_endAccess();
                                  v123 = v182;
                                  v110 = v175;
                                }

                                else
                                {
                                  v137 = sub_245FA31EC();
                                  (**&v181.f64[0])(v123, v137, v188);
                                  v138 = sub_2460918D4();
                                  v139 = sub_246091FC4();
                                  if (os_log_type_enabled(v138, v139))
                                  {
                                    v140 = swift_slowAlloc();
                                    *v140 = LODWORD(v177.f64[0]);
                                    *(v140 + 4) = v125;
                                    _os_log_impl(&dword_245F8A000, v138, v139, "Populating the camera pose of sample %{public}llu", v140, 0xCu);
                                    MEMORY[0x24C1989D0](v140, -1, -1);
                                  }

                                  v123 = v182;
                                  result = (*v187)(v182, v188);
                                  v141 = v189;
                                  if (v125 < 0)
                                  {
                                    goto LABEL_83;
                                  }

                                  CPGCameraGetTransform();
                                  v196 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v183, v205.f64[0]), v172, v205, 1), v170, v206.f64[0]), v168, v206, 1);
                                  v197 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v184, v205.f64[0]), v173, v205, 1), v171, v206.f64[0]), v169, v206, 1);
                                  v198 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v183, v207.f64[0]), v172, v207, 1), v170, v208.f64[0]), v168, v208, 1);
                                  v199 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v184, v207.f64[0]), v173, v207, 1), v171, v208.f64[0]), v169, v208, 1);
                                  v200 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v183, v209.f64[0]), v172, v209, 1), v170, v210.f64[0]), v168, v210, 1);
                                  v201 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v184, v209.f64[0]), v173, v209, 1), v171, v210.f64[0]), v169, v210, 1);
                                  v202 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v183, v211.f64[0]), v172, v211, 1), v170, v212.f64[0]), v168, v212, 1);
                                  v203 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v184, v211.f64[0]), v173, v211, 1), v171, v212.f64[0]), v169, v212, 1);
                                  *&v142 = sub_2460211BC(&v196);
                                  v214 = 0;
                                  v248[0] = v142;
                                  v248[1] = v143;
                                  v248[2] = v144;
                                  v248[3] = v145;
                                  v249 = 0;
                                  v146 = v166;
                                  swift_beginAccess();
                                  v147 = *(v141 + v146);
                                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                  v215.f64[0] = *(v141 + v146);
                                  *(v141 + v146) = 0x8000000000000000;
                                  sub_245FF9E14(v248, v125, isUniquelyReferenced_nonNull_native);
                                  *(v189 + v146) = v215.f64[0];
                                  swift_endAccess();
                                  CPGCameraGetIntrinsics();
                                  v195[0] = v205;
                                  v195[1] = v206;
                                  v195[2] = v207;
                                  v195[4] = v209;
                                  v195[5] = v210;
                                  v195[3] = v208;
                                  sub_2460211F0(v195, v192);
                                  v244[0] = v192[0];
                                  v244[1] = v192[1];
                                  v245 = v193;
                                  v246 = v194;
                                  v247 = 0;
                                  swift_beginAccess();
                                  v149 = *(v189 + v120);
                                  v150 = swift_isUniquelyReferenced_nonNull_native();
                                  v215.f64[0] = *(v189 + v120);
                                  *(v189 + v120) = 0x8000000000000000;
                                  sub_245FF9CC0(v244, v125, v150);
                                  *(v189 + v120) = v215.f64[0];
                                  swift_endAccess();
                                  sub_245FF31BC(v125, &v215);
                                  if (*&v215.f64[1])
                                  {
                                    *&v206.f64[1] = &type metadata for LensDistortionData;
                                    v205 = v215;
                                  }

                                  else
                                  {
                                    v205 = 0uLL;
                                    v206.f64[0] = 0.0;
                                    *&v206.f64[1] = 1;
                                  }

                                  v110 = v175;
                                  swift_beginAccess();
                                  sub_245FD48C8(&v205, v125);
                                  swift_endAccess();
                                }
                              }

                              else
                              {
                                v132 = sub_245FA31EC();
                                (**&v181.f64[0])(v110, v132, v188);
                                v133 = sub_2460918D4();
                                v134 = sub_246091FB4();
                                if (os_log_type_enabled(v133, v134))
                                {
                                  v135 = swift_slowAlloc();
                                  *v135 = LODWORD(v177.f64[0]);
                                  *(v135 + 4) = v125;
                                  _os_log_impl(&dword_245F8A000, v133, v134, "Sample %{public}llu is not registered.", v135, 0xCu);
                                  v136 = v135;
                                  v110 = v175;
                                  MEMORY[0x24C1989D0](v136, -1, -1);
                                }

                                (*v187)(v110, v188);
                                LOBYTE(v213) = 1;
                                memset(v253, 0, 64);
                                v253[64] = 1;
                                if (v125 < 0)
                                {
                                  goto LABEL_79;
                                }

                                swift_beginAccess();
                                sub_245FFBAA4(v253, v125, &v231);
                                swift_endAccess();
                                memset(v252, 0, 48);
                                v252[48] = 1;
                                swift_beginAccess();
                                sub_245FFB8F8(v252, v125, &v232);
                                swift_endAccess();
                                v215 = 0u;
                                v216 = 0u;
                                swift_beginAccess();
                                sub_245FFB794(&v215, v125, &v205);
                                sub_245F8E744(&v205, &qword_27EE3A510, &qword_246098378);
                                swift_endAccess();
                                v123 = v182;
                              }

                              v121 += 8;
                              --v174;
                              v124 = v189;
                            }

                            while (v174);

                            *(v124 + v178) = v185;
                            CPGSfmMapRetain();
                            CPGBoundingBoxRelease();
                            CPGSfmWorldTracksRelease();

                            result = 1;
                            goto LABEL_28;
                          }

                          goto LABEL_74;
                        }
                      }

                      v80 = v38;

                      v81 = sub_245FA31EC();
                      v66 = v181.f64[0];
                      v67 = v188;
                      (*(v54 + 16))(*&v181.f64[0], v81, v188);
                      v82 = sub_2460918D4();
                      v83 = sub_246091FB4();
                      if (os_log_type_enabled(v82, v83))
                      {
                        v84 = swift_slowAlloc();
                        *v84 = 0;
                        _os_log_impl(&dword_245F8A000, v82, v83, "Failed to copy tracks inside bounding box in world coordinate.", v84, 2u);
                        MEMORY[0x24C1989D0](v84, -1, -1);
                      }

LABEL_26:
                      (*(v54 + 8))(COERCE_FLOAT64_T(*&v66), v67);
LABEL_27:
                      result = 0;
LABEL_28:
                      v72 = *MEMORY[0x277D85DE8];
                      return result;
                    }
                  }

                  v79 = sub_245FA31EC();
                  v66 = v183.f64[0];
                  v67 = v188;
                  (*(v54 + 16))(*&v183.f64[0], v79, v188);
                  v68 = sub_2460918D4();
                  v69 = sub_246091FB4();
                  if (os_log_type_enabled(v68, v69))
                  {
                    v70 = swift_slowAlloc();
                    *v70 = 0;
                    v71 = "Failed to get mesh in world coordinate.";
                    goto LABEL_24;
                  }

                  goto LABEL_25;
                }
              }
            }

            else
            {
            }
          }
        }

        v65 = sub_245FA31EC();
        v66 = v186;
        v67 = v188;
        (*(v54 + 16))(COERCE_DOUBLE(*&v186), v65, v188);
        v68 = sub_2460918D4();
        v69 = sub_246091FB4();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          v71 = "Failed to get sfmMap or the sampleID array is empty.";
LABEL_24:
          _os_log_impl(&dword_245F8A000, v68, v69, v71, v70, 2u);
          MEMORY[0x24C1989D0](v70, -1, -1);
        }

LABEL_25:

        goto LABEL_26;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_245FF31BC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = CPGCameraCopyLensDistortionData();
  if (v9)
  {
    v10 = v9;
    CPGLensDistortionDataGetDistortionCenter();
    v12 = v11;
    LUTLength = CPGLensDistortionDataGetLUTLength();
    v14 = sub_245FB1254(0, LUTLength & ~(LUTLength >> 63), 0, MEMORY[0x277D84F90]);
    LUTData = CPGLensDistortionDataGetLUTData();
    if (LUTLength < 0)
    {
      __break(1u);
    }

    else
    {
      if (LUTLength)
      {
        v16 = *(v14 + 2);
        do
        {
          v17 = *LUTData;
          v18 = *(v14 + 3);
          if (v16 >= v18 >> 1)
          {
            v19 = LUTData;
            v14 = sub_245FB1254((v18 > 1), v16 + 1, 1, v14);
            LUTData = v19;
          }

          *(v14 + 2) = v16 + 1;
          *&v14[4 * v16 + 32] = v17;
          ++LUTData;
          ++v16;
          --LUTLength;
        }

        while (LUTLength);
      }

      LensDistortionData.init(center:radialLookupTable:)(v14, v26, v12);
      v20 = v26[1];
      *a2 = v26[0];
      a2[1] = v20;
      LUTData = v10;
    }

    return MEMORY[0x282153188](LUTData);
  }

  else
  {
    v21 = sub_245FA31EC();
    (*(v5 + 16))(v8, v21, v4);
    v22 = sub_2460918D4();
    v23 = sub_246091FB4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = a1;
      _os_log_impl(&dword_245F8A000, v22, v23, "Lens distortion data is not available for the camera with sampleID = %ld", v24, 0xCu);
      MEMORY[0x24C1989D0](v24, -1, -1);
    }

    result = (*(v5 + 8))(v8, v4);
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t sub_245FF3444(uint64_t a1)
{
  v2 = v1;
  v26 = type metadata accessor for PhotogrammetrySession.Output(0);
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v6 = (v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_245FFDFC8(a1);
  v8 = *(v7 + 16);
  if (v8)
  {
    v25[1] = a1;
    v27 = *(*v2 + 464);
    v9 = 32;
    do
    {
      v10 = *(v7 + v9);
      if (v27())
      {
        v12 = v11;
        v13 = v2;
        ObjectType = swift_getObjectType();
        *v6 = v10;
        swift_storeEnumTagMultiPayload();
        v15 = ObjectType;
        v2 = v13;
        (*(v12 + 8))(v6, v15, v12);
        swift_unknownObjectRelease();
        sub_245FFEA30(v6, type metadata accessor for PhotogrammetrySession.Output);
      }

      v9 += 8;
      --v8;
    }

    while (v8);
  }

  v16 = sub_245FFE618();
  if ((sub_245FCA1BC(v16) & 1) != 0 && (*(*v2 + 464))())
  {
    v18 = v17;
    v19 = swift_getObjectType();
    swift_storeEnumTagMultiPayload();
    (*(v18 + 8))(v6, v19, v18);
    swift_unknownObjectRelease();
    sub_245FFEA30(v6, type metadata accessor for PhotogrammetrySession.Output);
  }

  v20 = sub_245FCACB8(v16);

  if (v20)
  {
    result = (*(*v2 + 464))(result);
    if (result)
    {
      v23 = v22;
      v24 = swift_getObjectType();
      swift_storeEnumTagMultiPayload();
      (*(v23 + 8))(v6, v24, v23);
      swift_unknownObjectRelease();
      return sub_245FFEA30(v6, type metadata accessor for PhotogrammetrySession.Output);
    }
  }

  return result;
}

uint64_t sub_245FF376C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v12 = sub_2460919F4();
  v30 = *(v12 - 8);
  v13 = *(v30 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_246091A64();
  v28 = *(v16 - 8);
  v29 = v16;
  v17 = *(v28 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  CPGRequestRetain();
  a4(a3);
  v20 = *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = v21;
  aBlock[4] = a6;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = v27;
  v23 = _Block_copy(aBlock);
  v24 = v20;

  sub_246091A14();
  v31 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v19, v15, v23);
  _Block_release(v23);

  (*(v30 + 8))(v15, v12);
  (*(v28 + 8))(v19, v29);
}

uint64_t sub_245FF3A7C(uint64_t a1, uint64_t a2)
{
  v190 = a2;
  v191 = a1;
  v209 = *MEMORY[0x277D85DE8];
  v2 = sub_2460919F4();
  v172 = *(v2 - 8);
  v173 = v2;
  v3 = *(v172 + 64);
  MEMORY[0x28223BE20](v2);
  v170 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_246091A64();
  v169 = *(v171 - 8);
  v5 = *(v169 + 64);
  MEMORY[0x28223BE20](v171);
  v168 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_246091A04();
  v165 = *(v167 - 8);
  v7 = *(v165 + 64);
  MEMORY[0x28223BE20](v167);
  v163 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v178 = &v162 - v11;
  v12 = sub_246091704();
  v181 = *(v12 - 8);
  v182 = v12;
  v13 = *(v181 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v166 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v15;
  MEMORY[0x28223BE20](v14);
  v180 = &v162 - v16;
  v183 = type metadata accessor for PhotogrammetrySession.Output(0);
  v17 = *(*(v183 - 1) + 64);
  MEMORY[0x28223BE20](v183);
  v184 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v179 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v185 = &v162 - v23;
  v186 = type metadata accessor for PhotogrammetrySession.Request(0);
  v188 = *(v186 - 8);
  v24 = *(v188 + 64);
  v25 = MEMORY[0x28223BE20](v186);
  v174 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v177 = &v162 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v175 = &v162 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v162 - v31;
  MEMORY[0x28223BE20](v30);
  v189 = &v162 - v33;
  v34 = sub_2460918F4();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v162 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v176 = &v162 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v162 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v162 - v48;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v56 = sub_245FA31EC();
    (*(v35 + 16))(v49, v56, v34);
    v57 = sub_2460918D4();
    v58 = sub_246091FB4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v200 = v60;
      *v59 = 136380675;
      *(v59 + 4) = sub_245F8D3C0(0xD000000000000027, 0x80000002460A0B70, &v200);
      _os_log_impl(&dword_245F8A000, v57, v58, "Backend Manager.%{private}s failed to capture the instance!", v59, 0xCu);
      sub_245F8E6F4(v60);
      MEMORY[0x24C1989D0](v60, -1, -1);
      MEMORY[0x24C1989D0](v59, -1, -1);
    }

    (*(v35 + 8))(v49, v34);
    CPGRequestRelease();
    goto LABEL_70;
  }

  v187 = v35;
  if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
  {
    v51 = sub_245FA31EC();
    v52 = v187;
    (*(v187 + 16))(v39, v51, v34);
    v53 = sub_2460918D4();
    v54 = sub_246091FB4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_245F8A000, v53, v54, "Skip output callback. Backend manager is closed.", v55, 2u);
      MEMORY[0x24C1989D0](v55, -1, -1);
    }

    else
    {
    }

    (*(v52 + 8))(v39, v34);
    CPGRequestRelease();
    goto LABEL_70;
  }

  v61 = OBJC_IVAR____TtC6CoreOC9PGManager_requestByCPGRequest;
  v62 = Strong;
  swift_beginAccess();
  v162 = v62;
  v63 = *(v62 + v61);
  v64 = v190;
  if (!*(v63 + 16) || (v65 = sub_245FF8528(v191), (v66 & 1) == 0))
  {
    v85 = sub_245FA31EC();
    v86 = v187;
    (*(v187 + 16))(v47, v85, v34);
    v87 = sub_2460918D4();
    v88 = sub_246091FB4();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_245F8A000, v87, v88, "Resumed request handling is not implemented.", v89, 2u);
      MEMORY[0x24C1989D0](v89, -1, -1);
    }

    else
    {
    }

    (*(v86 + 8))(v47, v34);
    goto LABEL_69;
  }

  sub_245FFE868(*(v63 + 56) + *(v188 + 72) * v65, v32, type metadata accessor for PhotogrammetrySession.Request);
  sub_245FFE800(v32, v189, type metadata accessor for PhotogrammetrySession.Request);
  if (CPGOutputGetFailure())
  {
    Code = CPGProcessingFailureGetCode();
    v68 = sub_245FA31EC();
    v69 = v187;
    (*(v187 + 16))(v42, v68, v34);
    v70 = sub_2460918D4();
    v71 = sub_246091FB4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 67240192;
      *(v72 + 4) = Code;
      _os_log_impl(&dword_245F8A000, v70, v71, "Output error with code = %{public}d", v72, 8u);
      MEMORY[0x24C1989D0](v72, -1, -1);
    }

    v73 = (*(v69 + 8))(v42, v34);
    v74 = v189;
    if (!*(v162 + OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap))
    {
      sub_245FED478();
      goto LABEL_29;
    }

    if ((*(*v162 + 464))(v73))
    {
      v76 = v75;
      v77 = Code;
      ObjectType = swift_getObjectType();
      v79 = sub_245F8E624(&qword_27EE3A548, &unk_246098FB0);
      v80 = v184;
      v81 = &v184[*(v79 + 48)];
      sub_245FFE868(v74, v184, type metadata accessor for PhotogrammetrySession.Request);
      *v81 = v77;
      v81[8] = 0;
      swift_storeEnumTagMultiPayload();
      (*(v76 + 8))(v80, ObjectType, v76);
      swift_unknownObjectRelease();
      sub_245FFEA30(v80, type metadata accessor for PhotogrammetrySession.Output);
    }

    v82 = *(v162 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v83 = __OFSUB__(v82, 1);
    v84 = v82 - 1;
    if (!v83)
    {
      *(v162 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v84;
      sub_245FE2E78();
LABEL_29:
      v94 = v185;
      (*(v188 + 56))(v185, 1, 1, v186);
      swift_beginAccess();
      sub_245FD4674(v94, v191);
      swift_endAccess();

      v95 = v74;
LABEL_68:
      sub_245FFEA30(v95, type metadata accessor for PhotogrammetrySession.Request);
      goto LABEL_69;
    }

    __break(1u);
    goto LABEL_72;
  }

  v90 = OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameCPGRequest;
  v91 = *(v162 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameCPGRequest);
  if (v91 && v91 == v191)
  {
    v92 = v189;
    if (sub_245FC9F0C(v189))
    {
      v93 = sub_245FCA01C(v92);
    }

    else
    {
      v93 = 1;
    }

    v96 = v162;
    if ((sub_245FF1D14(v64) & 1) == 0)
    {
      sub_245FED478();
      *(v96 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase) = 0;
      v129 = v185;
      (*(v188 + 56))(v185, 1, 1, v186);
      swift_beginAccess();
      sub_245FD4674(v129, v191);
      swift_endAccess();

      sub_245FFEA30(v189, type metadata accessor for PhotogrammetrySession.Request);
LABEL_69:
      CPGRequestRelease();
LABEL_70:
      result = CPGOutputRelease();
      v161 = *MEMORY[0x277D85DE8];
      return result;
    }

    sub_245FECAB0();
    if (v93)
    {
      *(v96 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase) = 1063675494;
    }

    v97 = OBJC_IVAR____TtC6CoreOC9PGManager_isOneTimeOutputEmitted;
    if ((*(v96 + OBJC_IVAR____TtC6CoreOC9PGManager_isOneTimeOutputEmitted) & 1) == 0)
    {
      sub_245FF3444(v64);
      *(v96 + v97) = 1;
    }

    *(v96 + v90) = 0;
    if (v93)
    {
      v98 = v185;
      (*(v188 + 56))(v185, 1, 1, v186);
      swift_beginAccess();
      sub_245FD4674(v98, v191);
      swift_endAccess();

      v95 = v189;
      goto LABEL_68;
    }
  }

  v99 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
  v100 = v162;
  swift_beginAccess();
  v101 = v100 + v99;
  v102 = v179;
  sub_245F8E7A4(v101, v179, &qword_27EE3A4B8, &unk_246097ED8);
  if ((*(v188 + 48))(v102, 1, v186) == 1)
  {
    sub_245F8E744(v102, &qword_27EE3A4B8, &unk_246097ED8);
    v103 = v189;
    v104 = v181;
  }

  else
  {
    v105 = v175;
    sub_245FFE800(v102, v175, type metadata accessor for PhotogrammetrySession.Request);
    v103 = v189;
    v106 = static PhotogrammetrySession.Request.== infix(_:_:)(v105, v189);
    sub_245FFEA30(v105, type metadata accessor for PhotogrammetrySession.Request);
    v104 = v181;
    if (v106)
    {
      v107 = v185;
      (*(v188 + 56))(v185, 1, 1, v186);
      v108 = v162;
      swift_beginAccess();
      sub_245F97BAC(v107, v108 + v99, &qword_27EE3A4B8, &unk_246097ED8);
      swift_endAccess();
      *(v108 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase) = 0;
    }
  }

  v208 = 0;
  if (sub_245FCA01C(v103))
  {
    v208 = v64;
    v109 = v64;
    v110 = v182;
    v111 = v180;
    goto LABEL_54;
  }

  memmove(&v200, (v162 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform), 0x81uLL);
  result = sub_245F97DBC(&v200);
  v110 = v182;
  v111 = v180;
  if (result != 1)
  {
    v192 = v200;
    v193 = v201;
    v194 = v202;
    v195 = v203;
    v196 = v204;
    v197 = v205;
    v198 = v206;
    v199 = v207;
    if (CPGOutputCreateWithTransform())
    {
      v113 = v103;
      v114 = sub_245FA31EC();
      v115 = v187;
      (*(v187 + 16))(v176, v114, v34);
      v116 = sub_2460918D4();
      v117 = sub_246091FB4();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&dword_245F8A000, v116, v117, "Backend Manager: Failed to transform backend output to base coordinate frame", v118, 2u);
        MEMORY[0x24C1989D0](v118, -1, -1);
      }

      v119 = (*(v115 + 8))(v176, v34);
      if ((*(*v162 + 464))(v119))
      {
        v121 = v120;
        v122 = swift_getObjectType();
        v123 = sub_245F8E624(&qword_27EE3A548, &unk_246098FB0);
        v124 = v184;
        v125 = &v184[*(v123 + 48)];
        sub_245FFE868(v113, v184, type metadata accessor for PhotogrammetrySession.Request);
        *v125 = 3;
        v125[8] = 1;
        swift_storeEnumTagMultiPayload();
        (*(v121 + 8))(v124, v122, v121);
        swift_unknownObjectRelease();
        sub_245FFEA30(v124, type metadata accessor for PhotogrammetrySession.Output);
      }

      v126 = *(v162 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
      v83 = __OFSUB__(v126, 1);
      v127 = v126 - 1;
      if (!v83)
      {
        *(v162 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v127;
        sub_245FE2E78();
        v128 = v185;
        (*(v188 + 56))(v185, 1, 1, v186);
        swift_beginAccess();
        sub_245FD4674(v128, v191);
        swift_endAccess();

        v95 = v113;
        goto LABEL_68;
      }

LABEL_74:
      __break(1u);
    }

    v109 = v208;
LABEL_54:
    v131 = v177;
    v130 = v178;
    if (!v109)
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    sub_245FFE868(v103, v177, type metadata accessor for PhotogrammetrySession.Request);
    v132 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
    if ((*(*(v132 - 8) + 48))(v131, 3, v132))
    {
      (*(v104 + 56))(v130, 1, 1, v110);
      sub_245FFEA30(v131, type metadata accessor for PhotogrammetrySession.Request);
    }

    else
    {
      (*(v104 + 32))(v130, v131, v110);
      (*(v104 + 56))(v130, 0, 1, v110);
    }

    if ((*(v104 + 48))(v130, 1, v110) == 1)
    {
      v133 = sub_245F8E744(v130, &qword_27EE3A498, &unk_246097EB8);
    }

    else
    {
      v134 = *(v104 + 32);
      v134(v111, v130, v110);
      if (v208)
      {
        v179 = v208;
        CPGOutputRetain();
        sub_245F90360();
        v135 = *MEMORY[0x277D851C8];
        v183 = v134;
        v136 = v165;
        v137 = v163;
        v138 = v167;
        (*(v165 + 104))(v163, v135, v167);
        v184 = sub_246092084();
        (*(v136 + 8))(v137, v138);
        v187 = swift_allocObject();
        swift_weakInit();
        v139 = v166;
        v140 = v111;
        v141 = v182;
        (*(v104 + 16))(v166, v140, v182);
        sub_245FFE868(v189, v174, type metadata accessor for PhotogrammetrySession.Request);
        v142 = (*(v104 + 80) + 32) & ~*(v104 + 80);
        v143 = (v164 + *(v188 + 80) + v142) & ~*(v188 + 80);
        v144 = swift_allocObject();
        v145 = v187;
        *(v144 + 16) = v179;
        *(v144 + 24) = v145;
        v183(v144 + v142, v139, v141);
        sub_245FFE800(v174, v144 + v143, type metadata accessor for PhotogrammetrySession.Request);
        *&v202 = sub_245FFEC8C;
        *(&v202 + 1) = v144;
        *&v200 = MEMORY[0x277D85DD0];
        *(&v200 + 1) = 1107296256;
        *&v201 = sub_245F913A4;
        *(&v201 + 1) = &unk_2858DF618;
        v146 = _Block_copy(&v200);

        v147 = v168;
        sub_246091A14();
        *&v192 = MEMORY[0x277D84F90];
        sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198]);
        sub_245F8E624(&qword_27EE39F38, &qword_246096680);
        sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
        v148 = v170;
        v149 = v189;
        v150 = v173;
        sub_2460921A4();
        v151 = v184;
        MEMORY[0x24C1969D0](0, v147, v148, v146);
        _Block_release(v146);

        (*(v172 + 8))(v148, v150);
        (*(v169 + 8))(v147, v171);
        (*(v181 + 8))(v180, v182);

        goto LABEL_67;
      }

      v133 = (*(v104 + 8))(v111, v110);
    }

    if ((*(*v162 + 464))(v133))
    {
      v153 = v152;
      v154 = swift_getObjectType();
      v155 = sub_245F8E624(&qword_27EE3A548, &unk_246098FB0);
      v156 = v184;
      v157 = &v184[*(v155 + 48)];
      sub_245FFE868(v189, v184, type metadata accessor for PhotogrammetrySession.Request);
      *v157 = 3;
      v157[8] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v153 + 8))(v156, v154, v153);
      swift_unknownObjectRelease();
      sub_245FFEA30(v156, type metadata accessor for PhotogrammetrySession.Output);
    }

    v158 = *(v162 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
    v83 = __OFSUB__(v158, 1);
    v159 = v158 - 1;
    if (v83)
    {
      goto LABEL_73;
    }

    *(v162 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v159;
    sub_245FE2E78();
    v149 = v189;
LABEL_67:
    v160 = v185;
    (*(v188 + 56))(v185, 1, 1, v186);
    swift_beginAccess();
    sub_245FD4674(v160, v191);
    swift_endAccess();

    v95 = v149;
    goto LABEL_68;
  }

  __break(1u);
  return result;
}

uint64_t sub_245FF5240()
{
  v1 = sub_2460919F4();
  v16 = *(v1 - 8);
  v2 = *(v16 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_246091A64();
  v14 = *(v5 - 8);
  v15 = v5;
  v6 = *(v14 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_245FFD6AC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DF208;
  v11 = _Block_copy(aBlock);
  v12 = v9;

  sub_246091A14();
  v17 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v8, v4, v11);
  _Block_release(v11);

  (*(v16 + 8))(v4, v1);
  (*(v14 + 8))(v8, v15);
}

uint64_t sub_245FF5520()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
    {
      v9 = sub_245FA31EC();
      (*(v1 + 16))(v5, v9, v0);
      v10 = sub_2460918D4();
      v11 = sub_246091FB4();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_245F8A000, v10, v11, "Skip cancellation status callback. Backend manager is closed.", v12, 2u);
        MEMORY[0x24C1989D0](v12, -1, -1);
      }

      else
      {
      }

      return (*(v1 + 8))(v5, v0);
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isProcessCancelled) = 1;
      sub_245FED478();
    }
  }

  else
  {
    v13 = sub_245FA31EC();
    (*(v1 + 16))(v7, v13, v0);
    v14 = sub_2460918D4();
    v15 = sub_246091FB4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136380675;
      *(v16 + 4) = sub_245F8D3C0(0xD000000000000037, 0x80000002460A0B30, &v19);
      _os_log_impl(&dword_245F8A000, v14, v15, "Backend Manager.%{private}s failed to capture the instance!", v16, 0xCu);
      sub_245F8E6F4(v17);
      MEMORY[0x24C1989D0](v17, -1, -1);
      MEMORY[0x24C1989D0](v16, -1, -1);
    }

    return (*(v1 + 8))(v7, v0);
  }
}

uint64_t sub_245FF5848()
{
  v121 = *MEMORY[0x277D85DE8];
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v105 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v105 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v17 = sub_245FA31EC();
    (*(v1 + 16))(v10, v17, v0);
    v18 = sub_2460918D4();
    v19 = sub_246091FB4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v120[0].f64[0] = v21;
      *v20 = 136380675;
      *(v20 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A0B00, v120);
      _os_log_impl(&dword_245F8A000, v18, v19, "Backend Manager.%{private}s failed to capture the instance!", v20, 0xCu);
      sub_245F8E6F4(v21);
      MEMORY[0x24C1989D0](v21, -1, -1);
      MEMORY[0x24C1989D0](v20, -1, -1);
    }

    (*(v1 + 8))(v10, v0);
    goto LABEL_70;
  }

  v12 = Strong;
  if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
  {
    v13 = sub_245FA31EC();
    (*(v1 + 16))(v5, v13, v0);
    v14 = sub_2460918D4();
    v15 = sub_246091FB4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_245F8A000, v14, v15, "Skip pose update callback. Backend manager is closed.", v16, 2u);
      MEMORY[0x24C1989D0](v16, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v5, v0);
    goto LABEL_70;
  }

  v22 = CPGUpdatedPosesCopySampleIDs();
  if (!v22)
  {
LABEL_18:
    if ((*(*v12 + 488))())
    {
      v35 = v34;
      ObjectType = swift_getObjectType();
      v37 = sub_245FFC558(MEMORY[0x277D84F90]);
      (*(v35 + 16))(v37, ObjectType, v35);
LABEL_67:

      swift_unknownObjectRelease();
LABEL_70:
      result = CPGUpdatedPosesRelease();
      v104 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_69:

    goto LABEL_70;
  }

  v23 = v22;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_18;
  }

  v120[0].f64[0] = 0.0;
  sub_246091DC4();

  if (!*&v120[0].f64[0])
  {
    goto LABEL_18;
  }

  v113 = v120[0].f64[0];
  v24 = sub_245FA31EC();
  (*(v1 + 16))(v8, v24, v0);
  v25 = sub_2460918D4();
  v26 = sub_246091FA4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_245F8A000, v25, v26, "Received pose updates from mobileSfM.", v27, 2u);
    MEMORY[0x24C1989D0](v27, -1, -1);
  }

  (*(v1 + 8))(v8, v0);
  v28 = MEMORY[0x277D84F90];
  v112 = sub_245FFC558(MEMORY[0x277D84F90]);
  v29 = sub_245FFC558(v28);
  v116 = 0;
  v30 = v113;
  v31 = *(*&v113 + 16);
  v111 = v29;
  if (!v31)
  {
LABEL_59:

    if ((*(*v12 + 488))(v89))
    {
      v91 = v90;
      v92 = swift_getObjectType();
      (*(v91 + 16))(v112, v92, v91);

      v93 = swift_unknownObjectRelease();
    }

    else
    {
    }

    v94 = (*v12 + 512);
    v95 = *v94;
    if ((*v94)(v93))
    {
      v97 = v96;
      v98 = swift_getObjectType();
      (*(v97 + 8))(v111, v98, v97);

      v99 = swift_unknownObjectRelease();
    }

    else
    {
    }

    if (v95(v99))
    {
      v101 = v100;
      v102 = swift_getObjectType();
      (*(v101 + 16))(v28, v102, v101);
      goto LABEL_67;
    }

    goto LABEL_69;
  }

  v32 = 0;
  v33 = *&v113 + 32;
  v114 = *&v113 + 32;
  while (1)
  {
    if (v32 >= *(*&v30 + 16))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
    }

    v41 = *(v33 + 8 * v32);
    if (!CPGUpdatedPosesGetStateBySampleID())
    {
      if ((v116 - 1) >= 2)
      {
        if (v116 == 3)
        {
          if (v41 < 0)
          {
            goto LABEL_72;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_245FF82A8(0, *(v28 + 2) + 1, 1, v28, &qword_27EE3A0E8, &qword_24609ADA0);
          }

          v58 = *(v28 + 2);
          v57 = *(v28 + 3);
          if (v58 >= v57 >> 1)
          {
            v28 = sub_245FF82A8((v57 > 1), v58 + 1, 1, v28, &qword_27EE3A0E8, &qword_24609ADA0);
          }

          *(v28 + 2) = v58 + 1;
          *&v28[8 * v58 + 32] = v41;
          v33 = v114;
        }

        goto LABEL_22;
      }

      v119 = 0;
      if (!CPGUpdatedPosesCopyObjectTransformBySampleID() && v119)
      {
        if (v41 < 0)
        {
          goto LABEL_73;
        }

        v42 = v28;
        *&v106 = v119;
        CPGObjectTransformGetTransformMatrix();
        *&v43 = sub_2460211BC(v120);
        v107 = v43;
        v108 = v44;
        v109 = v45;
        v110 = v46;
        v47 = v112;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v47;
        v49 = sub_245FF8590(v41);
        v51 = *(v47 + 16);
        v52 = (v50 & 1) == 0;
        v53 = __OFADD__(v51, v52);
        v54 = v51 + v52;
        if (v53)
        {
          goto LABEL_75;
        }

        v55 = v50;
        if (*(v47 + 24) >= v54)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v88 = v49;
            sub_245FFA800();
            v49 = v88;
          }
        }

        else
        {
          sub_245FF9474(v54, isUniquelyReferenced_nonNull_native);
          v49 = sub_245FF8590(v41);
          if ((v55 & 1) != (v56 & 1))
          {
            goto LABEL_79;
          }
        }

        v28 = v42;
        v59 = v118;
        v33 = v114;
        v112 = v118;
        if (v55)
        {
          v60 = (v118[7] + (v49 << 6));
          v61 = v108;
          *v60 = v107;
          v60[1] = v61;
          v62 = v110;
          v60[2] = v109;
          v60[3] = v62;
        }

        else
        {
          v118[(v49 >> 6) + 8] |= 1 << v49;
          *(v59[6] + 8 * v49) = v41;
          v63 = (v59[7] + (v49 << 6));
          v64 = v108;
          *v63 = v107;
          v63[1] = v64;
          v65 = v110;
          v63[2] = v109;
          v63[3] = v65;
          v66 = v59[2];
          v53 = __OFADD__(v66, 1);
          v67 = v66 + 1;
          if (v53)
          {
            goto LABEL_77;
          }

          v59[2] = v67;
        }

        v30 = v113;
        CPGObjectTransformRelease();
      }

      v118 = 0;
      if (!CPGUpdatedPosesCopyCameraBySampleID())
      {
        if (v118)
        {
          break;
        }
      }
    }

LABEL_22:
    if (v31 == ++v32)
    {
      goto LABEL_59;
    }
  }

  *&v110 = v28;
  if (v41 < 0)
  {
    goto LABEL_74;
  }

  v105[1] = v118;
  CPGCameraGetTransform();
  *&v68 = sub_2460211BC(v117);
  v106 = v68;
  v107 = v69;
  v108 = v70;
  v109 = v71;
  v72 = v111;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v115 = v72;
  v75 = sub_245FF8590(v41);
  v76 = v72[2];
  v77 = (v74 & 1) == 0;
  v78 = v76 + v77;
  if (__OFADD__(v76, v77))
  {
    goto LABEL_76;
  }

  v79 = v74;
  if (v72[3] >= v78)
  {
    if ((v73 & 1) == 0)
    {
      sub_245FFA800();
    }

    goto LABEL_56;
  }

  sub_245FF9474(v78, v73);
  v80 = sub_245FF8590(v41);
  if ((v79 & 1) == (v81 & 1))
  {
    v75 = v80;
LABEL_56:
    v33 = v114;
    v82 = v115;
    v111 = v115;
    if (v79)
    {
      v38 = (v115[7] + (v75 << 6));
      v39 = v107;
      *v38 = v106;
      v38[1] = v39;
      v40 = v109;
      v38[2] = v108;
      v38[3] = v40;
    }

    else
    {
      v115[(v75 >> 6) + 8] |= 1 << v75;
      *(v82[6] + 8 * v75) = v41;
      v83 = (v82[7] + (v75 << 6));
      v84 = v107;
      *v83 = v106;
      v83[1] = v84;
      v85 = v109;
      v83[2] = v108;
      v83[3] = v85;
      v86 = v82[2];
      v53 = __OFADD__(v86, 1);
      v87 = v86 + 1;
      if (v53)
      {
        goto LABEL_78;
      }

      v82[2] = v87;
    }

    v28 = v110;
    v30 = v113;
    CPGCameraRelease();
    goto LABEL_22;
  }

LABEL_79:
  result = sub_246092424();
  __break(1u);
  return result;
}

uint64_t sub_245FF6288(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  v12 = sub_2460919F4();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_246091A64();
  v26 = *(v16 - 8);
  v27 = v16;
  v17 = *(v26 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(a2);
  v20 = *(v10 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = v21;
  aBlock[4] = a5;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = a6;
  v23 = _Block_copy(aBlock);
  v24 = v20;

  sub_246091A14();
  v29 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v19, v15, v23);
  _Block_release(v23);

  (*(v28 + 8))(v15, v12);
  (*(v26 + 8))(v19, v27);
}

uint64_t sub_245FF6588(uint64_t a1)
{
  v119[4] = *MEMORY[0x277D85DE8];
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v106 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v106 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v115 = &v106 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v106 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v106 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v106 - v22;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v32 = sub_245FA31EC();
    (*(v3 + 16))(v23, v32, v2);
    v33 = sub_2460918D4();
    v34 = sub_246091FB4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v3;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v119[0] = v37;
      *v36 = 136380675;
      *(v36 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A0AD0, v119);
      _os_log_impl(&dword_245F8A000, v33, v34, "Backend Manager.%{private}s failed to capture the instance!", v36, 0xCu);
      sub_245F8E6F4(v37);
      MEMORY[0x24C1989D0](v37, -1, -1);
      MEMORY[0x24C1989D0](v36, -1, -1);

      (*(v35 + 8))(v23, v2);
    }

    else
    {

      (*(v3 + 8))(v23, v2);
    }

    goto LABEL_31;
  }

  if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
  {
    v25 = sub_245FA31EC();
    v26 = v3;
    (*(v3 + 16))(v7, v25, v2);
    v27 = sub_2460918D4();
    v28 = sub_246091FB4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v2;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_245F8A000, v27, v28, "Skip track update callback. Backend manager is closed.", v30, 2u);
      v31 = v30;
      v2 = v29;
      MEMORY[0x24C1989D0](v31, -1, -1);
    }

    else
    {
    }

    (*(v26 + 8))(v7, v2);
    goto LABEL_31;
  }

  v111 = v18;
  v117 = Strong;
  Count = CPGSfmWorldTracksGetCount();
  v39 = sub_245FA31EC();
  v40 = *(v3 + 16);
  if (Count < 1)
  {
    v78 = v3;
    v40(v10, v39, v2);
    v79 = sub_2460918D4();
    v80 = sub_246091FB4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = v2;
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_245F8A000, v79, v80, "Failed to fetch non-empty mobile sfm point cloud.", v82, 2u);
      v83 = v82;
      v2 = v81;
      MEMORY[0x24C1989D0](v83, -1, -1);
    }

    else
    {
    }

    (*(v78 + 8))(v10, v2);
    goto LABEL_31;
  }

  v112 = v39;
  v113 = v40;
  v114 = v3 + 16;
  (v40)(v21);
  v41 = sub_2460918D4();
  v42 = sub_246091FC4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = v3;
    v44 = swift_slowAlloc();
    *v44 = 134349056;
    *(v44 + 4) = Count;
    _os_log_impl(&dword_245F8A000, v41, v42, "Fetched mobile sfm point cloud of size = %{public}ld", v44, 0xCu);
    v45 = v44;
    v3 = v43;
    MEMORY[0x24C1989D0](v45, -1, -1);
  }

  v48 = *(v3 + 8);
  v46 = v3 + 8;
  v47 = v48;
  v48(v21, v2);
  Positions = CPGSfmWorldTracksGetPositions();
  if (!Positions || (v50 = Positions, (Normals = CPGSfmWorldTracksGetNormals()) == 0) || (v52 = Normals, (Colors = CPGSfmWorldTracksGetColors()) == 0))
  {
    v113(v13, v112, v2);
    v75 = sub_2460918D4();
    v76 = sub_246091FB4();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_245F8A000, v75, v76, "Failed to get positions/normals/colors of world tracks.", v77, 2u);
      MEMORY[0x24C1989D0](v77, -1, -1);
    }

    else
    {
    }

    v47(v13, v2);
    goto LABEL_31;
  }

  v54 = Colors;
  v107 = v47;
  v108 = v46;
  v110 = v2;
  v109 = a1;
  v116 = *(*v117 + 728);
  v55 = MEMORY[0x277D84F90];
  do
  {
    v56 = *v50;
    v57 = v116;
    v58 = v116();
    v59 = v50[1];
    v60 = v57();
    v61 = v50[2];
    v62 = v57();
    v118 = *v52;
    v63 = v52[1].f64[0];
    v64 = sub_246022028(*v54);
    v65 = v54 + 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_245FF83A4(0, *(v55 + 2) + 1, 1, v55);
    }

    v67 = *(v55 + 2);
    v66 = *(v55 + 3);
    if (v67 >= v66 >> 1)
    {
      v55 = sub_245FF83A4((v66 > 1), v67 + 1, 1, v55);
    }

    v68 = v56;
    v69 = v59;
    v70 = v61;
    *&v71 = v68 / v58;
    *(&v71 + 1) = v69 / v60;
    *(&v71 + 1) = COERCE_UNSIGNED_INT(v70 / v62);
    *&v72 = vcvt_f32_f64(v118);
    *&v73 = v63;
    *(&v72 + 1) = v73;
    *(v55 + 2) = v67 + 1;
    v74 = &v55[48 * v67 + 32];
    *v74 = v71;
    *(v74 + 16) = v72;
    *(v74 + 32) = v64;
    *(v74 + 36) = 0;
    v52 += 2;
    v50 += 4;
    --Count;
    v54 = v65;
  }

  while (Count);
  v119[0] = 0;
  v85 = *MEMORY[0x277CBECE8];

  v86 = OCDataBufferCreateWithIOSurface();

  if (v86)
  {

    v88 = v115;
    v89 = v110;
    v113(v115, v112, v110);
    v90 = sub_2460918D4();
    v91 = sub_246091FB4();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_245F8A000, v90, v91, "Failed to convert world tracks to data buffer.", v92, 2u);
      MEMORY[0x24C1989D0](v92, -1, -1);
    }

    else
    {
    }

    v107(v88, v89);
LABEL_44:

LABEL_31:
    result = CPGSfmWorldTracksRelease();
    v84 = *MEMORY[0x277D85DE8];
    return result;
  }

  v93 = v119[0];
  v94 = v110;
  v95 = v117;
  if (v119[0])
  {
    type metadata accessor for OCDataBuffer();
    v96 = v93;

    v97 = sub_246091194(v96);
    v98 = v111;
    v113(v111, v112, v94);
    v99 = sub_2460918D4();
    v100 = sub_246091FC4();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 134349056;
      *(v101 + 4) = (*(*v97 + 96))();
      _os_log_impl(&dword_245F8A000, v99, v100, "Data buffer size of mobile sfm point cloud is %{public}ld", v101, 0xCu);
      MEMORY[0x24C1989D0](v101, -1, -1);
    }

    v102 = (v107)(v98, v110);
    if ((*(*v95 + 560))(v102))
    {
      v104 = v103;
      ObjectType = swift_getObjectType();
      (*(v104 + 8))(v97, ObjectType, v104);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    goto LABEL_44;
  }

  __break(1u);
  return result;
}

void sub_245FF70A8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (CPGLocalizationUpdatesGetState() != 1 || !CPGLocalizationUpdatesGetObjectTransform())
  {
    if (!(*(*v5 + 488))())
    {
      return;
    }

    v17 = v16;
    ObjectType = swift_getObjectType();
    LOBYTE(v20[0]) = 1;
    v19.n128_u64[1] = 0;
    memset(v22, 0, sizeof(v22));
    v23 = 1;
    if ((a3 & 0x8000000000000000) == 0)
    {
      v19.n128_f64[0] = a1;
      (*(v17 + 8))(v22, a3, a5, ObjectType, v17, v19);
      goto LABEL_9;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (!(*(*v5 + 488))())
  {
    return;
  }

  v10 = v9;
  v11 = swift_getObjectType();
  CPGObjectTransformGetTransformMatrix();
  v12.n128_f64[0] = sub_2460211BC(v22);
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v20[3] = v15;
  v21 = 0;
  if (a3 < 0)
  {
    goto LABEL_12;
  }

  v12.n128_f64[0] = a1;
  (*(v10 + 8))(v20, a3, a5, v11, v10, v12);
LABEL_9:
  swift_unknownObjectRelease();
}

uint64_t sub_245FF7238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2460919F4();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_246091A64();
  v20 = *(v10 - 8);
  v21 = v10;
  v11 = *(v20 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  CPGFinalizeInputResultRetain();
  v14 = *(v3 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = v15;
  v16[4] = a1;
  aBlock[4] = sub_245FFD734;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DF2F8;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  sub_246091A14();
  v23 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v13, v9, v17);
  _Block_release(v17);

  (*(v22 + 8))(v9, v6);
  (*(v20 + 8))(v13, v21);
}

uint64_t sub_245FF7548()
{
  v38[4] = *MEMORY[0x277D85DE8];
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v38[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v38[-1] - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v38[-1] - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed);
    v14 = sub_245FA31EC();
    v15 = *(v1 + 16);
    if (v13)
    {
      v15(v5, v14, v0);
      v16 = sub_2460918D4();
      v17 = sub_246091FB4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_245F8A000, v16, v17, "Skip finalize input callback exited. Backend Manager is closed.", v18, 2u);
        MEMORY[0x24C1989D0](v18, -1, -1);
      }

      else
      {
      }

      (*(v1 + 8))(v5, v0);
    }

    else
    {
      v15(v8, v14, v0);
      v24 = sub_2460918D4();
      v25 = sub_246091FC4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_245F8A000, v24, v25, "Finalize input Swift callback", v26, 2u);
        MEMORY[0x24C1989D0](v26, -1, -1);
      }

      (*(v1 + 8))(v8, v0);
      ErrorCode = CPGFinalizeInputResultGetErrorCode();
      v28 = ErrorCode;
      if (ErrorCode)
      {
        v29 = 0;
        v30 = 1;
      }

      else
      {
        v38[0] = 0;
        ErrorCode = CPGRequestCreateWithDetail();
        v29 = 0;
        v30 = ErrorCode != 0;
        if (!ErrorCode)
        {
          CPGSessionGetEstimatedProcessingTime();
          v29 = v31;
          ErrorCode = CPGRequestRelease();
        }
      }

      if ((*(*v12 + 536))(ErrorCode))
      {
        v33 = v32;
        ObjectType = swift_getObjectType();
        (*(v33 + 8))(v28 == 0, v29, v30, ObjectType, v33);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    v19 = sub_245FA31EC();
    (*(v1 + 16))(v10, v19, v0);
    v20 = sub_2460918D4();
    v21 = sub_246091FB4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38[0] = v23;
      *v22 = 136380675;
      *(v22 + 4) = sub_245F8D3C0(0xD000000000000030, 0x80000002460A0A90, v38);
      _os_log_impl(&dword_245F8A000, v20, v21, "Backend Manager.%{private}s failed to capture the instance!", v22, 0xCu);
      sub_245F8E6F4(v23);
      MEMORY[0x24C1989D0](v23, -1, -1);
      MEMORY[0x24C1989D0](v22, -1, -1);
    }

    (*(v1 + 8))(v10, v0);
  }

  result = CPGFinalizeInputResultRelease();
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245FF79F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PhotogrammetrySession.Output(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PhotogrammetrySession.Result(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed) & 1) == 0)
  {
    v25 = swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v26 = sub_246091704();
      (*(*(v26 - 8) + 16))(v19, a3, v26);
      v27 = swift_storeEnumTagMultiPayload();
      result = (*(*a1 + 464))(v27);
      if (result)
      {
        v29 = v28;
        ObjectType = swift_getObjectType();
        v31 = *(sub_245F8E624(&qword_27EE3A550, &qword_2460983C8) + 48);
        sub_245FFE868(v41, v15, type metadata accessor for PhotogrammetrySession.Request);
        sub_245FFE868(v19, &v15[v31], type metadata accessor for PhotogrammetrySession.Result);
        swift_storeEnumTagMultiPayload();
        (*(v29 + 8))(v15, ObjectType, v29);
        swift_unknownObjectRelease();
        result = sub_245FFEA30(v15, type metadata accessor for PhotogrammetrySession.Output);
      }

      v32 = *(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
      v33 = __OFSUB__(v32, 1);
      v34 = v32 - 1;
      if (!v33)
      {
        *(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v34;
        sub_245FE2E78();
        return sub_245FFEA30(v19, type metadata accessor for PhotogrammetrySession.Result);
      }

      __break(1u);
    }

    else
    {
      result = (*(*a1 + 464))(v25);
      if (result)
      {
        v36 = v35;
        v37 = swift_getObjectType();
        v38 = &v15[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
        sub_245FFE868(v41, v15, type metadata accessor for PhotogrammetrySession.Request);
        *v38 = 5;
        v38[8] = 1;
        swift_storeEnumTagMultiPayload();
        (*(v36 + 8))(v15, v37, v36);
        swift_unknownObjectRelease();
        result = sub_245FFEA30(v15, type metadata accessor for PhotogrammetrySession.Output);
      }

      v39 = *(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
      v33 = __OFSUB__(v39, 1);
      v40 = v39 - 1;
      if (!v33)
      {
        *(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v40;
        return sub_245FE2E78();
      }
    }

    __break(1u);
    return result;
  }

  v20 = sub_245FA31EC();
  (*(v8 + 16))(v11, v20, v7);
  v21 = sub_2460918D4();
  v22 = sub_246091FB4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_245F8A000, v21, v22, "Defer in copy fails. Backend manager is closed.", v23, 2u);
    MEMORY[0x24C1989D0](v23, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

size_t sub_245FF7EC4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_245F8E624(&qword_27EE3A578, &qword_2460983F0);
  v10 = *(type metadata accessor for PhotogrammetrySession.Request(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PhotogrammetrySession.Request(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}