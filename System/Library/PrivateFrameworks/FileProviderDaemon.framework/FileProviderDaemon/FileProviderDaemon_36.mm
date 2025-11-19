uint64_t sub_1CF3E3210()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000061, 0x80000001CFA46190);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  return 0;
}

uint64_t sub_1CF3E32A8(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(a1 + 32);
  (*(**(v7 + 16) + 96))(&v9);
  result = sub_1CF3F9764(v9, v10, a1, a2, a3);
  if (!v3)
  {
    (*(**(v7 + 16) + 104))(&v9, result);
    return sub_1CF3F9764(v9, v10, a1, a2, a3);
  }

  return result;
}

uint64_t sub_1CF3E3388(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1 < 0)
  {
    v4 = (a1 & 0x7FFFFFFFFFFFFFFFLL) + 56;
  }

  else
  {
    v4 = a1 + 56;
  }

  swift_beginAccess();
  sub_1CEFCCBDC(v4, v19, &unk_1EC4C1BE0, &unk_1CF9FD400);
  if (!v20)
  {
    sub_1CEFCCC44(v19, &unk_1EC4C1BE0, &unk_1CF9FD400);

    return v3;
  }

  v5 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v6 = *(v5 + 8);
  v7 = sub_1CF9E7F98();
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_1(v19);
  v10 = objc_sync_enter(v2);
  if (v10)
  {
    MEMORY[0x1EEE9AC00](v10);
    v18 = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v17, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  swift_beginAccess();
  v11 = v2[24];
  if (!*(v11 + 16))
  {
    goto LABEL_11;
  }

  v12 = v2[24];

  v13 = sub_1CEFE4328(v7, v9);
  if ((v14 & 1) == 0)
  {

LABEL_11:

    goto LABEL_12;
  }

  v3 = *(*(v11 + 56) + 8 * v13);

LABEL_12:
  v15 = objc_sync_exit(v2);
  if (v15)
  {
    MEMORY[0x1EEE9AC00](v15);
    v18 = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v17, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v3;
}

uint64_t sub_1CF3E3598(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E6118();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  sub_1CF407FF8(0, &v31 - v13);
  swift_beginAccess();
  v15 = sub_1CF1CE9E8(v14);
  sub_1CEFCCC44(v14, &unk_1EC4BF650, &unk_1CF9FCB40);
  result = swift_endAccess();
  if (v15)
  {
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFCCBDC(a1, v12, &unk_1EC4BF650, &unk_1CF9FCB40);
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E7298();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = v4;
      v21 = v20;
      v31 = swift_slowAlloc();
      v34[0] = v31;
      *v21 = 136315138;
      sub_1CEFCCBDC(v12, v14, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CEFCCC44(v12, &unk_1EC4BF650, &unk_1CF9FCB40);
      v22 = sub_1CF46B374();
      v24 = v23;
      sub_1CEFCCC44(v14, &unk_1EC4BF650, &unk_1CF9FCB40);
      v25 = sub_1CEFD0DF0(v22, v24, v34);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "unblocking waiters on %s", v21, 0xCu);
      v26 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1D386CDC0](v26, -1, -1);
      MEMORY[0x1D386CDC0](v21, -1, -1);

      (*(v33 + 8))(v7, v32);
    }

    else
    {
      sub_1CEFCCC44(v12, &unk_1EC4BF650, &unk_1CF9FCB40);

      (*(v33 + 8))(v7, v4);
    }

    v27 = *(v15 + 16);
    if (v27)
    {
      v28 = (v15 + 40);
      do
      {
        v30 = *(v28 - 1);
        v29 = *v28;
        v34[0] = a2;

        v30(v34);

        v28 += 2;
        --v27;
      }

      while (v27);
    }
  }

  return result;
}

void sub_1CF3E3914()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = fpfs_current_log();
  v4 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v39 = v5;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v6 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v6);

  sub_1CF9E6978();

  v7 = __fp_log_fork();

  v46 = v7;
  v47 = 0;
  v30 = v3;
  v31 = &v46;
  v32 = v2;
  v33 = "invalidateSource()";
  v34 = 18;
  v35 = 2;
  v36 = sub_1CF47FB8C;
  v37 = v1;
  v45 = 1;
  v44 = 0;
  v8 = swift_allocObject();
  v8[2] = &v45;
  v8[3] = sub_1CF2B1698;
  v8[4] = &v29;
  v8[5] = &v44;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF2B16B0;
  *(v9 + 24) = v8;
  v42 = sub_1CEFFD054;
  v43 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1CEFFD02C;
  v41 = &block_descriptor_21_0;
  v10 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v2, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v44)
  {
LABEL_12:
    swift_willThrow();

    v23 = fpfs_adopt_log();
    __break(1u);
    goto LABEL_13;
  }

  if (v45)
  {
    goto LABEL_10;
  }

  v11 = fpfs_adopt_log();

  v12 = fpfs_current_log();
  v13 = fpfs_adopt_log();
  v46 = 0;
  v47 = 1;
  aBlock = sub_1CF9E73C8();
  v39 = v14;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v15 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v15);

  sub_1CF9E6978();

  v16 = __fp_log_fork();

  v46 = v16;
  v47 = 0;
  MEMORY[0x1EEE9AC00](v17);
  v25[2] = v12;
  v25[3] = &v46;
  v25[4] = v2;
  v25[5] = "invalidateSource()";
  v25[6] = 18;
  v26 = 2;
  v27 = nullsub_1;
  v28 = 0;
  v45 = 1;
  v44 = 0;
  v18 = swift_allocObject();
  v18[2] = &v45;
  v18[3] = sub_1CF2BA13C;
  v18[4] = v25;
  v18[5] = &v44;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1CF2BA170;
  *(v19 + 24) = v18;
  v42 = sub_1CF1C0B54;
  v43 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1CEFFD02C;
  v41 = &block_descriptor_33;
  v20 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v2, v20);
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v44)
  {
    if ((v45 & 1) == 0)
    {

      v22 = fpfs_adopt_log();

      return;
    }

    goto LABEL_11;
  }

LABEL_13:
  swift_willThrow();

  v24 = fpfs_adopt_log();
  __break(1u);
}

uint64_t sub_1CF3E3E48(uint64_t result, char a2)
{
  v5 = result;
  LOBYTE(v6) = a2;
  v4 = qword_1EDEBBCE0;
  if (*(v2 + qword_1EDEBBCE0) == 1 && !*(v2 + qword_1EDEADA98))
  {
    result = (*(**(v2 + 24) + 584))(&v5, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (!v3 && (result & 1) == 0)
    {
      if (qword_1EDEACC50 != -1)
      {
        swift_once();
      }

      result = [qword_1EDEBBB28 removeWatcher_];
      *(v2 + v4) = 0;
    }
  }

  return result;
}

void sub_1CF3E3F48(_BOOL4 a1, _BOOL4 a2, char a3)
{
  v5 = a2;
  if (a1 == 2)
  {
    v6 = *(v3 + 200) == 0;
  }

  else
  {
    v6 = a1;
  }

  if (a2 == 2)
  {
    os_unfair_lock_lock((v3 + 208));
    v5 = *(v3 + 216) == 0;
    os_unfair_lock_unlock((v3 + 208));
  }

  if (a3 == 2)
  {
    v7 = v3 + qword_1EDEBBC20;
    os_unfair_lock_lock((v3 + qword_1EDEBBC20));
    v8 = *(v7 + 96);
    os_unfair_lock_unlock(v7);
    if (v8)
    {
      return;
    }

    v9 = v3 + qword_1EDEBBC28;
    os_unfair_lock_lock((v3 + qword_1EDEBBC28));
    a3 = *(v9 + 96) == 0;
    os_unfair_lock_unlock(v9);
  }

  if (v6 && v5 && (a3 & 1) != 0)
  {
    v10 = *(*v3 + 2512);

    v10();
  }
}

uint64_t sub_1CF3E407C(char a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(void, unint64_t))
{
  v11 = v6;
  v14 = type metadata accessor for PaginatedContinuation();
  sub_1CF387D24(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1CF387D24(v15);
  if (a1)
  {
    v16 = 20550;
  }

  else
  {
    v16 = 21318;
  }

  MEMORY[0x1D3868CC0](v16, 0xE200000000000000);

  v17 = MEMORY[0x1D3868CC0](0x6F687370616E735FLL, 0xE900000000000074);
  v18 = (v6 + qword_1EDEBBD78);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = *(a5(v17) + 16);

  if (v19 >> 31)
  {
    __break(1u);
  }

  else
  {
    *(v11 + qword_1EDEBBD90) = v19;
    v21 = a6(0, 0xE000000000000000);
    v22 = (v11 + qword_1EDEBBD98);
    *v22 = v21;
    v22[1] = v23;
    v24 = sub_1CEFE91F8(0x697461726F636564, 0xEB000000005F6E6FLL);
    v25 = (v11 + qword_1EDEBBD88);
    *v25 = v24;
    v25[1] = v26;
    v27 = *(sub_1CEFF12E8() + 2);

    if (!(v27 >> 31))
    {
      *(v11 + qword_1EDEBBD80) = v27;
      v28 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
      *(v11 + qword_1EDEAE5C0) = v28;
      [v28 setCountLimit_];
      swift_weakInit();
      *(v11 + 33) = 1;
      v29 = (v11 + qword_1EDEBBA48);
      v30 = type metadata accessor for SnapshotCounters();
      v29[1] = 0;
      v29[2] = 0;
      *v29 = 0;
      v31 = v29 + *(v30 + 28);
      sub_1CF9E5CC8();
      *(v11 + 32) = a1 & 1;
      *(v11 + 16) = a2;
      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_1CF3E4284(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  LODWORD(v55) = a3;
  v54 = a2;
  v56 = a4;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v18 = type metadata accessor for Signpost(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v59 = a1;
  v53 = v4;
  if (*(v4 + 32))
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
  }

  else
  {
    v48 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = v5;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v26 = qword_1EDEBBE40;
    (*(v8 + 56))(v17, 1, 1, v7);
    v57 = 0x2070756B6F6F6CLL;
    v58 = 0xE700000000000000;
    v27 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v27);

    v49 = v58;
    v50 = v57;
    v47 = v17;
    sub_1CEFCCBDC(v17, v14, &unk_1EC4BED20, &unk_1CFA00700);
    v28 = *(v8 + 48);
    if (v28(v14, 1, v7) == 1)
    {
      v29 = v26;
      v30 = v26;
      v31 = v52;
      sub_1CF9E6048();
      if (v28(v14, 1, v7) != 1)
      {
        sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v29 = v26;
      v31 = v52;
      (*(v8 + 32))(v52, v14, v7);
    }

    v32 = v48;
    (*(v8 + 16))(v48, v31, v7);
    *(v32 + *(v18 + 20)) = v29;
    v33 = v32 + *(v18 + 24);
    *v33 = "SQLDB: Lookup FS recursive properties";
    *(v33 + 8) = 37;
    *(v33 + 16) = 2;
    v34 = v29;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1CF9FA450;
    *(v35 + 56) = MEMORY[0x1E69E6158];
    *(v35 + 64) = sub_1CEFD51C4();
    v36 = v49;
    *(v35 + 32) = v50;
    *(v35 + 40) = v36;
    v45 = v35;
    v44 = 2;
    v43 = 2;
    sub_1CF9E6028();

    (*(v8 + 8))(v31, v7);
    v37 = sub_1CEFCCC44(v47, &unk_1EC4BED20, &unk_1CFA00700);
    MEMORY[0x1EEE9AC00](v37);
    v45 = v53;
    v46 = &v59;
    v38 = v51;
    v39 = sub_1CF7D5474(sub_1CF483D90, &v43, v54, v55);
    if (v38)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      sub_1CEFD5278(v32, type metadata accessor for Signpost);
      return;
    }

    v40 = v39;
    v55 = v34;
    v41 = [v39 next];
    if (v41)
    {
      v21 = [v40 unsignedLongAtIndex_];
      v22 = [v40 unsignedLongAtIndex_];
      v23 = [v40 unsignedLongAtIndex_];
      v24 = [v40 unsignedLongAtIndex_];
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
    }

    v25 = v41 ^ 1;

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v32, type metadata accessor for Signpost);
  }

  v42 = v56;
  *v56 = v21;
  v42[1] = v22;
  v42[2] = v23;
  v42[3] = v24;
  *(v42 + 32) = v25;
}

void sub_1CF3E4858(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, unsigned int a4@<W3>, void *a5@<X8>)
{
  v59 = a4;
  v58 = a3;
  v60 = a5;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  v19 = type metadata accessor for Signpost(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v66 = a2;
  v57 = v5;
  if (*(v5 + 32))
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 1;
  }

  else
  {
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v55 = v22;
    v28 = qword_1EDEBBE40;
    v29 = (*(v9 + 56))(v18, 1, 1, v8);
    v63 = 0x2070756B6F6F6CLL;
    v64 = 0xE700000000000000;
    v61 = v65;
    v62 = v66;
    v31 = VFSItemID.description.getter(v29, v30);
    MEMORY[0x1D3868CC0](v31);

    v53 = v64;
    v54 = v63;
    sub_1CEFCCBDC(v18, v15, &unk_1EC4BED20, &unk_1CFA00700);
    v32 = *(v9 + 48);
    if (v32(v15, 1, v8) == 1)
    {
      v33 = v28;
      v34 = v28;
      v35 = v56;
      sub_1CF9E6048();
      if (v32(v15, 1, v8) != 1)
      {
        sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v33 = v28;
      v35 = v56;
      (*(v9 + 32))(v56, v15, v8);
    }

    v36 = v55;
    (*(v9 + 16))(v55, v35, v8);
    *(v36 + *(v19 + 20)) = v33;
    v37 = v36 + *(v19 + 24);
    *v37 = "SQLDB: Lookup FS recursive properties";
    *(v37 + 8) = 37;
    *(v37 + 16) = 2;
    v38 = v33;
    v39 = v36;
    v40 = v38;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1CF9FA450;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1CEFD51C4();
    v42 = v53;
    *(v41 + 32) = v54;
    *(v41 + 40) = v42;
    v51 = v41;
    v50 = 2;
    v49 = 2;
    sub_1CF9E6028();

    (*(v9 + 8))(v35, v8);
    v43 = sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    MEMORY[0x1EEE9AC00](v43);
    v51 = v57;
    v52 = &v65;
    v44 = v67;
    v45 = sub_1CF7D5474(sub_1CF483F34, &v49, v58, v59);
    if (v44)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      sub_1CEFD5278(v39, type metadata accessor for Signpost);
      return;
    }

    v46 = v45;
    v67 = v40;
    v47 = [v45 next];
    if (v47)
    {
      v23 = [v46 unsignedLongAtIndex_];
      v24 = [v46 unsignedLongAtIndex_];
      v25 = [v46 unsignedLongAtIndex_];
      v26 = [v46 unsignedLongAtIndex_];
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
    }

    v27 = v47 ^ 1;

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v39, type metadata accessor for Signpost);
  }

  v48 = v60;
  *v60 = v23;
  v48[1] = v24;
  v48[2] = v25;
  v48[3] = v26;
  *(v48 + 32) = v27;
}

uint64_t sub_1CF3E4E44(void *a1, uint64_t a2)
{
  v4 = sub_1CF9E6938();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000086, 0x80000001CFA46520);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E6918();
  v9 = sub_1CF9E68C8();
  v11 = v10;

  result = (*(v5 + 8))(v8, v4);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v13 = sub_1CF9E5B48();
    sub_1CEFE48D8(v9, v11);
    v14 = [a1 bindObjectParameter_];

    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;

    MEMORY[0x1D3868CC0](v15, v17);

    return v18[0];
  }

  return result;
}

uint64_t sub_1CF3E504C(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000086, 0x80000001CFA46520);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  if (!a4)
  {
    goto LABEL_5;
  }

  if (a4 != 1)
  {
    a3 = (a3 != 0) << 63;
    goto LABEL_7;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a3 = -a3;
  }

LABEL_7:
  v8 = [a1 bindLongParameter_];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);

  return v13;
}

uint64_t sub_1CF3E518C(uint64_t a1, void *a2, unsigned int a3)
{
  v49 = a3;
  v48 = a2;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for Signpost(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v52 = a1;
  v47 = v3;
  if (*(v3 + 32) != 1)
  {
    return 0;
  }

  v42 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v4;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBBE40;
  (*(v7 + 56))(v16, 1, 1, v6);
  v50 = 0x2070756B6F6F6CLL;
  v51 = 0xE700000000000000;
  v21 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v21);

  v43 = v51;
  v44 = v50;
  v41 = v16;
  sub_1CEFCCBDC(v16, v13, &unk_1EC4BED20, &unk_1CFA00700);
  v22 = *(v7 + 48);
  if (v22(v13, 1, v6) == 1)
  {
    v23 = v20;
    v24 = v20;
    v25 = v46;
    sub_1CF9E6048();
    if (v22(v13, 1, v6) != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v23 = v20;
    v25 = v46;
    (*(v7 + 32))(v46, v13, v6);
  }

  v27 = v42;
  (*(v7 + 16))(v42, v25, v6);
  *(v27 + *(v17 + 20)) = v23;
  v28 = v27 + *(v17 + 24);
  *v28 = "SQLDB: Lookup FP recursive properties";
  *(v28 + 8) = 37;
  *(v28 + 16) = 2;
  v23;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1CF9FA450;
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = sub_1CEFD51C4();
  v30 = v43;
  *(v29 + 32) = v44;
  *(v29 + 40) = v30;
  v38 = v29;
  v37 = 2;
  v36 = 2;
  sub_1CF9E6028();

  (*(v7 + 8))(v25, v6);
  v31 = sub_1CEFCCC44(v41, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v31);
  v38 = v47;
  v39 = &v52;
  v32 = v45;
  v33 = sub_1CF7D5474(sub_1CF483D9C, &v36, v48, v49);
  if (v32)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CEFD5278(v27, type metadata accessor for Signpost);
  }

  else
  {
    v34 = v33;
    if ([v33 next])
    {
      v35 = [v34 unsignedLongAtIndex_];
      [v34 unsignedLongAtIndex_];
    }

    else
    {
      v35 = 0;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v27, type metadata accessor for Signpost);
    return v35;
  }
}

uint64_t sub_1CF3E571C(uint64_t a1, char a2, void *a3, unsigned int a4)
{
  v50 = a4;
  v49 = a3;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = type metadata accessor for Signpost(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  v56 = a2;
  v48 = v4;
  if (*(v4 + 32) != 1)
  {
    return 0;
  }

  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDEBBE40;
  v23 = (*(v8 + 56))(v17, 1, 1, v7);
  v53 = 0x2070756B6F6F6CLL;
  v54 = 0xE700000000000000;
  v51 = v55;
  v52 = v56;
  v25 = VFSItemID.description.getter(v23, v24);
  MEMORY[0x1D3868CC0](v25);

  v44 = v54;
  v45 = v53;
  v46 = v17;
  sub_1CEFCCBDC(v17, v14, &unk_1EC4BED20, &unk_1CFA00700);
  v26 = *(v8 + 48);
  if (v26(v14, 1, v7) == 1)
  {
    v27 = v22;
    v28 = v22;
    v29 = v47;
    sub_1CF9E6048();
    if (v26(v14, 1, v7) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v27 = v22;
    v29 = v47;
    (*(v8 + 32))(v47, v14, v7);
  }

  (*(v8 + 16))(v21, v29, v7);
  *&v21[*(v18 + 20)] = v27;
  v31 = &v21[*(v18 + 24)];
  *v31 = "SQLDB: Lookup FP recursive properties";
  *(v31 + 1) = 37;
  v31[16] = 2;
  v27;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1CF9FA450;
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = sub_1CEFD51C4();
  v33 = v44;
  *(v32 + 32) = v45;
  *(v32 + 40) = v33;
  v41 = v32;
  v40 = 2;
  v39 = 2;
  sub_1CF9E6028();

  (*(v8 + 8))(v29, v7);
  v34 = sub_1CEFCCC44(v46, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v34);
  v41 = v48;
  v42 = &v55;
  v35 = v57;
  v36 = sub_1CF7D5474(sub_1CF483F44, &v39, v49, v50);
  if (v35)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CEFD5278(v21, type metadata accessor for Signpost);
  }

  else
  {
    v37 = v36;
    if ([v36 next])
    {
      v38 = [v37 unsignedLongAtIndex_];
      [v37 unsignedLongAtIndex_];
    }

    else
    {
      v38 = 0;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v21, type metadata accessor for Signpost);
    return v38;
  }
}

uint64_t sub_1CF3E5CB8(void *a1, uint64_t a2)
{
  v4 = sub_1CF9E6938();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000054, 0x80000001CFA465E0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E6918();
  v9 = sub_1CF9E68C8();
  v11 = v10;

  result = (*(v5 + 8))(v8, v4);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v13 = sub_1CF9E5B48();
    sub_1CEFE48D8(v9, v11);
    v14 = [a1 bindObjectParameter_];

    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;

    MEMORY[0x1D3868CC0](v15, v17);

    return v18[0];
  }

  return result;
}

uint64_t sub_1CF3E5EC0(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000054, 0x80000001CFA465E0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  if (!a4)
  {
    goto LABEL_5;
  }

  if (a4 != 1)
  {
    a3 = (a3 != 0) << 63;
    goto LABEL_7;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a3 = -a3;
  }

LABEL_7:
  v8 = [a1 bindLongParameter_];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);

  return v13;
}

uint64_t sub_1CF3E6000@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v49 = a2;
  v50 = a3;
  v44 = a4;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  v17 = type metadata accessor for Signpost(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBBE40;
  (*(v6 + 56))(v16, 1, 1, v5);
  v52 = 0x2070756B6F6F6CLL;
  v53 = 0xE700000000000000;
  v21 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v21);

  v45 = v53;
  v46 = v52;
  sub_1CEFCCBDC(v16, v13, &unk_1EC4BED20, &unk_1CFA00700);
  v22 = *(v6 + 48);
  if (v22(v13, 1, v5) == 1)
  {
    v23 = v20;
    sub_1CF9E6048();
    v24 = v22(v13, 1, v5);
    v25 = v9;
    if (v24 != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v25 = v9;
    (*(v6 + 32))(v9, v13, v5);
  }

  v26 = v47;
  (*(v6 + 16))(v47, v25, v5);
  *(v26 + *(v17 + 20)) = v20;
  v27 = v26 + *(v17 + 24);
  *v27 = "SQLDB: Lookup item by ID";
  *(v27 + 8) = 24;
  *(v27 + 16) = 2;
  v28 = v20;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1CF9FA450;
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = sub_1CEFD51C4();
  v30 = v45;
  *(v29 + 32) = v46;
  *(v29 + 40) = v30;
  v42 = v29;
  v41 = 2;
  v40 = 2;
  sub_1CF9E6028();

  (*(v6 + 8))(v25, v5);
  v31 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v31);
  v42 = v48;
  v43 = &v54;
  v32 = v51;
  v33 = sub_1CF7D5474(sub_1CF483E18, &v40, v49, v50);
  if (!v32)
  {
    v34 = v33;
    if ([v33 next])
    {
      v35 = sub_1CF1CC7A8();
      v36 = v44;
      sub_1CF241018(v34, v35, 0, v44);

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
      (*(*(v38 - 8) + 56))(v36, 0, 1, v38);
    }

    else
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
      (*(*(v37 - 8) + 56))(v44, 1, 1, v37);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD5278(v26, type metadata accessor for Signpost);
}

