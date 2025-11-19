uint64_t sub_1CF03A134()
{
  v1 = v0;
  v2 = *(*(v0 + 16) + 56);

  sub_1CF03A198();

  v3 = *(*(v1 + 24) + 56);

  sub_1CF03A198();
}

void sub_1CF03A198()
{
  if (*(v0 + 161) == 1 && *(v0 + 112) == 1)
  {
    *(v0 + 161) = 0;
    if (qword_1EDEAC3C8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDEBBA88;

    [v1 removeWatcher_];
  }
}

uint64_t sub_1CF03A224()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v83 = *(v2 - 8);
  v84 = v2;
  v3 = *(v83 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v79 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v79 - v10;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v79 - v22;
  v24 = type metadata accessor for Signpost(0);
  v25 = *(*(v24 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v24);
  if ((*(v1 + qword_1EDEBBCF0) & 1) == 0)
  {
    v79[1] = v11;
    v81 = v9;
    v82 = v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v80 = v6;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v28 = qword_1EDEBBE40;
    (*(v13 + 56))(v23, 1, 1, v12);
    sub_1CEFCCBDC(v23, v21, &unk_1EC4BED20, &unk_1CFA00700);
    v29 = *(v13 + 48);
    if (v29(v21, 1, v12) == 1)
    {
      v30 = v28;
      sub_1CF9E6048();
      if (v29(v21, 1, v12) != 1)
      {
        sub_1CEFCCC44(v21, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v13 + 32))(v16, v21, v12);
    }

    v31 = v82;
    (*(v13 + 16))(v82, v16, v12);
    *&v31[*(v24 + 20)] = v28;
    v32 = &v31[*(v24 + 24)];
    *v32 = "DB queue";
    *(v32 + 1) = 8;
    v32[16] = 2;
    v33 = v28;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1CF9FA450;
    *(v34 + 56) = MEMORY[0x1E69E6158];
    *(v34 + 64) = sub_1CEFD51C4();
    *(v34 + 32) = 0x73756C6620646964;
    *(v34 + 40) = 0xE900000000000068;
    v77 = v34;
    v76 = 2;
    v75 = 2;
    v79[2] = v33;
    sub_1CF9E6028();

    (*(v13 + 8))(v16, v12);
    sub_1CEFCCC44(v23, &unk_1EC4BED20, &unk_1CFA00700);
    if ((*(v1 + 82) & 0x20) != 0)
    {
      v36 = v83;
      v35 = v84;
      v37 = v81;
      if (*(v1 + qword_1EC4EBD88) == 1)
      {
        *(v1 + qword_1EC4EBD88) = 0;
        sub_1CF3BCB4C();
      }
    }

    else
    {
      v36 = v83;
      v35 = v84;
      v37 = v81;
    }

    v38 = *(*(*(v1 + 32) + 16) + 136);
    if (*(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentSource))
    {
      v39 = *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentSource);
      ObjectType = swift_getObjectType();

      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);

      swift_unknownObjectRelease();
    }

    sub_1CF3BCCF0();
    v41 = qword_1EDEBBC30;
    result = swift_beginAccess();
    v42 = *(v1 + v41);
    v43 = __CFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      __break(1u);
    }

    else
    {
      *(v1 + v41) = v44;
      v45 = [objc_allocWithZone(FPLoggerScope) init];
      v46 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v47 = v45;
      v48 = sub_1CF9E6108();
      v49 = sub_1CF9E7298();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        v52 = [v47 enter];
        *(v50 + 4) = v52;
        *v51 = v52;
        _os_log_impl(&dword_1CEFC7000, v48, v49, "%@ db was flushed (commit)", v50, 0xCu);
        sub_1CEFCCC44(v51, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v51, -1, -1);
        MEMORY[0x1D386CDC0](v50, -1, -1);
      }

      v53 = *(v36 + 8);
      v53(v37, v35);
      v54 = qword_1EDEAE678;
      if (*(v1 + qword_1EDEAE678))
      {
        v55 = *(v1 + qword_1EDEAE678);
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1CF9E7418();
        swift_unknownObjectRelease();
        v56 = *(v1 + v54);
      }

      *(v1 + v54) = 0;
      swift_unknownObjectRelease();
      v57 = qword_1EC4BFAF0;
      swift_beginAccess();
      v58 = *(v1 + v57);
      v59 = MEMORY[0x1E69E7CC0];
      *(v1 + v57) = MEMORY[0x1E69E7CC0];
      v60 = *(v1 + 160);
      *(v60 + 32) = 0;
      *(v60 + 40) = 0;
      *(v60 + 48) = 0;
      v61 = v1 + qword_1EDEBBC20;
      os_unfair_lock_lock((v1 + qword_1EDEBBC20));
      v62 = sub_1CF4E0DEC(v59);
      v63 = *(v61 + 104);
      *(v61 + 104) = v62;

      os_unfair_lock_unlock(v61);
      if (*(v60 + 16) > 0 || (v64 = qword_1EDEBBD00, v65 = swift_beginAccess(), *(*(v1 + v64) + 16)))
      {
        *(v60 + 16) = 0;
        v65 = sub_1CF3C6498(sub_1CF47FD28, v1);
      }

      if (*(v58 + 16))
      {
        MEMORY[0x1EEE9AC00](v65);
        v77 = v58;
        v78 = v1;
        sub_1CF3C6498(sub_1CF47FD44, &v75);
      }

      else
      {
      }

      v66 = fpfs_current_or_default_log();
      v67 = v80;
      sub_1CF9E6128();
      v68 = v47;
      v69 = sub_1CF9E6108();
      v70 = sub_1CF9E7298();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v71 = 138412290;
        v73 = [v68 leave];
        *(v71 + 4) = v73;
        *v72 = v73;
        _os_log_impl(&dword_1CEFC7000, v69, v70, "%@", v71, 0xCu);
        sub_1CEFCCC44(v72, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v72, -1, -1);
        MEMORY[0x1D386CDC0](v71, -1, -1);
      }

      v53(v67, v35);
      sub_1CF9E7458();
      v74 = v82;
      sub_1CF9E6038();
      return sub_1CEFD5278(v74, type metadata accessor for Signpost);
    }
  }

  return result;
}

unint64_t sub_1CF03AD00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BD8, &qword_1CFA07A80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BE0, &qword_1CFA07A88);
    v8 = sub_1CF9E7BE8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1CEFCCBDC(v10, v6, &qword_1EC4C0BD8, &qword_1CFA07A80);
      v12 = *v6;
      result = sub_1CF7BF4F4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for SyncState();
      result = sub_1CF04DC10(&v6[v9], v16 + *(*(v17 - 8) + 72) * v15);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF03AED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BF8, &unk_1CFA07AA0);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      v9 = v5;
      v10 = v6;
      v11 = v8;
      result = sub_1CEFE863C(v9);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v9;
      v14 = (v3[7] + 24 * result);
      *v14 = v10;
      v14[1] = v8;
      v14[2] = v7;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CF03B104(void (*a1)(uint64_t *__return_ptr, void *), uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v8 = objc_sync_enter(v4);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v12 = v4;
    fp_preconditionFailure(_:file:line:)(a2, v11, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  a1(&v13, v4);
  v9 = objc_sync_exit(v4);
  if (v9)
  {
    MEMORY[0x1EEE9AC00](v9);
    v12 = v4;
    fp_preconditionFailure(_:file:line:)(a4, v11, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v13;
}

uint64_t sub_1CF03B248@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = a1[2];
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  v8 = type metadata accessor for JobLockRule();

  WitnessTable = swift_getWitnessTable();
  v10 = MEMORY[0x1D3868960](v5, v8, &type metadata for JobLockRuleAssociatedJobs, WitnessTable);

  if (v10)
  {
    swift_beginAccess();
    v12 = a1[4];
    sub_1CF9E6E58();

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v14 = MEMORY[0x1D3868960](v12, MEMORY[0x1E69E6158], TupleTypeMetadata2, MEMORY[0x1E69E6168]);
  }

  else
  {
    v14 = 0;
  }

  *a2 = v14 & 1;
  return result;
}

BOOL sub_1CF03B3A8(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v5 = objc_sync_enter(v2);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    v10 = v2;
    fp_preconditionFailure(_:file:line:)(a1, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  swift_beginAccess();
  if (*(v2[2] + 16))
  {
    v6 = 0;
  }

  else
  {
    swift_beginAccess();
    v6 = *(v2[4] + 16) == 0;
  }

  v7 = objc_sync_exit(v2);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v10 = v2;
    fp_preconditionFailure(_:file:line:)(a2, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v6;
}

void sub_1CF03B4D0()
{
  v1 = v0;
  v2 = sub_1CF9E6068();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v14 = type metadata accessor for Signpost(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() defaultStore];
  if (*(v0 + qword_1EDEBBE38) == 1)
  {
  }

  else
  {
    v31 = v18;
    v19 = *(v0 + 160);
    if ((sub_1CF03B9D0() & 1) != 0 || (v20 = qword_1EC4BFAF0, swift_beginAccess(), v21 = *(*(v1 + v20) + 16), v21 >= [v31 sqlDatabaseOnNextDurableFlushTriggerThreshold]))
    {
      v30 = v1;
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v22 = qword_1EDEBBE40;
      (*(v3 + 56))(v13, 1, 1, v2);
      sub_1CEFCCBDC(v13, v11, &unk_1EC4BED20, &unk_1CFA00700);
      v23 = *(v3 + 48);
      if (v23(v11, 1, v2) == 1)
      {
        v24 = v22;
        sub_1CF9E6048();
        if (v23(v11, 1, v2) != 1)
        {
          sub_1CEFCCC44(v11, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        (*(v3 + 32))(v6, v11, v2);
      }

      v29 = 0x80000001CFA45480;
      (*(v3 + 16))(v17, v6, v2);
      *&v17[*(v14 + 20)] = v22;
      v25 = &v17[*(v14 + 24)];
      *v25 = "SQLDB: Force flush of database";
      *(v25 + 1) = 30;
      v25[16] = 2;
      v26 = v22;
      sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1CF9FA450;
      *(v27 + 56) = MEMORY[0x1E69E6158];
      *(v27 + 64) = sub_1CEFD51C4();
      *(v27 + 32) = 0xD00000000000001CLL;
      *(v27 + 40) = v29;
      sub_1CF9E6028();

      (*(v3 + 8))(v6, v2);
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
      v28 = *(v30 + qword_1EDEBBDB0);
      [v28 forceBatchStart];
      [v28 flush];
      sub_1CF9E7458();
      sub_1CF9E6038();

      sub_1CEFD5278(v17, type metadata accessor for Signpost);
    }

    else
    {
    }
  }
}

uint64_t sub_1CF03B9D0()
{
  v1 = *(v0 + 24);
  if (v1 < 1)
  {
    if (*(v0 + 16) < 1)
    {
      return 0;
    }

    else
    {
      return *(v0 + 50);
    }
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = __OFADD__(v2, v3);
    v5 = v2 + v3;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      return v5 >= v1;
    }
  }

  return result;
}

uint64_t sub_1CF03BA44()
{
  if (fp_task_tracker_is_cancelled(*(*(v0 + 168) + 16)))
  {
    return 1;
  }

  else
  {
    return *(v0 + 152);
  }
}

uint64_t sub_1CF03BA78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1CF03BB04()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v5 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v4, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF03BC50(v0, &v6);
  v2 = objc_sync_exit(v0);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](v2);
    v5 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v4, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v6;
}

uint64_t sub_1CF03BC50@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = a1[24];

  v8 = *(v4 + 616);
  v9 = *(v4 + 632);
  v6 = type metadata accessor for FSOrFPJob();
  LOBYTE(v4) = MEMORY[0x1D3868960](v5, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);

  *a2 = (v4 & 1) == 0;
  return result;
}

uint64_t sub_1CF03BDD4()
{
  v43 = sub_1CF9E53C8();
  v0 = *(v43 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v37 = v7;
    v38 = v4;
    v39 = v3;
    ObjectType = result + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
    os_unfair_lock_lock((result + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection));
    v11 = *(ObjectType + 8);
    *(ObjectType + 8) = MEMORY[0x1E69E7CC0];
    os_unfair_lock_unlock(ObjectType);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy;
      v15 = OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource;
      v16 = OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
      v44 = 9939394;
      v40 = (v0 + 8);
      v41 = OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource;
      while (v13 < *(v11 + 16))
      {
        v18 = *(v11 + 32 + 8 * v13);
        swift_beginAccess();
        LODWORD(ObjectType) = fpfs_wharf_delete_wharfed_item(v9 + v16, 0, v18);
        v19 = swift_endAccess();
        if ((ObjectType & 0x80000000) != 0)
        {
          if (!MEMORY[0x1D38683F0](v19))
          {
            goto LABEL_19;
          }

          if (MEMORY[0x1D38683F0]() == v44)
          {
            v17 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
            LODWORD(ObjectType) = v17;
            swift_willThrow();
          }

          else
          {
            v21 = v14;
            MEMORY[0x1D38683F0]();
            v22 = sub_1CF9E6138();
            if ((v22 & 0x100000000) != 0)
            {
              LODWORD(v46) = 22;
            }

            else
            {
              LODWORD(v46) = v22;
            }

            sub_1CF00BDB8(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
            v23 = v42;
            ObjectType = v43;
            sub_1CF9E57D8();
            v24 = sub_1CF9E53A8();
            (*v40)(v23, ObjectType);
            LODWORD(ObjectType) = v24;
            swift_willThrow();

            v14 = v21;
            v15 = v41;
          }
        }

        else
        {
          *(v9 + v14) = 0;
          if (*(v9 + v15))
          {
            v20 = *(v9 + v15);
            ObjectType = swift_getObjectType();
            swift_unknownObjectRetain();
            MEMORY[0x1D3869790](1, ObjectType);
            swift_unknownObjectRelease();
          }
        }

        if (v12 == ++v13)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_19:
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1CF9E7948();

      v46 = 0xD00000000000001ALL;
      v47 = 0x80000001CFA2DF30;
      v45 = ObjectType;
      v25 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v25);

      MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
      v26 = v46;
      v27 = v47;
      v28 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v29 = sub_1CF9E6108();
      v30 = sub_1CF9E72B8();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v46 = v32;
        *v31 = 136315650;
        v33 = sub_1CF9E7988();
        v35 = sub_1CEFD0DF0(v33, v34, &v46);

        *(v31 + 4) = v35;
        *(v31 + 12) = 2048;
        *(v31 + 14) = 315;
        *(v31 + 22) = 2080;
        *(v31 + 24) = sub_1CEFD0DF0(v26, v27, &v46);
        _os_log_impl(&dword_1CEFC7000, v29, v30, "[ASSERT] ‼️  %s:%lu: %s", v31, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v32, -1, -1);
        MEMORY[0x1D386CDC0](v31, -1, -1);
      }

      (*(v38 + 8))(v37, v39);
      result = sub_1CF9E7B68();
      __break(1u);
    }

    else
    {
LABEL_16:
    }
  }

  return result;
}

uint64_t sub_1CF03C368()
{
  v4 = (*(*v0 + 176))();
  v1 = MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  v2 = (*(*v0 + 456))(v1);
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v4;
}

uint64_t sub_1CF03C458()
{
  v1 = *(*v0 + 576);
  v2 = *(*v0 + 560);
  v3 = *(*v0 + 544);
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  return 0;
}

id sub_1CF03C530(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3 >= 2u)
    {
      return result;
    }
  }

  if (a3 == 2)
  {
  }

  if (a3 == 3)
  {
    return result;
  }

  return result;
}

uint64_t sub_1CF03C578(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(*(*(a1 + 16) + 40) + 16);
  type metadata accessor for FPFileTree();
  v4 = swift_dynamicCastClassUnconditional();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 24);

    sub_1CF03C63C(v5);
    v5(&unk_1F4BEF3A0, MEMORY[0x1E69E7CC0], 0, 0);

    sub_1CEFF7124(v5);
  }

  return a2(0);
}

uint64_t sub_1CF03C63C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1CF03C64C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v149 = a2;
  v152 = a1;
  v6 = sub_1CF9E63D8();
  v136 = *(v6 - 8);
  v7 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v148 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v151 = &v129 - v14;
  v146 = sub_1CF9E6068();
  v15 = *(v146 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v142 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v150 = &v129 - v23;
  v141 = type metadata accessor for Signpost(0);
  v143 = *(v141 - 8);
  v24 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v147 = &v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v145 = &v129 - v27;
  v144 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v129 - v30;
  v158 = sub_1CF9E6118();
  v154 = *(v158 - 1);
  v32 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v159 = (&v129 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v140 = &v129 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v129 - v37;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v40 = Strong;
    v137 = a3;
    v41 = *(Strong + 80);
    v135 = v21;
    v139 = v31;
    v138 = Strong;
    v134 = v6;
    v133 = v9;
    if ((v41 & 0x40) != 0)
    {
      v131 = a4;
      v132 = v15;
      v42 = [objc_allocWithZone(FPLoggerScope) init];
      v43 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v44 = v42;
      v45 = sub_1CF9E6108();
      v46 = sub_1CF9E7298();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        v49 = [v44 enter];
        *(v47 + 4) = v49;
        *v48 = v49;
        _os_log_impl(&dword_1CEFC7000, v45, v46, "%@ 👁  aggregate incoming FP tree changes", v47, 0xCu);
        sub_1CEFCCC44(v48, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v48, -1, -1);
        MEMORY[0x1D386CDC0](v47, -1, -1);
      }

      v130 = v44;

      v50 = v154 + 8;
      v157 = *(v154 + 8);
      (v157)(v38, v158);
      v52 = *(v152 + 16);
      v53 = v159;
      if (v52)
      {
        v54 = (v152 + 56);
        *&v51 = 136315138;
        v153 = v51;
        v154 = v50;
        do
        {
          v62 = *(v54 - 3);
          v63 = *(v54 - 2);
          v64 = *(v54 - 1);
          v65 = *v54;
          sub_1CF796430(v62, v63, v64, *v54);
          v66 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          sub_1CF796430(v62, v63, v64, v65);
          v67 = sub_1CF9E6108();
          v68 = sub_1CF9E7298();
          v159 = v67;
          if (os_log_type_enabled(v67, v68))
          {
            v55 = swift_slowAlloc();
            v156 = swift_slowAlloc();
            *&aBlock = v156;
            *v55 = v153;
            v155 = sub_1CF771D28(v62, v63, v64, v65);
            v57 = v56;
            sub_1CF7964BC(v62, v63, v64, v65);
            sub_1CF7964BC(v62, v63, v64, v65);
            v58 = sub_1CEFD0DF0(v155, v57, &aBlock);

            *(v55 + 4) = v58;
            v59 = v68;
            v60 = v159;
            _os_log_impl(&dword_1CEFC7000, v159, v59, "%s", v55, 0xCu);
            v61 = v156;
            __swift_destroy_boxed_opaque_existential_1(v156);
            MEMORY[0x1D386CDC0](v61, -1, -1);
            MEMORY[0x1D386CDC0](v55, -1, -1);
          }

          else
          {
            sub_1CF7964BC(v62, v63, v64, v65);
            sub_1CF7964BC(v62, v63, v64, v65);
          }

          (v157)(v53, v158);
          v54 += 32;
          --v52;
        }

        while (v52);
      }

      v70 = fpfs_current_or_default_log();
      v71 = v140;
      sub_1CF9E6128();
      v72 = v130;
      v73 = sub_1CF9E6108();
      v74 = sub_1CF9E7298();

      v75 = os_log_type_enabled(v73, v74);
      v15 = v132;
      if (v75)
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v76 = 138412290;
        v78 = [v72 leave];
        *(v76 + 4) = v78;
        *v77 = v78;
        _os_log_impl(&dword_1CEFC7000, v73, v74, "%@", v76, 0xCu);
        sub_1CEFCCC44(v77, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v77, -1, -1);
        MEMORY[0x1D386CDC0](v76, -1, -1);
      }

      (v157)(v71, v158);
      v31 = v139;
      v40 = v138;
      a4 = v131;
    }

    v79 = (v40 + qword_1EDEBBC28);
    os_unfair_lock_lock((v40 + qword_1EDEBBC28));
    sub_1CF066960(v152, v149, v137, a4);
    os_unfair_lock_unlock(v79);
    if ((*(v40 + 80) & 0x40) == 0)
    {
      v80 = *(v40 + qword_1EDEBBCE8);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);

      swift_unknownObjectRelease();
      return;
    }

    v82 = *(v40 + qword_1EDEBBC38);

    v159 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v83 = qword_1EDEBBE40;
    v84 = *(v15 + 56);
    v85 = v150;
    v86 = v15;
    v87 = v146;
    v84(v150, 1, 1, v146);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v88 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v88);

    v157 = *(&aBlock + 1);
    v158 = aBlock;
    v89 = v135;
    sub_1CEFCCBDC(v85, v135, &unk_1EC4BED20, &unk_1CFA00700);
    v90 = *(v86 + 48);
    if (v90(v89, 1, v87) == 1)
    {
      v91 = v86;
      v92 = v83;
      v93 = v142;
      sub_1CF9E6048();
      if (v90(v89, 1, v87) != 1)
      {
        sub_1CEFCCC44(v89, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v91 = v86;
      v93 = v142;
      (*(v86 + 32))(v142, v89, v87);
    }

    (*(v91 + 16))(v31, v93, v87);
    v94 = v141;
    *&v31[*(v141 + 20)] = v83;
    v95 = &v31[*(v94 + 24)];
    *v95 = "DB queue wait";
    *(v95 + 1) = 13;
    v95[16] = 2;
    v96 = v83;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v97 = v93;
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_1CF9FA450;
    *(v98 + 56) = MEMORY[0x1E69E6158];
    *(v98 + 64) = sub_1CEFD51C4();
    v99 = v157;
    *(v98 + 32) = v158;
    *(v98 + 40) = v99;
    sub_1CF9E6028();

    (*(v91 + 8))(v97, v87);
    sub_1CEFCCC44(v150, &unk_1EC4BED20, &unk_1CFA00700);
    v156 = *(v40 + 168);
    v158 = *(v40 + 64);
    v100 = sub_1CF9E6448();
    v154 = *(v100 - 8);
    v155 = v100;
    (*(v154 + 56))(v151, 1, 1, v100);
    v101 = v145;
    sub_1CEFE505C(v31, v145, type metadata accessor for Signpost);
    v102 = (*(v143 + 80) + 16) & ~*(v143 + 80);
    v103 = (v144 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
    v104 = swift_allocObject();
    *&v153 = type metadata accessor for Signpost;
    sub_1CEFE4E00(v101, v104 + v102, type metadata accessor for Signpost);
    v105 = (v104 + v103);
    v157 = nullsub_1;
    *v105 = nullsub_1;
    v105[1] = 0;
    v106 = v147;
    sub_1CEFE505C(v31, v147, type metadata accessor for Signpost);
    v107 = (v103 + 23) & 0xFFFFFFFFFFFFFFF8;
    v108 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
    v109 = (v108 + 25) & 0xFFFFFFFFFFFFFFF8;
    v110 = swift_allocObject();
    sub_1CEFE4E00(v106, v110 + v102, v153);
    v111 = (v110 + v103);
    *v111 = sub_1CF045408;
    v111[1] = 0;
    *(v110 + v107) = v40;
    v112 = v110 + v108;
    v113 = v154;
    *v112 = "processPendingStreamResetOrIdle()";
    *(v112 + 8) = 33;
    *(v112 + 16) = 2;
    v114 = (v110 + v109);
    *v114 = v157;
    v114[1] = 0;
    v115 = (v110 + ((v109 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v115 = sub_1CF796414;
    v115[1] = v40;
    v116 = swift_allocObject();
    v116[2] = sub_1CF75C120;
    v116[3] = v104;
    v117 = v156;
    v116[4] = v156;
    swift_retain_n();
    v157 = v104;
    v118 = v155;

    v119 = fpfs_current_log();
    v120 = v117[2];
    v121 = v148;
    sub_1CEFCCBDC(v151, v148, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v113 + 48))(v121, 1, v118) == 1)
    {
      sub_1CEFCCC44(v121, &unk_1EC4BE370, qword_1CFA01B30);
      v122 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v123 = v133;
      sub_1CF9E6438();
      (*(v113 + 8))(v121, v118);
      v122 = sub_1CF9E63C8();
      (*(v136 + 8))(v123, v134);
    }

    v124 = swift_allocObject();
    v124[2] = v119;
    v124[3] = sub_1CF4858EC;
    v124[4] = v110;
    v163 = sub_1CF2BA17C;
    v164 = v124;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v161 = sub_1CEFCA444;
    v162 = &block_descriptor_735;
    v125 = _Block_copy(&aBlock);
    v126 = v119;

    v163 = sub_1CF2BA180;
    v164 = v116;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v161 = sub_1CEFCA444;
    v162 = &block_descriptor_738;
    v127 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v120, v158, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v122, v125, v127);
    _Block_release(v127);
    _Block_release(v125);

    sub_1CEFCCC44(v151, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007CB8(v139, type metadata accessor for Signpost);
    v128 = v159;
    v69 = fpfs_adopt_log();
  }

  else
  {
    if (!a3)
    {
      return;
    }

    v69 = FPDomainUnavailableError();
    a3();
  }
}

void sub_1CF03D7A8(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3 >= 2u)
    {
      return;
    }

LABEL_7:

    return;
  }

  if (a3 == 2)
  {
    goto LABEL_7;
  }

  if (a3 == 3)
  {
  }
}

