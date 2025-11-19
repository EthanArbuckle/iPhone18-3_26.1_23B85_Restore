uint64_t sub_1C4B2C6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v76 = a1;
  v70 = a3;
  v72 = sub_1C4EF9CD8();
  v69 = *(v72 - 8);
  v4 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EntityTriple(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  v21 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v63 - v29;
  v31 = v77;
  result = sub_1C4ACE7DC();
  if (!v31)
  {
    v64 = v27;
    v65 = v24;
    v66 = 0;
    v67 = v9;
    v68 = v13;
    v33 = v73;
    v34 = v74;
    v77 = v30;
    if (v75)
    {
      v35 = v75;
      sub_1C44D0BD8(v75, v20);
      v36 = v33;
      if (sub_1C44157D4(v20, 1, v10) == 1)
      {
        sub_1C4420C3C(v20, &qword_1EC0BA590, &qword_1C4F1F430);
        v37 = 1;
      }

      else
      {
        (*(v33 + 16))(v77, v20, v34);
        sub_1C44DBD5C(v20, type metadata accessor for EntityTriple);
        v37 = 0;
      }
    }

    else
    {
      v35 = 0;
      v37 = 1;
      v36 = v73;
    }

    v38 = v76;
    sub_1C440BAA8(v77, v37, 1, v34);
    sub_1C44D0BD8(v38, v17);
    if (sub_1C44157D4(v17, 1, v10) == 1)
    {
      sub_1C4420C3C(v17, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v39 = sub_1C4F00978();
      sub_1C442B738(v39, qword_1EDE2DE10);
      v40 = sub_1C4F00968();
      v41 = sub_1C4F01CD8();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v77;
      if (v42)
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1C43F8000, v40, v41, "Software Matcher: skipping entityTriples are empty", v44, 2u);
        MEMORY[0x1C6942830](v44, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v45 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v43, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C448566C(v17, v68);
      if (v35)
      {
        v46 = sub_1C4B2AE24(v38, v35);
      }

      else
      {
        v46 = 0.0;
      }

      v47 = v70;
      v48 = v67;
      v49 = v64;
      v75 = type metadata accessor for SoftwareMatcher();
      v76 = v3;
      v50 = *(v3 + *(v75 + 28));
      v51 = v77;
      if (v46 <= v50)
      {
        sub_1C4EFF008();
        sub_1C4420C3C(v51, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v49, 0, 1, v34);
        sub_1C44DDDBC(v49, v51);
        v46 = v50;
      }

      v52 = v65;
      sub_1C457E858(v51, v65);
      if (sub_1C44157D4(v52, 1, v34) == 1)
      {
        sub_1C4420C3C(v52, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v36 + 32))(v48, v52, v34);
        sub_1C4EFD538();
        v53 = v48;
        v54 = v34;
        v55 = type metadata accessor for EntityMatch(0);
        v56 = v36;
        v57 = *(v36 + 16);
        v58 = v68;
        v57(v47 + v55[5], v68, v54);
        v57(v47 + v55[6], v53, v54);
        v59 = v71;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v61 = v60;
        (*(v69 + 8))(v59, v72);
        (*(v56 + 8))(v53, v54);
        sub_1C44DBD5C(v58, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v51, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v62 = *(v76 + *(v75 + 24));
        *(v47 + v55[7]) = v46;
        *(v47 + v55[8]) = v61;
        *(v47 + v55[9]) = v62;
        *(v47 + v55[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4B2CDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v73 = a1;
  v71 = a3;
  v70 = sub_1C4EF9CD8();
  v74 = *(v70 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v65 - v12;
  v14 = type metadata accessor for EntityTriple(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v65 - v20;
  v22 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v65 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v65 - v30;
  v32 = v77;
  result = sub_1C4ACE7DC();
  if (!v32)
  {
    v65 = v28;
    v66 = v25;
    v67 = 0;
    v68 = v9;
    v77 = v17;
    v34 = v75;
    v35 = v31;
    v36 = v72;
    if (v72)
    {
      sub_1C486854C(v72, v21);
      v37 = type metadata accessor for ConstructionGraphTriple(0);
      v38 = v13;
      if (sub_1C44157D4(v21, 1, v37) == 1)
      {
        sub_1C4420C3C(v21, &unk_1EC0BCAE0, &unk_1C4F142A0);
        v39 = 1;
      }

      else
      {
        (*(v34 + 16))(v31, v21, v76);
        sub_1C44DBD5C(v21, type metadata accessor for ConstructionGraphTriple);
        v39 = 0;
      }

      v40 = v73;
      v41 = v74;
    }

    else
    {
      v39 = 1;
      v40 = v73;
      v41 = v74;
      v38 = v13;
    }

    sub_1C440BAA8(v35, v39, 1, v76);
    sub_1C44D0BD8(v40, v38);
    if (sub_1C44157D4(v38, 1, v14) == 1)
    {
      sub_1C4420C3C(v38, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v42 = sub_1C4F00978();
      sub_1C442B738(v42, qword_1EDE2DE10);
      v43 = sub_1C4F00968();
      v44 = sub_1C4F01CD8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C43F8000, v43, v44, "Software Matcher: skipping entityTriples are empty", v45, 2u);
        MEMORY[0x1C6942830](v45, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v35, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      v47 = v3;
      sub_1C448566C(v38, v77);
      if (v36)
      {
        v48 = sub_1C4B2B700(v40, v36, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, sub_1C459DC78, type metadata accessor for ConstructionGraphTriple);
      }

      else
      {
        v48 = 0.0;
      }

      v49 = v71;
      v50 = v76;
      v51 = v68;
      v52 = v65;
      v74 = type metadata accessor for SoftwareMatcher();
      v53 = *(v47 + *(v74 + 28));
      if (v48 <= v53)
      {
        sub_1C4EFF008();
        v50 = v76;
        sub_1C4420C3C(v35, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v52, 0, 1, v50);
        sub_1C44DDDBC(v52, v35);
        v48 = v53;
      }

      v76 = v47;
      v54 = v66;
      sub_1C457E858(v35, v66);
      v55 = sub_1C44157D4(v54, 1, v50);
      v73 = v35;
      if (v55 == 1)
      {
        sub_1C4420C3C(v54, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        v56 = v75;
        (*(v75 + 32))(v51, v54, v50);
        sub_1C4EFD538();
        v57 = type metadata accessor for EntityMatch(0);
        v58 = v50;
        v59 = *(v56 + 16);
        v60 = v77;
        v59(v49 + v57[5], v77, v50);
        v59(v49 + v57[6], v51, v50);
        v61 = v69;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v63 = v62;
        (*(v41 + 8))(v61, v70);
        (*(v56 + 8))(v51, v58);
        sub_1C44DBD5C(v60, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v73, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v64 = *(v76 + *(v74 + 24));
        *(v49 + v57[7]) = v48;
        *(v49 + v57[8]) = v63;
        *(v49 + v57[9]) = v64;
        *(v49 + v57[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t SoftwareMatcher.execute()()
{
  *(v1 + 24) = v0;
  v2 = *(*(sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B2D62C, 0, 0);
}

uint64_t sub_1C4B2D62C()
{
  v44 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
  v4 = type metadata accessor for SoftwareMatcher();
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
      v24 = sub_1C4B2DB90;
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
          v24 = sub_1C4B2DCE0;
LABEL_9:
          sub_1C44C6BB4(v2 + v6, v22, 0, 1, v24, v23);
        }

LABEL_11:
        v37 = v0[3];
        v38 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C4642C50();
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
      sub_1C456902C(&qword_1EC0BA4E0, &unk_1C4F14210);
      v25 = sub_1C4F01198();
      MEMORY[0x1C6940010](v25);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v5));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C4B2DA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
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

uint64_t sub_1C4B2DAA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return SoftwareMatcher.execute()();
}

uint64_t sub_1C4B2DBC0(uint64_t a1)
{
  result = sub_1C4B2DC98(&qword_1EDDF6660, type metadata accessor for SoftwareMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B2DC18(uint64_t a1)
{
  result = sub_1C4B2DC98(qword_1EDDF6670, type metadata accessor for SoftwareMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B2DC98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4B2DD08()
{
  if (qword_1EC0B7100 != -1)
  {
    swift_once();
  }

  qword_1EC152BE8 = qword_1EC0C3808;
  *algn_1EC152BF0 = *&qword_1EC0C3810;
  qword_1EC152C00 = qword_1EC0C3820;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4B2DD88(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C3578, &qword_1C4F51B98);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B2E48C();
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

uint64_t sub_1C4B2DF64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0C3568, &unk_1C4F51B88);
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B2E48C();
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

uint64_t sub_1C4B2E1DC(uint64_t a1)
{
  v2 = sub_1C4B2E48C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B2E218(uint64_t a1)
{
  v2 = sub_1C4B2E48C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B2E254@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B70B0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC152C00;
  *a1 = qword_1EC152BE8;
  *(a1 + 8) = *algn_1EC152BF0;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

double sub_1C4B2E2D8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4B2DF64(a1, v6);
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

unint64_t sub_1C4B2E338(uint64_t a1)
{
  result = sub_1C4B2E360();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4B2E360()
{
  result = qword_1EC0C3550;
  if (!qword_1EC0C3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3550);
  }

  return result;
}

unint64_t sub_1C4B2E3B4(uint64_t a1)
{
  *(a1 + 8) = sub_1C4B2E3E4();
  result = sub_1C4B2E438();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4B2E3E4()
{
  result = qword_1EC0C3558;
  if (!qword_1EC0C3558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3558);
  }

  return result;
}

unint64_t sub_1C4B2E438()
{
  result = qword_1EC0C3560;
  if (!qword_1EC0C3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3560);
  }

  return result;
}

unint64_t sub_1C4B2E48C()
{
  result = qword_1EC0C3570;
  if (!qword_1EC0C3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3570);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Song.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4B2E5C0()
{
  result = qword_1EC0C3580;
  if (!qword_1EC0C3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3580);
  }

  return result;
}

unint64_t sub_1C4B2E618()
{
  result = qword_1EC0C3588;
  if (!qword_1EC0C3588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3588);
  }

  return result;
}

unint64_t sub_1C4B2E670()
{
  result = qword_1EC0C3590;
  if (!qword_1EC0C3590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3590);
  }

  return result;
}

void sub_1C4B2E730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = *(v22 + 16);
  v24 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4499940(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4B2E75C(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1C4F00F28();
  sub_1C4B2E814(a1, 1953460082, 0xE400000000000000, v2);
  swift_beginAccess();
  v3 = *(v2 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return v3;
}

uint64_t sub_1C4B2E814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C465C024(a2, a3, *(a4 + 16));
  v9 = v8;
  swift_endAccess();
  if (v9)
  {
    v53 = a2;
    v54 = a3;
    v10 = a1 + 64;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 64);
    v14 = (v11 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = 0;
    v16 = 0.0;
    v17 = 0.0;
    v55 = a1;
    v56 = v14;
    v57 = a1 + 64;
    if (v13)
    {
      while (1)
      {
        v18 = v15;
LABEL_10:
        v19 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v20 = v19 | (v18 << 6);
        v21 = (*(a1 + 48) + 16 * v20);
        v23 = *v21;
        v22 = v21[1];
        sub_1C443E52C(*(a1 + 56) + 32 * v20, &v61);
        v25 = *(&v61 + 1);
        v24 = v61;
        v27 = *(&v62 + 1);
        v26 = v62;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_11:
        v63 = v23;
        v64 = v22;
        v65[0] = v24;
        v65[1] = v25;
        v65[2] = v26;
        v65[3] = v27;
        if (!v22)
        {
          goto LABEL_39;
        }

        if (*(a1 + 16))
        {
          v28 = sub_1C445FAA8(v23, v22);
          if (v29)
          {
            sub_1C443E52C(*(a1 + 56) + 32 * v28, &v59);
            v61 = v59;
            v62 = v60;
            if (*(&v60 + 1))
            {
              sub_1C456902C(&qword_1EC0BA6D0, &qword_1C4F14648);
              if (swift_dynamicCast())
              {
                v30 = sub_1C4B2E814(*&v58, v23, v22, a4);

                goto LABEL_35;
              }
            }

            else
            {
              sub_1C4448244(&v61);
            }
          }
        }

        if (!*(a1 + 16))
        {
          goto LABEL_25;
        }

        v31 = sub_1C445FAA8(v23, v22);
        if ((v32 & 1) == 0)
        {
          goto LABEL_25;
        }

        sub_1C443E52C(*(a1 + 56) + 32 * v31, &v59);
        v61 = v59;
        v62 = v60;
        if (!*(&v60 + 1))
        {
          break;
        }

        if (!swift_dynamicCast())
        {
          goto LABEL_25;
        }

        v30 = v58;
LABEL_26:
        swift_beginAccess();
        v33 = *(a4 + 16);
        swift_isUniquelyReferenced_nonNull_native();
        *&v59 = *(a4 + 16);
        v34 = v59;
        v35 = a4;
        *(a4 + 16) = 0x8000000000000000;
        v36 = sub_1C445FAA8(v23, v22);
        if (__OFADD__(*(v34 + 16), (v37 & 1) == 0))
        {
          goto LABEL_42;
        }

        v38 = v36;
        v39 = v37;
        sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
        if (sub_1C4F02458())
        {
          v40 = sub_1C445FAA8(v23, v22);
          if ((v39 & 1) != (v41 & 1))
          {
            goto LABEL_45;
          }

          v38 = v40;
        }

        if (v39)
        {

          v42 = v59;
          *(*(v59 + 56) + 8 * v38) = v30;
        }

        else
        {
          v42 = v59;
          *(v59 + 8 * (v38 >> 6) + 64) |= 1 << v38;
          v43 = (v42[6] + 16 * v38);
          *v43 = v23;
          v43[1] = v22;
          *(v42[7] + 8 * v38) = v30;
          v44 = v42[2];
          v45 = __OFADD__(v44, 1);
          v46 = v44 + 1;
          if (v45)
          {
            goto LABEL_43;
          }

          v42[2] = v46;
        }

        a4 = v35;
        *(v35 + 16) = v42;
        swift_endAccess();
        a1 = v55;
LABEL_35:
        v14 = v56;
        v10 = v57;
        v17 = v17 + v30;
        v16 = v16 + 1.0;
        sub_1C4448244(v65);
        if (!v13)
        {
          goto LABEL_6;
        }
      }

      sub_1C4448244(&v61);
LABEL_25:
      v30 = 0.0;
      goto LABEL_26;
    }

LABEL_6:
    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v14)
      {
        v26 = 0;
        v25 = 0;
        v24 = 0;
        v22 = 0;
        v23 = 0;
        v27 = 0;
        v13 = 0;
        goto LABEL_11;
      }

      v13 = *(v10 + 8 * v18);
      ++v15;
      if (v13)
      {
        v15 = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  swift_beginAccess();
  sub_1C465C024(a2, a3, *(a4 + 16));
  v48 = v47;
  result = swift_endAccess();
  if (v48)
  {
    __break(1u);
LABEL_39:

    swift_beginAccess();
    v50 = *(a4 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    *&v61 = *(a4 + 16);
    sub_1C4660594();
    v51 = v61;
    *(a4 + 16) = v61;
    swift_endAccess();
    result = sub_1C465C024(v53, v54, v51);
    if (v52)
    {
LABEL_44:
      __break(1u);
LABEL_45:
      result = sub_1C4F029F8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C4B2ECDC(void *a1)
{
  result = sub_1C4F00F28();
  if (a1)
  {
    v3 = a1;

    BMContextualUnderstandingSoundAnalysis.asHierarchicalDictionary()();
    v5 = sub_1C4B2E75C(v4);

    return v5;
  }

  return result;
}

uint64_t sub_1C4B2ED6C()
{
  v1 = objc_autoreleasePoolPush();
  sub_1C4B2EDBC(v0, &v3);
  objc_autoreleasePoolPop(v1);
  return v3;
}

uint64_t sub_1C4B2EDBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27 = a2;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = sub_1C4EF9CD8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  sub_1C4EF9CC8();
  sub_1C4EF9B38();
  v17 = *(a1 + 32);
  (*(v11 + 16))(v9, v15, v10);
  sub_1C440BAA8(v9, 0, 1, v10);
  sub_1C440BAA8(v6, 1, 1, v10);
  v18 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v19 = sub_1C457A86C(v9, v6, 1, 1, 0);
  v20 = [v17 publisherWithOptions_];

  v32 = nullsub_1;
  v33 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1C44405F8;
  v31 = &unk_1F43FCD68;
  v21 = _Block_copy(&aBlock);
  v32 = sub_1C4B2F91C;
  v33 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1C4440590;
  v31 = &unk_1F43FCD90;
  v22 = _Block_copy(&aBlock);

  v23 = [v20 sinkWithCompletion:v21 receiveInput:v22];
  _Block_release(v22);
  _Block_release(v21);

  (*(v11 + 8))(v15, v10);
  swift_beginAccess();
  v24 = *(v16 + 16);
  *v27 = v24;
  v25 = v24;
}

void sub_1C4B2F144(void *a1, uint64_t a2)
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
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Exception: Unable to parse eventBody from read event in sound featurizer", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }
  }
}

uint64_t sub_1C4B2F27C()
{
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v0 = sub_1C4F00F28();
  v45 = sub_1C4B2ED6C();
  v1 = sub_1C4B2ECDC(v45);
  v2 = v1;
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
LABEL_4:
  v46 = v0;
  while (v6)
  {
LABEL_10:
    v10 = (v2[6] + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v11 = *v10;
    v12 = v10[1];
    v13 = v2[2];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v13 && (v14 = sub_1C44191B8(), v16 = sub_1C445FAA8(v14, v15), (v17 & 1) != 0))
    {
      v18 = 0;
      v19 = *(v2[7] + 8 * v16);
    }

    else
    {
      v19 = 0;
      v18 = 1;
    }

    v6 &= v6 - 1;
    v20 = sub_1C4A3B944(v19, v18);
    if (v20)
    {
      v28 = v20;
      swift_isUniquelyReferenced_nonNull_native();
      v48 = v46;
      v29 = sub_1C44191B8();
      v44 = sub_1C445FAA8(v29, v30);
      v47 = v31;
      if (__OFADD__(v48[2], (v31 & 1) == 0))
      {
        goto LABEL_27;
      }

      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      if ((sub_1C4F02458() & 1) == 0)
      {
        v36 = v44;
        if ((v47 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_24:

        v0 = v48;
        v41 = v48[7];
        v42 = *(v41 + 8 * v36);
        *(v41 + 8 * v36) = v28;

        goto LABEL_4;
      }

      v32 = sub_1C44191B8();
      v34 = sub_1C445FAA8(v32, v33);
      if ((v47 & 1) != (v35 & 1))
      {
        goto LABEL_29;
      }

      v36 = v34;
      if (v47)
      {
        goto LABEL_24;
      }

LABEL_21:
      v48[(v36 >> 6) + 8] |= 1 << v36;
      v37 = (v48[6] + 16 * v36);
      *v37 = v11;
      v37[1] = v12;
      *(v48[7] + 8 * v36) = v28;
      v38 = v48[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_28;
      }

      v0 = v48;
      v48[2] = v40;
      goto LABEL_4;
    }

    v21 = sub_1C44191B8();
    v0 = v46;
    v23 = sub_1C445FAA8(v21, v22);
    v25 = v24;

    if (v25)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v26 = v46[3];
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();
      v27 = *(v46[6] + 16 * v23 + 8);

      sub_1C4F02478();
      goto LABEL_4;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v0;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4B2F70C()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1C4B2F734()
{
  sub_1C4B2F70C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B2F78C()
{
  v1 = v0;
  sub_1C4461BB8(0, &qword_1EDDDB8A0, 0x1E698EB70);
  *(v0 + 16) = static BMContextualUnderstandingSoundAnalysis.soundHierarchyLabels()();
  *(v0 + 24) = 0xC08C200000000000;
  v2 = [BiomeLibrary() ContextualUnderstanding];
  swift_unknownObjectRelease();
  v3 = [v2 SoundAnalysis];
  swift_unknownObjectRelease();
  *(v1 + 32) = v3;
  return v1;
}

unint64_t sub_1C4B2F8A0(uint64_t a1)
{
  result = sub_1C4B2F8C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4B2F8C8()
{
  result = qword_1EC0C3598;
  if (!qword_1EC0C3598)
  {
    type metadata accessor for SoundAnalysisSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3598);
  }

  return result;
}

uint64_t sub_1C4B2F92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490A14(&qword_1EDDF0D70, type metadata accessor for Source);

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t sub_1C4B2FA40()
{
  v1 = v0;
  v2 = v0 + *(type metadata accessor for Source() + 24);
  sub_1C4EFD3D8();
  sub_1C4415EA8();
  v3 = sub_1C4F01FD8();

  MEMORY[0x1C6940010](47, 0xE100000000000000);
  MEMORY[0x1C6940010](*v1, v1[1]);
  MEMORY[0x1C6940010](0x65697469746E652FLL, 0xE900000000000073);
  return v3;
}

uint64_t Source.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v61 - v8;
  v10 = type metadata accessor for Source();
  v11 = sub_1C43FBCE0(v10);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v61 - v17;
  v19 = a1 == 0x6361746E6F434E43 && a2 == 0xE900000000000074;
  if (v19 || (sub_1C44329A8() & 1) != 0)
  {

    if (qword_1EDDFED28 != -1)
    {
      sub_1C440FADC();
    }

    v20 = &unk_1EDDFD088;
  }

  else
  {
    v24 = a1 == 0x6E6F737265504E49 && a2 == 0xE800000000000000;
    if (v24 || (sub_1C44329A8() & 1) != 0)
    {

      if (qword_1EDDFD0D0 != -1)
      {
        sub_1C4410520();
      }

      v20 = qword_1EDDFD0D8;
    }

    else
    {
      v25 = a1 == 0x6E6576456566696CLL && a2 == 0xE900000000000074;
      if (v25 || (sub_1C44329A8() & 1) != 0)
      {

        if (qword_1EDDFED08 != -1)
        {
          sub_1C440B19C();
        }

        v20 = qword_1EDDFED10;
      }

      else
      {
        v26 = a1 == 0x694C657275747566 && a2 == 0xEF746E6576456566;
        if (v26 || (sub_1C44329A8() & 1) != 0)
        {

          if (qword_1EDDFED40 != -1)
          {
            sub_1C440604C();
          }

          v20 = qword_1EDDFD2A8;
        }

        else
        {
          v27 = a1 == 0xD000000000000011 && 0x80000001C4F8EE80 == a2;
          if (v27 || (sub_1C44329A8() & 1) != 0)
          {

            if (qword_1EDDFD268 != -1)
            {
              sub_1C4404CEC();
            }

            v20 = &qword_1EDDFD270;
          }

          else
          {
            v28 = a1 == 0x636E657265666E69 && a2 == 0xE900000000000065;
            if (v28 || (sub_1C44329A8() & 1) != 0)
            {

              if (qword_1EDDFD040 != -1)
              {
                sub_1C44046D4();
              }

              v20 = qword_1EDDFD048;
            }

            else
            {
              v29 = a1 == 0x6361746E6F434753 && a2 == 0xE900000000000074;
              if (v29 || (sub_1C44329A8() & 1) != 0)
              {

                if (qword_1EDDFD068 != -1)
                {
                  sub_1C44123D8();
                }

                v20 = qword_1EDDFD070;
              }

              else
              {
                v30 = a1 == 0x746E6576454753 && a2 == 0xE700000000000000;
                if (v30 || (sub_1C44329A8() & 1) != 0)
                {

                  if (qword_1EDDFD110 != -1)
                  {
                    sub_1C4403664();
                  }

                  v20 = qword_1EDDFD118;
                }

                else
                {
                  v31 = a1 == 0x70756F72474E49 && a2 == 0xE700000000000000;
                  if (v31 || (sub_1C44329A8() & 1) != 0)
                  {

                    if (qword_1EDDFD130 != -1)
                    {
                      sub_1C44123B8();
                    }

                    v20 = qword_1EDDFD138;
                  }

                  else
                  {
                    v32 = a1 == 0x6E6F737265504850 && a2 == 0xE800000000000000;
                    if (v32 || (sub_1C44329A8() & 1) != 0)
                    {

                      if (qword_1EDDFD0A8 != -1)
                      {
                        sub_1C440FA20();
                      }

                      v20 = qword_1EDDFD0B0;
                    }

                    else
                    {
                      sub_1C4408FD0();
                      v35 = a1 == v34 + 12 && v33 == a2;
                      if (v35 || (sub_1C44329A8() & 1) != 0)
                      {

                        if (qword_1EDDFD178 != -1)
                        {
                          sub_1C443012C();
                        }

                        v20 = &qword_1EDDFD180;
                      }

                      else
                      {
                        v36 = a1 == 0x796C696D61464146 && a2 == 0xE800000000000000;
                        if (v36 || (sub_1C44329A8() & 1) != 0)
                        {

                          if (qword_1EDDFED38 != -1)
                          {
                            sub_1C4408FF0();
                          }

                          v20 = qword_1EDDFD0F0;
                        }

                        else
                        {
                          v37 = a1 == 0x746E6576454B45 && a2 == 0xE700000000000000;
                          if (v37 || (sub_1C44329A8() & 1) != 0)
                          {

                            if (qword_1EDDFD150 != -1)
                            {
                              sub_1C4426E18();
                            }

                            v20 = qword_1EDDFD158;
                          }

                          else
                          {
                            v38 = a1 == 0x656C646E7542534CLL && a2 == 0xEE0064726F636552;
                            if (v38 || (sub_1C44329A8() & 1) != 0)
                            {

                              if (qword_1EDDFD2F0 != -1)
                              {
                                sub_1C44253F4();
                              }

                              v20 = qword_1EDDFD2F8;
                            }

                            else
                            {
                              sub_1C4408FD0();
                              v41 = a1 == v40 && v39 == a2;
                              if (v41 || (sub_1C44329A8() & 1) != 0)
                              {

                                if (qword_1EDDFD218 != -1)
                                {
                                  sub_1C441BCC4();
                                }

                                v20 = &qword_1EDDFD220;
                              }

                              else
                              {
                                sub_1C4408FD0();
                                v44 = a1 == v43 && v42 == a2;
                                if (v44 || (sub_1C44329A8() & 1) != 0)
                                {

                                  if (qword_1EDDFD240 != -1)
                                  {
                                    sub_1C440A0AC();
                                  }

                                  v20 = &qword_1EDDFD248;
                                }

                                else
                                {
                                  v45 = a1 == 0x6E6F6974616C6552 && a2 == 0xEC00000070696873;
                                  if (v45 || (sub_1C44329A8() & 1) != 0)
                                  {

                                    if (qword_1EDDFD318 != -1)
                                    {
                                      sub_1C4414EC8();
                                    }

                                    v20 = qword_1EDDFD320;
                                  }

                                  else
                                  {
                                    v46 = a1 == 0x69546E6565726353 && a2 == 0xEA0000000000656DLL;
                                    if (v46 || (sub_1C44329A8() & 1) != 0)
                                    {

                                      if (qword_1EDDFD340 != -1)
                                      {
                                        sub_1C441EF00();
                                      }

                                      v20 = qword_1EDDFD348;
                                    }

                                    else
                                    {
                                      v47 = a1 == 0x6974616C65524750 && a2 == 0xEE00706968736E6FLL;
                                      if (v47 || (sub_1C44329A8() & 1) != 0)
                                      {

                                        if (qword_1EDDFD2C8 != -1)
                                        {
                                          sub_1C43FC868();
                                        }

                                        v20 = qword_1EDDFD2D0;
                                      }

                                      else
                                      {
                                        sub_1C4408FD0();
                                        v50 = a1 == v49 && v48 == a2;
                                        if (v50 || (sub_1C44329A8() & 1) != 0)
                                        {

                                          if (qword_1EDDFD1F0 != -1)
                                          {
                                            sub_1C4425FD4();
                                          }

                                          v20 = &qword_1EDDFD1F8;
                                        }

                                        else
                                        {
                                          sub_1C4408FD0();
                                          v53 = a1 == v52 - 2 && v51 == a2;
                                          if (v53 || (sub_1C44329A8() & 1) != 0)
                                          {

                                            if (qword_1EDDFD288 != -1)
                                            {
                                              sub_1C443373C();
                                            }

                                            v20 = &qword_1EDDFD290;
                                          }

                                          else
                                          {
                                            sub_1C4408FD0();
                                            v56 = a1 == v55 + 4 && v54 == a2;
                                            if (v56 || (sub_1C44329A8() & 1) != 0)
                                            {

                                              if (qword_1EDDFD1A0 != -1)
                                              {
                                                sub_1C440D7D8();
                                              }

                                              v20 = &qword_1EDDFD1A8;
                                            }

                                            else
                                            {
                                              sub_1C4408FD0();
                                              v59 = a1 == v58 && v57 == a2;
                                              if (!v59 && (sub_1C44329A8() & 1) == 0)
                                              {
                                                if (qword_1EDDFDCF8 != -1)
                                                {
                                                  sub_1C43FF284();
                                                }

                                                swift_beginAccess();
                                                if (qword_1EDDFF3C8)
                                                {
                                                  (*(off_1EDDFF3D0 + 2))();
                                                  (*(v60 + 8))(a1, a2);

                                                  if (sub_1C44157D4(v9, 1, v10) != 1)
                                                  {
                                                    sub_1C448B210(v9, v16);
                                                    sub_1C448B210(v16, v18);
                                                    goto LABEL_10;
                                                  }
                                                }

                                                else
                                                {

                                                  sub_1C440BAA8(v9, 1, 1, v10);
                                                }

                                                sub_1C46A1238(v9);
                                                v22 = 1;
                                                return sub_1C440BAA8(a3, v22, 1, v10);
                                              }

                                              if (qword_1EDDFD1C8 != -1)
                                              {
                                                sub_1C4411194();
                                              }

                                              v20 = &qword_1EDDFD1D0;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v21 = sub_1C442B738(v10, v20);
  sub_1C449ED64(v21, v18);
LABEL_10:
  sub_1C448B210(v18, a3);
  v22 = 0;
  return sub_1C440BAA8(a3, v22, 1, v10);
}

void *static Source.allSources.getter()
{
  if (qword_1EDDFA690 != -1)
  {
    sub_1C44163D4();
  }

  v0 = off_1EDDFA698;
  v3 = off_1EDDFA698;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v1 = sub_1C4B325E4();
  if (v1)
  {
    sub_1C49D3594(v1);
    return v3;
  }

  return v0;
}

uint64_t sub_1C4B30618()
{
  v0 = sub_1C4EFD548();
  v1 = sub_1C4403200(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = sub_1C4400D34();
  sub_1C44F9918(v4, &unk_1EDDFD088);
  sub_1C4420260();
  sub_1C4EFD4C8();
  v5 = sub_1C441A4CC(0x6361746E6F434E43);
  result = v6(v5);
  *(&unk_1EDDFD088 + *(v4 + 28)) = 1;
  qword_1EDDFD098 = 1;
  return result;
}

uint64_t Source.init(id:entityClass:shouldDedupe:intValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for Source();
  v11 = *(v10 + 24);
  v12 = sub_1C4EFD548();
  sub_1C43FBCE0(v12);
  result = (*(v13 + 32))(&a6[v11], a3);
  a6[*(v10 + 28)] = a4;
  *(a6 + 2) = a5;
  return result;
}

void sub_1C4B307A8()
{
  v0 = sub_1C4EFD548();
  v1 = sub_1C4403200(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = sub_1C4400D34();
  sub_1C44F9918(v4, qword_1EDDFD0D8);
  sub_1C4420260();
  sub_1C4EFD4C8();
  v5 = sub_1C441A4CC(0x6E6F737265504E49);
  v6(v5);
  sub_1C4403704();
  sub_1C43FDE00(2);
}

void sub_1C4B3089C()
{
  v0 = sub_1C4EFD548();
  v1 = sub_1C4403200(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = sub_1C4400D34();
  sub_1C44F9918(v4, qword_1EDDFD0B0);
  sub_1C4420260();
  sub_1C4EFD4C8();
  v5 = sub_1C441A4CC(0x6E6F737265504850);
  v6(v5);
  sub_1C4403704();
  sub_1C43FDE00(6);
}

void sub_1C4B30990()
{
  v0 = sub_1C4EFD548();
  v1 = sub_1C4403200(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = sub_1C4400D34();
  sub_1C44F9918(v4, qword_1EDDFD158);
  sub_1C4420260();
  sub_1C4EFCF28();
  v5 = sub_1C441A4CC(0x746E6576454B45);
  v6(v5);
  sub_1C444FFBC();
  sub_1C43FDE00(9);
}

void sub_1C4B30A84()
{
  v0 = sub_1C4EFD548();
  v1 = sub_1C4403200(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = sub_1C4400D34();
  sub_1C44F9918(v4, qword_1EDDFD070);
  sub_1C4420260();
  sub_1C4EFD4C8();
  v5 = sub_1C441A4CC(0x6361746E6F434753);
  v6(v5);
  sub_1C4403704();
  sub_1C43FDE00(11);
}

void sub_1C4B30B7C()
{
  v0 = sub_1C4EFD548();
  v1 = sub_1C4403200(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = sub_1C4400D34();
  sub_1C44F9918(v4, qword_1EDDFD118);
  sub_1C4420260();
  sub_1C4EFCF28();
  v5 = sub_1C441A4CC(0x746E6576454753);
  v6(v5);
  sub_1C4403704();
  sub_1C43FDE00(12);
}

void sub_1C4B30C70()
{
  v0 = sub_1C4EFD548();
  v1 = sub_1C4403200(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = sub_1C4400D34();
  sub_1C44F9918(v4, qword_1EDDFD0F0);
  sub_1C4420260();
  sub_1C4EFCF48();
  v5 = sub_1C441A4CC(0x796C696D61464146);
  v6(v5);
  sub_1C4403704();
  sub_1C43FDE00(14);
}

void sub_1C4B30D64()
{
  v0 = sub_1C4EFD548();
  v1 = sub_1C4403200(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = sub_1C4400D34();
  sub_1C44F9918(v4, qword_1EDDFD2F8);
  sub_1C4420260();
  sub_1C4EFD538();
  v5 = sub_1C441A4CC(0x656C646E7542534CLL);
  v6(v5);
  sub_1C4403704();
  sub_1C43FDE00(16);
}

void sub_1C4B30E64()
{
  v0 = sub_1C4EFD548();
  v1 = sub_1C4403200(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = sub_1C4400D34();
  sub_1C44F9918(v4, qword_1EDDFED10);
  sub_1C4420260();
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  v5 = sub_1C441A4CC(0x6E6576456566696CLL);
  v6(v5);
  sub_1C4403704();
  sub_1C43FDE00(17);
}

void sub_1C4B30F5C()
{
  v0 = sub_1C4EFD548();
  v1 = sub_1C4403200(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = sub_1C4400D34();
  sub_1C44F9918(v4, qword_1EDDFD048);
  sub_1C4420260();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  v5 = sub_1C441A4CC(0x636E657265666E69);
  v6(v5);
  sub_1C4403704();
  sub_1C43FDE00(18);
}

void sub_1C4B31054()
{
  v1 = sub_1C4EFD548();
  v2 = sub_1C4403200(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1C4400D34();
  sub_1C44F9918(v5, &qword_1EDDFD270);
  sub_1C440B25C();
  sub_1C4413764();
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  qword_1EDDFD270 = 0xD000000000000011;
  unk_1EDDFD278 = v0;
  v6 = sub_1C4407AB4();
  v7(v6);
  sub_1C4403704();
  sub_1C43FDE00(19);
}

void sub_1C4B3114C()
{
  v0 = sub_1C4EFD548();
  v1 = sub_1C4403200(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = sub_1C4400D34();
  sub_1C44F9918(v4, qword_1EDDFD138);
  sub_1C4420260();
  sub_1C4EFCF48();
  v5 = sub_1C441A4CC(0x70756F72474E49);
  v6(v5);
  sub_1C4403704();
  sub_1C43FDE00(21);
}

void sub_1C4B31240()
{
  v1 = sub_1C4EFD548();
  v2 = sub_1C4403200(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1C4400D34();
  sub_1C44F9918(v5, &qword_1EDDFD180);
  sub_1C440B25C();
  sub_1C4413764();
  sub_1C4EFD4C8();
  qword_1EDDFD180 = 0xD00000000000001ELL;
  *algn_1EDDFD188 = v0;
  v6 = sub_1C4407AB4();
  v7(v6);
  sub_1C4403704();
  sub_1C43FDE00(22);
}

void sub_1C4B31338()
{
  v0 = sub_1C4EFD548();
  v1 = sub_1C4403200(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = sub_1C4400D34();
  sub_1C44F9918(v4, qword_1EDDFD2A8);
  sub_1C4420260();
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  v5 = sub_1C441A4CC(0x694C657275747566);
  v6(v5);
  sub_1C4403704();
  sub_1C43FDE00(23);
}

void sub_1C4B31438()
{
  v1 = sub_1C4EFD548();
  v2 = sub_1C4403200(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1C4400D34();
  sub_1C44F9918(v5, &qword_1EDDFD220);
  sub_1C440B25C();
  sub_1C4413764();
  sub_1C4EFD4C8();
  sub_1C4408FE4();
  qword_1EDDFD220 = v6;
  *algn_1EDDFD228 = v0;
  v7 = sub_1C4407AB4();
  v8(v7);
  sub_1C4403704();
  sub_1C43FDE00(24);
}

void sub_1C4B3152C()
{
  v1 = sub_1C4EFD548();
  v2 = sub_1C4403200(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1C4400D34();
  sub_1C44F9918(v5, &qword_1EDDFD248);
  sub_1C440B25C();
  sub_1C4413764();
  sub_1C4EFCED8();
  sub_1C4408FE4();
  qword_1EDDFD248 = v6;
  unk_1EDDFD250 = v0;
  v7 = sub_1C4407AB4();
  v8(v7);
  sub_1C4403704();
  sub_1C43FDE00(25);
}

void sub_1C4B31620()
{
  v0 = sub_1C4EFD548();
  v1 = sub_1C4403200(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = sub_1C4400D34();
  sub_1C44F9918(v4, qword_1EDDFD320);
  sub_1C4420260();
  sub_1C4EFD2C8();
  v5 = sub_1C441A4CC(0x6E6F6974616C6552);
  v6(v5);
  sub_1C4403704();
  sub_1C43FDE00(27);
}

void sub_1C4B3171C()
{
  v0 = sub_1C4EFD548();
  v1 = sub_1C4403200(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = sub_1C4400D34();
  sub_1C44F9918(v4, qword_1EDDFD348);
  sub_1C4420260();
  sub_1C4EFD0B8();
  v5 = sub_1C441A4CC(0x69546E6565726353);
  v6(v5);
  sub_1C4403704();
  sub_1C43FDE00(28);
}

void sub_1C4B31814()
{
  v0 = sub_1C4EFD548();
  v1 = sub_1C4403200(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = sub_1C4400D34();
  sub_1C44F9918(v4, qword_1EDDFD2D0);
  sub_1C4420260();
  sub_1C4EFD4C8();
  v5 = sub_1C441A4CC(0x6974616C65524750);
  v6(v5);
  sub_1C4403704();
  sub_1C43FDE00(29);
}

void sub_1C4B31914()
{
  v1 = sub_1C4EFD548();
  v2 = sub_1C4403200(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1C4400D34();
  sub_1C44F9918(v5, &qword_1EDDFD1F8);
  sub_1C440B25C();
  sub_1C4413764();
  sub_1C4EFCEF8();
  sub_1C4408FE4();
  qword_1EDDFD1F8 = v6;
  unk_1EDDFD200 = v0;
  v7 = sub_1C4407AB4();
  v8(v7);
  sub_1C4403704();
  sub_1C43FDE00(31);
}

void sub_1C4B31A08()
{
  v1 = sub_1C4EFD548();
  v2 = sub_1C4403200(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1C4400D34();
  sub_1C44F9918(v5, &qword_1EDDFD290);
  sub_1C440B25C();
  sub_1C4413764();
  sub_1C4EFCEF8();
  qword_1EDDFD290 = 0xD000000000000010;
  unk_1EDDFD298 = v0;
  v6 = sub_1C4407AB4();
  v7(v6);
  sub_1C444FFBC();
  sub_1C43FDE00(32);
}

void sub_1C4B31B00()
{
  v1 = sub_1C4EFD548();
  v2 = sub_1C4403200(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1C4400D34();
  sub_1C44F9918(v5, &qword_1EDDFD1A8);
  sub_1C440B25C();
  sub_1C4413764();
  sub_1C4EFCEF8();
  qword_1EDDFD1A8 = 0xD000000000000016;
  unk_1EDDFD1B0 = v0;
  v6 = sub_1C4407AB4();
  v7(v6);
  sub_1C4403704();
  sub_1C43FDE00(33);
}

void sub_1C4B31BF8()
{
  v1 = sub_1C4EFD548();
  v2 = sub_1C4403200(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1C4400D34();
  sub_1C44F9918(v5, &qword_1EDDFD1D0);
  sub_1C440B25C();
  sub_1C4413764();
  sub_1C4EFCEF8();
  sub_1C4408FE4();
  qword_1EDDFD1D0 = v6;
  unk_1EDDFD1D8 = v0;
  v7 = sub_1C4407AB4();
  v8(v7);
  sub_1C444FFBC();
  sub_1C43FDE00(34);
}

uint64_t sub_1C4B31CEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Source();
  v6 = sub_1C442B738(v5, a2);

  return sub_1C449ED64(v6, a3);
}

uint64_t Source.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Source() + 24);
  v4 = sub_1C4EFD548();
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Source.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4B31E1C()
{
  sub_1C456902C(&unk_1EC0BAC00, &unk_1C4F11680);
  v0 = type metadata accessor for Source();
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4F51DF0;
  v4 = v3 + v2;
  if (qword_1EDDFED28 != -1)
  {
    sub_1C440FADC();
  }

  v5 = sub_1C442B738(v0, &unk_1EDDFD088);
  sub_1C449ED64(v5, v4);
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520();
  }

  v6 = sub_1C442B738(v0, qword_1EDDFD0D8);
  v7 = sub_1C449ED64(v6, v4 + v1);
  if (qword_1EDDFED08 != -1)
  {
    v7 = sub_1C440B19C();
  }

  v8 = sub_1C4417768(v7, qword_1EDDFED10);
  if (qword_1EDDFED40 != -1)
  {
    v8 = sub_1C440604C();
  }

  v9 = sub_1C441C4B0(v8, qword_1EDDFD2A8);
  if (qword_1EDDFD268 != -1)
  {
    v9 = sub_1C4404CEC();
  }

  v10 = sub_1C4417768(v9, &qword_1EDDFD270);
  if (qword_1EDDFD040 != -1)
  {
    v10 = sub_1C44046D4();
  }

  v11 = sub_1C441C4B0(v10, qword_1EDDFD048);
  if (qword_1EDDFD110 != -1)
  {
    v11 = sub_1C4403664();
  }

  v12 = sub_1C4417768(v11, qword_1EDDFD118);
  if (qword_1EDDFD068 != -1)
  {
    v12 = sub_1C44123D8();
  }

  v13 = sub_1C4417768(v12, qword_1EDDFD070);
  if (qword_1EDDFD130 != -1)
  {
    v13 = sub_1C44123B8();
  }

  v14 = sub_1C4417768(v13, qword_1EDDFD138);
  if (qword_1EDDFD0A8 != -1)
  {
    v14 = sub_1C440FA20();
  }

  v15 = sub_1C441C4B0(v14, qword_1EDDFD0B0);
  if (qword_1EDDFD178 != -1)
  {
    v15 = sub_1C443012C();
  }

  v16 = sub_1C4417768(v15, &qword_1EDDFD180);
  if (qword_1EDDFED38 != -1)
  {
    v16 = sub_1C4408FF0();
  }

  v17 = sub_1C4417768(v16, qword_1EDDFD0F0);
  if (qword_1EDDFD2F0 != -1)
  {
    v17 = sub_1C44253F4();
  }

  v18 = sub_1C4417768(v17, qword_1EDDFD2F8);
  if (qword_1EDDFD150 != -1)
  {
    v18 = sub_1C4426E18();
  }

  v19 = sub_1C4417768(v18, qword_1EDDFD158);
  if (qword_1EDDFD218 != -1)
  {
    v19 = sub_1C441BCC4();
  }

  v20 = sub_1C4417768(v19, &qword_1EDDFD220);
  if (qword_1EDDFD240 != -1)
  {
    v20 = sub_1C440A0AC();
  }

  v21 = sub_1C4417768(v20, &qword_1EDDFD248);
  if (qword_1EDDFD318 != -1)
  {
    v21 = sub_1C4414EC8();
  }

  v22 = sub_1C4417768(v21, qword_1EDDFD320);
  if (qword_1EDDFD340 != -1)
  {
    v22 = sub_1C441EF00();
  }

  v23 = sub_1C441C4B0(v22, qword_1EDDFD348);
  if (qword_1EDDFD2C8 != -1)
  {
    v23 = sub_1C43FC868();
  }

  v24 = sub_1C4417768(v23, qword_1EDDFD2D0);
  if (qword_1EDDFD1F0 != -1)
  {
    v24 = sub_1C4425FD4();
  }

  v25 = sub_1C4417768(v24, &qword_1EDDFD1F8);
  if (qword_1EDDFD288 != -1)
  {
    v25 = sub_1C443373C();
  }

  v26 = sub_1C4417768(v25, &qword_1EDDFD290);
  if (qword_1EDDFD1A0 != -1)
  {
    v26 = sub_1C440D7D8();
  }

  sub_1C4417768(v26, &qword_1EDDFD1A8);
  if (qword_1EDDFD1C8 != -1)
  {
    sub_1C4411194();
  }

  v27 = sub_1C442B738(v0, &qword_1EDDFD1D0);
  result = sub_1C449ED64(v27, v4 + 22 * v1);
  off_1EDDFA698 = v3;
  return result;
}

uint64_t static Source.productionSources.getter()
{
  if (qword_1EDDFA690 != -1)
  {
    sub_1C44163D4();
  }

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4B323D4()
{
  result = sub_1C4B323F4();
  qword_1EDE2DCF0 = result;
  return result;
}

uint64_t sub_1C4B323F4()
{
  v0 = type metadata accessor for Source();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFA690 != -1)
  {
    swift_once();
  }

  v5 = off_1EDDFA698;
  v18 = off_1EDDFA698;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = sub_1C4B325E4();
  if (v6)
  {
    sub_1C49D3594(v6);
    v5 = v18;
  }

  v7 = v5[2];
  if (v7)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C459CF48();
    v8 = v18;
    v9 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v10 = *(v1 + 72);
    do
    {
      sub_1C449ED64(v9, v4);
      v11 = *(v4 + 2);
      sub_1C448D818(v4);
      v18 = v8;
      v12 = v8[2];
      if (v12 >= v8[3] >> 1)
      {
        sub_1C459CF48();
        v8 = v18;
      }

      v8[2] = v12 + 1;
      v8[v12 + 4] = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1C4613374(v8);
  v15 = v14;

  if (v15)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_1C4B325E4()
{
  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8 && ((*(off_1EDDFF3D0 + 2))(), (v1 = (*(v0 + 24))()) != 0))
  {
    v2 = v1;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v4 = sub_1C4F00968();
    v5 = sub_1C4F01CF8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = *(v2 + 16);

      _os_log_impl(&dword_1C43F8000, v4, v5, "InternalPlugin: Source: loadInternalSources: loaded %ld sources", v6, 0xCu);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDDFECB8);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v8, v9, "InternalPlugin: Source: loadInternalSources: failed to load internal sources", v10, 2u);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    return 0;
  }

  return v2;
}

uint64_t static Source.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1C4F02938();
  }
}

uint64_t sub_1C4B32854@<X0>(uint64_t *a1@<X8>)
{
  result = Source.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C4B32988()
{
  result = sub_1C4EFD548();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4B32A14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Source();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C4B32A90(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Source();
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = a1(0);
  sub_1C449ED64(v2 + *(v12 + 36), v11);
  v13 = *(v11 + 16);
  sub_1C448D818(v11);
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C4405EEC();
    if (!v16 & v15)
    {
      v14 = 0;
    }

    *a2 = v14;
  }
}

void SourcedTriple.sources.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for Source();
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  (*(a2 + 40))(a1, a2);
  v13 = *(v12 + 16);
  sub_1C448D818(v12);
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C4405EEC();
    if (!v16 & v15)
    {
      v14 = 0;
    }

    *a3 = v14;
  }
}

uint64_t SourcedTriple.description.getter(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Source();
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v55 = (v9 - v8);
  sub_1C43FBE44();
  v10 = sub_1C4EFF8A8();
  v52 = sub_1C43FCDF8(v10);
  v53 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBCC4();
  v51 = v15 - v14;
  sub_1C43FBE44();
  v16 = sub_1C4EFEEF8();
  v56 = *(v16 - 8);
  v17 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = sub_1C4EFF0C8();
  v22 = sub_1C43FCDF8(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v29 = v28 - v27;
  sub_1C4F02248();

  swift_getMetatypeMetadata();
  v30 = sub_1C4F01198();
  MEMORY[0x1C6940010](v30);

  MEMORY[0x1C6940010](658141984, 0xE400000000000000);
  v31 = *(*(a2 + 8) + 8);
  sub_1C441247C();
  sub_1C4EFF7E8();
  sub_1C4400404();
  sub_1C4811074(v32, v33);
  sub_1C4F02858();
  sub_1C4417794();

  (*(v24 + 8))(v29, v21);
  MEMORY[0x1C6940010](0x273A702027, 0xE500000000000000);
  sub_1C441247C();
  sub_1C4EFF7F8();
  sub_1C441FA90();
  sub_1C4811074(v34, v35);
  sub_1C4F02858();
  sub_1C4417794();

  v50 = *(v56 + 8);
  v50(v20, v16);
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F02248();

  sub_1C440E740();
  sub_1C4EFF7B8();
  sub_1C442CAA8();
  sub_1C4811074(v36, v37);
  sub_1C4F02858();
  sub_1C4417794();

  (*(v53 + 8))(v51, v52);
  MEMORY[0x1C6940010](0x273A70722027, 0xE600000000000000);
  sub_1C4EFF7C8();
  sub_1C4F02858();
  sub_1C4417794();

  v50(v20, v16);
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0x273A697220, 0xE500000000000000);

  sub_1C4F02248();
  MEMORY[0x1C6940010](658140960, 0xE400000000000000);
  sub_1C441247C();
  sub_1C4EFF7D8();
  sub_1C4417794();

  MEMORY[0x1C6940010](0x273A6372732027, 0xE700000000000000);
  v38 = *(a2 + 40);
  v39 = sub_1C441247C();
  v41 = v40;
  v42(v39);
  MEMORY[0x1C6940010](*v55, v55[1]);
  sub_1C448D818(v55);
  MEMORY[0x1C6940010](0x64695F6372732027, 0xEA0000000000273ALL);
  v43 = *(v41 + 48);
  v44 = sub_1C441247C();
  v45(v44, v41);
  sub_1C4417794();

  MEMORY[0x1C6940010](0x273A74702027, 0xE600000000000000);
  v46 = *(v41 + 56);
  v47 = sub_1C441247C();
  v48(v47, v41);
  sub_1C448D934(a1);
  MEMORY[0x1C6940010](15911, 0xE200000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0, 0xE000000000000000);

  return 60;
}

uint64_t static SourcedTriple.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Source();
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v132 = (v12 - v13);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  v131 = &v128 - v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  v134 = &v128 - v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  v135 = &v128 - v19;
  sub_1C43FBE44();
  v20 = sub_1C4EFF8A8();
  v21 = sub_1C43FCDF8(v20);
  v138 = v22;
  v139 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBD08();
  v140 = v25 - v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  v137 = &v128 - v28;
  sub_1C43FBE44();
  v141 = sub_1C4EFEEF8();
  v29 = sub_1C43FCDF8(v141);
  v143 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBD08();
  v142 = v33 - v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v128 - v36;
  v38 = sub_1C4EFF0C8();
  v39 = sub_1C43FCDF8(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBD08();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v128 - v48;
  v136 = a4;
  v133 = *(a4 + 8);
  v50 = *(v133 + 8);
  v144 = a1;
  sub_1C43FDE0C();
  sub_1C4EFF7E8();
  v145 = a2;
  v51 = a3;
  sub_1C4EFF7E8();
  sub_1C4400404();
  sub_1C4811074(v52, v53);
  LOBYTE(a4) = sub_1C4F010B8();
  v54 = *(v41 + 8);
  v54(v46, v38);
  v54(v49, v38);
  if ((a4 & 1) == 0)
  {
    sub_1C4EFF7E8();
    sub_1C4EFF7E8();
    v76 = sub_1C4EFF078();
    v54(v46, v38);
    v54(v49, v38);
    return v76 & 1;
  }

  sub_1C4EFF7F8();
  v55 = v142;
  sub_1C43FDE0C();
  sub_1C4EFF7F8();
  sub_1C441FA90();
  v58 = sub_1C4811074(v56, v57);
  v59 = v141;
  v130 = v58;
  v60 = sub_1C4F010B8();
  v61 = v143 + 8;
  v62 = *(v143 + 8);
  v62(v55, v59);
  v62(v37, v59);
  if ((v60 & 1) == 0)
  {
    sub_1C441247C();
    v78 = v77;
    sub_1C4EFF7F8();
    sub_1C43FDE0C();
    sub_1C4EFF7F8();
    v76 = sub_1C4EFE9A8();
    v79 = sub_1C440E740();
    (v62)(v79);
    v62(v37, v78);
    return v76 & 1;
  }

  v128 = v62;
  v129 = v37;
  v143 = v61;
  sub_1C441247C();
  v63 = sub_1C4EFF7D8();
  v65 = v64;
  if (v63 == sub_1C4EFF7D8() && v65 == v66)
  {

    v69 = v140;
  }

  else
  {
    v68 = sub_1C4F02938();

    v69 = v140;
    if ((v68 & 1) == 0)
    {
      sub_1C441247C();
      v70 = sub_1C4EFF7D8();
      v72 = v71;
      v73 = sub_1C4EFF7D8();
LABEL_9:
      if (v70 != v73 || v72 != v74)
      {
        sub_1C43FF5A0();
        v76 = sub_1C4F02938();
LABEL_58:

        return v76 & 1;
      }

      v76 = 0;
      return v76 & 1;
    }
  }

  v80 = v137;
  sub_1C441247C();
  sub_1C4EFF7B8();
  sub_1C43FD024();
  sub_1C4EFF7B8();
  sub_1C442CAA8();
  sub_1C4811074(v81, v82);
  v83 = v139;
  v84 = sub_1C4F010B8();
  v85 = *(v138 + 8);
  v85(v69, v83);
  v85(v80, v83);
  if ((v84 & 1) == 0)
  {
    sub_1C43FD024();
    sub_1C4EFF7B8();
    sub_1C43FD024();
    sub_1C4EFF7B8();
    v76 = sub_1C4EFF868();
    v85(v69, v83);
    v85(v80, v83);
    return v76 & 1;
  }

  v86 = v129;
  sub_1C43FD024();
  sub_1C4EFF7C8();
  sub_1C43FD024();
  sub_1C4EFF7C8();
  sub_1C43FD258();
  v87 = v141;
  v88 = sub_1C4F010B8();
  v89 = sub_1C440E740();
  v90 = v128;
  (v128)(v89);
  v90(v86, v87);
  if ((v88 & 1) == 0)
  {
    sub_1C43FD024();
    sub_1C4EFF7C8();
    sub_1C43FD024();
    sub_1C4EFF7C8();
    sub_1C43FD258();
    v76 = sub_1C4EFE9A8();
    v102 = sub_1C440E740();
    (v90)(v102);
    v90(v86, v87);
    return v76 & 1;
  }

  v91 = v136;
  v92 = *(v136 + 40);
  v93 = v135;
  v92(v51, v136);
  v94 = v134;
  v92(v51, v91);
  if (*v93 == *v94 && v93[1] == v94[1])
  {
    sub_1C448D818(v94);
    sub_1C448D818(v93);
  }

  else
  {
    v96 = sub_1C4F02938();
    sub_1C448D818(v94);
    sub_1C448D818(v93);
    if ((v96 & 1) == 0)
    {
      v97 = v131;
      v98 = sub_1C43FD258();
      (v92)(v98);
      v99 = v132;
      v100 = sub_1C43FD258();
      (v92)(v100);
      if (*v97 == *v99 && v97[1] == v99[1])
      {
        v76 = 0;
      }

      else
      {
        v76 = sub_1C4F02938();
      }

      sub_1C448D818(v99);
      sub_1C448D818(v97);
      return v76 & 1;
    }
  }

  v103 = *(v91 + 48);
  v104 = sub_1C43FD258();
  v105 = v103(v104);
  v107 = v106;
  v108 = sub_1C43FD258();
  if (v105 == v103(v108) && v107 == v109)
  {
  }

  else
  {
    sub_1C43FF5A0();
    v111 = sub_1C4F02938();

    if ((v111 & 1) == 0)
    {
      v112 = sub_1C43FD258();
      v70 = v103(v112);
      v72 = v113;
      v114 = sub_1C43FD258();
      v73 = v103(v114);
      goto LABEL_9;
    }
  }

  v115 = *(v91 + 56);
  v116 = sub_1C43FD258();
  v115(v116);
  v117 = sub_1C43FD258();
  v115(v117);
  if ((sub_1C4684BDC() & 1) == 0)
  {
    v121 = 0x6E776F6E6B6E75;
    (v115)((&v146 + 1), v51, v91);
    v122 = BYTE1(v146);
    (v115)(&v146, v51, v91);
    v123 = 0xE700000000000000;
    v124 = 0x6E776F6E6B6E75;
    switch(v122)
    {
      case 1:
        v123 = 0xE400000000000000;
        v124 = 1819047270;
        break;
      case 2:
        v123 = 0xE500000000000000;
        v124 = 0x61746C6564;
        break;
      case 3:
        v124 = 0x69686374614D6F74;
        v123 = 0xEA0000000000676ELL;
        break;
      default:
        break;
    }

    v125 = 0xE700000000000000;
    switch(v146)
    {
      case 1:
        v125 = 0xE400000000000000;
        v121 = 1819047270;
        break;
      case 2:
        v125 = 0xE500000000000000;
        v121 = 0x61746C6564;
        break;
      case 3:
        v121 = 0x69686374614D6F74;
        v125 = 0xEA0000000000676ELL;
        break;
      default:
        break;
    }

    if (v124 == v121 && v123 == v125)
    {
      v76 = 0;
    }

    else
    {
      v76 = sub_1C4F02938();
    }

    goto LABEL_58;
  }

  v118 = v133;
  v119 = *(v133 + 24);
  v120 = v119(v51, v133);
  v76 = v120 < v119(v51, v118);
  return v76 & 1;
}

uint64_t sub_1C4B33D20()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C4B33D6C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C4686FAC();
}

uint64_t sub_1C4B33D90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4B33D20();
  *a2 = result;
  return result;
}

uint64_t sub_1C4B33DC0(uint64_t a1)
{
  v2 = sub_1C44964E4();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1C4B33E0C(uint64_t a1)
{
  v2 = sub_1C44964E4();

  return MEMORY[0x1EEE09A88](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for SourcedTripleColumn(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B33F78()
{
  result = qword_1EC0C35A8;
  if (!qword_1EC0C35A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C35A8);
  }

  return result;
}

unint64_t sub_1C4B33FD0()
{
  result = qword_1EDDF4A00;
  if (!qword_1EDDF4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4A00);
  }

  return result;
}

unint64_t sub_1C4B34028()
{
  result = qword_1EDDF49F8;
  if (!qword_1EDDF49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF49F8);
  }

  return result;
}

unint64_t sub_1C4B34080()
{
  result = qword_1EDDF4A08;
  if (!qword_1EDDF4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4A08);
  }

  return result;
}

void sub_1C4B340D4()
{
  sub_1C4413774();
  v6 = v5;
  v24 = MEMORY[0x1E69E7CC0];
  sub_1C4428DA0(v7);
  sub_1C440E74C();
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if (v2)
    {
      v8 = MEMORY[0x1C6940F90](v4, v1);
    }

    else
    {
      if (v4 >= *(v21 + 16))
      {
        goto LABEL_16;
      }

      v8 = *(v1 + 8 * v4 + 32);
    }

    v9 = v8;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    sub_1C4409010();
    v10 = v6();
    if (v0)
    {

      return;
    }

    if (v10)
    {
      v11 = sub_1C4F02318();
      sub_1C4420284(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
      sub_1C4400D5C();
      sub_1C4F02328();
    }

    else
    {
    }

    ++v4;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1C4B3421C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v26 = result;
  v5 = 0;
  v27 = *(a3 + 16);
  v6 = (a3 + 48);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v27 == v5)
    {
      goto LABEL_14;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v6 - 2);
    v8 = *(v6 - 1);
    v10 = *v6;
    v28[0] = v9;
    v28[1] = v8;
    v29 = v10;
    v11 = sub_1C44329C4();
    sub_1C45E8718(v11, v12, v13);
    v14 = v26(v28);
    if (v3)
    {
      v22 = sub_1C44329C4();
      sub_1C45E872C(v22, v23, v24);

LABEL_14:

      return v7;
    }

    if (v14)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v30 = v7;
      if ((result & 1) == 0)
      {
        result = sub_1C459D1C0(0, *(v7 + 16) + 1, 1);
        v7 = v30;
      }

      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        result = sub_1C459D1C0((v15 > 1), v16 + 1, 1);
        v17 = v16 + 1;
        v7 = v30;
      }

      *(v7 + 16) = v17;
      v18 = v7 + 24 * v16;
      *(v18 + 32) = v9;
      *(v18 + 40) = v8;
      *(v18 + 48) = v10;
      v4 = a3;
    }

    else
    {
      v19 = sub_1C44329C4();
      result = sub_1C45E872C(v19, v20, v21);
    }

    v6 += 24;
    ++v5;
  }

  __break(1u);
  return result;
}

void sub_1C4B34390()
{
  sub_1C4413774();
  v6 = v5;
  v24 = MEMORY[0x1E69E7CC0];
  v8(v7);
  sub_1C440E74C();
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if (v2)
    {
      MEMORY[0x1C6940F90](v4, v1);
    }

    else
    {
      if (v4 >= *(v21 + 16))
      {
        goto LABEL_16;
      }

      v9 = *(v1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    sub_1C4409010();
    v10 = v6();
    if (v0)
    {

      return;
    }

    if (v10)
    {
      v11 = sub_1C4F02318();
      sub_1C4420284(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
      sub_1C4400D5C();
      sub_1C4F02328();
    }

    else
    {
    }

    ++v4;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1C4B344BC()
{
  sub_1C4413774();
  v3 = v2;
  v4 = 0;
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v6 == v4)
    {

      return;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    v15 = *(v1 + 16 * v4 + 32);
    v16 = v15;
    swift_unknownObjectRetain();
    v8 = v3(&v16);
    if (v0)
    {

      swift_unknownObjectRelease();
      return;
    }

    if (v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_1C44177AC();
        sub_1C459D468(v10, v11, v12);
        v7 = v17;
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C459D468((v13 > 1), v14 + 1, 1);
        v7 = v17;
      }

      *(v7 + 16) = v14 + 1;
      *(v7 + 16 * v14 + 32) = v15;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v4;
  }

  __break(1u);
}

void sub_1C4B34660()
{
  sub_1C4413774();
  v3 = v2;
  v4 = 0;
  v16 = *(v5 + 16);
  v6 = (v5 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  v15 = v5;
  v14 = v2;
  while (1)
  {
    if (v16 == v4)
    {
      goto LABEL_15;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    v8 = *(v6 - 1);
    v9 = *v6;
    v17[0] = v8;
    v17[1] = v9;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = v3(v17);
    if (v0)
    {

LABEL_15:

      return;
    }

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C44177AC();
        sub_1C44CD9C0();
        v7 = v18;
      }

      v12 = *(v7 + 16);
      if (v12 >= *(v7 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v7 = v18;
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v9;
      v1 = v15;
      v3 = v14;
    }

    else
    {
    }

    v6 += 2;
    ++v4;
  }

  __break(1u);
}

void sub_1C4B3480C()
{
  sub_1C43FE96C();
  v31 = v2;
  v4 = v3;
  sub_1C4413774();
  v34 = v5;
  v35 = v6;
  v8 = v7(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = 0;
  v36 = *(v1 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v36 == v15)
    {

LABEL_14:
      sub_1C43FBC80();
      return;
    }

    if (v15 >= *(v1 + 16))
    {
      break;
    }

    v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v17 = *(v9 + 72);
    sub_1C449F070(v1 + v16 + v17 * v15, v14, v4);
    v18 = v34(v14);
    if (v0)
    {
      v27 = sub_1C43FE5F8();
      sub_1C449F2E0(v27, v28);

      goto LABEL_14;
    }

    if (v18)
    {
      sub_1C4B35DFC(v14, v32, v4);
      v21 = v33;
      v37 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = *(v21 + 16);
        v23 = sub_1C440FB9C();
        v31(v23);
        v21 = v37;
      }

      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v33 = v25 + 1;
        v30 = v25;
        (v31)(v24 > 1, v25 + 1, 1);
        v26 = v33;
        v25 = v30;
        v21 = v37;
      }

      ++v15;
      *(v21 + 16) = v26;
      v33 = v21;
      sub_1C4B35DFC(v32, v21 + v16 + v25 * v17, v4);
    }

    else
    {
      v19 = sub_1C43FE5F8();
      sub_1C449F2E0(v19, v20);
      ++v15;
    }
  }

  __break(1u);
}

uint64_t SourceDuplicates.sourceIds()()
{
  v3 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = objc_autoreleasePoolPush();
  sub_1C442D2E4();
  v5 = sub_1C440B27C();

  objc_autoreleasePoolPop(v1);
  return v5;
}

uint64_t SourceDuplicates.subtracting<A>(_:)()
{
  sub_1C44111B4();
  v6 = *v1;
  v5 = v1[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = objc_autoreleasePoolPush();
  sub_1C4415EA8();
  sub_1C4F01FC8();

  objc_autoreleasePoolPop(v7);
  v33 = v3;
  sub_1C43FF5B4();
  sub_1C4B34660();
  v8 = objc_autoreleasePoolPush();
  v9 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4499940(v9, v10, v11, v12, v13, v14, v15, v16, v29, v31, v33, v2, v4, v37, 30, 0xE100000000000000, v6, v5, v43, v45, v47, v49);
  sub_1C44EC90C(v17, v18, v19, v20, v21, v22, v23, v24, v30, v32, v34, v35, v36, v38, v39, v40, v41, v42, v44, v46, v48, v50, v51, v52, v53, v54);

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4407ACC(&qword_1EDDFCED0);
  v25 = sub_1C4F01048();
  v27 = v26;

  objc_autoreleasePoolPop(v8);

  *v0 = v25;
  v0[1] = v27;
  return result;
}

uint64_t SourceDuplicates.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F02AF8();
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t SourceDuplicates.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = objc_autoreleasePoolPush();
  sub_1C4B34ED0(v13, a1, a2, a3);
  objc_autoreleasePoolPop(v8);
  v9 = v13[1];
  v10 = *(a2 - 8);
  *a4 = v13[0];
  a4[1] = v9;
  v11 = *(v10 + 8);

  return v11(a1, a2);
}

uint64_t static SourceDuplicates.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938();
  }
}

uint64_t SourceDuplicates.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4B35054(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4B350E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B35054(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4B35114(uint64_t a1)
{
  v2 = sub_1C4B35798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B35150(uint64_t a1)
{
  v2 = sub_1C4B35798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SourceDuplicates.encode(to:)()
{
  sub_1C43FE96C();
  v2 = v1;
  sub_1C456902C(&qword_1EC0C35B0, &qword_1C4F52168);
  sub_1C43FCE64();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v8 = *v0;
  v9 = v0[1];
  v10 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4B35798();
  sub_1C4F02BF8();
  sub_1C4F02798();
  v11 = *(v4 + 8);
  v12 = sub_1C43FE5F8();
  v13(v12);
  sub_1C43FBC80();
}

uint64_t SourceDuplicates.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1C4F01298();
}

void SourceDuplicates.init(from:)()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  sub_1C456902C(&qword_1EC0C35C0, &qword_1C4F52170);
  sub_1C43FCE64();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v10 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4B35798();
  sub_1C4F02BC8();
  if (!v0)
  {
    v11 = sub_1C4F02678();
    v13 = v12;
    v14 = *(v6 + 8);
    v15 = sub_1C43FE5F8();
    v16(v15);
    *v4 = v11;
    v4[1] = v13;
  }

  sub_1C440962C(v2);
  sub_1C43FBC80();
}

uint64_t sub_1C4B35440()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F02AF8();
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t SourceDuplicates.count.getter()
{
  v3 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = objc_autoreleasePoolPush();
  sub_1C442D2E4();
  v5 = sub_1C440B27C();

  objc_autoreleasePoolPop(v1);
  v6 = *(v5 + 16);

  return v6;
}

Swift::Bool __swiftcall SourceDuplicates.contains(_:)(Swift::String a1)
{
  v3 = *v1;
  v2 = v1[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = objc_autoreleasePoolPush();
  sub_1C4415EA8();
  sub_1C4F01FC8();

  objc_autoreleasePoolPop(v4);
  v5 = sub_1C43FF5B4();
  v8 = sub_1C44CE068(v5, v6, v7);

  return v8;
}

uint64_t SourceDuplicates.adding<A>(_:)()
{
  sub_1C44111B4();
  sub_1C43FCE64();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v7 = *v0;
  v6 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = objc_autoreleasePoolPush();
  sub_1C4415EA8();
  v9 = sub_1C4F01FC8();

  objc_autoreleasePoolPop(v8);
  sub_1C4499940(v9, v10, v11, v12, v13, v14, v15, v16, 30, 0, v7, v6, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v18 = v17;
  v19 = *(v2 + 16);
  v20 = sub_1C43FE5F8();
  v21(v20);
  v22 = sub_1C4F01B48();
  sub_1C44999E0(v22, v18);
  return sub_1C4B34CFC();
}

BOOL sub_1C4B35720(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  return (sub_1C4F01558() & 1) == 0;
}

BOOL sub_1C4B35774(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C4B35720(a1);
}

unint64_t sub_1C4B35798()
{
  result = qword_1EC0C35B8;
  if (!qword_1EC0C35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C35B8);
  }

  return result;
}

uint64_t sub_1C4B357EC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a2 && a1[1] == a3)
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938() & 1;
  }
}

unint64_t SourceDuplicates.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F02248();

  MEMORY[0x1C6940010](v1, v2);
  MEMORY[0x1C6940010](15911, 0xE200000000000000);
  return 0xD000000000000015;
}

uint64_t SourceDuplicates.databaseValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1C4F011D8();
}

uint64_t sub_1C4B358E0(uint64_t a1)
{
  v2 = sub_1C4B35DA8();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4B3592C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4B35DA8();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t SourceDuplicates.makeIterator()()
{
  v3 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = objc_autoreleasePoolPush();
  sub_1C442D2E4();
  v5 = sub_1C440B27C();

  objc_autoreleasePoolPop(v1);
  return v5;
}

uint64_t sub_1C4B359EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = SourceDuplicates.makeIterator()();
  v4 = *(v1 + 8);

  *a1 = v3;
  a1[1] = 0;
  return result;
}

uint64_t sub_1C4B35A28()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1C44509A8();
}

uint64_t sub_1C4B35A30()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1C4D28230();
}

unint64_t sub_1C4B35A40()
{
  result = qword_1EC0C35A0;
  if (!qword_1EC0C35A0)
  {
    sub_1C4EFB258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C35A0);
  }

  return result;
}

unint64_t sub_1C4B35A9C()
{
  result = qword_1EC0C35C8;
  if (!qword_1EC0C35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C35C8);
  }

  return result;
}

unint64_t sub_1C4B35AF4()
{
  result = qword_1EDDFB508[0];
  if (!qword_1EDDFB508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFB508);
  }

  return result;
}

unint64_t sub_1C4B35B4C()
{
  result = qword_1EDDFB500;
  if (!qword_1EDDFB500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB500);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SourceDuplicates.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C4B35CA4()
{
  result = qword_1EC0C35E0;
  if (!qword_1EC0C35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C35E0);
  }

  return result;
}

unint64_t sub_1C4B35CFC()
{
  result = qword_1EC0C35E8;
  if (!qword_1EC0C35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C35E8);
  }

  return result;
}

unint64_t sub_1C4B35D54()
{
  result = qword_1EC0C35F0;
  if (!qword_1EC0C35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C35F0);
  }

  return result;
}

unint64_t sub_1C4B35DA8()
{
  result = qword_1EC0C35F8;
  if (!qword_1EC0C35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C35F8);
  }

  return result;
}

uint64_t sub_1C4B35DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t static SourceEntityRepresentation.event(with:dataVersion:)()
{
  v0 = sub_1C4EF96B8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1C4EF96A8();
  sub_1C4B36294(&unk_1EC0C3600);
  sub_1C4EF9698();

  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

uint64_t SourceEntityRepresentation.serialize()()
{
  swift_getObjectType();
  v0 = sub_1C4EF96F8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1C4EF96E8();
  sub_1C4B36294(&qword_1EC0C3610);
  v3 = sub_1C4EF96D8();

  return v3;
}

uint64_t sub_1C4B36294(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SourceEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4B36314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = v7[2];
  v14 = v7[3];
  v15 = v7[4];
  v20 = *v7;
  v21 = v7[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4B18900(a2, a3, a4, a5, v13, v14, v15, a7, v19, v20, v21, v13, v14, v15, v22, v23, v24, v25, v26, v27);
  v17 = v16;

  return v17;
}

void sub_1C4B363D4()
{
  sub_1C440D19C();
  sub_1C4400D8C();
  v2 = *v1;
  v3 = v1[1];
  v5 = *v1;
  v6 = *(v1 + 1);
  v7 = v1[4];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C440B29C();
  v0(v4);
  sub_1C4405320();

  sub_1C4405950();
}

void sub_1C4B36448()
{
  sub_1C440D19C();
  sub_1C4400D8C();
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 4);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v0(v6, v5, v4, v3, v11, v7, v8, v2);

  sub_1C4405950();
}

void sub_1C4B364E0()
{
  sub_1C440D19C();
  sub_1C4400D8C();
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v2 = sub_1C440B29C();
  v0(v2);
  sub_1C4405320();

  sub_1C4405950();
}

void sub_1C4B36558()
{
  sub_1C440D19C();
  sub_1C4400D8C();
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 4);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C440B29C();
  v0(v4);
  sub_1C4405320();

  sub_1C4405950();
}

uint64_t IdentifiableSourceEntityMappable.constructRows(entityIdentifier:source:sourceId:map:relationshipId:pipelineType:)(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9)
{
  v14 = *a7;
  v15 = (*(a9 + 24))(a8, a9);
  v16 = (*(a9 + 16))(a8, a9);
  v19 = v14;
  SourceEntityMappable.constructPropertyRows(source:sourceId:map:basicProperties:nestedSourceId:pipelineType:)(a2, a3, a4, a5, v15, v16, v17, &v19, a8, *(a9 + 8));
  sub_1C4405320();

  return a8;
}

uint64_t MapPredicate.description.getter()
{
  v1 = v0;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4FB1CA0);
  v2 = type metadata accessor for MapPredicate(0);
  v3 = v2[5];
  sub_1C4EFEEF8();
  sub_1C442D308();
  sub_1C4B391BC(v4, v5);
  v6 = sub_1C4F02858();
  MEMORY[0x1C6940010](v6);

  MEMORY[0x1C6940010](3826464, 0xE300000000000000);
  v7 = v2[6];
  sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C44353B4();
  MEMORY[0x1C6940010](980447776, 0xE400000000000000);
  v8 = v2[7];
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C44353B4();
  MEMORY[0x1C6940010](3831328, 0xE300000000000000);
  v10 = *v1;
  sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
  sub_1C44353B4();
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C4B36A20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6156746567726174 && a2 == 0xEB0000000065756CLL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C4FB1DF0 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x80000001C4F86600 == a2)
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

unint64_t sub_1C4B36B90(char a1)
{
  result = 0x6156746567726174;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B36C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B36A20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B36C74(uint64_t a1)
{
  v2 = sub_1C4B38F04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B36CB0(uint64_t a1)
{
  v2 = sub_1C4B38F04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MapPredicate.encode(to:)()
{
  sub_1C43FE96C();
  v2 = sub_1C456902C(&qword_1EC0C3618, &qword_1C4F524B8);
  sub_1C43FCDF8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4B38F04();
  sub_1C440F61C();
  v8 = *v0;
  v9 = v0[1];
  sub_1C4F02738();
  if (!v1)
  {
    v10 = type metadata accessor for MapPredicate(0);
    v11 = v10[5];
    sub_1C4EFEEF8();
    sub_1C442D308();
    sub_1C4B391BC(v12, v13);
    sub_1C43FC888();
    sub_1C4F027E8();
    v20 = v10[6];
    sub_1C4EFD548();
    sub_1C44202B4();
    sub_1C4B391BC(v14, v15);
    sub_1C43FC428();
    sub_1C4F02778();
    v16 = v10[7];
    sub_1C43FC888();
    sub_1C4F02778();
  }

  v17 = *(v4 + 8);
  v18 = sub_1C43FD024();
  v19(v18);
  sub_1C43FBC80();
}

void MapPredicate.init(from:)()
{
  sub_1C43FE96C();
  v53 = v0;
  v3 = v2;
  v46 = v4;
  v5 = *(*(sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v47 = v45 - v7;
  v8 = *(*(sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v48 = v45 - v10;
  sub_1C43FBE44();
  v11 = sub_1C4EFEEF8();
  v12 = sub_1C43FCDF8(v11);
  v49 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v52 = sub_1C456902C(&qword_1EC0C3628, &unk_1C4F524C0);
  sub_1C43FCDF8(v52);
  v50 = v19;
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4402A68();
  v23 = type metadata accessor for MapPredicate(0);
  v24 = sub_1C43FBCE0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v29 = (v28 - v27);
  v30 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4B38F04();
  v51 = v1;
  v31 = v53;
  sub_1C4F02BC8();
  if (v31)
  {
    sub_1C440962C(v3);
  }

  else
  {
    v53 = v3;
    v32 = v49;
    *v29 = sub_1C4F02618();
    v29[1] = v33;
    v45[3] = v33;
    sub_1C442D308();
    v36 = sub_1C4B391BC(v34, v35);
    sub_1C4F026C8();
    v45[1] = v36;
    (*(v32 + 32))(v29 + *(v23 + 20), v18, v11);
    sub_1C4EFD548();
    sub_1C44202B4();
    sub_1C4B391BC(v37, v38);
    v39 = v48;
    v45[2] = 0;
    sub_1C4F02658();
    sub_1C49328EC(v39, v29 + *(v23 + 24), &qword_1EC0B8568, &unk_1C4F319B0);
    v40 = v23;
    v41 = v47;
    sub_1C4F02658();
    v42 = v53;
    v43 = sub_1C440E764();
    v44(v43);
    sub_1C49328EC(v41, v29 + *(v40 + 28), &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4B38FB0(v29, v46, type metadata accessor for MapPredicate);
    sub_1C440962C(v42);
    sub_1C4B38F58(v29, type metadata accessor for MapPredicate);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4B373F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702060386 && a2 == 0xE400000000000000)
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

uint64_t sub_1C4B374C0(char a1)
{
  if (a1)
  {
    return 1702060386;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1C4B374E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B373F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B37510(uint64_t a1)
{
  v2 = sub_1C4B39808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B3754C(uint64_t a1)
{
  v2 = sub_1C4B39808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4B37588()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C36C8, &qword_1C4F52900);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4B39808();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C4B3985C();
    sub_1C4F026C8();
    v10 = v17;
    v11 = v18;
    sub_1C4F02608();
    v18 = v10;
    v19 = v11;
    sub_1C4422F90(&v16);
    v12 = *(v11 + 8);
    sub_1C4F01A38();

    v13 = sub_1C441EE48();
    v14(v13, v5);
    sub_1C441D670(&v16, v20);
    v15 = v20[1];
    *v4 = v20[0];
    *(v4 + 16) = v15;
    *(v4 + 32) = v21;
  }

  sub_1C440962C(v2);
  sub_1C43FBC80();
}

void sub_1C4B37788()
{
  sub_1C43FE96C();
  v2 = v0;
  v3 = sub_1C456902C(&qword_1EC0C36E0, &qword_1C4F52908);
  sub_1C43FCDF8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4B39808();
  sub_1C440F61C();
  sub_1C442E860(v0, v17);
  sub_1C4409678(v17, v17[3]);
  DynamicType = swift_getDynamicType();
  v10 = v17[4];
  sub_1C440962C(v17);
  (*(v10 + 24))(&v16, DynamicType, v10);
  sub_1C4B398B0();
  sub_1C4F027E8();

  if (!v1)
  {
    v11 = v2[4];
    sub_1C4409678(v2, v2[3]);
    LOBYTE(v16) = 1;
    sub_1C4F02728();
    v12 = *(v11 + 16);
    sub_1C4F00FC8();
    sub_1C440962C(v17);
  }

  v13 = *(v5 + 8);
  v14 = sub_1C43FD024();
  v15(v14);
  sub_1C43FBC80();
}

uint64_t sub_1C4B37960(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E45656372756F73 && a2 == 0xEE00736569746974)
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

uint64_t sub_1C4B37ACC(char a1)
{
  result = 0x656372756F73;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x6D617473656D6974;
      break;
    case 3:
      result = 0x6E45656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B37B90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4B37BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B37960(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B37C0C(uint64_t a1)
{
  v2 = sub_1C4B39010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B37C48(uint64_t a1)
{
  v2 = sub_1C4B39010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SourceEntityRepresentation.init(source:identifier:timestamp:sourceEntities:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = *(*(sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for Source();
  v17 = sub_1C43FBCE0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v22 = (v21 - v20);
  String.sourceBasedOnPrefix.getter();
  if (sub_1C44157D4(v15, 1, v16) != 1)
  {
    sub_1C448B210(v15, v22);
    if (*v22 == *a1 && v22[1] == a1[1])
    {
      sub_1C4407AF8();
      sub_1C4B38F58(v22, v26);
    }

    else
    {
      v24 = sub_1C4F02938();
      sub_1C4407AF8();
      sub_1C4B38F58(v22, v25);
      if ((v24 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v27 = &v5[OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier];
    *v27 = a2;
    *(v27 + 1) = a3;
    sub_1C4B38FB0(a1, &v5[OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_source], type metadata accessor for Source);
    *&v5[OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_timestamp] = a5;
    *&v5[OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_sourceEntities] = a4;
    v30.receiver = v5;
    v30.super_class = ObjectType;
    v28 = objc_msgSendSuper2(&v30, sel_init);
    sub_1C4B38F58(a1, type metadata accessor for Source);
    return v28;
  }

  sub_1C4420C3C(v15, &unk_1EC0C0760, &qword_1C4F170D0);
LABEL_11:
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000028, 0x80000001C4FB1D00);
  MEMORY[0x1C6940010](*a1, a1[1]);
  MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4FB1D30);
  MEMORY[0x1C6940010](a2, a3);
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t SourceEntityRepresentation.__allocating_init(from:)(uint64_t *a1)
{
  v2 = type metadata accessor for Source();
  v3 = sub_1C43FBCE0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v43 - v10;
  v12 = sub_1C456902C(&qword_1EC0C3630, &qword_1C4F524D0);
  sub_1C43FCDF8(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v43 - v18;
  v20 = a1[3];
  v21 = a1[4];
  v49 = a1;
  v22 = sub_1C4409678(a1, v20);
  sub_1C4B39010();
  v23 = v48;
  sub_1C4F02BC8();
  if (v23)
  {
    sub_1C440962C(v49);
  }

  else
  {
    v46 = v8;
    v48 = v14;
    LOBYTE(v51[0]) = 0;
    sub_1C43FDE1C();
    sub_1C4B391BC(v24, v25);
    sub_1C4F026C8();
    sub_1C443014C(1);
    v26 = sub_1C4F02678();
    v27 = v48;
    v28 = v26;
    v30 = v29;
    sub_1C443014C(2);
    sub_1C4F02698();
    v32 = v31;
    sub_1C456902C(&qword_1EC0C3640, &qword_1C4F524D8);
    LOBYTE(v51[0]) = 3;
    sub_1C4B390F0(&qword_1EC0C3648, sub_1C4B39064);
    sub_1C4F026C8();
    v44 = v28;
    v45 = v30;
    v34 = v53;
    v35 = *(v53 + 16);
    if (v35)
    {
      v52 = MEMORY[0x1E69E7CC0];
      sub_1C459EDA0();
      v36 = v52;
      v43[1] = v34;
      v37 = v34 + 32;
      v38 = v47;
      do
      {
        sub_1C4B390B8(v37, v50);
        sub_1C441D670(v50, v51);
        v52 = v36;
        v39 = *(v36 + 16);
        v40 = v39 + 1;
        if (v39 >= *(v36 + 24) >> 1)
        {
          v43[0] = v39 + 1;
          sub_1C459EDA0();
          v40 = v43[0];
          v36 = v52;
        }

        *(v36 + 16) = v40;
        sub_1C441D670(v51, v36 + 40 * v39 + 32);
        v37 += 40;
        --v35;
      }

      while (v35);

      v27 = v48;
    }

    else
    {

      v36 = MEMORY[0x1E69E7CC0];
      v38 = v47;
    }

    v41 = v46;
    sub_1C4B38FB0(v11, v46, type metadata accessor for Source);
    v42 = objc_allocWithZone(v38);
    v22 = SourceEntityRepresentation.init(source:identifier:timestamp:sourceEntities:)(v41, v44, v45, v36, v32);
    sub_1C4B38F58(v11, type metadata accessor for Source);
    (*(v27 + 8))(v19, v12);
    sub_1C440962C(v49);
  }

  return v22;
}

void SourceEntityRepresentation.encode(to:)()
{
  sub_1C43FE96C();
  v2 = sub_1C456902C(&qword_1EC0C3658, &qword_1C4F524E0);
  sub_1C43FCDF8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4B39010();
  sub_1C440F61C();
  LOBYTE(v24[0]) = 0;
  type metadata accessor for Source();
  sub_1C43FDE1C();
  sub_1C4B391BC(v8, v9);
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v1)
  {
    v10 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier);
    v11 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier + 8);
    LOBYTE(v24[0]) = 1;
    sub_1C4F02798();
    v12 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_timestamp);
    LOBYTE(v24[0]) = 2;
    sub_1C4F027B8();
    v13 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_sourceEntities);
    v14 = *(v13 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v26 = MEMORY[0x1E69E7CC0];
      sub_1C459EE20();
      v15 = v26;
      v16 = v13 + 32;
      do
      {
        sub_1C442E860(v16, v24);
        v17 = *(v26 + 16);
        if (v17 >= *(v26 + 24) >> 1)
        {
          sub_1C459EE20();
        }

        *(v26 + 16) = v17 + 1;
        v18 = v26 + 40 * v17;
        v19 = v24[0];
        v20 = v24[1];
        *(v18 + 64) = v25;
        *(v18 + 32) = v19;
        *(v18 + 48) = v20;
        v16 += 40;
        --v14;
      }

      while (v14);
    }

    *&v24[0] = v15;
    sub_1C456902C(&qword_1EC0C3640, &qword_1C4F524D8);
    sub_1C4B390F0(&qword_1EC0C3660, sub_1C4B39168);
    sub_1C43FC428();
    sub_1C4F027E8();
  }

  v21 = *(v4 + 8);
  v22 = sub_1C43FD024();
  v23(v22);
  sub_1C43FBC80();
}

uint64_t SourceEntityRepresentation.entityIdentifier(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C4F00DD8();
  v6 = sub_1C43FCDF8(v5);
  v98 = v7;
  v99 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v96 = v11 - v10;
  sub_1C43FBE44();
  v12 = sub_1C4F00DC8();
  v13 = sub_1C43FCDF8(v12);
  v100 = v14;
  v101 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  v95 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v97 = &v88 - v20;
  sub_1C43FBE44();
  v21 = sub_1C4F01188();
  v22 = sub_1C43FCDF8(v21);
  v104 = v23;
  v105 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v102 = v27 - v26;
  sub_1C43FBE44();
  v28 = sub_1C4EFD548();
  v29 = sub_1C43FCDF8(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBD08();
  v93 = (v34 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v88 - v37;
  v103 = (v2 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_source);
  v39 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier);
  v40 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier + 8);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v41 = sub_1C4F00978();
  v42 = sub_1C442B738(v41, qword_1EDE2DE10);
  v91 = *(v31 + 16);
  v92 = v31 + 16;
  v91(v38, a1, v28);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v90 = v42;
  v43 = sub_1C4F00968();
  v44 = sub_1C4F01CB8();

  v45 = os_log_type_enabled(v43, v44);
  v94 = v28;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v89 = a2;
    v47 = v46;
    v48 = swift_slowAlloc();
    v88 = a1;
    v106 = v48;
    *v47 = 136381187;
    *(v47 + 4) = sub_1C441D828(v39, v40, &v106);
    *(v47 + 12) = 2080;
    sub_1C44202B4();
    sub_1C4B391BC(v49, v50);
    v51 = sub_1C4F02858();
    v53 = v52;
    v54 = sub_1C441EE48();
    v55(v54, v56);
    v57 = sub_1C441D828(v51, v53, &v106);

    *(v47 + 14) = v57;
    *(v47 + 22) = 1024;
    *(v47 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v43, v44, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v47, 0x1Cu);
    swift_arrayDestroy();
    a1 = v88;
    sub_1C43FBE2C();
    a2 = v89;
    sub_1C43FBE2C();
  }

  else
  {

    v58 = sub_1C441EE48();
    v59(v58, v28);
  }

  v60 = *v103;
  v61 = v103[1];
  v106 = v39;
  v107 = v40;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v60, v61);
  v63 = v106;
  v62 = v107;
  v64 = v102;
  sub_1C4F01178();
  sub_1C4F01148();
  v66 = v65;
  (*(v104 + 8))(v64, v105);
  if (v66 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v67 = sub_1C4F00968();
    v68 = sub_1C4F01CD8();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v106 = v70;
      *v69 = 136380675;
      v71 = sub_1C441D828(v63, v62, &v106);

      *(v69 + 4) = v71;
      _os_log_impl(&dword_1C43F8000, v67, v68, "Source: failed to encode identifier as UTF8 data: %{private}s", v69, 0xCu);
      sub_1C440962C(v70);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v85 = 1;
  }

  else
  {

    sub_1C4B391BC(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
    v72 = v96;
    v73 = v99;
    sub_1C43FD024();
    sub_1C4F00DB8();
    v74 = sub_1C43FFE24();
    sub_1C44344B8(v74, v75);
    v76 = sub_1C43FFE24();
    sub_1C4498FD8(v76, v77);
    v78 = sub_1C43FFE24();
    sub_1C441DFEC(v78, v79);
    v80 = v97;
    sub_1C43FD024();
    sub_1C4F00DA8();
    (*(v98 + 8))(v72, v73);
    v91(v93, a1, v94);
    v82 = v100;
    v81 = v101;
    (*(v100 + 16))(v95, v80, v101);
    sub_1C4EFF028();
    v83 = sub_1C43FFE24();
    sub_1C441DFEC(v83, v84);
    (*(v82 + 8))(v80, v81);
    v85 = 0;
  }

  v86 = sub_1C4EFF0C8();
  return sub_1C440BAA8(a2, v85, 1, v86);
}

id SourceEntityRepresentation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SourceEntityRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C4B38E58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SourceEntityRepresentation.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C4B38F04()
{
  result = qword_1EC0C3620;
  if (!qword_1EC0C3620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3620);
  }

  return result;
}

uint64_t sub_1C4B38F58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4B38FB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1C4B39010()
{
  result = qword_1EC0C3638;
  if (!qword_1EC0C3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3638);
  }

  return result;
}

unint64_t sub_1C4B39064()
{
  result = qword_1EC0C3650;
  if (!qword_1EC0C3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3650);
  }

  return result;
}

uint64_t sub_1C4B390F0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C3640, &qword_1C4F524D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4B39168()
{
  result = qword_1EC0C3668;
  if (!qword_1EC0C3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3668);
  }

  return result;
}

uint64_t sub_1C4B391BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C4B392B4()
{
  sub_1C4700EB8();
  if (v0 <= 0x3F)
  {
    sub_1C4EFEEF8();
    if (v1 <= 0x3F)
    {
      sub_1C4B393A0(319, &qword_1EC0C3680, MEMORY[0x1E69A92C8]);
      if (v2 <= 0x3F)
      {
        sub_1C4B393A0(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C4B393A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C4B3941C()
{
  result = type metadata accessor for Source();
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

_BYTE *sub_1C4B3951C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4B395FC()
{
  result = qword_1EC0C3698;
  if (!qword_1EC0C3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3698);
  }

  return result;
}

unint64_t sub_1C4B39654()
{
  result = qword_1EC0C36A0;
  if (!qword_1EC0C36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36A0);
  }

  return result;
}

unint64_t sub_1C4B396AC()
{
  result = qword_1EC0C36A8;
  if (!qword_1EC0C36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36A8);
  }

  return result;
}

unint64_t sub_1C4B39704()
{
  result = qword_1EC0C36B0;
  if (!qword_1EC0C36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36B0);
  }

  return result;
}

unint64_t sub_1C4B3975C()
{
  result = qword_1EC0C36B8;
  if (!qword_1EC0C36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36B8);
  }

  return result;
}

unint64_t sub_1C4B397B4()
{
  result = qword_1EC0C36C0;
  if (!qword_1EC0C36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36C0);
  }

  return result;
}

unint64_t sub_1C4B39808()
{
  result = qword_1EC0C36D0;
  if (!qword_1EC0C36D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36D0);
  }

  return result;
}

unint64_t sub_1C4B3985C()
{
  result = qword_1EC0C36D8;
  if (!qword_1EC0C36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36D8);
  }

  return result;
}

unint64_t sub_1C4B398B0()
{
  result = qword_1EC0C36E8;
  if (!qword_1EC0C36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnyEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4B399E4()
{
  result = qword_1EC0C36F0;
  if (!qword_1EC0C36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36F0);
  }

  return result;
}

unint64_t sub_1C4B39A3C()
{
  result = qword_1EC0C36F8;
  if (!qword_1EC0C36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36F8);
  }

  return result;
}

unint64_t sub_1C4B39A94()
{
  result = qword_1EC0C3700;
  if (!qword_1EC0C3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3700);
  }

  return result;
}

id SourceEntityStore.Iterator.next()()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = *(v1 + 40);
      v3 = *(v1 + 32);

      return v3;
    }

    return 0;
  }

  if (!*v0)
  {
    return 0;
  }

  v4 = [*v0 nextEvent];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v3 = [v4 eventBody];
  if (v3)
  {
    [v5 timestamp];
  }

  return v3;
}

uint64_t sub_1C4B39BBC()
{
  result = *v0;
  if (*(*v0 + 16))
  {
    result = sub_1C4868024(result);
    if (result)
    {
      v2 = result;
      sub_1C4C07300();
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1C4B39C18()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = sub_1C4B39C70();
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1C4B39C70()
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_self();
  v3 = v0[3];
  v4 = v0[4];
  v5 = sub_1C4F01108();
  v6 = [v2 newPrivateStreamDefaultConfigurationWithStoreBasePath_];

  v8 = v0[5];
  v7 = v0[6];
  v9 = objc_allocWithZone(MEMORY[0x1E698F318]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = sub_1C4B3A794(v8, v7, v6);
  objc_autoreleasePoolPop(v1);
  return v10;
}

void *sub_1C4B39D1C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v6 = v5;
  v37 = a2;
  v38 = a5;
  v10 = sub_1C4EF98F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v34 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v34 - v19;
  v35 = *a4;
  v34[1] = *v38;
  v6[2] = 0;
  v38 = a1;
  sub_1C4EF9888();
  v36 = a3;
  sub_1C4B2FA40();
  sub_1C4EF9888();

  v21 = *(v11 + 8);
  v21(v14, v10);
  sub_1C4EF9888();

  v21(v17, v10);
  v22 = sub_1C4EF98E8();
  v24 = v23;
  v21(v20, v10);
  v6[3] = v22;
  v6[4] = v24;
  v25 = v36;
  sub_1C449ED64(v36, v6 + OBJC_IVAR____TtC24IntelligencePlatformCore17SourceEntityStore_source);
  v26 = v37;
  v27 = sub_1C4EFD3D8();
  v29 = v28;
  sub_1C441A4E8();
  sub_1C447EB90(v25, v30);
  v31 = sub_1C4EFD548();
  sub_1C43FD3F8(v31);
  (*(v32 + 8))(v26);
  sub_1C447EB90(v38, type metadata accessor for Configuration);
  v6[5] = v27;
  v6[6] = v29;
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore17SourceEntityStore_stage) = v35;
  return v6;
}

uint64_t SourceEntityStore.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  sub_1C441A4E8();
  sub_1C447EB90(v0 + v3, v4);
  return v0;
}

uint64_t SourceEntityStore.__deallocating_deinit()
{
  SourceEntityStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void SourceEntityStore.storeOutput(_:)(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C4B39C18();
  v4 = [v3 source];

  [v4 sendEvent_];
  objc_autoreleasePoolPop(v2);
}

Swift::Void __swiftcall SourceEntityStore.clearAllData()()
{
  v0 = objc_autoreleasePoolPush();
  sub_1C4B3A1CC();

  objc_autoreleasePoolPop(v0);
}

void sub_1C4B3A1CC()
{
  v0 = sub_1C4B39C18();
  v6[4] = sub_1C45646BC;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1C45B7938;
  v6[3] = &unk_1F43FD220;
  v1 = _Block_copy(v6);

  [v0 pruneWithPredicateBlock_];

  _Block_release(v1);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else if (qword_1EDDFFAF0 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2E088);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C43F8000, v3, v4, "SourceEntityStore cleared.", v5, 2u);
    MEMORY[0x1C6942830](v5, -1, -1);
  }
}

void SourceEntityStore.makeIterator(startTime:)(void *a1@<X8>, double a2@<D0>)
{
  v5 = v2[3];
  v6 = v2[4];
  v8 = v2[5];
  v7 = v2[6];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4B3A3F0(v5, v6, v8, v7, a1, a2);
}

void sub_1C4B3A3F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>)
{
  v12 = objc_opt_self();
  v13 = sub_1C4B3A85C(a1, a2, v12);
  objc_allocWithZone(MEMORY[0x1E698F150]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = v13;
  v15 = sub_1C4B3A7F8(a3, a4, v13);
  if (v15 && (v16 = v15, v17 = [v15 newEnumeratorFromStartTime_], v16, v17))
  {

    *a5 = v17;
    a5[1] = 0;
  }

  else
  {
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000040, 0x80000001C4FB1EC0);
    MEMORY[0x1C6940010](a3, a4);
    sub_1C4F024A8();
    __break(1u);
  }
}

id sub_1C4B3A560@<X0>(void *a1@<X8>)
{
  result = SourceEntityStore.Iterator.next()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for SourceEntityStore()
{
  result = qword_1EDDE6070;
  if (!qword_1EDDE6070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B3A618()
{
  result = type metadata accessor for Source();
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

uint64_t sub_1C4B3A6E0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C4B3A734(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_1C4B3A794(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C4F01108();

  v6 = [v3 initWithPrivateStreamIdentifier:v5 storeConfig:a3];

  return v6;
}

id sub_1C4B3A7F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C4F01108();

  v6 = [v3 initWithStream:v5 config:a3];

  return v6;
}

id sub_1C4B3A85C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C4F01108();
  v5 = [a3 newPrivateStreamDefaultConfigurationWithStoreBasePath_];

  return v5;
}

unint64_t sub_1C4B3A8A4()
{
  result = sub_1C4A99B90();
  qword_1EC0C3708 = 0x6E6F73726570;
  unk_1EC0C3710 = 0xE600000000000000;
  qword_1EC0C3718 = &type metadata for Person;
  qword_1EC0C3720 = result;
  return result;
}

uint64_t SourceEntityType.init(id:metatype:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static SourceEntityType.person.getter()
{
  if (qword_1EC0B70C0 != -1)
  {
    sub_1C44177C4();
  }

  sub_1C441A500(&qword_1EC0C3708);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3A94C()
{
  result = sub_1C4886200();
  qword_1EC0C3728 = 0x656C646E6168;
  unk_1EC0C3730 = 0xE600000000000000;
  qword_1EC0C3738 = &type metadata for Handle;
  qword_1EC0C3740 = result;
  return result;
}

uint64_t static SourceEntityType.handle.getter()
{
  if (qword_1EC0B70C8 != -1)
  {
    sub_1C44329E0();
  }

  sub_1C441A500(&qword_1EC0C3728);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3A9E8()
{
  result = sub_1C4AD8DE8();
  strcpy(&qword_1EC0C3748, "postalAddress");
  unk_1EC0C3756 = -4864;
  qword_1EC0C3758 = &type metadata for PostalAddress;
  qword_1EC0C3760 = result;
  return result;
}

uint64_t static SourceEntityType.postalAddress.getter()
{
  if (qword_1EC0B70D0 != -1)
  {
    sub_1C440B2C0();
  }

  sub_1C441A500(&qword_1EC0C3748);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3AA94()
{
  result = sub_1C4ADCCEC();
  strcpy(&qword_1EC0C3768, "relationship");
  unk_1EC0C3775 = 0;
  unk_1EC0C3776 = -5120;
  qword_1EC0C3778 = &type metadata for Relationship;
  qword_1EC0C3780 = result;
  return result;
}

uint64_t static SourceEntityType.relationship.getter()
{
  if (qword_1EC0B70D8 != -1)
  {
    sub_1C442D320();
  }

  sub_1C441A500(&qword_1EC0C3768);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3AB3C()
{
  result = sub_1C4B3C228();
  strcpy(&qword_1EC0C3788, "basicProperty");
  unk_1EC0C3796 = -4864;
  qword_1EC0C3798 = &type metadata for BasicProperty;
  qword_1EC0C37A0 = result;
  return result;
}

uint64_t static SourceEntityType.basicProperty.getter()
{
  if (qword_1EC0B70E0 != -1)
  {
    sub_1C443375C();
  }

  sub_1C441A500(&qword_1EC0C3788);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3ABE8()
{
  result = sub_1C4B3C1D4();
  strcpy(&qword_1EC0C37A8, "socialProfile");
  unk_1EC0C37B6 = -4864;
  qword_1EC0C37B8 = &type metadata for SocialMediaProfile;
  qword_1EC0C37C0 = result;
  return result;
}

uint64_t static SourceEntityType.socialProfile.getter()
{
  if (qword_1EC0B70E8 != -1)
  {
    sub_1C43FF5C8();
  }

  sub_1C441A500(&qword_1EC0C37A8);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3AC94()
{
  result = sub_1C46D3F8C();
  qword_1EC0C37C8 = 0x656D796F6C706D65;
  unk_1EC0C37D0 = 0xEA0000000000746ELL;
  qword_1EC0C37D8 = &type metadata for Employment;
  qword_1EC0C37E0 = result;
  return result;
}

uint64_t static SourceEntityType.employment.getter()
{
  if (qword_1EC0B70F0 != -1)
  {
    sub_1C440FBB0();
  }

  sub_1C441A500(&qword_1EC0C37C8);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4B3AD38()
{
  sub_1C43FC174();
  sub_1C4B3C180();
  sub_1C4430164(&qword_1EC0C37E8);
  *(v1 + 16) = &type metadata for InstantMessageAddress;
  *(v1 + 24) = v0;
}

uint64_t static SourceEntityType.instantMessageAddress.getter()
{
  if (qword_1EC0B70F8 != -1)
  {
    sub_1C43FDE34();
  }

  sub_1C441A500(&qword_1EC0C37E8);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3ADDC()
{
  result = sub_1C4B2E360();
  qword_1EC0C3808 = 1735290739;
  unk_1EC0C3810 = 0xE400000000000000;
  qword_1EC0C3818 = &type metadata for Song;
  qword_1EC0C3820 = result;
  return result;
}

uint64_t static SourceEntityType.song.getter()
{
  if (qword_1EC0B7100 != -1)
  {
    sub_1C4413780();
  }

  sub_1C441A500(&qword_1EC0C3808);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3AE74()
{
  result = sub_1C458AACC();
  qword_1EC0C3828 = 7368801;
  unk_1EC0C3830 = 0xE300000000000000;
  qword_1EC0C3838 = &type metadata for App;
  qword_1EC0C3840 = result;
  return result;
}

uint64_t static SourceEntityType.app.getter()
{
  if (qword_1EC0B7108 != -1)
  {
    sub_1C4412488();
  }

  sub_1C441A500(&qword_1EC0C3828);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3AF0C()
{
  result = sub_1C4782F64();
  qword_1EC0C3848 = 0x746144746E657665;
  unk_1EC0C3850 = 0xEA00000000007365;
  qword_1EC0C3858 = &type metadata for EventDates;
  qword_1EC0C3860 = result;
  return result;
}

uint64_t static SourceEntityType.eventDates.getter()
{
  if (qword_1EC0B7110 != -1)
  {
    sub_1C4400DA8();
  }

  sub_1C441A500(&qword_1EC0C3848);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4B3AFB0()
{
  sub_1C43FC174();
  sub_1C479B050();
  sub_1C4430164(&qword_1EC0C3868);
  *(v1 + 16) = &type metadata for EventParticipant;
  *(v1 + 24) = v0;
}

uint64_t static SourceEntityType.eventParticipant.getter()
{
  if (qword_1EC0B7118 != -1)
  {
    sub_1C44202CC();
  }

  sub_1C441A500(&qword_1EC0C3868);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3B054()
{
  result = sub_1C4B3C12C();
  qword_1EC0C3888 = 0x4C64657469736976;
  unk_1EC0C3890 = 0xEF6E6F697461636FLL;
  qword_1EC0C3898 = &type metadata for VisitedLocation;
  qword_1EC0C38A0 = result;
  return result;
}

uint64_t static SourceEntityType.visitedLocation.getter()
{
  if (qword_1EC0B7120 != -1)
  {
    sub_1C4425FF4();
  }

  sub_1C441A500(&qword_1EC0C3888);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3B100()
{
  result = sub_1C479C84C();
  qword_1EC0C38A8 = 0x6E6553746E657665;
  unk_1EC0C38B0 = 0xEB00000000726564;
  qword_1EC0C38B8 = &type metadata for EventSender;
  qword_1EC0C38C0 = result;
  return result;
}

uint64_t static SourceEntityType.eventSender.getter()
{
  if (qword_1EC0B7128 != -1)
  {
    sub_1C440D7F8();
  }

  sub_1C441A500(&qword_1EC0C38A8);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4B3B1A8()
{
  sub_1C43FC174();
  sub_1C4B3C0D8();
  sub_1C4430164(&qword_1EC0C38C8);
  *(v1 + 16) = &type metadata for StructuredLocation;
  *(v1 + 24) = v0;
}

uint64_t static SourceEntityType.structuredLocation.getter()
{
  if (qword_1EC0B7130 != -1)
  {
    sub_1C44111C8();
  }

  sub_1C441A500(&qword_1EC0C38C8);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3B24C()
{
  result = sub_1C481C3B8();
  qword_1EC0C38E8 = 0x656E6F5A656D6974;
  unk_1EC0C38F0 = 0xE800000000000000;
  qword_1EC0C38F8 = &type metadata for GDTimeZone;
  qword_1EC0C3900 = result;
  return result;
}

uint64_t static SourceEntityType.timeZone.getter()
{
  if (qword_1EC0B7138 != -1)
  {
    sub_1C4409024();
  }

  sub_1C441A500(&qword_1EC0C38E8);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3B2EC()
{
  result = sub_1C47CEF0C();
  strcpy(&qword_1EC0C3908, "familyMember");
  unk_1EC0C3915 = 0;
  unk_1EC0C3916 = -5120;
  qword_1EC0C3918 = &type metadata for FamilyMember;
  qword_1EC0C3920 = result;
  return result;
}

uint64_t static SourceEntityType.familyMember.getter()
{
  if (qword_1EC0B7140 != -1)
  {
    sub_1C4403710();
  }

  sub_1C441A500(&qword_1EC0C3908);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4B3B394()
{
  sub_1C43FC174();
  sub_1C4783930();
  sub_1C4430164(&qword_1EC152C28);
  *(v1 + 16) = &type metadata for EventKitCalendar;
  *(v1 + 24) = v0;
}

uint64_t SourceEntityType.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t SourceEntityType.metatype.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

__n128 SourceEntityType.init(rawValue:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
  if (v6 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B70C0 != -1)
    {
      sub_1C44177C4();
    }

    v7 = &qword_1EC0C3708;
LABEL_9:
    v8 = *v7;
    v9 = v7[3];
    v32 = *(v7 + 1);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    goto LABEL_10;
  }

  v11 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v11 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B70C8 != -1)
    {
      sub_1C44329E0();
    }

    v7 = &qword_1EC0C3728;
    goto LABEL_9;
  }

  v12 = a1 == 0x64416C6174736F70 && a2 == 0xED00007373657264;
  if (v12 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B70D0 != -1)
    {
      sub_1C440B2C0();
    }

    v7 = &qword_1EC0C3748;
    goto LABEL_9;
  }

  v13 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
  if (v13 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B70D8 != -1)
    {
      sub_1C442D320();
    }

    v7 = &qword_1EC0C3768;
    goto LABEL_9;
  }

  v14 = a1 == 0x6F72506369736162 && a2 == 0xED00007974726570;
  if (v14 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B70E0 != -1)
    {
      sub_1C443375C();
    }

    v7 = &qword_1EC0C3788;
    goto LABEL_9;
  }

  v15 = a1 == 0x72506C6169636F73 && a2 == 0xED0000656C69666FLL;
  if (v15 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B70E8 != -1)
    {
      sub_1C43FF5C8();
    }

    v7 = &qword_1EC0C37A8;
    goto LABEL_9;
  }

  v16 = a1 == 0x656D796F6C706D65 && a2 == 0xEA0000000000746ELL;
  if (v16 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B70F0 != -1)
    {
      sub_1C440FBB0();
    }

    v7 = &qword_1EC0C37C8;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v18 = a1 == 0xD000000000000015 && v17 == a2;
  if (v18 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B70F8 != -1)
    {
      sub_1C43FDE34();
    }

    v7 = &qword_1EC0C37E8;
    goto LABEL_9;
  }

  v19 = a1 == 1735290739 && a2 == 0xE400000000000000;
  if (v19 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B7100 != -1)
    {
      sub_1C4413780();
    }

    v7 = &qword_1EC0C3808;
    goto LABEL_9;
  }

  v20 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v20 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B7108 != -1)
    {
      sub_1C4412488();
    }

    v7 = &qword_1EC0C3828;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v22 = a1 == 0xD000000000000010 && v21 == a2;
  if (v22 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B7118 != -1)
    {
      sub_1C44202CC();
    }

    v7 = &qword_1EC0C3868;
    goto LABEL_9;
  }

  v23 = a1 == 0x4C64657469736976 && a2 == 0xEF6E6F697461636FLL;
  if (v23 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B7120 != -1)
    {
      sub_1C4425FF4();
    }

    v7 = &qword_1EC0C3888;
    goto LABEL_9;
  }

  v24 = a1 == 0x746144746E657665 && a2 == 0xEA00000000007365;
  if (v24 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B7110 != -1)
    {
      sub_1C4400DA8();
    }

    v7 = &qword_1EC0C3848;
    goto LABEL_9;
  }

  v25 = a1 == 0x6E6553746E657665 && a2 == 0xEB00000000726564;
  if (v25 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B7128 != -1)
    {
      sub_1C440D7F8();
    }

    v7 = &qword_1EC0C38A8;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v27 = a1 == 0xD000000000000012 && v26 == a2;
  if (v27 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B7130 != -1)
    {
      sub_1C44111C8();
    }

    v7 = &qword_1EC0C38C8;
    goto LABEL_9;
  }

  v28 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
  if (v28 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B7138 != -1)
    {
      sub_1C4409024();
    }

    v7 = &qword_1EC0C38E8;
    goto LABEL_9;
  }

  v29 = a1 == 0x654D796C696D6166 && a2 == 0xEC0000007265626DLL;
  if (v29 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B7140 != -1)
    {
      sub_1C4403710();
    }

    v7 = &qword_1EC0C3908;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v31 = a1 == 0xD000000000000010 && v30 == a2;
  if (v31 || (sub_1C4407B10() & 1) != 0)
  {

    if (qword_1EC0B7148 != -1)
    {
      swift_once();
    }

    v7 = &qword_1EC152C28;
    goto LABEL_9;
  }

  sub_1C4B3BBD8(a1, a2, &v33);

  v8 = v33;
  v9 = v35;
  v32 = v34;
  if (!v34)
  {
    v32 = __PAIR128__(*(&v34 + 1), 0);
  }

LABEL_10:
  *a3 = v8;
  result = v32;
  *(a3 + 8) = v32;
  *(a3 + 24) = v9;
  return result;
}

double sub_1C4B3BBD8@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1EDDFDCF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8 && ((*(off_1EDDFF3D0 + 4))(), (*(v6 + 8))(&v22, a1, a2), v23))
  {
    v21 = v23;
    v7 = v22;
    v8 = v24;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CF8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      sub_1C43FE984();
      *(v12 + 4) = sub_1C441D828(0xD000000000000022, v14, &v22);
      _os_log_impl(&dword_1C43F8000, v10, v11, "SourceEntityType: resolveInternalType: loaded %s", v12, 0xCu);
      sub_1C440962C(v13);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    *a3 = v7;
    result = *&v21;
    *(a3 + 8) = v21;
    *(a3 + 24) = v8;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CF8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1C441D828(a1, a2, &v22);
      _os_log_impl(&dword_1C43F8000, v17, v18, "InternalPlugin: SourceEntityType: resolveInternalType: failed to resolve type for %s", v19, 0xCu);
      sub_1C440962C(v20);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1C4B3BEE4@<X0>(uint64_t *a1@<X8>)
{
  result = SourceEntityType.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C4B3BFC0()
{
  result = qword_1EC0C3928;
  if (!qword_1EC0C3928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3928);
  }

  return result;
}

uint64_t sub_1C4B3C014()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1C480EAD8();
}

uint64_t sub_1C4B3C02C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1C480F694();
}

uint64_t sub_1C4B3C058(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[2];
  v3 = a2[3];
  return sub_1C46875B4(*a1, a1[1], a1[2], a1[3], *a2, a2[1]);
}

unint64_t sub_1C4B3C084()
{
  result = qword_1EC0C3930;
  if (!qword_1EC0C3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3930);
  }

  return result;
}

unint64_t sub_1C4B3C0D8()
{
  result = qword_1EC0C3938;
  if (!qword_1EC0C3938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3938);
  }

  return result;
}

unint64_t sub_1C4B3C12C()
{
  result = qword_1EC0C3940;
  if (!qword_1EC0C3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3940);
  }

  return result;
}

unint64_t sub_1C4B3C180()
{
  result = qword_1EC0C3948;
  if (!qword_1EC0C3948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3948);
  }

  return result;
}

unint64_t sub_1C4B3C1D4()
{
  result = qword_1EC0C3950;
  if (!qword_1EC0C3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3950);
  }

  return result;
}

unint64_t sub_1C4B3C228()
{
  result = qword_1EC0C3958;
  if (!qword_1EC0C3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3958);
  }

  return result;
}

uint64_t String.prefixed(with:)(uint64_t *a1)
{
  sub_1C440C724(a1);
  sub_1C445E9B8();
  MEMORY[0x1C6940010](v2, v1);
  return v4;
}

void String.sourceBasedOnPrefix.getter()
{
  sub_1C43FBD3C();
  v23 = v0;
  v22 = type metadata accessor for SourceIdPrefix();
  v1 = sub_1C43FCDF8(v22);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  if (qword_1EDDE9370 != -1)
  {
LABEL_11:
    sub_1C443377C();
  }

  v11 = 0;
  v12 = off_1EDDE9378;
  v13 = *(off_1EDDE9378 + 2);
  while (1)
  {
    if (v13 == v11)
    {
      v18 = 1;
      v19 = v23;
      goto LABEL_9;
    }

    if (v11 >= v12[2])
    {
      __break(1u);
      goto LABEL_11;
    }

    v14 = v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    sub_1C4407B2C();
    sub_1C44EE574();
    v16 = v8[1];
    v24 = *v8;
    v25 = v16;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C445E9B8();
    v17 = sub_1C4F013E8();

    if (v17)
    {
      break;
    }

    ++v11;
    sub_1C4570DE4(v8);
  }

  sub_1C4407B2C();
  sub_1C44EE62C();
  v19 = v23;
  v20 = *(v22 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4570DE4(v10);
  v18 = 0;
LABEL_9:
  v21 = type metadata accessor for Source();
  sub_1C440BAA8(v19, v18, 1, v21);
  sub_1C43FE9F0();
}

uint64_t String.hasPrefix(_:)(uint64_t *a1)
{
  sub_1C440C724(a1);
  sub_1C445E9B8();
  v1 = sub_1C4F013E8();

  return v1 & 1;
}

void sub_1C4B3C50C()
{
  sub_1C43FBD3C();
  sub_1C4404078();
  v48 = *MEMORY[0x1E69E9840];
  *&v45 = v2;
  *(&v45 + 1) = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C3980, &qword_1C4F52E10);
  if (swift_dynamicCast())
  {
    sub_1C441D670(v43, &v46);
    sub_1C4409678(&v46, v47);
    sub_1C440D818();
    sub_1C4EF9688();
    v43[0] = v45;
    sub_1C440962C(&v46);
    goto LABEL_59;
  }

  v44 = 0;
  memset(v43, 0, sizeof(v43));
  sub_1C4420C3C(v43, &qword_1EC0C3988, &qword_1C4F52E18);
  if ((v0 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((v0 & 0x2000000000000000) != 0)
  {
    *&v43[0] = v1;
    *(&v43[0] + 1) = v0 & 0xFFFFFFFFFFFFFFLL;
    v4 = v43;
    v5 = HIBYTE(v0) & 0xF;
  }

  else if ((v1 & 0x1000000000000000) != 0)
  {
    v4 = ((v0 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1C4F022F8();
  }

  sub_1C4B4022C(v4, v5, &v46);
  v6 = *(&v46 + 1);
  v7 = v46;
  if (*(&v46 + 1) >> 60 != 15)
  {
    v43[0] = v46;
    goto LABEL_59;
  }

  if ((v0 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v0) & 0xF;
  }

  else
  {
    v8 = v1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v43[0] = MEMORY[0x1C69386E0](v8);
  *(&v43[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v43[0]);
  v10 = sub_1C4B40348(sub_1C4B408A4);
  v12 = *(&v43[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v43[0]);
  switch(*(&v43[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v43[0]) - LODWORD(v43[0]);
      if (__OFSUB__(DWORD1(v43[0]), v43[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v43[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v43[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v43[0] + 16);
      v20 = *(*&v43[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1C4EF99E8();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v42 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v45 + 7) = 0;
      *&v45 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v43[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v31 = sub_1C4425414();
      v27 = sub_1C4B9AAA8(v31, v32, v33);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_1C4F01358();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_1C4F01398();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v46 = v13;
      *(&v46 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v46 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_1C4F022F8();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v34 = sub_1C4425414();
      v17 = sub_1C4B9AAA8(v34, v35, v36);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    sub_1C4425414();
    v17 = sub_1C4F01368();
LABEL_46:
    *(&v45 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      sub_1C441C4DC();
      sub_1C4EF9A08();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    sub_1C441C4DC();
    sub_1C4EF9A08();
    sub_1C441DFEC(v42, v6);
    goto LABEL_58;
  }

  sub_1C441DFEC(v42, v6);
LABEL_59:
  v37 = sub_1C4410428();
  sub_1C44344B8(v37, v38);

  v39 = sub_1C4410428();
  sub_1C4434000(v39, v40);
  v41 = *MEMORY[0x1E69E9840];
  sub_1C4410428();
  sub_1C43FE9F0();
}

void sub_1C4B3C9B4()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDDF7898);
  sub_1C442D340();
  if (qword_1EDDFED28 != -1)
  {
    sub_1C440FADC();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, &unk_1EDDFD088);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4414EE8(0x6E63u);
}

uint64_t SourceIdPrefix.init(string:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v3 = *(type metadata accessor for SourceIdPrefix() + 20);
  sub_1C441A520();
  return sub_1C44EE62C();
}

void sub_1C4B3CAA4()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDDF7980);
  sub_1C442D340();
  if (qword_1EDDFED28 != -1)
  {
    sub_1C440FADC();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, &unk_1EDDFD088);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44163F4(0x696E6167724F6E63);
}

uint64_t sub_1C4B3CB68(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v3, a2);
  sub_1C4407B2C();
  return sub_1C44EE574();
}

void sub_1C4B3CBC0()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDDE9328);
  sub_1C442D340();
  if (qword_1EDDFED28 != -1)
  {
    sub_1C440FADC();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, &unk_1EDDFD088);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4405338(0x6E63u);
}

void sub_1C4B3CC6C()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, &qword_1EDDF78D0);
  sub_1C442D340();
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD0D8);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C440FBD0();
  qword_1EDDF78D0 = v3;
  unk_1EDDF78D8 = 0xE800000000000000;
}

void sub_1C4B3CD20()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, &qword_1EDDF79A8);
  sub_1C442D340();
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD0D8);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C440FBD0();
  qword_1EDDF79A8 = v3;
  *algn_1EDDF79B0 = 0xEB00000000707041;
}

void sub_1C4B3CDDC()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDDE92D0);
  sub_1C442D340();
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, &qword_1EDDFD270);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(17);
}

void sub_1C4B3CE94()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDDE9288);
  sub_1C442D340();
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, &qword_1EDDFD270);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(21);
}

void sub_1C4B3CF4C()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2CEE8);
  sub_1C442D340();
  if (qword_1EDDFD068 != -1)
  {
    sub_1C44123D8();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD070);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4414EE8(0x6773u);
}

void sub_1C4B3CFD4()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D050);
  sub_1C442D340();
  if (qword_1EDDFD068 != -1)
  {
    sub_1C44123D8();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD070);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4405338(0x6773u);
}

uint64_t sub_1C4B3D05C()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D098);
  sub_1C442D340();
  if (qword_1EDDFD068 != -1)
  {
    sub_1C44123D8();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD070);
  v2 = *(v0 + 20);
  sub_1C441A520();
  result = sub_1C44EE574();
  strcpy(qword_1EDE2D098, "sgContactApp");
  unk_1EDE2D0A5 = 0;
  unk_1EDE2D0A6 = -5120;
  return result;
}

void sub_1C4B3D0FC()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2CF18);
  sub_1C442D340();
  if (qword_1EDDFD110 != -1)
  {
    sub_1C4403664();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD118);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4426E38(0x6773u);
}

uint64_t sub_1C4B3D184()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, &qword_1EDE2D0C8);
  sub_1C442D340();
  if (qword_1EDDFD110 != -1)
  {
    sub_1C4403664();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD118);
  v2 = *(v0 + 20);
  sub_1C441A520();
  result = sub_1C44EE574();
  qword_1EDE2D0C8 = 0x697461636F4C6773;
  *algn_1EDE2D0D0 = 0xEA00000000006E6FLL;
  return result;
}

void sub_1C4B3D220()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, &qword_1EDE2CF00);
  sub_1C442D340();
  if (qword_1EDDFD110 != -1)
  {
    sub_1C4403664();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD118);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C440FBD0();
  qword_1EDE2CF00 = v3;
  unk_1EDE2CF08 = 0xE800000000000000;
}

uint64_t sub_1C4B3D2B0()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, &qword_1EDE2D5D8);
  sub_1C442D340();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C440B19C();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFED10);
  v2 = *(v0 + 20);
  sub_1C441A520();
  result = sub_1C44EE574();
  qword_1EDE2D5D8 = 0x6E6576456566696CLL;
  unk_1EDE2D5E0 = 0xE900000000000074;
  return result;
}

void sub_1C4B3D34C()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D6C8);
  sub_1C442D340();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C440B19C();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFED10);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(17);
}

void sub_1C4B3D40C()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D668);
  sub_1C442D340();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C440B19C();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFED10);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(20);
}

void sub_1C4B3D4A0()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D650);
  sub_1C442D340();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C440B19C();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFED10);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(22);
}

uint64_t sub_1C4B3D534()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D068);
  v1 = sub_1C442B738(v0, qword_1EDE2D068);
  if (qword_1EDDFED40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Source();
  sub_1C442B738(v2, qword_1EDDFD2A8);
  v3 = *(v0 + 20);
  result = sub_1C44EE574();
  *v1 = 0x694C657275747566;
  v1[1] = 0xEF746E6576456566;
  return result;
}

void sub_1C4B3D604()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2CF78);
  sub_1C442D340();
  if (qword_1EDDFED40 != -1)
  {
    sub_1C440604C();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFD2A8);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(23);
}

uint64_t sub_1C4B3D6C4(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v7, a2);
  v8 = sub_1C442B738(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Source();
  sub_1C442B738(v9, a4);
  v10 = *(v7 + 20);
  sub_1C441A520();
  result = sub_1C44EE574();
  *v8 = 0xD000000000000015;
  v8[1] = 0x80000001C4FB2040;
  return result;
}

void sub_1C4B3D77C()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2CF48);
  sub_1C442D340();
  if (qword_1EDDFED40 != -1)
  {
    sub_1C440604C();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFD2A8);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(28);
}

void sub_1C4B3D810()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, &qword_1EDE2D608);
  sub_1C442D340();
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD138);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C441E6C0();
  qword_1EDE2D608 = v3 & 0xFFFFFFFFFFFFLL | 0x70000000000000;
  *algn_1EDE2D610 = 0xE700000000000000;
}

void sub_1C4B3D8A0()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, &qword_1EDE2D728);
  sub_1C442D340();
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD138);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C441E6C0();
  qword_1EDE2D728 = v3 & 0xFFFFFFFFFFFFLL | 0x5070000000000000;
  *algn_1EDE2D730 = 0xED00006E6F737265;
}

void sub_1C4B3D93C()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, &qword_1EDE2D740);
  sub_1C442D340();
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD138);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C441E6C0();
  qword_1EDE2D740 = v3 & 0xFFFFFFFFFFFFLL | 0x4170000000000000;
  unk_1EDE2D748 = 0xEA00000000007070;
}

void sub_1C4B3D9D0()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, &qword_1EDE2D5F0);
  sub_1C442D340();
  if (qword_1EDDFD0A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD0B0);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C440FBD0();
  qword_1EDE2D5F0 = v3;
  unk_1EDE2D5F8 = 0xE800000000000000;
}

void sub_1C4B3DA70()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D620);
  sub_1C442D340();
  if (qword_1EDDFD178 != -1)
  {
    swift_once();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, &qword_1EDDFD180);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(30);
}

void sub_1C4B3DB14()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D080);
  sub_1C442D340();
  if (qword_1EDDFED38 != -1)
  {
    sub_1C442BF5C();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD0F0);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4415C74();
  sub_1C44163F4(v3);
}

