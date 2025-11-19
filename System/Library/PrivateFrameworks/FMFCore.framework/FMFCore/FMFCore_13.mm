uint64_t sub_24A4966F4()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "FMImageCache: Purging cache...", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v6 = *(v1 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_24A49B090;
  *(v7 + 24) = v1;
  v10[4] = sub_24A37CE34;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24A37CDDC;
  v10[3] = &unk_285D8BCA8;
  v8 = _Block_copy(v10);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_24A4968E0(void *a1)
{
  v49[7] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = sub_24A4AA9D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v47 - v9;
  v11 = v2[10];
  v12 = v2[13];
  v13 = v2[11];
  v14 = *(swift_getAssociatedConformanceWitness() + 16);
  v15 = sub_24A4AB750();
  swift_beginAccess();
  v16 = a1[4];
  a1[4] = v15;

  v17 = v2[12];
  swift_getTupleTypeMetadata2();
  v18 = sub_24A4ABAB0();
  v19 = sub_24A49AD54(v18, v11, v17, v14);

  swift_beginAccess();
  v20 = a1[6];
  a1[6] = v19;

  v48 = objc_opt_self();
  v21 = [v48 defaultManager];
  (*(*a1 + 160))();
  v22 = sub_24A4AA980();
  v47[0] = *(v4 + 8);
  v47[1] = v4 + 8;
  (v47[0])(v10, v3);
  v49[0] = 0;
  v23 = [v21 contentsOfDirectoryAtURL:v22 includingPropertiesForKeys:0 options:5 error:v49];

  v24 = v49[0];
  if (v23)
  {
    v25 = sub_24A4ABA70();
    v26 = v24;

    v27 = *(v25 + 16);
    if (!v27)
    {
LABEL_7:

      goto LABEL_14;
    }

    v28 = v3;
    v29 = 0;
    v30 = (v4 + 16);
    while (v29 < *(v25 + 16))
    {
      (*(v4 + 16))(v7, v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v29, v28);
      v31 = [v48 defaultManager];
      v32 = sub_24A4AA980();
      v33 = v28;
      (v47[0])(v7, v28);
      v49[0] = 0;
      v34 = [v31 removeItemAtURL:v32 error:v49];

      if (!v34)
      {
        v36 = v49[0];

        goto LABEL_10;
      }

      ++v29;
      v35 = v49[0];
      v28 = v33;
      if (v27 == v29)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = v49[0];
LABEL_10:
    v30 = sub_24A4AA950();

    swift_willThrow();
    if (qword_27EF3EBF8 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  v37 = sub_24A4AB630();
  sub_24A378E18(v37, qword_27EF4E260);
  v38 = v30;
  v39 = sub_24A4AB600();
  v40 = sub_24A4ABCE0();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49[0] = v42;
    *v41 = 136315138;
    swift_getErrorValue();
    v43 = sub_24A4AC310();
    v45 = sub_24A37BD58(v43, v44, v49);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_24A376000, v39, v40, "FMImageCache: Error deleting file : %s", v41, 0xCu);
    sub_24A37EEE0(v42);
    MEMORY[0x24C219130](v42, -1, -1);
    MEMORY[0x24C219130](v41, -1, -1);
  }

  else
  {
  }

LABEL_14:
  v46 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A496E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = *v3;
  v6 = v28;
  v33 = sub_24A4AB690();
  v35 = *(v33 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24A4AB6E0();
  v32 = *(v34 - 8);
  v10 = *(v32 + 64);
  v11 = MEMORY[0x28223BE20](v34);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v6 + 80);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v11);
  v18 = &v27 - v17;
  v31 = v4[3];
  (*(v15 + 16))(&v27 - v17, a1, v14);
  v19 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  *(v20 + 24) = *(v28 + 88);
  *(v20 + 40) = *(v6 + 104);
  *(v20 + 48) = v4;
  (*(v15 + 32))(v20 + v19, v18, v14);
  v21 = (v20 + ((v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v29;
  v22 = v30;
  *v21 = v29;
  v21[1] = v22;
  aBlock[4] = sub_24A49B4A0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8BF80;
  v24 = _Block_copy(aBlock);

  sub_24A3C8498(v23);
  sub_24A4AB6B0();
  v36 = MEMORY[0x277D84F90];
  sub_24A378D20(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v25 = v33;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v13, v9, v24);
  _Block_release(v24);
  (*(v35 + 8))(v9, v25);
  (*(v32 + 8))(v13, v34);
}

void sub_24A497238(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3)
{
  isEscapingClosureAtFileLocation = v3;
  v88 = a3;
  v95 = a2;
  v6 = *v3;
  v7 = v6[10];
  v97 = *(v7 - 8);
  v8 = *(v97 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v94 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v87 = (v85 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v96 = v85 - v14;
  v93 = v15;
  MEMORY[0x28223BE20](v13);
  v86 = v85 - v16;
  v17 = v6[12];
  v18 = sub_24A4ABDF0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v85 - v21;
  swift_beginAccess();
  v23 = *(isEscapingClosureAtFileLocation + 48);
  v24 = v6[13];
  v90 = v6[11];
  v91 = v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = *(AssociatedConformanceWitness + 16);

  v98 = a1;
  sub_24A4AB7B0();

  v26 = *(*(v17 - 8) + 48);
  v92 = v17;
  LODWORD(v6) = v26(v22, 1, v17);
  (*(v19 + 8))(v22, v18);
  if (v6 != 1 || (swift_beginAccess(), v27 = *(isEscapingClosureAtFileLocation + 32), , v28 = sub_24A4ABC30(), , (v28 & 1) != 0))
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v29 = sub_24A4AB630();
    sub_24A378E18(v29, qword_27EF4E260);
    v30 = v97;
    v31 = v98;
    v32 = v94;
    v87 = *(v97 + 16);
    v87(v94, v98, v7);
    v33 = sub_24A4AB600();
    v34 = sub_24A4ABCE0();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v96;
    if (v35)
    {
      v37 = v32;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315138;
      v40 = *(AssociatedConformanceWitness + 8);
      v41 = sub_24A4AC280();
      AssociatedConformanceWitness = isEscapingClosureAtFileLocation;
      v42 = v36;
      v44 = v43;
      (*(v97 + 8))(v37, v7);
      v45 = sub_24A37BD58(v41, v44, aBlock);
      v36 = v42;
      v31 = v98;
      isEscapingClosureAtFileLocation = AssociatedConformanceWitness;

      *(v38 + 4) = v45;
      _os_log_impl(&dword_24A376000, v33, v34, "FMImageCache: Loading declined, we are already processing similar location: %s", v38, 0xCu);
      sub_24A37EEE0(v39);
      v46 = v39;
      v30 = v97;
      MEMORY[0x24C219130](v46, -1, -1);
      MEMORY[0x24C219130](v38, -1, -1);

      v47 = v95;
      if (!v95)
      {
        return;
      }
    }

    else
    {

      (*(v30 + 8))(v32, v7);
      v47 = v95;
      if (!v95)
      {
        return;
      }
    }

    v48 = *(isEscapingClosureAtFileLocation + 24);
    v87(v36, v31, v7);
    v49 = (*(v30 + 80) + 56) & ~*(v30 + 80);
    v50 = (v93 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *&v52 = v7;
    *(&v52 + 1) = v90;
    *&v53 = v92;
    *(&v53 + 1) = v91;
    *(v51 + 16) = v52;
    *(v51 + 32) = v53;
    *(v51 + 48) = isEscapingClosureAtFileLocation;
    (*(v30 + 32))(v51 + v49, v36, v7);
    v54 = (v51 + v50);
    v25 = v88;
    *v54 = v47;
    v54[1] = v25;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_24A49B2B4;
    *(v7 + 24) = v51;
    aBlock[4] = sub_24A37CE3C;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A37CDDC;
    aBlock[3] = &unk_285D8BEB8;
    v55 = _Block_copy(aBlock);
    sub_24A3C8498(v47);
    sub_24A3C8498(v47);

    dispatch_sync(v48, v55);
    sub_24A3C84A8(v47);
    _Block_release(v55);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v94 = v25;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v56 = sub_24A4AB630();
  sub_24A378E18(v56, qword_27EF4E260);
  v57 = v97;
  v58 = v97 + 16;
  v59 = v86;
  v95 = *(v97 + 16);
  v95(v86, v98, v7);
  v60 = sub_24A4AB600();
  v61 = sub_24A4ABCE0();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v62 = 136315138;
    v64 = *(AssociatedConformanceWitness + 8);
    v65 = sub_24A4AC280();
    v67 = v66;
    v68 = *(v97 + 8);
    v88 = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    AssociatedConformanceWitness = v68;
    v68(v59, v7);
    v69 = sub_24A37BD58(v65, v67, aBlock);
    v57 = v97;

    *(v62 + 4) = v69;
    _os_log_impl(&dword_24A376000, v60, v61, "FMImageCache: Attempting to load request: %s", v62, 0xCu);
    sub_24A37EEE0(v63);
    MEMORY[0x24C219130](v63, -1, -1);
    MEMORY[0x24C219130](v62, -1, -1);
  }

  else
  {

    v70 = *(v57 + 8);
    v88 = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    AssociatedConformanceWitness = v70;
    v70(v59, v7);
  }

  v71 = v95;
  v72 = v98;
  v95(v96, v98, v7);
  v73 = v71;
  v74 = swift_allocObject();
  v85[1] = v58;
  v75 = v74;
  swift_weakInit();
  v76 = v87;
  v73(v87, v72, v7);
  v77 = (*(v57 + 80) + 56) & ~*(v57 + 80);
  v78 = swift_allocObject();
  *&v79 = v7;
  v80 = v90;
  v81 = v91;
  *(&v79 + 1) = v90;
  *&v82 = v92;
  *(&v82 + 1) = v91;
  *(v78 + 16) = v79;
  *(v78 + 32) = v82;
  *(v78 + 48) = v75;
  (*(v57 + 32))(v78 + v77, v76, v7);
  v83 = v96;
  v84 = (*(v81 + 24))(v96, sub_24A49B24C, v78, v80, v81);
  [*(isEscapingClosureAtFileLocation + 16) addOperation_];
  v95(v76, v72, v7);
  swift_beginAccess();
  sub_24A4ABC40();
  sub_24A4ABC10();
  (AssociatedConformanceWitness)(v83, v7);
  swift_endAccess();
}

uint64_t sub_24A497C54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v6 = *a1;
  v7 = *(*a1 + 80);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](a1);
  v26 = &v21 - v9;
  swift_beginAccess();
  v10 = a1[5];
  v11 = v6[12];

  sub_24A3CBC9C(&qword_27EF3F0D0, &unk_24A4B6970);
  sub_24A4AC3B0();
  swift_getFunctionTypeMetadata1();
  sub_24A4ABB30();
  v12 = v6[13];
  v13 = v6[11];
  v14 = *(swift_getAssociatedConformanceWitness() + 16);
  v25 = a2;
  sub_24A4AB7B0();

  v15 = v27;
  if (!v27)
  {
    v15 = sub_24A4ABAB0();
  }

  v30 = v15;
  v16 = swift_allocObject();
  *&v17 = v7;
  *(&v17 + 1) = v13;
  *&v18 = v11;
  *(&v18 + 1) = v12;
  *(v16 + 16) = v17;
  *(v16 + 32) = v18;
  v19 = v23;
  *(v16 + 48) = v22;
  *(v16 + 56) = v19;
  v27 = sub_24A49B324;
  v28 = v16;

  sub_24A4ABB00();
  (*(v24 + 16))(v26, v25, v7);
  v29 = v30;
  swift_beginAccess();
  sub_24A4AB7A0();
  sub_24A4AB7C0();
  return swift_endAccess();
}

uint64_t sub_24A497F08(void *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a7;
  v48 = a8;
  v46 = a5;
  v49 = a3;
  v50 = a1;
  v51 = a2;
  v10 = sub_24A4AB690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AB6E0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v52 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a6 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v42 = a9;
    v24 = *(result + 24);
    v44 = v14;
    v45 = v24;

    v25 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v20 + 16))(&v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v46, a6);
    v26 = (*(v20 + 80) + 48) & ~*(v20 + 80);
    v43 = v16;
    v27 = (v21 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = v15;
    v28 = v11;
    v29 = v10;
    v30 = swift_allocObject();
    v31 = v47;
    v32 = v48;
    *(v30 + 2) = a6;
    *(v30 + 3) = v31;
    v33 = v42;
    *(v30 + 4) = v32;
    *(v30 + 5) = v33;
    (*(v20 + 32))(&v30[v26], v22, a6);
    *&v30[v27] = v25;
    v34 = &v30[(v27 + 15) & 0xFFFFFFFFFFFFFFF8];
    v36 = v50;
    v35 = v51;
    *v34 = v50;
    *(v34 + 1) = v35;
    LOBYTE(v27) = v49 & 1;
    v34[16] = v49 & 1;
    aBlock[4] = sub_24A49B358;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8BF30;
    v37 = _Block_copy(aBlock);

    sub_24A49B3F8(v36, v35, v27);
    v38 = v52;
    sub_24A4AB6B0();
    v53 = MEMORY[0x277D84F90];
    sub_24A378D20(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v39 = v44;
    sub_24A4ABE90();
    v40 = v45;
    MEMORY[0x24C218190](0, v38, v39, v37);
    _Block_release(v37);

    (*(v28 + 8))(v39, v29);
    (*(v43 + 8))(v38, v46);
  }

  return result;
}

void *sub_24A4983AC(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v141 = a7;
  LODWORD(v122) = a5;
  v124 = a4;
  v123 = a3;
  v142 = a1;
  v132 = sub_24A4ABDF0();
  v131 = *(v132 - 8);
  v12 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v130 = v116 - v13;
  sub_24A3CBC9C(&qword_27EF3F0D0, &unk_24A4B6970);
  v135 = sub_24A4AC3B0();
  v129 = *(v135 - 8);
  v14 = *(v129 + 64);
  MEMORY[0x28223BE20](v135);
  v128 = (v116 - v15);
  v16 = sub_24A4ABDF0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v119 = v116 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v126 = *(TupleTypeMetadata2 - 8);
  v20 = *(v126 + 64);
  v21 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v125 = v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = (v116 - v23);
  v127 = v25;
  v26 = sub_24A4AC3B0();
  v139 = *(v26 - 8);
  v140 = v26;
  v27 = *(v139 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v134 = (v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x28223BE20](v28);
  v138 = (v116 - v31);
  v143 = a6;
  v32 = *(a6 - 8);
  v33 = v32[8];
  v34 = MEMORY[0x28223BE20](v30);
  v36 = v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v133 = v116 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = v116 - v39;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v41 = sub_24A4AB630();
  v42 = sub_24A378E18(v41, qword_27EF4E260);
  v43 = v32[2];
  v137 = v32 + 2;
  v136 = v43;
  v43(v40, v142, v143);
  v116[2] = v42;
  v44 = sub_24A4AB600();
  v45 = sub_24A4ABCE0();
  v46 = os_log_type_enabled(v44, v45);
  v121 = a8;
  v120 = v24;
  v118 = v32;
  v117 = v36;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v116[1] = a2;
    v48 = v47;
    v49 = swift_slowAlloc();
    v146 = v49;
    *v48 = 136315138;
    v50 = v143;
    v51 = *(swift_getAssociatedConformanceWitness() + 8);
    v52 = sub_24A4AC280();
    v53 = v50;
    v55 = v54;
    v56 = v32[1];
    v56(v40, v53);
    v57 = sub_24A37BD58(v52, v55, &v146);

    *(v48 + 4) = v57;
    _os_log_impl(&dword_24A376000, v44, v45, "FMImageCache: Finished loading request: %s", v48, 0xCu);
    sub_24A37EEE0(v49);
    MEMORY[0x24C219130](v49, -1, -1);
    MEMORY[0x24C219130](v48, -1, -1);
  }

  else
  {

    v56 = v32[1];
    v56(v40, v143);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v59 = v134;
  if (result)
  {
    v60 = result;
    v61 = v138;
    sub_24A499360(v123, v124, v122 & 1, result, v138);
    (*(v139 + 16))(v59, v61, v140);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v62 = *v59;
      v63 = v117;
      v136(v117, v142, v143);
      v64 = v62;
      v65 = sub_24A4AB600();
      v66 = sub_24A4ABCE0();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v146 = v134;
        *v67 = 136315394;
        v68 = v56;
        v69 = v143;
        v70 = *(swift_getAssociatedConformanceWitness() + 8);
        LODWORD(v127) = v66;
        v71 = sub_24A4AC280();
        v73 = v72;
        v74 = v63;
        v75 = a9;
        v68(v74, v69);
        v76 = sub_24A37BD58(v71, v73, &v146);

        *(v67 + 4) = v76;
        *(v67 + 12) = 2080;
        swift_getErrorValue();
        v77 = sub_24A4AC310();
        v79 = sub_24A37BD58(v77, v78, &v146);

        *(v67 + 14) = v79;
        _os_log_impl(&dword_24A376000, v65, v127, "FMImageCache: Failed to fetch image for request: %s due to: %s", v67, 0x16u);
        v80 = v134;
        swift_arrayDestroy();
        MEMORY[0x24C219130](v80, -1, -1);
        MEMORY[0x24C219130](v67, -1, -1);
      }

      else
      {

        v56(v63, v143);
        v75 = a9;
      }

      swift_beginAccess();
      v104 = v60[5];
      v105 = v135;
      swift_getFunctionTypeMetadata1();
      sub_24A4ABB30();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v106 = *(AssociatedConformanceWitness + 16);

      sub_24A4AB7B0();

      if (v144)
      {
        v145 = v144;
        MEMORY[0x28223BE20](v107);
        v116[-6] = v143;
        v116[-5] = v108;
        v116[-4] = v121;
        v116[-3] = v75;
        v116[-2] = v62;
        swift_getWitnessTable();
        v105 = v135;
        sub_24A4ABA10();
      }

      v109 = v128;
      *v128 = v62;
      swift_storeEnumTagMultiPayload();
      v110 = *(*v60 + 288);
      v111 = v62;
      v110(v142, v109);

      (*(v129 + 8))(v109, v105);
    }

    else
    {
      v116[0] = a9;
      v81 = v126;
      v82 = v142;
      v83 = v120;
      v84 = v127;
      (*(v126 + 32))(v120, v59, v127);
      v136(v133, v82, v143);
      v85 = v81 + 16;
      v86 = *(v81 + 16);
      v87 = v125;
      v124 = v85;
      v123 = v86;
      (v86)(v125, v83, v84);
      sub_24A386E10(*v87, *(v87 + 1));
      v88 = *(v84 + 48);
      v89 = v121;
      v90 = *(v121 - 8);
      v91 = *(v90 + 32);
      v92 = &v87[v88];
      v93 = v119;
      v122 = v90 + 32;
      v118 = v91;
      v91(v119, v92, v121);
      (*(v90 + 56))(v93, 0, 1, v89);
      swift_beginAccess();
      v94 = v141;
      v134 = swift_getAssociatedConformanceWitness();
      v95 = v134[2];
      sub_24A4AB7A0();
      sub_24A4AB7C0();
      swift_endAccess();
      sub_24A499A34(*v83, v83[1], v82);
      swift_beginAccess();
      v96 = v60[5];
      swift_getFunctionTypeMetadata1();
      sub_24A4ABB30();

      sub_24A4AB7B0();

      if (v144)
      {
        v145 = v144;
        MEMORY[0x28223BE20](v97);
        v116[-6] = v143;
        v116[-5] = v94;
        v98 = v116[0];
        v116[-4] = v89;
        v116[-3] = v98;
        v116[-2] = v83;
        swift_getWitnessTable();
        sub_24A4ABA10();
      }

      v99 = v125;
      v100 = v127;
      (v123)(v125, v83, v127);
      sub_24A386E10(*v99, *(v99 + 1));
      v101 = v128;
      v118(v128, &v99[*(v100 + 48)], v89);
      v102 = v135;
      swift_storeEnumTagMultiPayload();
      (*(*v60 + 288))(v142, v101);
      (*(v129 + 8))(v101, v102);
      (*(v126 + 8))(v83, v100);
      AssociatedConformanceWitness = v134;
    }

    swift_beginAccess();
    v112 = *(AssociatedConformanceWitness + 16);
    v113 = v143;
    sub_24A4ABC40();
    v114 = v130;
    v115 = v142;
    sub_24A4ABC20();
    (*(v131 + 8))(v114, v132);
    swift_endAccess();
    v136(v133, v115, v113);
    v145 = 0;
    swift_beginAccess();
    swift_getFunctionTypeMetadata1();
    sub_24A4ABB30();
    sub_24A4AB7A0();
    sub_24A4AB7C0();
    swift_endAccess();

    return (*(v139 + 8))(v138, v140);
  }

  return result;
}

id sub_24A499360@<X0>(void *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v32 = a2;
  v9 = *(*a4 + 96);
  v10 = sub_24A4ABDF0();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = *(v9 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v19 = &v29 - v18;
  if (a3)
  {
    *a5 = a1;
    swift_getTupleTypeMetadata2();
    sub_24A3CBC9C(&qword_27EF3F0D0, &unk_24A4B6970);
    sub_24A4AC3B0();
    swift_storeEnumTagMultiPayload();

    return a1;
  }

  else
  {
    v30 = v17;
    v22 = a4[7];
    v21 = a4[8];
    v23 = v32;
    sub_24A380530(a1, v32);
    v31 = a1;
    v22(a1, v23);
    if ((*(v15 + 48))(v14, 1, v9) == 1)
    {
      (*(v30 + 8))(v14, v10);
      sub_24A49B44C();
      v24 = swift_allocError();
      *v25 = 1;
      sub_24A49B34C(v31, v32, 0);
      *a5 = v24;
      swift_getTupleTypeMetadata2();
    }

    else
    {
      v26 = *(v15 + 32);
      v26(v19, v14, v9);
      v27 = *(swift_getTupleTypeMetadata2() + 48);
      v28 = v32;
      *a5 = v31;
      a5[1] = v28;
      v26(a5 + v27, v19, v9);
    }

    sub_24A3CBC9C(&qword_27EF3F0D0, &unk_24A4B6970);
    sub_24A4AC3B0();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_24A4996F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v19 - v10;
  sub_24A3CBC9C(&qword_27EF3F0D0, &unk_24A4B6970);
  v12 = sub_24A4AC3B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  v17 = *(a1 + 8);
  v19 = *a1;
  (*(v8 + 16))(v11, v20, TupleTypeMetadata2);
  sub_24A386E10(*v11, *(v11 + 1));
  (*(*(a5 - 8) + 32))(v16, &v11[*(TupleTypeMetadata2 + 48)], a5);
  swift_storeEnumTagMultiPayload();
  v19(v16);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_24A49990C(uint64_t a1, void *a2)
{
  sub_24A3CBC9C(&qword_27EF3F0D0, &unk_24A4B6970);
  v4 = sub_24A4AC3B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v10 = *a1;
  v9 = *(a1 + 8);
  *(&v13 - v7) = a2;
  swift_storeEnumTagMultiPayload();
  v11 = a2;
  v10(v8);
  return (*(v5 + 8))(v8, v4);
}

void sub_24A499A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x24C2189A0]();
  sub_24A499AA8(v3, a3, a1, a2);

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_24A499AA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v81 = a3;
  v90[1] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v88 = sub_24A4AA9D0();
  v6 = *(v88 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v88);
  v78 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v76 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v85 = &v76 - v14;
  v15 = v5[20];
  (v15)(v13);
  v16 = v5[13];
  v18 = v5[10];
  v17 = v5[11];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v18, AssociatedConformanceWitness);
  sub_24A4AA990();

  v77 = v6;
  v20 = v6 + 8;
  v21 = *(v6 + 8);
  v22 = v88;
  v21(v12, v88);
  v89 = 0;
  v84 = objc_opt_self();
  v23 = [v84 defaultManager];
  v80 = a1;
  v24 = v85;
  v79 = v15;
  v15();
  sub_24A4AA9B0();
  v86 = v21;
  v87 = v20;
  v21(v12, v22);
  v25 = sub_24A4AB820();

  v26 = [v23 fileExistsAtPath:v25 isDirectory:&v89];

  if ((v26 & 1) == 0)
  {
    v27 = [v84 defaultManager];
    v79();
    v28 = sub_24A4AA980();
    v29 = v88;
    v86(v12, v88);
    v90[0] = 0;
    v30 = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:v90];

    if (!v30)
    {
      v46 = v90[0];
      v47 = sub_24A4AA950();

      swift_willThrow();
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v48 = sub_24A4AB630();
      sub_24A378E18(v48, qword_27EF4E260);
      v49 = v78;
      (*(v77 + 16))(v78, v24, v29);
      v50 = sub_24A4AB600();
      v51 = sub_24A4ABCE0();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v84 = v47;
        v53 = v52;
        v54 = swift_slowAlloc();
        v90[0] = v54;
        *v53 = 136315138;
        sub_24A378D20(&qword_27EF40BD0, MEMORY[0x277CC9260]);
        v55 = sub_24A4AC240();
        v57 = v56;
        v58 = v49;
        v59 = v86;
        v86(v58, v29);
        v60 = sub_24A37BD58(v55, v57, v90);

        *(v53 + 4) = v60;
        _os_log_impl(&dword_24A376000, v50, v51, "FMImageCache: Could not create directory for content: %s", v53, 0xCu);
        sub_24A37EEE0(v54);
        MEMORY[0x24C219130](v54, -1, -1);
        MEMORY[0x24C219130](v53, -1, -1);

        result = v59(v85, v29);
      }

      else
      {

        v74 = v49;
        v75 = v86;
        v86(v74, v29);
        result = v75(v24, v29);
      }

      goto LABEL_18;
    }

    v31 = v90[0];
  }

  v32 = v83;
  sub_24A4AAA20();
  v33 = v32;
  v34 = v24;
  if (!v32)
  {
    v35 = [v84 defaultManager];
    sub_24A3C9CEC(&qword_27EF40598, &unk_24A4BACB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A4B4E10;
    v37 = *MEMORY[0x277CCA1B0];
    *(inited + 32) = *MEMORY[0x277CCA1B0];
    v38 = *MEMORY[0x277CCA1A0];
    type metadata accessor for FileProtectionType(0);
    *(inited + 64) = v39;
    *(inited + 40) = v38;
    v40 = v37;
    v41 = v38;
    v34 = v24;
    sub_24A3A9E3C(inited);
    swift_setDeallocating();
    sub_24A49B1E4(inited + 32);
    type metadata accessor for FileAttributeKey(0);
    sub_24A378D20(&qword_27EF3EDE0, type metadata accessor for FileAttributeKey);
    v42 = sub_24A4AB760();

    sub_24A4AA9B0();
    v43 = sub_24A4AB820();

    v90[0] = 0;
    LODWORD(v37) = [v35 setAttributes:v42 ofItemAtPath:v43 error:v90];

    if (v37)
    {
      v44 = v90[0];
      result = (v86)(v24, v88);
      goto LABEL_18;
    }

    v61 = v90[0];
    v33 = sub_24A4AA950();

    swift_willThrow();
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v62 = sub_24A4AB630();
  sub_24A378E18(v62, qword_27EF4E260);
  v63 = v33;
  v64 = sub_24A4AB600();
  v65 = sub_24A4ABCC0();

  v66 = os_log_type_enabled(v64, v65);
  v67 = v88;
  if (v66)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v90[0] = v69;
    *v68 = 136315138;
    swift_getErrorValue();
    v70 = sub_24A4AC310();
    v72 = sub_24A37BD58(v70, v71, v90);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_24A376000, v64, v65, "FMImageCache: Could not save objects to disk %s", v68, 0xCu);
    sub_24A37EEE0(v69);
    MEMORY[0x24C219130](v69, -1, -1);
    MEMORY[0x24C219130](v68, -1, -1);
  }

  else
  {
  }

  result = (v86)(v34, v67);
LABEL_18:
  v73 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_24A49A360()
{
  v1 = *v0;
  v2 = sub_24A4AA9D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(v1 + 160);
  v1 += 160;
  v11(v8);
  v12 = *(v1 - 56);
  v15 = v1 - 80;
  v14 = *(v1 - 80);
  v13 = *(v15 + 8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v14, AssociatedConformanceWitness);
  sub_24A4AA990();

  v17 = *(v3 + 8);
  v17(v7, v2);
  v18 = [objc_opt_self() defaultManager];
  sub_24A4AA9B0();
  v19 = sub_24A4AB820();

  v20 = [v18 fileExistsAtPath_];

  v17(v10, v2);
  return v20;
}

uint64_t sub_24A49A548@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = sub_24A4ABDF0();
  v5 = *(v4 - 8);
  v55 = v4;
  v56 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v54 - v7;
  v8 = sub_24A4AA9D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v59 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v54 - v17;
  v19 = *(v2 + 160);
  v2 += 160;
  v19(v16);
  v20 = *(v2 - 56);
  v23 = v2 - 80;
  v22 = *(v2 - 80);
  v21 = *(v23 + 8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v22, AssociatedConformanceWitness);
  sub_24A4AA990();

  v25 = *(v9 + 8);
  v60 = v8;
  v26 = v8;
  v27 = v25;
  v25(v14, v26);
  v28 = sub_24A4AA9E0();
  v30 = v29;
  v31 = v1[7];
  v32 = v1[8];
  v33 = v56;
  v34 = v57;
  v31();
  sub_24A386E10(v28, v30);
  v35 = *(v3 - 8);
  if ((*(v35 + 48))(v34, 1, v3) == 1)
  {
    v58 = v3;
    (*(v33 + 8))(v34, v55);
    v37 = v59;
    v36 = v60;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v38 = sub_24A4AB630();
    sub_24A378E18(v38, qword_27EF4E260);
    (*(v9 + 16))(v37, v18, v36);
    v39 = sub_24A4AB600();
    v40 = v18;
    v41 = sub_24A4ABCE0();
    if (os_log_type_enabled(v39, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v62 = v43;
      *v42 = 136315138;
      sub_24A378D20(&qword_27EF40BD0, MEMORY[0x277CC9260]);
      v44 = sub_24A4AC240();
      v45 = v37;
      v46 = v27;
      v47 = v36;
      v48 = v44;
      v50 = v49;
      v46(v45, v47);
      v51 = sub_24A37BD58(v48, v50, &v62);

      *(v42 + 4) = v51;
      _os_log_impl(&dword_24A376000, v39, v41, "FMImageCache: Failed to load cached image from disk: %s", v42, 0xCu);
      sub_24A37EEE0(v43);
      MEMORY[0x24C219130](v43, -1, -1);
      MEMORY[0x24C219130](v42, -1, -1);

      v46(v40, v47);
    }

    else
    {

      v27(v37, v36);
      v27(v40, v36);
    }

    return (*(*(v58 - 8) + 56))(v61, 1, 1);
  }

  else
  {
    v27(v18, v60);
    v53 = v61;
    (*(v35 + 32))(v61, v34, v3);
    return (*(v35 + 56))(v53, 0, 1, v3);
  }
}

uint64_t FMImageCache.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return v0;
}