uint64_t sub_1CF3E65B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v54 = a3;
  v55 = a4;
  v49 = a5;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v19 = type metadata accessor for Signpost(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  v61 = a2;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDEBBE40;
  v23 = (*(v8 + 56))(v18, 1, 1, v7);
  v58 = 0x2070756B6F6F6CLL;
  v59 = 0xE700000000000000;
  v56 = v60;
  v57 = v61;
  v25 = VFSItemID.description.getter(v23, v24);
  MEMORY[0x1D3868CC0](v25);

  v50 = v59;
  v51 = v58;
  sub_1CEFCCBDC(v18, v15, &unk_1EC4BED20, &unk_1CFA00700);
  v26 = *(v8 + 48);
  if (v26(v15, 1, v7) == 1)
  {
    v27 = v22;
    sub_1CF9E6048();
    v28 = v26(v15, 1, v7);
    v29 = v11;
    if (v28 != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v29 = v11;
    (*(v8 + 32))(v11, v15, v7);
  }

  v30 = v52;
  (*(v8 + 16))(v52, v29, v7);
  *(v30 + *(v19 + 20)) = v22;
  v31 = v30 + *(v19 + 24);
  *v31 = "SQLDB: Lookup item by ID";
  *(v31 + 8) = 24;
  *(v31 + 16) = 2;
  v32 = v22;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1CF9FA450;
  *(v33 + 56) = MEMORY[0x1E69E6158];
  *(v33 + 64) = sub_1CEFD51C4();
  v34 = v50;
  *(v33 + 32) = v51;
  *(v33 + 40) = v34;
  v46 = v33;
  v45 = 2;
  v44 = 2;
  sub_1CF9E6028();

  (*(v8 + 8))(v29, v7);
  v35 = sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v35);
  v46 = v53;
  v47 = &v60;
  v36 = v62;
  v37 = sub_1CF7D5474(sub_1CF483FDC, &v44, v54, v55);
  if (!v36)
  {
    v38 = v37;
    if ([v37 next])
    {
      v39 = sub_1CF1CBB20();
      v40 = v49;
      sub_1CF2408F8(v39, v38, 0, v49);

      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      (*(*(v42 - 8) + 56))(v40, 0, 1, v42);
    }

    else
    {
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      (*(*(v41 - 8) + 56))(v49, 1, 1, v41);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD5278(v30, type metadata accessor for Signpost);
}

void sub_1CF3E6B78(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v64 = a2;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v60 - v17;
  v18 = type metadata accessor for Signpost(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a1;
  v63 = v4;
  if (v4[32] != 1)
  {
    sub_1CEFE528C(&v84);
    v27 = v97;
    *(a4 + 192) = v96;
    *(a4 + 208) = v27;
    *(a4 + 224) = v98;
    *(a4 + 240) = v99;
    v28 = v93;
    *(a4 + 128) = v92;
    *(a4 + 144) = v28;
    v29 = v95;
    *(a4 + 160) = v94;
    *(a4 + 176) = v29;
    v30 = v89;
    *(a4 + 64) = v88;
    *(a4 + 80) = v30;
    v31 = v91;
    *(a4 + 96) = v90;
    *(a4 + 112) = v31;
    v32 = v85;
    *a4 = v84;
    *(a4 + 16) = v32;
    v33 = v87;
    *(a4 + 32) = v86;
    *(a4 + 48) = v33;
    return;
  }

  v61 = a3;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEBBE40;
  v22 = v66;
  (*(v9 + 56))(v66, 1, 1, v8);
  sub_1CEFCCBDC(v22, v15, &unk_1EC4BED20, &unk_1CFA00700);
  v23 = *(v9 + 48);
  v24 = v23(v15, 1, v8);
  v60 = v21;
  if (v24 == 1)
  {
    v25 = v21;
    v26 = v62;
    sub_1CF9E6048();
    if (v23(v15, 1, v8) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v26 = v62;
    (*(v9 + 32))(v62, v15, v8);
  }

  v34 = v65;
  (*(v9 + 16))(v65, v26, v8);
  v35 = v60;
  *&v34[*(v18 + 20)] = v60;
  v36 = &v34[*(v18 + 24)];
  *v36 = "SQLDB: Lookup item non syncable attributes";
  *(v36 + 1) = 42;
  v36[16] = 2;
  v37 = v35;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v9 + 8))(v26, v8);
  v38 = sub_1CEFCCC44(v66, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v38);
  v39 = v64;
  *(&v60 - 2) = v63;
  *(&v60 - 1) = &v100;
  v40 = v67;
  v41 = sub_1CF7D5474(sub_1CF483DA8, (&v60 - 4), v39, v61);
  if (v40)
  {
    goto LABEL_13;
  }

  v42 = v41;
  if (([v41 next] & 1) == 0)
  {

    sub_1CEFE528C(&v84);
    v44 = v97;
    *(a4 + 192) = v96;
    *(a4 + 208) = v44;
    *(a4 + 224) = v98;
    *(a4 + 240) = v99;
    v45 = v93;
    *(a4 + 128) = v92;
    *(a4 + 144) = v45;
    v46 = v95;
    *(a4 + 160) = v94;
    *(a4 + 176) = v46;
    v47 = v89;
    *(a4 + 64) = v88;
    *(a4 + 80) = v47;
    v48 = v91;
    *(a4 + 96) = v90;
    *(a4 + 112) = v48;
    v49 = v85;
    *a4 = v84;
    *(a4 + 16) = v49;
    v50 = v87;
    *(a4 + 32) = v86;
    *(a4 + 48) = v50;
LABEL_13:
    sub_1CF9E7458();
    sub_1CF9E6038();
    v59 = v34;
    goto LABEL_14;
  }

  v43 = sub_1CEFF12E8();
  sub_1CEFF14E0(v42, v43, 0, &v84);

  v80 = v96;
  v81 = v97;
  v82 = v98;
  v83 = v99;
  v76 = v92;
  v77 = v93;
  v78 = v94;
  v79 = v95;
  v72 = v88;
  v73 = v89;
  v74 = v90;
  v75 = v91;
  v68 = v84;
  v69 = v85;
  v70 = v86;
  v71 = v87;
  nullsub_1(&v68);
  v51 = v81;
  *(a4 + 192) = v80;
  *(a4 + 208) = v51;
  *(a4 + 224) = v82;
  *(a4 + 240) = v83;
  v52 = v77;
  *(a4 + 128) = v76;
  *(a4 + 144) = v52;
  v53 = v79;
  *(a4 + 160) = v78;
  *(a4 + 176) = v53;
  v54 = v73;
  *(a4 + 64) = v72;
  *(a4 + 80) = v54;
  v55 = v75;
  *(a4 + 96) = v74;
  *(a4 + 112) = v55;
  v56 = v69;
  *a4 = v68;
  *(a4 + 16) = v56;
  v57 = v71;
  *(a4 + 32) = v70;
  *(a4 + 48) = v57;
  sub_1CF9E7458();
  v58 = v65;
  sub_1CF9E6038();
  v59 = v58;
LABEL_14:
  sub_1CEFD5278(v59, type metadata accessor for Signpost);
}

void sub_1CF3E7180(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v64 = a4;
  v63 = a3;
  v9 = sub_1CF9E6068();
  v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v59 - v17;
  v18 = type metadata accessor for Signpost(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a1;
  v100 = a2;
  v61 = v5;
  if (v5[32] == 1)
  {
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDEBBE40;
    v22 = v62;
    v23 = v65;
    (*(v62 + 56))(v65, 1, 1, v9);
    sub_1CEFCCBDC(v23, v15, &unk_1EC4BED20, &unk_1CFA00700);
    v24 = *(v22 + 48);
    if (v24(v15, 1, v9) == 1)
    {
      v25 = v21;
      v59 = v21;
      v26 = v60;
      sub_1CF9E6048();
      v27 = v24(v15, 1, v9);
      v28 = v26;
      v21 = v59;
      if (v27 != 1)
      {
        sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v28 = v60;
      (*(v22 + 32))(v60, v15, v9);
    }

    v36 = v66;
    (*(v22 + 16))(v66, v28, v9);
    *&v36[*(v18 + 20)] = v21;
    v37 = &v36[*(v18 + 24)];
    *v37 = "SQLDB: Lookup item non syncable attributes";
    *(v37 + 1) = 42;
    v37[16] = 2;
    v38 = v21;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v22 + 8))(v28, v9);
    v39 = sub_1CEFCCC44(v65, &unk_1EC4BED20, &unk_1CFA00700);
    MEMORY[0x1EEE9AC00](v39);
    *(&v59 - 2) = v61;
    *(&v59 - 1) = &v99;
    v40 = v101;
    v41 = sub_1CF7D5474(sub_1CF483F54, (&v59 - 4), v63, v64);
    if (!v40)
    {
      v42 = v41;
      if ([v41 next])
      {
        v43 = sub_1CEFF12E8();
        sub_1CEFF14E0(v42, v43, 0, &v83);

        v79 = v95;
        v80 = v96;
        v81 = v97;
        v82 = v98;
        v75 = v91;
        v76 = v92;
        v77 = v93;
        v78 = v94;
        v71 = v87;
        v72 = v88;
        v73 = v89;
        v74 = v90;
        v67 = v83;
        v68 = v84;
        v69 = v85;
        v70 = v86;
        nullsub_1(&v67);
        v50 = v80;
        *(a5 + 192) = v79;
        *(a5 + 208) = v50;
        *(a5 + 224) = v81;
        *(a5 + 240) = v82;
        v51 = v76;
        *(a5 + 128) = v75;
        *(a5 + 144) = v51;
        v52 = v78;
        *(a5 + 160) = v77;
        *(a5 + 176) = v52;
        v53 = v72;
        *(a5 + 64) = v71;
        *(a5 + 80) = v53;
        v54 = v74;
        *(a5 + 96) = v73;
        *(a5 + 112) = v54;
        v55 = v68;
        *a5 = v67;
        *(a5 + 16) = v55;
        v56 = v69;
        v57 = v70;
      }

      else
      {

        sub_1CEFE528C(&v83);
        v44 = v96;
        *(a5 + 192) = v95;
        *(a5 + 208) = v44;
        *(a5 + 224) = v97;
        *(a5 + 240) = v98;
        v45 = v92;
        *(a5 + 128) = v91;
        *(a5 + 144) = v45;
        v46 = v94;
        *(a5 + 160) = v93;
        *(a5 + 176) = v46;
        v47 = v88;
        *(a5 + 64) = v87;
        *(a5 + 80) = v47;
        v48 = v90;
        *(a5 + 96) = v89;
        *(a5 + 112) = v48;
        v49 = v84;
        *a5 = v83;
        *(a5 + 16) = v49;
        v56 = v85;
        v57 = v86;
      }

      *(a5 + 32) = v56;
      *(a5 + 48) = v57;
    }

    sub_1CF9E7458();
    v58 = v66;
    sub_1CF9E6038();
    sub_1CEFD5278(v58, type metadata accessor for Signpost);
  }

  else
  {
    sub_1CEFE528C(&v83);
    v29 = v96;
    *(a5 + 192) = v95;
    *(a5 + 208) = v29;
    *(a5 + 224) = v97;
    *(a5 + 240) = v98;
    v30 = v92;
    *(a5 + 128) = v91;
    *(a5 + 144) = v30;
    v31 = v94;
    *(a5 + 160) = v93;
    *(a5 + 176) = v31;
    v32 = v88;
    *(a5 + 64) = v87;
    *(a5 + 80) = v32;
    v33 = v90;
    *(a5 + 96) = v89;
    *(a5 + 112) = v33;
    v34 = v84;
    *a5 = v83;
    *(a5 + 16) = v34;
    v35 = v86;
    *(a5 + 32) = v85;
    *(a5 + 48) = v35;
  }
}

uint64_t sub_1CF3E7768(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1CF9E6938();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1CF9E7948();

  v21 = 0x205443454C4553;
  v22 = 0xE700000000000000;
  MEMORY[0x1D3868CC0](*(a2 + *a4), *(a2 + *a4 + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E6918();
  v12 = sub_1CF9E68C8();
  v14 = v13;

  result = (*(v8 + 8))(v11, v7);
  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v16 = sub_1CF9E5B48();
    sub_1CEFE48D8(v12, v14);
    v17 = [a1 bindObjectParameter_];

    v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v20 = v19;

    MEMORY[0x1D3868CC0](v18, v20);

    return v21;
  }

  return result;
}

uint64_t sub_1CF3E7998(void *a1, uint64_t a2, unint64_t a3, char a4, void *a5)
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](*(a2 + *a5), *(a2 + *a5 + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  if (!a4)
  {
    goto LABEL_5;
  }

  if (a4 != 1)
  {
    a3 = (a3 != 0) << 63;
    goto LABEL_7;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a3 = -a3;
  }

LABEL_7:
  v10 = [a1 bindLongParameter_];
  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  MEMORY[0x1D3868CC0](v11, v13);

  return 0x205443454C4553;
}

uint64_t sub_1CF3E7B04(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v94) = a5;
  v90 = a2;
  v91 = a4;
  v96 = a3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v97 = *(v95 - 1);
  v6 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v98 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v99 = v88 - v9;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v88 - v20;
  v22 = type metadata accessor for Signpost(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v92 = v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = a1;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDEBBE40;
  (*(v11 + 56))(v21, 1, 1, v10);
  v89 = v21;
  sub_1CEFCCBDC(v21, v18, &unk_1EC4BED20, &unk_1CFA00700);
  v26 = *(v11 + 48);
  if (v26(v18, 1, v10) == 1)
  {
    v27 = v25;
    sub_1CF9E6048();
    if (v26(v18, 1, v10) != 1)
    {
      sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
  }

  v28 = v92;
  (*(v11 + 16))(v92, v14, v10);
  *(v28 + *(v22 + 20)) = v25;
  v29 = v28 + *(v22 + 24);
  *v29 = "SQLDB: Scan directory";
  *(v29 + 8) = 21;
  *(v29 + 16) = 2;
  v30 = v25;
  sub_1CF9E7468();
  v88[1] = v30;
  sub_1CF9E6038();
  (*(v11 + 8))(v14, v10);
  v31 = sub_1CEFCCC44(v89, &unk_1EC4BED20, &unk_1CFA00700);
  if (v90)
  {
    type metadata accessor for PaginatedContinuation();
    v31 = swift_dynamicCastClass();
    v32 = v93;
    v33 = v96;
    v34 = v99;
    if (!v31)
    {
      goto LABEL_50;
    }

    v35 = *(v31 + 16);
  }

  else
  {
    v32 = v93;
    v33 = v96;
    v34 = v99;
  }

  v36 = v100;
  MEMORY[0x1EEE9AC00](v31);
  v88[-6] = v32;
  LOBYTE(v88[-5]) = v33 & 1;
  v88[-4] = &v121;
  v88[-3] = v37;
  v86 = 200;
  v40 = sub_1CF7D5474(sub_1CF483E00, &v88[-8], v38, v39);
  if (v36)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CEFD5278(v28, type metadata accessor for Signpost);
  }

  v42 = v40;
  v91 = qword_1EDEBBD90;
  v90 = qword_1EDEBBD80;
  if (![v40 next])
  {
    v84 = 0;
    v85 = MEMORY[0x1E69E7CC0];
LABEL_37:

    if (v85[2] == 200)
    {
      if (__OFADD__(v84, 1))
      {
        goto LABEL_49;
      }

      type metadata accessor for PaginatedContinuation();
      *(swift_allocObject() + 16) = v84 + 1;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v28, type metadata accessor for Signpost);
    return v85;
  }

  v100 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v43 = objc_autoreleasePoolPush();
    v94 = [v42 longAtIndex_];
    v44 = sub_1CF1CC7A8();
    sub_1CF241018(v42, v44, 1, v34);

    if (*(v32 + 32))
    {
      break;
    }

    if (v33)
    {
      v70 = *(v32 + v91);
      v71 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_42;
      }

      v72 = [v42 unsignedLongAtIndex_];
      if (__OFADD__(v71, 1))
      {
        goto LABEL_43;
      }

      v73 = v72;
      v74 = [v42 unsignedLongAtIndex_];
      if (__OFADD__(v71, 2))
      {
        goto LABEL_44;
      }

      v75 = v74;
      v76 = [v42 unsignedLongAtIndex_];
      if (__OFADD__(v71, 3))
      {
        goto LABEL_45;
      }

      v77 = v76;
      v78 = [v42 unsignedLongAtIndex_];
      v34 = v99;
      v79 = v99 + v95[14];
      *v79 = v73;
      *(v79 + 8) = v75;
      *(v79 + 16) = v77;
      *(v79 + 24) = v78;
      *(v79 + 32) = 0;
      v32 = v93;
      goto LABEL_28;
    }

LABEL_29:
    sub_1CEFCCBDC(v34, v98, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v80 = v100;
    }

    else
    {
      v80 = sub_1CF1F7924(0, v100[2] + 1, 1, v100);
    }

    v82 = v80[2];
    v81 = v80[3];
    if (v82 >= v81 >> 1)
    {
      v80 = sub_1CF1F7924(v81 > 1, v82 + 1, 1, v80);
    }

    v80[2] = v82 + 1;
    v83 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v100 = v80;
    sub_1CEFE55D0(v98, v80 + v83 + *(v97 + 72) * v82, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v34 = v99;
    sub_1CEFCCC44(v99, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    objc_autoreleasePoolPop(v43);
    if (([v42 next] & 1) == 0)
    {
      v28 = v92;
      v84 = v94;
      v85 = v100;
      goto LABEL_37;
    }
  }

  if ((v33 & 1) == 0)
  {
    goto LABEL_29;
  }

  v45 = *(v32 + v91);
  if (!__OFADD__(v45, 1))
  {
    v46 = sub_1CEFF12E8();
    sub_1CEFF14E0(v42, v46, v45 + 1, v119);

    v113 = v119[12];
    v114 = v119[13];
    v115 = v119[14];
    v116 = v120;
    v109 = v119[8];
    v110 = v119[9];
    v111 = v119[10];
    v112 = v119[11];
    v105 = v119[4];
    v106 = v119[5];
    v107 = v119[6];
    v108 = v119[7];
    v101 = v119[0];
    v102 = v119[1];
    v103 = v119[2];
    v104 = v119[3];
    nullsub_1(&v101);
    v47 = v99 + v95[13];
    v48 = *(v47 + 208);
    v117[12] = *(v47 + 192);
    v117[13] = v48;
    v117[14] = *(v47 + 224);
    v118 = *(v47 + 240);
    v49 = *(v47 + 144);
    v117[8] = *(v47 + 128);
    v117[9] = v49;
    v50 = *(v47 + 176);
    v117[10] = *(v47 + 160);
    v117[11] = v50;
    v51 = *(v47 + 80);
    v117[4] = *(v47 + 64);
    v117[5] = v51;
    v52 = *(v47 + 112);
    v117[6] = *(v47 + 96);
    v117[7] = v52;
    v53 = *(v47 + 16);
    v117[0] = *v47;
    v117[1] = v53;
    v54 = *(v47 + 48);
    v117[2] = *(v47 + 32);
    v117[3] = v54;
    sub_1CEFCCC44(v117, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v55 = v114;
    *(v47 + 192) = v113;
    *(v47 + 208) = v55;
    *(v47 + 224) = v115;
    *(v47 + 240) = v116;
    v56 = v110;
    *(v47 + 128) = v109;
    *(v47 + 144) = v56;
    v57 = v112;
    *(v47 + 160) = v111;
    *(v47 + 176) = v57;
    v58 = v106;
    *(v47 + 64) = v105;
    *(v47 + 80) = v58;
    v59 = v108;
    *(v47 + 96) = v107;
    *(v47 + 112) = v59;
    v60 = v102;
    *v47 = v101;
    *(v47 + 16) = v60;
    v61 = v104;
    *(v47 + 32) = v103;
    *(v47 + 48) = v61;
    v62 = *(v32 + v90);
    v63 = __OFADD__(v45, v62);
    v64 = v45 + v62;
    if (v63)
    {
      goto LABEL_46;
    }

    v65 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      goto LABEL_47;
    }

    v66 = [v42 unsignedLongAtIndex_];
    if (__OFADD__(v65, 1))
    {
      goto LABEL_48;
    }

    v67 = v66;
    v68 = [v42 unsignedLongAtIndex_];
    v34 = v99;
    v69 = v99 + v95[15];
    *v69 = v67;
    *(v69 + 8) = v68;
    *(v69 + 16) = 0;
LABEL_28:
    v33 = v96;
    goto LABEL_29;
  }

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
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  v87 = 0;
  v86 = 1155;
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3E8548(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  LODWORD(v96) = a6;
  v92 = a3;
  v93 = a5;
  v98 = a4;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v99 = *(v97 - 1);
  v8 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v101 = &v90 - v11;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v90 - v22;
  v24 = type metadata accessor for Signpost(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v94 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a1;
  v123 = a2;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDEBBE40;
  (*(v13 + 56))(v23, 1, 1, v12);
  v91 = v23;
  sub_1CEFCCBDC(v23, v20, &unk_1EC4BED20, &unk_1CFA00700);
  v28 = *(v13 + 48);
  if (v28(v20, 1, v12) == 1)
  {
    v29 = v27;
    sub_1CF9E6048();
    if (v28(v20, 1, v12) != 1)
    {
      sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v20, v12);
  }

  v30 = v94;
  (*(v13 + 16))(v94, v16, v12);
  *(v30 + *(v24 + 20)) = v27;
  v31 = v30 + *(v24 + 24);
  *v31 = "SQLDB: Scan directory";
  *(v31 + 8) = 21;
  *(v31 + 16) = 2;
  v32 = v27;
  sub_1CF9E7468();
  v90 = v32;
  sub_1CF9E6038();
  (*(v13 + 8))(v16, v12);
  v33 = sub_1CEFCCC44(v91, &unk_1EC4BED20, &unk_1CFA00700);
  if (v92)
  {
    type metadata accessor for PaginatedContinuation();
    v33 = swift_dynamicCastClass();
    v34 = v95;
    v35 = v98;
    v36 = v101;
    if (!v33)
    {
      goto LABEL_50;
    }

    v37 = *(v33 + 16);
  }

  else
  {
    v34 = v95;
    v35 = v98;
    v36 = v101;
  }

  v38 = v124;
  MEMORY[0x1EEE9AC00](v33);
  *(&v90 - 6) = v34;
  *(&v90 - 40) = v35 & 1;
  *(&v90 - 4) = &v122;
  *(&v90 - 3) = v39;
  v88 = 200;
  v42 = sub_1CF7D5474(sub_1CF483FC0, (&v90 - 8), v40, v41);
  if (v38)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CEFD5278(v30, type metadata accessor for Signpost);
  }

  v44 = v42;
  v93 = qword_1EDEBBD90;
  v92 = qword_1EDEBBD80;
  if (![v42 next])
  {
    v86 = 0;
    v87 = MEMORY[0x1E69E7CC0];
LABEL_37:

    if (v87[2] == 200)
    {
      if (__OFADD__(v86, 1))
      {
        goto LABEL_49;
      }

      type metadata accessor for PaginatedContinuation();
      *(swift_allocObject() + 16) = v86 + 1;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v30, type metadata accessor for Signpost);
    return v87;
  }

  v124 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v45 = objc_autoreleasePoolPush();
    v96 = [v44 longAtIndex_];
    v46 = sub_1CF1CBB20();
    sub_1CF2408F8(v46, v44, 1, v36);

    if (v34[32])
    {
      break;
    }

    if (v35)
    {
      v72 = *&v34[v93];
      v73 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        goto LABEL_42;
      }

      v74 = [v44 unsignedLongAtIndex_];
      if (__OFADD__(v73, 1))
      {
        goto LABEL_43;
      }

      v75 = v74;
      v76 = [v44 unsignedLongAtIndex_];
      if (__OFADD__(v73, 2))
      {
        goto LABEL_44;
      }

      v77 = v76;
      v78 = [v44 unsignedLongAtIndex_];
      if (__OFADD__(v73, 3))
      {
        goto LABEL_45;
      }

      v79 = v78;
      v80 = [v44 unsignedLongAtIndex_];
      v36 = v101;
      v81 = v101 + v97[14];
      *v81 = v75;
      *(v81 + 8) = v77;
      *(v81 + 16) = v79;
      *(v81 + 24) = v80;
      *(v81 + 32) = 0;
      v34 = v95;
      goto LABEL_28;
    }

LABEL_29:
    sub_1CEFCCBDC(v36, v100, &unk_1EC4BE360, &qword_1CF9FE650);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v82 = v124;
    }

    else
    {
      v82 = sub_1CF1F7948(0, v124[2] + 1, 1, v124);
    }

    v84 = v82[2];
    v83 = v82[3];
    if (v84 >= v83 >> 1)
    {
      v82 = sub_1CF1F7948(v83 > 1, v84 + 1, 1, v82);
    }

    v82[2] = v84 + 1;
    v85 = (*(v99 + 80) + 32) & ~*(v99 + 80);
    v124 = v82;
    sub_1CEFE55D0(v100, v82 + v85 + *(v99 + 72) * v84, &unk_1EC4BE360, &qword_1CF9FE650);
    v36 = v101;
    sub_1CEFCCC44(v101, &unk_1EC4BE360, &qword_1CF9FE650);
    objc_autoreleasePoolPop(v45);
    if (([v44 next] & 1) == 0)
    {
      v30 = v94;
      v86 = v96;
      v87 = v124;
      goto LABEL_37;
    }
  }

  if ((v35 & 1) == 0)
  {
    goto LABEL_29;
  }

  v47 = *&v34[v93];
  if (!__OFADD__(v47, 1))
  {
    v48 = sub_1CEFF12E8();
    sub_1CEFF14E0(v44, v48, v47 + 1, v120);

    v114 = v120[12];
    v115 = v120[13];
    v116 = v120[14];
    v117 = v121;
    v110 = v120[8];
    v111 = v120[9];
    v112 = v120[10];
    v113 = v120[11];
    v106 = v120[4];
    v107 = v120[5];
    v108 = v120[6];
    v109 = v120[7];
    v102 = v120[0];
    v103 = v120[1];
    v104 = v120[2];
    v105 = v120[3];
    nullsub_1(&v102);
    v49 = v101 + v97[13];
    v50 = *(v49 + 208);
    v118[12] = *(v49 + 192);
    v118[13] = v50;
    v118[14] = *(v49 + 224);
    v119 = *(v49 + 240);
    v51 = *(v49 + 144);
    v118[8] = *(v49 + 128);
    v118[9] = v51;
    v52 = *(v49 + 176);
    v118[10] = *(v49 + 160);
    v118[11] = v52;
    v53 = *(v49 + 80);
    v118[4] = *(v49 + 64);
    v118[5] = v53;
    v54 = *(v49 + 112);
    v118[6] = *(v49 + 96);
    v118[7] = v54;
    v55 = *(v49 + 16);
    v118[0] = *v49;
    v118[1] = v55;
    v56 = *(v49 + 48);
    v118[2] = *(v49 + 32);
    v118[3] = v56;
    sub_1CEFCCC44(v118, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v57 = v115;
    *(v49 + 192) = v114;
    *(v49 + 208) = v57;
    *(v49 + 224) = v116;
    *(v49 + 240) = v117;
    v58 = v111;
    *(v49 + 128) = v110;
    *(v49 + 144) = v58;
    v59 = v113;
    *(v49 + 160) = v112;
    *(v49 + 176) = v59;
    v60 = v107;
    *(v49 + 64) = v106;
    *(v49 + 80) = v60;
    v61 = v109;
    *(v49 + 96) = v108;
    *(v49 + 112) = v61;
    v62 = v103;
    *v49 = v102;
    *(v49 + 16) = v62;
    v63 = v105;
    *(v49 + 32) = v104;
    *(v49 + 48) = v63;
    v64 = *&v34[v92];
    v65 = __OFADD__(v47, v64);
    v66 = v47 + v64;
    if (v65)
    {
      goto LABEL_46;
    }

    v67 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      goto LABEL_47;
    }

    v68 = [v44 unsignedLongAtIndex_];
    if (__OFADD__(v67, 1))
    {
      goto LABEL_48;
    }

    v69 = v68;
    v70 = [v44 unsignedLongAtIndex_];
    v36 = v101;
    v71 = v101 + v97[15];
    *v71 = v69;
    *(v71 + 8) = v70;
    *(v71 + 16) = 0;
LABEL_28:
    v35 = v98;
    goto LABEL_29;
  }

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
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  v89 = 0;
  v88 = 1155;
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3E8F9C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v10 = sub_1CF9E6938();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 32) == 1)
  {
    v15 = 0xE000000000000000;
    if (a3)
    {
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
      MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD88), *(a2 + qword_1EDEBBD88 + 8));
      MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA46800);
      v16 = v36;
      v15 = v37;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (a3)
    {
      v16 = 0xD000000000000079;
    }

    else
    {
      v16 = 0;
    }

    if (a3)
    {
      v15 = 0x80000001CFA46780;
    }

    else
    {
      v15 = 0xE000000000000000;
    }
  }

  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C4449776FLL);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](v16, v15);

  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA46730);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E6918();
  v17 = sub_1CF9E68C8();
  v19 = v18;

  result = (*(v11 + 8))(v14, v10);
  if (v19 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v21 = sub_1CF9E5B48();
    sub_1CEFE48D8(v17, v19);
    v22 = [a1 bindObjectParameter_];

    v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v25 = v24;

    MEMORY[0x1D3868CC0](v23, v25);

    MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA46750);
    v26 = [a1 bindLongParameter_];
    v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v29 = v28;

    MEMORY[0x1D3868CC0](v27, v29);

    MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA3B360);
    v30 = [a1 bindLongParameter_];
    v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v33 = v32;

    MEMORY[0x1D3868CC0](v31, v33);

    return v36;
  }

  return result;
}

uint64_t sub_1CF3E9360(void *a1, uint64_t a2, char a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (*(a2 + 32) == 1)
  {
    v13 = 0xE000000000000000;
    if (a3)
    {
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
      MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD88), *(a2 + qword_1EDEBBD88 + 8));
      MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA46800);
      v14 = 0;
      v13 = 0xE000000000000000;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    if (a3)
    {
      v14 = 0xD000000000000079;
    }

    else
    {
      v14 = 0;
    }

    if (a3)
    {
      v13 = 0x80000001CFA46780;
    }

    else
    {
      v13 = 0xE000000000000000;
    }
  }

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C4449776FLL);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](v14, v13);

  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA46730);
  if (!a5)
  {
    goto LABEL_15;
  }

  if (a5 != 1)
  {
    a4 = (a4 != 0) << 63;
    goto LABEL_17;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    a4 = -a4;
  }

LABEL_17:
  v15 = [a1 bindLongParameter_];
  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;

  MEMORY[0x1D3868CC0](v16, v18);

  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA46750);
  v19 = [a1 bindLongParameter_];
  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v21;

  MEMORY[0x1D3868CC0](v20, v22);

  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA3B360);
  v23 = [a1 bindLongParameter_];
  v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v26 = v25;

  MEMORY[0x1D3868CC0](v24, v26);

  return v28;
}

unint64_t sub_1CF3E9678(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  return 0xD000000000000017;
}

uint64_t sub_1CF3E96F8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA46200);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA46260);
  return 0;
}

uint64_t sub_1CF3E97A0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA46200);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA46240);
  return 0;
}

