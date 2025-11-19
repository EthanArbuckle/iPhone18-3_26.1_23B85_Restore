uint64_t sub_1C4B84748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v77 = a1;
  v73 = a3;
  v4 = sub_1C4EFF0C8();
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v68 - v10;
  v12 = type metadata accessor for EntityTriple(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v68 - v18;
  v20 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v68 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v68 - v28;
  v30 = v79;
  result = sub_1C4ACE70C();
  if (!v30)
  {
    v71 = v7;
    v72 = v11;
    v68[1] = 0;
    v69 = v26;
    v70 = v23;
    v79 = v15;
    v33 = v75;
    v32 = v76;
    v78 = v29;
    if (v76)
    {
      sub_1C44F1938(v76, v19);
      v34 = type metadata accessor for GraphTriple(0);
      v35 = v33;
      v36 = v12;
      if (sub_1C44157D4(v19, 1, v34) == 1)
      {
        sub_1C4420C3C(v19, &unk_1EC0BC900, &unk_1C4F142D0);
        v37 = 1;
      }

      else
      {
        (*(v74 + 16))(v78, v19, v33);
        sub_1C44DBD5C(v19, type metadata accessor for GraphTriple);
        v37 = 0;
      }

      v38 = v77;
    }

    else
    {
      v37 = 1;
      v35 = v75;
      v38 = v77;
      v36 = v12;
    }

    v39 = v72;
    sub_1C440BAA8(v78, v37, 1, v35);
    sub_1C44D0BD8(v38, v39);
    if (sub_1C44157D4(v39, 1, v36) == 1)
    {
      sub_1C4420C3C(v39, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v40 = sub_1C4F00978();
      sub_1C442B738(v40, qword_1EDE2DE10);
      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CD8();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v78;
      if (v43)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C43F8000, v41, v42, "Topic Matcher: skipping entityTriples are empty", v45, 2u);
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
      sub_1C448566C(v39, v79);
      if (v32)
      {
        v47 = v3;
        v48 = sub_1C4B832FC(v38, v32, type metadata accessor for GraphTriple, &unk_1EC0BC900, &unk_1C4F142D0, sub_1C44F1938, type metadata accessor for GraphTriple, sub_1C459D7C8, type metadata accessor for GraphTriple);
        v49 = v73;
      }

      else
      {
        v48 = 0.0;
        v49 = v73;
        v47 = v3;
      }

      v50 = v71;
      v51 = v69;
      v52 = type metadata accessor for TopicMatcher();
      v53 = *(v47 + *(v52 + 28));
      v54 = v78;
      if (v48 <= v53)
      {
        sub_1C4EFF008();
        sub_1C4420C3C(v54, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v51, 0, 1, v35);
        sub_1C44DDDBC(v51, v54);
        v48 = v53;
      }

      v55 = v70;
      sub_1C457E858(v54, v70);
      v56 = sub_1C44157D4(v55, 1, v35);
      v57 = v74;
      if (v56 == 1)
      {
        sub_1C4420C3C(v55, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v74 + 32))(v50, v55, v35);
        v58 = *(v52 + 36);
        v59 = sub_1C4EFD548();
        (*(*(v59 - 8) + 16))(v49, v47 + v58, v59);
        v60 = type metadata accessor for EntityMatch(0);
        v61 = *(v57 + 16);
        v62 = v49 + v60[5];
        v77 = v47;
        v63 = v52;
        v64 = v79;
        v61(v62, v79, v35);
        v61(v49 + v60[6], v50, v35);
        sub_1C4EF9AE8();
        v66 = v65;
        (*(v57 + 8))(v50, v35);
        sub_1C44DBD5C(v64, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v78, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v67 = *(v77 + *(v63 + 24));
        *(v49 + v60[7]) = v48;
        *(v49 + v60[8]) = v66;
        *(v49 + v60[9]) = v67;
        *(v49 + v60[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4B84EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v71 = a1;
  v67 = a3;
  v4 = sub_1C4EFF0C8();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EntityTriple(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v19 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v62 - v27;
  v29 = v72;
  result = sub_1C4ACE70C();
  if (!v29)
  {
    v62 = 0;
    v63 = v25;
    v64 = v22;
    v65 = v7;
    v72 = v11;
    v31 = v69;
    v66 = v3;
    if (v70)
    {
      v32 = v70;
      sub_1C44D0BD8(v70, v18);
      v33 = sub_1C44157D4(v18, 1, v8);
      v34 = v72;
      if (v33 == 1)
      {
        sub_1C4420C3C(v18, &qword_1EC0BA590, &qword_1C4F1F430);
        v35 = 1;
      }

      else
      {
        (*(v68 + 16))(v28, v18, v31);
        sub_1C44DBD5C(v18, type metadata accessor for EntityTriple);
        v35 = 0;
      }
    }

    else
    {
      v32 = 0;
      v35 = 1;
      v34 = v72;
    }

    v36 = v71;
    v37 = v28;
    v38 = v28;
    v39 = v31;
    sub_1C440BAA8(v38, v35, 1, v31);
    sub_1C44D0BD8(v36, v15);
    if (sub_1C44157D4(v15, 1, v8) == 1)
    {
      sub_1C4420C3C(v15, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v40 = sub_1C4F00978();
      sub_1C442B738(v40, qword_1EDE2DE10);
      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CD8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1C43F8000, v41, v42, "Topic Matcher: skipping entityTriples are empty", v43, 2u);
        MEMORY[0x1C6942830](v43, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v44 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v37, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C448566C(v15, v34);
      if (v32)
      {
        v45 = sub_1C4B81B98(v36, v32);
      }

      else
      {
        v45 = 0.0;
      }

      v47 = v67;
      v46 = v68;
      v48 = v65;
      v49 = v63;
      v50 = type metadata accessor for TopicMatcher();
      v51 = *(v66 + v50[7]);
      if (v45 <= v51)
      {
        sub_1C4EFF008();
        v48 = v65;
        sub_1C4420C3C(v37, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v49, 0, 1, v39);
        sub_1C44DDDBC(v49, v37);
        v45 = v51;
      }

      v52 = v64;
      sub_1C457E858(v37, v64);
      v53 = sub_1C44157D4(v52, 1, v39);
      v71 = v37;
      if (v53 == 1)
      {
        sub_1C4420C3C(v52, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v46 + 32))(v48, v52, v39);
        v54 = v50[9];
        v55 = sub_1C4EFD548();
        (*(*(v55 - 8) + 16))(v47, v66 + v54, v55);
        v56 = type metadata accessor for EntityMatch(0);
        v57 = *(v46 + 16);
        v58 = v72;
        v57(v47 + v56[5], v72, v39);
        v57(v47 + v56[6], v48, v39);
        sub_1C4EF9AE8();
        v60 = v59;
        (*(v46 + 8))(v48, v39);
        sub_1C44DBD5C(v58, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v71, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v61 = *(v66 + v50[6]);
        *(v47 + v56[7]) = v45;
        *(v47 + v56[8]) = v60;
        *(v47 + v56[9]) = v61;
        *(v47 + v56[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4B85578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v77 = a1;
  v73 = a3;
  v4 = sub_1C4EFF0C8();
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v68 - v10;
  v12 = type metadata accessor for EntityTriple(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v68 - v18;
  v20 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v68 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v68 - v28;
  v30 = v79;
  result = sub_1C4ACE70C();
  if (!v30)
  {
    v71 = v7;
    v72 = v11;
    v68[1] = 0;
    v69 = v26;
    v70 = v23;
    v79 = v15;
    v33 = v75;
    v32 = v76;
    v78 = v29;
    if (v76)
    {
      sub_1C486854C(v76, v19);
      v34 = type metadata accessor for ConstructionGraphTriple(0);
      v35 = v33;
      v36 = v12;
      if (sub_1C44157D4(v19, 1, v34) == 1)
      {
        sub_1C4420C3C(v19, &unk_1EC0BCAE0, &unk_1C4F142A0);
        v37 = 1;
      }

      else
      {
        (*(v74 + 16))(v78, v19, v33);
        sub_1C44DBD5C(v19, type metadata accessor for ConstructionGraphTriple);
        v37 = 0;
      }

      v38 = v77;
    }

    else
    {
      v37 = 1;
      v35 = v75;
      v38 = v77;
      v36 = v12;
    }

    v39 = v72;
    sub_1C440BAA8(v78, v37, 1, v35);
    sub_1C44D0BD8(v38, v39);
    if (sub_1C44157D4(v39, 1, v36) == 1)
    {
      sub_1C4420C3C(v39, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v40 = sub_1C4F00978();
      sub_1C442B738(v40, qword_1EDE2DE10);
      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CD8();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v78;
      if (v43)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C43F8000, v41, v42, "Topic Matcher: skipping entityTriples are empty", v45, 2u);
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
      sub_1C448566C(v39, v79);
      if (v32)
      {
        v47 = v3;
        v48 = sub_1C4B832FC(v38, v32, type metadata accessor for ConstructionGraphTriple, &unk_1EC0BCAE0, &unk_1C4F142A0, sub_1C486854C, type metadata accessor for ConstructionGraphTriple, sub_1C459DC78, type metadata accessor for ConstructionGraphTriple);
        v49 = v73;
      }

      else
      {
        v48 = 0.0;
        v49 = v73;
        v47 = v3;
      }

      v50 = v71;
      v51 = v69;
      v52 = type metadata accessor for TopicMatcher();
      v53 = *(v47 + *(v52 + 28));
      v54 = v78;
      if (v48 <= v53)
      {
        sub_1C4EFF008();
        sub_1C4420C3C(v54, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v51, 0, 1, v35);
        sub_1C44DDDBC(v51, v54);
        v48 = v53;
      }

      v55 = v70;
      sub_1C457E858(v54, v70);
      v56 = sub_1C44157D4(v55, 1, v35);
      v57 = v74;
      if (v56 == 1)
      {
        sub_1C4420C3C(v55, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v74 + 32))(v50, v55, v35);
        v58 = *(v52 + 36);
        v59 = sub_1C4EFD548();
        (*(*(v59 - 8) + 16))(v49, v47 + v58, v59);
        v60 = type metadata accessor for EntityMatch(0);
        v61 = *(v57 + 16);
        v62 = v49 + v60[5];
        v77 = v47;
        v63 = v52;
        v64 = v79;
        v61(v62, v79, v35);
        v61(v49 + v60[6], v50, v35);
        sub_1C4EF9AE8();
        v66 = v65;
        (*(v57 + 8))(v50, v35);
        sub_1C44DBD5C(v64, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v78, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v67 = *(v77 + *(v63 + 24));
        *(v49 + v60[7]) = v48;
        *(v49 + v60[8]) = v66;
        *(v49 + v60[9]) = v67;
        *(v49 + v60[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t TopicMatcher.execute()()
{
  *(v1 + 24) = v0;
  v2 = *(*(sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B85D8C, 0, 0);
}

uint64_t sub_1C4B85D8C()
{
  v44 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
  v4 = type metadata accessor for TopicMatcher();
  v5 = *(v4 + 24);
  LOBYTE(v43[0]) = *(v2 + v5);
  v6 = *(v4 + 36);
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
      v24 = sub_1C4B862C8;
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
          v24 = sub_1C4B864D0;
LABEL_9:
          sub_1C44C6BB4(v2 + v6, v22, 0, 1, v24, v23);
        }

LABEL_11:
        v37 = v0[3];
        v38 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C46422B8();
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
      sub_1C456902C(&qword_1EC0BA4C8, &qword_1C4F56BF0);
      v25 = sub_1C4F01198();
      MEMORY[0x1C6940010](v25);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v5));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C4B86188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
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

uint64_t sub_1C4B861D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return TopicMatcher.execute()();
}

uint64_t sub_1C4B862F8(uint64_t a1)
{
  result = sub_1C4B86488(&qword_1EDDF89D8, type metadata accessor for TopicMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B86350(uint64_t a1)
{
  result = sub_1C4B86488(&qword_1EDDF89E8, type metadata accessor for TopicMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B863D0()
{
  result = type metadata accessor for PhaseStores();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Source();
    if (v2 <= 0x3F)
    {
      result = sub_1C4EFD548();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4B86488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static Transformers.reportError(error:context:config:pipelineType:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v10 = type metadata accessor for Pipeline.StatusStore();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v14) = *a5;
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v15 = sub_1C4F00978();
  sub_1C442B738(v15, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = a1;
  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CD8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = v14;
    v14 = v19;
    v33 = swift_slowAlloc();
    v37 = v33;
    *v14 = 136315394;
    *(v14 + 4) = sub_1C441D828(a2, a3, &v37);
    *(v14 + 12) = 2080;
    v36 = a1;
    v20 = a1;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v21 = sub_1C4F01198();
    v34 = a1;
    v23 = v10;
    v24 = a4;
    v25 = sub_1C441D828(v21, v22, &v37);

    *(v14 + 14) = v25;
    a4 = v24;
    v10 = v23;
    a1 = v34;
    _os_log_impl(&dword_1C43F8000, v17, v18, "Transformer error attempting to transform %s due to: %s", v14, 0x16u);
    v26 = v33;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v26, -1, -1);
    v27 = v14;
    LOBYTE(v14) = v35;
    MEMORY[0x1C6942830](v27, -1, -1);
  }

  sub_1C44098F0(a4, v13);
  v13[*(v10 + 20)] = v14;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C47CE078(v13);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0C890;
  *(inited + 32) = 0x726F727265;
  *(inited + 40) = 0xE500000000000000;
  v37 = a1;
  v29 = a1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C4F01198();
  v30 = sub_1C4F01108();

  *(inited + 48) = v30;
  *(inited + 56) = 0x747865746E6F63;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = sub_1C4F01108();
  *(inited + 80) = 0x496E6F6973736573;
  *(inited + 88) = 0xE900000000000064;
  v31 = sub_1C4F01108();

  *(inited + 96) = v31;
  sub_1C4468200();
  sub_1C4F00F28();
  sub_1C4F00268();
}

void *initializeBufferWithCopyOfBuffer for Transformers(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for Transformers(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for Transformers(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1C4B869B0(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_1C443E52C(a1, v8);
  if (v9)
  {
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, 0x49uLL);
      memcpy(v5, __src, 0x49uLL);
      v10 = v3;
      sub_1C4B86BAC(v5, &v10);
      return sub_1C4B873D0(__dst);
    }
  }

  else
  {
    sub_1C4448244(v8);
  }

  __src[0] = v3;
  __dst[0] = -104;
  result = static ActivityType.== infix(_:_:)(__src, __dst);
  if (result)
  {
    result = sub_1C4B86A9C(result);
    if (!v2)
    {
      return sub_1C4DE042C();
    }
  }

  return result;
}

void sub_1C4B86BAC(uint64_t *a1, char *a2)
{
  v4 = v3;
  v5 = a1[1];
  v6 = a1[6];
  v7 = *(a1 + 56);
  v8 = a1[8];
  v9 = *(a1 + 72);
  v10 = *a2;
  if (v5)
  {
    v11 = *a1;
    v12 = type metadata accessor for LifeEventStructs.IdentifierRelationshipType(0);
    sub_1C44099C4(v12);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = sub_1C4DE55DC();
    v14 = (v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId);
    v15 = *(v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId + 8);
    *v14 = v11;
    v14[1] = v5;

    v16 = *(v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType + 8);
    *(v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType) = xmmword_1C4F56D20;

    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C4F0FCC0;
    *(v17 + 32) = v13;
    v18 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_identifier);
    *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_identifier) = v17;

    sub_1C4E16C18();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDDFECB8);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C43F8000, v21, v22, "Got a transportation activity with no event id", v23, 2u);
      MEMORY[0x1C6942830](v23, -1, -1);
    }
  }

  if ((v9 & 1) == 0)
  {
    v24 = type metadata accessor for LifeEventStructs.QuantityRelationshipType(0);
    sub_1C44099C4(v24);
    sub_1C4E104CC();
    v25 = sub_1C4F019E8();
    sub_1C4407C98(v25, v26);

    sub_1C4DE0454(v27);
  }

  if ((v7 & 1) == 0)
  {
    v28 = type metadata accessor for LifeEventStructs.QuantityRelationshipType(0);
    sub_1C44099C4(v28);
    sub_1C4E104CC();
    v29 = sub_1C4F019E8();
    sub_1C4407C98(v29, v30);

    sub_1C4DE047C(v31);
  }

  if ((v10 & 0xE0) == 0x40)
  {
    if ((v10 & 0x1F) == 3)
    {
      sub_1C4B86A9C(v19);
      if (!v4)
      {
        sub_1C4DE042C();
      }
    }

    else if ((v10 & 0x1F) == 2)
    {
      sub_1C4B86E74();
      if (!v4)
      {
        sub_1C4DE04A4();
      }
    }
  }
}

uint64_t sub_1C4B86E74()
{
  if (qword_1EDDE9278 != -1)
  {
    sub_1C441A63C();
  }

  v1 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v1, qword_1EDE2CFA8);
  String.base64EncodedSHA(withPrefix:)();
  v2 = type metadata accessor for LifeEventStructs.Automobile(0);
  sub_1C44099C4(v2);
  sub_1C4E14D40();
  v4 = v3;
  if (!v0)
  {
    v5 = (v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name);
    v6 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name + 8);
    *v5 = xmmword_1C4F56D30;
  }

  return v4;
}

uint64_t TransportationActivityMetadata.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t TransportationActivityMetadata.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TransportationActivityMetadata.vehicleInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1C4B86FEC(v2, v3);
}

uint64_t sub_1C4B86FEC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

__n128 TransportationActivityMetadata.vehicleInfo.setter(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  sub_1C4B87068(v1[2], v1[3]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 1) = *a1;
  *(v1 + 2) = v6;
  return result;
}

uint64_t sub_1C4B87068(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t TransportationActivityMetadata.distance.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t TransportationActivityMetadata.distance.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t TransportationActivityMetadata.elevationGain.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t TransportationActivityMetadata.elevationGain.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

__n128 TransportationActivityMetadata.init(identifier:vehicleInfo:distance:elevationGain:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  sub_1C4B87068(0, 1);
  result = *a3;
  v15 = *(a3 + 16);
  *(a8 + 16) = *a3;
  *(a8 + 32) = v15;
  *(a8 + 48) = a4;
  *(a8 + 56) = a5 & 1;
  *(a8 + 64) = a6;
  *(a8 + 72) = a7 & 1;
  return result;
}

uint64_t TransportationActivityMetadata.VehicleInfoMetadata.stableId.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t TransportationActivityMetadata.VehicleInfoMetadata.stableId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TransportationActivityMetadata.VehicleInfoMetadata.carPlayId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t TransportationActivityMetadata.VehicleInfoMetadata.carPlayId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

IntelligencePlatformCore::TransportationActivityMetadata::VehicleInfoMetadata __swiftcall TransportationActivityMetadata.VehicleInfoMetadata.init(stableId:carPlayId:)(Swift::String_optional stableId, Swift::String_optional carPlayId)
{
  *v2 = stableId;
  v2[1] = carPlayId;
  result.carPlayId = carPlayId;
  result.stableId = stableId;
  return result;
}

uint64_t sub_1C4B872D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4B872F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4B87348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C4B87460(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C4008, &qword_1C4F56EA8);
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD230();
  v142 = v8;
  sub_1C43FBE44();
  v156 = sub_1C4EFF0C8();
  v9 = sub_1C43FCDF8(v156);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v155 = v15 - v14;
  sub_1C43FBE44();
  v150 = sub_1C4EFF8A8();
  v16 = sub_1C43FCDF8(v150);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD230();
  v149 = v22;
  sub_1C43FBE44();
  v23 = sub_1C4EFEEF8();
  v24 = sub_1C43FCDF8(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD230();
  v161 = v30;
  sub_1C43FBE44();
  v31 = sub_1C4EFF318();
  v32 = sub_1C43FCDF8(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBFDC();
  v158 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v132 - v40;
  v42 = sub_1C4F00F28();
  v43 = *(a1 + 16);
  if (!v43)
  {
    return sub_1C482FCF0(v42);
  }

  v44 = v11;
  v45 = a1 + 32;
  v162 = (v26 + 8);
  v148 = (v18 + 8);
  v153 = (v34 + 16);
  v154 = (v44 + 8);
  v147 = (v34 + 32);
  v151 = (v34 + 8);
  v152 = v34;
  v143 = v34 + 40;
  v141 = v23;
  v157 = v31;
  v160 = v41;
  while (1)
  {
    v159 = v43;
    sub_1C442E860(v45, &v164);
    sub_1C440B42C();
    v46 = v161;
    sub_1C442D458();
    sub_1C4EFF7C8();
    v47 = sub_1C4EFED18();
    v48 = *v162;
    (*v162)(v46, v23);
    if (v47)
    {
      goto LABEL_5;
    }

    sub_1C440B42C();
    v49 = v149;
    sub_1C442D458();
    sub_1C4EFF7B8();
    v50 = v146;
    sub_1C4EFF888();
    sub_1C4B89858(&unk_1EDDFCC80, MEMORY[0x1E69A99E8]);
    v51 = v150;
    v52 = sub_1C4F010B8();
    v53 = *v148;
    (*v148)(v50, v51);
    v53(v49, v51);
    if (v52)
    {
LABEL_5:
      sub_1C440B42C();
      v54 = v155;
      sub_1C442D458();
      sub_1C4EFF7E8();
      sub_1C4EFF048();
      (*v154)(v54, v156);
      sub_1C4409678(&v164, v165);
      v55 = v161;
      sub_1C4EFF7F8();
      sub_1C4EFEB68();
      v48(v55, v23);
      sub_1C4409678(&v164, v165);
      sub_1C4EFF7D8();
      v56 = v160;
      sub_1C4EFF308();
    }

    else
    {
      sub_1C440B42C();
      v78 = v155;
      sub_1C442D458();
      sub_1C4EFF7E8();
      v145 = sub_1C4EFF048();
      v144 = v79;
      (*v154)(v78, v156);
      sub_1C440B42C();
      v80 = v161;
      sub_1C442D458();
      sub_1C4EFF7F8();
      sub_1C4EFEB68();
      v48(v80, v23);
      sub_1C4409678(&v164, v165);
      v81 = v149;
      sub_1C4EFF7B8();
      sub_1C4EFF848();
      v53(v81, v150);
      v56 = v160;
      sub_1C4EFF308();
      v82 = sub_1C4EFF2F8();
      if (v42[2])
      {
        v84 = sub_1C445FAA8(v82, v83);
        v86 = v85;

        if (v86)
        {
          v87 = v157;
          v88 = *(v152 + 72);
          v89 = v42[7] + v88 * v84;
          v90 = v142;
          (*(v152 + 16))(v142, v89, v157);
          sub_1C43FBD94();
          sub_1C440BAA8(v91, v92, v93, v87);
          sub_1C4607CD4(v90, &qword_1EC0C4008, &qword_1C4F56EA8);
          v94 = sub_1C4EFF2F8();
          v96 = v95;
          sub_1C440B42C();
          v23 = v137;
          sub_1C442D458();
          sub_1C4EFF7C8();
          v144 = sub_1C4EFEB68();
          v145 = v97;
          v98 = sub_1C440D908();
          (v48)(v98);
          sub_1C440B42C();
          sub_1C442D458();
          v138 = sub_1C4EFF7D8();
          v139 = v99;
          swift_isUniquelyReferenced_nonNull_native();
          v163 = v42;
          v100 = sub_1C445FAA8(v94, v96);
          sub_1C4404C54(v100, v101);
          if (v65)
          {
            goto LABEL_33;
          }

          v104 = v102;
          v105 = v103;
          sub_1C456902C(&qword_1EC0C4010, &unk_1C4F56EB0);
          if (sub_1C4414F60())
          {
            v106 = sub_1C445FAA8(v94, v96);
            if ((v105 & 1) != (v107 & 1))
            {
              goto LABEL_35;
            }

            v104 = v106;
          }

          v108 = v160;
          if ((v105 & 1) == 0)
          {
            goto LABEL_34;
          }

          v42 = v163;
          v109 = v163[7];
          v110 = *v147;
          v134 = v104 * v88;
          v111 = v109 + v104 * v88;
          v112 = v140;
          v113 = v157;
          v135 = v110;
          v110(v140, v111, v157);
          sub_1C43FBD94();
          sub_1C440BAA8(v114, v115, v116, v113);
          sub_1C4EFF2E8();

          v117 = v112;
          v118 = v136;
          sub_1C4B897E8(v117, v136);
          if (sub_1C44157D4(v118, 1, v113) == 1)
          {
            sub_1C4607CD4(v118, &qword_1EC0C4008, &qword_1C4F56EA8);
            sub_1C4471348(v42[6] + 16 * v104);
            sub_1C4F02478();
          }

          else
          {
            v125 = v133;
            v126 = v118;
            v127 = v135;
            v135(v133, v126, v113);
            v127(v42[7] + v134, v125, v113);
          }

          v77 = v159;
          (*v151)(v108, v113);
          sub_1C4607CD4(v140, &qword_1EC0C4008, &qword_1C4F56EA8);
          goto LABEL_15;
        }
      }

      else
      {
      }

      v119 = v142;
      sub_1C43FCF64();
      sub_1C440BAA8(v120, v121, v122, v123);
      sub_1C4607CD4(v119, &qword_1EC0C4008, &qword_1C4F56EA8);
      sub_1C440B42C();
      v23 = v161;
      sub_1C442D458();
      sub_1C4EFF7C8();
      sub_1C4EFEB68();
      v124 = sub_1C440D908();
      (v48)(v124);
      sub_1C4409678(&v164, v165);
      sub_1C4EFF7D8();
      sub_1C4EFF2E8();
    }

    v57 = sub_1C4EFF2F8();
    v59 = v58;
    v60 = v157;
    (*v153)(v158, v56, v157);
    swift_isUniquelyReferenced_nonNull_native();
    v163 = v42;
    v61 = sub_1C445FAA8(v57, v59);
    sub_1C4404C54(v61, v62);
    if (v65)
    {
      break;
    }

    v66 = v63;
    v67 = v64;
    sub_1C456902C(&qword_1EC0C4010, &unk_1C4F56EB0);
    if (sub_1C4414F60())
    {
      v68 = sub_1C445FAA8(v57, v59);
      if ((v67 & 1) != (v69 & 1))
      {
        goto LABEL_35;
      }

      v66 = v68;
    }

    v42 = v163;
    if (v67)
    {
      v70 = sub_1C4406164();
      (*(v71 + 40))(v70, v158, v60);
    }

    else
    {
      v163[(v66 >> 6) + 8] |= 1 << v66;
      v72 = (v42[6] + 16 * v66);
      *v72 = v57;
      v72[1] = v59;
      v73 = sub_1C4406164();
      (*(v74 + 32))(v73, v158, v60);
      v75 = v42[2];
      v65 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v65)
      {
        goto LABEL_32;
      }

      v42[2] = v76;
    }

    (*v151)(v160, v60);
    v77 = v159;
LABEL_15:
    sub_1C440962C(&v164);
    v45 += 40;
    v43 = v77 - 1;
    if (!v43)
    {
      return sub_1C482FCF0(v42);
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_1C43FCF64();
  sub_1C440BAA8(v129, v130, v131, v157);
  __break(1u);
LABEL_35:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4B88014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v186 = a1;
  v182 = a3;
  v4 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v179 = v176 - v8;
  sub_1C43FBE44();
  v192 = sub_1C4EFDE98();
  v9 = sub_1C43FCDF8(v192);
  v181 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v180 = v14 - v13;
  sub_1C43FBE44();
  v15 = sub_1C4EFEFB8();
  v16 = sub_1C43FCDF8(v15);
  v189 = v17;
  v190 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  v176[2] = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD230();
  v188 = v22;
  sub_1C43FBE44();
  v23 = sub_1C4EFD648();
  v24 = sub_1C43FCDF8(v23);
  v184 = v25;
  v185 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v183 = v29 - v28;
  v30 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  v31 = sub_1C43FBD18(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v191 = sub_1C4EFF8F8();
  v34 = sub_1C43FCDF8(v191);
  v193 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBCC4();
  v194 = v39 - v38;
  sub_1C43FBE44();
  v40 = sub_1C4EFCE78();
  v41 = sub_1C43FCDF8(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBCC4();
  v48 = v47 - v46;
  v49 = sub_1C4EFCE88();
  v50 = sub_1C43FCDF8(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v56 = v176 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v59 = v176 - v58;
  v187 = a2;
  sub_1C4EFCE98();
  if ((*(v52 + 88))(v59, v49) != *MEMORY[0x1E69A9258])
  {
    goto LABEL_5;
  }

  v60 = *(v52 + 96);
  v52 += 96;
  v60(v59, v49);
  v61 = *(v43 + 32);
  v177 = v48;
  v61(v48, v59, v40);
  v49 = sub_1C4EFDB08();
  if ((v49 & 0x8000000000000000) == 0)
  {
    v59 = sub_1C4EFDB08();
    if (v59 < 0)
    {
      __break(1u);
LABEL_5:
      v62 = *MEMORY[0x1E69A9250];
      v63 = sub_1C4EFCE58();
      sub_1C4432B38();
      sub_1C4B89858(v64, v65);
      v194 = v63;
      v197 = swift_allocError();
      v67 = v66;
      v195 = 0;
      v196 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD00000000000001DLL, 0x80000001C4FB36E0);
      sub_1C4EFCE98();
      sub_1C4F02438();
      v68 = *(v52 + 8);
      v68(v56, v49);
      v69 = v196;
      *v67 = v195;
      v67[1] = v69;
      v70 = *MEMORY[0x1E69A9238];
      sub_1C440A6B8(v194);
      (*(v71 + 104))(v67);
      swift_willThrow();
      return (v68)(v59, v49);
    }
  }

  v176[1] = v43;
  v187 = v40;
  sub_1C456902C(&qword_1EC0BDD38, qword_1C4F31D80);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1C4F0CE60;
  *(v73 + 56) = &type metadata for FusedTripleColumn;
  v74 = sub_1C4505DC4();
  *(v73 + 64) = v74;
  *(v73 + 32) = 6;
  *(v73 + 96) = &type metadata for FusedTripleColumn;
  *(v73 + 104) = v74;
  *(v73 + 72) = 0;
  (*(v184 + 104))(v183, *MEMORY[0x1E69A9338], v185);
  sub_1C4EFD668();
  sub_1C4EFD678();
  sub_1C43FBD94();
  sub_1C440BAA8(v75, v76, v77, v78);
  v79 = v194;
  sub_1C4EFF8C8();
  v80 = v188;
  sub_1C4EFDB18();
  v81 = (v189[11])(v80, v190);
  if (v81 == *MEMORY[0x1E69A97C8])
  {
    goto LABEL_7;
  }

  v103 = v81;
  if (v81 == *MEMORY[0x1E69A9798])
  {
    v109 = v178[4];
    v190 = v178[3];
    v189 = sub_1C4409678(v178, v190);
    v110 = v177;
    sub_1C4EFCE68();
    v111 = sub_1C4409158();
    v112 = v191;
    v113(v111);
    sub_1C43FBD94();
    sub_1C440BAA8(v114, v115, v116, v112);
    v117 = *(v109 + 32);
    type metadata accessor for GraphTriple(0);
    sub_1C44138AC();
    sub_1C4B89858(v118, v119);
    v120 = sub_1C441EF78();
    v117(v120);
    v121 = v73;
    v95 = v110;
    sub_1C4607CD4(v121, &qword_1EC0BAA00, &unk_1C4F17400);
    v122 = sub_1C44301AC();
    v123(v122);
    sub_1C44FE5AC();
LABEL_10:
    v108 = v124;

    goto LABEL_11;
  }

  v129 = v191;
  v95 = v177;
  if (v81 == *MEMORY[0x1E69A97B0])
  {
    goto LABEL_15;
  }

  if (v81 == *MEMORY[0x1E69A9788])
  {
    v130 = v178[4];
    v190 = sub_1C4409678(v178, v178[3]);
    sub_1C4EFCE68();
    v131 = sub_1C4409158();
    v132(v131);
    sub_1C43FBD94();
    sub_1C440BAA8(v133, v134, v135, v129);
    v136 = *(v130 + 32);
    type metadata accessor for EventTriple(0);
    sub_1C4412620();
    sub_1C4B89858(v137, v138);
    v139 = sub_1C441EF78();
    v136(v139);
    v140 = v95;
    v95 = v177;
    sub_1C4607CD4(v140, &qword_1EC0BAA00, &unk_1C4F17400);
    v141 = sub_1C44301AC();
    v142(v141);
    sub_1C4813530();
    goto LABEL_10;
  }

  if (v81 == *MEMORY[0x1E69A97C0])
  {
    v143 = v178[3];
    v144 = v178[4];
    v190 = sub_1C4409678(v178, v143);
    v145 = v129;
    v146 = v180;
    sub_1C4EFCE68();
    v103 = v193;
    v147 = v179;
    (*(v193 + 16))(v179, v79, v145);
    sub_1C43FBD94();
    sub_1C440BAA8(v148, v149, v150, v145);
    v151 = (*(v144 + 40))(v146, v147, v143, v144);
    sub_1C4607CD4(v147, &qword_1EC0BAA00, &unk_1C4F17400);
    (*(v181 + 8))(v146, v192);
    sub_1C4B88EA4(v151);
    goto LABEL_12;
  }

  if (v81 == *MEMORY[0x1E69A97B8])
  {
LABEL_15:
    sub_1C4B87460(MEMORY[0x1E69E7CC0]);
    v103 = v193;
    goto LABEL_13;
  }

  if (v81 == *MEMORY[0x1E69A9790])
  {
LABEL_7:
    v82 = v178;
    v83 = v178[4];
    v190 = v178[3];
    v188 = sub_1C4409678(v178, v190);
    v84 = v180;
    sub_1C4EFCE68();
    v189 = *(v193 + 16);
    v85 = v179;
    v86 = v191;
    (v189)(v179, v79, v191);
    sub_1C43FBD94();
    sub_1C440BAA8(v87, v88, v89, v86);
    v90 = *(v83 + 32);
    type metadata accessor for GraphTriple(0);
    sub_1C44138AC();
    sub_1C4B89858(v91, v92);
    v93 = sub_1C44022DC();
    v190 = v90(v93);
    sub_1C4607CD4(v85, &qword_1EC0BAA00, &unk_1C4F17400);
    v188 = *(v181 + 8);
    (v188)(v84, v192);
    v94 = v82[4];
    v186 = v82[3];
    v185 = sub_1C4409678(v82, v186);
    v95 = v177;
    sub_1C4EFCE68();
    (v189)(v85, v194, v86);
    sub_1C43FBD94();
    sub_1C440BAA8(v96, v97, v98, v86);
    v99 = *(v94 + 32);
    type metadata accessor for EventTriple(0);
    sub_1C4412620();
    sub_1C4B89858(v100, v101);
    v102 = sub_1C44022DC();
    v99(v102);
    v103 = v193;
    sub_1C4607CD4(v85, &qword_1EC0BAA00, &unk_1C4F17400);
    (v188)(v84, v192);
    sub_1C44FE5AC();
    v105 = v104;

    sub_1C4813530();
    v107 = v106;

    v195 = v105;
    sub_1C49D4C1C(v107);
    v108 = v195;
LABEL_11:
    sub_1C4B87460(v108);
LABEL_12:

LABEL_13:
    sub_1C4EFD5B8();
    v125 = *(v103 + 8);
    v126 = sub_1C43FFE24();
    v127(v126);
    sub_1C43FF6AC();
    return v128(v95, v187);
  }

  v152 = *MEMORY[0x1E69A97A8];
  v153 = *MEMORY[0x1E69A97A0];
  v154 = sub_1C4EFCE58();
  sub_1C4432B38();
  sub_1C4B89858(v155, v156);
  v197 = swift_allocError();
  v158 = v157;
  v159 = (v189 + 1);
  v160 = v103 == v152 || v103 == v153;
  v195 = 0;
  v196 = 0xE000000000000000;
  if (v160)
  {
    sub_1C4F02248();

    sub_1C4411294();
    sub_1C43FDEE0();
    sub_1C4B89858(v161, v162);
    v163 = sub_1C440A11C();
    MEMORY[0x1C6940010](v163);

    (*v159)(v152, 0x80000001C4FB3700);
    v164 = v196;
    *v158 = v195;
    v158[1] = v164;
    v165 = *MEMORY[0x1E69A9238];
    sub_1C440A6B8(v154);
    (*(v166 + 104))(v158);
    swift_willThrow();
    (*(v193 + 8))(v194, v191);
    sub_1C43FF6AC();
    return v167(v177, v187);
  }

  else
  {
    sub_1C4F02248();

    sub_1C4411294();
    sub_1C43FDEE0();
    sub_1C4B89858(v168, v169);
    v170 = sub_1C440A11C();
    MEMORY[0x1C6940010](v170);

    v171 = *v159;
    (*v159)(v152, 0x80000001C4FB3700);
    v172 = v196;
    *v158 = v195;
    v158[1] = v172;
    v173 = *MEMORY[0x1E69A9238];
    sub_1C440A6B8(v154);
    (*(v174 + 104))(v158);
    swift_willThrow();
    (*(v193 + 8))(v194, v191);
    sub_1C43FF6AC();
    v175(v177, v187);
    return (v171)(v188, 0x80000001C4FB3700);
  }
}

uint64_t sub_1C4B88EA4(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C4008, &qword_1C4F56EA8);
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBF38();
  v126 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  v127 = v11;
  sub_1C43FBE44();
  v12 = sub_1C4EFF318();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v136 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  v120 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD230();
  v139 = v22;
  sub_1C43FBE44();
  v23 = type metadata accessor for OntologyTriple();
  v24 = sub_1C43FCDF8(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v31 = (v30 - v29);
  v32 = sub_1C4F00F28();
  v33 = *(a1 + 16);
  if (!v33)
  {
    return sub_1C482FCF0(v32);
  }

  v34 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
  v132 = v15;
  v133 = (v15 + 16);
  v128 = v15 + 40;
  v129 = (v15 + 32);
  v130 = *(v26 + 72);
  v131 = (v15 + 8);
  v134 = v23;
  v135 = v12;
  v121 = v7;
  while (1)
  {
    v137 = v34;
    v138 = v33;
    sub_1C4A69CD8(v34, v31);
    v35 = v23[7];
    if (sub_1C4EFED18())
    {
      goto LABEL_13;
    }

    v36 = (v31 + v23[6]);
    v37 = *v36;
    v38 = v36[1];
    v39 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v39 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (!v39)
    {
LABEL_13:
      v74 = *v31;
      v75 = v31[1];
      v76 = v23[5];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFEB68();
      v77 = (v31 + v23[8]);
      v78 = *v77;
      v79 = v77[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v80 = v139;
      sub_1C4EFF308();
      goto LABEL_16;
    }

    v40 = *v31;
    v41 = v31[1];
    v42 = v23[5];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFEB68();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FFE24();
    sub_1C4EFF308();
    v43 = sub_1C4EFF2F8();
    if (!v32[2])
    {
      break;
    }

    v45 = sub_1C445FAA8(v43, v44);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      goto LABEL_15;
    }

    v48 = *(v132 + 72);
    v49 = v32[7] + v48 * v45;
    v50 = v127;
    v51 = v135;
    (*(v132 + 16))(v127, v49, v135);
    sub_1C43FBD94();
    sub_1C440BAA8(v52, v53, v54, v51);
    sub_1C4607CD4(v50, &qword_1EC0C4008, &qword_1C4F56EA8);
    sub_1C4EFF2F8();
    v55 = sub_1C4EFEB68();
    v57 = v56;
    v58 = (v31 + v134[8]);
    v60 = *v58;
    v59 = v58[1];
    v124 = v60;
    v125 = v55;
    v123 = v59;
    swift_isUniquelyReferenced_nonNull_native();
    v140 = v32;
    v61 = sub_1C43FFE24();
    v63 = sub_1C445FAA8(v61, v62);
    sub_1C4433820(v63, v64);
    if (v67)
    {
      goto LABEL_36;
    }

    v68 = v65;
    v69 = v66;
    v122 = v57;
    sub_1C456902C(&qword_1EC0C4010, &unk_1C4F56EB0);
    if (sub_1C4F02458())
    {
      v70 = sub_1C43FFE24();
      v72 = sub_1C445FAA8(v70, v71);
      v57 = v135;
      if ((v69 & 1) != (v73 & 1))
      {
        goto LABEL_38;
      }

      v68 = v72;
    }

    else
    {
      v57 = v135;
    }

    if ((v69 & 1) == 0)
    {
      goto LABEL_37;
    }

    v32 = v140;
    v109 = *v129;
    v110 = v126;
    (*v129)(v126, v140[7] + v68 * v48, v57);
    sub_1C43FBD94();
    sub_1C440BAA8(v111, v112, v113, v57);
    sub_1C4EFF2E8();

    v114 = v121;
    sub_1C4B897E8(v110, v121);
    if (sub_1C44157D4(v114, 1, v57) == 1)
    {
      sub_1C4607CD4(v114, &qword_1EC0C4008, &qword_1C4F56EA8);
      sub_1C4471348(v32[6] + 16 * v68);
      sub_1C4F02478();
    }

    else
    {
      v115 = v120;
      v109(v120, v114, v57);
      v109(v32[7] + v68 * v48, v115, v57);
    }

    v23 = v134;
    v107 = v137;
    v108 = v138;
    (*v131)(v139, v57);
    sub_1C4607CD4(v126, &qword_1EC0C4008, &qword_1C4F56EA8);
LABEL_25:
    sub_1C4A69D3C(v31);
    v34 = v107 + v130;
    v33 = v108 - 1;
    if (!v33)
    {
      return sub_1C482FCF0(v32);
    }
  }

LABEL_15:
  v81 = v127;
  sub_1C43FCF64();
  sub_1C440BAA8(v82, v83, v84, v135);
  sub_1C4607CD4(v81, &qword_1EC0C4008, &qword_1C4F56EA8);
  sub_1C4EFEB68();
  v85 = (v31 + v134[8]);
  v86 = *v85;
  v87 = v85[1];
  v80 = v139;
  sub_1C4EFF2E8();

LABEL_16:
  v88 = sub_1C4EFF2F8();
  v90 = v89;
  v57 = v135;
  (*v133)(v136, v80, v135);
  swift_isUniquelyReferenced_nonNull_native();
  v140 = v32;
  v91 = sub_1C445FAA8(v88, v90);
  sub_1C4433820(v91, v92);
  if (!v67)
  {
    v95 = v93;
    v96 = v94;
    sub_1C456902C(&qword_1EC0C4010, &unk_1C4F56EB0);
    if (sub_1C4F02458())
    {
      v97 = sub_1C445FAA8(v88, v90);
      v23 = v134;
      if ((v96 & 1) != (v98 & 1))
      {
        goto LABEL_38;
      }

      v95 = v97;
      v99 = v132;
      if ((v96 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v99 = v132;
      v23 = v134;
      if ((v96 & 1) == 0)
      {
LABEL_20:
        v32 = v140;
        v140[(v95 >> 6) + 8] |= 1 << v95;
        v100 = (v32[6] + 16 * v95);
        *v100 = v88;
        v100[1] = v90;
        (*(v99 + 32))(v32[7] + *(v99 + 72) * v95, v136, v57);
        v101 = sub_1C43FC908();
        v102(v101);
        v103 = v32[2];
        v67 = __OFADD__(v103, 1);
        v104 = v103 + 1;
        if (v67)
        {
          goto LABEL_35;
        }

        v32[2] = v104;
        goto LABEL_24;
      }
    }

    v32 = v140;
    (*(v99 + 40))(v140[7] + *(v99 + 72) * v95, v136, v57);
    v105 = sub_1C43FC908();
    v106(v105);
LABEL_24:
    v107 = v137;
    v108 = v138;
    goto LABEL_25;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1C43FCF64();
  sub_1C440BAA8(v117, v118, v119, v57);
  __break(1u);
LABEL_38:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C4B896A8()
{
  sub_1C456902C(&qword_1EC0C02B8, &qword_1C4F3E608);
  v0 = sub_1C4EFEFB8();
  sub_1C43FCDF8(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4F0CE60;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x1E69A9798], v0);
  v8(v7 + v4, *MEMORY[0x1E69A9788], v0);

  sub_1C4D526A4();
}

uint64_t sub_1C4B897E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4008, &qword_1C4F56EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B89858(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4B898E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a7;
  v34 = a5;
  v35 = a6;
  v10 = sub_1C4EFB078();
  v11 = sub_1C43FCDF8(v10);
  v32 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = sub_1C4EFB0B8();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB058();
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = v34;
  v40 = v35;
  v23 = v43;
  sub_1C4EFBFC8();
  if (v23)
  {
    return (*(v18 + 8))(v22, v15);
  }

  v35 = a3;
  v43 = v10;
  result = (*(v18 + 8))(v22, v15);
  v25 = *(v33 + 16);
  v34 = v32 + 8;
  for (i = (v33 + 48); v25; --v25)
  {
    v28 = *(i - 1);
    v27 = *i;
    v29 = *(i - 2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB058();
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    sub_1C4EFBFB8();

    sub_1C4423A0C(v41, &qword_1EC0C5040, &qword_1C4F0F950);
    v30 = sub_1C4400F78();
    result = v31(v30);
    i += 3;
  }

  return result;
}

void sub_1C4B89B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v7 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v30 = &v29 - v9;
  v10 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29 - v12;
  v14 = type metadata accessor for ViewDatabaseArtifact.Property();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a5 + 16);
  if (v20)
  {
    v32 = *(v16 + 20);
    v21 = a5 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v22 = *(v17 + 72);
    do
    {
      sub_1C443CCBC(v21, v19);
      v23 = *v19;
      v24 = *(v19 + 1);
      v25 = sub_1C4EFBE38();
      (*(*(v25 - 8) + 16))(v13, &v19[v32], v25);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C469C410(v19);
      sub_1C440BAA8(v13, 0, 1, v25);
      sub_1C4EFB498();

      sub_1C4423A0C(v13, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      v21 += v22;
      --v20;
    }

    while (v20);
  }

  if (*(v31 + 16))
  {
    v26 = *MEMORY[0x1E69A00D0];
    v27 = sub_1C4EFBF38();
    v28 = v30;
    (*(*(v27 - 8) + 104))(v30, v26, v27);
    sub_1C440BAA8(v28, 0, 1, v27);
    sub_1C4EFB478();
    sub_1C4423A0C(v28, &unk_1EC0BCAB0, &unk_1C4F111A0);
  }
}

uint64_t sub_1C4B89E70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C4F919E0 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73657865646E69 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C4B89FD8(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C4020, &qword_1C4F57010);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C443C7AC();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v18) = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v18 = v3[2];
    HIBYTE(v17) = 1;
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C443CB4C(&qword_1EDDDBC60);
    sub_1C44069F0();
    sub_1C4F027E8();
    v18 = v3[3];
    HIBYTE(v17) = 2;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D0B4(&qword_1EDDFA578);
    sub_1C44069F0();
    sub_1C4F027E8();
    v18 = v3[4];
    HIBYTE(v17) = 3;
    sub_1C456902C(&qword_1EC0BB020, &qword_1C4F1DB20);
    sub_1C443D1E4(&unk_1EC0BB030);
    sub_1C44069F0();
    sub_1C4F02778();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C4B8A248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B89E70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B8A270(uint64_t a1)
{
  v2 = sub_1C443C7AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B8A2AC(uint64_t a1)
{
  v2 = sub_1C443C7AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C4B8A300(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    type metadata accessor for ViewDatabaseArtifact.Property();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C4B8A354()
{
  result = qword_1EC0C4028;
  if (!qword_1EC0C4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4028);
  }

  return result;
}

unint64_t sub_1C4B8A3AC()
{
  result = qword_1EDDFFB60;
  if (!qword_1EDDFFB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFFB60);
  }

  return result;
}

unint64_t sub_1C4B8A404()
{
  result = qword_1EDDFED90;
  if (!qword_1EDDFED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFED90);
  }

  return result;
}

uint64_t sub_1C4B8A47C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C4FB3A10 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001C4FB3A30 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C62615466666964 && a2 == 0xEF65674178614D65)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C4B8A5F0(char a1)
{
  result = 0x6D614E656C626174;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x6C62615466666964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B8A690(void *a1)
{
  v4 = v1;
  v6 = sub_1C456902C(&qword_1EC0C4050, &qword_1C4F57348);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402A68();
  v12 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B8CF18();
  sub_1C4F02BF8();
  v13 = *v4;
  v14 = v4[1];
  sub_1C4409190();
  if (!v2)
  {
    v15 = v4[2];
    v16 = v4[3];
    sub_1C4409190();
    v17 = v4[4];
    v18 = v4[5];
    sub_1C4409190();
    v19 = v4[6];
    sub_1C4F027B8();
  }

  return (*(v8 + 8))(v3, v6);
}

void sub_1C4B8A808()
{
  sub_1C4414F80();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C4048, &qword_1C4F57340);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4B8CF18();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    sub_1C43FF6BC();
    v10 = sub_1C4F02678();
    v23 = v11;
    sub_1C43FF6BC();
    v12 = sub_1C4F02678();
    v22 = v13;
    v20 = v12;
    v19 = sub_1C4F02678();
    v21 = v14;
    sub_1C43FF6BC();
    sub_1C4F02698();
    v16 = v15;
    v17 = sub_1C43FD158();
    v18(v17);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v2);

    *v4 = v10;
    v4[1] = v23;
    v4[2] = v20;
    v4[3] = v22;
    v4[4] = v19;
    v4[5] = v21;
    v4[6] = v16;
  }

  sub_1C44053B0();
}

uint64_t sub_1C4B8AAAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4FB39F0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6954656E757270 && a2 == 0xEE00706D61747365)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4B8AB84(char a1)
{
  if (a1)
  {
    return 0x6D6954656E757270;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C4B8ABCC(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C4040, &qword_1C4F57338);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402A68();
  v10 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B8CEC4();
  sub_1C4F02BF8();
  sub_1C43FBF44();
  sub_1C4F027B8();
  if (!v1)
  {
    sub_1C43FBF44();
    sub_1C4F027B8();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_1C4B8AD18()
{
  sub_1C4414F80();
  v15 = v1;
  v16 = v2;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C4038, &qword_1C4F57330);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14[-v11];
  v13 = v4[4];
  sub_1C4409678(v4, v4[3]);
  sub_1C4B8CEC4();
  sub_1C4F02BC8();
  if (!v0)
  {
    v14[15] = 0;
    sub_1C4F02698();
    v14[14] = 1;
    sub_1C4F02698();
    (*(v7 + 8))(v12, v5);
  }

  sub_1C440962C(v4);
  sub_1C44053B0();
}

uint64_t sub_1C4B8AEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B8A47C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B8AEE0(uint64_t a1)
{
  v2 = sub_1C4B8CF18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B8AF1C(uint64_t a1)
{
  v2 = sub_1C4B8CF18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4B8AF58@<D0>(uint64_t a1@<X8>)
{
  sub_1C4B8A808();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_1C4B8AFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B8AAAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B8AFF0(uint64_t a1)
{
  v2 = sub_1C4B8CEC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B8B02C(uint64_t a1)
{
  v2 = sub_1C4B8CEC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4B8B068(void *a1@<X8>)
{
  sub_1C4B8AD18();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_1C4B8B094(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1C4B8ABCC(a1);
}

uint64_t sub_1C4B8B0BC()
{
  if (*(v0 + 120))
  {
    v3 = *(v0 + 120);
  }

  else
  {
    sub_1C442D468();
    sub_1C4F02248();
    sub_1C43FDEF8();
    MEMORY[0x1C6940010]();
    sub_1C442E5BC();
    sub_1C4412638();
    sub_1C4406178();
    MEMORY[0x1C6940010](v2[4], v2[5]);
    sub_1C4412638();
    sub_1C4406178();
    MEMORY[0x1C6940010](v2[6], v2[7]);
    sub_1C43FDEF8();
    MEMORY[0x1C6940010]();
    sub_1C44138C4();
    sub_1C4409174();
    if (v1)
    {
      return sub_1C440246C();
    }

    v5 = v2[15];
    v2[15] = &v6;
  }

  return sub_1C440246C();
}

uint64_t sub_1C4B8B1C0()
{
  if (*(v0 + 128))
  {
    v3 = *(v0 + 128);
  }

  else
  {
    sub_1C442D468();
    sub_1C4F02248();

    strcpy(v6, "DELETE FROM ");
    v6[7] = -4864;
    sub_1C442E5BC();
    MEMORY[0x1C6940010](34, 0xE100000000000000);
    sub_1C44138C4();
    sub_1C4409174();
    if (v1)
    {
      return sub_1C440246C();
    }

    v5 = *(v2 + 128);
    *(v2 + 128) = v6;
  }

  return sub_1C440246C();
}

uint64_t sub_1C4B8B288()
{
  if (*(v0 + 136))
  {
    v3 = *(v0 + 136);
  }

  else
  {
    sub_1C442D468();
    sub_1C4F02248();
    sub_1C43FDEF8();
    MEMORY[0x1C6940010]();
    sub_1C442E5BC();
    sub_1C4412638();
    sub_1C441EF8C();
    MEMORY[0x1C6940010](v2[6], v2[7]);
    sub_1C44301C0();
    sub_1C44138C4();
    sub_1C4409174();
    if (v1)
    {
      return sub_1C440246C();
    }

    v5 = v2[17];
    v2[17] = &v6;
  }

  return sub_1C440246C();
}

uint64_t sub_1C4B8B35C()
{
  if (*(v0 + 144))
  {
    v3 = *(v0 + 144);
  }

  else
  {
    sub_1C442D468();
    sub_1C4F02248();
    sub_1C43FDEF8();
    MEMORY[0x1C6940010]();
    v4 = v2[6];
    v5 = v2[7];
    MEMORY[0x1C6940010](v4, v5);
    sub_1C4412638();
    sub_1C441EF8C();
    sub_1C442E5BC();
    sub_1C4412638();
    sub_1C441EF8C();
    MEMORY[0x1C6940010](v4, v5);
    sub_1C44301C0();
    sub_1C44138C4();
    sub_1C4409174();
    if (v1)
    {
      return sub_1C440246C();
    }

    v7 = v2[18];
    v2[18] = &v8;
  }

  return sub_1C440246C();
}

void sub_1C4B8B458()
{
  sub_1C4414F80();
  v66 = v2;
  v67 = v3;
  v4 = v1;
  v5 = v0;
  v7 = v6;
  v62 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v60[1] = *v0;
  v61 = v15;
  v16 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  v60[0] = v60 - v20;
  v21 = sub_1C4EF9CD8();
  v22 = sub_1C43FCDF8(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v29 = v28 - v27;
  *(v5 + 17) = 0u;
  *(v5 + 15) = 0u;
  v30 = *(v14 + 16);
  *(v5 + 1) = *v14;
  *(v5 + 2) = v30;
  *(v5 + 3) = *(v14 + 32);
  v5[8] = *(v14 + 48);
  v5[14] = v7;
  *(v5 + 104) = 0;

  sub_1C4B8CE5C(v14, v65);
  sub_1C4EF9C88();
  sub_1C4EF9AD8();
  v32 = v31;
  (*(v24 + 8))(v29, v21);
  *(v5 + 12) = v32;
  if (v10)
  {
    v33 = 0.0 - v32;
    if (v33 != INFINITY)
    {
      *&v33 += (*&v33 >> 63) | 1;
    }

    if (v62)
    {
      v65[0] = 0;
      v65[1] = 0xE000000000000000;
      sub_1C4F02248();

      v65[0] = 0xD000000000000018;
      v65[1] = 0x80000001C4FB3960;
      v34 = *(v14 + 32);
      v35 = *(v14 + 40);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v34, v35);

      sub_1C43FE984();
      sub_1C441EF8C();
      v36 = *v14;
      v37 = *(v14 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v36, v37);

      MEMORY[0x1C6940010](34, 0xE100000000000000);
      sub_1C4EFBE98();
      if (v4)
      {

        sub_1C4B8CE94(v14);

        v50 = v5[3];
        v51 = v5[5];
        v52 = v5[7];

        v53 = v5[14];

        v54 = v5[15];

        v55 = v5[16];

        v56 = v5[17];

        v57 = v5[18];

        swift_deallocPartialClassInstance();
        goto LABEL_19;
      }

      sub_1C4EFB768();
      v45 = v60[0];
      sub_1C43FCF64();
      sub_1C440BAA8(v46, v47, v48, v49);
      memset(v65, 0, 40);
      sub_1C4EFB9A8();

      sub_1C4423A0C(v65, &unk_1EC0BC770, &qword_1C4F10DC0);
      sub_1C4423A0C(v45, &unk_1EC0C06C0, &unk_1C4F10DB0);
      if (v64)
      {
        v59 = sub_1C4400F8C(*(v5 + 12));
        if (!v43 && !v58)
        {
          v59 = sub_1C4407CDC(v59);
        }

        v40 = -v59;
      }

      else
      {
        v40 = v63;
      }
    }

    else
    {

      v40 = -v33;
    }

    v39 = *(v5 + 12);
    *(v5 + 9) = v39;
    *(v5 + 10) = v40;
  }

  else
  {

    v38 = v61;
    v5[9] = v12;
    v5[10] = v38;
    v39 = *(v5 + 12);
  }

  sub_1C4B8CE94(v14);
  v42 = sub_1C4400F8C(*(v5 + 9));
  if (!v43 && !v41)
  {
    v42 = sub_1C4407CDC(v42);
  }

  v44 = -v42;
  if (v39 - *(v14 + 48) <= v44)
  {
    v44 = v39 - *(v14 + 48);
  }

  if (v44 <= *(v5 + 10))
  {
    v44 = *(v5 + 10);
  }

  *(v5 + 11) = v44;
LABEL_19:
  sub_1C44053B0();
}

uint64_t sub_1C4B8B8EC()
{
  v2 = sub_1C4EFB768();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v12 = sub_1C43FBD18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  sub_1C43FC91C();
  result = sub_1C4B8B1C0();
  if (!v1)
  {
    sub_1C43FCF64();
    sub_1C440BAA8(v21, v22, v23, v2);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v19, &unk_1EC0C06C0, &unk_1C4F10DB0);

    v25 = sub_1C4400F8C(*(v0 + 96));
    if (!v26 && !v24)
    {
      v25 = sub_1C4407CDC(v25);
    }

    *(v0 + 88) = -v25;
    sub_1C43FBF44();
    sub_1C4B8B0BC();
    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v27 = sub_1C4404370();
    *(v27 + 16) = xmmword_1C4F0CE60;
    *(v27 + 32) = 0u;
    *(v27 + 48) = 0u;
    *(v27 + 64) = 0;
    v28 = *(v0 + 88);
    v29 = MEMORY[0x1E69A0168];
    *(v27 + 96) = MEMORY[0x1E69E63B0];
    *(v27 + 104) = v29;
    *(v27 + 72) = v28;
    sub_1C4EFB728();
    sub_1C4EFC088();

    (*(v5 + 8))(v10, v2);
    sub_1C43FBF44();
    sub_1C4B8B0BC();
    sub_1C43FCF64();
    sub_1C440BAA8(v30, v31, v32, v2);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v16, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

void sub_1C4B8BB5C()
{
  sub_1C4414F80();
  v54 = v2;
  v55 = v3;
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = sub_1C4EFB768();
  v17 = sub_1C43FCDF8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  if (*(v0 + 104))
  {
    sub_1C44178D8();
    sub_1C4B8B0BC();
    if (v1)
    {
      goto LABEL_9;
    }

    v53 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v25 = sub_1C4404370();
    v26 = *(v0 + 96);
    v48 = (v0 + 96);
    *(v25 + 16) = xmmword_1C4F0CE60;
    *(v25 + 32) = 0u;
    *(v25 + 48) = 0u;
    *(v25 + 64) = 0;
    v27 = v26 + 0.0;
    if (v26 != INFINITY)
    {
      v27 = sub_1C4407CDC(v27);
    }

    v28 = MEMORY[0x1E69A0168];
    *(v25 + 96) = MEMORY[0x1E69E63B0];
    *(v25 + 104) = v28;
    *(v25 + 72) = v27;
    sub_1C4EFB728();
    sub_1C4EFC088();

    (*(v19 + 8))(v24, v16);
    sub_1C44178D8();
    sub_1C4B8B0BC();
    sub_1C43FCF64();
    sub_1C440BAA8(v29, v30, v31, v16);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v15, &unk_1EC0C06C0, &unk_1C4F10DB0);

    sub_1C44178D8();
    sub_1C4B8B35C();
    v32 = swift_allocObject();
    v47 = xmmword_1C4F0D130;
    *(v32 + 16) = xmmword_1C4F0D130;
    v33 = (v0 + 88);
    v34 = *(v0 + 88);
    *(v32 + 56) = MEMORY[0x1E69E63B0];
    *(v32 + 64) = MEMORY[0x1E69A0168];
    *(v32 + 32) = v34;
    sub_1C4EFB728();
    sub_1C43FBD94();
    sub_1C440BAA8(v35, v36, v37, v16);
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    sub_1C4EFB9A8();

    sub_1C4423A0C(v49, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v12, &unk_1EC0C06C0, &unk_1C4F10DB0);
    if ((v52 & 1) == 0)
    {
      v41 = v51;
      if (v51 <= *(v0 + 80))
      {
        v41 = *(v0 + 80);
      }

      *(v0 + 88) = v41;
      sub_1C44178D8();
      sub_1C4B8B288();
      v42 = swift_allocObject();
      *(v42 + 16) = v47;
      v43 = *v33;
      *(v42 + 56) = MEMORY[0x1E69E63B0];
      *(v42 + 64) = MEMORY[0x1E69A0168];
      *(v42 + 32) = v43;
      sub_1C4EFB728();
      sub_1C43FBD94();
      sub_1C440BAA8(v44, v45, v46, v16);
      sub_1C4EFC0A8();
      sub_1C4423A0C(v9, &unk_1EC0C06C0, &unk_1C4F10DB0);
    }

    v38 = v48;
  }

  else
  {
    v38 = (v0 + 72);
    v33 = (v0 + 80);
  }

  v39 = *v33;
  v40 = *v38;
LABEL_9:
  sub_1C44053B0();
}

uint64_t sub_1C4B8BF6C(uint64_t a1, uint64_t a2)
{
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4402A68();
  sub_1C43FC91C();
  result = sub_1C4B8B0BC();
  if (!v3)
  {
    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v12 = sub_1C4404370();
    *(v12 + 16) = xmmword_1C4F0CE60;
    v13 = MEMORY[0x1E69A0138];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = v13;
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    v14 = *(v2 + 96);
    v15 = MEMORY[0x1E69A0168];
    *(v12 + 96) = MEMORY[0x1E69E63B0];
    *(v12 + 104) = v15;
    *(v12 + 72) = v14;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB728();
    sub_1C4EFB768();
    sub_1C43FBD94();
    sub_1C440BAA8(v16, v17, v18, v19);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v4, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

void sub_1C4B8C0BC()
{
  sub_1C4414F80();
  v42 = v3;
  v43 = v4;
  v6 = v5;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4402A68();
  v11 = sub_1C4EFB768();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  sub_1C43FC91C();
  sub_1C4B8B0BC();
  if (!v1)
  {
    v41 = v0;
    v20 = v6[3];
    v34[0] = v6[4];
    v21 = sub_1C4409678(v6, v20);
    v34[1] = v34;
    *&v35 = v14;
    v22 = *(*(v20 - 8) + 64);
    MEMORY[0x1EEE9AC00](v21);
    sub_1C43FBCC4();
    (*(v25 + 16))(v24 - v23);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1C4422F90(v38);
    sub_1C4F01478();
    v26 = (v35 + 8);
    v35 = xmmword_1C4F0CE60;
    while (1)
    {
      sub_1C4418280(v38, AssociatedTypeWitness);
      sub_1C4F01FA8();
      v27 = v37;
      if (!v37)
      {
        break;
      }

      v28 = v36;
      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v29 = sub_1C4404370();
      *(v29 + 16) = v35;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = MEMORY[0x1E69A0138];
      *(v29 + 32) = v28;
      *(v29 + 40) = v27;
      v30 = *(v41 + 96);
      *(v29 + 96) = MEMORY[0x1E69E63B0];
      *(v29 + 104) = MEMORY[0x1E69A0168];
      *(v29 + 72) = v30;
      sub_1C4EFB728();
      sub_1C4EFC088();
      (*v26)(v19, v11);
      sub_1C43FCF64();
      sub_1C440BAA8(v31, v32, v33, v11);
      sub_1C4EFC0A8();
      sub_1C4423A0C(v2, &unk_1EC0C06C0, &unk_1C4F10DB0);
    }

    sub_1C440962C(v38);
  }

  sub_1C44053B0();
}

uint64_t sub_1C4B8C3E4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  sub_1C43FC91C();
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000024, 0x80000001C4FB38C0);
  MEMORY[0x1C6940010](v4[2], v4[3]);
  sub_1C43FE984();
  sub_1C4406178();
  MEMORY[0x1C6940010](v4[4], v4[5]);
  sub_1C43FE984();
  sub_1C4406178();
  MEMORY[0x1C6940010](v4[6], v4[7]);
  MEMORY[0x1C6940010](0xD000000000000043, 0x80000001C4FB3980);
  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](0x29202020200ALL, 0xE600000000000000);
  v13 = v2[14];
  sub_1C4EFBE98();

  if (!v3)
  {
    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C4F0D130;
    v16 = v4[12];
    v17 = MEMORY[0x1E69A0168];
    *(v15 + 56) = MEMORY[0x1E69E63B0];
    *(v15 + 64) = v17;
    *(v15 + 32) = v16;
    sub_1C4EFB728();
    sub_1C4EFB768();
    sub_1C43FBD94();
    sub_1C440BAA8(v18, v19, v20, v21);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v12, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

void *sub_1C4B8C5E8()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];

  v4 = v0[14];

  v5 = v0[15];

  v6 = v0[16];

  v7 = v0[17];

  v8 = v0[18];

  return v0;
}

uint64_t sub_1C4B8C658()
{
  sub_1C4B8C5E8();

  return swift_deallocClassInstance();
}

unint64_t sub_1C4B8C6D8()
{
  result = qword_1EDDFC190;
  if (!qword_1EDDFC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC190);
  }

  return result;
}

unint64_t sub_1C4B8C734()
{
  result = qword_1EDDEB990;
  if (!qword_1EDDEB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEB990);
  }

  return result;
}

unint64_t sub_1C4B8C788(void *a1)
{
  a1[1] = sub_1C4B8C7C0();
  a1[2] = sub_1C4B8C814();
  result = sub_1C4B8C868();
  a1[3] = result;
  return result;
}

unint64_t sub_1C4B8C7C0()
{
  result = qword_1EDDFE138;
  if (!qword_1EDDFE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE138);
  }

  return result;
}

unint64_t sub_1C4B8C814()
{
  result = qword_1EDDFC1A0;
  if (!qword_1EDDFC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC1A0);
  }

  return result;
}

unint64_t sub_1C4B8C868()
{
  result = qword_1EDDFC198;
  if (!qword_1EDDFC198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC198);
  }

  return result;
}

void sub_1C4B8C8BC()
{
  sub_1C4414F80();
  v31 = v1;
  v32 = v2;
  v4 = v3;
  v5 = sub_1C4EFB078();
  v6 = sub_1C43FCDF8(v5);
  v30 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v26 = v11 - v10;
  v12 = sub_1C4EFB0B8();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = *v4;
  v22 = v4[1];
  sub_1C4EFB058();
  sub_1C4EFBFC8();
  (*(v15 + 8))(v20, v12);
  if (!v0)
  {
    sub_1C4F02248();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v27[0] = v21;
    v27[1] = v22;
    sub_1C43FE984();
    MEMORY[0x1C6940010](0xD000000000000016);
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    v23 = swift_allocObject();
    v24 = *(v4 + 2);
    v28 = *(v4 + 1);
    v25 = v28;
    v29 = v24;
    v23[1] = xmmword_1C4F0CE60;
    v23[2] = v24;
    v23[3] = v25;
    sub_1C448DB48(&v29, v27);
    sub_1C448DB48(&v28, v27);
    sub_1C4EFB058();
    memset(v27, 0, 40);
    sub_1C4EFBFB8();

    sub_1C4423A0C(v27, &qword_1EC0C5040, &qword_1C4F0F950);
    (*(v30 + 8))(v26, v5);
  }

  sub_1C44053B0();
}

uint64_t sub_1C4B8CB78(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = a2[2];
  v12 = a2[3];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBDA8();
  v13 = sub_1C4EFBE38();
  sub_1C440BAA8(v10, 0, 1, v13);
  sub_1C4EFB498();

  sub_1C4423A0C(v10, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v15 = a2[4];
  v14 = a2[5];
  sub_1C4EFBDE8();
  sub_1C440BAA8(v10, 0, 1, v13);
  sub_1C4EFB498();

  sub_1C4423A0C(v10, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C4F0D130;
  *(v16 + 32) = v11;
  *(v16 + 40) = v12;
  v17 = *MEMORY[0x1E69A00D0];
  v18 = sub_1C4EFBF38();
  (*(*(v18 - 8) + 104))(v6, v17, v18);
  sub_1C440BAA8(v6, 0, 1, v18);
  sub_1C4EFB478();

  return sub_1C4423A0C(v6, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4B8CDC8(uint64_t a1, uint64_t a2)
{
  result = sub_1C4EF9538();
  if (!result || (result = sub_1C4EF9568(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C4EF9558();
      return sub_1C4EF9A08();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C4B8CEC4()
{
  result = qword_1EDDF8F00;
  if (!qword_1EDDF8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F00);
  }

  return result;
}

unint64_t sub_1C4B8CF18()
{
  result = qword_1EDDFC1B8;
  if (!qword_1EDDFC1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC1B8);
  }

  return result;
}

_BYTE *_s18UpdatedObjectStateV6ConfigV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s18UpdatedObjectStateV8BookmarkV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B8D128()
{
  result = qword_1EC0C4058;
  if (!qword_1EC0C4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4058);
  }

  return result;
}

unint64_t sub_1C4B8D180()
{
  result = qword_1EC0C4060;
  if (!qword_1EC0C4060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4060);
  }

  return result;
}

unint64_t sub_1C4B8D1D8()
{
  result = qword_1EDDFC1A8;
  if (!qword_1EDDFC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC1A8);
  }

  return result;
}

unint64_t sub_1C4B8D230()
{
  result = qword_1EDDFC1B0;
  if (!qword_1EDDFC1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC1B0);
  }

  return result;
}

unint64_t sub_1C4B8D288()
{
  result = qword_1EDDF8EF0;
  if (!qword_1EDDF8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8EF0);
  }

  return result;
}

unint64_t sub_1C4B8D2E0()
{
  result = qword_1EDDF8EF8;
  if (!qword_1EDDF8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8EF8);
  }

  return result;
}

double sub_1C4B8D3C8()
{
  sub_1C447F304();
  v2 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C4403200(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FF6CC();
  if (!v8)
  {
    swift_once();
  }

  sub_1C442B738(v0, v1);
  sub_1C44138E4();
  v9 = sub_1C440FCB0(v4);
  v10(v9);
  sub_1C4EFD698();
  v11 = sub_1C443F394();
  v12(v11);
  return v14;
}

uint64_t static NSUserDefaults.isESDataCollectionDaily.getter()
{
  v1 = sub_1C456902C(&qword_1EC0C40C8, &qword_1C4F57588);
  sub_1C4403200(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  if (qword_1EDDDBA20 != -1)
  {
    sub_1C4412648();
  }

  sub_1C442B738(v0, qword_1EDDDBA28);
  swift_beginAccess();
  v9 = sub_1C440FCB0(v3);
  v10(v9);
  sub_1C4EFD698();
  (*(v3 + 8))(v8, v0);
  return v12[7];
}

uint64_t static NSUserDefaults.isESDataCollectionDaily.setter()
{
  if (qword_1EDDDBA20 != -1)
  {
    sub_1C4412648();
  }

  v0 = sub_1C456902C(&qword_1EC0C40C8, &qword_1C4F57588);
  sub_1C442B738(v0, qword_1EDDDBA28);
  sub_1C4403138();
  sub_1C4EFD6A8();
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.isDeltaUpdateEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDDBA40 != -1)
  {
    sub_1C43FC928();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDDBA48);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8D904()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDDBA48);
  sub_1C442B738(v0, qword_1EDDDBA48);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$isDeltaUpdateEnabled.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDDBA40 != -1)
  {
    v4 = sub_1C43FC928();
  }

  sub_1C442D480(v4, qword_1EDDDBA48);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.viewGenerationGraphUpdateBatchSize.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFA4B8 != -1)
  {
    sub_1C443FFC8();
  }

  v3 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4420464(v3, qword_1EDDFA4C0);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8DB7C()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C44F9918(v0, qword_1EDDFA4C0);
  sub_1C442B738(v0, qword_1EDDFA4C0);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$viewGenerationGraphUpdateBatchSize.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDFA4B8 != -1)
  {
    v4 = sub_1C443FFC8();
  }

  sub_1C442D480(v4, qword_1EDDFA4C0);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.viewGenerationSubjectIdBatchSize.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFA4E0 != -1)
  {
    sub_1C4416458();
  }

  v3 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4420464(v3, qword_1EDDFA4E8);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8DDF4()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C44F9918(v0, qword_1EDDFA4E8);
  sub_1C442B738(v0, qword_1EDDFA4E8);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$viewGenerationSubjectIdBatchSize.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDFA4E0 != -1)
  {
    v4 = sub_1C4416458();
  }

  sub_1C442D480(v4, qword_1EDDFA4E8);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.viewGenerationMaxAttempts.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDF04D8 != -1)
  {
    sub_1C4425464();
  }

  v3 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4420464(v3, qword_1EDDF04E0);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8E06C()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C44F9918(v0, qword_1EDDF04E0);
  sub_1C442B738(v0, qword_1EDDF04E0);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$viewGenerationMaxAttempts.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDF04D8 != -1)
  {
    v4 = sub_1C4425464();
  }

  sub_1C442D480(v4, qword_1EDDF04E0);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t sub_1C4B8E228()
{
  sub_1C447F304();
  v2 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4403200(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FF6CC();
  if (!v8)
  {
    swift_once();
  }

  sub_1C442B738(v0, v1);
  sub_1C44138E4();
  v9 = sub_1C440FCB0(v4);
  v10(v9);
  sub_1C4EFD698();
  v11 = sub_1C443F394();
  v12(v11);
  return v14;
}

uint64_t (*static NSUserDefaults.viewGenerationMaxRemoteDevices.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFA500 != -1)
  {
    sub_1C441E710();
  }

  v3 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4420464(v3, qword_1EDDFA508);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8E3DC()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C44F9918(v0, qword_1EDDFA508);
  sub_1C442B738(v0, qword_1EDDFA508);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$viewGenerationMaxRemoteDevices.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDFA500 != -1)
  {
    v4 = sub_1C441E710();
  }

  sub_1C442D480(v4, qword_1EDDFA508);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.sqlite3ReducedCacheSpillSize.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDF04B8 != -1)
  {
    sub_1C4450030();
  }

  v3 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4420464(v3, qword_1EDDF04C0);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8E630()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C44F9918(v0, qword_1EDDF04C0);
  sub_1C442B738(v0, qword_1EDDF04C0);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$sqlite3ReducedCacheSpillSize.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDF04B8 != -1)
  {
    v4 = sub_1C4450030();
  }

  sub_1C442D480(v4, qword_1EDDF04C0);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.sqlite3MediumCacheSpillSize.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFE9E0 != -1)
  {
    sub_1C441061C();
  }

  v3 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4420464(v3, qword_1EDDFE9E8);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8E884()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C44F9918(v0, qword_1EDDFE9E8);
  sub_1C442B738(v0, qword_1EDDFE9E8);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$sqlite3MediumCacheSpillSize.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDFE9E0 != -1)
  {
    v4 = sub_1C441061C();
  }

  sub_1C442D480(v4, qword_1EDDFE9E8);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.quDatabaseLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EC0B7168 != -1)
  {
    sub_1C44053C4();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EC0C4068);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8EAFC()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EC0C4068);
  sub_1C442B738(v0, qword_1EC0C4068);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$quDatabaseLoggingEnabled.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EC0B7168 != -1)
  {
    v4 = sub_1C44053C4();
  }

  sub_1C442D480(v4, qword_1EC0C4068);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.graphDatabaseLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFEA00 != -1)
  {
    sub_1C4404740();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDFEA08);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8ED4C()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDFEA08);
  sub_1C442B738(v0, qword_1EDDFEA08);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$graphDatabaseLoggingEnabled.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDFEA00 != -1)
  {
    v4 = sub_1C4404740();
  }

  sub_1C442D480(v4, qword_1EDDFEA08);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.globalKnowledgeDatabaseLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFE908 != -1)
  {
    sub_1C441EFA4();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDFE910);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8EF9C()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDFE910);
  sub_1C442B738(v0, qword_1EDDFE910);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$globalKnowledgeDatabaseLoggingEnabled.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDFE908 != -1)
  {
    v4 = sub_1C441EFA4();
  }

  sub_1C442D480(v4, qword_1EDDFE910);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.keyValueDatabaseLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFE970 != -1)
  {
    sub_1C442BF9C();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDFE978);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t static NSUserDefaults.$keyValueDatabaseLoggingEnabled.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDFE970 != -1)
  {
    v4 = sub_1C442BF9C();
  }

  sub_1C442D480(v4, qword_1EDDFE978);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.ontologyDatabaseLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFE948 != -1)
  {
    sub_1C44301E4();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDFE950);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8F394()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDFE950);
  sub_1C442B738(v0, qword_1EDDFE950);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$ontologyDatabaseLoggingEnabled.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDFE948 != -1)
  {
    v4 = sub_1C44301E4();
  }

  sub_1C442D480(v4, qword_1EDDFE950);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.stateDatabaseLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFE9C0 != -1)
  {
    sub_1C44112BC();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDFE9C8);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t static NSUserDefaults.$stateDatabaseLoggingEnabled.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDFE9C0 != -1)
  {
    v4 = sub_1C44112BC();
  }

  sub_1C442D480(v4, qword_1EDDFE9C8);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.eventLogDatabaseLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFE998 != -1)
  {
    sub_1C4426E84();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDFE9A0);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8F78C()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDFE9A0);
  sub_1C442B738(v0, qword_1EDDFE9A0);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$eventLogDatabaseLoggingEnabled.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDFE998 != -1)
  {
    v4 = sub_1C4426E84();
  }

  sub_1C442D480(v4, qword_1EDDFE9A0);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.viewDatabaseLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFEA20 != -1)
  {
    sub_1C443546C();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDFEA28);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8FA00()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDFEA28);
  sub_1C442B738(v0, qword_1EDDFEA28);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$viewDatabaseLoggingEnabled.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDFEA20 != -1)
  {
    v4 = sub_1C443546C();
  }

  sub_1C442D480(v4, qword_1EDDFEA28);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.viewDatabaseArtifactLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFE928 != -1)
  {
    sub_1C440D920();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDFE930);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8FC74()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDFE930);
  sub_1C442B738(v0, qword_1EDDFE930);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$viewDatabaseArtifactLoggingEnabled.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDFE928 != -1)
  {
    v4 = sub_1C440D920();
  }

  sub_1C442D480(v4, qword_1EDDFE930);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.testTelemetry.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDF0520 != -1)
  {
    sub_1C44260C0();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDF0528);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t static NSUserDefaults.$testTelemetry.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDF0520 != -1)
  {
    v4 = sub_1C44260C0();
  }

  sub_1C442D480(v4, qword_1EDDF0528);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t sub_1C4B90000(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v4 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C442B738(v4, a3);
  sub_1C4403138();
  sub_1C4EFD6A8();
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.maxSubjectIdSetSize.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDDBA68 != -1)
  {
    sub_1C4406190();
  }

  v3 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4420464(v3, qword_1EDDDBA70);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B9012C()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C44F9918(v0, qword_1EDDDBA70);
  sub_1C442B738(v0, qword_1EDDDBA70);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$maxSubjectIdSetSize.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDDBA68 != -1)
  {
    v4 = sub_1C4406190();
  }

  sub_1C442D480(v4, qword_1EDDDBA70);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.isGraphStoreManuallyOverridden.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDF0490 != -1)
  {
    sub_1C442E5D4();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDF0498);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B9035C()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDF0498);
  sub_1C442B738(v0, qword_1EDDF0498);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$isGraphStoreManuallyOverridden.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDF0490 != -1)
  {
    v4 = sub_1C442E5D4();
  }

  sub_1C442D480(v4, qword_1EDDF0498);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.mockLifeEvents.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDF04F8 != -1)
  {
    sub_1C441CDEC();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDF0500);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B905D8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v3, a2);
  sub_1C442B738(v3, a2);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$mockLifeEvents.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDF04F8 != -1)
  {
    v4 = sub_1C441CDEC();
  }

  sub_1C442D480(v4, qword_1EDDF0500);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.mockLifeEventSignals.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EC0B7170 != -1)
  {
    sub_1C440A13C();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EC0C4080);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B90840()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EC0C4080);
  sub_1C442B738(v0, qword_1EC0C4080);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$mockLifeEventSignals.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EC0B7170 != -1)
  {
    v4 = sub_1C440A13C();
  }

  sub_1C442D480(v4, qword_1EC0C4080);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.enableERHistoricalFeatureGeneration.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDDB9D8 != -1)
  {
    sub_1C4414F94();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDDB9E0);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B90AB4()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDDB9E0);
  sub_1C442B738(v0, qword_1EDDDB9E0);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$enableERHistoricalFeatureGeneration.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDDB9D8 != -1)
  {
    v4 = sub_1C4414F94();
  }

  sub_1C442D480(v4, qword_1EDDDB9E0);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.isESDataCollectionDaily.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDDBA20 != -1)
  {
    sub_1C4412648();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C8, &qword_1C4F57588);
  sub_1C4420464(v3, qword_1EDDDBA28);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B90CE4()
{
  v0 = sub_1C456902C(&qword_1EC0C40C8, &qword_1C4F57588);
  sub_1C44F9918(v0, qword_1EDDDBA28);
  sub_1C442B738(v0, qword_1EDDDBA28);
  sub_1C44F920C();
  sub_1C4F01D18();
  sub_1C456902C(&qword_1EC0BD398, &unk_1C4F2DB60);
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$isESDataCollectionDaily.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C8, &qword_1C4F57588);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDDBA20 != -1)
  {
    v4 = sub_1C4412648();
  }

  sub_1C442D480(v4, qword_1EDDDBA28);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.isDeviceToBeSampledForESDataCollection.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDDB9B8 != -1)
  {
    sub_1C441BD04();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDDB9C0);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B90F28()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDDB9C0);
  sub_1C442B738(v0, qword_1EDDDB9C0);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$isDeviceToBeSampledForESDataCollection.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDDB9B8 != -1)
  {
    v4 = sub_1C441BD04();
  }

  sub_1C442D480(v4, qword_1EDDDB9C0);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.autonamingMessagesProcessingDelay.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDDBA00 != -1)
  {
    sub_1C440BFA0();
  }

  v3 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C4420464(v3, qword_1EDDDBA08);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B9117C()
{
  v0 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C44F9918(v0, qword_1EDDDBA08);
  sub_1C442B738(v0, qword_1EDDDBA08);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$autonamingMessagesProcessingDelay.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDDBA00 != -1)
  {
    v4 = sub_1C440BFA0();
  }

  sub_1C442D480(v4, qword_1EDDDBA08);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t (*static NSUserDefaults.autonamingMessagesPhotosProcessingProgress.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDDB998 != -1)
  {
    sub_1C4415CC8();
  }

  v3 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C4420464(v3, qword_1EDDDB9A0);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B913D8()
{
  v0 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C44F9918(v0, qword_1EDDDB9A0);
  sub_1C442B738(v0, qword_1EDDDB9A0);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$autonamingMessagesPhotosProcessingProgress.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDDB998 != -1)
  {
    v4 = sub_1C4415CC8();
  }

  sub_1C442D480(v4, qword_1EDDDB9A0);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t sub_1C4B915A0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C442B738(v3, a2);
  sub_1C4403138();
  sub_1C4EFD6A8();
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.autonamingMessagesContextMessagesTimeInterval.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDDBA90 != -1)
  {
    sub_1C441C524();
  }

  v3 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C4420464(v3, qword_1EDDDBA98);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B916CC;
}

