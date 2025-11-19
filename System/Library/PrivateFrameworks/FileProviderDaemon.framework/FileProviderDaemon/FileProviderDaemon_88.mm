uint64_t sub_1CF904FE0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
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
  v11 = 270592;
  if ((a5 & 0x8000) != 0)
  {
    v11 = 2367744;
  }

  *(result + 88) = 0;
  *(result + 96) = v11;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_1CF905084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
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
  v9 = 270592;
  if ((a4 & 0x8000) != 0)
  {
    v9 = 2367744;
  }

  *(result + 88) = 0;
  *(result + 96) = v9;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

double sub_1CF905118@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1CF0271B0(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1CEFD1104(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1CF90517C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1CEFE863C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_1CF9051CC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100) != 0)
  {
    v4 = 0x28726568746F2ELL;
    v2 = NSFileProviderItemIdentifier.description.getter();
  }

  else
  {
    v4 = 0x286E69616D2ELL;
    v2 = VFSItemID.description.getter(a1, a2);
  }

  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v4;
}

uint64_t sub_1CF905264(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100) != 0)
  {
    v4 = 0x28726568746F2ELL;
    v2 = VFSItemID.description.getter(a1, a2);
  }

  else
  {
    v4 = 0x286E69616D2ELL;
    v2 = NSFileProviderItemIdentifier.description.getter();
  }

  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v4;
}

void *sub_1CF905324(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = v3;
  result[4] = v3;
  result[5] = v3;
  result[6] = 0;
  return result;
}

uint64_t sub_1CF90535C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_1CF9E59D8();
    v12 = sub_1CF9E5A58();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_1CF9E5A58();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_1CEFCCC44(v9, &unk_1EC4BE310, qword_1CF9FCBE0);
}

void sub_1CF9054B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  sub_1CEFCCBDC(a1, &v14 - v8, &unk_1EC4BE310, qword_1CF9FCBE0);
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_1CF9E5928();
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v13 = sub_1CF9E57E8();
  }

  else
  {
    v13 = 0;
  }

  (*(a3 + 16))(a3, v12, v13);
}

uint64_t sub_1CF90560C()
{
  sub_1CF9E7948();

  v1 = sub_1CF255338();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](980444704, 0xE400000000000000);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  if (*(v0 + v2[13]))
  {
    v3 = NSFileProviderItemIdentifier.description.getter();
    v5 = v4;
  }

  else
  {
    v5 = 0xE90000000000003ELL;
    v3 = 0x6E776F6E6B6E753CLL;
  }

  MEMORY[0x1D3868CC0](v3, v5);

  MEMORY[0x1D3868CC0](0x3A6E656464696820, 0xE800000000000000);
  if (*(v0 + v2[14]))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + v2[14]))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v6, v7);

  MEMORY[0x1D3868CC0](0x6574726F706D6920, 0xEA00000000003A64);
  if (*(v0 + v2[15]))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + v2[15]))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v8, v9);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 980641340;
}

void sub_1CF9057BC(void *a1, uint64_t a2, void *a3, void (*a4)(_OWORD *), uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1CF554678(a3, 0, v12, v10, v11, &v62);
  if (!v5)
  {
    if (v64)
    {
      v65 = a5;
      v13 = v62;
      v14 = v63;
      v60 = v62;
      v16 = a1[3];
      v15 = a1[4];
      v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
      v18 = a3[5];
      (*(*v18 + 288))(&v58, &v60, v17, v16, v15);
      v26 = v14;
      v27 = v58;
      if (v58)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
        v28 = swift_allocObject();
        *(v28 + 42) = 0;
        *(v28 + 32) = v27;
        *(v28 + 40) = 256;
        *(v28 + 16) = v27;
        *(v28 + 24) = 256;
        v55[0] = v28;
        LOBYTE(v55[1]) = 0;
        v29 = v27;

        a4(v55);

        v30 = v13;
LABEL_14:
        sub_1CEFD0994(v30, v26, 1);
        return;
      }

      v40 = v18[2];
      v55[0] = 0uLL;
      *&v55[1] = 1;
      memset(&v55[1] + 8, 0, 40);

      v32 = objc_sync_enter(a3);
      v41 = v13;
      v42 = v65;
      if (!v32)
      {
        v43 = *(a3 + qword_1EDEADB30);
        v48 = v43;
        v35 = objc_sync_exit(a3);
        if (!v35)
        {
          v44 = swift_allocObject();
          v44[2] = a4;
          v44[3] = v42;
          v44[4] = v41;
          v45 = *(*v40 + 136);

          sub_1CEFD0988(v41, v26, 1);
          v45(&v60, v55, v43, 0, sub_1CF9272BC, v44);

          v49 = v55[0];
          v50 = v55[1];
          v51 = v55[2];
          v52 = v55[3];
          sub_1CEFCCC44(&v49, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          v30 = v41;
          goto LABEL_14;
        }

LABEL_18:
        MEMORY[0x1EEE9AC00](v35);
        v47 = a3;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v46, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }
    }

    else
    {
      v60 = v62;
      v61 = v63;
      v19 = a1[3];
      v20 = a1[4];
      v21 = __swift_project_boxed_opaque_existential_1(a1, v19);
      v22 = a3[4];
      (*(*v22 + 288))(&v58, &v60, v21, v19, v20);
      v23 = v59;
      if (v59 != 255)
      {
        v24 = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
        v25 = swift_allocObject();
        *(v25 + 32) = v24;
        *(v25 + 40) = v23;
        *(v25 + 41) = 0;
        *(v25 + 16) = v24;
        *(v25 + 24) = v23;
        *(v25 + 25) = 0;
        v55[0] = v25;
        LOBYTE(v55[1]) = 0;

        a4(v55);

        return;
      }

      v31 = v22[2];
      v56 = 0u;
      v57 = 0u;
      memset(v55, 0, sizeof(v55));

      v32 = objc_sync_enter(a3);
      if (!v32)
      {
        v33 = *(a3 + qword_1EDEADB30);
        v34 = v33;
        v35 = objc_sync_exit(a3);
        if (!v35)
        {
          v36 = v60;
          v37 = v61;
          v38 = swift_allocObject();
          *(v38 + 16) = a4;
          *(v38 + 24) = a5;
          *(v38 + 32) = v36;
          *(v38 + 40) = v37;
          v39 = *(*v31 + 136);

          v39(&v60, v55, v33, 0, sub_1CF9272C8, v38);

          v51 = v55[2];
          v52 = v55[3];
          v53 = v56;
          v54 = v57;
          v49 = v55[0];
          v50 = v55[1];
          sub_1CEFCCC44(&v49, &unk_1EC4BECD0, &unk_1CF9FEF80);
          return;
        }

        goto LABEL_18;
      }
    }

    MEMORY[0x1EEE9AC00](v32);
    v47 = a3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v46, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }
}