void *sub_1CF03D7E8()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0xD000000000000012, 0x80000001CFA2EC60), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, v5);
    sub_1CEFE9EB8(v5, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE170, qword_1CFA03A20);
    swift_dynamicCast();
    v3 = v6;
  }

  else
  {
    swift_endAccess();
    v3 = &unk_1F4BEB150;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE170, qword_1CFA03A20);
    *&v7 = &unk_1F4BEB150;
    swift_beginAccess();
    sub_1CF1C8750(&v7, 0xD000000000000012, 0x80000001CFA2EC60);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

uint64_t sub_1CF03D9EC(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (*(a1 + 16))
  {
    v5 = v4;
    v9 = (a1 + 32);
    if (a2 | a3)
    {
      v10 = 4;
    }

    else
    {
      v10 = 5;
    }

    v31 = a4;
    v32 = v10;
    v11 = *(a1 + 16);
    while (1)
    {
      if (a4 == 0xFF)
      {
        goto LABEL_6;
      }

      if (!*v9)
      {
        v13 = v32;
        if (a4 == 3)
        {
          v13 = 3;
        }

        if (a4 == 2)
        {
          v13 = 2;
        }

        v14 = v31;
        if (a4)
        {
          v14 = 1;
        }

        if (a4 <= 1u)
        {
          v15 = v14;
        }

        else
        {
          v15 = v13;
        }

        v12 = [v5 bindLongParameter_];
        goto LABEL_7;
      }

      if (*v9 != 1)
      {
        break;
      }

      if (a4)
      {
        v12 = [v5 bindLongParameter_];
        goto LABEL_7;
      }

      v34 = MEMORY[0x1E69E6530];
      v33[0] = a2;
      sub_1CEFF8EA0(v33);
      v20 = v19;
      sub_1CEFCCC44(v33, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      if (!v20)
      {
        result = sub_1CF9E7B68();
        __break(1u);
        return result;
      }

LABEL_8:
      ++v9;
      if (!--v11)
      {
        goto LABEL_35;
      }
    }

    if (a4)
    {
      if (a4 == 1 || a4 == 2)
      {
        v16 = a2;
        if (a2)
        {
LABEL_28:
          v35 = v16;
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
          v33[0] = v16;
          sub_1CF03C530(a2, a3, a4);
          sub_1CF03C530(a2, a3, a4);
          sub_1CF03C530(a2, a3, a4);
          sub_1CEFF8EA0(v33);
          v18 = v17;
          sub_1CEFCCC44(v33, &unk_1EC4BEC50, &qword_1CF9FB4B0);
          if (v18)
          {

            sub_1CF201778(a2, a3, a4);
            sub_1CF201778(a2, a3, a4);
          }

          else
          {
            v21 = sub_1CF9E56C8();
            v22 = *(v21 + 48);
            v23 = *(v21 + 52);
            swift_allocObject();
            sub_1CF9E56B8();
            sub_1CF9E5698();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE508, &qword_1CF9FDDC0);
            sub_1CF1E0FC0();
            v24 = sub_1CF9E56A8();
            v30 = v25;
            v26 = v24;
            sub_1CF04E5D8(v24, v25);
            sub_1CF201778(a2, a3, a4);
            sub_1CF201778(a2, a3, a4);

            sub_1CEFE4714(v26, v30);
          }

          goto LABEL_8;
        }
      }
    }

    else
    {
      v16 = a3;
      if (a3)
      {
        goto LABEL_28;
      }
    }

LABEL_6:
    v12 = [v5 bindObjectParameter_];
LABEL_7:

    goto LABEL_8;
  }

LABEL_35:
  result = sub_1CF9E6B18();
  v33[0] = result;
  v33[1] = v28;
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    sub_1CF03DE28(2);
    return v33[0];
  }

  return result;
}

uint64_t sub_1CF03DE28(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[1];
      if ((v2 & 0x2000000000000000) != 0)
      {
        v3 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v3 = *v1 & 0xFFFFFFFFFFFFLL;
      }

      *v1;
      v4 = sub_1CF9E6A08();
      if (v5)
      {
        goto LABEL_14;
      }

      if (4 * v3 >= v4 >> 14)
      {

        return MEMORY[0x1EEE68E00]();
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x1EEE68E00]();
  }

  return result;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t *OUTLINED_FUNCTION_3@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_15(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  return result;
}

void OUTLINED_FUNCTION_1_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

unint64_t sub_1CF03E084()
{
  result = qword_1EDEA8558;
  if (!qword_1EDEA8558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8558);
  }

  return result;
}