uint64_t sub_1C4B916D0()
{
  v0 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C44F9918(v0, qword_1EDDDBA98);
  sub_1C442B738(v0, qword_1EDDDBA98);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$autonamingMessagesContextMessagesTimeInterval.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDDBA90 != -1)
  {
    v4 = sub_1C441C524();
  }

  sub_1C442D480(v4, qword_1EDDDBA98);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t sub_1C4B918B4(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v4 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C442B738(v4, a3);
  sub_1C4403138();
  sub_1C4EFD6A8();
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.mockDataActionSources.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EC0B7178 != -1)
  {
    sub_1C4433858();
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EC0C4098);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

void sub_1C4B919E4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  swift_endAccess();

  free(v1);
}

uint64_t sub_1C4B91A38()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EC0C4098);
  sub_1C442B738(v0, qword_1EC0C4098);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$mockDataActionSources.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EC0B7178 != -1)
  {
    v4 = sub_1C4433858();
  }

  sub_1C442D480(v4, qword_1EC0C4098);
  v5 = sub_1C4407CF4();
  v6(v5);
  sub_1C43FDF04();
  v7 = sub_1C440B448();
  return v8(v7);
}

uint64_t sub_1C4B91BEC(int a1)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x80000001C4F9AED0;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C4B91CAC(int a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_1C4B91BEC(a1);
  if (a3)
  {
    v11 = sub_1C45FB538();
    if (v11)
    {
      v12 = v11;
      v13 = sub_1C4EF9CD8();
      sub_1C440BAA8(v9, 1, 1, v13);
      sub_1C4886564(a2, a3, v9);
      v15 = v14;
      sub_1C45942C8(v12);
      sub_1C4420C3C(v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (v15)
      {
        sub_1C4577DBC();
        if (sub_1C4594E18())
        {
          swift_isUniquelyReferenced_nonNull_native();
          v24 = v10;
          sub_1C4660314();
          return v24;
        }

        else
        {
          v16 = sub_1C445FAA8(0xD000000000000017, 0x80000001C4F9B190);
          if (v17)
          {
            v18 = v16;
            swift_isUniquelyReferenced_nonNull_native();
            v24 = v10;
            v19 = *(v10 + 24);
            sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
            sub_1C4F02458();
            v10 = v24;
            v20 = *(*(v24 + 48) + 16 * v18 + 8);

            v21 = *(*(v10 + 56) + 8 * v18);
            sub_1C4F02478();
          }
        }
      }
    }
  }

  return v10;
}

uint64_t sub_1C4B91ED4@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v12);
  (*(v13 + 32))(a6, a1);
  result = type metadata accessor for UserFocusComputedModeEvent();
  *(a6 + *(result + 20)) = a2;
  v15 = a6 + *(result + 24);
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5;
  return result;
}