void sub_1C4B3DBA8()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D710);
  sub_1C442D340();
  if (qword_1EDDFED38 != -1)
  {
    sub_1C442BF5C();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD0F0);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4415C74();
  sub_1C44163F4(v3);
}

void sub_1C4B3DC3C()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2DD40);
  sub_1C442D340();
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44124A8();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD158);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4426E38(0x6B65u);
}

void sub_1C4B3DCC4()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D680);
  sub_1C442D340();
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44124A8();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFD158);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(20);
}

void sub_1C4B3DD58()
{
  v1 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v1, &qword_1EDE2D6B0);
  sub_1C442D340();
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44124A8();
  }

  v2 = sub_1C440E774();
  sub_1C442B738(v2, qword_1EDDFD158);
  v3 = *(v1 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4408FE4();
  qword_1EDE2D6B0 = v4;
  unk_1EDE2D6B8 = v0;
}

void sub_1C4B3DDEC()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D6F8);
  sub_1C442D340();
  if (qword_1EDDFD2F0 != -1)
  {
    sub_1C441CD94();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD2F8);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44163F4(0x656C646E7542736CLL);
}

void sub_1C4B3DE8C()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D698);
  sub_1C442D340();
  if (qword_1EDDFD2F0 != -1)
  {
    sub_1C441CD94();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFD2F8);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(19);
}

