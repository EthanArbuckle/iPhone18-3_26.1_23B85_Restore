float sub_1C48835BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v80[1] = a6;
  v84 = a4;
  v85 = a5;
  v88 = a2;
  v87 = a3(0);
  v7 = sub_1C43FCDF8(v87);
  v83 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v94 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v80[0] = v80 - v14;
  v15 = sub_1C4EFEEF8();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  v23 = (v21 - v22);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v86 = v80 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v89 = v80 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v80 - v29;
  v93 = type metadata accessor for EntityTriple(0);
  v31 = sub_1C43FCDF8(v93);
  v90 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBD08();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v81 = v80 - v39;
  v82 = v23;
  v40 = 0;
  v41 = *(a1 + 16);
  v91 = a1;
  v92 = v41;
  v95 = (v18 + 8);
  while (1)
  {
    v42 = 0.0;
    if (v92 == v40)
    {
      return v42;
    }

    sub_1C44718CC(v91 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v40, v37);
    v43 = *(v93 + 28);
    sub_1C4EFE558();
    sub_1C4885B38(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C43FD4F4();
    sub_1C43FD4F4();
    v44 = v96;
    sub_1C44132BC();
    v45 = v45 && v44 == v30;
    if (v45)
    {
      v46 = 1;
    }

    else
    {
      v46 = sub_1C43FBEC0();
    }

    v47 = *v95;
    (*v95)(v30, v15);

    if (v46)
    {
      goto LABEL_17;
    }

    v48 = v89;
    sub_1C4EFE7E8();
    sub_1C43FD4F4();
    v49 = v48;
    sub_1C43FD4F4();
    v50 = v96;
    sub_1C44132BC();
    if (v45 && v50 == v49)
    {
      v54 = sub_1C4400554();
      (v47)(v54);

LABEL_17:
      v55 = v81;
      sub_1C447200C(v37, v81);
      v56 = (v55 + *(v93 + 32));
      v57 = v56[1];
      v92 = *v56;
      v93 = v57;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44854B4(v55, type metadata accessor for EntityTriple);
      v58 = 0;
      v59 = *(v88 + 16);
      while (1)
      {
        v60 = v86;
        if (v59 == v58)
        {

          return v42;
        }

        sub_1C44718CC(v88 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v58, v94);
        v61 = *(v87 + 28);
        sub_1C4EFE558();
        sub_1C43FD4F4();
        sub_1C43FD4F4();
        v62 = v96;
        sub_1C44132BC();
        if (v45 && v62 == v60)
        {
          v72 = v60;
          goto LABEL_33;
        }

        v64 = sub_1C43FBEC0();
        v47(v60, v15);

        if (v64)
        {
          goto LABEL_34;
        }

        v65 = v82;
        sub_1C4EFE7E8();
        v66 = v65;
        sub_1C43FD4F4();
        v67 = v65;
        sub_1C43FD4F4();
        v68 = v96;
        sub_1C44132BC();
        if (v45 && v68 == v67)
        {
          break;
        }

        v70 = sub_1C43FBEC0();
        v71 = sub_1C4400554();
        (v47)(v71);

        if (v70)
        {
          goto LABEL_34;
        }

        sub_1C44854B4(v94, v85);
        ++v58;
      }

      v72 = v66;
LABEL_33:
      v47(v72, v15);

LABEL_34:
      v73 = v80[0];
      sub_1C447200C(v94, v80[0]);
      v74 = (v73 + *(v87 + 32));
      v76 = *v74;
      v75 = v74[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44854B4(v73, v85);
      if (v76 == v92 && v75 == v93)
      {
      }

      else
      {
        v78 = sub_1C4F02938();

        if ((v78 & 1) == 0)
        {
          return v42;
        }
      }

      return 1.0;
    }

    v52 = sub_1C43FBEC0();
    v53 = sub_1C4400554();
    (v47)(v53);

    if (v52)
    {
      goto LABEL_17;
    }

    sub_1C44854B4(v37, type metadata accessor for EntityTriple);
    ++v40;
  }
}

uint64_t sub_1C4883C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v84 = a1;
  v77 = a3;
  v4 = sub_1C4EF9CD8();
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFF0C8();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v73 - v12;
  v14 = type metadata accessor for EntityTriple(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v73 - v20;
  v22 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v73 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v73 - v30;
  v32 = v3;
  v33 = v87;
  result = sub_1C4ACE6A4();
  if (!v33)
  {
    v35 = v13;
    v74 = v29;
    v75 = v26;
    v76 = 0;
    v87 = v17;
    v36 = v82;
    v37 = v83;
    v86 = v31;
    v38 = v32;
    if (v83)
    {
      sub_1C44F1938(v83, v21);
      v39 = type metadata accessor for GraphTriple(0);
      v40 = v35;
      if (sub_1C44157D4(v21, 1, v39) == 1)
      {
        sub_1C4420C3C(v21, &unk_1EC0BC900, &unk_1C4F142D0);
        v41 = 1;
      }

      else
      {
        (*(v81 + 16))(v86, v21, v36);
        sub_1C44854B4(v21, type metadata accessor for GraphTriple);
        v41 = 0;
      }

      v42 = v85;
      v43 = v87;
    }

    else
    {
      v41 = 1;
      v42 = v85;
      v43 = v87;
      v40 = v35;
    }

    v44 = v14;
    sub_1C440BAA8(v86, v41, 1, v36);
    v45 = v84;
    sub_1C44D0BD8(v84, v40);
    if (sub_1C44157D4(v40, 1, v44) == 1)
    {
      sub_1C4420C3C(v40, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v46 = sub_1C4F00978();
      sub_1C442B738(v46, qword_1EDE2DE10);
      v47 = sub_1C4F00968();
      v48 = sub_1C4F01CD8();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v86;
      if (v49)
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1C43F8000, v47, v48, "Group Matcher: skipping entityTriples are empty", v51, 2u);
        MEMORY[0x1C6942830](v51, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v52 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v50, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C447200C(v40, v43);
      if (v37)
      {
        v53 = sub_1C48835BC(v45, v37, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple);
      }

      else
      {
        v53 = 0.0;
      }

      v54 = v77;
      v55 = v81;
      v56 = v74;
      v57 = type metadata accessor for GroupMatcher();
      v58 = *(v57 + 36);
      v85 = v38;
      v59 = *&v38[v58];
      v60 = v86;
      v61 = v75;
      if (v53 <= v59)
      {
        sub_1C4EFF008();
        v60 = v86;
        sub_1C4420C3C(v86, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v56, 0, 1, v36);
        sub_1C44DDDBC(v56, v60);
        v53 = v59;
      }

      sub_1C457E858(v60, v61);
      if (sub_1C44157D4(v61, 1, v36) == 1)
      {
        sub_1C4420C3C(v61, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v55 + 32))(v42, v61, v36);
        v84 = v57;
        v62 = *(v57 + 32);
        v63 = sub_1C4EFD548();
        v64 = v85;
        (*(*(v63 - 8) + 16))(v54, &v85[v62], v63);
        v65 = v42;
        v66 = type metadata accessor for EntityMatch(0);
        v67 = *(v55 + 16);
        v68 = v87;
        v67(v54 + v66[5], v87, v36);
        v67(v54 + v66[6], v65, v36);
        v69 = v78;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v71 = v70;
        (*(v79 + 8))(v69, v80);
        (*(v55 + 8))(v65, v36);
        sub_1C44854B4(v68, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v86, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v72 = v64[*(v84 + 24)];
        *(v54 + v66[7]) = v53;
        *(v54 + v66[8]) = v71;
        *(v54 + v66[9]) = v72;
        *(v54 + v66[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4884418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v80 = a1;
  v78 = a3;
  v75 = sub_1C4EF9CD8();
  v73 = *(v75 - 8);
  v4 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v76 = *(v6 - 8);
  v77 = v6;
  v7 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EntityTriple(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v68 - v19;
  v21 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v68 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v68 - v29;
  v31 = v82;
  result = sub_1C4ACE6A4();
  if (!v31)
  {
    v82 = v10;
    v68 = v28;
    v69 = v25;
    v70 = 0;
    v71 = v9;
    v72 = v13;
    v33 = v76;
    v34 = v77;
    v81 = v30;
    v35 = v78;
    v36 = v79;
    if (v79)
    {
      sub_1C44D0BD8(v79, v20);
      v37 = v33;
      if (sub_1C44157D4(v20, 1, v82) == 1)
      {
        sub_1C4420C3C(v20, &qword_1EC0BA590, &qword_1C4F1F430);
        v38 = 1;
      }

      else
      {
        (*(v33 + 16))(v81, v20, v34);
        sub_1C44854B4(v20, type metadata accessor for EntityTriple);
        v38 = 0;
      }
    }

    else
    {
      v38 = 1;
      v37 = v76;
    }

    v39 = v80;
    sub_1C440BAA8(v81, v38, 1, v34);
    sub_1C44D0BD8(v39, v18);
    if (sub_1C44157D4(v18, 1, v82) == 1)
    {
      sub_1C4420C3C(v18, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v40 = sub_1C4F00978();
      sub_1C442B738(v40, qword_1EDE2DE10);
      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CD8();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v81;
      if (v43)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C43F8000, v41, v42, "Group Matcher: skipping entityTriples are empty", v45, 2u);
        MEMORY[0x1C6942830](v45, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v44, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C447200C(v18, v72);
      if (v36)
      {
        v47 = sub_1C4882ED0(v39, v36);
      }

      else
      {
        v47 = 0.0;
      }

      v48 = v35;
      v49 = v71;
      v50 = v68;
      v51 = type metadata accessor for GroupMatcher();
      v52 = *(v51 + 36);
      v82 = v3;
      v53 = *(v3 + v52);
      v54 = v81;
      v55 = v69;
      if (v47 <= v53)
      {
        sub_1C4EFF008();
        v54 = v81;
        sub_1C4420C3C(v81, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v50, 0, 1, v34);
        sub_1C44DDDBC(v50, v54);
        v47 = v53;
      }

      sub_1C457E858(v54, v55);
      if (sub_1C44157D4(v55, 1, v34) == 1)
      {
        sub_1C4420C3C(v55, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v37 + 32))(v49, v55, v34);
        v80 = v51;
        v56 = *(v51 + 32);
        v57 = sub_1C4EFD548();
        v58 = v82;
        (*(*(v57 - 8) + 16))(v48, v82 + v56, v57);
        v59 = v34;
        v60 = type metadata accessor for EntityMatch(0);
        v61 = v37;
        v62 = *(v37 + 16);
        v63 = v72;
        v62(v48 + v60[5], v72, v59);
        v62(v48 + v60[6], v49, v59);
        v64 = v74;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v66 = v65;
        (*(v73 + 8))(v64, v75);
        (*(v61 + 8))(v49, v59);
        sub_1C44854B4(v63, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v81, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v67 = *(v58 + *(v80 + 24));
        *(v48 + v60[7]) = v47;
        *(v48 + v60[8]) = v66;
        *(v48 + v60[9]) = v67;
        *(v48 + v60[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4884B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v84 = a1;
  v77 = a3;
  v4 = sub_1C4EF9CD8();
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFF0C8();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v73 - v12;
  v14 = type metadata accessor for EntityTriple(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v73 - v20;
  v22 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v73 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v73 - v30;
  v32 = v3;
  v33 = v87;
  result = sub_1C4ACE6A4();
  if (!v33)
  {
    v35 = v13;
    v74 = v29;
    v75 = v26;
    v76 = 0;
    v87 = v17;
    v36 = v82;
    v37 = v83;
    v86 = v31;
    v38 = v32;
    if (v83)
    {
      sub_1C486854C(v83, v21);
      v39 = type metadata accessor for ConstructionGraphTriple(0);
      v40 = v35;
      if (sub_1C44157D4(v21, 1, v39) == 1)
      {
        sub_1C4420C3C(v21, &unk_1EC0BCAE0, &unk_1C4F142A0);
        v41 = 1;
      }

      else
      {
        (*(v81 + 16))(v86, v21, v36);
        sub_1C44854B4(v21, type metadata accessor for ConstructionGraphTriple);
        v41 = 0;
      }

      v42 = v85;
      v43 = v87;
    }

    else
    {
      v41 = 1;
      v42 = v85;
      v43 = v87;
      v40 = v35;
    }

    v44 = v14;
    sub_1C440BAA8(v86, v41, 1, v36);
    v45 = v84;
    sub_1C44D0BD8(v84, v40);
    if (sub_1C44157D4(v40, 1, v44) == 1)
    {
      sub_1C4420C3C(v40, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v46 = sub_1C4F00978();
      sub_1C442B738(v46, qword_1EDE2DE10);
      v47 = sub_1C4F00968();
      v48 = sub_1C4F01CD8();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v86;
      if (v49)
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1C43F8000, v47, v48, "Group Matcher: skipping entityTriples are empty", v51, 2u);
        MEMORY[0x1C6942830](v51, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v52 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v50, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C447200C(v40, v43);
      if (v37)
      {
        v53 = sub_1C48835BC(v45, v37, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple);
      }

      else
      {
        v53 = 0.0;
      }

      v54 = v77;
      v55 = v81;
      v56 = v74;
      v57 = type metadata accessor for GroupMatcher();
      v58 = *(v57 + 36);
      v85 = v38;
      v59 = *&v38[v58];
      v60 = v86;
      v61 = v75;
      if (v53 <= v59)
      {
        sub_1C4EFF008();
        v60 = v86;
        sub_1C4420C3C(v86, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v56, 0, 1, v36);
        sub_1C44DDDBC(v56, v60);
        v53 = v59;
      }

      sub_1C457E858(v60, v61);
      if (sub_1C44157D4(v61, 1, v36) == 1)
      {
        sub_1C4420C3C(v61, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v55 + 32))(v42, v61, v36);
        v84 = v57;
        v62 = *(v57 + 32);
        v63 = sub_1C4EFD548();
        v64 = v85;
        (*(*(v63 - 8) + 16))(v54, &v85[v62], v63);
        v65 = v42;
        v66 = type metadata accessor for EntityMatch(0);
        v67 = *(v55 + 16);
        v68 = v87;
        v67(v54 + v66[5], v87, v36);
        v67(v54 + v66[6], v65, v36);
        v69 = v78;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v71 = v70;
        (*(v79 + 8))(v69, v80);
        (*(v55 + 8))(v65, v36);
        sub_1C44854B4(v68, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v86, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v72 = v64[*(v84 + 24)];
        *(v54 + v66[7]) = v53;
        *(v54 + v66[8]) = v71;
        *(v54 + v66[9]) = v72;
        *(v54 + v66[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t GroupMatcher.execute()()
{
  *(v1 + 24) = v0;
  v2 = *(*(sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4885408, 0, 0);
}

uint64_t sub_1C4885408()
{
  v44 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
  v4 = type metadata accessor for GroupMatcher();
  v5 = *(v4 + 24);
  LOBYTE(v43[0]) = *(v2 + v5);
  v6 = *(v4 + 32);
  v7 = sub_1C4EFD548();
  sub_1C43FBCE0(v7);
  v9 = *(v8 + 16);
  v9(v1, v2 + v6, v7);
  sub_1C43FBD94();
  sub_1C440BAA8(v10, v11, v12, v7);
  sub_1C44ABA54(v43, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  v13 = *(v2 + v5);
  switch(*(v2 + v5))
  {
    case 1:
    case 3:
      v42 = v9;
      v14 = v0[3];
      v15 = swift_task_alloc();
      *(v15 + 16) = v14;
      sub_1C43FD8E4();
      sub_1C44AC170(v16, v17, v18, v19, v20, v21);

      if (v14)
      {
        goto LABEL_10;
      }

      if (*(v13 + *(sub_1C43FF150() + 28)) != 1)
      {
        goto LABEL_11;
      }

      v22 = *(v2 + v5);
      v23 = swift_task_alloc();
      *(v23 + 16) = v15;
      v24 = sub_1C488596C;
      goto LABEL_9;
    case 2:
      v42 = v9;
      v27 = v0[3];
      v28 = swift_task_alloc();
      *(v28 + 16) = v27;
      sub_1C43FD8E4();
      sub_1C46CE408(v29, v30, v31, v32, v33, v34);

      if (v1)
      {
LABEL_10:
        v35 = v0[4];

        v36 = v0[1];
      }

      else
      {
        if (*(v27 + *(sub_1C43FF150() + 28)) == 1)
        {
          v22 = *(v2 + v5);
          v23 = swift_task_alloc();
          *(v23 + 16) = v28;
          v24 = sub_1C4885B80;
LABEL_9:
          sub_1C44C6BB4(v2 + v6, v22, 0, 1, v24, v23);
        }

LABEL_11:
        v37 = v0[3];
        v38 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C4641DC0();
        LOBYTE(v43[0]) = *(v2 + v5);
        v42(v38, v2 + v6, v7);
        sub_1C43FBD94();
        sub_1C440BAA8(v39, v40, v41, v7);
        sub_1C44A8814(v43, v38);
        sub_1C4420C3C(v38, &qword_1EC0B8568, &unk_1C4F319B0);

        v36 = v0[1];
      }

      result = v36();
      break;
    default:
      v43[0] = 0;
      v43[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v4;
      sub_1C456902C(&qword_1EC0BA538, &qword_1C4F377D0);
      v25 = sub_1C4F01198();
      MEMORY[0x1C6940010](v25);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v5));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C4885804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5();
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C488587C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return GroupMatcher.execute()();
}

uint64_t sub_1C488599C(uint64_t a1)
{
  result = sub_1C4885B38(&qword_1EDDEB618, type metadata accessor for GroupMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C48859F4(uint64_t a1)
{
  result = sub_1C4885B38(qword_1EDDEB628, type metadata accessor for GroupMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4885A74()
{
  result = type metadata accessor for PhaseStores();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Source();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for StateStore();
      if (v3 <= 0x3F)
      {
        result = sub_1C4EFD548();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C4885B38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4885BA8()
{
  if (qword_1EC0B70C8 != -1)
  {
    swift_once();
  }

  qword_1EC152210 = qword_1EC0C3728;
  unk_1EC152218 = *&qword_1EC0C3730;
  qword_1EC152228 = qword_1EC0C3740;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4885C28(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BE618, &qword_1C4F37968);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C488632C();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  v22 = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v21 = 1;
    sub_1C4F02738();
    v20 = v3[4];
    v19[15] = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C46D4190(&qword_1EC0B8728, sub_1C458A984);
    sub_1C4F027E8();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C4885E04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BE608, &unk_1C4F37958);
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C488632C();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v10 = sub_1C4F02678();
  v12 = v11;
  v19 = v10;
  v17 = sub_1C4F02618();
  v18 = v13;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C46D4190(&qword_1EC0B8740, sub_1C458AA50);
  sub_1C4F026C8();
  v14 = sub_1C4402F74();
  v15(v14);
  result = sub_1C440962C(a1);
  *a2 = v19;
  a2[1] = v12;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v20;
  return result;
}

uint64_t sub_1C488607C(uint64_t a1)
{
  v2 = sub_1C488632C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C48860B8(uint64_t a1)
{
  v2 = sub_1C488632C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C48860F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B6BD0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC152228;
  *a1 = qword_1EC152210;
  *(a1 + 8) = unk_1EC152218;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

double sub_1C4886178@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4885E04(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1C48861D8(uint64_t a1)
{
  result = sub_1C4886200();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4886200()
{
  result = qword_1EC0BE5F0;
  if (!qword_1EC0BE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE5F0);
  }

  return result;
}

unint64_t sub_1C4886254(uint64_t a1)
{
  *(a1 + 8) = sub_1C4886284();
  result = sub_1C48862D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4886284()
{
  result = qword_1EC0BE5F8;
  if (!qword_1EC0BE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE5F8);
  }

  return result;
}

unint64_t sub_1C48862D8()
{
  result = qword_1EC0BE600;
  if (!qword_1EC0BE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE600);
  }

  return result;
}

unint64_t sub_1C488632C()
{
  result = qword_1EC0BE610;
  if (!qword_1EC0BE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE610);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Handle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4886460()
{
  result = qword_1EC0BE620;
  if (!qword_1EC0BE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE620);
  }

  return result;
}

unint64_t sub_1C48864B8()
{
  result = qword_1EC0BE628;
  if (!qword_1EC0BE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE628);
  }

  return result;
}

unint64_t sub_1C4886510()
{
  result = qword_1EC0BE630;
  if (!qword_1EC0BE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE630);
  }

  return result;
}

uint64_t sub_1C4886564(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v87 = a3;
  v98 = *MEMORY[0x1E69E9840];
  v91 = sub_1C4F00DD8();
  v5 = sub_1C43FCDF8(v91);
  v89 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C4F00DC8();
  v13 = sub_1C43FCDF8(v12);
  v92 = v14;
  v93 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v88 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v82 - v19;
  v20 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v82 - v22;
  v24 = sub_1C4EF9CD8();
  v25 = sub_1C43FCDF8(v24);
  v85 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v31 = v30 - v29;
  v32 = sub_1C4F01188();
  v33 = sub_1C43FCDF8(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  v40 = v39 - v38;
  v41 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v41 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v84 = v11;
    sub_1C4F01178();
    v86 = sub_1C4F01148();
    v43 = v42;
    (*(v35 + 8))(v40, v32);
    if (v43 >> 60 == 15)
    {
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v44 = sub_1C4F00978();
      sub_1C442B738(v44, qword_1EDE2DDE0);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v45 = sub_1C4F00968();
      v46 = sub_1C4F01CE8();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v96 = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_1C441D828(a1, a2, &v96);
        _os_log_impl(&dword_1C43F8000, v45, v46, "HashGenerator: Unable to convert identifier to UTF-8 data: %s", v47, 0xCu);
        sub_1C440962C(v48);
        MEMORY[0x1C6942830](v48, -1, -1);
        MEMORY[0x1C6942830](v47, -1, -1);
      }

      goto LABEL_13;
    }

    v50 = sub_1C4886C68();
    if (v51 >> 60 == 15)
    {
      sub_1C441DFEC(v86, v43);
LABEL_13:
      v49 = 0;
      goto LABEL_18;
    }

    v52 = v50;
    v53 = v51;
    v96 = v86;
    v97 = v43;
    sub_1C44344B8(v86, v43);
    v82 = v52;
    sub_1C44F9684(v52, v53);
    sub_1C4467FE0(v87, v23);
    v54 = sub_1C44157D4(v23, 1, v24);
    v83 = v43;
    if (v54 == 1)
    {
      sub_1C44686E4(v23);
    }

    else
    {
      v55 = v85;
      v56 = *(v85 + 32);
      v57 = sub_1C4404BCC();
      v58(v57);
      sub_1C4EF9AD8();
      v94 = v59;
      v60 = sub_1C4464F38(&v94, &v95);
      v62 = v61;
      v63 = v96;
      v64 = v97;
      v94 = v60;
      v95 = v61;
      sub_1C44344B8(v60, v61);
      sub_1C44F9684(v63, v64);
      sub_1C4434000(v60, v62);
      (*(v55 + 8))(v31, v24);
      sub_1C4434000(v96, v97);
      v96 = v94;
      v97 = v95;
    }

    v65 = v84;
    sub_1C4886F14();
    v66 = v91;
    sub_1C4F00DB8();
    v67 = sub_1C4404BCC();
    sub_1C44344B8(v67, v68);
    v69 = sub_1C4404BCC();
    sub_1C4498FD8(v69, v70);
    v71 = sub_1C4404BCC();
    sub_1C4434000(v71, v72);
    v73 = v90;
    sub_1C4F00DA8();
    (*(v89 + 8))(v65, v66);
    v75 = v92;
    v74 = v93;
    v76 = v88;
    (*(v92 + 16))(v88, v73, v93);
    v77 = sub_1C44D5F88(v76);
    v79 = v78;
    v49 = sub_1C4EF9A48();
    sub_1C4434000(v77, v79);
    sub_1C441DFEC(v82, v53);
    sub_1C441DFEC(v86, v83);
    (*(v75 + 8))(v73, v74);
    sub_1C4434000(v96, v97);
  }

  else
  {
    v49 = 0;
  }

LABEL_18:
  v80 = *MEMORY[0x1E69E9840];
  return v49;
}

void sub_1C4886B98()
{
  v0 = sub_1C46B6F7C();
  sub_1C4886C08();
  v1 = sub_1C4F01108();

  [v0 removeObjectForKey_];
}

unint64_t sub_1C4886C08()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
  }

  else
  {
    v1 = 0xD000000000000012;
    *(v0 + 24) = 0xD000000000000012;
    *(v0 + 32) = 0x80000001C4FA3A70;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4886C68()
{
  v1 = sub_1C46B6F7C();
  sub_1C4886C08();
  v2 = sub_1C4F01108();

  v3 = [v1 dataForKey_];

  if (v3)
  {
    v4 = sub_1C4EF9A68();
LABEL_5:

    return v4;
  }

  v4 = sub_1C4886D78();
  if (v5 >> 60 != 15)
  {
    v6 = *(v0 + 16);
    v7 = sub_1C4EF9A38();
    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v3 = sub_1C4F01108();

    [v6 setObject:v7 forKey:v3];

    goto LABEL_5;
  }

  return v4;
}

uint64_t sub_1C4886D78()
{
  v0 = sub_1C4F01728();
  *(v0 + 16) = 32;
  *(v0 + 32) = 0u;
  v1 = v0 + 32;
  *(v0 + 48) = 0u;
  v2 = SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, (v0 + 32));
  if (v2)
  {
    v3 = v2;

    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDE2DDE0);
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CE8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_1C43F8000, v5, v6, "HashGenerator: Unable to generate salt from SecRandomCopyBytes: %d", v7, 8u);
      MEMORY[0x1C6942830](v7, -1, -1);
    }

    return 0;
  }

  else
  {
    v8 = MEMORY[0x1C6938770](v1, 32);
  }

  return v8;
}

void *sub_1C4886F04()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  return result;
}

unint64_t sub_1C4886F14()
{
  result = qword_1EDDFEAD0;
  if (!qword_1EDDFEAD0)
  {
    sub_1C4F00DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEAD0);
  }

  return result;
}

void sub_1C4886F6C(unint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  v7 = *(a2 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 8) = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1C4834878(v7);
  v7 = v12;
  *(v3 + 8) = v12;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v4 >= *(v7 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = v7 + 32;
  v7 = *(v7 + 32 + 8 * v4);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 8 * v4) = v7;
  if (v9)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_14:
  sub_1C4834860(v7);
  v7 = v13;
  *(v2 + 8 * v4) = v13;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v5 >= *(v7 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v7 + 4 * v5 + 32) = v6;
  v10 = *(v3 + 8);
  if (v5 < *(v10 + 16))
  {
    v7 = v10 + 32;
    v3 = *(v10 + 32 + 8 * v5);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 8 * v5) = v3;
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  sub_1C4834860(v3);
  v3 = v14;
  *(v7 + 8 * v5) = v14;
LABEL_9:
  if (v4 >= *(v3 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 4 * v4 + 32) = v6;
  }
}

unint64_t sub_1C4887098()
{
  result = qword_1EDDFE820;
  if (!qword_1EDDFE820)
  {
    sub_1C4EFF0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE820);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GraphEdge(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GraphEdge(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

uint64_t sub_1C488714C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v144 = a1;
  v145 = a2;
  v5 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(0);
  v6 = *(v5 - 8);
  v141 = v5;
  v142 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for CNContactStructs.Person(0);
  v10 = sub_1C43FBCE0(v143);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v146 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFBCA0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v14, &qword_1EDE2DD58);
  String.base64EncodedSHA(withPrefix:)();
  v16 = v15;
  v18 = v17;
  v19 = type metadata accessor for HKEmergencyContactStructs.Person(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4DBEAC0();
  if (v3)
  {
  }

  v24 = v22;
  v136 = v16;
  v137 = v9;
  v139 = 0;
  v140 = v18;
  v25 = (v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser);
  v26 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser + 8);
  *v25 = xmmword_1C4F17530;

  v27 = type metadata accessor for HKEmergencyContactStructs.AgentAffiliationRelationshipType(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_1C4DBE1D0();
  v31 = sub_1C45B4BF8(v2, &selRef_relationship);
  sub_1C4425188(v31, v32);
  v33 = sub_1C45B4BF8(v2, &selRef_relationship);
  sub_1C4425188(v33, v34);
  v35 = *(v30 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_confidence + 8);
  *(v30 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_confidence) = xmmword_1C4F0D2B0;

  v36 = sub_1C45B4BF8(v2, &selRef_name);
  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0;
  }

  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  v40 = sub_1C45B4BF8(v4, &selRef_nameContactIdentifier);
  if (v41)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0;
  }

  if (v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  v147 = v38;
  v148 = v39;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v42, v43);

  v44 = v147;
  v45 = v148;
  v46 = sub_1C45B4BF8(v4, &selRef_phoneNumberContactIdentifier);
  if (v47)
  {
    v48 = v46;
  }

  else
  {
    v48 = 0;
  }

  if (v47)
  {
    v49 = v47;
  }

  else
  {
    v49 = 0xE000000000000000;
  }

  v147 = v44;
  v148 = v45;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v48, v49);

  v50 = HIBYTE(v148) & 0xF;
  if ((v148 & 0x2000000000000000) == 0)
  {
    v50 = v147 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {

    sub_1C465B58C();
    swift_allocError();
    *v55 = 0;
    swift_willThrow();
  }

  v138 = v30;
  if (qword_1EDDF7908 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v14, qword_1EDE2D638);
  String.base64EncodedSHA(withPrefix:)();

  v51 = *(v19 + 48);
  v52 = *(v19 + 52);
  swift_allocObject();
  v53 = v139;
  sub_1C4DBEAC0();
  if (v53)
  {
  }

  v56 = v54;
  v57 = sub_1C4EFF048();
  sub_1C4425188(v57, v58);
  v59 = sub_1C45B4BF8(v4, &selRef_name);
  sub_1C4425188(v59, v60);
  v61 = type metadata accessor for HKEmergencyContactStructs.AddressRelationshipType(0);
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  v64 = sub_1C4DBBB00();
  v65 = sub_1C45B4BF8(v4, &selRef_phoneNumberLabel);
  sub_1C4425188(v65, v66);
  v67 = sub_1C45B4BF8(v4, &selRef_phoneNumber);
  sub_1C4425188(v67, v68);

  v134 = v64;
  sub_1C4DB80EC(v69);

  v135 = v56;
  sub_1C4DB8114(v70);

  sub_1C4DB81B4(v71);
  v72 = sub_1C45B4BF8(v4, &selRef_nameContactIdentifier);
  if (!v73)
  {
    v72 = sub_1C45B4BF8(v4, &selRef_phoneNumberContactIdentifier);
    if (!v73)
    {
      v72 = 0;
      v73 = 0xE000000000000000;
    }
  }

  v149 = MEMORY[0x1E69E7CC0];
  v74 = HIBYTE(v73) & 0xF;
  if ((v73 & 0x2000000000000000) == 0)
  {
    v74 = v72 & 0xFFFFFFFFFFFFLL;
  }

  if (!v74)
  {

    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v84 = sub_1C4F00978();
    sub_1C442B738(v84, qword_1EDE2DE10);
    v85 = sub_1C4F00968();
    v86 = sub_1C4F01CD8();
    v87 = os_log_type_enabled(v85, v86);
    v88 = v140;
    v89 = v136;
    if (v87)
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_1C43F8000, v85, v86, "An ingested emergency contact did not have a valid ContactID.", v90, 2u);
      MEMORY[0x1C6942830](v90, -1, -1);
    }

    goto LABEL_46;
  }

  v139 = v24;
  v132 = v72;
  v133 = v73;
  if (qword_1EDDF7890 != -1)
  {
    swift_once();
  }

  v75 = sub_1C442B738(v14, qword_1EDDF7898);
  v76 = *v75;
  v77 = v75[1];
  v147 = *v75;
  v148 = v77;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  MEMORY[0x1C6940010](v132, v133);
  sub_1C44CBA5C(v147, v148, v78, v79, v80, v81, v82, v83, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
  v91 = v77;
  v139 = 0;
  v92 = sub_1C4EFEEF8();
  v93 = v137;
  sub_1C440BAA8(v137, 1, 1, v92);
  v94 = v141;
  v95 = v93 + v141[5];
  sub_1C4EFD318();
  v96 = v94[6];
  if (qword_1EDDFED28 != -1)
  {
    swift_once();
  }

  v97 = type metadata accessor for Source();
  v98 = sub_1C442B738(v97, &unk_1EDDFD088);
  sub_1C448CD24(v98, v93 + v96, type metadata accessor for Source);
  v99 = v93 + v94[7];
  sub_1C4EFE808();
  v100 = v94[9];
  v101 = (v93 + v94[8]);
  sub_1C4EFE878();
  v102 = v94[11];
  v103 = (v93 + v94[10]);
  sub_1C4EFEB48();
  v104 = v94[13];
  v105 = (v93 + v94[12]);
  sub_1C4EFE3A8();
  v131 = v94[14];
  *(v93 + v131) = 0;
  v106 = v93 + v94[15];
  sub_1C4EFE2A8();
  v107 = (v93 + v94[16]);
  *v107 = 0;
  v107[1] = 0;
  *v103 = sub_1C45B4BF8(v4, &selRef_relationship);
  v103[1] = v108;
  *v105 = sub_1C45B4BF8(v4, &selRef_relationship);
  v105[1] = v109;
  *v101 = sub_1C4EFF048();
  v101[1] = v110;
  v111 = sub_1C45B4BF8(v4, &selRef_relationship);
  if (v112)
  {
    v113 = v111;
    v114 = v112;
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_1C4F0D130;
    *(v115 + 32) = v113;
    *(v115 + 40) = v114;
    *(v93 + v131) = v115;
  }

  sub_1C456902C(&qword_1EC0BAD98, &unk_1C4F3E8A0);
  v116 = *(v142 + 72);
  v117 = (*(v142 + 80) + 32) & ~*(v142 + 80);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1C4F0D130;
  sub_1C448CD24(v93, v118 + v117, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
  v119 = v143;
  v120 = *(v143 + 248);
  v121 = v146;
  v122 = *&v146[v120];

  *&v121[v120] = v118;
  sub_1C44D8894();
  sub_1C44D93D0();
  v124 = v123;
  v125 = *(v119 + 244);
  v126 = *&v121[v125];

  *&v121[v125] = v124;
  sub_1C4D7F6AC();
  v147 = v76;
  v148 = v91;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  MEMORY[0x1C6940010](v132, v133);

  LOBYTE(v147) = 1;
  v127 = v139;
  sub_1C4D6F494();
  if (!v127)
  {
    v130 = v128;

    sub_1C49D3614(v130);
    sub_1C4407080();
    sub_1C44198D4();
    v88 = v140;
    v89 = v136;
LABEL_46:
    LOBYTE(v147) = 1;
    v129 = sub_1C4DB81DC(v89, v88, &v147);

    sub_1C49D3614(v129);

    return v149;
  }

  sub_1C4407080();
  return sub_1C44198D4();
}

uint64_t sub_1C4887C10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4887C68(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  *(v3 + 32) = sub_1C43FBE7C();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  *(v3 + 40) = sub_1C43FBE7C();
  v11 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  *(v3 + 48) = sub_1C43FBE7C();
  v14 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  *(v3 + 56) = sub_1C43FBE7C();
  v17 = type metadata accessor for HKEmergencyContactSourceIngestor();
  *(v3 + 64) = v17;
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v20 = type metadata accessor for Source();
  *(v3 + 88) = v20;
  sub_1C43FBD18(v20);
  v22 = *(v21 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  v23 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v23);
  v25 = *(v24 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 153) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4887E20, 0, 0);
}

uint64_t sub_1C4887E20()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 16);
  sub_1C4419288();
  sub_1C44717B8(v3, v4, v5);
  if (qword_1EDDFD218 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 153);
  v7 = *(v0 + 120);
  v8 = *(v0 + 104);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 48);
  v31 = *(v0 + 56);
  v12 = *(v0 + 16);
  v13 = sub_1C442B738(*(v0 + 88), &qword_1EDDFD220);
  *(v0 + 136) = v13;
  sub_1C44717B8(v13, v8, type metadata accessor for Source);
  sub_1C44717B8(v12, v7, type metadata accessor for PhaseStores);
  sub_1C44717B8(v13, v10 + *(v9 + 20), type metadata accessor for Source);
  sub_1C44717B8(v7, v10, type metadata accessor for PhaseStores);
  *(v10 + *(v9 + 24)) = v6;
  v14 = sub_1C4EF9E48();
  sub_1C440BAA8(v11, 1, 1, v14);
  sub_1C4EFF1A8();
  LOBYTE(v31) = *(v0 + 153);
  v15 = *(v0 + 112);
  v16 = *(v0 + 96);
  v18 = *(v0 + 72);
  v17 = *(v0 + 80);
  v19 = *(v0 + 56);
  v20 = *(v0 + 64);
  v21 = *(v0 + 16);
  sub_1C44857CC(*(v0 + 120));
  v22 = sub_1C4EFF1C8();
  sub_1C440BAA8(v19, 0, 1, v22);
  sub_1C4482F3C(v19, v18 + *(v20 + 28));
  sub_1C442CBB4();
  sub_1C48884A4(v18, v17, v23);
  sub_1C44068F0();
  sub_1C44717B8(v13, v16, v24);
  sub_1C4419288();
  sub_1C44717B8(v21, v15, v25);
  *(v0 + 152) = v31;
  v26 = swift_task_alloc();
  *(v0 + 144) = v26;
  *v26 = v0;
  v26[1] = sub_1C4888098;
  v27 = *(v0 + 112);
  v28 = *(v0 + 96);
  v29 = *(v0 + 40);

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C4888098()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C4888194, 0, 0);
}

uint64_t sub_1C4888194()
{
  v1 = *(v0 + 153);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 80);
  v30 = *(v0 + 120);
  v31 = *(v0 + 72);
  v7 = *(v0 + 64);
  v32 = *(v0 + 56);
  v33 = *(v0 + 48);
  v28 = *(v0 + 128);
  v29 = *(v0 + 40);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = *(v0 + 16);
  sub_1C44068F0();
  sub_1C44717B8(v11, v5, v12);
  sub_1C4419288();
  sub_1C44717B8(v10, v3, v13);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v10);
  v14 = (v9 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v9 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v7;
  v14[4] = sub_1C488844C();
  sub_1C4422F90(v14);
  sub_1C442CBB4();
  sub_1C48884A4(v6, v15, v16);
  sub_1C4400564();
  sub_1C48884A4(v4, v17, v18);
  sub_1C4400564();
  sub_1C48884A4(v28, v19, v20);
  sub_1C4400564();
  sub_1C48884A4(v29, v21, v22);
  sub_1C4400564();
  sub_1C48884A4(v8, v23, v24);
  *(v9 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v25 = *(v0 + 8);
  v26 = *(v0 + 24);

  return v25(v26);
}

uint64_t type metadata accessor for HKEmergencyContactPhase()
{
  result = qword_1EDDE1FD8;
  if (!qword_1EDDE1FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C488844C()
{
  result = qword_1EDDDDE90;
  if (!qword_1EDDDDE90)
  {
    type metadata accessor for HKEmergencyContactSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDDE90);
  }

  return result;
}

uint64_t sub_1C48884A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FCE50(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for HKEmergencyContactSourceIngestor()
{
  result = qword_1EDDDDE70;
  if (!qword_1EDDDDE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4888574()
{
  type metadata accessor for PhaseStores();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Source();
    if (v1 <= 0x3F)
    {
      sub_1C4682388();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C4888638()
{
  v0[18] = 0;
  v0[19] = 0;
  if ([objc_opt_self() isHealthDataAvailable])
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v0[23] = v1;
    v2 = [objc_allocWithZone(MEMORY[0x1E696C248]) initWithHealthStore_];
    v0[24] = v2;
    v0[20] = MEMORY[0x1E69E7CC0];
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1C48888D4;
    v3 = swift_continuation_init();
    v0[17] = sub_1C456902C(&qword_1EC0BE640, &qword_1C4F37BE8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C4888EBC;
    v0[13] = &unk_1F43EFB38;
    v0[14] = v3;
    [v2 fetchMedicalIDEmergencyContactsWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDE2DE10);
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CD8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C43F8000, v5, v6, "HealthKit data unavailable on this device", v7, 2u);
      MEMORY[0x1C6942830](v7, -1, -1);
    }

    v8 = v0[22];
    sub_1C4EF9AE8();
    sub_1C441FC90();
    sub_1C4888C54(v8, v0 + 19, v0 + 18);
    sub_1C43FBDA0();

    return v9();
  }
}

uint64_t sub_1C48888D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1C4888AFC;
  }

  else
  {
    v3 = sub_1C48889E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C48889E4()
{
  *(v0 + 160) = *(v0 + 168);
  *(v0 + 80) = 0;
  v1 = *(v0 + 176);
  v2 = *(v1 + *(type metadata accessor for PhaseStores() + 24));
  v3 = swift_task_alloc();
  v3[2] = v0 + 160;
  v3[3] = v1;
  v3[4] = v0 + 144;
  v3[5] = v0 + 152;
  v3[6] = v0 + 80;
  sub_1C44198FC();
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  if (v0 == -80)
  {

    sub_1C4EF9AE8();
    sub_1C441FC90();
  }

  else
  {
    v6 = *(v0 + 176);

    v7 = *(v0 + 160);
  }

  sub_1C442CBCC();
  sub_1C43FBDA0();

  return v8();
}

uint64_t sub_1C4888AFC()
{
  v13 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  swift_willThrow();
  v12[0] = 1;
  static Transformers.reportError(error:context:config:pipelineType:)(v1, 0xD000000000000012, 0x80000001C4FA3BA0, v2, v12);

  *(v0 + 80) = 0;
  v3 = *(v0 + 176);
  v4 = *(v3 + *(type metadata accessor for PhaseStores() + 24));
  v5 = swift_task_alloc();
  v5[2] = v0 + 160;
  v5[3] = v3;
  v5[4] = v0 + 144;
  v5[5] = v0 + 152;
  v5[6] = v0 + 80;
  sub_1C44198FC();
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  if (v0 == -160)
  {

    sub_1C4EF9AE8();
    sub_1C441FC90();
  }

  else
  {
    v8 = *(v0 + 176);

    v9 = *(v0 + 160);
  }

  sub_1C442CBCC();
  sub_1C43FBDA0();

  return v10();
}

uint64_t sub_1C4888C54(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4430B24(a1, v10, type metadata accessor for Configuration);
  v10[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C47CE078(v10);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_1C4F01108();

  *(inited + 48) = v12;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  v13 = *a2;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C4888EBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1C4409678((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1C467BF20(v4, v5);
  }

  else
  {
    sub_1C4461BB8(0, &qword_1EDDDB8E8, 0x1E696C628);
    v7 = sub_1C4F01678();

    return sub_1C467BF1C(v4, v7);
  }
}

void sub_1C4888F64(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, void *a5@<X5>, _BYTE *a6@<X6>, _BYTE *a7@<X8>)
{
  v8 = v7;
  v11 = *a2;
  v24 = *a2 & 0xC000000000000001;
  v25 = sub_1C4428DA0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = 0;
  v21 = v11;
  while (1)
  {
    if (v25 == v12)
    {

      *a7 = *a6;
      return;
    }

    sub_1C4431590(v12, v24 == 0);
    v13 = v24 ? MEMORY[0x1C6940F90](v12, v11) : *(v11 + 8 * v12 + 32);
    v14 = v13;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    sub_1C4ACEFFC();
    if (v8)
    {

      return;
    }

    if (__OFADD__(*a4, 1))
    {
      goto LABEL_14;
    }

    ++*a4;
    v15 = type metadata accessor for HKEmergencyContactSourceIngestor();
    sub_1C488714C(a3 + *(v15 + 28), a3);
    v16 = a4;
    sub_1C4812140();
    v18 = v17;

    a1(v18);
    v8 = 0;

    if (__OFADD__(*a5, 1))
    {
      goto LABEL_15;
    }

    ++*a5;
    a4 = v16;
    v11 = v21;
    ++v12;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1C488924C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4665934;

  return sub_1C4888618();
}

uint64_t sub_1C48892DC(uint64_t a1)
{
  result = sub_1C48893A8(qword_1EDDDDE98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4889320(uint64_t a1)
{
  result = sub_1C48893A8(&qword_1EDDDDE80);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4889364(uint64_t a1)
{
  result = sub_1C48893A8(&qword_1EDDDDE88);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C48893A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKEmergencyContactSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C488943C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  sub_1C4577DBC();
  v8 = sub_1C4F00F28();
  if (a2)
  {
    v9 = sub_1C45FB538();
    if (v9)
    {
      v10 = v9;
      v11 = sub_1C4EF9CD8();
      sub_1C440BAA8(v7, 1, 1, v11);
      sub_1C4886564(a1, a2, v7);
      v13 = v12;
      sub_1C45942C8(v10);
      sub_1C44686E4(v7);
      if (v13)
      {
        if (sub_1C4594E18())
        {
          swift_isUniquelyReferenced_nonNull_native();
          v22 = v8;
          sub_1C4660314();
          return v22;
        }

        else
        {
          v14 = sub_1C445FAA8(0xD000000000000012, 0x80000001C4F9B330);
          if (v15)
          {
            v16 = v14;
            swift_isUniquelyReferenced_nonNull_native();
            v22 = v8;
            v17 = *(v8 + 24);
            sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
            sub_1C4F02458();
            v8 = v22;
            v18 = *(*(v22 + 48) + 16 * v16 + 8);

            v19 = *(*(v8 + 56) + 8 * v16);
            sub_1C4F02478();
          }
        }
      }
    }
  }

  return v8;
}

void sub_1C4889670()
{
  v0 = [BiomeLibrary() HomeKit];
  swift_unknownObjectRelease();
  v1 = [v0 Client];
  swift_unknownObjectRelease();
  v2 = [v1 AccessoryControl];
  swift_unknownObjectRelease();
  sub_1C4580B40();
}

uint64_t type metadata accessor for HomeKitEvent()
{
  result = qword_1EC0BE648;
  if (!qword_1EC0BE648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C48897CC()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4889858()
{
  result = qword_1EC0BE658;
  if (!qword_1EC0BE658)
  {
    sub_1C4572308(&qword_1EC0BE660, &qword_1C4F37C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE658);
  }

  return result;
}

uint64_t type metadata accessor for HomeMatcher()
{
  result = qword_1EC0BE678;
  if (!qword_1EC0BE678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HomeMatcher();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t HomeMatcher.stateStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomeMatcher() + 28));
}

uint64_t HomeMatcher.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HomeMatcher() + 32);
  v4 = sub_1C4EFD548();
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t HomeMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for HomeMatcher();
  v9 = a4 + v8[8];
  sub_1C4EFD3B8();
  *(a4 + v8[9]) = 1056964608;
  sub_1C440053C();
  sub_1C44718CC(a1, a4);
  sub_1C447200C(a2, a4 + v8[5]);
  *(a4 + v8[6]) = v7;
  v10 = *(a1 + *(type metadata accessor for PhaseStores() + 28));

  result = sub_1C44854B4(a1, type metadata accessor for PhaseStores);
  *(a4 + v8[7]) = v10;
  return result;
}

float sub_1C4889B38(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = sub_1C4EFEEF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - v8;
  v54 = type metadata accessor for EntityTriple(0);
  v49 = *(v54 - 8);
  v10 = *(v49 + 64);
  v11 = MEMORY[0x1EEE9AC00](v54);
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v44 = &v43 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v43 - v18;
  v19 = 0;
  v20 = *(a1 + 16);
  v50 = a1;
  v51 = v20;
  v53 = (v4 + 8);
  while (1)
  {
    v21 = 0.0;
    if (v51 == v19)
    {
      return v21;
    }

    v22 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v52 = *(v49 + 72);
    sub_1C44718CC(v50 + v22 + v52 * v19, v17);
    v23 = *(v54 + 28);
    sub_1C4EFE558();
    sub_1C488C408(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v57 == v55 && v58 == v56)
    {
      v25 = 1;
    }

    else
    {
      v25 = sub_1C4F02938();
    }

    v26 = *v53;
    (*v53)(v9, v3);

    if (v25)
    {
      v27 = v45;
      sub_1C447200C(v17, v45);
      v28 = (v27 + *(v54 + 32));
      v29 = v28[1];
      v51 = *v28;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44854B4(v27, type metadata accessor for EntityTriple);
      v30 = *(v46 + 16);
      v31 = v46 + v22;
      v32 = v47;
      if (!v30)
      {
LABEL_18:

        return v21;
      }

      while (1)
      {
        sub_1C44718CC(v31, v48);
        v33 = *(v54 + 28);
        sub_1C4EFE558();
        sub_1C4F01578();
        sub_1C4F01578();
        if (v57 == v55 && v58 == v56)
        {
          break;
        }

        v35 = sub_1C4F02938();
        v26(v32, v3);

        if (v35)
        {
          goto LABEL_20;
        }

        sub_1C44854B4(v48, type metadata accessor for EntityTriple);
        v31 += v52;
        if (!--v30)
        {
          goto LABEL_18;
        }
      }

      v26(v32, v3);

LABEL_20:
      v36 = v44;
      sub_1C447200C(v48, v44);
      v37 = (v36 + *(v54 + 32));
      v39 = *v37;
      v38 = v37[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44854B4(v36, type metadata accessor for EntityTriple);
      if (v39 == v51 && v38 == v29)
      {
      }

      else
      {
        v41 = sub_1C4F02938();

        if ((v41 & 1) == 0)
        {
          return v21;
        }
      }

      return 1.0;
    }

    sub_1C44854B4(v17, type metadata accessor for EntityTriple);
    ++v19;
  }
}

float sub_1C488A094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v65 = a6;
  v68 = a4;
  v69 = a5;
  v72 = a2;
  v7 = sub_1C43FBE94();
  v71 = v8(v7);
  v9 = sub_1C43FCDF8(v71);
  v67 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v73 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v63 - v16;
  v17 = sub_1C4EFEEF8();
  v18 = sub_1C43FCDF8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v70 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63 - v26;
  v75 = type metadata accessor for EntityTriple(0);
  v28 = sub_1C43FCDF8(v75);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBD08();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v66 = &v63 - v37;
  v38 = 0;
  v74 = v6;
  v76 = *(v6 + 16);
  v77 = (v20 + 8);
  while (1)
  {
    v39 = 0.0;
    if (v76 == v38)
    {
      return v39;
    }

    sub_1C44718CC(v74 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v38, v35);
    v40 = *(v75 + 28);
    sub_1C4EFE558();
    sub_1C488C408(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C43FD4F4();
    sub_1C43FD4F4();
    if (v80 == v78 && v81 == v79)
    {
      v42 = 1;
    }

    else
    {
      v42 = sub_1C4F02938();
    }

    v43 = *v77;
    (*v77)(v27, v17);

    if (v42)
    {
      v44 = v66;
      sub_1C447200C(v35, v66);
      v45 = (v44 + *(v75 + 32));
      v47 = *v45;
      v46 = v45[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44854B4(v44, type metadata accessor for EntityTriple);
      v48 = 0;
      v49 = *(v72 + 16);
      while (1)
      {
        v50 = v70;
        if (v49 == v48)
        {

          return v39;
        }

        sub_1C44718CC(v72 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v48, v73);
        v51 = *(v71 + 28);
        sub_1C4EFE558();
        sub_1C43FD4F4();
        sub_1C43FD4F4();
        if (v80 == v78 && v81 == v79)
        {
          break;
        }

        v53 = sub_1C4F02938();
        v54 = v50;
        v55 = v53;
        v43(v54, v17);

        if (v55)
        {
          goto LABEL_21;
        }

        sub_1C44854B4(v73, v69);
        ++v48;
      }

      v43(v50, v17);

LABEL_21:
      v56 = v64;
      sub_1C447200C(v73, v64);
      v57 = (v56 + *(v71 + 32));
      v59 = *v57;
      v58 = v57[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44854B4(v56, v69);
      if (v59 == v47 && v58 == v46)
      {
      }

      else
      {
        v61 = sub_1C4F02938();

        if ((v61 & 1) == 0)
        {
          return v39;
        }
      }

      return 1.0;
    }

    sub_1C44854B4(v35, type metadata accessor for EntityTriple);
    ++v38;
  }
}

uint64_t sub_1C488A5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v84 = a1;
  v77 = a3;
  v4 = sub_1C4EF9CD8();
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFF0C8();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v73 - v12;
  v14 = type metadata accessor for EntityTriple(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v73 - v20;
  v22 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v73 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v73 - v30;
  v32 = v3;
  v33 = v87;
  result = sub_1C4ACE5D4();
  if (!v33)
  {
    v35 = v13;
    v74 = v29;
    v75 = v26;
    v76 = 0;
    v87 = v17;
    v36 = v82;
    v37 = v83;
    v86 = v31;
    v38 = v32;
    if (v83)
    {
      sub_1C44F1938(v83, v21);
      v39 = type metadata accessor for GraphTriple(0);
      v40 = v35;
      if (sub_1C44157D4(v21, 1, v39) == 1)
      {
        sub_1C4420C3C(v21, &unk_1EC0BC900, &unk_1C4F142D0);
        v41 = 1;
      }

      else
      {
        (*(v81 + 16))(v86, v21, v36);
        sub_1C44854B4(v21, type metadata accessor for GraphTriple);
        v41 = 0;
      }

      v42 = v85;
      v43 = v87;
    }

    else
    {
      v41 = 1;
      v42 = v85;
      v43 = v87;
      v40 = v35;
    }

    v44 = v14;
    sub_1C440BAA8(v86, v41, 1, v36);
    v45 = v84;
    sub_1C44D0BD8(v84, v40);
    if (sub_1C44157D4(v40, 1, v44) == 1)
    {
      sub_1C4420C3C(v40, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v46 = sub_1C4F00978();
      sub_1C442B738(v46, qword_1EDE2DE10);
      v47 = sub_1C4F00968();
      v48 = sub_1C4F01CD8();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v86;
      if (v49)
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1C43F8000, v47, v48, "Home Matcher: skipping entityTriples are empty", v51, 2u);
        MEMORY[0x1C6942830](v51, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v52 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v50, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C447200C(v40, v43);
      if (v37)
      {
        v53 = sub_1C488A094(v45, v37, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple);
      }

      else
      {
        v53 = 0.0;
      }

      v54 = v77;
      v55 = v81;
      v56 = v74;
      v57 = type metadata accessor for HomeMatcher();
      v58 = *(v57 + 36);
      v85 = v38;
      v59 = *&v38[v58];
      v60 = v86;
      v61 = v75;
      if (v53 <= v59)
      {
        sub_1C4EFF008();
        v60 = v86;
        sub_1C4420C3C(v86, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v56, 0, 1, v36);
        sub_1C44DDDBC(v56, v60);
        v53 = v59;
      }

      sub_1C457E858(v60, v61);
      if (sub_1C44157D4(v61, 1, v36) == 1)
      {
        sub_1C4420C3C(v61, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v55 + 32))(v42, v61, v36);
        v84 = v57;
        v62 = *(v57 + 32);
        v63 = sub_1C4EFD548();
        v64 = v85;
        (*(*(v63 - 8) + 16))(v54, &v85[v62], v63);
        v65 = v42;
        v66 = type metadata accessor for EntityMatch(0);
        v67 = *(v55 + 16);
        v68 = v87;
        v67(v54 + v66[5], v87, v36);
        v67(v54 + v66[6], v65, v36);
        v69 = v78;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v71 = v70;
        (*(v79 + 8))(v69, v80);
        (*(v55 + 8))(v65, v36);
        sub_1C44854B4(v68, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v86, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v72 = v64[*(v84 + 24)];
        *(v54 + v66[7]) = v53;
        *(v54 + v66[8]) = v71;
        *(v54 + v66[9]) = v72;
        *(v54 + v66[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C488ADAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v80 = a1;
  v78 = a3;
  v75 = sub_1C4EF9CD8();
  v73 = *(v75 - 8);
  v4 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v76 = *(v6 - 8);
  v77 = v6;
  v7 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EntityTriple(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v68 - v19;
  v21 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v68 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v68 - v29;
  v31 = v82;
  result = sub_1C4ACE5D4();
  if (!v31)
  {
    v82 = v10;
    v68 = v28;
    v69 = v25;
    v70 = 0;
    v71 = v9;
    v72 = v13;
    v33 = v76;
    v34 = v77;
    v81 = v30;
    v35 = v78;
    v36 = v79;
    if (v79)
    {
      sub_1C44D0BD8(v79, v20);
      v37 = v33;
      if (sub_1C44157D4(v20, 1, v82) == 1)
      {
        sub_1C4420C3C(v20, &qword_1EC0BA590, &qword_1C4F1F430);
        v38 = 1;
      }

      else
      {
        (*(v33 + 16))(v81, v20, v34);
        sub_1C44854B4(v20, type metadata accessor for EntityTriple);
        v38 = 0;
      }
    }

    else
    {
      v38 = 1;
      v37 = v76;
    }

    v39 = v80;
    sub_1C440BAA8(v81, v38, 1, v34);
    sub_1C44D0BD8(v39, v18);
    if (sub_1C44157D4(v18, 1, v82) == 1)
    {
      sub_1C4420C3C(v18, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v40 = sub_1C4F00978();
      sub_1C442B738(v40, qword_1EDE2DE10);
      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CD8();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v81;
      if (v43)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C43F8000, v41, v42, "Home Matcher: skipping entityTriples are empty", v45, 2u);
        MEMORY[0x1C6942830](v45, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v44, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C447200C(v18, v72);
      if (v36)
      {
        v47 = sub_1C4889B38(v39, v36);
      }

      else
      {
        v47 = 0.0;
      }

      v48 = v35;
      v49 = v71;
      v50 = v68;
      v51 = type metadata accessor for HomeMatcher();
      v52 = *(v51 + 36);
      v82 = v3;
      v53 = *(v3 + v52);
      v54 = v81;
      v55 = v69;
      if (v47 <= v53)
      {
        sub_1C4EFF008();
        v54 = v81;
        sub_1C4420C3C(v81, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v50, 0, 1, v34);
        sub_1C44DDDBC(v50, v54);
        v47 = v53;
      }

      sub_1C457E858(v54, v55);
      if (sub_1C44157D4(v55, 1, v34) == 1)
      {
        sub_1C4420C3C(v55, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v37 + 32))(v49, v55, v34);
        v80 = v51;
        v56 = *(v51 + 32);
        v57 = sub_1C4EFD548();
        v58 = v82;
        (*(*(v57 - 8) + 16))(v48, v82 + v56, v57);
        v59 = v34;
        v60 = type metadata accessor for EntityMatch(0);
        v61 = v37;
        v62 = *(v37 + 16);
        v63 = v72;
        v62(v48 + v60[5], v72, v59);
        v62(v48 + v60[6], v49, v59);
        v64 = v74;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v66 = v65;
        (*(v73 + 8))(v64, v75);
        (*(v61 + 8))(v49, v59);
        sub_1C44854B4(v63, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v81, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v67 = *(v58 + *(v80 + 24));
        *(v48 + v60[7]) = v47;
        *(v48 + v60[8]) = v66;
        *(v48 + v60[9]) = v67;
        *(v48 + v60[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C488B50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v84 = a1;
  v77 = a3;
  v4 = sub_1C4EF9CD8();
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFF0C8();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v73 - v12;
  v14 = type metadata accessor for EntityTriple(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v73 - v20;
  v22 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v73 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v73 - v30;
  v32 = v3;
  v33 = v87;
  result = sub_1C4ACE5D4();
  if (!v33)
  {
    v35 = v13;
    v74 = v29;
    v75 = v26;
    v76 = 0;
    v87 = v17;
    v36 = v82;
    v37 = v83;
    v86 = v31;
    v38 = v32;
    if (v83)
    {
      sub_1C486854C(v83, v21);
      v39 = type metadata accessor for ConstructionGraphTriple(0);
      v40 = v35;
      if (sub_1C44157D4(v21, 1, v39) == 1)
      {
        sub_1C4420C3C(v21, &unk_1EC0BCAE0, &unk_1C4F142A0);
        v41 = 1;
      }

      else
      {
        (*(v81 + 16))(v86, v21, v36);
        sub_1C44854B4(v21, type metadata accessor for ConstructionGraphTriple);
        v41 = 0;
      }

      v42 = v85;
      v43 = v87;
    }

    else
    {
      v41 = 1;
      v42 = v85;
      v43 = v87;
      v40 = v35;
    }

    v44 = v14;
    sub_1C440BAA8(v86, v41, 1, v36);
    v45 = v84;
    sub_1C44D0BD8(v84, v40);
    if (sub_1C44157D4(v40, 1, v44) == 1)
    {
      sub_1C4420C3C(v40, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v46 = sub_1C4F00978();
      sub_1C442B738(v46, qword_1EDE2DE10);
      v47 = sub_1C4F00968();
      v48 = sub_1C4F01CD8();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v86;
      if (v49)
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1C43F8000, v47, v48, "Home Matcher: skipping entityTriples are empty", v51, 2u);
        MEMORY[0x1C6942830](v51, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v52 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v50, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C447200C(v40, v43);
      if (v37)
      {
        v53 = sub_1C488A094(v45, v37, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple);
      }

      else
      {
        v53 = 0.0;
      }

      v54 = v77;
      v55 = v81;
      v56 = v74;
      v57 = type metadata accessor for HomeMatcher();
      v58 = *(v57 + 36);
      v85 = v38;
      v59 = *&v38[v58];
      v60 = v86;
      v61 = v75;
      if (v53 <= v59)
      {
        sub_1C4EFF008();
        v60 = v86;
        sub_1C4420C3C(v86, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v56, 0, 1, v36);
        sub_1C44DDDBC(v56, v60);
        v53 = v59;
      }

      sub_1C457E858(v60, v61);
      if (sub_1C44157D4(v61, 1, v36) == 1)
      {
        sub_1C4420C3C(v61, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v55 + 32))(v42, v61, v36);
        v84 = v57;
        v62 = *(v57 + 32);
        v63 = sub_1C4EFD548();
        v64 = v85;
        (*(*(v63 - 8) + 16))(v54, &v85[v62], v63);
        v65 = v42;
        v66 = type metadata accessor for EntityMatch(0);
        v67 = *(v55 + 16);
        v68 = v87;
        v67(v54 + v66[5], v87, v36);
        v67(v54 + v66[6], v65, v36);
        v69 = v78;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v71 = v70;
        (*(v79 + 8))(v69, v80);
        (*(v55 + 8))(v65, v36);
        sub_1C44854B4(v68, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v86, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v72 = v64[*(v84 + 24)];
        *(v54 + v66[7]) = v53;
        *(v54 + v66[8]) = v71;
        *(v54 + v66[9]) = v72;
        *(v54 + v66[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t HomeMatcher.execute()()
{
  *(v1 + 24) = v0;
  v2 = *(*(sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C488BD9C, 0, 0);
}

uint64_t sub_1C488BD9C()
{
  v44 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
  v4 = type metadata accessor for HomeMatcher();
  v5 = *(v4 + 24);
  LOBYTE(v43[0]) = *(v2 + v5);
  v6 = *(v4 + 32);
  v7 = sub_1C4EFD548();
  sub_1C43FBCE0(v7);
  v9 = *(v8 + 16);
  v9(v1, v2 + v6, v7);
  sub_1C43FBD94();
  sub_1C440BAA8(v10, v11, v12, v7);
  sub_1C44ABA54(v43, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  v13 = *(v2 + v5);
  switch(*(v2 + v5))
  {
    case 1:
    case 3:
      v42 = v9;
      v14 = v0[3];
      v15 = swift_task_alloc();
      *(v15 + 16) = v14;
      sub_1C43FD8E4();
      sub_1C44AC170(v16, v17, v18, v19, v20, v21);

      if (v14)
      {
        goto LABEL_10;
      }

      if (*(v13 + *(sub_1C43FF150() + 28)) != 1)
      {
        goto LABEL_11;
      }

      v22 = *(v2 + v5);
      v23 = swift_task_alloc();
      *(v23 + 16) = v15;
      v24 = sub_1C488C300;
      goto LABEL_9;
    case 2:
      v42 = v9;
      v27 = v0[3];
      v28 = swift_task_alloc();
      *(v28 + 16) = v27;
      sub_1C43FD8E4();
      sub_1C46CE408(v29, v30, v31, v32, v33, v34);

      if (v1)
      {
LABEL_10:
        v35 = v0[4];

        v36 = v0[1];
      }

      else
      {
        if (*(v27 + *(sub_1C43FF150() + 28)) == 1)
        {
          v22 = *(v2 + v5);
          v23 = swift_task_alloc();
          *(v23 + 16) = v28;
          v24 = sub_1C488C450;
LABEL_9:
          sub_1C44C6BB4(v2 + v6, v22, 0, 1, v24, v23);
        }

LABEL_11:
        v37 = v0[3];
        v38 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C46413D4();
        LOBYTE(v43[0]) = *(v2 + v5);
        v42(v38, v2 + v6, v7);
        sub_1C43FBD94();
        sub_1C440BAA8(v39, v40, v41, v7);
        sub_1C44A8814(v43, v38);
        sub_1C4420C3C(v38, &qword_1EC0B8568, &unk_1C4F319B0);

        v36 = v0[1];
      }

      result = v36();
      break;
    default:
      v43[0] = 0;
      v43[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v4;
      sub_1C456902C(&qword_1EC0BA530, &unk_1C4F14260);
      v25 = sub_1C4F01198();
      MEMORY[0x1C6940010](v25);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v5));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C488C198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5();
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C488C210()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return HomeMatcher.execute()();
}

uint64_t sub_1C488C330(uint64_t a1)
{
  result = sub_1C488C408(&qword_1EC0BE668, type metadata accessor for HomeMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C488C388(uint64_t a1)
{
  result = sub_1C488C408(&qword_1EC0BE670, type metadata accessor for HomeMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C488C408(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C488C468()
{
  v0 = qword_1EC0BE688;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v0;
}

unint64_t sub_1C488C4A0(uint64_t a1)
{
  result = sub_1C488C4C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C488C4C8()
{
  result = qword_1EC0BE698;
  if (!qword_1EC0BE698)
  {
    type metadata accessor for HUTenPointDataCollection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE698);
  }

  return result;
}

BOOL sub_1C488C520(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1C488C574@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1C43FBEF8();
  v6 = sub_1C456902C(v4, v5);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C44042B0();
  v11 = type metadata accessor for HUTenPointDataCollection(v10);
  sub_1C4460108(v2 + *(v11 + 36), v1, &qword_1EC0BF0B0, &qword_1C4F38128);
  v12 = type metadata accessor for HUTenPointSessionSample(0);
  sub_1C4400334();
  if (v13)
  {
    sub_1C4F00318();
    v14 = sub_1C447CBE4();
    v15 = type metadata accessor for HUTenPointContext(v14);
    sub_1C44410C0(v15);
    v16 = *(v12 + 24);
    v17 = type metadata accessor for HUTenPointBehaviors(0);
    sub_1C44410C0(v17);
    result = sub_1C4400334();
    if (!v13)
    {
      return sub_1C4420C3C(v1, &qword_1EC0BF0B0, &qword_1C4F38128);
    }
  }

  else
  {
    sub_1C441B408();
    return sub_1C4924B90(v1, a1);
  }

  return result;
}

uint64_t sub_1C488C670()
{
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for HUTenPointDataCollection(v1);
  sub_1C4420C3C(v0 + *(v2 + 36), &qword_1EC0BF0B0, &qword_1C4F38128);
  sub_1C441B408();
  v3 = sub_1C44022A0();
  sub_1C4924B90(v3, v4);
  type metadata accessor for HUTenPointSessionSample(0);
  v5 = sub_1C4410B98();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

uint64_t sub_1C488C6E0@<X0>(int a1@<W8>)
{
  v3 = sub_1C43FBEF8();
  v5 = sub_1C456902C(v3, v4);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C4402FE0();
  v10 = type metadata accessor for HUTenPointSessionSample(v9);
  v11 = sub_1C44553C4(*(v10 + 24));
  sub_1C4460108(v11, v12, &qword_1EC0BF0D8, &qword_1C4F38158);
  v13 = type metadata accessor for HUTenPointBehaviors(0);
  sub_1C440AC34(v13);
  if (v14)
  {
    sub_1C4F00318();
    if (qword_1EC0B6BF0 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v1, &qword_1EC0BF0D8, &qword_1C4F38158);
    }
  }

  else
  {
    sub_1C442DFCC();
    v15 = sub_1C43FD024();
    return sub_1C4924B90(v15, v16);
  }

  return result;
}

uint64_t sub_1C488C7F4()
{
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for HUTenPointSessionSample(v1);
  sub_1C4420C3C(v0 + *(v2 + 24), &qword_1EC0BF0D8, &qword_1C4F38158);
  sub_1C442DFCC();
  v3 = sub_1C44022A0();
  sub_1C4924B90(v3, v4);
  type metadata accessor for HUTenPointBehaviors(0);
  v5 = sub_1C4410B98();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

uint64_t sub_1C488C864()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 16);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488C89C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 16);
  *(v4 + 16) = v0;
}

uint64_t sub_1C488C904()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 24);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488C93C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 24);
  *(v4 + 24) = v0;
}

uint64_t sub_1C488C9A4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 32);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488C9DC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 32);
  *(v4 + 32) = v0;
}

uint64_t sub_1C488CA44()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 40);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CA7C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 40);
  *(v4 + 40) = v0;
}

uint64_t sub_1C488CAE4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 48);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CB1C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 48);
  *(v4 + 48) = v0;
}

uint64_t sub_1C488CB84()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 56);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CBBC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 56);
  *(v4 + 56) = v0;
}

uint64_t sub_1C488CC24()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 200);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CC5C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 200);
  *(v4 + 200) = v0;
}

uint64_t sub_1C488CCC4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 208);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CCFC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 208);
  *(v4 + 208) = v0;
}

uint64_t sub_1C488CD64()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 64);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CD9C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 64);
  *(v4 + 64) = v0;
}

uint64_t sub_1C488CE04()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 184);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CE3C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 184);
  *(v4 + 184) = v0;
}

uint64_t sub_1C488CEA4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 192);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CEDC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 192);
  *(v4 + 192) = v0;
}

uint64_t sub_1C488CF44()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 104);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CF7C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 104);
  *(v4 + 104) = v0;
}

uint64_t sub_1C488CFE4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 112);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D01C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 112);
  *(v4 + 112) = v0;
}

uint64_t sub_1C488D084()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 72);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D0BC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 72);
  *(v4 + 72) = v0;
}

uint64_t sub_1C488D124()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 368);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D15C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 368);
  *(v4 + 368) = v0;
}

uint64_t sub_1C488D1C4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 88);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D1FC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 88);
  *(v4 + 88) = v0;
}

uint64_t sub_1C488D264()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 168);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D29C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 168);
  *(v4 + 168) = v0;
}

uint64_t sub_1C488D304()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 248);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D33C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 248);
  *(v4 + 248) = v0;
}

uint64_t sub_1C488D3A4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 120);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D3DC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 120);
  *(v4 + 120) = v0;
}

uint64_t sub_1C488D444()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 136);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D47C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 136);
  *(v4 + 136) = v0;
}

