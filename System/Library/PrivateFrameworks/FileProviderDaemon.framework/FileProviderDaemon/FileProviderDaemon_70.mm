uint64_t sub_1CF74EA64(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1CEFD57E0(0, &unk_1EDEA3668, 0x1E6964E80);
  v3 = sub_1CF9E6D48();

  v2(v3);
}

uint64_t sub_1CF74EAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id *))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;

    v10 = v9;
    if (objc_sync_enter(v10))
    {
      swift_unknownObjectRetain();

      sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, v10);
    }

    sub_1CF74EC04((a3 + 16), (a4 + 16), a5);
    if (objc_sync_exit(v10))
    {
      swift_unknownObjectRetain();

      sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, v10);
    }
  }

  return result;
}

void sub_1CF74EC04(_BYTE *a1, id *a2, void (*a3)(id *))
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    *a1 = 1;
    swift_beginAccess();
    [*a2 cancel];
    v11 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v12 = sub_1CF9E6108();
    v13 = sub_1CF9E72A8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1CEFC7000, v12, v13, "Query to spotlight taking too long, cancelling it", v14, 2u);
      MEMORY[0x1D386CDC0](v14, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v15 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:0];
    v19 = 1;
    v17[0] = v15;
    v18 = 1;
    a3(v17);
  }
}

void sub_1CF74EE24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v49[1] = a6;
  v50 = a5;
  v19 = sub_1CF9E6118();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v26 = objc_sync_enter(v25);
    if (!v26)
    {
      sub_1CF74F3BC((a3 + 16));
      v27 = objc_sync_exit(v25);
      if (v27)
      {
        MEMORY[0x1EEE9AC00](v27);
        v49[-2] = v25;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v49[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      if (a1)
      {
        v28 = a1;
        v29 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v30 = a1;
        v31 = sub_1CF9E6108();
        v32 = sub_1CF9E72A8();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          v35 = a1;
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v33 + 4) = v36;
          *v34 = v36;
          _os_log_impl(&dword_1CEFC7000, v31, v32, "Cannot query spotlight for telemetry data: %@", v33, 0xCu);
          sub_1CEFCCC44(v34, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v34, -1, -1);
          MEMORY[0x1D386CDC0](v33, -1, -1);
        }

        (*(v20 + 8))(v23, v19);
        v55 = 1;
        *v57 = a1;
        *&v57[8] = v51;
        *&v57[24] = v52;
        *&v57[40] = v53;
        *&v57[56] = v54;
        v58 = 1;
        v37 = a1;
        v50(v57);

        goto LABEL_10;
      }

      swift_beginAccess();
      v26 = [*(a8 + 16) foundItemCount];
      if ((v26 & 0x8000000000000000) == 0)
      {
        v38 = v26;
        v49[0] = a15;
        swift_beginAccess();
        *(a7 + 24) = v38;
        swift_beginAccess();
        v39 = *(a9 + 16);
        swift_beginAccess();
        *(a7 + 32) = v39;
        swift_beginAccess();
        v40 = *(a10 + 16);
        swift_beginAccess();
        *(a7 + 40) = v40;
        swift_beginAccess();
        v41 = *(a11 + 16);
        swift_beginAccess();
        *(a7 + 48) = v41;
        swift_beginAccess();
        v42 = *(a12 + 16);
        swift_beginAccess();
        *(a7 + 56) = v42;
        swift_beginAccess();
        v43 = *(a13 + 16);
        swift_beginAccess();
        *(a7 + 64) = v43;
        swift_beginAccess();
        v44 = *(a14 + 16);
        swift_beginAccess();
        *(a7 + 72) = v44;
        v45 = v49[0];
        swift_beginAccess();
        v46 = *(v45 + 16);
        swift_beginAccess();
        *(a7 + 80) = v46;
        swift_beginAccess();
        v47 = *(a7 + 64);
        *&v57[32] = *(a7 + 48);
        *&v57[48] = v47;
        *&v57[64] = *(a7 + 80);
        v48 = *(a7 + 32);
        *v57 = *(a7 + 16);
        *&v57[16] = v48;
        v56 = 0;
        v58 = 0;
        v50(v57);
LABEL_10:

        return;
      }

      __break(1u);
    }

    MEMORY[0x1EEE9AC00](v26);
    v49[-2] = v25;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, &v49[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }
}

uint64_t sub_1CF74F3BC(_BYTE *a1)
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*a1)
  {
    v7 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v8 = sub_1CF9E6108();
    v9 = sub_1CF9E7288();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1CEFC7000, v8, v9, "Query to spotlight for telemetry was cancelled because it took too long", v10, 2u);
      MEMORY[0x1D386CDC0](v10, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong invalidate];

    result = swift_beginAccess();
    *a1 = 1;
  }

  return result;
}