uint64_t sub_1CF03E0D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1BE0, &unk_1CF9FD400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF03E148(char a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v31 = a7;
  v32 = a8;
  v29 = a5;
  v30 = a6;
  v33 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v28 - v18;
  v34 = a9;
  v35 = a10;
  v36 = a11;
  v37 = a12;
  type metadata accessor for Job();
  sub_1CF05194C(a1);
  v34 = a9;
  v35 = a10;
  v36 = a11;
  v37 = a12;
  type metadata accessor for ItemJob();
  v20 = swift_dynamicCastMetatype();
  if (v20)
  {
    v21 = v20;
    (*(v16 + 16))(v19, v29, AssociatedTypeWitness);
    v22 = (*(v21 + 592))(v19, v30, v31, v32);
    v23 = *(v22 + 96);
    v24 = *(v22 + 104);
    *(v22 + 96) = a2;
    *(v22 + 104) = a3;
    v25 = *(v22 + 112);
    v26 = v33;
    *(v22 + 112) = v33;

    sub_1CF03C530(a2, a3, v26);
    sub_1CF03D7A8(v23, v24, v25);

    return v22;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF03E368(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 616);
  v5 = *(*v1 + 624);
  v6 = *(*v1 + 632);
  v7 = *(*v1 + 640);
  sub_1CF0451E0(a1, v17);
  if (!v18)
  {
    return sub_1CEFCCC44(v17, &unk_1EC4C1BE0, &unk_1CF9FD400);
  }

  v8 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v9 = *(v8 + 8);
  sub_1CF9E7F98();
  __swift_destroy_boxed_opaque_existential_1(v17);
  result = objc_sync_enter(v2);
  if (result)
  {
    goto LABEL_10;
  }

  sub_1CF056468(v2);
  v11 = objc_sync_exit(v2);
  if (v11)
  {
    MEMORY[0x1EEE9AC00](v11);
    v16 = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v15, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  result = sub_1CF0452A4(a1);
  if ((result & 0x8000) != 0)
  {
    v12 = *&v2[qword_1EDEADA98];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (!v13)
    {
      *&v2[qword_1EDEADA98] = v14;
      return result;
    }

    __break(1u);
LABEL_10:
    MEMORY[0x1EEE9AC00](result);
    v16 = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v15, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  return result;
}

id sub_1CF03E5D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  type metadata accessor for JobLockAggregator();
  swift_beginAccess();
  *&v15 = *(a1 + 16);
  type metadata accessor for JobLockRule();
  swift_getWitnessTable();
  v5 = sub_1CF9E6708();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1D3868E50](&v13, v5, WitnessTable);
  v16 = v13;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  sub_1CF9E7978();
  swift_getWitnessTable();
  sub_1CF9E7C48();

  v13 = v11;
  v14 = v12;
  swift_getKeyPath();
  sub_1CF9E7B98();
  swift_getWitnessTable();
  sub_1CF9E7C38();

  swift_getWitnessTable();
  sub_1CF9E7AC8();
  swift_getWitnessTable();
  sub_1CF9E6E88();
  swift_beginAccess();
  nullsub_1(*(a1 + 24));
  sub_1CF9E6688();

  swift_getWitnessTable();
  sub_1CF9E6E88();
  swift_allocObject();
  v8 = sub_1CF056D94();
  result = [*(a1 + 40) addObject_];
  *a2 = v8;
  return result;
}

uint64_t sub_1CF03E990(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D3869250](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1CF6E9C40(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_1CF03EA08(void *a1, void (*a2)(id *, void), void *a3)
{
  v4 = v3;
  v62 = a1;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E63D8();
  v59 = *(v12 - 8);
  v60 = v12;
  v13 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v53 - v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if ([Strong invalidated])
    {
      v25 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v26 = sub_1CF9E6108();
      v27 = sub_1CF9E72A8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1CEFC7000, v26, v27, "Tried to fetch event stream on an invalidated domain.", v28, 2u);
        MEMORY[0x1D386CDC0](v28, -1, -1);
      }

      (*(v8 + 8))(v11, v7);
      v29 = FPDomainUnavailableError();
      if (v29)
      {
        v30 = v29;
        aBlock = v29;
        v64 = 0;
        v65 = 0;
        v66 = 0;
        LOBYTE(v67) = 1;
        a2(&aBlock, MEMORY[0x1E69E7CC0]);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v32 = [v24 indexer];
      v61 = v22;
      v54 = v15;
      if (v32)
      {
        v33 = v32;
        v34 = [v32 needsAuthentication];
      }

      else
      {
        v34 = 0;
      }

      v35 = swift_allocObject();
      *(v35 + 16) = v24;
      *(v35 + 24) = v34;
      *(v35 + 32) = a2;
      *(v35 + 40) = a3;
      v36 = *(v4 + 168);
      v58 = *(v4 + 160);
      v37 = sub_1CF9E6448();
      v55 = a3;
      v38 = v37;
      v39 = *(v37 - 8);
      (*(v39 + 56))(v61, 1, 1, v37);
      v40 = swift_allocObject();
      *(v40 + 16) = sub_1CF042FD0;
      *(v40 + 24) = v35;
      v41 = swift_allocObject();
      v41[2] = v4;
      v41[3] = sub_1CF042FD0;
      v41[4] = v35;
      v41[5] = v24;
      v42 = v62;
      v41[6] = v62;
      v43 = swift_allocObject();
      v43[2] = sub_1CF2F42E0;
      v43[3] = v40;
      v57 = v43;
      v43[4] = v36;
      v44 = v42;
      v62 = v40;

      v45 = v24;
      swift_retain_n();
      v56 = v45;

      v46 = fpfs_current_log();
      v55 = *(v36 + 16);
      sub_1CEFCCBDC(v61, v20, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v39 + 48))(v20, 1, v38) == 1)
      {
        sub_1CEFCCC44(v20, &unk_1EC4BE370, qword_1CFA01B30);
        v47 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v48 = v54;
        sub_1CF9E6438();
        (*(v39 + 8))(v20, v38);
        v47 = sub_1CF9E63C8();
        (*(v59 + 8))(v48, v60);
      }

      v49 = swift_allocObject();
      v49[2] = v46;
      v49[3] = sub_1CF089400;
      v49[4] = v41;
      v67 = sub_1CF2BA17C;
      v68 = v49;
      aBlock = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      v65 = sub_1CEFCA444;
      v66 = &block_descriptor_132;
      v50 = _Block_copy(&aBlock);
      v51 = v46;

      v67 = sub_1CF2F432C;
      v68 = v57;
      aBlock = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      v65 = sub_1CEFCA444;
      v66 = &block_descriptor_135;
      v52 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v55, v58, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v47, v50, v52);
      _Block_release(v52);
      _Block_release(v50);

      sub_1CEFCCC44(v61, &unk_1EC4BE370, qword_1CFA01B30);
    }
  }

  else
  {
    sub_1CF2CA194();
    v31 = swift_allocError();
    aBlock = v31;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    LOBYTE(v67) = 1;
    a2(&aBlock, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1CF03F130()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF03F170()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF03F1A8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

void sub_1CF03F204(uint64_t a1, void *a2, void *a3, char *a4, uint64_t a5, void (*a6)(uint64_t, char *, uint64_t (*)(void), void *), uint64_t a7)
{
  v40[1] = a7;
  v41 = a6;
  v11 = sub_1CF9E5248();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = sub_1CF9E5268();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    if (a3)
    {
      [a3 unregisterLifetimeExtensionForObject_];
    }

    v28 = &unk_1F4C7FA50;
    if (a2)
    {
      v29 = a2;
    }

    else
    {
      sub_1CF9E50E8();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF2F1F24(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      sub_1CF9E57D8();
      v29 = sub_1CF9E50D8();
      (*(v14 + 8))(v17, v13);
    }

    v46 = 0;
    v47 = 0xE000000000000000;
    v30 = a2;
    sub_1CF9E7948();

    v46 = 0x746172656D756E65;
    v47 = 0xEF20726F6620726FLL;
    v31 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v31);

    v32 = [*&a4[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_requestor] pid];
    v33 = type metadata accessor for FPXPCNonSanitizingErrorProxy();
    v34 = objc_allocWithZone(v33);
    v35 = sub_1CF9E57E8();
    v36 = sub_1CF9E6888();

    v45.receiver = v34;
    v45.super_class = v33;
    v37 = objc_msgSendSuper2(&v45, sel_initWithConnection_protocol_orError_name_requestPid_, 0, &unk_1F4C7FA50, v35, v36, v32);

    v44 = &unk_1F4C7FA50;
    v38 = swift_dynamicCastObjCProtocolUnconditional();
    v39 = v37;
    v41(v38, a4, nullsub_1, 0);
  }

  else
  {
    v43 = &unk_1F4C66D40;
    v18 = swift_dynamicCastObjCProtocolUnconditional();
    v46 = 0x746172656D756E65;
    v47 = 0xEB0000000020726FLL;
    swift_unknownObjectRetain_n();
    v19 = &unk_1F4C7FA50;
    v20 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v20);

    v21 = objc_allocWithZone(MEMORY[0x1E69674B0]);
    v22 = sub_1CF9E6888();

    v23 = [v21 initWithConnection:v18 protocol:v19 orError:0 name:v22 requestPid:0];
    swift_unknownObjectRelease();

    v42 = &unk_1F4C7FA50;
    v24 = swift_dynamicCastObjCProtocolUnconditional();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = a3;
    v25[4] = a4;
    swift_unknownObjectRetain();
    v26 = a4;
    v27 = v23;
    v41(v24, v26, sub_1CF041A58, v25);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1CF03F6C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1CF03F710(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_1CF9E5CF8() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF03FD10(a1, a2, a3, a4, *(v4 + 16), (v4 + v10), *(v4 + v11), *(v4 + v11 + 8), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF03F7F4()
{
  v1 = sub_1CF9E6068();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for Signpost(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() defaultStore];
  if (*(v0 + qword_1EDEBBE38) == 1)
  {
  }

  else
  {
    v29 = v17;
    sub_1CF042760();
    if ((sub_1CF03B9D0() & 1) != 0 || (v18 = qword_1EC4BFAF0, swift_beginAccess(), v19 = *(*(v0 + v18) + 16), v19 >= [v29 sqlDatabaseOnNextDurableFlushTriggerThreshold]))
    {
      v28 = v0;
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v20 = qword_1EDEBBE40;
      (*(v2 + 56))(v12, 1, 1, v1);
      sub_1CEFCCBDC(v12, v10, &unk_1EC4BED20, &unk_1CFA00700);
      v21 = *(v2 + 48);
      if (v21(v10, 1, v1) == 1)
      {
        v22 = v20;
        sub_1CF9E6048();
        if (v21(v10, 1, v1) != 1)
        {
          sub_1CEFCCC44(v10, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        (*(v2 + 32))(v5, v10, v1);
      }

      v27 = 0x80000001CFA45480;
      (*(v2 + 16))(v16, v5, v1);
      *&v16[*(v13 + 20)] = v20;
      v23 = &v16[*(v13 + 24)];
      *v23 = "SQLDB: Force flush of database";
      *(v23 + 1) = 30;
      v23[16] = 2;
      v24 = v20;
      sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1CF9FA450;
      *(v25 + 56) = MEMORY[0x1E69E6158];
      *(v25 + 64) = sub_1CEFD51C4();
      *(v25 + 32) = 0xD00000000000001CLL;
      *(v25 + 40) = v27;
      sub_1CF9E6028();

      (*(v2 + 8))(v5, v1);
      sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
      v26 = *(v28 + qword_1EDEBBDB0);
      [v26 forceBatchStart];
      [v26 flush];
      sub_1CF9E7458();
      sub_1CF9E6038();

      sub_1CEFD5278(v16, type metadata accessor for Signpost);
    }

    else
    {
    }
  }
}

void sub_1CF03FD10(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v89 = a4;
  v90 = a8;
  v87 = a3;
  v88 = a7;
  v86 = a6;
  v91 = a1;
  v12 = sub_1CF9E5CF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a5 + 328);
  v17 = *(a5 + 336);
  v92 = a5;
  v18 = qword_1EDEA5AD8;
  v19 = v16;
  v20 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v21 = sub_1CF040418(v16, v17, qword_1EDEBB820, *algn_1EDEBB828);

  if (v21)
  {
    (*(v13 + 16))(&v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v86, v12);
    v22 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    (*(v13 + 32))(v26 + v22, v15, v12);
    v27 = (v26 + v23);
    v28 = v88;
    v30 = v89;
    v29 = v90;
    *v27 = v87;
    v27[1] = v30;
    v31 = (v26 + v24);
    *v31 = v28;
    v31[1] = v29;
    *(v26 + v25) = v92;
    *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
    v97 = sub_1CF2F4554;
    v98 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v94 = 1107296256;
    v95 = sub_1CF9285C4;
    v96 = &block_descriptor_156;
    v32 = _Block_copy(&aBlock);

    v33 = a2;

    [v91 currentSyncAnchorWithCompletion_];
    _Block_release(v32);
  }

  else
  {
    v34 = *(v92 + 328);
    v84 = a2;
    v85 = a9;
    v82 = v12;
    v83 = a10;
    if (v34)
    {
      v35 = *(v13 + 16);
      v36 = v86;
      v86 = v34;
      v35(&v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v12);
      v37 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v38 = (v14 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
      v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
      v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
      v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
      v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
      v44 = swift_allocObject();
      (*(v13 + 32))(v44 + v37, v15, v82);
      *(v44 + v38) = v92;
      v45 = v85;
      *(v44 + v39) = v85;
      v46 = v83;
      *(v44 + v40) = v83;
      v47 = (v44 + v41);
      v48 = v88;
      v49 = v89;
      *v47 = v87;
      v47[1] = v49;
      v50 = (v44 + v42);
      v51 = v90;
      *v50 = v48;
      v50[1] = v51;
      v52 = v84;
      *(v44 + v43) = v84;
      v97 = sub_1CF2F443C;
      v98 = v44;
      aBlock = MEMORY[0x1E69E9820];
      v94 = 1107296256;
      v95 = sub_1CF9284C8;
      v96 = &block_descriptor_150;
      v53 = _Block_copy(&aBlock);
      v54 = v46;

      v55 = v52;
      v56 = v86;
      v57 = v45;

      [v91 enumerateItemsFromPage:v56 suggestedPageSize:200 reply:v53];
      _Block_release(v53);
    }

    else
    {
      v58 = *(v92 + 336);
      if (v58)
      {
        v59 = v58;
        v58 = sub_1CF9E5B88();
        v61 = v60;
      }

      else
      {
        v61 = 0xC000000000000000;
      }

      v81 = sub_1CF9E5B48();
      sub_1CEFE4714(v58, v61);
      (*(v13 + 16))(&v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v86, v12);
      v62 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v63 = (v14 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
      v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
      v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
      v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
      v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
      v68 = swift_allocObject();
      (*(v13 + 32))(v68 + v62, v15, v82);
      *(v68 + v63) = v92;
      v69 = v84;
      *(v68 + v64) = v85;
      v70 = v83;
      *(v68 + v65) = v83;
      v71 = (v68 + v66);
      v72 = v88;
      v74 = v89;
      v73 = v90;
      *v71 = v87;
      v71[1] = v74;
      v75 = (v68 + v67);
      *v75 = v72;
      v75[1] = v73;
      *(v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8)) = v69;
      v97 = sub_1CF0408E4;
      v98 = v68;
      aBlock = MEMORY[0x1E69E9820];
      v94 = 1107296256;
      v95 = sub_1CF0407BC;
      v96 = &block_descriptor_144;
      v76 = _Block_copy(&aBlock);
      v77 = v70;

      v78 = v69;
      v79 = v85;

      v80 = v81;
      [v91 enumerateChangesFromToken:v81 suggestedBatchSize:200 reply:v76];
      _Block_release(v76);
    }
  }
}

uint64_t sub_1CF040338()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6);

  return swift_deallocObject();
}

uint64_t sub_1CF040418(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a3;
    v8 = a1;
    v9 = sub_1CF9E5B88();
    v11 = v10;
    v12 = sub_1CF9E5B88();
    v14 = v13;
    v15 = sub_1CF328660(v9, v11, v12, v13);
    sub_1CEFE4714(v12, v14);
    sub_1CEFE4714(v9, v11);

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {
      v16 = a4;
      v17 = a2;
      v18 = sub_1CF9E5B88();
      v20 = v19;
      v21 = sub_1CF9E5B88();
      v23 = v22;
      v24 = sub_1CF328660(v18, v20, v21, v22);
      sub_1CEFE4714(v21, v23);
      sub_1CEFE4714(v18, v20);

      if (v24)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

void OUTLINED_FUNCTION_0_0(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a3 = a1;
  *(a3 + 4) = a4;
  *(a3 + 12) = 2112;
  *(a3 + 14) = v4;
  *(a3 + 22) = 2080;
}

void OUTLINED_FUNCTION_2_6(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

unint64_t sub_1CF0406C8()
{
  sub_1CF9E7948();

  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_itemIdentifier);
  v2 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
  v3 = [*(v0 + OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_requestor) description];
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);

  return 0xD000000000000014;
}

void sub_1CF0407BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v13 = sub_1CF9E6D48();
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v14 = sub_1CF9E6D48();

  v17 = a5;
  v15 = a6;
  v16 = a7;
  v12(v13, v14, a4, a5, a6, a7);
}

uint64_t sub_1CF0408E4(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, void *a6)
{
  v13 = *(sub_1CF9E5CF8() - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF040A10(a1, a2, a3, a4, a5, a6, v6 + v14, *(v6 + v15), *(v6 + v16), *(v6 + v17), *(v6 + v18), *(v6 + v18 + 8), *(v6 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v6 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v6 + ((((v18 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF040A10(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v46 = a4;
  v47 = a2;
  v48 = a3;
  v44 = a15;
  v45 = a1;
  v42 = a13;
  v43 = a14;
  v41 = a11;
  v18 = sub_1CF9E5CF8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CC8();
  sub_1CF9E5C28();
  v24 = v23;
  (*(v19 + 8))(v22, v18);
  v49 = *(a8 + 160);
  v40 = [a9 log];
  v25 = swift_allocObject();
  *(v25 + 16) = a8;
  *(v25 + 24) = a5;
  v27 = v41;
  v26 = v42;
  *(v25 + 32) = a10;
  *(v25 + 40) = v27;
  *(v25 + 48) = a12;
  *(v25 + 56) = a6;
  v29 = v43;
  v28 = v44;
  *(v25 + 64) = v26;
  *(v25 + 72) = v29;
  v30 = v45;
  v31 = v46;
  *(v25 + 80) = v28;
  *(v25 + 88) = v31;
  v32 = v47;
  *(v25 + 96) = v30;
  *(v25 + 104) = v32;
  *(v25 + 112) = v48;
  *(v25 + 120) = v24;

  v33 = a5;
  v34 = a10;

  v35 = a6;
  v36 = v31;

  v37 = v28;
  v38 = v40;
  sub_1CF01001C(v40, "fetchEventStream(domainVersion:completion:)", 43, 2, sub_1CF040CAC, v25);
}

uint64_t sub_1CF040C28()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  return swift_deallocObject();
}

void sub_1CF040CF8(uint64_t a1, void *a2, void *a3, void (*a4)(void), double a5, uint64_t a6, void *a7, char *a8, void *a9, uint64_t a10, void *a11, unint64_t a12, unint64_t a13, char a14)
{
  v90 = a8;
  v21 = sub_1CF9E5FF8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a1;
  sub_1CF041B2C(a2, a3);
  a4();
  if (!a7)
  {
    v96 = v21;
    v45 = a11;
    if (!a11)
    {
      if (qword_1EDEA5AD8 != -1)
      {
        goto LABEL_54;
      }

      goto LABEL_12;
    }

    v47 = v92;
    v48 = *(v92 + 328);
    v49 = *(v92 + 336);
    *(v92 + 328) = 0;
    *(v47 + 336) = a11;
    while (1)
    {
      v57 = v45;

      v88[1] = a9;
      v89 = a2;
      if (a12 >> 62)
      {
LABEL_51:
        v58 = sub_1CF9E7818();
      }

      else
      {
        v58 = *((a12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_retain_n();
      v97 = a12;
      if (v58)
      {
        v50 = 0;
        v94 = a12 & 0xFFFFFFFFFFFFFF8;
        v95 = a12 & 0xC000000000000001;
        v91 = (v22 + 8);
        v93 = v58;
        a2 = MEMORY[0x1E6969080];
        do
        {
          if (v95)
          {
            v60 = MEMORY[0x1D3869C30](v50, a12);
            v61 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
LABEL_30:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v50 >= *(v94 + 16))
            {
              __break(1u);
              goto LABEL_51;
            }

            v60 = *(a12 + 8 * v50 + 32);
            v61 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              goto LABEL_30;
            }
          }

          v62 = v60;
          v63 = [v62 extendedAttributes];
          if (v63)
          {
            v64 = v63;
            v65 = sub_1CF9E6638();

            v66 = v92;

            sub_1CF045428(v65, v66);

            v22 = sub_1CF9E6618();

            [v62 setExtendedAttributes_];
          }

          v67 = v96;
          if ([v62 isFlattenedPackage])
          {
            v68 = [v62 filename];
            if (!v68)
            {
              __break(1u);
LABEL_56:
              type metadata accessor for FPXPCAutomaticErrorProxyTimeout(0);
              v98 = v50;
              sub_1CF9E80C8();
              __break(1u);
              return;
            }

            v22 = v68;
            v69 = [v68 stringByDeletingPathExtension];

            if (!v69)
            {
              _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v22 = v70;
              v69 = sub_1CF9E6888();
            }

            [v62 setFilename_];

            sub_1CF9E5FA8();
            v59 = sub_1CF9E5F38();
            (*v91)(v25, v67);
            [v62 setContentType_];
          }

          ++v50;
          a12 = v97;
        }

        while (v61 != v93);
      }

      if (a13 >> 62)
      {
        v22 = sub_1CF9E7818();
      }

      else
      {
        v22 = *((a13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a9 = v89;
      v25 = v90;
      v71 = MEMORY[0x1E69E7CC0];
      if (!v22)
      {
        goto LABEL_43;
      }

      v98 = MEMORY[0x1E69E7CC0];
      sub_1CF680D2C(0, v22 & ~(v22 >> 63), 0);
      if ((v22 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_54:
      swift_once();
LABEL_12:
      v54 = qword_1EDEBB820;
      v45 = *algn_1EDEBB828;
      v55 = v92;
      v48 = *(v92 + 328);
      v49 = *(v92 + 336);
      *(v92 + 328) = qword_1EDEBB820;
      *(v55 + 336) = v45;
      v56 = v54;
    }

    v72 = 0;
    v71 = v98;
    do
    {
      if ((a13 & 0xC000000000000001) != 0)
      {
        v73 = MEMORY[0x1D3869C30](v72, a13);
      }

      else
      {
        v73 = *(a13 + 8 * v72 + 32);
      }

      v74 = v73;
      v75 = [v73 identifier];

      v98 = v71;
      v77 = *(v71 + 16);
      v76 = *(v71 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_1CF680D2C((v76 > 1), v77 + 1, 1);
        v71 = v98;
      }

      ++v72;
      *(v71 + 16) = v77 + 1;
      *(v71 + 8 * v77 + 32) = v75;
    }

    while (v22 != v72);
    a9 = v89;
    v25 = v90;
    a12 = v97;
LABEL_43:
    v98 = a12;
    v99 = v71;
    v100 = a14 & 1;
    v101 = a5;
    v102 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
    v78 = *(type metadata accessor for SyncState() - 8);
    v79 = *(v78 + 72);
    v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1CF9FA440;
    v82 = (v81 + v80);
    v84 = *(v92 + 328);
    v83 = *(v92 + 336);
    *v82 = v84;
    v82[1] = v83;
    swift_storeEnumTagMultiPayload();
    v85 = v83;

    v86 = v84;
    *(v82 + v79) = [a9 domainVersion];
    swift_storeEnumTagMultiPayload();
    (v25)(&v98, v81);

    return;
  }

  _s3__C4CodeOMa_1(0);
  v98 = -1002;
  v26 = a7;
  sub_1CF2F1F24(&qword_1EDEA3590, _s3__C4CodeOMa_1);
  if (sub_1CF9E5658())
  {
    if (qword_1EDEA5AD8 != -1)
    {
      swift_once();
    }

    v27 = qword_1EDEBB820;
    v28 = *algn_1EDEBB828;
    v29 = v92;
    v30 = *(v92 + 328);
    v31 = *(v92 + 336);
    *(v92 + 328) = qword_1EDEBB820;
    *(v29 + 336) = v28;
    v32 = v27;
    v33 = v28;

    v98 = a7;
    v99 = 0;
    v100 = 0;
    v101 = 0.0;
    v102 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
    v34 = *(type metadata accessor for SyncState() - 8);
    v35 = *(v34 + 72);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1CF9FA450;
    v38 = (v37 + v36);
    v39 = *(v29 + 328);
    v40 = *(v29 + 336);
    *v38 = v39;
    v38[1] = v40;
    swift_storeEnumTagMultiPayload();
    v41 = a7;
    v42 = v40;
    v43 = v39;
    (v90)(&v98, v37);

    v44 = a7;
  }

  else
  {
    v50 = *(a10 + OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeoutState);
    if (v50)
    {
      if (v50 == 1)
      {
        sub_1CF2F462C();
        v52 = swift_allocError();
        *v51 = 0;
        *(v51 + 8) = 0;
        v53 = -2;
      }

      else
      {
        if (v50 != 2)
        {
          goto LABEL_56;
        }

        sub_1CF2F462C();
        v52 = swift_allocError();
        *v51 = 0;
        *(v51 + 8) = 0;
        v53 = -3;
      }

      *(v51 + 16) = v53;
    }

    else
    {
      v87 = a7;
      v52 = a7;
    }

    v98 = v52;
    v99 = 0;
    v100 = 0;
    v101 = 0.0;
    v102 = 1;
    (v90)(&v98, MEMORY[0x1E69E7CC0]);

    v44 = v52;
  }
}

void sub_1CF0415C8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = aBlock - v12;
  v14 = [a1 domainVersion];
  LOBYTE(a2) = sub_1CF04217C(v14, a2);

  if (a2)
  {
    v15 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v16 = sub_1CF9E6108();
    v17 = sub_1CF9E7288();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1CEFC7000, v16, v17, "found new domain version, setting new domainUserInfo", v18, 2u);
      MEMORY[0x1D386CDC0](v18, -1, -1);
    }

    v19 = *(v7 + 8);
    v19(v13, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v21 = Strong, v22 = [Strong provider], v21, v22))
    {
      v23 = [a1 domainUserInfo];
      if (v23)
      {
        v24 = v23;
        sub_1CF9E6638();

        v25 = sub_1CF9E6618();
      }

      else
      {
        v25 = 0;
      }

      v30 = *(v3 + 280);
      v31 = [v30 pathComponents];
      v32 = sub_1CF9E6D48();

      v33 = *(v32 + 16);

      if (v33 < 2)
      {
        v34 = *MEMORY[0x1E6967178];
      }

      else
      {
        v34 = [v30 lastPathComponent];
        if (!v34)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v34 = sub_1CF9E6888();
        }
      }

      v35 = swift_allocObject();
      *(v35 + 16) = v22;
      aBlock[4] = sub_1CF2F6360;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF00A468;
      aBlock[3] = &block_descriptor_838;
      v36 = _Block_copy(aBlock);
      v37 = v22;

      [v37 setDomainUserInfo:v25 forDomainIdentifier:v34 completionHandler:v36];
      _Block_release(v36);
    }

    else
    {
      v26 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v27 = sub_1CF9E6108();
      v28 = sub_1CF9E72A8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1CEFC7000, v27, v28, "Error setting new domainUserInfo, provider was nil", v29, 2u);
        MEMORY[0x1D386CDC0](v29, -1, -1);
      }

      v19(v11, v6);
    }
  }
}

uint64_t sub_1CF041A1C()
{

  return swift_deallocObject();
}

id sub_1CF041A58()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = [*(v0 + 16) invalidate];
  if (v1)
  {

    return [v1 unregisterLifetimeExtensionForObject_];
  }

  return result;
}

uint64_t objectdestroy_146Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return swift_deallocObject();
}

void sub_1CF041B2C(void *a1, void *a2)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E64A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v2[20];
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = sub_1CF9E64D8();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (a1)
  {
    v17 = a1;
    sub_1CF0415C8(v17, a2);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v19 = Strong, v20 = [Strong provider], v19, !v20) || (v21 = objc_msgSend(v20, sel_descriptor), v20, v22 = objc_msgSend(v21, sel_appliesChangesAtomically), v21, (v22 & 1) == 0))
    {

      return;
    }

    v23 = v2[40];
    if (v23 != 1)
    {
      v25 = v2[37];
      v24 = v2[38];
      v26 = v2[39];
      v27 = v2[40];

      if ([v17 extensionPid] == v25)
      {
        if (v24 < [v17 sequenceNumber])
        {
          sub_1CF24D114(v25, v24, v26, v23);
          v28 = [v17 extensionPid];
          v29 = [v17 sequenceNumber];
          v30 = [v17 callDescription];
          if (v30)
          {
            v31 = v30;
            v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v34 = v33;
          }

          else
          {

            v32 = 0;
            v34 = 0;
          }

          v40 = v2[37];
          v41 = v2[38];
          v42 = v2[39];
          v43 = v2[40];
          v2[37] = v28;
          v2[38] = v29;
LABEL_18:
          v2[39] = v32;
          v2[40] = v34;
          sub_1CF24D114(v40, v41, v42, v43);
          return;
        }

        v44 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        sub_1CF2F634C(v25, v24, v26, v23);
        v45 = v17;
        sub_1CF2F634C(v25, v24, v26, v23);
        v46 = v45;
        v47 = sub_1CF9E6108();
        v48 = sub_1CF9E72B8();
        if (os_log_type_enabled(v47, v48))
        {
          v61 = v48;
          v49 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v62 = v60;
          *v49 = 134219266;
          *(v49 + 4) = [v46 sequenceNumber];
          *(v49 + 12) = 2048;
          *(v49 + 14) = v24;
          *(v49 + 22) = 2048;
          sub_1CF24D114(v25, v24, v26, v23);
          *(v49 + 24) = v24;
          sub_1CF24D114(v25, v24, v26, v23);
          *(v49 + 32) = 2082;
          if (v23)
          {
            v50 = 0x6E776F6E6B6E753CLL;
          }

          else
          {
            sub_1CF24D114(v25, v24, v26, 0);
            v50 = 0x6E776F6E6B6E753CLL;
            v26 = 0x6E776F6E6B6E753CLL;
            v23 = 0xE90000000000003ELL;
          }

          v51 = sub_1CEFD0DF0(v26, v23, &v62);

          *(v49 + 34) = v51;
          *(v49 + 42) = 2048;
          v52 = [v46 sequenceNumber];

          *(v49 + 44) = v52;
          *(v49 + 52) = 2082;
          v53 = [v46 callDescription];
          if (v53)
          {
            v54 = v53;
            v50 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v56 = v55;
          }

          else
          {
            v56 = 0xE90000000000003ELL;
          }

          v57 = sub_1CEFD0DF0(v50, v56, &v62);

          *(v49 + 54) = v57;
          _os_log_impl(&dword_1CEFC7000, v47, v61, "sequence number received out of order: %ld <= %ld\n    %ld: %{public}s\n    %ld: %{public}s", v49, 0x3Eu);
          v58 = v60;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v58, -1, -1);
          MEMORY[0x1D386CDC0](v49, -1, -1);
        }

        else
        {

          sub_1CF24D114(v25, v24, v26, v23);
          sub_1CF24D114(v25, v24, v26, v23);
        }

        (*(v6 + 8))(v9, v5);
        return;
      }

      sub_1CF24D114(v25, v24, v26, v23);
    }

    v35 = [v17 extensionPid];
    v36 = [v17 sequenceNumber];
    v37 = [v17 callDescription];
    if (v37)
    {
      v38 = v37;
      v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v34 = v39;
    }

    else
    {

      v32 = 0;
      v34 = 0;
    }

    v40 = v2[37];
    v41 = v2[38];
    v42 = v2[39];
    v43 = v2[40];
    v2[37] = v35;
    v2[38] = v36;
    goto LABEL_18;
  }
}

uint64_t sub_1CF04217C(void *a1, void *a2)
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34[-v10];
  if (!a2)
  {
    return a1 != 0;
  }

  if (a1)
  {
    v12 = a2;
    v13 = a1;
    v14 = [v12 compare_];
    if (v14 == -1)
    {

      return 1;
    }

    if (v14)
    {
      if (v14 != 1)
      {
        v33 = v14;
        type metadata accessor for ComparisonResult(0);
        v36 = v33;
        result = sub_1CF9E80C8();
        __break(1u);
        return result;
      }

      v24 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v25 = v12;
      v26 = v13;
      v27 = sub_1CF9E6108();
      v28 = sub_1CF9E72C8();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v35 = v28;
        v30 = v29;
        v31 = swift_slowAlloc();
        *v30 = 138412546;
        *(v30 + 4) = v25;
        *(v30 + 12) = 2112;
        *(v30 + 14) = v26;
        *v31 = a2;
        v31[1] = a1;
        v32 = v25;
        v25 = v26;
        _os_log_impl(&dword_1CEFC7000, v27, v35, "🌍  ignoring decreasing domain version %@ -> %@", v30, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v31, -1, -1);
        MEMORY[0x1D386CDC0](v30, -1, -1);
      }

      else
      {
        v32 = v27;
        v27 = v26;
      }

      (*(v5 + 8))(v9, v4);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v16 = a2;
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v18 = v16;
    v19 = sub_1CF9E6108();
    v20 = sub_1CF9E72C8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = a2;
      v23 = v18;
      _os_log_impl(&dword_1CEFC7000, v19, v20, "🌍  ignoring disappearing domain version %@ -> nil", v21, 0xCu);
      sub_1CF19CAB0(v22);
      MEMORY[0x1D386CDC0](v22, -1, -1);
      MEMORY[0x1D386CDC0](v21, -1, -1);
    }

    else
    {
      v23 = v19;
      v19 = v18;
    }

    (*(v5 + 8))(v11, v4);
    return 1;
  }
}

unint64_t sub_1CF042768()
{
  v1 = v0;
  v2 = type metadata accessor for VFSItem(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51 - v9;
  sub_1CEFCCBDC(v1, &v51 - v9, &unk_1EC4BED40, &unk_1CFA00720);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v19 = *v10;
        v20 = *(v10 + 1);
        v21 = v10[16];
        v53[0] = 0;
        v53[1] = 0xE000000000000000;
        sub_1CF9E7948();
        if (v19)
        {
          v22 = 0x6465727265666564;
        }

        else
        {
          v22 = 0;
        }

        if (v19)
        {
          v23 = 0xE900000000000020;
        }

        else
        {
          v23 = 0xE000000000000000;
        }

        MEMORY[0x1D3868CC0](v22, v23);

        MEMORY[0x1D3868CC0](0x7473207465736572, 0xEE00203A6D616572);
        v24 = v20;
        v25 = v21;
      }

      else
      {
        v32 = *(v10 + 2);
        v33 = v10[24];
        v34 = *v10;
        v35 = v10[8];
        v53[0] = 0;
        v53[1] = 0xE000000000000000;
        sub_1CF9E7948();

        strcpy(v53, "rescan below ");
        HIWORD(v53[1]) = -4864;
        v51 = v34;
        v52 = v35;
        v38 = VFSItemID.description.getter(v36, v37);
        MEMORY[0x1D3868CC0](v38);

        MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
        v24 = v32;
        v25 = v33;
      }

      v39 = sub_1CF953A9C(v24, v25);
      goto LABEL_38;
    }

    if (!EnumCaseMultiPayload)
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
      v14 = *(v13 + 48);
      if (*&v10[*(v13 + 64)])
      {

        v15 = (*(v3 + 48))(&v10[v14], 1, v2);
        if (v15 != 1)
        {
          sub_1CEFE4E00(&v10[v14], v6, type metadata accessor for VFSItem);
          strcpy(v53, "item changed ");
          HIWORD(v53[1]) = -4864;
          v49 = sub_1CF255338();
          MEMORY[0x1D3868CC0](v49);

          v50 = v53[0];
          sub_1CF007CB8(v6, type metadata accessor for VFSItem);
          return v50;
        }

        v17 = *v10;
        v18 = v10[8];
        strcpy(v53, "item changed ");
        HIWORD(v53[1]) = -4864;
        v51 = v17;
        v52 = v18;
      }

      else
      {
        v45 = *v10;
        v46 = v10[8];
        v53[0] = 0;
        v53[1] = 0xE000000000000000;
        sub_1CF9E7948();

        v53[0] = 0xD00000000000001ALL;
        v53[1] = 0x80000001CFA464B0;
        v51 = v45;
        v52 = v46;
      }

      v47 = VFSItemID.description.getter(v15, v16);
      MEMORY[0x1D3868CC0](v47);

      v48 = v53[0];
      sub_1CEFCCC44(&v10[v14], &unk_1EC4BEC00, &unk_1CF9FCB60);
      return v48;
    }

    v28 = *v10;
    v29 = v10[8];
    v53[0] = 0;
    v53[1] = 0xE000000000000000;
    sub_1CF9E7948();

    v53[0] = 0xD000000000000012;
    v53[1] = 0x80000001CFA5A480;
    v51 = v28;
    v52 = v29;
LABEL_37:
    v39 = VFSItemID.description.getter(v30, v31);
LABEL_38:
    MEMORY[0x1D3868CC0](v39);

    return v53[0];
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v26 = *v10;
      v53[0] = 0;
      v53[1] = 0xE000000000000000;
      sub_1CF9E7948();

      v53[0] = 0xD000000000000013;
      v53[1] = 0x80000001CFA5A3C0;
      v51 = v26;
      v27 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v27);

      MEMORY[0x1D3868CC0](0x72757020746F6720, 0xEB00000000646567);
      return v53[0];
    }

    v40 = v10[9];
    v41 = *v10;
    v42 = v10[8];
    v53[0] = 0;
    v53[1] = 0xE000000000000000;
    sub_1CF9E7948();

    v53[0] = 0xD000000000000012;
    v53[1] = 0x80000001CFA5A3A0;
    if (v40 > 1)
    {
      if (v40 == 2)
      {
        v43 = 0xE700000000000000;
        v44 = 0x6B6E696C6D7973;
      }

      else
      {
        v43 = 0xE500000000000000;
        v44 = 0x7361696C61;
      }
    }

    else
    {
      v43 = 0xE300000000000000;
      if (v40)
      {
        v44 = 7498084;
      }

      else
      {
        v44 = 6516580;
      }
    }

    MEMORY[0x1D3868CC0](v44, v43);

    v30 = MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v51 = v41;
    v52 = v42;
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload == 6)
  {
    return 0xD000000000000035;
  }

  if (EnumCaseMultiPayload == 7)
  {
    return 0xD000000000000030;
  }

  return 0xD000000000000013;
}