uint64_t sub_1C488D4E4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 152);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D51C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 152);
  *(v4 + 152) = v0;
}

uint64_t sub_1C488D584()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 216);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D5BC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 216);
  *(v4 + 216) = v0;
}

uint64_t sub_1C488D624()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 232);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D65C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 232);
  *(v4 + 232) = v0;
}

uint64_t sub_1C488D6C4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 264);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D6FC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 264);
  *(v4 + 264) = v0;
}

uint64_t sub_1C488D764()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 80);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D79C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 80);
  *(v4 + 80) = v0;
}

uint64_t sub_1C488D804()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 376);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D83C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 376);
  *(v4 + 376) = v0;
}

uint64_t sub_1C488D8A4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 96);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D8DC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 96);
  *(v4 + 96) = v0;
}

uint64_t sub_1C488D944()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 176);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D97C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 176);
  *(v4 + 176) = v0;
}

uint64_t sub_1C488D9E4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 256);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DA1C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 256);
  *(v4 + 256) = v0;
}

uint64_t sub_1C488DA84()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 128);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DABC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 128);
  *(v4 + 128) = v0;
}

uint64_t sub_1C488DB24()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 144);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DB5C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 144);
  *(v4 + 144) = v0;
}

uint64_t sub_1C488DBC4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 160);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DBFC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 160);
  *(v4 + 160) = v0;
}