uint64_t sub_1C4B91F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4B91FAC(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_1C456902C(&qword_1EC0BF9A0, &qword_1C4F3B520);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  v15 = [BiomeLibrary() UserFocus];
  swift_unknownObjectRelease();
  v16 = [v15 ComputedMode];
  swift_unknownObjectRelease();
  sub_1C4674D1C();

  if (!v2)
  {
    sub_1C445FFF0(v14, v11, &qword_1EC0BF9A0, &qword_1C4F3B520);
    sub_1C445FFF0(a1, v7, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v17 = *(v1 + 16);
    sub_1C493A250();
    sub_1C4420C3C(v14, &qword_1EC0BF9A0, &qword_1C4F3B520);
  }
}

uint64_t type metadata accessor for UserFocusComputedModeEvent()
{
  result = qword_1EDDE0D40;
  if (!qword_1EDDE0D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B921FC()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4B92290()
{
  result = qword_1EC0C40D0;
  if (!qword_1EC0C40D0)
  {
    sub_1C4572308(&qword_1EC0BF9B0, &qword_1C4F3B530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C40D0);
  }

  return result;
}

void sub_1C4B92310(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BF9B0, &qword_1C4F3B530);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v9 - v7;
  sub_1C4B91FAC(a1);
  if (!v2)
  {
    sub_1C4B923E4(v8, a2);
  }
}

uint64_t sub_1C4B923E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF9B0, &qword_1C4F3B530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4B92454()
{
  result = qword_1EDDDC468;
  if (!qword_1EDDDC468)
  {
    sub_1C4572308(&qword_1EC0C40D8, &unk_1C4F57690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC468);
  }

  return result;
}

uint64_t sub_1C4B924B8(uint64_t result)
{
  if ((result - 1) < 0xA)
  {
    return result;
  }

  v1 = result;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CE8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1C43F8000, v3, v4, "Unknown BMUserFocusModeComputedSemanticType - %d", v5, 8u);
    MEMORY[0x1C6942830](v5, -1, -1);
  }

  return 0;
}