uint64_t sub_1CF3E9848(void *a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CF9FA440;
  if (qword_1EDEA34B0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDEA34B8;
  *(v8 + 32) = qword_1EDEA34B8;
  v10 = qword_1EDEA3498;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDEA34A0;
  *(v8 + 40) = qword_1EDEA34A0;
  v13 = v12;
  if ((a3 & 1) == 0)
  {
    v14 = sub_1CF7D5474(sub_1CF483E40, v3, a1, a2);
    if (v4)
    {
    }

    else
    {
      v15 = v14;
      v31 = a2;
      if ([v14 next])
      {
        do
        {
          v16 = objc_autoreleasePoolPush();
          v17 = [v15 stringAtIndex_];
          if (!v17)
          {
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v18 = sub_1CF9E6888();

            v17 = v18;
          }

          v20 = *(v8 + 16);
          v19 = *(v8 + 24);
          if (v20 >= v19 >> 1)
          {
            v30 = v17;
            v8 = sub_1CF1F72E0((v19 > 1), v20 + 1, 1, v8);
            v17 = v30;
          }

          *(v8 + 16) = v20 + 1;
          *(v8 + 8 * v20 + 32) = v17;
          objc_autoreleasePoolPop(v16);
        }

        while (([v15 next] & 1) != 0);
      }

      v21 = sub_1CF7D5474(sub_1CF483E48, v3, a1, v31);
      v23 = v21;
      if ([v21 next])
      {
        do
        {
          v24 = objc_autoreleasePoolPush();
          v25 = [v23 stringAtIndex_];
          if (!v25)
          {
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v26 = sub_1CF9E6888();

            v25 = v26;
          }

          v28 = *(v8 + 16);
          v27 = *(v8 + 24);
          if (v28 >= v27 >> 1)
          {
            v29 = v25;
            v8 = sub_1CF1F72E0((v27 > 1), v28 + 1, 1, v8);
            v25 = v29;
          }

          *(v8 + 16) = v28 + 1;
          *(v8 + 8 * v28 + 32) = v25;
          objc_autoreleasePoolPop(v24);
        }

        while (([v23 next] & 1) != 0);
      }
    }
  }

  return v8;
}

uint64_t sub_1CF3E9B60(void *a1, uint64_t a2, char a3)
{
  v8 = sub_1CF9E5248();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5268();
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE628, &qword_1CF9FE460);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1CF9FA440;
  *(v16 + 32) = 0;
  *(v16 + 40) = 2;
  *(v16 + 48) = 1;
  *(v16 + 56) = 2;
  if (a3)
  {
    return v16;
  }

  v17 = sub_1CF7D5474(sub_1CF484008, v3, a1, a2);
  if (v4)
  {

    return v16;
  }

  v18 = a2;
  v19 = v17;
  v43 = v12;
  v44 = a1;
  v45 = v18;
  v46 = v3;
  v47 = 0;
  v41[1] = v11;
  v42 = v15;
  if ([v17 next])
  {
    do
    {
      v20 = objc_autoreleasePoolPush();
      v21 = [v19 longAtIndex_];
      if (v21 == 0x8000000000000000)
      {
        v23 = 2;
        v22 = 1;
      }

      else
      {
        v22 = v21;
        if (v21)
        {
          if (v21 < 0)
          {
            v22 = -v21;
            if (-v21 >> 32)
            {
              sub_1CF9E51B8();
              sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
              sub_1CF042F54(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
              v38 = v42;
              v37 = v43;
              sub_1CF9E57D8();
              sub_1CF9E50D8();
              (*(v48 + 8))(v38, v37);
              swift_willThrow();
              objc_autoreleasePoolPop(v20);
LABEL_17:

              return v16;
            }

            v23 = 0;
          }

          else
          {
            v23 = 1;
          }
        }

        else
        {
          v23 = 2;
        }
      }

      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        v16 = sub_1CF1F67E4((v24 > 1), v25 + 1, 1, v16);
      }

      *(v16 + 16) = v25 + 1;
      v26 = v16 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      objc_autoreleasePoolPop(v20);
    }

    while (([v19 next] & 1) != 0);
  }

  v27 = v47;
  v28 = sub_1CF7D5474(sub_1CF484010, v46, v44, v45);
  if (v27)
  {
    goto LABEL_17;
  }

  v30 = v28;
  v47 = 0;
  if ([v28 next])
  {
    do
    {
      v31 = objc_autoreleasePoolPush();
      v32 = [v30 longAtIndex_];
      if (v32 == 0x8000000000000000)
      {
        v33 = 2;
        v32 = 1;
      }

      else if (v32)
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          v32 = -v32;
          if (HIDWORD(v32))
          {
            sub_1CF9E51B8();
            sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
            sub_1CF042F54(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
            v40 = v42;
            v39 = v43;
            sub_1CF9E57D8();
            sub_1CF9E50D8();
            (*(v48 + 8))(v40, v39);
            swift_willThrow();
            objc_autoreleasePoolPop(v31);

            return v16;
          }

          v33 = 0;
        }

        else
        {
          v33 = 1;
        }
      }

      else
      {
        v33 = 2;
      }

      v35 = *(v16 + 16);
      v34 = *(v16 + 24);
      if (v35 >= v34 >> 1)
      {
        v46 = v32;
        v16 = sub_1CF1F67E4((v34 > 1), v35 + 1, 1, v16);
        v32 = v46;
      }

      *(v16 + 16) = v35 + 1;
      v36 = v16 + 16 * v35;
      *(v36 + 32) = v32;
      *(v36 + 40) = v33;
      objc_autoreleasePoolPop(v31);
    }

    while (([v30 next] & 1) != 0);
  }

  return v16;
}

uint64_t sub_1CF3EA078(void *a1, uint64_t a2)
{
  v4 = sub_1CF9E6938();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  v9 = a2 + qword_1EDEBBD78;
  v10 = *(a2 + qword_1EDEBBD78);
  v11 = *(v9 + 8);
  MEMORY[0x1D3868CC0](v10, v11);
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA46A80);
  MEMORY[0x1D3868CC0](v10, v11);
  MEMORY[0x1D3868CC0](0xD000000000000086, 0x80000001CFA46AA0);
  if (qword_1EDEA34B0 != -1)
  {
    swift_once();
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E6918();
  v12 = sub_1CF9E68C8();
  v14 = v13;

  v15 = *(v5 + 8);
  result = v15(v8, v4);
  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v17 = sub_1CF9E5B48();
    sub_1CEFE48D8(v12, v14);
    v18 = [a1 bindObjectParameter_];

    v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v21 = v20;

    MEMORY[0x1D3868CC0](v19, v21);

    MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
    if (qword_1EDEA3498 != -1)
    {
      swift_once();
    }

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CF9E6918();
    v22 = sub_1CF9E68C8();
    v24 = v23;

    result = v15(v8, v4);
    if (v24 >> 60 != 15)
    {
      v25 = sub_1CF9E5B48();
      sub_1CEFE48D8(v22, v24);
      v26 = [a1 bindObjectParameter_];

      v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v29 = v28;

      MEMORY[0x1D3868CC0](v27, v29);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      return v30[0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF3EA3F4(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  v4 = a2 + qword_1EDEBBD78;
  v5 = *(a2 + qword_1EDEBBD78);
  v6 = *(v4 + 8);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA46A80);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000086, 0x80000001CFA46AA0);
  v7 = [a1 bindLongParameter_];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  MEMORY[0x1D3868CC0](v8, v10);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v11 = [a1 bindLongParameter_];
  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;

  MEMORY[0x1D3868CC0](v12, v14);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF3EA590(void *a1, uint64_t a2)
{
  v4 = sub_1CF9E6938();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000099, 0x80000001CFA46870);
  v9 = a2 + qword_1EDEBBD78;
  v10 = *(a2 + qword_1EDEBBD78);
  v11 = *(v9 + 8);
  MEMORY[0x1D3868CC0](v10, v11);
  MEMORY[0x1D3868CC0](0xD0000000000000BFLL, 0x80000001CFA46910);
  MEMORY[0x1D3868CC0](v10, v11);
  MEMORY[0x1D3868CC0](0xD000000000000086, 0x80000001CFA469D0);
  if (qword_1EDEA34B0 != -1)
  {
    swift_once();
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E6918();
  v12 = sub_1CF9E68C8();
  v14 = v13;

  v15 = *(v5 + 8);
  result = v15(v8, v4);
  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v17 = sub_1CF9E5B48();
    sub_1CEFE48D8(v12, v14);
    v18 = [a1 bindObjectParameter_];

    v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v21 = v20;

    MEMORY[0x1D3868CC0](v19, v21);

    MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
    if (qword_1EDEA3498 != -1)
    {
      swift_once();
    }

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CF9E6918();
    v22 = sub_1CF9E68C8();
    v24 = v23;

    result = v15(v8, v4);
    if (v24 >> 60 != 15)
    {
      v25 = sub_1CF9E5B48();
      sub_1CEFE48D8(v22, v24);
      v26 = [a1 bindObjectParameter_];

      v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v29 = v28;

      MEMORY[0x1D3868CC0](v27, v29);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      return v30[0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF3EA910(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000099, 0x80000001CFA46870);
  v4 = a2 + qword_1EDEBBD78;
  v5 = *(a2 + qword_1EDEBBD78);
  v6 = *(v4 + 8);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD0000000000000BFLL, 0x80000001CFA46910);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000086, 0x80000001CFA469D0);
  v7 = [a1 bindLongParameter_];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  MEMORY[0x1D3868CC0](v8, v10);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v11 = [a1 bindLongParameter_];
  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;

  MEMORY[0x1D3868CC0](v12, v14);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF3EAAB0(uint64_t a1, uint64_t a2, int a3)
{
  v11 = MEMORY[0x1E69E7CC0];
  v6 = sub_1CF3E7B04(a1, 0, 1, a2, a3);
  for (i = v7; ; i = v9)
  {

    sub_1CF1E8F14(v6);

    if (!i)
    {
      break;
    }

    v6 = sub_1CF3E7B04(a1, i, 1, a2, a3);
  }

  return v11;
}

uint64_t sub_1CF3EABC4(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v13 = MEMORY[0x1E69E7CC0];
  v8 = sub_1CF3E8548(a1, a2, 0, 1, a3, a4);
  for (i = v9; ; i = v11)
  {

    sub_1CF1E8F38(v8);

    if (!i)
    {
      break;
    }

    v8 = sub_1CF3E8548(a1, a2, i, 1, a3, a4);
  }

  return v13;
}

void sub_1CF3EACE4(void *a1, uint64_t a2, id *a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v118 = a8;
  v130 = a7;
  v159 = a6;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v14 = *(v126 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v119 = (&v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v124 = &v110 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v133 = &v110 - v20;
  v125 = a3;
  v21 = *a3;
  v121 = a4;
  v122 = a5;
  v115 = a2;
  v22 = sub_1CF3EAAB0(v21, a4, a5);

  v132 = *(v22 + 16);
  if (!v132)
  {
LABEL_52:

    return;
  }

  v123 = v8;
  v23 = 0;
  v24 = v14;
  v131 = v22 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v117 = "♻️ Cycle -> <s:";
  v120 = v130 + 1;
  v25 = __OFADD__(v130, 1);
  v116 = v25;
  v111 = "ted in Global Progress:";
  v128 = 0x80000001CFA46670;
  v127 = *MEMORY[0x1E6967258];
  v112 = *MEMORY[0x1E6967298];
  v110 = *MEMORY[0x1E6967280];
  v26 = 1;
  v27 = v133;
  v129 = v22;
  v130 = v14;
  while (v23 < *(v22 + 16))
  {
    sub_1CEFCCBDC(v131 + *(v24 + 72) * v23, v27, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    if (v26)
    {
      v30 = v124;
      sub_1CEFCCBDC(v125, v124, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v31 = *(v30 + *(v126 + 48));
      v27 = v133;
      sub_1CEFCCC44(v30, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      if (v31 != 1)
      {
        v32 = a1[3];
        v33 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v32);
        sub_1CF4FB2BC(0x1000000000000025, v117 | 0x8000000000000000, v32, v33);
      }
    }

    v34 = *v27;
    v35 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v37 = v36;
    if (v35 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v37 == v38)
    {
    }

    else
    {
      v40 = sub_1CF9E8048();

      if ((v40 & 1) == 0)
      {
        v41 = objc_autoreleasePoolPush();
        if (v116)
        {
          goto LABEL_55;
        }

        v156 = v159;
        v154 = v121;
        v155 = v122;
        if (v120 >= 61)
        {
          v42 = a1[3];
          v43 = a1[4];
          v44 = v41;
          __swift_project_boxed_opaque_existential_1(a1, v42);
          sub_1CF4FB2BC(0xD000000000000018, v111 | 0x8000000000000000, v42, v43);
          v45 = v44;
LABEL_50:
          objc_autoreleasePoolPop(v45);
          goto LABEL_9;
        }

        if (*v118 <= 0)
        {
          v107 = a1[3];
          v108 = a1[4];
          v109 = v41;
          __swift_project_boxed_opaque_existential_1(a1, v107);
          sub_1CF4FB2BC(0xD00000000000001BLL, 0x80000001CFA464D0, v107, v108);
          objc_autoreleasePoolPop(v109);

          sub_1CEFCCC44(v27, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          return;
        }

        v113 = *v118;
        v114 = v41;
        v57 = v119;
        sub_1CEFCCBDC(v27, v119, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v58 = *v57;
        v59 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v61 = v60;
        if (v59 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v61 == v62)
        {

          goto LABEL_38;
        }

        v68 = sub_1CF9E8048();

        if (v68)
        {
LABEL_38:
          v69 = v115;
          v70 = v123;
          sub_1CF3E6B78(v58, v121, v122, v136);
          v71 = v126;
          if (v70)
          {

            sub_1CEFE528C(&v138);
          }

          else
          {
            v150 = v136[12];
            v151 = v136[13];
            v152 = v136[14];
            v153 = v137;
            v146 = v136[8];
            v147 = v136[9];
            v148 = v136[10];
            v149 = v136[11];
            v142 = v136[4];
            v143 = v136[5];
            v144 = v136[6];
            v145 = v136[7];
            v138 = v136[0];
            v139 = v136[1];
            v140 = v136[2];
            v141 = v136[3];
          }

          v72 = v119 + v71[13];
          v73 = *(v72 + 13);
          v134[12] = *(v72 + 12);
          v134[13] = v73;
          v134[14] = *(v72 + 14);
          v135 = *(v72 + 30);
          v74 = *(v72 + 9);
          v134[8] = *(v72 + 8);
          v134[9] = v74;
          v75 = *(v72 + 11);
          v134[10] = *(v72 + 10);
          v134[11] = v75;
          v76 = *(v72 + 5);
          v134[4] = *(v72 + 4);
          v134[5] = v76;
          v77 = *(v72 + 7);
          v134[6] = *(v72 + 6);
          v134[7] = v77;
          v78 = *(v72 + 1);
          v134[0] = *v72;
          v134[1] = v78;
          v79 = *(v72 + 3);
          v134[2] = *(v72 + 2);
          v134[3] = v79;
          sub_1CEFCCC44(v134, &qword_1EC4BECF0, &unk_1CF9FEEB0);
          v80 = v151;
          *(v72 + 12) = v150;
          *(v72 + 13) = v80;
          *(v72 + 14) = v152;
          *(v72 + 30) = v153;
          v81 = v147;
          *(v72 + 8) = v146;
          *(v72 + 9) = v81;
          v82 = v149;
          *(v72 + 10) = v148;
          *(v72 + 11) = v82;
          v83 = v143;
          *(v72 + 4) = v142;
          *(v72 + 5) = v83;
          v84 = v145;
          *(v72 + 6) = v144;
          *(v72 + 7) = v84;
          v85 = v139;
          *v72 = v138;
          *(v72 + 1) = v85;
          v86 = v141;
          *(v72 + 2) = v140;
          *(v72 + 3) = v86;
          if (*(v69 + 32))
          {
            v87 = sub_1CF3E518C(v58, v121, v122);
            v123 = 0;
            v57 = v119;
            v89 = v119 + v71[15];
            *v89 = v87;
            *(v89 + 1) = v90;
            v89[16] = v91 & 1;
          }

          else
          {
            sub_1CF3E4284(v58, v121, v122, v157);
            v123 = 0;
            v92 = v157[1];
            v93 = v158;
            v57 = v119;
            v94 = v119 + v71[14];
            *v94 = v157[0];
            *(v94 + 1) = v92;
            v94[32] = v93;
          }
        }

        else
        {
          v71 = v126;
        }

        if (*(v57 + v71[12]) != 1)
        {
          v95 = v57 + v71[14];
          *v95 = 0u;
          *(v95 + 1) = 0u;
          v95[32] = 1;
          v96 = v57 + v71[15];
          *v96 = 0;
          *(v96 + 1) = 0;
          v96[16] = 1;
        }

        v97 = a1[3];
        v98 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v97);
        v99 = sub_1CF814244();
        sub_1CF4FB2BC(v99, v100, v97, v98);

        v101 = v118;
        *v118 = v113 - 1;
        v102 = a1[3];
        v103 = a1[4];
        v104 = __swift_project_boxed_opaque_existential_1(a1, v102);
        MEMORY[0x1EEE9AC00](v104);
        *(&v110 - 6) = v115;
        *(&v110 - 5) = v57;
        *(&v110 - 4) = &v154;
        *(&v110 - 3) = &v156;
        *(&v110 - 2) = v120;
        *(&v110 - 1) = v101;
        v105 = v123;
        sub_1CF4FB38C(32, 0xE100000000000000, sub_1CF4858A8, (&v110 - 8), v102, MEMORY[0x1E69E7CA8] + 8, v103);
        v123 = v105;
        sub_1CEFCCC44(v57, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v27 = v133;
        v22 = v129;
        v24 = v130;
        v45 = v114;
        goto LABEL_50;
      }
    }

    v46 = a1[3];
    v47 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v46);
    *&v138 = 0;
    *(&v138 + 1) = 0xE000000000000000;
    sub_1CF9E7948();

    *&v138 = 0x1000000000000013;
    *(&v138 + 1) = v128;
    v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v50 = v49;
    if (v48 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v50 == v51)
    {

LABEL_7:
      v28 = 0xE500000000000000;
      v29 = 0x746F6F722ELL;
      goto LABEL_8;
    }

    v52 = sub_1CF9E8048();

    if (v52)
    {
      goto LABEL_7;
    }

    v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v55 = v54;
    if (v53 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v55 == v56)
    {

      v29 = 0x676E696B726F772ELL;
      v28 = 0xEB00000000746553;
    }

    else
    {
      v63 = sub_1CF9E8048();

      v29 = 0x676E696B726F772ELL;
      v28 = 0xEB00000000746553;
      if ((v63 & 1) == 0)
      {
        v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v66 = v65;
        if (v64 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v66 == v67)
        {
        }

        else
        {
          v88 = sub_1CF9E8048();

          if ((v88 & 1) == 0)
          {
            v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v28 = v106;
            goto LABEL_8;
          }
        }

        v28 = 0xE600000000000000;
        v29 = 0x68736172742ELL;
      }
    }

LABEL_8:
    MEMORY[0x1D3868CC0](v29, v28);

    MEMORY[0x1D3868CC0](0x3E2E2E2E20, 0xE500000000000000);
    sub_1CF4FB2BC(v138, *(&v138 + 1), v46, v47);

    v27 = v133;
    v22 = v129;
    v24 = v130;
LABEL_9:
    ++v23;
    sub_1CEFCCC44(v27, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v26 = 0;
    if (v132 == v23)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
}

void *sub_1CF3EB7C4(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, int a7, char *a8, uint64_t *a9)
{
  v115 = a8;
  LODWORD(v10) = a7;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v18 = *(v17 - 8);
  v112 = v17;
  v113 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v92[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v106 = &v92[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v114 = &v92[-v24];
  v25 = *a3;
  v107 = a3;
  v26 = *(a3 + 8);
  v110 = a4;
  v111 = a5;
  v105 = a2;
  result = sub_1CF3EABC4(v25, v26, a4, a5);
  v118 = result[2];
  if (!v118)
  {
  }

  v109 = v9;
  v28 = 0;
  v102 = a9;
  v29 = v113;
  v117 = result + ((*(v113 + 80) + 32) & ~*(v113 + 80));
  v30 = v10 == 2;
  v31 = a6 == 1 && v10 == 2;
  v108 = (v115 + 1);
  v32 = __OFADD__(v115, 1);
  v104 = v32;
  v96 = "ted in Global Progress:";
  v97 = "♻️ Cycle -> <s:";
  if (a6)
  {
    v30 = 0;
  }

  v93 = v30;
  v94 = v31;
  v103 = 0x80000001CFA46670;
  if (a6)
  {
    v33 = 0x6873617274;
  }

  else
  {
    v33 = 1953460082;
  }

  v34 = 0xE500000000000000;
  if (!a6)
  {
    v34 = 0xE400000000000000;
  }

  v99 = v34;
  v100 = v33;
  v35 = 1;
  v145 = a6;
  v36 = v114;
  v116 = result;
  v95 = v10;
  while (v28 < result[2])
  {
    sub_1CEFCCBDC(&v117[*(v29 + 72) * v28], v36, &unk_1EC4BE360, &qword_1CF9FE650);
    if (v35)
    {
      v39 = v106;
      sub_1CEFCCBDC(v107, v106, &unk_1EC4BE360, &qword_1CF9FE650);
      v40 = v39[v112[12]];
      sub_1CEFCCC44(v39, &unk_1EC4BE360, &qword_1CF9FE650);
      if (v40 != 1)
      {
        v41 = a1[3];
        v42 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v41);
        sub_1CF4FB2BC(0x1000000000000025, v97 | 0x8000000000000000, v41, v42);
      }
    }

    v43 = *v36;
    if (*(v36 + 8))
    {
      v44 = v145;
      if (*(v36 + 8) == 1)
      {
        if (v10 == 1 && v43 == v145)
        {
          goto LABEL_30;
        }
      }

      else if (v43)
      {
        if (v94)
        {
          goto LABEL_30;
        }
      }

      else if (v93)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v44 = v145;
      if (!v10 && v43 == v145)
      {
LABEL_30:
        v45 = a1[3];
        v46 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v45);
        *&v123 = 0;
        *(&v123 + 1) = 0xE000000000000000;
        sub_1CF9E7948();

        *&v123 = 0x1000000000000013;
        *(&v123 + 1) = v103;
        if (v10)
        {
          v48 = v99;
          v47 = v100;
          if (v10 == 1)
          {
            *&v121[0] = 0x284449656C6966;
            *(&v121[0] + 1) = 0xE700000000000000;
            *&v119[0] = v145;
            goto LABEL_44;
          }
        }

        else
        {
          *&v121[0] = 0x284449636F64;
          *(&v121[0] + 1) = 0xE600000000000000;
          LODWORD(v119[0]) = v145;
LABEL_44:
          v54 = sub_1CF9E7F98();
          MEMORY[0x1D3868CC0](v54);

          MEMORY[0x1D3868CC0](41, 0xE100000000000000);
          v48 = *(&v121[0] + 1);
          v47 = *&v121[0];
        }

        MEMORY[0x1D3868CC0](v47, v48);

        MEMORY[0x1D3868CC0](0x3E2E2E2E20, 0xE500000000000000);
        sub_1CF4FB2BC(v123, *(&v123 + 1), v45, v46);

        v29 = v113;
        v36 = v114;
        goto LABEL_18;
      }
    }

    result = objc_autoreleasePoolPush();
    if (v104)
    {
      goto LABEL_69;
    }

    v141 = v44;
    v142 = v10;
    v139 = v110;
    v140 = v111;
    v115 = result;
    if (v108 < 61)
    {
      if (*v102 <= 0)
      {
        v90 = a1[3];
        v91 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v90);
        sub_1CF4FB2BC(0xD00000000000001BLL, 0x80000001CFA464D0, v90, v91);
        objc_autoreleasePoolPop(v115);

        return sub_1CEFCCC44(v36, &unk_1EC4BE360, &qword_1CF9FE650);
      }

      v101 = *v102;
      v49 = v36;
      v50 = v98;
      sub_1CEFCCBDC(v49, v98, &unk_1EC4BE360, &qword_1CF9FE650);
      v51 = *v50;
      v52 = v50[8];
      if (v50[8])
      {
        v53 = v112;
        if (v52 == 1)
        {
          if (v142 != 1 || v51 != v141)
          {
            goto LABEL_63;
          }

LABEL_57:
          v55 = v109;
          sub_1CF3E7180(v51, v52, v110, v111, v121);
          if (v55)
          {

            sub_1CEFE528C(&v123);
          }

          else
          {
            v135 = v121[12];
            v136 = v121[13];
            v137 = v121[14];
            v138 = v122;
            v131 = v121[8];
            v132 = v121[9];
            v133 = v121[10];
            v134 = v121[11];
            v127 = v121[4];
            v128 = v121[5];
            v129 = v121[6];
            v130 = v121[7];
            v123 = v121[0];
            v124 = v121[1];
            v125 = v121[2];
            v126 = v121[3];
          }

          v56 = &v50[v53[13]];
          v57 = *(v56 + 13);
          v119[12] = *(v56 + 12);
          v119[13] = v57;
          v119[14] = *(v56 + 14);
          v120 = *(v56 + 30);
          v58 = *(v56 + 9);
          v119[8] = *(v56 + 8);
          v119[9] = v58;
          v59 = *(v56 + 11);
          v119[10] = *(v56 + 10);
          v119[11] = v59;
          v60 = *(v56 + 5);
          v119[4] = *(v56 + 4);
          v119[5] = v60;
          v61 = *(v56 + 7);
          v119[6] = *(v56 + 6);
          v119[7] = v61;
          v62 = *(v56 + 1);
          v119[0] = *v56;
          v119[1] = v62;
          v63 = *(v56 + 3);
          v119[2] = *(v56 + 2);
          v119[3] = v63;
          sub_1CEFCCC44(v119, &qword_1EC4BECF0, &unk_1CF9FEEB0);
          v64 = v136;
          *(v56 + 12) = v135;
          *(v56 + 13) = v64;
          *(v56 + 14) = v137;
          *(v56 + 30) = v138;
          v65 = v132;
          *(v56 + 8) = v131;
          *(v56 + 9) = v65;
          v66 = v134;
          *(v56 + 10) = v133;
          *(v56 + 11) = v66;
          v67 = v128;
          *(v56 + 4) = v127;
          *(v56 + 5) = v67;
          v68 = v130;
          *(v56 + 6) = v129;
          *(v56 + 7) = v68;
          v69 = v124;
          *v56 = v123;
          *(v56 + 1) = v69;
          v70 = v126;
          *(v56 + 2) = v125;
          *(v56 + 3) = v70;
          v71 = *v50;
          v72 = v50[8];
          if (*(v105 + 32))
          {
            v73 = sub_1CF3E571C(v71, v72, v110, v111);
            v109 = 0;
            v74 = &v50[v53[15]];
            *v74 = v73;
            *(v74 + 1) = v75;
            v74[16] = v76 & 1;
          }

          else
          {
            sub_1CF3E4858(v71, v72, v110, v111, v143);
            v109 = 0;
            v77 = v143[1];
            v78 = v144;
            v79 = &v50[v53[14]];
            *v79 = v143[0];
            *(v79 + 1) = v77;
            v79[32] = v78;
          }

          goto LABEL_63;
        }

        if (v51)
        {
          if (v142 == 2 && v141 == 1)
          {
            goto LABEL_57;
          }
        }

        else if (v142 == 2 && !v141)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v53 = v112;
        if (!v142 && v51 == v141)
        {
          goto LABEL_57;
        }
      }

LABEL_63:
      if (v50[v53[12]] != 1)
      {
        v80 = &v50[v53[14]];
        *v80 = 0u;
        *(v80 + 1) = 0u;
        v80[32] = 1;
        v81 = &v50[v53[15]];
        *v81 = 0;
        *(v81 + 1) = 0;
        v81[16] = 1;
      }

      v82 = a1[3];
      v83 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v82);
      v84 = sub_1CF814758();
      sub_1CF4FB2BC(v84, v85, v82, v83);

      v10 = v102;
      *v102 = v101 - 1;
      v86 = a1[3];
      v87 = a1[4];
      v88 = __swift_project_boxed_opaque_existential_1(a1, v86);
      MEMORY[0x1EEE9AC00](v88);
      *&v92[-48] = v105;
      *&v92[-40] = v50;
      *&v92[-32] = &v139;
      *&v92[-24] = &v141;
      v89 = v109;
      *&v92[-16] = v108;
      *&v92[-8] = v10;
      sub_1CF4FB38C(32, 0xE100000000000000, sub_1CF4858C0, &v92[-64], v86, MEMORY[0x1E69E7CA8] + 8, v87);
      v109 = v89;
      sub_1CEFCCC44(v50, &unk_1EC4BE360, &qword_1CF9FE650);
      LOBYTE(v10) = v95;
      v29 = v113;
      v36 = v114;
      goto LABEL_17;
    }

    v37 = a1[3];
    v38 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v37);
    sub_1CF4FB2BC(0xD000000000000018, v96 | 0x8000000000000000, v37, v38);
LABEL_17:
    objc_autoreleasePoolPop(v115);
LABEL_18:
    ++v28;
    sub_1CEFCCC44(v36, &unk_1EC4BE360, &qword_1CF9FE650);
    v35 = 0;
    result = v116;
    if (v118 == v28)
    {
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_1CF3EC154(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  v101 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v95 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v107 = *(v14 - 8);
  v108 = v14;
  v15 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v103 = (&v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v95 - v18;
  v19 = type metadata accessor for SnapshotCounters();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v95 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 3000;
  if ((a2 & 1) == 0)
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v134 = v22;
  v109 = a5;
  v110 = a3;
  v23 = sub_1CF3E9848(a4, a5, a2);
  if (v5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1CF9FA440;
    if (qword_1EDEA34B0 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDEA34B8;
    *(v24 + 32) = qword_1EDEA34B8;
    v26 = qword_1EDEA3498;
    v27 = v25;
    v28 = v107;
    if (v26 != -1)
    {
      swift_once();
    }

    v29 = qword_1EDEA34A0;
    *(v24 + 40) = qword_1EDEA34A0;
    v30 = v29;
    v137 = 0;
    v31 = 2;
    v23 = v24;
    v32 = a4;
    goto LABEL_11;
  }

  v31 = *(v23 + 16);
  v137 = 0;
  if (v31)
  {
    v32 = a4;
    v28 = v107;
LABEL_11:
    v104 = (v28 + 48);
    v105 = (v28 + 56);
    v96 = "should fetch updated item ";
    v97 = v13;
    v33 = 32;
    v100 = v32;
    v107 = v23;
    do
    {
      v34 = *(v23 + v33);
      v35 = v32;
      v36 = v137;
      sub_1CF3E6000(v34, v32, v109, v13);
      if (v36)
      {

        (*v105)(v13, 1, 1, v108);
        v137 = 0;
      }

      else
      {
        v137 = 0;
        v106 = v34;
        if ((*v104)(v13, 1, v108) != 1)
        {
          v37 = v13;
          v38 = v102;
          sub_1CEFE55D0(v37, v102, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v133 = v106;
          v131 = v32;
          v132 = v109;
          if (v134 > 0)
          {
            v99 = v134;
            v39 = v103;
            sub_1CEFCCBDC(v38, v103, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            v40 = *v39;
            v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v43 = v42;
            if (v41 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v43 == v44)
            {
            }

            else
            {
              v46 = sub_1CF9E8048();

              if ((v46 & 1) == 0)
              {
                v47 = v108;
                v48 = v103;
LABEL_33:
                if (*(v48 + v47[12]) != 1)
                {
                  v77 = v48 + v47[14];
                  *v77 = 0u;
                  *(v77 + 16) = 0u;
                  *(v77 + 32) = 1;
                  v78 = v48 + v47[15];
                  *v78 = 0;
                  *(v78 + 8) = 0;
                  *(v78 + 16) = 1;
                }

                v79 = v101;
                v80 = v101[3];
                v98 = v101[4];
                __swift_project_boxed_opaque_existential_1(v101, v80);
                v81 = sub_1CF814244();
                v82 = v48;
                sub_1CF4FB2BC(v81, v83, v80, v98);

                v134 = v99 - 1;
                v84 = v79[3];
                v85 = v79[4];
                v86 = __swift_project_boxed_opaque_existential_1(v79, v84);
                MEMORY[0x1EEE9AC00](v86);
                *(&v95 - 6) = v110;
                *(&v95 - 5) = v82;
                *(&v95 - 4) = &v131;
                *(&v95 - 3) = &v133;
                *(&v95 - 2) = 1;
                *(&v95 - 1) = &v134;
                v87 = v137;
                sub_1CF4FB38C(32, 0xE100000000000000, sub_1CF483D78, (&v95 - 8), v84, MEMORY[0x1E69E7CA8] + 8, v85);
                v137 = v87;
                sub_1CEFCCC44(v102, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                v52 = v82;
                v32 = v100;
LABEL_36:
                sub_1CEFCCC44(v52, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

                v13 = v97;
                v23 = v107;
                goto LABEL_14;
              }
            }

            v53 = v100;
            v54 = v137;
            sub_1CF3E6B78(v40, v100, v109, v113);
            if (v54)
            {

              sub_1CEFE528C(&v115);
            }

            else
            {
              v127 = v113[12];
              v128 = v113[13];
              v129 = v113[14];
              v130 = v114;
              v123 = v113[8];
              v124 = v113[9];
              v125 = v113[10];
              v126 = v113[11];
              v119 = v113[4];
              v120 = v113[5];
              v121 = v113[6];
              v122 = v113[7];
              v115 = v113[0];
              v116 = v113[1];
              v117 = v113[2];
              v118 = v113[3];
            }

            v47 = v108;
            v55 = v103 + v108[13];
            v56 = *(v55 + 13);
            v111[12] = *(v55 + 12);
            v111[13] = v56;
            v111[14] = *(v55 + 14);
            v112 = *(v55 + 30);
            v57 = *(v55 + 9);
            v111[8] = *(v55 + 8);
            v111[9] = v57;
            v58 = *(v55 + 11);
            v111[10] = *(v55 + 10);
            v111[11] = v58;
            v59 = *(v55 + 5);
            v111[4] = *(v55 + 4);
            v111[5] = v59;
            v60 = *(v55 + 7);
            v111[6] = *(v55 + 6);
            v111[7] = v60;
            v61 = *(v55 + 1);
            v111[0] = *v55;
            v111[1] = v61;
            v62 = *(v55 + 3);
            v111[2] = *(v55 + 2);
            v111[3] = v62;
            sub_1CEFCCC44(v111, &qword_1EC4BECF0, &unk_1CF9FEEB0);
            v63 = v128;
            *(v55 + 12) = v127;
            *(v55 + 13) = v63;
            *(v55 + 14) = v129;
            *(v55 + 30) = v130;
            v64 = v124;
            *(v55 + 8) = v123;
            *(v55 + 9) = v64;
            v65 = v126;
            *(v55 + 10) = v125;
            *(v55 + 11) = v65;
            v66 = v120;
            *(v55 + 4) = v119;
            *(v55 + 5) = v66;
            v67 = v122;
            *(v55 + 6) = v121;
            *(v55 + 7) = v67;
            v68 = v116;
            *v55 = v115;
            *(v55 + 1) = v68;
            v69 = v118;
            *(v55 + 2) = v117;
            *(v55 + 3) = v69;
            if (*(v110 + 32))
            {
              v70 = sub_1CF3E518C(v40, v53, v109);
              v137 = 0;
              v48 = v103;
              v71 = v103 + v47[15];
              *v71 = v70;
              *(v71 + 1) = v72;
              v71[16] = v73 & 1;
            }

            else
            {
              sub_1CF3E4284(v40, v53, v109, v135);
              v137 = 0;
              v74 = v135[1];
              v75 = v136;
              v48 = v103;
              v76 = v103 + v47[14];
              *v76 = v135[0];
              *(v76 + 1) = v74;
              v76[32] = v75;
            }

            goto LABEL_33;
          }

          v49 = v38;
          v50 = v101[3];
          v51 = v101[4];
          __swift_project_boxed_opaque_existential_1(v101, v50);
          sub_1CF4FB2BC(0xD00000000000001BLL, v96 | 0x8000000000000000, v50, v51);
          v32 = v35;
          v52 = v49;
          goto LABEL_36;
        }
      }

      sub_1CEFCCC44(v13, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v23 = v107;
LABEL_14:
      v33 += 8;
      --v31;
    }

    while (v31);
  }

  v88 = v101[3];
  v89 = v101[4];
  __swift_project_boxed_opaque_existential_1(v101, v88);
  strcpy(v113, "+ counters: ");
  BYTE13(v113[0]) = 0;
  HIWORD(v113[0]) = -5120;
  v90 = qword_1EDEBBA48;
  v91 = v110;
  swift_beginAccess();
  v92 = v95;
  sub_1CEFDA214(v91 + v90, v95, type metadata accessor for SnapshotCounters);
  v93 = sub_1CF6866E8();
  MEMORY[0x1D3868CC0](v93);

  sub_1CEFD5278(v92, type metadata accessor for SnapshotCounters);
  sub_1CF4FB2BC(*&v113[0], *(&v113[0] + 1), v88, v89);
}

uint64_t sub_1CF3ECA90(void *a1, char a2, char *a3, void *a4, uint64_t a5)
{
  v84 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v83 = &v78 - v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v13 = *(v89 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v78 - v17;
  v18 = type metadata accessor for SnapshotCounters();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 3000;
  if ((a2 & 1) == 0)
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v116 = v22;
  v91 = a4;
  v119 = a5;
  v23 = sub_1CF3E9B60(a4, a5, a2);
  if (v5)
  {

    v23 = &unk_1F4BEEF30;
  }

  v24 = *(v23 + 2);
  v90 = a3;
  v25 = v83;
  if (!v24)
  {

    goto LABEL_37;
  }

  v87 = (v13 + 48);
  v88 = v13 + 56;
  v79 = v21;
  v80 = "should fetch updated item ";
  v78 = v23;
  v26 = v23 + 40;
  do
  {
    v27 = *(v26 - 1);
    v28 = *v26;
    sub_1CF3E65B0(v27, *v26, v91, v119, v25);
    if ((*v87)(v25, 1, v89) == 1)
    {
      sub_1CEFCCC44(v25, &qword_1EC4C1B40, &unk_1CF9FCB70);
      goto LABEL_8;
    }

    v29 = v85;
    sub_1CEFE55D0(v25, v85, &unk_1EC4BE360, &qword_1CF9FE650);
    v114 = v27;
    v115 = v28;
    v112 = v91;
    v113 = v119;
    if (v116 > 0)
    {
      v82 = v116;
      v30 = v86;
      sub_1CEFCCBDC(v29, v86, &unk_1EC4BE360, &qword_1CF9FE650);
      v31 = *v30;
      v32 = *(v30 + 8);
      if (*(v30 + 8))
      {
        v33 = v90;
        if (v32 == 1)
        {
          if (v115 != 1 || v31 != v114)
          {
LABEL_27:
            v37 = v89;
LABEL_31:
            if (*(v30 + v37[12]) != 1)
            {
              v63 = v30 + v37[14];
              *v63 = 0u;
              *(v63 + 16) = 0u;
              *(v63 + 32) = 1;
              v64 = v30 + v37[15];
              *v64 = 0;
              *(v64 + 8) = 0;
              *(v64 + 16) = 1;
            }

            v65 = v84;
            v66 = v84[3];
            v81 = v84[4];
            __swift_project_boxed_opaque_existential_1(v84, v66);
            v67 = sub_1CF814758();
            sub_1CF4FB2BC(v67, v68, v66, v81);

            v116 = v82 - 1;
            v69 = v65[3];
            v70 = v65[4];
            v71 = __swift_project_boxed_opaque_existential_1(v65, v69);
            MEMORY[0x1EEE9AC00](v71);
            v34 = v86;
            *(&v78 - 6) = v90;
            *(&v78 - 5) = v34;
            *(&v78 - 4) = &v112;
            *(&v78 - 3) = &v114;
            *(&v78 - 2) = 1;
            *(&v78 - 1) = &v116;
            sub_1CF4FB38C(32, 0xE100000000000000, sub_1CF483F1C, (&v78 - 8), v69, MEMORY[0x1E69E7CA8] + 8, v70);
            sub_1CEFCCC44(v85, &unk_1EC4BE360, &qword_1CF9FE650);
            goto LABEL_34;
          }
        }

        else if (v31)
        {
          if (v115 != 2 || v114 != 1)
          {
            goto LABEL_27;
          }
        }

        else if (v115 != 2 || v114)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v33 = v90;
        if (v115 || v31 != v114)
        {
          goto LABEL_27;
        }
      }

      sub_1CF3E7180(v31, v32, v91, v119, v94);
      v108 = v94[12];
      v109 = v94[13];
      v110 = v94[14];
      v111 = v95;
      v104 = v94[8];
      v105 = v94[9];
      v106 = v94[10];
      v107 = v94[11];
      v100 = v94[4];
      v101 = v94[5];
      v102 = v94[6];
      v103 = v94[7];
      v96 = v94[0];
      v97 = v94[1];
      v98 = v94[2];
      v99 = v94[3];
      v38 = v86;
      v39 = v86 + v89[13];
      v40 = *(v39 + 208);
      v92[12] = *(v39 + 192);
      v92[13] = v40;
      v92[14] = *(v39 + 224);
      v93 = *(v39 + 240);
      v41 = *(v39 + 144);
      v92[8] = *(v39 + 128);
      v92[9] = v41;
      v42 = *(v39 + 176);
      v92[10] = *(v39 + 160);
      v92[11] = v42;
      v43 = *(v39 + 80);
      v92[4] = *(v39 + 64);
      v92[5] = v43;
      v44 = *(v39 + 112);
      v92[6] = *(v39 + 96);
      v92[7] = v44;
      v45 = *(v39 + 16);
      v92[0] = *v39;
      v92[1] = v45;
      v46 = *(v39 + 48);
      v92[2] = *(v39 + 32);
      v92[3] = v46;
      sub_1CEFCCC44(v92, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v47 = v109;
      *(v39 + 192) = v108;
      *(v39 + 208) = v47;
      *(v39 + 224) = v110;
      *(v39 + 240) = v111;
      v48 = v105;
      *(v39 + 128) = v104;
      *(v39 + 144) = v48;
      v49 = v107;
      *(v39 + 160) = v106;
      *(v39 + 176) = v49;
      v50 = v101;
      *(v39 + 64) = v100;
      *(v39 + 80) = v50;
      v51 = v103;
      *(v39 + 96) = v102;
      *(v39 + 112) = v51;
      v52 = v97;
      *v39 = v96;
      *(v39 + 16) = v52;
      v53 = v99;
      *(v39 + 32) = v98;
      *(v39 + 48) = v53;
      v54 = *v38;
      v55 = *(v38 + 8);
      if (v33[32])
      {
        v56 = sub_1CF3E571C(v54, v55, v91, v119);
        v37 = v89;
        v30 = v86;
        v57 = v86 + v89[15];
        *v57 = v56;
        *(v57 + 8) = v58;
        *(v57 + 16) = v59 & 1;
      }

      else
      {
        sub_1CF3E4858(v54, v55, v91, v119, v117);
        v60 = v117[1];
        v61 = v118;
        v37 = v89;
        v30 = v86;
        v62 = v86 + v89[14];
        *v62 = v117[0];
        *(v62 + 16) = v60;
        *(v62 + 32) = v61;
      }

      goto LABEL_31;
    }

    v34 = v29;
    v35 = v84[3];
    v36 = v84[4];
    __swift_project_boxed_opaque_existential_1(v84, v35);
    sub_1CF4FB2BC(0xD00000000000001BLL, v80 | 0x8000000000000000, v35, v36);
LABEL_34:
    sub_1CEFCCC44(v34, &unk_1EC4BE360, &qword_1CF9FE650);
    v25 = v83;
LABEL_8:
    v26 += 16;
    --v24;
  }

  while (v24);

  v21 = v79;
LABEL_37:
  v72 = v84[3];
  v73 = v84[4];
  __swift_project_boxed_opaque_existential_1(v84, v72);
  strcpy(v94, "+ counters: ");
  BYTE13(v94[0]) = 0;
  HIWORD(v94[0]) = -5120;
  v74 = qword_1EDEBBA48;
  v75 = v90;
  swift_beginAccess();
  sub_1CEFDA214(&v75[v74], v21, type metadata accessor for SnapshotCounters);
  v76 = sub_1CF6866E8();
  MEMORY[0x1D3868CC0](v76);

  sub_1CEFD5278(v21, type metadata accessor for SnapshotCounters);
  sub_1CF4FB2BC(*&v94[0], *(&v94[0] + 1), v72, v73);
}

uint64_t sub_1CF3ED2B8(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v5);
  *a2 = v5;
  return 1;
}

uint64_t sub_1CF3ED334(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v6);
  v4 = v6;
  *(a2 + 4) = BYTE4(v6);
  *a2 = v4;
  *(a2 + 5) = 0;
  return 1;
}

uint64_t sub_1CF3ED3BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v5);
  *a2 = v5;
  *(a2 + 8) = 0;
  return 1;
}

uint64_t sub_1CF3ED43C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v7);
  v4 = v8;
  v5 = v9;
  *a2 = v7;
  *(a2 + 12) = v5;
  *(a2 + 8) = v4;
  return 1;
}

uint64_t sub_1CF3ED4C8(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr))
{
  a3(&v7);
  v4 = v8;
  v5 = *(a2 + 8);
  *a2 = v7;
  *(a2 + 16) = v4;

  return 1;
}

uint64_t sub_1CF3ED554(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v5);
  *a2 = 0;
  return 1;
}

uint64_t sub_1CF3ED5F8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE500000000000000;
  v3 = 0x6574617473;
  v4 = 0xD000000000000011;
  v5 = 0x80000001CFA2C070;
  if (a1 != 6)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x80000001CFA2C090;
  }

  v6 = 0xEA0000000000726FLL;
  v7 = 0x7272655F7473616CLL;
  if (a1 != 4)
  {
    v7 = 0x797469726F697270;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 5u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xEF657461645F7972;
  v9 = 0x7465725F7478656ELL;
  if (a1 != 2)
  {
    v9 = 0x7272655F7473616CLL;
    v8 = 0xEF657461645F726FLL;
  }

  if (a1)
  {
    v3 = 0x6F635F7972746572;
    v2 = 0xEB00000000746E75;
  }

  if (a1 > 1u)
  {
    v3 = v9;
    v2 = v8;
  }

  if (a1 <= 3u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a1 <= 3u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v5;
  }

  MEMORY[0x1D3868CC0](v10, v11);

  MEMORY[0x1D3868CC0](1059077408, 0xE400000000000000);
  return a2;
}

void *sub_1CF3ED780(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = v3;
  *(v3 + 48) = dispatch_group_create();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CF9FA450;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
  *(v8 + 32) = sub_1CF387EDC();
  *(v3 + 80) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CF9FC3C0;
  *(v9 + 32) = sub_1CF387EDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
  *(v9 + 33) = sub_1CF387EDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD30, &unk_1CF9FB480);
  *(v9 + 34) = sub_1CF387EDC();
  *(v3 + 88) = v9;
  v10 = (a3 & 2) == 0;
  *(v3 + 40) = v10;
  v11 = *(v3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05E0, &qword_1CFA059A8);
  v12 = swift_allocObject();
  *(v12 + 104) = 0;
  *(v12 + 16) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  strcpy((v12 + 24), "FS_item_jobs");
  *(v12 + 37) = 0;
  *(v12 + 38) = -5120;

  v13 = v11;
  *(v12 + 40) = sub_1CF207018(0x696C756465686373, 0xEB000000005F676ELL);
  *(v12 + 48) = v14;
  *(v12 + 64) = v10;

  MEMORY[0x1D3868CC0](0x6F6A2D6D65746923, 0xEB000000002D7362);
  MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
  *(v12 + 88) = a1;
  *(v12 + 96) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0628, &qword_1CFA05A38);
  swift_allocObject();
  v15 = sub_1CF479160(a1, a2, 0, v13, a3, sub_1CF207C98);

  *(v12 + 56) = v15;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = *(v15 + 136);
  v18 = *(v15 + 144);
  *(v15 + 136) = sub_1CF482DFC;
  *(v15 + 144) = v16;

  sub_1CEFF7124(v17);

  v4[2] = v12;
  v19 = v4[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05E8, &qword_1CFA059B0);
  v20 = swift_allocObject();
  *(v20 + 104) = 0;
  *(v20 + 72) = 0;
  *(v20 + 80) = 0;
  *(v20 + 16) = 1;
  strcpy((v20 + 24), "FP_item_jobs");
  *(v20 + 37) = 0;
  *(v20 + 38) = -5120;

  v21 = v19;
  *(v20 + 40) = sub_1CF207018(0x696C756465686373, 0xEB000000005F676ELL);
  *(v20 + 48) = v22;
  *(v20 + 64) = v10;

  MEMORY[0x1D3868CC0](0x6F6A2D6D65746923, 0xEB000000002D7362);
  MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
  *(v20 + 88) = a1;
  *(v20 + 96) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0630, &unk_1CFA05A40);
  swift_allocObject();
  v23 = sub_1CF479160(a1, a2, 1, v21, a3, sub_1CF207884);

  *(v20 + 56) = v23;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = *(v23 + 136);
  v26 = *(v23 + 144);
  *(v23 + 136) = sub_1CF482DFC;
  *(v23 + 144) = v24;

  sub_1CEFF7124(v25);

  v4[3] = v20;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C05F0, &qword_1CFA059B8);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v4[4] = sub_1CF39DEA4(a1, a2, a3 & 1);
  v4[7] = sub_1CF207454(0, 0xE000000000000000);
  v4[8] = v30;
  v31 = v4[2];
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = *(v31 + 72);
  v34 = *(v31 + 80);
  *(v31 + 72) = sub_1CF482E40;
  *(v31 + 80) = v32;
  swift_retain_n();

  sub_1CEFF7124(v33);

  v35 = v4[3];
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = *(v35 + 72);
  v38 = *(v35 + 80);
  *(v35 + 72) = sub_1CF482E48;
  *(v35 + 80) = v36;

  sub_1CEFF7124(v37);

  v39 = v4[4];

  v40 = swift_allocObject();
  swift_weakInit();

  v41 = *(v39 + 16);
  v42 = *(v39 + 24);
  *(v39 + 16) = sub_1CF482E40;
  *(v39 + 24) = v40;

  sub_1CEFF7124(v41);

  return v4;
}

uint64_t sub_1CF3EDDA4()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  Strong = swift_weakLoadStrong();

  return Strong;
}

uint64_t sub_1CF3EDE10()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    v2 = sub_1CF033A74();

    return v2;
  }

  __break(1u);
  return result;
}

void sub_1CF3EDE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t), uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v17 = v8;
  v18 = a3;
  v19 = a4;
  v11 = a8(a7, &v16, a1, a2);
  if (!v9)
  {
    v12 = v11;
    if ([v11 next])
    {
      do
      {
        v13 = objc_autoreleasePoolPush();
        v14 = sub_1CF1CBD20();
        v15 = sub_1CF24144C(v14, v12, 0);

        a5(v15);

        objc_autoreleasePoolPop(v13);
      }

      while (([v12 next] & 1) != 0);
    }
  }
}

uint64_t sub_1CF3EDFB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](*(a2 + 56), *(a2 + 64));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA45D10);
  v6 = a3(a1);
  MEMORY[0x1D3868CC0](v6);

  return 0x205443454C4553;
}

