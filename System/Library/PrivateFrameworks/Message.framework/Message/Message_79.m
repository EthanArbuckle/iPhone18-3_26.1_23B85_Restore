uint64_t sub_1B0C98E34@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, char **a7@<X8>)
{
  v84 = a7;
  v13 = sub_1B0E443C8();
  v82 = *(v13 - 8);
  v83 = v13;
  v14 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Message.Data(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v86) = a2;
  v88[16] = a2;
  v89 = a3;
  v90 = a4;
  v20 = a5;
  v91 = a5;
  v92 = a6;
  v85 = a6;
  v87[2] = sub_1B0CA1E38;
  v87[3] = v88;
  swift_retain_n();
  v21 = Message.isEmpty.getter();
  if (v21)
  {
    v84 = &v81;
    v119 = 0;
    MEMORY[0x1EEE9AC00](v21);
    *(&v81 - 48) = 1;
    *(&v81 - 5) = a3;
    *(&v81 - 4) = a4;
    *(&v81 - 3) = &v119;
    *(&v81 - 2) = a5;
    v22 = a5;
    *(&v81 - 1) = v85;
    v23 = a4;
    v24 = swift_allocObject();
    v82 = a3;
    v25 = v24 + 1;
    sub_1B0C835A8(&v120);
    v26 = v129;
    v24[9] = v128;
    v24[10] = v26;
    v24[11] = v130[0];
    *(v24 + 185) = *(v130 + 9);
    v27 = v125;
    v24[5] = v124;
    v24[6] = v27;
    v28 = v127;
    v24[7] = v126;
    v24[8] = v28;
    v29 = v121;
    v24[1] = v120;
    v24[2] = v29;
    v30 = v123;
    v24[3] = v122;
    v24[4] = v30;
    v31 = swift_allocObject();
    v83 = &v81;
    *(v31 + 16) = 2;
    MEMORY[0x1EEE9AC00](v31);
    *(&v81 - 4) = v24;
    *(&v81 - 3) = v32;
    *(&v81 - 2) = sub_1B0C84488;
    *(&v81 - 1) = (&v81 - 8);
    MEMORY[0x1EEE9AC00](v32);
    *(&v81 - 4) = (v24 + 1);
    v33 = MEMORY[0x1E69E7CC0];
    *(&v81 - 3) = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
    *(&v81 - 2) = 0;
    v132 = v33;
    v133 = v86;
    v135 = 0;
    v136 = 0;
    v134 = 0;

    v34 = v137;
    sub_1B0CA286C(sub_1B0C844F4, (&v81 - 6), sub_1B0C8450C, (&v81 - 6), 0, 0);
    if (v34)
    {
    }

    else
    {
      v86 = v22;
      v137 = v31;
      swift_beginAccess();
      if (*(v31 + 16) != 2)
      {
        goto LABEL_11;
      }

      swift_beginAccess();
      v45 = v24[10];
      v46 = v24[8];
      v105 = v24[9];
      v106 = v45;
      v47 = v24[10];
      v107[0] = v24[11];
      *(v107 + 9) = *(v24 + 185);
      v48 = v24[6];
      v49 = v24[4];
      v101 = v24[5];
      v102 = v48;
      v50 = v24[6];
      v51 = v24[8];
      v103 = v24[7];
      v104 = v51;
      v52 = v24[2];
      v97 = *v25;
      v98 = v52;
      v53 = v24[4];
      v55 = *v25;
      v54 = v24[2];
      v99 = v24[3];
      v100 = v53;
      v116 = v105;
      v117 = v47;
      v118[0] = v24[11];
      *(v118 + 9) = *(v24 + 185);
      v112 = v101;
      v113 = v50;
      v114 = v103;
      v115 = v46;
      v108 = v55;
      v109 = v54;
      v110 = v99;
      v111 = v49;
      if (sub_1B03BCF14(&v108) != 1)
      {
        v130[10] = v116;
        v130[11] = v117;
        v131[0] = v118[0];
        *(v131 + 9) = *(v118 + 9);
        v130[6] = v112;
        v130[7] = v113;
        v130[8] = v114;
        v130[9] = v115;
        v130[2] = v108;
        v130[3] = v109;
        v130[4] = v110;
        v130[5] = v111;
        v95[8] = v105;
        v95[9] = v106;
        v96[0] = v107[0];
        *(v96 + 9) = *(v107 + 9);
        v95[4] = v101;
        v95[5] = v102;
        v95[6] = v103;
        v95[7] = v104;
        v95[0] = v97;
        v95[1] = v98;
        v95[2] = v99;
        v95[3] = v100;
        sub_1B0C83634(v95, v93);
        v66 = sub_1B0C84278(1, v82, v23);
        if (v67)
        {
          v68 = (v86)(v66);

          v119 = v68 & 1;
        }

        else
        {
          v68 = v119;
        }

        sub_1B0398EFC(&v97, &qword_1EB6E5F00, &unk_1B0EDE440);
        if (v68)
        {
          v69 = 0;
        }

        else
        {
          v69 = 2;
        }

        v137[16] = v69;
        v70 = v24[10];
        v93[8] = v24[9];
        v93[9] = v70;
        v94[0] = v24[11];
        *(v94 + 9) = *(v24 + 185);
        v71 = v24[6];
        v93[4] = v24[5];
        v93[5] = v71;
        v72 = v24[8];
        v93[6] = v24[7];
        v93[7] = v72;
        v73 = v24[2];
        v93[0] = *v25;
        v93[1] = v73;
        v74 = v24[4];
        v93[2] = v24[3];
        v93[3] = v74;
        v75 = v129;
        v24[9] = v128;
        v24[10] = v75;
        v24[11] = v130[0];
        *(v24 + 185) = *(v130 + 9);
        v76 = v125;
        v24[5] = v124;
        v24[6] = v76;
        v77 = v127;
        v24[7] = v126;
        v24[8] = v77;
        v78 = v121;
        *v25 = v120;
        v24[2] = v78;
        v79 = v123;
        v24[3] = v122;
        v24[4] = v79;
        sub_1B0398EFC(v93, &qword_1EB6E5F00, &unk_1B0EDE440);
      }

      else
      {
LABEL_11:
        swift_beginAccess();
        v56 = v24[10];
        v116 = v24[9];
        v117 = v56;
        v118[0] = v24[11];
        *(v118 + 9) = *(v24 + 185);
        v57 = v24[6];
        v112 = v24[5];
        v113 = v57;
        v58 = v24[8];
        v114 = v24[7];
        v115 = v58;
        v59 = v24[2];
        v108 = *v25;
        v109 = v59;
        v60 = v24[4];
        v110 = v24[3];
        v111 = v60;
        v61 = v129;
        v24[9] = v128;
        v24[10] = v61;
        v24[11] = v130[0];
        *(v24 + 185) = *(v130 + 9);
        v62 = v125;
        v24[5] = v124;
        v24[6] = v62;
        v63 = v127;
        v24[7] = v126;
        v24[8] = v63;
        v64 = v121;
        *v25 = v120;
        v24[2] = v64;
        v65 = v123;
        v24[3] = v122;
        v24[4] = v65;
        sub_1B0398EFC(&v108, &qword_1EB6E5F00, &unk_1B0EDE440);
      }
    }

    goto LABEL_21;
  }

  v35 = v86;
  v36 = a4;
  sub_1B0C934C4(a1, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v42 = *v19;
    v43 = v19[1];

    v44 = v137;
    sub_1B0C9CF04(v42, v43, v35, a3, v36, v20, v85);
    sub_1B0391D50(v42, v43);
    if (v44)
    {
    }

    goto LABEL_21;
  }

  v37 = v81;
  v38 = v82;
  v39 = v83;
  v40 = (*(v82 + 32))(v81, v19, v83);
  MEMORY[0x1EEE9AC00](v40);
  *(&v81 - 4) = v37;
  *(&v81 - 3) = sub_1B0CA1EFC;
  *(&v81 - 2) = v87;
  v41 = v137;
  sub_1B0E44328();
  if (!v41)
  {
    (*(v38 + 8))(v37, v39);
LABEL_21:
  }

  (*(v38 + 8))(v37, v39);
}

uint64_t sub_1B0C9967C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v86 = a7;
  v13 = sub_1B0E443C8();
  v84 = *(v13 - 8);
  v85 = v13;
  v14 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Message.Data(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a2 & 1;
  v91[16] = v20;
  v88 = a6;
  v89 = a3;
  v92 = a3;
  v93 = a4;
  v87 = a5;
  v94 = a5;
  v95 = a6;
  v90[2] = sub_1B0CA1D98;
  v90[3] = v91;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    v21 = sub_1B0CA3C44(0, 0, 0, 0);
    v22 = MEMORY[0x1E69E7CC0];
    v23 = sub_1B0CA3EA4(MEMORY[0x1E69E7CC0], v21);
    if (v23)
    {
      v25 = v23;
      v26 = v24;
      *&v119 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
      sub_1B0CA4364(v25, v26, v20, &v119, v21);

      v27 = v119;
    }

    else
    {

      v27 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
    }

    v37 = v87;
    v36 = v88;
    v38 = swift_allocObject();
    v86 = &v82;
    *(v38 + 16) = v27;
    MEMORY[0x1EEE9AC00](v38);
    *(&v82 - 4) = v89;
    *(&v82 - 3) = a4;
    *(&v82 - 2) = v37;
    *(&v82 - 1) = v36;
    v39 = swift_allocObject();
    v40 = v39 + 1;
    sub_1B0C835A8(&v119);
    v41 = v128;
    v39[9] = v127;
    v39[10] = v41;
    v39[11] = v129[0];
    *(v39 + 185) = *(v129 + 9);
    v42 = v124;
    v39[5] = v123;
    v39[6] = v42;
    v43 = v126;
    v39[7] = v125;
    v39[8] = v43;
    v44 = v120;
    v39[1] = v119;
    v39[2] = v44;
    v45 = v122;
    v39[3] = v121;
    v39[4] = v45;
    v46 = swift_allocObject();
    v85 = &v82;
    *(v46 + 16) = 2;
    v47 = MEMORY[0x1EEE9AC00](v46);
    *(&v82 - 4) = v39;
    *(&v82 - 3) = v47;
    *(&v82 - 2) = sub_1B0C86A10;
    *(&v82 - 1) = (&v82 - 6);
    MEMORY[0x1EEE9AC00](v47);
    *(&v82 - 4) = (v39 + 1);
    *(&v82 - 3) = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
    *(&v82 - 2) = 0;
    v142 = v22;
    v143 = 3;
    v145 = 0;
    v146 = 0;
    v144 = 0;
    v48 = v147;
    sub_1B0CA286C(sub_1B0C844A0, v49, sub_1B0C844C0, (&v82 - 6), sub_1B0C86A08, v38);
    if (v48)
    {
    }

    else
    {
      swift_beginAccess();
      if (*(v46 + 16) != 2)
      {
        goto LABEL_14;
      }

      swift_beginAccess();
      v50 = v39[10];
      v51 = v39[8];
      v105 = v39[9];
      v106 = v50;
      v52 = v39[10];
      v107[0] = v39[11];
      *(v107 + 9) = *(v39 + 185);
      v53 = v39[6];
      v54 = v39[4];
      v101 = v39[5];
      v102 = v53;
      v55 = v39[6];
      v56 = v39[8];
      v103 = v39[7];
      v104 = v56;
      v57 = v39[2];
      v98[0] = *v40;
      v98[1] = v57;
      v58 = v39[4];
      v60 = *v40;
      v59 = v39[2];
      v99 = v39[3];
      v100 = v58;
      v116 = v105;
      v117 = v52;
      v118[0] = v39[11];
      *(v118 + 9) = *(v39 + 185);
      v112 = v101;
      v113 = v55;
      v114 = v103;
      v115 = v51;
      v108 = v60;
      v109 = v59;
      v110 = v99;
      v111 = v54;
      if (sub_1B03BCF14(&v108) != 1)
      {
        v147 = v38;
        v140[8] = v116;
        v140[9] = v117;
        v141[0] = v118[0];
        *(v141 + 9) = *(v118 + 9);
        v140[4] = v112;
        v140[5] = v113;
        v140[6] = v114;
        v140[7] = v115;
        v140[0] = v108;
        v140[1] = v109;
        v140[2] = v110;
        v140[3] = v111;
        sub_1B0CA1DC8(v98, v96);

        sub_1B0CA1DC8(v98, v96);
        sub_1B0C85B6C(v140, v89, a4, v130);
        v135 = v130[4];
        v136 = v130[5];
        v137 = v130[6];
        v138 = v130[7];
        v131 = v130[0];
        v132 = v130[1];
        v133 = v130[2];
        v134 = v130[3];
        if (sub_1B0C8699C(&v131) != 1)
        {
          v139[4] = v135;
          v139[5] = v136;
          v139[6] = v137;
          v139[7] = v138;
          v139[0] = v131;
          v139[1] = v132;
          v139[2] = v133;
          v139[3] = v134;
          v87(v139);
          sub_1B0398EFC(v130, &qword_1EB6E5F30, "nP\b");
        }

        sub_1B0398EFC(v98, &qword_1EB6E5F00, &unk_1B0EDE440);
        *(v46 + 16) = 2;
        v71 = v39[10];
        v96[8] = v39[9];
        v96[9] = v71;
        v97[0] = v39[11];
        *(v97 + 9) = *(v39 + 185);
        v72 = v39[6];
        v96[4] = v39[5];
        v96[5] = v72;
        v73 = v39[8];
        v96[6] = v39[7];
        v96[7] = v73;
        v74 = v39[2];
        v96[0] = *v40;
        v96[1] = v74;
        v75 = v39[4];
        v96[2] = v39[3];
        v96[3] = v75;
        v76 = v128;
        v39[9] = v127;
        v39[10] = v76;
        v39[11] = v129[0];
        *(v39 + 185) = *(v129 + 9);
        v77 = v124;
        v39[5] = v123;
        v39[6] = v77;
        v78 = v126;
        v39[7] = v125;
        v39[8] = v78;
        v79 = v120;
        *v40 = v119;
        v39[2] = v79;
        v80 = v122;
        v39[3] = v121;
        v39[4] = v80;
        sub_1B0398EFC(v96, &qword_1EB6E5F00, &unk_1B0EDE440);
      }

      else
      {
LABEL_14:
        swift_beginAccess();
        v61 = v39[10];
        v116 = v39[9];
        v117 = v61;
        v118[0] = v39[11];
        *(v118 + 9) = *(v39 + 185);
        v62 = v39[6];
        v112 = v39[5];
        v113 = v62;
        v63 = v39[8];
        v114 = v39[7];
        v115 = v63;
        v64 = v39[2];
        v108 = *v40;
        v109 = v64;
        v65 = v39[4];
        v110 = v39[3];
        v111 = v65;
        v66 = v128;
        v39[9] = v127;
        v39[10] = v66;
        v39[11] = v129[0];
        *(v39 + 185) = *(v129 + 9);
        v67 = v124;
        v39[5] = v123;
        v39[6] = v67;
        v68 = v126;
        v39[7] = v125;
        v39[8] = v68;
        v69 = v120;
        *v40 = v119;
        v39[2] = v69;
        v70 = v122;
        v39[3] = v121;
        v39[4] = v70;
        sub_1B0398EFC(&v108, &qword_1EB6E5F00, &unk_1B0EDE440);
      }
    }

    goto LABEL_20;
  }

  sub_1B0C934C4(a1, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v33 = *v19;
    v34 = v19[1];

    v35 = v147;
    sub_1B0C9E60C(v33, v34, v20, v89, a4, v87, v88);
    sub_1B0391D50(v33, v34);
    if (v35)
    {
    }

    goto LABEL_20;
  }

  v28 = v83;
  v29 = v84;
  v30 = v85;
  v31 = (*(v84 + 32))(v83, v19, v85);
  MEMORY[0x1EEE9AC00](v31);
  *(&v82 - 4) = v28;
  *(&v82 - 3) = sub_1B0CA1EFC;
  *(&v82 - 2) = v90;
  v32 = v147;
  sub_1B0E44328();
  if (!v32)
  {
    (*(v29 + 8))(v28, v30);
LABEL_20:
  }

  (*(v29 + 8))(v28, v30);
}

uint64_t sub_1B0C99F70@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void (*a3)(uint64_t *)@<X2>, uint64_t a4@<X3>, void (*a5)(char *, char *)@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a7;
  v50 = a8;
  v14 = sub_1B0E443C8();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Message.Data(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = a2;
  v55[16] = a2;
  v53 = a3;
  v56 = a3;
  v57 = a4;
  v21 = a5;
  v87 = a4;
  v22 = a6;
  v23 = v51;
  v58 = a5;
  v59 = v22;
  v60 = v51;
  v54[2] = sub_1B0CA1D28;
  v54[3] = v55;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    v24 = v52;
    sub_1B0C88870(3u, 0, 0, 0, 0, v23, &v62);
    if (!v24)
    {
      v25 = v69;
      *&v71 = v62;
      BYTE8(v71) = v63;
      v72 = v64;
      v73 = v65;
      *&v74 = v66;
      WORD4(v74) = v67;
      v75 = v68;
      sub_1B0C87794();
      v85[2] = v73;
      v85[3] = v74;
      v86 = v75;
      v85[0] = v71;
      v85[1] = v72;
      sub_1B0C86F90(3u, v49, v21, v22);
      sub_1B0C8880C(v85);
      v32 = *(v25 + 16);
      if (v32)
      {
        v52 = 0;
        v33 = v32 - 1;
        v50 = v25;
        for (i = (v25 + 56); ; i += 88)
        {
          v35 = *(i - 2);
          v36 = *(i - 1);
          v37 = *i;
          v38 = *(i + 1);
          v39 = *(i + 2);
          v40 = *(i + 3);
          v41 = *(i + 4);
          v42 = *(i + 6);
          v43 = *(i + 7);
          v44 = i[40];
          v76[0] = *(i - 3);
          v76[1] = v35;
          v76[2] = v36;
          v77 = v37;
          v78 = v38;
          v79 = v39;
          v80 = v40;
          v81 = v41;
          v82 = v44;
          v83 = v42;
          v84 = v43;
          v62 = v76[0];
          v63 = v35;
          *&v64 = v36;
          BYTE8(v64) = v37;
          *&v65 = v38;
          *(&v65 + 1) = v39;
          v66 = v40;
          v67 = v41;
          LOBYTE(v68) = v44;
          v69 = v42;
          v70 = v43;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0C8926C(v38, v39, v40, v41, v44);
          sub_1B07B47AC(v76, &v61);
          sub_1B07AD030(&v62);
          v53(v76);
          sub_1B07AD030(v76);
          if (!v33)
          {
            break;
          }

          --v33;
        }
      }
    }
  }

  else
  {
    sub_1B0C934C4(a1, v20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v46;
      v27 = v47;
      v28 = v48;
      v29 = (*(v47 + 32))(v46, v20, v48);
      MEMORY[0x1EEE9AC00](v29);
      *(&v46 - 4) = v26;
      *(&v46 - 3) = sub_1B0CA1D5C;
      *(&v46 - 2) = v54;
      sub_1B0E44328();
      (*(v27 + 8))(v26, v28);
    }

    else
    {
      v30 = *v20;
      v31 = v20[1];

      sub_1B0CA01E4(v30, v31, v49, v53, v87, v21, v22, v23);
      sub_1B0391D50(v30, v31);
    }
  }
}

uint64_t sub_1B0C9A3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1B0E443C8();
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Message.Data(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = a2;
  v26 = a3;
  v22 = sub_1B0CA1D0C;
  v23 = &v24;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    sub_1B0C8D8F8(0, 0, 0, 0, a2, a3, a4);
  }

  else
  {
    sub_1B0C934C4(a1, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = v27;
      v17 = (*(v27 + 32))(v11, v15, v8);
      MEMORY[0x1EEE9AC00](v17);
      *&v21[-32] = v11;
      *&v21[-24] = sub_1B0C9B7D0;
      *&v21[-16] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2980, &qword_1B0EDF380);
      sub_1B0E44328();
      (*(v16 + 8))(v11, v8);
    }

    else
    {
      v18 = *v15;
      v19 = v15[1];

      sub_1B0CA0B0C(v18, v19, a2, a3, a4);
      sub_1B0391D50(v18, v19);
    }
  }
}

uint64_t sub_1B0C9A6A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1B0E443C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Message.Data(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1B0C9B7B4;
  v22 = a2;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    sub_1B0CB9328(0, 0, 0, 0, a2, a3);
LABEL_3:
  }

  sub_1B0C934C4(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = (*(v8 + 32))(v11, v15, v7);
    MEMORY[0x1EEE9AC00](v17);
    *&v20[-32] = v11;
    *&v20[-24] = sub_1B0C9B7D0;
    *&v20[-16] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3D58, &qword_1B0EE0DD0);
    sub_1B0E44328();
    if (!v3)
    {
      (*(v8 + 8))(v11, v7);
      goto LABEL_3;
    }

    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v18 = *v15;
    v19 = v15[1];

    sub_1B0CA0DC0(v18, v19, a2, a3);
    sub_1B0391D50(v18, v19);
    if (!v3)
    {
      goto LABEL_3;
    }
  }
}