uint64_t sub_1C4B925AC(uint64_t a1, const char *a2)
{
  v2 = a1;
  if (a1 >= 4)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDDFECB8);
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CE8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_1C43F8000, v5, v6, a2, v7, 8u);
      MEMORY[0x1C6942830](v7, -1, -1);
    }

    return 0;
  }

  return v2;
}

uint64_t sub_1C4B9269C(char a1)
{
  v3 = [BiomeLibrary() UserFocus];
  swift_unknownObjectRelease();
  v4 = [v3 ComputedMode];
  swift_unknownObjectRelease();
  *(v1 + 24) = v4;
  *(v1 + 16) = a1;
  return v1;
}

void sub_1C4B92790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C44CD9C0();
  v22 = 0;
  sub_1C4413900();
  sub_1C4412668();
  sub_1C440B458();
  sub_1C43FDF20();
  do
  {
    v35 = 0xED00006E6F736165;
    v36 = 0x725F657461647075;
    switch(byte_1F43D2B28[v22 + 32])
    {
      case 1:
        v36 = v32;
        v35 = v31;
        break;
      case 2:
        v36 = v34;
        v35 = v33;
        break;
      case 3:
        v36 = 0xD000000000000018;
        v35 = 0x80000001C4FB3E80;
        break;
      default:
        break;
    }

    v39 = v23;
    v37 = *(v23 + 16);
    if (v37 >= *(v23 + 24) >> 1)
    {
      sub_1C44CD9C0();
      sub_1C43FDF20();
      sub_1C440B458();
      sub_1C4412668();
      sub_1C4413900();
      v23 = v39;
    }

    ++v22;
    *(v23 + 16) = v37 + 1;
    v38 = v23 + 16 * v37;
    *(v38 + 32) = v36;
    *(v38 + 40) = v35;
  }

  while (v22 != 4);

  sub_1C4499940(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4B92908(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4B92960(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4B92960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &aBlock - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = *(a1 + 24);
  v15 = sub_1C4EF9CD8();
  sub_1C440BAA8(v12, 1, 1, v15);
  (*(*(v15 - 8) + 16))(v9, a2, v15);
  sub_1C440BAA8(v9, 0, 1, v15);
  v16 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v17 = sub_1C457A86C(v12, v9, 1, 1, 0);
  v18 = [v14 publisherWithOptions_];

  v31 = sub_1C4AFB170;
  v32 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1C45AF9C8;
  v30 = &unk_1F43FF628;
  v19 = _Block_copy(&aBlock);
  v20 = [v18 filterWithIsIncluded_];
  _Block_release(v19);
  v31 = nullsub_1;
  v32 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1C44405F8;
  v30 = &unk_1F43FF650;
  v21 = _Block_copy(&aBlock);
  v31 = sub_1C4B93AF0;
  v32 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1C4440590;
  v30 = &unk_1F43FF678;
  v22 = _Block_copy(&aBlock);

  v23 = [v20 sinkWithCompletion:v21 receiveInput:v22];

  _Block_release(v22);
  _Block_release(v21);

  swift_beginAccess();
  v24 = *(v13 + 16);
  *a3 = v24;
  v25 = v24;
}

void sub_1C4B92CC0(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Exception: Unable to parse eventBody from latest event in UserFocusComputedMode stream", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }
  }
}

uint64_t sub_1C4B92DF8(uint64_t a1)
{
  sub_1C4432B6C();
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  strcpy((inited + 32), "update_reason");
  *(inited + 46) = -4864;
  v4 = objc_opt_self();
  *(inited + 48) = [v4 featureValueWithInt64_];
  strcpy((inited + 56), "update_source");
  *(inited + 70) = -4864;
  *(inited + 72) = [v4 featureValueWithInt64_];
  *(inited + 80) = v1;
  *(inited + 88) = 0xED0000657079745FLL;
  *(inited + 96) = [v4 featureValueWithInt64_];
  *(inited + 104) = 0xD000000000000018;
  *(inited + 112) = 0x80000001C4FB3E80;
  sub_1C4577DBC();
  *(inited + 120) = sub_1C4594E18();
  v5 = sub_1C4F00F28();
  v6 = sub_1C4B92908(a1);
  if (v6)
  {
    v7 = v6;

    sub_1C4B93A8C(v7);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_1C4F0D480;
    strcpy((v8 + 32), "update_reason");
    *(v8 + 46) = -4864;
    v9 = sub_1C4B925AC([v7 updateReason], "Unknown BMUserFocusModeComputedUpdateReason - %d");
    *(v8 + 48) = sub_1C4400FA4(v9);
    strcpy((v8 + 56), "update_source");
    *(v8 + 70) = -4864;
    v10 = sub_1C4B925AC([v7 updateSource], "Unknown BMUserFocusModeComputedUpdateSource - %d");
    *(v8 + 72) = sub_1C4400FA4(v10);
    strcpy((v8 + 80), "semantic_type");
    *(v8 + 94) = -4864;
    v11 = sub_1C4B924B8([v7 semanticType]);
    *(v8 + 96) = sub_1C4400FA4(v11);
    *(v8 + 104) = 0xD000000000000018;
    *(v8 + 112) = 0x80000001C4FB3E80;
    *(v8 + 120) = sub_1C4594E18();
    v5 = sub_1C4F00F28();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CF8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C43F8000, v13, v14, "Unable to fetch last UserFocusComputedModeEvent", v15, 2u);
      MEMORY[0x1C6942830](v15, -1, -1);
    }
  }

  return v5;
}