uint64_t sub_1CF042D98(uint64_t a1)
{
  v3 = *(*v1 + 632);
  v9[0] = *(*v1 + 616);
  v9[1] = v3;
  v4 = type metadata accessor for PersistenceTrigger();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  if (*(v1 + qword_1EDEADB48) == 1)
  {
    (*(v8 + 16))(v9 - v7, a1, v4);
    swift_beginAccess();
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1CF042EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF042F54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF042FA8()
{
  sub_1CF042760();
}

void sub_1CF042FE0(uint64_t a1, uint64_t a2, void *a3, int a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v35 = a6;
  v36 = a5;
  v9 = *(a1 + 8);
  v33 = *a1;
  v34 = a2;
  v10 = *(a1 + 24);
  v30 = *(a1 + 16);
  v31 = v10;
  v32 = v9;
  v11 = *(a1 + 32);
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a3 indexer];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 needsAuthentication];

    if (((v19 ^ a4) & 1) == 0)
    {
LABEL_10:
      if (v11)
      {
        _s3__C4CodeOMa_1(0);
        v37[0] = -1000;
        sub_1CF2F1F24(&qword_1EDEA3590, _s3__C4CodeOMa_1);
        if ((sub_1CF9E5658() & 1) == 0)
        {
LABEL_17:
          v36(a1, v34);
          return;
        }

        v28 = [a3 indexer];
        [v28 setNeedsAuth];
      }

      else
      {
        v28 = [a3 indexer];
        [v28 clearNeedsAuth];
      }

      goto LABEL_17;
    }
  }

  else
  {
    if ((a4 & 1) == 0)
    {
      goto LABEL_10;
    }

    v19 = 0;
    LOBYTE(a4) = 1;
  }

  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E72A8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109376;
    *(v23 + 4) = a4 & 1;
    *(v23 + 8) = 1024;
    *(v23 + 10) = v19;
    _os_log_impl(&dword_1CEFC7000, v21, v22, "Auth state changed underneath fetchEventStream, from %{BOOL}d to %{BOOL}d. Forcing hasMore to cause retry.", v23, 0xEu);
    MEMORY[0x1D386CDC0](v23, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v24 = v33;
  if (*(a1 + 32))
  {
    v25 = v33;
    v26 = v32;
    v27 = v30;
  }

  else
  {

    v26 = v32;

    v11 = 0;
    v27 = 1;
  }

  v37[0] = v24;
  v37[1] = v26;
  v29 = v31;
  v37[2] = v27;
  v37[3] = v31;
  v38 = v11 & 1;
  v36(v37, v34);
  sub_1CF060D50(v24, v26, v27, v29, v11 & 1);
}