uint64_t Message.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for Message.Data(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B0C9A9DC(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2)
{
  v6 = sub_1B0E443C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Message.Data(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (Message.isEmpty.getter())
  {
    a1(&v22, 0, 0);
    if (!v3)
    {
      v15 = v22;
    }
  }

  else
  {
    sub_1B0C934C4(v2, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = (*(v7 + 32))(v10, v14, v6);
      MEMORY[0x1EEE9AC00](v16);
      *(&v21 - 4) = v10;
      *(&v21 - 3) = a1;
      *(&v21 - 2) = a2;
      sub_1B0E44328();
      (*(v7 + 8))(v10, v6);
      if (!v3)
      {
        v15 = v22;
      }
    }

    else
    {
      v17 = *v14;
      v18 = v14[1];
      v19 = sub_1B0C9B660(a1, a2, *v14, v18);
      sub_1B0391D50(v17, v18);
      if (!v3)
      {
        LOBYTE(v22) = v19 & 1;
        v15 = v19 & 1;
      }
    }
  }

  return v15 & 1;
}

uint64_t Message.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B0E443C8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for Message.Data(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B0C9AD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v42 = a4;
  v47 = *MEMORY[0x1E69E9840];
  v8 = sub_1B0E443C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Message.Data(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = a1;
  v46 = a2;
  result = Message.isEmpty.getter();
  if (result)
  {
    v18 = a1 == 0;
LABEL_56:
    *v42 = v18;
    v39 = *MEMORY[0x1E69E9840];
    return result;
  }

  sub_1B0C934C4(a3, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v18 = 0;
    v21 = *v16;
    v20 = v16[1];
    v22 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v22 == 2)
      {
        v29 = *(v21 + 16);
        v41 = *(v21 + 24);
        v30 = sub_1B0E42A98();
        if (v30)
        {
          v31 = v30;
          v32 = sub_1B0E42AC8();
          if (__OFSUB__(v29, v32))
          {
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          v23 = v29 - v32 + v31;
        }

        else
        {
          v23 = 0;
        }

        v33 = v41 - v29;
        if (!__OFSUB__(v41, v29))
        {
          v34 = sub_1B0E42AB8();
          v35 = a2 - a1;
          if (!a1)
          {
            v35 = 0;
          }

          if (!v23)
          {
            goto LABEL_46;
          }

          v18 = 0;
          if (v34 >= v33)
          {
            v36 = v33;
          }

          else
          {
            v36 = v34;
          }

          if (a1 && v35 == v36)
          {
            goto LABEL_48;
          }

          goto LABEL_54;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else if (v22)
    {
      v23 = (v21 >> 32) - v21;
      if (v21 >> 32 >= v21)
      {
        v24 = sub_1B0E42A98();
        if (!v24)
        {
          goto LABEL_12;
        }

        v25 = sub_1B0E42AC8();
        if (!__OFSUB__(v21, v25))
        {
          v24 += v21 - v25;
LABEL_12:
          v26 = sub_1B0E42AB8();
          v27 = a2 - a1;
          if (!a1)
          {
            v27 = 0;
          }

          if (v24)
          {
            v18 = 0;
            if (v26 >= v23)
            {
              v28 = (v21 >> 32) - v21;
            }

            else
            {
              v28 = v26;
            }

            if (!a1 || v27 != v28)
            {
LABEL_44:
              while (v4)
              {

                sub_1B0391D50(v21, v20);
                __break(1u);
LABEL_46:
                v18 = v35 == 0;
                if (a1 && !v35)
                {
LABEL_48:
                  if (v23)
                  {
                    v38 = v23 == a1;
                  }

                  else
                  {
                    v38 = 0;
                  }

                  v18 = v38;
                }

LABEL_54:
                ;
              }

              goto LABEL_55;
            }
          }

          else
          {
            v18 = v27 == 0;
            if (!a1 || v27)
            {
              goto LABEL_44;
            }
          }

          if (v24)
          {
            v37 = v24 == a1;
          }

          else
          {
            v37 = 0;
          }

          v18 = v37;
          goto LABEL_44;
        }

LABEL_60:
        __break(1u);
      }

      __break(1u);
      goto LABEL_58;
    }

LABEL_55:
    result = sub_1B0391D50(v21, v20);
    goto LABEL_56;
  }

  v19 = (*(v9 + 32))(v12, v16, v8);
  MEMORY[0x1EEE9AC00](v19);
  *(&v40 - 4) = v12;
  *(&v40 - 3) = sub_1B0CA1C40;
  *(&v40 - 2) = &v44;
  sub_1B0E44328();
  if (!v4)
  {
    result = (*(v9 + 8))(v12, v8);
    v18 = v43;
    goto LABEL_56;
  }

  result = (*(v9 + 8))(v12, v8);
  __break(1u);
  return result;
}

BOOL Message.isEmpty.getter()
{
  v1 = v0;
  v2 = sub_1B0E443C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Message.Data(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0C934C4(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1B075CEE0();
    sub_1B0E45668();
    sub_1B0E456C8();
    (*(v3 + 8))(v6, v2);
    return v20[1] == v20[0];
  }

  else
  {
    v13 = *v10;
    v14 = v10[1];
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 == 2)
      {
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        sub_1B0391D50(v13, v14);
        return v18 == v17;
      }

      else
      {
        sub_1B0391D50(v13, v14);
        return 1;
      }
    }

    else if (v15)
    {
      v19 = *v10;
      sub_1B0391D50(v13, v14);
      return v19 == v19 >> 32;
    }

    else
    {
      v16 = v10[1];
      sub_1B0391D50(v13, v14);
      return BYTE6(v16) == 0;
    }
  }
}

unint64_t Message.count.getter()
{
  v1 = v0;
  v2 = sub_1B0E443C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Message.Data(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0C934C4(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    v11 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    (*(v3 + 8))(v6, v2);
    return v11;
  }

  result = *v10;
  v13 = v10[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = v10[1];
      sub_1B0391D50(result, v13);
      return BYTE6(v15);
    }

    goto LABEL_11;
  }

  if (v14 != 2)
  {
    sub_1B0391D50(result, v13);
    return 0;
  }

  v17 = *(result + 16);
  v16 = *(result + 24);
  sub_1B0391D50(result, v13);
  result = v16 - v17;
  if (__OFSUB__(v16, v17))
  {
    __break(1u);
LABEL_11:
    v18 = HIDWORD(result);
    v19 = result;
    result = sub_1B0391D50(result, v13);
    if (__OFSUB__(v18, v19))
    {
      __break(1u);
    }

    else
    {
      return v18 - v19;
    }
  }

  return result;
}

uint64_t sub_1B0C9B588()
{
  result = type metadata accessor for Message.Data(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0C9B5F4()
{
  result = sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0C9B660(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_1B0CA0F78(v8, v9, a1);
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

uint64_t sub_1B0C9B80C(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7)
{
  v246 = a3;
  v322 = *MEMORY[0x1E69E9840];
  v14 = a2 >> 62;
  swift_retain_n();
  v247 = v7;
  v248 = a5;
  v244 = a7;
  v245 = a4;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      memset(v250, 0, 14);

      v243 = &v238;
      v249 = 0;
      MEMORY[0x1EEE9AC00](v75);
      v232 = 0;
      v233 = a4;
      v234 = a5;
      v235 = &v249;
      v236 = a6;
      v237 = a7;
      v17 = swift_allocObject();
      sub_1B0C835A8(&v295);
      v76 = v304;
      v17[9] = v303;
      v17[10] = v76;
      v17[11] = v305[0];
      *(v17 + 185) = *(v305 + 9);
      v77 = v300;
      v17[5] = v299;
      v17[6] = v77;
      v78 = v302;
      v17[7] = v301;
      v17[8] = v78;
      v79 = v296;
      v17[1] = v295;
      v17[2] = v79;
      v80 = v298;
      v17[3] = v297;
      v17[4] = v80;
      v81 = swift_allocObject();
      v241 = v231;
      *(v81 + 16) = 2;
      v82 = (v81 + 16);
      MEMORY[0x1EEE9AC00](v81);
      v227 = v17;
      v228 = v83;
      v242 = v83;
      v229 = sub_1B0C84510;
      v230 = v231;
      MEMORY[0x1EEE9AC00](v83);
      v223 = v17 + 1;
      v224 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
      v225 = 0;
      swift_retain_n();
      v27 = v247;
      sub_1B0CA33D0(v246, 0, 0, v250, v250);
      if (!v27)
      {
        v18 = v17 + 1;
        v32 = v17 + 1;
        v317 = MEMORY[0x1E69E7CC0];
        v318 = v84;
        v319 = v85;
        v320 = v86;
        v321 = v87;
        sub_1B0CA286C(sub_1B0C844F4, v226, sub_1B0C8450C, v222, 0, 0);
        swift_beginAccess();
        if (*v82 != 2)
        {
          goto LABEL_49;
        }

        swift_beginAccess();
        v107 = v17[10];
        v108 = v17[8];
        v281 = v17[9];
        v282 = v107;
        v109 = v17[10];
        v283[0] = v17[11];
        *(v283 + 9) = *(v17 + 185);
        v110 = v17[6];
        v111 = v17[4];
        v277 = v17[5];
        v278 = v110;
        v112 = v17[6];
        v113 = v17[8];
        v279 = v17[7];
        v280 = v113;
        v114 = v17[2];
        v273 = *v18;
        v274 = v114;
        v115 = v17[4];
        v117 = *v18;
        v116 = v17[2];
        v275 = v17[3];
        v276 = v115;
        v292 = v281;
        v293 = v109;
        v294[0] = v17[11];
        *(v294 + 9) = *(v17 + 185);
        v288 = v277;
        v289 = v112;
        v290 = v279;
        v291 = v108;
        v284 = v117;
        v285 = v116;
        v286 = v275;
        v287 = v111;
        if (sub_1B03BCF14(&v284) == 1)
        {
          goto LABEL_49;
        }

        v314 = v292;
        v315 = v293;
        v316[0] = v294[0];
        *(v316 + 9) = *(v294 + 9);
        v310 = v288;
        v311 = v289;
        v312 = v290;
        v313 = v291;
        v306 = v284;
        v307 = v285;
        v308 = v286;
        v309 = v287;
        v270 = v281;
        v271 = v282;
        v272[0] = v283[0];
        *(v272 + 9) = *(v283 + 9);
        v266 = v277;
        v267 = v278;
        v268 = v279;
        v269 = v280;
        v262 = v273;
        v263 = v274;
        v264 = v275;
        v265 = v276;
        sub_1B0C83634(&v262, &v251);
        v175 = sub_1B0C84278(0, v245, v248);
        if (v176)
        {
          v177 = (a6)(v175);

          v249 = v177 & 1;
        }

        else
        {
          v177 = v249;
        }

        sub_1B0398EFC(&v273, &qword_1EB6E5F00, &unk_1B0EDE440);
        v184 = v17[9];
        v196 = v17[11];
        v260 = v17[10];
        v261[0] = v196;
        *(v261 + 9) = *(v17 + 185);
        v197 = v17[6];
        v255 = v17[5];
        v256 = v197;
        v187 = v17[8];
        v257 = v17[7];
        if (v177)
        {
          v188 = 0;
        }

        else
        {
          v188 = 2;
        }

        goto LABEL_70;
      }

      goto LABEL_30;
    }

    v243 = a6;
    v44 = *(a1 + 16);
    a6 = *(a1 + 24);

    v242 = &v238;
    swift_retain_n();
    v45 = sub_1B0E42A98();
    if (v45)
    {
      v46 = v45;
      v47 = sub_1B0E42AC8();
      if (__OFSUB__(v44, v47))
      {
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
      }

      v48 = v44 - v47 + v46;
      v49 = a6 - v44;
      if (!__OFSUB__(a6, v44))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v48 = 0;
      v49 = a6 - v44;
      if (!__OFSUB__(a6, v44))
      {
LABEL_11:
        v50 = sub_1B0E42AB8();
        if (v50 >= v49)
        {
          v51 = v49;
        }

        else
        {
          v51 = v50;
        }

        if (v48)
        {
          v52 = v51;
        }

        else
        {
          v52 = 0;
        }

        if ((v52 & 0x8000000000000000) == 0)
        {
          v241 = &v238;
          v53 = v51 + v48;
          if (!v48)
          {
            v53 = 0;
          }

          v238 = v53;
          LOBYTE(v250[0]) = 0;
          MEMORY[0x1EEE9AC00](v50);
          v232 = 0;
          v233 = v245;
          v234 = a5;
          v235 = v250;
          v236 = v243;
          v237 = v244;
          v54 = swift_allocObject();
          sub_1B0C835A8(&v295);
          v55 = v304;
          v54[9] = v303;
          v54[10] = v55;
          v54[11] = v305[0];
          *(v54 + 185) = *(v305 + 9);
          v56 = v300;
          v54[5] = v299;
          v54[6] = v56;
          v57 = v302;
          v54[7] = v301;
          v54[8] = v57;
          v58 = v296;
          v54[1] = v295;
          v54[2] = v58;
          v59 = v298;
          v54[3] = v297;
          v54[4] = v59;
          v60 = swift_allocObject();
          v239 = v231;
          *(v60 + 16) = 2;
          v61 = (v60 + 16);
          MEMORY[0x1EEE9AC00](v60);
          v227 = v54;
          v228 = v62;
          v240 = v62;
          v229 = sub_1B0C84510;
          v230 = v231;
          MEMORY[0x1EEE9AC00](v62);
          v223 = v54 + 1;
          v224 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
          v225 = 0;

          v63 = v247;
          sub_1B0CA33D0(v246, 0, v52, v48, v238);
          if (!v63)
          {
            v68 = v54 + 1;
            v69 = v245;
            v317 = MEMORY[0x1E69E7CC0];
            v318 = v64;
            v319 = v65;
            v320 = v66;
            v321 = v67;
            sub_1B0CA286C(sub_1B0C844F4, v226, sub_1B0C8450C, v222, 0, 0);
            swift_beginAccess();
            if (*v61 != 2)
            {
              goto LABEL_54;
            }

            swift_beginAccess();
            v130 = v54[10];
            v131 = v54[8];
            v281 = v54[9];
            v282 = v130;
            v132 = v54[10];
            v283[0] = v54[11];
            *(v283 + 9) = *(v54 + 185);
            v133 = v54[6];
            v134 = v54[4];
            v277 = v54[5];
            v278 = v133;
            v135 = v54[6];
            v136 = v54[8];
            v279 = v54[7];
            v280 = v136;
            v137 = v54[2];
            v273 = *v68;
            v274 = v137;
            v138 = v54[4];
            v140 = *v68;
            v139 = v54[2];
            v275 = v54[3];
            v276 = v138;
            v292 = v281;
            v293 = v132;
            v294[0] = v54[11];
            *(v294 + 9) = *(v54 + 185);
            v288 = v277;
            v289 = v135;
            v290 = v279;
            v291 = v131;
            v284 = v140;
            v285 = v139;
            v286 = v275;
            v287 = v134;
            if (sub_1B03BCF14(&v284) != 1)
            {
              v314 = v292;
              v315 = v293;
              v316[0] = v294[0];
              *(v316 + 9) = *(v294 + 9);
              v310 = v288;
              v311 = v289;
              v312 = v290;
              v313 = v291;
              v306 = v284;
              v307 = v285;
              v308 = v286;
              v309 = v287;
              v270 = v281;
              v271 = v282;
              v272[0] = v283[0];
              *(v272 + 9) = *(v283 + 9);
              v266 = v277;
              v267 = v278;
              v268 = v279;
              v269 = v280;
              v262 = v273;
              v263 = v274;
              v264 = v275;
              v265 = v276;
              sub_1B0C83634(&v262, &v251);
              v178 = sub_1B0C84278(0, v69, v248);
              if (v179)
              {
                v180 = (v243)(v178);

                LOBYTE(v250[0]) = v180 & 1;
              }

              else
              {
                v180 = v250[0];
              }

              sub_1B0398EFC(&v273, &qword_1EB6E5F00, &unk_1B0EDE440);
              v198 = v54[9];
              v199 = v54[11];
              v260 = v54[10];
              v261[0] = v199;
              *(v261 + 9) = *(v54 + 185);
              v200 = v54[6];
              v255 = v54[5];
              v256 = v200;
              v201 = v54[8];
              v257 = v54[7];
              if (v180)
              {
                v202 = 0;
              }

              else
              {
                v202 = 2;
              }

              *(v240 + 16) = v202;
              v258 = v201;
              v259 = v198;
              v203 = v54[2];
              v251 = *v68;
              v252 = v203;
              v204 = v54[4];
              v253 = v54[3];
              v254 = v204;
              v205 = v304;
              v54[9] = v303;
              v54[10] = v205;
              v54[11] = v305[0];
              *(v54 + 185) = *(v305 + 9);
              v206 = v300;
              v54[5] = v299;
              v54[6] = v206;
              v207 = v302;
              v54[7] = v301;
              v54[8] = v207;
              v208 = v296;
              *v68 = v295;
              v54[2] = v208;
              v209 = v298;
              v54[3] = v297;
              v54[4] = v209;
              sub_1B0398EFC(&v251, &qword_1EB6E5F00, &unk_1B0EDE440);
            }

            else
            {
LABEL_54:
              swift_beginAccess();
              v141 = v54[10];
              v314 = v54[9];
              v315 = v141;
              v316[0] = v54[11];
              *(v316 + 9) = *(v54 + 185);
              v142 = v54[6];
              v310 = v54[5];
              v311 = v142;
              v143 = v54[8];
              v312 = v54[7];
              v313 = v143;
              v144 = v54[2];
              v306 = *v68;
              v307 = v144;
              v145 = v54[4];
              v308 = v54[3];
              v309 = v145;
              v146 = v304;
              v54[9] = v303;
              v54[10] = v146;
              v54[11] = v305[0];
              *(v54 + 185) = *(v305 + 9);
              v147 = v300;
              v54[5] = v299;
              v54[6] = v147;
              v148 = v302;
              v54[7] = v301;
              v54[8] = v148;
              v149 = v296;
              *v68 = v295;
              v54[2] = v149;
              v150 = v298;
              v54[3] = v297;
              v54[4] = v150;
              sub_1B0398EFC(&v306, &qword_1EB6E5F00, &unk_1B0EDE440);
            }

            goto LABEL_23;
          }

          goto LABEL_22;
        }

        goto LABEL_88;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!v14)
  {
    v250[0] = a1;
    LOWORD(v250[1]) = a2;
    BYTE2(v250[1]) = BYTE2(a2);
    BYTE3(v250[1]) = BYTE3(a2);
    BYTE4(v250[1]) = BYTE4(a2);
    v15 = BYTE6(a2);
    BYTE5(v250[1]) = BYTE5(a2);

    v243 = &v238;
    v249 = 0;
    MEMORY[0x1EEE9AC00](v16);
    v232 = 0;
    v233 = a4;
    v234 = a5;
    v235 = &v249;
    v236 = a6;
    v237 = a7;
    v17 = swift_allocObject();
    v18 = v17 + 1;
    sub_1B0C835A8(&v295);
    v19 = v304;
    v17[9] = v303;
    v17[10] = v19;
    v17[11] = v305[0];
    *(v17 + 185) = *(v305 + 9);
    v20 = v300;
    v17[5] = v299;
    v17[6] = v20;
    v21 = v302;
    v17[7] = v301;
    v17[8] = v21;
    v22 = v296;
    v17[1] = v295;
    v17[2] = v22;
    v23 = v298;
    v17[3] = v297;
    v17[4] = v23;
    v24 = swift_allocObject();
    v241 = v231;
    *(v24 + 16) = 2;
    v25 = (v24 + 16);
    MEMORY[0x1EEE9AC00](v24);
    v227 = v17;
    v228 = v26;
    v242 = v26;
    v229 = sub_1B0C84510;
    v230 = v231;
    MEMORY[0x1EEE9AC00](v26);
    v223 = v17 + 1;
    v224 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
    v225 = 0;
    swift_retain_n();
    v27 = v247;
    sub_1B0CA33D0(v246, 0, v15, v250, v250 + v15);
    if (!v27)
    {
      v32 = v17 + 1;
      v317 = MEMORY[0x1E69E7CC0];
      v318 = v28;
      v319 = v29;
      v320 = v30;
      v321 = v31;
      sub_1B0CA286C(sub_1B0C844F4, v226, sub_1B0C8450C, v222, 0, 0);
      swift_beginAccess();
      if (*v25 != 2)
      {
        goto LABEL_49;
      }

      swift_beginAccess();
      v33 = v17[10];
      v34 = v17[8];
      v281 = v17[9];
      v282 = v33;
      v35 = v17[10];
      v283[0] = v17[11];
      *(v283 + 9) = *(v17 + 185);
      v36 = v17[6];
      v37 = v17[4];
      v277 = v17[5];
      v278 = v36;
      v38 = v17[6];
      v39 = v17[8];
      v279 = v17[7];
      v280 = v39;
      v40 = v17[2];
      v273 = *v18;
      v274 = v40;
      v41 = v17[4];
      v43 = *v18;
      v42 = v17[2];
      v275 = v17[3];
      v276 = v41;
      v292 = v281;
      v293 = v35;
      v294[0] = v17[11];
      *(v294 + 9) = *(v17 + 185);
      v288 = v277;
      v289 = v38;
      v290 = v279;
      v291 = v34;
      v284 = v43;
      v285 = v42;
      v286 = v275;
      v287 = v37;
      if (sub_1B03BCF14(&v284) == 1)
      {
LABEL_49:
        swift_beginAccess();
        v118 = v17[10];
        v314 = v17[9];
        v315 = v118;
        v316[0] = v17[11];
        *(v316 + 9) = *(v17 + 185);
        v119 = v17[6];
        v310 = v17[5];
        v311 = v119;
        v120 = v17[8];
        v312 = v17[7];
        v313 = v120;
        v121 = v17[2];
        v306 = *v18;
        v307 = v121;
        v122 = v17[4];
        v308 = v17[3];
        v309 = v122;
        v123 = v304;
        v17[9] = v303;
        v17[10] = v123;
        v17[11] = v305[0];
        *(v17 + 185) = *(v305 + 9);
        v124 = v300;
        v17[5] = v299;
        v17[6] = v124;
        v125 = v302;
        v17[7] = v301;
        v17[8] = v125;
        v126 = v296;
        *v18 = v295;
        v17[2] = v126;
        v127 = v298;
        v17[3] = v297;
        v17[4] = v127;
        sub_1B0398EFC(&v306, &qword_1EB6E5F00, &unk_1B0EDE440);

LABEL_50:

        goto LABEL_51;
      }

      v314 = v292;
      v315 = v293;
      v316[0] = v294[0];
      *(v316 + 9) = *(v294 + 9);
      v310 = v288;
      v311 = v289;
      v312 = v290;
      v313 = v291;
      v306 = v284;
      v307 = v285;
      v308 = v286;
      v309 = v287;
      v270 = v281;
      v271 = v282;
      v272[0] = v283[0];
      *(v272 + 9) = *(v283 + 9);
      v266 = v277;
      v267 = v278;
      v268 = v279;
      v269 = v280;
      v262 = v273;
      v263 = v274;
      v264 = v275;
      v265 = v276;
      sub_1B0C83634(&v262, &v251);
      v172 = sub_1B0C84278(0, v245, v248);
      if (v173)
      {
        v174 = (a6)(v172);

        v249 = v174 & 1;
      }

      else
      {
        v174 = v249;
      }

      sub_1B0398EFC(&v273, &qword_1EB6E5F00, &unk_1B0EDE440);
      v184 = v17[9];
      v185 = v17[11];
      v260 = v17[10];
      v261[0] = v185;
      *(v261 + 9) = *(v17 + 185);
      v186 = v17[6];
      v255 = v17[5];
      v256 = v186;
      v187 = v17[8];
      v257 = v17[7];
      if (v174)
      {
        v188 = 0;
      }

      else
      {
        v188 = 2;
      }

LABEL_70:
      *(v242 + 16) = v188;
      v258 = v187;
      v259 = v184;
      v189 = v32[1];
      v251 = *v32;
      v252 = v189;
      v190 = v32[3];
      v253 = v32[2];
      v254 = v190;
      v191 = v304;
      v32[8] = v303;
      v32[9] = v191;
      v32[10] = v305[0];
      *(v32 + 169) = *(v305 + 9);
      v192 = v300;
      v32[4] = v299;
      v32[5] = v192;
      v193 = v302;
      v32[6] = v301;
      v32[7] = v193;
      v194 = v296;
      *v32 = v295;
      v32[1] = v194;
      v195 = v298;
      v32[2] = v297;
      v32[3] = v195;
      sub_1B0398EFC(&v251, &qword_1EB6E5F00, &unk_1B0EDE440);

      goto LABEL_50;
    }

LABEL_30:

    goto LABEL_51;
  }

  v70 = a1;
  v44 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v242 = &v238;
  swift_retain_n();
  v71 = sub_1B0E42A98();
  if (!v71)
  {
LABEL_34:
    v74 = 0;
    goto LABEL_35;
  }

  v72 = v71;
  v73 = sub_1B0E42AC8();
  if (__OFSUB__(v70, v73))
  {
    goto LABEL_91;
  }

  v74 = v70 - v73 + v72;
LABEL_35:
  v88 = sub_1B0E42AB8();
  if (v88 >= v44)
  {
    v89 = v44;
  }

  else
  {
    v89 = v88;
  }

  if (v74)
  {
    v90 = v89;
  }

  else
  {
    v90 = 0;
  }

  if (v90 < 0)
  {
    goto LABEL_89;
  }

  v241 = &v238;
  v91 = v89 + v74;
  if (!v74)
  {
    v91 = 0;
  }

  v238 = v91;
  LOBYTE(v250[0]) = 0;
  MEMORY[0x1EEE9AC00](v88);
  v232 = 0;
  v233 = v245;
  v234 = a5;
  v235 = v250;
  v236 = a6;
  v237 = v244;
  v92 = swift_allocObject();
  v93 = v92 + 1;
  sub_1B0C835A8(&v295);
  v94 = v304;
  v92[9] = v303;
  v92[10] = v94;
  v92[11] = v305[0];
  *(v92 + 185) = *(v305 + 9);
  v95 = v300;
  v92[5] = v299;
  v92[6] = v95;
  v96 = v302;
  v92[7] = v301;
  v92[8] = v96;
  v97 = v296;
  v92[1] = v295;
  v92[2] = v97;
  v98 = v298;
  v92[3] = v297;
  v92[4] = v98;
  v99 = swift_allocObject();
  v239 = v231;
  v243 = a6;
  *(v99 + 16) = 2;
  v100 = (v99 + 16);
  MEMORY[0x1EEE9AC00](v99);
  v227 = v92;
  v228 = v101;
  v240 = v101;
  v229 = sub_1B0C84510;
  v230 = v231;
  MEMORY[0x1EEE9AC00](v101);
  v223 = v92 + 1;
  v224 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
  v225 = 0;

  v63 = v247;
  sub_1B0CA33D0(v246, 0, v90, v74, v238);
  if (!v63)
  {
    v106 = v243;
    v317 = MEMORY[0x1E69E7CC0];
    v318 = v102;
    v319 = v103;
    v320 = v104;
    v321 = v105;
    sub_1B0CA286C(sub_1B0C844F4, v226, sub_1B0C8450C, v222, 0, 0);
    swift_beginAccess();
    if (*v100 != 2)
    {
      goto LABEL_57;
    }

    swift_beginAccess();
    v151 = v92[10];
    v152 = v92[8];
    v281 = v92[9];
    v282 = v151;
    v153 = v92[10];
    v283[0] = v92[11];
    *(v283 + 9) = *(v92 + 185);
    v154 = v92[6];
    v155 = v92[4];
    v277 = v92[5];
    v278 = v154;
    v156 = v92[6];
    v157 = v92[8];
    v279 = v92[7];
    v280 = v157;
    v158 = v92[2];
    v273 = *v93;
    v274 = v158;
    v159 = v92[4];
    v161 = *v93;
    v160 = v92[2];
    v275 = v92[3];
    v276 = v159;
    v292 = v281;
    v293 = v153;
    v294[0] = v92[11];
    *(v294 + 9) = *(v92 + 185);
    v288 = v277;
    v289 = v156;
    v290 = v279;
    v291 = v152;
    v284 = v161;
    v285 = v160;
    v286 = v275;
    v287 = v155;
    if (sub_1B03BCF14(&v284) != 1)
    {
      v314 = v292;
      v315 = v293;
      v316[0] = v294[0];
      *(v316 + 9) = *(v294 + 9);
      v310 = v288;
      v311 = v289;
      v312 = v290;
      v313 = v291;
      v306 = v284;
      v307 = v285;
      v308 = v286;
      v309 = v287;
      v270 = v281;
      v271 = v282;
      v272[0] = v283[0];
      *(v272 + 9) = *(v283 + 9);
      v266 = v277;
      v267 = v278;
      v268 = v279;
      v269 = v280;
      v262 = v273;
      v263 = v274;
      v264 = v275;
      v265 = v276;
      sub_1B0C83634(&v262, &v251);
      v181 = sub_1B0C84278(0, v245, v248);
      if (v182)
      {
        v183 = (v106)(v181);

        LOBYTE(v250[0]) = v183 & 1;
      }

      else
      {
        v183 = v250[0];
      }

      sub_1B0398EFC(&v273, &qword_1EB6E5F00, &unk_1B0EDE440);
      v210 = v92[9];
      v211 = v92[11];
      v260 = v92[10];
      v261[0] = v211;
      *(v261 + 9) = *(v92 + 185);
      v212 = v92[6];
      v255 = v92[5];
      v256 = v212;
      v213 = v92[8];
      v257 = v92[7];
      if (v183)
      {
        v214 = 0;
      }

      else
      {
        v214 = 2;
      }

      *(v240 + 16) = v214;
      v258 = v213;
      v259 = v210;
      v215 = v92[2];
      v251 = *v93;
      v252 = v215;
      v216 = v92[4];
      v253 = v92[3];
      v254 = v216;
      v217 = v304;
      v92[9] = v303;
      v92[10] = v217;
      v92[11] = v305[0];
      *(v92 + 185) = *(v305 + 9);
      v218 = v300;
      v92[5] = v299;
      v92[6] = v218;
      v219 = v302;
      v92[7] = v301;
      v92[8] = v219;
      v220 = v296;
      *v93 = v295;
      v92[2] = v220;
      v221 = v298;
      v92[3] = v297;
      v92[4] = v221;
      sub_1B0398EFC(&v251, &qword_1EB6E5F00, &unk_1B0EDE440);
    }

    else
    {
LABEL_57:
      swift_beginAccess();
      v162 = v92[10];
      v314 = v92[9];
      v315 = v162;
      v316[0] = v92[11];
      *(v316 + 9) = *(v92 + 185);
      v163 = v92[6];
      v310 = v92[5];
      v311 = v163;
      v164 = v92[8];
      v312 = v92[7];
      v313 = v164;
      v165 = v92[2];
      v306 = *v93;
      v307 = v165;
      v166 = v92[4];
      v308 = v92[3];
      v309 = v166;
      v167 = v304;
      v92[9] = v303;
      v92[10] = v167;
      v92[11] = v305[0];
      *(v92 + 185) = *(v305 + 9);
      v168 = v300;
      v92[5] = v299;
      v92[6] = v168;
      v169 = v302;
      v92[7] = v301;
      v92[8] = v169;
      v170 = v296;
      *v93 = v295;
      v92[2] = v170;
      v171 = v298;
      v92[3] = v297;
      v92[4] = v171;
      sub_1B0398EFC(&v306, &qword_1EB6E5F00, &unk_1B0EDE440);
    }

    goto LABEL_23;
  }

LABEL_22:

LABEL_23:

LABEL_51:

  v129 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C9CF04(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7)
{
  v246 = a3;
  v322 = *MEMORY[0x1E69E9840];
  v14 = a2 >> 62;
  swift_retain_n();
  v247 = v7;
  v248 = a5;
  v244 = a7;
  v245 = a4;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      memset(v250, 0, 14);

      v243 = &v238;
      v249 = 0;
      MEMORY[0x1EEE9AC00](v75);
      v232 = 1;
      v233 = a4;
      v234 = a5;
      v235 = &v249;
      v236 = a6;
      v237 = a7;
      v17 = swift_allocObject();
      sub_1B0C835A8(&v295);
      v76 = v304;
      v17[9] = v303;
      v17[10] = v76;
      v17[11] = v305[0];
      *(v17 + 185) = *(v305 + 9);
      v77 = v300;
      v17[5] = v299;
      v17[6] = v77;
      v78 = v302;
      v17[7] = v301;
      v17[8] = v78;
      v79 = v296;
      v17[1] = v295;
      v17[2] = v79;
      v80 = v298;
      v17[3] = v297;
      v17[4] = v80;
      v81 = swift_allocObject();
      v241 = v231;
      *(v81 + 16) = 2;
      v82 = (v81 + 16);
      MEMORY[0x1EEE9AC00](v81);
      v227 = v17;
      v228 = v83;
      v242 = v83;
      v229 = sub_1B0C84510;
      v230 = v231;
      MEMORY[0x1EEE9AC00](v83);
      v223 = v17 + 1;
      v224 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
      v225 = 0;
      swift_retain_n();
      v27 = v247;
      sub_1B0CA33D0(v246, 0, 0, v250, v250);
      if (!v27)
      {
        v18 = v17 + 1;
        v32 = v17 + 1;
        v317 = MEMORY[0x1E69E7CC0];
        v318 = v84;
        v319 = v85;
        v320 = v86;
        v321 = v87;
        sub_1B0CA286C(sub_1B0C844F4, v226, sub_1B0C8450C, v222, 0, 0);
        swift_beginAccess();
        if (*v82 != 2)
        {
          goto LABEL_49;
        }

        swift_beginAccess();
        v107 = v17[10];
        v108 = v17[8];
        v281 = v17[9];
        v282 = v107;
        v109 = v17[10];
        v283[0] = v17[11];
        *(v283 + 9) = *(v17 + 185);
        v110 = v17[6];
        v111 = v17[4];
        v277 = v17[5];
        v278 = v110;
        v112 = v17[6];
        v113 = v17[8];
        v279 = v17[7];
        v280 = v113;
        v114 = v17[2];
        v273 = *v18;
        v274 = v114;
        v115 = v17[4];
        v117 = *v18;
        v116 = v17[2];
        v275 = v17[3];
        v276 = v115;
        v292 = v281;
        v293 = v109;
        v294[0] = v17[11];
        *(v294 + 9) = *(v17 + 185);
        v288 = v277;
        v289 = v112;
        v290 = v279;
        v291 = v108;
        v284 = v117;
        v285 = v116;
        v286 = v275;
        v287 = v111;
        if (sub_1B03BCF14(&v284) == 1)
        {
          goto LABEL_49;
        }

        v314 = v292;
        v315 = v293;
        v316[0] = v294[0];
        *(v316 + 9) = *(v294 + 9);
        v310 = v288;
        v311 = v289;
        v312 = v290;
        v313 = v291;
        v306 = v284;
        v307 = v285;
        v308 = v286;
        v309 = v287;
        v270 = v281;
        v271 = v282;
        v272[0] = v283[0];
        *(v272 + 9) = *(v283 + 9);
        v266 = v277;
        v267 = v278;
        v268 = v279;
        v269 = v280;
        v262 = v273;
        v263 = v274;
        v264 = v275;
        v265 = v276;
        sub_1B0C83634(&v262, &v251);
        v175 = sub_1B0C84278(1, v245, v248);
        if (v176)
        {
          v177 = (a6)(v175);

          v249 = v177 & 1;
        }

        else
        {
          v177 = v249;
        }

        sub_1B0398EFC(&v273, &qword_1EB6E5F00, &unk_1B0EDE440);
        v184 = v17[9];
        v196 = v17[11];
        v260 = v17[10];
        v261[0] = v196;
        *(v261 + 9) = *(v17 + 185);
        v197 = v17[6];
        v255 = v17[5];
        v256 = v197;
        v187 = v17[8];
        v257 = v17[7];
        if (v177)
        {
          v188 = 0;
        }

        else
        {
          v188 = 2;
        }

        goto LABEL_70;
      }

      goto LABEL_30;
    }

    v243 = a6;
    v44 = *(a1 + 16);
    a6 = *(a1 + 24);

    v242 = &v238;
    swift_retain_n();
    v45 = sub_1B0E42A98();
    if (v45)
    {
      v46 = v45;
      v47 = sub_1B0E42AC8();
      if (__OFSUB__(v44, v47))
      {
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
      }

      v48 = v44 - v47 + v46;
      v49 = a6 - v44;
      if (!__OFSUB__(a6, v44))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v48 = 0;
      v49 = a6 - v44;
      if (!__OFSUB__(a6, v44))
      {
LABEL_11:
        v50 = sub_1B0E42AB8();
        if (v50 >= v49)
        {
          v51 = v49;
        }

        else
        {
          v51 = v50;
        }

        if (v48)
        {
          v52 = v51;
        }

        else
        {
          v52 = 0;
        }

        if ((v52 & 0x8000000000000000) == 0)
        {
          v241 = &v238;
          v53 = v51 + v48;
          if (!v48)
          {
            v53 = 0;
          }

          v238 = v53;
          LOBYTE(v250[0]) = 0;
          MEMORY[0x1EEE9AC00](v50);
          v232 = 1;
          v233 = v245;
          v234 = a5;
          v235 = v250;
          v236 = v243;
          v237 = v244;
          v54 = swift_allocObject();
          sub_1B0C835A8(&v295);
          v55 = v304;
          v54[9] = v303;
          v54[10] = v55;
          v54[11] = v305[0];
          *(v54 + 185) = *(v305 + 9);
          v56 = v300;
          v54[5] = v299;
          v54[6] = v56;
          v57 = v302;
          v54[7] = v301;
          v54[8] = v57;
          v58 = v296;
          v54[1] = v295;
          v54[2] = v58;
          v59 = v298;
          v54[3] = v297;
          v54[4] = v59;
          v60 = swift_allocObject();
          v239 = v231;
          *(v60 + 16) = 2;
          v61 = (v60 + 16);
          MEMORY[0x1EEE9AC00](v60);
          v227 = v54;
          v228 = v62;
          v240 = v62;
          v229 = sub_1B0C84510;
          v230 = v231;
          MEMORY[0x1EEE9AC00](v62);
          v223 = v54 + 1;
          v224 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
          v225 = 0;

          v63 = v247;
          sub_1B0CA33D0(v246, 0, v52, v48, v238);
          if (!v63)
          {
            v68 = v54 + 1;
            v69 = v245;
            v317 = MEMORY[0x1E69E7CC0];
            v318 = v64;
            v319 = v65;
            v320 = v66;
            v321 = v67;
            sub_1B0CA286C(sub_1B0C844F4, v226, sub_1B0C8450C, v222, 0, 0);
            swift_beginAccess();
            if (*v61 != 2)
            {
              goto LABEL_54;
            }

            swift_beginAccess();
            v130 = v54[10];
            v131 = v54[8];
            v281 = v54[9];
            v282 = v130;
            v132 = v54[10];
            v283[0] = v54[11];
            *(v283 + 9) = *(v54 + 185);
            v133 = v54[6];
            v134 = v54[4];
            v277 = v54[5];
            v278 = v133;
            v135 = v54[6];
            v136 = v54[8];
            v279 = v54[7];
            v280 = v136;
            v137 = v54[2];
            v273 = *v68;
            v274 = v137;
            v138 = v54[4];
            v140 = *v68;
            v139 = v54[2];
            v275 = v54[3];
            v276 = v138;
            v292 = v281;
            v293 = v132;
            v294[0] = v54[11];
            *(v294 + 9) = *(v54 + 185);
            v288 = v277;
            v289 = v135;
            v290 = v279;
            v291 = v131;
            v284 = v140;
            v285 = v139;
            v286 = v275;
            v287 = v134;
            if (sub_1B03BCF14(&v284) != 1)
            {
              v314 = v292;
              v315 = v293;
              v316[0] = v294[0];
              *(v316 + 9) = *(v294 + 9);
              v310 = v288;
              v311 = v289;
              v312 = v290;
              v313 = v291;
              v306 = v284;
              v307 = v285;
              v308 = v286;
              v309 = v287;
              v270 = v281;
              v271 = v282;
              v272[0] = v283[0];
              *(v272 + 9) = *(v283 + 9);
              v266 = v277;
              v267 = v278;
              v268 = v279;
              v269 = v280;
              v262 = v273;
              v263 = v274;
              v264 = v275;
              v265 = v276;
              sub_1B0C83634(&v262, &v251);
              v178 = sub_1B0C84278(1, v69, v248);
              if (v179)
              {
                v180 = (v243)(v178);

                LOBYTE(v250[0]) = v180 & 1;
              }

              else
              {
                v180 = v250[0];
              }

              sub_1B0398EFC(&v273, &qword_1EB6E5F00, &unk_1B0EDE440);
              v198 = v54[9];
              v199 = v54[11];
              v260 = v54[10];
              v261[0] = v199;
              *(v261 + 9) = *(v54 + 185);
              v200 = v54[6];
              v255 = v54[5];
              v256 = v200;
              v201 = v54[8];
              v257 = v54[7];
              if (v180)
              {
                v202 = 0;
              }

              else
              {
                v202 = 2;
              }

              *(v240 + 16) = v202;
              v258 = v201;
              v259 = v198;
              v203 = v54[2];
              v251 = *v68;
              v252 = v203;
              v204 = v54[4];
              v253 = v54[3];
              v254 = v204;
              v205 = v304;
              v54[9] = v303;
              v54[10] = v205;
              v54[11] = v305[0];
              *(v54 + 185) = *(v305 + 9);
              v206 = v300;
              v54[5] = v299;
              v54[6] = v206;
              v207 = v302;
              v54[7] = v301;
              v54[8] = v207;
              v208 = v296;
              *v68 = v295;
              v54[2] = v208;
              v209 = v298;
              v54[3] = v297;
              v54[4] = v209;
              sub_1B0398EFC(&v251, &qword_1EB6E5F00, &unk_1B0EDE440);
            }

            else
            {
LABEL_54:
              swift_beginAccess();
              v141 = v54[10];
              v314 = v54[9];
              v315 = v141;
              v316[0] = v54[11];
              *(v316 + 9) = *(v54 + 185);
              v142 = v54[6];
              v310 = v54[5];
              v311 = v142;
              v143 = v54[8];
              v312 = v54[7];
              v313 = v143;
              v144 = v54[2];
              v306 = *v68;
              v307 = v144;
              v145 = v54[4];
              v308 = v54[3];
              v309 = v145;
              v146 = v304;
              v54[9] = v303;
              v54[10] = v146;
              v54[11] = v305[0];
              *(v54 + 185) = *(v305 + 9);
              v147 = v300;
              v54[5] = v299;
              v54[6] = v147;
              v148 = v302;
              v54[7] = v301;
              v54[8] = v148;
              v149 = v296;
              *v68 = v295;
              v54[2] = v149;
              v150 = v298;
              v54[3] = v297;
              v54[4] = v150;
              sub_1B0398EFC(&v306, &qword_1EB6E5F00, &unk_1B0EDE440);
            }

            goto LABEL_23;
          }

          goto LABEL_22;
        }

        goto LABEL_88;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!v14)
  {
    v250[0] = a1;
    LOWORD(v250[1]) = a2;
    BYTE2(v250[1]) = BYTE2(a2);
    BYTE3(v250[1]) = BYTE3(a2);
    BYTE4(v250[1]) = BYTE4(a2);
    v15 = BYTE6(a2);
    BYTE5(v250[1]) = BYTE5(a2);

    v243 = &v238;
    v249 = 0;
    MEMORY[0x1EEE9AC00](v16);
    v232 = 1;
    v233 = a4;
    v234 = a5;
    v235 = &v249;
    v236 = a6;
    v237 = a7;
    v17 = swift_allocObject();
    v18 = v17 + 1;
    sub_1B0C835A8(&v295);
    v19 = v304;
    v17[9] = v303;
    v17[10] = v19;
    v17[11] = v305[0];
    *(v17 + 185) = *(v305 + 9);
    v20 = v300;
    v17[5] = v299;
    v17[6] = v20;
    v21 = v302;
    v17[7] = v301;
    v17[8] = v21;
    v22 = v296;
    v17[1] = v295;
    v17[2] = v22;
    v23 = v298;
    v17[3] = v297;
    v17[4] = v23;
    v24 = swift_allocObject();
    v241 = v231;
    *(v24 + 16) = 2;
    v25 = (v24 + 16);
    MEMORY[0x1EEE9AC00](v24);
    v227 = v17;
    v228 = v26;
    v242 = v26;
    v229 = sub_1B0C84510;
    v230 = v231;
    MEMORY[0x1EEE9AC00](v26);
    v223 = v17 + 1;
    v224 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
    v225 = 0;
    swift_retain_n();
    v27 = v247;
    sub_1B0CA33D0(v246, 0, v15, v250, v250 + v15);
    if (!v27)
    {
      v32 = v17 + 1;
      v317 = MEMORY[0x1E69E7CC0];
      v318 = v28;
      v319 = v29;
      v320 = v30;
      v321 = v31;
      sub_1B0CA286C(sub_1B0C844F4, v226, sub_1B0C8450C, v222, 0, 0);
      swift_beginAccess();
      if (*v25 != 2)
      {
        goto LABEL_49;
      }

      swift_beginAccess();
      v33 = v17[10];
      v34 = v17[8];
      v281 = v17[9];
      v282 = v33;
      v35 = v17[10];
      v283[0] = v17[11];
      *(v283 + 9) = *(v17 + 185);
      v36 = v17[6];
      v37 = v17[4];
      v277 = v17[5];
      v278 = v36;
      v38 = v17[6];
      v39 = v17[8];
      v279 = v17[7];
      v280 = v39;
      v40 = v17[2];
      v273 = *v18;
      v274 = v40;
      v41 = v17[4];
      v43 = *v18;
      v42 = v17[2];
      v275 = v17[3];
      v276 = v41;
      v292 = v281;
      v293 = v35;
      v294[0] = v17[11];
      *(v294 + 9) = *(v17 + 185);
      v288 = v277;
      v289 = v38;
      v290 = v279;
      v291 = v34;
      v284 = v43;
      v285 = v42;
      v286 = v275;
      v287 = v37;
      if (sub_1B03BCF14(&v284) == 1)
      {
LABEL_49:
        swift_beginAccess();
        v118 = v17[10];
        v314 = v17[9];
        v315 = v118;
        v316[0] = v17[11];
        *(v316 + 9) = *(v17 + 185);
        v119 = v17[6];
        v310 = v17[5];
        v311 = v119;
        v120 = v17[8];
        v312 = v17[7];
        v313 = v120;
        v121 = v17[2];
        v306 = *v18;
        v307 = v121;
        v122 = v17[4];
        v308 = v17[3];
        v309 = v122;
        v123 = v304;
        v17[9] = v303;
        v17[10] = v123;
        v17[11] = v305[0];
        *(v17 + 185) = *(v305 + 9);
        v124 = v300;
        v17[5] = v299;
        v17[6] = v124;
        v125 = v302;
        v17[7] = v301;
        v17[8] = v125;
        v126 = v296;
        *v18 = v295;
        v17[2] = v126;
        v127 = v298;
        v17[3] = v297;
        v17[4] = v127;
        sub_1B0398EFC(&v306, &qword_1EB6E5F00, &unk_1B0EDE440);

LABEL_50:

        goto LABEL_51;
      }

      v314 = v292;
      v315 = v293;
      v316[0] = v294[0];
      *(v316 + 9) = *(v294 + 9);
      v310 = v288;
      v311 = v289;
      v312 = v290;
      v313 = v291;
      v306 = v284;
      v307 = v285;
      v308 = v286;
      v309 = v287;
      v270 = v281;
      v271 = v282;
      v272[0] = v283[0];
      *(v272 + 9) = *(v283 + 9);
      v266 = v277;
      v267 = v278;
      v268 = v279;
      v269 = v280;
      v262 = v273;
      v263 = v274;
      v264 = v275;
      v265 = v276;
      sub_1B0C83634(&v262, &v251);
      v172 = sub_1B0C84278(1, v245, v248);
      if (v173)
      {
        v174 = (a6)(v172);

        v249 = v174 & 1;
      }

      else
      {
        v174 = v249;
      }

      sub_1B0398EFC(&v273, &qword_1EB6E5F00, &unk_1B0EDE440);
      v184 = v17[9];
      v185 = v17[11];
      v260 = v17[10];
      v261[0] = v185;
      *(v261 + 9) = *(v17 + 185);
      v186 = v17[6];
      v255 = v17[5];
      v256 = v186;
      v187 = v17[8];
      v257 = v17[7];
      if (v174)
      {
        v188 = 0;
      }

      else
      {
        v188 = 2;
      }

LABEL_70:
      *(v242 + 16) = v188;
      v258 = v187;
      v259 = v184;
      v189 = v32[1];
      v251 = *v32;
      v252 = v189;
      v190 = v32[3];
      v253 = v32[2];
      v254 = v190;
      v191 = v304;
      v32[8] = v303;
      v32[9] = v191;
      v32[10] = v305[0];
      *(v32 + 169) = *(v305 + 9);
      v192 = v300;
      v32[4] = v299;
      v32[5] = v192;
      v193 = v302;
      v32[6] = v301;
      v32[7] = v193;
      v194 = v296;
      *v32 = v295;
      v32[1] = v194;
      v195 = v298;
      v32[2] = v297;
      v32[3] = v195;
      sub_1B0398EFC(&v251, &qword_1EB6E5F00, &unk_1B0EDE440);

      goto LABEL_50;
    }

LABEL_30:

    goto LABEL_51;
  }

  v70 = a1;
  v44 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v242 = &v238;
  swift_retain_n();
  v71 = sub_1B0E42A98();
  if (!v71)
  {
LABEL_34:
    v74 = 0;
    goto LABEL_35;
  }

  v72 = v71;
  v73 = sub_1B0E42AC8();
  if (__OFSUB__(v70, v73))
  {
    goto LABEL_91;
  }

  v74 = v70 - v73 + v72;
LABEL_35:
  v88 = sub_1B0E42AB8();
  if (v88 >= v44)
  {
    v89 = v44;
  }

  else
  {
    v89 = v88;
  }

  if (v74)
  {
    v90 = v89;
  }

  else
  {
    v90 = 0;
  }

  if (v90 < 0)
  {
    goto LABEL_89;
  }

  v241 = &v238;
  v91 = v89 + v74;
  if (!v74)
  {
    v91 = 0;
  }

  v238 = v91;
  LOBYTE(v250[0]) = 0;
  MEMORY[0x1EEE9AC00](v88);
  v232 = 1;
  v233 = v245;
  v234 = a5;
  v235 = v250;
  v236 = a6;
  v237 = v244;
  v92 = swift_allocObject();
  v93 = v92 + 1;
  sub_1B0C835A8(&v295);
  v94 = v304;
  v92[9] = v303;
  v92[10] = v94;
  v92[11] = v305[0];
  *(v92 + 185) = *(v305 + 9);
  v95 = v300;
  v92[5] = v299;
  v92[6] = v95;
  v96 = v302;
  v92[7] = v301;
  v92[8] = v96;
  v97 = v296;
  v92[1] = v295;
  v92[2] = v97;
  v98 = v298;
  v92[3] = v297;
  v92[4] = v98;
  v99 = swift_allocObject();
  v239 = v231;
  v243 = a6;
  *(v99 + 16) = 2;
  v100 = (v99 + 16);
  MEMORY[0x1EEE9AC00](v99);
  v227 = v92;
  v228 = v101;
  v240 = v101;
  v229 = sub_1B0C84510;
  v230 = v231;
  MEMORY[0x1EEE9AC00](v101);
  v223 = v92 + 1;
  v224 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
  v225 = 0;

  v63 = v247;
  sub_1B0CA33D0(v246, 0, v90, v74, v238);
  if (!v63)
  {
    v106 = v243;
    v317 = MEMORY[0x1E69E7CC0];
    v318 = v102;
    v319 = v103;
    v320 = v104;
    v321 = v105;
    sub_1B0CA286C(sub_1B0C844F4, v226, sub_1B0C8450C, v222, 0, 0);
    swift_beginAccess();
    if (*v100 != 2)
    {
      goto LABEL_57;
    }

    swift_beginAccess();
    v151 = v92[10];
    v152 = v92[8];
    v281 = v92[9];
    v282 = v151;
    v153 = v92[10];
    v283[0] = v92[11];
    *(v283 + 9) = *(v92 + 185);
    v154 = v92[6];
    v155 = v92[4];
    v277 = v92[5];
    v278 = v154;
    v156 = v92[6];
    v157 = v92[8];
    v279 = v92[7];
    v280 = v157;
    v158 = v92[2];
    v273 = *v93;
    v274 = v158;
    v159 = v92[4];
    v161 = *v93;
    v160 = v92[2];
    v275 = v92[3];
    v276 = v159;
    v292 = v281;
    v293 = v153;
    v294[0] = v92[11];
    *(v294 + 9) = *(v92 + 185);
    v288 = v277;
    v289 = v156;
    v290 = v279;
    v291 = v152;
    v284 = v161;
    v285 = v160;
    v286 = v275;
    v287 = v155;
    if (sub_1B03BCF14(&v284) != 1)
    {
      v314 = v292;
      v315 = v293;
      v316[0] = v294[0];
      *(v316 + 9) = *(v294 + 9);
      v310 = v288;
      v311 = v289;
      v312 = v290;
      v313 = v291;
      v306 = v284;
      v307 = v285;
      v308 = v286;
      v309 = v287;
      v270 = v281;
      v271 = v282;
      v272[0] = v283[0];
      *(v272 + 9) = *(v283 + 9);
      v266 = v277;
      v267 = v278;
      v268 = v279;
      v269 = v280;
      v262 = v273;
      v263 = v274;
      v264 = v275;
      v265 = v276;
      sub_1B0C83634(&v262, &v251);
      v181 = sub_1B0C84278(1, v245, v248);
      if (v182)
      {
        v183 = (v106)(v181);

        LOBYTE(v250[0]) = v183 & 1;
      }

      else
      {
        v183 = v250[0];
      }

      sub_1B0398EFC(&v273, &qword_1EB6E5F00, &unk_1B0EDE440);
      v210 = v92[9];
      v211 = v92[11];
      v260 = v92[10];
      v261[0] = v211;
      *(v261 + 9) = *(v92 + 185);
      v212 = v92[6];
      v255 = v92[5];
      v256 = v212;
      v213 = v92[8];
      v257 = v92[7];
      if (v183)
      {
        v214 = 0;
      }

      else
      {
        v214 = 2;
      }

      *(v240 + 16) = v214;
      v258 = v213;
      v259 = v210;
      v215 = v92[2];
      v251 = *v93;
      v252 = v215;
      v216 = v92[4];
      v253 = v92[3];
      v254 = v216;
      v217 = v304;
      v92[9] = v303;
      v92[10] = v217;
      v92[11] = v305[0];
      *(v92 + 185) = *(v305 + 9);
      v218 = v300;
      v92[5] = v299;
      v92[6] = v218;
      v219 = v302;
      v92[7] = v301;
      v92[8] = v219;
      v220 = v296;
      *v93 = v295;
      v92[2] = v220;
      v221 = v298;
      v92[3] = v297;
      v92[4] = v221;
      sub_1B0398EFC(&v251, &qword_1EB6E5F00, &unk_1B0EDE440);
    }

    else
    {
LABEL_57:
      swift_beginAccess();
      v162 = v92[10];
      v314 = v92[9];
      v315 = v162;
      v316[0] = v92[11];
      *(v316 + 9) = *(v92 + 185);
      v163 = v92[6];
      v310 = v92[5];
      v311 = v163;
      v164 = v92[8];
      v312 = v92[7];
      v313 = v164;
      v165 = v92[2];
      v306 = *v93;
      v307 = v165;
      v166 = v92[4];
      v308 = v92[3];
      v309 = v166;
      v167 = v304;
      v92[9] = v303;
      v92[10] = v167;
      v92[11] = v305[0];
      *(v92 + 185) = *(v305 + 9);
      v168 = v300;
      v92[5] = v299;
      v92[6] = v168;
      v169 = v302;
      v92[7] = v301;
      v92[8] = v169;
      v170 = v296;
      *v93 = v295;
      v92[2] = v170;
      v171 = v298;
      v92[3] = v297;
      v92[4] = v171;
      sub_1B0398EFC(&v306, &qword_1EB6E5F00, &unk_1B0EDE440);
    }

    goto LABEL_23;
  }

LABEL_22:

LABEL_23:

LABEL_51:

  v129 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C9E60C(uint64_t a1, unint64_t a2, char a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v253 = a4;
  v13 = &v288;
  v339 = *MEMORY[0x1E69E9840];
  v14 = a2 >> 62;
  swift_retain_n();
  v251 = a7;
  v252 = a5;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v249 = a6;
      v22 = *(a1 + 16);
      a6 = *(a1 + 24);

      v248 = v243;
      swift_retain_n();
      v23 = sub_1B0E42A98();
      if (v23)
      {
        v24 = v23;
        v25 = sub_1B0E42AC8();
        if (__OFSUB__(v22, v25))
        {
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
        }

        v13 = (v22 - v25 + v24);
        v26 = a6 - v22;
        if (!__OFSUB__(a6, v22))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v13 = 0;
        v26 = a6 - v22;
        if (!__OFSUB__(a6, v22))
        {
LABEL_9:
          v27 = sub_1B0E42AB8();
          if (v27 >= v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = v27;
          }

          if (v13)
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }

          if (v13)
          {
            v30 = v13 + v28;
          }

          else
          {
            v30 = 0;
          }

          if ((v29 & 0x8000000000000000) == 0)
          {

            v245 = v30;
            v31 = sub_1B0CA3C44(0, v29, v13, v30);
            v32 = sub_1B0CA3EA4(MEMORY[0x1E69E7CC0], v31);
            if (v32)
            {
              v34 = v32;
              v35 = v33;
              *&v323 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
              sub_1B0CA4364(v34, v35, a3 & 1, &v323, v31);

              v36 = v323;
            }

            else
            {

              v36 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
            }

            v88 = swift_allocObject();
            v247 = v243;
            *(v88 + 16) = v36;
            MEMORY[0x1EEE9AC00](v88);
            v239 = v253;
            v240 = a5;
            v241 = v249;
            v242 = v251;
            v89 = swift_allocObject();
            v90 = v89 + 1;
            sub_1B0C835A8(&v288);
            v91 = v297;
            v89[9] = v296;
            v89[10] = v91;
            v89[11] = v298[0];
            *(v89 + 185) = *(v298 + 9);
            v92 = v293;
            v89[5] = v292;
            v89[6] = v92;
            v93 = v295;
            v89[7] = v294;
            v89[8] = v93;
            v94 = v289;
            v89[1] = v288;
            v89[2] = v94;
            v95 = v291;
            v89[3] = v290;
            v89[4] = v95;
            v96 = swift_allocObject();
            v244 = v238;
            *(v96 + 16) = 2;
            v97 = (v96 + 16);
            v234 = v89;
            v235 = MEMORY[0x1EEE9AC00](v96);
            v246 = v235;
            v236 = sub_1B0CA1EE4;
            v237 = v238;
            MEMORY[0x1EEE9AC00](v235);
            v230 = v89 + 1;
            v231 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
            v232 = 0;
            v98 = v250;
            sub_1B0CA33D0(3, 0, v29, v13, v245);
            if (v98)
            {
              goto LABEL_58;
            }

            v103 = v89 + 1;
            v334 = MEMORY[0x1E69E7CC0];
            v335 = v99;
            v336 = v100;
            v337 = v101;
            v338 = v102;
            sub_1B0CA286C(sub_1B0C844F4, v233, sub_1B0C8450C, v229, sub_1B0CA1F5C, v88);
            swift_beginAccess();
            if (*v97 == 2)
            {
              swift_beginAccess();
              v163 = v89[10];
              v164 = v89[8];
              v274 = v89[9];
              v275 = v163;
              v165 = v89[10];
              v276[0] = v89[11];
              *(v276 + 9) = *(v89 + 185);
              v166 = v89[6];
              v167 = v89[4];
              v270 = v89[5];
              v271 = v166;
              v168 = v89[6];
              v169 = v89[8];
              v272 = v89[7];
              v273 = v169;
              v170 = v89[2];
              v266 = *v90;
              v267 = v170;
              v171 = v89[4];
              v173 = *v90;
              v172 = v89[2];
              v268 = v89[3];
              v269 = v171;
              v285 = v274;
              v286 = v165;
              v287[0] = v89[11];
              *(v287 + 9) = *(v89 + 185);
              v281 = v270;
              v282 = v168;
              v283 = v272;
              v284 = v164;
              v277 = v173;
              v278 = v172;
              v279 = v268;
              v280 = v167;
              if (sub_1B03BCF14(&v277) != 1)
              {
                v331 = v285;
                v332 = v286;
                v333[0] = v287[0];
                *(v333 + 9) = *(v287 + 9);
                v327 = v281;
                v328 = v282;
                v329 = v283;
                v330 = v284;
                v323 = v277;
                v324 = v278;
                v325 = v279;
                v326 = v280;
                sub_1B0CA1DC8(&v266, &v255);
                v207 = v252;

                sub_1B0CA1DC8(&v266, &v255);
                sub_1B0C85B6C(&v323, v253, v207, &v299);
                v311 = v303;
                v312 = v304;
                v313 = v305;
                v314 = v306;
                v307 = v299;
                v308 = v300;
                v309 = v301;
                v310 = v302;
                if (sub_1B0C8699C(&v307) != 1)
                {
                  v319 = v311;
                  v320 = v312;
                  v321 = v313;
                  v322 = v314;
                  v315 = v307;
                  v316 = v308;
                  v317 = v309;
                  v318 = v310;
                  v249(&v315);
                  sub_1B0398EFC(&v299, &qword_1EB6E5F30, "nP\b");
                }

                sub_1B0398EFC(&v266, &qword_1EB6E5F00, &unk_1B0EDE440);
                v246[16] = 2;
                v208 = v89[10];
                v263 = v89[9];
                v264 = v208;
                v265[0] = v89[11];
                *(v265 + 9) = *(v89 + 185);
                v209 = v89[6];
                v259 = v89[5];
                v260 = v209;
                v210 = v89[8];
                v261 = v89[7];
                v262 = v210;
                v211 = v89[2];
                v255 = *v103;
                v256 = v211;
                v212 = v89[4];
                v257 = v89[3];
                v258 = v212;
                v213 = v297;
                v89[9] = v296;
                v89[10] = v213;
                v89[11] = v298[0];
                *(v89 + 185) = *(v298 + 9);
                v214 = v293;
                v89[5] = v292;
                v89[6] = v214;
                v215 = v295;
                v89[7] = v294;
                v89[8] = v215;
                v216 = v289;
                *v103 = v288;
                v89[2] = v216;
                v217 = v291;
                v89[3] = v290;
                v89[4] = v217;
                sub_1B0398EFC(&v255, &qword_1EB6E5F00, &unk_1B0EDE440);
                goto LABEL_88;
              }
            }

            goto LABEL_73;
          }

          goto LABEL_90;
        }
      }

      __break(1u);
    }

    else
    {
      memset(v254, 0, 14);
      swift_retain_n();
      v41 = sub_1B0CA3C44(0, 0, v254, v254);
      v42 = sub_1B0CA3EA4(MEMORY[0x1E69E7CC0], v41);
      if (v42)
      {
        v44 = v42;
        v45 = v43;
        *&v323 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
        sub_1B0CA4364(v44, v45, a3 & 1, &v323, v41);

        v46 = v323;
LABEL_34:
        v63 = v253;
        v64 = swift_allocObject();
        v248 = v243;
        *(v64 + 16) = v46;
        MEMORY[0x1EEE9AC00](v64);
        v239 = v63;
        v240 = a5;
        v241 = a6;
        v242 = v251;
        v65 = swift_allocObject();
        v49 = v65 + 1;
        sub_1B0C835A8(&v288);
        v66 = v297;
        v65[9] = v296;
        v65[10] = v66;
        v65[11] = v298[0];
        *(v65 + 185) = *(v13 + 169);
        v67 = v293;
        v65[5] = v292;
        v65[6] = v67;
        v68 = v295;
        v65[7] = v294;
        v65[8] = v68;
        v69 = v289;
        v65[1] = v288;
        v65[2] = v69;
        v70 = v291;
        v65[3] = v290;
        v65[4] = v70;
        v71 = swift_allocObject();
        *(v71 + 16) = 2;
        v72 = (v71 + 16);
        v234 = v65;
        v235 = MEMORY[0x1EEE9AC00](v71);
        v247 = v235;
        v236 = sub_1B0CA1EE4;
        v237 = v238;
        MEMORY[0x1EEE9AC00](v235);
        v230 = v65 + 1;
        v231 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
        v232 = 0;
        v73 = v250;
        sub_1B0CA33D0(3, 0, 0, v254, v254);
        if (v73)
        {
          v62 = v73;
          goto LABEL_38;
        }

        v249 = a6;
        v334 = MEMORY[0x1E69E7CC0];
        v335 = v74;
        v336 = v75;
        v337 = v76;
        v338 = v77;
        sub_1B0CA286C(sub_1B0C844F4, v233, sub_1B0C8450C, v229, sub_1B0CA1F5C, v64);
        swift_beginAccess();
        if (*v72 != 2)
        {
          goto LABEL_67;
        }

        swift_beginAccess();
        v142 = v65[10];
        v143 = v65[8];
        v274 = v65[9];
        v275 = v142;
        v144 = v65[10];
        v276[0] = v65[11];
        *(v276 + 9) = *(v65 + 185);
        v145 = v65[6];
        v146 = v65[4];
        v270 = v65[5];
        v271 = v145;
        v147 = v65[6];
        v148 = v65[8];
        v272 = v65[7];
        v273 = v148;
        v149 = v65[2];
        v266 = *v49;
        v267 = v149;
        v150 = v65[4];
        v152 = *v49;
        v151 = v65[2];
        v268 = v65[3];
        v269 = v150;
        v285 = v274;
        v286 = v144;
        v287[0] = v65[11];
        *(v287 + 9) = *(v65 + 185);
        v281 = v270;
        v282 = v147;
        v283 = v272;
        v284 = v143;
        v277 = v152;
        v278 = v151;
        v279 = v268;
        v280 = v146;
        if (sub_1B03BCF14(&v277) == 1)
        {
LABEL_67:
          swift_beginAccess();
          v153 = v65[10];
          v331 = v65[9];
          v332 = v153;
          v333[0] = v65[11];
          *(v333 + 9) = *(v65 + 185);
          v154 = v65[6];
          v327 = v65[5];
          v328 = v154;
          v155 = v65[8];
          v329 = v65[7];
          v330 = v155;
          v156 = v65[2];
          v323 = *v49;
          v324 = v156;
          v157 = v65[4];
          v325 = v65[3];
          v326 = v157;
          v158 = v297;
          v65[9] = v296;
          v65[10] = v158;
          v65[11] = v298[0];
          *(v65 + 185) = *(v298 + 9);
          v159 = v293;
          v65[5] = v292;
          v65[6] = v159;
          v160 = v295;
          v65[7] = v294;
          v65[8] = v160;
          v161 = v289;
          *v49 = v288;
          v65[2] = v161;
          v162 = v291;
          v65[3] = v290;
          v65[4] = v162;
          sub_1B0398EFC(&v323, &qword_1EB6E5F00, &unk_1B0EDE440);

LABEL_81:

          goto LABEL_61;
        }

        v331 = v285;
        v332 = v286;
        v333[0] = v287[0];
        *(v333 + 9) = *(v287 + 9);
        v327 = v281;
        v328 = v282;
        v329 = v283;
        v330 = v284;
        v323 = v277;
        v324 = v278;
        v325 = v279;
        v326 = v280;
        sub_1B0CA1DC8(&v266, &v255);
        v196 = v252;

        sub_1B0CA1DC8(&v266, &v255);
        sub_1B0C85B6C(&v323, v253, v196, &v299);
        v311 = v303;
        v312 = v304;
        v313 = v305;
        v314 = v306;
        v307 = v299;
        v308 = v300;
        v309 = v301;
        v310 = v302;
        if (sub_1B0C8699C(&v307) != 1)
        {
          v319 = v311;
          v320 = v312;
          v321 = v313;
          v322 = v314;
          v315 = v307;
          v316 = v308;
          v317 = v309;
          v318 = v310;
          v249(&v315);
          sub_1B0398EFC(&v299, &qword_1EB6E5F30, "nP\b");
        }

        goto LABEL_79;
      }
    }

    v46 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
    goto LABEL_34;
  }

  if (v14)
  {
    if (a1 >> 32 >= a1)
    {

      v247 = v243;
      swift_retain_n();
      v37 = sub_1B0E42A98();
      v249 = a6;
      if (v37)
      {
        v38 = v37;
        v39 = sub_1B0E42AC8();
        if (__OFSUB__(a1, v39))
        {
          goto LABEL_93;
        }

        v40 = a1 - v39 + v38;
      }

      else
      {
        v40 = 0;
      }

      v78 = sub_1B0E42AB8();
      if (v78 >= (a1 >> 32) - a1)
      {
        v79 = (a1 >> 32) - a1;
      }

      else
      {
        v79 = v78;
      }

      if (v40)
      {
        v80 = v79;
      }

      else
      {
        v80 = 0;
      }

      if (v40)
      {
        v81 = v79 + v40;
      }

      else
      {
        v81 = 0;
      }

      if ((v80 & 0x8000000000000000) == 0)
      {

        v244 = v81;
        v82 = sub_1B0CA3C44(0, v80, v40, v81);
        v83 = sub_1B0CA3EA4(MEMORY[0x1E69E7CC0], v82);
        if (v83)
        {
          v85 = v83;
          v86 = v84;
          *&v323 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
          sub_1B0CA4364(v85, v86, a3 & 1, &v323, v82);

          v87 = v323;
        }

        else
        {

          v87 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
        }

        v104 = swift_allocObject();
        v246 = v243;
        v248 = v104;
        *(v104 + 16) = v87;
        MEMORY[0x1EEE9AC00](v104);
        v239 = v253;
        v240 = a5;
        v105 = v249;
        v241 = v249;
        v242 = v251;
        v106 = swift_allocObject();
        v107 = v106 + 1;
        sub_1B0C835A8(&v288);
        v108 = v297;
        v106[9] = v296;
        v106[10] = v108;
        v106[11] = v298[0];
        *(v106 + 185) = *(v298 + 9);
        v109 = v293;
        v106[5] = v292;
        v106[6] = v109;
        v110 = v295;
        v106[7] = v294;
        v106[8] = v110;
        v111 = v289;
        v106[1] = v288;
        v106[2] = v111;
        v112 = v291;
        v106[3] = v290;
        v106[4] = v112;
        v113 = swift_allocObject();
        v243[1] = v238;
        *(v113 + 16) = 2;
        v114 = (v113 + 16);
        v234 = v106;
        v235 = MEMORY[0x1EEE9AC00](v113);
        v245 = v235;
        v236 = sub_1B0CA1EE4;
        v237 = v238;
        MEMORY[0x1EEE9AC00](v235);
        v230 = v106 + 1;
        v231 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
        v232 = 0;
        v98 = v250;
        sub_1B0CA33D0(3, 0, v80, v40, v244);
        if (v98)
        {
LABEL_58:

LABEL_60:

          goto LABEL_61;
        }

        v103 = v106 + 1;
        v334 = MEMORY[0x1E69E7CC0];
        v335 = v115;
        v336 = v116;
        v337 = v117;
        v338 = v118;
        sub_1B0CA286C(sub_1B0C844F4, v233, sub_1B0C8450C, v229, sub_1B0CA1F5C, v248);
        swift_beginAccess();
        if (*v114 == 2)
        {
          swift_beginAccess();
          v174 = v106[10];
          v175 = v106[8];
          v274 = v106[9];
          v275 = v174;
          v176 = v106[10];
          v276[0] = v106[11];
          *(v276 + 9) = *(v106 + 185);
          v177 = v106[6];
          v178 = v106[4];
          v270 = v106[5];
          v271 = v177;
          v179 = v106[6];
          v180 = v106[8];
          v272 = v106[7];
          v273 = v180;
          v181 = v106[2];
          v266 = *v107;
          v267 = v181;
          v182 = v106[4];
          v184 = *v107;
          v183 = v106[2];
          v268 = v106[3];
          v269 = v182;
          v285 = v274;
          v286 = v176;
          v287[0] = v106[11];
          *(v287 + 9) = *(v106 + 185);
          v281 = v270;
          v282 = v179;
          v283 = v272;
          v284 = v175;
          v277 = v184;
          v278 = v183;
          v279 = v268;
          v280 = v178;
          if (sub_1B03BCF14(&v277) != 1)
          {
            v331 = v285;
            v332 = v286;
            v333[0] = v287[0];
            *(v333 + 9) = *(v287 + 9);
            v327 = v281;
            v328 = v282;
            v329 = v283;
            v330 = v284;
            v323 = v277;
            v324 = v278;
            v325 = v279;
            v326 = v280;
            sub_1B0CA1DC8(&v266, &v255);
            v218 = v252;

            sub_1B0CA1DC8(&v266, &v255);
            sub_1B0C85B6C(&v323, v253, v218, &v299);
            v311 = v303;
            v312 = v304;
            v313 = v305;
            v314 = v306;
            v307 = v299;
            v308 = v300;
            v309 = v301;
            v310 = v302;
            if (sub_1B0C8699C(&v307) != 1)
            {
              v319 = v311;
              v320 = v312;
              v321 = v313;
              v322 = v314;
              v315 = v307;
              v316 = v308;
              v317 = v309;
              v318 = v310;
              v105(&v315);
              sub_1B0398EFC(&v299, &qword_1EB6E5F30, "nP\b");
            }

            sub_1B0398EFC(&v266, &qword_1EB6E5F00, &unk_1B0EDE440);
            *(v245 + 16) = 2;
            v219 = v106[10];
            v263 = v106[9];
            v264 = v219;
            v265[0] = v106[11];
            *(v265 + 9) = *(v106 + 185);
            v220 = v106[6];
            v259 = v106[5];
            v260 = v220;
            v221 = v106[8];
            v261 = v106[7];
            v262 = v221;
            v222 = v106[2];
            v255 = *v103;
            v256 = v222;
            v223 = v106[4];
            v257 = v106[3];
            v258 = v223;
            v224 = v297;
            v106[9] = v296;
            v106[10] = v224;
            v106[11] = v298[0];
            *(v106 + 185) = *(v298 + 9);
            v225 = v293;
            v106[5] = v292;
            v106[6] = v225;
            v226 = v295;
            v106[7] = v294;
            v106[8] = v226;
            v227 = v289;
            *v103 = v288;
            v106[2] = v227;
            v228 = v291;
            v106[3] = v290;
            v106[4] = v228;
            sub_1B0398EFC(&v255, &qword_1EB6E5F00, &unk_1B0EDE440);
            goto LABEL_88;
          }
        }

LABEL_73:
        swift_beginAccess();
        v185 = v103[9];
        v331 = v103[8];
        v332 = v185;
        v333[0] = v103[10];
        *(v333 + 9) = *(v103 + 169);
        v186 = v103[5];
        v327 = v103[4];
        v328 = v186;
        v187 = v103[7];
        v329 = v103[6];
        v330 = v187;
        v188 = v103[1];
        v323 = *v103;
        v324 = v188;
        v189 = v103[3];
        v325 = v103[2];
        v326 = v189;
        v190 = v297;
        v103[8] = v296;
        v103[9] = v190;
        v103[10] = v298[0];
        *(v103 + 169) = *(v298 + 9);
        v191 = v293;
        v103[4] = v292;
        v103[5] = v191;
        v192 = v295;
        v103[6] = v294;
        v103[7] = v192;
        v193 = v289;
        *v103 = v288;
        v103[1] = v193;
        v194 = v291;
        v103[2] = v290;
        v103[3] = v194;
        sub_1B0398EFC(&v323, &qword_1EB6E5F00, &unk_1B0EDE440);
LABEL_88:

        goto LABEL_60;
      }

      goto LABEL_91;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v254[0] = a1;
  LOWORD(v254[1]) = a2;
  BYTE2(v254[1]) = BYTE2(a2);
  BYTE3(v254[1]) = BYTE3(a2);
  BYTE4(v254[1]) = BYTE4(a2);
  v15 = BYTE6(a2);
  BYTE5(v254[1]) = BYTE5(a2);
  swift_retain_n();
  v16 = sub_1B0CA3C44(0, BYTE6(a2), v254, v254 + BYTE6(a2));
  v17 = sub_1B0CA3EA4(MEMORY[0x1E69E7CC0], v16);
  if (v17)
  {
    v19 = v17;
    v20 = v18;
    *&v323 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
    sub_1B0CA4364(v19, v20, a3 & 1, &v323, v16);

    v21 = v323;
  }

  else
  {

    v21 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
  }

  v47 = swift_allocObject();
  v248 = v243;
  *(v47 + 16) = v21;
  MEMORY[0x1EEE9AC00](v47);
  v239 = v253;
  v240 = a5;
  v241 = a6;
  v242 = v251;
  v48 = swift_allocObject();
  v49 = v48 + 1;
  sub_1B0C835A8(&v288);
  v50 = v297;
  v48[9] = v296;
  v48[10] = v50;
  v48[11] = v298[0];
  *(v48 + 185) = *(v298 + 9);
  v51 = v293;
  v48[5] = v292;
  v48[6] = v51;
  v52 = v295;
  v48[7] = v294;
  v48[8] = v52;
  v53 = v289;
  v48[1] = v288;
  v48[2] = v53;
  v54 = v291;
  v48[3] = v290;
  v48[4] = v54;
  v55 = swift_allocObject();
  v246 = v238;
  *(v55 + 16) = 2;
  v56 = (v55 + 16);
  v234 = v48;
  v235 = MEMORY[0x1EEE9AC00](v55);
  v247 = v235;
  v236 = sub_1B0CA1EE4;
  v237 = v238;
  MEMORY[0x1EEE9AC00](v235);
  v230 = v48 + 1;
  v231 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
  v232 = 0;
  v57 = v250;
  sub_1B0CA33D0(3, 0, v15, v254, v254 + v15);
  if (!v57)
  {
    v249 = a6;
    v334 = MEMORY[0x1E69E7CC0];
    v335 = v58;
    v336 = v59;
    v337 = v60;
    v338 = v61;
    sub_1B0CA286C(sub_1B0C844F4, v233, sub_1B0C8450C, v229, sub_1B0CA1F5C, v47);
    swift_beginAccess();
    if (*v56 != 2)
    {
      goto LABEL_64;
    }

    swift_beginAccess();
    v121 = v48[10];
    v122 = v48[8];
    v274 = v48[9];
    v275 = v121;
    v123 = v48[10];
    v276[0] = v48[11];
    *(v276 + 9) = *(v48 + 185);
    v124 = v48[6];
    v125 = v48[4];
    v270 = v48[5];
    v271 = v124;
    v126 = v48[6];
    v127 = v48[8];
    v272 = v48[7];
    v273 = v127;
    v128 = v48[2];
    v266 = *v49;
    v267 = v128;
    v129 = v48[4];
    v131 = *v49;
    v130 = v48[2];
    v268 = v48[3];
    v269 = v129;
    v285 = v274;
    v286 = v123;
    v287[0] = v48[11];
    *(v287 + 9) = *(v48 + 185);
    v281 = v270;
    v282 = v126;
    v283 = v272;
    v284 = v122;
    v277 = v131;
    v278 = v130;
    v279 = v268;
    v280 = v125;
    if (sub_1B03BCF14(&v277) == 1)
    {
LABEL_64:
      swift_beginAccess();
      v132 = v48[10];
      v331 = v48[9];
      v332 = v132;
      v333[0] = v48[11];
      *(v333 + 9) = *(v48 + 185);
      v133 = v48[6];
      v327 = v48[5];
      v328 = v133;
      v134 = v48[8];
      v329 = v48[7];
      v330 = v134;
      v135 = v48[2];
      v323 = *v49;
      v324 = v135;
      v136 = v48[4];
      v325 = v48[3];
      v326 = v136;
      v137 = v297;
      v48[9] = v296;
      v48[10] = v137;
      v48[11] = v298[0];
      *(v48 + 185) = *(v298 + 9);
      v138 = v293;
      v48[5] = v292;
      v48[6] = v138;
      v139 = v295;
      v48[7] = v294;
      v48[8] = v139;
      v140 = v289;
      *v49 = v288;
      v48[2] = v140;
      v141 = v291;
      v48[3] = v290;
      v48[4] = v141;
      sub_1B0398EFC(&v323, &qword_1EB6E5F00, &unk_1B0EDE440);
LABEL_80:

      goto LABEL_81;
    }

    v331 = v285;
    v332 = v286;
    v333[0] = v287[0];
    *(v333 + 9) = *(v287 + 9);
    v327 = v281;
    v328 = v282;
    v329 = v283;
    v330 = v284;
    v323 = v277;
    v324 = v278;
    v325 = v279;
    v326 = v280;
    sub_1B0CA1DC8(&v266, &v255);
    v195 = v252;

    sub_1B0CA1DC8(&v266, &v255);
    sub_1B0C85B6C(&v323, v253, v195, &v299);
    v311 = v303;
    v312 = v304;
    v313 = v305;
    v314 = v306;
    v307 = v299;
    v308 = v300;
    v309 = v301;
    v310 = v302;
    if (sub_1B0C8699C(&v307) != 1)
    {
      v319 = v311;
      v320 = v312;
      v321 = v313;
      v322 = v314;
      v315 = v307;
      v316 = v308;
      v317 = v309;
      v318 = v310;
      v249(&v315);
      sub_1B0398EFC(&v299, &qword_1EB6E5F30, "nP\b");
    }

LABEL_79:
    sub_1B0398EFC(&v266, &qword_1EB6E5F00, &unk_1B0EDE440);
    *(v247 + 16) = 2;
    v197 = v49[9];
    v263 = v49[8];
    v264 = v197;
    v265[0] = v49[10];
    *(v265 + 9) = *(v49 + 169);
    v198 = v49[5];
    v259 = v49[4];
    v260 = v198;
    v199 = v49[7];
    v261 = v49[6];
    v262 = v199;
    v200 = v49[1];
    v255 = *v49;
    v256 = v200;
    v201 = v49[3];
    v257 = v49[2];
    v258 = v201;
    v202 = v297;
    v49[8] = v296;
    v49[9] = v202;
    v49[10] = v298[0];
    *(v49 + 169) = *(v298 + 9);
    v203 = v293;
    v49[4] = v292;
    v49[5] = v203;
    v204 = v295;
    v49[6] = v294;
    v49[7] = v204;
    v205 = v289;
    *v49 = v288;
    v49[1] = v205;
    v206 = v291;
    v49[2] = v290;
    v49[3] = v206;
    sub_1B0398EFC(&v255, &qword_1EB6E5F00, &unk_1B0EDE440);
    goto LABEL_80;
  }

  v62 = v57;
LABEL_38:

LABEL_61:

  v120 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0CA01E4(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, void (*a6)(char *, char *), uint64_t a7, void *a8)
{
  v96 = a4;
  v97 = a5;
  v158 = *MEMORY[0x1E69E9840];
  v15 = a2 >> 62;
  swift_retain_n();
  if (v15 <= 1)
  {
    if (!v15)
    {
      v98[0] = a1;
      LOWORD(v98[1]) = a2;
      BYTE2(v98[1]) = BYTE2(a2);
      BYTE3(v98[1]) = BYTE3(a2);
      BYTE4(v98[1]) = BYTE4(a2);
      BYTE5(v98[1]) = BYTE5(a2);

      swift_retain_n();
      sub_1B0C88870(3u, 0, BYTE6(a2), v98, v98 + BYTE6(a2), a8, &v100);
      if (!v8)
      {
        v16 = v107;
        *&v109 = v100;
        BYTE8(v109) = v101;
        v110 = v102;
        v111 = v103;
        *&v112 = v104;
        WORD4(v112) = v105;
        v113 = v106;
        sub_1B0C87794();
        v134[2] = v111;
        v134[3] = v112;
        v135 = v113;
        v134[0] = v109;
        v134[1] = v110;
        sub_1B0C86F90(3u, a3, a6, a7);
        sub_1B0C8880C(v134);
        v40 = *(v16 + 16);
        if (v40)
        {
          v41 = v40 - 1;
          v95 = v16;
          for (i = v16 + 56; ; i += 88)
          {
            v43 = *(i - 16);
            v44 = *(i - 8);
            v45 = *i;
            v46 = *(i + 8);
            v47 = *(i + 16);
            v48 = *(i + 24);
            v49 = *(i + 32);
            v50 = *(i + 48);
            v51 = *(i + 56);
            v52 = *(i + 40);
            v125[0] = *(i - 24);
            v125[1] = v43;
            v125[2] = v44;
            v126 = v45;
            v127 = v46;
            v128 = v47;
            v129 = v48;
            v130 = v49;
            v131 = v52;
            v132 = v50;
            v133 = v51;
            v100 = v125[0];
            v101 = v43;
            *&v102 = v44;
            BYTE8(v102) = v45;
            *&v103 = v46;
            *(&v103 + 1) = v47;
            v104 = v48;
            v105 = v49;
            LOBYTE(v106) = v52;
            v107 = v50;
            v108 = v51;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0C8926C(v46, v47, v48, v49, v52);
            sub_1B07B47AC(v125, v99);
            sub_1B07AD030(&v100);
            v96(v125);
            sub_1B07AD030(v125);
            if (!v41)
            {
              break;
            }

            --v41;
          }
        }

LABEL_59:

        goto LABEL_60;
      }

      goto LABEL_60;
    }

    if (a1 >> 32 >= a1)
    {
      v95 = a7;
      v30 = v8;

      v94 = &v94;
      swift_retain_n();
      v31 = sub_1B0E42A98();
      if (v31)
      {
        v32 = sub_1B0E42AC8();
        if (__OFSUB__(a1, v32))
        {
          goto LABEL_68;
        }

        v31 += a1 - v32;
      }

      v33 = sub_1B0E42AB8();
      if (v33 >= (a1 >> 32) - a1)
      {
        v34 = (a1 >> 32) - a1;
      }

      else
      {
        v34 = v33;
      }

      if (v31)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      if ((v35 & 0x8000000000000000) == 0)
      {
        v36 = v34 + v31;
        if (v31)
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        sub_1B0C88870(3u, 0, v35, v31, v37, a8, &v100);
        if (!v30)
        {
          v38 = v107;
          *&v109 = v100;
          BYTE8(v109) = v101;
          v110 = v102;
          v111 = v103;
          *&v112 = v104;
          WORD4(v112) = v105;
          v113 = v106;
          sub_1B0C87794();
          v145[2] = v111;
          v145[3] = v112;
          v146 = v113;
          v145[0] = v109;
          v145[1] = v110;
          sub_1B0C86F90(3u, a3, a6, v95);
          sub_1B0C8880C(v145);
          v79 = *(v38 + 16);
          if (v79)
          {
            v80 = v79 - 1;
            v95 = v38;
            for (j = v38 + 56; ; j += 88)
            {
              v82 = *(j - 16);
              v83 = *(j - 8);
              v84 = *j;
              v85 = *(j + 8);
              v86 = *(j + 16);
              v87 = *(j + 24);
              v88 = *(j + 32);
              v89 = *(j + 48);
              v90 = *(j + 56);
              v91 = *(j + 40);
              v136[0] = *(j - 24);
              v136[1] = v82;
              v136[2] = v83;
              v137 = v84;
              v138 = v85;
              v139 = v86;
              v140 = v87;
              v141 = v88;
              v142 = v91;
              v143 = v89;
              v144 = v90;
              v100 = v136[0];
              v101 = v82;
              *&v102 = v83;
              BYTE8(v102) = v84;
              *&v103 = v85;
              *(&v103 + 1) = v86;
              v104 = v87;
              v105 = v88;
              LOBYTE(v106) = v91;
              v107 = v89;
              v108 = v90;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0C8926C(v85, v86, v87, v88, v91);
              sub_1B07B47AC(v136, v99);
              sub_1B07AD030(&v100);
              v96(v136);
              sub_1B07AD030(v136);
              if (!v80)
              {
                break;
              }

              --v80;
            }
          }

LABEL_62:

          goto LABEL_61;
        }

        goto LABEL_38;
      }

      goto LABEL_66;
    }

    __break(1u);
    goto LABEL_64;
  }

  if (v15 != 2)
  {
    memset(v98, 0, 14);

    swift_retain_n();
    sub_1B0C88870(3u, 0, 0, v98, v98, a8, &v100);
    if (!v8)
    {
      v39 = v107;
      *&v109 = v100;
      BYTE8(v109) = v101;
      v110 = v102;
      v111 = v103;
      *&v112 = v104;
      WORD4(v112) = v105;
      v113 = v106;
      sub_1B0C87794();
      v123[2] = v111;
      v123[3] = v112;
      v124 = v113;
      v123[0] = v109;
      v123[1] = v110;
      sub_1B0C86F90(3u, a3, a6, a7);
      sub_1B0C8880C(v123);
      v53 = *(v39 + 16);
      if (v53)
      {
        v54 = v53 - 1;
        v95 = v39;
        for (k = v39 + 56; ; k += 88)
        {
          v56 = *(k - 16);
          v57 = *(k - 8);
          v58 = *k;
          v59 = *(k + 8);
          v60 = *(k + 16);
          v61 = *(k + 24);
          v62 = *(k + 32);
          v63 = *(k + 48);
          v64 = *(k + 56);
          v65 = *(k + 40);
          v114[0] = *(k - 24);
          v114[1] = v56;
          v114[2] = v57;
          v115 = v58;
          v116 = v59;
          v117 = v60;
          v118 = v61;
          v119 = v62;
          v120 = v65;
          v121 = v63;
          v122 = v64;
          v100 = v114[0];
          v101 = v56;
          *&v102 = v57;
          BYTE8(v102) = v58;
          *&v103 = v59;
          *(&v103 + 1) = v60;
          v104 = v61;
          v105 = v62;
          LOBYTE(v106) = v65;
          v107 = v63;
          v108 = v64;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0C8926C(v59, v60, v61, v62, v65);
          sub_1B07B47AC(v114, v99);
          sub_1B07AD030(&v100);
          v96(v114);
          sub_1B07AD030(v114);
          if (!v54)
          {
            break;
          }

          --v54;
        }
      }

      goto LABEL_59;
    }

LABEL_60:

    goto LABEL_61;
  }

  v95 = a7;
  v17 = v8;
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);

  v94 = &v94;
  swift_retain_n();
  v20 = sub_1B0E42A98();
  if (v20)
  {
    v21 = sub_1B0E42AC8();
    if (__OFSUB__(v18, v21))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
    }

    v20 += v18 - v21;
  }

  v22 = __OFSUB__(v19, v18);
  v23 = v19 - v18;
  if (v22)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v24 = sub_1B0E42AB8();
  if (v24 >= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  if (v20)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 < 0)
  {
    goto LABEL_65;
  }

  v27 = v25 + v20;
  if (v20)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  sub_1B0C88870(3u, 0, v26, v20, v28, a8, &v100);
  if (!v17)
  {
    v29 = v107;
    *&v109 = v100;
    BYTE8(v109) = v101;
    v110 = v102;
    v111 = v103;
    *&v112 = v104;
    WORD4(v112) = v105;
    v113 = v106;
    sub_1B0C87794();
    v156[2] = v111;
    v156[3] = v112;
    v157 = v113;
    v156[0] = v109;
    v156[1] = v110;
    sub_1B0C86F90(3u, a3, a6, v95);
    sub_1B0C8880C(v156);
    v66 = *(v29 + 16);
    if (v66)
    {
      v67 = v66 - 1;
      v95 = v29;
      for (m = v29 + 56; ; m += 88)
      {
        v69 = *(m - 16);
        v70 = *(m - 8);
        v71 = *m;
        v72 = *(m + 8);
        v73 = *(m + 16);
        v74 = *(m + 24);
        v75 = *(m + 32);
        v76 = *(m + 48);
        v77 = *(m + 56);
        v78 = *(m + 40);
        v147[0] = *(m - 24);
        v147[1] = v69;
        v147[2] = v70;
        v148 = v71;
        v149 = v72;
        v150 = v73;
        v151 = v74;
        v152 = v75;
        v153 = v78;
        v154 = v76;
        v155 = v77;
        v100 = v147[0];
        v101 = v69;
        *&v102 = v70;
        BYTE8(v102) = v71;
        *&v103 = v72;
        *(&v103 + 1) = v73;
        v104 = v74;
        v105 = v75;
        LOBYTE(v106) = v78;
        v107 = v76;
        v108 = v77;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0C8926C(v72, v73, v74, v75, v78);
        sub_1B07B47AC(v147, v99);
        sub_1B07AD030(&v100);
        v96(v147);
        sub_1B07AD030(v147);
        if (!v67)
        {
          break;
        }

        --v67;
      }
    }

    goto LABEL_62;
  }

LABEL_38:

LABEL_61:

  v93 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0CA0B0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v10 = a2 >> 62;
  swift_retain_n();
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      memset(v29, 0, 14);
      swift_retain_n();
      v11 = v29;
      v12 = a5;
      v13 = 0;
      goto LABEL_33;
    }

    v15 = *(a1 + 16);
    v14 = *(a1 + 24);

    v28 = &v28;
    swift_retain_n();
    v16 = sub_1B0E42A98();
    if (v16)
    {
      v17 = sub_1B0E42AC8();
      if (__OFSUB__(v15, v17))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v16 += v15 - v17;
    }

    v18 = __OFSUB__(v14, v15);
    v19 = v14 - v15;
    if (v18)
    {
      goto LABEL_36;
    }

    v20 = sub_1B0E42AB8();
    if (v20 >= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    if (v16)
    {
      a1 = v21;
    }

    else
    {
      a1 = 0;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v29[0] = a1;
    LOWORD(v29[1]) = a2;
    BYTE2(v29[1]) = BYTE2(a2);
    BYTE3(v29[1]) = BYTE3(a2);
    BYTE4(v29[1]) = BYTE4(a2);
    BYTE5(v29[1]) = BYTE5(a2);
    swift_retain_n();
    v11 = v29 + BYTE6(a2);
    v12 = a5;
    v13 = BYTE6(a2);
LABEL_33:
    sub_1B0C8D8F8(0, v13, v29, v11, a3, a4, v12);
    goto LABEL_34;
  }

  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v28 = &v28;
  swift_retain_n();
  v16 = sub_1B0E42A98();
  if (v16)
  {
    v22 = sub_1B0E42AC8();
    if (__OFSUB__(a1, v22))
    {
      goto LABEL_39;
    }

    v16 += a1 - v22;
  }

  v23 = sub_1B0E42AB8();
  if (v23 >= (a1 >> 32) - a1)
  {
    v21 = (a1 >> 32) - a1;
  }

  else
  {
    v21 = v23;
  }

  if (v16)
  {
    a1 = v21;
  }

  else
  {
    a1 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_37;
  }

LABEL_28:
  v24 = v21 + v16;
  if (v16)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  sub_1B0C8D8F8(0, a1, v16, v25, a3, a4, a5);

LABEL_34:

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0CA0DC0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = a2 >> 62;
  swift_retain_n();
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      memset(v16, 0, 14);
      swift_retain_n();
      v9 = v16;
      v10 = a4;
      v11 = 0;
      goto LABEL_9;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
  }

  else
  {
    if (!v8)
    {
      v16[0] = a1;
      LOWORD(v16[1]) = a2;
      BYTE2(v16[1]) = BYTE2(a2);
      BYTE3(v16[1]) = BYTE3(a2);
      BYTE4(v16[1]) = BYTE4(a2);
      BYTE5(v16[1]) = BYTE5(a2);
      swift_retain_n();
      v9 = v16 + BYTE6(a2);
      v10 = a4;
      v11 = BYTE6(a2);
LABEL_9:
      sub_1B0CB9328(0, v11, v16, v9, a3, v10);
      goto LABEL_10;
    }

    v13 = a1;
    v12 = a1 >> 32;
    if (v12 < v13)
    {
      __break(1u);
    }
  }

  swift_retain_n();
  sub_1B0CA102C(v13, v12, a3, a4);
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0CA0F78(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_1B0E42A98();
  v8 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
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

  v11 = sub_1B0E42AB8();
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

uint64_t sub_1B0CA102C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t *a4@<X8>)
{

  result = sub_1B0E42A98();
  v9 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
    if (__OFSUB__(a1, result))
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = sub_1B0E42AB8();
  if (result >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = result;
  }

  if (v9)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 < 0)
  {
    goto LABEL_17;
  }

  v14 = v12 + v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  sub_1B0CB9328(0, v13, v9, v15, a3, a4);
}

uint64_t sub_1B0CA1108(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;

  result = sub_1B0E42A98();
  v10 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
    if (__OFSUB__(a1, result))
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = sub_1B0E42AB8();
  if (result >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = result;
  }

  if (v10)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 < 0)
  {
    goto LABEL_19;
  }

  v15 = v13 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  sub_1B0C646B4(0, v14, v10, v16, a4, &v17);

  if (!v5)
  {
    return v17;
  }

  return result;
}

void *sub_1B0CA11F4(uint64_t a1, unint64_t a2, void *a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v16[0] = a1;
      LOWORD(v16[1]) = a2;
      BYTE2(v16[1]) = BYTE2(a2);
      BYTE3(v16[1]) = BYTE3(a2);
      BYTE4(v16[1]) = BYTE4(a2);
      v4 = v16;
      v8 = BYTE6(a2);
      BYTE5(v16[1]) = BYTE5(a2);
      swift_retain_n();
      v9 = v16 + v8;
      v10 = v8;
      goto LABEL_9;
    }

    v11 = a1;
    v12 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    swift_retain_n();
    v4 = sub_1B0CA1108(v11, v12, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);

    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v16, 0, 14);
  swift_retain_n();
  v9 = v16;
  v10 = 0;
LABEL_9:
  sub_1B0C646B4(0, v10, v16, v9, a3, &v15);

  if (!v3)
  {
    v4 = v15;
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v4;
}

void *sub_1B0CA13C0(uint64_t a1, void *a2)
{
  v5 = sub_1B0E443C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Message.Data(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_1B0CA1EC8;
  v21 = a2;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    sub_1B0C646B4(0, 0, 0, 0, a2, v22);
    v14 = v2;

    if (!v2)
    {
      return v22[0];
    }
  }

  else
  {
    sub_1B0C934C4(a1, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = (*(v6 + 32))(v9, v13, v5);
      MEMORY[0x1EEE9AC00](v15);
      *&v19[-32] = v9;
      *&v19[-24] = sub_1B0C74D94;
      *&v19[-16] = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5FD8, "2K\b");
      v14 = v9;
      sub_1B0E44328();
      (*(v6 + 8))(v9, v5);

      if (!v2)
      {
        return v22[1];
      }
    }

    else
    {
      v16 = *v13;
      v17 = v13[1];

      v14 = sub_1B0CA11F4(v16, v17, a2);

      sub_1B0391D50(v16, v17);
    }
  }

  return v14;
}

char *sub_1B0CA16C0(uint64_t a1, unint64_t a2)
{
  v2 = BYTE6(a2);
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v25, 0, 14);
      v4 = swift_retain_n();
      v5 = v25;
      v6 = 0;
      goto LABEL_33;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    swift_retain_n();
    v9 = sub_1B0E42A98();
    if (v9)
    {
      v10 = sub_1B0E42AC8();
      if (__OFSUB__(v7, v10))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v9 += v7 - v10;
    }

    v11 = __OFSUB__(v8, v7);
    v12 = v8 - v7;
    if (v11)
    {
      goto LABEL_36;
    }

    a1 = sub_1B0E42AB8();
    if (a1 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = a1;
    }

    if (v9)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v25[0] = a1;
    LOWORD(v25[1]) = a2;
    BYTE2(v25[1]) = BYTE2(a2);
    BYTE3(v25[1]) = BYTE3(a2);
    BYTE4(v25[1]) = BYTE4(a2);
    BYTE5(v25[1]) = BYTE5(a2);
    v4 = swift_retain_n();
    v5 = v25 + v2;
    v6 = v2;
LABEL_33:
    v22 = sub_1B0CB0F14(v4, 0, v6, v25, v5);
    goto LABEL_34;
  }

  v15 = a1;
  v16 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  swift_retain_n();
  v9 = sub_1B0E42A98();
  if (v9)
  {
    v17 = sub_1B0E42AC8();
    if (__OFSUB__(v15, v17))
    {
      goto LABEL_39;
    }

    v9 += v15 - v17;
  }

  v18 = sub_1B0E42AB8();
  if (v18 >= v16)
  {
    v13 = v16;
  }

  else
  {
    v13 = v18;
  }

  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 < 0)
  {
    goto LABEL_37;
  }

LABEL_28:
  v19 = v13 + v9;
  if (v9)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v22 = sub_1B0CB0F14(v21, 0, v14, v9, v20);
LABEL_34:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

char *sub_1B0CA192C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B0E443C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Message.Data(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1B0CA1C0C;
  v22 = a2;
  swift_retain_n();
  if (Message.isEmpty.getter())
  {

    v15 = sub_1B0CB0F14(v14, 0, 0, 0, 0);
  }

  else
  {
    sub_1B0C934C4(a1, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = (*(v6 + 32))(v9, v13, v5);
      MEMORY[0x1EEE9AC00](v16);
      *&v20[-32] = v9;
      *&v20[-24] = sub_1B0C76E28;
      *&v20[-16] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2130, &qword_1B0E9B5C0);
      v15 = v9;
      sub_1B0E44328();
      if (!v2)
      {
        (*(v6 + 8))(v9, v5);

        return v23;
      }

      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v17 = *v13;
      v18 = v13[1];

      v15 = sub_1B0CA16C0(v17, v18);

      sub_1B0391D50(v17, v18);
    }
  }

  return v15;
}

uint64_t sub_1B0CA1C40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v3 + 24) - v4;
  }

  else
  {
    v5 = 0;
  }

  if (result)
  {
    if (v4)
    {
      v6 = v5 == a2 - result;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      *a3 = 0;
      return result;
    }
  }

  else
  {
    v7 = v5 == 0;
    if (v4)
    {
      v8 = v5 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      goto LABEL_21;
    }
  }

  if (result)
  {
    v9 = v4 == result;
  }

  else
  {
    v9 = 0;
  }

  v7 = v9;
