void sub_1C4C76978(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for ViewDatabaseArtifact.Property();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = 0;
  v84 = 0;
  sub_1C44E9220();
  if (!v6)
  {
    v79 = v13;
    v76 = a6;
    v77 = v17;
    v83 = 0;
    v84 = 0;
    sub_1C44E9220();
    v18 = 0;
    v20 = v19;
    v74 = a1;
    v75 = a2;
    v21 = *(v77 + 16);

    sub_1C4418704(sub_1C4C7D498, v20, v22, v23, v24, v25, v26, v27, v68, v69);

    v71 = v20;
    v72 = a3;
    v73 = a5;
    v28 = a3[3];
    v29 = a3[4];
    sub_1C4409678(a3, v28);
    (*(v29 + 16))(&v83, v28, v29);
    v30 = v85;
    v31 = v86;
    sub_1C4409678(&v83, v85);
    v32 = (*(v31 + 24))(v30, v31);
    v33 = v32[2];
    if (v33)
    {
      v70 = 0;
      v87 = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0();
      v34 = v87;
      v35 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v69 = v32;
      v36 = v32 + v35;
      v79 = *(v79 + 72);
      v80 = "INSERT INTO main.";
      do
      {
        sub_1C44312C0(v36, v16);
        v81 = 0;
        v82 = 0xE000000000000000;
        sub_1C4F02248();

        v81 = 0x6C6261547466656CLL;
        v82 = 0xEB00000000222E65;
        v37 = *v16;
        v38 = v16[1];
        MEMORY[0x1C6940010](*v16, v38);
        MEMORY[0x1C6940010](0xD000000000000011, v80 | 0x8000000000000000);
        MEMORY[0x1C6940010](v37, v38);
        MEMORY[0x1C6940010](34, 0xE100000000000000);
        v39 = v81;
        v40 = v82;
        sub_1C44543D8();
        v87 = v34;
        v41 = *(v34 + 16);
        if (v41 >= *(v34 + 24) >> 1)
        {
          sub_1C44CD9C0();
          v34 = v87;
        }

        *(v34 + 16) = v41 + 1;
        v42 = v34 + 16 * v41;
        *(v42 + 32) = v39;
        *(v42 + 40) = v40;
        v36 += v79;
        --v33;
      }

      while (v33);

      v18 = v70;
    }

    else
    {

      v34 = MEMORY[0x1E69E7CC0];
    }

    v43 = v77;
    sub_1C440962C(&v83);
    v83 = v34;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870);
    v44 = sub_1C4F01048();
    v46 = v45;

    v48 = *(v43 + 16);
    MEMORY[0x1EEE9AC00](v47);
    v49 = v78;
    v51 = v72;
    v50 = v73;
    *(&v68 - 8) = v78;
    *(&v68 - 7) = v51;
    *(&v68 - 6) = v76;
    *(&v68 - 5) = v50;
    *(&v68 - 4) = v44;
    *(&v68 - 3) = v46;
    v52 = v75;
    *(&v68 - 2) = v74;
    *(&v68 - 1) = v52;

    sub_1C4418704(sub_1C4C7D3BC, (&v68 - 10), v53, v54, v55, v56, v57, v58, v68, v69);
    if (v18)
    {

      sub_1C4C77544(v43, v71, sub_1C4C7D480);
    }

    else
    {

      v59 = v71;
      v60 = sub_1C4C77544(v43, v71, sub_1C4C7D480);
      v61 = *(v59 + 16);
      MEMORY[0x1EEE9AC00](v60);
      *(&v68 - 4) = v49;
      *(&v68 - 3) = v51;
      *(&v68 - 2) = v50;

      sub_1C4418704(sub_1C4C7D3EC, (&v68 - 6), v62, v63, v64, v65, v66, v67, v68, v69);
    }
  }
}

void sub_1C4C76EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  sub_1C43FE96C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = type metadata accessor for ViewDatabaseArtifact.Property();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  sub_1C43FBCC4();
  v39 = (v38 - v37);
  sub_1C44952B4();
  sub_1C44E9220();
  if (!v23)
  {
    v108 = v40;
    v109 = v35;
    v107 = v25;
    sub_1C44952B4();
    sub_1C4401F14();
    v42 = v41;
    v106 = v33;
    sub_1C4416B8C();
    sub_1C4418704(a21, v42, v43, v44, v45, v46, v47, v48, v99, v100);
    sub_1C441CEF4();

    v102 = v31;
    v104 = v29;
    v105 = v27;
    v49 = a22;
    v50 = v29[4];
    sub_1C4409678(v29, v29[3]);
    v51 = *(v50 + 16);
    v52 = sub_1C4408DF8();
    v53(v52);
    sub_1C440622C(v113);
    v55 = *(v54 + 24);
    v56 = sub_1C4408DF8();
    v58 = v57(v56);
    v59 = *(v58 + 16);
    v103 = v42;
    if (v59)
    {
      v100 = a22;
      v101 = 0;
      v114 = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0();
      v60 = v114;
      v61 = (*(v109 + 80) + 32) & ~*(v109 + 80);
      v99 = v58;
      v62 = v58 + v61;
      v109 = *(v109 + 72);
      v110 = "INSERT INTO main.";
      do
      {
        sub_1C44312C0(v62, v39);
        sub_1C4450858();
        sub_1C4F02248();

        sub_1C440F050();
        v111 = v63;
        v112 = 0xEB00000000222E65;
        v64 = *v39;
        v65 = v39[1];
        sub_1C44884A4();
        MEMORY[0x1C6940010](0xD000000000000011, v110 | 0x8000000000000000);
        sub_1C44884A4();
        sub_1C441DE98();
        v66 = v111;
        sub_1C43FE990();
        sub_1C44543D8();
        v67 = *(v114 + 16);
        if (v67 >= *(v114 + 24) >> 1)
        {
          sub_1C44CD9C0();
        }

        *(v114 + 16) = v67 + 1;
        v68 = v114 + 16 * v67;
        *(v68 + 32) = v66;
        *(v68 + 40) = 0xEB00000000222E65;
        v62 += v109;
        --v59;
      }

      while (v59);

      v49 = v100;
    }

    else
    {

      v60 = MEMORY[0x1E69E7CC0];
    }

    v69 = v108;
    sub_1C440962C(v113);
    v113[0] = v60;
    v70 = sub_1C43FD168();
    sub_1C456902C(v70, v71);
    sub_1C442E670(&qword_1EDDFCED0);
    v72 = sub_1C44347C0();
    v74 = v73;

    v76 = *(v108 + 16);
    MEMORY[0x1EEE9AC00](v75);
    v77 = v104;
    v78 = v105;
    v79 = v106;
    v80 = v107;
    *(&v99 - 7) = v104;
    *(&v99 - 6) = v80;
    *(&v99 - 5) = v78;
    *(&v99 - 4) = v72;
    *(&v99 - 3) = v74;
    *(&v99 - 2) = v79;
    *(&v99 - 1) = v102;

    sub_1C4414334(v49, v81, v82, v83, v84, v85, v86, v87, v99, v100);

    sub_1C440B6C0();
    if (&v99 == 80)
    {
      v89 = v103;
      v90 = sub_1C4C77544(v69, v103, v88);
      v91 = *(v89 + 16);
      MEMORY[0x1EEE9AC00](v90);
      *(&v99 - 3) = v77;
      *(&v99 - 2) = v78;

      sub_1C4414334(a23, v92, v93, v94, v95, v96, v97, v98, v99, v100);
      sub_1C441CEF4();
    }

    else
    {
      sub_1C4C77544(v69, v103, v88);
    }
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C4C77334()
{
  sub_1C43FE96C();
  v1 = v0;
  v2 = sub_1C4EFB768();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C4EF98F8();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  sub_1C4F02248();

  sub_1C43FBDF0();
  (*(v14 + 16))(v19, *(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v11);
  v20 = sub_1C4EF98D8();
  v22 = v21;
  (*(v14 + 8))(v19, v11);
  MEMORY[0x1C6940010](v20, v22);

  MEMORY[0x1C6940010](0x68746F2053412027, 0xEA00000000007265);
  sub_1C4EFB758();
  sub_1C447FA8C();
  sub_1C4EFBFF8();
  (*(v5 + 8))(v10, v2);

  sub_1C43FBC80();
}

uint64_t sub_1C4C77544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF98F8();
  v7 = sub_1C43FCDF8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = *(a1 + 16);
  sub_1C4418704(a3, 0, v11, v12, v13, v14, v15, v16, v20, v21);
  type metadata accessor for ErrorHandlingDatabasePool(0);
  sub_1C46BC6FC();
  sub_1C4EFB2E8();
  v17 = *(*(a2 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C4EFAEB8();
  v18 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  return sub_1C4EFAEB8();
}

uint64_t sub_1C4C777CC(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v12 = sub_1C4EFB768();
  v13 = sub_1C43FCDF8(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  sub_1C441598C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C44238A8();
  v18 = a2[4];
  sub_1C4409678(a2, a2[3]);
  v19 = sub_1C44342A0();
  v20(v19);
  v21 = sub_1C442D760(v154);
  v22(v21);
  sub_1C4422BF4();
  if (v8)
  {

    return sub_1C440962C(v154);
  }

  sub_1C4414730(v23, &v160);
  sub_1C440962C(v154);
  if (*(a3 + 80) == 1)
  {

    sub_1C448F228();
  }

  else
  {
    v25 = sub_1C4435540();

    sub_1C448F228();
    if ((v25 & 1) == 0)
    {
      sub_1C4459C2C();
      sub_1C4436700();
      sub_1C44302FC();

      sub_1C44A1890();
      sub_1C43FFB2C();
      sub_1C447E370();
      return sub_1C443E418(v45, v46);
    }
  }

  v26 = v10[5];
  sub_1C4409678(v10, v10[3]);
  v27 = sub_1C4416500();
  sub_1C4C6EE08(v27, v28, v29, v30, v31, v32, v33);
  v35 = v34;
  if (!v34)
  {
    sub_1C4459C2C();
    sub_1C4436700();
    sub_1C44302FC();

    sub_1C44A1890();
    sub_1C43FFB2C();
    v46 = 0xD000000000000048;
    return sub_1C443E418(v45, v46);
  }

  sub_1C4450858();
  sub_1C4F02248();
  v150 = v154[0];
  v151 = v154[1];
  sub_1C44608EC();
  v36 = v10[4];
  sub_1C4409678(v10, v10[3]);
  v37 = *(v36 + 16);
  v38 = sub_1C4432D50();
  v39(v38);
  v40 = sub_1C442D760(v154);
  v42 = v41(v40);
  v44 = v43;
  MEMORY[0x1C6940010](v42);

  sub_1C440962C(v154);
  sub_1C447CC68();
  sub_1C442A514(v158);
  sub_1C4433E8C();
  v141 = v35;

  v47 = sub_1C44BBEF8();
  v44(v47, v12);
  sub_1C4420C3C(v154, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C441B560();
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v48 = sub_1C4F00978();
  sub_1C442B738(v48, qword_1EDE2DF70);
  sub_1C44018A8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v49 = sub_1C4F00968();
  v50 = sub_1C4F01CF8();

  v140 = v49;
  os_log_type_enabled(v49, v50);
  v51 = MEMORY[0x1E69E7CA0];
  sub_1C44180E8();
  if (v52)
  {
    sub_1C440F274();
    v149 = sub_1C44400AC();
    sub_1C440CDD0(4.8151e-34);
    v53 = sub_1C441506C();
    v55 = sub_1C441D828(v53, a8, v54);
    sub_1C4420794(v55);
    v56 = sub_1C4432D50();
    v57(v56);
    v58 = sub_1C442D760(&v147);
    v60 = v59(v58);
    sub_1C4413B34(v60, v61);
    sub_1C43FEF2C();

    *(v10 + 14) = v51;
    sub_1C44149D4(v158);
    sub_1C442F750(v62, v63, v64, v65);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440DAC8();
  }

  else
  {

    sub_1C440962C(&v150);
  }

  sub_1C445C004(&v161);
  v66 = v141;
  v138 = v67;
  v68 = sub_1C442F434();
  v69 = a5;
  sub_1C4C7A0AC(v68, v70, v71, v72, v73, v74, v75, a5, v138, v141);
  sub_1C44018A8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v76 = sub_1C4F00968();
  v77 = sub_1C4F01CF8();

  if (os_log_type_enabled(v76, v77))
  {
    sub_1C440F274();
    v149 = sub_1C44400AC();
    sub_1C440CDD0(4.8151e-34);
    v78 = sub_1C441506C();
    v80 = sub_1C441D828(v78, a8, v79);
    sub_1C4420794(v80);
    v81 = sub_1C4432D50();
    v82(v81);
    v83 = sub_1C442D760(&v147);
    v69 = a5;
    v85 = v84(v83);
    sub_1C4413B34(v85, v86);
    sub_1C43FEF2C();

    *(v10 + 14) = v77;
    v66 = v141;
    sub_1C442F750(&dword_1C43F8000, v76, v77, "PromoteTables: Diffing other to main for %s (%s");
    sub_1C445CD08(v155);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440DAC8();
  }

  else
  {

    sub_1C440962C(&v150);
  }

  v87 = sub_1C442C090(&v161);
  sub_1C4C7A0AC(v87, v88, v89, v90, v91, a4, v92, v69, v139, v66);
  sub_1C440962C(v154);
  sub_1C44018A8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v93 = sub_1C4F00968();
  v94 = sub_1C4F01CF8();

  if (os_log_type_enabled(v93, v94))
  {
    sub_1C440F274();
    v149 = sub_1C44400AC();
    sub_1C440CDD0(4.8151e-34);
    v96 = sub_1C441D828(a7, a8, v95);
    sub_1C4420794(v96);
    v97 = sub_1C4432D50();
    v98(v97);
    v99 = sub_1C442D760(&v147);
    v101 = v100(v99);
    sub_1C4413B34(v101, v102);
    sub_1C43FEF2C();

    *(v10 + 14) = v94;
    sub_1C442F750(&dword_1C43F8000, v93, v94, "PromoteTables: Deleting and copying values for %s (%s)");
    sub_1C445CD08(&v161);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440DAC8();
  }

  else
  {

    sub_1C440962C(&v150);
  }

  sub_1C445C228();

  sub_1C43FBDF0();
  v147 = 0xD000000000000012;
  v148 = v103;
  v104 = v10;
  v105 = v10[3];
  v106 = v10[4];
  sub_1C4409678(v104, v105);
  v107 = *(v106 + 16);
  v108 = sub_1C43FEF2C();
  v109(v108, v106);
  v110 = v153;
  sub_1C441B09C();
  v111 = sub_1C43FE0D0(v110);
  v113 = v112(v111, v110);
  MEMORY[0x1C6940010](v113);

  sub_1C441D444();
  v114 = v147;
  sub_1C442A514(v157);
  sub_1C445EA5C();
  sub_1C441C5C4(v159);
  (v93)();

  v150 = 0;
  v151 = v114;
  sub_1C4F02248();

  sub_1C43FBDF0();
  v147 = v9;
  v148 = v115;
  v116 = sub_1C4403A4C();
  v117(v116);
  v118 = v152;
  v119 = v153;
  sub_1C4409678(&v150, v152);
  sub_1C442619C(v119);
  v121 = v120(v118, v119);
  MEMORY[0x1C6940010](v121);

  sub_1C440962C(&v150);
  MEMORY[0x1C6940010](0xD000000000000017, 0x80000001C4FBDEF0);
  v122 = sub_1C4403A4C();
  v123(v122);
  v124 = v153;
  sub_1C441B09C();
  v125 = sub_1C43FE0D0(v124);
  v127 = v126(v125, v124);
  MEMORY[0x1C6940010](v127);

  sub_1C441D444();
  sub_1C442A514(&v156);
  sub_1C43FD168();
  sub_1C445EA5C();
  sub_1C4425534(v159);
  (v93)();

  sub_1C44149D4(&v160);
  sub_1C4C75EF8();

  *(v66 + 104) = 1;
  sub_1C441B0B4();
  sub_1C4B8BB5C();
  v130 = sub_1C44F95AC(v128, v129);
  sub_1C4CCDA9C(v130, v131);
  v132 = sub_1C4404BB0();
  sub_1C4434000(v132, v133);
  sub_1C44168CC();
  if (!v137)
  {
    v135 = v136;
  }

  if (v135 < v134)
  {
    sub_1C441B0B4();
    sub_1C4B8B8EC();
  }
}

uint64_t sub_1C4C78334(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v13 = sub_1C4EFB768();
  v14 = sub_1C43FCDF8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  sub_1C441598C();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C44238A8();
  v19 = a3[4];
  sub_1C4409678(a3, a3[3]);
  v20 = sub_1C44342A0();
  v21(v20);
  v22 = sub_1C442D760(v151);
  v23(v22);
  sub_1C4422BF4();
  if (v9)
  {

    return sub_1C440962C(v151);
  }

  sub_1C4414730(v24, &v157);
  sub_1C440962C(v151);
  if (*(a4 + 80) == 1)
  {

    sub_1C448F228();
  }

  else
  {
    v26 = sub_1C4435540();

    sub_1C448F228();
    if ((v26 & 1) == 0)
    {
      sub_1C4436700();
      sub_1C44302FC();

      sub_1C441506C();

      sub_1C44A1890();
      sub_1C43FFB2C();
      sub_1C447E370();
      return sub_1C443E418(v46, v47);
    }
  }

  v27 = v11[5];
  sub_1C4409678(v11, v11[3]);
  v28 = sub_1C4416500();
  sub_1C4C6EE08(v28, v29, v30, v31, v32, v33, v34);
  v36 = v35;
  if (!v35)
  {
    sub_1C4436700();
    sub_1C44302FC();

    sub_1C441506C();

    sub_1C44A1890();
    sub_1C43FFB2C();
    v47 = 0xD000000000000048;
    return sub_1C443E418(v46, v47);
  }

  sub_1C4450858();
  sub_1C4F02248();
  v147 = v151[0];
  v148 = v151[1];
  sub_1C44608EC();
  v37 = v11[4];
  sub_1C4409678(v11, v11[3]);
  v38 = *(v37 + 16);
  v39 = sub_1C4432D50();
  v40(v39);
  v41 = sub_1C442D760(v151);
  v43 = v42(v41);
  v45 = v44;
  MEMORY[0x1C6940010](v43);

  sub_1C440962C(v151);
  sub_1C447CC68();
  sub_1C442A514(v154);
  sub_1C4433E8C();

  v48 = sub_1C44BBEF8();
  v45(v48, v13);
  sub_1C4420C3C(v151, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C441B560();
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v49 = sub_1C4F00978();
  sub_1C442B738(v49, qword_1EDE2DF70);
  sub_1C44018A8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v50 = sub_1C4F00968();
  v51 = sub_1C4F01CF8();

  v139 = v50;
  os_log_type_enabled(v50, v51);
  v52 = MEMORY[0x1E69E7CA0];
  sub_1C44180E8();
  if (v53)
  {
    sub_1C440F274();
    v146 = sub_1C44400AC();
    sub_1C440CDD0(4.8151e-34);
    v55 = sub_1C441D828(a8, a9, v54);
    sub_1C4420794(v55);
    v56 = sub_1C4432D50();
    v57(v56);
    v58 = sub_1C442D760(&v144);
    v60 = v59(v58);
    sub_1C4413B34(v60, v61);
    sub_1C43FEF2C();

    *(v11 + 14) = v52;
    sub_1C44149D4(&v156);
    sub_1C442F750(v62, v63, v64, v65);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440DAC8();
  }

  else
  {

    sub_1C440962C(&v147);
  }

  v66 = a5;
  sub_1C445C004(&v158);
  v137 = v67;
  v68 = sub_1C442F434();
  v69 = a6;
  sub_1C4C7A0AC(v68, v70, v71, v72, v73, a5, v74, a6, v137, v36);
  sub_1C44018A8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v75 = sub_1C4F00968();
  v76 = sub_1C4F01CF8();

  if (os_log_type_enabled(v75, v76))
  {
    sub_1C440F274();
    v146 = sub_1C44400AC();
    sub_1C440CDD0(4.8151e-34);
    v78 = sub_1C441D828(a8, a9, v77);
    sub_1C4420794(v78);
    v79 = sub_1C4432D50();
    v80(v79);
    v81 = sub_1C442D760(&v144);
    v66 = a5;
    v83 = v82(v81);
    sub_1C4413B34(v83, v84);
    sub_1C43FEF2C();
    v69 = a6;

    *(v11 + 14) = v75;
    sub_1C442F750(&dword_1C43F8000, v75, v76, "PromoteTables: Diffing other to main for %s (%s");
    sub_1C445CD08(&v156);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440DAC8();
  }

  else
  {

    sub_1C440962C(&v147);
  }

  v85 = sub_1C442C090(&v158);
  sub_1C4C7A0AC(v85, v86, v87, v88, v89, v66, v90, v69, v138, v36);
  sub_1C440962C(v151);
  sub_1C44018A8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v91 = sub_1C4F00968();
  v92 = sub_1C4F01CF8();

  if (os_log_type_enabled(v91, v92))
  {
    sub_1C440F274();
    v146 = sub_1C44400AC();
    sub_1C440CDD0(4.8151e-34);
    v93 = sub_1C43FE990();
    v96 = sub_1C441D828(v93, v94, v95);
    sub_1C4420794(v96);
    v97 = sub_1C4432D50();
    v98(v97);
    v99 = sub_1C442D760(&v144);
    v101 = v100(v99);
    sub_1C4413B34(v101, v102);
    sub_1C43FEF2C();

    *(v11 + 14) = v92;
    sub_1C442F750(&dword_1C43F8000, v91, v92, "PromoteTables: Deleting and copying values for %s (%s)");
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440DAC8();
  }

  else
  {

    sub_1C440962C(&v147);
  }

  sub_1C445C228();

  sub_1C43FBDF0();
  v144 = 0xD000000000000012;
  v145 = v103;
  v104 = v11;
  v105 = v11[3];
  v106 = v11[4];
  sub_1C4409678(v104, v105);
  v107 = *(v106 + 16);
  v108 = sub_1C43FEF2C();
  v109(v108, v106);
  v110 = v150;
  sub_1C441B09C();
  v111 = sub_1C43FE0D0(v110);
  v113 = v112(v111, v110);
  MEMORY[0x1C6940010](v113);

  sub_1C441D444();
  sub_1C442A514(v153);
  sub_1C4EFBFF8();
  sub_1C441C5C4(&v155);
  (v91)();

  v147 = 0;
  v148 = v10;
  sub_1C4F02248();

  sub_1C43FBDF0();
  v144 = v10;
  v145 = v114;
  v115 = sub_1C4403A4C();
  v116(v115);
  v117 = v149;
  v118 = v150;
  sub_1C4409678(&v147, v149);
  sub_1C442619C(v118);
  v120 = v119(v117, v118);
  MEMORY[0x1C6940010](v120);

  sub_1C440962C(&v147);
  MEMORY[0x1C6940010](0xD000000000000017, 0x80000001C4FBDEF0);
  v121 = sub_1C4403A4C();
  v122(v121);
  v123 = v150;
  sub_1C441B09C();
  v124 = sub_1C43FE0D0(v123);
  v126 = v125(v124, v123);
  MEMORY[0x1C6940010](v126);

  sub_1C441D444();
  sub_1C442A514(v152);
  sub_1C43FD168();
  sub_1C445EA5C();
  sub_1C4425534(&v155);
  (v91)();

  sub_1C44149D4(&v157);
  sub_1C4C75EF8();

  *(v36 + 104) = 1;
  sub_1C441B0B4();
  sub_1C4B8BB5C();
  v129 = sub_1C44F95AC(v127, v128);
  sub_1C4CCDA9C(v129, v130);
  v131 = sub_1C4404BB0();
  sub_1C4434000(v131, v132);
  sub_1C44168CC();
  if (!v136)
  {
    v134 = v135;
  }

  if (v134 < v133)
  {
    sub_1C441B0B4();
    sub_1C4B8B8EC();
  }
}

uint64_t sub_1C4C78F00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v147 = a8;
  v146 = a7;
  v145 = a6;
  v144 = a5;
  v150 = a4;
  v148 = sub_1C4EFB768();
  v149 = *(v148 - 8);
  v11 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v143 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v130 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v130 - v17;
  v20 = a3[3];
  v19 = a3[4];
  sub_1C4409678(a3, v20);
  (*(v19 + 16))(&v160, v20, v19);
  v21 = *(&v161 + 1);
  v22 = v162;
  sub_1C4409678(&v160, *(&v161 + 1));
  v23 = (*(v22 + 8))(v21, v22);
  v24 = v151;
  v26 = sub_1C4C74DDC(a1, v23, v25);
  if (v24)
  {

    return sub_1C440962C(&v160);
  }

  v138 = v18;
  v139 = 0;
  v137 = v15;
  v151 = a3;
  v140 = v28;
  v141 = v27;
  v142 = v26;

  sub_1C440962C(&v160);
  if (*(v150 + 80) == 1)
  {

    v30 = v151;
  }

  else
  {
    v31 = sub_1C4F02938();

    v30 = v151;
    if ((v31 & 1) == 0)
    {

      v43 = 0x80000001C4FBDDD0;
      sub_1C446D0DC();
      swift_allocError();
      v45 = 0xD000000000000045;
LABEL_12:
      *v44 = v45;
      *(v44 + 8) = v43;
      *(v44 + 16) = 2;
      return swift_willThrow();
    }
  }

  v32 = v30[3];
  v33 = v30[5];
  sub_1C4409678(v30, v32);
  v34 = a1;
  v35 = v139;
  sub_1C4C6EE08(a1, 0, 0, 1, 1, v32, v33);
  if (v35)
  {
  }

  if (!v36)
  {

    v43 = 0x80000001C4FBDE20;
    sub_1C446D0DC();
    swift_allocError();
    v45 = 0xD000000000000048;
    goto LABEL_12;
  }

  v136 = v36;
  *&v160 = 0;
  *(&v160 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  v157 = v160;
  MEMORY[0x1C6940010](0xD000000000000032, 0x80000001C4FBDE70);
  v37 = v30[3];
  v38 = v30[4];
  sub_1C4409678(v30, v37);
  (*(v38 + 16))(&v160, v37, v38);
  v39 = *(&v161 + 1);
  v40 = v162;
  sub_1C4409678(&v160, *(&v161 + 1));
  v41 = (*(v40 + 8))(v39, v40);
  MEMORY[0x1C6940010](v41);

  sub_1C440962C(&v160);
  v162 = 0;
  v160 = 0u;
  v161 = 0u;
  v42 = v138;
  sub_1C4EFB758();
  sub_1C4EFB998();

  v46 = *(v149 + 8);
  v149 += 8;
  v46(v42, v148);
  sub_1C4420C3C(&v160, &unk_1EC0BC770, &qword_1C4F10DC0);
  v134 = v153;
  v47 = v152;
  sub_1C4609884(v30, &v160);
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v48 = sub_1C4F00978();
  v49 = sub_1C442B738(v48, qword_1EDE2DF70);
  sub_1C4609884(v30, &v157);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v138 = v49;
  v50 = sub_1C4F00968();
  v51 = sub_1C4F01CF8();

  LODWORD(v139) = v51;
  v52 = os_log_type_enabled(v50, v51);
  v53 = v147;
  v135 = v46;
  if (v52)
  {
    v54 = swift_slowAlloc();
    v132 = v50;
    v55 = v54;
    v133 = swift_slowAlloc();
    v156 = v133;
    *v55 = 136315394;
    v56 = a9;
    *(v55 + 4) = sub_1C441D828(v53, a9, &v156);
    *(v55 + 12) = 2080;
    v57 = v158;
    v58 = v159;
    sub_1C4409678(&v157, v158);
    (*(v58 + 16))(&v152, v57, v58);
    v59 = v154;
    v60 = v155;
    sub_1C4409678(&v152, v154);
    v61 = (*(v60 + 8))(v59, v60);
    v63 = v62;
    sub_1C440962C(&v152);
    sub_1C440962C(&v157);
    v64 = sub_1C441D828(v61, v63, &v156);

    *(v55 + 14) = v64;
    v65 = v132;
    _os_log_impl(&dword_1C43F8000, v132, v139, "PromoteTables: Diffing main to other for %s (%s", v55, 0x16u);
    v66 = v133;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v66, -1, -1);
    MEMORY[0x1C6942830](v55, -1, -1);
  }

  else
  {
    v56 = a9;

    sub_1C440962C(&v157);
  }

  v67 = v136;
  v68 = v144;
  v69 = v145;
  v133 = sub_1C4C7A0AC(1852399981, 0xE400000000000000, 0x726568746FLL, 0xE500000000000000, v34, v144, &v160, v145, v146, v136);
  sub_1C4609884(v151, &v157);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v70 = sub_1C4F00968();
  v71 = sub_1C4F01CF8();

  LODWORD(v139) = v71;
  v72 = os_log_type_enabled(v70, v71);
  v131 = v56;
  if (v72)
  {
    v73 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v156 = v132;
    *v73 = 136315394;
    *(v73 + 4) = sub_1C441D828(v147, v56, &v156);
    *(v73 + 12) = 2080;
    v74 = v158;
    v75 = v159;
    sub_1C4409678(&v157, v158);
    v76 = v70;
    (*(v75 + 16))(&v152, v74, v75);
    v77 = v154;
    v78 = v155;
    sub_1C4409678(&v152, v154);
    v79 = *(v78 + 8);
    v80 = v78;
    v81 = v147;
    v82 = v79(v77, v80);
    v84 = v83;
    sub_1C440962C(&v152);
    sub_1C440962C(&v157);
    v85 = sub_1C441D828(v82, v84, &v156);
    v69 = v145;
    v67 = v136;

    *(v73 + 14) = v85;
    _os_log_impl(&dword_1C43F8000, v76, v139, "PromoteTables: Diffing other to main for %s (%s", v73, 0x16u);
    v86 = v132;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v86, -1, -1);
    v87 = v73;
    v68 = v144;
    MEMORY[0x1C6942830](v87, -1, -1);
  }

  else
  {

    sub_1C440962C(&v157);
    v81 = v147;
  }

  v146 = sub_1C4C7A0AC(0x726568746FLL, 0xE500000000000000, 1852399981, 0xE400000000000000, v34, v68, &v160, v69, v146, v67);
  v139 = 0;
  sub_1C440962C(&v160);
  sub_1C4609884(v151, &v157);
  v88 = v131;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v89 = sub_1C4F00968();
  v90 = sub_1C4F01CF8();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v156 = v92;
    *v91 = 136315394;
    *(v91 + 4) = sub_1C441D828(v81, v88, &v156);
    *(v91 + 12) = 2080;
    v93 = v158;
    v94 = v159;
    sub_1C4409678(&v157, v158);
    v95 = v90;
    (*(v94 + 16))(&v152, v93, v94);
    v96 = v154;
    v97 = v155;
    sub_1C4409678(&v152, v154);
    v98 = (*(v97 + 8))(v96, v97);
    v100 = v99;
    sub_1C440962C(&v152);
    sub_1C440962C(&v157);
    v101 = sub_1C441D828(v98, v100, &v156);

    *(v91 + 14) = v101;
    _os_log_impl(&dword_1C43F8000, v89, v95, "PromoteTables: Deleting and copying values for %s (%s)", v91, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v92, -1, -1);
    MEMORY[0x1C6942830](v91, -1, -1);
  }

  else
  {

    sub_1C440962C(&v157);
  }

  v102 = v148;
  *&v157 = 0;
  *(&v157 + 1) = 0xE000000000000000;
  sub_1C4F02248();

  v152 = 0xD000000000000012;
  v153 = 0x80000001C4FBDEB0;
  v103 = v151;
  v104 = v151[3];
  v105 = v151[4];
  sub_1C4409678(v151, v104);
  (*(v105 + 16))(&v157, v104, v105);
  v106 = v158;
  v107 = v159;
  sub_1C4409678(&v157, v158);
  v108 = (*(v107 + 8))(v106, v107);
  MEMORY[0x1C6940010](v108);

  sub_1C440962C(&v157);
  MEMORY[0x1C6940010](34, 0xE100000000000000);
  v109 = v137;
  sub_1C4EFB758();
  v110 = v139;
  sub_1C4EFBFF8();
  if (v110)
  {
    v135(v109, v102);
  }

  else
  {
    v135(v109, v102);

    *&v157 = 0;
    *(&v157 + 1) = 0xE000000000000000;
    sub_1C4F02248();

    v152 = 0xD000000000000012;
    v153 = 0x80000001C4FBDED0;
    v111 = v103[3];
    v112 = v103[4];
    sub_1C4409678(v103, v111);
    (*(v112 + 16))(&v157, v111, v112);
    v113 = v158;
    v114 = v159;
    sub_1C4409678(&v157, v158);
    v115 = (*(v114 + 8))(v113, v114);
    MEMORY[0x1C6940010](v115);

    sub_1C440962C(&v157);
    MEMORY[0x1C6940010](0xD000000000000017, 0x80000001C4FBDEF0);
    v116 = v103[3];
    v117 = v103[4];
    sub_1C4409678(v103, v116);
    (*(v117 + 16))(&v157, v116, v117);
    v118 = v34;
    v119 = v158;
    v120 = v159;
    sub_1C4409678(&v157, v158);
    v121 = (*(v120 + 8))(v119, v120);
    MEMORY[0x1C6940010](v121);

    sub_1C440962C(&v157);
    MEMORY[0x1C6940010](34, 0xE100000000000000);
    v122 = v143;
    sub_1C4EFB758();
    sub_1C4EFBFF8();
    v135(v122, v102);

    sub_1C4C75800(v118, v142, v141, v140);
    v123 = v136;

    *(v123 + 104) = 1;
    sub_1C4B8BB5C();
    v126 = sub_1C44F95AC(v124, v125);
    v128 = v127;
    sub_1C4CCDA9C(v126, v127);
    sub_1C4434000(v126, v128);
    v129 = v47 * 0.95;
    if (v134)
    {
      v129 = 0.0;
    }

    if (v129 < v133)
    {
      sub_1C4B8B8EC();
    }
  }
}

uint64_t sub_1C4C7A0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v58 = a5;
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v57 = a10;
  v55 = a9;
  *&v56 = a8;
  v65 = sub_1C4EFB768();
  v60 = *(v65 - 8);
  v13 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v50 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v46 - v16;
  *&v61 = 0;
  *(&v61 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  v64 = v61;
  MEMORY[0x1C6940010](0xD00000000000001ELL, 0x80000001C4FBDF10);
  v17 = *a6;
  v48 = a6[1];
  v49 = v17;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4FBDF30);
  MEMORY[0x1C6940010](a6[2], a6[3]);
  MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4FB3910);
  v18 = a6[5];
  v47 = a6[4];
  v46 = v18;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0xD00000000000002ALL, 0x80000001C4FBDF50);
  v19 = a7[3];
  v20 = a7[5];
  sub_1C4409678(a7, v19);
  v21 = *(v20 + 8);
  v22 = v21(v19, v20);
  MEMORY[0x1C6940010](v22);

  MEMORY[0x1C6940010](0xD00000000000001ELL, 0x80000001C4FBDF80);
  MEMORY[0x1C6940010](a1, v51);
  MEMORY[0x1C6940010](8750, 0xE200000000000000);
  v23 = a7[3];
  v24 = a7[4];
  sub_1C4409678(a7, v23);
  (*(v24 + 16))(&v61, v23, v24);
  v25 = *(&v62 + 1);
  v26 = v63;
  sub_1C4409678(&v61, *(&v62 + 1));
  v27 = (*(v26 + 8))(v25, v26);
  MEMORY[0x1C6940010](v27);

  sub_1C440962C(&v61);
  MEMORY[0x1C6940010](0xD000000000000022, 0x80000001C4FBDFA0);
  MEMORY[0x1C6940010](v52, v53);
  MEMORY[0x1C6940010](8750, 0xE200000000000000);
  v28 = a7[3];
  v29 = a7[4];
  sub_1C4409678(a7, v28);
  (*(v29 + 16))(&v61, v28, v29);
  v30 = *(&v62 + 1);
  v31 = v63;
  sub_1C4409678(&v61, *(&v62 + 1));
  v32 = (*(v31 + 8))(v30, v31);
  MEMORY[0x1C6940010](v32);

  sub_1C440962C(&v61);
  MEMORY[0x1C6940010](0xD00000000000001CLL, 0x80000001C4FBDFD0);
  MEMORY[0x1C6940010](v56, v55);
  MEMORY[0x1C6940010](0xD00000000000001FLL, 0x80000001C4FBDFF0);
  v33 = v20;
  v34 = v54;
  v35 = v21(v19, v33);
  MEMORY[0x1C6940010](v35);

  MEMORY[0x1C6940010](0x4C554E2053492022, 0xE90000000000004CLL);
  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v36 = swift_allocObject();
  v56 = xmmword_1C4F0D130;
  *(v36 + 16) = xmmword_1C4F0D130;
  v37 = MEMORY[0x1E69E63B0];
  v38 = v57;
  v39 = *(v57 + 96);
  v40 = MEMORY[0x1E69A0168];
  *(v36 + 56) = MEMORY[0x1E69E63B0];
  *(v36 + 64) = v40;
  *(v36 + 32) = v39;
  sub_1C4EFB728();
  v41 = v59;
  sub_1C4EFBFF8();
  if (v41)
  {
    (*(v60 + 8))(v34, v65);
  }

  else
  {
    v60 = *(v60 + 8);
    (v60)(v34, v65);

    *&v61 = 0;
    *(&v61 + 1) = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000033, 0x80000001C4FBE010);
    MEMORY[0x1C6940010](v49, v48);
    MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FB3860);
    MEMORY[0x1C6940010](v47, v46);
    MEMORY[0x1C6940010](0x3F203D2022, 0xE500000000000000);
    v43 = swift_allocObject();
    *(v43 + 16) = v56;
    v44 = *(v38 + 96);
    *(v43 + 56) = v37;
    *(v43 + 64) = v40;
    *(v43 + 32) = v44;
    v45 = v50;
    sub_1C4EFB728();
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    sub_1C4EFB998();

    sub_1C4420C3C(&v61, &unk_1EC0BC770, &qword_1C4F10DC0);
    (v60)(v45, v65);
    if (BYTE8(v64))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return v64;
    }
  }
}

