uint64_t closure #1 in CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a2 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__state;
  *(v7 + 24) = *a1;
  *(v7 + 32) = v5;

  _StringGuts.grow(_:)(52);
  swift_beginAccess();
  v8 = StaticString.description.getter();
  MEMORY[0x21CE92100](v8);

  MEMORY[0x21CE92100](46, 0xE100000000000000);
  MEMORY[0x21CE92100](0xD000000000000048, 0x8000000216579290);
  MEMORY[0x21CE92100](0xD00000000000002FLL, 0x80000002165792E0);
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = a2;
  v9[5] = a3;

  return specialized BTask.init(name:operation:)(0, 0xE000000000000000, &async function pointer to partial apply for closure #1 in closure #1 in CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:), v9);
}

uint64_t closure #1 in closure #1 in CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[11] = a3;
  v6 = type metadata accessor for Logger();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:), 0, 0);
}

uint64_t closure #1 in closure #1 in CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)()
{
  v31 = v0;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  v5 = __swift_project_value_buffer(v3, static CloudSuggestionsDB.Log);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[15];
  v10 = v0[16];
  v11 = v0[14];
  if (v8)
  {
    v27 = v0[12];
    v28 = v0[11];
    v29 = v0[16];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136446722;
    swift_beginAccess();
    v14 = StaticString.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v30);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000048, 0x8000000216579290, &v30);
    *(v12 + 22) = 2080;
    if (v27)
    {
      v17 = v28;
    }

    else
    {
      v17 = 7104878;
    }

    if (v27)
    {
      v18 = v4;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v30);

    *(v12 + 24) = v19;
    _os_log_impl(&dword_21607C000, v6, v7, "%{public}s.%{public}s Setting snapshot generation %s on CloudManager", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v13, -1, -1);
    MEMORY[0x21CE94770](v12, -1, -1);

    (*(v9 + 8))(v29, v11);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v20 = (v0[13] + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_cloudManager);
  swift_beginAccess();
  v21 = *v20;
  v0[17] = *v20;
  if (v21)
  {
    v22 = v20[1];
    v0[18] = v22;
    v0[19] = swift_getObjectType();
    v0[20] = *(v22 + 144);
    v0[21] = (v22 + 144) & 0xFFFFFFFFFFFFLL | 0xDB33000000000000;
    swift_unknownObjectRetain();
    v24 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in closure #1 in CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:), v24, v23);
  }

  else
  {

    v25 = v0[1];

    return v25();
  }
}

{
  (*(v0 + 160))(*(v0 + 88), *(v0 + 96), *(v0 + 152), *(v0 + 144));
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CloudSuggestionsDB.refresh(force:)(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 298) = a1;
  *(v2 + 168) = *v1;
  v3 = type metadata accessor for URL();
  *(v2 + 176) = v3;
  *(v2 + 184) = *(v3 - 8);
  *(v2 + 192) = swift_task_alloc();
  v4 = type metadata accessor for Date();
  *(v2 + 200) = v4;
  *(v2 + 208) = *(v4 - 8);
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudSuggestionsDB.refresh(force:), v1, 0);
}

uint64_t CloudSuggestionsDB.refresh(force:)()
{
  v1 = *(v0 + 208);
  v24 = *(v0 + 224);
  v25 = *(v0 + 216);
  v2 = *(v0 + 192);
  v23 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D839B0];
  *(v8 + 16) = xmmword_21658CA50;
  v10 = MEMORY[0x277D839D8];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = v7;
  static CloudLog.LogBegin(_:_:)(v8, "refresh(force:)", 15, 2, v6, &protocol witness table for CloudSuggestionsDB);

  static Date.now.getter();
  v11 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_suggestionsDBURL;
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v11, v4);
  swift_beginAccess();
  v12 = static CloudSuggestionsDB.Class;
  v13 = unk_27CA8E8E8;
  v14 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__lastAssertionRefreshAttempt;
  *(v0 + 240) = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__lastAssertionRefreshAttempt;
  v15 = byte_27CA8E8F0;
  swift_beginAccess();
  v16 = *(v1 + 16);
  *(v0 + 248) = v16;
  *(v0 + 256) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v24, v5 + v14, v23);
  v17 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__lastAssertionRefreshSuccess;
  *(v0 + 264) = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__lastAssertionRefreshSuccess;
  swift_beginAccess();
  v16(v25, v5 + v17, v23);
  v18 = swift_task_alloc();
  *(v0 + 272) = v18;
  *v18 = v0;
  v18[1] = CloudSuggestionsDB.refresh(force:);
  v20 = *(v0 + 216);
  v19 = *(v0 + 224);
  v21 = *(v0 + 192);

  return static CloudSubDB.tryAssertDBFiles(dbURL:className:lastAttempt:lastSuccess:)(v21, v12, v13, v15, v19, v20);
}

{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = *(v0 + 240);
    v3 = *(v0 + 224);
    v4 = *(v0 + 200);
    v5 = *(v0 + 208);
    v6 = *(v0 + 160);
    (*(v0 + 248))(v3, *(v0 + 232), v4);
    swift_beginAccess();
    (*(v5 + 40))(v6 + v2, v3, v4);
    swift_endAccess();
    v1 = *(v0 + 296);
  }

  v7 = *(v0 + 200);
  if ((v1 & 0x100) != 0)
  {
    v8 = *(v0 + 264);
    v9 = *(v0 + 232);
    v10 = *(v0 + 208);
    v11 = *(v0 + 160);
    swift_beginAccess();
    (*(v10 + 40))(v11 + v8, v9, v7);
    swift_endAccess();
  }

  else
  {
    (*(v0 + 280))(*(v0 + 232), *(v0 + 200));
  }

  static CloudLog.LogEnd(_:)("refresh(force:)", 15, 2, *(v0 + 168), &protocol witness table for CloudSuggestionsDB);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t CloudSuggestionsDB.refresh(force:)(__int16 a1)
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 216);
  v5 = *(*v1 + 208);
  v6 = *(*v1 + 200);
  v7 = *(*v1 + 192);
  v8 = *(*v1 + 184);
  v9 = *(*v1 + 176);
  v12 = *(*v1 + 160);
  *(v2 + 296) = a1;

  v10 = *(v5 + 8);
  *(v2 + 280) = v10;
  *(v2 + 288) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v6);
  v10(v3, v6);
  (*(v8 + 8))(v7, v9);

  return MEMORY[0x2822009F8](CloudSuggestionsDB.refresh(force:), v12, 0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CloudSuggestionsDB.persistLocalData()()
{
  v137[3] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v126 = type metadata accessor for CocoaError.Code();
  v114 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for URL();
  *&v111 = *(v130 - 8);
  v4 = MEMORY[0x28223BE20](v130);
  v124 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v123 = &v107 - v7;
  MEMORY[0x28223BE20](v6);
  v113 = &v107 - v8;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v107 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v122 = &v107 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v107 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v110 = &v107 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v107 - v24;
  static CloudLog.LogBegin(_:_:)(0, "persistLocalData()", 18, 2, v2, &protocol witness table for CloudSuggestionsDB);
  if (one-time initialization token for DEBUG_NO_NETWORK != -1)
  {
    swift_once();
  }

  if (static CloudManager.DEBUG_NO_NETWORK)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v9, static CloudSuggestionsDB.Log);
    swift_beginAccess();
    (*(v10 + 16))(v21, v26, v9);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v137[0] = v30;
      *v29 = 136446210;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216579010, v137);
      _os_log_impl(&dword_21607C000, v27, v28, "CloudSuggestionsDB.%{public}s DEBUG_NO_NETWORK: Skipping DB write", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x21CE94770](v30, -1, -1);
      MEMORY[0x21CE94770](v29, -1, -1);
    }

    (*(v10 + 8))(v21, v9);
    goto LABEL_14;
  }

  v108 = v13;
  v121 = v131 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__state;
  if (!*(v131 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__state + 16))
  {
LABEL_14:
    static CloudLog.LogEnd(_:)("persistLocalData()", 18, 2, v2, &protocol witness table for CloudSuggestionsDB);
    return;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v9, static CloudSuggestionsDB.Log);
  swift_beginAccess();
  v32 = *(v10 + 16);
  v118 = v31;
  v117 = v10 + 16;
  v116 = v32;
  v32(v25, v31, v9);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v35 = os_log_type_enabled(v33, v34);
  v109 = v2;
  v132 = v1;
  v107 = v16;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v133[0] = v37;
    *v36 = 136446210;
    v112 = 0x8000000216579010;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216579010, v133);
    _os_log_impl(&dword_21607C000, v33, v34, "CloudSuggestionsDB.%{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x21CE94770](v37, -1, -1);
    MEMORY[0x21CE94770](v36, -1, -1);

    v38 = *(v10 + 8);
    v120 = v10 + 8;
    v119 = v38;
    v38(v25, v9);
  }

  else
  {

    v39 = *(v10 + 8);
    v120 = v10 + 8;
    v119 = v39;
    v39(v25, v9);
    v112 = 0x8000000216579010;
  }

  v128 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_suggestionsStateURL;
  swift_beginAccess();
  v115 = type metadata accessor for JSONEncoder();
  v40 = 0;
  v127 = (v111 + 16);
  v41 = (v111 + 8);
  ++v114;
  *&v42 = 136446466;
  v111 = v42;
  v129 = v9;
  while (1)
  {
    v43 = v40;
    swift_allocObject();
    JSONEncoder.init()();
    v44 = *(v121 + 8);
    v45 = *(v121 + 16);
    v46 = *(v121 + 24);
    v47 = *(v121 + 32);
    v133[0] = *v121;
    v133[1] = v44;
    v134 = v45;
    v135 = v46;
    v136 = v47;
    lazy protocol witness table accessor for type CloudSuggestionsDB.State and conformance CloudSuggestionsDB.State();

    v48 = v132;
    v49 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (!v48)
    {
      v51 = v49;
      v52 = v50;

      v53 = v130;
      v54 = v113;
      (*v127)(v113, v131 + v128, v130);
      Data.write(to:options:)();
      (*v41)(v54, v53);
      if (v43)
      {
        v101 = v110;
        v102 = v129;
        v116(v110, v118, v129);
        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v133[0] = v106;
          *v105 = v111;
          *(v105 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, v112, v133);
          *(v105 + 12) = 2048;
          *(v105 + 14) = 1;
          _os_log_impl(&dword_21607C000, v103, v104, "CloudSuggestionsDB.%{public}s Successfully saved suggestions state after %ld retries", v105, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v106);
          MEMORY[0x21CE94770](v106, -1, -1);
          MEMORY[0x21CE94770](v105, -1, -1);
        }

        outlined consume of Data._Representation(v51, v52);

        v99 = v101;
        v100 = v102;
LABEL_33:
        v119(v99, v100);
      }

      else
      {
        outlined consume of Data._Representation(v51, v52);
      }

LABEL_25:
      static CloudLog.LogEnd(_:)("persistLocalData()", 18, 2, v109, &protocol witness table for CloudSuggestionsDB);
      return;
    }

    v132 = 0;
    v55 = v48;
    v56 = v125;
    static CocoaError.fileNoSuchFile.getter();
    lazy protocol witness table accessor for type CloudSuggestionsDB and conformance CloudSuggestionsDB(&lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code, MEMORY[0x277CC8608]);
    v57 = v126;
    v58 = static _ErrorCodeProtocol.~= infix(_:_:)();

    (*v114)(v56, v57);
    v59 = v129;
    if ((v58 & 1) == 0)
    {
      break;
    }

    v60 = v130;
    v61 = v124;
    (*v127)(v124, v131 + v128, v130);
    v62 = v123;
    URL.deletingLastPathComponent()();
    v63 = *v41;
    (*v41)(v61, v60);
    v64 = URL.path.getter();
    v66 = v65;
    v67 = v62;
    v68 = v122;
    v63(v67, v60);
    v116(v68, v118, v59);

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v133[0] = v72;
      *v71 = v111;
      *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, v112, v133);
      *(v71 + 12) = 2080;
      *(v71 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v133);
      _os_log_impl(&dword_21607C000, v69, v70, "CloudSuggestionsDB.%{public}s Folder for suggestions state missing? Retrying after creating folder %s", v71, 0x16u);
      swift_arrayDestroy();
      v73 = v72;
      v59 = v129;
      MEMORY[0x21CE94770](v73, -1, -1);
      MEMORY[0x21CE94770](v71, -1, -1);
    }

    v119(v68, v59);
    v74 = [objc_opt_self() defaultManager];
    v75 = MEMORY[0x21CE91FC0](v64, v66);

    v133[0] = 0;
    v76 = [v74 createDirectoryIfNeededAtPath:v75 error:v133];

    if (!v76)
    {
      v88 = v133[0];
      v89 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v90 = v107;
      v116(v107, v118, v59);
      v91 = v89;
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v133[0] = v96;
        *v94 = v111;
        *(v94 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, v112, v133);
        *(v94 + 12) = 2112;
        v97 = v89;
        v98 = _swift_stdlib_bridgeErrorToNSError();
        *(v94 + 14) = v98;
        *v95 = v98;
        _os_log_impl(&dword_21607C000, v92, v93, "CloudSuggestionsDB.%{public}s Failed to create folder for suggestions state: (%@)", v94, 0x16u);
        outlined destroy of UTType?(v95, &_sSo8NSObjectCSgMd);
        MEMORY[0x21CE94770](v95, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v96);
        MEMORY[0x21CE94770](v96, -1, -1);
        MEMORY[0x21CE94770](v94, -1, -1);
      }

      else
      {
      }

      v99 = v90;
      v100 = v59;
      goto LABEL_33;
    }

    v77 = v133[0];
    v40 = 1;
    if (v43)
    {
      goto LABEL_25;
    }
  }

  v78 = v108;
  v116(v108, v118, v129);
  v79 = v48;
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v133[0] = v84;
    *v82 = v111;
    *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, v112, v133);
    *(v82 + 12) = 2112;
    v85 = v48;
    v86 = _swift_stdlib_bridgeErrorToNSError();
    *(v82 + 14) = v86;
    *v83 = v86;
    _os_log_impl(&dword_21607C000, v80, v81, "CloudSuggestionsDB.%{public}s Failed to write suggestions state: %@", v82, 0x16u);
    outlined destroy of UTType?(v83, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v83, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v84);
    MEMORY[0x21CE94770](v84, -1, -1);
    MEMORY[0x21CE94770](v82, -1, -1);
  }

  v119(v78, v59);
  v87 = v109;
  swift_willThrow();
  static CloudLog.LogEnd(_:)("persistLocalData()", 18, 2, v87, &protocol witness table for CloudSuggestionsDB);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CloudSuggestionsDB.deleteLocalData()()
{
  v1 = v0;
  v49[6] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v43 = type metadata accessor for Logger();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v44 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CloudLog.LogBegin(_:_:)(0, "deleteLocalData()", 17, 2, v2, &protocol witness table for CloudSuggestionsDB);
  *(v0 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__state + 16) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v49[3] = 0;

  static Published.subscript.setter();
  v8 = [objc_opt_self() defaultManager];
  v9 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_suggestionsStateURL;
  swift_beginAccess();
  v46 = *(v5 + 16);
  v46(v7, v0 + v9, v4);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = *(v5 + 8);
  v45 = v5 + 8;
  v47 = v13;
  v13(v7, v4);
  v49[0] = 0;
  LODWORD(v5) = [v8 removeItemAtURL:v12 error:v49];

  if (v5)
  {
    v14 = v49[0];
  }

  else
  {
    v40 = v9;
    v41 = v2;
    v15 = v49[0];
    v16 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v17 = v43;
    v18 = __swift_project_value_buffer(v43, static CloudSuggestionsDB.Log);
    swift_beginAccess();
    v19 = v42;
    (*(v42 + 16))(v44, v18, v17);

    v20 = v16;
    v21 = Logger.logObject.getter();
    LODWORD(v18) = static os_log_type_t.error.getter();

    v38 = v18;
    if (os_log_type_enabled(v21, v18))
    {
      v22 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48[0] = v37;
      *v22 = 136446978;
      swift_beginAccess();
      v23 = StaticString.description.getter();
      v39 = v21;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v48);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216579030, v48);
      *(v22 + 22) = 2080;
      v46(v7, v1 + v40, v4);
      lazy protocol witness table accessor for type CloudSuggestionsDB and conformance CloudSuggestionsDB(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      v47(v7, v4);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v48);

      *(v22 + 24) = v29;
      *(v22 + 32) = 2112;
      v35 = v16;
      v30 = v16;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 34) = v31;
      v32 = v36;
      *v36 = v31;
      _os_log_impl(&dword_21607C000, v39, v38, "%{public}s.%{public}s Deleting %s failed: %@", v22, 0x2Au);
      outlined destroy of UTType?(v32, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v32, -1, -1);
      v33 = v37;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v33, -1, -1);
      MEMORY[0x21CE94770](v22, -1, -1);

      (*(v42 + 8))(v44, v43);
    }

    else
    {

      (*(v19 + 8))(v44, v17);
    }

    v2 = v41;
  }

  v34 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_suggestionsDBURL;
  swift_beginAccess();
  v46(v7, v1 + v34, v4);
  swift_beginAccess();
  static CloudSubDB.deleteDBFiles(dbURL:className:)(v7, static CloudSuggestionsDB.Class, unk_27CA8E8E8, byte_27CA8E8F0);
  v47(v7, v4);
  static CloudLog.LogEnd(_:)("deleteLocalData()", 17, 2, v2, &protocol witness table for CloudSuggestionsDB);
}