LABEL_21:
  *a3 = v7;
  return result;
}

void *sub_1B0CA1C94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[2];
  v9 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  result = v6(&v11, a1, a1 + v9);
  if (!v3)
  {
    *a2 = v11;
  }

  return result;
}

uint64_t sub_1B0CA1DC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F00, &unk_1B0EDE440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CA1F60(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2 - isStackAllocationSafe;
  if (isStackAllocationSafe)
  {
    v4 = a2 - isStackAllocationSafe;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 < 0)
    {
      __break(1u);
    }

    v2 = isStackAllocationSafe;
    if (v5 < 1025)
    {
      goto LABEL_7;
    }
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v11 = swift_slowAlloc();
    v12 = sub_1B0CA20B0(v11, v2, a2);
    MEMORY[0x1B272C230](v11, -1, -1);
    result = v12;
    goto LABEL_11;
  }

LABEL_7:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v7 = v13 - v6;
  if (v2)
  {
    memmove(v13 - v6, v2, v3);
  }

  else
  {
    v3 = 0;
  }

  v7[v3] = 0;
  result = CompactEncDet_EncodingNameAliasToEncoding(v7);
LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0CA20B0(void *a1, void *__src, uint64_t a3)
{
  if (a1)
  {
    if (!__src)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v4 = a3 - __src;
    v5 = a1;
    memmove(a1, __src, a3 - __src);
    a1 = v5;
  }

  else
  {
    v4 = a3 - __src;
  }

  if (__src)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

LABEL_9:
  *(a1 + v6) = 0;
  return CompactEncDet_EncodingNameAliasToEncoding(a1);
}