uint64_t FMImageCache.__deallocating_deinit()
{
  FMImageCache.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24A49AB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_24A4AB7D0();

  return sub_24A49AB9C(a1, v9, a2, a3);
}

unint64_t sub_24A49AB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a1;
  v25 = a4;
  v6 = *(*(a3 - 8) + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v4;
  v11 = -1 << *(v4 + 32);
  v13 = v12 & ~v11;
  v24[0] = v4 + 64;
  if ((*(v4 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v11;
    v17 = *(v7 + 16);
    v15 = v7 + 16;
    v16 = v17;
    v18 = *(v15 + 56);
    v19 = (v15 - 8);
    do
    {
      v20 = v15;
      v16(v10, *(v26 + 48) + v18 * v13, a3, v8);
      v21 = *(v25 + 8);
      v22 = sub_24A4AB810();
      (*v19)(v10, a3);
      if (v22)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      v15 = v20;
    }

    while (((*(v24[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_24A49AD24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24A49AD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24A4ABAF0())
  {
    sub_24A4AC0A0();
    v13 = sub_24A4AC090();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24A4ABAF0();
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
        if (sub_24A4ABAD0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24A4ABF60();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24A49AB40(v12, a2, v27);
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

unint64_t sub_24A49B09C()
{
  result = qword_27EF40C78;
  if (!qword_27EF40C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40C78);
  }

  return result;
}

uint64_t sub_24A49B1E4(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF40358, &qword_24A4BA148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A49B2B4()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 56) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (v0 + ((*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_24A497C54(*(v0 + 48), v0 + v1, *v2, v2[1]);
}

uint64_t sub_24A49B324()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

void sub_24A49B34C(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_24A386E10(a1, a2);
  }
}

void *sub_24A49B358()
{
  v1 = (*(*(v0[2] - 8) + 80) + 48) & ~*(*(v0[2] - 8) + 80);
  v2 = (*(*(v0[2] - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_24A4983AC(v0 + v1, *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), v0[2], v0[3], v0[4], v0[5]);
}

id sub_24A49B3F8(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_24A380530(a1, a2);
  }
}

uint64_t sub_24A49B404(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_24A49990C(a1, *(v1 + 48));
}

unint64_t sub_24A49B44C()
{
  result = qword_27EF40D00;
  if (!qword_27EF40D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40D00);
  }

  return result;
}

void sub_24A49B4A0()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 56) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = v0 + v1;
  v4 = *(v0 + 48);
  sub_24A497238(v3, *v2, *(v2 + 8));
}

void sub_24A49B55C()
{
  v1 = [*(v0 + 16) aa_primaryAppleAccount];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 aa_personID];
    if (v3)
    {
      v4 = v3;
      v5 = sub_24A4AB850();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    if (qword_27EF3EBD8 != -1)
    {
      swift_once();
    }

    v11 = qword_27EF4E1B8;
    ObjectType = swift_getObjectType();
    v13 = (*(v11 + 8))(ObjectType, v11);
    v15 = 0x27EF3E000uLL;
    if (v7)
    {
      if (!v14)
      {
        goto LABEL_24;
      }

      if (v5 != v13 || v7 != v14)
      {
        v17 = sub_24A4AC270();

        if (v17)
        {
          goto LABEL_30;
        }

LABEL_24:
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v18 = sub_24A4AB630();
        sub_24A378E18(v18, qword_27EF4E260);
        v19 = sub_24A4AB600();
        v20 = sub_24A4ABCE0();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = ObjectType;
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_24A376000, v19, v20, "FMFGarbageCollector: purging cache because person id are not matching.", v22, 2u);
          v23 = v22;
          ObjectType = v21;
          v15 = 0x27EF3E000;
          MEMORY[0x24C219130](v23, -1, -1);
        }

        sub_24A49C5C8();
        goto LABEL_30;
      }
    }

    else if (v14)
    {

      goto LABEL_24;
    }

LABEL_30:
    if (*(v15 + 3064) != -1)
    {
      swift_once();
    }

    v24 = sub_24A4AB630();
    sub_24A378E18(v24, qword_27EF4E260);

    v25 = sub_24A4AB600();
    v26 = sub_24A4ABCE0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      osloga = swift_slowAlloc();
      v34 = osloga;
      *v27 = 136315138;

      sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
      v28 = sub_24A4AB870();
      v30 = v5;
      v31 = sub_24A37BD58(v28, v29, &v34);

      *(v27 + 4) = v31;
      v5 = v30;
      _os_log_impl(&dword_24A376000, v25, v26, "FMFGarbageCollector: saveFmfPersonID new: %s", v27, 0xCu);
      sub_24A37EEE0(osloga);
      MEMORY[0x24C219130](osloga, -1, -1);
      MEMORY[0x24C219130](v27, -1, -1);
    }

    (*(v11 + 16))(v5, v7, ObjectType, v11);
    return;
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);
  oslog = sub_24A4AB600();
  v9 = sub_24A4ABCC0();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24A376000, oslog, v9, "FMFGarbageCollector: saveFmfPersonID - error retrieving primary account", v10, 2u);
    MEMORY[0x24C219130](v10, -1, -1);
  }
}

uint64_t sub_24A49BA0C(void *a1)
{
  v2 = v1;
  v4 = sub_24A4AB690();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A4AB6E0();
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 48);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_24A49CA90;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8BFF8;
  v14 = _Block_copy(aBlock);
  v15 = v12;

  v16 = a1;
  sub_24A4AB6B0();
  v21 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v11, v7, v14);
  _Block_release(v14);

  (*(v20 + 8))(v7, v4);
  (*(v8 + 8))(v11, v19);
}