void sub_1C4C7A710()
{
  sub_1C43FE96C();
  v32[5] = v1;
  v3 = v2;
  sub_1C4403FC0();
  v4 = sub_1C4EFB768();
  v5 = sub_1C43FCDF8(v4);
  v32[9] = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  sub_1C43FEE3C();
  MEMORY[0x1EEE9AC00](v9);
  v32[8] = v32 - v10;
  v11 = v3[4];
  v12 = sub_1C4409678(v3, v3[3]);
  v13 = sub_1C44025D4(v12);
  v14(v13);
  v15 = v33[4];
  sub_1C4409678(v33, v33[3]);
  sub_1C442619C(v15);
  v16 = sub_1C43FE99C();
  v17(v16);
  sub_1C443F800();
  if (v0)
  {

    sub_1C440962C(v33);
  }

  else
  {
    sub_1C440A1E4(v18, v19, v20);
    sub_1C440962C(v33);
    sub_1C4404868();

    v21 = sub_1C4441A00();
    v22(v21);
    sub_1C440622C(v33);
    v24 = *(v23 + 8);
    v25 = sub_1C4408DF8();
    v27 = v26(v25);
    v29 = v28;
    MEMORY[0x1C6940010](v27);

    sub_1C440962C(v33);
    sub_1C441DE98();
    sub_1C4EFB758();
    sub_1C447FA8C();
    sub_1C4EFBFF8();
    v30 = sub_1C442EDB8();
    v29(v30);

    sub_1C4404868();

    sub_1C446C0F0();
    sub_1C441DE98();
    v31 = v32[1];
    sub_1C4EFB758();
    sub_1C445EA5C();
    (v29)(v31, v11);

    sub_1C4469320();
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C4C7A9B4()
{
  sub_1C43FE96C();
  v32[5] = v1;
  v3 = v2;
  sub_1C4403FC0();
  v4 = sub_1C4EFB768();
  v5 = sub_1C43FCDF8(v4);
  v32[9] = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  sub_1C43FEE3C();
  MEMORY[0x1EEE9AC00](v9);
  v32[8] = v32 - v10;
  v11 = v3[4];
  v12 = sub_1C4409678(v3, v3[3]);
  v13 = sub_1C44025D4(v12);
  v14(v13);
  v15 = v33[4];
  sub_1C4409678(v33, v33[3]);
  sub_1C442619C(v15);
  v16 = sub_1C43FE99C();
  v17(v16);
  sub_1C443F800();
  if (v0)
  {

    sub_1C440962C(v33);
  }

  else
  {
    sub_1C440A1E4(v18, v19, v20);
    sub_1C440962C(v33);
    sub_1C4404868();

    v21 = sub_1C4441A00();
    v22(v21);
    sub_1C440622C(v33);
    v24 = *(v23 + 8);
    v25 = sub_1C4408DF8();
    v27 = v26(v25);
    v29 = v28;
    MEMORY[0x1C6940010](v27);

    sub_1C440962C(v33);
    sub_1C441DE98();
    sub_1C4EFB758();
    sub_1C447FA8C();
    sub_1C4EFBFF8();
    v30 = sub_1C442EDB8();
    v29(v30);

    sub_1C4404868();

    sub_1C446C0F0();
    sub_1C441DE98();
    v31 = v32[1];
    sub_1C4EFB758();
    sub_1C445EA5C();
    (v29)(v31, v11);

    sub_1C4469320();
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4C7AC58(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v38 = a4;
  v49 = a2;
  v6 = sub_1C4EFB768();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v34 - v11;
  v12 = a3[3];
  v13 = a3[4];
  v14 = sub_1C4409678(a3, v12);
  v15 = *(v13 + 16);
  v39 = v14;
  v40 = v15;
  v15(v46, v12, v13);
  v17 = v47;
  v16 = v48;
  sub_1C4409678(v46, v47);
  v18 = (*(v16 + 8))(v17, v16);
  v43 = a1;
  v19 = v44;
  v21 = sub_1C4C74DDC(a1, v18, v20);
  if (v19)
  {

    return sub_1C440962C(v46);
  }

  else
  {
    v34 = v9;
    v35 = v23;
    v36 = v22;
    v37 = v21;
    v44 = v6;

    sub_1C440962C(v46);
    v46[0] = 0;
    v46[1] = 0xE000000000000000;
    sub_1C4F02248();

    strcpy(v45, "DELETE FROM ");
    v45[7] = -4864;
    v40(v46, v12, v13);
    v25 = v47;
    v26 = v48;
    sub_1C4409678(v46, v47);
    v27 = (*(v26 + 8))(v25, v26);
    MEMORY[0x1C6940010](v27);

    sub_1C440962C(v46);
    MEMORY[0x1C6940010](34, 0xE100000000000000);
    v28 = v41;
    sub_1C4EFB758();
    v29 = v43;
    sub_1C4EFBFF8();
    v30 = *(v42 + 8);
    v31 = v28;
    v32 = v44;
    v30(v31, v44);

    v46[0] = 0;
    v46[1] = 0xE000000000000000;
    sub_1C4F02248();

    strcpy(v46, "DELETE FROM ");
    HIWORD(v46[1]) = -4864;
    MEMORY[0x1C6940010](*v38, v38[1]);
    MEMORY[0x1C6940010](34, 0xE100000000000000);
    v33 = v34;
    sub_1C4EFB758();
    sub_1C4EFBFF8();
    v30(v33, v32);

    sub_1C4C75800(v29, v37, v36, v35);
  }
}

uint64_t sub_1C4C7B074@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4C6EDBC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4C7B160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4442E20();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4C7B1C4()
{
  sub_1C4BBB9FC();
  sub_1C4442EEC();

  return sub_1C4EFBA18();
}

uint64_t sub_1C4C7B234(uint64_t a1)
{
  v2 = sub_1C4C7CE28();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4C7B280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4C7CE28();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t sub_1C4C7B758@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C443C388();
  *a2 = result;
  return result;
}

void sub_1C4C7B788(void *a1@<X8>)
{
  sub_1C4C6EC08(*v1);
  *a1 = v3;
  a1[1] = v4;
}

void sub_1C4C7C128(void *a1@<X8>)
{
  sub_1C445EDE8(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1C4C7C1B4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  switch(*(v0 + 64))
  {
    case 1:
      sub_1C4417A40();
      sub_1C4F02248();
      sub_1C4418604();
      sub_1C440BC44();
      MEMORY[0x1C6940010](0xD000000000000010);
      v29 = sub_1C440E964();
      MEMORY[0x1C6940010](v29);
      sub_1C440BC44();
      MEMORY[0x1C6940010]();
      v30 = sub_1C4426F1C();
      MEMORY[0x1C6940010](v30);
      v31 = sub_1C44106AC();
      goto LABEL_22;
    case 2:
      v22 = v0[6];
      v21 = v0[7];
      sub_1C4417A40();
      sub_1C4F02248();
      sub_1C4418604();
      sub_1C440BC44();
      MEMORY[0x1C6940010](0xD000000000000010);
      v23 = sub_1C440E964();
      MEMORY[0x1C6940010](v23);
      sub_1C440BC44();
      MEMORY[0x1C6940010]();
      v24 = sub_1C4426F1C();
      MEMORY[0x1C6940010](v24);
      v25 = sub_1C44106AC();
      MEMORY[0x1C6940010](v25);
      MEMORY[0x1C6940010](v5, v6);
      v26 = sub_1C44106AC();
      MEMORY[0x1C6940010](v26);
      v15 = v22;
      v16 = v21;
      goto LABEL_26;
    case 3:
      sub_1C4417A40();
      sub_1C4F02248();

      sub_1C43FBDF0();
      v38[0] = 0xD000000000000010;
      v38[1] = v27;
      goto LABEL_17;
    case 4:
      sub_1C4417A40();
      sub_1C4F02248();

      v12 = 0x2064696C61766E49;
      v13 = 0xEE00203A61746164;
      goto LABEL_16;
    case 5:
      strcpy(v38, "Unexpected: ");
      BYTE5(v38[1]) = 0;
      HIWORD(v38[1]) = -5120;
      goto LABEL_24;
    case 6:
      sub_1C4417A40();
      sub_1C4F02248();
      sub_1C4418604();
      MEMORY[0x1C6940010](0x2064696C61766E49, 0xEE00203A61746164);
      v33 = sub_1C440E964();
      MEMORY[0x1C6940010](v33);
      sub_1C44415D8();
      sub_1C440BC44();
      MEMORY[0x1C6940010]();
      v34 = sub_1C4426F1C();
      MEMORY[0x1C6940010](v34);
      v31 = 8250;
      v32 = 0xE200000000000000;
LABEL_22:
      MEMORY[0x1C6940010](v31, v32);
      v15 = v5;
      v16 = v6;
      goto LABEL_26;
    case 7:
      v12 = 0x3A656761726F7453;
      v13 = 0xE900000000000020;
LABEL_16:
      v38[0] = v12;
      v38[1] = v13;
LABEL_17:
      v28 = sub_1C440E964();
      MEMORY[0x1C6940010](v28);
      v19 = 8250;
      v20 = 0xE200000000000000;
      goto LABEL_18;
    case 8:
      sub_1C4417A40();
      sub_1C4F02248();
      sub_1C4418604();
      MEMORY[0x1C6940010](0x7463657078656E55, 0xEC000000203A6465);
      MEMORY[0x1C6940010](v2, v4);
      MEMORY[0x1C6940010](0x6669746E65646920, 0xEC00000020726569);
      v35 = sub_1C4F02858();
      MEMORY[0x1C6940010](v35);

      sub_1C44415D8();
      sub_1C440BC44();
      MEMORY[0x1C6940010](v36);
      v15 = v3;
      v16 = v5;
      goto LABEL_26;
    case 9:
      sub_1C4417A40();
      sub_1C4F02248();

      sub_1C43FBDF0();
      v38[0] = 0xD000000000000029;
      v38[1] = v17;
      v18 = sub_1C440E964();
      MEMORY[0x1C6940010](v18);
      v19 = sub_1C44106AC();
LABEL_18:
      MEMORY[0x1C6940010](v19, v20);
      v15 = sub_1C4426F1C();
      goto LABEL_26;
    case 0xA:
      sub_1C4417A40();
      sub_1C4F02248();
      sub_1C4418604();
      sub_1C440BC44();
      MEMORY[0x1C6940010]();
LABEL_24:
      v15 = sub_1C440E964();
      goto LABEL_26;
    case 0xB:
      v38[0] = 0x2077656956;
      v38[1] = 0xE500000000000000;
      v11 = sub_1C440E964();
      MEMORY[0x1C6940010](v11);
      MEMORY[0x1C6940010](544434464, 0xE400000000000000);
      v9 = sub_1C4CC2358(v4);
      goto LABEL_9;
    case 0xC:
      sub_1C4417A40();
      sub_1C4F02248();

      v38[0] = 0x2077656956;
      v38[1] = 0xE500000000000000;
      v14 = sub_1C440E964();
      MEMORY[0x1C6940010](v14);
      v15 = 0x76616E7520736920;
      v16 = 0xEF656C62616C6961;
LABEL_26:
      MEMORY[0x1C6940010](v15, v16);
      break;
    default:
      sub_1C4417A40();
      sub_1C4F02248();

      v38[0] = 0x222077656956;
      v38[1] = 0xE600000000000000;
      v7 = sub_1C440E964();
      MEMORY[0x1C6940010](v7);
      sub_1C44415D8();
      sub_1C440BC44();
      MEMORY[0x1C6940010]();
      sub_1C4418604();
      if (v3)
      {
        MEMORY[0x1C6940010](v4, v3);
        MEMORY[0x1C6940010](544106784, 0xE400000000000000);
      }

      v8 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v8 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        MEMORY[0x1C6940010](v5, v6);
        v9 = 8250;
        v10 = 0xE200000000000000;
LABEL_9:
        MEMORY[0x1C6940010](v9, v10);
      }

      break;
  }

  return v38[0];
}

uint64_t sub_1C4C7C734(uint64_t a1, uint64_t a2)
{
  sub_1C450B034();
  sub_1C43FFB2C();
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = 0xD000000000000016;
  *(v4 + 24) = 0x80000001C4F605B0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  *(v4 + 48) = v6;
  *(v4 + 64) = 0;
  swift_willThrow();
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

_BYTE *sub_1C4C7C7F8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4C7C8D0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4C7C9B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF4 && *(a1 + 65))
    {
      v2 = *a1 + 243;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 0xC)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4C7C9F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C4C7CAA8()
{
  result = qword_1EDDFDA98;
  if (!qword_1EDDFDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDA98);
  }

  return result;
}

unint64_t sub_1C4C7CB44()
{
  result = qword_1EDDFB7E0;
  if (!qword_1EDDFB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7E0);
  }

  return result;
}

unint64_t sub_1C4C7CB9C()
{
  result = qword_1EDDFF8F8;
  if (!qword_1EDDFF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF8F8);
  }

  return result;
}

unint64_t sub_1C4C7CBF4()
{
  result = qword_1EDDFE120;
  if (!qword_1EDDFE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE120);
  }

  return result;
}