uint64_t sub_1B0CA2130()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 8);
  MEMORY[0x1B2726E80](91, 0xE100000000000000);
  sub_1B0E46508();
  MEMORY[0x1B2726E80](8285, 0xE200000000000000);
  v6 = sub_1B0CA2228(v5, v2, v3, v4);
  MEMORY[0x1B2726E80](v6);

  return 0;
}

uint64_t sub_1B0CA21F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a3 - a2 >= a4)
    {
      return a2 + a4;
    }

    __break(1u);
  }

  else if (a4 <= 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CA2228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0x3E6C696E3CLL;
  }

  if (a3 - a2 < a4)
  {
    __break(1u);
  }

  else
  {
    sub_1B0E46508();
    MEMORY[0x1B2726E80](3943982, 0xE300000000000000);
    sub_1B0E46508();
    MEMORY[0x1B2726E80](3943982, 0xE300000000000000);
    sub_1B0E46508();
    return 0;
  }

  return result;
}

char *sub_1B0CA233C(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v7 = a3;
  v8 = a2;
  v9 = 0;
  v10 = a5 - a4;
  v48 = a5 - a4;
  if (!a4)
  {
    v10 = 0;
  }

  v50 = v10;
  v11 = result;
  v49 = result;
  while (1)
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        if (!a4)
        {
          goto LABEL_45;
        }

        v16 = a4 + v8;
        result = memchr((a4 + v8), 10, v7 - v8);
        if (!result)
        {
          goto LABEL_45;
        }

        v17 = &result[-v16];
        if (&result[-v16] < 0)
        {
          goto LABEL_45;
        }

        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_144;
        }

        if (v7 - v8 < v18)
        {
          goto LABEL_45;
        }

        v15 = &v17[v8];
        if (__OFADD__(v17, v8))
        {
          goto LABEL_152;
        }

        v5 = &v18[v8];
        if (__OFADD__(v18, v8))
        {
          goto LABEL_154;
        }

        if (v18 < v17 || v5 < v15)
        {
          goto LABEL_160;
        }
      }

      else
      {
        if (!a4)
        {
          goto LABEL_45;
        }

        v22 = a4 + v8;
        result = memchr((a4 + v8), 10, v7 - v8);
        if (!result)
        {
          goto LABEL_45;
        }

        v23 = &result[-v22];
        if (&result[-v22] < 0)
        {
          goto LABEL_45;
        }

        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_146;
        }

        if (v7 - v8 < v24)
        {
LABEL_45:
          v5 = 0;
          v25 = 1;
          v15 = v7;
          v26 = v7 - v8;
          if (v7 == v8)
          {
            goto LABEL_119;
          }

          goto LABEL_46;
        }

        v15 = &v23[v8];
        if (__OFADD__(v23, v8))
        {
          goto LABEL_149;
        }

        v5 = &v24[v8];
        if (__OFADD__(v24, v8))
        {
          goto LABEL_156;
        }

        if (v24 < v23 || v5 < v15)
        {
          goto LABEL_157;
        }

        if (v8 < v15)
        {
          if (v15 > v7)
          {
            goto LABEL_162;
          }

          if (*(a4 + v15 - 1) == 13)
          {
            --v15;
          }
        }
      }
    }

    else if (v11)
    {
      if (!a4)
      {
        goto LABEL_45;
      }

      v19 = a4 + v8;
      result = memchr((a4 + v8), 13, v7 - v8);
      if (!result)
      {
        goto LABEL_45;
      }

      v20 = &result[-v19];
      if (&result[-v19] < 0)
      {
        goto LABEL_45;
      }

      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_143;
      }

      if (v7 - v8 < v21)
      {
        goto LABEL_45;
      }

      v15 = &v20[v8];
      if (__OFADD__(v20, v8))
      {
        goto LABEL_151;
      }

      v5 = &v21[v8];
      if (__OFADD__(v21, v8))
      {
        goto LABEL_153;
      }

      if (v21 < v20 || v5 < v15)
      {
        goto LABEL_158;
      }
    }

    else
    {
      if (!a4)
      {
        goto LABEL_45;
      }

      v12 = a4 + v8;
      result = memmem((a4 + v8), v7 - v8, "\r\n", 2uLL);
      if (!result)
      {
        goto LABEL_45;
      }

      v13 = &result[-v12];
      if (&result[-v12] < 0)
      {
        goto LABEL_45;
      }

      v14 = v13 + 2;
      if (__OFADD__(v13, 2))
      {
        goto LABEL_145;
      }

      if (v7 - v8 < v14)
      {
        goto LABEL_45;
      }

      v15 = &v13[v8];
      if (__OFADD__(v13, v8))
      {
        goto LABEL_150;
      }

      v5 = &v14[v8];
      if (__OFADD__(v14, v8))
      {
        goto LABEL_155;
      }

      if (v14 < v13 || v5 < v15)
      {
        goto LABEL_159;
      }
    }

    if (v15 < v8)
    {
      goto LABEL_135;
    }

    if (v15 > v7)
    {
      goto LABEL_136;
    }

    v25 = 0;
    v26 = v15 - v8;
    if (v15 == v8)
    {
      goto LABEL_119;
    }

