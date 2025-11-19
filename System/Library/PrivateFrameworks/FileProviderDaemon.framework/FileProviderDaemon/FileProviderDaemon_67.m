uint64_t sub_1CF707D94(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  v13 = *a2;
  v14 = *(a2 + 8);
  if (a1 == 0x20000000 && *(v2 + 24) == 1)
  {
    v47 = v2;
    v15 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v16 = sub_1CF9E6108();
    v17 = sub_1CF9E7288();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v50 = v46;
      *v18 = 136446466;
      v19 = sub_1CF7F5394(0x20000000);
      v21 = v13;
      v22 = sub_1CEFD0DF0(v19, v20, &v50);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v48 = v21;
      v49 = v14;
      v25 = VFSItemID.description.getter(v23, v24);
      v27 = sub_1CEFD0DF0(v25, v26, &v50);

      *(v18 + 14) = v27;
      v13 = v21;
      _os_log_impl(&dword_1CEFC7000, v16, v17, "Repairing %{public}s on %s (force re-ingestion)", v18, 0x16u);
      v28 = v46;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v28, -1, -1);
      MEMORY[0x1D386CDC0](v18, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
    swift_beginAccess();
    sub_1CF6E9D5C(&v50, v13, v14);
    swift_endAccess();
    sub_1CEFD0994(v50, v51, v52);
    return 1;
  }

  else
  {
    v30 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v31 = sub_1CF9E6108();
    v32 = sub_1CF9E7298();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v47 = v5;
      v35 = v14;
      v36 = v13;
      v37 = v34;
      v50 = v34;
      *v33 = 136446466;
      v38 = sub_1CF7F5394(a1);
      v40 = sub_1CEFD0DF0(v38, v39, &v50);

      *(v33 + 4) = v40;
      *(v33 + 12) = 2080;
      v48 = v36;
      v49 = v35;
      v43 = VFSItemID.description.getter(v41, v42);
      v45 = sub_1CEFD0DF0(v43, v44, &v50);

      *(v33 + 14) = v45;
      _os_log_impl(&dword_1CEFC7000, v31, v32, "Repairing %{public}s on %s is not supported", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v37, -1, -1);
      MEMORY[0x1D386CDC0](v33, -1, -1);

      (*(v6 + 8))(v9, v47);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    return 0;
  }
}

uint64_t sub_1CF708188(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v53 = a7;
  v54 = a8;
  v55 = sub_1CF9E6118();
  v17 = *(v55 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  if (a4 == 1 && ((v24 = *a5, LODWORD(a5) = *(a5 + 8), v51 = *a6, v52 = v24, LODWORD(a6) = *(a6 + 8), a1 == 0xD000000000000021) && 0x80000001CFA58C80 == a2 || (sub_1CF9E8048() & 1) != 0) && a3 == 1)
  {
    v49 = a10;
    v50 = v10;
    v48 = a9;
    v25 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v26 = sub_1CF9E6108();
    v27 = sub_1CF9E7288();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v46 = a6;
      a6 = v28;
      v29 = swift_slowAlloc();
      v47 = a5;
      a5 = v29;
      v58 = v29;
      *a6 = 136446210;
      v30 = sub_1CF19F0C0(a1, a2, 1, a4 & 0xFFFF01);
      v32 = sub_1CEFD0DF0(v30, v31, &v58);

      *(a6 + 4) = v32;
      _os_log_impl(&dword_1CEFC7000, v26, v27, "Repairing %{public}s", a6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(a5);
      v33 = a5;
      LOBYTE(a5) = v47;
      MEMORY[0x1D386CDC0](v33, -1, -1);
      v34 = a6;
      LOBYTE(a6) = v46;
      MEMORY[0x1D386CDC0](v34, -1, -1);
    }

    (*(v17 + 8))(v23, v55);
    v58 = v52;
    v59 = a5;
    v56 = v51;
    v57 = a6;
    v35 = sub_1CF70A5C0(&v58, &v56, v53, v54, v48, v49);
  }

  else
  {
    v36 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v37 = sub_1CF9E6108();
    v38 = sub_1CF9E7298();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v58 = v40;
      *v39 = 136446210;
      v41 = sub_1CF19F0C0(a1, a2, a3, a4 & 0xFFFFFF);
      v43 = sub_1CEFD0DF0(v41, v42, &v58);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_1CEFC7000, v37, v38, "Repairing %{public}s is is not supported", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1D386CDC0](v40, -1, -1);
      MEMORY[0x1D386CDC0](v39, -1, -1);
    }

    (*(v17 + 8))(v20, v55);
    v35 = 0;
  }

  return v35 & 1;
}

uint64_t sub_1CF708564(int a1, uint64_t a2)
{
  v5 = sub_1CF9E6118();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  if (*(v2 + 24) == 1)
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      swift_beginAccess();
      v9 = v8;
      v10 = 0;
    }

    else
    {
      v11 = *a2;
      swift_beginAccess();
      v9 = v11;
      v10 = 1;
    }

    sub_1CF6E9D5C(&v14, v9, v10);
    swift_endAccess();
    sub_1CEFD0994(v14, v15, v16);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    *(&v13 - 4) = a1;
    sub_1CEFE1894(sub_1CF50E2C0);
  }

  return 1;
}

double sub_1CF7088E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v41 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v40 = *(v15 - 8);
  v16 = *(v40 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = *(a1 + 8);
  v21 = *(a2 + 16);
  v43 = *a1;
  v44 = v20;
  v22 = v42;
  (*(*v21 + 160))(&v45, &v43, a3, a4, a5, v17);
  if (!v22)
  {
    v38 = v15;
    v39 = a3;
    v42 = a4;
    v37 = v19;
    v24 = v41;
    v25 = v45;
    if (v45)
    {
      v26 = *(a2 + 40);
      v43 = v45;
      (*(*v26 + 240))(&v43, 1, v39, v42, a5);
      if ((*(v40 + 48))(v14, 1, v38) == 1)
      {

        sub_1CEFCCC44(v14, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        result = 0.0;
        *v24 = 0u;
        v24[1] = 0u;
      }

      else
      {
        v27 = v14;
        v28 = v37;
        sub_1CEFE55D0(v27, v37, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v45 = *(v28 + 8);
        v29 = a5;
        v30 = *(*v21 + 152);
        v31 = v45;
        v30(&v43, &v45, v39, v42, v29);

        v32 = v44;
        if (v44 == 255)
        {
          sub_1CEFCCC44(v37, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          result = 0.0;
          *v24 = 0u;
          v24[1] = 0u;
        }

        else
        {
          v33 = v43;
          v34 = v37;
          v36 = *(v37 + 10);
          v35 = *(v37 + 11);

          sub_1CEFCCC44(v34, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          *v24 = v33;
          *(v24 + 1) = v32;
          *(v24 + 2) = v36;
          *(v24 + 3) = v35;
        }
      }
    }

    else
    {
      result = 0.0;
      *v41 = 0u;
      v24[1] = 0u;
    }
  }

  return result;
}

uint64_t sub_1CF708C58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v29 = a6;
  v30 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v29 - v18;
  v20 = *(a1 + 8);
  v21 = *(a2 + 32);
  v31 = *a1;
  v32 = v20;
  v22 = v33;
  result = (*(*v21 + 240))(&v31, 1, a3, a4, v30, v17);
  if (!v22)
  {
    v24 = v29;
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      result = sub_1CEFCCC44(v13, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    else
    {
      sub_1CEFE55D0(v13, v19, &unk_1EC4BE360, &qword_1CF9FE650);
      v25 = *(v19 + 2);
      v26 = v19[24];
      v27 = *(v19 + 16);
      v28 = *(v19 + 17);

      result = sub_1CEFCCC44(v19, &unk_1EC4BE360, &qword_1CF9FE650);
    }

    *v24 = v25;
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;
  }

  return result;
}

uint64_t sub_1CF708E84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = sub_1CF9E5A58();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - v16;
  v18 = *(a1 + 8);
  if (*(a1 + 8))
  {
    v19 = *a1;
    if (v18 == 1)
    {

      v41 = v19;
      v42 = 0u;
      v43 = 0u;
      v38 = -1;
      v20 = fpfs_openfdbyhandle();
      if (v20 < 0)
      {
        v26 = v38;
        v27 = MEMORY[0x1D38683F0]();
        if (v26 < 0)
        {
          LODWORD(v39[0]) = 0;
          BYTE4(v39[0]) = 1;
        }

        else
        {
          LODWORD(v39[0]) = v38;
          BYTE4(v39[0]) = 0;
        }

        v40 = 0;
        v30 = sub_1CF19BBE4(v27, v39);
        sub_1CF1969CC(v39);
        swift_willThrow();

        LODWORD(v39[0]) = sub_1CF9E5308();
        sub_1CF196978();
        sub_1CF9E5658();

        (*(v37 + 56))(v17, 1, 1, v6);
      }

      else
      {
        v21 = v20;

        sub_1CF70937C(v17);
        close(v21);
      }

      sub_1CF33F8C8(v17, v13);
      if ((*(v37 + 48))(v13, 1, v6) == 1)
      {
        sub_1CEFCCC44(v17, &unk_1EC4BE310, qword_1CF9FCBE0);
        sub_1CEFCCC44(v13, &unk_1EC4BE310, qword_1CF9FCBE0);
      }

      else
      {
        v31 = *(v37 + 32);
        v31(v9, v13, v6);
        v32 = sub_1CF9E5928();
        v33 = sub_1CF9E5928();
        v34 = [v32 fp:v33 relationshipToItemAtURL:?];

        sub_1CEFCCC44(v17, &unk_1EC4BE310, qword_1CF9FCBE0);
        if (!v34)
        {
          v31(a3, v9, v6);
          result = (*(v37 + 56))(a3, 0, 1, v6);
          goto LABEL_24;
        }

        (*(v37 + 8))(v9, v6);
      }

      result = (*(v37 + 56))(a3, 1, 1, v6);
LABEL_24:
      v35 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (v19)
    {
      if (qword_1EDEAEE10 != -1)
      {
        swift_once();
      }

      sub_1CF9E5958();
    }

    else
    {
      (*(v37 + 16))(a3, a2, v6, v15);
    }

    v22 = *(v37 + 56);
    v28 = *MEMORY[0x1E69E9840];
    v24 = a3;
    v25 = 0;
  }

  else
  {
    v22 = *(v37 + 56);
    v23 = *MEMORY[0x1E69E9840];
    v24 = a3;
    v25 = 1;
  }

  return v22(v24, v25, 1, v6, v15);
}

uint64_t sub_1CF70937C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CF9E6938();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = swift_slowAlloc();
  sub_1CEFE1894(sub_1CF70B170);
  if (!v1)
  {
    sub_1CF9E6918();
    sub_1CF9E68F8();
    if (v6)
    {
      sub_1CF9E58B8();

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = sub_1CF9E5A58();
    (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
  }

  return MEMORY[0x1D386CDC0](v5, -1, -1);
}

void sub_1CF7094D0(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v67 = a6;
  v73 = a7;
  v64 = a3;
  v65 = a2;
  v62 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  v17 = sub_1CF9E5A58();
  v63 = *(v17 - 8);
  v18 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - v22;
  v24 = *a1;
  v25 = *(a1 + 8);
  v68 = v24;
  v69 = v25;
  v26 = a4;
  v27 = v66;
  sub_1CF708C58(&v68, a4, a5, v67, v73, &v70);
  if (!v27)
  {
    v66 = v24;
    v58 = v23;
    v59 = a5;
    v56 = v20;
    v28 = v64;
    v60 = v17;
    v29 = v72;
    if (v72)
    {
      v57 = 0;
      v55 = v71;
      v30 = v16;
      sub_1CF708E84(&v70, v64, v16);
      v31 = v63;
      v32 = v60;
      v33 = (*(v63 + 48))(v30, 1, v60);
      v34 = v73;
      v35 = v66;
      if (v33 != 1)
      {
        v44 = *(v31 + 32);
        v45 = v58;
        v44(v58, v30, v32);
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2918, &qword_1CFA133A8);
        v47 = v62;
        v48 = &v62[*(v46 + 48)];
        v44(v62, v45, v32);
        *v48 = v55;
        v48[1] = v29;
        (*(*(v46 - 8) + 56))(v47, 0, 1, v46);
        return;
      }

      sub_1CEFCCC44(v30, &unk_1EC4BE310, qword_1CF9FCBE0);
      v27 = v57;
    }

    else
    {
      v34 = v73;
      v35 = v66;
    }

    v68 = v35;
    v69 = v25;
    sub_1CF7088E8(&v68, v26, v59, v67, v34, &v70);
    if (v27)
    {
      return;
    }

    v36 = v72;
    if (!v72)
    {
      v43 = v62;
      goto LABEL_12;
    }

    v37 = v71;
    v38 = v28;
    v39 = v61;
    sub_1CF708E84(&v70, v38, v61);
    v40 = v63;
    v41 = v60;
    v42 = (*(v63 + 48))(v39, 1, v60);
    v43 = v62;
    if (v42 == 1)
    {

      sub_1CEFCCC44(v39, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_12:
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2918, &qword_1CFA133A8);
      (*(*(v49 - 8) + 56))(v43, 1, 1, v49);
      return;
    }

    v50 = *(v40 + 32);
    v73 = v37;
    v51 = v56;
    v50(v56, v39, v41);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2918, &qword_1CFA133A8);
    v53 = &v43[*(v52 + 48)];
    v50(v43, v51, v41);
    *v53 = v73;
    *(v53 + 1) = v36;
    (*(*(v52 - 8) + 56))(v43, 0, 1, v52);
  }
}

uint64_t sub_1CF709974(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v36 - v16;
  MEMORY[0x1EEE9AC00](v18);
  if (!a4)
  {
    v24 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E72A8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1CEFC7000, v25, v26, "Failed to set detached root bookmark: no db available", v27, 2u);
      MEMORY[0x1D386CDC0](v27, -1, -1);
    }

    v28 = *(v11 + 8);
    v29 = v14;
    goto LABEL_11;
  }

  v36[7] = *(*(a4 + 32) + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C28F8, &qword_1CFA13378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2900, &qword_1CFA13380);
  if (!swift_dynamicCast())
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1CEFCCC44(&v37, &qword_1EC4C2908, &qword_1CFA13388);
    v30 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v31 = sub_1CF9E6108();
    v32 = sub_1CF9E72A8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1CEFC7000, v31, v32, "Failed to set detached root bookmark: no deviceID", v33, 2u);
      MEMORY[0x1D386CDC0](v33, -1, -1);
    }

    else
    {
    }

    v28 = *(v11 + 8);
    v29 = v17;
LABEL_11:
    v28(v29, v10);
    v34 = 0;
    return v34 & 1;
  }

  v36[1] = v10;
  v19 = *(&v38 + 1);
  v20 = v39;
  __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
  v21 = *((*(v20 + 24))(v19, v20) + 16);

  v22 = __swift_destroy_boxed_opaque_existential_1(&v37);
  MEMORY[0x1EEE9AC00](v22);
  v36[-6] = a2;
  v36[-5] = v5;
  LODWORD(v36[-4]) = v21;
  v36[-3] = a3;
  v36[-2] = a4;
  LODWORD(v36[-1]) = a1;
  v23 = objc_autoreleasePoolPush();
  v34 = sub_1CF803A54(a4, 2, "setDetachedRootBookmark(at:attributes:rootURL:db:)", 50, 2, 1, sub_1CF70B070, &v36[-8]);
  objc_autoreleasePoolPop(v23);

  return v34 & 1;
}

void sub_1CF709E70(void *a1@<X0>, uint64_t *a2@<X1>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, _BYTE *a7@<X8>)
{
  v88 = a6;
  v99 = a5;
  v97 = a4;
  LODWORD(v98) = a3;
  v94 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v96 = &v86 - v11;
  v89 = type metadata accessor for VFSDetachedRootBookmark();
  v12 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v93 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v86 - v15;
  v16 = sub_1CF9E6118();
  v91 = *(v16 - 8);
  v92 = v16;
  v17 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2910, &qword_1CFA133A0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v86 - v22;
  v24 = sub_1CF9E5A58();
  v95 = *(v24 - 8);
  v25 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v86 - v29;
  v31 = *a2;
  v32 = a1[3];
  v33 = a1[4];
  v34 = __swift_project_boxed_opaque_existential_1(a1, v32);
  v100 = v31;
  v35 = v97;
  LOBYTE(v101) = 1;
  v36 = v104;
  sub_1CF7094D0(&v100, v98, v97, v99, v34, v32, v33, v23);
  if (!v36)
  {
    v37 = v27;
    v39 = v95;
    v38 = v96;
    v86 = v24;
    v87 = v30;
    v104 = 0;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2918, &qword_1CFA133A8);
    if ((*(*(v40 - 8) + 48))(v23, 1, v40) == 1)
    {
      sub_1CEFCCC44(v23, &qword_1EC4C2910, &qword_1CFA133A0);
      v41 = fpfs_current_or_default_log();
      v42 = v19;
      sub_1CF9E6128();
      v43 = sub_1CF9E6108();
      v44 = sub_1CF9E72A8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1CEFC7000, v43, v44, "Failed to set detached root bookmark: cannot find parent for item", v45, 2u);
        MEMORY[0x1D386CDC0](v45, -1, -1);
      }

      (*(v91 + 8))(v42, v92);
      *v94 = 0;
    }

    else
    {
      v46 = &v23[*(v40 + 48)];
      v48 = *v46;
      v47 = *(v46 + 1);
      v98 = v48;
      v99 = v47;
      v49 = v39;
      v50 = *(v39 + 32);
      v52 = v86;
      v51 = v87;
      v50(v87, v23, v86);
      v53 = *(v49 + 16);
      v53(v37, v51, v52);
      v54 = v37;
      v53(v38, v35, v52);
      (*(v49 + 56))(v38, 0, 1, v52);
      v55 = v93;
      v53(v93, v37, v52);
      v56 = v104;
      v57 = sub_1CF9E5858();
      v59 = (v49 + 8);
      v104 = v56;
      if (v56)
      {

        sub_1CEFCCC44(v38, &unk_1EC4BE310, qword_1CF9FCBE0);
        v60 = *v59;
        (*v59)(v37, v52);
        v60(v87, v52);
        v60(v55, v52);
      }

      else
      {
        v61 = v57;
        v62 = v58;
        sub_1CEFCCC44(v38, &unk_1EC4BE310, qword_1CF9FCBE0);
        v63 = *v59;
        (*v59)(v54, v52);
        v64 = v89;
        v65 = v90;
        v66 = (v55 + *(v89 + 24));
        *v66 = v61;
        v66[1] = v62;
        v67 = (v55 + v64[5]);
        v68 = v99;
        *v67 = v98;
        v67[1] = v68;
        *(v55 + v64[7]) = 1;
        sub_1CF70B098(v55, v65);
        v69 = v64[6];
        v70 = (v65 + v64[5]);
        v72 = *v70;
        v71 = v70[1];
        v73 = *(v65 + v69);
        v74 = *(v65 + v69 + 8);
        v75 = sub_1CF9E56C8();
        v76 = *(v75 + 48);
        v77 = *(v75 + 52);
        swift_allocObject();

        sub_1CEFE42D4(v73, v74);
        sub_1CF9E56B8();
        sub_1CF9E5698();
        v100 = v72;
        v101 = v71;
        v102 = v73;
        v103 = v74;
        sub_1CF2B00B0();
        v78 = v104;
        v79 = sub_1CF9E56A8();
        v104 = v78;
        if (v78)
        {

          sub_1CF70B0FC(v65);
          v63(v87, v86);

          sub_1CEFE4714(v73, v74);
        }

        else
        {
          v81 = v79;
          v82 = v80;

          v83 = sub_1CEFE4714(v73, v74);
          MEMORY[0x1EEE9AC00](v83);
          *(&v86 - 6) = v81;
          *(&v86 - 5) = v82;
          *(&v86 - 8) = v88;
          *(&v86 - 3) = 0xD000000000000021;
          *(&v86 - 2) = v84;
          *(&v86 - 2) = 0;
          v85 = v104;
          sub_1CEFE1894(sub_1CF70B158);
          sub_1CEFE4714(v81, v82);
          sub_1CF70B0FC(v90);
          v63(v87, v86);
          if (!v85)
          {
            *v94 = 1;
          }
        }
      }
    }
  }
}

uint64_t sub_1CF70A5C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v80 = a5;
  v81 = a6;
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  v82 = v12;
  v83 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v75 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v75 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v75 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v78 = v75 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v79 = v75 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = v75 - v32;
  if (*(v7 + 24) != 1)
  {
    v45 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v46 = sub_1CF9E6108();
    v47 = sub_1CF9E72A8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1CEFC7000, v46, v47, "Failed to fix blockedByParentCreation items: cannot reingest items", v48, 2u);
      MEMORY[0x1D386CDC0](v48, -1, -1);
    }

    (*(v83 + 8))(v16, v82);
    return 0;
  }

  if (!a3)
  {
    v49 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v50 = sub_1CF9E6108();
    v51 = sub_1CF9E72A8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1CEFC7000, v50, v51, "Failed to fix blockedByParentCreation items: no db available", v52, 2u);
      MEMORY[0x1D386CDC0](v52, -1, -1);
    }

    (*(v83 + 8))(v19, v82);
    return 0;
  }

  v34 = a3;
  v76 = *a1;
  v77 = a3;
  v35 = *(a1 + 8);
  v36 = *a2;
  v37 = *(a2 + 8);
  v84 = *(*(v34 + 32) + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C28F8, &qword_1CFA13378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2900, &qword_1CFA13380);
  if (!swift_dynamicCast())
  {
    memset(v87, 0, 40);
    sub_1CEFCCC44(v87, &qword_1EC4C2908, &qword_1CFA13388);
    v53 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v54 = sub_1CF9E6108();
    v55 = sub_1CF9E72A8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1CEFC7000, v54, v55, "Failed to fix blockedByParentCreation items: no deviceID", v56, 2u);
      MEMORY[0x1D386CDC0](v56, -1, -1);
    }

    else
    {
    }

    (*(v83 + 8))(v22, v82);
    return 0;
  }

  v75[1] = v36;
  v38 = *(&v87[1] + 1);
  v39 = *&v87[2];
  __swift_project_boxed_opaque_existential_1(v87, *(&v87[1] + 1));
  v40 = *((*(v39 + 24))(v38, v39) + 16);

  __swift_destroy_boxed_opaque_existential_1(v87);
  if (v35 == 255)
  {
    v41 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v42 = sub_1CF9E6108();
    v43 = sub_1CF9E72A8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1CEFC7000, v42, v43, "Failed to fix blockedByParentCreation items: no parentID", v44, 2u);
      MEMORY[0x1D386CDC0](v44, -1, -1);
    }

    else
    {
    }

    (*(v83 + 8))(v25, v82);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_dynamicCastClassUnconditional();
  *&v87[0] = v76;
  BYTE8(v87[0]) = v35;

  sub_1CF48C684(v87, 1, a4, v80, v81, v33);

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v59 = (*(*(v58 - 8) + 48))(v33, 1, v58) != 1;
  sub_1CEFCCC44(v33, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v60 = v76;
  if (v35 == 1)
  {
    v61 = v40;

    v63 = 0;
    v62 = v60;
    goto LABEL_25;
  }

  if (!v35)
  {
    v61 = v40;

    v62 = 0;
    v63 = v60;
LABEL_25:
    v87[0] = v62;
    LODWORD(v87[1]) = v63;
    memset(&v87[1] + 4, 0, 20);
    v64 = sub_1CEFDADE0(v87, v61, 0x8000);
    sub_1CF1E6520(v62, 0, v63, 0, 0);
    if ((v64 & 0x80000000) == 0)
    {
      close(v64);
    }

    if (!v59)
    {
      goto LABEL_31;
    }

LABEL_27:

    return 1;
  }

  if (v59)
  {
    goto LABEL_27;
  }

LABEL_31:
  v65 = fpfs_current_or_default_log();
  v66 = v79;
  sub_1CF9E6128();
  v67 = sub_1CF9E6108();
  v68 = sub_1CF9E7298();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v84 = v70;
    *v69 = 136315138;
    *&v87[0] = v60;
    BYTE8(v87[0]) = v35;
    v72 = VFSItemID.description.getter(v70, v71);
    v74 = sub_1CEFD0DF0(v72, v73, &v84);

    *(v69 + 4) = v74;
    v60 = v76;
    _os_log_impl(&dword_1CEFC7000, v67, v68, "fixing blockedByParentCreation on parent %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x1D386CDC0](v70, -1, -1);
    MEMORY[0x1D386CDC0](v69, -1, -1);
  }

  (*(v83 + 8))(v66, v82);
  swift_beginAccess();
  sub_1CF6E9D5C(&v84, v60, v35);
  swift_endAccess();

  sub_1CEFD0994(v84, v85, v86);
  return 1;
}