unint64_t sub_1C4C7CC90()
{
  result = qword_1EC0C5410;
  if (!qword_1EC0C5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5410);
  }

  return result;
}

uint64_t sub_1C4C7CD44()
{
  sub_1C43FBE94();
  v0 = sub_1C4EFB768();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  return (*(v3 + 8))(v8, v0);
}

unint64_t sub_1C4C7CE28()
{
  result = qword_1EC0C5418;
  if (!qword_1EC0C5418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5418);
  }

  return result;
}

unint64_t sub_1C4C7CE7C()
{
  result = qword_1EDDFF278;
  if (!qword_1EDDFF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF278);
  }

  return result;
}

unint64_t sub_1C4C7CED0()
{
  result = qword_1EDDFF388;
  if (!qword_1EDDFF388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF388);
  }

  return result;
}

void sub_1C4C7CF78()
{
  sub_1C43FE96C();
  v32 = v2;
  v33 = v1;
  v34 = v3;
  v39 = v4;
  v6 = v5;
  sub_1C456902C(&qword_1EC0C5420, &qword_1C4F60D48);
  v7 = 0;
  v30 = v6;
  v31 = sub_1C4F02538();
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v10 = *(v8 - 32);
  sub_1C43FD030();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v29 = v16 + 64;
  if ((v12 & v11) != 0)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_8:
      v20 = v17 | (v7 << 6);
      v21 = (*(v30 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v30 + 56) + 88 * v20);
      memcpy(v38, v24, 0x58uLL);
      memcpy(__dst, v24, sizeof(__dst));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C46DD848(v38, v35);
      sub_1C4BF887C(__dst, v39, v34, v33, v32, __src);
      if (v0)
      {
        break;
      }

      memcpy(v35, __dst, sizeof(v35));
      sub_1C46DD880(v35);
      *(v29 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v25 = (v31[6] + 16 * v20);
      *v25 = v22;
      v25[1] = v23;
      memcpy((v31[7] + 224 * v20), __src, 0xE0uLL);
      v26 = v31[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_15;
      }

      v31[2] = v28;
      if (!v13)
      {
        goto LABEL_3;
      }
    }

    memcpy(v35, __dst, sizeof(v35));
    sub_1C46DD880(v35);
LABEL_13:

    sub_1C43FBC80();
  }

  else
  {
LABEL_3:
    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v15)
      {
        goto LABEL_13;
      }

      v19 = *(v8 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

uint64_t sub_1C4C7D19C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_1C46BC394(v9, v4, v2);
      MEMORY[0x1C6942830](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v4, v5);
  sub_1C46BC570(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1C4C7D32C()
{
  sub_1C4434068();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v7 = v0[9];
  return v5(v4);
}

void sub_1C4C7D364(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1C4545600(a1, *(v1 + 16));
}

void sub_1C4C7D44C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1C4C7A710();
}

void sub_1C4C7D568(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v2 + a1 + 8);
}

uint64_t sub_1C4C7D58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = &type metadata for UnstructuredDatabaseTable;
  a5[4] = &off_1F43FF1D8;
  v10 = swift_allocObject();
  *a5 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4C7D630(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a3 + 32);
  if (v8)
  {
    v10 = *(a3 + 24);
    sub_1C442D78C(a1, a2, a3);
    sub_1C44E9220();
    if (v4)
    {
      return;
    }

    v12 = v11;
    a4[3] = &type metadata for UnstructuredDatabaseTable;
    a4[4] = &off_1F43FF1D8;
    v13 = swift_allocObject();
    *a4 = v13;
    v13[2] = v10;
    v13[3] = v8;
    v13[4] = v12;
    v13[5] = v5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C450B034();
    v14 = swift_allocError();
    *v15 = a1;
    v15[1] = a2;
    sub_1C441A930(v14, v15);
    sub_1C44010A8(v18, v16, v17);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4C7D738(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[4];
  if (v6)
  {
    v7 = a3[3];
    v9 = a3[6];
    v8 = a3[7];
    v10 = a3[5];
    v20 = 0uLL;
    sub_1C44E9220();
    if (!v3)
    {
      v21 = &v20;
      if (v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      v13 = *(v11 + 16);
      MEMORY[0x1EEE9AC00](v11);
      v19[2] = v7;
      v19[3] = v6;
      v19[4] = v14;
      v19[5] = v10;
      v19[6] = v9;
      v19[7] = v12;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C446C37C(sub_1C4C7D9F8, v19);
    }
  }

  else
  {
    sub_1C450B034();
    v15 = swift_allocError();
    *v16 = a1;
    v16[1] = a2;
    sub_1C441A930(v15, v16);
    sub_1C44010A8(v20, v17, v18);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C7D8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  if (v7)
  {
    v8 = *(a3 + 24);
    sub_1C442D78C(a1, a2, a3);
    sub_1C44E9220();
    if (!v3)
    {
      v10 = v9;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CFDBF8(v8, v7, v10, v4);
    }
  }

  else
  {
    sub_1C450B034();
    v11 = swift_allocError();
    *v12 = a1;
    v12[1] = a2;
    sub_1C441A930(v11, v12);
    sub_1C44010A8(v15, v13, v14);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4C7DA2C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C43FEB04();
}

uint64_t sub_1C4C7DA40()
{
  sub_1C43FBCD4();
  v0[4] = *(v0[3] + 64);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1C4C7DADC;
  v2 = v0[2];

  return sub_1C4B9C420(v2);
}

uint64_t sub_1C4C7DADC()
{
  sub_1C43FBCD4();
  v2 = *(*v1 + 40);
  v5 = *v1;

  if (v0)
  {
    sub_1C43FBDA0();

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4C7DC04, 0, 0);
  }
}

uint64_t sub_1C4C7DC04()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2[5];
  v4 = v2[6];
  sub_1C4409678(v2 + 2, v3);
  v5 = sub_1C4BDE1DC(v2[7], v1, v3, v4);
  v0[6] = v5;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1C4C7DCD8;
  v7 = v0[4];

  return sub_1C4B9BD0C(v5);
}

uint64_t sub_1C4C7DCD8()
{
  sub_1C43FBCD4();
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4C7DE0C, 0, 0);
  }

  else
  {
    v4 = *(v2 + 48);

    sub_1C43FBDA0();

    return v5();
  }
}

uint64_t sub_1C4C7DE0C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);
  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4C7DE7C()
{
  sub_1C4403A84();
  sub_1C4EFC258();
  if (v0)
  {
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v1 = sub_1C4F00978();
    sub_1C442B738(v1, qword_1EDE2DF70);
    v2 = v0;
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CD8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v0;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      sub_1C4403014(&dword_1C43F8000, v9, v10, "VectorDatabaseClient: %@");
      sub_1C4420C3C(v6, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }
  }

  sub_1C43FBDA0();

  return v11();
}

uint64_t sub_1C4C7E014()
{
  sub_1C4403A84();
  sub_1C4EFC278();
  if (v0)
  {
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v1 = sub_1C4F00978();
    sub_1C442B738(v1, qword_1EDE2DF70);
    v2 = v0;
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CD8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v0;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      sub_1C4403014(&dword_1C43F8000, v9, v10, "VectorDatabaseClient: %@");
      sub_1C4420C3C(v6, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }
  }

  sub_1C43FBDA0();

  return v11();
}

uint64_t *sub_1C4C7E194()
{
  sub_1C440962C(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t sub_1C4C7E1C4()
{
  sub_1C4C7E194();

  return swift_deallocClassInstance();
}

void *sub_1C4C7E21C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_1C4C7E25C(a1, a2, a3);
  if (!v4)
  {
    a4[3] = &unk_1F44068F0;
    a4[4] = &off_1F4406908;
    *a4 = result;
  }

  return result;
}

void *sub_1C4C7E25C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_1C456902C(&qword_1EC0C4668, "TZ\b");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for VectorDB.Config(0);
  v12 = sub_1C43FBCE0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = _s6ConfigVMa();
  sub_1C4C7EE40(a3 + *(v20 + 44), v10);
  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    sub_1C4420C3C(v10, &qword_1EC0C4668, "TZ\b");
    sub_1C450B034();
    sub_1C43FFB2C();
    *v21 = a1;
    v21[1] = a2;
    sub_1C43FE0E0(v21, 17);
    sub_1C44010A8(v32, v22, v23);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4C7EEB0(v10, v19);
    v24 = *(a3 + 8);
    v25 = *(a3 + 16);
    sub_1C4B9CB28();
    if (!v3)
    {
      v27 = v26;
      sub_1C4B9E0CC(v19, v16);
      v28 = type metadata accessor for VectorDB.EmbeddingDatabase(0);
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      a2 = sub_1C4B9B4F8(v27, v16);
    }

    sub_1C44207CC();
  }

  return a2;
}

uint64_t sub_1C4C7E474(uint64_t a1, uint64_t a2)
{
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DF70);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C43F8000, v5, v6, "VectorDBViewClientProvider: storage is not implemented!", v7, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C450B034();
  sub_1C43FFB2C();
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = 0xD000000000000037;
  *(v8 + 24) = 0x80000001C4FBE110;
  *(v8 + 32) = v10;
  *(v8 + 48) = v11;
  *(v8 + 64) = 7;
  swift_willThrow();
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void *sub_1C4C7E5B0(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_1C4C7E25C(a1, a2, a3);
  if (!v3)
  {
    v5 = result[2];
    sub_1C4EFC248();
  }

  return result;
}

void *sub_1C4C7E5FC(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_1C4C7E25C(a1, a2, a3);
  if (!v3)
  {
    v7 = result[2];
    sub_1C4EFC278();
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CF8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1C441D828(a1, a2, &v13);
      _os_log_impl(&dword_1C43F8000, v9, v10, "Clearing VectorDB for %s.", v11, 0xCu);
      sub_1C440962C(v12);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  return result;
}

void sub_1C4C7E768()
{
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v0 = sub_1C4F00978();
  sub_1C442B738(v0, qword_1EDE2DF70);
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CD8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C43F8000, v1, v2, "VectorDBViewClientProvider: promoteArtifact is not implemented!", v3, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }
}

uint64_t sub_1C4C7E8C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v10 = _s10ViewConfigVMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DF70);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CB8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v16, "VectorDBViewGenerationProvider ignores fullRebuild flag.", v17, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  swift_unownedRetainStrong();
  v18 = *(a4 + 16);

  sub_1C443A738(a1, a2, v19, v20, v21, v22, v23, v24);
  if (v5)
  {
  }

  else
  {

    v25 = *(v13 + 33);
    if (v25)
    {
      v26 = *(v25 + 16);
      v27 = MEMORY[0x1E69E7CC0];
      if (v26)
      {
        v41 = a1;
        v42 = a2;
        v47 = v13;
        v44.n128_u64[0] = MEMORY[0x1E69E7CC0];
        sub_1C44CD9C0();
        v27 = v44.n128_u64[0];
        v28 = (v25 + 48);
        do
        {
          v29 = *(v28 - 1);
          v30 = *v28;
          v44.n128_u64[0] = v27;
          v31 = *(v27 + 16);
          v32 = *(v27 + 24);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v31 >= v32 >> 1)
          {
            sub_1C44CD9C0();
            v27 = v44.n128_u64[0];
          }

          *(v27 + 16) = v31 + 1;
          v33 = v27 + 16 * v31;
          *(v33 + 32) = v29;
          *(v33 + 40) = v30;
          v28 += 7;
          --v26;
        }

        while (v26);
        a1 = v41;
        a2 = v42;
      }

      swift_unownedRetainStrong();
      v45 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      v46 = sub_1C4C1F36C();
      v44.n128_u64[0] = v27;
      v36 = sub_1C4C81ADC(&v44);

      sub_1C440962C(&v44);
      sub_1C4C687F0(v36, &v44);
      v38 = sub_1C4C83D3C(v36);

      swift_unownedRetainStrong();
      sub_1C4C7ECA4(a1, a2);
      v40 = v39;
      sub_1C440803C();

      sub_1C441D670(&v44, v43);
      _s12VectorDBViewCMa();
      v4 = swift_allocObject();
      sub_1C441D670(v43, v4 + 16);
      *(v4 + 56) = v38;
      *(v4 + 64) = v40;
    }

    else
    {
      v4 = 0x80000001C4FBE0B0;
      sub_1C450B034();
      v34 = sub_1C43FFB2C();
      v35->n128_u64[0] = a1;
      v35->n128_u64[1] = a2;
      v35[1].n128_u64[0] = 0xD000000000000013;
      v35[1].n128_u64[1] = 0x80000001C4FBE0B0;
      v35[2].n128_u64[0] = 0;
      v35[2].n128_u64[1] = 0xE000000000000000;
      sub_1C44010A8(v44, v34, v35);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440803C();
    }
  }

  return v4;
}

void sub_1C4C7ECA4(uint64_t a1, uint64_t a2)
{
  sub_1C4C81AA0();
  if (!v2)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C450B034();
      sub_1C43FFB2C();
      *v5 = a1;
      v5[1] = a2;
      sub_1C43FE0E0(v5, 18);
      *(v6 + 48) = v7;
      *(v6 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

uint64_t sub_1C4C7ED7C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1C4C7E8C0(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C7EE40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4668, "TZ\b");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4C7EEB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VectorDB.Config(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4C7EF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s10ViewConfigVMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a4 + 16);
  sub_1C443A738(a1, a2, v13, v14, v15, v16, v17, v18);
  if (!v4)
  {
    ViewGeneration.ViewClients.storage(for:fullRebuild:)();
    sub_1C441D670(v27, v28);
    v20 = *(v11 + 26);
    if (v20)
    {
      v21 = *(v11 + 25);
      sub_1C441D670(v28, v27);
      _s33WalletOrderExtractedViewGeneratorCMa();
      a2 = swift_allocObject();
      sub_1C441D670(v27, a2 + 16);
      *(a2 + 56) = v21;
      *(a2 + 64) = v20;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      *&v27[0] = 0;
      *(&v27[0] + 1) = 0xE000000000000000;
      sub_1C4F02248();

      *&v27[0] = 0xD00000000000001CLL;
      *(&v27[0] + 1) = 0x80000001C4FBE240;
      MEMORY[0x1C6940010](a1, a2);
      a2 = *(&v27[0] + 1);
      v22 = *&v27[0];
      sub_1C450B034();
      swift_allocError();
      *v23 = v22;
      *(v23 + 8) = a2;
      v24 = v27[2];
      v25 = v27[1];
      *(v23 + 16) = v27[0];
      *(v23 + 32) = v25;
      *(v23 + 48) = v24;
      *(v23 + 64) = 5;
      swift_willThrow();
      sub_1C440962C(v28);
    }

    sub_1C445F57C(v11);
  }

  return a2;
}

uint64_t sub_1C4C7F10C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4C7EF30(a1, a2, 0, *v2);
  v5 = *(v3 + 8);

  return v5(v4);
}

char *sub_1C4C7F1BC()
{
  v1 = v0;
  v32[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1C4F01188();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  if (!String.removeNullFieldsFromJsonString()().value._object)
  {
    goto LABEL_16;
  }

  sub_1C4F01178();
  v7 = sub_1C4F01148();
  v9 = v8;

  (*(v3 + 8))(v6, v2);
  if (v9 >> 60 == 15)
  {
    goto LABEL_16;
  }

  v10 = objc_opt_self();
  v11 = sub_1C4EF9A38();
  v32[0] = 0;
  v12 = [v10 JSONObjectWithData:v11 options:0 error:v32];

  v6 = v32[0];
  if (!v12)
  {
    v18 = v32[0];
    v1 = sub_1C4EF97A8();

    swift_willThrow();
    goto LABEL_10;
  }

  v13 = v32[0];
  sub_1C4F02078();
  swift_unknownObjectRelease();
  sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C441DFEC(v7, v9);
    goto LABEL_16;
  }

  sub_1C465DD4C(v31);
  v6 = v14;

  v15 = objc_allocWithZone(MEMORY[0x1E69AA780]);
  v16 = sub_1C4C80498();
  if (v0)
  {
LABEL_10:
    sub_1C441DFEC(v7, v9);
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDDFECB8);
    v20 = v1;
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CF8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32[0] = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = sub_1C4F02A38();
      v6 = sub_1C441D828(v25, v26, v32);

      *(v23 + 4) = v6;
      _os_log_impl(&dword_1C43F8000, v21, v22, "Error deserializing JSON: %s", v23, 0xCu);
      sub_1C440962C(v24);
      MEMORY[0x1C6942830](v24, -1, -1);
      MEMORY[0x1C6942830](v23, -1, -1);
    }

    goto LABEL_17;
  }

  v6 = v16;
  sub_1C441DFEC(v7, v9);
  if (!v6)
  {
LABEL_16:
    sub_1C4C80668();
    swift_allocError();
    *v27 = 0xD000000000000029;
    v27[1] = 0x80000001C4FBE210;
LABEL_17:
    swift_willThrow();
    goto LABEL_18;
  }

  sub_1C4C806BC(v6);
  if (v17)
  {
    sub_1C4F01288();
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  v30 = objc_allocWithZone(MEMORY[0x1E69AA788]);
  sub_1C4C80580();
LABEL_18:
  v28 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1C4C7F63C()
{
  sub_1C43FBCD4();
  v5 = *MEMORY[0x1E69E9840];
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C4C7F6C8, 0, 0);
}

uint64_t sub_1C4C7F6C8()
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = v0[13];
  v2 = v1[5];
  v3 = v1[6];
  sub_1C4409678(v1 + 2, v2);
  v4 = *((*(v3 + 16))(v2, v3) + 16);

  v0[14] = sub_1C49A52FC(sub_1C4C8064C, v1);

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4F00978();
  v0[15] = sub_1C442B738(v5, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = sub_1C4428DA0();

    _os_log_impl(&dword_1C43F8000, v6, v7, "fetched orders count:%ld", v8, 0xCu);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  else
  {
  }

  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C43F8000, v9, v10, "Started Full Donation to cascade set", v11, 2u);
    MEMORY[0x1C6942830](v11, -1, -1);
  }

  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v12 = swift_allocObject();
  v0[16] = v12;
  *(v12 + 16) = xmmword_1C4F0FCC0;
  v13 = objc_opt_self();
  v14 = sub_1C4F01108();
  v0[8] = 0;
  v15 = [v13 sourceIdentifierWithValue:v14 error:v0 + 8];

  v16 = v0[8];
  if (v15)
  {
    *(v12 + 32) = v15;
    v17 = v16;
    v18 = swift_task_alloc();
    v0[17] = v18;
    *v18 = v0;
    v18[1] = sub_1C4C7FA90;
    v19 = *MEMORY[0x1E69E9840];

    return sub_1C467BA74(7952, v12);
  }

  else
  {
    v21 = v16;

    sub_1C4EF97A8();

    swift_willThrow();
    *(v12 + 16) = 0;

    sub_1C43FBDA0();
    v23 = *MEMORY[0x1E69E9840];

    return v22();
  }
}

uint64_t sub_1C4C7FA90(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  v4 = *(*v2 + 136);
  v10 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = sub_1C4C800D4;
  }

  else
  {
    v6 = v3[16];

    v5 = sub_1C4C7FBE0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C4C7FBE0()
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 120);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "Acquired full donation", v4, 2u);
    MEMORY[0x1C6942830](v4, -1, -1);
  }

  v5 = *(v0 + 96);

  if ((sub_1C4D0E2C0() & 1) == 0)
  {
    v13 = *(v0 + 112);
    v14 = 0;
    v51 = v13 & 0xC000000000000001;
    v52 = sub_1C4428DA0();
    v49 = v13 + 32;
    v50 = v13 & 0xFFFFFFFFFFFFFF8;
    v15 = *(v0 + 152);
    while (v52 != v14)
    {
      if (v51)
      {
        MEMORY[0x1C6940F90](v14, *(v0 + 112));
      }

      else
      {
        if (v14 >= *(v50 + 16))
        {
          goto LABEL_31;
        }

        v16 = *(v49 + 8 * v14);
      }

      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
      }

      sub_1C493DD18();
      if (v15)
      {
        v34 = *MEMORY[0x1E69E9840];

        return swift_unexpectedError();
      }

      sub_1C493DD18();
      v17 = *(v0 + 104);
      *(v0 + 16) = v18;
      *(v0 + 24) = v19;
      *(v0 + 32) = 3826797;
      *(v0 + 40) = 0xE300000000000000;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0xE000000000000000;
      v48 = sub_1C4415EA8();
      v47 = MEMORY[0x1E69E6158];
      sub_1C4F02008();

      v20 = sub_1C4C7F1BC();
      v22 = v21;

      v23 = objc_allocWithZone(MEMORY[0x1E69939F8]);
      v24 = v20;
      v25 = v22;
      v26 = sub_1C4C803C4(v24, v25);
      v27 = *(v0 + 144);
      v28 = v26;
      *(v0 + 72) = 0;
      v29 = [v27 registerItem:v26 error:{v0 + 72, v47, v48, v48, v48}];
      v30 = *(v0 + 72);
      if ((v29 & 1) == 0)
      {
        v42 = *(v0 + 144);
        v43 = *(v0 + 112);
        v44 = v30;
        sub_1C4EF97A8();

        swift_willThrow();

        goto LABEL_25;
      }

      v31 = v30;

      v15 = 0;
      ++v14;
    }

    v36 = *(v0 + 144);
    v37 = *(v0 + 112);

    *(v0 + 80) = 0;
    v38 = [v36 finish_];
    v39 = *(v0 + 80);
    if (v38)
    {
      v40 = *(v0 + 96);
      v41 = v39;
      sub_1C4D0E5C0();
      goto LABEL_6;
    }

    v32 = *(v0 + 144);
    v46 = v39;
    sub_1C4EF97A8();

    goto LABEL_18;
  }

  v6 = *(v0 + 144);
  v7 = *(v0 + 112);

  *(v0 + 88) = 0;
  v8 = [v6 finish_];
  v9 = *(v0 + 88);
  if (!v8)
  {
    v32 = *(v0 + 144);
    v33 = v9;
    sub_1C4EF97A8();

LABEL_18:
    swift_willThrow();

LABEL_25:
    sub_1C43FBDA0();
    v45 = *MEMORY[0x1E69E9840];
    goto LABEL_26;
  }

  v10 = v9;
LABEL_6:

  sub_1C43FBDA0();
  v12 = *MEMORY[0x1E69E9840];
LABEL_26:

  return v11();
}

uint64_t sub_1C4C800D4()
{
  sub_1C43FBCD4();
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[16];
  v2 = v0[14];

  v3 = v0[19];
  sub_1C43FBDA0();
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

uint64_t sub_1C4C80168@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_1C4EFB768();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_1C4EFB758();
  v12 = sub_1C4EFBC18();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
    return sub_1C46AA374(v15);
  }

  else
  {
    v14 = v12;
    (*(v6 + 8))(v9, v5);
    result = sub_1C46AA374(v15);
    *a2 = v14;
  }

  return result;
}

