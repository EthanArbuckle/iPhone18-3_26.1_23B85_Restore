uint64_t sub_1CF36A09C(uint64_t (*a1)(char *, uint64_t, char *), int a2)
{
  v3 = v2;
  v83 = a2;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF9F8, &qword_1CFA041E0);
  v5 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v79 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA00, &qword_1CFA041E8);
  v9 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v91 = &v79 - v10;
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v79 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v79 - v20;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA08, &qword_1CFA041F0);
  v85 = *(v93 - 8);
  v22 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v24 = &v79 - v23;
  v25 = *(a1 + 2);
  v26 = MEMORY[0x1E69E7CC0];
  v86 = &v79 - v23;
  v88 = v3;
  v80 = v12;
  v84 = a1;
  if (v25)
  {
    v100[0] = MEMORY[0x1E69E7CC0];
    v27 = v21;
    sub_1CF000F0C(0, v25, 0);
    v26 = v100[0];
    v29 = *(v12 + 16);
    v28 = v12 + 16;
    v96 = (*(v28 + 64) + 32) & ~*(v28 + 64);
    v97 = v29;
    v30 = a1 + v96;
    v31 = *(v28 + 56);
    v94 = (v28 - 8);
    v95 = v31;
    v98 = v28;
    v32 = (v28 + 16);
    do
    {
      v33 = v99;
      v97(v99, v30, v11);
      v34 = sub_1CF9E5928();
      v35 = [v34 fp_realpathURL];

      sub_1CF9E59D8();
      (*v94)(v33, v11);
      v100[0] = v26;
      v36 = v11;
      v38 = *(v26 + 16);
      v37 = *(v26 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1CF000F0C(v37 > 1, v38 + 1, 1);
        v26 = v100[0];
      }

      *(v26 + 16) = v38 + 1;
      v39 = v95;
      (*v32)(v26 + v96 + v38 * v95, v27, v36);
      v30 += v39;
      --v25;
      v11 = v36;
    }

    while (v25);
    v3 = v88;
    v24 = v86;
  }

  v100[0] = *(v3 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);
  v104 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA10, &qword_1CFA041F8);
  sub_1CEFCCCEC(&qword_1EC4BFA18, &qword_1EC4BFA10, &qword_1CFA041F8);
  sub_1CF9E6788();

  sub_1CEFCCCEC(&qword_1EC4BFA20, &qword_1EC4BFA08, &qword_1CFA041F0);
  v40 = v93;
  sub_1CF9E70B8();
  sub_1CF9E70D8();
  if (v100[0] == v104)
  {
    (*(v85 + 8))(v24, v40);
  }

  v95 = v104;
  v96 = v100[0];
  v99 = v11;
  LODWORD(v98) = *(v3 + 16);
  os_unfair_lock_lock((v3 + 56));
  v42 = *(v3 + 64);
  v41 = *(v3 + 72);
  v43 = *(v3 + 88);
  v44 = *(v3 + 89);
  v45 = *(v3 + 90);

  v46 = *(v3 + 80);
  os_unfair_lock_unlock((v3 + 56));
  LODWORD(v97) = *(v3 + 50);
  v47 = type metadata accessor for VFSLookupScope();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  *(v50 + 40) = 0;
  *(v50 + 48) = 1;
  *(v50 + 96) = sub_1CF001108(MEMORY[0x1E69E7CC0]);
  *(v50 + 64) = v42;
  *(v50 + 56) = 0;
  *(v50 + 72) = v41;
  *(v50 + 80) = v46;
  *(v50 + 88) = v43;
  *(v50 + 89) = v44;
  *(v50 + 90) = v45;

  v51 = v82;
  v52 = v87;
  sub_1CF3658E0(v82, v84, v98, v83 & 1, v100);
  if (v52)
  {

    sub_1CF2B9AAC(v50 + 64);
    (*(v85 + 8))(v86, v93);
    v53 = *(v50 + 96);

    v54 = *(*v50 + 48);
    v55 = *(*v50 + 52);
    return swift_deallocPartialClassInstance();
  }

  v87 = 0;
  v58 = v100[0];
  v57 = v100[1];
  v59 = v101;
  v98 = v102;
  LODWORD(v94) = v103;
  v60 = v80;
  v61 = v51;
  v62 = v99;
  v84 = *(v80 + 32);
  result = v84(v81, v61, v99);
  *(v50 + 16) = v59;
  *(v50 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v58;
  if (!*(v58 + 16))
  {
    goto LABEL_27;
  }

  result = (*(v60 + 16))(v50 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v58 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v62);
  *(v50 + 32) = v57;
  if (*(v57 + 16))
  {
    v63 = *(v57 + 32);

    *(v50 + 24) = v63;
    v84((v50 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL), v81, v62);
    *(v50 + 40) = v98;
    *(v50 + 48) = v94;
    *(v50 + 49) = 0;
    v94 = v50;
    *(v50 + 50) = v97;
    v104 = MEMORY[0x1E69E7CD0];
    v64 = v91;
    v65 = v93;
    (*(v85 + 16))(v91, v86, v93);
    v66 = *(v79 + 36);
    sub_1CF9E70B8();
    sub_1CF9E70D8();
    LODWORD(v98) = 0;
    v67 = v92;
    if (*(v64 + v66) == v100[0])
    {
LABEL_14:
      sub_1CEFCCC44(v64, &qword_1EC4BFA00, &qword_1CFA041E8);
      (*(v85 + 8))(v86, v65);
      return v94;
    }

    LODWORD(v98) = 0;
    v68 = (v80 + 8);
    while (1)
    {
      while (1)
      {
        v69 = sub_1CF9E7168();
        v70 = v89;
        sub_1CEFCCBDC(v71, v89, &qword_1EC4BF9F8, &qword_1CFA041E0);
        v69(v100, 0);
        v65 = v93;
        sub_1CF9E70E8();
        sub_1CEFE55D0(v70, v67, &qword_1EC4BF9F8, &qword_1CFA041E0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v73 = *v67;
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA28, &unk_1CFA04200);
        v74 = *(result + 48);
        if (EnumCaseMultiPayload == 1)
        {
          break;
        }

        if (v73)
        {
          goto LABEL_22;
        }

LABEL_24:
        v77 = &v92[v74];
        v67 = v92;
        (*v68)(v77, v99);
        v64 = v91;
        sub_1CF9E70D8();
        v78 = *(v64 + v66);
        LODWORD(v98) = 256;
        if (v78 == v100[0])
        {
          goto LABEL_14;
        }
      }

      if (!v73)
      {
        goto LABEL_24;
      }

      v75 = *(v88 + 32);
      if (v73 < *(v75 + 16))
      {
        if (v73 < 0)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          break;
        }

        sub_1CF6E96D8(v100, *(v75 + 8 * v73 + 32));
      }

LABEL_22:
      v76 = &v92[v74];
      v67 = v92;
      (*v68)(v76, v99);
      v64 = v91;
      sub_1CF9E70D8();
      if (*(v64 + v66) == v100[0])
      {
        goto LABEL_14;
      }
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1CF36AABC()
{
  v0 = sub_1CF9E5928();
  v1 = sub_1CF9E5928();
  v2 = [v0 fp:v1 relationshipToItemAtURL:?];

  return v2 == 1;
}

void sub_1CF36AB24(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v26 = a2;
  v27 = a5;
  v28 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  sub_1CF9E5A18();
  v13 = sub_1CF9E6888();

  sub_1CEFCCBDC(a3, v12, &unk_1EC4BEDE0, qword_1CF9FA390);
  v14 = sub_1CF9E5D98();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    v16 = sub_1CF9E5D38();
    (*(v15 + 8))(v12, v14);
  }

  v17 = *(a4 + 50);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1CF9E7948();

  v29 = 0x54656C6946534656;
  v30 = 0xEF20746120656572;
  v18 = sub_1CF9E5928();
  v19 = [v18 fp_shortDescription];

  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v21;

  MEMORY[0x1D3868CC0](v20, v22);

  v23 = sub_1CF9E6888();

  v24 = [a1 subscribeToEventsAtPath:v13 fd:0xFFFFFFFFLL sinceEventID:v26 streamUUID:v16 ignoreOwnEvents:v17 delegate:v27 purpose:v23];

  *v28 = v24;
}

uint64_t sub_1CF36AD8C(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v6 = a3;
  v9 = HIDWORD(a3);
  v10 = sub_1CF9E6118();
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((v4 + 56));
  v14 = *(v4 + 72);
  v15 = *(v4 + 84);

  os_unfair_lock_unlock((v4 + 56));
  os_unfair_lock_lock((v4 + 56));
  v16 = *(v4 + 72);

  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = v6;
  *(v4 + 84) = v9;
  *(v4 + 88) = a4 & 1;
  *(v4 + 89) = BYTE1(a4) & 1;
  *(v4 + 90) = BYTE2(a4) & 1;

  os_unfair_lock_unlock((v4 + 56));
  if (v15 == v9 || (*(v4 + 48) & 1) != 0)
  {
  }

  else
  {
    sub_1CF9E5A18();
    fpfs_openflags_0(0x200000u);
    sub_1CF9E6978();
    v18 = openat_s();

    if (v18 < 0)
    {
      v20 = MEMORY[0x1D38683F0](v19);
      v32 = 0;
      memset(v31, 0, sizeof(v31));
      v33 = 19;
      v21 = sub_1CF19BBE4(v20, v31);
      sub_1CF1969CC(v31);
      swift_willThrow();

      v22 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v23 = v21;
      v24 = sub_1CF9E6108();
      v25 = sub_1CF9E72A8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 67109378;
        *(v26 + 4) = v9;

        *(v26 + 8) = 2112;
        swift_getErrorValue();
        v28 = Error.prettyDescription.getter(v34);
        *(v26 + 10) = v28;
        *v27 = v28;
        _os_log_impl(&dword_1CEFC7000, v24, v25, "Updating trash syncing state %u failed %@", v26, 0x12u);
        sub_1CEFCCC44(v27, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v27, -1, -1);
        MEMORY[0x1D386CDC0](v26, -1, -1);
      }

      else
      {
      }

      return (*(v30 + 8))(v13, v10);
    }

    else
    {

      sub_1CF3669F4(v18);

      return close(v18);
    }
  }
}

uint64_t VFSLookupScope.deinit()
{
  v1 = *(v0 + 32);

  sub_1CF2B9AAC(v0 + 64);
  v2 = *(v0 + 96);

  v3 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL;
  v4 = sub_1CF9E5A58();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);

  v5(v0 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v4);
  return v0;
}

uint64_t sub_1CF36B240()
{
  result = sub_1CF9E5A58();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF36B3D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF36B42C@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF367AE8(a1);
}

uint64_t sub_1CF36B468(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1CEFF1E08(*a1);
  v5 = v4;
  if (v3 == sub_1CEFF1E08(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1CF9E8048();
  }

  return v8 & 1;
}

uint64_t sub_1CF36B4F0()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CEFF1E08(v1);
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF36B554()
{
  sub_1CEFF1E08(*v0);
  sub_1CF9E69C8();
}

uint64_t sub_1CF36B5A8()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CEFF1E08(v1);
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF36B608@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1CF36C88C();
  *a2 = result;
  return result;
}

unint64_t sub_1CF36B638@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1CEFF1E08(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_1CF36B67C@<D0>(id a1@<X1>, char a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 5:
    case 6:
    case 7:
    case 8:
    case 11:
    case 13:
    case 14:
    case 19:
      v7 = [a1 BOOLAtIndex_];
      *(a4 + 24) = MEMORY[0x1E69E6370];
      *a4 = v7;
      return result;
    case 3:
    case 4:
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_28;
      }

      v19 = [a1 dataAtIndex_];
      v20 = sub_1CF9E5B88();
      v22 = v21;

      sub_1CF4C2898(v20, v22);
      v24 = v23;
      sub_1CEFE4714(v20, v22);
      if (!v4)
      {
        if (!v24)
        {
          goto LABEL_28;
        }

        swift_getErrorValue();
        *(a4 + 24) = v47;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
        (*(*(v47 - 8) + 16))(boxed_opaque_existential_0);
      }

      return result;
    case 9:
    case 10:
    case 12:
    case 15:
    case 16:
    case 17:
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_28;
      }

      v10 = [a1 stringAtIndex_];
      v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v13 = v12;

      v14 = MEMORY[0x1E69E6158];
      goto LABEL_5;
    case 18:
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_28;
      }

      v45 = [a1 stringAtIndex_];
      v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v13 = v46;

      v14 = &type metadata for Filename;
LABEL_5:
      *(a4 + 24) = v14;
      *a4 = v11;
      *(a4 + 8) = v13;
      return result;
    case 20:
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_28;
      }

      v40 = sub_1CF1E059C(a3);
      if (v4)
      {
        return result;
      }

      v36 = &unk_1CF9FEE90;
      v34 = v40;
      v35 = &unk_1EC4C4BE0;
      break;
    case 21:
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_28;
      }

      v42 = sub_1CEFE7794(a3);
      if (!v4)
      {
        *(a4 + 24) = &type metadata for UserInfo;
        *a4 = v42;
        *(a4 + 8) = v43;
      }

      return result;
    case 22:
    case 23:
      type metadata accessor for NSFileProviderContentPolicy(0);
      *(a4 + 24) = v16;
      v17 = [a1 longAtIndex_];
      goto LABEL_19;
    case 24:
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_28;
      }

      v33 = sub_1CF1E040C(a3);
      if (v4)
      {
        return result;
      }

      v34 = v33;
      v35 = &unk_1EC4BF630;
      v36 = &unk_1CF9FEEC0;
      break;
    case 25:
      if ([a1 isNullAtIndex_])
      {
LABEL_28:
        result = 0.0;
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }

      else
      {
        if ([a1 isNullAtIndex_])
        {
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
        }

        v27 = MEMORY[0x1E69E6158];
        if (swift_dynamicCastMetatype())
        {
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
        }

        v28 = [a1 stringAtIndex_];
        v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v31 = v30;

        *(a4 + 24) = v27;
        *a4 = v29;
        *(a4 + 8) = v31;
      }

      return result;
    default:
      type metadata accessor for NSFileProviderItemCapabilities(0);
      *(a4 + 24) = v38;
      v17 = [a1 unsignedLongAtIndex_];
LABEL_19:
      *a4 = v17;
      return result;
  }

  *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  *a4 = v34;
  return result;
}

double sub_1CF36BA6C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  LOBYTE(v70[0]) = 0;
  type metadata accessor for NSFileProviderItemCapabilities(0);
  v8 = v7;
  sub_1CF0230AC(a1, v7);
  sub_1CF0230B4(v70, v8, a1, v8, a2);
  if (!v3)
  {
    v10 = v78;
    LOBYTE(v70[0]) = 1;
    v11 = MEMORY[0x1E69E6370];
    sub_1CF0230AC(a1, MEMORY[0x1E69E6370]);
    sub_1CF0230B4(v70, v11, a1, v11, a2);
    LODWORD(v11) = v77;
    LOBYTE(v70[0]) = 2;
    sub_1CF0230B4(v70, MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], a2);
    v80 = v11;
    v12 = v76;
    LOBYTE(v70[0]) = 3;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    sub_1CF0230AC(a1, v13);
    sub_1CF0230B4(v70, v13, a1, v13, a2);
    v79 = v12;
    v14 = v75;
    LOBYTE(v70[0]) = 4;
    sub_1CF0230B4(v70, v13, a1, v13, a2);
    v15 = v74;
    LOBYTE(v70[0]) = 6;
    sub_1CF0230B4(v70, MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], a2);
    LOBYTE(v12) = v73;
    LOBYTE(v70[0]) = 7;
    sub_1CF0230B4(v70, MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], a2);
    v52 = v12;
    v53 = v15;
    LOBYTE(v15) = v72;
    LOBYTE(v70[0]) = 8;
    sub_1CF0230B4(v70, MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], a2);
    v50 = v71;
    v51 = v15;
    LOBYTE(v69[0]) = 9;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
    sub_1CF0230AC(a1, v16);
    sub_1CF0230B4(v69, v16, a1, v16, a2);
    v17 = v70[1];
    v48 = v70[0];
    v49 = v16;
    LOBYTE(v67[0]) = 10;
    sub_1CF0230B4(v67, v16, a1, v16, a2);
    v46 = v14;
    v47 = v17;
    v18 = v69[0];
    v45 = v69[1];
    LOBYTE(v67[0]) = 11;
    sub_1CF0230B4(v67, MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], a2);
    v44 = v68;
    LOBYTE(v64[0]) = 12;
    sub_1CF0230B4(v64, v16, a1, v16, a2);
    v42 = v67[0];
    v43 = v67[1];
    LOBYTE(v64[0]) = 13;
    sub_1CF0230B4(v64, MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], a2);
    LOBYTE(v16) = v66;
    LOBYTE(v64[0]) = 14;
    sub_1CF0230B4(v64, MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], a2);
    v41 = v65;
    LOBYTE(v63[0]) = 15;
    sub_1CF0230B4(v63, v49, a1, v49, a2);
    v39 = v64[0];
    v40 = v64[1];
    LOBYTE(v62[0]) = 16;
    sub_1CF0230B4(v62, v49, a1, v49, a2);
    v19 = v63[0];
    v38 = v63[1];
    LOBYTE(v61[0]) = 17;
    sub_1CF0230B4(v61, v49, a1, v49, a2);
    v36 = v62[0];
    v37 = v62[1];
    LOBYTE(v59[0]) = 18;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
    sub_1CF0230AC(a1, v20);
    sub_1CF0230B4(v59, v20, a1, v20, a2);
    v34 = v61[0];
    v35 = v61[1];
    LOBYTE(v59[0]) = 19;
    sub_1CF0230B4(v59, MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], a2);
    v33 = v60;
    LOBYTE(v59[0]) = 20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE558, &unk_1CF9FEEE0);
    sub_1CF0230AC(a1, v21);
    sub_1CF0230B4(v59, v21, a1, v21, a2);
    v32 = v59[2];
    LOBYTE(v55) = 21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE568, &qword_1CF9FDDD8);
    sub_1CF0230AC(a1, v22);
    sub_1CF0230B4(&v55, v22, a1, v22, a2);
    v30 = v59[0];
    v31 = v59[1];
    LOBYTE(v55) = 22;
    type metadata accessor for NSFileProviderContentPolicy(0);
    v24 = v23;
    sub_1CF0230AC(a1, v23);
    sub_1CF0230B4(&v55, v24, a1, v24, a2);
    v29 = v58;
    LOBYTE(v55) = 23;
    sub_1CF0230B4(&v55, v24, a1, v24, a2);
    v28 = v57;
    LOBYTE(v55) = 24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE570, &unk_1CF9FEED0);
    sub_1CF0230AC(a1, v25);
    sub_1CF0230B4(&v55, v25, a1, v25, a2);
    v26 = v56;
    v54 = 25;
    sub_1CF0230B4(&v54, v49, a1, v49, a2);
    *a3 = v10;
    v27 = v79;
    *(a3 + 8) = v80;
    *(a3 + 9) = v27;
    *(a3 + 16) = v46;
    *(a3 + 24) = v53;
    *(a3 + 32) = v52;
    *(a3 + 33) = v51;
    *(a3 + 34) = v50;
    *(a3 + 40) = v48;
    *(a3 + 48) = v47;
    *(a3 + 56) = v18;
    *(a3 + 64) = v45;
    *(a3 + 72) = v44;
    *(a3 + 80) = v42;
    *(a3 + 88) = v43;
    *(a3 + 96) = 0;
    *(a3 + 104) = v16;
    *(a3 + 105) = v41;
    *(a3 + 112) = v39;
    *(a3 + 120) = v40;
    *(a3 + 128) = v19;
    *(a3 + 136) = v38;
    *(a3 + 144) = v36;
    *(a3 + 152) = v37;
    *(a3 + 160) = v34;
    *(a3 + 168) = v35;
    *(a3 + 176) = v33;
    *(a3 + 184) = v32;
    *(a3 + 192) = v30;
    *(a3 + 200) = v31;
    *(a3 + 208) = v29;
    *(a3 + 216) = v28;
    *(a3 + 224) = v26;
    result = *&v55;
    *(a3 + 232) = v55;
  }

  return result;
}

unint64_t sub_1CF36C4D4(uint64_t a1)
{
  result = sub_1CF36C4FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF36C4FC()
{
  result = qword_1EC4BFA38;
  if (!qword_1EC4BFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFA38);
  }

  return result;
}

unint64_t sub_1CF36C554()
{
  result = qword_1EC4BFA40;
  if (!qword_1EC4BFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFA40);
  }

  return result;
}

uint64_t _s9SQLFieldsOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9SQLFieldsOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CF36C760(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE180, &unk_1CF9FCAB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF36C7B4()
{
  result = qword_1EDEAC5A0;
  if (!qword_1EDEAC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC5A0);
  }

  return result;
}

unint64_t sub_1CF36C808(uint64_t a1)
{
  *(a1 + 8) = sub_1CF36C838();
  result = sub_1CEFF1D18();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF36C838()
{
  result = qword_1EC4BFA58;
  if (!qword_1EC4BFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFA58);
  }

  return result;
}