void sub_1C4B3DF20()
{
  v1 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v1, &qword_1EDE2DD58);
  sub_1C442D340();
  if (qword_1EDDFD218 != -1)
  {
    sub_1C44353D0();
  }

  v2 = sub_1C440E774();
  sub_1C442B738(v2, &qword_1EDDFD220);
  v3 = *(v1 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4408FE4();
  qword_1EDE2DD58 = v4;
  unk_1EDE2DD60 = v0;
}

void sub_1C4B3DFB4()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D638);
  sub_1C442D340();
  if (qword_1EDDFD218 != -1)
  {
    sub_1C44353D0();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, &qword_1EDDFD220);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(24);
}

void sub_1C4B3E048()
{
  v1 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v1, &qword_1EDE2CFF0);
  sub_1C442D340();
  if (qword_1EDDFD240 != -1)
  {
    sub_1C43FC8A0();
  }

  v2 = sub_1C440E774();
  sub_1C442B738(v2, &qword_1EDDFD248);
  v3 = *(v1 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4408FE4();
  qword_1EDE2CFF0 = v4;
  *algn_1EDE2CFF8 = v0;
}

void sub_1C4B3E0DC()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2CF30);
  sub_1C442D340();
  if (qword_1EDDFD240 != -1)
  {
    sub_1C43FC8A0();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, &qword_1EDDFD248);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(29);
}

