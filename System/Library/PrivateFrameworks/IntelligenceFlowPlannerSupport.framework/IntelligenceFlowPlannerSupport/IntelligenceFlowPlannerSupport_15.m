uint64_t sub_22BF46A44()
{
  v2 = sub_22C26E4B4();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v8 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
  sub_22C26E304();
  if (!v1)
  {
    v8 = sub_22C26E4A4();
    v9 = *(v5 + 8);
    v10 = sub_22BE200D4();
    v11(v10);
  }

  return v8;
}

uint64_t sub_22BF46B3C()
{
  sub_22BE183FC();
  v1 = v0[2];
  v0[3] = sub_22BF52030();
  v5 = sub_22BE36520(&dword_22C28ECF0);

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22BF46C08;
  v3 = v0[2];
  sub_22BE3E418();

  return (v5)();
}

uint64_t sub_22BF46C08()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  v3[5] = v0;

  if (!v0)
  {
    v9 = v3[2];
    v10 = v3[3];
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22BF46D10()
{
  sub_22BE183F0();
  v1 = v0[2];
  v2 = v0[3];

  sub_22BE17A94();
  v4 = v0[5];

  return v3();
}

void static ToolBoxUtility.stableHashData(hashableString:)()
{
  sub_22BE19460();
  v2 = v1;
  v4 = v3;
  v67 = *MEMORY[0x277D85DE8];
  v5 = sub_22C272E24();
  v6 = sub_22BE179D8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  sub_22BE1AB80();
  v11 = sub_22C272E14();
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v17 = v16 - v15;

  sub_22BE297F8(v4, v2);
  sub_22BE29F88(&qword_28106DEB8, MEMORY[0x277CC5598]);
  sub_22BE1A6BC();
  sub_22C272DA4();
  v18 = sub_22BE1B18C();
  sub_22BE29D7C(v18, v19);
  v20 = sub_22BE1B18C();
  sub_22BF15384(v20, v21, v0);
  v22 = sub_22BE1B18C();
  sub_22BE29DD4(v22, v23);
  sub_22BE1A6BC();
  sub_22C272D94();
  v24 = *(v8 + 8);
  v25 = sub_22BE1AB74();
  v26(v25);
  v27 = sub_22BE1B18C();
  sub_22BE29DD4(v27, v28);
  v29 = sub_22BF1418C(v17);
  v31 = v30;
  v32 = sub_22C273534();
  *(v32 + 16) = 8;
  *(v32 + 32) = 0;
  v33 = v32 + 32;
  v34 = sub_22C26E054();
  if (v34 != v35)
  {
    v36 = v34;
    v37 = v35;
    if (v35 >= v34)
    {
      v58 = v29 >> 32;
      v59 = v29;
      v57 = v29 >> 8;
      v55 = v29 >> 24;
      v56 = v29 >> 16;
      v53 = v29 >> 40;
      v54 = HIDWORD(v29);
      v51 = HIBYTE(v29);
      v52 = HIWORD(v29);
      v60 = v29;
      while (2)
      {
        if (v36 >= v37)
        {
          __break(1u);
        }

        else
        {
          v38 = *(v32 + 16);
          if (v38)
          {
            v39 = v36 + 1;
            v40 = v36 % v38;
            switch(v31 >> 62)
            {
              case 1uLL:
                if (v36 < v59 || v36 >= v58)
                {
                  goto LABEL_33;
                }

                v47 = sub_22C26DCF4();
                if (!v47)
                {
                  goto LABEL_39;
                }

                v43 = v47;
                v48 = sub_22C26DD14();
                v45 = v36 - v48;
                if (!__OFSUB__(v36, v48))
                {
                  goto LABEL_22;
                }

                goto LABEL_35;
              case 2uLL:
                if (v36 < *(v29 + 16))
                {
                  goto LABEL_32;
                }

                if (v36 >= *(v29 + 24))
                {
                  goto LABEL_34;
                }

                v42 = sub_22C26DCF4();
                if (!v42)
                {
                  goto LABEL_40;
                }

                v43 = v42;
                v44 = sub_22C26DD14();
                v45 = v36 - v44;
                if (__OFSUB__(v36, v44))
                {
                  goto LABEL_36;
                }

LABEL_22:
                v41 = *(v43 + v45);
                v29 = v60;
LABEL_23:
                if ((v40 & 0x8000000000000000) != 0)
                {
                  goto LABEL_29;
                }

                if (v40 >= *(v32 + 16))
                {
                  goto LABEL_30;
                }

                *(v33 + v40) ^= v41;
                ++v36;
                if (v37 == v39)
                {
                  goto LABEL_26;
                }

                continue;
              case 3uLL:
                goto LABEL_38;
              default:
                if (v36 >= BYTE6(v31))
                {
                  goto LABEL_31;
                }

                v61[0] = v29;
                v61[1] = v57;
                v61[2] = v56;
                v61[3] = v55;
                v61[4] = v54;
                v61[5] = v53;
                v61[6] = v52;
                v61[7] = v51;
                v62 = v31;
                v63 = BYTE2(v31);
                v64 = BYTE3(v31);
                v65 = BYTE4(v31);
                v66 = BYTE5(v31);
                v41 = v61[v36];
                goto LABEL_23;
            }
          }
        }

        break;
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

LABEL_26:
  [objc_allocWithZone(MEMORY[0x277CBEA90]) initWithBytes:v33 length:*(v32 + 16)];
  v49 = sub_22BE28DA8();
  sub_22BE29DD4(v49, v31);

  v50 = *MEMORY[0x277D85DE8];
  sub_22BE1AABC();
}

uint64_t sub_22BF471BC()
{
  sub_22BE183FC();
  v1 = v0[2];
  v0[3] = sub_22BF52030();
  v5 = sub_22BE36520(&dword_22C28ECF0);

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22BF47288;
  v3 = v0[2];
  sub_22BE3E418();

  return (v5)();
}

uint64_t sub_22BF47288()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  v3[5] = v0;

  if (!v0)
  {
    v9 = v3[2];
    v10 = v3[3];
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22BF47390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = *(v13 + 48);
  v20 = *(v13 + 52);
  v21 = swift_allocObject();
  v22 = sub_22BE41FB4();
  sub_22BF52530(v22, v23, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, v25, a11, a12, a9, a10, v26, a8, v28, v29, v30, v31, v32);
  return v21;
}

void sub_22BF47454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v23;
  a20 = v24;
  v145 = v25;
  v146 = v21;
  v144 = v26;
  v137 = v27;
  v138 = v28;
  v130 = v29;
  v147 = v30;
  v142 = v31;
  v143 = v32;
  v33 = sub_22C26E4C4();
  v34 = sub_22BE179D8(v33);
  v140 = v35;
  v141 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE17A44();
  v139 = v38;
  sub_22BE183BC();
  v39 = sub_22C26E494();
  v40 = sub_22BE19448(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE179EC();
  v45 = v44 - v43;
  v46 = sub_22C271FF4();
  v47 = sub_22BE179D8(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v52);
  v54 = &v129 - v53;
  sub_22C272014();
  sub_22C271FC4();
  v55 = sub_22C272014();
  v56 = sub_22C2737F4();
  v57 = sub_22C273824();
  v150 = v45;
  if (v57)
  {
    sub_22BE36138();
    v58 = swift_slowAlloc();
    *v58 = 0;
    v59 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v55, v56, v59, "ToolEmbeddingsDatabase:searchToolsStage1", "", v58, 2u);
    v45 = v150;
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  (*(v49 + 16))(v22, v54, v46);
  v60 = sub_22C272064();
  sub_22BE29494(v60);
  swift_allocObject();
  sub_22BE23E90();
  v61 = sub_22C272054();
  sub_22BE392E0(v61);
  v62 = *(v49 + 8);
  v63 = sub_22BE25D0C();
  v64(v63);
  v149 = v20;
  v65 = v138;
  if (v138)
  {
    sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
    v66 = sub_22C26E404();
    sub_22BE17A18(v66);
    v68 = *(v67 + 72);
    sub_22BF6AAD4();
    v148 = swift_allocObject();
    v136 = xmmword_22C275160;
    *(v148 + 16) = xmmword_22C275160;
    v21 = "attributedBundleID";

    sub_22BF6ACAC();
    v134 = sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
    v69 = (sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
    v70 = *v69;
    v131 = *(*v69 + 72);
    v133 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v71 = v133;
    v72 = swift_allocObject();
    v132 = v72;
    *(v72 + 16) = xmmword_22C2759F0;
    v73 = v72 + v71;
    v74 = (v72 + v71 + v69[14]);
    v75 = *MEMORY[0x277D78238];
    v76 = sub_22C26E464();
    sub_22BE18000(v76);
    v78 = *(v77 + 104);
    v78(v73, v75, v76);
    *v74 = v137;
    v74[1] = v65;
    v79 = *MEMORY[0x277D78288];
    v80 = sub_22C26E4D4();
    sub_22BE18000(v80);
    (*(v81 + 104))(v74, v79, v80);
    sub_22BE187DC();
    sub_22BE19DC4(v82, v83, v84, v80);
    v45 = v69[14];
    v85 = *MEMORY[0x277D78230];
    v86 = sub_22BE38614();
    (v78)(v86);
    sub_22BE1A140();
    sub_22BE19DC4(v87, v88, v89, v80);
    sub_22C26E3F4();
    v90 = v133;
    v91 = swift_allocObject();
    *(v91 + 16) = v136;
    sub_22BF53E38(v91 + v90, (v91 + v90 + v69[14]), 3);
  }

  else
  {
    v148 = MEMORY[0x277D84F90];
  }

  v137 = sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  v92 = sub_22BE5CE4C(&qword_27D907338, &qword_22C275290);
  sub_22BE486FC(v92);
  v94 = *(v93 + 72);
  v133 = *(v95 + 80);
  v138 = 3 * v94;
  *&v136 = (v133 + 32) & ~v133;
  v96 = swift_allocObject();
  sub_22BF6AAA8(v96, xmmword_22C27FED0);
  v97 = sub_22BE2296C(v45 + v94);
  sub_22BF53E38(v97, v98, 2);
  v99 = sub_22BE2296C(v45 + 2 * v94);
  sub_22BF53E38(v99, v100, 4);
  a10 = v96;
  sub_22BE6E0F0();
  v131 = a10;
  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  v101 = sub_22C26E404();
  sub_22BE17A18(v101);
  v135 = *(v102 + 72);
  sub_22BE3AE8C();
  v103 = swift_allocObject();
  v134 = v103;
  *(v103 + 16) = xmmword_22C2759F0;
  v132 = v103 + v45;
  v104 = v139;
  v105 = v140;
  *v139 = 0;
  *(v104 + 8) = 1;
  v106 = *MEMORY[0x277D78270];
  v107 = *(v105 + 104);
  v108 = v141;
  v107(v104, v106, v141);
  sub_22BE23CD0();
  sub_22C26E474();
  sub_22C26E3F4();
  *v104 = 0;
  *(v104 + 8) = 1;
  v107(v104, v106, v108);
  v109 = v149;
  sub_22BF6AA58();
  sub_22C26E474();
  v110 = swift_allocObject();
  sub_22BF6AAA8(v110, xmmword_22C28E670);
  v111 = sub_22BE2296C(v106 + v94);
  sub_22BF53E38(v111, v112, 0);
  v113 = sub_22BE2296C(v106 + 2 * v94);
  sub_22BF53E38(v113, v114, 3);
  v115 = sub_22BE2296C(v106 + v138);
  sub_22BF53E38(v115, v116, 2);
  sub_22BE29454();
  sub_22C26E3F4();
  a10 = v134;
  sub_22BE6E0C4();
  v117 = sub_22BE3C00C();
  sub_22BF58A38(v117, v118, v119, v120, v121, v122);
  if (!v21)
  {

    v123 = sub_22BE19454();
    sub_22BE641D4(v123, v124);
    sub_22BE41760();
    if (v109)
    {
      sub_22C274064();
      swift_unknownObjectRetain_n();
      v125 = swift_dynamicCastClass();
      if (!v125)
      {
        swift_unknownObjectRelease();
        v125 = MEMORY[0x277D84F90];
      }

      v126 = *(v125 + 16);

      if (__OFSUB__(v109 >> 1, v94))
      {
        __break(1u);
      }

      else if (v126 == (v109 >> 1) - v94)
      {
        swift_dynamicCastClass();
        sub_22BF6ACC4();
        swift_unknownObjectRelease();
        sub_22BF6AA4C();
        if (v106)
        {
LABEL_16:
          v127 = sub_22BE18240();
          v128 = sub_22BF576B8(v127);

          a10 = v128;
          sub_22BF5AAB4(&a10, v130);
          sub_22BE36050();
          sub_22BF5BCAC();

          goto LABEL_17;
        }

LABEL_15:
        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    sub_22BE41E4C();
    sub_22BF6ACC4();
    sub_22BF6AA4C();
    goto LABEL_15;
  }

  sub_22BF6AA4C();
  sub_22BE36050();
  sub_22BF5BCAC();

LABEL_17:
  sub_22BE19650();
  sub_22BE18478();
}

void sub_22BF47D78()
{
  sub_22BE19130();
  v89 = v2;
  v90 = v3;
  v4 = sub_22C26E4C4();
  v5 = sub_22BE179D8(v4);
  v92 = v6;
  v93 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v91 = v9;
  sub_22BE183BC();
  v10 = sub_22C26E494();
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  sub_22BE183BC();
  v14 = sub_22C271FF4();
  v15 = sub_22BE179D8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE183AC();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  sub_22C272014();
  sub_22C271FC4();
  v24 = sub_22C272014();
  v25 = sub_22C2737F4();
  if (sub_22C273824())
  {
    sub_22BE36138();
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v24, v25, v27, "ToolEmbeddingsDatabase:searchToolsStage1", "", v26, 2u);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  v28 = *(v17 + 16);
  v29 = sub_22BE2590C();
  v30(v29);
  v31 = sub_22C272064();
  sub_22BE29494(v31);
  swift_allocObject();
  v32 = sub_22C272054();
  sub_22BE392E0(v32);
  v33 = *(v17 + 8);
  v34 = sub_22BE22DF4();
  v35(v34);
  v36 = "IntelligenceFlowPlannerSupport";
  v94 = v0;
  if (v90)
  {
    sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
    sub_22BE17BC4();
    v37 = sub_22C26E404();
    sub_22BE17A18(v37);
    v39 = *(v38 + 72);
    sub_22BF6AAD4();
    *(swift_allocObject() + 16) = xmmword_22C275160;
    v1 = "attributedBundleID";

    sub_22BF6ACAC();
    sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
    v40 = sub_22BE5CE4C(&qword_27D907338, &qword_22C275290);
    sub_22BE486FC(v40);
    v83 = *(v41 + 72);
    v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_22C2759F0;
    v44 = (v84 + v43 + *(v22 + 56));
    v45 = *MEMORY[0x277D78238];
    v46 = sub_22C26E464();
    sub_22BE18000(v46);
    v48 = *(v47 + 104);
    v48(v84 + v43, v45, v46);
    *v44 = v89;
    v44[1] = v90;
    v49 = *MEMORY[0x277D78288];
    v50 = sub_22C26E4D4();
    sub_22BE18000(v50);
    (*(v51 + 104))(v44, v49, v50);
    sub_22BE187DC();
    sub_22BE19DC4(v52, v53, v54, v50);
    v55 = *(v22 + 56);
    v48(v84 + v43 + v83, *MEMORY[0x277D78230], v46);
    v36 = "IntelligenceFlowPlannerSupport";
    sub_22BE1A140();
    sub_22BE19DC4(v56, v57, v58, v50);
    sub_22C26E3F4();
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_22C275160;
    v60 = sub_22BE2296C(v59 + v43);
    sub_22BF53E38(v60, v61, 3);
  }

  sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  v62 = (sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
  v87 = *(*v62 + 72);
  v88 = (*(*v62 + 80) + 32) & ~*(*v62 + 80);
  v63 = v88;
  v64 = swift_allocObject();
  v85 = *(v36 + 159);
  *(v64 + 16) = v85;
  sub_22BF53E38(v64 + v63, (v64 + v63 + v62[14]), 1);
  sub_22BF53E38(v64 + v63 + v87, (v64 + v63 + v87 + v62[14]), 4);
  sub_22BE6E0F0();
  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  sub_22BE17BC4();
  v65 = sub_22C26E404();
  sub_22BE17A18(v65);
  v86 = *(v66 + 72);
  v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  *(swift_allocObject() + 16) = v85;
  sub_22BE36238();
  v69 = *MEMORY[0x277D78270];
  v70 = *(v92 + 104);
  v70(v91, v69, v93);
  sub_22BE23CD0();
  sub_22BF6AB80();
  sub_22C26E474();
  sub_22C26E3F4();
  sub_22BE36238();
  v70(v91, v69, v93);
  sub_22BF6AA58();
  sub_22C26E474();
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_22C275160;
  sub_22BF53E38(v71 + v88, (v71 + v88 + v62[14]), 0);
  sub_22BE1AB74();
  sub_22C26E3F4();
  sub_22BE6E0C4();
  v72 = sub_22BE3C00C();
  sub_22BF58A38(v72, v73, v74, v75, v76, v77);
  if (!v1)
  {

    v78 = sub_22BE19454();
    sub_22BE641D4(v78, v79);
    sub_22BE41760();
    if (v93)
    {
      sub_22C274064();
      swift_unknownObjectRetain_n();
      v80 = swift_dynamicCastClass();
      if (!v80)
      {
        swift_unknownObjectRelease();
        v80 = MEMORY[0x277D84F90];
      }

      v81 = *(v80 + 16);

      if (__OFSUB__(v93 >> 1, v94))
      {
        __break(1u);
      }

      else if (v81 == (v93 >> 1) - v94)
      {
        swift_dynamicCastClass();
        sub_22BF6ACC4();
        swift_unknownObjectRelease();
        sub_22BF6AA4C();
        if (v91)
        {
LABEL_15:
          v82 = sub_22BE18240();
          sub_22BF576B8(v82);
          sub_22BE48A68();

          sub_22BE36050();
          sub_22BF5BCAC();

          goto LABEL_16;
        }

LABEL_14:
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      swift_unknownObjectRelease();
    }

    sub_22BE41E4C();
    sub_22BF6ACC4();
    sub_22BF6AA4C();
    goto LABEL_14;
  }

  sub_22BF6AA4C();

  sub_22BE36050();
  sub_22BF5BCAC();

LABEL_16:
  sub_22BE19650();
  sub_22BE18478();
}

void sub_22BF48634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v143 = v25;
  v144 = v26;
  v148 = v27;
  v141 = v28;
  v142 = v29;
  v30 = sub_22C2720A4();
  v31 = sub_22BE179D8(v30);
  v146 = v32;
  v147 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE183AC();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  sub_22BE19E94();
  sub_22BE190A8(v39);
  v40 = sub_22BE5CE4C(&qword_27D90B6D8, &qword_22C28EBF8);
  sub_22BE19448(v40);
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE1A174();
  v139 = v44;
  v45 = sub_22BE183BC();
  v140 = type metadata accessor for ToolBoxToolSearchResult(v45);
  v46 = sub_22BE179D8(v140);
  v138 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BE17A44();
  v145 = v50;
  sub_22BE183BC();
  v51 = sub_22C271FF4();
  v52 = sub_22BE179D8(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v57);
  v59 = v134 - v58;
  sub_22C272014();
  sub_22C271FC4();
  v60 = sub_22C272014();
  v61 = sub_22C2737F4();
  if (sub_22C273824())
  {
    sub_22BE36138();
    v62 = swift_slowAlloc();
    v137 = v20;
    v63 = v37;
    v64 = v62;
    *v62 = 0;
    v65 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v60, v61, v65, "ToolEmbeddingsDatabase:searchToolStage2", "", v64, 2u);
    v37 = v63;
    v24 = v137;
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  v66 = *(v54 + 16);
  v67 = sub_22BE22DF4();
  v68(v67);
  v69 = sub_22C272064();
  sub_22BE29494(v69);
  swift_allocObject();
  sub_22BE289CC();
  v70 = sub_22C272054();
  (*(v54 + 8))(v59, v51);
  v71 = v148;
  if (*(v148 + 16))
  {
    v72 = *(v24 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
    v73 = sub_22C26E314();
    if (!v21)
    {
      v74 = v73;
      v75 = sub_22BF6AA6C();
      v76 = sub_22BF5B2F4(v75, 0xE800000000000000, v71, v24);
      v78 = v141;
      v77 = v142;
      v79 = sub_22BF6AC74(v141, v142, v74, v76);
      v135 = v84;
      v136 = v79;
      v134[1] = v70;

      v85 = sub_22BF5B2F4(0xD000000000000012, 0x800000022C2D4890, v148, v24);
      sub_22BF6AC74(v78, v77, v74, v85);
      v87 = v86;

      v88 = v135;

      sub_22BF2A9E0(v89, v88);
      v91 = v90;
      *&v150[0] = v136;

      sub_22BE6E21C();
      v92 = sub_22BE1B328();
      v93 = sub_22BF576B8(v92);
      v143 = v91;
      v144 = v87;
      v137 = v24;

      v94 = *(v93 + 16);
      if (v94)
      {
        v95 = v93 + 32;
        v96 = MEMORY[0x277D84F90];
        v98 = v139;
        v97 = v140;
        do
        {
          sub_22BE26B00(v95, v150);
          sub_22BE49224(v150, &v149);
          v99 = sub_22BE36658();
          sub_22BE5CE4C(v99, v100);
          if (swift_dynamicCast())
          {
            sub_22BE187DC();
            sub_22BE19DC4(v101, v102, v103, v97);
            sub_22BE29E84();
            sub_22BF68168();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v111 = *(v96 + 16);
              v112 = sub_22BE1B8F8();
              sub_22BE67120(v112, v113, v114, v96);
              v96 = v115;
            }

            v105 = *(v96 + 16);
            v104 = *(v96 + 24);
            if (v105 >= v104 >> 1)
            {
              v116 = sub_22BE18278(v104);
              sub_22BE67120(v116, v117, v118, v96);
              v96 = v119;
            }

            *(v96 + 16) = v105 + 1;
            sub_22BE25AD8();
            v107 = *(v106 + 72);
            sub_22BE29E84();
            sub_22BF68168();
            v98 = v139;
            v97 = v140;
          }

          else
          {
            sub_22BE1A140();
            sub_22BE19DC4(v108, v109, v110, v97);
            sub_22BE233E8(v98, &qword_27D90B6D8, &qword_22C28EBF8);
          }

          v95 += 40;
          --v94;
        }

        while (v94);
      }

      else
      {
        v96 = MEMORY[0x277D84F90];
      }

      *&v150[0] = v96;

      sub_22BF44174(v150);

      sub_22BE406B8();

      sub_22BE3C6E0(&a17);
      sub_22C271AD4();

      v120 = v148;

      v121 = sub_22C272084();
      v122 = sub_22C273794();

      if (os_log_type_enabled(v121, v122))
      {
        sub_22BE33578();
        v123 = swift_slowAlloc();
        *&v150[0] = sub_22BE3CF58();
        *v123 = 136315394;
        v124 = sub_22BE200D4();
        v125 = MEMORY[0x2318ABBB0](v124);
        v127 = sub_22BE61C88(v125, v126, v150);

        *(v123 + 4) = v127;
        *(v123 + 12) = 2080;
        v128 = MEMORY[0x2318ABBB0](v120, MEMORY[0x277D837D0]);
        v130 = sub_22BE61C88(v128, v129, v150);

        *(v123 + 14) = v130;
        _os_log_impl(&dword_22BE15000, v121, v122, "Top tool matches: %s for bundleIDS: %s", v123, 0x16u);
        swift_arrayDestroy();
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
        v131 = sub_22BE22C7C();
        MEMORY[0x2318AD180](v131);
      }

      v132 = sub_22BE2399C();
      v133(v132);
    }
  }

  else
  {
    sub_22C271AD4();
    v80 = sub_22C272084();
    v81 = sub_22C273784();
    if (sub_22BE35F8C(v81))
    {
      sub_22BE36138();
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_22BE15000, v80, v81, "ToolBox returning zero tools as it received empty list bundle ids", v82, 2u);
      v83 = sub_22BE3D494();
      MEMORY[0x2318AD180](v83);
    }

    (*(v146 + 8))(v37, v147);
  }

  sub_22BE39E38();

  sub_22BE18478();
}

void sub_22BF48E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  v126 = v20;
  v123 = v26;
  v124 = v27;
  v29 = v28;
  v121 = v30;
  v122 = v31;
  v32 = sub_22C2720A4();
  v33 = sub_22BE179D8(v32);
  v116 = v34;
  v117 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v37);
  sub_22BE19E94();
  v115 = v38;
  sub_22BE183BC();
  v39 = sub_22C26E4C4();
  v40 = sub_22BE179D8(v39);
  v119 = v41;
  v120 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE17A44();
  v118 = v44;
  sub_22BE183BC();
  v45 = sub_22C26E494();
  v46 = sub_22BE19448(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BE17A44();
  v49 = sub_22BE5CE4C(&qword_27D907338, &qword_22C275290);
  v50 = sub_22BE179D8(v49);
  v132 = v51;
  v134 = v50;
  v53 = *(v52 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v54);
  sub_22BE234F4();
  v55 = sub_22C271FF4();
  v56 = sub_22BE179D8(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v61);
  sub_22BE324EC();
  sub_22C272014();
  sub_22C271FC4();
  v62 = sub_22C272014();
  v63 = sub_22C2737F4();
  v125 = v29;
  if (sub_22C273824())
  {
    sub_22BE36138();
    v64 = swift_slowAlloc();
    *v64 = 0;
    v65 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v62, v63, v65, "ToolEmbeddingsDatabase:searchToolsStage3", "", v64, 2u);
    v29 = v125;
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  (*(v58 + 16))(v22, v23, v55);
  v66 = sub_22C272064();
  sub_22BE29494(v66);
  swift_allocObject();
  sub_22BE28DA8();
  sub_22C272054();
  (*(v58 + 8))(v23, v55);
  v67 = *(v29 + 16);
  if (!v67)
  {
    sub_22C271AD4();
    v93 = sub_22C272084();
    sub_22C273784();
    sub_22BE4612C();
    if (os_log_type_enabled(v93, v94))
    {
      sub_22BE36138();
      v95 = swift_slowAlloc();
      sub_22BF6AB44(v95);
      sub_22BF6AC20();
      _os_log_impl(v96, v97, v98, v99, v100, 2u);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    v101 = sub_22BE39058();
    v102(v101);
    goto LABEL_16;
  }

  a10 = MEMORY[0x277D84F90];
  sub_22BE7123C(0, v67, 0);
  v68 = a10;
  v130 = *MEMORY[0x277D78238];
  v128 = sub_22C26E464();
  sub_22BE18000(v128);
  v127 = *(v69 + 104);
  v70 = *MEMORY[0x277D78288];
  v71 = (v29 + 40);
  do
  {
    v72 = *(v71 - 1);
    v73 = *v71;
    v74 = (v21 + *(v134 + 48));
    v127(v21, v130, v128);
    *v74 = v72;
    v74[1] = v73;
    v75 = sub_22C26E4D4();
    sub_22BE18000(v75);
    (*(v76 + 104))(v74, v70, v75);
    sub_22BE187DC();
    sub_22BE19DC4(v77, v78, v79, v75);
    a10 = v68;
    v81 = *(v68 + 16);
    v80 = *(v68 + 24);

    if (v81 >= v80 >> 1)
    {
      sub_22BE39E18();
      sub_22BE7123C(v84, v85, v86);
      v68 = a10;
    }

    *(v68 + 16) = v81 + 1;
    v82 = (*(v132 + 80) + 32) & ~*(v132 + 80);
    v83 = *(v132 + 72);
    sub_22BEBFD18();
    v71 += 2;
    --v67;
  }

  while (v67);
  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  v87 = sub_22C26E404();
  sub_22BE17A18(v87);
  v133 = *(v88 + 72);
  sub_22BE3AE8C();
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_22C2759F0;
  *v118 = 0;
  v118[1] = 0;
  v129 = *(v119 + 104);
  (v129)(v118, *MEMORY[0x277D78268], v120);
  sub_22C26E474();
  sub_22C26E3F4();
  *v118 = 0;
  *(v118 + 8) = 1;
  v89 = *MEMORY[0x277D78270];
  v90 = sub_22BE38614();
  v129(v90);
  sub_22BE23CD0();
  sub_22C26E474();
  sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_22C275160;
  sub_22BF53E38(v91 + v82, (v91 + v82 + *(v134 + 48)), 4);
  sub_22C26E3F4();
  v92 = sub_22BF5B8C8(v121, v122, v131, v123, v124);
  if (!v126)
  {
    v103 = v92;

    sub_22C271AD4();

    v104 = sub_22C272084();
    v105 = sub_22C273794();

    if (os_log_type_enabled(v104, v105))
    {
      sub_22BE33578();
      v106 = swift_slowAlloc();
      a10 = sub_22BE3CF58();
      *v106 = 136315394;
      v107 = type metadata accessor for ToolBoxToolSearchResult(0);
      v108 = MEMORY[0x2318ABBB0](v103, v107);
      v110 = sub_22BE61C88(v108, v109, &a10);

      *(v106 + 4) = v110;
      *(v106 + 12) = 2080;
      v111 = MEMORY[0x2318ABBB0](v125, MEMORY[0x277D837D0]);
      v113 = sub_22BE61C88(v111, v112, &a10);

      *(v106 + 14) = v113;
      _os_log_impl(&dword_22BE15000, v104, v105, "Top tool matches: %s for toolIds: %s", v106, 0x16u);
      swift_arrayDestroy();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      v114 = sub_22BE3D494();
      MEMORY[0x2318AD180](v114);
    }

    (*(v116 + 8))(v115, v117);
LABEL_16:
    sub_22BE36050();
    sub_22BF5BCAC();

    goto LABEL_17;
  }

  sub_22BE36050();
  sub_22BF5BCAC();

LABEL_17:
  sub_22BE18478();
}

void sub_22BF4970C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v23;
  a20 = v24;
  v461 = v25;
  v462 = v21;
  v403 = v26;
  v427 = sub_22C26E4D4();
  v27 = sub_22BE179D8(v427);
  v459 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v31);
  sub_22BE19E94();
  sub_22BE190A8(v32);
  v397 = sub_22BE5CE4C(&qword_27D90B290, &qword_22C28C8F0);
  v33 = sub_22BE18000(v397);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE17B98();
  v455 = v36;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v37);
  sub_22BE19E94();
  sub_22BE190A8(v38);
  v39 = sub_22BE5CE4C(&qword_27D90B2E8, &unk_22C28EBB0);
  v40 = sub_22BE19448(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v43);
  sub_22BE19E94();
  sub_22BE18950(v44);
  v425 = sub_22C272CA4();
  v45 = sub_22BE179D8(v425);
  v410 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v49);
  sub_22BE19E94();
  sub_22BE18950(v50);
  v451 = sub_22C2720A4();
  v51 = sub_22BE179D8(v451);
  v450 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v55);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v56);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v57);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v58);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v59);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v60);
  sub_22BE19E94();
  v62 = sub_22BE18950(v61);
  v440 = type metadata accessor for ToolboxCustomKeyResult(v62);
  v63 = sub_22BE179D8(v440);
  v408 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v67);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v68);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v69);
  sub_22BE19E94();
  sub_22BE18950(v70);
  v423 = sub_22C272224();
  v71 = sub_22BE179D8(v423);
  v442 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v75);
  sub_22BE19E94();
  sub_22BE190A8(v76);
  v438[0] = sub_22BE5CE4C(&qword_27D90B348, &qword_22C28CA00);
  sub_22BE179D8(v438[0]);
  v443 = v77;
  v79 = *(v78 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v80);
  sub_22BE1A174();
  sub_22BE18950(v81);
  v445 = sub_22C2722D4();
  v82 = sub_22BE179D8(v445);
  v435 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v82);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v86);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v87);
  sub_22BE19E94();
  sub_22BE190A8(v88);
  v89 = sub_22BE5CE4C(&qword_27D90B6D0, &unk_22C28EBA0);
  sub_22BE19448(v89);
  v91 = *(v90 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v92);
  v93 = sub_22BE3A208();
  v94 = type metadata accessor for ToolboxDatabasePayload(v93);
  v95 = sub_22BE18000(v94);
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v98);
  sub_22BE19E94();
  sub_22BE18950(v99);
  v447 = sub_22C26E504();
  v100 = sub_22BE179D8(v447);
  v460 = v101;
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v100);
  sub_22BE17A44();
  sub_22BE18950(v104);
  v105 = sub_22C26E4C4();
  v106 = sub_22BE179D8(v105);
  v456 = v107;
  v457 = v106;
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v106);
  sub_22BE17A44();
  sub_22BE18950(v110);
  v111 = sub_22C26E494();
  v112 = sub_22BE19448(v111);
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v112);
  sub_22BE17A44();
  v458 = v115;
  sub_22BE183BC();
  v452 = sub_22C271FF4();
  v116 = sub_22BE179D8(v452);
  v118 = v117;
  v120 = *(v119 + 64);
  MEMORY[0x28223BE20](v116);
  sub_22BE183AC();
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v121);
  v123 = &v394 - v122;
  v124 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_signposter;
  sub_22C272014();
  sub_22C271FC4();
  v444 = v20;
  v125 = sub_22C272014();
  v126 = sub_22C2737F4();
  if (sub_22C273824())
  {
    sub_22BE36138();
    v127 = swift_slowAlloc();
    sub_22BF6AB44(v127);
    v128 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v125, v126, v128, "ToolEmbeddingsDatabase:searchToolCustomKey", "", v124, 2u);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  v129 = *(v118 + 16);
  v130 = sub_22BE18240();
  v131 = v452;
  v132(v130);
  v133 = sub_22C272064();
  sub_22BE29494(v133);
  swift_allocObject();
  sub_22BE48A68();
  v411 = sub_22C272054();
  (*(v118 + 8))(v123, v131);
  a10 = MEMORY[0x277D84FA0];
  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  v134 = sub_22C26E404();
  sub_22BE17A18(v134);
  v136 = *(v135 + 72);
  v452 = (*(v137 + 80) + 32) & ~*(v137 + 80);
  v436 = swift_allocObject();
  v441 = xmmword_22C275160;
  *(v436 + 16) = xmmword_22C275160;
  v138 = v453;
  *v453 = 0;
  v138[1] = 0;
  (*(v456 + 104))(v138, *MEMORY[0x277D78268], v457);
  sub_22C26E474();
  sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  v139 = sub_22BE5CE4C(&qword_27D907338, &qword_22C275290);
  sub_22BE486FC(v139);
  v141 = *(v140 + 72);
  v143 = (*(v142 + 80) + 32) & ~*(v142 + 80);
  v144 = swift_allocObject();
  *(v144 + 16) = v441;
  v145 = v144 + v143;
  v146 = *(v138 + 14);
  v147 = *MEMORY[0x277D78238];
  v148 = sub_22C26E464();
  sub_22BE18000(v148);
  (*(v149 + 104))(v145, v147);
  v150 = v459;
  v151 = v459 + 16;
  v152 = v427;
  v402 = *(v459 + 16);
  v402(v145 + v146, v461, v427);
  v153 = v436;
  sub_22BE187DC();
  sub_22BE19DC4(v154, v155, v156, v152);
  sub_22C26E3F4();
  v157 = *(v444 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
  v158 = v462;
  v159 = sub_22C26E314();
  if (v158)
  {
    goto LABEL_4;
  }

  v160 = v159 - 1;
  if (__OFSUB__(v159, 1))
  {
    goto LABEL_103;
  }

  if (v160 < -999)
  {
LABEL_104:
    __break(1u);
    return;
  }

  v415 = v157;
  v394 = v151;
  v462 = 0;
  v161 = 0;
  v418 = v160 / 500 + 1;
  v416 = v418 & ~(v418 >> 63);
  v453 = (v460 + 16);
  v452 = v460 + 8;
  sub_22BE33B48();
  v450 = v162 + 8;
  v434[1] = v443 + 104;
  v434[0] = v443 + 8;
  ++v435;
  v420 = v442 + 16;
  v419 = v442 + 8;
  v417 = (v410 + 32);
  v422 = v410 + 16;
  v421 = v410 + 8;
  *&v163 = 136315138;
  v400 = v163;
  v433 = *MEMORY[0x277D721B8];
  sub_22BE33A18();
  v432 = v22;
  v443 = v94;
  v164 = v447;
  for (i = v165; ; i = v427)
  {
    if (v161 == v418)
    {
      sub_22BE3CCE0();
      v161 = a10;
      if (*(a10 + 16) < 2uLL)
      {
        v338 = v406;
        v339 = v405;
      }

      else
      {
        sub_22BE1B754(&v425);
        sub_22C271AD4();
        v286 = sub_22C272084();
        v287 = sub_22C2737A4();
        if (sub_22BE35F8C(v287))
        {
          sub_22BE36138();
          v288 = swift_slowAlloc();
          sub_22BF6AB44(v288);
          sub_22BE37784(&dword_22BE15000, v289, v290, "Retrieving tool from the database via a custom key, and received multiple matches");
          sub_22BE1B2A4();
          MEMORY[0x2318AD180]();
        }

        sub_22BE33B48();
        v292 = *v291;
        sub_22BE3C558();
        v454 = v293;
        v293();
        v295 = v161 + 56;
        v294 = *(v161 + 56);
        v296 = *(v161 + 32);
        sub_22BE185B4();
        v299 = v298 & v297;
        v301 = (v300 + 63) >> 6;

        v302 = 0;
        v456 = MEMORY[0x277D84F90];
        v303 = v425;
        while (1)
        {
          v304 = v302;
          if (!v299)
          {
            break;
          }

LABEL_65:
          v305 = v161;
          v306 = *(v161 + 48);
          v307 = *(v408 + 72);
          sub_22BE22944(v434);
          sub_22BF6805C();
          v308 = v407;
          sub_22BF68168();
          sub_22BE32508();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_22BE33554(&v442);
            v309(v409, v308, v303);
            sub_22BE187DC();
            sub_22BE19DC4(v310, v311, v312, v303);
          }

          else
          {
            sub_22BF6AB2C(&v436);
            sub_22BE1A140();
            sub_22BE19DC4(v313, v314, v315, v303);
            sub_22BE3B038();
            sub_22BF680B4();
          }

          v299 &= v299 - 1;
          sub_22BEBFD18();
          v316 = sub_22BE23E90();
          sub_22BE1AB5C(v316, v317, v303);
          v161 = v305;
          if (v318)
          {
            sub_22BE233E8(v152, &qword_27D90B2E8, &unk_22C28EBB0);
          }

          else
          {
            v319 = *v417;
            (*v417)(v395, v152, v303);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v326 = *(v456 + 16);
              v327 = sub_22BE1B8F8();
              sub_22BE66E18(v327, v328, v329, v330);
              v456 = v331;
            }

            v322 = *(v456 + 16);
            v321 = *(v456 + 24);
            if (v322 >= v321 >> 1)
            {
              v332 = sub_22BE18278(v321);
              sub_22BE66E18(v332, v333, v334, v456);
              v456 = v335;
            }

            *(v456 + 16) = v322 + 1;
            sub_22BE25AD8();
            v303 = v425;
            v319(v324 + v323 + *(v325 + 72) * v322, v395, v425);
            v152 = v449[2];
          }
        }

        while (1)
        {
          v302 = v304 + 1;
          if (__OFADD__(v304, 1))
          {
            goto LABEL_102;
          }

          if (v302 >= v301)
          {
            break;
          }

          v299 = *(v295 + 8 * v302);
          ++v304;
          if (v299)
          {
            goto LABEL_65;
          }
        }

        v363 = v456;
        v22 = *(v456 + 16);
        if (!v22)
        {
          goto LABEL_90;
        }

        v452 = v161;
        v464 = MEMORY[0x277D84F90];
        sub_22BE7125C(0, v22, 0);
        v364 = v464;
        sub_22BE25AD8();
        v366 = v363 + v365;
        v368 = *(v367 + 72);
        v457 = *(v367 + 16);
        v458 = v368;
        v453 = v22;
        do
        {
          sub_22BE3D694();
          v369 = sub_22BE1B73C();
          (v457)(v369);
          v370 = sub_22C272C64();
          v460 = v371;
          v372 = sub_22C272C54();
          v374 = v373;
          sub_22BE33554(&v446);
          v375 = sub_22BE18944();
          v376(v375);
          v464 = v364;
          v378 = *(v364 + 16);
          v377 = *(v364 + 24);
          if (v378 >= v377 >> 1)
          {
            v381 = sub_22BE1AAE4(v377);
            sub_22BE7125C(v381, v378 + 1, 1);
            v364 = v464;
          }

          *(v364 + 16) = v378 + 1;
          v379 = (v364 + 32 * v378);
          v380 = v460;
          v379[4] = v370;
          v379[5] = v380;
          v379[6] = v372;
          v379[7] = v374;
          v366 += v458;
          --v22;
        }

        while (v22);

        v22 = v453;
        v161 = v452;
LABEL_91:
        v386 = sub_22BF397C0(v364);
        v338 = v406;
        i = v427;
        v150 = v459;
        v339 = v405;
        v153 = v455;
        if (v22 != *(v161 + 16))
        {

LABEL_97:

          sub_22BF38764();
          sub_22BE196B4();
          *v393 = 1;
          swift_willThrow();
          goto LABEL_5;
        }

        v387 = *(v386 + 16);

        if (v387 != 1)
        {
          goto LABEL_97;
        }

        sub_22C271AD4();
        v388 = sub_22C272084();
        v389 = sub_22C2737A4();
        if (sub_22BE35F8C(v389))
        {
          sub_22BE36138();
          v390 = swift_slowAlloc();
          sub_22BF6AB44(v390);
          sub_22BE37784(&dword_22BE15000, v391, v392, "Received multiple results, but all were assistant schemas of the same domain+kind. Proceeding, since these are equivalent");
          v150 = v459;
          sub_22BE1B2A4();
          MEMORY[0x2318AD180]();
        }

        sub_22BE33B48();
        v454();
        v157 = v461;
      }

      sub_22BF2DBA8(v161, v338);

      sub_22C271AD4();
      sub_22BE22868();
      v340 = v402;
      v402(v339, v157, i);
      v341 = sub_22C272084();
      v342 = v153;
      v343 = sub_22C273794();
      if (os_log_type_enabled(v341, v343))
      {
        sub_22BE33578();
        v344 = v150;
        v345 = swift_slowAlloc();
        v461 = sub_22BE3CF58();
        v464 = v461;
        *v345 = 136315394;
        sub_22C273834();
        sub_22BE233E8(v342, &qword_27D90B290, &qword_22C28C8F0);
        v346 = sub_22BE1B18C();
        sub_22BE61C88(v346, v347, v348);
        sub_22BE48A68();

        *(v345 + 4) = v342;
        *(v345 + 12) = 2080;
        v349 = sub_22BF6AB2C(&v424);
        v340(v349, v405, i);
        sub_22BE261AC();
        v350 = sub_22C273074();
        v351 = *(v344 + 8);
        v352 = sub_22BE36318();
        v353(v352);
        v354 = sub_22BE1B73C();
        sub_22BE61C88(v354, v355, v356);
        sub_22BE48A68();

        *(v345 + 14) = v350;
        sub_22BF6AC20();
        _os_log_impl(v357, v358, v359, v360, v361, 0x16u);
        swift_arrayDestroy();
        v362 = sub_22BE19F74();
        MEMORY[0x2318AD180](v362);
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
      }

      else
      {

        v382 = *(v150 + 8);
        v383 = sub_22BE36318();
        v384(v383);
        sub_22BE233E8(v342, &qword_27D90B290, &qword_22C28C8F0);
      }

      sub_22BE35858();
      sub_22BE3C558();
      v385();
      sub_22BEBFD18();
      sub_22BE3CA84(v465);
      sub_22BF5BCAC();

      goto LABEL_6;
    }

    if (v161 == v416)
    {
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
      goto LABEL_104;
    }

    if (v161 == 0x4189374BC6A7F0)
    {
      goto LABEL_99;
    }

    v426 = v161;
    v167 = v462;
    v168 = sub_22C26E3B4();
    if (v167)
    {
      break;
    }

    v462 = 0;
    v458 = *(v168 + 16);
    if (v458)
    {
      v169 = 0;
      v170 = *(v460 + 80);
      sub_22BE19E14();
      v456 = v171;
      v457 = (v171 + v172);
      while (1)
      {
        if (v169 >= *(v171 + 16))
        {
          __break(1u);
LABEL_90:

          v364 = MEMORY[0x277D84F90];
          goto LABEL_91;
        }

        v161 = v460;
        (*(v460 + 16))(v454, &v457[*(v460 + 72) * v169], v164);
        sub_22C26E4F4();
        v153 = v173;
        v174 = *(v161 + 8);
        v175 = sub_22BE1B73C();
        v176(v175);
        if (v153 >> 60 == 15)
        {
          sub_22BE351B8(&a12);
          sub_22C271AD4();
          v177 = sub_22C272084();
          v178 = sub_22C2737A4();
          if (sub_22BE35F8C(v178))
          {
            sub_22BE36138();
            v179 = swift_slowAlloc();
            *v179 = 0;
            _os_log_impl(&dword_22BE15000, v177, v178, "ANN search for custom key did not return a payload", v179, 2u);
            v180 = sub_22BE3D494();
            MEMORY[0x2318AD180](v180);
          }

          sub_22BE35858();
          sub_22BE3C558();
          v181();
          v153 = v455;
          v157 = v461;
          goto LABEL_52;
        }

        if (qword_281079BD8 != -1)
        {
          swift_once();
        }

        sub_22BE29F88(&qword_281079998, type metadata accessor for ToolboxDatabasePayload);
        sub_22BE260B8();
        v182 = v462;
        sub_22C26DB54();
        v161 = v182;
        if (v182)
        {
          v462 = 0;

          sub_22BE1A140();
          sub_22BE19DC4(v183, v184, v185, v94);
          sub_22BE233E8(v22, &qword_27D90B6D0, &unk_22C28EBA0);
          sub_22BE351B8(&v466);
          sub_22C271AD4();
          v157 = sub_22C272084();
          v152 = sub_22C2737A4();
          if (sub_22BE35F8C(v152))
          {
            sub_22BE36138();
            v186 = swift_slowAlloc();
            *v186 = 0;
            _os_log_impl(&dword_22BE15000, v157, v152, "Payload from ANN search for custom key could not be decoded", v186, 2u);
            v164 = v447;
            sub_22BE1B2A4();
            MEMORY[0x2318AD180]();
          }

          v187 = sub_22BE2590C();
          sub_22BF158B4(v187, v188);

          sub_22BE35858();
          sub_22BE3C558();
          v189();
          sub_22BE33A18();
          goto LABEL_52;
        }

        sub_22BE187DC();
        sub_22BE19DC4(v190, v191, v192, v94);
        sub_22BE185FC();
        sub_22BE22944(&a10);
        sub_22BF68168();
        sub_22BE37584();
        sub_22BE22944(&a11);
        sub_22BF6805C();
        sub_22BE18944();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v462 = 0;
        if (!EnumCaseMultiPayload)
        {
          break;
        }

        if (EnumCaseMultiPayload != 1)
        {
          sub_22BE25C30();
          v431 = v244;
          v430 = v246;
          v429 = sub_22BE1BD3C((v245 + 32), v246);
          sub_22BE29E4C(v463);
          sub_22C2722B4();
          swift_getKeyPath();
          sub_22BE2BA74();
          v247 = swift_allocObject();
          sub_22BE5CE4C(&qword_27D907770, &unk_22C2880C0);
          inited = swift_initStackObject();
          sub_22BE46B10(inited);
          *(v247 + 16) = sub_22BE78DC8(0);
          *v437 = v247;
          sub_22BE33554(&v460);
          v249 = sub_22BE3C604();
          v250(v249);
          sub_22BE269EC();
          sub_22BE29F88(&qword_28106DF70, v251);
          sub_22BF68104();
          sub_22BE351B8(v449);
          sub_22BE291B0();
          sub_22C2724E4();

          sub_22BE33554(&v459);
          v252 = sub_22BE1B62C();
          v253(v252);
          v218 = *v435;
          sub_22BF6AB38();
          v218();
          if (qword_27D906378 != -1)
          {
            sub_22BE185D0();
            swift_once();
          }

          v254 = sub_22C26E244();
          v255 = sub_22BE199F4(v254, qword_27D90B298);
          v256 = v462;
          v257 = (*(v431 + 72))(0, v255, v430);
          v462 = v256;
          if (v256)
          {
            goto LABEL_77;
          }

          v258 = v257;
          sub_22BF6AB38();
          v218();
          v259 = *(v258 + 16);
          if (v259 >= 2)
          {
LABEL_56:

            sub_22BE3CCE0();

            sub_22BF38764();
            sub_22BE196B4();
            *v283 = 2;
            swift_willThrow();
            v284 = sub_22BE2590C();
            sub_22BF158B4(v284, v285);
            sub_22BE1A2C4();
            goto LABEL_5;
          }

          v224 = v428;
          if (v259)
          {

            if (!*(v258 + 16))
            {
              goto LABEL_100;
            }

            sub_22BE25AD8();
            v152 = *(v260 + 16);
            v161 = v423;
            v152(v413, v258 + v261, v423);

            v262 = sub_22BE33B3C();
            (v152)(v262);
            sub_22BE32508();
            swift_storeEnumTagMultiPayload();
            v157 = &a10;
            v263 = sub_22BE1B62C();
            sub_22C1A8078(v263, v264, v265, v266, v267, v268, v269, v270, v394, v395, v396, v397, v398, v399, v400, *(&v400 + 1), v401, v402, v403, v404);
            v271 = sub_22BE2590C();
            sub_22BF158B4(v271, v272);
            sub_22BE3B038();
            sub_22BF680B4();
            sub_22BE31718();
            v274 = *(v273 + 8);
            v242 = sub_22BE180C8();
            goto LABEL_50;
          }

          v275 = v438;
LABEL_46:
          v157 = *(v275 - 32);
          sub_22C271AD4();

          v276 = sub_22C272084();
          v152 = sub_22C2737C4();

          if (os_log_type_enabled(v276, v152))
          {
            sub_22BE1A260();
            swift_slowAlloc();
            v161 = v157;
            sub_22BF6AA04();
            v157 = swift_slowAlloc();
            v464 = v157;
            *v164 = v400;
            v431 = sub_22BE61C88(v414, v224, &v464);

            *(v164 + 4) = v431;
            _os_log_impl(&dword_22BE15000, v276, v152, "ToolDefinition not found for %s", v164, 0xCu);
            sub_22BE26B64(v157);
            v277 = sub_22BE19F74();
            MEMORY[0x2318AD180](v277);
            v278 = sub_22BE22C7C();
            MEMORY[0x2318AD180](v278);
            v279 = sub_22BE2590C();
            sub_22BF158B4(v279, v280);
          }

          else
          {
            v281 = sub_22BE2590C();
            sub_22BF158B4(v281, v282);
          }

          sub_22BE35858();
          sub_22BE3C558();
          goto LABEL_50;
        }

        sub_22BE33554(&v442);
        v161 = v424;
        v152 = v425;
        v194(v424, v449[0], v425);
        sub_22BE33554(&v447);
        v195 = sub_22BE1AEE4();
        v196(v195);
        sub_22BE32508();
        swift_storeEnumTagMultiPayload();
        v157 = &a10;
        v197 = sub_22BE1B62C();
        sub_22C1A8078(v197, v198, v199, v200, v201, v202, v203, v204, v394, v395, v396, v397, v398, v399, v400, *(&v400 + 1), v401, v402, v403, v404);
        v205 = sub_22BE2590C();
        sub_22BF158B4(v205, v206);
        sub_22BE3B038();
        sub_22BF680B4();
        sub_22BE33554(&v446);
        v207(v161, v152);
        sub_22BE1A2C4();
        sub_22BE33A18();
LABEL_51:
        v94 = v443;
        v164 = v447;
LABEL_52:
        ++v169;
        v150 = v459;
        v171 = v456;
        if (v458 == v169)
        {
          goto LABEL_55;
        }
      }

      sub_22BE25C30();
      v430 = v208;
      v431 = v210;
      v429 = sub_22BE1BD3C((v209 + 32), v210);
      sub_22BE351B8(v463);
      sub_22C2722B4();
      swift_getKeyPath();
      sub_22BE2BA74();
      v211 = swift_allocObject();
      sub_22BE5CE4C(&qword_27D907770, &unk_22C2880C0);
      v212 = swift_initStackObject();
      sub_22BE46B10(v212);
      *(v211 + 16) = sub_22BE78DC8(0);
      *v437 = v211;
      sub_22BE33554(&v460);
      v213 = sub_22BE3C604();
      v214(v213);
      sub_22BE269EC();
      sub_22BE29F88(&qword_28106DF70, v215);
      sub_22BF68104();
      sub_22BE29E4C(&v448);
      sub_22BE291B0();
      sub_22C2724E4();

      sub_22BE33554(&v459);
      v216 = sub_22BE1B62C();
      v217(v216);
      v218 = *v435;
      sub_22BF6AB38();
      v218();
      if (qword_27D906378 != -1)
      {
        sub_22BE185D0();
        swift_once();
      }

      v219 = sub_22C26E244();
      v220 = sub_22BE199F4(v219, qword_27D90B298);
      v221 = v429;
      v222 = v462;
      (*(v430 + 72))(v22, v220, v431);
      v462 = v222;
      if (v222)
      {
LABEL_77:

        sub_22BE3CCE0();
        v336 = sub_22BE2590C();
        sub_22BF158B4(v336, v337);

        sub_22BF6AB38();
        v218();
        sub_22BE1A2C4();

        goto LABEL_5;
      }

      sub_22BE28DA8();
      sub_22BF6AB38();
      v218();
      v223 = *(v221 + 2);
      if (v223 >= 2)
      {
        goto LABEL_56;
      }

      v224 = v428;
      if (!v223)
      {

        v275 = &v437;
        goto LABEL_46;
      }

      if (!*(v221 + 2))
      {
        goto LABEL_101;
      }

      sub_22BE25AD8();
      v226 = *(v225 + 16);
      v228 = v412;
      v229 = v423;
      v226(v412, &v221[v227], v423);

      v161 = v439;
      v226(v439, v228, v229);
      sub_22BE32508();
      swift_storeEnumTagMultiPayload();
      v157 = &a10;
      v152 = v438[1];
      v230 = sub_22BE3EA80();
      sub_22C1A8078(v230, v231, v232, v233, v234, v235, v236, v237, v394, v395, v396, v397, v398, v399, v400, *(&v400 + 1), v401, v402, v403, v404);
      v238 = sub_22BE2590C();
      sub_22BF158B4(v238, v239);
      sub_22BE3B038();
      sub_22BF680B4();
      sub_22BE31718();
      v241 = *(v240 + 8);
      v242 = v228;
      v243 = v229;
LABEL_50:
      v241(v242, v243);
      sub_22BE1A2C4();
      sub_22BE33A18();
      v22 = v432;
      goto LABEL_51;
    }

    v157 = v461;