uint64_t sub_1CF70AFE4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF70B040@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1CF70B098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VFSDetachedRootBookmark();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF70B0FC(uint64_t a1)
{
  v2 = type metadata accessor for VFSDetachedRootBookmark();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF70B170@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = fpfs_fgetpath();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70B1A8(int a1, const void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E6118();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  memcpy(v11, a2, sizeof(v11));
  v9[20] = a1;
  v10 = v11;
  v6 = sub_1CEFE1894(sub_1CF70CF0C);
  MEMORY[0x1EEE9AC00](v6);
  v9[-4] = a1;
  sub_1CEFE1894(sub_1CF70D75C);
  result = 1;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF70B538(uint64_t a1, unint64_t a2)
{
  v3 = sub_1CF9E6118();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1CEFE1894(a2);
  return 1;
}

uint64_t sub_1CF70B74C(int a1, uint64_t a2)
{
  v4 = sub_1CF9E6118();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for VFSDetachedRootBookmark();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5A58();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v9, a2, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  sub_1CF36C8E0(a1, v9, v13);
  if (v13[v10[7]])
  {
    v16 = v10[6];
    v17 = &v13[v10[5]];
    v18 = v17[1];
    v32 = *v17;
    v19 = *&v13[v16];
    v20 = *&v13[v16 + 8];
    v21 = sub_1CF9E56C8();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();

    sub_1CEFE42D4(v19, v20);
    sub_1CF9E56B8();
    sub_1CF9E5698();
    v33 = v32;
    v34 = v18;
    v35 = v19;
    v36 = v20;
    sub_1CF2B00B0();
    v31 = sub_1CF9E56A8();
    v32 = v24;

    v25 = sub_1CEFE4714(v19, v20);
    MEMORY[0x1EEE9AC00](v25);
    v27 = v31;
    v26 = v32;
    *(&v30 - 6) = v31;
    *(&v30 - 5) = v26;
    *(&v30 - 8) = a1;
    *(&v30 - 3) = 0xD000000000000021;
    *(&v30 - 2) = v28;
    *(&v30 - 2) = 0;
    sub_1CEFE1894(sub_1CF70D774);
    sub_1CF70B0FC(v13);
    sub_1CEFE4714(v27, v26);
  }

  else
  {
    sub_1CF70B0FC(v13);
  }

  return 1;
}

uint64_t sub_1CF70BBE4(int a1, char a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E53C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v29, 0, sizeof(v29));
  v30 = a1;
  v31 = v29;
  sub_1CEFE1894(sub_1CF198A9C);
  v14 = WORD2(v29[0]);
  v15 = sub_1CF9E61B8() & v14;
  v16 = sub_1CF9E61C8();
  if (v15 == v16)
  {
    MEMORY[0x1EEE9AC00](v16);
    v27[-4] = a1;
    LOBYTE(v27[-3]) = a2 & 1;
    sub_1CEFE1894(sub_1CF70D078);
    result = 1;
  }

  else
  {
    v27[1] = 20;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF198A44();
    sub_1CF9E57D8();
    v17 = sub_1CF9E53A8();
    (*(v10 + 8))(v13, v9);
    swift_willThrow();
    v18 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v19 = v17;
    v20 = sub_1CF9E6108();
    v21 = sub_1CF9E72A8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_getErrorValue();
      v24 = Error.prettyDescription.getter(v28);
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_1CEFC7000, v20, v21, "Failed to set sync root bit: %@", v22, 0xCu);
      sub_1CEFCCC44(v23, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v23, -1, -1);
      MEMORY[0x1D386CDC0](v22, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
    result = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF70BFCC()
{
  v0 = sub_1CF9E6118();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  sub_1CEFE1894(sub_1CF70D0BC);
  return 1;
}

uint64_t sub_1CF70C260(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = sub_1CF9E6118();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1CEFE1894(a3);
  return 1;
}

uint64_t sub_1CF70C540(uint64_t a1, uint64_t a2)
{
  v90[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v68[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v68[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v68[-v15];
  v17 = *(a2 + 16);
  if (v17)
  {
    v69 = 0;
  }

  else
  {
    v17 = *a2;
    v69 = 1;
  }

  v19 = *(a2 + 40);
  v18 = (a2 + 40);
  if (v19 == 1)
  {
    v71 = 0;
    v72 = 0;
    v70 = 0;
    if (fpfs_fget_decmpf_info())
    {
      v20 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v21 = sub_1CF9E6108();
      v22 = sub_1CF9E72A8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v90[0] = v24;
        *v23 = 136315650;
        *&v73 = v17;
        BYTE8(v73) = v69;
        v26 = VFSItemID.description.getter(v24, v25);
        v28 = sub_1CEFD0DF0(v26, v27, v90);

        *(v23 + 4) = v28;
        *(v23 + 12) = 2048;
        swift_beginAccess();
        *(v23 + 14) = v72;
        *(v23 + 22) = 1024;
        swift_beginAccess();
        *(v23 + 24) = HIDWORD(v71);
        _os_log_impl(&dword_1CEFC7000, v21, v22, "The item %s has a malformed decmpfs attribute. Size: %ld, magic: %u", v23, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x1D386CDC0](v24, -1, -1);
        MEMORY[0x1D386CDC0](v23, -1, -1);
      }

      (*(v4 + 8))(v13, v3);
    }

    else if (v71 == -2147483647)
    {
      v40 = v18[10];
      v41 = v18[12];
      v42 = v18[13];
      v85 = v18[11];
      v86 = v41;
      v87 = v42;
      v43 = v18[6];
      v44 = v18[8];
      v45 = v18[9];
      v81 = v18[7];
      v82 = v44;
      v83 = v45;
      v84 = v40;
      v46 = v18[3];
      v76 = v18[2];
      v77 = v46;
      v47 = v18[5];
      v78 = v18[4];
      v79 = v47;
      v80 = v43;
      v48 = v18[1];
      v73 = *v18;
      v75 = *(&v48 + 1);
      v74 = v70;
      if ((fpfs_set_dataless_cmpfs_attrs() & 0x80000000) == 0)
      {
        result = 1;
        goto LABEL_13;
      }

      v58 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v59 = sub_1CF9E6108();
      v60 = sub_1CF9E72A8();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v90[0] = v62;
        *v61 = 67109378;
        v63 = MEMORY[0x1D38683F0]();
        *(v61 + 4) = v63;
        *(v61 + 8) = 2080;
        v88 = v17;
        v89 = v69;
        v65 = VFSItemID.description.getter(v63, v64);
        v67 = sub_1CEFD0DF0(v65, v66, v90);

        *(v61 + 10) = v67;
        _os_log_impl(&dword_1CEFC7000, v59, v60, "Failed to set dataless bit: %{darwin.errno}d on %s", v61, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v62);
        MEMORY[0x1D386CDC0](v62, -1, -1);
        MEMORY[0x1D386CDC0](v61, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v49 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v50 = sub_1CF9E6108();
      v51 = sub_1CF9E72A8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v88 = v53;
        *v52 = 136315394;
        *&v73 = v17;
        BYTE8(v73) = v69;
        v55 = VFSItemID.description.getter(v53, v54);
        v57 = sub_1CEFD0DF0(v55, v56, &v88);

        *(v52 + 4) = v57;
        *(v52 + 12) = 1024;
        swift_beginAccess();
        *(v52 + 14) = v71;
        _os_log_impl(&dword_1CEFC7000, v50, v51, "The item %s decmpfs attribute is not DATALESS_CMPFS_TYPE: %u", v52, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x1D386CDC0](v53, -1, -1);
        MEMORY[0x1D386CDC0](v52, -1, -1);
      }

      (*(v4 + 8))(v10, v3);
    }
  }

  else
  {
    v29 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v30 = sub_1CF9E6108();
    v31 = sub_1CF9E72A8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v88 = v33;
      *v32 = 136315138;
      *&v73 = v17;
      BYTE8(v73) = v69;
      v35 = VFSItemID.description.getter(v33, v34);
      v37 = sub_1CEFD0DF0(v35, v36, &v88);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_1CEFC7000, v30, v31, "The item %s is not a regular file, not attempting to fix the missing dataless flag", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1D386CDC0](v33, -1, -1);
      MEMORY[0x1D386CDC0](v32, -1, -1);
    }

    (*(v4 + 8))(v16, v3);
  }

  result = 0;
LABEL_13:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF70CBAC(int a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  LOWORD(v15) = 0;
  v16 = 0;
  LOWORD(v10) = 0;
  v11 = 0;
  sub_1CF70D180(&v15);
  sub_1CF70D180(&v10);
  v8 = v15;
  v9 = v16;
  v6 = v10;
  v7 = v11;
  v12 = a1;
  v13 = &v6;
  v14 = &v8;
  sub_1CEFE1894(sub_1CF70D190);
  result = 1;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF70CF0C@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = fpfs_unset_evictable();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70CF44@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = fpfs_pkg_remove_demotion_xattr();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70CF78@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = fpfs_pkg_set_bundle_bit();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70CFB0@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = fpfs_pkg_set_bundle_bit();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70CFE8@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = fpfs_pkg_remove_promotion_xattr();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70D01C@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = fpfs_remove_before_bounce_filename();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70D050@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  return sub_1CF1985AC(*(v1 + 16), *(v1 + 24), a1);
}

uint64_t sub_1CF70D078@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  *(v1 + 20);
  result = fpfs_fset_syncroot();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70D0BC@<X0>(int *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_1CF9E6978();
  v6 = unlink((v5 + 32));

  *a1 = v6;
  return result;
}

uint64_t sub_1CF70D110@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = fpfs_update_purgency();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70D148@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = fpfs_update_purgency();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70D190@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  result = fpfs_set_finder_info();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70D1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v54 = sub_1CF9E6118();
  v12 = *(v54 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v51 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v51 - v20;
  if (a1 <= 0x3FFFFFFF)
  {
    if (a1 != 0x40000 && a1 != 0x200000 && a1 != 0x400000)
    {
      goto LABEL_14;
    }

LABEL_9:
    v53 = a3;
    v22 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v23 = sub_1CF9E6108();
    v24 = sub_1CF9E7288();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v51[1] = v6;
      v27 = a5;
      v28 = a4;
      v29 = v26;
      v55 = v26;
      *v25 = 136446466;
      v30 = sub_1CF7F5394(a1);
      v32 = sub_1CEFD0DF0(v30, v31, &v55);
      v52 = a2;
      a2 = v32;

      *(v25 + 4) = a2;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_1CEFD0DF0(v28, v27, &v55);
      _os_log_impl(&dword_1CEFC7000, v23, v24, "Repairing %{public}s on %s (force re-ingestion)", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v29, -1, -1);
      MEMORY[0x1D386CDC0](v25, -1, -1);

      LODWORD(a2) = v52;
    }

    else
    {
    }

    (*(v12 + 8))(v21, v54);
    v33 = sub_1CF708564(a2, v53);
    return v33 & 1;
  }

  switch(a1)
  {
    case 0x40000000:
      goto LABEL_9;
    case 0x2000000000:
      v44 = a4;
      v45 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v46 = sub_1CF9E6108();
      v47 = sub_1CF9E7288();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = a2;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v55 = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_1CEFD0DF0(v44, a5, &v55);
        _os_log_impl(&dword_1CEFC7000, v46, v47, "Self cannibalizing item at %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x1D386CDC0](v50, -1, -1);
        MEMORY[0x1D386CDC0](v49, -1, -1);

        a2 = v48;
      }

      else
      {
      }

      (*(v12 + 8))(v18, v54);
      v33 = sub_1CF70B538(a2, sub_1CF70D724);
      return v33 & 1;
    case 0x400000000:
      goto LABEL_9;
  }

LABEL_14:
  v35 = a4;
  v36 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v37 = sub_1CF9E6108();
  v38 = sub_1CF9E7298();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v55 = v40;
    *v39 = 136446466;
    v41 = sub_1CF7F5394(a1);
    v43 = sub_1CEFD0DF0(v41, v42, &v55);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_1CEFD0DF0(v35, a5, &v55);
    _os_log_impl(&dword_1CEFC7000, v37, v38, "Repairing %{public}s on %s is not supported", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v40, -1, -1);
    MEMORY[0x1D386CDC0](v39, -1, -1);
  }

  (*(v12 + 8))(v15, v54);
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_1CF70D724@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = fpfs_purge_single_file();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70D78C()
{
  if (*(v0 + 88) != 1)
  {
    return *(v0 + 80);
  }

  result = sub_1CF7023DC(v0);
  *(v0 + 80) = result;
  *(v0 + 88) = 0;
  return result;
}

uint64_t sub_1CF70D7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v78 = a2;
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v75 - v11;
  v13 = *(a1 + 8);
  v80 = *a1;
  v77 = v13;
  v14 = *(a1 + 16);
  if (*(a1 + 24))
  {
    v88 = sub_1CF9E6A58();
    v89 = v15;
    v86 = 58;
    v87 = 0xE100000000000000;
    v84 = 47;
    v85 = 0xE100000000000000;
    v73 = sub_1CEFE4E68();
    v74 = v73;
    v71 = MEMORY[0x1E69E6158];
    v72 = v73;
    v76 = sub_1CF9E7668();
    v83 = v16;
  }

  else
  {
    v76 = 0;
    v83 = 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v20 = (v18 + 56);
  v19(v12, 1, 1, v17);
  v21 = *(a1 + 40);
  if (v21 > 2)
  {
    v22 = v83;
    if (v21 == 4)
    {
      v23 = v80;
      if (v80)
      {
        v24 = v12;
        v90 = v80;
        v25 = 1;
        goto LABEL_18;
      }

      goto LABEL_34;
    }

    if (v21 != 3)
    {
      goto LABEL_13;
    }

LABEL_11:
    if (v14)
    {
      v24 = v12;
      v25 = 0;
      v90 = v14;
      v23 = v80;
      goto LABEL_18;
    }

LABEL_34:

    v19(v81, 1, 1, v17);
    v30 = v12;
    return sub_1CEFCCC44(v30, &qword_1EC4C1B40, &unk_1CF9FCB70);
  }

  v22 = v83;
  if (v21 == 1)
  {
    goto LABEL_11;
  }

  if (v21 != 2)
  {
LABEL_13:
    v83 = v12;

    v26 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v27 = sub_1CF9E6108();
    v28 = sub_1CF9E7298();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1CEFC7000, v27, v28, "Item kind undefined.", v29, 2u);
      MEMORY[0x1D386CDC0](v29, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v19(v81, 1, 1, v17);
    v30 = v83;
    return sub_1CEFCCC44(v30, &qword_1EC4C1B40, &unk_1CF9FCB70);
  }

  v23 = v80;
  if (!v80)
  {

    v19(v81, 1, 1, v17);
    return sub_1CEFCCC44(v12, &qword_1EC4C1B40, &unk_1CF9FCB70);
  }

  v24 = v12;
  v90 = v80;
  v25 = 1;
LABEL_18:
  v91 = v25;
  v31 = v79;
  swift_beginAccess();
  v32 = *(v31 + 16);
  if (*(v32 + 16))
  {
    v33 = *(v31 + 16);

    v34 = sub_1CEFE863C(v78);
    if (v35)
    {
      v36 = *(*(v32 + 56) + 8 * v34);

      swift_beginAccess();
      v37 = *(v31 + 24);
      if (*(v37 + 16))
      {
        v38 = *(v31 + 24);

        v39 = sub_1CEFE863C(v78);
        if (v40)
        {
          v20 = *(*(v37 + 56) + 8 * v39);

          Strong = objc_sync_enter(v20);
          if (Strong)
          {
            goto LABEL_63;
          }

          v82 = v36;
          v42 = v20[20];

          v43 = objc_sync_exit(v20);
          if (v43)
          {
            MEMORY[0x1EEE9AC00](v43);
            v73 = v20;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v71, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
          }

          v44 = *(v42 + 24);

          if (v23 == v44)
          {
            (*(**(v82 + 16) + 96))(&v86, v45);
            v90 = v86;
            v91 = v87;
          }

          if (v77 != v44)
          {
            goto LABEL_56;
          }

          v46 = qword_1EDEAEE10;

          if (v46 == -1)
          {
LABEL_28:
            v47 = *(&xmmword_1EDEBBE48 + 1);
            if (v22)
            {
              if (*(&xmmword_1EDEBBE48 + 1))
              {
                v48 = xmmword_1EDEBBE48;
                swift_bridgeObjectRetain_n();

                v49 = sub_1CEFE7394(v76, v22);
                if (v50)
                {
                  if (v49 == 12565487 && v50 == 0xA300000000000000)
                  {

LABEL_42:
                    v54 = v76;
                    v55 = v83;
                    v56 = sub_1CF9E69E8();
                    v57 = sub_1CF025150(v56, v54, v55);
                    v76 = MEMORY[0x1D3868C10](v57);
                    v59 = v58;

                    goto LABEL_44;
                  }

                  v53 = sub_1CF9E8048();

                  if (v53)
                  {
                    goto LABEL_42;
                  }
                }

                v59 = v83;

LABEL_44:
                v60 = sub_1CEFE7394(v48, v47);
                if (v61)
                {
                  if (v60 == 12565487 && v61 == 0xA300000000000000)
                  {

LABEL_49:
                    v63 = sub_1CF9E69E8();
                    v64 = sub_1CF025150(v63, v48, v47);
                    v48 = MEMORY[0x1D3868C10](v64);
                    v66 = v65;

                    goto LABEL_51;
                  }

                  v62 = sub_1CF9E8048();

                  if (v62)
                  {
                    goto LABEL_49;
                  }
                }

                v66 = v47;
LABEL_51:
                v23 = v80;
                if (v76 == v48 && v59 == v66)
                {

                  swift_bridgeObjectRelease_n();
                  v52 = swift_bridgeObjectRelease_n();
                  goto LABEL_55;
                }

                v67 = sub_1CF9E8048();

                swift_bridgeObjectRelease_n();
                v52 = swift_bridgeObjectRelease_n();
                if (v67)
                {
                  goto LABEL_55;
                }

LABEL_56:
                v68 = v82;
                Strong = swift_weakLoadStrong();
                if (Strong)
                {
                  v69 = MEMORY[0x1EEE9AC00](Strong);
                  v71 = v24;
                  v72 = v68;
                  v73 = &v90;
                  (*(*v70 + 464))(1, "fetchItem(with:inDomainID:)", 27, 2, 2, sub_1CF7100D4, v69);

                  goto LABEL_58;
                }

                __break(1u);
LABEL_63:
                MEMORY[0x1EEE9AC00](Strong);
                v73 = v20;
                fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v71, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
              }
            }

            else if (!*(&xmmword_1EDEBBE48 + 1))
            {

LABEL_55:
              (*(**(v82 + 16) + 104))(&v86, v52);
              v90 = v86;
              v91 = v87;
              goto LABEL_56;
            }

            goto LABEL_56;
          }

LABEL_61:
          swift_once();
          goto LABEL_28;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_61;
    }
  }

LABEL_58:
  swift_beginAccess();
  sub_1CF6E96D8(&v92, v23);
  swift_endAccess();

  return sub_1CEFE55D0(v24, v81, &qword_1EC4C1B40, &unk_1CF9FCB70);
}

uint64_t sub_1CF70E164(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1CF9E6118();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v28 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = *(a4 + 8);
  v32 = *a4;
  v33 = v19;
  sub_1CF48C684(&v32, 0, v18, v17, v16, v15);
  if (!v4)
  {
    return sub_1CF7100F4(v15, a2);
  }

  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v21 = v4;
  v22 = sub_1CF9E6108();
  v23 = sub_1CF9E72A8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    swift_getErrorValue();
    v26 = Error.prettyDescription.getter(v31);
    *(v24 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&dword_1CEFC7000, v22, v23, "Error fetching the item in the FSSnapshot: %@", v24, 0xCu);
    sub_1CEFCCC44(v25, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v25, -1, -1);
    MEMORY[0x1D386CDC0](v24, -1, -1);
  }

  else
  {
  }

  return (*(v29 + 8))(v11, v30);
}

BOOL sub_1CF70E404(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  v11 = *(v5 + 32);
  if (*(v11 + 16))
  {
    v12 = *(v11 + 40);
    v13 = sub_1CF9E81C8();
    v14 = -1 << *(v11 + 32);
    v15 = v13 & ~v14;
    if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      while (*(*(v11 + 48) + 8 * v15) != a1)
      {
        v15 = (v15 + 1) & v16;
        if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

LABEL_6:
  swift_beginAccess();
  v17 = sub_1CF052620(a1, *(v5 + 40));
  if (v17)
  {
    return 0;
  }

  v19 = *(v5 + 48);
  v20 = *(v5 + 56);
  if (v20 != 1 || !v19)
  {
    v21 = a3 & 1 & v20;
    if (a3)
    {
      a2 = *(v5 + 48);
    }

    if (v21 == 1)
    {
      if (!v19)
      {
        a2 = 0x7FFFFFFFLL;
        if ((a5 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v17 = sub_1CF70D78C();
      a2 = v17;
    }

    if (a2 < 1)
    {
      return 0;
    }

    if ((a5 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    v17 = sub_1CF70D78C();
    a4 = v17;
LABEL_20:
    if (a4 < 1)
    {
      return 0;
    }

    if (a4 >= a2)
    {
      sub_1CF8DEF70(v17, 0.0, 1.0);
      return v22 < a2 / a4;
    }
  }

  return 1;
}

uint64_t sub_1CF70E590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a6;
  v60 = a5;
  v58 = a3;
  v61 = a1;
  v68 = sub_1CF9E6118();
  v66 = *(v68 - 8);
  v12 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v51 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v51 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v63 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v51 - v29;
  v64 = v18;
  v65 = v17;
  (*(v18 + 56))(&v51 - v29, 1, 1, v17, v28);
  v67 = a2;
  v55 = a4;
  v56 = a7;
  v54 = a8;
  v31 = v62;
  sub_1CF487090(a2, a4, a7, a8, v26);
  if (v31)
  {
    v62 = v30;
    v32 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v33 = v31;
    v34 = sub_1CF9E6108();
    v35 = sub_1CF9E72A8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 134349314;
      *(v36 + 4) = v67;
      *(v36 + 12) = 2114;
      swift_getErrorValue();
      v38 = Error.prettyDescription.getter(v69);
      *(v36 + 14) = v38;
      *v37 = v38;
      _os_log_impl(&dword_1CEFC7000, v34, v35, "Error retrieving item %{public}llu error: %{public}@", v36, 0x16u);
      sub_1CEFCCC44(v37, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v37, -1, -1);
      MEMORY[0x1D386CDC0](v36, -1, -1);
    }

    else
    {
    }

    v30 = v62;
    v40 = v63;
    v39 = v66;
    (*(v66 + 8))(v14, v68);
  }

  else
  {
    sub_1CEFCCC44(v30, &qword_1EC4C1B40, &unk_1CF9FCB70);
    sub_1CEFE55D0(v26, v30, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v39 = v66;
    v40 = v63;
  }

  sub_1CEFCCBDC(v30, v40, &qword_1EC4C1B40, &unk_1CF9FCB70);
  if ((*(v64 + 48))(v40, 1, v65) == 1)
  {
    sub_1CEFCCC44(v40, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v41 = fpfs_current_or_default_log();
    v42 = v57;
    sub_1CF9E6128();
    v43 = sub_1CF9E6108();
    v44 = sub_1CF9E72A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134349056;
      *(v45 + 4) = v67;
      _os_log_impl(&dword_1CEFC7000, v43, v44, "Enumeration returned a fileID for which no item can be found: %{public}llu", v45, 0xCu);
      MEMORY[0x1D386CDC0](v45, -1, -1);
    }

    (*(v39 + 8))(v42, v68);
    return sub_1CEFCCC44(v30, &qword_1EC4C1B40, &unk_1CF9FCB70);
  }

  else
  {
    v47 = v52;
    sub_1CEFE55D0(v40, v52, &unk_1EC4BE360, &qword_1CF9FE650);
    v48 = v53;
    swift_beginAccess();
    LOBYTE(v48) = sub_1CF052620(v67, *(v48 + 32));
    v49 = v56;
    v70[3] = v56;
    v70[4] = v54;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v70);
    (*(*(v49 - 8) + 16))(boxed_opaque_existential_0, v55, v49);
    v60(v47, v48 & 1, v58, v70);
    sub_1CEFCCC44(v47, &unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFCCC44(v30, &qword_1EC4C1B40, &unk_1CF9FCB70);
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }
}

uint64_t sub_1CF70EBDC(int a1, uint64_t a2, void *a3)
{
  v5 = v4;
  v43 = a2;
  v44 = a3;
  v7 = *(v3 + 48);
  v35 = *(v3 + 56);
  v38 = v7;
  if (v35 == 1)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = sub_1CF70D78C() < v7;
  }

  swift_beginAccess();
  v45 = v3;
  v9 = *(v3 + 16);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v40 = a1 | v8;
  v42 = v9;

  v16 = 0;
  v39 = v14;
  if (!v13)
  {
LABEL_7:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        v16 = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  while (1)
  {
LABEL_11:
    v18 = (v16 << 9) | (8 * __clz(__rbit64(v13)));
    v19 = *(*(v42 + 48) + v18);
    v20 = *(*(v42 + 56) + v18);
    v41 = v19;
    if (v40)
    {
      result = swift_weakLoadStrong();
      if (!result)
      {
        goto LABEL_37;
      }

      MEMORY[0x1EEE9AC00](result);
      v30 = v20;
      v31 = v43;
      v32 = v44;
      v33 = v45;
      v34 = v19;
      v22 = *v21;
      v36 = *(*v21 + 464);
      v37 = v22 + 464;
      v23 = v19;

      v24 = v5;
      v36(1, "enumerateItems(forceExhaustive:_:)", 34, 2, 2, sub_1CF70F5D4, v29, MEMORY[0x1E69E7CA8] + 8);
      goto LABEL_27;
    }

    v23 = v19;

    result = v38;
    if (v35)
    {
      break;
    }

LABEL_17:
    if (result < -1)
    {
      goto LABEL_35;
    }

    if ((result + 1) >= 3)
    {
      v25 = result / 2;
      goto LABEL_21;
    }

LABEL_25:
    result = swift_weakLoadStrong();
    if (!result)
    {
      goto LABEL_38;
    }

    MEMORY[0x1EEE9AC00](result);
    v30 = v20;
    v31 = v45;
    v32 = v23;
    v33 = v43;
    v34 = v44;
    v24 = v5;
    (*(*v28 + 464))(1, "enumerateItems(forceExhaustive:_:)", 34, 2, 2, sub_1CF70F57C, v29, MEMORY[0x1E69E7CA8] + 8);
LABEL_27:
    v5 = v24;
    if (v24)
    {

LABEL_32:
    }

    v13 &= v13 - 1;

    v14 = v39;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  if (v38)
  {
    result = sub_1CF70D78C();
    goto LABEL_17;
  }

  v25 = 0x3FFFFFFFLL;
LABEL_21:
  while (v25)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      goto LABEL_36;
    }

    v26 = MEMORY[0x1EEE9AC00](result);
    v30 = v45;
    v31 = v20;
    v32 = v23;
    v33 = v43;
    v34 = v44;
    (*(*v27 + 464))(1, "enumerateItems(forceExhaustive:_:)", 34, 2, 2, sub_1CF70F550, v26);

    if (v5)
    {
      goto LABEL_32;
    }

    if (!--v25)
    {
      goto LABEL_25;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1CF70F048(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, _BYTE *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  LOBYTE(a4) = sub_1CF052620(*(a1 + 32), *(a4 + 32));
  sub_1CF1A91AC(a6, v12);
  a2(a1, a4 & 1, a5, v12);
  sub_1CEFCCC44(v12, &qword_1EC4C0700, &qword_1CFA05B10);
  return 1;
}

uint64_t sub_1CF70F114(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_beginAccess();
  v13 = *(a2 + 32);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(a2 + 32);

    v16 = sub_1CF518B08(v14);
    v17 = -1 << *(v13 + 32);
    v18 = sub_1CF9E77C8();
    v19 = sub_1CF7B6BBC(v18, *(v13 + 36), 0, v16, v13);
    v30 = a3;
    v31 = a4;
    v21 = v20;
    v23 = v22;
    v24 = sub_1CF6637D0(v19, v20, v22 & 1, v13);
    sub_1CF0663D8(v19, v21, v23 & 1);

    v25 = a1[3];
    v26 = a1[4];
    v27 = __swift_project_boxed_opaque_existential_1(a1, v25);
    MEMORY[0x1EEE9AC00](v27);
    v29[2] = a5;
    v29[3] = a6;
    return sub_1CF70E590(v30, v24, v31, v28, sub_1CF710044, v29, v25, v26);
  }

  return result;
}

void sub_1CF70F280(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v14 = *(a3 + 48);
  if (*(a3 + 56) == 1)
  {
    if (v14)
    {
      v14 = sub_1CF70D78C();
    }

    else
    {
      v14 = 0x7FFFFFFFLL;
    }
  }

  MEMORY[0x1EEE9AC00](v14 / 2);
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a1;
  sub_1CF4B9E20(v15, v13, sub_1CF70F694, v16, v11, v12);
}

uint64_t sub_1CF70F36C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, BOOL, uint64_t, _BYTE *), uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 32);
  swift_beginAccess();
  if ((sub_1CF052620(v11, a2[4]) & 1) == 0)
  {
    swift_beginAccess();
    if ((sub_1CF052620(v11, a2[5]) & 1) == 0)
    {
      swift_beginAccess();
      v14 = a2[3];
      if (*(v14 + 16))
      {

        v15 = sub_1CEFE863C(a3);
        if (v16)
        {
          v17 = *(*(v14 + 56) + 8 * v15);

          v12 = sub_1CF70F6F4(a1, v17);

          goto LABEL_4;
        }
      }

      v12 = 0;
      goto LABEL_4;
    }
  }

  v12 = 1;
LABEL_4:
  sub_1CF1A91AC(a6, v18);
  a4(a1, v12, a3, v18);
  sub_1CEFCCC44(v18, &qword_1EC4C0700, &qword_1CFA05B10);
  return 1;
}

uint64_t sub_1CF70F4DC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_1CF70F5D4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = a1[3];
  v5 = a1[4];
  v8 = *(v1 + 40);
  v9 = *(v1 + 24);
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v11 = v9;
  v12 = v8;
  v13 = a1;
  return sub_1CF4BA108(v6, sub_1CF70F664, v10, v4, v5);
}

BOOL sub_1CF70F6F4(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v62 - v6;
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 32);

  v14 = objc_sync_enter(a2);
  if (v14)
  {
    MEMORY[0x1EEE9AC00](v14);
    v60 = a2;
    v57 = sub_1CF1C5288;
    goto LABEL_36;
  }

  v63 = v9;
  v15 = a2[20];

  v16 = objc_sync_exit(a2);
  if (v16)
  {
    MEMORY[0x1EEE9AC00](v16);
    v60 = a2;
    v58 = sub_1CF1C5290;
    goto LABEL_38;
  }

  v17 = *(v15 + 16);

  v69 = v13;
  v70 = 0u;
  v71 = 0u;
  LODWORD(v64) = -1;
  v18 = fpfs_openfdbyhandle();
  if (v18 < 0)
  {
    v21 = v64;
    v22 = MEMORY[0x1D38683F0]();
    if (v21 < 0)
    {
      LODWORD(v67[0]) = 0;
      BYTE4(v67[0]) = 1;
    }

    else
    {
      LODWORD(v67[0]) = v64;
      BYTE4(v67[0]) = 0;
    }

    v68 = 0;
    v23 = sub_1CF19BBE4(v22, v67);
    sub_1CF1969CC(v67);
    swift_willThrow();

    v24 = v23;
    LODWORD(v67[0]) = sub_1CF9E5308();
    sub_1CF196978();
    sub_1CF9E5658();

    v25 = v23;
    LODWORD(v67[0]) = sub_1CF9E52B8();
    v26 = sub_1CF9E5658();

    if ((v26 & 1) == 0 || *(a1 + 8) > 1u)
    {
      v29 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      sub_1CEFCCBDC(a1, v7, &unk_1EC4BE360, &qword_1CF9FE650);
      v30 = v23;
      v31 = sub_1CF9E6108();
      v32 = sub_1CF9E72A8();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v67[0] = v62;
        *v33 = 136315394;
        v35 = sub_1CF814758();
        v37 = v36;
        sub_1CEFCCC44(v7, &unk_1EC4BE360, &qword_1CF9FE650);
        v38 = sub_1CEFD0DF0(v35, v37, v67);

        *(v33 + 4) = v38;
        *(v33 + 12) = 2112;
        swift_getErrorValue();
        v39 = Error.prettyDescription.getter(v66);
        *(v33 + 14) = v39;
        *v34 = v39;
        _os_log_impl(&dword_1CEFC7000, v31, v32, "Error trying to access(%s): %@", v33, 0x16u);
        sub_1CEFCCC44(v34, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v34, -1, -1);
        v40 = v62;
        __swift_destroy_boxed_opaque_existential_1(v62);
        MEMORY[0x1D386CDC0](v40, -1, -1);
        MEMORY[0x1D386CDC0](v33, -1, -1);
      }

      else
      {

        sub_1CEFCCC44(v7, &unk_1EC4BE360, &qword_1CF9FE650);
      }

      (*(v63 + 8))(v12, v8);
      goto LABEL_16;
    }

    v27 = *(a1 + 16);
    v28 = *(a1 + 24);
    if (v28 == 1)
    {

      goto LABEL_27;
    }

    if (v28 == 2)
    {

      v42 = objc_sync_enter(a2);
      if (v27)
      {
        if (!v42)
        {
          v43 = a2[20];

          v44 = objc_sync_exit(a2);
          if (!v44)
          {
            v27 = *(v43 + 40);
            v45 = *(v43 + 48);

            if ((v45 & 1) == 0)
            {
LABEL_27:

              v42 = objc_sync_enter(a2);
              if (!v42)
              {
                v47 = a2[20];

                v44 = objc_sync_exit(a2);
                if (!v44)
                {
                  v48 = *(v47 + 16);

                  v69 = v27;
                  v70 = 0u;
                  v71 = 0u;
                  LODWORD(v64) = -1;
                  v49 = fpfs_openfdbyhandle();
                  if ((v49 & 0x80000000) == 0)
                  {
                    v50 = v49;

                    v51 = *(a1 + 136);
                    v67[0] = *(a1 + 128);
                    v67[1] = v51;
                    v69 = 47;
                    *&v70 = 0xE100000000000000;
                    v64 = 58;
                    v65 = 0xE100000000000000;
                    v60 = sub_1CEFE4E68();
                    v61 = v60;
                    v59[0] = MEMORY[0x1E69E6158];
                    v59[1] = v60;
                    sub_1CF9E7668();
                    v52 = sub_1CF9E6978();

                    v53 = faccessat(v50, (v52 + 32), 0, 32);

                    close(v50);
                    result = v53 == 0;
                    goto LABEL_17;
                  }

                  v54 = v64;
                  v55 = MEMORY[0x1D38683F0]();
                  if (v54 < 0)
                  {
                    LODWORD(v67[0]) = 0;
                    BYTE4(v67[0]) = 1;
                  }

                  else
                  {
                    LODWORD(v67[0]) = v64;
                    BYTE4(v67[0]) = 0;
                  }

                  v68 = 0;
                  v56 = sub_1CF19BBE4(v55, v67);
                  sub_1CF1969CC(v67);
                  swift_willThrow();

                  LODWORD(v67[0]) = sub_1CF9E5308();
                  sub_1CF9E5658();

                  goto LABEL_16;
                }

                goto LABEL_45;
              }

              goto LABEL_42;
            }

LABEL_16:
            result = 0;
            goto LABEL_17;
          }

LABEL_45:
          MEMORY[0x1EEE9AC00](v44);
          v60 = a2;
          v58 = sub_1CF1C5468;
LABEL_38:
          fp_preconditionFailure(_:file:line:)(v58, v59, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }
      }

      else if (!v42)
      {
        v46 = a2[20];

        v44 = objc_sync_exit(a2);
        if (!v44)
        {
          v27 = *(v46 + 24);

          goto LABEL_27;
        }

        goto LABEL_45;
      }
    }

    else
    {
      LODWORD(v61) = 0;
      v60 = 273;
      v42 = sub_1CF9E7B68();
      __break(1u);
    }

LABEL_42:
    MEMORY[0x1EEE9AC00](v42);
    v60 = a2;
    v57 = sub_1CF1C546C;
LABEL_36:
    fp_preconditionFailure(_:file:line:)(v57, v59, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v19 = v18;

  close(v19);
  result = 1;
LABEL_17:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF710044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v8 = *(v4 + 24);
  sub_1CF1A91AC(a4, v11);
  v9(a1, a2, a3, v11);
  return sub_1CEFCCC44(v11, &qword_1EC4C0700, &qword_1CFA05B10);
}

uint64_t sub_1CF7100F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF710164(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v14[0] = a3;
      LOWORD(v14[1]) = a4;
      BYTE2(v14[1]) = BYTE2(a4);
      BYTE3(v14[1]) = BYTE3(a4);
      BYTE4(v14[1]) = BYTE4(a4);
      BYTE5(v14[1]) = BYTE5(a4);
      v7 = v14 + BYTE6(a4);
      goto LABEL_9;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1CF712270(v8, v9, a1);
    goto LABEL_11;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
  v7 = v14;
LABEL_9:
  v10 = (a1)(&v13, v14, v7);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1CF7102B8(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1CF67B224(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1CF71253C(v3, v4);
    }

    else
    {
      v6 = sub_1CF7125B8(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1CF710374(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2938, &qword_1CFA13440);
  if (swift_dynamicCast())
  {
    sub_1CF054EA0(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_1CF9E5558();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1CEFCCC44(__src, &qword_1EC4C2940, qword_1CFA13448);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1CF9E79F8();
  }

  sub_1CF712324(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1CF71263C(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_1CF195854(sub_1CF712CE8);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1CF9E5AE8();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1CF4C4DE8(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1CF9E6A88();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1CF9E6AC8();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1CF9E79F8();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1CF4C4DE8(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1CF9E6A98();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_1CF9E5B08();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_1CF9E5B08();
    sub_1CEFE48D8(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_1CEFE48D8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1CEFE42D4(*&__src[0], *(&__src[0] + 1));

  sub_1CEFE4714(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t FPDAccessControlStore.swift_bookmark(for:consumerIdentifier:installSessionIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v68 = a5;
  v62 = a4;
  v71 = a2;
  v72 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2920, &qword_1CFA13428);
  v66 = *(v6 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2928, &qword_1CFA13430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v61 - v11;
  v13 = sub_1CF9E6558();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6938();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  *&v19 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 providerID];
  v23 = [a1 domainIdentifier];
  v24 = [a1 identifier];
  v25 = sub_1CF7127B8();
  v27 = v26;

  sub_1CF9E6918();
  v63 = v25;
  v65 = v27;
  v28 = sub_1CF9E68C8();
  v30 = v29;
  v31 = *(v17 + 8);
  result = v31(v21, v16);
  if (v30 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v78 = v28;
  v79 = v30;
  sub_1CF9E6918();
  v33 = sub_1CF9E68C8();
  v35 = v34;
  result = v31(v21, v16);
  if (v35 >> 60 == 15)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1CF9E5BC8();
  sub_1CEFE48D8(v33, v35);
  v36 = v68;
  v37 = v70;
  if (v68 >> 60 == 15)
  {
    v38 = sub_1CF710374(0x79636167656CLL, 0xE600000000000000);
    v40 = v39;
    sub_1CF9E5BC8();
    sub_1CEFE4714(v38, v40);
  }

  else
  {
    v41 = v62;
    sub_1CEFE42D4(v62, v68);
    sub_1CF9E5BC8();
    sub_1CEFE48D8(v41, v36);
  }

  v42 = v69;
  v44 = v78;
  v43 = v79;
  sub_1CF711018(1, v12);
  result = (*(v42 + 48))(v12, 1, v37);
  if (result != 1)
  {
    v45 = v67;
    v46 = (*(v42 + 32))(v67, v12, v37);
    MEMORY[0x1EEE9AC00](v46);
    v59 = v45;
    v47 = v64;
    v72 = v44;
    sub_1CF712090(sub_1CF7128F0, v58, v44, v43);
    v80 = v6;
    v81 = sub_1CEFCCCEC(&qword_1EDEA3958, &qword_1EC4C2920, &qword_1CFA13428);
    v48 = __swift_allocate_boxed_opaque_existential_0(&v78);
    v49 = v66;
    (*(v66 + 16))(v48, v47, v6);
    __swift_project_boxed_opaque_existential_1(&v78, v80);
    sub_1CF9E5558();
    (*(v49 + 8))(v47, v6);
    v50 = v76;
    v51 = v77;
    __swift_destroy_boxed_opaque_existential_1(&v78);
    v78 = sub_1CF9E5B58();
    v79 = v52;
    v76 = 47;
    v77 = 0xE100000000000000;
    v74 = 95;
    v75 = 0xE100000000000000;
    v59 = sub_1CEFE4E68();
    v60 = v59;
    v58[0] = MEMORY[0x1E69E6158];
    v58[1] = v59;
    v53 = sub_1CF9E7668();
    v55 = v54;

    v56 = sub_1CF9E5B48();
    [v73 addLRUSignature_];

    v78 = 792359014;
    v79 = 0xE400000000000000;
    MEMORY[0x1D3868CC0](v53, v55);

    MEMORY[0x1D3868CC0](47, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v63, v65);

    sub_1CEFE4714(v72, v43);
    sub_1CEFE4714(v50, v51);
    v57 = v78;
    (*(v42 + 8))(v45, v37);
    return v57;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1CF711018@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E6558();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6888();
  v36 = sub_1CF711380;
  v37 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1CF711574;
  v35 = &block_descriptor_37;
  v11 = _Block_copy(&aBlock);
  v12 = [v2 keyForBundleIdentifier:v10 generateIfNotFound:a1 & 1 keyGenBlock:v11];
  _Block_release(v11);

  if (v12)
  {
    v13 = sub_1CF9E5B88();
    v15 = v14;

    v16 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v16 != 2)
      {
        memset(v31, 0, 14);
        v27 = v31;
        aBlock = v31;
LABEL_24:
        v33 = v27;
        goto LABEL_25;
      }

      v18 = *(v13 + 16);
      v19 = *(v13 + 24);
      v20 = sub_1CF9E5498();
      if (v20)
      {
        v21 = sub_1CF9E54C8();
        if (__OFSUB__(v18, v21))
        {
          goto LABEL_28;
        }

        v20 += v18 - v21;
      }

      v22 = __OFSUB__(v19, v18);
      v23 = v19 - v18;
      if (!v22)
      {
        goto LABEL_17;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v31[0] = v13;
      LOWORD(v31[1]) = v15;
      BYTE2(v31[1]) = BYTE2(v15);
      BYTE3(v31[1]) = BYTE3(v15);
      BYTE4(v31[1]) = BYTE4(v15);
      BYTE5(v31[1]) = BYTE5(v15);
      aBlock = v31;
      v33 = v31 + BYTE6(v15);
LABEL_25:
      sub_1CF9E6538();
      sub_1CEFE4714(v13, v15);
      (*(v6 + 32))(a2, v9, v5);
      v17 = 0;
      goto LABEL_26;
    }

    v23 = (v13 >> 32) - v13;
    if (v13 >> 32 >= v13)
    {
      v20 = sub_1CF9E5498();
      if (!v20)
      {
LABEL_17:
        v25 = sub_1CF9E54B8();
        if (v25 >= v23)
        {
          v26 = v23;
        }

        else
        {
          v26 = v25;
        }

        v27 = (v26 + v20);
        if (!v20)
        {
          v27 = 0;
        }

        aBlock = v20;
        goto LABEL_24;
      }

      v24 = sub_1CF9E54C8();
      if (!__OFSUB__(v13, v24))
      {
        v20 += v13 - v24;
        goto LABEL_17;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = 1;
LABEL_26:
  result = (*(v6 + 56))(a2, v17, 1, v5);
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF711380()
{
  v0 = sub_1CF9E6578();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1CF9E6558();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E6568();
  sub_1CF9E6548();
  sub_1CF9E6528();
  (*(v3 + 8))(v6, v2);
  return v8[2];
}

uint64_t sub_1CF7114CC@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a1 || (v5 = a2 - a1, a2 == a1))
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v9 = sub_1CF7126DC(v6);
    v11 = v10;

    *a3 = v9;
    a3[1] = v11;
    return result;
  }

  result = sub_1CEFD0D7C(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove((result + 32), a1, v5);
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1CF711574(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);
  v6 = v5;

  v7 = sub_1CF9E5B48();
  sub_1CEFE4714(v4, v6);

  return v7;
}

id sub_1CF7115EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2920, &qword_1CFA13428);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19[-v11];
  v20 = a3;
  sub_1CF712090(sub_1CF712D70, v19, a1, a2);
  v24 = v8;
  v25 = sub_1CEFCCCEC(&qword_1EDEA3958, &qword_1EC4C2920, &qword_1CFA13428);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(v9 + 16))(boxed_opaque_existential_0, v12, v8);
  __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_1CF9E5558();
  (*(v9 + 8))(v12, v8);
  v14 = v21;
  v15 = v22;
  __swift_destroy_boxed_opaque_existential_1(v23);
  v16 = sub_1CF9E5B48();
  v17 = [v4 lookupLRUSignature_];
  sub_1CEFE4714(v14, v15);

  return v17;
}

uint64_t sub_1CF7117F0()
{
  sub_1CF9E65C8();
  sub_1CF712BE8();
  sub_1CF712C40();
  return sub_1CF9E6588();
}

uint64_t sub_1CF711874(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v70 = a6;
  v68 = a5;
  v11 = sub_1CF9E6938();
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2928, &qword_1CFA13430);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v59 - v17;
  v19 = sub_1CF9E6558();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v71 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF71290C(a1, a2, &v80);
  if (v81)
  {
    v69 = v81;
    v65 = v80;
    v66 = a3;
    v24 = v82;
    v23 = v83;
    v25 = v84;
    v67 = a4;
    v64 = v6;
    sub_1CF711018(0, v18);
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      v26 = v19;
      v62 = v20;
      v27 = *(v20 + 32);
      v28 = v71;
      v63 = v26;
      v27(v71, v18);
      v61 = v24;
      v60 = v23;
      sub_1CF7127B8();
      sub_1CF9E6918();
      v29 = sub_1CF9E68C8();
      v31 = v30;
      v32 = v73;
      v33 = *(v72 + 8);
      result = v33(v14, v73);
      if (v31 >> 60 == 15)
      {
        __break(1u);
      }

      else
      {
        v35 = v25;
        v78 = v29;
        v79 = v31;
        sub_1CF9E6918();
        v36 = sub_1CF9E68C8();
        v38 = v37;
        result = v33(v14, v32);
        v39 = v70;
        if (v38 >> 60 != 15)
        {
          sub_1CF9E5BC8();
          sub_1CEFE48D8(v36, v38);
          if (v39 >> 60 == 15)
          {
            v40 = sub_1CF710374(0x79636167656CLL, 0xE600000000000000);
            v42 = v41;
            sub_1CF9E5BC8();
            sub_1CEFE4714(v40, v42);
          }

          else
          {
            v43 = v68;
            sub_1CEFE42D4(v68, v39);
            sub_1CF9E5BC8();
            sub_1CEFE48D8(v43, v39);
          }

          v45 = v78;
          v44 = v79;
          v78 = v65;
          v79 = v69;
          v76 = 95;
          v77 = 0xE100000000000000;
          v74 = 47;
          v75 = 0xE100000000000000;
          v57 = sub_1CEFE4E68();
          v58 = v57;
          v55 = MEMORY[0x1E69E6158];
          v56 = v57;
          sub_1CF9E7668();

          v46 = sub_1CF9E5AC8();
          v48 = v47;

          if (v48 >> 60 == 15)
          {
          }

          else
          {
            v50 = v35;
            MEMORY[0x1EEE9AC00](v49);
            v55 = v45;
            v56 = v44;
            v57 = v28;
            v51 = sub_1CF710164(sub_1CF712BC8, (&v59 - 6), v46, v48);
            v52 = v61;
            v53 = v60;
            if (v51 & 1) != 0 || (sub_1CF7115EC(v45, v44, v28))
            {
              v54 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderID:v52 domainIdentifier:v53 itemIdentifier:v50];

              sub_1CEFE4714(v45, v44);
              sub_1CEFE48D8(v46, v48);
              (*(v62 + 8))(v28, v63);
              return v54;
            }

            sub_1CEFE48D8(v46, v48);
          }

          sub_1CEFE4714(v45, v44);
          (*(v62 + 8))(v28, v63);
          return 0;
        }
      }

      __break(1u);
      return result;
    }

    sub_1CEFCCC44(v18, &qword_1EC4C2928, &qword_1CFA13430);
  }

  return 0;
}

uint64_t sub_1CF711E3C@<X0>(_BYTE *a1@<X8>)
{
  sub_1CF9E65C8();
  sub_1CF712BE8();
  sub_1CF712C94();
  result = sub_1CF9E6598();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CF712090(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a3;
      LOWORD(v11[1]) = a4;
      BYTE2(v11[1]) = BYTE2(a4);
      BYTE3(v11[1]) = BYTE3(a4);
      BYTE4(v11[1]) = BYTE4(a4);
      BYTE5(v11[1]) = BYTE5(a4);
      v6 = v11 + BYTE6(a4);
LABEL_9:
      result = a1(v11, v6);
      goto LABEL_10;
    }

    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }
  }

  result = sub_1CF7121C8(v7, v8, a1);
LABEL_10:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF7121C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1CF9E5498();
  v7 = result;
  if (result)
  {
    result = sub_1CF9E54C8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1CF9E54B8();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_1CF712270(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_1CF9E5498();
  v8 = result;
  if (result)
  {
    result = sub_1CF9E54C8();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1CF9E54B8();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  a3(&v16, v8, v14);
  if (!v3)
  {
    v15 = v16;
  }

  return v15 & 1;
}

uint64_t sub_1CF712324@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1CF67B224(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1CF9E54F8();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1CF9E5488();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1CF9E5AD8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

_BYTE *sub_1CF7123EC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1CF67B224(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1CF71253C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1CF7125B8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1CF712480(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF7124EC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1CF9E7958();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF71253C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1CF9E54F8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1CF9E5488();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1CF9E5AD8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1CF7125B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1CF9E54F8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1CF9E5488();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1CF71263C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1CF67B204(result);
    }

    else
    {
      v2 = sub_1CF9E54F8();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1CF9E54A8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1CF9E5AD8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1CF7126DC(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2930, &qword_1CFA13438);
  v10 = sub_1CEFCCCEC(&unk_1EDEA3758, &qword_1EC4C2930, &qword_1CFA13438);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1CF7123EC(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_1CF7127B8()
{
  v0 = *MEMORY[0x1E6967178];
  v1 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v3 = v2;
  if (v1 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v3 == v4)
  {

    goto LABEL_8;
  }

  v6 = sub_1CF9E8048();

  if (v6)
  {
LABEL_8:
    v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v8 = 12079;
    v9 = 0xE200000000000000;
    goto LABEL_9;
  }

  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  MEMORY[0x1D3868CC0](v7);

  v8 = 47;
  v9 = 0xE100000000000000;
LABEL_9:
  MEMORY[0x1D3868CC0](v8, v9);
  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  MEMORY[0x1D3868CC0](v10);

  return v12;
}

id sub_1CF71290C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v38[0] = 47;
  v38[1] = 0xE100000000000000;
  v37[2] = v38;

  v7 = sub_1CF2A8918(4, 0, sub_1CF25107C, v37, a1, a2, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v38[0] = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v8, 0);
    v9 = v38[0];
    v10 = (v7 + 56);
    do
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;

      v15 = MEMORY[0x1D3868C10](v11, v12, v13, v14);
      v17 = v16;

      v38[0] = v9;
      v19 = v9[2];
      v18 = v9[3];
      if (v19 >= v18 >> 1)
      {
        sub_1CEFE95CC((v18 > 1), v19 + 1, 1);
        v9 = v38[0];
      }

      v9[2] = v19 + 1;
      v20 = &v9[2 * v19];
      v20[4] = v15;
      v20[5] = v17;
      v10 += 4;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v9[2] != 5 || (v9[4] == 3829862 ? (v21 = v9[5] == 0xE300000000000000) : (v21 = 0), !v21 && (sub_1CF9E8048() & 1) == 0))
  {

    v23 = 0;
    v22 = 0;
    v26 = 0;
    v33 = 0;
    v34 = 0;
LABEL_21:
    *a3 = v23;
    a3[1] = v22;
    a3[2] = v26;
    a3[3] = v33;
    a3[4] = v34;
    return result;
  }

  v23 = v9[6];
  v22 = v9[7];
  v24 = v9[8];
  v25 = v9[9];

  v26 = sub_1CF9E6888();

  if (v9[2] < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v28 = v9[10];
    v29 = v9[11];

    v30 = sub_1CF9E69D8();

    if (v30)
    {
      v31 = v9[10];
      v32 = v9[11];

      v33 = sub_1CF9E6888();
    }

    else
    {
      result = *MEMORY[0x1E6967178];
      v33 = result;
    }

    if (v9[2] >= 5uLL)
    {
      v35 = v9[12];
      v36 = v9[13];

      v34 = sub_1CF9E6888();

      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF712BC8@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1CF711E3C(a1);
}

unint64_t sub_1CF712BE8()
{
  result = qword_1EDEA3950;
  if (!qword_1EDEA3950)
  {
    sub_1CF9E65C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3950);
  }

  return result;
}

unint64_t sub_1CF712C40()
{
  result = qword_1EDEA3948;
  if (!qword_1EDEA3948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3948);
  }

  return result;
}

unint64_t sub_1CF712C94()
{
  result = qword_1EDEAB3D8;
  if (!qword_1EDEAB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB3D8);
  }

  return result;
}

void *sub_1CF712CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1CF712480(sub_1CF712D50, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t type metadata accessor for ReadOnlyWharf()
{
  result = qword_1EDEA82F8;
  if (!qword_1EDEA82F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF713060(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v65 = a4;
  v62 = a3;
  v63 = a2;
  v61 = a1;
  v64 = HIDWORD(a3);
  v4 = sub_1CF9E7388();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v58 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E7318();
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v56 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v54 = v47 - v11;
  v55 = sub_1CF9E6448();
  v52 = *(v55 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v53 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v66 = v47 - v15;
  v16 = sub_1CF9E5A58();
  v50 = *(v16 - 8);
  v17 = v50;
  v18 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v47 - v22;
  v24 = [objc_opt_self() fp_insecureTempDirectoryIgnoringPersona];
  v51 = v23;
  sub_1CF9E59D8();

  OnlyWharf = type metadata accessor for ReadOnlyWharf();
  v26 = *(OnlyWharf + 48);
  v27 = *(OnlyWharf + 52);
  v28 = swift_allocObject();
  v29 = *(v17 + 16);
  v49 = v20;
  v48 = v16;
  v29(v20, v23, v16);
  *(v28 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource) = 0;
  *(v28 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_invalidated) = 0;
  *(v28 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_activated) = 0;
  *(v28 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  *(v28 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_disableGarbageCollection) = 0;
  v30 = v28 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
  *v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  *(v30 + 8) = MEMORY[0x1E69E7CC0];
  *(v28 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentSource) = 0;
  *(v28 + 16) = 0x4F52236672616877;
  *(v28 + 24) = 0xE800000000000000;
  v32 = v28 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  *(v32 + 32) = 0u;
  *(v32 + 48) = 0u;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  swift_beginAccess();
  *(v32 + 12) = -1;
  v29((v28 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_root), v20, v16);
  v47[1] = sub_1CF701F40();
  v47[0] = "fpck should not use the wharf";
  v33 = v66;
  sub_1CF9E63E8();
  v67 = v31;
  sub_1CF713674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF4F0754();
  v34 = v54;
  sub_1CF9E77B8();
  v35 = v52;
  v36 = v33;
  v37 = v55;
  (*(v52 + 16))(v53, v36, v55);
  v38 = v57;
  (*(v57 + 16))(v56, v34, v7);
  (*(v59 + 104))(v58, *MEMORY[0x1E69E8098], v60);
  v39 = sub_1CF9E73B8();
  (*(v38 + 8))(v34, v7);
  (*(v35 + 8))(v66, v37);
  v40 = *(v50 + 8);
  v41 = v48;
  v40(v49, v48);
  v40(v51, v41);
  *(v28 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deferredWQ) = v39;
  v42 = v28 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v43 = v62;
  v44 = v63;
  *v42 = v61;
  *(v42 + 8) = v44;
  *(v42 + 16) = v43;
  *(v42 + 20) = v64;
  v45 = v65;
  *(v42 + 24) = v65 & 1;
  *(v42 + 25) = BYTE1(v45) & 1;
  *(v42 + 26) = BYTE2(v45) & 1;
  *(v28 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_reporter) = 0;
  return v28;
}

unint64_t sub_1CF713674()
{
  result = qword_1EDEAED80;
  if (!qword_1EDEAED80)
  {
    sub_1CF9E7318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAED80);
  }

  return result;
}

void sub_1CF7136CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v172 = a6;
  v173 = a5;
  v203 = a4;
  v202 = a3;
  v149 = a2;
  v147 = a1;
  v195 = sub_1CF9E6388();
  v206 = *(v195 - 8);
  v7 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v194 = (&v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v193 = &v143 - v10;
  v185 = sub_1CF9E6498();
  v199 = *(v185 - 8);
  v11 = *(v199 + 8);
  MEMORY[0x1EEE9AC00](v185);
  v192 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v170 = &v143 - v15;
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
  v16 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v174 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v145 = *(v146 - 8);
  v18 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v178 = &v143 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v143 = (&v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v175 = (&v143 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v167 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v179 = &v143 - v30;
  v189 = sub_1CF9E63D8();
  v188 = *(v189 - 8);
  v31 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v166 = &v143 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  ObjectType = &v143 - v34;
  v190 = sub_1CF9E6448();
  v205 = *(v190 - 8);
  v35 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v168 = &v143 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v183 = &v143 - v38;
  v39 = sub_1CF9E73D8();
  v204 = *(v39 - 8);
  v40 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v143 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v144 = &v143 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v169 = &v143 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v171 = &v143 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v200 = &v143 - v51;
  v187 = type metadata accessor for VFSItem(0);
  v186 = *(v187 - 8);
  v52 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v196 = &v143 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = v6;
  v54 = *(v6 + 16);
  v55 = dispatch_group_create();
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  v56 = swift_allocBox();
  v198 = v21;
  v57 = *(v21 + 56);
  v182 = v58;
  v191 = v20;
  v162 = v21 + 56;
  v161 = v57;
  v57(v58, 1, 1, v20);
  dispatch_group_enter(v55);
  v59 = swift_allocObject();
  *(v59 + 16) = v56;
  *(v59 + 24) = v55;
  v180 = v59;
  v60 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v197 = v54;
  v61 = *(v54 + 216);
  v208 = MEMORY[0x1E69E7CC0];
  v62 = sub_1CF725648(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
  v184 = v56;

  v201 = v55;
  v63 = v61;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  v65 = v189;
  v66 = sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v156 = v64;
  v67 = v179;
  v155 = v66;
  v159 = v62;
  sub_1CF9E77B8();
  v163 = v60;
  v68 = sub_1CF9E73E8();

  v69 = v188;
  v70 = *(v204 + 8);
  v164 = v42;
  v165 = v39;
  v204 += 8;
  v154 = v70;
  v70(v42, v39);
  qos_class_self();
  sub_1CF9E63B8();
  v71 = *(v69 + 48);
  v72 = v71(v67, 1, v65);
  v158 = v69 + 48;
  v157 = v71;
  if (v72 == 1)
  {
    (*(v69 + 104))(ObjectType, *MEMORY[0x1E69E7FA0], v65);
    if (v71(v67, 1, v65) != 1)
    {
      sub_1CEFCCC44(v67, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v69 + 32))(ObjectType, v67, v65);
  }

  ObjectType = swift_getObjectType();
  v73 = v183;
  sub_1CF9E6428();
  v74 = swift_allocObject();
  v75 = v202;
  *(v74 + 16) = v197;
  *(v74 + 24) = v75;
  *(v74 + 32) = v203;
  *(v74 + 40) = 0u;
  *(v74 + 56) = 0u;
  *(v74 + 72) = 0u;
  *(v74 + 88) = 0u;
  *(v74 + 104) = 0u;
  *(v74 + 120) = 0u;
  *(v74 + 136) = 0;
  *(v74 + 144) = 2049;
  *(v74 + 152) = v68;
  *(v74 + 160) = sub_1CF50EBA0;
  *(v74 + 168) = v180;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v73, sub_1CF72A328, v74);

  v76 = *(v205 + 8);
  v205 += 8;
  v153 = v76;
  v76(v73, v190);
  v77 = v192;
  sub_1CF9E6478();
  v78 = v206;
  v79 = (v206 + 104);
  v80 = *(v206 + 104);
  v81 = v193;
  v152 = *MEMORY[0x1E69E7F40];
  v82 = v195;
  (v80)(v193);
  v83 = v194;
  *v194 = 0;
  v151 = *MEMORY[0x1E69E7F28];
  v183 = v79;
  v179 = v80;
  (v80)(v83);
  MEMORY[0x1D3869770](v77, v81, v83, ObjectType);
  v84 = *(v78 + 8);
  v84(v83, v82);
  v206 = v78 + 8;
  v84(v81, v82);
  v85 = v199 + 8;
  v86 = v185;
  v150 = *(v199 + 1);
  v150(v77, v185);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v87 = v201;
  sub_1CF9E72F8();
  v88 = v182;
  swift_beginAccess();
  v89 = v198 + 48;
  v90 = v191;
  ObjectType = *(v198 + 48);
  v91 = (ObjectType)(v88, 1, v191);
  v92 = v200;
  if (v91)
  {

    v93 = v186;
    v94 = v187;
    (*(v186 + 56))(v92, 1, 1, v187);

    v95 = v196;
  }

  else
  {
    v96 = v175;
    sub_1CEFCCBDC(v88, v175, &unk_1EC4BF310, &unk_1CF9FDB30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v95 = v196;
    v94 = v187;
    v93 = v186;
    if (EnumCaseMultiPayload == 1)
    {
      v207 = *v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      return;
    }

    v98 = v96;
    v92 = v200;
    sub_1CEFE55D0(v98, v200, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }

  v201 = *(v93 + 48);
  if ((v201)(v92, 1, v94) == 1)
  {
    sub_1CEFCCC44(v92, &unk_1EC4BEC00, &unk_1CF9FCB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    swift_allocError();
    *v99 = v202;
    *(v99 + 8) = v203;
    *(v99 + 16) = 0u;
    *(v99 + 32) = 0u;
    *(v99 + 48) = 0u;
    *(v99 + 64) = 0u;
    *(v99 + 80) = 0u;
    *(v99 + 96) = 0u;
    *(v99 + 112) = 0u;
    sub_1CF2A8DE0(v99);
    swift_willThrow();
    return;
  }

  sub_1CEFE4D30(v92, v95, type metadata accessor for VFSItem);
  v100 = v177;
  sub_1CF50BCA0(v95, v178);
  if (v100)
  {
    v102 = v95;
    goto LABEL_15;
  }

  v184 = v84;
  v101 = objc_autoreleasePoolPush();
  v173(v95);
  v175 = 0;
  objc_autoreleasePoolPop(v101);
  v103 = dispatch_group_create();
  v104 = swift_allocBox();
  v106 = v105;
  v161(v105, 1, 1, v90);
  dispatch_group_enter(v103);
  v107 = swift_allocObject();
  *(v107 + 16) = v104;
  *(v107 + 24) = v103;
  v182 = v107;
  v108 = *(v197 + 216);
  v207 = MEMORY[0x1E69E7CC0];
  v180 = v104;

  v177 = v103;
  v199 = v108;
  v109 = v164;
  v110 = v165;
  sub_1CF9E77B8();
  v200 = sub_1CF9E73E8();

  v154(v109, v110);
  qos_class_self();
  v111 = v167;
  sub_1CF9E63B8();
  v112 = v189;
  v113 = v157;
  v114 = v157(v111, 1, v189);
  v176 = v106;
  if (v114 == 1)
  {
    v198 = v89;
    v199 = v85;
    (*(v188 + 104))(v166, *MEMORY[0x1E69E7FA0], v112);
    if (v113(v111, 1, v112) != 1)
    {
      sub_1CEFCCC44(v111, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    v198 = v89;
    v199 = v85;
    (*(v188 + 32))(v166, v111, v112);
  }

  v115 = v200;
  v116 = swift_getObjectType();
  v117 = v168;
  sub_1CF9E6428();
  v118 = swift_allocObject();
  v119 = v202;
  *(v118 + 16) = v197;
  *(v118 + 24) = v119;
  *(v118 + 32) = v203;
  *(v118 + 40) = 0u;
  *(v118 + 56) = 0u;
  *(v118 + 72) = 0u;
  *(v118 + 88) = 0u;
  *(v118 + 104) = 0u;
  *(v118 + 120) = 0u;
  *(v118 + 136) = 0;
  *(v118 + 144) = 2049;
  *(v118 + 152) = v115;
  *(v118 + 160) = sub_1CF50EBA0;
  *(v118 + 168) = v182;

  swift_unknownObjectRetain();

  v204 = v116;
  sub_1CEFD5828(0, v117, sub_1CF72A328, v118);

  v153(v117, v190);
  v120 = v192;
  sub_1CF9E6478();
  v121 = v193;
  v122 = v195;
  v123 = v179;
  (v179)(v193, v152, v195);
  v124 = v194;
  *v194 = 0;
  v123(v124, v151, v122);
  MEMORY[0x1D3869770](v120, v121, v124, v116);
  v125 = v184;
  v184(v124, v122);
  v125(v121, v122);
  v150(v120, v86);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v126 = v177;
  sub_1CF9E72F8();
  v127 = v176;
  swift_beginAccess();
  if (!(ObjectType)(v127, 1, v191))
  {
    v133 = v127;
    v134 = v143;
    sub_1CEFCCBDC(v133, v143, &unk_1EC4BF310, &unk_1CF9FDB30);
    v135 = swift_getEnumCaseMultiPayload();
    v130 = v170;
    v131 = v174;
    v136 = v196;
    v132 = v169;
    if (v135 != 1)
    {

      v128 = v171;
      sub_1CEFE55D0(v134, v171, &unk_1EC4BEC00, &unk_1CF9FCB60);

      v129 = v187;
      goto LABEL_25;
    }

    v209 = *v134;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    sub_1CEFE522C(v131, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFCCC44(v178, &qword_1EC4C1330, &unk_1CFA13480);

    v102 = v136;
LABEL_15:
    sub_1CEFE522C(v102, type metadata accessor for VFSItem);
    return;
  }

  v128 = v171;
  v129 = v187;
  (*(v186 + 56))(v171, 1, 1, v187);

  v130 = v170;
  v131 = v174;
  v132 = v169;
LABEL_25:
  sub_1CEFE4FF4(v131, v147, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
  v137 = v178;
  sub_1CEFCCBDC(v178, v130, &qword_1EC4C1330, &unk_1CFA13480);
  (*(v145 + 56))(v130, 0, 1, v146);
  sub_1CEFCCBDC(v128, v132, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v138 = v144;
  sub_1CEFCCBDC(v128, v144, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((v201)(v138, 1, v129) == 1)
  {
    sub_1CEFCCC44(v138, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v139 = v196;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v140 = qword_1EDEABDE8;
    sub_1CEFCCC44(v171, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFE522C(v131, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFCCC44(v137, &qword_1EC4C1330, &unk_1CFA13480);
  }

  else
  {
    v139 = v196;
    sub_1CF717E1C(v196);
    sub_1CEFCCC44(v128, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFE522C(v131, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFCCC44(v137, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFE522C(v138, type metadata accessor for VFSItem);
    v140 = v209;
  }

  v141 = v149;
  sub_1CEFE55D0(v130, v149, &qword_1EC4C1310, &qword_1CFA08AC8);
  v142 = updated;
  sub_1CEFE55D0(v132, v141 + *(updated + 20), &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v141 + *(v142 + 24)) = v140;
  sub_1CEFE522C(v139, type metadata accessor for VFSItem);
}

void sub_1CF714E9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v173 = a6;
  v174 = a5;
  v203 = a4;
  v202 = a3;
  v151 = a2;
  v150 = a1;
  v196 = sub_1CF9E6388();
  v207 = *(v196 - 8);
  v7 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v195 = (&v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v194 = &v145 - v10;
  v187 = sub_1CF9E6498();
  v200 = *(v187 - 8);
  v11 = *(v200 + 8);
  MEMORY[0x1EEE9AC00](v187);
  v193 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v170 = &v145 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1390, &unk_1CFA13500);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v175 = &v145 - v18;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v148 = *(v149 - 8);
  v19 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v179 = &v145 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v146 = (&v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v176 = (&v145 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v168 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v181 = &v145 - v31;
  v191 = sub_1CF9E63D8();
  v190 = *(v191 - 8);
  v32 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v167 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v182 = &v145 - v35;
  v192 = sub_1CF9E6448();
  v206 = *(v192 - 8);
  v36 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v192);
  v169 = &v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v184 = &v145 - v39;
  v40 = sub_1CF9E73D8();
  v205 = *(v40 - 8);
  v41 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v145 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v147 = &v145 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v172 = &v145 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v171 = &v145 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v180 = &v145 - v52;
  v189 = type metadata accessor for VFSItem(0);
  v188 = *(v189 - 8);
  v53 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v197 = &v145 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = v6;
  isa = v6[2].isa;
  v56 = dispatch_group_create();
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  v57 = swift_allocBox();
  v199 = v22;
  v58 = *(v22 + 56);
  v183 = v59;
  v186 = v21;
  v163 = v22 + 56;
  v162 = v58;
  v58(v59, 1, 1, v21);
  dispatch_group_enter(v56);
  v60 = swift_allocObject();
  *(v60 + 16) = v57;
  *(v60 + 24) = v56;
  v204 = v60;
  v61 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v198 = isa;
  v62 = *(isa + 27);
  v209 = MEMORY[0x1E69E7CC0];
  v63 = sub_1CF725648(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
  v185 = v57;

  v201 = v56;
  v64 = v62;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  v66 = v191;
  v67 = sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v157 = v65;
  v68 = v181;
  v156 = v67;
  v160 = v63;
  sub_1CF9E77B8();
  v164 = v61;
  v69 = sub_1CF9E73E8();

  v70 = v190;
  v71 = *(v205 + 8);
  v165 = v43;
  v166 = v40;
  v205 += 8;
  v155 = v71;
  v71(v43, v40);
  qos_class_self();
  sub_1CF9E63B8();
  v72 = *(v70 + 48);
  v73 = v72(v68, 1, v66);
  v159 = v70 + 48;
  v158 = v72;
  if (v73 == 1)
  {
    (*(v70 + 104))(v182, *MEMORY[0x1E69E7FA0], v66);
    if (v72(v68, 1, v66) != 1)
    {
      sub_1CEFCCC44(v68, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v70 + 32))(v182, v68, v66);
  }

  ObjectType = swift_getObjectType();
  v75 = v184;
  sub_1CF9E6428();
  v76 = swift_allocObject();
  v77 = v202;
  *(v76 + 16) = v198;
  *(v76 + 24) = v77;
  *(v76 + 32) = v203;
  *(v76 + 40) = 0u;
  *(v76 + 56) = 0u;
  *(v76 + 72) = 0u;
  *(v76 + 88) = 0u;
  *(v76 + 104) = 0u;
  *(v76 + 120) = 0u;
  *(v76 + 136) = 0;
  *(v76 + 144) = 2049;
  *(v76 + 152) = v69;
  *(v76 + 160) = sub_1CF50EBA0;
  *(v76 + 168) = v204;

  swift_unknownObjectRetain();

  v78 = ObjectType;
  sub_1CEFD5828(0, v75, sub_1CF72A328, v76);

  v79 = *(v206 + 8);
  v206 += 8;
  v182 = v79;
  (v79)(v75, v192);
  v80 = v193;
  sub_1CF9E6478();
  v81 = v207;
  v82 = v207 + 104;
  v83 = *(v207 + 104);
  v84 = v194;
  LODWORD(v181) = *MEMORY[0x1E69E7F40];
  v85 = v196;
  (v83)(v194);
  v86 = v195;
  *v195 = 0;
  v153 = *MEMORY[0x1E69E7F28];
  v184 = v83;
  (v83)(v86);
  MEMORY[0x1D3869770](v80, v84, v86, v78);
  v87 = *(v81 + 8);
  v87(v86, v85);
  v207 = v81 + 8;
  v154 = v87;
  v87(v84, v85);
  v88 = v200 + 8;
  v89 = v187;
  v152 = *(v200 + 1);
  v152(v80, v187);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v90 = v201;
  sub_1CF9E72F8();
  v91 = v183;
  swift_beginAccess();
  v92 = v199 + 48;
  v93 = v186;
  v204 = *(v199 + 48);
  if (v204(v91, 1, v186))
  {
    v183 = v82;

    v94 = v188;
    v95 = v180;
    v96 = v189;
    (*(v188 + 56))(v180, 1, 1, v189);

    v97 = v197;
  }

  else
  {
    v98 = v176;
    sub_1CEFCCBDC(v91, v176, &unk_1EC4BF310, &unk_1CF9FDB30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v97 = v197;
    v96 = v189;
    v94 = v188;
    if (EnumCaseMultiPayload == 1)
    {
      v208 = *v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      return;
    }

    v183 = v82;

    v95 = v180;
    sub_1CEFE55D0(v98, v180, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }

  v100 = *(v94 + 48);
  if ((v100)(v95, 1, v96) == 1)
  {
    sub_1CEFCCC44(v95, &unk_1EC4BEC00, &unk_1CF9FCB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    swift_allocError();
    *v101 = v202;
    *(v101 + 8) = v203;
    *(v101 + 16) = 0u;
    *(v101 + 32) = 0u;
    *(v101 + 48) = 0u;
    *(v101 + 64) = 0u;
    *(v101 + 80) = 0u;
    *(v101 + 96) = 0u;
    *(v101 + 112) = 0u;
    sub_1CF2A8DE0(v101);
    swift_willThrow();
    return;
  }

  v201 = v100;
  sub_1CEFE4D30(v95, v97, type metadata accessor for VFSItem);
  v102 = v178;
  sub_1CF50BCA0(v97, v179);
  if (v102)
  {
    v104 = v97;
    goto LABEL_15;
  }

  v103 = objc_autoreleasePoolPush();
  v174(v97);
  v174 = 0;
  objc_autoreleasePoolPop(v103);
  v105 = dispatch_group_create();
  v106 = swift_allocBox();
  v176 = v107;
  v162(v107, 1, 1, v93);
  dispatch_group_enter(v105);
  v108 = swift_allocObject();
  *(v108 + 16) = v106;
  *(v108 + 24) = v105;
  v185 = v108;
  v109 = *(v198 + 27);
  v208 = MEMORY[0x1E69E7CC0];
  v178 = v106;

  v177 = v105;
  v200 = v109;
  v110 = v165;
  v111 = v166;
  sub_1CF9E77B8();
  v180 = sub_1CF9E73E8();

  v155(v110, v111);
  qos_class_self();
  v112 = v168;
  sub_1CF9E63B8();
  v113 = v191;
  v114 = v158;
  if (v158(v112, 1, v191) == 1)
  {
    v199 = v92;
    v200 = v88;
    (*(v190 + 104))(v167, *MEMORY[0x1E69E7FA0], v113);
    if (v114(v112, 1, v113) != 1)
    {
      sub_1CEFCCC44(v112, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    v199 = v92;
    v200 = v88;
    (*(v190 + 32))(v167, v112, v113);
  }

  v115 = v180;
  v205 = swift_getObjectType();
  v116 = v169;
  sub_1CF9E6428();
  v117 = swift_allocObject();
  v118 = v202;
  *(v117 + 16) = v198;
  *(v117 + 24) = v118;
  *(v117 + 32) = v203;
  *(v117 + 40) = 0u;
  *(v117 + 56) = 0u;
  *(v117 + 72) = 0u;
  *(v117 + 88) = 0u;
  *(v117 + 104) = 0u;
  *(v117 + 120) = 0u;
  *(v117 + 136) = 0;
  *(v117 + 144) = 2049;
  *(v117 + 152) = v115;
  *(v117 + 160) = sub_1CF50EBA0;
  *(v117 + 168) = v185;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v116, sub_1CF72A328, v117);

  (v182)(v116, v192);
  v119 = v193;
  sub_1CF9E6478();
  v120 = v194;
  v121 = v196;
  v122 = v184;
  (v184)(v194, v181, v196);
  v123 = v195;
  *v195 = 0;
  v122(v123, v153, v121);
  MEMORY[0x1D3869770](v119, v120, v123, v205);
  v124 = v154;
  v154(v123, v121);
  v124(v120, v121);
  v152(v119, v89);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v125 = v177;
  sub_1CF9E72F8();
  v126 = v176;
  swift_beginAccess();
  if (!v204(v126, 1, v93))
  {
    v133 = v126;
    v134 = v146;
    sub_1CEFCCBDC(v133, v146, &unk_1EC4BF310, &unk_1CF9FDB30);
    v135 = swift_getEnumCaseMultiPayload();
    v129 = v170;
    v130 = v179;
    v131 = v175;
    v132 = v172;
    if (v135 != 1)
    {

      v127 = v171;
      sub_1CEFE55D0(v134, v171, &unk_1EC4BEC00, &unk_1CF9FCB60);

      v128 = v189;
      goto LABEL_25;
    }

    v136 = v179;
    v210 = *v134;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    sub_1CEFCCC44(v131, &unk_1EC4C1390, &unk_1CFA13500);
    sub_1CEFCCC44(v136, &qword_1EC4C1330, &unk_1CFA13480);

    v104 = v197;
LABEL_15:
    sub_1CEFE522C(v104, type metadata accessor for VFSItem);
    return;
  }

  v127 = v171;
  v128 = v189;
  (*(v188 + 56))(v171, 1, 1, v189);

  v129 = v170;
  v130 = v179;
  v131 = v175;
  v132 = v172;
LABEL_25:
  sub_1CEFCCBDC(v131, v150, &unk_1EC4C1390, &unk_1CFA13500);
  sub_1CEFCCBDC(v130, v129, &qword_1EC4C1330, &unk_1CFA13480);
  (*(v148 + 56))(v129, 0, 1, v149);
  sub_1CEFCCBDC(v127, v132, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v137 = v127;
  v138 = v127;
  v139 = v147;
  sub_1CEFCCBDC(v137, v147, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((v201)(v139, 1, v128) == 1)
  {
    sub_1CEFCCC44(v139, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v140 = qword_1EDEABDE8;
    sub_1CEFCCC44(v171, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCC44(v131, &unk_1EC4C1390, &unk_1CFA13500);
    sub_1CEFCCC44(v130, &qword_1EC4C1330, &unk_1CFA13480);
  }

  else
  {
    sub_1CF717E1C(v197);
    sub_1CEFCCC44(v138, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCC44(v131, &unk_1EC4C1390, &unk_1CFA13500);
    sub_1CEFCCC44(v130, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFE522C(v139, type metadata accessor for VFSItem);
    v140 = v210;
  }

  v141 = v172;
  v142 = v129;
  v143 = v151;
  sub_1CEFE55D0(v142, v151, &qword_1EC4C1310, &qword_1CFA08AC8);
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
  sub_1CEFE55D0(v141, v143 + *(updated + 20), &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v143 + *(updated + 24)) = v140;
  sub_1CEFE522C(v197, type metadata accessor for VFSItem);
}

void sub_1CF716664(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v169 = a6;
  v170 = a5;
  v201 = a4;
  v200 = a3;
  v146 = a2;
  v145 = a1;
  v193 = sub_1CF9E6388();
  v204 = *(v193 - 8);
  v7 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v192 = (&v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v191 = &v141 - v10;
  v190 = sub_1CF9E6498();
  v197 = *(v190 - 8);
  v11 = *(v197 + 8);
  MEMORY[0x1EEE9AC00](v190);
  v189 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v168 = &v141 - v15;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v143 = *(v144 - 8);
  v16 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v171 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v175 = &v141 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v142 = (&v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v172 = (&v141 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v163 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v177 = &v141 - v30;
  v187 = sub_1CF9E63D8();
  v186 = *(v187 - 8);
  v31 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v162 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  ObjectType = &v141 - v34;
  v188 = sub_1CF9E6448();
  v203 = *(v188 - 8);
  v35 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v164 = &v141 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v181 = &v141 - v38;
  v39 = sub_1CF9E73D8();
  v202 = *(v39 - 8);
  v40 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v165 = &v141 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v166 = &v141 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v167 = &v141 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v198 = &v141 - v51;
  v185 = type metadata accessor for VFSItem(0);
  v184 = *(v185 - 8);
  v52 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v194 = &v141 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = v6;
  v54 = *(v6 + 16);
  v55 = dispatch_group_create();
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  v56 = swift_allocBox();
  v196 = v21;
  v57 = *(v21 + 56);
  v180 = v58;
  v183 = v20;
  v158 = v21 + 56;
  v157 = v57;
  v57(v58, 1, 1, v20);
  dispatch_group_enter(v55);
  v59 = swift_allocObject();
  *(v59 + 16) = v56;
  *(v59 + 24) = v55;
  v178 = v59;
  v60 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v195 = v54;
  v61 = *(v54 + 216);
  v206 = MEMORY[0x1E69E7CC0];
  v62 = sub_1CF725648(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
  v182 = v56;

  v199 = v55;
  v63 = v61;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  v65 = v187;
  v66 = sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v153 = v64;
  v152 = v66;
  v155 = v62;
  sub_1CF9E77B8();
  v159 = v60;
  v67 = sub_1CF9E73E8();

  v68 = v186;
  v69 = *(v202 + 8);
  v160 = v42;
  v161 = v39;
  v70 = v39;
  v71 = v177;
  v202 += 8;
  v151 = v69;
  v69(v42, v70);
  qos_class_self();
  sub_1CF9E63B8();
  v72 = *(v68 + 48);
  v73 = v72(v71, 1, v65);
  v154 = v72;
  v176 = v68 + 48;
  if (v73 == 1)
  {
    (*(v68 + 104))(ObjectType, *MEMORY[0x1E69E7FA0], v65);
    if (v72(v71, 1, v65) != 1)
    {
      sub_1CEFCCC44(v71, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v68 + 32))(ObjectType, v71, v65);
  }

  ObjectType = swift_getObjectType();
  v74 = v181;
  sub_1CF9E6428();
  v75 = swift_allocObject();
  v76 = v200;
  *(v75 + 16) = v195;
  *(v75 + 24) = v76;
  *(v75 + 32) = v201;
  *(v75 + 40) = 0u;
  *(v75 + 56) = 0u;
  *(v75 + 72) = 0u;
  *(v75 + 88) = 0u;
  *(v75 + 104) = 0u;
  *(v75 + 120) = 0u;
  *(v75 + 136) = 0;
  *(v75 + 144) = 2049;
  *(v75 + 152) = v67;
  *(v75 + 160) = sub_1CF50EBA0;
  *(v75 + 168) = v178;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v74, sub_1CF72A328, v75);

  v77 = *(v203 + 8);
  v203 += 8;
  v150 = v77;
  v77(v74, v188);
  v78 = v189;
  sub_1CF9E6478();
  v79 = v204;
  v81 = (v204 + 104);
  v80 = *(v204 + 104);
  v82 = v191;
  v149 = *MEMORY[0x1E69E7F40];
  v83 = v193;
  (v80)(v191);
  v84 = v192;
  *v192 = 0;
  v148 = *MEMORY[0x1E69E7F28];
  v181 = v81;
  v177 = v80;
  (v80)(v84);
  MEMORY[0x1D3869770](v78, v82, v84, ObjectType);
  v85 = *(v79 + 8);
  v85(v84, v83);
  v204 = v79 + 8;
  v85(v82, v83);
  v86 = v197 + 8;
  v147 = *(v197 + 1);
  v147(v78, v190);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v87 = v199;
  sub_1CF9E72F8();
  v88 = v180;
  swift_beginAccess();
  v89 = v196 + 48;
  v90 = v183;
  ObjectType = *(v196 + 48);
  v91 = (ObjectType)(v88, 1, v183);
  v92 = v198;
  if (v91)
  {
    v180 = v85;

    v93 = v184;
    v94 = v185;
    (*(v184 + 56))(v92, 1, 1, v185);

    v95 = v194;
  }

  else
  {
    v96 = v172;
    sub_1CEFCCBDC(v88, v172, &unk_1EC4BF310, &unk_1CF9FDB30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v95 = v194;
    v94 = v185;
    v93 = v184;
    if (EnumCaseMultiPayload == 1)
    {
      v205 = *v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      return;
    }

    v180 = v85;

    v92 = v198;
    sub_1CEFE55D0(v96, v198, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }

  v98 = *(v93 + 48);
  if ((v98)(v92, 1, v94) == 1)
  {
    sub_1CEFCCC44(v92, &unk_1EC4BEC00, &unk_1CF9FCB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    swift_allocError();
    *v99 = v200;
    *(v99 + 8) = v201;
    *(v99 + 16) = 0u;
    *(v99 + 32) = 0u;
    *(v99 + 48) = 0u;
    *(v99 + 64) = 0u;
    *(v99 + 80) = 0u;
    *(v99 + 96) = 0u;
    *(v99 + 112) = 0u;
    sub_1CF2A8DE0(v99);
    swift_willThrow();
    return;
  }

  v199 = v98;
  sub_1CEFE4D30(v92, v95, type metadata accessor for VFSItem);
  v100 = v174;
  sub_1CF50BCA0(v95, v175);
  if (v100)
  {
    v102 = v95;
    goto LABEL_15;
  }

  v101 = objc_autoreleasePoolPush();
  v170(v95);
  v173 = 0;
  objc_autoreleasePoolPop(v101);
  v103 = dispatch_group_create();
  v104 = swift_allocBox();
  v178 = v105;
  v157(v105, 1, 1, v90);
  dispatch_group_enter(v103);
  v106 = swift_allocObject();
  *(v106 + 16) = v104;
  *(v106 + 24) = v103;
  v198 = v106;
  v107 = *(v195 + 216);
  v205 = MEMORY[0x1E69E7CC0];
  v182 = v104;

  v174 = v103;
  v197 = v107;
  v108 = v160;
  v109 = v161;
  sub_1CF9E77B8();
  v110 = sub_1CF9E73E8();

  v151(v108, v109);
  qos_class_self();
  v111 = v163;
  sub_1CF9E63B8();
  v112 = v187;
  v113 = v154;
  if (v154(v111, 1, v187) == 1)
  {
    v196 = v89;
    v197 = v86;
    (*(v186 + 104))(v162, *MEMORY[0x1E69E7FA0], v112);
    if (v113(v111, 1, v112) != 1)
    {
      sub_1CEFCCC44(v111, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    v196 = v89;
    v197 = v86;
    (*(v186 + 32))(v162, v111, v112);
  }

  v202 = swift_getObjectType();
  v114 = v164;
  sub_1CF9E6428();
  v115 = swift_allocObject();
  v116 = v200;
  *(v115 + 16) = v195;
  *(v115 + 24) = v116;
  *(v115 + 32) = v201;
  *(v115 + 40) = 0u;
  *(v115 + 56) = 0u;
  *(v115 + 72) = 0u;
  *(v115 + 88) = 0u;
  *(v115 + 104) = 0u;
  *(v115 + 120) = 0u;
  *(v115 + 136) = 0;
  *(v115 + 144) = 2049;
  *(v115 + 152) = v110;
  *(v115 + 160) = sub_1CF50EBA0;
  *(v115 + 168) = v198;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v114, sub_1CF72A328, v115);

  v150(v114, v188);
  v117 = v189;
  sub_1CF9E6478();
  v118 = v191;
  v119 = v193;
  v120 = v177;
  (v177)(v191, v149, v193);
  v121 = v192;
  *v192 = 0;
  v120(v121, v148, v119);
  MEMORY[0x1D3869770](v117, v118, v121, v202);
  v122 = v180;
  v180(v121, v119);
  v122(v118, v119);
  v147(v117, v190);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v123 = v174;
  sub_1CF9E72F8();
  v124 = v178;
  swift_beginAccess();
  if (!(ObjectType)(v124, 1, v90))
  {
    v131 = v124;
    v132 = v142;
    sub_1CEFCCBDC(v131, v142, &unk_1EC4BF310, &unk_1CF9FDB30);
    v133 = swift_getEnumCaseMultiPayload();
    v127 = v168;
    v134 = v175;
    v128 = v171;
    v129 = v166;
    v130 = v165;
    v125 = v167;
    if (v133 != 1)
    {

      sub_1CEFE55D0(v132, v125, &unk_1EC4BEC00, &unk_1CF9FCB60);

      v126 = v185;
      goto LABEL_25;
    }

    v207 = *v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    sub_1CEFCCC44(v128, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFCCC44(v134, &qword_1EC4C1330, &unk_1CFA13480);

    v102 = v194;
LABEL_15:
    sub_1CEFE522C(v102, type metadata accessor for VFSItem);
    return;
  }

  v125 = v167;
  v126 = v185;
  (*(v184 + 56))(v167, 1, 1, v185);

  v127 = v168;
  v128 = v171;
  v129 = v166;
  v130 = v165;
LABEL_25:
  sub_1CEFCCBDC(v128, v145, &qword_1EC4C1330, &unk_1CFA13480);
  sub_1CEFCCBDC(v175, v127, &qword_1EC4C1330, &unk_1CFA13480);
  (*(v143 + 56))(v127, 0, 1, v144);
  sub_1CEFCCBDC(v125, v129, &unk_1EC4BEC00, &unk_1CF9FCB60);
  sub_1CEFCCBDC(v125, v130, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((v199)(v130, 1, v126) == 1)
  {
    v135 = v175;
    v136 = v129;
    sub_1CEFCCC44(v130, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v137 = qword_1EDEABDE8;
    sub_1CEFCCC44(v167, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCC44(v128, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFCCC44(v135, &qword_1EC4C1330, &unk_1CFA13480);
    v138 = v194;
  }

  else
  {
    v136 = v129;
    v138 = v194;
    sub_1CF717E1C(v194);
    sub_1CEFCCC44(v125, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCC44(v128, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFCCC44(v175, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFE522C(v130, type metadata accessor for VFSItem);
    v137 = v207;
  }

  v139 = v146;
  sub_1CEFE55D0(v168, v146, &qword_1EC4C1310, &qword_1CFA08AC8);
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
  sub_1CEFE55D0(v136, v139 + *(updated + 20), &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v139 + *(updated + 24)) = v137;
  sub_1CEFE522C(v138, type metadata accessor for VFSItem);
}

uint64_t sub_1CF717E1C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v479 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v476 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v476 - v12;
  v484 = *(v2 + 16);
  LODWORD(v482) = *(v2 + 24);
  v14 = *(v2 + 32);
  v480 = *(v2 + 40);
  v15 = v480;
  v481 = v14;
  v16 = type metadata accessor for VFSItem(0);
  v17 = *(v16 + 28);
  v483 = v16;
  sub_1CEFE4FF4(v2 + v17, &v13[*(v7 + 48)], type metadata accessor for ItemMetadata);
  *v13 = v484;
  v13[8] = v482;
  *(v13 + 2) = v481;
  *(v13 + 3) = v15;
  v484 = *(v4 + 16);
  LODWORD(v482) = *(v4 + 24);
  v18 = *(v4 + 40);
  v481 = *(v4 + 32);
  sub_1CEFE4FF4(v4 + *(v16 + 28), &v10[*(v7 + 48)], type metadata accessor for ItemMetadata);
  *v10 = v484;
  v10[8] = v482;
  *(v10 + 2) = v481;
  *(v10 + 3) = v18;

  sub_1CF71F5B8(v10, 0, 0, &v1109);
  sub_1CEFCCC44(v10, &unk_1EC4BFD90, &unk_1CFA134F0);
  sub_1CEFCCC44(v13, &unk_1EC4BFD90, &unk_1CFA134F0);
  v19 = v483;
  v20 = (v2 + *(v483 + 36));
  v21 = *v20;
  v22 = *(v20 + 2);
  v23 = v20[2];
  v24 = *(v20 + 24);
  v25 = *(v2 + 16);
  v26 = *(v2 + 24);
  v28 = *(v2 + 32);
  v27 = *(v2 + 40);
  v484 = v2;
  LOBYTE(v1083[0]) = v24;
  v1110 = v21;
  v1111 = v22;
  v1113 = v24;
  v481 = v23;
  v1112 = v23;
  v1114 = 0;
  v1116 = v26;
  v1115 = v25;
  v1117 = v28;
  v1118 = v27;
  v1119 = 0;
  v1120 = 0;
  v1121 = 0;

  sub_1CEFCCC44(&v1110, &unk_1EC4BE330, &unk_1CF9FF010);
  v29 = (v4 + *(v19 + 36));
  v30 = *v29;
  v31 = *(v29 + 2);
  v32 = v29[2];
  v33 = *(v29 + 24);
  v34 = *(v4 + 16);
  v35 = *(v4 + 24);
  v37 = *(v4 + 32);
  v36 = *(v4 + 40);
  v482 = v4;
  LOBYTE(v1067) = v33;
  v1122 = v30;
  v1123 = v31;
  v1125 = v33;
  v480 = v32;
  v1124 = v32;
  v1126 = 0;
  v1127 = v34;
  v1128 = v35;
  v1129 = v37;
  v1130 = v36;
  v1131 = 0;
  v1132 = 0;
  v1133 = 0;

  sub_1CEFCCC44(&v1122, &unk_1EC4BE330, &unk_1CF9FF010);
  v478 = v30;
  v136 = v21 == v30;
  v38 = v31;
  if (!v136 || v22 != v31)
  {
    goto LABEL_11;
  }

  if (v24)
  {
    if (v33)
    {
      goto LABEL_12;
    }

LABEL_11:
    v1109 |= 8uLL;
    goto LABEL_12;
  }

  if (v481 == v480)
  {
    v39 = v33;
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    goto LABEL_11;
  }

LABEL_12:
  v40 = *(v484 + 16);
  v41 = *(v484 + 40);
  v477 = *(v484 + 32);
  LOBYTE(v1083[0]) = v24;
  v1085 = v21;
  v1086 = v22;
  v1088 = v24;
  v1087 = v481;
  v1089 = 0;
  v1091 = *(v484 + 24);
  v42 = v1091;
  v1090 = v40;
  v1092 = v477;
  v1093 = v41;
  v1094 = 0;
  v1096 = 0;
  v1095 = 0;
  swift_bridgeObjectRetain_n();
  sub_1CEFCCC44(&v1085, &unk_1EC4BE330, &unk_1CF9FF010);
  v43 = *(v482 + 16);
  v44 = *(v482 + 32);
  v45 = *(v482 + 40);
  LOBYTE(v1067) = v33;
  v1097 = v478;
  v1098 = v38;
  v1100 = v33;
  v1099 = v480;
  v1101 = 0;
  v1103 = *(v482 + 24);
  v46 = v1103;
  v1102 = v43;
  v1104 = v44;
  v1105 = v45;
  v1106 = 0;
  v1108 = 0;
  v1107 = 0;
  swift_bridgeObjectRetain_n();
  sub_1CEFCCC44(&v1097, &unk_1EC4BE330, &unk_1CF9FF010);
  v47 = sub_1CF443664(v40, v42, v477, v41, v43, v46, v44, v45);

  if ((v47 & 1) == 0)
  {
    v1109 |= 0x20000000000uLL;
  }

  v48 = (v484 + *(v483 + 32));
  v49 = v48[3];
  v1069 = v48[2];
  v1070 = v49;
  v50 = v48[7];
  v1073 = v48[6];
  v1074 = v50;
  v51 = v48[5];
  v1071 = v48[4];
  v1072 = v51;
  v52 = v48[11];
  v1077 = v48[10];
  v1078 = v52;
  v53 = v48[9];
  v1075 = v48[8];
  v1076 = v53;
  v1082 = *(v48 + 30);
  v54 = v48[14];
  v1080 = v48[13];
  v1081 = v54;
  v1079 = v48[12];
  v55 = v48[1];
  v1067 = *v48;
  v1068 = v55;
  v56 = (v482 + *(v483 + 32));
  v57 = v56[13];
  v1083[12] = v56[12];
  v1083[13] = v57;
  v1083[14] = v56[14];
  v1084 = *(v56 + 30);
  v58 = v56[9];
  v1083[8] = v56[8];
  v1083[9] = v58;
  v59 = v56[11];
  v1083[10] = v56[10];
  v1083[11] = v59;
  v60 = v56[5];
  v1083[4] = v56[4];
  v1083[5] = v60;
  v61 = v56[7];
  v1083[6] = v56[6];
  v1083[7] = v61;
  v62 = v56[1];
  v1083[0] = *v56;
  v1083[1] = v62;
  v63 = v56[3];
  v1083[2] = v56[2];
  v1083[3] = v63;
  enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1083);
  v65 = *&v1083[0];
  v1065[12] = v1079;
  v1065[13] = v1080;
  v1065[14] = v1081;
  v1066 = v1082;
  v1065[8] = v1075;
  v1065[9] = v1076;
  v1065[10] = v1077;
  v1065[11] = v1078;
  v1065[4] = v1071;
  v1065[5] = v1072;
  v1065[6] = v1073;
  v1065[7] = v1074;
  v1065[0] = v1067;
  v1065[1] = v1068;
  v1065[2] = v1069;
  v1065[3] = v1070;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1065) == 1)
  {
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
    {
      goto LABEL_23;
    }

LABEL_22:
    v1109 |= 0x40000uLL;
    goto LABEL_23;
  }

  if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
  {
    v66 = 0;
  }

  else
  {
    v66 = v65;
  }

  if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1 || *&v1065[0] != v66)
  {
    goto LABEL_22;
  }

LABEL_23:
  v67 = v48[13];
  v1059 = v48[12];
  v1060 = v67;
  v1061 = v48[14];
  v68 = v48[9];
  v1055 = v48[8];
  v1056 = v68;
  v69 = v48[11];
  v1057 = v48[10];
  v1058 = v69;
  v70 = v48[5];
  v1051 = v48[4];
  v1052 = v70;
  v71 = v48[7];
  v1053 = v48[6];
  v1054 = v71;
  v72 = v48[1];
  v1047 = *v48;
  v1048 = v72;
  v73 = v48[3];
  v1049 = v48[2];
  v1050 = v73;
  v74 = v56[13];
  v1063[12] = v56[12];
  v1063[13] = v74;
  v1063[14] = v56[14];
  v75 = v56[9];
  v1063[8] = v56[8];
  v1063[9] = v75;
  v76 = v56[11];
  v1063[10] = v56[10];
  v1063[11] = v76;
  v77 = v56[5];
  v1063[4] = v56[4];
  v1063[5] = v77;
  v78 = v56[7];
  v1063[6] = v56[6];
  v1063[7] = v78;
  v79 = v56[1];
  v1063[0] = *v56;
  v1063[1] = v79;
  v80 = v56[3];
  v1063[2] = v56[2];
  v1062 = *(v48 + 30);
  v1064 = *(v56 + 30);
  v1063[3] = v80;
  v81 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1063);
  v82 = BYTE8(v1063[0]);
  v1045[12] = v1059;
  v1045[13] = v1060;
  v1045[14] = v1061;
  v1046 = v1062;
  v1045[8] = v1055;
  v1045[9] = v1056;
  v1045[10] = v1057;
  v1045[11] = v1058;
  v1045[4] = v1051;
  v1045[5] = v1052;
  v1045[6] = v1053;
  v1045[7] = v1054;
  v1045[0] = v1047;
  v1045[1] = v1048;
  v1045[2] = v1049;
  v1045[3] = v1050;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1045) == 1)
  {
    if (v81 == 1)
    {
      goto LABEL_29;
    }

LABEL_28:
    v1109 |= 0x80000uLL;
    goto LABEL_29;
  }

  if (v81 == 1 || ((v82 ^ BYTE8(v1045[0])) & 1) != 0)
  {
    goto LABEL_28;
  }

LABEL_29:
  v83 = v48[13];
  v1039 = v48[12];
  v1040 = v83;
  v1041 = v48[14];
  v84 = v48[9];
  v1035 = v48[8];
  v1036 = v84;
  v85 = v48[11];
  v1037 = v48[10];
  v1038 = v85;
  v86 = v48[5];
  v1031 = v48[4];
  v1032 = v86;
  v87 = v48[7];
  v1033 = v48[6];
  v1034 = v87;
  v88 = v48[1];
  v1027 = *v48;
  v1028 = v88;
  v89 = v48[3];
  v1029 = v48[2];
  v1030 = v89;
  v90 = v56[13];
  v1043[12] = v56[12];
  v1043[13] = v90;
  v1043[14] = v56[14];
  v91 = v56[9];
  v1043[8] = v56[8];
  v1043[9] = v91;
  v92 = v56[11];
  v1043[10] = v56[10];
  v1043[11] = v92;
  v93 = v56[5];
  v1043[4] = v56[4];
  v1043[5] = v93;
  v94 = v56[7];
  v1043[6] = v56[6];
  v1043[7] = v94;
  v95 = v56[1];
  v1043[0] = *v56;
  v1043[1] = v95;
  v96 = v56[3];
  v1043[2] = v56[2];
  v1042 = *(v48 + 30);
  v1044 = *(v56 + 30);
  v1043[3] = v96;
  v97 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1043);
  v98 = BYTE9(v1043[0]);
  v1025[12] = v1039;
  v1025[13] = v1040;
  v1025[14] = v1041;
  v1026 = v1042;
  v1025[8] = v1035;
  v1025[9] = v1036;
  v1025[10] = v1037;
  v1025[11] = v1038;
  v1025[4] = v1031;
  v1025[5] = v1032;
  v1025[6] = v1033;
  v1025[7] = v1034;
  v1025[0] = v1027;
  v1025[1] = v1028;
  v1025[2] = v1029;
  v1025[3] = v1030;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1025) != 1)
  {
    if (v97 != 1 && ((v98 ^ BYTE9(v1025[0])) & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v97 != 1)
  {
LABEL_34:
    v1109 |= 0x100000uLL;
  }

LABEL_35:
  v99 = v48[13];
  v1021 = v48[12];
  v1022 = v99;
  v1023 = v48[14];
  v100 = v48[9];
  v1017 = v48[8];
  v1018 = v100;
  v101 = v48[11];
  v1019 = v48[10];
  v1020 = v101;
  v102 = v48[5];
  v1013 = v48[4];
  v1014 = v102;
  v103 = v48[7];
  v1015 = v48[6];
  v1016 = v103;
  v104 = v48[1];
  v1009 = *v48;
  v1010 = v104;
  v105 = v48[3];
  v1011 = v48[2];
  v1024 = *(v48 + 30);
  v1012 = v105;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1009) == 1)
  {
    v106 = 0;
  }

  else
  {
    v106 = v1010;
    v107 = v1010;
  }

  v108 = v56[13];
  v1005 = v56[12];
  v1006 = v108;
  v1007 = v56[14];
  v109 = v56[9];
  v1001 = v56[8];
  v1002 = v109;
  v110 = v56[11];
  v1003 = v56[10];
  v1004 = v110;
  v111 = v56[5];
  v997 = v56[4];
  v998 = v111;
  v112 = v56[7];
  v999 = v56[6];
  v1000 = v112;
  v113 = v56[1];
  v993 = *v56;
  v994 = v113;
  v114 = v56[3];
  v995 = v56[2];
  v1008 = *(v56 + 30);
  v996 = v114;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v993) == 1)
  {
    if (!v106)
    {

      goto LABEL_49;
    }

    v115 = sub_1CF9E57E8();
LABEL_45:

    goto LABEL_48;
  }

  v116 = v994;
  v117 = v994;
  if (!v106)
  {

    if (!v116)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v115 = sub_1CF9E57E8();
  if (!v116)
  {
    goto LABEL_45;
  }

  v118 = v115;
  v119 = sub_1CF9E57E8();
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  v120 = sub_1CF9E7568();

  if ((v120 & 1) == 0)
  {
LABEL_48:
    v1109 |= 0x200000uLL;
  }

LABEL_49:
  v121 = v48[13];
  v989 = v48[12];
  v990 = v121;
  v991 = v48[14];
  v122 = v48[9];
  v985 = v48[8];
  v986 = v122;
  v123 = v48[11];
  v987 = v48[10];
  v988 = v123;
  v124 = v48[5];
  v981 = v48[4];
  v982 = v124;
  v125 = v48[7];
  v983 = v48[6];
  v984 = v125;
  v126 = v48[1];
  v977 = *v48;
  v978 = v126;
  v127 = v48[3];
  v979 = v48[2];
  v992 = *(v48 + 30);
  v980 = v127;
  v128 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v977);
  v129 = v56[13];
  v973 = v56[12];
  v974 = v129;
  v975 = v56[14];
  v130 = v56[9];
  v969 = v56[8];
  v970 = v130;
  v131 = v56[11];
  v971 = v56[10];
  v972 = v131;
  v132 = v56[5];
  v965 = v56[4];
  v966 = v132;
  v133 = v56[7];
  v967 = v56[6];
  v968 = v133;
  v134 = v56[1];
  v961 = *v56;
  v962 = v134;
  v135 = v56[3];
  v963 = v56[2];
  v136 = v128 == 1 || *(&v978 + 1) == 0;
  v137 = !v136;
  v976 = *(v56 + 30);
  v964 = v135;
  v139 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v961) == 1 || *(&v962 + 1) == 0;
  if (v137 == v139)
  {
    v1109 |= 0x400000uLL;
  }

  v140 = v48[13];
  v942 = v48[12];
  v943 = v140;
  v944 = v48[14];
  v141 = v48[9];
  v938 = v48[8];
  v939 = v141;
  v142 = v48[11];
  v940 = v48[10];
  v941 = v142;
  v143 = v48[5];
  v934 = v48[4];
  v935 = v143;
  v144 = v48[7];
  v936 = v48[6];
  v937 = v144;
  v145 = v48[1];
  v930 = *v48;
  v931 = v145;
  v146 = v48[3];
  v932 = v48[2];
  v933 = v146;
  v147 = v56[13];
  v957 = v56[12];
  v958 = v147;
  v959 = v56[14];
  v148 = v56[9];
  v953 = v56[8];
  v954 = v148;
  v149 = v56[11];
  v955 = v56[10];
  v956 = v149;
  v150 = v56[5];
  v949 = v56[4];
  v950 = v150;
  v151 = v56[7];
  v951 = v56[6];
  v952 = v151;
  v152 = v56[1];
  v946[0] = *v56;
  v946[1] = v152;
  v153 = v56[3];
  v947 = v56[2];
  v945 = *(v48 + 30);
  v960 = *(v56 + 30);
  v948 = v153;
  v154 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v946);
  v155 = v947;
  v926 = v942;
  v927 = v943;
  v928 = v944;
  v929 = v945;
  v922 = v938;
  v923 = v939;
  v924 = v940;
  v925 = v941;
  v918 = v934;
  v919 = v935;
  v920 = v936;
  v921 = v937;
  v915[0] = v930;
  v915[1] = v931;
  v916 = v932;
  v917 = v933;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v915) == 1)
  {
    if (v154 == 1)
    {
      goto LABEL_69;
    }

LABEL_68:
    v1109 |= 0x1000000uLL;
    goto LABEL_69;
  }

  if (v154 == 1 || ((v155 ^ v916) & 1) != 0)
  {
    goto LABEL_68;
  }

LABEL_69:
  v156 = v48[13];
  v896 = v48[12];
  v897 = v156;
  v898 = v48[14];
  v899 = *(v48 + 30);
  v157 = v48[9];
  v892 = v48[8];
  v893 = v157;
  v158 = v48[11];
  v894 = v48[10];
  v895 = v158;
  v159 = v48[5];
  v888 = v48[4];
  v889 = v159;
  v160 = v48[7];
  v890 = v48[6];
  v891 = v160;
  v161 = v48[1];
  v884 = *v48;
  v885 = v161;
  v162 = v48[3];
  v886 = v48[2];
  v887 = v162;
  v163 = v56[13];
  v911 = v56[12];
  v912 = v163;
  v913 = v56[14];
  v914 = *(v56 + 30);
  v164 = v56[9];
  v907 = v56[8];
  v908 = v164;
  v165 = v56[11];
  v909 = v56[10];
  v910 = v165;
  v166 = v56[5];
  v903 = v56[4];
  v904 = v166;
  v167 = v56[7];
  v905 = v56[6];
  v906 = v167;
  v168 = v56[1];
  v900[0] = *v56;
  v900[1] = v168;
  v169 = v56[3];
  v901 = v56[2];
  v902 = v169;
  v170 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v900);
  v171 = BYTE1(v901);
  v880 = v896;
  v881 = v897;
  v882 = v898;
  v883 = v899;
  v876 = v892;
  v877 = v893;
  v878 = v894;
  v879 = v895;
  v872 = v888;
  v873 = v889;
  v874 = v890;
  v875 = v891;
  v869[0] = v884;
  v869[1] = v885;
  v870 = v886;
  v871 = v887;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v869) == 1)
  {
    if (v170 == 1)
    {
      goto LABEL_75;
    }

LABEL_74:
    v1109 |= 0x2000000uLL;
    goto LABEL_75;
  }

  if (v170 == 1 || ((v171 ^ BYTE1(v870)) & 1) != 0)
  {
    goto LABEL_74;
  }

LABEL_75:
  v172 = v48[13];
  v850 = v48[12];
  v851 = v172;
  v852 = v48[14];
  v173 = v48[9];
  v846 = v48[8];
  v847 = v173;
  v174 = v48[11];
  v848 = v48[10];
  v849 = v174;
  v175 = v48[5];
  v842 = v48[4];
  v843 = v175;
  v176 = v48[7];
  v844 = v48[6];
  v845 = v176;
  v177 = v48[1];
  v838 = *v48;
  v839 = v177;
  v178 = v48[3];
  v840 = v48[2];
  v841 = v178;
  v179 = v56[13];
  v865 = v56[12];
  v866 = v179;
  v867 = v56[14];
  v180 = v56[9];
  v861 = v56[8];
  v862 = v180;
  v181 = v56[11];
  v863 = v56[10];
  v864 = v181;
  v182 = v56[5];
  v857 = v56[4];
  v858 = v182;
  v183 = v56[7];
  v859 = v56[6];
  v860 = v183;
  v184 = v56[1];
  v854[0] = *v56;
  v854[1] = v184;
  v185 = v56[3];
  v855 = v56[2];
  v853 = *(v48 + 30);
  v868 = *(v56 + 30);
  v856 = v185;
  v186 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v854);
  v187 = BYTE2(v855);
  v834 = v850;
  v835 = v851;
  v836 = v852;
  v837 = v853;
  v830 = v846;
  v831 = v847;
  v832 = v848;
  v833 = v849;
  v826 = v842;
  v827 = v843;
  v828 = v844;
  v829 = v845;
  v823[0] = v838;
  v823[1] = v839;
  v824 = v840;
  v825 = v841;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v823) != 1)
  {
    if (v186 != 1 && ((v187 ^ BYTE2(v824)) & 1) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  if (v186 != 1)
  {
LABEL_80:
    v1109 |= 0x4000000uLL;
  }

LABEL_81:
  v188 = v48[13];
  v819 = v48[12];
  v820 = v188;
  v821 = v48[14];
  v189 = v48[9];
  v815 = v48[8];
  v816 = v189;
  v190 = v48[11];
  v817 = v48[10];
  v818 = v190;
  v191 = v48[5];
  v811 = v48[4];
  v812 = v191;
  v192 = v48[7];
  v813 = v48[6];
  v814 = v192;
  v193 = v48[1];
  v808[0] = *v48;
  v808[1] = v193;
  v194 = v48[3];
  v809 = v48[2];
  v822 = *(v48 + 30);
  v810 = v194;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v808) == 1)
  {
    v195 = 0;
    v196 = 0;
  }

  else
  {
    v195 = *(&v809 + 1);
    v196 = v810;
  }

  v197 = v56[13];
  v804 = v56[12];
  v805 = v197;
  v806 = v56[14];
  v198 = v56[9];
  v800 = v56[8];
  v801 = v198;
  v199 = v56[11];
  v802 = v56[10];
  v803 = v199;
  v200 = v56[5];
  v796 = v56[4];
  v797 = v200;
  v201 = v56[7];
  v798 = v56[6];
  v799 = v201;
  v202 = v56[1];
  v793[0] = *v56;
  v793[1] = v202;
  v203 = v56[3];
  v794 = v56[2];
  v807 = *(v56 + 30);
  v795 = v203;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v793) == 1)
  {
    if (!v196)
    {
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  v204 = *(&v794 + 1);
  v205 = v795;

  if (!v196)
  {
    if (!v205)
    {
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  if (!v205)
  {
LABEL_94:

LABEL_95:
    v1109 |= 0x8000000uLL;
    goto LABEL_96;
  }

  if (v195 == v204 && v196 == v205)
  {

    goto LABEL_96;
  }

  v413 = sub_1CF9E8048();

  if ((v413 & 1) == 0)
  {
    goto LABEL_95;
  }

LABEL_96:
  v206 = v48[13];
  v789 = v48[12];
  v790 = v206;
  v791 = v48[14];
  v207 = v48[9];
  v785 = v48[8];
  v786 = v207;
  v208 = v48[11];
  v787 = v48[10];
  v788 = v208;
  v209 = v48[5];
  v781 = v48[4];
  v782 = v209;
  v210 = v48[7];
  v783 = v48[6];
  v784 = v210;
  v211 = v48[1];
  v779[0] = *v48;
  v779[1] = v211;
  v212 = v48[3];
  v779[2] = v48[2];
  v792 = *(v48 + 30);
  v780 = v212;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v779) == 1)
  {
    v213 = 0;
    v214 = 0;
  }

  else
  {
    v213 = *(&v780 + 1);
    v214 = v781;
  }

  v215 = v56[13];
  v775 = v56[12];
  v776 = v215;
  v777 = v56[14];
  v216 = v56[9];
  v771 = v56[8];
  v772 = v216;
  v217 = v56[11];
  v773 = v56[10];
  v774 = v217;
  v218 = v56[5];
  v767 = v56[4];
  v768 = v218;
  v219 = v56[7];
  v769 = v56[6];
  v770 = v219;
  v220 = v56[1];
  v765[0] = *v56;
  v765[1] = v220;
  v221 = v56[3];
  v765[2] = v56[2];
  v778 = *(v56 + 30);
  v766 = v221;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v765) == 1)
  {
    if (!v214)
    {
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  v222 = *(&v766 + 1);
  v223 = v767;

  if (!v214)
  {
    if (!v223)
    {
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  if (!v223)
  {
LABEL_109:

LABEL_110:
    v1109 |= 0x10000000uLL;
    goto LABEL_111;
  }

  if (v213 == v222 && v214 == v223)
  {

    goto LABEL_111;
  }

  v414 = sub_1CF9E8048();

  if ((v414 & 1) == 0)
  {
    goto LABEL_110;
  }

LABEL_111:
  v224 = v48[13];
  v748 = v48[12];
  v749 = v224;
  v750 = v48[14];
  v225 = v48[9];
  v744 = v48[8];
  v745 = v225;
  v226 = v48[11];
  v746 = v48[10];
  v747 = v226;
  v227 = v48[5];
  v740 = v48[4];
  v741 = v227;
  v228 = v48[7];
  v742 = v48[6];
  v743 = v228;
  v229 = v48[1];
  v736 = *v48;
  v737 = v229;
  v230 = v48[3];
  v738 = v48[2];
  v739 = v230;
  v231 = v56[13];
  v761 = v56[12];
  v762 = v231;
  v763 = v56[14];
  v232 = v56[9];
  v757 = v56[8];
  v758 = v232;
  v233 = v56[11];
  v759 = v56[10];
  v760 = v233;
  v234 = v56[5];
  v753 = v56[4];
  v754 = v234;
  v235 = v56[7];
  v755 = v56[6];
  v756 = v235;
  v236 = v56[1];
  v752[0] = *v56;
  v752[1] = v236;
  v237 = v56[3];
  v752[2] = v56[2];
  v751 = *(v48 + 30);
  v764 = *(v56 + 30);
  v752[3] = v237;
  v238 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v752);
  v239 = BYTE8(v753);
  v732 = v748;
  v733 = v749;
  v734 = v750;
  v735 = v751;
  v728 = v744;
  v729 = v745;
  v730 = v746;
  v731 = v747;
  v724 = v740;
  v725 = v741;
  v726 = v742;
  v727 = v743;
  v723[0] = v736;
  v723[1] = v737;
  v723[2] = v738;
  v723[3] = v739;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v723) != 1)
  {
    if (v238 != 1 && ((v239 ^ BYTE8(v724)) & 1) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_116;
  }

  if (v238 != 1)
  {
LABEL_116:
    v1109 |= 0x20000000uLL;
  }

LABEL_117:
  v240 = v48[13];
  v719 = v48[12];
  v720 = v240;
  v721 = v48[14];
  v241 = v48[9];
  v715 = v48[8];
  v716 = v241;
  v242 = v48[11];
  v717 = v48[10];
  v718 = v242;
  v243 = v48[5];
  v711[4] = v48[4];
  v712 = v243;
  v244 = v48[7];
  v713 = v48[6];
  v714 = v244;
  v245 = v48[1];
  v711[0] = *v48;
  v711[1] = v245;
  v246 = v48[3];
  v711[2] = v48[2];
  v722 = *(v48 + 30);
  v711[3] = v246;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v711) == 1)
  {
    v247 = 0;
    v248 = 0;
  }

  else
  {
    v248 = *(&v712 + 1);
    v247 = v712;
  }

  v249 = v56[13];
  v707 = v56[12];
  v708 = v249;
  v709 = v56[14];
  v250 = v56[9];
  v703 = v56[8];
  v704 = v250;
  v251 = v56[11];
  v705 = v56[10];
  v706 = v251;
  v252 = v56[5];
  v699[4] = v56[4];
  v700 = v252;
  v253 = v56[7];
  v701 = v56[6];
  v702 = v253;
  v254 = v56[1];
  v699[0] = *v56;
  v699[1] = v254;
  v255 = v56[3];
  v699[2] = v56[2];
  v710 = *(v56 + 30);
  v699[3] = v255;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v699) == 1)
  {
    if (!v248)
    {
      goto LABEL_131;
    }

    goto LABEL_129;
  }

  v256 = v700;

  if (!v248)
  {
    if (!*(&v256 + 1))
    {
      goto LABEL_131;
    }

    goto LABEL_129;
  }

  if (!*(&v256 + 1))
  {
LABEL_129:

LABEL_130:
    v1109 |= 0x40000000uLL;
    goto LABEL_131;
  }

  if (__PAIR128__(v248, v247) == v256)
  {

    goto LABEL_131;
  }

  v415 = sub_1CF9E8048();

  if ((v415 & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_131:
  v257 = v48[13];
  v684 = v48[12];
  v685 = v257;
  v686 = v48[14];
  v258 = v48[9];
  v680 = v48[8];
  v681 = v258;
  v259 = v48[11];
  v682 = v48[10];
  v683 = v259;
  v260 = v48[5];
  v676 = v48[4];
  v677 = v260;
  v261 = v48[7];
  v678 = v48[6];
  v679 = v261;
  v262 = v48[1];
  v672 = *v48;
  v673 = v262;
  v263 = v48[3];
  v674 = v48[2];
  v675 = v263;
  v264 = v56[13];
  v695 = v56[12];
  v696 = v264;
  v697 = v56[14];
  v265 = v56[9];
  v691 = v56[8];
  v692 = v265;
  v266 = v56[11];
  v693 = v56[10];
  v694 = v266;
  v267 = v56[5];
  v688[4] = v56[4];
  v688[5] = v267;
  v268 = v56[7];
  v689 = v56[6];
  v690 = v268;
  v269 = v56[1];
  v688[0] = *v56;
  v688[1] = v269;
  v270 = v56[3];
  v688[2] = v56[2];
  v687 = *(v48 + 30);
  v698 = *(v56 + 30);
  v688[3] = v270;
  v271 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v688);
  v272 = BYTE8(v689);
  v668 = v684;
  v669 = v685;
  v670 = v686;
  v671 = v687;
  v664 = v680;
  v665 = v681;
  v666 = v682;
  v667 = v683;
  v661[4] = v676;
  v661[5] = v677;
  v662 = v678;
  v663 = v679;
  v661[0] = v672;
  v661[1] = v673;
  v661[2] = v674;
  v661[3] = v675;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v661) == 1)
  {
    if (v271 == 1)
    {
      goto LABEL_137;
    }

LABEL_136:
    v1109 |= 0x80000000uLL;
    goto LABEL_137;
  }

  if (v271 == 1 || ((v272 ^ BYTE8(v662)) & 1) != 0)
  {
    goto LABEL_136;
  }

LABEL_137:
  v273 = v48[13];
  v646 = v48[12];
  v647 = v273;
  v648 = v48[14];
  v649 = *(v48 + 30);
  v274 = v48[9];
  v642 = v48[8];
  v643 = v274;
  v275 = v48[11];
  v644 = v48[10];
  v645 = v275;
  v276 = v48[5];
  v638 = v48[4];
  v639 = v276;
  v277 = v48[7];
  v640 = v48[6];
  v641 = v277;
  v278 = v48[1];
  v634 = *v48;
  v635 = v278;
  v279 = v48[3];
  v636 = v48[2];
  v637 = v279;
  v280 = v56[13];
  v657 = v56[12];
  v658 = v280;
  v659 = v56[14];
  v660 = *(v56 + 30);
  v281 = v56[9];
  v653 = v56[8];
  v654 = v281;
  v282 = v56[11];
  v655 = v56[10];
  v656 = v282;
  v283 = v56[5];
  v650[4] = v56[4];
  v650[5] = v283;
  v284 = v56[7];
  v651 = v56[6];
  v652 = v284;
  v285 = v56[1];
  v650[0] = *v56;
  v650[1] = v285;
  v286 = v56[3];
  v650[2] = v56[2];
  v650[3] = v286;
  v287 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v650);
  v630 = v646;
  v631 = v647;
  v632 = v648;
  v626 = v642;
  v627 = v643;
  v628 = v644;
  v629 = v645;
  v623[4] = v638;
  v623[5] = v639;
  v624 = v640;
  v625 = v641;
  v623[0] = v634;
  v623[1] = v635;
  v623[2] = v636;
  v288 = BYTE9(v651);
  v633 = v649;
  v623[3] = v637;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v623) != 1)
  {
    if (v287 != 1 && ((v288 ^ BYTE9(v624)) & 1) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_142;
  }

  if (v287 != 1)
  {
LABEL_142:
    v1109 |= 0x100000000uLL;
  }

LABEL_143:
  v289 = v48[13];
  v619 = v48[12];
  v620 = v289;
  v621 = v48[14];
  v290 = v48[9];
  v615 = v48[8];
  v616 = v290;
  v291 = v48[11];
  v617 = v48[10];
  v618 = v291;
  v292 = v48[5];
  v613[4] = v48[4];
  v613[5] = v292;
  v293 = v48[7];
  v613[6] = v48[6];
  v614 = v293;
  v294 = v48[1];
  v613[0] = *v48;
  v613[1] = v294;
  v295 = v48[3];
  v613[2] = v48[2];
  v622 = *(v48 + 30);
  v613[3] = v295;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v613) == 1)
  {
    v296 = 0;
    v297 = 0;
  }

  else
  {
    v297 = *(&v614 + 1);
    v296 = v614;
  }

  v298 = v56[13];
  v609 = v56[12];
  v610 = v298;
  v611 = v56[14];
  v299 = v56[9];
  v605 = v56[8];
  v606 = v299;
  v300 = v56[11];
  v607 = v56[10];
  v608 = v300;
  v301 = v56[5];
  v603[4] = v56[4];
  v603[5] = v301;
  v302 = v56[7];
  v603[6] = v56[6];
  v604 = v302;
  v303 = v56[1];
  v603[0] = *v56;
  v603[1] = v303;
  v304 = v56[3];
  v603[2] = v56[2];
  v612 = *(v56 + 30);
  v603[3] = v304;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v603) == 1)
  {
    if (!v297)
    {
      goto LABEL_157;
    }

    goto LABEL_155;
  }

  v305 = v604;

  if (!v297)
  {
    if (!*(&v305 + 1))
    {
      goto LABEL_157;
    }

    goto LABEL_155;
  }

  if (!*(&v305 + 1))
  {
LABEL_155:

LABEL_156:
    v1109 |= 0x200000000uLL;
    goto LABEL_157;
  }

  if (__PAIR128__(v297, v296) == v305)
  {

    goto LABEL_157;
  }

  v416 = sub_1CF9E8048();

  if ((v416 & 1) == 0)
  {
    goto LABEL_156;
  }

LABEL_157:
  v306 = v48[13];
  v599 = v48[12];
  v600 = v306;
  v601 = v48[14];
  v307 = v48[9];
  v595 = v48[8];
  v596 = v307;
  v308 = v48[11];
  v597 = v48[10];
  v598 = v308;
  v309 = v48[5];
  v594[4] = v48[4];
  v594[5] = v309;
  v310 = v48[7];
  v594[6] = v48[6];
  v594[7] = v310;
  v311 = v48[1];
  v594[0] = *v48;
  v594[1] = v311;
  v312 = v48[3];
  v594[2] = v48[2];
  v602 = *(v48 + 30);
  v594[3] = v312;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v594) == 1)
  {
    v313 = 0;
    v314 = 0;
  }

  else
  {
    v314 = *(&v595 + 1);
    v313 = v595;
  }

  v315 = v56[13];
  v590 = v56[12];
  v591 = v315;
  v592 = v56[14];
  v316 = v56[9];
  v586 = v56[8];
  v587 = v316;
  v317 = v56[11];
  v588 = v56[10];
  v589 = v317;
  v318 = v56[5];
  v585[4] = v56[4];
  v585[5] = v318;
  v319 = v56[7];
  v585[6] = v56[6];
  v585[7] = v319;
  v320 = v56[1];
  v585[0] = *v56;
  v585[1] = v320;
  v321 = v56[3];
  v585[2] = v56[2];
  v593 = *(v56 + 30);
  v585[3] = v321;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v585) == 1)
  {
    if (!v314)
    {
      goto LABEL_171;
    }

    goto LABEL_169;
  }

  v322 = v586;

  if (!v314)
  {
    if (!*(&v322 + 1))
    {
      goto LABEL_171;
    }

    goto LABEL_169;
  }

  if (!*(&v322 + 1))
  {
LABEL_169:

LABEL_170:
    v1109 |= 0x400000000uLL;
    goto LABEL_171;
  }

  if (__PAIR128__(v314, v313) == v322)
  {

    goto LABEL_171;
  }

  v417 = sub_1CF9E8048();

  if ((v417 & 1) == 0)
  {
    goto LABEL_170;
  }

LABEL_171:
  v323 = v48[13];
  v581 = v48[12];
  v582 = v323;
  v583 = v48[14];
  v324 = v48[9];
  v577[8] = v48[8];
  v578 = v324;
  v325 = v48[11];
  v579 = v48[10];
  v580 = v325;
  v326 = v48[5];
  v577[4] = v48[4];
  v577[5] = v326;
  v327 = v48[7];
  v577[6] = v48[6];
  v577[7] = v327;
  v328 = v48[1];
  v577[0] = *v48;
  v577[1] = v328;
  v329 = v48[3];
  v577[2] = v48[2];
  v584 = *(v48 + 30);
  v577[3] = v329;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v577) == 1)
  {
    v330 = 0;
    v331 = 0;
  }

  else
  {
    v331 = *(&v578 + 1);
    v330 = v578;
  }

  v332 = v56[13];
  v573 = v56[12];
  v574 = v332;
  v575 = v56[14];
  v333 = v56[9];
  v569[8] = v56[8];
  v570 = v333;
  v334 = v56[11];
  v571 = v56[10];
  v572 = v334;
  v335 = v56[5];
  v569[4] = v56[4];
  v569[5] = v335;
  v336 = v56[7];
  v569[6] = v56[6];
  v569[7] = v336;
  v337 = v56[1];
  v569[0] = *v56;
  v569[1] = v337;
  v338 = v56[3];
  v569[2] = v56[2];
  v576 = *(v56 + 30);
  v569[3] = v338;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v569) == 1)
  {
    if (!v331)
    {
      goto LABEL_185;
    }

    goto LABEL_183;
  }

  v339 = v570;

  if (!v331)
  {
    if (!*(&v339 + 1))
    {
      goto LABEL_185;
    }

    goto LABEL_183;
  }

  if (!*(&v339 + 1))
  {
LABEL_183:

LABEL_184:
    v1109 |= 0x800000000uLL;
    goto LABEL_185;
  }

  if (__PAIR128__(v331, v330) == v339)
  {

    goto LABEL_185;
  }

  v418 = sub_1CF9E8048();

  if ((v418 & 1) == 0)
  {
    goto LABEL_184;
  }

LABEL_185:
  v340 = v48[13];
  v565 = v48[12];
  v566 = v340;
  v567 = v48[14];
  v341 = v48[9];
  v562[8] = v48[8];
  v562[9] = v341;
  v342 = v48[11];
  v563 = v48[10];
  v564 = v342;
  v343 = v48[5];
  v562[4] = v48[4];
  v562[5] = v343;
  v344 = v48[7];
  v562[6] = v48[6];
  v562[7] = v344;
  v345 = v48[1];
  v562[0] = *v48;
  v562[1] = v345;
  v346 = v48[3];
  v562[2] = v48[2];
  v568 = *(v48 + 30);
  v562[3] = v346;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v562) == 1)
  {
    v347 = 0;
    v348 = 0;
  }

  else
  {
    v348 = *(&v563 + 1);
    v347 = v563;
  }

  v349 = v56[13];
  v558 = v56[12];
  v559 = v349;
  v560 = v56[14];
  v350 = v56[9];
  v555[8] = v56[8];
  v555[9] = v350;
  v351 = v56[11];
  v556 = v56[10];
  v557 = v351;
  v352 = v56[5];
  v555[4] = v56[4];
  v555[5] = v352;
  v353 = v56[7];
  v555[6] = v56[6];
  v555[7] = v353;
  v354 = v56[1];
  v555[0] = *v56;
  v555[1] = v354;
  v355 = v56[3];
  v555[2] = v56[2];
  v561 = *(v56 + 30);
  v555[3] = v355;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v555) == 1)
  {
    if (v348)
    {
      goto LABEL_197;
    }

    goto LABEL_199;
  }

  v356 = v556;

  if (!v348)
  {
    if (!*(&v356 + 1))
    {
      goto LABEL_199;
    }

LABEL_197:

LABEL_198:
    v1109 |= 0x1000000000uLL;
    goto LABEL_200;
  }

  if (!*(&v356 + 1))
  {
    goto LABEL_197;
  }

  *&v549[0] = v347;
  *(&v549[0] + 1) = v348;

  v357 = sub_1CF662E90();
  v359 = v358;
  v533 = v356;
  if (v357 == sub_1CF662E90() && v359 == v360)
  {

    swift_bridgeObjectRelease_n();
LABEL_199:

    goto LABEL_200;
  }

  v419 = sub_1CF9E8048();

  swift_bridgeObjectRelease_n();

  if ((v419 & 1) == 0)
  {
    goto LABEL_198;
  }

LABEL_200:
  v361 = v48[13];
  v545 = v48[12];
  v546 = v361;
  v547 = v48[14];
  v362 = v48[9];
  v541 = v48[8];
  v542 = v362;
  v363 = v48[11];
  v543 = v48[10];
  v544 = v363;
  v364 = v48[5];
  v537 = v48[4];
  v538 = v364;
  v365 = v48[7];
  v539 = v48[6];
  v540 = v365;
  v366 = v48[1];
  v533 = *v48;
  v534 = v366;
  v367 = v48[3];
  v535 = v48[2];
  v536 = v367;
  v368 = v56[13];
  v551 = v56[12];
  v552 = v368;
  v553 = v56[14];
  v369 = v56[9];
  v549[8] = v56[8];
  v549[9] = v369;
  v370 = v56[11];
  v549[10] = v56[10];
  v550 = v370;
  v371 = v56[5];
  v549[4] = v56[4];
  v549[5] = v371;
  v372 = v56[7];
  v549[6] = v56[6];
  v549[7] = v372;
  v373 = v56[1];
  v549[0] = *v56;
  v549[1] = v373;
  v374 = v56[3];
  v549[2] = v56[2];
  v548 = *(v48 + 30);
  v554 = *(v56 + 30);
  v549[3] = v374;
  v375 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v549);
  v376 = v550;
  v529 = v545;
  v530 = v546;
  v531 = v547;
  v532 = v548;
  v527[8] = v541;
  v527[9] = v542;
  v527[10] = v543;
  v528 = v544;
  v527[4] = v537;
  v527[5] = v538;
  v527[6] = v539;
  v527[7] = v540;
  v527[0] = v533;
  v527[1] = v534;
  v527[2] = v535;
  v527[3] = v536;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v527) != 1)
  {
    if (v375 != 1 && ((v376 ^ v528) & 1) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_205;
  }

  if (v375 != 1)
  {
LABEL_205:
    v1109 |= 0x2000000000uLL;
  }

LABEL_206:
  v377 = v48[13];
  v523 = v48[12];
  v524 = v377;
  v525 = v48[14];
  v378 = v48[9];
  v521[8] = v48[8];
  v521[9] = v378;
  v379 = v48[11];
  v521[10] = v48[10];
  v522 = v379;
  v380 = v48[5];
  v521[4] = v48[4];
  v521[5] = v380;
  v381 = v48[7];
  v521[6] = v48[6];
  v521[7] = v381;
  v382 = v48[1];
  v521[0] = *v48;
  v521[1] = v382;
  v383 = v48[3];
  v521[2] = v48[2];
  v526 = *(v48 + 30);
  v521[3] = v383;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v521) == 1)
  {
    v384 = 0;
  }

  else
  {
    v384 = *(&v522 + 1);
  }

  v385 = v56[13];
  v517 = v56[12];
  v518 = v385;
  v519 = v56[14];
  v386 = v56[9];
  v515[8] = v56[8];
  v515[9] = v386;
  v387 = v56[11];
  v515[10] = v56[10];
  v516 = v387;
  v388 = v56[5];
  v515[4] = v56[4];
  v515[5] = v388;
  v389 = v56[7];
  v515[6] = v56[6];
  v515[7] = v389;
  v390 = v56[1];
  v515[0] = *v56;
  v515[1] = v390;
  v391 = v56[3];
  v515[2] = v56[2];
  v520 = *(v56 + 30);
  v515[3] = v391;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v515) == 1)
  {
    if (!v384)
    {
      goto LABEL_220;
    }

    goto LABEL_218;
  }

  v392 = *(&v516 + 1);

  if (!v384)
  {
    if (!v392)
    {
      goto LABEL_220;
    }

    goto LABEL_218;
  }

  if (!v392)
  {
LABEL_218:

    goto LABEL_219;
  }

  v393 = sub_1CF6BEA0C(v384, v392);

  if ((v393 & 1) == 0)
  {
LABEL_219:
    v1109 |= 0x4000000000uLL;
  }

LABEL_220:
  v394 = v48[13];
  v511 = v48[12];
  v512 = v394;
  v513 = v48[14];
  v395 = v48[9];
  v510[8] = v48[8];
  v510[9] = v395;
  v396 = v48[11];
  v510[10] = v48[10];
  v510[11] = v396;
  v397 = v48[5];
  v510[4] = v48[4];
  v510[5] = v397;
  v398 = v48[7];
  v510[6] = v48[6];
  v510[7] = v398;
  v399 = v48[1];
  v510[0] = *v48;
  v510[1] = v399;
  v400 = v48[3];
  v510[2] = v48[2];
  v514 = *(v48 + 30);
  v510[3] = v400;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v510) == 1)
  {
    v401 = 0;
    v402 = 0;
  }

  else
  {
    v402 = *(&v511 + 1);
    v401 = v511;
    sub_1CF075D00(v511);
  }

  v403 = v56[13];
  v506 = v56[12];
  v507 = v403;
  v508 = v56[14];
  v404 = v56[9];
  v505[8] = v56[8];
  v505[9] = v404;
  v405 = v56[11];
  v505[10] = v56[10];
  v505[11] = v405;
  v406 = v56[5];
  v505[4] = v56[4];
  v505[5] = v406;
  v407 = v56[7];
  v505[6] = v56[6];
  v505[7] = v407;
  v408 = v56[1];
  v505[0] = *v56;
  v505[1] = v408;
  v409 = v56[3];
  v505[2] = v56[2];
  v509 = *(v56 + 30);
  v505[3] = v409;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v505) == 1)
  {
    if (!v401)
    {
      goto LABEL_251;
    }

    goto LABEL_248;
  }

  v410 = v506;
  sub_1CF075D00(v506);
  if (!v401)
  {
    if (!v410)
    {
      goto LABEL_251;
    }

    v412 = v410;
    goto LABEL_249;
  }

  if (!v410)
  {
LABEL_248:
    v412 = v401;
LABEL_249:
    sub_1CF24CCFC(v412);
    goto LABEL_250;
  }

  if ((sub_1CF6BEA0C(v401, v410) & 1) == 0)
  {

    goto LABEL_248;
  }

  v411 = sub_1CF6BEA0C(v402, *(&v410 + 1));

  sub_1CF24CCFC(v401);
  if ((v411 & 1) == 0)
  {
LABEL_250:
    v1109 |= 0x8000000000uLL;
  }

LABEL_251:
  v420 = v48[13];
  v501[12] = v48[12];
  v502 = v420;
  v503 = v48[14];
  v421 = v48[9];
  v501[8] = v48[8];
  v501[9] = v421;
  v422 = v48[11];
  v501[10] = v48[10];
  v501[11] = v422;
  v423 = v48[5];
  v501[4] = v48[4];
  v501[5] = v423;
  v424 = v48[7];
  v501[6] = v48[6];
  v501[7] = v424;
  v425 = v48[1];
  v501[0] = *v48;
  v501[1] = v425;
  v426 = v48[3];
  v501[2] = v48[2];
  v504 = *(v48 + 30);
  v501[3] = v426;
  v427 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v501);
  v428 = v56[13];
  v497[12] = v56[12];
  v498 = v428;
  v499 = v56[14];
  v429 = v56[9];
  v497[8] = v56[8];
  v497[9] = v429;
  v430 = v56[11];
  v497[10] = v56[10];
  v497[11] = v430;
  v431 = v56[5];
  v497[4] = v56[4];
  v497[5] = v431;
  v432 = v56[7];
  v497[6] = v56[6];
  v497[7] = v432;
  v433 = v56[1];
  v497[0] = *v56;
  v497[1] = v433;
  v434 = v56[3];
  v497[2] = v56[2];
  v435 = v502;
  v500 = *(v56 + 30);
  v497[3] = v434;
  v436 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v497);
  if (v427 == 1)
  {
    if (v436 == 1)
    {
      goto LABEL_257;
    }

    goto LABEL_256;
  }

  if (v436 == 1 || v435 != v498)
  {
LABEL_256:
    v1109 |= 0x2000000000000uLL;
  }

LABEL_257:
  v437 = v48[13];
  v494[12] = v48[12];
  v494[13] = v437;
  v495 = v48[14];
  v496 = *(v48 + 30);
  v438 = v48[9];
  v494[8] = v48[8];
  v494[9] = v438;
  v439 = v48[11];
  v494[10] = v48[10];
  v494[11] = v439;
  v440 = v48[5];
  v494[4] = v48[4];
  v494[5] = v440;
  v441 = v48[7];
  v494[6] = v48[6];
  v494[7] = v441;
  v442 = v48[1];
  v494[0] = *v48;
  v494[1] = v442;
  v443 = v48[3];
  v494[2] = v48[2];
  v494[3] = v443;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v494) == 1 || !v495)
  {
    v445 = 0;
  }

  else
  {

    v445 = sub_1CF93CD44(v444);
  }

  v446 = v56[13];
  v491[12] = v56[12];
  v491[13] = v446;
  v492 = v56[14];
  v493 = *(v56 + 30);
  v447 = v56[9];
  v491[8] = v56[8];
  v491[9] = v447;
  v448 = v56[11];
  v491[10] = v56[10];
  v491[11] = v448;
  v449 = v56[5];
  v491[4] = v56[4];
  v491[5] = v449;
  v450 = v56[7];
  v491[6] = v56[6];
  v491[7] = v450;
  v451 = v56[1];
  v491[0] = *v56;
  v491[1] = v451;
  v452 = v56[3];
  v491[2] = v56[2];
  v491[3] = v452;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v491) == 1 || !v492)
  {
    v454 = 0;
    if (!v445)
    {
LABEL_264:
      if (!v454)
      {
        goto LABEL_272;
      }

      goto LABEL_270;
    }
  }

  else
  {

    v454 = sub_1CF93CD44(v453);

    if (!v445)
    {
      goto LABEL_264;
    }
  }

  if (!v454)
  {
LABEL_270:

    goto LABEL_271;
  }

  v455 = sub_1CF6BF228(v445, v454);

  if ((v455 & 1) == 0)
  {
LABEL_271:
    v1109 |= 0x4000000000000uLL;
  }

LABEL_272:
  v456 = v48[13];
  v488[12] = v48[12];
  v488[13] = v456;
  v489 = v48[14];
  v490 = *(v48 + 30);
  v457 = v48[9];
  v488[8] = v48[8];
  v488[9] = v457;
  v458 = v48[11];
  v488[10] = v48[10];
  v488[11] = v458;
  v459 = v48[5];
  v488[4] = v48[4];
  v488[5] = v459;
  v460 = v48[7];
  v488[6] = v48[6];
  v488[7] = v460;
  v461 = v48[1];
  v488[0] = *v48;
  v488[1] = v461;
  v462 = v48[3];
  v488[2] = v48[2];
  v488[3] = v462;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v488) == 1)
  {
    v463 = 0;
    v464 = 0;
  }

  else
  {
    v463 = *(&v489 + 1);
    v464 = v490;
  }

  v465 = v56[13];
  v485[12] = v56[12];
  v485[13] = v465;
  v486 = v56[14];
  v487 = *(v56 + 30);
  v466 = v56[9];
  v485[8] = v56[8];
  v485[9] = v466;
  v467 = v56[11];
  v485[10] = v56[10];
  v485[11] = v467;
  v468 = v56[5];
  v485[4] = v56[4];
  v485[5] = v468;
  v469 = v56[7];
  v485[6] = v56[6];
  v485[7] = v469;
  v470 = v56[1];
  v485[0] = *v56;
  v485[1] = v470;
  v471 = v56[3];
  v485[2] = v56[2];
  v485[3] = v471;
  result = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v485);
  if (result == 1)
  {
    if (!v464)
    {
      goto LABEL_287;
    }

    goto LABEL_285;
  }

  v474 = *(&v486 + 1);
  v473 = v487;

  if (!v464)
  {
    if (!v473)
    {
      goto LABEL_287;
    }

LABEL_285:

LABEL_286:
    v1109 |= 0x8000000000000uLL;
    goto LABEL_287;
  }

  if (!v473)
  {
    goto LABEL_285;
  }

  if (v463 != v474 || v464 != v473)
  {
    v475 = sub_1CF9E8048();

    if (v475)
    {
      goto LABEL_287;
    }

    goto LABEL_286;
  }