void sub_1CF905E20(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, char a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23[-1] - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v23[-1] - v15);
  sub_1CEFCCBDC(a1, &v23[-1] - v15, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = 0;
    v18 = *v16;
    v19 = 1;
  }

  else
  {
    sub_1CEFE55D0(v16, v12, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v18 = sub_1CF905FD0(v12, a4, a5);
    v17 = v20;
    v19 = v21;
    sub_1CEFCCC44(v12, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }

  v23[0] = v18;
  v23[1] = v17;
  v24 = v19 & 1;
  a2(v23);
  sub_1CF9272D8(v18, v17, v19 & 1);
}

uint64_t sub_1CF905FD0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for VFSItem(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, v9, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_1CEFDA05C(v9, v14, type metadata accessor for VFSItem);
    v18 = *(v14 + 2);
    v19 = v14[24];
    sub_1CEFD5398(v14, type metadata accessor for VFSItem);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
    result = swift_allocObject();
    *(result + 32) = v18;
    *(result + 40) = v19;
    *(result + 41) = 0;
    *(result + 16) = v18;
    *(result + 24) = v19;
    *(result + 25) = 0;
    return result;
  }

  v15 = sub_1CEFCCC44(v9, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if (a3 == 2 && !a2)
  {
    v17 = MEMORY[0x1E6967258];
LABEL_9:
    v21 = *v17;
    goto LABEL_11;
  }

  if (a3 == 2 && a2 == 1)
  {
    v17 = MEMORY[0x1E6967280];
    goto LABEL_9;
  }

  v26 = 0x2F73662F70665F5FLL;
  v27 = 0xE800000000000000;
  v24 = a2;
  v25 = a3;
  v22 = VFSItemID.description.getter(v15, v16);
  MEMORY[0x1D3868CC0](v22);

  v21 = sub_1CF9E6888();

LABEL_11:
  v23 = FPItemNotFoundError();

  result = v23;
  if (!v23)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF906288(void *a1, void *a2)
{
  if (a1)
  {
    v3 = sub_1CF0689E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
    v4 = swift_allocObject();
    *(v4 + 42) = 0;
    *(v4 + 32) = v3;
    *(v4 + 40) = 256;
    *(v4 + 16) = v3;
    *(v4 + 24) = 256;
    v5 = v3;
    v6 = [a1 itemID];
    [v6 identifier];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
    v4 = swift_allocError();
    *v8 = a2;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *(v8 + 24) = 1;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
    *(v8 + 73) = 0u;
    v9 = a2;
  }

  return v4;
}

void sub_1CF9063D8(void *a1, char *a2, void *a3, int a4, unsigned int a5, void (*a6)(_BYTE *), uint64_t a7, unint64_t a8)
{
  v92 = a8;
  v95 = a6;
  v96 = a7;
  v98 = a5;
  LODWORD(v97) = a4;
  v99 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v10 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v12 = &v89 - v11;
  v13 = sub_1CF9E6118();
  v94 = *(v13 - 8);
  v14 = v94[8];
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v19 = __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = a3;
  v21 = v108;
  sub_1CF554678(a3, 0, v19, v18, v17, &v105);
  if (!v21)
  {
    v22 = v98;
    v23 = v97;
    v91 = v13;
    v99 = v12;
    v108 = 0;
    if (v107)
    {
      v24 = v16;
      v25 = v105;
      v26 = v106;
      v27 = fpfs_current_or_default_log();
      v28 = v24;
      sub_1CF9E6128();
      v29 = v92;
      sub_1CEFD09A0(v92);
      sub_1CEFD09A0(v29);
      sub_1CEFD0988(v25, v26, 1);
      v30 = sub_1CF9E6108();
      v31 = sub_1CF9E7298();
      v32 = os_log_type_enabled(v30, v31);
      v98 = v26;
      if (v32)
      {
        v33 = v29;
        v34 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *v102 = v90;
        *v34 = 136315394;
        v35 = NSFileProviderItemIdentifier.description.getter();
        v97 = v28;
        v36 = v25;
        v37 = v35;
        v39 = v38;
        sub_1CEFD0994(v36, v26, 1);
        v40 = sub_1CEFD0DF0(v37, v39, v102);

        *(v34 + 4) = v40;
        *(v34 + 12) = 2080;
        v41 = sub_1CF913458(v33);
        v43 = v42;
        sub_1CEFD0A98(v33);
        sub_1CEFD0A98(v33);
        v44 = sub_1CEFD0DF0(v41, v43, v102);

        *(v34 + 14) = v44;
        v25 = v36;
        _os_log_impl(&dword_1CEFC7000, v30, v31, "no vfsItemID found for item %s, request %s", v34, 0x16u);
        v45 = v90;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v45, -1, -1);
        MEMORY[0x1D386CDC0](v34, -1, -1);

        (v94[1])(v97, v91);
      }

      else
      {
        sub_1CEFD0A98(v29);
        sub_1CEFD0A98(v29);
        sub_1CEFD0994(v25, v26, 1);

        (v94[1])(v24, v91);
      }

      v57 = v95;
      v58 = v99;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
      (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
      swift_storeEnumTagMultiPayload();
      v57(v58);
      sub_1CEFD0994(v25, v98, 1);
      v60 = &qword_1EC4C5020;
      v61 = &qword_1CFA0A278;
      v62 = v58;
      goto LABEL_14;
    }

    v103 = v105;
    v104 = v106;
    v46 = objc_sync_enter(a3);
    if (v46)
    {
      MEMORY[0x1EEE9AC00](v46);
      v85 = &v89 - 4;
      *(&v89 - 2) = a3;
      v86 = sub_1CF1C5288;
      goto LABEL_46;
    }

    v47 = qword_1EDEADAA8;
    v48 = *(a3 + qword_1EDEADAA8);
    v49 = objc_sync_exit(v20);
    if (v49)
    {
      MEMORY[0x1EEE9AC00](v49);
      v87 = &v89 - 4;
      *(&v89 - 2) = v20;
      v88 = sub_1CF1C5290;
      goto LABEL_48;
    }

    v50 = a1;
    v52 = a1[3];
    v51 = a1[4];
    v53 = __swift_project_boxed_opaque_existential_1(v50, v52);
    if (v48)
    {
      v54 = v20[2];
      v55 = v108;
      sub_1CF68DDB0(&v103, v53, v52, v51, v102);
      if (v55)
      {
        return;
      }

      v108 = 0;
      memcpy(v101, v102, sizeof(v101));
      if (sub_1CEFF755C(v101) == 1)
      {
        memcpy(v100, v102, sizeof(v100));
        sub_1CEFCCC44(v100, &unk_1EC4BFC20, &unk_1CFA0A290);
        if (v23)
        {
          v56 = 0;
        }

        else
        {
          v56 = 0;
          if (v103)
          {
            v68 = 0;
          }

          else
          {
            v68 = v104 == 2;
          }

          if (!v68 && (v22 & 1) == 0)
          {
            v69 = objc_sync_enter(v20);
            if (v69)
            {
LABEL_49:
              MEMORY[0x1EEE9AC00](v69);
              v85 = &v89 - 4;
              *(&v89 - 2) = v20;
              v86 = sub_1CF1C546C;
LABEL_46:
              fp_preconditionFailure(_:file:line:)(v86, v85, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
            }

            v56 = *(v20 + v47);
            v70 = objc_sync_exit(v20);
            if (v70)
            {
LABEL_50:
              MEMORY[0x1EEE9AC00](v70);
              v87 = &v89 - 4;
              *(&v89 - 2) = v20;
              v88 = sub_1CF1C5468;
LABEL_48:
              fp_preconditionFailure(_:file:line:)(v88, v87, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
            }
          }
        }

        v65 = 0;
        v64 = 0;
      }

      else
      {
        memcpy(v100, v102, sizeof(v100));
        v65 = BYTE1(v100[17]) == 6;
        v64 = v100[31];
        if ((v23 & 1) != 0 || (!v103 ? (v66 = v104 == 2) : (v66 = 0), v66))
        {
          v56 = 0;
        }

        else if (BYTE1(v100[17]) >= 7u)
        {
          v56 = 1;
        }

        else
        {
          v56 = 0x23u >> SBYTE1(v100[17]);
        }

        v67 = v100[31];
        sub_1CEFCCC44(v100, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

LABEL_34:
      v71 = v50[3];
      v72 = v50[4];
      v73 = __swift_project_boxed_opaque_existential_1(v50, v71);
      v74 = v20[4];
      v75 = v108;
      (*(*v74 + 656))(v102, &v103, v73, v71, v72);
      v108 = v75;
      if (v75)
      {

        return;
      }

      if (*&v102[64])
      {
        v76 = 3;
      }

      else
      {
        v76 = 515;
      }

      v77 = v74[2];

      v69 = objc_sync_enter(v20);
      if (!v69)
      {
        v97 = v76;
        v98 = v65;
        LODWORD(v99) = v56;
        v78 = *(v20 + qword_1EDEADB30);
        v94 = v78;
        v70 = objc_sync_exit(v20);
        if (!v70)
        {
          v79 = v103;
          v80 = v104;
          v81 = swift_allocObject();
          v82 = v96;
          *(v81 + 16) = v95;
          *(v81 + 24) = v82;
          *(v81 + 32) = v79;
          *(v81 + 40) = v80;
          *(v81 + 48) = v64;
          *(v81 + 56) = v99 & 1;
          *(v81 + 57) = v98;
          v83 = *(*v77 + 136);
          v84 = v64;

          v83(&v103, v102, v78, v97, sub_1CF926648, v81);

          *&v101[32] = *&v102[32];
          *&v101[48] = *&v102[48];
          *&v101[64] = *&v102[64];
          *&v101[80] = *&v102[80];
          *v101 = *v102;
          *&v101[16] = *&v102[16];
          v60 = &unk_1EC4BECD0;
          v61 = &unk_1CF9FEF80;
          v62 = v101;
LABEL_14:
          sub_1CEFCCC44(v62, v60, v61);
          return;
        }

        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v63 = v108;
    (*(*v20[2] + 160))(v102, &v103, v53, v52, v51);
    if (!v63)
    {
      v108 = 0;
      v56 = 0;
      v64 = *v102;
      v65 = *v102 != 0;
      goto LABEL_34;
    }
  }
}

uint64_t sub_1CF906D4C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, int a5, void *a6, int a7, int a8)
{
  v50 = a8;
  v46 = a7;
  v51 = a6;
  v52 = a1;
  v48 = a5;
  v47 = a4;
  v53 = a3;
  v54 = a2;
  v44 = type metadata accessor for ItemMetadata();
  v8 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VFSItem(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v43 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v43 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v43 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (&v43 - v29);
  sub_1CEFCCBDC(v52, v26, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v30 = *v26;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1CEFE55D0(v26, v22, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCBDC(v22, v20, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if ((*(v11 + 48))(v20, 1, v10) == 1)
    {
      sub_1CEFCCC44(v20, &unk_1EC4BEC00, &unk_1CF9FCB60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      v31 = swift_allocError();
      *v32 = v47;
      *(v32 + 8) = v48;
      *(v32 + 16) = 0u;
      *(v32 + 32) = 0u;
      *(v32 + 48) = 0u;
      *(v32 + 64) = 0u;
      *(v32 + 80) = 0u;
      *(v32 + 96) = 0u;
      *(v32 + 112) = 0u;
      sub_1CF2A8DE0(v32);
      *v30 = v31;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v33 = v45;
      sub_1CEFDA05C(v20, v45, type metadata accessor for VFSItem);
      v34 = v49;
      sub_1CEFDA2E4(v33, v49, type metadata accessor for VFSItem);
      if ((v46 & 1) != 0 && (v35 = v33 + *(v10 + 28), (*(v35 + *(v44 + 64)) & 1) == 0))
      {
        v41 = v43;
        sub_1CEFDA2E4(v35, v43, type metadata accessor for ItemMetadata);
        sub_1CEFD5398(v33, type metadata accessor for VFSItem);
        v42 = *(v41 + *(v44 + 68));
        sub_1CEFD5398(v41, type metadata accessor for ItemMetadata);
        if (v42 == 2)
        {
          v36 = 1;
        }

        else
        {
          v36 = v42 ^ 1;
        }
      }

      else
      {
        sub_1CEFD5398(v33, type metadata accessor for VFSItem);
        v36 = 0;
      }

      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
      v38 = v51;
      *(v30 + v37[13]) = v51;
      sub_1CEFDA05C(v34, v30, type metadata accessor for VFSItem);
      *(v30 + v37[14]) = v36 & 1;
      *(v30 + v37[15]) = v50 & 1;
      (*(*(v37 - 1) + 56))(v30, 0, 1, v37);
      swift_storeEnumTagMultiPayload();
      v39 = v38;
    }

    sub_1CEFCCC44(v22, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }

  v54(v30);
  return sub_1CEFCCC44(v30, &qword_1EC4C5020, &qword_1CFA0A278);
}

void sub_1CF9072F8(void *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v78 = a5;
  v79 = a6;
  v80 = a1;
  v81 = a4;
  v8 = sub_1CF9E5CF8();
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v71 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  v22 = [objc_allocWithZone(FPLoggerScope) init];
  v23 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a3);
  sub_1CEFD09A0(a3);
  v87 = a2;
  v24 = v22;
  v25 = sub_1CF9E6108();
  v26 = sub_1CF9E7298();

  v27 = os_log_type_enabled(v25, v26);
  v85 = v11;
  v75 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v72 = v29;
    v86 = swift_slowAlloc();
    v88 = v86;
    *v28 = 138412802;
    v30 = [v24 enter];
    *(v28 + 4) = v30;
    *v29 = v30;
    *(v28 + 12) = 2080;
    v31 = v87;
    v32 = NSFileProviderItemIdentifier.description.getter();
    v34 = v33;

    v35 = sub_1CEFD0DF0(v32, v34, &v88);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2080;
    v36 = sub_1CF913458(a3);
    v38 = v37;
    sub_1CEFD0A98(a3);
    sub_1CEFD0A98(a3);
    v39 = sub_1CEFD0DF0(v36, v38, &v88);

    *(v28 + 24) = v39;
    _os_log_impl(&dword_1CEFC7000, v25, v26, "%@ 🥄 Request to propagate item with ID %s for %s", v28, 0x20u);
    v40 = v72;
    sub_1CEFCCC44(v72, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v40, -1, -1);
    v41 = v86;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v41, -1, -1);
    MEMORY[0x1D386CDC0](v28, -1, -1);

    v86 = *(v12 + 8);
    v42 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43 = v85;
    v86(v21, v85);
  }

  else
  {
    sub_1CEFD0A98(a3);
    sub_1CEFD0A98(a3);

    v86 = *(v12 + 8);
    v42 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v86(v21, v11);
    v43 = v11;
  }

  v44 = sub_1CF9042D0(a3, sub_1CF90C7D0, sub_1CF91591C);
  v46 = v45;
  v47 = fpfs_current_or_default_log();
  v48 = v77;
  sub_1CF9E6128();
  v49 = sub_1CF9E7298();
  v50 = sub_1CF19C478(v49, "propagation to FS", 17, 2, v78, v79);
  v52 = v51;
  v79 = v42;
  v86(v48, v43);
  v53 = v87;
  sub_1CF907AAC(v87, a3, v46, v50, v52);

  v54 = v80[4];
  __swift_project_boxed_opaque_existential_1(v80, v80[3]);
  sub_1CF033A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
  v55 = swift_allocObject();
  *(v55 + 16) = 0u;
  *(v55 + 32) = 0u;
  *(v55 + 48) = 1;
  *(v55 + 56) = 0u;
  *(v55 + 72) = 0u;
  *(v55 + 88) = 0;
  *(v55 + 120) = v44;
  *(v55 + 128) = v46;
  *(v55 + 136) = 0x800000;
  *(v55 + 144) = v53;
  *(v55 + 96) = xmmword_1CFA04E20;
  *(v55 + 112) = 0;
  v56 = v53;
  v57 = v82;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v59 = v58;
  (*(v83 + 8))(v57, v84);
  v60 = v59 * 1000000000.0;
  if (COERCE__INT64(fabs(v59 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v60 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v60 < 9.22337204e18)
  {
    v61 = v76;
    sub_1CF5215C0(v55);
    if (v61)
    {

      v62 = fpfs_current_or_default_log();
      v63 = v74;
      sub_1CF9E6128();
      v64 = v75;
      v65 = sub_1CF9E6108();
      v66 = sub_1CF9E7298();

      if (os_log_type_enabled(v65, v66))
      {
        goto LABEL_11;
      }
    }

    else
    {

      v67 = fpfs_current_or_default_log();
      v63 = v73;
      sub_1CF9E6128();
      v64 = v75;
      v65 = sub_1CF9E6108();
      v66 = sub_1CF9E7298();

      if (os_log_type_enabled(v65, v66))
      {
LABEL_11:
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v68 = 138412290;
        v70 = [v64 leave];
        *(v68 + 4) = v70;
        *v69 = v70;
        _os_log_impl(&dword_1CEFC7000, v65, v66, "%@", v68, 0xCu);
        sub_1CEFCCC44(v69, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v69, -1, -1);
        MEMORY[0x1D386CDC0](v68, -1, -1);
      }
    }

    v86(v63, v85);
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1CF907AAC(void *a1, unint64_t a2, unint64_t a3, void (*a4)(_OWORD *, id), uint64_t a5)
{
  v6 = v5;
  v104 = a4;
  v105 = a5;
  v100 = a3;
  v102 = a2;
  v103 = a1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE670, &qword_1CF9FE4D0);
  v97 = *(v101 - 8);
  v7 = *(v97 + 64);
  v8 = MEMORY[0x1EEE9AC00](v101);
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v95 = &v90 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v90 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v90 - v15;
  v16 = sub_1CF9E63D8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v96 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v90 - v21;
  v22 = sub_1CF9E6448();
  v98 = *(v22 - 8);
  v99 = v22;
  v23 = *(v98 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v90 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v92 = &v90 - v9;
  v30 = sub_1CF9E64A8();
  v31 = *(v30 - 1);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = (&v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(v6 + 64);
  *v34 = v35;
  (*(v31 + 104))(v34, *MEMORY[0x1E69E8020], v30);
  v36 = v35;
  v37 = sub_1CF9E64D8();
  v39 = *(v31 + 8);
  v38 = (v31 + 8);
  v39(v34, v30);
  if ((v37 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (*(v6 + 152) == 1)
  {
    v107 = 0;
    memset(v106, 0, sizeof(v106));
    v40 = FPDomainUnavailableError();
    v104(v106, v40);

    return sub_1CEFCCC44(v106, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v34 = qword_1EC4EBD70;
  swift_beginAccess();
  if (!*(*(v34 + v6) + 16) || (v42 = *(v34 + v6), , sub_1CEFE863C(v103), v44 = v43, , (v44 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C00, &qword_1CFA18A10);
    v48 = *(v97 + 72);
    v49 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1CF9FA450;
    v51 = (v50 + v49);
    qos_class_self();
    sub_1CF9E63B8();
    v52 = *(v17 + 48);
    v53 = v52(v14, 1, v16);
    v90 = v34;
    if (v53 == 1)
    {
      (*(v17 + 104))(v96, *MEMORY[0x1E69E7FA0], v16);
      if (v52(v14, 1, v16) != 1)
      {
        sub_1CEFCCC44(v14, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v17 + 32))(v96, v14, v16);
    }

    sub_1CF9E6428();
    v54 = v101;
    v55 = *(v101 + 64);
    v56 = v99;
    v57 = *(v98 + 32);
    v58 = v95;
    v57(&v95[v55], v26, v99);
    v59 = v102;
    v60 = v100;
    *v51 = v102;
    v51[1] = v60;
    v57(v51 + *(v54 + 64), &v58[v55], v56);
    v61 = (v51 + *(v54 + 80));
    v62 = swift_allocObject();
    v63 = v105;
    *(v62 + 16) = v104;
    *(v62 + 24) = v63;
    *v61 = sub_1CF9284B8;
    v61[1] = v62;
    v34 = v90;
    swift_beginAccess();

    sub_1CEFD09A0(v59);
    v64 = v103;
    v65 = *(v34 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = *(v34 + v6);
    *(v34 + v6) = 0x8000000000000000;
    sub_1CF1D348C(v50, v64, isUniquelyReferenced_nonNull_native);

    v67 = v108;
    goto LABEL_26;
  }

  qos_class_self();
  v45 = v93;
  sub_1CF9E63B8();
  v46 = *(v17 + 48);
  if (v46(v45, 1, v16) == 1)
  {
    (*(v17 + 104))(v91, *MEMORY[0x1E69E7FA0], v16);
    v47 = v46(v45, 1, v16);
    v38 = v92;
    if (v47 != 1)
    {
      sub_1CEFCCC44(v45, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v17 + 32))(v91, v45, v16);
    v38 = v92;
  }

  sub_1CF9E6428();
  v68 = v101;
  v69 = *(v101 + 64);
  v70 = *(v98 + 32);
  v71 = v94;
  v72 = v29;
  v73 = v99;
  v70(&v94[v69], v72, v99);
  v74 = v102;
  v75 = v100;
  *v38 = v102;
  v38[1] = v75;
  v70(v38 + *(v68 + 64), &v71[v69], v73);
  v76 = (v38 + *(v68 + 80));
  v77 = swift_allocObject();
  v78 = v105;
  *(v77 + 16) = v104;
  *(v77 + 24) = v78;
  *v76 = sub_1CF9284B8;
  v76[1] = v77;
  swift_beginAccess();

  sub_1CEFD09A0(v74);
  v79 = *(v34 + v6);
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *(v34 + v6);
  v30 = v108;
  *(v34 + v6) = 0x8000000000000000;
  v37 = sub_1CEFE863C(v103);
  v82 = v30[2];
  v83 = (v81 & 1) == 0;
  v84 = v82 + v83;
  if (__OFADD__(v82, v83))
  {
    goto LABEL_28;
  }

  v85 = v81;
  if (v30[3] >= v84)
  {
    if (v80)
    {
      if (v81)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1CF7D2808();
      if (v85)
      {
        goto LABEL_22;
      }
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_1CF7CA84C(v84, v80);
  v86 = sub_1CEFE863C(v103);
  if ((v85 & 1) == (v87 & 1))
  {
    v37 = v86;
    if ((v85 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_22:
    v30 = *(v108[7] + 8 * v37);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_23:
      v89 = v30[2];
      v88 = v30[3];
      if (v89 >= v88 >> 1)
      {
        v30 = sub_1CF1F7BFC(v88 > 1, v89 + 1, 1, v30);
      }

      v30[2] = v89 + 1;
      sub_1CEFE55D0(v38, v30 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v89, &qword_1EC4BE670, &qword_1CF9FE4D0);
      v67 = v108;
      *(v108[7] + 8 * v37) = v30;
LABEL_26:
      *(v34 + v6) = v67;
      return swift_endAccess();
    }

LABEL_29:
    v30 = sub_1CF1F7BFC(0, v30[2] + 1, 1, v30);
    goto LABEL_23;
  }

LABEL_32:
  type metadata accessor for NSFileProviderItemIdentifier(0);
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

void sub_1CF908418(void *a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v82 = a6;
  v83 = a7;
  v88 = a5;
  v90 = a3;
  v84 = a1;
  v9 = sub_1CF9E5CF8();
  v86 = *(v9 - 8);
  v87 = v9;
  v10 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v77 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v76 = &v74 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v81 = &v74 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v74 - v21;
  v23 = [objc_allocWithZone(FPLoggerScope) init];
  v24 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);
  v25 = v23;
  v26 = sub_1CF9E6108();
  v27 = sub_1CF9E7298();

  v28 = os_log_type_enabled(v26, v27);
  v89 = v12;
  v78 = v25;
  v80 = a2;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v93 = v75;
    *v29 = 138412802;
    v31 = [v25 enter];
    *(v29 + 4) = v31;
    *v30 = v31;
    *(v29 + 12) = 2080;
    v91 = a2;
    v92 = v90;
    v33 = VFSItemID.description.getter(v31, v32);
    v35 = sub_1CEFD0DF0(v33, v34, &v93);

    *(v29 + 14) = v35;
    *(v29 + 22) = 2080;
    v36 = sub_1CEFD11AC(a4);
    v38 = v37;
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);
    v39 = sub_1CEFD0DF0(v36, v38, &v93);

    *(v29 + 24) = v39;
    _os_log_impl(&dword_1CEFC7000, v26, v27, "%@ 🥄 Request to propagate item with ID %s for %s", v29, 0x20u);
    sub_1CEFCCC44(v30, &qword_1EC4BE350, &unk_1CF9FC3B0);
    v40 = v30;
    v12 = v89;
    MEMORY[0x1D386CDC0](v40, -1, -1);
    v41 = v75;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v41, -1, -1);
    MEMORY[0x1D386CDC0](v29, -1, -1);
  }

  else
  {
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);
  }

  v42 = *(v13 + 8);
  v43 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42(v22, v12);
  v44 = v42;
  v45 = sub_1CF9042D0(a4, sub_1CF90C94C, sub_1CF915948);
  v47 = v46;
  v48 = fpfs_current_or_default_log();
  v49 = v81;
  sub_1CF9E6128();
  v50 = sub_1CF9E7298();
  v51 = sub_1CF19C478(v50, "propagation to FP", 17, 2, v82, v83);
  v53 = v52;
  v82 = v43;
  v83 = v44;
  v44(v49, v12);
  v54 = v80;
  LOBYTE(v43) = v90;
  sub_1CF90467C(v80, v90, a4, v47, v51, v53);

  v55 = v84[3];
  v81 = v84[4];
  __swift_project_boxed_opaque_existential_1(v84, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
  v56 = swift_allocObject();
  *(v56 + 152) = v43;
  *(v56 + 16) = 0u;
  *(v56 + 32) = 0u;
  *(v56 + 48) = 1;
  *(v56 + 56) = 0u;
  *(v56 + 72) = 0u;
  *(v56 + 88) = 0;
  *(v56 + 120) = v45;
  *(v56 + 128) = v47;
  *(v56 + 136) = 0x800000;
  *(v56 + 144) = v54;
  *(v56 + 96) = xmmword_1CFA04E20;
  *(v56 + 112) = 0;
  v57 = v85;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v59 = v58;
  (*(v86 + 8))(v57, v87);
  v60 = v59 * 1000000000.0;
  if (COERCE__INT64(fabs(v59 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v60 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v60 < 9.22337204e18)
  {
    v61 = v79;
    sub_1CF5215C0(v56);
    if (v61)
    {

      v62 = fpfs_current_or_default_log();
      v63 = v77;
      sub_1CF9E6128();
      v64 = v78;
      v65 = sub_1CF9E6108();
      v66 = sub_1CF9E7298();

      v67 = os_log_type_enabled(v65, v66);
      v68 = v83;
      if (v67)
      {
        goto LABEL_11;
      }
    }

    else
    {

      v69 = fpfs_current_or_default_log();
      v63 = v76;
      sub_1CF9E6128();
      v64 = v78;
      v65 = sub_1CF9E6108();
      v66 = sub_1CF9E7298();

      v70 = os_log_type_enabled(v65, v66);
      v68 = v83;
      if (v70)
      {
LABEL_11:
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v71 = 138412290;
        v73 = [v64 leave];
        *(v71 + 4) = v73;
        *v72 = v73;
        _os_log_impl(&dword_1CEFC7000, v65, v66, "%@", v71, 0xCu);
        sub_1CEFCCC44(v72, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v72, -1, -1);
        MEMORY[0x1D386CDC0](v71, -1, -1);
      }
    }

    v68(v63, v89);
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1CF908B8C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t), void *a5, int a6, void *a7, int a8, char a9)
{
  v230 = a8;
  v248 = a7;
  v214 = a6;
  v245 = a4;
  v246 = a5;
  v249 = a2;
  v222 = sub_1CF9E63D8();
  v221 = *(v222 - 8);
  v11 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v222);
  v220 = &v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v219 = &v209 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v238 = (&v209 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v227 = &v209 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v239 = &v209 - v21;
  v247 = sub_1CF9E6068();
  v232 = *(v247 - 1);
  v22 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v247);
  v217 = &v209 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v225 = &v209 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v215 = &v209 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v228 = &v209 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v223 = &v209 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v235 = &v209 - v34;
  v231 = type metadata accessor for Signpost(0);
  v233 = *(v231 - 8);
  v35 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v231);
  v218 = &v209 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v216 = &v209 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v229 = &v209 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v226 = &v209 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v224 = &v209 - v44;
  v234 = v45;
  MEMORY[0x1EEE9AC00](v46);
  v236 = &v209 - v47;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v241 = *(v243 - 8);
  v48 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v243);
  v50 = (&v209 - v49);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v242 = &v209 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v240 = &v209 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v209 - v57;
  v59 = sub_1CF9E6118();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v209 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v244 = a1;
  v65 = v249;
  sub_1CEFCCBDC(a1, v58, &qword_1EC4C5020, &qword_1CFA0A278);
  sub_1CEFD09A0(a3);
  sub_1CEFD09A0(a3);

  v66 = sub_1CF9E6108();
  v67 = sub_1CF9E7298();
  if (os_log_type_enabled(v66, v67))
  {
    v210 = v67;
    v211 = v60;
    v212 = v59;
    v213 = a3;
    v237 = v50;
    v68 = swift_slowAlloc();
    v209 = swift_slowAlloc();
    v250 = v209;
    *v68 = 136315650;
    v69 = swift_beginAccess();
    v71 = *(v65 + 32);
    v72 = *(v65 + 40);
    if (*(v65 + 41))
    {
      v73 = v71;
      v74 = NSFileProviderItemIdentifier.description.getter();
      v76 = v75;
      sub_1CEFD0994(v71, v72, 1);
    }

    else
    {
      *&aBlock = *(v65 + 32);
      BYTE8(aBlock) = v72;
      v74 = VFSItemID.description.getter(v69, v70);
      v76 = v78;
    }

    v79 = sub_1CEFD0DF0(v74, v76, &v250);

    *(v68 + 4) = v79;
    *(v68 + 12) = 2080;
    a3 = v213;
    v80 = sub_1CF913458(v213);
    v82 = v81;
    sub_1CEFD0A98(a3);
    sub_1CEFD0A98(a3);
    v83 = sub_1CEFD0DF0(v80, v82, &v250);

    *(v68 + 14) = v83;
    *(v68 + 22) = 2080;
    sub_1CEFCCBDC(v58, v240, &qword_1EC4C5020, &qword_1CFA0A278);
    v84 = sub_1CF9E6948();
    v86 = v85;
    sub_1CEFCCC44(v58, &qword_1EC4C5020, &qword_1CFA0A278);
    v87 = sub_1CEFD0DF0(v84, v86, &v250);

    *(v68 + 24) = v87;
    _os_log_impl(&dword_1CEFC7000, v66, v210, "finished VFS item lookup for %s request %s: %s", v68, 0x20u);
    v88 = v209;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v88, -1, -1);
    MEMORY[0x1D386CDC0](v68, -1, -1);

    (*(v211 + 8))(v63, v212);
    v77 = v248;
    v65 = v249;
    v50 = v237;
  }

  else
  {
    sub_1CEFD0A98(a3);

    sub_1CEFD0A98(a3);

    sub_1CEFCCC44(v58, &qword_1EC4C5020, &qword_1CFA0A278);
    (*(v60 + 8))(v63, v59);
    v77 = v248;
  }

  v89 = v244;
  v90 = v242;
  sub_1CEFCCBDC(v244, v242, &qword_1EC4C5020, &qword_1CFA0A278);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v92 = v247;
  v93 = v243;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1CEFCCC44(v90, &qword_1EC4C5020, &qword_1CFA0A278);
    return v245(v89);
  }

  if ((*(v241 + 48))(v90, 1, v243) == 1)
  {
    if ((*(v65 + 25) & 1) == 0)
    {
      return v245(v89);
    }

    v95 = *(v65 + 16);
    v96 = *(v65 + 24);
    v97 = swift_allocObject();
    *(v97 + 16) = v65;
    *(v97 + 24) = a3;
    v98 = v246;
    *(v97 + 32) = v245;
    *(v97 + 40) = v98;
    *(v97 + 48) = v77;
    *(v97 + 56) = v230 & 1;
    *(v97 + 57) = a9 & 1;
    v99 = swift_allocObject();
    v99[2] = v95;
    v99[3] = a3;
    v99[4] = v77;
    v99[5] = sub_1CF92705C;
    v243 = v99;
    v99[6] = v97;
    v100 = swift_allocObject();
    *(v100 + 16) = sub_1CF92705C;
    *(v100 + 24) = v97;
    v249 = v100;
    v101 = *(v77 + qword_1EDEBBC38);
    sub_1CEFD09A0(a3);

    sub_1CEFD0988(v95, v96, 1);

    sub_1CEFD09A0(a3);

    v245 = v95;
    LODWORD(v246) = v96;
    sub_1CEFD0988(v95, v96, 1);
    v244 = v97;

    v242 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v102 = qword_1EDEBBE40;
    v103 = v232;
    v104 = v228;
    (*(v232 + 56))(v228, 1, 1, v92);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v105 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v105);

    v106 = *(&aBlock + 1);
    v241 = aBlock;
    v107 = v104;
    v108 = v215;
    sub_1CEFCCBDC(v107, v215, &unk_1EC4BED20, &unk_1CFA00700);
    v109 = *(v103 + 48);
    if (v109(v108, 1, v92) == 1)
    {
      v110 = v102;
      v111 = v217;
      sub_1CF9E6048();
      if (v109(v108, 1, v92) != 1)
      {
        sub_1CEFCCC44(v108, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v111 = v217;
      (*(v103 + 32))(v217, v108, v92);
    }

    v171 = v229;
    (*(v103 + 16))(v229, v111, v92);
    v172 = v231;
    *(v171 + *(v231 + 20)) = v102;
    v173 = v171 + *(v172 + 24);
    *v173 = "DB queue wait";
    *(v173 + 8) = 13;
    *(v173 + 16) = 2;
    v174 = v102;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v175 = swift_allocObject();
    *(v175 + 16) = xmmword_1CF9FA450;
    *(v175 + 56) = MEMORY[0x1E69E6158];
    *(v175 + 64) = sub_1CEFD51C4();
    *(v175 + 32) = v241;
    *(v175 + 40) = v106;
    sub_1CF9E6028();

    (*(v103 + 8))(v111, v92);
    sub_1CEFCCC44(v228, &unk_1EC4BED20, &unk_1CFA00700);
    v241 = v77[21];
    v247 = v77[8];
    v239 = sub_1CF9E6448();
    v240 = *(v239 - 8);
    (*(v240 + 56))(v238, 1, 1, v239);
    v176 = v216;
    sub_1CEFDA2E4(v171, v216, type metadata accessor for Signpost);
    v177 = (*(v233 + 80) + 16) & ~*(v233 + 80);
    v178 = (v234 + v177 + 7) & 0xFFFFFFFFFFFFFFF8;
    v179 = swift_allocObject();
    sub_1CEFDA05C(v176, v179 + v177, type metadata accessor for Signpost);
    v180 = (v179 + v178);
    v237 = sub_1CF928480;
    v181 = v249;
    *v180 = sub_1CF928480;
    v180[1] = v181;
    v182 = v171;
    v183 = v218;
    sub_1CEFDA2E4(v182, v218, type metadata accessor for Signpost);
    v184 = (v178 + 23) & 0xFFFFFFFFFFFFFFF8;
    v185 = (v184 + 15) & 0xFFFFFFFFFFFFFFF8;
    v186 = (v185 + 25) & 0xFFFFFFFFFFFFFFF8;
    v187 = swift_allocObject();
    v188 = v240;
    sub_1CEFDA05C(v183, v187 + v177, type metadata accessor for Signpost);
    v189 = (v187 + v178);
    *v189 = sub_1CF045408;
    v189[1] = 0;
    v190 = v249;
    *(v187 + v184) = v248;
    v191 = v187 + v185;
    *v191 = "propagateToFS(itemID:request:completion:)";
    *(v191 + 8) = 41;
    *(v191 + 16) = 2;
    v192 = (v187 + v186);
    *v192 = v237;
    v192[1] = v190;
    v193 = (v187 + ((v186 + 23) & 0xFFFFFFFFFFFFFFF8));
    v194 = v243;
    *v193 = sub_1CF927074;
    v193[1] = v194;
    v195 = swift_allocObject();
    v195[2] = sub_1CF75C120;
    v195[3] = v179;
    v196 = v241;
    v195[4] = v241;
    swift_retain_n();

    v197 = v196;

    v198 = fpfs_current_log();
    v248 = *(v197 + 16);
    v199 = v219;
    sub_1CEFCCBDC(v238, v219, &unk_1EC4BE370, qword_1CFA01B30);
    v200 = v239;
    if ((*(v188 + 48))(v199, 1) == 1)
    {
      sub_1CEFCCC44(v199, &unk_1EC4BE370, qword_1CFA01B30);
      v201 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v202 = v220;
      sub_1CF9E6438();
      (*(v188 + 8))(v199, v200);
      v201 = sub_1CF9E63C8();
      (*(v221 + 8))(v202, v222);
    }

    v203 = swift_allocObject();
    v203[2] = v198;
    v203[3] = sub_1CF4858EC;
    v203[4] = v187;
    v254 = sub_1CF2BA17C;
    v255 = v203;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v252 = sub_1CEFCA444;
    v253 = &block_descriptor_311_0;
    v204 = _Block_copy(&aBlock);
    v205 = v198;

    v254 = sub_1CF2BA180;
    v255 = v195;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v252 = sub_1CEFCA444;
    v253 = &block_descriptor_314;
    v206 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v248, v247, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v201, v204, v206);
    _Block_release(v206);
    _Block_release(v204);

    sub_1CEFCCC44(v238, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5398(v229, type metadata accessor for Signpost);
    v207 = v242;
    v208 = fpfs_adopt_log();

    sub_1CEFD0994(v245, v246, 1);
  }

  else
  {
    sub_1CEFE55D0(v90, v50, &qword_1EC4C5220, &qword_1CFA0A270);
    if ((*(v50 + *(v93 + 56)) & 1) != 0 || (v214 & 1) != 0 && !*(v50 + *(v93 + 52)))
    {
      v112 = *v50;
      v113 = *(v50 + 8);
      if (((a3 >> 58) & 0x3C | (a3 >> 1) & 3) == 0x1E)
      {
        v114 = *((a3 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v115 = v114;
      }

      else
      {
        v117 = swift_allocObject();
        *(v117 + 16) = a3;
        v115 = v117 | 0x7000000000000004;
        v114 = a3;
      }

      v237 = v50;
      sub_1CEFD09A0(v114);
      v118 = swift_allocObject();
      *(v118 + 16) = v65;
      *(v118 + 24) = a3;
      v119 = v246;
      *(v118 + 32) = v245;
      *(v118 + 40) = v119;
      *(v118 + 48) = v77;
      *(v118 + 56) = v230 & 1;
      *(v118 + 57) = a9 & 1;
      v120 = swift_allocObject();
      *(v120 + 16) = v112;
      *(v120 + 24) = v113;
      *(v120 + 32) = v115;
      *(v120 + 40) = v77;
      *(v120 + 48) = sub_1CF927140;
      *(v120 + 56) = v118;
      v243 = v120;
      v121 = swift_allocObject();
      *(v121 + 16) = sub_1CF927140;
      *(v121 + 24) = v118;
      v249 = v121;
      v122 = *(v77 + qword_1EDEBBC38);

      sub_1CEFD09A0(a3);

      v245 = v118;

      sub_1CEFD09A0(v115);
      v246 = fpfs_adopt_log();
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v123 = qword_1EDEBBE40;
      v124 = v232;
      v125 = v235;
      (*(v232 + 56))(v235, 1, 1, v92);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v126 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v126);

      v127 = *(&aBlock + 1);
      v242 = aBlock;
      v128 = v223;
      sub_1CEFCCBDC(v125, v223, &unk_1EC4BED20, &unk_1CFA00700);
      v129 = *(v124 + 48);
      v130 = v129(v128, 1, v92);
      v244 = v115;
      if (v130 == 1)
      {
        v131 = v123;
        v132 = v225;
        sub_1CF9E6048();
        if (v129(v128, 1, v92) != 1)
        {
          sub_1CEFCCC44(v128, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        v132 = v225;
        (*(v124 + 32))(v225, v128, v92);
      }

      v133 = v236;
      (*(v124 + 16))(v236, v132, v92);
      v134 = v231;
      *(v133 + *(v231 + 20)) = v123;
      v135 = v133 + *(v134 + 24);
      *v135 = "DB queue wait";
      *(v135 + 8) = 13;
      *(v135 + 16) = 2;
      v136 = v123;
      sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v137 = swift_allocObject();
      *(v137 + 16) = xmmword_1CF9FA450;
      *(v137 + 56) = MEMORY[0x1E69E6158];
      *(v137 + 64) = sub_1CEFD51C4();
      *(v137 + 32) = v242;
      *(v137 + 40) = v127;
      sub_1CF9E6028();

      (*(v124 + 8))(v132, v92);
      sub_1CEFCCC44(v235, &unk_1EC4BED20, &unk_1CFA00700);
      v242 = v77[21];
      v247 = v77[8];
      v240 = sub_1CF9E6448();
      v241 = *(v240 - 8);
      (*(v241 + 56))(v239, 1, 1, v240);
      v138 = v224;
      sub_1CEFDA2E4(v133, v224, type metadata accessor for Signpost);
      v139 = (*(v233 + 80) + 16) & ~*(v233 + 80);
      v140 = (v234 + v139 + 7) & 0xFFFFFFFFFFFFFFF8;
      v141 = swift_allocObject();
      sub_1CEFDA05C(v138, &v141[v139], type metadata accessor for Signpost);
      v142 = &v141[v140];
      v238 = sub_1CF928480;
      v143 = v249;
      *v142 = sub_1CF928480;
      *(v142 + 1) = v143;
      v144 = v226;
      sub_1CEFDA2E4(v133, v226, type metadata accessor for Signpost);
      v145 = (v140 + 23) & 0xFFFFFFFFFFFFFFF8;
      v146 = (v145 + 15) & 0xFFFFFFFFFFFFFFF8;
      v147 = (v146 + 25) & 0xFFFFFFFFFFFFFFF8;
      v148 = swift_allocObject();
      v149 = v144;
      v150 = v240;
      sub_1CEFDA05C(v149, v148 + v139, type metadata accessor for Signpost);
      v151 = (v148 + v140);
      *v151 = sub_1CF045408;
      v151[1] = 0;
      *(v148 + v145) = v248;
      v152 = v148 + v146;
      *v152 = "propagateToFP(itemID:request:completion:)";
      *(v152 + 8) = 41;
      *(v152 + 16) = 2;
      v153 = (v148 + v147);
      v154 = v249;
      *v153 = v238;
      v153[1] = v154;
      v155 = (v148 + ((v147 + 23) & 0xFFFFFFFFFFFFFFF8));
      v156 = v243;
      *v155 = sub_1CF928484;
      v155[1] = v156;
      v157 = swift_allocObject();
      v157[2] = sub_1CF75C120;
      v157[3] = v141;
      v158 = v242;
      v157[4] = v242;
      swift_retain_n();

      v248 = v141;
      v159 = v241;

      v160 = fpfs_current_log();
      v242 = *(v158 + 2);
      v161 = v227;
      sub_1CEFCCBDC(v239, v227, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v159 + 48))(v161, 1, v150) == 1)
      {
        sub_1CEFCCC44(v161, &unk_1EC4BE370, qword_1CFA01B30);
        v162 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v163 = v220;
        sub_1CF9E6438();
        (*(v159 + 8))(v161, v150);
        v162 = sub_1CF9E63C8();
        (*(v221 + 8))(v163, v222);
      }

      v164 = v244;
      v165 = swift_allocObject();
      v165[2] = v160;
      v165[3] = sub_1CF4858EC;
      v165[4] = v148;
      v254 = sub_1CF2BA17C;
      v255 = v165;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v252 = sub_1CEFCA444;
      v253 = &block_descriptor_347;
      v166 = _Block_copy(&aBlock);
      v167 = v160;

      v254 = sub_1CF2BA180;
      v255 = v157;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v252 = sub_1CEFCA444;
      v253 = &block_descriptor_350;
      v168 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v242, v247, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v162, v166, v168);
      _Block_release(v168);
      _Block_release(v166);

      sub_1CEFCCC44(v239, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5398(v236, type metadata accessor for Signpost);
      v169 = v246;
      v170 = fpfs_adopt_log();

      sub_1CEFD0A98(v164);
      v116 = v237;
    }

    else
    {
      v245(v89);
      v116 = v50;
    }

    return sub_1CEFCCC44(v116, &qword_1EC4C5220, &qword_1CFA0A270);
  }
}

uint64_t sub_1CF90A844(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, int a8, char a9)
{
  v64 = a8;
  v65 = a6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v14 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v63 = (&v56 - v15);
  v16 = sub_1CF9E6118();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);

  v22 = a2;
  v23 = sub_1CF9E6108();
  v24 = sub_1CF9E7298();

  if (os_log_type_enabled(v23, v24))
  {
    v57 = v24;
    v58 = v17;
    v59 = v16;
    v60 = a5;
    v61 = a7;
    v25 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v68 = v56;
    *v25 = 136315650;
    v26 = swift_beginAccess();
    v28 = *(a3 + 32);
    v29 = *(a3 + 40);
    if (*(a3 + 41))
    {
      v30 = v28;
      v31 = NSFileProviderItemIdentifier.description.getter();
      v33 = v32;
      sub_1CEFD0994(v28, v29, 1);
    }

    else
    {
      v66 = *(a3 + 32);
      v67 = v29;
      v31 = VFSItemID.description.getter(v26, v27);
      v33 = v34;
    }

    v35 = sub_1CEFD0DF0(v31, v33, &v68);

    *(v25 + 4) = v35;
    *(v25 + 12) = 2080;
    v36 = sub_1CF913458(a4);
    v38 = v37;
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);
    v39 = sub_1CEFD0DF0(v36, v38, &v68);

    *(v25 + 14) = v39;
    *(v25 + 22) = 2080;
    v66 = a2;
    v40 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v41 = sub_1CF9E6948();
    v43 = sub_1CEFD0DF0(v41, v42, &v68);

    *(v25 + 24) = v43;
    _os_log_impl(&dword_1CEFC7000, v23, v57, "finished propagating to FP %s request %s: %s", v25, 0x20u);
    v44 = v56;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v44, -1, -1);
    MEMORY[0x1D386CDC0](v25, -1, -1);

    (*(v58 + 8))(v20, v59);
    a5 = v60;
    a7 = v61;
  }

  else
  {
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);

    (*(v17 + 8))(v20, v16);
  }

  v45 = v65;
  v46 = v64;
  if (a2)
  {
    v47 = v63;
    *v63 = a2;
    swift_storeEnumTagMultiPayload();
    v48 = a2;
    a5(v47);
    return sub_1CEFCCC44(v47, &qword_1EC4C5020, &qword_1CFA0A278);
  }

  else
  {
    v50 = swift_allocObject();
    v51 = a5;
    v52 = v50;
    v50[2] = a3;
    v50[3] = a4;
    v50[4] = v51;
    v50[5] = v45;
    v53 = swift_allocObject();
    *(v53 + 16) = a3;
    *(v53 + 24) = a7;
    *(v53 + 32) = a9 & 1;
    *(v53 + 33) = v46 & 1;
    *(v53 + 40) = sub_1CF9271C0;
    *(v53 + 48) = v52;
    *(v53 + 56) = a4;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_1CF9271C0;
    *(v54 + 24) = v52;
    v55 = *(*a7 + 472);

    sub_1CEFD09A0(a4);

    sub_1CEFD09A0(a4);

    v55("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v54, sub_1CF796A9C, v53);
  }
}

uint64_t sub_1CF90AD9C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, int a8, char a9)
{
  v64 = a8;
  v65 = a6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v14 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v63 = (&v56 - v15);
  v16 = sub_1CF9E6118();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);

  v22 = a2;
  v23 = sub_1CF9E6108();
  v24 = sub_1CF9E7298();

  if (os_log_type_enabled(v23, v24))
  {
    v57 = v24;
    v58 = v17;
    v59 = v16;
    v60 = a5;
    v61 = a7;
    v25 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v68 = v56;
    *v25 = 136315650;
    v26 = swift_beginAccess();
    v28 = *(a3 + 32);
    v29 = *(a3 + 40);
    if (*(a3 + 41))
    {
      v30 = v28;
      v31 = NSFileProviderItemIdentifier.description.getter();
      v33 = v32;
      sub_1CEFD0994(v28, v29, 1);
    }

    else
    {
      v66 = *(a3 + 32);
      v67 = v29;
      v31 = VFSItemID.description.getter(v26, v27);
      v33 = v34;
    }

    v35 = sub_1CEFD0DF0(v31, v33, &v68);

    *(v25 + 4) = v35;
    *(v25 + 12) = 2080;
    v36 = sub_1CF913458(a4);
    v38 = v37;
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);
    v39 = sub_1CEFD0DF0(v36, v38, &v68);

    *(v25 + 14) = v39;
    *(v25 + 22) = 2080;
    v66 = a2;
    v40 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v41 = sub_1CF9E6948();
    v43 = sub_1CEFD0DF0(v41, v42, &v68);

    *(v25 + 24) = v43;
    _os_log_impl(&dword_1CEFC7000, v23, v57, "finished propagating to FS %s request %s: %s", v25, 0x20u);
    v44 = v56;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v44, -1, -1);
    MEMORY[0x1D386CDC0](v25, -1, -1);

    (*(v58 + 8))(v20, v59);
    a5 = v60;
    a7 = v61;
  }

  else
  {
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);

    (*(v17 + 8))(v20, v16);
  }

  v45 = v65;
  v46 = v64;
  if (a2)
  {
    v47 = v63;
    *v63 = a2;
    swift_storeEnumTagMultiPayload();
    v48 = a2;
    a5(v47);
    return sub_1CEFCCC44(v47, &qword_1EC4C5020, &qword_1CFA0A278);
  }

  else
  {
    *(a3 + 42) = 0;
    v50 = swift_allocObject();
    v51 = a5;
    v52 = v50;
    v50[2] = a3;
    v50[3] = a4;
    v50[4] = v51;
    v50[5] = v45;
    v53 = swift_allocObject();
    *(v53 + 16) = a3;
    *(v53 + 24) = a7;
    *(v53 + 32) = a9 & 1;
    *(v53 + 33) = v46 & 1;
    *(v53 + 40) = sub_1CF9271E8;
    *(v53 + 48) = v52;
    *(v53 + 56) = a4;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_1CF9271E8;
    *(v54 + 24) = v52;
    v55 = *(*a7 + 472);

    sub_1CEFD09A0(a4);

    sub_1CEFD09A0(a4);

    v55("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v54, sub_1CF796A9C, v53);
  }
}

uint64_t sub_1CF90B2F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5, const char *a6)
{
  v56 = a6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  v16 = sub_1CF9E6118();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(a1, v15, &qword_1EC4C5020, &qword_1CFA0A278);
  sub_1CEFD09A0(a3);
  sub_1CEFD09A0(a3);

  v22 = sub_1CF9E6108();
  v53 = sub_1CF9E7298();
  if (os_log_type_enabled(v22, v53))
  {
    v47 = v22;
    v48 = v17;
    v49 = v16;
    v50 = a1;
    v51 = a5;
    v52 = a4;
    v23 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v59 = v46;
    *v23 = 136315650;
    v24 = swift_beginAccess();
    v26 = *(a2 + 32);
    v27 = *(a2 + 40);
    if (*(a2 + 41))
    {
      v28 = v26;
      v29 = NSFileProviderItemIdentifier.description.getter();
      v31 = v30;
      sub_1CEFD0994(v26, v27, 1);
    }

    else
    {
      v57 = *(a2 + 32);
      v58 = v27;
      v29 = VFSItemID.description.getter(v24, v25);
      v31 = v32;
    }

    v33 = sub_1CEFD0DF0(v29, v31, &v59);

    *(v23 + 4) = v33;
    *(v23 + 12) = 2080;
    v34 = sub_1CF913458(a3);
    v36 = v35;
    sub_1CEFD0A98(a3);
    sub_1CEFD0A98(a3);
    v37 = sub_1CEFD0DF0(v34, v36, &v59);

    *(v23 + 14) = v37;
    *(v23 + 22) = 2080;
    sub_1CEFCCBDC(v15, v54, &qword_1EC4C5020, &qword_1CFA0A278);
    v38 = sub_1CF9E6948();
    v40 = v39;
    sub_1CEFCCC44(v15, &qword_1EC4C5020, &qword_1CFA0A278);
    v41 = sub_1CEFD0DF0(v38, v40, &v59);

    *(v23 + 24) = v41;
    v42 = v47;
    _os_log_impl(&dword_1CEFC7000, v47, v53, v56, v23, 0x20u);
    v43 = v46;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v43, -1, -1);
    MEMORY[0x1D386CDC0](v23, -1, -1);

    (*(v48 + 8))(v20, v49);
    a4 = v52;
    a1 = v50;
  }

  else
  {
    sub_1CEFD0A98(a3);

    sub_1CEFD0A98(a3);

    sub_1CEFCCC44(v15, &qword_1EC4C5020, &qword_1CFA0A278);
    (*(v17 + 8))(v20, v16);
  }

  return a4(a1);
}

void sub_1CF90B718(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  LODWORD(v87) = a4;
  v86 = a3;
  v4 = sub_1CF9E63D8();
  v85 = *(v4 - 8);
  v5 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v78 - v11;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v78 - v22;
  v24 = type metadata accessor for Signpost(0);
  v88 = *(v24 - 8);
  v25 = *(v88 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v90 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v89 = (&v78 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v93 = &v78 - v29;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      v33 = v32;
      v78 = v4;
      v34 = swift_allocObject();
      v35 = v86;
      *(v34 + 16) = v31;
      *(v34 + 24) = v35;
      *(v34 + 32) = v87;
      v83 = v34;
      *(v34 + 40) = v33;
      v36 = *(v31 + qword_1EDEBBC38);
      v92 = v31;

      v87 = v33;
      v86 = fpfs_adopt_log();
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v37 = qword_1EDEBBE40;
      (*(v13 + 56))(v23, 1, 1, v12);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v38 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v38);

      v81 = *(&aBlock + 1);
      v82 = aBlock;
      sub_1CEFCCBDC(v23, v21, &unk_1EC4BED20, &unk_1CFA00700);
      v39 = *(v13 + 48);
      if (v39(v21, 1, v12) == 1)
      {
        v40 = v37;
        sub_1CF9E6048();
        v41 = v16;
        if (v39(v21, 1, v12) != 1)
        {
          sub_1CEFCCC44(v21, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        v41 = v16;
        (*(v13 + 32))(v16, v21, v12);
      }

      v42 = v93;
      (*(v13 + 16))(v93, v41, v12);
      *(v42 + *(v24 + 20)) = v37;
      v43 = v42 + *(v24 + 24);
      *v43 = "DB queue wait";
      *(v43 + 8) = 13;
      *(v43 + 16) = 2;
      v44 = v37;
      sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1CF9FA450;
      *(v45 + 56) = MEMORY[0x1E69E6158];
      *(v45 + 64) = sub_1CEFD51C4();
      v46 = v81;
      *(v45 + 32) = v82;
      *(v45 + 40) = v46;
      sub_1CF9E6028();

      (*(v13 + 8))(v41, v12);
      sub_1CEFCCC44(v23, &unk_1EC4BED20, &unk_1CFA00700);
      v81 = *(v92 + 168);
      v82 = *(v92 + 64);
      v80 = sub_1CF9E6448();
      v79 = *(v80 - 8);
      (*(v79 + 56))(v94, 1, 1, v80);
      v47 = v89;
      sub_1CEFDA2E4(v42, v89, type metadata accessor for Signpost);
      v48 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v49 = (v25 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      sub_1CEFDA05C(v47, v50 + v48, type metadata accessor for Signpost);
      v51 = (v50 + v49);
      v89 = nullsub_1;
      *v51 = nullsub_1;
      v51[1] = 0;
      v52 = v90;
      sub_1CEFDA2E4(v42, v90, type metadata accessor for Signpost);
      v53 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
      v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
      v55 = (v54 + 25) & 0xFFFFFFFFFFFFFFF8;
      v56 = swift_allocObject();
      v57 = v79;
      sub_1CEFDA05C(v52, v56 + v48, type metadata accessor for Signpost);
      v58 = (v56 + v49);
      v59 = v92;
      *v58 = sub_1CF045408;
      v58[1] = 0;
      *(v56 + v53) = v59;
      v60 = v56 + v54;
      *v60 = "materialize(_:request:options:qos:completion:)";
      *(v60 + 8) = 46;
      *(v60 + 16) = 2;
      v61 = (v56 + v55);
      *v61 = v89;
      v61[1] = 0;
      v62 = (v56 + ((v55 + 23) & 0xFFFFFFFFFFFFFFF8));
      v63 = v83;
      *v62 = sub_1CF552D20;
      v62[1] = v63;
      v64 = swift_allocObject();
      v64[2] = sub_1CF75C120;
      v64[3] = v50;
      v65 = v81;
      v64[4] = v81;
      v66 = v80;

      v90 = v50;

      v67 = fpfs_current_log();
      v68 = *(v65 + 16);
      v69 = v91;
      sub_1CEFCCBDC(v94, v91, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v57 + 48))(v69, 1, v66) == 1)
      {
        sub_1CEFCCC44(v69, &unk_1EC4BE370, qword_1CFA01B30);
        v70 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v71 = v84;
        sub_1CF9E6438();
        (*(v57 + 8))(v69, v66);
        v70 = sub_1CF9E63C8();
        (*(v85 + 8))(v71, v78);
      }

      v72 = swift_allocObject();
      v72[2] = v67;
      v72[3] = sub_1CF4858EC;
      v72[4] = v56;
      v98 = sub_1CF2BA17C;
      v99 = v72;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v96 = sub_1CEFCA444;
      v97 = &block_descriptor_257;
      v73 = _Block_copy(&aBlock);
      v74 = v67;

      v98 = sub_1CF2BA180;
      v99 = v64;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v96 = sub_1CEFCA444;
      v97 = &block_descriptor_260;
      v75 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v68, v82, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v70, v73, v75);
      _Block_release(v75);
      _Block_release(v73);

      sub_1CEFCCC44(v94, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5398(v93, type metadata accessor for Signpost);
      v76 = v86;
      v77 = fpfs_adopt_log();
    }

    else
    {
    }
  }
}

void sub_1CF90C290(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v76 = a2;
  v77 = a3;
  v78 = a10;
  v16 = sub_1CF9E5CF8();
  v17 = *(v16 - 8);
  v74 = v16;
  v75 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E6118();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a5;
  v82 = a6;
  v25 = a8;
  v26 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v27 = sub_1CF9E7298();
  v28 = sub_1CF19C010(v27, "materialization waiter", 22, 2, v76, v77);
  v30 = v29;
  (*(v21 + 8))(v24, v20);
  v31 = a1[3];
  v32 = a1[4];
  v33 = __swift_project_boxed_opaque_existential_1(a1, v31);
  v71 = *(v32 + 8);
  v77 = a7;
  v34 = a7;
  v35 = a4;
  if ((sub_1CF599234(&v81, v34, v25, v79, v78, v33, v28, v30, v31, v71) - 1) >= 2u)
  {

    return;
  }

  v79 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
  v36 = swift_allocObject();
  v37 = MEMORY[0x1E69E7CC0];
  v36[2] = MEMORY[0x1E69E7CC0];
  v36[3] = v37;
  v36[4] = v37;
  v36[5] = v37;
  v36[6] = 0;
  inited = swift_initStackObject();
  *(inited + 16) = v37;
  *(inited + 24) = v37;
  *(inited + 32) = v37;
  *(inited + 40) = v37;
  *(inited + 48) = 0;
  if ((v25 & 2) != 0)
  {
    v39 = 0x400000800000;
  }

  else
  {
    v39 = 0x800000;
  }

  v40 = a1[3];
  v41 = a1[4];
  v42 = __swift_project_boxed_opaque_existential_1(a1, v40);
  v43 = sub_1CF9042D0(v77, sub_1CF90C94C, sub_1CF915948);
  v45 = v44;
  v46 = *(v41 + 8);

  v47 = v43;
  v48 = v80;
  sub_1CF5666D4(&v81, v47, v45, v39, v35, v36, inited, v42, v40, v46);
  if (v48)
  {

    return;
  }

  v78 = v35;
  v80 = 0;

  v49 = a1[3];
  v50 = a1[4];
  v51 = __swift_project_boxed_opaque_existential_1(a1, v49);
  v52 = v73;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v54 = v53;
  v55 = v75 + 8;
  v56 = *(v75 + 8);
  v56(v52, v74);
  v57 = v54 * 1000000000.0;
  if (COERCE__INT64(fabs(v54 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  v75 = v55;
  if (v57 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v57 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v58 = v80;
  sub_1CF521850(v36, v57, v51, v49, v50);
  if (v58)
  {
LABEL_16:

    return;
  }

  v80 = 0;
  v59 = a1[3];
  v60 = a1[4];
  v61 = __swift_project_boxed_opaque_existential_1(a1, v59);
  v62 = v73;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v64 = v63;
  v56(v62, v74);
  v65 = v64 * 1000000000.0;
  if (COERCE__INT64(fabs(v64 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_21;
  }

  if (v65 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v65 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v66 = v80;
  sub_1CF521850(inited, v65, v61, v59, v60);
  if (v66)
  {
    goto LABEL_16;
  }

  swift_setDeallocating();
  v67 = *(inited + 16);

  v68 = *(inited + 24);

  v69 = *(inited + 32);

  v70 = *(inited + 40);
}

void *sub_1CF90C7D0(unint64_t a1)
{
  v1 = 0;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 0uLL:
      v1 = *(a1 + 32);
      goto LABEL_19;
    case 1uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x16uLL:
    case 0x24uLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      goto LABEL_19;
    case 2uLL:
      v7 = &unk_1EC4C4F40;
      v8 = qword_1CFA0F4C0;
      goto LABEL_17;
    case 6uLL:
    case 7uLL:
    case 0x14uLL:
    case 0x21uLL:
    case 0x25uLL:
    case 0x2CuLL:
      v2 = &qword_1EC4C20E8;
      v3 = &unk_1CFA0F480;
      goto LABEL_7;
    case 0xEuLL:
    case 0xFuLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      goto LABEL_19;
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      goto LABEL_19;
    case 0x1AuLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      if (!v1)
      {
        return v1;
      }

      goto LABEL_19;
    case 0x20uLL:
      v7 = &unk_1EC4C5210;
      v8 = &unk_1CFA0F4B0;
      goto LABEL_17;
    case 0x23uLL:
      v7 = &unk_1EC4C5200;
      v8 = "hx\t";
      goto LABEL_17;
    case 0x26uLL:
      v7 = &qword_1EC4C20F0;
      v8 = &unk_1CFA0F4A0;
      goto LABEL_17;
    case 0x27uLL:
      v7 = &unk_1EC4C4AF0;
      v8 = "pN\t";
      goto LABEL_17;
    case 0x28uLL:
    case 0x29uLL:
      v2 = &unk_1EC4C51F0;
      v3 = qword_1CFA17B30;
LABEL_7:
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
      v5 = swift_projectBox();
      v6 = *(v4 + 48);
      goto LABEL_18;
    case 0x2AuLL:
      v7 = &unk_1EC4C4B00;
      v8 = &unk_1CFA0F490;
LABEL_17:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
      v5 = swift_projectBox();
      v6 = *(v9 + 64);
LABEL_18:
      v1 = *(v5 + v6);
LABEL_19:
      v10 = v1;
      break;
    default:
      return v1;
  }

  return v1;
}

void *sub_1CF90C94C(unint64_t a1)
{
  v1 = 0;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 0uLL:
      v1 = *(a1 + 24);
      goto LABEL_19;
    case 1uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x16uLL:
    case 0x24uLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      goto LABEL_19;
    case 2uLL:
      v7 = &unk_1EC4C4F40;
      v8 = qword_1CFA0F4C0;
      goto LABEL_17;
    case 6uLL:
    case 7uLL:
    case 0x14uLL:
    case 0x21uLL:
    case 0x25uLL:
    case 0x2CuLL:
      v2 = &qword_1EC4C20E8;
      v3 = &unk_1CFA0F480;
      goto LABEL_7;
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      goto LABEL_19;
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      goto LABEL_19;
    case 0x1AuLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      if (!v1)
      {
        return v1;
      }

      goto LABEL_19;
    case 0x20uLL:
      v7 = &unk_1EC4C5210;
      v8 = &unk_1CFA0F4B0;
      goto LABEL_17;
    case 0x23uLL:
      v7 = &unk_1EC4C5200;
      v8 = "hx\t";
      goto LABEL_17;
    case 0x26uLL:
      v7 = &qword_1EC4C20F0;
      v8 = &unk_1CFA0F4A0;
      goto LABEL_17;
    case 0x27uLL:
      v7 = &unk_1EC4C4AF0;
      v8 = "pN\t";
      goto LABEL_17;
    case 0x28uLL:
    case 0x29uLL:
      v2 = &unk_1EC4C51F0;
      v3 = qword_1CFA17B30;
LABEL_7:
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
      v5 = swift_projectBox();
      v6 = *(v4 + 48);
      goto LABEL_18;
    case 0x2AuLL:
      v7 = &unk_1EC4C4B00;
      v8 = &unk_1CFA0F490;
LABEL_17:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
      v5 = swift_projectBox();
      v6 = *(v9 + 64);
LABEL_18:
      v1 = *(v5 + v6);
LABEL_19:
      v10 = v1;
      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t sub_1CF90CAC8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  (*(**(*(v3 + 40) + 16) + 96))(&v19);
  v8 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
  v9 = swift_allocObject();
  *(v9 + 42) = 0;
  *(v9 + 32) = v8;
  *(v9 + 40) = 256;
  *(v9 + 16) = v8;
  *(v9 + 24) = 256;
  if (((a1 >> 58) & 0x3C | (a1 >> 1) & 3) == 0x1E)
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v11 = v10;
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v11 = v12 | 0x7000000000000004;
    v10 = a1;
  }

  sub_1CEFD09A0(v10);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;
  v13[5] = v4;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v4;
  *(v14 + 32) = 256;
  *(v14 + 40) = sub_1CF9264FC;
  *(v14 + 48) = v13;
  *(v14 + 56) = v11;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1CF9264FC;
  *(v15 + 24) = v13;
  v16 = *(*v4 + 472);

  sub_1CEFD09A0(a1);

  v17 = v8;

  sub_1CEFD09A0(v11);
  v16("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v15, sub_1CF796A9C, v14);

  sub_1CEFD0A98(v11);
}

void sub_1CF90CD54(uint64_t a1, void (*a2)(uint64_t), void *a3, unint64_t a4, void *a5)
{
  v126 = a4;
  v127 = a5;
  v128 = a2;
  v129 = a3;
  v114 = sub_1CF9E63D8();
  v113 = *(v114 - 8);
  v6 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v123 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v109 - v12;
  v14 = sub_1CF9E6068();
  v120 = *(v14 - 8);
  v121 = v14;
  v15 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v117 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v115 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v124 = &v109 - v21;
  v116 = type metadata accessor for Signpost(0);
  v118 = *(v116 - 8);
  v22 = *(v118 + 64);
  v23 = MEMORY[0x1EEE9AC00](v116);
  v122 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v119 = (&v109 - v25);
  MEMORY[0x1EEE9AC00](v24);
  v125 = &v109 - v26;
  v27 = sub_1CF9E6118();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v109 - v34;
  sub_1CEFCCBDC(a1, &v109 - v34, &qword_1EC4C5020, &qword_1CFA0A278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = &qword_1EC4C5020;
    v37 = &qword_1CFA0A278;
LABEL_7:
    sub_1CEFCCC44(v35, v36, v37);
    v128(a1);
    return;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  if ((*(*(v38 - 8) + 48))(v35, 1, v38) != 1)
  {
    v36 = &unk_1EC4C5228;
    v37 = &unk_1CFA189E0;
    goto LABEL_7;
  }

  v39 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v40 = v126;
  sub_1CEFD09A0(v126);
  v41 = sub_1CF9E6108();
  v42 = sub_1CF9E7298();
  v43 = os_log_type_enabled(v41, v42);
  v111 = v13;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&aBlock = v45;
    *v44 = 136315138;
    sub_1CEFD09A0(v40);
    v46 = sub_1CEFD11AC(v40);
    v48 = v47;
    sub_1CEFD0A98(v126);
    sub_1CEFD0A98(v126);
    v49 = sub_1CEFD0DF0(v46, v48, &aBlock);
    v13 = v111;

    *(v44 + 4) = v49;
    v40 = v126;
    _os_log_impl(&dword_1CEFC7000, v41, v42, "Waiting for propagation of root to the FP request %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1D386CDC0](v45, -1, -1);
    MEMORY[0x1D386CDC0](v44, -1, -1);
  }

  else
  {
    sub_1CEFD0A98(v40);
  }

  v50 = (*(v28 + 8))(v31, v27);
  v51 = v117;
  v52 = v127;
  (*(**(v127[4] + 16) + 96))(&v135, v50);
  v53 = swift_allocObject();
  v54 = v129;
  *(v53 + 2) = v128;
  *(v53 + 3) = v54;
  *(v53 + 4) = v40;
  *(v53 + 5) = v52;
  v55 = v135;
  v56 = v136;
  v57 = swift_allocObject();
  *(v57 + 16) = v55;
  *(v57 + 24) = v56;
  *(v57 + 32) = v40;
  *(v57 + 40) = v52;
  *(v57 + 48) = sub_1CF926508;
  *(v57 + 56) = v53;
  v126 = v57;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1CF926508;
  *(v58 + 24) = v53;
  v128 = v58;
  v59 = *(v52 + qword_1EDEBBC38);
  sub_1CEFD09A0(v40);

  sub_1CEFD09A0(v40);

  v117 = v53;

  v129 = fpfs_adopt_log();
  v60 = v120;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v61 = qword_1EDEBBE40;
  v62 = v124;
  v63 = v121;
  (*(v60 + 56))(v124, 1, 1, v121);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v64 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v64);

  v109 = *(&aBlock + 1);
  v110 = aBlock;
  v65 = v62;
  v66 = v115;
  sub_1CEFCCBDC(v65, v115, &unk_1EC4BED20, &unk_1CFA00700);
  v67 = *(v60 + 48);
  if (v67(v66, 1, v63) == 1)
  {
    v68 = v61;
    sub_1CF9E6048();
    if (v67(v66, 1, v63) != 1)
    {
      sub_1CEFCCC44(v66, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v60 + 32))(v51, v66, v63);
  }

  v69 = v125;
  (*(v60 + 16))(v125, v51, v63);
  v70 = v116;
  *(v69 + *(v116 + 20)) = v61;
  v71 = v69 + *(v70 + 24);
  *v71 = "DB queue wait";
  *(v71 + 8) = 13;
  *(v71 + 16) = 2;
  v72 = v61;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v73 = v51;
  v74 = v60;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1CF9FA450;
  *(v75 + 56) = MEMORY[0x1E69E6158];
  *(v75 + 64) = sub_1CEFD51C4();
  v76 = v109;
  *(v75 + 32) = v110;
  *(v75 + 40) = v76;
  sub_1CF9E6028();

  (*(v74 + 8))(v73, v63);
  sub_1CEFCCC44(v124, &unk_1EC4BED20, &unk_1CFA00700);
  v121 = v127[21];
  v124 = v127[8];
  v120 = sub_1CF9E6448();
  v116 = *(v120 - 8);
  (*(v116 + 56))(v13, 1, 1, v120);
  v77 = v119;
  sub_1CEFDA2E4(v69, v119, type metadata accessor for Signpost);
  v78 = (*(v118 + 80) + 16) & ~*(v118 + 80);
  v79 = (v22 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  sub_1CEFDA05C(v77, v80 + v78, type metadata accessor for Signpost);
  v81 = (v80 + v79);
  v119 = sub_1CF92663C;
  v82 = v128;
  *v81 = sub_1CF92663C;
  v81[1] = v82;
  v83 = v122;
  sub_1CEFDA2E4(v69, v122, type metadata accessor for Signpost);
  v84 = (v79 + 23) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v85 + 25) & 0xFFFFFFFFFFFFFFF8;
  v87 = swift_allocObject();
  sub_1CEFDA05C(v83, v87 + v78, type metadata accessor for Signpost);
  v88 = (v87 + v79);
  *v88 = sub_1CF045408;
  v88[1] = 0;
  v89 = v128;
  *(v87 + v84) = v127;
  v90 = v87 + v85;
  v91 = v116;
  *v90 = "propagateToFP(itemID:request:completion:)";
  *(v90 + 8) = 41;
  *(v90 + 16) = 2;
  v92 = (v87 + v86);
  *v92 = v119;
  v92[1] = v89;
  v93 = (v87 + ((v86 + 23) & 0xFFFFFFFFFFFFFFF8));
  v94 = v126;
  *v93 = sub_1CF926624;
  v93[1] = v94;
  v95 = swift_allocObject();
  v95[2] = sub_1CF5526E8;
  v95[3] = v80;
  v96 = v121;
  v95[4] = v121;
  swift_retain_n();

  v127 = v80;
  v97 = v120;

  v98 = fpfs_current_log();
  v99 = *(v96 + 16);
  v100 = v123;
  sub_1CEFCCBDC(v111, v123, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v91 + 48))(v100, 1, v97) == 1)
  {
    sub_1CEFCCC44(v100, &unk_1EC4BE370, qword_1CFA01B30);
    v101 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v102 = v112;
    sub_1CF9E6438();
    (*(v91 + 8))(v100, v97);
    v101 = sub_1CF9E63C8();
    (*(v113 + 8))(v102, v114);
  }

  v103 = swift_allocObject();
  v103[2] = v98;
  v103[3] = sub_1CF48100C;
  v103[4] = v87;
  v133 = sub_1CEFCA438;
  v134 = v103;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v131 = sub_1CEFCA444;
  v132 = &block_descriptor_129;
  v104 = _Block_copy(&aBlock);
  v105 = v98;

  v133 = sub_1CF2AF9E8;
  v134 = v95;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v131 = sub_1CEFCA444;
  v132 = &block_descriptor_132_0;
  v106 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v99, v124, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v101, v104, v106);
  _Block_release(v106);
  _Block_release(v104);

  sub_1CEFCCC44(v111, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5398(v125, type metadata accessor for Signpost);
  v107 = v129;
  v108 = fpfs_adopt_log();
}

uint64_t sub_1CF90DC04(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, unint64_t a5, void *a6)
{
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v43 - v18);
  if (a2)
  {
    *v19 = a2;
    swift_storeEnumTagMultiPayload();
    v20 = a2;
    a3(v19);
    return sub_1CEFCCC44(v19, &qword_1EC4C5020, &qword_1CFA0A278);
  }

  else
  {
    v22 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFD09A0(a5);
    v23 = sub_1CF9E6108();
    v24 = sub_1CF9E7298();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v45 = a6;
      v46 = v26;
      v27 = v26;
      *v25 = 136315138;
      sub_1CEFD09A0(a5);
      v28 = sub_1CEFD11AC(a5);
      v43 = a3;
      v44 = a4;
      v29 = v28;
      v31 = v30;
      sub_1CEFD0A98(a5);
      sub_1CEFD0A98(a5);
      v32 = sub_1CEFD0DF0(v29, v31, &v46);
      a4 = v44;

      *(v25 + 4) = v32;
      a3 = v43;
      _os_log_impl(&dword_1CEFC7000, v23, v24, "Root propagated, retry lookup request %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v33 = v27;
      a6 = v45;
      MEMORY[0x1D386CDC0](v33, -1, -1);
      MEMORY[0x1D386CDC0](v25, -1, -1);
    }

    else
    {
      sub_1CEFD0A98(a5);
    }

    v34 = (*(v12 + 8))(v15, v11);
    (*(**(a6[5] + 16) + 96))(&v46, v34);
    v35 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
    v36 = swift_allocObject();
    *(v36 + 42) = 0;
    *(v36 + 32) = v35;
    *(v36 + 40) = 256;
    *(v36 + 16) = v35;
    *(v36 + 24) = 256;
    if (((a5 >> 58) & 0x3C | (a5 >> 1) & 3) == 0x1E)
    {
      a5 = *((a5 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v37 = a5;
    }

    else
    {
      v38 = swift_allocObject();
      *(v38 + 16) = a5;
      v37 = v38 | 0x7000000000000004;
    }

    sub_1CEFD09A0(a5);
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    *(v39 + 24) = a6;
    *(v39 + 32) = 256;
    *(v39 + 40) = a3;
    *(v39 + 48) = a4;
    *(v39 + 56) = v37;
    v40 = swift_allocObject();
    *(v40 + 16) = a3;
    *(v40 + 24) = a4;
    v41 = *(*a6 + 472);
    swift_retain_n();
    v42 = v35;

    sub_1CEFD09A0(v37);
    v41("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v40, sub_1CF796A9C, v39);

    sub_1CEFD0A98(v37);
  }
}

void sub_1CF90E07C(uint64_t a1, int a2, int a3, unint64_t a4, void *a5, void (*a6)(void, void, void, void, void, void, void, void), void (*a7)(uint64_t), uint64_t a8)
{
  v100 = a7;
  v101 = a6;
  v92 = a5;
  v91 = a3;
  v99 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v11 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v94 = (&v89 - v12);
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v89 - v18;
  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);

  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E7298();
  if (os_log_type_enabled(v21, v22))
  {
    v95 = v14;
    v96 = v13;
    v98 = a8;
    v23 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v103 = v90;
    *v23 = 136315906;
    v24 = swift_beginAccess();
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v28 = v26;
      v29 = NSFileProviderItemIdentifier.description.getter();
      v31 = v30;
      sub_1CEFD0994(v26, v27, 1);
    }

    else
    {
      v105[1] = *(a1 + 32);
      v106 = v27;
      v29 = VFSItemID.description.getter(v24, v25);
      v31 = v34;
    }

    v35 = sub_1CEFD0DF0(v29, v31, &v103);

    *(v23 + 4) = v35;
    *(v23 + 12) = 2080;
    a8 = v98;
    v14 = v95;
    if (v99)
    {
      if (v99 == 1)
      {
        v36 = 0x74616761706F7270;
      }

      else
      {
        v36 = 0xD000000000000010;
      }

      if (v99 == 1)
      {
        v37 = 0xED000053466F5465;
      }

      else
      {
        v37 = 0x80000001CFA2C3C0;
      }
    }

    else
    {
      v37 = 0x80000001CFA2C390;
      v36 = 0xD000000000000013;
    }

    v38 = sub_1CEFD0DF0(v36, v37, &v103);

    *(v23 + 14) = v38;
    *(v23 + 22) = 2080;
    v39 = sub_1CEFD11AC(a4);
    v41 = v40;
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);
    v42 = sub_1CEFD0DF0(v39, v41, &v103);

    *(v23 + 24) = v42;
    *(v23 + 32) = 2048;
    v33 = v101;
    *(v23 + 34) = v101;
    _os_log_impl(&dword_1CEFC7000, v21, v22, "Lookup itemID %s with behavior %s request %s iteration %ld", v23, 0x2Au);
    v43 = v90;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v43, -1, -1);
    MEMORY[0x1D386CDC0](v23, -1, -1);

    v32 = *(v14 + 8);
    v13 = v96;
    v32(v19, v96);
  }

  else
  {
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);

    v32 = *(v14 + 8);
    v32(v19, v13);
    v33 = v101;
  }

  v44 = v33 < 51;
  v45 = v102;
  if (v44)
  {
    swift_beginAccess();
    v58 = *(a1 + 32);
    v59 = *(a1 + 40);
    if (*(a1 + 41) == 1)
    {
      v60 = qword_1EDEA34B0;
      v61 = v58;
      if (v60 != -1)
      {
        swift_once();
      }

      v62 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v64 = v63;
      if (v62 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v64 == v65)
      {

        sub_1CEFD0994(v58, v59, 1);
LABEL_28:
        sub_1CF90CAC8(a4, v100, a8);
        return;
      }

      v66 = sub_1CF9E8048();

      sub_1CEFD0994(v58, v59, 1);
      if (v66)
      {
        goto LABEL_28;
      }
    }

    else if (!v58 && v59 == 2)
    {
      goto LABEL_28;
    }

    if (((a4 >> 58) & 0x3C | (a4 >> 1) & 3) == 0x1E)
    {
      v67 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v68 = v67;
    }

    else
    {
      v79 = swift_allocObject();
      *(v79 + 16) = a4;
      v68 = v79 | 0x7000000000000004;
      v67 = a4;
    }

    sub_1CEFD09A0(v67);
    v80 = swift_allocObject();
    *(v80 + 16) = v100;
    *(v80 + 24) = a8;
    v81 = v97;
    *(v80 + 32) = v97;
    *(v80 + 40) = v99;
    *(v80 + 48) = a4;
    *(v80 + 56) = a1;
    v82 = v91 & 1;
    *(v80 + 64) = v91 & 1;
    v83 = v92;
    v84 = v101;
    *(v80 + 72) = v92;
    *(v80 + 80) = v84;
    v85 = swift_allocObject();
    *(v85 + 16) = a1;
    *(v85 + 24) = v81;
    *(v85 + 32) = v82;
    *(v85 + 33) = 0;
    *(v85 + 40) = sub_1CF796A90;
    *(v85 + 48) = v80;
    *(v85 + 56) = v68;
    v86 = swift_allocObject();
    *(v86 + 16) = sub_1CF796A90;
    *(v86 + 24) = v80;
    v87 = *v81;
    v101 = *(*v81 + 472);
    v102 = (v87 + 472);

    sub_1CEFD09A0(a4);

    v88 = v83;
    sub_1CEFD09A0(v68);
    v101("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v86, sub_1CF796A9C, v85);

    sub_1CEFD0A98(v68);
    return;
  }

  v46 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);

  v47 = sub_1CF9E6108();
  v48 = sub_1CF9E72B8();
  if (os_log_type_enabled(v47, v48))
  {
    v95 = v14;
    v96 = v13;
    v98 = a8;
    v49 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v105[0] = v101;
    *v49 = 136446466;
    v50 = swift_beginAccess();
    v52 = *(a1 + 32);
    v53 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v54 = v52;
      v55 = NSFileProviderItemIdentifier.description.getter();
      v57 = v56;
      sub_1CEFD0994(v52, v53, 1);
    }

    else
    {
      v103 = *(a1 + 32);
      v104 = v53;
      v55 = VFSItemID.description.getter(v50, v51);
      v57 = v69;
    }

    v70 = sub_1CEFD0DF0(v55, v57, v105);

    *(v49 + 4) = v70;
    *(v49 + 12) = 2082;
    v71 = sub_1CEFD11AC(a4);
    v73 = v72;
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);
    v74 = sub_1CEFD0DF0(v71, v73, v105);

    *(v49 + 14) = v74;
    _os_log_impl(&dword_1CEFC7000, v47, v48, "Recursion too deep for lookup of itemID %{public}s request %{public}s", v49, 0x16u);
    v75 = v101;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v75, -1, -1);
    MEMORY[0x1D386CDC0](v49, -1, -1);

    v32(v102, v96);
  }

  else
  {
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);

    v32(v45, v13);
  }

  v76 = sub_1CF9E6888();
  v77 = FPInvalidParameterError();

  if (v77)
  {
    v78 = v94;
    *v94 = v77;
    swift_storeEnumTagMultiPayload();
    v100(v78);
    sub_1CEFCCC44(v78, &qword_1EC4C5020, &qword_1CFA0A278);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF90EA40(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7, int a8, void *a9, char *a10)
{
  v122 = a8;
  v124 = a7;
  v125 = a6;
  LODWORD(v126) = a5;
  v123 = a4;
  v13 = sub_1CF9E6118();
  v119 = *(v13 - 8);
  v120 = v13;
  v14 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v117 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v121 = &v114 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v114 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v118 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v114 - v27;
  sub_1CEFCCBDC(a1, &v114 - v27, &qword_1EC4C5020, &qword_1CFA0A278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v28, &qword_1EC4C5020, &qword_1CFA0A278);
    a2(a1);
    return;
  }

  v115 = a3;
  v116 = a2;
  if ((*(v19 + 48))(v28, 1, v18) != 1)
  {
    sub_1CEFE55D0(v28, v22, &qword_1EC4C5220, &qword_1CFA0A270);
    v49 = v125;
    if (v126)
    {
      v44 = v115;
      v50 = v116;
      if (v126 != 1)
      {
        v51 = 1;
LABEL_18:

        if (sub_1CF9267E4(v22, v51 & 1, v49))
        {
          v50(a1);
          sub_1CEFCCC44(v22, &qword_1EC4C5220, &qword_1CFA0A270);
          return;
        }

        sub_1CEFCCC44(v22, &qword_1EC4C5220, &qword_1CFA0A270);
        v31 = v124;
        goto LABEL_28;
      }
    }

    else
    {
      v44 = v115;
      v50 = v116;
    }

    v51 = sub_1CF9E8048();
    goto LABEL_18;
  }

  if (!v126)
  {

    v31 = v124;
    v29 = v121;
    goto LABEL_13;
  }

  v29 = v121;
  v30 = sub_1CF9E8048();

  v31 = v124;
  if (v30)
  {
LABEL_13:
    v52 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v53 = v125;
    sub_1CEFD09A0(v125);

    sub_1CEFD09A0(v53);
    v54 = sub_1CF9E6108();
    v55 = sub_1CF9E7298();
    if (os_log_type_enabled(v54, v55))
    {
      LODWORD(v124) = v55;
      v126 = v18;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v129 = v57;
      *v56 = 136315394;
      v58 = swift_beginAccess();
      v60 = *(v31 + 32);
      v61 = v31;
      v62 = *(v31 + 40);
      if (*(v61 + 41))
      {
        v63 = v60;
        v64 = NSFileProviderItemIdentifier.description.getter();
        v66 = v65;
        sub_1CEFD0994(v60, v62, 1);
      }

      else
      {
        v127 = v60;
        v128 = v62;
        v64 = VFSItemID.description.getter(v58, v59);
        v66 = v68;
      }

      v69 = sub_1CEFD0DF0(v64, v66, &v129);

      *(v56 + 4) = v69;
      *(v56 + 12) = 2080;
      v70 = v125;
      v71 = sub_1CEFD11AC(v125);
      v73 = v72;
      sub_1CEFD0A98(v70);
      sub_1CEFD0A98(v70);
      v74 = sub_1CEFD0DF0(v71, v73, &v129);

      *(v56 + 14) = v74;
      _os_log_impl(&dword_1CEFC7000, v54, v124, "Item cannot be found on disk, only looking for existing item %s, request %s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v57, -1, -1);
      MEMORY[0x1D386CDC0](v56, -1, -1);

      (*(v119 + 8))(v121, v120);
      v67 = v116;
      v18 = v126;
    }

    else
    {
      sub_1CEFD0A98(v53);
      sub_1CEFD0A98(v53);

      (*(v119 + 8))(v29, v120);
      v67 = v116;
    }

    v75 = v118;
    (*(v19 + 56))(v118, 1, 1, v18);
    swift_storeEnumTagMultiPayload();
    v67(v75);
    sub_1CEFCCC44(v75, &qword_1EC4C5020, &qword_1CFA0A278);
    return;
  }

  v32 = fpfs_current_or_default_log();
  v33 = v117;
  sub_1CF9E6128();
  v34 = v125;
  sub_1CEFD09A0(v125);

  sub_1CEFD09A0(v34);
  v35 = sub_1CF9E6108();
  v36 = sub_1CF9E7298();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v129 = v38;
    *v37 = 136315394;
    v39 = swift_beginAccess();
    v41 = *(v31 + 32);
    v42 = v31;
    v43 = *(v31 + 40);
    v44 = v115;
    if (*(v42 + 41))
    {
      v45 = v41;
      v46 = NSFileProviderItemIdentifier.description.getter();
      v48 = v47;
      sub_1CEFD0994(v41, v43, 1);
    }

    else
    {
      v131 = v41;
      v132 = v43;
      v46 = VFSItemID.description.getter(v39, v40);
      v48 = v76;
    }

    v31 = v42;
    v77 = sub_1CEFD0DF0(v46, v48, &v129);

    *(v37 + 4) = v77;
    *(v37 + 12) = 2080;
    v78 = v125;
    v79 = sub_1CEFD11AC(v125);
    v81 = v80;
    sub_1CEFD0A98(v78);
    sub_1CEFD0A98(v78);
    v82 = sub_1CEFD0DF0(v79, v81, &v129);

    *(v37 + 14) = v82;
    v49 = v78;
    _os_log_impl(&dword_1CEFC7000, v35, v36, "Item cannot be found on disk, looking for parent for %s request %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v38, -1, -1);
    MEMORY[0x1D386CDC0](v37, -1, -1);

    (*(v119 + 8))(v117, v120);
    v50 = v116;
  }

  else
  {
    sub_1CEFD0A98(v34);
    sub_1CEFD0A98(v34);

    (*(v119 + 8))(v33, v120);
    v44 = v115;
    v50 = v116;
    v49 = v34;
  }

LABEL_28:
  v83 = swift_allocObject();
  *(v83 + 16) = v50;
  *(v83 + 24) = v44;
  v84 = v123;
  *(v83 + 32) = v31;
  *(v83 + 40) = v84;
  *(v83 + 48) = v126;
  v85 = v122 & 1;
  *(v83 + 49) = v122 & 1;
  *(v83 + 56) = v49;
  *(v83 + 64) = a9;
  v121 = a10;
  *(v83 + 72) = a10;
  swift_beginAccess();
  v86 = *(v31 + 32);
  v87 = *(v31 + 40);
  v88 = *(v31 + 41);
  LODWORD(v120) = v85;
  if (v88 == 1)
  {

    sub_1CEFD09A0(v49);
    v89 = a9;

    sub_1CEFD09A0(v49);
    v90 = v89;
    sub_1CEFD0988(v86, v87, 1);
    if (qword_1EDEA3498 != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v91 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v93 = v92;
      if (v91 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v93 == v94)
      {

        sub_1CEFD0994(v86, v87, 1);
        v50 = v116;
      }

      else
      {
        v108 = sub_1CF9E8048();

        sub_1CEFD0994(v86, v87, 1);
        v50 = v116;
        if ((v108 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

LABEL_35:
      v97 = v123;
      (*(**(*(v123 + 32) + 16) + 96))(&v129);
      v98 = v129;
      v99 = v130;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
      v100 = swift_allocObject();
      *(v100 + 32) = v98;
      *(v100 + 40) = v99;
      *(v100 + 41) = 0;
      *(v100 + 16) = v98;
      *(v100 + 24) = v99;
      *(v100 + 25) = 0;
      v101 = (v121 + 1);
      if (!__OFADD__(v121, 1))
      {
        break;
      }

      __break(1u);
LABEL_40:
      swift_once();
    }

    v102 = v100;
    v103 = swift_allocObject();
    *(v103 + 16) = v50;
    *(v103 + 24) = v44;
    v104 = v126;
    *(v103 + 32) = v126;
    v105 = v125;
    *(v103 + 40) = v124;
    *(v103 + 48) = v105;
    *(v103 + 56) = v97;
    *(v103 + 64) = v120;
    *(v103 + 72) = v102;
    *(v103 + 80) = 0;
    *(v103 + 88) = a9;

    sub_1CEFD09A0(v105);
    v106 = a9;

    sub_1CF90E07C(v107, v104, v122 & 1, v105, v106, v101, sub_1CF926790, v103);

    sub_1CEFD0A98(v105);
  }

  else
  {

    sub_1CEFD09A0(v49);
    v95 = a9;

    sub_1CEFD09A0(v49);
    v96 = v95;
    if (v87 >= 2 && v86)
    {
      goto LABEL_35;
    }

LABEL_38:
    v109 = v123;

    v110 = v124;

    sub_1CEFD0A98(v125);

    v111 = swift_allocObject();
    v111[2] = v110;
    v111[3] = v109;
    v111[4] = sub_1CF926664;
    v111[5] = v83;
    v112 = swift_allocObject();
    *(v112 + 16) = sub_1CF926664;
    *(v112 + 24) = v83;
    v113 = *(*v109 + 472);
    swift_retain_n();

    v113("findParentID(for:completionHandler:)", 36, 2, 2, sub_1CF92672C, v112, sub_1CF92670C, v111);
  }
}

uint64_t sub_1CF90F7BC(void *a1, void *a2, char a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, unint64_t a10, void *a11, uint64_t a12)
{
  v35 = a8;
  v34 = a11;
  v33 = a9;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v32 - v21);
  if (a3)
  {
    *v22 = a1;
    swift_storeEnumTagMultiPayload();
    v23 = a1;
    a4(v22);
    return sub_1CEFCCC44(v22, &qword_1EC4C5020, &qword_1CFA0A278);
  }

  if (!a2)
  {

    v25 = (a12 + 1);
    if (!__OFADD__(a12, 1))
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
  result = swift_allocObject();
  a6 = result;
  *(result + 42) = 0;
  *(result + 32) = a2;
  *(result + 40) = 256;
  *(result + 16) = a2;
  *(result + 24) = 256;
  v25 = (a12 + 1);
  if (__OFADD__(a12, 1))
  {
    goto LABEL_10;
  }

LABEL_5:
  v32 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  v27 = v35;
  *(v26 + 32) = v35;
  *(v26 + 40) = a6;
  *(v26 + 48) = a10;
  *(v26 + 56) = a7;
  v28 = v33 & 1;
  *(v26 + 64) = v28;
  *(v26 + 72) = a1;
  *(v26 + 80) = a2;
  v29 = v34;
  *(v26 + 88) = v34;
  v30 = a2;

  sub_1CEFD09A0(a10);

  v31 = v29;
  sub_1CF90E07C(a1, v27, v28, a10, v31, v32, sub_1CF928474, v26);
}

uint64_t sub_1CF90FA18(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, int a4, uint64_t (*a5)(uint64_t a1, uint64_t a2), id a6, uint64_t a7, int a8, uint64_t a9, void *a10, id a11)
{
  v310 = a8;
  v327 = a7;
  v322 = a6;
  v314 = a5;
  LODWORD(v325) = a4;
  v329 = a2;
  v330 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v307 = &v283 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v321 = &v283 - v17;
  v305 = sub_1CF9E6068();
  v304 = *(v305 - 8);
  v18 = *(v304 + 64);
  MEMORY[0x1EEE9AC00](v305);
  v303 = &v283 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v298 = &v283 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v315 = &v283 - v24;
  v299 = type metadata accessor for Signpost(0);
  v300 = *(v299 - 8);
  v25 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v299);
  v306 = &v283 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v302 = &v283 - v28;
  v301 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v317 = &v283 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v295 = &v283 - v34;
  v313 = sub_1CF9E63D8();
  v312 = *(v313 - 8);
  v35 = *(v312 + 64);
  MEMORY[0x1EEE9AC00](v313);
  v288 = &v283 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v308 = &v283 - v38;
  v320 = sub_1CF9E6448();
  v319 = *(v320 - 8);
  v39 = *(v319 + 64);
  MEMORY[0x1EEE9AC00](v320);
  v297 = &v283 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = v40;
  MEMORY[0x1EEE9AC00](v41);
  v316 = &v283 - v42;
  v324 = sub_1CF9E6118();
  v323 = *(v324 - 1);
  v43 = v323[8];
  MEMORY[0x1EEE9AC00](v324);
  v291 = &v283 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v289 = &v283 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v290 = &v283 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v309 = &v283 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v318 = &v283 - v52;
  v311 = type metadata accessor for VFSItem(0);
  v292 = *(v311 - 8);
  v53 = *(v292 + 64);
  MEMORY[0x1EEE9AC00](v311);
  v294 = &v283 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = v54;
  MEMORY[0x1EEE9AC00](v55);
  v328 = (&v283 - v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v283 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v283 - v63;
  MEMORY[0x1EEE9AC00](v65);
  v326 = &v283 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v283 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v283 - v72;
  sub_1CEFCCBDC(a1, &v283 - v72, &qword_1EC4C5020, &qword_1CFA0A278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v73, &qword_1EC4C5020, &qword_1CFA0A278);
    return v329(a1);
  }

  if ((*(v58 + 48))(v73, 1, v57) == 1)
  {
    return v329(a1);
  }

  v75 = v73;
  v76 = v326;
  sub_1CEFE55D0(v75, v326, &qword_1EC4C5220, &qword_1CFA0A270);
  if (*(v76 + *(v57 + 56)))
  {
    (*(v58 + 56))(v70, 1, 1, v57);
    swift_storeEnumTagMultiPayload();
    v329(v70);
    sub_1CEFCCC44(v70, &qword_1EC4C5020, &qword_1CFA0A278);
    return sub_1CEFCCC44(v76, &qword_1EC4C5220, &qword_1CFA0A270);
  }

  sub_1CEFDA2E4(v76, v328, type metadata accessor for VFSItem);
  if (v325)
  {
    v77 = v322;
    if (v325 != 1)
    {
      v286 = 0x80000001CFA2C3C0;

      goto LABEL_14;
    }
  }

  else
  {
    v77 = v322;
  }

  v78 = sub_1CF9E8048();

  v286 = 0x80000001CFA2C3C0;
  if (v78 & 1) == 0 && (*(v76 + *(v57 + 60)))
  {
    v79 = v314;
    swift_beginAccess();
    v80 = *(v79 + 41);
    goto LABEL_15;
  }

LABEL_14:
  v80 = 1;
LABEL_15:
  v287 = v80;
  v81 = v318;
  v82 = a9;
  v83 = a10;
  v84 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(v76, v64, &qword_1EC4C5220, &qword_1CFA0A270);
  sub_1CEFD09A0(v77);
  sub_1CEFD09A0(v77);
  v85 = sub_1CF9E6108();
  v86 = sub_1CF9E7298();
  if (os_log_type_enabled(v85, v86))
  {
    v284 = a10;
    v283 = v85;
    v285 = a9;
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *&aBlock = v88;
    *v87 = 136315906;
    sub_1CEFCCBDC(v64, v61, &qword_1EC4C5220, &qword_1CFA0A270);
    sub_1CEFCCC44(v64, &qword_1EC4C5220, &qword_1CFA0A270);
    v89 = sub_1CF90560C();
    v91 = v90;
    sub_1CEFCCC44(v61, &qword_1EC4C5220, &qword_1CFA0A270);
    v92 = sub_1CEFD0DF0(v89, v91, &aBlock);

    *(v87 + 4) = v92;
    *(v87 + 12) = 2080;
    if (v325)
    {
      v93 = 0xD000000000000010;
      v94 = v286;
      if (v325 == 1)
      {
        v93 = 0x74616761706F7270;
        v94 = 0xED000053466F5465;
      }
    }

    else
    {
      v94 = 0x80000001CFA2C390;
      v93 = 0xD000000000000013;
    }

    v96 = sub_1CEFD0DF0(v93, v94, &aBlock);

    *(v87 + 14) = v96;
    *(v87 + 22) = 1024;
    *(v87 + 24) = v287;
    *(v87 + 28) = 2080;
    v97 = sub_1CEFD11AC(v77);
    v99 = v98;
    sub_1CEFD0A98(v77);
    sub_1CEFD0A98(v77);
    v100 = sub_1CEFD0DF0(v97, v99, &aBlock);

    *(v87 + 30) = v100;
    v101 = v283;
    _os_log_impl(&dword_1CEFC7000, v283, v86, "Found parent %s, behavior: %s, shouldReconcile: %{BOOL}d request %s", v87, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v88, -1, -1);
    MEMORY[0x1D386CDC0](v87, -1, -1);

    v95 = v323[1];
    (v95)(v318, v324);
    v82 = v285;
    v83 = v284;
  }

  else
  {
    sub_1CEFD0A98(v77);
    sub_1CEFCCC44(v64, &qword_1EC4C5220, &qword_1CFA0A270);
    sub_1CEFD0A98(v77);

    v95 = v323[1];
    (v95)(v81, v324);
  }

  v102 = v328 + *(v311 + 28);
  LOBYTE(v102) = *(v102 + *(type metadata accessor for ItemMetadata() + 80));
  v103 = fpfs_current_or_default_log();
  if (v102)
  {
    v104 = v309;
    sub_1CF9E6128();
    sub_1CEFD09A0(v77);
    sub_1CEFD09A0(v77);
    v105 = v83;

    v106 = sub_1CF9E6108();
    v107 = sub_1CF9E7298();
    if (!os_log_type_enabled(v106, v107))
    {
      sub_1CEFD0A98(v77);
      sub_1CEFD0A98(v77);

      (v95)(v104, v324);
LABEL_41:
      v157 = v314;
LABEL_42:
      v164 = [a11 totalUnitCount];
      if (__OFADD__(v164, 1))
      {
        __break(1u);
      }

      else
      {
        v324 = a11;
        [a11 setTotalUnitCount_];
        v165 = *v328;
        v166 = *(v328 + 8);
        v167 = v294;
        sub_1CEFDA2E4(v328, v294, type metadata accessor for VFSItem);
        v168 = (*(v292 + 80) + 48) & ~*(v292 + 80);
        v169 = (v293 + v168 + 7) & 0xFFFFFFFFFFFFFFF8;
        v170 = swift_allocObject();
        v171 = v330;
        *(v170 + 2) = v329;
        *(v170 + 3) = v171;
        *(v170 + 4) = v157;
        *(v170 + 5) = v77;
        sub_1CEFDA05C(v167, v170 + v168, type metadata accessor for VFSItem);
        v329 = v170;
        v172 = v170 + v169;
        *v172 = v327;
        v172[8] = v310 & 1;
        v172[9] = v325;
        sub_1CEFD09A0(v77);

        qos_class_self();
        v173 = v295;
        sub_1CF9E63B8();
        v174 = v312;
        v175 = *(v312 + 48);
        v176 = v313;
        if (v175(v173, 1, v313) == 1)
        {
          (*(v174 + 104))(v308, *MEMORY[0x1E69E7FA0], v176);
          if (v175(v173, 1, v176) != 1)
          {
            sub_1CEFCCC44(v173, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v174 + 32))(v308, v173, v176);
        }

        v177 = v316;
        sub_1CF9E6428();
        v178 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
        [v178 setCancellable_];
        v179 = swift_allocObject();
        v180 = v327;
        swift_weakInit();
        v181 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v182 = swift_allocObject();
        *(v182 + 16) = v179;
        *(v182 + 24) = v181;
        *(v182 + 32) = v165;
        *(v182 + 40) = v166;
        v334 = sub_1CF926F34;
        v335 = v182;
        *&aBlock = MEMORY[0x1E69E9820];
        v11 = 1107296256;
        *(&aBlock + 1) = 1107296256;
        v332 = sub_1CEFCA444;
        v333 = &block_descriptor_235;
        v183 = _Block_copy(&aBlock);
        LODWORD(v330) = v166;
        v184 = v165;
        v185 = v183;

        sub_1CF03C63C(sub_1CF926F34);

        [v178 setCancellationHandler_];
        _Block_release(v185);

        v186 = v319;
        v187 = v297;
        v188 = v320;
        (*(v319 + 16))(v297, v177, v320);
        v189 = (*(v186 + 80) + 80) & ~*(v186 + 80);
        v190 = swift_allocObject();
        v191 = v329;
        *(v190 + 16) = sub_1CF926E84;
        *(v190 + 24) = v191;
        *(v190 + 32) = v180;
        *(v190 + 40) = v184;
        *(v190 + 48) = v330;
        v192 = v322;
        *(v190 + 56) = v322;
        *(v190 + 64) = 1;
        *(v190 + 72) = v178;
        v193 = *(v186 + 32);
        v325 = v190;
        v193(v190 + v189, v187, v188);
        v194 = swift_allocObject();
        *(v194 + 16) = sub_1CF926E84;
        *(v194 + 24) = v191;
        v330 = v194;
        v195 = *(v180 + qword_1EDEBBC38);

        sub_1CEFD09A0(v192);

        v323 = v178;
        v322 = fpfs_adopt_log();
        if (qword_1EDEAE980 == -1)
        {
          goto LABEL_48;
        }
      }

      swift_once();
LABEL_48:
      v196 = qword_1EDEBBE40;
      v197 = v304;
      v198 = v315;
      v199 = v305;
      (*(v304 + 56))(v315, 1, 1, v305);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v200 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v200);

      v201 = *(&aBlock + 1);
      v318 = aBlock;
      v202 = v198;
      v203 = v298;
      sub_1CEFCCBDC(v202, v298, &unk_1EC4BED20, &unk_1CFA00700);
      v204 = *(v197 + 48);
      v205 = v204(v203, 1, v199);
      v206 = v303;
      if (v205 == 1)
      {
        v207 = v196;
        sub_1CF9E6048();
        v208 = v204(v203, 1, v199);
        v209 = v320;
        if (v208 != 1)
        {
          sub_1CEFCCC44(v203, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        (*(v197 + 32))(v303, v203, v199);
        v209 = v320;
      }

      v210 = v317;
      (*(v197 + 16))(v317, v206, v199);
      v211 = v299;
      *(v210 + *(v299 + 20)) = v196;
      v212 = v210 + *(v211 + 24);
      *v212 = "DB queue wait";
      *(v212 + 8) = 13;
      *(v212 + 16) = 2;
      v213 = v196;
      sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v214 = swift_allocObject();
      *(v214 + 16) = xmmword_1CF9FA450;
      *(v214 + 56) = MEMORY[0x1E69E6158];
      *(v214 + 64) = sub_1CEFD51C4();
      *(v214 + 32) = v318;
      *(v214 + 40) = v201;
      sub_1CF9E6028();

      (*(v197 + 8))(v206, v199);
      sub_1CEFCCC44(v315, &unk_1EC4BED20, &unk_1CFA00700);
      v315 = *(v327 + 168);
      v318 = *(v327 + 64);
      (*(v319 + 56))(v321, 1, 1, v209);
      v215 = v302;
      sub_1CEFDA2E4(v210, v302, type metadata accessor for Signpost);
      v216 = (*(v300 + 80) + 16) & ~*(v300 + 80);
      v217 = (v301 + v216 + 7) & 0xFFFFFFFFFFFFFFF8;
      v218 = swift_allocObject();
      sub_1CEFDA05C(v215, v218 + v216, type metadata accessor for Signpost);
      v219 = (v218 + v217);
      v314 = sub_1CF4814BC;
      v220 = v330;
      *v219 = sub_1CF4814BC;
      v219[1] = v220;
      v221 = v306;
      sub_1CEFDA2E4(v210, v306, type metadata accessor for Signpost);
      v222 = (v217 + 23) & 0xFFFFFFFFFFFFFFF8;
      v223 = (v222 + 15) & 0xFFFFFFFFFFFFFFF8;
      v224 = (v223 + 25) & 0xFFFFFFFFFFFFFFF8;
      v225 = swift_allocObject();
      sub_1CEFDA05C(v221, v225 + v216, type metadata accessor for Signpost);
      v226 = (v225 + v217);
      *v226 = sub_1CF045408;
      v226[1] = 0;
      *(v225 + v222) = v327;
      v227 = v225 + v223;
      v228 = v320;
      *v227 = "materialize(_:request:options:qos:completion:)";
      *(v227 + 8) = 46;
      *(v227 + 16) = 2;
      v229 = (v225 + v224);
      v230 = v330;
      *v229 = v314;
      v229[1] = v230;
      v231 = (v225 + ((v224 + 23) & 0xFFFFFFFFFFFFFFF8));
      v232 = v319;
      v233 = v325;
      *v231 = sub_1CF926F44;
      v231[1] = v233;
      v234 = swift_allocObject();
      v234[2] = sub_1CF75C120;
      v234[3] = v218;
      v235 = v315;
      v234[4] = v315;
      swift_retain_n();

      v327 = v218;

      v236 = fpfs_current_log();
      v315 = *(v235 + 2);
      v237 = v307;
      sub_1CEFCCBDC(v321, v307, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v232 + 48))(v237, 1, v228) == 1)
      {
        sub_1CEFCCC44(v237, &unk_1EC4BE370, qword_1CFA01B30);
        v238 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v239 = v288;
        sub_1CF9E6438();
        (*(v232 + 8))(v237, v228);
        v238 = sub_1CF9E63C8();
        (*(v312 + 8))(v239, v313);
      }

      v240 = swift_allocObject();
      v240[2] = v236;
      v240[3] = sub_1CF4858EC;
      v240[4] = v225;
      v334 = sub_1CF2BA17C;
      v335 = v240;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = v11;
      v332 = sub_1CEFCA444;
      v333 = &block_descriptor_229_0;
      v241 = _Block_copy(&aBlock);
      v242 = v236;

      v334 = sub_1CF2BA180;
      v335 = v234;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = v11;
      v332 = sub_1CEFCA444;
      v333 = &block_descriptor_232_0;
      v243 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v315, v318, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v238, v241, v243);
      _Block_release(v243);
      _Block_release(v241);

      sub_1CEFCCC44(v321, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5398(v317, type metadata accessor for Signpost);
      v244 = v322;
      v245 = fpfs_adopt_log();

      (*(v232 + 8))(v316, v228);
      v246 = v323;
      [v324 addChild:v323 withPendingUnitCount:1];

      goto LABEL_72;
    }

    v318 = v95;
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v337 = v109;
    *v108 = 136315394;
    v110 = swift_beginAccess();
    v112 = *(v82 + 32);
    v113 = *(v82 + 40);
    if (*(v82 + 41))
    {
      v114 = v112;
      v115 = NSFileProviderItemIdentifier.description.getter();
      v117 = v116;
      sub_1CEFD0994(v112, v113, 1);
    }

    else
    {
      *&aBlock = *(v82 + 32);
      BYTE8(aBlock) = v113;
      v115 = VFSItemID.description.getter(v110, v111);
      v117 = v148;
    }

    v149 = sub_1CEFD0DF0(v115, v117, &v337);

    *(v108 + 4) = v149;
    *(v108 + 12) = 2080;
    v150 = v322;
    v151 = sub_1CEFD11AC(v322);
    v153 = v152;
    sub_1CEFD0A98(v150);
    sub_1CEFD0A98(v150);
    v154 = sub_1CEFD0DF0(v151, v153, &v337);

    *(v108 + 14) = v154;
    _os_log_impl(&dword_1CEFC7000, v106, v107, "Parent item is dataless, materializing %s request %s", v108, 0x16u);
    swift_arrayDestroy();
    v155 = v109;
    v77 = v150;
    MEMORY[0x1D386CDC0](v155, -1, -1);
    MEMORY[0x1D386CDC0](v108, -1, -1);

    v156 = &v336;
LABEL_40:
    (v318)(*(v156 - 32), v324);
    goto LABEL_41;
  }

  if (v287)
  {
    v318 = v95;
    v118 = v290;
    sub_1CF9E6128();
    sub_1CEFD09A0(v77);
    sub_1CEFD09A0(v77);
    v119 = v77;
    v120 = v83;

    v121 = sub_1CF9E6108();
    v122 = sub_1CF9E7298();
    if (!os_log_type_enabled(v121, v122))
    {
      sub_1CEFD0A98(v119);
      sub_1CEFD0A98(v119);

      (v318)(v118, v324);
      v157 = v314;
      v77 = v119;
      goto LABEL_42;
    }

    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v337 = v124;
    *v123 = 136315394;
    v125 = swift_beginAccess();
    v127 = *(v82 + 32);
    v128 = *(v82 + 40);
    if (*(v82 + 41))
    {
      v129 = v127;
      v130 = NSFileProviderItemIdentifier.description.getter();
      v132 = v131;
      sub_1CEFD0994(v127, v128, 1);
    }

    else
    {
      *&aBlock = *(v82 + 32);
      BYTE8(aBlock) = v128;
      v130 = VFSItemID.description.getter(v125, v126);
      v132 = v158;
    }

    v159 = sub_1CEFD0DF0(v130, v132, &v337);

    *(v123 + 4) = v159;
    *(v123 + 12) = 2080;
    v77 = v322;
    v160 = sub_1CEFD11AC(v322);
    v162 = v161;
    sub_1CEFD0A98(v77);
    sub_1CEFD0A98(v77);
    v163 = sub_1CEFD0DF0(v160, v162, &v337);

    *(v123 + 14) = v163;
    _os_log_impl(&dword_1CEFC7000, v121, v122, "Parent item must be imported, materializing %s request %s", v123, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v124, -1, -1);
    MEMORY[0x1D386CDC0](v123, -1, -1);

    v156 = &v322;
    goto LABEL_40;
  }

  v133 = v289;
  sub_1CF9E6128();
  sub_1CEFD09A0(v77);
  sub_1CEFD09A0(v77);
  v134 = v314;

  v135 = sub_1CF9E6108();
  v136 = sub_1CF9E7298();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = v95;
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v337 = v139;
    *v138 = 136315394;
    v140 = swift_beginAccess();
    v142 = *(v134 + 4);
    v143 = *(v134 + 40);
    if (*(v134 + 41))
    {
      v144 = v142;
      v145 = NSFileProviderItemIdentifier.description.getter();
      v147 = v146;
      sub_1CEFD0994(v142, v143, 1);
    }

    else
    {
      *&aBlock = *(v134 + 4);
      BYTE8(aBlock) = v143;
      v145 = VFSItemID.description.getter(v140, v141);
      v147 = v247;
    }

    v248 = sub_1CEFD0DF0(v145, v147, &v337);

    *(v138 + 4) = v248;
    *(v138 + 12) = 2080;
    v77 = v322;
    v249 = sub_1CEFD11AC(v322);
    v251 = v250;
    sub_1CEFD0A98(v77);
    sub_1CEFD0A98(v77);
    v252 = sub_1CEFD0DF0(v249, v251, &v337);

    *(v138 + 14) = v252;
    _os_log_impl(&dword_1CEFC7000, v135, v136, "Parent item is not dataless, lookup and propagate %s request %s", v138, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v139, -1, -1);
    MEMORY[0x1D386CDC0](v138, -1, -1);

    v95 = v137;
    (v137)(v289, v324);
  }

  else
  {
    sub_1CEFD0A98(v77);
    sub_1CEFD0A98(v77);

    (v95)(v133, v324);
  }

  if (!v325 || v325 == 1)
  {
    LODWORD(v325) = sub_1CF9E8048();
  }

  else
  {
    LODWORD(v325) = 1;
  }

  if (((v77 >> 58) & 0x3C | (v77 >> 1) & 3) == 0x1E)
  {
    v77 = *((v77 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v253 = v77;
  }

  else
  {
    v254 = swift_allocObject();
    *(v254 + 16) = v77;
    v253 = v254 | 0x7000000000000004;
  }

  sub_1CEFD09A0(v77);
  v255 = fpfs_current_or_default_log();
  v256 = v291;
  sub_1CF9E6128();
  sub_1CEFD09A0(v253);

  sub_1CEFD09A0(v253);
  v257 = sub_1CF9E6108();
  v258 = sub_1CF9E7298();
  if (os_log_type_enabled(v257, v258))
  {
    v318 = v95;
    v259 = swift_slowAlloc();
    v260 = swift_slowAlloc();
    v339 = v260;
    *v259 = 136315394;
    v261 = swift_beginAccess();
    v263 = *(v134 + 4);
    v264 = *(v134 + 40);
    if (*(v134 + 41))
    {
      v265 = v263;
      v266 = NSFileProviderItemIdentifier.description.getter();
      v268 = v267;
      sub_1CEFD0994(v263, v264, 1);
    }

    else
    {
      v337 = *(v134 + 4);
      v338 = v264;
      v266 = VFSItemID.description.getter(v261, v262);
      v268 = v269;
    }

    v270 = sub_1CEFD0DF0(v266, v268, &v339);

    *(v259 + 4) = v270;
    *(v259 + 12) = 2080;
    v271 = sub_1CF913458(v253);
    v273 = v272;
    sub_1CEFD0A98(v253);
    sub_1CEFD0A98(v253);
    v274 = sub_1CEFD0DF0(v271, v273, &v339);

    *(v259 + 14) = v274;
    _os_log_impl(&dword_1CEFC7000, v257, v258, "looking up VFS item for %s request %s", v259, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v260, -1, -1);
    MEMORY[0x1D386CDC0](v259, -1, -1);

    (v318)(v291, v324);
  }

  else
  {
    sub_1CEFD0A98(v253);
    sub_1CEFD0A98(v253);

    (v95)(v256, v324);
  }

  v275 = swift_allocObject();
  *(v275 + 16) = v134;
  *(v275 + 24) = v253;
  v276 = v134;
  v277 = v330;
  *(v275 + 32) = v329;
  *(v275 + 40) = v277;
  *(v275 + 48) = v325 & 1;
  v278 = v327;
  *(v275 + 56) = v327;
  *(v275 + 64) = 1;
  v279 = v310 & 1;
  *(v275 + 65) = v310 & 1;
  v280 = swift_allocObject();
  *(v280 + 16) = v276;
  *(v280 + 24) = v278;
  *(v280 + 32) = v279;
  *(v280 + 33) = 1;
  *(v280 + 40) = sub_1CF926E80;
  *(v280 + 48) = v275;
  *(v280 + 56) = v253;
  v281 = swift_allocObject();
  *(v281 + 16) = sub_1CF926E80;
  *(v281 + 24) = v275;
  v282 = *(*v278 + 472);

  sub_1CEFD09A0(v253);

  sub_1CEFD09A0(v253);

  v282("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v281, sub_1CF796A9C, v280);

  sub_1CEFD0A98(v253);
LABEL_72:
  sub_1CEFD5398(v328, type metadata accessor for VFSItem);
  return sub_1CEFCCC44(v326, &qword_1EC4C5220, &qword_1CFA0A270);
}

unint64_t sub_1CF91200C(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, int a8, char a9)
{
  v106 = a8;
  v105 = a5;
  v107 = a4;
  v14 = sub_1CF9E6118();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v96 - v24);
  if (a1)
  {
    *v25 = a1;
    swift_storeEnumTagMultiPayload();
    v26 = a1;
    a2(v25);
    return sub_1CEFCCC44(v25, &qword_1EC4C5020, &qword_1CFA0A278);
  }

  else
  {
    v28 = a3;
    v101 = v18;
    v103 = v15;
    v104 = v14;
    v29 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v30 = v105;
    sub_1CEFD09A0(v105);
    sub_1CEFD09A0(v30);

    v31 = sub_1CF9E6108();
    v32 = sub_1CF9E7298();
    v33 = os_log_type_enabled(v31, v32);
    v102 = v28;
    if (v33)
    {
      v98 = v21;
      v99 = a2;
      v100 = a7;
      v34 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v108 = v97;
      *v34 = 136315394;
      v35 = v107;
      v36 = swift_beginAccess();
      v38 = *(v35 + 32);
      v39 = *(v35 + 40);
      if (*(v35 + 41))
      {
        v40 = v38;
        v41 = NSFileProviderItemIdentifier.description.getter();
        v43 = v42;
        sub_1CEFD0994(v38, v39, 1);
      }

      else
      {
        v110 = *(v35 + 32);
        v111 = v39;
        v41 = VFSItemID.description.getter(v36, v37);
        v43 = v49;
      }

      v47 = v30;
      v50 = sub_1CEFD0DF0(v41, v43, &v108);

      *(v34 + 4) = v50;
      *(v34 + 12) = 2080;
      v51 = sub_1CEFD11AC(v30);
      v53 = v52;
      sub_1CEFD0A98(v30);
      sub_1CEFD0A98(v30);
      v54 = sub_1CEFD0DF0(v51, v53, &v108);

      *(v34 + 14) = v54;
      _os_log_impl(&dword_1CEFC7000, v31, v32, "Parent is materialized, lookup %s again request %s", v34, 0x16u);
      v55 = v97;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v55, -1, -1);
      MEMORY[0x1D386CDC0](v34, -1, -1);

      v44 = *(v103 + 8);
      v44(v98, v104);
      v46 = v99;
      v45 = v100;
      v48 = v102;
    }

    else
    {
      sub_1CEFD0A98(v30);
      sub_1CEFD0A98(v30);

      v44 = *(v103 + 8);
      v44(v21, v104);
      v45 = a7;
      v46 = a2;
      v47 = v30;
      v48 = v28;
    }

    v56 = v107;
    *(v107 + 42) = 0;
    v57 = a6 + *(type metadata accessor for VFSItem(0) + 28);
    v58 = type metadata accessor for ItemMetadata();
    v59 = v106;
    v60 = v56;
    if (*(v57 + *(v58 + 80)) == 1)
    {
      if (((v47 >> 58) & 0x3C | (v47 >> 1) & 3) == 0x1E)
      {
        v47 = *((v47 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v61 = v47;
      }

      else
      {
        v62 = swift_allocObject();
        *(v62 + 16) = v47;
        v61 = v62 | 0x7000000000000004;
      }

      sub_1CEFD09A0(v47);
      v63 = swift_allocObject();
      *(v63 + 16) = v60;
      *(v63 + 24) = v45;
      *(v63 + 32) = v59 & 1;
      *(v63 + 33) = 1;
      *(v63 + 40) = v46;
      *(v63 + 48) = v48;
      *(v63 + 56) = v61;
      v64 = swift_allocObject();
      *(v64 + 16) = v46;
      *(v64 + 24) = v48;
      v65 = *(*v45 + 472);
      swift_retain_n();

      sub_1CEFD09A0(v61);
      v65("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v64, sub_1CF796A9C, v63);

      v66 = v61;
    }

    else
    {
      if (a9 && a9 != 1)
      {
        LODWORD(v67) = 1;
      }

      else
      {
        LODWORD(v67) = sub_1CF9E8048();
      }

      v105 = v44;
      if (((v47 >> 58) & 0x3C | (v47 >> 1) & 3) == 0x1E)
      {
        v47 = *((v47 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v68 = v47;
      }

      else
      {
        v69 = swift_allocObject();
        *(v69 + 16) = v47;
        v68 = v69 | 0x7000000000000004;
      }

      sub_1CEFD09A0(v47);
      v70 = fpfs_current_or_default_log();
      v71 = v101;
      sub_1CF9E6128();
      sub_1CEFD09A0(v68);

      sub_1CEFD09A0(v68);
      v72 = sub_1CF9E6108();
      v73 = sub_1CF9E7298();
      if (os_log_type_enabled(v72, v73))
      {
        LODWORD(v98) = v67;
        v99 = v46;
        v100 = v45;
        v67 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v112[0] = v74;
        *v67 = 136315394;
        v75 = swift_beginAccess();
        v77 = *(v60 + 32);
        v78 = *(v60 + 40);
        if (*(v60 + 41))
        {
          v79 = v77;
          v80 = NSFileProviderItemIdentifier.description.getter();
          v82 = v81;
          sub_1CEFD0994(v77, v78, 1);
        }

        else
        {
          v108 = *(v60 + 32);
          v109 = v78;
          v80 = VFSItemID.description.getter(v75, v76);
          v82 = v83;
        }

        v84 = v60;

        v85 = sub_1CEFD0DF0(v80, v82, v112);

        *(v67 + 4) = v85;
        *(v67 + 12) = 2080;
        v86 = sub_1CF913458(v68);
        v88 = v87;
        sub_1CEFD0A98(v68);
        sub_1CEFD0A98(v68);
        v89 = sub_1CEFD0DF0(v86, v88, v112);

        *(v67 + 14) = v89;
        _os_log_impl(&dword_1CEFC7000, v72, v73, "looking up VFS item for %s request %s", v67, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v74, -1, -1);
        MEMORY[0x1D386CDC0](v67, -1, -1);

        v105(v101, v104);
        v46 = v99;
        v45 = v100;
        v60 = v84;
        LOBYTE(v67) = v98;
      }

      else
      {
        sub_1CEFD0A98(v68);
        sub_1CEFD0A98(v68);

        v105(v71, v104);
      }

      v90 = swift_allocObject();
      *(v90 + 16) = v60;
      *(v90 + 24) = v68;
      v91 = v102;
      *(v90 + 32) = v46;
      *(v90 + 40) = v91;
      *(v90 + 48) = v67 & 1;
      *(v90 + 56) = v45;
      *(v90 + 64) = 1;
      v92 = v106 & 1;
      *(v90 + 65) = v106 & 1;
      v93 = swift_allocObject();
      *(v93 + 16) = v60;
      *(v93 + 24) = v45;
      *(v93 + 32) = v92;
      *(v93 + 33) = 1;
      *(v93 + 40) = sub_1CF928470;
      *(v93 + 48) = v90;
      *(v93 + 56) = v68;
      v94 = swift_allocObject();
      *(v94 + 16) = sub_1CF928470;
      *(v94 + 24) = v90;
      v95 = *(*v45 + 472);

      sub_1CEFD09A0(v68);

      sub_1CEFD09A0(v68);

      v95("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v94, sub_1CF796A9C, v93);

      v66 = v68;
    }

    return sub_1CEFD0A98(v66);
  }
}

uint64_t sub_1CF912A20(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, unint64_t a4)
{
  v20 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5228, &unk_1CFA189E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v19 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v19 - v16);
  sub_1CEFCCBDC(a1, v13, &qword_1EC4C5020, &qword_1CFA0A278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v17 = *v13;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1CEFE55D0(v13, v9, &qword_1EC4C5228, &unk_1CFA189E0);
    sub_1CF912C1C(v9, v20, v17);
    sub_1CEFCCC44(v9, &qword_1EC4C5228, &unk_1CFA189E0);
  }

  a2(v17);
  return sub_1CEFCCC44(v17, &unk_1EC4BF300, &unk_1CFA006B0);
}

uint64_t sub_1CF912C1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v64 = a2;
  v65 = a3;
  v4 = sub_1CF9E5248();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E5268();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6118();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ItemMetadata();
  v13 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5228, &unk_1CFA189E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v52 - v24;
  v26 = type metadata accessor for VFSItem(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v58 = &v52 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v52 - v34;
  v59 = a1;
  sub_1CEFCCBDC(a1, v21, &qword_1EC4C5228, &unk_1CFA189E0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v37 = *(*(v36 - 8) + 48);
  if (v37(v21, 1, v36) == 1)
  {
    sub_1CEFCCC44(v21, &qword_1EC4C5228, &unk_1CFA189E0);
    (*(v27 + 56))(v25, 1, 1, v26);
  }

  else
  {
    if (v21[*(v36 + 56)])
    {
      v38 = 1;
    }

    else
    {
      sub_1CEFDA2E4(v21, v25, type metadata accessor for VFSItem);
      v38 = 0;
    }

    (*(v27 + 56))(v25, v38, 1, v26);
    sub_1CEFCCC44(v21, &qword_1EC4C5220, &qword_1CFA0A270);
    if ((*(v27 + 48))(v25, 1, v26) != 1)
    {
      sub_1CEFDA05C(v25, v35, type metadata accessor for VFSItem);
      sub_1CEFDA05C(v35, v65, type metadata accessor for VFSItem);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  sub_1CEFCCC44(v25, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if (((v64 >> 58) & 0x3C | (v64 >> 1) & 3) != 3)
  {
LABEL_19:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF927324(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v49 = v60;
    v50 = v63;
    sub_1CF9E57D8();
    v51 = sub_1CF9E50D8();
    (*(v62 + 8))(v49, v50);
    *v65 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_1CEFCCBDC(v59, v18, &qword_1EC4C5228, &unk_1CFA189E0);
  if (v37(v18, 1, v36) == 1)
  {
    sub_1CEFCCC44(v18, &qword_1EC4C5228, &unk_1CFA189E0);
    goto LABEL_19;
  }

  sub_1CEFDA2E4(v18, v30, type metadata accessor for VFSItem);
  sub_1CEFCCC44(v18, &qword_1EC4C5220, &qword_1CFA0A270);
  v39 = v58;
  sub_1CEFDA05C(v30, v58, type metadata accessor for VFSItem);
  v40 = v57;
  sub_1CEFDA2E4(v39 + *(v26 + 28), v57, type metadata accessor for ItemMetadata);
  v41 = v40 + *(v56 + 28);
  result = sub_1CF9E5C98();
  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v43 < 9.22337204e18)
  {
    is_busy_date = fpfs_is_busy_date();
    sub_1CEFD5398(v40, type metadata accessor for ItemMetadata);
    if (is_busy_date)
    {
      v45 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v46 = sub_1CF9E6108();
      v47 = sub_1CF9E7298();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1CEFC7000, v46, v47, "🏗 Forcing busy item return for URL resolution", v48, 2u);
        MEMORY[0x1D386CDC0](v48, -1, -1);
      }

      (*(v53 + 8))(v55, v54);
      sub_1CEFDA05C(v39, v65, type metadata accessor for VFSItem);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_1CEFD5398(v39, type metadata accessor for VFSItem);
    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

char *sub_1CF913458(unint64_t a1)
{
  v2 = sub_1CF9E5A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v308 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v11 = &v308 - v10;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
      v164 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v165 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v166 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v317[0] = 0;
      v317[1] = 0xE000000000000000;
      v15 = v164;
      sub_1CF9E7948();

      v317[0] = 0xD000000000000010;
      v317[1] = 0x80000001CFA55EB0;
      v315 = v165;
      v316 = v166;
      v169 = VFSItemID.description.getter(v167, v168);
      MEMORY[0x1D3868CC0](v169);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v19 = [v15 description];
      goto LABEL_71;
    case 2uLL:
      v24 = v8;
      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
      v124 = swift_projectBox();
      v125 = *v124;
      v126 = *(v124 + 1);
      v127 = *&v124[*(v123 + 64)];
      (*(v3 + 16))(v11, &v124[*(v123 + 48)], v24);
      v317[0] = 0;
      v317[1] = 0xE000000000000000;

      v28 = v127;
      sub_1CF9E7948();

      strcpy(v317, "coordination(");
      HIWORD(v317[1]) = -4864;
      MEMORY[0x1D3868CC0](v125, v126);

      MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
      v128 = sub_1CF9E5928();
      v129 = [v128 fp_shortDescription];

      v130 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v132 = v131;

      MEMORY[0x1D3868CC0](v130, v132);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v34 = [v28 description];
      goto LABEL_83;
    case 3uLL:
      v151 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v152 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v153 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v317, "itemID->URL(");
      BYTE5(v317[1]) = 0;
      HIWORD(v317[1]) = -5120;
      v315 = v152;
      v316 = v153;
      v15 = v151;
      v155 = VFSItemID.description.getter(v15, v154);
      MEMORY[0x1D3868CC0](v155);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v19 = [v15 description];
      goto LABEL_71;
    case 4uLL:
      v98 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v99 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (v99 == 255)
      {
        v317[0] = 0xD00000000000001ALL;
        v317[1] = 0x80000001CFA55E70;
      }

      else
      {
        v100 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
        strcpy(v317, "enumeration(");
        BYTE5(v317[1]) = 0;
        HIWORD(v317[1]) = -5120;
        v315 = v100;
        v316 = v99;
        v101 = VFSItemID.description.getter(v8, v9);
        MEMORY[0x1D3868CC0](v101);

        MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      }

      goto LABEL_27;
    case 5uLL:
      v98 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v189 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (v189 == 255)
      {
        v317[0] = 0xD00000000000001BLL;
        v317[1] = 0x80000001CFA55E50;
      }

      else
      {
        v190 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
        strcpy(v317, "itemCreation(");
        HIWORD(v317[1]) = -4864;
        v315 = v190;
        v316 = v189;
        v191 = VFSItemID.description.getter(v8, v9);
        MEMORY[0x1D3868CC0](v191);

        MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      }

LABEL_27:
      v102 = [v98 description];
      goto LABEL_92;
    case 6uLL:
      v24 = v8;
      v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v199 = swift_projectBox();
      v200 = *(v199 + *(v198 + 48));
      (*(v3 + 16))(v11, v199, v24);
      strcpy(v317, "eviction(");
      WORD1(v317[1]) = 0;
      HIDWORD(v317[1]) = -385875968;
      v28 = v200;
      v201 = sub_1CF9E5928();
      v202 = [v201 fp_shortDescription];

      v203 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v205 = v204;

      MEMORY[0x1D3868CC0](v203, v205);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v34 = [v28 description];
      goto LABEL_83;
    case 7uLL:
      v24 = v8;
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v157 = swift_projectBox();
      v158 = *(v157 + *(v156 + 48));
      (*(v3 + 16))(v11, v157, v24);
      v317[0] = 0x676E496563726F66;
      v317[1] = 0xEF286E6F69747365;
      v28 = v158;
      v159 = sub_1CF9E5928();
      v160 = [v159 fp_shortDescription];

      v161 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v163 = v162;

      MEMORY[0x1D3868CC0](v161, v163);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v34 = [v28 description];
      goto LABEL_83;
    case 8uLL:
      v213 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v214 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v215 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v317[0] = 0;
      v317[1] = 0xE000000000000000;
      v15 = v213;
      sub_1CF9E7948();

      v317[0] = 0xD000000000000018;
      v317[1] = 0x80000001CFA55EF0;
      v315 = v214;
      v316 = v215;
      v218 = VFSItemID.description.getter(v216, v217);
      MEMORY[0x1D3868CC0](v218);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v19 = [v15 description];
      goto LABEL_71;
    case 9uLL:
      v116 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v117 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v118 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v317, "eviction(");
      WORD1(v317[1]) = 0;
      HIDWORD(v317[1]) = -385875968;
      v315 = v117;
      v316 = v118;
      v15 = v116;
      v120 = VFSItemID.description.getter(v15, v119);
      MEMORY[0x1D3868CC0](v120);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v19 = [v15 description];
      goto LABEL_71;
    case 0xAuLL:
      v208 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v209 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v210 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v317[0] = 0xD000000000000010;
      v317[1] = 0x80000001CFA55E30;
      v315 = v209;
      v316 = v210;
      v15 = v208;
      v212 = VFSItemID.description.getter(v15, v211);
      MEMORY[0x1D3868CC0](v212);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v19 = [v15 description];
      goto LABEL_71;
    case 0xBuLL:
      v96 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v97 = 0xEB0000000028646ELL;
      goto LABEL_44;
    case 0xCuLL:
      v111 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v112 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v113 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v317, "pinItem(");
      BYTE1(v317[1]) = 0;
      WORD1(v317[1]) = 0;
      HIDWORD(v317[1]) = -402653184;
      v315 = v112;
      v316 = v113;
      v15 = v111;
      v115 = VFSItemID.description.getter(v15, v114);
      MEMORY[0x1D3868CC0](v115);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v19 = [v15 description];
      goto LABEL_71;
    case 0xDuLL:
      v193 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v194 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v195 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v317, "unpinItem(");
      BYTE3(v317[1]) = 0;
      HIDWORD(v317[1]) = -369098752;
      v315 = v194;
      v316 = v195;
      v15 = v193;
      v197 = VFSItemID.description.getter(v15, v196);
      MEMORY[0x1D3868CC0](v197);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v19 = [v15 description];
      goto LABEL_71;
    case 0xEuLL:
      v314 = &v308 - v10;
      v68 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v69 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v317, "detachRoots(");
      BYTE5(v317[1]) = 0;
      HIWORD(v317[1]) = -5120;
      if (v68 >> 62)
      {
        v305 = v8;
        v306 = v68;
        v307 = sub_1CF9E7818();
        v68 = v306;
        v70 = v307;
        v8 = v305;
      }

      else
      {
        v70 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v71 = MEMORY[0x1E69E7CC0];
      if (!v70)
      {
        goto LABEL_89;
      }

      v72 = v68;
      v310 = v69;
      v313 = v8;
      v315 = MEMORY[0x1E69E7CC0];
      result = sub_1CEFE95CC(0, v70 & ~(v70 >> 63), 0);
      if (v70 < 0)
      {
        __break(1u);
      }

      else
      {
        v73 = 0;
        v71 = v315;
        v74 = v72;
        v311 = v72 & 0xC000000000000001;
        v312 = v72;
        v75 = (v3 + 8);
        do
        {
          if (v311)
          {
            v76 = MEMORY[0x1D3869C30](v73, v74);
          }

          else
          {
            v76 = v74[v73 + 4];
          }

          v77 = v76;
          v78 = [v77 knownFolder];
          v79 = v314;
          sub_1CF9E59D8();

          v80 = sub_1CF9E5928();
          v81 = [v80 fp_shortDescription];

          v82 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v84 = v83;

          (*v75)(v79, v313);
          v315 = v71;
          v86 = *(v71 + 16);
          v85 = *(v71 + 24);
          if (v86 >= v85 >> 1)
          {
            sub_1CEFE95CC((v85 > 1), v86 + 1, 1);
            v71 = v315;
          }

          ++v73;
          *(v71 + 16) = v86 + 1;
          v87 = v71 + 16 * v86;
          *(v87 + 32) = v82;
          *(v87 + 40) = v84;
          v74 = v312;
        }

        while (v70 != v73);
        v69 = v310;
LABEL_89:
        v315 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
        sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
        v298 = sub_1CF9E67D8();
        v300 = v299;

        MEMORY[0x1D3868CC0](v298, v300);

        MEMORY[0x1D3868CC0](981033504, 0xE400000000000000);
        v102 = [v69 description];
LABEL_92:
        v301 = v102;
        v302 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v304 = v303;

        MEMORY[0x1D3868CC0](v302, v304);
LABEL_93:

        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        return v317[0];
      }

      return result;
    case 0xFuLL:
      v133 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v134 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v317, "attachRoots(");
      BYTE5(v317[1]) = 0;
      HIWORD(v317[1]) = -5120;
      v135 = *(v133 + 16);
      v136 = MEMORY[0x1E69E7CC0];
      if (v135)
      {
        v309 = v134;
        v313 = v8;
        v314 = &v308 - v10;
        v315 = MEMORY[0x1E69E7CC0];
        sub_1CEFE95CC(0, v135, 0);
        v136 = v315;
        v138 = *(v3 + 16);
        v137 = v3 + 16;
        v139 = v133 + ((*(v137 + 64) + 32) & ~*(v137 + 64));
        v311 = *(v137 + 56);
        v312 = v138;
        v310 = (v137 - 8);
        do
        {
          v141 = v313;
          v140 = v314;
          v142 = v137;
          (v312)(v314, v139, v313);
          v143 = sub_1CF9E5928();
          v144 = [v143 fp_shortDescription];

          v145 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v147 = v146;

          (*v310)(v140, v141);
          v315 = v136;
          v149 = *(v136 + 16);
          v148 = *(v136 + 24);
          if (v149 >= v148 >> 1)
          {
            sub_1CEFE95CC((v148 > 1), v149 + 1, 1);
            v136 = v315;
          }

          *(v136 + 16) = v149 + 1;
          v150 = v136 + 16 * v149;
          *(v150 + 32) = v145;
          *(v150 + 40) = v147;
          v139 += v311;
          --v135;
          v137 = v142;
        }

        while (v135);
        v134 = v309;
      }

      v315 = v136;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
      sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
      v295 = sub_1CF9E67D8();
      v297 = v296;

      MEMORY[0x1D3868CC0](v295, v297);

      MEMORY[0x1D3868CC0](981033504, 0xE400000000000000);
      v102 = [v134 description];
      goto LABEL_92;
    case 0x10uLL:
      v56 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v51 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v52 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v53 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x19);
      strcpy(v317, "ignoreItem(");
      HIDWORD(v317[1]) = -352321536;
      v57 = v56;
      sub_1CF48034C(v51, v52, v53);
      v58 = sub_1CF905264(v51, v52 | (v53 << 8));
      MEMORY[0x1D3868CC0](v58);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v59 = [v57 description];
      goto LABEL_74;
    case 0x11uLL:
      v171 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v51 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v52 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v53 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x19);
      strcpy(v317, "unignoreItem(");
      HIWORD(v317[1]) = -4864;
      v57 = v171;
      sub_1CF48034C(v51, v52, v53);
      v172 = sub_1CF905264(v51, v52 | (v53 << 8));
      MEMORY[0x1D3868CC0](v172);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v59 = [v57 description];
      goto LABEL_74;
    case 0x12uLL:
      v206 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v51 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v52 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v53 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v317[0] = 0xD000000000000011;
      v317[1] = 0x80000001CFA55E90;
      v57 = v206;
      sub_1CF48034C(v51, v52, v53);
      v207 = sub_1CF905264(v51, v52 | (v53 << 8));
      MEMORY[0x1D3868CC0](v207);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v59 = [v57 description];
      goto LABEL_74;
    case 0x13uLL:
      v258 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v51 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v52 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v53 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v317[0] = 0x6D6574496B6C7562;
      v317[1] = 0xEF2865676E616843;
      v57 = v258;
      sub_1CF48034C(v51, v52, v53);
      v259 = sub_1CF905264(v51, v52 | (v53 << 8));
      MEMORY[0x1D3868CC0](v259);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v59 = [v57 description];
LABEL_74:
      v260 = v59;
      v261 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v263 = v262;

      MEMORY[0x1D3868CC0](v261, v263);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      goto LABEL_75;
    case 0x14uLL:
      v24 = v8;
      v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v182 = swift_projectBox();
      v183 = *(v182 + *(v181 + 48));
      (*(v3 + 16))(v11, v182, v24);
      strcpy(v317, "trashItem(");
      BYTE3(v317[1]) = 0;
      HIDWORD(v317[1]) = -369098752;
      v28 = v183;
      v184 = sub_1CF9E5928();
      v185 = [v184 fp_shortDescription];

      v186 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v188 = v187;

      MEMORY[0x1D3868CC0](v186, v188);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v34 = [v28 description];
      goto LABEL_83;
    case 0x15uLL:
      v51 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v52 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v53 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v54 = 0x80000001CFA55E10;
      v55 = 0xD00000000000001BLL;
      goto LABEL_51;
    case 0x16uLL:
      v240 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v241 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v242 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v317, "uploadBarrier(");
      HIBYTE(v317[1]) = -18;
      v315 = v241;
      v316 = v242;
      v15 = v240;
      v244 = VFSItemID.description.getter(v15, v243);
      MEMORY[0x1D3868CC0](v244);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v19 = [v15 description];
      goto LABEL_71;
    case 0x17uLL:
      v278 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v317[0] = 0xD000000000000011;
      v317[1] = 0x80000001CFA55DC0;
      v102 = [v278 description];
      goto LABEL_92;
    case 0x18uLL:
      v122 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v317[0] = 0xD00000000000001ALL;
      v317[1] = 0x80000001CFA55D90;
      v102 = [v122 description];
      goto LABEL_92;
    case 0x19uLL:
      v121 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v317[0] = 0xD000000000000019;
      v317[1] = 0x80000001CFA55D70;
      v102 = [v121 description];
      goto LABEL_92;
    case 0x1AuLL:
      v292 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v317[0] = 0xD00000000000001ELL;
      v317[1] = 0x80000001CFA55D50;
      if (v292)
      {
        v293 = [v292 description];
        v294 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      }

      else
      {
        v294 = 0x29656E6F6E28;
      }

      v170 = v294;
      goto LABEL_81;
    case 0x1BuLL:
      return 0xD000000000000016;
    case 0x1CuLL:
      return 0xD000000000000019;
    case 0x1DuLL:
      v20 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v21 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v22 = 0x80000001CFA55CD0;
      v23 = 0xD000000000000016;
      goto LABEL_80;
    case 0x1EuLL:
      v219 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1CEFD09A0(v219);
      v220 = sub_1CEFD11AC(v219);
      sub_1CEFD0A98(v219);
      return v220;
    case 0x1FuLL:
      v96 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v97 = 0xEF286B726F57646ELL;
LABEL_44:
      v317[0] = 0x756F72676B636162;
      v317[1] = v97;
      v170 = sub_1CF7F5068(v96);
      goto LABEL_81;
    case 0x20uLL:
      v221 = v8;
      v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
      v223 = swift_projectBox();
      v224 = *(v223 + *(v222 + 48));
      v225 = *(v223 + *(v222 + 64));
      (*(v3 + 16))(v7, v223, v221);
      strcpy(v317, "itemID(");
      v317[1] = 0xE700000000000000;
      v226 = v225;
      v227 = sub_1CF9E5928();
      v228 = [v227 fp_shortDescription];

      v229 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v231 = v230;

      MEMORY[0x1D3868CC0](v229, v231);

      MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA55C70);
      if (v224)
      {
        v232 = 1702195828;
      }

      else
      {
        v232 = 0x65736C6166;
      }

      if (v224)
      {
        v233 = 0xE400000000000000;
      }

      else
      {
        v233 = 0xE500000000000000;
      }

      MEMORY[0x1D3868CC0](v232, v233);

      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v234 = [v226 description];
      v235 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v237 = v236;

      MEMORY[0x1D3868CC0](v235, v237);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      v238 = v317[0];
      (*(v3 + 8))(v7, v221);
      return v238;
    case 0x21uLL:
      v24 = v8;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v89 = swift_projectBox();
      v90 = *(v89 + *(v88 + 48));
      (*(v3 + 16))(v11, v89, v24);
      v317[0] = 0xD000000000000010;
      v317[1] = 0x80000001CFA55C30;
      v28 = v90;
      v91 = sub_1CF9E5928();
      v92 = [v91 fp_shortDescription];

      v93 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v95 = v94;

      MEMORY[0x1D3868CC0](v93, v95);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v34 = [v28 description];
      goto LABEL_83;
    case 0x22uLL:
      v51 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v52 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v53 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v54 = 0x80000001CFA55DE0;
      v55 = 0xD000000000000025;
LABEL_51:
      v317[0] = v55;
      v317[1] = v54;
      sub_1CF48034C(v51, v52, v53);
      v192 = sub_1CF905264(v51, v52 | (v53 << 8));
      MEMORY[0x1D3868CC0](v192);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
LABEL_75:
      sub_1CF1E53F8(v51, v52, v53);
      return v317[0];
    case 0x23uLL:
      v24 = v8;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
      v36 = swift_projectBox();
      v37 = *(v36 + *(v35 + 48));
      v38 = *(v36 + *(v35 + 64));
      (*(v3 + 16))(v11, v36, v24);
      strcpy(v317, "itemForURL(");
      HIDWORD(v317[1]) = -352321536;
      v28 = v38;
      v39 = sub_1CF9E5928();
      v40 = [v39 fp_shortDescription];

      v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v43 = v42;

      MEMORY[0x1D3868CC0](v41, v43);

      MEMORY[0x1D3868CC0](0x6E6F6974706F202CLL, 0xED00007830203A73);
      v315 = v37;
      sub_1CF66DD74();
      v44 = sub_1CF9E6B28();
      MEMORY[0x1D3868CC0](v44);

      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v34 = [v28 description];
      goto LABEL_83;
    case 0x24uLL:
      v45 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v46 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v47 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v317, "itemForURL(");
      HIDWORD(v317[1]) = -352321536;
      v315 = v46;
      v316 = v47;
      v15 = v45;
      v49 = VFSItemID.description.getter(v15, v48);
      MEMORY[0x1D3868CC0](v49);

      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v19 = [v15 description];
      goto LABEL_71;
    case 0x25uLL:
      v24 = v8;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v26 = swift_projectBox();
      v27 = *(v26 + *(v25 + 48));
      (*(v3 + 16))(v11, v26, v24);
      v317[0] = 0xD000000000000018;
      v317[1] = 0x80000001CFA55C50;
      v28 = v27;
      v29 = sub_1CF9E5928();
      v30 = [v29 fp_shortDescription];

      v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v33 = v32;

      MEMORY[0x1D3868CC0](v31, v33);

      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v34 = [v28 description];
      goto LABEL_83;
    case 0x26uLL:
      v24 = v8;
      v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
      v280 = swift_projectBox();
      v281 = *(v280 + *(v279 + 48));
      v282 = *(v280 + *(v279 + 64));
      (*(v3 + 16))(v11, v280, v24);
      v317[0] = 0;
      v317[1] = 0xE000000000000000;
      v28 = v282;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x636E7953656C6966, 0xEE00286573756150);
      v283 = sub_1CF9E5928();
      v284 = [v283 fp_shortDescription];

      v285 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v287 = v286;

      MEMORY[0x1D3868CC0](v285, v287);

      MEMORY[0x1D3868CC0](0x697661686562202CLL, 0xEC000000203A726FLL);
      v315 = v281;
      type metadata accessor for FPPauseBehavior(0);
      sub_1CF9E7B58();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v34 = [v28 description];
      goto LABEL_83;
    case 0x27uLL:
      v24 = v8;
      v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
      v250 = swift_projectBox();
      v251 = *(v250 + *(v249 + 48));
      v252 = *(v250 + *(v249 + 64));
      (*(v3 + 16))(v11, v250, v24);
      v317[0] = 0;
      v317[1] = 0xE000000000000000;
      v28 = v252;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x636E7953656C6966, 0xEF28656D75736552);
      v253 = sub_1CF9E5928();
      v254 = [v253 fp_shortDescription];

      v255 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v257 = v256;

      MEMORY[0x1D3868CC0](v255, v257);

      MEMORY[0x1D3868CC0](0x697661686562202CLL, 0xEC000000203A726FLL);
      v315 = v251;
      type metadata accessor for FPResumeBehavior(0);
      sub_1CF9E7B58();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v34 = [v28 description];
      goto LABEL_83;
    case 0x28uLL:
      v24 = v8;
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v104 = swift_projectBox();
      v105 = *(v104 + *(v103 + 48));
      (*(v3 + 16))(v11, v104, v24);
      v317[0] = 0xD000000000000017;
      v317[1] = 0x80000001CFA55C10;
      v28 = v105;
      v106 = sub_1CF9E5928();
      v107 = [v106 fp_shortDescription];

      v108 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v110 = v109;

      MEMORY[0x1D3868CC0](v108, v110);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v34 = [v28 description];
      goto LABEL_83;
    case 0x29uLL:
      v24 = v8;
      v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v174 = swift_projectBox();
      v175 = *(v174 + *(v173 + 48));
      (*(v3 + 16))(v11, v174, v24);
      v317[0] = 0xD000000000000013;
      v317[1] = 0x80000001CFA55BD0;
      v28 = v175;
      v176 = sub_1CF9E5928();
      v177 = [v176 fp_shortDescription];

      v178 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v180 = v179;

      MEMORY[0x1D3868CC0](v178, v180);

      MEMORY[0x1D3868CC0](981033504, 0xE400000000000000);
      v34 = [v28 description];
      goto LABEL_83;
    case 0x2AuLL:
      v24 = v8;
      v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
      v265 = swift_projectBox();
      v266 = *(v265 + *(v264 + 48));
      v267 = *(v265 + *(v264 + 64));
      (*(v3 + 16))(v11, v265, v24);
      v317[0] = 0;
      v317[1] = 0xE000000000000000;
      v268 = v267;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA55BF0);
      v269 = sub_1CF9E5928();
      v270 = [v269 fp_shortDescription];

      v271 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v273 = v272;

      MEMORY[0x1D3868CC0](v271, v273);

      MEMORY[0x1D3868CC0](0x7963696C6F70202CLL, 0xEA0000000000203ALL);
      v315 = v266;
      type metadata accessor for NSFileManagerUploadLocalVersionConflictPolicy(0);
      sub_1CF9E7B58();
      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v274 = [v268 description];
      v275 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v277 = v276;

      MEMORY[0x1D3868CC0](v275, v277);

      goto LABEL_84;
    case 0x2BuLL:
      v20 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v21 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v22 = 0x80000001CFA55BB0;
      v23 = 0xD000000000000013;
LABEL_80:
      v317[0] = v23;
      v317[1] = v22;
      v315 = v20;
      v316 = v21;
      v170 = VFSItemID.description.getter(v8, v9);
LABEL_81:
      MEMORY[0x1D3868CC0](v170);
      goto LABEL_93;
    case 0x2CuLL:
      v24 = v8;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v61 = swift_projectBox();
      v62 = *(v61 + *(v60 + 48));
      (*(v3 + 16))(v11, v61, v24);
      v317[0] = 0xD000000000000010;
      v317[1] = 0x80000001CFA55B90;
      v28 = v62;
      v63 = sub_1CF9E5928();
      v64 = [v63 fp_shortDescription];

      v65 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v67 = v66;

      MEMORY[0x1D3868CC0](v65, v67);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v34 = [v28 description];
LABEL_83:
      v288 = v34;
      v289 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v291 = v290;

      MEMORY[0x1D3868CC0](v289, v291);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

LABEL_84:
      v238 = v317[0];
      (*(v3 + 8))(v11, v24);
      return v238;
    case 0x2DuLL:
      v239 = 0xD000000000000015;
      if (a1 == 0xB00000000000000ALL)
      {
        v239 = 0xD000000000000018;
      }

      if (a1 == 0xB000000000000002)
      {
        return 0xD00000000000001BLL;
      }

      else
      {
        return v239;
      }

    default:
      v12 = *(a1 + 32);
      v13 = *(a1 + 16);
      v14 = *(a1 + 24);
      v317[0] = 0;
      v317[1] = 0xE000000000000000;
      v15 = v12;
      sub_1CF9E7948();

      v317[0] = 0xD000000000000010;
      v317[1] = 0x80000001CFA55ED0;
      v315 = v13;
      v316 = v14;
      v18 = VFSItemID.description.getter(v16, v17);
      MEMORY[0x1D3868CC0](v18);

      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v19 = [v15 description];
LABEL_71:
      v245 = v19;
      v246 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v248 = v247;

      MEMORY[0x1D3868CC0](v246, v248);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      return v317[0];
  }
}

void *sub_1CF915974(unint64_t a1, uint64_t (*a2)(unint64_t), uint64_t (*a3)(unint64_t))
{
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a1 >> 58) & 0x3C | (a1 >> 1) & 3;
  if (v12 <= 27)
  {
    switch(v12)
    {
      case 21:
        return *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
      case 26:
        return *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      case 27:
        return *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    }
  }

  else
  {
    if (v12 <= 30)
    {
      if (v12 != 28)
      {
        if (v12 == 30)
        {
          v13 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
          sub_1CEFD09A0(v13);
          v14 = a2(v13);
          sub_1CEFD0A98(v13);
          return v14;
        }

        goto LABEL_13;
      }

      return *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    }

    if (v12 == 31)
    {
      return 0;
    }

    if (v12 == 34)
    {
      return *((a1 & 0xFFFFFFFFFFFFFF9) + 0x20);
    }
  }

LABEL_13:
  v16 = v9;
  result = a3(a1);
  if (result)
  {
    v17 = result;
    v18 = [result qos];
    v19 = 0x6000000000000000;
    v20 = 0x4000000000000000;
    if (v18 <= 0x14)
    {
      v20 = (v18 - 17 < 0xFFFFFFF0) << 61;
    }

    if (v18 <= 0x18)
    {
      v19 = v20;
    }

    if (v18 >= 0x21)
    {
      v21 = 0x8000000000000000;
    }

    else
    {
      v21 = v19;
    }

    v22 = [v17 date];
    sub_1CF9E5CB8();

    sub_1CF9E5C98();
    v24 = v23;

    result = (*(v7 + 8))(v11, v16);
    v25 = v24 * 1000000000.0;
    if (COERCE__INT64(fabs(v24 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        return ((v25 & ~(v25 >> 63)) + v21);
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF915C14(uint64_t a1)
{
  swift_weakInit();
  swift_weakAssign();
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5248, &qword_1CFA189F8);
  v4 = swift_allocObject();
  *(v4 + 24) = v3;
  swift_weakInit();
  v5 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5250, &unk_1CFA18A00);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  *(v1 + 16) = v4;
  *(v1 + 24) = v6;
  *(v1 + 32) = v8;
  *(v1 + 40) = v7;
  *(v1 + 48) = v9;
  swift_weakAssign();
  v10 = *(v1 + 32);
  swift_weakAssign();
  v11 = *(v1 + 40);
  result = swift_weakLoadStrong();
  if (result)
  {

    swift_unknownObjectRetain();

    swift_weakAssign();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF915D74(void *a1, int a2, void (*a3)(id), objc_class *a4)
{
  v268 = a3;
  LODWORD(v262) = a2;
  v6 = sub_1CF9E63A8();
  v241 = *(v6 - 8);
  v242 = v6;
  v7 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v240 = &v239 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E53C8();
  v259 = *(v9 - 8);
  v260 = v9;
  v10 = *(v259 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v258 = &v239 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6388();
  v254 = *(v12 - 8);
  v255 = v12;
  v13 = *(v254 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v250 = (&v239 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v251 = &v239 - v16;
  v17 = sub_1CF9E6498();
  v252 = *(v17 - 8);
  v253 = v17;
  v18 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v249 = &v239 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v239 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v239 - v25;
  v27 = sub_1CF9E63D8();
  v247 = *(v27 - 8);
  v248 = v27;
  v28 = *(v247 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v239 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v243 = &v239 - v32;
  v33 = sub_1CF9E6448();
  v256 = *(v33 - 8);
  v257 = v33;
  v34 = *(v256 + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v239 = &v239 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v244 = &v239 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v245 = &v239 - v39;
  v40 = sub_1CF9E73D8();
  v246 = *(v40 - 8);
  v41 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v239 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1CF9E5248();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v263 = &v239 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1CF9E5268();
  v48 = *(v47 - 1);
  v265 = v47;
  v266 = v48;
  isa = v48[8].isa;
  MEMORY[0x1EEE9AC00](v47);
  v264 = &v239 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = a1;
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v279 = v295;
    v280 = v296;
    v275 = v292;
    v276 = v293;
    v277 = *v294;
    v278 = *&v294[16];
    v273 = aBlock;
    v274 = v291;
    v287 = v295;
    v288 = v296;
    v284 = v292;
    v285 = v293;
    v286[0] = *v294;
    v286[1] = *&v294[16];
    v281 = v297;
    v289 = v297;
    v282 = aBlock;
    v283 = v291;
    if (sub_1CF2B971C(&v282))
    {
      sub_1CEFCCC44(&v273, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    v62 = nullsub_1(&v282);
    v63 = *v62;
    v64 = *(v62 + 8);
    v65 = *(v62 + 112);

    v66 = sub_1CEFCCC44(v62 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v64 != 2 || v63)
    {
      v69 = v268;
      if (v64 == 2 && v63 == 1)
      {
        v68 = *MEMORY[0x1E6967280];
        if (v65)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *&v271[0] = 0x2F73662F70665F5FLL;
        *(&v271[0] + 1) = 0xE800000000000000;
        v269 = v63;
        v270 = v64;
        v112 = VFSItemID.description.getter(v66, v67);
        MEMORY[0x1D3868CC0](v112);

        v68 = sub_1CF9E6888();

        if (v65)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v68 = *MEMORY[0x1E6967258];
      v69 = v268;
      if (v65)
      {
LABEL_16:
        v70 = v65;
LABEL_53:
        v113 = v65;
        (v69)(v70);

        v109 = v298;
        goto LABEL_72;
      }
    }

    v70 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_53;
  }

LABEL_4:
  v267 = a4;

  *&v273 = a1;
  v53 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v286 + 9) = *&v294[9];
    v285 = v293;
    v286[0] = *v294;
    v283 = v291;
    v284 = v292;
    v282 = aBlock;
    if (!v294[24])
    {
      v71 = *(&v286[0] + 1);
      v72 = *(&v284 + 1);
      v73 = v284;
      v74 = *(&v283 + 1);
      v75 = v283;
      v76 = *(&v282 + 1);
      v266 = v282;

      sub_1CF1D56D0(v76, v75, v74, v73, v72);
      if (v71)
      {
        v77 = v71;
        v78 = v268;
        v79 = v266;
      }

      else
      {
        v110 = objc_opt_self();
        v79 = v266;
        v77 = [v110 fileProviderErrorForNonExistentItemWithIdentifier_];
        v78 = v268;
      }

      v111 = v71;
      (v78)(v77);

      v109 = v273;
      goto LABEL_72;
    }

    sub_1CEFCCC44(&v282, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v271[0] = a1;
  v54 = a1;
  if (swift_dynamicCast())
  {
    v279 = v295;
    v280 = v296;
    v275 = v292;
    v276 = v293;
    v277 = *v294;
    v278 = *&v294[16];
    v273 = aBlock;
    v274 = v291;
    v287 = v295;
    v288 = v296;
    v284 = v292;
    v285 = v293;
    v286[0] = *v294;
    v286[1] = *&v294[16];
    v281 = v297;
    v289 = v297;
    v282 = aBlock;
    v283 = v291;
    v55 = sub_1CF2B971C(&v282);
    switch(v55)
    {
      case 5:
        nullsub_1(&v282);
        v87 = *&v271[0];
LABEL_30:

        v89 = v268;
        goto LABEL_31;
      case 3:
        v80 = nullsub_1(&v282);
        v81 = *v80;
        v82 = *(v80 + 8);
        sub_1CEFCCC44(&v273, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v262)
        {
          LODWORD(v269) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF927324(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v83 = v258;
          v84 = v260;
          sub_1CF9E57D8();
          v85 = sub_1CF9E53A8();
          v86 = v259;
LABEL_47:
          (v86[1].isa)(v83, v84);
          (v268)(v85);

          v109 = *&v271[0];
LABEL_72:

          return;
        }

        LODWORD(v264) = v82;
        v265 = v81;
        v114 = v261;
        v115 = *(*(*(v261 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v116 = swift_dynamicCastClassUnconditional();
        v117 = swift_allocObject();
        v118 = v267;
        v117[2].isa = v268;
        v117[3].isa = v118;
        v266 = v117;
        v117[4].isa = v114;
        v262 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v263 = v116;
        v119 = *(v116 + 216);
        v269 = MEMORY[0x1E69E7CC0];
        v260 = sub_1CF927324(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

        v268 = v115;

        v120 = v119;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v121 = sub_1CF9E73E8();

        (*(v246 + 8))(v43, v40);
        qos_class_self();
        sub_1CF9E63B8();
        v123 = v247;
        v122 = v248;
        v124 = *(v247 + 48);
        if (v124(v24, 1, v248) == 1)
        {
          (*(v123 + 104))(v31, *MEMORY[0x1E69E7FA0], v122);
          if (v124(v24, 1, v122) != 1)
          {
            sub_1CEFCCC44(v24, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v123 + 32))(v31, v24, v122);
        }

        ObjectType = swift_getObjectType();
        v140 = v244;
        sub_1CF9E6428();
        v141 = swift_allocObject();
        v142 = v265;
        v143 = v266;
        *(v141 + 16) = v263;
        *(v141 + 24) = v142;
        *(v141 + 32) = v264;
        *(v141 + 40) = 0u;
        *(v141 + 56) = 0u;
        *(v141 + 72) = 0u;
        *(v141 + 88) = 0u;
        *(v141 + 104) = 0u;
        *(v141 + 120) = 0u;
        *(v141 + 136) = 0;
        *(v141 + 144) = 1;
        *(v141 + 152) = v121;
        *(v141 + 160) = sub_1CF77ECE8;
        *(v141 + 168) = v143;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v140, sub_1CF72A328, v141);

        (*(v256 + 8))(v140, v257);
        v144 = v249;
        sub_1CF9E6478();
        v145 = v251;
        sub_1CEFD5B64(v251);
        v146 = v250;
        sub_1CEFD5BD8(v250);
        MEMORY[0x1D3869770](v144, v145, v146, ObjectType);
        v147 = *(v254 + 8);
        v148 = v146;
        v149 = v255;
        v147(v148, v255);
        v147(v145, v149);
        (*(v252 + 8))(v144, v253);
        goto LABEL_66;
      case 1:
        v56 = nullsub_1(&v282);
        v57 = *v56;
        v58 = *(v56 + 8);
        v59 = *(v56 + 24);
        v60 = *(v56 + 48);
        v61 = *(v56 + 56);

        sub_1CF480620(v60, v61);

        if (v262)
        {
          sub_1CF9E5128();
LABEL_46:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF927324(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v83 = v264;
          v84 = v265;
          sub_1CF9E57D8();
          v85 = sub_1CF9E50D8();
          v86 = v266;
          goto LABEL_47;
        }

        LODWORD(v264) = v58;
        v265 = v57;
        v125 = v261;
        v126 = *(*(*(v261 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v127 = swift_dynamicCastClassUnconditional();
        v128 = swift_allocObject();
        v129 = v267;
        v128[2].isa = v268;
        v128[3].isa = v129;
        v266 = v128;
        v128[4].isa = v125;
        v262 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v263 = v127;
        v130 = *(v127 + 216);
        v269 = MEMORY[0x1E69E7CC0];
        sub_1CF927324(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
        v268 = v126;

        v131 = v130;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v132 = sub_1CF9E73E8();

        (*(v246 + 8))(v43, v40);
        qos_class_self();
        sub_1CF9E63B8();
        v134 = v247;
        v133 = v248;
        v135 = *(v247 + 48);
        if (v135(v26, 1, v248) == 1)
        {
          (*(v134 + 104))(v243, *MEMORY[0x1E69E7FA0], v133);
          if (v135(v26, 1, v133) != 1)
          {
            sub_1CEFCCC44(v26, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v134 + 32))(v243, v26, v133);
        }

        v150 = swift_getObjectType();
        v151 = v245;
        sub_1CF9E6428();
        v152 = swift_allocObject();
        v153 = v265;
        v154 = v266;
        *(v152 + 16) = v263;
        *(v152 + 24) = v153;
        *(v152 + 32) = v264;
        *(v152 + 40) = 0u;
        *(v152 + 56) = 0u;
        *(v152 + 72) = 0u;
        *(v152 + 88) = 0u;
        *(v152 + 104) = 0u;
        *(v152 + 120) = 0u;
        *(v152 + 136) = 0;
        *(v152 + 144) = 1;
        *(v152 + 152) = v132;
        *(v152 + 160) = sub_1CF77ECF4;
        *(v152 + 168) = v154;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v151, sub_1CF72A328, v152);

        (*(v256 + 8))(v151, v257);
        v155 = v249;
        sub_1CF9E6478();
        v156 = v251;
        sub_1CEFD5B64(v251);
        v157 = v250;
        sub_1CEFD5BD8(v250);
        MEMORY[0x1D3869770](v155, v156, v157, v150);
        v158 = *(v254 + 8);
        v159 = v157;
        v160 = v255;
        v158(v159, v255);
        v158(v156, v160);
        (*(v252 + 8))(v155, v253);
LABEL_66:
        sub_1CF9E7448();

        swift_unknownObjectRelease();
        v109 = *&v271[0];
        goto LABEL_72;
    }

    sub_1CEFCCC44(&v273, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v273 = a1;
  v88 = a1;
  if (swift_dynamicCast())
  {
    *(v286 + 9) = *&v294[9];
    v284 = v292;
    v285 = v293;
    v286[0] = *v294;
    v282 = aBlock;
    v283 = v291;
    if (v294[24] == 5)
    {
      v87 = v273;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v282, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v93 = a1;
  if (swift_dynamicCast())
  {
    if (v282 <= 2u)
    {
      v89 = v268;
      if (v282 - 1 < 2)
      {

        sub_1CF9E5118();
        goto LABEL_32;
      }

LABEL_31:
      sub_1CF9E50E8();
LABEL_32:
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF927324(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      v91 = v264;
      v90 = v265;
      sub_1CF9E57D8();
      v92 = sub_1CF9E50D8();
      (v266[1].isa)(v91, v90);
      (v89)(v92);

      return;
    }

    v89 = v268;
    if (v282 != 4)
    {

      sub_1CF9E5198();
      goto LABEL_32;
    }

    sub_1CF9E51A8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF927324(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v106 = v264;
    v105 = v265;
    sub_1CF9E57D8();
    v107 = sub_1CF9E50D8();
    (v266[1].isa)(v106, v105);
    (v89)(v107);
LABEL_71:

    v109 = aBlock;
    goto LABEL_72;
  }

  *&v282 = a1;
  v94 = a1;
  if (swift_dynamicCast())
  {
    if ((v291 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v291);
      LODWORD(v273) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF927324(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v136 = v258;
      v137 = v260;
      sub_1CF9E57D8();
      v138 = sub_1CF9E53A8();
      (*(v259 + 8))(v136, v137);
      (v268)(v138);

      v109 = v282;
      goto LABEL_72;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v282 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1CF9FA450;
    v96 = *MEMORY[0x1E696A578];
    *(v95 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v95 + 40) = v97;
    v98 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v99 = FPLocv();

    v100 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v102 = v101;

    *(v95 + 72) = MEMORY[0x1E69E6158];
    *(v95 + 48) = v100;
    *(v95 + 56) = v102;
    sub_1CF4E04E8(v95);
    swift_setDeallocating();
    sub_1CEFCCC44(v95 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF927324(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v103 = aBlock;
    v104 = aBlock;
LABEL_84:
    (v268)(v104);

    return;
  }

  *&v271[0] = a1;
  v108 = a1;
  if (swift_dynamicCast())
  {
    v279 = v295;
    v280 = v296;
    v275 = v292;
    v276 = v293;
    v277 = *v294;
    v278 = *&v294[16];
    v273 = aBlock;
    v274 = v291;
    v287 = v295;
    v288 = v296;
    v284 = v292;
    v285 = v293;
    v286[0] = *v294;
    v286[1] = *&v294[16];
    v281 = v297;
    v289 = v297;
    v282 = aBlock;
    v283 = v291;
    if (sub_1CF2B971C(&v282) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_46;
    }

    sub_1CEFCCC44(&v273, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v161 = a1;
  if (swift_dynamicCast())
  {
    v162 = FPDomainUnavailableError();
    if (!v162)
    {
LABEL_117:
      __break(1u);
LABEL_118:
      MEMORY[0x1EEE9AC00](v162);
      *(&v239 - 2) = v52;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v239 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v107 = v162;
    v268();
    goto LABEL_71;
  }

  v269 = a1;
  v163 = a1;
  if (swift_dynamicCast())
  {
    v279 = v295;
    v280 = v296;
    v275 = v292;
    v276 = v293;
    v277 = *v294;
    v278 = *&v294[16];
    v273 = aBlock;
    v274 = v291;
    v287 = v295;
    v288 = v296;
    v284 = v292;
    v285 = v293;
    v286[0] = *v294;
    v286[1] = *&v294[16];
    v281 = v297;
    v289 = v297;
    v282 = aBlock;
    v283 = v291;
    if (sub_1CF2B971C(&v282) == 10)
    {
      v164 = *(nullsub_1(&v282) + 16);
      if (!v164)
      {
        LODWORD(v271[0]) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF927324(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v165 = v258;
        v166 = v260;
        sub_1CF9E57D8();
        v164 = sub_1CF9E53A8();
        (*(v259 + 8))(v165, v166);
      }

      v167 = v268;
      v271[6] = v279;
      v271[7] = v280;
      v272 = v281;
      v271[2] = v275;
      v271[3] = v276;
      v271[4] = v277;
      v271[5] = v278;
      v271[0] = v273;
      v271[1] = v274;
      v168 = *(nullsub_1(v271) + 16);
      (v167)(v164);
      sub_1CEFCCC44(&v273, &unk_1EC4BE320, &unk_1CFA08B50);

      v109 = v269;
      goto LABEL_72;
    }

    sub_1CEFCCC44(&v273, &unk_1EC4BE320, &unk_1CFA08B50);
    v170 = v269;
    goto LABEL_81;
  }

  *&v273 = a1;
  v169 = a1;
  if (swift_dynamicCast())
  {
    v284 = v292;
    v285 = v293;
    v286[0] = *v294;
    *(v286 + 9) = *&v294[9];
    v282 = aBlock;
    v283 = v291;
    sub_1CEFCCC44(&v282, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_83:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF927324(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v174 = v264;
    v173 = v265;
    sub_1CF9E57D8();
    v103 = sub_1CF9E50D8();
    (v266[1].isa)(v174, v173);
    v104 = v103;
    goto LABEL_84;
  }

  *&aBlock = a1;
  v171 = a1;
  v172 = swift_dynamicCast();

  if (v172)
  {
    goto LABEL_83;
  }

  *&v282 = a1;
  v175 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, SDWORD2(aBlock), v291, *(&v291 + 1), v292);
    v170 = v282;
LABEL_81:

    goto LABEL_83;
  }

  *&v282 = a1;
  v176 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v291, SBYTE8(v291));
    v170 = v282;
    goto LABEL_81;
  }

  *&v282 = a1;
  v177 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    v170 = v282;
    goto LABEL_81;
  }

  v178 = sub_1CF9E57E8();
  v179 = [v178 userInfo];
  v180 = sub_1CF9E6638();

  v181 = *MEMORY[0x1E696AA08];
  v182 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v180 + 16))
  {

    goto LABEL_96;
  }

  v184 = sub_1CEFE4328(v182, v183);
  v186 = v185;

  if ((v186 & 1) == 0)
  {
LABEL_96:

    goto LABEL_97;
  }

  sub_1CEFD1104(*(v180 + 56) + 32 * v184, &aBlock);

  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v187 = v282;
    v188 = v267;

    v189 = v178;
    v190 = v187;
    sub_1CF7725F0(v190, v262 & 1, v261, v189, v268, v188);

    return;
  }

LABEL_97:
  v191 = swift_allocObject();
  v192 = [v178 userInfo];
  v52 = sub_1CF9E6638();

  v193 = *MEMORY[0x1E696A750];
  v194 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!v52[2].isa)
  {

    goto LABEL_112;
  }

  v196 = sub_1CEFE4328(v194, v195);
  v198 = v197;

  if ((v198 & 1) == 0)
  {
LABEL_112:

    goto LABEL_113;
  }

  sub_1CEFD1104(v52[7].isa + 32 * v196, &aBlock);

  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_113:
    v209 = v268;
    swift_deallocUninitializedObject();
    (v209)(a1);

    return;
  }

  v191[2] = v282;
  v266 = dispatch_group_create();
  v199 = v191[2];
  if (v199 >> 62)
  {
    goto LABEL_115;
  }

  v200 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v201 = v261;
  if (!v200)
  {
    goto LABEL_121;
  }

  do
  {
    v202 = 0;
    while (1)
    {
      v52 = v266;
      v162 = objc_sync_enter(v52);
      if (v162)
      {
        goto LABEL_118;
      }

      swift_beginAccess();
      v203 = v191[2];
      if ((v203 & 0xC000000000000001) != 0)
      {
        v204 = MEMORY[0x1D3869C30](v202);
        goto LABEL_107;
      }

      if (v202 >= *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v204 = *(v203 + 8 * v202 + 32);
LABEL_107:
      v205 = v204;
      swift_endAccess();
      v206 = objc_sync_exit(v52);
      if (v206)
      {
        MEMORY[0x1EEE9AC00](v206);
        *(&v239 - 2) = v52;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v239 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v52);
      v207 = v52;

      v208 = v205;
      sub_1CF774BF8(v208, v262 & 1, v201, v207, v191, v202);

      if (v200 == ++v202)
      {
        goto LABEL_121;
      }
    }

    __break(1u);
LABEL_115:
    v162 = sub_1CF9E7818();
    if (v162 < 0)
    {
      __break(1u);
      goto LABEL_117;
    }

    v200 = v162;
    v201 = v261;
  }

  while (v162);
LABEL_121:
  if (v262)
  {
    v210 = [v178 userInfo];
    v211 = sub_1CF9E6638();

    v212 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v214 = v213;
    swift_beginAccess();
    v215 = v191[2];
    *(&v291 + 1) = v265;
    *&aBlock = v215;
    sub_1CEFE9EB8(&aBlock, &v282);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v271[0] = v211;
    sub_1CF1D154C(&v282, v212, v214, isUniquelyReferenced_nonNull_native);

    v217 = [v178 domain];
    if (!v217)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v217 = sub_1CF9E6888();
    }

    v218 = [v178 code];
    v219 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v220 = sub_1CF9E6618();

    v221 = [v219 initWithDomain:v217 code:v218 userInfo:v220];

    (v268)(v221);
  }

  else
  {
    v222 = *(*(v261 + 16) + 64);
    v223 = swift_allocObject();
    v223[2] = v178;
    v223[3] = v191;
    v223[4] = v268;
    v223[5] = v267;

    v224 = v222;
    v268 = v178;

    v225 = fpfs_current_log();
    v267 = fpfs_adopt_log();
    v226 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v227;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v228 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v228);

    sub_1CF9E6978();

    v229 = __fp_log_fork();

    *(v226 + 16) = v229;
    v230 = swift_allocObject();
    *(v230 + 16) = v225;
    *(v230 + 24) = v226;
    v264 = v226;
    *(v230 + 32) = v224;
    *(v230 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v230 + 48) = 48;
    *(v230 + 56) = 2;
    *(v230 + 64) = sub_1CF77E684;
    *(v230 + 72) = v223;
    *&v292 = sub_1CF2B9F54;
    *(&v292 + 1) = v230;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v291 = sub_1CEFCA444;
    *(&v291 + 1) = &block_descriptor_798;
    v231 = _Block_copy(&aBlock);
    v263 = v224;
    v265 = v225;

    v232 = v239;
    sub_1CF9E63F8();
    *&v282 = MEMORY[0x1E69E7CC0];
    sub_1CF927324(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v233 = v240;
    v234 = v242;
    sub_1CF9E77B8();
    v235 = v263;
    v236 = v266;
    sub_1CF9E7308();
    _Block_release(v231);
    (*(v241 + 8))(v233, v234);
    (*(v256 + 8))(v232, v257);

    v237 = v267;
    v238 = fpfs_adopt_log();
  }
}

void sub_1CF9183B0(void *a1, void (*a2)(id), uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;

      v8 = a1;
      sub_1CF77A9C8(a1, 0, v7, a2, a3);
    }

    else
    {
      v9 = a1;
      v10 = FPDomainUnavailableError();
      (a2)();
    }
  }

  else
  {
    (a2)();
  }
}

void sub_1CF9184DC(uint64_t a1, void *a2, void (*a3)(uint64_t *, id), uint64_t a4)
{
  v12 = a1;
  if (a2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v8 = swift_allocObject();
      *(v8 + 2) = a3;
      *(v8 + 3) = a4;
      *(v8 + 4) = a1;
      v9 = a2;

      sub_1CF915D74(a2, 0, sub_1CF928300, v8);
    }

    else
    {
      v10 = a2;
      v11 = FPDomainUnavailableError();
      a3(&v12, v11);
    }
  }

  else
  {
    (a3)(&v12);
  }
}

void sub_1CF918630(void *a1, void *a2, void (*a3)(void **, id), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(id))
{
  v17 = a1;
  if (a2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v12 = swift_allocObject();
      *(v12 + 2) = a3;
      *(v12 + 3) = a4;
      *(v12 + 4) = a1;
      v13 = a2;
      v14 = a1;

      sub_1CF915D74(a2, 0, a7, v12);
    }

    else
    {
      v15 = a2;
      v16 = FPDomainUnavailableError();
      a3(&v17, v16);
    }
  }

  else
  {
    (a3)(&v17);
  }
}

void sub_1CF91875C(uint64_t a1, void *a2, void (*a3)(uint64_t *, id), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(id))
{
  v18 = a1;
  if (a2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v14 = swift_allocObject();
      *(v14 + 2) = a3;
      *(v14 + 3) = a4;
      *(v14 + 4) = a1;
      v15 = a2;
      a7(a1);

      sub_1CF915D74(a2, 0, a8, v14);
    }

    else
    {
      v16 = a2;
      v17 = FPDomainUnavailableError();
      a3(&v18, v17);
    }
  }

  else
  {
    (a3)(&v18);
  }
}

void sub_1CF918894(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v21[0] = a1;
  v21[1] = a2;
  v21[2] = a3;
  v22 = a4 & 1;
  if ((a4 & 1) == 0)
  {
    a5(v21);
    return;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;

    sub_1CF7B9A40(a1, a2, a3, 1);
    sub_1CF7850C0(a1, 0, v12, a5, a6);

    v13 = a1;
    v14 = a2;
    v15 = a3;
    v16 = 1;
  }

  else
  {
    v17 = a1;
    v18 = FPDomainUnavailableError();
    if (!v18)
    {
      __break(1u);
      return;
    }

    v19[0] = v18;
    v20 = 1;
    a5(v19);
    sub_1CF7B9940(a1, a2, a3, 1);
    v13 = v19[0];
    v14 = v19[1];
    v15 = v19[2];
    v16 = v20;
  }

  sub_1CF7B9940(v13, v14, v15, v16);
}

void sub_1CF9189D8(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  v15 = *(a1 + 32);
  if (v15)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = Strong;

      sub_1CEFCCBDC(a1, v12, &qword_1EC4C48D8, &qword_1CFA16E68);
      sub_1CF7879EC(v5, 0, v9, a2, a3);

      sub_1CEFCCC44(a1, &qword_1EC4C48D8, &qword_1CFA16E68);
    }

    else
    {
      v10 = v5;
      v11 = FPDomainUnavailableError();
      if (v11)
      {
        v12[0] = v11;
        v13 = 1;
        a2(v12);
        sub_1CEFCCC44(a1, &qword_1EC4C48D8, &qword_1CFA16E68);
        sub_1CF060D50(v12[0], v12[1], v12[2], v12[3], v13);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    a2(v14);
  }
}

unint64_t sub_1CF918B34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v97 - v7;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5290, &qword_1CFA18A30);
  v9 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v105 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v109 = &v97 - v12;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5298, &qword_1CFA18A38);
  v13 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v101 = (&v97 - v16);
  v113 = sub_1CF9E5A58();
  v111 = *(v113 - 8);
  v17 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v110 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v97 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v97 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v97 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v97 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v98 = &v97 - v29;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C52A0, &qword_1CFA18A40);
    v112 = sub_1CF9E7BE8();
  }

  else
  {
    v112 = MEMORY[0x1E69E7CC8];
  }

  v30 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v31 = *(a1 + 64);
  v114 = a1 + 64;
  v32 = 1 << *(a1 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v31;
  v106 = a1;
  v35 = (v32 + 63) >> 6;
  if (v30 == MEMORY[0x1E69E6158])
  {
    v104 = (v111 + 56);
    v105 = (v111 + 32);
    v100 = (v112 + 64);
    v102 = (v111 + 40);

    v67 = 0;
    v97 = v8;
    v103 = v35;
    if (v34)
    {
      goto LABEL_31;
    }

    while (1)
    {
LABEL_32:
      v71 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_52;
      }

      if (v71 >= v35)
      {
        break;
      }

      v34 = *(v114 + 8 * v71);
      ++v67;
      if (v34)
      {
        while (1)
        {
          v72 = __clz(__rbit64(v34)) | (v71 << 6);
          sub_1CF0272BC(*(a1 + 48) + 40 * v72, &v121);
          sub_1CEFD1104(*(a1 + 56) + 32 * v72, &v123 + 8);
          v118 = v123;
          v119 = v124;
          v120 = v125;
          v116 = v121;
          v117 = v122;
          v73 = sub_1CF9E7858();
          objc_opt_self();
          v74 = swift_dynamicCastObjCClass();
          if (!v74)
          {
            break;
          }

          v75 = v74;
          sub_1CEFD1104(&v118 + 8, v115);
          sub_1CEFCCC44(&v116, &qword_1EC4C52A8, &qword_1CFA18A48);
          if ((swift_dynamicCast() & 1) == 0)
          {

            (*v104)(v8, 1, 1, v113);
            v94 = &unk_1EC4BE310;
            v95 = qword_1CF9FCBE0;
            v96 = v8;
            goto LABEL_48;
          }

          v34 &= v34 - 1;
          v76 = v113;
          (*v104)(v8, 0, 1, v113);
          v77 = *v105;
          v78 = v99;
          (*v105)(v99, v8, v76);
          v110 = v75;
          v79 = *(v108 + 48);
          v80 = v109;
          v77(&v109[v79], v78, v76);
          v81 = v107;
          v82 = *(v107 + 48);
          v83 = v25;
          v84 = v101;
          *v101 = v110;
          v77(v84 + v82, &v80[v79], v76);
          v85 = *(v81 + 48);
          v86 = *v84;
          v87 = v84 + v85;
          v25 = v83;
          v88 = v98;
          v77(v98, v87, v76);
          v77(v83, v88, v76);
          v89 = v112;
          result = sub_1CF7BF8D8(v86);
          if (v90)
          {
            v68 = v89[6];
            v69 = *(v68 + 8 * result);
            *(v68 + 8 * result) = v86;
            v70 = result;

            result = (*(v111 + 40))(v89[7] + *(v111 + 72) * v70, v83, v113);
            v67 = v71;
            a1 = v106;
            v8 = v97;
            v35 = v103;
            if (!v34)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v35 = v103;
            if (v89[2] >= v89[3])
            {
              goto LABEL_53;
            }

            *&v100[(result >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << result;
            *(v89[6] + 8 * result) = v86;
            result = (v77)(v89[7] + *(v111 + 72) * result, v83, v113);
            v91 = v89[2];
            v92 = __OFADD__(v91, 1);
            v93 = v91 + 1;
            if (v92)
            {
              goto LABEL_54;
            }

            v89[2] = v93;
            v67 = v71;
            a1 = v106;
            v8 = v97;
            if (!v34)
            {
              goto LABEL_32;
            }
          }

LABEL_31:
          v71 = v67;
        }

LABEL_46:
        v94 = &qword_1EC4C52A8;
        v95 = &qword_1CFA18A48;
        v96 = &v116;
LABEL_48:
        sub_1CEFCCC44(v96, v94, v95);

        return 0;
      }
    }

    return v112;
  }

  v101 = (v111 + 56);
  v109 = (v111 + 32);
  v36 = v112;

  v38 = 0;
  v100 = v5;
  v99 = v35;
  v98 = (v36 + 64);
  v39 = v109;
  while (v34)
  {
LABEL_16:
    v42 = __clz(__rbit64(v34)) | (v38 << 6);
    sub_1CF0272BC(*(a1 + 48) + 40 * v42, &v121);
    sub_1CEFD1104(*(a1 + 56) + 32 * v42, &v123 + 8);
    v118 = v123;
    v119 = v124;
    v120 = v125;
    v116 = v121;
    v117 = v122;
    v43 = sub_1CF9E7858();
    objc_opt_self();
    v44 = swift_dynamicCastObjCClass();
    if (!v44)
    {

      goto LABEL_46;
    }

    v45 = v44;
    sub_1CEFD1104(&v118 + 8, v115);
    sub_1CEFCCC44(&v116, &qword_1EC4C52A8, &qword_1CFA18A48);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*v101)(v5, 1, 1, v113);
      v94 = &unk_1EC4BE310;
      v95 = qword_1CF9FCBE0;
      v96 = v5;
      goto LABEL_48;
    }

    v46 = v113;
    (*v101)(v5, 0, 1, v113);
    v47 = *v39;
    v48 = v103;
    (*v39)(v103, v5, v46);
    v49 = *(v108 + 48);
    v50 = v105;
    v47(&v105[v49], v48, v46);
    v51 = v46;
    v52 = v107;
    v53 = *(v107 + 48);
    v54 = v104;
    *v104 = v45;
    v47(&v54[v53], &v50[v49], v51);
    v55 = *(v52 + 48);
    v56 = v98;
    v57 = *v54;
    v58 = v102;
    v47(v102, &v54[v55], v51);
    v47(v110, v58, v51);
    v36 = v112;
    v59 = *(v112 + 40);
    result = sub_1CF9E7558();
    v60 = -1 << *(v36 + 32);
    v61 = result & ~v60;
    v62 = v61 >> 6;
    if (((-1 << v61) & ~*&v56[8 * (v61 >> 6)]) == 0)
    {
      v63 = 0;
      v64 = (63 - v60) >> 6;
      v5 = v100;
      v35 = v99;
      while (++v62 != v64 || (v63 & 1) == 0)
      {
        v65 = v62 == v64;
        if (v62 == v64)
        {
          v62 = 0;
        }

        v63 |= v65;
        v66 = *&v56[8 * v62];
        if (v66 != -1)
        {
          v40 = __clz(__rbit64(~v66)) + (v62 << 6);
          goto LABEL_10;
        }
      }

      goto LABEL_51;
    }

    v40 = __clz(__rbit64((-1 << v61) & ~*&v56[8 * (v61 >> 6)])) | v61 & 0x7FFFFFFFFFFFFFC0;
    v5 = v100;
    v35 = v99;
LABEL_10:
    v34 &= v34 - 1;
    *&v56[(v40 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v40;
    *(*(v36 + 48) + 8 * v40) = v57;
    result = (v47)(*(v36 + 56) + *(v111 + 72) * v40, v110, v113);
    ++*(v36 + 16);
    a1 = v106;
  }

  while (1)
  {
    v41 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v41 >= v35)
    {

      return v36;
    }

    v34 = *(v114 + 8 * v41);
    ++v38;
    if (v34)
    {
      v38 = v41;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

unint64_t sub_1CF919738(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B88, &unk_1CFA07A20);
    v2 = sub_1CF9E7BE8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (v7)
    {
      goto LABEL_29;
    }

    while (1)
    {
LABEL_30:
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_45;
      }

      if (v32 >= v25)
      {
        break;
      }

      v7 = *(v4 + 8 * v32);
      ++v26;
      if (v7)
      {
        while (1)
        {
          v33 = (v32 << 9) | (8 * __clz(__rbit64(v7)));
          v39 = *(*(a1 + 56) + v33);
          v34 = *(*(a1 + 48) + v33);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5280, &qword_1CFA18A20);
          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          v7 &= v7 - 1;
          result = sub_1CF7BF8D8(v34);
          if (v35)
          {
            v27 = *(v2 + 48);
            v28 = *(v27 + 8 * result);
            *(v27 + 8 * result) = v34;
            v29 = result;

            v30 = *(v2 + 56);
            v31 = *(v30 + 8 * v29);
            *(v30 + 8 * v29) = v37;

            v26 = v32;
            if (!v7)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v36 = *(v2 + 16);
            if (v36 >= *(v2 + 24))
            {
              goto LABEL_46;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v34;
            *(*(v2 + 56) + 8 * result) = v37;
            *(v2 + 16) = v36 + 1;
            v26 = v32;
            if (!v7)
            {
              goto LABEL_30;
            }
          }

LABEL_29:
          v32 = v26;
        }

LABEL_42:

        return 0;
      }
    }

LABEL_38:

    return v2;
  }

  v9 = v8 >> 6;
  v10 = v2 + 64;

  v12 = 0;
  while (v7)
  {
LABEL_16:
    v15 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
    v38 = *(*(a1 + 56) + v15);
    v16 = *(*(a1 + 48) + v15);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5280, &qword_1CFA18A20);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_42;
    }

    v17 = *(v2 + 40);
    result = sub_1CF9E7558();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v20);
        if (v24 != -1)
        {
          v13 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_10;
        }
      }

      goto LABEL_44;
    }

    v13 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
    v7 &= v7 - 1;
    *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    *(*(v2 + 48) + 8 * v13) = v16;
    *(*(v2 + 56) + 8 * v13) = v37;
    ++*(v2 + 16);
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {
      goto LABEL_38;
    }

    v7 = *(v4 + 8 * v14);
    ++v12;
    if (v7)
    {
      v12 = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void sub_1CF919C90(uint64_t a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient_client);
    v4 = type metadata accessor for ProxyCancellable();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A16ProxyCancellable_cancellable] = a1;
    v8.receiver = v5;
    v8.super_class = v4;
    swift_unknownObjectRetain_n();
    v6 = objc_msgSendSuper2(&v8, sel_init);
    [v3 setCancellationHandler_];
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient_client);

    [v7 setCancellationHandler_];
  }
}

uint64_t sub_1CF919DF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *&v20[0] = 0x696669746E656469;
  *(&v20[0] + 1) = 0xEA00000000007265;

  sub_1CF9E7898();
  if (*(a1 + 16) && (v10 = sub_1CF0271B0(&aBlock), (v11 & 1) != 0))
  {
    sub_1CEFD1104(*(a1 + 56) + 32 * v10, v25);
    sub_1CF027318(&aBlock);
    if (swift_dynamicCast())
    {
      if (*(&v27 + 1))
      {
        aBlock = v26;
        v22 = v27;
        v23 = v28;
        v12 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient_idMap);
        if (v12 && *(v12 + 16) && (v13 = sub_1CF0271B0(&aBlock), (v14 & 1) != 0))
        {
          sub_1CEFD1104(*(v12 + 56) + 32 * v13, &v26);
          sub_1CEFE9EB8(&v26, v25);
          *&v20[0] = 0x696669746E656469;
          *(&v20[0] + 1) = 0xEA00000000007265;
          sub_1CF9E7898();
          sub_1CEFD1104(v25, v20);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1CF1D456C(v20, &v26, isUniquelyReferenced_nonNull_native);
          sub_1CF027318(&v26);
          __swift_destroy_boxed_opaque_existential_1(v25);
          sub_1CF027318(&aBlock);
        }

        else
        {
          sub_1CF027318(&aBlock);
        }

        goto LABEL_11;
      }
    }

    else
    {
      v28 = 0;
      v27 = 0u;
      v26 = 0u;
    }
  }

  else
  {
    sub_1CF027318(&aBlock);
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
  }

  sub_1CEFCCC44(&v26, &qword_1EC4C5288, &qword_1CFA18A28);
LABEL_11:
  v16 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient_client);
  if (([v16 respondsToSelector_] & 1) == 0)
  {
  }

  v17 = sub_1CF9E6618();
  if (a2)
  {
    a2 = sub_1CF9E57E8();
  }

  v23 = a3;
  v24 = a4;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v22 = sub_1CEFCA444;
  *(&v22 + 1) = &block_descriptor_872;
  v18 = _Block_copy(&aBlock);

  [v16 operationDidProgressWithInfo:v17 error:a2 completionHandler:v18];
  _Block_release(v18);
}

unint64_t sub_1CF91A300()
{
  sub_1CF9E7948();

  v1 = [*(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSServicerExtender_request) shortDescription];
  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v4 = v3;

  MEMORY[0x1D3868CC0](v2, v4);

  return 0xD000000000000012;
}

id sub_1CF91A400(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1CF91A514(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  if (a1)
  {
    v17 = *(a6 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = [Strong session];

      v21 = [v20 newFileProviderProxyWithTimeout:objc_msgSend(*(a6 + 32) pid:{"pid"), -1.0}];
      swift_unknownObjectRelease();
      if (a2)
      {
        a2 = sub_1CF7BC4CC(a2);
      }

      v22 = type metadata accessor for ProxyOperationClient();
      v23 = objc_allocWithZone(v22);
      *&v23[OBJC_IVAR____TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient_client] = a7;
      *&v23[OBJC_IVAR____TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient_idMap] = a2;
      v28.receiver = v23;
      v28.super_class = v22;
      swift_unknownObjectRetain();
      v24 = objc_msgSendSuper2(&v28, sel_init);
      sub_1CF7BC0F4(a1);
      sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
      sub_1CF2F5F80();
      v25 = sub_1CF9E6618();

      v27[4] = a4;
      v27[5] = a5;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 1107296256;
      v27[2] = sub_1CF00A468;
      v27[3] = &block_descriptor_849_0;
      v26 = _Block_copy(v27);

      [v21 startOperation:v24 toFetchThumbnailsWithDictionary:v25 size:v26 completionHandler:{a8, a9}];
      _Block_release(v26);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    a4(a3);
  }
}

uint64_t sub_1CF91A870(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;

  v9 = a2;
  MEMORY[0x1D3868FA0]();
  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();
  v10 = *(v5 + 16);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = v5;

  sub_1CF8406A8(a1, sub_1CF927500, v11);
}

void sub_1CF91A988(unint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = a1 >> 62;
    if (a1 >> 62)
    {
      v13 = a6;
      v14 = sub_1CF9E7818();
      a6 = v13;
      if (v14 < 2)
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_4;
    }

    v15 = a6;
    v16 = *(a6 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_27;
    }

    v18 = Strong;
    v19 = [Strong session];

    v20 = [v19 newFileProviderProxyWithTimeout:objc_msgSend(*(v15 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v21 = sub_1CF9E6D28();
    if (v10)
    {
      v22 = sub_1CF9E7818();
    }

    else
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v22)
    {
      if (!__OFSUB__(v22--, 1))
      {
        if ((a1 & 0xC000000000000001) == 0)
        {
          if ((v22 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v22 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v24 = *(a1 + 8 * v22 + 32);
LABEL_21:
            v25 = v24;
            v27[4] = a4;
            v27[5] = a5;
            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 1107296256;
            v27[2] = sub_1CF91AC3C;
            v27[3] = &block_descriptor_481;
            v26 = _Block_copy(v27);

            [v20 preflightReparentItemIDs:v21 underParentID:v25 reply:v26];
            swift_unknownObjectRelease();

            _Block_release(v26);
            return;
          }

          __break(1u);
LABEL_27:
          __break(1u);
          return;
        }

LABEL_24:
        v24 = MEMORY[0x1D3869C30](v22, a1);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_4:
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FD0, &unk_1CF9FE690);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1CF9FA450;
    *(v11 + 32) = a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = a3;
  a4(v11);
}

uint64_t sub_1CF91AC3C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v2 = sub_1CF9E6D48();
  }

  v4(v2);
}

void sub_1CF91ADA4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v3 = sub_1CF9E6D28();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1CF91AE28(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = [a1 itemIdentifier];
  *(v11 + 24) = 256;
  v12 = *(v5 + 32);
  *(v11 + 32) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1;
  *(v14 + 32) = v11 | 0x4000000000000004;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5;
  *(v14 + 56) = v10;
  *(v14 + 64) = 1;
  *(v14 + 65) = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1CF9274F8;
  *(v15 + 24) = v13;
  swift_retain_n();
  v16 = v12;
  v17 = a1;

  v18 = v10;

  sub_1CEFD4024("singleItemChange(_:changedFields:bounce:coordinate:request:completionHandler:)", 78, 2, sub_1CF7BA950, v15, sub_1CF8FD83C, v14);
}

uint64_t sub_1CF91B0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for NSFileProviderItemIdentifier(0);
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    sub_1CF927324(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier);
    v4 = sub_1CF9E6638();
  }

  if (a3)
  {
    type metadata accessor for NSFileProviderItemIdentifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF927324(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier);
    a3 = sub_1CF9E6638();
  }

  v6(v4, a3);
}

void sub_1CF91B370(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (a1)
  {
    type metadata accessor for NSFileProviderItemIdentifier(0);
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    sub_1CF927324(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier);
    v7 = sub_1CF9E6618();
  }

  if (a2)
  {
    type metadata accessor for NSFileProviderItemIdentifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF927324(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier);
    a2 = sub_1CF9E6618();
  }

  if (a3)
  {
    v8 = sub_1CF9E57E8();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, a2);
}

void sub_1CF91B4F0(void *a1, id a2, void (*a3)(uint64_t, id), uint64_t a4, id a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  if (a1)
  {
    if (!a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CFA00250;
      *(inited + 32) = a1;
      aBlock[0] = a6;
      v16 = a1;

      sub_1CF1E90D4(inited);
      v17 = a6;
      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      v18 = [v16 parentItemID];
      LOBYTE(a6) = sub_1CF9E7568();

      if ((a6 & 1) != 0 || a7 == 1)
      {
        a3(v17, 0);
      }

      else
      {
        v19 = [v16 parentItemID];
        v20 = __OFSUB__(a7, 1);
        v21 = a7 - 1;
        if (v20)
        {
          __break(1u);
        }

        else
        {
          v22 = v19;
          v23 = *(a8 + 16);
          v24 = *(a8 + 32);
          v25 = swift_allocObject();
          v25[2] = a3;
          v25[3] = a4;
          v25[4] = v22;
          v25[5] = v17;
          v25[6] = v21;
          v25[7] = a8;
          aBlock[4] = sub_1CF9284B4;
          aBlock[5] = v25;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1CEFF9A6C;
          aBlock[3] = &block_descriptor_773;
          v26 = _Block_copy(aBlock);

          v27 = v22;

          [v23 itemForItemID:v27 creatingPlaceholderIfMissing:0 ignoreAlternateContentsURL:0 request:v24 completionHandler:v26];
          _Block_release(v26);
        }
      }

      return;
    }
  }

  else if (!a2)
  {
    v28 = [a5 identifier];
    v10 = FPItemNotFoundError();

    a2 = 0;
  }

  v29 = a2;
  a3(0, v10);
}

uint64_t sub_1CF91B7F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, char a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF927A5C;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = sub_1CF903264;
  v15[3] = v13;
  v15[4] = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF927AB0;
  *(v16 + 24) = v15;
  v17 = *(a1 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF8FF2D8;
  *(v18 + 24) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a1;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  *(v19 + 48) = a7;
  *(v19 + 56) = sub_1CF8FF2D8;
  *(v19 + 64) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1CF903264;
  *(v20 + 24) = v18;
  swift_retain_n();

  v21 = a4;

  sub_1CF7AAF88("fetchHierarchy(for:recursively:ignoreAlternateContentURL:reply:)", 64, 2, 2, sub_1CF9002F4, v20, sub_1CF927B04, v19);
}

void sub_1CF91BA60(void *a1, void *a2, uint64_t a3, int a4, uint64_t a5, int a6, void (*a7)(void, void *), uint64_t a8)
{
  v84 = a7;
  v95 = a8;
  v82 = a6;
  v83 = a4;
  v81 = a5;
  v11 = sub_1CF9E6118();
  v80 = *(v11 - 8);
  v12 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v20 = __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1CEFD4E9C([a2 identifier]);
  v21 = v85;
  sub_1CF554678(*(a3 + 16), 0, v20, v18, v19, &v92);
  if (v21)
  {

    v22 = v21;
    v84(0, v21);
  }

  else
  {
    v23 = a2;
    v85 = v11;

    if (v94)
    {
      sub_1CEFD0994(v92, v93, 1);
      v24 = fpfs_current_or_default_log();
      v25 = v14;
      sub_1CF9E6128();
      v26 = v23;
      v27 = sub_1CF9E6108();
      v28 = sub_1CF9E7298();

      v29 = os_log_type_enabled(v27, v28);
      v30 = v85;
      v79 = v26;
      if (v29)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        aBlock = v32;
        *v31 = 136315394;
        v33 = [v26 identifier];
        v34 = NSFileProviderItemIdentifier.description.getter();
        v78 = v25;
        v35 = v34;
        v37 = v36;

        v38 = sub_1CEFD0DF0(v35, v37, &aBlock);

        *(v31 + 4) = v38;
        *(v31 + 12) = 1024;
        *(v31 + 14) = v83 & 1;
        _os_log_impl(&dword_1CEFC7000, v27, v28, "fetching hierarchy from provider: %s (recursive: %{BOOL}d)", v31, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x1D386CDC0](v32, -1, -1);
        MEMORY[0x1D386CDC0](v31, -1, -1);

        (*(v80 + 8))(v78, v30);
      }

      else
      {

        (*(v80 + 8))(v25, v30);
      }

      v58 = v82;
      v59 = v95;
      v60 = v81;
      v61 = *(v81 + 16);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v63 = Strong;
        v64 = [Strong session];

        v65 = [v64 newFileProviderProxyWithTimeout:objc_msgSend(*(v60 + 32) pid:{"pid"), -1.0}];
        swift_unknownObjectRelease();
        v66 = swift_allocObject();
        v66[2] = v84;
        v66[3] = v59;
        v66[4] = v60;
        v90 = sub_1CF927B30;
        v91 = v66;
        aBlock = MEMORY[0x1E69E9820];
        v87 = 1107296256;
        v88 = sub_1CF919B5C;
        v89 = &block_descriptor_760;
        v67 = _Block_copy(&aBlock);

        [v65 fetchHierarchyForItemID:v79 recursively:v83 & 1 ignoreAlternateContentURL:v58 & 1 reply:v67];
        _Block_release(v67);
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v39 = fpfs_current_or_default_log();
      v40 = v17;
      sub_1CF9E6128();
      v41 = a2;
      v42 = sub_1CF9E6108();
      v43 = sub_1CF9E7298();

      v44 = os_log_type_enabled(v42, v43);
      v45 = v80;
      if (v44)
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v79 = v40;
        v48 = v47;
        aBlock = v47;
        *v46 = 136315394;
        v49 = [v41 identifier];
        v78 = v41;
        v50 = v49;
        v51 = NSFileProviderItemIdentifier.description.getter();
        v53 = v52;

        v54 = sub_1CEFD0DF0(v51, v53, &aBlock);

        *(v46 + 4) = v54;
        *(v46 + 12) = 1024;
        v55 = v83;
        *(v46 + 14) = v83 & 1;
        _os_log_impl(&dword_1CEFC7000, v42, v43, "fetching hierarchy from cache: %s (recursive: %{BOOL}d)", v46, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x1D386CDC0](v48, -1, -1);
        MEMORY[0x1D386CDC0](v46, -1, -1);

        (*(v45 + 8))(v79, v85);
        v56 = v78;
        v57 = v81;
      }

      else
      {

        (*(v45 + 8))(v40, v85);
        v57 = v81;
        v56 = v41;
        v55 = v83;
      }

      v68 = v84;
      if (v55)
      {
        v69 = 200;
      }

      else
      {
        v69 = 2;
      }

      v70 = *(v57 + 16);
      v71 = *(v57 + 32);
      v72 = swift_allocObject();
      v73 = v95;
      v72[2] = v68;
      v72[3] = v73;
      v74 = MEMORY[0x1E69E7CC0];
      v72[4] = v56;
      v72[5] = v74;
      v72[6] = v69;
      v72[7] = v57;
      v90 = sub_1CF927B3C;
      v91 = v72;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = sub_1CEFF9A6C;
      v89 = &block_descriptor_766_0;
      v75 = _Block_copy(&aBlock);
      v76 = v56;

      [v70 itemForItemID:v76 creatingPlaceholderIfMissing:0 ignoreAlternateContentsURL:v82 & 1 request:v71 completionHandler:v75];
      _Block_release(v75);
    }
  }
}

void sub_1CF91C15C(uint64_t a1, void *a2, void (*a3)(void, void *), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = *(a5 + 16);
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    v9 = sub_1CF9E6D28();
    v10 = swift_allocObject();
    v10[2] = a3;
    v10[3] = a4;
    v10[4] = a2;
    v13[4] = sub_1CF927BBC;
    v13[5] = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1CF91C2A4;
    v13[3] = &block_descriptor_779;
    v11 = _Block_copy(v13);

    v12 = a2;

    [v8 decorateItems:v9 completionHandler:v11];
    _Block_release(v11);
  }

  else
  {
    a3(0, a2);
  }
}

uint64_t sub_1CF91C2A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v3 = sub_1CF9E6D48();

  v2(v3);
}

void sub_1CF91C4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a2 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [Strong session];

    v15 = [v14 newFileProviderProxyWithTimeout:objc_msgSend(*(a2 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    v16 = sub_1CF9E6888();
    v18[4] = a6;
    v18[5] = a7;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1CF00A468;
    v18[3] = &block_descriptor_716_0;
    v17 = _Block_copy(v18);

    [v15 userCheckedSuppressionCheckboxForUserInteractionIdentifier:v16 domainIdentifier:a5 completionHandler:v17];
    _Block_release(v17);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF91C7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *(a2 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong session];

    v18 = [v17 newFileProviderProxyWithTimeout:objc_msgSend(*(a2 + 32) pid:{"pid"), -1.0}];
    swift_unknownObjectRelease();
    v19 = sub_1CF9E6888();
    v20 = sub_1CF9E6888();
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = a8;
    v21[4] = a9;
    v21[5] = a1;
    v21[6] = a5;
    v21[7] = a6;
    aBlock[4] = sub_1CF9279BC;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFF99E0;
    aBlock[3] = &block_descriptor_674;
    v22 = _Block_copy(aBlock);

    [v18 fetchDefaultContainerForBundleIdentifier:v19 defaultName:v20 inDomainIdentifier:a7 lookupOnly:1 reply:v22];
    _Block_release(v22);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF91C9A0(void *a1, void *a2, uint64_t a3, void (*a4)(void, id), uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v58 = a5;
  v59 = a4;
  v14 = sub_1CF9E6118();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  if (a1)
  {
    v22 = a1;
    v23 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v24 = sub_1CF9E6108();
    v25 = sub_1CF9E7288();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1CEFC7000, v24, v25, "received special default container from extension process, looking up and returning", v26, 2u);
      MEMORY[0x1D386CDC0](v26, -1, -1);
    }

    (*(v15 + 8))(v18, v14);
    v27 = swift_allocObject();
    v28 = v58;
    v27[2] = v59;
    v27[3] = v28;
    v27[4] = a2;
    v29 = *(a3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1CFA00250;
    *(v30 + 32) = v22;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1CF9279D4;
    *(v31 + 24) = v27;
    v32 = swift_allocObject();
    v32[2] = sub_1CF9284BC;
    v32[3] = v31;
    v32[4] = v30;
    v33 = swift_allocObject();
    v33[2] = v30;
    v33[3] = 0;
    v33[4] = sub_1CF9284BC;
    v33[5] = v31;
    v34 = v22;
    swift_retain_n();
    v35 = v34;
    v36 = a2;

    sub_1CEFD4024("decorate(_:options:completionHandler:)", 38, 2, sub_1CF9283E4, v32, sub_1CF9283C8, v33);
  }

  else
  {
    v57 = a7;
    v37 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v38 = sub_1CF9E6108();
    v39 = sub_1CF9E7298();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1CEFC7000, v38, v39, "didn't receive a special default container from extension process, creating a folder", v40, 2u);
      MEMORY[0x1D386CDC0](v40, -1, -1);
    }

    (*(v15 + 8))(v21, v14);
    v41 = *(a3 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v43 = a6, v44 = Strong, v45 = [Strong provider], v44, v45))
    {
      v46 = [v45 identifier];

      v47 = [v46 fp_isiCloudDriveIdentifier];
      v48 = MEMORY[0x1E6967258];
      if (v47)
      {
        v48 = MEMORY[0x1E6967160];
      }

      v49 = *v48;
      v50 = sub_1CEFD4E9C(v49);
      v51 = swift_allocObject();
      v52 = *(a3 + 32);
      *(v51 + 16) = v49;
      *(v51 + 24) = v52;
      v53 = v58;
      swift_retain_n();

      v54 = v52;
      sub_1CF795294(v50, 0, v51 | 6, v43, v57, a8, a3, v59, v53);
    }

    else
    {
      v55 = FPDomainUnavailableError();
      v59(0, v55);
    }
  }
}

void sub_1CF91CEE4(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, void (*a5)(void, id), uint64_t a6)
{
  v78 = a5;
  v79 = a6;
  v74 = a4;
  v76 = a2;
  v77 = a3;
  v80 = a1;
  v89[1] = *MEMORY[0x1E69E9840];
  v73 = sub_1CF9E53C8();
  v72 = *(v73 - 8);
  v6 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1CF9E6118();
  v69 = *(v70 - 8);
  v8 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1CF9E5868();
  v10 = *(v75 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v67 - v16);
  v18 = sub_1CF9E5A58();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v67 - v24;
  sub_1CEFCCBDC(v80, v17, &unk_1EC4C5270, &unk_1CFA01BC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v17;
    aBlock = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();
LABEL_10:
    v43 = v78;
    v44 = v26;
    v43(0, v26);

LABEL_11:
    v45 = *MEMORY[0x1E69E9840];
    return;
  }

  v27 = v18;
  (*(v19 + 32))(v25, v17, v18);
  aBlock = v76;
  v84 = v77;
  v28 = v75;
  (*(v10 + 104))(v13, *MEMORY[0x1E6968F70], v75);
  sub_1CEFE4E68();
  sub_1CF9E5A48();
  (*(v10 + 8))(v13, v28);
  v29 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v30 = sub_1CF9E5928();
  aBlock = 0;
  v31 = [v29 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  v32 = v19;
  if ((v31 & 1) == 0)
  {
    v41 = aBlock;
    v26 = sub_1CF9E57F8();

    swift_willThrow();
    v42 = *(v19 + 8);
    v42(v22, v27);
    v42(v25, v27);
    goto LABEL_10;
  }

  v80 = v25;
  v33 = aBlock;
  sub_1CF9E5A18();
  v82 = 1;
  v89[0] = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = &v82;
  *(v34 + 24) = sub_1CF91D9A4;
  *(v34 + 32) = 0;
  *(v34 + 40) = v89;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1CF50E0C0;
  *(v35 + 24) = v34;
  v87 = sub_1CF005DC8;
  v88 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v84 = 1107296256;
  v85 = sub_1CF005DF8;
  v86 = &block_descriptor_699;
  v36 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v37 = fpfs_openat();

  _Block_release(v36);

  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }

  v26 = v89[0];
  if (v89[0])
  {
    swift_willThrow();
    v39 = v80;
LABEL_7:

    v40 = *(v32 + 8);
    v40(v22, v27);
    v40(v39, v27);
    goto LABEL_10;
  }

  if (v37 < 0)
  {
    v52 = MEMORY[0x1D38683F0](v38);
    v39 = v80;
    if (v52)
    {
      if (MEMORY[0x1D38683F0]() == 9939394)
      {
        v26 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
        swift_willThrow();
      }

      else
      {
        MEMORY[0x1D38683F0]();
        v53 = sub_1CF9E6138();
        if ((v53 & 0x100000000) != 0)
        {
          LODWORD(aBlock) = 22;
        }

        else
        {
          LODWORD(aBlock) = v53;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF927324(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v54 = v71;
        v55 = v73;
        sub_1CF9E57D8();
        v26 = sub_1CF9E53A8();
        (*(v72 + 8))(v54, v55);
        swift_willThrow();
      }

      goto LABEL_7;
    }
  }

  else
  {
    if ((v82 & 1) == 0)
    {

      v46 = v74;
      v47 = *(v74 + 16);
      v48 = sub_1CF9E5928();
      v49 = *(v46 + 32);
      v87 = v78;
      v88 = v79;
      aBlock = MEMORY[0x1E69E9820];
      v84 = 1107296256;
      v85 = sub_1CEFF9A6C;
      v86 = &block_descriptor_702;
      v50 = _Block_copy(&aBlock);

      [v47 itemForURL:v48 options:0 request:v49 completionHandler:v50];
      _Block_release(v50);

      v51 = *(v19 + 8);
      v51(v22, v27);
      v51(v80, v27);
      goto LABEL_11;
    }

    __break(1u);
  }

  aBlock = 0;
  v84 = 0xE000000000000000;
  sub_1CF9E7948();

  aBlock = 0xD00000000000001ALL;
  v84 = 0x80000001CFA2DF30;
  v81 = v37;
  v56 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v56);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v57 = aBlock;
  v58 = v84;
  v59 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v60 = sub_1CF9E6108();
  v61 = sub_1CF9E72B8();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock = v63;
    *v62 = 136315650;
    v64 = sub_1CF9E7988();
    v66 = sub_1CEFD0DF0(v64, v65, &aBlock);

    *(v62 + 4) = v66;
    *(v62 + 12) = 2048;
    *(v62 + 14) = 315;
    *(v62 + 22) = 2080;
    *(v62 + 24) = sub_1CEFD0DF0(v57, v58, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v60, v61, "[ASSERT] ‼️  %s:%lu: %s", v62, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v63, -1, -1);
    MEMORY[0x1D386CDC0](v62, -1, -1);
  }

  (*(v69 + 8))(v68, v70);
  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF91DBB4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v9 = *(a6 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong session];

      v13 = [v12 newFileProviderProxyWithTimeout:objc_msgSend(*(a6 + 32) pid:{"pid"), -1.0}];
      swift_unknownObjectRelease();
      sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
      v14 = sub_1CF9E6D28();
      v16[4] = a4;
      v16[5] = a5;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 1107296256;
      v16[2] = sub_1CF91AC3C;
      v16[3] = &block_descriptor_650;
      v15 = _Block_copy(v16);

      [v13 preflightTrashItemIDs:v14 completionHandler:v15];
      _Block_release(v15);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    a4();
  }
}