void sub_24A49BCDC(uint64_t a1, void *a2)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A4AB630();
  sub_24A378E18(v4, qword_27EF4E260);

  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(a1 + 25);

    _os_log_impl(&dword_24A376000, v5, v6, "FMFGarbageCollector: scheduleAccountVerification alreadyPending?: %{BOOL}d", v7, 8u);
    MEMORY[0x24C219130](v7, -1, -1);

    if (*(a1 + 25))
    {
      return;
    }
  }

  else
  {

    if (*(a1 + 25))
    {
      return;
    }
  }

  if (*(a1 + 40))
  {
    v8 = [a2 userInfo];
    if (!v8)
    {
      return;
    }

    v9 = v8;
    v10 = sub_24A4AB780();

    v11 = *MEMORY[0x277CB8A60];
    v17 = sub_24A4AB850();
    v18 = v12;
    sub_24A4ABEE0();
    if (!*(v10 + 16) || (v13 = sub_24A4301B8(v19), (v14 & 1) == 0))
    {

      sub_24A431860(v19);
      return;
    }

    sub_24A37EE84(*(v10 + 56) + 32 * v13, v20);
    sub_24A431860(v19);

    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v15 = *(a1 + 40);
    if (!v15)
    {

      return;
    }

    if (v17 == *(a1 + 32) && v15 == v18)
    {
    }

    else
    {
      v16 = sub_24A4AC270();

      if ((v16 & 1) == 0)
      {
        return;
      }
    }
  }

  sub_24A49BFA4();
}

uint64_t sub_24A49BFA4()
{
  v1 = v0;
  v2 = sub_24A4AB690();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A4AB6E0();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24A4AB700();
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v36);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = sub_24A4AB6A0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 25) = 1;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v20 = sub_24A4AB630();
  sub_24A378E18(v20, qword_27EF4E260);
  v21 = sub_24A4AB600();
  v22 = sub_24A4ABCE0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v1;
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_24A376000, v21, v22, "FMFGarbageCollector: Dispatching verification on background", v24, 2u);
    v25 = v24;
    v1 = v23;
    MEMORY[0x24C219130](v25, -1, -1);
  }

  sub_24A3785D4();
  (*(v16 + 104))(v19, *MEMORY[0x277D851A8], v15);
  v34 = sub_24A4ABDA0();
  (*(v16 + 8))(v19, v15);
  sub_24A4AB6F0();
  v26 = v14;
  sub_24A4AB720();
  v35 = *(v8 + 8);
  v27 = v36;
  v35(v11, v36);
  aBlock[4] = sub_24A49CA88;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8BFA8;
  v28 = _Block_copy(aBlock);

  v29 = v37;
  sub_24A4AB6B0();
  v43 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v30 = v38;
  v31 = v42;
  sub_24A4ABE90();
  v32 = v34;
  MEMORY[0x24C218130](v26, v29, v30, v28);
  _Block_release(v28);

  (*(v41 + 8))(v30, v31);
  (*(v39 + 8))(v29, v40);
  v35(v26, v27);
}

void sub_24A49C4E0(uint64_t a1)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFGarbageCollector: Async verifying account", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  sub_24A37C2D8();
  *(a1 + 25) = 0;
}

void sub_24A49C5C8()
{
  v34[3] = *MEMORY[0x277D85DE8];
  if (*(v0 + 24) == 1)
  {
    v1 = [objc_opt_self() defaultManager];
    v32 = *(v0 + 72);
    v33 = v1;
    v31 = *(v32 + 16);
    if (!v31)
    {
LABEL_28:
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_24A43EDA8();

        swift_unknownObjectRelease();
      }

      else
      {
      }

LABEL_31:
      v30 = *MEMORY[0x277D85DE8];
      return;
    }

    v2 = 0;
    while (v2 < *(v32 + 16))
    {
      v3 = v32 + 32 + 16 * v2;
      v5 = *v3;
      v4 = *(v3 + 8);

      v6 = sub_24A4AB820();
      v34[0] = 0;
      v7 = [v33 contentsOfDirectoryAtPath:v6 error:v34];

      v8 = v34[0];
      if (v7)
      {
        v9 = sub_24A4ABA70();
        v10 = v8;

        v11 = *(v9 + 16);
        if (v11)
        {
          v12 = 0;
          v13 = (v9 + 40);
          while (v12 < *(v9 + 16))
          {
            v15 = *(v13 - 1);
            v14 = *v13;
            v34[0] = v5;
            v34[1] = v4;

            MEMORY[0x24C217D50](v15, v14);

            v16 = sub_24A4AB820();

            v34[0] = 0;
            v17 = [v33 removeItemAtPath:v16 error:v34];

            if (!v17)
            {
              v19 = v34[0];

              goto LABEL_16;
            }

            ++v12;
            v18 = v34[0];
            v13 += 2;
            if (v11 == v12)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
          break;
        }

LABEL_4:
      }

      else
      {
        v19 = v34[0];
LABEL_16:

        v20 = sub_24A4AA950();

        swift_willThrow();
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v21 = sub_24A4AB630();
        sub_24A378E18(v21, qword_27EF4E260);
        v22 = sub_24A4AB600();
        v23 = sub_24A4ABCC0();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_24A376000, v22, v23, "FMFGarbageCollector: Error deleting file", v24, 2u);
          MEMORY[0x24C219130](v24, -1, -1);
        }
      }

      if (++v2 == v31)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else if (qword_27EF3EBF8 == -1)
  {
    goto LABEL_22;
  }

  swift_once();
LABEL_22:
  v25 = sub_24A4AB630();
  sub_24A378E18(v25, qword_27EF4E260);
  v26 = sub_24A4AB600();
  v27 = sub_24A4ABCE0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_24A376000, v26, v27, "FMFGarbageCollector: Not purging files since not using cache", v28, 2u);
    MEMORY[0x24C219130](v28, -1, -1);
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_31;
  }

  sub_24A43EDA8();
  v29 = *MEMORY[0x277D85DE8];

  swift_unknownObjectRelease();
}