LABEL_287:
  *v479 = v1109;
  return result;
}

uint64_t sub_1CF71A708(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1EEE9AC00](a1);
  v463 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v459 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v459 - v11);
  v13 = v2[1];
  v14 = v2[11];
  v462 = v2[10];
  v460 = v13;
  v461 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  sub_1CEFE4FF4(v2 + *(v15 + 48), v12 + *(v6 + 48), type metadata accessor for ItemMetadata);
  v16 = v462;
  *v12 = v13;
  v12[1] = v16;
  v12[2] = v14;
  v17 = v3[1];
  v18 = v3[11];
  v462 = v3[10];
  sub_1CEFE4FF4(v3 + *(v15 + 48), v10 + *(v6 + 48), type metadata accessor for ItemMetadata);
  v19 = v462;
  *v10 = v17;
  *(v10 + 8) = v19;
  *(v10 + 16) = v18;
  v462 = v15;
  v20 = *(v3 + *(v15 + 64));
  v21 = v460;

  v22 = v17;
  v23 = v2;

  sub_1CF71FAAC(v10, v20, 0, v1064);
  sub_1CEFCCC44(v10, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  sub_1CEFCCC44(v12, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v24 = v2[2];
  v25 = v2[3];
  v26 = v3[2];
  v27 = v3[3];
  sub_1CEFE42D4(v23[2], v23[3]);
  sub_1CEFE42D4(v26, v27);
  LOBYTE(v10) = sub_1CF328660(v24, v25, v26, v27);
  sub_1CEFE4714(v26, v27);
  sub_1CEFE4714(v24, v25);
  if ((v10 & 1) == 0)
  {
    v1064[0] |= 8uLL;
  }

  v28 = v23[5];
  v29 = v23[6];
  v30 = v3[5];
  v31 = v3[6];
  sub_1CEFE42D4(v28, v29);
  sub_1CEFE42D4(v30, v31);
  v32 = sub_1CF328660(v28, v29, v30, v31);
  sub_1CEFE4714(v30, v31);
  sub_1CEFE4714(v28, v29);
  if ((v32 & 1) == 0)
  {
    v1064[0] |= 0x20000000000uLL;
  }

  v33 = *(v462 + 52);
  v34 = v23 + v33;
  v35 = *(v23 + v33 + 208);
  v1058 = *(v23 + v33 + 192);
  v1059 = v35;
  v1060 = *(v23 + v33 + 224);
  v1061 = *(v23 + v33 + 240);
  v36 = *(v23 + v33 + 144);
  v1054 = *(v23 + v33 + 128);
  v1055 = v36;
  v37 = *(v23 + v33 + 176);
  v1056 = *(v23 + v33 + 160);
  v1057 = v37;
  v38 = *(v23 + v33 + 80);
  v1050 = *(v23 + v33 + 64);
  v1051 = v38;
  v39 = *(v23 + v33 + 112);
  v1052 = *(v23 + v33 + 96);
  v1053 = v39;
  v40 = *(v23 + v33 + 16);
  v1046 = *(v23 + v33);
  v1047 = v40;
  v41 = *(v23 + v33 + 48);
  v1048 = *(v23 + v33 + 32);
  v1049 = v41;
  v42 = v3 + v33;
  v43 = *(v3 + v33 + 208);
  v1062[12] = *(v3 + v33 + 192);
  v1062[13] = v43;
  v1062[14] = *(v3 + v33 + 224);
  v1063 = *(v3 + v33 + 240);
  v44 = *(v3 + v33 + 144);
  v1062[8] = *(v3 + v33 + 128);
  v1062[9] = v44;
  v45 = *(v3 + v33 + 176);
  v1062[10] = *(v3 + v33 + 160);
  v1062[11] = v45;
  v46 = *(v3 + v33 + 80);
  v1062[4] = *(v3 + v33 + 64);
  v1062[5] = v46;
  v47 = *(v3 + v33 + 112);
  v1062[6] = *(v3 + v33 + 96);
  v1062[7] = v47;
  v48 = *(v3 + v33 + 16);
  v1062[0] = *(v3 + v33);
  v1062[1] = v48;
  v49 = *(v3 + v33 + 48);
  v1062[2] = *(v3 + v33 + 32);
  v1062[3] = v49;
  enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1062);
  v51 = *&v1062[0];
  v1044[12] = v1058;
  v1044[13] = v1059;
  v1044[14] = v1060;
  v1045 = v1061;
  v1044[8] = v1054;
  v1044[9] = v1055;
  v1044[10] = v1056;
  v1044[11] = v1057;
  v1044[4] = v1050;
  v1044[5] = v1051;
  v1044[6] = v1052;
  v1044[7] = v1053;
  v1044[0] = v1046;
  v1044[1] = v1047;
  v1044[2] = v1048;
  v1044[3] = v1049;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1044) == 1)
  {
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
    {
      goto LABEL_14;
    }

LABEL_13:
    v1064[0] |= 0x40000uLL;
    goto LABEL_14;
  }

  if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
  {
    v52 = 0;
  }

  else
  {
    v52 = v51;
  }

  if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1 || *&v1044[0] != v52)
  {
    goto LABEL_13;
  }