uint64_t sub_1C488DC64()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 224);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DC9C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 224);
  *(v4 + 224) = v0;
}

uint64_t sub_1C488DD04()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 240);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DD3C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 240);
  *(v4 + 240) = v0;
}

uint64_t sub_1C488DDA4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 272);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DDDC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 272);
  *(v4 + 272) = v0;
}

uint64_t sub_1C488DE44()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 280);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DE7C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 280);
  *(v4 + 280) = v0;
}

uint64_t sub_1C488DEE4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 288);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DF1C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 288);
  *(v4 + 288) = v0;
}

uint64_t sub_1C488DF84()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 296);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DFBC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 296);
  *(v4 + 296) = v0;
}

uint64_t sub_1C488E024()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 336);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E05C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 336);
  *(v4 + 336) = v0;
}

uint64_t sub_1C488E0C4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 304);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E0FC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 304);
  *(v4 + 304) = v0;
}

uint64_t sub_1C488E164()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 312);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E19C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 312);
  *(v4 + 312) = v0;
}

uint64_t sub_1C488E204()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 320);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E23C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 320);
  *(v4 + 320) = v0;
}

uint64_t sub_1C488E2A4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 328);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E2DC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 328);
  *(v4 + 328) = v0;
}

uint64_t sub_1C488E344()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 344);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E37C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 344);
  *(v4 + 344) = v0;
}