uint64_t sub_1CF36C88C()
{
  v0 = sub_1CF9E8098();

  if (v0 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1CF36C8E0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v34 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  v32 = sub_1CF9E5A98();
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E53C8();
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = swift_slowAlloc();
  v20 = fgetxattr(a1, "com.apple.fileprovider.detached#B", v19, 0x800uLL, 0, 0);
  v21 = v20;
  if ((v20 & 0x8000000000000000) != 0)
  {
    if (MEMORY[0x1D38683F0]() != 93 || (v22 = fgetxattr(a1, "com.apple.fileprovider.detached", v19, 0x800uLL, 0, 0), v22 < 0) && (v22 = fgetxattr(a1, "com.apple.fileprovider.detached#PN", v19, 0x800uLL, 0, 0), v22 < 0))
    {
      if (MEMORY[0x1D38683F0]() != 93)
      {
        MEMORY[0x1D38683F0]();
        v28 = sub_1CF9E6138();
        if ((v28 & 0x100000000) != 0)
        {
          v29 = 22;
        }

        else
        {
          v29 = v28;
        }

        v36 = v29;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF198A44();
        sub_1CF9E57D8();
        goto LABEL_16;
      }

      v21 = 0;
    }

    else
    {
      v21 = v22;
      fsetxattr(a1, "com.apple.fileprovider.detached#B", v19, v22, 0, 0);
      fremovexattr(a1, "com.apple.fileprovider.detached", 0);
      fremovexattr(a1, "com.apple.fileprovider.detached#PN", 0);
      if (v21 >= 0x801)
      {
        goto LABEL_3;
      }
    }
  }

  else if (v20 >= 0x801)
  {
LABEL_3:
    v37 = 34;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF198A44();
    sub_1CF9E57D8();
    v18 = v16;
LABEL_16:
    sub_1CF9E53A8();
    (*(v33 + 8))(v18, v12);
    swift_willThrow();
    v27 = v35;
    return sub_1CEFCCC44(v27, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  (*(v8 + 104))(v11, *MEMORY[0x1E6969010], v32);
  v23 = sub_1CF51FB88(v19, v21, v11);
  v25 = v24;
  v26 = v35;
  sub_1CF33F8C8(v35, v7);
  sub_1CF36D288(v23, v25, v7, v34);
  v27 = v26;
  return sub_1CEFCCC44(v27, &unk_1EC4BE310, qword_1CF9FCBE0);
}

uint64_t sub_1CF36CCE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA68, &qword_1CFA044D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF36DA08();

  sub_1CF9E82A8();
  v18 = v8;
  v19 = v9;
  v20 = 0;
  sub_1CF1E60E8();
  v12 = v17;
  sub_1CF9E7F08();

  if (!v12)
  {
    v18 = v16;
    v19 = v15;
    v20 = 1;
    sub_1CEFE42D4(v16, v15);
    sub_1CF190A74();
    sub_1CF9E7F08();
    sub_1CEFE4714(v18, v19);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1CF36CEA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA78, &qword_1CFA044E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF36DA08();
  sub_1CF9E8298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  sub_1CF1E613C();
  sub_1CF9E7D88();
  v12 = v16;
  v11 = v17;
  v18 = 1;
  sub_1CF190888();
  sub_1CF9E7D88();
  (*(v6 + 8))(v9, v5);
  v13 = v16;
  v14 = v17;
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;

  sub_1CEFE42D4(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_1CEFE4714(v13, v14);
}

uint64_t sub_1CF36D0BC()
{
  if (*v0)
  {
    result = 0x6F42746E65726170;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1CF36D0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1CF9E8048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F42746E65726170 && a2 == 0xEE006B72616D6B6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CF9E8048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1CF36D1E0(uint64_t a1)
{
  v2 = sub_1CF36DA08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF36D21C(uint64_t a1)
{
  v2 = sub_1CF36DA08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF36D288@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a4;
  v8 = sub_1CF9E6118();
  v68 = *(v8 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5A58();
  v67 = *(v12 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E5688();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1CF9E5678();
  sub_1CF36D820();
  sub_1CF9E5668();
  if (v4)
  {
    sub_1CEFCCC44(a3, &unk_1EC4BE310, qword_1CF9FCBE0);

    return sub_1CEFE4714(a1, a2);
  }

  v62 = v19;
  v21 = v71;
  v65 = v72;
  v66 = v11;
  v22 = v73;
  LOBYTE(v71) = 0;
  v60 = v8;
  v61 = v74;
  v64 = a3;
  sub_1CF9E5948();
  v23 = v12;
  v63 = 0;
  v32 = v22;
  v33 = v69;
  v34 = v23;
  (*(v67 + 32))(v69, v15, v23);
  v35 = v71;
  v36 = type metadata accessor for VFSDetachedRootBookmark();
  *(v33 + v36[7]) = v35;
  v37 = (v33 + v36[5]);
  v38 = v65;
  *v37 = v21;
  v37[1] = v38;

  if (v35 != 1)
  {
    sub_1CEFCCC44(v64, &unk_1EC4BE310, qword_1CF9FCBE0);

    sub_1CEFE4714(a1, a2);
    v42 = v32;
    v45 = v61;
    sub_1CEFE42D4(v32, v61);
    v43 = v32;
    v44 = v45;
    goto LABEL_13;
  }

  v39 = v63;
  v40 = sub_1CF9E5858();
  v42 = v32;
  if (!v39)
  {
    v43 = v40;
    v44 = v41;
    sub_1CEFCCC44(v64, &unk_1EC4BE310, qword_1CF9FCBE0);

    sub_1CEFE4714(a1, a2);
    v45 = v61;
LABEL_13:

    result = sub_1CEFE4714(v42, v45);
    v48 = (v69 + v36[6]);
    *v48 = v43;
    v48[1] = v44;
    return result;
  }

  v59 = v34;
  v24 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFE42D4(a1, a2);
  v25 = v39;
  v26 = sub_1CF9E6108();
  v27 = sub_1CF9E72A8();

  if (!os_log_type_enabled(v26, v27))
  {
    sub_1CEFE4714(a1, a2);
    v46 = v64;
    v47 = v60;
    v30 = v68;
    goto LABEL_22;
  }

  v58 = v27;
  v28 = swift_slowAlloc();
  result = swift_slowAlloc();
  v57 = result;
  *v28 = 134218242;
  v29 = a2 >> 62;
  v30 = v68;
  if ((a2 >> 62) > 1)
  {
    if (v29 != 2)
    {
      v31 = 0;
      goto LABEL_21;
    }

    v50 = *(a1 + 16);
    v49 = *(a1 + 24);
    v51 = __OFSUB__(v49, v50);
    v31 = v49 - v50;
    if (!v51)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_18:
    LODWORD(v31) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v31 = v31;
    goto LABEL_21;
  }

  if (v29)
  {
    goto LABEL_18;
  }

  v31 = BYTE6(a2);
LABEL_21:
  *(v28 + 4) = v31;
  sub_1CEFE4714(a1, a2);
  *(v28 + 12) = 2112;
  swift_getErrorValue();
  v52 = Error.prettyDescription.getter(v70);
  *(v28 + 14) = v52;
  v53 = v57;
  *v57 = v52;
  _os_log_impl(&dword_1CEFC7000, v26, v58, "VFSDetachedRootBookmark (size: %ld) could not be decoded: %@", v28, 0x16u);
  sub_1CEFCCC44(v53, &qword_1EC4BE350, &unk_1CF9FC3B0);
  MEMORY[0x1D386CDC0](v53, -1, -1);
  MEMORY[0x1D386CDC0](v28, -1, -1);
  v46 = v64;
  v47 = v60;
LABEL_22:

  (*(v30 + 8))(v66, v47);
  swift_willThrow();

  sub_1CEFE4714(v42, v61);
  sub_1CEFE4714(a1, a2);
  result = sub_1CEFCCC44(v46, &unk_1EC4BE310, qword_1CF9FCBE0);
  if (!v63)
  {
    v54 = v69;
    (*(v67 + 8))(v69, v59);
    v55 = *(v54 + *(type metadata accessor for VFSDetachedRootBookmark() + 20) + 8);
  }

  return result;
}

unint64_t sub_1CF36D820()
{
  result = qword_1EC4BFA60;
  if (!qword_1EC4BFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFA60);
  }

  return result;
}

uint64_t type metadata accessor for VFSDetachedRootBookmark()
{
  result = qword_1EDEAC750;
  if (!qword_1EDEAC750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF36D8C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1CF36D908(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CF36D980()
{
  result = sub_1CF9E5A58();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1CF36DA08()
{
  result = qword_1EC4BFA70;
  if (!qword_1EC4BFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFA70);
  }

  return result;
}

unint64_t sub_1CF36DA70()
{
  result = qword_1EC4BFA80;
  if (!qword_1EC4BFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFA80);
  }

  return result;
}

unint64_t sub_1CF36DAC8()
{
  result = qword_1EC4BFA88;
  if (!qword_1EC4BFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFA88);
  }

  return result;
}

unint64_t sub_1CF36DB20()
{
  result = qword_1EC4BFA90;
  if (!qword_1EC4BFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFA90);
  }

  return result;
}

uint64_t sub_1CF36DB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1CF36DCC8;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_1CF36DCC8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1CF36DDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 24);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_1CF0262EC;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CF36DF24()
{
  v0 = sub_1CF9E7388();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E74C8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1CF9E6448();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1CF3708D4();
  sub_1CF9E63F8();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1CF370AD0(&unk_1EDEA3518, 255, MEMORY[0x1E69E8120]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DC0, &qword_1CFA046D0);
  sub_1CF370920();
  sub_1CF9E77B8();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8098], v0);
  result = sub_1CF9E74D8();
  qword_1EC4BFA98 = result;
  return result;
}

uint64_t sub_1CF36E168(uint64_t a1, uint64_t a2, char a3)
{
  v13 = *MEMORY[0x1E69E9840];
  *(v4 + 504) = a2;
  *(v4 + 512) = v3;
  *(v4 + 564) = a3;
  *(v4 + 496) = a1;
  v5 = sub_1CF9E6118();
  *(v4 + 520) = v5;
  v6 = *(v5 - 8);
  *(v4 + 528) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  *(v4 + 552) = swift_task_alloc();
  type metadata accessor for FPFeedbackUIManager();
  sub_1CF370AD0(&qword_1EC4BFAA0, v8, type metadata accessor for FPFeedbackUIManager);
  v9 = sub_1CF9E6EC8();
  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1CF36E2CC, v9, v10);
}

uint64_t sub_1CF36E2CC()
{
  v90 = *MEMORY[0x1E69E9840];
  if (!fpfs_is_internal_build() || (v1 = objc_allocWithZone(MEMORY[0x1E695E000]), v2 = sub_1CF9E6888(), v3 = [v1 initWithSuiteName_], v2, !v3))
  {
LABEL_10:
    v17 = *(*(v0 + 512) + 32);
    v18 = [v17 pathComponents];
    v19 = MEMORY[0x1E69E6158];
    v20 = sub_1CF9E6D48();

    v21 = *(v20 + 16);

    if (v21 >= 2)
    {
      v22 = [v17 stringByDeletingLastPathComponent];
      if (!v22)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v22 = sub_1CF9E6888();
      }

      v17 = v22;
    }

    v23 = [v17 fp_isiCloudDriveIdentifier];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    if (v23)
    {
      v24 = *(v0 + 496);
      v25 = *(v0 + 504);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FA450;
      *(inited + 56) = v19;
      v27 = sub_1CEFD51C4();
      *(inited + 32) = v24;
      *(inited + 64) = v27;
      *(inited + 40) = v25;

      v28 = sub_1CF36EB18(inited);
    }

    else
    {
      v31 = *(v0 + 504);
      v30 = *(v0 + 512);
      v32 = *(v0 + 496);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FA440;
      *(inited + 56) = v19;
      v33 = sub_1CEFD51C4();
      *(inited + 32) = v32;
      *(inited + 64) = v33;
      *(inited + 40) = v31;
      v34 = *(v30 + 16);
      v35 = *(v30 + 24);
      *(inited + 96) = v19;
      *(inited + 104) = v33;
      *(inited + 72) = v34;
      *(inited + 80) = v35;

      v28 = sub_1CF36ED2C(inited);
    }

    v87 = v29;
    v88 = v28;
    v89 = (v0 + 560);
    v36 = *(v0 + 564);
    swift_setDeallocating();
    v37 = *(inited + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C47D0, &unk_1CFA16C90);
    swift_arrayDestroy();
    v38 = MEMORY[0x1E69E7CC0];
    v39 = sub_1CF36EF40(MEMORY[0x1E69E7CC0]);
    v41 = v40;
    v86 = sub_1CF36F154(v38);
    v43 = v42;
    if (v36 == 1)
    {
      v44 = sub_1CF36F368(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v44 = sub_1CF36F57C(MEMORY[0x1E69E7CC0]);
    }

    v46 = v44;
    v47 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAB0, &unk_1CFA046E0);
    v48 = swift_initStackObject();
    v49 = MEMORY[0x1E695EE58];
    *(v48 + 16) = xmmword_1CFA02F60;
    v50 = *v49;
    *(v48 + 32) = *v49;
    *(v48 + 40) = v39;
    *(v48 + 48) = v41;
    v51 = *MEMORY[0x1E695EE60];
    *(v48 + 64) = v19;
    *(v48 + 72) = v51;
    *(v48 + 80) = v88;
    *(v48 + 88) = v87;
    v52 = v19;
    v53 = *MEMORY[0x1E695EE78];
    *(v48 + 104) = v52;
    *(v48 + 112) = v53;
    *(v48 + 120) = v86;
    *(v48 + 128) = v43;
    v54 = *MEMORY[0x1E695EE70];
    *(v48 + 144) = v52;
    *(v48 + 152) = v54;
    *(v48 + 160) = v46;
    *(v48 + 168) = v47;
    v55 = *MEMORY[0x1E695EE80];
    *(v48 + 184) = v52;
    *(v48 + 192) = v55;
    *(v48 + 224) = sub_1CF9E5A58();
    __swift_allocate_boxed_opaque_existential_0((v48 + 200));
    v56 = v55;
    v57 = v50;
    v58 = v51;
    v59 = v53;
    v60 = v54;
    sub_1CF9E58C8();
    sub_1CF4E0858(v48);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAB8, &unk_1CFA07BB0);
    swift_arrayDestroy();
    *v89 = 0;
    v61 = [objc_opt_self() defaultStore];
    v62 = [v61 spsFeedbackRequestPromptTimeoutInSeconds];

    v63 = *MEMORY[0x1E695E480];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAC0, qword_1CFA046F0);
    sub_1CF370A18();
    v64 = sub_1CF9E6618();

    v65 = CFUserNotificationCreate(v63, v62, 2uLL, v89, v64);

    if (*v89)
    {
      v66 = *(v0 + 536);
      v67 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v68 = sub_1CF9E6108();
      v69 = sub_1CF9E72A8();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 67109120;
        swift_beginAccess();
        *(v70 + 4) = *v89;
        _os_log_impl(&dword_1CEFC7000, v68, v69, "FeedbackUIManager: Error from CFUserNotificationCreate: %d", v70, 8u);
        MEMORY[0x1D386CDC0](v70, -1, -1);
      }

      v71 = *(v0 + 536);
    }

    else
    {
      *(v0 + 488) = 0;
      CFUserNotificationReceiveResponse(v65, 0.0, (v0 + 488));
      v80 = *(v0 + 488);
      switch(v80)
      {
        case 0:

          v16 = 0;
          goto LABEL_25;
        case 1:
          v81 = *(v0 + 564);

          if (v81)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          goto LABEL_25;
        case 3:

          v16 = 3;
          goto LABEL_25;
      }

      v82 = *(v0 + 544);
      v83 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v68 = sub_1CF9E6108();
      v84 = sub_1CF9E72A8();
      if (os_log_type_enabled(v68, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_1CEFC7000, v68, v84, "FeedbackUIManager: unknown response from approval request", v85, 2u);
        MEMORY[0x1D386CDC0](v85, -1, -1);
      }

      v71 = *(v0 + 544);
    }

    v72 = *(v0 + 528);
    v73 = *(v0 + 520);

    (*(v72 + 8))(v71, v73);
    v16 = 4;
    goto LABEL_25;
  }

  v4 = sub_1CF9E6888();
  v5 = [v3 objectForKey_];

  if (!v5)
  {

    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    sub_1CEFCCC44(v0 + 432, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    goto LABEL_10;
  }

  v6 = *(v0 + 552);
  sub_1CF9E7728();
  swift_unknownObjectRelease();
  sub_1CEFCCC44(v0 + 432, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  v7 = sub_1CF9E6888();
  v8 = [v3 integerForKey_];

  v9 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v10 = sub_1CF9E6108();
  v11 = sub_1CF9E7298();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_1CEFC7000, v10, v11, "Won't show prompt and will force answer to %ld", v12, 0xCu);
    MEMORY[0x1D386CDC0](v12, -1, -1);
  }

  v13 = *(v0 + 552);
  v14 = *(v0 + 528);
  v15 = *(v0 + 520);

  (*(v14 + 8))(v13, v15);
  if (v8 >= 5)
  {
    v16 = 5;
  }

  else
  {
    v16 = v8;
  }

LABEL_25:
  v74 = *(v0 + 552);
  v75 = *(v0 + 544);
  v76 = *(v0 + 536);

  v77 = *(v0 + 8);
  v78 = *MEMORY[0x1E69E9840];

  return v77(v16);
}