LABEL_14:
  v53 = *(v34 + 13);
  v1038 = *(v34 + 12);
  v1039 = v53;
  v1040 = *(v34 + 14);
  v54 = *(v34 + 9);
  v1034 = *(v34 + 8);
  v1035 = v54;
  v55 = *(v34 + 11);
  v1036 = *(v34 + 10);
  v1037 = v55;
  v56 = *(v34 + 5);
  v1030 = *(v34 + 4);
  v1031 = v56;
  v57 = *(v34 + 7);
  v1032 = *(v34 + 6);
  v1033 = v57;
  v58 = *(v34 + 1);
  v1026 = *v34;
  v1027 = v58;
  v59 = *(v34 + 3);
  v1028 = *(v34 + 2);
  v1029 = v59;
  v60 = *(v42 + 13);
  v1042[12] = *(v42 + 12);
  v1042[13] = v60;
  v1042[14] = *(v42 + 14);
  v61 = *(v42 + 9);
  v1042[8] = *(v42 + 8);
  v1042[9] = v61;
  v62 = *(v42 + 11);
  v1042[10] = *(v42 + 10);
  v1042[11] = v62;
  v63 = *(v42 + 5);
  v1042[4] = *(v42 + 4);
  v1042[5] = v63;
  v64 = *(v42 + 7);
  v1042[6] = *(v42 + 6);
  v1042[7] = v64;
  v65 = *(v42 + 1);
  v1042[0] = *v42;
  v1042[1] = v65;
  v66 = *(v42 + 3);
  v1042[2] = *(v42 + 2);
  v1041 = *(v34 + 30);
  v1043 = *(v42 + 30);
  v1042[3] = v66;
  v67 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1042);
  v68 = BYTE8(v1042[0]);
  v1024[12] = v1038;
  v1024[13] = v1039;
  v1024[14] = v1040;
  v1025 = v1041;
  v1024[8] = v1034;
  v1024[9] = v1035;
  v1024[10] = v1036;
  v1024[11] = v1037;
  v1024[4] = v1030;
  v1024[5] = v1031;
  v1024[6] = v1032;
  v1024[7] = v1033;
  v1024[0] = v1026;
  v1024[1] = v1027;
  v1024[2] = v1028;
  v1024[3] = v1029;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1024) == 1)
  {
    if (v67 == 1)
    {
      goto LABEL_20;
    }

LABEL_19:
    v1064[0] |= 0x80000uLL;
    goto LABEL_20;
  }

  if (v67 == 1 || ((v68 ^ BYTE8(v1024[0])) & 1) != 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  v69 = *(v34 + 13);
  v1018 = *(v34 + 12);
  v1019 = v69;
  v1020 = *(v34 + 14);
  v70 = *(v34 + 9);
  v1014 = *(v34 + 8);
  v1015 = v70;
  v71 = *(v34 + 11);
  v1016 = *(v34 + 10);
  v1017 = v71;
  v72 = *(v34 + 5);
  v1010 = *(v34 + 4);
  v1011 = v72;
  v73 = *(v34 + 7);
  v1012 = *(v34 + 6);
  v1013 = v73;
  v74 = *(v34 + 1);
  v1006 = *v34;
  v1007 = v74;
  v75 = *(v34 + 3);
  v1008 = *(v34 + 2);
  v1009 = v75;
  v76 = *(v42 + 13);
  v1022[12] = *(v42 + 12);
  v1022[13] = v76;
  v1022[14] = *(v42 + 14);
  v77 = *(v42 + 9);
  v1022[8] = *(v42 + 8);
  v1022[9] = v77;
  v78 = *(v42 + 11);
  v1022[10] = *(v42 + 10);
  v1022[11] = v78;
  v79 = *(v42 + 5);
  v1022[4] = *(v42 + 4);
  v1022[5] = v79;
  v80 = *(v42 + 7);
  v1022[6] = *(v42 + 6);
  v1022[7] = v80;
  v81 = *(v42 + 1);
  v1022[0] = *v42;
  v1022[1] = v81;
  v82 = *(v42 + 3);
  v1022[2] = *(v42 + 2);
  v1021 = *(v34 + 30);
  v1023 = *(v42 + 30);
  v1022[3] = v82;
  v83 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1022);
  v84 = BYTE9(v1022[0]);
  v1004[12] = v1018;
  v1004[13] = v1019;
  v1004[14] = v1020;
  v1005 = v1021;
  v1004[8] = v1014;
  v1004[9] = v1015;
  v1004[10] = v1016;
  v1004[11] = v1017;
  v1004[4] = v1010;
  v1004[5] = v1011;
  v1004[6] = v1012;
  v1004[7] = v1013;
  v1004[0] = v1006;
  v1004[1] = v1007;
  v1004[2] = v1008;
  v1004[3] = v1009;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1004) != 1)
  {
    if (v83 != 1 && ((v84 ^ BYTE9(v1004[0])) & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v83 != 1)
  {
LABEL_25:
    v1064[0] |= 0x100000uLL;
  }

LABEL_26:
  v85 = *(v34 + 13);
  v1000 = *(v34 + 12);
  v1001 = v85;
  v1002 = *(v34 + 14);
  v86 = *(v34 + 9);
  v996 = *(v34 + 8);
  v997 = v86;
  v87 = *(v34 + 11);
  v998 = *(v34 + 10);
  v999 = v87;
  v88 = *(v34 + 5);
  v992 = *(v34 + 4);
  v993 = v88;
  v89 = *(v34 + 7);
  v994 = *(v34 + 6);
  v995 = v89;
  v90 = *(v34 + 1);
  v988 = *v34;
  v989 = v90;
  v91 = *(v34 + 3);
  v990 = *(v34 + 2);
  v1003 = *(v34 + 30);
  v991 = v91;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v988) == 1)
  {
    v92 = 0;
  }

  else
  {
    v92 = v989;
    v93 = v989;
  }

  v94 = *(v42 + 13);
  v984 = *(v42 + 12);
  v985 = v94;
  v986 = *(v42 + 14);
  v95 = *(v42 + 9);
  v980 = *(v42 + 8);
  v981 = v95;
  v96 = *(v42 + 11);
  v982 = *(v42 + 10);
  v983 = v96;
  v97 = *(v42 + 5);
  v976 = *(v42 + 4);
  v977 = v97;
  v98 = *(v42 + 7);
  v978 = *(v42 + 6);
  v979 = v98;
  v99 = *(v42 + 1);
  v972 = *v42;
  v973 = v99;
  v100 = *(v42 + 3);
  v974 = *(v42 + 2);
  v987 = *(v42 + 30);
  v975 = v100;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v972) == 1)
  {
    v101 = 0;
  }

  else
  {
    v101 = v973;
    v102 = v973;
  }

  v103 = errorsAreDifferent(error:otherError:)(v92, v101);

  if (v103)
  {
    v1064[0] |= 0x200000uLL;
  }

  v104 = *(v34 + 13);
  v968 = *(v34 + 12);
  v969 = v104;
  v970 = *(v34 + 14);
  v105 = *(v34 + 9);
  v964 = *(v34 + 8);
  v965 = v105;
  v106 = *(v34 + 11);
  v966 = *(v34 + 10);
  v967 = v106;
  v107 = *(v34 + 5);
  v960 = *(v34 + 4);
  v961 = v107;
  v108 = *(v34 + 7);
  v962 = *(v34 + 6);
  v963 = v108;
  v109 = *(v34 + 1);
  v956 = *v34;
  v957 = v109;
  v110 = *(v34 + 3);
  v958 = *(v34 + 2);
  v971 = *(v34 + 30);
  v959 = v110;
  v111 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v956);
  v112 = *(v42 + 13);
  v952 = *(v42 + 12);
  v953 = v112;
  v954 = *(v42 + 14);
  v113 = *(v42 + 9);
  v948 = *(v42 + 8);
  v949 = v113;
  v114 = *(v42 + 11);
  v950 = *(v42 + 10);
  v951 = v114;
  v115 = *(v42 + 5);
  v944 = *(v42 + 4);
  v945 = v115;
  v116 = *(v42 + 7);
  v946 = *(v42 + 6);
  v947 = v116;
  v117 = *(v42 + 1);
  v940 = *v42;
  v941 = v117;
  v118 = *(v42 + 3);
  v942 = *(v42 + 2);
  v120 = v111 != 1 && *(&v957 + 1) != 0;
  v955 = *(v42 + 30);
  v943 = v118;
  v122 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v940) == 1 || *(&v941 + 1) == 0;
  if (v120 == v122)
  {
    v1064[0] |= 0x400000uLL;
  }

  v123 = *(v34 + 13);
  v921 = *(v34 + 12);
  v922 = v123;
  v923 = *(v34 + 14);
  v124 = *(v34 + 9);
  v917 = *(v34 + 8);
  v918 = v124;
  v125 = *(v34 + 11);
  v919 = *(v34 + 10);
  v920 = v125;
  v126 = *(v34 + 5);
  v913 = *(v34 + 4);
  v914 = v126;
  v127 = *(v34 + 7);
  v915 = *(v34 + 6);
  v916 = v127;
  v128 = *(v34 + 1);
  v909 = *v34;
  v910 = v128;
  v129 = *(v34 + 3);
  v911 = *(v34 + 2);
  v912 = v129;
  v130 = *(v42 + 13);
  v936 = *(v42 + 12);
  v937 = v130;
  v938 = *(v42 + 14);
  v131 = *(v42 + 9);
  v932 = *(v42 + 8);
  v933 = v131;
  v132 = *(v42 + 11);
  v934 = *(v42 + 10);
  v935 = v132;
  v133 = *(v42 + 5);
  v928 = *(v42 + 4);
  v929 = v133;
  v134 = *(v42 + 7);
  v930 = *(v42 + 6);
  v931 = v134;
  v135 = *(v42 + 1);
  v925[0] = *v42;
  v925[1] = v135;
  v136 = *(v42 + 3);
  v926 = *(v42 + 2);
  v924 = *(v34 + 30);
  v939 = *(v42 + 30);
  v927 = v136;
  v137 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v925);
  v138 = v926;
  v905 = v921;
  v906 = v922;
  v907 = v923;
  v908 = v924;
  v901 = v917;
  v902 = v918;
  v903 = v919;
  v904 = v920;
  v897 = v913;
  v898 = v914;
  v899 = v915;
  v900 = v916;
  v894[0] = v909;
  v894[1] = v910;
  v895 = v911;
  v896 = v912;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v894) == 1)
  {
    if (v137 == 1)
    {
      goto LABEL_54;
    }

LABEL_53:
    v1064[0] |= 0x1000000uLL;
    goto LABEL_54;
  }

  if (v137 == 1 || ((v138 ^ v895) & 1) != 0)
  {
    goto LABEL_53;
  }