void sub_1CF3EE07C(uint64_t a1, id a2)
{
  [a2 assertOnQueue];
  if (a1 < 0)
  {
    v5 = (a1 & 0x7FFFFFFFFFFFFFFFLL) + 56;
  }

  else
  {
    v5 = a1 + 56;
  }

  swift_beginAccess();
  sub_1CEFCCBDC(v5, v24, &unk_1EC4C1BE0, &unk_1CF9FD400);
  if (!v25)
  {
    sub_1CEFCCC44(v24, &unk_1EC4C1BE0, &unk_1CF9FD400);
LABEL_33:
    sub_1CF50F200("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLJobRegistry.swift", 133, 2, 194);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
  v6 = swift_dynamicCast();
  if ((v6 & 1) == 0)
  {
    goto LABEL_33;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v7 = *(a1 + 112);
    if (v7 != 3 && (v7 != 4 || *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL | *(a1 + 104)))
    {
LABEL_17:
      v8 = a1;
      goto LABEL_18;
    }

LABEL_14:
    if (*(v2 + 40) == 1)
    {
      MEMORY[0x1EEE9AC00](v6);
      v21 = v23;
      sub_1CF7D5920(sub_1CF480E94, v20, a2);
      return;
    }

    if (a1 < 0)
    {
      v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;
  v9 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x70);
  if (v9 == 3 || v9 == 4 && !(*((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x60) & 0xFFFFFFFFFFFFFFFELL | *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x68)))
  {
    goto LABEL_14;
  }

LABEL_18:
  if (*(v8 + 112) == 1)
  {
    v10 = *(v8 + 96);
    if (v10)
    {
      v11 = *(v8 + 104);
      v12 = *(*v10 + 88);
      v13 = *(v8 + 96);

      v15 = v12(v14);
      if (v17 == 3 && v15 == 1 && v16 == 0)
      {
        MEMORY[0x1EEE9AC00](v15);
        v21 = a1;
        v22 = v23;
        sub_1CF7D5920(sub_1CF480E8C, v20, a2);
        sub_1CF03D7A8(v10, v11, 1u);
        return;
      }

      sub_1CF1DBCF0(v15, v16, v17);
      sub_1CF03D7A8(v10, v11, 1u);
    }
  }

  MEMORY[0x1EEE9AC00](v6);
  v21 = a1;
  v22 = v23;
  sub_1CF7D5920(sub_1CF480E84, v20, a2);
}

uint64_t sub_1CF3EE378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v24 = 0;
  v25 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA45C50);
  v5 = a2 & 0x7FFFFFFFFFFFFFFFLL;
  v7 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x60);
  v6 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x68);
  v8 = *(v5 + 112);
  sub_1CF03C530(v7, v6, v8);
  v9 = sub_1CF065BDC(v7, v6, v8, 0x696C756465686373, 0xEB000000005F676ELL);
  v11 = v10;
  sub_1CF03D7A8(v7, v6, v8);
  MEMORY[0x1D3868CC0](v9, v11);

  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA45C70);
  v12 = *(v5 + 128);
  v23 = MEMORY[0x1E69E6530];
  v22[0] = v12;
  v13 = sub_1CEFF8EA0(v22);
  v15 = v14;
  sub_1CEFCCC44(v22, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v15)
  {
    goto LABEL_4;
  }

  MEMORY[0x1D3868CC0](v13, v15);

  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA45CB0);
  v16 = *(v5 + 120);
  v23 = MEMORY[0x1E69E6810];
  v22[0] = v16;
  v17 = sub_1CEFF8EA0(v22);
  v19 = v18;
  sub_1CEFCCC44(v22, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v19)
  {
    MEMORY[0x1D3868CC0](v17, v19);

    MEMORY[0x1D3868CC0](0x4552454857200A29, 0xEE00203D20646920);
    v20 = sub_1CF1DF1A8(a3, 0);
    MEMORY[0x1D3868CC0](v20);

    return v24;
  }

  else
  {
LABEL_4:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

unint64_t sub_1CF3EE614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();

  v5 = a2 & 0x7FFFFFFFFFFFFFFFLL;
  v7 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x60);
  v6 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x68);
  v8 = *(v5 + 112);
  sub_1CF03C530(v7, v6, v8);
  v9 = sub_1CF065BDC(v7, v6, v8, 0x696C756465686373, 0xEB000000005F676ELL);
  v11 = v10;
  sub_1CF03D7A8(v7, v6, v8);
  MEMORY[0x1D3868CC0](v9, v11);

  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v12 = sub_1CF1DF1A8(a3, 0);
  MEMORY[0x1D3868CC0](v12);

  return 0xD000000000000013;
}

uint64_t sub_1CF3EE760(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(Strong + 136);

  Strong = objc_sync_enter(v4);
  if (Strong)
  {
LABEL_10:
    MEMORY[0x1EEE9AC00](Strong);
    v25 = v4;
    goto LABEL_13;
  }

  swift_beginAccess();
  v11 = v4[2];

  v12 = objc_sync_exit(v4);
  if (v12)
  {
    MEMORY[0x1EEE9AC00](v12);
    v25 = v4;
    goto LABEL_15;
  }

  v4 = sub_1CF383F1C(v11, sub_1CF066914, 0);

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = *(Strong + 144);

  v14 = objc_sync_enter(v13);
  if (v14)
  {
    MEMORY[0x1EEE9AC00](v14);
    v25 = v13;
LABEL_13:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v24, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  swift_beginAccess();
  v15 = v13[2];

  v16 = objc_sync_exit(v13);
  if (v16)
  {
    MEMORY[0x1EEE9AC00](v16);
    v25 = v13;
LABEL_15:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v24, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v17 = sub_1CF383BB4(v15, sub_1CF066914, 0);

  v26 = v4;
  sub_1CF1E8CF8(v17);
  v18 = sub_1CF8E44FC(v4);

  MEMORY[0x1EEE9AC00](v19);
  LOBYTE(v25) = a1 & 1;
  MEMORY[0x1EEE9AC00](v20);
  v23[2] = v18;
  v23[3] = v5;
  v23[4] = a4;
  sub_1CF3EDE94(a2, a3, sub_1CF4842AC, v21, sub_1CF4842B4, v23, sub_1CF480EB4, sub_1CF7D5474);
}

uint64_t sub_1CF3EEB08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 < 0)
  {
    v7 = (a1 & 0x7FFFFFFFFFFFFFFFLL) + 56;
  }

  else
  {
    v7 = a1 + 56;
  }

  swift_beginAccess();
  sub_1CEFCCBDC(v7, &v29, &unk_1EC4C1BE0, &unk_1CF9FD400);
  v8 = v31;
  if (v31)
  {
    v9 = v32;
    __swift_project_boxed_opaque_existential_1(&v29, v31);
    v10 = (*(v9 + 16))(v8, v9);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    sub_1CEFDB148(v10, v12, a2);
  }

  else
  {
    sub_1CEFCCC44(&v29, &unk_1EC4C1BE0, &unk_1CF9FD400);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = sub_1CF3E3388(a1);

    if (v14 < 0)
    {
      v24 = a4[3];
      v25 = a4[4];
      v26 = __swift_project_boxed_opaque_existential_1(a4, v24);
      v29 = 0x3A70669286E27366;
      v30 = 0xA800000000000000;
      v27 = sub_1CF902D78(v26);
      MEMORY[0x1D3868CC0](v27);

      v28 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v28);

      v20 = v29;
      v21 = v30;
      v22 = v24;
      v23 = v25;
    }

    else
    {
      v15 = a4[3];
      v16 = a4[4];
      v17 = __swift_project_boxed_opaque_existential_1(a4, v15);
      v29 = 0x3A73669286E27066;
      v30 = 0xA800000000000000;
      v18 = sub_1CF902D78(v17);
      MEMORY[0x1D3868CC0](v18);

      v19 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v19);

      v20 = v29;
      v21 = v30;
      v22 = v15;
      v23 = v16;
    }

    sub_1CF4FB2BC(v20, v21, v22, v23);

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF3EED98(int a1, void *a2, int a3, void *a4, void **a5, uint64_t a6)
{
  v7 = v6;
  v11 = a3;
  LODWORD(v13) = a1;
  v50 = a2;
  v51 = a3;
  Strong = swift_weakLoadStrong();
  v15 = MEMORY[0x1E69E7CA8];
  if (v13)
  {
    if (Strong)
    {
      v26 = *(Strong + 144);

      v27 = sub_1CF03B3A8(sub_1CF1C546C, sub_1CF1C5468);

      if (!v27)
      {
        v28 = a4[3];
        v29 = a4[4];
        __swift_project_boxed_opaque_existential_1(a4, v28);
        sub_1CF4FB2BC(0xD000000000000018, 0x80000001CFA46B30, v28, v29);
        v30 = a4[3];
        v31 = a4[4];
        __swift_project_boxed_opaque_existential_1(a4, v30);
        sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF484018, v7, v30, v15 + 8, v31);
      }

      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return;
  }

  v49 = v13;
  if (!Strong)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = *(Strong + 136);

  v17 = sub_1CF03B3A8(sub_1CF1C546C, sub_1CF1C5468);

  v48 = v11;
  if (!v17)
  {
    v18 = a4[3];
    v19 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v18);
    sub_1CF4FB2BC(0xD000000000000018, 0x80000001CFA46B30, v18, v19);
    v20 = a4[3];
    v21 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v20);
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF484070, v7, v20, v15 + 8, v21);
  }

  v22 = a4[3];
  v23 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v22);
  sub_1CF4FB2BC(0x72676B636162202BLL, 0xEC000000646E756FLL, v22, v23);
  v24 = a4[3];
  v13 = a4[4];
  v25 = __swift_project_boxed_opaque_existential_1(a4, v24);
  MEMORY[0x1EEE9AC00](v25);
  v44 = v7;
  v45 = &v50;
  v46 = a5;
  v47 = a6;
  sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF48408C, v43, v24, v15 + 8, v13);
  v11 = v48;
  LOBYTE(v13) = v49;