uint64_t sub_1CF36EB18(uint64_t a1)
{
  sub_1CF9E7B38();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    sub_1CF9E7B28();
    v24 = sub_1CF9E6888();
    v25 = FPLocv();

    v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v26;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    v7 = (v6 + 40 * v5);
    v8 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    result = sub_1CF9E8278();
    v10 = *v3;
    v11 = *(result + 16);
    v12 = __OFADD__(*v3, v11);
    v13 = *v3 + v11;
    if (v12)
    {
      break;
    }

    v14 = v2[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v15 = v2[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v2[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v16 = result;
    v17 = swift_slowAlloc();
    v18 = v17;
    v2[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      sub_1CF9E7B18();
      result = v16;
LABEL_18:
      v18 = v2[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(result + 16);
    if (v20)
    {
      v21 = (result + 32);
      v22 = *v3;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1CF36ED2C(uint64_t a1)
{
  sub_1CF9E7B38();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    sub_1CF9E7B28();
    v24 = sub_1CF9E6888();
    v25 = FPLocv();

    v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v26;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    v7 = (v6 + 40 * v5);
    v8 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    result = sub_1CF9E8278();
    v10 = *v3;
    v11 = *(result + 16);
    v12 = __OFADD__(*v3, v11);
    v13 = *v3 + v11;
    if (v12)
    {
      break;
    }

    v14 = v2[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v15 = v2[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v2[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v16 = result;
    v17 = swift_slowAlloc();
    v18 = v17;
    v2[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      sub_1CF9E7B18();
      result = v16;
LABEL_18:
      v18 = v2[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(result + 16);
    if (v20)
    {
      v21 = (result + 32);
      v22 = *v3;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1CF36EF40(uint64_t a1)
{
  sub_1CF9E7B38();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    sub_1CF9E7B28();
    v24 = sub_1CF9E6888();
    v25 = FPLocv();

    v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v26;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    v7 = (v6 + 40 * v5);
    v8 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    result = sub_1CF9E8278();
    v10 = *v3;
    v11 = *(result + 16);
    v12 = __OFADD__(*v3, v11);
    v13 = *v3 + v11;
    if (v12)
    {
      break;
    }

    v14 = v2[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v15 = v2[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v2[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v16 = result;
    v17 = swift_slowAlloc();
    v18 = v17;
    v2[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      sub_1CF9E7B18();
      result = v16;
LABEL_18:
      v18 = v2[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(result + 16);
    if (v20)
    {
      v21 = (result + 32);
      v22 = *v3;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1CF36F154(uint64_t a1)
{
  sub_1CF9E7B38();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    sub_1CF9E7B28();
    v24 = sub_1CF9E6888();
    v25 = FPLocv();

    v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v26;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    v7 = (v6 + 40 * v5);
    v8 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    result = sub_1CF9E8278();
    v10 = *v3;
    v11 = *(result + 16);
    v12 = __OFADD__(*v3, v11);
    v13 = *v3 + v11;
    if (v12)
    {
      break;
    }

    v14 = v2[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v15 = v2[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v2[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v16 = result;
    v17 = swift_slowAlloc();
    v18 = v17;
    v2[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      sub_1CF9E7B18();
      result = v16;
LABEL_18:
      v18 = v2[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(result + 16);
    if (v20)
    {
      v21 = (result + 32);
      v22 = *v3;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1CF36F368(uint64_t a1)
{
  sub_1CF9E7B38();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    sub_1CF9E7B28();
    v24 = sub_1CF9E6888();
    v25 = FPLocv();

    v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v26;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    v7 = (v6 + 40 * v5);
    v8 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    result = sub_1CF9E8278();
    v10 = *v3;
    v11 = *(result + 16);
    v12 = __OFADD__(*v3, v11);
    v13 = *v3 + v11;
    if (v12)
    {
      break;
    }

    v14 = v2[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v15 = v2[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v2[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v16 = result;
    v17 = swift_slowAlloc();
    v18 = v17;
    v2[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      sub_1CF9E7B18();
      result = v16;
LABEL_18:
      v18 = v2[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(result + 16);
    if (v20)
    {
      v21 = (result + 32);
      v22 = *v3;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1CF36F57C(uint64_t a1)
{
  sub_1CF9E7B38();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    sub_1CF9E7B28();
    v24 = sub_1CF9E6888();
    v25 = FPLocv();

    v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v26;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    v7 = (v6 + 40 * v5);
    v8 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    result = sub_1CF9E8278();
    v10 = *v3;
    v11 = *(result + 16);
    v12 = __OFADD__(*v3, v11);
    v13 = *v3 + v11;
    if (v12)
    {
      break;
    }

    v14 = v2[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v15 = v2[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v2[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v16 = result;
    v17 = swift_slowAlloc();
    v18 = v17;
    v2[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      sub_1CF9E7B18();
      result = v16;
LABEL_18:
      v18 = v2[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(result + 16);
    if (v20)
    {
      v21 = (result + 32);
      v22 = *v3;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1CF36F790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 40) = a4;
  *(v7 + 48) = v6;
  *(v7 + 193) = a6;
  *(v7 + 192) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 16) = a1;
  v8 = sub_1CF9E6118();
  *(v7 + 56) = v8;
  v9 = *(v8 - 8);
  *(v7 + 64) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();
  v11 = sub_1CF9E5A58();
  *(v7 + 88) = v11;
  v12 = *(v11 - 8);
  *(v7 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8) + 64) + 15;
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  type metadata accessor for FPFeedbackUIManager();
  *(v7 + 136) = sub_1CF370AD0(&qword_1EC4BFAA0, v15, type metadata accessor for FPFeedbackUIManager);
  v17 = sub_1CF9E6EC8();
  *(v7 + 144) = v17;
  *(v7 + 152) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1CF36F96C, v17, v16);
}

uint64_t sub_1CF36F96C()
{
  v87 = v0;
  v1 = *(v0 + 48);
  v83 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CFA04600;
  v7 = v1[2];
  v6 = v1[3];
  v8 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1CEFD51C4();
  *(v5 + 64) = v9;
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  v10 = v1[4];
  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(v5 + 96) = v8;
  *(v5 + 104) = v9;
  *(v5 + 72) = v11;
  *(v5 + 80) = v12;
  *(v5 + 136) = v8;
  *(v5 + 144) = v9;
  *(v5 + 112) = v4;
  *(v5 + 120) = v3;

  v13 = [v2 domain];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  *(v5 + 176) = v8;
  *(v5 + 184) = v9;
  *(v5 + 152) = v14;
  *(v5 + 160) = v16;
  v17 = [v2 code];
  v18 = MEMORY[0x1E69E6530];
  v19 = MEMORY[0x1E69E65A8];
  *(v5 + 216) = MEMORY[0x1E69E6530];
  *(v5 + 224) = v19;
  *(v5 + 192) = v17;
  sub_1CF9E5C98();
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return MEMORY[0x1EEE6DE38]();
  }

  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  v23 = *(v0 + 88);
  v24 = *(v0 + 96);
  v25 = *(v0 + 193);
  v26 = *(v0 + 192);
  *(v5 + 256) = v18;
  *(v5 + 264) = v19;
  *(v5 + 232) = v20;
  *(v5 + 296) = v18;
  *(v5 + 304) = v19;
  *(v5 + 272) = v26;
  *(v5 + 336) = v18;
  *(v5 + 344) = v19;
  *(v5 + 312) = v25;
  v27 = sub_1CF9E68E8();
  v29 = v28;
  sub_1CF9E5A28();
  sub_1CF33F8C8(v21, v22);
  v30 = (*(v24 + 48))(v22, 1, v23);
  v31 = *(v0 + 120);
  if (v30 != 1)
  {
    v46 = *(v0 + 104);
    v45 = *(v0 + 112);
    v47 = *(v0 + 88);
    v48 = *(v0 + 96);
    v49 = *(v0 + 80);

    (*(v48 + 32))(v45, v31, v47);
    v50 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v48 + 16))(v46, v45, v47);
    v51 = sub_1CF9E6108();
    v52 = sub_1CF9E7288();
    v53 = os_log_type_enabled(v51, v52);
    v55 = *(v0 + 96);
    v54 = *(v0 + 104);
    v56 = *(v0 + 80);
    v57 = *(v0 + 88);
    v59 = *(v0 + 56);
    v58 = *(v0 + 64);
    if (v53)
    {
      v85 = *(v0 + 56);
      v60 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v86 = v82;
      *v60 = 136315138;
      sub_1CF370AD0(&unk_1EDEAB3F0, 255, MEMORY[0x1E6968FB0]);
      v61 = sub_1CF9E7F98();
      v81 = v56;
      v63 = v62;
      v80 = v52;
      v64 = *(v55 + 8);
      v64(v54, v57);
      v65 = sub_1CEFD0DF0(v61, v63, &v86);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_1CEFC7000, v51, v80, "FeedbackUIManager: Will spawn feedback UI with URL: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x1D386CDC0](v82, -1, -1);
      MEMORY[0x1D386CDC0](v60, -1, -1);

      (*(v58 + 8))(v81, v85);
    }

    else
    {

      v64 = *(v55 + 8);
      v64(v54, v57);
      (*(v58 + 8))(v56, v59);
    }

    *(v0 + 160) = v64;
    v74 = *(v0 + 136);
    v75 = *(v0 + 112);
    v76 = *(v0 + 48);
    v77 = swift_task_alloc();
    *(v0 + 168) = v77;
    *(v77 + 16) = v75;
    v78 = *(MEMORY[0x1E69E8920] + 4);
    v79 = swift_task_alloc();
    *(v0 + 176) = v79;
    *v79 = v0;
    v79[1] = sub_1CF370034;

    return MEMORY[0x1EEE6DE38]();
  }

  v32 = *(v0 + 72);
  sub_1CEFCCC44(*(v0 + 120), &unk_1EC4BE310, qword_1CF9FCBE0);
  v33 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v34 = sub_1CF9E6108();
  v35 = sub_1CF9E72A8();

  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 128);
  v38 = *(v0 + 64);
  v39 = *(v0 + 72);
  v40 = *(v0 + 56);
  if (v36)
  {
    v84 = *(v0 + 128);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v86 = v42;
    *v41 = 136315138;
    v43 = sub_1CEFD0DF0(v27, v29, &v86);

    *(v41 + 4) = v43;
    _os_log_impl(&dword_1CEFC7000, v34, v35, "FeedbackUIManager: could not construct feedbackURL from string: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1D386CDC0](v42, -1, -1);
    MEMORY[0x1D386CDC0](v41, -1, -1);

    (*(v38 + 8))(v39, v40);
    v44 = v84;
  }

  else
  {

    (*(v38 + 8))(v39, v40);
    v44 = v37;
  }

  sub_1CEFCCC44(v44, &unk_1EC4BE310, qword_1CF9FCBE0);
  v67 = *(v0 + 120);
  v66 = *(v0 + 128);
  v69 = *(v0 + 104);
  v68 = *(v0 + 112);
  v71 = *(v0 + 72);
  v70 = *(v0 + 80);

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_1CF370034()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 184) = v0;

  v6 = *(v2 + 152);
  v7 = *(v2 + 144);
  if (v0)
  {
    v8 = sub_1CF37026C;
  }

  else
  {
    v8 = sub_1CF37018C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1CF37018C()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12] + 8;
  sub_1CEFCCC44(v0[16], &unk_1EC4BE310, qword_1CF9FCBE0);
  v1(v2, v3);
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[9];
  v9 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1CF37026C()
{
  v1 = v0[20];
  v2 = v0[15];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[12] + 8;
  sub_1CEFCCC44(v0[16], &unk_1EC4BE310, qword_1CF9FCBE0);
  v1(v3, v5);

  v9 = v0[1];
  v10 = v0[23];

  return v9();
}

void sub_1CF37035C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAA8, &qword_1CFA046D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = aBlock - v5;
  v7 = [objc_opt_self() defaultWorkspace];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1CF9E5928();
    (*(v3 + 16))(v6, a1, v2);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    (*(v3 + 32))(v11 + v10, v6, v2);
    aBlock[4] = sub_1CF37098C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF37076C;
    aBlock[3] = &block_descriptor_17;
    v12 = _Block_copy(aBlock);

    [v8 openURL:v9 configuration:0 completionHandler:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF370550(uint64_t a1, void *a2)
{
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a2;
    v9 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v10 = a2;
    v11 = sub_1CF9E6108();
    v12 = sub_1CF9E72A8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = a2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1CEFC7000, v11, v12, "FeedbackUIManager: Opening the Feedback app failed: %@", v13, 0xCu);
      sub_1CEFCCC44(v14, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v14, -1, -1);
      MEMORY[0x1D386CDC0](v13, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    v18[1] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAA8, &qword_1CFA046D8);
    return sub_1CF9E6ED8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAA8, &qword_1CFA046D8);
    return sub_1CF9E6EE8();
  }
}

uint64_t sub_1CF37076C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1CF9E6638();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1CF370818()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF37087C()
{
  if (qword_1EC4BCD20 != -1)
  {
    swift_once();
  }

  return sub_1CF9E7518();
}

unint64_t sub_1CF3708D4()
{
  result = qword_1EDEA3510;
  if (!qword_1EDEA3510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEA3510);
  }

  return result;
}

unint64_t sub_1CF370920()
{
  result = qword_1EDEA3770;
  if (!qword_1EDEA3770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C4DC0, &qword_1CFA046D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3770);
  }

  return result;
}

uint64_t sub_1CF37098C(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAA8, &qword_1CFA046D8) - 8) + 80);

  return sub_1CF370550(a1, a2);
}

unint64_t sub_1CF370A18()
{
  result = qword_1EC4BFAC8;
  if (!qword_1EC4BFAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BFAC0, qword_1CFA046F0);
    sub_1CF370AD0(&qword_1EC4BD5A8, 255, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFAC8);
  }

  return result;
}

uint64_t sub_1CF370AD0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1CF370B18(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(v3 + 16))(v7, a1, AssociatedTypeWitness);
  v10 = *(swift_getAssociatedConformanceWitness() + 40);
  sub_1CF9E7068();
  sub_1CF9E6FF8();
  return (*(v3 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_1CF370C98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v85 = a6;
  v83 = a7;
  v68 = a5;
  v74 = a4;
  v84 = a3;
  v89 = a1;
  v8 = *a2;
  v9 = *(*a2 + 2648);
  v10 = *(*a2 + 2632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = *(AssociatedTypeWitness - 8);
  v11 = *(v82 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v66 - v14;
  v15 = *(v8 + 2656);
  v16 = *(v8 + 2640);
  v17 = swift_getAssociatedTypeWitness();
  v18 = sub_1CF9E75D8();
  v71 = *(v18 - 8);
  v72 = v18;
  v19 = *(v71 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v67 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v81 = &v66 - v23;
  v73 = *(v17 - 8);
  v24 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v66 - v25;
  v77 = v10;
  *&v27 = v10;
  v69 = v16;
  *(&v27 + 1) = v16;
  v78 = v9;
  *&v28 = v9;
  v70 = v15;
  *(&v28 + 1) = v15;
  v88 = v28;
  v87 = v27;
  v29 = type metadata accessor for ItemReconciliation();
  v30 = sub_1CF9E75D8();
  v80 = *(v30 - 8);
  v31 = *(v80 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v66 - v33;
  v35 = *(v29 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v38 = &v66 - v37;
  v39 = a2[2];
  v40 = v86;
  result = sub_1CF68DDB0(v89, v84, v85, *(v83 + 8), v34);
  if (!v40)
  {
    v43 = v80;
    v42 = v81;
    v84 = v26;
    v85 = v38;
    v86 = 0;
    if ((*(v35 + 48))(v34, 1, v29) == 1)
    {
      (*(v43 + 8))(v34, v30);
LABEL_6:
      v49 = AssociatedTypeWitness;
      v50 = v82;
      v51 = v76;
      (*(v82 + 16))(v79, v89, AssociatedTypeWitness);
      v52 = *(swift_getAssociatedConformanceWitness() + 40);
      sub_1CF9E7068();
      sub_1CF9E6FF8();
      return (*(v50 + 8))(v51, v49);
    }

    v44 = v85;
    (*(v35 + 32))(v85, v34, v29);
    v45 = v44 + *(v29 + 52);
    v46 = v71;
    v47 = v72;
    (*(v71 + 16))(v42, v45, v72);
    v48 = v73;
    if ((*(v73 + 48))(v42, 1, v17) == 1)
    {
      (*(v35 + 8))(v44, v29);
      (*(v46 + 8))(v42, v47);
      goto LABEL_6;
    }

    v80 = v35;
    v83 = v29;
    v53 = v84;
    (*(v48 + 32))(v84, v42, v17);
    v54 = type metadata accessor for ItemReconciliationHalf();
    v55 = v82;
    v56 = v17;
    v57 = v48;
    v58 = v89;
    if (*(v45 + *(v54 + 52)) != 2)
    {
      v59 = *v68;
      v60 = *(swift_getAssociatedConformanceWitness() + 40);

      v61 = sub_1CF9E7048();

      if (v61)
      {
        sub_1CF9E7068();
        v62 = v67;
        sub_1CF9E7008();
        (*(v71 + 8))(v62, v72);
      }

      else
      {
        v63 = AssociatedTypeWitness;
        (*(v55 + 16))(v79, v58, AssociatedTypeWitness);
        v64 = *(swift_getAssociatedConformanceWitness() + 40);
        sub_1CF9E7068();
        v65 = v76;
        sub_1CF9E6FF8();
        (*(v55 + 8))(v65, v63);
      }

      v57 = v73;
    }

    (*(v57 + 8))(v53, v56);
    return (*(v80 + 8))(v85, v83);
  }

  return result;
}

uint64_t sub_1CF3713C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a3;
  v32 = a1;
  v9 = *v5;
  v10 = sub_1CF9E64A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1CF042F4C();
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = sub_1CF9E64D8();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v18 = v9[332];
    v19 = v9[330];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v21 = sub_1CF9E6DA8();
    if (sub_1CF9E6DF8())
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v23 = sub_1CF981D64(v21, AssociatedTypeWitness, *(AssociatedConformanceWitness + 40));
    }

    else
    {
      v23 = MEMORY[0x1E69E7CD0];
    }

    v35 = v23;
    v24 = sub_1CF033B88();
    v25 = v5[5];
    v26 = MEMORY[0x1EEE9AC00](v24);
    *(&v31 - 8) = v9[329];
    *(&v31 - 7) = v19;
    v27 = v9[331];
    *(&v31 - 6) = a4;
    *(&v31 - 5) = v27;
    *(&v31 - 4) = v18;
    *(&v31 - 3) = a5;
    *(&v31 - 2) = &v35;
    v28 = *v25;
    if ((v26 & 0x40000) != 0)
    {
      v30 = v34;
      (*(v28 + 704))(a2, v33, sub_1CF373994, &v31 - 10, a4, a5);
      if (v30)
      {
      }
    }

    else
    {
      v29 = v34;
      (*(v28 + 696))(v32, a2, v33, sub_1CF373954);
      if (v29)
      {
      }
    }

    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3716C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v262 = a6;
  v263 = a5;
  v221 = a3;
  v259 = a2;
  v255 = a1;
  v8 = *v6;
  v254 = sub_1CF9E5CF8();
  v233 = *(v254 - 8);
  v9 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v254);
  v253 = v203 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[329];
  v12 = v8[331];
  v234 = type metadata accessor for SnapshotItem();
  v222 = sub_1CF9E75D8();
  v232 = *(v222 - 8);
  v13 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v222);
  v223 = v203 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v247 = *(AssociatedTypeWitness - 8);
  v16 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v226 = v203 - v17;
  v18 = v8[330];
  v19 = v8[332];
  v268 = v18;
  v269 = v11;
  v252 = v11;
  v270 = v19;
  v271 = v12;
  v251 = v12;
  v20 = type metadata accessor for ItemReconciliation();
  v242 = sub_1CF9E75D8();
  v231 = *(v242 - 8);
  v21 = *(v231 + 64);
  v22 = MEMORY[0x1EEE9AC00](v242);
  v228 = v203 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v245 = v203 - v25;
  j = v20;
  v230 = *(v20 - 8);
  v26 = *(v230 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v227 = v203 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v244 = v203 - v29;
  v257 = v19;
  v258 = v18;
  v30 = swift_getAssociatedTypeWitness();
  v248 = *(v30 - 8);
  v31 = *(v248 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v225 = v203 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v224 = v203 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v237 = v203 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v256 = v203 - v38;
  v261 = v39;
  v235 = sub_1CF9E75D8();
  v229 = *(v235 - 8);
  v40 = *(v229 + 64);
  v41 = MEMORY[0x1EEE9AC00](v235);
  v43 = v203 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v238 = v203 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v249 = v203 - v46;
  v260 = AssociatedTypeWitness;
  v240 = sub_1CF9E75D8();
  v47 = *(v240 - 8);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x1EEE9AC00](v240);
  v239 = v203 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v52 = (v203 - v51);
  v53 = sub_1CF9E64A8();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v57 = (v203 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_1CF042F4C();
  *v57 = v58;
  (*(v54 + 104))(v57, *MEMORY[0x1E69E8020], v53);
  v59 = v58;
  LOBYTE(v58) = sub_1CF9E64D8();
  (*(v54 + 8))(v57, v53);
  if ((v58 & 1) == 0)
  {
    goto LABEL_121;
  }

  v236 = v47;
  v60 = v262;
  v61 = *(v262 + 8);
  v62 = v264;
  result = sub_1CF3713C0(v255, v259, a4, v263, v61);
  if (v62)
  {
    return result;
  }

  v64 = v60;
  v246 = v61;
  v243 = v43;
  v264 = 0;
  v267 = result;
  v65 = v260;
  v66 = sub_1CF9E6DA8();
  if (sub_1CF9E6DF8())
  {
    v67 = v251;
    v68 = v252;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v70 = sub_1CF981D64(v66, v65, *(AssociatedConformanceWitness + 40));
  }

  else
  {
    v70 = MEMORY[0x1E69E7CD0];
    v68 = v252;
    v67 = v251;
  }

  v266 = v70;
  v71 = sub_1CF478C28();
  v72 = *(v71 + 32);
  MEMORY[0x1EEE9AC00](v71);
  v73 = v263;
  v203[-6] = v263;
  v203[-5] = v64;
  v203[-4] = v6;
  v203[-3] = a4;

  v74 = v264;
  sub_1CF354B6C(64, a4, sub_1CF373930, &v203[-8], v68, v258, v73, v67, v257, v246);
  v264 = v74;
  if (v74)
  {

LABEL_8:
  }

  v259 = a4;

  v255 = v6;
  v208 = v266;
  if ((v266 & 0xC000000000000001) != 0)
  {

    sub_1CF9E7808();
    v75 = *(swift_getAssociatedConformanceWitness() + 40);
    sub_1CF9E7038();
    v77 = v272;
    v76 = v273;
    v78 = v274;
    v79 = v275;
    v80 = v276;
  }

  else
  {
    v81 = -1 << *(v266 + 32);
    v76 = v266 + 56;
    v78 = ~v81;
    v82 = -v81;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    else
    {
      v83 = -1;
    }

    v80 = v83 & *(v266 + 56);
    v79 = 0;
  }

  v84 = (v247 + 56);
  v217 = v78;
  v85 = (v78 + 64) >> 6;
  v218 = (v247 + 16);
  v220 = (v247 + 8);
  for (i = v77; ; v77 = i)
  {
    v241 = v79;
    if (v77 < 0)
    {
      break;
    }

    if (!v80)
    {
      v89 = v79;
      while (1)
      {
        v79 = v89 + 1;
        if (__OFADD__(v89, 1))
        {
          break;
        }

        if (v79 >= v85)
        {
          goto LABEL_30;
        }

        v86 = *(v76 + 8 * v79);
        ++v89;
        if (v86)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v86 = v80;
LABEL_27:
    v88 = (v86 - 1) & v86;
    v90 = *(v77 + 48) + *(v247 + 72) * (__clz(__rbit64(v86)) | (v79 << 6));
    v87 = v260;
    (*(v247 + 16))(v52, v90, v260);
LABEL_28:
    (*v84)(v52, 0, 1, v87);
    v91 = *(sub_1CF478C28() + 32);

    v92 = v264;
    sub_1CF348CFC(v52, 64, v259, v263, v262);
    v264 = v92;
    if (v92)
    {
      (*v220)(v52, v87);

      sub_1CEFCB59C();
      goto LABEL_8;
    }

    (*v220)(v52, v87);

    v80 = v88;
  }

  if (sub_1CF9E7838())
  {
    v87 = v260;
    sub_1CF9E8008();
    swift_unknownObjectRelease();
    v88 = v80;
    goto LABEL_28;
  }

LABEL_30:
  (*v84)(v52, 1, 1, v260);
  sub_1CEFCB59C();
  v93 = v261;
  v94 = sub_1CF9E6DA8();
  if (sub_1CF9E6DF8())
  {
    v95 = swift_getAssociatedConformanceWitness();
    v96 = sub_1CF981D64(v94, v93, *(v95 + 40));
  }

  else
  {
    v96 = MEMORY[0x1E69E7CD0];
  }

  v97 = v255;
  v98 = v249;

  v265 = v96;
  v99 = v267;
  if ((v267 & 0xC000000000000001) != 0)
  {

    sub_1CF9E7808();
    v100 = *(swift_getAssociatedConformanceWitness() + 40);
    sub_1CF9E7038();
    v101 = v277;
    v102 = v278;
    v103 = v279;
    v104 = v280;
    v105 = v281;
  }

  else
  {
    v106 = -1 << *(v267 + 32);
    v102 = v267 + 56;
    v107 = ~v106;
    v108 = -v106;
    if (v108 < 64)
    {
      v109 = ~(-1 << v108);
    }

    else
    {
      v109 = -1;
    }

    v110 = v109 & *(v267 + 56);

    v105 = v110;
    v103 = v107;
    v104 = 0;
    v101 = v99;
  }

  v111 = v256;
  v112 = v245;
  v206 = v99;
  v205 = 0;
  v241 = (v248 + 56);
  v207 = v103;
  v113 = (v103 + 64) >> 6;
  v217 = (v248 + 16);
  i = (v248 + 32);
  v218 = (v230 + 48);
  v214 = (v230 + 32);
  v213 = (v236 + 2);
  v212 = (v247 + 48);
  v210 = (v236 + 1);
  v209 = (v248 + 48);
  v236 = (v248 + 8);
  v211 = (v230 + 8);
  v215 = (v231 + 8);
  v229 += 8;
  v204 = (v247 + 32);
  v203[1] = v234 - 8;
  v233 += 8;
  v203[0] = v232 + 8;
  v231 = v101;
  v230 = v113;
  v216 = v102;
  v114 = v105;
  while (1)
  {
    v232 = v104;
    if (v101 < 0)
    {
      break;
    }

    if (!v114)
    {
      v116 = v104;
      while (1)
      {
        v104 = v116 + 1;
        if (__OFADD__(v116, 1))
        {
          goto LABEL_119;
        }

        if (v104 >= v113)
        {
          goto LABEL_84;
        }

        v115 = *(v102 + 8 * v104);
        ++v116;
        if (v115)
        {
          goto LABEL_49;
        }
      }
    }

    v115 = v114;
LABEL_49:
    v247 = (v115 - 1) & v115;
    (*(v248 + 16))(v98, *(v101 + 48) + *(v248 + 72) * (__clz(__rbit64(v115)) | (v104 << 6)), v93);
LABEL_50:
    (*v241)(v98, 0, 1, v93);
    v117 = *i;
    (*i)(v111, v98, v93);
    v118 = v111;
    v119 = *(v97 + 16);
    v120 = v112;
    v121 = v264;
    sub_1CF68E230(v118, v259, v263, v246, v112);
    v264 = v121;
    if (v121)
    {
      sub_1CEFCB59C();
      (*v236)(v256, v93);
      goto LABEL_116;
    }

    v122 = *v218;
    v123 = j;
    if ((*v218)(v112, 1, j) == 1)
    {
      v111 = v256;
      v93 = v261;
      (*v236)(v256, v261);
      (*v215)(v112, v242);
      v114 = v247;
      goto LABEL_53;
    }

    v124 = *v214;
    v125 = v244;
    (*v214)(v244, v120, v123);
    v126 = &v125[*(v123 + 52)];
    v127 = v239;
    v128 = v240;
    (*v213)(v239, v126, v240);
    v129 = (*v212)(v127, 1, v260);
    v98 = v249;
    if (v129 == 1)
    {
      (*v210)(v127, v128);
      v130 = v238;
      v131 = v264;
      (*(*v255[5] + 288))(v256, v259, v263, v246);
      v264 = v131;
      if (v131)
      {
        sub_1CEFCB59C();
        goto LABEL_115;
      }

      v132 = v261;
      if ((*v209)(v130, 1, v261) == 1)
      {
        (*v211)(v244, j);
        v111 = v256;
        (*v236)(v256, v132);
        (*v229)(v130, v235);
        v114 = v247;
        v97 = v255;
        v93 = v132;
        v112 = v245;
        goto LABEL_58;
      }

      v133 = v237;
      v117(v237, v130, v132);
      v134 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
      v135 = v256;
      if (sub_1CF9E6868())
      {
        v136 = *v236;
        (*v236)(v133, v132);
        (*v211)(v244, j);
        v136(v135, v132);
        v114 = v247;
        v97 = v255;
        v93 = v132;
        v111 = v135;
        v112 = v245;
LABEL_53:
        v98 = v249;
LABEL_58:
        v102 = v216;
      }

      else
      {
        v137 = v228;
        v138 = v264;
        sub_1CF68E230(v133, v259, v263, v246, v228);
        v264 = v138;
        if (v138)
        {
          sub_1CEFCB59C();
          v201 = *v236;
          v202 = v261;
          (*v236)(v237, v261);
          (*v211)(v244, j);
          v201(v256, v202);
          goto LABEL_116;
        }

        v139 = j;
        v140 = v122(v137, 1, j);
        v111 = v256;
        v102 = v216;
        if (v140 == 1)
        {
          v141 = *v236;
          v142 = v261;
          (*v236)(v237, v261);
          (*v211)(v244, v139);
          v141(v111, v142);
          v93 = v142;
          (*v215)(v137, v242);
        }

        else
        {
          v143 = v227;
          v124(v227, v137, v139);
          v144 = type metadata accessor for ItemReconciliationHalf();
          v145 = v237;
          if (v143[*(v144 + 52)] == 2)
          {
            v146 = *v211;
            (*v211)(v143, v139);
            v147 = *v236;
            v148 = v145;
            v149 = v261;
            (*v236)(v148, v261);
            v146(v244, v139);
            v93 = v149;
            v111 = v256;
            v147(v256, v93);
          }

          else
          {
            v150 = v237;
            v151 = v261;
            (*v217)(v225, v237, v261);
            sub_1CF9E7068();
            v152 = v224;
            sub_1CF9E6FF8();
            v153 = *v236;
            (*v236)(v152, v151);
            v154 = *v211;
            (*v211)(v143, v139);
            v153(v150, v151);
            v102 = v216;
            v154(v244, v139);
            v155 = v256;
            v153(v256, v151);
            v93 = v151;
            v111 = v155;
          }
        }

        v114 = v247;
        v97 = v255;
        v112 = v245;
        v98 = v249;
      }

      v101 = v231;
LABEL_60:
      v113 = v230;
      continue;
    }

    v156 = v226;
    (*v204)(v226, v127, v260);
    v97 = v255;
    v157 = v223;
    v158 = v264;
    (*(*v255[4] + 240))(v156, 1, v259, v263, v246);
    v264 = v158;
    if (v158)
    {
      goto LABEL_122;
    }

    v159 = v234;
    v160 = *(v234 - 8);
    v161 = (*(v160 + 48))(v157, 1, v234);
    v102 = v216;
    if (v161 == 1)
    {
      (*v203[0])(v157, v222);
LABEL_80:
      v111 = v256;
      v112 = v245;
      v101 = v231;
LABEL_81:
      (*v220)(v226, v260);
      (*v211)(v244, j);
      v93 = v261;
      (*v236)(v111, v261);
      v114 = v247;
      goto LABEL_60;
    }

    WitnessTable = swift_getWitnessTable();
    v163 = sub_1CF937C7C(v159, WitnessTable);
    (*(v160 + 8))(v157, v159);
    if ((v163 & 1) == 0)
    {
      goto LABEL_80;
    }

    v164 = v221 - 1;
    v101 = v231;
    if (v221 >= 1)
    {
      v165 = *(sub_1CF478C28() + 32);

      v166 = v253;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v168 = v167;
      result = (*v233)(v166, v254);
      v169 = v168 * 1000000000.0;
      if (COERCE__INT64(fabs(v168 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
        return result;
      }

      if (v169 <= -9.22337204e18)
      {
        goto LABEL_131;
      }

      if (v169 >= 9.22337204e18)
      {
        goto LABEL_132;
      }

      v170 = v264;
      sub_1CF347AC0(v226, 64, v169, v259, v263, v262);
      v264 = v170;
      if (v170)
      {
LABEL_129:

        goto LABEL_122;
      }

      v221 = v164;
      v111 = v256;
      v112 = v245;
      goto LABEL_81;
    }

    (*v220)(v226, v260);
    (*v211)(v244, j);
    v111 = v256;
    v93 = v261;
    result = (*v236)(v256, v261);
    v171 = __OFADD__(v205++, 1);
    v112 = v245;
    v113 = v230;
    if (v171)
    {
      goto LABEL_133;
    }

    v114 = v247;
  }

  if (sub_1CF9E7838())
  {
    sub_1CF9E8008();
    swift_unknownObjectRelease();
    v247 = v114;
    v112 = v245;
    goto LABEL_50;
  }

LABEL_84:
  v260 = *v241;
  v260(v98, 1, 1, v93);
  sub_1CEFCB59C();
  v172 = v265;
  if ((v265 & 0xC000000000000001) != 0)
  {
    sub_1CF9E7808();
    v173 = v258;
    v174 = *(swift_getAssociatedConformanceWitness() + 40);
    sub_1CF9E7038();
    v172 = v282;
    v175 = v283;
    v176 = v284;
    v177 = v285;
    v178 = v286;
    v179 = v252;
  }

  else
  {
    v177 = 0;
    v180 = -1 << *(v265 + 32);
    v175 = v265 + 56;
    v176 = ~v180;
    v181 = -v180;
    if (v181 < 64)
    {
      v182 = ~(-1 << v181);
    }

    else
    {
      v182 = -1;
    }

    v178 = v182 & *(v265 + 56);
    v179 = v252;
    v173 = v258;
  }

  v247 = v176;
  v183 = (v176 + 64) >> 6;
  for (j = v172; ; v172 = j)
  {
    v256 = v177;
    if ((v172 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_1CF9E7838())
    {
LABEL_110:
      v260(v243, 1, 1, v261);
      sub_1CEFCB59C();

      return v205;
    }

    v185 = v243;
    v186 = v261;
    sub_1CF9E8008();
    swift_unknownObjectRelease();
    v249 = v178;
LABEL_102:
    v260(v185, 0, 1, v186);
    sub_1CF0537A0();
    v268 = v173;
    v269 = v179;
    v270 = v257;
    v271 = v251;
    type metadata accessor for Materialization.BackgroundMaterializeParentHierarchy();
    v189 = v253;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v191 = v190;
    v192 = *v233;
    (*v233)(v189, v254);
    v193 = v191 * 1000000000.0;
    if (COERCE__INT64(fabs(v191 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
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
      goto LABEL_129;
    }

    if (v193 <= -9.22337204e18)
    {
      goto LABEL_124;
    }

    if (v193 >= 9.22337204e18)
    {
      goto LABEL_125;
    }

    v194 = v243;
    v195 = sub_1CF574884(v243, 0, v193, 0x4000000000);
    (*v236)(v194, v261);
    v196 = v253;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v198 = v197;
    v192(v196, v254);
    v199 = v198 * 1000000000.0;
    if (COERCE__INT64(fabs(v198 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_126;
    }

    if (v199 <= -9.22337204e18)
    {
      goto LABEL_127;
    }

    if (v199 >= 9.22337204e18)
    {
      goto LABEL_128;
    }

    v200 = v264;
    sub_1CF5215C0(v195);
    v264 = v200;
    if (v200)
    {

      sub_1CEFCB59C();
    }

    v179 = v252;
    v173 = v258;
  }

  if (v178)
  {
    v249 = v178;
    v184 = v178;
LABEL_101:
    v178 = (v184 - 1) & v184;
    v188 = *(v172 + 48) + *(v248 + 72) * (__clz(__rbit64(v184)) | (v177 << 6));
    v185 = v243;
    v186 = v261;
    (*(v248 + 16))(v243, v188, v261);
    goto LABEL_102;
  }

  v187 = v177;
  while (1)
  {
    v177 = v187 + 1;
    if (__OFADD__(v187, 1))
    {
      break;
    }

    if (v177 >= v183)
    {
      goto LABEL_110;
    }

    v184 = *(v175 + 8 * v177);
    ++v187;
    if (v184)
    {
      v249 = 0;
      goto LABEL_101;
    }
  }

LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  sub_1CEFCB59C();
  (*v220)(v226, v260);
LABEL_115:
  (*v211)(v244, j);
  (*v236)(v256, v261);
LABEL_116:
}

uint64_t sub_1CF37396C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  return sub_1CF370B18(a1);
}

void sub_1CF373A18()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = 0x20u;
  v2 = &unk_1F4BEE000;
  v3 = &unk_1F4BEE000;
  do
  {
    v6 = byte_1F4BEB008[v1];
    if (qword_1CFA04890[byte_1F4BEE140] != qword_1CFA04890[v6] && qword_1CFA04890[byte_1F4BEE141] != qword_1CFA04890[v6] && qword_1CFA04890[byte_1F4BEE142] != qword_1CFA04890[v6] && qword_1CFA04890[v2[323]] != qword_1CFA04890[v6] && qword_1CFA04890[v3[324]] != qword_1CFA04890[v6])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CF680D70(0, *(v0 + 16) + 1, 1);
      }

      v5 = *(v0 + 16);
      v4 = *(v0 + 24);
      if (v5 >= v4 >> 1)
      {
        sub_1CF680D70((v4 > 1), v5 + 1, 1);
      }

      *(v0 + 16) = v5 + 1;
      *(v0 + v5 + 32) = v6;
      v2 = &unk_1F4BEE000;
      v3 = &unk_1F4BEE000;
    }

    ++v1;
  }

  while (v1 != 121);
  qword_1EDEBB6A8 = v0;
}

id sub_1CF373B94(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(a1 + 96);

  v3 = sub_1CF9E6888();

  return v3;
}

unint64_t sub_1CF373BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  *(a2 + 24) = &type metadata for SQLItemJobID;
  result = sub_1CF03E084();
  *(a2 + 32) = result;
  *a2 = a1;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1CF373C34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[9];
  if (v6)
  {
    v9 = result;
    v10 = *v4;
    v39 = v5;
    v11 = v4[10];

    v13 = v6(v12);
    result = sub_1CEFF7124(v6);
    if (v13)
    {
      v15 = *(v9 + 96);
      v14 = *(v9 + 104);
      if (*(v9 + 112))
      {
        if (*(v9 + 112) != 1)
        {
          goto LABEL_18;
        }

        v16 = *(*v13 + 304);
        v17 = *(v9 + 96);
        v18 = a2;
        v19 = a3;
        v20 = *(v9 + 104);

        v16(v21);
        v22 = v15;
        v23 = v20;
        a3 = v19;
        a2 = v18;
        v24 = 1;
LABEL_17:
        sub_1CF03D7A8(v22, v23, v24);
LABEL_18:
        v37 = *(v10 + 80);
        v38 = *(v10 + 96);
        type metadata accessor for Materialization.MaterializeItem();
        v29 = swift_dynamicCastClass();
        if (v29)
        {
          v30 = v29;
          v31 = *(*v13 + 544);

          v31(v30, 1, a2, a3, a4);
          if (v39)
          {
            goto LABEL_23;
          }
        }

        v32 = (*(*v13 + 184))(v29);
        if (!v32)
        {
        }

        (*(*v32 + 120))(v13, v9);
LABEL_23:
      }

      v35 = *(v9 + 104);
      if ((v15 & 0x200000) != 0)
      {
        v25 = *(*v13 + 352);

        v25(v26);
        if ((v15 & 0x1000000) == 0)
        {
LABEL_16:
          v22 = v15;
          v23 = v35;
          v24 = 0;
          goto LABEL_17;
        }
      }

      else
      {

        if ((v15 & 0x1000000) == 0)
        {
          goto LABEL_16;
        }
      }

      v28 = *(v10 + 80);
      v27 = *(v10 + 88);
      v33 = *(v10 + 104);
      v34 = *(v10 + 96);
      type metadata accessor for Maintenance.PaceRefreshInheritedContentPolicy();
      if (swift_dynamicCastClass())
      {
        (*(*v13 + 584))();
      }

      type metadata accessor for Maintenance.UpdateContentRankAfterIndexDrop();
      if (swift_dynamicCastClass())
      {
        sub_1CF37D9D4();
      }

      type metadata accessor for Maintenance.UpdateIndexableItems();
      if (swift_dynamicCastClass())
      {
        sub_1CF37D9D4();
      }

      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1CF373FB0(uint64_t result)
{
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = v1;
    v4 = result;
    v5 = *(v1 + 80);

    v7 = v2(v6);
    result = sub_1CEFF7124(v2);
    if (v7)
    {
      if (*(v4 + 112) == 1)
      {
        v8 = *(v3 + 72);
        if (v8)
        {
          v9 = *(v3 + 80);

          v11 = v8(v10);
          result = sub_1CEFF7124(v8);
          if (v11)
          {
            (*(*v11 + 304))(result);
          }
        }
      }

      v12 = (*(*v7 + 184))(result);
      if (v12)
      {
        (*(*v12 + 136))(v7, v4);
      }
    }
  }

  return result;
}

void sub_1CF374114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = *(*v6 + 96);
  v58 = *(*v6 + 80);
  v59 = v11;
  v12 = type metadata accessor for PersistenceTrigger();
  v61 = *(v12 - 8);
  v13 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v43 - v14);
  v54 = a3;
  v55 = a4;
  v56 = v6;
  v57 = a1;
  v16 = *(a4 + 8);
  v17 = (*(v16 + 24))(sub_1CF381E10, v53, a3, v16);
  if (!v5)
  {
    v18 = v17;
    v50 = v16;
    v51 = a4;
    v49 = v15;
    v52 = 0;
    v19 = [v17 next];
    if (v19)
    {
      v20 = [v18 longAtIndex_];
      v21 = [v18 isNullAtIndex_];
      v44 = v12;
      if (v21)
      {
        v48 = 4;
      }

      else
      {
        v48 = [v18 longAtIndex_];
      }

      v46 = [v18 &off_1E83C2C20];
      v45 = [v18 unsignedLongAtIndex_];
      v47 = v18;
      v26 = v6;
      v27 = *(v6 + 16);
      *(&v59 + 1) = &type metadata for SQLItemJobID;
      v60 = sub_1CF03E084();
      *&v58 = v20;
      BYTE8(v58) = v27;
      swift_beginAccess();
      sub_1CF03E0D8(&v58, a1 + 56);
      v28 = swift_endAccess();
      if (v48 == 2)
      {
        sub_1CF3749D0(a2, v6, a1, v20, a3, a3, v51, v51);

        return;
      }

      v18 = v47;
      v29 = v52;
      if (v48 < 2)
      {
        if (v46)
        {
          MEMORY[0x1EEE9AC00](v28);
          v30 = v51;
          *(&v43 - 6) = a3;
          *(&v43 - 5) = v30;
          *(&v43 - 4) = v6;
          *(&v43 - 3) = a1;
          *(&v43 - 2) = v20;
          (*(v30 + 32))(sub_1CF381E40);
          if (!v29 && v45 == 0x8000 && *(a1 + 136) != 0x8000)
          {
            v35 = *(v6 + 72);
            if (v35)
            {
              v36 = *(v6 + 80);

              v38 = v35(v37);
              sub_1CEFF7124(v35);
              if (v38)
              {
                v39 = v49;
                *v49 = a1;
                v40 = v44;
                swift_storeEnumTagMultiPayload();
                v41 = v18;
                v42 = *(*v38 + 312);

                v42(v39);

                (*(v61 + 8))(v39, v40);
                return;
              }
            }
          }
        }

        else
        {
          sub_1CF3749D0(a2, v6, a1, v20, a3, a3, v51, v51);
        }
      }

      else
      {
        MEMORY[0x1EEE9AC00](v28);
        v34 = v51;
        *(&v43 - 6) = a3;
        *(&v43 - 5) = v34;
        *(&v43 - 4) = v26;
        *(&v43 - 3) = a1;
        *(&v43 - 2) = v20;
        (*(v34 + 32))(sub_1CF381E28);
        if (!v29)
        {
          if ((*(v34 + 24))(a3, v34))
          {
            sub_1CF373C34(a1, a2, a3, v50);
          }
        }
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v19);
      v22 = a3;
      *(&v43 - 4) = a3;
      v24 = v51;
      v23 = v52;
      *(&v43 - 3) = v51;
      *(&v43 - 2) = v6;
      v25 = v6;
      *(&v43 - 1) = a1;
      (*(v24 + 32))(sub_1CF381E1C);
      if (!v23)
      {
        v31 = (*(v24 + 16))(v22, v24);
        v32 = v18;
        v33 = *(v25 + 16);
        *(&v59 + 1) = &type metadata for SQLItemJobID;
        v60 = sub_1CF03E084();
        *&v58 = v31;
        BYTE8(v58) = v33;
        swift_beginAccess();
        sub_1CF03E0D8(&v58, a1 + 56);
        swift_endAccess();
        sub_1CF373C34(a1, a2, v22, v50);

        return;
      }
    }
  }
}

uint64_t sub_1CF37475C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v20 = 0;
  v21 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000004ALL, 0x80000001CFA44EB0);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xEF203D2065707974);
  v7 = qword_1CFA04890[sub_1CF03D760()];
  v19[3] = MEMORY[0x1E69E6530];
  v19[0] = v7;
  v8 = sub_1CEFF8EA0(v19);
  v10 = v9;
  sub_1CEFCCC44(v19, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v10)
  {
    MEMORY[0x1D3868CC0](v8, v10);

    MEMORY[0x1D3868CC0](0x65746920444E4120, 0xEF203D2064695F6DLL);
    v11 = *(*a3 + 576);
    v12 = *(v6 + 96);
    v13 = *(v6 + 80);
    swift_getAssociatedTypeWitness();
    v14 = *(swift_getAssociatedConformanceWitness() + 8);
    v15 = *(v14 + 32);
    v16 = swift_checkMetadataState();
    v17 = v15(a1, v16, v14);
    MEMORY[0x1D3868CC0](v17);

    return v20;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3749D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a8;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;
  result = (*(a8 + 32))(sub_1CF380E04, v14, a6, a8);
  if (!v8)
  {
    result = (*(a8 + 24))(a6, a8);
    if (result)
    {
      return sub_1CF373C34(a3, a1, a6, *(a8 + 8));
    }
  }

  return result;
}

uint64_t sub_1CF374AA8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v28 = 0;
  v29 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA43FC0);
  v8 = a3[17];
  v9 = MEMORY[0x1E69E6810];
  v27 = MEMORY[0x1E69E6810];
  v26[0] = v8;
  v10 = sub_1CEFF8EA0(v26);
  v12 = v11;
  sub_1CEFCCC44(v26, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v12)
  {
    goto LABEL_5;
  }

  MEMORY[0x1D3868CC0](v10, v12);

  MEMORY[0x1D3868CC0](0xD000000000000048, 0x80000001CFA43FF0);
  v13 = a3[15];
  v27 = v9;
  v26[0] = v13;
  v14 = sub_1CEFF8EA0(v26);
  v16 = v15;
  sub_1CEFCCC44(v26, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v16)
  {
    goto LABEL_5;
  }

  MEMORY[0x1D3868CC0](v14, v16);

  MEMORY[0x1D3868CC0](0xD00000000000004BLL, 0x80000001CFA44040);
  v17 = a3[16];
  v27 = MEMORY[0x1E69E6530];
  v26[0] = v17;
  v18 = sub_1CEFF8EA0(v26);
  v20 = v19;
  sub_1CEFCCC44(v26, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v20)
  {
    MEMORY[0x1D3868CC0](v18, v20);

    MEMORY[0x1D3868CC0](0x4552454857200A29, 0xEE00203D20646920);
    v21 = [a1 bindLongParameter_];
    v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v24 = v23;

    MEMORY[0x1D3868CC0](v22, v24);

    return v28;
  }

  else
  {
LABEL_5:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF374D60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v34 = 0;
  v35 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v8 = *(a3 + 96);
  v9 = *(a3 + 104);
  v10 = *(a3 + 112);
  sub_1CF03C530(v8, v9, v10);
  v11 = sub_1CF065BDC(v8, v9, v10, 0x696C756465686373, 0xEB000000005F676ELL);
  v13 = v12;
  sub_1CF03D7A8(v8, v9, v10);
  MEMORY[0x1D3868CC0](v11, v13);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44DF0);
  v14 = *(a3 + 136);
  v15 = MEMORY[0x1E69E6810];
  v33 = MEMORY[0x1E69E6810];
  v32[0] = v14;
  v16 = sub_1CEFF8EA0(v32);
  v18 = v17;
  sub_1CEFCCC44(v32, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v18)
  {
    goto LABEL_5;
  }

  MEMORY[0x1D3868CC0](v16, v18);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA44E10);
  v19 = *(a3 + 120);
  v33 = v15;
  v32[0] = v19;
  v20 = sub_1CEFF8EA0(v32);
  v22 = v21;
  sub_1CEFCCC44(v32, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v22)
  {
    goto LABEL_5;
  }

  MEMORY[0x1D3868CC0](v20, v22);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA42600);
  v23 = *(a3 + 128);
  v33 = MEMORY[0x1E69E6530];
  v32[0] = v23;
  v24 = sub_1CEFF8EA0(v32);
  v26 = v25;
  sub_1CEFCCC44(v32, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v26)
  {
    MEMORY[0x1D3868CC0](v24, v26);

    MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
    v27 = [a1 bindLongParameter_];
    v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v30 = v29;

    MEMORY[0x1D3868CC0](v28, v30);

    return v34;
  }

  else
  {
LABEL_5:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3750B8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v28 = 0;
  v29 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA44D50);
  v8 = a3[17];
  v9 = MEMORY[0x1E69E6810];
  v27 = MEMORY[0x1E69E6810];
  v26[0] = v8;
  v10 = sub_1CEFF8EA0(v26);
  v12 = v11;
  sub_1CEFCCC44(v26, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v12)
  {
    goto LABEL_5;
  }

  MEMORY[0x1D3868CC0](v10, v12);

  MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA44D70);
  v13 = a3[15];
  v27 = v9;
  v26[0] = v13;
  v14 = sub_1CEFF8EA0(v26);
  v16 = v15;
  sub_1CEFCCC44(v26, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v16)
  {
    goto LABEL_5;
  }

  MEMORY[0x1D3868CC0](v14, v16);

  MEMORY[0x1D3868CC0](0xD00000000000003BLL, 0x80000001CFA44DB0);
  v17 = a3[16];
  v27 = MEMORY[0x1E69E6530];
  v26[0] = v17;
  v18 = sub_1CEFF8EA0(v26);
  v20 = v19;
  sub_1CEFCCC44(v26, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v20)
  {
    MEMORY[0x1D3868CC0](v18, v20);

    MEMORY[0x1D3868CC0](0x4552454857200A29, 0xEE00203D20646920);
    v21 = [a1 bindLongParameter_];
    v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v24 = v23;

    MEMORY[0x1D3868CC0](v22, v24);

    return v28;
  }

  else
  {
LABEL_5:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF375370(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v43 = 0;
  v44 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44E30);
  MEMORY[0x1D3868CC0](a2[5], a2[6]);
  MEMORY[0x1D3868CC0](0xD00000000000005DLL, 0x80000001CFA44E50);
  v7 = *(*a3 + 576);
  v8 = *(v6 + 96);
  v9 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = *(v10 + 32);
  v12 = swift_checkMetadataState();
  v13 = v11(a1, v12, v10);
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v14 = sub_1CF03D760();
  v15 = MEMORY[0x1E69E6530];
  v16 = qword_1CFA04890[v14];
  v42 = MEMORY[0x1E69E6530];
  v41[0] = v16;
  v17 = sub_1CEFF8EA0(v41);
  v19 = v18;
  sub_1CEFCCC44(v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v19)
  {
    goto LABEL_6;
  }

  MEMORY[0x1D3868CC0](v17, v19);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v20 = *(a3 + 96);
  v21 = *(a3 + 104);
  v22 = *(a3 + 112);
  sub_1CF03C530(v20, v21, v22);
  v23 = sub_1CF03D7E8();
  v24 = sub_1CF03D9EC(v23, v20, v21, v22);
  v26 = v25;

  sub_1CF03D7A8(v20, v21, v22);
  MEMORY[0x1D3868CC0](v24, v26);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v27 = *(a3 + 136);
  v28 = MEMORY[0x1E69E6810];
  v42 = MEMORY[0x1E69E6810];
  v41[0] = v27;
  v29 = sub_1CEFF8EA0(v41);
  v31 = v30;
  sub_1CEFCCC44(v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v31)
  {
    goto LABEL_6;
  }

  MEMORY[0x1D3868CC0](v29, v31);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v32 = *(a3 + 128);
  v42 = v15;
  v41[0] = v32;
  v33 = sub_1CEFF8EA0(v41);
  v35 = v34;
  sub_1CEFCCC44(v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v35)
  {
    goto LABEL_6;
  }

  MEMORY[0x1D3868CC0](v33, v35);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v36 = *(a3 + 120);
  v42 = v28;
  v41[0] = v36;
  v37 = sub_1CEFF8EA0(v41);
  v39 = v38;
  sub_1CEFCCC44(v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v39)
  {
    MEMORY[0x1D3868CC0](v37, v39);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v43;
  }

  else
  {
LABEL_6:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void sub_1CF3757DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v24 = a3;
  v25 = a4;
  v26 = v6;
  v27 = a1;
  v11 = *(a4 + 8);
  v12 = (*(v11 + 24))(sub_1CF381DC8, v23);
  if (!v5)
  {
    v13 = v12;
    if ([v12 next])
    {
      v29 = [v13 longAtIndex_];
      v22 = [v13 unsignedLongAtIndex_];
      v14 = [v13 longAtIndex_];
      v15 = [v13 unsignedLongAtIndex_];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (*(v6 + 64) == 1)
        {
          MEMORY[0x1EEE9AC00](v15);
          v16 = *(a4 + 32);
          v17 = sub_1CF381E04;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v15);
          v16 = *(a4 + 32);
          v17 = sub_1CF381DEC;
        }

        v16(v17);
      }

      else
      {
        v20 = v15;
        v21 = &v19;
        MEMORY[0x1EEE9AC00](v15);
        (*(a4 + 32))(sub_1CF381DD4);
        v18 = sub_1CF089324(a1, v22, v20, v14);
        swift_beginAccess();
        sub_1CEFCCBDC((a1 + 7), v28, &unk_1EC4C1BE0, &unk_1CF9FD400);
        swift_beginAccess();
        sub_1CF03E0D8(v28, v18 + 56);
        swift_endAccess();
        sub_1CF373C34(v18, a2, a3, v11);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1CF375B18(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v20 = 0;
  v21 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000005CLL, 0x80000001CFA44CF0);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0x742045524548570ALL, 0xEE00203D20657079);
  v7 = qword_1CFA04890[sub_1CF03D760()];
  v19[3] = MEMORY[0x1E69E6530];
  v19[0] = v7;
  v8 = sub_1CEFF8EA0(v19);
  v10 = v9;
  sub_1CEFCCC44(v19, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v10)
  {
    MEMORY[0x1D3868CC0](v8, v10);

    MEMORY[0x1D3868CC0](0x65746920444E4120, 0xEF203D2064695F6DLL);
    v11 = *(*a3 + 576);
    v12 = *(v6 + 96);
    v13 = *(v6 + 80);
    swift_getAssociatedTypeWitness();
    v14 = *(swift_getAssociatedConformanceWitness() + 8);
    v15 = *(v14 + 32);
    v16 = swift_checkMetadataState();
    v17 = v15(a1, v16, v14);
    MEMORY[0x1D3868CC0](v17);

    return v20;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF375D8C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v12 = sub_1CF065BDC(a3, a4, a5, 0x696C756465686373, 0xEB000000005F676ELL);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD0000000000000D9, 0x80000001CFA44BD0);
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0xD000000000000035, 0x80000001CFA44CB0);
  v14 = [a1 bindLongParameter_];
  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);

  return 0;
}

uint64_t sub_1CF375F48(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();

  strcpy(v11, "DELETE FROM ");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44BB0);
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);

  return v11[0];
}

uint64_t sub_1CF376034(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v8 = *(a3 + 96);
  v9 = *(a3 + 104);
  LOBYTE(a3) = *(a3 + 112);
  sub_1CF03C530(v8, v9, a3);
  v10 = sub_1CF065BDC(v8, v9, a3, 0x696C756465686373, 0xEB000000005F676ELL);
  v12 = v11;
  sub_1CF03D7A8(v8, v9, a3);
  MEMORY[0x1D3868CC0](v10, v12);

  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v13 = [a1 bindLongParameter_];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  MEMORY[0x1D3868CC0](v14, v16);

  return 0x20455441445055;
}

uint64_t sub_1CF3761C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a1;
  v5[2] = a3;
  v5[3] = a4;
  return (*(a4 + 32))(sub_1CF381DBC, v5);
}

uint64_t sub_1CF376228(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000005BLL, 0x80000001CFA44B50);
  if (*(a2 + 16))
  {
    v5 = 20550;
  }

  else
  {
    v5 = 21318;
  }

  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  v6 = *(v4 + 96);
  v7 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = *(v8 + 32);
  v10 = swift_checkMetadataState();
  v11 = v9(a1, v10, v8);
  MEMORY[0x1D3868CC0](v11);

  return 0;
}

void sub_1CF3763A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v123 = a4;
  v124 = a3;
  v125 = a2;
  v6 = *v4;
  v120 = sub_1CF9E6118();
  v118 = *(v120 - 8);
  v7 = *(v118 + 64);
  v8 = MEMORY[0x1EEE9AC00](v120);
  v119 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v117 = &v112 - v10;
  v11 = v6[10];
  v12 = v6[11];
  v13 = v6[12];
  v14 = v6[13];
  v126 = v11;
  v127 = v12;
  v128 = v13;
  v129 = v14;
  v15 = type metadata accessor for PersistenceTrigger();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v112 - v19);
  v21 = *(a1 + 112);
  v122 = a1;
  if (v21 > 2)
  {
LABEL_20:
    v49 = *(v4 + 72);
    if (v49)
    {
      v120 = v18;
      v121 = v4;
      v50 = *(v4 + 80);

      v52 = v49(v51);
      sub_1CEFF7124(v49);
      if (v52)
      {
        v126 = v11;
        v127 = v12;
        v128 = v13;
        v129 = v14;
        type metadata accessor for Materialization.MaterializeItem();
        v53 = v122;
        v54 = swift_dynamicCastClass();
        if (v54)
        {
          v55 = v54;
          v56 = *(*v52 + 544);
          v13 = v123;
          v57 = *(v123 + 8);

          v58 = v55;
          v59 = v125;
          v60 = v132;
          v56(v58, 0, v125, v124, v57);
          v132 = v60;
          if (v60)
          {

LABEL_25:

            return;
          }
        }

        else
        {
          v13 = v123;
          v59 = v125;
        }

        *v20 = v53;
        swift_storeEnumTagMultiPayload();
        v107 = *(*v52 + 312);

        v107(v20);
        v108 = (*(v120 + 8))(v20, v15);
        v109 = (*(*v52 + 184))(v108);
        if (v109)
        {
          (*(*v109 + 128))(v52, v53);
        }
      }

      else
      {
        v53 = v122;
        v13 = v123;
        v59 = v125;
      }

      v73 = v121;
    }

    else
    {
      v53 = v122;
      v13 = v123;
      v59 = v125;
      v73 = v4;
    }

    v27 = v124;
    v110 = v132;
    sub_1CF3757DC(v53, v59, v124, v13);
    if (v110)
    {
      return;
    }

LABEL_67:
    if (sub_1CF03D760() == 23 || sub_1CF03D760() == 7)
    {
      v111 = v53 + *(*v53 + 576);
      v128 = v27;
      v129 = v13;
      v130 = v73;
      v131 = v111;
      (*(v13 + 32))(sub_1CF381DBC, &v126, v27, v13);
    }

    return;
  }

  v121 = v4;
  v22 = *(a1 + 96);
  v23 = *(a1 + 104);
  if (v21)
  {
    if (v21 != 1)
    {
      MEMORY[0x1EEE9AC00](v17);
      v13 = v123;
      v27 = v124;
      *(&v112 - 4) = v124;
      *(&v112 - 3) = v13;
      v73 = v121;
      v53 = v122;
      *(&v112 - 2) = v121;
      *(&v112 - 1) = v53;
      v76 = v132;
      (*(v13 + 32))(sub_1CF381D98);
      if (v76)
      {
        return;
      }

      goto LABEL_67;
    }

    v24 = *(a1 + 96);
    if (!v22)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

  v24 = *(a1 + 104);
  if (v23)
  {
LABEL_27:
    v61 = *(*v24 + 88);
    v62 = sub_1CF03C530(v22, v23, v21);
    v63 = v61(v62);
    v65 = v64;
    v67 = v66;
    v68 = v66;
    sub_1CF03D7A8(v22, v23, v21);
    if (v68 == 3 && v63 == 1 && v65 == 0)
    {
      MEMORY[0x1EEE9AC00](v69);
      v13 = v123;
      v27 = v124;
      *(&v112 - 4) = v124;
      *(&v112 - 3) = v13;
      v73 = v121;
      v53 = v122;
      *(&v112 - 2) = v121;
      *(&v112 - 1) = v53;
      v74 = *(v13 + 32);
      v75 = sub_1CF381DB0;
    }

    else
    {
      v72 = sub_1CF1DBCF0(v63, v65, v67);
      MEMORY[0x1EEE9AC00](v72);
      v13 = v123;
      v27 = v124;
      *(&v112 - 4) = v124;
      *(&v112 - 3) = v13;
      v73 = v121;
      v53 = v122;
      *(&v112 - 2) = v121;
      *(&v112 - 1) = v53;
      v74 = *(v13 + 32);
      v75 = sub_1CF381DA4;
    }

    v104 = v125;
    v105 = v132;
    v74(v75);
    if (v105)
    {
      return;
    }

    if (!(*(v13 + 24))(v27, v13))
    {
      sub_1CF374114(v53, v104, v27, v13);
    }

    sub_1CF373FB0(v53);
    goto LABEL_67;
  }

LABEL_5:
  v25 = v122;
  if (sub_1CF03D760() == 8)
  {
    v26 = v25 + *(*v25 + 576);
    v27 = v124;
    v28 = v132;
    v29 = sub_1CF3782E8(v26, &unk_1F4BEC440, v125, v124, *(v123 + 8));
    if (!v28)
    {
      v15 = v29;
      v113 = v26;
      v132 = 0;
      v126 = v11;
      v127 = v12;
      v128 = v13;
      v129 = v14;
      v30 = type metadata accessor for ItemJob();
      if (sub_1CF9E6DF8())
      {
        v32 = v117;
        v118 += 8;
        *&v31 = 136315138;
        v114 = v31;
        v12 = 4;
        v13 = v123;
        v11 = v125;
        v115 = v30;
        v116 = v15;
        while (1)
        {
          v20 = (v12 - 4);
          v4 = sub_1CF9E6DC8();
          sub_1CF9E6D78();
          if (v4)
          {
            v14 = *(v15 + 8 * v12);

            v33 = (v12 - 3);
            if (__OFADD__(v20, 1))
            {
              goto LABEL_19;
            }
          }

          else
          {
            v14 = sub_1CF9E7998();
            v33 = (v12 - 3);
            if (__OFADD__(v20, 1))
            {
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }
          }

          v119 = v33;
          v35 = *(v14 + 96);
          v34 = *(v14 + 104);
          *(v14 + 96) = 0;
          *(v14 + 104) = 0;
          v36 = *(v14 + 112);
          *(v14 + 112) = 4;

          sub_1CF03D7A8(v35, v34, v36);

          v37 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v38 = sub_1CF9E6108();
          v39 = sub_1CF9E7288();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v126 = v41;
            *v40 = v114;
            v42 = sub_1CF044BA4();
            v44 = v43;

            v45 = sub_1CEFD0DF0(v42, v44, &v126);
            v11 = v125;

            *(v40 + 4) = v45;
            _os_log_impl(&dword_1CEFC7000, v38, v39, "✍️  Cancelling materialize job due to new eviction job: %s", v40, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v41);
            v46 = v41;
            v13 = v123;
            MEMORY[0x1D386CDC0](v46, -1, -1);
            v47 = v40;
            v27 = v124;
            MEMORY[0x1D386CDC0](v47, -1, -1);
          }

          else
          {
          }

          (*v118)(v32, v120);
          v15 = v116;
          v48 = v132;
          sub_1CF3763A8(v14, v11, v27, v13);
          v132 = v48;
          if (v48)
          {
            goto LABEL_79;
          }

          ++v12;
          if (v119 == sub_1CF9E6DF8())
          {
            goto LABEL_72;
          }
        }
      }

      v13 = v123;
      v11 = v125;
LABEL_72:

      v128 = v27;
      v129 = v13;
      v73 = v121;
      v130 = v121;
      v131 = v113;
      v106 = v132;
      (*(v13 + 32))(sub_1CF381DBC, &v126, v27, v13);
      if (!v106)
      {
        goto LABEL_77;
      }
    }
  }

  else
  {
    v77 = sub_1CF03D760();
    v27 = v124;
    if (v77 != 7)
    {
      v106 = v132;
      v13 = v123;
      v11 = v125;
      v73 = v121;
      goto LABEL_77;
    }

    v73 = v121;
    v78 = v132;
    v79 = sub_1CF3782E8(v25 + *(*v25 + 576), &unk_1F4BEC468, v125, v124, *(v123 + 8));
    if (v78)
    {
      return;
    }

    v80 = v79;
    v132 = 0;
    v126 = v11;
    v127 = v12;
    v128 = v13;
    v129 = v14;
    v81 = type metadata accessor for ItemJob();
    v83 = v80;
    if (!sub_1CF9E6DF8())
    {
      v13 = v123;
      v11 = v125;
LABEL_76:

      v106 = v132;
LABEL_77:
      v53 = v122;
      sub_1CF374114(v122, v11, v27, v13);
      if (v106)
      {
        return;
      }

      goto LABEL_67;
    }

    v84 = v119;
    v116 = (v118 + 8);
    *&v82 = 136315138;
    v114 = v82;
    v85 = 4;
    v13 = v123;
    v11 = v125;
    v117 = v80;
    v115 = v81;
    while (1)
    {
      v86 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v86)
      {
        v87 = *&v83[8 * v85];
      }

      else
      {
        v87 = sub_1CF9E7998();
      }

      v118 = v85 - 3;
      if (__OFADD__(v85 - 4, 1))
      {
        break;
      }

      v89 = *(v87 + 96);
      v88 = *(v87 + 104);
      *(v87 + 96) = 0;
      *(v87 + 104) = 0;
      v90 = *(v87 + 112);
      *(v87 + 112) = 4;

      sub_1CF03D7A8(v89, v88, v90);

      v91 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v92 = v84;
      v93 = sub_1CF9E6108();
      v94 = sub_1CF9E7288();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v126 = v96;
        *v95 = v114;
        v97 = sub_1CF044BA4();
        v99 = v98;

        v100 = sub_1CEFD0DF0(v97, v99, &v126);
        v27 = v124;

        *(v95 + 4) = v100;
        _os_log_impl(&dword_1CEFC7000, v93, v94, "✍️  Cancelling eviction job due to new materialize job: %s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v96);
        v101 = v96;
        v73 = v121;
        MEMORY[0x1D386CDC0](v101, -1, -1);
        v102 = v95;
        v11 = v125;
        MEMORY[0x1D386CDC0](v102, -1, -1);

        v84 = v119;
        (*v116)(v119, v120);
      }

      else
      {

        (*v116)(v92, v120);
        v84 = v92;
      }

      v103 = v132;
      sub_1CF3763A8(v87, v11, v27, v13);
      v132 = v103;
      if (v103)
      {
LABEL_79:

        goto LABEL_25;
      }

      v83 = v117;
      ++v85;
      if (v118 == sub_1CF9E6DF8())
      {
        goto LABEL_76;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1CF377100(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v26 = 0;
  v27 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v7 = *(a3 + 96);
  v8 = *(a3 + 104);
  v9 = *(a3 + 112);
  sub_1CF03C530(v7, v8, v9);
  v10 = sub_1CF065BDC(v7, v8, v9, 0x696C756465686373, 0xEB000000005F676ELL);
  v12 = v11;
  sub_1CF03D7A8(v7, v8, v9);
  MEMORY[0x1D3868CC0](v10, v12);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410);
  v13 = *(*a3 + 576);
  v14 = *(v6 + 96);
  v15 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v17 = *(v16 + 32);
  v18 = swift_checkMetadataState();
  v19 = v17(a1, v18, v16);
  MEMORY[0x1D3868CC0](v19);

  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v20 = qword_1CFA04890[sub_1CF03D760()];
  v25[3] = MEMORY[0x1E69E6530];
  v25[0] = v20;
  v21 = sub_1CEFF8EA0(v25);
  v23 = v22;
  sub_1CEFCCC44(v25, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v23)
  {
    MEMORY[0x1D3868CC0](v21, v23);

    return v26;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3773F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v36 = 0;
  v37 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v7 = *(a3 + 96);
  v8 = *(a3 + 104);
  v9 = *(a3 + 112);
  sub_1CF03C530(v7, v8, v9);
  v10 = sub_1CF065BDC(v7, v8, v9, 0x696C756465686373, 0xEB000000005F676ELL);
  v12 = v11;
  sub_1CF03D7A8(v7, v8, v9);
  MEMORY[0x1D3868CC0](v10, v12);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA42600);
  v13 = *(a3 + 128);
  v14 = MEMORY[0x1E69E6530];
  v35 = MEMORY[0x1E69E6530];
  v34[0] = v13;
  v15 = sub_1CEFF8EA0(v34);
  v17 = v16;
  sub_1CEFCCC44(v34, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v17)
  {
    goto LABEL_5;
  }

  MEMORY[0x1D3868CC0](v15, v17);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA44B30);
  v18 = *(a3 + 136);
  v35 = MEMORY[0x1E69E6810];
  v34[0] = v18;
  v19 = sub_1CEFF8EA0(v34);
  v21 = v20;
  sub_1CEFCCC44(v34, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v21)
  {
    goto LABEL_5;
  }

  MEMORY[0x1D3868CC0](v19, v21);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410);
  v22 = *(*a3 + 576);
  v23 = *(v6 + 96);
  v24 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  v25 = *(swift_getAssociatedConformanceWitness() + 8);
  v26 = *(v25 + 32);
  v27 = swift_checkMetadataState();
  v28 = v26(a1, v27, v25);
  MEMORY[0x1D3868CC0](v28);

  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v29 = qword_1CFA04890[sub_1CF03D760()];
  v35 = v14;
  v34[0] = v29;
  v30 = sub_1CEFF8EA0(v34);
  v32 = v31;
  sub_1CEFCCC44(v34, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v32)
  {
    MEMORY[0x1D3868CC0](v30, v32);

    return v36;
  }

  else
  {
LABEL_5:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3777E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v31 = 0;
  v32 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v7 = *(a3 + 96);
  v8 = *(a3 + 104);
  v9 = *(a3 + 112);
  sub_1CF03C530(v7, v8, v9);
  v10 = sub_1CF065BDC(v7, v8, v9, 0x696C756465686373, 0xEB000000005F676ELL);
  v12 = v11;
  sub_1CF03D7A8(v7, v8, v9);
  MEMORY[0x1D3868CC0](v10, v12);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA44B30);
  v13 = *(a3 + 136);
  v30 = MEMORY[0x1E69E6810];
  v29[0] = v13;
  v14 = sub_1CEFF8EA0(v29);
  v16 = v15;
  sub_1CEFCCC44(v29, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v16)
  {
    goto LABEL_4;
  }

  MEMORY[0x1D3868CC0](v14, v16);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410);
  v17 = *(*a3 + 576);
  v18 = *(v6 + 96);
  v19 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  v20 = *(swift_getAssociatedConformanceWitness() + 8);
  v21 = *(v20 + 32);
  v22 = swift_checkMetadataState();
  v23 = v21(a1, v22, v20);
  MEMORY[0x1D3868CC0](v23);

  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v24 = qword_1CFA04890[sub_1CF03D760()];
  v30 = MEMORY[0x1E69E6530];
  v29[0] = v24;
  v25 = sub_1CEFF8EA0(v29);
  v27 = v26;
  sub_1CEFCCC44(v29, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v27)
  {
    MEMORY[0x1D3868CC0](v25, v27);

    return v31;
  }

  else
  {
LABEL_4:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF377B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a8;
  v51 = a6;
  v41[1] = a7;
  v45 = a5;
  v46 = a3;
  v43 = a4;
  v44 = a2;
  v47 = a1;
  v52 = a9;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v41 - v19;
  v21 = type metadata accessor for Signpost(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v42 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDEBBE40;
  (*(v10 + 56))(v20, 1, 1, v9);
  sub_1CEFCCBDC(v20, v18, &unk_1EC4BED20, &unk_1CFA00700);
  v25 = *(v10 + 48);
  if (v25(v18, 1, v9) == 1)
  {
    v26 = v24;
    sub_1CF9E6048();
    v27 = v13;
    if (v25(v18, 1, v9) != 1)
    {
      sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v27 = v13;
    (*(v10 + 32))(v13, v18, v9);
  }

  v28 = v42;
  (*(v10 + 16))(v42, v27, v9);
  *(v28 + *(v21 + 20)) = v24;
  v29 = v28 + *(v21 + 24);
  *v29 = "SQLDB: Fetch Jobs";
  *(v29 + 8) = 17;
  *(v29 + 16) = 2;
  v30 = v24;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v10 + 8))(v27, v9);
  v31 = sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v31);
  v32 = v50;
  v33 = v52;
  v41[-8] = v49;
  v41[-7] = v33;
  v34 = v43;
  v41[-6] = v32;
  v41[-5] = v34;
  v35 = v44;
  v41[-4] = v45;
  v41[-3] = v35;
  v41[-2] = v46;
  v36 = v48;
  v37 = (*(v33 + 24))(sub_1CF381D84);
  if (!v36)
  {
    v38 = v37;
    if ([v37 next])
    {
      do
      {
        v39 = objc_autoreleasePoolPush();
        sub_1CF378174(v32, v38, v51);
        objc_autoreleasePoolPop(v39);
      }

      while (([v38 next] & 1) != 0);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF0593C8(v28);
}

uint64_t sub_1CF377FE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v10 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000A6, 0x80000001CFA44A80);
  MEMORY[0x1D3868CC0](a2[5], a2[6]);
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  if (a4)
  {

    MEMORY[0x1D3868CC0](a2[3], a2[4]);
    MEMORY[0x1D3868CC0](a3, a4);
    v11 = 0x2044455845444E49;
    v10 = 0xEB00000000205942;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1D3868CC0](v11, v10);

  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xE800000000000000);
  v12 = a5(a1);
  MEMORY[0x1D3868CC0](v12);

  return 0;
}

void sub_1CF378174(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  sub_1CF043954(a2, v5);
  if (!v3)
  {
    a3(v5[0], v5[1], v5[2], v5[3], v6);
  }
}

uint64_t sub_1CF3781E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = 0;
  v13 = a2;
  v14 = a3;
  v9 = a4;
  v10 = a5;
  v11 = &v15;
  sub_1CF377B64(a1, sub_1CF381D3C, v12, 0, 0, sub_1CF381D44, v8, a4, a5);
  v6 = v15;
  if (v5)
  {
  }

  return v6;
}

uint64_t sub_1CF378280(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();

  MEMORY[0x1D3868CC0](0x312054494D494C20, 0xE800000000000000);

  return v3;
}

uint64_t sub_1CF3782E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*v5 + 88);
  v11 = *(*v5 + 96);
  v12 = *(*v5 + 104);
  v31 = *(*v5 + 80);
  v32 = v10;
  v33 = v11;
  v34 = v12;
  type metadata accessor for ItemJob();
  v35 = sub_1CF9E6DA8();
  v23 = v31;
  v24 = v10;
  v25 = a4;
  v26 = v11;
  v27 = v12;
  v28 = a5;
  v29 = a1;
  v30 = a2;
  v18 = a4;
  v19 = a5;
  v20 = &v35;
  v21 = v5;
  sub_1CF377B64(a3, sub_1CF381CD8, v22, 0, 0, sub_1CF381D0C, v17, a4, a5);
  v13 = v35;
  if (v16)
  {
  }

  return v13;
}

uint64_t sub_1CF378438(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();

  strcpy(v16, "item_id = ");
  BYTE3(v16[1]) = 0;
  HIDWORD(v16[1]) = -369098752;
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 8);
  v6 = *(v5 + 32);
  v7 = swift_checkMetadataState();
  v8 = v6(a1, v7, v5);
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA44A40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v9 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  v10 = v16[0];
  if (a3)
  {
    strcpy(v16, " AND type IN ");
    HIWORD(v16[1]) = -4864;
    *(swift_allocObject() + 16) = a1;

    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8);
    v12 = sub_1CF9E6C18();
    v14 = v13;

    MEMORY[0x1D3868CC0](v12, v14);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);

    MEMORY[0x1D3868CC0](40, 0xE100000000000000);

    MEMORY[0x1D3868CC0](v16[0], v16[1]);
  }

  return v10;
}

uint64_t sub_1CF3787C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *a1;

  v12 = *(v10 + 544);
  v13 = *(v10 + 560);
  type metadata accessor for ItemJob();
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  if ((a5 & 1) == 0)
  {
    sub_1CF089324(a1, a4, a2, a3);
    sub_1CF9E6E18();
  }

  return 0;
}

uint64_t sub_1CF3788AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v27;
  if (a3)
  {
    v6 = MEMORY[0x1EEE9AC00](a1);
    v21 = v7;
    v22 = v8;
    v23 = v3;
    v24 = v9;
    v25 = v10;
    v26 = v11;
    v12 = (*(v8 + 24))(sub_1CF381CB4, v20, v7, v8, v6);
  }

  else
  {
    v13 = MEMORY[0x1EEE9AC00](a1);
    v21 = v14;
    v22 = v15;
    v23 = v3;
    v24 = v16;
    v25 = v17;
    v12 = (*(v15 + 24))(sub_1CF381CC8, v20, v14, v15, v13);
  }

  if (!v4)
  {
    v18 = v12;
    LOBYTE(v5) = [v12 next];
  }

  return v5 & 1;
}

uint64_t sub_1CF3789BC(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = *a2;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1CF9E7948();
  v25 = 0;
  v26 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44540);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410);
  v8 = *(v7 + 96);
  v9 = *(v7 + 80);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = *(v10 + 32);
  v12 = swift_checkMetadataState();
  v13 = v11(a1, v12, v10);
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v14 = qword_1CFA04890[a4];
  v24 = MEMORY[0x1E69E6530];
  v21 = v14;
  v15 = sub_1CEFF8EA0(&v21);
  v17 = v16;
  sub_1CEFCCC44(&v21, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v17)
  {
    MEMORY[0x1D3868CC0](v15, v17);

    MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA44980);
    v21 = &unk_1F4BED2B0;
    v22 = sub_1CF067ADC;
    v23 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFE4E68();
    v18 = sub_1CF9E6C18();
    MEMORY[0x1D3868CC0](v18);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](40, 0xE100000000000000);

    MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA449A0);
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    v19 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v19);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v25;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF378D60(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, void *a5)
{
  v9 = *a2;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1CF9E7948();
  v33 = 0;
  v34 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44540);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410);
  v10 = *(v9 + 96);
  v11 = *(v9 + 80);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = *(v12 + 32);
  v14 = swift_checkMetadataState();
  v15 = v13(a1, v14, v12);
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v16 = qword_1CFA04890[a4];
  v32 = MEMORY[0x1E69E6530];
  v29 = v16;
  v17 = sub_1CEFF8EA0(&v29);
  v19 = v18;
  sub_1CEFCCC44(&v29, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v19)
  {
    goto LABEL_5;
  }

  MEMORY[0x1D3868CC0](v17, v19);

  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA449D0);
  v29 = &unk_1F4BED2B0;
  v30 = sub_1CF067ADC;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v20 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v20);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA449F0);
  v21 = MEMORY[0x1E69E6810];
  v32 = MEMORY[0x1E69E6810];
  v29 = a5;
  v22 = sub_1CEFF8EA0(&v29);
  v24 = v23;
  sub_1CEFCCC44(&v29, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v24)
  {
    goto LABEL_5;
  }

  MEMORY[0x1D3868CC0](v22, v24);

  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA44A10);
  v32 = v21;
  v29 = a5;
  v25 = sub_1CEFF8EA0(&v29);
  v27 = v26;
  sub_1CEFCCC44(&v29, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v27)
  {
    MEMORY[0x1D3868CC0](v25, v27);

    MEMORY[0x1D3868CC0](0x2930203D212029, 0xE700000000000000);
    return v33;
  }

  else
  {
LABEL_5:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3791A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a2;
  v53 = a4;
  v51 = a3;
  v8 = *v6;
  v9 = v6[9];
  if (!v9 || (v10 = v6, v14 = v6[10], v15 = , v16 = v9(v15), sub_1CEFF7124(v9), !v16))
  {
    v29 = *(v8 + 96);
    v55 = *(v8 + 80);
    v56 = v29;
    type metadata accessor for SchedulableJob();
    return sub_1CF9E6DA8();
  }

  v50 = v16;
  v17 = *(v8 + 96);
  v55 = *(v8 + 80);
  v56 = v17;
  v47 = type metadata accessor for SchedulableJob();
  result = sub_1CF9E6DA8();
  v57 = result;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = a1 + 32;
    v22 = MEMORY[0x1E69E7CC0];
    do
    {
      v23 = v21 + 40 * v20;
      v24 = v20;
      while (1)
      {
        if (v24 >= v19)
        {
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }

        v20 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_37;
        }

        result = sub_1CF379720(v23, v10, &v55);
        if ((BYTE8(v55) & 1) == 0)
        {
          break;
        }

        ++v24;
        v23 += 40;
        if (v20 == v19)
        {
          goto LABEL_19;
        }
      }

      v49 = v21;
      v25 = v55;
      result = swift_isUniquelyReferenced_nonNull_native();
      v48 = v25;
      if ((result & 1) == 0)
      {
        result = sub_1CF1F6A58(0, *(v22 + 16) + 1, 1, v22);
        v22 = result;
      }

      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_1CF1F6A58((v26 > 1), v27 + 1, 1, v22);
        v22 = result;
      }

      v28 = v48;
      v21 = v49;
      *(v22 + 16) = v27 + 1;
      *(v22 + 8 * v27 + 32) = v28;
    }

    while (v20 != v19);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:
  v30 = sub_1CF03E990(v22);

  if (*(v10 + 16))
  {
    MEMORY[0x1EEE9AC00](v31);
    v44[2] = a5;
    v44[3] = a6;
    v45 = v50;
    v31 = sub_1CF3781E8(v53, sub_1CF381CA8, v44, a5, a6);
    if (v7)
    {
LABEL_28:
    }

    v32 = v31;
    if (v31)
    {
      swift_beginAccess();
      sub_1CEFCCBDC(v32 + 56, &v55, &unk_1EC4C1BE0, &unk_1CF9FD400);
      if (*(&v56 + 1))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
        if ((swift_dynamicCast() & 1) != 0 && (sub_1CF052620(v54, v30) & 1) == 0)
        {
          *&v55 = sub_1CF052628(v32);
          sub_1CF9E6E58();
          sub_1CF9E6E18();
        }

        else
        {
        }
      }

      else
      {

        v31 = sub_1CEFCCC44(&v55, &unk_1EC4C1BE0, &unk_1CF9FD400);
      }
    }
  }

  if (v52 >= 1)
  {
    MEMORY[0x1EEE9AC00](v31);
    v45 = v30;
    v46 = v33;
    MEMORY[0x1EEE9AC00](v34);
    v42 = a5;
    v43 = a6;
    v44[0] = &v57;
    v31 = sub_1CF377B64(v53, sub_1CF381C7C, v36, 0xD000000000000020, v35 | 0x8000000000000000, sub_1CF381C84, v41, a5, a6);
    if (v7)
    {
      goto LABEL_28;
    }
  }

  if (v51 < 1)
  {
  }

  else
  {
    MEMORY[0x1EEE9AC00](v31);
    v45 = v30;
    v46 = v37;
    MEMORY[0x1EEE9AC00](v38);
    v42 = a5;
    v43 = a6;
    v44[0] = &v57;
    sub_1CF377B64(v53, sub_1CF381C74, v40, 0xD000000000000020, v39 | 0x8000000000000000, sub_1CF382070, v41, a5, a6);

    if (v7)
    {
    }
  }

  return v57;
}

