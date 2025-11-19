char *sub_1CF3C9A40(char *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v63 = a5;
  v62[2] = a4;
  v62[1] = a3;
  v68 = a2;
  v7 = *v5;
  v8 = sub_1CF9E6118();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v64 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v7[330];
  v12 = v7[332];
  v69 = type metadata accessor for FileTreeError();
  v66 = *(v69 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v15 = v62 - v14;
  v16 = v7[329];
  v17 = v7[331];
  v18 = type metadata accessor for FileTreeError();
  v67 = *(v18 - 8);
  v19 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v62 - v20;
  v22 = sub_1CF9E79E8();
  v70 = *(v22 - 8);
  v23 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a1;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  if (swift_dynamicCast())
  {
    if (v77 == 8)
    {
      sub_1CF47FB38(&v73);
    }

    else if (v77 != 9 || v73 - 1 > 2 || (v27 = vorrq_s8(v75, v76), *&vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL)) | v74))
    {
      sub_1CF47FB38(&v73);
      goto LABEL_7;
    }

    v33 = v78;
    goto LABEL_19;
  }

LABEL_7:

  v73 = a1;
  v28 = a1;
  type metadata accessor for PQLSqliteError(0);
  if (swift_dynamicCast())
  {

LABEL_9:
    v29 = v73;
LABEL_12:

LABEL_13:
    v31 = *(v5 + qword_1EDEAE660);
    *(v5 + qword_1EDEAE660) = a1;
    v32 = a1;
    v33 = v31;
LABEL_19:

    v37 = *(v5 + qword_1EDEBBDA0 + 8);
    return (*(v5 + qword_1EDEBBDA0))(v5, a1);
  }

  v78 = a1;
  v30 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&v73);
    v29 = v78;
    goto LABEL_12;
  }

  v62[0] = v8;

  v73 = a1;
  v34 = a1;
  v35 = swift_dynamicCast();

  if (v35)
  {
    goto LABEL_13;
  }

  v73 = a1;
  v36 = a1;
  if (swift_dynamicCast())
  {
    (*(v70 + 8))(v25, v22);
    goto LABEL_9;
  }

  v73 = a1;
  v39 = a1;
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
LABEL_25:

LABEL_34:
      swift_willThrow();
      return a1;
    }

    (*(v67 + 8))(v21, v18);
  }

  v73 = a1;
  v40 = a1;
  v41 = v69;
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      goto LABEL_25;
    }

    (*(v66 + 8))(v15, v41);
  }

  v73 = a1;
  v42 = a1;
  v43 = swift_dynamicCast();

  if (v43 || (v68 & 1) == 0)
  {
    goto LABEL_34;
  }

  if ((sub_1CF033B88() & 0x400000000) == 0)
  {
    v44 = fpfs_current_or_default_log();
    v45 = v64;
    sub_1CF9E6128();
    v46 = a1;
    v47 = sub_1CF9E6108();
    v48 = sub_1CF9E72B8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v73 = v51;
      *v49 = 136446466;
      v52 = sub_1CF9E7988();
      v54 = sub_1CEFD0DF0(v52, v53, &v73);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2112;
      swift_getErrorValue();
      v55 = Error.prettyDescription.getter(v72);
      *(v49 + 14) = v55;
      *v50 = v55;
      _os_log_impl(&dword_1CEFC7000, v47, v48, "unhandled database persistence error in %{public}s: %@", v49, 0x16u);
      sub_1CEFCCC44(v50, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v50, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1D386CDC0](v51, -1, -1);
      MEMORY[0x1D386CDC0](v49, -1, -1);
    }

    (*(v65 + 8))(v45, v62[0]);
    goto LABEL_34;
  }

  v73 = 0;
  v74 = 0xE000000000000000;
  sub_1CF9E7948();

  v73 = 0xD000000000000028;
  v74 = 0x80000001CFA46FF0;
  v56 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v56);

  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  swift_getErrorValue();
  v57 = Error.prettyDescription.getter(v71);
  v58 = [v57 description];
  v59 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v61 = v60;

  MEMORY[0x1D3868CC0](v59, v61);

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3CA2D8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(_BYTE *, _BYTE *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v34 = a6;
  v35 = a5;
  v32 = a2;
  v10 = (*v6)[329];
  v11 = (*v6)[331];
  v12 = type metadata accessor for SnapshotItem();
  v13 = sub_1CF9E75D8();
  v33 = *(v13 - 8);
  v14 = *(v33 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31[-v16];
  v18 = *(v12 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v31[-v20];
  v22 = v36;
  result = (*(*v6[4] + 240))(a1, 1, a3, a4, v35);
  if (!v22)
  {
    v24 = v33;
    v25 = v34;
    v36 = 0;
    if ((*(v18 + 48))(v17, 1, v12) == 1)
    {
      (*(v24 + 8))(v17, v13);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      return (*(*(TupleTypeMetadata3 - 8) + 56))(v25, 1, 1, TupleTypeMetadata3);
    }

    else
    {
      v35 = *(v18 + 32);
      v35(v21, v17, v12);
      v27 = swift_getTupleTypeMetadata3();
      v28 = *(v27 + 48);
      v29 = *(v27 + 64);
      (*(v18 + 16))(v25, v21, v12);
      v30 = *(v18 + 56);
      v30(v25, 0, 1, v12);
      v35((v25 + v28), v21, v12);
      v30(v25 + v28, 0, 1, v12);
      *(v25 + v29) = v32 & 1;
      return (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
    }
  }

  return result;
}

uint64_t sub_1CF3CA63C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(_BYTE *, _BYTE *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v33 = a5;
  v28 = a2;
  v31 = a6;
  v10 = (*v6)[329];
  v29 = (*v6)[331];
  v27[1] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  v30 = *(v12 - 8);
  v13 = *(v30 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v27 - v15;
  v32 = *(AssociatedTypeWitness - 8);
  v17 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = v27 - v18;
  v20 = a1;
  v21 = a3;
  v22 = v33;
  v23 = v34;
  result = (*(*v6[2] + 152))(v20, v21, a4, v33);
  if (!v23)
  {
    v25 = v30;
    v34 = 0;
    if ((*(v32 + 48))(v16, 1, AssociatedTypeWitness) == 1)
    {
      (*(v25 + 8))(v16, v12);
      type metadata accessor for SnapshotItem();
      sub_1CF9E75D8();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      return (*(*(TupleTypeMetadata3 - 8) + 56))(v31, 1, 1, TupleTypeMetadata3);
    }

    else
    {
      (*(v32 + 32))(v19, v16, AssociatedTypeWitness);
      sub_1CF3CA2D8(v19, v28 & 1, v21, a4, v22, v31);
      return (*(v32 + 8))(v19, AssociatedTypeWitness);
    }
  }

  return result;
}

void sub_1CF3CA94C()
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + qword_1EDEBBDB0);
  v15 = sub_1CF385068;
  v16 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1CEFE7548;
  v14 = &block_descriptor_1608;
  v2 = _Block_copy(&aBlock);

  aBlock = 0;
  v3 = [v1 fetchSwift:v2 error:&aBlock];
  _Block_release(v2);
  v4 = aBlock;
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v3)
  {
    sub_1CF9E57F8();

    swift_willThrow();
    goto LABEL_14;
  }

  if ([v3 next])
  {
    v5 = [v3 longAtIndex_];
  }

  else
  {
    v5 = 0;
  }

  v15 = sub_1CF385084;
  v16 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1CEFE7548;
  v14 = &block_descriptor_1611;
  v6 = _Block_copy(&aBlock);

  aBlock = 0;
  v7 = [v1 fetchSwift:v6 error:&aBlock];
  _Block_release(v6);
  v8 = aBlock;
  if (swift_isEscapingClosureAtFileLocation())
  {
    goto LABEL_16;
  }

  if (!v7)
  {
    sub_1CF9E57F8();

    swift_willThrow();
    goto LABEL_14;
  }

  if ([v7 next])
  {
    v9 = [v7 longAtIndex_];
  }

  else
  {
    v9 = 0;
  }

  if ((v5 * v9) >> 64 != (v5 * v9) >> 63)
  {
LABEL_17:
    __break(1u);
  }

LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF3CAC18(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = v4;
  *(v10 + 48) = a2;
  swift_retain_n();

  sub_1CF92DC74("incrementalDBVacuum(force:size:completionHandler:)", 50, 2u, sub_1CF045408, 0, sub_1CF48554C, v9, sub_1CF485578, v10);
}

id sub_1CF3CAD30(void *a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 1) == 0)
  {
    v11 = a1;
    if (qword_1EDEADB60 != -1)
    {
      swift_once();
    }

    v12 = [qword_1EDEBBD10 shouldPause];
    a1 = v11;
    if (v12)
    {
      v13 = 0;
      return a3(v13);
    }
  }

  v14 = *(a5 + qword_1EDEBBE18);
  if (v14 >= a6)
  {
    v15 = a6;
  }

  else
  {
    v15 = *(a5 + qword_1EDEBBE18);
  }

  result = [*__swift_project_boxed_opaque_existential_1(a1 a1[3])];
  if (v14 >= a6)
  {
    v13 = 1;
    return a3(v13);
  }

  if (!__OFSUB__(a6, v15))
  {
    return sub_1CF3CAC18(a2 & 1, a6 - v15, a3, a4);
  }

  __break(1u);
  return result;
}

void *sub_1CF3CAE48(char a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v54 = a4;
  v55 = a6;
  v53 = a3;
  v11 = sub_1CF9E6118();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E64A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_1CF042F4C();
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15);
  v21 = v20;
  v22 = sub_1CF9E64D8();
  (*(v16 + 8))(v19, v15);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
LABEL_7:
    if ([qword_1EDEBBD10 shouldPause])
    {
      v23 = *(v22 + 8);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(v7 + qword_1EDEBBE00) == 1)
  {
    v23 = *(v55 + 8);
LABEL_4:
    v58 = a5;
    v59 = v23;
    v24 = __swift_allocate_boxed_opaque_existential_0(&v56);
    (*(*(a5 - 8) + 16))(v24, a2, a5);
    v53(&v56);
    return sub_1CEFCCC44(&v56, &qword_1EC4C0700, &qword_1CFA05B10);
  }

  v22 = v55;
  if ((a1 & 1) == 0)
  {
    if (qword_1EDEADB60 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_9:
  v25 = *(v22 + 8);
  v26 = *(v25 + 48);
  v26(&v56, MEMORY[0x1E69E6530], sub_1CF3CB4D8, 0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6560], MEMORY[0x1E69E6538], a5, v25);
  v27 = v56;
  if (v57)
  {
    v27 = 0;
  }

  v51 = v27;
  v26(&v56, MEMORY[0x1E69E6530], sub_1CF3CB4F4, 0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6560], MEMORY[0x1E69E6538], a5, v25);
  v28 = v56;
  if (v57)
  {
    v28 = 0;
  }

  v50 = v28;
  v26(&v56, MEMORY[0x1E69E6530], sub_1CF3CB510, 0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6560], MEMORY[0x1E69E6538], a5, v25);
  v29 = v56;
  if (v57)
  {
    v29 = 0;
  }

  v49 = v29;
  v26(&v56, MEMORY[0x1E69E6530], sub_1CF3CB608, 0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6560], MEMORY[0x1E69E6538], a5, v25);
  v30 = v56;
  if (v57)
  {
    v30 = 0;
  }

  v48 = v30;
  result = (v26)(&v56, MEMORY[0x1E69E6530], sub_1CF3CB700, 0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6560], MEMORY[0x1E69E6538], a5, v25);
  v32 = v56;
  if (v57)
  {
    v32 = 0;
  }

  v33 = v51 + v50;
  if (__OFADD__(v51, v50))
  {
    __break(1u);
    goto LABEL_29;
  }

  v34 = __OFADD__(v33, v49);
  v35 = v33 + v49;
  if (v34)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v34 = __OFADD__(v35, v48);
  v36 = v35 + v48;
  if (v34)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v37 = v36 + v32;
  if (__OFADD__(v36, v32))
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v38 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v39 = sub_1CF9E6108();
  v40 = sub_1CF9E72C8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = v37;
    _os_log_impl(&dword_1CEFC7000, v39, v40, "🧹  vacuum-ing wharf with an upper bound of %ld", v41, 0xCu);
    MEMORY[0x1D386CDC0](v41, -1, -1);
  }

  (*(v52 + 8))(v14, v11);
  v42 = *(*(v7 + 32) + 16);
  v43 = swift_allocObject();
  v45 = v54;
  v44 = v55;
  v43[2] = a5;
  v43[3] = v44;
  v46 = v53;
  v43[4] = v7;
  v43[5] = v46;
  v43[6] = v45;
  v47 = *(*v42 + 736);

  v47(v37, sub_1CF48548C, v43);
}

uint64_t sub_1CF3CB510()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000032, 0x80000001CFA47180);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA44350);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  return 0;
}

uint64_t sub_1CF3CB608()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000032, 0x80000001CFA47140);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA44350);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  return 0;
}

uint64_t sub_1CF3CB700()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA470E0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA47110);
  if (qword_1EDEA5298 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v1 = sub_1CF9E6C18();
  v3 = v2;

  MEMORY[0x1D3868CC0](v1, v3);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  return 0;
}

uint64_t sub_1CF3CB8E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = (a3 >> 8) & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = a7;
  *(v17 + 24) = a8;
  *(v17 + 32) = a4;
  *(v17 + 40) = a1;
  *(v17 + 48) = a2;
  *(v17 + 56) = a3;
  *(v17 + 57) = v15;
  *(v17 + 64) = a5;
  *(v17 + 72) = a6;
  swift_retain_n();

  sub_1CF485540(a1, a2, a3, v15);
  sub_1CF382FBC("wharfVacuum(force:with:completionHandler:)", 42, 2, 2, sub_1CF4854A8, v16, sub_1CF485500, v17);
}

uint64_t sub_1CF3CBA2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(_BYTE *), uint64_t a7)
{
  v34 = a6;
  v33[0] = a1;
  v33[1] = a7;
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v33 - v20;
  *(a2 + qword_1EDEBBE00) = 1;
  if ((a5 & 0x100) == 0)
  {
    v22 = fpfs_current_or_default_log();
    if (a5)
    {
      sub_1CF9E6128();
      v23 = sub_1CF9E6108();
      v24 = sub_1CF9E72C8();
      if (!os_log_type_enabled(v23, v24))
      {
        v21 = v18;
        goto LABEL_10;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1CEFC7000, v23, v24, "🧹  wharf didn't have anything to vacuum", v25, 2u);
      v21 = v18;
    }

    else
    {
      sub_1CF9E6128();
      v23 = sub_1CF9E6108();
      v31 = sub_1CF9E72C8();
      if (!os_log_type_enabled(v23, v31))
      {
        v21 = v15;
        goto LABEL_10;
      }

      v25 = swift_slowAlloc();
      *v25 = 134218240;
      *(v25 + 4) = a3;
      *(v25 + 12) = 2048;
      *(v25 + 14) = a4;
      _os_log_impl(&dword_1CEFC7000, v23, v31, "🧹  vacuum-ed %ld files from <wharf>/ingest/, %ld files from <wharf>/propagate/", v25, 0x16u);
      v21 = v15;
    }

    goto LABEL_9;
  }

  v26 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v27 = a3;
  v23 = sub_1CF9E6108();
  v28 = sub_1CF9E72A8();
  sub_1CF2F63CC(a3, a4, a5, 1);
  if (os_log_type_enabled(v23, v28))
  {
    v25 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v25 = 138412290;
    swift_getErrorValue();
    v30 = Error.prettyDescription.getter(v35);
    *(v25 + 4) = v30;
    *v29 = v30;
    _os_log_impl(&dword_1CEFC7000, v23, v28, "🧹  wharf vacuum failed: %@", v25, 0xCu);
    sub_1CEFCCC44(v29, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v29, -1, -1);
LABEL_9:
    MEMORY[0x1D386CDC0](v25, -1, -1);
  }

LABEL_10:

  (*(v12 + 8))(v21, v11);
  sub_1CF1A91AC(v33[0], v36);
  v34(v36);
  return sub_1CEFCCC44(v36, &qword_1EC4C0700, &qword_1CFA05B10);
}

uint64_t sub_1CF3CBDB4(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a1;
  swift_retain_n();

  sub_1CF92DC74("vacuum(force:completionHandler:)", 32, 2u, sub_1CF045408, 0, sub_1CF485B6C, v7, sub_1CF484C68, v8);
}

uint64_t sub_1CF3CBEC0(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4, int a5)
{
  v61 = a5;
  v64 = a3;
  v58 = a1;
  v60 = *a2;
  v8 = sub_1CF9E5CF8();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  v65 = sub_1CF9E6118();
  v13 = *(v65 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v20 = qword_1EDEBBDF8;
  if (*(a2 + qword_1EDEBBDF8) == 1)
  {
    v21 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v22 = sub_1CF9E6108();
    v23 = sub_1CF9E72A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1CEFC7000, v22, v23, "🧹  vacuum still running when triggered", v24, 2u);
      MEMORY[0x1D386CDC0](v24, -1, -1);
    }

    (*(v13 + 8))(v19, v65);
    return v64(0);
  }

  else
  {
    v57 = v12;
    sub_1CF9E5CE8();
    v26 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v27 = sub_1CF9E6108();
    v28 = sub_1CF9E72C8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v56 = a4;
      v30 = v29;
      *v29 = 0;
      _os_log_impl(&dword_1CEFC7000, v27, v28, "🧹  vacuum-ing", v29, 2u);
      v31 = v30;
      a4 = v56;
      MEMORY[0x1D386CDC0](v31, -1, -1);
    }

    (*(v13 + 8))(v16, v65);
    *(a2 + v20) = 1;
    sub_1CF3CA94C();
    if (v5)
    {
      return (*(v62 + 8))(v57, v63);
    }

    else
    {
      v56 = a4;
      v65 = v32;
      v33 = qword_1EDEBBE08;
      if ((*(a2 + qword_1EDEBBE08) & 1) == 0)
      {
        v34 = sub_1CF3BD984();
        v35 = *(v34 + 16);
        v55 = v34;
        v36 = (v34 + 32);
        v37 = v35 + 1;
        while (--v37)
        {
          v38 = v36 + 5;
          v39 = v36[3];
          v40 = v36[4];
          __swift_project_boxed_opaque_existential_1(v36, v39);
          (*(v40 + 16))(v39, v40);
          v36 = v38;
        }

        *(a2 + v33) = 1;
      }

      v41 = v57;
      v42 = v58[4];
      v54 = v58[3];
      v55 = v42;
      v58 = __swift_project_boxed_opaque_existential_1(v58, v54);
      v43 = v62;
      v44 = v59;
      (*(v62 + 16))(v59, v41, v63);
      v45 = (*(v43 + 80) + 80) & ~*(v43 + 80);
      v46 = (v9 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = swift_allocObject();
      v48 = v60;
      *(v47 + 16) = *(v60 + 2632);
      *(v47 + 24) = *(v48 + 2640);
      v49 = v64;
      *(v47 + 40) = *(v48 + 2656);
      *(v47 + 48) = v49;
      *(v47 + 56) = v56;
      v50 = v61 & 1;
      *(v47 + 64) = v61 & 1;
      *(v47 + 72) = a2;
      v51 = v47 + v45;
      v52 = v63;
      (*(v43 + 32))(v51, v44, v63);
      *(v47 + v46) = v65;

      sub_1CF3CAE48(v50, v58, sub_1CF484C8C, v47, v54, v55);

      return (*(v43 + 8))(v57, v52);
    }
  }
}

uint64_t sub_1CF3CC400(uint64_t a1, void (*a2)(void), uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a5;
  v31 = a6;
  v32 = v13;
  v14 = sub_1CF9E5CF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, &v33, &qword_1EC4C0700, &qword_1CFA05B10);
  if (v34)
  {
    sub_1CF054EA0(&v33, v35);
    if (a4)
    {
      goto LABEL_7;
    }

    if (qword_1EDEADB60 != -1)
    {
      swift_once();
    }

    if (![qword_1EDEBBD10 shouldPause])
    {
LABEL_7:
      v30 = a2;
      v28 = a7;
      v18 = v36;
      v19 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v29 = (*(v19 + 96))(v18, v19);
      (*(v15 + 16))(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v14);
      v20 = (*(v15 + 80) + 48) & ~*(v15 + 80);
      v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
      LODWORD(v31) = a4;
      v23 = swift_allocObject();
      v24 = v32;
      *(v23 + 16) = *(v32 + 2632);
      *(v23 + 24) = *(v24 + 2640);
      *(v23 + 40) = *(v24 + 2656);
      (*(v15 + 32))(v23 + v20, v17, v14);
      *(v23 + v21) = a5;
      *(v23 + v22) = v28;
      v25 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v25 = v30;
      v25[1] = a3;

      sub_1CF3CAC18(v31 & 1, v29, sub_1CF484D34, v23);
    }

    else
    {
      a2(0);
    }

    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_1CEFCCC44(&v33, &qword_1EC4C0700, &qword_1CFA05B10);
    return (a2)(0);
  }
}

void sub_1CF3CC6F8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v116 = a6;
  v117 = a5;
  v120 = a1;
  v8 = sub_1CF9E5DB8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v108 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0708, &unk_1CFA05B18);
  v110 = *(v11 - 8);
  v111 = v11;
  v12 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v109 = v92 - v13;
  v112 = sub_1CF9E56F8();
  v105 = *(v112 - 8);
  v14 = *(v105 + 8);
  MEMORY[0x1EEE9AC00](v112);
  v103 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1CF9E56D8();
  v104 = *(v113 - 8);
  v16 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v18 = v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1CF9E5708();
  v106 = *(v107 - 8);
  v19 = *(v106 + 8);
  MEMORY[0x1EEE9AC00](v107);
  v21 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CF9E6118();
  v114 = *(v22 - 8);
  v115 = v22;
  v23 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v92 - v27;
  v29 = sub_1CF9E5CF8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C28();
  v35 = v34;
  (*(v30 + 8))(v33, v29);
  v119 = a3;
  sub_1CF3CA94C();
  v37 = v36;
  v118 = a4 - *&v36;
  v38 = v120;
  if (__OFSUB__(a4, *&v36))
  {
    __break(1u);
  }

  else
  {
    if (a4)
    {
      v39 = v118 * 100.0 / a4;
    }

    else
    {
      v39 = 0.0;
    }

    v40 = fpfs_current_or_default_log();
    if (v38)
    {
      v41 = v28;
      sub_1CF9E6128();
      v42 = sub_1CF9E6108();
      v43 = sub_1CF9E72C8();
      v44 = v43;
      v102 = v42;
      if (os_log_type_enabled(v42, v43))
      {
        v45 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v124 = v101;
        v99 = v45;
        *v45 = 134218754;
        *(v45 + 4) = v35;
        *(v45 + 12) = 2080;
        v121 = v37;
        v98 = *MEMORY[0x1E69689E8];
        v46 = v104;
        v47 = v21;
        v48 = *(v104 + 104);
        v95 = v104 + 104;
        v97 = v48;
        v49 = v18;
        v50 = v113;
        v48(v18);
        v100 = v44;
        v51 = v103;
        sub_1CF9E56E8();
        sub_1CF9E53D8();
        v96 = *(v105 + 1);
        v105 = v41;
        v96(v51, v112);
        v104 = *(v46 + 8);
        (v104)(v18, v50);
        v94 = sub_1CF056E98();
        v93 = sub_1CF042F54(&unk_1EDEAB440, MEMORY[0x1E6968A00]);
        v92[1] = sub_1CF484DEC();
        v52 = v107;
        sub_1CF9E76A8();
        v53 = *(v106 + 1);
        v53(v47, v52);
        v54 = sub_1CEFD0DF0(v122, v123, &v124);

        v55 = v99;
        *(v99 + 14) = v54;
        *(v55 + 22) = 2080;
        v56 = v55;
        v121 = *&v118;
        v57 = v113;
        v97(v49, v98, v113);
        sub_1CF9E56E8();
        sub_1CF9E53D8();
        v96(v51, v112);
        (v104)(v49, v57);
        sub_1CF9E76A8();
        v53(v47, v52);
        v58 = sub_1CEFD0DF0(v122, v123, &v124);

        *(v56 + 24) = v58;
        *(v56 + 32) = 2080;
        v59 = v56;
        v121 = v39;
        sub_1CF9E5DA8();
        sub_1CF484E40();
        v60 = v109;
        sub_1CF9E5808();
        sub_1CEFCCCEC(&unk_1EDEAB428, &qword_1EC4C0708, &unk_1CFA05B18);
        v61 = v111;
        sub_1CF9E6608();
        (*(v110 + 8))(v60, v61);
        v62 = sub_1CEFD0DF0(v122, v123, &v124);

        *(v59 + 34) = v62;
        v63 = v102;
        _os_log_impl(&dword_1CEFC7000, v102, v100, "🧹  finished vacuum in %fs, newSize: %s, reclaimed: %s (%s)", v59, 0x2Au);
        v64 = v101;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v64, -1, -1);
        v38 = v120;
        MEMORY[0x1D386CDC0](v59, -1, -1);

        (*(v114 + 8))(v105, v115);
      }

      else
      {

        (*(v114 + 8))(v41, v115);
      }

      v91 = v119;
      *(v119 + qword_1EDEBBE08) = 0;
      *(v91 + qword_1EDEBBE00) = 0;
    }

    else
    {
      v65 = v25;
      sub_1CF9E6128();
      v66 = sub_1CF9E6108();
      v67 = sub_1CF9E72C8();
      v68 = v67;
      v102 = v66;
      if (os_log_type_enabled(v66, v67))
      {
        v69 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v124 = v101;
        v99 = v69;
        *v69 = 134218754;
        *(v69 + 4) = v35;
        *(v69 + 12) = 2080;
        v121 = v37;
        v98 = *MEMORY[0x1E69689E8];
        v70 = v104;
        v71 = v21;
        v72 = *(v104 + 104);
        v96 = (v104 + 104);
        v97 = v72;
        v73 = v18;
        v74 = v113;
        v72(v18);
        v100 = v68;
        v75 = v103;
        sub_1CF9E56E8();
        sub_1CF9E53D8();
        v105 = *(v105 + 1);
        (v105)(v75, v112);
        v104 = *(v70 + 8);
        (v104)(v18, v74);
        v95 = sub_1CF056E98();
        v94 = sub_1CF042F54(&unk_1EDEAB440, MEMORY[0x1E6968A00]);
        v93 = sub_1CF484DEC();
        v76 = v107;
        sub_1CF9E76A8();
        v77 = *(v106 + 1);
        v77(v71, v76);
        v78 = sub_1CEFD0DF0(v122, v123, &v124);
        v106 = v65;
        v79 = v78;

        v80 = v99;
        *(v99 + 14) = v79;
        *(v80 + 22) = 2080;
        v81 = v80;
        v121 = *&v118;
        v82 = v113;
        v97(v73, v98, v113);
        sub_1CF9E56E8();
        sub_1CF9E53D8();
        (v105)(v75, v112);
        (v104)(v73, v82);
        sub_1CF9E76A8();
        v77(v71, v76);
        v83 = sub_1CEFD0DF0(v122, v123, &v124);

        *(v81 + 24) = v83;
        *(v81 + 32) = 2080;
        v84 = v81;
        v121 = v39;
        sub_1CF9E5DA8();
        sub_1CF484E40();
        v85 = v109;
        sub_1CF9E5808();
        sub_1CEFCCCEC(&unk_1EDEAB428, &qword_1EC4C0708, &unk_1CFA05B18);
        v86 = v111;
        sub_1CF9E6608();
        v87 = v86;
        v38 = v120;
        (*(v110 + 8))(v85, v87);
        v88 = sub_1CEFD0DF0(v122, v123, &v124);

        *(v84 + 34) = v88;
        v89 = v102;
        _os_log_impl(&dword_1CEFC7000, v102, v100, "🧹  pausing vacuum because DAS asked for deferral after %fs, newSize: %s, reclaimed: %s (%s)", v84, 0x2Au);
        v90 = v101;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v90, -1, -1);
        MEMORY[0x1D386CDC0](v84, -1, -1);

        (*(v114 + 8))(v106, v115);
      }

      else
      {

        (*(v114 + 8))(v25, v115);
      }
    }

    *(v119 + qword_1EDEBBDF8) = 0;
    v117(v38 & 1);
  }
}

uint64_t sub_1CF3CD500(void *a1, char a2, int a3, void (*a4)(void **), uint64_t a5)
{
  v27 = a3;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v5 + 82) & 0x20) != 0)
  {
    v22 = v5;
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E7298();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "Enumerator notification waiting for flush", v20, 2u);
      MEMORY[0x1D386CDC0](v20, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v21 = swift_allocObject();
    v21[2] = v22;
    v21[3] = a4;
    v21[4] = a5;

    sub_1CF3C3FC0("notifyEnumeratorsAfterNextFlush(connection:side:notifyBlock:)", 61, 2, v27 & 1, 0, 0, nullsub_1, 0, sub_1CF480134, v21);
  }

  else
  {
    v25 = &type metadata for SQLDatabaseReadWriteAccessor;
    v26 = &off_1F4C17970;
    v23 = a1;
    v24 = a2;
    v15 = a1;
    a4(&v23);
    return __swift_destroy_boxed_opaque_existential_1(&v23);
  }
}

uint64_t sub_1CF3CD754(uint64_t a1, int a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a4;
  v27 = a2;
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v6;
  if ((sub_1CF033B88() & 0x200000) != 0)
  {
    v25 = a5;
    v19 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v20 = sub_1CF9E6108();
    v21 = sub_1CF9E7298();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1CEFC7000, v20, v21, "Enumerator notification waiting for flush", v22, 2u);
      MEMORY[0x1D386CDC0](v22, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    v23 = swift_allocObject();
    v24 = v26;
    v23[2] = v25;
    v23[3] = a6;
    v23[4] = v24;
    v23[5] = a3;
    v23[6] = v29;

    sub_1CF3C4ED0("notifyEnumeratorsAfterNextFlush(connection:side:notifyBlock:)", 61, 2, v27 & 1, 0, 0, nullsub_1, 0, sub_1CF485428, v23);
  }

  else
  {
    v16 = *(a6 + 8);
    v28[3] = a5;
    v28[4] = v16;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
    a3(v28);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }
}

uint64_t sub_1CF3CD9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v12 = sub_1CF9E6108();
  v13 = sub_1CF9E7298();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v19 = a4;
    v15 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1CEFC7000, v12, v13, "Enumerator notification completed and flushed", v14, 2u);
    a4 = v19;
    MEMORY[0x1D386CDC0](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;

  sub_1CF7AAF88("notifyEnumeratorsAfterNextFlush(connection:side:notifyBlock:)", 61, 2, 0, nullsub_1, 0, sub_1CF480240, v16);
}

uint64_t sub_1CF3CDBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v12 = sub_1CF9E6108();
  v13 = sub_1CF9E7298();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v19 = a4;
    v15 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1CEFC7000, v12, v13, "Enumerator notification completed and flushed", v14, 2u);
    a4 = v19;
    MEMORY[0x1D386CDC0](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;

  sub_1CF92DFCC("notifyEnumeratorsAfterNextFlush(connection:side:notifyBlock:)", 61, 2, 0, nullsub_1, 0, sub_1CF48586C, v16);
}