void sub_1C4B931D0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v40 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v40);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = type metadata accessor for FeatureProviderSnapshot(0);
  v16 = sub_1C43FCDF8(v15);
  v38 = v17;
  v39 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = *(a2 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v35 = a3;
    v43 = MEMORY[0x1E69E7CC0];
    v42 = v22;
    sub_1C459D0A8();
    v25 = v42;
    v24 = v43;
    v27 = *(v9 + 16);
    v26 = v9 + 16;
    v28 = a2 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v36 = *(v26 + 56);
    v37 = v27;
    do
    {
      v37(v14, v28, v40);
      v37(v25, v14, v40);
      v29 = sub_1C4B92DF8(v14);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = v4;
      v31 = sub_1C4B938C8(v29, a1);

      sub_1C465CF34(v31);
      v33 = v32;
      v25 = v42;

      (*(v26 - 8))(v14, v40);
      *(v42 + *(v39 + 20)) = v33;
      v34 = *(v43 + 16);
      if (v34 >= *(v43 + 24) >> 1)
      {
        sub_1C459D0A8();
        v25 = v42;
      }

      *(v43 + 16) = v34 + 1;
      sub_1C4586A54(v25, v43 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34);
      v28 += v36;
      --v23;
      v4 = v30;
    }

    while (v23);
    a3 = v35;
  }

  *a3 = v24;
}

uint64_t sub_1C4B93484()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9C88();
  v9 = sub_1C4B92DF8(v8);
  (*(v3 + 8))(v8, v0);
  return v9;
}

uint64_t sub_1C4B93540(uint64_t a1, uint64_t a2)
{
  v4 = 0xED00006E6F736165;
  v5 = sub_1C4EF9CD8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  sub_1C4EF9C88();
  sub_1C4B92DF8(v13);
  (*(v8 + 8))(v13, v5);
  v14 = a1 == 0x725F657461647075 && a2 == 0xED00006E6F736165;
  if (v14 || (sub_1C4F02938() & 1) != 0)
  {
    v15 = 0x725F657461647075;
  }

  else
  {
    sub_1C4432B6C();
    v16 = a1 == 0xED00006E6F736165 && a2 == 0xED0000657079745FLL;
    if (v16 || (sub_1C4420498() & 1) != 0 || ((v4 = 0x735F657461647075, a1 == 0x735F657461647075) ? (v17 = a2 == 0xED0000656372756FLL) : (v17 = 0), v17 || (sub_1C4420498() & 1) != 0))
    {
      v15 = v4;
    }

    else
    {
      v20 = a1 == 0xD000000000000018 && 0x80000001C4FB3E80 == a2;
      if (!v20 && (sub_1C4420498() & 1) == 0)
      {
        v18 = 0;
        goto LABEL_19;
      }

      v15 = 0xD000000000000018;
    }
  }

  v18 = sub_1C44F9274(v15);
LABEL_19:

  return v18;
}

unint64_t sub_1C4B9384C(uint64_t a1)
{
  result = sub_1C4B93874();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4B93874()
{
  result = qword_1EC0C40E0;
  if (!qword_1EC0C40E0)
  {
    type metadata accessor for UserFocusComputedModeSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C40E0);
  }

  return result;
}

void *sub_1C4B938C8(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v13, v7, v4, a2);
      MEMORY[0x1C6942830](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1C4B93A8C(void *a1)
{
  v1 = [a1 semanticModeIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4B93B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = *(sub_1C4EF9D38() - 8), v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), result = sub_1C4B93D68(a2), !v2))
  {
    v8 = type metadata accessor for FutureLifeEventStructs.Place(0);
    return sub_1C440D320(v8);
  }

  return result;
}

uint64_t sub_1C4B93BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v19 - v7;
  v9 = sub_1C4EF9D38();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) < 2uLL)
  {
    goto LABEL_4;
  }

  sub_1C4A3E16C(a1, v8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    sub_1C4631FFC(v8);
LABEL_4:
    v17 = type metadata accessor for FutureLifeEventStructs.Place(0);
    return sub_1C440D320(v17);
  }

  (*(v12 + 32))(v16, v8, v9);
  sub_1C4B93D68(a2);
  if (!v2)
  {
    (*(v12 + 8))(v16, v9);
    goto LABEL_4;
  }

  return (*(v12 + 8))(v16, v9);
}