uint64_t sub_1C4C802D0()
{
  sub_1C440962C((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C80334()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44E2E7C;

  return sub_1C4C7F63C();
}

id sub_1C4C803C4(void *a1, void *a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v6 = [v3 initWithContent:a1 metaContent:a2 error:v11];
  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

id sub_1C4C80498()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1C4F00EC8();

  v7[0] = 0;
  v2 = [v0 initWithJSONDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

id sub_1C4C80580()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1C4F01108();

  v7[0] = 0;
  v2 = [v0 initWithSourceItemIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

unint64_t sub_1C4C80668()
{
  result = qword_1EC0C5428;
  if (!qword_1EC0C5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5428);
  }

  return result;
}

uint64_t sub_1C4C806BC(void *a1)
{
  v1 = [a1 trackedOrderIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4C80730()
{
  sub_1C4418CA4();
  v3 = v2;
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C44058BC();
  v8 = sub_1C4EFF0C8();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v14 = sub_1C4435588();
  if (sub_1C44157D4(v14, v15, v8) == 1)
  {
    v16 = sub_1C43FC1C0();
    sub_1C446F170(v16, v17, &qword_1C4F105A0);
    v18 = sub_1C445EA78();
    sub_1C45922A8(v18);

    v19 = sub_1C43FD2BC();
    return sub_1C446F170(v19, v20, &qword_1C4F105A0);
  }

  else
  {
    (*(v11 + 32))(v1, v3, v8);
    v22 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_1C440A224();
    sub_1C4660EC4(v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);

    *v0 = v33;
  }

  return result;
}

uint64_t sub_1C4C808A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v6 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C442EDD4();
    sub_1C43FE5F8();
    sub_1C44E737C();

    *v4 = v17;
  }

  else
  {
    v8 = *v4;
    v9 = sub_1C445FAA8(a3, a4);
    if (v10)
    {
      v11 = v9;
      v12 = *v5;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C442EDD4();
      v14 = *(v13 + 24);
      sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
      sub_1C4F02458();
      v15 = *(*(v17 + 48) + 16 * v11 + 8);

      v16 = *(*(v17 + 56) + 16 * v11 + 8);
      sub_1C4F02478();

      *v5 = v17;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1C4C809F8()
{
  sub_1C4404078();
  v3 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C4402FE0();
  v8 = type metadata accessor for EntityMatch(v7);
  v9 = sub_1C43FBCE0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C44058BC();
  if (sub_1C44157D4(v1, 1, v12) == 1)
  {
    v13 = sub_1C440A9B8();
    sub_1C446F170(v13, v14, &qword_1C4F1E7C8);
    sub_1C4592384();
    v15 = sub_1C4EFF0C8();
    sub_1C43FD3F8(v15);
    (*(v16 + 8))(v0);
    return sub_1C446C11C(v2);
  }

  else
  {
    sub_1C440A9B8();
    sub_1C4C8C1C0();
    v18 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *v1;
    sub_1C46616C8();
    *v1 = v21;
    v19 = sub_1C4EFF0C8();
    sub_1C43FD3F8(v19);
    return (*(v20 + 8))(v0);
  }
}

void sub_1C4C80B90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1C441D670(a1, v14);
    v5 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C442EDD4();
    sub_1C4661C40();
    *v2 = v13;
  }

  else
  {
    sub_1C446F170(a1, &qword_1EC0C5450, &qword_1C4F61358);
    v6 = *v2;
    v7 = sub_1C457ADD8(a2);
    if (v8)
    {
      v9 = v7;
      v10 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C442EDD4();
      v12 = *(v11 + 24);
      sub_1C456902C(&qword_1EC0BA750, &qword_1C4F61360);
      sub_1C4F02458();
      sub_1C441D670((*(v13 + 56) + 40 * v9), v14);
      sub_1C456902C(&qword_1EC0C5458, &qword_1C4F61368);
      sub_1C45A2528();
      sub_1C4F02478();
      *v3 = v13;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    sub_1C446F170(v14, &qword_1EC0C5450, &qword_1C4F61358);
  }
}

uint64_t sub_1C4C80CE8()
{
  sub_1C4404078();
  v4 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402FE0();
  v8 = sub_1C4EF9D38();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v14 = sub_1C4435588();
  if (sub_1C44157D4(v14, v15, v8) == 1)
  {
    v16 = sub_1C440A9B8();
    sub_1C446F170(v16, v17, &unk_1C4F124A0);
    sub_1C45924C4();
    v18 = sub_1C4EFF0C8();
    sub_1C43FD3F8(v18);
    (*(v19 + 8))(v0);
    return sub_1C446C11C(v2);
  }

  else
  {
    (*(v11 + 32))(v3, v1, v8);
    v21 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1C466207C(v3, v0, isUniquelyReferenced_nonNull_native, v23, v24, v25, v26, v27, v30, *v1, v32, v33);
    *v1 = v31;
    v28 = sub_1C4EFF0C8();
    sub_1C43FD3F8(v28);
    return (*(v29 + 8))(v0);
  }
}

uint64_t sub_1C4C8107C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1C456902C(&qword_1EC0C5448, &unk_1C4F61348);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  v12 = sub_1C456902C(&qword_1EC0B8588, &qword_1C4F0E310);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  if (sub_1C44157D4(a1, 1, v14) == 1)
  {
    sub_1C446F170(a1, &qword_1EC0C5448, &unk_1C4F61348);
    sub_1C45927D0(a2, a3);

    return sub_1C446F170(v11, &qword_1EC0C5448, &unk_1C4F61348);
  }

  else
  {
    sub_1C44CDA7C();
    v16 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_1C466288C();

    *v4 = v18;
  }

  return result;
}

void sub_1C4C81220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1C441D670(a1, v14);
    v5 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1C46629C4();
    *v2 = v12;
  }

  else
  {
    sub_1C446F170(a1, &qword_1EC0C5460, &unk_1C4F61370);
    v6 = *v2;
    v7 = sub_1C457B724(a2);
    if (v8)
    {
      v9 = v7;
      v10 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v11 = *(*v3 + 24);
      sub_1C456902C(&qword_1EC0BA758, &qword_1C4F14690);
      sub_1C4F02458();
      sub_1C441D670((*(v13 + 56) + 40 * v9), v14);
      sub_1C456902C(&qword_1EC0C48F0, &qword_1C4F61380);
      sub_1C4C8BF98();
      sub_1C4F02478();
      *v3 = v13;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    sub_1C446F170(v14, &qword_1EC0C5460, &unk_1C4F61370);
  }
}

void sub_1C4C81380(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1C441D670(a1, v14);
    v5 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1C4662D08();
    *v2 = v12;
  }

  else
  {
    sub_1C446F170(a1, &qword_1EC0C5438, &qword_1C4F61338);
    v6 = *v2;
    v7 = sub_1C444F264(a2);
    if (v8)
    {
      v9 = v7;
      v10 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v11 = *(*v3 + 24);
      sub_1C456902C(&qword_1EC0BA6F0, &qword_1C4F61340);
      sub_1C4F02458();
      sub_1C441D670((*(v13 + 56) + 40 * v9), v14);
      sub_1C456902C(&qword_1EC0C5430, &qword_1C4F61330);
      sub_1C4C8A288();
      sub_1C4F02478();
      *v3 = v13;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    sub_1C446F170(v14, &qword_1EC0C5438, &qword_1C4F61338);
  }
}

uint64_t sub_1C4C814E0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1C441D670(a1, v11);
    v4 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    sub_1C4662E0C();
    *v2 = v10;
    v5 = sub_1C4EF98F8();
    sub_1C43FD3F8(v5);
    return (*(v6 + 8))(a2);
  }

  else
  {
    sub_1C446F170(a1, &qword_1EC0C5480, &qword_1C4F613C8);
    sub_1C45928B0(v11, a2);
    v8 = sub_1C4EF98F8();
    sub_1C43FD3F8(v8);
    (*(v9 + 8))(a2);
    return sub_1C446F170(v11, &qword_1EC0C5480, &qword_1C4F613C8);
  }
}

uint64_t sub_1C4C815F0()
{
  sub_1C4418CA4();
  v1 = sub_1C456902C(&qword_1EC0C5478, &qword_1C4F613C0);
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C44058BC();
  v5 = _s15NameAndRequestsVMa();
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = sub_1C4435588();
  if (sub_1C44157D4(v9, v10, v11) == 1)
  {
    v12 = sub_1C43FC1C0();
    sub_1C446F170(v12, v13, &qword_1C4F613C0);
    v14 = sub_1C445EA78();
    sub_1C45929DC(v14);

    v15 = sub_1C43FD2BC();
    return sub_1C446F170(v15, v16, &qword_1C4F613C0);
  }

  else
  {
    sub_1C43FC1C0();
    sub_1C4C8C1C0();
    v18 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C440A224();
    sub_1C4662F4C();

    *v0 = v19;
  }

  return result;
}

uint64_t sub_1C4C81734(uint64_t *a1)
{
  v2 = *(sub_1C456902C(&qword_1EC0B9190, &qword_1C4F0EC90) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B150(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1C4C8A328(v7);
  *a1 = v3;
  return result;
}

uint64_t static ViewGeneration.ViewClients.sharedViewClients(for:)()
{
  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C4417A50();
    swift_once();
  }

  return sub_1C44E7FAC();
}

double ViewGeneration.ViewClients.anyFeatureViewClient()@<D0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  v4 = sub_1C445E5B0(sub_1C4BAFBD8, 0);
  if (v5)
  {
    sub_1C4C0C2D8(v4, v5, &v8);

    v6 = v9;
    *a1 = v8;
    *(a1 + 16) = v6;
    result = *&v10;
    *(a1 + 24) = v10;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1C4C8190C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1C4F012D8();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_1C4F01448();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C819E0(uint64_t a1)
{
  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C4417A50();
    a1 = swift_once();
  }

  v1 = *(qword_1EDE2E008 + 16);
  MEMORY[0x1EEE9AC00](a1);

  os_unfair_lock_lock((v1 + 24));
  sub_1C4C8C1A4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1C4C81ADC(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1C4409678(a1, v3);
  v5 = sub_1C456902C(&qword_1EC0C43A0, &qword_1C4F58C10);
  v6 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  result = sub_1C4C81C04(sub_1C4C8C184, v1, v3, v5, v6, v4, MEMORY[0x1E69E7288], &v8);
  if (!v2)
  {
    return sub_1C4BA051C(result);
  }

  return result;
}

uint64_t sub_1C4C81BA8()
{
  sub_1C43FBCD4();
  sub_1C440962C((v0 + 16));
  v1 = *(v0 + 88);
  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C4C81C04(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v9 = v8;
  v63 = a2;
  v64 = a4;
  v62 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v15 = *(v57 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = a5;
  v51 = &v45 - v17;
  v48 = *(a5 - 8);
  v18 = *(v48 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v60 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v58 = &v45 - v21;
  v22 = sub_1C4F01F48();
  v46 = *(v22 - 8);
  v47 = v22;
  v23 = *(v46 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v45 - v28;
  v30 = *(*(a4 - 1) + 64);
  v31 = MEMORY[0x1EEE9AC00](v27);
  v59 = &v45 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v56 = *(a3 - 8);
  v34 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v55 = &v45 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a6;
  v65 = swift_getAssociatedTypeWitness();
  v52 = *(v65 - 8);
  v36 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v38 = &v45 - v37;
  v39 = sub_1C4F01488();
  v66 = sub_1C4F02388();
  v61 = sub_1C4F02398();
  sub_1C4F02338();
  (*(v56 + 16))(v55, v53, a3);
  v64 = v38;
  v56 = a3;
  result = sub_1C4F01478();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v57 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1C4F01FA8();
      result = sub_1C44157D4(v29, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v62(v29, v58);
      if (v9)
      {
        (*(v52 + 8))(v64, v65);

        (*(v48 + 32))(v49, v58, v50);
        return (*v41)(v29, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v41)(v29, AssociatedTypeWitness);
      sub_1C4F02378();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v42 = (v57 + 32);
  v43 = (v57 + 8);
  v44 = v51;
  while (1)
  {
    sub_1C4F01FA8();
    if (sub_1C44157D4(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v52 + 8))(v64, v65);
      (*(v46 + 8))(v26, v47);
      return v66;
    }

    (*v42)(v44, v26, AssociatedTypeWitness);
    v62(v44, v60);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v43)(v44, AssociatedTypeWitness);
    sub_1C4F02378();
  }

  (*v43)(v44, AssociatedTypeWitness);
  (*(v52 + 8))(v64, v65);

  return (*(v48 + 32))(v49, v60, v50);
}

void sub_1C4C82270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  sub_1C43FE96C();
  v62 = v11;
  v66 = v12;
  v59 = v14;
  v60 = v13;
  v58 = v15;
  v17 = v16;
  v18 = sub_1C4F00A58();
  v19 = sub_1C43FCDF8(v18);
  v63 = v20;
  v64 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v25 = v24 - v23;
  v26 = sub_1C4EF98F8();
  v27 = sub_1C43FCDF8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBD08();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v56 - v36;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v61 = v25;
  v38 = sub_1C4F00978();
  sub_1C442B738(v38, qword_1EDDFECB8);
  v39 = sub_1C4F00968();
  v40 = sub_1C4F01CB8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v57 = v26;
    v42 = v41;
    v43 = swift_slowAlloc();
    v56 = v37;
    v44 = v43;
    v65 = v43;
    *v42 = 136315138;
    v45 = sub_1C446A060(v66);
    v47 = v34;
    v48 = v17;
    v49 = sub_1C441D828(v45, v46, &v65);

    *(v42 + 4) = v49;
    v17 = v48;
    v34 = v47;
    _os_log_impl(&dword_1C43F8000, v39, v40, "%s: whileLocked called.", v42, 0xCu);
    sub_1C440962C(v44);
    v37 = v56;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v26 = v57;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  (*(v29 + 16))(v37, v17, v26);
  sub_1C446E1BC();
  sub_1C4EF98E8();
  v50 = *(v29 + 8);
  v50(v34, v26);
  v51 = v61;
  v52 = sub_1C43FBC98();
  v53 = MEMORY[0x1C693F750](v52);
  MEMORY[0x1EEE9AC00](v53);
  *(&v56 - 2) = 0x22000000002;
  *(&v56 - 2) = 16777600;
  v54 = v62;
  sub_1C4F00A48();
  if (v54)
  {
    (*(v63 + 8))(v51, v64);
  }

  else
  {
    v55 = (*(v63 + 8))(v51, v64);
    v58(v55);
    sub_1C4999D88(a11, v66);
  }

  v50(v37, v26);
  sub_1C43FBC80();
}

uint64_t sub_1C4C82624@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v51 = a4;
  v44 = a5;
  v45 = a3;
  v43 = a2;
  v6 = sub_1C4F00A58();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C4EF98F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v46 = v9;
  v18 = sub_1C4F00978();
  sub_1C442B738(v18, qword_1EDDFECB8);
  v19 = sub_1C4F00968();
  v20 = sub_1C4F01CB8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v42 = v10;
    v22 = v21;
    v23 = swift_slowAlloc();
    v41 = v17;
    v24 = v23;
    v50 = v23;
    *v22 = 136315138;
    v25 = sub_1C446A060(v51);
    v27 = v15;
    v28 = a1;
    v29 = sub_1C441D828(v25, v26, &v50);

    *(v22 + 4) = v29;
    a1 = v28;
    v15 = v27;
    _os_log_impl(&dword_1C43F8000, v19, v20, "%s: whileLocked called.", v22, 0xCu);
    sub_1C440962C(v24);
    v17 = v41;
    MEMORY[0x1C6942830](v24, -1, -1);
    v30 = v22;
    v10 = v42;
    MEMORY[0x1C6942830](v30, -1, -1);
  }

  (*(v11 + 16))(v17, a1, v10);
  sub_1C446E1BC();
  v31 = sub_1C4EF98E8();
  v33 = v32;
  v34 = *(v11 + 8);
  v34(v15, v10);
  v35 = v46;
  v36 = MEMORY[0x1C693F750](v31, v33);
  MEMORY[0x1EEE9AC00](v36);
  *(&v41 - 2) = 0x22000000002;
  *(&v41 - 2) = 16777600;
  v37 = v47;
  sub_1C4F00A48();
  if (v37)
  {
    (*(v48 + 8))(v35, v49);
  }

  else
  {
    v38 = (*(v48 + 8))(v35, v49);
    v39 = v52;
    v43(v38);
    sub_1C4999D88(v39, v51);
  }

  return (v34)(v17, v10);
}

uint64_t sub_1C4C82A1C(uint64_t *a1)
{
  v2 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = sub_1C4EFF0C8();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  sub_1C44347EC();
  if (swift_dynamicCast())
  {
    sub_1C43FF010();
    sub_1C440BAA8(v21, v22, v23, v24);
    sub_1C440962C(a1);
    (*(v15 + 32))(v20, v11, v12);
LABEL_11:
    v29 = *(v15 + 32);
    v30 = sub_1C4402CD0();
    v31(v30);
    goto LABEL_12;
  }

  sub_1C43FF010();
  sub_1C440BAA8(v25, v26, v27, v28);
  sub_1C446F170(v11, &unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C44347EC();
  if ((sub_1C4430308() & 1) == 0)
  {
    sub_1C44347EC();
    if (sub_1C4430308())
    {
      goto LABEL_10;
    }

    sub_1C44347EC();
    if (sub_1C4430308())
    {
      goto LABEL_10;
    }

    sub_1C44347EC();
    if (sub_1C4430308())
    {
      if ((v37 & 0x8000000000000000) == 0)
      {
LABEL_10:
        sub_1C4EFF0B8();
        sub_1C440962C(a1);
        goto LABEL_11;
      }

      __break(1u);
    }

    sub_1C440962C(a1);
    goto LABEL_12;
  }

  sub_1C4EFF0D8();
  sub_1C440962C(a1);
  if (sub_1C44157D4(v8, 1, v12) != 1)
  {
    (*(v15 + 32))(v20, v8, v12);
    goto LABEL_11;
  }

  sub_1C446F170(v8, &unk_1EC0BA0E0, &qword_1C4F105A0);
LABEL_12:
  sub_1C43FF010();
  return sub_1C440BAA8(v32, v33, v34, v35);
}

void sub_1C4C82CC8()
{
  sub_1C43FE96C();
  v3 = v0;
  v31 = v4;
  v6 = v5;
  v8 = v7;
  v33 = *MEMORY[0x1E69E9840];
  v9 = sub_1C4EF98F8();
  v10 = sub_1C43FCDF8(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v13 = OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_vectorDBartifacts;
  sub_1C4441A18();
  v14 = *(v0 + v13);
  if (*(v14 + 16) && (v15 = sub_1C445FAA8(v8, v6), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1C4EF9888();
    v18 = [objc_opt_self() defaultManager];
    v19 = sub_1C4EF9868();
    v20 = sub_1C446934C(v18, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_);

    if (v20)
    {
      v21 = 0;
      v31(v2);
      if (v1)
      {
        v22 = sub_1C443F3EC();
        v23(v22);
      }

      else
      {
        sub_1C4403138();

        v28 = *(v3 + v13);
        swift_isUniquelyReferenced_nonNull_native();
        v32 = *(v3 + v13);
        sub_1C4662864();
        *(v3 + v13) = v32;
        swift_endAccess();

        v29 = sub_1C443F3EC();
        v30(v29);
      }
    }

    else
    {
      v24 = 0;
      sub_1C4EF97A8();

      swift_willThrow();
      v25 = sub_1C443F3EC();
      v26(v25);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  sub_1C43FBC80();
}

void sub_1C4C82F48()
{
  sub_1C43FE96C();
  v107 = v0;
  *(&v96 + 1) = v2;
  *&v96 = v3;
  v109 = v4;
  LODWORD(v110) = v5;
  v7 = v6;
  v9 = v8;
  v116 = *MEMORY[0x1E69E9840];
  v101 = sub_1C4EF98F8();
  v10 = sub_1C43FCDF8(v101);
  v99 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  v100 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  v104 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD230();
  v103 = v19;
  sub_1C43FBE44();
  v98 = sub_1C4EFA608();
  v20 = sub_1C43FCDF8(v98);
  v97 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v105 = v25 - v24;
  v26 = sub_1C456902C(&qword_1EC0C5448, &unk_1C4F61348);
  v27 = sub_1C43FBD18(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v91 - v31;
  v108 = sub_1C456902C(&qword_1EC0B8588, &qword_1C4F0E310);
  v33 = sub_1C43FBCE0(v108);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBD08();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD230();
  v106 = v40;
  v41 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v41);
  v43 = *(v42 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C44058BC();
  *&v115 = v9;
  *(&v115 + 1) = v7;
  v113 = 46;
  v114 = 0xE100000000000000;
  v45 = sub_1C4EF9E48();
  sub_1C440BAA8(v1, 1, 1, v45);
  v94 = sub_1C4415EA8();
  sub_1C4F02028();
  v47 = v46;
  v48 = sub_1C43FE99C();
  sub_1C446F170(v48, v49, &unk_1C4F17610);
  v102 = v7;
  if (v47)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v50 = v9;
  }

  else
  {
    v50 = v9;
    v51 = sub_1C4F01448();
    v9 = MEMORY[0x1C693FEF0](v51);
    v7 = v52;
  }

  *&v115 = v9;
  *(&v115 + 1) = v7;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  if (v110)
  {
    v53 = 1702195828;
  }

  else
  {
    v53 = 0x65736C6166;
  }

  if (v110)
  {
    v54 = 0xE400000000000000;
  }

  else
  {
    v54 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v53, v54);

  v55 = v115;
  v56 = OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_artifacts;
  v57 = v109;
  sub_1C4441A18();
  v58 = *(v57 + v56);
  v92 = v55;
  sub_1C44E9A8C(v55, *(&v55 + 1), v58);
  v59 = v108;
  if (sub_1C44157D4(v32, 1, v108) == 1)
  {
    sub_1C446F170(v32, &qword_1EC0C5448, &unk_1C4F61348);
    swift_endAccess();
    sub_1C4EFA598();
    v60 = sub_1C4EFA528();

    if (v60)
    {
      v61 = *MEMORY[0x1E698E928];
      sub_1C4F01138();
      sub_1C43FF010();
      v62 = v107;
      sub_1C4EFA5E8();
      if (v62)
      {
      }

      else
      {

        sub_1C4EFA5F8();
        sub_1C4EF98A8();
        v66 = sub_1C4EF9858();
        if (v110)
        {
          *&v115 = v66;
          *(&v115 + 1) = v67;
          v113 = 0x336574696C71732ELL;
          v114 = 0xE800000000000000;
          v111 = 0xD000000000000014;
          v112 = 0x80000001C4FBE540;
          sub_1C446047C();
        }

        v68 = v99;
        v69 = v100;
        v70 = v104;
        sub_1C4EF9888();

        v71 = [objc_opt_self() defaultManager];
        v72 = sub_1C4EF9868();
        *&v115 = 0;
        v73 = sub_1C446934C(v71, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_);

        v74 = v115;
        if (v73)
        {
          v110 = v71;
          (*(v68 + 16))(v95, v69, v101);
          v115 = v96;
          type metadata accessor for ViewDatabaseArtifact();
          sub_1C43FBDBC();
          swift_allocObject();
          v75 = v74;
          sub_1C4BC40B8();
          v81 = v80;
          v107 = *(v108 + 48);
          v82 = v97;
          v83 = v93;
          v84 = v98;
          (*(v97 + 16))(v93, v105, v98);
          sub_1C440BAA8(v83, 0, 1, v84);
          *(v83 + v107) = v81;
          sub_1C43FF010();
          sub_1C440BAA8(v85, v86, v87, v88);
          sub_1C4403138();

          sub_1C4C8107C(v83, v92, *(&v55 + 1));
          swift_endAccess();

          v89 = *(v68 + 8);
          v90 = v101;
          v89(v100, v101);
          v89(v104, v90);
          v89(v103, v90);
          (*(v82 + 8))(v105, v84);
        }

        else
        {
          v76 = v115;

          sub_1C4EF97A8();

          swift_willThrow();
          v77 = *(v68 + 8);
          v78 = v101;
          v77(v69, v101);
          v77(v70, v78);
          v77(v103, v78);
          (*(v97 + 8))(v105, v98);
        }
      }
    }

    else
    {

      sub_1C450B034();
      swift_allocError();
      v64 = v102;
      *v65 = v50;
      *(v65 + 8) = v64;
      *(v65 + 16) = xmmword_1C4F59250;
      *(v65 + 32) = 0;
      *(v65 + 40) = 0xE000000000000000;
      *(v65 + 48) = v115;
      *(v65 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  else
  {
    sub_1C4422530();
    sub_1C44CDA7C();
    swift_endAccess();

    sub_1C4422530();
    sub_1C44CDA7C();
    v63 = *(v38 + *(v59 + 48));
    sub_1C446F170(v38, &qword_1EC0C4FF8, &qword_1C4F5E680);
  }

  v79 = *MEMORY[0x1E69E9840];
  sub_1C43FBC80();
}

void sub_1C4C83880()
{
  sub_1C43FE96C();
  v3 = v2;
  v30 = v4;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = _s10ViewConfigVMa(0);
  v13 = sub_1C43FBD18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v19 = *(v0 + 16);
  sub_1C443A738(v11, v9, v20, v21, v22, v23, v24, v25);
  if (!v1)
  {
    v29 = &v29;
    v27 = *(v5 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_lockbox);
    MEMORY[0x1EEE9AC00](v26);
    *(&v29 - 6) = v5;
    *(&v29 - 5) = v18;
    *(&v29 - 4) = v11;
    *(&v29 - 3) = v9;
    *(&v29 - 16) = v7 & 1;
    sub_1C456902C(v30, v3);
    sub_1C43FE990();
    sub_1C4EFFA58();
    sub_1C43FE0F4();
    sub_1C443C1D8(v18, v28);
  }

  sub_1C43FBC80();
}

void sub_1C4C839B4()
{
  sub_1C43FE96C();
  v44 = v0;
  v3 = v2;
  v5 = v4;
  v49 = v6;
  v7 = _s6ConfigVMa();
  v8 = sub_1C43FBD18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v13 = (v11 - v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  v20 = type metadata accessor for Configuration();
  v21 = sub_1C43FBD18(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v26 = v25 - v24;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0x7247656C62617473;
  *(inited + 40) = 0xEB00000000687061;
  *(inited + 48) = 0x617247746E657665;
  *(inited + 56) = 0xEA00000000006870;
  v28 = v5[1];
  *&v48[0] = *v5;
  *(&v48[0] + 1) = v28;
  v45[2] = v48;
  v29 = sub_1C44CE068(sub_1C4579E44, v45, inited);
  swift_setDeallocating();
  sub_1C44DEE40();
  if (v29)
  {
    v30 = *(v3 + 24);
    if (v30)
    {
      v49[3] = _s19GraphClientProviderCMa();
      v49[4] = &off_1F4403570;
      *v49 = v30;
    }

    else
    {
      sub_1C44098F0(v44 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v26);
      v33 = type metadata accessor for GraphStore();
      sub_1C44099C4(v33);
      v34 = GraphStore.init(config:)(v26);
      if (!v1)
      {
        v35 = v34;
        v36 = _s19GraphClientProviderCMa();
        sub_1C43FBDBC();
        v37 = swift_allocObject();
        *(v37 + 16) = v35;
        v38 = *(v3 + 24);
        *(v3 + 24) = v37;

        v49[3] = v36;
        v49[4] = &off_1F4403570;
        *v49 = v37;
      }
    }
  }

  else
  {
    sub_1C4438D00(v19);
    v31 = *v19;
    sub_1C4432D60();
    sub_1C443C1D8(v19, v32);
    sub_1C4441A18();
    sub_1C465CBBC(v31, *(v3 + 16));
    if (v47)
    {
      sub_1C441D670(&v46, v48);
    }

    else
    {
      sub_1C446F170(&v46, &qword_1EC0C5460, &unk_1C4F61370);
      swift_endAccess();
      sub_1C4438D00(v17);
      v39 = *v17;
      sub_1C4432D60();
      sub_1C443C1D8(v17, v40);
      sub_1C4C7B2D4(v48, v44 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v39);
      if (v1)
      {
        goto LABEL_10;
      }

      sub_1C4438D00(v13);
      v41 = *v13;
      sub_1C4432D60();
      sub_1C443C1D8(v13, v42);
      sub_1C442E860(v48, &v46);
      sub_1C4403138();
      sub_1C4C81220(&v46, v41);
    }

    swift_endAccess();
    sub_1C441D670(v48, v49);
  }

LABEL_10:
  sub_1C43FBC80();
}

uint64_t sub_1C4C83D3C(uint64_t a1)
{
  v2 = a1 + 64;
  v1 = *(a1 + 64);
  v3 = sub_1C441E82C(a1);
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v51 = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  v37 = v8;
  for (i = v2; v6; v8 = v37)
  {
LABEL_6:
    v12 = __clz(__rbit64(v6)) | (v9 << 6);
    v13 = (*(v51 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1C442E860(*(v51 + 56) + 40 * v12, v48);
    v47[0] = v15;
    v47[1] = v14;
    v16 = v49;
    v17 = v50;
    sub_1C4409678(v48, v49);
    v18 = *(v17 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18(&v45, v16, v17);
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    sub_1C456902C(&qword_1EC0C4D88, &qword_1C4F5E230);
    if (!swift_dynamicCast())
    {

      memset(v44, 0, sizeof(v44));
      sub_1C446F170(v44, &qword_1EC0C4868, &qword_1C4F5E220);
      sub_1C44DDE2C();
      sub_1C450B034();
      swift_allocError();
      *v35 = v39;
      *(v35 + 8) = v40;
      *(v35 + 16) = 0xD00000000000002DLL;
      *(v35 + 24) = 0x80000001C4FBE6E0;
      v36 = v43;
      *(v35 + 32) = v42;
      *(v35 + 48) = v36;
      *(v35 + 64) = 7;
      swift_willThrow();
      sub_1C440962C(v41);
      sub_1C446F170(v47, &qword_1EC0C4FA0, &qword_1C4F5E4B8);
      return v10;
    }

    sub_1C460986C(v44, v46);
    sub_1C44DDE2C();
    sub_1C4609884(v46, v44);
    swift_isUniquelyReferenced_nonNull_native();
    v45 = v10;
    v19 = sub_1C43FD388();
    v21 = sub_1C445FAA8(v19, v20);
    if (__OFADD__(v10[2], (v22 & 1) == 0))
    {
      goto LABEL_21;
    }

    v23 = v21;
    v24 = v22;
    sub_1C456902C(&qword_1EC0C54A8, &unk_1C4F614D0);
    if (sub_1C4F02458())
    {
      v25 = sub_1C43FD388();
      v27 = sub_1C445FAA8(v25, v26);
      v2 = i;
      if ((v24 & 1) != (v28 & 1))
      {
        goto LABEL_23;
      }

      v23 = v27;
      if (v24)
      {
LABEL_14:

        v10 = v45;
        v33 = (v45[7] + 48 * v23);
        sub_1C440962C(v33);
        sub_1C460986C(v44, v33);
        sub_1C440962C(v46);
        goto LABEL_15;
      }
    }

    else
    {
      v2 = i;
      if (v24)
      {
        goto LABEL_14;
      }
    }

    v10 = v45;
    v45[(v23 >> 6) + 8] |= 1 << v23;
    v29 = (v10[6] + 16 * v23);
    *v29 = v39;
    v29[1] = v40;
    sub_1C460986C(v44, (v10[7] + 48 * v23));
    sub_1C440962C(v46);
    v30 = v10[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_22;
    }

    v10[2] = v32;
LABEL_15:
    v6 &= v6 - 1;
    sub_1C440962C(v41);
    sub_1C446F170(v47, &qword_1EC0C4FA0, &qword_1C4F5E4B8);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v10;
    }

    v6 = *(v2 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4C84128(uint64_t a1, unint64_t a2)
{
  sub_1C4EFA598();
  if (sub_1C4EFA548())
  {
    goto LABEL_6;
  }

  sub_1C4EFA598();
  sub_1C4868210(a1, a2);
  if (v4)
  {
    v5 = sub_1C4F00FF8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19[4] = v5;
  v19[5] = v7;
  v19[0] = sub_1C4C8190C(1uLL, a1, a2);
  v19[1] = v8;
  v19[2] = v9;
  v19[3] = v10;
  sub_1C45D5468();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F01308();

  v11 = sub_1C4EFA548();

  if (v11)
  {
LABEL_6:
    sub_1C4EFA6E8();
    return sub_1C4EFA5D8();
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = sub_1C4CB19CC();
    if (v13 == 249)
    {
      if (qword_1EDDFD018 != -1)
      {
        swift_once();
      }

      v14 = sub_1C4F00978();
      sub_1C442B738(v14, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v15 = sub_1C4F00968();
      v16 = sub_1C4F01CD8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19[0] = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_1C441D828(a1, a2, v19);
        _os_log_impl(&dword_1C43F8000, v15, v16, "Could not attribute work to view: %s", v17, 0xCu);
        sub_1C440962C(v18);
        MEMORY[0x1C6942830](v18, -1, -1);
        MEMORY[0x1C6942830](v17, -1, -1);
      }

      sub_1C4F028D8();
      swift_getObjectType();
      sub_1C4F01988();
      swift_unknownObjectRelease();
      return swift_job_run_on_task_executor();
    }

    else
    {
      return sub_1C4CB30CC(v13);
    }
  }
}

uint64_t sub_1C4C84428(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  sub_1C4EFA598();
  sub_1C43FE99C();
  if (sub_1C4EFA548())
  {
    goto LABEL_5;
  }

  sub_1C4EFA598();
  v8 = sub_1C43FE99C();
  sub_1C4868210(v8, v9);
  if (v10)
  {
    sub_1C4F00FF8();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C8190C(1uLL, a1, a2);
  sub_1C45D5468();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F01308();

  v11 = sub_1C4EFA548();

  if (v11)
  {
LABEL_5:
    sub_1C43FC1C0();
    sub_1C4EFA6E8();
    sub_1C43FE99C();
    return sub_1C4EFA5D8();
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FE99C();
    v13 = sub_1C4CB19CC();
    if (v13 == 249)
    {
      if (qword_1EDDFD018 != -1)
      {
        sub_1C4400660();
      }

      v14 = sub_1C4F00978();
      sub_1C442B738(v14, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v15 = sub_1C4F00968();
      v16 = sub_1C4F01CD8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v17 = 136315138;
        v18 = sub_1C43FE99C();
        *(v17 + 4) = sub_1C441D828(v18, v19, v20);
        _os_log_impl(&dword_1C43F8000, v15, v16, "Could not attribute work to view: %s", v17, 0xCu);
        sub_1C440962C(v21);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      return a3();
    }

    else
    {
      return sub_1C4CB3CC0(a3, a4, v13);
    }
  }
}

uint64_t sub_1C4C846C4()
{
  v1 = v0;
  sub_1C4F02248();
  sub_1C43FDEF8();
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C43FDEF8();
  MEMORY[0x1C6940010](0xD000000000000010);
  MEMORY[0x1C6940010](v1[2], v1[3]);
  sub_1C43FDEF8();
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](v1[4], v1[5]);
  sub_1C43FDEF8();
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](v1[6], v1[7]);
  sub_1C43FDEF8();
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](v1[8], v1[9]);
  sub_1C43FDEF8();
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](v1[10], v1[11]);
  MEMORY[0x1C6940010](0x6553746F6F62202CLL, 0xEF203A6E6F697373);
  MEMORY[0x1C6940010](v1[12], v1[13]);
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C4C84844()
{
  sub_1C4404078();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v5 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v5 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v6 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v7 = v1[8] == v0[8] && v1[9] == v0[9];
  if (!v7 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  if (v1[10] == v0[10] && v1[11] == v0[11])
  {
    return 1;
  }

  return sub_1C4F02938();
}

void static ViewGeneration.start(configuration:)()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C4EF98F8();
  v5 = sub_1C43FCDF8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = type metadata accessor for Configuration();
  v9 = *(v1 + *(v8 + 20));
  if (qword_1EDDFEC88 != -1)
  {
    v19 = *(v1 + *(v8 + 20));
    v8 = swift_once();
    v9 = v19;
  }

  v10 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFEC90, v9), xmmword_1EDDFEC90));
  if (v10.i32[0] & v10.i32[1])
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660();
    }

    v11 = sub_1C4F00978();
    sub_1C442B738(v11, qword_1EDE2DDF8);
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CF8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C43F8000, v12, v13, "ViewGeneration: system is in no-op mode.", v14, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C43FE9F0();

    sub_1C44098F0(v15, v16);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    *&v18[-16] = v1;
    sub_1C4C82624(v1, sub_1C4C88E28, &v18[-32], 2, v3);
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C4C84D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4F00978();
  v6 = sub_1C442B738(v5, qword_1EDE2DDF8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "ViewMigration: Checking migration state for views", v9, 2u);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  if (qword_1EDDFF7A0 != -1)
  {
    swift_once();
  }

  result = sub_1C44273D4();
  if (!v2)
  {
    v17 = result;
    sub_1C4BB35B4(v11, v12, v13, v14, v15, v16, v74);
    sub_1C4C8C0AC(v74, v73);
    v72 = v6;
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CF8();
    sub_1C4C8C0E4(v74);
    v71 = a2;
    if (os_log_type_enabled(v18, v19))
    {
      v70 = v17;
      v20 = a1;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v76 = v22;
      *v21 = 136315138;
      sub_1C4C8C0AC(v74, v73);
      v23 = sub_1C4C846C4();
      v25 = v24;
      sub_1C4C8C0E4(v74);
      v26 = sub_1C441D828(v23, v25, &v76);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1C43F8000, v18, v19, "ViewMigration: Prev migration values: %s", v21, 0xCu);
      sub_1C440962C(v22);
      MEMORY[0x1C6942830](v22, -1, -1);
      v27 = v21;
      a1 = v20;
      v17 = v70;
      MEMORY[0x1C6942830](v27, -1, -1);
    }

    sub_1C4C85538();
    sub_1C4C8C0AC(v75, v73);
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CF8();
    sub_1C4C8C0E4(v75);
    v69 = a1;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v76 = v31;
      *v30 = 136315138;
      sub_1C4C8C0AC(v75, v73);
      v32 = sub_1C4C846C4();
      v34 = v33;
      sub_1C4C8C0E4(v75);
      v35 = sub_1C441D828(v32, v34, &v76);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1C43F8000, v28, v29, "ViewMigration: Curr migration values: %s", v30, 0xCu);
      sub_1C440962C(v31);
      MEMORY[0x1C6942830](v31, -1, -1);
      MEMORY[0x1C6942830](v30, -1, -1);
    }

    v36 = sub_1C4C85954();
    sub_1C4C8C0E4(v74);
    v37 = sub_1C4F00968();
    v38 = sub_1C4F01CF8();
    LODWORD(v70) = v36;
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v73[0] = v40;
      *v39 = 136315138;
      v68 = sub_1C4C85A88(v36);
      v42 = v41;
      v43 = sub_1C441D828(v68, v41, v73);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_1C43F8000, v37, v38, "ViewMigration: Migration option: %s", v39, 0xCu);
      sub_1C440962C(v40);
      MEMORY[0x1C6942830](v40, -1, -1);
      v44 = v39;
      v45 = v68;
      MEMORY[0x1C6942830](v44, -1, -1);
    }

    else
    {

      v45 = sub_1C4C85A88(v36);
      v42 = v46;
    }

    v47 = v69;
    if (v45 == 1885956979 && v42 == 0xE400000000000000)
    {
    }

    else
    {
      v49 = sub_1C4F02938();

      if ((v49 & 1) == 0)
      {
        v50 = sub_1C4C3DE1C(v69, v70);
        if (v50)
        {
          v70 = v42;
          v58 = sub_1C4F00968();
          v59 = sub_1C4F01CF8();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = v69;
            v61 = swift_slowAlloc();
            *v61 = 0;
            _os_log_impl(&dword_1C43F8000, v58, v59, "ViewMigration: Bringing up view clients", v61, 2u);
            v62 = v61;
            v47 = v60;
            MEMORY[0x1C6942830](v62, -1, -1);
          }

          if (qword_1EDDFF2A0 != -1)
          {
            swift_once();
          }

          v63 = sub_1C44E7FAC();
          sub_1C4C85B1C();
          v64 = *(v63 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_lockbox);
          sub_1C4EFFA58();
          sub_1C4949780();
          v65 = *(v17 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
          MEMORY[0x1EEE9AC00](v66);
          v67[2] = v17;
          v67[3] = v75;

          sub_1C446C37C(sub_1C4C8C114, v67);

          sub_1C4C8C0E4(v75);

          v42 = v70;
          goto LABEL_23;
        }
      }
    }

    sub_1C4C8C0E4(v75);
LABEL_23:
    v51 = *(*(v17 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
    sub_1C4EFAEB8();
    v52 = sub_1C4F00968();
    v53 = sub_1C4F01CF8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v73[0] = v55;
      *v54 = 136315138;
      v56 = sub_1C441D828(v45, v42, v73);

      *(v54 + 4) = v56;
      _os_log_impl(&dword_1C43F8000, v52, v53, "ViewMigration: Completed view migration [option: %s]", v54, 0xCu);
      sub_1C440962C(v55);
      MEMORY[0x1C6942830](v55, -1, -1);
      v57 = v54;
      v47 = v69;
      MEMORY[0x1C6942830](v57, -1, -1);
    }

    return sub_1C44098F0(v47, v71);
  }

  return result;
}

void sub_1C4C85538()
{
  sub_1C43FE96C();
  v2 = v1;
  v79 = *MEMORY[0x1E69E9840];
  v3 = sub_1C4F00DD8();
  v4 = sub_1C43FCDF8(v3);
  v74 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C4F00DC8();
  v12 = sub_1C43FCDF8(v11);
  v75 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v70 = v16;
  sub_1C43FD1D0();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v68 - v19;
  sub_1C4C85D5C(v18, v21, v22, v23, v24, v25, v26, v27, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
  v73 = v28;
  v76 = v29;
  sub_1C4C8689C();
  v72 = v30;
  v77 = v31;
  sub_1C4C86ACC();
  v71 = v32;
  v34 = v33;
  if (qword_1EDDFE3A8 != -1)
  {
    swift_once();
  }

  v35 = sub_1C4ABFA6C();
  if (v0)
  {
  }

  else
  {
    v68 = v11;
    v69 = v34;
    v36 = *(v35 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_lockedBox);
    os_unfair_lock_lock((v36 + 24));
    v37 = *(*(v36 + 16) + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    os_unfair_lock_unlock((v36 + 24));

    v38 = objc_opt_self();
    sub_1C4C8C130();
    v39 = sub_1C4F01658();

    v78 = 0;
    v40 = [v38 archivedDataWithRootObject:v39 requiringSecureCoding:0 error:&v78];

    v41 = v78;
    if (v40)
    {
      sub_1C4EF9A68();

      sub_1C441A948();
      sub_1C4C8C218(v42, 255, v43);
      sub_1C4415864();
      sub_1C4F00DB8();
      v44 = sub_1C4410CBC();
      sub_1C44344B8(v44, v45);
      v46 = sub_1C4410CBC();
      sub_1C4498FD8(v46, v47);
      v48 = sub_1C4410CBC();
      sub_1C4434000(v48, v49);
      sub_1C4415864();
      sub_1C4F00DA8();
      (*(v74 + 8))(v10, v3);
      v50 = v75;
      v51 = v70;
      (*(v75 + 16))(v70, v20, v68);
      sub_1C44D5F88(v51);
      sub_1C442F450();
      v74 = sub_1C4EF9A48();
      v70 = v52;
      v53 = sub_1C43FC1C0();
      sub_1C4434000(v53, v54);
      v55 = sub_1C4410CBC();
      sub_1C4434000(v55, v56);
      v57 = *(v50 + 8);
      v58 = sub_1C4422A94();
      v59(v58);
      v60 = sub_1C4BB39F0();
      v61 = v76;
      *v2 = v73;
      v2[1] = v61;
      v62 = v77;
      v2[2] = v72;
      v2[3] = v62;
      v63 = v69;
      v2[4] = v71;
      v2[5] = v63;
      v64 = v70;
      v2[6] = v74;
      v2[7] = v64;
      v2[8] = 12849;
      v2[9] = 0xE200000000000000;
      v2[10] = 52;
      v2[11] = 0xE100000000000000;
      v2[12] = v60;
      v2[13] = v65;
    }

    else
    {
      v66 = v41;

      sub_1C4EF97A8();

      swift_willThrow();
    }
  }

  v67 = *MEMORY[0x1E69E9840];
  sub_1C43FBC80();
}

uint64_t sub_1C4C85954()
{
  sub_1C4404078();
  v3 = *(v2 + 80);
  v4 = v1[11];
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v6 = v0[11];
  if (!v5)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      if ((v6 & 0xF00000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v0[10] & 0xFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_4;
    }

    return 2;
  }

LABEL_4:
  v7 = v3 == v0[10] && v4 == v6;
  if (!v7 && (sub_1C4F02938() & 1) == 0)
  {
    return 3;
  }

  v8 = v1[8] == v0[8] && v1[9] == v0[9];
  if (!v8 && (sub_1C4F02938() & 1) == 0)
  {
    return 2;
  }

  v9 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v9 && (sub_1C4F02938() & 1) == 0)
  {
    return 2;
  }

  v10 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v10 && (sub_1C4F02938() & 1) == 0)
  {
    return 2;
  }

  v11 = *v1 == *v0 && v1[1] == v0[1];
  result = 1;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {
    v12 = v1[12] == v0[12] && v1[13] == v0[13];
    if (v12 || (sub_1C4F02938() & 1) != 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4C85A88(char a1)
{
  result = 1885956979;
  switch(a1)
  {
    case 1:
      result = 0x6C616D726F6ELL;
      break;
    case 2:
      result = 0x6563726F66;
      break;
    case 3:
      result = 0x7261656C63;
      break;
    case 4:
      result = 0x654465746F6D6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4C85B1C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  v14[2] = sub_1C4C88230;
  v14[3] = 0;
  v14[4] = v1;
  result = sub_1C49A5858(sub_1C498DB0C, v14);
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  for (i = (result + 48); ; i += 3)
  {
    if (v6 == v5)
    {
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(i - 1);
    v8 = *i;
    swift_bridgeObjectRetain_n();
    v10._countAndFlagsBits = sub_1C43FE990();
    ViewGeneration.ViewClients.createArtifact(viewName:fullRebuild:)(v10, 0);

    if (v11 || (v12._countAndFlagsBits = sub_1C43FE990(), ViewGeneration.ViewClients.createArtifact(viewName:fullRebuild:)(v12, 1), v13))
    {
    }

    ++v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C85C50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DDF8);
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C43F8000, v6, v7, "ViewMigration: Storing new migration version values", v8, 2u);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  return sub_1C4BB38D0(a1, a3);
}

void sub_1C4C85D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v20;
  a20 = v21;
  v146 = sub_1C4F00DD8();
  v22 = sub_1C43FCDF8(v146);
  v145 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v143 = v27 - v26;
  sub_1C43FBE44();
  v148 = sub_1C4F00DC8();
  v28 = sub_1C43FCDF8(v148);
  v147 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD230();
  v144 = v33;
  sub_1C43FBE44();
  v151 = sub_1C4F01188();
  v34 = sub_1C43FCDF8(v151);
  v150 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBCC4();
  v149 = v39 - v38;
  v162 = sub_1C456902C(&qword_1EC0BA820, &unk_1C4F613D0);
  v40 = sub_1C43FBCE0(v162);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  v161 = v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  v160 = v45;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  v159 = v47;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  v158 = v49;
  v163 = sub_1C456902C(&qword_1EC0B9190, &qword_1C4F0EC90);
  sub_1C43FCDF8(v163);
  v157 = v50;
  v52 = *(v51 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v53);
  v170 = &v141 - v54;
  v55 = 0xE000000000000000;
  *&v173 = 0;
  *(&v173 + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(&v173, "bundleVersion:");
  HIBYTE(v173) = -18;
  v56 = sub_1C4BA1184();
  if (v57)
  {
    v55 = v57;
  }

  else
  {
    v56 = 0;
  }

  MEMORY[0x1C6940010](v56, v55);

  v58 = MEMORY[0x1E69E7CC0];
  sub_1C43FCB04();
  sub_1C443D664();
  v60 = v59;
  v61 = *(v59 + 24);
  if (*(v59 + 16) >= v61 >> 1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    sub_1C444B37C();
    sub_1C4BA32C0(&v173);
    v62 = *(&v173 + 1);
    if (*(&v173 + 1) >= 2uLL)
    {
      v63 = v173;
      v64 = v174;
      v65 = v175;
      v66 = v176;
      v67 = v177;
      *&v173 = 0x614874696D6D6F63;
      *(&v173 + 1) = 0xEB000000003A6873;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v63, v62);

      v68 = v173;
      v69 = v60;
      v70 = *(v60 + 16);
      v71 = v69;
      v72 = *(v69 + 24);
      v168 = v65;
      v169 = v64;
      if (v70 >= v72 >> 1)
      {
        sub_1C43FCFE8(v72);
        sub_1C443D664();
        v71 = v139;
      }

      *(v71 + 16) = v70 + 1;
      v73 = v71 + 16 * v70;
      v60 = v71;
      *(v73 + 32) = v68;
      *&v173 = 0;
      *(&v173 + 1) = 0xE000000000000000;
      sub_1C4F02248();

      *&v173 = 0xD000000000000012;
      *(&v173 + 1) = 0x80000001C4FBE670;
      v171 = v66;
      v172 = v67;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01198();
      sub_1C4C8C174(v63, v62);
      v74 = sub_1C4422A94();
      MEMORY[0x1C6940010](v74);

      sub_1C441434C();
      if (v76)
      {
        sub_1C43FF640(v75);
        sub_1C443D664();
        v60 = v140;
      }

      v58 = MEMORY[0x1E69E7CC0];
      sub_1C444B37C();
    }

    static VersionInfo.modificationDates.getter();
    v78 = v77;
    v79 = *(v77 + 16);
    if (!v79)
    {
      break;
    }

    v141 = v60;
    *&v173 = v58;
    sub_1C459F0D0();
    v80 = v173;
    v83 = sub_1C4703354(v78);
    v84 = 0;
    v85 = v78 + 64;
    v153 = v81;
    v152 = v78 + 72;
    v154 = v79;
    v155 = v78 + 64;
    v61 = &a16;
    v156 = v78;
    while ((v83 & 0x8000000000000000) == 0)
    {
      v61 = 1 << *(v78 + 32);
      if (v83 >= v61)
      {
        break;
      }

      v61 = *(v85 + 8 * (v83 >> 6));
      if ((v61 & (1 << v83)) == 0)
      {
        goto LABEL_39;
      }

      v61 = *(v78 + 36);
      if (v61 != v81)
      {
        goto LABEL_40;
      }

      v167 = 1 << v83;
      v168 = v83 >> 6;
      v165 = v84;
      v166 = v81;
      v164 = v82;
      v86 = v162;
      v87 = *(v162 + 48);
      v169 = v80;
      v88 = *(v78 + 56);
      v89 = *(*(v78 + 48) + v83);
      v90 = v158;
      *v158 = v89;
      v91 = sub_1C4EF9CD8();
      sub_1C43FCDF8(v91);
      v93 = v92;
      (*(v92 + 16))(&v90[v87], v88 + *(v94 + 72) * v83, v91);
      v95 = v159;
      *v159 = *v90;
      v96 = *(v93 + 32);
      v96(&v95[*(v86 + 48)], &v90[v87], v91);
      v97 = *(v163 + 48);
      v58 = v160;
      sub_1C44DDE2C();
      v98 = *(v86 + 48);
      *v170 = *v58;
      v99 = v161;
      sub_1C44CDA7C();
      v96(&v170[v97], (v99 + *(v86 + 48)), v91);
      v80 = v169;
      (*(v93 + 8))(&v58[v98], v91);
      *&v173 = v80;
      v101 = *(v80 + 16);
      v100 = *(v80 + 24);
      if (v101 >= v100 >> 1)
      {
        sub_1C43FCFE8(v100);
        sub_1C459F0D0();
        v80 = v173;
      }

      *(v80 + 16) = v101 + 1;
      v102 = v80 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v101;
      sub_1C44CDA7C();
      v78 = v156;
      v61 = *(v156 + 32);
      v103 = 1 << v61;
      if (v83 >= 1 << v61)
      {
        goto LABEL_41;
      }

      v85 = v155;
      v61 = *(v155 + 8 * v168);
      if ((v61 & v167) == 0)
      {
        goto LABEL_42;
      }

      if (*(v156 + 36) != v166)
      {
        goto LABEL_43;
      }

      v104 = v61 & (-2 << (v83 & 0x3F));
      if (v104)
      {
        v103 = __clz(__rbit64(v104)) | v83 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v105 = v168 << 6;
        v106 = v168 + 1;
        v107 = (v152 + 8 * v168);
        while (v106 < (v103 + 63) >> 6)
        {
          v108 = *v107++;
          v58 = v108;
          v105 += 64;
          ++v106;
          if (v108)
          {
            sub_1C440951C(v83, v166, v164 & 1);
            v103 = __clz(__rbit64(v58)) + v105;
            goto LABEL_29;
          }
        }

        sub_1C440951C(v83, v166, v164 & 1);
      }

LABEL_29:
      v82 = 0;
      v84 = v165 + 1;
      v83 = v103;
      v81 = v153;
      v61 = &a14;
      if (v165 + 1 == v154)
      {

        v60 = v141;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    sub_1C43FF640(v61);
    sub_1C443D664();
    v60 = v137;
  }

  v80 = MEMORY[0x1E69E7CC0];
LABEL_32:
  *&v173 = v80;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C81734(&v173);

  MEMORY[0x1C6940380](v173, v163);

  v109 = v149;
  sub_1C4F01178();
  sub_1C4422530();
  sub_1C4F01148();
  v111 = v110;

  (*(v150 + 8))(v109, v151);
  if (v111 >> 60 == 15)
  {
    v112 = 0;
    v113 = 0;
  }

  else
  {
    sub_1C441A948();
    sub_1C4C8C218(v114, 255, v115);
    sub_1C43FE5F8();
    sub_1C4F00DB8();
    v116 = sub_1C4402CD0();
    sub_1C44344B8(v116, v117);
    v118 = sub_1C4402CD0();
    sub_1C4498FD8(v118, v119);
    v120 = sub_1C4402CD0();
    sub_1C441DFEC(v120, v121);
    v122 = v144;
    sub_1C43FE5F8();
    sub_1C4F00DA8();
    v123 = *(v145 + 8);
    v124 = sub_1C43FE990();
    v125(v124);
    v126 = v147;
    v127 = v142;
    (*(v147 + 16))(v142, v122, v148);
    sub_1C44D5F88(v127);
    sub_1C442F450();
    v112 = sub_1C4EF9A48();
    v113 = v128;
    v129 = sub_1C43FC1C0();
    sub_1C4434000(v129, v130);
    v131 = sub_1C4402CD0();
    sub_1C441DFEC(v131, v132);
    v133 = *(v126 + 8);
    v134 = sub_1C4415864();
    v135(v134);
  }

  *&v173 = 0;
  *(&v173 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4FBE650);
  v171 = v112;
  v172 = v113;
  sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
  sub_1C4F02438();

  sub_1C441434C();
  if (v76)
  {
    sub_1C43FF640(v136);
    sub_1C443D664();
    v60 = v138;
  }

  sub_1C444B37C();
  *&v173 = v60;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  sub_1C4F01048();

  sub_1C43FBC98();
  sub_1C43FE9F0();
}

void sub_1C4C8689C()
{
  sub_1C43FBD3C();
  v23 = sub_1C4F001E8();
  v0 = sub_1C43FCDF8(v23);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  static VersionInfo.featureFlags.getter();
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v11 = v26;
    v13 = *(v2 + 16);
    v12 = v2 + 16;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v21 = *(v12 + 56);
    v22 = v13;
    do
    {
      v22(v7, v14, v23);
      sub_1C4C8C218(&qword_1EDDEFE88, 255, MEMORY[0x1E69A9D80]);
      sub_1C4F01578();
      (*(v12 - 8))(v7, v23);
      v16 = *(v26 + 16);
      v15 = *(v26 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C43FCFE8(v15);
        sub_1C44CD9C0();
      }

      *(v26 + 16) = v16 + 1;
      v17 = v26 + 16 * v16;
      *(v17 + 32) = v24;
      *(v17 + 40) = v25;
      v14 += v21;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v18 = MEMORY[0x1C6940380](v11, MEMORY[0x1E69E6158]);
  v20 = v19;

  MEMORY[0x1C6940010](v18, v20);

  sub_1C43FE9F0();
}

void sub_1C4C86ACC()
{
  sub_1C43FBD3C();
  v102 = *MEMORY[0x1E69E9840];
  v0 = sub_1C4F00DD8();
  v93 = sub_1C43FCDF8(v0);
  v94 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v93);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD230();
  sub_1C43FBE44();
  v92 = sub_1C4F00DC8();
  v5 = sub_1C43FCDF8(v92);
  v88 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  v90 = v11;
  sub_1C43FBE44();
  v91 = sub_1C4F01188();
  v12 = sub_1C43FCDF8(v91);
  v86 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v99[0] = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v19 = 0;
  v20 = v99[0];
  sub_1C441B588();
  sub_1C4430768();
  sub_1C447FA9C();
  sub_1C4423D30();
  sub_1C44415E8();
  sub_1C4450868();
  do
  {
    v31 = 0xE400000000000000;
    v32 = 1702259052;
    switch(byte_1F43D9F00[v19 + 32])
    {
      case 1:
        v32 = 1701736302;
        break;
      case 2:
        v31 = 0xE500000000000000;
        v32 = v25;
        break;
      case 3:
        v32 = 0xD000000000000013;
        v31 = 0x80000001C4F86260;
        break;
      case 4:
        v31 = 0xE600000000000000;
        v32 = v26;
        break;
      case 5:
        v32 = v27;
        goto LABEL_11;
      case 6:
        v32 = v28;
LABEL_11:
        v31 = v24;
        break;
      case 7:
        v31 = 0xE600000000000000;
        v32 = v29;
        break;
      case 8:
        v32 = v21;
        v31 = v30;
        break;
      case 9:
        v32 = v23;
        v31 = v22;
        break;
      case 0xA:
        v32 = 0xD000000000000013;
        v31 = 0x80000001C4F862C0;
        break;
      default:
        break;
    }

    v99[0] = v20;
    v34 = *(v20 + 16);
    v33 = *(v20 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_1C43FCFE8(v33);
      sub_1C44CD9C0();
      sub_1C4450868();
      sub_1C44415E8();
      sub_1C4423D30();
      sub_1C447FA9C();
      sub_1C4430768();
      sub_1C441B588();
      v26 = 0x796C6B656577;
      v25 = 0x796C696164;
      v24 = 0xEB00000000737275;
      v20 = v99[0];
    }

    ++v19;
    *(v20 + 16) = v34 + 1;
    v35 = v20 + 16 * v34;
    *(v35 + 32) = v32;
    *(v35 + 40) = v31;
  }

  while (v19 != 11);
  v99[0] = v20;

  sub_1C44ECB2C(v99);

  v36 = 0;
  v37 = v99[0];
  v96 = *(v99[0] + 16);
  v38 = (v86 + 8);
  v84 = (v94 + 8);
  v85 = (v88 + 16);
  v87 = (v88 + 8);
  v39 = v99[0] + 40;
  v95 = MEMORY[0x1E69E7CC0];
  v40 = v91;
  v83 = v99[0] + 40;
LABEL_18:
  v41 = (v39 + 16 * v36);
  while (v96 != v36)
  {
    if (v36 >= *(v37 + 16))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
    }

    v42 = *(v41 - 1);
    v43 = *v41;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01178();
    v44 = sub_1C4F01148();
    v46 = v45;
    (*v38)(v18, v40);
    if (v46 >> 60 != 15)
    {
      sub_1C441A948();
      sub_1C4C8C218(&qword_1EDDFEAD0, 255, v47);
      sub_1C4F00DB8();
      ++v36;
      switch(v46 >> 62)
      {
        case 1uLL:
          if (v44 >> 32 < v44)
          {
            goto LABEL_45;
          }

          if (!sub_1C4EF9538() || !__OFSUB__(v44, sub_1C4EF9568()))
          {
            goto LABEL_35;
          }

          goto LABEL_48;
        case 2uLL:
          v48 = *(v44 + 16);
          v80 = *(v44 + 24);

          if (sub_1C4EF9538() && __OFSUB__(v48, sub_1C4EF9568()))
          {
            goto LABEL_47;
          }

          if (__OFSUB__(v80, v48))
          {
            goto LABEL_46;
          }

LABEL_35:
          sub_1C4EF9558();
LABEL_36:
          sub_1C4F00D98();
          sub_1C441DFEC(v44, v46);
          sub_1C4F00DA8();
          v49 = *v84;
          v50 = sub_1C43FC1C0();
          v51(v50);
          v100 = v92;
          v101 = sub_1C4C8C218(&qword_1EDDFEAD8, 255, MEMORY[0x1E69663E0]);
          v52 = sub_1C4422F90(v99);
          (*v85)(v52, v90, v92);
          sub_1C4409678(v99, v100);
          sub_1C4EF9688();
          sub_1C440962C(v99);
          v53 = sub_1C4EF9A48();
          v89 = v54;
          sub_1C4434000(v97, v98);

          sub_1C441DFEC(v44, v46);
          (*v87)(v90, v92);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = *(v95 + 16);
            sub_1C443D664();
            v95 = v59;
          }

          v56 = *(v95 + 16);
          v55 = *(v95 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_1C43FF640(v55);
            sub_1C443D664();
            v95 = v60;
          }

          *(v95 + 16) = v56 + 1;
          v57 = v95 + 16 * v56;
          *(v57 + 32) = v53;
          *(v57 + 40) = v89;
          v40 = v91;
          v39 = v83;
          break;
        case 3uLL:
          memset(v99, 0, 14);
          goto LABEL_36;
        default:
          v99[0] = v44;
          LOWORD(v99[1]) = v46;
          BYTE2(v99[1]) = BYTE2(v46);
          BYTE3(v99[1]) = BYTE3(v46);
          BYTE4(v99[1]) = BYTE4(v46);
          BYTE5(v99[1]) = BYTE5(v46);
          goto LABEL_36;
      }

      goto LABEL_18;
    }

    v41 += 2;
    ++v36;
  }

  v99[0] = v95;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  sub_1C4F01048();

  sub_1C4F01178();
  sub_1C4F01148();
  v62 = v61;

  (*v38)(v18, v40);
  if (v62 >> 60 != 15)
  {
    sub_1C441A948();
    sub_1C4C8C218(v63, 255, v64);
    sub_1C43FE5F8();
    sub_1C4F00DB8();
    v65 = sub_1C4402CD0();
    sub_1C44344B8(v65, v66);
    v67 = sub_1C4402CD0();
    sub_1C4498FD8(v67, v68);
    v69 = sub_1C4402CD0();
    sub_1C441DFEC(v69, v70);
    sub_1C43FE5F8();
    sub_1C4F00DA8();
    v71 = *v84;
    v72 = sub_1C43FE990();
    v73(v72);
    (*v85)(v81, v82, v92);
    v74 = sub_1C44D5F88(v81);
    v76 = v75;
    sub_1C4EF9A48();
    sub_1C4434000(v74, v76);
    v77 = sub_1C4402CD0();
    sub_1C441DFEC(v77, v78);
    (*v87)(v82, v92);
  }

  v79 = *MEMORY[0x1E69E9840];
  sub_1C440A9B8();
  sub_1C43FE9F0();
}

uint64_t sub_1C4C87510()
{
  v0 = 0x6C6F6F547069;
  v1 = sub_1C456902C(&qword_1EC0B9190, &qword_1C4F0EC90);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  sub_1C44DDE2C();
  v8 = 0xE600000000000000;
  v9 = 0x6C6F6F547069;
  switch(*v7)
  {
    case 1:
      v8 = 0x80000001C4F87960;
      v9 = 0xD000000000000018;
      break;
    case 2:
      v8 = 0x80000001C4F87980;
      v9 = 0xD00000000000001DLL;
      break;
    case 3:
      v8 = 0x80000001C4F879A0;
      v9 = 0xD00000000000001BLL;
      break;
    case 4:
      break;
    case 5:
      v8 = 0xE300000000000000;
      v9 = 7368801;
      break;
    default:
      v8 = 0x80000001C4F87940;
      v9 = 0xD000000000000014;
      break;
  }

  sub_1C44DDE2C();
  v10 = 0xE600000000000000;
  switch(*v5)
  {
    case 1:
      v10 = 0x80000001C4F87960;
      v0 = 0xD000000000000018;
      break;
    case 2:
      v10 = 0x80000001C4F87980;
      v0 = 0xD00000000000001DLL;
      break;
    case 3:
      v10 = 0x80000001C4F879A0;
      v0 = 0xD00000000000001BLL;
      break;
    case 4:
      break;
    case 5:
      v10 = 0xE300000000000000;
      v0 = 7368801;
      break;
    default:
      v10 = 0x80000001C4F87940;
      v0 = 0xD000000000000014;
      break;
  }

  if (v9 == v0 && v8 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1C4F02938();
  }

  v13 = *(v1 + 48);
  v14 = sub_1C4EF9CD8();
  v15 = *(*(v14 - 8) + 8);
  v15(&v5[v13], v14);
  v15(&v7[v13], v14);
  return v12 & 1;
}

uint64_t sub_1C4C87850(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (!*(v2 + 16))
  {
    return swift_endAccess();
  }

  sub_1C43FE83C();
  if ((v4 & 1) == 0)
  {
    return swift_endAccess();
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  swift_endAccess();
  v6 = *(v5 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_lockbox);

  sub_1C4EFFA58();
}

uint64_t sub_1C4C87920(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_artifactBaseURL;
  v6 = sub_1C4EF98F8();
  sub_1C43FCDF8(v6);
  v8 = v7;
  (*(v9 + 16))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_viewDb) = a2;

  sub_1C456902C(&qword_1EC0B8588, &qword_1C4F0E310);
  sub_1C43FD2BC();
  *(v2 + OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_artifacts) = sub_1C4F00F28();
  sub_1C4EFC288();
  sub_1C43FD2BC();
  v10 = sub_1C4F00F28();

  v11 = *(v8 + 8);
  v12 = sub_1C4402CD0();
  v13(v12);
  *(v2 + OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_vectorDBartifacts) = v10;
  return v2;
}

void sub_1C4C87A68()
{
  sub_1C43FBD3C();
  v1 = sub_1C456902C(&qword_1EC0B8588, &qword_1C4F0E310);
  v2 = sub_1C43FCDF8(v1);
  v32 = v3;
  v33 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBFDC();
  v31 = v6;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBF38();
  v30 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  v29 = v10;
  v11 = OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_artifacts;
  swift_beginAccess();
  v12 = *(v0 + v11);
  v14 = *(v12 + 64);
  v13 = v12 + 64;
  v15 = sub_1C441E82C(*(v0 + v11));
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v34 = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v21 = 0;
  if (v18)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      sub_1C43FE9F0();
      return;
    }

    v18 = *(v13 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      do
      {
LABEL_7:
        v18 &= v18 - 1;
        v23 = *(v34 + 56);
        v24 = *(v32 + 72);
        sub_1C44DDE2C();
        v25 = *(v33 + 48);
        v26 = *(v29 + v25);
        sub_1C44CDA7C();
        *(v30 + v25) = v26;
        sub_1C44DDE2C();
        v27 = *(*(v31 + *(v33 + 48)) + 16);

        v28 = *(v27 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
        sub_1C4EFAEB8();
        sub_1C446F170(v30, &qword_1EC0B8588, &qword_1C4F0E310);

        sub_1C446F170(v31, &qword_1EC0C4FF8, &qword_1C4F5E680);
      }

      while (v18);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_1C4C87CBC()
{
  v1 = OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_artifactBaseURL;
  v2 = sub_1C4EF98F8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_viewDb);

  v5 = *(v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_artifacts);

  v6 = *(v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_vectorDBartifacts);

  return v0;
}

uint64_t sub_1C4C87D40()
{
  sub_1C4C87CBC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_1C4C87D98()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_1C4C87DC8()
{
  sub_1C4C87D98();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C87E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_lockbox) = a2;
  *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService) = a3;
  sub_1C4403A98();
  sub_1C4C8C1C0();
  return v3;
}

void sub_1C4C87E58()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = type metadata accessor for Configuration();
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C43FBE44();
  v8 = sub_1C4EF98F8();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v20 = objc_autoreleasePoolPush();
  sub_1C4EF9888();
  objc_autoreleasePoolPop(v20);
  if (qword_1EDDFF7A0 != -1)
  {
    swift_once();
  }

  v21 = sub_1C44273D4();
  if (v1)
  {
    sub_1C442D7A0();
    sub_1C443C1D8(v22, v23);
    (*(v11 + 8))(v19, v8);
  }

  else
  {
    v42 = v3;
    v43 = v0;
    v40 = *(v11 + 16);
    v24 = sub_1C4422A94();
    v25(v24);
    v26 = type metadata accessor for ViewGeneration.ViewClients.ArtifactCache(0);
    v27 = sub_1C44099C4(v26);

    v39 = v21;
    sub_1C4C87920(v16, v21);
    type metadata accessor for ViewGeneration.ViewClients.GuardedData();
    v28 = swift_allocObject();
    v28[2] = MEMORY[0x1E69E7CC8];
    v28[3] = 0;
    v28[4] = v27;
    v41 = v27;
    v44 = v28;
    v29 = sub_1C456902C(&qword_1EC0C5498, &qword_1C4F61408);
    sub_1C44099C4(v29);

    v30 = sub_1C4EFFA68();
    v31 = sub_1C4422A94();
    v40(v31);
    v32 = objc_allocWithZone(type metadata accessor for ViewAccessRequester(0));

    v40 = sub_1C4BA97E0(v33, v16);
    v34 = type metadata accessor for ViewGeneration.ViewClients.ArtifactDatabaseProvider();
    sub_1C43FBDBC();
    v35 = swift_allocObject();
    *(v35 + 16) = v30;
    v45 = v34;
    v46 = sub_1C4C8C218(&unk_1EDDFF290, v36, type metadata accessor for ViewGeneration.ViewClients.ArtifactDatabaseProvider);
    v44 = v35;
    v37 = objc_allocWithZone(sub_1C4EFDA28());

    v38 = sub_1C4EFDA18();

    (*(v11 + 8))(v19, v8);
    sub_1C4403A98();
    sub_1C4C8C1C0();
    sub_1C44099C4(v43);
    sub_1C4C87E0C(v33, v30, v38);
  }

  sub_1C43FBC80();
}

uint64_t ViewGeneration.ViewClients.deinit()
{
  v1 = *(v0 + 16);

  sub_1C442D7A0();
  sub_1C443C1D8(v0 + v2, v3);

  v4 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_lockbox);

  return v0;
}

void sub_1C4C88230(void *a1@<X8>)
{
  sub_1C4BABFC8();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1C4C88298(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = _s6ConfigVMa();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_1C4C839B4();
  if (!v6)
  {
    v24 = a5;
    v20 = a6;
    v17 = v22;
    v18 = v23;
    v19[1] = sub_1C4409678(v21, v22);
    sub_1C4438D00(v15);
    (*(v18 + 32))(a4, v24, v15, *(v16 + 32), *(a2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService), v20 & 1, v17, v18);
    sub_1C443C1D8(v15, _s6ConfigVMa);
    sub_1C440962C(v21);
  }
}

void sub_1C4C88428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v29 = v28;
  v30 = _s10ViewConfigVMa(0);
  v31 = sub_1C43FBD18(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v34 = objc_autoreleasePoolPush();
  v35 = *(v20 + 16);
  sub_1C443A738(v29, v27, v36, v37, v38, v39, v40, v41);
  if (!v21)
  {
    a10 = &a9;
    v43 = *(v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_lockbox);
    MEMORY[0x1EEE9AC00](v42);
    sub_1C4EFFA58();
    sub_1C43FE0F4();
    sub_1C443C1D8(v22, v44);
  }

  objc_autoreleasePoolPop(v34);
  sub_1C43FBC80();
}

void sub_1C4C8854C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = _s6ConfigVMa();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_1C4C839B4();
  if (!v6)
  {
    v24 = a5;
    v20 = a6;
    v17 = v22;
    v18 = v23;
    v19[1] = sub_1C4409678(v21, v22);
    sub_1C4438D00(v15);
    (*(v18 + 40))(a4, v24, v15, *(v16 + 32), *(a2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService), v20 & 1, v17, v18);
    sub_1C443C1D8(v15, _s6ConfigVMa);
    sub_1C440962C(v21);
  }
}

void sub_1C4C886DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = _s6ConfigVMa();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_1C4C839B4();
  if (!v6)
  {
    v24 = a5;
    v20 = a6;
    v17 = v22;
    v18 = v23;
    v19[1] = sub_1C4409678(v21, v22);
    sub_1C4438D00(v15);
    (*(v18 + 48))(a4, v24, v15, *(v16 + 32), *(a2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService), v20 & 1, v17, v18);
    sub_1C443C1D8(v15, _s6ConfigVMa);
    sub_1C440962C(v21);
  }
}

void sub_1C4C88840()
{
  sub_1C43FE96C();
  v3 = v0;
  v4 = _s10ViewConfigVMa(0);
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v8 = objc_autoreleasePoolPush();
  v9 = *(v0 + 16);
  v10 = sub_1C4415864();
  sub_1C443A738(v10, v11, v12, v13, v14, v15, v16, v17);
  if (!v1)
  {
    v19 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_lockbox);
    MEMORY[0x1EEE9AC00](v18);
    sub_1C4EFFA58();
    sub_1C43FE0F4();
    sub_1C443C1D8(v2, v20);
  }

  objc_autoreleasePoolPop(v8);
  sub_1C43FBC80();
}

void sub_1C4C88960(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = _s6ConfigVMa();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_1C4C839B4();
  if (!v6)
  {
    v24 = a6;
    v20 = a5;
    v17 = v22;
    v18 = v23;
    v19[1] = sub_1C4409678(v21, v22);
    sub_1C4438D00(v15);
    (*(v18 + 56))(a4, v20, v15, v24, *(v16 + 32), *(a2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService), v17, v18);
    sub_1C443C1D8(v15, _s6ConfigVMa);
    sub_1C440962C(v21);
  }
}

void sub_1C4C88AEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v36 = a5;
  v31 = a4;
  v11 = _s6ConfigVMa();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_1C4C839B4();
  if (!v6)
  {
    v29[1] = a3;
    v30 = v15;
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    *(inited + 32) = 0x7247656C62617473;
    *(inited + 40) = 0xEB00000000687061;
    *(inited + 48) = 0x617247746E657665;
    *(inited + 56) = 0xEA00000000006870;
    *(inited + 16) = xmmword_1C4F0CE60;
    v32[0] = v31;
    v32[1] = v36;
    MEMORY[0x1EEE9AC00](inited);
    v29[-2] = v32;
    v17 = sub_1C44CE068(sub_1C4579E44, &v29[-4], inited);
    v29[2] = 0;
    swift_setDeallocating();
    sub_1C44DEE40();
    if (v17)
    {
      v18 = v11[11];
      v19 = type metadata accessor for VectorDB.Config(0);
      sub_1C440BAA8(&v14[v18], 1, 1, v19);
      *v14 = 4;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0xE000000000000000;
      bzero(v14 + 24, 0xE3uLL);
      *(v14 + 32) = 0;
      *(v14 + 33) = 0;
      v14[272] = 0;
      v14[v11[12]] = 2;
      v20 = &v14[v11[13]];
      *(v20 + 6) = 0;
      *(v20 + 1) = 0u;
      *(v20 + 2) = 0u;
      *v20 = 0u;
      v21 = &v14[v11[16]];
      *(v21 + 10) = 0;
      *(v21 + 3) = 0u;
      *(v21 + 4) = 0u;
      *(v21 + 1) = 0u;
      *(v21 + 2) = 0u;
      *v21 = 0u;
      v22 = &v14[v11[17]];
      *v22 = 0;
      *(v22 + 1) = 0;
      v22[16] = 0;
      v23 = &v14[v11[14]];
      *v23 = 0;
      *(v23 + 1) = 0;
      v23[16] = 0;
      v24 = &v14[v11[18]];
      *v24 = 0u;
      *(v24 + 1) = 0u;
      v25 = &v14[v11[15]];
      *v25 = 0;
      *(v25 + 1) = 0;
      *(v25 + 2) = 0;
    }

    else
    {
      sub_1C4438D00(v14);
    }

    v26 = a2;
    v27 = v34;
    v28 = v35;
    sub_1C4409678(v33, v34);
    (*(v28 + 8))(v31, v36, v14, *(v30 + 32), *(v26 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService), a6 & 1, v27, v28);
    sub_1C443C1D8(v14, _s6ConfigVMa);
    sub_1C440962C(v33);
  }
}

void sub_1C4C88E44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v36 = a5;
  v31 = a4;
  v11 = _s6ConfigVMa();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_1C4C839B4();
  if (!v6)
  {
    v29[1] = a3;
    v30 = v15;
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    *(inited + 32) = 0x7247656C62617473;
    *(inited + 40) = 0xEB00000000687061;
    *(inited + 48) = 0x617247746E657665;
    *(inited + 56) = 0xEA00000000006870;
    *(inited + 16) = xmmword_1C4F0CE60;
    v32[0] = v31;
    v32[1] = v36;
    MEMORY[0x1EEE9AC00](inited);
    v29[-2] = v32;
    v17 = sub_1C44CE068(sub_1C44CE790, &v29[-4], inited);
    v29[2] = 0;
    swift_setDeallocating();
    sub_1C44DEE40();
    if (v17)
    {
      v18 = v11[11];
      v19 = type metadata accessor for VectorDB.Config(0);
      sub_1C440BAA8(&v14[v18], 1, 1, v19);
      *v14 = 4;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0xE000000000000000;
      bzero(v14 + 24, 0xE3uLL);
      *(v14 + 32) = 0;
      *(v14 + 33) = 0;
      v14[272] = 0;
      v14[v11[12]] = 2;
      v20 = &v14[v11[13]];
      *(v20 + 6) = 0;
      *(v20 + 1) = 0u;
      *(v20 + 2) = 0u;
      *v20 = 0u;
      v21 = &v14[v11[16]];
      *(v21 + 10) = 0;
      *(v21 + 3) = 0u;
      *(v21 + 4) = 0u;
      *(v21 + 1) = 0u;
      *(v21 + 2) = 0u;
      *v21 = 0u;
      v22 = &v14[v11[17]];
      *v22 = 0;
      *(v22 + 1) = 0;
      v22[16] = 0;
      v23 = &v14[v11[14]];
      *v23 = 0;
      *(v23 + 1) = 0;
      v23[16] = 0;
      v24 = &v14[v11[18]];
      *v24 = 0u;
      *(v24 + 1) = 0u;
      v25 = &v14[v11[15]];
      *v25 = 0;
      *(v25 + 1) = 0;
      *(v25 + 2) = 0;
    }

    else
    {
      sub_1C4438D00(v14);
    }

    v26 = a2;
    v27 = v34;
    v28 = v35;
    sub_1C4409678(v33, v34);
    (*(v28 + 24))(v31, v36, v14, *(v30 + 32), *(v26 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService), a6 & 1, v27, v28);
    sub_1C443C1D8(v14, _s6ConfigVMa);
    sub_1C440962C(v33);
  }
}

uint64_t sub_1C4C89184(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t *a5)
{
  sub_1C456902C(a2, a3);
  sub_1C43FBDBC();
  swift_allocObject();
  result = a4();
  *a5 = result;
  return result;
}

uint64_t sub_1C4C891D4(uint64_t a1)
{
  v4 = v1;
  v6 = type metadata accessor for Configuration();
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C44058BC();
  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C4417A50();
    swift_once();
  }

  sub_1C44E7FAC();
  if (!v2)
  {
    sub_1C44098F0(a1, v3);
    v11 = *(v1 + 48);
    v12 = *(v1 + 52);
    v4 = swift_allocObject();
    v13 = sub_1C440A9B8();
    sub_1C4C892D8(v13);
  }

  sub_1C442D7A0();
  sub_1C443C1D8(a1, v10);
  return v4;
}

uint64_t sub_1C4C892D8(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for ViewGeneration.ViewGenerators.GuardedData();
  sub_1C43FBDBC();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC8];
  sub_1C456902C(&qword_1EC0C5488, &qword_1C4F613F0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *(v1 + 24) = v3;
  sub_1C4403A98();
  sub_1C4C8C1C0();
  return v1;
}

uint64_t sub_1C4C89368()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1C442D7A0();
  sub_1C443C1D8(v0 + v3, v4);
  return v0;
}

uint64_t sub_1C4C893BC(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_1C4C89418(uint64_t *a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  sub_1C4C83880();
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    if (swift_dynamicCast())
    {
      sub_1C441D670(v11, v13);
      *a3 = v7;
      a3[1] = v6;
      sub_1C441D670(v13, (a3 + 2));
    }

    else
    {
      memset(v11, 0, sizeof(v11));
      v12 = 0;
      sub_1C446F170(v11, &unk_1EC0C06B0, &qword_1C4F5FBA0);
      sub_1C450B034();
      v8 = swift_allocError();
      *v9 = v7;
      *(v9 + 8) = v6;
      *(v9 + 16) = 0xD000000000000018;
      *(v9 + 24) = 0x80000001C4FBE690;
      *(v9 + 32) = 0xD000000000000028;
      *(v9 + 40) = 0x80000001C4FBE6B0;
      *(v9 + 48) = v10;
      *(v9 + 64) = 0;
      swift_willThrow();
      *a2 = v8;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4C895B8(uint64_t a1)
{
  v2 = 0;
  switch(*a1)
  {
    case 1:
      if (!*(a1 + 176))
      {
        return 0;
      }

      v2 = *(a1 + 168);
      goto LABEL_19;
    case 2:
      if (!*(a1 + 32))
      {
        return 0;
      }

      v2 = *(a1 + 24);
      goto LABEL_19;
    case 3:
      if (!*(a1 + 72))
      {
        return 0;
      }

      v2 = *(a1 + 64);
      goto LABEL_19;
    case 4:
    case 6:
    case 7:
    case 9:
      return v2;
    case 5:
      return 30315;
    case 8:
      return sub_1C4EFD978();
    case 0xA:
      v3 = *(_s6ConfigVMa() + 64);
      goto LABEL_17;
    case 0xB:
      v3 = *(_s6ConfigVMa() + 68);
      goto LABEL_17;
    case 0xC:
      v3 = *(_s6ConfigVMa() + 56);
      goto LABEL_17;
    case 0xD:
      v3 = *(_s6ConfigVMa() + 72);
      goto LABEL_17;
    case 0xE:
      v3 = *(_s6ConfigVMa() + 60);
LABEL_17:
      v4 = (a1 + v3);
      if (!v4[1])
      {
        return 0;
      }

      v2 = *v4;
      goto LABEL_19;
    default:
      if (!*(a1 + 232))
      {
        return 0;
      }

      v2 = *(a1 + 224);
LABEL_19:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      return v2;
  }
}

void sub_1C4C896DC()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  v12 = sub_1C4F01888();
  v13 = sub_1C4F028D8();
  v15 = v14;
  v16 = sub_1C4F018C8();
  sub_1C440BAA8(v11, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v12;
  sub_1C43FBC98();
  sub_1C44DDE2C();
  v18 = sub_1C44157D4(v8, 1, v16);

  if (v18 == 1)
  {
    sub_1C446F170(v8, &qword_1EC0BC660, &qword_1C4F29150);
  }

  else
  {
    sub_1C4F018B8();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = &unk_1C4F613A0;
  *(v19 + 24) = v17;
  v20[0] = 6;
  v20[1] = 0;
  v20[2] = v13;
  v20[3] = v15;

  swift_unknownObjectRetain();
  swift_task_create();
  sub_1C446F170(v11, &qword_1EC0BC660, &qword_1C4F29150);

  swift_unknownObjectRelease();

  sub_1C43FE9F0();
}

uint64_t sub_1C4C89918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C4C89938, 0, 0);
}

uint64_t sub_1C4C89938()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 24);
  sub_1C4C84128(*(*(v0 + 16) + 16), *(*(v0 + 16) + 24));
  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C4C89994()
{
  sub_1C4F028D8();
  swift_getObjectType();
  sub_1C4F01988();
  swift_unknownObjectRelease();

  return swift_job_run_on_task_executor();
}

uint64_t sub_1C4C89A00()
{
  v1 = *(v0 + 24);

  sub_1C4406518();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C89A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_1C4C8C218(&qword_1EDDF6C48, a2, type metadata accessor for ViewGeneration.ViewTaskExecutor);

  return a4(a1, v6, v7);
}

uint64_t sub_1C4C89B98(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    return sub_1C4F01918();
  }

  v5 = *(a1 + 8);

  *(a1 + 8) = a2;
  return result;
}

void sub_1C4C89C18(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 32));
  *(a1 + 16) = 1;
  if (*(a1 + 24))
  {
    sub_1C4F01918();
  }

  os_unfair_lock_unlock((a1 + 32));
}

_BYTE *storeEnumTagSinglePayload for ViewGeneration(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C4C89DFC()
{
  result = type metadata accessor for Configuration();
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

uint64_t sub_1C4C89EEC()
{
  result = sub_1C4EF98F8();
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

uint64_t sub_1C4C8A008()
{
  result = type metadata accessor for Configuration();
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

uint64_t sub_1C4C8A0FC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1C4C8A110(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >> 1 >= 0xFFF && *(a1 + 10))
    {
      v2 = *a1 + 8189;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 14) | (4 * ((*(a1 + 8) >> 3) & 0x780 | (*(a1 + 8) >> 1)))) ^ 0x1FFF;
      if (v2 >= 0x1FFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C4C8A170(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >> 1 > 0xFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 8190;
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x7FF) - (a2 << 11);
      *result = 0;
      *(result + 8) = (8 * v3) & 0xFC00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

unint64_t sub_1C4C8A288()
{
  result = qword_1EC0C5440;
  if (!qword_1EC0C5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5440);
  }

  return result;
}

uint64_t sub_1C4C8A328(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C456902C(&qword_1EC0B9190, &qword_1C4F0EC90);
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C456902C(&qword_1EC0B9190, &qword_1C4F0EC90) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C4C8A95C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C4C8A470(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C4C8A470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_1C456902C(&qword_1EC0B9190, &qword_1C4F0EC90);
  v8 = *(*(v60 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v60);
  v56 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v62 = &v43 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v43 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v20 + 72);
    v52 = 0x80000001C4F87980;
    v53 = 0x80000001C4F879A0;
    v51 = 0x80000001C4F87960;
    v50 = 0x80000001C4F87940;
    v24 = v22 + v23 * (a3 - 1);
    v54 = -v23;
    v55 = v22;
    v25 = a1 - a3;
    v44 = v23;
    v26 = v22 + v23 * a3;
    v27 = &qword_1EC0B9190;
    v58 = v18;
    v59 = v15;
    v57 = &v43 - v21;
    while (2)
    {
      v48 = v24;
      v49 = a3;
      v46 = v26;
      v47 = v25;
      v28 = v24;
      do
      {
        sub_1C44DDE2C();
        sub_1C44DDE2C();
        sub_1C44DDE2C();
        v29 = 0xE600000000000000;
        v30 = v27;
        v31 = 0x6C6F6F547069;
        switch(*v15)
        {
          case 1:
            v31 = 0xD000000000000018;
            v29 = v51;
            break;
          case 2:
            v31 = 0xD00000000000001DLL;
            v29 = v52;
            break;
          case 3:
            v31 = 0xD00000000000001BLL;
            v29 = v53;
            break;
          case 4:
            break;
          case 5:
            v29 = 0xE300000000000000;
            v31 = 7368801;
            break;
          default:
            v31 = 0xD000000000000014;
            v29 = v50;
            break;
        }

        v32 = v62;
        sub_1C44DDE2C();
        v33 = 0xE600000000000000;
        v34 = 0x6C6F6F547069;
        switch(*v32)
        {
          case 1:
            v34 = 0xD000000000000018;
            v33 = v51;
            break;
          case 2:
            v34 = 0xD00000000000001DLL;
            v33 = v52;
            break;
          case 3:
            v34 = 0xD00000000000001BLL;
            v33 = v53;
            break;
          case 4:
            break;
          case 5:
            v33 = 0xE300000000000000;
            v34 = 7368801;
            break;
          default:
            v34 = 0xD000000000000014;
            v33 = v50;
            break;
        }

        v35 = v31 == v34 && v29 == v33;
        v61 = v25;
        if (v35)
        {
          v36 = 0;
        }

        else
        {
          v36 = sub_1C4F02938();
        }

        v37 = *(v60 + 48);
        v38 = sub_1C4EF9CD8();
        v39 = *(*(v38 - 8) + 8);
        v39(&v62[v37], v38);
        v40 = &v59[v37];
        v15 = v59;
        v39(v40, v38);
        v27 = v30;
        sub_1C446F170(v58, v30, &qword_1C4F0EC90);
        result = sub_1C446F170(v57, v30, &qword_1C4F0EC90);
        v41 = v61;
        if ((v36 & 1) == 0)
        {
          break;
        }

        if (!v55)
        {
          __break(1u);
          return result;
        }

        sub_1C44CDA7C();
        swift_arrayInitWithTakeFrontToBack();
        v27 = v30;
        result = sub_1C44CDA7C();
        v28 += v54;
        v26 += v54;
        v42 = __CFADD__(v41, 1);
        v25 = v41 + 1;
      }

      while (!v42);
      a3 = v49 + 1;
      v24 = v48 + v44;
      v25 = v47 - 1;
      v26 = v46 + v44;
      if (v49 + 1 != v45)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C4C8A95C(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v140 = a4;
  v141 = a1;
  v7 = sub_1C456902C(&qword_1EC0B9190, &qword_1C4F0EC90);
  v154 = *(v7 - 8);
  v8 = *(v154 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v146 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v167 = &v140 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v171 = &v140 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v170 = &v140 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v140 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v169 = &v140 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v158 = &v140 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v157 = &v140 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v160 = &v140 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v156 = &v140 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v140 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v155 = a3;
  v34 = a3[1];
  if (v34 < 1)
  {
    v36 = MEMORY[0x1E69E7CC0];
LABEL_137:
    v171 = *v141;
    if (!v171)
    {
      goto LABEL_179;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_139;
    }

    goto LABEL_173;
  }

  v142 = &v140 - v33;
  v35 = 0;
  v163 = 0x80000001C4F87980;
  v164 = 0x80000001C4F879A0;
  v161 = 0x80000001C4F87940;
  v162 = 0x80000001C4F87960;
  v36 = MEMORY[0x1E69E7CC0];
  v168 = v19;
  v151 = v32;
  v148 = v7;
  while (1)
  {
    v37 = v35++;
    v143 = v36;
    v147 = v37;
    if (v35 < v34)
    {
      v153 = v34;
      v38 = *v155;
      v39 = *(v154 + 72);
      v40 = *v155 + v39 * v35;
      sub_1C44DDE2C();
      v165 = v39;
      v166 = v38;
      v41 = v147;
      sub_1C44DDE2C();
      LODWORD(v152) = sub_1C4C87510();
      if (v5)
      {
        sub_1C446F170(v32, &qword_1EC0B9190, &qword_1C4F0EC90);
        sub_1C446F170(v142, &qword_1EC0B9190, &qword_1C4F0EC90);
LABEL_135:

        return;
      }

      v159 = 0;
      sub_1C446F170(v32, &qword_1EC0B9190, &qword_1C4F0EC90);
      sub_1C446F170(v142, &qword_1EC0B9190, &qword_1C4F0EC90);
      v42 = v41 + 2;
      v5 = v166 + v165 * (v41 + 2);
      v43 = v153;
      while (1)
      {
        v44 = v42;
        if (v35 + 1 >= v43)
        {
          break;
        }

        v166 = v42;
        sub_1C44DDE2C();
        sub_1C44DDE2C();
        v45 = v157;
        sub_1C44DDE2C();
        v46 = 0xE600000000000000;
        v47 = 0x6C6F6F547069;
        switch(*v45)
        {
          case 1:
            v47 = 0xD000000000000018;
            v46 = v162;
            break;
          case 2:
            v47 = 0xD00000000000001DLL;
            v46 = v163;
            break;
          case 3:
            v47 = 0xD00000000000001BLL;
            v46 = v164;
            break;
          case 4:
            break;
          case 5:
            v46 = 0xE300000000000000;
            v47 = 7368801;
            break;
          default:
            v47 = 0xD000000000000014;
            v46 = v161;
            break;
        }

        v48 = v158;
        sub_1C44DDE2C();
        v49 = 0xE600000000000000;
        v50 = 0x6C6F6F547069;
        switch(*v48)
        {
          case 1:
            v50 = 0xD000000000000018;
            v49 = v162;
            break;
          case 2:
            v50 = 0xD00000000000001DLL;
            v49 = v163;
            break;
          case 3:
            v50 = 0xD00000000000001BLL;
            v49 = v164;
            break;
          case 4:
            break;
          case 5:
            v49 = 0xE300000000000000;
            v50 = 7368801;
            break;
          default:
            v50 = 0xD000000000000014;
            v49 = v161;
            break;
        }

        v51 = v35;
        if (v47 == v50 && v46 == v49)
        {
          v53 = 0;
        }

        else
        {
          v53 = sub_1C4F02938();
        }

        v54 = *(v7 + 48);
        v55 = sub_1C4EF9CD8();
        v56 = *(*(v55 - 8) + 8);
        v56(&v158[v54], v55);
        v56(&v157[v54], v55);
        sub_1C446F170(v160, &qword_1EC0B9190, &qword_1C4F0EC90);
        sub_1C446F170(v156, &qword_1EC0B9190, &qword_1C4F0EC90);
        v44 = v166;
        v5 += v165;
        v40 += v165;
        v35 = v51 + 1;
        v42 = v166 + 1;
        v43 = v153;
        if ((v152 ^ v53))
        {
          goto LABEL_28;
        }
      }

      v35 = v43;
LABEL_28:
      if ((v152 & 1) == 0)
      {
        v5 = v159;
        v36 = v143;
LABEL_49:
        v32 = v151;
        goto LABEL_50;
      }

      v36 = v143;
      if (v35 < v147)
      {
        goto LABEL_172;
      }

      v5 = v159;
      if (v147 >= v35)
      {
        goto LABEL_49;
      }

      if (v43 >= v44)
      {
        v57 = v44;
      }

      else
      {
        v57 = v43;
      }

      v58 = v165;
      v59 = v165 * (v57 - 1);
      v60 = v165 * v57;
      v61 = v147 * v165;
      v153 = v35;
      v62 = v35;
      v63 = v147;
      do
      {
        if (v63 != --v62)
        {
          v64 = *v155;
          if (!*v155)
          {
            goto LABEL_177;
          }

          sub_1C44CDA7C();
          v65 = v61 < v59 || v64 + v61 >= v64 + v60;
          if (v65)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v61 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1C44CDA7C();
          v5 = v159;
          v36 = v143;
        }

        ++v63;
        v59 -= v58;
        v60 -= v58;
        v61 += v58;
      }

      while (v63 < v62);
      v32 = v151;
      v35 = v153;
    }

LABEL_50:
    v66 = v155[1];
    if (v35 < v66)
    {
      if (__OFSUB__(v35, v147))
      {
        goto LABEL_169;
      }

      if (v35 - v147 < v140)
      {
        break;
      }
    }

LABEL_84:
    if (v35 < v147)
    {
      goto LABEL_168;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v159 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v130 = *(v36 + 2);
      sub_1C458A358();
      v36 = v131;
    }

    v86 = *(v36 + 2);
    v5 = v86 + 1;
    if (v86 >= *(v36 + 3) >> 1)
    {
      sub_1C458A358();
      v36 = v132;
    }

    *(v36 + 2) = v5;
    v87 = v36 + 32;
    v88 = &v36[16 * v86 + 32];
    *v88 = v147;
    *(v88 + 1) = v35;
    v166 = *v141;
    if (!v166)
    {
      goto LABEL_178;
    }

    if (v86)
    {
      while (1)
      {
        v89 = v5 - 1;
        v90 = &v87[16 * v5 - 16];
        v91 = &v36[16 * v5];
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v92 = *(v36 + 4);
          v93 = *(v36 + 5);
          v102 = __OFSUB__(v93, v92);
          v94 = v93 - v92;
          v95 = v102;
LABEL_104:
          if (v95)
          {
            goto LABEL_155;
          }

          v107 = *v91;
          v106 = *(v91 + 1);
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_158;
          }

          v111 = *(v90 + 1);
          v112 = v111 - *v90;
          if (__OFSUB__(v111, *v90))
          {
            goto LABEL_161;
          }

          if (__OFADD__(v109, v112))
          {
            goto LABEL_163;
          }

          if (v109 + v112 >= v94)
          {
            if (v94 < v112)
            {
              v89 = v5 - 2;
            }

            goto LABEL_126;
          }

          goto LABEL_119;
        }

        if (v5 < 2)
        {
          goto LABEL_157;
        }

        v114 = *v91;
        v113 = *(v91 + 1);
        v102 = __OFSUB__(v113, v114);
        v109 = v113 - v114;
        v110 = v102;
LABEL_119:
        if (v110)
        {
          goto LABEL_160;
        }

        v116 = *v90;
        v115 = *(v90 + 1);
        v102 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v102)
        {
          goto LABEL_162;
        }

        if (v117 < v109)
        {
          goto LABEL_133;
        }

LABEL_126:
        if (v89 - 1 >= v5)
        {
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        if (!*v155)
        {
          goto LABEL_175;
        }

        v121 = v35;
        v122 = &v87[16 * v89 - 16];
        v123 = *v122;
        v124 = v87;
        v125 = v89;
        v126 = &v87[16 * v89];
        v5 = *(v126 + 1);
        v127 = v159;
        sub_1C4C8B8D0(*v155 + *(v154 + 72) * *v122, *v155 + *(v154 + 72) * *v126, *v155 + *(v154 + 72) * v5, v166);
        v159 = v127;
        if (v127)
        {
          goto LABEL_135;
        }

        if (v5 < v123)
        {
          goto LABEL_150;
        }

        v128 = v36;
        v36 = *(v36 + 2);
        if (v125 > v36)
        {
          goto LABEL_151;
        }

        *v122 = v123;
        v122[1] = v5;
        if (v125 >= v36)
        {
          goto LABEL_152;
        }

        v5 = (v36 - 1);
        sub_1C461950C(v126 + 16, &v36[-v125 - 1], v126);
        *(v128 + 2) = v36 - 1;
        v129 = v36 > 2;
        v36 = v128;
        v32 = v151;
        v35 = v121;
        v87 = v124;
        v7 = v148;
        if (!v129)
        {
          goto LABEL_133;
        }
      }

      v96 = &v87[16 * v5];
      v97 = *(v96 - 8);
      v98 = *(v96 - 7);
      v102 = __OFSUB__(v98, v97);
      v99 = v98 - v97;
      if (v102)
      {
        goto LABEL_153;
      }

      v101 = *(v96 - 6);
      v100 = *(v96 - 5);
      v102 = __OFSUB__(v100, v101);
      v94 = v100 - v101;
      v95 = v102;
      if (v102)
      {
        goto LABEL_154;
      }

      v103 = *(v91 + 1);
      v104 = v103 - *v91;
      if (__OFSUB__(v103, *v91))
      {
        goto LABEL_156;
      }

      v102 = __OFADD__(v94, v104);
      v105 = v94 + v104;
      if (v102)
      {
        goto LABEL_159;
      }

      if (v105 >= v99)
      {
        v119 = *v90;
        v118 = *(v90 + 1);
        v102 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v102)
        {
          goto LABEL_167;
        }

        if (v94 < v120)
        {
          v89 = v5 - 2;
        }

        goto LABEL_126;
      }

      goto LABEL_104;
    }

LABEL_133:
    v34 = v155[1];
    v5 = v159;
    if (v35 >= v34)
    {
      goto LABEL_137;
    }
  }

  v67 = v147 + v140;
  if (__OFADD__(v147, v140))
  {
    goto LABEL_170;
  }

  if (v67 >= v66)
  {
    v67 = v155[1];
  }

  if (v67 < v147)
  {
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    v36 = sub_1C46194F4(v36);
LABEL_139:
    v133 = (v36 + 16);
    for (i = *(v36 + 2); i >= 2; *v133 = i)
    {
      if (!*v155)
      {
        goto LABEL_176;
      }

      v135 = &v36[16 * i];
      v136 = *v135;
      v137 = &v133[2 * i];
      v138 = *(v137 + 1);
      sub_1C4C8B8D0(*v155 + *(v154 + 72) * *v135, *v155 + *(v154 + 72) * *v137, *v155 + *(v154 + 72) * v138, v171);
      if (v5)
      {
        break;
      }

      if (v138 < v136)
      {
        goto LABEL_164;
      }

      if (i - 2 >= *v133)
      {
        goto LABEL_165;
      }

      *v135 = v136;
      *(v135 + 1) = v138;
      v139 = *v133 - i;
      if (*v133 < i)
      {
        goto LABEL_166;
      }

      i = *v133 - 1;
      sub_1C461950C(v137 + 16, v139, v137);
    }

    goto LABEL_135;
  }

  if (v35 == v67)
  {
    goto LABEL_84;
  }

  v159 = v5;
  v68 = *v155;
  v69 = *(v154 + 72);
  v70 = *v155 + v69 * (v35 - 1);
  v165 = -v69;
  v71 = v147 - v35;
  v166 = v68;
  v144 = v69;
  v72 = v68 + v35 * v69;
  v145 = v67;
LABEL_59:
  v153 = v35;
  v149 = v72;
  v150 = v71;
  v73 = v71;
  v152 = v70;
  while (1)
  {
    sub_1C44DDE2C();
    sub_1C44DDE2C();
    v74 = v170;
    sub_1C44DDE2C();
    v75 = 0xE600000000000000;
    v76 = 0x6C6F6F547069;
    switch(*v74)
    {
      case 1:
        v76 = 0xD000000000000018;
        v75 = v162;
        break;
      case 2:
        v76 = 0xD00000000000001DLL;
        v75 = v163;
        break;
      case 3:
        v76 = 0xD00000000000001BLL;
        v75 = v164;
        break;
      case 4:
        break;
      case 5:
        v75 = 0xE300000000000000;
        v76 = 7368801;
        break;
      default:
        v76 = 0xD000000000000014;
        v75 = v161;
        break;
    }

    v77 = v171;
    sub_1C44DDE2C();
    v78 = 0xE600000000000000;
    v79 = 0x6C6F6F547069;
    switch(*v77)
    {
      case 1:
        v79 = 0xD000000000000018;
        v78 = v162;
        break;
      case 2:
        v79 = 0xD00000000000001DLL;
        v78 = v163;
        break;
      case 3:
        v79 = 0xD00000000000001BLL;
        v78 = v164;
        break;
      case 4:
        break;
      case 5:
        v78 = 0xE300000000000000;
        v79 = 7368801;
        break;
      default:
        v79 = 0xD000000000000014;
        v78 = v161;
        break;
    }

    if (v76 == v79 && v75 == v78)
    {
      v81 = 0;
    }

    else
    {
      v81 = sub_1C4F02938();
    }

    v82 = *(v7 + 48);
    v83 = sub_1C4EF9CD8();
    v84 = *(*(v83 - 8) + 8);
    v84(&v171[v82], v83);
    v84(&v170[v82], v83);
    sub_1C446F170(v168, &qword_1EC0B9190, &qword_1C4F0EC90);
    sub_1C446F170(v169, &qword_1EC0B9190, &qword_1C4F0EC90);
    if ((v81 & 1) == 0)
    {
LABEL_82:
      v35 = v153 + 1;
      v70 = v152 + v144;
      v71 = v150 - 1;
      v72 = v149 + v144;
      if (v153 + 1 == v145)
      {
        v35 = v145;
        v5 = v159;
        v36 = v143;
        v32 = v151;
        goto LABEL_84;
      }

      goto LABEL_59;
    }

    if (!v166)
    {
      break;
    }

    sub_1C44CDA7C();
    swift_arrayInitWithTakeFrontToBack();
    sub_1C44CDA7C();
    v70 += v165;
    v72 += v165;
    v65 = __CFADD__(v73++, 1);
    if (v65)
    {
      goto LABEL_82;
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
}

uint64_t sub_1C4C8B8D0(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v71 = a3;
  v72 = sub_1C456902C(&qword_1EC0B9190, &qword_1C4F0EC90);
  v7 = *(*(v72 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v72);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v64 = &v62 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v62 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_66;
  }

  v21 = v71 - a2;
  if (v71 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_67;
  }

  v23 = v19 / v18;
  v76 = a1;
  v75 = a4;
  v24 = v21 / v18;
  if (v19 / v18 >= v21 / v18)
  {
    i = v16;
    v41 = a2;
    sub_1C459CDD4(a2, v21 / v18, a4);
    v70 = a4;
    v42 = a4 + v24 * v18;
    v43 = -v18;
    v44 = v42;
    v45 = v71;
    v69 = v43;
    v66 = a1;
LABEL_38:
    v71 = v41;
    v46 = v41 + v43;
    v47 = v45;
    v63 = v44;
    v48 = v64;
    v67 = v46;
    while (1)
    {
      if (v42 <= v70)
      {
        v76 = v71;
        v74 = v44;
        goto LABEL_64;
      }

      if (v71 <= a1)
      {
        v76 = v71;
        v61 = v63;
        goto LABEL_63;
      }

      v65 = v44;
      v49 = v69;
      v50 = v42;
      v51 = &v69[v42];
      sub_1C44DDE2C();
      v52 = v48;
      v53 = i;
      sub_1C44DDE2C();
      v54 = v73;
      v55 = sub_1C4C87510();
      v73 = v54;
      if (v54)
      {
        break;
      }

      v56 = v55;
      v45 = &v49[v47];
      sub_1C446F170(v53, &qword_1EC0B9190, &qword_1C4F0EC90);
      sub_1C446F170(v52, &qword_1EC0B9190, &qword_1C4F0EC90);
      if (v56)
      {
        v58 = v47 < v71 || v45 >= v71;
        v42 = v50;
        if (v58)
        {
          v41 = v67;
          swift_arrayInitWithTakeFrontToBack();
          v44 = v65;
          a1 = v66;
          v43 = v69;
        }

        else
        {
          a1 = v66;
          v44 = v65;
          v59 = v67;
          v41 = v67;
          v43 = v69;
          if (v47 != v71)
          {
            v60 = v65;
            swift_arrayInitWithTakeBackToFront();
            v41 = v59;
            v44 = v60;
          }
        }

        goto LABEL_38;
      }

      v48 = v52;
      if (v47 < v50 || v45 >= v50)
      {
        swift_arrayInitWithTakeFrontToBack();
        v47 = v45;
        v42 = v51;
        v44 = v51;
        a1 = v66;
      }

      else
      {
        v44 = v51;
        v20 = v50 == v47;
        v47 = v45;
        v42 = v51;
        a1 = v66;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v47 = v45;
          v42 = v51;
          v44 = v51;
        }
      }
    }

    sub_1C446F170(v53, &qword_1EC0B9190, &qword_1C4F0EC90);
    sub_1C446F170(v52, &qword_1EC0B9190, &qword_1C4F0EC90);
    v76 = v71;
    v61 = v65;
LABEL_63:
    v74 = v61;
  }

  else
  {
    v69 = &v62 - v15;
    sub_1C459CDD4(a1, v19 / v18, a4);
    v70 = a4 + v23 * v18;
    v74 = v70;
    v25 = a2;
    v26 = v18;
    v27 = v71;
    for (i = v13; a4 < v70 && v25 < v27; v13 = i)
    {
      v29 = a1;
      v30 = v26;
      v31 = v25;
      v32 = v69;
      sub_1C44DDE2C();
      v33 = a4;
      sub_1C44DDE2C();
      v34 = v73;
      v35 = sub_1C4C87510();
      v73 = v34;
      if (v34)
      {
        sub_1C446F170(v13, &qword_1EC0B9190, &qword_1C4F0EC90);
        sub_1C446F170(v32, &qword_1EC0B9190, &qword_1C4F0EC90);
        break;
      }

      v36 = v35;
      sub_1C446F170(v13, &qword_1EC0B9190, &qword_1C4F0EC90);
      sub_1C446F170(v32, &qword_1EC0B9190, &qword_1C4F0EC90);
      if (v36)
      {
        v26 = v30;
        v37 = v31 + v30;
        v38 = v29;
        if (v29 < v31 || v29 >= v37)
        {
          swift_arrayInitWithTakeFrontToBack();
          v25 = v31 + v30;
          a4 = v33;
          v27 = v71;
        }

        else
        {
          v27 = v71;
          if (v29 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v25 = v37;
          a4 = v33;
        }
      }

      else
      {
        v26 = v30;
        a4 += v30;
        v38 = v29;
        if (v29 < v33 || v29 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          v27 = v71;
        }

        else
        {
          v27 = v71;
          if (v29 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v75 = a4;
        v25 = v31;
      }

      a1 = v38 + v26;
      v76 = a1;
    }
  }

LABEL_64:
  sub_1C4BEB584(&v76, &v75, &v74);
  return 1;
}

uint64_t sub_1C4C8BED0()
{
  v4 = *MEMORY[0x1E69E9840];
  sub_1C4F00DD8();
  sub_1C441A948();
  sub_1C4C8C218(v0, 255, v1);
  result = sub_1C4F00D98();
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1C4C8BF98()
{
  result = qword_1EC0C5468;
  if (!qword_1EC0C5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5468);
  }

  return result;
}

uint64_t sub_1C4C8BFEC()
{
  sub_1C43FCF70();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FCF54(v3);
  *v4 = v5;
  v4[1] = sub_1C442E8C4;
  v6 = sub_1C441B0C0();

  return sub_1C4C89918(v6, v7, v8);
}

unint64_t sub_1C4C8C130()
{
  result = qword_1EDDFA448;
  if (!qword_1EDDFA448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFA448);
  }

  return result;
}

uint64_t sub_1C4C8C174(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_1C4BA83CC(a1, a2);
  }

  return a1;
}

uint64_t sub_1C4C8C1C0()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 32);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C4C8C218(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C4C8C28C()
{
  v4 = *MEMORY[0x1E69E9840];
  *(v1 + 24) = v0;
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C4C8C31C, 0, 0);
}

uint64_t sub_1C4C8C31C()
{
  v21 = v0;
  v20[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v1 = *(v0 + 24);
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DE10);

  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20[0] = v6;
    *v5 = 136315138;
    v7 = sub_1C48522F8();
    v9 = sub_1C441D828(v7, v8, v20);

    *(v5 + 4) = v9;
    sub_1C43FBD74(&dword_1C43F8000, v10, v11, "Pipeline: %s: triggering view generation...");
    sub_1C440962C(v6);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E69A9F28]) init];
  *(v0 + 16) = 0;
  v13 = [v12 graphUpdatedWithSource:0 error:v0 + 16];
  v14 = *(v0 + 16);
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v18 = v14;
    sub_1C4EF97A8();

    swift_willThrow();
  }

  sub_1C43FBDA0();
  v17 = *MEMORY[0x1E69E9840];

  return v16();
}

uint64_t sub_1C4C8C530()
{
  v1 = *(v0 + 24);

  sub_1C43FFFC0();
  sub_1C44541BC(v0 + v2, v3);

  sub_1C44541BC(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32ViewGenerationDeltaPipelinePhase_source, type metadata accessor for Source);
  return v0;
}

uint64_t sub_1C4C8C598()
{
  v4 = *MEMORY[0x1E69E9840];
  *(v1 + 24) = v0;
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C4C8C628, 0, 0);
}

uint64_t sub_1C4C8C628()
{
  v28 = v0;
  v27[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v1 = *(v0 + 24);
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DE10);

  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27[0] = v6;
    *v5 = 136315138;
    v7 = sub_1C4852320();
    v9 = sub_1C441D828(v7, v8, v27);

    *(v5 + 4) = v9;
    sub_1C43FBD74(&dword_1C43F8000, v10, v11, "Pipeline: %s: triggering view generation...");
    sub_1C440962C(v6);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v12 = *(v0 + 24);
  v13 = *(v12 + OBJC_IVAR____TtC24IntelligencePlatformCore32ViewGenerationDeltaPipelinePhase_coordinationXPC);
  v14 = (v12 + OBJC_IVAR____TtC24IntelligencePlatformCore32ViewGenerationDeltaPipelinePhase_source);
  v15 = *v14;
  v16 = v14[1];
  *(v0 + 16) = 0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = sub_1C4C8CD40(v15, v16, v0 + 16, v13);
  v18 = *(v0 + 16);
  if (v17)
  {
    sub_1C43FBDA0();
    v26 = v19;
    v20 = v18;
    v21 = *MEMORY[0x1E69E9840];
    v22 = v26;
  }

  else
  {
    v23 = v18;
    sub_1C4EF97A8();

    swift_willThrow();
    sub_1C43FBDA0();
    v24 = *MEMORY[0x1E69E9840];
  }

  return v22();
}

uint64_t sub_1C4C8C868()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C4665934;

  return sub_1C4C8C28C();
}

uint64_t sub_1C4C8C8F8()
{
  swift_getWitnessTable();

  return sub_1C4AA78F0();
}

uint64_t sub_1C4C8C94C()
{
  sub_1C4C8C530();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ViewGenerationDeltaPipelinePhase()
{
  result = qword_1EDDDDCC8;
  if (!qword_1EDDDDCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4C8C9F8()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Source();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4C8CADC()
{
  v2 = *(**v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C4677C50;

  return v6();
}

uint64_t sub_1C4C8CBF0()
{
  swift_getWitnessTable();

  return sub_1C4AA78F0();
}

uint64_t sub_1C4C8CC44(uint64_t a1)
{
  result = sub_1C4C8CCF8(&qword_1EC0C54B0, 255, type metadata accessor for ViewGenerationDeltaPipelinePhase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4C8CCA0(uint64_t a1, uint64_t a2)
{
  result = sub_1C4C8CCF8(&qword_1EDDDE900, a2, type metadata accessor for ViewGenerationFullPipelinePhase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4C8CCF8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_1C4C8CD40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C4F01108();

  v7 = [a4 graphUpdatedWithSource:v6 error:a3];

  return v7;
}

uint64_t sub_1C4C8CDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = a4;
  v5 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v8 = MEMORY[0x1E69E7CC0];
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v7[6] = &v8;
  sub_1C4465390(sub_1C4C8E51C, v7);
  return v8;
}

uint64_t sub_1C4C8CE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = a4;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v7[6] = &v8;
  sub_1C4465390(sub_1C4C8E5A0, v7);
  return v8;
}

uint64_t sub_1C4C8CEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  return sub_1C49A52FC(sub_1C4C8E4FC, v6);
}

uint64_t sub_1C4C8CF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  return sub_1C49A52FC(sub_1C4C8E5B8, v6);
}

uint64_t sub_1C4C8CFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v151 = a6;
  v149 = a5;
  v164 = a3;
  v165 = a4;
  v163 = a1;
  v7 = sub_1C4EFBE38();
  v162 = *(v7 - 8);
  v8 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v152 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v159 = &v143 - v11;
  v12 = type metadata accessor for ViewDatabaseArtifact.Property();
  v160 = *(v12 - 8);
  v13 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1C4EFB768();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v21 = a2;
  }

  *&v168 = v21;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4A54BDC(&qword_1EDDFA5B0, &qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4C8E534(&qword_1EDDFA1C8, MEMORY[0x1E69A9810]);
  sub_1C4EFB798();
  sub_1C4EFBC58();
  v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v22 = v166;
  v23 = sub_1C4EFBBB8();
  if (v22)
  {
    sub_1C4423A0C(&v168, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v17 + 8))(v20, v16);
  }

  v150 = v23;
  v153 = 0;
  v144 = v20;
  v158 = v7;
  v148 = v17;
  sub_1C4423A0C(&v168, &unk_1EC0BC770, &qword_1C4F10DC0);
  v155 = (v162 + 8);
  v156 = (v162 + 32);
  v25 = v152;
  v26 = v159;
  v27 = v160;
  v28 = v12;
  v147 = v16;
  v154 = v12;
  v157 = v15;
  while (1)
  {
    v29 = v153;
    v30 = sub_1C4458EE8();
    if (v29)
    {
      v31 = v148;
LABEL_93:
      (*(v31 + 8))(v144, v16);
    }

    v31 = v148;
    if (!v30)
    {
      goto LABEL_93;
    }

    v163 = v30;
    v32 = *(v149 + 16);
    v153 = 0;
    if (v32)
    {
      break;
    }

    v34 = MEMORY[0x1E69E7CC8];
LABEL_87:
    v134 = v151;
    v135 = *v151;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v134 = v135;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v139 = *(v135 + 16);
      sub_1C458E540();
      v135 = v140;
      *v151 = v140;
    }

    v137 = *(v135 + 16);
    if (v137 >= *(v135 + 24) >> 1)
    {
      sub_1C458E540();
      *v151 = v141;
    }

    v138 = *v151;
    *(v138 + 16) = v137 + 1;
    *(v138 + 8 * v137 + 32) = v34;
    v16 = v147;
  }

  v162 = *(v28 + 20);
  v33 = v149 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v161 = *(v27 + 72);
  v34 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v165 = v32;
    v166 = v34;
    v164 = v33;
    sub_1C443CCBC(v33, v15);
    v35 = *v15;
    v36 = v15[1];
    v37 = v15 + v162;
    v38 = v158;
    (*v156)(v26, v37, v158);
    sub_1C4EFBDD8();
    sub_1C4C8E534(&qword_1EDDF0040, MEMORY[0x1E69A0080]);
    v39 = sub_1C4F010B8();
    v40 = v26;
    v41 = *v155;
    (*v155)(v25, v38);
    if ((v39 & 1) == 0)
    {
      sub_1C4EFBE08();
      v57 = sub_1C4F010B8();
      v41(v25, v38);
      if (v57)
      {
        v41(v40, v38);
        v58 = v35;
        v59 = v36;
        v60 = v153;
        sub_1C493E7A4();
        v48 = &v172;
        v153 = v60;
        if (v60)
        {
          goto LABEL_106;
        }

        *(&v169 + 1) = MEMORY[0x1E69E7360];
        *&v168 = v61;
        sub_1C44482AC(&v168, v167);
        v62 = v166;
        swift_isUniquelyReferenced_nonNull_native();
        v171 = v62;
        v63 = sub_1C445FAA8(v58, v36);
        v48 = v62[2];
        v27 = v160;
        v15 = v157;
        if (__OFADD__(v48, (v64 & 1) == 0))
        {
          goto LABEL_95;
        }

        v65 = v63;
        v66 = v64;
        sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
        if (sub_1C4F02458())
        {
          v67 = sub_1C445FAA8(v58, v59);
          v26 = v159;
          if ((v66 & 1) != (v68 & 1))
          {
            goto LABEL_107;
          }

          v65 = v67;
          if (v66)
          {
            goto LABEL_60;
          }

          goto LABEL_45;
        }

        v26 = v159;
        if ((v66 & 1) == 0)
        {
LABEL_45:
          v34 = v171;
          v171[(v65 >> 6) + 8] |= 1 << v65;
          v99 = (v34[6] + 16 * v65);
          *v99 = v58;
          v99[1] = v59;
          sub_1C44482AC(v167, (v34[7] + 32 * v65));
          v100 = v34[2];
          v56 = __OFADD__(v100, 1);
          v48 = (v100 + 1);
          if (v56)
          {
            goto LABEL_98;
          }

          goto LABEL_62;
        }

LABEL_60:

        v34 = v171;
        v110 = (v171[7] + 32 * v65);
        sub_1C440962C(v110);
        sub_1C44482AC(v167, v110);
LABEL_63:
        v25 = v152;
LABEL_64:
        v28 = v154;
        goto LABEL_65;
      }

      sub_1C4EFBDF8();
      v69 = sub_1C4F010B8();
      v41(v25, v38);
      if (v69)
      {
        v41(v40, v38);
        v70 = v35;
        v71 = v36;
        v72 = v153;
        sub_1C493E588();
        v48 = &v172;
        v153 = v72;
        if (v72)
        {
          goto LABEL_106;
        }

        *(&v169 + 1) = MEMORY[0x1E69E6370];
        LOBYTE(v168) = v73 & 1;
        sub_1C44482AC(&v168, v167);
        v74 = v166;
        swift_isUniquelyReferenced_nonNull_native();
        v171 = v74;
        v75 = sub_1C445FAA8(v70, v36);
        v48 = v74[2];
        v27 = v160;
        v15 = v157;
        if (__OFADD__(v48, (v76 & 1) == 0))
        {
          goto LABEL_97;
        }

        v65 = v75;
        v77 = v76;
        sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
        if (sub_1C4F02458())
        {
          v78 = sub_1C445FAA8(v70, v71);
          v26 = v159;
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_107;
          }

          v65 = v78;
          if (v77)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v26 = v159;
          if (v77)
          {
            goto LABEL_60;
          }
        }

        v34 = v171;
        v171[(v65 >> 6) + 8] |= 1 << v65;
        v102 = (v34[6] + 16 * v65);
        *v102 = v70;
        v102[1] = v71;
        sub_1C44482AC(v167, (v34[7] + 32 * v65));
        v103 = v34[2];
        v56 = __OFADD__(v103, 1);
        v48 = (v103 + 1);
        if (v56)
        {
          goto LABEL_100;
        }

LABEL_62:
        v34[2] = v48;
        goto LABEL_63;
      }

      sub_1C4EFBDE8();
      v88 = sub_1C4F010B8();
      v41(v25, v38);
      if (v88)
      {
        v41(v40, v38);
        v89 = v35;
        v90 = v36;
        v91 = v153;
        sub_1C493E370();
        v48 = &v172;
        v153 = v91;
        if (v91)
        {
          goto LABEL_106;
        }

        *(&v169 + 1) = MEMORY[0x1E69E63B0];
        *&v168 = v92;
        sub_1C44482AC(&v168, v167);
        v93 = v166;
        swift_isUniquelyReferenced_nonNull_native();
        v171 = v93;
        v94 = sub_1C445FAA8(v89, v36);
        v48 = v93[2];
        v27 = v160;
        v15 = v157;
        if (__OFADD__(v48, (v95 & 1) == 0))
        {
          goto LABEL_99;
        }

        v65 = v94;
        v96 = v95;
        sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
        if (sub_1C4F02458())
        {
          v97 = sub_1C445FAA8(v89, v90);
          v26 = v159;
          if ((v96 & 1) != (v98 & 1))
          {
            goto LABEL_107;
          }

          v65 = v97;
          if (v96)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v26 = v159;
          if (v96)
          {
            goto LABEL_60;
          }
        }

        v34 = v171;
        v171[(v65 >> 6) + 8] |= 1 << v65;
        v111 = (v34[6] + 16 * v65);
        *v111 = v89;
        v111[1] = v90;
        sub_1C44482AC(v167, (v34[7] + 32 * v65));
        v112 = v34[2];
        v56 = __OFADD__(v112, 1);
        v48 = (v112 + 1);
        if (v56)
        {
          goto LABEL_101;
        }

        goto LABEL_62;
      }

      sub_1C4EFBDB8();
      v101 = sub_1C4F010B8();
      v41(v25, v38);
      if (v101)
      {
        v41(v40, v38);
        goto LABEL_55;
      }

      sub_1C4EFBDA8();
      v104 = sub_1C4F010B8();
      v41(v25, v38);
      v41(v40, v38);
      if (v104)
      {
LABEL_55:
        v105 = v35;
        v106 = v36;
        sub_1C493CD60(&v168);
        v107 = *(&v168 + 1);
        v27 = v160;
        v15 = v157;
        v34 = v166;
        if (*(&v168 + 1) >> 60 == 15)
        {
          goto LABEL_56;
        }

        v113 = v168;
        *(&v169 + 1) = MEMORY[0x1E6969080];
        sub_1C44482AC(&v168, v167);
        v145 = v113;
        v146 = v107;
        sub_1C44344B8(v113, v107);
        swift_isUniquelyReferenced_nonNull_native();
        v171 = v34;
        v114 = sub_1C445FAA8(v105, v106);
        v48 = v34[2];
        if (__OFADD__(v48, (v115 & 1) == 0))
        {
          goto LABEL_102;
        }

        v116 = v114;
        v117 = v115;
        sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
        if (sub_1C4F02458())
        {
          v118 = sub_1C445FAA8(v105, v106);
          v25 = v152;
          v26 = v159;
          if ((v117 & 1) != (v119 & 1))
          {
            goto LABEL_107;
          }

          v116 = v118;
          if ((v117 & 1) == 0)
          {
LABEL_72:
            v34 = v171;
            v171[(v116 >> 6) + 8] |= 1 << v116;
            v120 = (v34[6] + 16 * v116);
            *v120 = v105;
            v120[1] = v106;
            sub_1C44482AC(v167, (v34[7] + 32 * v116));
            sub_1C441DFEC(v145, v146);
            v121 = v34[2];
            v56 = __OFADD__(v121, 1);
            v48 = (v121 + 1);
            if (v56)
            {
              goto LABEL_103;
            }

            goto LABEL_81;
          }
        }

        else
        {
          v25 = v152;
          v26 = v159;
          if ((v117 & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        v34 = v171;
        v132 = (v171[7] + 32 * v116);
        sub_1C440962C(v132);
        sub_1C44482AC(v167, v132);
        sub_1C441DFEC(v145, v146);
        goto LABEL_64;
      }

      v105 = v35;
      v106 = v36;
      v122 = sub_1C493CA4C();
      v27 = v160;
      v15 = v157;
      v34 = v166;
      if (!v123)
      {
LABEL_56:
        v80 = sub_1C445FAA8(v105, v106);
        v109 = v108;

        if (v109)
        {
          goto LABEL_33;
        }

        goto LABEL_57;
      }

      *(&v169 + 1) = MEMORY[0x1E69E6158];
      *&v168 = v122;
      *(&v168 + 1) = v123;
      sub_1C44482AC(&v168, v167);
      swift_isUniquelyReferenced_nonNull_native();
      v171 = v34;
      v124 = sub_1C445FAA8(v105, v106);
      v48 = v34[2];
      if (__OFADD__(v48, (v125 & 1) == 0))
      {
        goto LABEL_104;
      }

      v126 = v124;
      v127 = v125;
      sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
      if (sub_1C4F02458())
      {
        v128 = sub_1C445FAA8(v105, v106);
        v25 = v152;
        v26 = v159;
        if ((v127 & 1) != (v129 & 1))
        {
          goto LABEL_107;
        }

        v126 = v128;
        if ((v127 & 1) == 0)
        {
LABEL_80:
          v34 = v171;
          v171[(v126 >> 6) + 8] |= 1 << v126;
          v130 = (v34[6] + 16 * v126);
          *v130 = v105;
          v130[1] = v106;
          sub_1C44482AC(v167, (v34[7] + 32 * v126));
          v131 = v34[2];
          v56 = __OFADD__(v131, 1);
          v48 = (v131 + 1);
          if (v56)
          {
            goto LABEL_105;
          }

LABEL_81:
          v34[2] = v48;
          goto LABEL_64;
        }
      }

      else
      {
        v25 = v152;
        v26 = v159;
        if ((v127 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      v34 = v171;
      v133 = (v171[7] + 32 * v126);
      sub_1C440962C(v133);
      sub_1C44482AC(v167, v133);
      goto LABEL_64;
    }

    v41(v40, v38);
    v42 = sub_1C493CA4C();
    v44 = v35;
    if (!v43)
    {
      v34 = v166;
      v80 = sub_1C445FAA8(v35, v36);
      v82 = v81;

      v27 = v160;
      v15 = v157;
      if (v82)
      {
LABEL_33:
        swift_isUniquelyReferenced_nonNull_native();
        v171 = v34;
        v83 = v34[3];
        sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
        sub_1C4F02458();
        v34 = v171;
        v84 = *(v171[6] + 16 * v80 + 8);

        sub_1C44482AC((v34[7] + 32 * v80), v167);
        sub_1C4F02478();
LABEL_58:
        v26 = v159;
        v28 = v154;
        sub_1C4423A0C(v167, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_65:
        v86 = v164;
        v87 = v165;
        goto LABEL_66;
      }

LABEL_57:
      memset(v167, 0, sizeof(v167));
      goto LABEL_58;
    }

    *(&v169 + 1) = MEMORY[0x1E69E6158];
    *&v168 = v42;
    *(&v168 + 1) = v43;
    sub_1C44482AC(&v168, v167);
    v45 = v166;
    swift_isUniquelyReferenced_nonNull_native();
    v171 = v45;
    v46 = sub_1C445FAA8(v35, v36);
    v48 = v45[2];
    v49 = v160;
    v15 = v157;
    if (__OFADD__(v48, (v47 & 1) == 0))
    {
      break;
    }

    v50 = v46;
    v51 = v47;
    sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
    if (sub_1C4F02458())
    {
      v52 = sub_1C445FAA8(v44, v36);
      v26 = v159;
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_107;
      }

      v50 = v52;
      if ((v51 & 1) == 0)
      {
LABEL_16:
        v34 = v171;
        v171[(v50 >> 6) + 8] |= 1 << v50;
        v54 = (v34[6] + 16 * v50);
        *v54 = v44;
        v54[1] = v36;
        sub_1C44482AC(v167, (v34[7] + 32 * v50));
        v55 = v34[2];
        v56 = __OFADD__(v55, 1);
        v48 = (v55 + 1);
        if (v56)
        {
          goto LABEL_96;
        }

        v34[2] = v48;
        goto LABEL_36;
      }
    }

    else
    {
      v26 = v159;
      if ((v51 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v34 = v171;
    v85 = (v171[7] + 32 * v50);
    sub_1C440962C(v85);
    sub_1C44482AC(v167, v85);
LABEL_36:
    v25 = v152;
    v28 = v154;
    v86 = v164;
    v87 = v165;
    v27 = v49;
LABEL_66:
    v33 = v86 + v161;
    v32 = v87 - 1;
    if (!v32)
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  v142 = *(v48 - 32);
  swift_unexpectedError();
  __break(1u);
LABEL_107:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}