void sub_1CF3CDDD4(void *a1, void *a2, uint64_t a3)
{
  v266 = a1;
  v5 = sub_1CF9E6118();
  v242 = *(v5 - 8);
  v243 = v5;
  v6 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v245 = &v230 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_1CF9E5CF8();
  v238 = *(v240 - 8);
  v8 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v240);
  v239 = &v230 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v237 = &v230 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v241 = &v230 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v246 = &v230 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v253 = (&v230 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v257 = &v230 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v256 = (&v230 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v252 = *(v24 - 8);
  v25 = *(v252 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v244 = &v230 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v258 = &v230 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v251 = &v230 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v260 = &v230 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v259 = &v230 - v33;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v34 = *(*(v261 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v261);
  v250 = &v230 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v247 = &v230 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v255 = &v230 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v254 = &v230 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v249 = &v230 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v248 = &v230 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v230 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v230 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v230 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53);
  v58 = &v230 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v230 - v59;
  v285 = a2;
  v286 = a3;
  v262 = a2;
  v263 = a3;
  v61 = a3;
  v62 = v265;
  v63 = v264;
  sub_1CF3D2E50(v266, a2, v61);
  if (v63)
  {
    return;
  }

  v232 = v52;
  v233 = v58;
  v234 = v55;
  v235 = v49;
  v264 = v25;
  v236 = v60;
  v64 = v62;
  v65 = *(v62 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_dynamicCastClassUnconditional();
  v66 = v266;
  sub_1CF3F0224(v266, v262, v263);
  v67 = *(v64 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  swift_dynamicCastClassUnconditional();
  sub_1CF3981E8(v66);
  v231 = 0;
  v68 = v236;
  sub_1CEFCCBDC(v66, v236, &qword_1EC4BE710, &qword_1CF9FE5A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 18)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload != 11)
        {
          if (EnumCaseMultiPayload == 16)
          {
            v70 = v250;
            sub_1CEFCCBDC(v68, v250, &qword_1EC4BE710, &qword_1CF9FE5A8);

            if ((*(v70 + 9) & 1) == 0)
            {
              if (*(v70 + 24))
              {
                v142 = *v70;
                v143 = *(v70 + 8);
                v144 = fpfs_current_or_default_log();
                v145 = v245;
                sub_1CF9E6128();
                v146 = sub_1CF9E6108();
                v147 = sub_1CF9E72C8();
                if (os_log_type_enabled(v146, v147))
                {
                  v148 = swift_slowAlloc();
                  v149 = swift_slowAlloc();
                  *&v268 = v149;
                  *v148 = 136315138;
                  *&v284[0] = v142;
                  BYTE8(v284[0]) = v143;
                  v151 = VFSItemID.description.getter(v149, v150);
                  v153 = sub_1CEFD0DF0(v151, v152, &v268);

                  *(v148 + 4) = v153;
                  v68 = v236;
                  _os_log_impl(&dword_1CEFC7000, v146, v147, "going to update enumeration change on %s", v148, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v149);
                  MEMORY[0x1D386CDC0](v149, -1, -1);
                  MEMORY[0x1D386CDC0](v148, -1, -1);

                  (*(v242 + 8))(v245, v243);
                }

                else
                {

                  (*(v242 + 8))(v145, v243);
                }

                v188 = swift_allocObject();
                *(v188 + 16) = v265;
                *(v188 + 24) = v142;
                *(v188 + 32) = v143;

                v189 = v231;
                sub_1CF3CD500(v262, v263, 0, sub_1CF47FD74, v188);
                v231 = v189;
              }

              goto LABEL_91;
            }

            v71 = *v70;
            v72 = *(v70 + 8);
            goto LABEL_36;
          }

LABEL_91:
          v118 = v68;
          goto LABEL_92;
        }

        v120 = v235;
        sub_1CEFCCBDC(v68, v235, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v122 = *(v120 + 27) == 1 || *(v120 + 26) == 1;
        if (*(v120 + 9))
        {
          v123 = *v120;
          if (v122)
          {
            sub_1CF47FDFC(*(v120 + 16), *(v120 + 24));
            sub_1CEFCCC44(v68, &qword_1EC4BE710, &qword_1CF9FE5A8);
            v124 = swift_allocObject();
            *(v124 + 16) = v265;
            *(v124 + 24) = v123;

            v125 = sub_1CF47FDA8;
            v126 = v262;
            v127 = v263;
            v128 = 1;
LABEL_61:
            sub_1CF3CD500(v126, v127, v128, v125, v124);

            return;
          }

          sub_1CEFD0994(*v120, *(v120 + 8), 1);
        }

        else if (v122)
        {
          v154 = *(v120 + 8);
          v155 = *v120;
          sub_1CF47FDFC(*(v120 + 16), *(v120 + 24));
          sub_1CEFCCC44(v68, &qword_1EC4BE710, &qword_1CF9FE5A8);
          v124 = swift_allocObject();
          *(v124 + 16) = v265;
          *(v124 + 24) = v155;
          *(v124 + 32) = v154;

          v125 = sub_1CF47FD74;
          v126 = v262;
          v127 = v263;
          v128 = 0;
          goto LABEL_61;
        }

        sub_1CF47FDFC(*(v120 + 16), *(v120 + 24));
        goto LABEL_91;
      }

      v107 = v68;
      v108 = v234;
      sub_1CEFCCBDC(v107, v234, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
      v110 = *(v109 + 48);
      v111 = *(v108 + *(v109 + 64));
      v112 = v256;
      sub_1CEFE55D0(v108, v256, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v113 = v257;
      sub_1CEFE55D0(v108 + v110, v257, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v114 = v253;
      sub_1CEFCCBDC(v112, v253, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v116 = *(*(v115 - 8) + 48);
      if (v116(v114, 1, v115) == 1)
      {
        sub_1CEFCCC44(v114, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v117 = v246;
        sub_1CEFCCBDC(v113, v246, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        if (v116(v117, 1, v115) == 1)
        {
          sub_1CEFCCC44(v117, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          sub_1CEFCCC44(v113, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          sub_1CEFCCC44(v112, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v118 = v236;
LABEL_92:
          sub_1CEFCCC44(v118, &qword_1EC4BE710, &qword_1CF9FE5A8);
          return;
        }

        v114 = v117;
      }

      v160 = *v114;
      sub_1CEFCCC44(v114, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v161 = swift_allocObject();
      *(v161 + 16) = v265;
      *(v161 + 24) = v160;

      v162 = v160;
      v163 = v231;
      sub_1CF3CD500(v262, v263, 1, sub_1CF47FE7C, v161);
      if (v163)
      {

        sub_1CEFCCC44(v257, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        sub_1CEFCCC44(v256, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v118 = v236;
        goto LABEL_92;
      }

      if ((v111 & 0x200000) != 0)
      {
        v186 = v257;
        v187 = v241;
        sub_1CEFCCBDC(v257, v241, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        if (v116(v187, 1, v115) == 1)
        {

          sub_1CEFCCC44(v186, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          sub_1CEFCCC44(v256, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v164 = v187;
          goto LABEL_88;
        }

        v194 = v187 + *(v115 + 52);
        v195 = *(v194 + 208);
        v280 = *(v194 + 192);
        v281 = v195;
        v282 = *(v194 + 224);
        v283 = *(v194 + 240);
        v196 = *(v194 + 144);
        v276 = *(v194 + 128);
        v277 = v196;
        v197 = *(v194 + 176);
        v278 = *(v194 + 160);
        v279 = v197;
        v198 = *(v194 + 80);
        v272 = *(v194 + 64);
        v273 = v198;
        v199 = *(v194 + 112);
        v274 = *(v194 + 96);
        v275 = v199;
        v200 = *(v194 + 16);
        v268 = *v194;
        v269 = v200;
        v201 = *(v194 + 48);
        v270 = *(v194 + 32);
        v271 = v201;
        sub_1CEFCCBDC(&v268, &v267, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        sub_1CEFCCC44(v187, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v284[12] = v280;
        v284[13] = v281;
        v284[14] = v282;
        *&v284[15] = v283;
        v284[8] = v276;
        v284[9] = v277;
        v284[10] = v278;
        v284[11] = v279;
        v284[4] = v272;
        v284[5] = v273;
        v284[6] = v274;
        v284[7] = v275;
        v284[0] = v268;
        v284[1] = v269;
        v284[2] = v270;
        v284[3] = v271;
        enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v284);
        v203 = v236;
        if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1 || (v204 = *&v284[1], v205 = *&v284[1], sub_1CEFCCC44(&v268, &qword_1EC4BECF0, &unk_1CF9FEEB0), !v204))
        {

          sub_1CEFCCC44(v257, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          sub_1CEFCCC44(v256, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v118 = v203;
          goto LABEL_92;
        }

        v206 = *(v265 + qword_1EDEBBC98);
        if (v206)
        {
          v207 = *(v265 + qword_1EDEBBC98);

          v208 = sub_1CF9E57E8();
          type metadata accessor for FPCK(0);
          v209 = sub_1CF6C4380(v208, 6, 89, 0, 0);
          v210 = sub_1CF9E6F08();
          v211 = v237;
          (*(*(v210 - 8) + 56))(v237, 1, 1, v210);
          v212 = swift_allocObject();
          v212[2] = 0;
          v212[3] = 0;
          v212[4] = v206;
          v212[5] = v209;
          v212[6] = v162;
          v213 = v162;
          sub_1CF81241C(0, 0, v211, &unk_1CFA05318, v212);
        }
      }

      sub_1CEFCCC44(v257, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v164 = v256;
LABEL_88:
      sub_1CEFCCC44(v164, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v118 = v236;
      goto LABEL_92;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v101 = v249;
      sub_1CEFCCBDC(v68, v249, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v102 = *v101;
      v103 = *(v101 + 8);
      v104 = swift_allocObject();
      *(v104 + 16) = v265;
      *(v104 + 24) = v102;
      *(v104 + 32) = v103;

      sub_1CF3CD500(v262, v263, 0, sub_1CF47FD74, v104);

      v96 = v68;
      goto LABEL_51;
    }

    if (EnumCaseMultiPayload != 6)
    {
      goto LABEL_91;
    }

    v76 = v233;
    sub_1CEFCCBDC(v68, v233, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
    v78 = *(v77 + 48);
    v79 = *(v76 + *(v77 + 64));
    v80 = v259;
    sub_1CEFE55D0(v76, v259, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v81 = v76 + v78;
    v82 = v260;
    sub_1CEFE55D0(v81, v260, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    v84 = *(v83 - 8);
    v256 = *(v84 + 48);
    v257 = v83;
    v255 = v84 + 48;
    v85 = (v256)(v80, 1);
    v261 = v79;
    v86 = (v79 & 3) == 0 || v85 == 1;
    v87 = !v86;
    LODWORD(v266) = v87;
    v88 = v80;
    v89 = v251;
    sub_1CEFCCBDC(v88, v251, &qword_1EC4C1B40, &unk_1CF9FCB70);
    sub_1CEFCCBDC(v82, v258, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v90 = *(v252 + 80);
    v91 = (v90 + 24) & ~v90;
    v92 = (v264 + v90 + v91) & ~v90;
    v93 = v92 + v264;
    v94 = swift_allocObject();
    *(v94 + 16) = v265;
    sub_1CEFE55D0(v89, v94 + v91, &qword_1EC4C1B40, &unk_1CF9FCB70);
    sub_1CEFE55D0(v258, v94 + v92, &qword_1EC4C1B40, &unk_1CF9FCB70);
    *(v94 + v93) = v266;

    v95 = v231;
    sub_1CF3CD500(v262, v263, 1, sub_1CF47FF88, v94);
    if (v95)
    {
      sub_1CEFCCC44(v260, &qword_1EC4C1B40, &unk_1CF9FCB70);

      sub_1CEFCCC44(v259, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v96 = v236;
LABEL_51:
      sub_1CEFCCC44(v96, &qword_1EC4BE710, &qword_1CF9FE5A8);
      return;
    }

    v156 = v261;

    v157 = v260;
    v158 = v244;
    sub_1CEFCCBDC(v260, v244, &qword_1EC4C1B40, &unk_1CF9FCB70);
    if ((v256)(v158, 1, v257) == 1)
    {
      sub_1CEFCCC44(v157, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v68 = v236;
      v159 = v259;
    }

    else
    {
      v183 = *v158;
      LODWORD(v266) = *(v158 + 8);
      sub_1CEFCCC44(v158, &unk_1EC4BE360, &qword_1CF9FE650);
      v86 = (v156 & 0x800000000020000) == 0;
      v68 = v236;
      v159 = v259;
      if (!v86)
      {
        v184 = swift_dynamicCastClassUnconditional();
        v185 = *(v184 + 16);
        *&v284[0] = v183;
        BYTE8(v284[0]) = v266;
        MEMORY[0x1EEE9AC00](v184);
        *(&v230 - 2) = v185;
        *(&v230 - 1) = v284;

        sub_1CF7D5920(sub_1CF480034, (&v230 - 4), v262);

        sub_1CEFCCC44(v157, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_99:
        sub_1CEFCCC44(v159, &qword_1EC4C1B40, &unk_1CF9FCB70);
        goto LABEL_50;
      }

      v158 = v157;
    }

    sub_1CEFCCC44(v158, &qword_1EC4C1B40, &unk_1CF9FCB70);
    goto LABEL_99;
  }

  if (EnumCaseMultiPayload <= 28)
  {
    if (EnumCaseMultiPayload != 19)
    {
      if (EnumCaseMultiPayload != 25)
      {
        goto LABEL_91;
      }

      v97 = v232;
      sub_1CEFCCBDC(v68, v232, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v98 = *v97;
      v99 = *(v97 + 8);
      if (*(v97 + 9))
      {
        v100 = swift_allocObject();
        *(v100 + 16) = v265;
        *(v100 + 24) = v98;

        sub_1CEFD0988(v98, v99, 1);
        sub_1CF3CD500(v262, v263, 1, sub_1CF47FE14, v100);
        sub_1CEFD0994(v98, v99, 1);
      }

      else
      {
        v133 = swift_allocObject();
        *(v133 + 16) = v265;
        *(v133 + 24) = v98;
        *(v133 + 32) = v99;

        sub_1CF3CD500(v262, v263, 0, sub_1CF47FE48, v133);
      }

LABEL_49:

LABEL_50:
      v96 = v68;
      goto LABEL_51;
    }

    v105 = v254;
    sub_1CEFCCBDC(v68, v254, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v106 = *(v265 + 32);
    if (*(v106 + 33))
    {
      goto LABEL_30;
    }

    v134 = v231;
    v135 = (*(*v67 + 272))(&v285, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (v134)
    {

      goto LABEL_50;
    }

    v231 = 0;
    *(v106 + 33) = (v135 & 1) == 0;
    if (v135 & 1) != 0 || (v165 = *(**(v106 + 16) + 848), v166 = , v167 = v165(v166), v168 = , (v167))
    {
LABEL_30:

      goto LABEL_91;
    }

    (*(**(v106 + 16) + 96))(v284, v168);
    v169 = v239;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v171 = v170;
    v172 = *(v238 + 8);
    v172(v169, v240);
    v173 = v171 * 1000000000.0;
    if (COERCE__INT64(fabs(v171 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v173 > -9.22337204e18)
    {
      if (v173 < 9.22337204e18)
      {
        v174 = v173;
        v175 = *&v284[0];
        v176 = BYTE8(v284[0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9F8, &qword_1CF9FADC0);
        v177 = swift_allocObject();
        *(v177 + 152) = v176;
        *(v177 + 16) = 0u;
        *(v177 + 32) = 0u;
        *(v177 + 48) = 1;
        *(v177 + 56) = 0u;
        *(v177 + 72) = 0u;
        *(v177 + 88) = 0;
        *(v177 + 96) = xmmword_1CF9FEC30;
        *(v177 + 112) = 0;
        *(v177 + 120) = 0;
        *(v177 + 128) = v174;
        *(v177 + 136) = 0;
        *(v177 + 144) = v175;
        v178 = v239;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v180 = v179;
        v172(v178, v240);
        v181 = v180 * 1000000000.0;
        if (COERCE__INT64(fabs(v180 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v182 = v231;
          if (v181 > -9.22337204e18)
          {
            if (v181 < 9.22337204e18)
            {
              sub_1CF902E70(v177, v181, v262, v263);
              v231 = v182;

              goto LABEL_30;
            }

LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    __break(1u);
    goto LABEL_119;
  }

  if (EnumCaseMultiPayload != 29)
  {
    if (EnumCaseMultiPayload == 36)
    {
      v129 = v247;
      sub_1CEFCCBDC(v68, v247, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v130 = *v129;
      v131 = *(v129 + 8);
      if ((*(v129 + 9) & 1) == 0)
      {
        sub_1CEFD0994(*v129, *(v129 + 8), 0);
        goto LABEL_91;
      }

      v132 = swift_allocObject();
      *(v132 + 16) = v265;
      *(v132 + 24) = v130;

      sub_1CEFD0988(v130, v131, 1);
      sub_1CF3CD500(v262, v263, 1, sub_1CF47FDA8, v132);
      sub_1CEFD0994(v130, v131, 1);
    }

    else
    {
      if (EnumCaseMultiPayload != 37)
      {
        goto LABEL_91;
      }

      v73 = v248;
      sub_1CEFCCBDC(v68, v248, &qword_1EC4BE710, &qword_1CF9FE5A8);
      memcpy(v284, v73, 0x208uLL);
      v74 = BYTE8(v284[0]) == 255;
      v75 = swift_allocObject();
      *(v75 + 16) = v265;
      memcpy((v75 + 24), v73, 0x208uLL);

      sub_1CEFCCBDC(v284, &v268, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CF3CD500(v262, v263, v74, sub_1CF47FDDC, v75);
      sub_1CEFCCC44(v284, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    }

    goto LABEL_49;
  }

  v119 = v255;
  sub_1CEFCCBDC(v68, v255, &qword_1EC4BE710, &qword_1CF9FE5A8);
  if (*(v119 + 9))
  {
    v71 = *v119;
    v72 = *(v119 + 8);
LABEL_36:
    sub_1CEFD0994(v71, v72, 1);
    goto LABEL_91;
  }

  v136 = *(v119 + 10);
  v137 = *(v265 + 32);
  v138 = v67;
  v139 = *(v137 + 33);
  v140 = v231;
  v141 = (*(*v138 + 272))(&v285, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v140)
  {
    sub_1CEFD0994(*v119, *(v119 + 8), *(v119 + 9));
    goto LABEL_50;
  }

  if (v139)
  {
    if (v141)
    {
      *(v137 + 33) = 0;
    }

    goto LABEL_113;
  }

  if ((v141 & 1) == 0)
  {
    *(v137 + 33) = 1;
    v190 = *(**(v137 + 16) + 848);

    v192 = v190(v191);

    if ((v192 & 1) == 0)
    {
      (*(**(v137 + 16) + 96))(v284, v193);
      v214 = v239;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v216 = v215;
      v217 = *(v238 + 8);
      v217(v214, v240);
      v218 = v216 * 1000000000.0;
      if (COERCE__INT64(fabs(v216 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v218 > -9.22337204e18)
        {
          if (v218 < 9.22337204e18)
          {
            v219 = v218;
            v220 = *&v284[0];
            v221 = BYTE8(v284[0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9F8, &qword_1CF9FADC0);
            v222 = swift_allocObject();
            *(v222 + 152) = v221;
            *(v222 + 16) = 0u;
            *(v222 + 32) = 0u;
            *(v222 + 48) = 1;
            *(v222 + 56) = 0u;
            *(v222 + 72) = 0u;
            *(v222 + 88) = 0;
            *(v222 + 96) = xmmword_1CF9FEC30;
            *(v222 + 112) = 0;
            *(v222 + 120) = 0;
            *(v222 + 128) = v219;
            *(v222 + 136) = 0;
            *(v222 + 144) = v220;
            v223 = v239;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v225 = v224;
            v217(v223, v240);
            v226 = v225 * 1000000000.0;
            if (COERCE__INT64(fabs(v225 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v226 > -9.22337204e18)
              {
                if (v226 < 9.22337204e18)
                {
                  sub_1CF902E70(v222, v226, v262, v263);

                  v68 = v236;
                  v119 = v255;
                  goto LABEL_113;
                }

LABEL_128:
                __break(1u);
                return;
              }

LABEL_127:
              __break(1u);
              goto LABEL_128;
            }

LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

LABEL_123:
      __break(1u);
      goto LABEL_124;
    }
  }

LABEL_113:
  if (v136)
  {
    v227 = *(v265 + qword_1EDEBBDF0);
    if (v227)
    {
      v228 = *(v265 + qword_1EDEBBDF0 + 8);

      v227(v229);
      sub_1CEFF7124(v227);
    }
  }

  sub_1CEFD0994(*v119, *(v119 + 8), *(v119 + 9));
  sub_1CEFCCC44(v68, &qword_1EC4BE710, &qword_1CF9FE5A8);
}

uint64_t sub_1CF3CFB14(char *a1, void (**a2)(void), uint64_t a3, uint64_t a4)
{
  v537 = a4;
  v538 = a3;
  v542 = a2;
  v536 = a1;
  v5 = *v4;
  v6 = sub_1CF9E6118();
  v473 = *(v6 - 8);
  v474 = v6;
  v7 = *(v473 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v477 = &v456 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v466 = v9;
  v467 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v465 = &v456 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v5[331];
  v14 = v5[329];
  v15 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1CF9E75D8();
  v497 = *(v17 - 8);
  v498 = v17;
  v18 = *(v497 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v496 = &v456 - v19;
  v539 = v15;
  v20 = v5[330];
  *&v21 = v14;
  *(&v21 + 1) = v20;
  v541 = v21;
  v22 = v5[332];
  *&v23 = v13;
  *(&v23 + 1) = v22;
  v540 = v23;
  v560 = v21;
  v561 = v23;
  v499 = type metadata accessor for ItemReconciliation();
  v521 = *(v499 - 8);
  v24 = *(v521 + 64);
  v25 = MEMORY[0x1EEE9AC00](v499);
  v494 = v26;
  v495 = &v456 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v520 = &v456 - v27;
  v28 = swift_getAssociatedTypeWitness();
  v503 = sub_1CF9E75D8();
  v482 = *(v503 - 8);
  v29 = *(v482 + 64);
  v30 = MEMORY[0x1EEE9AC00](v503);
  v507 = &v456 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v508 = &v456 - v32;
  v527 = v20;
  v531 = v22;
  v505 = type metadata accessor for SnapshotItem();
  v33 = sub_1CF9E75D8();
  v34 = *(v33 - 8);
  v516 = v33;
  v517 = v34;
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v480 = &v456 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v464 = &v456 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v493 = &v456 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v523 = (&v456 - v43);
  MEMORY[0x1EEE9AC00](v42);
  v515 = &v456 - v44;
  v528 = v14;
  v529 = v13;
  v509 = type metadata accessor for SnapshotItem();
  v501 = sub_1CF9E75D8();
  v514 = *(v501 - 8);
  v45 = v514[8];
  v46 = MEMORY[0x1EEE9AC00](v501);
  v476 = &v456 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v512 = &v456 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v511 = &v456 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v522 = (&v456 - v53);
  v491 = v54;
  MEMORY[0x1EEE9AC00](v52);
  v513 = &v456 - v55;
  v560 = v541;
  v561 = v540;
  v534 = type metadata accessor for PersistenceTrigger();
  v532 = *(v534 - 8);
  v56 = *(v532 + 64);
  v57 = MEMORY[0x1EEE9AC00](v534);
  v490 = &v456 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v489 = &v456 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v504 = &v456 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v506 = &v456 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v519 = &v456 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v485 = &v456 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v492 = &v456 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v487 = &v456 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v484 = &v456 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v483 = &v456 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v533 = &v456 - v78;
  v530 = v28;
  v525 = *(v28 - 8);
  v79 = *(v525 + 8);
  v80 = MEMORY[0x1EEE9AC00](v77);
  v478 = &v456 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x1EEE9AC00](v80);
  v488 = &v456 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v471 = &v456 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v502 = &v456 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v486 = &v456 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v479 = &v456 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v500 = &v456 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v469 = &v456 - v94;
  v526 = AssociatedTypeWitness;
  v524 = *(AssociatedTypeWitness - 8);
  v95 = *(v524 + 8);
  v96 = MEMORY[0x1EEE9AC00](v93);
  v472 = &v456 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = MEMORY[0x1EEE9AC00](v96);
  v470 = &v456 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v481 = &v456 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v475 = &v456 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v510 = &v456 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v518 = &v456 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v468 = &v456 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v111 = &v456 - v110;
  v112 = MEMORY[0x1EEE9AC00](v109);
  v114 = &v456 - v113;
  v115 = MEMORY[0x1EEE9AC00](v112);
  v117 = &v456 - v116;
  v118 = MEMORY[0x1EEE9AC00](v115);
  v120 = &v456 - v119;
  MEMORY[0x1EEE9AC00](v118);
  v122 = &v456 - v121;
  v123 = v535;
  result = sub_1CF59B2F0(v536, v542, v538, v537);
  if (!v123)
  {
    v461 = v111;
    v462 = v114;
    v459 = v122;
    v460 = v117;
    v458 = v120;
    v535 = v95;
    v463 = v79;
    v125 = v539;
    v126 = v539[3];
    v560 = v541;
    v561 = v540;
    type metadata accessor for SQLJobRegistry();
    swift_dynamicCastClassUnconditional();
    v127 = v536;
    v128 = v538;
    v129 = v537;
    sub_1CF4D12EC(v536, v542, v538, v537);
    v130 = v125[2];
    v560 = v541;
    v561 = v540;
    type metadata accessor for SQLReconciliationTable();
    swift_dynamicCastClassUnconditional();
    sub_1CF230B6C(v127, v542, v128, v129);
    v457 = 0;
    v131 = *(v532 + 16);
    v131(v533, v127, v534);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 18)
    {
      v133 = v531;
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload != 7)
        {
          v134 = v533;
          if (EnumCaseMultiPayload != 11)
          {
            v135 = v131;
            v136 = v526;
            if (EnumCaseMultiPayload == 16)
            {
              v137 = v490;
              v135(v490, v533, v534);
              AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
              v139 = v530;
              v140 = swift_getAssociatedConformanceWitness();
              *&v560 = v136;
              *(&v560 + 1) = v139;
              *&v541 = AssociatedConformanceWitness;
              *&v561 = AssociatedConformanceWitness;
              *(&v561 + 1) = v140;
              v141 = type metadata accessor for ReconciliationID();
              __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
              TupleTypeMetadata3 = swift_getTupleTypeMetadata3();

              if (swift_getEnumCaseMultiPayload() == 1)
              {
                (*(*(v141 - 8) + 8))(v137, v141);
                goto LABEL_124;
              }

              v325 = v134;
              v326 = v137[*(TupleTypeMetadata3 + 64)];
              v327 = v524;
              v328 = v524 + 32;
              v329 = *(v524 + 4);
              v330 = v137;
              v331 = v481;
              (v329)(v481, v330, v136);
              v226 = v532;
              if (v326 != 1)
              {
                v327[1](v331, v136);
                v144 = v534;
                v134 = v325;
                return (*(v226 + 8))(v134, v144);
              }

              v536 = v329;
              *&v540 = v328;
              v332 = fpfs_current_or_default_log();
              v333 = v477;
              sub_1CF9E6128();
              v334 = v327[2];
              v335 = v470;
              (v334)(v470, v331, v136);
              v336 = sub_1CF9E6108();
              LODWORD(v530) = sub_1CF9E72C8();
              if (os_log_type_enabled(v336, v530))
              {
                v337 = swift_slowAlloc();
                v521 = v337;
                v523 = swift_slowAlloc();
                *&v560 = v523;
                *v337 = 136315138;
                v522 = v336;
                v338 = v475;
                (v334)(v475, v335, v136);
                v525 = v334;
                v339 = *(v524 + 1);
                v339(v335, v136);
                v340 = *(v541 + 16);
                v341 = sub_1CF9E7F98();
                v343 = v342;
                *&v541 = v339;
                v339(v338, v136);
                v344 = sub_1CEFD0DF0(v341, v343, &v560);

                v345 = v521;
                *(v521 + 4) = v344;
                v346 = v522;
                v347 = v345;
                _os_log_impl(&dword_1CEFC7000, v522, v530, "going to update enumeration change on %s", v345, 0xCu);
                v348 = v523;
                __swift_destroy_boxed_opaque_existential_1(v523);
                MEMORY[0x1D386CDC0](v348, -1, -1);
                v226 = v532;
                MEMORY[0x1D386CDC0](v347, -1, -1);

                (*(v473 + 8))(v477, v474);
                v349 = v525;
              }

              else
              {
                *&v541 = *(v524 + 1);
                (v541)(v335, v136);

                (*(v473 + 8))(v333, v474);
                v349 = v334;
              }

              v415 = v529;
              v416 = v472;
              (v349)(v472, v331, v136);
              v417 = (*(v524 + 80) + 72) & ~*(v524 + 80);
              v418 = swift_allocObject();
              v419 = v527;
              v418[2] = v528;
              v418[3] = v419;
              v420 = v538;
              v418[4] = v538;
              v418[5] = v415;
              v421 = v537;
              v418[6] = v531;
              v418[7] = v421;
              v418[8] = v539;
              (v536)(v418 + v417, v416, v136);

              v422 = v457;
              sub_1CF3CD754(v542, 0, sub_1CF484560, v418, v420, v421);
              v457 = v422;
              if (v422)
              {
                (v541)(v481, v136);

                return (*(v226 + 8))(v533, v534);
              }

              (v541)(v481, v136);

              goto LABEL_72;
            }

LABEL_124:
            v226 = v532;
            v144 = v534;
            return (*(v226 + 8))(v134, v144);
          }

          v254 = v492;
          v131(v492, v533, v534);
          v255 = v526;
          v256 = swift_getAssociatedConformanceWitness();
          v257 = v530;
          v258 = swift_getAssociatedConformanceWitness();
          *&v560 = v255;
          *(&v560 + 1) = v257;
          *&v561 = v256;
          v259 = v256;
          *(&v561 + 1) = v258;
          *&v560 = type metadata accessor for ReconciliationID();
          *(&v560 + 1) = sub_1CF9E75D8();
          *&v561 = &type metadata for ContentStatus;
          *(&v561 + 1) = &type metadata for ContentStatus;
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          *&v541 = TupleTypeMetadata[12];
          v261 = v254[TupleTypeMetadata[16]];
          LODWORD(v256) = v254[TupleTypeMetadata[20]];
          *&v560 = v255;
          *(&v560 + 1) = v257;
          *&v561 = v259;
          *(&v561 + 1) = v258;
          type metadata accessor for ReconciliationID();
          v262 = swift_getEnumCaseMultiPayload();
          v264 = v256 == 1 || v261 == 1;
          if (v262 != 1)
          {
            v226 = v532;
            if (v264)
            {
              v350 = v524 + 32;
              v351 = *(v524 + 4);
              v352 = v459;
              v353 = v526;
              v351(v459, v254, v526);
              v354 = v351;
              *&v540 = v351;
              v355 = sub_1CF9E75D8();
              (*(*(v355 - 8) + 8))(&v254[v541], v355);
              (*(v226 + 8))(v533, v534);
              v356 = v468;
              v354(v468, v352, v353);
              v357 = (v350[48] + 72) & ~v350[48];
              v358 = swift_allocObject();
              v359 = v527;
              v358[2] = v528;
              v358[3] = v359;
              v360 = v538;
              v361 = v529;
              v358[4] = v538;
              v358[5] = v361;
              v362 = v537;
              v358[6] = v531;
              v358[7] = v362;
              v358[8] = v539;
              (v540)(v358 + v357, v356, v353);

              v277 = sub_1CF484560;
              v278 = v542;
              v279 = 0;
              v280 = v358;
              v281 = v360;
              v282 = v362;
              goto LABEL_66;
            }

            (*(v524 + 1))(v254, v526);
            v387 = sub_1CF9E75D8();
            (*(*(v387 - 8) + 8))(&v254[v541], v387);
LABEL_108:
            v134 = v533;
            v144 = v534;
            return (*(v226 + 8))(v134, v144);
          }

          if (v264)
          {
            v266 = v525 + 32;
            v265 = *(v525 + 4);
            v267 = v469;
            v268 = v530;
            v265(v469, v254, v530);
            *&v540 = v265;
            v269 = sub_1CF9E75D8();
            (*(*(v269 - 8) + 8))(&v254[v541], v269);
            (*(v532 + 8))(v533, v534);
            v270 = v471;
            v265(v471, v267, v268);
            v271 = (v266[48] + 72) & ~v266[48];
            v272 = swift_allocObject();
            v273 = v527;
            v272[2] = v528;
            v272[3] = v273;
            v274 = v538;
            v275 = v529;
            v272[4] = v538;
            v272[5] = v275;
            v276 = v537;
            v272[6] = v531;
            v272[7] = v276;
            v272[8] = v539;
            (v540)(v272 + v271, v270, v268);

            v277 = sub_1CF48458C;
            v278 = v542;
            v279 = 1;
            v280 = v272;
            v281 = v274;
            v282 = v276;
LABEL_66:
            sub_1CF3CD754(v278, v279, v277, v280, v281, v282);
          }

          (*(v525 + 1))(v254, v530);
          v386 = sub_1CF9E75D8();
          (*(*(v386 - 8) + 8))(&v254[v541], v386);
LABEL_107:
          v226 = v532;
          goto LABEL_108;
        }

        v227 = v484;
        v131(v484, v533, v534);
        v228 = v516;
        v229 = swift_getTupleTypeMetadata3();
        v230 = *(v229 + 48);
        v536 = *&v227[*(v229 + 64)];
        v231 = v517;
        v232 = *(v517 + 32);
        v233 = v515;
        v232(v515, v227, v228);
        v232(v523, &v227[v230], v228);
        v234 = v493;
        *&v541 = *(v231 + 16);
        (v541)(v493, v233, v228);
        v235 = v505;
        v236 = *(v505 - 8);
        v237 = *(v236 + 48);
        v238 = v237(v234, 1, v505);
        *&v540 = v236;
        v535 = (v231 + 16);
        v526 = v236 + 48;
        v524 = v237;
        if (v238 == 1)
        {
          v520 = *(v231 + 8);
          (v520)(v234, v228);
          v239 = v235;
          v240 = *(v525 + 7);
          v241 = v530;
          v522 = (v525 + 56);
          v521 = v240;
          (v240)(v507, 1, 1, v530);
          v242 = v480;
          (v541)(v480, v523, v228);
          v243 = v239;
          if (v237(v242, 1, v239) == 1)
          {
            (v520)(v242, v228);
            v244 = 1;
            v245 = v503;
            v246 = v508;
            v247 = v525;
          }

          else
          {
            v367 = v242;
            v247 = v525;
            v246 = v508;
            (*(v525 + 2))(v508, v367, v241);
            (*(v540 + 8))(v367, v243);
            v244 = 0;
            v245 = v503;
          }

          (v521)(v246, v244, 1, v241);
          v368 = *(v247 + 6);
          v369 = v507;
          v370 = v368(v507, 1, v241);
          v134 = v533;
          if (v370 != 1)
          {
            (*(v482 + 8))(v369, v245);
          }

          v319 = v508;
          v320 = v368(v508, 1, v241);
        }

        else
        {
          v316 = v525;
          v317 = v507;
          v241 = v530;
          (*(v525 + 2))(v507, v234, v530);
          (*(v236 + 8))(v234, v235);
          v318 = *(v316 + 7);
          v318(v317, 0, 1, v241);
          v319 = v508;
          (*(v316 + 4))(v508, v317, v241);
          v318(v319, 0, 1, v241);
          v134 = v533;
          v245 = v503;
          v320 = (*(v316 + 6))(v319, 1, v241);
        }

        if (v320 == 1)
        {
          v371 = *(v517 + 8);
          v372 = v245;
          v373 = v516;
          v371(v523, v516);
          v371(v515, v373);
          (*(v482 + 8))(v319, v372);
          goto LABEL_124;
        }

        v374 = v525;
        v522 = *(v525 + 4);
        v375 = v500;
        (v522)(v500, v319, v241);
        v376 = v479;
        (*(v374 + 2))(v479, v375, v241);
        v377 = (*(v374 + 80) + 72) & ~*(v374 + 80);
        v378 = swift_allocObject();
        v379 = v527;
        v378[2] = v528;
        v378[3] = v379;
        v380 = v538;
        v381 = v529;
        v378[4] = v538;
        v378[5] = v381;
        v382 = v537;
        v378[6] = v531;
        v378[7] = v382;
        v378[8] = v539;
        (v522)(v378 + v377, v376, v241);

        v383 = v457;
        sub_1CF3CD754(v542, 1, sub_1CF4849BC, v378, v380, v382);
        v457 = v383;
        if (!v383)
        {

          v134 = v533;
          v411 = v516;
          v410 = v517;
          v412 = v515;
          v413 = v523;
          if ((v536 & 0x200000) == 0)
          {
            goto LABEL_103;
          }

          v438 = v464;
          (v541)(v464, v523, v516);
          v439 = v505;
          if (v524(v438, 1, v505) == 1)
          {
            (*(v525 + 1))(v500, v530);
            v440 = *(v410 + 8);
            v440(v413, v411);
            v440(v412, v411);
            v440(v438, v411);
            goto LABEL_124;
          }

          v442 = &v438[*(v439 + 52)];
          v443 = *(v442 + 13);
          v556 = *(v442 + 12);
          v557 = v443;
          v558 = *(v442 + 14);
          v559 = *(v442 + 30);
          v444 = *(v442 + 9);
          v552 = *(v442 + 8);
          v553 = v444;
          v445 = *(v442 + 11);
          v554 = *(v442 + 10);
          v555 = v445;
          v446 = *(v442 + 5);
          v548 = *(v442 + 4);
          v549 = v446;
          v447 = *(v442 + 7);
          v550 = *(v442 + 6);
          v551 = v447;
          v448 = *(v442 + 1);
          v544 = *v442;
          v545 = v448;
          v449 = *(v442 + 3);
          v546 = *(v442 + 2);
          v547 = v449;
          sub_1CEFCCBDC(&v544, &v543, &qword_1EC4BECF0, &unk_1CF9FEEB0);
          (*(v540 + 8))(v438, v505);
          v572 = v556;
          v573 = v557;
          v574 = v558;
          v575 = v559;
          v568 = v552;
          v569 = v553;
          v570 = v554;
          v571 = v555;
          v564 = v548;
          v565 = v549;
          v566 = v550;
          v567 = v551;
          v560 = v544;
          v561 = v545;
          v562 = v546;
          v563 = v547;
          if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v560) == 1)
          {
            goto LABEL_103;
          }

          v450 = v561;
          v451 = v561;
          sub_1CEFCCC44(&v544, &qword_1EC4BECF0, &unk_1CF9FEEB0);
          if (v450)
          {
            v452 = v500;
            sub_1CF5A632C(v500);

            (*(v525 + 1))(v452, v530);
          }

          else
          {
LABEL_103:
            (*(v525 + 1))(v500, v530);
          }

          v414 = *(v410 + 8);
          v414(v413, v411);
          v414(v412, v411);
          goto LABEL_124;
        }

        (*(v525 + 1))(v500, v241);
        v384 = v516;
        v385 = *(v517 + 8);
        v385(v523, v516);
        v385(v515, v384);
        return (*(v532 + 8))(v533, v534);
      }

      if (EnumCaseMultiPayload == 1)
      {
        v208 = v519;
        v131(v519, v533, v534);
        v209 = v526;
        *&v541 = *(swift_getTupleTypeMetadata2() + 48);
        v210 = v524;
        *&v540 = *(v524 + 4);
        v211 = v518;
        (v540)(v518, v208, v209);
        v210[2](v510, v211, v209);
        v212 = v133;
        v213 = (*(v210 + 80) + 72) & ~*(v210 + 80);
        v214 = swift_allocObject();
        v215 = v527;
        v214[2] = v528;
        v214[3] = v215;
        v216 = v538;
        v217 = v529;
        v214[4] = v538;
        v214[5] = v217;
        v214[6] = v212;
        v218 = v537;
        v219 = v539;
        v214[7] = v537;
        v214[8] = v219;
        (v540)(v214 + v213, v510, v209);

        v220 = v457;
        sub_1CF3CD754(v542, 0, sub_1CF484560, v214, v216, v218);
        v457 = v220;
        if (v220)
        {
          (v210[1])(v518, v209);

          (*(v525 + 1))(&v519[v541], v530);
          return (*(v532 + 8))(v533, v534);
        }

        (v210[1])(v518, v209);

        (*(v525 + 1))(&v519[v541], v530);
      }

      else if (EnumCaseMultiPayload == 6)
      {
        v165 = v483;
        v131(v483, v533, v534);
        v166 = v501;
        v167 = swift_getTupleTypeMetadata3();
        v168 = *(v167 + 48);
        v169 = *&v165[*(v167 + 64)];
        v171 = v513;
        v170 = v514;
        v172 = v514[4];
        *&v541 = v172;
        v172(v513, v165, v166);
        v173 = &v165[v168];
        v174 = v522;
        v172(v522, v173, v166);
        v520 = *(v509 - 8);
        v175 = *(v520 + 6);
        v535 = v520 + 48;
        v530 = v175;
        v176 = v175(v171, 1);
        v521 = v169;
        v178 = (v169 & 3) != 0 && v176 != 1;
        LODWORD(v540) = v178;
        v179 = v170[2];
        (v179)(v511, v171, v166);
        v523 = v179;
        (v179)(v512, v174, v166);
        v525 = (v170 + 2);
        v180 = *(v170 + 80);
        v181 = (v180 + 72) & ~v180;
        v182 = (v491 + v180 + v181) & ~v180;
        v536 = (v182 + v491);
        v183 = swift_allocObject();
        v184 = v527;
        *(v183 + 16) = v528;
        *(v183 + 24) = v184;
        v185 = v538;
        v186 = v529;
        *(v183 + 32) = v538;
        *(v183 + 40) = v186;
        v187 = v537;
        *(v183 + 48) = v531;
        *(v183 + 56) = v187;
        *(v183 + 64) = v539;
        v188 = v183 + v181;
        v189 = v541;
        (v541)(v188, v511, v166);
        v189(v183 + v182, v512, v166);
        v536[v183] = v540;

        v190 = v542;
        v191 = v457;
        sub_1CF3CD754(v542, 1, sub_1CF4849E8, v183, v185, v187);
        v457 = v191;
        if (v191)
        {
          v192 = v514[1];
          v192(v522, v166);

          v192(v513, v166);
          return (*(v532 + 8))(v533, v534);
        }

        v363 = v476;
        v364 = v522;
        (v523)(v476, v522, v166);
        v365 = v530(v363, 1, v509);
        v144 = v534;
        if (v365 == 1)
        {
          v366 = v514[1];
          v366(v364, v166);
          v366(v363, v166);
          v366(v513, v166);
          v226 = v532;
          v134 = v533;
          return (*(v226 + 8))(v134, v144);
        }

        v403 = v524;
        v404 = v526;
        (*(v524 + 2))(v460, v363, v526);
        (*(v520 + 1))(v363, v509);
        v405 = *(v403 + 4);
        v406 = v458;
        v405(v458, v460, v404);
        v134 = v533;
        if ((v521 & 0x800000000020000) != 0)
        {
          v407 = *(sub_1CF478C28() + 16);

          v408 = v457;
          sub_1CF3761C8(v406, v190, v538, v187);
          v457 = v408;
          v226 = v532;

          (*(v524 + 1))(v406, v526);
          v409 = v514[1];
          v409(v522, v166);
          v409(v513, v166);
          return (*(v226 + 8))(v134, v144);
        }

        (*(v524 + 1))(v406, v526);
        v441 = v514[1];
        v441(v522, v166);
        v441(v513, v166);
LABEL_39:
        v226 = v532;
        return (*(v226 + 8))(v134, v144);
      }

      v226 = v532;
LABEL_72:
      v144 = v534;
      v134 = v533;
      return (*(v226 + 8))(v134, v144);
    }

    v143 = v131;
    if (EnumCaseMultiPayload > 28)
    {
      v144 = v534;
      v134 = v533;
      v145 = v526;
      if (EnumCaseMultiPayload != 29)
      {
        v146 = v530;
        if (EnumCaseMultiPayload == 36)
        {
          v283 = v489;
          v143(v489, v533, v534);
          v284 = swift_getAssociatedConformanceWitness();
          v285 = v527;
          v286 = swift_getAssociatedConformanceWitness();
          *&v560 = v145;
          *(&v560 + 1) = v146;
          *&v561 = v284;
          *(&v561 + 1) = v286;
          v287 = type metadata accessor for ReconciliationID();
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            (*(*(v287 - 8) + 8))(v283, v287);
            goto LABEL_107;
          }

          v288 = v525;
          *&v541 = *(v525 + 4);
          v289 = v488;
          (v541)(v488, v283, v146);
          v290 = v478;
          (*(v288 + 2))(v478, v289, v146);
          v291 = (*(v288 + 80) + 72) & ~*(v288 + 80);
          v292 = swift_allocObject();
          v292[2] = v528;
          v292[3] = v285;
          v293 = v538;
          v294 = v529;
          v292[4] = v538;
          v292[5] = v294;
          v295 = v146;
          v296 = v537;
          v292[6] = v531;
          v292[7] = v296;
          v292[8] = v539;
          v297 = v292 + v291;
          v298 = v295;
          (v541)(v297, v290, v295);

          v299 = v457;
          sub_1CF3CD754(v542, 1, sub_1CF48458C, v292, v293, v296);
          v457 = v299;
          if (v299)
          {
            (*(v288 + 1))(v488, v298);
            goto LABEL_52;
          }

          (*(v288 + 1))(v488, v298);
        }

        else
        {
          if (EnumCaseMultiPayload != 37)
          {
            goto LABEL_39;
          }

          v147 = v485;
          v143(v485, v533, v534);
          v148 = v521;
          *&v541 = *(v521 + 32);
          v149 = v520;
          v150 = v147;
          v151 = v499;
          (v541)(v520, v150, v499);
          v153 = v496;
          v152 = v497;
          v154 = v498;
          (*(v497 + 16))(v496, v149, v498);
          LODWORD(v540) = (*(v524 + 6))(v153, 1, v145) == 1;
          (*(v152 + 8))(v153, v154);
          v156 = v148 + 16;
          v155 = *(v148 + 16);
          v157 = v495;
          v155(v495, v149, v151);
          v158 = (*(v156 + 64) + 72) & ~*(v156 + 64);
          v159 = swift_allocObject();
          v160 = v527;
          v159[2] = v528;
          v159[3] = v160;
          v161 = v538;
          v162 = v529;
          v159[4] = v538;
          v159[5] = v162;
          v163 = v537;
          v159[6] = v531;
          v159[7] = v163;
          v159[8] = v539;
          (v541)(v159 + v158, v157, v151);

          v164 = v457;
          sub_1CF3CD754(v542, v540, sub_1CF484664, v159, v161, v163);
          v457 = v164;
          if (v164)
          {
            (*(v521 + 8))(v520, v151);
LABEL_52:

            return (*(v532 + 8))(v533, v534);
          }

          (*(v521 + 8))(v520, v151);
        }

        goto LABEL_106;
      }

      v536 = v130;
      v248 = v504;
      v143(v504, v533, v534);
      v249 = swift_getAssociatedConformanceWitness();
      v250 = v530;
      v251 = swift_getAssociatedConformanceWitness();
      *&v560 = v145;
      *(&v560 + 1) = v250;
      *&v561 = v249;
      *(&v561 + 1) = v251;
      v252 = type metadata accessor for ReconciliationID();
      v253 = v248[*(swift_getTupleTypeMetadata2() + 48)];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_38:
        (*(*(v252 - 8) + 8))(v248, v252);
        goto LABEL_39;
      }

      v321 = v539[4];
      v322 = *(v321 + 33);
      v323 = v457;
      v324 = (*(*v536 + 272))(v542, v538, *(v537 + 8));
      if (v323)
      {
        (*(*(v252 - 8) + 8))(v248, v252);
        return (*(v532 + 8))(v134, v144);
      }

      v457 = 0;
      if (v322)
      {
        if (v324)
        {
          *(v321 + 33) = 0;
        }

        goto LABEL_136;
      }

      if (v324 & 1) != 0 || (*(v321 + 33) = 1, v423 = *(**(v321 + 16) + 848), v424 = , v425 = v423(v424), , (v425))
      {
LABEL_136:
        if (v253)
        {
          v453 = *(v539 + qword_1EDEBBDF0);
          if (v453)
          {
            v454 = *(v539 + qword_1EDEBBDF0 + 8);

            v453(v455);
            sub_1CEFF7124(v453);
          }
        }

        goto LABEL_38;
      }

      v560 = v541;
      v561 = v540;
      type metadata accessor for Maintenance.UnblockEvictability();
      sub_1CF046AB4();
      v426 = v465;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v428 = v427;
      v429 = *(v467 + 8);
      result = v429(v426, v466);
      v430 = v428 * 1000000000.0;
      if (COERCE__INT64(fabs(v428 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v430 > -9.22337204e18)
        {
          if (v430 < 9.22337204e18)
          {
            v431 = v475;
            v432 = sub_1CF559420(v475, 0, v430, 0);
            (*(v524 + 1))(v431, v526);
            v433 = v465;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v435 = v434;
            result = v429(v433, v466);
            v436 = v435 * 1000000000.0;
            if (COERCE__INT64(fabs(v435 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v436 > -9.22337204e18)
              {
                if (v436 < 9.22337204e18)
                {
                  v437 = v457;
                  sub_1CF5215C0(v432);
                  v457 = v437;
                  if (v437)
                  {

                    (*(*(v252 - 8) + 8))(v504, v252);
                    return (*(v532 + 8))(v533, v534);
                  }

                  v144 = v534;
                  v134 = v533;
                  v248 = v504;
                  goto LABEL_136;
                }

LABEL_150:
                __break(1u);
                return result;
              }

LABEL_149:
              __break(1u);
              goto LABEL_150;
            }

LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v193 = v130;
    v144 = v534;
    v134 = v533;
    v194 = v526;
    if (EnumCaseMultiPayload != 19)
    {
      if (EnumCaseMultiPayload != 25)
      {
        goto LABEL_39;
      }

      v195 = v487;
      v143(v487, v533, v534);
      v196 = swift_getAssociatedConformanceWitness();
      v197 = v530;
      v198 = swift_getAssociatedConformanceWitness();
      *&v560 = v194;
      *(&v560 + 1) = v197;
      *&v561 = v196;
      *(&v561 + 1) = v198;
      type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v199 = v525;
        *&v541 = *(v525 + 4);
        v200 = v486;
        (v541)(v486, v195, v197);
        (*(v199 + 2))(v502, v200, v197);
        v201 = (*(v199 + 80) + 72) & ~*(v199 + 80);
        v202 = swift_allocObject();
        v203 = v527;
        v202[2] = v528;
        v202[3] = v203;
        v204 = v538;
        v205 = v529;
        v202[4] = v538;
        v202[5] = v205;
        v206 = v537;
        v202[6] = v531;
        v202[7] = v206;
        v202[8] = v539;
        (v541)(v202 + v201, v502, v197);

        v207 = v457;
        sub_1CF3CD754(v542, 1, sub_1CF4847AC, v202, v204, v206);
        v457 = v207;
        if (v207)
        {
          (*(v199 + 1))(v486, v197);
          goto LABEL_52;
        }

        (*(v199 + 1))(v486, v197);
      }

      else
      {
        v300 = v524;
        *&v541 = *(v524 + 4);
        v301 = v462;
        (v541)(v462, v195, v194);
        v302 = v461;
        v300[2](v461, v301, v194);
        v303 = (*(v300 + 80) + 72) & ~*(v300 + 80);
        v304 = swift_allocObject();
        v305 = v527;
        v304[2] = v528;
        v304[3] = v305;
        v306 = v538;
        v307 = v529;
        v304[4] = v538;
        v304[5] = v307;
        v308 = v194;
        v309 = v537;
        v304[6] = v531;
        v304[7] = v309;
        v304[8] = v539;
        v310 = v302;
        v311 = v308;
        (v541)(v304 + v303, v310, v308);

        v312 = v457;
        sub_1CF3CD754(v542, 0, sub_1CF4848B4, v304, v306, v309);
        v457 = v312;
        if (v312)
        {
          (v300[1])(v462, v311);
          goto LABEL_52;
        }

        (v300[1])(v462, v311);
      }

LABEL_106:

      goto LABEL_107;
    }

    v221 = v506;
    v143(v506, v533, v534);
    v222 = v194;
    v223 = v530;
    v224 = *(swift_getTupleTypeMetadata2() + 48);
    v225 = v539[4];
    if (*(v225 + 33))
    {
      v226 = v532;
LABEL_132:
      (*(v525 + 1))(&v221[v224], v223);
      (*(v524 + 1))(v221, v222);
      return (*(v226 + 8))(v134, v144);
    }

    v313 = v457;
    v314 = (*(*v193 + 272))(v542, v538, *(v537 + 8));
    v226 = v532;
    if (v313)
    {
      v315 = v506;
      (*(v525 + 1))(&v506[v224], v223);
      (*(v524 + 1))(v315, v222);
      return (*(v226 + 8))(v134, v144);
    }

    v457 = 0;
    *(v225 + 33) = (v314 & 1) == 0;
    if (v314 & 1) != 0 || (v536 = *(**(v225 + 16) + 848), v388 = , LODWORD(v536) = (v536)(v388), , (v536))
    {
LABEL_131:
      v221 = v506;
      goto LABEL_132;
    }

    v560 = v541;
    v561 = v540;
    *&v541 = type metadata accessor for Maintenance.UnblockEvictability();
    sub_1CF046AB4();
    v389 = v465;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v391 = v390;
    v392 = v467 + 8;
    v393 = *(v467 + 8);
    result = v393(v389, v466);
    v394 = v391 * 1000000000.0;
    if (COERCE__INT64(fabs(v391 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v394 > -9.22337204e18)
    {
      v467 = v392;
      v395 = v475;
      if (v394 < 9.22337204e18)
      {
        v396 = sub_1CF559420(v475, 0, v394, 0);
        *&v541 = *(v524 + 1);
        (v541)(v395, v222);
        v397 = v465;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v399 = v398;
        result = v393(v397, v466);
        v400 = v399 * 1000000000.0;
        if (COERCE__INT64(fabs(v399 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v401 = v457;
          v223 = v530;
          if (v400 > -9.22337204e18)
          {
            if (v400 < 9.22337204e18)
            {
              sub_1CF5215C0(v396);
              v457 = v401;
              if (v401)
              {

                v402 = v506;
                (*(v525 + 1))(&v506[v224], v223);
                (v541)(v402, v222);
                return (*(v532 + 8))(v134, v144);
              }

              v226 = v532;
              goto LABEL_131;
            }

LABEL_144:
            __break(1u);
            goto LABEL_145;
          }

LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    __break(1u);
    goto LABEL_141;
  }

  return result;
}

uint64_t sub_1CF3D2E50(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  v8 = *(*(v454 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v454);
  v455 = (&v436 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v460 = &v436 - v11;
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v12 = *(*(v452 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v452);
  v453 = &v436 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v459 = &v436 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0498, &qword_1CFA05898);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v450 = &v436 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD38, &unk_1CFA05450);
  v448 = *(v19 - 8);
  v449 = v19;
  v20 = *(v448 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v442 = &v436 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v451 = &v436 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEA0, &unk_1CFA05570);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v447 = &v436 - v26;
  v484 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v445 = *(v484 - 8);
  v27 = *(v445 + 64);
  v28 = MEMORY[0x1EEE9AC00](v484);
  v456 = (&v436 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x1EEE9AC00](v28);
  v443 = &v436 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v446 = &v436 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v479 = *(v33 - 8);
  v480 = v33;
  v34 = *(v479 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v458 = (&v436 - v35);
  v444 = type metadata accessor for ItemMetadata();
  v36 = *(*(v444 - 1) + 64);
  MEMORY[0x1EEE9AC00](v444);
  v440 = &v436 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v481 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v483 = *(v481 - 8);
  v38 = *(v483 + 64);
  v39 = MEMORY[0x1EEE9AC00](v481);
  v457 = &v436 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v461 = &v436 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v46 = &v436 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v44);
  v441 = &v436 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v478 = &v436 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v486 = (&v436 - v52);
  MEMORY[0x1EEE9AC00](v51);
  v485 = &v436 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v438 = &v436 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v439 = (&v436 - v59);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v475 = &v436 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v474 = &v436 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v476 = &v436 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v472 = (&v436 - v67);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v471 = &v436 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v473 = &v436 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v470 = (&v436 - v73);
  v74 = MEMORY[0x1EEE9AC00](v72);
  v477 = &v436 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v468 = &v436 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v466 = &v436 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v482 = (&v436 - v81);
  v82 = MEMORY[0x1EEE9AC00](v80);
  v467 = &v436 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v465 = &v436 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v469 = &v436 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v464 = &v436 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v463 = &v436 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v462 = &v436 - v93;
  MEMORY[0x1EEE9AC00](v92);
  v502 = &v436 - v94;
  v495 = a2;
  v496 = a3;
  v95 = *(v3 + qword_1EDEBBCF8);
  if (v95)
  {
    v488 = v46;
    v96 = a2;
    v97 = a3;
    v98 = v3;
    v99 = *(v3 + qword_1EDEBBCF8 + 8);

    v95(a1);
    v3 = v98;
    a3 = v97;
    a2 = v96;
    v46 = v488;
    sub_1CEFF7124(v95);
  }

  result = sub_1CF3FEBAC(a1);
  if (!v4)
  {
    v487 = 0;
    v101 = v502;
    sub_1CEFCCBDC(a1, v502, &qword_1EC4BE710, &qword_1CF9FE5A8);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v102 = v101;
        v103 = v466;
        goto LABEL_9;
      case 3u:
        v130 = v462;
        sub_1CEFCCBDC(v101, v462, &qword_1EC4BE710, &qword_1CF9FE5A8);
        if (*(v130 + 9))
        {
          goto LABEL_34;
        }

        *&v491[0] = *v130;
        BYTE8(v491[0]) = *(v130 + 8);
        v131 = v3;
        v132 = *(v3 + 16);
        v133 = v487;
        sub_1CF7EB934(*&v491[0], BYTE8(v491[0]), a2, a3, v494);
        v487 = v133;
        if (v133)
        {
          goto LABEL_228;
        }

        memcpy(v493, v494, 0x208uLL);
        if (sub_1CF08B99C(v493) == 1)
        {
          goto LABEL_75;
        }

        memcpy(v492, v494, 0x208uLL);
        if (!*(&v492[15] + 1) || (BYTE8(v492[21]) | 4) != 4)
        {
          goto LABEL_145;
        }

        v134 = BYTE8(v492[28]);
        if (BYTE9(v492[8]) != 6 && BYTE8(v492[28]) == 1)
        {
          goto LABEL_270;
        }

        v482 = a2;
        v135 = *(**(v131 + 32) + 240);
        v136 = *(&v492[15] + 1);
        v137 = v441;
        v138 = v487;
        v135(v491, 1, &v495, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v138)
        {

          v487 = 0;
        }

        else
        {
          v487 = 0;
          v383 = v481;
          if ((*(v483 + 48))(v137, 1, v481) == 1)
          {
            sub_1CEFCCC44(v137, &qword_1EC4C1B40, &unk_1CF9FCB70);
          }

          else
          {
            v397 = v440;
            sub_1CEFDA214(v137 + *(v383 + 48), v440, type metadata accessor for ItemMetadata);
            sub_1CEFCCC44(v137, &unk_1EC4BE360, &qword_1CF9FE650);
            v398 = *(v397 + v444[20]);
            sub_1CEFD5278(v397, type metadata accessor for ItemMetadata);
            if (v398)
            {
LABEL_269:

              goto LABEL_270;
            }
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4750, &unk_1CFA05360);
        v399 = swift_allocObject();
        *(v399 + 16) = xmmword_1CF9FA450;
        v400 = BYTE8(v491[0]);
        *(v399 + 32) = *&v491[0];
        *(v399 + 40) = v400;
        *(v399 + 48) = 2;
        *(v399 + 114) = 10;
        *(v399 + 147) = 9;
        v401 = v487;
        sub_1CF808014(MEMORY[0x1E69E7CC0], v399, v482, a3);
        v487 = v401;
        if (v401)
        {

          goto LABEL_258;
        }

        if (v134 > 1 || !v134)
        {
          goto LABEL_269;
        }

        sub_1CF033A74();
        v412 = v136;
        v413 = sub_1CF93D7F4();
        v415 = v414;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
        v416 = swift_allocObject();
        *(v416 + 16) = 0u;
        *(v416 + 32) = 0u;
        *(v416 + 48) = 1;
        *(v416 + 56) = 0u;
        *(v416 + 72) = 0u;
        *(v416 + 88) = 0;
        *(v416 + 120) = v413;
        *(v416 + 128) = v415;
        *(v416 + 136) = 0;
        *(v416 + 144) = v412;
        *(v416 + 96) = xmmword_1CFA04E20;
        *(v416 + 112) = 0;
        v417 = sub_1CF4D3BC0();
        v418 = v487;
        sub_1CF902E70(v416, v417, v482, a3);
        v487 = v418;
        if (v418)
        {

          goto LABEL_188;
        }

        goto LABEL_270;
      case 4u:
        v130 = v463;
        sub_1CEFCCBDC(v101, v463, &qword_1EC4BE710, &qword_1CF9FE5A8);
        if (*(v130 + 9))
        {
LABEL_34:
          v109 = *v130;
          v151 = *(v130 + 8);
          goto LABEL_44;
        }

        if (*(v130 + 10))
        {
          v207 = 4;
        }

        else
        {
          v207 = 0;
        }

        v248 = v487;
        sub_1CF40212C(*v130, *(v130 + 8), v207, 0, a2, a3);
        if (v248)
        {
          return sub_1CEFCCC44(v101, &qword_1EC4BE710, &qword_1CF9FE5A8);
        }

        v487 = 0;
        goto LABEL_228;
      case 5u:
        v150 = v469;
        sub_1CEFCCBDC(v101, v469, &qword_1EC4BE710, &qword_1CF9FE5A8);
        if (*(v150 + 9))
        {
          sub_1CEFD0994(*(v150 + 16), *(v150 + 24), *(v150 + 25));
          goto LABEL_54;
        }

        v206 = v487;
        sub_1CF40212C(*v150, *(v150 + 8), 1, 0, a2, a3);
        v487 = v206;
        sub_1CEFD0994(*(v150 + 16), *(v150 + 24), *(v150 + 25));
        goto LABEL_228;
      case 6u:
        v488 = v46;
        v112 = a2;
        v437 = v3;
        v113 = v467;
        sub_1CEFCCBDC(v101, v467, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
        v115 = *(v114 + 48);
        v484 = *(v113 + *(v114 + 64));
        v116 = v485;
        sub_1CEFE55D0(v113, v485, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v117 = v113 + v115;
        v118 = v486;
        sub_1CEFE55D0(v117, v486, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v119 = v478;
        sub_1CEFCCBDC(v116, v478, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v120 = v483 + 48;
        v121 = *(v483 + 48);
        v122 = v481;
        if (v121(v119, 1, v481) == 1)
        {
          sub_1CEFCCC44(v116, &qword_1EC4C1B40, &unk_1CF9FCB70);
          sub_1CEFCCC44(v118, &qword_1EC4C1B40, &unk_1CF9FCB70);
          v123 = v119;
LABEL_113:
          v267 = &qword_1EC4C1B40;
          v268 = &unk_1CF9FCB70;
          goto LABEL_114;
        }

        v194 = v461;
        sub_1CEFE55D0(v119, v461, &unk_1EC4BE360, &qword_1CF9FE650);
        if (v121(v118, 1, v122) != 1)
        {
          v482 = v112;
          goto LABEL_87;
        }

        v483 = v120;
        sub_1CF4810BC();
        v195 = swift_allocError();
        *v196 = 2;
        v197 = v437;
        v198 = v487;
        sub_1CF40212C(*v194, *(v194 + 8), 5, v195, v112, a3);
        if (v198)
        {

          sub_1CEFCCC44(v194, &unk_1EC4BE360, &qword_1CF9FE650);
          sub_1CEFCCC44(v485, &qword_1EC4C1B40, &unk_1CF9FCB70);
          sub_1CEFCCC44(v486, &qword_1EC4C1B40, &unk_1CF9FCB70);
          return sub_1CEFCCC44(v502, &qword_1EC4BE710, &qword_1CF9FE5A8);
        }

        v295 = *(v197 + 16);
        sub_1CF7EB934(*v194, *(v194 + 8), v112, a3, v494);
        v487 = 0;
        memcpy(v493, v494, 0x208uLL);
        if (sub_1CF08B99C(v493) == 1)
        {
          memcpy(v492, v494, 0x208uLL);
          sub_1CEFCCC44(v492, &unk_1EC4BFC20, &unk_1CFA0A290);
        }

        else
        {
          v365 = v494[8];
          v366 = *&v494[248];
          memcpy(v492, v494, 0x208uLL);
          sub_1CEFCCC44(v492, &unk_1EC4BFC20, &unk_1CFA0A290);
          if (v365 != 255 && v366)
          {
            v482 = v112;
            v122 = v481;
            goto LABEL_87;
          }
        }

        v296 = v487;
        sub_1CF40423C(*v194, *(v194 + 8), 0, v112, a3);
        v487 = v296;
        if (v296)
        {
          v297 = v194;
LABEL_132:
          sub_1CEFCCC44(v297, &unk_1EC4BE360, &qword_1CF9FE650);
          sub_1CEFCCC44(v485, &qword_1EC4C1B40, &unk_1CF9FCB70);
          v298 = v486;
          v299 = &qword_1EC4C1B40;
          v300 = &unk_1CF9FCB70;
          goto LABEL_259;
        }

        v482 = v112;
        v122 = v481;
LABEL_87:
        v245 = v486;
        v246 = v488;
        sub_1CEFCCBDC(v486, v488, &qword_1EC4C1B40, &unk_1CF9FCB70);
        if (v121(v246, 1, v122) == 1)
        {
          sub_1CEFCCC44(v194, &unk_1EC4BE360, &qword_1CF9FE650);
          sub_1CEFCCC44(v485, &qword_1EC4C1B40, &unk_1CF9FCB70);
          sub_1CEFCCC44(v245, &qword_1EC4C1B40, &unk_1CF9FCB70);
          v123 = v246;
          goto LABEL_113;
        }

        v265 = v457;
        v266 = sub_1CEFE55D0(v246, v457, &unk_1EC4BE360, &qword_1CF9FE650);
        if ((v484 & 0x100000000000) == 0)
        {
          sub_1CEFCCC44(v265, &unk_1EC4BE360, &qword_1CF9FE650);
          sub_1CEFCCC44(v194, &unk_1EC4BE360, &qword_1CF9FE650);
          sub_1CEFCCC44(v485, &qword_1EC4C1B40, &unk_1CF9FCB70);
          v123 = v486;
          goto LABEL_113;
        }

        v319 = v265 + *(v122 + 48);
        if ((*(v319 + v444[15]) & 1) == 0 && *(v319 + v444[19]))
        {
          v320 = *v265;
          v321 = *(v265 + 8);
          v322 = sub_1CF93DAB0(v266);
          v324 = v323;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0050, &qword_1CF9FAD58);
          v325 = swift_allocObject();
          *(v325 + 152) = v321;
          *(v325 + 16) = 0u;
          *(v325 + 32) = 0u;
          *(v325 + 48) = 1;
          *(v325 + 56) = 0u;
          *(v325 + 72) = 0u;
          *(v325 + 88) = 0;
          *(v325 + 96) = xmmword_1CF9FEC30;
          *(v325 + 112) = 0;
          *(v325 + 120) = v322;
          *(v325 + 128) = v324;
          *(v325 + 136) = 0x4000000;
          *(v325 + 144) = v320;
          v326 = sub_1CF4D3BC0();
          v327 = v487;
          sub_1CF902E70(v325, v326, v482, a3);
          v487 = v327;
          if (v327)
          {

            sub_1CEFCCC44(v265, &unk_1EC4BE360, &qword_1CF9FE650);
            v297 = v461;
            goto LABEL_132;
          }
        }

        v101 = v502;
        v199 = v485;
        v252 = v486;
        sub_1CEFCCC44(v457, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFCCC44(v461, &unk_1EC4BE360, &qword_1CF9FE650);
        v144 = &qword_1EC4C1B40;
        v145 = &unk_1CF9FCB70;
LABEL_225:
        sub_1CEFCCC44(v199, v144, v145);
        v146 = v252;
LABEL_226:
        v202 = v144;
        v203 = v145;
        goto LABEL_227;
      case 7u:
        v139 = a2;
        v140 = v3;
        v141 = v477;
        sub_1CEFCCBDC(v101, v477, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
        v143 = *(v142 + 48);
        if ((*(v479 + 48))(v141, 1, v480) == 1)
        {
          v144 = &unk_1EC4BFBB0;
          v145 = &qword_1CF9FCB90;
          sub_1CEFCCC44(v141 + v143, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v146 = v141;
          goto LABEL_226;
        }

        v204 = *(v141 + *(v142 + 64));
        v205 = v458;
        sub_1CEFE55D0(v141, v458, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        if ((v204 & 2) == 0)
        {
          goto LABEL_64;
        }

        v247 = v487;
        (*(**(v140 + 16) + 152))(v494, v205, &v495, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v247)
        {
          sub_1CEFCCC44(v205, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          sub_1CEFCCC44(v141 + v143, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          return sub_1CEFCCC44(v101, &qword_1EC4BE710, &qword_1CF9FE5A8);
        }

        if (v494[8] == 255)
        {
          sub_1CF405DEC(*v205, 0, v139, a3);
        }

        v487 = 0;
LABEL_64:
        sub_1CEFCCC44(v205, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v202 = &unk_1EC4BFBB0;
        v203 = &qword_1CF9FCB90;
        v146 = (v141 + v143);
        goto LABEL_227;
      case 0xAu:
        v152 = a2;
        v153 = v468;
        sub_1CEFCCBDC(v101, v468, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v154 = *(v153 + 9);
        v155 = *v153;
        v156 = *(v153 + 8);
        if (v154)
        {
          v157 = v487;
          sub_1CF405DEC(v155, 0, v152, a3);
          v487 = v157;
          v109 = v155;
          v151 = v156;
          goto LABEL_44;
        }

        v208 = v487;
        sub_1CF40423C(v155, v156, 0, v152, a3);
        v487 = v208;
        goto LABEL_228;
      case 0xFu:
        v158 = v464;
        sub_1CEFCCBDC(v101, v464, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v159 = *(v158 + 16);
        if (*(v158 + 9))
        {

          sub_1CEFD0994(*v158, *(v158 + 8), *(v158 + 9));
          goto LABEL_228;
        }

        v209 = *v158;
        v210 = a2;
        v211 = *(v158 + 8);
        v212 = v159;
        v213 = v487;
        sub_1CF40212C(v209, v211, 0, v159, v210, a3);
        v487 = v213;

        goto LABEL_70;
      case 0x10u:
        v178 = v465;
        sub_1CEFCCBDC(v101, v465, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v159 = *(v178 + 16);
        if (*(v178 + 9))
        {

          sub_1CEFD0994(*v178, *(v178 + 8), *(v178 + 9));
          goto LABEL_228;
        }

        v225 = v3;
        v489 = *v178;
        v226 = v489;
        v227 = v178;
        v228 = a2;
        v490 = *(v227 + 8);
        v229 = v490;
        v230 = v159;
        v231 = v487;
        sub_1CF40212C(v226, v229, 1, v159, v228, a3);
        if (v231)
        {

          return sub_1CEFCCC44(v101, &qword_1EC4BE710, &qword_1CF9FE5A8);
        }

        (*(**(v225 + 32) + 288))(v494, &v489, &v495, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v437 = v225;
        v256 = v494[8];
        if (v494[8] == 255)
        {
          goto LABEL_278;
        }

        v257 = *v494;
        v258 = v437;
        if (v494[8])
        {
          v259 = v228;
          if (v494[8] == 1)
          {
            if (v490 == 1 && *v494 == v489)
            {
              goto LABEL_279;
            }
          }

          else if (*v494)
          {
            if (v490 == 2 && v489 == 1)
            {
              goto LABEL_279;
            }
          }

          else if (v490 == 2 && !v489)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v259 = v228;
          if (!v490 && *v494 == v489)
          {
            goto LABEL_279;
          }
        }

        v396 = *(v437 + 16);
        sub_1CF7EB934(*v494, v494[8], v259, a3, v494);
        memcpy(v493, v494, 0x208uLL);
        if (sub_1CF08B99C(v493) == 1)
        {
          memcpy(v492, v494, 0x208uLL);
        }

        else
        {
          memcpy(v492, v494, 0x208uLL);
          if (LOBYTE(v492[2]) == 1)
          {
            v409 = v439;
            *v439 = v257;
            *(v409 + 8) = v256;
            *(v409 + 9) = 0;
            v409[2] = v159;
            *(v409 + 24) = 0;
            swift_storeEnumTagMultiPayload();
            if (*(v437 + qword_1EDEADB48) == 1)
            {
              v410 = v438;
              sub_1CEFCCBDC(v439, v438, &qword_1EC4BE710, &qword_1CF9FE5A8);
              swift_beginAccess();
              v411 = v159;
              sub_1CF7E2EC8(v410);
              swift_endAccess();
            }

            else
            {
              v419 = v159;
            }

            sub_1CEFCCC44(v439, &qword_1EC4BE710, &qword_1CF9FE5A8);
          }
        }

        sub_1CEFCCC44(v492, &unk_1EC4BFC20, &unk_1CFA0A290);
LABEL_278:
        v258 = v437;
LABEL_279:
        v420 = *(v258 + 24);
        v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
        v422 = (*(*v420 + 328))(&v489, v421, 0, &v495, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v101 = v502;
        v487 = 0;
        if (v422)
        {
LABEL_70:

          goto LABEL_228;
        }

        v423 = sub_1CF9052FC();
        v424 = v489;
        v425 = v490;
        LODWORD(v486) = v490;
        LOBYTE(v491[0]) = 0;
        v426 = sub_1CF93D7F4();
        v428 = v427;
        *&v497 = v424;
        BYTE8(v497) = v425;
        LODWORD(v488) = a3;
        v429 = v491[0];
        BYTE9(v497) = v491[0];
        v498 = 1281;
        v499 = v426;
        v500 = v427;
        v501 = 2572;
        swift_beginAccess();
        sub_1CEFCCBDC(&v497, v493, &qword_1EC4BE6D0, &qword_1CF9FE560);
        sub_1CF7E2EB0(&v497);
        swift_endAccess();
        *v494 = v424;
        v494[8] = v486;
        v494[9] = v429;
        *&v494[16] = 1281;
        *&v494[24] = v426;
        *&v494[32] = v428;
        *&v494[114] = 2572;
        sub_1CEFCCC44(v494, &qword_1EC4BE6D0, &qword_1CF9FE560);
        v430 = sub_1CF4D3BC0();
        v431 = v487;
        sub_1CF7F6588(v423, v430, v228, v488);
        v487 = v431;
        if (v431)
        {

          goto LABEL_260;
        }

        goto LABEL_94;
      case 0x11u:
        v165 = v470;
        sub_1CEFCCBDC(v101, v470, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v166 = v165[1];
        *v494 = *v165;
        *&v494[16] = v166;
        v167 = v165[3];
        *&v494[32] = v165[2];
        *&v494[48] = v167;
        v168 = sub_1CF1AE1DC(v494, v493);
        v169 = sub_1CF93DAB0(v168);
        v170 = a2;
        v172 = v171;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA40, &qword_1CF9FEFB0);
        v173 = swift_allocObject();
        v174 = *&v494[16];
        *(v173 + 144) = *v494;
        *(v173 + 160) = v174;
        v175 = *&v494[48];
        *(v173 + 176) = *&v494[32];
        *(v173 + 192) = v175;
        *(v173 + 16) = 0u;
        *(v173 + 32) = 0u;
        *(v173 + 48) = 1;
        *(v173 + 56) = 0u;
        *(v173 + 72) = 0u;
        *(v173 + 88) = 0;
        *(v173 + 96) = xmmword_1CF9FEC30;
        *(v173 + 112) = 0;
        *(v173 + 120) = v169;
        *(v173 + 128) = v172;
        *(v173 + 136) = 0x4000;
        v176 = sub_1CF4D3BC0();
        v177 = v487;
        sub_1CF902E70(v173, v176, v170, a3);
        v487 = v177;

        sub_1CF1AE25C(v494);
        goto LABEL_228;
      case 0x13u:
        v102 = v101;
        v103 = v471;
LABEL_9:
        sub_1CEFCCBDC(v102, v103, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v110 = *(v103 + 16);
        v111 = v487;
        sub_1CF40423C(*v103, *(v103 + 8), 0, a2, a3);
        if (v111)
        {

          return sub_1CEFCCC44(v101, &qword_1EC4BE710, &qword_1CF9FE5A8);
        }

        sub_1CF405DEC(v110, 0, a2, a3);
        v487 = 0;

        goto LABEL_228;
      case 0x16u:
        v147 = v472;
        sub_1CEFCCBDC(v101, v472, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v148 = *v147;
        if ((*v147 & 0x8000000000000000) == 0)
        {
          v149 = v487;
          if ((*(v148 + 137) & 0x80) == 0)
          {
            v482 = a2;
            goto LABEL_116;
          }

          sub_1CF3E3E48(a2, a3);
          if (!v149)
          {
            v482 = a2;
            v487 = 0;
LABEL_116:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
            v269 = swift_dynamicCastClass();
            v437 = v3;
            if (v269)
            {
              v270 = v269;
              v271 = a3;
              v272 = *(v269 + 144);
              v273 = *(v269 + 152);
              if (*(v269 + 112) == 3)
              {
                v274 = *(v269 + 96);
                v275 = v274;
              }

              else
              {
                v274 = 0;
              }

              v286 = v487;
              v287 = v482;
              sub_1CF40423C(v272, v273, v274, v482, v271);
              if (v286)
              {

                return sub_1CEFCCC44(v502, &qword_1EC4BE710, &qword_1CF9FE5A8);
              }

              v488 = v148;

              v288 = *(v270 + 144);
              v289 = *(v270 + 152);
              v290 = *v270;
              v291 = sub_1CF388E8C();
              v292 = *(v270 + 128);
              if (*(v270 + 112) == 3)
              {
                v293 = *(v270 + 96);
                v294 = v293;
              }

              else
              {
                v293 = 0;
              }

              sub_1CF4076E0(v288, v289, v291, v292, v293, v287, v271);
              v487 = 0;

              v101 = v502;
              v348 = v446;
              v347 = v447;
              v349 = v445;
              v148 = v488;
              goto LABEL_181;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
            v276 = swift_dynamicCastClass();
            if (v276)
            {
              v277 = v276;
              v278 = v148;
              v279 = *(v276 + 144);
              v280 = *(v276 + 152);
              v281 = *v276;
              v282 = sub_1CF388E8C();
              v283 = *(v277 + 128);
              if (*(v277 + 112) == 3)
              {
                v284 = *(v277 + 96);
                v285 = v284;
              }

              else
              {
                v284 = 0;
              }

              v337 = v487;
              v338 = v279;
              v339 = v482;
              sub_1CF4076E0(v338, v280, v282, v283, v284, v482, a3);
              v487 = v337;
              if (v337)
              {

                goto LABEL_260;
              }

              v148 = v278;
              if (*(v277 + 112) != 3)
              {
                goto LABEL_179;
              }

              v340 = v339;
              v341 = *(v277 + 96);
              v342 = *(v277 + 104);
              v343 = *(v277 + 144);
              v344 = *(v277 + 152);
              v345 = v341;
              v346 = v487;
              sub_1CF40423C(v343, v344, v341, v340, a3);
              v487 = v346;
              v335 = v341;
              v336 = v342;
              if (!v346)
              {
                goto LABEL_178;
              }

LABEL_165:
              sub_1CF03D7A8(v335, v336, 3u);

              goto LABEL_260;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA10, &qword_1CF9FADD8);
            v328 = swift_dynamicCastClass();
            if (v328)
            {
              if (*(v328 + 112) != 3)
              {
LABEL_180:
                v348 = v446;
                v347 = v447;
                v349 = v445;
                goto LABEL_181;
              }

              v329 = *(v328 + 96);
              v330 = *(v328 + 104);
              v331 = *(v328 + 144);
              v332 = *(v328 + 152);
              v333 = v329;
              v334 = v487;
              sub_1CF40423C(v331, v332, v329, v482, a3);
              v487 = v334;
              v335 = v329;
              v336 = v330;
              if (!v334)
              {
LABEL_178:
                sub_1CF03D7A8(v335, v336, 3u);
LABEL_179:
                v101 = v502;
                goto LABEL_180;
              }

              goto LABEL_165;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFD0, &unk_1CF9FADF0);
            v361 = swift_dynamicCastClass();
            if (v361)
            {
              if (*(v361 + 112) == 3)
              {
                v362 = *(v361 + 96);
                v363 = v361;
                v364 = v362;
                v361 = v363;
              }

              else
              {
                v362 = 0;
              }

              v384 = v487;
              v385 = *(v361 + 160);
              v386 = *(v361 + 168);

              sub_1CF40423C(v385, v386, v362, v482, a3);
              v487 = v384;
              if (v384)
              {

                goto LABEL_228;
              }

              goto LABEL_180;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0200, &unk_1CFA05710);
            v375 = swift_dynamicCastClass();
            if (!v375)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
              v402 = swift_dynamicCastClass();
              if (v402 && *(v402 + 112) == 3)
              {
                v403 = *(v402 + 96);
                v404 = *(v402 + 104);
                v405 = *(v402 + 144);
                v406 = *(v402 + 152);
                v407 = v403;
                v408 = v487;
                sub_1CF40212C(v405, v406, 0, v403, v482, a3);
                v487 = v408;
                if (v408)
                {
                  sub_1CF03D7A8(v403, v404, 3u);

                  goto LABEL_260;
                }

                sub_1CF03D7A8(v403, v404, 3u);
              }

              v101 = v502;
              v348 = v446;
              v347 = v447;
              v349 = v445;
LABEL_181:
              (*(*v148 + 528))();
              if ((*(v349 + 48))(v347, 1, v484) == 1)
              {

                v202 = &unk_1EC4BFEA0;
                v203 = &unk_1CFA05570;
                v146 = v347;
              }

              else
              {
                sub_1CEFE55D0(v347, v348, &unk_1EC4BF650, &unk_1CF9FCB40);
                if (*(v148 + 112) == 3)
                {
                  v350 = *(v148 + 96);
                  v351 = v350;
                }

                else
                {
                  v350 = 0;
                }

                sub_1CF3E3598(v348, v350);

                v202 = &unk_1EC4BF650;
                v203 = &unk_1CF9FCB40;
                v146 = v348;
              }

LABEL_227:
              sub_1CEFCCC44(v146, v202, v203);
              goto LABEL_228;
            }

            v376 = v375;
            v377 = *(v375 + 112);
            if (v377 != 3)
            {
              swift_retain_n();
              goto LABEL_288;
            }

            v379 = *(v375 + 96);
            v378 = *(v375 + 104);
            _s3__C4CodeOMa_1(0);
            *v494 = -2008;
            swift_retain_n();
            sub_1CF03C530(v379, v378, 3u);
            sub_1CF042F54(&qword_1EDEA3590, _s3__C4CodeOMa_1);
            v380 = sub_1CF9E5658();
            sub_1CF03D7A8(v379, v378, 3u);
            if ((v380 & 1) == 0)
            {
              goto LABEL_287;
            }

            if ((~*(v376 + 136) & 0x1002) != 0)
            {
              goto LABEL_287;
            }

            (*(*v376 + 288))(v494);
            if (v494[0] - 1 < 3 || v494[0])
            {
              goto LABEL_287;
            }

            v381 = v487;
            (*(**(v437 + 40) + 264))(v494, v376 + 144, &v495, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            v487 = v381;
            if (v381)
            {
              goto LABEL_156;
            }

            *&v492[15] = *&v494[240];
            v492[12] = *&v494[192];
            v492[13] = *&v494[208];
            v492[14] = *&v494[224];
            v492[8] = *&v494[128];
            v492[9] = *&v494[144];
            v492[10] = *&v494[160];
            v492[11] = *&v494[176];
            v492[4] = *&v494[64];
            v492[5] = *&v494[80];
            v492[6] = *&v494[96];
            v492[7] = *&v494[112];
            v492[0] = *v494;
            v492[1] = *&v494[16];
            v492[2] = *&v494[32];
            v492[3] = *&v494[48];
            v493[12] = *&v494[192];
            v493[13] = *&v494[208];
            v493[14] = *&v494[224];
            *&v493[15] = *&v494[240];
            v493[8] = *&v494[128];
            v493[9] = *&v494[144];
            v493[10] = *&v494[160];
            v493[11] = *&v494[176];
            v493[4] = *&v494[64];
            v493[5] = *&v494[80];
            v493[6] = *&v494[96];
            v493[7] = *&v494[112];
            v493[0] = *v494;
            v493[1] = *&v494[16];
            v493[2] = *&v494[32];
            v493[3] = *&v494[48];
            if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v493) == 1)
            {
LABEL_287:
              v377 = *(v376 + 112);
LABEL_288:
              v308 = *(v376 + 96);
              v432 = *(v376 + 104);
              sub_1CF03C530(v308, v432, v377);

              if (v377 != 3)
              {
                sub_1CF03D7A8(v308, v432, v377);
                v308 = 0;
              }

              v433 = v487;
              sub_1CF405DEC(*(v376 + 144), v308, v482, a3);
              v487 = v433;
              if (!v433)
              {

                goto LABEL_179;
              }

              goto LABEL_155;
            }

            v434 = sub_1CF06E0D8();
            v435 = sub_1CEFF8538(*&v493[13], *(&v493[13] + 1), 0, v434, 0, 0);
            sub_1CEFCCC44(v492, &qword_1EC4BECF0, &unk_1CF9FEEB0);
            if (v435 <= 501)
            {
              if (v435 != 1 && v435 != 2)
              {
                goto LABEL_287;
              }
            }

            else if (v435 != 502 && v435 != 1000 && v435 != 1003)
            {
              goto LABEL_287;
            }

            goto LABEL_179;
          }

          goto LABEL_85;
        }

        v243 = v148 & 0x7FFFFFFFFFFFFFFFLL;
        v244 = v487;
        if ((*((v148 & 0x7FFFFFFFFFFFFFFFLL) + 0x89) & 0x80) != 0)
        {
          sub_1CF3E3E48(a2, a3);
          if (v244)
          {
LABEL_85:

            return sub_1CEFCCC44(v101, &qword_1EC4BE710, &qword_1CF9FE5A8);
          }

          v487 = 0;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0250, &unk_1CFA05760);
        v306 = swift_dynamicCastClass();
        if (v306)
        {
          v307 = a2;
          if (*(v306 + 112) == 3)
          {
            v308 = *(v306 + 96);
            v309 = v306;
            v310 = v308;
            v306 = v309;
          }

          else
          {
            v308 = 0;
          }

          v316 = v487;
          v317 = *(v306 + 144);
          v318 = *(v306 + 152);

          sub_1CF40423C(v317, v318, v308, v307, a3);
          v487 = v316;
          if (v316)
          {
LABEL_155:

LABEL_156:

            goto LABEL_260;
          }

          goto LABEL_237;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
        v311 = swift_dynamicCastClass();
        if (v311)
        {
          v312 = a2;
          v313 = *(v311 + 144);
          if (*(v311 + 112) == 3)
          {
            v314 = *(v311 + 96);
            v315 = v314;
          }

          else
          {
            v314 = 0;
          }

          v359 = v313;
          v360 = v487;
          sub_1CF405DEC(v359, v314, v312, a3);
          v487 = v360;
          if (v360)
          {

LABEL_57:

            goto LABEL_260;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
          v352 = swift_dynamicCastClass();
          if (!v352)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF20, &unk_1CFA05470);
            v352 = swift_dynamicCastClass();
            if (!v352)
            {
              goto LABEL_238;
            }
          }

          if (*(v352 + 112) != 3)
          {
            goto LABEL_238;
          }

          v367 = a2;
          v368 = *(v352 + 96);
          v369 = *(v352 + 104);
          v370 = *(v352 + 144);
          v371 = v368;
          v372 = v487;
          sub_1CF405DEC(v370, v368, v367, a3);
          v487 = v372;
          if (v372)
          {
            sub_1CF03D7A8(v368, v369, 3u);
            goto LABEL_57;
          }

          sub_1CF03D7A8(v368, v369, 3u);
        }

LABEL_237:
        v101 = v502;
LABEL_238:
        v388 = v450;
        v387 = v451;
        v389 = v449;
        (*(*v243 + 528))();
        if ((*(v448 + 48))(v388, 1, v389) == 1)
        {

          v202 = &qword_1EC4C0498;
          v203 = &qword_1CFA05898;
          v146 = v388;
        }

        else
        {
          sub_1CEFE55D0(v388, v387, &qword_1EC4BFD38, &unk_1CFA05450);
          v390 = v442;
          sub_1CEFCCBDC(v387, v442, &qword_1EC4BFD38, &unk_1CFA05450);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v391 = v390;
            v392 = v443;
            sub_1CEFE55D0(v391, v443, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          }

          else
          {
            v393 = v390;
            v392 = v443;
            sub_1CEFE55D0(v393, v443, &unk_1EC4BFD70, &qword_1CFA12AC0);
          }

          swift_storeEnumTagMultiPayload();
          if (*(v243 + 112) == 3)
          {
            v394 = *(v243 + 96);
            v395 = v394;
          }

          else
          {
            v394 = 0;
          }

          sub_1CF3E3598(v392, v394);

          sub_1CEFCCC44(v392, &unk_1EC4BF650, &unk_1CF9FCB40);
          v202 = &qword_1EC4BFD38;
          v203 = &unk_1CFA05450;
          v146 = v387;
        }

        goto LABEL_227;
      case 0x1Cu:
        v124 = a2;
        v125 = v476;
        sub_1CEFCCBDC(v101, v476, &qword_1EC4BE710, &qword_1CF9FE5A8);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v126 = v460;
          sub_1CEFE55D0(v125, v460, &unk_1EC4BFD70, &qword_1CFA12AC0);
          v127 = (v3 + qword_1EDEBBC28);
          os_unfair_lock_lock((v3 + qword_1EDEBBC28));
          v128 = sub_1CF033A74();
          v129 = v487;
          sub_1CF3FB96C(v126, v128, v124, a3);
          v487 = v129;
          if (v129)
          {

            os_unfair_lock_unlock(v127);
          }

          else
          {

            os_unfair_lock_unlock(v127);
            v249 = v455;
            sub_1CEFCCBDC(v126, v455, &unk_1EC4BFD70, &qword_1CFA12AC0);
            if (swift_getEnumCaseMultiPayload() == 6)
            {

              v249 = v456;
              sub_1CEFCCBDC(v126, v456, &unk_1EC4BFD70, &qword_1CFA12AC0);
              swift_storeEnumTagMultiPayload();
              sub_1CF3E3598(v249, 0);
              v250 = &unk_1EC4BF650;
              v251 = &unk_1CF9FCB40;
            }

            else
            {
              v250 = &unk_1EC4BFD70;
              v251 = &qword_1CFA12AC0;
            }

            sub_1CEFCCC44(v249, v250, v251);
          }

          v202 = &unk_1EC4BFD70;
          v203 = &qword_1CFA12AC0;
          v146 = v126;
          goto LABEL_227;
        }

        v199 = v459;
        sub_1CEFE55D0(v125, v459, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        v200 = (v3 + qword_1EDEBBC20);
        os_unfair_lock_lock((v3 + qword_1EDEBBC20));
        v201 = v487;
        sub_1CF3FC714(v199, v3, a2, a3);
        v487 = v201;
        if (v201)
        {
          os_unfair_lock_unlock(v200);
          v202 = &unk_1EC4BFCC0;
          v203 = &unk_1CF9FCB50;
          v146 = v199;
          goto LABEL_227;
        }

        os_unfair_lock_unlock(v200);
        v252 = v453;
        sub_1CEFCCBDC(v199, v453, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEC0, &unk_1CFA05590);
          sub_1CEFCCC44(v252 + *(v253 + 48), &unk_1EC4BEC00, &unk_1CF9FCB60);
          v254 = v456;
          sub_1CEFCCBDC(v199, v456, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          swift_storeEnumTagMultiPayload();
          sub_1CF3E3598(v254, 0);
          sub_1CEFCCC44(v254, &unk_1EC4BF650, &unk_1CF9FCB40);
          v146 = v199;
          v202 = &unk_1EC4BFCC0;
          v203 = &unk_1CF9FCB50;
          goto LABEL_227;
        }

        v144 = &unk_1EC4BFCC0;
        v145 = &unk_1CF9FCB50;
        goto LABEL_225;
      case 0x1Fu:
        v104 = a2;
        v105 = v474;
        v106 = sub_1CEFCCBDC(v101, v474, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v107 = *v105;
        v108 = *(v105 + 8);
        if (*(v105 + 9))
        {
          v109 = *v105;
          goto LABEL_43;
        }

        v188 = sub_1CF93DAB0(v106);
        v190 = v189;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0000, &unk_1CF9FADA0);
        v191 = swift_allocObject();
        *(v191 + 152) = v108;
        *(v191 + 16) = 0u;
        *(v191 + 32) = 0u;
        *(v191 + 48) = 1;
        *(v191 + 56) = 0u;
        *(v191 + 72) = 0u;
        *(v191 + 88) = 0;
        *(v191 + 96) = xmmword_1CF9FEC30;
        *(v191 + 112) = 0;
        *(v191 + 120) = v188;
        *(v191 + 128) = v190;
        *(v191 + 136) = 0;
        *(v191 + 144) = v107;
        v192 = sub_1CF4D3BC0();
        v193 = v487;
        sub_1CF902E70(v191, v192, v104, a3);
        v487 = v193;
        if (v193)
        {
          goto LABEL_57;
        }

        goto LABEL_94;
      case 0x20u:
        v160 = v482;
        sub_1CEFCCBDC(v101, v482, &qword_1EC4BE710, &qword_1CF9FE5A8);
        if (*(v160 + 9))
        {
          sub_1CEFD0994(v160[2], *(v160 + 24), *(v160 + 25));
          sub_1CEFD0994(*v160, *(v160 + 8), *(v160 + 9));
          goto LABEL_228;
        }

        v214 = *v160;
        v215 = a2;
        v216 = *(v160 + 8);
        v217 = *(v3 + 16);
        v218 = v487;
        sub_1CF7EB934(*v160, v216, v215, a3, v494);
        v487 = v218;
        if (v218)
        {
          v219 = v160[2];
          v220 = *(v160 + 25);
          v221 = *(v160 + 24);
LABEL_143:
          sub_1CEFD0994(v219, v221, v220);
          goto LABEL_260;
        }

        memcpy(v492, v494, 0x208uLL);
        v255 = *&v492[1];
        v493[0] = *v494;
        memcpy(&v493[1] + 8, &v494[24], 0x1F0uLL);
        *&v493[1] = *&v492[1];
        if (sub_1CF08B99C(v493) == 1)
        {
          v491[0] = *v494;
          *&v491[1] = v255;
          memcpy(&v491[1] + 8, &v494[24], 0x1F0uLL);
          sub_1CEFCCBDC(v492, &v489, &unk_1EC4BFC20, &unk_1CFA0A290);
          sub_1CEFCCC44(v491, &unk_1EC4BFC20, &unk_1CFA0A290);
        }

        else
        {
          v491[0] = *v494;
          *&v491[1] = v255;
          memcpy(&v491[1] + 8, &v494[24], 0x1F0uLL);
          sub_1CEFCCBDC(v492, &v489, &unk_1EC4BFC20, &unk_1CFA0A290);
          sub_1CEFCCC44(v491, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          if ((v255 & 1) == 0)
          {
            v304 = v482;
            goto LABEL_174;
          }
        }

        sub_1CF4810BC();
        v301 = swift_allocError();
        *v302 = 2;
        v303 = v487;
        sub_1CF40212C(v214, v216, 5, v301, v215, a3);
        v487 = v303;
        v304 = v482;
        if (v303)
        {

          memcpy(v491, v494, 0x208uLL);
          sub_1CEFCCC44(v491, &unk_1EC4BFC20, &unk_1CFA0A290);
          v219 = v304[2];
          v220 = *(v304 + 25);
          v221 = *(v304 + 24);
          goto LABEL_143;
        }

LABEL_174:
        memcpy(v491, v494, 0x208uLL);
        sub_1CEFCCC44(v491, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFD0994(v304[2], *(v304 + 24), *(v304 + 25));
        v101 = v502;
LABEL_228:
        v382 = v101;
        return sub_1CEFCCC44(v382, &qword_1EC4BE710, &qword_1CF9FE5A8);
      case 0x29u:
        v161 = a2;
        v162 = v475;
        sub_1CEFCCBDC(v101, v475, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v163 = *(v162 + 9);
        v164 = *v162;
        v108 = *(v162 + 8);
        if (v163)
        {
          v109 = v164;
LABEL_43:
          v151 = v108;
LABEL_44:
          sub_1CEFD0994(v109, v151, 1);
          goto LABEL_228;
        }

        v222 = v3;
        v223 = *(v3 + 16);
        v224 = v487;
        sub_1CF7EB934(v164, v108, v161, a3, v494);
        v487 = v224;
        if (v224)
        {
          goto LABEL_228;
        }

        memcpy(v493, v494, 0x208uLL);
        if (sub_1CF08B99C(v493) == 1)
        {
LABEL_75:
          memcpy(v492, v494, 0x208uLL);
        }

        else
        {
          v305 = memcpy(v492, v494, 0x208uLL);
          if (!*&v492[1])
          {
            v353 = sub_1CF93DAB0(v305);
            v355 = v354;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
            v356 = swift_allocObject();
            *(v356 + 152) = v108;
            *(v356 + 16) = 0u;
            *(v356 + 32) = 0u;
            *(v356 + 48) = 1;
            *(v356 + 56) = 0u;
            *(v356 + 72) = 0u;
            *(v356 + 88) = 0;
            *(v356 + 120) = v353;
            *(v356 + 128) = v355;
            *(v356 + 136) = 0x80000000000;
            *(v356 + 144) = v164;
            *(v356 + 96) = xmmword_1CFA04E10;
            *(v356 + 112) = 0;
            v357 = sub_1CF4D3BC0();
            v358 = v487;
            sub_1CF902E70(v356, v357, v161, a3);
            v487 = v358;
            if (!v358)
            {
              v373 = *(**(*(v222 + 32) + 16) + 920);

              v373(v374);

LABEL_270:
              v267 = &unk_1EC4BFC20;
              v268 = &unk_1CFA0A290;
              v123 = v492;
LABEL_114:
              sub_1CEFCCC44(v123, v267, v268);
              v101 = v502;
              goto LABEL_228;
            }

LABEL_188:

LABEL_258:
            v299 = &unk_1EC4BFC20;
            v300 = &unk_1CFA0A290;
            v298 = v492;
LABEL_259:
            sub_1CEFCCC44(v298, v299, v300);
LABEL_260:
            v382 = v502;
            return sub_1CEFCCC44(v382, &qword_1EC4BE710, &qword_1CF9FE5A8);
          }
        }

LABEL_145:
        v202 = &unk_1EC4BFC20;
        v203 = &unk_1CFA0A290;
        v146 = v492;
        goto LABEL_227;
      case 0x2Bu:
        v150 = v473;
        sub_1CEFCCBDC(v101, v473, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v186 = *(v150 + 32);
        *v494 = *(v150 + 16);
        *&v494[16] = v186;
        v187 = *(v150 + 64);
        *&v494[32] = *(v150 + 48);
        *&v494[48] = v187;
        if (*(v150 + 9))
        {
          sub_1CF1AE25C(v494);
LABEL_54:
          sub_1CEFD0994(*v150, *(v150 + 8), *(v150 + 9));
          goto LABEL_228;
        }

        v488 = *v150;
        v232 = a2;
        v233 = *(v150 + 8);
        v234 = sub_1CF1AE1DC(v494, v493);
        v235 = sub_1CF93DAB0(v234);
        v237 = v236;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0150, &unk_1CF9FAC40);
        v238 = swift_allocObject();
        v239 = *&v494[16];
        *(v238 + 144) = *v494;
        *(v238 + 160) = v239;
        v240 = *&v494[48];
        *(v238 + 176) = *&v494[32];
        *(v238 + 192) = v240;
        *(v238 + 16) = 0u;
        *(v238 + 32) = 0u;
        *(v238 + 48) = 1;
        *(v238 + 56) = 0u;
        *(v238 + 72) = 0u;
        *(v238 + 88) = 0;
        *(v238 + 96) = xmmword_1CF9FEC30;
        *(v238 + 112) = 0;
        *(v238 + 120) = v235;
        *(v238 + 128) = v237;
        *(v238 + 136) = 0x4000;
        v241 = sub_1CF4D3BC0();
        v242 = v487;
        sub_1CF902E70(v238, v241, v232, a3);
        v487 = v242;
        if (v242)
        {
          goto LABEL_79;
        }

        v260 = v488;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
        v261 = swift_dynamicCastClass();
        if (v261)
        {
          v262 = *(v261 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
          v263 = *(swift_dynamicCastClassUnconditional() + 32);

          v264 = v487;
          sub_1CF7FEF8C(v260, v233, 128, v232, a3);
          v487 = v264;
          if (!v264)
          {
            sub_1CF1AE25C(v494);

LABEL_94:

            v101 = v502;
            goto LABEL_228;
          }

LABEL_79:

          sub_1CF1AE25C(v494);
          goto LABEL_260;
        }

        sub_1CF1AE25C(v494);
        v101 = v502;
        goto LABEL_228;
      case 0x2Du:
        v179 = v3;
        v180 = qword_1EDEBBD00;
        swift_beginAccess();
        v181 = *(v179 + v180);
        *(v179 + v180) = MEMORY[0x1E69E7CC0];
        v182 = *(v181 + 16);
        if (v182)
        {
          v183 = (v181 + 40);
          do
          {
            v185 = *(v183 - 1);
            v184 = *v183;
            *&v493[0] = 0;

            v185(v493);

            v183 += 2;
            --v182;
          }

          while (v182);

          v101 = v502;
        }

        else
        {
        }

        goto LABEL_228;
      default:
        goto LABEL_228;
    }
  }

  return result;
}

uint64_t sub_1CF3D63B8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + qword_1EDEBBDD8);
  if (v2)
  {
    v3 = *(a2 + qword_1EDEBBDD8 + 8);
    MEMORY[0x1EEE9AC00](result);
    v7[2] = v4;
    v7[3] = v5;
    v8 = v6 & 1;

    v2(sub_1CF480044, v7);
    return sub_1CEFF7124(v2);
  }

  return result;
}

uint64_t sub_1CF3D6468(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + qword_1EDEBBDD8);
  if (v3)
  {
    v4 = *(a2 + qword_1EDEBBDD8 + 8);
    MEMORY[0x1EEE9AC00](result);
    v11[1] = *(v5 + 2632);
    v12 = v6;
    v13 = *(v5 + 2648);
    v14 = v8;
    v15 = v7;
    v16 = v9;
    v17 = v10 & 1;

    v3(sub_1CF484AB0, v11);
    return sub_1CEFF7124(v3);
  }

  return result;
}

uint64_t sub_1CF3D6560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF0, &qword_1CFA05330);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  sub_1CEFCCBDC(a1, a4, &qword_1EC4C1B40, &unk_1CF9FCB70);
  sub_1CEFCCBDC(a2, a4 + v9, &qword_1EC4C1B40, &unk_1CF9FCB70);
  *(a4 + v10) = a3;
  return (*(*(v8 - 8) + 56))(a4, 0, 1, v8);
}

uint64_t sub_1CF3D6648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for SnapshotItem();
  v7 = sub_1CF9E75D8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = *(TupleTypeMetadata3 + 48);
  v10 = *(TupleTypeMetadata3 + 64);
  v11 = *(*(v7 - 8) + 16);
  v11(a4, a1, v7);
  v11(a4 + v9, a2, v7);
  *(a4 + v10) = a3;
  return (*(*(TupleTypeMetadata3 - 8) + 56))(a4, 0, 1, TupleTypeMetadata3);
}

uint64_t sub_1CF3D6774(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + qword_1EDEBBDD8);
  if (v2)
  {
    v3 = *(a2 + qword_1EDEBBDD8 + 8);
    v4 = MEMORY[0x1EEE9AC00](result);
    v9[2] = v5;
    v9[3] = v6;
    v9[4] = v7;
    v9[5] = v4;
    v9[6] = v8;

    v2(sub_1CF484B78, v9);
    return sub_1CEFF7124(v2);
  }

  return result;
}

void sub_1CF3D6824(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  if (v4 == 255)
  {
    v8 = a1[31];
    if (v8)
    {
      v14 = a1[31];
      v9 = a2[3];
      v10 = a2[4];
      v11 = __swift_project_boxed_opaque_existential_1(a2, v9);
      v12 = v8;
      sub_1CF3CA63C(&v14, 0, v11, v9, v10, a3);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF0, &qword_1CFA05330);
      (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
    }
  }

  else
  {
    v14 = *a1;
    v15 = v4;
    v5 = a2[3];
    v6 = a2[4];
    v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
    sub_1CF3CA2D8(&v14, 0, v7, v5, v6, a3);
  }
}

uint64_t sub_1CF3D6964@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a2;
  v59 = a4;
  v5 = *a3;
  v6 = *(*a3 + 2656);
  v49 = *(*a3 + 2640);
  v50 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1CF9E75D8();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v51 = &v48 - v11;
  v55 = AssociatedTypeWitness;
  v54 = *(AssociatedTypeWitness - 8);
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v48 - v13;
  v14 = *(v5 + 2648);
  v56 = *(v5 + 2632);
  v57 = v14;
  v15 = swift_getAssociatedTypeWitness();
  v16 = sub_1CF9E75D8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v48 - v20;
  v22 = *(v15 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v25 = &v48 - v24;
  v26 = a1;
  (*(v17 + 16))(v21, a1, v16);
  if ((*(v22 + 48))(v21, 1, v15) == 1)
  {
    v27 = v58;
    v28 = v59;
    (*(v17 + 8))(v21, v16);
    *&v29 = v56;
    *&v30 = v57;
    *(&v29 + 1) = v49;
    *(&v30 + 1) = v50;
    v60 = v29;
    v61 = v30;
    v31 = type metadata accessor for ItemReconciliation();
    v33 = v52;
    v32 = v53;
    v34 = v26 + *(v31 + 52);
    v35 = v51;
    (*(v52 + 16))(v51, v34, v53);
    v37 = v54;
    v36 = v55;
    if ((*(v54 + 48))(v35, 1, v55) == 1)
    {
      (*(v33 + 8))(v35, v32);
      type metadata accessor for SnapshotItem();
      sub_1CF9E75D8();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      return (*(*(TupleTypeMetadata3 - 8) + 56))(v28, 1, 1, TupleTypeMetadata3);
    }

    else
    {
      v43 = v48;
      (*(v37 + 32))(v48, v35, v36);
      v44 = v27;
      v45 = v27[3];
      v46 = v44[4];
      v47 = __swift_project_boxed_opaque_existential_1(v44, v45);
      sub_1CF3CA63C(v43, 0, v47, v45, v46, v28);
      return (*(v37 + 8))(v43, v36);
    }
  }

  else
  {
    (*(v22 + 32))(v25, v21, v15);
    v40 = v58[3];
    v41 = v58[4];
    v42 = __swift_project_boxed_opaque_existential_1(v58, v40);
    sub_1CF3CA2D8(v25, 0, v42, v40, v41, v59);
    return (*(v22 + 8))(v25, v15);
  }
}

uint64_t sub_1CF3D6E74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + qword_1EDEBBDD8);
  if (v6)
  {
    v8 = *(a2 + qword_1EDEBBDD8 + 8);
    v9 = MEMORY[0x1EEE9AC00](result);
    v14[2] = v10;
    v14[3] = v11;
    v14[4] = v9;
    v14[5] = v12;
    v14[6] = v13;

    v6(a6, v14);
    return sub_1CEFF7124(v6);
  }

  return result;
}

uint64_t sub_1CF3D6F20(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_1CF4FB2BC(0xD000000000000015, 0x80000001CFA46BF0, v4, v5);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF48540C, v2, v6, MEMORY[0x1E69E7CA8] + 8, v7);
}

void sub_1CF3D6FE0(void *a1, uint64_t a2)
{
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v319 = *(v328 - 8);
  v4 = *(v319 + 64);
  MEMORY[0x1EEE9AC00](v328);
  v331 = &v309[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v318 = &v309[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04D0, &unk_1CFA12B00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v333 = &v309[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v327 = &v309[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v325 = &v309[-v14];
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE670, &qword_1CF9FE4D0);
  v324 = *(v334 - 8);
  v15 = *(v324 + 64);
  MEMORY[0x1EEE9AC00](v334);
  v332 = &v309[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v323 = &v309[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04F0, &qword_1CFA12B10);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v330 = &v309[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v329 = &v309[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v326 = &v309[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  *&v356 = &v309[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v337 = &v309[-v31];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C0, &unk_1CFA058B0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v353 = &v309[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v352 = &v309[-v36];
  MEMORY[0x1EEE9AC00](v37);
  v350 = &v309[-v38];
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v314 = *(v316 - 8);
  v39 = *(v314 + 64);
  MEMORY[0x1EEE9AC00](v316);
  v351 = &v309[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v41);
  v313 = &v309[-v42];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06C0, &qword_1CFA05AD0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v317 = &v309[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v309[-v47];
  v49 = qword_1EDEBBC70;
  swift_beginAccess();
  v310 = a2;
  v50 = *(a2 + v49);
  v51 = *(v50 + 64);
  v312 = v50 + 64;
  v52 = 1 << *(v50 + 32);
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & v51;
  v311 = (v52 + 63) >> 6;
  v359 = v27 + 56;
  v341 = v27;
  *&v358 = v27 + 48;
  v346 = 0x80000001CFA45580;
  v345 = 0x80000001CFA455B0;
  v344 = 0x80000001CFA455D0;
  v315 = v50;

  v55 = 0;
  v342 = a1;
  v374 = v26;
  v320 = v48;
LABEL_6:
  if (!v54)
  {
    if (v311 <= v55 + 1)
    {
      v58 = v55 + 1;
    }

    else
    {
      v58 = v311;
    }

    v57 = v353;
    v59 = v317;
    while (1)
    {
      v56 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v56 >= v311)
      {
        v321 = v58 - 1;
        v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06C8, &qword_1CFA05AD8);
        (*(*(v120 - 8) + 56))(v59, 1, 1, v120);
        v322 = 0;
        goto LABEL_16;
      }

      v54 = *(v312 + 8 * v56);
      ++v55;
      if (v54)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v56 = v55;
  v57 = v353;
LABEL_15:
  v322 = (v54 - 1) & v54;
  v60 = __clz(__rbit64(v54)) | (v56 << 6);
  v61 = *(v315 + 56);
  v62 = *(v315 + 48) + 16 * v60;
  *&v357 = *v62;
  v63 = *(v62 + 8);
  v64 = v313;
  sub_1CEFCCBDC(v61 + *(v314 + 72) * v60, v313, &unk_1EC4C04C0, &qword_1CFA07B10);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06C8, &qword_1CFA05AD8);
  v66 = *(v65 + 48);
  v59 = v317;
  *v317 = v357;
  *(v59 + 8) = v63;
  sub_1CEFE55D0(v64, v59 + v66, &unk_1EC4C04C0, &qword_1CFA07B10);
  (*(*(v65 - 8) + 56))(v59, 0, 1, v65);
  v321 = v56;
  v48 = v320;
LABEL_16:
  sub_1CEFE55D0(v59, v48, &qword_1EC4C06C0, &qword_1CFA05AD0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06C8, &qword_1CFA05AD8);
  if ((*(*(v67 - 8) + 48))(v48, 1, v67) != 1)
  {
    v68 = *(v67 + 48);
    v69 = *v48;
    LODWORD(v349) = v48[8];
    v70 = v351;
    sub_1CEFE55D0(&v48[v68], v351, &unk_1EC4C04C0, &qword_1CFA07B10);
    v71 = *&v70[*(v316 + 56)];
    v72 = *(v71 + 64);
    v336 = v71 + 64;
    v73 = 1 << *(v71 + 32);
    if (v73 < 64)
    {
      v74 = ~(-1 << v73);
    }

    else
    {
      v74 = -1;
    }

    v75 = v74 & v72;
    v335 = (v73 + 63) >> 6;
    v340 = v69;
    v76 = 0x6873617274;
    if (!v69)
    {
      v76 = 1953460082;
    }

    v339 = v76;
    v77 = 0xE500000000000000;
    if (!v69)
    {
      v77 = 0xE400000000000000;
    }

    v338 = v77;
    v343 = v71;

    v78 = 0;
    while (v75)
    {
      v90 = v78;
LABEL_51:
      v92 = __clz(__rbit64(v75));
      v75 &= v75 - 1;
      sub_1CEFCCBDC(*(v343 + 56) + *(v341 + 72) * (v92 | (v90 << 6)), v57, &unk_1EC4C04B0, &unk_1CF9FCB20);
      v93 = 0;
      *&v357 = v90;
LABEL_52:
      v94 = *v359;
      v95 = 1;
      (*v359)(v57, v93, 1, v26);
      v96 = *v358;
      if ((*v358)(v57, 1, v26) != 1)
      {
        v97 = *(v374 + 80);
        v347 = *(v374 + 96);
        v98 = v353;
        v354 = *v353;
        v348 = *(v353 + 2);
        v99 = sub_1CF9E6448();
        v100 = *(*(v99 - 8) + 32);
        v101 = v337;
        v100(&v337[v97], &v98[v97], v99);
        v102 = swift_allocObject();
        *&v355 = v96;
        v103 = v102;
        *(v102 + 16) = *&v98[v347];
        v104 = *(v374 + 80);
        v105 = v352;
        v106 = (v352 + *(v374 + 96));
        *v352 = v354;
        *(v105 + 16) = v348;
        v107 = &v101[v97];
        v26 = v374;
        v100((v105 + v104), v107, v99);
        a1 = v342;
        v95 = 0;
        *v106 = sub_1CF485B60;
        v106[1] = v103;
        v96 = v355;
      }

      v108 = v352;
      (v94)(v352, v95, 1, v26);
      v109 = v350;
      sub_1CEFE55D0(v108, v350, &qword_1EC4BE1C0, &unk_1CFA058B0);
      if (v96(v109, 1, v26) == 1)
      {

        sub_1CEFCCC44(v351, &unk_1EC4C04C0, &qword_1CFA07B10);
        v55 = v321;
        v48 = v320;
        v54 = v322;
        goto LABEL_6;
      }

      v110 = *(v109 + 2);
      v111 = *(v26 + 80);
      v112 = v109;
      v113 = *(v26 + 96);
      v114 = v356;
      v355 = *v112;
      *v356 = v355;
      *(v114 + 16) = v110;
      v115 = sub_1CF9E6448();
      v116 = *(*(v115 - 8) + 32);
      v354 = *(v112 + v113);
      v116(v114 + v111, v112 + v111, v115);
      *(v114 + v113) = v354;
      v117 = a1[3];
      v118 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v117);
      v372 = 0;
      v373 = 0xE000000000000000;
      if (v349)
      {
        v80 = v339;
        v81 = v338;
        v57 = v353;
        if (v349 == 1)
        {
          v370 = 0x284449656C6966;
          v371 = 0xE700000000000000;
          v368 = v340;
          v119 = sub_1CF9E7F98();
          MEMORY[0x1D3868CC0](v119);

          MEMORY[0x1D3868CC0](41, 0xE100000000000000);
          v80 = v370;
          v81 = v371;
        }
      }

      else
      {
        v370 = 0x284449636F64;
        v371 = 0xE600000000000000;
        LODWORD(v368) = v340;
        v79 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v79);

        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        v80 = v370;
        v81 = v371;
        v57 = v353;
      }

      MEMORY[0x1D3868CC0](v80, v81);

      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      v82 = *v351;
      v83 = 0xD000000000000016;
      if (v82 != 3)
      {
        v83 = 0xD000000000000022;
      }

      v84 = v346;
      if (v82 == 3)
      {
        v84 = v345;
      }

      if (v82 == 2)
      {
        v83 = 0xD000000000000013;
        v84 = v344;
      }

      v85 = 0x7463697665;
      if (!*v351)
      {
        v85 = 0x6C6169726574616DLL;
      }

      v86 = 0xE500000000000000;
      if (!*v351)
      {
        v86 = 0xEB00000000657A69;
      }

      if (*v351 <= 1u)
      {
        v87 = v85;
      }

      else
      {
        v87 = v83;
      }

      if (*v351 <= 1u)
      {
        v88 = v86;
      }

      else
      {
        v88 = v84;
      }

      MEMORY[0x1D3868CC0](v87, v88);

      MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
      v89 = sub_1CEFD11AC(v355);
      MEMORY[0x1D3868CC0](v89);

      sub_1CF4FB2BC(v372, v373, v117, v118);

      sub_1CEFCCC44(v356, &unk_1EC4C04B0, &unk_1CF9FCB20);
      v78 = v357;
      v26 = v374;
    }

    if (v335 <= v78 + 1)
    {
      v91 = v78 + 1;
    }

    else
    {
      v91 = v335;
    }

    while (1)
    {
      v90 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        break;
      }

      if (v90 >= v335)
      {
        *&v357 = v91 - 1;
        v75 = 0;
        v93 = 1;
        goto LABEL_52;
      }

      v75 = *(v336 + 8 * v90);
      ++v78;
      if (v75)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
  }

  v121 = qword_1EC4EBD70;
  v122 = v310;
  swift_beginAccess();
  v123 = *(v122 + v121);
  v124 = v123 + 64;
  v125 = 1 << *(v123 + 32);
  v126 = -1;
  if (v125 < 64)
  {
    v126 = ~(-1 << v125);
  }

  v349 = v126 & *(v123 + 64);
  v345 = (v125 + 63) >> 6;
  v374 = v324 + 56;
  v359 = v324 + 48;
  v352 = *MEMORY[0x1E6967258];
  v350 = *MEMORY[0x1E6967298];
  v348 = *MEMORY[0x1E6967280];
  *&v355 = "+ processing requests";
  v344 = v123;

  v127 = 0;
  v128 = v334;
  v129 = v330;
  v343 = v124;
LABEL_65:
  v130 = v349;
  if (v349)
  {
    v131 = v127;
LABEL_70:
    v349 = (v130 - 1) & v130;
    v347 = v131;
    v132 = (v131 << 9) | (8 * __clz(__rbit64(v130)));
    v133 = *(*(v344 + 56) + v132);
    v134 = *(v133 + 2);
    *&v354 = *(*(v344 + 48) + v132);
    v346 = v354;
    v351 = v133;

    v135 = 0;
    v353 = v134;
    while (1)
    {
      if (v135 == v134)
      {
        v139 = 1;
        *&v358 = v134;
      }

      else
      {
        if ((v135 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        if (v135 >= *(v351 + 2))
        {
          goto LABEL_176;
        }

        sub_1CEFCCBDC(&v351[((*(v324 + 80) + 32) & ~*(v324 + 80)) + *(v324 + 72) * v135], v129, &qword_1EC4BE670, &qword_1CF9FE4D0);
        v139 = 0;
        *&v358 = v135 + 1;
      }

      v140 = *v374;
      v141 = 1;
      (*v374)(v129, v139, 1, v128);
      v142 = *v359;
      if ((*v359)(v129, 1, v128) != 1)
      {
        v143 = *(v128 + 64);
        v144 = *(v128 + 80);
        v145 = v129[1];
        *&v357 = *v129;
        *&v356 = v145;
        v146 = sub_1CF9E6448();
        v147 = *(*(v146 - 8) + 32);
        v148 = v323;
        v147(&v323[v143], &v330[v143], v146);
        v149 = swift_allocObject();
        *(v149 + 16) = *&v330[v144];
        v150 = *(v334 + 64);
        v151 = v329;
        v152 = (v329 + *(v334 + 80));
        v153 = v356;
        *v329 = v357;
        v151[1] = v153;
        v154 = &v148[v143];
        v129 = v330;
        v147(v151 + v150, v154, v146);
        v128 = v334;
        v141 = 0;
        *v152 = sub_1CF485B44;
        v152[1] = v149;
        a1 = v342;
      }

      v155 = v329;
      (v140)(v329, v141, 1, v128);
      v156 = v326;
      sub_1CEFE55D0(v155, v326, &unk_1EC4C04F0, &qword_1CFA12B10);
      if (v142(v156, 1, v128) == 1)
      {

        v127 = v347;
        v124 = v343;
        goto LABEL_65;
      }

      v157 = v128;
      v158 = *(v128 + 64);
      v159 = v156;
      v160 = *(v157 + 80);
      v161 = v332;
      v357 = *v159;
      *v332 = v357;
      v162 = sub_1CF9E6448();
      v163 = *(*(v162 - 8) + 32);
      v356 = *(v159 + v160);
      v163(v161 + v158, v159 + v158, v162);
      *(v161 + v160) = v356;
      v164 = a1[3];
      v165 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v164);
      v370 = 0;
      v371 = 0xE000000000000000;
      sub_1CF9E7948();
      v166 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v168 = v167;
      if (v166 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v168 == v169)
      {

        v136 = 0xE500000000000000;
        v137 = 0x746F6F722ELL;
        v128 = v334;
        goto LABEL_72;
      }

      v170 = sub_1CF9E8048();

      v128 = v334;
      if (v170)
      {
        v136 = 0xE500000000000000;
        v137 = 0x746F6F722ELL;
        goto LABEL_72;
      }

      v171 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v173 = v172;
      if (v171 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v173 == v174)
      {

        v137 = 0x676E696B726F772ELL;
        v136 = 0xEB00000000746553;
        goto LABEL_72;
      }

      v175 = sub_1CF9E8048();

      v137 = 0x676E696B726F772ELL;
      v136 = 0xEB00000000746553;
      if ((v175 & 1) == 0)
      {
        v176 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v178 = v177;
        if (v176 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v178 == v179)
        {

LABEL_93:
          v136 = 0xE600000000000000;
          v137 = 0x68736172742ELL;
          goto LABEL_72;
        }

        v180 = sub_1CF9E8048();

        if (v180)
        {
          goto LABEL_93;
        }

        v137 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v136 = v181;
      }

LABEL_72:
      MEMORY[0x1D3868CC0](v137, v136);

      MEMORY[0x1D3868CC0](0xD000000000000012, v355 | 0x8000000000000000);
      v138 = sub_1CF913458(v357);
      MEMORY[0x1D3868CC0](v138);

      sub_1CF4FB2BC(v370, v371, v164, v165);

      sub_1CEFCCC44(v332, &qword_1EC4BE670, &qword_1CF9FE4D0);
      a1 = v342;
      v134 = v353;
      v135 = v358;
    }
  }

  while (1)
  {
    v131 = v127 + 1;
    if (__OFADD__(v127, 1))
    {
      goto LABEL_179;
    }

    if (v131 >= v345)
    {
      break;
    }

    v130 = *(v124 + 8 * v131);
    ++v127;
    if (v130)
    {
      goto LABEL_70;
    }
  }

  v182 = qword_1EC4EBD78;
  v183 = v310;
  swift_beginAccess();
  v184 = *(v183 + v182);
  v185 = *(v184 + 64);
  v344 = v184 + 64;
  v186 = 1 << *(v184 + 32);
  v187 = -1;
  if (v186 < 64)
  {
    v187 = ~(-1 << v186);
  }

  v347 = v187 & v185;
  v348 = (v186 + 63) >> 6;
  v188 = (v319 + 56);
  v374 = v319 + 48;
  v345 = v184;

  v189 = 0;
  v190 = v333;
  v191 = v328;
  v349 = v188;
LABEL_99:
  v192 = v347;
  if (v347)
  {
    v193 = v189;
LABEL_104:
    v194 = __clz(__rbit64(v192)) | (v193 << 6);
    v195 = *(v345 + 56);
    v196 = *(v345 + 48) + 16 * v194;
    v197 = *v196;
    LODWORD(v354) = *(v196 + 8);
    v198 = *(v195 + 8 * v194);

    if (v198)
    {
      v346 = v193;
      v199 = 0;
      v347 = (v192 - 1) & v192;
      v200 = *(v198 + 16);
      v201 = 0x6873617274;
      if (!v197)
      {
        v201 = 1953460082;
      }

      v351 = v201;
      v202 = 0xE500000000000000;
      if (!v197)
      {
        v202 = 0xE400000000000000;
      }

      v350 = v202;
      v352 = v197;
      v353 = v200;
      *&v356 = v198;
      while (1)
      {
        if (v199 == v200)
        {
          v207 = 1;
          v359 = v200;
        }

        else
        {
          if ((v199 & 0x8000000000000000) != 0)
          {
            goto LABEL_177;
          }

          if (v199 >= *(v198 + 16))
          {
            goto LABEL_178;
          }

          sub_1CEFCCBDC(v198 + ((*(v319 + 80) + 32) & ~*(v319 + 80)) + *(v319 + 72) * v199, v190, &unk_1EC4C5230, &unk_1CF9FE4C0);
          v207 = 0;
          v359 = v199 + 1;
        }

        v208 = *v188;
        v209 = 1;
        (*v188)(v190, v207, 1, v191);
        v210 = *v374;
        if ((*v374)(v190, 1, v191) != 1)
        {
          v211 = *(v191 + 64);
          v212 = *(v191 + 80);
          v213 = v190[1];
          *&v358 = *v190;
          *&v357 = v213;
          v214 = sub_1CF9E6448();
          v215 = *(*(v214 - 8) + 32);
          v216 = v318;
          v215(&v318[v211], &v333[v211], v214);
          v217 = swift_allocObject();
          *(v217 + 16) = *&v333[v212];
          v218 = *(v328 + 64);
          v219 = v327;
          v220 = (v327 + *(v328 + 80));
          v221 = v357;
          *v327 = v358;
          v219[1] = v221;
          v222 = &v216[v211];
          v188 = v349;
          v215(v219 + v218, v222, v214);
          v190 = v333;
          v191 = v328;
          v209 = 0;
          *v220 = sub_1CF485B44;
          v220[1] = v217;
          a1 = v342;
        }

        v223 = v327;
        v208(v327, v209, 1, v191);
        v224 = v325;
        sub_1CEFE55D0(v223, v325, &unk_1EC4C04D0, &unk_1CFA12B00);
        if (v210(v224, 1, v191) == 1)
        {

          v189 = v346;
          goto LABEL_99;
        }

        v225 = *(v191 + 64);
        v226 = *(v191 + 80);
        v227 = v331;
        v358 = *v224;
        *v331 = v358;
        v228 = sub_1CF9E6448();
        v229 = *(*(v228 - 8) + 32);
        v357 = *(v224 + v226);
        v229(v227 + v225, v224 + v225, v228);
        *(v227 + v226) = v357;
        v230 = a1[3];
        v231 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v230);
        v368 = 0;
        v369 = 0xE000000000000000;
        sub_1CF9E7948();
        if (!v354)
        {
          break;
        }

        v204 = v351;
        v205 = v350;
        if (v354 == 1)
        {
          v366 = 0x284449656C6966;
          v367 = 0xE700000000000000;
          v364 = v352;
          goto LABEL_111;
        }

LABEL_112:
        MEMORY[0x1D3868CC0](v204, v205);

        MEMORY[0x1D3868CC0](0xD000000000000012, v355 | 0x8000000000000000);
        v206 = sub_1CEFD11AC(v358);
        MEMORY[0x1D3868CC0](v206);

        sub_1CF4FB2BC(v368, v369, v230, v231);

        sub_1CEFCCC44(v331, &unk_1EC4C5230, &unk_1CF9FE4C0);
        v190 = v333;
        v198 = v356;
        v199 = v359;
        v200 = v353;
      }

      v366 = 0x284449636F64;
      v367 = 0xE600000000000000;
      LODWORD(v364) = v352;
LABEL_111:
      v203 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v203);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v204 = v366;
      v205 = v367;
      goto LABEL_112;
    }

LABEL_124:

    v232 = qword_1EC4EBD80;
    v233 = v310;
    swift_beginAccess();
    v234 = *(v233 + v232);
    v235 = v234 + 64;
    v236 = 1 << v234[32];
    v237 = -1;
    if (v236 < 64)
    {
      v237 = ~(-1 << v236);
    }

    v238 = v237 & *(v234 + 8);
    v239 = (v236 + 63) >> 6;
    v351 = v234;

    v240 = 0;
    v350 = v235;
    v349 = v239;
    while (1)
    {
      if (!v238)
      {
        do
        {
          v241 = v240 + 1;
          if (__OFADD__(v240, 1))
          {
            goto LABEL_183;
          }

          if (v241 >= v239)
          {
            goto LABEL_147;
          }

          v238 = *&v235[8 * v241];
          ++v240;
        }

        while (!v238);
        v240 = v241;
      }

      v242 = __clz(__rbit64(v238)) | (v240 << 6);
      v243 = *(v351 + 7);
      v244 = *(v351 + 6) + 16 * v242;
      *&v357 = *v244;
      v245 = *(v244 + 8);
      v246 = *(v243 + 8 * v242);

      if (!v247)
      {
        break;
      }

      v352 = v238;
      v353 = v240;
      *&v354 = v247;
      v248 = *(v247 + 16);
      if (v248)
      {
        v249 = 0x6873617274;
        if (!v357)
        {
          v249 = 1953460082;
        }

        *&v356 = v249;
        v250 = 0xE500000000000000;
        if (!v357)
        {
          v250 = 0xE400000000000000;
        }

        *&v355 = v250;
        v251 = (v354 + 64);
        LODWORD(v358) = v245;
        do
        {
          v256 = *(v251 - 4);
          v257 = *v251;
          v258 = sub_1CF19F384(*(v251 - 24));
          v259 = (*(v258 + 176))();
          v261 = v260;
          v263 = v342[3];
          v262 = v342[4];
          v264 = __swift_project_boxed_opaque_existential_1(v342, v263);
          v366 = 0;
          v367 = 0xE000000000000000;
          v374 = v262;
          v359 = v264;
          if (v245)
          {
            if (v245 != 1)
            {
              sub_1CEFD09A0(v256);

              v253 = v356;
              v254 = v355;
              goto LABEL_142;
            }

            v364 = 0x284449656C6966;
            v365 = 0xE700000000000000;
            v362 = v357;
            sub_1CEFD09A0(v256);
          }

          else
          {
            v364 = 0x284449636F64;
            v365 = 0xE600000000000000;
            LODWORD(v362) = v357;
            sub_1CEFD09A0(v256);
          }

          v252 = sub_1CF9E7F98();
          MEMORY[0x1D3868CC0](v252);

          MEMORY[0x1D3868CC0](41, 0xE100000000000000);
          v253 = v364;
          v254 = v365;
LABEL_142:
          MEMORY[0x1D3868CC0](v253, v254);

          MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
          MEMORY[0x1D3868CC0](v259, v261);

          MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
          v255 = sub_1CEFD11AC(v256);
          MEMORY[0x1D3868CC0](v255);

          sub_1CF4FB2BC(v366, v367, v263, v374);

          sub_1CEFD0A98(v256);

          v251 += 5;
          --v248;
          v245 = v358;
        }

        while (v248);
      }

      v238 = (v352 - 1) & v352;

      v235 = v350;
      v239 = v349;
      v240 = v353;
    }

LABEL_147:

    v265 = qword_1EDEBBC90;
    v266 = v310;
    swift_beginAccess();
    v374 = *(v266 + v265);
    v267 = *(v374 + 16);
    if (v267)
    {
      v359 = 0x80000001CFA46C30;

      v268 = 32;
      v269 = v342;
      do
      {
        v270 = *(v374 + v268);
        v271 = v269[3];
        v272 = v269[4];
        __swift_project_boxed_opaque_existential_1(v269, v271);
        v364 = 0;
        v365 = 0xE000000000000000;
        sub_1CEFD09A0(v270);
        sub_1CF9E7948();

        v364 = 0xD000000000000012;
        v365 = v359;
        v273 = sub_1CEFD11AC(v270);
        MEMORY[0x1D3868CC0](v273);

        sub_1CF4FB2BC(v364, v365, v271, v272);

        sub_1CEFD0A98(v270);
        v268 += 32;
        --v267;
      }

      while (v267);
    }

    v274 = qword_1EDEBBCC0;
    v275 = v310;
    swift_beginAccess();
    v276 = *(v275 + v274);
    v277 = v276 + 56;
    v278 = 1 << *(v276 + 32);
    v279 = -1;
    if (v278 < 64)
    {
      v279 = ~(-1 << v278);
    }

    v280 = v279 & *(v276 + 56);
    v281 = (v278 + 63) >> 6;
    v359 = v276;

    v282 = 0;
    while (v280)
    {
      v283 = v282;
LABEL_159:
      v284 = __clz(__rbit64(v280));
      v280 &= v280 - 1;
      v285 = *(*(v359 + 48) + ((v283 << 9) | (8 * v284)));
      v286 = v342[3];
      v374 = v342[4];
      __swift_project_boxed_opaque_existential_1(v342, v286);
      v362 = 0;
      v363 = 0xE000000000000000;
      sub_1CEFD09A0(v285);
      sub_1CF9E7948();

      v362 = 0x6972726162205346;
      v363 = 0xEF20726F66207265;
      v287 = sub_1CEFD11AC(v285);
      MEMORY[0x1D3868CC0](v287);

      sub_1CF4FB2BC(v362, v363, v286, v374);

      sub_1CEFD0A98(v285);
    }

    while (1)
    {
      v283 = v282 + 1;
      if (__OFADD__(v282, 1))
      {
        goto LABEL_180;
      }

      if (v283 >= v281)
      {

        v288 = qword_1EDEBBCC8;
        v289 = v310;
        swift_beginAccess();
        v290 = *(v289 + v288);
        v293 = *(v290 + 56);
        v292 = v290 + 56;
        v291 = v293;
        v294 = 1 << *(*(v289 + v288) + 32);
        v295 = -1;
        if (v294 < 64)
        {
          v295 = ~(-1 << v294);
        }

        v296 = v295 & v291;
        v297 = (v294 + 63) >> 6;
        v359 = *(v289 + v288);

        v298 = 0;
        while (v296)
        {
          v299 = v298;
LABEL_169:
          v300 = __clz(__rbit64(v296));
          v296 &= v296 - 1;
          v301 = *(*(v359 + 48) + ((v299 << 9) | (8 * v300)));
          v302 = v342[3];
          v374 = v342[4];
          __swift_project_boxed_opaque_existential_1(v342, v302);
          v360 = 0;
          v361 = 0xE000000000000000;
          sub_1CEFD09A0(v301);
          sub_1CF9E7948();

          v360 = 0x6972726162205046;
          v361 = 0xEF20726F66207265;
          v303 = sub_1CEFD11AC(v301);
          MEMORY[0x1D3868CC0](v303);

          sub_1CF4FB2BC(v360, v361, v302, v374);

          sub_1CEFD0A98(v301);
        }

        while (1)
        {
          v299 = v298 + 1;
          if (__OFADD__(v298, 1))
          {
            goto LABEL_181;
          }

          if (v299 >= v297)
          {

            v304 = *(v310 + 32);
            v305 = *(**(v304 + 16) + 856);

            v306 = v342;
            v305(v342);

            if ((*(v304 + 33) & 1) == 0)
            {
              v307 = v306[3];
              v308 = v306[4];
              __swift_project_boxed_opaque_existential_1(v306, v307);
              sub_1CF4FB2BC(0xD000000000000036, 0x80000001CFA46C50, v307, v308);
            }

            return;
          }

          v296 = *(v292 + 8 * v299);
          ++v298;
          if (v296)
          {
            v298 = v299;
            goto LABEL_169;
          }
        }
      }

      v280 = *(v277 + 8 * v283);
      ++v282;
      if (v280)
      {
        v282 = v283;
        goto LABEL_159;
      }
    }
  }

  while (1)
  {
    v193 = (v189 + 1);
    if (__OFADD__(v189, 1))
    {
      break;
    }

    if (v193 >= v348)
    {
      goto LABEL_124;
    }

    v192 = *(v344 + 8 * v193);
    ++v189;
    if (v192)
    {
      goto LABEL_104;
    }
  }

LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
}

uint64_t sub_1CF3D95AC(void *a1, uint64_t a2)
{
  v466 = a1;
  v3 = *(*a2 + 2632);
  v4 = *(*a2 + 2640);
  v5 = *(*a2 + 2648);
  v6 = *(*a2 + 2656);
  v480 = type metadata accessor for UserRequest();
  v481 = &type metadata for NSecTimestamp;
  v7 = sub_1CF9E6448();
  v482 = v7;
  v483 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v416 = *(TupleTypeMetadata - 8);
  v9 = *(v416 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v435 = (&v366 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v367 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v415 = &v366 - v12;
  v462 = v13;
  v424 = sub_1CF9E75D8();
  v371 = *(v424 - 8);
  v14 = *(v371 + 64);
  MEMORY[0x1EEE9AC00](v424);
  v450 = (&v366 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v436 = &v366 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v417 = &v366 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v480 = v3;
  v481 = v4;
  v482 = v5;
  v483 = v6;
  v480 = type metadata accessor for UserRequest();
  v481 = &type metadata for JobCode;
  v482 = &type metadata for NSecTimestamp;
  v483 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
  v413 = swift_getTupleTypeMetadata();
  sub_1CF9E6E58();
  v458 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v377 = sub_1CF9E75D8();
  v369 = *(v377 - 8);
  v21 = *(v369 + 64);
  MEMORY[0x1EEE9AC00](v377);
  v376 = &v366 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v375 = &v366 - v24;
  v480 = v4;
  v481 = v3;
  v482 = v6;
  v483 = v5;
  v480 = type metadata accessor for UserRequest();
  v481 = &type metadata for NSecTimestamp;
  v482 = v7;
  v483 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  v25 = swift_getTupleTypeMetadata();
  v419 = *(v25 - 8);
  v26 = *(v419 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v449 = &v366 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v368 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v418 = &v366 - v29;
  v452 = v30;
  v428 = sub_1CF9E75D8();
  v373 = *(v428 - 8);
  v31 = *(v373 + 64);
  MEMORY[0x1EEE9AC00](v428);
  v455 = (&v366 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33);
  v451 = &v366 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v427 = &v366 - v36;
  v480 = v3;
  v481 = v4;
  v482 = v5;
  v483 = v6;
  v480 = type metadata accessor for UserRequest();
  v481 = &type metadata for NSecTimestamp;
  v482 = v7;
  v483 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
  v425 = swift_getTupleTypeMetadata();
  sub_1CF9E6E58();
  v384 = swift_getTupleTypeMetadata2();
  v383 = sub_1CF9E75D8();
  v370 = *(v383 - 8);
  v37 = *(v370 + 64);
  MEMORY[0x1EEE9AC00](v383);
  v382 = &v366 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v381 = &v366 - v40;
  v41 = v5;
  v42 = swift_getAssociatedTypeWitness();
  v386 = *(v42 - 8);
  v43 = *(v386 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v432 = &v366 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v385 = &v366 - v46;
  v480 = v3;
  v481 = v4;
  v482 = v41;
  v483 = v6;
  v480 = type metadata accessor for UserRequest();
  v481 = &type metadata for MaterializationRequestOptions;
  v396 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  v482 = v396;
  v483 = v7;
  v484 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  v47 = swift_getTupleTypeMetadata();
  v48 = *(v47 - 8);
  v49 = v48[8];
  MEMORY[0x1EEE9AC00](v47);
  v423 = &v366 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v422 = &v366 - v52;
  v446 = sub_1CF9E75D8();
  v459 = *(v446 - 1);
  v53 = *(v459 + 64);
  MEMORY[0x1EEE9AC00](v446);
  v454 = &v366 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v453 = (&v366 - v56);
  MEMORY[0x1EEE9AC00](v57);
  v445 = (&v366 - v58);
  v480 = v4;
  v481 = v3;
  v482 = v6;
  v483 = v41;
  v464 = v41;
  v480 = type metadata accessor for UserRequest();
  v481 = &type metadata for NSecTimestamp;
  v482 = v7;
  v397 = v7;
  v483 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
  v431 = swift_getTupleTypeMetadata();
  sub_1CF9E6E58();
  v433 = v42;
  v390 = swift_getTupleTypeMetadata2();
  v389 = sub_1CF9E75D8();
  v372 = *(v389 - 8);
  v59 = *(v372 + 64);
  MEMORY[0x1EEE9AC00](v389);
  v388 = &v366 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v387 = &v366 - v62;
  v480 = v3;
  v481 = v4;
  v465 = v4;
  v482 = v41;
  v483 = v6;
  v463 = v6;
  v63 = type metadata accessor for ConcreteDatabase.MaterializationRequest();
  v64 = *(v63 - 8);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v448 = &v366 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v392 = &v366 - v68;
  v69 = *(v458 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v414 = &v366 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v426 = &v366 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v447 = &v366 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v410 = &v366 - v78;
  v411 = v79;
  v80 = swift_getTupleTypeMetadata2();
  v400 = sub_1CF9E75D8();
  v81 = *(v400 - 8);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v400);
  v402 = &v366 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v401 = &v366 - v85;
  v86 = qword_1EDEBBC70;
  swift_beginAccess();
  v374 = a2;
  v87 = *(a2 + v86);
  v88 = v423;
  v89 = *(v87 + 64);
  v380 = v87 + 64;
  v90 = 1 << *(v87 + 32);
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  else
  {
    v91 = -1;
  }

  v92 = v91 & v89;
  v379 = (v90 + 63) >> 6;
  v403 = v80;
  v93 = v80 - 8;
  v94 = v3;
  v399 = v93;
  v404 = v69 + 16;
  v391 = v64 + 16;
  v412 = (v69 + 32);
  v409 = (v64 + 32);
  v398 = (v81 + 32);
  v461 = (v48 + 7);
  v429 = (v48 + 2);
  v460 = (v48 + 6);
  v444 = (v459 + 32);
  v440 = 0x80000001CFA45580;
  v439 = 0x80000001CFA455B0;
  v438 = 0x80000001CFA455D0;
  v430 = v48;
  v437 = (v48 + 1);
  v405 = v69;
  v406 = (v69 + 8);
  v393 = v64;
  v395 = (v64 + 8);
  v394 = v87;

  v95 = 0;
  v467 = v3;
  while (1)
  {
    if (!v92)
    {
      if (v379 <= v95 + 1)
      {
        v98 = v95 + 1;
      }

      else
      {
        v98 = v379;
      }

      v99 = v452;
      v97 = v454;
      v100 = v403;
      v101 = v402;
      v102 = v401;
      while (1)
      {
        v96 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          break;
        }

        if (v96 >= v379)
        {
          v407 = v98 - 1;
          v408 = 0;
          v113 = 1;
          goto LABEL_16;
        }

        v92 = *(v380 + 8 * v96);
        ++v95;
        if (v92)
        {
          goto LABEL_15;
        }
      }

LABEL_167:
      __break(1u);
      goto LABEL_168;
    }

    v96 = v95;
    v97 = v454;
LABEL_15:
    v408 = (v92 - 1) & v92;
    v103 = __clz(__rbit64(v92)) | (v96 << 6);
    v104 = v394;
    v105 = v405;
    v106 = v458;
    (*(v405 + 16))(v410, *(v394 + 48) + *(v405 + 72) * v103, v458);
    v107 = v393;
    v108 = *(v104 + 56) + *(v393 + 72) * v103;
    v109 = v392;
    v110 = v411;
    (*(v393 + 16))(v392, v108, v411);
    v100 = v403;
    v459 = *(v403 + 48);
    v111 = *(v105 + 32);
    v112 = v402;
    v111(v402, v410, v106);
    (*(v107 + 32))(&v112[v459], v109, v110);
    v101 = v112;
    v113 = 0;
    v407 = v96;
    v99 = v452;
    v88 = v423;
    v102 = v401;
    v94 = v467;
LABEL_16:
    v114 = *(v100 - 8);
    (*(v114 + 56))(v101, v113, 1, v100);
    (*v398)(v102, v101, v400);
    if ((*(v114 + 48))(v102, 1, v100) == 1)
    {
      goto LABEL_54;
    }

    v115 = *(v100 + 48);
    (*v412)(v447, v102, v458);
    v116 = &v102[v115];
    v117 = v448;
    v118 = v411;
    (*v409)(v448, v116, v411);
    v119 = *&v117[*(v118 + 56)];
    v480 = v94;
    v481 = v465;
    v482 = v464;
    v483 = v463;
    v480 = type metadata accessor for UserRequest();
    v481 = &type metadata for MaterializationRequestOptions;
    v482 = v396;
    v483 = v397;
    v484 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
    swift_getTupleTypeMetadata();
    v120 = nullsub_1(v119);
    v121 = *(v120 + 64);
    v421 = v120 + 64;
    v122 = 1 << *(v120 + 32);
    v123 = v122 < 64 ? ~(-1 << v122) : -1;
    v99 = v123 & v121;
    v420 = (v122 + 63) >> 6;
    v434 = v120;

    v124 = 0;
    if (!v99)
    {
      break;
    }

    while (1)
    {
      v125 = v124;
      v94 = v467;
LABEL_29:
      v127 = __clz(__rbit64(v99));
      v99 &= v99 - 1;
      (v430[2])(v97, *(v434 + 56) + v430[9] * (v127 | (v125 << 6)), v47);
      v128 = 0;
      v459 = v125;
LABEL_30:
      v129 = *v461;
      v130 = 1;
      (*v461)(v97, v128, 1, v47);
      v131 = *v460;
      if ((*v460)(v97, 1, v47) != 1)
      {
        *&v456 = v129;
        v132 = *(v47 + 80);
        v441 = *(v47 + 96);
        *&v457 = v131;
        v133 = v454;
        v443 = *v454;
        v442 = *(v454 + 16);
        v134 = sub_1CF9E6448();
        v135 = *(*(v134 - 8) + 32);
        v136 = v422;
        v135(&v422[v132], v133 + v132, v134);
        v137 = swift_allocObject();
        *(v137 + 16) = *(v133 + v441);
        v138 = *(v47 + 80);
        v139 = v453;
        v140 = (v453 + *(v47 + 96));
        *v453 = v443;
        *(v139 + 2) = v442;
        v141 = &v136[v132];
        v129 = v456;
        v135(v139 + v138, v141, v134);
        v94 = v467;
        v130 = 0;
        *v140 = sub_1CF485B60;
        v140[1] = v137;
        v131 = v457;
        v88 = v423;
      }

      v142 = v453;
      v129(v453, v130, 1, v47);
      v143 = v445;
      (*v444)(v445, v142, v446);
      if (v131(v143, 1, v47) == 1)
      {
        break;
      }

      v144 = v143[2];
      v145 = *(v47 + 80);
      v146 = *(v47 + 96);
      v456 = *v143;
      *v88 = v456;
      *(v88 + 2) = v144;
      v147 = sub_1CF9E6448();
      v148 = *(*(v147 - 8) + 32);
      v457 = *(v143 + v146);
      v148(&v88[v145], v143 + v145, v147);
      *&v88[v146] = v457;
      v149 = v47;
      v150 = v466[3];
      *&v457 = v466[4];
      __swift_project_boxed_opaque_existential_1(v466, v150);
      v478 = 0;
      v479 = 0xE000000000000000;
      v151 = v464;
      v152 = v94;
      v153 = *(swift_getAssociatedConformanceWitness() + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      v154 = *v448;
      v155 = 0xD000000000000016;
      if (v154 != 3)
      {
        v155 = 0xD000000000000022;
      }

      v156 = v440;
      if (v154 == 3)
      {
        v156 = v439;
      }

      if (v154 == 2)
      {
        v155 = 0xD000000000000013;
        v156 = v438;
      }

      v157 = 0x7463697665;
      if (!*v448)
      {
        v157 = 0x6C6169726574616DLL;
      }

      v158 = 0xE500000000000000;
      if (!*v448)
      {
        v158 = 0xEB00000000657A69;
      }

      if (*v448 <= 1u)
      {
        v159 = v157;
      }

      else
      {
        v159 = v155;
      }

      if (*v448 <= 1u)
      {
        v160 = v158;
      }

      else
      {
        v160 = v156;
      }

      MEMORY[0x1D3868CC0](v159, v160);

      MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
      v476 = v456;
      v480 = v152;
      v481 = v465;
      v482 = v151;
      v483 = v463;
      type metadata accessor for UserRequest();
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      sub_1CF4FB2BC(v478, v479, v150, v457);

      (*v437)(v88, v149);
      v124 = v459;
      v47 = v149;
      v97 = v454;
      if (!v99)
      {
        goto LABEL_22;
      }
    }

    (*v406)(v447, v458);

    (*v395)(v448, v411);
    v95 = v407;
    v92 = v408;
  }

LABEL_22:
  if (v420 <= v124 + 1)
  {
    v126 = v124 + 1;
  }

  else
  {
    v126 = v420;
  }

  v94 = v467;
  while (1)
  {
    v125 = v124 + 1;
    if (__OFADD__(v124, 1))
    {
      break;
    }

    if (v125 >= v420)
    {
      v459 = v126 - 1;
      v99 = 0;
      v128 = 1;
      goto LABEL_30;
    }

    v99 = *(v421 + 8 * v125);
    v124 = (v124 + 1);
    if (v99)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_54:

  v161 = qword_1EC4EBD70;
  v162 = v374;
  swift_beginAccess();
  v163 = *(v162 + v161);
  v164 = *(v163 + 64);
  v430 = (v163 + 64);
  v165 = 1 << *(v163 + 32);
  v166 = -1;
  if (v165 < 64)
  {
    v166 = ~(-1 << v165);
  }

  v167 = v166 & v164;
  v429 = (v165 + 63) >> 6;
  v440 = v390 - 8;
  v434 = v386 + 16;
  v441 = v386 + 32;
  v439 = (v372 + 32);
  v445 = (v419 + 16);
  v444 = (v419 + 32);
  v461 = (v419 + 56);
  v460 = (v419 + 48);
  v448 = (v373 + 32);
  v454 = "+ processing requests";
  v446 = (v419 + 8);
  v438 = (v386 + 8);
  v437 = v163;

  v168 = 0;
LABEL_58:
  v169 = v417;
  if (!v167)
  {
    if (v429 <= v168 + 1)
    {
      v171 = v168 + 1;
    }

    else
    {
      v171 = v429;
    }

    v172 = v171 - 1;
    while (1)
    {
      v170 = v168 + 1;
      if (__OFADD__(v168, 1))
      {
        break;
      }

      if (v170 >= v429)
      {
        v181 = v390;
        v183 = *(v390 - 8);
        v224 = v388;
        (*(v183 + 56))(v388, 1, 1, v390);
        v184 = v224;
        *&v443 = 0;
        goto LABEL_68;
      }

      v167 = v430[v170];
      ++v168;
      if (v167)
      {
        goto LABEL_67;
      }
    }

LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v170 = v168;
LABEL_67:
  *&v443 = (v167 - 1) & v167;
  v173 = __clz(__rbit64(v167)) | (v170 << 6);
  v174 = v437;
  v175 = v386;
  v176 = v385;
  v177 = v433;
  (*(v386 + 16))(v385, v437[6] + *(v386 + 72) * v173, v433);
  v178 = *(v174[7] + v173);
  v179 = *(v390 + 48);
  v180 = *(v175 + 32);
  v181 = v390;
  v182 = v388;
  v180(v388, v176, v177);
  *&v182[v179] = v178;
  v183 = *(v181 - 8);
  (*(v183 + 56))(v182, 0, 1, v181);

  v172 = v170;
  v184 = v182;
LABEL_68:
  v185 = v387;
  (*v439)(v387, v184, v389);
  if ((*(v183 + 48))(v185, 1, v181) != 1)
  {
    v442 = v172;
    v186 = *&v185[*(v181 + 48)];
    (*v441)(v432, v185, v433);
    v187 = 0;
    v453 = v186;
    while (1)
    {
      if (v187 == sub_1CF9E6DF8())
      {
        v459 = v187;
        v188 = 1;
        v189 = v466;
      }

      else
      {
        v190 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        v189 = v466;
        if (v190)
        {
          v191 = v418;
          (*(v419 + 16))(v418, v186 + ((*(v419 + 80) + 32) & ~*(v419 + 80)) + *(v419 + 72) * v187, v99);
        }

        else
        {
          result = sub_1CF9E7998();
          if (v368 != 8)
          {
            goto LABEL_175;
          }

          v480 = result;
          v191 = v418;
          (*v445)(v418, &v480, v99);
          swift_unknownObjectRelease();
        }

        (*v444)(v455, v191, v99);
        v192 = __OFADD__(v187, 1);
        v193 = (v187 + 1);
        if (v192)
        {
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          sub_1CF9E7998();
          __break(1u);
          goto LABEL_166;
        }

        v459 = v193;
        v188 = 0;
      }

      v194 = *v461;
      v195 = 1;
      v196 = v455;
      (*v461)(v455, v188, 1, v99);
      v197 = *v460;
      if ((*v460)(v196, 1, v99) != 1)
      {
        v198 = *(v99 + 64);
        v447 = *(v99 + 80);
        v199 = v455;
        v200 = v455[1];
        *&v457 = *v455;
        *&v456 = v200;
        v201 = sub_1CF9E6448();
        v202 = *(*(v201 - 8) + 32);
        v203 = v449;
        v202(&v449[v198], &v199[v198], v201);
        v204 = swift_allocObject();
        *(v204 + 16) = *&v199[v447];
        v205 = *(v452 + 64);
        v206 = v451;
        v207 = &v451[*(v452 + 80)];
        v208 = v456;
        *v451 = v457;
        *(v206 + 1) = v208;
        v202(&v206[v205], &v203[v198], v201);
        v99 = v452;
        v189 = v466;
        v195 = 0;
        *v207 = sub_1CF485B44;
        v207[1] = v204;
      }

      v209 = v451;
      v194(v451, v195, 1, v99);
      v210 = v427;
      (*v448)(v427, v209, v428);
      if (v197(v210, 1, v99) == 1)
      {
        (*v438)(v432, v433);

        v168 = v442;
        v167 = v443;
        goto LABEL_58;
      }

      v211 = v210;
      v212 = *(v99 + 64);
      v213 = *(v99 + 80);
      v457 = *v211;
      v214 = v189;
      v215 = v449;
      *v449 = v457;
      v216 = sub_1CF9E6448();
      v217 = *(*(v216 - 8) + 32);
      v456 = *(v211 + v213);
      v217(&v215[v212], v211 + v212, v216);
      *&v215[v213] = v456;
      v219 = v214[3];
      v218 = v214[4];
      __swift_project_boxed_opaque_existential_1(v214, v219);
      v480 = 0;
      v481 = 0xE000000000000000;
      sub_1CF9E7948();
      v476 = v480;
      v477 = v481;
      v220 = v463;
      v221 = v465;
      v222 = *(swift_getAssociatedConformanceWitness() + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0xD000000000000012, v454 | 0x8000000000000000);
      v474 = v457;
      v480 = v221;
      v481 = v467;
      v482 = v220;
      v483 = v464;
      type metadata accessor for UserRequest();
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      sub_1CF4FB2BC(v476, v477, v219, v218);

      (*v446)(v215, v99);
      v186 = v453;
      v187 = v459;
    }
  }

  v225 = qword_1EC4EBD78;
  v226 = v374;
  swift_beginAccess();
  v227 = *(v226 + v225);
  v228 = *(v227 + 64);
  v442 = v227 + 64;
  v229 = 1 << *(v227 + 32);
  v230 = -1;
  if (v229 < 64)
  {
    v230 = ~(-1 << v229);
  }

  v231 = v230 & v228;
  v441 = (v229 + 63) >> 6;
  v445 = (v384 - 8);
  v444 = (v370 + 32);
  v449 = (v416 + 16);
  v448 = (v416 + 32);
  v461 = (v416 + 56);
  v460 = (v416 + 48);
  v453 = (v371 + 32);
  v451 = (v416 + 8);
  *&v443 = v227;

  v232 = 0;
  while (v231)
  {
    v233 = v232;
LABEL_96:
    v447 = (v231 - 1) & v231;
    v236 = __clz(__rbit64(v231)) | (v233 << 6);
    v237 = v443;
    v238 = v405;
    v239 = v410;
    v240 = v458;
    (*(v405 + 16))(v410, *(v443 + 48) + *(v405 + 72) * v236, v458);
    v241 = *(*(v237 + 56) + 8 * v236);
    v242 = v384;
    v243 = *(v384 + 48);
    v244 = *(v238 + 32);
    v245 = v382;
    v244(v382, v239, v240);
    *&v245[v243] = v241;
    v246 = *(v242 - 8);
    (*(v246 + 56))(v245, 0, 1, v242);

    v235 = v233;
    v247 = v245;
    v248 = v242;
LABEL_97:
    v249 = v381;
    (*v444)(v381, v247, v383);
    v250 = (*(v246 + 48))(v249, 1, v248);
    v251 = v462;
    if (v250 == 1)
    {

      v286 = qword_1EC4EBD80;
      v287 = v374;
      swift_beginAccess();
      v288 = *(v287 + v286);
      v289 = v288 + 64;
      v290 = 1 << v288[32];
      v291 = -1;
      if (v290 < 64)
      {
        v291 = ~(-1 << v290);
      }

      v292 = v291 & *(v288 + 8);
      v448 = ((v290 + 63) >> 6);
      v452 = TupleTypeMetadata2 - 8;
      v451 = (v369 + 32);
      v449 = v288;

      v293 = 0;
      v450 = v289;
      while (1)
      {
        if (!v292)
        {
          if (v448 <= (v293 + 1))
          {
            v295 = (v293 + 1);
          }

          else
          {
            v295 = v448;
          }

          v296 = v295 - 1;
          while (1)
          {
            v294 = (v293 + 1);
            if (__OFADD__(v293, 1))
            {
              goto LABEL_170;
            }

            if (v294 >= v448)
            {
              v303 = TupleTypeMetadata2;
              v306 = *(TupleTypeMetadata2 - 8);
              v305 = v376;
              (*(v306 + 56))(v376, 1, 1, TupleTypeMetadata2);
              v453 = 0;
              v454 = v296;
              goto LABEL_127;
            }

            v292 = v289[v294];
            ++v293;
            if (v292)
            {
              v454 = v294;
              goto LABEL_126;
            }
          }
        }

        v454 = v293;
        v294 = v293;
LABEL_126:
        v453 = ((v292 - 1) & v292);
        v297 = __clz(__rbit64(v292)) | (v294 << 6);
        v298 = v449;
        v299 = v405;
        v300 = v410;
        v301 = v458;
        (*(v405 + 16))(v410, *(v449 + 6) + *(v405 + 72) * v297, v458);
        v302 = *(*(v298 + 7) + 8 * v297);
        v303 = TupleTypeMetadata2;
        v304 = *(TupleTypeMetadata2 + 48);
        v305 = v376;
        (*(v299 + 32))(v376, v300, v301);
        *&v305[v304] = v302;
        v306 = *(v303 - 8);
        (*(v306 + 56))(v305, 0, 1, v303);

LABEL_127:
        v307 = v375;
        (*v451)(v375, v305, v377);
        if ((*(v306 + 48))(v307, 1, v303) == 1)
        {
          break;
        }

        v308 = *&v307[*(v303 + 48)];
        (*v412)(v414, v307, v458);
        if (sub_1CF9E6DF8())
        {
          v480 = v467;
          v481 = v465;
          v482 = v464;
          v483 = v463;
          v455 = type metadata accessor for Job();
          v309 = 0;
          v310 = (v308 + 64);
          *&v456 = v308;
          while (1)
          {
            v311 = sub_1CF9E6DC8();
            sub_1CF9E6D78();
            if ((v311 & 1) == 0)
            {
              goto LABEL_165;
            }

            if (__OFADD__(v309, 1))
            {
              break;
            }

            v312 = *v310;
            v313 = *(v310 - 4);
            v314 = *(v310 - 24);
            v462 = v309 + 1;
            v315 = sub_1CF05194C(v314);
            *&v457 = (*(v315 + 176))();
            v317 = v316;
            v460 = v466[3];
            v461 = v466[4];
            v459 = __swift_project_boxed_opaque_existential_1(v466, v460);
            v472 = 0;
            v473 = 0xE000000000000000;
            sub_1CEFD09A0(v313);
            v318 = v464;
            v319 = v467;
            v320 = *(swift_getAssociatedConformanceWitness() + 16);

            sub_1CF9E7FE8();
            MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
            MEMORY[0x1D3868CC0](v457, v317);

            MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
            v470 = v313;
            v480 = v319;
            v481 = v465;
            v482 = v318;
            v483 = v463;
            type metadata accessor for UserRequest();
            swift_getWitnessTable();
            sub_1CF9E7FE8();
            sub_1CF4FB2BC(v472, v473, v460, v461);

            sub_1CEFD0A98(v313);

            ++v309;
            v310 += 5;
            if (v462 == sub_1CF9E6DF8())
            {
              goto LABEL_115;
            }
          }

LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

LABEL_115:

        (*v406)(v414, v458);
        v289 = v450;
        v293 = v454;
        v292 = v453;
      }

      v321 = qword_1EDEBBC90;
      v322 = v374;
      swift_beginAccess();
      v323 = *(v322 + v321);

      v480 = v467;
      v481 = v465;
      v482 = v464;
      v483 = v463;
      v324 = type metadata accessor for UserRequest();
      type metadata accessor for FPStabilizationMode(255);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
      v464 = v324;
      swift_getTupleTypeMetadata3();
      if (!sub_1CF9E6DF8())
      {
LABEL_140:

        v331 = qword_1EDEBBCC0;
        v332 = v374;
        swift_beginAccess();
        v333 = *(v332 + v331);
        v336 = *(v333 + 56);
        v335 = v333 + 56;
        v334 = v336;
        v337 = 1 << *(*(v332 + v331) + 32);
        v338 = -1;
        if (v337 < 64)
        {
          v338 = ~(-1 << v337);
        }

        v339 = v338 & v334;
        v340 = (v337 + 63) >> 6;
        v465 = *(v332 + v331);

        v341 = 0;
        while (v339)
        {
          v342 = v341;
LABEL_148:
          v343 = __clz(__rbit64(v339));
          v339 &= v339 - 1;
          v344 = *(v465[3].Kind + ((v342 << 9) | (8 * v343)));
          v345 = v466[3];
          v467 = v466[4];
          __swift_project_boxed_opaque_existential_1(v466, v345);
          v470 = 0;
          v471 = 0xE000000000000000;
          sub_1CEFD09A0(v344);
          sub_1CF9E7948();
          MEMORY[0x1D3868CC0](0x6972726162205346, 0xEF20726F66207265);
          v468 = v344;
          swift_getWitnessTable();
          sub_1CF9E7FE8();
          sub_1CF4FB2BC(v470, v471, v345, v467);

          sub_1CEFD0A98(v344);
        }

        while (1)
        {
          v342 = v341 + 1;
          if (__OFADD__(v341, 1))
          {
            goto LABEL_171;
          }

          if (v342 >= v340)
          {

            v346 = qword_1EDEBBCC8;
            v347 = v374;
            swift_beginAccess();
            v348 = *(v347 + v346);
            v351 = *(v348 + 56);
            v350 = v348 + 56;
            v349 = v351;
            v352 = 1 << *(*(v347 + v346) + 32);
            v353 = -1;
            if (v352 < 64)
            {
              v353 = ~(-1 << v352);
            }

            v354 = v353 & v349;
            v355 = (v352 + 63) >> 6;
            v465 = *(v347 + v346);

            v356 = 0;
            while (v354)
            {
              v357 = v356;
LABEL_158:
              v358 = __clz(__rbit64(v354));
              v354 &= v354 - 1;
              v359 = *(v465[3].Kind + ((v357 << 9) | (8 * v358)));
              v360 = v466[3];
              v467 = v466[4];
              __swift_project_boxed_opaque_existential_1(v466, v360);
              v468 = 0;
              v469 = 0xE000000000000000;
              sub_1CEFD09A0(v359);
              sub_1CF9E7948();
              MEMORY[0x1D3868CC0](0x6972726162205046, 0xEF20726F66207265);
              v485 = v359;
              swift_getWitnessTable();
              sub_1CF9E7FE8();
              sub_1CF4FB2BC(v468, v469, v360, v467);

              sub_1CEFD0A98(v359);
            }

            while (1)
            {
              v357 = v356 + 1;
              if (__OFADD__(v356, 1))
              {
                goto LABEL_172;
              }

              if (v357 >= v355)
              {

                v361 = *(v374 + 32);
                v362 = *(**(v361 + 16) + 856);

                v363 = v466;
                v362(v466);

                if ((*(v361 + 33) & 1) == 0)
                {
                  v364 = v363[3];
                  v365 = v363[4];
                  __swift_project_boxed_opaque_existential_1(v363, v364);
                  return sub_1CF4FB2BC(0xD000000000000036, 0x80000001CFA46C50, v364, v365);
                }

                return result;
              }

              v354 = *(v350 + 8 * v357);
              ++v356;
              if (v354)
              {
                v356 = v357;
                goto LABEL_158;
              }
            }
          }

          v339 = *(v335 + 8 * v342);
          ++v341;
          if (v339)
          {
            v341 = v342;
            goto LABEL_148;
          }
        }
      }

      v325 = 0;
      v463 = ": propagation for ";
      v326 = 32;
      while (1)
      {
        v327 = sub_1CF9E6DC8();
        result = sub_1CF9E6D78();
        if ((v327 & 1) == 0)
        {
          goto LABEL_173;
        }

        v328 = v325 + 1;
        if (__OFADD__(v325, 1))
        {
          goto LABEL_174;
        }

        v329 = *(v323 + v326);
        v330 = v466[3];
        v467 = v466[4];
        v465 = __swift_project_boxed_opaque_existential_1(v466, v330);
        v480 = 0;
        v481 = 0xE000000000000000;
        sub_1CEFD09A0(v329);
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0xD000000000000012, v463 | 0x8000000000000000);
        v470 = v329;
        swift_getWitnessTable();
        sub_1CF9E7FE8();
        sub_1CF4FB2BC(v480, v481, v330, v467);

        sub_1CEFD0A98(v329);
        ++v325;
        v326 += 32;
        if (v328 == sub_1CF9E6DF8())
        {
          goto LABEL_140;
        }
      }
    }

    v446 = v235;
    v252 = *&v249[*(v248 + 48)];
    (*v412)(v426, v249, v458);
    v253 = 0;
    v455 = v252;
    while (1)
    {
      if (v253 == sub_1CF9E6DF8())
      {
        v459 = v253;
        v254 = 1;
      }

      else
      {
        v255 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v255)
        {
          v256 = v415;
          (*(v416 + 16))(v415, v252 + ((*(v416 + 80) + 32) & ~*(v416 + 80)) + *(v416 + 72) * v253, v251);
        }

        else
        {
          result = sub_1CF9E7998();
          if (v367 != 8)
          {
            goto LABEL_176;
          }

          v480 = result;
          v256 = v415;
          (*v449)(v415, &v480, v251);
          swift_unknownObjectRelease();
        }

        (*v448)(v450, v256, v251);
        v192 = __OFADD__(v253, 1);
        v257 = (v253 + 1);
        if (v192)
        {
          goto LABEL_164;
        }

        v459 = v257;
        v254 = 0;
      }

      v258 = *v461;
      v259 = 1;
      v260 = v450;
      (*v461)(v450, v254, 1, v251);
      v261 = *v460;
      if ((*v460)(v260, 1, v251) != 1)
      {
        v262 = *(v251 + 64);
        v452 = *(v251 + 80);
        v263 = v450;
        v264 = v450[1];
        *&v457 = *v450;
        *&v456 = v264;
        v265 = sub_1CF9E6448();
        v266 = *(*(v265 - 8) + 32);
        v267 = v435;
        v266(v435 + v262, &v263[v262], v265);
        v268 = swift_allocObject();
        *(v268 + 16) = *&v263[v452];
        v269 = *(v462 + 64);
        v270 = v436;
        v271 = &v436[*(v462 + 80)];
        v272 = v456;
        *v436 = v457;
        *(v270 + 1) = v272;
        v273 = v267 + v262;
        v169 = v417;
        v266(&v270[v269], v273, v265);
        v259 = 0;
        *v271 = sub_1CF485B44;
        v271[1] = v268;
        v251 = v462;
      }

      v274 = v436;
      v258(v436, v259, 1, v251);
      (*v453)(v169, v274, v424);
      if (v261(v169, 1, v251) == 1)
      {
        break;
      }

      v275 = *(v251 + 64);
      v276 = *(v462 + 80);
      v457 = *v169;
      v277 = v435;
      *v435 = v457;
      v278 = sub_1CF9E6448();
      v279 = *(*(v278 - 8) + 32);
      v456 = *(v169 + v276);
      v279(&v277[v275], v169 + v275, v278);
      *&v277[v276] = v456;
      v280 = v466[3];
      v281 = v466[4];
      __swift_project_boxed_opaque_existential_1(v466, v280);
      v480 = 0;
      v481 = 0xE000000000000000;
      sub_1CF9E7948();
      v474 = v480;
      v475 = v481;
      v282 = v464;
      v283 = v467;
      v284 = *(swift_getAssociatedConformanceWitness() + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0xD000000000000012, v454 | 0x8000000000000000);
      v472 = v457;
      v480 = v283;
      v481 = v465;
      v482 = v282;
      v483 = v463;
      type metadata accessor for UserRequest();
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      sub_1CF4FB2BC(v474, v475, v280, v281);
      v251 = v462;

      (*v451)(v277, v251);
      v252 = v455;
      v253 = v459;
    }

    (*v406)(v426, v458);

    v232 = v446;
    v231 = v447;
  }

  if (v441 <= (v232 + 1))
  {
    v234 = (v232 + 1);
  }

  else
  {
    v234 = v441;
  }

  v235 = (v234 - 1);
  while (1)
  {
    v233 = (v232 + 1);
    if (__OFADD__(v232, 1))
    {
      break;
    }

    if (v233 >= v441)
    {
      v248 = v384;
      v246 = *(v384 - 8);
      v285 = v382;
      (*(v246 + 56))(v382, 1, 1, v384);
      v247 = v285;
      v447 = 0;
      goto LABEL_97;
    }

    v231 = *(v442 + 8 * v233);
    ++v232;
    if (v231)
    {
      goto LABEL_96;
    }
  }

LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  result = sub_1CF9E7998();
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
  return result;
}

void sub_1CF3DCD30(uint64_t a1, void *a2, int a3, int a4, void (*a5)(uint64_t (*)(), char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v71 = a4;
  v70 = a3;
  v16 = *v8;
  v68 = sub_1CF9E6118();
  v67 = *(v68 - 8);
  v17 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v18 = v9[6];
  v19 = v16[330];
  v20 = v16[331];
  v21 = v16[332];
  v66 = v16[329];
  v86 = v66;
  v87 = v19;
  v74 = v19;
  v72 = v20;
  v88 = v20;
  v89 = v21;
  v73 = v21;
  type metadata accessor for SQLSyncStateTable();
  swift_dynamicCastClassUnconditional();
  sub_1CF341B50(a1, a2, a7, a8);
  v82 = a7;
  v83 = a8;
  v84 = v9;
  v85 = a2;
  v69 = a6;
  a5(sub_1CF485234, v81);
  v22 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  sub_1CF4FB2BC(0xD000000000000013, 0x80000001CFA46440, v22, v23);
  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  v77 = a7;
  v78 = a8;
  v79 = v9;
  v80 = a1;
  v75 = a1;
  v26 = sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF485240, v76, v24, MEMORY[0x1E69E7CA8] + 8, v25);
  v67 = 0;
  v27 = MEMORY[0x1EEE9AC00](v26);
  *(&v65 - 4) = a7;
  *(&v65 - 3) = a8;
  v63 = v9;
  v64 = a2;
  v28 = v69;
  v29 = a5;
  (a5)(sub_1CF485264, v27);
  sub_1CF4818C0();

  LOBYTE(a1) = v70;
  v30 = v75;
  sub_1CF217B18(v75, a2, v70 & 1, a7, a8);

  v31 = a2[3];
  v32 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v31);
  sub_1CF4FB2BC(0, 0xE000000000000000, v31, v32);
  sub_1CF478C28();

  v68 = v29;
  sub_1CF4D02A8(0, v30, a2, v29, v28, a7, a8);

  sub_1CF47FA34();

  sub_1CF4878A0(v30, a2, a1 & 1, a7, a8);

  v33 = *(**(v9[4] + 16) + 936);

  v33(a2);

  if (v71)
  {
    v34 = a2[3];
    v35 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v34);
    sub_1CF4FB2BC(0x662065657274202BLL, 0xEA00000000003A73, v34, v35);
    v36 = a2[3];
    v37 = a2[4];
    v38 = __swift_project_boxed_opaque_existential_1(a2, v36);
    MEMORY[0x1EEE9AC00](v38);
    *(&v65 - 4) = a7;
    *(&v65 - 3) = a8;
    v63 = v9;
    v39 = v67;
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF4852F8, (&v65 - 6), v36, MEMORY[0x1E69E7CA8] + 8, v37);
    v40 = v73;
    v41 = v72;
  }

  else
  {
    v40 = v73;
    v41 = v72;
    v39 = v67;
  }

  v42 = v9 + qword_1EDEBBC20;
  os_unfair_lock_lock((v9 + qword_1EDEBBC20));
  v43 = v40;
  v44 = v66;
  sub_1CF3DECAC((v42 + 8), a2, v66, v74, a7, v41, v43, a8);
  type metadata accessor for FileTreeChangeAggregator();
  swift_getAssociatedTypeWitness();
  v45 = *(swift_getAssociatedConformanceWitness() + 40);
  sub_1CF9E7068();
  sub_1CF9E6708();
  swift_getTupleTypeMetadata2();
  v46 = MEMORY[0x1E69E7CA8];
  j__os_unfair_lock_unlock(v42);
  v47 = a2[3];
  v48 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v47);
  sub_1CF4FB2BC(0, 0xE000000000000000, v47, v48);
  sub_1CF478C28();

  v49 = v75;
  sub_1CF4D02A8(1, v75, a2, v68, v69, a7, a8);

  sub_1CF47F85C();

  sub_1CF4878A0(v49, a2, v70 & 1, a7, a8);

  if (v71)
  {
    v50 = a2[3];
    v51 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v50);
    sub_1CF4FB2BC(0x662065657274202BLL, 0xEA00000000003A70, v50, v51);
    v52 = a2[3];
    v53 = a2[4];
    v54 = __swift_project_boxed_opaque_existential_1(a2, v52);
    MEMORY[0x1EEE9AC00](v54);
    *(&v65 - 4) = a7;
    *(&v65 - 3) = a8;
    v63 = v9;
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF4852AC, (&v65 - 6), v52, v46 + 8, v53);
  }

  v55 = v9 + qword_1EDEBBC28;
  os_unfair_lock_lock((v9 + qword_1EDEBBC28));
  sub_1CF3DF5DC((v55 + 8), a2, v44, v74, a7, v72, v73, a8);
  type metadata accessor for FileTreeChangeAggregator();
  j__os_unfair_lock_unlock(v55);
  if (v39)
  {
    __break(1u);
  }

  else
  {
    v56 = a2[3];
    v57 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v56);
    sub_1CF4FB2BC(0, 0xE000000000000000, v56, v57);
    v58 = a2[3];
    v59 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v58);
    sub_1CF4FB2BC(0xD000000000000027, 0x80000001CFA46460, v58, v59);
    v60 = a2[3];
    v61 = a2[4];
    v62 = __swift_project_boxed_opaque_existential_1(a2, v60);
    MEMORY[0x1EEE9AC00](v62);
    *(&v65 - 4) = a7;
    *(&v65 - 3) = a8;
    v63 = v9;
    v64 = v75;
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF48528C, (&v65 - 6), v60, v46 + 8, v61);
  }
}

unint64_t sub_1CF3DD7B8()
{
  result = qword_1EDEAD410;
  if (!qword_1EDEAD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD410);
  }

  return result;
}

unint64_t sub_1CF3DD810()
{
  result = qword_1EC4BFB08;
  if (!qword_1EC4BFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFB08);
  }

  return result;
}

uint64_t sub_1CF3DD864(char *a1, void *a2)
{
  v4 = objc_sync_enter(a1);
  if (v4)
  {
    goto LABEL_24;
  }

  v5 = a1[qword_1EDEADAA8];
  v6 = objc_sync_exit(a1);
  if (v6)
  {
    goto LABEL_25;
  }

  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  if (v5)
  {
    v51 = 0;
    sub_1CF4FB2BC(0xD000000000000012, 0x80000001CFA46D90, v7, v8);
    v9 = a2[3];
    v10 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v9);
    sub_1CF9E7948();

    v52 = 0x65686373202D2020;
    v53 = 0xEF203A72656C7564;
    v4 = objc_sync_enter(a1);
    if (!v4)
    {
      v11 = *&a1[qword_1EDEADB40];
      v6 = objc_sync_exit(a1);
      if (!v6)
      {
        v12 = [v11 description];
        v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v15 = v14;

        MEMORY[0x1D3868CC0](v13, v15);

        sub_1CF4FB2BC(v52, v53, v9, v10);

        v16 = a2[3];
        v17 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v16);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C06D0, &qword_1CFA05AE0);
        sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF484474, a1, v16, v18, v17);
        goto LABEL_8;
      }

LABEL_25:
      MEMORY[0x1EEE9AC00](v6);
      v50 = a1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v49, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

LABEL_24:
    MEMORY[0x1EEE9AC00](v4);
    v50 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v49, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF4FB2BC(0xD000000000000011, 0x80000001CFA46C90, v7, v8);
LABEL_8:
  v19 = a1[qword_1EDEBBCE0];
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  if (v19 == 1)
  {
    sub_1CF4FB2BC(0xD000000000000013, 0x80000001CFA46D70, v20, v21);
    v22 = a2[3];
    v23 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v22);
    sub_1CF9E7948();

    v52 = 0x65686373202D2020;
    v53 = 0xEF203A72656C7564;
    if (qword_1EDEACC50 != -1)
    {
      swift_once();
    }

    v24 = [qword_1EDEBBB28 description];
    v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v27 = v26;

    MEMORY[0x1D3868CC0](v25, v27);

    sub_1CF4FB2BC(v52, v53, v22, v23);
  }

  else
  {
    sub_1CF4FB2BC(0xD000000000000012, 0x80000001CFA46CB0, v20, v21);
  }

  v28 = *&a1[qword_1EDEBBC98];
  v29 = MEMORY[0x1E69E7CA8];
  if (v28)
  {
    v30 = a2[3];
    v31 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v30);

    sub_1CF4FB2BC(0xD00000000000001DLL, 0x80000001CFA46D50, v30, v31);
    v32 = a2[3];
    v33 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v32);
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF48444C, v28, v32, v29 + 8, v33);
  }

  v34 = *&a1[qword_1EDEBBC88];
  if (v34)
  {
    v35 = a2[3];
    v36 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v35);

    sub_1CF4FB2BC(0xD000000000000011, 0x80000001CFA46D30, v35, v36);
    v37 = a2[3];
    v38 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v37);
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF484424, v34, v37, v29 + 8, v38);
  }

  v39 = a1[qword_1EDEBBC48];
  v40 = a2[3];
  v41 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v40);
  if (v39 != 1)
  {
    return sub_1CF4FB2BC(0xD000000000000020, 0x80000001CFA46CD0, v40, v41);
  }

  sub_1CF4FB2BC(0xD000000000000021, 0x80000001CFA46D00, v40, v41);
  v42 = a2[3];
  v43 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v42);
  sub_1CF9E7948();

  v52 = 0x65686373202D2020;
  v53 = 0xEF203A72656C7564;
  if (qword_1EDEA5A98 != -1)
  {
    swift_once();
  }

  v44 = [qword_1EDEBB818 description];
  v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v47 = v46;

  MEMORY[0x1D3868CC0](v45, v47);

  sub_1CF4FB2BC(v52, v53, v42, v43);
}

uint64_t sub_1CF3DE008(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v57 = 0;
  v7 = sub_1CF04590C();
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v7)
  {
    sub_1CF4FB2BC(0xD000000000000012, 0x80000001CFA46D90, v8, v9);
    v10 = a2[3];
    v11 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v10);
    sub_1CF9E7948();

    v60 = 0x65686373202D2020;
    v61 = 0xEF203A72656C7564;
    v12 = sub_1CF5A0F38();
    v13 = [v12 description];
    v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v16 = v15;

    MEMORY[0x1D3868CC0](v14, v16);

    sub_1CF4FB2BC(0x65686373202D2020, 0xEF203A72656C7564, v10, v11);

    v17 = a2[3];
    v18 = a2[4];
    v19 = __swift_project_boxed_opaque_existential_1(a2, v17);
    MEMORY[0x1EEE9AC00](v19);
    v54 = a3;
    v55 = v59;
    v56 = a1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C06D0, &qword_1CFA05AE0);
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF4853EC, v53, v17, v20, v18);
  }

  else
  {
    sub_1CF4FB2BC(0xD000000000000011, 0x80000001CFA46C90, v8, v9);
  }

  v21 = *(a1 + qword_1EDEBBCE0);
  v22 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  v58 = a3;
  if (v21 == 1)
  {
    sub_1CF4FB2BC(0xD000000000000013, 0x80000001CFA46D70, v22, v23);
    v24 = a2[3];
    v25 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v24);
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_1CF9E7948();

    v60 = 0x65686373202D2020;
    v61 = 0xEF203A72656C7564;
    if (qword_1EDEACC50 != -1)
    {
      swift_once();
    }

    v26 = [qword_1EDEBBB28 description];
    v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v29 = v28;

    MEMORY[0x1D3868CC0](v27, v29);

    sub_1CF4FB2BC(v60, v61, v24, v25);
  }

  else
  {
    sub_1CF4FB2BC(0xD000000000000012, 0x80000001CFA46CB0, v22, v23);
  }

  v30 = *(a1 + qword_1EDEBBC98);
  v31 = MEMORY[0x1E69E7CA8];
  if (v30)
  {
    v32 = a2[3];
    v33 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v32);

    sub_1CF4FB2BC(0xD00000000000001DLL, 0x80000001CFA46D50, v32, v33);
    v34 = a2[3];
    v35 = a2[4];
    v36 = __swift_project_boxed_opaque_existential_1(a2, v34);
    MEMORY[0x1EEE9AC00](v36);
    v54 = v58;
    v55 = v59;
    v56 = v30;
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF4853C0, v53, v34, v31 + 8, v35);
  }

  v37 = *(a1 + qword_1EDEBBC88);
  if (v37)
  {
    v38 = a2[3];
    v39 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v38);

    sub_1CF4FB2BC(0xD000000000000011, 0x80000001CFA46D30, v38, v39);
    v40 = a2[3];
    v41 = a2[4];
    v42 = __swift_project_boxed_opaque_existential_1(a2, v40);
    MEMORY[0x1EEE9AC00](v42);
    v54 = v58;
    v55 = v59;
    v56 = v37;
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF485394, v53, v40, v31 + 8, v41);
  }

  v43 = *(a1 + qword_1EDEBBC48);
  v44 = a2[3];
  v45 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v44);
  if (v43 != 1)
  {
    return sub_1CF4FB2BC(0xD000000000000020, 0x80000001CFA46CD0, v44, v45);
  }

  sub_1CF4FB2BC(0xD000000000000021, 0x80000001CFA46D00, v44, v45);
  v46 = a2[3];
  v47 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v46);
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1CF9E7948();

  v60 = 0x65686373202D2020;
  v61 = 0xEF203A72656C7564;
  if (qword_1EDEA5A98 != -1)
  {
    swift_once();
  }

  v48 = [qword_1EDEBB818 description];
  v49 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v51 = v50;

  MEMORY[0x1D3868CC0](v49, v51);

  sub_1CF4FB2BC(v60, v61, v46, v47);
}

uint64_t sub_1CF3DE6FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v4 = *(a2 + qword_1EDEBBCB8);
  if (v4)
  {
    v5 = result;
    v6 = *(a2 + qword_1EDEBBCB8);

    sub_1CF973C0C(v5);
  }

  *a3 = v4 == 0;
  return result;
}

uint64_t sub_1CF3DE768(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  sub_1CF4FB2BC(0xD000000000000015, 0x80000001CFA46BF0, v4, v5);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF484408, a1, v6, MEMORY[0x1E69E7CA8] + 8, v7);
}

uint64_t sub_1CF3DE82C(void *a1, uint64_t a2, void *a3, int a4, uint64_t a5, void (*a6)(uint64_t *))
{
  v27 = a6;
  v7 = v6;
  v26 = a4;
  v31 = a1;
  v32 = a2;
  v9 = sub_1CF7D5474(a5, v6, a1, a2);
  if ([v9 next])
  {
    v10 = [v9 longAtIndex_];
  }

  else
  {

    v10 = 0;
  }

  v25 = 0;
  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  sub_1CF9E7948();

  v29 = 0x687370616E73202BLL;
  v30 = 0xEB0000000020746FLL;
  *(v7 + 32);
  v13 = sub_1CF9E6958();
  v15 = v14;

  MEMORY[0x1D3868CC0](v13, v15);

  MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
  v28 = v10;
  sub_1CF056E98();
  v16 = sub_1CF9E7718();
  MEMORY[0x1D3868CC0](v16, v17);

  MEMORY[0x1D3868CC0](0x73656972746E6520, 0xEA00000000003A29);
  sub_1CF4FB2BC(0x687370616E73202BLL, 0xEB0000000020746FLL, v11, v12);

  v18 = a3[3];
  v19 = a3[4];
  v20 = __swift_project_boxed_opaque_existential_1(a3, v18);
  MEMORY[0x1EEE9AC00](v20);
  v22[16] = v26 & 1;
  v23 = v7;
  v24 = &v31;
  return sub_1CF4FB38C(8224, 0xE200000000000000, v27, v22, v18, MEMORY[0x1E69E7CA8] + 8, v19);
}

uint64_t sub_1CF3DEAA4(void *a1, uint64_t a2)
{
  v3 = *(*(a2 + 32) + 16);
  (*(*v3 + 96))(&v8);
  v4 = v8;
  v5 = v9;

  v6 = sub_1CF38A928(a1, v4, v5);
  (*(*v3 + 104))(&v8, v6);
  sub_1CF38A928(a1, v8, v9);
}

uint64_t sub_1CF3DEB6C(uint64_t result, void *a2)
{
  v3 = result;
  if (*(*(result + 16) + 16))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(result + 32) == 2;
  }

  v6 = v4 && *(result + 65) == 0 && *(result + 64) == 0;
  if (!v6 || (*(result + 66) & 1) != 0 || *(*(result + 80) + 16) || *(*(result + 8) + 16))
  {
    v7 = a2[3];
    v8 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v7);
    sub_1CF4FB2BC(0x73746E657665202BLL, 0xEC0000003A736620, v7, v8);
    v9 = a2[3];
    v10 = a2[4];
    v11 = __swift_project_boxed_opaque_existential_1(a2, v9);
    MEMORY[0x1EEE9AC00](v11);
    v12[2] = v3;
    return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF483E50, v12, v9, MEMORY[0x1E69E7CA8] + 8, v10);
  }

  return result;
}

uint64_t sub_1CF3DECAC(__int128 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a1[3];
  v29 = a1[2];
  v30 = v16;
  v17 = a1[5];
  v31 = a1[4];
  v32 = v17;
  v18 = a1[1];
  v27 = *a1;
  v28 = v18;
  v19 = type metadata accessor for FileTreeChangeAggregator();
  result = sub_1CF5A08AC(v19);
  if ((result & 1) == 0)
  {
    v21 = a2[3];
    v22 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v21);
    sub_1CF4FB2BC(0x73746E657665202BLL, 0xEC0000003A736620, v21, v22);
    v23 = a2[3];
    v24 = a2[4];
    v25 = __swift_project_boxed_opaque_existential_1(a2, v23);
    MEMORY[0x1EEE9AC00](v25);
    v26[2] = a3;
    v26[3] = a4;
    v26[4] = a5;
    v26[5] = a6;
    v26[6] = a7;
    v26[7] = a8;
    v26[8] = a1;
    return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF48536C, v26, v23, MEMORY[0x1E69E7CA8] + 8, v24);
  }

  return result;
}

uint64_t sub_1CF3DEE0C(void *a1, _OWORD *a2)
{
  v3 = a2[3];
  v8[2] = a2[2];
  v8[3] = v3;
  v4 = a2[5];
  v8[4] = a2[4];
  v8[5] = v4;
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  sub_1CEFCCBDC(v8, &v7, &unk_1EC4C0680, &qword_1CFA05A88);
  sub_1CF3DEFA8(a1, sub_1CF483E6C, sub_1CF483E88);
  return sub_1CEFCCC44(v8, &unk_1EC4C0680, &qword_1CFA05A88);
}

uint64_t sub_1CF3DEECC(void *a1, _OWORD *a2)
{
  v3 = a2[3];
  v10[2] = a2[2];
  v10[3] = v3;
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  v6 = type metadata accessor for FileTreeChangeAggregator();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v9, v10, v6);
  sub_1CF5A09CC(a1, v6);
  return (*(v7 + 8))(v10, v6);
}

void *sub_1CF3DEFA8(void *result, void (*a2)(uint64_t *), void (*a3)(uint64_t *))
{
  v35 = a3;
  v5 = v3;
  v6 = result;
  v7 = *(v3 + 32);
  if (v7 != 2)
  {
    v8 = *(v3 + 48);
    v9 = *(v3 + 40);
    v10 = result[3];
    v11 = result[4];
    __swift_project_boxed_opaque_existential_1(result, v10);
    sub_1CF9E7948();

    v38 = 0x3A7465736572202BLL;
    v39 = 0xE900000000000020;
    v12 = sub_1CF953A9C(v9, v8 & 1);
    MEMORY[0x1D3868CC0](v12);

    MEMORY[0x1D3868CC0](0x6579616C6564202CLL, 0xEB00000000203A64);
    if (v7)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (v7)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v13, v14);

    sub_1CF4FB2BC(v38, v39, v10, v11);
  }

  v15 = *(v3 + 64);
  if (*(v3 + 64))
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v3 + 65) == 0;
  }

  if (!v16)
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    if (v15)
    {
      MEMORY[0x1D3868CC0](0x6B636F6C626E75, 0xE700000000000000);
      if (v15 == 2)
      {
        MEMORY[0x1D3868CC0](0x6472616373696428, 0xEB00000000296465);
      }
    }

    v17 = *(v3 + 65);
    if (*(v3 + 65))
    {
      if ((v39 & 0xF00000000000000) != 0)
      {
        MEMORY[0x1D3868CC0](44, 0xE100000000000000);
      }

      MEMORY[0x1D3868CC0](0x6E6163736572, 0xE600000000000000);
      if (v17 == 2)
      {
        MEMORY[0x1D3868CC0](0x6472616373696428, 0xEB00000000296465);
      }
    }

    v18 = v6[3];
    v19 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v18);
    v36 = 0x3A656C6469202BLL;
    v37 = 0xE700000000000000;
    MEMORY[0x1D3868CC0](v38, v39);

    sub_1CF4FB2BC(0x3A656C6469202BLL, 0xE700000000000000, v18, v19);
  }

  if (*(v3 + 66))
  {
    v20 = v6[3];
    v21 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v20);
    result = sub_1CF4FB2BC(0x6C616E676973202BLL, 0xEA00000000006465, v20, v21);
  }

  v22 = MEMORY[0x1E69E7CA8];
  if (*(*(v5 + 16) + 16))
  {
    v23 = v6[3];
    v24 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v23);
    sub_1CF4FB2BC(0x65676E616863202BLL, 0xEA00000000003A73, v23, v24);
    v25 = v6[3];
    v26 = v6[4];
    v27 = __swift_project_boxed_opaque_existential_1(v6, v25);
    MEMORY[0x1EEE9AC00](v27);
    v34 = v5;
    result = sub_1CF4FB38C(8224, 0xE200000000000000, a2, v33, v25, v22 + 8, v26);
  }

  if (*(*(v5 + 24) + 16))
  {
    v28 = v6[3];
    v29 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v28);
    sub_1CF4FB2BC(0x697469736F70202BLL, 0xEC0000003A736E6FLL, v28, v29);
    v30 = v6[3];
    v31 = v6[4];
    v32 = __swift_project_boxed_opaque_existential_1(v6, v30);
    MEMORY[0x1EEE9AC00](v32);
    v34 = v5;
    return sub_1CF4FB38C(8224, 0xE200000000000000, v35, v33, v30, v22 + 8, v31);
  }

  return result;
}

uint64_t sub_1CF3DF3D4(void *a1, uint64_t a2)
{
  v3 = *(*(a2 + 40) + 16);
  (*(*v3 + 96))(&v7);
  v4 = v7;

  sub_1CF38A594(a1, v4);

  (*(*v3 + 104))(&v7);
  v5 = v7;
  sub_1CF38A594(a1, v7);
}

uint64_t sub_1CF3DF49C(uint64_t result, void *a2)
{
  v3 = result;
  if (*(*(result + 16) + 16))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(result + 32) == 2;
  }

  v6 = v4 && *(result + 65) == 0 && *(result + 64) == 0;
  if (!v6 || (*(result + 66) & 1) != 0 || *(*(result + 80) + 16) || *(*(result + 8) + 16))
  {
    v7 = a2[3];
    v8 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v7);
    sub_1CF4FB2BC(0x73746E657665202BLL, 0xEC0000003A706620, v7, v8);
    v9 = a2[3];
    v10 = a2[4];
    v11 = __swift_project_boxed_opaque_existential_1(a2, v9);
    MEMORY[0x1EEE9AC00](v11);
    v12[2] = v3;
    return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF483D14, v12, v9, MEMORY[0x1E69E7CA8] + 8, v10);
  }

  return result;
}

uint64_t sub_1CF3DF5DC(__int128 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a1[3];
  v30 = a1[2];
  v31 = v16;
  v17 = a1[5];
  v32 = a1[4];
  v33 = v17;
  v18 = a1[1];
  v28 = *a1;
  v29 = v18;
  v19 = type metadata accessor for FileTreeChangeAggregator();
  result = sub_1CF5A08AC(v19);
  if ((result & 1) == 0)
  {
    v27 = a8;
    v21 = a2[3];
    v22 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v21);
    sub_1CF4FB2BC(0x73746E657665202BLL, 0xEC0000003A706620, v21, v22);
    v23 = a2[3];
    v24 = a2[4];
    v25 = __swift_project_boxed_opaque_existential_1(a2, v23);
    MEMORY[0x1EEE9AC00](v25);
    v26[2] = a3;
    v26[3] = a4;
    v26[4] = a5;
    v26[5] = a6;
    v26[6] = a7;
    v26[7] = v27;
    v26[8] = a1;
    return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF485344, v26, v23, MEMORY[0x1E69E7CA8] + 8, v24);
  }

  return result;
}

uint64_t sub_1CF3DF750(void *a1, _OWORD *a2)
{
  v3 = a2[3];
  v8[2] = a2[2];
  v8[3] = v3;
  v4 = a2[5];
  v8[4] = a2[4];
  v8[5] = v4;
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  sub_1CEFCCBDC(v8, &v7, &qword_1EC4C0668, &unk_1CFA05A70);
  sub_1CF3DEFA8(a1, sub_1CF483D30, sub_1CF485904);
  return sub_1CEFCCC44(v8, &qword_1EC4C0668, &unk_1CFA05A70);
}

uint64_t sub_1CF3DF810(void *a1, _OWORD *a2)
{
  v3 = a2[3];
  v10[2] = a2[2];
  v10[3] = v3;
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  v6 = type metadata accessor for FileTreeChangeAggregator();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v9, v10, v6);
  sub_1CF5A09CC(a1, v6);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1CF3DF8EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), const char *a5)
{
  sub_1CF4818C0();

  sub_1CF21838C(a3, a1, a4, a5);
}

void sub_1CF3DF95C(void *a1, uint64_t a2, void *a3, int a4, int a5)
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1CF3DCD30(v11, a3, a4, a5, sub_1CF483A2C, a2, v9, v10);
}

uint64_t sub_1CF3DF9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 64);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CEFFD05C;
  *(v7 + 24) = v6;
  v10[4] = sub_1CF1C0B54;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CEFFD02C;
  v10[3] = &block_descriptor_1357;
  v8 = _Block_copy(v10);

  dispatch_async_and_wait(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3DFB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 64);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF485970;
  *(v7 + 24) = v6;
  v10[4] = sub_1CF1C0B54;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CEFFD02C;
  v10[3] = &block_descriptor_1482_0;
  v8 = _Block_copy(v10);

  dispatch_async_and_wait(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_1CF3DFC88(void *a1, uint64_t a2, void *a3, int a4, int a5)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1CF3DCD30(v10, a3, a4, a5, sub_1CF3DFD14, 0, v8, v9);
}

unint64_t sub_1CF3DFD3C(unint64_t result, void *a2, int a3)
{
  v5 = v3;
  v6 = a3;
  v7 = a2;
  v497 = a2;
  v498 = a3;
  if (result <= 0x2F0E3B77C2)
  {
    result = sub_1CF7D5920(sub_1CF3E3210, 0, a2);
    if (v4)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (result <= 0x2F145EF754)
  {
LABEL_5:
    v8 = v4;
    v9 = (*(**(*(v3 + 32) + 16) + 96))(&v495, result);
    v10 = sub_1CF93DAB0(v9);
    v12 = v11;
    v13 = v495;
    v14 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9C8, &qword_1CF9FAD50);
    v15 = swift_allocObject();
    *(v15 + 152) = v14;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 1;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0;
    *(v15 + 96) = xmmword_1CF9FEC30;
    *(v15 + 112) = 0;
    *(v15 + 120) = v10;
    *(v15 + 128) = v12;
    *(v15 + 136) = 0;
    *(v15 + 144) = v13;
    v16 = sub_1CF4D3BC0();
    sub_1CF902E70(v15, v16, v7, v6);
    if (v4)
    {
    }

    goto LABEL_9;
  }

  if (result < 0x2F145F20ADLL)
  {
    v8 = v4;
LABEL_9:
    v17 = (*(**(*(v5 + 32) + 16) + 96))(&v495, result);
    v18 = sub_1CF93DAB0(v17);
    v20 = v19;
    v21 = v495;
    v22 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0060, &qword_1CF9FAD48);
    v23 = swift_allocObject();
    *(v23 + 152) = v22;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 1;
    *(v23 + 56) = 0u;
    *(v23 + 72) = 0u;
    *(v23 + 88) = 0;
    *(v23 + 96) = xmmword_1CF9FEC30;
    *(v23 + 112) = 0;
    *(v23 + 120) = v18;
    *(v23 + 128) = v20;
    *(v23 + 136) = 0;
    *(v23 + 144) = v21;
    v24 = sub_1CF4D3BC0();
    sub_1CF902E70(v23, v24, v7, v6);
    if (v8)
    {
    }

    goto LABEL_13;
  }

  if (result < 0x2F145F2311)
  {
    v8 = v4;
LABEL_13:
    v25 = (*(**(*(v5 + 32) + 16) + 96))(&v495, result);
    v26 = sub_1CF93DAB0(v25);
    v28 = v27;
    v29 = v495;
    v30 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9C0, &qword_1CF9FAD40);
    v31 = swift_allocObject();
    *(v31 + 152) = v30;
    *(v31 + 16) = 0u;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 1;
    *(v31 + 56) = 0u;
    *(v31 + 72) = 0u;
    *(v31 + 88) = 0;
    *(v31 + 96) = xmmword_1CF9FEC30;
    *(v31 + 112) = 0;
    *(v31 + 120) = v26;
    *(v31 + 128) = v28;
    *(v31 + 136) = 0;
    *(v31 + 144) = v29;
    v32 = sub_1CF4D3BC0();
    sub_1CF902E70(v31, v32, v7, v6);
    if (v8)
    {
    }

    goto LABEL_17;
  }

  if (result <= 0x2F145F4708)
  {
    v8 = v4;
LABEL_17:
    v33 = *(v5 + 32);
    v34 = (*(**(v33 + 16) + 96))(&v495, result);
    v35 = sub_1CF93DAB0(v34);
    v37 = v36;
    v499 = v5;
    v38 = v495;
    v39 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0070, &qword_1CF9FAD38);
    v40 = swift_allocObject();
    *(v40 + 152) = v39;
    *(v40 + 16) = 0u;
    *(v40 + 32) = 0u;
    *(v40 + 48) = 1;
    *(v40 + 56) = 0u;
    *(v40 + 72) = 0u;
    *(v40 + 88) = 0;
    v494 = xmmword_1CF9FEC30;
    *(v40 + 96) = xmmword_1CF9FEC30;
    *(v40 + 112) = 0;
    *(v40 + 120) = v35;
    *(v40 + 128) = v37;
    *(v40 + 136) = 0;
    *(v40 + 144) = v38;
    v41 = sub_1CF4D3BC0();
    sub_1CF902E70(v40, v41, v7, v6);
    if (!v8)
    {

      v43 = (*(**(v33 + 16) + 96))(&v495, v42);
      v44 = sub_1CF93DAB0(v43);
      v46 = v45;
      v47 = v495;
      v48 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9B8, &qword_1CF9FAD30);
      v49 = swift_allocObject();
      *(v49 + 152) = v48;
      *(v49 + 16) = 0u;
      *(v49 + 32) = 0u;
      *(v49 + 48) = 1;
      *(v49 + 56) = 0u;
      *(v49 + 72) = 0u;
      *(v49 + 88) = 0;
      *(v49 + 96) = v494;
      *(v49 + 112) = 0;
      *(v49 + 120) = v44;
      *(v49 + 128) = v46;
      *(v49 + 136) = 0;
      *(v49 + 144) = v47;
      v5 = v499;
      v50 = sub_1CF4D3BC0();
      sub_1CF902E70(v49, v50, v7, v6);
      v51 = v7;
      v52 = v6;

LABEL_21:
      v53 = (*(**(*(v5 + 32) + 16) + 96))(&v495, result);
      v54 = sub_1CF93DAB0(v53);
      v56 = v55;
      v57 = v5;
      v58 = v495;
      v59 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9A8, &qword_1CF9FAD10);
      v60 = swift_allocObject();
      *(v60 + 152) = v59;
      *(v60 + 16) = 0u;
      *(v60 + 32) = 0u;
      *(v60 + 48) = 1;
      *(v60 + 56) = 0u;
      *(v60 + 72) = 0u;
      *(v60 + 88) = 0;
      *(v60 + 96) = xmmword_1CF9FEC30;
      *(v60 + 112) = 0;
      *(v60 + 120) = v54;
      *(v60 + 128) = v56;
      *(v60 + 136) = 0;
      *(v60 + 144) = v58;
      v5 = v57;
      v61 = sub_1CF4D3BC0();
      sub_1CF902E70(v60, v61, v51, v52);
      if (v8)
      {
      }

      goto LABEL_27;
    }
  }

  if (result <= 0x2F147BCFB8)
  {
    v51 = a2;
    v52 = a3;
    v8 = v4;
    goto LABEL_21;
  }

  if (result <= 0x2F1489DA32)
  {
    v51 = a2;
    v52 = a3;
    v8 = v4;
LABEL_27:
    v62 = (*(**(*(v5 + 32) + 16) + 96))(&v495, result);
    v63 = sub_1CF93DAB0(v62);
    v65 = v64;
    v66 = v5;
    v67 = v495;
    v68 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0080, &qword_1CF9FAD28);
    v69 = swift_allocObject();
    *(v69 + 152) = v68;
    *(v69 + 16) = 0u;
    *(v69 + 32) = 0u;
    *(v69 + 48) = 1;
    *(v69 + 56) = 0u;
    *(v69 + 72) = 0u;
    *(v69 + 88) = 0;
    *(v69 + 96) = xmmword_1CF9FEC30;
    *(v69 + 112) = 0;
    *(v69 + 120) = v63;
    *(v69 + 128) = v65;
    *(v69 + 136) = 0;
    *(v69 + 144) = v67;
    v5 = v66;
    v70 = sub_1CF4D3BC0();
    v6 = v52;
    v4 = v8;
    sub_1CF902E70(v69, v70, v51, v52);
    if (v8)
    {
    }

    v7 = v51;
LABEL_34:
    result = sub_1CF3E32A8(v5, v7, v6);
    if (v4)
    {
      return result;
    }

    goto LABEL_35;
  }

  if (result <= 0x2F148D35F8)
  {
    goto LABEL_34;
  }

  if (result <= 0x2F14994317)
  {
LABEL_35:
    v71 = v7;
    v72 = v6;
    v73 = v4;
    v74 = (*(**(*(v5 + 32) + 16) + 96))(&v495, result);
    v75 = sub_1CF93DAB0(v74);
    v77 = v76;
    v78 = v5;
    v79 = v495;
    v80 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9B0, &qword_1CF9FAD20);
    v81 = swift_allocObject();
    *(v81 + 152) = v80;
    *(v81 + 16) = 0u;
    *(v81 + 32) = 0u;
    *(v81 + 48) = 1;
    *(v81 + 56) = 0u;
    *(v81 + 72) = 0u;
    *(v81 + 88) = 0;
    *(v81 + 96) = xmmword_1CF9FEC30;
    *(v81 + 112) = 0;
    *(v81 + 120) = v75;
    *(v81 + 128) = v77;
    *(v81 + 136) = 0;
    *(v81 + 144) = v79;
    v5 = v78;
    v82 = sub_1CF4D3BC0();
    sub_1CF902E70(v81, v82, v71, v72);
    if (v4)
    {
    }

    goto LABEL_37;
  }

  if (result <= 0x2F14A923B6)
  {
    v71 = a2;
    v72 = a3;
    v73 = v4;
LABEL_37:
    v83 = (*(**(*(v5 + 32) + 16) + 96))(&v495, result);
    v84 = sub_1CF93DAB0(v83);
    v86 = v85;
    v87 = v5;
    v88 = v495;
    v89 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0090, &qword_1CF9FAD18);
    v90 = swift_allocObject();
    *(v90 + 152) = v89;
    *(v90 + 16) = 0u;
    *(v90 + 32) = 0u;
    *(v90 + 48) = 1;
    *(v90 + 56) = 0u;
    *(v90 + 72) = 0u;
    *(v90 + 88) = 0;
    *(v90 + 96) = xmmword_1CF9FEC30;
    *(v90 + 112) = 0;
    *(v90 + 120) = v84;
    *(v90 + 128) = v86;
    *(v90 + 136) = 0;
    *(v90 + 144) = v88;
    v5 = v87;
    v91 = sub_1CF4D3BC0();
    sub_1CF902E70(v90, v91, v71, v72);
    if (v73)
    {
    }

    goto LABEL_41;
  }

  if (result <= 0x2F14B83BBDLL)
  {
    v71 = a2;
    v72 = a3;
    v73 = v4;
LABEL_41:
    sub_1CF033A74();
    v92 = (*(**(*(v5 + 40) + 16) + 96))(&v495);
    v93 = v5;
    v94 = v495;
    v95 = sub_1CF93DAB0(v92);
    v97 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0350, &qword_1CF9FB320);
    v98 = swift_allocObject();
    *(v98 + 16) = 0u;
    *(v98 + 32) = 0u;
    *(v98 + 48) = 1;
    *(v98 + 56) = 0u;
    *(v98 + 72) = 0u;
    *(v98 + 88) = 0;
    *(v98 + 96) = xmmword_1CF9FEC30;
    *(v98 + 112) = 0;
    *(v98 + 120) = v95;
    *(v98 + 128) = v97;
    *(v98 + 136) = 0;
    *(v98 + 144) = v94;
    v99 = sub_1CF4D3BC0();
    sub_1CF902E70(v98, v99, v71, v72);
    if (v73)
    {
    }

    v5 = v93;
    goto LABEL_47;
  }

  if (result <= 0x2F14BA3A3FLL)
  {
    v71 = a2;
    v72 = a3;
    v73 = v4;
LABEL_47:
    v100 = (*(**(*(v5 + 32) + 16) + 96))(&v495, result);
    v101 = sub_1CF93DAB0(v100);
    v103 = v102;
    v104 = v5;
    v105 = v495;
    v106 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9C0, &qword_1CF9FAD40);
    v107 = swift_allocObject();
    *(v107 + 152) = v106;
    *(v107 + 16) = 0u;
    *(v107 + 32) = 0u;
    *(v107 + 48) = 1;
    *(v107 + 56) = 0u;
    *(v107 + 72) = 0u;
    *(v107 + 88) = 0;
    *(v107 + 96) = xmmword_1CF9FEC30;
    *(v107 + 112) = 0;
    *(v107 + 120) = v101;
    *(v107 + 128) = v103;
    *(v107 + 136) = 0;
    *(v107 + 144) = v105;
    v5 = v104;
    v108 = sub_1CF4D3BC0();
    sub_1CF902E70(v107, v108, v71, v72);
    if (v73)
    {
    }

    goto LABEL_51;
  }

  if (result <= 0x2F1A17D070)
  {
    v71 = a2;
    v72 = a3;
    v73 = v4;
LABEL_51:
    v109 = (*(**(*(v5 + 32) + 16) + 96))(&v495, result);
    v110 = sub_1CF93DAB0(v109);
    v112 = v111;
    v113 = v5;
    v114 = v495;
    v115 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00A0, &qword_1CF9FAD08);
    v116 = swift_allocObject();
    *(v116 + 152) = v115;
    *(v116 + 16) = 0u;
    *(v116 + 32) = 0u;
    *(v116 + 48) = 1;
    *(v116 + 56) = 0u;
    *(v116 + 72) = 0u;
    *(v116 + 88) = 0;
    *(v116 + 96) = xmmword_1CF9FEC30;
    *(v116 + 112) = 0;
    *(v116 + 120) = v110;
    *(v116 + 128) = v112;
    *(v116 + 136) = 0;
    *(v116 + 144) = v114;
    v5 = v113;
    v117 = sub_1CF4D3BC0();
    v6 = v72;
    sub_1CF902E70(v116, v117, v71, v72);
    *&v494 = v73;
    if (v73)
    {
    }

    v7 = v71;
    goto LABEL_54;
  }

  *&v494 = v4;
  if (result <= 0x2F1A256322)
  {
LABEL_54:
    sub_1CF033A74();
    v499 = v5;
    v118 = (*(**(*(v5 + 40) + 16) + 96))(&v495);
    v119 = v495;
    v120 = sub_1CF93DAB0(v118);
    v122 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0350, &qword_1CF9FB320);
    v123 = swift_allocObject();
    *(v123 + 16) = 0u;
    *(v123 + 32) = 0u;
    *(v123 + 48) = 1;
    *(v123 + 56) = 0u;
    *(v123 + 72) = 0u;
    *(v123 + 88) = 0;
    *(v123 + 96) = xmmword_1CF9FEC30;
    *(v123 + 112) = 0;
    *(v123 + 120) = v120;
    *(v123 + 128) = v122;
    *(v123 + 136) = 0;
    *(v123 + 144) = v119;
    v124 = sub_1CF4D3BC0();
    sub_1CF902E70(v123, v124, v7, v6);
    if (v494)
    {
LABEL_55:
    }

    goto LABEL_59;
  }

  v492 = a2;
  v493 = a3;
  v499 = v3;
  if (result <= 0x2F1A267888)
  {
    v6 = v493;
    v7 = v492;
LABEL_59:
    v125 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
    v126 = sub_1CF93DAB0(v125);
    v128 = v127;
    v129 = v495;
    v130 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9A0, &qword_1CF9FAD00);
    v131 = swift_allocObject();
    *(v131 + 152) = v130;
    *(v131 + 16) = 0u;
    *(v131 + 32) = 0u;
    *(v131 + 48) = 1;
    *(v131 + 56) = 0u;
    *(v131 + 72) = 0u;
    *(v131 + 88) = 0;
    *(v131 + 96) = xmmword_1CF9FEC30;
    *(v131 + 112) = 0;
    *(v131 + 120) = v126;
    *(v131 + 128) = v128;
    *(v131 + 136) = 0;
    *(v131 + 144) = v129;
    v132 = sub_1CF4D3BC0();
    v492 = v7;
    v493 = v6;
    sub_1CF902E70(v131, v132, v7, v6);
    if (v494)
    {
    }

    goto LABEL_64;
  }

  if (result <= 0x2F1A33BC33)
  {
LABEL_64:
    v133 = *(v499 + 32);
    v134 = (*(**(v133 + 16) + 96))(&v495, result);
    v135 = sub_1CF93DAB0(v134);
    v137 = v136;
    v138 = v495;
    v139 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
    v140 = swift_allocObject();
    *(v140 + 152) = v139;
    *(v140 + 16) = 0u;
    *(v140 + 32) = 0u;
    *(v140 + 48) = 1;
    *(v140 + 56) = 0u;
    *(v140 + 72) = 0u;
    *(v140 + 88) = 0;
    *(v140 + 120) = v135;
    *(v140 + 128) = v137;
    *(v140 + 136) = 0x8000;
    *(v140 + 144) = v138;
    v491 = xmmword_1CFA04E30;
    *(v140 + 96) = xmmword_1CFA04E30;
    *(v140 + 112) = 0;
    v141 = sub_1CF4D3BC0();
    sub_1CF902E70(v140, v141, v492, v493);
    if (v494)
    {
    }

    v143 = (*(**(v133 + 16) + 104))(&v495, v142);
    v144 = sub_1CF93DAB0(v143);
    v146 = v145;
    v147 = v495;
    v148 = v496;
    v149 = swift_allocObject();
    *(v149 + 152) = v148;
    *(v149 + 16) = 0u;
    *(v149 + 32) = 0u;
    *(v149 + 48) = 1;
    *(v149 + 56) = 0u;
    *(v149 + 72) = 0u;
    *(v149 + 88) = 0;
    *(v149 + 120) = v144;
    *(v149 + 128) = v146;
    *(v149 + 136) = 0x8000;
    *(v149 + 144) = v147;
    *(v149 + 96) = v491;
    *(v149 + 112) = 0;
    v150 = sub_1CF4D3BC0();
    sub_1CF902E70(v149, v150, v492, v493);
    *&v494 = 0;

    goto LABEL_67;
  }

  if (result <= 0x2F1A371793)
  {
LABEL_67:
    v151 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
    v152 = sub_1CF93DAB0(v151);
    v154 = v153;
    v155 = v495;
    v156 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00A0, &qword_1CF9FAD08);
    v157 = swift_allocObject();
    *(v157 + 152) = v156;
    *(v157 + 16) = 0u;
    *(v157 + 32) = 0u;
    *(v157 + 48) = 1;
    *(v157 + 56) = 0u;
    *(v157 + 72) = 0u;
    *(v157 + 88) = 0;
    *(v157 + 96) = xmmword_1CF9FEC30;
    *(v157 + 112) = 0;
    *(v157 + 120) = v152;
    *(v157 + 128) = v154;
    *(v157 + 136) = 0;
    *(v157 + 144) = v155;
    v158 = sub_1CF4D3BC0();
    sub_1CF902E70(v157, v158, v492, v493);
    if (v494)
    {
    }

    goto LABEL_70;
  }

  if (result <= 0x2F1A37422DLL)
  {
LABEL_70:
    v159 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
    v160 = sub_1CF93DAB0(v159);
    v162 = v161;
    v163 = v495;
    v164 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00B0, &qword_1CF9FACF8);
    v165 = swift_allocObject();
    *(v165 + 152) = v164;
    *(v165 + 16) = 0u;
    *(v165 + 32) = 0u;
    *(v165 + 48) = 1;
    *(v165 + 56) = 0u;
    *(v165 + 72) = 0u;
    *(v165 + 88) = 0;
    *(v165 + 96) = xmmword_1CF9FEC30;
    *(v165 + 112) = 0;
    *(v165 + 120) = v160;
    *(v165 + 128) = v162;
    *(v165 + 136) = 0;
    *(v165 + 144) = v163;
    v166 = sub_1CF4D3BC0();
    sub_1CF902E70(v165, v166, v492, v493);
    if (v494)
    {
    }

    goto LABEL_73;
  }

  if (result <= 0x2F1A378FC6)
  {
LABEL_73:
    v167 = *(v499 + 32);
    v168 = (*(**(v167 + 16) + 96))(&v495, result);
    v169 = sub_1CF93DAB0(v168);
    v171 = v170;
    v172 = v495;
    v173 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD998, &qword_1CF9FACF0);
    v174 = swift_allocObject();
    *(v174 + 152) = v173;
    *(v174 + 16) = 0u;
    *(v174 + 32) = 0u;
    *(v174 + 48) = 1;
    *(v174 + 56) = 0u;
    *(v174 + 72) = 0u;
    *(v174 + 88) = 0;
    v491 = xmmword_1CF9FEC30;
    *(v174 + 96) = xmmword_1CF9FEC30;
    *(v174 + 112) = 0;
    *(v174 + 120) = v169;
    *(v174 + 128) = v171;
    *(v174 + 136) = 0;
    *(v174 + 144) = v172;
    v175 = sub_1CF4D3BC0();
    sub_1CF902E70(v174, v175, v492, v493);
    if (v494)
    {
    }

    v177 = (*(**(v167 + 16) + 96))(&v495, v176);
    v178 = sub_1CF93DAB0(v177);
    v180 = v179;
    v181 = v495;
    v182 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00C0, &qword_1CF9FACE8);
    v183 = swift_allocObject();
    *(v183 + 152) = v182;
    *(v183 + 16) = 0u;
    *(v183 + 32) = 0u;
    *(v183 + 48) = 1;
    *(v183 + 56) = 0u;
    *(v183 + 72) = 0u;
    *(v183 + 88) = 0;
    *(v183 + 96) = v491;
    *(v183 + 112) = 0;
    *(v183 + 120) = v178;
    *(v183 + 128) = v180;
    *(v183 + 136) = 0;
    *(v183 + 144) = v181;
    v184 = sub_1CF4D3BC0();
    sub_1CF902E70(v183, v184, v492, v493);

    v185 = v499;
    sub_1CF033A74();
    v186 = (*(**(*(v185 + 40) + 16) + 96))(&v495);
    v187 = v495;
    v188 = sub_1CF93DAB0(v186);
    v190 = v189;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEA0, &qword_1CF9FB2E8);
    v191 = swift_allocObject();
    *(v191 + 16) = 0u;
    *(v191 + 32) = 0u;
    *(v191 + 48) = 1;
    *(v191 + 56) = 0u;
    *(v191 + 72) = 0u;
    *(v191 + 88) = 0;
    *(v191 + 96) = v491;
    *(v191 + 112) = 0;
    *(v191 + 120) = v188;
    *(v191 + 128) = v190;
    *(v191 + 136) = 0;
    *(v191 + 144) = v187;
    v192 = sub_1CF4D3BC0();
    sub_1CF902E70(v191, v192, v492, v493);

    v194 = (*(**(v167 + 16) + 96))(&v495, v193);
    v195 = sub_1CF93DAB0(v194);
    v197 = v196;
    v198 = v495;
    LOBYTE(v190) = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD990, &qword_1CF9FACE0);
    v199 = swift_allocObject();
    *(v199 + 152) = v190;
    *(v199 + 16) = 0u;
    *(v199 + 32) = 0u;
    *(v199 + 48) = 1;
    *(v199 + 56) = 0u;
    *(v199 + 72) = 0u;
    *(v199 + 88) = 0;
    *(v199 + 96) = v491;
    *(v199 + 112) = 0;
    *(v199 + 120) = v195;
    *(v199 + 128) = v197;
    *(v199 + 136) = 0;
    *(v199 + 144) = v198;
    v200 = sub_1CF4D3BC0();
    sub_1CF902E70(v199, v200, v492, v493);
    *&v494 = 0;

    goto LABEL_76;
  }

  if (result <= 0x2F1A5500F8)
  {
LABEL_76:
    v201 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
    v202 = sub_1CF93DAB0(v201);
    v204 = v203;
    v205 = v495;
    v206 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD988, &qword_1CF9FACD0);
    v207 = swift_allocObject();
    *(v207 + 152) = v206;
    *(v207 + 16) = 0u;
    *(v207 + 32) = 0u;
    *(v207 + 48) = 1;
    *(v207 + 56) = 0u;
    *(v207 + 72) = 0u;
    *(v207 + 88) = 0;
    *(v207 + 96) = xmmword_1CF9FEC30;
    *(v207 + 112) = 0;
    *(v207 + 120) = v202;
    *(v207 + 128) = v204;
    *(v207 + 136) = 0;
    *(v207 + 144) = v205;
    v208 = sub_1CF4D3BC0();
    sub_1CF902E70(v207, v208, v492, v493);
    if (v494)
    {
    }

    goto LABEL_79;
  }

  if (result <= 0x2F1A552752)
  {
LABEL_79:
    v209 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
    v210 = sub_1CF93DAB0(v209);
    v212 = v211;
    v213 = v495;
    v214 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9C0, &qword_1CF9FAD40);
    v215 = swift_allocObject();
    *(v215 + 152) = v214;
    *(v215 + 16) = 0u;
    *(v215 + 32) = 0u;
    *(v215 + 48) = 1;
    *(v215 + 56) = 0u;
    *(v215 + 72) = 0u;
    *(v215 + 88) = 0;
    *(v215 + 96) = xmmword_1CF9FEC30;
    *(v215 + 112) = 0;
    *(v215 + 120) = v210;
    *(v215 + 128) = v212;
    *(v215 + 136) = 0;
    *(v215 + 144) = v213;
    v216 = sub_1CF4D3BC0();
    sub_1CF902E70(v215, v216, v492, v493);
    if (v494)
    {
    }

    goto LABEL_82;
  }

  if (result <= 0x2F1A630CBELL)
  {
LABEL_82:
    result = (*(**(v499 + 16) + 448))(&v497, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (v494)
    {
      return result;
    }

    if (result)
    {
      v217 = *(v499 + 32);
      v218 = (*(**(v217 + 16) + 96))(&v495);
      v219 = sub_1CF93DAB0(v218);
      v221 = v220;
      v222 = v495;
      v223 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
      v224 = swift_allocObject();
      *(v224 + 152) = v223;
      *(v224 + 16) = 0u;
      *(v224 + 32) = 0u;
      *(v224 + 48) = 1;
      *(v224 + 56) = 0u;
      *(v224 + 72) = 0u;
      *(v224 + 88) = 0;
      *(v224 + 120) = v219;
      *(v224 + 128) = v221;
      *(v224 + 136) = 0x8000;
      *(v224 + 144) = v222;
      v491 = xmmword_1CFA04E30;
      *(v224 + 96) = xmmword_1CFA04E30;
      *(v224 + 112) = 0;
      v225 = sub_1CF4D3BC0();
      sub_1CF902E70(v224, v225, v492, v493);
      if (v494)
      {
      }

      v227 = (*(**(v217 + 16) + 104))(&v495, v226);
      v228 = sub_1CF93DAB0(v227);
      v230 = v229;
      v231 = v495;
      v232 = v496;
      v233 = swift_allocObject();
      *(v233 + 152) = v232;
      *(v233 + 16) = 0u;
      *(v233 + 32) = 0u;
      *(v233 + 48) = 1;
      *(v233 + 56) = 0u;
      *(v233 + 72) = 0u;
      *(v233 + 88) = 0;
      *(v233 + 120) = v228;
      *(v233 + 128) = v230;
      *(v233 + 136) = 0x8000;
      *(v233 + 144) = v231;
      *(v233 + 96) = v491;
      *(v233 + 112) = 0;
      v234 = sub_1CF4D3BC0();
      sub_1CF902E70(v233, v234, v492, v493);
      *&v494 = 0;
    }

    goto LABEL_87;
  }

  if (result <= 0x2F1A705238)
  {
LABEL_87:
    v235 = (*(**(*(v499 + 32) + 16) + 96))(&v495);
    v236 = sub_1CF93DAB0(v235);
    v238 = v237;
    v239 = v495;
    v240 = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9C0, &qword_1CF9FAD40);
    v241 = swift_allocObject();
    *(v241 + 152) = v240;
    *(v241 + 16) = 0u;
    *(v241 + 32) = 0u;
    *(v241 + 48) = 1;
    *(v241 + 56) = 0u;
    *(v241 + 72) = 0u;
    *(v241 + 88) = 0;
    *(v241 + 96) = xmmword_1CF9FEC30;
    *(v241 + 112) = 0;
    *(v241 + 120) = v236;
    *(v241 + 128) = v238;
    *(v241 + 136) = 0;
    *(v241 + 144) = v239;
    v242 = sub_1CF4D3BC0();
    sub_1CF902E70(v241, v242, v492, v493);
    if (v494)
    {
    }

    goto LABEL_90;
  }

  if (result <= 0x2F1A709DF7)
  {
LABEL_90:
    v243 = *(v499 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
    v244 = swift_dynamicCastClassUnconditional();

    sub_1CF7D5920(sub_1CF485AAC, v244, v492);
    if (v494)
    {
    }

    sub_1CF7D5920(sub_1CF485AB0, v244, v492);
    *&v494 = 0;

    goto LABEL_122;
  }

  if (result > 0x2F1A70ED7CLL)
  {
    if (result <= 0x2F1A73ACDFLL)
    {
      goto LABEL_125;
    }

    if (result <= 0x2F1A838B1ALL)
    {
LABEL_128:
      v259 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v260 = sub_1CF93DAB0(v259);
      v262 = v261;
      v263 = v495;
      v264 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00F0, &qword_1CF9FACB8);
      v265 = swift_allocObject();
      *(v265 + 152) = v264;
      *(v265 + 16) = 0u;
      *(v265 + 32) = 0u;
      *(v265 + 48) = 1;
      *(v265 + 56) = 0u;
      *(v265 + 72) = 0u;
      *(v265 + 88) = 0;
      *(v265 + 96) = xmmword_1CF9FEC30;
      *(v265 + 112) = 0;
      *(v265 + 120) = v260;
      *(v265 + 128) = v262;
      *(v265 + 136) = 0;
      *(v265 + 144) = v263;
      v266 = sub_1CF4D3BC0();
      v267 = v494;
      sub_1CF902E70(v265, v266, v492, v493);
      *&v494 = v267;
      if (v267)
      {
      }

      goto LABEL_130;
    }

    if (result <= 0x2F1A8ED457)
    {
LABEL_130:
      v268 = *(v499 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
      v269 = swift_dynamicCastClassUnconditional();

      v270 = v494;
      sub_1CF7D5920(sub_1CF482D3C, v269, v492);
      if (v270)
      {
      }

      sub_1CF7D5920(sub_1CF482D58, v269, v492);
      *&v494 = 0;

      goto LABEL_132;
    }

    if (result <= 0x2F1A91953DLL)
    {
LABEL_132:
      v271 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v272 = sub_1CF93DAB0(v271);
      v274 = v273;
      v275 = v495;
      v276 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9C0, &qword_1CF9FAD40);
      v277 = swift_allocObject();
      *(v277 + 152) = v276;
      *(v277 + 16) = 0u;
      *(v277 + 32) = 0u;
      *(v277 + 48) = 1;
      *(v277 + 56) = 0u;
      *(v277 + 72) = 0u;
      *(v277 + 88) = 0;
      *(v277 + 96) = xmmword_1CF9FEC30;
      *(v277 + 112) = 0;
      *(v277 + 120) = v272;
      *(v277 + 128) = v274;
      *(v277 + 136) = 0;
      *(v277 + 144) = v275;
      v278 = sub_1CF4D3BC0();
      v279 = v494;
      sub_1CF902E70(v277, v278, v492, v493);
      *&v494 = v279;
      if (v279)
      {
      }

      goto LABEL_134;
    }

    if (result <= 0x2F1A91B69FLL)
    {
LABEL_134:
      v280 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v281 = sub_1CF93DAB0(v280);
      v283 = v282;
      v284 = v495;
      v285 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0100, &qword_1CF9FACA8);
      v286 = swift_allocObject();
      *(v286 + 152) = v285;
      *(v286 + 16) = 0u;
      *(v286 + 32) = 0u;
      *(v286 + 48) = 1;
      *(v286 + 56) = 0u;
      *(v286 + 72) = 0u;
      *(v286 + 88) = 0;
      *(v286 + 96) = xmmword_1CF9FEC30;
      *(v286 + 112) = 0;
      *(v286 + 120) = v281;
      *(v286 + 128) = v283;
      *(v286 + 136) = 0;
      *(v286 + 144) = v284;
      v287 = sub_1CF4D3BC0();
      v288 = v494;
      sub_1CF902E70(v286, v287, v492, v493);
      *&v494 = v288;
      if (v288)
      {
      }

      goto LABEL_136;
    }

    if (result <= 0x2F1A9204BFLL)
    {
LABEL_136:
      v289 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v290 = sub_1CF93DAB0(v289);
      v292 = v291;
      v293 = v495;
      v294 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD970, &qword_1CF9FACA0);
      v295 = swift_allocObject();
      *(v295 + 152) = v294;
      *(v295 + 16) = 0u;
      *(v295 + 32) = 0u;
      *(v295 + 48) = 1;
      *(v295 + 56) = 0u;
      *(v295 + 72) = 0u;
      *(v295 + 88) = 0;
      *(v295 + 96) = xmmword_1CF9FEC30;
      *(v295 + 112) = 0;
      *(v295 + 120) = v290;
      *(v295 + 128) = v292;
      *(v295 + 136) = 0;
      *(v295 + 144) = v293;
      v296 = sub_1CF4D3BC0();
      v297 = v494;
      sub_1CF902E70(v295, v296, v492, v493);
      *&v494 = v297;
      if (v297)
      {
      }

      goto LABEL_138;
    }

    if (result <= 0x2F200DACAFLL)
    {
LABEL_138:
      v298 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v299 = sub_1CF93DAB0(v298);
      v301 = v300;
      v302 = v495;
      v303 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0100, &qword_1CF9FACA8);
      v304 = swift_allocObject();
      *(v304 + 152) = v303;
      *(v304 + 16) = 0u;
      *(v304 + 32) = 0u;
      *(v304 + 48) = 1;
      *(v304 + 56) = 0u;
      *(v304 + 72) = 0u;
      *(v304 + 88) = 0;
      *(v304 + 96) = xmmword_1CF9FEC30;
      *(v304 + 112) = 0;
      *(v304 + 120) = v299;
      *(v304 + 128) = v301;
      *(v304 + 136) = 0;
      *(v304 + 144) = v302;
      v305 = sub_1CF4D3BC0();
      v306 = v494;
      sub_1CF902E70(v304, v305, v492, v493);
      *&v494 = v306;
      if (v306)
      {
      }

      goto LABEL_140;
    }

    if (result <= 0x2F2029720FLL)
    {
LABEL_140:
      v307 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v308 = sub_1CF93DAB0(v307);
      v310 = v309;
      v311 = v495;
      v312 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0110, &qword_1CF9FAC88);
      v313 = swift_allocObject();
      *(v313 + 152) = v312;
      *(v313 + 16) = 0u;
      *(v313 + 32) = 0u;
      *(v313 + 48) = 1;
      *(v313 + 56) = 0u;
      *(v313 + 72) = 0u;
      *(v313 + 88) = 0;
      *(v313 + 96) = xmmword_1CF9FEC30;
      *(v313 + 112) = 0;
      *(v313 + 120) = v308;
      *(v313 + 128) = v310;
      *(v313 + 136) = 0;
      *(v313 + 144) = v311;
      v314 = sub_1CF4D3BC0();
      v315 = v494;
      sub_1CF902E70(v313, v314, v492, v493);
      *&v494 = v315;
      if (v315)
      {
      }

      goto LABEL_142;
    }

    if (result <= 0x2F202C84DDLL)
    {
LABEL_142:
      v316 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v317 = sub_1CF93DAB0(v316);
      v319 = v318;
      v320 = v495;
      v321 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0090, &qword_1CF9FAD18);
      v322 = swift_allocObject();
      *(v322 + 152) = v321;
      *(v322 + 16) = 0u;
      *(v322 + 32) = 0u;
      *(v322 + 48) = 1;
      *(v322 + 56) = 0u;
      *(v322 + 72) = 0u;
      *(v322 + 88) = 0;
      *(v322 + 96) = xmmword_1CF9FEC30;
      *(v322 + 112) = 0;
      *(v322 + 120) = v317;
      *(v322 + 128) = v319;
      *(v322 + 136) = 0;
      *(v322 + 144) = v320;
      v323 = sub_1CF4D3BC0();
      v324 = v494;
      sub_1CF902E70(v322, v323, v492, v493);
      *&v494 = v324;
      if (v324)
      {
      }

      goto LABEL_144;
    }

    if (result <= 0x2F203A6804)
    {
LABEL_144:
      v325 = v499;
      sub_1CF033A74();
      v326 = (*(**(*(v325 + 40) + 16) + 96))(&v495);
      v327 = v495;
      v328 = sub_1CF93DAB0(v326);
      v330 = v329;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE68, &qword_1CF9FB278);
      v331 = swift_allocObject();
      *(v331 + 16) = 0u;
      *(v331 + 32) = 0u;
      *(v331 + 48) = 1;
      *(v331 + 56) = 0u;
      *(v331 + 72) = 0u;
      *(v331 + 88) = 0;
      *(v331 + 96) = xmmword_1CF9FEC30;
      *(v331 + 112) = 0;
      *(v331 + 120) = v328;
      *(v331 + 128) = v330;
      *(v331 + 136) = 0;
      *(v331 + 144) = v327;
      v332 = sub_1CF4D3BC0();
      v333 = v494;
      sub_1CF902E70(v331, v332, v492, v493);
      *&v494 = v333;
      if (v333)
      {
        goto LABEL_55;
      }

      goto LABEL_146;
    }

    if (result <= 0x2F2075297CLL)
    {
LABEL_146:
      v334 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v335 = sub_1CF93DAB0(v334);
      v337 = v336;
      v338 = v495;
      v339 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00A0, &qword_1CF9FAD08);
      v340 = swift_allocObject();
      *(v340 + 152) = v339;
      *(v340 + 16) = 0u;
      *(v340 + 32) = 0u;
      *(v340 + 48) = 1;
      *(v340 + 56) = 0u;
      *(v340 + 72) = 0u;
      *(v340 + 88) = 0;
      *(v340 + 96) = xmmword_1CF9FEC30;
      *(v340 + 112) = 0;
      *(v340 + 120) = v335;
      *(v340 + 128) = v337;
      *(v340 + 136) = 0;
      *(v340 + 144) = v338;
      v341 = sub_1CF4D3BC0();
      v342 = v494;
      sub_1CF902E70(v340, v341, v492, v493);
      *&v494 = v342;
      if (v342)
      {
      }

      goto LABEL_148;
    }

    if (result <= 0x2F2077E55FLL)
    {
LABEL_148:
      v343 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v344 = sub_1CF93DAB0(v343);
      v346 = v345;
      v347 = v495;
      v348 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0030, &qword_1CF9FAD78);
      v349 = swift_allocObject();
      *(v349 + 152) = v348;
      *(v349 + 16) = 0u;
      *(v349 + 32) = 0u;
      *(v349 + 48) = 1;
      *(v349 + 56) = 0u;
      *(v349 + 72) = 0u;
      *(v349 + 88) = 0;
      *(v349 + 96) = xmmword_1CF9FEC30;
      *(v349 + 112) = 0;
      *(v349 + 120) = v344;
      *(v349 + 128) = v346;
      *(v349 + 136) = 0x4000000;
      *(v349 + 144) = v347;
      v350 = sub_1CF4D3BC0();
      v351 = v494;
      sub_1CF902E70(v349, v350, v492, v493);
      *&v494 = v351;
      if (v351)
      {
      }

      goto LABEL_150;
    }

    if (result <= 0x2F20972DA2)
    {
LABEL_150:
      v352 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v353 = sub_1CF93DAB0(v352);
      v355 = v354;
      v356 = v495;
      v357 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0090, &qword_1CF9FAD18);
      v358 = swift_allocObject();
      *(v358 + 152) = v357;
      *(v358 + 16) = 0u;
      *(v358 + 32) = 0u;
      *(v358 + 48) = 1;
      *(v358 + 56) = 0u;
      *(v358 + 72) = 0u;
      *(v358 + 88) = 0;
      *(v358 + 96) = xmmword_1CF9FEC30;
      *(v358 + 112) = 0;
      *(v358 + 120) = v353;
      *(v358 + 128) = v355;
      *(v358 + 136) = 0;
      *(v358 + 144) = v356;
      v359 = sub_1CF4D3BC0();
      v360 = v494;
      sub_1CF902E70(v358, v359, v492, v493);
      *&v494 = v360;
      if (v360)
      {
      }

      goto LABEL_152;
    }

    if (result <= 0x2F20A3D946)
    {
LABEL_152:
      v361 = v499;
      sub_1CF033A74();
      v362 = (*(**(*(v361 + 40) + 16) + 96))(&v495);
      v363 = v495;
      v364 = sub_1CF93DAB0(v362);
      v366 = v365;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03F0, &qword_1CF9FB260);
      v367 = swift_allocObject();
      *(v367 + 16) = 0u;
      *(v367 + 32) = 0u;
      *(v367 + 48) = 1;
      *(v367 + 56) = 0u;
      *(v367 + 72) = 0u;
      *(v367 + 88) = 0;
      *(v367 + 96) = xmmword_1CF9FEC30;
      *(v367 + 112) = 0;
      *(v367 + 120) = v364;
      *(v367 + 128) = v366;
      *(v367 + 136) = 0;
      *(v367 + 144) = v363;
      v368 = sub_1CF4D3BC0();
      v369 = v494;
      sub_1CF902E70(v367, v368, v492, v493);
      *&v494 = v369;
      if (v369)
      {
        goto LABEL_55;
      }

      goto LABEL_154;
    }

    if (result <= 0x2F20A4EC0ELL)
    {
LABEL_154:
      v370 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v371 = sub_1CF93DAB0(v370);
      v373 = v372;
      v374 = v495;
      v375 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD950, &unk_1CFA056B0);
      v376 = swift_allocObject();
      *(v376 + 152) = v375;
      *(v376 + 16) = 0u;
      *(v376 + 32) = 0u;
      *(v376 + 48) = 1;
      *(v376 + 56) = 0u;
      *(v376 + 72) = 0u;
      *(v376 + 88) = 0;
      *(v376 + 96) = xmmword_1CF9FEC30;
      *(v376 + 112) = 0;
      *(v376 + 120) = v371;
      *(v376 + 128) = v373;
      *(v376 + 136) = 0;
      *(v376 + 144) = v374;
      v377 = sub_1CF4D3BC0();
      v378 = v494;
      sub_1CF902E70(v376, v377, v492, v493);
      *&v494 = v378;
      if (v378)
      {
      }

      goto LABEL_156;
    }

    if (result <= 0x2F20A6235DLL)
    {
LABEL_156:
      v379 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v380 = sub_1CF93DAB0(v379);
      v382 = v381;
      v383 = v495;
      v384 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0140, &unk_1CF9FAC50);
      v385 = swift_allocObject();
      *(v385 + 152) = v384;
      *(v385 + 16) = 0u;
      *(v385 + 32) = 0u;
      *(v385 + 48) = 1;
      *(v385 + 56) = 0u;
      *(v385 + 72) = 0u;
      *(v385 + 88) = 0;
      *(v385 + 96) = xmmword_1CF9FEC30;
      *(v385 + 112) = 0;
      *(v385 + 120) = v380;
      *(v385 + 128) = v382;
      *(v385 + 136) = 0;
      *(v385 + 144) = v383;
      v386 = sub_1CF4D3BC0();
      v387 = v494;
      sub_1CF902E70(v385, v386, v492, v493);
      *&v494 = v387;
      if (v387)
      {
      }

      goto LABEL_158;
    }

    if (result <= 0x2F20A6BC4FLL)
    {
LABEL_158:
      v388 = v499;
      sub_1CF033A74();
      v389 = (*(**(*(v388 + 40) + 16) + 96))(&v495);
      v390 = v495;
      v391 = sub_1CF93DAB0(v389);
      v393 = v392;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE50, &qword_1CF9FB248);
      v394 = swift_allocObject();
      *(v394 + 16) = 0u;
      *(v394 + 32) = 0u;
      *(v394 + 48) = 1;
      *(v394 + 56) = 0u;
      *(v394 + 72) = 0u;
      *(v394 + 88) = 0;
      *(v394 + 96) = xmmword_1CF9FEC30;
      *(v394 + 112) = 0;
      *(v394 + 120) = v391;
      *(v394 + 128) = v393;
      *(v394 + 136) = 0;
      *(v394 + 144) = v390;
      v395 = sub_1CF4D3BC0();
      v396 = v494;
      sub_1CF902E70(v394, v395, v492, v493);
      *&v494 = v396;
      if (v396)
      {
        goto LABEL_55;
      }

      goto LABEL_160;
    }

    if (result < 0x2F260259ADLL)
    {
LABEL_160:
      v397 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v398 = sub_1CF93DAB0(v397);
      v400 = v399;
      v401 = v495;
      v402 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD940, &qword_1CF9FAC30);
      v403 = swift_allocObject();
      *(v403 + 152) = v402;
      *(v403 + 16) = 0u;
      *(v403 + 32) = 0u;
      *(v403 + 48) = 1;
      *(v403 + 56) = 0u;
      *(v403 + 72) = 0u;
      *(v403 + 88) = 0;
      *(v403 + 96) = xmmword_1CF9FEC30;
      *(v403 + 112) = 0;
      *(v403 + 120) = v398;
      *(v403 + 128) = v400;
      *(v403 + 136) = 0;
      *(v403 + 144) = v401;
      v404 = sub_1CF4D3BC0();
      v405 = v494;
      sub_1CF902E70(v403, v404, v492, v493);
      *&v494 = v405;
      if (v405)
      {
      }

      goto LABEL_162;
    }

    if (result < 0x2F26025BD7)
    {
LABEL_162:
      v406 = *(v499 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
      v407 = *(swift_dynamicCastClassUnconditional() + 32);

      sub_1CF39E3AC();

      goto LABEL_163;
    }

    if (result <= 0x2F2603BA49)
    {
LABEL_163:
      v408 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v409 = sub_1CF93DAB0(v408);
      v411 = v410;
      v412 = v495;
      v413 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0160, &qword_1CF9FAC28);
      v414 = swift_allocObject();
      *(v414 + 152) = v413;
      *(v414 + 16) = 0u;
      *(v414 + 32) = 0u;
      *(v414 + 48) = 1;
      *(v414 + 56) = 0u;
      *(v414 + 72) = 0u;
      *(v414 + 88) = 0;
      *(v414 + 96) = xmmword_1CF9FEC30;
      *(v414 + 112) = 0;
      *(v414 + 120) = v409;
      *(v414 + 128) = v411;
      *(v414 + 136) = 0;
      *(v414 + 144) = v412;
      v415 = sub_1CF4D3BC0();
      v416 = v494;
      sub_1CF902E70(v414, v415, v492, v493);
      *&v494 = v416;
      if (v416)
      {
      }

      goto LABEL_165;
    }

    if (result <= 0x2F260FEDC9)
    {
LABEL_165:
      v417 = *(v499 + 32);
      v418 = (*(**(v417 + 16) + 96))(&v495, result);
      v419 = sub_1CF93DAB0(v418);
      v421 = v420;
      v422 = v495;
      v423 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
      v424 = swift_allocObject();
      *(v424 + 152) = v423;
      *(v424 + 16) = 0u;
      *(v424 + 32) = 0u;
      *(v424 + 48) = 1;
      *(v424 + 56) = 0u;
      *(v424 + 72) = 0u;
      *(v424 + 88) = 0;
      *(v424 + 120) = v419;
      *(v424 + 128) = v421;
      *(v424 + 136) = 0x8000;
      *(v424 + 144) = v422;
      v491 = xmmword_1CFA04E30;
      *(v424 + 96) = xmmword_1CFA04E30;
      *(v424 + 112) = 0;
      v425 = sub_1CF4D3BC0();
      v426 = v494;
      sub_1CF902E70(v424, v425, v492, v493);
      if (v426)
      {
      }

      v428 = (*(**(v417 + 16) + 104))(&v495, v427);
      v429 = sub_1CF93DAB0(v428);
      v431 = v430;
      v432 = v495;
      v433 = v496;
      v434 = swift_allocObject();
      *(v434 + 152) = v433;
      *(v434 + 16) = 0u;
      *(v434 + 32) = 0u;
      *(v434 + 48) = 1;
      *(v434 + 56) = 0u;
      *(v434 + 72) = 0u;
      *(v434 + 88) = 0;
      *(v434 + 120) = v429;
      *(v434 + 128) = v431;
      *(v434 + 136) = 0x8000;
      *(v434 + 144) = v432;
      *(v434 + 96) = v491;
      *(v434 + 112) = 0;
      v435 = sub_1CF4D3BC0();
      sub_1CF902E70(v434, v435, v492, v493);
      *&v494 = 0;

      goto LABEL_167;
    }

    if (result <= 0x2F2610178CLL)
    {
LABEL_167:
      v436 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v437 = sub_1CF93DAB0(v436);
      v439 = v438;
      v440 = v495;
      v441 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD938, &qword_1CF9FAC20);
      v442 = swift_allocObject();
      *(v442 + 152) = v441;
      *(v442 + 16) = 0u;
      *(v442 + 32) = 0u;
      *(v442 + 48) = 1;
      *(v442 + 56) = 0u;
      *(v442 + 72) = 0u;
      *(v442 + 88) = 0;
      *(v442 + 96) = xmmword_1CF9FEC30;
      *(v442 + 112) = 0;
      *(v442 + 120) = v437;
      *(v442 + 128) = v439;
      *(v442 + 136) = 0;
      *(v442 + 144) = v440;
      v443 = sub_1CF4D3BC0();
      v444 = v494;
      sub_1CF902E70(v442, v443, v492, v493);
      *&v494 = v444;
      if (v444)
      {
      }

      goto LABEL_169;
    }

    if (result <= 0x2F263048E5)
    {
LABEL_169:
      v445 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v446 = sub_1CF93DAB0(v445);
      v448 = v447;
      v449 = v495;
      v450 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD998, &qword_1CF9FACF0);
      v451 = swift_allocObject();
      *(v451 + 152) = v450;
      *(v451 + 16) = 0u;
      *(v451 + 32) = 0u;
      *(v451 + 48) = 1;
      *(v451 + 56) = 0u;
      *(v451 + 72) = 0u;
      *(v451 + 88) = 0;
      *(v451 + 96) = xmmword_1CF9FEC30;
      *(v451 + 112) = 0;
      *(v451 + 120) = v446;
      *(v451 + 128) = v448;
      *(v451 + 136) = 0;
      *(v451 + 144) = v449;
      v452 = sub_1CF4D3BC0();
      v453 = v494;
      sub_1CF902E70(v451, v452, v492, v493);
      *&v494 = v453;
      if (v453)
      {
      }

      goto LABEL_171;
    }

    if (result <= 0x2F263E2A11)
    {
LABEL_171:
      v454 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v455 = sub_1CF93DAB0(v454);
      v457 = v456;
      v458 = v495;
      v459 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD930, &qword_1CF9FAC10);
      v460 = swift_allocObject();
      *(v460 + 152) = v459;
      *(v460 + 16) = 0u;
      *(v460 + 32) = 0u;
      *(v460 + 48) = 1;
      *(v460 + 56) = 0u;
      *(v460 + 72) = 0u;
      *(v460 + 88) = 0;
      *(v460 + 96) = xmmword_1CF9FEC30;
      *(v460 + 112) = 0;
      *(v460 + 120) = v455;
      *(v460 + 128) = v457;
      *(v460 + 136) = 0;
      *(v460 + 144) = v458;
      v461 = sub_1CF4D3BC0();
      v462 = v494;
      sub_1CF902E70(v460, v461, v492, v493);
      *&v494 = v462;
      if (v462)
      {
      }

      goto LABEL_173;
    }

    if (result < 0x2F264D4758)
    {
LABEL_173:
      v463 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v464 = sub_1CF93DAB0(v463);
      v466 = v465;
      v467 = v495;
      v468 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0180, &qword_1CF9FAC08);
      v469 = swift_allocObject();
      *(v469 + 152) = v468;
      *(v469 + 16) = 0u;
      *(v469 + 32) = 0u;
      *(v469 + 48) = 1;
      *(v469 + 56) = 0u;
      *(v469 + 72) = 0u;
      *(v469 + 88) = 0;
      *(v469 + 96) = xmmword_1CF9FEC30;
      *(v469 + 112) = 0;
      *(v469 + 120) = v464;
      *(v469 + 128) = v466;
      *(v469 + 136) = 0;
      *(v469 + 144) = v467;
      v470 = sub_1CF4D3BC0();
      v471 = v494;
      sub_1CF902E70(v469, v470, v492, v493);
      *&v494 = v471;
      if (v471)
      {
      }

      goto LABEL_175;
    }

    if (result == 0x2F264D4758)
    {
LABEL_175:
      v472 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v473 = sub_1CF93DAB0(v472);
      v475 = v474;
      v476 = v495;
      v477 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0190, &unk_1CF9FABE0);
      v478 = swift_allocObject();
      *(v478 + 152) = v477;
      *(v478 + 16) = 0u;
      *(v478 + 32) = 0u;
      *(v478 + 48) = 1;
      *(v478 + 56) = 0u;
      *(v478 + 72) = 0u;
      *(v478 + 88) = 0;
      *(v478 + 96) = xmmword_1CF9FEC30;
      *(v478 + 112) = 0;
      *(v478 + 120) = v473;
      *(v478 + 128) = v475;
      *(v478 + 136) = 0;
      *(v478 + 144) = v476;
      v479 = sub_1CF4D3BC0();
      v480 = v494;
      sub_1CF902E70(v478, v479, v492, v493);
      *&v494 = v480;
      if (v480)
      {
      }