LABEL_46:
    if (v8 < 0 || v50 < v8)
    {
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
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
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
      return result;
    }

    if (v15 < 0 || v50 < v15)
    {
      goto LABEL_125;
    }

    if (!a4)
    {
      break;
    }

    if (v26 > 399)
    {
      break;
    }

    v27 = a4 + v8;
    v28 = v9;
    v29 = v7;
    v30 = v25;
    v31 = v5;
    result = memchr((a4 + v8), 58, v26);
    v5 = v31;
    v25 = v30;
    v7 = v29;
    v9 = v28;
    if (!result)
    {
      break;
    }

    v32 = &result[-v27];
    if (&result[-v27] < 0)
    {
      break;
    }

    v33 = (v32 + 1);
    if (__OFADD__(v32, 1))
    {
      goto LABEL_133;
    }

    if (v26 < v33)
    {
      break;
    }

    v34 = &v32[v8];
    if (__OFADD__(v32, v8))
    {
      goto LABEL_137;
    }

    if (__OFADD__(v33, v8))
    {
      goto LABEL_138;
    }

    if (v33 < v32 || v33 + v8 < v34)
    {
      goto LABEL_139;
    }

    if (v48 < v8)
    {
      goto LABEL_140;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      goto LABEL_141;
    }

    if (v48 < v34)
    {
      goto LABEL_142;
    }

    if ((v32 - 61) < 0xFFFFFFFFFFFFFFC4)
    {
      break;
    }

    if (v34 < v8)
    {
      goto LABEL_147;
    }

    if (v15 < v34)
    {
      goto LABEL_148;
    }

    if (v34 != v8)
    {
      v44 = v8;
      while (v44 < v34)
      {
        v45 = *(a4 + v44);
        v38 = v45 > 0x20;
        v46 = (1 << v45) & 0x100002600;
        if (!v38 && v46 != 0)
        {
          goto LABEL_64;
        }

        if (v34 == ++v44)
        {
          goto LABEL_90;
        }
      }

      goto LABEL_134;
    }