uint64_t sub_1C4B3E170()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D0B0);
  v1 = sub_1C442B738(v0, qword_1EDE2D0B0);
  if (qword_1EDDFD318 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Source();
  sub_1C442B738(v2, qword_1EDDFD320);
  v3 = *(v0 + 20);
  result = sub_1C44EE574();
  strcpy(v1, "relationship");
  *(v1 + 13) = 0;
  *(v1 + 14) = -5120;
  return result;
}

void sub_1C4B3E23C()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D6E0);
  sub_1C442D340();
  if (qword_1EDDFD2C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Source();
  sub_1C442B738(v1, qword_1EDDFD2D0);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44163F4(0x6974616C65526770);
}

void sub_1C4B3E2EC()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D020);
  sub_1C442D340();
  if (qword_1EDDFD340 != -1)
  {
    sub_1C4430170();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFD348);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(16);
}

void sub_1C4B3E380()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D038);
  sub_1C442D340();
  if (qword_1EDDFD340 != -1)
  {
    sub_1C4430170();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFD348);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(16);
}

void sub_1C4B3E414()
{
  v1 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v1, &qword_1EDE2CFD8);
  sub_1C442D340();
  if (qword_1EDDFD1F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C440E774();
  sub_1C442B738(v2, &qword_1EDDFD1F8);
  v3 = *(v1 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4408FE4();
  qword_1EDE2CFD8 = v4;
  unk_1EDE2CFE0 = v0;
}

void sub_1C4B3E4B8()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2D008);
  sub_1C442D340();
  if (qword_1EDDFD288 != -1)
  {
    swift_once();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, &qword_1EDDFD290);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(16);
}