uint64_t sub_24A49CA30()
{
  v1 = *(v0 + 40);

  sub_24A3C8470(v0 + 56);
  v2 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_24A49CA98()
{
  v1 = *(v0 + 40);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
}

FMFCore::InitialTabInfo __swiftcall InitialTabInfo.init()()
{
  v1 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  v0[1] = v1;
  v0[2] = v1;
  return result;
}

uint64_t sub_24A49CAC0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x626C6C614378616DLL;
  }

  else
  {
    v2 = 0x626C6C61436E696DLL;
  }

  if (*a2)
  {
    v3 = 0x626C6C614378616DLL;
  }

  else
  {
    v3 = 0x626C6C61436E696DLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24A4AC270();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24A49CB54()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A49CBD8()
{
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A49CC48()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A49CCC8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A4AC0C0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24A49CD28(uint64_t *a1@<X8>)
{
  v2 = 0x626C6C61436E696DLL;
  if (*v1)
  {
    v2 = 0x626C6C614378616DLL;
  }

  *a1 = v2;
  a1[1] = 0xEB000000006B6361;
}

uint64_t sub_24A49CD68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A49CDB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A49CDF0()
{
  sub_24A3A6C84(v0 + qword_27EF4E2F0);
  v1 = *(v0 + qword_27EF4E2F8);

  v2 = *(v0 + qword_27EF4E300);

  v3 = *(v0 + qword_27EF4E308);

  v4 = *(v0 + qword_27EF4E310);
  v5 = *(v0 + qword_27EF4E310 + 8);
  v6 = *(v0 + qword_27EF4E310 + 16);

  return sub_24A49D054(v4);
}

uint64_t sub_24A49CE68()
{
  v0 = sub_24A4AAC20();
  v1 = *(v0 + qword_27EF3FC00);

  v2 = *(v0 + qword_27EF3FC08);

  v3 = *(v0 + qword_27EF3FC10);

  v4 = *(v0 + qword_27EF3FC18);

  v5 = *(v0 + qword_27EF3FC20);

  v6 = qword_27EF4E0D8;
  v7 = sub_24A4AAAD0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_24A3A6C84(v0 + qword_27EF4E2F0);
  v8 = *(v0 + qword_27EF4E2F8);

  v9 = *(v0 + qword_27EF4E300);

  v10 = *(v0 + qword_27EF4E308);

  v11 = *(v0 + qword_27EF4E310 + 8);
  v12 = *(v0 + qword_27EF4E310 + 16);
  sub_24A49D054(*(v0 + qword_27EF4E310));
  return v0;
}

uint64_t sub_24A49CF90()
{
  v0 = *sub_24A49CE68();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_24A49D000()
{
  result = qword_27EF40D18;
  if (!qword_27EF40D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40D18);
  }

  return result;
}

uint64_t sub_24A49D054(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_24A49D0A0()
{
  qword_27EF40D48 = [objc_opt_self() sharedInstance];
  result = [objc_opt_self() standardUserDefaults];
  qword_27EF40D50 = result;
  return result;
}

id static FMUserDefaults.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_27EF3EC48 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_27EF40D48;
  v1 = qword_27EF40D50;
  v6 = qword_27EF40D50;
  *a1 = qword_27EF40D48;
  a1[1] = v1;
  v3 = v2;

  return v6;
}

Swift::Bool __swiftcall FMUserDefaults.BOOL(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  v3 = [*v1 isInternalBuild];
  if (v3)
  {
    v4 = sub_24A4AB820();
    v5 = [v2 BOOLForKey_];

    LOBYTE(v3) = v5;
  }

  return v3;
}

Swift::String_optional __swiftcall FMUserDefaults.string(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  if ([*v1 isInternalBuild] && (v3 = sub_24A4AB820(), v4 = objc_msgSend(v2, sel_stringForKey_, v3), v3, v4))
  {
    v5 = sub_24A4AB850();
    v7 = v6;

    v8 = v7;
    v9 = v5;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  result.value._object = v8;
  result.value._countAndFlagsBits = v9;
  return result;
}

Swift::Int_optional __swiftcall FMUserDefaults.int(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  if ([*v1 isInternalBuild])
  {
    v3 = sub_24A4AB820();
    v4 = [v2 stringForKey_];

    if (v4)
    {
      v5 = sub_24A4AB850();
      v7 = v6;

      v9 = HIBYTE(v7) & 0xF;
      v10 = v5 & 0xFFFFFFFFFFFFLL;
      if ((v7 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v7) & 0xF;
      }

      else
      {
        v11 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          v34 = 0;
          v13 = sub_24A49D860(v5, v7, 10);
          v31 = v32;
LABEL_65:

          if (v31)
          {
            v8 = 0;
          }

          else
          {
            v8 = v13;
          }

          goto LABEL_70;
        }

        if ((v7 & 0x2000000000000000) != 0)
        {
          v33[0] = v5;
          v33[1] = v7 & 0xFFFFFFFFFFFFFFLL;
          if (v5 == 43)
          {
            if (v9)
            {
              if (--v9)
              {
                v13 = 0;
                v23 = v33 + 1;
                while (1)
                {
                  v24 = *v23 - 48;
                  if (v24 > 9)
                  {
                    break;
                  }

                  v25 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    break;
                  }

                  v13 = v25 + v24;
                  if (__OFADD__(v25, v24))
                  {
                    break;
                  }

                  ++v23;
                  if (!--v9)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

          if (v5 != 45)
          {
            if (v9)
            {
              v13 = 0;
              v28 = v33;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                v30 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  break;
                }

                v13 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  break;
                }

                ++v28;
                if (!--v9)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

          if (v9)
          {
            if (--v9)
            {
              v13 = 0;
              v17 = v33 + 1;
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  break;
                }

                v19 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  break;
                }

                v13 = v19 - v18;
                if (__OFSUB__(v19, v18))
                {
                  break;
                }

                ++v17;
                if (!--v9)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((v5 & 0x1000000000000000) != 0)
          {
            v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v8 = sub_24A4ABF90();
          }

          v12 = *v8;
          if (v12 == 43)
          {
            if (v10 >= 1)
            {
              v9 = v10 - 1;
              if (v10 != 1)
              {
                v13 = 0;
                if (v8)
                {
                  v20 = v8 + 1;
                  while (1)
                  {
                    v21 = *v20 - 48;
                    if (v21 > 9)
                    {
                      goto LABEL_63;
                    }

                    v22 = 10 * v13;
                    if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v13 = v22 + v21;
                    if (__OFADD__(v22, v21))
                    {
                      goto LABEL_63;
                    }

                    ++v20;
                    if (!--v9)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_55;
              }

              goto LABEL_63;
            }

            goto LABEL_75;
          }

          if (v12 != 45)
          {
            if (v10)
            {
              v13 = 0;
              if (v8)
              {
                while (1)
                {
                  v26 = *v8 - 48;
                  if (v26 > 9)
                  {
                    goto LABEL_63;
                  }

                  v27 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v13 = v27 + v26;
                  if (__OFADD__(v27, v26))
                  {
                    goto LABEL_63;
                  }

                  ++v8;
                  if (!--v10)
                  {
                    goto LABEL_55;
                  }
                }
              }

              goto LABEL_55;
            }

LABEL_63:
            v13 = 0;
            LOBYTE(v9) = 1;
            goto LABEL_64;
          }

          if (v10 >= 1)
          {
            v9 = v10 - 1;
            if (v10 != 1)
            {
              v13 = 0;
              if (v8)
              {
                v14 = v8 + 1;
                while (1)
                {
                  v15 = *v14 - 48;
                  if (v15 > 9)
                  {
                    goto LABEL_63;
                  }

                  v16 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v13 = v16 - v15;
                  if (__OFSUB__(v16, v15))
                  {
                    goto LABEL_63;
                  }

                  ++v14;
                  if (!--v9)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_55:
              LOBYTE(v9) = 0;
LABEL_64:
              v34 = v9;
              v31 = v9;
              goto LABEL_65;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }
    }
  }

  v8 = 0;
  v31 = 1;
LABEL_70:
  LOBYTE(v10) = v31 & 1;
LABEL_77:
  result.is_nil = v10;
  result.value = v8;
  return result;
}

Swift::Double_optional __swiftcall FMUserDefaults.double(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  if ([*v1 isInternalBuild] && (v4 = sub_24A4AB820(), v5 = objc_msgSend(v2, sel_stringForKey_, v4), v4, v5))
  {
    v6 = sub_24A4AB850();
    v8 = v7;

    sub_24A49E260(v6, v8);

    v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  result.value = v3;
  result.is_nil = v9;
  return result;
}

void FMUserDefaults.set(value:for:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  if ([*v1 isInternalBuild])
  {
    sub_24A49E358(a1, v13);
    v4 = v14;
    if (v14)
    {
      v5 = sub_24A37EACC(v13, v14);
      v6 = *(v4 - 8);
      v7 = *(v6 + 64);
      v8 = MEMORY[0x28223BE20](v5);
      v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v10, v8);
      v11 = sub_24A4AC260();
      (*(v6 + 8))(v10, v4);
      sub_24A37EEE0(v13);
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_24A4AB820();
    [v3 setValue:v11 forKey:v12];
    swift_unknownObjectRelease();
  }
}

unsigned __int8 *sub_24A49D860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_24A4AB9F0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24A49DDEC();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24A4ABF90();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_24A49DDEC()
{
  v0 = sub_24A4ABA00();
  v4 = sub_24A49DE6C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_24A49DE6C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_24A4AB8E0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_24A4ABE00();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_24A37D828(v9, 0);
  v12 = sub_24A49DFC4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_24A4AB8E0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_24A4ABF90();
LABEL_4:

  return sub_24A4AB8E0();
}

unint64_t sub_24A49DFC4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_24A49E1E4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24A4AB9A0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24A4ABF90();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_24A49E1E4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_24A4AB980();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_24A49E1E4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24A4AB9B0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C217DA0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_24A49E260(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_24A4ABF30();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_24A49E358(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F808, &unk_24A4BA6D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_24A49E3C8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24A49E3D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A49E41C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_24A49E468@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t type metadata accessor for FMFRemoveLabelsRequest()
{
  result = qword_27EF40D58;
  if (!qword_27EF40D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A49E584()
{
  v1 = *(v0 + qword_27EF4E330);
  v3[3] = sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
  v3[0] = v1;
  swift_beginAccess();

  sub_24A3A6CEC(v3, 0x736C6562616CLL, 0xE600000000000000);
  return swift_endAccess();
}

uint64_t sub_24A49E634()
{
  v0 = sub_24A4AAC20();
  v1 = *(v0 + qword_27EF3FC00);

  v2 = *(v0 + qword_27EF3FC08);

  v3 = *(v0 + qword_27EF3FC10);

  v4 = *(v0 + qword_27EF3FC18);

  v5 = *(v0 + qword_27EF3FC20);

  v6 = qword_27EF4E0D8;
  v7 = sub_24A4AAAD0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + qword_27EF4E330);

  return v0;
}

uint64_t sub_24A49E714()
{
  v0 = *sub_24A49E634();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t static FMSystemInfo.isKoreaSKU()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isInternalBuild];

  if (v1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_24A4AB820();
    v4 = [v2 BOOLForKey_];

    if (v4)
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v5 = sub_24A4AB630();
      sub_24A378E18(v5, qword_27EF4E260);
      v6 = sub_24A4AB600();
      v7 = sub_24A4ABCE0();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_24A376000, v6, v7, "SystemInfo simulating Korea SKU device.", v8, 2u);
        MEMORY[0x24C219130](v8, -1, -1);
      }

      return 1;
    }
  }

  if (sub_24A49E940() == 18507 && v9 == 0xE200000000000000)
  {

    return 1;
  }

  v11 = sub_24A4AC270();

  return v11 & 1;
}

uint64_t sub_24A49E940()
{
  sub_24A49EB94(v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    sub_24A3A83C8(v2);
  }

  return 0;
}

uint64_t static FMSystemInfo.isChinaSKU()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isInternalBuild];

  if (v1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_24A4AB820();
    v4 = [v2 BOOLForKey_];

    if (v4)
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v5 = sub_24A4AB630();
      sub_24A378E18(v5, qword_27EF4E260);
      v6 = sub_24A4AB600();
      v7 = sub_24A4ABCE0();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_24A376000, v6, v7, "SystemInfo simulating China SKU device.", v8, 2u);
        MEMORY[0x24C219130](v8, -1, -1);
      }

      return 1;
    }
  }

  if (sub_24A49E940() == 18499 && v9 == 0xE200000000000000)
  {

    return 1;
  }

  v11 = sub_24A4AC270();

  return v11 & 1;
}

void sub_24A49EB94(uint64_t a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = sub_24A4AB820();
  v3 = MGCopyAnswerWithError();

  if (v3)
  {
    *(a1 + 24) = swift_getObjectType();
    *a1 = v3;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t FMFAddress.displayAddress.getter()
{
  v2 = v0[1];
  v1 = v0[2];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[12];
  v7 = v0[17];
  v6 = v0[18];
  if (v5 && (v8 = v0[11], v9 = v0[12], sub_24A4AB910() >= 1))
  {

    if (!v3)
    {
      goto LABEL_4;
    }
  }

  else
  {

    v8 = v7;
    v5 = v6;
    if (!v3)
    {
LABEL_4:
      if (!v5)
      {
        if (!v1)
        {
          goto LABEL_6;
        }

LABEL_14:

        v8 = v2;
        v5 = v1;
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  if (!v5)
  {
    goto LABEL_21;
  }

  if (v4 == v8 && v3 == v5 || (sub_24A4AC270() & 1) != 0)
  {

    if (!v1)
    {
LABEL_6:
      if (!v3)
      {
        return v3;
      }

      goto LABEL_21;
    }

    goto LABEL_14;
  }

LABEL_15:
  v10 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v10 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    type metadata accessor for FMLocalize();
    if (v3)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v12 = objc_opt_self();

      v13 = [v12 bundleForClass_];
      sub_24A4AA800();

      sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_24A4BB330;
      v15 = MEMORY[0x277D837D0];
      *(v14 + 56) = MEMORY[0x277D837D0];
      v16 = sub_24A3ABD70();
      *(v14 + 32) = v4;
      *(v14 + 40) = v3;
      *(v14 + 96) = v15;
      *(v14 + 104) = v16;
      *(v14 + 64) = v16;
      *(v14 + 72) = v8;
      *(v14 + 80) = v5;
    }

    else
    {
      v22 = swift_getObjCClassFromMetadata();
      v23 = [objc_opt_self() bundleForClass_];
      sub_24A4AA800();

      sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_24A4B4E10;
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = sub_24A3ABD70();
      *(v24 + 32) = v8;
      *(v24 + 40) = v5;
    }

    goto LABEL_22;
  }

  if (!v3)
  {
    return v3;
  }

LABEL_21:
  type metadata accessor for FMLocalize();
  v17 = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();

  v19 = [v18 bundleForClass_];
  sub_24A4AA800();

  sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24A4B4E10;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_24A3ABD70();
  *(v20 + 32) = v4;
  *(v20 + 40) = v3;
LABEL_22:
  v3 = sub_24A4AB860();

  return v3;
}

uint64_t FMFAddress.fmlPlacemark.getter()
{
  v15 = *v0;
  v24 = v0[1];
  v17 = v0[2];
  v1 = v0[6];
  v2 = v0[8];
  v21 = v0[7];
  v22 = v0[5];
  v3 = v0[10];
  v20 = v0[9];
  v23 = v0[11];
  v12 = v0[12];
  v19 = v0[17];
  v13 = v0[18];
  v4 = v0[27];
  v18 = v0[26];
  v5 = v0[31];
  v16 = v0[30];
  v6 = v0[32];
  v7 = v0[33];
  v8 = v0[35];
  v14 = v0[34];
  v9 = v0[36];
  v10 = v0[37];

  return sub_24A4AB590();
}

id FMFAddress.placemark.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v19 = v0[5];
  v20 = v0[6];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[12];
  v17 = v0[11];
  v18 = v0[7];
  v8 = v0[17];
  v7 = v0[18];
  v9 = [objc_allocWithZone(MEMORY[0x277D07BD0]) init];
  if (v5)
  {
    v10 = sub_24A4AB820();
    [v9 setLocality_];
  }

  if (v7)
  {
    v11 = sub_24A4AB820();
    [v9 setAdministrativeArea_];
  }

  if (v2)
  {
    v12 = sub_24A4AB820();
    [v9 setCountry_];
  }

  if (v6)
  {
    v13 = sub_24A4AB820();
    [v9 setState_];
  }

  if (v3)
  {
    v14 = sub_24A4AB820();
    [v9 setStreetAddress_];
  }

  if (v20)
  {
    v15 = sub_24A4AB820();
    [v9 setStreetName_];
  }

  return v9;
}

__n128 FMFAddress.init(formattedAddressLines:country:countryCode:streetName:streetAddress:locality:stateCode:postalCode:landmark:administrativeArea:areaOfInterest:fullThoroughfare:mapFormattedAddress:coarseAddressModern:streetAddressModern:smallAddressModern:mediumAddressModern:largeAddressModern:poiAddressModern:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __n128 a23, uint64_t a24)
{
  result = a23;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 152) = 0;
  *(a9 + 160) = 0;
  *(a9 + 144) = a15;
  *(a9 + 168) = a16;
  *(a9 + 184) = a17;
  *(a9 + 200) = a18;
  *(a9 + 216) = a19;
  *(a9 + 232) = a20;
  *(a9 + 248) = a21;
  *(a9 + 264) = a22;
  *(a9 + 280) = a23;
  *(a9 + 296) = a24;
  return result;
}

uint64_t FMFAddress.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = sub_24A4AB5A0();
  *(a2 + 80) = v4;
  *(a2 + 136) = sub_24A4AB560();
  *(a2 + 144) = v5;
  *(a2 + 8) = sub_24A4AB580();
  *(a2 + 16) = v6;
  *(a2 + 88) = sub_24A4AB5B0();
  *(a2 + 96) = v7;
  *(a2 + 56) = sub_24A4AB550();
  *(a2 + 64) = v8;
  *(a2 + 40) = sub_24A4AB500();
  *(a2 + 48) = v9;
  *a2 = sub_24A4AB570();
  *(a2 + 208) = sub_24A4AB530();
  *(a2 + 216) = v10;
  *(a2 + 288) = sub_24A4AB4F0();
  *(a2 + 296) = v11;
  *(a2 + 240) = sub_24A4AB520();
  *(a2 + 248) = v12;
  *(a2 + 256) = sub_24A4AB540();
  *(a2 + 264) = v13;
  *(a2 + 272) = sub_24A4AB510();
  *(a2 + 280) = v14;
  v15 = sub_24A4AB5D0();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  result = (*(*(v15 - 8) + 8))(a1, v15);
  *(a2 + 168) = MEMORY[0x277D84F90];
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  return result;
}

double FMFAddress.init(mapItem:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 geoAddress];
  v5 = [v4 structuredAddress];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 locality];
    if (v7)
    {
      v8 = v7;
      v81 = sub_24A4AB850();
      v82 = v9;
    }

    else
    {
      v81 = 0;
      v82 = 0;
    }

    v10 = [v6 administrativeArea];
    if (v10)
    {
      v11 = v10;
      v12 = sub_24A4AB850();
      v79 = v13;
      v80 = v12;
    }

    else
    {
      v79 = 0;
      v80 = 0;
    }

    v14 = [v6 subAdministrativeArea];
    if (v14)
    {
      v15 = v14;
      v16 = sub_24A4AB850();
      v77 = v17;
      v78 = v16;
    }

    else
    {
      v77 = 0;
      v78 = 0;
    }

    v18 = [v6 country];
    if (v18)
    {
      v19 = v18;
      v75 = sub_24A4AB850();
      v76 = v20;
    }

    else
    {
      v75 = 0;
      v76 = 0;
    }

    v21 = [v6 administrativeAreaCode];
    if (v21)
    {
      v22 = v21;
      v73 = sub_24A4AB850();
      v74 = v23;
    }

    else
    {
      v73 = 0;
      v74 = 0;
    }

    v24 = [v6 postCode];
    if (v24)
    {
      v25 = v24;
      v26 = sub_24A4AB850();
      v71 = v27;
      v72 = v26;

      goto LABEL_21;
    }
  }

  else
  {
    v80 = 0;
    v73 = 0;
    v74 = 0;
    v81 = 0;
    v82 = 0;
    v79 = 0;
    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
  }

  v71 = 0;
  v72 = 0;
LABEL_21:
  v28 = [a1 name];
  if (v28)
  {
    v29 = v28;
    v30 = sub_24A4AB850();
    v69 = v31;
    v70 = v30;

    v32 = &off_278FE1000;
    if (v6)
    {
      goto LABEL_23;
    }

LABEL_26:
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    goto LABEL_34;
  }

  v69 = 0;
  v70 = 0;
  v32 = &off_278FE1000;
  if (!v6)
  {
    goto LABEL_26;
  }

LABEL_23:
  v33 = [v6 thoroughfare];
  if (v33)
  {
    v34 = v33;
    v67 = sub_24A4AB850();
    v68 = v35;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v36 = [v6 v32[386]];
  if (v36)
  {
    v37 = v36;
    v65 = sub_24A4AB850();
    v66 = v38;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  v39 = [v6 countryCode];
  if (!v39)
  {
LABEL_34:
    v63 = 0;
    v64 = 0;
    if (!v4)
    {
      goto LABEL_37;
    }

LABEL_35:
    v43 = [v4 formattedAddressLines];
    if (v43)
    {
      v44 = v43;
      sub_24A4ABA60();
    }

    goto LABEL_37;
  }

  v40 = v39;
  v41 = sub_24A4AB850();
  v63 = v42;
  v64 = v41;

  if (v4)
  {
    goto LABEL_35;
  }

LABEL_37:
  v45 = [a1 geoAddress];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 structuredAddress];

    if (v47)
    {
      v48 = [v47 areaOfInterests];

      if (v48)
      {
        sub_24A4ABA60();
      }
    }
  }

  v49 = MEMORY[0x277D84F90];
  v50 = [a1 geoAddress];
  if (!v50)
  {
    goto LABEL_45;
  }

  v51 = v50;
  v52 = [v50 structuredAddress];

  if (!v52)
  {
LABEL_46:
    v55 = 0;
    goto LABEL_47;
  }

  v53 = [v52 v32[386]];

  if (!v53)
  {
LABEL_45:
    v52 = 0;
    goto LABEL_46;
  }

  v52 = sub_24A4AB850();
  v55 = v54;

LABEL_47:
  v56 = [a1 addressObject];
  if (v56 && (v57 = v56, v58 = [v56 fullAddressNoCurrentCountryWithMultiline_], v57, v58))
  {
    v59 = sub_24A4AB850();
    v61 = v60;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v59 = 0;
    v61 = 0;
  }

  *a2 = 0;
  *(a2 + 8) = v75;
  *(a2 + 16) = v76;
  *(a2 + 24) = v64;
  *(a2 + 32) = v63;
  *(a2 + 40) = v67;
  *(a2 + 48) = v68;
  *(a2 + 56) = v65;
  *(a2 + 64) = v66;
  *(a2 + 72) = v81;
  *(a2 + 80) = v82;
  *(a2 + 88) = v73;
  *(a2 + 96) = v74;
  *(a2 + 104) = v72;
  *(a2 + 112) = v71;
  *(a2 + 120) = v70;
  *(a2 + 128) = v69;
  *(a2 + 136) = v80;
  *(a2 + 144) = v79;
  *(a2 + 152) = v78;
  *(a2 + 160) = v77;
  *(a2 + 168) = v49;
  *(a2 + 176) = v52;
  *(a2 + 184) = v55;
  *(a2 + 192) = v59;
  *(a2 + 200) = v61;
  result = 0.0;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  return result;
}

FMFCore::FMFAddressLevelType_optional __swiftcall FMFAddressLevelType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FMFAddress.country.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t FMFAddress.countryCode.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t FMFAddress.streetName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t FMFAddress.streetAddress.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t FMFAddress.locality.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t FMFAddress.stateCode.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t FMFAddress.postalCode.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t FMFAddress.landmark.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t FMFAddress.administrativeArea.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t FMFAddress.subAdministrativeArea.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

uint64_t FMFAddress.fullThoroughfare.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t FMFAddress.mapFormattedAddress.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t FMFAddress.coarseAddressModern.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t FMFAddress.streetAddressModern.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return v1;
}

uint64_t FMFAddress.smallAddressModern.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return v1;
}

uint64_t FMFAddress.mediumAddressModern.getter()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return v1;
}

uint64_t FMFAddress.largeAddressModern.getter()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return v1;
}