uint64_t sub_1C488E3E4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 352);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E41C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 352);
  *(v4 + 352) = v0;
}

uint64_t sub_1C488E484()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 360);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E4BC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 360);
  *(v4 + 360) = v0;
}

uint64_t sub_1C488E524()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 632);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E55C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 632);
  *(v4 + 632) = v0;
}

uint64_t sub_1C488E5C4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 640);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E5FC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 640);
  *(v4 + 640) = v0;
}

uint64_t sub_1C488E664()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 656);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E69C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 656);
  *(v4 + 656) = v0;
}

uint64_t sub_1C488E704()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 664);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E73C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 664);
  *(v4 + 664) = v0;
}

uint64_t sub_1C488E7A4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 648);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E7DC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 648);
  *(v4 + 648) = v0;
}

uint64_t sub_1C488E844()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 680);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E87C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 680);
  *(v4 + 680) = v0;
}

uint64_t sub_1C488E8E4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 688);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E91C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 688);
  *(v4 + 688) = v0;
}

uint64_t sub_1C488E984()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 672);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E9BC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 672);
  *(v4 + 672) = v0;
}

uint64_t sub_1C488EA24()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 704);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488EA5C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 704);
  *(v4 + 704) = v0;
}

uint64_t sub_1C488EAC4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 712);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488EAFC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 712);
  *(v4 + 712) = v0;
}