void sub_1C4B3E55C()
{
  v0 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v0, qword_1EDE2CF90);
  sub_1C442D340();
  if (qword_1EDDFD1A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, &qword_1EDDFD1A8);
  v2 = *(v0 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(22);
}

void sub_1C4B3E600()
{
  v1 = type metadata accessor for SourceIdPrefix();
  sub_1C44F9918(v1, &qword_1EDE2CFC0);
  sub_1C442D340();
  if (qword_1EDDFD1C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C440E774();
  sub_1C442B738(v2, &qword_1EDDFD1D0);
  v3 = *(v1 + 20);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4408FE4();
  qword_1EDE2CFC0 = v4;
  unk_1EDE2CFC8 = v0;
}

uint64_t SourceIdPrefix.source.getter()
{
  v0 = *(type metadata accessor for SourceIdPrefix() + 20);
  sub_1C441A520();
  return sub_1C44EE574();
}

uint64_t sub_1C4B3E6E0()
{
  if (qword_1EDDFDCF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8 && ((*(off_1EDDFF3D0 + 3))(), (v1 = (*(v0 + 8))()) != 0))
  {
    v2 = v1;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v4 = sub_1C4F00968();
    v5 = sub_1C4F01CF8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = *(v2 + 16);

      _os_log_impl(&dword_1C43F8000, v4, v5, "InternalPlugin: SourceIdPrefix: loadInternalSourceIdPrefixes: loaded %ld sources", v6, 0xCu);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDDFECB8);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v8, v9, "InternalPlugin: SourceIdPrefix: loadInternalSourceIdPrefixes: failed to load internal sources", v10, 2u);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    return 0;
  }

  return v2;
}