LABEL_90:
    if (v25)
    {
      if (v7 >= v8)
      {
        return v7;
      }

      goto LABEL_161;
    }

    if (v5 > v7)
    {
      goto LABEL_129;
    }

    if (v5 < v8)
    {
      goto LABEL_130;
    }

    if (v9 <= 0x12)
    {
      ++v9;
      v8 = v5;
      v11 = v49;
      if (v5 != v7)
      {
        continue;
      }
    }

    return v5;
  }

LABEL_64:
  if (!v9)
  {
    return 0;
  }

  if (v26 <= 399)
  {
    if (v15 <= v8)
    {
      v35 = v8;
    }

    else
    {
      v35 = v15;
    }

    v36 = v8;
    while (1)
    {
      if (v35 == v36)
      {
        __break(1u);
        goto LABEL_124;
      }

      v37 = *(a4 + v36);
      v38 = v37 > 0x20;
      v39 = (1 << v37) & 0x100002600;
      if (v38 || v39 == 0)
      {
        break;
      }

      if (v15 == ++v36)
      {
        v41 = 1;
        v36 = v15;
        v42 = v15 - v8;
        if (v15 < v8)
        {
          goto LABEL_126;
        }

        goto LABEL_79;
      }
    }

    v41 = 0;
    v42 = v36 - v8;
    if (v36 < v8)
    {
      goto LABEL_126;
    }

LABEL_79:
    if (v15 < v36)
    {
      goto LABEL_127;
    }

    if (a4)
    {
      if (v48 < v8)
      {
        goto LABEL_131;
      }

      if (v48 < v36)
      {
        goto LABEL_128;
      }
    }

    else
    {
      if (v8 > 0)
      {
        goto LABEL_132;
      }

      if (v36 > 0)
      {
        goto LABEL_128;
      }
    }

    if ((v42 - 13) < 0xFFFFFFFFFFFFFFF4)
    {
      v43 = 1;
    }

    else
    {
      v43 = v41;
    }

    if (v43)
    {
      goto LABEL_119;
    }

    goto LABEL_90;
  }

LABEL_119:
  v5 = v8;
  if (v9)
  {
    return v5;
  }

  return 0;
}

uint64_t sub_1B0CA286C(uint64_t (*a1)(uint64_t), uint64_t a2, void (*a3)(uint64_t *, char *, uint64_t, uint64_t, void), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v8 = v6;
  result = a1(v6);
  if (v7 || !result)
  {
    return result;
  }

  if (result != 1)
  {
    v106 = 0;
    v31 = *(v6 + 8);
    v32 = v8[2];
    v90 = v8[3];
    v91 = v8[4];
    sub_1B0CA35F0(v31, v32, v91, a3, &v94);
    if (v97)
    {
      v88 = v32;
      v89 = v31;
      v87 = BYTE8(v94);
      v33 = v95;
      v34 = v96;
      v35 = sub_1B0CA38B4(&v94);
      if (v34 <= 0xF)
      {
        if (v100 == 2)
        {
          return 2;
        }

        if (!a5 || v33 & 0x80 | v87)
        {
          goto LABEL_23;
        }

        LODWORD(v87) = v100;
        v85 = v99;
        v86 = v98;
        v36 = *v8;
        sub_1B0CA3924(v8, v92);
        sub_1B0423B38(a5);
        result = a5(v36);
        if (!result)
        {
          sub_1B0CA3980(v8);
          v35 = sub_1B03B1AF0(a5);
          goto LABEL_23;
        }

        if (result != 1)
        {
          if (result == 2)
          {
            sub_1B0CA3980(v8);
            sub_1B03B1AF0(a5);
            return 0;
          }

          v69 = *(v36 + 16);
          if (v69 + 1 != *(result + 16))
          {
            v73 = result;
            sub_1B03B1AF0(a5);
            sub_1B0CA3980(v8);
            v74 = v73;
LABEL_64:
            sub_1B0CA39D4(v74);
            return 2;
          }

          v70 = 32;
          while (v69)
          {
            v71 = *(v36 + v70);
            v72 = *(result + v70);
            --v69;
            v70 += 8;
            if (v71 != v72)
            {
              sub_1B03B1AF0(a5);
              swift_unknownObjectRelease();

              return 2;
            }
          }

          while (1)
          {
            v75 = result;
            sub_1B0CA39E4(result);
            swift_unknownObjectRelease();

            v76 = *(v75 + 16);
            if (!v76)
            {
              sub_1B03B1AF0(a5);
              v74 = v75;
              goto LABEL_64;
            }

            v77 = *(v75 + 8 * v76 + 24);
            sub_1B03B1AF0(a5);
            v35 = sub_1B0CA39D4(v75);
LABEL_23:
            result = MEMORY[0x1EEE9AC00](v35);
            if (v42)
            {
              if (v37)
              {
                v43 = v38 - v37;
              }

              else
              {
                v43 = 0;
              }

              if ((v43 & 0x8000000000000000) == 0)
              {
                return sub_1B0C94D98(0, v43, v37, v38, sub_1B0CA38E4);
              }

              goto LABEL_84;
            }

            v86 = v37;
            v85 = v38;
            v83 = v40;
            v82 = v41;
            if (v88)
            {
              v44 = v90 - v88 - v91;
              if (v90 - v88 < v91)
              {
                goto LABEL_86;
              }

              if (v90 - v88 - v91 < 0)
              {
                goto LABEL_85;
              }

              v45 = v88 + v91;
              v46 = v90;
            }

            else
            {
              if (v91 > 0)
              {
                goto LABEL_88;
              }

              v46 = 0;
              v45 = 0;
              v44 = 0;
            }

            v84 = v44;
            v88 = v45;
            v87 = v46;
            v47 = v39;
            sub_1B0C77524(0, v44, v45, v46, v39, v86, v85);
            if (v49 == -1)
            {
              return 2;
            }

            result = v48;
            if ((v49 & 1) == 0)
            {
              break;
            }

            v50 = 0;
LABEL_68:
            if (v84 < result)
            {
              goto LABEL_87;
            }

            if (result >= v50)
            {
              return 2;
            }

            __break(1u);
          }

          v78[1] = v78;
          v51 = v84;
          v52 = v88;
          if (v84 < result)
          {
            goto LABEL_81;
          }

          if ((result & 0x8000000000000000) == 0)
          {
            v53 = v47;
            v91 = 0;
            do
            {
              v54 = v52;
              v55 = result;
              result = sub_1B0C77524(result, v51, v54, v87, v53, v86, v85);
              if (v57 == 0xFF)
              {
                return 2;
              }

              v58 = result;
              if (result < v55)
              {
                goto LABEL_82;
              }

              v90 = v55;
              result = v91 + 1;
              if (__OFADD__(v91, 1))
              {
                goto LABEL_83;
              }

              v59 = v56;
              v60 = v82;
              if (v83 == result)
              {
                v60 = 1;
              }

              v52 = v88;
              if (v60 == 1)
              {
                v79 = v57;
                v80 = v56;
                v61 = *v8;
                rawValue = SectionSpecifier.Part.appending(_:)(result).array._rawValue;
                v62 = v106;
                sub_1B0CA33D0(v89, v90, v58, v52, v87);
                if (v62)
                {

                  if (v84 < v80)
                  {
                    goto LABEL_89;
                  }

                  if (v80 < v90)
                  {
                    goto LABEL_90;
                  }

                  return result;
                }

                v101 = rawValue;
                v102 = v63;
                v103 = v64;
                v104 = v65;
                v105 = v66;
                v67 = sub_1B0CA286C(a1, a2, a3, a4, a5, a6);
                v106 = 0;
                v68 = v67;

                if (!v68)
                {
                  if (v84 < v80)
                  {
                    goto LABEL_91;
                  }

                  if (v80 >= v90)
                  {
                    return 0;
                  }

                  goto LABEL_92;
                }

                v50 = v90;
                v59 = v80;
                LOBYTE(v57) = v79;
                v52 = v88;
              }

              else
              {
                v50 = v90;
              }

              v53 = v89;
              if (v57)
              {
                result = v59;
                goto LABEL_68;
              }

              v51 = v84;
              if (v84 < v59)
              {
                goto LABEL_81;
              }

              ++v91;
              result = v59;
            }

            while (v59 >= v50);
          }

          __break(1u);
        }

        sub_1B0CA3980(v8);
        sub_1B03B1AF0(a5);
      }
    }

    return 2;
  }

  v16 = *(v6 + 32);
  if (v16 < 0)
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  else
  {
    v17 = *(v6 + 16);
    v18 = v17 + v16;
    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    sub_1B0CB7368(v17, v19, *(v6 + 8), v92);
    v20 = sub_1B0CB8540();
    if (v23 != 2)
    {
      v24 = v20;
      v25 = v21;
      v26 = v22;
      v27 = v23;
      do
      {
        sub_1B0CB7ED8(v24, v25, v26, v27 & 1, v93);
        a3(v93, v24, v25, v26, v27 & 1);
        sub_1B0CA39F4(v93);
        v24 = sub_1B0CB8540();
        v25 = v28;
        v26 = v29;
        v27 = v30;
      }

      while (v30 != 2);
    }

    return 2;
  }

  return result;
}