uint64_t sub_1C4B93D68@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v37 = type metadata accessor for FutureLifeEventStructs.Place(0);
  v1 = sub_1C43FBCE0(v37);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType(0);
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - v15;
  v17 = sub_1C4EFEEF8();
  sub_1C440BAA8(v16, 1, 1, v17);
  v18 = &v16[v6[5]];
  sub_1C4EFD258();
  v19 = v6[6];
  if (qword_1EDDFED40 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Source();
  v21 = sub_1C442B738(v20, qword_1EDDFD2A8);
  sub_1C448D0E0(v21, &v16[v19], type metadata accessor for Source);
  v22 = &v16[v6[7]];
  sub_1C4EFE558();
  v23 = v6[9];
  v24 = &v16[v6[8]];
  sub_1C4EFE658();
  v25 = v6[10];
  *v24 = sub_1C4EF9CF8();
  v24[1] = v26;
  *&v16[v25] = xmmword_1C4F55890;
  sub_1C448D0E0(v16, v14, type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C458C7D4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v28 = v27;
  v30 = *(v27 + 16);
  v29 = *(v27 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1C458C7D4(v29 > 1, v30 + 1, 1, v27);
    v28 = v36;
  }

  *(v28 + 16) = v30 + 1;
  sub_1C4B94124(v14, v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v30, type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType);
  if (qword_1EDDE9258 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v31, qword_1EDE2CF48);
  String.base64EncodedSHA(withPrefix:)();

  v32 = v39;
  sub_1C4DA9F58();
  if (v32)
  {
  }

  else
  {
    v33 = *(v37 + 32);
    v34 = *&v5[v33];

    *&v5[v33] = v28;
    sub_1C4DAF124();
    sub_1C4B94124(v5, v38, type metadata accessor for FutureLifeEventStructs.Place);
  }

  return sub_1C4B940C8(v16);
}

uint64_t sub_1C4B940C8(uint64_t a1)
{
  v2 = type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4B94124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1C4B94184(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_1C4B9AF40(a1, a2);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v6 = v4;
  v45 = MEMORY[0x1E69E7CC0];
  result = sub_1C459D3B0(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v5 = v45;
    v9 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = v3 & 0xFFFFFFFFFFFFLL;
    }

    v39 = 4 << v9;
    v12 = 15;
    v40 = v6;
    v41 = v3;
    v42 = v11;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v12 & 0xC;
      v15 = (v12 & 1) == 0 || v14 == v10;
      v16 = v15;
      if (v15)
      {
        result = v12;
        if (v14 == v10)
        {
          v36 = v16;
          result = sub_1C4B9AAA8(v12, v3, a2);
          v16 = v36;
          v11 = v42;
        }

        v17 = result >> 16;
        if (result >> 16 >= v11)
        {
          goto LABEL_59;
        }

        if ((result & 1) == 0)
        {
          v18 = v16;
          result = sub_1C4B9AE34(result, v3, a2);
          v16 = v18;
          v11 = v42;
          v17 = result >> 16;
        }
      }

      else
      {
        v17 = v12 >> 16;
        result = v12;
        if (v12 >> 16 >= v11)
        {
          goto LABEL_60;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v22 = v16;
        result = sub_1C4F02238();
        v16 = v22;
        v11 = v42;
        v21 = result;
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v43 = v3;
        v44 = a2 & 0xFFFFFFFFFFFFFFLL;
        v19 = &v43 + v17;
        v23 = *(&v43 + v17);
        v21 = *(&v43 + v17);
        if (v23 < 0)
        {
          switch(__clz(v21 ^ 0xFF))
          {
            case 0x1Au:
LABEL_33:
              v21 = v19[1] & 0x3F | ((v21 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_34:
              v24 = v19[1];
              v25 = v19[2];
              v26 = ((v21 & 0xF) << 12) | ((v24 & 0x3F) << 6);
              goto LABEL_36;
            case 0x1Cu:
LABEL_35:
              v27 = v19[1];
              v28 = v19[2];
              v25 = v19[3];
              v26 = ((v21 & 0xF) << 18) | ((v27 & 0x3F) << 12) | ((v28 & 0x3F) << 6);
LABEL_36:
              v21 = v26 & 0xFFFFFFC0 | v25 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v3 & 0x1000000000000000) == 0)
        {
          v37 = v16;
          result = sub_1C4F022F8();
          v16 = v37;
          v11 = v42;
        }

        v19 = (result + v17);
        v20 = *(result + v17);
        v21 = *(result + v17);
        if (v20 < 0)
        {
          switch(__clz(v21 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_33;
            case 0x1Bu:
              goto LABEL_34;
            case 0x1Cu:
              goto LABEL_35;
            default:
              break;
          }
        }
      }

      v45 = v5;
      v30 = *(v5 + 16);
      v29 = *(v5 + 24);
      if (v30 >= v29 >> 1)
      {
        v38 = v16;
        result = sub_1C459D3B0((v29 > 1), v30 + 1, 1);
        v16 = v38;
        v11 = v42;
        v5 = v45;
      }

      *(v5 + 16) = v30 + 1;
      *(v5 + 4 * v30 + 32) = v21;
      if (v16)
      {
        v10 = v39;
        v31 = v40;
        v3 = v41;
        if (v14 == v39)
        {
          result = sub_1C4B9AAA8(v12, v41, a2);
          v11 = v42;
          v12 = result;
        }

        if (v11 <= v12 >> 16)
        {
          goto LABEL_61;
        }

        if ((v12 & 1) == 0)
        {
          result = sub_1C4B9AE34(v12, v41, a2);
          v11 = v42;
          v12 = v12 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v31 = v40;
        v3 = v41;
        v10 = v39;
        if (v11 <= v12 >> 16)
        {
          goto LABEL_62;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1C4F01228();
        v11 = v42;
        v12 = result;
      }

      else
      {
        v32 = v12 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v43 = v3;
          v44 = a2 & 0xFFFFFFFFFFFFFFLL;
          v33 = *(&v43 + v32);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v3 & 0x1000000000000000) == 0)
          {
            result = sub_1C4F022F8();
            v11 = v42;
          }

          v33 = *(result + v32);
        }

        v34 = v33;
        v35 = __clz(v33 ^ 0xFF) - 24;
        if (v34 >= 0)
        {
          LOBYTE(v35) = 1;
        }

        v12 = ((v32 + v35) << 16) | 5;
      }

      ++v8;
      if (v13 == v31)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4B94580(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v4 = v5;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_9:
      result = sub_1C4B9AC0C(result, v4);
      break;
    case 3uLL:
      result = 0;
      v2 = 0;
      goto LABEL_5;
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1C4B9AB04(result, v2);
      break;
  }

  return result;
}

uint64_t sub_1C4B9460C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EFBE38();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v52 = v51 - v16;
  v17 = type metadata accessor for ViewDatabaseArtifact.Property();
  v18 = sub_1C43FCDF8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v57 = (v24 - v23);
  sub_1C4F02B78();
  v25 = (*(a3 + 32))(a2, a3);
  v26 = *(v25 + 16);
  if (v26)
  {
    v53 = v14;
    v56 = *(v17 + 20);
    v27 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v51[1] = v25;
    v28 = v25 + v27;
    v55 = *(v20 + 72);
    v54 = (v9 + 16);
    v29 = (v9 + 8);
    v30 = v52;
    while (1)
    {
      v59 = v26;
      v31 = a1;
      v32 = v57;
      sub_1C4B9B230(v28, v57, type metadata accessor for ViewDatabaseArtifact.Property);
      v33 = *(v32 + 1);
      v58 = *v32;
      (*v54)(v30, &v32[v56], v6);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C443CDD0(v32, type metadata accessor for ViewDatabaseArtifact.Property);
      sub_1C4EFBDD8();
      sub_1C4B9AA60(&qword_1EDDF0040, MEMORY[0x1E69A0080]);
      v34 = sub_1C44091B8();
      v35 = *v29;
      v36 = sub_1C4402B58();
      v35(v36);
      if (v34)
      {
        v37 = sub_1C440E740();
        v35(v37);
        a1 = v31;
        if (*(v31 + 16))
        {
          sub_1C4425484();
          sub_1C441BD24();
          v38 = v59;
          if ((v31 & 1) == 0)
          {
            goto LABEL_34;
          }

          sub_1C441E730();
          sub_1C444B334();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_34;
          }

          sub_1C4F01298();
          goto LABEL_31;
        }

        goto LABEL_19;
      }

      sub_1C4EFBE08();
      v39 = sub_1C44091B8();
      v40 = sub_1C4402B58();
      v35(v40);
      if (v39)
      {
        break;
      }

      sub_1C4EFBDF8();
      v43 = sub_1C44091B8();
      v44 = sub_1C4402B58();
      v35(v44);
      if (v43)
      {
        v45 = sub_1C440E740();
        v35(v45);
        a1 = v31;
        if (*(v31 + 16))
        {
          sub_1C4425484();
          sub_1C441BD24();
          v38 = v59;
          if ((v31 & 1) == 0)
          {
            goto LABEL_34;
          }

          sub_1C441E730();
          sub_1C444B334();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

LABEL_19:

        v38 = v59;
        goto LABEL_34;
      }

      sub_1C4EFBDE8();
      v46 = sub_1C44091B8();
      v47 = sub_1C4402B58();
      v35(v47);
      v48 = sub_1C440E740();
      v35(v48);
      a1 = v31;
      if (v46)
      {
        v38 = v59;
        if (!*(v31 + 16))
        {
          goto LABEL_31;
        }

        sub_1C4425484();
        sub_1C441BD24();
        if ((v31 & 1) == 0)
        {
          goto LABEL_34;
        }

        sub_1C441E730();
        sub_1C444B334();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_34;
        }

        v49 = v60;
        if (v60 == 0.0)
        {
          v49 = 0.0;
        }

        v42 = v49;
LABEL_13:
        MEMORY[0x1C6941830](*&v42);
        goto LABEL_34;
      }

      v38 = v59;
      if (!*(v31 + 16))
      {

LABEL_33:
        sub_1C4F02B18();
        goto LABEL_34;
      }

      sub_1C4425484();
      sub_1C441BD24();
      if ((v31 & 1) == 0)
      {
        goto LABEL_33;
      }

      sub_1C441E730();
      sub_1C444B334();
      if (swift_dynamicCast())
      {
        sub_1C4F02B18();
        sub_1C4F01298();
        v30 = v52;
LABEL_31:
      }

LABEL_34:
      v28 += v55;
      v26 = v38 - 1;
      if (!v26)
      {
        goto LABEL_35;
      }
    }

    v41 = sub_1C440E740();
    v35(v41);
    a1 = v31;
    if (!*(v31 + 16))
    {
      goto LABEL_19;
    }

    sub_1C4425484();
    sub_1C441BD24();
    v38 = v59;
    if ((v31 & 1) == 0)
    {
      goto LABEL_34;
    }

    sub_1C441E730();
    sub_1C444B334();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_34;
    }

    v42 = v60;
    goto LABEL_13;
  }

LABEL_35:

  return sub_1C4F02B58();
}

uint64_t sub_1C4B94B7C()
{
  v16[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = sub_1C4F00EC8();
  v16[0] = 0;
  v2 = [v0 dataWithJSONObject:v1 options:0 error:v16];

  v3 = v16[0];
  if (v2)
  {
    sub_1C4EF9A68();
  }

  else
  {
    v4 = v3;
    v5 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C43FCEE8(v6, qword_1EDE2DF70);
    v7 = v5;
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CD8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = sub_1C43FD084();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v5;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1C43F8000, v8, v9, "Row data cannot be encoded, using nil payload: %@", v10, 0xCu);
      sub_1C4420C3C(v11, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return sub_1C43FBC98();
}

uint64_t sub_1C4B94DA4()
{
  sub_1C43FBCD4();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v5 = sub_1C4EFC358();
  v1[24] = v5;
  sub_1C43FCF7C(v5);
  v1[25] = v6;
  v8 = *(v7 + 64);
  v1[26] = sub_1C43FE604();
  v1[27] = swift_task_alloc();
  v9 = sub_1C4EFC338();
  v1[28] = v9;
  sub_1C43FCF7C(v9);
  v1[29] = v10;
  v12 = *(v11 + 64);
  v1[30] = sub_1C43FE604();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v13 = sub_1C4EFC328();
  v1[33] = v13;
  sub_1C43FCF7C(v13);
  v1[34] = v14;
  v16 = *(v15 + 64) + 15;
  v1[35] = swift_task_alloc();
  v17 = sub_1C4EFC308();
  v1[36] = v17;
  sub_1C43FCF7C(v17);
  v1[37] = v18;
  v20 = *(v19 + 64);
  v1[38] = sub_1C43FE604();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v21 = type metadata accessor for ViewDatabaseArtifact.Property();
  sub_1C43FCF7C(v21);
  v1[41] = v22;
  v24 = *(v23 + 64);
  v1[42] = sub_1C43FE604();
  v1[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B94FD0, 0, 0);
}

uint64_t sub_1C4B94FD0()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  *(v0 + 352) = v2;
  if (v2)
  {
    v3 = *(v0 + 176);
    v4 = v3[4];
    *(v0 + 360) = v4;
    *(v0 + 368) = (v3 + 4) & 0xFFFFFFFFFFFFLL | 0xAA3C000000000000;
    *(v0 + 376) = v3[5];
    *(v0 + 384) = (v3 + 5) & 0xFFFFFFFFFFFFLL | 0xDEF3000000000000;
    *(v0 + 392) = v3[7];
    *(v0 + 400) = (v3 + 7) & 0xFFFFFFFFFFFFLL | 0x2AFC000000000000;
    v5 = MEMORY[0x1E69DF5B8];
    *(v0 + 480) = *MEMORY[0x1E69DF5E0];
    *(v0 + 484) = *v5;
    *(v0 + 488) = *MEMORY[0x1E69DF5D8];
    v6 = MEMORY[0x1E69E7CC0];
    *(v0 + 492) = *MEMORY[0x1E69DF5C8];
    *(v0 + 408) = 0;
    *(v0 + 416) = v6;
    v7 = *(v0 + 184);
    v8 = *(v1 + 32);
    *(v0 + 424) = v8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = sub_1C44057DC();
    v10 = *(v4(v9) + 16);

    if (v10 == 1)
    {
      v12 = *(v0 + 360);
      v11 = *(v0 + 368);
      v13 = sub_1C4433E08();
      if (*(v14(v13) + 16))
      {
        sub_1C440D940();

        sub_1C4430204();
        if (*(v8 + 16) && (v15 = sub_1C445FAA8(**(v0 + 344), *(*(v0 + 344) + 8)), (v16 & 1) != 0))
        {
          sub_1C4450808(v15);
          sub_1C4400FD4();
          sub_1C443CDD0(v8, v17);
          if (swift_dynamicCast())
          {
            v18 = *(v0 + 152);
LABEL_14:
            *(v0 + 432) = v18;
            v37 = *(v0 + 376);
            v36 = *(v0 + 384);
            v38 = sub_1C4433E08();
            if (v39(v38))
            {
              v40 = sub_1C4B94B7C();
            }

            else
            {
              v40 = 0;
              v41 = 0xF000000000000000;
            }

            sub_1C446C080(v40, v41);
            v48 = (v42 + *v42);
            v44 = *(v43 + 4);
            v45 = swift_task_alloc();
            *(v0 + 456) = v45;
            *v45 = v0;
            v46 = sub_1C43FF6E4(v45);

            return v48(v46);
          }
        }

        else
        {
          v32 = *(v0 + 344);
          sub_1C4400FD4();
          sub_1C443CDD0(v33, v34);
        }
      }

      else
      {
      }
    }

    v35 = *(v0 + 184);
    v18 = sub_1C4B9460C(v8, *(v0 + 168), *(v0 + 176));
    goto LABEL_14;
  }

  v20 = *(v0 + 336);
  v19 = *(v0 + 344);
  v22 = *(v0 + 312);
  v21 = *(v0 + 320);
  v23 = *(v0 + 304);
  v24 = *(v0 + 280);
  v26 = *(v0 + 248);
  v25 = *(v0 + 256);
  v27 = *(v0 + 240);
  v28 = *(v0 + 216);
  v47 = *(v0 + 208);

  sub_1C43FBCF0();
  v30 = MEMORY[0x1E69E7CC0];

  return v29(v30);
}

uint64_t sub_1C4B95304()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 456);
  *v4 = *v1;
  v3[58] = v7;
  v3[59] = v0;

  if (v0)
  {
    v9 = v3[52];
    v8 = v3[53];

    v10 = sub_1C4B95FD8;
  }

  else
  {
    v10 = sub_1C4B9541C;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1C4B9541C()
{
  v1 = *(v0 + 464);
  if (!v1)
  {
LABEL_37:
    v105 = *(v0 + 424);
    sub_1C441DFEC(*(v0 + 440), *(v0 + 448));
LABEL_41:

LABEL_42:
    v31 = *(v0 + 416);
    goto LABEL_43;
  }

  v2 = *(v0 + 424);
  v3 = sub_1C4433E08();
  v5 = (*(v4 + 8))(v3);
  v185 = v2;
  if (!*(v2 + 16))
  {
    v106 = *(v0 + 424);
    sub_1C441DFEC(*(v0 + 440), *(v0 + 448));

LABEL_40:

    goto LABEL_41;
  }

  v7 = *(v0 + 424);
  v8 = sub_1C445FAA8(v5, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    v107 = *(v0 + 424);
    sub_1C441DFEC(*(v0 + 440), *(v0 + 448));
    goto LABEL_40;
  }

  v181 = *(v0 + 424);
  sub_1C442B870(*(v181 + 56) + 32 * v8, v0 + 16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v141 = *(v0 + 440);
    v140 = *(v0 + 448);
    v142 = *(v0 + 424);

    sub_1C441DFEC(v141, v140);
    goto LABEL_42;
  }

  v178 = v1;
  v190 = *(v0 + 480);
  v193 = *(v0 + 288);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  v14 = *(v0 + 176);
  v13 = *(v0 + 184);
  v15 = *(v0 + 168);
  v16 = *(v0 + 128);
  sub_1C456902C(&qword_1EC0C4138, &qword_1C4F57A18);
  v17 = (sub_1C456902C(&qword_1EC0C4140, &qword_1C4F57A20) - 8);
  v18 = *(*v17 + 72);
  v19 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C4F0D130;
  v21 = v20 + v19;
  v22 = v17[14];
  v23 = *(v14 + 16);
  v24 = sub_1C44057DC();
  v25(v24);
  v26 = *(v12 + 104);
  *(v21 + v22) = v16;
  v184 = v26;
  v26((v21 + v22), v190, v11);
  sub_1C4B9AA60(&qword_1EDDF0010, MEMORY[0x1E69DF568]);
  v194 = sub_1C4F00F28();
  v27 = *(v14 + 48);
  v28 = sub_1C44057DC();
  v30 = v29(v28);
  if (!v30)
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  v183 = *(v30 + 16);
  if (!v183)
  {
LABEL_63:
    v157 = *(v0 + 440);
    v156 = *(v0 + 448);
    v159 = *(v0 + 424);
    v158 = *(v0 + 432);
    v160 = *(v0 + 416);
    v161 = *(v0 + 208);
    v162 = *(v0 + 216);
    v164 = *(v0 + 192);
    v163 = *(v0 + 200);

    sub_1C456902C(&qword_1EC0B8A88, &unk_1C4F0EDB0);
    v165 = swift_allocObject();
    *(v165 + 16) = xmmword_1C4F0D130;
    *(v165 + 32) = v178;
    sub_1C4431E64(v157, v156);
    sub_1C4EFC348();
    (*(v163 + 16))(v161, v162, v164);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v0 + 416);
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_64:
      v168 = *(v31 + 16);
      v167 = *(v31 + 24);
      if (v168 >= v167 >> 1)
      {
        sub_1C458BF50(v167 > 1, v168 + 1, 1, v31);
        v31 = v177;
      }

      v170 = *(v0 + 208);
      v169 = *(v0 + 216);
      v171 = *(v0 + 192);
      v172 = *(v0 + 200);
      sub_1C441DFEC(*(v0 + 440), *(v0 + 448));
      (*(v172 + 8))(v169, v171);
      *(v31 + 16) = v168 + 1;
      (*(v172 + 32))(v31 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v168, v170, v171);
LABEL_43:
      v108 = *(v0 + 408) + 1;
      if (v108 == *(v0 + 352))
      {
        v110 = *(v0 + 336);
        v109 = *(v0 + 344);
        v112 = *(v0 + 312);
        v111 = *(v0 + 320);
        v113 = *(v0 + 304);
        v114 = *(v0 + 280);
        v116 = *(v0 + 248);
        v115 = *(v0 + 256);
        v117 = *(v0 + 240);
        v118 = *(v0 + 216);
        v192 = *(v0 + 208);

        sub_1C43FBCF0();
        sub_1C441AF18();

        __asm { BRAA            X2, X16 }
      }

      *(v0 + 408) = v108;
      *(v0 + 416) = v31;
      v122 = *(v0 + 360);
      v121 = *(v0 + 368);
      v124 = *(v0 + 176);
      v123 = *(v0 + 184);
      v125 = *(v0 + 168);
      v126 = *(*(v0 + 160) + 8 * v108 + 32);
      *(v0 + 424) = v126;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v127 = sub_1C44057DC();
      v128 = *(v122(v127) + 16);

      if (v128 == 1)
      {
        v130 = *(v0 + 360);
        v129 = *(v0 + 368);
        v131 = sub_1C4433E08();
        if (*(v132(v131) + 16))
        {
          sub_1C440D940();

          sub_1C4430204();
          if (*(v126 + 16) && (v133 = sub_1C445FAA8(**(v0 + 344), *(*(v0 + 344) + 8)), (v134 & 1) != 0))
          {
            sub_1C4450808(v133);
            sub_1C4400FD4();
            sub_1C443CDD0(v126, v135);
            if (swift_dynamicCast())
            {
              v136 = *(v0 + 152);
              goto LABEL_57;
            }
          }

          else
          {
            v137 = *(v0 + 344);
            sub_1C4400FD4();
            sub_1C443CDD0(v138, v139);
          }
        }

        else
        {
        }
      }

      v143 = *(v0 + 184);
      v136 = sub_1C4B9460C(v126, *(v0 + 168), *(v0 + 176));
LABEL_57:
      *(v0 + 432) = v136;
      v145 = *(v0 + 376);
      v144 = *(v0 + 384);
      v146 = sub_1C4433E08();
      if (v147(v146))
      {
        v148 = sub_1C4B94B7C();
      }

      else
      {
        v148 = 0;
        v149 = 0xF000000000000000;
      }

      sub_1C446C080(v148, v149);
      v195 = v150 + *v150;
      v152 = *(v151 + 4);
      v153 = swift_task_alloc();
      *(v0 + 456) = v153;
      *v153 = v0;
      sub_1C43FF6E4();
      sub_1C441AF18();

      __asm { BRAA            X4, X3 }
    }

LABEL_74:
    sub_1C458BF50(0, *(v31 + 16) + 1, 1, v31);
    v31 = v176;
    goto LABEL_64;
  }

  v31 = 0;
  v32 = (v30 + 40);
  v182 = v30;
  while (1)
  {
    if (v31 >= *(v30 + 16))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v33 = *(v0 + 484);
    v34 = *(v0 + 320);
    v35 = *(v0 + 272);
    v36 = *(v0 + 280);
    v37 = *(v0 + 264);
    v39 = *(v32 - 1);
    v38 = *v32;
    v189 = v32;
    *v36 = 0;
    v36[1] = 0;
    (*(v35 + 104))(v36, v33, v37);
    swift_bridgeObjectRetain_n();
    sub_1C4EFC2F8();
    v191 = v31;
    if (!*(v185 + 16))
    {
      goto LABEL_22;
    }

    v40 = *(v0 + 424);
    v41 = sub_1C445FAA8(v39, v38);
    v43 = v42;

    if (v43)
    {
      sub_1C442B870(*(v181 + 56) + 32 * v41, v0 + 48);
      if (swift_dynamicCast())
      {
        v44 = *(v0 + 112);
        v45 = *(v0 + 120);
        v46 = HIBYTE(v45) & 0xF;
        if ((v45 & 0x2000000000000000) == 0)
        {
          v46 = v44 & 0xFFFFFFFFFFFFLL;
        }

        if (v46)
        {
          v186 = *(v0 + 488);
          v48 = *(v0 + 248);
          v47 = *(v0 + 256);
          v49 = *(v0 + 224);
          v50 = *(v0 + 232);
          v180 = *(*(v0 + 296) + 16);
          v180(*(v0 + 312), *(v0 + 320), *(v0 + 288));
          *v47 = v44;
          v47[1] = v45;
          v184(v47, v186, v49);
          v179 = *(v50 + 32);
          v179(v48, v47, v49);
          swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 144) = v194;
          sub_1C457B2A0();
          sub_1C442CD84(v51, v52);
          if (v55)
          {
            goto LABEL_73;
          }

          v56 = v53;
          v57 = v54;
          sub_1C456902C(&qword_1EC0C4148, &qword_1C4F57A28);
          if (sub_1C4F02458())
          {
            v58 = *(v0 + 312);
            v59 = *(v0 + 144);
            sub_1C457B2A0();
            if ((v57 & 1) != (v61 & 1))
            {
              break;
            }

            v56 = v60;
          }

          v62 = *(v0 + 144);
          v63 = *(v0 + 312);
          v187 = *(v0 + 320);
          v64 = *(v0 + 288);
          v65 = *(v0 + 296);
          v66 = *(v0 + 248);
          v67 = *(v0 + 224);
          v68 = *(v0 + 232);
          v194 = v62;
          if ((v57 & 1) == 0)
          {
            sub_1C44185D4(v62 + 8 * (v56 >> 6));
            v102 = v101;
            v180(v100 + *(v65 + 72) * v56, v101, v64);
            v179(*(v194 + 56) + *(v68 + 72) * v56, v66, v67);
            v103 = *(v65 + 8);
            v103(v102, v64);
            v103(v187, v64);
            v96 = v194;
            v104 = *(v194 + 16);
            v55 = __OFADD__(v104, 1);
            v98 = v104 + 1;
            if (v55)
            {
              __break(1u);
              goto LABEL_37;
            }

            goto LABEL_30;
          }

          (*(v68 + 40))(*(v62 + 56) + *(v68 + 72) * v56, v66, v67);
          v69 = *(v65 + 8);
          v70 = sub_1C4402B58();
          v69(v70);
          (v69)(v187, v64);
          goto LABEL_31;
        }

        v99 = *(v0 + 120);
LABEL_22:
      }
    }

    v71 = *(v0 + 492);
    v72 = *(v0 + 240);
    v73 = *(v0 + 224);
    v31 = *(*(v0 + 296) + 16);
    (v31)(*(v0 + 304), *(v0 + 320), *(v0 + 288));
    v184(v72, v71, v73);
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 136) = v194;
    sub_1C457B2A0();
    sub_1C442CD84(v74, v75);
    if (v55)
    {
      goto LABEL_71;
    }

    v78 = v76;
    v79 = v77;
    sub_1C456902C(&qword_1EC0C4148, &qword_1C4F57A28);
    if ((sub_1C4F02458() & 1) == 0)
    {
      goto LABEL_27;
    }

    v80 = *(v0 + 304);
    v81 = *(v0 + 136);
    sub_1C457B2A0();
    if ((v79 & 1) != (v83 & 1))
    {
      break;
    }

    v78 = v82;
LABEL_27:
    v84 = *(v0 + 136);
    v188 = *(v0 + 320);
    v85 = *(v0 + 296);
    v86 = *(v0 + 288);
    v87 = *(v0 + 232);
    v88 = *(v0 + 240);
    v89 = *(v0 + 224);
    v194 = v84;
    if ((v79 & 1) == 0)
    {
      sub_1C44185D4(v84 + 8 * (v78 >> 6));
      v94 = v93;
      (v31)(v92 + *(v85 + 72) * v78, v93, v86);
      (*(v87 + 32))(*(v194 + 56) + *(v87 + 72) * v78, v88, v89);
      v95 = *(v85 + 8);
      v95(v94, v86);
      v95(v188, v86);
      v96 = v194;
      v97 = *(v194 + 16);
      v55 = __OFADD__(v97, 1);
      v98 = v97 + 1;
      if (v55)
      {
        goto LABEL_72;
      }

LABEL_30:
      *(v96 + 16) = v98;
      goto LABEL_31;
    }

    v90 = *(v0 + 304);
    (*(v87 + 40))(*(v84 + 56) + *(v87 + 72) * v78, v88, v89);
    v91 = *(v85 + 8);
    v91(v90, v86);
    v91(v188, v86);
LABEL_31:
    v30 = v182;
    v31 = v191 + 1;
    v32 = v189 + 2;
    if (v183 == v191 + 1)
    {
      goto LABEL_63;
    }
  }

  v173 = *(v0 + 288);
  sub_1C441AF18();

  return sub_1C4F029F8();
}