void *sub_1C4B3E944()
{
  result = sub_1C4B3E964();
  off_1EDDE9378 = result;
  return result;
}

uint64_t sub_1C4B3E964()
{
  sub_1C456902C(&qword_1EC0C0438, &unk_1C4F52E20);
  v0 = type metadata accessor for SourceIdPrefix();
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4F21800;
  if (qword_1EDDF7890 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDDF7898);
  sub_1C44EE574();
  if (qword_1EDDF7978 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDDF7980);
  sub_1C44EE574();
  if (qword_1EDDE9320 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDDE9328);
  sub_1C44EE574();
  if (qword_1EDDF78C8 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, &qword_1EDDF78D0);
  sub_1C44EE574();
  if (qword_1EDDF79A0 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, &qword_1EDDF79A8);
  sub_1C44EE574();
  if (qword_1EDDE92C8 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDDE92D0);
  sub_1C44EE574();
  if (qword_1EDDE9280 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDDE9288);
  sub_1C44EE574();
  if (qword_1EDDE9228 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2CEE8);
  sub_1C44EE574();
  if (qword_1EDDE9300 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D050);
  sub_1C44EE574();
  if (qword_1EDDE9358 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D098);
  sub_1C44EE574();
  if (qword_1EDDE9240 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2CF18);
  sub_1C44EE574();
  if (qword_1EDDE9368 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, &qword_1EDE2D0C8);
  sub_1C44EE574();
  if (qword_1EDDE9230 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, &qword_1EDE2CF00);
  sub_1C44EE574();
  if (qword_1EDDF7888 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, &qword_1EDE2D5D8);
  sub_1C44EE574();
  if (qword_1EDDF7950 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D6C8);
  sub_1C44EE574();
  if (qword_1EDDE9278 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2CFA8);
  sub_1C44EE574();
  if (qword_1EDDF7920 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D668);
  sub_1C44EE574();
  if (qword_1EDDF7918 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D650);
  sub_1C44EE574();
  if (qword_1EDDE9310 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D068);
  sub_1C44EE574();
  if (qword_1EDDE9268 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2CF78);
  sub_1C44EE574();
  if (qword_1EDDE9260 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2CF60);
  sub_1C44EE574();
  if (qword_1EDDE9258 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2CF48);
  sub_1C44EE574();
  if (qword_1EDDF78F0 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, &qword_1EDE2D608);
  sub_1C44EE574();
  if (qword_1EDDF79C0 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, &qword_1EDE2D740);
  sub_1C44EE574();
  if (qword_1EDDF7998 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, &qword_1EDE2D728);
  sub_1C44EE574();
  if (qword_1EDDF78B8 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, &qword_1EDE2D5F0);
  sub_1C44EE574();
  if (qword_1EDDF7900 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D620);
  sub_1C44EE574();
  if (qword_1EDDE9348 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D080);
  sub_1C44EE574();
  if (qword_1EDDF7970 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D710);
  sub_1C44EE574();
  if (qword_1EDDFBC98 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2DD40);
  sub_1C44EE574();
  if (qword_1EDDF7930 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D680);
  sub_1C44EE574();
  if (qword_1EDDF7948 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, &qword_1EDE2D6B0);
  sub_1C44EE574();
  if (qword_1EDDF7960 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D6F8);
  sub_1C44EE574();
  if (qword_1EDDF7938 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D698);
  sub_1C44EE574();
  if (qword_1EDDFBCA0 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, &qword_1EDE2DD58);
  sub_1C44EE574();
  if (qword_1EDDF7908 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D638);
  sub_1C44EE574();
  if (qword_1EDDE92C0 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, &qword_1EDE2CFF0);
  sub_1C44EE574();
  if (qword_1EDDE9248 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2CF30);
  sub_1C44EE574();
  if (qword_1EDDE9360 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D0B0);
  sub_1C44EE574();
  if (qword_1EDDE92F0 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D020);
  sub_1C44EE574();
  if (qword_1EDDE92F8 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D038);
  sub_1C44EE574();
  if (qword_1EDDF7958 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D6E0);
  sub_1C44EE574();
  if (qword_1EDDE92B0 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, &qword_1EDE2CFD8);
  sub_1C44EE574();
  if (qword_1EDDE92E8 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2D008);
  sub_1C44EE574();
  if (qword_1EDDE9270 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, qword_1EDE2CF90);
  sub_1C44EE574();
  if (qword_1EDDE92A8 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v0, &qword_1EDE2CFC0);
  sub_1C44EE574();
  v4 = sub_1C4B3E6E0();
  if (v4)
  {
    sub_1C49D43C4(v4);
  }

  return v3;
}