LABEL_9:
  v32 = 24;
  if (v13)
  {
    v33 = sub_1CF4842D8;
  }

  else
  {
    v32 = 16;
    v33 = sub_1CF484120;
  }

  v34 = *(*(v7 + v32) + 56);

  sub_1CF39C304(a2, v11, a4, v33);

  v35 = a4[3];
  v36 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v35);
  sub_1CF4FB2BC(0xD000000000000012, 0x80000001CFA46B50, v35, v36);
  v37 = a4[3];
  v38 = a4[4];
  v39 = __swift_project_boxed_opaque_existential_1(a4, v37);
  MEMORY[0x1EEE9AC00](v39);
  v44 = v7;
  LOBYTE(v45) = v13 & 1;
  v46 = &v50;
  sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF484034, v43, v37, MEMORY[0x1E69E7CA8] + 8, v38);
  v40 = a4[3];
  v41 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v40);
  sub_1CF4FB2BC(0x6A206D657469202BLL, 0xEB0000000073626FLL, v40, v41);
  v42 = *(v7 + 24);
  sub_1CF3AFFF4(a2, v11, a4);
}

uint64_t sub_1CF3EF318()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 136);

    MEMORY[0x1EEE9AC00](v2);
    sub_1CF052DA4(v1, sub_1CF4840D4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3EF3C8()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 144);

    MEMORY[0x1EEE9AC00](v2);
    sub_1CF052DA4(v1, sub_1CF484320);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3EF478(void *a1, unsigned __int8 *a2, uint64_t a3, char a4, uint64_t a5)
{
  v36 = a5;
  v8 = sub_1CF9E6938();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1CF9E7948();
  v40 = v37;
  v41 = v38;
  MEMORY[0x1D3868CC0](0x203D2065646973, 0xE700000000000000);
  v13 = *a2;
  v14 = MEMORY[0x1E69E6530];
  v39 = MEMORY[0x1E69E6530];
  v37 = v13;
  v15 = sub_1CEFF8EA0(&v37);
  v17 = v16;
  sub_1CEFCCC44(&v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v17)
  {
    MEMORY[0x1D3868CC0](v15, v17);

    MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA45CF0);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CF9E6918();
    v18 = sub_1CF9E68C8();
    v20 = v19;

    (*(v9 + 8))(v12, v8);
    if (v20 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v21 = sub_1CF9E5B48();
      sub_1CEFE48D8(v18, v20);
      v22 = [a1 bindObjectParameter_];

      v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v25 = v24;

      MEMORY[0x1D3868CC0](v23, v25);

      MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xEC000000203D2065);
      v26 = qword_1CFA05BE8[a4];
      v39 = v14;
      v37 = v26;
      v27 = sub_1CEFF8EA0(&v37);
      v29 = v28;
      sub_1CEFCCC44(&v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      if (v29)
      {
        MEMORY[0x1D3868CC0](v27, v29);

        MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA44140);
        v37 = 0;
        v30 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v30);

        MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA44210);
        v39 = v14;
        v37 = v36;
        v31 = sub_1CEFF8EA0(&v37);
        v33 = v32;
        sub_1CEFCCC44(&v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        if (v33)
        {
          MEMORY[0x1D3868CC0](v31, v33);

          return v40;
        }
      }
    }
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3EF85C(void *a1, unsigned __int8 *a2, unint64_t a3, char a4, char a5, uint64_t a6)
{
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v32 = 0;
  v33 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x203D2065646973, 0xE700000000000000);
  v12 = *a2;
  v13 = MEMORY[0x1E69E6530];
  v31 = MEMORY[0x1E69E6530];
  v30[0] = v12;
  v14 = sub_1CEFF8EA0(v30);
  v16 = v15;
  sub_1CEFCCC44(v30, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v16)
  {
    goto LABEL_11;
  }

  MEMORY[0x1D3868CC0](v14, v16);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA45CF0);
  if (!a4)
  {
    goto LABEL_6;
  }

  if (a4 != 1)
  {
    a3 = (a3 != 0) << 63;
    goto LABEL_8;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_6:
    a3 = -a3;
  }

LABEL_8:
  v17 = [a1 bindLongParameter_];
  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;

  MEMORY[0x1D3868CC0](v18, v20);

  MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xEC000000203D2065);
  v21 = qword_1CFA05BE8[a5];
  v31 = v13;
  v30[0] = v21;
  v22 = sub_1CEFF8EA0(v30);
  v24 = v23;
  sub_1CEFCCC44(v30, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v24)
  {
    MEMORY[0x1D3868CC0](v22, v24);

    MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA44140);
    v30[0] = 0;
    v25 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v25);

    MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA44210);
    v31 = v13;
    v30[0] = a6;
    v26 = sub_1CEFF8EA0(v30);
    v28 = v27;
    sub_1CEFCCC44(v30, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (v28)
    {
      MEMORY[0x1D3868CC0](v26, v28);

      return v32;
    }
  }

LABEL_11:
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3EFB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t *a7)
{
  v86 = a5;
  v87 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDE8, &qword_1CFA054E8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v80 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDF0, &unk_1CFA054F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v80 - v18;
  v88 = a1;
  v80 = a7;
  v81 = a4;
  if ((a1 & 0x8000000000000000) == 0)
  {
    sub_1CEFCCBDC(a2, &v80 - v18, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v22 = v85;
      if (!*(v88 + 112))
      {
        v23 = Strong;
        v24 = *(v88 + 96);
        v25 = *(v88 + 104);
        v26 = v24 & a3;

        v27 = v24;
        if ((v24 & a3) != 0)
        {
          while (1)
          {
            v39 = v26 & -v26;
            v40 = sub_1CF44058C(v39, v88, v19, v23, v86, v87);
            if (v22)
            {
              break;
            }

            if (v40)
            {
              v41 = -1;
              if ((v27 & v39) != 0)
              {
                v41 = ~v39;
              }

              v27 &= v41;
              v42 = v88;
              v43 = *(v88 + 96);
              v84 = *(v88 + 104);
              v85 = v43;
              *(v88 + 96) = v27;
              *(v42 + 104) = v25;
              v44 = *(v42 + 112);
              *(v42 + 112) = 0;
              sub_1CF03C530(v24, v25, 0);
              sub_1CF03D7A8(v85, v84, v44);
            }

            v38 = v26 == v39;
            v26 ^= v39;
            if (v38)
            {
              goto LABEL_5;
            }
          }

LABEL_35:
          sub_1CF03D7A8(v24, v25, 0);
          sub_1CEFCCC44(v19, &unk_1EC4BFDF0, &unk_1CFA054F0);

          return 1;
        }

LABEL_5:
        v83 = v24;
        v85 = v22;
        if (v27)
        {
          v28 = v27;
        }

        else
        {
          v28 = v25;
        }

        if (v27)
        {
          v29 = v25;
        }

        else
        {
          v29 = 0;
        }

        sub_1CEFCCC44(v19, &unk_1EC4BFDF0, &unk_1CFA054F0);

        v30 = v25;
        v31 = *(v88 + 96);
        v32 = *(v88 + 104);
        v33 = *(v88 + 112);
        sub_1CF03C530(v31, v32, v33);
        v34 = v28;
        v84 = v29;
        v35 = sub_1CF95F010(v28, v29, v27 == 0, v31, v32, v33);
        sub_1CF03D7A8(v31, v32, v33);
        if (v35)
        {
          v36 = v83;
          v37 = v30;
LABEL_45:
          sub_1CF03D7A8(v36, v37, 0);
          return 1;
        }

        v57 = v30;
        v19 = v88;
        v58 = *(v88 + 96);
        v59 = *(v88 + 104);
        v61 = v83;
        v60 = v84;
        *(v88 + 96) = v34;
        *(v19 + 13) = v60;
        v62 = v19[112];
        v19[112] = v27 == 0;
        sub_1CF03C530(v61, v57, 0);
        sub_1CF03D7A8(v58, v59, v62);
        v63 = v85;
        v25 = v81;
        sub_1CF3EE07C(v19, v86);
        v24 = v63;
        sub_1CF03D7A8(v61, v57, 0);
        if (!v63 && !v27)
        {
          v64 = v80;
          v65 = *v80 + 1;
          if (!__OFADD__(*v80, 1))
          {
            goto LABEL_49;
          }

          __break(1u);
          goto LABEL_35;
        }

        return 1;
      }

LABEL_55:
      sub_1CF50F1DC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/JobRegistry.swift", 113, 2, 894);
    }

    goto LABEL_53;
  }

  sub_1CF030B88(v15);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  (*(*(v45 - 8) + 56))(v15, 0, 1, v45);
  if (!swift_weakLoadStrong())
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v46 = v88 & 0x7FFFFFFFFFFFFFFFLL;
  v47 = sub_1CF033A74();

  if (*(v46 + 112))
  {
    goto LABEL_55;
  }

  v48 = *(v46 + 96);
  v49 = *(v46 + 104);
  v50 = v48 & a3;

  v51 = v85;
  if ((v48 & a3) != 0)
  {
    v52 = v48;
    v82 = v47;
    while (1)
    {
      v53 = v50 & -v50;
      sub_1CF43D19C(v53, v46, v15, v47, v86, v87);
      if (v51)
      {
        break;
      }

      if (v54)
      {
        if ((v52 & v53) != 0)
        {
          v55 = ~v53;
        }

        else
        {
          v55 = -1;
        }

        v52 &= v55;
        v56 = *(v46 + 96);
        v84 = *(v46 + 104);
        v85 = v56;
        *(v46 + 96) = v52;
        *(v46 + 104) = v49;
        LODWORD(v83) = *(v46 + 112);
        *(v46 + 112) = 0;
        sub_1CF03C530(v48, v49, 0);
        sub_1CF03D7A8(v85, v84, v83);
        v47 = v82;
      }

      v38 = v50 == v53;
      v50 ^= v53;
      if (v38)
      {
        goto LABEL_37;
      }
    }

    sub_1CF03D7A8(v48, v49, 0);
    sub_1CEFCCC44(v15, &qword_1EC4BFDE8, &qword_1CFA054E8);

    return 1;
  }

  v52 = v48;
LABEL_37:
  LODWORD(v83) = v52 == 0;
  if (v52)
  {
    v66 = v52;
  }

  else
  {
    v66 = v49;
  }

  v84 = v66;
  v85 = v51;
  if (v52)
  {
    v67 = v49;
  }

  else
  {
    v67 = 0;
  }

  sub_1CEFCCC44(v15, &qword_1EC4BFDE8, &qword_1CFA054E8);

  v68 = *(v46 + 96);
  v69 = *(v46 + 104);
  v70 = *(v46 + 112);
  sub_1CF03C530(v68, v69, v70);
  v82 = v67;
  v71 = v67;
  v72 = v83;
  v73 = sub_1CF95F010(v84, v71, v83, v68, v69, v70);
  sub_1CF03D7A8(v68, v69, v70);
  if (v73)
  {
    v36 = v48;
    v37 = v49;
    goto LABEL_45;
  }

  v74 = *(v46 + 96);
  v75 = *(v46 + 104);
  v76 = v82;
  *(v46 + 96) = v84;
  *(v46 + 104) = v76;
  v77 = *(v46 + 112);
  *(v46 + 112) = v72;
  sub_1CF03C530(v48, v49, 0);
  sub_1CF03D7A8(v74, v75, v77);
  v78 = v85;
  sub_1CF3EE07C(v88, v86);
  sub_1CF03D7A8(v48, v49, 0);
  if (!v78 && !v52)
  {
    v64 = v80;
    v65 = *v80 + 1;
    if (!__OFADD__(*v80, 1))
    {
LABEL_49:
      *v64 = v65;
      return 1;
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  return 1;
}

void sub_1CF3F0224(void *a1, void *a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v32 - v12);
  v14 = sub_1CF02C1C8(&v37);
  v15 = HIBYTE(v40);
  if (v15 > 0xFE)
  {
    goto LABEL_2;
  }

  if (!v15)
  {
    v35 = v39;
    v36 = v40;
    v32 = a2;
    v33 = a3;
    v41 = 0;
    v34 = v38 < 3u;
    v26 = MEMORY[0x1EEE9AC00](v14);
    *(&v32 - 4) = &v34;
    *(&v32 - 3) = &v35;
    *(&v32 - 16) = v27;
    *(&v32 - 1) = v28;
    MEMORY[0x1EEE9AC00](v26);
    *(&v32 - 6) = a1;
    *(&v32 - 5) = v29;
    *(&v32 - 4) = v3;
    *(&v32 - 3) = &v32;
    *(&v32 - 2) = &v41;
    sub_1CF3EDE94(a2, a3, sub_1CF480DD0, v30, sub_1CF480DE8, (&v32 - 8), sub_1CF480EB4, sub_1CF7D55FC);
    if (v4)
    {
      return;
    }

    v5 = 0;
    if (v41 <= 0)
    {
      goto LABEL_2;
    }

    goto LABEL_11;
  }

  if (v15 == 1)
  {
    v20 = v39;
    v32 = v39;
    v35 = a2;
    v36 = a3;
    v41 = 0;
    v34 = v38 > 2u;
    v21 = MEMORY[0x1EEE9AC00](v14);
    *(&v32 - 4) = &v34;
    *(&v32 - 3) = &v32;
    *(&v32 - 16) = v22;
    *(&v32 - 1) = v23;
    MEMORY[0x1EEE9AC00](v21);
    *(&v32 - 6) = a1;
    *(&v32 - 5) = v24;
    *(&v32 - 4) = v3;
    *(&v32 - 3) = &v35;
    *(&v32 - 2) = &v41;
    sub_1CF3EDE94(a2, a3, sub_1CF480DBC, v25, sub_1CF485AC0, (&v32 - 8), sub_1CF480EB4, sub_1CF7D55FC);
    if (v4)
    {

      return;
    }

    if (v41 > 0 && swift_weakLoadStrong())
    {
      sub_1CF7FC438();
    }

    else
    {
    }

    v16 = 0;
    goto LABEL_3;
  }

  MEMORY[0x1EEE9AC00](v14);
  *(&v32 - 2) = v31;
  sub_1CF7D5920(sub_1CF480E34, (&v32 - 4), a2);
  if (v4)
  {
    return;
  }

  if ([a2 changes])
  {
    sub_1CF7D5920(sub_1CF4D1C20, 0, a2);
    v5 = 0;
    if (![a2 changes])
    {
LABEL_2:
      v16 = v5;
      goto LABEL_3;
    }

LABEL_11:
    if (swift_weakLoadStrong())
    {
      sub_1CF7FC438();
    }

    goto LABEL_2;
  }

  v16 = 0;
LABEL_3:
  v17 = v3[2];
  sub_1CF3AD104(a1, a2, a3);
  if (!v16)
  {
    v18 = v6[3];
    sub_1CF030B88(v13);
    sub_1CF3ADBB0(v13, a2, a3);
    sub_1CEFCCC44(v13, &unk_1EC4C4E20, &unk_1CFA05350);
    v19 = v6[4];
    sub_1CF3A1454(a1, a2, a3);
  }
}

uint64_t sub_1CF3F06B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C05D0, &unk_1CF9FE620);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CF9FC3C0;
  v2 = v0[2];
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05E0, &qword_1CFA059A8);
  *(v1 + 64) = &off_1F4BFD928;
  *(v1 + 32) = v2;
  v3 = v0[3];
  *(v1 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05E8, &qword_1CFA059B0);
  *(v1 + 104) = &off_1F4BFD928;
  *(v1 + 72) = v3;
  v4 = v0[4];
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C05F0, &qword_1CFA059B8);
  *(v1 + 144) = &off_1F4BFCA18;
  *(v1 + 112) = v4;

  return v1;
}

void sub_1CF3F079C(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v5);
  v3 = *a1;
  *a1 = v5;
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;

  sub_1CF480F84(v3, v4);
}

double sub_1CF3F0810@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v5 = a2 + v4[13];
  sub_1CEFE528C(v60);
  v6 = v60[13];
  *(v5 + 12) = v60[12];
  *(v5 + 13) = v6;
  *(v5 + 14) = v60[14];
  *(v5 + 30) = v61;
  v7 = v60[9];
  *(v5 + 8) = v60[8];
  *(v5 + 9) = v7;
  v8 = v60[11];
  *(v5 + 10) = v60[10];
  *(v5 + 11) = v8;
  v9 = v60[5];
  *(v5 + 4) = v60[4];
  *(v5 + 5) = v9;
  v10 = v60[7];
  *(v5 + 6) = v60[6];
  *(v5 + 7) = v10;
  v11 = v60[1];
  *v5 = v60[0];
  *(v5 + 1) = v11;
  v12 = v60[3];
  *(v5 + 2) = v60[2];
  *(v5 + 3) = v12;
  v13 = a2 + v4[14];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[32] = 1;
  v14 = a2 + v4[15];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = [a1 itemID];
  v16 = [v15 identifier];

  *a2 = v16;
  v17 = [a1 itemID];
  v18 = [v17 identifier];

  if (qword_1EDEA3498 != -1)
  {
    swift_once();
  }

  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v20;
  if (v19 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v21 == v22)
  {
    goto LABEL_5;
  }

  v23 = sub_1CF9E8048();

  if (v23)
  {
    goto LABEL_7;
  }

  v48 = [a1 itemID];
  v18 = [v48 identifier];

  if (qword_1EDEA34B0 != -1)
  {
    swift_once();
  }

  v49 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v51 = v50;
  if (v49 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v51 == v52)
  {
LABEL_5:
  }

  else
  {
    v53 = sub_1CF9E8048();

    if ((v53 & 1) == 0)
    {
      a2[1] = sub_1CF0689E4();
      goto LABEL_8;
    }
  }

LABEL_7:
  v24 = [a1 itemID];
  v25 = [v24 identifier];

  a2[1] = v25;
LABEL_8:
  sub_1CF06BC9C(a2 + 2);
  v26 = [a1 filename];
  v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v29 = v28;

  *&v58[0] = v27;
  *(&v58[0] + 1) = v29;
  *&v56[0] = 58;
  *(&v56[0] + 1) = 0xE100000000000000;
  v55 = sub_1CEFE4E68();
  v54 = MEMORY[0x1E69E6158];
  v30 = sub_1CF9E7668();
  v32 = v31;

  a2[10] = v30;
  a2[11] = v32;
  sub_1CEFF54BC(a2 + v4[12]);
  sub_1CF06C190(v56);
  v33 = *(v5 + 13);
  v58[12] = *(v5 + 12);
  v58[13] = v33;
  v58[14] = *(v5 + 14);
  v59 = *(v5 + 30);
  v34 = *(v5 + 9);
  v58[8] = *(v5 + 8);
  v58[9] = v34;
  v35 = *(v5 + 11);
  v58[10] = *(v5 + 10);
  v58[11] = v35;
  v36 = *(v5 + 5);
  v58[4] = *(v5 + 4);
  v58[5] = v36;
  v37 = *(v5 + 7);
  v58[6] = *(v5 + 6);
  v58[7] = v37;
  v38 = *(v5 + 1);
  v58[0] = *v5;
  v58[1] = v38;
  v39 = *(v5 + 3);
  v58[2] = *(v5 + 2);
  v58[3] = v39;
  sub_1CEFCCC44(v58, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  v40 = v56[13];
  *(v5 + 12) = v56[12];
  *(v5 + 13) = v40;
  *(v5 + 14) = v56[14];
  *(v5 + 30) = v57;
  v41 = v56[9];
  *(v5 + 8) = v56[8];
  *(v5 + 9) = v41;
  v42 = v56[11];
  *(v5 + 10) = v56[10];
  *(v5 + 11) = v42;
  v43 = v56[5];
  *(v5 + 4) = v56[4];
  *(v5 + 5) = v43;
  v44 = v56[7];
  *(v5 + 6) = v56[6];
  *(v5 + 7) = v44;
  v45 = v56[1];
  *v5 = v56[0];
  *(v5 + 1) = v45;
  v46 = v56[3];
  *(v5 + 2) = v56[2];
  *(v5 + 3) = v46;
  Fields.init(_:)([a1 unsupportedFields]);

  *(a2 + v4[16]) = 47;
  result = 0.0;
  *(a2 + v4[17]) = xmmword_1CF9FEC20;
  return result;
}