uint64_t CloudSuggestionsDB.deinit()
{
  v1 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_suggestionsStateURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_suggestionsDBURL, v2);
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB___dbManager;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI9DBManagerCSgGMd);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__lastAssertionRefreshAttempt;
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB__lastAssertionRefreshSuccess, v7);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CloudSuggestionsDB.__deallocating_deinit()
{
  CloudSuggestionsDB.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for static CloudSubDB.cloudRecordTypes.getter in conformance CloudSuggestionsDB()
{
  if (one-time initialization token for cloudRecordTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for CloudSubDB.cloudManager.setter in conformance CloudSuggestionsDB(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_cloudManager);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t *protocol witness for CloudSubDB.init(emptyDB:config:) in conformance CloudSuggestionsDB@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for CloudSuggestionsDB();
  v6 = swift_allocObject();
  result = CloudSuggestionsDB.init(emptyDB:config:)(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t protocol witness for CloudSubDB.initialized() in conformance CloudSuggestionsDB()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterImage(imageSource:outputURL:);

  return CloudSuggestionsDB.initialized()();
}

uint64_t protocol witness for CloudSubDB.refresh(force:) in conformance CloudSuggestionsDB(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudSuggestionsDB.refresh(force:)(a1);
}

uint64_t protocol witness for CloudSubDB.persistLocalData() in conformance CloudSuggestionsDB()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](protocol witness for CloudSubDB.persistLocalData() in conformance CloudSuggestionsDB, v2, 0);
}

{
  CloudSuggestionsDB.persistLocalData()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for CloudSubDB.deleteLocalData() in conformance CloudSuggestionsDB()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](protocol witness for CloudSubDB.deleteLocalData() in conformance CloudSuggestionsDB, v2, 0);
}

{
  CloudSuggestionsDB.deleteLocalData()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for CloudSubDB.dumpCKRecordIDsByZone() in conformance CloudSuggestionsDB()
{
  return MEMORY[0x2822009F8](protocol witness for CloudSubDB.dumpCKRecordIDsByZone() in conformance CloudSuggestionsDB, *v0, 0);
}

{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo10CKRecordIDCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = *(v0 + 8);

  return v2(v1);
}

CKRecord_optional __swiftcall CloudSuggestionsDB.lookupCKRecord(_:)(CKRecordID a1)
{
  v1 = 0;
  result.value.super.isa = v1;
  return result;
}

uint64_t protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return CloudSuggestionsDB.zoneNotFound(_:_:purged:)(a1, a2, a3);
}

uint64_t protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t CloudSuggestionsDB.zoneNotFound(_:_:purged:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v3;
  *(v4 + 24) = a2;
  *(v4 + 32) = v5;
  *(v4 + 40) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](CloudSuggestionsDB.zoneNotFound(_:_:purged:), v3, 0);
}

uint64_t CloudSuggestionsDB.zoneNotFound(_:_:purged:)()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21658E190;
  v6 = [v4 zoneID];
  *(v5 + 56) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
  *(v5 + 64) = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type CKRecordZoneID and conformance NSObject, &lazy cache variable for type metadata for CKRecordZoneID);
  *(v5 + 32) = v6;
  v7 = [v2 recordID];
  v8 = [v7 recordName];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = MEMORY[0x277D83838];
  *(v5 + 96) = MEMORY[0x277D837D0];
  *(v5 + 104) = v12;
  v13 = MEMORY[0x277D839B0];
  *(v5 + 72) = v9;
  *(v5 + 80) = v11;
  v14 = MEMORY[0x277D839D8];
  *(v5 + 136) = v13;
  *(v5 + 144) = v14;
  *(v5 + 112) = v3;
  static CloudLog.LogBegin(_:_:)(v5, "zoneNotFound(_:_:purged:)", 25, 2, v1, &protocol witness table for CloudSuggestionsDB);

  static CloudLog.LogEnd(_:)("zoneNotFound(_:_:purged:)", 25, 2, v1, &protocol witness table for CloudSuggestionsDB);
  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t protocol witness for CloudSubDB.deleteCKRecordZone(_:purged:) in conformance CloudSuggestionsDB()
{
  specialized CloudSuggestionsDB.deleteCKRecordZone(_:purged:)(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

Swift::String __swiftcall CloudSuggestionsDB.dumpRecord(_:)(CKRecord a1)
{
  v1 = 0;
  v2 = 0xE000000000000000;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t key path getter for CloudSuggestionsDB._dbManager : CloudSuggestionsDB@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for CloudSuggestionsDB._dbManager : CloudSuggestionsDB()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t specialized closure #8 in CloudSuggestionsDB.initialized()(uint64_t *a1, uint64_t a2)
{
  v2[21] = a2;
  v5 = type metadata accessor for Logger();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a1;
  v2[25] = v6;
  v2[26] = v7;

  return MEMORY[0x2822009F8](specialized closure #8 in CloudSuggestionsDB.initialized(), a2, 0);
}

uint64_t specialized closure #8 in CloudSuggestionsDB.initialized()()
{
  v57 = v0;
  v1 = v0[26];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v0[14];
  if (v1)
  {
    if (v2 && v0[26] == v2)
    {
      goto LABEL_4;
    }
  }

  else if (!v2)
  {
LABEL_4:
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v3 = v0[25];
    v4 = v0[22];
    v5 = v0[23];
    v6 = __swift_project_value_buffer(v4, static CloudSuggestionsDB.Log);
    swift_beginAccess();
    (*(v5 + 16))(v3, v6, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[26];
      v52 = v0[22];
      v54 = v0[25];
      v50 = v0[23];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v56 = v11;
      *v10 = 136446978;
      swift_beginAccess();
      v12 = StaticString.description.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v56);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x696C616974696E69, 0xED0000292864657ALL, &v56);
      *(v10 + 22) = 2080;
      v0[18] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI9DBManagerCSgMd);
      v15 = Optional.debugDescription.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v56);

      *(v10 + 24) = v17;
      *(v10 + 32) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v0[20] = v0[19];
      v18 = Optional.debugDescription.getter();
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v56);

      *(v10 + 34) = v21;
      _os_log_impl(&dword_21607C000, v7, v8, "%{public}s.%{public}s %s === %s", v10, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v11, -1, -1);
      MEMORY[0x21CE94770](v10, -1, -1);

      (*(v50 + 8))(v54, v52);
    }

    else
    {
      v45 = v0[25];
      v46 = v0[22];
      v47 = v0[23];

      (*(v47 + 8))(v45, v46);
    }

    v44 = 1;
    goto LABEL_17;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v23 = v0[23];
  v22 = v0[24];
  v24 = v0[22];
  v25 = __swift_project_value_buffer(v24, static CloudSuggestionsDB.Log);
  swift_beginAccess();
  (*(v23 + 16))(v22, v25, v24);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v0[26];
    v53 = v0[22];
    v55 = v0[24];
    v51 = v0[23];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v56 = v30;
    *v29 = 136446978;
    swift_beginAccess();
    v31 = StaticString.description.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v56);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x696C616974696E69, 0xED0000292864657ALL, &v56);
    *(v29 + 22) = 2080;
    v0[15] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI9DBManagerCSgMd);
    v34 = Optional.debugDescription.getter();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v56);

    *(v29 + 24) = v36;
    *(v29 + 32) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v0[17] = v0[16];
    v37 = Optional.debugDescription.getter();
    v39 = v38;

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v56);

    *(v29 + 34) = v40;
    _os_log_impl(&dword_21607C000, v26, v27, "%{public}s.%{public}s %s !== %s", v29, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v30, -1, -1);
    MEMORY[0x21CE94770](v29, -1, -1);

    (*(v51 + 8))(v55, v53);
  }

  else
  {
    v42 = v0[23];
    v41 = v0[24];
    v43 = v0[22];

    (*(v42 + 8))(v41, v43);
  }

  v44 = 0;
LABEL_17:

  v48 = v0[1];

  return v48(v44);
}

uint64_t specialized CloudSuggestionsDB.State.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x55746E6572727563 && a2 == 0xEB00000000726573;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000216579270 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized CloudSuggestionsDB.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI18CloudSuggestionsDBC5StateV10CodingKeys33_2A45C7A53849FBA5CF4C3C0C075EF393LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CloudSuggestionsDB.State.CodingKeys and conformance CloudSuggestionsDB.State.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  lazy protocol witness table accessor for type CloudSuggestionsDB.SuggestionsDBMode and conformance CloudSuggestionsDB.SuggestionsDBMode();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v22;
  v20 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v19;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  return result;
}