uint64_t sub_1C488EB64()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 696);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488EB9C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 696);
  *(v4 + 696) = v0;
}

uint64_t sub_1C488EC04()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 728);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488EC3C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 728);
  *(v4 + 728) = v0;
}

uint64_t sub_1C488ECA4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 736);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488ECDC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 736);
  *(v4 + 736) = v0;
}

uint64_t sub_1C488ED44()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 720);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488ED7C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 720);
  *(v4 + 720) = v0;
}

uint64_t sub_1C488EDE4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 752);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488EE1C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 752);
  *(v4 + 752) = v0;
}

uint64_t sub_1C488EE84()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 760);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488EEBC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 760);
  *(v4 + 760) = v0;
}

uint64_t sub_1C488EF24()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 744);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488EF5C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 744);
  *(v4 + 744) = v0;
}

uint64_t sub_1C488EFC4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 776);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488EFFC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 776);
  *(v4 + 776) = v0;
}

uint64_t sub_1C488F064()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 784);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F09C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 784);
  *(v4 + 784) = v0;
}

uint64_t sub_1C488F104()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 768);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F13C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 768);
  *(v4 + 768) = v0;
}

uint64_t sub_1C488F1A4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 384);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F1DC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 384);
  *(v4 + 384) = v0;
}

uint64_t sub_1C488F244()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 392);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F27C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 392);
  *(v4 + 392) = v0;
}