uint64_t static SourceIdPrefix.allSourceIdPrefixes.getter()
{
  if (qword_1EDDE9370 != -1)
  {
    sub_1C443377C();
  }

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4B3FC54@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0C3960, &qword_1C4F52CC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  if (qword_1EDDFDCF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8)
  {
    (*(off_1EDDFF3D0 + 3))();
    (*(v10 + 24))(a1, a2);
    v11 = type metadata accessor for SourceIdPrefix();
    if (sub_1C44157D4(v9, 1, v11) != 1)
    {
      sub_1C4407B2C();
      sub_1C44EE62C();
      v12 = a3;
      v13 = 0;
      v14 = v11;
      return sub_1C440BAA8(v12, v13, 1, v14);
    }
  }

  else
  {
    v15 = type metadata accessor for SourceIdPrefix();
    sub_1C440BAA8(v9, 1, 1, v15);
  }

  sub_1C4420C3C(v9, &qword_1EC0C3960, &qword_1C4F52CC0);
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CF8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1C441D828(a1, a2, &v22);
    _os_log_impl(&dword_1C43F8000, v17, v18, "InternalPlugin: SourceIdPrefix: resolveInternalSourceIdPrefix: failed to resolve source for %s", v19, 0xCu);
    sub_1C440962C(v20);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v14 = type metadata accessor for SourceIdPrefix();
  v12 = a3;
  v13 = 1;
  return sub_1C440BAA8(v12, v13, 1, v14);
}