unint64_t specialized CloudSuggestionsDB.SuggestionsDBMode.init(rawValue:)(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CloudSuggestionsDB.State and conformance CloudSuggestionsDB.State()
{
  result = lazy protocol witness table cache variable for type CloudSuggestionsDB.State and conformance CloudSuggestionsDB.State;
  if (!lazy protocol witness table cache variable for type CloudSuggestionsDB.State and conformance CloudSuggestionsDB.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudSuggestionsDB.State and conformance CloudSuggestionsDB.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudSuggestionsDB.State and conformance CloudSuggestionsDB.State;
  if (!lazy protocol witness table cache variable for type CloudSuggestionsDB.State and conformance CloudSuggestionsDB.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudSuggestionsDB.State and conformance CloudSuggestionsDB.State);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(unint64_t *a1, uint64_t *a2)
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

uint64_t type metadata accessor for CloudSuggestionsDB()
{
  result = type metadata singleton initialization cache for CloudSuggestionsDB;
  if (!type metadata singleton initialization cache for CloudSuggestionsDB)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CloudSuggestionsDB and conformance CloudSuggestionsDB(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined consume of DBManager??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSAttributedString(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized CloudSuggestionsDB.deleteCKRecordZone(_:purged:)(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v2, static CloudSuggestionsDB.Log);
    swift_beginAccess();
    (*(v3 + 16))(v6, v7, v2);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136446210;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216579310, &v12);
      _os_log_impl(&dword_21607C000, v8, v9, "CloudSuggestionsDB.%{public}s Zone PURGED!", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x21CE94770](v11, -1, -1);
      MEMORY[0x21CE94770](v10, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void type metadata completion function for CloudSuggestionsDB()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<DBManager?>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of CloudSuggestionsDB.initialized()()
{
  v4 = (*(*v0 + 704) + **(*v0 + 704));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of CloudSuggestionsDB.cancelSync()()
{
  v4 = (*(*v0 + 736) + **(*v0 + 736));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterImage(imageSource:outputURL:);

  return v4();
}

uint64_t dispatch thunk of CloudSuggestionsDB.refresh(force:)(uint64_t a1)
{
  v6 = (*(*v1 + 744) + **(*v1 + 744));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v6(a1);
}

uint64_t dispatch thunk of CloudSuggestionsDB.willFetchChanges()()
{
  v4 = (*(*v0 + 768) + **(*v0 + 768));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of CloudSuggestionsDB.willCheckpointChanges()()
{
  v4 = (*(*v0 + 776) + **(*v0 + 776));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of CloudSuggestionsDB.didFetchChanges()()
{
  v4 = (*(*v0 + 784) + **(*v0 + 784));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterImage(imageSource:outputURL:);

  return v4();
}

void type metadata accessor for Published<DBManager?>()
{
  if (!lazy cache variable for type metadata for Published<DBManager?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MomentsUI9DBManagerCSgMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<DBManager?>);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CloudSuggestionsDB.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudSuggestionsDB.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudSuggestionsDB.SuggestionsDBMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudSuggestionsDB.SuggestionsDBMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudSuggestionsDB.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudSuggestionsDB.State.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)(a1, a2, v6, v7, v8);
}

uint64_t objectdestroy_104Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #2 in CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #2 in CloudSuggestionsDB._updateMode(primaryID:onboarded:accountState:userID:snapshotGeneration:)(a1, a2, v6, v7, v8);
}

uint64_t partial apply for closure #1 in CloudSuggestionsDB.handleProtectedDataAvailable()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in CloudSuggestionsDB.handleProtectedDataAvailable()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #7 in CloudSuggestionsDB.initialized()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #7 in CloudSuggestionsDB.initialized()(a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(unint64_t *a1, uint64_t *a2)
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

uint64_t partial apply for closure #1 in closure #1 in closure #6 in CloudSuggestionsDB.initialized()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 41);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in closure #6 in CloudSuggestionsDB.initialized()(a1, a2, v5, v6, v7, v8, v10, v9);
}

MomentsUI::URLBasedImage::ImageType_optional __swiftcall URLBasedImage.ImageType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of URLBasedImage.ImageType.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_URLBasedImage_ImageType_dark;
  }

  else
  {
    v4.value = MomentsUI_URLBasedImage_ImageType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t URLBasedImage.ImageType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance URLBasedImage.ImageType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URLBasedImage.ImageType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance URLBasedImage.ImageType()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URLBasedImage.ImageType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance URLBasedImage.ImageType@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of URLBasedImage.ImageType.init(rawValue:), *a1);

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

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance URLBasedImage.ImageType(uint64_t *a1@<X8>)
{
  v2 = 1802658148;
  if (!*v1)
  {
    v2 = 0x746867696CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t URLBasedImage.getLightURL()(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](URLBasedImage.getLightURL(), 0, 0);
}

uint64_t URLBasedImage.getLightURL()()
{
  v1 = v0[23];
  v2 = v0[16];
  v3 = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__lightURL;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v2 + v3, v1, &_s10Foundation3URLVSgMd);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v6 = v0[19];
    v7 = v0[20];
    v8 = v0[18];
    v9 = v0[16];
    outlined destroy of UTType?(v0[23], &_s10Foundation3URLVSgMd);
    v10 = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__token;
    swift_beginAccess();
    outlined init with copy of DateInterval?(v9 + v10, v8, &_s10Foundation4UUIDVSgMd);
    if ((*(v7 + 48))(v8, 1, v6) == 1)
    {
      v11 = v0[15];
      outlined destroy of UTType?(v0[18], &_s10Foundation4UUIDVSgMd);
      v12 = v2 + v3;
      v13 = v11;
    }

    else
    {
      (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
      if (one-time initialization token for $currentConnection != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      v15 = v0[14];
      v16 = v0[20];
      if (v15)
      {
        v17 = v0[17];
        v30 = 1;
        (*(v16 + 56))(v17, 1, 1, v0[19]);
        swift_beginAccess();
        outlined assign with take of AttributedString?(v17, v9 + v10, &_s10Foundation4UUIDVSgMd);
        swift_endAccess();
        v18 = UUID.uuidString.getter();
        v19 = MEMORY[0x21CE91FC0](v18);

        v20 = MEMORY[0x21CE91FC0](0x746867696CLL, 0xE500000000000000);
        v21 = [v15 retrieveUrlForToken:v19 type:v20];

        if (v21)
        {
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v30 = 0;
        }

        v23 = v0[21];
        v22 = v0[22];
        v24 = v0[19];
        v25 = v0[20];
        v29 = v0[15];

        (*(v25 + 8))(v23, v24);
        (*(v5 + 56))(v22, v30, 1, v4);
        swift_beginAccess();
        outlined assign with take of AttributedString?(v22, v2 + v3, &_s10Foundation3URLVSgMd);
        swift_endAccess();
        v12 = v2 + v3;
        v13 = v29;
      }

      else
      {
        v26 = v0[15];
        (*(v16 + 8))(v0[21], v0[19]);
        v12 = v2 + v3;
        v13 = v26;
      }
    }

    outlined init with copy of DateInterval?(v12, v13, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v14 = v0[15];
    (*(v5 + 32))(v14, v0[23], v4);
    (*(v5 + 56))(v14, 0, 1, v4);
  }

  v27 = v0[1];

  return v27();
}

uint64_t URLBasedImage.getDarkURL()(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](URLBasedImage.getDarkURL(), 0, 0);
}

uint64_t URLBasedImage.getDarkURL()()
{
  v1 = v0[23];
  v2 = v0[16];
  v3 = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__darkURL;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v2 + v3, v1, &_s10Foundation3URLVSgMd);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v6 = v0[19];
    v7 = v0[20];
    v8 = v0[18];
    v9 = v0[16];
    outlined destroy of UTType?(v0[23], &_s10Foundation3URLVSgMd);
    v10 = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__token;
    swift_beginAccess();
    outlined init with copy of DateInterval?(v9 + v10, v8, &_s10Foundation4UUIDVSgMd);
    if ((*(v7 + 48))(v8, 1, v6) == 1)
    {
      v11 = v0[15];
      outlined destroy of UTType?(v0[18], &_s10Foundation4UUIDVSgMd);
      v12 = v2 + v3;
      v13 = v11;
    }

    else
    {
      (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
      if (one-time initialization token for $currentConnection != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      v15 = v0[14];
      v16 = v0[20];
      if (v15)
      {
        v17 = v0[17];
        v30 = 1;
        (*(v16 + 56))(v17, 1, 1, v0[19]);
        swift_beginAccess();
        outlined assign with take of AttributedString?(v17, v9 + v10, &_s10Foundation4UUIDVSgMd);
        swift_endAccess();
        v18 = UUID.uuidString.getter();
        v19 = MEMORY[0x21CE91FC0](v18);

        v20 = MEMORY[0x21CE91FC0](1802658148, 0xE400000000000000);
        v21 = [v15 retrieveUrlForToken:v19 type:v20];

        if (v21)
        {
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v30 = 0;
        }

        v23 = v0[21];
        v22 = v0[22];
        v24 = v0[19];
        v25 = v0[20];
        v29 = v0[15];

        (*(v25 + 8))(v23, v24);
        (*(v5 + 56))(v22, v30, 1, v4);
        swift_beginAccess();
        outlined assign with take of AttributedString?(v22, v2 + v3, &_s10Foundation3URLVSgMd);
        swift_endAccess();
        v12 = v2 + v3;
        v13 = v29;
      }

      else
      {
        v26 = v0[15];
        (*(v16 + 8))(v0[21], v0[19]);
        v12 = v2 + v3;
        v13 = v26;
      }
    }

    outlined init with copy of DateInterval?(v12, v13, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v14 = v0[15];
    (*(v5 + 32))(v14, v0[23], v4);
    (*(v5 + 56))(v14, 0, 1, v4);
  }

  v27 = v0[1];

  return v27();
}

uint64_t URLBasedImage.getAssetURL(assetType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = type metadata accessor for URL();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](URLBasedImage.getAssetURL(assetType:), 0, 0);
}

uint64_t URLBasedImage.getAssetURL(assetType:)()
{
  v2 = v0[18];
  v1 = v0[19];

  v3._countAndFlagsBits = v2;
  v3._object = v1;
  v4 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of URLBasedImage.ImageType.init(rawValue:), v3);

  if (v4 == 1)
  {
    v15 = v0[29];
    v16 = v0[21];
    v17 = v0[22];
    v18 = v0[20];
    v19 = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__lightURL;
    swift_beginAccess();
    outlined init with copy of DateInterval?(v18 + v19, v15, &_s10Foundation3URLVSgMd);
    v20 = *(v17 + 48);
    LODWORD(v16) = v20(v15, 1, v16);
    outlined destroy of UTType?(v15, &_s10Foundation3URLVSgMd);
    if (v16 == 1)
    {
      v21 = v0[28];
      v22 = v0[21];
      outlined init with copy of DateInterval?(v0[20] + OBJC_IVAR____TtC9MomentsUI13URLBasedImage__originalDarkURL, v21, &_s10Foundation3URLVSgMd);
      v23 = v20(v21, 1, v22);
      v24 = v0[28];
      if (v23 == 1)
      {
        outlined destroy of UTType?(v0[28], &_s10Foundation3URLVSgMd);
      }

      else
      {
        v32 = v0[27];
        v33 = v0[24];
        v34 = v0[21];
        v35 = v0[22];
        v36 = *(v35 + 32);
        v0[40] = v36;
        v0[41] = (v35 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v36(v33, v24, v34);
        type metadata accessor for PairedPhotoVideo();
        static PairedPhotoVideo.generateTemporaryPath(video:)(0, v32);
        v37 = v20(v32, 1, v34);
        v38 = v0[27];
        if (v37 == 1)
        {
          (*(v0[22] + 8))(v0[24], v0[21]);
          outlined destroy of UTType?(v38, &_s10Foundation3URLVSgMd);
        }

        else
        {
          v36(v0[23], v0[27], v0[21]);
          URL._bridgeToObjectiveC()(v45);
          v47 = v46;
          v42 = CGImageSourceCreateWithURL(v46, 0);
          v0[42] = v42;

          if (v42)
          {
            v48 = swift_task_alloc();
            v0[43] = v48;
            *v48 = v0;
            v48[1] = URLBasedImage.getAssetURL(assetType:);
            v44 = v0[23];
            goto LABEL_18;
          }

          lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
          v57 = swift_allocError();
          *v58 = 0;
          swift_willThrow();
          v59 = v0[24];
          v60 = v0[21];
          v61 = *(v0[22] + 8);
          v61(v0[23], v60);
          v61(v59, v60);
        }
      }
    }

    v62 = v0[20];
    v63 = v0[17];
    v64 = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__darkURL;
    swift_beginAccess();
    v56 = v62 + v64;
    v55 = v63;
    goto LABEL_25;
  }

  if (v4)
  {
    (*(v0[22] + 56))(v0[17], 1, 1, v0[21]);
LABEL_26:

    v65 = v0[1];

    return v65();
  }

  v5 = v0[33];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[20];
  v9 = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__lightURL;
  v0[34] = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__lightURL;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v8 + v9, v5, &_s10Foundation3URLVSgMd);
  v10 = *(v7 + 48);
  LODWORD(v6) = v10(v5, 1, v6);
  outlined destroy of UTType?(v5, &_s10Foundation3URLVSgMd);
  if (v6 != 1)
  {
    goto LABEL_22;
  }

  v11 = v0[32];
  v12 = v0[21];
  outlined init with copy of DateInterval?(v0[20] + OBJC_IVAR____TtC9MomentsUI13URLBasedImage__originalLightURL, v11, &_s10Foundation3URLVSgMd);
  v13 = v10(v11, 1, v12);
  v14 = v0[32];
  if (v13 == 1)
  {
    outlined destroy of UTType?(v0[32], &_s10Foundation3URLVSgMd);
LABEL_22:
    v55 = v0[17];
    v56 = v0[20] + v0[34];
LABEL_25:
    outlined init with copy of DateInterval?(v56, v55, &_s10Foundation3URLVSgMd);
    goto LABEL_26;
  }

  v25 = v0[31];
  v26 = v0[26];
  v27 = v0[21];
  v28 = v0[22];
  v29 = *(v28 + 32);
  v0[35] = v29;
  v0[36] = (v28 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v29(v26, v14, v27);
  type metadata accessor for PairedPhotoVideo();
  static PairedPhotoVideo.generateTemporaryPath(video:)(0, v25);
  v30 = v10(v25, 1, v27);
  v31 = v0[31];
  if (v30 == 1)
  {
    (*(v0[22] + 8))(v0[26], v0[21]);
    outlined destroy of UTType?(v31, &_s10Foundation3URLVSgMd);
    goto LABEL_22;
  }

  v29(v0[25], v0[31], v0[21]);
  URL._bridgeToObjectiveC()(v39);
  v41 = v40;
  v42 = CGImageSourceCreateWithURL(v40, 0);
  v0[37] = v42;

  if (!v42)
  {
    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    v50 = swift_allocError();
    *v51 = 0;
    swift_willThrow();
    v52 = v0[26];
    v53 = v0[21];
    v54 = *(v0[22] + 8);
    v54(v0[25], v53);
    v54(v52, v53);

    goto LABEL_22;
  }

  v43 = swift_task_alloc();
  v0[38] = v43;
  *v43 = v0;
  v43[1] = URLBasedImage.getAssetURL(assetType:);
  v44 = v0[25];
LABEL_18:

  return specialized static Exif.filterImage(imageSource:outputURL:)(v42, v44);
}

{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = URLBasedImage.getAssetURL(assetType:);
  }

  else
  {
    v2 = URLBasedImage.getAssetURL(assetType:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 240);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 160);

  (*(v7 + 8))(v4, v6);
  v1(v3, v5, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v3, v8 + v2, &_s10Foundation3URLVSgMd);
  swift_endAccess();
  outlined init with copy of DateInterval?(*(v0 + 160) + *(v0 + 272), *(v0 + 136), &_s10Foundation3URLVSgMd);

  v9 = *(v0 + 8);

  return v9();
}

{

  v1 = *(v0 + 312);
  v2 = *(v0 + 208);
  v3 = *(v0 + 168);
  v4 = *(*(v0 + 176) + 8);
  v4(*(v0 + 200), v3);
  v4(v2, v3);

  outlined init with copy of DateInterval?(*(v0 + 160) + *(v0 + 272), *(v0 + 136), &_s10Foundation3URLVSgMd);

  v5 = *(v0 + 8);

  return v5();
}

{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = URLBasedImage.getAssetURL(assetType:);
  }

  else
  {
    v2 = URLBasedImage.getAssetURL(assetType:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 320);
  v2 = *(v0 + 240);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);

  (*(v6 + 8))(v3, v5);
  v1(v2, v4, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v8 = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__darkURL;
  swift_beginAccess();
  outlined assign with take of AttributedString?(v2, v7 + v8, &_s10Foundation3URLVSgMd);
  swift_endAccess();
  v9 = *(v0 + 160);
  v10 = *(v0 + 136);
  v11 = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__darkURL;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v9 + v11, v10, &_s10Foundation3URLVSgMd);

  v12 = *(v0 + 8);

  return v12();
}

{

  v1 = *(v0 + 352);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(*(v0 + 176) + 8);
  v4(*(v0 + 184), v3);
  v4(v2, v3);

  v5 = *(v0 + 160);
  v6 = *(v0 + 136);
  v7 = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__darkURL;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v5 + v7, v6, &_s10Foundation3URLVSgMd);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t URLBasedImage.token.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__token;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v1 + v3, a1, &_s10Foundation4UUIDVSgMd);
}

BOOL URLBasedImage.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of URLBasedImage.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

BOOL URLBasedImage.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of URLBasedImage.CodingKeys.init(stringValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URLBasedImage.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URLBasedImage.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance URLBasedImage.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance URLBasedImage.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance URLBasedImage.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance URLBasedImage.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URLBasedImage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URLBasedImage.CodingKeys and conformance URLBasedImage.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URLBasedImage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URLBasedImage.CodingKeys and conformance URLBasedImage.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id URLBasedImage.__allocating_init(image:filterExif:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized URLBasedImage.init(image:filterExif:)(a1);

  return v4;
}

id URLBasedImage.init(image:filterExif:)(void *a1)
{
  v2 = specialized URLBasedImage.init(image:filterExif:)(a1);

  return v2;
}

Swift::Void __swiftcall URLBasedImage.encode(with:)(NSCoder with)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__token;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v1 + v6, v5, &_s10Foundation4UUIDVSgMd);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v10 = MEMORY[0x21CE91FC0](0x6E656B6F74, 0xE500000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v10];
  swift_unknownObjectRelease();
}

id URLBasedImage.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized URLBasedImage.init(coder:)(a1);

  return v4;
}

id URLBasedImage.init(coder:)(void *a1)
{
  v2 = specialized URLBasedImage.init(coder:)(a1);

  return v2;
}

id URLBasedImage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id URLBasedImage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLBasedImage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for URLBasedAsset.getAssetURL(assetType:) in conformance URLBasedImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & **v3) + 0xB8);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = static Exif.filterImage(imageSource:outputURL:);

  return v11(a1, a2, a3);
}

id specialized URLBasedImage.init(image:filterExif:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__lightURL;
  v11 = type metadata accessor for URL();
  v12 = *(*(v11 - 8) + 56);
  v12(&v2[v10], 1, 1, v11);
  v12(&v2[OBJC_IVAR____TtC9MomentsUI13URLBasedImage__darkURL], 1, 1, v11);
  v13 = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__token;
  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 56);
  v16 = v15(&v2[v13], 1, 1, v14);
  v17 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *a1) + 0xB8))(v16);
  v18 = outlined init with take of URL?(v9, &v2[OBJC_IVAR____TtC9MomentsUI13URLBasedImage__originalLightURL]);
  (*((*v17 & *a1) + 0xE0))(v18);
  outlined init with take of URL?(v9, &v2[OBJC_IVAR____TtC9MomentsUI13URLBasedImage__originalDarkURL]);
  UUID.init()();
  v15(v6, 0, 1, v14);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v6, &v2[v13], &_s10Foundation4UUIDVSgMd);
  swift_endAccess();
  v19 = type metadata accessor for URLBasedImage();
  v22.receiver = v2;
  v22.super_class = v19;
  return objc_msgSendSuper2(&v22, sel_init);
}

id specialized URLBasedImage.init(coder:)(uint64_t a1)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v23 = v22 - v7;
  v8 = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__lightURL;
  v9 = type metadata accessor for URL();
  v10 = *(*(v9 - 8) + 56);
  v10(&v2[v8], 1, 1, v9);
  v10(&v2[OBJC_IVAR____TtC9MomentsUI13URLBasedImage__darkURL], 1, 1, v9);
  v11 = OBJC_IVAR____TtC9MomentsUI13URLBasedImage__token;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(&v2[v11], 1, 1, v12);
  v10(&v2[OBJC_IVAR____TtC9MomentsUI13URLBasedImage__originalLightURL], 1, 1, v9);
  v10(&v2[OBJC_IVAR____TtC9MomentsUI13URLBasedImage__originalDarkURL], 1, 1, v9);
  type metadata accessor for NSUUID();
  v15 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v15)
  {
    v16 = v15;
    v17 = 1;
    v14(v6, 1, 1, v12);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    v18 = (*(v13 + 48))(v6, 1, v12);
    v19 = v23;
    if (v18 != 1)
    {
      (*(v13 + 32))(v23, v6, v12);
      v17 = 0;
    }
  }

  else
  {
    v19 = v23;
    v17 = 1;
  }

  v14(v19, v17, 1, v12);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v19, &v2[v11], &_s10Foundation4UUIDVSgMd);
  swift_endAccess();
  v20 = type metadata accessor for URLBasedImage();
  v24.receiver = v2;
  v24.super_class = v20;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t type metadata accessor for URLBasedImage()
{
  result = type metadata singleton initialization cache for URLBasedImage;
  if (!type metadata singleton initialization cache for URLBasedImage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URLBasedImage.ImageType and conformance URLBasedImage.ImageType()
{
  result = lazy protocol witness table cache variable for type URLBasedImage.ImageType and conformance URLBasedImage.ImageType;
  if (!lazy protocol witness table cache variable for type URLBasedImage.ImageType and conformance URLBasedImage.ImageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLBasedImage.ImageType and conformance URLBasedImage.ImageType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URLBasedImage.CodingKeys and conformance URLBasedImage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URLBasedImage.CodingKeys and conformance URLBasedImage.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLBasedImage.CodingKeys and conformance URLBasedImage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLBasedImage.CodingKeys and conformance URLBasedImage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLBasedImage.CodingKeys and conformance URLBasedImage.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLBasedImage.CodingKeys and conformance URLBasedImage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLBasedImage.CodingKeys and conformance URLBasedImage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLBasedImage.CodingKeys and conformance URLBasedImage.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLBasedImage.CodingKeys and conformance URLBasedImage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLBasedImage.CodingKeys and conformance URLBasedImage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLBasedImage.CodingKeys and conformance URLBasedImage.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLBasedImage.CodingKeys and conformance URLBasedImage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLBasedImage.CodingKeys and conformance URLBasedImage.CodingKeys);
  }

  return result;
}

void type metadata completion function for URLBasedImage()
{
  type metadata accessor for URL?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of URLBasedImage.getLightURL()(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x90);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v7(a1);
}

uint64_t dispatch thunk of URLBasedImage.getDarkURL()(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xB0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return v7(a1);
}

uint64_t dispatch thunk of URLBasedImage.getAssetURL(assetType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xB8);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v11(a1, a2, a3);
}