uint64_t sub_1CF379720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CF1A91AC(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
  result = swift_dynamicCast();
  if ((result & 1) != 0 && v7 == *(a2 + 16))
  {
    *a3 = v6;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 1;
  }

  return result;
}

uint64_t sub_1CF3797C4(uint64_t a1, void *a2)
{
  v4 = *(*a2 + 96);
  v5 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v19 - v9;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x2064695F6D657469, 0xEA0000000000203DLL);
  v11 = a2[4];
  sub_1CF046AB4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = (*(*(AssociatedConformanceWitness + 8) + 32))(a1, AssociatedTypeWitness);
  v15 = v14;
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  MEMORY[0x1D3868CC0](v13, v15);

  MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xEC000000203D2065);
  v20 = 27;
  v16 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA44140);
  v20 = 1;
  v17 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v17);

  return v21;
}

uint64_t sub_1CF379A30(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA442F0);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xED0000204E492065);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
  sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8);
  sub_1CEFE4E68();
  v8 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  if (*(a2 + 16))
  {
    sub_1CF9E7948();

    *(swift_allocObject() + 16) = a1;
    v9 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAD0, &unk_1CFA04810);
    sub_1CEFCCCEC(&qword_1EDEA3390, &qword_1EC4BFAD0, &unk_1CFA04810);
    v10 = sub_1CF9E6C18();
    v12 = v11;

    MEMORY[0x1D3868CC0](v10, v12);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](40, 0xE100000000000000);

    v13 = 0xD000000000000012;
    v6 = 0x80000001CFA44920;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x1D3868CC0](v13, v6);

  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA44940);
  v14 = [a1 bindLongParameter_];
  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);

  return 0;
}