void sub_1C4B3FF18(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  SourceIdPrefix.init(rawValue:)();
}

uint64_t sub_1C4B3FF24@<X0>(uint64_t *a1@<X8>)
{
  result = SourceIdPrefix.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SourceIdPrefix.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

void String.sourceIdPrefix.getter()
{
  sub_1C4404078();
  v1 = v0;
  v2 = objc_autoreleasePoolPush();
  sub_1C44ECD54(v1);

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1C4B400F8(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_1C4F02248();
  return 0;
}

uint64_t sub_1C4B401B0()
{
  result = type metadata accessor for Source();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4B4022C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1C4EF9908();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1C4EF9578();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1C4EF9528();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1C4EF99D8();
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

void *sub_1C4B402F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1C4B40754(sub_1C4B40900, v5, a1, a2);
}

uint64_t sub_1C4B40348(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C4434000(v6, v5);
      *v4 = xmmword_1C4F4FDA0;
      sub_1C4434000(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_1C4EF9538() && __OFSUB__(v6, sub_1C4EF9568()))
      {
        goto LABEL_24;
      }

      v13 = sub_1C4EF9578();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1C4EF9518();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_1C4B407B8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C4434000(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_1C4F4FDA0;
      sub_1C4434000(0, 0xC000000000000000);
      sub_1C4EF9918();
      v6 = v20;
      v9 = sub_1C4B407B8(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x1E69E9840];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_1C4434000(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_1C4B4070C(uint64_t result)
{
  if (result)
  {
    result = sub_1C4F02258();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C4B40754(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1C4B407B8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1C4EF9538();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1C4EF9568();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1C4EF9558();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_1C4B4086C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1C4B402F4(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1C4B408C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_1C4B4070C(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t sub_1C4B40934()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F530E0);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B409D4()
{
  sub_1C43FCF70();
  sub_1C43FDE54();
  v0 = type metadata accessor for PhaseStores();
  sub_1C4407B44(v0);
  v1 = type metadata accessor for EKEventSourceIngestor();
  sub_1C44124C8(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  v9 = swift_task_alloc();
  v10 = sub_1C4409044(v9);
  *v10 = v11;
  sub_1C44246F8(v10);

  return sub_1C46D0AF4();
}

uint64_t sub_1C4B40A90()
{
  sub_1C43FEAEC();
  sub_1C43FDE54();
  v0 = type metadata accessor for PhaseStores();
  sub_1C4407B44(v0);
  v1 = type metadata accessor for INGroupSourceIngestor();
  sub_1C44124C8(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  sub_1C4430190();
  sub_1C4941738();
  sub_1C43FBDA0();

  return v9();
}

uint64_t sub_1C4B40B34()
{
  sub_1C43FCF70();
  sub_1C43FDE54();
  v0 = type metadata accessor for PhaseStores();
  sub_1C4407B44(v0);
  v1 = type metadata accessor for SGEventSourceIngestor();
  sub_1C44124C8(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  v9 = swift_task_alloc();
  v10 = sub_1C4409044(v9);
  *v10 = v11;
  sub_1C44246F8(v10);

  return sub_1C4B0EA70();
}

uint64_t sub_1C4B40BF0()
{
  sub_1C43FCF70();
  sub_1C43FDE54();
  v0 = type metadata accessor for PhaseStores();
  sub_1C4407B44(v0);
  v1 = type metadata accessor for FAFamilySourceIngestor();
  sub_1C44124C8(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  v9 = swift_task_alloc();
  v10 = sub_1C4409044(v9);
  *v10 = v11;
  sub_1C44246F8(v10);

  return sub_1C47CD2E0();
}

uint64_t sub_1C4B40CAC()
{
  sub_1C43FEAEC();
  sub_1C43FDE54();
  v0 = type metadata accessor for PhaseStores();
  sub_1C4407B44(v0);
  v1 = type metadata accessor for INPersonSourceIngestor();
  sub_1C44124C8(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  sub_1C4430190();
  sub_1C4944B1C();
  sub_1C43FBDA0();

  return v9();
}

uint64_t sub_1C4B40D50()
{
  sub_1C43FCF70();
  sub_1C43FDE54();
  v0 = type metadata accessor for PhaseStores();
  sub_1C4407B44(v0);
  v1 = type metadata accessor for PHPersonSourceIngestor();
  sub_1C44124C8(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  v9 = swift_task_alloc();
  v10 = sub_1C4409044(v9);
  *v10 = v11;
  sub_1C44246F8(v10);

  return sub_1C4AB9724();
}

uint64_t sub_1C4B40E0C()
{
  sub_1C43FCF70();
  v1 = sub_1C44353F0();
  v2 = type metadata accessor for LifeEventSourceIngestor(v1);
  v3 = sub_1C440FBE0(v2);
  sub_1C440D830(v3);
  sub_1C443379C(*(v0 + 28), v8, SWORD2(v8), SBYTE6(v8), SHIBYTE(v8));
  v4 = swift_task_alloc();
  v5 = sub_1C4409044(v4);
  *v5 = v6;
  sub_1C44246F8(v5);

  return sub_1C49D0868();
}

uint64_t sub_1C4B40ECC()
{
  sub_1C43FCF70();
  sub_1C44353F0();
  v0 = type metadata accessor for SGContactSourceIngestor();
  v1 = sub_1C440FBE0(v0);
  sub_1C44111F4(v1, v2, v3, v4, v5, v6, v7, v8, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13));
  v9 = swift_task_alloc();
  v10 = sub_1C4409044(v9);
  *v10 = v11;
  sub_1C44246F8(v10);

  return sub_1C4B07C5C();
}

uint64_t sub_1C4B40F84()
{
  sub_1C43FCF70();
  sub_1C43FDE54();
  v0 = type metadata accessor for PhaseStores();
  sub_1C4407B44(v0);
  v1 = type metadata accessor for ScreenTimeSourceIngestor();
  sub_1C44124C8(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  v9 = swift_task_alloc();
  v10 = sub_1C4409044(v9);
  *v10 = v11;
  sub_1C44246F8(v10);

  return sub_1C4AF26BC();
}

uint64_t sub_1C4B41040()
{
  sub_1C43FCF70();
  v1 = sub_1C44353F0();
  v2 = type metadata accessor for CNContactDeltaSourceIngestor(v1);
  v3 = sub_1C440FBE0(v2);
  sub_1C440D830(v3);
  sub_1C443379C(*(v0 + 28), v8, SWORD2(v8), SBYTE6(v8), SHIBYTE(v8));
  v4 = swift_task_alloc();
  v5 = sub_1C4409044(v4);
  *v5 = v6;
  sub_1C44246F8(v5);

  return sub_1C467ED38();
}

uint64_t sub_1C4B41100()
{
  v9 = v0;
  v1 = *(v0 + 32);
  v2 = *(v1 + *(type metadata accessor for PhaseStores() + 24));
  v8[0] = *(v1 + *(type metadata accessor for LSBundleRecordSourceIngestor() + 24));
  sub_1C4495FC0(v8);
  v3 = [objc_opt_self() enumeratorWithOptions_];
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 40) = 0;
  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v0 + 16;
  v4[5] = v0 + 24;
  v4[6] = v0 + 40;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C4A2CAF4, v4);
  v5 = *(v0 + 32);

  sub_1C4EF9AE8();
  sub_1C4647050();
  sub_1C4A2C200(v5, (v0 + 24), (v0 + 16));

  sub_1C43FBDA0();

  return v6();
}

uint64_t sub_1C4B41290()
{
  sub_1C43FCF70();
  v1 = sub_1C44353F0();
  v2 = type metadata accessor for LifeEventDeltaSourceIngestor(v1);
  v3 = sub_1C44060EC(v2);
  sub_1C440D830(v3);
  sub_1C443379C(*(v0 + 20), v8, SWORD2(v8), SBYTE6(v8), SHIBYTE(v8));
  v4 = swift_task_alloc();
  v5 = sub_1C4409044(v4);
  *v5 = v6;
  sub_1C44246F8(v5);

  return sub_1C49CE4A8();
}

uint64_t sub_1C4B41350()
{
  sub_1C43FEAEC();
  sub_1C43FDE54();
  v0 = type metadata accessor for PhaseStores();
  v1 = sub_1C4407B44(v0);
  v2 = type metadata accessor for WalletEmailOrderSourceIngestor(v1);
  sub_1C4426014(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  if (qword_1EDDFD288 != -1)
  {
    swift_once();
  }

  v10 = sub_1C442E54C();
  sub_1C442B738(v10, &qword_1EDDFD290);
  sub_1C4400DD8();
  sub_1C4D4459C();
  sub_1C43FBDA0();

  return v11();
}

uint64_t sub_1C4B41434()
{
  sub_1C43FEAEC();
  v10 = v1;
  sub_1C43FDE54();
  v2 = type metadata accessor for PhaseStores();
  v3 = sub_1C4407B44(v2);
  v9[0] = *(v0 + *(type metadata accessor for BMAppleMusicEventSourceIngestor(v3) + 24));
  sub_1C4495FC0(v9);
  sub_1C4430190();
  sub_1C46584FC(v4, v5, v6);
  sub_1C43FBDA0();

  return v7();
}

uint64_t sub_1C4B414F4()
{
  sub_1C43FCF70();
  sub_1C43FDE54();
  v0 = type metadata accessor for PhaseStores();
  sub_1C4407B44(v0);
  v1 = type metadata accessor for FavoriteSportsTeamSourceIngestor();
  sub_1C44124C8(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  v9 = swift_task_alloc();
  v10 = sub_1C4409044(v9);
  *v10 = v11;
  sub_1C44246F8(v10);

  return sub_1C47D1348();
}

uint64_t sub_1C4B415B0()
{
  sub_1C43FCF70();
  sub_1C43FDE54();
  v0 = type metadata accessor for PhaseStores();
  sub_1C4407B44(v0);
  v1 = type metadata accessor for HKEmergencyContactSourceIngestor();
  sub_1C44124C8(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  v9 = swift_task_alloc();
  v10 = sub_1C4409044(v9);
  *v10 = v11;
  sub_1C44246F8(v10);

  return sub_1C4888618();
}

uint64_t sub_1C4B4166C()
{
  sub_1C43FCF70();
  sub_1C44353F0();
  v0 = type metadata accessor for PGRelationshipFullSourceIngestor();
  v1 = sub_1C440FBE0(v0);
  sub_1C44111F4(v1, v2, v3, v4, v5, v6, v7, v8, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13));
  v9 = swift_task_alloc();
  v10 = sub_1C4409044(v9);
  *v10 = v11;
  sub_1C44246F8(v10);

  return sub_1C4AA6A68();
}

uint64_t sub_1C4B41724()
{
  sub_1C43FEAEC();
  sub_1C43FDE54();
  v0 = type metadata accessor for PhaseStores();
  v1 = sub_1C4407B44(v0);
  v2 = type metadata accessor for WalletClassicOrderSourceIngestor(v1);
  sub_1C4426014(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  if (qword_1EDDFD1F0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C442E54C();
  sub_1C442B738(v10, &qword_1EDDFD1F8);
  sub_1C4400DD8();
  sub_1C4D449BC();
  sub_1C43FBDA0();

  return v11();
}

uint64_t sub_1C4B41808()
{
  sub_1C43FEAEC();
  sub_1C43FDE54();
  v0 = type metadata accessor for PhaseStores();
  v1 = sub_1C4407B44(v0);
  v2 = type metadata accessor for WalletTrackedOrderSourceIngestor(v1);
  sub_1C4426014(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  if (qword_1EDDFD1C8 != -1)
  {
    swift_once();
  }

  v10 = sub_1C442E54C();
  sub_1C442B738(v10, &qword_1EDDFD1D0);
  sub_1C4400DD8();
  sub_1C4D44DDC();
  sub_1C43FBDA0();

  return v11();
}

uint64_t sub_1C4B418EC()
{
  sub_1C43FCF70();
  sub_1C44353F0();
  v1 = type metadata accessor for FutureLifeEventDeltaSourceIngestor();
  v2 = sub_1C44060EC(v1);
  sub_1C440D830(v2);
  sub_1C443379C(*(v0 + 20), v7, SWORD2(v7), SBYTE6(v7), SHIBYTE(v7));
  v3 = swift_task_alloc();
  v4 = sub_1C4409044(v3);
  *v4 = v5;
  sub_1C44246F8(v4);

  return sub_1C4816270();
}

uint64_t sub_1C4B419AC()
{
  sub_1C43FEAEC();
  v0 = sub_1C43FDE54();
  v1 = type metadata accessor for WalletEmailOrderDeltaSourceIngestor(v0);
  v2 = sub_1C44177E4(v1);
  sub_1C440B2E0(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13));
  sub_1C4430190();
  sub_1C4D4E35C();
  sub_1C43FBDA0();

  return v10();
}

uint64_t sub_1C4B41A4C()
{
  sub_1C43FEAEC();
  v0 = sub_1C43FDE54();
  v1 = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(v0);
  v2 = sub_1C44177E4(v1);
  sub_1C440B2E0(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13));
  sub_1C4430190();
  sub_1C4658494();
  sub_1C43FBDA0();

  return v10();
}

uint64_t sub_1C4B41AEC()
{
  sub_1C43FEAEC();
  sub_1C43FDE54();
  v0 = type metadata accessor for PhaseStores();
  v1 = sub_1C4407B44(v0);
  v2 = type metadata accessor for WalletTransactionOrderSourceIngestor(v1);
  sub_1C4426014(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  if (qword_1EDDFD1A0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C442E54C();
  sub_1C442B738(v10, &qword_1EDDFD1A8);
  sub_1C4400DD8();
  sub_1C4D45AE0();
  sub_1C43FBDA0();

  return v11();
}

uint64_t sub_1C4B41BD0()
{
  sub_1C43FEAEC();
  v0 = sub_1C43FDE54();
  v1 = type metadata accessor for WalletClassicOrderDeltaSourceIngestor(v0);
  v2 = sub_1C44177E4(v1);
  sub_1C440B2E0(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13));
  sub_1C4430190();
  sub_1C4D4252C();
  sub_1C43FBDA0();

  return v10();
}

uint64_t sub_1C4B41C70()
{
  sub_1C43FEAEC();
  v0 = sub_1C43FDE54();
  v1 = type metadata accessor for WalletTrackedOrderDeltaSourceIngestor(v0);
  v2 = sub_1C44177E4(v1);
  sub_1C440B2E0(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13));
  sub_1C4430190();
  sub_1C4D5CCC8();
  sub_1C43FBDA0();

  return v10();
}

uint64_t sub_1C4B41D10()
{
  sub_1C43FEAEC();
  v0 = sub_1C43FDE54();
  v1 = type metadata accessor for WalletTransactionOrderDeltaSourceIngestor(v0);
  v2 = sub_1C44177E4(v1);
  sub_1C440B2E0(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13));
  sub_1C4430190();
  sub_1C4D5F108();
  sub_1C43FBDA0();

  return v10();
}

uint64_t sub_1C4B41DB0()
{
  sub_1C43FEAEC();
  sub_1C43FDE54();
  v0 = type metadata accessor for PhaseStores();
  sub_1C4407B44(v0);
  v1 = type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor();
  sub_1C44124C8(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  sub_1C4430190();
  sub_1C499B254();
  sub_1C43FBDA0();

  return v9();
}

uint64_t SourceIngestor.execute()()
{
  sub_1C43FBCD4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for PhaseStores();
  v1[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B41EC8, 0, 0);
}

uint64_t sub_1C4B41EC8()
{
  v18 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v16 = v0[3];
  v4 = v0[2];
  v5 = *(*(v16 + 8) + 8);
  (*(v5 + 40))(v4, v5);
  v6 = *(v1 + *(v2 + 24));

  sub_1C44857CC(v1);
  (*(v5 + 48))(&v17, v4, v5);
  sub_1C4495FC0(&v17);

  sub_1C441CD2C(v16);
  v15 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_1C4B4205C;
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[2];

  return v15(v13, v11);
}

uint64_t sub_1C4B4205C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  sub_1C43FBDAC();
  *v5 = v4;

  sub_1C43FBDA0();

  return v6();
}

uint64_t sub_1C4B42158()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F530F0);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B421D8()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F53100);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B42258()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F52F90);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B422D8()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F52F80);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B42358()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F52FC0);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B423D8()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F530B0);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B42458()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F52F50);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B424D8()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F52F70);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B42558()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F52F60);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B425D8()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F53020);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B42658()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F530C0);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B426D8()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F530D0);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B42758()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F52FA0);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B427D8()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F53010);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B42858()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F53000);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B428D8()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F52FB0);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B42958()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F52FE0);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B429D8()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F52FD0);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}