uint64_t sub_1C4B95FD8()
{
  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[38];
  v6 = v0[35];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[30];
  v13 = v0[27];
  v14 = v0[26];
  sub_1C441DFEC(v0[55], v0[56]);

  sub_1C43FBDA0();
  v11 = v0[59];

  return v10();
}

uint64_t sub_1C4B960D0(uint64_t a1)
{
  v28 = sub_1C4EFC328();
  v3 = sub_1C43FCDF8(v28);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v27 = sub_1C4EFC308();
  v11 = sub_1C43FCDF8(v27);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v19 = OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_filterableStringAttributes;
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_filterableStringAttributes) = 0;
  v20 = *(a1 + 32);
  *(v1 + 16) = *(a1 + 24);
  *(v1 + 24) = v20;
  *v10 = 0;
  *(v10 + 8) = 1;
  (*(v5 + 104))(v10, *MEMORY[0x1E69DF5C0], v28);
  swift_bridgeObjectRetain_n();
  sub_1C4EFC2F8();
  (*(v13 + 32))(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_idAttribute, v18, v27);
  v21 = *(a1 + 16);
  v22 = (v1 + OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_vectorColumn);
  *v22 = *(a1 + 8);
  v22[1] = v21;
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_keyColumns) = *(a1 + 40);
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_includePayload) = *(a1 + 1);
  v23 = *(a1 + *(type metadata accessor for VectorDB.Config(0) + 44));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4407D0C();
  sub_1C443CDD0(a1, v24);
  v25 = *(v1 + v19);
  *(v1 + v19) = v23;

  return v1;
}

uint64_t sub_1C4B962F4()
{
  sub_1C43FCF70();
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v0 = sub_1C4F00978();
  sub_1C43FCEE8(v0, qword_1EDE2DF70);
  v1 = sub_1C4F00968();
  sub_1C4F01CB8();
  v2 = sub_1C4404760();
  if (os_log_type_enabled(v2, v3))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C43FFFD8(&dword_1C43F8000, v4, v5, "VectorDBArtfiact: Default no-op implementation for model pre-loading.");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C43FBDA0();

  return v6();
}

uint64_t sub_1C4B963D8()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_idAttribute;
  v3 = sub_1C4EFC308();
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_vectorColumn + 8);

  v6 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_keyColumns);

  v7 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_filterableStringAttributes);

  return v0;
}

uint64_t sub_1C4B96498()
{
  result = sub_1C4EFC308();
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

uint64_t sub_1C4B96558(uint64_t a1)
{
  v4 = type metadata accessor for VectorDB.Config(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v7 = sub_1C456902C(&qword_1EC0C4168, &qword_1C4F57A58);
  v8 = sub_1C43FBD18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for VectorDB.EmbeddingConfig(0);
  v14 = sub_1C43FBCE0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  sub_1C4B9B28C(a1 + *(v5 + 48), v12);
  if (sub_1C44157D4(v12, 1, v13) == 1)
  {
    sub_1C4420C3C(v12, &qword_1EC0C4168, &qword_1C4F57A58);
    sub_1C447FA64();
    sub_1C43FFB2C();
    *v20 = 0xD000000000000038;
    *(v20 + 8) = v2;
    *(v20 + 16) = 1;
    swift_willThrow();
    sub_1C4407D0C();
    sub_1C443CDD0(a1, v21);
    type metadata accessor for GenericEmbeddingAssetLoader(0);
    sub_1C44366B4();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C4B9B2FC(v12, v19, type metadata accessor for VectorDB.EmbeddingConfig);
    sub_1C4B9B230(v19, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore27GenericEmbeddingAssetLoader_embeddingConfig, type metadata accessor for VectorDB.EmbeddingConfig);
    sub_1C4B9B230(a1, v2, type metadata accessor for VectorDB.Config);
    sub_1C4B960D0(v2);
    sub_1C443CDD0(a1, type metadata accessor for VectorDB.Config);
    sub_1C443CDD0(v19, type metadata accessor for VectorDB.EmbeddingConfig);
  }

  return v1;
}

uint64_t sub_1C4B967C0(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return sub_1C43FFE30(sub_1C4B967D8);
}

uint64_t sub_1C4B967D8()
{
  sub_1C43FCF70();
  v1 = v0[8];
  sub_1C43FC948(v0[9]);
  sub_1C4403860();

  if (v0[5])
  {
    if (sub_1C43FDF34())
    {
      v2 = v0[6];
      v3 = v0[7];
      v4 = sub_1C4402B58();
      sub_1C44344B8(v4, v5);
      v6 = sub_1C4402B58();
      sub_1C4B968B4(v6, v7);
      v8 = sub_1C4402B58();
      sub_1C4434000(v8, v9);
      v10 = sub_1C4402B58();
      sub_1C4434000(v10, v11);
    }
  }

  else
  {
    sub_1C4420C3C((v0 + 2), &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  v12 = sub_1C43FD5F0();

  return v13(v12);
}

uint64_t sub_1C4B968B4(uint64_t a1, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E7CC0];
  switch(a2 >> 62)
  {
    case 1uLL:
      v4 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v5 = v4;
      goto LABEL_7;
    case 2uLL:
      v6 = *(a1 + 24);
      a1 = *(a1 + 16);
      v5 = v6;
LABEL_7:
      v2 = sub_1C4B9AB80(a1, v5);
      break;
    case 3uLL:
      break;
    default:
      __src = a1;
      v10 = a2;
      v11 = BYTE2(a2);
      v12 = BYTE3(a2);
      v13 = BYTE4(a2);
      v3 = (a2 >> 50) & 0x3F;
      v14 = BYTE5(a2);
      if (v3)
      {
        v2 = sub_1C497EDBC();
        memcpy((v2 + 32), &__src, 4 * v3);
      }

      break;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1C4B96A2C@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1C4EFC318();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v10 = type metadata accessor for VectorDB.EmbeddingConfig(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  sub_1C4B9B230(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore27GenericEmbeddingAssetLoader_embeddingConfig, v14 - v13, type metadata accessor for VectorDB.EmbeddingConfig);
  v16 = *(v11 + 28);
  (*(v7 + 16))(v2, v15 + v16, v4);
  v17 = (*(v7 + 88))(v2, v4);
  if (v17 == *MEMORY[0x1E69DF588])
  {
    v18 = MEMORY[0x1E69DF528];
LABEL_7:
    v19 = *v18;
    v20 = sub_1C4EFC2D8();
    sub_1C43FBCE0(v20);
    (*(v21 + 104))(a1, v19);
    return (*(v7 + 8))(v15 + v16, v4);
  }

  if (v17 == *MEMORY[0x1E69DF590])
  {
    v18 = MEMORY[0x1E69DF518];
    goto LABEL_7;
  }

  if (v17 == *MEMORY[0x1E69DF580])
  {
    v18 = MEMORY[0x1E69DF520];
    goto LABEL_7;
  }

  result = sub_1C4F02928();
  __break(1u);
  return result;
}

uint64_t sub_1C4B96C4C()
{
  sub_1C4B963D8();
  sub_1C441CE0C(OBJC_IVAR____TtC24IntelligencePlatformCore27GenericEmbeddingAssetLoader_embeddingConfig);
  sub_1C44366B4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B96CD4()
{
  result = type metadata accessor for VectorDB.EmbeddingConfig(319);
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

uint64_t sub_1C4B96D64(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C4703368;

  return sub_1C4B967C0(a1);
}

uint64_t sub_1C4B96DFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4703368;

  return sub_1C4B94DA4();
}

uint64_t sub_1C4B96EA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4B962E0();
}

uint64_t sub_1C4B96F7C(uint64_t a1)
{
  v4 = type metadata accessor for VectorDB.Config(0);
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C44058BC();
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore23DefaultEmptyAssetLoader_dimension) = 128;
  sub_1C4B9B230(a1, v2, type metadata accessor for VectorDB.Config);
  sub_1C4B960D0(v2);
  sub_1C443CDD0(a1, type metadata accessor for VectorDB.Config);
  return v1;
}

uint64_t sub_1C4B9703C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return sub_1C43FFE30(sub_1C4B97054);
}

void sub_1C4B97054()
{
  v1 = v0[8];
  sub_1C43FC948(v0[9]);
  sub_1C4403860();

  if (!v0[5])
  {
LABEL_16:
    sub_1C4420C3C((v0 + 2), &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_17:
    v14 = 0;
LABEL_21:
    sub_1C43FBCF0();

    v27(v14);
    return;
  }

  if ((sub_1C43FDF34() & 1) == 0)
  {
    goto LABEL_17;
  }

  v2 = v0[6];
  v0[7];
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = sub_1C4F01348();
    if (!v5)
    {
      break;
    }

    v6 = sub_1C4B94184(v4, v5);

    v7 = *(v6 + 16);
    v8 = *(v3 + 16);
    if (__OFADD__(v8, v7))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v8 + v7 > *(v3 + 24) >> 1)
    {
      sub_1C458BE6C();
      v3 = v9;
    }

    if (*(v6 + 16))
    {
      v10 = *(v3 + 16);
      if ((*(v3 + 24) >> 1) - v10 < v7)
      {
        goto LABEL_25;
      }

      memcpy((v3 + 4 * v10 + 32), (v6 + 32), 4 * v7);

      if (v7)
      {
        v11 = *(v3 + 16);
        v12 = __OFADD__(v11, v7);
        v13 = v11 + v7;
        if (v12)
        {
          goto LABEL_26;
        }

        *(v3 + 16) = v13;
      }
    }

    else
    {

      if (v7)
      {
        __break(1u);
        goto LABEL_16;
      }
    }
  }

  v15 = sub_1C4C527C4(128, v3);
  v19 = (v18 >> 1) - v17;
  if (__OFSUB__(v18 >> 1, v17))
  {
    goto LABEL_27;
  }

  v12 = __OFSUB__(128, v19);
  v20 = 128 - v19;
  if (!v12)
  {
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    v25 = sub_1C44B345C(v20 & ~(v20 >> 63), 0.0);
    sub_1C4B97298(v21, v22, v23, v24, v25);
    v14 = v26;

    swift_unknownObjectRelease();
    goto LABEL_21;
  }

LABEL_28:
  __break(1u);
}

void sub_1C4B97298(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else if (!__OFADD__(*(a5 + 16), (a4 >> 1) - a3))
  {
    sub_1C458BE6C();
    v8 = swift_unknownObjectRetain();
    sub_1C49D3C64(v8, a2, a3, a4);
    v9 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C49D3BB4(v9);
    return;
  }

  __break(1u);
}

uint64_t sub_1C4B97360()
{
  sub_1C4B963D8();
  sub_1C44366B4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B973EC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C4703368;

  return sub_1C4B9703C(a1);
}

uint64_t sub_1C4B97484(uint64_t a1)
{
  v4 = v1;
  v6 = type metadata accessor for VectorDB.Config(0);
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C44058BC();
  if (!*(a1 + 56))
  {
    sub_1C447FA64();
    sub_1C43FFB2C();
    *v16 = 0xD000000000000041;
    *(v16 + 8) = v3;
    v17 = 1;
    goto LABEL_5;
  }

  sub_1C4F00F28();
  v10 = sub_1C4EFE278();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_1C4EFE268();
  if (v2)
  {

    sub_1C4B9B1DC();
    v14 = sub_1C43FFB2C();
    sub_1C447F314(v14, v15);
LABEL_5:
    *(v16 + 16) = v17;
    swift_willThrow();
    sub_1C4407D0C();
    sub_1C443CDD0(a1, v18);
    type metadata accessor for AddressEmbeddingAssetLoader(0);
    sub_1C44057E8();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_deallocPartialClassInstance();
    return sub_1C445EA10();
  }

  v22 = v13;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v23 = sub_1C4F00978();
  sub_1C442B738(v23, qword_1EDE2DF70);
  v24 = sub_1C4F00968();
  sub_1C4F01CB8();
  v25 = sub_1C4404760();
  if (os_log_type_enabled(v25, v26))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C4407324(&dword_1C43F8000, v27, v28, "VectorDBArtifact: Using (AddressEmbedding) as the text embedding provider.");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore27AddressEmbeddingAssetLoader_embeddingModel) = v22;
  sub_1C44204B8();
  sub_1C4B9B230(a1, v3, v29);
  sub_1C4B960D0(v3);
  sub_1C441D3EC();
  return sub_1C445EA10();
}

uint64_t sub_1C4B976E0()
{
  sub_1C43FBCD4();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1C456902C(&qword_1EC0B84F8, &unk_1C4F57A40);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64) + 15;
  v1[14] = swift_task_alloc();
  v6 = sub_1C456902C(&qword_1EC0B84F0, &unk_1C4F0CF50);
  v1[15] = v6;
  sub_1C43FCF7C(v6);
  v1[16] = v7;
  v9 = *(v8 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B977D4, 0, 0);
}