uint64_t sub_1CF379DD8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA442F0);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xED0000204E492065);
  if (qword_1EDEA4778 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
  sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8);
  sub_1CEFE4E68();
  v7 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v8 = 0xE000000000000000;
  if (*(a2 + 16))
  {
    sub_1CF9E7948();

    *(swift_allocObject() + 16) = a1;
    v9 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAD0, &unk_1CFA04810);
    sub_1CEFCCCEC(&qword_1EDEA3390, &qword_1EC4BFAD0, &unk_1CFA04810);
    v10 = sub_1CF9E6C18();
    v12 = v11;

    MEMORY[0x1D3868CC0](v10, v12);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](40, 0xE100000000000000);

    v13 = 0xD000000000000012;
    v8 = 0x80000001CFA44920;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x1D3868CC0](v13, v8);

  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA44940);
  v14 = [a1 bindLongParameter_];
  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);

  return 0;
}

uint64_t sub_1CF37A1C4(uint64_t a1)
{
  v3 = *(*a1 + 544);
  v4 = *(*a1 + 560);
  type metadata accessor for SchedulableJob();
  sub_1CF052628(a1);
  sub_1CF9E6E58();

  sub_1CF9E6E18();
  return 0;
}

uint64_t sub_1CF37A274(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(*v6 + 96);
  v14 = a1;
  v26 = *(*v6 + 80);
  v27 = v13;
  type metadata accessor for ItemJob();
  v15 = sub_1CF9E6DA8();
  v28 = v15;
  v24 = 0;
  v25 = 1;
  if (v14 == 89)
  {
    v16 = 0xE000000000000000;
  }

  else
  {
    *&v26 = 0x6570797420444E41;
    *(&v26 + 1) = 0xEB00000000203D20;
    v23[15] = qword_1CFA04890[a1];
    v17 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v17);

    v16 = 0xEB00000000203D20;
  }

  MEMORY[0x1EEE9AC00](v15);
  v23[8] = a2;
  v23[9] = v18;
  v23[10] = v16;
  v23[11] = a3;
  v23[12] = 100;
  MEMORY[0x1EEE9AC00](v19);
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = &v28;
  v23[5] = &v24;
  v20 = v23[14];
  sub_1CF377B64(a4, sub_1CF381C00, v21, 0, 0, sub_1CF381C10, v23, a5, a6);

  if (!v20)
  {
    v6 = v28;

    sub_1CF9E6DF8();
  }

  return v6;
}