void sub_1CF74F5AC(void *a1, void (*a2)(unint64_t *), uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [a1 domain];
  if (v6)
  {

    if ([a1 isIndexingEnabled])
    {
      v13[0] = 0;
      domain_answer = os_eligibility_get_domain_answer();
      v9 = domain_answer == sub_1CF9E61A8() && v13[0] == 4;
      sub_1CF74D164(v9, 1, a2, a3);
      goto LABEL_14;
    }
  }

  else
  {
    v10 = FPDomainUnavailableError();
    if (v10)
    {
LABEL_13:
      v11 = v10;
      v13[0] = v10;
      v14 = 1;
      a2(v13);

LABEL_14:
      v12 = *MEMORY[0x1E69E9840];
      return;
    }

    __break(1u);
  }

  v10 = FPDomainUnavailableError();
  if (v10)
  {
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t FPIndexDropReason.description.getter()
{
  v0 = FPHumanReadableDropReason();
  v1 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  return v1;
}

uint64_t sub_1CF74F794()
{
  v1 = *v0;
  v2 = FPHumanReadableDropReason();
  v3 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  return v3;
}

uint64_t type metadata accessor for FPFSIndexer()
{
  result = qword_1EDEAA3E0;
  if (!qword_1EDEAA3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CF74F880()
{
  sub_1CF74F91C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1CF74F91C()
{
  if (!qword_1EDEA5620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C4AE0, qword_1CFA17B10);
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA5620);
    }
  }
}

uint64_t sub_1CF74F980()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1CF74F9C0(uint64_t is_cancelled, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, __int16 a5)
{
  v6 = *(is_cancelled + 16);
  if ((*(v6 + 152) & 1) == 0)
  {
    is_cancelled = fp_task_tracker_is_cancelled(*(*(v6 + 168) + 16));
    if ((is_cancelled & 1) == 0 && (*(v6 + 152) & 1) == 0)
    {
      is_cancelled = sub_1CF80378C(a4, a5 & 0x1FF);
    }
  }

  return a2(is_cancelled);
}

uint64_t sub_1CF74FA40(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  (*(**(*(v12 + 32) + 16) + 96))(&v29, v9);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v14 = v13;
  v15 = *(v7 + 8);
  result = v15(v11, v6);
  v17 = v14 * 1000000000.0;
  if (COERCE__INT64(fabs(v14 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = v12;
  v27 = a3;
  v28 = v15;
  v18 = v17;
  v19 = v29;
  v20 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46D0, &unk_1CF9FABF0);
  v21 = swift_allocObject();
  *(v21 + 152) = v20;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 1;
  *(v21 + 56) = 0u;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0;
  *(v21 + 120) = 0;
  *(v21 + 128) = v18;
  *(v21 + 136) = 0;
  *(v21 + 144) = v19;
  *(v21 + 96) = xmmword_1CFA04E50;
  *(v21 + 112) = 0;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v7 + 16))(v11, v27, v6);
  sub_1CF9E5C98();
  v24 = v23;
  result = v28(v11, v6);
  v25 = v24 * 1000000000.0;
  if (COERCE__INT64(fabs(v24 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v25 < 9.22337204e18)
  {
    sub_1CF5215C0(v21);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1CF74FD10(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v114 = a7;
  v129 = a6;
  v117 = a5;
  v118 = a4;
  v128 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C8, &unk_1CFA167A8);
  v9 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v108 = (&v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v115 = (&v106 - v12);
  v122 = sub_1CF9E5D98();
  v124 = *(v122 - 8);
  v13 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v110 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1108, &qword_1CFA18060);
  v15 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121);
  v120 = &v106 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v109 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v111 = &v106 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v130 = &v106 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v112 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v123 = &v106 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v106 - v30;
  v32 = type metadata accessor for ChangeEnumeratorAnchor();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v107 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v106 - v37;
  v113 = a2;
  v39 = *(a2 + 16);
  v41 = v40;
  v127 = a3;
  v42 = a3;
  v43 = v41;
  sub_1CEFCCBDC(v42, v31, &unk_1EC4C4AE0, qword_1CFA17B10);
  v44 = *(v33 + 48);
  v125 = v33 + 48;
  v45 = v44(v31, 1, v43);
  v126 = v39;
  v132 = v43;
  v119 = v44;
  if (v45 == 1)
  {
    sub_1CEFCCC44(v31, &unk_1EC4C4AE0, qword_1CFA17B10);
    goto LABEL_12;
  }

  sub_1CEFD9FF4(v31, v38, type metadata accessor for ChangeEnumeratorAnchor);
  v46 = v124;
  v47 = v130;
  v48 = v122;
  (*(v124 + 16))(v130, v38, v122);
  (*(v46 + 56))(v47, 0, 1, v48);
  v49 = qword_1EDEBBDA8;
  swift_beginAccess();
  v50 = *(v121 + 48);
  v51 = v47;
  v52 = v120;
  sub_1CEFCCBDC(v51, v120, &unk_1EC4BEDE0, qword_1CF9FA390);
  sub_1CEFCCBDC(v39 + v49, v52 + v50, &unk_1EC4BEDE0, qword_1CF9FA390);
  v53 = *(v46 + 48);
  v54 = v38;
  if (v53(v52, 1, v48) != 1)
  {
    v55 = v111;
    sub_1CEFCCBDC(v52, v111, &unk_1EC4BEDE0, qword_1CF9FA390);
    if (v53(v52 + v50, 1, v48) != 1)
    {
      v58 = v124;
      v59 = v55;
      v60 = v110;
      (*(v124 + 32))(v110, v52 + v50, v48);
      sub_1CF75B5B0(&qword_1EDEAECC0, MEMORY[0x1E69695A8]);
      LODWORD(v121) = sub_1CF9E6868();
      v61 = *(v58 + 8);
      v61(v60, v48);
      sub_1CEFCCC44(v130, &unk_1EC4BEDE0, qword_1CF9FA390);
      v61(v59, v48);
      sub_1CEFCCC44(v52, &unk_1EC4BEDE0, qword_1CF9FA390);
      if (v121)
      {
        goto LABEL_11;
      }

LABEL_9:
      type metadata accessor for NSFileProviderError(0);
      v136 = -1002;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF75B5B0(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
      sub_1CF9E57D8();
      v56 = v115;
      *v115 = v133;
      swift_storeEnumTagMultiPayload();
      v118(v56);
      sub_1CEFCCC44(v56, &qword_1EC4C46C8, &unk_1CFA167A8);
      return sub_1CF75B008(v54, type metadata accessor for ChangeEnumeratorAnchor);
    }

    sub_1CEFCCC44(v130, &unk_1EC4BEDE0, qword_1CF9FA390);
    (*(v124 + 8))(v55, v48);
LABEL_8:
    sub_1CEFCCC44(v52, &qword_1EC4C1108, &qword_1CFA18060);
    goto LABEL_9;
  }

  sub_1CEFCCC44(v130, &unk_1EC4BEDE0, qword_1CF9FA390);
  if (v53(v52 + v50, 1, v48) != 1)
  {
    goto LABEL_8;
  }

  sub_1CEFCCC44(v52, &unk_1EC4BEDE0, qword_1CF9FA390);
LABEL_11:
  sub_1CF75B008(v54, type metadata accessor for ChangeEnumeratorAnchor);
  v44 = v119;
LABEL_12:
  v62 = v126;
  v63 = *(*(v126 + 40) + 16);
  type metadata accessor for FPFileTree();
  v64 = *(swift_dynamicCastClassUnconditional() + 280);
  v65 = v129;
  v66 = v123;
  if (v129 < 1)
  {
    goto LABEL_27;
  }

  if (v129 >= 0x1F4)
  {
    v105 = v64;
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/enumerators/ChangeEnumerator.swift", 102, 2, 99);
  }

  v136 = MEMORY[0x1E69E7CC0];
  v135 = MEMORY[0x1E69E7CC0];
  v134 = MEMORY[0x1E69E7CD0];
  v67 = v128[3];
  v68 = v128[4];
  v69 = __swift_project_boxed_opaque_existential_1(v128, v67);
  v70 = *(v62 + 16);
  sub_1CEFCCBDC(v127, v66, &unk_1EC4C4AE0, qword_1CFA17B10);
  v71 = v132;
  if (v44(v66, 1, v132) == 1)
  {
    v72 = v64;

    v73 = sub_1CEFCCC44(v66, &unk_1EC4C4AE0, qword_1CFA17B10);
    v74 = 0;
  }

  else
  {
    v74 = *(v66 + *(v71 + 24));
    v75 = v64;

    v73 = sub_1CF75B008(v66, type metadata accessor for ChangeEnumeratorAnchor);
  }

  MEMORY[0x1EEE9AC00](v73);
  *(&v106 - 2) = &v135;
  *(&v106 - 1) = v64;
  v76 = v131;
  v77 = sub_1CF24E150(v74, v65, v69, sub_1CF75B13C, &v106 - 32, v67, v68);
  v79 = v78;

  if (!v76)
  {
    v123 = v77;
    LODWORD(v130) = v79;
    v131 = v64;
    v80 = v112;
    sub_1CEFCCBDC(v127, v112, &unk_1EC4C4AE0, qword_1CFA17B10);
    v81 = v132;
    if (v119(v80, 1, v132) == 1)
    {
      sub_1CEFCCC44(v80, &unk_1EC4C4AE0, qword_1CFA17B10);
      v82 = 0;
    }

    else
    {
      v82 = *(v80 + *(v81 + 20));
      sub_1CF75B008(v80, type metadata accessor for ChangeEnumeratorAnchor);
    }

    v83 = v126;
    v84 = v128;
    v85 = v128[3];
    v86 = v128[4];
    v87 = __swift_project_boxed_opaque_existential_1(v128, v85);
    v88 = *(v83 + 16);
    MEMORY[0x1EEE9AC00](v87);
    *(&v106 - 8) = v114;
    *(&v106 - 7) = v84;
    *(&v106 - 6) = v113;
    *(&v106 - 5) = v82;
    *(&v106 - 4) = &v134;
    *(&v106 - 3) = &v136;
    *(&v106 - 2) = v131;
    *(&v106 - 1) = &v135;
    v89 = *(v86 + 8);

    v90 = sub_1CF24DBF4(v82, v129, v87, sub_1CF75B144, (&v106 - 10), v85, v89);
    v92 = v91;

    v93 = v92;
    v94 = qword_1EDEBBDA8;
    swift_beginAccess();
    v95 = v109;
    sub_1CEFCCBDC(v83 + v94, v109, &unk_1EC4BEDE0, qword_1CF9FA390);
    v64 = v124;
    v96 = v122;
    if ((*(v124 + 48))(v95, 1, v122) != 1)
    {
      v97 = v107;
      (v64)[4](v107, v95, v96);
      v98 = v132;
      *(v97 + *(v132 + 20)) = v90;
      *(v97 + *(v98 + 24)) = v123;
      v99 = v134;
      v100 = v135;
      v101 = v108;
      *v108 = v136;
      *(v101 + 8) = v100;
      *(v101 + 16) = v99;
      v102 = v93 | v130;
      v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46D8, &unk_1CFA167B8) + 96);
      *(v101 + 24) = v102 & 1;
      sub_1CEFDA27C(v97, v101 + v103, type metadata accessor for ChangeEnumeratorAnchor);
      swift_storeEnumTagMultiPayload();

      v118(v101);

      sub_1CEFCCC44(v101, &qword_1EC4C46C8, &unk_1CFA167A8);
      sub_1CF75B008(v97, type metadata accessor for ChangeEnumeratorAnchor);
    }

    __break(1u);
LABEL_27:
    v104 = v64;
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/enumerators/ChangeEnumerator.swift", 102, 2, 98);
  }
}

void sub_1CF750A54(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v93 = a8;
  v94 = a7;
  v91 = a6;
  v92 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v102 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v88 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v100 = *(v17 - 8);
  v101 = v17;
  v18 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v97 = (&v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v95 = (&v88 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v88 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v98 = (&v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v88 - v34;
  v104 = objc_autoreleasePoolPush();
  v103 = type metadata accessor for PendingIndexingItemRow();
  v99 = *(a1 + *(v103 + 28));
  if ((v99 & 0xFFFFFFFFFFFFFFEFLL) != 0)
  {
    goto LABEL_10;
  }

  v90 = v29;
  v36 = a4;
  if (!sub_1CF75B358(a1))
  {
    goto LABEL_9;
  }

  v37 = a3[3];
  v89 = a3[4];
  v38 = __swift_project_boxed_opaque_existential_1(a3, v37);
  v39 = sub_1CF75B5B0(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  v40 = v107;
  v41 = sub_1CF7DA990(a1, v36, v38, v37, v39, &off_1F4BF8588, v89);
  if (v40)
  {
    objc_autoreleasePoolPop(v104);
    return;
  }

  v107 = 0;
  if (!v41)
  {
LABEL_9:
    v29 = v90;
    goto LABEL_10;
  }

  v42 = a1 + *(v103 + 32);
  v29 = v90;
  if ((*(v42 + 8) & 1) == 0)
  {
    v89 = v41;
    v43 = *v42;
    sub_1CEFCCBDC(a1, v28, &qword_1EC4C1B40, &unk_1CF9FCB70);
    if ((*(v30 + 48))(v28, 1, v29) == 1)
    {
      v44 = &qword_1EC4C1B40;
      v45 = &unk_1CF9FCB70;
      v46 = v28;
LABEL_51:
      sub_1CEFCCC44(v46, v44, v45);
      v41 = v89;
      goto LABEL_52;
    }

    sub_1CEFE55D0(v28, v35, &unk_1EC4BE360, &qword_1CF9FE650);
    v76 = &v35[*(v29 + 48)];
    if ((v76[*(type metadata accessor for ItemMetadata() + 80)] & 1) != 0 || v43 == 0x7FFFFFFFFFFFFFFFLL || v43 <= v92)
    {
      v44 = &unk_1EC4BE360;
      v45 = &qword_1CF9FE650;
      v46 = v35;
      goto LABEL_51;
    }

    v77 = [v89 coreSpotlightIdentifier];
    v92 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v79 = v78;

    sub_1CF6E9AF0(v106, v92, v79);

    sub_1CEFCCC44(v35, &unk_1EC4BE360, &qword_1CF9FE650);
    v41 = v89;
  }

LABEL_52:
  v80 = v41;
  v81 = v94;
  MEMORY[0x1D3868FA0]();
  if (*((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v85 = *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();

LABEL_10:
  objc_autoreleasePoolPop(v104);
  sub_1CEFCCBDC(a1, v25, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v47 = (*(v30 + 48))(v25, 1, v29);
  v48 = v103;
  if (v47 == 1)
  {
    sub_1CEFCCC44(v25, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v50 = v101;
    v49 = v102;
    v51 = v100;
    if (!v99)
    {
      return;
    }

    goto LABEL_27;
  }

  v52 = v98;
  sub_1CEFE55D0(v25, v98, &unk_1EC4BE360, &qword_1CF9FE650);
  v53 = v96;
  sub_1CEFCCBDC(a1 + *(v48 + 20), v96, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  v51 = v100;
  v50 = v101;
  if ((*(v100 + 48))(v53, 1, v101) == 1)
  {
    sub_1CEFCCC44(v52, &unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFCCC44(v53, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v49 = v102;
    if (!v99)
    {
      return;
    }

    goto LABEL_27;
  }

  v54 = v95;
  sub_1CEFE55D0(v53, v95, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  memcpy(v106, (a1 + *(v48 + 24)), 0x378uLL);
  v55 = sub_1CEFF7450(v106);
  v49 = v102;
  if (v55 == 1)
  {
    goto LABEL_25;
  }

  memcpy(v105, v106, sizeof(v105));
  if (sub_1CEFF755C(v105) == 1 || !v105[31])
  {
    v54 = v95;
LABEL_25:
    v58 = v54;
    goto LABEL_26;
  }

  v56 = *v98;
  v57 = *(v98 + 8);
  if (v57 == 2 && !v56)
  {
LABEL_58:
    v58 = v95;
    goto LABEL_26;
  }

  v58 = v95;
  if (v57 != 2 || v56 != 1)
  {
    v82 = *v95;
    v83 = objc_allocWithZone(MEMORY[0x1E69673A0]);
    v84 = [v83 initWithProviderDomainID:v93 itemIdentifier:v82];
    MEMORY[0x1D3868FA0]();
    if (*((*a9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v87 = *((*a9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1CF9E6D88();
      v48 = v103;
    }

    sub_1CF9E6DE8();

    goto LABEL_58;
  }

LABEL_26:
  sub_1CEFCCC44(v58, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  sub_1CEFCCC44(v98, &unk_1EC4BE360, &qword_1CF9FE650);
  if (!v99)
  {
    return;
  }

LABEL_27:
  sub_1CEFCCBDC(a1 + *(v48 + 20), v49, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  if ((*(v51 + 48))(v49, 1, v50) != 1)
  {
    v62 = v97;
    sub_1CEFE55D0(v49, v97, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v63 = *v62;
    if (qword_1EDEA34B0 != -1)
    {
      swift_once();
    }

    v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v66 = v65;
    if (v64 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v66 != v67)
    {
      v68 = sub_1CF9E8048();

      if (v68)
      {
        goto LABEL_35;
      }

      if (qword_1EDEA3498 != -1)
      {
        swift_once();
      }

      v69 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v71 = v70;
      if (v69 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v71 != v72)
      {
        v73 = sub_1CF9E8048();

        if ((v73 & 1) == 0)
        {
          v74 = objc_allocWithZone(MEMORY[0x1E69673A0]);
          v75 = [v74 initWithProviderDomainID:v93 itemIdentifier:v63];
          MEMORY[0x1D3868FA0]();
          if (*((*a9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v86 = *((*a9 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1CF9E6D88();
          }

          sub_1CF9E6DE8();
        }

        goto LABEL_35;
      }
    }

LABEL_35:
    v59 = &unk_1EC4BFBD0;
    v60 = &unk_1CF9FCBC0;
    v61 = v97;
    goto LABEL_36;
  }

  v59 = &unk_1EC4BFBB0;
  v60 = &qword_1CF9FCB90;
  v61 = v49;
LABEL_36:
  sub_1CEFCCC44(v61, v59, v60);
}

uint64_t sub_1CF751480(uint64_t a1, void *a2, void (*a3)(char *))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C8, &unk_1CFA167A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  *(&v11 - v7) = a2;
  swift_storeEnumTagMultiPayload();
  v9 = a2;
  a3(v8);
  return sub_1CEFCCC44(v8, &qword_1EC4C46C8, &unk_1CFA167A8);
}

void sub_1CF75154C(int a1, id a2, void (*a3)(id *))
{
  v6 = a2;
  v7 = 1;
  v5 = a2;
  a3(&v6);
}

uint64_t sub_1CF7515B8(uint64_t a1, int a2, char *a3, void (*a4)(void *), uint64_t a5, void *a6)
{
  LODWORD(v215) = a2;
  v202 = a1;
  v186 = sub_1CF9E63D8();
  v185 = *(v186 - 8);
  v10 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v186);
  v184 = &v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v198 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v180 - v16;
  v197 = sub_1CF9E6068();
  v196 = *(v197 - 8);
  v18 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v192 = &v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v190 = &v180 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v205 = &v180 - v24;
  v191 = type metadata accessor for Signpost(0);
  v193 = *(v191 - 8);
  v25 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v27 = &v180 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v195 = &v180 - v29;
  v194 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v207 = &v180 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v203 = &v180 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v204 = &v180 - v37;
  v214 = sub_1CF9E5CF8();
  v210 = *(v214 - 8);
  v38 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v189 = &v180 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = v39;
  MEMORY[0x1EEE9AC00](v40);
  v206 = &v180 - v41;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v209 = *(v200 - 8);
  v42 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v201 = &v180 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v187 = &v180 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v180 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v199 = &v180 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v180 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v180 - v56;
  v58 = sub_1CF9E6118();
  v211 = *(v58 - 8);
  v212 = v58;
  v59 = v211[8];
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v180 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v208 = &v180 - v63;
  v64 = swift_allocObject();
  v64[2] = a4;
  v64[3] = a5;
  v216 = v64;
  v64[4] = a6;
  v213 = a3;
  if (*&a3[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator])
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v181 = v27;
      v182 = v17;
      v66 = *(*(Strong + 16) + 80);
      v67 = Strong;

      v68 = a6;
      if ((v66 & 0x40000) == 0)
      {

        goto LABEL_6;
      }

      v183 = v67;
      v71 = v213;
      if (([v213 isIndexingEnabled] & 1) == 0)
      {
        v83 = [v71 domain];
        if (v83)
        {
          v84 = v83;
          v85 = [v83 isHidden];

          if (v85)
          {
            v86 = 3;
          }

          else
          {
            v86 = 1;
          }
        }

        else
        {
          v86 = 3;
        }

        v87 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v88 = sub_1CF9E6108();
        v89 = sub_1CF9E7298();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          *&aBlock = v91;
          *v90 = 67109378;
          *(v90 + 4) = v215 & 1;
          *(v90 + 8) = 2080;
          v92 = sub_1CF5B6A1C(v86, 1);
          v94 = sub_1CEFD0DF0(v92, v93, &aBlock);
          v71 = v213;

          *(v90 + 10) = v94;
          _os_log_impl(&dword_1CEFC7000, v88, v89, "indexer is disabled, updating indexing barrier (index dropped: %{BOOL}d, anchor: %s)", v90, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v91);
          MEMORY[0x1D386CDC0](v91, -1, -1);
          MEMORY[0x1D386CDC0](v90, -1, -1);
        }

        (v211[1])(v61, v212);
        v95 = v183;
        v96 = *(*(v183 + 16) + qword_1EDEBBD08);
        v97 = swift_allocObject();
        *(v97 + 16) = v95;
        *(v97 + 24) = sub_1CF75BC74;
        *(v97 + 32) = v216;
        *(v97 + 40) = v86;
        *(v97 + 48) = 1;

        v98 = v96;
        sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v97);

        goto LABEL_29;
      }

      v72 = fpfs_current_or_default_log();
      v73 = v208;
      sub_1CF9E6128();
      v74 = v202;
      sub_1CEFCCBDC(v202, v57, &qword_1EC4C46C0, &unk_1CFA16798);
      v75 = sub_1CF9E6108();
      v76 = sub_1CF9E7298();
      if (!os_log_type_enabled(v75, v76))
      {

        sub_1CEFCCC44(v57, &qword_1EC4C46C0, &unk_1CFA16798);
        (v211[1])(v73, v212);
        v78 = v200;
LABEL_27:
        v104 = v199;
        sub_1CEFCCBDC(v74, v199, &qword_1EC4C46C0, &unk_1CFA16798);
        v105 = (*(v209 + 48))(v104, 1, v78);
        v106 = v216;
        v107 = v201;
        if (v105 != 1)
        {
          v118 = v187;
          sub_1CEFE55D0(v104, v187, &unk_1EC4C4AE0, qword_1CFA17B10);
          sub_1CEFCCBDC(v118, v107, &unk_1EC4C4AE0, qword_1CFA17B10);
          v119 = type metadata accessor for ChangeEnumeratorAnchor();
          if ((*(*(v119 - 8) + 48))(v107, 1, v119) == 1)
          {
            sub_1CEFCCC44(v107, &unk_1EC4C4AE0, qword_1CFA17B10);
            v120 = 0;
          }

          else
          {
            v120 = *(v107 + *(v119 + 20));
            sub_1CF75B008(v107, type metadata accessor for ChangeEnumeratorAnchor);
          }

          v141 = v183;
          v142 = *(*(v183 + 16) + qword_1EDEBBD08);
          v143 = swift_allocObject();
          *(v143 + 16) = v141;
          *(v143 + 24) = sub_1CF75BC74;
          *(v143 + 32) = v106;
          *(v143 + 40) = v120;
          *(v143 + 48) = 0;

          v144 = v142;
          sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v143);

          sub_1CEFCCC44(v118, &unk_1EC4C4AE0, qword_1CFA17B10);
          if ((v215 & 1) == 0)
          {
            goto LABEL_50;
          }

LABEL_30:
          v112 = [v71 state];
          v113 = [v112 lastDropDate];

          if (v113)
          {
            v114 = v203;
            sub_1CF9E5CB8();

            v115 = 0;
            v116 = v210;
            v117 = v204;
          }

          else
          {
            v115 = 1;
            v116 = v210;
            v117 = v204;
            v114 = v203;
          }

          v121 = v214;
          (*(v116 + 56))(v114, v115, 1, v214);
          sub_1CEFE55D0(v114, v117, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          if ((*(v116 + 48))(v117, 1, v121) == 1)
          {

            sub_1CEFCCC44(v117, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          }

          v122 = *(v116 + 32);
          v123 = v206;
          v122(v206, v117, v121);
          v124 = v183;
          v125 = *(v183 + 16);
          v126 = v189;
          (*(v116 + 16))(v189, v123, v214);
          v127 = (*(v116 + 80) + 24) & ~*(v116 + 80);
          v128 = swift_allocObject();
          *(v128 + 16) = v124;
          v215 = v128;
          v122((v128 + v127), v126, v214);
          v213 = v125;
          v129 = *&v125[qword_1EDEBBC38];

          v212 = fpfs_adopt_log();
          if (qword_1EDEAE980 != -1)
          {
            swift_once();
          }

          v130 = qword_1EDEBBE40;
          v131 = v196;
          v132 = v205;
          v133 = v197;
          (*(v196 + 56))(v205, 1, 1, v197);
          strcpy(&aBlock, "async batch ");
          BYTE13(aBlock) = 0;
          HIWORD(aBlock) = -5120;
          v134 = sub_1CF9E7988();
          MEMORY[0x1D3868CC0](v134);

          v135 = aBlock;
          v136 = v132;
          v137 = v190;
          sub_1CEFCCBDC(v136, v190, &unk_1EC4BED20, &unk_1CFA00700);
          v138 = *(v131 + 48);
          if (v138(v137, 1, v133) == 1)
          {
            v139 = v130;
            v140 = v192;
            sub_1CF9E6048();
            if (v138(v137, 1, v133) != 1)
            {
              sub_1CEFCCC44(v137, &unk_1EC4BED20, &unk_1CFA00700);
            }
          }

          else
          {
            v140 = v192;
            (*(v131 + 32))(v192, v137, v133);
          }

          v145 = v207;
          (*(v131 + 16))(v207, v140, v133);
          v146 = v191;
          *(v145 + *(v191 + 20)) = v130;
          v147 = v145 + *(v146 + 24);
          *v147 = "DB queue wait";
          *(v147 + 8) = 13;
          *(v147 + 16) = 2;
          v148 = v130;
          sub_1CF9E7468();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v149 = swift_allocObject();
          *(v149 + 16) = xmmword_1CF9FA450;
          *(v149 + 56) = MEMORY[0x1E69E6158];
          *(v149 + 64) = sub_1CEFD51C4();
          *(v149 + 32) = v135;
          sub_1CF9E6028();

          (*(v131 + 8))(v140, v133);
          sub_1CEFCCC44(v205, &unk_1EC4BED20, &unk_1CFA00700);
          v209 = *(v213 + 21);
          v211 = *(v213 + 8);
          v208 = sub_1CF9E6448();
          v205 = *(v208 - 1);
          (*(v205 + 56))(v182, 1, 1, v208);
          v150 = v195;
          sub_1CEFDA27C(v145, v195, type metadata accessor for Signpost);
          v151 = (*(v193 + 80) + 16) & ~*(v193 + 80);
          v152 = (v194 + v151 + 7) & 0xFFFFFFFFFFFFFFF8;
          v153 = swift_allocObject();
          sub_1CEFD9FF4(v150, &v153[v151], type metadata accessor for Signpost);
          v154 = &v153[v152];
          v204 = nullsub_1;
          *v154 = nullsub_1;
          *(v154 + 1) = 0;
          v155 = v181;
          sub_1CEFDA27C(v145, v181, type metadata accessor for Signpost);
          v156 = (v152 + 23) & 0xFFFFFFFFFFFFFFF8;
          v157 = (v156 + 15) & 0xFFFFFFFFFFFFFFF8;
          v158 = (v157 + 25) & 0xFFFFFFFFFFFFFFF8;
          v159 = swift_allocObject();
          sub_1CEFD9FF4(v155, v159 + v151, type metadata accessor for Signpost);
          v160 = (v159 + v152);
          *v160 = sub_1CF045408;
          v160[1] = 0;
          *(v159 + v156) = v213;
          v161 = v159 + v157;
          *v161 = "reactToIndexDrop(dropDate:)";
          *(v161 + 8) = 27;
          *(v161 + 16) = 2;
          v162 = (v159 + v158);
          *v162 = v204;
          v162[1] = 0;
          v163 = (v159 + ((v158 + 23) & 0xFFFFFFFFFFFFFFF8));
          v164 = v205;
          v165 = v215;
          *v163 = sub_1CF75C128;
          v163[1] = v165;
          v166 = swift_allocObject();
          v166[2] = sub_1CF75C120;
          v166[3] = v153;
          v167 = v209;
          v166[4] = v209;

          v213 = v153;
          v168 = v208;

          v169 = fpfs_current_log();
          v170 = *(v167 + 16);
          v171 = v198;
          sub_1CEFCCBDC(v182, v198, &unk_1EC4BE370, qword_1CFA01B30);
          if ((*(v164 + 48))(v171, 1, v168) == 1)
          {
            sub_1CEFCCC44(v171, &unk_1EC4BE370, qword_1CFA01B30);
            v172 = QOS_CLASS_UNSPECIFIED;
          }

          else
          {
            v173 = v184;
            sub_1CF9E6438();
            (*(v164 + 8))(v171, v168);
            v172 = sub_1CF9E63C8();
            (*(v185 + 8))(v173, v186);
          }

          v174 = swift_allocObject();
          v174[2] = v169;
          v174[3] = sub_1CF4858EC;
          v174[4] = v159;
          v220 = sub_1CF2BA17C;
          v221 = v174;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v218 = sub_1CEFCA444;
          v219 = &block_descriptor_374;
          v175 = _Block_copy(&aBlock);
          v176 = v169;

          v220 = sub_1CF2BA180;
          v221 = v166;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v218 = sub_1CEFCA444;
          v219 = &block_descriptor_377;
          v177 = _Block_copy(&aBlock);

          fp_task_tracker_async_and_qos(v170, v211, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v172, v175, v177);
          _Block_release(v177);
          _Block_release(v175);

          sub_1CEFCCC44(v182, &unk_1EC4BE370, qword_1CFA01B30);
          sub_1CF75B008(v207, type metadata accessor for Signpost);
          v178 = v212;
          v179 = fpfs_adopt_log();

          (*(v210 + 8))(v206, v214);
LABEL_50:
        }

        v108 = v183;
        v109 = *(*(v183 + 16) + qword_1EDEBBD08);
        v110 = swift_allocObject();
        *(v110 + 16) = v108;
        *(v110 + 24) = sub_1CF75BC74;
        *(v110 + 32) = v106;
        *(v110 + 40) = 0;
        *(v110 + 48) = 256;

        v111 = v109;
        sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v110);

LABEL_29:

        if ((v215 & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_30;
      }

      v77 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      *&aBlock = v180;
      *v77 = 67109378;
      *(v77 + 4) = v215 & 1;
      *(v77 + 8) = 2080;
      sub_1CEFCCBDC(v57, v54, &qword_1EC4C46C0, &unk_1CFA16798);
      v78 = v200;
      if ((*(v209 + 48))(v54, 1, v200) == 1)
      {
        v79 = 0x6F68636E61206F6ELL;
        v80 = &qword_1EC4C46C0;
        v81 = &unk_1CFA16798;
        v82 = v54;
      }

      else
      {
        sub_1CEFE55D0(v54, v48, &unk_1EC4C4AE0, qword_1CFA17B10);
        v99 = type metadata accessor for ChangeEnumeratorAnchor();
        if ((*(*(v99 - 8) + 48))(v48, 1, v99) != 1)
        {
          v79 = sub_1CF7D9BAC();
          v100 = v101;
          sub_1CF75B008(v48, type metadata accessor for ChangeEnumeratorAnchor);
          goto LABEL_26;
        }

        v79 = 0x6F68636E61206F6ELL;
        v80 = &unk_1EC4C4AE0;
        v81 = qword_1CFA17B10;
        v82 = v48;
      }

      sub_1CEFCCC44(v82, v80, v81);
      v100 = 0xE900000000000072;
LABEL_26:
      sub_1CEFCCC44(v57, &qword_1EC4C46C0, &unk_1CFA16798);
      v102 = sub_1CEFD0DF0(v79, v100, &aBlock);

      *(v77 + 10) = v102;
      _os_log_impl(&dword_1CEFC7000, v75, v76, "indexer is enabled, updating indexing barrier (index dropped: %{BOOL}d, anchor: %s)", v77, 0x12u);
      v103 = v180;
      __swift_destroy_boxed_opaque_existential_1(v180);
      MEMORY[0x1D386CDC0](v103, -1, -1);
      MEMORY[0x1D386CDC0](v77, -1, -1);

      (v211[1])(v208, v212);
      goto LABEL_27;
    }
  }

  v69 = a6;
LABEL_6:
  a4(a6);
}

uint64_t sub_1CF752DF4(uint64_t a1, int a2, char *a3, void (*a4)(void, void *, uint64_t), uint64_t a5, int a6, void *a7)
{
  LODWORD(v220) = a6;
  LODWORD(v219) = a2;
  v206 = a1;
  v190 = sub_1CF9E63D8();
  v189 = *(v190 - 8);
  v11 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v188 = &v185 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v202 = &v185 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v185 - v17;
  v201 = sub_1CF9E6068();
  v200 = *(v201 - 8);
  v19 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v196 = &v185 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v194 = &v185 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v209 = &v185 - v25;
  v195 = type metadata accessor for Signpost(0);
  v197 = *(v195 - 8);
  v26 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v28 = &v185 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v199 = &v185 - v30;
  v198 = v31;
  MEMORY[0x1EEE9AC00](v32);
  v211 = &v185 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v207 = &v185 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v208 = &v185 - v38;
  v218 = sub_1CF9E5CF8();
  v214 = *(v218 - 8);
  v39 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v218);
  v193 = &v185 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = v40;
  MEMORY[0x1EEE9AC00](v41);
  v210 = &v185 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v212 = *(v43 - 8);
  v213 = v43;
  v44 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v191 = &v185 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v205 = &v185 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v187 = &v185 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v204 = &v185 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v185 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v203 = &v185 - v57;
  v58 = sub_1CF9E6118();
  v215 = *(v58 - 8);
  v216 = v58;
  v59 = v215[8];
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v185 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v185 - v63;
  v65 = swift_allocObject();
  v66 = a4;
  *(v65 + 16) = a4;
  *(v65 + 24) = a5;
  v67 = v220;
  *(v65 + 32) = v220;
  v221 = v65;
  *(v65 + 40) = a7;
  v217 = a3;
  if (*&a3[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator])
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v185 = v28;
      v186 = v18;
      v69 = *(*(Strong + 16) + 80);
      v70 = Strong;

      v71 = a7;
      if ((v69 & 0x40000) == 0)
      {

        goto LABEL_6;
      }

      v220 = v70;
      v74 = v217;
      if (([v217 isIndexingEnabled] & 1) == 0)
      {
        v86 = [v74 domain];
        if (v86)
        {
          v87 = v86;
          v88 = [v86 isHidden];

          if (v88)
          {
            v89 = 3;
          }

          else
          {
            v89 = 1;
          }
        }

        else
        {
          v89 = 3;
        }

        v90 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v91 = sub_1CF9E6108();
        v92 = sub_1CF9E7298();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          *&aBlock = v94;
          *v93 = 67109378;
          *(v93 + 4) = v219 & 1;
          *(v93 + 8) = 2080;
          v95 = sub_1CF5B6A1C(v89, 1);
          v97 = sub_1CEFD0DF0(v95, v96, &aBlock);

          *(v93 + 10) = v97;
          v74 = v217;
          _os_log_impl(&dword_1CEFC7000, v91, v92, "indexer is disabled, updating indexing barrier (index dropped: %{BOOL}d, anchor: %s)", v93, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v94);
          MEMORY[0x1D386CDC0](v94, -1, -1);
          MEMORY[0x1D386CDC0](v93, -1, -1);
        }

        (v215[1])(v61, v216);
        v98 = v220;
        v99 = *(*(v220 + 16) + qword_1EDEBBD08);
        v100 = swift_allocObject();
        *(v100 + 16) = v98;
        *(v100 + 24) = sub_1CF75B5F8;
        *(v100 + 32) = v221;
        *(v100 + 40) = v89;
        *(v100 + 48) = 1;

        v101 = v99;
        sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v100);

        goto LABEL_29;
      }

      v75 = fpfs_current_or_default_log();
      v76 = v64;
      sub_1CF9E6128();
      v77 = v206;
      v78 = v203;
      sub_1CEFCCBDC(v206, v203, &qword_1EC4C46C0, &unk_1CFA16798);
      v79 = sub_1CF9E6108();
      v80 = sub_1CF9E7298();
      if (!os_log_type_enabled(v79, v80))
      {

        sub_1CEFCCC44(v78, &qword_1EC4C46C0, &unk_1CFA16798);
LABEL_27:
        (v215[1])(v76, v216);
        v108 = v221;
        v109 = v204;
        sub_1CEFCCBDC(v77, v204, &qword_1EC4C46C0, &unk_1CFA16798);
        if ((*(v212 + 48))(v109, 1, v213) != 1)
        {
          v120 = v109;
          v121 = v205;
          sub_1CEFE55D0(v120, v205, &unk_1EC4C4AE0, qword_1CFA17B10);
          v122 = v121;
          v123 = v191;
          sub_1CEFCCBDC(v122, v191, &unk_1EC4C4AE0, qword_1CFA17B10);
          v124 = type metadata accessor for ChangeEnumeratorAnchor();
          if ((*(*(v124 - 8) + 48))(v123, 1, v124) == 1)
          {
            sub_1CEFCCC44(v123, &unk_1EC4C4AE0, qword_1CFA17B10);
            v125 = 0;
          }

          else
          {
            v125 = *(v123 + *(v124 + 20));
            sub_1CF75B008(v123, type metadata accessor for ChangeEnumeratorAnchor);
          }

          v146 = v220;
          v147 = *(*(v220 + 16) + qword_1EDEBBD08);
          v148 = swift_allocObject();
          *(v148 + 16) = v146;
          *(v148 + 24) = sub_1CF75B5F8;
          *(v148 + 32) = v108;
          *(v148 + 40) = v125;
          *(v148 + 48) = 0;

          v149 = v147;
          sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v148);

          sub_1CEFCCC44(v205, &unk_1EC4C4AE0, qword_1CFA17B10);
          if ((v219 & 1) == 0)
          {
            goto LABEL_50;
          }

LABEL_30:
          v114 = [v74 state];
          v115 = [v114 lastDropDate];

          if (v115)
          {
            v116 = v207;
            sub_1CF9E5CB8();

            v117 = 0;
            v118 = v214;
            v119 = v208;
          }

          else
          {
            v117 = 1;
            v118 = v214;
            v119 = v208;
            v116 = v207;
          }

          v126 = v218;
          (*(v118 + 56))(v116, v117, 1, v218);
          sub_1CEFE55D0(v116, v119, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          if ((*(v118 + 48))(v119, 1, v126) == 1)
          {

            sub_1CEFCCC44(v119, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          }

          v127 = *(v118 + 32);
          v128 = v210;
          v127(v210, v119, v126);
          v129 = v220;
          v130 = *(v220 + 16);
          v131 = v193;
          (*(v118 + 16))(v193, v128, v218);
          v132 = (*(v118 + 80) + 24) & ~*(v118 + 80);
          v133 = swift_allocObject();
          *(v133 + 16) = v129;
          v219 = v133;
          v127((v133 + v132), v131, v218);
          v217 = v130;
          v134 = *&v130[qword_1EDEBBC38];

          v216 = fpfs_adopt_log();
          if (qword_1EDEAE980 != -1)
          {
            swift_once();
          }

          v135 = qword_1EDEBBE40;
          v136 = v200;
          v137 = v209;
          v138 = v201;
          (*(v200 + 56))(v209, 1, 1, v201);
          strcpy(&aBlock, "async batch ");
          BYTE13(aBlock) = 0;
          HIWORD(aBlock) = -5120;
          v139 = sub_1CF9E7988();
          MEMORY[0x1D3868CC0](v139);

          v140 = aBlock;
          v141 = v137;
          v142 = v194;
          sub_1CEFCCBDC(v141, v194, &unk_1EC4BED20, &unk_1CFA00700);
          v143 = *(v136 + 48);
          if (v143(v142, 1, v138) == 1)
          {
            v144 = v135;
            v145 = v196;
            sub_1CF9E6048();
            if (v143(v142, 1, v138) != 1)
            {
              sub_1CEFCCC44(v142, &unk_1EC4BED20, &unk_1CFA00700);
            }
          }

          else
          {
            v145 = v196;
            (*(v136 + 32))(v196, v142, v138);
          }

          v150 = v211;
          (*(v136 + 16))(v211, v145, v138);
          v151 = v195;
          *(v150 + *(v195 + 20)) = v135;
          v152 = v150 + *(v151 + 24);
          *v152 = "DB queue wait";
          *(v152 + 8) = 13;
          *(v152 + 16) = 2;
          v153 = v135;
          sub_1CF9E7468();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v154 = swift_allocObject();
          *(v154 + 16) = xmmword_1CF9FA450;
          *(v154 + 56) = MEMORY[0x1E69E6158];
          *(v154 + 64) = sub_1CEFD51C4();
          *(v154 + 32) = v140;
          sub_1CF9E6028();

          (*(v136 + 8))(v145, v138);
          sub_1CEFCCC44(v209, &unk_1EC4BED20, &unk_1CFA00700);
          v213 = v217[21];
          v215 = v217[8];
          v212 = sub_1CF9E6448();
          v209 = *(v212 - 8);
          (*(v209 + 56))(v186, 1, 1, v212);
          v155 = v199;
          sub_1CEFDA27C(v150, v199, type metadata accessor for Signpost);
          v156 = (*(v197 + 80) + 16) & ~*(v197 + 80);
          v157 = (v198 + v156 + 7) & 0xFFFFFFFFFFFFFFF8;
          v158 = swift_allocObject();
          sub_1CEFD9FF4(v155, &v158[v156], type metadata accessor for Signpost);
          v159 = &v158[v157];
          v208 = nullsub_1;
          *v159 = nullsub_1;
          *(v159 + 1) = 0;
          v160 = v185;
          sub_1CEFDA27C(v150, v185, type metadata accessor for Signpost);
          v161 = (v157 + 23) & 0xFFFFFFFFFFFFFFF8;
          v162 = (v161 + 15) & 0xFFFFFFFFFFFFFFF8;
          v163 = (v162 + 25) & 0xFFFFFFFFFFFFFFF8;
          v164 = swift_allocObject();
          sub_1CEFD9FF4(v160, v164 + v156, type metadata accessor for Signpost);
          v165 = (v164 + v157);
          *v165 = sub_1CF045408;
          v165[1] = 0;
          *(v164 + v161) = v217;
          v166 = v164 + v162;
          *v166 = "reactToIndexDrop(dropDate:)";
          *(v166 + 8) = 27;
          *(v166 + 16) = 2;
          v167 = (v164 + v163);
          *v167 = v208;
          v167[1] = 0;
          v168 = (v164 + ((v163 + 23) & 0xFFFFFFFFFFFFFFF8));
          v169 = v209;
          v170 = v219;
          *v168 = sub_1CF75C128;
          v168[1] = v170;
          v171 = swift_allocObject();
          v171[2] = sub_1CF75C120;
          v171[3] = v158;
          v172 = v213;
          v171[4] = v213;

          v217 = v158;
          v173 = v212;

          v174 = fpfs_current_log();
          v175 = *(v172 + 16);
          v176 = v202;
          sub_1CEFCCBDC(v186, v202, &unk_1EC4BE370, qword_1CFA01B30);
          if ((*(v169 + 48))(v176, 1, v173) == 1)
          {
            sub_1CEFCCC44(v176, &unk_1EC4BE370, qword_1CFA01B30);
            v177 = QOS_CLASS_UNSPECIFIED;
          }

          else
          {
            v178 = v188;
            sub_1CF9E6438();
            (*(v169 + 8))(v176, v173);
            v177 = sub_1CF9E63C8();
            (*(v189 + 8))(v178, v190);
          }

          v179 = swift_allocObject();
          v179[2] = v174;
          v179[3] = sub_1CF4858EC;
          v179[4] = v164;
          v225 = sub_1CF2BA17C;
          v226 = v179;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v223 = sub_1CEFCA444;
          v224 = &block_descriptor_214;
          v180 = _Block_copy(&aBlock);
          v181 = v174;

          v225 = sub_1CF2BA180;
          v226 = v171;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v223 = sub_1CEFCA444;
          v224 = &block_descriptor_217;
          v182 = _Block_copy(&aBlock);

          fp_task_tracker_async_and_qos(v175, v215, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v177, v180, v182);
          _Block_release(v182);
          _Block_release(v180);

          sub_1CEFCCC44(v186, &unk_1EC4BE370, qword_1CFA01B30);
          sub_1CF75B008(v211, type metadata accessor for Signpost);
          v183 = v216;
          v184 = fpfs_adopt_log();

          (*(v214 + 8))(v210, v218);
LABEL_50:
        }

        v110 = v220;
        v111 = *(*(v220 + 16) + qword_1EDEBBD08);
        v112 = swift_allocObject();
        *(v112 + 16) = v110;
        *(v112 + 24) = sub_1CF75B5F8;
        *(v112 + 32) = v108;
        *(v112 + 40) = 0;
        *(v112 + 48) = 256;

        v113 = v111;
        sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v112);

LABEL_29:

        if ((v219 & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_30;
      }

      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&aBlock = v82;
      *v81 = 67109378;
      *(v81 + 4) = v219 & 1;
      *(v81 + 8) = 2080;
      sub_1CEFCCBDC(v78, v55, &qword_1EC4C46C0, &unk_1CFA16798);
      if ((*(v212 + 48))(v55, 1, v213) == 1)
      {
        v83 = 0x6F68636E61206F6ELL;
        v84 = &qword_1EC4C46C0;
        v85 = &unk_1CFA16798;
      }

      else
      {
        v102 = v55;
        v55 = v187;
        sub_1CEFE55D0(v102, v187, &unk_1EC4C4AE0, qword_1CFA17B10);
        v103 = type metadata accessor for ChangeEnumeratorAnchor();
        if ((*(*(v103 - 8) + 48))(v55, 1, v103) != 1)
        {
          v83 = sub_1CF7D9BAC();
          v105 = v55;
          v104 = v106;
          sub_1CF75B008(v105, type metadata accessor for ChangeEnumeratorAnchor);
          goto LABEL_26;
        }

        v83 = 0x6F68636E61206F6ELL;
        v84 = &unk_1EC4C4AE0;
        v85 = qword_1CFA17B10;
      }

      sub_1CEFCCC44(v55, v84, v85);
      v104 = 0xE900000000000072;
LABEL_26:
      sub_1CEFCCC44(v78, &qword_1EC4C46C0, &unk_1CFA16798);
      v107 = sub_1CEFD0DF0(v83, v104, &aBlock);

      *(v81 + 10) = v107;
      _os_log_impl(&dword_1CEFC7000, v79, v80, "indexer is enabled, updating indexing barrier (index dropped: %{BOOL}d, anchor: %s)", v81, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x1D386CDC0](v82, -1, -1);
      MEMORY[0x1D386CDC0](v81, -1, -1);

      goto LABEL_27;
    }
  }

  v72 = a7;
LABEL_6:
  v66(v67 & 1, a7, 10);
}

uint64_t sub_1CF754620(uint64_t a1, int a2, char *a3, void (*a4)(void, void, void), uint64_t a5, char a6)
{
  LODWORD(v213) = a2;
  v200 = a1;
  v184 = sub_1CF9E63D8();
  v183 = *(v184 - 8);
  v10 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v182 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v196 = &v178 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v178 - v16;
  v195 = sub_1CF9E6068();
  v194 = *(v195 - 8);
  v18 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v190 = &v178 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v188 = &v178 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v203 = &v178 - v24;
  v189 = type metadata accessor for Signpost(0);
  v191 = *(v189 - 8);
  v25 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v27 = &v178 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v193 = &v178 - v29;
  v192 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v205 = &v178 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v201 = &v178 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v202 = &v178 - v37;
  v212 = sub_1CF9E5CF8();
  v208 = *(v212 - 8);
  v38 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v187 = &v178 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = v39;
  MEMORY[0x1EEE9AC00](v40);
  v204 = &v178 - v41;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v207 = *(v198 - 8);
  v42 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v199 = &v178 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v185 = &v178 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v178 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v197 = &v178 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v178 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v178 - v56;
  v58 = sub_1CF9E6118();
  v209 = *(v58 - 8);
  v210 = v58;
  v59 = v209[8];
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v178 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v206 = &v178 - v63;
  v64 = swift_allocObject();
  *(v64 + 16) = a4;
  *(v64 + 24) = a5;
  v214 = v64;
  *(v64 + 32) = a6;
  v211 = a3;
  if (*&a3[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator])
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v179 = v27;
      v180 = v17;
      v66 = *(*(Strong + 16) + 80);
      v67 = Strong;

      if ((v66 & 0x40000) == 0)
      {

        goto LABEL_6;
      }

      v181 = v67;
      v69 = v211;
      if (([v211 isIndexingEnabled] & 1) == 0)
      {
        v81 = [v69 domain];
        if (v81)
        {
          v82 = v81;
          v83 = [v81 isHidden];

          if (v83)
          {
            v84 = 3;
          }

          else
          {
            v84 = 1;
          }
        }

        else
        {
          v84 = 3;
        }

        v85 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v86 = sub_1CF9E6108();
        v87 = sub_1CF9E7298();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *&aBlock = v89;
          *v88 = 67109378;
          *(v88 + 4) = v213 & 1;
          *(v88 + 8) = 2080;
          v90 = sub_1CF5B6A1C(v84, 1);
          v92 = sub_1CEFD0DF0(v90, v91, &aBlock);
          v69 = v211;

          *(v88 + 10) = v92;
          _os_log_impl(&dword_1CEFC7000, v86, v87, "indexer is disabled, updating indexing barrier (index dropped: %{BOOL}d, anchor: %s)", v88, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v89);
          MEMORY[0x1D386CDC0](v89, -1, -1);
          MEMORY[0x1D386CDC0](v88, -1, -1);
        }

        (v209[1])(v61, v210);
        v93 = v181;
        v94 = *(*(v181 + 16) + qword_1EDEBBD08);
        v95 = swift_allocObject();
        *(v95 + 16) = v93;
        *(v95 + 24) = sub_1CF75B630;
        *(v95 + 32) = v214;
        *(v95 + 40) = v84;
        *(v95 + 48) = 1;

        v96 = v94;
        sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v95);

        goto LABEL_29;
      }

      v70 = fpfs_current_or_default_log();
      v71 = v206;
      sub_1CF9E6128();
      v72 = v200;
      sub_1CEFCCBDC(v200, v57, &qword_1EC4C46C0, &unk_1CFA16798);
      v73 = sub_1CF9E6108();
      v74 = sub_1CF9E7298();
      if (!os_log_type_enabled(v73, v74))
      {

        sub_1CEFCCC44(v57, &qword_1EC4C46C0, &unk_1CFA16798);
        (v209[1])(v71, v210);
        v76 = v198;
LABEL_27:
        v102 = v197;
        sub_1CEFCCBDC(v72, v197, &qword_1EC4C46C0, &unk_1CFA16798);
        v103 = (*(v207 + 48))(v102, 1, v76);
        v104 = v214;
        v105 = v199;
        if (v103 != 1)
        {
          v116 = v185;
          sub_1CEFE55D0(v102, v185, &unk_1EC4C4AE0, qword_1CFA17B10);
          sub_1CEFCCBDC(v116, v105, &unk_1EC4C4AE0, qword_1CFA17B10);
          v117 = type metadata accessor for ChangeEnumeratorAnchor();
          if ((*(*(v117 - 8) + 48))(v105, 1, v117) == 1)
          {
            sub_1CEFCCC44(v105, &unk_1EC4C4AE0, qword_1CFA17B10);
            v118 = 0;
          }

          else
          {
            v118 = *(v105 + *(v117 + 20));
            sub_1CF75B008(v105, type metadata accessor for ChangeEnumeratorAnchor);
          }

          v139 = v181;
          v140 = *(*(v181 + 16) + qword_1EDEBBD08);
          v141 = swift_allocObject();
          *(v141 + 16) = v139;
          *(v141 + 24) = sub_1CF75B630;
          *(v141 + 32) = v104;
          *(v141 + 40) = v118;
          *(v141 + 48) = 0;

          v142 = v140;
          sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v141);

          sub_1CEFCCC44(v116, &unk_1EC4C4AE0, qword_1CFA17B10);
          if ((v213 & 1) == 0)
          {
            goto LABEL_50;
          }

LABEL_30:
          v110 = [v69 state];
          v111 = [v110 lastDropDate];

          if (v111)
          {
            v112 = v201;
            sub_1CF9E5CB8();

            v113 = 0;
            v114 = v208;
            v115 = v202;
          }

          else
          {
            v113 = 1;
            v114 = v208;
            v115 = v202;
            v112 = v201;
          }

          v119 = v212;
          (*(v114 + 56))(v112, v113, 1, v212);
          sub_1CEFE55D0(v112, v115, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          if ((*(v114 + 48))(v115, 1, v119) == 1)
          {

            sub_1CEFCCC44(v115, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          }

          v120 = *(v114 + 32);
          v121 = v204;
          v120(v204, v115, v119);
          v122 = v181;
          v123 = *(v181 + 16);
          v124 = v187;
          (*(v114 + 16))(v187, v121, v212);
          v125 = (*(v114 + 80) + 24) & ~*(v114 + 80);
          v126 = swift_allocObject();
          *(v126 + 16) = v122;
          v213 = v126;
          v120((v126 + v125), v124, v212);
          v211 = v123;
          v127 = *&v123[qword_1EDEBBC38];

          v210 = fpfs_adopt_log();
          if (qword_1EDEAE980 != -1)
          {
            swift_once();
          }

          v128 = qword_1EDEBBE40;
          v129 = v194;
          v130 = v203;
          v131 = v195;
          (*(v194 + 56))(v203, 1, 1, v195);
          strcpy(&aBlock, "async batch ");
          BYTE13(aBlock) = 0;
          HIWORD(aBlock) = -5120;
          v132 = sub_1CF9E7988();
          MEMORY[0x1D3868CC0](v132);

          v133 = aBlock;
          v134 = v130;
          v135 = v188;
          sub_1CEFCCBDC(v134, v188, &unk_1EC4BED20, &unk_1CFA00700);
          v136 = *(v129 + 48);
          if (v136(v135, 1, v131) == 1)
          {
            v137 = v128;
            v138 = v190;
            sub_1CF9E6048();
            if (v136(v135, 1, v131) != 1)
            {
              sub_1CEFCCC44(v135, &unk_1EC4BED20, &unk_1CFA00700);
            }
          }

          else
          {
            v138 = v190;
            (*(v129 + 32))(v190, v135, v131);
          }

          v143 = v205;
          (*(v129 + 16))(v205, v138, v131);
          v144 = v189;
          *(v143 + *(v189 + 20)) = v128;
          v145 = v143 + *(v144 + 24);
          *v145 = "DB queue wait";
          *(v145 + 8) = 13;
          *(v145 + 16) = 2;
          v146 = v128;
          sub_1CF9E7468();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v147 = swift_allocObject();
          *(v147 + 16) = xmmword_1CF9FA450;
          *(v147 + 56) = MEMORY[0x1E69E6158];
          *(v147 + 64) = sub_1CEFD51C4();
          *(v147 + 32) = v133;
          sub_1CF9E6028();

          (*(v129 + 8))(v138, v131);
          sub_1CEFCCC44(v203, &unk_1EC4BED20, &unk_1CFA00700);
          v207 = *(v211 + 21);
          v209 = *(v211 + 8);
          v206 = sub_1CF9E6448();
          v203 = *(v206 - 1);
          (*(v203 + 56))(v180, 1, 1, v206);
          v148 = v193;
          sub_1CEFDA27C(v143, v193, type metadata accessor for Signpost);
          v149 = (*(v191 + 80) + 16) & ~*(v191 + 80);
          v150 = (v192 + v149 + 7) & 0xFFFFFFFFFFFFFFF8;
          v151 = swift_allocObject();
          sub_1CEFD9FF4(v148, &v151[v149], type metadata accessor for Signpost);
          v152 = &v151[v150];
          v202 = nullsub_1;
          *v152 = nullsub_1;
          *(v152 + 1) = 0;
          v153 = v179;
          sub_1CEFDA27C(v143, v179, type metadata accessor for Signpost);
          v154 = (v150 + 23) & 0xFFFFFFFFFFFFFFF8;
          v155 = (v154 + 15) & 0xFFFFFFFFFFFFFFF8;
          v156 = (v155 + 25) & 0xFFFFFFFFFFFFFFF8;
          v157 = swift_allocObject();
          sub_1CEFD9FF4(v153, v157 + v149, type metadata accessor for Signpost);
          v158 = (v157 + v150);
          *v158 = sub_1CF045408;
          v158[1] = 0;
          *(v157 + v154) = v211;
          v159 = v157 + v155;
          *v159 = "reactToIndexDrop(dropDate:)";
          *(v159 + 8) = 27;
          *(v159 + 16) = 2;
          v160 = (v157 + v156);
          *v160 = v202;
          v160[1] = 0;
          v161 = (v157 + ((v156 + 23) & 0xFFFFFFFFFFFFFFF8));
          v162 = v203;
          v163 = v213;
          *v161 = sub_1CF75C128;
          v161[1] = v163;
          v164 = swift_allocObject();
          v164[2] = sub_1CF75C120;
          v164[3] = v151;
          v165 = v207;
          v164[4] = v207;

          v211 = v151;
          v166 = v206;

          v167 = fpfs_current_log();
          v168 = *(v165 + 16);
          v169 = v196;
          sub_1CEFCCBDC(v180, v196, &unk_1EC4BE370, qword_1CFA01B30);
          if ((*(v162 + 48))(v169, 1, v166) == 1)
          {
            sub_1CEFCCC44(v169, &unk_1EC4BE370, qword_1CFA01B30);
            v170 = QOS_CLASS_UNSPECIFIED;
          }

          else
          {
            v171 = v182;
            sub_1CF9E6438();
            (*(v162 + 8))(v169, v166);
            v170 = sub_1CF9E63C8();
            (*(v183 + 8))(v171, v184);
          }

          v172 = swift_allocObject();
          v172[2] = v167;
          v172[3] = sub_1CF4858EC;
          v172[4] = v157;
          v218 = sub_1CF2BA17C;
          v219 = v172;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v216 = sub_1CEFCA444;
          v217 = &block_descriptor_255_0;
          v173 = _Block_copy(&aBlock);
          v174 = v167;

          v218 = sub_1CF2BA180;
          v219 = v164;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v216 = sub_1CEFCA444;
          v217 = &block_descriptor_258_2;
          v175 = _Block_copy(&aBlock);

          fp_task_tracker_async_and_qos(v168, v209, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v170, v173, v175);
          _Block_release(v175);
          _Block_release(v173);

          sub_1CEFCCC44(v180, &unk_1EC4BE370, qword_1CFA01B30);
          sub_1CF75B008(v205, type metadata accessor for Signpost);
          v176 = v210;
          v177 = fpfs_adopt_log();

          (*(v208 + 8))(v204, v212);
LABEL_50:
        }

        v106 = v181;
        v107 = *(*(v181 + 16) + qword_1EDEBBD08);
        v108 = swift_allocObject();
        *(v108 + 16) = v106;
        *(v108 + 24) = sub_1CF75B630;
        *(v108 + 32) = v104;
        *(v108 + 40) = 0;
        *(v108 + 48) = 256;

        v109 = v107;
        sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v108);

LABEL_29:

        if ((v213 & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_30;
      }

      v75 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      *&aBlock = v178;
      *v75 = 67109378;
      *(v75 + 4) = v213 & 1;
      *(v75 + 8) = 2080;
      sub_1CEFCCBDC(v57, v54, &qword_1EC4C46C0, &unk_1CFA16798);
      v76 = v198;
      if ((*(v207 + 48))(v54, 1, v198) == 1)
      {
        v77 = 0x6F68636E61206F6ELL;
        v78 = &qword_1EC4C46C0;
        v79 = &unk_1CFA16798;
        v80 = v54;
      }

      else
      {
        sub_1CEFE55D0(v54, v48, &unk_1EC4C4AE0, qword_1CFA17B10);
        v97 = type metadata accessor for ChangeEnumeratorAnchor();
        if ((*(*(v97 - 8) + 48))(v48, 1, v97) != 1)
        {
          v77 = sub_1CF7D9BAC();
          v98 = v99;
          sub_1CF75B008(v48, type metadata accessor for ChangeEnumeratorAnchor);
          goto LABEL_26;
        }

        v77 = 0x6F68636E61206F6ELL;
        v78 = &unk_1EC4C4AE0;
        v79 = qword_1CFA17B10;
        v80 = v48;
      }

      sub_1CEFCCC44(v80, v78, v79);
      v98 = 0xE900000000000072;
LABEL_26:
      sub_1CEFCCC44(v57, &qword_1EC4C46C0, &unk_1CFA16798);
      v100 = sub_1CEFD0DF0(v77, v98, &aBlock);

      *(v75 + 10) = v100;
      _os_log_impl(&dword_1CEFC7000, v73, v74, "indexer is enabled, updating indexing barrier (index dropped: %{BOOL}d, anchor: %s)", v75, 0x12u);
      v101 = v178;
      __swift_destroy_boxed_opaque_existential_1(v178);
      MEMORY[0x1D386CDC0](v101, -1, -1);
      MEMORY[0x1D386CDC0](v75, -1, -1);

      (v209[1])(v206, v210);
      goto LABEL_27;
    }
  }

LABEL_6:
  a4(a6 & 1, 0, 0);
}

uint64_t sub_1CF755E54(uint64_t a1, int a2, char *a3, void (*a4)(void *), uint64_t a5, void *a6)
{
  LODWORD(v215) = a2;
  v202 = a1;
  v186 = sub_1CF9E63D8();
  v185 = *(v186 - 8);
  v10 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v186);
  v184 = &v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v198 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v180 - v16;
  v197 = sub_1CF9E6068();
  v196 = *(v197 - 8);
  v18 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v192 = &v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v190 = &v180 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v205 = &v180 - v24;
  v191 = type metadata accessor for Signpost(0);
  v193 = *(v191 - 8);
  v25 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v27 = &v180 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v195 = &v180 - v29;
  v194 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v207 = &v180 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v203 = &v180 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v204 = &v180 - v37;
  v214 = sub_1CF9E5CF8();
  v210 = *(v214 - 8);
  v38 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v189 = &v180 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = v39;
  MEMORY[0x1EEE9AC00](v40);
  v206 = &v180 - v41;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v209 = *(v200 - 8);
  v42 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v201 = &v180 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v187 = &v180 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v180 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v199 = &v180 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v180 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v180 - v56;
  v58 = sub_1CF9E6118();
  v211 = *(v58 - 8);
  v212 = v58;
  v59 = v211[8];
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v180 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v208 = &v180 - v63;
  v64 = swift_allocObject();
  v64[2] = a4;
  v64[3] = a5;
  v216 = v64;
  v64[4] = a6;
  v213 = a3;
  if (*&a3[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator])
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v181 = v27;
      v182 = v17;
      v66 = *(*(Strong + 16) + 80);
      v67 = Strong;

      v68 = a6;
      if ((v66 & 0x40000) == 0)
      {

        goto LABEL_6;
      }

      v183 = v67;
      v71 = v213;
      if (([v213 isIndexingEnabled] & 1) == 0)
      {
        v83 = [v71 domain];
        if (v83)
        {
          v84 = v83;
          v85 = [v83 isHidden];

          if (v85)
          {
            v86 = 3;
          }

          else
          {
            v86 = 1;
          }
        }

        else
        {
          v86 = 3;
        }

        v87 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v88 = sub_1CF9E6108();
        v89 = sub_1CF9E7298();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          *&aBlock = v91;
          *v90 = 67109378;
          *(v90 + 4) = v215 & 1;
          *(v90 + 8) = 2080;
          v92 = sub_1CF5B6A1C(v86, 1);
          v94 = sub_1CEFD0DF0(v92, v93, &aBlock);
          v71 = v213;

          *(v90 + 10) = v94;
          _os_log_impl(&dword_1CEFC7000, v88, v89, "indexer is disabled, updating indexing barrier (index dropped: %{BOOL}d, anchor: %s)", v90, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v91);
          MEMORY[0x1D386CDC0](v91, -1, -1);
          MEMORY[0x1D386CDC0](v90, -1, -1);
        }

        (v211[1])(v61, v212);
        v95 = v183;
        v96 = *(*(v183 + 16) + qword_1EDEBBD08);
        v97 = swift_allocObject();
        *(v97 + 16) = v95;
        *(v97 + 24) = sub_1CF75C160;
        *(v97 + 32) = v216;
        *(v97 + 40) = v86;
        *(v97 + 48) = 1;

        v98 = v96;
        sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75B120, v97);

        goto LABEL_29;
      }

      v72 = fpfs_current_or_default_log();
      v73 = v208;
      sub_1CF9E6128();
      v74 = v202;
      sub_1CEFCCBDC(v202, v57, &qword_1EC4C46C0, &unk_1CFA16798);
      v75 = sub_1CF9E6108();
      v76 = sub_1CF9E7298();
      if (!os_log_type_enabled(v75, v76))
      {

        sub_1CEFCCC44(v57, &qword_1EC4C46C0, &unk_1CFA16798);
        (v211[1])(v73, v212);
        v78 = v200;
LABEL_27:
        v104 = v199;
        sub_1CEFCCBDC(v74, v199, &qword_1EC4C46C0, &unk_1CFA16798);
        v105 = (*(v209 + 48))(v104, 1, v78);
        v106 = v216;
        v107 = v201;
        if (v105 != 1)
        {
          v118 = v187;
          sub_1CEFE55D0(v104, v187, &unk_1EC4C4AE0, qword_1CFA17B10);
          sub_1CEFCCBDC(v118, v107, &unk_1EC4C4AE0, qword_1CFA17B10);
          v119 = type metadata accessor for ChangeEnumeratorAnchor();
          if ((*(*(v119 - 8) + 48))(v107, 1, v119) == 1)
          {
            sub_1CEFCCC44(v107, &unk_1EC4C4AE0, qword_1CFA17B10);
            v120 = 0;
          }

          else
          {
            v120 = *(v107 + *(v119 + 20));
            sub_1CF75B008(v107, type metadata accessor for ChangeEnumeratorAnchor);
          }

          v141 = v183;
          v142 = *(*(v183 + 16) + qword_1EDEBBD08);
          v143 = swift_allocObject();
          *(v143 + 16) = v141;
          *(v143 + 24) = sub_1CF75C160;
          *(v143 + 32) = v106;
          *(v143 + 40) = v120;
          *(v143 + 48) = 0;

          v144 = v142;
          sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v143);

          sub_1CEFCCC44(v118, &unk_1EC4C4AE0, qword_1CFA17B10);
          if ((v215 & 1) == 0)
          {
            goto LABEL_50;
          }

LABEL_30:
          v112 = [v71 state];
          v113 = [v112 lastDropDate];

          if (v113)
          {
            v114 = v203;
            sub_1CF9E5CB8();

            v115 = 0;
            v116 = v210;
            v117 = v204;
          }

          else
          {
            v115 = 1;
            v116 = v210;
            v117 = v204;
            v114 = v203;
          }

          v121 = v214;
          (*(v116 + 56))(v114, v115, 1, v214);
          sub_1CEFE55D0(v114, v117, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          if ((*(v116 + 48))(v117, 1, v121) == 1)
          {

            sub_1CEFCCC44(v117, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          }

          v122 = *(v116 + 32);
          v123 = v206;
          v122(v206, v117, v121);
          v124 = v183;
          v125 = *(v183 + 16);
          v126 = v189;
          (*(v116 + 16))(v189, v123, v214);
          v127 = (*(v116 + 80) + 24) & ~*(v116 + 80);
          v128 = swift_allocObject();
          *(v128 + 16) = v124;
          v215 = v128;
          v122((v128 + v127), v126, v214);
          v213 = v125;
          v129 = *&v125[qword_1EDEBBC38];

          v212 = fpfs_adopt_log();
          if (qword_1EDEAE980 != -1)
          {
            swift_once();
          }

          v130 = qword_1EDEBBE40;
          v131 = v196;
          v132 = v205;
          v133 = v197;
          (*(v196 + 56))(v205, 1, 1, v197);
          strcpy(&aBlock, "async batch ");
          BYTE13(aBlock) = 0;
          HIWORD(aBlock) = -5120;
          v134 = sub_1CF9E7988();
          MEMORY[0x1D3868CC0](v134);

          v135 = aBlock;
          v136 = v132;
          v137 = v190;
          sub_1CEFCCBDC(v136, v190, &unk_1EC4BED20, &unk_1CFA00700);
          v138 = *(v131 + 48);
          if (v138(v137, 1, v133) == 1)
          {
            v139 = v130;
            v140 = v192;
            sub_1CF9E6048();
            if (v138(v137, 1, v133) != 1)
            {
              sub_1CEFCCC44(v137, &unk_1EC4BED20, &unk_1CFA00700);
            }
          }

          else
          {
            v140 = v192;
            (*(v131 + 32))(v192, v137, v133);
          }

          v145 = v207;
          (*(v131 + 16))(v207, v140, v133);
          v146 = v191;
          *(v145 + *(v191 + 20)) = v130;
          v147 = v145 + *(v146 + 24);
          *v147 = "DB queue wait";
          *(v147 + 8) = 13;
          *(v147 + 16) = 2;
          v148 = v130;
          sub_1CF9E7468();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v149 = swift_allocObject();
          *(v149 + 16) = xmmword_1CF9FA450;
          *(v149 + 56) = MEMORY[0x1E69E6158];
          *(v149 + 64) = sub_1CEFD51C4();
          *(v149 + 32) = v135;
          sub_1CF9E6028();

          (*(v131 + 8))(v140, v133);
          sub_1CEFCCC44(v205, &unk_1EC4BED20, &unk_1CFA00700);
          v209 = *(v213 + 21);
          v211 = *(v213 + 8);
          v208 = sub_1CF9E6448();
          v205 = *(v208 - 1);
          (*(v205 + 56))(v182, 1, 1, v208);
          v150 = v195;
          sub_1CEFDA27C(v145, v195, type metadata accessor for Signpost);
          v151 = (*(v193 + 80) + 16) & ~*(v193 + 80);
          v152 = (v194 + v151 + 7) & 0xFFFFFFFFFFFFFFF8;
          v153 = swift_allocObject();
          sub_1CEFD9FF4(v150, &v153[v151], type metadata accessor for Signpost);
          v154 = &v153[v152];
          v204 = nullsub_1;
          *v154 = nullsub_1;
          *(v154 + 1) = 0;
          v155 = v181;
          sub_1CEFDA27C(v145, v181, type metadata accessor for Signpost);
          v156 = (v152 + 23) & 0xFFFFFFFFFFFFFFF8;
          v157 = (v156 + 15) & 0xFFFFFFFFFFFFFFF8;
          v158 = (v157 + 25) & 0xFFFFFFFFFFFFFFF8;
          v159 = swift_allocObject();
          sub_1CEFD9FF4(v155, v159 + v151, type metadata accessor for Signpost);
          v160 = (v159 + v152);
          *v160 = sub_1CF045408;
          v160[1] = 0;
          *(v159 + v156) = v213;
          v161 = v159 + v157;
          *v161 = "reactToIndexDrop(dropDate:)";
          *(v161 + 8) = 27;
          *(v161 + 16) = 2;
          v162 = (v159 + v158);
          *v162 = v204;
          v162[1] = 0;
          v163 = (v159 + ((v158 + 23) & 0xFFFFFFFFFFFFFFF8));
          v164 = v205;
          v165 = v215;
          *v163 = sub_1CF75B124;
          v163[1] = v165;
          v166 = swift_allocObject();
          v166[2] = sub_1CF75C120;
          v166[3] = v153;
          v167 = v209;
          v166[4] = v209;

          v213 = v153;
          v168 = v208;

          v169 = fpfs_current_log();
          v170 = *(v167 + 16);
          v171 = v198;
          sub_1CEFCCBDC(v182, v198, &unk_1EC4BE370, qword_1CFA01B30);
          if ((*(v164 + 48))(v171, 1, v168) == 1)
          {
            sub_1CEFCCC44(v171, &unk_1EC4BE370, qword_1CFA01B30);
            v172 = QOS_CLASS_UNSPECIFIED;
          }

          else
          {
            v173 = v184;
            sub_1CF9E6438();
            (*(v164 + 8))(v171, v168);
            v172 = sub_1CF9E63C8();
            (*(v185 + 8))(v173, v186);
          }

          v174 = swift_allocObject();
          v174[2] = v169;
          v174[3] = sub_1CF4858EC;
          v174[4] = v159;
          v220 = sub_1CF2BA17C;
          v221 = v174;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v218 = sub_1CEFCA444;
          v219 = &block_descriptor_152;
          v175 = _Block_copy(&aBlock);
          v176 = v169;

          v220 = sub_1CF2BA180;
          v221 = v166;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v218 = sub_1CEFCA444;
          v219 = &block_descriptor_155;
          v177 = _Block_copy(&aBlock);

          fp_task_tracker_async_and_qos(v170, v211, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v172, v175, v177);
          _Block_release(v177);
          _Block_release(v175);

          sub_1CEFCCC44(v182, &unk_1EC4BE370, qword_1CFA01B30);
          sub_1CF75B008(v207, type metadata accessor for Signpost);
          v178 = v212;
          v179 = fpfs_adopt_log();

          (*(v210 + 8))(v206, v214);
LABEL_50:
        }

        v108 = v183;
        v109 = *(*(v183 + 16) + qword_1EDEBBD08);
        v110 = swift_allocObject();
        *(v110 + 16) = v108;
        *(v110 + 24) = sub_1CF75C160;
        *(v110 + 32) = v106;
        *(v110 + 40) = 0;
        *(v110 + 48) = 256;

        v111 = v109;
        sub_1CF01001C(0, "updateIndexBarrier(anchor:completionHandler:)", 45, 2, sub_1CF75C0A4, v110);

LABEL_29:

        if ((v215 & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_30;
      }

      v77 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      *&aBlock = v180;
      *v77 = 67109378;
      *(v77 + 4) = v215 & 1;
      *(v77 + 8) = 2080;
      sub_1CEFCCBDC(v57, v54, &qword_1EC4C46C0, &unk_1CFA16798);
      v78 = v200;
      if ((*(v209 + 48))(v54, 1, v200) == 1)
      {
        v79 = 0x6F68636E61206F6ELL;
        v80 = &qword_1EC4C46C0;
        v81 = &unk_1CFA16798;
        v82 = v54;
      }

      else
      {
        sub_1CEFE55D0(v54, v48, &unk_1EC4C4AE0, qword_1CFA17B10);
        v99 = type metadata accessor for ChangeEnumeratorAnchor();
        if ((*(*(v99 - 8) + 48))(v48, 1, v99) != 1)
        {
          v79 = sub_1CF7D9BAC();
          v100 = v101;
          sub_1CF75B008(v48, type metadata accessor for ChangeEnumeratorAnchor);
          goto LABEL_26;
        }

        v79 = 0x6F68636E61206F6ELL;
        v80 = &unk_1EC4C4AE0;
        v81 = qword_1CFA17B10;
        v82 = v48;
      }

      sub_1CEFCCC44(v82, v80, v81);
      v100 = 0xE900000000000072;
LABEL_26:
      sub_1CEFCCC44(v57, &qword_1EC4C46C0, &unk_1CFA16798);
      v102 = sub_1CEFD0DF0(v79, v100, &aBlock);

      *(v77 + 10) = v102;
      _os_log_impl(&dword_1CEFC7000, v75, v76, "indexer is enabled, updating indexing barrier (index dropped: %{BOOL}d, anchor: %s)", v77, 0x12u);
      v103 = v180;
      __swift_destroy_boxed_opaque_existential_1(v180);
      MEMORY[0x1D386CDC0](v103, -1, -1);
      MEMORY[0x1D386CDC0](v77, -1, -1);

      (v211[1])(v208, v212);
      goto LABEL_27;
    }
  }

  v69 = a6;
LABEL_6:
  a4(a6);
}

void sub_1CF757690(void *a1, char *a2, void *a3)
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  v12 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer;
  v13 = *&a2[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer];
  _Block_copy(a3);
  if (v13)
  {
LABEL_2:
    v14 = *&a2[v12];
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = sub_1CF067718;
    v15[4] = v11;
    if (v14)
    {
      aBlock[4] = sub_1CF75BC50;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF00A468;
      aBlock[3] = &block_descriptor_328;
      v16 = _Block_copy(aBlock);
      v17 = a2;

      v18 = v14;

      [v18 dropIndexWithDropReason:a1 completionHandler:v16];

      _Block_release(v16);
    }

    else
    {
      v31 = a2;
    }

    return;
  }

  v19 = [a2 domain];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 provider];
    if (v21)
    {
      v38 = v21;
      v37 = [v21 providerDomainForDomain_];
      v36 = [v20 nsDomainOrNilForDefault];
      v22 = [v20 log];
      v23 = [v20 supportURL];
      sub_1CF9E59D8();

      v24 = objc_allocWithZone(MEMORY[0x1E6967420]);
      v25 = sub_1CF9E5928();
      v39 = a1;
      v26 = v25;
      (*(v7 + 8))(v10, v6);
      v28 = v36;
      v27 = v37;
      v29 = [v24 initWithDomain:v36 providerDomain:v37 log:v22 supportURL:v26 dropIndexDelegate:a2];

      a1 = v39;
      v30 = *&a2[v12];
      *&a2[v12] = v29;

      goto LABEL_2;
    }
  }

  v32 = FPDomainUnavailableError();
  if (v32)
  {
    v33 = sub_1CF9E57E8();
  }

  else
  {
    v33 = 0;
  }

  v34 = a3[2];
  v39 = v33;
  v34(a3);

  v35 = v39;
}

uint64_t sub_1CF757A54(void *a1, uint64_t a2, void (*a3)(void **), uint64_t a4)
{
  v36 = a1;
  v7 = sub_1CF9E6118();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46B8, &qword_1CFA16790);
  v11 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v32 - v21;
  v23 = swift_allocObject();
  v33 = a3;
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v24 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_lastIndexedAnchor;
  swift_beginAccess();
  sub_1CEFCCBDC(a2 + v24, v17, &qword_1EC4C46C0, &unk_1CFA16798);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {

    sub_1CEFCCC44(v17, &qword_1EC4C46C0, &unk_1CFA16798);
    v25 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v26 = sub_1CF9E6108();
    v27 = sub_1CF9E7298();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1CEFC7000, v26, v27, "🧲  current anchor is unknown, fetching from spotlight", v28, 2u);
      MEMORY[0x1D386CDC0](v28, -1, -1);
    }

    (*(v34 + 8))(v10, v35);
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1CF757EC4;
    *(v29 + 24) = v23;
    aBlock[4] = sub_1CF757ECC;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF749170;
    aBlock[3] = &block_descriptor_49_1;
    v30 = _Block_copy(aBlock);

    [v36 fetchCurrentIndexingAnchorWithCompletionHandler_];
    _Block_release(v30);
  }

  else
  {
    sub_1CEFE55D0(v17, v22, &unk_1EC4C4AE0, qword_1CFA17B10);
    sub_1CEFCCBDC(v22, v13, &unk_1EC4C4AE0, qword_1CFA17B10);
    swift_storeEnumTagMultiPayload();

    sub_1CF749624(v13, v33);
    sub_1CEFCCC44(v13, &qword_1EC4C46B8, &qword_1CFA16790);
    sub_1CEFCCC44(v22, &unk_1EC4C4AE0, qword_1CFA17B10);
  }
}

void sub_1CF757EEC(uint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(void, void *), uint64_t a6, void *a7, void *a8)
{
  v144 = a4;
  v137 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v138 = &v127 - v16;
  v139 = type metadata accessor for ChangeEnumeratorAnchor();
  v140 = *(v139 - 8);
  v17 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v142 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v149 = &v127 - v20;
  v21 = sub_1CF9E6118();
  v147 = *(v21 - 8);
  v148 = v21;
  v22 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v146 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v127 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C8, &unk_1CFA167A8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v127 - v29;
  v31 = swift_allocObject();
  v31[2] = a5;
  v31[3] = a6;
  v31[4] = a7;
  v31[5] = a8;
  v145 = a6;

  v135 = a7;
  v136 = a8;
  v143 = a2;
  v32 = [a2 domain];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 log];
  }

  else
  {
    v34 = 0;
  }

  v35 = fpfs_adopt_log();

  sub_1CEFCCBDC(a1, v30, &qword_1EC4C46C8, &unk_1CFA167A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = *v30;
  v150 = *v30;
  if (EnumCaseMultiPayload == 1)
  {
    v38 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v39 = v37;
    v40 = sub_1CF9E6108();
    v41 = v37;
    v42 = sub_1CF9E72A8();

    if (os_log_type_enabled(v40, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      swift_getErrorValue();
      v45 = Error.prettyDescription.getter(v151);
      *(v43 + 4) = v45;
      *v44 = v45;
      _os_log_impl(&dword_1CEFC7000, v40, v42, "🧲  enumeration error: %@", v43, 0xCu);
      sub_1CEFCCC44(v44, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v44, -1, -1);
      MEMORY[0x1D386CDC0](v43, -1, -1);
    }

    (*(v147 + 8))(v26, v148);
    _s3__C4CodeOMa_1(0);
    aBlock = -1002;
    v46 = v41;
    v47 = v41;
    sub_1CF75B5B0(&qword_1EDEA3590, _s3__C4CodeOMa_1);
    v48 = sub_1CF9E5658();

    if (v48)
    {
      v49 = swift_allocObject();
      v50 = v145;
      v49[2] = a5;
      v49[3] = v50;
      v49[4] = v150;
      v51 = swift_allocObject();
      v51[2] = sub_1CF75C0A0;
      v51[3] = v49;
      v52 = v135;
      v51[4] = v135;
      v157 = sub_1CF75C0AC;
      v158 = v51;
      aBlock = MEMORY[0x1E69E9820];
      v154 = 1107296256;
      v155 = sub_1CF00A468;
      v156 = &block_descriptor_184_0;
      v53 = _Block_copy(&aBlock);
      v41 = v150;

      v54 = v52;
      v55 = v41;

      [v136 dropIndexWithDropReason:9 completionHandler:v53];
      _Block_release(v53);
    }

    else
    {
      a5(0, v41);
    }

    v69 = fpfs_adopt_log();
    goto LABEL_56;
  }

  v56 = *(v30 + 1);
  v131 = *(v30 + 2);
  v134 = v30[24];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46D8, &unk_1CFA167B8);
  sub_1CEFD9FF4(&v30[*(v57 + 96)], v149, type metadata accessor for ChangeEnumeratorAnchor);
  v159 = v56;
  aBlock = MEMORY[0x1E69E7CC0];
  v129 = (v37 >> 62);
  v133 = v31;
  v58 = v37 & 0xFFFFFFFFFFFFFF8;
  if (v37 >> 62)
  {
LABEL_59:
    v59 = sub_1CF9E7818();
  }

  else
  {
    v59 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v132 = v35;
  v60 = v37 & 0xC000000000000001;
  if (!v59)
  {
    v61 = MEMORY[0x1E69E7CC0];
    goto LABEL_33;
  }

  v35 = 0;
  v61 = MEMORY[0x1E69E7CC0];
  do
  {
    v130 = v61;
    v62 = v35;
    while (1)
    {
      if (v60)
      {
        v63 = MEMORY[0x1D3869C30](v62, v37);
      }

      else
      {
        if (v62 >= *(v58 + 16))
        {
          goto LABEL_58;
        }

        v63 = *(v37 + 8 * v62 + 32);
      }

      v64 = v63;
      v35 = (v62 + 1);
      if (__OFADD__(v62, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      if ([v63 isKnownByTheProvider])
      {
        v65 = [v64 itemID];
        v66 = [v65 isDiskIdentifier];

        v37 = v150;
        if (v66)
        {
          break;
        }
      }

LABEL_15:
      ++v62;
      if (v35 == v59)
      {
        v61 = v130;
        goto LABEL_33;
      }
    }

    v67 = [v64 itemID];

    if (!v67)
    {
      goto LABEL_15;
    }

    MEMORY[0x1D3868FA0]();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v68 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1CF9E6D88();
    }

    sub_1CF9E6DE8();
    v61 = aBlock;
  }

  while (v35 != v59);
LABEL_33:
  sub_1CF1E90BC(v61);
  v70 = v159;
  v71 = fpfs_current_or_default_log();
  v72 = v146;
  sub_1CF9E6128();

  v73 = sub_1CF9E6108();
  v74 = sub_1CF9E7288();
  v130 = v70;

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    aBlock = v76;
    *v75 = 136315650;
    if (v129)
    {
      v77 = sub_1CF9E7818();
    }

    else
    {
      v77 = *(v58 + 16);
    }

    v82 = MEMORY[0x1E69E7CC0];
    if (v77)
    {
      v152 = MEMORY[0x1E69E7CC0];
      sub_1CF680D2C(0, v77 & ~(v77 >> 63), 0);
      if (v77 < 0)
      {
        __break(1u);
        v126 = v75;

        sub_1CF513A38("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/enumerators/ChangeEnumerator.swift", 102, 2, 38, v75);
      }

      v127 = v76;
      v128 = v74;
      v129 = v73;
      v82 = v152;
      if (v60)
      {
        for (i = 0; i != v77; ++i)
        {
          MEMORY[0x1D3869C30](i, v150);
          v84 = [swift_unknownObjectRetain() itemID];
          v85 = [v84 identifier];
          swift_unknownObjectRelease_n();

          v152 = v82;
          v87 = *(v82 + 16);
          v86 = *(v82 + 24);
          if (v87 >= v86 >> 1)
          {
            sub_1CF680D2C((v86 > 1), v87 + 1, 1);
            v82 = v152;
          }

          *(v82 + 16) = v87 + 1;
          *(v82 + 8 * v87 + 32) = v85;
        }
      }

      else
      {
        v88 = (v37 + 32);
        do
        {
          v89 = *v88;
          v90 = [v89 itemID];
          v91 = [v90 identifier];

          v152 = v82;
          v93 = *(v82 + 16);
          v92 = *(v82 + 24);
          if (v93 >= v92 >> 1)
          {
            sub_1CF680D2C((v92 > 1), v93 + 1, 1);
            v82 = v152;
          }

          *(v82 + 16) = v93 + 1;
          *(v82 + 8 * v93 + 32) = v91;
          ++v88;
          --v77;
        }

        while (v77);
      }

      v72 = v146;
      v73 = v129;
      LOBYTE(v74) = v128;
      v76 = v127;
    }

    type metadata accessor for NSFileProviderItemIdentifier(0);
    v95 = MEMORY[0x1D3868FE0](v82, v94);
    v97 = v96;

    v98 = sub_1CEFD0DF0(v95, v97, &aBlock);

    *(v75 + 1) = v98;
    *(v75 + 6) = 2080;
    v99 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v100 = MEMORY[0x1D3868FE0](v130, v99);
    v102 = sub_1CEFD0DF0(v100, v101, &aBlock);

    *(v75 + 14) = v102;
    *(v75 + 11) = 1024;
    v75[6] = v134;
    _os_log_impl(&dword_1CEFC7000, v73, v74, "🧲  pushing batch: updating=%s, deleting=%s hasMore=%{BOOL}d", v75, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v76, -1, -1);
    MEMORY[0x1D386CDC0](v75, -1, -1);

    (*(v147 + 8))(v72, v148);
    v78 = v149;
    v79 = v140;
    v80 = v139;
    v81 = v138;
  }

  else
  {

    (*(v147 + 8))(v72, v148);
    v78 = v149;
    v79 = v140;
    v80 = v139;
    v81 = v138;
  }

  sub_1CEFCCBDC(v137, v81, &unk_1EC4C4AE0, qword_1CFA17B10);
  if ((*(v79 + 48))(v81, 1, v80) == 1)
  {
    sub_1CEFCCC44(v81, &unk_1EC4C4AE0, qword_1CFA17B10);
    v150 = 0;
  }

  else
  {
    v103 = sub_1CF9E56C8();
    v104 = *(v103 + 48);
    v105 = *(v103 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    sub_1CF75B5B0(&qword_1EDEA5670, type metadata accessor for ChangeEnumeratorAnchor);
    v106 = sub_1CF9E56A8();
    v108 = v107;

    sub_1CF75B008(v81, type metadata accessor for ChangeEnumeratorAnchor);
    v150 = sub_1CF9E5B48();
    sub_1CEFE4714(v106, v108);
  }

  v109 = sub_1CF9E56C8();
  v110 = *(v109 + 48);
  v111 = *(v109 + 52);
  swift_allocObject();
  sub_1CF9E56B8();
  sub_1CF9E5698();
  sub_1CF75B5B0(&qword_1EDEA5670, type metadata accessor for ChangeEnumeratorAnchor);
  v112 = sub_1CF9E56A8();
  v114 = v113;

  v115 = sub_1CF9E5B48();
  sub_1CEFE4714(v112, v114);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v116 = sub_1CF9E6D28();

  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v117 = sub_1CF9E6D28();

  v118 = v142;
  sub_1CEFDA27C(v78, v142, type metadata accessor for ChangeEnumeratorAnchor);
  v119 = (*(v79 + 80) + 41) & ~*(v79 + 80);
  v120 = (v141 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v121 = swift_allocObject();
  v122 = v143;
  *(v121 + 16) = v143;
  *(v121 + 24) = sub_1CF75C0A8;
  *(v121 + 32) = v133;
  *(v121 + 40) = v134;
  sub_1CEFD9FF4(v118, v121 + v119, type metadata accessor for ChangeEnumeratorAnchor);
  *(v121 + v120) = v131;
  v157 = sub_1CF75B5AC;
  v158 = v121;
  aBlock = MEMORY[0x1E69E9820];
  v154 = 1107296256;
  v155 = sub_1CF748AC4;
  v156 = &block_descriptor_173;
  v123 = _Block_copy(&aBlock);
  v124 = v122;

  v125 = v150;
  [v144 indexOneBatchFromAnchor:v150 toAnchor:v115 updatedItems:v116 deletedItems:v117 completionHandler:v123];
  _Block_release(v123);

  sub_1CF75B008(v149, type metadata accessor for ChangeEnumeratorAnchor);
  v35 = v132;
  v69 = fpfs_adopt_log();
LABEL_56:
}

uint64_t sub_1CF758F38(uint64_t a1, void *a2, void *a3, void *a4, void (*a5)(void, void *), uint64_t a6, void *a7, void *a8)
{
  v196 = a4;
  v201 = a3;
  v203 = a1;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C8, &unk_1CFA167A8);
  v13 = *(*(v178 - 8) + 64);
  MEMORY[0x1EEE9AC00](v178);
  v179 = (&v175 - v14);
  v177 = sub_1CF9E63D8();
  v176 = *(v177 - 8);
  v15 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v191 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v202 = &v175 - v21;
  v189 = sub_1CF9E6068();
  v188 = *(v189 - 8);
  v22 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v184 = &v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v182 = &v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v198 = &v175 - v28;
  v183 = type metadata accessor for Signpost(0);
  v185 = *(v183 - 8);
  v29 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v190 = &v175 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v187 = &v175 - v32;
  v186 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v199 = &v175 - v35;
  v195 = sub_1CF9E6118();
  v194 = *(v195 - 1);
  v36 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v204 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v192 = *(v38 - 8);
  v39 = *(v192 + 8);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v181 = &v175 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v205 = &v175 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v193 = &v175 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v175 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v175 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v208 = &v175 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46B8, &qword_1CFA16790);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = (&v175 - v54);
  v56 = swift_allocObject();
  v200 = a5;
  v56[2] = a5;
  v56[3] = a6;
  v56[4] = a7;
  v56[5] = a8;
  v209 = v56;
  v207 = a6;
  swift_retain_n();
  v57 = a7;
  v58 = a8;
  v59 = v57;
  v206 = v58;
  v197 = a2;
  v60 = [a2 domain];
  if (v60)
  {
    v61 = v60;
    v62 = [v60 log];
  }

  else
  {
    v62 = 0;
  }

  v63 = fpfs_adopt_log();

  sub_1CEFCCBDC(v203, v55, &qword_1EC4C46B8, &qword_1CFA16790);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v65 = v204;
  if (EnumCaseMultiPayload == 1)
  {
    v66 = *v55;
    _s3__C4CodeOMa_1(0);
    *&aBlock = -1002;
    v67 = v66;
    v68 = v66;
    sub_1CF75B5B0(&qword_1EDEA3590, _s3__C4CodeOMa_1);
    v69 = sub_1CF9E5658();

    if (v69)
    {
      v70 = swift_allocObject();
      v71 = v207;
      v70[2] = v200;
      v70[3] = v71;
      v70[4] = v66;
      v72 = swift_allocObject();
      v72[2] = sub_1CF75B068;
      v72[3] = v70;
      v72[4] = v59;
      v213 = sub_1CF75B0A4;
      v214 = v72;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v211 = sub_1CF00A468;
      v212 = &block_descriptor_124;
      v73 = _Block_copy(&aBlock);

      v74 = v59;
      v75 = v66;

      v76 = v206;
      [v206 dropIndexWithDropReason:7 completionHandler:v73];
      _Block_release(v73);
    }

    else
    {
      v200(0, v66);
      v76 = v206;
    }

    goto LABEL_29;
  }

  v203 = v63;
  v77 = v55;
  v78 = v208;
  sub_1CEFE55D0(v77, v208, &unk_1EC4C4AE0, qword_1CFA17B10);
  v79 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(v78, v49, &unk_1EC4C4AE0, qword_1CFA17B10);
  v80 = sub_1CF9E6108();
  v81 = sub_1CF9E7288();
  v82 = os_log_type_enabled(v80, v81);
  v180 = v59;
  if (v82)
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *&aBlock = v84;
    *v83 = 136315138;
    sub_1CEFCCBDC(v49, v46, &unk_1EC4C4AE0, qword_1CFA17B10);
    v85 = type metadata accessor for ChangeEnumeratorAnchor();
    if ((*(*(v85 - 8) + 48))(v46, 1, v85) == 1)
    {
      sub_1CEFCCC44(v46, &unk_1EC4C4AE0, qword_1CFA17B10);
      v86 = 0xE500000000000000;
      v87 = 0x3E6C696E3CLL;
    }

    else
    {
      v87 = sub_1CF7D9BAC();
      v86 = v88;
      sub_1CF75B008(v46, type metadata accessor for ChangeEnumeratorAnchor);
    }

    sub_1CEFCCC44(v49, &unk_1EC4C4AE0, qword_1CFA17B10);
    v89 = sub_1CEFD0DF0(v87, v86, &aBlock);

    *(v83 + 4) = v89;
    _os_log_impl(&dword_1CEFC7000, v80, v81, "🧲  indexing from %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v84);
    MEMORY[0x1D386CDC0](v84, -1, -1);
    MEMORY[0x1D386CDC0](v83, -1, -1);
  }

  else
  {

    sub_1CEFCCC44(v49, &unk_1EC4C4AE0, qword_1CFA17B10);
  }

  (*(v194 + 8))(v65, v195);
  v90 = v205;
  v91 = v208;
  v92 = v193;
  sub_1CEFCCBDC(v208, v193, &unk_1EC4C4AE0, qword_1CFA17B10);
  sub_1CEFCCBDC(v92, v90, &unk_1EC4C4AE0, qword_1CFA17B10);
  v93 = *(v192 + 80);
  v94 = (v93 + 40) & ~v93;
  v204 = (v39 + 7);
  v95 = swift_allocObject();
  v96 = v197;
  v95[2] = v197;
  v95[3] = sub_1CF75C0A8;
  v95[4] = v209;
  sub_1CEFE55D0(v92, v95 + v94, &unk_1EC4C4AE0, qword_1CFA17B10);
  v97 = v196;
  *(v95 + ((v39 + 7 + v94) & 0xFFFFFFFFFFFFFFF8)) = v196;
  Strong = swift_weakLoadStrong();
  v99 = v97;

  v100 = v96;
  if (Strong)
  {
    v101 = v95;
    sub_1CEFCCC44(v205, &unk_1EC4C4AE0, qword_1CFA17B10);
    v102 = *(Strong + 16);
    v103 = v181;
    sub_1CEFCCBDC(v91, v181, &unk_1EC4C4AE0, qword_1CFA17B10);
    v104 = Strong;
    v105 = (v93 + 24) & ~v93;
    v106 = &v204[v105] & 0xFFFFFFFFFFFFFFF8;
    v107 = (v106 + 23) & 0xFFFFFFFFFFFFFFF8;
    v108 = swift_allocObject();
    *(v108 + 16) = v104;
    sub_1CEFE55D0(v103, v108 + v105, &unk_1EC4C4AE0, qword_1CFA17B10);
    v109 = (v108 + v106);
    *v109 = sub_1CF75AFE4;
    v109[1] = v101;
    *(v108 + v107) = 200;
    v204 = v108;
    *(v108 + ((v107 + 15) & 0xFFFFFFFFFFFFFFF8)) = v201;
    v110 = swift_allocObject();
    *(v110 + 16) = sub_1CF75AFE4;
    *(v110 + 24) = v101;
    v205 = v110;
    v200 = v102;
    v111 = *(v102 + qword_1EDEBBC38);
    v197 = v101;
    swift_retain_n();
    v196 = v104;

    v201 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v112 = qword_1EDEBBE40;
    v113 = v188;
    v114 = v198;
    v115 = v189;
    (*(v188 + 56))(v198, 1, 1, v189);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v116 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v116);

    v117 = aBlock;
    v118 = v114;
    v119 = v182;
    sub_1CEFCCBDC(v118, v182, &unk_1EC4BED20, &unk_1CFA00700);
    v120 = *(v113 + 48);
    v121 = v120(v119, 1, v115);
    v122 = v184;
    if (v121 == 1)
    {
      v123 = v112;
      sub_1CF9E6048();
      if (v120(v119, 1, v115) != 1)
      {
        sub_1CEFCCC44(v119, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v113 + 32))(v184, v119, v115);
    }

    v134 = v199;
    (*(v113 + 16))(v199, v122, v115);
    v135 = v183;
    *(v134 + *(v183 + 20)) = v112;
    v136 = v134 + *(v135 + 24);
    *v136 = "DB queue wait";
    *(v136 + 8) = 13;
    *(v136 + 16) = 2;
    v137 = v112;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_1CF9FA450;
    *(v138 + 56) = MEMORY[0x1E69E6158];
    *(v138 + 64) = sub_1CEFD51C4();
    *(v138 + 32) = v117;
    sub_1CF9E6028();

    (*(v113 + 8))(v122, v115);
    sub_1CEFCCC44(v198, &unk_1EC4BED20, &unk_1CFA00700);
    v195 = *(v200 + 21);
    v198 = *(v200 + 8);
    v193 = sub_1CF9E6448();
    v194 = *(v193 - 8);
    (*(v194 + 56))(v202, 1, 1, v193);
    v139 = v187;
    sub_1CEFDA27C(v134, v187, type metadata accessor for Signpost);
    v140 = (*(v185 + 80) + 16) & ~*(v185 + 80);
    v141 = (v186 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
    v142 = swift_allocObject();
    sub_1CEFD9FF4(v139, v142 + v140, type metadata accessor for Signpost);
    v143 = (v142 + v141);
    v192 = sub_1CF75B000;
    v144 = v205;
    *v143 = sub_1CF75B000;
    v143[1] = v144;
    v145 = v190;
    sub_1CEFDA27C(v134, v190, type metadata accessor for Signpost);
    v146 = (v141 + 23) & 0xFFFFFFFFFFFFFFF8;
    v147 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
    v148 = (v147 + 25) & 0xFFFFFFFFFFFFFFF8;
    v149 = (v148 + 23) & 0xFFFFFFFFFFFFFFF8;
    v150 = swift_allocObject();
    sub_1CEFD9FF4(v145, v150 + v140, type metadata accessor for Signpost);
    v151 = (v150 + v141);
    *v151 = sub_1CF045408;
    v151[1] = 0;
    *(v150 + v146) = v200;
    v152 = v150 + v147;
    v153 = v193;
    *v152 = "enumerateChanges(fromAnchor:suggestedBatchSize:reply:)";
    *(v152 + 8) = 54;
    *(v152 + 16) = 2;
    v154 = (v150 + v148);
    v155 = v204;
    v156 = v205;
    *v154 = v192;
    v154[1] = v156;
    v157 = (v150 + v149);
    *v157 = sub_1CF75AFE8;
    v157[1] = v155;
    v158 = swift_allocObject();
    v158[2] = sub_1CF5526E8;
    v158[3] = v142;
    v159 = v195;
    v158[4] = v195;
    swift_retain_n();

    v200 = v142;
    v160 = v194;

    v161 = fpfs_current_log();
    v195 = v159[2];
    v162 = v191;
    sub_1CEFCCBDC(v202, v191, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v160 + 48))(v162, 1, v153) == 1)
    {
      sub_1CEFCCC44(v162, &unk_1EC4BE370, qword_1CFA01B30);
      v163 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v164 = v175;
      sub_1CF9E6438();
      (*(v160 + 8))(v162, v153);
      v163 = sub_1CF9E63C8();
      (*(v176 + 8))(v164, v177);
    }

    v165 = v208;
    v166 = swift_allocObject();
    v166[2] = v161;
    v166[3] = sub_1CF48100C;
    v166[4] = v150;
    v213 = sub_1CEFCA438;
    v214 = v166;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v211 = sub_1CEFCA444;
    v212 = &block_descriptor_112_0;
    v167 = _Block_copy(&aBlock);
    v168 = v161;

    v213 = sub_1CF2AF9E8;
    v214 = v158;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v211 = sub_1CEFCA444;
    v212 = &block_descriptor_115;
    v169 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v195, v198, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v163, v167, v169);
    _Block_release(v169);
    _Block_release(v167);

    sub_1CEFCCC44(v202, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF75B008(v199, type metadata accessor for Signpost);
    v170 = v201;
    v171 = fpfs_adopt_log();

    sub_1CEFCCC44(v165, &unk_1EC4C4AE0, qword_1CFA17B10);

    v76 = v206;
    v59 = v180;
    goto LABEL_28;
  }

  v124 = v91;
  v125 = v100;
  v126 = FPDomainUnavailableError();
  v127 = v180;
  if (v126)
  {
    v128 = v179;
    *v179 = v126;
    swift_storeEnumTagMultiPayload();
    v129 = v207;

    v130 = v127;
    v76 = v206;
    v131 = v206;
    v132 = v205;
    sub_1CF757EEC(v128, v125, v205, v99, v200, v129, v130, v131);

    sub_1CEFCCC44(v128, &qword_1EC4C46C8, &unk_1CFA167A8);
    v133 = v132;
    v59 = v180;
    sub_1CEFCCC44(v133, &unk_1EC4C4AE0, qword_1CFA17B10);
    sub_1CEFCCC44(v124, &unk_1EC4C4AE0, qword_1CFA17B10);
LABEL_28:
    v63 = v203;
LABEL_29:
    v172 = fpfs_adopt_log();
  }

  v174 = v206;

  result = sub_1CEFCCC44(v205, &unk_1EC4C4AE0, qword_1CFA17B10);
  __break(1u);
  return result;
}

void sub_1CF75A564(char *a1, void (**a2)(void, void, void))
{
  v4 = sub_1CF9E6118();
  v99 = *(v4 - 8);
  v100 = v4;
  v5 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v103 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46B8, &qword_1CFA16790);
  v7 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v89 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  v101 = *(v13 - 8);
  v102 = v13;
  v14 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v89 - v15;
  v16 = sub_1CF9E5A58();
  v95 = *(v16 - 8);
  v17 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E64A8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  _Block_copy(a2);
  *v24 = [a1 queue];
  (*(v21 + 104))(v24, *MEMORY[0x1E69E8020], v20);
  v26 = sub_1CF9E64D8();
  (*(v21 + 8))(v24, v20);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v27 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator];
  if (v27)
  {
    v28 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator];

    v29 = [a1 domain];
    v104 = v25;
    if (v29)
    {
      v30 = v29;
      v31 = [v29 provider];
      if (v31)
      {
        v94 = v31;
        v32 = [v31 providerDomainForDomain_];
        v33 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer;
        v34 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer];
        v93 = v32;
        v92 = v34;
        if (v34)
        {
          v35 = v34;
          v36 = [v30 nsDomainOrNilForDefault];
          [v35 setDomain_];

          [v35 setProviderDomain_];
        }

        else
        {
          v91 = [v30 nsDomainOrNilForDefault];
          v90 = v32;
          v41 = [v30 log];
          v42 = [v30 supportURL];
          sub_1CF9E59D8();

          v43 = v30;
          v44 = objc_allocWithZone(MEMORY[0x1E6967420]);
          v45 = sub_1CF9E5928();
          (*(v95 + 8))(v19, v16);
          v46 = v44;
          v30 = v43;
          v47 = v91;
          v48 = v90;
          v49 = [v46 initWithDomain:v91 providerDomain:v90 log:v41 supportURL:v45 dropIndexDelegate:a1];

          v50 = *&a1[v33];
          *&a1[v33] = v49;
          v35 = v49;
        }

        v51 = swift_allocObject();
        v52 = v104;
        v51[2] = sub_1CF75AFC0;
        v51[3] = v52;
        v51[4] = a1;
        v51[5] = v35;
        v53 = swift_allocObject();
        v53[2] = a1;
        v53[3] = sub_1CF75AFC8;
        v53[4] = v51;
        v53[5] = v27;
        v53[6] = v35;
        v54 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_lastIndexedAnchor;
        swift_beginAccess();
        sub_1CEFCCBDC(&a1[v54], v12, &qword_1EC4C46C0, &unk_1CFA16798);
        if ((*(v101 + 48))(v12, 1, v102) == 1)
        {
          v55 = v92;
          v56 = a1;
          v57 = v35;
          swift_retain_n();

          v58 = v56;
          v59 = v57;
          v60 = v58;
          v61 = v59;
          swift_retain_n();
          v62 = v60;
          v63 = v61;
          v64 = v62;
          v65 = v63;
          sub_1CEFCCC44(v12, &qword_1EC4C46C0, &unk_1CFA16798);
          v66 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v67 = sub_1CF9E6108();
          v68 = sub_1CF9E7298();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v102 = v65;
            v70 = v30;
            v71 = v69;
            *v69 = 0;
            _os_log_impl(&dword_1CEFC7000, v67, v68, "🧲  current anchor is unknown, fetching from spotlight", v69, 2u);
            v72 = v71;
            v30 = v70;
            v65 = v102;
            MEMORY[0x1D386CDC0](v72, -1, -1);
          }

          (*(v99 + 8))(v103, v100);
          v73 = swift_allocObject();
          *(v73 + 16) = sub_1CF75AFD4;
          *(v73 + 24) = v53;
          aBlock[4] = sub_1CF75C15C;
          aBlock[5] = v73;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1CF749170;
          aBlock[3] = &block_descriptor_84_0;
          v74 = _Block_copy(aBlock);

          [v65 fetchCurrentIndexingAnchorWithCompletionHandler_];
          _Block_release(v74);
        }

        else
        {
          v75 = v97;
          sub_1CEFE55D0(v12, v97, &unk_1EC4C4AE0, qword_1CFA17B10);
          v76 = v98;
          sub_1CEFCCBDC(v75, v98, &unk_1EC4C4AE0, qword_1CFA17B10);
          swift_storeEnumTagMultiPayload();
          v77 = v92;
          v78 = a1;
          v79 = v35;
          v103 = v30;
          v80 = v79;
          swift_retain_n();

          v81 = v78;
          v82 = v80;
          v83 = v81;
          v84 = v82;
          swift_retain_n();
          v85 = v83;
          v86 = v84;
          v87 = v85;
          v88 = v86;
          v30 = v103;
          sub_1CF758F38(v76, v87, v27, v88, sub_1CF75AFC0, v104, v87, v88);
          sub_1CEFCCC44(v76, &qword_1EC4C46B8, &qword_1CFA16790);
          sub_1CEFCCC44(v75, &unk_1EC4C4AE0, qword_1CFA17B10);
        }

        return;
      }
    }

    v39 = FPDomainUnavailableError();
    if (v39)
    {
      v40 = sub_1CF9E57E8();
    }

    else
    {
      v40 = 0;
    }

    (a2)[2](a2, 0, v40);
  }

  else
  {
    v37 = FPDomainUnavailableError();
    if (v37)
    {
      v38 = sub_1CF9E57E8();
    }

    else
    {
      v38 = 0;
    }

    (a2)[2](a2, 0, v38);
  }
}

uint64_t sub_1CF75B008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF75B068(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = v1[4];
  }

  v5 = v1[3];
  return v3(1, v4);
}

uint64_t sub_1CF75B0B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_1CF75B178(unint64_t a1, char a2, void *a3)
{
  if (a3)
  {
    v3 = a2;
    v4 = a1;
    v5 = qword_1EDEA34B0;
    v6 = a3;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v9 = v8;
    if (v7 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v9 == v10)
    {
      goto LABEL_15;
    }

    v12 = sub_1CF9E8048();

    if (v12)
    {

      return 0;
    }

    if (qword_1EDEA3498 != -1)
    {
      swift_once();
    }

    v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v15 = v14;
    if (v13 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v15 == v16)
    {
LABEL_15:

      return 0;
    }

    v17 = sub_1CF9E8048();

    a1 = v4;
    a2 = v3;
    if (v17)
    {
      return 0;
    }
  }

  return a2 == -1 || a2 != 2 || a1 >= 2;
}

BOOL sub_1CF75B358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v18 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  sub_1CEFCCBDC(a1, &v18 - v8, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_1CEFCCC44(v9, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v11 = 0;
    v12 = -1;
  }

  else
  {
    v11 = *v9;
    v12 = v9[8];
    sub_1CEFCCC44(v9, &unk_1EC4BE360, &qword_1CF9FE650);
  }

  v13 = type metadata accessor for PendingIndexingItemRow();
  sub_1CEFCCBDC(a1 + *(v13 + 20), v5, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
  {
    sub_1CEFCCC44(v5, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v15 = 0;
  }

  else
  {
    v15 = *v5;
    sub_1CEFCCC44(v5, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  }

  v16 = sub_1CF75B178(v11, v12, v15);

  return v16;
}

uint64_t sub_1CF75B5B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_169Tm()
{
  v1 = *(type metadata accessor for ChangeEnumeratorAnchor() - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = *(v0 + 32);

  v5 = sub_1CF9E5D98();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(v0 + v3);

  return swift_deallocObject();
}

void sub_1CF75B758(unint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for ChangeEnumeratorAnchor() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  v11 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF747AA4(a1, a2, v7, v8, v9, v10, v2 + v6, v11);
}

uint64_t objectdestroy_90Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = *(v0 + 32);

  v5 = type metadata accessor for ChangeEnumeratorAnchor();
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    v6 = sub_1CF9E5D98();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
  }

  return swift_deallocObject();
}

void sub_1CF75B94C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF74B450(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t objectdestroy_93Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  v5 = type metadata accessor for ChangeEnumeratorAnchor();
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    v6 = sub_1CF9E5D98();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v7 + 8);

  v10 = *(v0 + v8);

  return swift_deallocObject();
}

uint64_t sub_1CF75BB4C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF74FD10(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_120Tm()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t objectdestroy_132Tm()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_105Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_129Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1CF75BF70(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[72])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1CF75BFC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1CF75C164(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1CF9E7A48();
    v4 = (a1 + 32);
    sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
    for (i = v2 - 1; ; --i)
    {
      v6 = v4[1];
      v14[0] = *v4;
      v14[1] = v6;
      v7 = v4[3];
      v9 = *v4;
      v8 = v4[1];
      v14[2] = v4[2];
      v14[3] = v7;
      v13[0] = v9;
      v13[1] = v8;
      v10 = v4[3];
      v13[2] = v4[2];
      v13[3] = v10;
      sub_1CEFCCBDC(v14, &v12, &unk_1EC4BF250, &unk_1CFA01B50);
      sub_1CF327484(v13);
      sub_1CF9E7A18();
      v11 = *(v15 + 16);
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      if (!i)
      {
        break;
      }

      v4 += 4;
    }

    return v15;
  }

  return result;
}

BOOL sub_1CF75C2CC(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = a1 & 0xFFFFDFFFFFFEF6E7;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    a1 = v3 & (qword_1EDEABDE8 | 0x6409000000C000);
  }

  return (*(v2 + 16) & a1) != 0 || (*(v2 + 8) & 0x51) != 0;
}

BOOL sub_1CF75C36C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = a1 & 0xFFFFDFFFFFFEF6E7;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    a1 = v3 & (qword_1EDEABDE8 | 0x6409000000C000);
  }

  return (*(v2 + 24) & a1) != 0 || (*(v2 + 16) & 0x51) != 0;
}