uint64_t sub_1CF3F0D38(void *a1, char a2, uint64_t a3, char a4)
{
  v29 = a3;
  v30 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0230, &unk_1CFA05740);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = *v8;
    v10 = v8;
    v11 = sub_1CF387EDC();
    v12 = (*(*v4 + 360))(v11, v10 + 18, v10[15], a2 & 1, &v29, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0250, &unk_1CFA05760);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *v13;
      v15 = v13;
      v16 = sub_1CF387EDC();
      v12 = (*(*v4 + 368))(v16, v15 + 18, v15[15], a2 & 1, &v29, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    }

    else
    {
      (*(*a1 + 440))(&v27);
      v18 = v28;
      if (HIBYTE(v28) < 0xFFu)
      {
        if ((v28 & 0x100) != 0)
        {
          v25 = v27;
          v26 = v28;
          v23 = *a1;
          v24 = sub_1CF387EDC();
          v12 = (*(*v4 + 368))(v24, &v25, a1[15], a2 & 1, &v29, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        }

        else
        {
          v19 = v27;
          v25 = v27;
          v20 = *a1;
          v21 = sub_1CF387EDC();
          v22 = (*(*v4 + 360))(v21, &v25, a1[15], a2 & 1, &v29, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          sub_1CF4804C0(v19, v18);
          if (!v5)
          {
            v12 = v22;
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  return v12 & 1;
}

uint64_t sub_1CF3F1098(void *a1, char a2, uint64_t a3, char a4)
{
  v29 = a3;
  v30 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF30, &unk_1CFA05600);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = *v8;
    v10 = v8;
    v11 = sub_1CF388E8C();
    v12 = (*(*v4 + 360))(v11, v10 + 18, v10[15], a2 & 1, &v29, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0200, &unk_1CFA05710);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *v13;
      v15 = v13;
      v16 = sub_1CF388E8C();
      v12 = (*(*v4 + 368))(v16, v15 + 18, v15[15], a2 & 1, &v29, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    }

    else
    {
      (*(*a1 + 440))(&v27);
      v18 = v28;
      if (HIBYTE(v28) < 0xFFu)
      {
        if ((v28 & 0x100) != 0)
        {
          v21 = v27;
          v25 = v27;
          v22 = *a1;
          v23 = sub_1CF388E8C();
          v24 = (*(*v4 + 368))(v23, &v25, a1[15], a2 & 1, &v29, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          sub_1CF47FDFC(v21, v18);
          if (!v5)
          {
            v12 = v24;
          }
        }

        else
        {
          v25 = v27;
          v26 = v28;
          v19 = *a1;
          v20 = sub_1CF388E8C();
          v12 = (*(*v4 + 360))(v20, &v25, a1[15], a2 & 1, &v29, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  return v12 & 1;
}

unint64_t sub_1CF3F13F8(void *a1, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 3u)
  {
    if (a4 > 5u)
    {
      if (a4 != 6)
      {
        return 0xD000000000000010;
      }

      strcpy(v47, "propagate(");
      BYTE3(v47[1]) = 0;
      HIDWORD(v47[1]) = -369098752;
      sub_1CF1FB2C0(a1, a2, a3, 6u);
      v21 = NSFileProviderItemIdentifier.description.getter();
      MEMORY[0x1D3868CC0](v21);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v11 = a1;
      v12 = a2;
      v13 = a3;
      v14 = 6;
    }

    else
    {
      if (a4 != 4)
      {
        v31 = a1;
        sub_1CF9E7948();

        v47[0] = 0xD000000000000017;
        v47[1] = 0x80000001CFA46B90;
        v32 = NSFileProviderItemIdentifier.description.getter();
        MEMORY[0x1D3868CC0](v32);

        MEMORY[0x1D3868CC0](41, 0xE100000000000000);

        return v47[0];
      }

      v9 = a1;
      sub_1CF9E7948();

      v47[0] = 0xD000000000000014;
      v47[1] = 0x80000001CFA46BD0;
      v10 = NSFileProviderItemIdentifier.description.getter();
      MEMORY[0x1D3868CC0](v10);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v11 = a1;
      v12 = a2;
      v13 = a3;
      v14 = 4;
    }

LABEL_18:
    sub_1CF484340(v11, v12, v13, v14);
    return v47[0];
  }

  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      if (a2)
      {
        v16 = a1;
        v5 = a2;
        sub_1CF9E7948();

        v47[0] = 0x286863746566;
        v47[1] = 0xE600000000000000;
        v17 = NSFileProviderItemIdentifier.description.getter();
        MEMORY[0x1D3868CC0](v17);

        MEMORY[0x1D3868CC0](0x203A6E69202CLL, 0xE600000000000000);
        v18 = NSFileProviderItemIdentifier.description.getter();
        MEMORY[0x1D3868CC0](v18);

        MEMORY[0x1D3868CC0](41, 0xE100000000000000);

LABEL_24:
        return v47[0];
      }

      strcpy(v47, "fetchUnkown(");
      BYTE5(v47[1]) = 0;
      HIWORD(v47[1]) = -5120;
      v5 = a1;
      v6 = 2;
LABEL_23:
      sub_1CF1FB2C0(a1, a2, a3, v6);
      v43 = NSFileProviderItemIdentifier.description.getter();
      MEMORY[0x1D3868CC0](v43);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      goto LABEL_24;
    }

    v47[0] = 0x287473696CLL;
    v47[1] = 0xE500000000000000;
    sub_1CF1FB2C0(a1, a2, a3, 3u);
    v35 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v35);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v11 = a1;
    v12 = a2;
    v13 = a3;
    v14 = 3;
    goto LABEL_18;
  }

  if (!a4)
  {
    strcpy(v47, "create(");
    v47[1] = 0xE700000000000000;
    v5 = a1;
    v6 = 0;
    goto LABEL_23;
  }

  v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v26 = v25;
  if (v24 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v26 == v27)
  {
    v28 = a1;
    v29 = a2;
    v30 = a3;
  }

  else
  {
    v37 = sub_1CF9E8048();
    v38 = a1;
    v39 = a2;
    v40 = a3;

    if ((v37 & 1) == 0)
    {
      sub_1CF9E7948();

      strcpy(v47, "update(");
      v47[1] = 0xE700000000000000;
      v44 = NSFileProviderItemIdentifier.description.getter();
      MEMORY[0x1D3868CC0](v44);

      MEMORY[0x1D3868CC0](0x203A6E69202CLL, 0xE600000000000000);
      v45 = NSFileProviderItemIdentifier.description.getter();
      MEMORY[0x1D3868CC0](v45);

      MEMORY[0x1D3868CC0](540945696, 0xE400000000000000);
      v46 = NSFileProviderItemIdentifier.description.getter();
      MEMORY[0x1D3868CC0](v46);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      return v47[0];
    }
  }

  sub_1CF9E7948();

  strcpy(v47, "update(");
  v47[1] = 0xE700000000000000;
  v41 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v41);

  MEMORY[0x1D3868CC0](0x203A6E69202CLL, 0xE600000000000000);
  v42 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v42);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  return v47[0];
}

unint64_t sub_1CF3F19CC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 41);
  if (v5 <= 3)
  {
    v6 = v2[2];
    v7 = *(v2 + 24);
    if (*(v2 + 41) > 1u)
    {
      if (v5 != 2)
      {
        v8 = 0x287473696CLL;
        goto LABEL_21;
      }

      if (v7 == 255)
      {
        v8 = 0x6B6E556863746566;
        goto LABEL_21;
      }

      sub_1CF9E7948();

      v16 = 0x286863746566;
    }

    else
    {
      if (!*(v2 + 41))
      {
        v8 = 0x28657461657263;
LABEL_21:
        v24 = v8;
LABEL_22:
        v12 = VFSItemID.description.getter(a1, a2);
        MEMORY[0x1D3868CC0](v12);

        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        return v24;
      }

      v10 = v2[4];
      v11 = *(v2 + 40);
      if (*(v2 + 24))
      {
        if (v7 == 1)
        {
          if (v11 != 1 || v6 != v10)
          {
LABEL_36:
            sub_1CF9E7948();

            v24 = 0x28657461647075;
            v20 = VFSItemID.description.getter(v18, v19);
            MEMORY[0x1D3868CC0](v20);

            v21 = MEMORY[0x1D3868CC0](0x203A6E69202CLL, 0xE600000000000000);
            v23 = VFSItemID.description.getter(v21, v22);
            MEMORY[0x1D3868CC0](v23);

            a1 = MEMORY[0x1D3868CC0](540945696, 0xE400000000000000);
            goto LABEL_22;
          }
        }

        else if (v6)
        {
          if (v11 != 2 || v10 != 1)
          {
            goto LABEL_36;
          }
        }

        else if (v11 != 2 || v10)
        {
          goto LABEL_36;
        }
      }

      else if (*(v2 + 40) || v6 != v10)
      {
        goto LABEL_36;
      }

      sub_1CF9E7948();

      v16 = 0x28657461647075;
    }

    v24 = v16;
    v17 = VFSItemID.description.getter(v14, v15);
    MEMORY[0x1D3868CC0](v17);

    a1 = MEMORY[0x1D3868CC0](0x203A6E69202CLL, 0xE600000000000000);
    goto LABEL_22;
  }

  if (*(v2 + 41) <= 5u)
  {
    if (v5 == 4)
    {
      sub_1CF9E7948();

      v9 = 0xD000000000000014;
    }

    else
    {
      sub_1CF9E7948();

      v9 = 0xD000000000000017;
    }

    v24 = v9;
    goto LABEL_22;
  }

  if (v5 == 6)
  {
    v8 = 0x74616761706F7270;
    goto LABEL_21;
  }

  return 0xD000000000000010;
}

uint64_t sub_1CF3F1D48()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = sub_1CF3F2030(v0, &qword_1EC4C0670, &qword_1CFA129D0, &qword_1EC4C0678);
  v3 = objc_sync_exit(v0);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

uint64_t sub_1CF3F1EBC()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = sub_1CF3F2030(v0, &unk_1EC4C4EF0, &unk_1CFA05A90, qword_1EDEAA350);
  v3 = objc_sync_exit(v0);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

uint64_t sub_1CF3F2030(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_1CF9E7948();

  swift_beginAccess();
  v8 = *(a1 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1CEFCCCEC(a4, a2, a3);
  v9 = sub_1CF9E6FA8();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);

  MEMORY[0x1D3868CC0](0x676E69646E657020, 0xEE003A6873756C46);
  swift_beginAccess();
  v12 = *(a1 + 24);

  v13 = sub_1CF9E6FA8();
  v15 = v14;

  MEMORY[0x1D3868CC0](v13, v15);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0x676E696E6E75723CLL;
}

void sub_1CF3F21DC(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  v30 = a1;
  v4 = *(a1 + 16);
  v33 = v4 + 64;
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v32 = (v5 + 63) >> 6;
  v35 = v4;

  v8 = 0;
  if (v7)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = v10 | (v9 << 6);
      v12 = *(v35 + 48) + 32 * v11;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = (*(v35 + 56) + 16 * v11);
      v17 = v16[1];
      v36 = *v16;
      v38 = a2[3];
      v39 = a2[4];
      v18 = *(v12 + 24);
      __swift_project_boxed_opaque_existential_1(a2, v38);
      v37 = v15;
      sub_1CF1FB2C0(v13, v14, v15, v18);

      sub_1CF9E7948();
      v19 = sub_1CF3F13F8(v13, v14, v15, v18);
      v21 = v20;

      MEMORY[0x1D3868CC0](0x8FB8EFB696E2203ALL, 0xA900000000000020);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE650, &qword_1CF9FE490);
      v23 = MEMORY[0x1D3868FE0](v36, v22);
      MEMORY[0x1D3868CC0](v23);

      MEMORY[0x1D3868CC0](0x208F949FF02020, 0xA700000000000000);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
      v25 = MEMORY[0x1D3868FE0](v17, v24);
      MEMORY[0x1D3868CC0](v25);

      sub_1CF4FB2BC(v19, v21, v38, v39);

      sub_1CF484340(v13, v14, v37, v18);
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v32)
    {
      break;
    }

    v7 = *(v33 + 8 * v9);
    ++v8;
    if (v7)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  if (a3)
  {
    v26 = a2[3];
    v27 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v26);
    sub_1CF4FB2BC(0x2064656B636F6C62, 0xED00003A73626F6ALL, v26, v27);
    v28 = a2[3];
    v29 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v28);
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF4843C8, v30, v28, MEMORY[0x1E69E7CA8] + 8, v29);
  }
}