uint64_t sub_1CF043498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF043504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF0435B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B30, &qword_1CFA084C0);
  result = sub_1CF9E7BE8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v36 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v37 = (v10 - 1) & v10;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = (*(v4 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(v4 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v9 + 40);
    sub_1CF9E81D8();

    sub_1CEFE42D4(v21, v22);
    sub_1CF9E69C8();
    result = sub_1CF9E8228();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = 16 * v27;
    v33 = (*(v9 + 48) + v32);
    *v33 = v18;
    v33[1] = v19;
    v34 = (*(v9 + 56) + v32);
    *v34 = v21;
    v34[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
    v10 = v37;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v37 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1CF043954(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v48 = *v2;
  v5 = v48[10];
  v51 = v48[12];
  v56 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v35 - v8;
  v46 = [a1 longAtIndex_];
  v44 = [a1 unsignedLongAtIndex_];
  v43 = [a1 longAtIndex_];
  v10 = [a1 unsignedLongAtIndex_];
  v47 = [a1 longAtIndex_];
  v45 = [a1 unsignedLongAtIndex_];
  v11 = sub_1CF043D7C([a1 longAtIndex_]);
  if (v11 == 89)
  {
    sub_1CF1DA5D8();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }

  else
  {
    v13 = v11;
    v41 = AssociatedTypeWitness;
    v42 = v9;
    v40 = v10;
    v14 = sub_1CF03D7E8();
    v15 = sub_1CF044430(v14, a1, 9);
    v17 = v16;
    v19 = v18;

    if (!v3)
    {
      v37 = v15;
      v38 = v17;
      v39 = v19;
      v35 = v2;
      v20 = v41;
      v36 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
      v21 = a1;
      v22 = v42;
      v36();
      v23 = [v21 unsignedLongAtIndex_];
      v24 = v37;
      v25 = v38;
      v26 = v39;
      v27 = sub_1CF03E148(v13, v37, v38, v39, v22, v44, v43, v23, v56, v48[11], v51, v48[13]);
      sub_1CF03D7A8(v24, v25, v26);
      (*(v49 + 8))(v22, v20);
      v28 = *(v35 + 16);
      v54 = &type metadata for SQLItemJobID;
      v55 = sub_1CF03E084();
      v52 = v46;
      v53 = v28;
      swift_beginAccess();

      sub_1CF03E0D8(&v52, v27 + 56);
      swift_endAccess();

      v29 = v47;
      v30 = v47 == 0x7FFFFFFFFFFFFFFFLL;
      v31 = v47 == 0x7FFFFFFFFFFFFFFFLL;
      v32 = v45;
      if (v47 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = 0;
        v29 = 0;
      }

      v33 = v50;
      *v50 = v27;
      v33[1] = v32;
      v34 = v40;
      if (v30)
      {
        v34 = 0;
      }

      v33[2] = v29;
      v33[3] = v34;
      *(v33 + 32) = v31;
    }
  }
}

uint64_t sub_1CF043D7C(uint64_t a1)
{
  if (a1 <= 1000)
  {
    v1 = a1 - 1;
    result = 1;
    switch(v1)
    {
      case 0:
        result = 0;
        break;
      case 2:
        return result;
      case 3:
        result = 2;
        break;
      case 4:
        result = 3;
        break;
      case 5:
        result = 4;
        break;
      case 6:
        result = 5;
        break;
      case 7:
        result = 6;
        break;
      case 8:
        result = 7;
        break;
      case 9:
        result = 8;
        break;
      case 10:
        result = 9;
        break;
      case 11:
        result = 10;
        break;
      case 12:
        result = 11;
        break;
      case 14:
        result = 12;
        break;
      case 15:
        result = 13;
        break;
      case 16:
        result = 14;
        break;
      case 17:
        result = 15;
        break;
      case 18:
        result = 16;
        break;
      case 19:
        result = 17;
        break;
      case 20:
        result = 18;
        break;
      case 21:
        result = 19;
        break;
      case 22:
        result = 20;
        break;
      case 23:
        result = 21;
        break;
      case 24:
        result = 22;
        break;
      case 25:
        result = 23;
        break;
      case 26:
        result = 24;
        break;
      case 27:
        result = 25;
        break;
      case 28:
        result = 26;
        break;
      case 29:
        result = 27;
        break;
      case 30:
        result = 28;
        break;
      case 31:
        result = 29;
        break;
      case 32:
        result = 30;
        break;
      case 33:
        result = 31;
        break;
      case 34:
        result = 32;
        break;
      case 35:
        result = 33;
        break;
      case 36:
        result = 34;
        break;
      case 37:
        result = 35;
        break;
      case 38:
        result = 36;
        break;
      case 39:
        result = 37;
        break;
      case 40:
        result = 38;
        break;
      case 41:
        result = 39;
        break;
      case 42:
        result = 40;
        break;
      case 43:
        result = 41;
        break;
      case 44:
        result = 42;
        break;
      case 45:
        result = 43;
        break;
      case 46:
        result = 44;
        break;
      case 47:
        result = 45;
        break;
      case 48:
        result = 46;
        break;
      case 49:
        result = 47;
        break;
      default:
        return 89;
    }

    return result;
  }

  if (a1 <= 3599)
  {
    if (a1 > 2000)
    {
      if (a1 <= 2003)
      {
        if (a1 == 2001)
        {
          return 56;
        }

        if (a1 == 2002)
        {
          return 57;
        }

        return 58;
      }

      if (a1 <= 2005)
      {
        if (a1 == 2004)
        {
          return 59;
        }

        else
        {
          return 60;
        }
      }

      if (a1 == 2006)
      {
        return 61;
      }

      if (a1 == 3500)
      {
        return 62;
      }
    }

    else
    {
      if (a1 <= 1003)
      {
        if (a1 == 1001)
        {
          return 49;
        }

        if (a1 == 1002)
        {
          return 50;
        }

        return 51;
      }

      if (a1 <= 1005)
      {
        if (a1 == 1004)
        {
          return 52;
        }

        else
        {
          return 53;
        }
      }

      if (a1 == 1006)
      {
        return 54;
      }

      if (a1 == 2000)
      {
        return 55;
      }
    }

    return 89;
  }

  if (a1 > 3799)
  {
    if (a1 > 4001)
    {
      if (a1 <= 4003)
      {
        if (a1 == 4002)
        {
          return 84;
        }

        else
        {
          return 85;
        }
      }

      switch(a1)
      {
        case 4004:
          return 86;
        case 4005:
          return 87;
        case 4100:
          return 88;
      }
    }

    else
    {
      if (a1 <= 3801)
      {
        if (a1 == 3800)
        {
          return 79;
        }

        else
        {
          return 80;
        }
      }

      switch(a1)
      {
        case 3802:
          return 81;
        case 4000:
          return 82;
        case 4001:
          return 83;
      }
    }

    return 89;
  }

  switch(a1)
  {
    case 3600:
      result = 63;
      break;
    case 3601:
      result = 64;
      break;
    case 3604:
      result = 65;
      break;
    case 3605:
      result = 66;
      break;
    case 3606:
      result = 67;
      break;
    case 3607:
      result = 68;
      break;
    case 3608:
      result = 69;
      break;
    case 3609:
      result = 70;
      break;
    case 3610:
      result = 71;
      break;
    case 3611:
      result = 72;
      break;
    case 3612:
      result = 73;
      break;
    case 3700:
      result = 74;
      break;
    case 3701:
      result = 75;
      break;
    case 3702:
      result = 76;
      break;
    case 3703:
      result = 77;
      break;
    case 3704:
      result = 78;
      break;
    default:
      return 89;
  }

  return result;
}

uint64_t sub_1CF044430(uint64_t a1, id a2, int a3)
{
  v3 = a2;
  v5 = [a2 columns];
  v6 = sub_1CF04489C();
  v7 = MEMORY[0x1D38688F0](v5, &_s9SQLFieldsON_0, MEMORY[0x1E69E7CA0] + 8, v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
    v41 = a1 + 32;
    v10 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
    v39 = v8;
    while (1)
    {
      v11 = (a3 + v9);
      if (__OFADD__(a3, v9))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        sub_1CF9E8108();
        __break(1u);
LABEL_38:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      v12 = *(v41 + v9);
      if (!*(v41 + v9))
      {
        break;
      }

      if (v12 == 1)
      {
        *(&v44 + 1) = &type metadata for JobWaitCondition;
        v13 = [v3 longAtIndex_];
LABEL_8:
        *&v43 = v13;
        goto LABEL_9;
      }

      if ([v3 v10[463]])
      {
        v43 = 0u;
        v44 = 0u;
        sub_1CEFCCC44(&v43, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        goto LABEL_26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
      v24 = v3;
      if ([v3 v10[463]])
      {
        goto LABEL_38;
      }

      if (swift_dynamicCastMetatype())
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v25 = sub_1CF9E5688();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      sub_1CF9E5678();
      v28 = [v3 dataAtIndex_];
      v29 = sub_1CF9E5B88();
      v31 = v30;

      sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780);
      sub_1CF9E5668();
      if (v40)
      {
        sub_1CEFE4714(v29, v31);
      }

      sub_1CEFE4714(v29, v31);

      v32 = v46;
      *(&v44 + 1) = type metadata accessor for Continuation();
      *&v43 = v32;
      v3 = v24;
      v8 = v39;
LABEL_9:
      sub_1CEFE9EB8(&v43, v45);
      sub_1CEFD1104(v45, &v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v7;
      v15 = sub_1CF0448F0(v12);
      v17 = v7[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_35;
      }

      v21 = v16;
      if (v7[3] >= v20)
      {
        v10 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
        if (isUniquelyReferenced_nonNull_native)
        {
          v7 = v46;
          if ((v16 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v33 = v15;
          sub_1CF7D08AC();
          v10 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
          v15 = v33;
          v7 = v46;
          if ((v21 & 1) == 0)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        sub_1CF7C62E4(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_1CF0448F0(v12);
        if ((v21 & 1) != (v22 & 1))
        {
          goto LABEL_37;
        }

        v10 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
        v7 = v46;
        if ((v21 & 1) == 0)
        {
LABEL_24:
          v7[(v15 >> 6) + 8] |= 1 << v15;
          *(v7[6] + v15) = v12;
          sub_1CEFE9EB8(&v43, (v7[7] + 32 * v15));
          __swift_destroy_boxed_opaque_existential_1(v45);
          v34 = v7[2];
          v19 = __OFADD__(v34, 1);
          v35 = v34 + 1;
          if (v19)
          {
            goto LABEL_36;
          }

          v7[2] = v35;
          goto LABEL_26;
        }
      }

      v23 = (v7[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_1(v23);
      sub_1CEFE9EB8(&v43, v23);
      __swift_destroy_boxed_opaque_existential_1(v45);
LABEL_26:
      if (v9 == 0x7FFFFFFF)
      {
        goto LABEL_34;
      }

      if (v8 == ++v9)
      {
        goto LABEL_28;
      }
    }

    v13 = [v3 longAtIndex_];
    *(&v44 + 1) = MEMORY[0x1E69E6530];
    goto LABEL_8;
  }

LABEL_28:
  v36 = sub_1CF051344(v7);
  if (v40)
  {
  }

  v38 = v36;

  return v38;
}

unint64_t sub_1CF04489C()
{
  result = qword_1EDEAD430;
  if (!qword_1EDEAD430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD430);
  }

  return result;
}

unint64_t sub_1CF0448F0(char a1)
{
  v3 = *(v1 + 40);
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  v4 = sub_1CF9E8228();

  return sub_1CF0511A4(a1, v4);
}

id sub_1CF0449B8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result provider];

    if (v2)
    {
      v3 = [v2 descriptor];

      v4 = [v3 appliesChangesAtomically];
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_1CF044A50(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE648, &qword_1CF9FE488);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE650, &qword_1CF9FE490);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1CF044BA4()
{
  v1 = v0;
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 48) & 1) == 0)
  {
    v9 = *(v1 + 40);
    v53 = 0x6574726174732820;
    v54 = 0xEA00000000002064;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v11 = v10;
    result = (*(v3 + 8))(v6, v2);
    v13 = v11 * 1000000000.0;
    if (COERCE__INT64(fabs(v11 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v13 > -9.22337204e18)
    {
      if (v13 < 9.22337204e18)
      {
        v14 = sub_1CF065A84(v13, v9);
        MEMORY[0x1D3868CC0](v14);

        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        v7 = v53;
        v8 = v54;
        goto LABEL_7;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = 0;
  v8 = 0xE000000000000000;
LABEL_7:
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_1CF9E7948();

  v57 = 60;
  v58 = 0xE100000000000000;
  swift_beginAccess();
  sub_1CF053478(v1 + 56, &v53);
  v15 = v55;
  sub_1CF057204(&v53);
  if (!v15)
  {
    v25 = 0xE600000000000000;
    v24 = 0x3E77656E3C4ALL;
LABEL_11:
    MEMORY[0x1D3868CC0](v24, v25);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v26 = *(v1 + 96);
    v27 = *(v1 + 104);
    v28 = *(v1 + 112);
    if (v28 <= 1)
    {
      if (*(v1 + 112))
      {
        v33 = 548376546;
        if (v26)
        {
          v35 = *(v1 + 96);

          v33 = 548966370;
        }
      }

      else
      {
        v32 = *(v1 + 104);

        v33 = 548638690;
      }

      v30 = 0xA400000000000000;
      goto LABEL_28;
    }

    if (v28 == 2)
    {
      v34 = *(v1 + 96);

      v30 = 0xA700000000000000;
      v31 = -273246494;
    }

    else
    {
      if (v28 != 3)
      {
        if (v26 | v27)
        {
          v33 = 545627362;
        }

        else
        {
          v33 = 0x208FB8EFB49CE2;
        }

        if (v26 | v27)
        {
          v30 = 0xA400000000000000;
        }

        else
        {
          v30 = 0xA700000000000000;
        }

        goto LABEL_28;
      }

      v29 = v26;
      v30 = 0xA700000000000000;
      v31 = -272858910;
    }

    v33 = v31 | 0x208FB800000000;
LABEL_28:
    MEMORY[0x1D3868CC0](v33, v30);

    sub_1CF03D7A8(v26, v27, v28);
    MEMORY[0x1D3868CC0](v7, v8);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v36 = sub_1CF03C368();
    MEMORY[0x1D3868CC0](v36);

    MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
    v37 = sub_1CF057288(*(v1 + 136));
    MEMORY[0x1D3868CC0](v37);

    v39 = v57;
    v38 = v58;
    v53 = 0x3A646568637320;
    v54 = 0xE700000000000000;
    v40 = *(v1 + 128);
    v57 = sub_1CF057488(*(v1 + 120));
    v58 = v41;
    MEMORY[0x1D3868CC0](35, 0xE100000000000000);
    v42 = sub_1CF9E6F58();
    MEMORY[0x1D3868CC0](v42);

    MEMORY[0x1D3868CC0](v57, v58);

    v43 = *(v1 + 96);
    v44 = *(v1 + 104);
    v45 = *(v1 + 112);
    sub_1CF03C530(v43, v44, v45);
    v46 = sub_1CF0534E8(v43, v44, v45);
    v48 = v47;
    sub_1CF03D7A8(v43, v44, v45);
    MEMORY[0x1D3868CC0](v46, v48);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v49 = v53;
    v50 = v54;
    v53 = v39;
    v54 = v38;

    MEMORY[0x1D3868CC0](v49, v50);

    return v53;
  }

  v51 = 0;
  v52 = 0xE000000000000000;
  result = sub_1CF053478(v1 + 56, &v53);
  v16 = v55;
  if (v55)
  {
    v17 = v56;
    v18 = __swift_project_boxed_opaque_existential_1(&v53, v55);
    v19 = *(v16 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x1EEE9AC00](v18);
    v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22);
    v23 = *(v17 + 8);
    sub_1CF9E7FE8();
    (*(v19 + 8))(v22, v16);
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v24 = v51;
    v25 = v52;
    goto LABEL_11;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1CF04512C(uint64_t a1, void (*a2)(unint64_t))
{
  v5 = *v2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = v5[78];
    v8 = v5[77];
    v9 = v5[80];
    v10 = v5[79];
    v11 = sub_1CF0452C8(a1);

    a2(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF0451E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 0)
  {
    v3 = (a1 & 0x7FFFFFFFFFFFFFFFLL) + 56;
  }

  else
  {
    v3 = a1 + 56;
  }

  swift_beginAccess();
  return sub_1CF053478(v3, a2);
}

uint64_t sub_1CF04523C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1CF0452D0()
{
  v1 = *v0;
  swift_getWitnessTable();
  type metadata accessor for AnyDatabaseDelegateImpl();

  return sub_1CF058FF0();
}

uint64_t sub_1CF045354()
{
  v1 = *(v0 + qword_1EDEADB50);

  sub_1CF059264(&v3);

  return v3;
}

uint64_t sub_1CF0453A0()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 232))(result);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF045428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = sub_1CF2F1214(v14, v8, a1, a2);
      MEMORY[0x1D386CDC0](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_1CF0455E8(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_1CF0455E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = result;
  v26 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v30 = (v8 - 1) & v8;
LABEL_11:
    v27 = v10 | (v4 << 6);
    v13 = (*(a3 + 48) + 16 * v27);
    v14 = *v13;
    v15 = v13[1];
    v16 = (*(a3 + 56) + 16 * v27);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(a4 + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
    v21 = *v19;
    v20 = *(v19 + 8);
    v22 = sub_1CF9E6978();

    sub_1CEFE42D4(v18, v17);

    LOBYTE(v21) = v21(v22 + 32);

    sub_1CEFE4714(v18, v17);

    v8 = v30;
    if (v21)
    {
      *(v25 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        return sub_1CF0435B0(v25, a2, v26, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1CF0435B0(v25, a2, v26, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v30 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF0457B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 <= 0;
  if (a1 <= 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x63732D6C6C756620;
  }

  if (v5)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0xEA00000000006E61;
  }

  MEMORY[0x1D3868CC0](v6, v7);

  if (a2 > 0)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = 0;
  }

  if (a2 <= 0)
  {
    v9 = 0xE000000000000000;
  }

  else
  {
    v9 = 0x80000001CFA3FA90;
  }

  MEMORY[0x1D3868CC0](v8, v9);

  if (a3 <= 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0xD000000000000010;
  }

  if (a3 <= 0)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0x80000001CFA3FA70;
  }

  MEMORY[0x1D3868CC0](v10, v11);

  return 0;
}

uint64_t sub_1CF04590C()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = v0[qword_1EDEADAA8];
  v3 = objc_sync_exit(v0);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

uint64_t sub_1CF045A14()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4800, &unk_1CF9FB4A0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1CF045A44()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7B0, &qword_1CFA03108);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1CF045A74()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7B8, &unk_1CFA03110);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1CF045AA4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4800, &unk_1CF9FB4A0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1CF045AD4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C19D8, &qword_1CFA0C4E8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1CF045B04(uint64_t *a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  v1 = *a1;
  v2 = a1[2];
  type metadata accessor for FileTreeChangeAggregator();
  swift_getAssociatedTypeWitness();
  v3 = *(swift_getAssociatedConformanceWitness() + 40);
  sub_1CF9E7068();
  sub_1CF9E6708();
  swift_getTupleTypeMetadata2();
  return sub_1CF9E5EA8();
}

uint64_t sub_1CF045C00(uint64_t a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  type metadata accessor for FileTreeChangeAggregator();
  return sub_1CF9E5EA8();
}

uint64_t sub_1CF045C68@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v105 = a2;
  v3 = *(a1 + 5);
  v4 = *(a1 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v102 = *(AssociatedTypeWitness - 8);
  v5 = *(v102 + 64);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v100 = &v95.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v99.i64[0] = v95.i64 - v8;
  v9 = *(v2 + 4);
  v10 = *(v2 + 2);
  v103 = swift_getAssociatedTypeWitness();
  v101 = *(v103 - 8);
  v11 = *(v101 + 64);
  v12 = MEMORY[0x1EEE9AC00](v103);
  v98.i64[0] = v95.i64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v97.i64[0] = v95.i64 - v15;
  v16 = *(v2 - 1);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v20 = &v95.i8[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v95.i8[-v22];
  MEMORY[0x1EEE9AC00](v21);
  v106 = v16;
  v24 = *(v16 + 16);
  v26 = &v95.i8[-v25];
  v24();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 45:
      v52.i64[0] = v10;
      v52.i64[1] = v4;
      v53.i64[0] = v9;
      v53.i64[1] = v3;
      v108 = v53;
      v107 = v52;
      type metadata accessor for PersistenceTrigger.AffectedGlobalJobs();
      v54 = v26;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v56 = *(TupleTypeMetadata2 + 48);
      v57 = v105;
      *v105 = 1;
      swift_storeEnumTagMultiPayload();
      (*(*(TupleTypeMetadata2 - 8) + 56))(v57, 0, 1, TupleTypeMetadata2);
      v58 = *(v106 + 8);
      v59 = v54;
      break;
    case 28:
      (v24)(v20, v26, v2);
      v38.i64[0] = v10;
      v38.i64[1] = v4;
      v39.i64[0] = v9;
      v39.i64[1] = v3;
      v97 = v39;
      v108 = v39;
      v99 = v38;
      v107 = v38;
      type metadata accessor for TestingOperation();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v107 = vextq_s8(v99, v99, 8uLL);
        v108 = vextq_s8(v97, v97, 8uLL);
        v40 = type metadata accessor for DirectionalTestingOperation();
        v41 = swift_getEnumCaseMultiPayload();
        if (v41 == 3)
        {
          MEMORY[0x1EEE9AC00](v41);
          v96 = v26;
          strcpy(&v95 - 32, " item newName version ");
          v42 = AssociatedTypeWitness;
          v107.i64[0] = AssociatedTypeWitness;
          v103 = type metadata accessor for SnapshotItem();
          v107.i64[1] = sub_1CF9E75D8();
          v108.i64[0] = &type metadata for Filename;
          v108.i64[1] = MEMORY[0x1E69E6810];
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          v101 = *(TupleTypeMetadata + 48);
          v44 = *&v20[*(TupleTypeMetadata + 64) + 8];

          v45 = *(v102 + 32);
          v46 = v100;
          v45(v100, v20, v42);
          v108 = v97;
          v107 = v99;
          type metadata accessor for PersistenceTrigger.AffectedGlobalJobs();
          v47 = swift_getTupleTypeMetadata2();
          v48 = v105;
          v49 = v105 + *(v47 + 48);
          *v105 = 0x2000;
          v50 = *(swift_getTupleTypeMetadata2() + 48);
          *v49 = 10;
          v45(&v49[v50], v46, v42);
          swift_storeEnumTagMultiPayload();
          (*(*(v47 - 8) + 56))(v48, 0, 1, v47);
          v51 = sub_1CF9E75D8();
          (*(*(v51 - 8) + 8))(&v20[v101], v51);
LABEL_23:
          v58 = *(v106 + 8);
          v59 = v96;
          return v58(v59, v2);
        }
      }

      else
      {
        v107 = v99;
        v108 = v97;
        v40 = type metadata accessor for DirectionalTestingOperation();
        v60 = swift_getEnumCaseMultiPayload();
        if (v60 == 3)
        {
          MEMORY[0x1EEE9AC00](v60);
          v96 = v26;
          strcpy(&v95 - 32, " item newName version ");
          v61 = v103;
          v107.i64[0] = v103;
          type metadata accessor for SnapshotItem();
          v107.i64[1] = sub_1CF9E75D8();
          v108.i64[0] = &type metadata for Filename;
          v108.i64[1] = MEMORY[0x1E69E6810];
          v62 = swift_getTupleTypeMetadata();
          v100 = v2;
          AssociatedTypeWitness = *(v62 + 48);
          v63 = *&v20[*(v62 + 64) + 8];

          v64 = *(v101 + 32);
          v65 = v98.i64[0];
          v64(v98.i64[0], v20, v61);
          v108 = v97;
          v107 = v99;
          type metadata accessor for PersistenceTrigger.AffectedGlobalJobs();
          v66 = swift_getTupleTypeMetadata2();
          v67 = v105;
          v68 = v20;
          v69 = v105 + *(v66 + 48);
          *v105 = 0x2000;
          v70 = *(swift_getTupleTypeMetadata2() + 48);
          *v69 = 10;
          v64(&v69[v70], v65, v61);
          swift_storeEnumTagMultiPayload();
          (*(*(v66 - 8) + 56))(v67, 0, 1, v66);
          v71 = sub_1CF9E75D8();
          (*(*(v71 - 8) + 8))(&v68[AssociatedTypeWitness], v71);
          return (*(v106 + 8))(v96, v100);
        }
      }

      (*(*(v40 - 8) + 8))(v20, v40);
      break;
    case 14:
      (v24)(v23, v26, v2);
      v96 = v26;
      v100 = v2;
      v28 = v103;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v30 = AssociatedTypeWitness;
      v31 = swift_getAssociatedConformanceWitness();
      v107.i64[0] = v28;
      v107.i64[1] = v30;
      v108.i64[0] = AssociatedConformanceWitness;
      v108.i64[1] = v31;
      v32 = type metadata accessor for ReconciliationID();
      v33 = v23[*(swift_getTupleTypeMetadata2() + 48)];
      if (v33 <= 2)
      {
        (*(*(v32 - 8) + 8))(v23, v32);
        (*(v106 + 8))(v96, v100);
        v34.i64[0] = v10;
        v34.i64[1] = v4;
        v35.i64[0] = v9;
        v35.i64[1] = v3;
        v108 = v35;
        v107 = v34;
        type metadata accessor for PersistenceTrigger.AffectedGlobalJobs();
        v36 = swift_getTupleTypeMetadata2();
        return (*(*(v36 - 8) + 56))(v105, 1, 1, v36);
      }

      v2 = v100;
      v75 = swift_getEnumCaseMultiPayload();
      v76.i64[0] = v9;
      v76.i64[1] = v3;
      v98 = v76;
      v76.i64[0] = v10;
      v76.i64[1] = v4;
      v95 = v76;
      if (v75 == 1)
      {
        v77 = v102;
        v78 = *(v102 + 32);
        v79 = v99.i64[0];
        v80 = AssociatedTypeWitness;
        v78(v99.i64[0], v23, AssociatedTypeWitness);
        v108 = v98;
        v107 = v95;
        type metadata accessor for Job();
        sub_1CF05194C(v33);
        v108 = v98;
        v107 = v95;
        type metadata accessor for ItemJob();
        if (swift_dynamicCastMetatype())
        {
          (*(v77 + 8))(v79, v80);
LABEL_19:
          v108 = v98;
          v107 = v95;
          type metadata accessor for PersistenceTrigger.AffectedGlobalJobs();
          v85 = swift_getTupleTypeMetadata2();
          (*(*(v85 - 8) + 56))(v105, 1, 1, v85);
          goto LABEL_23;
        }

        v107 = v95;
        v108 = v98;
        type metadata accessor for PersistenceTrigger.AffectedGlobalJobs();
        v86 = swift_getTupleTypeMetadata2();
        v87 = v105;
        v88 = v105 + *(v86 + 48);
        *v105 = 262400;
        v89 = *(swift_getTupleTypeMetadata2() + 48);
        *v88 = v33;
        v78(&v88[v89], v79, v80);
        swift_storeEnumTagMultiPayload();
        v90 = *(*(v86 - 8) + 56);
        v91 = v87;
      }

      else
      {
        v81 = v101;
        v82 = *(v101 + 32);
        v83 = v97.i64[0];
        v84 = v103;
        v82(v97.i64[0], v23, v103);
        v108 = v98;
        v107 = v95;
        type metadata accessor for Job();
        sub_1CF05194C(v33);
        v108 = v98;
        v107 = v95;
        type metadata accessor for ItemJob();
        if (swift_dynamicCastMetatype())
        {
          (*(v81 + 8))(v83, v84);
          goto LABEL_19;
        }

        v107 = v95;
        v108 = v98;
        type metadata accessor for PersistenceTrigger.AffectedGlobalJobs();
        v86 = swift_getTupleTypeMetadata2();
        v92 = v105;
        v93 = v105 + *(v86 + 48);
        *v105 = 262400;
        v94 = *(swift_getTupleTypeMetadata2() + 48);
        *v93 = v33;
        v82(&v93[v94], v83, v84);
        swift_storeEnumTagMultiPayload();
        v90 = *(*(v86 - 8) + 56);
        v91 = v92;
      }

      v90(v91, 0, 1, v86);
      goto LABEL_23;
    default:
      v72.i64[0] = v10;
      v72.i64[1] = v4;
      v73.i64[0] = v9;
      v73.i64[1] = v3;
      v108 = v73;
      v107 = v72;
      type metadata accessor for PersistenceTrigger.AffectedGlobalJobs();
      v74 = swift_getTupleTypeMetadata2();
      (*(*(v74 - 8) + 56))(v105, 1, 1, v74);
      v58 = *(v106 + 8);
      v59 = v26;
      break;
  }

  return v58(v59, v2);
}

uint64_t sub_1CF046AF8(char *a1, uint64_t a2)
{
  v532 = a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v527 = type metadata accessor for SnapshotItem();
  v524 = *(v527 - 8);
  v5 = *(v524 + 64);
  MEMORY[0x1EEE9AC00](v527);
  v528 = &v507 - v6;
  v540 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1CF9E75D8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v535 = &v507 - v11;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v516 = &v507 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v515 = (&v507 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v523 = &v507 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v513 = &v507 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v522 = &v507 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v507 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v518 = &v507 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v519 = &v507 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v520 = &v507 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v507 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v517 = &v507 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v521 = &v507 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v526 = &v507 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v530 = &v507 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v531 = &v507 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v514 = &v507 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v529 = &v507 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v533 = &v507 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v54 = &v507 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52);
  v57 = &v507 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55);
  v60 = &v507 - v59;
  v537 = AssociatedTypeWitness;
  v536 = *(AssociatedTypeWitness - 8);
  v61 = *(v536 + 64);
  v62 = MEMORY[0x1EEE9AC00](v58);
  v64 = &v507 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v62);
  v509 = &v507 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v511 = &v507 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v510 = (&v507 - v70);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v534 = (&v507 - v72);
  v73 = MEMORY[0x1EEE9AC00](v71);
  v512 = &v507 - v74;
  MEMORY[0x1EEE9AC00](v73);
  v525 = &v507 - v75;
  v538 = v12;
  v76 = *(v12 + 16);
  v76(v60, v541, a2);
  v541 = v60;
  v77 = v4;
  v539 = a2;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v78 = v541;
      v79 = v539;
      v76(v35, v541, v539);
      if ((*v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_80;
      }

      v80 = *(v79 + 24);
      v81 = *(v79 + 40);
      v82 = v540;
      v544 = v540;
      v545 = v80;
      v546 = v77;
      v547 = v81;
      type metadata accessor for ItemJob();
      v83 = swift_dynamicCastClass();
      if (!v83)
      {
LABEL_80:

        goto LABEL_77;
      }

      v84 = v83;
      v544 = v82;
      v545 = v80;
      v546 = v77;
      v547 = v81;
      v85 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      v534 = v85;
      sub_1CF9E7FA8();
      v86 = *(*(v85 - 8) + 72);
      v87 = *(*(v85 - 8) + 80);
      swift_allocObject();

      v88 = sub_1CF9E6D68();
      v532 = v89;
      v533 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_1CF9FA450;
      *(v90 + 32) = sub_1CF03D760();
      v92 = v535;
      v91 = v536;
      v93 = v84 + *(*v84 + 576);
      v94 = v537;
      (*(v536 + 16))(v535, v93, v537);
      (*(v91 + 56))(v92, 0, 1, v94);
      sub_1CF059CE4(0x200000, v90, v92, v532);
      v95 = sub_1CF045898(v533);

      (*(v538 + 8))(v78, v79);
      return v95;
    case 2u:
      v236 = v517;
      v237 = v539;
      v76(v517, v541, v539);
      v238 = *(v237 + 40);
      v239 = *(v237 + 24);
      v240 = swift_getAssociatedTypeWitness();
      v241 = v540;
      v242 = v537;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v244 = swift_getAssociatedConformanceWitness();
      v544 = v242;
      v545 = v240;
      v57 = v236;
      v546 = AssociatedConformanceWitness;
      v547 = v244;
      v105 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_45;
      }

      v245 = v536;
      v246 = v534;
      (*(v536 + 32))(v534, v57, v242);
      v544 = v241;
      v545 = v239;
      v546 = v77;
      v547 = v238;
      v247 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      sub_1CF9E7FA8();
      v248 = *(*(v247 - 8) + 72);
      v249 = *(*(v247 - 8) + 80);
      swift_allocObject();
      v533 = sub_1CF9E6D68();
      v251 = v250;
      v252 = v535;
      (*(v245 + 16))(v535, v246, v242);
      (*(v245 + 56))(v252, 0, 1, v242);
      v253 = &unk_1F4BEEBD8;
      v254 = v251;
      v255 = 8;
      v256 = v252;
      goto LABEL_67;
    case 3u:
      v156 = v539;
      v76(v54, v541, v539);
      v157 = *(v156 + 40);
      v158 = *(v156 + 24);
      v159 = swift_getAssociatedTypeWitness();
      v508 = v4;
      v160 = v537;
      v161 = swift_getAssociatedConformanceWitness();
      v162 = swift_getAssociatedConformanceWitness();
      v544 = v160;
      v545 = v159;
      v546 = v161;
      v547 = v162;
      v163 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(*(v163 - 8) + 8))(v54, v163);
        goto LABEL_37;
      }

      v534 = v161;
      v350 = v158;
      v351 = v536;
      v352 = v525;
      v532 = *(v536 + 32);
      (v532)(v525, v54, v160);
      goto LABEL_65;
    case 5u:
      v225 = v531;
      v226 = v539;
      v76(v531, v541, v539);
      v227 = *(v226 + 40);
      v228 = *(v226 + 24);
      v229 = swift_getAssociatedTypeWitness();
      v230 = v537;
      v231 = swift_getAssociatedConformanceWitness();
      v232 = swift_getAssociatedConformanceWitness();
      v544 = v230;
      v545 = v229;
      v546 = v231;
      v547 = v232;
      v147 = type metadata accessor for ReconciliationID();
      v233 = *(swift_getTupleTypeMetadata2() + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v234 = *(*(v147 - 8) + 8);
        v234(v225 + v233, v147);
        v235 = v225;
        goto LABEL_55;
      }

      v366 = v536;
      (*(v536 + 32))(v534, v225, v230);
      v544 = v540;
      v545 = v228;
      v546 = v77;
      v547 = v227;
      v367 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      v533 = v233;
      v368 = v367;
      sub_1CF9E7FA8();
      v369 = *(*(v368 - 8) + 72);
      v370 = *(*(v368 - 8) + 80);
      swift_allocObject();
      v532 = sub_1CF9E6D68();
      v372 = v371;
      v373 = v534;
      v374 = v535;
      (*(v366 + 16))(v535, v534, v230);
      (*(v366 + 56))(v374, 0, 1, v230);
      sub_1CF059CE4(64, &unk_1F4BEEA98, v374, v372);
      v95 = sub_1CF045898(v532);
      (*(v366 + 8))(v373, v230);
      (*(*(v147 - 8) + 8))(&v531[v533], v147);
      goto LABEL_99;
    case 6u:
      v164 = v530;
      v165 = v539;
      v76(v530, v541, v539);
      v166 = v527;
      v167 = sub_1CF9E75D8();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v169 = v524;
      v170 = *(v524 + 48);
      if (v170(&v164[*(TupleTypeMetadata3 + 48)], 1, v166) == 1)
      {
        if (v170(v164, 1, v166) == 1)
        {
          (*(*(v167 - 8) + 8))(v164, v167);
          goto LABEL_77;
        }

        v415 = v528;
        (*(v169 + 32))(v528, v164, v166);
        v416 = *(v165 + 40);
        v533 = *(v165 + 24);
        v534 = v416;
        v544 = v540;
        v545 = v533;
        v546 = v77;
        v547 = v416;
        v417 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
        sub_1CF9E7FA8();
        v418 = *(*(v417 - 8) + 72);
        v419 = *(*(v417 - 8) + 80);
        swift_allocObject();
        v420 = sub_1CF9E6D68();
        v422 = v421;
        v423 = v535;
        v424 = v536;
        v425 = v537;
        (*(v536 + 16))(v535, v415, v537);
        (*(v424 + 56))(v423, 0, 1, v425);
        sub_1CF059CE4(96, &unk_1F4BEEAC0, v423, v422);
        v95 = sub_1CF045898(v420);
        (*(v169 + 8))(v415, v527);
      }

      else
      {
        v353 = v528;
        (*(v169 + 32))();
        v354 = *(v165 + 40);
        v533 = *(v165 + 24);
        v534 = v354;
        v544 = v540;
        v545 = v533;
        v546 = v77;
        v547 = v354;
        v355 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
        sub_1CF9E7FA8();
        v356 = *(*(v355 - 8) + 72);
        v357 = *(*(v355 - 8) + 80);
        swift_allocObject();
        v358 = sub_1CF9E6D68();
        v360 = v359;
        v361 = v536;
        v362 = v537;
        v363 = &v353[*(v166 + 36)];
        v364 = v535;
        (*(v536 + 16))(v535, v363, v537);
        (*(v361 + 56))(v364, 0, 1, v362);
        sub_1CF059CE4(8, &unk_1F4BEEAE8, v364, v360);
        v95 = sub_1CF045898(v358);
        (*(v169 + 8))(v528, v166);
        (*(*(v167 - 8) + 8))(v530, v167);
      }

      goto LABEL_99;
    case 0xBu:
      v199 = v526;
      v200 = v539;
      v76(v526, v541, v539);
      v201 = *(v200 + 40);
      v202 = *(v200 + 24);
      v203 = swift_getAssociatedTypeWitness();
      v204 = v4;
      v205 = v537;
      v206 = swift_getAssociatedConformanceWitness();
      v207 = swift_getAssociatedConformanceWitness();
      v544 = v205;
      v545 = v203;
      v546 = v206;
      v547 = v207;
      v544 = type metadata accessor for ReconciliationID();
      v545 = sub_1CF9E75D8();
      v546 = &type metadata for ContentStatus;
      v547 = &type metadata for ContentStatus;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v209 = *(TupleTypeMetadata + 48);
      v210 = v199[*(TupleTypeMetadata + 80)];
      v544 = v205;
      v545 = v203;
      v211 = v199;
      v546 = v206;
      v547 = v207;
      v212 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v365 = sub_1CF9E75D8();
        (*(*(v365 - 8) + 8))(&v211[v209], v365);
        (*(*(v212 - 8) + 8))(v211, v212);
        goto LABEL_62;
      }

      v213 = *(v212 - 8);
      if ((*(v213 + 48))(&v211[v209], 1, v212) == 1)
      {
        (*(v213 + 8))(v211, v212);
        v214 = sub_1CF9E75D8();
        (*(*(v214 - 8) + 8))(&v211[v209], v214);
LABEL_62:
        v77 = v204;
        goto LABEL_77;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v426 = *(v213 + 8);
        v426(&v211[v209], v212);
        v426(v211, v212);
        v77 = v204;
LABEL_77:
        v411 = v539;
        v412 = *(v539 + 24);
        v413 = *(v539 + 40);
        v544 = v540;
        v545 = v412;
        v546 = v77;
        v547 = v413;
        type metadata accessor for PersistenceTrigger.AffectedItemJobs();
        v95 = sub_1CF9E6DA8();
        (*(v538 + 8))(v541, v411);
        return v95;
      }

      if (v210 == 4)
      {
        v497 = v536;
        v498 = v537;
        (*(v536 + 32))(v534, &v211[v209], v537);
        v544 = v540;
        v545 = v202;
        v508 = v204;
        v546 = v204;
        v547 = v201;
        v499 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
        sub_1CF9E7FA8();
        v500 = *(*(v499 - 8) + 72);
        v501 = *(*(v499 - 8) + 80);
        swift_allocObject();
        v533 = sub_1CF9E6D68();
        v503 = v502;
        v505 = v534;
        v504 = v535;
        (*(v497 + 16))(v535, v534, v498);
        (*(v497 + 56))(v504, 0, 1, v498);
        sub_1CF059CE4(32, &unk_1F4BEEB60, v504, v503);
        v95 = sub_1CF045898(v533);
        (*(v497 + 8))(v505, v498);
      }

      else
      {
        v468 = v536;
        if (v210 == 2)
        {
          v469 = v534;
          v470 = v537;
          (*(v536 + 32))(v534, &v526[v209], v537);
          v544 = v540;
          v545 = v202;
          v508 = v204;
          v546 = v204;
          v547 = v201;
          v471 = v468;
          v492 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
          sub_1CF9E7FA8();
          v493 = *(*(v492 - 8) + 72);
          v494 = *(*(v492 - 8) + 80);
          swift_allocObject();
          v533 = sub_1CF9E6D68();
          v496 = v495;
          v477 = v535;
          (*(v471 + 16))(v535, v469, v470);
          (*(v471 + 56))(v477, 0, 1, v470);
          v478 = &unk_1F4BEEB38;
          v479 = v496;
          v480 = 32;
        }

        else
        {
          if (v210)
          {
            v506 = v526;
            (*(v536 + 8))(&v526[v209], v537);
            (*(v213 + 8))(v506, v212);
            v77 = v204;
            goto LABEL_77;
          }

          v469 = v534;
          v470 = v537;
          (*(v536 + 32))(v534, &v526[v209], v537);
          v544 = v540;
          v545 = v202;
          v508 = v204;
          v546 = v204;
          v547 = v201;
          v471 = v468;
          v472 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
          sub_1CF9E7FA8();
          v473 = *(*(v472 - 8) + 72);
          v474 = *(*(v472 - 8) + 80);
          swift_allocObject();
          v533 = sub_1CF9E6D68();
          v476 = v475;
          v477 = v535;
          (*(v471 + 16))(v535, v469, v470);
          (*(v471 + 56))(v477, 0, 1, v470);
          v478 = &unk_1F4BEEB10;
          v479 = v476;
          v480 = 64;
        }

        sub_1CF059CE4(v480, v478, v477, v479);
        v95 = sub_1CF045898(v533);
        (*(v471 + 8))(v469, v470);
      }

      (*(v213 + 8))(v526, v212);
      goto LABEL_99;
    case 0xCu:
      v156 = v539;
      v257 = (v76)(v533, v541, v539);
      v534 = &v507;
      MEMORY[0x1EEE9AC00](v257);
      strcpy(&v507 - 32, " otherID from to ");
      v157 = *(v156 + 40);
      v258 = *(v156 + 24);
      v259 = swift_getAssociatedTypeWitness();
      v508 = v4;
      v160 = v537;
      v260 = swift_getAssociatedConformanceWitness();
      v261 = swift_getAssociatedConformanceWitness();
      v544 = v160;
      v545 = v259;
      v546 = v260;
      v547 = v261;
      v544 = type metadata accessor for ReconciliationID();
      v545 = sub_1CF9E75D8();
      v546 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
      v547 = v546;
      v262 = swift_getTupleTypeMetadata();
      v263 = v533;
      v264 = *(v262 + 48);
      v544 = v160;
      v545 = v259;
      v534 = v260;
      v546 = v260;
      v547 = v261;
      v265 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v266 = sub_1CF9E75D8();
        (*(*(v266 - 8) + 8))(v263 + v264, v266);
        (*(*(v265 - 8) + 8))(v263, v265);
LABEL_37:
        v77 = v508;
        goto LABEL_77;
      }

      v350 = v258;
      v351 = v536;
      v375 = v525;
      v532 = *(v536 + 32);
      (v532)(v525, v263, v160);
      v352 = v375;
      v376 = sub_1CF9E75D8();
      (*(*(v376 - 8) + 8))(v263 + v264, v376);
LABEL_65:
      (*(v538 + 8))(v541, v156);
      v544 = v540;
      v545 = v350;
      v533 = v350;
      v546 = v508;
      v547 = v157;
      v377 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      v541 = v377;
      sub_1CF9E7FA8();
      v378 = *(v377 - 8);
      v539 = *(v378 + 72);
      v379 = *(v378 + 80);
      swift_allocObject();
      v538 = sub_1CF9E6D68();
      v381 = v380;
      v382 = v535;
      (v532)(v535, v352, v160);
      v383 = *(v351 + 56);
      v383(v382, 0, 1, v160);
      sub_1CF059CE4(32, &unk_1F4BEE9F8, v382, v381);
      (v534[3].Kind)(v160);
      v383(v382, 0, 1, v160);
      sub_1CF059CE4(128, &unk_1F4BEEA20, v382, &v381[v539]);
      v384 = v538;
      return sub_1CF045898(v384);
    case 0xEu:
      v267 = v539;
      v76(v57, v541, v539);
      v268 = *(v267 + 40);
      v269 = *(v267 + 24);
      v270 = swift_getAssociatedTypeWitness();
      v271 = v537;
      v272 = swift_getAssociatedConformanceWitness();
      v273 = swift_getAssociatedConformanceWitness();
      v544 = v271;
      v545 = v270;
      v546 = v272;
      v547 = v273;
      v105 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_45;
      }

      v274 = v57[*(swift_getTupleTypeMetadata2() + 48)];
      v275 = v536;
      (*(v536 + 32))(v534, v57, v271);
      v544 = v540;
      v545 = v269;
      v546 = v4;
      v547 = v268;
      v276 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      sub_1CF9E7FA8();
      v277 = *(*(v276 - 8) + 72);
      v278 = *(*(v276 - 8) + 80);
      swift_allocObject();
      v279 = sub_1CF9E6D68();
      v532 = v280;
      v533 = v279;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v281 = swift_allocObject();
      *(v281 + 16) = xmmword_1CF9FA450;
      *(v281 + 32) = v274;
      v283 = v534;
      v282 = v535;
      (*(v275 + 16))(v535, v534, v271);
      (*(v275 + 56))(v282, 0, 1, v271);
      sub_1CF059CE4(393472, v281, v282, v532);
      v95 = sub_1CF045898(v533);
      (*(v275 + 8))(v283, v271);
      goto LABEL_73;
    case 0xFu:
      v308 = v529;
      v267 = v539;
      v76(v529, v541, v539);
      v309 = *(v267 + 40);
      v319 = *(v267 + 24);
      v320 = swift_getAssociatedTypeWitness();
      v321 = v537;
      v322 = swift_getAssociatedConformanceWitness();
      v323 = swift_getAssociatedConformanceWitness();
      v544 = v321;
      v545 = v320;
      v546 = v322;
      v547 = v323;
      v315 = type metadata accessor for ReconciliationID();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v324 = *&v308[*(swift_getTupleTypeMetadata2() + 48)];
      if (swift_getEnumCaseMultiPayload() == 1)
      {

LABEL_50:
        (*(*(v315 - 8) + 8))(v308, v315);
        goto LABEL_77;
      }

      v543 = v324;
      if (swift_dynamicCast() && v542 == 3)
      {
        v392 = v536;
        v391 = v537;
        v393 = *(v536 + 32);
        v394 = v309;
        v533 = v309;
        v395 = v534;
        v393(v534, v529, v537);
        v544 = v540;
        v545 = v319;
        v546 = v77;
        v547 = v394;
        v396 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
        sub_1CF9E7FA8();
        v397 = *(*(v396 - 8) + 72);
        v398 = *(*(v396 - 8) + 80);
        swift_allocObject();
        v399 = sub_1CF9E6D68();
        v401 = v400;
        v402 = v535;
        (*(v392 + 16))(v535, v395, v391);
        (*(v392 + 56))(v402, 0, 1, v391);
        sub_1CF059CE4(64, &unk_1F4BEEA48, v402, v401);
        v95 = sub_1CF045898(v399);
        (*(v392 + 8))(v395, v391);

        goto LABEL_73;
      }

      v316 = v541;
      v534 = v319;

      v318 = v538;
      v317 = v529;
LABEL_85:
      v427 = v536;
      v428 = v537;
      v541 = *(v536 + 32);
      v429 = v512;
      v541(v512, v317, v537);
      (*(v318 + 8))(v316, v267);
      v544 = v540;
      v545 = v534;
      v546 = v77;
      v547 = v309;
      v430 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      sub_1CF9E7FA8();
      v431 = *(*(v430 - 8) + 72);
      v432 = *(*(v430 - 8) + 80);
      swift_allocObject();
      v433 = sub_1CF9E6D68();
      v435 = v434;
      v436 = v535;
      v541(v535, v429, v428);
      (*(v427 + 56))(v436, 0, 1, v428);
      sub_1CF059CE4(96, &unk_1F4BEEA70, v436, v435);
      v384 = v433;
      return sub_1CF045898(v384);
    case 0x10u:
      v308 = v514;
      v267 = v539;
      v76(v514, v541, v539);
      v309 = *(v267 + 40);
      v310 = *(v267 + 24);
      v311 = swift_getAssociatedTypeWitness();
      v312 = v537;
      v313 = swift_getAssociatedConformanceWitness();
      v314 = swift_getAssociatedConformanceWitness();
      v544 = v312;
      v545 = v311;
      v546 = v313;
      v547 = v314;
      v315 = type metadata accessor for ReconciliationID();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_50;
      }

      v316 = v541;
      v534 = v310;
      v317 = v308;
      v318 = v538;
      goto LABEL_85;
    case 0x14u:
      v139 = v520;
      v140 = v539;
      v76(v520, v541, v539);
      LODWORD(v533) = *v139;
      v141 = *(v140 + 40);
      v142 = *(v140 + 24);
      v143 = swift_getAssociatedTypeWitness();
      v144 = v540;
      v102 = v537;
      v145 = swift_getAssociatedConformanceWitness();
      v146 = swift_getAssociatedConformanceWitness();
      v544 = v102;
      v545 = v143;
      v546 = v145;
      v547 = v146;
      v147 = type metadata accessor for ReconciliationID();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      v148 = swift_getTupleTypeMetadata3();
      v149 = *(v148 + 48);

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_76;
      }

      v106 = v536;
      v150 = &v139[v149];
      v107 = v534;
      (*(v536 + 32))(v534, v150, v102);
      v544 = v144;
      v545 = v142;
      v546 = v77;
      v547 = v141;
      v151 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      sub_1CF9E7FA8();
      v152 = *(*(v151 - 8) + 72);
      v153 = *(*(v151 - 8) + 80);
      swift_allocObject();
      v154 = sub_1CF9E6D68();
      v531 = v155;
      v532 = v154;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_1CF9FA450;
      *(v113 + 32) = v533;
      v114 = v535;
      (*(v106 + 16))(v535, v107, v102);
      (*(v106 + 56))(v114, 0, 1, v102);
      v115 = v531;
      v116 = 2048;
      goto LABEL_12;
    case 0x16u:
      v215 = v513;
      v216 = v539;
      v76(v513, v541, v539);
      if ((*v215 & 0x8000000000000000) != 0)
      {
        v217 = *(v216 + 24);
        v218 = *(v216 + 40);
        v544 = v217;
        v545 = v540;
        v546 = v218;
        v547 = v4;
        type metadata accessor for DiskImport.DiskImportFinished();
        v414 = swift_dynamicCastClass();

        if (!v414)
        {
          goto LABEL_77;
        }

LABEL_89:
        (*(v538 + 8))(v541, v539);
        v544 = v540;
        v545 = v217;
        v546 = v4;
        v547 = v218;
        v450 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
        sub_1CF9E7FA8();
        v451 = *(*(v450 - 8) + 72);
        v452 = *(*(v450 - 8) + 80);
        swift_allocObject();
        v453 = sub_1CF9E6D68();
        v455 = v454;
        v456 = v535;
        (*(v536 + 56))(v535, 1, 1, v537);
        sub_1CF059CE4(0x400000, &unk_1F4BEED68, v456, v455);
        v384 = v453;
        return sub_1CF045898(v384);
      }

      v217 = *(v216 + 24);
      v218 = *(v216 + 40);
      v219 = v540;
      v544 = v217;
      v545 = v540;
      v546 = v218;
      v547 = v4;
      type metadata accessor for Propagation.CreateItem();
      v220 = swift_dynamicCastClass();
      if (!v220)
      {
        v544 = v219;
        v545 = v217;
        v546 = v4;
        v547 = v218;
        type metadata accessor for DiskImport.DiskImportFinished();
        v449 = swift_dynamicCastClass();

        if (!v449)
        {
          goto LABEL_77;
        }

        goto LABEL_89;
      }

      v221 = v220;
      v222 = v216;
      if (v220[112] != 3 || (v223 = *(*v220 + 664), swift_beginAccess(), swift_getAssociatedConformanceWitness(), v224 = type metadata accessor for ItemState(), (*(*(v224 - 8) + 48))(&v221[v223], 1, v224)))
      {
        v544 = v219;
        v545 = v217;
        v546 = v4;
        v547 = v218;
        type metadata accessor for PersistenceTrigger.AffectedItemJobs();
        v95 = sub_1CF9E6DA8();

        (*(v538 + 8))(v541, v222);
        return v95;
      }

      v481 = v536;
      v482 = *(v536 + 16);
      v483 = &v221[v223];
      v484 = v537;
      v482(v64, v483, v537);
      (*(v481 + 32))(v509, v64, v484);
      v544 = v540;
      v545 = v217;
      v508 = v4;
      v546 = v4;
      v547 = v218;
      v485 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      sub_1CF9E7FA8();
      v486 = *(*(v485 - 8) + 72);
      v487 = *(*(v485 - 8) + 80);
      swift_allocObject();
      v534 = sub_1CF9E6D68();
      v489 = v488;
      v490 = v535;
      v482(v535, v509, v484);
      (*(v481 + 56))(v490, 0, 1, v484);
      sub_1CF059CE4(32, &unk_1F4BEED40, v490, v489);
      v95 = sub_1CF045898(v534);

      (*(v481 + 8))(v509, v484);
LABEL_99:
      (*(v538 + 8))(v541, v539);
      return v95;
    case 0x17u:
      v178 = v516;
      v76(v516, v541, v539);
      if (*v178)
      {
        goto LABEL_77;
      }

      v117 = v539;
      v179 = *(v539 + 24);
      v180 = *(v539 + 40);
      v544 = v540;
      v545 = v179;
      v546 = v77;
      v547 = v180;
      v181 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      sub_1CF9E7FA8();
      v182 = *(*(v181 - 8) + 72);
      v183 = *(*(v181 - 8) + 80);
      swift_allocObject();
      v123 = sub_1CF9E6D68();
      v185 = v184;
      v126 = v535;
      (*(v536 + 56))(v535, 1, 1, v537);
      v127 = &unk_1F4BEED90;
      v128 = v185;
      v129 = 0x2000000;
LABEL_21:
      v186 = v126;
      goto LABEL_58;
    case 0x18u:
      v76(v26, v541, v539);
      if (*v26)
      {
        goto LABEL_77;
      }

      v117 = v539;
      v130 = *(v539 + 24);
      v534 = *(v539 + 40);
      v544 = v540;
      v545 = v130;
      v546 = v77;
      v547 = v534;
      v131 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      sub_1CF9E7FA8();
      v132 = *(*(v131 - 8) + 72);
      v133 = *(*(v131 - 8) + 80);
      swift_allocObject();
      v123 = sub_1CF9E6D68();
      v135 = v134;
      v137 = v536;
      v136 = v537;
      v138 = v535;
      (*(v536 + 16))(v535, v532, v537);
      (*(v137 + 56))(v138, 0, 1, v136);
      v127 = &unk_1F4BEECF0;
      v128 = v135;
      v129 = 0x20000;
LABEL_57:
      v186 = v138;
LABEL_58:
      sub_1CF059CE4(v129, v127, v186, v128);
      v95 = sub_1CF045898(v123);
      (*(v538 + 8))(v541, v117);
      return v95;
    case 0x1Cu:
      v57 = v519;
      v284 = v541;
      v285 = v539;
      v76(v519, v541, v539);
      v286 = *(v285 + 24);
      v287 = *(v285 + 40);
      v288 = v540;
      v544 = v540;
      v545 = v286;
      v546 = v77;
      v547 = v287;
      v105 = type metadata accessor for TestingOperation();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_45;
      }

      v544 = v288;
      v545 = v286;
      v546 = v77;
      v547 = v287;
      v105 = type metadata accessor for DirectionalTestingOperation();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 7)
      {
        v457 = v536;
        v458 = v57;
        v459 = v537;
        (*(v536 + 32))(v534, v458, v537);
        v544 = v288;
        v545 = v286;
        v546 = v77;
        v547 = v287;
        v460 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
        v533 = v460;
        sub_1CF9E7FA8();
        v461 = *(*(v460 - 8) + 72);
        v462 = *(*(v460 - 8) + 80);
        swift_allocObject();
        v532 = sub_1CF9E6D68();
        v464 = v463;
        v465 = *(v457 + 16);
        v508 = v77;
        v466 = v534;
        v467 = v535;
        v465(v535, v534, v459);
        (*(v457 + 56))(v467, 0, 1, v459);
        sub_1CF059CE4(0x2000, &unk_1F4BEECA0, v467, v464);
        v95 = sub_1CF045898(v532);
        (*(v457 + 8))(v466, v537);
      }

      else
      {
        v290 = v537;
        if (EnumCaseMultiPayload != 5)
        {
LABEL_45:
          (*(*(v105 - 8) + 8))(v57, v105);
          goto LABEL_77;
        }

        v291 = v536;
        v292 = v534;
        (*(v536 + 32))(v534, v57, v537);
        v544 = v288;
        v545 = v286;
        v546 = v77;
        v547 = v287;
        v293 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
        v533 = v293;
        sub_1CF9E7FA8();
        v294 = *(*(v293 - 8) + 72);
        v295 = *(*(v293 - 8) + 80);
        swift_allocObject();
        v532 = sub_1CF9E6D68();
        v297 = v296;
        v298 = *(v291 + 16);
        v508 = v77;
        v299 = v535;
        v298(v535, v292, v290);
        (*(v291 + 56))(v299, 0, 1, v290);
        sub_1CF059CE4(0x2000, &unk_1F4BEEC78, v299, v297);
        v95 = sub_1CF045898(v532);
        (*(v291 + 8))(v292, v290);
      }

      (*(v538 + 8))(v284, v285);
      return v95;
    case 0x1Eu:
      v300 = v518;
      v301 = v539;
      v76(v518, v541, v539);
      v302 = *(v301 + 40);
      v303 = *(v301 + 24);
      v304 = swift_getAssociatedTypeWitness();
      v305 = v540;
      v242 = v537;
      v306 = swift_getAssociatedConformanceWitness();
      v307 = swift_getAssociatedConformanceWitness();
      v544 = v242;
      v545 = v304;
      v57 = v300;
      v546 = v306;
      v547 = v307;
      v105 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_45;
      }

      v245 = v536;
      v246 = v534;
      (*(v536 + 32))(v534, v57, v242);
      v544 = v305;
      v545 = v303;
      v546 = v77;
      v547 = v302;
      v385 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      sub_1CF9E7FA8();
      v386 = *(*(v385 - 8) + 72);
      v387 = *(*(v385 - 8) + 80);
      swift_allocObject();
      v533 = sub_1CF9E6D68();
      v389 = v388;
      v390 = v535;
      (*(v245 + 16))(v535, v246, v242);
      (*(v245 + 56))(v390, 0, 1, v242);
      v253 = &unk_1F4BEECC8;
      v254 = v389;
      v255 = 0x10000;
      v256 = v390;