uint64_t FMFAddress.poiAddressModern.getter()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return v1;
}

uint64_t sub_24A49FEC8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A3C1AE4(*a1);
  v5 = v4;
  if (v3 == sub_24A3C1AE4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A49FF50()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A3C1AE4(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A49FFB4()
{
  sub_24A3C1AE4(*v0);
  sub_24A4AB8F0();
}

uint64_t sub_24A4A0008()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A3C1AE4(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4A0068@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A4A245C();
  *a2 = result;
  return result;
}

unint64_t sub_24A4A0098@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A3C1AE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A4A00C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A4A245C();
  *a1 = result;
  return result;
}

uint64_t sub_24A4A00F8(uint64_t a1)
{
  v2 = sub_24A3C1E10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFAddress.displayAddressWithStreetName.getter()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = v0[6];
  if (v1 && v1[2])
  {
    v2 = v1[4];
    v4 = v1[5];
  }

  return v2;
}

uint64_t FMFAddress.displayAddressWithoutStreetName.getter()
{
  v1 = *v0;
  v2 = v0[7];
  v3 = v0[8];
  if (v1 && v1[2] >= 2uLL)
  {
    v2 = v1[6];
    v4 = v1[7];
  }

  return v2;
}

uint64_t FMFAddress.formattedAddress.getter()
{
  v3 = *v0;
  v2 = v0 + 1;
  v1 = v3;
  if (v3 && *(v1 + 16))
  {
    sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
    sub_24A4A2718();
    return sub_24A4AB800();
  }

  memcpy(v11, v2, sizeof(v11));
  v5 = FMFAddress.postalAddress.getter();
  v6 = _s7FMFCore10FMFAddressV21formattedAddressLines3forSaySSGSgSo08CNPostalD0C_tFZ_0(v5);

  if (v6)
  {
    if (*(v6 + 2))
    {
      sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
      sub_24A4A2718();
      v7 = sub_24A4AB800();

      return v7;
    }
  }

  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_24A4AA800();

  return v10;
}

id FMFAddress.postalAddress.getter()
{
  v1 = v0[2];
  v23 = v0[1];
  v24 = v0[3];
  v25 = v0[4];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[18];
  v22 = v0[17];
  v9 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
  if (v3)
  {
    v10 = sub_24A4AB820();
    [v9 setStreet_];
  }

  if (v4)
  {
    v11 = sub_24A4AB820();
    [v9 setCity_];
  }

  if (!v6)
  {
LABEL_13:
    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v12 = [v9 city];
  v13 = sub_24A4AB850();
  v15 = v14;

  if (v7 == v13 && v6 == v15)
  {

    goto LABEL_13;
  }

  v17 = sub_24A4AC270();

  if (v17)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = sub_24A4AB820();
  [v9 setState_];

LABEL_15:
  if (v1)
  {
    v19 = sub_24A4AB820();
    [v9 setCountry_];
  }

  if (v25)
  {
    v20 = sub_24A4AB820();
    [v9 setISOCountryCode_];
  }

  return v9;
}

void FMFAddress.levelType.getter(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[8];
  v4 = v1[10];
  v5 = v1[18];
  if (v3 && ((v3 & 0x2000000000000000) != 0 ? (v6 = HIBYTE(v3) & 0xF) : (v6 = v1[7] & 0xFFFFFFFFFFFFLL), v6))
  {
    *a1 = 1;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_15;
    }

    v7 = v1[9] & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v4) & 0xF;
    }

    if (v7)
    {
      *a1 = 2;
    }

    else
    {
      if (!v5)
      {
        goto LABEL_20;
      }

LABEL_15:
      v8 = v1[17] & 0xFFFFFFFFFFFFLL;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v5) & 0xF;
      }

      if (v8)
      {
        *a1 = 3;
      }

      else
      {
        if (!v2)
        {
          goto LABEL_22;
        }

LABEL_20:
        v9 = v1[1] & 0xFFFFFFFFFFFFLL;
        if ((v2 & 0x2000000000000000) != 0)
        {
          v9 = HIBYTE(v2) & 0xF;
        }

        if (v9)
        {
          *a1 = 4;
        }

        else
        {
LABEL_22:
          *a1 = 0;
        }
      }
    }
  }
}

double FMFAddress.init(formattedAddressLines:country:countryCode:streetName:streetAddress:locality:stateCode:postalCode:landmark:administrativeArea:areaOfInterest:fullThoroughfare:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, __int128 a16, uint64_t a17)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 152) = 0;
  *(a9 + 160) = 0;
  *(a9 + 144) = a15;
  *(a9 + 168) = a16;
  *(a9 + 184) = a17;
  result = 0.0;
  *(a9 + 272) = 0u;
  *(a9 + 288) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 256) = 0u;
  *(a9 + 208) = 0u;
  *(a9 + 224) = 0u;
  *(a9 + 192) = 0u;
  return result;
}

uint64_t FMFAddress.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF40D68, &qword_24A4BCAA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v68 - v8;
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3C1E10();
  sub_24A4AC3C0();
  if (v2)
  {
    v11 = a1;
  }

  else
  {
    v103 = a1;
    sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
    v104 = 0;
    sub_24A382908(&qword_27EF3F110);
    sub_24A4AC160();
    v101 = v105;
    LOBYTE(v105) = 1;
    v12 = sub_24A4AC120();
    v99 = v13;
    v100 = v12;
    LOBYTE(v105) = 2;
    v14 = sub_24A4AC120();
    v97 = v15;
    v98 = v14;
    LOBYTE(v105) = 3;
    v16 = sub_24A4AC120();
    v95 = v17;
    v96 = v16;
    LOBYTE(v105) = 4;
    v18 = sub_24A4AC120();
    v93 = v19;
    v94 = v18;
    LOBYTE(v105) = 5;
    v20 = sub_24A4AC120();
    v91 = v21;
    v92 = v20;
    LOBYTE(v105) = 6;
    v22 = sub_24A4AC120();
    v89 = v23;
    v90 = v22;
    LOBYTE(v105) = 7;
    v24 = sub_24A4AC120();
    v87 = v25;
    v88 = v24;
    LOBYTE(v105) = 8;
    v26 = sub_24A4AC120();
    v85 = v27;
    v86 = v26;
    LOBYTE(v105) = 9;
    v28 = sub_24A4AC120();
    v83 = v29;
    v84 = v28;
    LOBYTE(v105) = 10;
    v30 = sub_24A4AC120();
    v81 = v31;
    v82 = v30;
    v104 = 11;
    sub_24A4AC160();
    v80 = v105;
    LOBYTE(v105) = 12;
    v32 = sub_24A4AC120();
    v78 = v33;
    v79 = v32;
    LOBYTE(v105) = 13;
    v34 = sub_24A4AC120();
    v76 = v35;
    v77 = v34;
    LOBYTE(v105) = 14;
    v36 = sub_24A4AC120();
    v74 = v37;
    v75 = v36;
    LOBYTE(v105) = 15;
    v38 = sub_24A4AC120();
    v72 = v39;
    v73 = v38;
    LOBYTE(v105) = 16;
    v40 = sub_24A4AC120();
    v102 = v6;
    v70 = v41;
    v71 = v40;
    LOBYTE(v105) = 17;
    v42 = sub_24A4AC120();
    v44 = v43;
    v69 = v42;
    LOBYTE(v105) = 18;
    v45 = sub_24A4AC120();
    v47 = v46;
    LOBYTE(v105) = 19;
    v48 = sub_24A4AC120();
    v50 = v49;
    (*(v102 + 8))(v9, v5);
    v51 = v100;
    *a2 = v101;
    a2[1] = v51;
    v52 = v98;
    a2[2] = v99;
    a2[3] = v52;
    v53 = v96;
    a2[4] = v97;
    a2[5] = v53;
    v54 = v94;
    a2[6] = v95;
    a2[7] = v54;
    v55 = v92;
    a2[8] = v93;
    a2[9] = v55;
    v56 = v90;
    a2[10] = v91;
    a2[11] = v56;
    v57 = v88;
    a2[12] = v89;
    a2[13] = v57;
    v58 = v86;
    a2[14] = v87;
    a2[15] = v58;
    v59 = v84;
    a2[16] = v85;
    a2[17] = v59;
    v60 = v82;
    a2[18] = v83;
    a2[19] = v60;
    v61 = v80;
    a2[20] = v81;
    a2[21] = v61;
    v62 = v78;
    a2[22] = v79;
    a2[23] = v62;
    v63 = v76;
    a2[24] = v77;
    a2[25] = v63;
    v64 = v74;
    a2[26] = v75;
    a2[27] = v64;
    v65 = v72;
    a2[28] = v73;
    a2[29] = v65;
    v66 = v70;
    a2[30] = v71;
    a2[31] = v66;
    a2[32] = v69;
    a2[33] = v44;
    a2[34] = v45;
    a2[35] = v47;
    a2[36] = v48;
    a2[37] = v50;
    v11 = v103;
  }

  return sub_24A37EEE0(v11);
}