void type metadata accessor for URL?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t type metadata accessor for NSUUID()
{
  result = lazy cache variable for type metadata for NSUUID;
  if (!lazy cache variable for type metadata for NSUUID)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUUID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1802658148;
    }

    else
    {
      v4 = 0x6B72614479726576;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746867696CLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE400000000000000;
  v8 = 1802658148;
  if (a2 != 2)
  {
    v8 = 0x6B72614479726576;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x746867696CLL;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = 0xEE0064656472616FLL;
  v3 = 0x626E4F726576656ELL;
  v4 = a1;
  v5 = 0x756F527465737361;
  v6 = 0xEE00626F6C426574;
  if (a1 != 6)
  {
    v5 = 0x6174536775626564;
    v6 = 0xEA0000000000656CLL;
  }

  v7 = 0xE400000000000000;
  v8 = 1280328553;
  if (a1 != 4)
  {
    v8 = 0x68746C616548;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x64756F6C43776F6CLL;
  v10 = 0xEF656761726F7453;
  if (a1 != 2)
  {
    v9 = 0x6469766F72506F6ELL;
    v10 = 0xEB00000000737265;
  }

  v11 = 0x6C61636F4C776F6CLL;
  v12 = 0xEF656761726F7453;
  if (!a1)
  {
    v11 = 0x626E4F726576656ELL;
    v12 = 0xEE0064656472616FLL;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEE00626F6C426574;
        if (v13 != 0x756F527465737361)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xEA0000000000656CLL;
        if (v13 != 0x6174536775626564)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE400000000000000;
      if (v13 != 1280328553)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x68746C616548)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0x64756F6C43776F6CLL;
LABEL_29:
        v2 = 0xEF656761726F7453;
        if (v13 != v15)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x6469766F72506F6ELL;
      v2 = 0xEB00000000737265;
    }

    else if (a2)
    {
      v15 = 0x6C61636F4C776F6CLL;
      goto LABEL_29;
    }

    if (v13 != v3)
    {
LABEL_41:
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v16 = 1;
LABEL_42:

  return v16 & 1;
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t MutableWorkoutViewModel.build()()
{
  v1 = v0;
  v2 = type metadata accessor for DateInterval();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v192 = &v144 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = MEMORY[0x28223BE20](v14);
  v191 = &v144 - v16;
  MEMORY[0x28223BE20](v15);
  v190 = &v144 - v19;
  v20 = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (!v20)
  {
    return 0;
  }

  v21 = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
  if (!v21)
  {
    return 0;
  }

  v179 = v9;
  v180 = v3;
  v181 = v2;
  v185 = v18;
  v186 = v17;
  v22 = one-time initialization token for $commonSecondaryCapabilities;
  v184 = v20;

  if (v22 != -1)
  {
LABEL_87:
    swift_once();
  }

  TaskLocal.get()();
  v23 = v193;
  v146 = v5;
  v189 = v11;
  v183 = v12;
  if (v193)
  {
    if (*(v193 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();
      v25 = -1 << *(v23 + 32);
      v26 = v24 & ~v25;
      if ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
      {
        v27 = ~v25;
        while (1)
        {
          v28 = *(*(v23 + 48) + v26);
          if (v28 > 3 && *(*(v23 + 48) + v26) > 5u && v28 != 7)
          {
            break;
          }

          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v29 & 1) == 0)
          {
            v26 = (v26 + 1) & v27;
            if ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
            {
              continue;
            }
          }

          goto LABEL_22;
        }

        v29 = 1;
      }

      else
      {
        v29 = 0;
      }

LABEL_22:
      v12 = v183;
    }

    else
    {
      v29 = 0;
    }

    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static CommonLogger.views);
    v45 = v1;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v193 = v49;
      *v48 = 136315394;
      v50 = [v45 description];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v193);

      *(v48 + 4) = v54;
      *(v48 + 12) = 1024;
      *(v48 + 14) = v29 & 1;
      _os_log_impl(&dword_21607C000, v46, v47, "[%s] Has .assetRouteBlob capabilities in all devices? %{BOOL}d", v48, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v49);
      v55 = v49;
      v12 = v183;
      MEMORY[0x21CE94770](v55, -1, -1);
      MEMORY[0x21CE94770](v48, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static CommonLogger.views);
    v32 = v1;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = v12;
      v37 = swift_slowAlloc();
      v193 = v37;
      *v35 = 136315138;
      v38 = [v32 description];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v193);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_21607C000, v33, v34, "[%s] Missing commonSecondaryCapabilities", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      v43 = v37;
      v12 = v36;
      MEMORY[0x21CE94770](v43, -1, -1);
      MEMORY[0x21CE94770](v35, -1, -1);
    }

    v29 = 0;
  }

  type metadata accessor for Route();
  v56 = MEMORY[0x277D85000];
  v57 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))();
  LOBYTE(v193) = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v188 = Route.__allocating_init(routeLocations:assetClass:)(v57, &v193);
  v58 = *(v12 + 16);
  v168 = v12 + 16;
  v167 = v58;
  v59 = (v58)(v190, v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v189);
  v175 = (*((*v56 & *v1) + 0xD0))(v59);
  v176 = v60;
  v61 = (*((*v56 & *v1) + 0xE8))();
  v187 = (*((*v56 & *v1) + 0xB8))(v61);
  v62 = (*((*v56 & *v1) + 0x2E8))();
  v63 = (*((*v56 & *v1) + 0x300))();
  v177 = v64;
  if (v64)
  {
    v65 = 0;
  }

  else
  {
    v65 = v63;
  }

  v178 = v65;
  v66 = *((*v56 & *v1) + 0x318);
  v67 = (v66)(v63);
  if (v67)
  {
    v68 = v67;
    v69 = [v67 _unit];

    v70 = [v69 unitString];
    v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v173 = v71;
  }

  else
  {
    v174 = 0;
    v173 = 0;
  }

  v72 = v66();
  v171 = v72;
  if (v72)
  {
    v73 = v72;
    v74 = [v73 _unit];
    [v73 doubleValueForUnit_];
    v76 = v75;

    v172 = v76;
  }

  else
  {
    v172 = 0;
  }

  v77 = MEMORY[0x277D85000];
  v170 = (*((*MEMORY[0x277D85000] & *v1) + 0x330))();
  v169 = v78;
  v79 = *((*v77 & *v1) + 0x348);
  v80 = v79();
  if (v80)
  {
    v81 = v80;
    v82 = [v80 _unit];

    v83 = [v82 &selRef_valenceClassification];
    v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v165 = v84;
  }

  else
  {
    v166 = 0;
    v165 = 0;
  }

  v85 = v79();
  v163 = v85;
  if (v85)
  {
    v86 = v85;
    v87 = [v86 _unit];
    [v86 doubleValueForUnit_];
    v89 = v88;

    v164 = v89;
  }

  else
  {
    v164 = 0;
  }

  v162 = (*((*v77 & *v1) + 0x360))();
  v161 = v90;
  v91 = *((*v77 & *v1) + 0x378);
  v92 = v91();
  if (v92)
  {
    v93 = v92;
    v94 = [v92 _unit];

    v95 = [v94 &selRef_valenceClassification];
    v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v159 = v96;
  }

  else
  {
    v160 = 0;
    v159 = 0;
  }

  v97 = v91();
  v158 = v97;
  if (v97)
  {
    v98 = v97;
    v99 = [v98 _unit];
    [v98 doubleValueForUnit_];
    v101 = v100;

    v147 = v101;
  }

  else
  {
    v147 = 0;
  }

  v157 = (*((*v77 & *v1) + 0x390))();
  v156 = v102;
  v155 = (*((*v77 & *v1) + 0x3A8))();
  v154 = v103;
  v153 = (*((*v77 & *v1) + 0x3C0))();
  v152 = v104;
  v150 = (*((*v77 & *v1) + 0x1D8))();
  v151 = (*((*v77 & *v1) + 0x280))();
  v105 = UUID.init()();
  v106 = v188;
  if (v29 & 1 | (v188 == 0))
  {
    v107 = 0;
  }

  else
  {
    v107 = (*((*v77 & *v188) + 0xC0))(v105);
  }

  v108 = specialized static DBWorkoutModel.route2DB(_:)(v106);
  v109 = specialized static DBAssetModel.baseImage2DB(_:)(v187);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v193 = v108;
  v1 = 0;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v109, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v193);

  v149 = v107;
  v148 = v193;
  if (v62)
  {
    v193 = MEMORY[0x277D84F90];
    v111 = *(v62 + 16);
    if (v111)
    {
      v11 = MEMORY[0x277D84F90];
      v112 = 0;
      v113 = v62 + 32;
      v144 = v111 - 1;
      v182 = MEMORY[0x277D84F90];
      v145 = v62 + 32;
      do
      {
        v12 = v113 + 16 * v112;
        v5 = v112;
        while (1)
        {
          if (v5 >= *(v62 + 16))
          {
            __break(1u);
            goto LABEL_87;
          }

          v114 = *v12;
          type metadata accessor for MutableWorkoutViewModel();
          v115 = swift_dynamicCastClass();
          if (v115)
          {
            v1 = v115;
            v116 = v114;
            v117 = MutableWorkoutViewModel.build()();

            if (v117)
            {
              break;
            }
          }

          ++v5;
          v12 += 16;
          if (v111 == v5)
          {
            goto LABEL_66;
          }
        }

        MEMORY[0x21CE92260]();
        v1 = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v1 >= *((v193 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v112 = v5 + 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v182 = v193;
        v113 = v145;
      }

      while (v144 != v5);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      v182 = MEMORY[0x277D84F90];
    }

LABEL_66:
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    v182 = 0;
  }

  v118 = v189;
  v119 = v167;
  v167(v185, v191, v189);
  v119(v186, v190, v118);
  v120 = *(v21 + 16);
  if (v120)
  {
    v193 = v11;
    v121 = v184;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120, 0);
    v122 = v193;
    v123 = *(v193 + 16);
    v124 = 32;
    do
    {
      v125 = *(v21 + v124);
      v193 = v122;
      v126 = *(v122 + 24);
      if (v123 >= v126 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v123 + 1, 1);
        v122 = v193;
      }

      *(v122 + 16) = v123 + 1;
      *(v122 + v123 + 32) = v125;
      ++v124;
      ++v123;
      --v120;
    }

    while (v120);
    v127 = v147;
  }

  else
  {
    v127 = v147;
    v128 = v184;

    v122 = MEMORY[0x277D84F90];
  }

  if (v176)
  {
    v129 = v175;
  }

  else
  {
    v129 = 0;
  }

  if (v176)
  {
    v130 = v176;
  }

  else
  {
    v130 = 0xE000000000000000;
  }

  v131 = v179;
  outlined init with copy of DateInterval?(v192, v179);
  v132 = v180;
  v133 = *(v180 + 48);
  v134 = v181;
  if (v133(v131, 1, v181) == 1)
  {
    v135 = v146;
    DateInterval.init()();
    if (v133(v131, 1, v134) != 1)
    {
      outlined destroy of DateInterval?(v131);
    }
  }

  else
  {
    v136 = v146;
    (*(v132 + 32))(v146, v131, v134);
    v135 = v136;
  }

  v137 = v158 == 0;
  v138 = v163 == 0;
  v139 = v171 == 0;
  LOBYTE(v193) = v150 & 1;
  type metadata accessor for DBWorkoutModel();
  swift_allocObject();
  v143 = v139;
  v140 = v184;
  v141 = specialized DBWorkoutModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:workouts:activityTypeRawValue:activeEnergyBurnedUnitString:activeEnergyBurnedDoubleValue:activeEnergyBurnedLocalizedString:distanceUnitString:distanceDoubleValue:distanceLocalizedString:averageHeartRateUnitString:averageHeartRateDoubleValue:averageHeartRateLocalizedString:legacyRouteLocations:duration:durationLocalizedString:renderState:workoutUUIDs:)(v185, v186, v184, v122, v129, v130, v135, v148, v182, v178, v177 & 1, v174, v173, v172, v143, v170, v169, v166, v165, v164, v138, v162, v161, v160, v159, v127, v137, v157, v156, v149, v155, v154 & 1, v153, v152, &v193, v151);

  outlined destroy of DateInterval?(v192);
  v142 = *(v183 + 8);
  v142(v190, v118);
  v142(v191, v118);

  return v141;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
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

uint64_t specialized Set.contains(_:)(void *a1, uint64_t a2)
{
  return specialized Set.contains(_:)(a1, a2, &lazy cache variable for type metadata for CKRecordZoneID);
}

{
  return specialized Set.contains(_:)(a1, a2, &lazy cache variable for type metadata for CKRecordID);
}