LABEL_67:
      sub_1CF059CE4(v255, v253, v256, v254);
      v95 = sub_1CF045898(v533);
      (*(v245 + 8))(v246, v242);
      goto LABEL_99;
    case 0x20u:
      v139 = v521;
      v334 = v539;
      v76(v521, v541, v539);
      v335 = *(v334 + 40);
      v336 = *(v334 + 24);
      v337 = swift_getAssociatedTypeWitness();
      v338 = v540;
      v339 = v537;
      v340 = swift_getAssociatedConformanceWitness();
      v341 = swift_getAssociatedConformanceWitness();
      v544 = v339;
      v545 = v337;
      v546 = v340;
      v547 = v341;
      v147 = type metadata accessor for ReconciliationID();
      v149 = *(swift_getTupleTypeMetadata2() + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v234 = *(*(v147 - 8) + 8);
        v234(&v139[v149], v147);
        v235 = v139;
LABEL_55:
        v234(v235, v147);
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v437 = v536;
          v438 = *(v536 + 32);
          v438(v534, v139, v339);
          v438(v510, &v139[v149], v339);
          v544 = v338;
          v545 = v336;
          v546 = v77;
          v547 = v335;
          v439 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
          v533 = v439;
          sub_1CF9E7FA8();
          v440 = *(v439 - 8);
          v532 = *(v440 + 72);
          v441 = *(v440 + 80);
          swift_allocObject();
          v442 = sub_1CF9E6D68();
          v444 = v443;
          v530 = *(v437 + 16);
          v531 = v442;
          v445 = v535;
          (v530)(v535, v534, v339);
          v508 = v77;
          v446 = *(v437 + 56);
          v446(v445, 0, 1, v339);
          sub_1CF059CE4(96, &unk_1F4BEEB88, v445, v444);
          v447 = v510;
          (v530)(v445, v510, v339);
          v446(v445, 0, 1, v339);
          sub_1CF059CE4(8, &unk_1F4BEEBB0, v445, &v532[v444]);
          v95 = sub_1CF045898(v531);
          v448 = *(v536 + 8);
          v448(v447, v339);
          v448(v534, v339);
          goto LABEL_99;
        }

        (*(v536 + 8))(v139, v339);
LABEL_76:
        (*(*(v147 - 8) + 8))(&v139[v149], v147);
      }

      goto LABEL_77;
    case 0x23u:
      v325 = v522;
      v267 = v539;
      v76(v522, v541, v539);
      v326 = *(v267 + 40);
      v327 = *(v267 + 24);
      v328 = swift_getAssociatedTypeWitness();
      v329 = v537;
      v330 = swift_getAssociatedConformanceWitness();
      v331 = swift_getAssociatedConformanceWitness();
      v544 = v329;
      v545 = v328;
      v332 = v325;
      v546 = v330;
      v547 = v331;
      v333 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(*(v333 - 8) + 8))(v325, v333);
        goto LABEL_77;
      }

      v403 = v536;
      v404 = v511;
      (*(v536 + 32))(v511, v332, v329);
      if (((*(v330 + 64))(v329, v330) & 1) == 0)
      {
        (*(v403 + 8))(v404, v329);
        goto LABEL_77;
      }

      v544 = v540;
      v545 = v327;
      v546 = v77;
      v547 = v326;
      v405 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      sub_1CF9E7FA8();
      v406 = *(*(v405 - 8) + 72);
      v407 = *(*(v405 - 8) + 80);
      swift_allocObject();
      v534 = sub_1CF9E6D68();
      v409 = v408;
      v410 = v535;
      (*(v403 + 16))(v535, v404, v329);
      (*(v403 + 56))(v410, 0, 1, v329);
      sub_1CF059CE4(0x80000, &unk_1F4BEED18, v410, v409);
      v95 = sub_1CF045898(v534);
      (*(v403 + 8))(v404, v329);