uint64_t sub_1CF3F2520(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  v36 = a1;
  v4 = *(a1 + 16);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(a1 + 16) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v39 = *(a1 + 16);

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v10)) | (v14 << 6);
      v16 = *(v39 + 48) + 48 * v15;
      v40 = *v16;
      v42 = *(v16 + 16);
      v17 = *(v16 + 32);
      v18 = *(v16 + 40);
      v19 = *(v16 + 41);
      v20 = (*(v39 + 56) + 16 * v15);
      v21 = *v20;
      v22 = v20[1];

      if (!v21)
      {
        break;
      }

      v10 &= v10 - 1;
      v41 = a2[3];
      v43 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v41);
      v23 = sub_1CF9E7948();
      v25 = sub_1CF3F19CC(v23, v24);
      v27 = v26;

      MEMORY[0x1D3868CC0](0x8FB8EFB696E2203ALL, 0xA900000000000020);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE650, &qword_1CF9FE490);
      v29 = MEMORY[0x1D3868FE0](v21, v28);
      MEMORY[0x1D3868CC0](v29);

      MEMORY[0x1D3868CC0](0x208F949FF02020, 0xA700000000000000);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
      v31 = MEMORY[0x1D3868FE0](v22, v30);
      MEMORY[0x1D3868CC0](v31);

      sub_1CF4FB2BC(v25, v27, v41, v43);

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    if (a3)
    {
      v32 = a2[3];
      v33 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v32);
      sub_1CF4FB2BC(0x2064656B636F6C62, 0xED00003A73626F6ALL, v32, v33);
      v34 = a2[3];
      v35 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v34);
      return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF4840F4, v36, v34, MEMORY[0x1E69E7CA8] + 8, v35);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_11;
      }

      v10 = *(v6 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3F2840(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v5 = *(a2 + 32);
  v6 = *(v5 + 64);
  v29 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v33 = *(a2 + 32);

  for (i = 0; v9; result = )
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = (v13 << 10) | (16 * v14);
    v16 = (*(v33 + 48) + v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = (*(v33 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v34 = a1[3];
    v37 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v34);

    sub_1CF9E7948();

    v35 = v18;
    v36 = v17;
    MEMORY[0x1D3868CC0](0x3A73656C7572203ALL, 0xE900000000000020);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v23 = MEMORY[0x1D3868FE0](v20, v22);
    v25 = v24;

    MEMORY[0x1D3868CC0](v23, v25);

    MEMORY[0x1D3868CC0](0x656B636F6C62202CLL, 0xEE00203A79622064);
    v26 = MEMORY[0x1D3868FE0](v21, v22);
    v28 = v27;

    MEMORY[0x1D3868CC0](v26, v28);

    sub_1CF4FB2BC(v35, v36, v34, v37);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v29 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF3F2AA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = a4;
  v11 = a5;
  v6 = *(a2 + 32);
  if ((v6[32] & 1) == 0)
  {
    v8 = result;
    result = (*(*v6 + 320))(result + 8, 0, &v10, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (!v5)
    {
      if (result == 2 || (result & 1) == 0)
      {
        v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48);
        result = type metadata accessor for ItemMetadata();
        v9[*(result + 48)] = v9[*(result + 44)];
      }

      else
      {
        return sub_1CF48221C(v8, a3);
      }
    }
  }

  return result;
}

uint64_t sub_1CF3F2B8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = a4;
  v11 = a5;
  v6 = *(a2 + 32);
  if ((v6[32] & 1) == 0)
  {
    v8 = result;
    result = (*(*v6 + 320))(result + 16, 0, &v10, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (!v5)
    {
      if (result == 2 || (result & 1) == 0)
      {
        v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
        result = type metadata accessor for ItemMetadata();
        v9[*(result + 48)] = v9[*(result + 44)];
      }

      else
      {
        return sub_1CF481944(v8, a3);
      }
    }
  }

  return result;
}

uint64_t sub_1CF3F2C78(uint64_t a1, id *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v15 = sub_1CF9E5CF8();
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a6;
  v71 = a7;
  v21 = *(a4 + 32);
  if (v21[32])
  {
    return result;
  }

  v22 = *a3;
  if ((*a3 & 0x20002) == 0)
  {
    return result;
  }

  v67 = a1;
  v68 = a5;
  *&v69 = v22;
  v65 = v18;
  v66 = result;
  v23 = (*v21 + 320);
  v24 = *v23;
  result = (*v23)(a2 + 1, 0, &v70, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v7)
  {
    return result;
  }

  if (result == 2)
  {
    if ((v69 & 2) != 0)
    {
      v64 = 0;
LABEL_11:
      if ((*(**(a4 + 24) + 336))(0, 68, &v70, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970))
      {
        v29 = v67;
        v28 = v24(v67, 0, &v70, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v30 = v29;
      }

      else
      {
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v30 = v67;
        v49 = v67 + *(v48 + 48);
        v28 = *(v49 + *(type metadata accessor for ItemMetadata() + 48));
      }

      v27 = v68;
      if (v64)
      {
        goto LABEL_26;
      }

      if (v28)
      {
        v57 = *a2;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v59 = v58;
        result = (*(v65 + 8))(v20, v66);
        v60 = v59 * 1000000000.0;
        if (COERCE__INT64(fabs(v59 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if (v60 <= -9.22337204e18)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if (v60 >= 9.22337204e18)
        {
LABEL_51:
          __break(1u);
          return result;
        }

        v61 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02E0, &unk_1CFA057B0);
        v62 = swift_allocObject();
        *(v62 + 16) = 0u;
        *(v62 + 32) = 0u;
        *(v62 + 48) = 1;
        *(v62 + 56) = 0u;
        *(v62 + 72) = 0u;
        *(v62 + 88) = 0;
        *(v62 + 96) = xmmword_1CF9FEC30;
        *(v62 + 112) = 0;
        *(v62 + 120) = 0x2000000000000000;
        *(v62 + 128) = v61;
        *(v62 + 136) = 0x10000000000;
        *(v62 + 144) = v57;
        (*(*v27 + 144))();
      }

LABEL_14:
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v32 = a2 + *(v31 + 48);
      result = type metadata accessor for ItemMetadata();
      v33 = v32[*(result + 44)];
      v32[*(result + 48)] = v33;
      if (v33 == *(v30 + *(v31 + 48) + *(result + 48)))
      {
        return result;
      }

      if ((v69 & 0x800000000000000) == 0)
      {
        *a3 = v69 | 0x800000000000000;
      }

      v34 = *a2;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v36 = v35;
      v37 = *(v65 + 8);
      result = v37(v20, v66);
      v38 = v36 * 1000000000.0;
      if (COERCE__INT64(fabs(v36 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v38 > -9.22337204e18)
      {
        if (v38 < 9.22337204e18)
        {
          v39 = v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03E0, &qword_1CF9FB270);
          v40 = swift_allocObject();
          *(v40 + 16) = 0u;
          *(v40 + 32) = 0u;
          *(v40 + 48) = 1;
          *(v40 + 56) = 0u;
          *(v40 + 72) = 0u;
          *(v40 + 88) = 0;
          v69 = xmmword_1CF9FEC30;
          *(v40 + 96) = xmmword_1CF9FEC30;
          *(v40 + 112) = 0;
          *(v40 + 120) = 0x2000000000000000;
          *(v40 + 128) = v39;
          *(v40 + 136) = 0x10000000000;
          *(v40 + 144) = v34;
          v41 = *(*v68 + 144);
          v41();

          v42 = v34;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v44 = v43;
          result = v37(v20, v66);
          v45 = v44 * 1000000000.0;
          if (COERCE__INT64(fabs(v44 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v45 > -9.22337204e18)
            {
              if (v45 < 9.22337204e18)
              {
                v46 = v45;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0300, &qword_1CF9FB370);
                v47 = swift_allocObject();
                *(v47 + 16) = 0u;
                *(v47 + 32) = 0u;
                *(v47 + 48) = 1;
                *(v47 + 56) = 0u;
                *(v47 + 72) = 0u;
                *(v47 + 88) = 0;
                *(v47 + 96) = v69;
                *(v47 + 112) = 0;
                *(v47 + 120) = 0x2000000000000000;
                *(v47 + 128) = v46;
                *(v47 + 136) = 0x10000000000;
                *(v47 + 144) = v42;
                v41();
              }

              goto LABEL_45;
            }

LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      __break(1u);
      goto LABEL_42;
    }

    goto LABEL_13;
  }

  v64 = result;
  if ((v69 & 2) != 0)
  {
    goto LABEL_11;
  }

  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48);
  v26 = type metadata accessor for ItemMetadata();
  v27 = v68;
  if ((v64 & 1) == 0)
  {
LABEL_13:
    v30 = v67;
    goto LABEL_14;
  }

  v28 = *(v67 + v25 + *(v26 + 48));
LABEL_26:
  if ((v28 & 1) == 0)
  {
    sub_1CF48221C(a2, v27);
    if ((v69 & 0x800000000000000) == 0)
    {
      *a3 = v69 | 0x800000000000000;
    }
  }

  v50 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48);
  result = type metadata accessor for ItemMetadata();
  if (v50[*(result + 44)] == 1)
  {
    v51 = *a2;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v53 = v52;
    result = (*(v65 + 8))(v20, v66);
    v54 = v53 * 1000000000.0;
    if (COERCE__INT64(fabs(v53 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v54 > -9.22337204e18)
      {
        if (v54 < 9.22337204e18)
        {
          v55 = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE78, &unk_1CF9FB290);
          v56 = swift_allocObject();
          *(v56 + 16) = 0u;
          *(v56 + 32) = 0u;
          *(v56 + 48) = 1;
          *(v56 + 56) = 0u;
          *(v56 + 72) = 0u;
          *(v56 + 88) = 0;
          *(v56 + 96) = xmmword_1CF9FEC30;
          *(v56 + 112) = 0;
          *(v56 + 120) = 0x2000000000000000;
          *(v56 + 128) = v55;
          *(v56 + 136) = 0x10000000000;
          *(v56 + 144) = v51;
          (*(*v27 + 144))();
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  return result;
}

uint64_t sub_1CF3F3458(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v15 = sub_1CF9E5CF8();
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a6;
  v77 = a7;
  v21 = *(a4 + 32);
  if (v21[32])
  {
    return result;
  }

  v22 = *a3;
  if ((*a3 & 0x20002) == 0)
  {
    return result;
  }

  v73 = a1;
  v74 = a5;
  *&v75 = v22;
  v71 = v18;
  v72 = result;
  v23 = (*v21 + 320);
  v24 = *v23;
  result = (*v23)(a2 + 2, 0, &v76, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v7)
  {
    return result;
  }

  v70 = a2;
  if (result == 2)
  {
    if ((v75 & 2) == 0)
    {
      v25 = v73;
      v26 = v74;
      goto LABEL_30;
    }

    HIDWORD(v69) = 0;
  }

  else
  {
    HIDWORD(v69) = result;
    if ((v75 & 2) == 0)
    {
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
      v28 = type metadata accessor for ItemMetadata();
      v26 = v74;
      if ((v69 & 0x100000000) != 0)
      {
        v29 = *(v73 + v27 + *(v28 + 48));
        goto LABEL_17;
      }

      v25 = v73;
LABEL_30:
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      v51 = v70 + *(v50 + 48);
      result = type metadata accessor for ItemMetadata();
      v52 = v51[*(result + 44)];
      v51[*(result + 48)] = v52;
      if (v52 == *(v25 + *(v50 + 48) + *(result + 48)))
      {
        return result;
      }

      if ((v75 & 0x800000000000000) == 0)
      {
        *a3 = v75 | 0x800000000000000;
      }

      v53 = *v70;
      v54 = *(v70 + 8);
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v56 = v55;
      v57 = *(v71 + 8);
      result = v57(v20, v72);
      v58 = v56 * 1000000000.0;
      if (COERCE__INT64(fabs(v56 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v58 > -9.22337204e18)
      {
        if (v58 < 9.22337204e18)
        {
          v59 = v58;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD958, &qword_1CF9FAC70);
          v60 = swift_allocObject();
          *(v60 + 152) = v54;
          *(v60 + 16) = 0u;
          *(v60 + 32) = 0u;
          *(v60 + 48) = 1;
          *(v60 + 56) = 0u;
          *(v60 + 72) = 0u;
          *(v60 + 88) = 0;
          v75 = xmmword_1CF9FEC30;
          *(v60 + 96) = xmmword_1CF9FEC30;
          *(v60 + 112) = 0;
          *(v60 + 120) = 0x2000000000000000;
          *(v60 + 128) = v59;
          *(v60 + 136) = 0x10000000000;
          *(v60 + 144) = v53;
          v61 = *(*v26 + 144);
          v61();

          v62 = *v70;
          v63 = *(v70 + 8);
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v65 = v64;
          result = v57(v20, v72);
          v66 = v65 * 1000000000.0;
          if (COERCE__INT64(fabs(v65 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v66 > -9.22337204e18)
            {
              if (v66 < 9.22337204e18)
              {
                v67 = v66;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9D8, &qword_1CF9FAD70);
                v68 = swift_allocObject();
                *(v68 + 152) = v63;
                *(v68 + 16) = 0u;
                *(v68 + 32) = 0u;
                *(v68 + 48) = 1;
                *(v68 + 56) = 0u;
                *(v68 + 72) = 0u;
                *(v68 + 88) = 0;
                *(v68 + 96) = v75;
                *(v68 + 112) = 0;
                *(v68 + 120) = 0x2000000000000000;
                *(v68 + 128) = v67;
                *(v68 + 136) = 0x10000000000;
                *(v68 + 144) = v62;
                v61();
              }

              goto LABEL_46;
            }

LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      __break(1u);
      goto LABEL_43;
    }
  }

  if ((*(**(a4 + 24) + 336))(0, 68, &v76, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970))
  {
    v30 = v73;
    v29 = v24(v73, 0, &v76, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v25 = v30;
  }

  else
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    v25 = v73;
    v32 = v73 + *(v31 + 48);
    v29 = *(v32 + *(type metadata accessor for ItemMetadata() + 48));
  }

  v26 = v74;
  if ((v69 & 0x100000000) == 0)
  {
    if (v29)
    {
      v43 = *v70;
      v44 = *(v70 + 8);
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v46 = v45;
      result = (*(v71 + 8))(v20, v72);
      v47 = v46 * 1000000000.0;
      if (COERCE__INT64(fabs(v46 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v47 <= -9.22337204e18)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      if (v47 >= 9.22337204e18)
      {
LABEL_52:
        __break(1u);
        return result;
      }

      v48 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD968, &unk_1CFA056A0);
      v49 = swift_allocObject();
      *(v49 + 152) = v44;
      *(v49 + 16) = 0u;
      *(v49 + 32) = 0u;
      *(v49 + 48) = 1;
      *(v49 + 56) = 0u;
      *(v49 + 72) = 0u;
      *(v49 + 88) = 0;
      *(v49 + 96) = xmmword_1CF9FEC30;
      *(v49 + 112) = 0;
      *(v49 + 120) = 0x2000000000000000;
      *(v49 + 128) = v48;
      *(v49 + 136) = 0x10000000000;
      *(v49 + 144) = v43;
      v26 = v74;
      (*(*v74 + 144))();
    }

    goto LABEL_30;
  }

LABEL_17:
  if ((v29 & 1) == 0)
  {
    sub_1CF481944(v70, v26);
    if ((v75 & 0x800000000000000) == 0)
    {
      *a3 = v75 | 0x800000000000000;
    }
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v34 = v70;
  v35 = v70 + *(v33 + 48);
  result = type metadata accessor for ItemMetadata();
  if (v35[*(result + 44)] == 1)
  {
    v36 = *v34;
    v37 = *(v34 + 8);
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v39 = v38;
    result = (*(v71 + 8))(v20, v72);
    v40 = v39 * 1000000000.0;
    if (COERCE__INT64(fabs(v39 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v40 > -9.22337204e18)
      {
        if (v40 < 9.22337204e18)
        {
          v41 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0020, &unk_1CF9FAC90);
          v42 = swift_allocObject();
          *(v42 + 152) = v37;
          *(v42 + 16) = 0u;
          *(v42 + 32) = 0u;
          *(v42 + 48) = 1;
          *(v42 + 56) = 0u;
          *(v42 + 72) = 0u;
          *(v42 + 88) = 0;
          *(v42 + 96) = xmmword_1CF9FEC30;
          *(v42 + 112) = 0;
          *(v42 + 120) = 0x2000000000000000;
          *(v42 + 128) = v41;
          *(v42 + 136) = 0x10000000000;
          *(v42 + 144) = v36;
          (*(*v26 + 144))();
        }

        goto LABEL_49;
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  return result;
}

uint64_t sub_1CF3F3C5C(uint64_t a1)
{
  isEscapingClosureAtFileLocation = v1;
  v8 = a1;
  v3 = *(v1 + 24);
  sub_1CF9E7518();
  if (swift_task_isCurrentExecutor())
  {
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1CF484528;
    *(v4 + 24) = &v7;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CF485B48;
    *(v5 + 24) = v4;

    v10[0] = isEscapingClosureAtFileLocation;
    sub_1CF485888(v10);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA46EA0);
  v9 = isEscapingClosureAtFileLocation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06F0, &qword_1CFA05B00);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3F3E44(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  sub_1CF4FB2BC(0xD000000000000021, 0x80000001CFA46F30, v4, v5);
  v6 = *(a1 + 56);
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v10[2] = v6;

  sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF484544, v10, v7, MEMORY[0x1E69E7CA8] + 8, v8);
}

uint64_t sub_1CF3F3F34(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    return sub_1CF4FB2BC(0xD000000000000013, 0x80000001CFA46F60, v19, v20);
  }

  v3 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v21 = v3;
  while (v7)
  {
LABEL_13:
    v15 = *(v3 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7))));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    if (!v17)
    {
      v23 = 0x284449636F64;
      v24 = 0xE600000000000000;
LABEL_6:
      v11 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v11);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v12 = v23;
      v13 = v24;
      goto LABEL_7;
    }

    if (v17 == 1)
    {
      v23 = 0x284449656C6966;
      v24 = 0xE700000000000000;
      goto LABEL_6;
    }

    if (v16)
    {
      v12 = 0x6873617274;
    }

    else
    {
      v12 = 1953460082;
    }

    if (v16)
    {
      v13 = 0xE500000000000000;
    }

    else
    {
      v13 = 0xE400000000000000;
    }

LABEL_7:
    v7 &= v7 - 1;
    MEMORY[0x1D3868CC0](v12, v13);

    sub_1CF4FB2BC(0, 0xE000000000000000, v18, v22);

    v3 = v21;
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14 >= v8)
    {
    }

    v7 = *(v4 + 8 * v14);
    ++v10;
    if (v7)
    {
      v10 = v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF3F4198(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA00, &qword_1CF9FADC8);
  result = swift_allocObject();
  *(result + 152) = a2;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 1;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 120) = a3;
  *(result + 128) = a4;
  *(result + 136) = a5;
  *(result + 144) = a1;
  v11 = 327936;
  if ((a5 & 0x8000) != 0)
  {
    v11 = 2425088;
  }

  *(result + 88) = 0;
  *(result + 96) = v11;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_1CF3F423C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF18, &qword_1CF9FB3C8);
  result = swift_allocObject();
  *(result + 48) = 1;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 120) = a2;
  *(result + 128) = a3;
  *(result + 136) = a4;
  *(result + 144) = a1;
  v9 = 327936;
  if ((a4 & 0x8000) != 0)
  {
    v9 = 2425088;
  }

  *(result + 88) = 0;
  *(result + 96) = v9;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_1CF3F42D0(uint64_t a1, void (*a2)(void), uint64_t *a3, void **a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v211 = a4;
  LODWORD(v201) = a6;
  v206 = a5;
  v209 = a3;
  v213 = a2;
  v205 = sub_1CF9E5CF8();
  v203 = *(v205 - 8);
  v11 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v204 = &v194 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v199 = &v194 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v197 = *(v16 - 8);
  v198 = v16;
  v17 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v196 = &v194 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v194 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v194 - v24;
  v207 = a7;
  v239 = a7;
  LODWORD(v208) = a8;
  v240 = a8;
  v210 = a1;
  sub_1CEFCCBDC(a1, &v194 - v24, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v27 = *(*(v26 - 8) + 48);
  if (v27(v25, 1, v26) == 1)
  {
    sub_1CEFCCC44(v25, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v28 = 0;
  }

  else
  {
    v29 = &v25[*(v26 + 52)];
    v30 = *(v29 + 13);
    v235[12] = *(v29 + 12);
    v235[13] = v30;
    v235[14] = *(v29 + 14);
    *&v235[15] = *(v29 + 30);
    v31 = *(v29 + 9);
    v235[8] = *(v29 + 8);
    v235[9] = v31;
    v32 = *(v29 + 11);
    v235[10] = *(v29 + 10);
    v235[11] = v32;
    v33 = *(v29 + 5);
    v235[4] = *(v29 + 4);
    v235[5] = v33;
    v34 = *(v29 + 7);
    v235[6] = *(v29 + 6);
    v235[7] = v34;
    v35 = *(v29 + 1);
    v235[0] = *v29;
    v235[1] = v35;
    v36 = *(v29 + 3);
    v235[2] = *(v29 + 2);
    v235[3] = v36;
    sub_1CEFCCBDC(v235, v234, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    sub_1CEFCCC44(v25, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v236[12] = v235[12];
    v236[13] = v235[13];
    v236[14] = v235[14];
    *&v236[15] = *&v235[15];
    v236[8] = v235[8];
    v236[9] = v235[9];
    v236[10] = v235[10];
    v236[11] = v235[11];
    v236[4] = v235[4];
    v236[5] = v235[5];
    v236[6] = v235[6];
    v236[7] = v235[7];
    v236[0] = v235[0];
    v236[1] = v235[1];
    v236[2] = v235[2];
    v236[3] = v235[3];
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v236) == 1)
    {
      v28 = 0;
    }

    else
    {
      sub_1CEFCCC44(v235, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v28 = *&v236[13];
    }
  }

  sub_1CEFCCBDC(v210, v23, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  if (v27(v23, 1, v26) == 1)
  {
    sub_1CEFCCC44(v23, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v37 = v213;
  }

  else
  {
    v38 = &v23[*(v26 + 52)];
    v39 = *(v38 + 13);
    v235[12] = *(v38 + 12);
    v235[13] = v39;
    v235[14] = *(v38 + 14);
    *&v235[15] = *(v38 + 30);
    v40 = *(v38 + 9);
    v235[8] = *(v38 + 8);
    v235[9] = v40;
    v41 = *(v38 + 11);
    v235[10] = *(v38 + 10);
    v235[11] = v41;
    v42 = *(v38 + 5);
    v235[4] = *(v38 + 4);
    v235[5] = v42;
    v43 = *(v38 + 7);
    v235[6] = *(v38 + 6);
    v235[7] = v43;
    v44 = *(v38 + 1);
    v235[0] = *v38;
    v235[1] = v44;
    v45 = *(v38 + 3);
    v235[2] = *(v38 + 2);
    v235[3] = v45;
    sub_1CEFCCBDC(v235, v234, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    sub_1CEFCCC44(v23, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v236[12] = v235[12];
    v236[13] = v235[13];
    v236[14] = v235[14];
    *&v236[15] = *&v235[15];
    v236[8] = v235[8];
    v236[9] = v235[9];
    v236[10] = v235[10];
    v236[11] = v235[11];
    v236[4] = v235[4];
    v236[5] = v235[5];
    v236[6] = v235[6];
    v236[7] = v235[7];
    v236[0] = v235[0];
    v236[1] = v235[1];
    v236[2] = v235[2];
    v236[3] = v235[3];
    enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v236);
    v37 = v213;
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 != 1)
    {
      sub_1CEFCCC44(v235, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v50 = *(&v236[13] + 1);
      goto LABEL_12;
    }
  }

  v47 = v212;
  v48 = (*(*v211[4] + 344))(v37, &v239, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v47)
  {
    return v49 & 1;
  }

  v50 = v48;
  v212 = 0;
LABEL_12:
  v51 = v37 + *(v26 + 52);
  v52 = *(v51 + 13);
  v237[12] = *(v51 + 12);
  v237[13] = v52;
  v237[14] = *(v51 + 14);
  v238 = *(v51 + 30);
  v53 = *(v51 + 9);
  v237[8] = *(v51 + 8);
  v237[9] = v53;
  v54 = *(v51 + 11);
  v237[10] = *(v51 + 10);
  v237[11] = v54;
  v55 = *(v51 + 5);
  v237[4] = *(v51 + 4);
  v237[5] = v55;
  v56 = *(v51 + 7);
  v237[6] = *(v51 + 6);
  v237[7] = v56;
  v57 = *(v51 + 1);
  v237[0] = *v51;
  v237[1] = v57;
  v58 = *(v51 + 3);
  v237[2] = *(v51 + 2);
  v237[3] = v58;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v237) == 1)
  {
    v202 = 0;
  }

  else
  {
    v202 = *(v51 + 26);
  }

  v200 = v28;
  v59 = *v209;
  v195 = v50;
  if ((v59 & 2) == 0)
  {
    goto LABEL_16;
  }

  v62 = v37 + 8;
  v61 = *(v37 + 1);
  v63 = *v37;
  v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v66 = v65;
  if (v64 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v66 == v67)
  {

LABEL_21:
    v60 = v50;
    v37 = v213;
    goto LABEL_22;
  }

  v68 = sub_1CF9E8048();

  if (v68)
  {
    goto LABEL_21;
  }

  v101 = v212;
  v102 = (*(*v211[4] + 352))(v62, &v239, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v101)
  {
    return v49 & 1;
  }

  v60 = v102;
  v212 = 0;
  v50 = v195;
  v37 = v213;
  if (v102 == v195)
  {
LABEL_16:
    v60 = v50;
    goto LABEL_22;
  }

  v103 = *(v51 + 13);
  v236[12] = *(v51 + 12);
  v236[13] = v103;
  v236[14] = *(v51 + 14);
  *&v236[15] = *(v51 + 30);
  v104 = *(v51 + 9);
  v236[8] = *(v51 + 8);
  v236[9] = v104;
  v105 = *(v51 + 11);
  v236[10] = *(v51 + 10);
  v236[11] = v105;
  v106 = *(v51 + 5);
  v236[4] = *(v51 + 4);
  v236[5] = v106;
  v107 = *(v51 + 7);
  v236[6] = *(v51 + 6);
  v236[7] = v107;
  v108 = *(v51 + 1);
  v236[0] = *v51;
  v236[1] = v108;
  v109 = *(v51 + 3);
  v236[2] = *(v51 + 2);
  v236[3] = v109;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v236) != 1)
  {
    *(v51 + 27) = v60;
  }

  if ((v59 & 0x400000000000000) == 0)
  {
    *v209 = v59 | 0x400000000000000;
  }

LABEL_22:
  v210 = *(v26 + 48);
  v69 = v202;
  if (*(v37 + v210) != 1 || (v70 = sub_1CF67E058(v200, v50), v71 = sub_1CF67E058(v69, v60), v70 == v71))
  {
    LODWORD(v209) = 0;
    goto LABEL_25;
  }

  if (v71 == 501)
  {
    if (!fpfs_supports_indexAllRemoteItems())
    {
      goto LABEL_38;
    }

LABEL_83:
    v132 = *v37;
    v133 = v204;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v135 = v134;
    result = (*(v203 + 8))(v133, v205);
    v136 = v135 * 1000000000.0;
    if (COERCE__INT64(fabs(v135 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_218:
      __break(1u);
      goto LABEL_219;
    }

    if (v136 <= -9.22337204e18)
    {
LABEL_219:
      __break(1u);
      goto LABEL_220;
    }

    if (v136 >= 9.22337204e18)
    {
LABEL_220:
      __break(1u);
      goto LABEL_221;
    }

    v137 = v136;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE70, &unk_1CF9FB280);
    v138 = swift_allocObject();
    *(v138 + 16) = 0u;
    *(v138 + 32) = 0u;
    *(v138 + 48) = 1;
    *(v138 + 56) = 0u;
    *(v138 + 72) = 0u;
    *(v138 + 88) = 0;
    *(v138 + 96) = xmmword_1CF9FEC30;
    *(v138 + 112) = 0;
    *(v138 + 120) = 0;
    *(v138 + 128) = v137;
    *(v138 + 136) = 0;
    *(v138 + 144) = v132;
    (*(*v206 + 144))();
    LODWORD(v209) = 0;
    goto LABEL_87;
  }

  if (v71 != 502 && v71 != 1003)
  {
    goto LABEL_83;
  }

LABEL_38:
  v83 = *v37;
  v84 = v204;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v86 = v85;
  v87 = *(v203 + 8);
  result = v87(v84, v205);
  v89 = v86 * 1000000000.0;
  if (COERCE__INT64(fabs(v86 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_215:
    __break(1u);
    goto LABEL_216;
  }

  if (v89 <= -9.22337204e18)
  {
LABEL_216:
    __break(1u);
    goto LABEL_217;
  }

  if (v89 >= 9.22337204e18)
  {
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  v90 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE70, &unk_1CF9FB280);
  v91 = swift_allocObject();
  *(v91 + 16) = 0u;
  *(v91 + 32) = 0u;
  LODWORD(v209) = 1;
  *(v91 + 48) = 1;
  *(v91 + 56) = 0u;
  *(v91 + 72) = 0u;
  *(v91 + 88) = 0;
  *(v91 + 120) = 0;
  *(v91 + 128) = v90;
  *(v91 + 136) = 0;
  *(v91 + 144) = v83;
  *(v91 + 96) = xmmword_1CFA04E40;
  *(v91 + 112) = 0;
  v92 = *(*v206 + 144);
  v92();

  if (v201)
  {
    (*(*v211[4][2] + 96))(v236, v93);
    v94 = *&v236[0];
    v95 = v204;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v97 = v96;
    result = v87(v95, v205);
    v98 = v97 * 1000000000.0;
    if (COERCE__INT64(fabs(v97 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_221:
      __break(1u);
      goto LABEL_222;
    }

    if (v98 <= -9.22337204e18)
    {
LABEL_222:
      __break(1u);
      goto LABEL_223;
    }

    if (v98 >= 9.22337204e18)
    {
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    v99 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE60, &qword_1CF9FB268);
    v100 = swift_allocObject();
    *(v100 + 16) = 0u;
    *(v100 + 32) = 0u;
    *(v100 + 120) = 0;
    *(v100 + 128) = v99;
    LODWORD(v209) = 1;
    *(v100 + 48) = 1;
    *(v100 + 56) = 0u;
    *(v100 + 72) = 0u;
    *(v100 + 88) = 0;
    *(v100 + 136) = 0;
    *(v100 + 144) = v94;
    *(v100 + 96) = xmmword_1CFA04E50;
    *(v100 + 112) = 0;
    v92();
LABEL_87:
  }

LABEL_25:
  v72 = v211;
  v73 = ((*v211)[75])();
  v74 = v213;
  if (*(v213 + v210) - 1 <= 1)
  {
    goto LABEL_62;
  }

  v75 = v195;
  v76 = sub_1CEFF8538(v200, v195, 0, v73, 0, 0);
  v77 = sub_1CEFF8538(v75, 0, 1, v73, 0, 0);
  if (v76 == 501)
  {
    v78 = v77;
    fpfs_supports_indexAllRemoteItems();
    v76 = v78;
  }

  v79 = *(v74 + v210) == 1;
  v80 = sub_1CEFF8538(v69, v60, 0, v73, v79, 0);
  v81 = sub_1CEFF8538(v60, 0, 1, v73, v79, 0);
  if (v80 == 501)
  {
    v82 = v81;
    fpfs_supports_indexAllRemoteItems();
    v80 = v82;
  }

  if (v80 == 3 || v80 == 1002)
  {
    if (v76 != 3 && v76 != 1002)
    {
      goto LABEL_58;
    }
  }

  else
  {
    if (v80 == 500)
    {
      if (v76 == 500)
      {
        goto LABEL_62;
      }

LABEL_58:
      v110 = *v74;
      LOBYTE(v232) = 0;
      v111 = v110;
      v112 = v204;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v114 = v113;
      result = (*(v203 + 8))(v112, v205);
      v115 = v114 * 1000000000.0;
      if (COERCE__INT64(fabs(v114 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v201 = v60;
        if (v115 > -9.22337204e18)
        {
          if (v115 < 9.22337204e18)
          {
            v116 = v115;
            *(&v236[2] + 8) = v235[0];
            *(&v236[3] + 8) = v235[1];
            *(&v236[4] + 2) = *(&v235[1] + 10);
            *(&v236[5] + 3) = *v234;
            v117 = v232;
            *(v236 + 10) = v221;
            HIWORD(v236[0]) = WORD2(v221);
            *(&v236[6] + 3) = *&v234[16];
            *&v236[0] = v110;
            BYTE8(v236[0]) = 0;
            BYTE9(v236[0]) = v232;
            v194 = xmmword_1CFA04E60;
            v236[1] = xmmword_1CFA04E60;
            *&v236[2] = v115;
            BYTE2(v236[5]) = 0;
            BYTE3(v236[7]) = 10;
            (*(*v206 + 136))(v236);
            *&v236[0] = v110;
            BYTE8(v236[0]) = 0;
            BYTE9(v236[0]) = v117;
            *(v236 + 10) = v221;
            HIWORD(v236[0]) = WORD2(v221);
            v236[1] = v194;
            *&v236[2] = v116;
            *(&v236[2] + 8) = v235[0];
            *(&v236[3] + 8) = v235[1];
            *(&v236[4] + 2) = *(&v235[1] + 10);
            BYTE2(v236[5]) = 0;
            *(&v236[6] + 3) = *&v234[16];
            *(&v236[5] + 3) = *v234;
            BYTE3(v236[7]) = 10;
            sub_1CEFCCC44(v236, &qword_1EC4BE730, &unk_1CFA05490);
            v72 = v211;
            v74 = v213;
            v60 = v201;
            v69 = v202;
            goto LABEL_62;
          }

          goto LABEL_214;
        }
      }

      __break(1u);
LABEL_214:
      __break(1u);
      goto LABEL_215;
    }

    if (v76 == 3 || v76 == 500 || v76 == 1002)
    {
      goto LABEL_58;
    }
  }

LABEL_62:
  v118 = v72[2];
  v119 = *v74;
  v120 = v212;
  sub_1CF7EBA74(*v74, v207, v208, v236);
  if (v120)
  {
    return v49 & 1;
  }

  memcpy(v235, v236, 0x208uLL);
  if (sub_1CF08B99C(v235) == 1)
  {
    memcpy(v234, v236, sizeof(v234));
LABEL_188:
    sub_1CEFCCC44(v234, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    goto LABEL_189;
  }

  memcpy(v234, v236, sizeof(v234));
  v121 = v234[512];
  if (v234[216] == 255)
  {
    v127 = v69;
    v128 = *(v74 + v210);
    v129 = *(v74 + v210);
    if (v200 > 501)
    {
      if ((v200 - 1000) >= 3)
      {
        if (v200 == 502)
        {
          v131 = qword_1CFA05BA8[v128];
          goto LABEL_109;
        }

        if (v200 == 1003)
        {
          if ((v129 - 2) >= 2)
          {
            v140 = v206;
            if (*(v74 + v210))
            {
              v131 = 4;
              goto LABEL_110;
            }

            v131 = 64;
            v139 = v127;
            if (v127 <= 999)
            {
              if (v127 == 500)
              {
                goto LABEL_178;
              }

              if (v127 == 501)
              {
                v144 = v234[512];
                LOBYTE(v129) = 0;
                if (fpfs_supports_indexAllRemoteItems())
                {
                  goto LABEL_178;
                }

LABEL_121:
                v143 = 16;
                if (((1u >> (v129 & 0xF)) & ((v144 & 3) == 0)) == 0)
                {
                  v143 = 0;
                }

                goto LABEL_179;
              }

              v129 = 0;
              if (v127 == 502)
              {
                v143 = 64;
                v131 = 64;
                if ((v234[512] & 2) != 0)
                {
                  goto LABEL_178;
                }

LABEL_179:
                if ((v143 & ~v131) == 0)
                {
                  goto LABEL_188;
                }

                v163 = *(v74 + 1);
                v164 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v166 = v165;
                if (v164 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v166 == v167)
                {

                  goto LABEL_188;
                }

                v168 = sub_1CF9E8048();

                if (v168)
                {
                  goto LABEL_188;
                }

                v169 = v163;
                v170 = v204;
                sub_1CF9E5CE8();
                sub_1CF9E5C98();
                v172 = v171;
                result = (*(v203 + 8))(v170, v205);
                v173 = v172 * 1000000000.0;
                if (COERCE__INT64(fabs(v172 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v173 > -9.22337204e18)
                  {
                    if (v173 < 9.22337204e18)
                    {
                      v174 = v173;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0220, &unk_1CFA05730);
                      v175 = swift_allocObject();
                      *(v175 + 16) = 0u;
                      *(v175 + 32) = 0u;
                      *(v175 + 48) = 1;
                      *(v175 + 56) = 0u;
                      *(v175 + 72) = 0u;
                      *(v175 + 88) = 0;
                      *(v175 + 120) = 0;
                      *(v175 + 128) = v174;
                      *(v175 + 136) = 0;
                      *(v175 + 144) = v169;
                      *(v175 + 96) = xmmword_1CFA04E70;
                      *(v175 + 112) = 0;
                      (*(*v140 + 144))();

                      goto LABEL_188;
                    }

                    goto LABEL_226;
                  }

LABEL_225:
                  __break(1u);
LABEL_226:
                  __break(1u);
                  goto LABEL_227;
                }

LABEL_224:
                __break(1u);
                goto LABEL_225;
              }

              goto LABEL_175;
            }

            v129 = 0;
          }

          else
          {
            v131 = 0;
            v139 = v127;
            v140 = v206;
            if (v127 <= 999)
            {
              switch(v127)
              {
                case 500:
                  goto LABEL_178;
                case 501:
LABEL_120:
                  v144 = v121;
                  if (fpfs_supports_indexAllRemoteItems())
                  {
                    goto LABEL_178;
                  }

                  goto LABEL_121;
                case 502:
                  goto LABEL_178;
              }

              goto LABEL_175;
            }
          }

          if ((v139 - 1000) < 3)
          {
            goto LABEL_178;
          }

          goto LABEL_175;
        }

        goto LABEL_101;
      }
    }

    else
    {
      if (v200 == 3)
      {
        v131 = 4;
LABEL_109:
        v140 = v206;
LABEL_110:
        if (v127 <= 999)
        {
          if (v127 != 500)
          {
            if (v127 != 501)
            {
              if (v127 == 502)
              {
                if (!v129)
                {
                  goto LABEL_115;
                }

LABEL_178:
                v143 = 0;
                goto LABEL_179;
              }

              goto LABEL_175;
            }

            goto LABEL_120;
          }

LABEL_118:
          if (v129 != 1)
          {
            goto LABEL_178;
          }

LABEL_119:
          v143 = 4;
          goto LABEL_179;
        }

        if ((v127 - 1000) < 3)
        {
          goto LABEL_118;
        }

LABEL_175:
        if (v127 != 3)
        {
          if (v127 != 1003 || (v129 - 2) < 2)
          {
            goto LABEL_178;
          }

          if (!v129)
          {
LABEL_115:
            if ((v121 & 2) == 0)
            {
              v143 = 64;
              goto LABEL_179;
            }

            goto LABEL_178;
          }
        }

        goto LABEL_119;
      }

      if (v200 != 500)
      {
        if (v200 == 501)
        {
          v130 = v234[512];
          if (fpfs_supports_indexAllRemoteItems())
          {
            v131 = 0;
          }

          else
          {
            v131 = qword_1CFA05B88[v128];
          }

          v121 = v130;
          goto LABEL_108;
        }

LABEL_101:
        v131 = 0;
        goto LABEL_109;
      }
    }

    v131 = 4 * (v129 == 1);
LABEL_108:
    v129 = *(v74 + v210);
    goto LABEL_109;
  }

  v232 = *&v234[208];
  v233 = v234[216];
  if (v234[345] != 6 || v234[96] == 2)
  {
    goto LABEL_188;
  }

  *&v208 = *&v234[400];
  v213 = *&v234[512];
  v122 = v210;
  v123 = sub_1CEFF8538(v200, v195, 0, v73, *(v74 + v210) == 1, *&v234[512] != 0);
  v124 = v123;
  v125 = *(v74 + v122);
  if (v123 > 501)
  {
    v126 = v213;
    if ((v123 - 1000) >= 3)
    {
      if (v123 == 502)
      {
        v142 = qword_1CFA05BA8;
      }

      else
      {
        if (v123 != 1003)
        {
          goto LABEL_124;
        }

        v142 = &unk_1CFA05BC8;
      }

      v141 = v142[v125];
LABEL_134:
      v212 = v141;
      goto LABEL_135;
    }

LABEL_99:
    v141 = 4 * (v125 == 1);
    goto LABEL_134;
  }

  v126 = v213;
  if (v123 == 3)
  {
    v141 = 4;
    goto LABEL_134;
  }

  if (v123 == 500)
  {
    goto LABEL_99;
  }

  if (v123 != 501)
  {
LABEL_124:
    v212 = 0;
    goto LABEL_135;
  }

  if (fpfs_supports_indexAllRemoteItems())
  {
    v212 = 0;
  }

  else
  {
    v212 = qword_1CFA05B88[v125];
  }

  v126 = v213;
LABEL_135:
  v145 = v210;
  v146 = sub_1CEFF8538(v69, v60, 0, v73, *(v74 + v210) == 1, v126 != 0);
  v147 = v146;
  v148 = *(v74 + v145);
  if (v146 <= 501)
  {
    v149 = v206;
    if (v146 != 3)
    {
      if (v146 != 500)
      {
        if (v146 == 501 && (fpfs_supports_indexAllRemoteItems() & 1) == 0)
        {
          if (((1u >> (v148 & 0xF)) & ((v213 & 3) == 0)) != 0)
          {
            v150 = 16;
          }

          else
          {
            v150 = 0;
          }

          goto LABEL_158;
        }

LABEL_148:
        v150 = 0;
        goto LABEL_158;
      }

LABEL_144:
      v150 = 4 * (v148 == 1);
      goto LABEL_158;
    }

LABEL_157:
    v150 = 4;
    goto LABEL_158;
  }

  v149 = v206;
  if ((v146 - 1000) < 3)
  {
    goto LABEL_144;
  }

  if (v146 != 502)
  {
    if (v146 != 1003 || (v148 - 2) < 2)
    {
      goto LABEL_148;
    }

    if (!v148)
    {
      if ((v213 & 2) == 0)
      {
        v150 = 64;
        goto LABEL_158;
      }

      goto LABEL_148;
    }

    goto LABEL_157;
  }

  if ((0xEu >> (v148 & 0xF)) & 1 | ((v213 & 2) != 0))
  {
    v150 = 0;
  }

  else
  {
    v150 = 64;
  }

LABEL_158:
  if ((((*v211)[19])() & 0x40000) == 0 && v147 == 501 && (v213 & 2) != 0)
  {
    v231 = 0;
    v221 = v119;
    v222 = 0;
    v225 = xmmword_1CF9FD920;
    v230[16] = 14;
    v213 = *(*v149 + 136);
    v151 = v150;
    v152 = v119;
    v213(&v221);
    v153 = v206;

    v150 = v151;
    v149 = v153;
  }

  if (v124 != 1)
  {
    goto LABEL_171;
  }

  v154 = v199;
  (*(*v211[5] + 240))(&v232, 1, &v239, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v155 = v198;
  v156 = (*(v197 + 48))(v154, 1, v198);
  if (v156 == 1)
  {
    v157 = &qword_1EC4C1B40;
    v158 = &unk_1CF9FCB70;
    v159 = v154;
LABEL_170:
    sub_1CEFCCC44(v159, v157, v158);
LABEL_171:
    v162 = v211;
LABEL_172:
    (*(*v162[3] + 472))(&v232, (v150 ^ v212) & v212, v150 & (v150 ^ v212) & 0x14, &v239, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    sub_1CEFCCC44(v234, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_189:
    v49 = v209;
    return v49 & 1;
  }

  v160 = v196;
  sub_1CEFE55D0(v154, v196, &unk_1EC4BE360, &qword_1CF9FE650);
  v161 = (v160 + *(v155 + 48));
  if ((v161[*(type metadata accessor for ItemMetadata() + 80)] & 1) == 0 || v208 >> 60 == 11)
  {
LABEL_169:
    v157 = &unk_1EC4BE360;
    v158 = &qword_1CF9FE650;
    v159 = v160;
    goto LABEL_170;
  }

  if (v147 > 501)
  {
    if (v147 != 502 && v147 != 1003)
    {
      goto LABEL_169;
    }

    goto LABEL_199;
  }

  if (v147 != 2)
  {
    if (v147 != 501 || fpfs_supports_indexAllRemoteItems())
    {
      goto LABEL_169;
    }

LABEL_199:
    v231 = 0;
    v221 = v119;
    v222 = 0;
    v225 = xmmword_1CF9FD920;
    v230[16] = 14;
    v176 = *(*v149 + 136);
    v177 = v119;
    v176(&v221);

    sub_1CEFCCC44(v160, &unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFCCC44(v234, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    v49 = 0;
    return v49 & 1;
  }

  v213 = v150;
  v231 = 1;
  v221 = v232;
  LOBYTE(v222) = v233;
  HIBYTE(v222) = 1;
  v225 = 0uLL;
  v226 = 0;
  *v227 = 0xB000000000000000;
  memset(&v227[8], 0, 32);
  *&v227[40] = 257;
  *&v230[15] = 2317;
  v210 = *(*v149 + 136);
  v178 = (v210)(&v221);
  if ((((*v211)[69])(v178) & 1) == 0 || *v161 - 1 <= 1)
  {
LABEL_208:
    v220 = 0;
    v187 = v119;
    v188 = v204;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v190 = v189;
    result = (*(v203 + 8))(v188, v205);
    v191 = v190 * 1000000000.0;
    if (COERCE__INT64(fabs(v190 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v191 > -9.22337204e18)
      {
        if (v191 < 9.22337204e18)
        {
          v192 = v191;
          v193 = v220;
          v221 = v119;
          LOBYTE(v222) = 0;
          HIBYTE(v222) = v220;
          v223 = v218;
          v224 = v219;
          v208 = xmmword_1CFA00210;
          v225 = xmmword_1CFA00210;
          v226 = v191;
          *v227 = v216;
          *&v227[16] = v217[0];
          *&v227[26] = *(v217 + 10);
          v228 = 0;
          *v230 = v215;
          v229 = v214;
          v230[16] = 10;
          (v210)(&v221);
          v221 = v119;
          LOBYTE(v222) = 0;
          HIBYTE(v222) = v193;
          v223 = v218;
          v224 = v219;
          v225 = v208;
          v226 = v192;
          *v227 = v216;
          *&v227[16] = v217[0];
          *&v227[26] = *(v217 + 10);
          v228 = 0;
          *v230 = v215;
          v229 = v214;
          v230[16] = 10;
          sub_1CEFCCC44(&v221, &qword_1EC4BE730, &unk_1CFA05490);
          sub_1CEFCCC44(v196, &unk_1EC4BE360, &qword_1CF9FE650);
          v162 = v211;
          v150 = v213;
          goto LABEL_172;
        }

        goto LABEL_229;
      }

LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
      goto LABEL_230;
    }

LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  v179 = v232;
  v180 = v233;
  v181 = v204;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v183 = v182;
  result = (*(v203 + 8))(v181, v205);
  v184 = v183 * 1000000000.0;
  if (COERCE__INT64(fabs(v183 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_230:
    __break(1u);
    goto LABEL_231;
  }

  if (v184 <= -9.22337204e18)
  {
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  if (v184 < 9.22337204e18)
  {
    v185 = v184;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9D0, &qword_1CF9FAD60);
    v186 = swift_allocObject();
    *(v186 + 152) = v180;
    *(v186 + 16) = 0u;
    *(v186 + 32) = 0u;
    *(v186 + 48) = 1;
    *(v186 + 56) = 0u;
    *(v186 + 72) = 0u;
    *(v186 + 88) = 0;
    *(v186 + 96) = xmmword_1CF9FEC30;
    *(v186 + 112) = 0;
    *(v186 + 120) = 0;
    *(v186 + 128) = v185;
    *(v186 + 136) = 2;
    *(v186 + 144) = v179;
    (*(*v206 + 152))();

    goto LABEL_208;
  }

LABEL_232:
  __break(1u);
  return result;
}

uint64_t sub_1CF3F5E8C(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5, int a6, unint64_t a7, int a8)
{
  LODWORD(v196) = a6;
  v200 = a5;
  v205 = a4;
  v203 = a3;
  *&v204 = a2;
  v199 = sub_1CF9E5CF8();
  v197 = *(v199 - 8);
  v12 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v198 = &v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v195 = &v186 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v193 = *(v17 - 8);
  v194 = v17;
  v18 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v192 = &v186 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v186 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v186 - v25;
  v201 = a7;
  v230 = a7;
  LODWORD(v202) = a8;
  v231 = a8;
  sub_1CEFCCBDC(a1, &v186 - v25, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v28 = *(*(v27 - 8) + 48);
  if (v28(v26, 1, v27) == 1)
  {
    sub_1CEFCCC44(v26, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_4:
    v37 = 0;
    goto LABEL_6;
  }

  v29 = &v26[*(v27 + 52)];
  v30 = *(v29 + 13);
  v226[12] = *(v29 + 12);
  v226[13] = v30;
  v226[14] = *(v29 + 14);
  *&v226[15] = *(v29 + 30);
  v31 = *(v29 + 9);
  v226[8] = *(v29 + 8);
  v226[9] = v31;
  v32 = *(v29 + 11);
  v226[10] = *(v29 + 10);
  v226[11] = v32;
  v33 = *(v29 + 5);
  v226[4] = *(v29 + 4);
  v226[5] = v33;
  v34 = *(v29 + 7);
  v226[6] = *(v29 + 6);
  v226[7] = v34;
  v35 = *(v29 + 1);
  v226[0] = *v29;
  v226[1] = v35;
  v36 = *(v29 + 3);
  v226[2] = *(v29 + 2);
  v226[3] = v36;
  sub_1CEFCCBDC(v226, v225, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  sub_1CEFCCC44(v26, &unk_1EC4BE360, &qword_1CF9FE650);
  v227[12] = v226[12];
  v227[13] = v226[13];
  v227[14] = v226[14];
  *&v227[15] = *&v226[15];
  v227[8] = v226[8];
  v227[9] = v226[9];
  v227[10] = v226[10];
  v227[11] = v226[11];
  v227[4] = v226[4];
  v227[5] = v226[5];
  v227[6] = v226[6];
  v227[7] = v226[7];
  v227[0] = v226[0];
  v227[1] = v226[1];
  v227[2] = v226[2];
  v227[3] = v226[3];
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v227) == 1)
  {
    goto LABEL_4;
  }

  sub_1CEFCCC44(v226, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  v37 = *&v227[13];
LABEL_6:
  v38 = v204;
  sub_1CEFCCBDC(a1, v24, &qword_1EC4C1B40, &unk_1CF9FCB70);
  if (v28(v24, 1, v27) == 1)
  {
    sub_1CEFCCC44(v24, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v39 = v205;
  }

  else
  {
    v40 = &v24[*(v27 + 52)];
    v41 = *(v40 + 13);
    v226[12] = *(v40 + 12);
    v226[13] = v41;
    v226[14] = *(v40 + 14);
    *&v226[15] = *(v40 + 30);
    v42 = *(v40 + 9);
    v226[8] = *(v40 + 8);
    v226[9] = v42;
    v43 = *(v40 + 11);
    v226[10] = *(v40 + 10);
    v226[11] = v43;
    v44 = *(v40 + 5);
    v226[4] = *(v40 + 4);
    v226[5] = v44;
    v45 = *(v40 + 7);
    v226[6] = *(v40 + 6);
    v226[7] = v45;
    v46 = *(v40 + 1);
    v226[0] = *v40;
    v226[1] = v46;
    v47 = *(v40 + 3);
    v226[2] = *(v40 + 2);
    v226[3] = v47;
    sub_1CEFCCBDC(v226, v225, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    sub_1CEFCCC44(v24, &unk_1EC4BE360, &qword_1CF9FE650);
    v227[12] = v226[12];
    v227[13] = v226[13];
    v227[14] = v226[14];
    *&v227[15] = *&v226[15];
    v227[8] = v226[8];
    v227[9] = v226[9];
    v227[10] = v226[10];
    v227[11] = v226[11];
    v227[4] = v226[4];
    v227[5] = v226[5];
    v227[6] = v226[6];
    v227[7] = v226[7];
    v227[0] = v226[0];
    v227[1] = v226[1];
    v227[2] = v226[2];
    v227[3] = v226[3];
    enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v227);
    v39 = v205;
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 != 1)
    {
      sub_1CEFCCC44(v226, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v52 = *(&v227[13] + 1);
      v51 = v8;
      goto LABEL_12;
    }
  }

  v49 = (*(*v39[4] + 344))(v38, &v230, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v51 = v8;
  if (v8)
  {
    return v50 & 1;
  }

  v52 = v49;
LABEL_12:
  v53 = v38 + *(v27 + 52);
  v54 = *(v53 + 208);
  v228[12] = *(v53 + 192);
  v228[13] = v54;
  v228[14] = *(v53 + 224);
  v229 = *(v53 + 240);
  v55 = *(v53 + 144);
  v228[8] = *(v53 + 128);
  v228[9] = v55;
  v56 = *(v53 + 176);
  v228[10] = *(v53 + 160);
  v228[11] = v56;
  v57 = *(v53 + 80);
  v228[4] = *(v53 + 64);
  v228[5] = v57;
  v58 = *(v53 + 112);
  v228[6] = *(v53 + 96);
  v228[7] = v58;
  v59 = *(v53 + 16);
  v228[0] = *v53;
  v228[1] = v59;
  v60 = *(v53 + 48);
  v228[2] = *(v53 + 32);
  v228[3] = v60;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v228) == 1)
  {
    v61 = 0;
  }

  else
  {
    v61 = *(v53 + 208);
  }

  v62 = *v203;
  v190 = v52;
  if ((v62 & 2) == 0)
  {
    goto LABEL_16;
  }

  v78 = *(v38 + 16);
  v79 = *v38;
  v80 = *(v38 + 8);
  if (*(v38 + 24))
  {
    if (*(v38 + 24) == 1)
    {
      if (v80 != 1 || v78 != v79)
      {
        goto LABEL_77;
      }

LABEL_16:
      v63 = v52;
      goto LABEL_17;
    }

    if (v78)
    {
      if (v80 == 2 && v79 == 1)
      {
        goto LABEL_16;
      }
    }

    else if (v80 == 2 && !v79)
    {
      goto LABEL_16;
    }
  }

  else if (!*(v38 + 8) && v78 == v79)
  {
    goto LABEL_16;
  }

LABEL_77:
  v119 = (*(*v205[4] + 352))(v38 + 16, &v230, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v51)
  {
    return v50 & 1;
  }

  v52 = v190;
  v189 = v119;
  if (v119 == v190)
  {
    goto LABEL_16;
  }

  v120 = *(v53 + 208);
  v227[12] = *(v53 + 192);
  v227[13] = v120;
  v227[14] = *(v53 + 224);
  *&v227[15] = *(v53 + 240);
  v121 = *(v53 + 144);
  v227[8] = *(v53 + 128);
  v227[9] = v121;
  v122 = *(v53 + 176);
  v227[10] = *(v53 + 160);
  v227[11] = v122;
  v123 = *(v53 + 80);
  v227[4] = *(v53 + 64);
  v227[5] = v123;
  v124 = *(v53 + 112);
  v227[6] = *(v53 + 96);
  v227[7] = v124;
  v125 = *(v53 + 16);
  v227[0] = *v53;
  v227[1] = v125;
  v126 = *(v53 + 48);
  v227[2] = *(v53 + 32);
  v227[3] = v126;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v227) != 1)
  {
    *(v53 + 216) = v189;
  }

  if ((v62 & 0x400000000000000) == 0)
  {
    *v203 = v62 | 0x400000000000000;
  }

  v63 = v189;
LABEL_17:
  v203 = *(v27 + 48);
  v64 = *(v38 + v203);
  v188 = v61;
  v189 = v63;
  v191 = v37;
  if (v64 != 1 || (v65 = sub_1CF67E058(v37, v52), v66 = sub_1CF67E058(v61, v63), v65 == v66))
  {
    v187 = 0;
    goto LABEL_20;
  }

  if (v66 == 501)
  {
    if (!fpfs_supports_indexAllRemoteItems())
    {
      goto LABEL_38;
    }

LABEL_92:
    v130 = *v38;
    v131 = *(v38 + 8);
    v132 = v198;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v134 = v133;
    result = (*(v197 + 8))(v132, v199);
    v135 = v134 * 1000000000.0;
    if (COERCE__INT64(fabs(v134 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

    if (v135 <= -9.22337204e18)
    {
LABEL_236:
      __break(1u);
      goto LABEL_237;
    }

    if (v135 >= 9.22337204e18)
    {
LABEL_237:
      __break(1u);
      goto LABEL_238;
    }

    v136 = v135;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD960, &qword_1CF9FAC80);
    v137 = swift_allocObject();
    *(v137 + 152) = v131;
    *(v137 + 16) = 0u;
    *(v137 + 32) = 0u;
    *(v137 + 48) = 1;
    *(v137 + 56) = 0u;
    *(v137 + 72) = 0u;
    *(v137 + 88) = 0;
    *(v137 + 96) = xmmword_1CF9FEC30;
    *(v137 + 112) = 0;
    *(v137 + 120) = 0;
    *(v137 + 128) = v136;
    *(v137 + 136) = 0;
    *(v137 + 144) = v130;
    (*(*v200 + 144))();
    v187 = 0;
    goto LABEL_96;
  }

  if (v66 != 502 && v66 != 1003)
  {
    goto LABEL_92;
  }

LABEL_38:
  v81 = *v38;
  v82 = *(v38 + 8);
  v83 = v198;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v85 = v84;
  v86 = *(v197 + 8);
  result = v86(v83, v199);
  v88 = v85 * 1000000000.0;
  if (COERCE__INT64(fabs(v85 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_232:
    __break(1u);
    goto LABEL_233;
  }

  if (v88 <= -9.22337204e18)
  {
LABEL_233:
    __break(1u);
    goto LABEL_234;
  }

  if (v88 >= 9.22337204e18)
  {
LABEL_234:
    __break(1u);
    goto LABEL_235;
  }

  v89 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD960, &qword_1CF9FAC80);
  v90 = swift_allocObject();
  *(v90 + 152) = v82;
  *(v90 + 16) = 0u;
  *(v90 + 32) = 0u;
  v187 = 1;
  *(v90 + 48) = 1;
  *(v90 + 56) = 0u;
  *(v90 + 72) = 0u;
  *(v90 + 88) = 0;
  *(v90 + 120) = 0;
  *(v90 + 128) = v89;
  *(v90 + 136) = 0;
  *(v90 + 144) = v81;
  *(v90 + 96) = xmmword_1CFA04E40;
  *(v90 + 112) = 0;
  v91 = *(*v200 + 144);
  v91();

  if (v196)
  {
    (*(*v205[4][2] + 96))(v227, v92);
    v93 = v198;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v95 = v94;
    result = v86(v93, v199);
    v96 = v95 * 1000000000.0;
    if (COERCE__INT64(fabs(v95 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_238:
      __break(1u);
      goto LABEL_239;
    }

    if (v96 <= -9.22337204e18)
    {
LABEL_239:
      __break(1u);
      goto LABEL_240;
    }

    if (v96 >= 9.22337204e18)
    {
LABEL_240:
      __break(1u);
      goto LABEL_241;
    }

    v97 = v51;
    v98 = v96;
    v99 = *&v227[0];
    v100 = BYTE8(v227[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF60, &unk_1CFA05620);
    v101 = swift_allocObject();
    *(v101 + 152) = v100;
    *(v101 + 16) = 0u;
    *(v101 + 32) = 0u;
    v187 = 1;
    *(v101 + 48) = 1;
    *(v101 + 56) = 0u;
    *(v101 + 72) = 0u;
    *(v101 + 88) = 0;
    *(v101 + 120) = 0;
    *(v101 + 128) = v98;
    *(v101 + 136) = 0;
    *(v101 + 144) = v99;
    *(v101 + 96) = xmmword_1CFA04E50;
    *(v101 + 112) = 0;
    v91();
    v51 = v97;
LABEL_96:
  }

LABEL_20:
  v67 = v205;
  v68 = ((*v205)[75])();
  if (*(v38 + v203) - 1 <= 1)
  {
    goto LABEL_63;
  }

  v69 = v190;
  v70 = sub_1CEFF8538(v191, v190, 0, v68, 0, 0);
  v71 = sub_1CEFF8538(v69, 0, 1, v68, 0, 0);
  if (v70 == 501)
  {
    v72 = v71;
    fpfs_supports_indexAllRemoteItems();
    v70 = v72;
  }

  v73 = *(v38 + v203) == 1;
  v74 = v189;
  v75 = sub_1CEFF8538(v188, v189, 0, v68, v73, 0);
  v76 = sub_1CEFF8538(v74, 0, 1, v68, v73, 0);
  if (v75 == 501)
  {
    v77 = v76;
    fpfs_supports_indexAllRemoteItems();
    v75 = v77;
  }

  if (v75 == 3 || v75 == 1002)
  {
    if (v70 != 3 && v70 != 1002)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if (v75 == 500)
    {
      if (v70 == 500)
      {
        goto LABEL_63;
      }

LABEL_59:
      v102 = *v38;
      v103 = *(v38 + 8);
      LOBYTE(v219) = 0;
      v104 = v198;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v106 = v105;
      result = (*(v197 + 8))(v104, v199);
      v107 = v106 * 1000000000.0;
      if (COERCE__INT64(fabs(v106 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v107 > -9.22337204e18)
      {
        v196 = v51;
        if (v107 < 9.22337204e18)
        {
          v108 = v107;
          *(&v227[3] + 8) = v226[1];
          *(&v227[4] + 8) = v226[2];
          *(&v227[5] + 8) = v226[3];
          *(&v227[6] + 2) = *(&v226[3] + 10);
          v109 = v219;
          *(v227 + 10) = v225[0];
          HIWORD(v227[0]) = WORD2(v225[0]);
          *(&v227[2] + 8) = v226[0];
          *&v227[0] = v102;
          BYTE8(v227[0]) = v103;
          BYTE9(v227[0]) = v219;
          v186 = xmmword_1CFA04E60;
          v227[1] = xmmword_1CFA04E60;
          *&v227[2] = v107;
          WORD1(v227[7]) = 2560;
          (*(*v200 + 136))(v227);
          v227[1] = v186;
          *(&v227[3] + 8) = v226[1];
          *(&v227[4] + 8) = v226[2];
          *(&v227[5] + 8) = v226[3];
          *(&v227[6] + 2) = *(&v226[3] + 10);
          *&v227[0] = v102;
          BYTE8(v227[0]) = v103;
          BYTE9(v227[0]) = v109;
          *(v227 + 10) = v225[0];
          HIWORD(v227[0]) = WORD2(v225[0]);
          *&v227[2] = v108;
          *(&v227[2] + 8) = v226[0];
          WORD1(v227[7]) = 2560;
          sub_1CEFCCC44(v227, &qword_1EC4BE6D0, &qword_1CF9FE560);
          v51 = v196;
          v67 = v205;
          goto LABEL_63;
        }

        goto LABEL_231;
      }

      __break(1u);
LABEL_231:
      __break(1u);
      goto LABEL_232;
    }

    if (v70 == 3 || v70 == 500 || v70 == 1002)
    {
      goto LABEL_59;
    }
  }

LABEL_63:
  v110 = v67[2];
  sub_1CF7EB934(*v38, *(v38 + 8), v201, v202, v227);
  if (v51)
  {
    return v50 & 1;
  }

  memcpy(v226, v227, 0x208uLL);
  if (sub_1CF08B99C(v226) == 1)
  {
    memcpy(v225, v227, sizeof(v225));
LABEL_214:
    sub_1CEFCCC44(v225, &unk_1EC4BFC20, &unk_1CFA0A290);
    v50 = v187;
    return v50 & 1;
  }

  memcpy(v225, v227, sizeof(v225));
  v111 = v225[31];
  v112 = v225[64];
  if (!v225[31])
  {
    v127 = *(v38 + v203);
    v128 = *(v38 + v203);
    if (v191 <= 501)
    {
      if (v191 != 3)
      {
        if (v191 != 500)
        {
          if (v191 == 501)
          {
            if (fpfs_supports_indexAllRemoteItems())
            {
              v129 = 0;
            }

            else
            {
              v129 = qword_1CFA05B88[v127];
            }

            goto LABEL_99;
          }

LABEL_110:
          v129 = 0;
          goto LABEL_126;
        }

LABEL_98:
        v129 = 4 * (v128 == 1);
LABEL_99:
        v128 = *(v38 + v203);
LABEL_126:
        if (v188 <= 999)
        {
          if (v188 != 500)
          {
            if (v188 != 501)
            {
              if (v188 == 502)
              {
                if (!v128)
                {
                  goto LABEL_131;
                }

LABEL_194:
                v140 = 0;
                goto LABEL_195;
              }

              goto LABEL_179;
            }

LABEL_193:
            if ((fpfs_supports_indexAllRemoteItems() & 1) == 0)
            {
              v166 = 16;
              if (((1u >> (v128 & 0xF)) & ((v112 & 3) == 0)) == 0)
              {
                v166 = 0;
              }

              if ((v166 & ~v129) == 0)
              {
                goto LABEL_214;
              }

              goto LABEL_196;
            }

            goto LABEL_194;
          }

LABEL_135:
          if (v128 != 1)
          {
            goto LABEL_194;
          }

LABEL_136:
          if ((~v129 & 4) == 0)
          {
            goto LABEL_214;
          }

          goto LABEL_196;
        }

        if ((v188 - 1000) < 3)
        {
          goto LABEL_135;
        }

LABEL_179:
        if (v188 != 3)
        {
          if (v188 != 1003 || (v128 - 2) < 2)
          {
            goto LABEL_194;
          }

          if (!v128)
          {
LABEL_131:
            if ((v112 & 2) == 0)
            {
              if ((~v129 & 0x40) == 0)
              {
                goto LABEL_214;
              }

              goto LABEL_196;
            }

            goto LABEL_194;
          }
        }

        goto LABEL_136;
      }

LABEL_125:
      v129 = 4;
      goto LABEL_126;
    }

    if ((v191 - 1000) < 3)
    {
      goto LABEL_98;
    }

    if (v191 == 502)
    {
      v129 = qword_1CFA05BA8[v127];
      goto LABEL_126;
    }

    if (v191 != 1003)
    {
      goto LABEL_110;
    }

    if ((v128 - 2) >= 2)
    {
      if (*(v38 + v203))
      {
        goto LABEL_125;
      }

      v129 = 64;
      v138 = v188;
      if (v188 <= 999)
      {
        if (v188 == 500)
        {
          goto LABEL_194;
        }

        if (v188 != 501)
        {
          v128 = 0;
          if (v188 == 502)
          {
            v140 = 64;
            v129 = 64;
            if ((v225[64] & 2) == 0)
            {
LABEL_195:
              if ((v140 & ~v129) == 0)
              {
                goto LABEL_214;
              }

LABEL_196:
              v157 = *v38;
              v158 = *(v38 + 16);
              v159 = *(v38 + 24);
              if (*(v38 + 8))
              {
                if (*(v38 + 8) == 1)
                {
                  if (v159 == 1 && v157 == v158)
                  {
                    goto LABEL_214;
                  }
                }

                else if (v157)
                {
                  if (v159 == 2 && v158 == 1)
                  {
                    goto LABEL_214;
                  }
                }

                else if (v159 == 2 && !v158)
                {
                  goto LABEL_214;
                }
              }

              else if (!*(v38 + 24) && v157 == v158)
              {
                goto LABEL_214;
              }

              v160 = v198;
              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v162 = v161;
              result = (*(v197 + 8))(v160, v199);
              v163 = v162 * 1000000000.0;
              if (COERCE__INT64(fabs(v162 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v163 > -9.22337204e18)
                {
                  if (v163 < 9.22337204e18)
                  {
                    v164 = v163;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00E0, &qword_1CF9FACC8);
                    v165 = swift_allocObject();
                    *(v165 + 152) = v159;
                    *(v165 + 16) = 0u;
                    *(v165 + 32) = 0u;
                    *(v165 + 48) = 1;
                    *(v165 + 56) = 0u;
                    *(v165 + 72) = 0u;
                    *(v165 + 88) = 0;
                    *(v165 + 120) = 0;
                    *(v165 + 128) = v164;
                    *(v165 + 136) = 0;
                    *(v165 + 144) = v158;
                    *(v165 + 96) = xmmword_1CFA04E70;
                    *(v165 + 112) = 0;
                    (*(*v200 + 144))();

                    goto LABEL_214;
                  }

                  goto LABEL_243;
                }

LABEL_242:
                __break(1u);
LABEL_243:
                __break(1u);
                goto LABEL_244;
              }

LABEL_241:
              __break(1u);
              goto LABEL_242;
            }

            goto LABEL_194;
          }

          goto LABEL_179;
        }

        LOBYTE(v128) = 0;
        goto LABEL_193;
      }

      v128 = 0;
    }

    else
    {
      v129 = 0;
      v138 = v188;
      if (v188 <= 999)
      {
        switch(v188)
        {
          case 500:
            goto LABEL_194;
          case 501:
            goto LABEL_193;
          case 502:
            goto LABEL_194;
        }

        goto LABEL_179;
      }
    }

    if ((v138 - 1000) < 3)
    {
      goto LABEL_194;
    }

    goto LABEL_179;
  }

  v224 = v225[31];
  if (BYTE1(v225[43]) != 6 || LOBYTE(v225[17]) == 2)
  {
    goto LABEL_214;
  }

  v201 = v225[50];
  v196 = 0;
  v113 = v203;
  v114 = *(v38 + v203) == 1;
  v202 = v225[31];
  v115 = sub_1CEFF8538(v191, v190, 0, v68, v114, v112 != 0);
  v116 = v115;
  v117 = *(v38 + v113);
  if (v115 > 501)
  {
    if ((v115 - 1000) >= 3)
    {
      if (v115 == 502)
      {
        v118 = qword_1CFA05BA8;
        goto LABEL_139;
      }

      if (v115 == 1003)
      {
        v118 = &unk_1CFA05BC8;
        goto LABEL_139;
      }

LABEL_115:
      v139 = 0;
      goto LABEL_140;
    }

LABEL_109:
    v139 = 4 * (v117 == 1);
    goto LABEL_140;
  }

  if (v115 == 3)
  {
    v139 = 4;
    goto LABEL_140;
  }

  if (v115 == 500)
  {
    goto LABEL_109;
  }

  if (v115 != 501 || (fpfs_supports_indexAllRemoteItems() & 1) != 0)
  {
    goto LABEL_115;
  }

  v118 = qword_1CFA05B88;
LABEL_139:
  v139 = v118[v117];
LABEL_140:
  v141 = v203;
  v142 = sub_1CEFF8538(v188, v189, 0, v68, *(v38 + v203) == 1, v112 != 0);
  v143 = v142;
  v144 = *(v38 + v141);
  if (v142 <= 501)
  {
    if (v142 != 3)
    {
      if (v142 != 500)
      {
        if (v142 == 501 && (fpfs_supports_indexAllRemoteItems() & 1) == 0)
        {
          if (((1u >> (v144 & 0xF)) & ((v112 & 3) == 0)) != 0)
          {
            v145 = 16;
          }

          else
          {
            v145 = 0;
          }

          goto LABEL_161;
        }

LABEL_153:
        v145 = 0;
        goto LABEL_161;
      }

LABEL_149:
      v145 = 4 * (v144 == 1);
      goto LABEL_161;
    }

LABEL_160:
    v145 = 4;
    goto LABEL_161;
  }

  if ((v142 - 1000) < 3)
  {
    goto LABEL_149;
  }

  if (v142 != 502)
  {
    if (v142 != 1003 || (v144 - 2) < 2)
    {
      goto LABEL_153;
    }

    if (!v144)
    {
      if ((v112 & 2) == 0)
      {
        v145 = 64;
        goto LABEL_161;
      }

      goto LABEL_153;
    }

    goto LABEL_160;
  }

  if ((0xEu >> (v144 & 0xF)) & 1 | ((v112 & 2) != 0))
  {
    v145 = 0;
  }

  else
  {
    v145 = 64;
  }

LABEL_161:
  if ((((*v205)[19])() & 0x40000) == 0 && v143 == 501 && (v112 & 2) != 0)
  {
    v146 = *v38;
    v147 = *(v38 + 8);
    LOBYTE(v213) = 0;
    *&v219 = v146;
    WORD4(v219) = v147;
    v220 = xmmword_1CF9FD920;
    HIBYTE(v223) = 14;
    (*(*v200 + 136))(&v219);
  }

  if (v116 != 1)
  {
    v150 = v196;
    goto LABEL_170;
  }

  v149 = v195;
  v148 = v196;
  (*(*v205[5] + 240))(&v224, 1, &v230, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v150 = v148;
  if (v148)
  {
LABEL_171:

    sub_1CEFCCC44(v225, &unk_1EC4BFC20, &unk_1CFA0A290);
    return v50 & 1;
  }

  v151 = v194;
  if ((*(v193 + 48))(v149, 1, v194) == 1)
  {
    sub_1CEFCCC44(v149, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    goto LABEL_170;
  }

  v203 = v139;
  v152 = v149;
  v153 = v192;
  sub_1CEFE55D0(v152, v192, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v154 = (v153 + *(v151 + 48));
  if ((v154[*(type metadata accessor for ItemMetadata() + 80)] & 1) == 0 || v201 >> 60 == 11)
  {
    goto LABEL_175;
  }

  if (v143 > 501)
  {
    if (v143 == 502 || v143 == 1003)
    {
      goto LABEL_191;
    }

    goto LABEL_175;
  }

  if (v143 != 2)
  {
    if (v143 == 501 && !fpfs_supports_indexAllRemoteItems())
    {
LABEL_191:
      v155 = *v38;
      v156 = *(v38 + 8);
      LOBYTE(v213) = 0;
      *&v219 = v155;
      WORD4(v219) = v156;
      v220 = xmmword_1CF9FD920;
      HIBYTE(v223) = 14;
      (*(*v200 + 136))(&v219);
      sub_1CEFCCC44(v153, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

      sub_1CEFCCC44(v225, &unk_1EC4BFC20, &unk_1CFA0A290);
      v50 = 0;
      return v50 & 1;
    }

LABEL_175:
    sub_1CEFCCC44(v153, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
LABEL_176:
    v139 = v203;
LABEL_170:
    (*(*v205[3] + 472))(&v224, (v145 ^ v139) & v139, v145 & (v145 ^ v139) & 0x14, &v230, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    if (!v150)
    {

      goto LABEL_214;
    }

    goto LABEL_171;
  }

  v196 = 0;
  *&v213 = v111;
  WORD4(v213) = 256;
  v214 = 0;
  v215 = 0;
  *&v216 = 0;
  *(&v216 + 1) = 0xB000000000000000;
  v217 = 0u;
  *v218 = 0u;
  *&v218[16] = 257;
  v218[18] = 13;
  *v221 = v216;
  memset(&v221[16], 0, 32);
  *&v221[47] = *&v218[15];
  v219 = v213;
  v220 = 0u;
  HIBYTE(v223) = 9;
  v167 = *(*v200 + 136);
  v168 = *v200 + 136;
  v169 = v202;
  v201 = v167;
  v195 = v168;
  v167(&v219);
  v170 = sub_1CEFCCC44(&v213, &unk_1EC4BFCF0, &unk_1CFA05410);
  if ((((*v205)[69])(v170) & 1) == 0 || *v154 - 1 <= 1)
  {
LABEL_225:
    v178 = *v38;
    v179 = *(v38 + 8);
    v212 = 0;
    v180 = v198;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v182 = v181;
    result = (*(v197 + 8))(v180, v199);
    v183 = v182 * 1000000000.0;
    if (COERCE__INT64(fabs(v182 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v183 > -9.22337204e18)
      {
        if (v183 < 9.22337204e18)
        {
          v184 = v183;
          v185 = v212;
          *&v219 = v178;
          BYTE8(v219) = v179;
          BYTE9(v219) = v212;
          *(&v219 + 10) = v210;
          HIWORD(v219) = v211;
          v204 = xmmword_1CFA00210;
          v220 = xmmword_1CFA00210;
          *v221 = v183;
          *&v221[40] = v208;
          *v222 = v209[0];
          *&v222[10] = *(v209 + 10);
          *&v221[8] = v206;
          *&v221[24] = v207;
          v223 = 2560;
          (v201)(&v219);
          *&v219 = v178;
          BYTE8(v219) = v179;
          BYTE9(v219) = v185;
          *(&v219 + 10) = v210;
          HIWORD(v219) = v211;
          v220 = v204;
          *v221 = v184;
          *&v221[40] = v208;
          *v222 = v209[0];
          *&v222[10] = *(v209 + 10);
          *&v221[8] = v206;
          *&v221[24] = v207;
          v223 = 2560;
          sub_1CEFCCC44(&v219, &qword_1EC4BE6D0, &qword_1CF9FE560);
          sub_1CEFCCC44(v192, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v150 = v196;
          goto LABEL_176;
        }

        goto LABEL_246;
      }

LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
      goto LABEL_247;
    }

LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  v171 = v169;
  v172 = v198;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v174 = v173;
  result = (*(v197 + 8))(v172, v199);
  v175 = v174 * 1000000000.0;
  if (COERCE__INT64(fabs(v174 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  if (v175 <= -9.22337204e18)
  {
LABEL_248:
    __break(1u);
    goto LABEL_249;
  }

  if (v175 < 9.22337204e18)
  {
    v176 = v175;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0310, &unk_1CF9FB360);
    v177 = swift_allocObject();
    *(v177 + 16) = 0u;
    *(v177 + 32) = 0u;
    *(v177 + 48) = 1;
    *(v177 + 56) = 0u;
    *(v177 + 72) = 0u;
    *(v177 + 88) = 0;
    *(v177 + 96) = xmmword_1CF9FEC30;
    *(v177 + 112) = 0;
    *(v177 + 120) = 0;
    *(v177 + 128) = v176;
    *(v177 + 136) = 2;
    *(v177 + 144) = v171;
    (*(*v200 + 152))();

    v38 = v204;
    goto LABEL_225;
  }

LABEL_249:
  __break(1u);
  return result;
}