uint64_t specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = specialized RawRepresentable<>._rawHashValue(seed:)(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v31 = ~v5;
    v7 = 0xEF656761726F7453;
    v8 = 0x64756F6C43776F6CLL;
    v9 = 0x626E4F726576656ELL;
    while (1)
    {
      v10 = *(*(a2 + 48) + v6);
      if (v10 > 3)
      {
        if (*(*(a2 + 48) + v6) > 5u)
        {
          if (v10 == 6)
          {
            v15 = 0x756F527465737361;
            v16 = 0xEE00626F6C426574;
          }

          else
          {
            v15 = 0x6174536775626564;
            v16 = 0xEA0000000000656CLL;
          }
        }

        else
        {
          if (v10 == 4)
          {
            v15 = 1280328553;
          }

          else
          {
            v15 = 0x68746C616548;
          }

          if (v10 == 4)
          {
            v16 = 0xE400000000000000;
          }

          else
          {
            v16 = 0xE600000000000000;
          }
        }
      }

      else
      {
        if (v10 == 2)
        {
          v11 = v8;
        }

        else
        {
          v11 = 0x6469766F72506F6ELL;
        }

        if (v10 == 2)
        {
          v12 = v7;
        }

        else
        {
          v12 = 0xEB00000000737265;
        }

        if (*(*(a2 + 48) + v6))
        {
          v13 = 0x6C61636F4C776F6CLL;
        }

        else
        {
          v13 = 0x626E4F726576656ELL;
        }

        if (*(*(a2 + 48) + v6))
        {
          v14 = v7;
        }

        else
        {
          v14 = 0xEE0064656472616FLL;
        }

        if (*(*(a2 + 48) + v6) <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }

        if (*(*(a2 + 48) + v6) <= 1u)
        {
          v16 = v14;
        }

        else
        {
          v16 = v12;
        }
      }

      v17 = 0x756F527465737361;
      if (a1 != 6)
      {
        v17 = 0x6174536775626564;
      }

      v18 = 0xEE00626F6C426574;
      if (a1 != 6)
      {
        v18 = 0xEA0000000000656CLL;
      }

      v19 = 0x68746C616548;
      if (a1 == 4)
      {
        v19 = 1280328553;
      }

      v20 = 0xE400000000000000;
      if (a1 != 4)
      {
        v20 = 0xE600000000000000;
      }

      if (a1 <= 5u)
      {
        v17 = v19;
        v18 = v20;
      }

      if (a1 == 2)
      {
        v21 = v8;
      }

      else
      {
        v21 = 0x6469766F72506F6ELL;
      }

      if (a1 == 2)
      {
        v22 = v7;
      }

      else
      {
        v22 = 0xEB00000000737265;
      }

      if (a1)
      {
        v9 = 0x6C61636F4C776F6CLL;
        v23 = v7;
      }

      else
      {
        v23 = 0xEE0064656472616FLL;
      }

      if (a1 <= 1u)
      {
        v21 = v9;
        v22 = v23;
      }

      v24 = a1 <= 3u ? v21 : v17;
      v25 = a1 <= 3u ? v22 : v18;
      if (v15 == v24 && v16 == v25)
      {
        break;
      }

      v26 = v6;
      v27 = v7;
      v28 = v8;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        v6 = (v26 + 1) & v31;
        v8 = v28;
        v7 = v27;
        v9 = 0x626E4F726576656ELL;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v29 & 1;
    }

    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
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
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

uint64_t specialized Set.contains(_:)(void *a1, uint64_t a2, unint64_t *a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (type metadata accessor for NSAttributedString(0, a3), v6 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v36 = v6;
  while (v9)
  {
    v39 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v43[0] = *v15;
    v43[1] = v16;
    v43[2] = v17;

    a2(&v40, v43);

    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = *v44;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v39 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, v39 & 1);
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v44;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
    v6 = v36;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      outlined consume of [String : DBAssetData].Iterator._Variant();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id DateRange.__allocating_init(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC9MomentsUI9DateRange_startDate;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v9(&v5[v6], a1, v7);
  v9(&v5[OBJC_IVAR____TtC9MomentsUI9DateRange_endDate], a2, v7);
  v13.receiver = v5;
  v13.super_class = v2;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  v11 = *(v8 + 8);
  v11(a2, v7);
  v11(a1, v7);
  return v10;
}

uint64_t DateRange.startDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id DateRange.init(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9MomentsUI9DateRange_startDate;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(&v2[v5], a1, v6);
  v8(&v2[OBJC_IVAR____TtC9MomentsUI9DateRange_endDate], a2, v6);
  v12.receiver = v2;
  v12.super_class = type metadata accessor for DateRange();
  v9 = objc_msgSendSuper2(&v12, sel_init);
  v10 = *(v7 + 8);
  v10(a2, v6);
  v10(a1, v6);
  return v9;
}

uint64_t type metadata accessor for DateRange()
{
  result = type metadata singleton initialization cache for DateRange;
  if (!type metadata singleton initialization cache for DateRange)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

MomentsUI::DateRange::CodingKeys_optional __swiftcall DateRange.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DateRange.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_DateRange_CodingKeys_endDate;
  }

  else
  {
    v4.value = MomentsUI_DateRange_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

MomentsUI::DateRange::CodingKeys_optional __swiftcall DateRange.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DateRange.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_DateRange_CodingKeys_endDate;
  }

  else
  {
    v4.value = MomentsUI_DateRange_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t DateRange.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x65746144646E65;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DateRange.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65746144646E65;
  }

  else
  {
    v3 = 0x7461447472617473;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x65746144646E65;
  }

  else
  {
    v5 = 0x7461447472617473;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DateRange.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DateRange.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DateRange.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DateRange.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DateRange.CodingKeys.init(rawValue:), *a1);

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

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DateRange.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x7461447472617473;
  if (*v1)
  {
    v2 = 0x65746144646E65;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DateRange.CodingKeys()
{
  if (*v0)
  {
    return 0x65746144646E65;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DateRange.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DateRange.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DateRange.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DateRange.CodingKeys and conformance DateRange.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DateRange.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DateRange.CodingKeys and conformance DateRange.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Void __swiftcall DateRange.encode(with:)(NSCoder with)
{
  isa = Date._bridgeToObjectiveC()().super.isa;
  v3 = MEMORY[0x21CE91FC0](0x7461447472617473, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v3];

  v4 = Date._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x21CE91FC0](0x65746144646E65, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
}

id DateRange.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v38 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v41 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v38 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v38 - v18;
  MEMORY[0x28223BE20](v17);
  v44 = v38 - v20;
  type metadata accessor for NSDate();
  v21 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v21)
  {

    goto LABEL_9;
  }

  v22 = v21;
  v38[0] = v16;
  v42 = v2;
  v43 = a1;
  v39 = *(v11 + 56);
  v40 = v7;
  v39(v9, 1, 1, v10);
  v38[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
  dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

  v23 = *(v11 + 48);
  if (v23(v9, 1, v10) == 1)
  {
LABEL_6:

LABEL_9:
    type metadata accessor for DateRange();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v24 = *(v11 + 32);
  v24(v19, v9, v10);
  v25 = v44;
  v26 = v19;
  v27 = v24;
  v24(v44, v26, v10);
  v28 = v43;
  v29 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v29)
  {
    (*(v11 + 8))(v25, v10);

    goto LABEL_9;
  }

  v30 = v29;
  v31 = v40;
  v39(v40, 1, 1, v10);
  dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

  if (v23(v31, 1, v10) == 1)
  {
    (*(v11 + 8))(v44, v10);
    goto LABEL_6;
  }

  v33 = v41;
  v27(v41, v31, v10);
  v34 = v38[0];
  v27(v38[0], v33, v10);
  v35 = v42;
  v27(&v42[OBJC_IVAR____TtC9MomentsUI9DateRange_startDate], v44, v10);
  v27(&v35[OBJC_IVAR____TtC9MomentsUI9DateRange_endDate], v34, v10);
  v36 = type metadata accessor for DateRange();
  v45.receiver = v35;
  v45.super_class = v36;
  v37 = objc_msgSendSuper2(&v45, sel_init);

  return v37;
}

unint64_t type metadata accessor for NSDate()
{
  result = lazy cache variable for type metadata for NSDate;
  if (!lazy cache variable for type metadata for NSDate)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSDate);
  }

  return result;
}

id DateRange.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DateRange.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DateRange();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DateRange.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI9DateRangeC10CodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DateRange.CodingKeys and conformance DateRange.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type DateRange.CodingKeys and conformance DateRange.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DateRange.CodingKeys and conformance DateRange.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateRange.CodingKeys and conformance DateRange.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateRange.CodingKeys and conformance DateRange.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateRange.CodingKeys and conformance DateRange.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateRange.CodingKeys and conformance DateRange.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateRange.CodingKeys and conformance DateRange.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateRange.CodingKeys and conformance DateRange.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateRange.CodingKeys and conformance DateRange.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateRange.CodingKeys and conformance DateRange.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateRange.CodingKeys and conformance DateRange.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateRange.CodingKeys and conformance DateRange.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateRange.CodingKeys and conformance DateRange.CodingKeys);
  }

  return result;
}

id DateRange.init(from:)(void *a1)
{
  v3 = type metadata accessor for Date();
  v21 = *(v3 - 8);
  v22 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI9DateRangeC10CodingKeysOGMd);
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DateRange.CodingKeys and conformance DateRange.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v17 = v24;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for DateRange();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v6;
    v20 = v9;
    v12 = v21;
    v26 = 0;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v24;
    v18[0] = *(v12 + 32);
    v18[1] = OBJC_IVAR____TtC9MomentsUI9DateRange_startDate;
    (v18[0])(&v24[OBJC_IVAR____TtC9MomentsUI9DateRange_startDate], v8, v22);
    v26 = 1;
    v15 = v19;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (v18[0])(&v14[OBJC_IVAR____TtC9MomentsUI9DateRange_endDate], v15, v22);
    v16 = type metadata accessor for DateRange();
    v25.receiver = v14;
    v25.super_class = v16;
    v17 = objc_msgSendSuper2(&v25, sel_init);
    (*(v20 + 8))(v11, v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v17;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance DateRange@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t DateRange.interval.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = *(v2 + 16);
  v6(&v9 - v7, v0 + OBJC_IVAR____TtC9MomentsUI9DateRange_startDate, v1);
  v6(v5, v0 + OBJC_IVAR____TtC9MomentsUI9DateRange_endDate, v1);
  return DateInterval.init(start:end:)();
}

uint64_t type metadata completion function for DateRange()
{
  result = type metadata accessor for Date();
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

uint64_t MutableVideoViewModel.build()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v67 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for DateInterval();
  v68 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (!v16)
  {
    return 0;
  }

  v17 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
  if (!v17)
  {
    return 0;
  }

  v65 = v5;
  v66 = v17;
  v18 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v0 + v18, v12);
  v19 = v68;
  if ((*(v68 + 48))(v12, 1, v13) != 1)
  {
    (*(v19 + 32))(v15, v12, v13);
    (*(v2 + 16))(v67, v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v1);
    v21 = (v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
    swift_beginAccess();
    v22 = v21[1];
    v64 = *v21;
    v59 = v22;
    (*(v19 + 16))(v10, v15, v13);
    (*(v19 + 56))(v10, 0, 1, v13);
    v23 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
    swift_beginAccess();
    v24 = *(v0 + v23);
    v25 = v0 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds;
    swift_beginAccess();
    v62 = *v25;
    v61 = *(v25 + 8);
    v26 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
    swift_beginAccess();
    v53 = v26;
    v27 = *(v0 + v26);
    v28 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_squareCropRect;
    swift_beginAccess();
    v29 = *(v28 + 16);
    v70[0] = *v28;
    v70[1] = v29;
    v71 = *(v28 + 32);
    v30 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_landscapeCropRect;
    swift_beginAccess();
    v31 = *(v30 + 16);
    v72[0] = *v30;
    v72[1] = v31;
    v73 = *(v30 + 32);
    v32 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_portraitCropRect;
    swift_beginAccess();
    v33 = *(v32 + 16);
    v74[0] = *v32;
    v74[1] = v33;
    v75 = *(v32 + 32);
    v34 = (v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier);
    swift_beginAccess();
    v35 = v34[1];
    v58 = *v34;
    v36 = (v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier);
    swift_beginAccess();
    v37 = v36[1];
    v56 = *v36;
    v57 = v35;
    v63 = v24;
    v60 = v27;
    v55 = v37;
    if (v24)
    {
      v51 = v0;
      v38 = v27;
      v52 = *((*MEMORY[0x277D85000] & *v24) + 0xB0);

      v39 = v24;
      v40 = v16;

      v41 = v59;

      v54 = v38;

      LOBYTE(v38) = v52(v42);

      if (v38)
      {
        v43 = *(v51 + v53);
        v44 = v65;
        if (v43)
        {
          v45 = v43;
          LODWORD(v53) = Image.hasUIImage.getter();

          v46 = v64;
          if (v53)
          {
            v47 = 1;
LABEL_16:
            v69[0] = v47;
            UUID.init()();
            type metadata accessor for DBVideoModel();
            swift_allocObject();
            v49 = specialized DBVideoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseVideo:videoDurationSeconds:baseImage:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(v44, v67, v16, v66, v46, v41, v10, v63, v62, v61, v60, v70, v72, v74, v58, v57, v56, v55, v69);

            (*(v68 + 8))(v15, v13);
            return v49;
          }
        }

        else
        {
          v46 = v64;
        }
      }

      else
      {
        v46 = v64;
        v44 = v65;
      }
    }

    else
    {
      v46 = v64;

      v48 = v16;

      v41 = v59;

      v54 = v27;

      v39 = 0;
      v44 = v65;
    }

    v47 = 0;
    goto LABEL_16;
  }

  outlined destroy of DateInterval?(v12);
  return 0;
}

MomentsUI::Color __swiftcall Color.init(color:)(UIColor color)
{
  v3 = v1;
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = 0.0;
  v11[0] = 0;
  v8 = 0.0;
  v9 = 0.0;
  [(objc_class *)color.super.isa getRed:v11 green:&v10 blue:&v9 alpha:&v8];

  v5 = v10;
  v4 = *v11;
  v7 = v8;
  v6 = v9;
  *v3 = v11[0];
  *(v3 + 8) = v5;
  *(v3 + 16) = v6;
  *(v3 + 24) = v7;
  result.alpha = v7;
  result.blue = v6;
  result.green = v5;
  result.red = v4;
  return result;
}

void __swiftcall Color.init(optionalColor:)(MomentsUI::Color_optional *__return_ptr retstr, UIColor_optional optionalColor)
{
  isa = optionalColor.value.super.isa;
  if (optionalColor.value.super.isa)
  {
    Color.init(color:)(optionalColor.value);
    v4 = v6;
    v5 = v7;
  }

  else
  {
    v4 = 0uLL;
    v5 = 0uLL;
  }

  *&retstr->value.red = v4;
  *&retstr->value.blue = v5;
  retstr->is_nil = isa == 0;
}

id Color.uiColor.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v5 initWithRed:v1 green:v2 blue:v3 alpha:v4];
}

Swift::Int ProcessingServerConnection.ProcessingError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ProcessingServerConnection.ProcessingError()
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ProcessingServerConnection.ProcessingError()
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](0);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v7[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type CocoaError and conformance CocoaError(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static ProcessingServerConnection.queue = result;
  return result;
}

{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v0);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.userInitiated.getter();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v1);
  v7[1] = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static MutableWorkoutViewModel.queue = result;
  return result;
}

{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v7[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static PresenterServerConnection.queue = result;
  return result;
}

{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v7[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static ProcessingServerCoreConnection.queue = result;
  return result;
}

{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v0);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v1);
  v7[1] = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static MutableMapViewModel.queue = result;
  return result;
}

id ProcessingServerConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessingServerConnection.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessingServerConnection();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ProcessingServerConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessingServerConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ProcessingServerConnection.remoteTarget.getter()
{
  v15 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI16ServerConnection_lock);
  swift_unknownObjectWeakInit();
  [v1 lock];
  specialized closure #1 in ProcessingServerConnection.remoteTarget.getter(v14, &v15);
  [v1 unlock];
  MEMORY[0x21CE948B0](v14);
  v2 = v15;
  if (v15)
  {
    swift_unknownObjectRetain();
    v3 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x80000002165794A0);
    v4 = MEMORY[0x21CE91FC0](0x676E416369736142, 0xED00004350496C65);
    v5 = [objc_opt_self() attributeWithDomain:v3 name:v4];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21658E210;
    *(v6 + 32) = v5;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for RBSAttribute);
    v7 = v5;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v2 remoteTargetWithLaunchingAssertionAttributes_];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      v12 = 0u;
      v13 = 0u;
    }

    v14[0] = v12;
    v14[1] = v13;
    if (*(&v13 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI16ProcessingServer_pMd);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        return v11;
      }
    }

    else
    {
      outlined destroy of UTType?(v14, &_sypSgMd);
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t specialized closure #1 in ProcessingServerConnection.remoteTarget.getter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = MEMORY[0x277D85000];
  if (!Strong || (v5 = Strong, v6 = (*((*MEMORY[0x277D85000] & *Strong) + 0x70))(), v5, !v6))
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = v7;
    if (one-time initialization token for queue != -1)
    {
      swift_once();
    }

    v9 = static ProcessingServerConnection.queue;
    v6 = [objc_opt_self() protocolForProtocol_];
    (*((*v4 & *v8) + 0xB8))(0xD000000000000027, 0x8000000216579690, v9, v6, 0);
  }

LABEL_8:
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = (*((*v4 & *v10) + 0x70))();

    if (!v12)
    {
LABEL_12:
      v10 = 0;
      goto LABEL_13;
    }

    v10 = swift_dynamicCastObjCProtocolConditional();
    if (!v10)
    {

      goto LABEL_12;
    }
  }