LABEL_54:
  v139 = *(v34 + 13);
  v875 = *(v34 + 12);
  v876 = v139;
  v877 = *(v34 + 14);
  v878 = *(v34 + 30);
  v140 = *(v34 + 9);
  v871 = *(v34 + 8);
  v872 = v140;
  v141 = *(v34 + 11);
  v873 = *(v34 + 10);
  v874 = v141;
  v142 = *(v34 + 5);
  v867 = *(v34 + 4);
  v868 = v142;
  v143 = *(v34 + 7);
  v869 = *(v34 + 6);
  v870 = v143;
  v144 = *(v34 + 1);
  v863 = *v34;
  v864 = v144;
  v145 = *(v34 + 3);
  v865 = *(v34 + 2);
  v866 = v145;
  v146 = *(v42 + 13);
  v890 = *(v42 + 12);
  v891 = v146;
  v892 = *(v42 + 14);
  v893 = *(v42 + 30);
  v147 = *(v42 + 9);
  v886 = *(v42 + 8);
  v887 = v147;
  v148 = *(v42 + 11);
  v888 = *(v42 + 10);
  v889 = v148;
  v149 = *(v42 + 5);
  v882 = *(v42 + 4);
  v883 = v149;
  v150 = *(v42 + 7);
  v884 = *(v42 + 6);
  v885 = v150;
  v151 = *(v42 + 1);
  v879[0] = *v42;
  v879[1] = v151;
  v152 = *(v42 + 3);
  v880 = *(v42 + 2);
  v881 = v152;
  v153 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v879);
  v154 = BYTE1(v880);
  v859 = v875;
  v860 = v876;
  v861 = v877;
  v862 = v878;
  v855 = v871;
  v856 = v872;
  v857 = v873;
  v858 = v874;
  v851 = v867;
  v852 = v868;
  v853 = v869;
  v854 = v870;
  v848[0] = v863;
  v848[1] = v864;
  v849 = v865;
  v850 = v866;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v848) == 1)
  {
    if (v153 == 1)
    {
      goto LABEL_60;
    }

LABEL_59:
    v1064[0] |= 0x2000000uLL;
    goto LABEL_60;
  }

  if (v153 == 1 || ((v154 ^ BYTE1(v849)) & 1) != 0)
  {
    goto LABEL_59;
  }