uint64_t sub_1C4B977D4()
{
  v1 = v0[12];
  sub_1C43FC948(v0[13]);
  sub_1C4403860();

  if (v0[5])
  {
    if (sub_1C43FDF34())
    {
      v2 = v0[6];
      v3 = v0[7];
      sub_1C4F00FF8();

      while (1)
      {
        v4 = sub_1C4F01348();
        if (!v5)
        {
          break;
        }

        v6 = v4;
        v7 = v5;
        if ((sub_1C4F01008() & 1) == 0)
        {
          sub_1C4404C28();
          if (sub_1C4F01018() & 1) != 0 || (v6 == 32 ? (v8 = v7 == 0xE100000000000000) : (v8 = 0), v8 || (sub_1C4404C28(), (sub_1C4F02938()) || (sub_1C4404C28(), (sub_1C4F01028())))
          {
            v9 = sub_1C4404C28();
            MEMORY[0x1C6940000](v9);
          }
        }
      }

      if (qword_1EDDFECD0 != -1)
      {
        sub_1C4400FC0();
        swift_once();
      }

      v15 = sub_1C4F00978();
      sub_1C43FCEE8(v15, qword_1EDE2DF70);
      v16 = sub_1C4F00968();
      sub_1C4F01CD8();
      v17 = sub_1C4404760();
      if (os_log_type_enabled(v17, v18))
      {
        sub_1C43FD1A8();
        *swift_slowAlloc() = 0;
        sub_1C43FFFD8(&dword_1C43F8000, v19, v20, "VectorDBArtifact: Input address is empty after preprocessing");
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }
    }
  }

  else
  {
    sub_1C4420C3C((v0 + 2), &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  v10 = v0[17];
  v11 = v0[14];

  v12 = sub_1C43FD5F0();

  return v13(v12);
}

uint64_t sub_1C4B97C14()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C4703368;

  return sub_1C4B976E0();
}

uint64_t sub_1C4B97CAC()
{
  v4 = sub_1C4415CE8();
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C443F3A4();
  if (!v8)
  {
    sub_1C447FA64();
    sub_1C43FFB2C();
    *v18 = 0xD000000000000046;
    *(v18 + 8) = v2;
    v19 = 1;
LABEL_10:
    *(v18 + 16) = v19;
    swift_willThrow();
    sub_1C4407D0C();
    sub_1C443CDD0(v1, v22);
    type metadata accessor for NLContextualEmbeddingAssetLoader(0);
    sub_1C44057E8();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_deallocPartialClassInstance();
    return sub_1C445EA10();
  }

  v9 = [objc_opt_self() contextualEmbeddingWithLanguage_];
  if (!v9)
  {
    sub_1C4B9B1DC();
    v20 = sub_1C43FFB2C();
    sub_1C447F314(v20, v21);
    goto LABEL_10;
  }

  v10 = v9;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v11 = sub_1C4F00978();
  sub_1C442B738(v11, qword_1EDE2DF70);
  v12 = sub_1C4F00968();
  sub_1C4F01CB8();
  v13 = sub_1C4404760();
  if (os_log_type_enabled(v13, v14))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C4407324(&dword_1C43F8000, v15, v16, "VectorDBArtifact: Using (NLContextualEmbedding) as the text embedding provider.");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32NLContextualEmbeddingAssetLoader_embeddingModel) = v10;
  sub_1C44204B8();
  sub_1C4B9B230(v1, v3, v17);
  sub_1C442ED58();
  sub_1C441D3EC();
  return sub_1C445EA10();
}

uint64_t sub_1C4B97EBC()
{
  sub_1C43FCF70();
  v1 = *(v0[19] + OBJC_IVAR____TtC24IntelligencePlatformCore32NLContextualEmbeddingAssetLoader_embeddingModel);
  if ([v1 hasAvailableAssets])
  {
    sub_1C43FBDA0();

    return v2();
  }

  else
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1C4B98024;
    v4 = swift_continuation_init();
    v0[17] = sub_1C456902C(&qword_1EC0C4150, &unk_1C4F57A30);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C4B981B0;
    v0[13] = &unk_1F43FF940;
    v0[14] = v4;
    [v1 requestAssetsWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1C4B98024()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 160) = v4;
  if (v4)
  {
    v5 = sub_1C4B9814C;
  }

  else
  {
    v5 = sub_1C4B98128;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C4B9814C()
{
  sub_1C43FCF70();
  v1 = *(v0 + 160);
  swift_willThrow();
  sub_1C43FBDA0();
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_1C4B981B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C4409678((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_1C467BF20(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_1C467BF1C(v9, a2);
  }
}

uint64_t sub_1C4B98234()
{
  sub_1C43FBCD4();
  v5 = *MEMORY[0x1E69E9840];
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C4B982C0, 0, 0);
}

uint64_t sub_1C4B982C0()
{
  sub_1C43FEAEC();
  v24 = *MEMORY[0x1E69E9840];
  v1 = v0[8];
  sub_1C43FC948(v0[9]);
  sub_1C4403860();

  if (!v0[5])
  {
    sub_1C4420C3C((v0 + 2), &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_6;
  }

  if ((sub_1C43FDF34() & 1) == 0)
  {
LABEL_6:
    v17 = 0;
    goto LABEL_7;
  }

  v3 = v0[6];
  v2 = v0[7];
  v4 = *(v0[9] + OBJC_IVAR____TtC24IntelligencePlatformCore32NLContextualEmbeddingAssetLoader_embeddingModel);
  v5 = sub_1C44CF75C([v4 maximumSequenceLength]);
  v6 = MEMORY[0x1C693FEF0](v5);
  v8 = v7;

  v9 = *MEMORY[0x1E6977748];
  v0[2] = 0;
  v10 = sub_1C4B9ACA8(v6, v8, v9, (v0 + 2), v4);
  v11 = v0[2];
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    v14 = sub_1C4EF9A68();
    v16 = v15;

    v17 = sub_1C4B94580(v14, v16);
    sub_1C4434000(v14, v16);
LABEL_7:
    sub_1C43FBCF0();
    v19 = *MEMORY[0x1E69E9840];

    return v18(v17);
  }

  v21 = v11;
  sub_1C4EF97A8();

  swift_willThrow();
  sub_1C43FBDA0();
  v23 = *MEMORY[0x1E69E9840];

  return v22();
}

void *sub_1C4B984CC@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result && (v4 = result, v5 = a2 - result, (a2 - result + 3) >= 7))
  {
    v7 = v5 / 4;
    if (v5 <= 3)
    {
      v8 = 4 * v7;
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1C456902C(&qword_1EC0B8998, &qword_1C4F0DDB0);
      v8 = 4 * v7;
      v6 = swift_allocObject();
      v9 = j__malloc_size(v6);
      v6[2] = v7;
      v6[3] = 2 * ((v9 - 32) / 4);
    }

    result = memcpy(v6 + 4, v4, v8);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1C4B985F4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C4703368;

  return sub_1C4B98234();
}

uint64_t sub_1C4B9868C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4B97EA4();
}

uint64_t sub_1C4B98740()
{
  v4 = sub_1C4415CE8();
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C443F3A4();
  if (!v8)
  {
    sub_1C447FA64();
    sub_1C43FFB2C();
    *v18 = 0xD00000000000003CLL;
    *(v18 + 8) = v2;
    v19 = 1;
LABEL_10:
    *(v18 + 16) = v19;
    swift_willThrow();
    sub_1C4407D0C();
    sub_1C443CDD0(v1, v22);
    type metadata accessor for NLEmbeddingAssetLoader(0);
    sub_1C44057E8();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_deallocPartialClassInstance();
    return sub_1C445EA10();
  }

  v9 = [objc_opt_self() sentenceEmbeddingForLanguage_];
  if (!v9)
  {
    sub_1C4B9B1DC();
    v20 = sub_1C43FFB2C();
    sub_1C447F314(v20, v21);
    goto LABEL_10;
  }

  v10 = v9;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v11 = sub_1C4F00978();
  sub_1C442B738(v11, qword_1EDE2DF70);
  v12 = sub_1C4F00968();
  sub_1C4F01CB8();
  v13 = sub_1C4404760();
  if (os_log_type_enabled(v13, v14))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C4407324(&dword_1C43F8000, v15, v16, "VectorDBArtifact: Using (NLEmbedding) as the text embedding provider.");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22NLEmbeddingAssetLoader_embeddingModel) = v10;
  sub_1C44204B8();
  sub_1C4B9B230(v1, v3, v17);
  sub_1C442ED58();
  sub_1C441D3EC();
  return sub_1C445EA10();
}

uint64_t sub_1C4B98934(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return sub_1C43FFE30(sub_1C4B9894C);
}

uint64_t sub_1C4B9894C()
{
  v2 = v0[8];
  sub_1C43FC948(v0[9]);
  sub_1C4403860();

  if (v0[5])
  {
    if (sub_1C43FDF34())
    {
      v4 = v0[6];
      v3 = v0[7];
      v5 = *(v0[9] + OBJC_IVAR____TtC24IntelligencePlatformCore22NLEmbeddingAssetLoader_embeddingModel);
      sub_1C4404C28();
      v6 = sub_1C4F01C38();
      if (v6)
      {
        v7 = v6;

        v8 = *(v7 + 16);
        if (v8)
        {
          v25 = MEMORY[0x1E69E7CC0];
          sub_1C459D3B0(0, v8, 0);
          v9 = *(v25 + 16);
          v10 = 32;
          do
          {
            v11 = *(v7 + v10);
            v12 = *(v25 + 24);
            if (v9 >= v12 >> 1)
            {
              sub_1C459D3B0((v12 > 1), v9 + 1, 1);
            }

            v13 = v11;
            *(v25 + 16) = v9 + 1;
            *(v25 + 4 * v9 + 32) = v13;
            v10 += 8;
            ++v9;
            --v8;
          }

          while (v8);
        }
      }

      else
      {
        if (qword_1EDDFECD0 != -1)
        {
          sub_1C4400FC0();
          swift_once();
        }

        v17 = sub_1C4F00978();
        sub_1C43FCEE8(v17, qword_1EDE2DF70);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v18 = sub_1C4F00968();
        v19 = sub_1C4F01CD8();

        if (os_log_type_enabled(v18, v19))
        {
          sub_1C43FD084();
          v26 = sub_1C4402BBC();
          *v1 = 136315138;
          v20 = sub_1C4404C28();
          v23 = sub_1C441D828(v20, v21, v22);

          *(v1 + 4) = v23;
          sub_1C440A610(&dword_1C43F8000, v24, v19, "NLEmbeddingAssetLoader: Input string (%s) cannot be encoded.");
          sub_1C440962C(v26);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }
      }
    }
  }

  else
  {
    sub_1C4420C3C((v0 + 2), &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  v14 = sub_1C43FD5F0();

  return v15(v14);
}

uint64_t sub_1C4B98C18(void *a1)
{
  sub_1C4B963D8();

  sub_1C44366B4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B98CAC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C4703368;

  return sub_1C4B98934(a1);
}

uint64_t sub_1C4B98D44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C46FDBC8;

  return sub_1C4B94DA4();
}

uint64_t sub_1C4B98DF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C4B962E0();
}

uint64_t sub_1C4B98EA0(uint64_t a1)
{
  v4 = v1;
  v6 = type metadata accessor for VectorDB.Config(0);
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C4F009E8();
  v14 = sub_1C43FCDF8(v13);
  v99 = v15;
  v100 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v101 = v19 - v18;
  v20 = sub_1C4EFF988();
  v21 = sub_1C43FCDF8(v20);
  v97 = v22;
  v98 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v25 = sub_1C456902C(&qword_1EC0C4160, &qword_1C4F57A50);
  v26 = sub_1C43FBD18(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v88 - v29;
  v31 = sub_1C4F009D8();
  v32 = sub_1C43FCDF8(v31);
  v106 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBD08();
  v96 = v36 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v105 = &v88 - v39;
  v40 = sub_1C4EF9E48();
  v41 = sub_1C43FCDF8(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v44);
  v109 = &v88 - v48;
  if (!*(a1 + 56) || (v49 = *(a1 + 64)) == 0)
  {
    sub_1C4B9B1DC();
    sub_1C43FFB2C();
    sub_1C445FEC0(v70, 0xD000000000000036);
    goto LABEL_22;
  }

  v90 = v3;
  v91 = v47;
  v102 = v31;
  v103 = v46;
  v93 = v12;
  v94 = v2;
  v104 = v45;
  v50 = sub_1C44735D4(0x656C61636F6CLL, 0xE600000000000000, v49);
  if (v51)
  {
    v52 = v50;
  }

  else
  {
    v52 = 0x53552D6E65;
  }

  if (v51)
  {
    v53 = v51;
  }

  else
  {
    v53 = 0xE500000000000000;
  }

  v54 = sub_1C44735D4(0x547265646F636E65, 0xEB00000000657079, v49);
  if (v55)
  {
    v56 = v54;
  }

  else
  {
    v56 = 0x656D656870617267;
  }

  if (v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = 0xE800000000000000;
  }

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v58 = sub_1C4F00978();
  v59 = sub_1C442B738(v58, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v92 = v59;
  v60 = sub_1C4F00968();
  v61 = sub_1C4F01CC8();

  v62 = os_log_type_enabled(v60, v61);
  v95 = a1;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v89 = v4;
    v107 = v64;
    *v63 = 136315394;
    *(v63 + 4) = sub_1C441D828(v52, v53, &v107);
    *(v63 + 12) = 2080;
    *(v63 + 14) = sub_1C441D828(v56, v57, &v107);
    _os_log_impl(&dword_1C43F8000, v60, v61, "VectorDBArtifact: PhoneticEmbedder with locale: (%s) and encoderType: (%s) ", v63, 0x16u);
    swift_arrayDestroy();
    v4 = v89;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v65 = v109;
  sub_1C4EF9D48();
  sub_1C4B996DC(v56, v57, v30);
  v66 = v102;
  if (sub_1C44157D4(v30, 1, v102) == 1)
  {
    sub_1C4420C3C(v30, &qword_1EC0C4160, &qword_1C4F57A50);
    v107 = 0;
    v108 = 0xE000000000000000;
    sub_1C4F02248();

    v107 = 0xD000000000000015;
    v108 = 0x80000001C4FB4220;
    MEMORY[0x1C6940010](v56, v57);

    MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4FB4240);
    v67 = v107;
    v68 = v108;
    sub_1C4B9B1DC();
    sub_1C43FFB2C();
    *v69 = v67;
    *(v69 + 8) = v68;
    *(v69 + 16) = 1;
    swift_willThrow();
    (*(v103 + 8))(v65, v104);
    a1 = v95;
LABEL_22:
    sub_1C443CDD0(a1, type metadata accessor for VectorDB.Config);
    type metadata accessor for EuclidEmbeddingAssetLoader(0);
    v71 = *(*v4 + 48);
    v72 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
    return v4;
  }

  v73 = v105;
  v74 = v106;
  (*(v106 + 32))(v105, v30, v66);
  (*(v103 + 16))(v91, v65, v104);
  v75 = v97;
  v76 = v98;
  v77 = v90;
  (*(v97 + 104))(v90, *MEMORY[0x1E69A9A50], v98);
  v89 = sub_1C4EFF978();
  (*(v75 + 8))(v77, v76);
  (*(v74 + 16))(v96, v73, v66);
  (*(v99 + 104))(v101, *MEMORY[0x1E697B940], v100);
  v78 = sub_1C4F00A18();
  v79 = *(v78 + 48);
  v80 = *(v78 + 52);
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore26EuclidEmbeddingAssetLoader_embeddingModel) = sub_1C4F00A08();
  v81 = sub_1C4F00968();
  v82 = sub_1C4F01CB8();
  if (os_log_type_enabled(v81, v82))
  {
    sub_1C43FD1A8();
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_1C43F8000, v81, v82, "VectorDBArtifact: Using (PhoneticEmbedder) as the text embedding provider.", v83, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v84 = v95;
  v85 = v93;
  sub_1C4B9B230(v95, v93, type metadata accessor for VectorDB.Config);
  sub_1C4B960D0(v85);
  (*(v106 + 8))(v105, v102);
  (*(v103 + 8))(v109, v104);
  sub_1C4407D0C();
  sub_1C443CDD0(v84, v86);
  return v4;
}

uint64_t sub_1C4B996DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 0x656D656870617267 && a2 == 0xE800000000000000;
  if (v5 || (sub_1C4F02938() & 1) != 0)
  {
    v7 = MEMORY[0x1E697B938];
LABEL_7:
    v8 = *v7;
    v9 = sub_1C4F009D8();
    sub_1C43FBCE0(v9);
    (*(v10 + 104))(a3, v8, v9);
    v11 = a3;
    v12 = 0;
    v13 = v9;
    goto LABEL_8;
  }

  v15 = a1 == 0x656D656E6F6870 && a2 == 0xE700000000000000;
  if (v15 || (sub_1C4F02938() & 1) != 0)
  {
    v7 = MEMORY[0x1E697B930];
    goto LABEL_7;
  }

  v13 = sub_1C4F009D8();
  v11 = a3;
  v12 = 1;
LABEL_8:

  return sub_1C440BAA8(v11, v12, 1, v13);
}

uint64_t sub_1C4B99808(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return sub_1C43FFE30(sub_1C4B99820);
}

uint64_t sub_1C4B99820()
{
  sub_1C43FCF70();
  v1 = v0[8];
  sub_1C43FC948(v0[9]);
  sub_1C4403860();

  if (v0[5])
  {
    if (sub_1C43FDF34())
    {
      v2 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v0[10] = v4;
      v0[11] = v3;
      v0[12] = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore26EuclidEmbeddingAssetLoader_embeddingModel);
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v5 = swift_allocObject();
      v0[13] = v5;
      *(v5 + 16) = xmmword_1C4F0D130;
      *(v5 + 32) = v4;
      *(v5 + 40) = v3;
      v6 = *(MEMORY[0x1E697B928] + 4);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v7 = swift_task_alloc();
      v0[14] = v7;
      *v7 = v0;
      sub_1C43FC688(v7);

      return MEMORY[0x1EEDD8EC0](v5);
    }
  }

  else
  {
    sub_1C4420C3C((v0 + 2), &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  sub_1C43FBCF0();

  return v8(0);
}

uint64_t sub_1C4B999A0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 112);
  *v4 = *v1;
  v3[15] = v7;
  v3[16] = v0;

  if (v0)
  {
    v8 = sub_1C4B99E30;
  }

  else
  {
    v9 = v3[13];

    v8 = sub_1C4B99AB0;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C4B99AB0()
{
  v41 = v0;
  v2 = v0[15];
  if (*(v2 + 16))
  {
    v3 = v0[12];
    v4 = *(v2 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v5 = *(v4 + 16);
    if (v5 == sub_1C4F009F8())
    {
      v6 = v0[11];

      if (v5)
      {
        v40 = MEMORY[0x1E69E7CC0];
        sub_1C459D3B0(0, v5, 0);
        v7 = v40;
        v8 = *(v40 + 16);
        v9 = 32;
        do
        {
          v10 = *(v4 + v9);
          v40 = v7;
          v11 = *(v7 + 24);
          if (v8 >= v11 >> 1)
          {
            sub_1C459D3B0((v11 > 1), v8 + 1, 1);
            v7 = v40;
          }

          v12 = v10;
          *(v7 + 16) = v8 + 1;
          *(v7 + 4 * v8 + 32) = v12;
          v9 += 8;
          ++v8;
          --v5;
        }

        while (v5);
      }

      goto LABEL_20;
    }

    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v27 = v0[11];
    v28 = sub_1C4F00978();
    sub_1C43FCEE8(v28, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = sub_1C4F00968();
    v29 = sub_1C4F01CD8();

    v30 = os_log_type_enabled(v16, v29);
    v31 = v0[11];
    if (v30)
    {
      v32 = v0[10];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40 = v34;
      *v33 = 136315394;
      sub_1C441D828(v32, v31, &v40);

      sub_1C442F3F0();
      *(v33 + 14) = v31;

      sub_1C4423818(&dword_1C43F8000, v35, v36, "PhoneticEmbedder: Input string (%s) vector has %ld dimensions.");
      sub_1C440962C(v34);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      goto LABEL_17;
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v13 = v0[15];

    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v14 = v0[11];
    v15 = sub_1C4F00978();
    sub_1C43FCEE8(v15, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CD8();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[11];
    if (v18)
    {
      v20 = v0[10];
      sub_1C43FD084();
      v21 = sub_1C4402BBC();
      v40 = v21;
      *v1 = 136315138;
      v22 = sub_1C44057DC();
      v25 = sub_1C441D828(v22, v23, v24);

      *(v1 + 4) = v25;
      sub_1C440A610(&dword_1C43F8000, v26, v17, "PhoneticEmbedder: Input string (%s) cannot be encoded.");
      sub_1C440962C(v21);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
LABEL_17:
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      goto LABEL_21;
    }
  }

LABEL_20:

LABEL_21:
  v37 = sub_1C43FD5F0();

  return v38(v37);
}

uint64_t sub_1C4B99E30()
{
  sub_1C43FBCD4();
  v1 = v0[13];
  v2 = v0[11];

  sub_1C43FBDA0();
  v4 = v0[16];

  return v3();
}

uint64_t sub_1C4B99F04(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C4703368;

  return sub_1C4B99808(a1);
}

uint64_t sub_1C4B99FC0()
{
  v4 = sub_1C4415CE8();
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C443F3A4();
  if (!v8)
  {
    sub_1C4B9B1DC();
    sub_1C43FFB2C();
    sub_1C445FEC0(v17, 0xD000000000000043);
    goto LABEL_9;
  }

  sub_1C4EFFD68();
  v9 = sub_1C4EFFD58();
  if (v2)
  {
LABEL_9:
    sub_1C4407D0C();
    sub_1C443CDD0(v1, v18);
    type metadata accessor for UniversalEmbeddingAssetLoader(0);
    sub_1C44057E8();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_deallocPartialClassInstance();
    return v0;
  }

  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore29UniversalEmbeddingAssetLoader_client) = v9;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2DF70);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CB8();
  v13 = sub_1C4404760();
  if (os_log_type_enabled(v13, v14))
  {
    sub_1C43FD1A8();
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C43F8000, v11, v12, "VectorDBArtifact: Using (UniversalEmbedding) as the text embedding provider.", v15, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C44204B8();
  sub_1C4B9B230(v1, v3, v16);
  sub_1C442ED58();
  sub_1C443CDD0(v1, v12);
  return v0;
}

uint64_t sub_1C4B9A19C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return sub_1C43FFE30(sub_1C4B9A1B4);
}

uint64_t sub_1C4B9A1B4()
{
  sub_1C43FCF70();
  v1 = v0[8];
  sub_1C43FC948(v0[9]);
  sub_1C4403860();

  if (v0[5])
  {
    if (sub_1C43FDF34())
    {
      v2 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v0[10] = v4;
      v0[11] = v3;
      v5 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore29UniversalEmbeddingAssetLoader_client);
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v6 = swift_allocObject();
      v0[12] = v6;
      *(v6 + 16) = xmmword_1C4F0D130;
      *(v6 + 32) = v4;
      *(v6 + 40) = v3;
      v7 = *(MEMORY[0x1E69A9B88] + 4);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v8 = swift_task_alloc();
      v0[13] = v8;
      *v8 = v0;
      sub_1C43FC688(v8);

      return MEMORY[0x1EEE13BF0](v6);
    }
  }

  else
  {
    sub_1C4420C3C((v0 + 2), &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  sub_1C43FBCF0();

  return v9(0);
}

uint64_t sub_1C4B9A330()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 104);
  *v4 = *v1;
  v3[14] = v7;
  v3[15] = v0;

  if (v0)
  {
    v8 = sub_1C4B9A710;
  }

  else
  {
    v9 = v3[12];

    v8 = sub_1C4B9A440;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C4B9A440()
{
  v33 = v0;
  v2 = v0[14];
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (*(v3 + 16) == 512)
    {
      v4 = v0[11];

      goto LABEL_17;
    }

    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v20 = v0[11];
    v21 = sub_1C4F00978();
    sub_1C43FCEE8(v21, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();

    v23 = os_log_type_enabled(v8, v22);
    v24 = v0[11];
    if (v23)
    {
      v25 = v0[10];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32 = v27;
      *v26 = 136315394;
      sub_1C441D828(v25, v24, &v32);

      sub_1C442F3F0();
      *(v26 + 14) = v24;

      sub_1C4423818(&dword_1C43F8000, v28, v29, "UniversalEmbeddingModelClient: Input string (%s) vector has %ld dimensions.");
      sub_1C440962C(v27);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      goto LABEL_12;
    }

    swift_bridgeObjectRelease_n();

LABEL_15:

    goto LABEL_16;
  }

  v5 = v0[14];

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v6 = v0[11];
  v7 = sub_1C4F00978();
  sub_1C43FCEE8(v7, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CD8();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[11];
  if (!v10)
  {

    goto LABEL_15;
  }

  v12 = v0[10];
  sub_1C43FD084();
  v13 = sub_1C4402BBC();
  v32 = v13;
  *v1 = 136315138;
  v14 = sub_1C44057DC();
  v17 = sub_1C441D828(v14, v15, v16);

  *(v1 + 4) = v17;
  sub_1C440A610(&dword_1C43F8000, v18, v9, "UniversalEmbeddingModelClient: Input string (%s) cannot be encoded.");
  sub_1C440962C(v13);
  sub_1C43FBCFC();
  MEMORY[0x1C6942830](v19);
LABEL_12:
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();

LABEL_16:
  v3 = 0;
LABEL_17:
  sub_1C43FBCF0();

  return v30(v3);
}

uint64_t sub_1C4B9A710()
{
  sub_1C43FBCD4();
  v2 = v0[11];
  v1 = v0[12];

  sub_1C43FBDA0();
  v4 = v0[15];

  return v3();
}

uint64_t sub_1C4B9A77C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1C4EFC2D8();
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 104);

  return v7(a2, v3, v5);
}

uint64_t sub_1C4B9A7F8(void *a1)
{
  sub_1C4B963D8();
  v3 = *(v1 + *a1);

  sub_1C44366B4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B9A8C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_idAttribute;
  v5 = sub_1C4EFC308();
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 16);

  return v8(a1, v3 + v4, v6);
}

uint64_t sub_1C4B9A93C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C4703368;

  return sub_1C4B9A19C(a1);
}

char *sub_1C4B9A9D4(char *a1, uint64_t a2)
{
  if (!a1 || (a2 - a1 + 3) < 7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = (a2 - a1) / 4;
  v3 = sub_1C497EDBC();
  result = sub_1C497FCC8((v3 + 32), v4, a1, v4);
  if (v6 == v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4B9AA60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4B9AAA8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1C4F013D8();
    sub_1C4402518(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1C6940060](15, a1 >> 16);
    sub_1C4402518(v3);
    return v4 | 8;
  }
}

void *sub_1C4B9AB04(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v8 = WORD2(a2);
  v7 = a2;
  result = sub_1C4B984CC(&v6, &v6 + BYTE6(a2), &v5);
  if (!v2)
  {
    result = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1C4B9AB80(uint64_t a1, uint64_t a2)
{
  result = sub_1C4EF9538();
  v5 = result;
  if (result)
  {
    result = sub_1C4EF9568();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1C4EF9558();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = &v5[v9];
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_1C4B9A9D4(v5, v11);
}

uint64_t sub_1C4B9AC0C(uint64_t a1, uint64_t a2)
{
  result = sub_1C4EF9538();
  v6 = result;
  if (result)
  {
    result = sub_1C4EF9568();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v6 += a1 - result;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = sub_1C4EF9558();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = &v6[v10];
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = sub_1C4B984CC(v6, v12, &v13);
  if (!v2)
  {
    return v13;
  }

  return result;
}

id sub_1C4B9ACA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1C4F01108();

  v9 = [a5 sentenceEmbeddingVectorDataForString:v8 language:a3 error:a4];

  return v9;
}

unint64_t sub_1C4B9AD24(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1C4B9ADC4(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1C4B9AE34(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1C4B9ADC4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1C4B9AAA8(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C4B9AE34(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x1EEE6A340]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1C4F022F8();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

unint64_t sub_1C4B9AF40(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_1C4B9AD24(0xFuLL, a1, a2);
  result = sub_1C4B9AD24(v6, a1, a2);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1C4F01228();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22 = a1;
          v23 = a2 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_1C4F022F8();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1C4F01238();
        v7 = result;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22 = a1;
          v23 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_1C4F022F8();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_42;
  }

  return 0;
}