LABEL_13:
  *a2 = v10;
  return swift_unknownObjectRelease();
}

uint64_t ProcessingServerConnection.runFullProcessing()()
{
  v1[19] = v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](ProcessingServerConnection.runFullProcessing(), 0, 0);
}

{
  if (one-time initialization token for uiRendering != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v1, static CommonSignposter.uiRendering);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v2, v3, v5, "UIService_FetchSuggestionsFromService", "", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v9 = v0[21];
  v10 = v0[19];

  (*(v9 + 16))(v7, v6, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[24] = OSSignpostIntervalState.init(id:isOpen:)();
  v11 = [v10 remoteTarget];
  v0[25] = v11;
  if (v11)
  {
    v12 = v11;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = ProcessingServerConnection.runFullProcessing();
    v13 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccys5Error_pSgs5NeverOGMd);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
    v0[13] = &block_descriptor_3;
    v0[14] = v13;
    [v12 runFullProcessingWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    v14 = swift_allocError();
    $defer #1 () in ProcessingServerConnection.runFullProcessing()();

    (*(v0[21] + 8))(v0[23], v0[20]);

    v15 = v0[1];

    return v15(v14);
  }
}

{

  return MEMORY[0x2822009F8](ProcessingServerConnection.runFullProcessing(), 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = v0[18];
  $defer #1 () in ProcessingServerConnection.runFullProcessing()();

  (*(v0[21] + 8))(v0[23], v0[20]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t $defer #1 () in ProcessingServerConnection.runFullProcessing()()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for uiRendering != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v8, static CommonSignposter.uiRendering);
  v9 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v10 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

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
    v13 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v9, v10, v13, "UIService_FetchSuggestionsFromService", v11, v12, 2u);
    MEMORY[0x21CE94770](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?(uint64_t a1, void *a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t @objc closure #1 in ProcessingServerConnection.runFullProcessing()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.runFullProcessing();

  return ProcessingServerConnection.runFullProcessing()();
}

uint64_t @objc closure #1 in ProcessingServerConnection.runFullProcessing()(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (a1)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 24);
  (v7)[2](v7, v6);

  _Block_release(v7);
  v8 = *(v5 + 8);

  return v8();
}

uint64_t ProcessingServerConnection.realTimeCheckForNotification(significantLocationEnabled:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v3[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_s5Error_pSgtMd);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](ProcessingServerConnection.realTimeCheckForNotification(significantLocationEnabled:), 0, 0);
}

uint64_t ProcessingServerConnection.realTimeCheckForNotification(significantLocationEnabled:)()
{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 184);
    v4 = *(v0 + 152);
    *(v0 + 16) = v0;
    *(v0 + 56) = v3;
    *(v0 + 24) = ProcessingServerConnection.realTimeCheckForNotification(significantLocationEnabled:);
    v5 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation4DateVSg_s5Error_pSgts5NeverOGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSDate?, @unowned NSError?) -> () with result type (Date?, Error?);
    *(v0 + 104) = &block_descriptor_3;
    *(v0 + 112) = v5;
    [v2 realTimeCheckForNotificationWithSignificantLocationEnabled:v4 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v6 = *(v0 + 144);
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    v8 = swift_allocError();

    v9 = *(v0 + 8);

    return v9(v8);
  }
}

{

  return MEMORY[0x2822009F8](ProcessingServerConnection.realTimeCheckForNotification(significantLocationEnabled:), 0, 0);
}

{
  v1 = v0[23];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[18];
  swift_unknownObjectRelease();
  outlined init with take of URL?(v1, v2, &_s10Foundation4DateVSg_s5Error_pSgtMd);
  v5 = *(v2 + *(v3 + 48));
  outlined init with take of URL?(v2, v4, &_s10Foundation4DateVSgMd);

  v6 = v0[1];

  return v6(v5);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSDate?, @unowned NSError?) -> () with result type (Date?, Error?)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_s5Error_pSgtMd);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  outlined init with take of URL?(v8, v11, &_s10Foundation4DateVSgMd);
  *&v11[*(v9 + 48)] = a3;
  v15 = *(*(v12 + 64) + 40);
  v16 = a3;
  outlined init with take of URL?(v11, v15, &_s10Foundation4DateVSg_s5Error_pSgtMd);
  return swift_continuation_resume();
}

uint64_t @objc closure #1 in ProcessingServerConnection.realTimeCheckForNotification(significantLocationEnabled:)(void *a1, const void *a2, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v3[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  v8 = a1;
  a3;
  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = @objc closure #1 in ProcessingServerConnection.realTimeCheckForNotification(significantLocationEnabled:);

  return ProcessingServerConnection.realTimeCheckForNotification(significantLocationEnabled:)(v7, v8);
}

uint64_t @objc closure #1 in ProcessingServerConnection.realTimeCheckForNotification(significantLocationEnabled:)(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  outlined init with take of URL?(v4, v5, &_s10Foundation4DateVSgMd);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v5, 1, v9);
  isa = 0;
  if (v11 != 1)
  {
    v13 = *(v3 + 32);
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v13, v9);
  }

  if (a1)
  {
    v14 = _convertErrorToNSError(_:)();
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v3 + 48);
  (v15)[2](v15, isa, v14);
  _Block_release(v15);

  v16 = *(v8 + 8);

  return v16();
}

uint64_t ProcessingServerConnection.cloudCancelSync()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.cloudCancelSync(), 0, 0);
}

{
  v1 = [*(v0 + 152) remoteTarget];
  *(v0 + 160) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.cloudCancelSync();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccys5Error_pSgs5NeverOGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
    *(v0 + 104) = &block_descriptor_6_0;
    *(v0 + 112) = v3;
    [v2 cloudCancelSyncWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    v4 = swift_allocError();
    v5 = *(v0 + 8);

    return v5(v4);
  }
}

{

  return MEMORY[0x2822009F8](ProcessingServerConnection.cloudCancelSync(), 0, 0);
}

uint64_t @objc closure #1 in ProcessingServerConnection.cloudCancelSync()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.cloudCancelSync();

  return ProcessingServerConnection.cloudCancelSync()();
}

uint64_t ProcessingServerConnection.cloudSync()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.cloudSync(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.cloudSync();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_9;
    *(v0 + 112) = v3;
    [v2 deviceRefreshWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    v4 = swift_allocError();
    v5 = *(v0 + 8);

    return v5(v4);
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = ProcessingServerConnection.cloudSync();
  }

  else
  {
    v2 = ProcessingServerConnection.cloudSync();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1(0);
}

{
  v1 = *(v0 + 176);
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x282200950](v4);
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.cloudSync()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.cloudCancelSync();

  return ProcessingServerConnection.cloudSync()();
}

uint64_t ProcessingServerConnection.databaseWipe()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.databaseWipe(), 0, 0);
}

{
  v1 = [*(v0 + 152) remoteTarget];
  *(v0 + 160) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseWipe();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccys5Error_pSgs5NeverOGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
    *(v0 + 104) = &block_descriptor_12;
    *(v0 + 112) = v3;
    [v2 databaseWipeWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    v4 = swift_allocError();
    v5 = *(v0 + 8);

    return v5(v4);
  }
}