id sub_1CF75C40C(uint64_t a1, uint64_t a2, char a3)
{
  if (a2 == 2 && a1 == 0)
  {
    if (a3)
    {
      v5 = *MEMORY[0x1E6967258];

      return v5;
    }
  }

  else if (a2 == 2 && a1 == 1 && (a3 & 1) != 0)
  {
    v5 = *MEMORY[0x1E6967280];

    return v5;
  }

  v7 = VFSItemID.description.getter(a1, a2);
  MEMORY[0x1D3868CC0](v7);

  v8 = sub_1CF9E6888();

  return v8;
}

id sub_1CF75C4E8(void *a1, char a2)
{
  if (qword_1EDEA34B0 != -1)
  {
    swift_once();
  }

  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;
  if (v4 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v6 != v7)
  {
    v9 = sub_1CF9E8048();

    if (v9 & 1) != 0 && (a2)
    {
      goto LABEL_9;
    }

LABEL_11:
    if (qword_1EDEA3498 != -1)
    {
      swift_once();
    }

    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v13 = v12;
    if (v11 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v13 == v14)
    {

      if (a2)
      {
LABEL_19:
        v10 = MEMORY[0x1E6967280];
        goto LABEL_20;
      }
    }

    else
    {
      v15 = sub_1CF9E8048();

      if (v15 & 1) != 0 && (a2)
      {
        goto LABEL_19;
      }
    }

    return a1;
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v10 = MEMORY[0x1E6967258];
LABEL_20:

  v16 = *v10;

  return v16;
}

uint64_t sub_1CF75C6B8()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  v3 = v0[17];
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  *(v2 + 32) = sub_1CF7962A0;
  *(v2 + 40) = v3;

  sub_1CEFF7124(v4);

  v6 = *(v1 + 16);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  *(v6 + 16) = sub_1CF02E218;
  *(v6 + 24) = v7;

  sub_1CEFF7124(v8);

  v10 = v0[5];
  v11 = *(v10 + 16);
  v12 = v0[18];
  v13 = *(v11 + 32);
  v14 = *(v11 + 40);
  *(v11 + 32) = sub_1CF796308;
  *(v11 + 40) = v12;

  sub_1CEFF7124(v13);

  v15 = *(v10 + 16);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = *(v15 + 16);
  v18 = *(v15 + 24);
  *(v15 + 16) = sub_1CF066958;
  *(v15 + 24) = v16;

  sub_1CEFF7124(v17);

  v19 = *(v1 + 16);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(v19 + 48);
  v22 = *(v19 + 56);
  *(v19 + 48) = sub_1CF796370;
  *(v19 + 56) = v20;

  sub_1CEFF7124(v21);

  v23 = *(v10 + 16);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = *(v23 + 48);
  v26 = *(v23 + 56);
  *(v23 + 48) = sub_1CF796390;
  *(v23 + 56) = v24;

  sub_1CEFF7124(v25);

  v27 = *(v1 + 16);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = *(v27 + 64);
  v30 = *(v27 + 72);
  *(v27 + 64) = sub_1CF7963A0;
  *(v27 + 72) = v28;

  sub_1CEFF7124(v29);
}