void *sub_1B0CA3074@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __little = result;
  v44 = *(a3 + 8);
  v17 = *(a3 + 16);
  v18 = *(a3 + 32);
  if (v17)
  {
    v19 = *(a3 + 24) - v17;
    if (v19 < v18)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v20 = v19 - v18;
    if (v19 - v18 < 0)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v21 = v17 + v18;
    v22 = *(a3 + 24);
  }

  else
  {
    if (v18 >= 1)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v20 = 0;
    v22 = 0;
    v21 = 0;
  }

  result = sub_1B0C77524(0, v20, v21, v22, *(a3 + 8), result, a2);
  if (v24 == -1)
  {
LABEL_11:
    v27 = 2;
LABEL_12:
    *a9 = v27;
    return result;
  }

  v25 = v23;
  if ((v24 & 1) == 0)
  {
    v45 = v22;
    v46 = v21;
    v39 = a3;
    v43 = v12;
    v37 = a9;
    v28 = v44;
    if (v20 >= v23)
    {
      if (v23 < 0)
      {
LABEL_29:
        __break(1u);
      }

      else
      {
        v29 = 0;
        v38 = v20;
        while (1)
        {
          result = sub_1B0C77524(v25, v20, v46, v45, v28, __little, a2);
          if (v31 == -1)
          {
            break;
          }

          v32 = result;
          if (result < v25)
          {
            goto LABEL_43;
          }

          result = (v29 + 1);
          if (__OFADD__(v29, 1))
          {
            goto LABEL_44;
          }

          v22 = v30;
          v33 = v31;
          if ((a5 & 1) != 0 || result == a4)
          {
            v34 = *v39;
            SectionSpecifier.Part.appending(_:)(result);
            sub_1B0CA33D0(v28, v25, v32, v46, v45);
            if (v43)
            {
              goto LABEL_33;
            }

            v35 = sub_1B0CA286C(a6, a7, a8, a10, a11, a12);

            v43 = 0;
            if (!v35)
            {
              if (v38 < v22)
              {
                goto LABEL_52;
              }

              if (v22 >= v25)
              {
                v27 = 0;
                goto LABEL_41;
              }

              goto LABEL_53;
            }

            v20 = v38;
            v28 = v44;
          }

          if (v33)
          {
            v26 = v25;
            v25 = v22;
            a9 = v37;
            if (v20 >= v22)
            {
              goto LABEL_10;
            }

            goto LABEL_32;
          }

          if (v20 < v22)
          {
            goto LABEL_42;
          }

          ++v29;
          v36 = v22 < v25;
          v25 = v22;
          if (v36)
          {
            goto LABEL_29;
          }
        }
      }

      v27 = 2;
LABEL_41:
      a9 = v37;
      goto LABEL_12;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v26 = 0;
  if (v20 >= v23)
  {
LABEL_10:
    if (v25 >= v26)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_32:
  __break(1u);
LABEL_33:

  if (v38 < v22)
  {
    goto LABEL_49;
  }

  if (v22 >= v25)
  {
    return result;
  }

  __break(1u);
  if (v38 >= v22)
  {
    if (v22 >= v25)
    {
      return result;
    }

    goto LABEL_51;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

void sub_1B0CA3370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5 - a4;
  if (a4)
  {
    v8 = a4 + a3;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (a4)
  {
    v9 = a4 + a2;
  }

  else
  {
    v9 = 0;
  }

  if (a2 < 0 || v7 < a2)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (a6 < 0 || v7 < a6)
  {
    goto LABEL_16;
  }

  v10 = a6 - a2;
  v11 = v8 - v9;
  if (!v9)
  {
    v11 = 0;
  }

  if (v11 < v10)
  {
    goto LABEL_17;
  }
}

void sub_1B0CA33D0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a3)
  {
    if (a2 >= a3)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v6 = a4 + a2;
    v7 = *(a4 + a2);
    if (v7 != 10 && v7 != 13)
    {
      sub_1B0C946BC(a1, a2, a3, a4);
      if (v26)
      {
        if ((sub_1B0C94A74(a1) & 1) != 0 && sub_1B0433338(a2, a3, a4, a5) <= 1499)
        {
          v15 = a1;
          v16 = a2;
          v17 = a3;
          v18 = a4;
          v19 = a5;
          v14 = a3;
          goto LABEL_30;
        }

        v27 = sub_1B0CA233C(a1, a2, a3, a4, a5);
        if (v28)
        {
          if (a4)
          {
            v29 = a4 + a3;
          }

          else
          {
            v29 = 0;
          }

          if (a4)
          {
            v30 = v6;
          }

          else
          {
            v30 = 0;
          }

          sub_1B0CA359C();
          swift_allocError();
          *v31 = v30;
          v31[1] = v29;
          swift_willThrow();
          return;
        }

        v14 = v27;
      }

      else
      {
        v14 = v25;
      }

      v15 = a1;
      v16 = a2;
      v17 = a3;
      v18 = a4;
      v19 = a5;
      goto LABEL_30;
    }

    sub_1B0C94298(a1);
    v14 = a2;
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
LABEL_30:
    sub_1B0CA3370(v15, v16, v17, v18, v19, v14);
    return;
  }

  v5 = a5 - a4;
  if (!a4)
  {
    v5 = 0;
  }

  if (a2 < 0 || v5 < a2)
  {
    goto LABEL_31;
  }
}

unint64_t sub_1B0CA359C()
{
  result = qword_1EB6E5FE0;
  if (!qword_1EB6E5FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5FE0);
  }

  return result;
}

uint64_t sub_1B0CA35F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *, char *, uint64_t, uint64_t, void)@<X3>, _OWORD *a5@<X8>)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = a3 + a2;
    }

    else
    {
      v6 = 0;
    }

    sub_1B0CB7368(a2, v6, result, v69);
    v7 = sub_1B0CB8540();
    if (v10 == 2)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      LOBYTE(v19) = 0;
      v20 = 2;
    }

    else
    {
      v21 = v7;
      v22 = v8;
      v23 = v9;
      v24 = v10;
      v25 = 0;
      v18 = 0;
      v17 = 0;
      v19 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
      v13 = 0;
      v12 = 0;
      v20 = 2;
      while (2)
      {
        v46 = v14;
        v47 = v25;
        v44 = v15;
        v45 = v17;
        v50 = v12;
        v52 = v13;
LABEL_9:
        v49 = v19;
        while (1)
        {
          sub_1B0CB7ED8(v21, v22, v23, v24 & 1, &v70);
          a4(&v70, v21, v22, v23, v24 & 1);
          if (v74 >> 59 == 14)
          {
            v21 = sub_1B0CB8540();
            v22 = v29;
            v23 = v30;
            v24 = v31;
            v19 = 1;
            if (v31 != 2)
            {
              goto LABEL_9;
            }

            v14 = v46;
            v11 = v47;
            v12 = v50;
            v13 = v52;
            goto LABEL_18;
          }

          if (v74 >> 59 == 9)
          {
            break;
          }

          sub_1B0CA39F4(&v70);
          v21 = sub_1B0CB8540();
          v22 = v26;
          v23 = v27;
          v24 = v28;
          if (v28 == 2)
          {
            v14 = v46;
            v11 = v47;
            v12 = v50;
            v13 = v52;
            LOBYTE(v19) = v49;
LABEL_18:
            v15 = v44;
            v17 = v45;
            goto LABEL_19;
          }
        }

        v11 = v75;
        v32 = v72;
        v53 = v73;
        v16 = v70;
        v33 = v71;
        v76 = v70;
        v77 = v71;
        v78 = v72;
        v79 = v73;
        v51 = v74;
        v80 = v74 & 0x7FFFFFFFFFFFFFFLL;
        v81 = v75;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        v34 = sub_1B0C7EB6C();
        v18 = v35;
        v37 = v36;
        sub_1B0CA39F4(&v70);
        v38 = sub_1B0CB8540();
        v15 = v33;
        v20 = v37;
        v14 = v32;
        v21 = v38;
        v17 = v34;
        v22 = v39;
        v23 = v40;
        v24 = v41;
        v25 = v11;
        v12 = v51;
        v13 = v53;
        v19 = v49;
        if (v41 != 2)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
    LOBYTE(v55) = v19;
    *(&v55 + 1) = v16;
    *&v56 = v15;
    *(&v56 + 1) = v14;
    *&v57 = v13;
    *(&v57 + 1) = v12;
    *v58 = v11;
    *&v58[8] = v17;
    *&v58[16] = v18;
    v58[24] = v20;
    v59[0] = v19;
    v60 = v16;
    v61 = v15;
    v62 = v14;
    v63 = v13;
    v64 = v12;
    v65 = v11;
    v66 = v17;
    v67 = v18;
    v68 = v20;
    sub_1B0CA3A48(&v55, v54);
    result = sub_1B0CA38B4(v59);
    v42 = *v58;
    a5[2] = v57;
    a5[3] = v42;
    *(a5 + 57) = *&v58[9];
    v43 = v56;
    *a5 = v55;
    a5[1] = v43;
  }

  return result;
}

unint64_t sub_1B0CA39D4(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_1B0CA39E4(unint64_t result)
{
  if (result >= 3)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0CA3A80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0CA3ADC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0CA3B54(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[32])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0CA3B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1B0CA3BF0()
{
  result = qword_1EB6E5FE8;
  if (!qword_1EB6E5FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5FE8);
  }

  return result;
}

char *sub_1B0CA3C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x1E69E7CC0];
  v33[0] = MEMORY[0x1E69E7CC0];
  v28 = v33;
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v9 = swift_allocObject();
  sub_1B0C835A8(v38);
  v10 = v38[9];
  v9[9] = v38[8];
  v9[10] = v10;
  v9[11] = v39[0];
  *(v9 + 185) = *(v39 + 9);
  v11 = v38[5];
  v9[5] = v38[4];
  v9[6] = v11;
  v12 = v38[7];
  v9[7] = v38[6];
  v9[8] = v12;
  v13 = v38[1];
  v9[1] = v38[0];
  v9[2] = v13;
  v14 = v38[3];
  v9[3] = v38[2];
  v9[4] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = 2;
  v23 = v9;
  v24 = v15;
  v25 = sub_1B0CA5A20;
  v26 = &v27;
  v21[2] = v9 + 1;
  v21[3] = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
  v21[4] = 0;
  sub_1B0CA33D0(3, a1, a2, a3, a4);
  v33[1] = v8;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  sub_1B0CA286C(sub_1B0C844A0, v22, sub_1B0C844C0, v21, sub_1B03CD508, 0);
  sub_1B0C8366C(v9, v15, v33);

  return v33[0];
}

uint64_t sub_1B0CA3E1C(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v2, v3);
}

uint64_t sub_1B0CA3E5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1, *a2) & (v2 == v3);
}