LABEL_73:
      (*(v538 + 8))(v541, v267);
      return v95;
    case 0x26u:
      v96 = v523;
      v97 = v539;
      v76(v523, v541, v539);
      v98 = *(v97 + 40);
      v99 = *(v97 + 24);
      v100 = swift_getAssociatedTypeWitness();
      v101 = v540;
      v102 = v537;
      v103 = swift_getAssociatedConformanceWitness();
      v104 = swift_getAssociatedConformanceWitness();
      v544 = v102;
      v545 = v100;
      v57 = v96;
      v546 = v103;
      v547 = v104;
      v105 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_45;
      }

      LODWORD(v533) = v96[*(swift_getTupleTypeMetadata2() + 48)];
      v106 = v536;
      v107 = v534;
      (*(v536 + 32))(v534, v57, v102);
      v544 = v101;
      v545 = v99;
      v546 = v77;
      v547 = v98;
      v108 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      sub_1CF9E7FA8();
      v109 = *(*(v108 - 8) + 72);
      v110 = *(*(v108 - 8) + 80);
      swift_allocObject();
      v111 = sub_1CF9E6D68();
      v531 = v112;
      v532 = v111;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_1CF9FA450;
      *(v113 + 32) = v533;
      v114 = v535;
      (*(v106 + 16))(v535, v107, v102);
      (*(v106 + 56))(v114, 0, 1, v102);
      v115 = v531;
      v116 = 0x800000;
LABEL_12:
      sub_1CF059CE4(v116, v113, v114, v115);
      v95 = sub_1CF045898(v532);
      (*(v106 + 8))(v107, v102);
      goto LABEL_99;
    case 0x27u:
      v187 = v515;
      v188 = v541;
      v189 = v539;
      v76(v515, v541, v539);
      v534 = *v187;
      v190 = *(v189 + 24);
      v191 = *(v189 + 40);
      v544 = v540;
      v545 = v190;
      v546 = v4;
      v547 = v191;
      v192 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      sub_1CF9E7FA8();
      v193 = *(*(v192 - 8) + 72);
      v194 = *(*(v192 - 8) + 80);
      swift_allocObject();
      v195 = sub_1CF9E6D68();
      v197 = v196;
      v198 = v535;
      (*(v536 + 56))(v535, 1, 1, v537);
      sub_1CF059CE4(0x1000000, v534, v198, v197);
      v95 = sub_1CF045898(v195);
      (*(v538 + 8))(v188, v189);
      return v95;
    case 0x2Eu:
      v117 = v539;
      v342 = *(v539 + 24);
      v534 = *(v539 + 40);
      v544 = v540;
      v545 = v342;
      v546 = v77;
      v547 = v534;
      v343 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      sub_1CF9E7FA8();
      v344 = *(*(v343 - 8) + 72);
      v345 = *(*(v343 - 8) + 80);
      swift_allocObject();
      v123 = sub_1CF9E6D68();
      v347 = v346;
      v349 = v536;
      v348 = v537;
      v138 = v535;
      (*(v536 + 16))(v535, v532, v537);
      (*(v349 + 56))(v138, 0, 1, v348);
      v127 = &unk_1F4BEEC00;
      v128 = v347;
      v129 = 128;
      goto LABEL_57;
    case 0x2Fu:
      v117 = v539;
      v118 = *(v539 + 24);
      v119 = *(v539 + 40);
      v544 = v540;
      v545 = v118;
      v546 = v77;
      v547 = v119;
      v120 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      sub_1CF9E7FA8();
      v121 = *(*(v120 - 8) + 72);
      v122 = *(*(v120 - 8) + 80);
      swift_allocObject();
      v123 = sub_1CF9E6D68();
      v125 = v124;
      v126 = v535;
      (*(v536 + 56))(v535, 1, 1, v537);
      v127 = &unk_1F4BEEC28;
      v128 = v125;
      v129 = 0x200000;
      goto LABEL_21;
    case 0x30u:
      v117 = v539;
      v171 = *(v539 + 24);
      v172 = *(v539 + 40);
      v544 = v540;
      v545 = v171;
      v546 = v77;
      v547 = v172;
      v173 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
      sub_1CF9E7FA8();
      v174 = *(*(v173 - 8) + 72);
      v175 = *(*(v173 - 8) + 80);
      swift_allocObject();
      v123 = sub_1CF9E6D68();
      v177 = v176;
      v126 = v535;
      (*(v536 + 56))(v535, 1, 1, v537);
      v127 = &unk_1F4BEEC50;
      v128 = v177;
      v129 = 2048;
      goto LABEL_21;
    default:
      goto LABEL_77;
  }
}

uint64_t sub_1CF04AC40()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_1CF033B88();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF04ACD0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1CF0570E4(*v1);
}

uint64_t sub_1CF04ADA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_1CF057204(v0 + 56);
  sub_1CF03D7A8(*(v0 + 96), *(v0 + 104), *(v0 + 112));
  return v0;
}

uint64_t sub_1CF04ADE8(char a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = (*(*result + 400))((a1 & 1) == 0);

    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1CF04AE60(char a1)
{
  if (a1)
  {
    v2 = *(**(v1[5] + 16) + 312);

    LOBYTE(v2) = v2(v3);

    if (v2)
    {
      v4 = 40;
      return *(v1[20] + v4) > 0;
    }
  }

  else
  {
    v5 = *(**(v1[4] + 16) + 312);

    LOBYTE(v5) = v5(v6);

    if (v5)
    {
      v4 = 32;
      return *(v1[20] + v4) > 0;
    }
  }

  return 0;
}

uint64_t sub_1CF04AF48(char a1)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;

  if (*(v1 + 24))
  {

    v4 = sub_1CF04CA2C(a1 & 1);

    a1 |= v4;
  }

  return a1 & 1;
}

uint64_t sub_1CF04AFA8@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v4 = a1;
  v80 = a3;
  v5 = *(*a1 + 88);
  v79 = *(*a1 + 80);
  v78 = v5;
  v6 = type metadata accessor for JobLockRule();
  v89 = *(v6 - 8);
  v7 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v86 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v91 = v72 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v95 = v72 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v72 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v90 = (v72 - v17);
  v76 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v72 - v20;
  v22 = *(v4 + 64);
  if (sub_1CF04B9F0(v4))
  {
    v23 = *(v4 + 80);
    if (v23)
    {
      v24 = *(v4 + 88);

      v23(v25);
      sub_1CF045404(v23);
    }
  }

  v87 = v22;
  v88 = v4;
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    v26 = *(v22 + 24);
    swift_getWitnessTable();
    v27 = nullsub_1(v26);
    v28 = v27 + 64;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v4 = v30 & *(v27 + 64);
    v31 = (v29 + 63) >> 6;
    v32 = v89 + 32;
    v84 = (v89 + 8);
    v85 = v89 + 16;

    v34 = 0;
    v74 = v28;
    v73 = v31;
    v75 = v21;
    v77 = v33;
    v72[1] = v32;
    if (v4)
    {
LABEL_8:
      v35 = v34;
    }

    else
    {
      do
      {
LABEL_9:
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_61;
        }

        if (v35 >= v31)
        {

          v69 = 0;
          goto LABEL_57;
        }

        v4 = *(v28 + 8 * v35);
        ++v34;
      }

      while (!v4);
    }

    v36 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v37 = v89;
    v38 = *(v33 + 48) + *(v89 + 72) * (v36 | (v35 << 6));
    v39 = *(v89 + 16);
    v82 = *(v89 + 72);
    v83 = v39;
    (v39)(v21, v38, v6);
    (*(v37 + 32))(v90, v21, v6);
    v40 = *(v88 + 56);

    v41 = 0;
    v42 = v40;
    do
    {
      if (v41 == sub_1CF9E6DF8())
      {
        (*v84)(v90, v6);

        v34 = v35;
        v21 = v75;
        v33 = v77;
        v28 = v74;
        v31 = v73;
        if (!v4)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      v43 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v43)
      {
        v33 = (v83)(v15, v42 + ((*(v89 + 80) + 32) & ~*(v89 + 80)), v6);
        if (__OFADD__(v41, 1))
        {
          goto LABEL_60;
        }
      }

      else
      {
        v33 = sub_1CF9E7998();
        if (v76 != 8)
        {
          goto LABEL_63;
        }

        *&v92[0] = v33;
        (v83)(v15, v92, v6);
        v33 = swift_unknownObjectRelease();
        if (__OFADD__(v41, 1))
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          MEMORY[0x1EEE9AC00](v33);
          v72[-2] = v4;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v72[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }
      }

      v44 = sub_1CF068CFC(v90, v6);
      v45 = *v84;
      (*v84)(v15, v6);
      ++v41;
      v42 += v82;
    }

    while ((v44 & 1) == 0);
    (v45)(v90, v6);

    v22 = v87;
  }

  v46 = v88;
  *(v88 + 73) = 1;
  v47 = *(v46 + 56);

  if (sub_1CF9E6DF8())
  {
    v48 = 0;
    v90 = (v89 + 16);
    v83 = (v89 + 8);
    v84 = (v89 + 32);
    v85 = v47;
    do
    {
      v49 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v49)
      {
        v4 = *(v89 + 16);
        v33 = (v4)(v95, v47 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v48, v6);
        v50 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_59;
        }
      }

      else
      {
        v33 = sub_1CF9E7998();
        if (v76 != 8)
        {
          goto LABEL_62;
        }

        *&v92[0] = v33;
        v4 = *v90;
        (*v90)(v95, v92, v6);
        v33 = swift_unknownObjectRelease();
        v50 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

      (*v84)(v91, v95, v6);
      swift_beginAccess();
      v51 = *(v22 + 24);
      swift_getWitnessTable();
      sub_1CF9E6728();
      v52 = v93;
      v53 = v94;
      swift_endAccess();
      if (v52)
      {
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      if (v52)
      {
        v55 = v52;
      }

      else
      {
        v55 = MEMORY[0x1E69E7CC0];
      }

      sub_1CF1A91AC(v88 + 16, v92);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_1CF1F7408(0, v55[2] + 1, 1, v55);
      }

      v57 = v55[2];
      v56 = v55[3];
      if (v57 >= v56 >> 1)
      {
        v55 = sub_1CF1F7408((v56 > 1), v57 + 1, 1, v55);
      }

      v55[2] = v57 + 1;
      sub_1CF054EA0(v92, &v55[5 * v57 + 4]);
      v58 = v91;
      (v4)(v86, v91, v6);
      v93 = v55;
      v94 = v54;
      v22 = v87;
      swift_beginAccess();
      sub_1CF9E6708();
      sub_1CF9E6738();
      swift_endAccess();
      (*v83)(v58, v6);
      v47 = v85;
      ++v48;
    }

    while (v50 != sub_1CF9E6DF8());
  }

  v59 = [*(v22 + 40) allObjects];
  type metadata accessor for JobLockAggregator();
  v60 = sub_1CF9E6D48();

  if (!sub_1CF9E6DF8())
  {
    goto LABEL_56;
  }

  v61 = 0;
  v62 = v81;
  v63 = v88;
  while (1)
  {
    v64 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v64 & 1) == 0)
    {
      break;
    }

    v4 = *(v60 + 8 * v61 + 32);

    v65 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_55;
    }

LABEL_48:

    v33 = objc_sync_enter(v66);
    if (v33)
    {
      goto LABEL_64;
    }

    sub_1CF528E74(v4, v63);
    if (v62)
    {

      v70 = objc_sync_exit(v4);
      MEMORY[0x1EEE9AC00](v70);
      v71 = &v72[-4];
      v72[-2] = v4;
      goto LABEL_67;
    }

    v67 = objc_sync_exit(v4);
    if (v67)
    {
      MEMORY[0x1EEE9AC00](v67);
      v71 = &v72[-4];
      v72[-2] = v4;
LABEL_67:
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v71, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    ++v61;
    if (v65 == sub_1CF9E6DF8())
    {
      goto LABEL_56;
    }
  }

  v4 = sub_1CF9E7998();
  v65 = v61 + 1;
  if (!__OFADD__(v61, 1))
  {
    goto LABEL_48;
  }

LABEL_55:
  __break(1u);
LABEL_56:

  v69 = 1;
LABEL_57:
  *v80 = v69;
  return result;
}

uint64_t sub_1CF04B9F0(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return 0;
  }

  *(a1 + 72) = 1;
  v4 = objc_sync_enter(v1);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v7 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF04BB64(a1, &v8);
  v5 = objc_sync_exit(v1);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    v7 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v8;
}

uint64_t sub_1CF04BB64@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v8 = sub_1CF04BC00(v6, v7, a1[7]);

  *a2 = v8 & 1;
  return result;
}

uint64_t sub_1CF04BC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v89 = a1;
  TupleTypeMetadata2 = a2;
  v6 = *(*v3 + 80);
  v7 = *(*v3 + 88);
  v8 = type metadata accessor for JobLockRule();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v81 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v73 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v73 - v15;
  v17 = MEMORY[0x1E69E7CD0];
  v100 = MEMORY[0x1E69E7CD0];
  result = sub_1CF9E6DF8();
  v75 = v8;
  if (!result)
  {
LABEL_61:
    LODWORD(WitnessTable) = 0;
    v57 = (v17 + 7);
    v58 = 1 << *(v17 + 32);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v60 = v59 & v17[7];
    v61 = (v58 + 63) >> 6;
    v88 = v17;
    v87 = v61;
    v62 = 0;
    if (v60)
    {
      goto LABEL_66;
    }

LABEL_67:
    while (1)
    {
      v63 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_79;
      }

      if (v63 >= v61)
      {

        return WitnessTable & 1;
      }

      v60 = v57[v63];
      ++v62;
      if (v60)
      {
        while (1)
        {
          v64 = __clz(__rbit64(v60));
          v60 &= v60 - 1;
          v65 = (v17[6] + ((v63 << 10) | (16 * v64)));
          v67 = *v65;
          v66 = v65[1];
          swift_beginAccess();
          v68 = *(v4 + 32);
          v91 = v67;
          v98 = v67;
          v99 = v66;
          sub_1CF9E6E58();
          swift_bridgeObjectRetain_n();
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          sub_1CF9E6728();

          if (v92)
          {
            v89 = v92;
            v69 = v93;
            swift_endAccess();
            v94[0] = v69;

            swift_getWitnessTable();
            v70 = v4;
            v71 = sub_1CF9E7A08();
            v94[0] = v71;
            swift_getWitnessTable();
            if (sub_1CF9E7128())
            {

              v92 = 0;
              v93 = 0;
              v72 = v91;
              v98 = v91;
              v99 = v66;
              swift_beginAccess();
              sub_1CF9E6708();

              sub_1CF9E6738();
              swift_endAccess();
              sub_1CF04BC00(v72, v66, v89);

              LODWORD(WitnessTable) = 1;
              v4 = v70;
              v17 = v88;
              v61 = v87;
              v62 = v63;
              if (!v60)
              {
                goto LABEL_67;
              }
            }

            else
            {

              v92 = v89;
              v93 = v71;
              v98 = v91;
              v99 = v66;
              swift_beginAccess();
              sub_1CF9E6708();
              sub_1CF9E6738();
              result = swift_endAccess();
              v62 = v63;
              v4 = v70;
              v17 = v88;
              v61 = v87;
              if (!v60)
              {
                goto LABEL_67;
              }
            }
          }

          else
          {
            swift_endAccess();

            v62 = v63;
            if (!v60)
            {
              goto LABEL_67;
            }
          }

LABEL_66:
          v63 = v62;
        }
      }
    }
  }

  v74 = v10;
  v19 = 0;
  v88 = (v9 + 16);
  v83 = (v9 + 32);
  v82 = (v9 + 8);
  v78 = v4;
  v77 = a3;
  v76 = v9;
  v80 = v14;
  v79 = v16;
  while (1)
  {
    v20 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v20)
    {
      v21 = *(v9 + 16);
      result = (v21)(v16, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, v8);
      v22 = __OFADD__(v19++, 1);
      if (v22)
      {
        goto LABEL_59;
      }
    }

    else
    {
      result = sub_1CF9E7998();
      if (v74 != 8)
      {
        goto LABEL_88;
      }

      v94[0] = result;
      v21 = *v88;
      (*v88)(v16, v94, v8);
      result = swift_unknownObjectRelease();
      v22 = __OFADD__(v19++, 1);
      if (v22)
      {
LABEL_59:
        __break(1u);
LABEL_60:
        v17 = v100;
        goto LABEL_61;
      }
    }

    v87 = v21;
    (*v83)(v14, v16, v8);
    swift_beginAccess();
    v23 = *(v4 + 16);
    WitnessTable = swift_getWitnessTable();
    sub_1CF9E6728();
    v24 = v92;
    if (v92)
    {
      break;
    }

    swift_endAccess();
    (*v82)(v14, v8);
LABEL_4:
    result = sub_1CF9E6DF8();
    if (v19 == result)
    {
      goto LABEL_60;
    }
  }

  v85 = v19;
  v84 = v93;
  swift_endAccess();
  v25 = TupleTypeMetadata2;

  v26 = sub_1CF04C7D8(v24, v89, v25);
  v28 = v27;

  if (v28)
  {
    v29 = v24[2];
    v26 = v29;
LABEL_14:
    if (__OFADD__(v29, v26 - v29))
    {
      goto LABEL_82;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v24;
    if (!isUniquelyReferenced_nonNull_native || v26 > v24[3] >> 1)
    {
      if (v29 <= v26)
      {
        v33 = v26;
      }

      else
      {
        v33 = v29;
      }

      v24 = sub_1CF044A50(isUniquelyReferenced_nonNull_native, v33, 1, v24);
      v98 = v24;
    }

    sub_1CF04C8D4(v26, v29, 0);
    v34 = 0;
    v91 = v24[2];
    result = (v24 + 4);
    v19 = v85;
    while (v91 != v34)
    {
      if (v34 >= v24[2])
      {
        __break(1u);
        goto LABEL_78;
      }

      v34 = (v34 + 1);
      v35 = result + 56;
      sub_1CEFCCBDC(result, v94, &qword_1EC4BE650, &qword_1CF9FE490);
      v36 = v97;
      sub_1CF056B84(v94);
      result = v35;
      if (v36 == 1)
      {
        v14 = v80;
        goto LABEL_52;
      }
    }

    v37 = v84;
    v38 = *(v84 + 16);
    if (v38)
    {
      v92 = MEMORY[0x1E69E7CC0];
      sub_1CEFE95CC(0, v38, 0);
      v39 = v92;
      v40 = v37 + 32;
      do
      {
        sub_1CF1A91AC(v40, v94);
        v41 = v95;
        v42 = v96;
        __swift_project_boxed_opaque_existential_1(v94, v95);
        v43 = (*(v42 + 16))(v41, v42);
        v45 = v44;
        __swift_destroy_boxed_opaque_existential_1(v94);
        v92 = v39;
        v47 = *(v39 + 16);
        v46 = *(v39 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1CEFE95CC((v46 > 1), v47 + 1, 1);
          v39 = v92;
        }

        *(v39 + 16) = v47 + 1;
        v48 = v39 + 16 * v47;
        *(v48 + 32) = v43;
        *(v48 + 40) = v45;
        v40 += 40;
        --v38;
      }

      while (v38);
      v4 = v78;
      v8 = v75;
      a3 = v77;
      v9 = v76;
    }

    else
    {
      v39 = MEMORY[0x1E69E7CC0];
    }

    sub_1CF04C9BC(v39);

    v14 = v80;
    v19 = v85;
LABEL_52:
    if (v91)
    {
      v87(v81, v14, v8);
      v92 = v24;
      v93 = v84;
    }

    else
    {

      v87(v81, v14, v8);
      v92 = 0;
      v93 = 0;
    }

    swift_beginAccess();
    sub_1CF9E6708();
    sub_1CF9E6738();
    swift_endAccess();
    (*v82)(v14, v8);
    v16 = v79;
    goto LABEL_4;
  }

  v29 = v26 + 1;
  if (__OFADD__(v26, 1))
  {
    goto LABEL_87;
  }

  v31 = v24 + 2;
  v30 = v24[2];
  if (v29 == v30)
  {
LABEL_12:
    v4 = v78;
    if (v29 < v26)
    {
      goto LABEL_80;
    }

    a3 = v77;
    v9 = v76;
    if (v26 < 0)
    {
      goto LABEL_81;
    }

    goto LABEL_14;
  }

  v49 = 56 * v26 + 88;
  while (v29 < v30)
  {
    sub_1CEFCCBDC(v24 + v49, v94, &qword_1EC4BE650, &qword_1CF9FE490);
    v50 = v95;
    v51 = v96;
    __swift_project_boxed_opaque_existential_1(v94, v95);
    v52 = (*(v51 + 16))(v50, v51);
    if (v52 == v89 && v53 == TupleTypeMetadata2)
    {

      result = sub_1CF056B84(v94);
    }

    else
    {
      v55 = sub_1CF9E8048();

      result = sub_1CF056B84(v94);
      if ((v55 & 1) == 0)
      {
        if (v29 != v26)
        {
          if (v26 < 0)
          {
            goto LABEL_83;
          }

          v56 = *v31;
          if (v26 >= *v31)
          {
            goto LABEL_84;
          }

          result = sub_1CEFCCBDC(&v24[7 * v26 + 4], v94, &qword_1EC4BE650, &qword_1CF9FE490);
          if (v29 >= v56)
          {
            goto LABEL_85;
          }

          sub_1CEFCCBDC(v24 + v49, &v92, &qword_1EC4BE650, &qword_1CF9FE490);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1CF7722C0(v24);
          }

          result = sub_1CF52BDB0(&v92, &v24[7 * v26 + 4]);
          if (v29 >= v24[2])
          {
            goto LABEL_86;
          }

          result = sub_1CF52BDB0(v94, v24 + v49);
        }

        ++v26;
      }
    }

    ++v29;
    v31 = v24 + 2;
    v30 = v24[2];
    v49 += 56;
    if (v29 == v30)
    {
      goto LABEL_12;
    }
  }

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
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_1CF04C7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 32); ; i += 7)
  {
    v8 = i[3];
    v9 = i[4];
    __swift_project_boxed_opaque_existential_1(i, v8);
    if ((*(v9 + 16))(v8, v9) == a2 && v10 == a3)
    {
      break;
    }

    v12 = sub_1CF9E8048();

    if (v12)
    {
      return v6;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_1CF04C8D4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 56 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE650, &qword_1CF9FE490);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 56 * a3;
  v13 = (v7 + 32 + 56 * a2);
  v14 = 56 * v12;
  if (result != v13 || result >= v13 + v14)
  {
    result = memmove(result, v13, v14);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v16;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF04C9BC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1CF6E9AF0(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1CF04CA2C(char a1)
{
  v3 = *(v1 + 64);
  v4 = objc_sync_enter(v3);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v8 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v7, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF04AFA8(v1, a1 & 1, &v9);
  v5 = objc_sync_exit(v3);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    v8 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v7, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v9;
}

char *sub_1CF04CB8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE018, &unk_1CFA06450);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1CF04CC80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v45 - v6;
  v8 = sub_1CF9E5D98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SyncState();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF04ED74(v0, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v27 = *v16;
        v26 = *(v16 + 1);
        v48[0] = 0;
        v48[1] = 0xE000000000000000;
        sub_1CF9E7948();

        v48[0] = 0xD000000000000012;
        v48[1] = 0x80000001CFA60620;
        v28 = sub_1CF04D35C(v27, v26);
        MEMORY[0x1D3868CC0](v28);

        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        v29 = v48[0];

        return v29;
      }

      v37 = *v16;
      v48[0] = 0;
      v48[1] = 0xE000000000000000;
      sub_1CF9E7948();

      strcpy(v48, "domainVersion(");
      HIBYTE(v48[1]) = -18;
      if (v37)
      {
        v38 = [v37 description];
        v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v41 = v40;
      }

      else
      {
        v39 = 0x3E6C696E3CLL;
        v41 = 0xE500000000000000;
      }

      MEMORY[0x1D3868CC0](v39, v41);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      return v48[0];
    }

    if (EnumCaseMultiPayload == 6)
    {
      v30 = *v16;
      v48[0] = 0;
      v48[1] = 0xE000000000000000;
      sub_1CF9E7948();

      strcpy(v48, "featureFlags(");
      HIWORD(v48[1]) = -4864;
      v19 = sub_1CF7F48D8(v30);
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        v18 = *v16;
        v48[0] = 0;
        v48[1] = 0xE000000000000000;
        sub_1CF9E7948();

        v48[0] = 0xD000000000000010;
        v48[1] = 0x80000001CFA60600;
        if (v18)
        {
          v19 = 0xD000000000000019;
        }

        else
        {
          v19 = 0x676E696E6E7572;
        }

        if (v18)
        {
          v20 = 0x80000001CFA40CB0;
        }

        else
        {
          v20 = 0xE700000000000000;
        }

        goto LABEL_29;
      }

      v36 = *v16;
      v48[0] = 0;
      v48[1] = 0xE000000000000000;
      sub_1CF9E7948();

      v48[0] = 0xD000000000000010;
      v48[1] = 0x80000001CFA605E0;
      v46 = v36;
      v19 = sub_1CF9E7F98();
    }