LABEL_60:
  v155 = *(v34 + 13);
  v829 = *(v34 + 12);
  v830 = v155;
  v831 = *(v34 + 14);
  v156 = *(v34 + 9);
  v825 = *(v34 + 8);
  v826 = v156;
  v157 = *(v34 + 11);
  v827 = *(v34 + 10);
  v828 = v157;
  v158 = *(v34 + 5);
  v821 = *(v34 + 4);
  v822 = v158;
  v159 = *(v34 + 7);
  v823 = *(v34 + 6);
  v824 = v159;
  v160 = *(v34 + 1);
  v817 = *v34;
  v818 = v160;
  v161 = *(v34 + 3);
  v819 = *(v34 + 2);
  v820 = v161;
  v162 = *(v42 + 13);
  v844 = *(v42 + 12);
  v845 = v162;
  v846 = *(v42 + 14);
  v163 = *(v42 + 9);
  v840 = *(v42 + 8);
  v841 = v163;
  v164 = *(v42 + 11);
  v842 = *(v42 + 10);
  v843 = v164;
  v165 = *(v42 + 5);
  v836 = *(v42 + 4);
  v837 = v165;
  v166 = *(v42 + 7);
  v838 = *(v42 + 6);
  v839 = v166;
  v167 = *(v42 + 1);
  v833[0] = *v42;
  v833[1] = v167;
  v168 = *(v42 + 3);
  v834 = *(v42 + 2);
  v832 = *(v34 + 30);
  v847 = *(v42 + 30);
  v835 = v168;
  v169 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v833);
  v170 = BYTE2(v834);
  v813 = v829;
  v814 = v830;
  v815 = v831;
  v816 = v832;
  v809 = v825;
  v810 = v826;
  v811 = v827;
  v812 = v828;
  v805 = v821;
  v806 = v822;
  v807 = v823;
  v808 = v824;
  v802[0] = v817;
  v802[1] = v818;
  v803 = v819;
  v804 = v820;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v802) != 1)
  {
    if (v169 != 1 && ((v170 ^ BYTE2(v803)) & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if (v169 != 1)
  {
LABEL_65:
    v1064[0] |= 0x4000000uLL;
  }

LABEL_66:
  v171 = *(v34 + 13);
  v798 = *(v34 + 12);
  v799 = v171;
  v800 = *(v34 + 14);
  v172 = *(v34 + 9);
  v794 = *(v34 + 8);
  v795 = v172;
  v173 = *(v34 + 11);
  v796 = *(v34 + 10);
  v797 = v173;
  v174 = *(v34 + 5);
  v790 = *(v34 + 4);
  v791 = v174;
  v175 = *(v34 + 7);
  v792 = *(v34 + 6);
  v793 = v175;
  v176 = *(v34 + 1);
  v787[0] = *v34;
  v787[1] = v176;
  v177 = *(v34 + 3);
  v788 = *(v34 + 2);
  v801 = *(v34 + 30);
  v789 = v177;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v787) == 1)
  {
    v178 = 0;
    v179 = 0;
  }

  else
  {
    v178 = *(&v788 + 1);
    v179 = v789;
  }

  v180 = *(v42 + 13);
  v783 = *(v42 + 12);
  v784 = v180;
  v785 = *(v42 + 14);
  v181 = *(v42 + 9);
  v779 = *(v42 + 8);
  v780 = v181;
  v182 = *(v42 + 11);
  v781 = *(v42 + 10);
  v782 = v182;
  v183 = *(v42 + 5);
  v775 = *(v42 + 4);
  v776 = v183;
  v184 = *(v42 + 7);
  v777 = *(v42 + 6);
  v778 = v184;
  v185 = *(v42 + 1);
  v772[0] = *v42;
  v772[1] = v185;
  v186 = *(v42 + 3);
  v773 = *(v42 + 2);
  v786 = *(v42 + 30);
  v774 = v186;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v772) == 1)
  {
    if (!v179)
    {
      goto LABEL_81;
    }

    goto LABEL_79;
  }

  v187 = *(&v773 + 1);
  v188 = v774;

  if (!v179)
  {
    if (!v188)
    {
      goto LABEL_81;
    }

    goto LABEL_79;
  }

  if (!v188)
  {
LABEL_79:

LABEL_80:
    v1064[0] |= 0x8000000uLL;
    goto LABEL_81;
  }

  if (v178 == v187 && v179 == v188)
  {

    goto LABEL_81;
  }

  v396 = sub_1CF9E8048();

  if ((v396 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_81:
  v189 = *(v34 + 13);
  v768 = *(v34 + 12);
  v769 = v189;
  v770 = *(v34 + 14);
  v190 = *(v34 + 9);
  v764 = *(v34 + 8);
  v765 = v190;
  v191 = *(v34 + 11);
  v766 = *(v34 + 10);
  v767 = v191;
  v192 = *(v34 + 5);
  v760 = *(v34 + 4);
  v761 = v192;
  v193 = *(v34 + 7);
  v762 = *(v34 + 6);
  v763 = v193;
  v194 = *(v34 + 1);
  v758[0] = *v34;
  v758[1] = v194;
  v195 = *(v34 + 3);
  v758[2] = *(v34 + 2);
  v771 = *(v34 + 30);
  v759 = v195;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v758) == 1)
  {
    v196 = 0;
    v197 = 0;
  }

  else
  {
    v196 = *(&v759 + 1);
    v197 = v760;
  }

  v198 = *(v42 + 13);
  v754 = *(v42 + 12);
  v755 = v198;
  v756 = *(v42 + 14);
  v199 = *(v42 + 9);
  v750 = *(v42 + 8);
  v751 = v199;
  v200 = *(v42 + 11);
  v752 = *(v42 + 10);
  v753 = v200;
  v201 = *(v42 + 5);
  v746 = *(v42 + 4);
  v747 = v201;
  v202 = *(v42 + 7);
  v748 = *(v42 + 6);
  v749 = v202;
  v203 = *(v42 + 1);
  v744[0] = *v42;
  v744[1] = v203;
  v204 = *(v42 + 3);
  v744[2] = *(v42 + 2);
  v757 = *(v42 + 30);
  v745 = v204;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v744) == 1)
  {
    if (!v197)
    {
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  v205 = *(&v745 + 1);
  v206 = v746;

  if (!v197)
  {
    if (!v206)
    {
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  if (!v206)
  {
LABEL_94:

LABEL_95:
    v1064[0] |= 0x10000000uLL;
    goto LABEL_96;
  }

  if (v196 == v205 && v197 == v206)
  {

    goto LABEL_96;
  }

  v397 = sub_1CF9E8048();

  if ((v397 & 1) == 0)
  {
    goto LABEL_95;
  }

LABEL_96:
  v207 = *(v34 + 13);
  v727 = *(v34 + 12);
  v728 = v207;
  v729 = *(v34 + 14);
  v208 = *(v34 + 9);
  v723 = *(v34 + 8);
  v724 = v208;
  v209 = *(v34 + 11);
  v725 = *(v34 + 10);
  v726 = v209;
  v210 = *(v34 + 5);
  v719 = *(v34 + 4);
  v720 = v210;
  v211 = *(v34 + 7);
  v721 = *(v34 + 6);
  v722 = v211;
  v212 = *(v34 + 1);
  v715 = *v34;
  v716 = v212;
  v213 = *(v34 + 3);
  v717 = *(v34 + 2);
  v718 = v213;
  v214 = *(v42 + 13);
  v740 = *(v42 + 12);
  v741 = v214;
  v742 = *(v42 + 14);
  v215 = *(v42 + 9);
  v736 = *(v42 + 8);
  v737 = v215;
  v216 = *(v42 + 11);
  v738 = *(v42 + 10);
  v739 = v216;
  v217 = *(v42 + 5);
  v732 = *(v42 + 4);
  v733 = v217;
  v218 = *(v42 + 7);
  v734 = *(v42 + 6);
  v735 = v218;
  v219 = *(v42 + 1);
  v731[0] = *v42;
  v731[1] = v219;
  v220 = *(v42 + 3);
  v731[2] = *(v42 + 2);
  v730 = *(v34 + 30);
  v743 = *(v42 + 30);
  v731[3] = v220;
  v221 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v731);
  v222 = BYTE8(v732);
  v711 = v727;
  v712 = v728;
  v713 = v729;
  v714 = v730;
  v707 = v723;
  v708 = v724;
  v709 = v725;
  v710 = v726;
  v703 = v719;
  v704 = v720;
  v705 = v721;
  v706 = v722;
  v702[0] = v715;
  v702[1] = v716;
  v702[2] = v717;
  v702[3] = v718;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v702) != 1)
  {
    if (v221 != 1 && ((v222 ^ BYTE8(v703)) & 1) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

  if (v221 != 1)
  {
LABEL_101:
    v1064[0] |= 0x20000000uLL;
  }

LABEL_102:
  v223 = *(v34 + 13);
  v698 = *(v34 + 12);
  v699 = v223;
  v700 = *(v34 + 14);
  v224 = *(v34 + 9);
  v694 = *(v34 + 8);
  v695 = v224;
  v225 = *(v34 + 11);
  v696 = *(v34 + 10);
  v697 = v225;
  v226 = *(v34 + 5);
  v690[4] = *(v34 + 4);
  v691 = v226;
  v227 = *(v34 + 7);
  v692 = *(v34 + 6);
  v693 = v227;
  v228 = *(v34 + 1);
  v690[0] = *v34;
  v690[1] = v228;
  v229 = *(v34 + 3);
  v690[2] = *(v34 + 2);
  v701 = *(v34 + 30);
  v690[3] = v229;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v690) == 1)
  {
    v230 = 0;
    v231 = 0;
  }

  else
  {
    v231 = *(&v691 + 1);
    v230 = v691;
  }

  v232 = *(v42 + 13);
  v686 = *(v42 + 12);
  v687 = v232;
  v688 = *(v42 + 14);
  v233 = *(v42 + 9);
  v682 = *(v42 + 8);
  v683 = v233;
  v234 = *(v42 + 11);
  v684 = *(v42 + 10);
  v685 = v234;
  v235 = *(v42 + 5);
  v678[4] = *(v42 + 4);
  v679 = v235;
  v236 = *(v42 + 7);
  v680 = *(v42 + 6);
  v681 = v236;
  v237 = *(v42 + 1);
  v678[0] = *v42;
  v678[1] = v237;
  v238 = *(v42 + 3);
  v678[2] = *(v42 + 2);
  v689 = *(v42 + 30);
  v678[3] = v238;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v678) == 1)
  {
    if (!v231)
    {
      goto LABEL_116;
    }

    goto LABEL_114;
  }

  v239 = v679;

  if (!v231)
  {
    if (!*(&v239 + 1))
    {
      goto LABEL_116;
    }

    goto LABEL_114;
  }

  if (!*(&v239 + 1))
  {
LABEL_114:

LABEL_115:
    v1064[0] |= 0x40000000uLL;
    goto LABEL_116;
  }

  if (__PAIR128__(v231, v230) == v239)
  {

    goto LABEL_116;
  }

  v398 = sub_1CF9E8048();

  if ((v398 & 1) == 0)
  {
    goto LABEL_115;
  }