uint64_t sub_1B0CA3EA4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = v2 - 1;
    v6 = a2 + 32;
    while (!__OFSUB__(v5, v4))
    {
      v7 = v4 + (v5 - v4) / 2;
      if (__OFADD__(v4, (v5 - v4) / 2))
      {
        goto LABEL_15;
      }

      if (v7 >= v2)
      {
        goto LABEL_16;
      }

      v8 = *(v6 + 16 * v7);
      v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v10 = static SectionSpecifier.Part.< infix(_:_:)(v9, v3);

      if (v10)
      {
        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v11 = static SectionSpecifier.Part.< infix(_:_:)(v3, v8);

        if (!v11)
        {
          v12 = *(v6 + 16 * v7 + 8);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          return v8;
        }

        v5 = v7 - 1;
      }

      if (v5 < v4)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B0CA3FB0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = v2 - 1;
    v6 = a2 + 32;
    while (!__OFSUB__(v5, v4))
    {
      v7 = v4 + (v5 - v4) / 2;
      if (__OFADD__(v4, (v5 - v4) / 2))
      {
        goto LABEL_14;
      }

      if (v7 >= v2)
      {
        goto LABEL_15;
      }

      v8 = *(v6 + 16 * v7);
      v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v10 = static SectionSpecifier.Part.< infix(_:_:)(v9, v3);

      if (v10)
      {
        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v11 = static SectionSpecifier.Part.< infix(_:_:)(v3, v8);

        if (!v11)
        {
          return v7;
        }

        v5 = v7 - 1;
      }

      if (v5 < v4)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

Swift::Int sub_1B0CA40A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(a2 + 8 * v8 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    SectionSpecifier.Part.dropLast()();
    result = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    v11.array._rawValue = SectionSpecifier.Part.appending(_:)(result).array._rawValue;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11.array._rawValue = 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0CA3FB0(a2, a1);
  if (v12)
  {
    result = *(a1 + 16);
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = result;
  *(a4 + 24) = v11;
  *(a4 + 32) = a3 & 1;
  return result;
}

void sub_1B0CA415C()
{
  v1 = v0[2];
  v2 = *v0;
  v3 = *(*v0 + 16);
  if (v1 < v3)
  {
    v4 = v0[3];
    v5 = (v2 + 16 * v1 + 40);
    while (v1 < v3)
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v4)
      {
        v8 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v9 = static SectionSpecifier.Part.< infix(_:_:)(v8, v4);

        if (!v9)
        {

LABEL_11:
          v0[2] = v1 + 1;
          return;
        }
      }

      if (*(v0 + 32) != 1)
      {
        goto LABEL_11;
      }

      v10.array._rawValue = v0[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      LOBYTE(v10.array._rawValue) = SectionSpecifier.Part.isChildPart(of:)(v10);

      if (v10.array._rawValue)
      {
        goto LABEL_11;
      }

      v0[2] = ++v1;
      v3 = *(v2 + 16);
      v5 += 16;
      if (v1 >= v3)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1B0CA4270(uint64_t a1@<X8>)
{
  sub_1B0CA415C();
  *a1 = v2;
  *(a1 + 8) = v3;
}

double sub_1B0CA429C@<D0>(uint64_t a1@<X8>)
{
  sub_1B0CA40A4(*v1, *(v1 + 8), *(v1 + 16), v5);

  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

Swift::Int sub_1B0CA4308()
{
  v1 = sub_1B0CA555C(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

uint64_t sub_1B0CA4364(uint64_t result, unsigned __int8 a2, char a3, void *a4, uint64_t a5)
{
  if (a2 - 2 >= 5)
  {
    rawValue = result;
    if (!a2)
    {
      swift_bridgeObjectRetain_n();
      sub_1B0CA40A4(a5, rawValue, 1, &v67);
      v9 = v67;
      v10 = v69;
      v11 = v70;
      v72 = v70;
      v73[0] = v67;
      v60 = *(v67 + 16);
      if (v69 < v60)
      {
        v53 = 0;
        v51 = 0;
        v59 = v71;
        v12 = v67 + 40;
        v50 = a5 + 40;
        of.array._rawValue = v68;
        v55 = v67 + 40;
        v58 = v67;
LABEL_5:
        v13 = (v12 + 16 * v10);
        v14 = v10;
        while (1)
        {
          if (v10 < 0)
          {
            goto LABEL_75;
          }

          if (v14 >= *(v9 + 16))
          {
            goto LABEL_76;
          }

          v5 = *(v13 - 1);
          v57 = *v13;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          if (v11)
          {
            v15 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v16 = static SectionSpecifier.Part.< infix(_:_:)(v15, v11);

            if (!v16)
            {

              sub_1B0CA59DC(v73);

              sub_1B0398EFC(&v72, &qword_1EB6E5FF0, &qword_1B0EDFEF0);

              v43 = v53;
              if (!v53)
              {
              }

              goto LABEL_65;
            }
          }

          if ((v59 & 1) == 0)
          {
            goto LABEL_15;
          }

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v17 = SectionSpecifier.Part.isChildPart(of:)(of);

          if (v17)
          {
            break;
          }

          ++v14;
          v13 += 16;
          v9 = v58;
          if (v14 >= v60)
          {
            goto LABEL_45;
          }
        }

        v10 = v14;
LABEL_15:
        v52 = rawValue;
        v18 = *(v5 + 16);
        v61 = a4;
        if (v18)
        {
          v19 = *(v5 + 8 * v18 + 24);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          rawValue = SectionSpecifier.Part.dropLast()().array._rawValue;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_77;
          }

          v20.array._rawValue = SectionSpecifier.Part.appending(_:)(v19 + 1).array._rawValue;
        }

        else
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v20.array._rawValue = 0;
        }

        rawValue = sub_1B0CA3FB0(v5, a5);
        v22 = v21;

        if ((v22 & 1) != 0 || (v23 = *(a5 + 16), rawValue >= v23))
        {

          rawValue = v52;
          v12 = v55;
          goto LABEL_44;
        }

        v49 = a5;
        v24 = 0;
        v54 = 0;
        v56 = -v23;
        v25 = a3;
        v12 = v55;
LABEL_22:
        v48 = v24;
        if (rawValue < v23)
        {
          v26 = (v50 + 16 * rawValue++);
          v27 = v26;
          do
          {
            v28 = *v27;
            v27 += 16;
            a5 = v28;
            if (v20.array._rawValue)
            {
              v29 = *(v26 - 1);
              v30 = v11;
              v31 = v10;
              v32 = v23;
              swift_bridgeObjectRetain_n();
              a4 = static SectionSpecifier.Part.< infix(_:_:)(v29, v20.array._rawValue);
              v12 = v55;
              swift_bridgeObjectRelease_n();
              v23 = v32;
              v10 = v31;
              v11 = v30;
              v25 = a3;
              if ((a4 & 1) == 0)
              {
LABEL_40:

                if (v54)
                {
                  goto LABEL_72;
                }

                a5 = v49;
                a4 = v61;
                rawValue = v52;
                if (v48)
                {
                  goto LABEL_42;
                }

LABEL_44:
                ++v10;
                v9 = v58;
                if (v10 >= v60)
                {
LABEL_45:

                  sub_1B0CA59DC(v73);

                  sub_1B0398EFC(&v72, &qword_1EB6E5FF0, &qword_1B0EDFEF0);
                  v43 = v53;
                  if (!v53)
                  {
                  }

LABEL_65:
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  v44 = *a4;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v65 = *a4;
                  sub_1B0CA5128(v43, rawValue, isUniquelyReferenced_nonNull_native);

                  *a4 = v65;
                  sub_1B0CA4364(v43, v51, a3 & 1, a4, a5);
                }

                goto LABEL_5;
              }
            }

            if (v25)
            {
              if (a5 != 3)
              {
                if (a5 == 2)
                {
                  goto LABEL_36;
                }

LABEL_26:
                if (rawValue >= v23)
                {
                  goto LABEL_40;
                }

                goto LABEL_27;
              }
            }

            else if (a5 != 2)
            {
              if (a5 == 3)
              {
LABEL_36:
                v24 = 1;
                if (rawValue < v23)
                {
                  goto LABEL_22;
                }

                a5 = v49;
                a4 = v61;
                rawValue = v52;
                if (v54)
                {
                  goto LABEL_70;
                }

LABEL_42:

                v53 = v5;
                v51 = v57;
                goto LABEL_44;
              }

              goto LABEL_26;
            }

            if (rawValue >= v23)
            {
              rawValue = v52;

              goto LABEL_69;
            }

            v54 = 1;
LABEL_27:
            ++rawValue;
            v26 = v27;
          }

          while (v56 + rawValue != 1);
        }

LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_70;
      }

      swift_bridgeObjectRelease_n();
      sub_1B0CA59DC(v73);
      goto LABEL_60;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v33 = *a4;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *a4;
    sub_1B0CA5128(0, rawValue, v34);

    v61 = a4;
    *a4 = v67;
    v35 = a5;
    sub_1B0CA40A4(a5, rawValue, 1, &v67);
    v36 = v67;
    rawValue = v68;
    a5 = v69;
    v37 = v70;
    v72 = v70;
    v73[0] = v67;
    v38 = *(v67 + 16);
    if (v69 >= v38)
    {
LABEL_59:
      sub_1B0CA59DC(v73);
LABEL_60:

      return sub_1B0398EFC(&v72, &qword_1EB6E5FF0, &qword_1B0EDFEF0);
    }

    ofa.array._rawValue = v68;
    if ((v69 & 0x8000000000000000) == 0)
    {
      v39 = v71;
      a4 = (v67 + 32);
      while (a5 < *(v36 + 16))
      {
        v40 = &a4[2 * a5];
        rawValue = *v40;
        v41 = *(v40 + 8);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v37)
        {
          v42 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v5 = static SectionSpecifier.Part.< infix(_:_:)(v42, v37);

          if ((v5 & 1) == 0)
          {
            sub_1B0CA59DC(v73);

            sub_1B0398EFC(&v72, &qword_1EB6E5FF0, &qword_1B0EDFEF0);
          }
        }

        if (v39 & 1) == 0 || (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v5 = SectionSpecifier.Part.isChildPart(of:)(ofa), , (v5))
        {
          ++a5;
          sub_1B0CA4364(rawValue, v41, a3 & 1, v61, v35);

          if (a5 >= v38)
          {
            goto LABEL_59;
          }
        }

        else
        {

          if (++a5 >= v38)
          {
            goto LABEL_59;
          }
        }

        if (a5 < 0)
        {
          goto LABEL_71;
        }
      }

      __break(1u);
      goto LABEL_74;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    rawValue = v52;
LABEL_69:
    a5 = v49;
    a4 = v61;
LABEL_70:

    sub_1B0CA59DC(v73);

    sub_1B0398EFC(&v72, &qword_1EB6E5FF0, &qword_1B0EDFEF0);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v46 = *a4;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *a4;
    sub_1B0CA5128(v5, rawValue, v47);

    *a4 = v66;
    sub_1B0CA4364(v5, v57, a3 & 1, a4, a5);
  }

  return result;
}

uint64_t sub_1B0CA4A74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CF0, &qword_1B0EDD280);
  v35 = a2;
  result = sub_1B0E46698();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = v23[1];
      v36 = *v23;
      if ((v35 & 1) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      v25 = *(v8 + 40);
      sub_1B0E46C28();
      SectionSpecifier.Part.hash(into:)(v37, v22);
      result = sub_1B0E46CB8();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v36;
      v17[1] = v24;
      ++*(v8 + 16);
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

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B0CA4D1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CF8, &unk_1B0EDD290);
  v33 = a2;
  result = sub_1B0E46698();
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0452640(v22);
      }

      v23 = *(v8 + 40);
      sub_1B0E46C28();
      SectionSpecifier.Part.hash(into:)(v34, v21);
      result = sub_1B0E46CB8();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B0CA4FB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B0CA7EF4(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B0CA4A74(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1B0CA7EF4(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1B0CA5288();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  *(v22[6] + 8 * v11) = a3;
  v26 = (v22[7] + 16 * v11);
  *v26 = a1;
  v26[1] = a2;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

unint64_t sub_1B0CA5128(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1B0CA7EF4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1B0CA4D1C(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_1B0CA7EF4(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_18:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1B0CA53F8();
      v9 = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;

    return sub_1B03C81E4(v22);
  }

  v20[(v9 >> 6) + 8] |= 1 << v9;
  *(v20[6] + 8 * v9) = a2;
  *(v20[7] + 8 * v9) = a1;
  v24 = v20[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

void *sub_1B0CA5288()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CF0, &qword_1B0EDD280);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v19;
        v21[1] = v20;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0CA53F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CF8, &unk_1B0EDD290);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = sub_1B0452640(v18);
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

Swift::Int sub_1B0CA555C(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1B0CA40A4(a1, a2, a3, v42);
  v4 = v42[0];
  of.array._rawValue = v42[1];
  v5 = v43;
  v46 = v44;
  v47 = v42[0];
  v6 = *(v42[0] + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v43 >= v6)
  {
    v8 = 0;
    goto LABEL_32;
  }

  v8 = 0;
  v9 = v45;
  v10 = MEMORY[0x1E69E7CC0] + 32;
  v11 = v42[0] + 40;
  v36 = v42[0] + 40;
  while (2)
  {
    v37 = v10;
    v38 = v8;
    v40 = v7;
    v12 = v46;
    v13 = (v11 + 16 * v5);
    v14 = v5;
    while (1)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v14 >= *(v4 + 16))
      {
        goto LABEL_37;
      }

      v15 = *(v13 - 1);
      v16 = *v13;
      result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v12)
      {
        v17 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v18 = static SectionSpecifier.Part.< infix(_:_:)(v17, v12);

        if (!v18)
        {

LABEL_31:
          v8 = v38;
          v7 = v40;
          goto LABEL_32;
        }
      }

      if ((v9 & 1) == 0)
      {
        goto LABEL_13;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = SectionSpecifier.Part.isChildPart(of:)(of);

      if (v19)
      {
        break;
      }

      ++v14;
      v13 += 16;
      if (v14 >= v6)
      {
        goto LABEL_31;
      }
    }

    v5 = v14;
LABEL_13:
    v20 = v38;
    v7 = v40;
    v11 = v36;
    if (!v38)
    {
      v21 = *(v40 + 3);
      if (((v21 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_40;
      }

      v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
      if (v22 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EC0, &qword_1B0EDE2E0);
      v24 = swift_allocObject();
      v25 = _swift_stdlib_malloc_size_0(v24);
      v26 = v25 - 32;
      if (v25 < 32)
      {
        v26 = v25 - 17;
      }

      v27 = v26 >> 4;
      *(v24 + 2) = v23;
      *(v24 + 3) = 2 * (v26 >> 4);
      v28 = v24 + 32;
      v29 = *(v40 + 3) >> 1;
      v30 = 16 * v29;
      if (*(v40 + 2))
      {
        v31 = v40 + 32;
        if (v24 != v40 || v28 >= &v31[v30])
        {
          v39 = v26 >> 4;
          memmove(v24 + 32, v31, v30);
          v27 = v39;
        }

        *(v40 + 2) = 0;
      }

      v37 = &v28[v30];
      v20 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;

      v7 = v24;
      v11 = v36;
    }

    v32 = __OFSUB__(v20, 1);
    v8 = v20 - 1;
    if (v32)
    {
      goto LABEL_38;
    }

    ++v5;
    *v37 = v15;
    *(v37 + 8) = v16;
    v10 = v37 + 16;
    if (v5 < v6)
    {
      continue;
    }

    break;
  }

LABEL_32:
  sub_1B0CA59DC(&v47);

  result = sub_1B0398EFC(&v46, &qword_1EB6E5FF0, &qword_1B0EDFEF0);
  v33 = *(v7 + 3);
  if (v33 < 2)
  {
    return v7;
  }

  v34 = v33 >> 1;
  v32 = __OFSUB__(v34, v8);
  v35 = v34 - v8;
  if (!v32)
  {
    *(v7 + 2) = v35;
    return v7;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B0CA57EC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_1B0CA40A4(a4, a5, a6, &v30);

  if (a2)
  {
    v10 = v30;
    v11 = *(&v31 + 1);
    v12 = v31;
    v29 = v32;
    if (!a3)
    {
LABEL_24:
      *a1 = v10;
      *(a1 + 2) = v12;
      *(a1 + 3) = v11;
      result = a3;
      v22 = v29;
      goto LABEL_25;
    }

    if (a3 < 0)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v23 = a1;
    v24 = a3;
    v13 = *(v30 + 16);
    v25 = v30 + 40;
    v26 = 0;
    v14 = 1;
    while (2)
    {
      if (v12 >= v13)
      {
LABEL_22:
        *v23 = v10;
        *(v23 + 2) = v12;
        *(v23 + 3) = v11;
        v23[32] = v29;
        return v26;
      }

      v27 = v14;
      v28 = a2;
      a1 = (v25 + 16 * v12);
      v15 = v12;
      while (1)
      {
        if (v12 < 0)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (v15 >= *(v10 + 16))
        {
          goto LABEL_28;
        }

        v16 = *(a1 - 1);
        v17 = *a1;
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v11)
        {
          v18 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v19 = static SectionSpecifier.Part.< infix(_:_:)(v18, v11);

          if (!v19)
          {

            v12 = v15 + 1;
            goto LABEL_22;
          }
        }

        if (!v29)
        {
          break;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v20 = SectionSpecifier.Part.isChildPart(of:)(*(&v10 + 8));

        if (v20)
        {
          v12 = v15;
          break;
        }

        ++v15;
        a1 += 16;
        if (v13 == v15)
        {
          v12 = v13;
          goto LABEL_22;
        }
      }

      ++v12;
      *v28 = v16;
      *(v28 + 8) = v17;
      a3 = v24;
      if (v27 == v24)
      {
        a1 = v23;
        goto LABEL_24;
      }

      a2 = v28 + 16;
      v26 = v27;
      v14 = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
  }

  result = 0;
  v21 = v31;
  *a1 = v30;
  *(a1 + 1) = v21;
  v22 = v32;
LABEL_25:
  a1[32] = v22;
  return result;
}

uint64_t sub_1B0CA5A3C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1B0398EFC(a5, &qword_1EB6E5F20, &qword_1B0EDE988);

    return 5;
  }

  if (*(a5 + 40))
  {
    v8 = *a5;
    v9 = *(a5 + 16);
    v10 = *(a5 + 32) >> 4;
    if (v10 != 5)
    {
      if (!v10)
      {
        v11 = a5;

        sub_1B0398EFC(v11, &qword_1EB6E5F20, &qword_1B0EDE988);
        return (v9 & 0x80 | v8) != 0;
      }

      goto LABEL_8;
    }

    if ((v9 & 1) == 0)
    {
      v14 = a1;
      v15 = a2;
      v16 = a3;
      v17 = a5;
      v19 = sub_1B0C895C4(*a5, *(a5 + 8));
      v20 = v18;
      if (v19 == 1819112552 && v18 == 0xE400000000000000 || (sub_1B0E46A78() & 1) != 0)
      {

        sub_1B0398EFC(v17, &qword_1EB6E5F20, &qword_1B0EDE988);

        return 2;
      }

      if (v19 == 0x6E69616C70 && v20 == 0xE500000000000000)
      {

        v21 = v17;
      }

      else
      {
        v22 = sub_1B0E46A78();

        a5 = v17;
        a3 = v16;
        a2 = v15;
        a1 = v14;
        if ((v22 & 1) == 0)
        {
          goto LABEL_8;
        }

        v21 = v17;
      }

      sub_1B0398EFC(v21, &qword_1EB6E5F20, &qword_1B0EDE988);
      return 3;
    }
  }

LABEL_8:
  v12 = a5;
  v13 = sub_1B0C63FAC(a1, a2, a3, a4, a5);
  sub_1B0398EFC(v12, &qword_1EB6E5F20, &qword_1B0EDE988);

  if (v13)
  {
    return 4;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_1B0CA5C7C(uint64_t a1, char **a2)
{
  v3 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v3;
  v4 = *(a1 + 40);
  v21 = *(a1 + 32);
  v5 = *&v20[0];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 112);
  v19[0] = *(a1 + 96);
  v19[1] = v9;
  v10 = *(a1 + 184) != 2;
  v19[2] = *(a1 + 128);
  sub_1B0CA3924(v20, v18);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0CA5DBC(v19, v18);
  v11 = sub_1B0CA5A3C(v4, v6, v7, v8, v19, v10);
  v12 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1B0C81754(0, *(v12 + 2) + 1, 1, v12);
    *a2 = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1B0C81754((v14 > 1), v15 + 1, 1, v12);
    *a2 = v12;
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[16 * v15];
  *(v16 + 4) = v5;
  v16[40] = v11;
  return 2;
}

uint64_t sub_1B0CA5DBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F20, &qword_1B0EDE988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_9IMAP2MIME15MultipartChoiceO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B0CA5E84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1B0CA5ECC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0CA5F34()
{
  result = qword_1EB6E5FF8;
  if (!qword_1EB6E5FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5FF8);
  }

  return result;
}

uint64_t DisplayPart.PlainTextLineKind.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0CA600C()
{
  result = qword_1EB6E6000;
  if (!qword_1EB6E6000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6000);
  }

  return result;
}

uint64_t sub_1B0CA6070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a4)
  {
    goto LABEL_35;
  }

  if (*(a4 + 16) != 1)
  {

    goto LABEL_35;
  }

  v9 = *(a4 + 32);
  v10 = *(a4 + 40);
  v11 = *(a4 + 48);

  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  v12 = v10 - v9;
  if (!v9)
  {
    v12 = 0;
  }

  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (!v12 || (*v9 & 0xDF) != 0x46 || v12 == 1 || (v9[1] & 0xDF) != 0x4C || v12 == 2 || (v9[2] & 0xDF) != 0x4F || v12 == 3 || (v9[3] & 0xDF) != 0x57 || v12 == 4 || (v9[4] & 0xDF) != 0x45 || v12 == 5 || (v9[5] & 0xDF) != 0x44 || v12 != 6)
  {
LABEL_35:

    return 0;
  }

  if (!a8)
  {
    return 1;
  }

  if (*(a8 + 16) != 1)
  {
LABEL_37:

    return 1;
  }

  v13 = *(a8 + 32);
  v14 = *(a8 + 40);
  v15 = *(a8 + 48);

  if ((v15 & 0x80000000) == 0)
  {
    return 1;
  }

  v17 = v14 - v13;
  if (!v13)
  {
    v17 = 0;
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    if (v17 && (*v13 & 0xDF) == 0x59 && v17 != 1 && (v13[1] & 0xDF) == 0x45 && v17 != 2 && (v13[2] & 0xDF) == 0x53 && v17 == 3)
    {
      return 2;
    }

    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CA6214(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v20 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = (v1 + 80);
    while (1)
    {
      if ((*(v7 - 4) & 1) == 0)
      {
        v9 = *(v7 - 3);
        v10 = *(v7 - 2);
        v11 = *(v7 - 8);
        v12 = *v7;
        v13 = *(v7 - 48);
        if (v13 == 4)
        {
          v8 = *v7;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

          v18 = v10;
          v19 = v9;
          v17 = v11;
          v20 = v12;
        }

        else if (v13 == 12)
        {
          v14 = *v7;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

          v6 = v12;
          goto LABEL_6;
        }
      }

      v9 = v3;
      v10 = v4;
      v11 = v5;
LABEL_6:
      v7 += 7;
      v3 = v9;
      v4 = v10;
      v5 = v11;
      if (!--v2)
      {
        goto LABEL_13;
      }
    }
  }

  v18 = 0;
  v19 = 0;
  v17 = 0;
  v20 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0;
LABEL_13:
  sub_1B0CA6368(a1);

  return sub_1B0CA6070(v9, v10, v11, v6, v19, v18, v17, v20);
}

uint64_t sub_1B0CA6368(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F20, &qword_1B0EDE988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0CA63D0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  v7 = a2 - result;
  v8 = a3 == 0;
  if (a3)
  {
    v9 = a3 + result;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2 - result;
  }

  if (v10 < 0)
  {
    goto LABEL_134;
  }

  v54 = 0;
  v55 = v10;
  v57 = v10;
  v11 = a6 - a5;
  if (a5)
  {
    v12 = a6 - a5;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (!v12)
  {
LABEL_101:
    v42 = a4 - v6;
    if (!v6)
    {
      v42 = 0;
    }

    if ((result & 0x8000000000000000) == 0 && v42 >= result)
    {
      if ((a2 & 0x8000000000000000) == 0 && v42 >= a2)
      {
        v43 = v7 - (v55 - v54);
        if (!__OFSUB__(v7, v55 - v54))
        {
          v44 = __OFADD__(result, v43);
          v45 = result + v43;
          if (!v44)
          {
            if ((v45 & 0x8000000000000000) == 0 && v42 >= v45)
            {
              if (v45 >= result)
              {
                if (v45 <= a2)
                {
                  if (!v6)
                  {
                    return 0;
                  }

                  result += v6;
                  return result;
                }

                goto LABEL_142;
              }

LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
              goto LABEL_143;
            }

LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v46 = a4;
  v47 = a2 - result;
  v48 = a2;
  v49 = result;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  LODWORD(result) = 2;
  v16 = v57;
  v52 = v9;
  do
  {
    if (!a5)
    {
      v13 = 0;
      v20 = 0;
      v36 = 2;
      goto LABEL_87;
    }

    v53 = v16;
    v58 = result;
    v17 = a5;
    v18 = a5 + v14;
    v19 = v11;
    v20 = v14;
    v21 = v11 - v14;
    result = memchr((a5 + v14), 10, v11 - v14);
    if (!result)
    {
      goto LABEL_85;
    }

    v22 = result - v18;
    if (result - v18 < 0)
    {
      goto LABEL_85;
    }

    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_123:
      v57 = v53;
      __break(1u);
LABEL_124:
      v57 = v53;
      __break(1u);
LABEL_125:
      v57 = v53;
      __break(1u);
LABEL_126:
      v57 = v53;
      __break(1u);
LABEL_127:
      v57 = v53;
      __break(1u);
LABEL_128:
      v57 = v53;
      __break(1u);
LABEL_129:
      v57 = v22;
      __break(1u);
      goto LABEL_130;
    }

    if (v21 < v23)
    {
      goto LABEL_85;
    }

    v16 = v22 + v20;
    if (__OFADD__(v22, v20))
    {
      goto LABEL_124;
    }

    v14 = v23 + v20;
    if (__OFADD__(v23, v20))
    {
      goto LABEL_125;
    }

    if (v23 < v22 || v14 < v16)
    {
      goto LABEL_126;
    }

    v11 = v19;
    a5 = v17;
    v9 = v52;
    if (v20 < v16)
    {
      if (v16 > v19)
      {
        goto LABEL_131;
      }

      v22 = v16 - 1;
      if (*(v17 + v16 - 1) == 13)
      {
        --v16;
      }
    }

    if (v16 < v20)
    {
      goto LABEL_127;
    }

    if (v19 < v16)
    {
      goto LABEL_128;
    }

    if (v58 == 2 || (v58 & 1) != 0 || v15 == v10)
    {
      v22 = v53;
    }

    else
    {
      *(v52 + v15) = 10;
      v13 = v15 + 1;
      v22 = v10;
      v15 = v13;
      if (v10 < v13)
      {
        goto LABEL_132;
      }
    }

    v24 = v17 + v16;
    if (v16 == v20)
    {
      result = 0;
    }

    else
    {
      if (v16 - v20 < 1)
      {
        goto LABEL_133;
      }

      v25 = *(v24 - 1);
      result = v25 == 61;
      if (v25 == 61)
      {
        --v24;
      }
    }

    v16 = v24 - v18;
    if (v24 - v18 < 0)
    {
      goto LABEL_129;
    }

    if (v24 != v18)
    {
      v26 = 0;
      v27 = v15;
      while (1)
      {
        v28 = v26 + 1;
        if (v16 < v26 + 1)
        {
          v57 = v22;
          __break(1u);
LABEL_118:
          v57 = v22;
          __break(1u);
LABEL_119:
          v57 = v22;
          __break(1u);
LABEL_120:
          v57 = v22;
          __break(1u);
LABEL_121:
          v57 = v22;
          __break(1u);
LABEL_122:
          v57 = v22;
          __break(1u);
          goto LABEL_123;
        }

        v29 = *(v18 + v26);
        if (v29 == 9 || v29 == 32)
        {
          if (v15 == v10)
          {
            ++v26;
            v15 = v10;
          }

          else
          {
            *(v52 + v15) = 32;
            v13 = v15 + 1;
            ++v26;
            v15 = v13;
            v27 = v13;
            if (v10 < v13)
            {
              goto LABEL_118;
            }
          }
        }

        else if (v29 == 61)
        {
          if (v28 == v16)
          {
            goto LABEL_80;
          }

          v30 = v26 + 2;
          if (v16 < v26 + 2)
          {
            goto LABEL_119;
          }

          if (v30 == v16)
          {
LABEL_80:
            v16 = v10;
            if (v12 >= v14)
            {
              goto LABEL_83;
            }

LABEL_130:
            v57 = v16;
            __break(1u);
LABEL_131:
            v57 = v53;
            __break(1u);
LABEL_132:
            v57 = v53;
            __break(1u);
LABEL_133:
            v57 = v22;
            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          v26 += 3;
          if (v16 < v26)
          {
            goto LABEL_120;
          }

          v31 = *(v18 + v28);
          v32 = *(v18 + v30);
          if ((v31 - 58) > 0xF5u)
          {
            v33 = -48;
          }

          else if ((v31 - 71) > 0xF9u)
          {
            v33 = -55;
          }

          else
          {
            if ((v31 - 103) <= 0xF9u)
            {
              goto LABEL_44;
            }

            v33 = -87;
          }

          if ((v32 - 58) > 0xF5u)
          {
            v35 = -48;
            if (v27 == v10)
            {
              goto LABEL_76;
            }
          }

          else if ((v32 - 71) > 0xF9u)
          {
            v35 = -55;
            if (v27 == v10)
            {
LABEL_76:
              v15 = v10;
              v27 = v10;
              goto LABEL_44;
            }
          }

          else
          {
            if ((v32 - 103) < 0xFAu)
            {
              goto LABEL_44;
            }

            v35 = -87;
            if (v27 == v10)
            {
              goto LABEL_76;
            }
          }

          *(v52 + v27) = (v32 + v35) | (16 * (v31 + v33));
          v13 = v27 + 1;
          v15 = v13;
          ++v27;
          if (v10 < v13)
          {
            goto LABEL_122;
          }
        }

        else if ((v29 - 127) < 0xFFFFFFA1 || v15 == v10)
        {
          ++v26;
        }

        else
        {
          *(v52 + v15) = v29;
          v13 = v15 + 1;
          ++v26;
          v15 = v13;
          v27 = v13;
          if (v10 < v13)
          {
            goto LABEL_121;
          }
        }

LABEL_44:
        if (v26 == v16)
        {
          goto LABEL_80;
        }
      }
    }

    v16 = v22;
    if (v12 < v14)
    {
      goto LABEL_130;
    }

LABEL_83:
    ;
  }

  while (v14 >= v20);
  v57 = v16;
  __break(1u);
LABEL_85:
  a5 = v17;
  v9 = v52;
  v16 = v53;
  v36 = v58;
LABEL_87:
  v54 = v13;
  v55 = v10;
  v56 = v9;
  v57 = v16;
  v59 = v36;
  if (v20 == v12)
  {
LABEL_96:
    result = v49;
    v6 = v50;
    v7 = v47;
    a2 = v48;
    a4 = v46;
    if (v36 != 2 && (v36 & 1) == 0)
    {
      v39 = v54;
      v40 = v55;
      if (v54 != v55)
      {
        *(v56 + v54) = 10;
        v41 = v39 + 1;
        if (v40 < v41)
        {
LABEL_143:
          __break(1u);
          return result;
        }

        v54 = v41;
      }
    }

    goto LABEL_101;
  }

  if (a5)
  {
    v37 = a5 + v12;
  }

  else
  {
    v37 = 0;
  }

  if (a5)
  {
    v38 = a5 + v20;
  }

  else
  {
    v38 = 0;
  }

  result = sub_1B0CA6C68(v38, v37, 1, &v59, &v54);
  if (!v51)
  {
    v36 = v59;
    goto LABEL_96;
  }

  return result;
}