LABEL_177:
      v481 = (*(**(*(v499 + 32) + 16) + 96))(&v495, result);
      v482 = sub_1CF93DAB0(v481);
      v484 = v483;
      v485 = v495;
      v486 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD920, &unk_1CFA056D0);
      v487 = swift_allocObject();
      *(v487 + 152) = v486;
      *(v487 + 16) = 0u;
      *(v487 + 32) = 0u;
      *(v487 + 48) = 1;
      *(v487 + 56) = 0u;
      *(v487 + 72) = 0u;
      *(v487 + 88) = 0;
      *(v487 + 96) = xmmword_1CF9FEC30;
      *(v487 + 112) = 0;
      *(v487 + 120) = v482;
      *(v487 + 128) = v484;
      *(v487 + 136) = 0;
      *(v487 + 144) = v485;
      v488 = sub_1CF4D3BC0();
      v489 = v494;
      sub_1CF902E70(v487, v488, v492, v493);
      *&v494 = v489;
    }

    if (result <= 0x2F265CD7B9)
    {
      goto LABEL_177;
    }

    return result;
  }

LABEL_122:
  MEMORY[0x1EEE9AC00](result);
  v490[2] = 0x6F74736552443244;
  v490[3] = 0xEA00000000006572;
  v245 = v494;
  result = sub_1CF7D55FC(sub_1CF482D74, v490, v492, v493);
  *&v494 = v245;
  if (!v245)
  {
    v246 = result;
    v247 = [result next];

    if (v247)
    {
      sub_1CF24CD3C();
      swift_allocError();
      *v248 = 2;
      *(v248 + 8) = 0u;
      *(v248 + 24) = 0u;
      *(v248 + 40) = 0;
      *(v248 + 48) = 9;
      return swift_willThrow();
    }

LABEL_125:
    v249 = *(*(v499 + 32) + 16);
    if (*(v249[17] + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 16) == 1)
    {
      v250 = (*(*v249 + 96))(&v495);
      v251 = sub_1CF93DAB0(v250);
      v253 = v252;
      v254 = v495;
      v255 = v496;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9A0, &qword_1CF9FAD00);
      v256 = swift_allocObject();
      *(v256 + 152) = v255;
      *(v256 + 16) = 0u;
      *(v256 + 32) = 0u;
      *(v256 + 48) = 1;
      *(v256 + 56) = 0u;
      *(v256 + 72) = 0u;
      *(v256 + 88) = 0;
      *(v256 + 96) = xmmword_1CF9FEC30;
      *(v256 + 112) = 0;
      *(v256 + 120) = v251;
      *(v256 + 128) = v253;
      *(v256 + 136) = 0;
      *(v256 + 144) = v254;
      v257 = sub_1CF4D3BC0();
      v258 = v494;
      sub_1CF902E70(v256, v257, v492, v493);
      *&v494 = v258;
      if (v258)
      {
      }
    }

    goto LABEL_128;
  }

  return result;
}