LABEL_116:
  v240 = *(v34 + 13);
  v663 = *(v34 + 12);
  v664 = v240;
  v665 = *(v34 + 14);
  v241 = *(v34 + 9);
  v659 = *(v34 + 8);
  v660 = v241;
  v242 = *(v34 + 11);
  v661 = *(v34 + 10);
  v662 = v242;
  v243 = *(v34 + 5);
  v655 = *(v34 + 4);
  v656 = v243;
  v244 = *(v34 + 7);
  v657 = *(v34 + 6);
  v658 = v244;
  v245 = *(v34 + 1);
  v651 = *v34;
  v652 = v245;
  v246 = *(v34 + 3);
  v653 = *(v34 + 2);
  v654 = v246;
  v247 = *(v42 + 13);
  v674 = *(v42 + 12);
  v675 = v247;
  v676 = *(v42 + 14);
  v248 = *(v42 + 9);
  v670 = *(v42 + 8);
  v671 = v248;
  v249 = *(v42 + 11);
  v672 = *(v42 + 10);
  v673 = v249;
  v250 = *(v42 + 5);
  v667[4] = *(v42 + 4);
  v667[5] = v250;
  v251 = *(v42 + 7);
  v668 = *(v42 + 6);
  v669 = v251;
  v252 = *(v42 + 1);
  v667[0] = *v42;
  v667[1] = v252;
  v253 = *(v42 + 3);
  v667[2] = *(v42 + 2);
  v666 = *(v34 + 30);
  v677 = *(v42 + 30);
  v667[3] = v253;
  v254 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v667);
  v255 = BYTE8(v668);
  v647 = v663;
  v648 = v664;
  v649 = v665;
  v650 = v666;
  v643 = v659;
  v644 = v660;
  v645 = v661;
  v646 = v662;
  v640[4] = v655;
  v640[5] = v656;
  v641 = v657;
  v642 = v658;
  v640[0] = v651;
  v640[1] = v652;
  v640[2] = v653;
  v640[3] = v654;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v640) == 1)
  {
    if (v254 == 1)
    {
      goto LABEL_122;
    }

LABEL_121:
    v1064[0] |= 0x80000000uLL;
    goto LABEL_122;
  }

  if (v254 == 1 || ((v255 ^ BYTE8(v641)) & 1) != 0)
  {
    goto LABEL_121;
  }