uint64_t sub_1C488F2E4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 400);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F31C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 400);
  *(v4 + 400) = v0;
}

uint64_t sub_1C488F384()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 440);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F3BC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 440);
  *(v4 + 440) = v0;
}

uint64_t sub_1C488F424()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 408);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F45C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 408);
  *(v4 + 408) = v0;
}

uint64_t sub_1C488F4C4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 416);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F4FC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 416);
  *(v4 + 416) = v0;
}

uint64_t sub_1C488F564()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 424);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F59C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 424);
  *(v4 + 424) = v0;
}

uint64_t sub_1C488F604()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 432);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F63C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 432);
  *(v4 + 432) = v0;
}

uint64_t sub_1C488F6A4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 448);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F6DC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 448);
  *(v4 + 448) = v0;
}

uint64_t sub_1C488F744()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 456);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F77C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 456);
  *(v4 + 456) = v0;
}

uint64_t sub_1C488F7E4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 464);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F81C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 464);
  *(v4 + 464) = v0;
}

uint64_t sub_1C488F884()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 472);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F8BC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 472);
  *(v4 + 472) = v0;
}

uint64_t sub_1C488F924()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 496);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F95C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 496);
  *(v4 + 496) = v0;
}

uint64_t sub_1C488F9C4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 488);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F9FC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 488);
  *(v4 + 488) = v0;
}

uint64_t sub_1C488FA64()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 504);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FA9C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 504);
  *(v4 + 504) = v0;
}

uint64_t sub_1C488FB04()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 480);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FB3C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 480);
  *(v4 + 480) = v0;
}

uint64_t sub_1C488FBA4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 536);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FBDC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 536);
  *(v4 + 536) = v0;
}

uint64_t sub_1C488FC44()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 560);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FC7C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 560);
  *(v4 + 560) = v0;
}

uint64_t sub_1C488FCE4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 512);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FD1C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 512);
  *(v4 + 512) = v0;
}

uint64_t sub_1C488FD84()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 544);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FDBC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 544);
  *(v4 + 544) = v0;
}

uint64_t sub_1C488FE24()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 568);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FE5C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 568);
  *(v4 + 568) = v0;
}

uint64_t sub_1C488FEC4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 520);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FEFC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 520);
  *(v4 + 520) = v0;
}

uint64_t sub_1C488FF64()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 552);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FF9C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 552);
  *(v4 + 552) = v0;
}

uint64_t sub_1C4890004()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 576);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C489003C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 576);
  *(v4 + 576) = v0;
}

uint64_t sub_1C48900A4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 528);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C48900DC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 528);
  *(v4 + 528) = v0;
}

uint64_t sub_1C4890144()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 584);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C489017C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 584);
  *(v4 + 584) = v0;
}

uint64_t sub_1C48901E4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 592);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C489021C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 592);
  *(v4 + 592) = v0;
}

uint64_t sub_1C4890284()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 600);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C48902BC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 600);
  *(v4 + 600) = v0;
}

uint64_t sub_1C4890324()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 608);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C489035C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 608);
  *(v4 + 608) = v0;
}

uint64_t sub_1C48903C4()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 616);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C48903FC()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 616);
  *(v4 + 616) = v0;
}

uint64_t sub_1C4890464()
{
  sub_1C441FCAC();
  sub_1C441C2D8();
  v1 = *(v0 + 624);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C489049C()
{
  v3 = sub_1C4432464();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v5 = sub_1C43FD6F4();
    v6 = sub_1C48A3808(v5);
    sub_1C445E850(v6);
  }

  sub_1C440BD74();
  v7 = *(v4 + 624);
  *(v4 + 624) = v0;
}

uint64_t sub_1C4890504@<X0>(int a1@<W8>)
{
  v3 = sub_1C43FBEF8();
  v5 = sub_1C456902C(v3, v4);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C4402FE0();
  v10 = type metadata accessor for HUTenPointSessionSample(v9);
  v11 = sub_1C44553C4(*(v10 + 20));
  sub_1C4460108(v11, v12, &qword_1EC0BF0D0, &qword_1C4F38150);
  v13 = type metadata accessor for HUTenPointContext(0);
  sub_1C440AC34(v13);
  if (v14)
  {
    sub_1C4F00318();
    if (qword_1EC0B6C00 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v1, &qword_1EC0BF0D0, &qword_1C4F38150);
    }
  }

  else
  {
    sub_1C4405CC8();
    v15 = sub_1C43FD024();
    return sub_1C4924B90(v15, v16);
  }

  return result;
}

uint64_t sub_1C4890618()
{
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for HUTenPointSessionSample(v1);
  sub_1C4420C3C(v0 + *(v2 + 20), &qword_1EC0BF0D0, &qword_1C4F38150);
  sub_1C4405CC8();
  v3 = sub_1C44022A0();
  sub_1C4924B90(v3, v4);
  type metadata accessor for HUTenPointContext(0);
  v5 = sub_1C4410B98();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

uint64_t sub_1C4890688@<X0>(int a1@<W8>)
{
  v3 = sub_1C43FBEF8();
  v5 = sub_1C456902C(v3, v4);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C4402FE0();
  sub_1C441ECBC(v9);
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v10 = type metadata accessor for HUTenPointContext.TimeAndDate(0);
  sub_1C440AC34(v10);
  if (!v11)
  {
    return sub_1C442EB90();
  }

  sub_1C4F00318();
  if (qword_1EC0B6C18 != -1)
  {
    swift_once();
  }

  result = sub_1C440E1D8();
  if (a1 != 1)
  {
    return sub_1C4420C3C(v1, &qword_1EC0BF670, qword_1C4F3A4D8);
  }

  return result;
}

uint64_t sub_1C48907A4()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BF670, qword_1C4F3A4D8);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF24(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4404F9C();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48B1DA8(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441B9D8();
  v11 = type metadata accessor for HUTenPointContext.TimeAndDate(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C48908A0()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.TimeAndDate(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.TimeAndDate._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    v11 = sub_1C43FD6F4();
    v12 = sub_1C48BC834(v11);
    sub_1C44222F4(v12);
  }

  sub_1C4419928();
  v13 = sub_1C4404C28();
  sub_1C4924B90(v13, v14);
  v15 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v15);
  sub_1C43FC29C();
  v16 = sub_1C44022A0();
  sub_1C44408D4(v16, v17, v18, v19);
  return swift_endAccess();
}

uint64_t sub_1C48909A4()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.TimeAndDate(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.TimeAndDate._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    v11 = sub_1C43FD6F4();
    v12 = sub_1C48BC834(v11);
    sub_1C44222F4(v12);
  }

  sub_1C4419928();
  v13 = sub_1C4404C28();
  sub_1C4924B90(v13, v14);
  v15 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v15);
  sub_1C43FC29C();
  v16 = sub_1C44022A0();
  sub_1C44408D4(v16, v17, v18, v19);
  return swift_endAccess();
}