uint64_t sub_1CF37A4C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v28 = 0;
  v29 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA442F0);
  v11 = MEMORY[0x1E69E6530];
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA448C0);
  v27 = v11;
  v26[0] = a2;
  v13 = sub_1CEFF8EA0(v26);
  v15 = v14;
  sub_1CEFCCC44(v26, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v15)
  {
    goto LABEL_4;
  }

  MEMORY[0x1D3868CC0](v13, v15);

  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v27 = v11;
  v26[0] = a2;
  v16 = sub_1CEFF8EA0(v26);
  v18 = v17;
  sub_1CEFCCC44(v26, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v18)
  {
    MEMORY[0x1D3868CC0](v16, v18);

    MEMORY[0x1D3868CC0](10, 0xE100000000000000);
    MEMORY[0x1D3868CC0](a3, a4);
    MEMORY[0x1D3868CC0](0x776F7220444E410ALL, 0xED0000203E204449);
    v19 = [a1 bindLongParameter_];
    v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v22 = v21;

    MEMORY[0x1D3868CC0](v20, v22);

    MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA448A0);
    v26[0] = a6;
    v23 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v23);

    return v28;
  }

  else
  {
LABEL_4:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF37A790(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;

  v10 = *(v9 + 560);
  v15 = *(v9 + 544);
  v16 = v10;
  type metadata accessor for ItemJob();
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  swift_beginAccess();
  sub_1CEFCCBDC((a1 + 7), &v15, &unk_1EC4C1BE0, &unk_1CF9FD400);
  if (!*(&v16 + 1))
  {
    sub_1CEFCCC44(&v15, &unk_1EC4C1BE0, &unk_1CF9FD400);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v12 = 0;
    v11 = 1;
    goto LABEL_6;
  }

  v11 = 0;
  v12 = v14;
LABEL_6:
  *a7 = v12;
  *(a7 + 8) = v11;
  return 0;
}

uint64_t sub_1CF37A8D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 96);
  v13 = *(*v5 + 80);
  swift_getAssociatedTypeWitness();
  v25 = sub_1CF9E6DA8();
  v23 = 0;
  v24 = 1;
  v20[16] = a1;
  v21 = a2;
  v22 = 100;
  v16 = a4;
  v17 = a5;
  v18 = &v25;
  v19 = &v23;
  sub_1CF377B64(a3, sub_1CF381BC8, v20, 0, 0, sub_1CF381BD4, v15, a4, a5);
  if (!v6)
  {
    v5 = v25;

    sub_1CF9E6DF8();
  }

  return v5;
}

uint64_t sub_1CF37AA48(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1CF9E7948();

  v19 = 0x203D2065707974;
  v20 = 0xE700000000000000;
  v8 = qword_1CFA04890[a2];
  v18[3] = MEMORY[0x1E69E6530];
  v18[0] = v8;
  v9 = sub_1CEFF8EA0(v18);
  v11 = v10;
  sub_1CEFCCC44(v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v11)
  {
    MEMORY[0x1D3868CC0](v9, v11);

    MEMORY[0x1D3868CC0](0x776F7220444E410ALL, 0xED0000203E204449);
    v12 = [a1 bindLongParameter_];
    v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v15 = v14;

    MEMORY[0x1D3868CC0](v13, v15);

    MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA448A0);
    v18[0] = a4;
    v16 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v16);

    return v19;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF37AC44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (a1 + 7);
  v10 = *a1;
  v11 = *(*a1 + 560);
  v12 = *(*a1 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v16 + 16))(v22 - v17 + 24, a1 + *(v10 + 576), AssociatedTypeWitness, v15);
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  swift_beginAccess();
  sub_1CEFCCBDC(v9, v22, &unk_1EC4C1BE0, &unk_1CF9FD400);
  if (!v23)
  {
    sub_1CEFCCC44(v22, &unk_1EC4C1BE0, &unk_1CF9FD400);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v19 = 0;
    v18 = 1;
    goto LABEL_6;
  }

  v18 = 0;
  v19 = v21;
LABEL_6:
  *a7 = v19;
  *(a7 + 8) = v18;
  return 0;
}

uint64_t sub_1CF37AE34()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000031, 0x80000001CFA44310);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA44350);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA44370);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0x4C200A30203D2120, 0xED00002054494D49);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  return 0;
}

void *sub_1CF37AFCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t (**a7)(uint64_t (*)(void *a1), _BYTE *, void, void))
{
  v9 = a7;
  v11 = *v7;
  if (a4)
  {
    v12 = 100;
  }

  else
  {
    v12 = a3;
  }

  v26 = a6;
  v27 = a7;
  v28 = v7;
  v29 = a2;
  v30 = a1;
  v31 = v12;
  v13 = a7[3](sub_1CF381B90, v25, a6, a7);
  if (!v8)
  {
    v14 = v13;
    v32 = 0;
    v33 = 1;
    MEMORY[0x1EEE9AC00](v13);
    v15 = *(v11 + 96);
    v19[1] = *(v11 + 80);
    v20 = a6;
    v21 = v15;
    v22 = v9;
    v23 = &v32;
    v24 = v16;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = sub_1CF4C1FE4(sub_1CF3820A0, v19, AssociatedTypeWitness);
    sub_1CF9E6DF8();
  }

  return v9;
}