LABEL_55:
    v161 = v426 + 1;
  }

  sub_22BE3CCE0();
LABEL_4:

LABEL_5:
  sub_22BE3CA84(v465);
  sub_22BF5BCAC();

LABEL_6:
  sub_22BE18478();
}

void sub_22BF4B6F0()
{
  sub_22BE19130();
  v0 = sub_22C26E4C4();
  v1 = sub_22BE179D8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  v8 = v7 - v6;
  v9 = sub_22C26E494();
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  sub_22BE1AB80();
  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  v13 = sub_22C26E404();
  sub_22BE17A18(v13);
  v15 = *(v14 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22C275160;
  sub_22BE36238();
  (*(v3 + 104))(v8, *MEMORY[0x277D78270], v0);
  sub_22BE23CD0();
  sub_22BF6AB80();
  sub_22C26E474();
  sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  v19 = (sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
  v20 = *(*v19 + 72);
  v21 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22C27FED0;
  v23 = v22 + v21;
  sub_22BF53E38(v23, (v23 + v19[14]), 1);
  sub_22BF53E38(v23 + v20, (v23 + v20 + v19[14]), 2);
  sub_22BF53E38(v23 + 2 * v20, (v23 + 2 * v20 + v19[14]), 4);
  sub_22BE194F8();
  sub_22C26E3F4();
  sub_22BF5BF00(v18);

  sub_22BE22978();
  sub_22BE18478();
}

void sub_22BF4B988()
{
  sub_22BE19130();
  v59 = v1;
  v55 = v2;
  v4 = v3;
  v58 = sub_22C26E404();
  v5 = *(v58 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BE17A44();
  v56 = v7;
  sub_22BE183BC();
  v8 = sub_22C26E4C4();
  v9 = sub_22BE179D8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  sub_22BE3A208();
  v14 = sub_22C26E494();
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  sub_22BE3AC88();
  v18 = *v4;
  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  v57 = v5;
  v19 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v54 = *(v5 + 72);
  v20 = swift_allocObject();
  sub_22BF6ABF4(v20, xmmword_22C275160);
  (*(v11 + 104))(v0, *MEMORY[0x277D78270], v8);
  sub_22BE23CD0();
  sub_22C26E474();
  sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  v21 = sub_22BE5CE4C(&qword_27D907338, &qword_22C275290);
  sub_22BE3C200(v21);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v60 = *(v22 + 72);
  v25 = swift_allocObject();
  v26 = sub_22BF6ABE0(v25, xmmword_22C275160);
  sub_22BF53E38(v26, v27, v18);
  v53 = v19;
  sub_22C26E3F4();
  if (v59)
  {

    sub_22BF6ACAC();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_22C2759F0;
    v29 = v28 + v24;
    v30 = (v28 + v24 + *(v8 + 48));
    v31 = *MEMORY[0x277D78238];
    v32 = sub_22C26E464();
    v52 = v20;
    v33 = *(*(v32 - 8) + 104);
    v33(v29, v31, v32);
    *v30 = v55;
    v30[1] = v59;
    v34 = *MEMORY[0x277D78288];
    v35 = sub_22C26E4D4();
    sub_22BE18000(v35);
    (*(v36 + 104))(v30, v34, v35);
    sub_22BE187DC();
    sub_22BE19DC4(v37, v38, v39, v35);
    v40 = *(v8 + 48);
    v41 = *MEMORY[0x277D78230];
    v42 = sub_22BE38614();
    (v33)(v42);
    v20 = v52;
    sub_22BE1A140();
    sub_22BE19DC4(v43, v44, v45, v35);
    sub_22C26E3F4();
    v47 = *(v52 + 16);
    v46 = *(v52 + 24);
    if (v47 >= v46 >> 1)
    {
      v48 = sub_22BE18278(v46);
      sub_22BE66E98(v48, v49, v50, v52);
      v20 = v51;
    }

    v20[1].n128_u64[0] = v47 + 1;
    (*(v57 + 32))(v20 + v53 + v47 * v54, v56, v58);
  }

  sub_22BF5BF00(v20);

  sub_22BE22978();
  sub_22BE18478();
}

void sub_22BF4BE4C()
{
  sub_22BE19460();
  v1 = type metadata accessor for ToolboxVersion(0);
  v2 = sub_22BE18000(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v7 = v6 - v5;
  v8 = sub_22C2720A4();
  v9 = sub_22BE179D8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  sub_22BE1AB80();
  sub_22C271AD4();

  v12 = sub_22C272084();
  v13 = sub_22C273784();

  if (os_log_type_enabled(v12, v13))
  {
    sub_22BE1A260();
    v14 = swift_slowAlloc();
    sub_22BE2386C();
    v31 = swift_slowAlloc();
    *v14 = 136315138;
    v15 = v0[19];
    sub_22BE1BD3C(v0 + 15, v0[18]);
    v16 = *(v15 + 16);
    v17 = sub_22BE3FDE8();
    v18(v17, v15);
    v19 = *(v1 + 20);
    sub_22C26FDE4();
    v20 = sub_22BF6AA80();
    sub_22BE18524(v20);
    (*(v21 + 8))(v7 + v19);
    v22 = sub_22BE18040();
    sub_22BE61C88(v22, v23, v24);
    sub_22BE3FDE8();

    *(v14 + 4) = v7 + v19;
    sub_22BE40940(&dword_22BE15000, v25, v26, "%s toolbox: Warming up database");
    sub_22BE26B64(v31);
    v27 = sub_22BE19F74();
    MEMORY[0x2318AD180](v27);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();

    v28 = sub_22BE2399C();
  }

  else
  {

    v28 = sub_22BE25D18();
  }

  v29(v28);
  v30 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
  sub_22C26E374();
  sub_22BE1AABC();
}

void sub_22BF4C080()
{
  sub_22BE19460();
  v1 = type metadata accessor for ToolboxVersion(0);
  v2 = sub_22BE18000(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v7 = v6 - v5;
  v8 = sub_22C2720A4();
  v9 = sub_22BE179D8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  sub_22BE1AB80();
  sub_22C271AD4();

  v12 = sub_22C272084();
  v13 = sub_22C273784();

  if (os_log_type_enabled(v12, v13))
  {
    sub_22BE1A260();
    v14 = swift_slowAlloc();
    sub_22BE2386C();
    v31 = swift_slowAlloc();
    *v14 = 136315138;
    v15 = v0[19];
    sub_22BE1BD3C(v0 + 15, v0[18]);
    v16 = *(v15 + 16);
    v17 = sub_22BE3FDE8();
    v18(v17, v15);
    v19 = *(v1 + 20);
    sub_22C26FDE4();
    v20 = sub_22BF6AA80();
    sub_22BE18524(v20);
    (*(v21 + 8))(v7 + v19);
    v22 = sub_22BE18040();
    sub_22BE61C88(v22, v23, v24);
    sub_22BE3FDE8();

    *(v14 + 4) = v7 + v19;
    sub_22BE40940(&dword_22BE15000, v25, v26, "%s toolbox: Cooling down database");
    sub_22BE26B64(v31);
    v27 = sub_22BE19F74();
    MEMORY[0x2318AD180](v27);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();

    v28 = sub_22BE2399C();
  }

  else
  {

    v28 = sub_22BE25D18();
  }

  v29(v28);
  v30 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
  sub_22C26E394();
  sub_22BE1AABC();
}

void sub_22BF4C2B0()
{
  sub_22BE19130();
  v63 = v2;
  v58 = v3;
  v5 = v4;
  v61 = sub_22C26E404();
  v6 = *(v61 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22BE17A44();
  v59 = v8;
  sub_22BE183BC();
  v9 = sub_22C26E4C4();
  v10 = sub_22BE179D8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  sub_22BE3A208();
  v15 = sub_22C26E494();
  v16 = sub_22BE19448(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  sub_22BE3AC88();
  v19 = *v5;
  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  v60 = v6;
  v20 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v57 = *(v6 + 72);
  v21 = swift_allocObject();
  sub_22BF6ABF4(v21, xmmword_22C275160);
  (*(v12 + 104))(v1, *MEMORY[0x277D78270], v9);
  sub_22BE23CD0();
  sub_22C26E474();
  sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  v22 = sub_22BE5CE4C(&qword_27D907338, &qword_22C275290);
  sub_22BE3C200(v22);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v64 = *(v23 + 72);
  v26 = swift_allocObject();
  v27 = sub_22BF6ABE0(v26, xmmword_22C275160);
  sub_22BF53E38(v27, v28, v19);
  v62 = v20;
  sub_22C26E3F4();
  if (v63)
  {

    sub_22BF6ACAC();
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_22C2759F0;
    v29 = v56 + v25;
    v30 = (v56 + v25 + *(v9 + 48));
    v31 = *MEMORY[0x277D78238];
    v32 = sub_22C26E464();
    sub_22BE18000(v32);
    v34 = *(v33 + 104);
    v34(v29, v31, v32);
    *v30 = v58;
    v30[1] = v63;
    v35 = *MEMORY[0x277D78288];
    v36 = sub_22C26E4D4();
    sub_22BE18000(v36);
    (*(v37 + 104))(v30, v35, v36);
    sub_22BE187DC();
    sub_22BE19DC4(v38, v39, v40, v36);
    v41 = *(v9 + 48);
    v42 = *MEMORY[0x277D78230];
    v43 = sub_22BE38614();
    (v34)(v43);
    sub_22BE1A140();
    sub_22BE19DC4(v44, v45, v46, v36);
    sub_22C26E3F4();
    v48 = v21[1].n128_u64[0];
    v47 = v21[1].n128_u64[1];
    if (v48 >= v47 >> 1)
    {
      v52 = sub_22BE18278(v47);
      sub_22BE66E98(v52, v53, v54, v21);
      v21 = v55;
    }

    v21[1].n128_u64[0] = v48 + 1;
    (*(v60 + 32))(v21 + v62 + v48 * v57, v59, v61);
  }

  sub_22BF5BF58(v21);
  if (v0)
  {
LABEL_7:
  }

  else
  {
    v50 = v49;

    switch(v19)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        goto LABEL_7;
      default:
        v51 = sub_22BF44878(v50);

        sub_22BF3954C(v51);
        break;
    }
  }

  sub_22BE22978();
  sub_22BE18478();
}

uint64_t sub_22BF4C7A0()
{
  sub_22BE183F0();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_22C2720A4();
  v1[10] = v3;
  sub_22BE17A18(v3);
  v1[11] = v4;
  v6 = *(v5 + 64);
  v1[12] = sub_22BE25184();
  v7 = sub_22C2722D4();
  v1[13] = v7;
  sub_22BE17A18(v7);
  v1[14] = v8;
  v10 = *(v9 + 64);
  v1[15] = sub_22BE25184();
  v11 = sub_22C272224();
  v1[16] = v11;
  sub_22BE17A18(v11);
  v1[17] = v12;
  v14 = *(v13 + 64);
  v1[18] = sub_22BE3602C();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v15 = sub_22C26E244();
  v1[21] = v15;
  sub_22BE17A18(v15);
  v1[22] = v16;
  v18 = *(v17 + 64);
  v1[23] = sub_22BE25184();
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

void sub_22BF4C944()
{
  v1 = v0[9];
  v2 = v1[7];
  v3 = v1[8];
  sub_22BE1BD3C(v1 + 4, v2);
  (*(v3 + 96))(&v136, v2, v3);
  v4 = v136;
  if (v136)
  {

    sub_22BF2A9E0(v5, v4);
    v7 = v6;
    v8 = sub_22BE18944();
    sub_22BF2AE88(v8);
    sub_22BE2BA74();
    v9 = swift_allocObject();
    v0[24] = v9;
    *(v9 + 16) = MEMORY[0x277D84F90];
    if (qword_27D906378 != -1)
    {
      sub_22BE185D0();
      swift_once();
    }

    v10 = v0[22];
    v11 = v0[23];
    v12 = v0[21];
    v13 = sub_22BE199F4(v12, qword_27D90B298);
    (*(v10 + 16))(v11, v13, v12);
    if (!*(v7 + 16))
    {
      v79 = v0[15];

      v80 = v1[8];
      sub_22BE1BD3C(v1 + 4, v1[7]);
      sub_22C2722B4();
      v81 = *(v80 + 80);

      v134 = v81 + *v81;
      v82 = v81[1];
      v83 = swift_task_alloc();
      v0[25] = v83;
      *v83 = v0;
      v83[1] = sub_22BF4D1A8;
      v84 = v0[23];
      v85 = v0[15];
      sub_22BE336F4();

      __asm { BRAA            X6, X16 }
    }

    v14 = 0;
    v131 = v0[17];
    v133 = *(v0[8] + 16);
    v128 = (v131 + 32);
    v125 = v9;
    v15 = MEMORY[0x277D84F90];
    v135 = v0;
    while (v14 != v133)
    {
      v16 = v0[20];
      v17 = v0[16];
      v18 = v0[8];
      v19 = (*(v131 + 80) + 32) & ~*(v131 + 80);
      v20 = *(v131 + 72);
      (*(v131 + 16))(v16, v18 + v19 + v20 * v14++, v17);
      v21 = sub_22C2721D4();
      v23 = v22;
      if (*(v7 + 16))
      {
        v24 = v21;
        v25 = *(v7 + 40);
        sub_22C274154();
        sub_22C272F44();
        v26 = sub_22C2741A4();
        v27 = ~(-1 << *(v7 + 32));
        do
        {
          v28 = v26 & v27;
          if (((*(v7 + 56 + (((v26 & v27) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v27)) & 1) == 0)
          {
            goto LABEL_20;
          }

          v29 = (*(v7 + 48) + 16 * v28);
          if (*v29 == v24 && v29[1] == v23)
          {
            break;
          }

          v31 = sub_22C274014();
          v26 = v28 + 1;
        }

        while ((v31 & 1) == 0);
        v33 = v135[19];
        v32 = v135[20];
        v34 = v135[16];

        v35 = *v128;
        (*v128)(v33, v32, v34);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v137 = v15;
        v37 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22BE711C4(0, v15[2] + 1, 1);
          v15 = v137;
        }

        v39 = v15[2];
        v38 = v15[3];
        v0 = v135;
        if (v39 >= v38 >> 1)
        {
          v47 = sub_22BE1AAE4(v38);
          sub_22BE711C4(v47, v39 + 1, 1);
          v15 = v137;
        }

        v40 = v135[19];
        v41 = v135[16];
        v15[2] = v39 + 1;
        v35(v15 + v37 + v39 * v20, v40, v41);
      }

      else
      {
LABEL_20:
        v0 = v135;
        v42 = v135[20];
        v43 = v135[16];

        v44 = *(v131 + 8);
        v45 = sub_22BE1B73C();
        v46(v45);
      }
    }

    v48 = *(v125 + 16);
    *(v125 + 16) = v15;

    v49 = v0[24];
    v50 = v0[12];
    sub_22C271AD4();

    v51 = sub_22C272084();
    v52 = sub_22C273794();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v0[24];
    if (v53)
    {
      v129 = v52;
      log = v51;
      sub_22BE1A260();
      v55 = swift_slowAlloc();
      sub_22BE2386C();
      v126 = swift_slowAlloc();
      v137 = v126;
      buf = v55;
      *v55 = 136315138;
      sub_22BF6AA9C();
      swift_beginAccess();
      v56 = *(v54 + 16);
      v57 = *(v56 + 16);
      if (v57)
      {
        v58 = v0[17];
        v136 = MEMORY[0x277D84F90];

        sub_22BE70138();
        v59 = v136;
        v60 = *(v58 + 16);
        v58 += 16;
        v61 = *(v58 + 64);
        sub_22BE19E14();
        v63 = v56 + v62;
        v132 = *(v58 + 56);
        v64 = (v58 - 8);
        do
        {
          v65 = v135[18];
          v66 = v135[16];
          v67 = sub_22BE261AC();
          v68(v67);
          v69 = sub_22C2721D4();
          v71 = v70;
          v72 = *v64;
          v73 = sub_22BE336E8();
          v74(v73);
          v136 = v59;
          v76 = *(v59 + 16);
          v75 = *(v59 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_22BE1AAE4(v75);
            sub_22BE39E18();
            sub_22BE70138();
            v59 = v136;
          }

          *(v59 + 16) = v76 + 1;
          v77 = v59 + 16 * v76;
          *(v77 + 32) = v69;
          *(v77 + 40) = v71;
          v63 += v132;
          --v57;
        }

        while (v57);
        v0 = v135;
        v101 = v135[24];
      }

      else
      {
        v102 = v0[24];

        v59 = MEMORY[0x277D84F90];
      }

      v104 = v0[22];
      v103 = v0[23];
      v105 = v0[21];
      v106 = v135[12];
      v107 = v135[11];
      v108 = v135[10];
      MEMORY[0x2318ABBB0](v59, MEMORY[0x277D837D0]);

      v109 = sub_22BE324FC();
      v112 = sub_22BE61C88(v109, v110, v111);

      *(buf + 4) = v112;
      _os_log_impl(&dword_22BE15000, log, v129, "Allowed tools: %s either set through user default or ToolBoxAllowList.plist", buf, 0xCu);
      sub_22BE26B64(v126);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      v113 = sub_22BE3D494();
      MEMORY[0x2318AD180](v113);

      v0 = v135;
      (*(v107 + 8))(v106, v108);
      v114 = *(v104 + 8);
      v115 = sub_22BE1B73C();
      v116(v115);
    }

    else
    {
      v89 = v0[22];
      v88 = v0[23];
      v90 = v0[21];
      v91 = v0[11];
      v92 = v0[12];
      v93 = v0[10];
      v94 = v0[24];

      v95 = *(v91 + 8);
      v96 = sub_22BE1B18C();
      v97(v96);
      v98 = *(v89 + 8);
      v99 = sub_22BE324FC();
      v100(v99);
    }

    v117 = v0[24];
    sub_22BF6AA9C();
    swift_beginAccess();
    v118 = *(v117 + 16);
  }

  else
  {
    v78 = v0[8];
  }

  v119 = v0[23];
  v121 = v0[19];
  v120 = v0[20];
  sub_22BE46054();

  v122 = v0[1];
  sub_22BE336F4();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22BF4D1A8()
{
  sub_22BE201F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v5 = v4[25];
  v6 = v4[24];
  v7 = v4[15];
  v8 = v4[14];
  v9 = v4[13];
  v10 = *v1;
  sub_22BE18C2C();
  *v11 = v10;
  *(v12 + 208) = v0;

  v13 = *(v8 + 8);
  v14 = sub_22BE324FC();
  v15(v14);

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22BF4D31C()
{
  v1 = v0[24];
  v2 = v0[12];
  sub_22C271AD4();

  v3 = sub_22C272084();
  sub_22C273794();
  sub_22BE4612C();
  if (os_log_type_enabled(v3, v4))
  {
    v66 = v2;
    log = v3;
    v5 = v0[24];
    sub_22BE1A260();
    v6 = swift_slowAlloc();
    sub_22BE2386C();
    v65 = swift_slowAlloc();
    buf = v6;
    *v6 = 136315138;
    sub_22BF6AA9C();
    swift_beginAccess();
    v7 = *(v5 + 16);
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v0[17];
      v71 = MEMORY[0x277D84F90];

      sub_22BE70138();
      v10 = v71;
      v11 = *(v9 + 16);
      v9 += 16;
      v12 = *(v9 + 64);
      sub_22BE19E14();
      v14 = v7 + v13;
      v69 = *(v9 + 56);
      v70 = v15;
      v16 = (v9 - 8);
      do
      {
        v17 = v0[18];
        v18 = v0[16];
        v19 = sub_22BE261AC();
        v70(v19);
        v20 = sub_22C2721D4();
        v22 = v21;
        v23 = *v16;
        v24 = sub_22BE336E8();
        v25(v24);
        v26 = *(v71 + 16);
        if (v26 >= *(v71 + 24) >> 1)
        {
          sub_22BE39E18();
          sub_22BE70138();
        }

        *(v71 + 16) = v26 + 1;
        v27 = v71 + 16 * v26;
        *(v27 + 32) = v20;
        *(v27 + 40) = v22;
        v14 += v69;
        --v8;
      }

      while (v8);
      v41 = v0[24];
    }

    else
    {
      v42 = v0[24];

      v10 = MEMORY[0x277D84F90];
    }

    v43 = v0[22];
    v44 = v0[23];
    v45 = v0[21];
    v46 = v0[11];
    v47 = v0[12];
    v48 = v0[10];
    MEMORY[0x2318ABBB0](v10, MEMORY[0x277D837D0]);

    v49 = sub_22BE324FC();
    v52 = sub_22BE61C88(v49, v50, v51);

    *(buf + 4) = v52;
    _os_log_impl(&dword_22BE15000, log, v66, "Allowed tools: %s either set through user default or ToolBoxAllowList.plist", buf, 0xCu);
    sub_22BE26B64(v65);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    v53 = sub_22BE3D494();
    MEMORY[0x2318AD180](v53);

    v54 = *(v46 + 8);
    v55 = sub_22BE2BA80();
    v56(v55);
    v57 = *(v43 + 8);
    v39 = sub_22BE1B73C();
  }

  else
  {
    v29 = v0[23];
    v28 = v0[24];
    v31 = v0[21];
    v30 = v0[22];
    v33 = v0[11];
    v32 = v0[12];
    v34 = v0[10];

    v35 = *(v33 + 8);
    v36 = sub_22BE29454();
    v37(v36);
    v38 = *(v30 + 8);
    v39 = sub_22BE18040();
  }

  v40(v39);
  v58 = v0[24];
  sub_22BF6AA9C();
  swift_beginAccess();
  v59 = *(v58 + 16);

  v60 = v0[23];
  v62 = v0[19];
  v61 = v0[20];
  sub_22BE46054();

  v63 = v0[1];

  return v63(v59);
}

uint64_t sub_22BF4D690()
{
  sub_22BE201F0();
  v1 = v0[24];
  (*(v0[22] + 8))(v0[23], v0[21]);

  v2 = v0[26];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  sub_22BE46054();

  sub_22BE17A94();

  return v6();
}

uint64_t ToolBoxAllowList.init(global:local:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void sub_22BF4D750()
{
  sub_22BE19130();
  v3 = sub_22C26DF64();
  v4 = sub_22BE179D8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  sub_22BE3AC88();
  v53 = sub_22C2720A4();
  v7 = sub_22BE179D8(v53);
  v56 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v11);
  sub_22BE19490();
  v52 = v12;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v13);
  sub_22BE324EC();
  sub_22BE45D84(0, &qword_28106DAF0, 0x277CCA8D8);
  v14 = sub_22BF3A464();
  swift_getKeyPath();
  sub_22C26E624();

  if (v14)
  {
    v15 = v14;
    v16 = sub_22BE19454();
    sub_22BF3A694(v16, v17, 1852797802, 0xE400000000000000, v15);
    v19 = v18;
    v51 = v15;

    if (v19)
    {
      sub_22C271AD4();
      v20 = sub_22C272084();
      v21 = sub_22C2737C4();
      if (sub_22BE35F8C(v21))
      {
        sub_22BE36138();
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22BE15000, v20, v21, "Example utterances override file accessed", v22, 2u);
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
      }

      v23 = *(v56 + 8);
      v23(v2, v53);
      sub_22BE260B8();
      sub_22C26DEC4();

      sub_22C26DFA4();
      if (v0)
      {
        v24 = sub_22BE2593C();
        v25(v24);
      }

      else
      {
        v34 = sub_22BE2593C();
        v35(v34);
        v36 = sub_22C26DB74();
        sub_22BE29494(v36);
        swift_allocObject();
        sub_22C26DB64();
        sub_22BF68D44();
        sub_22C26DB54();

        v37 = v54;
        sub_22C271AD4();

        v38 = sub_22C272084();
        v39 = sub_22C273794();

        v40 = v38;
        if (os_log_type_enabled(v38, v39))
        {
          sub_22BE1A260();
          v41 = swift_slowAlloc();
          sub_22BE2386C();
          v55 = swift_slowAlloc();
          *v41 = 136315138;
          sub_22BF44630(v37);
          MEMORY[0x2318ABBB0]();

          v42 = sub_22BE18944();
          v45 = sub_22BE61C88(v42, v43, v44);

          *(v41 + 4) = v45;
          _os_log_impl(&dword_22BE15000, v40, v39, "Override for toolsIDs: %s found", v41, 0xCu);
          sub_22BE26B64(v55);
          v46 = sub_22BE19F74();
          MEMORY[0x2318AD180](v46);
          sub_22BE1B2A4();
          MEMORY[0x2318AD180]();
          v47 = sub_22BE191C0();
          sub_22BE29DD4(v47, v48);
        }

        else
        {

          v49 = sub_22BE191C0();
          sub_22BE29DD4(v49, v50);
        }

        v23(v52, v53);
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  sub_22C271AD4();
  v26 = sub_22C272084();
  sub_22C2737A4();
  sub_22BE4612C();
  if (os_log_type_enabled(v26, v27))
  {
    sub_22BE36138();
    v28 = swift_slowAlloc();
    sub_22BF6AB44(v28);
    sub_22BF6AC20();
    _os_log_impl(v29, v30, v31, v32, v33, 2u);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  (*(v56 + 8))(v1, v53);
  sub_22C272E84();

LABEL_12:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22BF4DCB4()
{
  sub_22BE19130();
  v2 = v1;
  v59 = v3;
  v68 = sub_22C272CA4();
  v4 = sub_22BE179D8(v68);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v67 = v9;
  sub_22BE183BC();
  v10 = sub_22C2720D4();
  v11 = sub_22BE179D8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v18 = v17 - v16;
  v20 = *v2;
  v19 = v2[1];
  if (sub_22BF540EC())
  {
    v58 = v19;
    v57 = v0;
    v70 = MEMORY[0x277D84FA0];
    v21 = sub_22C272164();
    v22 = 0;
    v23 = *(v21 + 16);
    v24 = v6;
    v25 = *MEMORY[0x277D72148];
    v63 = *MEMORY[0x277D72140];
    v64 = *MEMORY[0x277D72148];
    v60 = *MEMORY[0x277D72150];
    v66 = v23;
    v62 = (v24 + 32);
    v61 = (v24 + 8);
    v65 = v10;
    while (1)
    {
      if (v23 == v22)
      {

        goto LABEL_14;
      }

      if (v22 >= *(v21 + 16))
      {
        break;
      }

      v26 = *(v13 + 80);
      sub_22BE19E14();
      (*(v13 + 16))(v18, v21 + v27 + *(v13 + 72) * v22, v10);
      v28 = (*(v13 + 88))(v18, v10);
      if (v28 == v25)
      {
        v29 = sub_22BE3BF9C();
        v30(v29);
        v31 = *v62;
        v32 = sub_22BE200D4();
        v33(v32);
        v34 = sub_22C272C54();
        sub_22C1A7B60(&v69, v34, v35, v35, v36, v37, v38, v39, v56, v57);
        v23 = v66;

        v10 = v65;
        v25 = v64;
        (*v61)(v67, v68);
      }

      else
      {
        if (v28 == v63 || v28 == v60)
        {

          v43 = sub_22BE3BF9C();
          v44(v43);
LABEL_14:
          sub_22C2721D4();
          if (!v20)
          {

            v48 = 0;
            goto LABEL_24;
          }

          sub_22BE289CC();

          v45 = sub_22BE18944();
          if (sub_22C269E10(v45, v46, v20))
          {

            v47 = *(v70 + 16) != 0;

            v48 = 2 * v47;
            goto LABEL_24;
          }

          v49 = sub_22BE18944();
          v51 = sub_22C269E10(v49, v50, v58);

          if (v51)
          {

            v48 = 1;
            goto LABEL_24;
          }

          v52 = *(sub_22BF6633C() + 16);

          if (v52)
          {

            v48 = 2;
            goto LABEL_24;
          }

          sub_22BE260B8();
          v53 = sub_22BF6633C();

          v54 = *(v53 + 16);

          if (v54)
          {
            v48 = 3;
LABEL_24:
            v55 = v48 | ((v66 != v22) << 8);
          }

          else
          {
            v55 = 512;
          }

          *v59 = v55;
          goto LABEL_26;
        }

        v40 = sub_22BE3BF9C();
        v42(v40, v41);
      }

      ++v22;
    }

    __break(1u);
  }

  else
  {
    *v59 = 512;
LABEL_26:
    sub_22BE18478();
  }
}

void sub_22BF4E0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v84 = v28;
  v93 = sub_22C272224();
  v29 = sub_22BE179D8(v93);
  v85 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17A44();
  v92 = v33;
  sub_22BE183BC();
  v87 = sub_22C272BA4();
  v34 = sub_22BE179D8(v87);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE179EC();
  sub_22BE1AB80();
  v39 = sub_22C272D44();
  v40 = sub_22BE179D8(v39);
  v88 = v41;
  v89 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE179EC();
  sub_22BE3AC88();
  v83 = *v27;
  a10 = MEMORY[0x277D84FA0];
  v44 = v20[8];
  v86 = v20;
  sub_22BE1BD3C(v20 + 4, v20[7]);
  sub_22BE5CE4C(&qword_27D90B318, &qword_22C28C9E0);
  sub_22BE17BC4();
  v45 = sub_22C2720C4();
  sub_22BE179D8(v45);
  v47 = v46;
  v49 = *(v48 + 72);
  v50 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_22C275160;
  v52 = (v51 + v50);
  *v52 = sub_22C272C54();
  v52[1] = v53;
  (*(v47 + 104))(v51 + v50, *MEMORY[0x277D720F0], v45);
  sub_22C272C74();
  sub_22C272D34();
  (*(v36 + 8))(v22, v87);
  v54 = *(v44 + 40);
  sub_22BE1A6BC();
  sub_22BF6AA9C();
  v56 = v55();
  if (v21)
  {
    (*(v88 + 8))(v23, v89);
  }

  else
  {
    v57 = v56;
    (*(v88 + 8))(v23, v89);

    v58 = sub_22BF4437C(v57, &a10, v86);
    v59 = v58;
    v60 = *(v58 + 16);
    if (v60)
    {
      v94 = MEMORY[0x277D84F90];
      sub_22BE70138();
      v61 = v94;
      v62 = *(v85 + 16);
      v63 = *(v85 + 80);
      sub_22BE19E14();
      v65 = v59 + v64;
      v90 = *(v85 + 72);
      v91 = v66;
      v67 = v92;
      do
      {
        v68 = sub_22BE1AEE4();
        v91(v68);
        v69 = sub_22C2721D4();
        v71 = v70;
        (*(v85 + 8))(v67, v93);
        v73 = *(v94 + 16);
        v72 = *(v94 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_22BE1AAE4(v72);
          sub_22BE39E18();
          sub_22BE70138();
        }

        *(v94 + 16) = v73 + 1;
        v74 = v94 + 16 * v73;
        *(v74 + 32) = v69;
        *(v74 + 40) = v71;
        v65 += v90;
        --v60;
        v67 = v92;
      }

      while (v60);
    }

    else
    {

      v61 = MEMORY[0x277D84F90];
    }

    if (v83)
    {

      sub_22BF3954C(v75);
      v76 = sub_22BF6633C();
    }

    else
    {
      v76 = MEMORY[0x277D84FA0];
    }

    v77 = *(v76 + 16);
    if (v84 && (v78 = sub_22C272C54(), v80 = sub_22C269E10(v78, v79, v84), , !v80))
    {
      v81 = *(v76 + 16);

      if (!v81)
      {

        goto LABEL_4;
      }
    }

    else
    {
    }

    v82 = *(v61 + 16);

    if (v82)
    {
    }
  }

LABEL_4:

  sub_22BE19454();
  sub_22BE18478();
}

uint64_t sub_22BF4E610(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t *a5)
{
  v6 = v5;
  v63 = a5;
  v64 = a1;
  v10 = sub_22C2720A4();
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v10);
  v58 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BE5CE4C(&qword_27D90B728, &qword_22C28EC58);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v66 = &v57 - v15;
  v62 = sub_22C271FF4();
  v16 = *(v62 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v62);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v57 - v21;
  v61 = *a4;
  sub_22C272014();
  sub_22C271FC4();
  v23 = sub_22C272014();
  v24 = sub_22C2737F4();
  if (sub_22C273824())
  {
    v25 = swift_slowAlloc();
    v57 = a3;
    v26 = v25;
    *v25 = 0;
    v27 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v23, v24, v27, "ToolboxEmbeddingModel:embed", "", v26, 2u);
    v28 = v26;
    a3 = v57;
    MEMORY[0x2318AD180](v28, -1, -1);
  }

  v29 = v62;
  (*(v16 + 16))(v20, v22, v62);
  v30 = sub_22C272064();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_22C272054();
  result = (*(v16 + 8))(v22, v29);
  if (v61)
  {
    swift_getKeyPath();
    sub_22C26E624();

    sub_22C26FDB4();
    if (qword_28107D1C8 != -1)
    {
      swift_once();
    }

    v35 = sub_22BF1C884(0, 0, 0);
    if (v5)
    {
      v36 = v58;
      sub_22C271B14();
      v37 = v5;
      v38 = sub_22C272084();
      v39 = sub_22C2737A4();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        v42 = v5;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v43;
        *v41 = v43;
        _os_log_impl(&dword_22BE15000, v38, v39, "Sentence piece model missing. Embedding failed. Error: %@", v40, 0xCu);
        sub_22BE233E8(v41, &qword_27D907870, &qword_22C27AB50);
        MEMORY[0x2318AD180](v41, -1, -1);
        MEMORY[0x2318AD180](v40, -1, -1);
      }

      (*(v59 + 8))(v36, v60);
      sub_22BF1C114();
      swift_allocError();
      *v44 = 2;
      swift_willThrow();

      sub_22BE233E8(v66, &qword_27D90B728, &qword_22C28EC58);
LABEL_31:
      sub_22BF4F4A8(a3, "ToolboxEmbeddingModel:embed", 27, 2);
    }

    v51 = v35;
    result = sub_22BF1C838();
    v62 = v33;
    if (a2)
    {
      v52 = result;
      v53 = 0;
      v54 = *(v64 + 16);
      while (1)
      {
        v55 = v54 >= v53;
        if (a2 > 0)
        {
          v55 = v53 >= v54;
        }

        if (v55)
        {
          break;
        }

        v56 = MEMORY[0x2318ACA20]();
        sub_22BF506C8(v64, v53, a2, v66, v51, 128, v52, 384, v63, &v65);
        if (__OFADD__(v53, a2))
        {
          v53 = ((v53 + a2) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v53 += a2;
        }

        objc_autoreleasePoolPop(v56);
      }

      sub_22BE233E8(v66, &qword_27D90B728, &qword_22C28EC58);

      goto LABEL_31;
    }
  }

  else
  {
    v45 = v63;
    v46 = v64;
    if (a2)
    {
      v47 = 0;
      v48 = *(v64 + 16);
      while (1)
      {
        v49 = v48 >= v47;
        if (a2 > 0)
        {
          v49 = v47 >= v48;
        }

        if (v49)
        {
          goto LABEL_31;
        }

        v50 = MEMORY[0x2318ACA20](result);
        sub_22BF4F744(v46, v47, a2, 128, v45, &v65);
        if (v6)
        {
          objc_autoreleasePoolPop(v50);
          goto LABEL_31;
        }

        v6 = 0;
        if (__OFADD__(v47, a2))
        {
          v47 = ((v47 + a2) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v47 += a2;
        }

        objc_autoreleasePoolPop(v50);
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF4ECAC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v77 = a6;
  v78 = a1;
  v83 = a4;
  v17 = sub_22C2720A4();
  v70 = *(v17 - 8);
  v71 = v17;
  v18 = *(v70 + 64);
  MEMORY[0x28223BE20](v17);
  v69 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22BE5CE4C(&qword_27D90B728, &qword_22C28EC58);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v76 = &v68 - v22;
  v75 = sub_22C271FF4();
  v23 = *(v75 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v75);
  v73 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v68 - v27;
  LODWORD(v74) = *v83;
  v79 = a9;
  swift_retain_n();
  v80 = a5;
  swift_bridgeObjectRetain_n();
  v83 = a7;
  swift_bridgeObjectRetain_n();
  v81 = a8;
  swift_retain_n();
  sub_22C272014();
  sub_22C271FC4();
  v72 = a3;
  v29 = sub_22C272014();
  v30 = sub_22C2737F4();
  if (sub_22C273824())
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v29, v30, v32, "ToolboxEmbeddingModel:embed", "", v31, 2u);
    MEMORY[0x2318AD180](v31, -1, -1);
  }

  v33 = v75;
  (*(v23 + 16))(v73, v28, v75);
  v34 = sub_22C272064();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = sub_22C272054();
  result = (*(v23 + 8))(v28, v33);
  if ((v74 & 1) == 0)
  {
    if (a2)
    {
      v74 = v37;
      v49 = 0;
      v50 = *(v78 + 16);
      while (1)
      {
        v51 = v50 >= v49;
        if (a2 > 0)
        {
          v51 = v49 >= v50;
        }

        if (v51)
        {
          goto LABEL_33;
        }

        v52 = MEMORY[0x2318ACA20](result);
        v53 = v80;

        v54 = v83;

        v55 = v81;

        sub_22BF4FA50(v78, v49, a2, 128, v53, v77, v54, v55, v56, a10, &v82);
        if (v11)
        {
          objc_autoreleasePoolPop(v52);
          goto LABEL_22;
        }

        v11 = 0;
        if (__OFADD__(v49, a2))
        {
          v49 = ((v49 + a2) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v49 += a2;
        }

        objc_autoreleasePoolPop(v52);
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  sub_22C26E624();

  sub_22C26FDB4();
  if (qword_28107D1C8 != -1)
  {
    swift_once();
  }

  v39 = sub_22BF1C884(0, 0, 0);
  if (!v10)
  {
    v57 = v39;
    result = sub_22BF1C838();
    v75 = result;
    v74 = v37;
    if (a2)
    {
      v58 = 0;
      v59 = *(v78 + 16);
      while (1)
      {
        v60 = v59 >= v58;
        if (a2 > 0)
        {
          v60 = v58 >= v59;
        }

        if (v60)
        {
          break;
        }

        v61 = MEMORY[0x2318ACA20]();
        v62 = v57;
        v63 = v80;

        v64 = v83;

        v65 = v81;

        v67 = v63;
        v57 = v62;
        sub_22BF51120(v78, v58, a2, v76, v62, 128, v75, 384, v67, v77, v64, v65, v66, a10, &v82);
        if (__OFADD__(v58, a2))
        {
          v58 = ((v58 + a2) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v58 += a2;
        }

        objc_autoreleasePoolPop(v61);
      }

      sub_22BE233E8(v76, &qword_27D90B728, &qword_22C28EC58);

LABEL_33:
      sub_22BF4F4A8(v72, "ToolboxEmbeddingModel:embed", 27, 2);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    goto LABEL_35;
  }

  v40 = v69;
  sub_22C271B14();
  v41 = v10;
  v42 = sub_22C272084();
  v43 = sub_22C2737A4();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    v46 = v10;
    v47 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 4) = v47;
    *v45 = v47;
    _os_log_impl(&dword_22BE15000, v42, v43, "Sentence piece model missing. Embedding failed. Error: %@", v44, 0xCu);
    sub_22BE233E8(v45, &qword_27D907870, &qword_22C27AB50);
    MEMORY[0x2318AD180](v45, -1, -1);
    MEMORY[0x2318AD180](v44, -1, -1);
  }

  (*(v70 + 8))(v40, v71);
  sub_22BF1C114();
  swift_allocError();
  *v48 = 2;
  swift_willThrow();

  sub_22BE233E8(v76, &qword_27D90B728, &qword_22C28EC58);
LABEL_22:
  sub_22BF4F4A8(v72, "ToolboxEmbeddingModel:embed", 27, 2);

  swift_bridgeObjectRelease_n();

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22BF4F4A8(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_22C272034();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22C271FF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_22C272014();
  sub_22C272044();
  v22 = sub_22C2737E4();
  result = sub_22C273824();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_22C272074();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D85B00])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_22C271FD4();
      _os_signpost_emit_with_name_impl(&dword_22BE15000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x2318AD180](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_22BF4F744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  if (v7 >= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  if (v7 < a2)
  {
    goto LABEL_41;
  }

  v45 = v7;
  sub_22C26D134(a2, v7, a1);
  v50 = v11;
  if (v9 != v10 >> 1)
  {
    v48 = a4;
    v13 = v10 >> 1;
    v12 = MEMORY[0x277D84F90];
    while (v9 < v13)
    {
      v14 = v9 + 1;
      *(v50 + 16 * v9 + 8);
      v49 = *(v50 + 16 * v9);

      v15 = MEMORY[0x277D84F90];
      while (1)
      {
        v16 = sub_22C273204();
        if (!v17)
        {
          break;
        }

        v18 = sub_22BF44D44(v16, v17);

        v19 = *(v18 + 16);
        v20 = *(v15 + 16);
        if (__OFADD__(v20, v19))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v20 + v19 > *(v15 + 24) >> 1)
        {
          sub_22BE67418();
          v15 = v21;
        }

        if (*(v18 + 16))
        {
          v22 = *(v15 + 16);
          if ((*(v15 + 24) >> 1) - v22 < v19)
          {
            goto LABEL_35;
          }

          memcpy((v15 + 2 * v22 + 32), (v18 + 32), 2 * v19);

          if (v19)
          {
            v23 = *(v15 + 16);
            v24 = __OFADD__(v23, v19);
            v25 = v23 + v19;
            if (v24)
            {
              goto LABEL_36;
            }

            *(v15 + 16) = v25;
          }
        }

        else
        {

          if (v19)
          {
            goto LABEL_34;
          }
        }
      }

      v26 = sub_22BE64268(v48, v15);
      v31 = (v29 >> 1) - v28;
      if (__OFSUB__(v29 >> 1, v28))
      {
        goto LABEL_38;
      }

      v24 = __OFSUB__(v48, v31);
      v32 = v48 - v31;
      if (v24)
      {
        goto LABEL_39;
      }

      v33 = v26;
      v34 = v27;
      v35 = v28;
      v36 = v29;
      v30.n128_u64[0] = 0;
      v37 = sub_22BF45140(v32 & ~(v32 >> 63), v30);
      sub_22BF4FDBC(v33, v34, v35, v36, v37);
      v39 = v38;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = *(v12 + 16);
        sub_22BE673F4();
        v12 = v42;
      }

      v40 = *(v12 + 16);
      if (v40 >= *(v12 + 24) >> 1)
      {
        sub_22BE673F4();
        v12 = v43;
      }

      swift_unknownObjectRelease();
      *(v12 + 16) = v40 + 1;
      *(v12 + 8 * v40 + 32) = v39;
      v9 = v14;
      if (v14 == v13)
      {
        goto LABEL_7;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_7:
  swift_unknownObjectRelease();
  sub_22BF51E78(a2, v45, v12, a5);

  if (v6)
  {
    *a6 = v6;
  }
}

void sub_22BF4FA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  if (v12 >= *(a1 + 16))
  {
    v12 = *(a1 + 16);
  }

  if (v12 < a2)
  {
    goto LABEL_42;
  }

  v49 = v12;
  sub_22C26D134(a2, v12, a1);
  v57 = v16;
  if (v14 != v15 >> 1)
  {
    v55 = a4;
    v18 = v15 >> 1;
    v17 = MEMORY[0x277D84F90];
    while (v14 < v18)
    {
      v19 = v14 + 1;
      *(v57 + 16 * v14 + 8);
      v56 = *(v57 + 16 * v14);

      v20 = MEMORY[0x277D84F90];
      while (1)
      {
        v21 = sub_22C273204();
        if (!v22)
        {
          break;
        }

        v23 = sub_22BF44D44(v21, v22);

        v24 = *(v23 + 16);
        v25 = *(v20 + 16);
        if (__OFADD__(v25, v24))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v25 + v24 > *(v20 + 24) >> 1)
        {
          sub_22BE67418();
          v20 = v26;
        }

        if (*(v23 + 16))
        {
          v27 = *(v20 + 16);
          if ((*(v20 + 24) >> 1) - v27 < v24)
          {
            goto LABEL_36;
          }

          memcpy((v20 + 2 * v27 + 32), (v23 + 32), 2 * v24);

          if (v24)
          {
            v28 = *(v20 + 16);
            v29 = __OFADD__(v28, v24);
            v30 = v28 + v24;
            if (v29)
            {
              goto LABEL_37;
            }

            *(v20 + 16) = v30;
          }
        }

        else
        {

          if (v24)
          {
            goto LABEL_35;
          }
        }
      }

      v31 = sub_22BE64268(v55, v20);
      v36 = (v34 >> 1) - v33;
      if (__OFSUB__(v34 >> 1, v33))
      {
        goto LABEL_39;
      }

      v29 = __OFSUB__(v55, v36);
      v37 = v55 - v36;
      if (v29)
      {
        goto LABEL_40;
      }

      v38 = v31;
      v39 = v32;
      v40 = v33;
      v41 = v34;
      v35.n128_u64[0] = 0;
      v42 = sub_22BF45140(v37 & ~(v37 >> 63), v35);
      sub_22BF4FDBC(v38, v39, v40, v41, v42);
      v44 = v43;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = *(v17 + 16);
        sub_22BE673F4();
        v17 = v47;
      }

      v45 = *(v17 + 16);
      if (v45 >= *(v17 + 24) >> 1)
      {
        sub_22BE673F4();
        v17 = v48;
      }

      swift_unknownObjectRelease();
      *(v17 + 16) = v45 + 1;
      *(v17 + 8 * v45 + 32) = v44;
      v14 = v19;
      if (v19 == v18)
      {
        goto LABEL_7;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_7:
  swift_unknownObjectRelease();
  sub_22BF5F0E4(a2, v49, v17, a5, a6, a7, a8, a9, a10);

  if (v11)
  {
    *a11 = v11;
  }
}

void sub_22BF4FDBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else if (!__OFADD__(*(a5 + 16), (a4 >> 1) - a3))
  {
    sub_22BE67418();
    swift_unknownObjectRetain();
    sub_22BE6E528();

    sub_22BE6E47C(v5);
    return;
  }

  __break(1u);
}

void sub_22BF4FE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22BF45398();
  if (__OFSUB__(a4, 2))
  {
    goto LABEL_23;
  }

  sub_22BE64280(a4 - 2, v5);
  v9 = v8 >> 1;
  v10 = (v8 >> 1) - v7;
  if (__OFSUB__(v8 >> 1, v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = v6;
    v13 = v7;
    v25 = MEMORY[0x277D84F90];
    sub_22BE712BC(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v14 = v25;
    while (v13 < v9)
    {
      v15 = [*(v12 + 8 * v13) intValue];
      v17 = *(v25 + 16);
      v16 = *(v25 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_22BE712BC(v16 > 1, v17 + 1, 1);
      }

      *(v25 + 16) = v17 + 1;
      *(v25 + 4 * v17 + 32) = v15;
      if (v9 == ++v13)
      {
        swift_unknownObjectRelease();
        v11 = MEMORY[0x277D84F90];
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  swift_unknownObjectRelease();
  v14 = MEMORY[0x277D84F90];
LABEL_12:
  v18 = *(v14 + 16);
  if (v18)
  {
    sub_22BE712BC(0, v18, 0);
    v19 = 32;
    v20 = v11;
    while (1)
    {
      v21 = *(v14 + v19);
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v24 = *(v11 + 16);
      v23 = *(v11 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_22BE712BC(v23 > 1, v24 + 1, 1);
      }

      *(v11 + 16) = v24 + 1;
      *(v11 + 4 * v24 + 32) = v22;
      v19 += 4;
      if (!--v18)
      {

        goto LABEL_20;
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_20:
  sub_22BE6E5F4(v20);
  sub_22BE6E5F4(&unk_283F8B840);
}

void sub_22BF500A4(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_22C272EF4();
  v4 = sub_22C272FF4();

  v5 = [v3 encodeAsIDsFrom_];

  sub_22BE45D84(0, &qword_28106DAE8, 0x277CCABB0);
  v6 = sub_22C273494();

  *a2 = v6;
}

uint64_t sub_22BF50154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22BE5CE4C(&qword_27D90B728, &qword_22C28EC58);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  sub_22BE22868();
  v16 = sub_22C26FDC4();
  if (sub_22BE1AEA8(v15, 1, v16) != 1)
  {
    sub_22BE22868();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 88))(v13, v16);
    if (v18 != *MEMORY[0x277D1CE60] && v18 != *MEMORY[0x277D1CE58])
    {
      (*(v17 + 8))(v13, v16);
    }
  }

  sub_22BF4FE70(a1, a2, a4, a5);
  v21 = v20;

  sub_22BE233E8(v15, &qword_27D90B728, &qword_22C28EC58);
  v22 = *(v21 + 16);

  v23.n128_u16[0] = COERCE_UNSIGNED_INT(1.0);
  result = sub_22BF45140(v22, v23);
  v25 = __OFSUB__(a5, v22);
  v26 = a5 - v22;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v27 = result;
    v28 = sub_22BF452B4(0, v26);
    v29.n128_u64[0] = 0;
    v30 = sub_22BF45140(v26, v29);
    v33 = v21;
    sub_22BE6E5F4(v28);
    v31 = v33;
    v33 = v27;
    sub_22BE6E47C(v30);
    return v31;
  }

  return result;
}

id sub_22BF5039C(uint64_t a1)
{
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22C28E680;
  sub_22BE45D84(0, &qword_28106DAE8, 0x277CCABB0);
  *(v3 + 32) = sub_22C273804();
  v4 = *(a1 + 16);
  *(v3 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v6 = sub_22BF647C0(v3, 131104);
  if (!v1 && v4)
  {
    v7 = 0;
    v8 = a1 + 32;
    do
    {
      v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
      [v6 setObject:v9 atIndexedSubscript:v7];

      ++v7;
    }

    while (v4 != v7);
  }

  return v6;
}

id sub_22BF504F0(uint64_t a1)
{
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22C28E680;
  sub_22BE45D84(0, &qword_28106DAE8, 0x277CCABB0);
  *(v3 + 32) = sub_22C273804();
  v4 = *(a1 + 16);
  *(v3 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v6 = sub_22BF647C0(v3, 65552);
  if (!v1 && v4)
  {
    v7 = 0;
    v8 = a1 + 32;
    do
    {
      _H0 = *(v8 + 2 * v7);
      __asm { FCVT            S8, H0 }

      v15 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v16) = _S8;
      v17 = [v15 initWithFloat_];
      [v6 setObject:v17 atIndexedSubscript:v7];

      ++v7;
    }

    while (v4 != v7);
  }

  return v6;
}

void *sub_22BF50658(void *a1)
{
  v2 = [a1 dataPointer];
  [a1 count];
  v3 = [a1 count];

  return sub_22C25D5D0(v2, v3);
}

void sub_22BF506C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v11 = v10;
  v99 = a8;
  v100 = a7;
  v104 = a6;
  v103 = a5;
  v102 = a4;
  v15 = sub_22C2720A4();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v91 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v90 = &v87 - v21;
  if (!__OFADD__(a2, a3))
  {
    if (a2 + a3 >= *(a1 + 16))
    {
      v22 = *(a1 + 16);
    }

    else
    {
      v22 = a2 + a3;
    }

    if (v22 < a2)
    {
      goto LABEL_34;
    }

    v92 = v20;
    v93 = v19;
    v94 = a10;
    v87 = a9;
    v89 = a2;
    v88 = v22;
    sub_22C26D134(a2, v22, a1);
    v95 = v23;
    v25 = v24;
    v27 = v26 >> 1;
    v29 = (v28 + 16 * v24 + 8);
    v30 = MEMORY[0x277D84F90];
    v101 = xmmword_22C2759F0;
    for (i = v26 >> 1; ; v27 = i)
    {
      if (v27 == v25)
      {
        swift_unknownObjectRelease();
        sub_22BF51E78(v89, v88, v30, v87);
        if (!v11)
        {

          return;
        }

        goto LABEL_27;
      }

      if (v25 >= v27)
      {
        break;
      }

      v110 = v30;
      v32 = *(v29 - 1);
      v31 = *v29;

      v33 = sub_22BF50154(v32, v31, v102, v103, v104);
      v35 = v34;
      v36 = sub_22BF5039C(v33);
      if (v11)
      {

        swift_unknownObjectRelease();

LABEL_27:

        goto LABEL_31;
      }

      v37 = v36;
      v107 = v29;
      v11 = 0;
      v38 = sub_22BF504F0(v35);

      sub_22BE5CE4C(&qword_27D90B258, &qword_22C28C710);
      inited = swift_initStackObject();
      *(inited + 16) = v101;
      *(inited + 32) = 0x64695F6E656B6F74;
      *(inited + 40) = 0xE900000000000073;
      v40 = sub_22BE45D84(0, &qword_28106DB68, 0x277CBFF48);
      *(inited + 48) = v37;
      *(inited + 72) = v40;
      strcpy((inited + 80), "padding_mask");
      *(inited + 120) = v40;
      *(inited + 93) = 0;
      *(inited + 94) = -5120;
      *(inited + 96) = v38;
      v41 = v37;
      v42 = v38;
      sub_22C272E84();
      v43 = objc_allocWithZone(MEMORY[0x277CBFED0]);
      v44 = sub_22BF646D8();
      v106 = v25;
      *(&v87 - 2) = MEMORY[0x28223BE20](v44);
      sub_22BF45398();
      v46 = v45;
      v108 = v41;
      v109 = v44;
      v47 = sub_22C272FF4();
      v48 = [v46 featureValueForName_];

      swift_unknownObjectRelease();
      if (!v48 || (v49 = [v48 multiArrayValue], v48, !v49))
      {

        v64 = v91;
        sub_22C271AD4();
        v65 = sub_22C272084();
        v66 = sub_22C2737A4();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_22BE15000, v65, v66, "TR Embedding output is not MLDictionaryFeatureProvider", v67, 2u);
          MEMORY[0x2318AD180](v67, -1, -1);
        }

        (*(v92 + 8))(v64, v93);
        sub_22BF1C114();
        v11 = swift_allocError();
        *v68 = 6;
        swift_willThrow();
        swift_unknownObjectRelease();

LABEL_30:
LABEL_31:
        *v94 = v11;
        return;
      }

      v97 = v32;
      v105 = v42;
      v50 = [v49 shape];
      v96 = sub_22BE45D84(0, &qword_28106DAE8, 0x277CCABB0);
      v51 = sub_22C273494();

      v111 = MEMORY[0x277D84F90];
      sub_22C273B84();
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_22C273B54();
      v52 = *(v111 + 16);
      sub_22C273B94();
      sub_22C273BA4();
      sub_22C273B64();
      v53 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      [v53 initWithInteger_];
      sub_22C273B54();
      v54 = *(v111 + 16);
      sub_22C273B94();
      sub_22C273BA4();
      sub_22C273B64();
      LOBYTE(v50) = sub_22BEA273C(v51, v111);

      if ((v50 & 1) == 0 || [v49 dataType] != 65552)
      {

        v69 = v90;
        sub_22C271B14();
        v70 = v49;

        v71 = v70;
        v72 = sub_22C272084();
        v73 = sub_22C2737A4();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v111 = v75;
          *v74 = 136315650;
          v76 = sub_22BE61C88(v97, v31, &v111);

          *(v74 + 4) = v76;
          *(v74 + 12) = 2080;
          v77 = [v71 shape];
          v78 = v96;
          v79 = sub_22C273494();

          v80 = MEMORY[0x2318ABBB0](v79, v78);
          v82 = v81;

          v83 = sub_22BE61C88(v80, v82, &v111);

          *(v74 + 14) = v83;
          *(v74 + 22) = 2048;
          v84 = [v71 dataType];

          *(v74 + 24) = v84;
          _os_log_impl(&dword_22BE15000, v72, v73, "Failed to embed %s. Received embedding shaped: %s and data type: %ld, which are unexpected.", v74, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2318AD180](v75, -1, -1);
          MEMORY[0x2318AD180](v74, -1, -1);
        }

        else
        {
        }

        (*(v92 + 8))(v69, v93);
        v85 = v108;
        sub_22BF1C114();
        v11 = swift_allocError();
        *v86 = 5;
        swift_willThrow();
        swift_unknownObjectRelease();

        goto LABEL_30;
      }

      v55 = sub_22BF50658(v49);
      v30 = v110;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v108;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v61 = *(v30 + 16);
        sub_22BE673F4();
        v30 = v62;
      }

      v58 = v105;
      v59 = v109;
      v60 = *(v30 + 16);
      if (v60 >= *(v30 + 24) >> 1)
      {
        sub_22BE673F4();
        v30 = v63;
      }

      *(v30 + 16) = v60 + 1;
      *(v30 + 8 * v60 + 32) = v55;
      v29 = v107 + 2;
      v25 = v106 + 1;
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_22BF51120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15)
{
  v16 = v15;
  v108 = a8;
  v109 = a7;
  v113 = a6;
  v112 = a5;
  v111 = a4;
  v20 = sub_22C2720A4();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v96 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  if (__OFADD__(a2, a3))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  if (a2 + a3 >= *(a1 + 16))
  {
    v27 = *(a1 + 16);
  }

  else
  {
    v27 = a2 + a3;
  }

  if (v27 < a2)
  {
    goto LABEL_33;
  }

  v95 = &v90 - v25;
  v97 = v26;
  v98 = v24;
  v99 = a15;
  v92 = a14;
  v102 = a13;
  v101 = a12;
  v28 = a11;
  v91 = a10;
  v29 = a9;
  v94 = a2;
  v93 = v27;
  sub_22C26D134(a2, v27, a1);
  v100 = v30;
  v32 = v31;
  v34 = v33 >> 1;
  v36 = (v35 + 16 * v31 + 8);
  v37 = MEMORY[0x277D84F90];
  v110 = xmmword_22C2759F0;
  v107 = a11;
  v106 = a9;
  v105 = v33 >> 1;
  while (v34 != v32)
  {
    if (v32 >= v34)
    {
      __break(1u);
      goto LABEL_32;
    }

    v119 = v37;
    v39 = *(v36 - 1);
    v38 = *v36;
    v116 = v36;

    v40 = sub_22BF50154(v39, v38, v111, v112, v113);
    v42 = v41;
    v43 = sub_22BF5039C(v40);
    if (v16)
    {

      swift_unknownObjectRelease();

      goto LABEL_29;
    }

    v44 = v43;
    v115 = v32;
    v16 = 0;
    v45 = sub_22BF504F0(v42);

    sub_22BE5CE4C(&qword_27D90B258, &qword_22C28C710);
    inited = swift_initStackObject();
    *(inited + 16) = v110;
    *(inited + 32) = 0x64695F6E656B6F74;
    *(inited + 40) = 0xE900000000000073;
    v47 = sub_22BE45D84(0, &qword_28106DB68, 0x277CBFF48);
    *(inited + 48) = v44;
    *(inited + 72) = v47;
    strcpy((inited + 80), "padding_mask");
    *(inited + 120) = v47;
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    *(inited + 96) = v45;
    v48 = v44;
    v49 = v45;
    sub_22C272E84();
    v50 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    v51 = sub_22BF646D8();
    v118 = v48;
    v117 = MEMORY[0x28223BE20](v51);
    sub_22BF45398();
    v53 = v52;
    v54 = sub_22C272FF4();
    v55 = [v53 featureValueForName_];

    swift_unknownObjectRelease();
    if (!v55 || (v56 = [v55 multiArrayValue], v55, !v56))
    {

      v68 = v96;
      sub_22C271AD4();
      v69 = sub_22C272084();
      v70 = sub_22C2737A4();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_22BE15000, v69, v70, "TR Embedding output is not MLDictionaryFeatureProvider", v71, 2u);
        MEMORY[0x2318AD180](v71, -1, -1);
      }

      (*(v97 + 8))(v68, v98);
      sub_22BF1C114();
      v16 = swift_allocError();
      *v72 = 6;
      swift_willThrow();

      swift_unknownObjectRelease();

      goto LABEL_29;
    }

    v104 = v39;
    v114 = v49;
    v57 = [v56 shape];
    v103 = sub_22BE45D84(0, &qword_28106DAE8, 0x277CCABB0);
    v58 = sub_22C273494();

    v120 = MEMORY[0x277D84F90];
    sub_22C273B84();
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    sub_22C273B54();
    v59 = *(v120 + 16);
    sub_22C273B94();
    sub_22C273BA4();
    sub_22C273B64();
    v60 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    [v60 initWithInteger_];
    sub_22C273B54();
    v61 = *(v120 + 16);
    sub_22C273B94();
    sub_22C273BA4();
    sub_22C273B64();
    LOBYTE(v59) = sub_22BEA273C(v58, v120);

    if ((v59 & 1) == 0 || [v56 dataType] != 65552)
    {

      v73 = v95;
      sub_22C271B14();
      v74 = v56;

      v75 = v74;
      v76 = sub_22C272084();
      v77 = sub_22C2737A4();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v120 = v79;
        *v78 = 136315650;
        v80 = sub_22BE61C88(v104, v38, &v120);

        *(v78 + 4) = v80;
        *(v78 + 12) = 2080;
        v81 = [v75 shape];
        v82 = v103;
        v83 = sub_22C273494();

        v84 = MEMORY[0x2318ABBB0](v83, v82);
        v86 = v85;

        v87 = sub_22BE61C88(v84, v86, &v120);

        *(v78 + 14) = v87;
        *(v78 + 22) = 2048;
        v88 = [v75 dataType];

        *(v78 + 24) = v88;
        _os_log_impl(&dword_22BE15000, v76, v77, "Failed to embed %s. Received embedding shaped: %s and data type: %ld, which are unexpected.", v78, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2318AD180](v79, -1, -1);
        MEMORY[0x2318AD180](v78, -1, -1);
      }

      else
      {
      }

      (*(v97 + 8))(v73, v98);
      sub_22BF1C114();
      v16 = swift_allocError();
      *v89 = 5;
      swift_willThrow();

      swift_unknownObjectRelease();

      goto LABEL_29;
    }

    v62 = sub_22BF50658(v56);
    v37 = v119;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = *(v37 + 16);
      sub_22BE673F4();
      v37 = v66;
    }

    v28 = v107;
    v29 = v106;
    v63 = v114;
    v64 = *(v37 + 16);
    if (v64 >= *(v37 + 24) >> 1)
    {
      sub_22BE673F4();
      v37 = v67;
    }

    *(v37 + 16) = v64 + 1;
    *(v37 + 8 * v64 + 32) = v62;
    v36 = v116 + 2;
    v32 = v115 + 1;
    v34 = v105;
  }

  swift_unknownObjectRelease();
  sub_22BF5F0E4(v94, v93, v37, v29, v91, v28, v101, v102, v92);
  if (v16)
  {

LABEL_29:

    *v99 = v16;

    return;
  }
}

id sub_22BF51CE0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v10[0] = 0;
  v5 = [v4 predictionFromFeatures:a2 error:v10];
  v6 = v10[0];
  if (v5)
  {
    *a3 = v5;
    result = v6;
  }

  else
  {
    v8 = v10[0];
    sub_22C26DE84();

    result = swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22BF51D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v12 = 0;
  v11 = v8;
  sub_22BE5CE4C(&qword_27D907770, &unk_22C2880C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C275160;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_22BF4E610(inited, 1, a3, &v11, &v12);
  if (v4)
  {
    swift_setDeallocating();
    sub_22BEDDB40();
  }

  else
  {
    swift_setDeallocating();
    sub_22BEDDB40();
    result = v12;
    if (!v12)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22BF51E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 16))
  {
    v4 = *a4;
    *a4 = *(a3 + 32);

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22BF51F2C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  sub_22BE29494(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_22BF51F7C()
{
  sub_22C26DF64();
  sub_22C2702A4();
  sub_22BE29F88(&qword_28107F360, MEMORY[0x277CC9260]);
  v0 = sub_22C272E84();
  sub_22BE5CE4C(&qword_27D90B790, &qword_22C28ED70);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_281079CA8 = result;
  return result;
}

uint64_t sub_22BF52030()
{
  v1 = sub_22C26DF64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_databaseBaseURL, v1);
  if (qword_281079CA0 != -1)
  {
    v6 = swift_once();
  }

  v7 = qword_281079CA8;
  MEMORY[0x28223BE20](v6);
  *(&v10 - 2) = v5;
  os_unfair_lock_lock((v7 + 24));
  sub_22BF68FEC((v7 + 16), &v11);
  os_unfair_lock_unlock((v7 + 24));
  v8 = v11;
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t sub_22BF521D0()
{
  sub_22BE183FC();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
  sub_22C26E384();
  sub_22BE17A94();

  return v2();
}

uint64_t sub_22BF52250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_22C2702A4();
  v4[6] = sub_22BE29F88(qword_28107F1F0, MEMORY[0x277D42528]);
  v6 = sub_22C2735D4();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_22BF52310, v6, v5);
}

uint64_t sub_22BF52310()
{
  sub_22BE183FC();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_22BF52414;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, v1, v2, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_22BF68E5C, v3, v8);
}

uint64_t sub_22BF52414()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[7];
    v10 = v3[8];

    return MEMORY[0x2822009F8](sub_22BF35850, v9, v10);
  }

  else
  {
    v11 = v3[9];

    sub_22BE17A94();

    return v12();
  }
}

void sub_22BF52530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_22BE19130();
  a19 = v29;
  a20 = v30;
  v248 = v31;
  v249 = v27;
  v32 = v26;
  v246 = v33;
  v231 = v34;
  v36 = v35;
  v255 = v38;
  v256 = v37;
  v252 = a25;
  v253 = v39;
  v254 = a24;
  v40 = a22;
  v41 = a23;
  v247 = a21;
  v257[2] = *MEMORY[0x277D85DE8];
  v251 = v32;
  v250 = *v32;
  v232 = sub_22C273064();
  v42 = sub_22BE179D8(v232);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BE17A44();
  sub_22BE18950(v45);
  v237 = _s19SentinelFileManagerVMa();
  v46 = sub_22BE18000(v237);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BE17A44();
  v50 = sub_22BE18950(v49);
  v236 = type metadata accessor for ToolboxVersion(v50);
  v51 = sub_22BE18000(v236);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BE17A44();
  sub_22BE18950(v54);
  v235 = sub_22C272024();
  v55 = sub_22BE179D8(v235);
  v234 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22BE17A44();
  sub_22BE18950(v59);
  v60 = sub_22C26E3E4();
  v61 = sub_22BE19448(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22BE17A44();
  sub_22BE18950(v64);
  v65 = sub_22C26E454();
  v66 = sub_22BE392E0(v65);
  v67 = sub_22BE179D8(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v70);
  sub_22BE19E94();
  sub_22BE18950(v71);
  v72 = sub_22C26E414();
  v73 = sub_22BE179D8(v72);
  v240 = v74;
  v241 = v73;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v77);
  sub_22BE19E94();
  v242 = v78;
  sub_22BE183BC();
  v239 = sub_22C2720A4();
  v79 = sub_22BE179D8(v239);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v82);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v83);
  sub_22BE19E94();
  sub_22BE18950(v84);
  v85 = sub_22C26DF64();
  v86 = sub_22BE179D8(v85);
  v244 = v87;
  v245 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v86);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v90);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v91);
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v92);
  sub_22BE23858();
  MEMORY[0x28223BE20](v93);
  sub_22BE486EC();
  MEMORY[0x28223BE20](v94);
  sub_22BE324EC();
  LODWORD(v243) = *v36;
  v95 = v253;
  sub_22BF6B4D4(v253, v256, v255, v40, v41, v254, v252, v96, v213, v214, SWORD2(v214), SBYTE6(v214), HIBYTE(v214), v215, v217, v219, v220, v221, v222, v223, v225, v227, v229);
  v249 = v27;
  if (v27)
  {

    sub_22BF1CE1C(v248);
    sub_22BE233E8(v255, &qword_27D908088, &qword_22C278EC0);
    sub_22BE1BC24(v41);
    (*(v98 + 8))(v256, v41);
    sub_22BE1BC24(v40);
    (*(v99 + 8))(v253, v40);
    v100 = v251;
LABEL_22:
    v165 = *(*v100 + 48);
    v166 = *(*v100 + 52);
    sub_22BE3EA80();
    swift_deallocPartialClassInstance();
    goto LABEL_23;
  }

  v224 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_accessToken;
  *(v251 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_accessToken) = v97;
  LOBYTE(v257[0]) = v243;
  v230 = v28;
  static ToolEmbeddingsDatabasePaths.storagePath<A, B>(toolboxDelegate:planGenerationToolboxDelegate:replica:overridenBaseURL:)(v95, v256, v257, v255, v40, v41, v254, v252, v28);
  LOBYTE(v257[0]) = 2;
  v101 = sub_22BE29454();
  v228 = v40;
  v226 = v41;
  static ToolEmbeddingsDatabasePaths.storagePath<A, B>(toolboxDelegate:planGenerationToolboxDelegate:replica:overridenBaseURL:)(v101, v102, v103, v255, v40, v41, v254, v252, v104);
  v100 = v251;
  v105 = v255;
  if (v243)
  {
    sub_22BF43408(v257);
    v106 = v244;
    v107 = v245;
    if (v249)
    {

      sub_22BF1CE1C(v248);
      sub_22BE233E8(v255, &qword_27D908088, &qword_22C278EC0);
      sub_22BE1C340(&v246);
      (*(v108 + 8))(v256);
      sub_22BE1C340(&v247);
      (*(v109 + 8))(v253);
      v110 = *(v244 + 8);
      v111 = sub_22BE27BA4();
      v110(v111);
      (v110)(v230, v245);
LABEL_21:
      v164 = *(v100 + v224);

      goto LABEL_22;
    }

    LODWORD(v249) = LOBYTE(v257[0]);
    sub_22BE3C6E0(&a12);
    sub_22C271AD4();
    v116 = *(v244 + 16);
    v117 = sub_22BE3CDC8();
    v118(v117);
    v119 = sub_22C272084();
    v120 = sub_22C2737C4();
    if (sub_22BE35F8C(v120))
    {
      swift_slowAlloc();
      sub_22BF6AA04();
      v257[0] = swift_slowAlloc();
      *v120 = 136315394;
      sub_22BE40C1C();
      sub_22BE29F88(v121, v122);
      sub_22C273FD4();
      v123 = sub_22BE289CC();
      v124 = *(v106 + 8);
      v124(v123, v107);
      v125 = sub_22BE336E8();
      sub_22BE61C88(v125, v126, v127);
      sub_22BE289CC();

      *(v120 + 4) = v95;
      *(v120 + 12) = 1024;
      *(v120 + 14) = v249;
      _os_log_impl(&dword_22BE15000, v119, v120, "Creating a write-only database instance at %s with status: %d", v120, 0x12u);
      v128 = sub_22BF6AB2C(&v242);
      sub_22BE26B64(v128);
      v129 = sub_22BE19F74();
      MEMORY[0x2318AD180](v129);
      v130 = sub_22BE22C7C();
      MEMORY[0x2318AD180](v130);
    }

    else
    {

      v124 = *(v244 + 8);
      v148 = sub_22BE25D0C();
      (v124)(v148);
    }

    v149 = sub_22BE3BEF8();
    v150(v149);
    sub_22BE36C98();
    v151 = sub_22BE292A4();

    if ((v151 & 1) == 0)
    {
      v157 = [objc_opt_self() defaultManager];
      v158 = sub_22C26DEE4();
      v257[0] = 0;
      v159 = [v157 createDirectoryAtURL:v158 withIntermediateDirectories:1 attributes:0 error:v257];

      if (!v159)
      {
        v201 = v257[0];

        sub_22C26DE84();

        swift_willThrow();

        sub_22BF1CE1C(v248);
        sub_22BE233E8(v255, &qword_27D908088, &qword_22C278EC0);
        sub_22BE1C340(&v246);
        (*(v202 + 8))(v256);
        sub_22BE1C340(&v247);
        (*(v203 + 8))(v253);
        v204 = v245;
        v205 = sub_22BF6AB1C();
        (v124)(v205);
        v124(v230, v204);
        goto LABEL_21;
      }

      v160 = v257[0];
    }

    v145 = v254;
  }

  else
  {
    sub_22BF42CA8(v257);
    if (v249)
    {

      sub_22BF1CE1C(v248);
      sub_22BE233E8(v255, &qword_27D908088, &qword_22C278EC0);
      sub_22BE1C340(&v246);
      (*(v112 + 8))(v256);
      sub_22BE1C340(&v247);
      (*(v113 + 8))(v253);
      v114 = *(v244 + 8);
      v115 = sub_22BE27BA4();
      v114(v115);
      (v114)(v28, v245);
      goto LABEL_21;
    }

    LODWORD(v249) = LOBYTE(v257[0]);
    sub_22BE3C6E0(&a11);
    sub_22C271AD4();
    v131 = *(v244 + 16);
    v132 = sub_22BE3CDC8();
    v133(v132);
    v134 = v244;
    v135 = sub_22C272084();
    sub_22C2737C4();
    sub_22BE4612C();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      sub_22BE2386C();
      v257[0] = swift_slowAlloc();
      *v137 = 136315394;
      sub_22BE40C1C();
      sub_22BE29F88(v138, v139);
      v140 = sub_22C273FD4();
      v142 = v141;
      (*(v134 + 8))(v95, v245);
      sub_22BE61C88(v140, v142, v257);
      sub_22BE28DA8();

      *(v137 + 4) = v140;
      *(v137 + 12) = 1024;
      *(v137 + 14) = v249;
      _os_log_impl(&dword_22BE15000, v135, v105, "Creating a read-only database instance at %s with status: %d", v137, 0x12u);
      v143 = sub_22BF6AB2C(&v243);
      sub_22BE26B64(v143);
      v144 = sub_22BE19F74();
      MEMORY[0x2318AD180](v144);
      v145 = v254;
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();

      v146 = sub_22BE3BEF8();
      v147(v146);
    }

    else
    {

      v152 = *(v244 + 8);
      v153 = sub_22BE25D0C();
      v154(v153);
      v155 = sub_22BE3BEF8();
      v156(v155);
      v145 = v254;
    }
  }

  v161 = *(v145 + 8);
  v162 = sub_22BE25D0C();
  v163(v162);
  (*(v240 + 104))(v242, *MEMORY[0x277D781F8], v241);
  sub_22BE2590C();
  sub_22BF539E0();
  v168 = *MEMORY[0x277D78210];
  sub_22BE1B754(&a16);
  (*(v169 + 104))();
  v254 = v244 + 16;
  v216(v25, v230, v245);
  (*(v240 + 16))(v238, v242, v241);
  (*(v228 + 16))();
  v249 = 0;
  if (v243)
  {
    sub_22BE36C98();
    sub_22BE292A4();
  }

  sub_22BE33B48();
  sub_22BE1B754(&v255);
  sub_22C26E3D4();
  v170 = sub_22C26E3C4();
  sub_22BE29494(v170);
  swift_allocObject();
  sub_22BE289CC();
  v171 = sub_22C26E334();
  v100[18] = v228;
  v100[19] = v145;
  v172 = sub_22BE62524(v100 + 15);
  v250 = *(v228 - 8);
  (*(v250 + 16))(v172, v253, v228);
  v173 = v252;
  v100[23] = v226;
  v100[24] = v173;
  v174 = sub_22BE62524(v100 + 20);
  v243 = *(v226 - 8);
  (*(v243 + 16))(v174, v256, v226);
  *(v100 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database) = v171;
  v175 = v245;
  sub_22BE3E9E4();
  v176();
  sub_22BF1CDC0(v248, (v100 + 2));
  v252 = v171;

  sub_22BE3C6E0(&v254);
  sub_22C271AD4();
  sub_22C272004();
  (*(v234 + 32))(v100 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_signposter, v233, v235);
  v100[25] = v247;
  v177 = *(v145 + 16);

  sub_22BE3C6E0(&a9);
  v178 = sub_22BE180C8();
  v177(v178);
  v179 = *(v236 + 20);
  v180 = sub_22C26FDE4();
  v182 = v181;
  v183 = sub_22C26FDF4();
  sub_22BE18524(v183);
  (*(v184 + 8))(v226 + v179);
  v185 = (v100 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager);
  v186 = *(v237 + 20);
  sub_22BE3E9E4();
  v187();
  *v185 = v180;
  v185[1] = v182;
  v188 = v246;
  if (v246)
  {
    sub_22BE22944(&v249);
    sub_22BF6805C();
    sub_22BE28C80(&v241);
    sub_22BF2BBE0();
    sub_22BE25F54();
    sub_22BF680B4();
    v257[0] = v231;
    v257[1] = v188;
    sub_22BE1B754(&v251);
    sub_22C273054();
    sub_22BE699D0();
    v189 = v249;
    sub_22C273944();
    v249 = v189;

    sub_22BF1CE1C(v248);
    sub_22BE233E8(v255, &qword_27D908088, &qword_22C278EC0);
    v190 = sub_22BF6AC60();
    v191(v190);
    v192 = sub_22BF6AB68();
    v193(v192);
    sub_22BE1B5D4(&v252);
    v194(v175, v232);
    v195 = sub_22BF6AC2C();
    (v257[0])(v195);
    v196 = sub_22BE1ABE0();
    v197(v196);
    v198 = sub_22BF6AB0C();
    v199(v198);
    (v257[0])(v218, v175);
    v200 = sub_22BF6AC14();
    (v257[0])(v200);

    if (v189)
    {
    }
  }

  else
  {

    sub_22BF1CE1C(v248);
    sub_22BE233E8(v255, &qword_27D908088, &qword_22C278EC0);
    (*(v243 + 8))(v256, v226);
    (*(v250 + 8))(v253, v228);
    v206 = sub_22BE1ABE0();
    v207(v206);
    v208 = sub_22BF6AB0C();
    v209(v208);
    v210 = *(v244 + 8);
    v211 = sub_22BF6AB1C();
    v210(v211);
    v212 = sub_22BE33BE8();
    v210(v212);
  }

LABEL_23:
  v167 = *MEMORY[0x277D85DE8];
  sub_22BE22978();
  sub_22BE18478();
}

uint64_t sub_22BF539E0()
{
  v0 = sub_22C26E4C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D90B6C8, &unk_22C28EB80);
  v5 = *(sub_22C26E494() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22C28E690;
  *v4 = 0;
  v4[8] = 1;
  v8 = *MEMORY[0x277D78270];
  v9 = *(v1 + 104);
  v9(v4, v8, v0);
  sub_22C26E474();
  *v4 = 0;
  v4[8] = 1;
  v9(v4, v8, v0);
  sub_22C26E474();
  *v4 = 0;
  *(v4 + 1) = 0;
  v10 = *MEMORY[0x277D78268];
  v9(v4, v10, v0);
  sub_22C26E474();
  *v4 = 0;
  *(v4 + 1) = 0;
  v9(v4, v10, v0);
  sub_22C26E474();
  *v4 = 0;
  *(v4 + 1) = 0;
  v9(v4, v10, v0);
  sub_22C26E474();
  *v4 = 0;
  *(v4 + 1) = 0;
  v9(v4, v10, v0);
  sub_22C26E474();
  *v4 = 0;
  *(v4 + 1) = 0;
  v9(v4, v10, v0);
  sub_22C26E474();
  *v4 = 0;
  *(v4 + 1) = 0;
  v9(v4, v10, v0);
  sub_22C26E474();
  *v4 = 0;
  *(v4 + 1) = 0;
  v9(v4, v10, v0);
  sub_22C26E474();
  return v13;
}

uint64_t sub_22BF53DC0()
{
  v4[1] = *MEMORY[0x277D85DE8];
  static ToolBoxUtility.stableHashData(hashableString:)();
  v1 = v0;
  v4[0] = 0;
  [v0 getBytes:v4 length:8];

  result = v4[0];
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22BF53E38(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D78238];
  v7 = sub_22C26E464();
  (*(*(v7 - 8) + 104))(a1, v6, v7);
  *a2 = a3;
  v8 = *MEMORY[0x277D78290];
  v9 = sub_22C26E4D4();
  (*(*(v9 - 8) + 104))(a2, v8, v9);

  return sub_22BE19DC4(a2, 0, 1, v9);
}

uint64_t sub_22BF53F20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  if (sub_22BF16ECC(a2, *a1))
  {
  }

  else
  {
    sub_22C2702A4();
    sub_22C270294();
    v7 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    sub_22BE62CB4();
    v6 = v9;
    *a1 = v9;
  }

  result = sub_22BF16ECC(a2, v6);
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22BF53FF8()
{
  sub_22BE201F0();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
  sub_22C26E3A4();
  v2 = *(v0 + 16);
  sub_22BF2B458();
  sub_22BF2BF70();
  sub_22BF2B2D4();
  sub_22BF2BF9C();
  sub_22BF2B484();
  sub_22BF2B578();
  sub_22BF2B300();
  sub_22BF2BFC8();
  sub_22BE1A26C();

  return v4();
}

uint64_t sub_22BF540EC()
{
  sub_22BF32CAC();
  if (v1)
  {
    return 0;
  }

  v3 = v0[19];
  sub_22BE1BD3C(v0 + 15, v0[18]);
  v4 = *(v3 + 56);
  v5 = sub_22BE260B8();
  return v6(v5) & 1;
}

uint64_t sub_22BF54168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v8 = type metadata accessor for ToolboxVersion(0);
  v7[18] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v10 = sub_22C2720A4();
  v7[20] = v10;
  v11 = *(v10 - 8);
  v7[21] = v11;
  v12 = *(v11 + 64) + 15;
  v7[22] = swift_task_alloc();
  v13 = sub_22C2722D4();
  v7[23] = v13;
  v14 = *(v13 - 8);
  v7[24] = v14;
  v15 = *(v14 + 64) + 15;
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF542BC, 0, 0);
}

uint64_t sub_22BF542BC()
{
  v39 = v0;
  sub_22BF4D750();
  v0[26] = v1;
  v2 = v1;
  v3 = v0[12];
  sub_22BE2BA74();
  v4 = swift_allocObject();
  v0[27] = v4;
  *(v4 + 16) = MEMORY[0x277D84FA0];
  v5 = sub_22BF54F00(0, 0);
  v0[28] = v5;
  v6 = v5;
  v7 = v0[25];
  v8 = v0[13];
  sub_22BE2BA74();
  v9 = swift_allocObject();
  v0[29] = v9;
  *(v9 + 16) = MEMORY[0x277D84F90];
  sub_22C2722B4();
  if (v8)
  {
    v10 = v0[13];
    v11 = v0[14];
    v12 = v10;
LABEL_3:
    v36 = v6;
    sub_22BF39330(v10);

    sub_22BF2A9E0(v13, v12);

    goto LABEL_4;
  }

  v27 = v0[12];
  v28 = v27[7];
  v29 = v27[8];
  sub_22BE1BD3C(v27 + 4, v28);
  (*(v29 + 96))(v38, v28, v29);
  v12 = v38[0];
  v11 = v38[1];
  v30 = v0[14];
  if (v38[0])
  {
    v10 = v0[13];
    goto LABEL_3;
  }

  v36 = v6;
  sub_22BF39330(0);
LABEL_4:
  v33 = v11;
  v31 = v9;
  v0[30] = v11;
  v0[31] = v12;
  if (qword_27D906378 != -1)
  {
    sub_22BE185D0();
    swift_once();
  }

  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[15];
  v17 = v0[12];
  v18 = sub_22C26E244();
  v19 = sub_22BE199F4(v18, qword_27D90B298);
  v20 = v17[8];
  v34 = v17[7];
  v35 = v19;
  v32 = v20;
  sub_22BE1BD3C(v17 + 4, v34);
  v21 = swift_allocObject();
  v0[32] = v21;
  v21[2] = v16;
  v21[3] = v31;
  v21[4] = v15;
  v21[5] = v14;
  v21[6] = v17;
  v21[7] = v12;
  v21[8] = v33;
  v21[9] = v36;
  v21[10] = v2;
  v21[11] = v4;
  v22 = *(v20 + 80);

  sub_22BF39330(v12);

  v37 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v0[33] = v24;
  *v24 = v0;
  v24[1] = sub_22BF546C4;
  v25 = v0[25];

  return (v37)(v25, v35, sub_22BF69144, v21, v34, v32);
}

uint64_t sub_22BF546C4()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 264);
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  *(v3 + 272) = v0;

  if (!v0)
  {
    v9 = *(v3 + 256);
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BF547C4()
{
  v1 = v0[34];
  v2 = v0[29];
  sub_22BF6AC94();
  v4 = v0[30];
  v3 = v0[31];
  if (*(*(v2 + 16) + 16))
  {
    sub_22BE291C8();

    sub_22BE464F4();
    sub_22BF55940(v5, v6, v7, v8, v9, v10, v11);
    v14 = v0[30];
    v13 = v0[31];
    v15 = v0[29];
    if (v1)
    {
      v17 = v0[27];
      v16 = v0[28];
      v18 = v0[26];
      (*(v0[24] + 8))(v0[25], v0[23]);

      v19 = sub_22BE29454();
      sub_22BF2AE88(v19);

LABEL_8:

      v43 = v0[25];
      v44 = v0[22];
      v45 = v0[19];

      sub_22BE17A94();
      goto LABEL_10;
    }

    v22 = v12;
    v23 = v0[26];
    v24 = v0[27];

    v25 = sub_22BE29454();
    sub_22BF2AE88(v25);
    sub_22BF6AC94();
    v26 = *(v24 + 16);

    sub_22BF2AAD0(v22, v26);
    v27 = *(v24 + 16);
    *(v24 + 16) = v28;

    v29 = *(v15 + 16);
    *(v15 + 16) = MEMORY[0x277D84F90];

    v1 = 0;
  }

  else
  {
    v20 = v0[26];

    v21 = sub_22BE22DF4();
    sub_22BF2AE88(v21);
  }

  v31 = v0[27];
  v30 = v0[28];
  v32 = v0[12];
  sub_22BF6AA9C();
  swift_beginAccess();
  v33 = *(v31 + 16);

  sub_22BF55CC4(v34, v30);
  v36 = v0[28];
  v35 = v0[29];
  v37 = v0[27];
  v38 = v0[24];
  v39 = v0[25];
  v40 = v0[23];
  if (v1)
  {
    v41 = sub_22BE42534(v38);
    v42(v41);

    goto LABEL_8;
  }

  v47 = v0[22];
  v48 = v0[19];
  v49 = sub_22BE42534(v38);
  v50(v49);

  sub_22BE1A26C();
LABEL_10:

  return v46();
}

uint64_t sub_22BF54A3C()
{
  v86 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);

  *(v0 + 88) = v1;
  v3 = v1;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 280) == 5)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 96);

    sub_22C271AD4();

    v6 = sub_22C272084();
    v7 = sub_22C273784();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 168);
    if (v8)
    {
      v83 = *(v0 + 176);
      v84 = *(v0 + 160);
      v10 = *(v0 + 152);
      v81 = *(v0 + 144);
      v11 = *(v0 + 96);
      sub_22BE1A260();
      v12 = swift_slowAlloc();
      sub_22BE2386C();
      v82 = swift_slowAlloc();
      *v12 = 136315138;
      v85[0] = v82;
      v13 = v11[19];
      sub_22BE1BD3C(v11 + 15, v11[18]);
      v14 = *(v13 + 16);
      v15 = sub_22BE1B18C();
      v16(v15);
      v17 = *(v81 + 20);
      v18 = sub_22C26FDE4();
      v20 = v19;
      v21 = sub_22C26FDF4();
      sub_22BE18524(v21);
      (*(v22 + 8))(v10 + v17);
      v23 = sub_22BE61C88(v18, v20, v85);

      *(v12 + 4) = v23;
      sub_22BE40940(&dword_22BE15000, v24, v25, "ToolEmbeddingToolDatabase: received cancellation request. Cancelling %s toolbox.");
      sub_22BE26B64(v82);
      v26 = sub_22BE19F74();
      MEMORY[0x2318AD180](v26);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();

      (*(v9 + 8))(v83, v84);
    }

    else
    {

      v35 = *(v9 + 8);
      v36 = sub_22BE18040();
      v38(v36, v37);
    }

    v39 = *(v0 + 232);
    sub_22BF6AC94();
    v41 = *(v0 + 240);
    v40 = *(v0 + 248);
    if (*(*(v39 + 16) + 16))
    {
      sub_22BE291C8();
      v85[0] = v40;
      v85[1] = v41;

      sub_22BE464F4();
      sub_22BF55940(v42, v43, v44, v45, v46, v47, v48);
      v50 = *(v0 + 240);
      v49 = *(v0 + 248);
      v51 = *(v0 + 232);
      v54 = v53;
      v55 = *(v0 + 208);
      v56 = *(v0 + 216);

      v57 = sub_22BE1B18C();
      sub_22BF2AE88(v57);
      sub_22BF6AC94();
      v58 = *(v56 + 16);

      sub_22BF2AAD0(v54, v58);
      v59 = *(v56 + 16);
      *(v56 + 16) = v60;

      v61 = *(v51 + 16);
      *(v51 + 16) = MEMORY[0x277D84F90];
    }

    else
    {
      v52 = *(v0 + 208);

      sub_22BF2AE88(v40);
    }

    v63 = *(v0 + 216);
    v62 = *(v0 + 224);
    v64 = *(v0 + 96);
    sub_22BF6AA9C();
    swift_beginAccess();
    v65 = *(v63 + 16);

    sub_22BF55CC4(v66, v62);
    v68 = *(v0 + 224);
    v67 = *(v0 + 232);
    v69 = *(v0 + 216);
    v70 = *(v0 + 200);
    v71 = *(v0 + 184);
    v77 = *(v0 + 176);
    v78 = *(v0 + 152);
    v79 = sub_22BE42534(*(v0 + 192));
    v80(v79);

    sub_22BE1A26C();
  }

  else
  {
    v27 = *(v0 + 240);
    v28 = *(v0 + 248);
    v30 = *(v0 + 224);
    v29 = *(v0 + 232);
    v32 = *(v0 + 208);
    v31 = *(v0 + 216);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v33 = sub_22BE18944();
    sub_22BF2AE88(v33);

    v34 = *(v0 + 272);
    v72 = *(v0 + 200);
    v73 = *(v0 + 176);
    v74 = *(v0 + 152);

    sub_22BE17A94();
  }

  return v75();
}