LABEL_30:
    MEMORY[0x1D3868CC0](v19, v31);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v48[0];
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v9 + 32))(v12, v16, v8);
      strcpy(v48, "dbUUID(");
      v48[1] = 0xE700000000000000;
      sub_1CF1968FC();
      v21 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v21);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v22 = v48[0];
      (*(v9 + 8))(v12, v8);
      return v22;
    }

    v32 = *v16;
    v48[0] = 0;
    v48[1] = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA60660);
    v46 = 114;
    v47 = 0xE100000000000000;
    v45[1] = v32;
    v33 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v33);

    v19 = v46;
    v20 = v47;
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v34 = *v16;
    v35 = v16[8];
    v48[0] = 0;
    v48[1] = 0xE000000000000000;
    sub_1CF9E7948();

    v48[0] = 0xD000000000000010;
    v48[1] = 0x80000001CFA60640;
    if (v35)
    {
      v19 = 0x3E6C696E3CLL;
      v20 = 0xE500000000000000;
    }

    else
    {
      v46 = v34;
      sub_1CEFFD0A8();
      v19 = sub_1CF9E7718();
      v20 = v44;
    }

LABEL_29:
    v31 = v20;
    goto LABEL_30;
  }

  sub_1CF015638(v16, v7);
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  sub_1CF9E7948();

  strcpy(v48, "fsStreamUUID(");
  HIWORD(v48[1]) = -4864;
  sub_1CF0160C0(v7, v4);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    v24 = 0x3E6C696E3CLL;
    sub_1CF0156A8(v4);
    v25 = 0xE500000000000000;
  }

  else
  {
    v24 = MEMORY[0x1D3867FB0]();
    v25 = v42;
    (*(v9 + 8))(v4, v8);
  }

  MEMORY[0x1D3868CC0](v24, v25);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v43 = v48[0];
  sub_1CF0156A8(v7);
  return v43;
}

uint64_t sub_1CF04D35C(uint64_t a1, uint64_t a2)
{
  v4 = 0x3E6C696E3CLL;
  sub_1CF9E7948();

  if (a1)
  {
    v5 = NSFileProviderPage.description.getter();
    v7 = v6;
  }

  else
  {
    v7 = 0xE500000000000000;
    v5 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1D3868CC0](v5, v7);

  MEMORY[0x1D3868CC0](0x3A726F68636E6120, 0xE800000000000000);
  if (a2)
  {
    v8 = sub_1CF9E5B88();
    v10 = v9;
    v4 = FPItemVersionData.description.getter();
    v12 = v11;
    sub_1CEFE4714(v8, v10);
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v4, v12);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0x3A656761703CLL;
}

uint64_t FPItemVersionData.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  FPItemVersionData.isZero.getter();
  if ((v3 & 1) == 0)
  {
    return sub_1CF04D8A8(v1, v2);
  }

  v4 = [objc_opt_self() beforeFirstSyncComponent];
  v5 = sub_1CF9E5B88();
  v7 = v6;

  v8 = v7;
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v9)
    {
      sub_1CEFE4714(v5, v7);
      result = BYTE6(v7);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v9 != 2)
  {
    sub_1CEFE4714(v5, v7);
    result = 0;
    goto LABEL_13;
  }

  v12 = *(v5 + 16);
  v11 = *(v5 + 24);
  sub_1CEFE4714(v5, v8);
  result = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_10:
    result = sub_1CEFE4714(v5, v8);
    if (__OFSUB__(HIDWORD(v5), v5))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    result = HIDWORD(v5) - v5;
  }

LABEL_13:
  v13 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v15 = *(v1 + 16);
      v14 = *(v1 + 24);
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    if (v13)
    {
      v14 = v1 >> 32;
    }

    else
    {
      v14 = BYTE6(v2);
    }

    if (v13)
    {
      v15 = v1;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v14 < result || v14 < v15)
  {
    __break(1u);
    goto LABEL_30;
  }

  v17 = sub_1CF9E5B18();
  v19 = v18;
  v20 = sub_1CF04D8A8(v17, v18);
  v22 = v21;
  sub_1CEFE4714(v17, v19);
  MEMORY[0x1D3868CC0](v20, v22);

  return 0x2F6F72657ALL;
}

void FPItemVersionData.isZero.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(v2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    v4 = 0;
    goto LABEL_11;
  }

  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v1), v1))
    {
      __break(1u);
      goto LABEL_37;
    }

    v4 = HIDWORD(v1) - v1;
  }

LABEL_11:
  v7 = objc_opt_self();
  v8 = [v7 beforeFirstSyncComponent];
  v9 = sub_1CF9E5B88();
  v11 = v10;

  v12 = v11;
  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v13 != 2)
    {
      sub_1CEFE4714(v9, v11);
      if (v4 < 0)
      {
        return;
      }

LABEL_23:
      v16 = [v7 beforeFirstSyncComponent];
      v17 = sub_1CF9E5B88();
      v19 = v18;

      v20 = v19;
      v21 = v19 >> 62;
      if ((v19 >> 62) > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_34;
        }

        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        sub_1CEFE4714(v17, v20);
        v20 = v22 - v23;
        if (!__OFSUB__(v22, v23))
        {
LABEL_32:
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          __break(1u);
LABEL_34:
          sub_1CEFE4714(v17, v20);
          goto LABEL_35;
        }

        __break(1u);
      }

      else if (!v21)
      {
        sub_1CEFE4714(v17, v19);
LABEL_35:
        v24 = sub_1CF9E5B18();
        v26 = v25;
        v27 = [v7 beforeFirstSyncComponent];
        v28 = sub_1CF9E5B88();
        v30 = v29;

        sub_1CF328660(v24, v26, v28, v30);
        sub_1CEFE4714(v28, v30);
        sub_1CEFE4714(v24, v26);
        return;
      }

      sub_1CEFE4714(v17, v20);
      if (!__OFSUB__(HIDWORD(v17), v17))
      {
        v20 = HIDWORD(v17) - v17;
        goto LABEL_32;
      }

      goto LABEL_39;
    }

    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    sub_1CEFE4714(v9, v12);
    if (!__OFSUB__(v14, v15))
    {
      if (v4 < v14 - v15)
      {
        return;
      }

      goto LABEL_23;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v13)
  {
    sub_1CEFE4714(v9, v11);
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      if (v4 >= HIDWORD(v9) - v9)
      {
        goto LABEL_23;
      }

      return;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  sub_1CEFE4714(v9, v11);
  if (v4 >= BYTE6(v11))
  {
    goto LABEL_23;
  }
}

uint64_t sub_1CF04D8A8(uint64_t a1, unint64_t a2)
{
  v5 = sub_1CF9E5468();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6938();
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = *v2;
  v13 = v2[1];
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_11;
    }

    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    v18 = __OFSUB__(v16, v17);
    v19 = v16 - v17;
    if (!v18)
    {
      if (v19 > 64)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (!v15)
  {
    if (BYTE6(a2) > 0x40uLL)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (HIDWORD(a1) - a1 > 64)
  {
LABEL_15:
    if (v15 <= 1)
    {
      if (!v15)
      {
        if (BYTE6(a2) <= 0xAuLL)
        {
          return sub_1CF9E5B58();
        }

        goto LABEL_22;
      }

      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        if (HIDWORD(a1) - a1 <= 10)
        {
          return sub_1CF9E5B58();
        }

LABEL_22:
        v42 = 0x626F6C627BLL;
        v43 = 0xE500000000000000;
        v32 = v13 >> 62;
        if ((v13 >> 62) > 1)
        {
          if (v32 != 2)
          {
            v33 = 0;
            goto LABEL_35;
          }

          v35 = *(v14 + 16);
          v34 = *(v14 + 24);
          v18 = __OFSUB__(v34, v35);
          v33 = v34 - v35;
          if (!v18)
          {
            goto LABEL_35;
          }

          __break(1u);
        }

        else if (!v32)
        {
          v33 = BYTE6(v13);
LABEL_35:
          v41 = v33;
          v36 = sub_1CF9E7F98();
          MEMORY[0x1D3868CC0](v36);

          MEMORY[0x1D3868CC0](125, 0xE100000000000000);
          return v42;
        }

        LODWORD(v33) = HIDWORD(v14) - v14;
        if (!__OFSUB__(HIDWORD(v14), v14))
        {
          v33 = v33;
          goto LABEL_35;
        }

LABEL_41:
        __break(1u);
        return result;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v15 != 2)
    {
      return sub_1CF9E5B58();
    }

    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    v18 = __OFSUB__(v29, v30);
    v31 = v29 - v30;
    if (!v18)
    {
      if (v31 > 10)
      {
        goto LABEL_22;
      }

      return sub_1CF9E5B58();
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_11:
  sub_1CF9E6918();
  result = sub_1CF9E68D8();
  if (!v20)
  {
    goto LABEL_15;
  }

  v38 = v13;
  v39 = v14;
  v42 = result;
  v43 = v20;
  v40 = result;
  v21 = v20;
  sub_1CF9E5448();
  sub_1CEFE4E68();
  v22 = sub_1CF9E7658();
  v37[0] = v23;
  v37[1] = v22;
  v25 = v24;
  v26 = *(v6 + 8);
  v26(v9, v5);
  if ((v25 & 1) == 0 || (v42 = v40, v43 = v21, sub_1CF9E5458(), sub_1CF9E7658(), v28 = v27, v26(v9, v5), result = v40, (v28 & 1) == 0))
  {

    v13 = v38;
    v14 = v39;
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1CF04DC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF04DC74()
{
  v1 = type metadata accessor for SyncState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF04ED74(v0, v4);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        sub_1CF04EDD8(v4);
        return 2;
      }

      else
      {
        return 3;
      }
    }

    else if (result)
    {
      return 1;
    }

    else
    {
      sub_1CF04EDD8(v4);
      return 0;
    }
  }

  else if (result <= 5)
  {
    if (result == 4)
    {
      sub_1CF04EDD8(v4);
      return 4;
    }

    else
    {
      sub_1CF04EDD8(v4);
      return 5;
    }
  }

  else if (result != 6 && result != 7)
  {
    return 8;
  }

  return result;
}

uint64_t sub_1CF04DD90(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v39 - v9;
  v11 = sub_1CF9E5D98();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SyncState();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CF04ED74(v2, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (v19[1])
        {
          v30 = 0;
        }

        else
        {
          v37 = *v19;
          v30 = sub_1CF9E8268();
        }

        v31 = [a1 bindObjectParameter_];
        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      sub_1CF015638(v19, v10);
      sub_1CF0160C0(v10, v7);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {
        sub_1CF0156A8(v7);
        v25 = 0;
      }

      else
      {
        v39[0] = sub_1CF9E5D18();
        v39[1] = v35;
        (*(v12 + 8))(v7, v11);
        v25 = sub_1CF9E8028();
        sub_1CF342B1C(v39);
      }

      v36 = [a1 bindObjectParameter_];
      swift_unknownObjectRelease();
      v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      sub_1CF0156A8(v10);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v21 = [a1 bindUnsignedLongParameter_];
LABEL_17:
        v31 = v21;
LABEL_18:
        v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

        return v24;
      }

      (*(v12 + 32))(v15, v19, v11);
      sub_1CF9E5D18();
      v22 = sub_1CF9E6888();

      v23 = [a1 bindStringParameter_];

      v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      (*(v12 + 8))(v15, v11);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = [a1 bindLongParameter_];
      }

      else
      {
        v21 = [a1 bindLongParameter_];
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v26 = *v19;
      v27 = v19[1];
      v28 = v27;
      v29 = v26;
      v24 = sub_1CF04E238(v26, v27);
    }

    else
    {
      v33 = *v19;
      if (*v19)
      {
        v34 = [*v19 version];
      }

      else
      {
        v34 = 0;
      }

      v38 = [a1 bindLongParameter_];
      v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    }
  }

  return v24;
}

uint64_t sub_1CF04E238(void *a1, void *a2)
{
  v15[4] = a1;
  v15[5] = a2;
  if (a1 == 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v15[2] = 0;
  }

  else
  {
    v4 = &type metadata for WorkingSetSyncAnchor;
    v2 = a1;
    v3 = a2;
  }

  v15[0] = v2;
  v15[1] = v3;
  v15[3] = v4;
  sub_1CF04E410(a1, a2);
  v5 = sub_1CEFF8EA0(v15);
  v7 = v6;
  sub_1CEFCCC44(v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v7)
  {
    v8 = sub_1CF9E56C8();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE578, &qword_1CF9FDDE0);
    sub_1CF04EE34(&qword_1EDEA5AA0, &qword_1EC4BE578, &qword_1CF9FDDE0, sub_1CF1E1670);
    v11 = sub_1CF9E56A8();
    v13 = v12;
    v5 = sub_1CF04E5D8(v11, v12);

    sub_1CEFE4714(v11, v13);
  }

  return v5;
}

id sub_1CF04E410(id result, void *a2)
{
  if (result != 1)
  {
    v4 = result;
    v3 = a2;

    return v4;
  }

  return result;
}

uint64_t sub_1CF04E454(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1CF04E4B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1CF04E530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF04E5A8()
{
  if (*v0)
  {
    result = 0x726F68636E61;
  }

  else
  {
    result = 1701273968;
  }

  *v0;
  return result;
}

uint64_t sub_1CF04E5D8(uint64_t a1, unint64_t a2)
{
  v15[4] = a1;
  v15[5] = a2;
  if (a2 >> 60 == 15)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v15[2] = 0;
  }

  else
  {
    v4 = MEMORY[0x1E6969080];
    v2 = a1;
    v3 = a2;
  }

  v15[0] = v2;
  v15[1] = v3;
  v15[3] = v4;
  sub_1CEFF05F4(a1, a2);
  v5 = sub_1CEFF8EA0(v15);
  v7 = v6;
  sub_1CEFCCC44(v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v7)
  {
    v8 = sub_1CF9E56C8();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4A0, &unk_1CFA03A10);
    sub_1CF04EE34(&qword_1EC4BE500, &qword_1EC4BE4A0, &unk_1CFA03A10, sub_1CF190A74);
    v11 = sub_1CF9E56A8();
    v13 = v12;
    v5 = sub_1CF04E5D8();

    sub_1CEFE4714(v11, v13);
  }

  return v5;
}

uint64_t sub_1CF04E7B4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();

  v3 = *(v1 + 616);
  v4 = *(v1 + 632);
  type metadata accessor for FSOrFPJob();
  sub_1CF9E6708();
  sub_1CF9E6738();
  return swift_endAccess();
}

void sub_1CF04E924(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 2;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 2);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -2)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1CF04EAEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E75D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - v8;
  (*(v5 + 16))(&v15 - v8, a1, v4, v7);
  v10 = *(a2 - 8);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v5 + 8))(v9, v4);
    v15 = 0u;
    v16 = 0u;
  }

  else
  {
    *(&v16 + 1) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0(&v15);
    sub_1CF9E6C28();
    (*(v10 + 8))(v9, a2);
  }

  v11 = sub_1CEFF8EA0(&v15);
  v13 = v12;
  sub_1CEFCCC44(&v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v13)
  {
    return v11;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for FPDiagnosticsSamplingResult.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t sub_1CF04ED74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF04EDD8(uint64_t a1)
{
  v2 = type metadata accessor for SyncState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF04EE34(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF04EEB0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF690, &unk_1CFA023B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF04F0B8();
  sub_1CF9E82A8();
  v16 = a2;
  v15 = 0;
  type metadata accessor for NSFileProviderPage(0);
  sub_1CF04E530(&qword_1EDEA3628, type metadata accessor for NSFileProviderPage);
  sub_1CF9E7E68();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    type metadata accessor for NSFileProviderSyncAnchor(0);
    sub_1CF04E530(&unk_1EDEA3538, type metadata accessor for NSFileProviderSyncAnchor);
    sub_1CF9E7E68();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1CF04F0B8()
{
  result = qword_1EDEA5AC8;
  if (!qword_1EDEA5AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5AC8);
  }

  return result;
}

uint64_t sub_1CF04F13C()
{
  v1 = *v0;
  v2 = sub_1CF9E5B88();
  v4 = v3;
  sub_1CF9E5BD8();
  return sub_1CEFE4714(v2, v4);
}

void *sub_1CF04F1A0()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v7 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = *&v0[qword_1EDEADB30];
  v3 = v2;
  v4 = objc_sync_exit(v0);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v7 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

uint64_t sub_1CF04F294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1CF9E6DF8())
  {
    sub_1CF9E7BF8();
    v13 = sub_1CF9E7BE8();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1CF9E6DF8();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1CF9E6DC8())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1CF9E7998();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1CF981B68(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1CF04F598(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 616);
  v5 = *(*v1 + 624);
  v6 = *(*v1 + 632);
  v7 = *(*v1 + 640);
  sub_1CF0451E0(a1, v17);
  if (!v18)
  {
    return sub_1CEFCCC44(v17, &unk_1EC4C1BE0, &unk_1CF9FD400);
  }

  v8 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v9 = *(v8 + 8);
  sub_1CF9E7F98();
  __swift_destroy_boxed_opaque_existential_1(v17);
  result = objc_sync_enter(v2);
  if (result)
  {
    goto LABEL_10;
  }

  sub_1CF04E7B4(v2);
  v11 = objc_sync_exit(v2);
  if (v11)
  {
    MEMORY[0x1EEE9AC00](v11);
    v16 = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v15, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  result = sub_1CF0452A4(a1);
  if ((result & 0x8000) != 0)
  {
    v12 = *&v2[qword_1EDEADA98];
    v13 = __OFSUB__(v12, 1);
    v14 = v12 - 1;
    if (!v13)
    {
      *&v2[qword_1EDEADA98] = v14;
      return result;
    }

    __break(1u);
LABEL_10:
    MEMORY[0x1EEE9AC00](result);
    v16 = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v15, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  return result;
}

uint64_t sub_1CF04F804(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1CF04F854(uint64_t a1)
{
  if (a1 >= 3600000000000)
  {
    v9 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](104, 0xE100000000000000);
    v5 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v5);

    v3 = 7235949;
    v4 = 0xE300000000000000;
  }

  else if (a1 >= 60000000000)
  {
    v9 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](7235949, 0xE300000000000000);
    v6 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v6);

    v3 = 115;
    v4 = 0xE100000000000000;
  }

  else
  {
    v1 = a1 / 1000000 % 1000;
    if (a1 < 1000000000)
    {
      v9 = sub_1CF9E7F98();
      if (v1 >= 1)
      {
        MEMORY[0x1D3868CC0](29549, 0xE200000000000000);
        v7 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v7);
      }

      v3 = 7583170;
      v4 = 0xA300000000000000;
    }

    else
    {
      v9 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](115, 0xE100000000000000);
      v2 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v2);

      v3 = 29549;
      v4 = 0xE200000000000000;
    }
  }

  MEMORY[0x1D3868CC0](v3, v4);
  return v9;
}

uint64_t sub_1CF04FB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = a2;
  v31 = a3;
  v34 = a2;
  v35 = a3;
  v28 = swift_getAssociatedConformanceWitness();
  v29 = AssociatedConformanceWitness;
  v36 = AssociatedConformanceWitness;
  v37 = v28;
  v6 = type metadata accessor for ThrottlingKey();
  v7 = sub_1CF9E75D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  sub_1CF04FF38(v33, v11);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    return sub_1CF9E6DA8();
  }

  else
  {
    (*(v12 + 32))(v18, v11, v6);
    v20 = *(v12 + 16);
    v21 = v32;
    v20(v32, v18, v6);
    v34 = v30;
    v35 = v31;
    v36 = v29;
    v37 = v28;
    v22 = type metadata accessor for ReconciliationID();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(*(v22 - 8) + 8))(v21, v22);
      v23 = sub_1CF9E6DA8();
      (*(v12 + 8))(v18, v6);
    }

    else
    {
      sub_1CF9E7FA8();
      v24 = *(v12 + 72);
      v25 = *(v12 + 80);
      swift_allocObject();
      v26 = sub_1CF9E6D68();
      v20(v27, v18, v6);
      v23 = sub_1CF045898(v26);
      (*(v12 + 8))(v18, v6);
      (*(*(v22 - 8) + 8))(v21, v22);
    }

    return v23;
  }
}