uint64_t sub_1CF37B188(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v29 = 0;
  v30 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA447D0);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA44800);
  if (*(a2 + 16))
  {
    v10 = 20550;
  }

  else
  {
    v10 = 21318;
  }

  MEMORY[0x1D3868CC0](v10, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA44820);
  v11 = MEMORY[0x1E69E6530];
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA446C0);
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B140);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B140);
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA446F0);
  v28[3] = v11;
  v28[0] = a3;
  v16 = sub_1CEFF8EA0(v28);
  v18 = v17;
  sub_1CEFCCC44(v28, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v18)
  {
    MEMORY[0x1D3868CC0](v16, v18);

    MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA44870);
    v19 = [a1 bindLongParameter_];
    v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v22 = v21;

    MEMORY[0x1D3868CC0](v20, v22);

    MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA44740);
    v23 = [a1 bindLongParameter_];
    v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v26 = v25;

    MEMORY[0x1D3868CC0](v24, v26);

    return v29;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void *sub_1CF37B514(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (**a7)(uint64_t (*)(void *a1), _BYTE *, void, void))
{
  v9 = a7;
  v11 = *v7;
  v25 = a6;
  v26 = a7;
  v27 = v7;
  v28 = a1;
  v29 = a2;
  v30 = a3 & 1;
  v31 = a4;
  v12 = v11;
  v13 = a7[3](sub_1CF381B34, v24, a6, a7);
  if (!v8)
  {
    v14 = v13;
    MEMORY[0x1EEE9AC00](v13);
    v15 = *(v12 + 96);
    v19[1] = *(v12 + 80);
    v20 = a6;
    v21 = v15;
    v22 = v9;
    v23 = v16;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = sub_1CF4C1FE4(sub_1CF381B50, v19, AssociatedTypeWitness);
  }

  return v9;
}

uint64_t sub_1CF37B670(void *a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1CF9E7948();
  v28 = 0;
  v29 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA40300);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA44760);
  v12 = qword_1CFA04890[a3];
  v27 = MEMORY[0x1E69E6530];
  v25 = v12;
  v13 = sub_1CEFF8EA0(&v25);
  v15 = v14;
  sub_1CEFCCC44(&v25, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v15)
  {
    MEMORY[0x1D3868CC0](v13, v15);

    MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA44780);
    v25 = 0;
    v16 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v16);

    MEMORY[0x1D3868CC0](2105354, 0xE300000000000000);
    v17 = 0xE000000000000000;
    if (a5)
    {
      v18 = 0;
    }

    else
    {
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1CF9E7948();

      v25 = 0xD000000000000022;
      v26 = 0x80000001CFA447A0;
      v19 = sub_1CF1D5A14(a4, 0);
      MEMORY[0x1D3868CC0](v19);

      v18 = v25;
      v17 = v26;
    }

    MEMORY[0x1D3868CC0](v18, v17);

    MEMORY[0x1D3868CC0](0x54494D494C20200ALL, 0xE900000000000020);
    v20 = [a1 bindLongParameter_];
    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;

    MEMORY[0x1D3868CC0](v21, v23);

    return v28;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF37B928(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7, uint64_t (**a8)(uint64_t (*)(void *a1), __n128))
{
  v10 = *v8;
  v11 = 100;
  if ((a5 & 1) == 0)
  {
    v11 = a4;
  }

  v52 = v11;
  v12 = v8[9];
  if (!v12)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v8;
  v15 = v10;
  v44 = result;
  v45 = a2;
  v46 = a6;
  v47 = v9;
  v18 = v8[10];

  result = v12(v19);
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v20 = result;
  sub_1CEFF7124(v12);
  v21 = *(v20 + 32);

  v23 = v15[10];
  v22 = v15[11];
  v25 = v15[12];
  v24 = v15[13];
  v48 = v23;
  v49 = v22;
  v42 = v22;
  v43 = v24;
  v50 = v25;
  v51 = v24;
  type metadata accessor for SQLSnapshot();
  v26 = swift_dynamicCastClassUnconditional();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v34 = a7;
  v35 = a8;
  v36 = v13;
  v37 = a3;
  v38 = v44;
  v39 = v28;
  v40 = v45;
  v41 = v52;
  v29 = a8[3](sub_1CF381AE8, v27);
  if (v47)
  {
  }

  else
  {
    v30 = v29;
    v48 = 0;
    LOBYTE(v49) = 1;
    MEMORY[0x1EEE9AC00](v29);
    v34 = v23;
    v35 = v42;
    v36 = a7;
    v37 = v25;
    v38 = v43;
    v39 = a8;
    v40 = &v48;
    v41 = v31;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    a8 = sub_1CF4C1FE4(sub_1CF381B1C, &v33, AssociatedTypeWitness);
    sub_1CF9E6DF8();
  }

  return a8;
}

uint64_t sub_1CF37BBC4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a2;
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v37 = 0;
  v38 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000006ALL, 0x80000001CFA44630);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA446A0);
  v11 = MEMORY[0x1E69E6530];
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA446C0);
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B140);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA446F0);
  v36[3] = v11;
  v36[0] = a3;
  v15 = sub_1CEFF8EA0(v36);
  v17 = v16;
  sub_1CEFCCC44(v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v17)
  {
    MEMORY[0x1D3868CC0](v15, v17);

    MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
    v18 = *(v10 + 96);
    v19 = *(v10 + 80);
    swift_getAssociatedTypeWitness();
    v20 = *(swift_getAssociatedConformanceWitness() + 8);
    v21 = *(v20 + 32);
    v22 = swift_checkMetadataState();
    v23 = v21(a1, v22, v20);
    MEMORY[0x1D3868CC0](v23);

    MEMORY[0x1D3868CC0](0x28204E4920, 0xE500000000000000);
    v24 = sub_1CF4A9188(0x6574692E73626F6ALL, 0xEC00000064695F6DLL, 49, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v24);

    MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA44720);
    v25 = [a1 bindLongParameter_];
    v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v28 = v27;

    MEMORY[0x1D3868CC0](v26, v28);

    MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA44740);
    v29 = [a1 bindLongParameter_];
    v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v32 = v31;

    MEMORY[0x1D3868CC0](v30, v32);

    return v37;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF37C004(uint64_t a1, id a2)
{
  *a1 = [a2 integerAtIndex_];
  *(a1 + 8) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 8);
  return (*(v5 + 16))(a2, 0, AssociatedTypeWitness, v5);
}

uint64_t sub_1CF37C0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 96);
  v15 = *(*v3 + 80);
  v16 = v8;
  type metadata accessor for TestingOperation();
  v17 = sub_1CF9E6DA8();
  v12 = a2;
  v13 = a3;
  v14 = &v17;
  sub_1CF377B64(a1, sub_1CF37C1E4, 0, 0, 0, sub_1CF381AB8, v11, a2, a3);
  v9 = v17;
  if (v4)
  {
  }

  return v9;
}

uint64_t sub_1CF37C1E4()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA442F0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA44600);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  return 0;
}

uint64_t sub_1CF37C2E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = a8;
  v23[1] = a6;
  v10 = *a1;
  v12 = *(*a1 + 552);
  v13 = *(*a1 + 560);
  v14 = *(*a1 + 568);
  v24 = *(*a1 + 544);
  v11 = v24;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v15 = type metadata accessor for TestingOperation();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v23 - v17;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  type metadata accessor for Ingestion.FetchItemMetadata();
  if (!swift_dynamicCastClass())
  {
    v24 = v11;
    v25 = v12;
    v26 = v13;
    v27 = v14;
    type metadata accessor for Ingestion.FetchChildrenMetadata();
    if (!swift_dynamicCastClass())
    {
      MEMORY[0x1EEE9AC00](0);
      v22 = v23[0];
      v23[-4] = a7;
      v23[-3] = v22;
      v23[-2] = a1;
      fp_preconditionFailure(_:file:line:)(sub_1CF381ADC, &v23[-6], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLItemJobRegistry.swift", 137, 2, 802);
    }
  }

  v19 = *(v10 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v18, a1 + v19, AssociatedTypeWitness);
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  type metadata accessor for DirectionalTestingOperation();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  return 0;
}

uint64_t sub_1CF37C5CC(uint64_t *a1)
{
  v1 = *a1;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA445E0);
  v3 = *(v1 + 544);
  v4 = *(v1 + 560);
  type metadata accessor for ItemJob();
  swift_getWitnessTable();
  sub_1CF9E7FE8();
  return 0;
}

void sub_1CF37C6E0(uint64_t a1, void *a2)
{
  v2 = a2[9];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = a2[10];

  v6 = v2(v5);
  if (!v6)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_1CEFF7124(v2);
  v9 = (*(*v7 + 152))(v8);

  if (v9 < 0)
  {
    sub_1CF9E7948();

    v17 = 0xD000000000000023;
    v18 = 0x80000001CFA445B0;
    v14 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v14);

    v12 = 41;
    v13 = 0xE100000000000000;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA444F0);
    v10 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v10);

    MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA44510);
    v11 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v11);

    v12 = 0x290A30203D2029;
    v13 = 0xE700000000000000;
  }

  MEMORY[0x1D3868CC0](v12, v13);
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44540);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA44560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v15 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0x202020202020200ALL, 0xED000020444E4120);
  MEMORY[0x1D3868CC0](v17, v18);

  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA44580);
  v16 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
}

uint64_t sub_1CF37CAF0(uint64_t a1, uint64_t a2, char a3)
{
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v13 = 0;
  v14 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA44450);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA442D0);
  v12[0] = 2;
  v5 = MEMORY[0x1E69E6530];
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA44490);
  v7 = qword_1CFA04890[a3];
  v12[3] = v5;
  v12[0] = v7;
  v8 = sub_1CEFF8EA0(v12);
  v10 = v9;
  sub_1CEFCCC44(v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v10)
  {
    MEMORY[0x1D3868CC0](v8, v10);

    MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
    return v13;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t *sub_1CF37CCC0(id a1, uint64_t a2, char a3)
{
  v5 = &v24;
  if ((a3 & 1) != 0 || a2 > 100)
  {
LABEL_9:
    v13 = MEMORY[0x1EEE9AC00](a1);
    v20 = v14;
    v21 = v15;
    v22 = v3;
    v23 = v16;
    v17 = (*(v15 + 24))(sub_1CF381A78, v13);
    if (v4)
    {
      return v5;
    }

    v3 = v17;
    if (([v17 next] & 1) == 0)
    {

      return 0;
    }

    v5 = [v3 longAtIndex_];
  }

  else
  {
    v6 = MEMORY[0x1EEE9AC00](a1);
    v19[2] = v7;
    v19[3] = v8;
    v20 = v3;
    LOBYTE(v21) = v9;
    v22 = v10;
    v11 = (*(v8 + 24))(sub_1CF381A88, v19, v7, v8, v6);
    if (v4)
    {
      return v5;
    }

    v3 = v11;
    v5 = 0;
    while (1)
    {
      a1 = [v3 next];
      if (!a1)
      {
        break;
      }

      v12 = __OFADD__(v5, 1);
      v5 = (v5 + 1);
      if (v12)
      {
        __break(1u);
        goto LABEL_9;
      }
    }
  }

  return v5;
}

uint64_t sub_1CF37CE4C(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v20 = 0;
  v21 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA40230);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA444B0);
  v19[0] = 2;
  v8 = MEMORY[0x1E69E6530];
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0x7420444E4120200ALL, 0xEE00203D20657079);
  v10 = qword_1CFA04890[a3];
  v19[3] = v8;
  v19[0] = v10;
  v11 = sub_1CEFF8EA0(v19);
  v13 = v12;
  sub_1CEFCCC44(v19, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v13)
  {
    MEMORY[0x1D3868CC0](v11, v13);

    MEMORY[0x1D3868CC0](0x54494D494C20200ALL, 0xE900000000000020);
    v14 = [a1 bindLongParameter_];
    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;

    MEMORY[0x1D3868CC0](v15, v17);

    return v20;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF37D078(uint64_t a1, uint64_t a2, char a3)
{
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v13 = 0;
  v14 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA444D0);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA444B0);
  v12[0] = 2;
  v5 = MEMORY[0x1E69E6530];
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0x7420444E4120200ALL, 0xEE00203D20657079);
  v7 = qword_1CFA04890[a3];
  v12[3] = v5;
  v12[0] = v7;
  v8 = sub_1CEFF8EA0(v12);
  v10 = v9;
  sub_1CEFCCC44(v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v10)
  {
    MEMORY[0x1D3868CC0](v8, v10);

    return v13;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF37D264(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = a3;
  v10[3] = a4;
  v11 = a1;
  v7 = (*(a4 + 24))(a5, v10);
  if (!v6)
  {
    v8 = v7;
    v5 = [v7 next];
  }

  return v5 & 1;
}

uint64_t sub_1CF37D2E8(uint64_t a1, uint64_t a2, char a3)
{
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1CF9E7948();
  v17 = 0;
  v18 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA44450);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA44470);
  v15 = 40;
  v16 = 0xE100000000000000;
  v11 = &unk_1F4BED2B0;
  v12 = sub_1CF067ADC;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v5 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA44490);
  v6 = qword_1CFA04890[a3];
  v14 = MEMORY[0x1E69E6530];
  v11 = v6;
  v7 = sub_1CEFF8EA0(&v11);
  v9 = v8;
  sub_1CEFCCC44(&v11, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v9)
  {
    MEMORY[0x1D3868CC0](v7, v9);

    MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
    return v17;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void *sub_1CF37D558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v25 = *v3;
  v6 = v25[12];
  v7 = v25[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = v26;
  v15 = v27;
  v26 = a2;
  v16 = sub_1CF3782E8(v12, &unk_1F4BEE148, v14, a2, a3);
  if (v15)
  {
    (*(v9 + 8))(v12, AssociatedTypeWitness);
  }

  else
  {
    v17 = v16;
    v18 = (*(v9 + 8))(v12, AssociatedTypeWitness);
    v32 = v17;
    MEMORY[0x1EEE9AC00](v18);
    v20 = v25;
    v19 = v26;
    v21 = v25[11];
    *(&v24 - 6) = v7;
    *(&v24 - 5) = v21;
    *(&v24 - 4) = v19;
    *(&v24 - 3) = v6;
    v22 = v20[13];
    *(&v24 - 2) = v22;
    *(&v24 - 1) = a3;
    v28 = v7;
    v29 = v21;
    v30 = v6;
    v31 = v22;
    type metadata accessor for ItemJob();
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7A08();
    v3 = sub_1CF9E6DF8();
  }

  return v3;
}

uint64_t sub_1CF37D830(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 96);
  v10[0] = *(*a2 + 80);
  v10[1] = v3;
  v4 = type metadata accessor for PersistenceTrigger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  *(v10 - v7) = &unk_1F4BEE170;
  swift_storeEnumTagMultiPayload();
  (*(*a2 + 312))(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1CF37D984(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1CF381E70();
}

void sub_1CF37D9D4()
{
  if ((*(v0 + 104) & 1) == 0)
  {
    *(v0 + 104) = 1;
    if (qword_1EDEA5A98 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDEBB818;

    [v1 addWatcher_];
  }
}

id sub_1CF37DA54()
{
  if (*(v0 + 104) == 1)
  {
    if (qword_1EDEA5A98 != -1)
    {
      swift_once();
    }

    result = [qword_1EDEBB818 removeWatcher_];
    *(v0 + 104) = 0;
  }

  return result;
}

void *sub_1CF37DAC0()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[10];
  sub_1CEFF7124(v0[9]);
  v5 = v0[12];

  return v0;
}

uint64_t sub_1CF37DB00()
{
  sub_1CF37DAC0();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF37DB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 + 8) + 88))(a3);
  v9[2] = a3;
  v9[3] = a4;
  v10 = v4;
  v11 = a1;
  return (*(a4 + 32))(sub_1CF3817F4, v9, a3, a4);
}

uint64_t sub_1CF37DBF4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v26 = 0;
  v27 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v7 = *(a3 + 96);
  v8 = *(a3 + 104);
  v9 = *(a3 + 112);
  sub_1CF03C530(v7, v8, v9);
  v10 = sub_1CF065BDC(v7, v8, v9, 0x696C756465686373, 0xEB000000005F676ELL);
  v12 = v11;
  sub_1CF03D7A8(v7, v8, v9);
  MEMORY[0x1D3868CC0](v10, v12);

  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44090);
  v13 = *(*a3 + 576);
  v14 = *(v6 + 96);
  v15 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v17 = *(v16 + 32);
  v18 = swift_checkMetadataState();
  v19 = v17(a1, v18, v16);
  MEMORY[0x1D3868CC0](v19);

  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v20 = qword_1CFA04890[sub_1CF03D760()];
  v25[3] = MEMORY[0x1E69E6530];
  v25[0] = v20;
  v21 = sub_1CEFF8EA0(v25);
  v23 = v22;
  sub_1CEFCCC44(v25, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v23)
  {
    MEMORY[0x1D3868CC0](v21, v23);

    return v26;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF37DEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v59 = a1;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = v7[11];
  v10 = v7[12];
  v11 = v7[13];
  v60 = v8;
  v61 = v9;
  v57 = v9;
  v62 = v10;
  v63 = v11;
  v55 = v11;
  v12 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
  v54 = *(v12 - 8);
  v13 = *(v54 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v46 - v17;
  v56 = v10;
  v58 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 1);
  v19 = *(v18 + 64);
  result = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v46 - v21;
  v23 = *(v6 + 72);
  if (!v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = v22;
  v25 = *(v6 + 80);

  result = v23(v26);
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v27 = result;
  sub_1CEFF7124(v23);
  v28 = *(v27 + 32);

  sub_1CF046AB4();

  v60 = v58;
  v61 = v57;
  v62 = v56;
  v63 = v55;
  v29 = type metadata accessor for PersistenceTrigger();
  v30 = sub_1CF046AF8(v24, v29);
  (*(v18 + 8))(v24, AssociatedTypeWitness);
  if (sub_1CF9E6DF8())
  {
    v31 = 0;
    v49 = v6;
    AssociatedTypeWitness = (v54 + 16);
    v32 = (v54 + 32);
    v48 = (v54 + 8);
    do
    {
      v33 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v33)
      {
        (*(v54 + 16))(v64, v30 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v31, v12);
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v47 != 8)
        {
          __break(1u);
          goto LABEL_17;
        }

        v60 = result;
        (*AssociatedTypeWitness)(v64, &v60, v12);
        swift_unknownObjectRelease();
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_13:
          __break(1u);
        }
      }

      v35 = (*v32)(v16, v64, v12);
      v36 = MEMORY[0x1EEE9AC00](v35);
      v37 = v57;
      *(&v46 - 8) = v58;
      *(&v46 - 7) = v37;
      v38 = v53;
      v39 = v55;
      v40 = v56;
      *(&v46 - 6) = v52;
      *(&v46 - 5) = v40;
      *(&v46 - 4) = v39;
      *(&v46 - 3) = v38;
      MEMORY[0x1EEE9AC00](v36);
      *(&v46 - 6) = v41;
      *(&v46 - 5) = v42;
      *(&v46 - 4) = v59;
      *(&v46 - 3) = v16;
      v44 = v49;
      v45 = v51;
      sub_1CF377B64(v51, sub_1CF381800, v43, 0, 0, sub_1CF381814, (&v46 - 8), v41, *(v42 + 8));
      if (v5)
      {

        return (*v48)(v16, v12);
      }

      (*v48)(v16, v12);
      ++v31;
    }

    while (v34 != sub_1CF9E6DF8());
  }
}

uint64_t sub_1CF37E3D0(void *a1, char *a2, uint64_t a3, char *(*a4)@<X0>(char *result@<X0>, void *a2@<X8>), uint64_t a5, uint64_t a6, void (*a7)(void *a1@<X0>, uint64_t *a2@<X8>))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v58 - v18;
  v20 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v58 - v21;
  v59 = a3;
  v60 = a4;
  v61 = a6;
  v22 = a2;
  v24 = v23;
  v62 = a7;
  v25 = type metadata accessor for PersistenceTrigger.AffectedItemJobs();
  (*(v15 + 16))(v19, &v22[*(v25 + 56)], v14);
  if ((*(v24 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 8))(v19, v14);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1CF9E7948();
    v66 = v59;
    v67 = v60;
    MEMORY[0x1D3868CC0](0x204E492065707974, 0xE800000000000000);
    v26 = *(v22 + 1);
    v64 = 40;
    v65 = 0xE100000000000000;
    v27 = swift_allocObject();
    *(v27 + 16) = a1;
    v59 = v26;
    v60 = sub_1CF086B60;
    v61 = 0;
    v62 = sub_1CF086BF0;
    v63 = v27;

    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFE4E68();
    v29 = sub_1CF9E6C18();
    v31 = v30;

    MEMORY[0x1D3868CC0](v29, v31);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);

    MEMORY[0x1D3868CC0](v64, v65);

    MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA44140);
    v32 = [v28 bindLongParameter_];
    v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v35 = v34;

    MEMORY[0x1D3868CC0](v33, v35);

    MEMORY[0x1D3868CC0](0xD000000000000058, 0x80000001CFA44160);
    v36 = *v22;
    v62 = MEMORY[0x1E69E6530];
    v59 = v36;
    v37 = sub_1CEFF8EA0(&v59);
    v39 = v38;
    sub_1CEFCCC44(&v59, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (v39)
    {
      MEMORY[0x1D3868CC0](v37, v39);

      MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);
      return v66;
    }
  }

  else
  {
    (*(v24 + 32))(v58, v19, AssociatedTypeWitness);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1CF9E7948();
    v66 = v59;
    v67 = v60;
    MEMORY[0x1D3868CC0](0x2064695F6D657469, 0xEA0000000000203DLL);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v42 = (*(*(AssociatedConformanceWitness + 8) + 32))(a1, AssociatedTypeWitness);
    MEMORY[0x1D3868CC0](v42);

    MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xED0000204E492065);
    v43 = *(v22 + 1);
    v64 = 40;
    v65 = 0xE100000000000000;
    v44 = swift_allocObject();
    *(v44 + 16) = a1;
    v59 = v43;
    v60 = sub_1CF086B60;
    v61 = 0;
    v62 = sub_1CF24FA9C;
    v63 = v44;
    v45 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFE4E68();
    v46 = sub_1CF9E6C18();
    v48 = v47;

    MEMORY[0x1D3868CC0](v46, v48);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);

    MEMORY[0x1D3868CC0](v64, v65);

    MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA441C0);
    v49 = [v45 bindLongParameter_];
    v50 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v52 = v51;

    MEMORY[0x1D3868CC0](v50, v52);

    MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA44210);
    v53 = *v22;
    v62 = MEMORY[0x1E69E6530];
    v59 = v53;
    v54 = sub_1CEFF8EA0(&v59);
    v56 = v55;
    sub_1CEFCCC44(&v59, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (v56)
    {
      MEMORY[0x1D3868CC0](v54, v56);

      MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);
      v40 = v66;
      (*(v24 + 8))(v58, AssociatedTypeWitness);
      return v40;
    }
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF37EB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *(*a1 + 544);
  v16 = *(*a1 + 560);
  v17 = *(*a1 + 568);
  v55 = *(*a1 + 552);
  v56 = v15;
  v58 = v15;
  v59 = v55;
  v54 = v16;
  v60 = v16;
  v61 = v17;
  v18 = type metadata accessor for PersistenceTrigger();
  v57 = sub_1CF9E75D8();
  v19 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v22 = &v50 - v21;
  if (*(a1 + 112))
  {
LABEL_15:
    sub_1CF511A20("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLItemJobRegistry.swift", 137, 2, 987);
  }

  v53 = v20;
  v23 = *(v18 - 8);
  (*(v23 + 16))(v22, a6, v18);
  (*(v23 + 56))(v22, 0, 1, v18);
  v24 = a8;
  v25 = *(a8 + 72);
  if (!v25)
  {
    __break(1u);
    goto LABEL_14;
  }

  v26 = *a7;
  v51 = v24;
  v52 = v26;
  v27 = *(v24 + 80);

  v29 = v25(v28);
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = v29;
  sub_1CEFF7124(v25);
  v58 = v56;
  v59 = v55;
  v60 = v54;
  v61 = v17;
  type metadata accessor for JobRegistry();
  v55 = a10;
  v56 = a11;
  v31 = *(a11 + 8);
  v32 = v64;
  sub_1CF66DE54(a1, v22, v52, v30, a9, a10, v31);
  if (v32)
  {
    (*(v53 + 8))(v22, v57);
LABEL_6:

    return 0;
  }

  v36 = v33;
  v37 = v34;
  v38 = v35;
  (*(v53 + 8))(v22, v57);

  v39 = *(a1 + 96);
  v40 = *(a1 + 104);
  *(a1 + 96) = v36;
  *(a1 + 104) = v37;
  v41 = *(a1 + 112);
  *(a1 + 112) = v38;
  sub_1CF03D7A8(v39, v40, v41);
  v42 = v55;
  (*(v31 + 88))(v55, v31);
  v60 = v42;
  v61 = v56;
  v43 = v51;
  v62 = v51;
  v63 = a1;
  (*(v56 + 32))(sub_1CF3817F4, &v58, v42);
  if (*(a1 + 112) == 1)
  {
    v44 = *(v43 + 72);
    if (v44)
    {
      v45 = *(v43 + 80);

      v47 = v44(v46);
      v48 = sub_1CEFF7124(v44);
      if (v47)
      {
        (*(*v47 + 304))(v48);
        goto LABEL_6;
      }
    }
  }

  return 0;
}