uint64_t sub_1C4890AA8()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.TimeAndDate(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.TimeAndDate._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    v11 = sub_1C43FD6F4();
    v12 = sub_1C48BC834(v11);
    sub_1C44222F4(v12);
  }

  sub_1C4419928();
  v13 = sub_1C4404C28();
  sub_1C4924B90(v13, v14);
  v15 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v15);
  sub_1C43FC29C();
  v16 = sub_1C44022A0();
  sub_1C44408D4(v16, v17, v18, v19);
  return swift_endAccess();
}

uint64_t sub_1C4890BAC()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.TimeAndDate(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.TimeAndDate._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    v11 = sub_1C43FD6F4();
    v12 = sub_1C48BC834(v11);
    sub_1C44222F4(v12);
  }

  sub_1C4419928();
  v13 = sub_1C4404C28();
  sub_1C4924B90(v13, v14);
  v15 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v15);
  sub_1C43FC29C();
  v16 = sub_1C44022A0();
  sub_1C44408D4(v16, v17, v18, v19);
  return swift_endAccess();
}

uint64_t sub_1C4890CB0()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.TimeAndDate(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.TimeAndDate._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    v11 = sub_1C43FD6F4();
    v12 = sub_1C48BC834(v11);
    sub_1C44222F4(v12);
  }

  sub_1C4419928();
  v13 = sub_1C4404C28();
  sub_1C4924B90(v13, v14);
  v15 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v15);
  sub_1C43FC29C();
  v16 = sub_1C44022A0();
  sub_1C44408D4(v16, v17, v18, v19);
  return swift_endAccess();
}

uint64_t sub_1C4890DB4()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.TimeAndDate(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.TimeAndDate._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    v11 = sub_1C43FD6F4();
    v12 = sub_1C48BC834(v11);
    sub_1C44222F4(v12);
  }

  sub_1C4419928();
  v13 = sub_1C4404C28();
  sub_1C4924B90(v13, v14);
  v15 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v15);
  sub_1C43FC29C();
  v16 = sub_1C44022A0();
  sub_1C44408D4(v16, v17, v18, v19);
  return swift_endAccess();
}

uint64_t sub_1C4890EB8()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.TimeAndDate(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.TimeAndDate._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    v11 = sub_1C43FD6F4();
    v12 = sub_1C48BC834(v11);
    sub_1C44222F4(v12);
  }

  sub_1C4419928();
  v13 = sub_1C4404C28();
  sub_1C4924B90(v13, v14);
  v15 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v15);
  sub_1C43FC29C();
  v16 = sub_1C44022A0();
  sub_1C44408D4(v16, v17, v18, v19);
  return swift_endAccess();
}

uint64_t sub_1C4890F9C()
{
  v1 = sub_1C43FBEF8();
  v3 = sub_1C456902C(v1, v2);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C44042B0();
  sub_1C441ECBC(v7);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for HUTenPointContext.MotionState(0);
  sub_1C4400334();
  if (!v8)
  {
    return sub_1C44145EC();
  }

  sub_1C4F00318();
  v9 = sub_1C447CBE4();
  v10 = type metadata accessor for FeatureValue(v9);
  sub_1C44410C0(v10);
  result = sub_1C4400334();
  if (!v8)
  {
    return sub_1C4420C3C(v0, &qword_1EC0BF660, &qword_1C4F3A4C8);
  }

  return result;
}