uint64_t sub_22BF54F00(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C26E4C4();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v5);
  v59 = (v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22C26E494();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  if (a2)
  {
    v55 = a1;
    v58 = sub_22C26E404();
    v10 = *(v58 - 8);
    v11 = *(v10 + 72);
    v57 = (v58 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v54 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    *&v63 = swift_allocObject();
    v56 = xmmword_22C275160;
    *(v63 + 16) = xmmword_22C275160;

    sub_22C26E484();
    v52[2] = sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
    v12 = (sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
    v13 = *v12;
    v52[1] = *(*v12 + 72);
    v14 = *(v13 + 80);
    v53 = v2;
    v15 = (v14 + 32) & ~v14;
    v16 = swift_allocObject();
    *(v16 + 16) = v56;
    v17 = v16 + v15;
    v18 = (v16 + v15 + v12[14]);
    v19 = *MEMORY[0x277D78238];
    v20 = sub_22C26E464();
    (*(*(v20 - 8) + 104))(v17, v19, v20);
    *v18 = v55;
    v18[1] = a2;
    v21 = *MEMORY[0x277D78288];
    v22 = sub_22C26E4D4();
    (*(*(v22 - 8) + 104))(v18, v21, v22);
    sub_22BE19DC4(v18, 0, 1, v22);
    sub_22C26E3F4();
    v23 = swift_allocObject();
    *(v23 + 16) = v56;
    *&v56 = v23;
    v24 = v53;
    sub_22BF53E38(v23 + v15, (v23 + v15 + v12[14]), 3);
  }

  else
  {
    v58 = sub_22C26E404();
    v25 = *(v58 - 8);
    v26 = *(v25 + 72);
    v57 = (v58 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v28 = swift_allocObject();
    v63 = xmmword_22C275160;
    *(v28 + 16) = xmmword_22C275160;
    sub_22C26E484();
    sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
    v29 = (sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
    v30 = *(*v29 + 72);
    v31 = (*(*v29 + 80) + 32) & ~*(*v29 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v63;
    v33 = v32 + v31;
    v34 = v29[14];
    v35 = *MEMORY[0x277D78230];
    v36 = sub_22C26E464();
    (*(*(v36 - 8) + 104))(v33, v35, v36);
    v37 = sub_22C26E4D4();
    sub_22BE19DC4(v33 + v34, 1, 1, v37);
    *&v63 = v28;
    sub_22C26E3F4();
    *&v56 = MEMORY[0x277D84F90];
    v24 = v2;
  }

  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  sub_22C26E404();
  v38 = *(*(v58 - 8) + 72);
  v39 = (*(*(v58 - 8) + 80) + 32) & ~*(*(v58 - 8) + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_22C275160;
  v42 = v59;
  v41 = v60;
  *v59 = 0;
  *(v42 + 8) = 1;
  (*(v41 + 104))(v42, *MEMORY[0x277D78270], v61);
  sub_22C26E474();
  sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  v43 = (sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
  v44 = *(*v43 + 72);
  v45 = (*(*v43 + 80) + 32) & ~*(*v43 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_22C27FED0;
  v47 = v46 + v45;
  sub_22BF53E38(v46 + v45, (v46 + v45 + v43[14]), 1);
  sub_22BF53E38(v47 + v44, (v47 + v44 + v43[14]), 2);
  sub_22BF53E38(v47 + 2 * v44, (v47 + 2 * v44 + v43[14]), 4);
  v64 = v46;
  sub_22BE6E0F0();
  sub_22C26E3F4();
  v64 = v40;
  sub_22BE6E0C4();
  v48 = *(v24 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
  v49 = v62;
  v50 = sub_22C26E324();

  if (!v49)
  {
    return sub_22BF3998C(v50);
  }

  return result;
}

uint64_t sub_22BF556A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  if (a2)
  {
    v19 = *(a2 + 16);

    if (v19)
    {
      sub_22BF38764();
      swift_allocError();
      *v20 = 5;
      swift_willThrow();
    }
  }

  v34 = a8;
  v35[7] = a6;
  swift_beginAccess();
  sub_22BE78B08();
  v22 = *(*(a3 + 16) + 16);
  sub_22BE78BF4(v22);
  v23 = *(a3 + 16);
  *(v23 + 16) = v22 + 1;
  v24 = sub_22C272224();
  (*(*(v24 - 8) + 16))(v23 + ((*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80)) + *(*(v24 - 8) + 72) * v22, a1, v24);
  *(a3 + 16) = v23;
  swift_endAccess();
  sub_22C26E2E4();
  v35[3] = sub_22C2721D4();
  v35[4] = v25;
  sub_22C26E2D4();

  result = swift_beginAccess();
  if (*(*(a3 + 16) + 16) >= 0x32uLL)
  {
    v35[0] = a7;
    v35[1] = v34;

    sub_22BF55940(v26, v35, a9, a10, 0, 0, a2);
    v28 = v27;

    if (!v12)
    {
      swift_beginAccess();
      v29 = *(a11 + 16);

      sub_22BF2AAD0(v28, v29);
      v31 = v30;
      swift_beginAccess();
      v32 = *(a11 + 16);
      *(a11 + 16) = v31;

      swift_beginAccess();
      v33 = *(a3 + 16);
      *(a3 + 16) = MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_22BF55940(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7)
{
  v8 = v7;
  v14 = *a2;
  v13 = a2[1];
  v15 = *(a1 + 16);

  sub_22BF39330(v14);
  v46 = a3;

  v45 = a4;

  v48 = a6;

  v16 = 0;
  v43 = MEMORY[0x277D84FA0];
  v17 = MEMORY[0x277D84F90];
  while (v15 != v16)
  {
    if (v16 >= v15)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return;
    }

    v18 = *(sub_22C272224() - 8);
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_31;
    }

    v20 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16;
    v47[0] = v14;
    v47[1] = v13;
    v21 = sub_22BF56040(v20, v47, v46, v45, a5, v48);
    if (v8)
    {

      sub_22BF2AE88(v14);

LABEL_28:

      return;
    }

    v23 = v21;
    ++v16;
    if (v21)
    {
      sub_22BF2AAD0(v22, v43);
      v43 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = *(v17 + 16);
        sub_22BE1B8F8();
        sub_22BE6769C();
        v17 = v28;
      }

      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_22BE1AAE4(v25);
        sub_22BE6769C();
        v17 = v29;
      }

      *(v17 + 16) = v26 + 1;
      *(v17 + 8 * v26 + 32) = v23;
      v16 = v19;
    }
  }

  sub_22BF2AE88(v14);

  v30 = 0;
  v31 = *(v17 + 16);
  v32 = MEMORY[0x277D84F90];
  while (v31 != v30)
  {
    if (v30 >= *(v17 + 16))
    {
      goto LABEL_32;
    }

    v33 = v17 + 8 * v30;
    v34 = *(v33 + 32);
    v35 = *(v34 + 16);
    v36 = *(v32 + 16);
    if (__OFADD__(v36, v35))
    {
      goto LABEL_33;
    }

    v37 = *(v33 + 32);

    if (!swift_isUniquelyReferenced_nonNull_native() || v36 + v35 > *(v32 + 24) >> 1)
    {
      sub_22BE675B0();
      v32 = v38;
    }

    if (*(v34 + 16))
    {
      if ((*(v32 + 24) >> 1) - *(v32 + 16) < v35)
      {
        goto LABEL_35;
      }

      swift_arrayInitWithCopy();

      if (v35)
      {
        v39 = *(v32 + 16);
        v40 = __OFADD__(v39, v35);
        v41 = v39 + v35;
        if (v40)
        {
          goto LABEL_36;
        }

        *(v32 + 16) = v41;
      }
    }

    else
    {

      if (v35)
      {
        goto LABEL_34;
      }
    }

    ++v30;
  }

  sub_22BF567B0(v32, a5, v48, a7);
  if (v8)
  {
    goto LABEL_28;
  }
}

uint64_t sub_22BF55CC4(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for ToolboxVersion(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C2720A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = sub_22BF57588(a1, a2);
  v17 = v16;
  if (!*(v16 + 16))
  {
  }

  v41 = v12;
  v18 = *(v4 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
  sub_22BE68E64(v16);
  sub_22C26E344();
  if (v3)
  {
  }

  else
  {

    sub_22C271AD4();

    v20 = sub_22C272084();
    v21 = sub_22C273784();

    v40 = v20;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = v22;
      v38 = swift_slowAlloc();
      v42 = v38;
      *v22 = 136315394;
      v37 = v21;
      v39 = v11;
      v24 = v4[18];
      v23 = v4[19];
      sub_22BE1BD3C(v4 + 15, v24);
      v25 = v40;
      (*(v23 + 16))(v24, v23);
      v26 = *(v7 + 20);
      v27 = sub_22C26FDE4();
      v29 = v28;
      v30 = sub_22C26FDF4();
      (*(*(v30 - 8) + 8))(&v10[v26], v30);
      v31 = sub_22BE61C88(v27, v29, &v42);

      v32 = v36;
      *(v36 + 1) = v31;
      *(v32 + 6) = 2048;
      v33 = *(v17 + 16);

      *(v32 + 14) = v33;
      v34 = v32;

      _os_log_impl(&dword_22BE15000, v25, v37, "%s toolbox: Removed %ld tools from the toolbox", v32, 0x16u);
      v35 = v38;
      sub_22BE26B64(v38);
      MEMORY[0x2318AD180](v35, -1, -1);
      MEMORY[0x2318AD180](v34, -1, -1);

      return (*(v41 + 8))(v15, v39);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      return (*(v41 + 8))(v15, v11);
    }
  }
}

uint64_t sub_22BF56040(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v86 = a6;
  v85 = a5;
  v88 = a3;
  v11 = sub_22C272AC4();
  v81 = *(v11 - 8);
  v82 = v11;
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C270B14();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v83 = a2[1];
  v84 = v20;
  v92 = MEMORY[0x277D84F90];
  v91 = MEMORY[0x277D84FA0];
  (*(v16 + 104))(v19, *MEMORY[0x277D1ECA0], v15);
  v21 = sub_22C270B04();
  (*(v16 + 8))(v19, v15);
  v22 = sub_22C2721D4();
  if (*(a4 + 16))
  {
    v24 = sub_22BE3B674(v22, v23);
    v26 = v25;

    if (v26)
    {
      v27 = (*(a4 + 56) + 32 * v24);
      v28 = *v27;
      v29 = v27[2];
      v30 = v27[3];
      v80 = v27[1];

      v89 = sub_22C2721D4();
      v90 = v31;

      v79 = v29;
      MEMORY[0x2318AB8D0](v29, v30);

      v32 = sub_22BF53DC0();

      sub_22C1A8734(&v89, v32);
      if (sub_22C26A128(v32, v88))
      {
      }

      else
      {
        sub_22BE677F4();
        v46 = v33;
        v47 = *(v33 + 16);
        if (v47 >= *(v33 + 24) >> 1)
        {
          sub_22BE677F4();
          v46 = v33;
        }

        *(v46 + 16) = v47 + 1;
        v48 = v46 + 32 * v47;
        v49 = v79;
        *(v48 + 32) = v32;
        *(v48 + 40) = v49;
        *(v48 + 48) = v30;
        *(v48 + 56) = 0;
        v92 = v46;
      }

      v44 = v87;
      if (v21)
      {
      }

      else
      {
        if (v28)
        {
          MEMORY[0x28223BE20](v33);
          *(&v78 - 6) = v44;
          *(&v78 - 5) = a1;
          v50 = v88;
          *(&v78 - 4) = &v91;
          *(&v78 - 3) = v50;
          *(&v78 - 2) = &v92;
          sub_22BF442E8(sub_22BF6A9C8, (&v78 - 8), v28);
        }

        else
        {
          v50 = v88;
        }

        v51 = v80;
        if (v80)
        {
          MEMORY[0x28223BE20](v33);
          *(&v78 - 6) = v44;
          *(&v78 - 5) = a1;
          *(&v78 - 4) = &v91;
          *(&v78 - 3) = v50;
          *(&v78 - 2) = &v92;
          sub_22BF442E8(sub_22BF6A9E0, (&v78 - 8), v51);
        }
      }

LABEL_24:
      sub_22C272154();
      v52 = sub_22C272A54();
      v54 = v53;
      (*(v81 + 8))(v14, v82);
      v55 = sub_22C2721E4();
      v57 = v56;
      v89 = v52;
      v90 = v54;

      MEMORY[0x2318AB8D0](v55, v57);

      v58 = sub_22C26AD34(0, v89, v90);
      v60 = v59;

      v89 = sub_22C2721D4();
      v90 = v61;

      MEMORY[0x2318AB8D0](v58, v60);

      v62 = sub_22BF53DC0();

      sub_22C1A8734(&v89, v62);
      if (sub_22C26A128(v62, v88))
      {
      }

      else
      {
        v67 = v92;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = *(v67 + 16);
          sub_22BE677F4();
          v67 = v75;
        }

        v68 = *(v67 + 16);
        if (v68 >= *(v67 + 24) >> 1)
        {
          sub_22BE677F4();
          v67 = v76;
        }

        *(v67 + 16) = v68 + 1;
        v69 = v67 + 32 * v68;
        *(v69 + 32) = v62;
        *(v69 + 40) = v58;
        *(v69 + 48) = v60;
        *(v69 + 56) = 0;
        v92 = v67;
        v44 = v87;
      }

      v90 = v83;
      v45 = v44;
      sub_22BF5CD0C(a1, &v89, v85, v86, v63, v64, v65, v66, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v84);
      if (!v7)
      {
        v71 = v70;
        if (v70)
        {
          MEMORY[0x28223BE20](v70);
          *(&v78 - 2) = a1;
          *(&v78 - 1) = v71;
          v45 = sub_22C26131C(sub_22BF68F48, (&v78 - 4), v72);
        }

        else
        {
          v45 = 0;
        }
      }

      goto LABEL_36;
    }
  }

  else
  {
  }

  v34 = sub_22C272184();
  if (v35)
  {
    v36 = v34;
    v37 = v35;
    v89 = sub_22C2721D4();
    v90 = v38;

    MEMORY[0x2318AB8D0](v36, v37);

    v39 = sub_22BF53DC0();

    sub_22C1A8734(&v89, v39);
    if (sub_22C26A128(v39, v88))
    {
    }

    else
    {
      sub_22BE677F4();
      v41 = v40;
      v42 = *(v40 + 16);
      if (v42 >= *(v40 + 24) >> 1)
      {
        sub_22BE677F4();
        v41 = v77;
      }

      *(v41 + 16) = v42 + 1;
      v43 = v41 + 32 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v36;
      *(v43 + 48) = v37;
      *(v43 + 56) = 0;
      v92 = v41;
    }
  }

  v44 = v87;
  v45 = v87;
  sub_22BF5CC1C(a1, v88, &v92, &v91, v21 & 1);
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_36:

  return v45;
}

uint64_t sub_22BF567B0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v45 = *v7;
  v12 = sub_22C2720A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v17 = *(a4 + 16);

    if (v17)
    {
      sub_22BF38764();
      swift_allocError();
      *v18 = 5;
      swift_willThrow();
    }
  }

  v42 = a2;
  v43 = a3;
  v44 = v6;
  v20 = v7[18];
  v21 = v7[19];
  sub_22BE1BD3C(v7 + 15, v20);
  (*(v21 + 8))(&v48, v20, v21);
  v47 = v48;
  v22 = *(a1 + 16);
  v23 = MEMORY[0x277D84F90];
  v37 = v22;
  if (v22)
  {
    v39 = v16;
    v40 = v13;
    v41 = v12;
    v46 = MEMORY[0x277D84F90];
    sub_22BE70138();
    v23 = v46;
    v38 = a1;
    v24 = (a1 + 64);
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;
      v46 = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);

      if (v28 >= v27 >> 1)
      {
        sub_22BE70138();
        v23 = v46;
      }

      *(v23 + 16) = v28 + 1;
      v29 = v23 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v26;
      v24 += 7;
      --v22;
    }

    while (v22);
    v13 = v40;
    v12 = v41;
    a1 = v38;
    v16 = v39;
  }

  v30 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_signposter;
  v31 = v43;

  v32 = v7 + v30;
  v33 = v44;
  sub_22BF4ECAC(v23, 200, v32, &v47, a1, v42, v31, v7, a4, v45);
  if (v33)
  {
  }

  sub_22C271B14();

  v34 = sub_22C272084();
  v35 = sub_22C2737C4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = v37;

    _os_log_impl(&dword_22BE15000, v34, v35, "ToolEmbeddingToolDatabase inserted %ld embeddings", v36, 0xCu);
    MEMORY[0x2318AD180](v36, -1, -1);
  }

  else
  {
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_22BF56B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_22BE18DA0();
}

uint64_t sub_22BF56B44()
{
  sub_22BE2035C();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v0[7] = sub_22BF52030();
  v6 = swift_allocObject();
  v0[8] = v6;
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v2;
  v6[5] = v5;
  v6[6] = v3;

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_22BF56C78;

  return sub_22BF52250(sub_22BF52250, &unk_22C28ECE8, v6);
}

uint64_t sub_22BF56C78()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  v3[10] = v0;

  if (!v0)
  {
    v10 = v3[7];
    v9 = v3[8];
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22BF56D80()
{
  sub_22BE183F0();
  v2 = v0[7];
  v1 = v0[8];

  sub_22BE17A94();
  v4 = v0[10];

  return v3();
}

uint64_t sub_22BF56DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  return MEMORY[0x2822009F8](sub_22BF56E0C, 0, 0);
}

uint64_t sub_22BF56E0C()
{
  sub_22BE2035C();
  v16 = v0;
  v1 = v0[2];
  v2 = sub_22BF54F00(v0[3], v0[4]);
  sub_22BF4D750();
  v4 = v3;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];
  v15[0] = 0;
  v15[1] = 0;
  sub_22BF55940(v5, v15, v2, v4, v7, v8, v6);
  v11 = v0[2];

  v12 = sub_22BE291B0();
  sub_22BF55CC4(v12, v13);

  sub_22BE1A26C();

  return v14();
}

uint64_t sub_22BF56EFC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v83 = a2;
  v84 = a3;
  v4 = sub_22C272A74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v82 - v10;
  v12 = sub_22C272AC4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v82 - v18;
  v85 = a1;
  v20 = sub_22C272154();
  MEMORY[0x2318AB1A0](v20);
  v21 = v4;
  v22 = *(v13 + 8);
  v22(v19, v12);
  v23 = (*(v5 + 88))(v11, v21);
  if (v23 == *MEMORY[0x277D730E0])
  {
    v24 = *(v5 + 8);
    v24(v11, v21);
    v25 = sub_22C272154();
    MEMORY[0x2318AB1A0](v25);
    v22(v17, v12);
    v26 = v86;
    v27 = sub_22C272A64();
    if (v26)
    {
      v29 = (v24)(v9, v21);
      return v29 & 1;
    }

    v40 = v27;
    v41 = v28;
    v86 = 0;
    v24(v9, v21);
    v42 = v83;
    v43 = *v83;
    v44 = *(*v83 + 40);
    sub_22C274154();
    sub_22C274174();
    sub_22C272F44();
    v45 = sub_22C2741A4();
    v46 = v43 + 56;
    v47 = -1 << *(v43 + 32);
    v48 = v45 & ~v47;
    if ((*(v43 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
    {
      v49 = ~v47;
      v50 = *(v43 + 48);
      do
      {
        v51 = (v50 + 16 * v48);
        v52 = v51[1];
        if (v52)
        {
          v53 = *v51 == v40 && v52 == v41;
          if (v53 || (sub_22C274014() & 1) != 0)
          {
            goto LABEL_49;
          }
        }

        v48 = (v48 + 1) & v49;
      }

      while (((*(v46 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0);
    }

    v54 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = *v42;
    v56 = v87;
    *v42 = 0x8000000000000000;
    v57 = *(v56 + 16);
    v58 = *(v56 + 24);

    if (v58 <= v57)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_22C1A9E40();
      }

      else
      {
        sub_22C1AD514();
      }

      v67 = v87;
      v68 = *(v87 + 40);
      sub_22C274154();
      sub_22C274174();
      sub_22C272F44();
      v69 = sub_22C2741A4();
      v70 = v67 + 56;
      v71 = -1 << *(v67 + 32);
      v48 = v69 & ~v71;
      if ((*(v67 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
      {
        v72 = ~v71;
        v73 = *(v67 + 48);
        do
        {
          v74 = (v73 + 16 * v48);
          v75 = v74[1];
          if (v75)
          {
            v76 = *v74 == v40 && v75 == v41;
            if (v76 || (sub_22C274014() & 1) != 0)
            {
              goto LABEL_54;
            }
          }

          v48 = (v48 + 1) & v72;
        }

        while (((*(v70 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0);
      }
    }

    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22C1ABF80();
    }

    v77 = v87;
    *(v87 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v48;
    v78 = (*(v77 + 48) + 16 * v48);
    *v78 = v40;
    v78[1] = v41;
    v79 = *(v77 + 16);
    v65 = __OFADD__(v79, 1);
    v80 = v79 + 1;
    if (!v65)
    {
      *(v77 + 16) = v80;
      *v42 = v77;
LABEL_49:

      goto LABEL_50;
    }
  }

  else
  {
    if (v23 != *MEMORY[0x277D730D8])
    {
      (*(v5 + 8))(v11, v21);
LABEL_50:
      v29 = sub_22BF540EC();
      return v29 & 1;
    }

    v30 = v83;
    v31 = *v83;
    v32 = *(*v83 + 40);
    sub_22C274154();
    sub_22C274174();
    v33 = sub_22C2741A4();
    v34 = -1 << *(v31 + 32);
    v35 = v33 & ~v34;
    if ((*(v31 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
    {
      v36 = ~v34;
      while (*(*(v31 + 48) + 16 * v35 + 8))
      {
        v35 = (v35 + 1) & v36;
        if (((*(v31 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_50;
    }

LABEL_9:
    v37 = *v30;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v87 = *v30;
    v39 = v87;
    *v30 = 0x8000000000000000;
    if (*(v39 + 24) <= *(v39 + 16))
    {
      if (v38)
      {
        sub_22C1A9E40();
      }

      else
      {
        sub_22C1AD514();
      }

      v39 = v87;
      v59 = *(v87 + 40);
      sub_22C274154();
      sub_22C274174();
      v60 = sub_22C2741A4();
      v61 = -1 << *(v39 + 32);
      v35 = v60 & ~v61;
      if ((*(v39 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
      {
        v62 = ~v61;
        while (*(*(v39 + 48) + 16 * v35 + 8))
        {
          v35 = (v35 + 1) & v62;
          if (((*(v39 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_54;
      }
    }

    else if ((v38 & 1) == 0)
    {
      sub_22C1ABF80();
      v39 = v87;
    }

LABEL_34:
    *(v39 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v35;
    v63 = (*(v39 + 48) + 16 * v35);
    *v63 = 0;
    v63[1] = 0;
    v64 = *(v39 + 16);
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (!v65)
    {
      *(v39 + 16) = v66;
      *v30 = v39;
      goto LABEL_50;
    }

    __break(1u);
  }

  __break(1u);
LABEL_54:
  sub_22BE5CE4C(&qword_27D9072A0, &qword_22C288100);
  result = sub_22C2740A4();
  __break(1u);
  return result;
}

uint64_t sub_22BF57588(unint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_22BF674CC(a1);
    return a2;
  }

  else
  {

    return sub_22BF675C4(a1, a2);
  }
}

uint64_t sub_22BF575DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22BE78B08();
  v4 = *(*(a2 + 16) + 16);
  sub_22BE78BF4(v4);
  v5 = *(a2 + 16);
  *(v5 + 16) = v4 + 1;
  v6 = sub_22C272224();
  (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a1, v6);
  *(a2 + 16) = v5;
  return swift_endAccess();
}

void sub_22BF57724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v25;
  a20 = v26;
  v231 = v21;
  v224 = v27;
  v252 = v28;
  v29 = sub_22BE5CE4C(&qword_27D90B348, &qword_22C28CA00);
  v30 = sub_22BE392E0(v29);
  sub_22BE179D8(v30);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE3A208();
  v34 = sub_22C2722D4();
  v35 = sub_22BE179D8(v34);
  v236 = v36;
  v239 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v39);
  sub_22BE19E94();
  v244 = v40;
  v41 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  sub_22BE19448(v41);
  v43 = *(v42 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  sub_22BE3AC88();
  v251 = sub_22C272224();
  v45 = sub_22BE179D8(v251);
  v249 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v49);
  sub_22BE19490();
  v243 = v50;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v51);
  sub_22BE19490();
  v235 = v52;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v53);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v54);
  sub_22BE19490();
  v250 = v55;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v56);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v57);
  sub_22BE19490();
  v247 = v58;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v59);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v60);
  sub_22BE19E94();
  sub_22BE18950(v61);
  v62 = sub_22C271FF4();
  v63 = sub_22BE179D8(v62);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22BE183AC();
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v68);
  sub_22BE324EC();
  sub_22C272014();
  sub_22C271FC4();
  v230 = v20;
  v69 = sub_22C272014();
  v70 = sub_22C2737F4();
  if (sub_22C273824())
  {
    sub_22BE36138();
    v223 = v23;
    v71 = v22;
    v72 = swift_slowAlloc();
    *v72 = 0;
    v73 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v69, v70, v73, "ToolEmbeddingsDatabase:fetchToolDefinition", "", v72, 2u);
    v22 = v71;
    v23 = v223;
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  v74 = *(v65 + 16);
  v75 = sub_22BE27BA4();
  v76(v75);
  v77 = sub_22C272064();
  sub_22BE29494(v77);
  swift_allocObject();
  sub_22BE48A68();
  sub_22C272054();
  (*(v65 + 8))(v24, v62);
  a10 = MEMORY[0x277D84FA0];
  v228 = sub_22C272E84();
  v78 = v20[25];
  v233 = v78;
  if (!v78)
  {
    v121 = v252;
    a10 = v252;

    goto LABEL_24;
  }

  v80 = *(v252 + 56);
  v79 = v252 + 56;
  v81 = *(v252 + 32);
  sub_22BE185B4();
  v84 = v83 & v82;
  v69 = (v85 + 63) >> 6;

  v86 = 0;
LABEL_5:
  v87 = v86;
  if (!v84)
  {
    goto LABEL_7;
  }

  do
  {
    v86 = v87;
LABEL_10:
    v88 = (*(v252 + 48) + ((v86 << 10) | (16 * __clz(__rbit64(v84)))));
    v89 = *v88;
    v24 = v88[1];
    v90 = *(v78 + 16);
    v84 &= v84 - 1;
    v253 = *v88;
    v254 = v24;
    swift_bridgeObjectRetain_n();
    sub_22C271B94();

    sub_22BE1AB5C(v22, 1, v251);
    if (!v175)
    {
      sub_22BE31718();
      v221 = v96;
      v220 = *v97;
      (*v97)();
      sub_22BE33554(&v255);
      v98(v227, v225, v251);
      swift_isUniquelyReferenced_nonNull_native();
      v253 = v228;
      v99 = sub_22BE41FB4();
      v101 = sub_22BE3B674(v99, v100);
      v103 = *(v228 + 16);
      v229 = v102;
      if (__OFADD__(v103, (v102 & 1) == 0))
      {
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        sub_22C2740B4();
        __break(1u);
        return;
      }

      v23 = v101;
      sub_22BE5CE4C(&qword_27D90B6E8, &qword_22C28EC18);
      if (sub_22C273C44())
      {
        v104 = sub_22BE41FB4();
        v106 = sub_22BE3B674(v104, v105);
        v22 = v221;
        if ((v229 & 1) != (v107 & 1))
        {
          goto LABEL_103;
        }

        v23 = v106;
        if (v229)
        {
LABEL_21:

          v228 = v253;
          v116 = v253[7] + *(v249 + 72) * v23;
          v117 = *(v249 + 40);
          sub_22BF6AC54();
          v118();
          v119 = sub_22BF6AAF0();
          v120(v119);
          sub_22BE33C0C();
          goto LABEL_5;
        }
      }

      else
      {
        v22 = v221;
        if (v229)
        {
          goto LABEL_21;
        }
      }

      v108 = v253;
      sub_22BE45B78(&v253[v23 >> 6]);
      v109 = (v108[6] + 16 * v23);
      *v109 = v89;
      v109[1] = v24;
      v110 = v108[7] + *(v249 + 72) * v23;
      sub_22BF6AC54();
      sub_22BE31718();
      v220();
      v111 = sub_22BF6AAF0();
      v112(v111);
      v113 = v108[2];
      v114 = __OFADD__(v113, 1);
      v115 = v113 + 1;
      if (v114)
      {
        goto LABEL_102;
      }

      v228 = v108;
      v108[2] = v115;
      sub_22BE33C0C();
      v22 = v221;
      goto LABEL_5;
    }

    sub_22BE233E8(v22, &qword_27D90B2D8, &qword_22C2B5080);
    sub_22C1A7B60(&v253, v89, v24, v91, v92, v93, v94, v95, v219, v220);

    v87 = v86;
    v78 = v233;
  }

  while (v84);
  while (1)
  {
LABEL_7:
    v86 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if (v86 >= v69)
    {
      break;
    }

    v84 = *(v79 + 8 * v86);
    ++v87;
    if (v84)
    {
      goto LABEL_10;
    }
  }

  v121 = a10;
LABEL_24:
  v79 = v244;
  v227 = v121;
  if (!*(v121 + 16))
  {
    v24 = sub_22C272E84();
LABEL_42:
    v133 = v228;
    goto LABEL_43;
  }

  v24 = v230[8];
  v225 = v230[7];
  sub_22BE1BD3C(v230 + 4, v225);
  sub_22C2722B4();
  swift_getKeyPath();
  sub_22BE2BA74();
  v122 = swift_allocObject();
  *(v122 + 16) = v121;
  *v23 = v122;
  v123 = *MEMORY[0x277D721B8];
  sub_22BE29E4C(&a15);
  (*(v124 + 104))(v23);
  sub_22BE269EC();
  sub_22BE29F88(v125, v126);
  sub_22BF68104();

  sub_22C2724E4();

  v127 = *(v23 + 8);
  v128 = sub_22BE196A8();
  v129(v128);
  v69 = *(v236 + 8);
  (v69)(v226, v239);
  if (qword_27D906378 != -1)
  {
    goto LABEL_100;
  }

  while (2)
  {
    v130 = sub_22C26E244();
    v131 = sub_22BE199F4(v130, qword_27D90B298);
    v132 = (*(v24 + 72))(v79, v131, v225, v24);
    v133 = v228;
    if (v231)
    {
      v134 = sub_22BE291B0();
      (v69)(v134);

      sub_22BE3CA84(&a13);
      sub_22BF5BCAC();

      goto LABEL_89;
    }

    v135 = v132;
    v136 = sub_22BE291B0();
    (v69)(v136);
    v24 = sub_22C272E84();
    v245 = *(v135 + 16);
    if (v245)
    {
      v137 = 0;
      sub_22BE25AD8();
      v240 = v135 + v138;
      v225 = v139 + 40;
      v232 = v135;
      while (v137 < *(v135 + 16))
      {
        v79 = *(v249 + 72);
        v140 = *(v249 + 16);
        v69 = v251;
        (v140)(v247, v240 + v79 * v137, v251);
        v141 = sub_22C2721D4();
        v143 = v142;
        sub_22BE40960();
        v140();
        swift_isUniquelyReferenced_nonNull_native();
        v253 = v24;
        v144 = sub_22BE196A8();
        v146 = sub_22BE3B674(v144, v145);
        v148 = *(v24 + 16);
        v149 = (v147 & 1) == 0;
        v24 = v148 + v149;
        if (__OFADD__(v148, v149))
        {
          goto LABEL_98;
        }

        v150 = v146;
        v69 = v147;
        sub_22BE5CE4C(&qword_27D90B6E8, &qword_22C28EC18);
        if (sub_22C273C44())
        {
          v151 = sub_22BE196A8();
          v153 = sub_22BE3B674(v151, v152);
          if ((v69 & 1) != (v154 & 1))
          {
            goto LABEL_103;
          }

          v150 = v153;
        }

        if (v69)
        {

          v24 = v253;
          v155 = v253[7] + v150 * v79;
          sub_22BE33554(&a9);
          sub_22BF6AC54();
          v156();
          sub_22BE33554(&a17);
          v157(v247, v150);
        }

        else
        {
          v24 = v253;
          sub_22BE45B78(&v253[v150 >> 6]);
          v158 = (*(v24 + 48) + 16 * v150);
          *v158 = v141;
          v158[1] = v143;
          v159 = *(v24 + 56) + v150 * v79;
          sub_22BE33554(&a10);
          sub_22BF6AC54();
          v160();
          sub_22BE33554(&a17);
          v161(v247, v150);
          v162 = *(v24 + 16);
          v114 = __OFADD__(v162, 1);
          v163 = v162 + 1;
          if (v114)
          {
            goto LABEL_99;
          }

          *(v24 + 16) = v163;
        }

        ++v137;
        v135 = v232;
        if (v245 == v137)
        {

          goto LABEL_42;
        }
      }

LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      sub_22BE185D0();
      swift_once();
      continue;
    }

    break;
  }

LABEL_43:

  v228 = v133;
  v164 = sub_22BF589B4(v24, v133);
  v165 = 0;
  v166 = v230[9];
  v241 = *(v166 + 16);
  v247 = v249 + 16;
  v248 = (v249 + 32);
  v246 = MEMORY[0x277D84F90];
  v237 = v166;
LABEL_44:
  while (v165 != v241)
  {
    if (v165 >= *(v166 + 16))
    {
      goto LABEL_92;
    }

    v79 = (*(v249 + 80) + 32) & ~*(v249 + 80);
    v167 = *(v249 + 72);
    (*(v249 + 16))(v250, v166 + v79 + v167 * v165++, v251);
    v168 = sub_22C2721D4();
    v170 = v169;
    if (*(v252 + 16))
    {
      v24 = v168;
      v171 = *(v252 + 40);
      sub_22C274154();
      sub_22C272F44();
      v172 = sub_22C2741A4();
      v173 = ~(-1 << *(v252 + 32));
      while (1)
      {
        v69 = v172 & v173;
        if (((*(v252 + 56 + (((v172 & v173) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v172 & v173)) & 1) == 0)
        {
          break;
        }

        v174 = (*(v252 + 48) + 16 * v69);
        v175 = *v174 == v24 && v174[1] == v170;
        if (!v175)
        {
          v176 = sub_22C274014();
          v172 = v69 + 1;
          if ((v176 & 1) == 0)
          {
            continue;
          }
        }

        v177 = *v248;
        (*v248)(v235, v250, v251);
        v178 = v246;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v256 = v246;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22BE711C4(0, *(v246 + 16) + 1, 1);
          v178 = v256;
        }

        v24 = *(v178 + 16);
        v180 = *(v178 + 24);
        v69 = v24 + 1;
        if (v24 >= v180 >> 1)
        {
          v182 = sub_22BE1AAE4(v180);
          sub_22BE711C4(v182, v24 + 1, 1);
          v178 = v256;
        }

        *(v178 + 16) = v69;
        v246 = v178;
        v177(v178 + v79 + v24 * v167, v235, v251);
        v166 = v237;
        goto LABEL_44;
      }
    }

    sub_22BE33554(&a17);
    v181(v250, v251);

    v166 = v237;
  }

  v250 = *(v246 + 16);
  if (v250)
  {
    v79 = 0;
    sub_22BE25AD8();
    v242 = v183 + v184;
    v238 = (v185 + 40);
    while (v79 < *(v183 + 16))
    {
      v252 = *(v249 + 72);
      v69 = v251;
      (*(v249 + 16))(v234, v242 + v252 * v79, v251);
      v186 = sub_22C2721D4();
      v24 = v187;
      v188 = *(v249 + 32);
      sub_22BE40960();
      v188();
      swift_isUniquelyReferenced_nonNull_native();
      v253 = v164;
      v189 = sub_22BE2BA80();
      v191 = sub_22BE3B674(v189, v190);
      if (__OFADD__(v164[2], (v192 & 1) == 0))
      {
        goto LABEL_94;
      }

      v69 = v191;
      v193 = v192;
      sub_22BE5CE4C(&qword_27D90B6E8, &qword_22C28EC18);
      if (sub_22C273C44())
      {
        v194 = sub_22BE2BA80();
        v196 = sub_22BE3B674(v194, v195);
        if ((v193 & 1) != (v197 & 1))
        {
          goto LABEL_103;
        }

        v69 = v196;
      }

      if (v193)
      {

        v164 = v253;
        (*v238)(v253[7] + v69 * v252, v243, v251);
      }

      else
      {
        v164 = v253;
        sub_22BE45B78(&v253[v69 >> 6]);
        v198 = (v164[6] + 16 * v69);
        *v198 = v186;
        v198[1] = v24;
        (v188)(v164[7] + v69 * v252, v243, v251);
        v199 = v164[2];
        v114 = __OFADD__(v199, 1);
        v200 = v199 + 1;
        if (v114)
        {
          goto LABEL_95;
        }

        v164[2] = v200;
      }

      ++v79;
      v183 = v246;
      if (v250 == v79)
      {
        goto LABEL_72;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

LABEL_72:

  if (sub_22BE406B8())
  {
    v201 = v227;
    if (v224)
    {
      v79 = v227 + 56;
      v202 = *(v227 + 56);
      v203 = *(v227 + 32);
      sub_22BE185B4();
      v206 = v205 & v204;
      v208 = (v207 + 63) >> 6;

      v209 = 0;
      v24 = v222;
      while (v206)
      {
        v210 = v206;
LABEL_81:
        v206 = (v210 - 1) & v210;
        if (v164[2])
        {
          v212 = (*(v201 + 48) + ((v209 << 10) | (16 * __clz(__rbit64(v210)))));
          v213 = *v212;
          v69 = v212[1];

          v214 = sub_22BE1B328();
          v216 = sub_22BE3B674(v214, v215);
          if (v217)
          {
            (*(v249 + 16))(v222, v164[7] + *(v249 + 72) * v216, v251);
            v218 = *(v233 + 16);
            v253 = v213;
            v254 = v69;
            sub_22C271BA4();

            (*(v249 + 8))(v222, v251);
          }

          else
          {
          }

          v201 = v227;
        }
      }

      while (1)
      {
        v211 = v209 + 1;
        if (__OFADD__(v209, 1))
        {
          break;
        }

        if (v211 >= v208)
        {

          sub_22BE406B8();

          goto LABEL_88;
        }

        v210 = *(v79 + 8 * v211);
        ++v209;
        if (v210)
        {
          v209 = v211;
          goto LABEL_81;
        }
      }

LABEL_96:
      __break(1u);
      goto LABEL_97;
    }
  }

LABEL_88:
  sub_22BE3CA84(&a13);
  sub_22BF5BCAC();

LABEL_89:
  sub_22BE18478();
}

uint64_t sub_22BF589B4(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_22BF65A28(a1, sub_22BF67F50, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_22BF58A38(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v276 = a6;
  v268 = a5;
  v279 = a4;
  v283 = a3;
  v284 = a1;
  v285 = a2;
  v244 = sub_22C272CA4();
  i = *(v244 - 8);
  v7 = *(i + 64);
  v8 = MEMORY[0x28223BE20](v244);
  v238 = &v228 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v241 = &v228 - v11;
  MEMORY[0x28223BE20](v10);
  v249 = &v228 - v12;
  v239 = type metadata accessor for ToolboxSearchOutput(0);
  v240 = *(v239 - 8);
  v13 = *(v240 + 64);
  v14 = MEMORY[0x28223BE20](v239);
  v237 = (&v228 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v236 = &v228 - v17;
  MEMORY[0x28223BE20](v16);
  v235 = (&v228 - v18);
  v19 = sub_22BE5CE4C(&qword_27D90B6D0, &unk_22C28EBA0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v254 = &v228 - v21;
  v255 = type metadata accessor for ToolboxDatabasePayload(0);
  v22 = *(*(v255 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v255);
  v246 = &v228 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v253 = &v228 - v25;
  v262 = sub_22C273064();
  v278 = *(v262 - 8);
  v26 = *(v278 + 8);
  MEMORY[0x28223BE20](v262);
  v261 = &v228 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = sub_22C2720A4();
  v264 = *(v287 - 8);
  v28 = *(v264 + 64);
  v29 = MEMORY[0x28223BE20](v287);
  v272 = &v228 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v265 = &v228 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v245 = &v228 - v34;
  MEMORY[0x28223BE20](v33);
  v260 = &v228 - v35;
  v36 = sub_22C26E4D4();
  v37 = *(v36 - 8);
  v273 = v36;
  v274 = v37;
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v243 = (&v228 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x28223BE20](v39);
  v242 = &v228 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v277 = &v228 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v271 = &v228 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v228 - v47;
  v49 = sub_22C26E444();
  v275 = *(v49 - 8);
  v50 = *(v275 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v228 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22C26E494();
  v269 = *(v53 - 8);
  v54 = *(v269 + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v56 = (&v228 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v282 = sub_22C26E4C4();
  *&v270 = *(v282 - 8);
  v57 = *(v270 + 64);
  MEMORY[0x28223BE20](v282);
  v59 = (&v228 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = v6[18];
  v60 = v6[19];
  sub_22BE1BD3C(v6 + 15, v61);
  (*(v60 + 1))(&v288, v61, v60);
  LOBYTE(v291) = v288;
  v62 = v286;
  v63 = sub_22BF51D9C(v284, v285, v6 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_signposter);
  if (v62)
  {
    return v52;
  }

  v266 = v63;
  v259 = v56;
  v286 = v6;
  v263 = 0;
  v281 = v52;
  v267 = v49;
  v285 = v48;
  v291 = MEMORY[0x277D84FA0];
  v289 = MEMORY[0x277D84FA0];
  v290 = MEMORY[0x277D84FA0];
  sub_22BE5CE4C(&qword_27D90B6C8, &unk_22C28EB80);
  v64 = *(v269 + 72);
  v65 = (*(v269 + 80) + 32) & ~*(v269 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_22C2759F0;
  v284 = v66;
  *v59 = 0;
  v59[1] = 0;
  v67 = *MEMORY[0x277D78268];
  v68 = *(v270 + 104);
  v69 = v282;
  v68(v59, v67, v282);
  sub_22C26E474();
  *v59 = 0;
  *(v59 + 8) = 1;
  v68(v59, *MEMORY[0x277D78270], v69);
  sub_22C26E474();
  v70 = v276;
  if (v276)
  {
    sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
    v71 = *(sub_22C26E404() - 8);
    v72 = *(v71 + 72);
    v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v74 = swift_allocObject();
    v270 = xmmword_22C275160;
    *(v74 + 16) = xmmword_22C275160;
    *v59 = 0;
    v59[1] = 0;
    v68(v59, v67, v282);

    sub_22C26E474();
    sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
    v75 = (sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
    v76 = *(*v75 + 72);
    v77 = (*(*v75 + 80) + 32) & ~*(*v75 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = v270;
    v79 = v78 + v77;
    v80 = (v78 + v77 + v75[14]);
    v81 = *MEMORY[0x277D78238];
    v82 = sub_22C26E464();
    (*(*(v82 - 8) + 104))(v79, v81, v82);
    *v80 = v268;
    v80[1] = v70;
    v83 = v273;
    (*(v274 + 104))(v80, *MEMORY[0x277D78288], v273);
    sub_22BE19DC4(v80, 0, 1, v83);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
    v84 = *(sub_22C26E404() - 8);
    v85 = *(v84 + 72);
    v86 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v87 = swift_allocObject();
    v276 = xmmword_22C275160;
    *(v87 + 16) = xmmword_22C275160;
    *v59 = 0;
    v59[1] = 0;
    v68(v59, v67, v282);
    sub_22C26E474();
    sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
    v88 = (sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
    v89 = *(*v88 + 72);
    v90 = (*(*v88 + 80) + 32) & ~*(*v88 + 80);
    v91 = swift_allocObject();
    *(v91 + 16) = v276;
    v92 = v91 + v90;
    v93 = v88[14];
    v94 = *MEMORY[0x277D78230];
    v95 = sub_22C26E464();
    (*(*(v95 - 8) + 104))(v92, v94, v95);
    v83 = v273;
    sub_22BE19DC4(v92 + v93, 1, 1, v273);
  }

  sub_22C26E3F4();
  v96 = v272;
  v97 = v267;
  v98 = *(v286 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
  sub_22BE5CE4C(&qword_27D90B718, &qword_22C28EC48);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_22C275160;
  v100 = sub_22C2734C4();
  v102 = v101;

  *(v99 + 32) = v100;
  *(v99 + 40) = v102;
  v288 = v279;

  sub_22BE6E0C4();
  v103 = v263;
  v104 = sub_22C26E364();
  v263 = v103;
  v105 = i;
  v52 = v278;
  if (v103)
  {
    goto LABEL_6;
  }

  v107 = v104;

  v108 = 0;
  v248 = v107 + 32;
  v250 = *(v107 + 16);
  v110 = v274;
  v109 = v275;
  v279 = v275 + 16;
  *&v270 = v274 + 16;
  v269 = v274 + 32;
  v268 = v274 + 88;
  LODWORD(v266) = *MEMORY[0x277D78288];
  v286 = (v264 + 8);
  *&v276 = v274 + 8;
  v259 = (v274 + 96);
  v257 = (v52 + 8);
  v234 = *MEMORY[0x277D78290];
  v278 = (v275 + 8);
  v231 = (v105 + 32);
  v233 = (v105 + 16);
  v52 = MEMORY[0x277D84F90];
  v232 = (v105 + 8);
  v111 = v281;
  v247 = v107;
LABEL_9:
  if (v108 == v250)
  {
LABEL_6:

    return v52;
  }

  if (v108 < *(v107 + 16))
  {
    if (*(v52 + 2) < v283)
    {
      v112 = *(v248 + 8 * v108);
      v252 = v108 + 1;
      v282 = *(v112 + 16);

      v113 = 0;
      for (i = v112; ; v112 = i)
      {
        if (v282 == v113)
        {
          goto LABEL_81;
        }

        if (v113 >= *(v112 + 16))
        {
          __break(1u);
          goto LABEL_84;
        }

        (*(v109 + 16))(v111, v112 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v113, v97);
        if (*(v52 + 2) >= v283)
        {
          (*v278)(v111, v97);
LABEL_81:

          v107 = v247;
          v108 = v252;
          goto LABEL_9;
        }

        v114 = sub_22C26E424();
        if (!*(v114 + 16))
        {

          sub_22C271AD4();
          v131 = sub_22C272084();
          v132 = sub_22C2737A4();
          if (os_log_type_enabled(v131, v132))
          {
            v133 = swift_slowAlloc();
            *v133 = 0;
            _os_log_impl(&dword_22BE15000, v131, v132, "ANN search for for 1P apps or protocols did not return toolbox identifier", v133, 2u);
            v134 = v133;
            v109 = v275;
            MEMORY[0x2318AD180](v134, -1, -1);
          }

          (*v286)(v96, v287);
          goto LABEL_23;
        }

        v284 = v52;
        v115 = (*(v110 + 80) + 32) & ~*(v110 + 80);
        v116 = *(v110 + 16);
        v117 = v271;
        v116(v271, v114 + v115, v83);

        v118 = v83;
        v119 = *(v110 + 32);
        v120 = v285;
        v119(v285, v117, v118);
        v121 = v277;
        v116(v277, v120, v118);
        v122 = *(v110 + 88);
        v123 = v122(v121, v118);
        if (v123 != v266)
        {
          break;
        }

        v258 = *v259;
        v258(v121, v118);
        v124 = *v121;
        v125 = *(v121 + 1);
        v126 = v261;
        sub_22C273054();
        v127 = sub_22C273034();
        v129 = v128;

        (*v257)(v126, v262);
        if (v129 >> 60 == 15)
        {
          v130 = v265;
          v83 = v273;
LABEL_27:
          v97 = v267;
          v52 = v284;
LABEL_28:
          sub_22C271AD4();
          v139 = sub_22C272084();
          v140 = sub_22C2737A4();
          v141 = os_log_type_enabled(v139, v140);
          v96 = v272;
          if (v141)
          {
            v142 = swift_slowAlloc();
            *v142 = 0;
            _os_log_impl(&dword_22BE15000, v139, v140, "Payload from ANN search for 1P apps or protocols could not be decoded", v142, 2u);
            MEMORY[0x2318AD180](v142, -1, -1);
          }

          (*v286)(v130, v287);
          (*v276)(v285, v83);
          v111 = v281;
          result = (*v278)(v281, v97);
          v110 = v274;
          v109 = v275;
          goto LABEL_31;
        }

        v256 = v113;
        v264 = v129;
        if (qword_281079BD8 != -1)
        {
          swift_once();
        }

        sub_22BE29F88(&qword_281079998, type metadata accessor for ToolboxDatabasePayload);
        v143 = v254;
        v144 = v255;
        v145 = v127;
        v146 = v264;
        v147 = v263;
        sub_22C26DB54();
        if (v147)
        {

          sub_22BF158B4(v145, v146);
          sub_22BE19DC4(v143, 1, 1, v144);
          sub_22BE233E8(v143, &qword_27D90B6D0, &unk_22C28EBA0);
          v263 = 0;
          v130 = v265;
          v83 = v273;
          v97 = v267;
          v52 = v284;
          v113 = v256;
          goto LABEL_28;
        }

        v251 = v145;
        v263 = 0;
        sub_22BE19DC4(v143, 0, 1, v144);
        sub_22BF68168();
        v148 = *(sub_22C26E424() + 16);

        if (v148 < 2)
        {
          v149 = v245;
          sub_22C271AD4();
          v150 = sub_22C272084();
          v151 = sub_22C2737A4();
          v152 = os_log_type_enabled(v150, v151);
          v113 = v256;
          if (v152)
          {
            v153 = swift_slowAlloc();
            *v153 = 0;
            _os_log_impl(&dword_22BE15000, v150, v151, "ANN search for for 1P apps or protocols did not return toolbox scope", v153, 2u);
            MEMORY[0x2318AD180](v153, -1, -1);
          }

          sub_22BF158B4(v251, v264);

          (*v286)(v149, v287);
          sub_22BF680B4();
          v83 = v273;
          (*v276)(v285, v273);
          v111 = v281;
          v97 = v267;
          result = (*v278)(v281, v267);
LABEL_40:
          v96 = v272;
          v110 = v274;
LABEL_54:
          v109 = v275;
LABEL_55:
          v52 = v284;
          goto LABEL_31;
        }

        result = sub_22C26E424();
        v154 = v246;
        v113 = v256;
        if (*(result + 16) < 2uLL)
        {
          goto LABEL_85;
        }

        v155 = v273;
        v156 = result + v115 + *(v274 + 72);
        v157 = v242;
        v116(v242, v156, v273);

        v158 = v243;
        v119(v243, v157, v155);
        v159 = v122(v158, v155);
        if (v159 == v234)
        {
          v258(v158, v155);
          if (*v158 >= 4)
          {
            v160 = 4;
          }

          else
          {
            v160 = *v158;
          }
        }

        else
        {
          (*v276)(v158, v155);
          v160 = 4;
        }

        v161 = v244;
        v162 = v249;
        v163 = v285;
        sub_22BF6805C();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v110 = v274;
        if (!EnumCaseMultiPayload)
        {
          v170 = *v154;
          v169 = *(v154 + 1);
          v171 = v154[16];
          if (sub_22C269E10(*v154, v169, v291))
          {
            sub_22BF158B4(v251, v264);

            sub_22BF680B4();
            v167 = *v276;
            v168 = v163;
LABEL_53:
            v83 = v273;
            v167(v168, v273);
            v111 = v281;
            v97 = v267;
            result = (*v278)(v281, v267);
            v96 = v272;
          }

          else
          {
            v258 = v160;

            sub_22C1A7B60(&v288, v170, v169, v177, v178, v179, v180, v181, v228, v229);

            v182 = v170;
            v96 = v272;
            v83 = v273;
            v97 = v267;
            if ((v171 & 1) == 0)
            {

              sub_22C26E434();
              v199 = v235;
              v229 = v182;
              *v235 = v182;
              v199[1] = v169;
              v230 = v169;
              *(v199 + 16) = v258;
              *(v199 + 5) = v200;
              swift_storeEnumTagMultiPayload();
              v201 = v284;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_22BE66E58(0, *(v201 + 16) + 1, 1, v201);
                v201 = v224;
              }

              v202 = v240;
              v204 = *(v201 + 16);
              v203 = *(v201 + 24);
              v205 = v201;
              v109 = v275;
              if (v204 >= v203 >> 1)
              {
                sub_22BE66E58(v203 > 1, v204 + 1, 1, v201);
                v202 = v240;
                v205 = v225;
              }

              *(v205 + 2) = v204 + 1;
              v206 = &v205[((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * v204];
              v52 = v205;
              sub_22BF68168();
              v212 = v229;
              v213 = &v262;
LABEL_79:
              sub_22C1A7B60(&v288, v212, *(v213 - 32), v207, v208, v209, v210, v211, v228, v229);
              sub_22BF158B4(v251, v264);

              sub_22BF680B4();
              (*v276)(v285, v83);
LABEL_23:
              v111 = v281;
              result = (*v278)(v281, v97);
              goto LABEL_31;
            }

            sub_22BF158B4(v251, v264);

            sub_22BF680B4();
            (*v276)(v285, v83);
            v111 = v281;
            result = (*v278)(v281, v97);
          }

          goto LABEL_54;
        }

        v165 = v233;
        if (EnumCaseMultiPayload != 1)
        {
          v173 = *v154;
          v172 = *(v154 + 1);
          v174 = v154[16];
          v175 = sub_22C269E10(*v154, v172, v291);
          v109 = v275;
          if (v175)
          {
            sub_22BF158B4(v251, v264);

            sub_22BF680B4();
            v83 = v273;
            (*v276)(v163, v273);
            v111 = v281;
            v97 = v267;
            result = (*v278)(v281, v267);
            v96 = v272;
          }

          else
          {

            LODWORD(v258) = v174;
            sub_22C1A7B60(&v288, v173, v172, v183, v184, v185, v186, v187, v228, v229);

            v96 = v272;
            v83 = v273;
            v97 = v267;
            if ((v258 & 1) == 0)
            {

              sub_22C26E434();
              v214 = v237;
              v230 = v173;
              *v237 = v173;
              v214[1] = v172;
              v258 = v172;
              *(v214 + 4) = v215;
              swift_storeEnumTagMultiPayload();
              v216 = v284;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_22BE66E58(0, *(v216 + 16) + 1, 1, v216);
                v216 = v226;
              }

              v217 = v240;
              v219 = *(v216 + 16);
              v218 = *(v216 + 24);
              v220 = v216;
              if (v219 >= v218 >> 1)
              {
                sub_22BE66E58(v218 > 1, v219 + 1, 1, v216);
                v217 = v240;
                v220 = v227;
              }

              *(v220 + 2) = v219 + 1;
              v221 = &v220[((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v219];
              v52 = v220;
              sub_22BF68168();
              v212 = v230;
              v213 = &v287;
              goto LABEL_79;
            }

            sub_22BF158B4(v251, v264);

            sub_22BF680B4();
            (*v276)(v285, v83);
            v111 = v281;
            result = (*v278)(v281, v97);
          }

          goto LABEL_55;
        }

        v166 = v154[*(sub_22BE5CE4C(&qword_27D90B720, &qword_22C28EC50) + 48)];
        (*v231)(v162, v154, v161);
        if (sub_22C269EFC(v162, v289))
        {
          sub_22BF158B4(v251, v264);
          (*v232)(v162, v161);
          sub_22BF680B4();
          v167 = *v276;
          v168 = v285;
          goto LABEL_53;
        }

        v258 = *v165;
        (v258)(v238, v162, v161);
        sub_22C1A7C40();
        v176 = *v232;
        (*v232)(v241, v161);
        v97 = v267;
        if (v166)
        {
          sub_22BF158B4(v251, v264);
          v176(v249, v161);
          sub_22BF680B4();
          v83 = v273;
          (*v276)(v285, v273);
          v111 = v281;
          result = (*v278)(v281, v97);
          goto LABEL_40;
        }

        v230 = v176;
        v188 = sub_22BE5CE4C(&qword_27D90B6F0, &qword_22C28EC20);
        v189 = *(v188 + 48);
        v190 = *(v188 + 64);
        v191 = v236;
        (v258)(v236, v249, v161);
        v191[v189] = v160;
        sub_22C26E434();
        *&v191[v190] = v192;
        swift_storeEnumTagMultiPayload();
        v193 = v284;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BE66E58(0, *(v193 + 16) + 1, 1, v193);
          v193 = v222;
        }

        v110 = v274;
        v109 = v275;
        v195 = *(v193 + 16);
        v194 = *(v193 + 24);
        v196 = v249;
        v197 = v264;
        v284 = (v195 + 1);
        if (v195 >= v194 >> 1)
        {
          sub_22BE66E58(v194 > 1, v195 + 1, 1, v193);
          v193 = v223;
        }

        sub_22BF158B4(v251, v197);
        v230(v196, v161);
        sub_22BF680B4();
        v83 = v273;
        (*v276)(v285, v273);
        v111 = v281;
        (*v278)(v281, v97);
        *(v193 + 16) = v284;
        v198 = v193 + ((*(v240 + 80) + 32) & ~*(v240 + 80)) + *(v240 + 72) * v195;
        v52 = v193;
        result = sub_22BF68168();
        v96 = v272;
LABEL_31:
        ++v113;
      }

      v135 = v260;
      sub_22C271AD4();
      v136 = sub_22C272084();
      v137 = sub_22C2737A4();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&dword_22BE15000, v136, v137, "Unexpected type found while unwrapping projected attribute in Vector Db", v138, 2u);
        MEMORY[0x2318AD180](v138, -1, -1);
      }

      (*v286)(v135, v287);
      v83 = v273;
      (*v276)(v277, v273);
      v130 = v265;
      goto LABEL_27;
    }

    goto LABEL_6;
  }

LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_22BF5AAB4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  v6 = *a1 + 32;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v5 == v7)
    {
      result = swift_bridgeObjectRelease_n();
      *a1 = v8;
      return result;
    }

    if (v7 >= *(v4 + 16))
    {
      break;
    }

    sub_22BE26B00(v6, v16);
    v9 = sub_22BF5AC38(v16, a2);
    if (v2)
    {
      goto LABEL_15;
    }

    if (v9)
    {
      sub_22BE49224(v16, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BE7121C(0, *(v8 + 16) + 1, 1);
        v8 = v17;
      }

      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22BE7121C((v11 > 1), v12 + 1, 1);
        v8 = v17;
      }

      *(v8 + 16) = v12 + 1;
      sub_22BE49224(v15, v8 + 40 * v12 + 32);
    }

    else
    {
      sub_22BE26B64(v16);
    }

    v6 += 40;
    ++v7;
  }

  __break(1u);
LABEL_15:

  sub_22BE26B64(v16);

  __break(1u);
  return result;
}

BOOL sub_22BF5AC38(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v55 = type metadata accessor for ToolBoxClientActionSearchResult(0);
  v3 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolBoxAssistantSchemaSearchResult(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = sub_22C2720A4();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v52 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v53 = &v48 - v15;
  v16 = sub_22C272AC4();
  v56 = *(v16 - 8);
  v17 = *(v56 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ToolBoxToolSearchResult(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v51 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v48 - v25;
  MEMORY[0x28223BE20](v24);
  sub_22BE26B00(a1, v58);
  sub_22BE5CE4C(&unk_27D907760, &unk_22C28EC00);
  if (swift_dynamicCast())
  {
    sub_22BF68168();
    if ((v26[*(v20 + 24)] | 2) != 3)
    {
      goto LABEL_8;
    }

    sub_22C272154();
    v27 = sub_22C272A24();
    v29 = v28;
    v30 = *(v56 + 8);
    v30(v19, v16);
    v31 = v57;
    LOBYTE(v27) = sub_22C269E10(v27, v29, v57);

    if (v27)
    {
      goto LABEL_8;
    }

    v35 = v53;
    sub_22C272194();
    if (sub_22BE1AEA8(v35, 1, v16) == 1)
    {
      sub_22BE233E8(v35, &unk_27D906F38, qword_22C274D30);
      v36 = v52;
      sub_22C271AD4();
      sub_22BF6805C();
      v37 = sub_22C272084();
      v38 = sub_22C2737C4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v59 = v40;
        *v39 = 136315138;
        v41 = sub_22C2721D4();
        v43 = v42;
        sub_22BF680B4();
        v44 = sub_22BE61C88(v41, v43, &v59);

        *(v39 + 4) = v44;
        _os_log_impl(&dword_22BE15000, v37, v38, "ToolEmbeddingsDatabase: Filtering local tool that doesn't match requested bundle IDs: %s", v39, 0xCu);
        sub_22BE26B64(v40);
        MEMORY[0x2318AD180](v40, -1, -1);
        MEMORY[0x2318AD180](v39, -1, -1);
      }

      else
      {

        sub_22BF680B4();
      }

      (*(v49 + 8))(v36, v50);
      sub_22BF680B4();
      v33 = 0;
    }

    else
    {
      v45 = sub_22C272A24();
      v47 = v46;
      v30(v35, v16);
      v33 = sub_22C269E10(v45, v47, v31);

      sub_22BF680B4();
    }
  }

  else
  {
    if (!swift_dynamicCast())
    {
      if (!swift_dynamicCast())
      {
LABEL_9:
        v33 = 1;
        goto LABEL_10;
      }

LABEL_8:
      sub_22BF680B4();
      goto LABEL_9;
    }

    sub_22BF68168();
    v32 = v9[*(v5 + 24)];
    sub_22BF680B4();
    v33 = v32 == 0;
  }

LABEL_10:
  sub_22BE26B64(v58);
  return v33;
}

uint64_t sub_22BF5B2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v7 = sub_22C26E4C4();
  v8 = *(v7 - 8);
  v49 = v7;
  v50 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C26E494();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BE5CE4C(&qword_27D907338, &qword_22C275290);
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = *(a3 + 16);
  if (v18)
  {
    v44 = a1;
    v45 = a2;
    v56 = MEMORY[0x277D84F90];
    sub_22BE7123C(0, v18, 0);
    v19 = v56;
    LODWORD(v53) = *MEMORY[0x277D78238];
    v52 = sub_22C26E464();
    v51 = *(*(v52 - 8) + 104);
    v20 = *MEMORY[0x277D78288];
    v21 = (a3 + 40);
    do
    {
      v23 = *(v21 - 1);
      v22 = *v21;
      v24 = &v17[*(v55 + 48)];
      v51(v17, v53, v52);
      *v24 = v23;
      *(v24 + 1) = v22;
      v25 = sub_22C26E4D4();
      (*(*(v25 - 8) + 104))(v24, v20, v25);
      sub_22BE19DC4(v24, 0, 1, v25);
      v56 = v19;
      v26 = *(v19 + 16);
      v27 = *(v19 + 24);

      if (v26 >= v27 >> 1)
      {
        sub_22BE7123C(v27 > 1, v26 + 1, 1);
        v19 = v56;
      }

      *(v19 + 16) = v26 + 1;
      v28 = v19 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v29 = *(v54 + 72);
      sub_22BEBFD18();
      v21 += 2;
      --v18;
    }

    while (v18);
  }

  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  v30 = *(sub_22C26E404() - 8);
  v52 = *(v30 + 72);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_22C27FED0;
  v32 = v46;
  *v46 = 0;
  *(v32 + 1) = 0;
  v34 = v50 + 104;
  v33 = *(v50 + 104);
  v33(v32, *MEMORY[0x277D78268], v49);
  v50 = v34;
  v51 = v33;

  sub_22C26E474();
  sub_22C26E3F4();
  *v32 = 0;
  v32[8] = 1;
  LODWORD(v45) = *MEMORY[0x277D78270];
  (v33)(v32);
  sub_22C26E474();
  v44 = sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  v35 = *(v54 + 72);
  v36 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_22C2759F0;
  v38 = v37 + v36;
  v39 = v55;
  sub_22BF53E38(v37 + v36, (v37 + v36 + *(v55 + 48)), 2);
  sub_22BF53E38(v38 + v35, (v38 + v35 + *(v39 + 48)), 1);
  sub_22C26E3F4();
  *v32 = 0;
  v32[8] = 1;
  v51(v32, v45, v49);
  sub_22C26E474();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_22C28E670;
  v41 = v40 + v36;
  sub_22BF53E38(v40 + v36, (v40 + v36 + *(v39 + 48)), 1);
  sub_22BF53E38(v41 + v35, (v41 + v35 + *(v39 + 48)), 0);
  sub_22BF53E38(v41 + 2 * v35, (v41 + 2 * v35 + *(v39 + 48)), 3);
  sub_22BF53E38(v41 + 3 * v35, (v41 + 3 * v35 + *(v39 + 48)), 2);
  sub_22C26E3F4();
  return v53;
}

uint64_t sub_22BF5B8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v44 = a3;
  v42 = a1;
  v8 = sub_22BE5CE4C(&qword_27D90B6D8, &qword_22C28EBF8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for ToolBoxToolSearchResult(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v37 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  v23 = *(v5 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
  v24 = sub_22C26E314();
  if (!v6)
  {
    v38 = v12;
    v39 = v20;
    v49 = v22;
    v40 = v13;
    v41 = v17;
    v25 = sub_22BF58A38(v42, v43, v24, v44, v45, v46);

    v27 = sub_22BF576B8(v25);

    swift_bridgeObjectRelease_n();
    v28 = *(v27 + 16);
    if (v28)
    {
      v46 = v27;
      v29 = v27 + 32;
      v7 = MEMORY[0x277D84F90];
      v30 = v38;
      do
      {
        sub_22BE26B00(v29, v48);
        sub_22BE49224(v48, v47);
        sub_22BE5CE4C(&unk_27D907760, &unk_22C28EC00);
        if (swift_dynamicCast())
        {
          sub_22BE19DC4(v11, 0, 1, v30);
          sub_22BF68168();
          sub_22BF68168();
          sub_22BF68168();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BE67120(0, *(v7 + 16) + 1, 1, v7);
            v7 = v35;
          }

          v32 = *(v7 + 16);
          v31 = *(v7 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_22BE67120(v31 > 1, v32 + 1, 1, v7);
            v7 = v36;
          }

          *(v7 + 16) = v32 + 1;
          v33 = v7 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
          v34 = *(v40 + 72);
          sub_22BF68168();
        }

        else
        {
          sub_22BE19DC4(v11, 1, 1, v30);
          sub_22BE233E8(v11, &qword_27D90B6D8, &qword_22C28EBF8);
        }

        v29 += 40;
        --v28;
      }

      while (v28);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v7;
}

void sub_22BF5BCAC()
{
  sub_22BE19460();
  v2 = v1;
  v23 = v3;
  v4 = sub_22C272034();
  v5 = sub_22BE179D8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  sub_22BE3AC88();
  v10 = sub_22C271FF4();
  v11 = sub_22BE179D8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  sub_22BE1AB80();
  v14 = sub_22C272014();
  sub_22C272044();
  v22 = sub_22C2737E4();
  if ((sub_22C273824() & 1) == 0)
  {
LABEL_13:

    v20 = sub_22BE25D18();
    v21(v20);
    sub_22BE1AABC();
    return;
  }

  if ((v2 & 1) == 0)
  {
    v15 = v23;
    if (v23)
    {
LABEL_9:

      sub_22C272074();

      if ((*(v7 + 88))(v0, v4) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v0, v4);
        v16 = "";
      }

      sub_22BE36138();
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_22C271FD4();
      _os_signpost_emit_with_name_impl(&dword_22BE15000, v14, v22, v18, v15, v16, v17, 2u);
      v19 = sub_22BE22C7C();
      MEMORY[0x2318AD180](v19);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v15 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_22BF5BF00(uint64_t a1)
{
  sub_22BF5BF58(a1);
  if (!v2)
  {
    v5 = v4;
    v1 = *(v3 + 16);

    v6 = *(v5 + 16);
  }

  return v1;
}

void sub_22BF5BF58(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v13 = MEMORY[0x277D84FA0];
  v14 = MEMORY[0x277D84FA0];
  v6 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
  v7 = sub_22C26E314();
  if (v2)
  {

    return;
  }

  v8 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v8 < -999)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v9 = 0;
  v10 = v8 / 500 + 1;
  while (v10 != v9)
  {
    if ((v10 & ~(v10 >> 63)) == v9)
    {
      __break(1u);
      goto LABEL_11;
    }

    v11 = MEMORY[0x2318ACA20]();
    sub_22BF5C0A0(v3, a1, 500, v9++, &v14, &v13, v5, &v12);
    objc_autoreleasePoolPop(v11);
  }
}

void sub_22BF5C0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v71 = a7;
  v62 = a6;
  v64 = a5;
  v61 = sub_22C272CA4();
  v13 = *(v61 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v61);
  v60 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v54 - v18;
  MEMORY[0x28223BE20](v17);
  v58 = &v54 - v19;
  v79 = type metadata accessor for ToolboxDatabasePayload(0);
  v20 = *(*(v79 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v79);
  v72 = (&v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v73 = &v54 - v23;
  v24 = sub_22BE5CE4C(&qword_27D90B6D0, &unk_22C28EBA0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v63 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v54 - v28;
  v30 = sub_22C26E504();
  v74 = *(v30 - 8);
  v75 = v30;
  v31 = *(v74 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a4 * a3) >> 64 == (a4 * a3) >> 63)
  {
    v65 = v29;
    v29 = *(a1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
    v34 = sub_22C26E3B4();
    if (v8)
    {
      *a8 = v8;
      return;
    }

    v35 = 0;
    v36 = *(v34 + 16);
    v69 = v33;
    v70 = v36;
    v67 = v74 + 16;
    v68 = (v74 + 8);
    v57 = (v13 + 32);
    v56 = (v13 + 16);
    v55 = (v13 + 8);
    v66 = xmmword_22C28E6A0;
    v33 = &qword_27D90B6D0;
    v37 = v63;
    v38 = v65;
    while (1)
    {
      a1 = v75;
      if (v70 == v35)
      {

        return;
      }

      if (v35 >= *(v34 + 16))
      {
        break;
      }

      v39 = v33;
      v40 = v34;
      v41 = v69;
      (*(v74 + 16))(v69, v34 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v35, v75);
      *v78 = v66;
      v42 = sub_22BE19DC4(v38, 1, 1, v79);
      v43 = MEMORY[0x2318ACA20](v42);
      sub_22BF5C72C(v41, v78);
      (*v68)(v41, a1);
      objc_autoreleasePoolPop(v43);
      v29 = MEMORY[0x2318ACA20]();
      sub_22BF5C8A4(v78, v38);
      objc_autoreleasePoolPop(v29);
      v76 = MEMORY[0x2318ACA20]();
      v33 = v39;
      sub_22BE22868();
      if (sub_22BE1AEA8(v37, 1, v79) == 1)
      {
        sub_22BE233E8(v37, v39, &unk_22C28EBA0);
      }

      else
      {
        sub_22BF68168();
        sub_22BF6805C();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v50 = v58;
            v51 = v61;
            (*v57)(v58, v72, v61);
            (*v56)(v60, v50, v51);
            v52 = v59;
            sub_22C1A7C40();
            v29 = *v55;
            (*v55)(v52, v51);
            v53 = v51;
            v37 = v63;
            (v29)(v50, v53);
          }

          else
          {
            v29 = v64;
            sub_22C1A7B60(v77, *v72, v72[1], v45, v46, v47, v48, v49, v54, v55);
          }

          sub_22BF680B4();
          v38 = v65;
        }

        else
        {
          v29 = v64;
          sub_22C1A7B60(v77, *v72, v72[1], v45, v46, v47, v48, v49, v54, v55);
          v38 = v65;

          sub_22BF680B4();
        }

        v33 = v39;
      }

      objc_autoreleasePoolPop(v76);
      sub_22BE233E8(v38, v33, &unk_22C28EBA0);
      sub_22BF158B4(v78[0], v78[1]);
      ++v35;
      v34 = v40;
    }

    __break(1u);
  }

  __break(1u);
  (*v68)(v33, a1);
  objc_autoreleasePoolPop(v29);
  __break(1u);
}

uint64_t sub_22BF5C72C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22C2720A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C26E4F4();
  if (v9 >> 60 == 15)
  {
    sub_22C271AD4();
    v10 = sub_22C272084();
    v11 = sub_22C2737A4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22BE15000, v10, v11, "ANN search for for 1P apps or protocols did not return a payload", v12, 2u);
      MEMORY[0x2318AD180](v12, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v14 = *a2;
    v15 = a2[1];
    *a2 = v8;
    a2[1] = v9;
    return sub_22BF158B4(v14, v15);
  }
}

uint64_t sub_22BF5C8A4(uint64_t *a1, uint64_t a2)
{
  v24 = sub_22C2720A4();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90B6D0, &unk_22C28EBA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for ToolboxDatabasePayload(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = a1[1];
  if (v15 >> 60 != 15)
  {
    v23 = a2;
    v16 = *a1;
    sub_22BE29D7C(*a1, v15);
    if (qword_281079BD8 != -1)
    {
      swift_once();
    }

    sub_22BE29F88(&qword_281079998, type metadata accessor for ToolboxDatabasePayload);
    sub_22C26DB54();
    if (!v2)
    {
      sub_22BF158B4(v16, v15);
      sub_22BE19DC4(v12, 0, 1, v13);
      sub_22BF68168();
      v21 = v23;
      sub_22BE233E8(v23, &qword_27D90B6D0, &unk_22C28EBA0);
      sub_22BF68168();
      return sub_22BE19DC4(v21, 0, 1, v13);
    }

    sub_22BF158B4(v16, v15);
    sub_22BE19DC4(v12, 1, 1, v13);
    sub_22BE233E8(v12, &qword_27D90B6D0, &unk_22C28EBA0);
  }

  sub_22C271AD4();
  v17 = sub_22C272084();
  v18 = sub_22C2737A4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_22BE15000, v17, v18, "Payload from ANN search for 1P apps or protocols could not be decoded", v19, 2u);
    MEMORY[0x2318AD180](v19, -1, -1);
  }

  return (*(v5 + 8))(v8, v24);
}

uint64_t sub_22BF5CC1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    v7 = v5;
    v11 = result;
    sub_22C272C34();
    sub_22C272C24();
    v12 = sub_22C2721A4();

    if (!v6)
    {
      MEMORY[0x28223BE20](result);
      v13[2] = v7;
      v13[3] = v11;
      v13[4] = a4;
      v13[5] = a2;
      v13[6] = a3;
      sub_22BF4421C(sub_22BF68F90, v13, v12);
    }
  }

  return result;
}

void sub_22BF5CD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  v542 = v26;
  v533 = v27;
  v29 = v28;
  v31 = v30;
  v511 = sub_22C272224();
  v32 = sub_22BE179D8(v511);
  v507 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v36);
  sub_22BE19E94();
  sub_22BE18950(v37);
  v509 = sub_22C2720A4();
  v38 = sub_22BE179D8(v509);
  v508 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE17A44();
  sub_22BE190A8(v42);
  v515 = sub_22BE5CE4C(&qword_27D90B770, &qword_22C28ED50);
  sub_22BE18000(v515);
  v44 = *(v43 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE1A174();
  sub_22BE190A8(v46);
  v47 = sub_22BE5CE4C(&qword_27D90B778, &qword_22C28ED58);
  v48 = sub_22BE19448(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v51);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v52);
  sub_22BE19E94();
  sub_22BE18950(v53);
  v529 = sub_22C272A94();
  v54 = sub_22BE179D8(v529);
  v524 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v58);
  sub_22BE19E94();
  sub_22BE190A8(v59);
  v518 = sub_22BE5CE4C(&qword_27D90B780, &qword_22C28ED60);
  sub_22BE18000(v518);
  v61 = *(v60 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v62);
  sub_22BE1A174();
  sub_22BE190A8(v63);
  v64 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  v65 = sub_22BE19448(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v68);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v69);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v70);
  sub_22BE19E94();
  sub_22BE190A8(v71);
  v72 = sub_22BE5CE4C(&qword_27D90B788, &qword_22C28ED68);
  v73 = sub_22BE19448(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v76);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v77);
  sub_22BE19E94();
  sub_22BE18950(v78);
  v526 = sub_22C272A14();
  v79 = sub_22BE179D8(v526);
  v528 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v83);
  sub_22BE19E94();
  sub_22BE18950(v84);
  v85 = sub_22C26E4C4();
  v86 = sub_22BE179D8(v85);
  v537 = v87;
  v538 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v86);
  sub_22BE17A44();
  v536 = v90;
  sub_22BE183BC();
  v544 = sub_22C272A74();
  v91 = sub_22BE179D8(v544);
  v541 = v92;
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v91);
  sub_22BE17B98();
  v535 = v95;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v96);
  sub_22BE19E94();
  v540 = v97;
  sub_22BE183BC();
  v543 = sub_22C272AC4();
  v98 = sub_22BE179D8(v543);
  v545 = v99;
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v98);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v102);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v103);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v104);
  sub_22BE19490();
  v534 = v105;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v106);
  sub_22BE19E94();
  v539 = v107;
  sub_22BE183BC();
  v546 = sub_22C26E4D4();
  v108 = sub_22BE179D8(v546);
  v548 = v109;
  v111 = *(v110 + 64);
  MEMORY[0x28223BE20](v108);
  sub_22BE183AC();
  sub_22BE2017C();
  v113 = MEMORY[0x28223BE20](v112);
  v115 = &v490 - v114;
  MEMORY[0x28223BE20](v113);
  v117 = &v490 - v116;
  v118 = sub_22C26E494();
  v119 = sub_22BE179D8(v118);
  v547 = v120;
  v122 = *(v121 + 64);
  MEMORY[0x28223BE20](v119);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v123);
  v125 = &v490 - v124;
  v550 = *v29;
  v126 = v31;
  sub_22BF4DCB4();
  if (v21)
  {
    goto LABEL_62;
  }

  v497 = v23;
  v494 = v22;
  v498 = v20;
  v505 = v117;
  v127 = v548;
  v503 = v125;
  v504 = v115;
  v530 = v118;
  v128 = a10;
  if ((a10 & 0xFF00) == 0x200)
  {
    goto LABEL_62;
  }

  v501 = 0;
  sub_22BE29F88(&qword_28107F310, MEMORY[0x277D78248]);
  v129 = sub_22C272E84();
  v502 = v126;
  v490 = sub_22C2721D4();
  v492 = v130;
  sub_22BE28C80(&v530);
  sub_22C26E484();
  v491 = v128;
  v131 = v505;
  *v505 = v128;
  v132 = *(v127 + 104);
  HIDWORD(v493) = *MEMORY[0x277D78290];
  v500 = v127 + 104;
  v496 = v132;
  v132(v131);
  v133 = *(v127 + 32);
  v134 = sub_22BE200D4();
  v548 = v127 + 32;
  v499 = v135;
  v135(v134);
  swift_isUniquelyReferenced_nonNull_native();
  *&v550 = v129;
  v136 = sub_22BE25D0C();
  sub_22BE62DF8(v136, v137, v138, v139, v140, v141, v142, v143, v490, v491, v492, v493);
  v495 = v550;
  v144 = *(v547 + 8);
  v145 = sub_22BE191C0();
  v547 = v146;
  (v144)(v145);
  v147 = v539;
  v148 = sub_22C272154();
  v149 = v540;
  MEMORY[0x2318AB1A0](v148);
  v151 = v545 + 8;
  v150 = *(v545 + 8);
  (v150)(v147, v543);
  v152 = v541;
  LODWORD(v147) = (*(v541 + 11))(v149, v544);
  v153 = *MEMORY[0x277D730E0];
  v154 = *(v152 + 1);
  v155 = sub_22BF6AC14();
  v157 = v156;
  (v156)(v155);
  v549 = v144;
  if (v147 == v153)
  {
    sub_22BE3C6E0(&v524);
    sub_22C26E484();
    v158 = sub_22C272154();
    v159 = v535;
    MEMORY[0x2318AB1A0](v158);
    v160 = sub_22BE1A6BC();
    v150(v160);
    v161 = v501;
    v162 = sub_22C272A64();
    v501 = v161;
    if (v161)
    {

      v157(v159, v544);
      sub_22BE1AF50();
      v549();

      goto LABEL_62;
    }

    v164 = v162;
    v165 = v163;
    v541 = v150;
    v545 = v151;
    v157(v159, v544);
    v166 = v494;
    *v494 = v164;
    v166[1] = v165;
    v167 = *MEMORY[0x277D78288];
    sub_22BE2C69C();
    v168();
    sub_22BE1B328();
    sub_22BE41EE0();
    v169();
    v170 = v495;
    swift_isUniquelyReferenced_nonNull_native();
    *&v550 = v170;
    v171 = sub_22BE29454();
    sub_22BE62DF8(v171, v172, v173, v174, v175, v176, v177, v178, v490, v491, v492, v493);
    v495 = v550;
    sub_22BE1AF50();
    v549();
  }

  else
  {
    v541 = v150;
    v545 = v151;
  }

  v179 = v498[24];
  sub_22BE26950(v498 + 20, v498[23]);
  v180 = v179 + 24;
  v181 = *(v179 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v551 = AssociatedTypeWitness;
  sub_22BE1AB74();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v552 = AssociatedConformanceWitness;
  sub_22BE62524(&v550);
  sub_22BE36674();
  (v181)();
  v185 = v536;
  v184 = v537;
  *v536 = 0;
  v185[1] = 0;
  (*(v184 + 104))(v185, *MEMORY[0x277D78268], v538);
  sub_22BE29E4C(&v530);
  sub_22C26E474();
  v186 = *(AssociatedConformanceWitness + 8);
  sub_22BE28C80(v532);
  v187(AssociatedTypeWitness, AssociatedConformanceWitness);
  v188 = sub_22BE25D0C();
  v189 = v546;
  v190 = v499;
  v499(v188);
  v191 = v495;
  swift_isUniquelyReferenced_nonNull_native();
  sub_22BE412E4();
  v192 = sub_22BE22DF4();
  sub_22BE62DF8(v192, v193, v194, v195, v196, v197, v198, v199, v490, v491, v492, v493);
  v200 = sub_22BE2B820();
  v201(v200);
  if (v542)
  {

    sub_22BE23CD0();
    sub_22C26E484();
    *v181 = 3;
    v202 = sub_22BE1A8E8();
    v203 = v496;
    v496(v202);
    v204 = sub_22BE25D0C();
    v190(v204);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE48DCC();
    v205 = sub_22BE22DF4();
    sub_22BE62DF8(v205, v206, v207, v208, v209, v210, v211, v212, v490, v491, v492, v493);
    v213 = sub_22BE2B820();
    v214(v213);
    sub_22BF6AA58();
    sub_22C26E484();
    *v181 = 0;
    v215 = sub_22BE1A8E8();
    v203(v215);
    v216 = sub_22BE25D0C();
    v190(v216);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE412E4();
    v217 = sub_22BE22DF4();
    sub_22BE62DF8(v217, v218, v219, v220, v221, v222, v223, v224, v490, v491, v492, v493);
    v225 = v549;
    (v549)(v180, v530);
    v226 = v542;

    sub_22C26E484();
    *v181 = v533;
    *(v181 + 8) = v226;
    v227 = *MEMORY[0x277D78288];
    sub_22BE2C69C();
    v228();
    sub_22BE25D0C();
    sub_22BE290EC();
    v229();
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE412E4();
    v230 = sub_22BE22DF4();
    sub_22BE62DF8(v230, v231, v232, v233, v234, v235, v236, v237, v490, v491, v492, v493);
    v238 = sub_22BE33BE8();
    (v225)(v238);
LABEL_61:
    sub_22BE26B64(&v550);
    goto LABEL_62;
  }

  if ((v491 & 0x100) != 0)
  {
    sub_22BE23CD0();
    sub_22C26E484();
    v259 = v505;
    *v505 = 4;
    v260 = v496;
    (v496)(v259, HIDWORD(v493), v189);
    v261 = sub_22BE36658();
    v499(v261);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE48DCC();
    v262 = sub_22BE22DF4();
    sub_22BE62DF8(v262, v263, v264, v265, v266, v267, v268, v269, v490, v491, v492, v493);
    v270 = sub_22BE2B820();
    v271(v270);
    sub_22C26E484();
    v272 = v492;
    *v259 = v490;
    v259[1] = v272;
    v260(v259, *MEMORY[0x277D78288], v189);
    sub_22BE36658();
    sub_22BE290EC();
    v273();
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE48DCC();
    v274 = sub_22BE22DF4();
    sub_22BE62DF8(v274, v275, v276, v277, v278, v279, v280, v281, v490, v491, v492, v493);
    v282 = sub_22BE2B820();
    v283(v282);
    goto LABEL_61;
  }

  v544 = v191;

  sub_22BF6AA4C();
  sub_22C272154();
  sub_22BE28C80(&a15);
  sub_22C272A34();
  v239 = v543;
  sub_22BE406D0();
  v240();
  v241 = v528;
  v242 = *(v528 + 104);
  v243 = v532[0];
  LODWORD(v542) = *MEMORY[0x277D730B0];
  v244 = v526;
  v539 = (v528 + 104);
  v540 = v242;
  v242(v532[0]);
  v245 = sub_22C272A04();
  v246 = *(v241 + 8);
  v247 = sub_22BE22DF4();
  v246(v247);
  v248 = sub_22BE191C0();
  v538 = v246;
  v246(v248);
  if ((v245 & 1) == 0)
  {
    sub_22BE1B754(&v548);
    sub_22C272194();
    sub_22BE1AB5C(v243, 1, v239);
    if (v294)
    {
      sub_22BE233E8(v243, &unk_27D906F38, qword_22C274D30);
      v285 = 1;
      v286 = v519;
      v239 = v523;
    }

    else
    {
      sub_22BE3C6E0(&v552);
      sub_22C272A34();
      sub_22BE200D4();
      sub_22BE406D0();
      v284();
      v285 = 0;
      v286 = v519;
    }

    v287 = v522;
    v288 = v518;
    sub_22BE19DC4(v239, v285, 1, v244);
    v540(v287, v542, v244);
    sub_22BE187DC();
    sub_22BE19DC4(v289, v290, v291, v244);
    v243 = *(v288 + 48);
    sub_22BE426E8();
    sub_22BE22868();
    sub_22BE22868();
    sub_22BE1AB5C(v286, 1, v244);
    if (v294)
    {
      v292 = sub_22BE19454();
      sub_22BE233E8(v292, v293, &qword_22C28ED68);
      sub_22BE233E8(v239, &qword_27D90B788, &qword_22C28ED68);
      sub_22BE1AB5C(v286 + v243, 1, v244);
      if (v294)
      {
        sub_22BE233E8(v286, &qword_27D90B788, &qword_22C28ED68);
        sub_22BE3D694();
        v239 = v543;
        goto LABEL_12;
      }
    }

    else
    {
      sub_22BE22868();
      sub_22BE1AB5C(v286 + v243, 1, v244);
      if (!v294)
      {
        v430 = v531;
        (*(v528 + 32))(v531, v286 + v243, v244);
        sub_22BE23538();
        sub_22BE29F88(v431, v432);
        sub_22BE22B1C();
        v433 = sub_22C272FD4();
        v434 = v538;
        (v538)(v430, v244);
        v243 = &qword_22C28ED68;
        sub_22BE233E8(v522, &qword_27D90B788, &qword_22C28ED68);
        sub_22BE233E8(v523, &qword_27D90B788, &qword_22C28ED68);
        v435 = sub_22BE33B3C();
        v434(v435);
        v436 = v430;
        sub_22BE233E8(v286, &qword_27D90B788, &qword_22C28ED68);
        sub_22BE3D694();
        v302 = v532[0];
        v239 = v543;
        if (v433)
        {
          goto LABEL_12;
        }

LABEL_30:
        sub_22BE1B754(&a17);
        sub_22C272154();
        sub_22C272A34();
        v303 = sub_22BE1B328();
        v304 = v545;
        v305 = v541;
        v541(v303);
        v540(v302, v542, v244);
        sub_22BE23538();
        sub_22BE29F88(v306, v307);
        sub_22BE27BA4();
        v308 = sub_22C272FD4();
        v309 = sub_22BE191C0();
        v310 = v538;
        v538(v309);
        v311 = sub_22BE33B3C();
        v310(v311);
        if (v308)
        {
          goto LABEL_61;
        }

        sub_22BE23CD0();
        sub_22BE204A4(&v530);
        sub_22C26E484();
        v545 = v304;
        v541 = v305;
        v312 = v505;
        *v505 = 1;
        sub_22BE1A8E8();
        sub_22BE20368();
        v313();
        v314 = v504;
        sub_22BE426E8();
        sub_22BE290EC();
        v315();
        swift_isUniquelyReferenced_nonNull_native();
        sub_22BE412E4();
        sub_22BE62DF8(v314, v436, v316, v317, v318, v319, v320, v321, v490, v491, v492, v493);
        sub_22BF6ABD4();
        v322 = v530;
        (v549)(v436, v530);
        sub_22BF6AA6C();
        sub_22C26E484();
        sub_22BE32E58();
        sub_22C272154();
        v323 = sub_22C272A24();
        v325 = v324;
        (v541)(v243, v543);
        *v312 = v323;
        v312[1] = v325;
        v326 = *MEMORY[0x277D78288];
        sub_22BE20368();
        v327();
        sub_22BE426E8();
        v328 = v543;
        sub_22BE290EC();
        v329();
        v330 = v544;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a10 = v330;
        sub_22BE62DF8(v314, v436, isUniquelyReferenced_nonNull_native, v332, v333, v334, v335, v336, v490, v491, v492, v493);
        sub_22BF6ABD4();
        (v549)(v436, v322);
        v337 = v513;
        sub_22C272194();
        v338 = sub_22BE23E90();
        sub_22BE1AB5C(v338, v339, v328);
        if (!v294)
        {
          v340 = sub_22C272A24();
          v342 = v341;
          v343 = sub_22BE36318();
          v344 = v541;
          v541(v343);
          sub_22BE204A4(&v536);
          sub_22C272154();
          v345 = sub_22C272A24();
          v347 = v346;
          v348 = sub_22BE27BA4();
          v344(v348);
          if (v340 != v345 || v342 != v347)
          {
            sub_22BE1B328();
            v350 = sub_22C274014();

            if ((v350 & 1) == 0)
            {
              sub_22BE204A4(&v530);
              sub_22C26E484();
              sub_22BE3C128();
              sub_22BE2C69C();
              v351();
              sub_22BE41EE0();
              v352();
              v353 = v544;
              swift_isUniquelyReferenced_nonNull_native();
              a10 = v353;
              v354 = sub_22BE1B62C();
              sub_22BE62DF8(v354, v355, v356, v357, v358, v359, v360, v361, v490, v491, v492, v493);
              sub_22BE1AF50();
              v549();
              goto LABEL_61;
            }

LABEL_60:

            goto LABEL_61;
          }

LABEL_59:

          goto LABEL_60;
        }

LABEL_52:
        sub_22BE233E8(v337, &unk_27D906F38, qword_22C274D30);
        goto LABEL_61;
      }

      sub_22BE40960();
      sub_22BE233E8(v295, v296, v297);
      sub_22BE40960();
      sub_22BE233E8(v298, v299, v300);
      v301 = sub_22BE33B3C();
      v538(v301);
    }

    sub_22BE233E8(v286, &qword_27D90B780, &qword_22C28ED60);
    sub_22BE3D694();
    v302 = v532[0];
    v436 = v531;
    goto LABEL_30;
  }

LABEL_12:
  sub_22BF6AA4C();
  sub_22C272154();
  sub_22BE29E4C(&a11);
  sub_22C272AB4();
  v249 = sub_22BE260B8();
  v250 = v541;
  v541(v249);
  v251 = *MEMORY[0x277D730F0];
  sub_22BE1B754(&v553);
  v253 = *(v252 + 104);
  v540 = (v252 + 104);
  v542 = v253;
  v253(v525, v251, v529);
  v254 = sub_22C272A04();
  v255 = *(v243 + 8);
  v256 = sub_22BE3EA80();
  v255(v256);
  v257 = sub_22BE180C8();
  v255(v257);
  if (v254)
  {
LABEL_13:
    v258 = 2;
    goto LABEL_50;
  }

  v539 = v255;
  sub_22BE204A4(&v544);
  sub_22BE32E58();
  sub_22C272194();
  sub_22BE1AB5C(v255, 1, v239);
  if (v294)
  {
    sub_22BE233E8(v255, &unk_27D906F38, qword_22C274D30);
    v362 = 1;
    v363 = v517;
    v250 = v516;
  }

  else
  {
    sub_22BE28C80(&v546);
    sub_22C272AB4();
    v250(v255, v239);
    v362 = 0;
    v363 = v517;
  }

  v364 = v520;
  v365 = v515;
  v366 = v529;
  sub_22BE19DC4(v250, v362, 1, v529);
  v542(v364, v251, v366);
  sub_22BE187DC();
  sub_22BE19DC4(v367, v368, v369, v366);
  v370 = *(v365 + 48);
  sub_22BE191C0();
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE1AB5C(v363, 1, v366);
  if (v294)
  {
    sub_22BE233E8(v364, &qword_27D90B778, &qword_22C28ED58);
    sub_22BE233E8(v250, &qword_27D90B778, &qword_22C28ED58);
    sub_22BE1AB5C(v363 + v370, 1, v366);
    if (v294)
    {
      sub_22BE233E8(v363, &qword_27D90B778, &qword_22C28ED58);
      goto LABEL_13;
    }
  }

  else
  {
    v371 = v514;
    sub_22BE22868();
    sub_22BE1AB5C(v363 + v370, 1, v366);
    if (!v372)
    {
      v437 = v363 + v370;
      v438 = v527;
      (*(v524 + 32))(v527, v437, v366);
      sub_22BE29F88(&qword_28106DF08, MEMORY[0x277D73100]);
      v439 = sub_22C272FD4();
      v440 = v539;
      (v539)(v438, v366);
      sub_22BE36674();
      sub_22BE233E8(v441, v442, v443);
      sub_22BE36674();
      sub_22BE233E8(v444, v445, v446);
      v440(v371, v366);
      sub_22BE36674();
      sub_22BE233E8(v447, v448, v449);
      v379 = v542;
      if (v439)
      {
        goto LABEL_13;
      }

      goto LABEL_47;
    }

    sub_22BE36674();
    sub_22BE233E8(v373, v374, v375);
    sub_22BE36674();
    sub_22BE233E8(v376, v377, v378);
    (v539)(v371, v366);
  }

  sub_22BE233E8(v363, &qword_27D90B770, &qword_22C28ED50);
  v379 = v542;
LABEL_47:
  sub_22BF6AA4C();
  sub_22BE32E58();
  sub_22C272154();
  sub_22BE28C80(&a11);
  sub_22C272AB4();
  v380 = v525;
  v381 = v541;
  (v541)(&qword_27D90B778, v543);
  v382 = v529;
  v379(v380, *MEMORY[0x277D730E8], v529);
  v383 = sub_22C272A04();
  v384 = sub_22BE3EA80();
  v385 = v539;
  v539(v384);
  v386 = sub_22BE37B20();
  v385(v386);
  if (v383)
  {
    goto LABEL_49;
  }

  sub_22BE32E58();
  sub_22C272154();
  sub_22C272AB4();
  v381(&qword_27D90B778, v543);
  v542(v380, *MEMORY[0x277D730F8], v382);
  v387 = sub_22C272A04();
  v388 = sub_22BE3EA80();
  v385(v388);
  v389 = sub_22BE37B20();
  v385(v389);
  if (v387)
  {
LABEL_49:
    v258 = 1;
LABEL_50:
    v390 = v503;
    v391 = v505;
    sub_22BE23CD0();
    sub_22BF6AB80();
    sub_22C26E484();
    *v391 = v258;
    sub_22BE20368();
    v392();
    v393 = v504;
    sub_22BE23108();
    sub_22BE41EE0();
    v394();
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE412E4();
    sub_22BE62DF8(v393, v390, v395, v396, v397, v398, v399, v400, v490, v491, v492, v493);
    sub_22BF6ABD4();
    sub_22BE1AF50();
    v401 = v549;
    v549();
    sub_22BF6AA6C();
    sub_22BF6AB80();
    sub_22C26E484();
    sub_22BE28C80(&a17);
    v402 = v502;
    sub_22C272154();
    v403 = sub_22C272A24();
    v405 = v404;
    v406 = v543;
    sub_22BE406D0();
    v407();
    *v391 = v403;
    v391[1] = v405;
    LODWORD(v542) = *MEMORY[0x277D78288];
    sub_22BE20368();
    v408();
    v409 = sub_22BE23108();
    v499(v409);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE48DCC();
    v410 = v402;
    sub_22BE62DF8(v393, v390, v411, v412, v413, v414, v415, v416, v490, v491, v492, v493);
    sub_22BF6ABD4();
    sub_22BE1AF50();
    v401();
    v337 = v521;
    sub_22C272194();
    v417 = sub_22BE23E90();
    sub_22BE1AB5C(v417, v418, v406);
    if (!v294)
    {
      v419 = sub_22C272A24();
      v421 = v420;
      v422 = sub_22BE36318();
      v423 = v541;
      v541(v422);
      sub_22BE351B8(&v543);
      sub_22C272154();
      v424 = sub_22C272A24();
      v426 = v425;
      v427 = sub_22BE2BA80();
      v423(v427);
      if (v419 != v424 || v421 != v426)
      {
        sub_22BE1B328();
        v429 = sub_22C274014();

        if ((v429 & 1) == 0)
        {
          sub_22BE351B8(&v530);
          sub_22C26E484();
          sub_22BE3C128();
          sub_22BE2C69C();
          v450();
          v451 = v504;
          sub_22BE194F8();
          sub_22BE41EE0();
          v452();
          v453 = v544;
          v454 = swift_isUniquelyReferenced_nonNull_native();
          a10 = v453;
          sub_22BE62DF8(v451, v410, v454, v455, v456, v457, v458, v459, v490, v491, v492, v493);
          sub_22BE1AF50();
          v401();
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      goto LABEL_59;
    }

    goto LABEL_52;
  }

  sub_22BE29E4C(&v539);
  sub_22C271AB4();
  v460 = v507;
  v461 = *(v507 + 16);
  v461(v506, v502, v511);
  v462 = sub_22BE2590C();
  (v461)(v462);
  v463 = sub_22C272084();
  v464 = sub_22C2737A4();
  if (os_log_type_enabled(v463, v464))
  {
    sub_22BE33578();
    v465 = swift_slowAlloc();
    v549 = sub_22BE3CF58();
    a10 = v549;
    *v465 = 136315394;
    v466 = v532[1];
    sub_22C272154();
    sub_22BE28C80(&a11);
    v467 = v466;
    sub_22C272AB4();
    sub_22BE406D0();
    v468();
    sub_22C273074();
    v469 = sub_22BE48A68();
    v470 = *(v460 + 8);
    v471 = v511;
    v470(v469, v511);
    v472 = sub_22BE1B73C();
    sub_22BE61C88(v472, v473, v474);
    sub_22BE48A68();

    *(v465 + 4) = v467;
    *(v465 + 12) = 2080;
    v475 = v510;
    v476 = sub_22C2721D4();
    v478 = v477;
    v470(v475, v471);
    sub_22BE61C88(v476, v478, &a10);
    sub_22BE48A68();

    *(v465 + 14) = v475;
    sub_22BF6AC20();
    _os_log_impl(v479, v480, v481, v482, v483, 0x16u);
    swift_arrayDestroy();
    v484 = sub_22BE19F74();
    MEMORY[0x2318AD180](v484);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();

    sub_22BE1B5D4(&v534);
    v486 = v512;
  }

  else
  {

    v487 = *(v460 + 8);
    v488 = sub_22BE194F8();
    v487(v488);
    v489 = sub_22BE18240();
    v487(v489);
    sub_22BE1B5D4(&v534);
    v486 = v381;
  }

  v485(v486, v509);
  sub_22BE26B64(&v550);
LABEL_62:
  sub_22BE18478();
}