double FMFAddress.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 postalAddress];
  if (v4)
  {
    v5 = v4;
    v6 = _s7FMFCore10FMFAddressV21formattedAddressLines3forSaySSGSgSo08CNPostalD0C_tFZ_0(v4);
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 country];
  if (v7)
  {
    v8 = v7;
    v9 = sub_24A4AB850();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [a1 ISOcountryCode];
  if (v12)
  {
    v13 = v12;
    v14 = sub_24A4AB850();
    v83 = v15;
  }

  else
  {
    v14 = 0;
    v83 = 0;
  }

  v16 = [a1 postalAddress];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 street];

    v19 = sub_24A4AB850();
    v81 = v20;
    v82 = v19;
  }

  else
  {
    v81 = 0;
    v82 = 0;
  }

  v21 = [a1 thoroughfare];
  if (v21)
  {
    v22 = v21;
    v23 = sub_24A4AB850();
    v79 = v24;
    v80 = v23;
  }

  else
  {
    v79 = 0;
    v80 = 0;
  }

  v25 = [a1 locality];
  if (v25)
  {
    v26 = v25;
    v27 = sub_24A4AB850();
    v77 = v28;
    v78 = v27;
  }

  else
  {
    v77 = 0;
    v78 = 0;
  }

  v29 = [a1 postalCode];
  if (v29)
  {
    v30 = v29;
    v31 = sub_24A4AB850();
    v75 = v32;
    v76 = v31;
  }

  else
  {
    v75 = 0;
    v76 = 0;
  }

  v33 = [a1 postalCode];
  if (v33)
  {
    v34 = v33;
    v35 = sub_24A4AB850();
    v73 = v36;
    v74 = v35;
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  v37 = [a1 name];
  if (v37)
  {
    v38 = v37;
    v39 = sub_24A4AB850();
    v71 = v40;
    v72 = v39;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v41 = [a1 administrativeArea];
  if (v41)
  {
    v42 = v41;
    v43 = sub_24A4AB850();
    v69 = v44;
    v70 = v43;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v45 = [a1 subAdministrativeArea];
  if (v45)
  {
    v46 = v45;
    v47 = sub_24A4AB850();
    v67 = v48;
    v68 = v47;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v49 = [a1 areasOfInterest];
  if (v49)
  {
    v50 = v49;
    v66 = sub_24A4ABA70();
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  v51 = [a1 fullThoroughfare];
  if (v51)
  {
    v52 = v51;
    v53 = sub_24A4AB850();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0;
  }

  v56 = [a1 _geoMapItem];
  if (v56)
  {
    v57 = [v56 addressObject];
    swift_unknownObjectRelease();
    if (v57)
    {
      v65 = v14;
      v58 = v11;
      v59 = v9;
      v60 = v6;
      v61 = [v57 fullAddressNoCurrentCountryWithMultiline_];

      if (v61)
      {
        v57 = sub_24A4AB850();
        v63 = v62;
      }

      else
      {

        v57 = 0;
        v63 = 0;
      }

      v6 = v60;
      v9 = v59;
      v11 = v58;
      v14 = v65;
    }

    else
    {

      v63 = 0;
    }
  }

  else
  {

    v57 = 0;
    v63 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11;
  *(a2 + 24) = v14;
  *(a2 + 32) = v83;
  *(a2 + 40) = v82;
  *(a2 + 48) = v81;
  *(a2 + 56) = v80;
  *(a2 + 64) = v79;
  *(a2 + 72) = v78;
  *(a2 + 80) = v77;
  *(a2 + 88) = v76;
  *(a2 + 96) = v75;
  *(a2 + 104) = v74;
  *(a2 + 112) = v73;
  *(a2 + 120) = v72;
  *(a2 + 128) = v71;
  *(a2 + 136) = v70;
  *(a2 + 144) = v69;
  *(a2 + 152) = v68;
  *(a2 + 160) = v67;
  *(a2 + 168) = v66;
  *(a2 + 176) = v53;
  *(a2 + 184) = v55;
  *(a2 + 192) = v57;
  *(a2 + 200) = v63;
  result = 0.0;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  return result;
}

{
  v4 = [a1 locality];
  v5 = sub_24A4AB850();
  v7 = v6;

  *(a2 + 72) = v5;
  *(a2 + 80) = v7;
  v8 = [a1 administrativeArea];
  v9 = sub_24A4AB850();
  v11 = v10;

  *(a2 + 136) = v9;
  *(a2 + 144) = v11;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v12 = [a1 country];
  v13 = sub_24A4AB850();
  v15 = v14;

  *(a2 + 8) = v13;
  *(a2 + 16) = v15;
  v16 = [a1 state];
  v17 = sub_24A4AB850();
  v19 = v18;

  *(a2 + 88) = v17;
  *(a2 + 96) = v19;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  v20 = [a1 streetAddress];
  v21 = sub_24A4AB850();
  v23 = v22;

  *(a2 + 56) = v21;
  *(a2 + 64) = v23;
  v24 = [a1 streetName];
  v25 = sub_24A4AB850();
  v27 = v26;

  *(a2 + 40) = v25;
  *(a2 + 48) = v27;
  *a2 = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;

  *(a2 + 168) = MEMORY[0x277D84F90];
  result = 0.0;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  return result;
}

double FMFAddress.init(formattedAddressLines:country:countryCode:streetName:streetAddress:locality:stateCode:postalCode:landmark:administrativeArea:areaOfInterest:fullThoroughfare:mapFormattedAddress:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 152) = 0;
  *(a9 + 160) = 0;
  *(a9 + 144) = a15;
  *(a9 + 168) = a16;
  *(a9 + 184) = a17;
  *(a9 + 200) = a18;
  result = 0.0;
  *(a9 + 272) = 0u;
  *(a9 + 288) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 256) = 0u;
  *(a9 + 208) = 0u;
  *(a9 + 224) = 0u;
  return result;
}

uint64_t FMFAddress.encode(to:)(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF40D78, &qword_24A4BCAA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v75 = v1[2];
  v76 = v8;
  v11 = v1[5];
  v73 = v1[4];
  v74 = v10;
  v12 = v1[6];
  v13 = v1[7];
  v71 = v11;
  v72 = v12;
  v14 = v1[8];
  v15 = v1[9];
  v69 = v13;
  v70 = v14;
  v16 = v1[10];
  v17 = v1[11];
  v67 = v15;
  v68 = v16;
  v18 = v1[12];
  v19 = v1[13];
  v65 = v17;
  v66 = v18;
  v20 = v1[14];
  v21 = v1[15];
  v63 = v19;
  v64 = v20;
  v22 = v1[16];
  v23 = v1[17];
  v61 = v21;
  v62 = v22;
  v25 = v1[18];
  v24 = v1[19];
  v59 = v23;
  v60 = v25;
  v57 = v24;
  v26 = v1[21];
  v58 = v1[20];
  v56 = v26;
  v27 = v1[23];
  v55 = v1[22];
  v54 = v27;
  v28 = v1[25];
  v53 = v1[24];
  v52 = v28;
  v29 = v1[27];
  v51 = v1[26];
  v50 = v29;
  v30 = v1[29];
  v49 = v1[28];
  v48 = v30;
  v31 = v1[31];
  v47 = v1[30];
  v46 = v31;
  v32 = v1[33];
  v43 = v1[32];
  v42 = v32;
  v33 = v1[35];
  v45 = v1[34];
  v44 = v33;
  v34 = v1[37];
  v41 = v1[36];
  v35 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3C1E10();

  sub_24A4AC3D0();
  v78 = v9;
  v80 = 0;
  sub_24A3C9CEC(&qword_27EF3F3E0, &qword_24A4B54A0);
  sub_24A38CA78();
  v36 = v77;
  sub_24A4AC1F0();
  if (v36)
  {

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v38 = v73;
    v39 = v74;
    v77 = v34;

    v78 = v76;
    v79 = v75;
    v80 = 1;
    sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
    sub_24A38D258();
    sub_24A4AC1F0();
    v78 = v39;
    v79 = v38;
    v80 = 2;
    v76 = v7;
    sub_24A4AC1F0();
    v78 = v71;
    v79 = v72;
    v80 = 3;
    sub_24A4AC1F0();
    v78 = v69;
    v79 = v70;
    v80 = 4;
    sub_24A4AC1F0();
    v78 = v67;
    v79 = v68;
    v80 = 5;
    sub_24A4AC1F0();
    v78 = v65;
    v79 = v66;
    v80 = 6;
    sub_24A4AC1F0();
    v78 = v63;
    v79 = v64;
    v80 = 7;
    sub_24A4AC1F0();
    v78 = v61;
    v79 = v62;
    v80 = 8;
    sub_24A4AC1F0();
    v78 = v59;
    v79 = v60;
    v80 = 9;
    sub_24A4AC1F0();
    v78 = v57;
    v79 = v58;
    v80 = 10;
    sub_24A4AC1F0();
    v78 = v56;
    v80 = 11;
    sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
    sub_24A382908(&qword_27EF3F3F0);
    sub_24A4AC1F0();
    v78 = v55;
    v79 = v54;
    v80 = 12;
    sub_24A4AC1F0();
    v78 = v53;
    v79 = v52;
    v80 = 13;
    sub_24A4AC1F0();
    v78 = v51;
    v79 = v50;
    v80 = 14;
    sub_24A4AC1F0();
    v78 = v49;
    v79 = v48;
    v80 = 15;
    sub_24A4AC1F0();
    v78 = v47;
    v79 = v46;
    v80 = 16;
    sub_24A4AC1F0();
    v78 = v43;
    v79 = v42;
    v80 = 17;
    sub_24A4AC1F0();
    v78 = v45;
    v79 = v44;
    v80 = 18;
    sub_24A4AC1F0();
    v40 = v76;
    v78 = v41;
    v79 = v77;
    v80 = 19;
    sub_24A4AC1F0();
    return (*(v4 + 8))(v40, 0);
  }
}

uint64_t _s7FMFCore10FMFAddressV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v11 = a1[7];
  v10 = a1[8];
  v12 = a1[10];
  v120 = a1[9];
  v117 = a1[11];
  v121 = a1[12];
  v113 = a1[13];
  v119 = a1[14];
  v109 = a1[15];
  v116 = a1[16];
  v105 = a1[17];
  v112 = a1[18];
  v104 = a1[19];
  v108 = a1[20];
  v102 = a1[21];
  v96 = a1[22];
  v100 = a1[23];
  v92 = a1[24];
  v97 = a1[25];
  v88 = a1[26];
  v94 = a1[27];
  v85 = a1[28];
  v90 = a1[29];
  v81 = a1[30];
  v86 = a1[31];
  v77 = a1[32];
  v82 = a1[33];
  v73 = a1[34];
  v78 = a1[35];
  v71 = a1[36];
  *&v74 = a1[37];
  v14 = *a2;
  v13 = a2[1];
  v16 = a2[2];
  v15 = a2[3];
  v18 = a2[4];
  v17 = a2[5];
  v19 = a2[6];
  v20 = a2[7];
  v21 = a2[8];
  v22 = a2[9];
  v23 = a2[10];
  v24 = a2[11];
  v25 = a2[12];
  v114 = a2[13];
  v118 = a2[14];
  v110 = a2[15];
  v115 = a2[16];
  v106 = a2[17];
  v111 = a2[18];
  v103 = a2[19];
  v107 = a2[20];
  v101 = a2[21];
  v95 = a2[22];
  v99 = a2[23];
  v91 = a2[24];
  v98 = a2[25];
  v87 = a2[26];
  v93 = a2[27];
  v83 = a2[28];
  v89 = a2[29];
  v79 = a2[30];
  v84 = a2[31];
  v75 = a2[32];
  v80 = a2[33];
  v72 = a2[34];
  v76 = a2[35];
  v70 = a2[36];
  *(&v74 + 1) = a2[37];
  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    v65 = a2[8];
    v67 = a2[7];
    v59 = v8;
    v62 = v9;
    v55 = a2[10];
    v57 = a2[9];
    v52 = v11;
    v53 = v10;
    v50 = a2[12];
    v51 = a2[11];
    v26 = v12;
    v27 = v6;
    v28 = v7;
    v29 = a2[6];
    v30 = a2[5];
    v31 = v4;
    v32 = v5;
    v33 = a2[4];
    v34 = a2[3];
    v35 = a2[2];
    v49 = a2[1];
    v36 = sub_24A38B37C(v3, v14);
    v16 = v35;
    v15 = v34;
    v18 = v33;
    v5 = v32;
    v4 = v31;
    v17 = v30;
    v19 = v29;
    v7 = v28;
    v6 = v27;
    v12 = v26;
    v13 = v49;
    v25 = v50;
    v24 = v51;
    v11 = v52;
    v10 = v53;
    v23 = v55;
    v22 = v57;
    v8 = v59;
    v9 = v62;
    v21 = v65;
    v20 = v67;
    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v5)
  {
    if (!v16)
    {
      return 0;
    }

    if (v4 != v13 || v5 != v16)
    {
      v60 = v17;
      v63 = v19;
      v66 = v21;
      v68 = v20;
      v56 = v12;
      v58 = v7;
      v37 = v6;
      v38 = v18;
      v54 = v15;
      v39 = sub_24A4AC270();
      v15 = v54;
      v12 = v56;
      v18 = v38;
      v17 = v60;
      v19 = v63;
      v7 = v58;
      v6 = v37;
      v21 = v66;
      v20 = v68;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v6)
  {
    if (!v18)
    {
      return 0;
    }

    if (v7 != v15 || v6 != v18)
    {
      v61 = v17;
      v64 = v19;
      v69 = v20;
      v40 = v21;
      v41 = v8;
      v42 = v12;
      v43 = sub_24A4AC270();
      v17 = v61;
      v19 = v64;
      v12 = v42;
      v8 = v41;
      v21 = v40;
      v20 = v69;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v9)
  {
    if (!v19)
    {
      return 0;
    }

    if (v8 != v17 || v9 != v19)
    {
      v44 = v12;
      v45 = sub_24A4AC270();
      v12 = v44;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v10)
  {
    if (!v21)
    {
      return 0;
    }

    if (v11 != v20 || v10 != v21)
    {
      v46 = v12;
      v47 = sub_24A4AC270();
      v12 = v46;
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v12)
  {
    if (!v23 || (v120 != v22 || v12 != v23) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v121)
  {
    if (!v25 || (v117 != v24 || v121 != v25) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (v119)
  {
    if (!v118 || (v113 != v114 || v119 != v118) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v118)
  {
    return 0;
  }

  if (v116)
  {
    if (!v115 || (v109 != v110 || v116 != v115) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v115)
  {
    return 0;
  }

  if (v112)
  {
    if (!v111 || (v105 != v106 || v112 != v111) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v111)
  {
    return 0;
  }

  if (v108)
  {
    if (!v107 || (v104 != v103 || v108 != v107) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v107)
  {
    return 0;
  }

  if ((sub_24A38B37C(v102, v101) & 1) == 0)
  {
    return 0;
  }

  if (v100)
  {
    if (!v99 || (v96 != v95 || v100 != v99) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v99)
  {
    return 0;
  }

  if (v97)
  {
    if (!v98 || (v92 != v91 || v97 != v98) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v98)
  {
    return 0;
  }

  if (v94)
  {
    if (!v93 || (v88 != v87 || v94 != v93) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v93)
  {
    return 0;
  }

  if (v90)
  {
    if (!v89 || (v85 != v83 || v90 != v89) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v89)
  {
    return 0;
  }

  if (v86)
  {
    if (!v84 || (v81 != v79 || v86 != v84) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v84)
  {
    return 0;
  }

  if (v82)
  {
    if (!v80 || (v77 != v75 || v82 != v80) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v80)
  {
    return 0;
  }

  if (!v78)
  {
    if (!v76)
    {
      goto LABEL_124;
    }

    return 0;
  }

  if (!v76 || (v73 != v72 || v78 != v76) && (sub_24A4AC270() & 1) == 0)
  {
    return 0;
  }

LABEL_124:
  result = v74 == 0;
  if (v74 && *(&v74 + 1))
  {
    if (v71 == v70 && v74 == *(&v74 + 1))
    {
      return 1;
    }

    else
    {

      return sub_24A4AC270();
    }
  }

  return result;
}

uint64_t sub_24A4A245C()
{
  v0 = sub_24A4AC290();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

char *_s7FMFCore10FMFAddressV21formattedAddressLines3forSaySSGSgSo08CNPostalD0C_tFZ_0(uint64_t a1)
{
  v25 = sub_24A4AA7F0();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() stringFromPostalAddress:a1 style:0];
  v7 = sub_24A4AB850();
  v9 = v8;

  v28 = v7;
  v29 = v9;
  v26 = 10;
  v27 = 0xE100000000000000;
  sub_24A3A1434();
  v10 = sub_24A4ABE10();

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v2 + 8);
    v24 = v10;
    v13 = (v10 + 40);
    v14 = MEMORY[0x277D84F90];
    do
    {
      v15 = *v13;
      v28 = *(v13 - 1);
      v29 = v15;

      sub_24A4AA7A0();
      v16 = sub_24A4ABE30();
      v18 = v17;
      (*v12)(v5, v25);

      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_24A3ED900(0, *(v14 + 2) + 1, 1, v14);
        }

        v21 = *(v14 + 2);
        v20 = *(v14 + 3);
        if (v21 >= v20 >> 1)
        {
          v14 = sub_24A3ED900((v20 > 1), v21 + 1, 1, v14);
        }

        *(v14 + 2) = v21 + 1;
        v22 = &v14[16 * v21];
        *(v22 + 4) = v16;
        *(v22 + 5) = v18;
      }

      else
      {
      }

      v13 += 2;
      --v11;
    }

    while (v11);
  }

  else
  {

    return 0;
  }

  return v14;
}

unint64_t sub_24A4A2718()
{
  result = qword_27EF40498;
  if (!qword_27EF40498)
  {
    sub_24A3CBC9C(&qword_27EF3F108, &qword_24A4B4950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40498);
  }

  return result;
}

unint64_t sub_24A4A2780()
{
  result = qword_27EF40D80;
  if (!qword_27EF40D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40D80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFAddress.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24A4A2888()
{
  result = qword_27EF40D88;
  if (!qword_27EF40D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40D88);
  }

  return result;
}

unint64_t sub_24A4A28E0()
{
  result = qword_27EF40D90;
  if (!qword_27EF40D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40D90);
  }

  return result;
}

unint64_t sub_24A4A2938()
{
  result = qword_27EF40D98;
  if (!qword_27EF40D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40D98);
  }

  return result;
}

uint64_t type metadata accessor for FMFRemoveFriendRequest()
{
  result = qword_27EF40DA0;
  if (!qword_27EF40DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A4A2A24()
{
  v1 = *(v0 + qword_27EF4E348);
  v2 = *(v0 + qword_27EF4E348 + 8);
  v4[3] = MEMORY[0x277D837D0];
  v4[0] = v1;
  v4[1] = v2;
  swift_beginAccess();

  sub_24A3A6CEC(v4, 25705, 0xE200000000000000);
  return swift_endAccess();
}

uint64_t sub_24A4A2AC8()
{
  v0 = sub_24A4AAC20();
  v1 = *(v0 + qword_27EF3FC00);

  v2 = *(v0 + qword_27EF3FC08);

  v3 = *(v0 + qword_27EF3FC10);

  v4 = *(v0 + qword_27EF3FC18);

  v5 = *(v0 + qword_27EF3FC20);

  v6 = qword_27EF4E0D8;
  v7 = sub_24A4AAAD0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + qword_27EF4E348 + 8);

  return v0;
}

uint64_t sub_24A4A2BAC()
{
  v0 = *sub_24A4A2AC8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A4A2C14()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4A2D1C()
{
  *v0;
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A4A2E10()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4A2F14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A4A3214();
  *a2 = result;
  return result;
}

void sub_24A4A2F44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472656C61;
  v5 = 0xEB00000000747865;
  v6 = 0x746E6F4361746164;
  v7 = 0xEB00000000737574;
  v8 = 0x6174536863746566;
  if (v2 != 3)
  {
    v8 = 0x52646E616D6D6F63;
    v7 = 0xEF65736E6F707365;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F43726576726573;
    v3 = 0xED0000747865746ELL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_24A4A3008@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A4A3214();
  *a1 = result;
  return result;
}

uint64_t sub_24A4A303C(uint64_t a1)
{
  v2 = sub_24A3B98AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A4A3078(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_24A3B7448(a1);
  return v5;
}

uint64_t sub_24A4A30C8()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_24A3D02B0(v0 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse);
  v3 = *(v0 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_alert);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_24A4A3168()
{
  result = qword_27EF40DE8;
  if (!qword_27EF40DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40DE8);
  }

  return result;
}

unint64_t sub_24A4A31C0()
{
  result = qword_27EF40DF0;
  if (!qword_27EF40DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40DF0);
  }

  return result;
}

uint64_t sub_24A4A3214()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for FMFUpdateLocationAlertRequest()
{
  result = qword_27EF40E08;
  if (!qword_27EF40E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A4A32AC()
{
  result = type metadata accessor for FMFLocationAlert();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A4A3344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24A3C9CEC(&qword_27EF3FF48, &qword_24A4BD240);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for LiveRelabilityStats(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_24A37EF2C(a1, &qword_27EF3FF48, &qword_24A4BD240);
    sub_24A4A423C(a2, a3, v10);

    return sub_24A37EF2C(v10, &qword_27EF3FF48, &qword_24A4BD240);
  }

  else
  {
    sub_24A3998A4(a1, v15, type metadata accessor for LiveRelabilityStats);
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_24A430600(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v21;
  }

  return result;
}

uint64_t sub_24A4A3518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24A3C9CEC(&qword_27EF3FF50, &qword_24A4BD250);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for ShallowRelabilityStats(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_24A37EF2C(a1, &qword_27EF3FF50, &qword_24A4BD250);
    sub_24A4A43F4(a2, a3, v10);

    return sub_24A37EF2C(v10, &qword_27EF3FF50, &qword_24A4BD250);
  }

  else
  {
    sub_24A3998A4(a1, v15, type metadata accessor for ShallowRelabilityStats);
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_24A43076C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v21;
  }

  return result;
}

uint64_t sub_24A4A36EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24A3C9CEC(&qword_27EF404F0, qword_24A4BA768);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_24A37EF2C(a1, &qword_27EF404F0, qword_24A4BA768);
    sub_24A4A45AC(a2, a3, v10);

    return sub_24A37EF2C(v10, &qword_27EF404F0, qword_24A4BA768);
  }

  else
  {
    sub_24A4A9AE0(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_24A430918(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_24A4A3904(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a5, uint64_t *a6)
{
  v7 = v6;
  if (a1)
  {
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v24;
  }

  else
  {
    v17 = *v6;
    v18 = sub_24A39B2C8(a2, a3);
    LOBYTE(v17) = v19;

    if (v17)
    {
      v20 = *v7;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v7;
      v25 = *v7;
      if (!v21)
      {
        sub_24A4A96B8(a5, a6);
        v22 = v25;
      }

      v23 = *(*(v22 + 48) + 16 * v18 + 8);

      result = sub_24A4A7BD4(v18, v22);
      *v7 = v22;
    }
  }

  return result;
}

unint64_t sub_24A4A3A1C(uint64_t a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_24A430F00(a1, a2 & 1, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    v9 = *v2;
    result = sub_24A43014C(a2 & 1);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_24A4A9814();
        v14 = v16;
      }

      result = sub_24A4A7D84(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_24A4A3ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_24A431020(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_24A39B2C8(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_24A4A9970();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_24A4A7BD4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void sub_24A4A3BD4()
{
  v1 = v0;
  v52 = *MEMORY[0x277D85DE8];
  v2 = sub_24A4AA790();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_24A4AA780();
  type metadata accessor for FMFLocationAlert();
  sub_24A4A7F18();
  v5 = sub_24A4AA770();
  v7 = v6;

  v8 = objc_opt_self();
  v9 = sub_24A4AAA00();
  *&v48[0] = 0;
  v10 = [v8 JSONObjectWithData:v9 options:0 error:v48];

  v11 = *&v48[0];
  if (v10)
  {
    sub_24A4ABE70();
    swift_unknownObjectRelease();
    sub_24A3A60B4(&v49, v51);
    sub_24A37EE84(v51, &v49);
    sub_24A3C9CEC(&qword_27EF3F800, &unk_24A4B6530);
    if (swift_dynamicCast())
    {
      v44 = v5;
      v45 = v7;
      v12 = *&v48[0] + 64;
      v13 = 1 << *(*&v48[0] + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(*&v48[0] + 64);
      v16 = (v13 + 63) >> 6;
      v47 = *&v48[0];

      v17 = 0;
      v46 = v1;
LABEL_8:
      if (v15)
      {
        goto LABEL_13;
      }

      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
        }

        if (v19 >= v16)
        {
          break;
        }

        v15 = *(v12 + 8 * v19);
        ++v17;
        if (v15)
        {
          v17 = v19;
LABEL_13:
          v20 = __clz(__rbit64(v15)) | (v17 << 6);
          v21 = (*(v47 + 48) + 16 * v20);
          v23 = *v21;
          v22 = v21[1];
          sub_24A37EE84(*(v47 + 56) + 32 * v20, v50);
          *&v49 = v23;
          *(&v49 + 1) = v22;
          v24 = qword_27EF3FC00;
          swift_beginAccess();
          sub_24A37EE84(v50, v48);
          swift_bridgeObjectRetain_n();
          v25 = *(v1 + v24);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v27 = *(v1 + v24);
          *(v1 + v24) = 0x8000000000000000;
          v28 = sub_24A39B2C8(v23, v22);
          v30 = v27[2];
          v31 = (v29 & 1) == 0;
          v32 = __OFADD__(v30, v31);
          v33 = v30 + v31;
          if (v32)
          {
            goto LABEL_28;
          }

          v34 = v29;
          if (v27[3] >= v33)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_18;
            }

            v40 = v28;
            sub_24A3A8430();
            v28 = v40;
            v36 = v27;
            if (v34)
            {
              goto LABEL_6;
            }

LABEL_19:
            v36[(v28 >> 6) + 8] |= 1 << v28;
            v37 = (v36[6] + 16 * v28);
            *v37 = v23;
            v37[1] = v22;
            sub_24A3A60B4(v48, (v36[7] + 32 * v28));
            v38 = v36[2];
            v32 = __OFADD__(v38, 1);
            v39 = v38 + 1;
            if (!v32)
            {
              v36[2] = v39;
              goto LABEL_7;
            }

            goto LABEL_29;
          }

          sub_24A3A6214(v33, isUniquelyReferenced_nonNull_native);
          v28 = sub_24A39B2C8(v23, v22);
          if ((v34 & 1) != (v35 & 1))
          {
            sub_24A4AC2B0();
            __break(1u);
            return;
          }

LABEL_18:
          v36 = v27;
          if ((v34 & 1) == 0)
          {
            goto LABEL_19;
          }

LABEL_6:
          v18 = (v36[7] + 32 * v28);
          sub_24A37EEE0(v18);
          sub_24A3A60B4(v48, v18);

LABEL_7:
          v15 &= v15 - 1;
          v1 = v46;
          *(v46 + v24) = v36;
          swift_endAccess();
          sub_24A37EF2C(&v49, &qword_27EF40E18, &qword_24A4BD1D0);
          goto LABEL_8;
        }
      }

      sub_24A386E10(v44, v45);

      sub_24A37EEE0(v51);
    }

    else
    {
      sub_24A37EEE0(v51);
      sub_24A386E10(v5, v7);
    }
  }

  else
  {
    v41 = v11;
    v42 = sub_24A4AA950();

    swift_willThrow();
    sub_24A386E10(v5, v7);
  }

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A4A4074()
{
  v0 = sub_24A4AAC20();
  v1 = *(v0 + qword_27EF3FC00);

  v2 = *(v0 + qword_27EF3FC08);

  v3 = *(v0 + qword_27EF3FC10);

  v4 = *(v0 + qword_27EF3FC18);

  v5 = *(v0 + qword_27EF3FC20);

  v6 = qword_27EF4E0D8;
  v7 = sub_24A4AAAD0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_24A3DEA30(v0 + qword_27EF4E378);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

double sub_24A4A4198@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_24A39B2C8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A3A8430();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_24A3A60B4((*(v12 + 56) + 32 * v9), a3);
    sub_24A4A6EC8(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_24A4A423C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_24A39B2C8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A4A8860(type metadata accessor for LiveRelabilityStats, &qword_27EF40E68, &qword_24A4BD248, type metadata accessor for LiveRelabilityStats);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for LiveRelabilityStats(0);
    v22 = *(v15 - 8);
    sub_24A3998A4(v14 + *(v22 + 72) * v9, a3, type metadata accessor for LiveRelabilityStats);
    sub_24A4A7468(v9, v12, type metadata accessor for LiveRelabilityStats);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for LiveRelabilityStats(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_24A4A43F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_24A39B2C8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A4A8860(type metadata accessor for ShallowRelabilityStats, &qword_27EF40E70, &unk_24A4BD258, type metadata accessor for ShallowRelabilityStats);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for ShallowRelabilityStats(0);
    v22 = *(v15 - 8);
    sub_24A3998A4(v14 + *(v22 + 72) * v9, a3, type metadata accessor for ShallowRelabilityStats);
    sub_24A4A7468(v9, v12, type metadata accessor for ShallowRelabilityStats);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ShallowRelabilityStats(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_24A4A45AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_24A39B2C8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A4A8AC8();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
    v22 = *(v15 - 8);
    sub_24A4A9AE0(v14 + *(v22 + 72) * v9, a3);
    sub_24A4A7234(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_24A4A471C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_24A39B2C8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A4A8860(type metadata accessor for FMFFriend, &qword_27EF40E20, &unk_24A4BD1D8, type metadata accessor for FMFFriend);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for FMFFriend();
    v22 = *(v15 - 8);
    sub_24A3998A4(v14 + *(v22 + 72) * v9, a3, type metadata accessor for FMFFriend);
    sub_24A4A7468(v9, v12, type metadata accessor for FMFFriend);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for FMFFriend();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_24A4A48D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40390, &unk_24A4BA170);
  v38 = a2;
  result = sub_24A4AC080();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24A4A4B88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40E60, &qword_24A4BD238);
  v39 = a2;
  result = sub_24A4AC080();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = *(v5 + 56) + 32 * v22;
      v26 = *(v25 + 8);
      v43 = *v25;
      v44 = *v23;
      v27 = *(v25 + 16);
      v41 = *(v25 + 25);
      v42 = *(v25 + 24);
      v40 = *(v25 + 26);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v44;
      v17[1] = v24;
      v18 = *(v8 + 56) + 32 * v16;
      *v18 = v43;
      *(v18 + 8) = v26;
      *(v18 + 16) = v27;
      *(v18 + 24) = v42;
      *(v18 + 25) = v41;
      *(v18 + 26) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24A4A4F0C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40E78, &qword_24A4BD268);
  v44 = a2;
  result = sub_24A4AC080();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_24A4A9AE0(v31, v45);
      }

      else
      {
        sub_24A4A9B50(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_24A4A9AE0(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_24A4A5264(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40E28, &qword_24A4BD1E8);
  v40 = a2;
  result = sub_24A4AC080();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = *(v5 + 56) + 56 * v22;
      v26 = *(v25 + 8);
      v45 = *v25;
      v46 = *v23;
      v27 = *(v25 + 24);
      v44 = *(v25 + 16);
      v43 = *(v25 + 32);
      v28 = *(v25 + 48);
      v42 = *(v25 + 40);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v46;
      v17[1] = v24;
      v18 = *(v8 + 56) + 56 * v16;
      *v18 = v45;
      *(v18 + 8) = v26;
      *(v18 + 16) = v44;
      *(v18 + 24) = v27;
      *(v18 + 32) = v43;
      v13 = v41;
      *(v18 + 40) = v42;
      *(v18 + 48) = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24A4A5570(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A3C9CEC(&qword_27EF403D0, &qword_24A4BA1A0);
  v38 = a2;
  result = sub_24A4AC080();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v25;
      }

      v27 = *(v8 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24A4A5814(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40E88, qword_24A4BD278);
  v38 = a2;
  result = sub_24A4AC080();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24A4A5B04(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_24A3C9CEC(a3, a4);
  v41 = a2;
  result = sub_24A4AC080();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v24 = v21 | (v11 << 6);
      v25 = (*(v7 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v7 + 56) + 24 * v24;
      v29 = *(v28 + 8);
      v43 = *v28;
      v42 = *(v28 + 16);
      if ((v41 & 1) == 0)
      {
      }

      v30 = *(v10 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      v20 = *(v10 + 56) + 24 * v18;
      *v20 = v43;
      *(v20 + 8) = v29;
      *(v20 + 16) = v42;
      ++*(v10 + 16);
      v7 = v40;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_24A4A5DCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40E58, &qword_24A4BD218);
  v39 = a2;
  result = sub_24A4AC080();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 24 * v22;
      v27 = *(v26 + 8);
      v41 = *v26;
      v40 = *(v26 + 16);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v41;
      *(v18 + 8) = v27;
      *(v18 + 16) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24A4A609C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40398, &unk_24A4BD220);
  result = sub_24A4AC080();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_19:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 32 * v23);
      if (a2)
      {
        sub_24A3A60B4(v25, v33);
      }

      else
      {
        sub_24A37EE84(v25, v33);
      }

      v26 = *(v8 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();

      result = sub_24A4AC3A0();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_11;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      result = sub_24A3A60B4(v33, (*(v8 + 56) + 32 * v19));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_19;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_24A4A6548(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_24A3C9CEC(a3, a4);
  v41 = a2;
  result = sub_24A4AC080();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_24A4A67E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40E40, &qword_24A4BD200);
  v34 = a2;
  result = sub_24A4AC080();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_24A4AC360();
      MEMORY[0x24C218780](v21);
      result = sub_24A4AC3A0();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24A4A6A70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40E48, &qword_24A4BD208);
  v38 = a2;
  result = sub_24A4AC080();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24A4A6D18(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A4ABEB0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24A4AC360();

      sub_24A4AB8F0();
      v13 = sub_24A4AC3A0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A4A6EC8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A4ABEB0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_24A4AC360();

      sub_24A4AB8F0();
      v14 = sub_24A4AC3A0();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A4A7078(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A4ABEB0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_24A4AC360();

      sub_24A4AB8F0();
      v14 = sub_24A4AC3A0();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (32 * v3 != 32 * v6 || (v3 = v6, v20 >= v21 + 2))
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24A4A7234(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A4ABEB0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24A4AC360();

      sub_24A4AB8F0();
      v13 = sub_24A4AC3A0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24A4A7468(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_24A4ABEB0() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_24A4AC360();

      sub_24A4AB8F0();
      v15 = sub_24A4AC3A0();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A4A765C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A4ABEB0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_24A4AC360();

      sub_24A4AB8F0();
      v14 = sub_24A4AC3A0();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (24 * v3 < (24 * v6) || v20 >= v21 + 24 || v3 != v6)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A4A782C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A4ABEB0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      sub_24A4AC360();
      sub_24A4AB8F0();

      result = sub_24A4AC3A0();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A4A7BD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A4ABEB0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24A4AC360();

      sub_24A4AB8F0();
      v13 = sub_24A4AC3A0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A4A7D84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A4ABEB0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_24A4AC360();
      MEMORY[0x24C218780](v10);
      result = sub_24A4AC3A0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24A4A7F18()
{
  result = qword_27EF3FB50;
  if (!qword_27EF3FB50)
  {
    type metadata accessor for FMFLocationAlert();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB50);
  }

  return result;
}

unint64_t sub_24A4A7F70(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_24A4A7FC0(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_24A4A8008(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5;
  *(v9 + 16) = a6;
  *(v9 + 24) = a7 & 1;
  *(v9 + 25) = BYTE1(a7) & 1;
  *(v9 + 26) = BYTE2(a7) & 1;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_24A4A80C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  result = sub_24A4A9AE0(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_24A4A816C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 56 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = *(a4 + 48);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_24A4A81D0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_24A4A8244(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

_OWORD *sub_24A4A8298(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_24A3A60B4(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_24A4A8300(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_24A4A8348()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40578, &qword_24A4BD230);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24A4A84C0()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40390, &unk_24A4BA170);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24A4A863C()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40E60, &qword_24A4BD238);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 25);
        LOBYTE(v22) = *(v22 + 26);
        v28 = (*(v4 + 48) + v18);
        *v28 = v21;
        v28[1] = v20;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v25;
        *(v29 + 24) = v26;
        *(v29 + 25) = v27;
        *(v29 + 26) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24A4A8860(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v42 = a4;
  v7 = v4;
  v8 = a1(0);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v40 = &v39 - v10;
  sub_24A3C9CEC(a2, a3);
  v11 = *v4;
  v12 = sub_24A4AC070();
  v13 = v12;
  if (*(v11 + 16))
  {
    v39 = v7;
    result = (v12 + 64);
    v15 = v11 + 64;
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 64 + 8 * v16)
    {
      result = memmove(result, (v11 + 64), 8 * v16);
    }

    v18 = 0;
    v19 = *(v11 + 16);
    v43 = v13;
    *(v13 + 16) = v19;
    v20 = 1 << *(v11 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v11 + 64);
    v23 = (v20 + 63) >> 6;
    if (v22)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_17:
        v27 = v24 | (v18 << 6);
        v28 = 16 * v27;
        v29 = *(v11 + 56);
        v30 = (*(v11 + 48) + 16 * v27);
        v31 = v11;
        v32 = *v30;
        v33 = v30[1];
        v34 = v40;
        v35 = *(v41 + 72) * v27;
        v36 = v42;
        sub_24A399284(v29 + v35, v40, v42);
        v37 = v43;
        v38 = (*(v43 + 48) + v28);
        *v38 = v32;
        v38[1] = v33;
        v11 = v31;
        sub_24A3998A4(v34, *(v37 + 56) + v35, v36);

        v22 = v44;
      }

      while (v44);
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v39;
        v13 = v43;
        goto LABEL_21;
      }

      v26 = *(v15 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v44 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

void *sub_24A4A8AC8()
{
  v1 = v0;
  v2 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - v4;
  sub_24A3C9CEC(&qword_27EF40E78, &qword_24A4BD268);
  v5 = *v0;
  v6 = sub_24A4AC070();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_24A4A9B50(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_24A4A9AE0(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_24A4A8D14()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40E28, &qword_24A4BD1E8);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 56;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = *(v22 + 40);
        v29 = *(v22 + 48);
        v30 = (*(v4 + 48) + v18);
        *v30 = v21;
        v30[1] = v20;
        v31 = *(v4 + 56) + v17;
        *v31 = v23;
        *(v31 + 8) = v24;
        *(v31 + 16) = v25;
        *(v31 + 24) = v26;
        *(v31 + 32) = v27;
        *(v31 + 40) = v28;
        *(v31 + 48) = v29;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24A4A8EC4()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF403D0, &qword_24A4BA1A0);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        v23 = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24A4A9034()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40E88, qword_24A4BD278);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24A4A9228(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_24A3C9CEC(a1, a2);
  v4 = *v2;
  v5 = sub_24A4AC070();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v23 = *v21;
        v22 = v21[1];
        v19 *= 24;
        v24 = *(v4 + 56) + v19;
        v25 = *v24;
        v26 = *(v24 + 8);
        LOBYTE(v24) = *(v24 + 16);
        v27 = (*(v6 + 48) + v20);
        *v27 = v23;
        v27[1] = v22;
        v28 = *(v6 + 56) + v19;
        *v28 = v25;
        *(v28 + 8) = v26;
        *(v28 + 16) = v24;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_24A4A93A0()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40E58, &qword_24A4BD218);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        LOBYTE(v22) = *(v22 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = v21;
        v25[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v24;
        *(v26 + 16) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24A4A9528()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40398, &unk_24A4BD220);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        sub_24A37EE84(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_24A3A60B4(v19, (*(v4 + 56) + 32 * v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_24A4A96B8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_24A3C9CEC(a1, a2);
  v4 = *v2;
  v5 = sub_24A4AC070();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_24A4A9814()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40E40, &qword_24A4BD200);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24A4A9970()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40E48, &qword_24A4BD208);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_24A4A9AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A4A9B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMFRemoveFriendAction.__allocating_init(friend:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_24A423930(a1, v5 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend);
  *(v5 + 16) = 1;
  return v5;
}

uint64_t FMFRemoveFriendAction.init(friend:)(uint64_t a1)
{
  sub_24A423930(a1, v1 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend);
  *(v1 + 16) = 1;
  return v1;
}

uint64_t sub_24A4A9C4C()
{
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](0x3A646E6569726620, 0xE900000000000020);
  type metadata accessor for FMFFriend();
  sub_24A4AC030();
  return 0;
}

uint64_t FMFRemoveFriendAction.__deallocating_deinit()
{
  sub_24A3A16E4(v0 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFRemoveFriendAction()
{
  result = qword_27EF40E90;
  if (!qword_27EF40E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMFMyInfo.firstName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t FMFMyInfo.meDeviceId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t FMFMyInfo.deviceId.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_24A4A9F94()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4AA088()
{
  *v0;
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A4AA168()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4AA258@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A4AA664();
  *a2 = result;
  return result;
}

void sub_24A4AA288(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x736C69616D65;
  v5 = 0xEA00000000006449;
  v6 = 0x656369766544656DLL;
  v7 = 0xE800000000000000;
  v8 = 0x6449656369766564;
  if (v2 != 3)
  {
    v8 = 0x656C626967696C65;
    v7 = 0xEE00654D6F747541;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6D614E7473726966;
    v3 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_24A4AA338@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A4AA664();
  *a1 = result;
  return result;
}

uint64_t sub_24A4AA360(uint64_t a1)
{
  v2 = sub_24A3850E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A4AA39C(uint64_t a1)
{
  v2 = sub_24A3850E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFMyInfo.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);

  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  MEMORY[0x24C217D50](0x666E49794D464D46, 0xE90000000000006FLL);
  MEMORY[0x24C217D50](0x736C69616D65203ALL, 0xEA0000000000203ALL);
  v9 = MEMORY[0x24C217E90](v2, MEMORY[0x277D837D0]);
  MEMORY[0x24C217D50](v9);

  MEMORY[0x24C217D50](0x614E747372696620, 0xEC000000203A656DLL);
  MEMORY[0x24C217D50](v1, v3);
  MEMORY[0x24C217D50](0x6369766544656D20, 0xED0000203A644965);
  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  v10 = sub_24A4AB870();
  MEMORY[0x24C217D50](v10);

  MEMORY[0x24C217D50](0x4965636976656420, 0xEB00000000203A64);
  MEMORY[0x24C217D50](v5, v7);
  MEMORY[0x24C217D50](0xD000000000000011, 0x800000024A4B37A0);
  if (v8)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v8)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v11, v12);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_24A4AA610()
{
  result = qword_27EF40EB8;
  if (!qword_27EF40EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40EB8);
  }

  return result;
}

uint64_t sub_24A4AA664()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}