LABEL_122:
  v256 = *(v34 + 13);
  v625 = *(v34 + 12);
  v626 = v256;
  v627 = *(v34 + 14);
  v628 = *(v34 + 30);
  v257 = *(v34 + 9);
  v621 = *(v34 + 8);
  v622 = v257;
  v258 = *(v34 + 11);
  v623 = *(v34 + 10);
  v624 = v258;
  v259 = *(v34 + 5);
  v617 = *(v34 + 4);
  v618 = v259;
  v260 = *(v34 + 7);
  v619 = *(v34 + 6);
  v620 = v260;
  v261 = *(v34 + 1);
  v613 = *v34;
  v614 = v261;
  v262 = *(v34 + 3);
  v615 = *(v34 + 2);
  v616 = v262;
  v263 = *(v42 + 13);
  v636 = *(v42 + 12);
  v637 = v263;
  v638 = *(v42 + 14);
  v639 = *(v42 + 30);
  v264 = *(v42 + 9);
  v632 = *(v42 + 8);
  v633 = v264;
  v265 = *(v42 + 11);
  v634 = *(v42 + 10);
  v635 = v265;
  v266 = *(v42 + 5);
  v629[4] = *(v42 + 4);
  v629[5] = v266;
  v267 = *(v42 + 7);
  v630 = *(v42 + 6);
  v631 = v267;
  v268 = *(v42 + 1);
  v629[0] = *v42;
  v629[1] = v268;
  v269 = *(v42 + 3);
  v629[2] = *(v42 + 2);
  v629[3] = v269;
  v270 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v629);
  v609 = v625;
  v610 = v626;
  v611 = v627;
  v605 = v621;
  v606 = v622;
  v607 = v623;
  v608 = v624;
  v602[4] = v617;
  v602[5] = v618;
  v603 = v619;
  v604 = v620;
  v602[0] = v613;
  v602[1] = v614;
  v602[2] = v615;
  v271 = BYTE9(v630);
  v612 = v628;
  v602[3] = v616;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v602) != 1)
  {
    if (v270 != 1 && ((v271 ^ BYTE9(v603)) & 1) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

  if (v270 != 1)
  {
LABEL_127:
    v1064[0] |= 0x100000000uLL;
  }

LABEL_128:
  v272 = *(v34 + 13);
  v598 = *(v34 + 12);
  v599 = v272;
  v600 = *(v34 + 14);
  v273 = *(v34 + 9);
  v594 = *(v34 + 8);
  v595 = v273;
  v274 = *(v34 + 11);
  v596 = *(v34 + 10);
  v597 = v274;
  v275 = *(v34 + 5);
  v592[4] = *(v34 + 4);
  v592[5] = v275;
  v276 = *(v34 + 7);
  v592[6] = *(v34 + 6);
  v593 = v276;
  v277 = *(v34 + 1);
  v592[0] = *v34;
  v592[1] = v277;
  v278 = *(v34 + 3);
  v592[2] = *(v34 + 2);
  v601 = *(v34 + 30);
  v592[3] = v278;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v592) == 1)
  {
    v279 = 0;
    v280 = 0;
  }

  else
  {
    v280 = *(&v593 + 1);
    v279 = v593;
  }

  v281 = *(v42 + 13);
  v588 = *(v42 + 12);
  v589 = v281;
  v590 = *(v42 + 14);
  v282 = *(v42 + 9);
  v584 = *(v42 + 8);
  v585 = v282;
  v283 = *(v42 + 11);
  v586 = *(v42 + 10);
  v587 = v283;
  v284 = *(v42 + 5);
  v582[4] = *(v42 + 4);
  v582[5] = v284;
  v285 = *(v42 + 7);
  v582[6] = *(v42 + 6);
  v583 = v285;
  v286 = *(v42 + 1);
  v582[0] = *v42;
  v582[1] = v286;
  v287 = *(v42 + 3);
  v582[2] = *(v42 + 2);
  v591 = *(v42 + 30);
  v582[3] = v287;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v582) == 1)
  {
    if (!v280)
    {
      goto LABEL_142;
    }

    goto LABEL_140;
  }

  v288 = v583;

  if (!v280)
  {
    if (!*(&v288 + 1))
    {
      goto LABEL_142;
    }

    goto LABEL_140;
  }

  if (!*(&v288 + 1))
  {
LABEL_140:

LABEL_141:
    v1064[0] |= 0x200000000uLL;
    goto LABEL_142;
  }

  if (__PAIR128__(v280, v279) == v288)
  {

    goto LABEL_142;
  }

  v399 = sub_1CF9E8048();

  if ((v399 & 1) == 0)
  {
    goto LABEL_141;
  }

LABEL_142:
  v289 = *(v34 + 13);
  v578 = *(v34 + 12);
  v579 = v289;
  v580 = *(v34 + 14);
  v290 = *(v34 + 9);
  v574 = *(v34 + 8);
  v575 = v290;
  v291 = *(v34 + 11);
  v576 = *(v34 + 10);
  v577 = v291;
  v292 = *(v34 + 5);
  v573[4] = *(v34 + 4);
  v573[5] = v292;
  v293 = *(v34 + 7);
  v573[6] = *(v34 + 6);
  v573[7] = v293;
  v294 = *(v34 + 1);
  v573[0] = *v34;
  v573[1] = v294;
  v295 = *(v34 + 3);
  v573[2] = *(v34 + 2);
  v581 = *(v34 + 30);
  v573[3] = v295;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v573) == 1)
  {
    v296 = 0;
    v297 = 0;
  }

  else
  {
    v297 = *(&v574 + 1);
    v296 = v574;
  }

  v298 = *(v42 + 13);
  v569 = *(v42 + 12);
  v570 = v298;
  v571 = *(v42 + 14);
  v299 = *(v42 + 9);
  v565 = *(v42 + 8);
  v566 = v299;
  v300 = *(v42 + 11);
  v567 = *(v42 + 10);
  v568 = v300;
  v301 = *(v42 + 5);
  v564[4] = *(v42 + 4);
  v564[5] = v301;
  v302 = *(v42 + 7);
  v564[6] = *(v42 + 6);
  v564[7] = v302;
  v303 = *(v42 + 1);
  v564[0] = *v42;
  v564[1] = v303;
  v304 = *(v42 + 3);
  v564[2] = *(v42 + 2);
  v572 = *(v42 + 30);
  v564[3] = v304;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v564) == 1)
  {
    if (!v297)
    {
      goto LABEL_156;
    }

    goto LABEL_154;
  }

  v305 = v565;

  if (!v297)
  {
    if (!*(&v305 + 1))
    {
      goto LABEL_156;
    }

    goto LABEL_154;
  }

  if (!*(&v305 + 1))
  {
LABEL_154:

LABEL_155:
    v1064[0] |= 0x400000000uLL;
    goto LABEL_156;
  }

  if (__PAIR128__(v297, v296) == v305)
  {

    goto LABEL_156;
  }

  v400 = sub_1CF9E8048();

  if ((v400 & 1) == 0)
  {
    goto LABEL_155;
  }

LABEL_156:
  v306 = *(v34 + 13);
  v560 = *(v34 + 12);
  v561 = v306;
  v562 = *(v34 + 14);
  v307 = *(v34 + 9);
  v556[8] = *(v34 + 8);
  v557 = v307;
  v308 = *(v34 + 11);
  v558 = *(v34 + 10);
  v559 = v308;
  v309 = *(v34 + 5);
  v556[4] = *(v34 + 4);
  v556[5] = v309;
  v310 = *(v34 + 7);
  v556[6] = *(v34 + 6);
  v556[7] = v310;
  v311 = *(v34 + 1);
  v556[0] = *v34;
  v556[1] = v311;
  v312 = *(v34 + 3);
  v556[2] = *(v34 + 2);
  v563 = *(v34 + 30);
  v556[3] = v312;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v556) == 1)
  {
    v313 = 0;
    v314 = 0;
  }

  else
  {
    v314 = *(&v557 + 1);
    v313 = v557;
  }

  v315 = *(v42 + 13);
  v552 = *(v42 + 12);
  v553 = v315;
  v554 = *(v42 + 14);
  v316 = *(v42 + 9);
  v548[8] = *(v42 + 8);
  v549 = v316;
  v317 = *(v42 + 11);
  v550 = *(v42 + 10);
  v551 = v317;
  v318 = *(v42 + 5);
  v548[4] = *(v42 + 4);
  v548[5] = v318;
  v319 = *(v42 + 7);
  v548[6] = *(v42 + 6);
  v548[7] = v319;
  v320 = *(v42 + 1);
  v548[0] = *v42;
  v548[1] = v320;
  v321 = *(v42 + 3);
  v548[2] = *(v42 + 2);
  v555 = *(v42 + 30);
  v548[3] = v321;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v548) == 1)
  {
    if (!v314)
    {
      goto LABEL_170;
    }

    goto LABEL_168;
  }

  v322 = v549;

  if (!v314)
  {
    if (!*(&v322 + 1))
    {
      goto LABEL_170;
    }

    goto LABEL_168;
  }

  if (!*(&v322 + 1))
  {
LABEL_168:

LABEL_169:
    v1064[0] |= 0x800000000uLL;
    goto LABEL_170;
  }

  if (__PAIR128__(v314, v313) == v322)
  {

    goto LABEL_170;
  }

  v401 = sub_1CF9E8048();

  if ((v401 & 1) == 0)
  {
    goto LABEL_169;
  }

LABEL_170:
  v323 = *(v34 + 13);
  v544 = *(v34 + 12);
  v545 = v323;
  v546 = *(v34 + 14);
  v324 = *(v34 + 9);
  v541[8] = *(v34 + 8);
  v541[9] = v324;
  v325 = *(v34 + 11);
  v542 = *(v34 + 10);
  v543 = v325;
  v326 = *(v34 + 5);
  v541[4] = *(v34 + 4);
  v541[5] = v326;
  v327 = *(v34 + 7);
  v541[6] = *(v34 + 6);
  v541[7] = v327;
  v328 = *(v34 + 1);
  v541[0] = *v34;
  v541[1] = v328;
  v329 = *(v34 + 3);
  v541[2] = *(v34 + 2);
  v547 = *(v34 + 30);
  v541[3] = v329;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v541) == 1)
  {
    v330 = 0;
    v331 = 0;
  }

  else
  {
    v331 = *(&v542 + 1);
    v330 = v542;
  }

  v332 = *(v42 + 13);
  v537 = *(v42 + 12);
  v538 = v332;
  v539 = *(v42 + 14);
  v333 = *(v42 + 9);
  v534[8] = *(v42 + 8);
  v534[9] = v333;
  v334 = *(v42 + 11);
  v535 = *(v42 + 10);
  v536 = v334;
  v335 = *(v42 + 5);
  v534[4] = *(v42 + 4);
  v534[5] = v335;
  v336 = *(v42 + 7);
  v534[6] = *(v42 + 6);
  v534[7] = v336;
  v337 = *(v42 + 1);
  v534[0] = *v42;
  v534[1] = v337;
  v338 = *(v42 + 3);
  v534[2] = *(v42 + 2);
  v540 = *(v42 + 30);
  v534[3] = v338;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v534) == 1)
  {
    if (v331)
    {
      goto LABEL_182;
    }

    goto LABEL_184;
  }

  v339 = v535;

  if (!v331)
  {
    if (!*(&v339 + 1))
    {
      goto LABEL_184;
    }

LABEL_182:

LABEL_183:
    v1064[0] |= 0x1000000000uLL;
    goto LABEL_185;
  }

  if (!*(&v339 + 1))
  {
    goto LABEL_182;
  }

  *&v528[0] = v330;
  *(&v528[0] + 1) = v331;

  v340 = sub_1CF662E90();
  v342 = v341;
  v512 = v339;
  if (v340 == sub_1CF662E90() && v342 == v343)
  {

    swift_bridgeObjectRelease_n();
LABEL_184:

    goto LABEL_185;
  }

  v402 = sub_1CF9E8048();

  swift_bridgeObjectRelease_n();

  if ((v402 & 1) == 0)
  {
    goto LABEL_183;
  }

LABEL_185:
  v344 = *(v34 + 13);
  v524 = *(v34 + 12);
  v525 = v344;
  v526 = *(v34 + 14);
  v345 = *(v34 + 9);
  v520 = *(v34 + 8);
  v521 = v345;
  v346 = *(v34 + 11);
  v522 = *(v34 + 10);
  v523 = v346;
  v347 = *(v34 + 5);
  v516 = *(v34 + 4);
  v517 = v347;
  v348 = *(v34 + 7);
  v518 = *(v34 + 6);
  v519 = v348;
  v349 = *(v34 + 1);
  v512 = *v34;
  v513 = v349;
  v350 = *(v34 + 3);
  v514 = *(v34 + 2);
  v515 = v350;
  v351 = *(v42 + 13);
  v530 = *(v42 + 12);
  v531 = v351;
  v532 = *(v42 + 14);
  v352 = *(v42 + 9);
  v528[8] = *(v42 + 8);
  v528[9] = v352;
  v353 = *(v42 + 11);
  v528[10] = *(v42 + 10);
  v529 = v353;
  v354 = *(v42 + 5);
  v528[4] = *(v42 + 4);
  v528[5] = v354;
  v355 = *(v42 + 7);
  v528[6] = *(v42 + 6);
  v528[7] = v355;
  v356 = *(v42 + 1);
  v528[0] = *v42;
  v528[1] = v356;
  v357 = *(v42 + 3);
  v528[2] = *(v42 + 2);
  v527 = *(v34 + 30);
  v533 = *(v42 + 30);
  v528[3] = v357;
  v358 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v528);
  v359 = v529;
  v508 = v524;
  v509 = v525;
  v510 = v526;
  v511 = v527;
  v506[8] = v520;
  v506[9] = v521;
  v506[10] = v522;
  v507 = v523;
  v506[4] = v516;
  v506[5] = v517;
  v506[6] = v518;
  v506[7] = v519;
  v506[0] = v512;
  v506[1] = v513;
  v506[2] = v514;
  v506[3] = v515;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v506) != 1)
  {
    if (v358 != 1 && ((v359 ^ v507) & 1) == 0)
    {
      goto LABEL_191;
    }

    goto LABEL_190;
  }

  if (v358 != 1)
  {
LABEL_190:
    v1064[0] |= 0x2000000000uLL;
  }

LABEL_191:
  v360 = *(v34 + 13);
  v502 = *(v34 + 12);
  v503 = v360;
  v504 = *(v34 + 14);
  v361 = *(v34 + 9);
  v500[8] = *(v34 + 8);
  v500[9] = v361;
  v362 = *(v34 + 11);
  v500[10] = *(v34 + 10);
  v501 = v362;
  v363 = *(v34 + 5);
  v500[4] = *(v34 + 4);
  v500[5] = v363;
  v364 = *(v34 + 7);
  v500[6] = *(v34 + 6);
  v500[7] = v364;
  v365 = *(v34 + 1);
  v500[0] = *v34;
  v500[1] = v365;
  v366 = *(v34 + 3);
  v500[2] = *(v34 + 2);
  v505 = *(v34 + 30);
  v500[3] = v366;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v500) == 1)
  {
    v367 = 0;
  }

  else
  {
    v367 = *(&v501 + 1);
  }

  v368 = *(v42 + 13);
  v496 = *(v42 + 12);
  v497 = v368;
  v498 = *(v42 + 14);
  v369 = *(v42 + 9);
  v494[8] = *(v42 + 8);
  v494[9] = v369;
  v370 = *(v42 + 11);
  v494[10] = *(v42 + 10);
  v495 = v370;
  v371 = *(v42 + 5);
  v494[4] = *(v42 + 4);
  v494[5] = v371;
  v372 = *(v42 + 7);
  v494[6] = *(v42 + 6);
  v494[7] = v372;
  v373 = *(v42 + 1);
  v494[0] = *v42;
  v494[1] = v373;
  v374 = *(v42 + 3);
  v494[2] = *(v42 + 2);
  v499 = *(v42 + 30);
  v494[3] = v374;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v494) == 1)
  {
    if (!v367)
    {
      goto LABEL_205;
    }

    goto LABEL_203;
  }

  v375 = *(&v495 + 1);

  if (!v367)
  {
    if (!v375)
    {
      goto LABEL_205;
    }

    goto LABEL_203;
  }

  if (!v375)
  {
LABEL_203:

    goto LABEL_204;
  }

  v376 = sub_1CF6BEA0C(v367, v375);

  if ((v376 & 1) == 0)
  {
LABEL_204:
    v1064[0] |= 0x4000000000uLL;
  }

LABEL_205:
  v377 = *(v34 + 13);
  v490 = *(v34 + 12);
  v491 = v377;
  v492 = *(v34 + 14);
  v378 = *(v34 + 9);
  v489[8] = *(v34 + 8);
  v489[9] = v378;
  v379 = *(v34 + 11);
  v489[10] = *(v34 + 10);
  v489[11] = v379;
  v380 = *(v34 + 5);
  v489[4] = *(v34 + 4);
  v489[5] = v380;
  v381 = *(v34 + 7);
  v489[6] = *(v34 + 6);
  v489[7] = v381;
  v382 = *(v34 + 1);
  v489[0] = *v34;
  v489[1] = v382;
  v383 = *(v34 + 3);
  v489[2] = *(v34 + 2);
  v493 = *(v34 + 30);
  v489[3] = v383;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v489) == 1)
  {
    v384 = 0;
    v385 = 0;
  }

  else
  {
    v385 = *(&v490 + 1);
    v384 = v490;
    sub_1CF075D00(v490);
  }

  v386 = *(v42 + 13);
  v485 = *(v42 + 12);
  v486 = v386;
  v487 = *(v42 + 14);
  v387 = *(v42 + 9);
  v484[8] = *(v42 + 8);
  v484[9] = v387;
  v388 = *(v42 + 11);
  v484[10] = *(v42 + 10);
  v484[11] = v388;
  v389 = *(v42 + 5);
  v484[4] = *(v42 + 4);
  v484[5] = v389;
  v390 = *(v42 + 7);
  v484[6] = *(v42 + 6);
  v484[7] = v390;
  v391 = *(v42 + 1);
  v484[0] = *v42;
  v484[1] = v391;
  v392 = *(v42 + 3);
  v484[2] = *(v42 + 2);
  v488 = *(v42 + 30);
  v484[3] = v392;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v484) == 1)
  {
    if (!v384)
    {
      goto LABEL_236;
    }

    goto LABEL_233;
  }

  v393 = v485;
  sub_1CF075D00(v485);
  if (!v384)
  {
    if (!v393)
    {
      goto LABEL_236;
    }

    v395 = v393;
    goto LABEL_234;
  }

  if (!v393)
  {
LABEL_233:
    v395 = v384;
LABEL_234:
    sub_1CF24CCFC(v395);
    goto LABEL_235;
  }

  if ((sub_1CF6BEA0C(v384, v393) & 1) == 0)
  {

    goto LABEL_233;
  }

  v394 = sub_1CF6BEA0C(v385, *(&v393 + 1));

  sub_1CF24CCFC(v384);
  if ((v394 & 1) == 0)
  {
LABEL_235:
    v1064[0] |= 0x8000000000uLL;
  }

LABEL_236:
  v403 = *(v34 + 13);
  v480[12] = *(v34 + 12);
  v481 = v403;
  v482 = *(v34 + 14);
  v404 = *(v34 + 9);
  v480[8] = *(v34 + 8);
  v480[9] = v404;
  v405 = *(v34 + 11);
  v480[10] = *(v34 + 10);
  v480[11] = v405;
  v406 = *(v34 + 5);
  v480[4] = *(v34 + 4);
  v480[5] = v406;
  v407 = *(v34 + 7);
  v480[6] = *(v34 + 6);
  v480[7] = v407;
  v408 = *(v34 + 1);
  v480[0] = *v34;
  v480[1] = v408;
  v409 = *(v34 + 3);
  v480[2] = *(v34 + 2);
  v483 = *(v34 + 30);
  v480[3] = v409;
  v410 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v480);
  v411 = *(v42 + 13);
  v476[12] = *(v42 + 12);
  v477 = v411;
  v478 = *(v42 + 14);
  v412 = *(v42 + 9);
  v476[8] = *(v42 + 8);
  v476[9] = v412;
  v413 = *(v42 + 11);
  v476[10] = *(v42 + 10);
  v476[11] = v413;
  v414 = *(v42 + 5);
  v476[4] = *(v42 + 4);
  v476[5] = v414;
  v415 = *(v42 + 7);
  v476[6] = *(v42 + 6);
  v476[7] = v415;
  v416 = *(v42 + 1);
  v476[0] = *v42;
  v476[1] = v416;
  v417 = *(v42 + 3);
  v476[2] = *(v42 + 2);
  v418 = v481;
  v479 = *(v42 + 30);
  v476[3] = v417;
  v419 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v476);
  if (v410 == 1)
  {
    if (v419 == 1)
    {
      goto LABEL_242;
    }

    goto LABEL_241;
  }

  if (v419 == 1 || v418 != v477)
  {
LABEL_241:
    v1064[0] |= 0x2000000000000uLL;
  }

LABEL_242:
  v420 = *(v34 + 13);
  v473[12] = *(v34 + 12);
  v473[13] = v420;
  v474 = *(v34 + 14);
  v475 = *(v34 + 30);
  v421 = *(v34 + 9);
  v473[8] = *(v34 + 8);
  v473[9] = v421;
  v422 = *(v34 + 11);
  v473[10] = *(v34 + 10);
  v473[11] = v422;
  v423 = *(v34 + 5);
  v473[4] = *(v34 + 4);
  v473[5] = v423;
  v424 = *(v34 + 7);
  v473[6] = *(v34 + 6);
  v473[7] = v424;
  v425 = *(v34 + 1);
  v473[0] = *v34;
  v473[1] = v425;
  v426 = *(v34 + 3);
  v473[2] = *(v34 + 2);
  v473[3] = v426;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v473) == 1 || !v474)
  {
    v428 = 0;
  }

  else
  {

    v428 = sub_1CF93CD44(v427);
  }

  v429 = *(v42 + 13);
  v470[12] = *(v42 + 12);
  v470[13] = v429;
  v471 = *(v42 + 14);
  v472 = *(v42 + 30);
  v430 = *(v42 + 9);
  v470[8] = *(v42 + 8);
  v470[9] = v430;
  v431 = *(v42 + 11);
  v470[10] = *(v42 + 10);
  v470[11] = v431;
  v432 = *(v42 + 5);
  v470[4] = *(v42 + 4);
  v470[5] = v432;
  v433 = *(v42 + 7);
  v470[6] = *(v42 + 6);
  v470[7] = v433;
  v434 = *(v42 + 1);
  v470[0] = *v42;
  v470[1] = v434;
  v435 = *(v42 + 3);
  v470[2] = *(v42 + 2);
  v470[3] = v435;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v470) == 1 || !v471)
  {
    v437 = 0;
    if (!v428)
    {
LABEL_249:
      if (!v437)
      {
        goto LABEL_257;
      }

      goto LABEL_255;
    }
  }

  else
  {

    v437 = sub_1CF93CD44(v436);

    if (!v428)
    {
      goto LABEL_249;
    }
  }

  if (!v437)
  {
LABEL_255:

    goto LABEL_256;
  }

  v438 = sub_1CF6BF228(v428, v437);

  if ((v438 & 1) == 0)
  {
LABEL_256:
    v1064[0] |= 0x4000000000000uLL;
  }

LABEL_257:
  v439 = *(v34 + 13);
  v467[12] = *(v34 + 12);
  v467[13] = v439;
  v468 = *(v34 + 14);
  v469 = *(v34 + 30);
  v440 = *(v34 + 9);
  v467[8] = *(v34 + 8);
  v467[9] = v440;
  v441 = *(v34 + 11);
  v467[10] = *(v34 + 10);
  v467[11] = v441;
  v442 = *(v34 + 5);
  v467[4] = *(v34 + 4);
  v467[5] = v442;
  v443 = *(v34 + 7);
  v467[6] = *(v34 + 6);
  v467[7] = v443;
  v444 = *(v34 + 1);
  v467[0] = *v34;
  v467[1] = v444;
  v445 = *(v34 + 3);
  v467[2] = *(v34 + 2);
  v467[3] = v445;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v467) == 1)
  {
    v446 = 0;
    v447 = 0;
  }

  else
  {
    v446 = *(&v468 + 1);
    v447 = v469;
  }

  v448 = *(v42 + 13);
  v464[12] = *(v42 + 12);
  v464[13] = v448;
  v465 = *(v42 + 14);
  v466 = *(v42 + 30);
  v449 = *(v42 + 9);
  v464[8] = *(v42 + 8);
  v464[9] = v449;
  v450 = *(v42 + 11);
  v464[10] = *(v42 + 10);
  v464[11] = v450;
  v451 = *(v42 + 5);
  v464[4] = *(v42 + 4);
  v464[5] = v451;
  v452 = *(v42 + 7);
  v464[6] = *(v42 + 6);
  v464[7] = v452;
  v453 = *(v42 + 1);
  v464[0] = *v42;
  v464[1] = v453;
  v454 = *(v42 + 3);
  v464[2] = *(v42 + 2);
  v464[3] = v454;
  result = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v464);
  if (result == 1)
  {
    if (!v447)
    {
      goto LABEL_272;
    }

    goto LABEL_270;
  }

  v457 = *(&v465 + 1);
  v456 = v466;

  if (!v447)
  {
    if (!v456)
    {
      goto LABEL_272;
    }

LABEL_270:

LABEL_271:
    v1064[0] |= 0x8000000000000uLL;
    goto LABEL_272;
  }

  if (!v456)
  {
    goto LABEL_270;
  }

  if (v446 != v457 || v447 != v456)
  {
    v458 = sub_1CF9E8048();

    if (v458)
    {
      goto LABEL_272;
    }

    goto LABEL_271;
  }

LABEL_272:
  *v463 = v1064[0];
  return result;
}