{

  return MEMORY[0x2822009F8](ProcessingServerConnection.databaseWipe(), 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t @objc closure #1 in ProcessingServerConnection.databaseWipe()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.cloudCancelSync();

  return ProcessingServerConnection.databaseWipe()();
}

uint64_t ProcessingServerConnection.databaseSnapshotList()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.databaseSnapshotList(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_15_0;
    *(v0 + 112) = v3;
    [v2 databaseSnapshotListWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = ProcessingServerConnection.databaseSnapshotList();
  }

  else
  {
    v2 = ProcessingServerConnection.databaseSnapshotList();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t @objc closure #1 in ProcessingServerConnection.databaseSnapshotList()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.databaseSnapshotList()();
}

uint64_t ProcessingServerConnection.databaseSnapshotDelete(sequence:)(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x2822009F8](ProcessingServerConnection.databaseSnapshotDelete(sequence:), 0, 0);
}

uint64_t ProcessingServerConnection.databaseSnapshotDelete(sequence:)()
{
  v1 = [*(v0 + 168) remoteTarget];
  *(v0 + 176) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 160);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotDelete(sequence:);
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_19_0;
    *(v0 + 112) = v4;
    [v2 databaseSnapshotDeleteWithSequence:v3 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = ProcessingServerConnection.databaseSnapshotDelete(sequence:);
  }

  else
  {
    v2 = ProcessingServerConnection.databaseSnapshotDelete(sequence:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[1];

  return v3(v1, v2);
}

{
  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in ProcessingServerConnection.databaseSnapshotDelete(sequence:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotDelete(sequence:);

  return ProcessingServerConnection.databaseSnapshotDelete(sequence:)(v6);
}

uint64_t @objc closure #1 in ProcessingServerConnection.databaseSnapshotDelete(sequence:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (v4)
  {
    v11 = _convertErrorToNSError(_:)();

    v12 = v11;
    v13 = 0;
  }

  else
  {
    v14 = MEMORY[0x21CE91FC0](a1, a2);

    v13 = v14;
    v12 = 0;
    v11 = v14;
  }

  v15 = *(v7 + 32);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

uint64_t ProcessingServerConnection.deviceRefresh()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.deviceRefresh(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_23_0;
    *(v0 + 112) = v3;
    [v2 deviceRefreshWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceRefresh()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.deviceRefresh()();
}

uint64_t ProcessingServerConnection.deviceList()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.deviceList(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.deviceList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_27;
    *(v0 + 112) = v3;
    [v2 deviceListWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = ProcessingServerConnection.deviceList();
  }

  else
  {
    v2 = ProcessingServerConnection.deviceList();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[1];

  return v3(v1, v2);
}

{
  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceList()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.deviceList();

  return ProcessingServerConnection.deviceList()();
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceList()(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    v13 = MEMORY[0x21CE91FC0](a1, a2);

    v12 = v13;
    v11 = 0;
    v10 = v13;
  }

  v14 = *(v7 + 24);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t ProcessingServerConnection.deviceListJSON()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.deviceListJSON(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_31;
    *(v0 + 112) = v3;
    [v2 deviceListJSONWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceListJSON()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.deviceListJSON()();
}

uint64_t ProcessingServerConnection.deviceMakePrimary()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.deviceMakePrimary(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_35;
    *(v0 + 112) = v3;
    [v2 deviceMakePrimaryWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceMakePrimary()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.deviceMakePrimary()();
}

uint64_t ProcessingServerConnection.deviceMakePrimaryJSON()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.deviceMakePrimaryJSON(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_39;
    *(v0 + 112) = v3;
    [v2 deviceMakePrimaryJSONWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceMakePrimaryJSON()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.deviceMakePrimaryJSON()();
}

uint64_t ProcessingServerConnection.deviceAbdicatePrimary()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.deviceAbdicatePrimary(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_43;
    *(v0 + 112) = v3;
    [v2 deviceAbdicatePrimaryWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceAbdicatePrimary()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.deviceAbdicatePrimary()();
}

uint64_t ProcessingServerConnection.deviceAbdicatePrimaryJSON()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.deviceAbdicatePrimaryJSON(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_47;
    *(v0 + 112) = v3;
    [v2 deviceAbdicatePrimaryJSONWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceAbdicatePrimaryJSON()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.deviceAbdicatePrimaryJSON()();
}

uint64_t ProcessingServerConnection.deviceAutoNominate()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.deviceAutoNominate(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_51;
    *(v0 + 112) = v3;
    [v2 deviceAutoNominateWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceAutoNominate()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.deviceAutoNominate()();
}

uint64_t ProcessingServerConnection.deviceAutoNominateJSON()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.deviceAutoNominateJSON(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_55;
    *(v0 + 112) = v3;
    [v2 deviceAutoNominateJSONWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceAutoNominateJSON()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.deviceAutoNominateJSON()();
}

uint64_t ProcessingServerConnection.deviceNominate(devicePrefix:bundleSuffix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  return MEMORY[0x2822009F8](ProcessingServerConnection.deviceNominate(devicePrefix:bundleSuffix:), 0, 0);
}

uint64_t ProcessingServerConnection.deviceNominate(devicePrefix:bundleSuffix:)()
{
  v1 = [*(v0 + 192) remoteTarget];
  *(v0 + 200) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 184);
    v4 = MEMORY[0x21CE91FC0](*(v0 + 160), *(v0 + 168));
    *(v0 + 208) = v4;
    if (v3)
    {
      v3 = MEMORY[0x21CE91FC0](*(v0 + 176), *(v0 + 184));
    }

    *(v0 + 216) = v3;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.deviceNominate(devicePrefix:bundleSuffix:);
    v5 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_59;
    *(v0 + 112) = v5;
    [v2 deviceNominateWithDevicePrefix:v4 bundleSuffix:v3 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = ProcessingServerConnection.deviceNominate(devicePrefix:bundleSuffix:);
  }

  else
  {
    v2 = ProcessingServerConnection.deviceNominate(devicePrefix:bundleSuffix:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = v0[26];
  v1 = v0[27];
  swift_unknownObjectRelease();
  v4 = v0[18];
  v3 = v0[19];

  v5 = v0[1];

  return v5(v4, v3);
}

{
  v1 = v0[27];
  v2 = v0[26];
  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceNominate(devicePrefix:bundleSuffix:)(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v4[5] = v11;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = @objc closure #1 in ProcessingServerConnection.deviceNominate(devicePrefix:bundleSuffix:);

  return ProcessingServerConnection.deviceNominate(devicePrefix:bundleSuffix:)(v7, v9, a2, v11);
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceNominate(devicePrefix:bundleSuffix:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    v10 = MEMORY[0x21CE91FC0](a1, a2);

    v12 = v10;
    v11 = 0;
  }

  v13 = *(v7 + 24);
  (v13)[2](v13, v12, v11);

  _Block_release(v13);
  v14 = *(v9 + 8);

  return v14();
}

uint64_t ProcessingServerConnection.deviceNominateJSON(devicePrefix:bundleSuffix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  return MEMORY[0x2822009F8](ProcessingServerConnection.deviceNominateJSON(devicePrefix:bundleSuffix:), 0, 0);
}

uint64_t ProcessingServerConnection.deviceNominateJSON(devicePrefix:bundleSuffix:)()
{
  v1 = [*(v0 + 192) remoteTarget];
  *(v0 + 200) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 184);
    v4 = MEMORY[0x21CE91FC0](*(v0 + 160), *(v0 + 168));
    *(v0 + 208) = v4;
    if (v3)
    {
      v3 = MEMORY[0x21CE91FC0](*(v0 + 176), *(v0 + 184));
    }

    *(v0 + 216) = v3;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.deviceNominateJSON(devicePrefix:bundleSuffix:);
    v5 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_63;
    *(v0 + 112) = v5;
    [v2 deviceNominateJSONWithDevicePrefix:v4 bundleSuffix:v3 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = ProcessingServerConnection.deviceNominateJSON(devicePrefix:bundleSuffix:);
  }

  else
  {
    v2 = ProcessingServerConnection.deviceNominateJSON(devicePrefix:bundleSuffix:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceNominateJSON(devicePrefix:bundleSuffix:)(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v4[5] = v11;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = @objc closure #1 in ProcessingServerConnection.deviceNominateJSON(devicePrefix:bundleSuffix:);

  return ProcessingServerConnection.deviceNominateJSON(devicePrefix:bundleSuffix:)(v7, v9, a2, v11);
}

uint64_t ProcessingServerConnection.deviceNominateDecline()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.deviceNominateDecline(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_67;
    *(v0 + 112) = v3;
    [v2 deviceNominateDeclineWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceNominateDecline()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.deviceNominateDecline()();
}

uint64_t ProcessingServerConnection.deviceNominateDeclineJSON()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.deviceNominateDeclineJSON(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_71;
    *(v0 + 112) = v3;
    [v2 deviceNominateDeclineJSONWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceNominateDeclineJSON()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.deviceNominateDeclineJSON()();
}

uint64_t ProcessingServerConnection.deviceNewlyOnboarded()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.deviceNewlyOnboarded(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_75;
    *(v0 + 112) = v3;
    [v2 deviceNewlyOnboardedWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceNewlyOnboarded()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.deviceNewlyOnboarded()();
}

uint64_t ProcessingServerConnection.deviceNewlyOnboardedClear()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.deviceNewlyOnboardedClear(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_79;
    *(v0 + 112) = v3;
    [v2 deviceNewlyOnboardedClearWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.deviceNewlyOnboardedClear()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.deviceNewlyOnboardedClear()();
}

uint64_t ProcessingServerConnection.keepProcessUp()()
{
  *(v1 + 144) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.keepProcessUp(), 0, 0);
}

{
  v1 = [*(v0 + 144) remoteTarget];
  *(v0 + 152) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 24) = ProcessingServerConnection.keepProcessUp();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type ();
    *(v0 + 104) = &block_descriptor_83;
    *(v0 + 112) = v3;
    [v2 keepProcessUpWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = ProcessingServerConnection.keepProcessUp();
  }

  else
  {
    v2 = ProcessingServerConnection.keepProcessUp();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.keepProcessUp()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.keepProcessUp();

  return ProcessingServerConnection.keepProcessUp()();
}

uint64_t ProcessingServerConnection.keepUIActive()()
{
  *(v1 + 144) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.keepUIActive(), 0, 0);
}

{
  v1 = [*(v0 + 144) remoteTarget];
  *(v0 + 152) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 24) = ProcessingServerConnection.keepUIActive();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type ();
    *(v0 + 104) = &block_descriptor_87;
    *(v0 + 112) = v3;
    [v2 keepUIActiveWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = ProcessingServerConnection.keepUIActive();
  }

  else
  {
    v2 = ProcessingServerConnection.keepUIActive();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in ProcessingServerConnection.keepUIActive()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.keepUIActive();

  return ProcessingServerConnection.keepUIActive()();
}

uint64_t @objc closure #1 in ProcessingServerConnection.keepUIActive()()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t ProcessingServerConnection.testInjectBadRecordChange()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.testInjectBadRecordChange(), 0, 0);
}

{
  v1 = [*(v0 + 152) remoteTarget];
  *(v0 + 160) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.cloudCancelSync();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccys5Error_pSgs5NeverOGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
    *(v0 + 104) = &block_descriptor_91;
    *(v0 + 112) = v3;
    [v2 testInjectBadRecordChangeWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    v4 = swift_allocError();
    v5 = *(v0 + 8);

    return v5(v4);
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.testInjectBadRecordChange()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.cloudCancelSync();

  return ProcessingServerConnection.testInjectBadRecordChange()();
}

uint64_t ProcessingServerConnection.cap()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.cap(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_94;
    *(v0 + 112) = v3;
    [v2 capWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.cap()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.cap()();
}

uint64_t ProcessingServerConnection.capList()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.capList(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_98;
    *(v0 + 112) = v3;
    [v2 capListWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.capList()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.capList()();
}

uint64_t ProcessingServerConnection.capSet(jsonMock:jsonBlock:jsonForce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[25] = a6;
  v7[26] = v6;
  v7[23] = a4;
  v7[24] = a5;
  v7[21] = a2;
  v7[22] = a3;
  v7[20] = a1;
  return MEMORY[0x2822009F8](ProcessingServerConnection.capSet(jsonMock:jsonBlock:jsonForce:), 0, 0);
}

uint64_t ProcessingServerConnection.capSet(jsonMock:jsonBlock:jsonForce:)()
{
  v1 = [*(v0 + 208) remoteTarget];
  *(v0 + 216) = v1;
  if (v1)
  {
    v2 = v1;
    if (*(v0 + 168))
    {
      v3 = MEMORY[0x21CE91FC0](*(v0 + 160));
    }

    else
    {
      v3 = 0;
    }

    *(v0 + 224) = v3;
    if (*(v0 + 184))
    {
      v6 = MEMORY[0x21CE91FC0](*(v0 + 176));
    }

    else
    {
      v6 = 0;
    }

    *(v0 + 232) = v6;
    if (*(v0 + 200))
    {
      v7 = MEMORY[0x21CE91FC0](*(v0 + 192));
    }

    else
    {
      v7 = 0;
    }

    *(v0 + 240) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.capSet(jsonMock:jsonBlock:jsonForce:);
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_102;
    *(v0 + 112) = v8;
    [v2 capSetWithJsonMock:v3 jsonBlock:v6 jsonForce:v7 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = ProcessingServerConnection.capSet(jsonMock:jsonBlock:jsonForce:);
  }

  else
  {
    v2 = ProcessingServerConnection.capSet(jsonMock:jsonBlock:jsonForce:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  swift_unknownObjectRelease();
  v5 = v0[18];
  v4 = v0[19];

  v6 = v0[1];

  return v6(v5, v4);
}

{
  v1 = v0[30];
  v3 = v0[28];
  v2 = v0[29];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t @objc closure #1 in ProcessingServerConnection.capSet(jsonMock:jsonBlock:jsonForce:)(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v5[4] = v10;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    v5[5] = 0;
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v11 = 0;
  v5[4] = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v5[5] = v12;
  if (a3)
  {
LABEL_4:
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  v5[6] = v15;
  a5;
  v16 = swift_task_alloc();
  v5[7] = v16;
  *v16 = v5;
  v16[1] = @objc closure #1 in ProcessingServerConnection.capSet(jsonMock:jsonBlock:jsonForce:);

  return ProcessingServerConnection.capSet(jsonMock:jsonBlock:jsonForce:)(a1, v11, a2, v13, a3, v15);
}

uint64_t @objc closure #1 in ProcessingServerConnection.capSet(jsonMock:jsonBlock:jsonForce:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    v10 = MEMORY[0x21CE91FC0](a1, a2);

    v12 = v10;
    v11 = 0;
  }

  v13 = *(v7 + 24);
  (v13)[2](v13, v12, v11);

  _Block_release(v13);
  v14 = *(v9 + 8);

  return v14();
}

uint64_t ProcessingServerConnection.capReset()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.capReset(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_106;
    *(v0 + 112) = v3;
    [v2 capResetWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.capReset()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.capReset()();
}

uint64_t ProcessingServerConnection.capCommon()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.capCommon(), 0, 0);
}

{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.databaseSnapshotList();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 104) = &block_descriptor_110;
    *(v0 + 112) = v3;
    [v2 capCommonWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.capCommon()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.databaseSnapshotList();

  return ProcessingServerConnection.capCommon()();
}

uint64_t ProcessingServerConnection.beginSystemTask(withTask:completionHandler:)(uint64_t a1, void (*a2)(__CFString *, char *, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CocoaError.Code();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = type metadata accessor for CocoaError();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = aBlock - v14;
  v16 = [v4 remoteTarget];
  if (v16)
  {
    v17 = v16;
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MOTaskAction, @in_guaranteed UUID?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_114;
    v18 = _Block_copy(aBlock);

    [v17 beginSystemTaskWithTask:a1 completionHandler:v18];
    _Block_release(v18);
    return swift_unknownObjectRelease();
  }

  else
  {
    v20 = type metadata accessor for UUID();
    v21 = (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
    MEMORY[0x21CE90060](v21);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CocoaError and conformance CocoaError(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v22 = CocoaError._nsError.getter();
    (*(v10 + 8))(v12, v9);
    a2(@"completed", v15, v22);

    return outlined destroy of UTType?(v15, &_s10Foundation4UUIDVSgMd);
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MOTaskAction, @in_guaranteed UUID?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a2;
  v15 = a4;
  v11(v14, v10, a4);

  return outlined destroy of UTType?(v10, &_s10Foundation4UUIDVSgMd);
}

void ProcessingServerConnection.continueSystemTask(withToken:completionHandler:)(uint64_t a1, void (*a2)(__CFString *, Class, void *), uint64_t a3)
{
  v6 = type metadata accessor for CocoaError.Code();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for CocoaError();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 remoteTarget];
  if (v11)
  {
    v12 = v11;
    v13.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MOTaskAction, @guaranteed NSNumber, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_117;
    v14 = _Block_copy(aBlock);

    [v12 continueSystemTaskWithToken:v13.super.isa completionHandler:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    v13.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    MEMORY[0x21CE90060]();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CocoaError and conformance CocoaError(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v15 = CocoaError._nsError.getter();
    (*(v8 + 8))(v10, v7);
    a2(@"completed", v13.super.isa, v15);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MOTaskAction, @guaranteed NSNumber, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, a4);
}

void ProcessingServerConnection.endSystemTask(withToken:completionHandler:)(uint64_t a1, void (*a2)(__CFString *, Class), uint64_t a3)
{
  v6 = type metadata accessor for CocoaError.Code();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for CocoaError();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 remoteTarget];
  if (v11)
  {
    v12 = v11;
    v13.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MOTaskAction, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_120;
    v14 = _Block_copy(aBlock);

    [v12 endSystemTaskWithToken:v13.super.isa completionHandler:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x21CE90060]();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CocoaError and conformance CocoaError(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v13.super.isa = CocoaError._nsError.getter();
    (*(v8 + 8))(v10, v7);
    a2(@"completed", v13.super.isa);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MOTaskAction, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t @objc ProcessingServerConnection.continueSystemTask(withToken:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, id, void *))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v12);
  v13 = a1;
  a5(v11, v13, v12);
  _Block_release(v12);
  _Block_release(v12);

  return (*(v9 + 8))(v11, v8);
}

id ProcessingServerConnection.resetOnboardingDeferralCount(_:)(uint64_t a1, SEL *a2)
{
  result = [v2 remoteTarget];
  if (result)
  {
    [result *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void @objc ProcessingServerConnection.resetOnboardingDeferralCount(_:)(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = a3;
  v8 = a1;
  v7 = [v8 remoteTarget];
  if (v7)
  {
    [v7 *a4];
    swift_unknownObjectRelease();
  }
}

NSNumber_optional __swiftcall ProcessingServerConnection.isOnboarded()()
{
  v1 = [v0 remoteTarget];
  if (v1)
  {
    v3 = [v1 isOnboarded];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  result.value.super.super.isa = v4;
  result.is_nil = v2;
  return result;
}

uint64_t ProcessingServerConnection.setOnboardedAsync(flag:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](ProcessingServerConnection.setOnboardedAsync(flag:), 0, 0);
}

uint64_t ProcessingServerConnection.setOnboardedAsync(flag:)()
{
  v1 = [*(v0 + 160) remoteTarget];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 152);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.setOnboardedAsync(flag:);
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8NSNumberCSgs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSNumber?, @unowned NSError?) -> () with result type NSNumber?;
    *(v0 + 104) = &block_descriptor_123;
    *(v0 + 112) = v4;
    [v2 setOnboardedAsyncWithFlag:v3 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = ProcessingServerConnection.deviceList();
  }

  else
  {
    v2 = ProcessingServerConnection.setOnboardedAsync(flag:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t @objc closure #1 in ProcessingServerConnection.setOnboardedAsync(flag:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in ProcessingServerConnection.setOnboardedAsync(flag:);

  return ProcessingServerConnection.setOnboardedAsync(flag:)(v6);
}

uint64_t @objc closure #1 in ProcessingServerConnection.setOnboardedAsync(flag:)(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t ProcessingServerConnection.isUIActive()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](ProcessingServerConnection.isUIActive(), 0, 0);
}

{
  v1 = [*(v0 + 152) remoteTarget];
  *(v0 + 160) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.isUIActive();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8NSNumberCSgs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSNumber?, @unowned NSError?) -> () with result type NSNumber?;
    *(v0 + 104) = &block_descriptor_127;
    *(v0 + 112) = v3;
    [v2 isUIActiveWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = ProcessingServerConnection.isUIActive();
  }

  else
  {
    v2 = ProcessingServerConnection.isUIActive();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in ProcessingServerConnection.isUIActive()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.isUIActive();

  return ProcessingServerConnection.isUIActive()();
}

uint64_t @objc closure #1 in ProcessingServerConnection.isUIActive()(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

NSNumber_optional __swiftcall ProcessingServerConnection.setOnboarded(flag:)(NSNumber flag)
{
  v3 = [v1 remoteTarget];
  if (v3)
  {
    v5 = [v3 setOnboardedWithFlag_];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  result.value.super.super.isa = v6;
  result.is_nil = v4;
  return result;
}

uint64_t ProcessingServerConnection.runNotificationServicing(for:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](ProcessingServerConnection.runNotificationServicing(for:), 0, 0);
}

uint64_t ProcessingServerConnection.runNotificationServicing(for:)()
{
  v1 = [*(v0 + 168) remoteTarget];
  *(v0 + 176) = v1;
  if (v1)
  {
    v2 = v1;
    if (*(v0 + 160))
    {
      v3 = MEMORY[0x21CE91FC0](*(v0 + 152));
    }

    else
    {
      v3 = 0;
    }

    *(v0 + 184) = v3;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.runNotificationServicing(for:);
    v7 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccys5Error_pSgs5NeverOGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
    *(v0 + 104) = &block_descriptor_131;
    *(v0 + 112) = v7;
    [v2 runNotificationServicingFor:v3 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError();
    v4 = swift_allocError();
    v5 = *(v0 + 8);

    return v5(v4);
  }
}

{

  return MEMORY[0x2822009F8](ProcessingServerConnection.runNotificationServicing(for:), 0, 0);
}

{
  v1 = *(v0 + 184);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t @objc closure #1 in ProcessingServerConnection.runNotificationServicing(for:)(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in ProcessingServerConnection.runNotificationServicing(for:);

  return ProcessingServerConnection.runNotificationServicing(for:)(a1, v7);
}

uint64_t @objc closure #1 in ProcessingServerConnection.runNotificationServicing(for:)(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (a1)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 24);
  (v7)[2](v7, v6);

  _Block_release(v7);
  v8 = *(v5 + 8);

  return v8();
}

void ProcessingServerConnection.setNotificationSettingWith(_:shouldUpdateDefaults:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for CocoaError.Code();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for CocoaError();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v5 remoteTarget];
  if (v15)
  {
    v16 = v15;
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_134;
    v17 = _Block_copy(aBlock);

    [v16 setNotificationSettingWithScheduleItem:a1 shouldUpdateDefaults:a2 completionHandler:v17];
    _Block_release(v17);
    swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x21CE90060]();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CocoaError and conformance CocoaError(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v18 = CocoaError._nsError.getter();
    (*(v12 + 8))(v14, v11);
    a3(v18);
  }
}

void ProcessingServerConnection.getAuthorizedAppsForNotificationServicing(handler:)(void (*a1)(void, void *), uint64_t a2)
{
  v5 = type metadata accessor for CocoaError.Code();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for CocoaError();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 remoteTarget];
  if (v10)
  {
    v11 = v10;
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NotificationApprovedApplicationList?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_137;
    v12 = _Block_copy(aBlock);

    [v11 getAuthorizedAppsForNotificationServicingWithHandler_];
    _Block_release(v12);
    swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x21CE90060]();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CocoaError and conformance CocoaError(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v13 = CocoaError._nsError.getter();
    (*(v7 + 8))(v9, v6);
    a1(0, v13);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed NotificationApprovedApplicationList?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NotificationApprovedApplicationList?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void ProcessingServerConnection.handleDefaultAppChange(toBundleID:handler:)(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v9 = type metadata accessor for CocoaError.Code();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = type metadata accessor for CocoaError();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v4 remoteTarget];
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0x21CE91FC0](a1, a2);
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_140;
    v17 = _Block_copy(aBlock);

    [v15 handleDefaultAppChangeToBundleID:v16 handler:v17];
    _Block_release(v17);
    swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x21CE90060]();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CocoaError and conformance CocoaError(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = CocoaError._nsError.getter();
    (*(v11 + 8))(v13, v10);
    a3(v16);
  }
}

uint64_t ProcessingServerConnection.getApplicationsWithDataAccess()()
{
  v1[19] = v0;
  type metadata accessor for CocoaError.Code();
  v1[20] = swift_task_alloc();
  v2 = type metadata accessor for CocoaError();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](ProcessingServerConnection.getApplicationsWithDataAccess(), 0, 0);
}

{
  v1 = [*(v0 + 152) remoteTarget];
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ProcessingServerConnection.getApplicationsWithDataAccess();
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy9MomentsUI23ApprovedApplicationListCSgs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSNumber?, @unowned NSError?) -> () with result type NSNumber?;
    *(v0 + 104) = &block_descriptor_143;
    *(v0 + 112) = v3;
    [v2 getApplicationsWithDataAccessWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v5 = *(v0 + 176);
    v4 = *(v0 + 184);
    v6 = *(v0 + 168);
    MEMORY[0x21CE90060]();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CocoaError and conformance CocoaError(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620]);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v5 + 8))(v4, v6);
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = ProcessingServerConnection.getApplicationsWithDataAccess();
  }

  else
  {
    v2 = ProcessingServerConnection.getApplicationsWithDataAccess();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

{
  swift_willThrow();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSNumber?, @unowned NSError?) -> () with result type NSNumber?(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t @objc closure #1 in ProcessingServerConnection.getApplicationsWithDataAccess()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerConnection.getApplicationsWithDataAccess();

  return ProcessingServerConnection.getApplicationsWithDataAccess()();
}

unint64_t lazy protocol witness table accessor for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError()
{
  result = lazy protocol witness table cache variable for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError;
  if (!lazy protocol witness table cache variable for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError;
  if (!lazy protocol witness table cache variable for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProcessingServerConnection.ProcessingError and conformance ProcessingServerConnection.ProcessingError);
  }

  return result;
}

uint64_t block_copy_helper_112(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.getApplicationsWithDataAccess()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.getApplicationsWithDataAccess()(v2, v3);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t specialized ProcessingServerConnection.beginSystemTask(withTask:completionHandler:)(uint64_t a1, void *a2, void (**a3)(void, void, void, void))
{
  v6 = type metadata accessor for CocoaError.Code();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for CocoaError();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  _Block_copy(a3);
  v18 = [a2 remoteTarget];
  if (v18)
  {
    v19 = v18;
    aBlock[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned MOTaskAction, @unowned NSUUID?, @unowned NSError?) -> ();
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MOTaskAction, @in_guaranteed UUID?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_242;
    v20 = _Block_copy(aBlock);

    [v19 beginSystemTaskWithTask:a1 completionHandler:v20];
    _Block_release(v20);

    return swift_unknownObjectRelease();
  }

  else
  {
    v30 = @"completed";
    v22 = type metadata accessor for UUID();
    v29 = *(v22 - 8);
    v23 = (*(v29 + 56))(v16, 1, 1, v22);
    MEMORY[0x21CE90060](v23);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CocoaError and conformance CocoaError(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v24 = CocoaError._nsError.getter();
    v25 = v7;
    v26 = v29;
    (*(v8 + 8))(v10, v25);
    outlined init with copy of DateInterval?(v16, v14, &_s10Foundation4UUIDVSgMd);
    isa = 0;
    if ((*(v26 + 48))(v14, 1, v22) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v26 + 8))(v14, v22);
    }

    v28 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v30, isa, v28);

    outlined destroy of UTType?(v16, &_s10Foundation4UUIDVSgMd);
  }
}

void specialized ProcessingServerConnection.continueSystemTask(withToken:completionHandler:)(uint64_t a1, void *a2, void (**a3)(void, void, void, void))
{
  v5 = type metadata accessor for CocoaError.Code();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for CocoaError();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  _Block_copy(a3);
  v11 = [a2 remoteTarget];
  if (v11)
  {
    v12 = v11;
    v13.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    aBlock[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned MOTaskAction, @unowned NSNumber, @unowned NSError?) -> ();
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MOTaskAction, @guaranteed NSNumber, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_236;
    v14 = _Block_copy(aBlock);

    [v12 continueSystemTaskWithToken:v13.super.isa completionHandler:v14];
    _Block_release(v14);

    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    MEMORY[0x21CE90060]();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CocoaError and conformance CocoaError(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = CocoaError._nsError.getter();
    (*(v7 + 8))(v9, v6);
    v13.super.isa = _convertErrorToNSError(_:)();
    (a3)[2](a3, @"completed", isa, v13.super.isa);
  }
}

void specialized ProcessingServerConnection.endSystemTask(withToken:completionHandler:)(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = type metadata accessor for CocoaError.Code();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for CocoaError();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  _Block_copy(a3);
  v11 = [a2 remoteTarget];
  if (v11)
  {
    v12 = v11;
    v13.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    aBlock[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NotificationApprovedApplicationList?, @unowned NSError?) -> ();
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MOTaskAction, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_230;
    v14 = _Block_copy(aBlock);

    [v12 endSystemTaskWithToken:v13.super.isa completionHandler:v14];
    _Block_release(v14);

    swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x21CE90060]();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CocoaError and conformance CocoaError(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v15 = CocoaError._nsError.getter();
    (*(v7 + 8))(v9, v6);
    v13.super.isa = _convertErrorToNSError(_:)();
    (a3)[2](a3, @"completed", v13.super.isa);
  }
}

void specialized ProcessingServerConnection.setNotificationSettingWith(_:shouldUpdateDefaults:completionHandler:)(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void, void))
{
  v8 = type metadata accessor for CocoaError.Code();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = type metadata accessor for CocoaError();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  _Block_copy(a4);
  v14 = [a3 remoteTarget];
  if (v14)
  {
    v15 = v14;
    aBlock[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_179;
    v16 = _Block_copy(aBlock);

    [v15 setNotificationSettingWithScheduleItem:a1 shouldUpdateDefaults:a2 completionHandler:v16];
    _Block_release(v16);

    swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x21CE90060]();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CocoaError and conformance CocoaError(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v17 = CocoaError._nsError.getter();
    (*(v10 + 8))(v12, v9);
    v18 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v18);
  }
}

void specialized ProcessingServerConnection.getAuthorizedAppsForNotificationServicing(handler:)(void *a1, void (**a2)(void, void, void))
{
  v4 = type metadata accessor for CocoaError.Code();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for CocoaError();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  _Block_copy(a2);
  v10 = [a1 remoteTarget];
  if (v10)
  {
    v11 = v10;
    aBlock[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NotificationApprovedApplicationList?, @unowned NSError?) -> ();
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NotificationApprovedApplicationList?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_172;
    v12 = _Block_copy(aBlock);

    [v11 getAuthorizedAppsForNotificationServicingWithHandler_];
    _Block_release(v12);

    swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x21CE90060]();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CocoaError and conformance CocoaError(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v13 = CocoaError._nsError.getter();
    (*(v6 + 8))(v8, v5);
    v14 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v14);
  }
}

void specialized ProcessingServerConnection.handleDefaultAppChange(toBundleID:handler:)(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void, void))
{
  v8 = type metadata accessor for CocoaError.Code();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = type metadata accessor for CocoaError();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  _Block_copy(a4);
  v14 = [a3 remoteTarget];
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0x21CE91FC0](a1, a2);
    aBlock[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_166;
    v17 = _Block_copy(aBlock);

    [v15 handleDefaultAppChangeToBundleID:v16 handler:v17];
    _Block_release(v17);

    swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x21CE90060]();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CocoaError and conformance CocoaError(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v18 = CocoaError._nsError.getter();
    (*(v10 + 8))(v12, v9);
    v16 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v16);
  }
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.runNotificationServicing(for:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.runNotificationServicing(for:)(v2, v3, v4);
}

uint64_t _sIeghH_IeAgH_TRTA_187()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.isUIActive()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.isUIActive()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.setOnboardedAsync(flag:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.setOnboardedAsync(flag:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.capCommon()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.capCommon()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.capReset()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.capReset()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.capSet(jsonMock:jsonBlock:jsonForce:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.capSet(jsonMock:jsonBlock:jsonForce:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.capList()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.capList()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.cap()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.cap()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.testInjectBadRecordChange()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.testInjectBadRecordChange()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.keepUIActive()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.keepUIActive()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.keepProcessUp()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.keepProcessUp()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.deviceNewlyOnboardedClear()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.deviceNewlyOnboardedClear()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.deviceNewlyOnboarded()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.deviceNewlyOnboarded()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.deviceNominateDeclineJSON()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.deviceNominateDeclineJSON()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.deviceNominateDecline()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.deviceNominateDecline()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.deviceNominateJSON(devicePrefix:bundleSuffix:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.deviceNominateJSON(devicePrefix:bundleSuffix:)(v2, v3, v5, v4);
}

uint64_t objectdestroy_424Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.deviceNominate(devicePrefix:bundleSuffix:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.deviceNominate(devicePrefix:bundleSuffix:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.deviceAutoNominateJSON()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.deviceAutoNominateJSON()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.deviceAutoNominate()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.deviceAutoNominate()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.deviceAbdicatePrimaryJSON()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.deviceAbdicatePrimaryJSON()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.deviceAbdicatePrimary()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.deviceAbdicatePrimary()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.deviceMakePrimaryJSON()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.deviceMakePrimaryJSON()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.deviceMakePrimary()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.deviceMakePrimary()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.deviceListJSON()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.deviceListJSON()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.deviceList()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.deviceList()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.deviceRefresh()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.deviceRefresh()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.databaseSnapshotDelete(sequence:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.databaseSnapshotDelete(sequence:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.databaseSnapshotList()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.databaseSnapshotList()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.databaseWipe()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.databaseWipe()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.cloudSync()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.cloudSync()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.cloudCancelSync()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.cloudCancelSync()(v2, v3);
}

uint64_t objectdestroy_181Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.realTimeCheckForNotification(significantLocationEnabled:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.realTimeCheckForNotification(significantLocationEnabled:)(v2, v3, v4);
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerConnection.runFullProcessing()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterImage(imageSource:outputURL:);

  return @objc closure #1 in ProcessingServerConnection.runFullProcessing()(v2, v3);
}

uint64_t objectdestroy_153Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t lazy protocol witness table accessor for type CocoaError and conformance CocoaError(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t StateOfMindView.showTertiaryLabel.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v2 = result;
  ObjectType = swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (!v4)
  {

    return 0;
  }

  v5 = v0;
  (*(v4 + 32))(ObjectType, v4);
  v7 = v6;

  if (!v7)
  {
    return 0;
  }

  v8 = OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle;
  swift_beginAccess();
  v9 = *(v5 + v8);
  return v9 == 6 || v9 == 8;
}

uint64_t StateOfMindView.title.getter()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      v6 = (*(v5 + 24))(ObjectType, v5);
      v8 = v7;

      if (v8)
      {
        v9 = OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle;
        swift_beginAccess();
        v10 = *(v1 + v9);
        if (v10 != 8 && v10 != 6)
        {
          return v6;
        }
      }
    }

    else
    {
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = swift_getObjectType();
    v14 = swift_conformsToProtocol2();
    if (v14)
    {
      v15 = (*(*(v14 + 8) + 8))(v13);

      return v15;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t StateOfMindView.subtitle.getter()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      v6 = (*(v5 + 40))(ObjectType, v5);
      v8 = v7;

      if (v8)
      {
        v9 = OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle;
        swift_beginAccess();
        v10 = *(v1 + v9);
        if (v10 != 8 && v10 != 6)
        {
          return v6;
        }
      }
    }

    else
    {
    }
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  if (!v14)
  {

    goto LABEL_13;
  }

  v6 = (*(v14 + 32))(v13, v14);
  v16 = v15;

  if (!v16)
  {
LABEL_13:
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = swift_getObjectType();
      v20 = swift_conformsToProtocol2();
      if (v20)
      {
        v6 = (*(v20 + 48))(v19, v20);

        return v6;
      }
    }

    else
    {
    }

    return 0;
  }

  return v6;
}

uint64_t StateOfMindView.subheading.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      v4 = (*(v3 + 48))(ObjectType, v3);

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *StateOfMindView.init(viewModel:style:)(void *a1, char *a2)
{
  v4 = *a2;
  v5 = OBJC_IVAR____TtC9MomentsUI15StateOfMindView_gradientView;
  type metadata accessor for GradientView();
  *(v2 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = v4;
  v6 = a1;
  v7 = LabeledImageView.init(viewModel:style:)(v6, &v13);
  v8 = v7;
  if (v7)
  {
    v9 = one-time initialization token for accessibilityString;
    v10 = v7;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = MEMORY[0x21CE91FC0](static Constants.accessibilityString, *(&static Constants.accessibilityString + 1));
    [v10 setAccessibilityLabel_];

    v6 = v11;
  }

  return v8;
}

id StateOfMindView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void StateOfMindView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI15StateOfMindView_gradientView;
  type metadata accessor for GradientView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall StateOfMindView.addSubViews()()
{
  LabeledImageView.addSubViews()();
  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI15StateOfMindView_gradientView];
  [v0 addSubview_];

  [v0 sendSubviewToBack_];
}

Swift::Void __swiftcall StateOfMindView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI15StateOfMindView_gradientView];
  [v0 frame];
  [v1 setFrame_];
}

uint64_t StateOfMindView.updateViews(for:)(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = type metadata accessor for MainActor();
  v2[15] = static MainActor.shared.getter();
  v2[16] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v4;
  v2[18] = v3;

  return MEMORY[0x2822009F8](StateOfMindView.updateViews(for:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 168) = a1;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);

  return MEMORY[0x2822009F8](StateOfMindView.updateViews(for:), v4, v3);
}

uint64_t StateOfMindView.updateViews(for:)()
{
  v0[19] = *(v0[13] + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView);
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = StateOfMindView.updateViews(for:);
  v2 = v0[12];

  return LabeledImageView.image(style:)(v2);
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  v3 = *(v2 + OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView);
  if (v1)
  {
    v4 = *(v0 + 168);
    v5 = v3;
    v6 = [v4 imageWithRenderingMode_];
  }

  else
  {
    v7 = v3;
    v4 = 0;
    v6 = 0;
  }

  [v3 setImage_];

  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](StateOfMindView.updateViews(for:), v9, v8);
}

{
  v1 = *(v0 + 96);

  if (v1 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      ObjectType = swift_getObjectType();
      v5 = swift_conformsToProtocol2();
      if (v5)
      {
        v6 = (*(v5 + 56))(ObjectType, v5);
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_25:
    v12 = *(*(*(v0 + 104) + OBJC_IVAR____TtC9MomentsUI15StateOfMindView_gradientView) + OBJC_IVAR____TtC9MomentsUIP33_F25610CE9E90E29B6B7C67E2D8ADA9C612GradientView_gradient);
    goto LABEL_26;
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
    goto LABEL_25;
  }

  v3 = v7;
  v8 = swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  if (!v9)
  {
LABEL_24:

    goto LABEL_25;
  }

  v6 = (*(v9 + 64))(v8, v9);
LABEL_8:
  v10 = v6;
  v11 = *(v0 + 104);

  v12 = *(*(v11 + OBJC_IVAR____TtC9MomentsUI15StateOfMindView_gradientView) + OBJC_IVAR____TtC9MomentsUIP33_F25610CE9E90E29B6B7C67E2D8ADA9C612GradientView_gradient);
  if (!v10)
  {
LABEL_26:
    v22 = v12;
    isa = 0;
    goto LABEL_28;
  }

  if (v10 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v26 = v12;
    if (!i)
    {
      break;
    }

    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x21CE93180](v14, v10);
      }

      else
      {
        if (v14 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v16 = *(v10 + 8 * v14 + 32);
      }

      v17 = v16;
      v12 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v18 = [v16 CGColor];
      type metadata accessor for CGColorRef(0);
      *(v0 + 40) = v19;

      *(v0 + 16) = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      }

      v21 = *(v15 + 2);
      v20 = *(v15 + 3);
      if (v21 >= v20 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v15);
      }

      *(v15 + 2) = v21 + 1;
      outlined init with take of Any((v0 + 16), &v15[32 * v21 + 32]);
      ++v14;
      if (v12 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_27:

  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = v26;
LABEL_28:
  [v22 setColors_];

  v24 = *(v0 + 8);

  return v24();
}