uint64_t sub_1C4891088()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BF660, &qword_1C4F3A4C8);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF24(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4404F9C();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48B1DA8(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441B9D8();
  v11 = type metadata accessor for HUTenPointContext.MotionState(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C489117C()
{
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for HUTenPointContext.MotionState(v1);
  sub_1C4420C3C(v0 + *(v2 + 20), &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4419928();
  v3 = sub_1C44022A0();
  sub_1C4924B90(v3, v4);
  type metadata accessor for FeatureValue(0);
  v5 = sub_1C4410B98();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

uint64_t sub_1C48911EC()
{
  v1 = sub_1C43FBEF8();
  v3 = sub_1C456902C(v1, v2);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C44042B0();
  sub_1C441ECBC(v7);
  sub_1C43FC2BC();
  sub_1C4410308();
  v8 = type metadata accessor for HUTenPointContext.SemanticLocation(0);
  sub_1C4400334();
  if (!v9)
  {
    return sub_1C44145EC();
  }

  sub_1C4F00318();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v12, v13, v14, v11);
  v15 = *(v8 + 24);
  sub_1C43FCF64();
  sub_1C440BAA8(v16, v17, v18, v11);
  result = sub_1C4400334();
  if (!v9)
  {
    return sub_1C4420C3C(v0, &unk_1EC0BF650, &qword_1C4F3A4B8);
  }

  return result;
}

uint64_t sub_1C4891300()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&unk_1EC0BF650, &qword_1C4F3A4B8);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF24(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4404F9C();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48B1DA8(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441B9D8();
  v11 = type metadata accessor for HUTenPointContext.SemanticLocation(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C48913F4()
{
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for HUTenPointContext.SemanticLocation(v1);
  sub_1C4420C3C(v0 + *(v2 + 20), &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4419928();
  v3 = sub_1C44022A0();
  sub_1C4924B90(v3, v4);
  type metadata accessor for FeatureValue(0);
  v5 = sub_1C4410B98();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

uint64_t sub_1C4891494@<X0>(int a1@<W8>)
{
  v3 = sub_1C43FBEF8();
  v5 = sub_1C456902C(v3, v4);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C4402FE0();
  sub_1C441ECBC(v9);
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v10 = type metadata accessor for HUTenPointContext.POICategory(0);
  sub_1C440AC34(v10);
  if (!v11)
  {
    return sub_1C442EB90();
  }

  sub_1C4F00318();
  if (qword_1EC0B6C50 != -1)
  {
    swift_once();
  }

  result = sub_1C440E1D8();
  if (a1 != 1)
  {
    return sub_1C4420C3C(v1, &unk_1EC0BF640, &qword_1C4F3A4A8);
  }

  return result;
}

uint64_t sub_1C48915B0()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&unk_1EC0BF640, &qword_1C4F3A4A8);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF24(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4404F9C();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48B1DA8(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441B9D8();
  v11 = type metadata accessor for HUTenPointContext.POICategory(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C48916AC()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C48917A0()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4891894()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4891988()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4891A7C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4891B70()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4891C64()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4891D58()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4891E4C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4891F40()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4892034()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4892128()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C489221C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4892310()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4892404()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C48924F8()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C48925EC()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C48926E0()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C440232C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C43FC454();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48C1F18(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C48927B4@<X0>(int a1@<W8>)
{
  v3 = sub_1C43FBEF8();
  v5 = sub_1C456902C(v3, v4);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C4402FE0();
  sub_1C441ECBC(v9);
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v10 = type metadata accessor for HUTenPointContext.UserFocusComputedMode(0);
  sub_1C440AC34(v10);
  if (!v11)
  {
    return sub_1C442EB90();
  }

  sub_1C4F00318();
  if (qword_1EC0B6C68 != -1)
  {
    swift_once();
  }

  result = sub_1C440E1D8();
  if (a1 != 1)
  {
    return sub_1C4420C3C(v1, &qword_1EC0BF630, &qword_1C4F3A498);
  }

  return result;
}

uint64_t sub_1C48928D0()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BF630, &qword_1C4F3A498);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF24(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4404F9C();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48B1DA8(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441B9D8();
  v11 = type metadata accessor for HUTenPointContext.UserFocusComputedMode(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C48929CC()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.UserFocusComputedMode(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.UserFocusComputedMode._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C4892AEC()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.UserFocusComputedMode(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.UserFocusComputedMode._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C4892C0C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.UserFocusComputedMode(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.UserFocusComputedMode._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C4892D0C()
{
  v1 = sub_1C43FBEF8();
  v3 = sub_1C456902C(v1, v2);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C44042B0();
  sub_1C441ECBC(v7);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for HUTenPointContext.InferredMode(0);
  sub_1C4400334();
  if (!v8)
  {
    return sub_1C44145EC();
  }

  sub_1C4F00318();
  v9 = sub_1C447CBE4();
  v10 = type metadata accessor for FeatureValue(v9);
  sub_1C44410C0(v10);
  result = sub_1C4400334();
  if (!v8)
  {
    return sub_1C4420C3C(v0, &unk_1EC0BF620, &qword_1C4F3A488);
  }

  return result;
}

uint64_t sub_1C4892DF8()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&unk_1EC0BF620, &qword_1C4F3A488);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF24(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4404F9C();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48B1DA8(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441B9D8();
  v11 = type metadata accessor for HUTenPointContext.InferredMode(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4892EEC()
{
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for HUTenPointContext.InferredMode(v1);
  sub_1C4420C3C(v0 + *(v2 + 20), &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4419928();
  v3 = sub_1C44022A0();
  sub_1C4924B90(v3, v4);
  type metadata accessor for FeatureValue(0);
  v5 = sub_1C4410B98();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

uint64_t sub_1C4892F5C@<X0>(int a1@<W8>)
{
  v3 = sub_1C43FBEF8();
  v5 = sub_1C456902C(v3, v4);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C4402FE0();
  sub_1C441ECBC(v9);
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v10 = type metadata accessor for HUTenPointContext.DeviceWireless(0);
  sub_1C440AC34(v10);
  if (!v11)
  {
    return sub_1C442EB90();
  }

  sub_1C4F00318();
  if (qword_1EC0B6C90 != -1)
  {
    swift_once();
  }

  result = sub_1C440E1D8();
  if (a1 != 1)
  {
    return sub_1C4420C3C(v1, &qword_1EC0BF610, &qword_1C4F3A478);
  }

  return result;
}

uint64_t sub_1C4893078()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BF610, &qword_1C4F3A478);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF24(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4404F9C();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48B1DA8(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441B9D8();
  v11 = type metadata accessor for HUTenPointContext.DeviceWireless(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4893174()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.DeviceWireless(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.DeviceWireless._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C4893294()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.DeviceWireless(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.DeviceWireless._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C48933B4()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.DeviceWireless(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.DeviceWireless._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C48934B4@<X0>(int a1@<W8>)
{
  v3 = sub_1C43FBEF8();
  v5 = sub_1C456902C(v3, v4);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C4402FE0();
  sub_1C441ECBC(v9);
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v10 = type metadata accessor for HUTenPointContext.DevicePower(0);
  sub_1C440AC34(v10);
  if (!v11)
  {
    return sub_1C442EB90();
  }

  sub_1C4F00318();
  if (qword_1EC0B6CA8 != -1)
  {
    swift_once();
  }

  result = sub_1C440E1D8();
  if (a1 != 1)
  {
    return sub_1C4420C3C(v1, &unk_1EC0BF570, &qword_1C4F3A3D8);
  }

  return result;
}

uint64_t sub_1C48935D0()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&unk_1EC0BF570, &qword_1C4F3A3D8);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF24(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4404F9C();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48B1DA8(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441B9D8();
  v11 = type metadata accessor for HUTenPointContext.DevicePower(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C48936CC()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.DevicePower(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.DevicePower._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    v11 = sub_1C43FD6F4();
    v12 = sub_1C48DC700(v11);
    sub_1C44222F4(v12);
  }

  sub_1C4419928();
  v13 = sub_1C4404C28();
  sub_1C4924B90(v13, v14);
  v15 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v15);
  sub_1C43FC29C();
  v16 = sub_1C44022A0();
  sub_1C44408D4(v16, v17, v18, v19);
  return swift_endAccess();
}

uint64_t sub_1C48937D0()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.DevicePower(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.DevicePower._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    v11 = sub_1C43FD6F4();
    v12 = sub_1C48DC700(v11);
    sub_1C44222F4(v12);
  }

  sub_1C4419928();
  v13 = sub_1C4404C28();
  sub_1C4924B90(v13, v14);
  v15 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v15);
  sub_1C43FC29C();
  v16 = sub_1C44022A0();
  sub_1C44408D4(v16, v17, v18, v19);
  return swift_endAccess();
}

uint64_t sub_1C48938D4()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.DevicePower(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.DevicePower._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    v11 = sub_1C43FD6F4();
    v12 = sub_1C48DC700(v11);
    sub_1C44222F4(v12);
  }

  sub_1C4419928();
  v13 = sub_1C4404C28();
  sub_1C4924B90(v13, v14);
  v15 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v15);
  sub_1C43FC29C();
  v16 = sub_1C44022A0();
  sub_1C44408D4(v16, v17, v18, v19);
  return swift_endAccess();
}

uint64_t sub_1C48939D8()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.DevicePower(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.DevicePower._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    v11 = sub_1C43FD6F4();
    v12 = sub_1C48DC700(v11);
    sub_1C44222F4(v12);
  }

  sub_1C4419928();
  v13 = sub_1C4404C28();
  sub_1C4924B90(v13, v14);
  v15 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v15);
  sub_1C43FC29C();
  v16 = sub_1C44022A0();
  sub_1C44408D4(v16, v17, v18, v19);
  return swift_endAccess();
}

uint64_t sub_1C4893ADC()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.DevicePower(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.DevicePower._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    v11 = sub_1C43FD6F4();
    v12 = sub_1C48DC700(v11);
    sub_1C44222F4(v12);
  }

  sub_1C4419928();
  v13 = sub_1C4404C28();
  sub_1C4924B90(v13, v14);
  v15 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v15);
  sub_1C43FC29C();
  v16 = sub_1C44022A0();
  sub_1C44408D4(v16, v17, v18, v19);
  return swift_endAccess();
}

uint64_t sub_1C4893BC0()
{
  v1 = sub_1C43FBEF8();
  v3 = sub_1C456902C(v1, v2);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C44042B0();
  sub_1C441ECBC(v7);
  sub_1C43FC2BC();
  sub_1C4410308();
  v8 = type metadata accessor for HUTenPointContext.MicroLocation(0);
  sub_1C4400334();
  if (!v9)
  {
    return sub_1C44145EC();
  }

  sub_1C4F00318();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v12, v13, v14, v11);
  v15 = *(v8 + 24);
  sub_1C43FCF64();
  sub_1C440BAA8(v16, v17, v18, v11);
  result = sub_1C4400334();
  if (!v9)
  {
    return sub_1C4420C3C(v0, &unk_1EC0BF600, &qword_1C4F3A468);
  }

  return result;
}

uint64_t sub_1C4893CD4()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&unk_1EC0BF600, &qword_1C4F3A468);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF24(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4404F9C();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48B1DA8(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441B9D8();
  v11 = type metadata accessor for HUTenPointContext.MicroLocation(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4893DC8()
{
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for HUTenPointContext.MicroLocation(v1);
  sub_1C4420C3C(v0 + *(v2 + 20), &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4419928();
  v3 = sub_1C44022A0();
  sub_1C4924B90(v3, v4);
  type metadata accessor for FeatureValue(0);
  v5 = sub_1C4410B98();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

uint64_t sub_1C4893E68()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C4420C3C(v0 + *(v3 + 24), &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4419928();
  v4 = sub_1C44022A0();
  sub_1C4924B90(v4, v5);
  type metadata accessor for FeatureValue(0);
  v6 = sub_1C4410B98();

  return sub_1C440BAA8(v6, v7, v8, v9);
}

uint64_t sub_1C4893EDC@<X0>(int a1@<W8>)
{
  v3 = sub_1C43FBEF8();
  v5 = sub_1C456902C(v3, v4);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C4402FE0();
  sub_1C441ECBC(v9);
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v10 = type metadata accessor for HUTenPointContext.AppLaunch(0);
  sub_1C440AC34(v10);
  if (!v11)
  {
    return sub_1C442EB90();
  }

  sub_1C4F00318();
  if (qword_1EC0B6CD0 != -1)
  {
    swift_once();
  }

  result = sub_1C440E1D8();
  if (a1 != 1)
  {
    return sub_1C4420C3C(v1, &qword_1EC0BF5F0, &qword_1C4F3A458);
  }

  return result;
}

uint64_t sub_1C4893FF8()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BF5F0, &qword_1C4F3A458);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF24(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4404F9C();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48B1DA8(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441B9D8();
  v11 = type metadata accessor for HUTenPointContext.AppLaunch(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C48940F4()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.AppLaunch(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.AppLaunch._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C4894214()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.AppLaunch(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.AppLaunch._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C4894334()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.AppLaunch(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.AppLaunch._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C4894434()
{
  v1 = sub_1C43FBEF8();
  v3 = sub_1C456902C(v1, v2);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C44042B0();
  sub_1C441ECBC(v7);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for HUTenPointContext.AmbientLight(0);
  sub_1C4400334();
  if (!v8)
  {
    return sub_1C44145EC();
  }

  sub_1C4F00318();
  v9 = sub_1C447CBE4();
  v10 = type metadata accessor for FeatureValue(v9);
  sub_1C44410C0(v10);
  result = sub_1C4400334();
  if (!v8)
  {
    return sub_1C4420C3C(v0, &qword_1EC0BF5E0, &qword_1C4F3A448);
  }

  return result;
}

uint64_t sub_1C4894520()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BF5E0, &qword_1C4F3A448);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF24(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4404F9C();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48B1DA8(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441B9D8();
  v11 = type metadata accessor for HUTenPointContext.AmbientLight(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4894614()
{
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for HUTenPointContext.AmbientLight(v1);
  sub_1C4420C3C(v0 + *(v2 + 20), &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4419928();
  v3 = sub_1C44022A0();
  sub_1C4924B90(v3, v4);
  type metadata accessor for FeatureValue(0);
  v5 = sub_1C4410B98();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

uint64_t sub_1C4894684()
{
  v1 = sub_1C43FBEF8();
  v3 = sub_1C456902C(v1, v2);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C44042B0();
  sub_1C441ECBC(v7);
  sub_1C43FC2BC();
  sub_1C4410308();
  v8 = type metadata accessor for HUTenPointContext.ActivityInterval(0);
  sub_1C4400334();
  if (!v9)
  {
    return sub_1C44145EC();
  }

  sub_1C4F00318();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v12, v13, v14, v11);
  v15 = *(v8 + 24);
  sub_1C43FCF64();
  sub_1C440BAA8(v16, v17, v18, v11);
  result = sub_1C4400334();
  if (!v9)
  {
    return sub_1C4420C3C(v0, &unk_1EC0BF5C0, &qword_1C4F3A428);
  }

  return result;
}

uint64_t sub_1C4894798()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&unk_1EC0BF5C0, &qword_1C4F3A428);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF24(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4404F9C();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48B1DA8(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441B9D8();
  v11 = type metadata accessor for HUTenPointContext.ActivityInterval(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C489488C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C43FD2BC();
  v7 = sub_1C456902C(v5, v6);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C44042B0();
  v12 = a1(v11);
  sub_1C4417FEC(*(v12 + 20));
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C4400334();
  if (!v14)
  {
    return sub_1C4924B90(v2, a2);
  }

  sub_1C444ACD8(MEMORY[0x1E69E7CC0]);
  v15 = *(v13 + 32);
  v16 = type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C44410C0(v16);
  result = sub_1C4400334();
  if (!v14)
  {
    return sub_1C4420C3C(v2, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  return result;
}

uint64_t sub_1C4894988()
{
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for HUTenPointContext.ActivityInterval(v1);
  sub_1C4420C3C(v0 + *(v2 + 20), &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4419928();
  v3 = sub_1C44022A0();
  sub_1C4924B90(v3, v4);
  type metadata accessor for FeatureValue(0);
  v5 = sub_1C4410B98();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

uint64_t sub_1C4894A10@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C43FD2BC();
  v7 = sub_1C456902C(v5, v6);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C44042B0();
  v12 = a1(v11);
  sub_1C4417FEC(*(v12 + 24));
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C4400334();
  if (!v14)
  {
    return sub_1C4924B90(v2, a2);
  }

  sub_1C444ACD8(MEMORY[0x1E69E7CC0]);
  v15 = *(v13 + 32);
  v16 = type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C44410C0(v16);
  result = sub_1C4400334();
  if (!v14)
  {
    return sub_1C4420C3C(v2, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  return result;
}

uint64_t sub_1C4894B24@<X0>(int a1@<W8>)
{
  v3 = sub_1C43FBEF8();
  v5 = sub_1C456902C(v3, v4);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C4402FE0();
  sub_1C441ECBC(v9);
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v10 = type metadata accessor for HUTenPointContext.AppCategoryDistribution(0);
  sub_1C440AC34(v10);
  if (!v11)
  {
    return sub_1C442EB90();
  }

  sub_1C4F00318();
  if (qword_1EC0B6D20 != -1)
  {
    swift_once();
  }

  result = sub_1C440E1D8();
  if (a1 != 1)
  {
    return sub_1C4420C3C(v1, &unk_1EC0BF5B0, &qword_1C4F3A418);
  }

  return result;
}

uint64_t sub_1C4894C40()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&unk_1EC0BF5B0, &qword_1C4F3A418);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF24(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4404F9C();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48B1DA8(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441B9D8();
  v11 = type metadata accessor for HUTenPointContext.AppCategoryDistribution(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4894D3C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F63C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for HUTenPointContext.AppCategoryDistribution._StorageClass(0);
    sub_1C43FD23C(v9);
    swift_allocObject();
    v10 = sub_1C43FD6F4();
    v11 = sub_1C48EF664(v10);
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C4894E3C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F63C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for HUTenPointContext.AppCategoryDistribution._StorageClass(0);
    sub_1C43FD23C(v9);
    swift_allocObject();
    v10 = sub_1C43FD6F4();
    v11 = sub_1C48EF664(v10);
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C4894F3C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F63C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for HUTenPointContext.AppCategoryDistribution._StorageClass(0);
    sub_1C43FD23C(v9);
    swift_allocObject();
    v10 = sub_1C43FD6F4();
    v11 = sub_1C48EF664(v10);
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C489503C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F63C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for HUTenPointContext.AppCategoryDistribution._StorageClass(0);
    sub_1C43FD23C(v9);
    swift_allocObject();
    v10 = sub_1C43FD6F4();
    v11 = sub_1C48EF664(v10);
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C489513C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F63C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for HUTenPointContext.AppCategoryDistribution._StorageClass(0);
    sub_1C43FD23C(v9);
    swift_allocObject();
    v10 = sub_1C43FD6F4();
    v11 = sub_1C48EF664(v10);
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C489523C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F63C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for HUTenPointContext.AppCategoryDistribution._StorageClass(0);
    sub_1C43FD23C(v9);
    swift_allocObject();
    v10 = sub_1C43FD6F4();
    v11 = sub_1C48EF664(v10);
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C489533C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F63C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for HUTenPointContext.AppCategoryDistribution._StorageClass(0);
    sub_1C43FD23C(v9);
    swift_allocObject();
    v10 = sub_1C43FD6F4();
    v11 = sub_1C48EF664(v10);
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C489543C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F63C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for HUTenPointContext.AppCategoryDistribution._StorageClass(0);
    sub_1C43FD23C(v9);
    swift_allocObject();
    v10 = sub_1C43FD6F4();
    v11 = sub_1C48EF664(v10);
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C489553C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F63C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for HUTenPointContext.AppCategoryDistribution._StorageClass(0);
    sub_1C43FD23C(v9);
    swift_allocObject();
    v10 = sub_1C43FD6F4();
    v11 = sub_1C48EF664(v10);
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C489563C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F63C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for HUTenPointContext.AppCategoryDistribution._StorageClass(0);
    sub_1C43FD23C(v9);
    swift_allocObject();
    v10 = sub_1C43FD6F4();
    v11 = sub_1C48EF664(v10);
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C489573C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F63C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for HUTenPointContext.AppCategoryDistribution._StorageClass(0);
    sub_1C43FD23C(v9);
    swift_allocObject();
    v10 = sub_1C43FD6F4();
    v11 = sub_1C48EF664(v10);
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C489583C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F63C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for HUTenPointContext.AppCategoryDistribution._StorageClass(0);
    sub_1C43FD23C(v9);
    swift_allocObject();
    v10 = sub_1C43FD6F4();
    v11 = sub_1C48EF664(v10);
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C489591C@<X0>(int a1@<W8>)
{
  v3 = sub_1C43FBEF8();
  v5 = sub_1C456902C(v3, v4);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C4402FE0();
  sub_1C441ECBC(v9);
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v10 = type metadata accessor for HUTenPointContext.MotionStateDistribution(0);
  sub_1C440AC34(v10);
  if (!v11)
  {
    return sub_1C442EB90();
  }

  sub_1C4F00318();
  if (qword_1EC0B6D38 != -1)
  {
    swift_once();
  }

  result = sub_1C440E1D8();
  if (a1 != 1)
  {
    return sub_1C4420C3C(v1, &unk_1EC0BF5A0, &qword_1C4F3A408);
  }

  return result;
}

uint64_t sub_1C4895A38()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&unk_1EC0BF5A0, &qword_1C4F3A408);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF24(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4404F9C();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48B1DA8(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441B9D8();
  v11 = type metadata accessor for HUTenPointContext.MotionStateDistribution(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4895B34()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.MotionStateDistribution(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.MotionStateDistribution._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C4895C54()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.MotionStateDistribution(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.MotionStateDistribution._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C4895D74()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for HUTenPointContext.MotionStateDistribution(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for HUTenPointContext.MotionStateDistribution._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C44222F4(v11);
  }

  sub_1C4419928();
  v12 = sub_1C4404C28();
  sub_1C4924B90(v12, v13);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v14);
  sub_1C43FC29C();
  v15 = sub_1C44022A0();
  sub_1C44408D4(v15, v16, v17, v18);
  return swift_endAccess();
}

uint64_t sub_1C4895E74@<X0>(int a1@<W8>)
{
  v3 = sub_1C43FBEF8();
  v5 = sub_1C456902C(v3, v4);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C4402FE0();
  sub_1C441ECBC(v9);
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v10 = type metadata accessor for HUTenPointContext.VirtualInteraction(0);
  sub_1C440AC34(v10);
  if (!v11)
  {
    return sub_1C442EB90();
  }

  sub_1C4F00318();
  if (qword_1EC0B6D50 != -1)
  {
    swift_once();
  }

  result = sub_1C440E1D8();
  if (a1 != 1)
  {
    return sub_1C4420C3C(v1, &unk_1EC0BF590, &qword_1C4F3A3F8);
  }

  return result;
}

uint64_t sub_1C4895F90()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&unk_1EC0BF590, &qword_1C4F3A3F8);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF24(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4404F9C();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48B1DA8(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441B9D8();
  v11 = type metadata accessor for HUTenPointContext.VirtualInteraction(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C489608C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F1FC(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442FE10();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48F79CC(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4896180()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F1FC(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442FE10();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48F79CC(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4896274()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F1FC(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442FE10();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48F79CC(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4896368()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F1FC(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442FE10();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48F79CC(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C489645C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F1FC(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442FE10();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48F79CC(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4896550()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F1FC(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442FE10();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48F79CC(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4896644()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F1FC(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442FE10();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48F79CC(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4896738()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F1FC(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442FE10();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48F79CC(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C489682C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F1FC(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442FE10();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48F79CC(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4896920()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F1FC(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442FE10();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48F79CC(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4896A14()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F1FC(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442FE10();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48F79CC(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4896B08()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F1FC(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442FE10();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48F79CC(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4896BFC()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F1FC(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442FE10();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48F79CC(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4896CF0()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F1FC(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442FE10();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48F79CC(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_1C4896DE4()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C443F1FC(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442FE10();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C48F79CC(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419928();
  v11 = sub_1C4404C28();
  sub_1C4924B90(v11, v12);
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v13);
  sub_1C43FC29C();
  v14 = sub_1C44022A0();
  sub_1C44408D4(v14, v15, v16, v17);
  return swift_endAccess();
}