id sub_1CF75C998()
{
  v2 = v0;
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  sub_1CF75C6B8();
  sub_1CF92865C("activate()", 10, 2, sub_1CF796264, v0);
  if (v1)
  {
    sub_1CF3E3914();
    return swift_willThrow();
  }

  else
  {
    v12 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v13 = sub_1CF9E6108();
    v14 = sub_1CF9E7298();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1CEFC7000, v13, v14, "notify scheduler we are ready", v15, 2u);
      MEMORY[0x1D386CDC0](v15, -1, -1);
    }

    v16 = *(v4 + 8);
    v16(v10, v3);
    sub_1CF7FC438();
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E7298();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "make sure we get idle stream notification", v20, 2u);
      MEMORY[0x1D386CDC0](v20, -1, -1);
    }

    v16(v7, v3);
    v21 = *(**(*(v2 + 4) + 16) + 920);

    v21(v22);

    if (qword_1EDEADB60 != -1)
    {
      swift_once();
    }

    return [qword_1EDEBBD10 addWatcher_];
  }
}

uint64_t sub_1CF75CCA0(uint64_t (*a1)(void *), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v8 = objc_sync_enter(v4);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v13 = v4;
    fp_preconditionFailure(_:file:line:)(a3, v12, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v9 = a1(v4);
  v10 = objc_sync_exit(v4);
  if (v10)
  {
    MEMORY[0x1EEE9AC00](v10);
    v13 = v4;
    fp_preconditionFailure(_:file:line:)(a4, v12, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v9;
}

uint64_t sub_1CF75CDE4(uint64_t a1)
{
  swift_beginAccess();
  v56 = a1;
  v2 = *(a1 + 16);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  sub_1CF2B1654(&qword_1EDEA3460, &qword_1EDEAB520, 0x1E6967388);
  swift_getKeyPath();
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v55 = -1 << *(v2 + 32);
  v7 = (63 - v4) >> 6;
  swift_bridgeObjectRetain_n();
  result = swift_retain_n();
  v61 = 0;
  v9 = 0;
  v57 = MEMORY[0x1E69E7CC0];
  v58 = v7;
  v62 = MEMORY[0x1E69E7CC0] + 32;
  v59 = v2 + 64;
  v60 = v2;
  while (2)
  {
    v10 = v9;
    if (v6)
    {
LABEL_6:
      v9 = v10;
LABEL_11:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = v12 | (v9 << 6);
      v14 = *(v2 + 48) + 32 * v13;
      v15 = *v14;
      v16 = (*(v2 + 56) + 16 * v13);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*v16 + 16);
      v63 = *v14;
      v64 = *(v14 + 8);
      v65 = *(v14 + 16);
      LODWORD(v74) = *(v14 + 24);
      sub_1CF1FB2C0(v15, v64, v65, v74);

      result = v18 + 32;
      v20 = -v19;
      v21 = -1;
      do
      {
        if (v20 + v21 == -1)
        {
          sub_1CF484340(v63, v64, v65, v74);

          v10 = v9;
          v3 = v59;
          v2 = v60;
          v7 = v58;
          if (v6)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }

        if (++v21 >= *(v18 + 16))
        {
          __break(1u);
          goto LABEL_44;
        }

        v22 = result + 56;
        sub_1CEFCCBDC(result, v71, &qword_1EC4BE650, &qword_1CF9FE490);
        v23 = v73;
        sub_1CEFCCC44(v71, &qword_1EC4BE650, &qword_1CF9FE490);
        result = v22;
      }

      while (v23 != 1);
      v71[0] = v63;
      v71[1] = v64;
      v71[2] = v65;
      v24 = v74;
      LOBYTE(v72) = v74;
      sub_1CEFCCBDC(v71, &v68, &qword_1EC4C0670, &qword_1CFA129D0);
      sub_1CF484340(v63, v64, v65, v24);

      v25 = v68;
      v26 = v69;
      v27 = v70;
      if (v61)
      {
        v3 = v59;
        v2 = v60;
        v7 = v58;
        v28 = v61 - 1;
        if (__OFSUB__(v61, 1))
        {
          break;
        }

LABEL_34:
        v61 = v28;
        *v62 = v25;
        *(v62 + 16) = v26;
        *(v62 + 24) = v27;
        v62 += 32;
        continue;
      }

      v29 = *(v57 + 3);
      if (((v29 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_46;
      }

      v66 = v70;
      v74 = v69;
      v67 = v68;
      v30 = v29 & 0xFFFFFFFFFFFFFFFELL;
      if (v30 <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = v30;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7A8, &qword_1CF9FE670);
      v32 = swift_allocObject();
      v33 = _swift_stdlib_malloc_size(v32);
      v34 = v33 - 32;
      if (v33 < 32)
      {
        v34 = v33 - 1;
      }

      v35 = v34 >> 5;
      *(v32 + 2) = v31;
      *(v32 + 3) = 2 * (v34 >> 5);
      v36 = v32 + 32;
      v37 = *(v57 + 3) >> 1;
      v38 = 32 * v37;
      if (*(v57 + 2))
      {
        v39 = v57 + 32;
        if (v32 != v57 || v36 >= &v39[v38])
        {
          v40 = v34 >> 5;
          memmove(v32 + 32, v39, v38);
          v35 = v40;
        }

        *(v57 + 2) = 0;
      }

      v62 = &v36[v38];
      v41 = (v35 & 0x7FFFFFFFFFFFFFFFLL) - v37;

      v42 = v41;
      v57 = v32;
      v3 = v59;
      v2 = v60;
      v7 = v58;
      v25 = v67;
      v26 = v74;
      v27 = v66;
      v43 = __OFSUB__(v42, 1);
      v28 = v42 - 1;
      if (!v43)
      {
        goto LABEL_34;
      }
    }

    else
    {
LABEL_7:
      v11 = v10;
      while (1)
      {
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v9 >= v7)
        {
          sub_1CEFCB59C();

          v44 = v57;
          v45 = *(v57 + 3);
          if (v45 >= 2)
          {
            v46 = v45 >> 1;
            v43 = __OFSUB__(v46, v61);
            v47 = v46 - v61;
            if (v43)
            {
              goto LABEL_48;
            }

            *(v57 + 2) = v47;
          }

          swift_beginAccess();
          v48 = *(v56 + 24);
          v49 = *(v48 + 16);
          if (v49)
          {
            v50 = sub_1CF1F8C20(*(v48 + 16), 0);
            v51 = sub_1CF1F9FB8(v71, (v50 + 4), v49, v48);

            result = sub_1CEFCB59C();
            if (v51 != v49)
            {
              goto LABEL_47;
            }

            v44 = v57;
          }

          else
          {
            v50 = MEMORY[0x1E69E7CC0];
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4780, &unk_1CFA16930);
          v52 = swift_allocObject();
          v53 = sub_1CF8E4594(v44);

          *(v52 + 16) = v53;
          v54 = sub_1CF8E4594(v50);

          *(v52 + 24) = v54;
          [*(v56 + 40) addObject_];
          return v52;
        }

        v6 = *(v3 + 8 * v9);
        ++v11;
        if (v6)
        {
          goto LABEL_11;
        }
      }

LABEL_44:
      __break(1u);
    }

    break;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1CF75D370(uint64_t a1)
{
  swift_beginAccess();
  v48 = a1;
  v2 = *(a1 + 16);
  type metadata accessor for VFSItem(0);
  sub_1CF77E690(qword_1EDEABC30, type metadata accessor for VFSItem);
  swift_getKeyPath();
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v47 = -1 << *(v2 + 32);
  v7 = (63 - v4) >> 6;
  swift_bridgeObjectRetain_n();
  result = swift_retain_n();
  v9 = 0;
  v10 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  v50 = v7;
  v52 = v2;
  v53 = MEMORY[0x1E69E7CC0] + 32;
  v51 = v2 + 64;
  while (2)
  {
    v11 = v10;
    v59 = v9;
    if (v6)
    {
LABEL_6:
      v10 = v11;
LABEL_11:
      v13 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v14 = v13 | (v10 << 6);
      v15 = *(v2 + 48) + 48 * v14;
      v58 = *(v15 + 16);
      v54 = *v15;
      v57 = *(v15 + 32);
      v55 = *(v15 + 41);
      v56 = *(v15 + 40);
      v16 = (*(v2 + 56) + 16 * v14);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*v16 + 16);
      v20 = *v16 + 32;

      v62 = v17;

      result = v20;
      v21 = -1;
      do
      {
        if (v21 - v19 == -1)
        {

          v11 = v10;
          v3 = v51;
          v2 = v52;
          v7 = v50;
          v9 = v59;
          if (v6)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }

        if (++v21 >= *(v18 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        v22 = result + 56;
        sub_1CEFCCBDC(result, &v60, &qword_1EC4BE650, &qword_1CF9FE490);
        v23 = v61;
        sub_1CEFCCC44(&v60, &qword_1EC4BE650, &qword_1CF9FE490);
        result = v22;
      }

      while (v23 != 1);

      v24 = v59;
      if (!v59)
      {
        v25 = *(v49 + 3);
        if (((v25 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_42;
        }

        v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7B0, &qword_1CF9FE678);
        v28 = swift_allocObject();
        v29 = (_swift_stdlib_malloc_size(v28) - 32) / 48;
        *(v28 + 2) = v27;
        *(v28 + 3) = 2 * v29;
        v30 = v28 + 32;
        v31 = *(v49 + 3) >> 1;
        v32 = 48 * v31;
        if (*(v49 + 2))
        {
          v33 = v49 + 32;
          if (v28 != v49 || v30 >= &v33[v32])
          {
            v34 = v29;
            memmove(v28 + 32, v33, 48 * v31);
            v29 = v34;
          }

          *(v49 + 2) = 0;
        }

        v53 = &v30[v32];
        v24 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v49 = v28;
      }

      v3 = v51;
      v2 = v52;
      v7 = v50;
      v35 = __OFSUB__(v24, 1);
      v9 = v24 - 1;
      if (!v35)
      {
        *v53 = v54;
        *(v53 + 16) = v58;
        *(v53 + 32) = v57;
        *(v53 + 40) = v56;
        *(v53 + 41) = v55;
        v53 += 48;
        continue;
      }
    }

    else
    {
LABEL_7:
      v12 = v11;
      while (1)
      {
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v10 >= v7)
        {

          sub_1CEFCB59C();

          v36 = v49;
          v37 = *(v49 + 3);
          if (v37 >= 2)
          {
            v38 = v37 >> 1;
            v35 = __OFSUB__(v38, v9);
            v39 = v38 - v9;
            if (v35)
            {
              goto LABEL_44;
            }

            *(v49 + 2) = v39;
          }

          swift_beginAccess();
          v40 = *(v48 + 24);
          v41 = *(v40 + 16);
          if (v41)
          {
            v42 = sub_1CF1F8CB0(*(v40 + 16), 0);
            v43 = sub_1CF1FA120(&v60, (v42 + 4), v41, v40);

            result = sub_1CEFCB59C();
            if (v43 != v41)
            {
              goto LABEL_43;
            }

            v36 = v49;
          }

          else
          {
            v42 = MEMORY[0x1E69E7CC0];
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C47A0, qword_1CFA16950);
          v44 = swift_allocObject();
          v45 = sub_1CF8E4694(v36);

          *(v44 + 16) = v45;
          v46 = sub_1CF8E4694(v42);

          *(v44 + 24) = v46;
          [*(v48 + 40) addObject_];
          return v44;
        }

        v6 = *(v3 + 8 * v10);
        ++v12;
        if (v6)
        {
          goto LABEL_11;
        }
      }

LABEL_40:
      __break(1u);
    }

    break;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

id sub_1CF75D884(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if ((*(v2 + 25) & 1) == 0)
  {
    v4 = *(v2 + 24);
    if (v4 == 2 && v3 == 0)
    {
      v10 = MEMORY[0x1E6967258];
    }

    else
    {
      if (v4 != 2 || v3 != 1)
      {
        v11 = *(v2 + 16);
        v7 = VFSItemID.description.getter(v3, a2);
        MEMORY[0x1D3868CC0](v7);

        v8 = sub_1CF9E6888();

        return v8;
      }

      v10 = MEMORY[0x1E6967280];
    }

    v3 = *v10;
  }

  return v3;
}

void sub_1CF75D96C(uint64_t a1, int a2, void *a3, int a4)
{
  LODWORD(v83) = a4;
  v82 = a3;
  LODWORD(v81) = a2;
  v5 = sub_1CF9E63D8();
  v80 = *(v5 - 8);
  v6 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v87 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v75 - v12;
  v13 = sub_1CF9E6068();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v75 - v23;
  v25 = type metadata accessor for Signpost(0);
  v84 = *(v25 - 8);
  v26 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v86 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v85 = &v75 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v88 = &v75 - v30;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v75 = v5;
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = a1;
    *(v33 + 32) = v81;
    *(v33 + 40) = v82;
    v34 = v83 & 1;
    v83 = v33;
    *(v33 + 48) = v34;
    v35 = *(v32 + qword_1EDEBBC38);
    v89 = v32;

    v82 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v36 = qword_1EDEBBE40;
    (*(v14 + 56))(v24, 1, 1, v13);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v37 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v37);

    v78 = *(&aBlock + 1);
    v81 = aBlock;
    sub_1CEFCCBDC(v24, v21, &unk_1EC4BED20, &unk_1CFA00700);
    v38 = *(v14 + 48);
    if (v38(v21, 1, v13) == 1)
    {
      v39 = v36;
      sub_1CF9E6048();
      v40 = v17;
      if (v38(v21, 1, v13) != 1)
      {
        sub_1CEFCCC44(v21, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v40 = v17;
      (*(v14 + 32))(v17, v21, v13);
    }

    v41 = v88;
    (*(v14 + 16))(v88, v40, v13);
    *(v41 + *(v25 + 20)) = v36;
    v42 = v41 + *(v25 + 24);
    *v42 = "DB queue wait";
    *(v42 + 8) = 13;
    *(v42 + 16) = 2;
    v43 = v36;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1CF9FA450;
    *(v44 + 56) = MEMORY[0x1E69E6158];
    *(v44 + 64) = sub_1CEFD51C4();
    v45 = v78;
    *(v44 + 32) = v81;
    *(v44 + 40) = v45;
    sub_1CF9E6028();

    (*(v14 + 8))(v40, v13);
    sub_1CEFCCC44(v24, &unk_1EC4BED20, &unk_1CFA00700);
    v78 = *(v89 + 168);
    v81 = *(v89 + 64);
    v76 = sub_1CF9E6448();
    v77 = *(v76 - 8);
    (*(v77 + 56))(v90, 1, 1, v76);
    v46 = v85;
    sub_1CEFE505C(v41, v85, type metadata accessor for Signpost);
    v47 = (*(v84 + 80) + 16) & ~*(v84 + 80);
    v48 = (v26 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    sub_1CEFE4E00(v46, v49 + v47, type metadata accessor for Signpost);
    v50 = (v49 + v48);
    v85 = nullsub_1;
    *v50 = nullsub_1;
    v50[1] = 0;
    v51 = v86;
    sub_1CEFE505C(v41, v86, type metadata accessor for Signpost);
    v52 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 25) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    sub_1CEFE4E00(v51, v55 + v47, type metadata accessor for Signpost);
    v56 = (v55 + v48);
    v57 = v76;
    *v56 = sub_1CF045408;
    v56[1] = 0;
    *(v55 + v52) = v89;
    v58 = v55 + v53;
    *v58 = "setFileTreeHandlers()";
    *(v58 + 8) = 21;
    *(v58 + 16) = 2;
    v59 = (v55 + v54);
    *v59 = v85;
    v59[1] = 0;
    v60 = (v55 + ((v54 + 23) & 0xFFFFFFFFFFFFFFF8));
    v61 = v77;
    v62 = v83;
    *v60 = sub_1CF7963EC;
    v60[1] = v62;
    v63 = swift_allocObject();
    v63[2] = sub_1CF75C120;
    v63[3] = v49;
    v64 = v78;
    v63[4] = v78;

    v86 = v49;

    v65 = fpfs_current_log();
    v85 = *(v64 + 16);
    v66 = v87;
    sub_1CEFCCBDC(v90, v87, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v61 + 48))(v66, 1, v57) == 1)
    {
      sub_1CEFCCC44(v66, &unk_1EC4BE370, qword_1CFA01B30);
      v67 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v68 = v79;
      sub_1CF9E6438();
      (*(v61 + 8))(v66, v57);
      v67 = sub_1CF9E63C8();
      (*(v80 + 8))(v68, v75);
    }

    v69 = swift_allocObject();
    v69[2] = v65;
    v69[3] = sub_1CF4858EC;
    v69[4] = v55;
    v94 = sub_1CF2BA17C;
    v95 = v69;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v92 = sub_1CEFCA444;
    v93 = &block_descriptor_713;
    v70 = _Block_copy(&aBlock);
    v71 = v65;

    v94 = sub_1CF2BA180;
    v95 = v63;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v92 = sub_1CEFCA444;
    v93 = &block_descriptor_716;
    v72 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v85, v81, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v67, v70, v72);
    _Block_release(v72);
    _Block_release(v70);

    sub_1CEFCCC44(v90, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007CB8(v88, type metadata accessor for Signpost);
    v73 = v82;
    v74 = fpfs_adopt_log();
  }
}

void sub_1CF75E47C(void *a1, uint64_t a2, char a3)
{
  v82 = a2;
  v5 = sub_1CF9E63D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v76 - v13;
  v14 = sub_1CF9E6068();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v88 = &v76 - v23;
  v24 = type metadata accessor for Signpost(0);
  v84 = *(v24 - 8);
  v25 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v86 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v85 = &v76 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v89 = &v76 - v29;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v76 = v6;
    v77 = v5;
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = a1;
    *(v32 + 32) = v82;
    v82 = v32;
    *(v32 + 40) = a3 & 1;
    v33 = *(v31 + qword_1EDEBBC38);
    v90 = v31;

    v34 = a1;
    v80 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v35 = qword_1EDEBBE40;
    v36 = v88;
    (*(v15 + 56))(v88, 1, 1, v14);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v37 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v37);

    v78 = *(&aBlock + 1);
    v79 = aBlock;
    sub_1CEFCCBDC(v36, v21, &unk_1EC4BED20, &unk_1CFA00700);
    v38 = *(v15 + 48);
    if (v38(v21, 1, v14) == 1)
    {
      v39 = v35;
      v40 = v83;
      sub_1CF9E6048();
      if (v38(v21, 1, v14) != 1)
      {
        sub_1CEFCCC44(v21, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v40 = v83;
      (*(v15 + 32))(v83, v21, v14);
    }

    v41 = v89;
    (*(v15 + 16))(v89, v40, v14);
    *(v41 + *(v24 + 20)) = v35;
    v42 = v41 + *(v24 + 24);
    *v42 = "DB queue wait";
    *(v42 + 8) = 13;
    *(v42 + 16) = 2;
    v43 = v35;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1CF9FA450;
    *(v44 + 56) = MEMORY[0x1E69E6158];
    *(v44 + 64) = sub_1CEFD51C4();
    v45 = v78;
    *(v44 + 32) = v79;
    *(v44 + 40) = v45;
    sub_1CF9E6028();

    (*(v15 + 8))(v40, v14);
    sub_1CEFCCC44(v88, &unk_1EC4BED20, &unk_1CFA00700);
    v83 = *(v90 + 168);
    v88 = *(v90 + 64);
    v79 = sub_1CF9E6448();
    v78 = *(v79 - 8);
    (*(v78 + 56))(v91, 1, 1, v79);
    v46 = v85;
    sub_1CEFE505C(v41, v85, type metadata accessor for Signpost);
    v47 = (*(v84 + 80) + 16) & ~*(v84 + 80);
    v48 = (v25 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    sub_1CEFE4E00(v46, v49 + v47, type metadata accessor for Signpost);
    v50 = (v49 + v48);
    v85 = nullsub_1;
    *v50 = nullsub_1;
    v50[1] = 0;
    v51 = v86;
    sub_1CEFE505C(v41, v86, type metadata accessor for Signpost);
    v52 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 25) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    sub_1CEFE4E00(v51, v55 + v47, type metadata accessor for Signpost);
    v56 = (v55 + v48);
    v57 = v90;
    *v56 = sub_1CF045408;
    v56[1] = 0;
    *(v55 + v52) = v57;
    v58 = v55 + v53;
    *v58 = "setFileTreeHandlers()";
    *(v58 + 8) = 21;
    *(v58 + 16) = 2;
    v59 = (v55 + v54);
    *v59 = v85;
    v59[1] = 0;
    v60 = (v55 + ((v54 + 23) & 0xFFFFFFFFFFFFFFF8));
    v61 = v78;
    v62 = v82;
    *v60 = sub_1CF7963C4;
    v60[1] = v62;
    v63 = swift_allocObject();
    v63[2] = sub_1CF75C120;
    v63[3] = v49;
    v64 = v83;
    v63[4] = v83;
    v65 = v79;

    v86 = v49;

    v66 = fpfs_current_log();
    v85 = *(v64 + 2);
    v67 = v87;
    sub_1CEFCCBDC(v91, v87, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v61 + 48))(v67, 1, v65) == 1)
    {
      sub_1CEFCCC44(v67, &unk_1EC4BE370, qword_1CFA01B30);
      v68 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v69 = v81;
      sub_1CF9E6438();
      (*(v61 + 8))(v67, v65);
      v68 = sub_1CF9E63C8();
      (*(v76 + 8))(v69, v77);
    }

    v70 = swift_allocObject();
    v70[2] = v66;
    v70[3] = sub_1CF4858EC;
    v70[4] = v55;
    v95 = sub_1CF2BA17C;
    v96 = v70;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v93 = sub_1CEFCA444;
    v94 = &block_descriptor_688;
    v71 = _Block_copy(&aBlock);
    v72 = v66;

    v95 = sub_1CF2BA180;
    v96 = v63;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v93 = sub_1CEFCA444;
    v94 = &block_descriptor_691;
    v73 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v85, v88, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v68, v71, v73);
    _Block_release(v73);
    _Block_release(v71);

    sub_1CEFCCC44(v91, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007CB8(v89, type metadata accessor for Signpost);
    v74 = v80;
    v75 = fpfs_adopt_log();
  }
}

void sub_1CF75EF90()
{
  v0 = sub_1CF9E63D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v76 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v80 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v68 - v8;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v68 - v19;
  v21 = type metadata accessor for Signpost(0);
  v77 = *(v21 - 8);
  v22 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v79 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v78 = (&v68 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v81 = &v68 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v69 = v1;
    v70 = v0;
    v28 = *(Strong + qword_1EDEBBC38);
    v82 = Strong;

    v75 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v29 = qword_1EDEBBE40;
    (*(v10 + 56))(v20, 1, 1, v9);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v30 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v30);

    v73 = *(&aBlock + 1);
    v74 = aBlock;
    sub_1CEFCCBDC(v20, v17, &unk_1EC4BED20, &unk_1CFA00700);
    v31 = *(v10 + 48);
    if (v31(v17, 1, v9) == 1)
    {
      v32 = v29;
      sub_1CF9E6048();
      if (v31(v17, 1, v9) != 1)
      {
        sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v10 + 32))(v13, v17, v9);
    }

    v33 = v81;
    (*(v10 + 16))(v81, v13, v9);
    *(v33 + *(v21 + 20)) = v29;
    v34 = v33 + *(v21 + 24);
    *v34 = "DB queue wait";
    *(v34 + 8) = 13;
    *(v34 + 16) = 2;
    v35 = v29;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1CF9FA450;
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1CEFD51C4();
    v37 = v73;
    *(v36 + 32) = v74;
    *(v36 + 40) = v37;
    sub_1CF9E6028();

    (*(v10 + 8))(v13, v9);
    sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
    v73 = *(v82 + 168);
    v74 = *(v82 + 64);
    v71 = sub_1CF9E6448();
    v72 = *(v71 - 8);
    (*(v72 + 56))(v83, 1, 1, v71);
    v38 = v78;
    sub_1CEFE505C(v33, v78, type metadata accessor for Signpost);
    v39 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v40 = (v22 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    sub_1CEFE4E00(v38, v41 + v39, type metadata accessor for Signpost);
    v42 = (v41 + v40);
    v78 = nullsub_1;
    *v42 = nullsub_1;
    v42[1] = 0;
    v43 = v79;
    sub_1CEFE505C(v33, v79, type metadata accessor for Signpost);
    v44 = (v40 + 23) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 25) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    v48 = v43;
    v49 = v72;
    sub_1CEFE4E00(v48, v47 + v39, type metadata accessor for Signpost);
    v50 = (v47 + v40);
    v51 = v71;
    *v50 = sub_1CF045408;
    v50[1] = 0;
    v52 = v82;
    *(v47 + v44) = v82;
    v53 = v47 + v45;
    *v53 = "setFileTreeHandlers()";
    *(v53 + 8) = 21;
    *(v53 + 16) = 2;
    v54 = (v47 + v46);
    *v54 = v78;
    v54[1] = 0;
    v55 = (v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v55 = sub_1CF7963A8;
    v55[1] = v52;
    v56 = swift_allocObject();
    v56[2] = sub_1CF75C120;
    v56[3] = v41;
    v57 = v73;
    v56[4] = v73;
    swift_retain_n();

    v58 = fpfs_current_log();
    v79 = *(v57 + 16);
    v59 = v80;
    sub_1CEFCCBDC(v83, v80, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v49 + 48))(v59, 1, v51) == 1)
    {
      sub_1CEFCCC44(v59, &unk_1EC4BE370, qword_1CFA01B30);
      v60 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v61 = v76;
      sub_1CF9E6438();
      (*(v49 + 8))(v59, v51);
      v60 = sub_1CF9E63C8();
      (*(v69 + 8))(v61, v70);
    }

    v62 = swift_allocObject();
    v62[2] = v58;
    v62[3] = sub_1CF4858EC;
    v62[4] = v47;
    v87 = sub_1CF2BA17C;
    v88 = v62;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v85 = sub_1CEFCA444;
    v86 = &block_descriptor_663_0;
    v63 = _Block_copy(&aBlock);
    v64 = v58;

    v87 = sub_1CF2BA180;
    v88 = v56;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v85 = sub_1CEFCA444;
    v86 = &block_descriptor_666;
    v65 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v79, v74, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v60, v63, v65);
    _Block_release(v65);
    _Block_release(v63);

    sub_1CEFCCC44(v83, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007CB8(v81, type metadata accessor for Signpost);
    v66 = v75;
    v67 = fpfs_adopt_log();
  }
}

uint64_t sub_1CF75FA3C(void *a1, uint64_t a2)
{
  v5 = sub_1CF9E5CF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 32);
  v11 = *(**(v10 + 16) + 848);

  LOBYTE(v11) = v11(v12);

  if (v11)
  {
    return result;
  }

  v14 = a1[3];
  v42 = a1[4];
  v41 = __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(**(v10 + 16) + 96))(&v45);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v16 = v15;
  v44 = *(v6 + 8);
  result = v44(v9, v5);
  v17 = v16 * 1000000000.0;
  if (COERCE__INT64(fabs(v16 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v39 = v14;
  v40 = v2;
  v43 = a2;
  v18 = v17;
  v19 = v45;
  v20 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB90, &unk_1CFA052F0);
  v21 = swift_allocObject();
  *(v21 + 152) = v20;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 1;
  *(v21 + 56) = 0u;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0;
  v38 = xmmword_1CF9FEC30;
  *(v21 + 96) = xmmword_1CF9FEC30;
  *(v21 + 112) = 0;
  *(v21 + 120) = 0x2000000000000000;
  *(v21 + 128) = v18;
  *(v21 + 136) = 0;
  *(v21 + 144) = v19;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v23 = v22;
  result = v44(v9, v5);
  v24 = v23 * 1000000000.0;
  if (COERCE__INT64(fabs(v23 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = v40;
  sub_1CF5215C0(v21);

  if (!v25 && *(v10 + 33) == 1)
  {
    v26 = a1[3];
    v27 = __swift_project_boxed_opaque_existential_1(a1, v26);
    (*(**(v10 + 16) + 96))(&v45);
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v29 = v28;
    result = v44(v9, v5);
    v30 = v29 * 1000000000.0;
    if (COERCE__INT64(fabs(v29 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v42 = v27;
      if (v30 > -9.22337204e18)
      {
        v41 = v26;
        if (v30 < 9.22337204e18)
        {
          v31 = v30;
          v32 = v45;
          v33 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9F8, &qword_1CF9FADC0);
          v34 = swift_allocObject();
          *(v34 + 152) = v33;
          *(v34 + 16) = 0u;
          *(v34 + 32) = 0u;
          *(v34 + 48) = 1;
          *(v34 + 56) = 0u;
          *(v34 + 72) = 0u;
          *(v34 + 88) = 0;
          *(v34 + 96) = v38;
          *(v34 + 112) = 0;
          *(v34 + 120) = 0x2000000000000000;
          *(v34 + 128) = v31;
          *(v34 + 136) = 0;
          *(v34 + 144) = v32;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v36 = v35;
          result = v44(v9, v5);
          v37 = v36 * 1000000000.0;
          if (COERCE__INT64(fabs(v36 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v37 > -9.22337204e18)
            {
              if (v37 < 9.22337204e18)
              {
                sub_1CF5215C0(v34);
              }

LABEL_29:
              __break(1u);
              return result;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1CF75FF3C(void *a1, uint64_t a2)
{
  v5 = sub_1CF9E6118();
  v173 = *(v5 - 8);
  v174 = v5;
  v6 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v172 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5CF8();
  v176 = *(v8 - 8);
  v177 = v8;
  v9 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v175 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v180 = *(v11 - 8);
  v181 = v11;
  v12 = v180[8];
  MEMORY[0x1EEE9AC00](v11);
  v178 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v179 = &v164 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v182 = &v164 - v21;
  if ((*(a2 + 80) & 0x40) == 0)
  {
    v22 = *(a2 + qword_1EDEBBCE8);
    swift_getObjectType();
    sub_1CF9E7448();
  }

  v24 = *(a2 + 48);
  v23 = *(a2 + 56);
  ObjectType = swift_getObjectType();
  v26 = a1[3];
  v27 = a1[4];
  v28 = __swift_project_boxed_opaque_existential_1(a1, v26);
  result = sub_1CF95FD18(v28, ObjectType, v26, v23, v27);
  if (!v2)
  {
    v30 = *(a2 + qword_1EDEADB30);
    *(a2 + qword_1EDEADB30) = result;

    v31 = a1[3];
    v32 = a1[4];
    v33 = __swift_project_boxed_opaque_existential_1(a1, v31);
    v34 = sub_1CF95F840(v33, ObjectType, v31, v23, v32);
    v171 = a1;
    v35 = v34;
    v36 = objc_sync_enter(a2);
    if (v36)
    {
      MEMORY[0x1EEE9AC00](v36);
      *(&v164 - 2) = a2;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v164 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v37 = v35 & 1;
    *(a2 + 90) = v35 & 1;
    v38 = *(a2 + 96);
    v39 = v171;
    if (v38)
    {
      v40 = *(a2 + 104);

      v38(v37);
      sub_1CEFF7124(v38);
    }

    v41 = objc_sync_exit(a2);
    if (v41)
    {
      MEMORY[0x1EEE9AC00](v41);
      *(&v164 - 2) = a2;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v164 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    if (*(a2 + 90))
    {
      if (qword_1EDEACD48 != -1)
      {
        swift_once();
      }

      [qword_1EDEBBBF8 addWatcher_];
    }

    v43 = v39[3];
    v42 = v39[4];
    v44 = __swift_project_boxed_opaque_existential_1(v39, v43);
    v45 = *(a2 + 32);
    v46 = sub_1CF685BB0(v44, v43, *(v42 + 8));
    v169 = v45;
    v170 = v46;
    v47 = v39[3];
    v48 = v39[4];
    v49 = __swift_project_boxed_opaque_existential_1(v39, v47);
    v50 = *(a2 + 40);
    v51 = sub_1CF685BB0(v49, v47, *(v48 + 8));
    v165 = a2;
    v167 = v51;
    v53 = v39[3];
    v52 = v39[4];
    v54 = __swift_project_boxed_opaque_existential_1(v39, v53);
    v168 = (*v169[2] + 888);
    v166 = *v168;

    v166(v24, v23, v54, v53, v52);
    v168 = 0;

    v56 = v39[3];
    v55 = v39[4];
    v57 = __swift_project_boxed_opaque_existential_1(v39, v56);
    v58 = *(**(v50 + 16) + 888);

    v59 = v57;
    v60 = v168;
    v58(v24, v23, v59, v56, v55);
    if (v60)
    {
    }

    v61 = v39[3];
    v62 = v39[4];
    v63 = __swift_project_boxed_opaque_existential_1(v39, v61);
    v64 = v169;
    (*(*v169[2] + 96))(&aBlock);
    v65 = v182;
    (*(*v64 + 240))(&aBlock, 1, v63, v61, *(v62 + 8));
    v168 = 0;
    v66 = v64[2];
    type metadata accessor for VFSFileTree(0);
    v67 = swift_dynamicCastClass();
    v68 = v165;
    if (v67)
    {
      v69 = v67;
      sub_1CEFCCBDC(v65, v19, &qword_1EC4C1B40, &unk_1CF9FCB70);
      if ((v180[6])(v19, 1, v181) == 1)
      {
        sub_1CEFCCC44(v19, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v65 = v182;
      }

      else
      {
        v70 = v19;
        v71 = v178;
        sub_1CEFE55D0(v70, v178, &unk_1EC4BE360, &qword_1CF9FE650);
        v72 = v71;
        v73 = v179;
        v74 = sub_1CEFE55D0(v72, v179, &unk_1EC4BE360, &qword_1CF9FE650);
        v180 = &v164;
        v75 = *(v69 + 216);
        MEMORY[0x1EEE9AC00](v74);
        *(&v164 - 4) = v69;
        *(&v164 - 3) = v73;
        *(&v164 - 2) = v68;
        v181 = v66;

        v76 = v75;
        v77 = fpfs_current_log();
        v178 = fpfs_adopt_log();
        v191 = 0;
        v192 = 1;
        aBlock = sub_1CF9E73C8();
        v184 = v78;
        MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
        v79 = 2;
        v80 = sub_1CF9E7988();
        MEMORY[0x1D3868CC0](v80);

        sub_1CF9E6978();

        v81 = __fp_log_fork();

        v169 = &v164;
        v191 = v81;
        v192 = 0;
        MEMORY[0x1EEE9AC00](v82);
        *(&v164 - 8) = v77;
        *(&v164 - 7) = &v191;
        *(&v164 - 6) = v76;
        *(&v164 - 5) = "activate()";
        *(&v164 - 4) = 10;
        *(&v164 - 24) = 2;
        *(&v164 - 2) = sub_1CF796280;
        *(&v164 - 1) = (&v164 - 6);
        v190 = 1;
        v189 = 0;
        v83 = swift_allocObject();
        v83[2] = &v190;
        v83[3] = sub_1CF2B16F4;
        v83[4] = &v164 - 10;
        v83[5] = &v189;
        v84 = swift_allocObject();
        *(v84 + 16) = sub_1CF2B16B0;
        *(v84 + 24) = v83;
        v187 = sub_1CEFFD054;
        v188 = v84;
        aBlock = MEMORY[0x1E69E9820];
        v184 = 1107296256;
        v185 = sub_1CEFFD02C;
        v186 = &block_descriptor_635;
        v85 = _Block_copy(&aBlock);

        FPDispatchAsyncAndWait(v76, v85);
        _Block_release(v85);
        LOBYTE(v85) = swift_isEscapingClosureAtFileLocation();

        if (v85)
        {
LABEL_48:
          __break(1u);
LABEL_49:

          v147 = v167 & 0xFFFFFFFFFFFFFF8;
          if (v167 >> 62)
          {
            v148 = sub_1CF9E7818();
          }

          else
          {
            v148 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v149 = 0;
          v150 = v167 & 0xC000000000000001;
          while (v148 != v149)
          {
            if (v150)
            {
              v136 = MEMORY[0x1D3869C30](v149, v167);
              if (__OFADD__(v149, 1))
              {
                goto LABEL_60;
              }
            }

            else
            {
              if (v149 >= *(v147 + 16))
              {
                goto LABEL_82;
              }

              v151 = *(v167 + 8 * v149 + 32);

              if (__OFADD__(v149, 1))
              {
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }
            }

            v152 = *(v136 + 136);

            ++v149;
            if ((v152 & 0x10000) != 0)
            {
              v170 = v167;
              goto LABEL_31;
            }
          }

          goto LABEL_32;
        }

        v65 = v182;
        if (v189)
        {
          v86 = v189;

          swift_willThrow();

          v87 = v178;
          v88 = fpfs_adopt_log();

          sub_1CEFCCC44(v65, &qword_1EC4C1B40, &unk_1CF9FCB70);
          return sub_1CEFCCC44(v179, &unk_1EC4BE360, &qword_1CF9FE650);
        }

        if (v190)
        {
          goto LABEL_83;
        }

        v89 = v178;
        v90 = fpfs_adopt_log();

        sub_1CEFCCC44(v179, &unk_1EC4BE360, &qword_1CF9FE650);
        v68 = v165;
        v39 = v171;
      }
    }

    v91 = v39;
    v92 = v39[3];
    v93 = v91[4];
    v94 = __swift_project_boxed_opaque_existential_1(v91, v92);
    v79 = v68[3];
    v95 = v168;
    (*(*v79 + 592))(v94, v92, v93);
    if (v95)
    {
      sub_1CEFCCC44(v65, &qword_1EC4C1B40, &unk_1CF9FCB70);
    }

    v96 = v91[3];
    v97 = v91[4];
    v98 = __swift_project_boxed_opaque_existential_1(v91, v96);
    v77 = v68[2];
    v99 = (*(*v77 + 552))(v98, v96, *(v97 + 8));
    v100 = (v68 + qword_1EDEBBCD0);
    *v100 = v99;
    v100[1] = v101;
    v102 = v91[3];
    v103 = v91[4];
    v104 = __swift_project_boxed_opaque_existential_1(v91, v102);
    v105 = (*(*v77 + 560))(v104, v102, *(v103 + 8));
    v107 = (v68 + qword_1EDEBBCA8);
    *v107 = v105;
    v107[1] = v106;
    v108 = v175;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v110 = v109;
    (*(v176 + 8))(v108, v177);
    v111 = v110 * 1000000000.0;
    if (COERCE__INT64(fabs(v110 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v111 > -9.22337204e18)
    {
      if (v111 < 9.22337204e18)
      {
        v112 = v111;
        v113 = v171[3];
        v114 = v171[4];
        v115 = __swift_project_boxed_opaque_existential_1(v171, v113);
        sub_1CF52733C(v170, v112, v115, v113, v114);
        v116 = v171[3];
        v117 = v171[4];
        v118 = __swift_project_boxed_opaque_existential_1(v171, v116);
        sub_1CF033A74();
        sub_1CF52733C(v167, v112, v118, v116, v117);

        v119 = v171[3];
        v120 = v171[4];
        v121 = __swift_project_boxed_opaque_existential_1(v171, v119);
        v122 = (*(*v77 + 232))(v121, v119, *(v120 + 8));
        v77 = 0;
        if (v122 & 1) != 0 || (v137 = v171[3], v138 = v171[4], v139 = __swift_project_boxed_opaque_existential_1(v171, v137), ((*(*v79 + 576))(v139, v137, *(v138 + 8))))
        {
LABEL_30:

LABEL_31:

          v123 = v171;
          v124 = v171[3];
          v125 = v171[4];
          v126 = __swift_project_boxed_opaque_existential_1(v171, v124);
          v127 = v165;
          sub_1CF5A1A2C(v126, v124, *(v125 + 8));
          v128 = v123[3];
          v129 = v123[4];
          v130 = __swift_project_boxed_opaque_existential_1(v123, v128);
          sub_1CF9618D0(v127, v130, v128, v129);
          if (v77)
          {
            return sub_1CEFCCC44(v182, &qword_1EC4C1B40, &unk_1CF9FCB70);
          }

LABEL_32:
          v131 = v171[4];
          __swift_project_boxed_opaque_existential_1(v171, v171[3]);
          v132 = *(v131 + 8);
          sub_1CF5A5F38();
          if (!v77)
          {
            v133 = v171[3];
            v134 = v171[4];
            v135 = __swift_project_boxed_opaque_existential_1(v171, v133);
            LOBYTE(v136) = (*(*v79 + 336))(1, 69, v135, v133, *(v134 + 8));
LABEL_61:
            if ((v136 & 1) != 0 && (*(v165 + qword_1EDEBBC48) & 1) == 0)
            {
              *(v165 + qword_1EDEBBC48) = 1;
              if (qword_1EDEA5A98 != -1)
              {
                swift_once();
              }

              [qword_1EDEBB818 addWatcher_];
            }

            v153 = v171[3];
            v154 = v171[4];
            v155 = __swift_project_boxed_opaque_existential_1(v171, v153);
            v156 = (*(*v79 + 480))(v155, v153, *(v154 + 8));
            if (!v77)
            {
              if ((v156 & 1) != 0 && (*(v165 + qword_1EDEBBC40) & 1) == 0)
              {
                *(v165 + qword_1EDEBBC40) = 1;
                if (qword_1EDEAC220[0] != -1)
                {
                  swift_once();
                }

                [qword_1EDEBBA80 addWatcher_];
              }

              v157 = v165;
              v158 = v165[14];
              swift_getObjectType();
              swift_unknownObjectRetain();
              sub_1CF9E7448();
              swift_unknownObjectRelease();
              if ((v157[11] & 1) == 0)
              {
                v159 = v165[14];
                swift_getObjectType();
                swift_unknownObjectRetain();
                sub_1CF9E7438();
                swift_unknownObjectRelease();
                v160 = fpfs_current_or_default_log();
                sub_1CF9E6128();
                v161 = sub_1CF9E6108();
                v162 = sub_1CF9E7298();
                if (os_log_type_enabled(v161, v162))
                {
                  v163 = swift_slowAlloc();
                  *v163 = 0;
                  _os_log_impl(&dword_1CEFC7000, v161, v162, "suspending the scheduler", v163, 2u);
                  MEMORY[0x1D386CDC0](v163, -1, -1);
                }

                (*(v173 + 8))(v172, v174);
              }
            }
          }

          return sub_1CEFCCC44(v182, &qword_1EC4C1B40, &unk_1CF9FCB70);
        }

        if (!(v170 >> 62))
        {
          v140 = v170 & 0xFFFFFFFFFFFFFF8;
          v141 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_38;
        }

LABEL_84:
        v140 = v170 & 0xFFFFFFFFFFFFFF8;
        v141 = sub_1CF9E7818();
LABEL_38:
        v142 = 0;
        v143 = v170 & 0xC000000000000001;
        while (v141 != v142)
        {
          if (v143)
          {
            v145 = MEMORY[0x1D3869C30](v142, v170);
            if (__OFADD__(v142, 1))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v142 >= *(v140 + 16))
            {
              goto LABEL_81;
            }

            v144 = *(v170 + 8 * v142 + 32);

            if (__OFADD__(v142, 1))
            {
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }
          }

          v146 = *(v145 + 136);

          ++v142;
          if ((v146 & 0x10000) != 0)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_49;
      }

      goto LABEL_80;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  return result;
}

uint64_t sub_1CF761444(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = objc_sync_enter(a1);
  if (v18)
  {
    MEMORY[0x1EEE9AC00](v18);
    *(&v29 - 2) = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v29 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v19 = a1[20];

  v20 = objc_sync_exit(a1);
  if (v20)
  {
    MEMORY[0x1EEE9AC00](v20);
    *(&v29 - 2) = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v29 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  (*(v7 + 16))(v10, v19 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v6);

  sub_1CF264F9C(2, 0, 0x208000u, v17);
  if (v3)
  {

    (*(v7 + 8))(v10, v6);
    v21 = type metadata accessor for VFSItem(0);
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
  }

  v22 = *(a2 + 32);
  sub_1CEFCCBDC(v17, v14, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v23 = type metadata accessor for VFSItem(0);
  v24 = (*(*(v23 - 8) + 48))(v14, 1, v23);
  if (v24 == 1)
  {
    sub_1CEFCCC44(v14, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v25 = 0;
  }

  else
  {
    v25 = *&v14[*(v23 + 36)];
    v26 = *(v14 + 5);

    sub_1CF007CB8(v14, type metadata accessor for VFSItem);

    swift_bridgeObjectRelease_n();
    if (v22 == v25)
    {
      return sub_1CEFCCC44(v17, &unk_1EC4BEC00, &unk_1CF9FCB60);
    }
  }

  if (qword_1EDEACD48 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBBF8 removeWatcher_];
  sub_1CF24CD3C();
  swift_allocError();
  *v27 = v22;
  *(v27 + 8) = 0;
  *(v27 + 16) = v25;
  *(v27 + 24) = v24 == 1;
  *(v27 + 48) = 0;
  swift_willThrow();
  return sub_1CEFCCC44(v17, &unk_1EC4BEC00, &unk_1CF9FCB60);
}

uint64_t sub_1CF7618A4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, char *a10, char *a11, uint64_t a12)
{
  v63 = a8;
  LODWORD(v70) = a7;
  v15 = sub_1CF9E6068();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v71 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v68 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v59 - v23;
  v25 = type metadata accessor for Signpost(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v74 = v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  v28 = *(v25 + 24);
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = *(a1 + v28 + 16);
  v62 = *(a1 + *(v25 + 20));
  v61 = v29;
  v60 = v30;
  v59[3] = v31;
  v64 = a1;
  v32 = sub_1CF9E6038();
  v33 = a2(v32);
  v73 = a4;
  v75 = *(a4 + 80);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v72 = a9;
  v67 = qword_1EDEBBE40;
  (*(v16 + 56))(v24, 1, 1, v15);
  *&v76 = 0;
  *(&v76 + 1) = 0xE000000000000000;
  sub_1CF9E7948();

  strcpy(&v76, "async batch ");
  BYTE13(v76) = 0;
  HIWORD(v76) = -5120;
  v34 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v34);

  MEMORY[0x1D3868CC0](0x467265746661203ALL, 0xED00003D6873756CLL);
  v69 = v33;
  if (v33)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v33)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v35, v36);

  MEMORY[0x1D3868CC0](4424054777695860000, 0xE800000000000000);
  if ((v75 & 4) != 0)
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if ((v75 & 4) != 0)
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v37, v38);

  v65 = *(&v76 + 1);
  v66 = v76;
  v70 = v24;
  v39 = v68;
  sub_1CEFCCBDC(v24, v68, &unk_1EC4BED20, &unk_1CFA00700);
  v40 = *(v16 + 48);
  if (v40(v39, 1, v15) == 1)
  {
    v41 = v67;
    v42 = v67;
    v43 = v71;
    sub_1CF9E6048();
    v44 = v40(v39, 1, v15);
    v45 = v74;
    if (v44 != 1)
    {
      sub_1CEFCCC44(v39, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v43 = v71;
    (*(v16 + 32))(v71, v39, v15);
    v45 = v74;
    v41 = v67;
  }

  v68 = a12;
  v74 = a11;
  v71 = a10;
  v46 = (v75 & 4) == 0;
  (*(v16 + 16))(v45, v43, v15);
  *(v45 + *(v25 + 20)) = v41;
  v47 = v45 + *(v25 + 24);
  *v47 = "DB queue";
  *(v47 + 8) = 8;
  *(v47 + 16) = 2;
  v48 = v41;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1CF9FA450;
  *(v49 + 56) = MEMORY[0x1E69E6158];
  *(v49 + 64) = sub_1CEFD51C4();
  v50 = v65;
  *(v49 + 32) = v66;
  *(v49 + 40) = v50;
  v58 = v49;
  LOBYTE(v57) = 2;
  v56 = 2;
  sub_1CF9E6028();

  (*(v16 + 8))(v43, v15);
  v51 = sub_1CEFCCC44(v70, &unk_1EC4BED20, &unk_1CFA00700);
  if ((v69 & v46) == 1)
  {
    (*(*v73 + 448))("asyncBatch(function:side:afterNextDurableFlush:onCancel:updateBlock:)", 69, 2, v63 & 1, 0, v72, v71, v74, v68);
  }

  else
  {
    v77 = 0;
    v52 = MEMORY[0x1EEE9AC00](v51);
    v53 = v73;
    v54 = v68;
    *&v59[-16] = v74;
    *&v59[-14] = v54;
    *&v59[-12] = v53;
    *&v59[-10] = &v77;
    v56 = v64;
    v57 = v72;
    v58 = v71;
    (*(*v53 + 2528))(&v76, sub_1CF5DFA18, v52);
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF007CB8(v45, type metadata accessor for Signpost);
}

void sub_1CF76206C(void *a1, uint64_t a2)
{
  if ((*(a2 + 80) & 0x40) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/ConcreteDatabase.swift", 106, 2, 3851);
  }

  v5 = a2 + qword_1EDEBBC20;
  os_unfair_lock_lock((a2 + qword_1EDEBBC20));
  sub_1CF762138((v5 + 8), a1, a2);
  os_unfair_lock_unlock(v5);
  if (!v2)
  {
    v6 = a2 + qword_1EDEBBC28;
    os_unfair_lock_lock((a2 + qword_1EDEBBC28));
    sub_1CF7622C8((v6 + 8), a1);
    os_unfair_lock_unlock(v6);
  }
}

uint64_t sub_1CF762138(__int128 *a1, void *a2, void *a3)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = __swift_project_boxed_opaque_existential_1(a2, v6);
  v9 = a1[3];
  v25 = a1[2];
  v26 = v9;
  v10 = a1[5];
  v27 = a1[4];
  v28 = v10;
  v11 = a1[1];
  v23 = *a1;
  v24 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0680, &qword_1CFA05A88);
  result = sub_1CF5B01A0(a3, v8, v12, v6, v7);
  if (!v3)
  {
    v31 = *(&v24 + 1);
    v14 = *(&v27 + 1);
    v29 = *(&v27 + 1);
    v30 = *(&v23 + 1);
    a1[2] = xmmword_1CF9FD950;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    *(a1 + 66) = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v16 = sub_1CF03AD00(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCC44(&v31, &qword_1EC4C4760, &qword_1CFA168E0);
    *(a1 + 3) = v16;
    v17 = sub_1CF4E1848(v15);
    sub_1CEFCCC44(&v30, &unk_1EC4C4770, &qword_1CFA16900);
    *(a1 + 1) = v17;
    v18 = *(v14 + 16);
    if (v18)
    {
      v19 = (v14 + 40);
      do
      {
        v21 = *(v19 - 1);
        v20 = *v19;
        v22 = 0;

        v21(&v22);

        v19 += 2;
        --v18;
      }

      while (v18);
    }

    result = sub_1CEFCCC44(&v29, &unk_1EC4C1B90, &unk_1CFA168F0);
    *(a1 + 9) = v15;
  }

  return result;
}

uint64_t sub_1CF7622C8(__int128 *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v4);
  v7 = a1[3];
  v24 = a1[2];
  v25 = v7;
  v8 = a1[5];
  v26 = a1[4];
  v27 = v8;
  v9 = a1[1];
  v22 = *a1;
  v23 = v9;
  v10 = sub_1CF033A74();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0668, &unk_1CFA05A70);
  sub_1CF5B01A0(v10, v6, v11, v4, v5);

  if (!v2)
  {
    v30 = *(&v23 + 1);
    v13 = *(&v26 + 1);
    v28 = *(&v26 + 1);
    v29 = *(&v22 + 1);
    a1[2] = xmmword_1CF9FD950;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    *(a1 + 66) = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v15 = sub_1CF03AD00(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCC44(&v30, &qword_1EC4C4760, &qword_1CFA168E0);
    *(a1 + 3) = v15;
    v16 = sub_1CF4E1660(v14);
    sub_1CEFCCC44(&v29, &qword_1EC4C4768, &qword_1CFA168E8);
    *(a1 + 1) = v16;
    v17 = *(v13 + 16);
    if (v17)
    {
      v18 = (v13 + 40);
      do
      {
        v20 = *(v18 - 1);
        v19 = *v18;
        v21 = 0;

        v20(&v21);

        v18 += 2;
        --v17;
      }

      while (v17);
    }

    result = sub_1CEFCCC44(&v28, &unk_1EC4C1B90, &unk_1CFA168F0);
    *(a1 + 9) = v14;
  }

  return result;
}

uint64_t sub_1CF762468(void *a1, char a2, char a3)
{
  v7 = type metadata accessor for DBCounters();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for VFSCounters(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 16);
  v16 = a1[3];
  v17 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1CF478184(v18, a2, a3, v15, v16, v17);
  v19 = *(*(v15 + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    v22 = a1[3];
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);
    v41 = v7;

    sub_1CF4FB2BC(0, 0xE000000000000000, v22, v23);
    v24 = a1[3];
    v40[0] = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v24);
    v46[2] = 0;
    v46[3] = 0xE000000000000000;
    sub_1CF9E7948();

    strcpy(v45, "+ FSCounters: ");
    HIBYTE(v45[1]) = -18;
    v25 = qword_1EDEBBE70;
    swift_beginAccess();
    sub_1CEFE505C(v21 + v25, v14, type metadata accessor for VFSCounters);
    v26 = sub_1CF25BB70();
    v40[1] = v19;
    v28 = v27;
    sub_1CF007CB8(v14, type metadata accessor for VFSCounters);
    MEMORY[0x1D3868CC0](v26, v28);

    sub_1CF4FB2BC(v45[0], v45[1], v24, v40[0]);

    v29 = a1[3];
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v29);
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    sub_1CF9E7948();

    strcpy(v46, "+ DBCounters: ");
    HIBYTE(v46[1]) = -18;
    v31 = qword_1EDEBBC30;
    swift_beginAccess();
    sub_1CEFE505C(v15 + v31, v10, type metadata accessor for DBCounters);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1CF9E7948();

    v43 = 0x756F436873756C66;
    v44 = 0xEB000000003D746ELL;
    v42 = *v10;
    v32 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v32);

    MEMORY[0x1D3868CC0](0x6144746573657220, 0xEB000000003D6574);
    v33 = v10 + *(v41 + 20);
    v34 = sub_1CF9E5C08();
    MEMORY[0x1D3868CC0](v34);

    v35 = v43;
    v36 = v44;
    sub_1CF007CB8(v10, type metadata accessor for DBCounters);
    MEMORY[0x1D3868CC0](v35, v36);

    sub_1CF4FB2BC(v46[0], v46[1], v29, v30);
  }

  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  return sub_1CF4FB2BC(0, 0xE000000000000000, v37, v38);
}

id sub_1CF76289C()
{
  v2 = v0;
  v3 = *(v0 + 16);
  result = sub_1CF75C998();
  if (!v1)
  {
    *(v0 + 24) = 0;
    v5 = *(v0 + 56);
    sub_1CF7A6150();
    v6 = *(v2 + 64);
    sub_1CF7A6150();
    v7 = *(*(v3 + 40) + 16);
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = *(v7 + 120);
    v10 = *(v7 + 128);
    *(v7 + 120) = sub_1CF7961C4;
    *(v7 + 128) = v8;

    sub_1CEFF7124(v9);
  }

  return result;
}

uint64_t (*sub_1CF762950(void **a1, void *a2, void *a3, uint64_t a4))()
{
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *MEMORY[0x1E696A870];
    if (*(result + 72))
    {
      v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v13 = v12;
      if (v11 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v13 == v14)
      {

        return 0;
      }

      v16 = sub_1CF9E8048();

      if (v16)
      {

        return 0;
      }
    }

    v34 = v7;
    if (a4 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = a4;
    }

    v18 = [objc_opt_self() progressWithTotalUnitCount_];
    [v18 addChild:a2 withPendingUnitCount:0];
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v18;
    v19 = v18;
    v20 = sub_1CF9E5838();

    [v19 fp:a3 setFileOperationKind:?];
    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;
    if (v21 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v23 == v24)
    {

      v25 = 0;
    }

    else
    {
      v26 = sub_1CF9E8048();

      v25 = 0;
      if ((v26 & 1) == 0)
      {
        v25 = [a2 isCancellable];
      }
    }

    [v19 setCancellable_];
    v27 = *(v9 + 2);
    v28 = swift_allocObject();
    v28[2] = v9;
    v28[3] = a2;
    v28[4] = v19;
    v28[5] = a3;
    v28[6] = a4;
    v28[7] = v34;
    v29 = v19;

    v30 = a2;
    v31 = a3;
    v32 = v34;
    sub_1CF7AAF88("activate()", 10, 2, 2, nullsub_1, 0, sub_1CF7961E0, v28);

    v33 = swift_allocObject();
    v33[2] = v9;
    v33[3] = v20;
    v33[4] = v29;
    return sub_1CF796204;
  }

  return result;
}

void sub_1CF762CB8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v13 = a1[3];
  v12 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = *(*(a2 + 16) + 16);
  v36 = a7;
  v16 = *(*v15 + 152);

  v16(&v34, &v36, v14, v13, v12);
  if (v8)
  {
  }

  else
  {

    v30 = v35;
    if (v35 != 255)
    {
LABEL_7:
      v35 = v30;
      sub_1CF762E88(&v34, a2, a3, a4, a5, a6);
      return;
    }
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = sub_1CF4C4044();

  if (v17)
  {
    v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v20 = sub_1CF025150(0x80007uLL, v18, v19);
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = MEMORY[0x1D3868C10](v20, v22, v24, v26);
    v29 = v28;

    VFSItemID.init(parsing:)(v27, v29, &v34);
    v30 = v35;
    if (v35 != 255)
    {
      goto LABEL_7;
    }
  }
}

void sub_1CF762E88(int *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v113 = *MEMORY[0x1E69E9840];
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v85 - v19;
  v21 = sub_1CF9E5A58();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v23);
  if (!*(a1 + 8))
  {
    v89 = v27;
    v90 = v16;
    v96 = &v85 - v25;
    v91 = v13;
    v92 = a5;
    v94 = a6;
    v95 = a4;
    v97 = v24;
    v98 = v26;
    v28 = *a1;

    v108[0] = 0;
    v108[1] = 0;
    v109 = v28;
    v111 = 0;
    v112 = 0;
    v110 = 0;
    v93 = a2;
    v29 = *(*(*(a2 + 16) + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    v30 = swift_dynamicCastClassUnconditional();

    v31 = objc_sync_enter(v30);
    if (v31)
    {
      MEMORY[0x1EEE9AC00](v31);
      *(&v85 - 2) = v30;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v85 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v32 = v30[20];

    v33 = objc_sync_exit(v30);
    if (v33)
    {
      MEMORY[0x1EEE9AC00](v33);
      *(&v85 - 2) = v30;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v85 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v34 = a3;
    v35 = *(v32 + 16);

    v102 = 0;
    v103 = 0;
    v104 = v28;
    v106 = 0;
    v105 = 0;
    v107 = 0;
    v99 = -1;
    v36 = fpfs_openfdbyhandle();
    if ((v36 & 0x80000000) == 0)
    {
      v37 = v36;
      v38 = v12;
      sub_1CF19811C(v36, v108, v35, 0, v20);
      close(v37);
      sub_1CF255928(v108);
      v41 = v97;
      v42 = v98;
      (*(v98 + 56))(v20, 0, 1, v97);
      v43 = v96;
      (*(v42 + 32))(v96, v20, v41);
      v44 = fpfs_current_or_default_log();
      v45 = v90;
      sub_1CF9E6128();
      v46 = v89;
      (*(v42 + 16))(v89, v43, v41);
      v47 = v34;
      v48 = sub_1CF9E6108();
      v49 = sub_1CF9E7298();

      v88 = v48;
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v100[0] = v87;
        *v50 = 136315394;
        v51 = sub_1CF9E5928();
        v52 = [v51 fp_shortDescription];

        v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v55 = v54;

        v56 = *(v98 + 8);
        v56(v46, v41);
        v57 = sub_1CEFD0DF0(v53, v55, v100);

        *(v50 + 4) = v57;
        *(v50 + 12) = 2112;
        *(v50 + 14) = v47;
        v58 = v86;
        *v86 = v47;
        v59 = v47;
        v60 = v49;
        v61 = v56;
        v62 = v88;
        _os_log_impl(&dword_1CEFC7000, v88, v60, "Publishing at url %s progress %@", v50, 0x16u);
        sub_1CEFCCC44(v58, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v58, -1, -1);
        v63 = v87;
        __swift_destroy_boxed_opaque_existential_1(v87);
        MEMORY[0x1D386CDC0](v63, -1, -1);
        MEMORY[0x1D386CDC0](v50, -1, -1);
      }

      else
      {

        v61 = *(v42 + 8);
        v61(v46, v41);
      }

      (*(v91 + 8))(v45, v38);
      v66 = sub_1CF9E5928();
      v67 = v95;
      [v95 setFileURL_];

      [v67 publish];
      v68 = *MEMORY[0x1E696A870];
      v69 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v71 = v70;
      if (v69 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v71 == v72)
      {
      }

      else
      {
        v73 = sub_1CF9E8048();

        if ((v73 & 1) == 0)
        {
          v80 = *(v93 + 64);
          v81 = *(v80 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);
          v76 = swift_allocObject();
          v82 = v95;
          v76[2] = v80;
          v76[3] = v82;
          v76[4] = v94;
          v83 = v82;

          v79 = sub_1CF796258;
          goto LABEL_19;
        }
      }

      v74 = *(v93 + 56);
      v75 = *(v74 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);
      v76 = swift_allocObject();
      v77 = v95;
      v76[2] = v74;
      v76[3] = v77;
      v76[4] = v94;

      v78 = v77;
      v79 = sub_1CF796ADC;
LABEL_19:
      sub_1CF01001C(0, "didPublishItemProgress(progress:size:)", 38, 2, v79, v76);

      v61(v96, v41);
      goto LABEL_20;
    }

    v39 = v99;
    v40 = MEMORY[0x1D38683F0]();
    if (v39 < 0)
    {
      LODWORD(v100[0]) = 0;
      BYTE4(v100[0]) = 1;
    }

    else
    {
      LODWORD(v100[0]) = v99;
      BYTE4(v100[0]) = 0;
    }

    v101 = 0;
    v64 = sub_1CF19BBE4(v40, v100);
    sub_1CF1969CC(v100);
    v65 = v97;
    swift_willThrow();
    LODWORD(v100[0]) = sub_1CF9E5308();
    sub_1CF196978();
    sub_1CF9E5658();
    sub_1CF255928(v108);

    (*(v98 + 56))(v20, 1, 1, v65);
    sub_1CEFCCC44(v20, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

LABEL_20:
  v84 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF7637AC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a2;
  v8 = a3;
  sub_1CF7AAF88("activate()", 10, 2, 2, nullsub_1, 0, sub_1CF796210, v6);
}

uint64_t sub_1CF76385C(void *a1, char a2, char a3)
{
  v4 = v3;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1CF9E7948();

  v9 = *(v3 + 56);
  v10 = sub_1CF7A5DA0();
  MEMORY[0x1D3868CC0](v10);

  sub_1CF4FB2BC(0xD000000000000013, 0x80000001CFA5A2D0, v7, v8);

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1CF9E7948();

  v13 = *(v4 + 64);
  v14 = sub_1CF7A5DA0();
  MEMORY[0x1D3868CC0](v14);

  sub_1CF4FB2BC(0xD000000000000015, 0x80000001CFA5A2F0, v11, v12);

  return sub_1CF762468(a1, a2, a3);
}

uint64_t sub_1CF7639D0()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);
}

uint64_t sub_1CF763A00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  sub_1CEFF7124(*(v0 + 32));

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FPFSSyncEngine()
{
  result = qword_1EDEA7C38;
  if (!qword_1EDEA7C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF763B18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v77 = a7;
  v73 = a4;
  v74 = a5;
  v78 = a3;
  v71 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v66 - v12;
  v14 = v7;
  v15 = *(*(v7 + 16) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  v67 = swift_dynamicCastClassUnconditional();
  v70 = v15;

  v16 = [a1 itemIdentifier];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = sub_1CF4C4044();

  v72 = a1;
  v66 = v13;
  v69 = a6;
  if (v17)
  {
    v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v20 = sub_1CF025150(0x80007uLL, v18, v19);
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = MEMORY[0x1D3868C10](v20, v22, v24, v26);
    v29 = v28;
    a1 = v72;

    VFSItemID.init(parsing:)(v27, v29, v82);

    v30 = LOBYTE(v82[1]);
    if (LOBYTE(v82[1]) != 255)
    {
      v31 = 0;
      v32 = v82[0];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v32 = [a1 itemIdentifier];
  v30 = 0;
  v31 = 1;
LABEL_6:
  v33 = v76;
  v34 = v73;
  v35 = v74;
  v36 = v71;
  v68 = v14;
  v75 = v32;
  LODWORD(v76) = v31;
  v37 = v78;
  if ((v71 & 4) != 0)
  {
    v38 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1CFA00250;
    v40 = v72;
    *(v39 + 32) = v72;
    v41 = v40;
    v42 = v37;
    v43 = v34;
    v44 = v34;
    v45 = v68;
    sub_1CF764128(v39, v42, v43, v35, v69, v38);
    if (v33)
    {

      sub_1CEFD0994(v75, v30, v76);
      swift_setDeallocating();
      v46 = *(v39 + 16);
      swift_arrayDestroy();
LABEL_12:
      swift_deallocClassInstance();
      return v45 & 1;
    }

    swift_setDeallocating();
    v47 = *(v39 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v34 = v44;
    v36 = v71;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4730, &unk_1CFA16880);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1CF9FA450;
  v49 = v75;
  *(v48 + 32) = v75;
  v50 = v48 + 32;
  *(v48 + 40) = v30;
  v51 = v30;
  v52 = v76;
  *(v48 + 41) = v76;
  sub_1CEFD0988(v49, v51, v52);
  v53 = v34;
  v45 = v67;
  v54 = sub_1CF203FD4(v48, v36 & 1, v78, v53, v77);
  if (v33)
  {

    sub_1CEFD0994(v49, v51, v52);
    swift_setDeallocating();
    sub_1CEFCCC44(v50, &unk_1EC4BFC10, &qword_1CF9FE510);
    goto LABEL_12;
  }

  v56 = v54;
  swift_setDeallocating();
  sub_1CEFCCC44(v50, &unk_1EC4BFC10, &qword_1CF9FE510);
  swift_deallocClassInstance();
  v57 = v74;
  if (*(v56 + 16))
  {
    v58 = v51;
    v59 = sub_1CEFF4768(v75, v51 | (v76 << 8));
    v60 = v69;
    if (v61)
    {
      v62 = (*(v56 + 56) + 888 * v59);
      memcpy(v80, v62, sizeof(v80));
      memmove(v81, v62, 0x378uLL);
      nullsub_1(v81);
      sub_1CEFF4514(v80, &v79);

      memcpy(v82, v81, 0x378uLL);
    }

    else
    {

      sub_1CF77239C(v82);
    }

    v63 = v66;
  }

  else
  {

    sub_1CF77239C(v82);
    v63 = v66;
    v60 = v69;
    v58 = v51;
  }

  v64 = v78;
  memcpy(v81, v82, sizeof(v81));
  v65 = sub_1CF9E5A58();
  (*(*(v65 - 8) + 56))(v63, 1, 1, v65);
  v45 = sub_1CF765380(v72, v81, v36, v63, v64, v73, v57, v60, v77);

  sub_1CEFD0994(v75, v58, v76);
  sub_1CEFCCC44(v63, &unk_1EC4BE310, qword_1CF9FCBE0);
  memcpy(v80, v81, sizeof(v80));
  sub_1CEFCCC44(v80, &unk_1EC4C46E0, &unk_1CFA16860);
  return v45 & 1;
}

void sub_1CF764128(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v7;
  v9 = v6;
  v184 = a6;
  v159 = a5;
  v158 = a4;
  v183 = a3;
  v142 = sub_1CF9E63D8();
  v12 = *(v142 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v141 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v157 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v176 = &v139 - v19;
  v156 = sub_1CF9E6068();
  v20 = *(v156 - 8);
  v21 = v20[8];
  MEMORY[0x1EEE9AC00](v156);
  v155 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v154 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v172 = &v139 - v27;
  v153 = type metadata accessor for Signpost(0);
  v152 = *(v153 - 8);
  v28 = *(v152 + 64);
  v29 = MEMORY[0x1EEE9AC00](v153);
  v151 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v150 = &v139 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v171 = &v139 - v32;
  v187 = sub_1CEFE73DC(MEMORY[0x1E69E7CC0]);
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CF9E7818())
  {
    v182 = a1 & 0xC000000000000001;
    v175 = a1 & 0xFFFFFFFFFFFFFF8;
    v149 = (v20 + 7);
    v148 = (v20 + 6);
    v140 = (v20 + 4);
    v147 = (v20 + 2);
    v146 = (v20 + 1);
    v145 = v28 + 7;
    v139 = (v12 + 8);
    v12 = 0;
    v144 = &v189;
    v143 = xmmword_1CF9FA450;
    v170 = v9;
    v177 = a2;
    v179 = a1;
    v180 = i;
    while (1)
    {
      if (v182)
      {
        v35 = MEMORY[0x1D3869C30](v12, a1);
      }

      else
      {
        if (v12 >= *(v175 + 16))
        {
          goto LABEL_50;
        }

        v35 = *(a1 + 8 * v12 + 32);
      }

      v20 = v35;
      v36 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v186 = v12;
      v37 = [v35 parentItemIdentifier];
      v38 = v37;
      if (*(v187 + 16) && (v39 = sub_1CEFE863C(v37), (v40 & 1) != 0))
      {
        v41 = *(*(v187 + 56) + 8 * v39);

        if (v41)
        {
          v28 = sub_1CF9E6618();
        }

        else
        {
          v28 = 0;
        }

        v34 = v186;
        [v20 setInheritedUserInfo_];
      }

      else
      {

        v42 = [v20 parentItemIdentifier];
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v43 = sub_1CF4C4044();

        if ((v43 & 1) == 0)
        {
          goto LABEL_19;
        }

        v44 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v46 = sub_1CF025150(0x80007uLL, v44, v45);
        v181 = v8;
        v47 = v9;
        v48 = v20;
        v49 = v36;
        v51 = v50;
        v53 = v52;
        v55 = v54;

        v56 = v51;
        v36 = v49;
        v20 = v48;
        v9 = v47;
        v8 = v181;
        v57 = v53;
        a1 = v179;
        v58 = MEMORY[0x1D3868C10](v46, v56, v57, v55);
        v60 = v59;
        a2 = v177;

        VFSItemID.init(parsing:)(v58, v60, &aBlock);
        v61 = BYTE8(aBlock);
        if (BYTE8(aBlock) == 255)
        {
LABEL_19:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
          v28 = swift_allocObject();
          v28[42] = 0;
          *(v28 + 4) = v42;
          *(v28 + 20) = 256;
          *(v28 + 2) = v42;
          *(v28 + 12) = 256;
          v64 = v42;
        }

        else
        {

          v62 = aBlock;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
          v63 = swift_allocObject();
          *(v63 + 32) = v62;
          *(v63 + 40) = v61;
          *(v63 + 41) = 0;
          *(v63 + 16) = v62;
          *(v63 + 24) = v61;
          v28 = v63;
          *(v63 + 25) = 0;
        }

        v65 = *(v9 + 16);
        sub_1CF554B9C(v65, a2, v183, v184, &aBlock);
        if (v8)
        {

          return;
        }

        v66 = aBlock;
        if (aBlock)
        {
          v67 = *(v187 + 16);
          v185 = aBlock;
          if (!v67 || (v68 = sub_1CEFE863C(aBlock), v66 = v185, (v69 & 1) == 0))
          {
            v178 = v28;
            v73 = v65[5];
            *&aBlock = v66;
            v74 = *(*v73 + 272);

            v75 = v74(&aBlock, a2, v183, v184);
            v77 = v76;

            if (v77)
            {
              v167 = v75;
              v168 = v20;
              v169 = v36;
              v78 = swift_allocObject();
              v79 = v158;
              v78[2] = v183;
              v78[3] = v79;
              v80 = v184;
              v81 = v185;
              v78[4] = v159;
              v78[5] = v80;
              v78[6] = v9;
              v78[7] = v81;
              v174 = v78;
              v82 = *(v65 + qword_1EDEBBC38);

              v83 = v81;
              v166 = fpfs_adopt_log();
              if (qword_1EDEAE980 != -1)
              {
                swift_once();
              }

              v84 = qword_1EDEBBE40;
              v85 = v172;
              v86 = v156;
              (*v149)(v172, 1, 1, v156);
              strcpy(&aBlock, "async batch ");
              BYTE13(aBlock) = 0;
              HIWORD(aBlock) = -5120;
              v87 = sub_1CF9E7988();
              MEMORY[0x1D3868CC0](v87);

              v165 = *(&aBlock + 1);
              v173 = aBlock;
              v88 = v85;
              v89 = v154;
              sub_1CEFCCBDC(v88, v154, &unk_1EC4BED20, &unk_1CFA00700);
              v90 = *v148;
              v91 = (*v148)(v89, 1, v86);
              v181 = 0;
              if (v91 == 1)
              {
                v92 = v84;
                v93 = v155;
                sub_1CF9E6048();
                if (v90(v89, 1, v86) != 1)
                {
                  sub_1CEFCCC44(v89, &unk_1EC4BED20, &unk_1CFA00700);
                }
              }

              else
              {
                v93 = v155;
                (*v140)(v155, v89, v86);
              }

              v94 = v171;
              (*v147)(v171, v93, v86);
              v95 = v153;
              *(v94 + *(v153 + 20)) = v84;
              v96 = v94 + *(v95 + 24);
              *v96 = "DB queue wait";
              *(v96 + 8) = 13;
              *(v96 + 16) = 2;
              v97 = v84;
              sub_1CF9E7468();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
              v98 = swift_allocObject();
              *(v98 + 16) = v143;
              *(v98 + 56) = MEMORY[0x1E69E6158];
              *(v98 + 64) = sub_1CEFD51C4();
              v99 = v165;
              *(v98 + 32) = v173;
              *(v98 + 40) = v99;
              sub_1CF9E6028();

              (*v146)(v93, v86);
              sub_1CEFCCC44(v172, &unk_1EC4BED20, &unk_1CFA00700);
              v164 = v65[21];
              v165 = v65[8];
              v163 = sub_1CF9E6448();
              v162 = *(v163 - 8);
              (*(v162 + 56))(v176, 1, 1, v163);
              v100 = v150;
              sub_1CEFE505C(v94, v150, type metadata accessor for Signpost);
              v101 = (*(v152 + 80) + 16) & ~*(v152 + 80);
              v102 = &v145[v101] & 0xFFFFFFFFFFFFFFF8;
              v103 = swift_allocObject();
              v173 = v103;
              v160 = type metadata accessor for Signpost;
              sub_1CEFE4E00(v100, v103 + v101, type metadata accessor for Signpost);
              v104 = (v103 + v102);
              v161 = nullsub_1;
              *v104 = nullsub_1;
              v104[1] = 0;
              v105 = v151;
              sub_1CEFE505C(v94, v151, type metadata accessor for Signpost);
              v106 = (v102 + 23) & 0xFFFFFFFFFFFFFFF8;
              v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
              v108 = (v107 + 25) & 0xFFFFFFFFFFFFFFF8;
              v109 = swift_allocObject();
              sub_1CEFE4E00(v105, v109 + v101, v160);
              v110 = (v109 + v102);
              v111 = v162;
              *v110 = sub_1CF045408;
              v110[1] = 0;
              *(v109 + v106) = v65;
              v112 = v109 + v107;
              *v112 = "attachInheritedUserInfo(to:with:)";
              *(v112 + 8) = 33;
              *(v112 + 16) = 2;
              v113 = (v109 + v108);
              *v113 = v161;
              v113[1] = 0;
              v114 = (v109 + ((v108 + 23) & 0xFFFFFFFFFFFFFFF8));
              v115 = v163;
              v116 = v174;
              *v114 = sub_1CF77ECC4;
              v114[1] = v116;
              v117 = swift_allocObject();
              v118 = v173;
              v117[2] = sub_1CF5526E8;
              v117[3] = v118;
              v119 = v164;
              v117[4] = v164;

              v120 = fpfs_current_log();
              v164 = v119[2];
              v121 = v157;
              sub_1CEFCCBDC(v176, v157, &unk_1EC4BE370, qword_1CFA01B30);
              if ((*(v111 + 48))(v121, 1, v115) == 1)
              {
                sub_1CEFCCC44(v121, &unk_1EC4BE370, qword_1CFA01B30);
                LODWORD(v163) = 0;
              }

              else
              {
                v122 = v141;
                sub_1CF9E6438();
                (*(v111 + 8))(v121, v115);
                LODWORD(v163) = sub_1CF9E63C8();
                (*v139)(v122, v142);
              }

              v8 = v181;
              v123 = swift_allocObject();
              v123[2] = v120;
              v123[3] = sub_1CF48100C;
              v123[4] = v109;
              v191 = sub_1CEFCA438;
              v192 = v123;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              v189 = sub_1CEFCA444;
              v190 = &block_descriptor_67_2;
              v124 = _Block_copy(&aBlock);
              v125 = v120;

              v191 = sub_1CF2AF9E8;
              v192 = v117;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              v189 = sub_1CEFCA444;
              v190 = &block_descriptor_70;
              v126 = _Block_copy(&aBlock);

              fp_task_tracker_async_and_qos(v164, v165, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v163, v124, v126);
              _Block_release(v126);
              _Block_release(v124);

              sub_1CEFCCC44(v176, &unk_1EC4BE370, qword_1CFA01B30);
              sub_1CF007CB8(v171, type metadata accessor for Signpost);
              v127 = v166;
              v128 = fpfs_adopt_log();

              a2 = v177;
              v36 = v169;
              v20 = v168;
              v75 = v167;
            }

            v129 = a2;
            if (v75)
            {
              v130 = v75;
              v131 = [v75 userInfo];
              v132 = sub_1CF9E6638();
            }

            else
            {
              v130 = 0;
              v132 = 0;
            }

            a1 = v179;
            v133 = [v20 parentItemIdentifier];
            swift_bridgeObjectRetain_n();
            v134 = v187;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&aBlock = v134;
            sub_1CEFE8644(v132, v133, isUniquelyReferenced_nonNull_native);

            v136 = aBlock;
            v28 = v185;
            v137 = swift_isUniquelyReferenced_nonNull_native();
            *&aBlock = v136;
            sub_1CEFE8644(v132, v28, v137);

            v187 = aBlock;
            if (v132)
            {
              v138 = sub_1CF9E6618();
            }

            else
            {
              v138 = 0;
            }

            i = v180;
            [v20 setInheritedUserInfo_];

            v34 = v186;
            a2 = v129;
            v9 = v170;
            goto LABEL_6;
          }

          v70 = *(v187 + 56);
          if (*(v70 + 8 * v68))
          {
            v71 = *(v70 + 8 * v68);

            v72 = sub_1CF9E6618();
          }

          else
          {
            v72 = 0;
          }

          i = v180;
          [v20 setInheritedUserInfo_];
        }

        else
        {

          i = v180;
        }

        v34 = v186;
      }

LABEL_6:
      v12 = v34 + 1;
      if (v36 == i)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

LABEL_52:
}

id sub_1CF765380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v446 = v10;
  v12 = v9;
  v483 = v13;
  v430 = v14;
  v424 = v15;
  v425 = v16;
  v423 = v17;
  v19 = v18;
  v21 = v20;
  v22 = v11;
  v443 = *v12;
  v23 = sub_1CF9E6118();
  v437 = *(v23 - 8);
  v438 = v23;
  v24 = *(v437 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v405 = &v401 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v408 = &v401 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v435 = &v401 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v411 = &v401 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v434 = &v401 - v33;
  v34 = sub_1CF9E5FF8();
  v420 = *(v34 - 8);
  v421 = v34;
  v35 = *(v420 + 64);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v419 = &v401 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v418 = &v401 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v415 = &v401 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C46F0, &qword_1CFA16870);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v429 = &v401 - v44;
  v45 = sub_1CF9E5648();
  v432 = *(v45 - 8);
  v433 = v45;
  v46 = *(v432 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v431 = &v401 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1CF9E5A58();
  v440 = *(v48 - 1);
  v441 = v48;
  v49 = *(v440 + 64);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v428 = &v401 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v439 = &v401 - v52;
  v53 = sub_1CF9E5748();
  v413 = *(v53 - 8);
  v414 = v53;
  v54 = *(v413 + 64);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v410 = &v401 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v409 = &v401 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v61 = &v401 - v60;
  v436 = type metadata accessor for Signpost(0);
  v62 = *(*(v436 - 8) + 64);
  MEMORY[0x1EEE9AC00](v436);
  v442 = &v401 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for ItemMetadata();
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v404 = &v401 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v403 = &v401 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v417 = &v401 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v407 = &v401 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v76 = &v401 - v75;
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v401 - v77;
  memcpy(v482, v21, 0x378uLL);
  v426 = v12[2];
  sub_1CEFF5464(&unk_1F4BEF310, v462);
  v412 = *v462;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
  v79 = swift_allocObject();
  v427 = xmmword_1CF9FA440;
  *(v79 + 16) = xmmword_1CF9FA440;
  if (qword_1EDEABDE0 != -1)
  {
    v400 = v79;
    swift_once();
    v79 = v400;
  }

  v445 = v19;
  *(v79 + 32) = qword_1EDEABDE8;
  *(v79 + 40) = 16;
  sub_1CEFF5464(v79, v462);
  v416 = *v462;
  sub_1CEFF54BC(v78);
  v422 = v78[*(v64 + 84)];
  sub_1CF007CB8(v78, type metadata accessor for ItemMetadata);
  v80 = v12[4];
  v444 = v12;
  if (v80)
  {
    v81 = v12[5];

    v82 = [v22 itemID];
    v83 = [v82 identifier];

    *v462 = v83;
    v406 = v80(v462);

    sub_1CEFF7124(v80);
  }

  else
  {
    v406 = 0;
  }

  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v84 = qword_1EDEBBE40;
  v85 = sub_1CF9E6068();
  (*(*(v85 - 8) + 56))(v61, 1, 1, v85);
  v86 = [v22 itemIdentifier];
  v87 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v89 = v88;

  sub_1CEFF7134("Decoration", 10, 2, v61, v87, v89, v84, v442);

  sub_1CEFCCC44(v61, &unk_1EC4BED20, &unk_1CFA00700);
  [v22 setQuarantineBlob_];
  memcpy(v462, v482, sizeof(v462));
  v90 = sub_1CEFF7450(v462);
  v91 = &selRef_initWithTarget_;
  v93 = v444;
  v92 = v445;
  if (v90 == 1)
  {
    goto LABEL_11;
  }

  v458[12] = *&v462[832];
  v458[13] = *&v462[848];
  v458[14] = *&v462[864];
  *&v458[15] = *&v462[880];
  v458[9] = *&v462[784];
  v458[10] = *&v462[800];
  v458[11] = *&v462[816];
  v458[4] = *&v462[704];
  v458[5] = *&v462[720];
  v458[6] = *&v462[736];
  v458[7] = *&v462[752];
  v458[8] = *&v462[768];
  v458[0] = *&v462[640];
  v458[1] = *&v462[656];
  v458[2] = *&v462[672];
  v458[3] = *&v462[688];
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v458) != 1)
  {
    *&v456[192] = *&v462[832];
    *&v456[208] = *&v462[848];
    *&v456[224] = *&v462[864];
    *&v456[128] = *&v462[768];
    *&v456[144] = *&v462[784];
    *&v456[160] = *&v462[800];
    *&v456[176] = *&v462[816];
    *&v456[64] = *&v462[704];
    *&v456[80] = *&v462[720];
    *&v456[96] = *&v462[736];
    *&v456[112] = *&v462[752];
    *v456 = *&v462[640];
    *&v456[16] = *&v462[656];
    *&v456[32] = *&v462[672];
    v402 = &v462[640];
    *&v456[240] = *&v462[880];
    *&v456[48] = *&v462[688];
    v100 = *&v458[0];
    sub_1CEFF7474(v456, v461);
    [v22 setCapabilities_];
    [v22 setUploading_];
    v422 = BYTE9(v458[0]);
    [v22 setUploaded_];
    v101 = *&v458[1];
    if (*&v458[1])
    {
      v102 = *&v458[1];
      v103 = sub_1CF9E57E8();
    }

    else
    {
      v103 = 0;
    }

    [v22 setUploadingError_];

    v104 = *(&v458[1] + 1);
    if (*(&v458[1] + 1))
    {
      v105 = *(&v458[1] + 1);
      v106 = sub_1CF9E57E8();
    }

    else
    {
      v106 = 0;
    }

    [v22 setDownloadingError_];

    [v22 setShared_];
    [v22 setTopLevelSharedItem_];
    [v22 setSharedByCurrentUser_];
    if (*&v458[3])
    {
      v107 = qword_1EC4BCCE0;

      if (v107 != -1)
      {
        swift_once();
      }

      v108 = qword_1EC4EBCA8;
      v109 = sub_1CF9E6888();

      v110 = [v108 personNameComponentsFromString_];

      if (v110)
      {
        v111 = v409;
        sub_1CF9E5738();

        v110 = sub_1CF9E5728();
        (*(v413 + 8))(v111, v414);
      }

      [v22 setOwnerNameComponents_];
    }

    if (*&v458[4])
    {
      v112 = qword_1EC4BCCE0;

      if (v112 != -1)
      {
        swift_once();
      }

      v113 = qword_1EC4EBCA8;
      v114 = sub_1CF9E6888();

      v115 = [v113 personNameComponentsFromString_];

      if (v115)
      {
        v116 = v410;
        sub_1CF9E5738();

        v115 = sub_1CF9E5728();
        (*(v413 + 8))(v116, v414);
      }

      [v22 setMostRecentEditorNameComponents_];
    }

    if (*(&v458[5] + 1))
    {

      v117 = sub_1CF9E6888();
    }

    else
    {
      v117 = 0;
    }

    [v22 setSharingPermissions_];

    [v22 setFp:BYTE8(v458[4]) lastModifiedByCurrentUser:?];
    [v22 setIsContainer_];
    [v22 setIsContainerPristine_];
    if (*(&v458[7] + 1))
    {

      v118 = sub_1CF9E6888();
    }

    else
    {
      v118 = 0;
    }

    [v22 setFp:v118 appContainerBundleIdentifier:?];

    if (*(&v458[8] + 1))
    {

      v119 = sub_1CF9E6888();
    }

    else
    {
      v119 = 0;
    }

    [v22 setCloudContainerIdentifier_];

    if (*(&v458[9] + 1))
    {

      v120 = sub_1CF9E6888();
    }

    else
    {
      v120 = 0;
    }

    [v22 setContainerDisplayName_];

    if (*(&v458[10] + 1))
    {

      v121 = sub_1CF9E6888();
    }

    else
    {
      v121 = 0;
    }

    [v22 setFp:v121 displayName:?];

    if (*(&v458[11] + 1))
    {
      v461[0] = *(&v458[11] + 1);
      v122 = v446;
      sub_1CF769644(v461, v460);
      v446 = v122;
      type metadata accessor for NSFileProviderItemDecorationIdentifier(0);
      v123 = sub_1CF9E6D28();
    }

    else
    {
      v123 = 0;
    }

    [v22 setDecorations_];

    v124 = *&v458[12];
    if (*&v458[12])
    {

      v125 = sub_1CEFF74D0();

      v126 = [v125 userInfo];

      sub_1CF9E6638();
      v124 = sub_1CF9E6618();
    }

    [v22 setUserInfo_];

    v127 = *&v458[13];
    [v22 setContentPolicy_];
    memcpy(v461, v482, sizeof(v461));
    memcpy(v460, v482, 0x208uLL);
    v128 = sub_1CEFF755C(v460) != 1;
    v129 = v460[64];
    v130 = *(v426 + 80);
    if ((v130 & 0x20000) != 0)
    {
      v131 = 3;
    }

    else
    {
      v131 = 1;
    }

    if ((v130 & 0x200) != 0)
    {
      v132 = v131;
    }

    else
    {
      v132 = (v130 & 0x20000uLL) >> 16;
    }

    v133 = *(&v458[13] + 1);
    sub_1CEFCCBDC(v461, v459, &unk_1EC4BFC20, &unk_1CFA0A290);
    [v22 setInheritedContentPolicy_];
    sub_1CEFF54BC(v78);
    v134 = *v78;
    sub_1CF007CB8(v78, type metadata accessor for ItemMetadata);
    [v22 setEffectiveContentPolicy_];
    if (v422)
    {
      v135 = [v22 isExcludedFromSync];
      v93 = v444;
      v92 = v445;
      if ((v135 & 1) == 0 && ([v22 capabilities] & 0x40) != 0)
      {
        v459[12] = v458[12];
        v459[13] = v458[13];
        v459[14] = v458[14];
        v459[8] = v458[8];
        v459[9] = v458[9];
        v459[10] = v458[10];
        v459[11] = v458[11];
        v459[4] = v458[4];
        v459[5] = v458[5];
        v459[6] = v458[6];
        v459[7] = v458[7];
        v459[0] = v458[0];
        v459[1] = v458[1];
        v459[2] = v458[2];
        *&v459[15] = *&v458[15];
        v459[3] = v458[3];
        sub_1CEFF54BC(v78);
        sub_1CF0259D8(v132, v78, v455);
        sub_1CF007CB8(v78, type metadata accessor for ItemMetadata);
        v422 = LOBYTE(v455[0]);
      }

      else
      {
        v422 = 0;
      }
    }

    else
    {
      v422 = 0;
      v93 = v444;
      v92 = v445;
    }

    v136 = *&v458[14];
    v96 = v483;
    if (*&v458[14])
    {
      memcpy(v459, v461, 0x208uLL);
      if (sub_1CEFF755C(v459) == 1)
      {
LABEL_70:
        sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
        v140 = sub_1CF9E7538();
        [v22 setHasUnresolvedConflicts_];
        sub_1CEFCCC44(v402, &qword_1EC4BECF0, &unk_1CF9FEEB0);

        goto LABEL_71;
      }

      if (BYTE8(v459[31]) == 1 && (v459[1] & 0x10) == 0)
      {
        sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);

        v137 = sub_1CF9E7538();
        [v22 setHasUnresolvedConflicts_];

        v138 = v446;
        sub_1CF75C164(v136);
        v446 = v138;

        sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
        v139 = sub_1CF9E6D28();

        [v22 setConflictingVersions_];
        sub_1CEFCCC44(v402, &qword_1EC4BECF0, &unk_1CF9FEEB0);

        sub_1CEFCCC44(v461, &unk_1EC4BFC20, &unk_1CFA0A290);
        goto LABEL_71;
      }
    }

    sub_1CEFCCC44(v461, &unk_1EC4BFC20, &unk_1CFA0A290);
    goto LABEL_70;
  }

  v91 = &selRef_initWithTarget_;
LABEL_11:
  v94 = [v22 v91[68]];
  [v22 isExcludedFromSync];
  sub_1CEFF54BC(v76);
  v95 = *(v76 + 5);
  sub_1CF007CB8(v76, type metadata accessor for ItemMetadata);
  v461[0] = sub_1CF65C654();
  v96 = v483;
  v97 = (*(v483 + 16))(*(v443 + 104), v483);
  if (v97)
  {
    v98 = v97;
    v99 = [v97 supportsSyncingTrash];
  }

  else
  {
    v99 = 1;
  }

  [v22 setCapabilities_];
LABEL_71:
  v141 = v93[6];
  v142 = [v22 itemID];
  v143 = [v141 getAlternateContentsURLWrapperForItemID_];

  v144 = v439;
  if (v143)
  {
    v145 = [v143 url];

    v146 = v428;
    sub_1CF9E59D8();

    (*(v440 + 32))(v144, v146, v441);
    v147 = sub_1CF9E59E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
    v148 = swift_allocObject();
    *(v148 + 16) = v427;
    v149 = *MEMORY[0x1E695DB50];
    v150 = *MEMORY[0x1E695DA98];
    *(v148 + 32) = *MEMORY[0x1E695DB50];
    *(v148 + 40) = v150;
    v151 = v149;
    v152 = v150;
    sub_1CEFF8A84(v148);
    swift_setDeallocating();
    sub_1CF55CE4C();
    v153 = v429;
    v154 = v446;
    sub_1CF9E58A8();
    if (v154)
    {

      (*(v432 + 56))(v153, 1, 1, v433);
      sub_1CEFCCC44(v153, &unk_1EC4C46F0, &qword_1CFA16870);
      v446 = 0;
      v96 = v483;
      if ((v147 & 1) == 0)
      {
LABEL_75:
        (*(v440 + 8))(v144, v441);
        goto LABEL_76;
      }
    }

    else
    {
      v446 = 0;

      v250 = v432;
      v249 = v433;
      (*(v432 + 56))(v153, 0, 1, v433);
      (*(v250 + 32))(v431, v153, v249);
      sub_1CF9E5618();
      if (v251)
      {
        v252 = 0;
      }

      else
      {
        v252 = sub_1CF9E7088();
      }

      v253 = v415;
      v96 = v483;
      [v22 setDocumentSize_];

      sub_1CF9E55F8();
      v254 = sub_1CF9E5CF8();
      v255 = *(v254 - 8);
      v256 = 0;
      if ((*(v255 + 48))(v253, 1, v254) != 1)
      {
        v256 = sub_1CF9E5C48();
        (*(v255 + 8))(v253, v254);
      }

      [v22 setContentModificationDate_];

      (*(v432 + 8))(v431, v433);
      v92 = v445;
      v144 = v439;
      if ((v147 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    sub_1CF9E59C8();
    goto LABEL_75;
  }

LABEL_76:
  memcpy(v461, v482, sizeof(v461));
  v155 = sub_1CEFF7450(v461) != 1;
  [v22 setPinned_];
  if ([v22 isPinned])
  {
    v156 = *MEMORY[0x1E6967240];
    v157 = [v22 capabilities];
    if ((v156 & ~v157) != 0)
    {
      v158 = v156;
    }

    else
    {
      v158 = 0;
    }

    [v22 setCapabilities_];
  }

  memcpy(v460, v482, sizeof(v460));
  v159 = sub_1CEFF7450(v460) != 1;
  [v22 setInPinnedFolder_];
  if (([v22 isInPinnedFolder] & 1) == 0)
  {
    *&v459[0] = sub_1CF65C654();
    v160 = (*(v96 + 8))(*(v443 + 104), v96);
    IsEnabledForDomainID = FPPinningIsEnabledForDomainID();

    if (IsEnabledForDomainID)
    {
      v162 = [v22 contentType];
      v163 = v418;
      sub_1CF9E5F48();

      v164 = v419;
      sub_1CF9E5F08();
      LOBYTE(v162) = sub_1CF9E5FB8();
      v165 = *(v420 + 8);
      v166 = v164;
      v167 = v421;
      v165(v166, v421);
      v165(v163, v167);
      if ((v162 & 1) == 0)
      {
        v168 = *MEMORY[0x1E6967228];
        v169 = [v22 capabilities];
        if ((v168 & ~v169) != 0)
        {
          v170 = v168;
        }

        else
        {
          v170 = 0;
        }

        [v22 setCapabilities_];
      }
    }
  }

  [v22 setCapabilities_];
  if ([v22 isFolder])
  {
    v171 = *MEMORY[0x1E6967230];
    v172 = [v22 capabilities];
    if ((v171 & ~v172) != 0)
    {
      v173 = v171;
    }

    else
    {
      v173 = 0;
    }

    [v22 setCapabilities_];
  }

  v174 = [v22 providerID];
  v175 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v177 = v176;

  if (v175 == 0xD00000000000002BLL && 0x80000001CFA30030 == v177)
  {
    goto LABEL_95;
  }

  v178 = sub_1CF9E8048();

  if (v178)
  {
    goto LABEL_97;
  }

  v232 = [v22 providerID];
  v233 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v235 = v234;

  if (v233 == 0xD000000000000032 && 0x80000001CFA30060 == v235)
  {
LABEL_95:

    goto LABEL_97;
  }

  v236 = sub_1CF9E8048();

  if (v236)
  {
LABEL_97:
    memcpy(v459, v482, 0x378uLL);
    if (sub_1CEFF7450(v459) == 1)
    {
LABEL_98:
      v179 = v483;
      goto LABEL_102;
    }

    v180 = *&v459[38];
    v179 = v483;
    if ((BYTE8(v459[38]) & 1) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_102;
  }

  memcpy(v459, v482, 0x378uLL);
  if (sub_1CEFF7450(v459) == 1)
  {
    goto LABEL_98;
  }

  v179 = v483;
  if (BYTE8(v459[37]) != 1 && *&v459[37] >= 1)
  {
    [v22 setCapabilities_];
  }

  v180 = v482[76];
  if ((v482[77] & 1) == 0)
  {
LABEL_100:
    if (v180 >= 1)
    {
      [v22 setCapabilities_];
    }
  }

LABEL_102:
  [v22 setIsEvictedWithClone_];
  memcpy(v459, v482, 0x378uLL);
  if (sub_1CEFF7450(v459) == 1 || BYTE8(v459[32]) == 2 || ((BYTE8(v459[32]) & 1) == 0 || (memcpy(v458, v459, 0x208uLL), sub_1CEFF755C(v458) == 1) || *&v458[12] >> 60 == 11) && ((memcpy(v458, v459, 0x208uLL), sub_1CEFF755C(v458) == 1) || LOBYTE(v458[2]) != 3))
  {
    if ((v92 & 1) == 0)
    {
      memcpy(v458, v482, 0x378uLL);
      v182 = sub_1CEFF7450(v458) != 1;
      [v22 setDownloaded_];
    }

    memcpy(v458, v482, 0x378uLL);
    if (sub_1CEFF7450(v458) == 1 || (BYTE8(v458[35]) & 1) != 0)
    {
      goto LABEL_117;
    }

    v181 = *&v458[35];
  }

  else
  {
    memcpy(v458, v482, 0x378uLL);
    sub_1CEFF4514(v458, v456);
    [v22 setDownloaded_];
    [v22 setIsEvictedWithClone_];
    sub_1CEFCCC44(v482, &unk_1EC4C46E0, &unk_1CFA16860);
    if (v482[71])
    {
LABEL_117:
      v184 = [v22 isDownloaded];
LABEL_118:
      v185 = &selRef_setRecursivelyDownloaded_;
      goto LABEL_119;
    }

    v181 = v482[70];
  }

  result = [v22 isEvictedWithClone];
  if (result)
  {
    goto LABEL_117;
  }

  if (v482[79])
  {
    v184 = v181 == 0;
    goto LABEL_118;
  }

  v267 = v482[78];
  if (!__OFSUB__(v181, v482[78]))
  {
    [v22 setRecursivelyDownloaded_];
    if (![v22 isFolder] || !v267)
    {
LABEL_120:
      [v22 setMostRecentVersionDownloaded_];
      [v22 setSupportsMostRecentVersionDownloaded_];
      v186 = [v22 childItemCount];
      if (!v186)
      {
        sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
        v186 = sub_1CF9E7548();
      }

      v187 = v186;
      v188 = sub_1CF9E8248();

      if (v188 == 65533)
      {
        [v22 setChildItemCount_];
      }

      if ((v92 & 8) != 0)
      {
        v189 = sub_1CEFF889C();
        v190 = sub_1CEFF89C0();

        if (v190 & 1) != 0 || (v191 = sub_1CEFF889C(), v192 = sub_1CEFF88F4(), v191, (v192) || [v22 isDownloaded])
        {
          v193 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v194 = sub_1CF9E6108();
          v195 = sub_1CF9E7298();
          if (os_log_type_enabled(v194, v195))
          {
            v196 = swift_slowAlloc();
            *v196 = 0;
            _os_log_impl(&dword_1CEFC7000, v194, v195, "clearing capabilities besides .allowReading for notAuthenticated decoration", v196, 2u);
            MEMORY[0x1D386CDC0](v196, -1, -1);
          }

          (*(v437 + 8))(v434, v438);
          v197 = [v22 capabilities] & 1;
        }

        else
        {
          v268 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v269 = sub_1CF9E6108();
          v270 = sub_1CF9E7298();
          if (os_log_type_enabled(v269, v270))
          {
            v271 = swift_slowAlloc();
            *v271 = 0;
            _os_log_impl(&dword_1CEFC7000, v269, v270, "clearing all capabilities for notAuthenticated decoration", v271, 2u);
            MEMORY[0x1D386CDC0](v271, -1, -1);
          }

          (*(v437 + 8))(v411, v438);
          v197 = sub_1CEFF8C8C(MEMORY[0x1E69E7CC0]);
        }

        [v22 setCapabilities_];
      }

      v198 = sub_1CEFF889C();
      v199 = sub_1CEFF88F4();

      if (v199)
      {
        v200 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v201 = sub_1CF9E6108();
        v202 = sub_1CF9E7298();
        if (os_log_type_enabled(v201, v202))
        {
          v203 = swift_slowAlloc();
          *v203 = 0;
          _os_log_impl(&dword_1CEFC7000, v201, v202, "Removing item capabilities for trash item", v203, 2u);
          MEMORY[0x1D386CDC0](v203, -1, -1);
        }

        (*(v437 + 8))(v435, v438);
        [v22 setCapabilities_];
        [v22 setCapabilities_];
        [v22 setCapabilities_];
        [v22 setCapabilities_];
      }

      if ([v22 isIgnoreRoot])
      {
        [v22 setExclusionType_];
      }

      v457 = sub_1CF65C654();
      v204 = *(v179 + 16);
      v440 = *(v443 + 104);
      v441 = v204;
      v205 = v204();
      if (v205)
      {
        v206 = v205;
        v207 = [v205 provider];

        if (v207)
        {
          v208 = [v207 descriptor];

          v207 = [v208 supportsFailingUploadOnConflict];
        }
      }

      else
      {
        v207 = 0;
      }

      [v22 setSupportsUploadWithFailOnConflict_];
      memcpy(v458, v482, 0x378uLL);
      if (sub_1CEFF7450(v458) == 1 || (memcpy(v456, v458, 0x208uLL), sub_1CEFF755C(v456) == 1))
      {
        if (v92)
        {
          memset(v456, 0, 40);
          sub_1CF77D6A0(v22, v456, v423, (v92 & 0x40) != 0, (v92 >> 1) & 1, v430);
        }

        v209 = sub_1CEFF889C();
        v210 = sub_1CEFF89C0();

        if ((v210 & 1) == 0)
        {
          v211 = sub_1CEFF889C();
          v212 = sub_1CEFF88F4();

          if ((v212 & 1) == 0)
          {
            [v22 setCapabilities_];
          }
        }

        if (([v22 isExcludedFromSync] & 1) == 0 && (v92 & 0x10) != 0)
        {
          v213 = [v22 itemIdentifier];
          sub_1CEFDA3B4(v455);

          v214 = v455[1];
          if (LOBYTE(v455[1]) != 255)
          {
            v215 = v455[0];
            v216 = a9;
            *v452 = sub_1CF65C624();
            v217 = v430;
            v218 = (*(v430 + 24))(*(v443 + 96), v430);
            *v452 = v215;
            v452[8] = v214;
            v219 = v218;
            memcpy(v456, v482, sizeof(v456));
            v220 = sub_1CEFF7450(v456);
            if (v220 == 1)
            {
              v221 = 0;
            }

            else
            {
              v221 = *&v456[528];
            }

            v222 = v446;
            v223 = sub_1CF769738(v452, v221, (v220 == 1) | (v456[536] & 1), v219, v424, v425, v217, v483, a9);
            if (v222)
            {

LABEL_278:
              sub_1CF9E7458();
              v339 = v442;
              v340 = *(v442 + *(v436 + 20));
              v341 = (v442 + *(v436 + 24));
              v342 = *v341;
              v343 = v341[1];
              v344 = *(v341 + 16);
              sub_1CF9E6038();
              sub_1CF007CB8(v339, type metadata accessor for Signpost);
              return (v216 & 1);
            }

            if (v223 != 2 && (v223 & 1) != 0)
            {
              v257 = fpfs_current_or_default_log();
              v258 = v405;
              sub_1CF9E6128();
              v259 = sub_1CF9E6108();
              v260 = sub_1CF9E7298();
              if (os_log_type_enabled(v259, v260))
              {
                v261 = swift_slowAlloc();
                *v261 = 0;
                _os_log_impl(&dword_1CEFC7000, v259, v260, "overriding item capabilities for item inside vendor excluded directory", v261, 2u);
                MEMORY[0x1D386CDC0](v261, -1, -1);
              }

              (*(v437 + 8))(v258, v438);
              v262 = 1;
              [v22 setExcludedFromSync_];
              LODWORD(v446) = [v22 isFolder];
              [v22 isExcludedFromSync];
              v263 = v404;
              sub_1CEFF54BC(v404);
              v264 = *(v263 + 5);
              sub_1CF007CB8(v263, type metadata accessor for ItemMetadata);
              *v452 = sub_1CF65C654();
              v265 = (v441)(v440, v483);
              if (v265)
              {
                v266 = v265;
                v262 = [v265 supportsSyncingTrash];
              }

              v224 = v442;
              v225 = v436;
              [v22 setCapabilities_];

              goto LABEL_158;
            }
          }
        }

        v224 = v442;
        v225 = v436;
LABEL_158:
        v216 = v445 & 1;
        sub_1CF9E7458();
        v226 = *(v225 + 20);
        v227 = *(v225 + 24);
LABEL_159:
        v228 = *(v224 + v226);
        v229 = *(v224 + v227);
        v230 = *(v224 + v227 + 8);
        v231 = *(v224 + v227 + 16);
        sub_1CF9E6038();
        sub_1CF007CB8(v224, type metadata accessor for Signpost);
        return (v216 & 1);
      }

      v434 = *v456;
      LODWORD(v443) = v456[8];
      v479 = *&v456[185];
      v480 = *&v456[201];
      v481[0] = *&v456[217];
      *(v481 + 15) = *&v456[232];
      v476 = *&v456[137];
      v477 = *&v456[153];
      v478 = *&v456[169];
      v472 = *&v456[73];
      v473 = *&v456[89];
      v474 = *&v456[105];
      v475 = *&v456[121];
      v468 = *&v456[9];
      v469 = *&v456[25];
      v470 = *&v456[41];
      v471 = *&v456[57];
      v439 = *&v456[248];
      memcpy(v467, &v456[256], sizeof(v467));
      memcpy(v455, v458, sizeof(v455));
      sub_1CEFCCBDC(v455, v452, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v237 = [v22 isIgnoreRoot];
      v435 = a9;
      if ((v237 & 1) == 0 && (v456[16] & 0x10) != 0)
      {
        [v22 setExclusionType_];
        [v22 setExcludedFromSync_];
        [v22 setIgnoreRoot_];
        v238 = fpfs_current_or_default_log();
        v239 = v408;
        sub_1CF9E6128();
        v240 = sub_1CF9E6108();
        v241 = sub_1CF9E7298();
        if (os_log_type_enabled(v240, v241))
        {
          v242 = swift_slowAlloc();
          *v242 = 0;
          _os_log_impl(&dword_1CEFC7000, v240, v241, "overriding item capabilities for vendor excluded item", v242, 2u);
          MEMORY[0x1D386CDC0](v242, -1, -1);
        }

        (*(v437 + 8))(v239, v438);
        v243 = [v22 isFolder];
        [v22 isExcludedFromSync];
        v244 = v407;
        sub_1CEFF54BC(v407);
        v245 = *(v244 + 5);
        sub_1CF007CB8(v244, type metadata accessor for ItemMetadata);
        *v452 = sub_1CF65C654();
        v246 = (v441)(v440, v179);
        if (v246)
        {
          v247 = v246;
          v248 = [v246 supportsSyncingTrash];
        }

        else
        {
          v248 = 1;
        }

        [v22 setCapabilities_];
      }

      v272 = sub_1CEFF889C();
      v273 = sub_1CEFF89C0();

      if (v273 & 1) != 0 || (v274 = sub_1CEFF889C(), v275 = sub_1CEFF88F4(), v274, (v275))
      {
        [v22 setCapabilities_];
      }

      v276 = v456[16];
      v277 = *&v456[24];
      v438 = *&v456[240];
      [v22 setSyncPaused_];
      v278 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
      if ([v22 isEvictedWithClone])
      {
        v279 = 1;
      }

      else
      {
        v279 = [v22 isSyncPaused];
      }

      v280 = 0;
      if (v443 != 255 && v439)
      {
        if (((*&v456[264] & v412 | v456[256] & 0x51) == 0) | v279 & 1)
        {
          v280 = v456[32] == 0;
        }

        else
        {
          v280 = 1;
        }
      }

      [v22 setDownloading_];
      if ([v22 isUploaded])
      {
        sub_1CEFCCBDC(v456, v452, &unk_1EC4BFE00, &unk_1CF9FEF00);
        v281 = (v277 & v416 | v276 & 0x51) == 0;
        v278 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
        sub_1CEFCCC44(v456, &unk_1EC4BFE00, &unk_1CF9FEF00);
      }

      else
      {
        v281 = 0;
      }

      [v22 setUploaded_];
      if (([v22 isUploading] & 1) == 0)
      {
        sub_1CEFCCBDC(v456, v452, &unk_1EC4BFE00, &unk_1CF9FEF00);
        if ((v277 & v416) != 0)
        {
          sub_1CEFCCC44(v456, &unk_1EC4BFE00, &unk_1CF9FEF00);
        }

        else
        {
          sub_1CEFCCC44(v456, &unk_1EC4BFE00, &unk_1CF9FEF00);
          if ((v276 & 0x51) == 0)
          {
            v282 = 0;
            goto LABEL_221;
          }
        }
      }

      v282 = [v22 v278[378]] ^ 1;
LABEL_221:
      [v22 setUploading_];
      v283 = [v22 fp_isLastModifiedByCurrentUser];
      [v22 setFp:v283 | (*&v456[264] >> 3) & 1 lastModifiedByCurrentUser:?];
      v284 = [v22 &selRef_newAssertionWithAttributeName_reason_ + 1];
      v285 = v483;
      v286 = (v284 & 1) == 0 && [v22 isDownloaded] && (*&v456[264] & v412) == 0;
      [v22 setMostRecentVersionDownloaded_];
      v287 = [v22 isDownloaded];
      [v22 setFp:(v456[32] == 0) & ~v287 isDownloadRequested:?];
      v288 = v417;
      sub_1CEFF54BC(v417);
      v289 = *v288;
      sub_1CF007CB8(v288, type metadata accessor for ItemMetadata);
      if (v289 != 2)
      {
        if ([v22 isDownloaded])
        {
          if (([v22 isSyncPaused] & 1) == 0 && (objc_msgSend(v22, sel_isInPinnedFolder) & 1) == 0)
          {
            *v452 = sub_1CF65C654();
            v290 = (v441)(v440, v285);
            if (v290)
            {
              v291 = v290;
              v292 = [v290 provider];

              if (v292)
              {
                v293 = [v292 descriptor];

                v294 = [v293 allowsUserControlledEviction];
                if (v294)
                {
                  if (v422 || ([v22 &selRef_newAssertionWithAttributeName_reason_ + 1] & 1) != 0 || (v398 = v403, sub_1CEFF54BC(v403), v399 = *v398, sub_1CF007CB8(v398, type metadata accessor for ItemMetadata), v399 == 1) && (v482[73] & 1) == 0 && v482[72] >= 1)
                  {
                    [v22 setCapabilities_];
                  }
                }
              }
            }
          }
        }
      }

      v451 = sub_1CF65C654();
      v295 = (v441)(v440, v285);
      if (v295 && (v296 = v295, v297 = [v295 provider], v296, v297))
      {
        v298 = [v297 descriptor];

        v299 = [v298 allowsContextualMenuDownloadEntry];
      }

      else
      {
        v299 = 1;
      }

      [v22 setAllowsContextualMenuDownloadEntry_];
      v300 = v482[66];
      v301 = v482[68];
      v302 = LOBYTE(v482[69]);
      memcpy(v450, &v482[69] + 1, sizeof(v450));
      if ((v482[67] & 1) == 0 && LOBYTE(v482[69]) != 255)
      {
        [v22 setFileID_];
        if ((*&v456[16] & 0xFFFFFFFFFFFFFFEFLL) == 0 && (!*&v456[256] || v456[368] != 2))
        {
          v303 = [v22 filename];
          v304 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v306 = v305;

          *v452 = v304;
          *&v452[8] = v306;
          v449[0] = 58;
          v449[1] = 0xE100000000000000;
          v447 = 47;
          v448 = 0xE100000000000000;
          sub_1CEFE4E68();
          v307 = sub_1CF9E7668();
          v309 = v308;

          *v452 = v300;
          *&v452[8] = v301;
          *&v452[16] = v302;
          *&v452[24] = v307;
          *&v452[32] = v309;
          sub_1CF77D6A0(v22, v452, v423, (v445 & 0x40) != 0, (v445 >> 1) & 1, v430);
        }
      }

      if (v456[137])
      {
        v310 = v445;
        if (v456[137] != 4 || (v456[138] & 1) != 0)
        {
LABEL_251:
          if ((v310 & 1) != 0 && *&v456[296] != 1)
          {
            *&v452[128] = *&v450[215];
            *&v452[144] = *&v450[231];
            *&v452[64] = *&v450[151];
            *&v452[80] = *&v450[167];
            *&v452[96] = *&v450[183];
            *&v452[112] = *&v450[199];
            *v452 = *&v450[87];
            *&v452[16] = *&v450[103];
            *&v452[32] = *&v450[119];
            *&v452[48] = *&v450[135];
            *&v452[192] = *&v450[279];
            *&v452[208] = *&v450[295];
            v324 = *&v456[280];
            v325 = *&v456[288];
            v326 = *&v456[304];
            v327 = *&v456[312];
            *&v452[224] = *&v450[311];
            *&v452[240] = *&v450[327];
            *&v452[160] = *&v450[247];
            *&v452[176] = *&v450[263];
            if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v452) == 1)
            {
              v440 = 0;
              v328 = 0;
            }

            else
            {
              v440 = *&v452[232];
              v328 = *&v452[240];
            }

            sub_1CEFCCBDC(&v456[280], v449, &unk_1EC4BF2D0, &unk_1CF9FEF20);
            sub_1CEFE42D4(v324, v325);
            sub_1CEFE42D4(v326, v327);
            v441 = v324;
            v329 = sub_1CF9E5B48();
            v330 = sub_1CF9E5B48();
            if (v328)
            {
              v331 = sub_1CF9E6888();
            }

            else
            {
              v331 = 0;
            }

            v332 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v329 metadataVersion:v330 lastEditorDeviceName:v331];

            sub_1CEFE4714(v326, v327);
            sub_1CEFE4714(v441, v325);
            [v22 setItemVersion_];

            sub_1CEFCCC44(&v456[280], &unk_1EC4BF2D0, &unk_1CF9FEF20);
            v310 = v445;
          }

          else
          {
            v312 = [v22 itemVersion];
            if (v312)
            {
              v313 = v312;
              *&v452[128] = *&v450[215];
              *&v452[144] = *&v450[231];
              *&v452[64] = *&v450[151];
              *&v452[80] = *&v450[167];
              *&v452[96] = *&v450[183];
              *&v452[112] = *&v450[199];
              *v452 = *&v450[87];
              *&v452[16] = *&v450[103];
              *&v452[32] = *&v450[119];
              *&v452[48] = *&v450[135];
              *&v452[192] = *&v450[279];
              *&v452[208] = *&v450[295];
              *&v452[224] = *&v450[311];
              *&v452[240] = *&v450[327];
              *&v452[160] = *&v450[247];
              *&v452[176] = *&v450[263];
              if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v452) == 1 || !*&v452[240])
              {
              }

              else
              {
                v441 = *&v452[232];

                v314 = [v313 contentVersion];
                v440 = sub_1CF9E5B88();
                v437 = v315;

                v316 = [v313 metadataVersion];
                v317 = sub_1CF9E5B88();
                v433 = v318;

                v319 = objc_allocWithZone(MEMORY[0x1E69674E8]);
                v320 = sub_1CF9E5B48();
                v321 = sub_1CF9E5B48();
                v322 = sub_1CF9E6888();

                v323 = [v319 initWithContentVersion:v320 metadataVersion:v321 lastEditorDeviceName:v322];

                v310 = v445;
                sub_1CEFE4714(v317, v433);

                sub_1CEFE4714(v440, v437);
                [v22 setItemVersion_];
              }
            }
          }

          if (v456[8] == 255)
          {
            v216 = v310 & 1;
          }

          else
          {
            if (v456[8] != 1)
            {
              v333 = v434;
              if (!v456[8])
              {
                [v22 setDocumentID_];
              }

              v216 = 1;
LABEL_273:
              *&v452[185] = v479;
              *&v452[201] = v480;
              *&v452[217] = v481[0];
              *&v452[232] = *(v481 + 15);
              *&v452[121] = v475;
              *&v452[137] = v476;
              *&v452[153] = v477;
              *&v452[169] = v478;
              *&v452[57] = v471;
              *&v452[73] = v472;
              *&v452[89] = v473;
              *&v452[105] = v474;
              *&v452[9] = v468;
              *&v452[25] = v469;
              *v452 = v333;
              v452[8] = v443;
              *&v452[41] = v470;
              v453 = v439;
              memcpy(v454, v467, sizeof(v454));
              v334 = [v22 uploadingError];
              v335 = [v22 downloadingError];
              if ((v445 & 0x20) != 0)
              {
                v336 = 3;
              }

              else
              {
                v336 = sub_1CEFF8C8C(MEMORY[0x1E69E7CC0]);
              }

              v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC0, &unk_1CF9FCAC0);
              v338 = v446;
              sub_1CF95740C(v426, v334, v335, v336, v424, v337, v425, v435, v463);
              if (v338)
              {

                sub_1CEFCCC44(v458, &unk_1EC4BFC20, &unk_1CFA0A290);
                goto LABEL_278;
              }

              v446 = 0;

              v345 = [v22 uploadingError];
              if (v345)
              {

                v346 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
              }

              else
              {
                v347 = *&v463[0];
                v466 = *&v463[0];
                v346 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
                if (*&v463[0])
                {
                  v348 = swift_allocObject();
                  v348[2] = v22;
                  sub_1CEFCCBDC(&v466, v452, &unk_1EC4C1C20, &unk_1CFA0A250);
                  v349 = v22;
                  sub_1CF769A20(v347, 1, sub_1CF77E614, v348, v430, v483);

                  sub_1CEFCCC44(&v466, &unk_1EC4C1C20, &unk_1CFA0A250);
                }
              }

              if ([v22 isExcludedFromSync])
              {
                v350 = [v22 uploadingError];
                if (v350)
                {
                  v351 = v350;
                  _s3__C4CodeOMa_1(0);
                  *v452 = -2010;
                  sub_1CF77E690(&qword_1EDEA3590, _s3__C4CodeOMa_1);
                  v352 = sub_1CF9E5658();

                  if (v352)
                  {
                    [v22 setExclusionType_];
                  }
                }
              }

              v353 = [v22 downloadingError];
              if (v353)
              {
              }

              else
              {
                v354 = v464;
                v465 = v464;
                if (v464)
                {
                  v355 = swift_allocObject();
                  v355[2] = v22;
                  v356 = v22;
                  sub_1CEFCCBDC(&v465, v452, &unk_1EC4C1C20, &unk_1CFA0A250);
                  sub_1CF769A20(v354, 1, sub_1CF77E608, v355, v430, v483);

                  sub_1CEFCCC44(&v465, &unk_1EC4C1C20, &unk_1CFA0A250);
                }
              }

              v357 = [v22 uploadingError];
              if (v357 || (v357 = [v22 downloadingError]) != 0)
              {
              }

              else
              {
                v368 = [v22 v346[378]];
                if (!(v406 & 1 | ((v368 & 1) == 0)))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1F40, &unk_1CFA0E480);
                  v369 = swift_allocObject();
                  v370 = sub_1CF06DA80(v369, 2);
                  *v371 = xmmword_1CF9FA450;
                  v372 = *(v370 + 32);
                  v373 = *(v370 + 40);

                  v374 = (v373 & ~v372) != 0 ? v373 : 0;
                  if (((v374 | v372) & v438) == 0)
                  {
                    v375 = FPFilePausedWithNoFilePresenter();
                    if (v375)
                    {
                      v376 = v375;
                      v359 = sub_1CF9E57E8();
                    }

                    else
                    {
                      v359 = 0;
                    }

                    [v22 setUploadingError_];
                    goto LABEL_314;
                  }
                }
              }

              v358 = [v22 uploadingError];
              if (!v358 || (*v452 = v358, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90), sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0), (swift_dynamicCast() & 1) == 0))
              {
LABEL_315:
                if ((v445 & 0x20) != 0)
                {
                  sub_1CEFF8D94(v463);
                  sub_1CEFCCC44(v458, &unk_1EC4BFC20, &unk_1CFA0A290);
                  v224 = v442;
                  v385 = v436;
                  goto LABEL_337;
                }

                v377 = [v22 uploadingError];
                if (!v377 || (*v452 = v377, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90), sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0), (swift_dynamicCast() & 1) == 0))
                {
LABEL_326:
                  v388 = [v22 downloadingError];
                  v224 = v442;
                  v385 = v436;
                  if (v388)
                  {
                    *v452 = v388;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
                    sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
                    if (swift_dynamicCast())
                    {
                      v389 = v449[0];
                      v390 = [v449[0] domain];
                      v391 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                      v393 = v392;

                      v394 = *MEMORY[0x1E6967190];
                      if (v391 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v393 == v395)
                      {
                      }

                      else
                      {
                        v396 = sub_1CF9E8048();

                        if ((v396 & 1) == 0)
                        {
LABEL_336:
                          sub_1CEFF8D94(v463);
                          sub_1CEFCCC44(v458, &unk_1EC4BFC20, &unk_1CFA0A290);

                          goto LABEL_337;
                        }
                      }

                      v397 = [v389 code];
                      if (v397 == *MEMORY[0x1E69671C8])
                      {
                        [v22 setDownloadingError_];
                        [v22 setDownloading_];
                      }

                      goto LABEL_336;
                    }
                  }

                  sub_1CEFF8D94(v463);
                  sub_1CEFCCC44(v458, &unk_1EC4BFC20, &unk_1CFA0A290);
LABEL_337:
                  sub_1CF9E7458();
                  v226 = *(v385 + 20);
                  v227 = *(v385 + 24);
                  goto LABEL_159;
                }

                v378 = v449[0];
                v379 = [v449[0] domain];
                v380 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v382 = v381;

                v383 = *MEMORY[0x1E6967190];
                if (v380 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v382 == v384)
                {
                }

                else
                {
                  v386 = sub_1CF9E8048();

                  if ((v386 & 1) == 0)
                  {
LABEL_325:

                    goto LABEL_326;
                  }
                }

                v387 = [v378 code];
                if (v387 == *MEMORY[0x1E69671C8])
                {
                  [v22 setUploadingError_];
                  [v22 setUploading_];
                }

                goto LABEL_325;
              }

              v359 = v449[0];
              v360 = [v449[0] domain];
              v361 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v363 = v362;

              v364 = *MEMORY[0x1E6967210];
              if (v361 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v363 == v365)
              {

LABEL_302:
                if ([v359 code] == 27)
                {
                  v367 = [v22 isSyncPaused];
                  if (v406 & 1 | ((v367 & 1) == 0))
                  {
                    [v22 setUploadingError_];
                  }
                }

                goto LABEL_314;
              }

              v366 = sub_1CF9E8048();

              if (v366)
              {
                goto LABEL_302;
              }

LABEL_314:

              goto LABEL_315;
            }

            [v22 setFileID_];
            v216 = 1;
          }

          v333 = v434;
          goto LABEL_273;
        }

        v311 = &selRef_setDownloading_;
      }

      else
      {
        v311 = &selRef_setUploading_;
        v310 = v445;
      }

      [v22 *v311];
      goto LABEL_251;
    }

    v184 = 1;
    v185 = &selRef_setIsEvictedWithClone_;
LABEL_119:
    [v22 *v185];
    goto LABEL_120;
  }

  __break(1u);
  return result;
}