void sub_1CF37EF5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v3 + 56);
  v10 = *(a3 + 8);
  sub_1CF331038(a1, a2, v10);
  if (!v4)
  {
    MEMORY[0x1EEE9AC00](v11);
    v15 = a2;
    v16 = a3;
    v17 = v5;
    v18 = a1;
    v12 = sub_1CF377B64(a1, sub_1CF37F0CC, 0, 0, 0, sub_1CF381884, &v14, a2, v10);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v15 = a2;
    v16 = a3;
    v17 = v5;
    (*(a3 + 32))(sub_1CF3818B4, v13);
    if (sub_1CF37D558(a1, a2, v10))
    {
      sub_1CF37D9D4();
    }
  }
}

unint64_t sub_1CF37F0CC()
{
  sub_1CF9E7948();

  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  return 0xD000000000000013;
}

uint64_t sub_1CF37F160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v51 = a6;
  v13 = sub_1CF9E5CF8();
  v52 = *(v13 - 8);
  v14 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6118();
  v48 = *(v16 - 8);
  v49 = v16;
  v17 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E7288();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v47 = v9;
    v24 = v23;
    v25 = swift_slowAlloc();
    v46 = a8;
    v26 = v25;
    v53 = v25;
    *v24 = 136315138;
    v27 = sub_1CF044BA4();
    v45 = v13;
    v28 = a7;
    v30 = v29;

    v31 = sub_1CEFD0DF0(v27, v30, &v53);
    a7 = v28;
    v13 = v45;

    *(v24 + 4) = v31;
    _os_log_impl(&dword_1CEFC7000, v21, v22, "recovering running job %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v32 = v26;
    a8 = v46;
    MEMORY[0x1D386CDC0](v32, -1, -1);
    MEMORY[0x1D386CDC0](v24, -1, -1);
  }

  else
  {
  }

  (*(v48 + 8))(v19, v49);
  sub_1CF2F462C();
  v33 = swift_allocError();
  *v34 = 0;
  *(v34 + 8) = 0;
  *(v34 + 16) = -1;
  v36 = *(a1 + 96);
  v35 = *(a1 + 104);
  *(a1 + 96) = v33;
  *(a1 + 104) = 0;
  v37 = *(a1 + 112);
  *(a1 + 112) = 3;
  sub_1CF03D7A8(v36, v35, v37);
  v38 = v50;
  v39 = *(v51 + 56);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v41 = v40;
  result = (*(v52 + 8))(v38, v13);
  v43 = v41 * 1000000000.0;
  if (COERCE__INT64(fabs(v41 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v43 < 9.22337204e18)
  {
    sub_1CF333918(a1, v43, a7, a8, a9);
    return 0;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1CF37F4E0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA442B0);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA442D0);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  return 0;
}

uint64_t sub_1CF37F624(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 72);
  if (v5)
  {
    v8 = *(v3 + 80);

    v10 = v5(v9);
    v11 = sub_1CEFF7124(v5);
    if (v10)
    {
      v12 = MEMORY[0x1EEE9AC00](v11);
      v13 = a1;
      v14 = (*(a3 + 24))(sub_1CF381A3C, v12);
      if (v4)
      {
      }

      else
      {
        v15 = v14;
        v13 = [v14 next];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1CF37F75C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(*a2 + 96);
  v7 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v21 - v11;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1CF9E7948();
  v27 = v22;
  v28 = v23;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA40230);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410);
  v13 = *(a3 + 32);
  sub_1CF046AB4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(*(AssociatedConformanceWitness + 8) + 32))(a1, AssociatedTypeWitness);
  v17 = v16;
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  MEMORY[0x1D3868CC0](v15, v17);

  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEF203D2065707974);
  v22 = 20;
  v18 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v18);

  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA44430);
  v25 = 40;
  v26 = 0xE100000000000000;
  v22 = &unk_1F4BED2B0;
  v23 = sub_1CF067ADC;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v19 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v19);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v25, v26);

  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return v27;
}

uint64_t sub_1CF37FAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = a2;
  v10 = a3;
  v6 = (*(v10 + 24))(a4, v9, a2, v10);
  if (!v5)
  {
    v7 = v6;
    v4 = [v6 next];
  }

  return v4 & 1;
}

uint64_t sub_1CF37FB78(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA40230);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA442D0);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA443A0);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA443C0);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA443C0);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA443E0);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0x4C200A30203D2120, 0xEE00312054494D49);
  return 0;
}

uint64_t sub_1CF37FD9C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C05D0, &unk_1CF9FE620);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CF9FA450;
  v3 = v0[7];
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  *(v2 + 56) = type metadata accessor for SQLThrottler();
  *(v2 + 64) = &off_1F4BFC1A8;
  *(v2 + 32) = v3;

  return v2;
}

uint64_t sub_1CF37FE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v25 = v3;
  v5 = *(a3 + 32);
  result = (v5)(sub_1CF380D98, v22, a2, a3);
  if (!v4)
  {
    v7 = MEMORY[0x1EEE9AC00](result);
    v8 = v5(sub_1CF380DA4, v7);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v10 = v5(sub_1CF380DB0, v9);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v12 = v5(sub_1CF380DBC, v11);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = v5(sub_1CF380DC8, v13);
    v15 = MEMORY[0x1EEE9AC00](v14);
    v16 = v5(sub_1CF380DD4, v15);
    v17 = MEMORY[0x1EEE9AC00](v16);
    v18 = v5(sub_1CF380DE0, v17);
    v19 = MEMORY[0x1EEE9AC00](v18);
    v20 = v5(sub_1CF380DEC, v19);
    v21 = MEMORY[0x1EEE9AC00](v20);
    return v5(sub_1CF380DF8, v21);
  }

  return result;
}

uint64_t sub_1CF3801BC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x5420455441455243, 0xED000020454C4241);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA43DC0);
  v4 = *(v3 + 96);
  v5 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD000000000000193, 0x80000001CFA43DF0);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA43F90);
  return 0;
}

uint64_t sub_1CF380380(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();

  strcpy(v6, "CREATE INDEX ");
  HIWORD(v6[1]) = -4864;
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0x4E4F206D6574695FLL, 0xE900000000000020);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0x64695F6D65746928, 0xE900000000000029);
  return v6[0];
}

unint64_t sub_1CF380460(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();

  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0x4E4F20657079745FLL, 0xE900000000000020);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0x64695F6D65746928, 0xEF2965707974202CLL);
  return 0xD000000000000014;
}

uint64_t sub_1CF380538(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();

  strcpy(v6, "CREATE INDEX ");
  HIWORD(v6[1]) = -4864;
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0x4F2065746174735FLL, 0xEA0000000000204ELL);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA43DA0);
  return v6[0];
}

uint64_t sub_1CF380610(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA43D60);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA43D80);
  return 0;
}

uint64_t sub_1CF3806F0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA43D20);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA43D40);
  return 0;
}

uint64_t sub_1CF3807D0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA43CA0);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA43CD0);
  return 0;
}

uint64_t sub_1CF3808B0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA43C20);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000048, 0x80000001CFA43C50);
  return 0;
}

uint64_t sub_1CF380990(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA43BC0);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA43BF0);
  return 0;
}

uint64_t sub_1CF380A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  v11 = v3;
  v5 = *(a3 + 32);
  result = (v5)(sub_1CF380D80, v8, a2, a3);
  if (!v4)
  {
    v7 = MEMORY[0x1EEE9AC00](result);
    return v5(sub_1CF380D8C, v7);
  }

  return result;
}

uint64_t sub_1CF380B54(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA43B40);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA43B80);
  return 0;
}

uint64_t sub_1CF380C34(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD00000000000005BLL, 0x80000001CFA43A90);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA43AF0);
  return 0;
}

uint64_t sub_1CF380D80(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF380B54(a1, v1[4]);
}

uint64_t sub_1CF380D8C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF380C34(a1, v1[4]);
}

uint64_t sub_1CF380D98(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF3801BC(a1, *(v1 + 32));
}

uint64_t sub_1CF380DA4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF380380(a1, v1[4]);
}

unint64_t sub_1CF380DB0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF380460(a1, v1[4]);
}

uint64_t sub_1CF380DBC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF380538(a1, v1[4]);
}

uint64_t sub_1CF380DC8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF380610(a1, v1[4]);
}

uint64_t sub_1CF380DD4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF3806F0(a1, v1[4]);
}

uint64_t sub_1CF380DE0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF3807D0(a1, v1[4]);
}

uint64_t sub_1CF380DEC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF3808B0(a1, v1[4]);
}

uint64_t sub_1CF380DF8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF380990(a1, v1[4]);
}

uint64_t sub_1CF380E04(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_1CF374AA8(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

uint64_t sub_1CF380E18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[9];
  if (v5)
  {
    v6 = v4;
    v7 = *v4;
    v22 = a2;
    v23 = a4;
    v24 = result;
    v25 = a3;
    v8 = v4[10];

    result = v5(v9);
    if (result)
    {
      v10 = result;
      v11 = sub_1CEFF7124(v5);
      (*(*v10 + 216))(v11);
      sub_1CF527D90();

      v21 = v31;
      v29 = v31;
      v30 = v32;
      v12 = *(v7 + 80);
      v13 = *(v7 + 96);
      type metadata accessor for JobLockRule();
      swift_getWitnessTable();
      sub_1CF9E66B8();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1BB0, &unk_1CFA04800);
      swift_getWitnessTable();
      sub_1CF9E7AC8();
      swift_getWitnessTable();
      sub_1CEFCCCEC(&qword_1EDEA3798, &unk_1EC4C1BB0, &unk_1CFA04800);
      sub_1CF9E7AA8();
      swift_getWitnessTable();
      v14 = sub_1CF9E7978();
      WitnessTable = swift_getWitnessTable();
      v27 = swift_getWitnessTable();
      v28 = sub_1CEFCCCEC(&qword_1EDEA3790, &unk_1EC4C1BB0, &unk_1CFA04800);
      v26 = swift_getWitnessTable();
      v15 = swift_getWitnessTable();
      v17 = sub_1CF054A5C(sub_1CF38120C, 0, v14, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);

      v18 = sub_1CF8E44FC(v17);

      MEMORY[0x1EEE9AC00](v19);
      v20[2] = v25;
      v20[3] = v23;
      v20[4] = v18;
      v20[5] = v10;
      v20[6] = v22;
      v20[7] = v6;
      sub_1CF377B64(v24, sub_1CF381274, 0, 0, 0, sub_1CF38184C, v20, v25, v23);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF38120C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1CF381290(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v51 = a5;
  v46 = a4;
  v47 = a3;
  v45 = a2;
  v12 = a1;
  v13 = (a1 + 7);
  v14 = *a1;
  swift_beginAccess();
  sub_1CEFCCBDC(v13, &v55, &unk_1EC4C1BE0, &unk_1CF9FD400);
  v15 = v58;
  v52 = v12;
  if (v58)
  {
    v50 = a6;
    v16 = v59;
    v17 = __swift_project_boxed_opaque_existential_1(&v55, v58);
    v18 = *(v15 - 8);
    v19 = *(v18 + 64);
    v20 = MEMORY[0x1EEE9AC00](v17);
    v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v22, v20);
    sub_1CEFCCC44(&v55, &unk_1EC4C1BE0, &unk_1CF9FD400);
    v23 = (*(v16 + 16))(v15, v16);
    v25 = v24;
    (*(v18 + 8))(v22, v15);
    v12 = v52;
    LOBYTE(v22) = sub_1CEFDB148(v23, v25, v50);

    if (v22)
    {
      v49 = 0;
      v48 = 5;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1CEFCCC44(&v55, &unk_1EC4C1BE0, &unk_1CF9FD400);
  }

  v48 = 0;
  v49 = 2;
LABEL_6:
  v50 = a9;
  v26 = (*(*a7 + 384))(v12);
  if (v26 < 0)
  {

    v32 = a8[3];
    v42 = a8[4];
    __swift_project_boxed_opaque_existential_1(a8, v32);
    v53 = 0;
    v54 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](8224, 0xE200000000000000);
    v60 = v12;
    v33 = v14[68];
    v29 = v14[70];
    v30 = v14[71];
    v43 = v14[69];
    v44 = v33;
    v55 = v33;
    v56 = v43;
    v57 = v29;
    v58 = v30;
    type metadata accessor for ItemJob();
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v34 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v34);

    sub_1CF4FB2BC(v53, v54, v32, v42);
  }

  else
  {
    v27 = a8[3];
    v42 = a8[4];
    __swift_project_boxed_opaque_existential_1(a8, v27);
    v53 = 0;
    v54 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](8224, 0xE200000000000000);
    v60 = v26;
    v28 = v14[68];
    v29 = v14[70];
    v30 = v14[71];
    v43 = v14[69];
    v44 = v28;
    v55 = v28;
    v56 = v43;
    v57 = v29;
    v58 = v30;
    type metadata accessor for Job();
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v31 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v31);

    sub_1CF4FB2BC(v53, v54, v27, v42);
  }

  if ((v51 & 1) == 0)
  {
    v35 = a8[3];
    v36 = a8[4];
    __swift_project_boxed_opaque_existential_1(a8, v35);
    v53 = 0;
    v54 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](8224, 0xE200000000000000);
    v60 = sub_1CF089324(v52, v46, v45, v47);
    v55 = v44;
    v56 = v43;
    v57 = v29;
    v58 = v30;
    type metadata accessor for ItemJob();
    swift_getWitnessTable();
    sub_1CF9E7FE8();

    sub_1CF4FB2BC(v53, v54, v35, v36);
  }

  v37 = v50;
  if (*(v50 + 104) == 1)
  {
    v38 = a8[3];
    v39 = a8[4];
    __swift_project_boxed_opaque_existential_1(a8, v38);
    v55 = 8224;
    v56 = 0xE200000000000000;
    MEMORY[0x1D3868CC0](*(v37 + 88), *(v37 + 96));
    MEMORY[0x1D3868CC0](0x6C75646568637320, 0xEA00000000006465);
    sub_1CF4FB2BC(v55, v56, v38, v39);
  }

  return 0;
}

uint64_t sub_1CF3817F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF37DBF4(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF38184C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  return sub_1CF381290(a1, a2, a3, a4, a5 & 1, *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
}

uint64_t sub_1CF3818B4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF37F4E0(a1, v1[4]);
}

void *sub_1CF3818C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v21 = 100;
  v14 = (*(a7 + 24))(sub_1CF381A28, v20, a4, a7);
  if (!v7)
  {
    v15 = v14;
    MEMORY[0x1EEE9AC00](v14);
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = a4;
    v19[5] = a5;
    v19[6] = a6;
    v19[7] = a7;
    v19[8] = v16;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    a5 = sub_1CF4C1FE4(sub_1CF382088, v19, AssociatedTypeWitness);
    sub_1CF9E6DF8();
  }

  return a5;
}

uint64_t sub_1CF381A30(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF37FB78(a1, v1[4]);
}

uint64_t sub_1CF381A3C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF37F75C(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF381A68(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF37D2E8(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF381A78(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF37D078(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF381A88(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF37CE4C(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t sub_1CF381A9C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF37CAF0(a1, *(v1 + 32), *(v1 + 40));
}

void sub_1CF381AAC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1CF37C6E0(a1, *(v1 + 32));
}

uint64_t sub_1CF381ADC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1CF37C5CC(*(v0 + 32));
}

uint64_t sub_1CF381AE8(void *a1)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  return sub_1CF37BBC4(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
}

uint64_t sub_1CF381B34(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF37B670(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

uint64_t sub_1CF381B68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  return sub_1CF21D064(*(v0 + 64));
}

uint64_t sub_1CF381B90(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF37B188(a1, v1[4], v1[5], v1[6], v1[7]);
}

uint64_t sub_1CF381BA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  return sub_1CF37C004(*(v0 + 64), *(v0 + 72));
}

uint64_t sub_1CF381C84(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1CF37A1C4(a1);
}

uint64_t sub_1CF381CA8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF3797C4(a1, *(v1 + 32));
}

uint64_t sub_1CF381CB4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF378D60(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
}

uint64_t sub_1CF381CC8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF3789BC(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t sub_1CF381CD8(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v8 = v1[7];
  return sub_1CF378438(a1, v1[8], v1[9]);
}

uint64_t sub_1CF381D0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5[2];
  v7 = v5[4];
  v8 = v5[5];
  v10 = v5[3];
  return sub_1CF3787C4(a1, a2, a3, a4, a5 & 1);
}

uint64_t sub_1CF381D44(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *v2;
  *v2 = a1;

  return 1;
}

uint64_t sub_1CF381D84(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 64);
  return sub_1CF377FE8(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
}

uint64_t sub_1CF381D98(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF377100(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF381DA4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF3777E4(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF381DB0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF3773F8(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF381DBC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF376228(a1, *(v1 + 32));
}

uint64_t sub_1CF381DC8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF375B18(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF381DD4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF375D8C(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

uint64_t sub_1CF381E04(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF375F48(a1, v1[4], v1[5]);
}

uint64_t sub_1CF381E10(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF37475C(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF381E1C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF375370(a1, *(v1 + 32), *(v1 + 40));
}

void sub_1CF381E70()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 80);

    v4 = v1(v3);
    sub_1CEFF7124(v1);
    if (v4)
    {

      sub_1CF92DE44("sharedSchedulerCanRun(_:)", 25, 2u, sub_1CF045408, 0, nullsub_1, 0, sub_1CF381F40, v4);
    }
  }
}

uint64_t getEnumTagSinglePayload for SQLItemJobID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLItemJobID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1CF381FF4(uint64_t a1)
{
  result = sub_1CF38201C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF38201C()
{
  result = qword_1EDEA8560;
  if (!qword_1EDEA8560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8560);
  }

  return result;
}

uint64_t sub_1CF38219C(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 96);
  type metadata accessor for Job();
  sub_1CF382924();
  return sub_1CF382100();
}

uint64_t sub_1CF382258(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _OWORD *))
{
  v3 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v3;
  a3(255, v5);
  swift_getWitnessTable();
  return sub_1CF382100();
}

unint64_t sub_1CF382300()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v3 = *MEMORY[0x1E696A578];
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v4;
  v5 = sub_1CF9E6948();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  return v7;
}

uint64_t sub_1CF3823CC(uint64_t a1)
{
  v2 = sub_1CF382DFC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF382408(uint64_t a1)
{
  v2 = sub_1CF382DFC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

void *sub_1CF382454()
{
  result = sub_1CF4E0980(MEMORY[0x1E69E7CC0]);
  off_1EDEAE210 = result;
  return result;
}

void *sub_1CF38247C()
{
  result = sub_1CF4E04E8(MEMORY[0x1E69E7CC0]);
  off_1EDEADD38 = result;
  return result;
}

uint64_t Optional<A>.init(sqliteValue:)@<X0>(sqlite3_value *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1CF9E75D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  if (sqlite3_value_type(a1) == 5)
  {
    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  result = (*(a3 + 24))(a1, a2, a3);
  if (!v4)
  {
    (*(*(a2 - 8) + 56))(v13, 0, 1, a2);
    return (*(v10 + 32))(a4, v13, v9);
  }

  return result;
}

uint64_t sub_1CF382814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for SQLCodableAccessorWrapper();
  v9 = (a5 + *(result + 52));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

unint64_t sub_1CF3828D0()
{
  result = qword_1EC4BFAD8;
  if (!qword_1EC4BFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFAD8);
  }

  return result;
}

unint64_t sub_1CF382924()
{
  result = qword_1EDEA8768;
  if (!qword_1EDEA8768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8768);
  }

  return result;
}