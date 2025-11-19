uint64_t static Message.makeSparse(messageHeaders:bodyStructure:lineEnding:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, __int128 *a4@<X8>)
{
  v109 = a3;
  v107 = a1;
  v108 = a4;
  v5 = *(a2 + 144);
  v165 = *(a2 + 128);
  v166 = v5;
  v167 = *(a2 + 160);
  v6 = *(a2 + 80);
  v161 = *(a2 + 64);
  v162 = v6;
  v7 = *(a2 + 112);
  v163 = *(a2 + 96);
  v164 = v7;
  v8 = *(a2 + 16);
  v157 = *a2;
  v158 = v8;
  v9 = *(a2 + 48);
  v159 = *(a2 + 32);
  v168 = *(a2 + 176);
  v160 = v9;
  v103 = sub_1B0E443C8();
  v101 = *(v103 - 8);
  v10 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v100 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Message.Data(0);
  v12 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v102 = (&v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = type metadata accessor for Message(0);
  v14 = *(v106 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v111 = &v99 - v22;
  v23 = sub_1B0E44558();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1B0E444E8();
  v28 = *(v105 - 1);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v31 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = xmmword_1B0ECF4A0;
  sub_1B07169CC(a2, v143);
  sub_1B0E44548();
  v32 = *(a2 + 144);
  v143[8] = *(a2 + 128);
  v143[9] = v32;
  v143[10] = *(a2 + 160);
  v144 = *(a2 + 176);
  v33 = *(a2 + 80);
  v143[4] = *(a2 + 64);
  v143[5] = v33;
  v34 = *(a2 + 112);
  v143[6] = *(a2 + 96);
  v143[7] = v34;
  v35 = *(a2 + 16);
  v143[0] = *a2;
  v143[1] = v35;
  v36 = *(a2 + 48);
  v143[2] = *(a2 + 32);
  v143[3] = v36;
  if (sub_1B0717014(v143) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v143);
    v38 = v37[5];
    v149 = v37[4];
    v150 = v38;
    v151 = v37[6];
    v39 = v37[1];
    v145 = *v37;
    v146 = v39;
    v40 = v37[3];
    v147 = v37[2];
    *&v152 = *(v37 + 14);
    v148 = v40;
    sub_1B0C659D8(&v145);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v143);
    v42 = v41[6];
    v152 = v41[7];
    v43 = v41[9];
    v153 = v41[8];
    v154 = v43;
    v155 = v41[10];
    v44 = v41[2];
    v148 = v41[3];
    v45 = v41[5];
    v149 = v41[4];
    v150 = v45;
    v151 = v42;
    v46 = v41[1];
    v145 = *v41;
    v146 = v46;
    v147 = v44;
    sub_1B0C657E4(&v145);
  }

  sub_1B0E44538();
  (*(v24 + 8))(v27, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C20, &qword_1B0EA3F40);
  sub_1B0E444D8();
  sub_1B075E648(a2);
  (*(v28 + 8))(v31, v105);
  v115 = v141[0];
  v47 = v111;
  sub_1B0C74DAC(v107, v111, type metadata accessor for Message);
  v48 = v106;
  v49 = (*(v14 + 56))(v47, 0, 1, v106);
  MEMORY[0x1EEE9AC00](v49);
  v97 = &v116;
  sub_1B03B5C80(v47, v21, &unk_1EB6E2E10, &qword_1B0E9B598);
  if ((*(v14 + 48))(v21, 1, v48) == 1)
  {
    sub_1B0398EFC(v21, &unk_1EB6E2E10, &qword_1B0E9B598);
    v50 = v109;
    v51 = sub_1B0C68AEC(v109, &v115, a2, &v116);
    sub_1B0C68BDC(v50, a2);
    sub_1B0C68F64(v50, a2);
    sub_1B0C69348(v50, a2);
    v52 = *(a2 + 144);
    v141[8] = *(a2 + 128);
    v141[9] = v52;
    v141[10] = *(a2 + 160);
    v142 = *(a2 + 176);
    v53 = *(a2 + 80);
    v141[4] = *(a2 + 64);
    v141[5] = v53;
    v54 = *(a2 + 112);
    v141[6] = *(a2 + 96);
    v141[7] = v54;
    v55 = *(a2 + 16);
    v141[0] = *a2;
    v141[1] = v55;
    v56 = *(a2 + 48);
    v141[2] = *(a2 + 32);
    v141[3] = v56;
    if (sub_1B0717014(v141) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v141);
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v141);
      v156 = *(v62 + 48);
      v63 = *(&v156 + 1);
      if (*(&v156 + 1))
      {
        v107 = v156;
        LOBYTE(v113[0]) = v50;
        v64 = MEMORY[0x1E69E6290];
        *(&v118 + 1) = MEMORY[0x1E69E6290];
        *&v119 = MEMORY[0x1E6969DF8];
        *&v117 = "Content-Description";
        *(&v117 + 1) = "";
        v65 = __swift_project_boxed_opaque_existential_0(&v117, MEMORY[0x1E69E6290]);
        v67 = *v65;
        v66 = v65[1];
        sub_1B07169CC(a2, &v129);
        sub_1B03B5C80(&v156, &v129, &qword_1EB6E3850, &qword_1B0E9B600);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v117);
        *(&v130 + 1) = v64;
        *&v131 = MEMORY[0x1E6969DF8];
        *&v129 = ": ";
        *(&v129 + 1) = "";
        v68 = v64;
        v50 = v109;
        v69 = __swift_project_boxed_opaque_existential_0(&v129, v68);
        v71 = *v69;
        v70 = v69[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v129);
        *(&v113[0] + 1) = 21;
        sub_1B0C6D3A8(v107, v63, v113);
        sub_1B0398EFC(&v156, &qword_1EB6E3850, &qword_1B0E9B600);
        sub_1B0C74C44(v50);
        sub_1B075E648(a2);
      }
    }

    sub_1B0C697EC(v50, a2);
    sub_1B0C69968(v50, a2);
    v72 = *(a2 + 144);
    v137 = *(a2 + 128);
    v138 = v72;
    v139 = *(a2 + 160);
    v140 = *(a2 + 176);
    v73 = *(a2 + 80);
    v133 = *(a2 + 64);
    v134 = v73;
    v74 = *(a2 + 112);
    v135 = *(a2 + 96);
    v136 = v74;
    v75 = *(a2 + 16);
    v129 = *a2;
    v130 = v75;
    v76 = *(a2 + 48);
    v131 = *(a2 + 32);
    v132 = v76;
    if (sub_1B0717014(&v129) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v129);
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v129);
      v82 = *(v81 + 80);
      if (v82 > 0)
      {
        sub_1B0C6FEFC(v50, v82);
      }
    }

    sub_1B0C74C44(v50);
  }

  else
  {
    v107 = &v99;
    v57 = v21;
    v58 = v104;
    v59 = sub_1B0C74D18(v57, v104);
    v60 = MEMORY[0x1EEE9AC00](v59);
    *(&v99 - 48) = 3;
    *(&v99 - 5) = a2;
    v50 = v109;
    *(&v99 - 32) = v109;
    *(&v99 - 3) = &v115;
    MEMORY[0x1EEE9AC00](v60);
    v97 = sub_1B0C74D7C;
    v98 = v61;
    sub_1B07169CC(a2, v141);
    sub_1B07169CC(a2, v141);
    sub_1B07169CC(a2, v141);
    if (Message.isEmpty.getter())
    {
      sub_1B07169CC(a2, v141);
      sub_1B0C682CC(0, 0, 0, 0, 3, a2, v50, &v115, v141, sub_1B0C67FD0, &v99 - 32);
      sub_1B075E648(a2);
      sub_1B075E648(a2);
      sub_1B075E648(a2);
      v51 = *&v141[0];
      sub_1B075E648(a2);
    }

    else
    {
      v106 = &v99;
      v77 = v102;
      sub_1B0C74DAC(v58, v102, type metadata accessor for Message.Data);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v78 = v100;
        v79 = v101;
        v80 = (*(v101 + 32))(v100, v77, v103);
        v105 = &v99;
        MEMORY[0x1EEE9AC00](v80);
        *(&v99 - 4) = v78;
        *(&v99 - 3) = sub_1B0C74D94;
        v97 = (&v99 - 4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5D30, &qword_1B0EDD3E0);
        sub_1B0E44328();
        (*(v79 + 8))(v78, v103);
        sub_1B075E648(a2);
        sub_1B075E648(a2);
        sub_1B075E648(a2);
        v51 = *&v141[0];
      }

      else
      {
        v83 = v77;
        v84 = *v77;
        v85 = v83[1];
        sub_1B07169CC(a2, v141);
        v51 = sub_1B0C744C8(v84, v85, 3, a2, v50, &v115, sub_1B0C67FD0, &v99 - 32);
        sub_1B075E648(a2);
        sub_1B0391D50(v84, v85);
        sub_1B075E648(a2);
        sub_1B075E648(a2);
        sub_1B075E648(a2);
      }
    }

    sub_1B0C74E2C(v58);
  }

  v86 = *(a2 + 144);
  v125 = *(a2 + 128);
  v126 = v86;
  v127 = *(a2 + 160);
  v128 = *(a2 + 176);
  v87 = *(a2 + 80);
  v121 = *(a2 + 64);
  v122 = v87;
  v88 = *(a2 + 112);
  v123 = *(a2 + 96);
  v124 = v88;
  v89 = *(a2 + 16);
  v117 = *a2;
  v118 = v89;
  v90 = *(a2 + 48);
  v119 = *(a2 + 32);
  v120 = v90;
  if (sub_1B0717014(&v117) != 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v117);
    goto LABEL_24;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v117);
  if (v51)
  {
    v92 = *v91;
    v113[9] = v166;
    v113[10] = v167;
    v114 = v168;
    v113[5] = v162;
    v113[6] = v163;
    v113[7] = v164;
    v113[8] = v165;
    v113[0] = v157;
    v113[1] = v158;
    v113[2] = v159;
    v113[3] = v160;
    v113[4] = v161;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v113);
    sub_1B07AD120(v93, v112);
    sub_1B0C69B14(v50, v92, v51, &v115, &v116);
    sub_1B075E648(a2);
LABEL_24:
  }

  sub_1B0398EFC(v111, &unk_1EB6E2E10, &qword_1B0E9B598);
  v94 = v116;
  *v108 = v116;
  swift_storeEnumTagMultiPayload();
  v95 = v116;
  sub_1B03B2000(v94, *(&v94 + 1));
  return sub_1B0391D50(v95, *(&v95 + 1));
}

uint64_t sub_1B0C67F70(uint64_t a1, uint64_t a2)
{
  v6[3] = MEMORY[0x1E69E6290];
  v6[4] = MEMORY[0x1E6969DF8];
  v6[0] = a1;
  v6[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_0(v6, MEMORY[0x1E69E6290]);
  v4 = *v2;
  v3 = v2[1];
  sub_1B0E42EF8();
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t BodyStructure.containsMultipartPartWithMissingBoundary.getter()
{
  v1 = *(v0 + 144);
  v29[8] = *(v0 + 128);
  v29[9] = v1;
  v29[10] = *(v0 + 160);
  v30 = *(v0 + 176);
  v2 = *(v0 + 80);
  v29[4] = *(v0 + 64);
  v29[5] = v2;
  v3 = *(v0 + 112);
  v29[6] = *(v0 + 96);
  v29[7] = v3;
  v4 = *(v0 + 16);
  v29[0] = *v0;
  v29[1] = v4;
  v5 = *(v0 + 48);
  v29[2] = *(v0 + 32);
  v29[3] = v5;
  if (sub_1B0717014(v29) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v29);
    v7 = v6[5];
    v35 = v6[4];
    v36 = v7;
    v37 = v6[6];
    v38 = *(v6 + 14);
    v8 = v6[1];
    v31 = *v6;
    v32 = v8;
    v9 = v6[3];
    v33 = v6[2];
    v34 = v9;
    v10 = sub_1B0C68134();
    if (v11)
    {
      sub_1B0BA1BC0(v10, v11);
      v12 = (v31 + 32);
      v13 = *(v31 + 16) + 1;
      do
      {
        v14 = --v13 != 0;
        if (!v13)
        {
          break;
        }

        v15 = (v12 + 184);
        v16 = *v12;
        v17 = v12[1];
        v18 = v12[3];
        v39[2] = v12[2];
        v39[3] = v18;
        v39[0] = v16;
        v39[1] = v17;
        v19 = v12[4];
        v20 = v12[5];
        v21 = v12[7];
        v39[6] = v12[6];
        v39[7] = v21;
        v39[4] = v19;
        v39[5] = v20;
        v22 = v12[8];
        v23 = v12[9];
        v24 = v12[10];
        v40 = *(v12 + 176);
        v39[9] = v23;
        v39[10] = v24;
        v39[8] = v22;
        v25 = sub_1B07169CC(v39, v28);
        v26 = BodyStructure.containsMultipartPartWithMissingBoundary.getter(v25);
        sub_1B075E648(v39);
        v12 = v15;
      }

      while ((v26 & 1) == 0);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v29);
    return 0;
  }

  return v14;
}

uint64_t sub_1B0C68134()
{
  v16 = *(v0 + 32);
  if (!v16)
  {
    return 0;
  }

  v17 = *(v0 + 40);
  v1 = *(v17 + 16);

  v15 = v1;
  if (!v1)
  {
    v8 = 0;
LABEL_15:
    sub_1B0398EFC(&v17, &qword_1EB6E5578, &qword_1B0ED2740);
    return v8;
  }

  v3 = 0;
  v4 = 0x797261646E756F62;
  v5 = (result + 40);
  v6 = (v16 + 40);
  while (v3 < *(v16 + 16))
  {
    v8 = *(v6 - 1);
    v7 = *v6;
    v10 = *(v5 - 1);
    v9 = *v5;
    if (sub_1B0E44B98() == v4 && v11 == 0xE800000000000000)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      goto LABEL_15;
    }

    v13 = v4;
    v14 = sub_1B0E46A78();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    if (v14)
    {
      goto LABEL_15;
    }

    ++v3;

    v5 += 2;
    v6 += 2;
    v4 = v13;
    if (v15 == v3)
    {
      v8 = 0;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0C682CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unsigned __int8 a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, void (*a10)(char *, char *), char *a11)
{
  v117 = *MEMORY[0x1E69E9840];
  sub_1B0C946BC(a5, a1, a2, a3);
  if (v20)
  {
    v21 = a2;
  }

  else
  {
    v21 = v19;
  }

  sub_1B0CA3370(a5, a1, a2, a3, a4, v21);
  v93 = v22;
  v96 = v23;
  v88 = v24;
  v26 = v25;
  v27 = *(a6 + 144);
  v115[8] = *(a6 + 128);
  v115[9] = v27;
  v115[10] = *(a6 + 160);
  v116 = *(a6 + 176);
  v28 = *(a6 + 80);
  v115[4] = *(a6 + 64);
  v115[5] = v28;
  v29 = *(a6 + 112);
  v115[6] = *(a6 + 96);
  v115[7] = v29;
  v30 = *(a6 + 16);
  v115[0] = *a6;
  v115[1] = v30;
  v31 = *(a6 + 48);
  v115[2] = *(a6 + 32);
  v115[3] = v31;
  v32 = sub_1B0717014(v115);
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v115);
  if (v26 < 0)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v96)
  {
    v33 = v96 + v26;
  }

  else
  {
    v33 = 0;
  }

  sub_1B0CB7368(v96, v33, v93, v108);
  sub_1B07169CC(a6, &v105);
  v105 = 0u;
  v106 = 0u;
  *&v107[0] = 0x1FFFFFFF0ELL;
  memset(v107 + 8, 0, 33);
  v34 = sub_1B0CB8540();
  if (v37 == 2)
  {
    v91 = 0;
    v38 = *&v107[0];
    if ((*&v107[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
    {
      v89 = 0uLL;
      v90 = 0uLL;
      v39 = a10;
LABEL_48:
      LOBYTE(v101) = a7;
      v39("Content-Type", "");
      v39(": ", "");
      *(&v101 + 1) = 14;
      sub_1B0C6ECE0(&v101, a6, v39, a11, a8, v100);
      sub_1B0C72700(a7, v39);
      v68 = 0;
      goto LABEL_51;
    }

    v86 = v32;
    v71 = *(&v107[1] + 1);
    v70 = *&v107[1];
    v90 = 0uLL;
    v89 = 0uLL;
    v95 = 0;
  }

  else
  {
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v43 = v37;
    v86 = v32;
    v92 = a7;
    v84 = a6;
    v85 = a9;
    v95 = 0;
    v91 = 0;
    v90 = 0uLL;
    v89 = 0uLL;
    v44 = 0;
    do
    {
      sub_1B0CB7ED8(v40, v41, v42, v43 & 1, &v109);
      v97 = v109;
      v48 = v110;
      v49 = v111;
      v50 = v112;
      v51 = v113;
      v52 = v114;
      if (v113 >> 59 == 9)
      {
        v53 = v111;
        v54 = v110;
        v94 = v40;
        v55 = v43;
        v56 = v113;
        v57 = v114;
        v58 = v42;
        v59 = v41;
        v60 = v112;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        v50 = v60;
        v41 = v59;
        v42 = v58;
        v52 = v57;
        v51 = v56;
        v43 = v55;
        v40 = v94;
        v48 = v54;
        v49 = v53;
        *&v89 = v97;
        *(&v89 + 1) = v48;
        *&v90 = v53;
        *(&v90 + 1) = v50;
        v91 = v51;
        v95 = v52;
      }

      if (!(v44 & 1 | (v40 == 0)) && v96 && &v40[-v96] >= 1)
      {
        v61 = v48;
        v62 = v42;
        v63 = v41;
        v64 = v50;
        sub_1B0C92F04(v93, v92, 1, a10, a11, 0, &v40[-v96], v96, v88);
        v50 = v64;
        v41 = v63;
        v42 = v62;
        v48 = v61;
      }

      if ((*&v107[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
      {
        if (*&v107[1])
        {
          v65 = (*(&v107[1] + 1) - *&v107[1]);
        }

        else
        {
          v65 = 0;
        }

        if ((v65 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_77;
        }

        v66 = v48;
        v67 = v50;
        sub_1B0C92F04(v93, v92, 1, a10, a11, 0, v65, *&v107[1], *(&v107[1] + 1));
        sub_1B0398EFC(&v105, &qword_1EB6E5D38, &qword_1B0EE0240);
        v50 = v67;
        v48 = v66;
      }

      *&v105 = v97;
      *(&v105 + 1) = v48;
      *&v106 = v49;
      *(&v106 + 1) = v50;
      *&v107[0] = v51;
      *(&v107[0] + 1) = v52;
      *&v107[1] = v40;
      *(&v107[1] + 1) = v41;
      *&v107[2] = v42;
      BYTE8(v107[2]) = v43 & 1;
      v40 = sub_1B0CB8540();
      v41 = v45;
      v42 = v46;
      v43 = v47;
      v44 = 1;
    }

    while (v47 != 2);
    v38 = *&v107[0];
    if ((*&v107[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
    {
      a6 = v84;
      a7 = v92;
      v39 = a10;
      v68 = v95;
      if (!v95)
      {
        a9 = v85;
        goto LABEL_48;
      }

      v69 = 0;
      a9 = v85;
LABEL_34:
      v72 = a7;
      if (a7)
      {
        goto LABEL_52;
      }

      goto LABEL_35;
    }

    v71 = *(&v107[1] + 1);
    v70 = *&v107[1];
    a9 = v85;
    a6 = v84;
    a7 = v92;
  }

  v39 = a10;
  if (v38 >> 59)
  {
    sub_1B0398EFC(&v105, &qword_1EB6E5D38, &qword_1B0EE0240);
    if (v70)
    {
      v73 = v71 - v70;
    }

    else
    {
      v73 = 0;
    }

    if ((v73 & 0x8000000000000000) == 0)
    {
      v74 = a11;
      sub_1B0C92F04(v93, a7, 1, a10, a11, 0, v73, v70, v71);
      v68 = v95;
      if (v95)
      {
        v69 = 0;
        v72 = a7;
        if (a7)
        {
          goto LABEL_52;
        }

        goto LABEL_35;
      }

      LOBYTE(v101) = a7;
      goto LABEL_50;
    }

    goto LABEL_78;
  }

  if (v86 == 1)
  {
    v68 = v95;
    if (v95)
    {
      v69 = 0;
      goto LABEL_34;
    }

    LOBYTE(v101) = a7;
    v74 = a11;
LABEL_50:
    a10("Content-Type", "");
    a10(": ", "");
    *(&v101 + 1) = 14;
    sub_1B0C6ECE0(&v101, a6, a10, v74, a8, v100);
    sub_1B0C72700(a7, a10);
LABEL_51:
    v69 = v100[0];
    v72 = a7;
    if (a7)
    {
      goto LABEL_52;
    }

    goto LABEL_35;
  }

  if (v95)
  {
    v103 = v107[0];
    v104[0] = v107[1];
    *(v104 + 9) = *(&v107[1] + 9);
    v101 = v105;
    v102 = v106;
    sub_1B03B5C80(&v101, v100, &qword_1EB6E5D40, &qword_1B0EE0250);
    v69 = 0;
  }

  else
  {
    v98[0] = a7;
    v103 = v107[0];
    v104[0] = v107[1];
    *(v104 + 9) = *(&v107[1] + 9);
    v101 = v105;
    v102 = v106;
    sub_1B03B5C80(&v101, v100, &qword_1EB6E5D40, &qword_1B0EE0250);
    a10("Content-Type", "");
    a10(": ", "");
    v99 = 14;
    sub_1B0C6ECE0(v98, a6, a10, a11, a8, v100);
    sub_1B0C72700(a7, a10);
    v69 = v100[0];
  }

  if (v70)
  {
    v83 = v71 - v70;
  }

  else
  {
    v83 = 0;
  }

  if (v83 < 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  sub_1B0C92F04(v93, a7, 1, a10, a11, 0, v83, v70, v71);
  v68 = v95;
  v72 = a7;
  if (a7)
  {
LABEL_52:
    if (v72 == 1)
    {
      v75 = 13;
    }

    else
    {
      v75 = 10;
    }

    LOBYTE(v101) = v75;
    v39(&v101, &v101 + 1);
    if (v69)
    {
      goto LABEL_56;
    }

LABEL_57:
    if (!v68)
    {
LABEL_60:
      result = a6;
      sub_1B075E648(a6);
      v69 = 0;
      goto LABEL_61;
    }

    v101 = v89;
    v102 = v90;
    LOBYTE(v103) = v91;
    *(&v103 + 1) = v68;
    v77 = sub_1B0C7EB6C();
    if (v79 == 2)
    {

      goto LABEL_60;
    }

    v81 = v78;
    if ((v79 & 1) == 0)
    {
      v69 = sub_1B0CAB06C(v77, v78);
      goto LABEL_56;
    }

    if (v77)
    {
      v82 = v78 - v77;
    }

    else
    {
      v82 = 0;
    }

    if ((v82 & 0x8000000000000000) == 0)
    {
      v69 = sub_1B0C93CE8(0, v82, v77, v81);
      goto LABEL_56;
    }

LABEL_80:
    __break(1u);
  }

LABEL_35:
  v39("\r\n", "");
  if (!v69)
  {
    goto LABEL_57;
  }

LABEL_56:

  result = a6;
  sub_1B075E648(a6);
LABEL_61:
  *a9 = v69;
  v80 = *MEMORY[0x1E69E9840];
  return result;
}

const char *sub_1B0C68AEC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[0] = a1;
  v8 = MEMORY[0x1E69E6290];
  v9 = MEMORY[0x1E6969DF8];
  v19 = MEMORY[0x1E69E6290];
  v20 = MEMORY[0x1E6969DF8];
  v17 = "Content-Type";
  v18 = "";
  v10 = __swift_project_boxed_opaque_existential_0(&v17, MEMORY[0x1E69E6290]);
  v12 = *v10;
  v11 = v10[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v17);
  v19 = v8;
  v20 = v9;
  v17 = ": ";
  v18 = "";
  v13 = __swift_project_boxed_opaque_existential_0(&v17, v8);
  v15 = *v13;
  v14 = v13[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v17);
  v22 = 14;
  sub_1B0C6E584(v21, a3, a2, a4, &v17);
  sub_1B0C74C44(a1);
  return v17;
}

void sub_1B0C68BDC(char a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 144);
  v41[8] = *(a2 + 128);
  v41[9] = v4;
  v41[10] = *(a2 + 160);
  v42 = *(a2 + 176);
  v5 = *(a2 + 80);
  v41[4] = *(a2 + 64);
  v41[5] = v5;
  v6 = *(a2 + 112);
  v41[6] = *(a2 + 96);
  v41[7] = v6;
  v7 = *(a2 + 16);
  v41[0] = *a2;
  v41[1] = v7;
  v8 = *(a2 + 48);
  v41[2] = *(a2 + 32);
  v41[3] = v8;
  if (sub_1B0717014(v41) != 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v41);
    v43 = *(v9 + 64);
    v10 = *(&v43 + 1);
    if (!*(&v43 + 1))
    {
      goto LABEL_18;
    }

    v11 = v43;
    if (v11 == sub_1B0E44BB8() && v10 == v12)
    {

      goto LABEL_18;
    }

    v13 = sub_1B0E46A78();
    sub_1B07169CC(a2, &v37);
    sub_1B03B5C80(&v43, &v37, &qword_1EB6E5D48, &unk_1B0EDD3F0);

    if (v13)
    {
      sub_1B0398EFC(&v43, &qword_1EB6E5D48, &unk_1B0EDD3F0);
LABEL_17:
      sub_1B075E648(a2);
      goto LABEL_18;
    }

    v14 = MEMORY[0x1E69E6290];
    v15 = MEMORY[0x1E6969DF8];
    v39 = MEMORY[0x1E69E6290];
    v40 = MEMORY[0x1E6969DF8];
    v37 = "Content-Transfer-Encoding";
    v38 = "";
    v16 = __swift_project_boxed_opaque_existential_0(&v37, MEMORY[0x1E69E6290]);
    v18 = *v16;
    v17 = v16[1];
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v37);
    v39 = v14;
    v40 = v15;
    v37 = ": ";
    v38 = "";
    v19 = __swift_project_boxed_opaque_existential_0(&v37, v14);
    v21 = *v19;
    v20 = v19[1];
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v37);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1B0EDD3B0;
    v23 = (v22 + 16);
    *(v22 + 32) = v36;
    *(v22 + 40) = &v37;
    sub_1B0C7495C(v11, v10, v22);
    sub_1B0398EFC(&v43, &qword_1EB6E5D48, &unk_1B0EDD3F0);
    swift_beginAccess();
    v24 = *v23;
    if (__OFADD__(*v23, 27))
    {
      __break(1u);
    }

    else
    {
      if ((*v23 + 27) < 79)
      {
        goto LABEL_14;
      }

      sub_1B0C74C44(a1);
      v39 = v14;
      v25 = MEMORY[0x1E6969DF8];
      v40 = MEMORY[0x1E6969DF8];
      v37 = "\t";
      v38 = "";
      v26 = __swift_project_boxed_opaque_existential_0(&v37, v14);
      v28 = *v26;
      v27 = v26[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v37);
      if ((v24 & 0x8000000000000000) == 0)
      {
        v39 = v14;
        v40 = v25;
        v37 = v36;
        v38 = &v36[v24];
        v29 = __swift_project_boxed_opaque_existential_0(&v37, v14);
        v31 = *v29;
        v30 = v29[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v37);

        if (v24 <= 0xA0)
        {
LABEL_16:
          sub_1B0C74C44(a1);
          goto LABEL_17;
        }

        __break(1u);
LABEL_14:
        if ((v24 & 0x8000000000000000) == 0)
        {
          v39 = v14;
          v40 = MEMORY[0x1E6969DF8];
          v37 = v36;
          v38 = &v36[v24];
          v32 = __swift_project_boxed_opaque_existential_0(&v37, v14);
          v34 = *v32;
          v33 = v32[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v37);

          if (v24 <= 0xA0)
          {
            goto LABEL_16;
          }

LABEL_22:
          __break(1u);
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v41);
LABEL_18:
  v35 = *MEMORY[0x1E69E9840];
}

void sub_1B0C68F64(char a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 144);
  v56[8] = *(a2 + 128);
  v56[9] = v3;
  v56[10] = *(a2 + 160);
  v57 = *(a2 + 176);
  v4 = *(a2 + 80);
  v56[4] = *(a2 + 64);
  v56[5] = v4;
  v5 = *(a2 + 112);
  v56[6] = *(a2 + 96);
  v56[7] = v5;
  v6 = *(a2 + 16);
  v56[0] = *a2;
  v56[1] = v6;
  v7 = *(a2 + 48);
  v56[2] = *(a2 + 32);
  v56[3] = v7;
  if (sub_1B0717014(v56) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v56);
    if (!v8[4])
    {
      goto LABEL_17;
    }

    v9 = v8 + 10;
    v10 = v8 + 9;
    v11 = v8 + 8;
    v12 = v8 + 7;
    v13 = v8 + 6;
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v56);
    if (v14[12] == 1)
    {
      goto LABEL_17;
    }

    v9 = v14 + 17;
    v13 = v14 + 13;
    v10 = v14 + 16;
    v11 = v14 + 15;
    v12 = v14 + 14;
  }

  v15 = *v12;
  if (*v12 >= 2)
  {
    v16 = *v11;
    v17 = *v13;
    v18 = *v10;
    v19 = *v9;
    v48 = a1;
    v49[0] = a1;
    v20 = MEMORY[0x1E69E6290];
    v21 = MEMORY[0x1E6969DF8];
    v54 = MEMORY[0x1E69E6290];
    v55 = MEMORY[0x1E6969DF8];
    v52 = "Content-Disposition";
    v53 = "";
    v22 = __swift_project_boxed_opaque_existential_0(&v52, MEMORY[0x1E69E6290]);
    v23 = *v22;
    v24 = v22[1];
    v47 = v16;
    sub_1B0716E6C(v17, v15);
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v52);
    v54 = v20;
    v55 = v21;
    v52 = ": ";
    v53 = "";
    v25 = __swift_project_boxed_opaque_existential_0(&v52, v20);
    v27 = *v25;
    v26 = v25[1];
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v52);
    v50 = 21;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1B0EDD3B0;
    v29 = (v28 + 16);
    *(v28 + 32) = v51;
    *(v28 + 40) = &v52;
    v52 = v17;
    v53 = v15;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v30 = sub_1B0E44ED8();
    sub_1B0C7495C(v30, v31, v28);

    if (*(v19 + 16))
    {
      LOBYTE(v52) = 59;
      sub_1B0C72368(&v52, &v52 + 1, v28);
    }

    swift_beginAccess();
    v32 = *v29;
    v33 = __OFADD__(*v29, 21);
    v34 = *v29 + 21;
    if (v33)
    {
      __break(1u);
    }

    else
    {
      if (v34 < 79)
      {
        v35 = v48;
        if ((v32 & 0x8000000000000000) == 0)
        {
          v54 = v20;
          v55 = MEMORY[0x1E6969DF8];
          v52 = v51;
          v53 = &v51[v32];
          v43 = __swift_project_boxed_opaque_existential_0(&v52, v20);
          v45 = *v43;
          v44 = v43[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v52);

          if (v32 <= 0xA0)
          {
            goto LABEL_16;
          }

LABEL_22:
          __break(1u);
        }

        goto LABEL_20;
      }

      v35 = v48;
      sub_1B0C74C44(v48);
      v54 = v20;
      v36 = MEMORY[0x1E6969DF8];
      v55 = MEMORY[0x1E6969DF8];
      v52 = "\t";
      v53 = "";
      v37 = __swift_project_boxed_opaque_existential_0(&v52, v20);
      v39 = *v37;
      v38 = v37[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v52);
      if ((v32 & 0x8000000000000000) == 0)
      {
        v54 = v20;
        v55 = v36;
        v52 = v51;
        v53 = &v51[v32];
        v40 = __swift_project_boxed_opaque_existential_0(&v52, v20);
        v42 = *v40;
        v41 = v40[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v52);

        if (v32 <= 0xA0)
        {
          v34 = v32 + 1;
LABEL_16:
          v50 = v34;
          sub_1B0C6D6A8(v47, v18, v19, v49);
          sub_1B0C74C44(v35);

          goto LABEL_17;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_17:
  v46 = *MEMORY[0x1E69E9840];
}

void sub_1B0C69348(int a1, uint64_t a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 144);
  v54[8] = *(a2 + 128);
  v54[9] = v4;
  v54[10] = *(a2 + 160);
  v55 = *(a2 + 176);
  v5 = *(a2 + 80);
  v54[4] = *(a2 + 64);
  v54[5] = v5;
  v6 = *(a2 + 112);
  v54[6] = *(a2 + 96);
  v54[7] = v6;
  v7 = *(a2 + 16);
  v54[0] = *a2;
  v54[1] = v7;
  v8 = *(a2 + 48);
  v54[2] = *(a2 + 32);
  v54[3] = v8;
  if (sub_1B0717014(v54) != 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v54);
    v56 = *(v9 + 32);
    v10 = *(&v56 + 1);
    if (!*(&v56 + 1))
    {
      goto LABEL_16;
    }

    v11 = v56;
    v47[0] = a1;
    v12 = MEMORY[0x1E69E6290];
    v13 = MEMORY[0x1E6969DF8];
    v53[3] = MEMORY[0x1E69E6290];
    v53[4] = MEMORY[0x1E6969DF8];
    v53[0] = "Content-ID";
    v53[1] = "";
    v14 = __swift_project_boxed_opaque_existential_0(v53, MEMORY[0x1E69E6290]);
    v15 = *v14;
    v16 = v14[1];
    sub_1B07169CC(a2, &v49);
    sub_1B03B5C80(&v56, &v49, &qword_1EB6E3850, &qword_1B0E9B600);
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(v53);
    v51 = v12;
    v52 = v13;
    v49 = ": ";
    v50 = "";
    v17 = __swift_project_boxed_opaque_existential_0(&v49, v12);
    v19 = *v17;
    v18 = v17[1];
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v49);
    v48 = 12;
    v20 = sub_1B0E44CF8();
    v24 = v20 + 2;
    if (__OFADD__(v20, 2))
    {
      __break(1u);
    }

    else
    {
      if (v24 < 0)
      {
        goto LABEL_21;
      }

      v46 = a1;
      v22 = &qword_1EB6E3850;
      v23 = &qword_1B0E9B600;
      v20 = &v56;
      v21 = &v49;
      if (v24 < 1025)
      {
        isStackAllocationSafe = sub_1B03B5C80(&v56, &v49, &qword_1EB6E3850, &qword_1B0E9B600);
LABEL_8:
        v45[1] = v45;
        MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        v27 = v45 - v26;
        v28 = v45 + v24 - v26;
        v29 = swift_allocObject();
        v29[2] = 0;
        v29[3] = v24;
        v29[4] = v27;
        v29[5] = v28;
        LOBYTE(v49) = 60;
        sub_1B0C72368(&v49, &v49 + 1, v29);
        sub_1B0C742B8(v11, v10, v29);
        LOBYTE(v49) = 62;
        sub_1B0C72368(&v49, &v49 + 1, v29);
        swift_beginAccess();
        v30 = v29[2];
        if (!__OFADD__(v30, 12))
        {
          if (v29[2] + 12 < 79)
          {
            goto LABEL_13;
          }

          v31 = v46;
          sub_1B0C74C44(v46);
          v32 = MEMORY[0x1E69E6290];
          v51 = MEMORY[0x1E69E6290];
          v33 = MEMORY[0x1E6969DF8];
          v52 = MEMORY[0x1E6969DF8];
          v49 = "\t";
          v50 = "";
          v34 = __swift_project_boxed_opaque_existential_0(&v49, MEMORY[0x1E69E6290]);
          v36 = *v34;
          v35 = v34[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v49);
          if ((v30 & 0x8000000000000000) == 0)
          {
            v51 = v32;
            v52 = v33;
            v49 = v27;
            v50 = &v27[v30];
            v37 = __swift_project_boxed_opaque_existential_0(&v49, v32);
            v39 = *v37;
            v38 = v37[1];
            sub_1B0E42EF8();
            __swift_destroy_boxed_opaque_existential_0(&v49);

            if (v24 >= v30)
            {
LABEL_15:
              sub_1B0398EFC(&v56, &qword_1EB6E3850, &qword_1B0E9B600);
              sub_1B0398EFC(&v56, &qword_1EB6E3850, &qword_1B0E9B600);
              sub_1B0C74C44(v31);
              sub_1B075E648(a2);
              goto LABEL_16;
            }

            __break(1u);
LABEL_13:
            v31 = v46;
            if ((v30 & 0x8000000000000000) == 0)
            {
              v51 = MEMORY[0x1E69E6290];
              v52 = MEMORY[0x1E6969DF8];
              v49 = v27;
              v50 = &v27[v30];
              v40 = __swift_project_boxed_opaque_existential_0(&v49, MEMORY[0x1E69E6290]);
              v42 = *v40;
              v41 = v40[1];
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v49);

              if (v24 >= v30)
              {
                goto LABEL_15;
              }

LABEL_24:
              __break(1u);
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    sub_1B03B5C80(v20, v21, v22, v23);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v44 = swift_slowAlloc();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C71E78(v44, v44 + v24, 0, v47, v11, v10);
      MEMORY[0x1B272C230](v44, -1, -1);
      v31 = v46;
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v54);
LABEL_16:
  v43 = *MEMORY[0x1E69E9840];
}

void sub_1B0C697EC(char a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  v4 = *(a2 + 160);
  v29[9] = *(a2 + 144);
  v29[10] = v4;
  v5 = *(a2 + 64);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v29[5] = *(a2 + 80);
  v29[6] = v6;
  v30 = *(a2 + 176);
  v29[7] = v7;
  v29[8] = v3;
  v8 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v8;
  v9 = *(a2 + 48);
  v29[2] = *(a2 + 32);
  v29[3] = v9;
  v29[4] = v5;
  if (sub_1B0717014(v29) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v29);
    if (!v10[4])
    {
      return;
    }

    v11 = v10 + 11;
    v12 = v10 + 7;
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v29);
    if (v13[12] == 1)
    {
      return;
    }

    v11 = v13 + 18;
    v12 = v13 + 14;
  }

  if (*v12 != 1)
  {
    v14 = *v11;
    if (*v11)
    {
      if (*(v14 + 16))
      {
        v27[0] = a1;
        v15 = MEMORY[0x1E69E6290];
        v16 = MEMORY[0x1E6969DF8];
        v25 = MEMORY[0x1E69E6290];
        v26 = MEMORY[0x1E6969DF8];
        v23 = "Content-Language";
        v24 = "";
        v17 = __swift_project_boxed_opaque_existential_0(&v23, MEMORY[0x1E69E6290]);
        v19 = *v17;
        v18 = v17[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v23);
        v25 = v15;
        v26 = v16;
        v23 = ": ";
        v24 = "";
        v20 = __swift_project_boxed_opaque_existential_0(&v23, v15);
        v22 = *v20;
        v21 = v20[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v23);
        v28 = 18;
        sub_1B0C6E240(v27, v14);
        sub_1B0C74C44(a1);
      }
    }
  }
}

void sub_1B0C69968(char a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  v4 = *(a2 + 160);
  v33[9] = *(a2 + 144);
  v33[10] = v4;
  v5 = *(a2 + 64);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v33[5] = *(a2 + 80);
  v33[6] = v6;
  v34 = *(a2 + 176);
  v33[7] = v7;
  v33[8] = v3;
  v8 = *(a2 + 16);
  v33[0] = *a2;
  v33[1] = v8;
  v9 = *(a2 + 48);
  v33[2] = *(a2 + 32);
  v33[3] = v9;
  v33[4] = v5;
  if (sub_1B0717014(v33) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v33);
    if (!v10[4])
    {
      return;
    }

    v11 = v10 + 14;
    v12 = v10 + 13;
    v13 = v10 + 12;
    v14 = v10 + 11;
    v15 = v10 + 7;
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v33);
    if (v16[12] == 1)
    {
      return;
    }

    v11 = v16 + 21;
    v12 = v16 + 20;
    v13 = v16 + 19;
    v14 = v16 + 18;
    v15 = v16 + 14;
  }

  if (*v15 != 1 && *v14 && *v11)
  {
    v17 = *v12;
    if (*v12)
    {
      v18 = *v13;
      v31[0] = a1;
      v19 = MEMORY[0x1E69E6290];
      v20 = MEMORY[0x1E6969DF8];
      v29 = MEMORY[0x1E69E6290];
      v30 = MEMORY[0x1E6969DF8];
      v27 = "Content-Location";
      v28 = "";
      v21 = __swift_project_boxed_opaque_existential_0(&v27, MEMORY[0x1E69E6290]);
      v23 = *v21;
      v22 = v21[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v27);
      v29 = v19;
      v30 = v20;
      v27 = ": ";
      v28 = "";
      v24 = __swift_project_boxed_opaque_existential_0(&v27, v19);
      v26 = *v24;
      v25 = v24[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v27);
      v32 = 18;
      sub_1B0C6D3A8(v18, v17, v31);
      sub_1B0C74C44(a1);
    }
  }
}

uint64_t sub_1B0C69B14(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v624 = *MEMORY[0x1E69E9840];
  v494 = sub_1B0E443C8();
  v10 = *(v494 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v494);
  v14 = &v479[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v489 = &v479[-v15];
  v497 = type metadata accessor for Message.Data(0);
  v16 = *(*(v497 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v497);
  v487 = &v479[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v495 = &v479[-v19];
  v505 = type metadata accessor for Message(0);
  v20 = *(v505 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v505);
  v509 = &v479[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v506 = &v479[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x1EEE9AC00](v25);
  v512 = &v479[-v28];
  v525 = a5;
  v504 = *(a2 + 16);
  if (!v504)
  {
LABEL_407:
    v474 = *MEMORY[0x1E69E9840];
    return result;
  }

  v488 = 0;
  v29 = a2 + 32;
  v30 = 0;
  v496 = &v526 + 1;
  v502 = (a3 + 32);
  v503 = v29;
  v510 = &v530 + 1;
  v500 = (v20 + 48);
  v501 = (v20 + 56);
  v492 = (v10 + 32);
  v493 = (v10 + 8);
  v491 = &v533[1];
  v507 = a3;
  v31 = MEMORY[0x1E69E6290];
  v484 = a5;
  v518 = a1;
  v508 = a4;
  v499 = v14;
  while (1)
  {
    v32 = (v503 + 184 * v30);
    v33 = v32[9];
    v34 = v32[7];
    v546 = v32[8];
    v547 = v33;
    v35 = v32[9];
    v548 = v32[10];
    v36 = v32[5];
    v37 = v32[3];
    v542 = v32[4];
    v543 = v36;
    v38 = v32[5];
    v39 = v32[7];
    v544 = v32[6];
    v545 = v39;
    v40 = v32[1];
    v538 = *v32;
    v539 = v40;
    v41 = v32[3];
    v43 = *v32;
    v42 = v32[1];
    v540 = v32[2];
    v541 = v41;
    v585 = v546;
    v586 = v35;
    v587 = v32[10];
    v581 = v542;
    v582 = v38;
    v583 = v544;
    v584 = v34;
    v577 = v43;
    v578 = v42;
    v549 = *(v32 + 176);
    v588 = *(v32 + 176);
    v579 = v540;
    v580 = v37;
    v511 = v30;
    if (v30)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v44 = 13;
        }

        else
        {
          v44 = 10;
        }

        LOBYTE(v526) = v44;
        *(&v531 + 1) = v31;
        v45 = MEMORY[0x1E6969DF8];
        *&v532[0] = MEMORY[0x1E6969DF8];
        *&v530 = &v526;
        v46 = v496;
      }

      else
      {
        *(&v531 + 1) = v31;
        v45 = MEMORY[0x1E6969DF8];
        *&v532[0] = MEMORY[0x1E6969DF8];
        v46 = "";
        *&v530 = "\r\n";
      }

      *(&v530 + 1) = v46;
      v47 = __swift_project_boxed_opaque_existential_0(&v530, v31);
      v48 = *v47;
      v49 = v47[1];
      sub_1B07169CC(&v538, &v534);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v530);
    }

    else
    {
      sub_1B07169CC(&v538, &v534);
      v45 = MEMORY[0x1E6969DF8];
    }

    *(&v535 + 1) = v31;
    *&v536 = v45;
    *&v534 = "--";
    *(&v534 + 1) = "";
    v50 = __swift_project_boxed_opaque_existential_0(&v534, v31);
    v52 = *v50;
    v51 = v50[1];
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v534);
    v53 = *(v507 + 16);
    v54 = v502;
    for (i = v510; v53; --v53)
    {
      v59 = *v54++;
      v58 = v59;
      if ((v59 - 127) > 0xFFFFFFA0)
      {
        LOBYTE(v530) = v58;
        *(&v535 + 1) = MEMORY[0x1E69E6290];
        *&v536 = MEMORY[0x1E6969DF8];
        *&v534 = &v530;
        *(&v534 + 1) = i;
        v60 = __swift_project_boxed_opaque_existential_0(&v534, MEMORY[0x1E69E6290]);
        v62 = *v60;
        v61 = v60[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v534);
      }
    }

    if (a1)
    {
      v56 = v506;
      v57 = a1 == 1 ? 13 : 10;
      LOBYTE(v530) = v57;
      *(&v535 + 1) = MEMORY[0x1E69E6290];
      *&v536 = MEMORY[0x1E6969DF8];
      *&v534 = &v530;
      *(&v534 + 1) = i;
      v66 = __swift_project_boxed_opaque_existential_0(&v534, MEMORY[0x1E69E6290]);
      v68 = *v66;
      v67 = v66[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v534);
    }

    else
    {
      *(&v535 + 1) = MEMORY[0x1E69E6290];
      *&v536 = MEMORY[0x1E6969DF8];
      *&v534 = "\r\n";
      *(&v534 + 1) = "";
      v63 = __swift_project_boxed_opaque_existential_0(&v534, MEMORY[0x1E69E6290]);
      v65 = *v63;
      v64 = v63[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v534);
      v56 = v506;
    }

    v69 = v512;
    v70 = v505;
    (*v501)(v512, 1, 1, v505);
    sub_1B03B5C80(v69, v56, &unk_1EB6E2E10, &qword_1B0E9B598);
    if ((*v500)(v56, 1, v70) != 1)
    {
      break;
    }

    sub_1B0398EFC(v56, &unk_1EB6E2E10, &qword_1B0E9B598);
    LOBYTE(v530) = a1;
    v31 = MEMORY[0x1E69E6290];
    *(&v535 + 1) = MEMORY[0x1E69E6290];
    v71 = MEMORY[0x1E6969DF8];
    *&v536 = MEMORY[0x1E6969DF8];
    *&v534 = "Content-Type";
    *(&v534 + 1) = "";
    v72 = __swift_project_boxed_opaque_existential_0(&v534, MEMORY[0x1E69E6290]);
    v74 = *v72;
    v73 = v72[1];
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v534);
    *(&v535 + 1) = v31;
    *&v536 = v71;
    *&v534 = ": ";
    *(&v534 + 1) = "";
    v75 = __swift_project_boxed_opaque_existential_0(&v534, v31);
    v77 = *v75;
    v76 = v75[1];
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v534);
    *(&v530 + 1) = 14;
    sub_1B0C6E584(&v530, &v577, a4, a5, &v526);
    if (a1)
    {
      if (a1 == 1)
      {
        v78 = 13;
      }

      else
      {
        v78 = 10;
      }

      v533[0] = v78;
      *(&v535 + 1) = v31;
      *&v536 = v71;
      *&v534 = v533;
      *(&v534 + 1) = v491;
      v98 = __swift_project_boxed_opaque_existential_0(&v534, v31);
      v100 = *v98;
      v99 = v98[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v534);
    }

    else
    {
      *(&v535 + 1) = v31;
      *&v536 = v71;
      *&v534 = "\r\n";
      *(&v534 + 1) = "";
      v95 = __swift_project_boxed_opaque_existential_0(&v534, v31);
      v97 = *v95;
      v96 = v95[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v534);
    }

    v101 = v526;
    sub_1B0C68BDC(a1, &v577);
    sub_1B0C68F64(a1, &v577);
    sub_1B0C69348(a1, &v577);
    v619[8] = v585;
    v619[9] = v586;
    v619[10] = v587;
    v619[4] = v581;
    v619[5] = v582;
    v619[6] = v583;
    v619[7] = v584;
    v619[0] = v577;
    v619[1] = v578;
    v619[2] = v579;
    v620 = v588;
    v619[3] = v580;
    v102 = sub_1B0717014(v619) == 1;
    v103 = v510;
    if (v102)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v619);
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v619);
      v623 = *(v104 + 48);
      v105 = *(&v623 + 1);
      if (*(&v623 + 1))
      {
        v520 = v623;
        LOBYTE(v526) = a1;
        *(&v531 + 1) = v31;
        v106 = MEMORY[0x1E6969DF8];
        *&v532[0] = MEMORY[0x1E6969DF8];
        *&v530 = "Content-Description";
        *(&v530 + 1) = "";
        v107 = __swift_project_boxed_opaque_existential_0(&v530, v31);
        v108 = *v107;
        v109 = v107[1];
        sub_1B07169CC(&v577, &v534);
        sub_1B03B5C80(&v623, &v534, &qword_1EB6E3850, &qword_1B0E9B600);
        a4 = v508;
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v530);
        *(&v535 + 1) = v31;
        *&v536 = v106;
        *&v534 = ": ";
        *(&v534 + 1) = "";
        v110 = __swift_project_boxed_opaque_existential_0(&v534, v31);
        v112 = *v110;
        v111 = v110[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v534);
        v527 = 21;
        v103 = v510;
        sub_1B0C6D3A8(v520, v105, &v526);
        sub_1B0398EFC(&v623, &qword_1EB6E3850, &qword_1B0E9B600);
        sub_1B0C74C44(a1);
        sub_1B075E648(&v577);
      }
    }

    sub_1B0C697EC(a1, &v577);
    sub_1B0C69968(a1, &v577);
    v621[8] = v585;
    v621[9] = v586;
    v621[10] = v587;
    v621[4] = v581;
    v621[5] = v582;
    v621[6] = v583;
    v621[7] = v584;
    v621[0] = v577;
    v621[1] = v578;
    v621[2] = v579;
    v622 = v588;
    v621[3] = v580;
    if (sub_1B0717014(v621) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v621);
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v621);
      v114 = *(v113 + 80);
      if (v114 > 0)
      {
        sub_1B0C6FEFC(a1, v114);
      }
    }

    if (a1)
    {
      if (a1 == 1)
      {
        v115 = 13;
      }

      else
      {
        v115 = 10;
      }

      LOBYTE(v530) = v115;
      *(&v535 + 1) = v31;
      *&v536 = MEMORY[0x1E6969DF8];
      *&v534 = &v530;
      *(&v534 + 1) = v103;
    }

    else
    {
      *(&v535 + 1) = v31;
      *&v536 = MEMORY[0x1E6969DF8];
      *&v534 = "\r\n";
      *(&v534 + 1) = "";
    }

    v116 = __swift_project_boxed_opaque_existential_0(&v534, v31);
    v118 = *v116;
    v117 = v116[1];
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v534);
    v119 = v511;
LABEL_397:
    v609[8] = v585;
    v609[9] = v586;
    v609[10] = v587;
    v609[4] = v581;
    v609[5] = v582;
    v609[6] = v583;
    v609[7] = v584;
    v609[0] = v577;
    v609[1] = v578;
    v609[2] = v579;
    v610 = v588;
    v609[3] = v580;
    if (sub_1B0717014(v609) == 1)
    {
      v466 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v609);
      if (!v101)
      {
        sub_1B075E648(&v577);
        goto LABEL_5;
      }

      sub_1B0C69B14(a1, *v465, v101, a4, a5, v466);
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v609);
    }

    sub_1B075E648(&v577);

LABEL_5:
    v14 = v499;
    v30 = v119 + 1;
    sub_1B0398EFC(v512, &unk_1EB6E2E10, &qword_1B0E9B598);
    if (v30 == v504)
    {
      goto LABEL_406;
    }
  }

  v79 = v509;
  v80 = sub_1B0C74D18(v56, v509);
  a1 = v479;
  v81 = MEMORY[0x1EEE9AC00](v80);
  LOBYTE(v475) = v82;
  v476 = a4;
  MEMORY[0x1EEE9AC00](v81);
  v477 = sub_1B0C76E44;
  v478 = v83;
  v84 = v79;
  v85 = v495;
  sub_1B0C74DAC(v84, v495, type metadata accessor for Message.Data);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v86 = v85;
    v87 = v489;
    v88 = v494;
    (*v492)(v489, v86, v494);
    sub_1B075CEE0();
    sub_1B0E45668();
    sub_1B0E456C8();
    (*v493)(v87, v88);
    if (v534 == v530)
    {
LABEL_69:
      v607[8] = v585;
      v607[9] = v586;
      v607[10] = v587;
      v607[4] = v581;
      v607[5] = v582;
      v607[6] = v583;
      v607[7] = v584;
      v607[0] = v577;
      v607[1] = v578;
      v607[2] = v579;
      v608 = v588;
      v607[3] = v580;
      LODWORD(v490) = sub_1B0717014(v607);
      v498 = v479;
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v607);
      v31 = MEMORY[0x1E69E6290];
      v134 = MEMORY[0x1E6969DF8];
      memset(v533, 0, 64);
      v533[64] = 3;
      sub_1B07169CC(&v577, &v534);
      v530 = 0u;
      v531 = 0u;
      *&v532[0] = 0x1FFFFFFF0ELL;
      *(v532 + 8) = 0u;
      *(&v532[1] + 8) = 0u;
      BYTE8(v532[2]) = 0;
      v135 = sub_1B0CB8540();
      if (v138 == 2)
      {
        v517 = 0;
        if ((*&v532[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
        {
          v513 = 0;
          v514 = 0;
          v515 = 0;
          v516 = 0;
          v139 = v518;
          v140 = v508;
          goto LABEL_86;
        }

        v166 = *(&v532[1] + 1);
        v165 = *&v532[1];
        v515 = 0;
        v516 = 0;
        v513 = 0;
        v514 = 0;
        v519 = 0;
        v154 = v508;
        if (!(*&v532[0] >> 59))
        {
          goto LABEL_89;
        }
      }

      else
      {
        v141 = v136;
        v142 = v137;
        v143 = v138;
        v519 = 0;
        v516 = 0;
        v517 = 0;
        v514 = 0;
        v515 = 0;
        v513 = 0;
        do
        {
          v520 = v135;
          sub_1B0CB7ED8(v135, v141, v142, v143 & 1, v550);
          v147 = v550[0];
          v148 = v550[1];
          v149 = v550[2];
          v150 = v550[3];
          v151 = v551;
          v152 = v552;
          if (v551 >> 59 == 9)
          {
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

            v513 = v147;
            v514 = v148;
            v515 = v149;
            v516 = v150;
            v517 = v151;
            v519 = v152;
          }

          if ((*&v532[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
          {
            if (*&v532[1])
            {
              v153 = (*(&v532[1] + 1) - *&v532[1]);
            }

            else
            {
              v153 = 0;
            }

            if ((v153 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_408;
            }

            sub_1B0C92F04(3, v518, 1, sub_1B0C76E40, v524, 0, v153, *&v532[1], *(&v532[1] + 1));
            sub_1B0398EFC(&v530, &qword_1EB6E5D38, &qword_1B0EE0240);
          }

          *&v530 = v147;
          *(&v530 + 1) = v148;
          *&v531 = v149;
          *(&v531 + 1) = v150;
          *&v532[0] = v151;
          *(&v532[0] + 1) = v152;
          *&v532[1] = v520;
          *(&v532[1] + 1) = v141;
          *&v532[2] = v142;
          BYTE8(v532[2]) = v143 & 1;
          v135 = sub_1B0CB8540();
          v141 = v144;
          v142 = v145;
          v143 = v146;
        }

        while (v146 != 2);
        v154 = v508;
        if ((*&v532[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
        {
          a5 = v484;
          v139 = v518;
          v31 = MEMORY[0x1E69E6290];
          v155 = v519;
          if (!v519)
          {
            v134 = MEMORY[0x1E6969DF8];
            v140 = v508;
LABEL_86:
            LOBYTE(v526) = v139;
            *(&v535 + 1) = v31;
            *&v536 = v134;
            *&v534 = "Content-Type";
            *(&v534 + 1) = "";
            v156 = __swift_project_boxed_opaque_existential_0(&v534, v31);
            v158 = *v156;
            v157 = v156[1];
            sub_1B0E42EF8();
            __swift_destroy_boxed_opaque_existential_0(&v534);
            *(&v535 + 1) = v31;
            *&v536 = v134;
            *&v534 = ": ";
            *(&v534 + 1) = "";
            v159 = __swift_project_boxed_opaque_existential_0(&v534, v31);
            v161 = *v159;
            v160 = v159[1];
            sub_1B0E42EF8();
            __swift_destroy_boxed_opaque_existential_0(&v534);
            v527 = 14;
            sub_1B0C6ECE0(&v526, &v577, sub_1B0C76E40, v524, v140, &v534);
            sub_1B0C72700(v139, sub_1B0C76E40);
            v162 = v534;
            v155 = 0;
            v163 = v139;
            if (!v139)
            {
LABEL_87:
              *(&v535 + 1) = v31;
              *&v536 = v134;
              v164 = "";
              *&v534 = "\r\n";
LABEL_105:
              *(&v534 + 1) = v164;
              v169 = __swift_project_boxed_opaque_existential_0(&v534, v31);
              v171 = *v169;
              v170 = v169[1];
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v534);
              v119 = v511;
              if (v162)
              {

                sub_1B075E648(&v577);
              }

              else if (v155)
              {
                v172 = v511;
                v571 = v513;
                v572 = v514;
                v573 = v515;
                v574 = v516;
                v575 = v517;
                v576 = v155;
                v173 = sub_1B0C7EB6C();
                if (v175 == 2)
                {

                  sub_1B075E648(&v577);
                  v162 = 0;
                  v119 = v172;
                }

                else
                {
                  v199 = v174;
                  if (v175)
                  {
                    if (v173)
                    {
                      v200 = v174 - v173;
                    }

                    else
                    {
                      v200 = 0;
                    }

                    if (v200 < 0)
                    {
                      goto LABEL_429;
                    }

                    v201 = v488;
                    v162 = sub_1B0C93CE8(0, v200, v173, v199);
                    v488 = v201;
                  }

                  else
                  {
                    v162 = sub_1B0CAB06C(v173, v174);
                  }

                  sub_1B075E648(&v577);
                  v119 = v172;
                }
              }

              else
              {
                sub_1B075E648(&v577);
                v162 = 0;
              }

              *&v534 = v162;
              sub_1B0C74E2C(v509);
              goto LABEL_396;
            }

LABEL_101:
            if (v163 == 1)
            {
              v168 = 13;
            }

            else
            {
              v168 = 10;
            }

            LOBYTE(v526) = v168;
            *(&v535 + 1) = v31;
            *&v536 = v134;
            *&v534 = &v526;
            v164 = v496;
            goto LABEL_105;
          }

          goto LABEL_98;
        }

        v166 = *(&v532[1] + 1);
        v165 = *&v532[1];
        a5 = v484;
        v31 = MEMORY[0x1E69E6290];
        if (!(*&v532[0] >> 59))
        {
LABEL_89:
          if (v490 != 1)
          {
            if (v519)
            {
              v536 = v532[0];
              v537[0] = v532[1];
              *(v537 + 9) = *(&v532[1] + 9);
              v534 = v530;
              v535 = v531;
              sub_1B03B5C80(&v534, &v526, &qword_1EB6E5D40, &qword_1B0EE0250);
              v162 = 0;
            }

            else
            {
              v309 = v518;
              v522[0] = v518;
              v528 = v31;
              v310 = MEMORY[0x1E6969DF8];
              v529 = MEMORY[0x1E6969DF8];
              v526 = "Content-Type";
              v527 = "";
              v311 = __swift_project_boxed_opaque_existential_0(&v526, v31);
              v312 = *v311;
              v313 = v311[1];
              sub_1B03B5C80(&v530, &v534, &qword_1EB6E5D38, &qword_1B0EE0240);
              v314 = v508;
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v526);
              *(&v535 + 1) = v31;
              *&v536 = v310;
              *&v534 = ": ";
              *(&v534 + 1) = "";
              v315 = __swift_project_boxed_opaque_existential_0(&v534, v31);
              v317 = *v315;
              v316 = v315[1];
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v534);
              v523 = 14;
              sub_1B0C6ECE0(v522, &v577, sub_1B0C76E40, v524, v314, &v534);
              sub_1B0C72700(v309, sub_1B0C76E40);
              v162 = v534;
            }

            if (v165)
            {
              v318 = v166 - v165;
            }

            else
            {
              v318 = 0;
            }

            if (v318 < 0)
            {
              goto LABEL_418;
            }

            v319 = v518;
            sub_1B0C92F04(3, v518, 1, sub_1B0C76E40, v524, 0, v318, v165, v166);
            v134 = MEMORY[0x1E6969DF8];
            v155 = v519;
            v163 = v319;
            if (!v319)
            {
              goto LABEL_87;
            }

            goto LABEL_101;
          }

          v155 = v519;
          if (v519)
          {
            v162 = 0;
            v139 = v518;
LABEL_99:
            v134 = MEMORY[0x1E6969DF8];
            goto LABEL_100;
          }

          v139 = v518;
          LOBYTE(v526) = v518;
          *(&v535 + 1) = v31;
          v134 = MEMORY[0x1E6969DF8];
          *&v536 = MEMORY[0x1E6969DF8];
          *&v534 = "Content-Type";
          *(&v534 + 1) = "";
          v303 = __swift_project_boxed_opaque_existential_0(&v534, v31);
          v305 = *v303;
          v304 = v303[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v534);
          *(&v535 + 1) = v31;
          *&v536 = v134;
          *&v534 = ": ";
          *(&v534 + 1) = "";
          v306 = __swift_project_boxed_opaque_existential_0(&v534, v31);
          v308 = *v306;
          v307 = v306[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v534);
          v527 = 14;
          sub_1B0C6ECE0(&v526, &v577, sub_1B0C76E40, v524, v154, &v534);
          sub_1B0C72700(v139, sub_1B0C76E40);
          v162 = v534;
LABEL_100:
          v163 = v139;
          if (!v139)
          {
            goto LABEL_87;
          }

          goto LABEL_101;
        }
      }

      sub_1B0398EFC(&v530, &qword_1EB6E5D38, &qword_1B0EE0240);
      if (v165)
      {
        v167 = v166 - v165;
      }

      else
      {
        v167 = 0;
      }

      if (v167 < 0)
      {
        goto LABEL_411;
      }

      v139 = v518;
      sub_1B0C92F04(3, v518, 1, sub_1B0C76E40, v524, 0, v167, v165, v166);
      v155 = v519;
      if (!v519)
      {
        LOBYTE(v526) = v139;
        *(&v535 + 1) = v31;
        v134 = MEMORY[0x1E6969DF8];
        *&v536 = MEMORY[0x1E6969DF8];
        *&v534 = "Content-Type";
        *(&v534 + 1) = "";
        v223 = __swift_project_boxed_opaque_existential_0(&v534, v31);
        v225 = *v223;
        v224 = v223[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v534);
        *(&v535 + 1) = v31;
        *&v536 = v134;
        *&v534 = ": ";
        *(&v534 + 1) = "";
        v226 = __swift_project_boxed_opaque_existential_0(&v534, v31);
        v228 = *v226;
        v227 = v226[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v534);
        v527 = 14;
        sub_1B0C6ECE0(&v526, &v577, sub_1B0C76E40, v524, v154, &v534);
        sub_1B0C72700(v139, sub_1B0C76E40);
        v162 = v534;
        goto LABEL_100;
      }

LABEL_98:
      v162 = 0;
      goto LABEL_99;
    }
  }

  else
  {
    v89 = *v85;
    v90 = v85[1];
    v91 = v90 >> 62;
    if ((v90 >> 62) > 1)
    {
      if (v91 != 2)
      {
        sub_1B0391D50(v89, v90);
        goto LABEL_69;
      }

      v93 = *(v89 + 16);
      v94 = *(v89 + 24);
      sub_1B0391D50(v89, v90);
    }

    else if (v91)
    {
      v120 = *v85;
      sub_1B0391D50(v89, v90);
      v93 = v120;
      v94 = v120 >> 32;
    }

    else
    {
      v92 = v85[1];
      sub_1B0391D50(v89, v90);
      v93 = 0;
      v94 = BYTE6(v92);
    }

    if (v93 == v94)
    {
      goto LABEL_69;
    }
  }

  v121 = v487;
  sub_1B0C74DAC(v509, v487, type metadata accessor for Message.Data);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v128 = *v121;
    v127 = v121[1];
    v129 = v127 >> 62;
    v498 = v479;
    v482 = v128;
    v483 = v127;
    if ((v127 >> 62) <= 1)
    {
      if (!v129)
      {
        v521[0] = v128;
        LOWORD(v521[1]) = v127;
        BYTE2(v521[1]) = BYTE2(v127);
        BYTE3(v521[1]) = BYTE3(v127);
        BYTE4(v521[1]) = BYTE4(v127);
        BYTE5(v521[1]) = BYTE5(v127);
        v130 = memchr(v521, 10, BYTE6(v127));
        if (!v130 || (v131 = v130 - v521, v130 - v521 < 0))
        {
          v133 = BYTE6(v127);
          goto LABEL_279;
        }

        v132 = v131 + 1;
        if (__OFADD__(v131, 1))
        {
          goto LABEL_412;
        }

        if (BYTE6(v127) < v132)
        {
          v133 = BYTE6(v127);
          a5 = v484;
          goto LABEL_279;
        }

        if (v132 < v131)
        {
          goto LABEL_413;
        }

        if (v130 == v521)
        {
          v329 = 0;
        }

        else if (*(v521 + v131 - 1) == 13)
        {
          v329 = v131 - 1;
        }

        else
        {
          v329 = v130 - v521;
        }

        while (1)
        {
          v338 = v521 + v132;
          v339 = memchr(v521 + v132, 10, BYTE6(v127) - v132);
          if (!v339)
          {
            goto LABEL_278;
          }

          v340 = v339 - v338;
          if (v339 - v338 < 0)
          {
            goto LABEL_278;
          }

          v341 = v340 + 1;
          if (__OFADD__(v340, 1))
          {
            goto LABEL_412;
          }

          if (BYTE6(v127) - v132 < v341)
          {
LABEL_278:
            v133 = BYTE6(v127);
            a5 = v484;
            goto LABEL_279;
          }

          v342 = v340 + v132;
          if (__OFADD__(v340, v132))
          {
            goto LABEL_414;
          }

          v133 = v341 + v132;
          if (__OFADD__(v341, v132))
          {
            goto LABEL_415;
          }

          if (v341 < v340 || v133 < v342)
          {
            goto LABEL_413;
          }

          if (v132 < v342)
          {
            if (v342 > BYTE6(v127))
            {
              goto LABEL_426;
            }

            if (*(v521 + v342 - 1) == 13)
            {
              --v342;
            }
          }

          if (v132 == v342)
          {
            break;
          }

          if (BYTE6(v127) < v133)
          {
            goto LABEL_416;
          }

          v329 = v342;
          v343 = v133 < v132;
          v132 += v341;
          if (v343)
          {
            goto LABEL_417;
          }
        }

        if (v133 < v329 || BYTE6(v127) < v133)
        {
          goto LABEL_439;
        }

        v343 = v133 < v132;
        a5 = v484;
        v31 = 0x1FFFFFFF0ELL;
        if (v343)
        {
          __break(1u);
LABEL_406:
          sub_1B0C74C44(a1);
          *(&v539 + 1) = v31;
          v467 = MEMORY[0x1E6969DF8];
          *&v540 = MEMORY[0x1E6969DF8];
          *&v538 = "--";
          *(&v538 + 1) = "";
          v468 = __swift_project_boxed_opaque_existential_0(&v538, v31);
          v470 = *v468;
          v469 = v468[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v538);
          sub_1B0C76D34(v507);
          *(&v539 + 1) = v31;
          *&v540 = v467;
          *&v538 = "--";
          *(&v538 + 1) = "";
          v471 = __swift_project_boxed_opaque_existential_0(&v538, v31);
          v473 = *v471;
          v472 = v471[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v538);
          result = sub_1B0C74C44(a1);
          goto LABEL_407;
        }

LABEL_279:
        sub_1B0CA3370(3, 0, BYTE6(v127), v521, v521 + BYTE6(v127), v133);
        LODWORD(v515) = v344;
        v519 = v345;
        v481 = v346;
        v348 = v347;
        v613[8] = v585;
        v613[9] = v586;
        v613[10] = v587;
        v613[4] = v581;
        v613[5] = v582;
        v613[6] = v583;
        v613[7] = v584;
        v613[0] = v577;
        v613[1] = v578;
        v613[2] = v579;
        v614 = v588;
        v613[3] = v580;
        v349 = sub_1B0717014(v613);
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v613);
        if (v348 < 0)
        {
          goto LABEL_425;
        }

        if (v519)
        {
          v350 = v519 + v348;
        }

        else
        {
          v350 = 0;
        }

        sub_1B0CB7368(v519, v350, v515, v533);
        sub_1B07169CC(&v577, &v534);
        v530 = 0u;
        v531 = 0u;
        *&v532[0] = 0x1FFFFFFF0ELL;
        *(v532 + 8) = 0u;
        *(&v532[1] + 8) = 0u;
        BYTE8(v532[2]) = 0;
        v520 = sub_1B0CB8540();
        if (v353 == 2)
        {
          v514 = 0;
          v354 = 0;
          if ((*&v532[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
          {
            v485 = 0;
            v486 = 0;
            v490 = 0;
            v513 = 0;
            v355 = v518;
            v356 = v508;
            v31 = MEMORY[0x1E69E6290];
            goto LABEL_320;
          }

          v480 = v349;
          v382 = *(&v532[1] + 1);
          v381 = *&v532[1];
          v513 = 0;
          v490 = 0;
          v485 = 0;
          v486 = 0;
          if (!(*&v532[0] >> 59))
          {
LABEL_305:
            if (v480 == 1)
            {
              if (v354)
              {
                v300 = 0;
                v31 = MEMORY[0x1E69E6290];
                goto LABEL_308;
              }

              v385 = v518;
              goto LABEL_369;
            }

            if (v354)
            {
              v536 = v532[0];
              v537[0] = v532[1];
              *(v537 + 9) = *(&v532[1] + 9);
              v534 = v530;
              v535 = v531;
              sub_1B03B5C80(&v534, &v526, &qword_1EB6E5D40, &qword_1B0EE0250);
              v300 = 0;
            }

            else
            {
              v449 = v518;
              v522[0] = v518;
              v450 = MEMORY[0x1E69E6290];
              v528 = MEMORY[0x1E69E6290];
              v529 = MEMORY[0x1E6969DF8];
              v526 = "Content-Type";
              v527 = "";
              v451 = __swift_project_boxed_opaque_existential_0(&v526, MEMORY[0x1E69E6290]);
              v517 = 0;
              v452 = *v451;
              v453 = v451[1];
              sub_1B03B5C80(&v530, &v534, &qword_1EB6E5D38, &qword_1B0EE0240);
              v354 = v517;
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v526);
              *(&v535 + 1) = v450;
              *&v536 = MEMORY[0x1E6969DF8];
              *&v534 = ": ";
              *(&v534 + 1) = "";
              v454 = __swift_project_boxed_opaque_existential_0(&v534, v450);
              v456 = *v454;
              v455 = v454[1];
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v534);
              v523 = 14;
              sub_1B0C6ECE0(v522, &v577, sub_1B0C76E40, v524, v508, &v534);
              sub_1B0C72700(v449, sub_1B0C76E40);
              v300 = v534;
            }

            if (v381)
            {
              v457 = v382 - v381;
            }

            else
            {
              v457 = 0;
            }

            if (v457 < 0)
            {
              goto LABEL_435;
            }

            v385 = v518;
            sub_1B0C92F04(v515, v518, 1, sub_1B0C76E40, v524, 0, v457, v381, v382);
            goto LABEL_376;
          }
        }

        else
        {
          v357 = v351;
          v358 = v352;
          v359 = v353;
          v480 = v349;
          v517 = 0;
          v513 = 0;
          v514 = 0;
          v490 = 0;
          v485 = 0;
          v486 = 0;
          v360 = 0;
          do
          {
            sub_1B0CB7ED8(v520, v357, v358, v359 & 1, &v559);
            v366 = v559;
            v367 = v560;
            v362 = v561;
            v368 = v562;
            v369 = v563;
            v370 = v564;
            if (v563 >> 59 == 9)
            {
              v516 = v564;
              v371 = v359;
              v372 = v563;
              v373 = v358;
              v374 = v357;
              v375 = v562;
              v376 = v559;
              v377 = v560;
              v378 = v561;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

              v362 = v378;
              v367 = v377;
              v366 = v376;
              v368 = v375;
              v357 = v374;
              v358 = v373;
              v369 = v372;
              v359 = v371;
              v370 = v516;
              v485 = v366;
              v486 = v367;
              v490 = v362;
              v513 = v368;
              v514 = v369;
              v517 = v516;
            }

            if (!(v360 & 1 | (v520 == 0)) && v519 && &v520[-v519] >= 1)
            {
              v379 = v362;
              sub_1B0C92F04(v515, v518, 1, sub_1B0C76E40, v524, 0, &v520[-v519], v519, v481);
              v362 = v379;
            }

            if ((*&v532[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
            {
              if (*&v532[1])
              {
                v380 = (*(&v532[1] + 1) - *&v532[1]);
              }

              else
              {
                v380 = 0;
              }

              if ((v380 & 0x8000000000000000) != 0)
              {
                goto LABEL_410;
              }

              v361 = v362;
              sub_1B0C92F04(v515, v518, 1, sub_1B0C76E40, v524, 0, v380, *&v532[1], *(&v532[1] + 1));
              sub_1B0398EFC(&v530, &qword_1EB6E5D38, &qword_1B0EE0240);
              v362 = v361;
            }

            *&v530 = v366;
            *(&v530 + 1) = v367;
            *&v531 = v362;
            *(&v531 + 1) = v368;
            *&v532[0] = v369;
            *(&v532[0] + 1) = v370;
            *&v532[1] = v520;
            *(&v532[1] + 1) = v357;
            *&v532[2] = v358;
            BYTE8(v532[2]) = v359 & 1;
            v520 = sub_1B0CB8540();
            v357 = v363;
            v358 = v364;
            v359 = v365;
            v360 = 1;
          }

          while (v365 != 2);
          if ((*&v532[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
          {
            a5 = v484;
            v31 = MEMORY[0x1E69E6290];
            v354 = v517;
            if (!v517)
            {
              v355 = v518;
              v356 = v508;
LABEL_320:
              LOBYTE(v526) = v355;
              *(&v535 + 1) = v31;
              v386 = MEMORY[0x1E6969DF8];
              *&v536 = MEMORY[0x1E6969DF8];
              *&v534 = "Content-Type";
              *(&v534 + 1) = "";
              v387 = __swift_project_boxed_opaque_existential_0(&v534, v31);
              v389 = *v387;
              v388 = v387[1];
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v534);
              *(&v535 + 1) = v31;
              *&v536 = v386;
              *&v534 = ": ";
              *(&v534 + 1) = "";
              v390 = __swift_project_boxed_opaque_existential_0(&v534, v31);
              v392 = *v390;
              v391 = v390[1];
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v534);
              v527 = 14;
              sub_1B0C6ECE0(&v526, &v577, sub_1B0C76E40, v524, v356, &v534);
              sub_1B0C72700(v355, sub_1B0C76E40);
              v300 = v534;
              v354 = 0;
              v383 = v355;
              if (!v355)
              {
LABEL_321:
                *(&v535 + 1) = v31;
                *&v536 = MEMORY[0x1E6969DF8];
                v393 = "";
                *&v534 = "\r\n";
                goto LABEL_382;
              }

LABEL_378:
              if (v383 == 1)
              {
                v458 = 13;
              }

              else
              {
                v458 = 10;
              }

              LOBYTE(v526) = v458;
              *(&v535 + 1) = v31;
              *&v536 = MEMORY[0x1E6969DF8];
              *&v534 = &v526;
              v393 = v496;
LABEL_382:
              *(&v534 + 1) = v393;
              v459 = __swift_project_boxed_opaque_existential_0(&v534, v31);
              v461 = *v459;
              v460 = v459[1];
              sub_1B0E42EF8();
              __swift_destroy_boxed_opaque_existential_0(&v534);
              v119 = v511;
              if (!v300)
              {
                if (v354)
                {
                  v414 = v511;
                  v595 = v485;
                  v596 = v486;
                  v597 = v490;
                  v598 = v513;
                  v599 = v514;
                  v600 = v354;
                  v415 = sub_1B0C7EB6C();
                  if (v463 == 2)
                  {
                    goto LABEL_385;
                  }

                  v418 = v462;
                  if (v463)
                  {
                    if (v415)
                    {
                      v419 = v462 - v415;
                    }

                    else
                    {
                      v419 = 0;
                    }

                    if (v419 < 0)
                    {
                      goto LABEL_438;
                    }

                    goto LABEL_392;
                  }

LABEL_393:
                  v300 = sub_1B0CAB06C(v415, v418);
                  v119 = v414;
                  goto LABEL_394;
                }

LABEL_386:
                sub_1B075E648(&v577);
                v300 = 0;
                goto LABEL_395;
              }

LABEL_394:

              sub_1B075E648(&v577);
              goto LABEL_395;
            }

            v300 = 0;
LABEL_308:
            v383 = v518;
            if (!v518)
            {
              goto LABEL_321;
            }

            goto LABEL_378;
          }

          v382 = *(&v532[1] + 1);
          v381 = *&v532[1];
          a5 = v484;
          v354 = v517;
          if (!(*&v532[0] >> 59))
          {
            goto LABEL_305;
          }
        }

        sub_1B0398EFC(&v530, &qword_1EB6E5D38, &qword_1B0EE0240);
        if (v381)
        {
          v384 = v382 - v381;
        }

        else
        {
          v384 = 0;
        }

        if (v384 < 0)
        {
          goto LABEL_432;
        }

        v385 = v518;
        sub_1B0C92F04(v515, v518, 1, sub_1B0C76E40, v524, 0, v384, v381, v382);
        if (!v354)
        {
LABEL_369:
          LOBYTE(v526) = v385;
          v31 = MEMORY[0x1E69E6290];
          *(&v535 + 1) = MEMORY[0x1E69E6290];
          v442 = MEMORY[0x1E6969DF8];
          *&v536 = MEMORY[0x1E6969DF8];
          *&v534 = "Content-Type";
          *(&v534 + 1) = "";
          v443 = __swift_project_boxed_opaque_existential_0(&v534, MEMORY[0x1E69E6290]);
          v445 = *v443;
          v444 = v443[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v534);
          *(&v535 + 1) = v31;
          *&v536 = v442;
          *&v534 = ": ";
          *(&v534 + 1) = "";
          v446 = __swift_project_boxed_opaque_existential_0(&v534, v31);
          v448 = *v446;
          v447 = v446[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v534);
          v527 = 14;
          sub_1B0C6ECE0(&v526, &v577, sub_1B0C76E40, v524, v508, &v534);
          sub_1B0C72700(v385, sub_1B0C76E40);
          v300 = v534;
          goto LABEL_377;
        }

        v300 = 0;
LABEL_376:
        v31 = MEMORY[0x1E69E6290];
LABEL_377:
        v383 = v385;
        if (!v385)
        {
          goto LABEL_321;
        }

        goto LABEL_378;
      }

      if (v128 >> 32 < v128)
      {
        goto LABEL_420;
      }

      v202 = sub_1B0E42A98();
      if (v202)
      {
        v203 = sub_1B0E42AC8();
        if (__OFSUB__(v128, v203))
        {
          goto LABEL_428;
        }

        v202 += v128 - v203;
      }

      v204 = sub_1B0E42AB8();
      if (v204 >= (v128 >> 32) - v128)
      {
        v205 = (v128 >> 32) - v128;
      }

      else
      {
        v205 = v204;
      }

      if (v202)
      {
        v206 = v205;
      }

      else
      {
        v206 = 0;
      }

      if (v206 < 0)
      {
        goto LABEL_422;
      }

      v207 = v205 + v202;
      if (v202)
      {
        v208 = v207;
      }

      else
      {
        v208 = 0;
      }

      sub_1B0C946BC(3u, 0, v206, v202);
      if (v210)
      {
        v211 = v206;
      }

      else
      {
        v211 = v209;
      }

      sub_1B0CA3370(3, 0, v206, v202, v208, v211);
      LODWORD(v515) = v212;
      v519 = v213;
      v481 = v214;
      v216 = v215;
      v615[8] = v585;
      v615[9] = v586;
      v615[10] = v587;
      v615[4] = v581;
      v615[5] = v582;
      v615[6] = v583;
      v615[7] = v584;
      v615[0] = v577;
      v615[1] = v578;
      v615[2] = v579;
      v616 = v588;
      v615[3] = v580;
      v217 = sub_1B0717014(v615);
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v615);
      if (v216 < 0)
      {
        goto LABEL_424;
      }

      if (v519)
      {
        v260 = v519 + v216;
      }

      else
      {
        v260 = 0;
      }

      sub_1B0CB7368(v519, v260, v515, v533);
      sub_1B07169CC(&v577, &v534);
      v530 = 0u;
      v531 = 0u;
      *&v532[0] = 0x1FFFFFFF0ELL;
      *(v532 + 8) = 0u;
      *(&v532[1] + 8) = 0u;
      BYTE8(v532[2]) = 0;
      v520 = sub_1B0CB8540();
      if (v263 == 2)
      {
        v514 = 0;
        v264 = 0;
        if ((*&v532[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
        {
          v485 = 0;
          v486 = 0;
          v490 = 0;
          v513 = 0;
          v265 = v518;
          v266 = v508;
          v31 = MEMORY[0x1E69E6290];
          goto LABEL_258;
        }

        v480 = v217;
        v323 = *(&v532[1] + 1);
        v322 = *&v532[1];
        v513 = 0;
        v490 = 0;
        v485 = 0;
        v486 = 0;
        if (!(*&v532[0] >> 59))
        {
LABEL_229:
          if (v480 == 1)
          {
            if (v264)
            {
              v300 = 0;
              v31 = MEMORY[0x1E69E6290];
              goto LABEL_232;
            }

            v328 = v518;
            goto LABEL_346;
          }

          if (v264)
          {
            v536 = v532[0];
            v537[0] = v532[1];
            *(v537 + 9) = *(&v532[1] + 9);
            v534 = v530;
            v535 = v531;
            sub_1B03B5C80(&v534, &v526, &qword_1EB6E5D40, &qword_1B0EE0250);
            v300 = 0;
          }

          else
          {
            v427 = v518;
            v522[0] = v518;
            v428 = MEMORY[0x1E69E6290];
            v528 = MEMORY[0x1E69E6290];
            v529 = MEMORY[0x1E6969DF8];
            v526 = "Content-Type";
            v527 = "";
            v429 = __swift_project_boxed_opaque_existential_0(&v526, MEMORY[0x1E69E6290]);
            v517 = 0;
            v430 = *v429;
            v431 = v429[1];
            sub_1B03B5C80(&v530, &v534, &qword_1EB6E5D38, &qword_1B0EE0240);
            v264 = v517;
            sub_1B0E42EF8();
            __swift_destroy_boxed_opaque_existential_0(&v526);
            *(&v535 + 1) = v428;
            *&v536 = MEMORY[0x1E6969DF8];
            *&v534 = ": ";
            *(&v534 + 1) = "";
            v432 = __swift_project_boxed_opaque_existential_0(&v534, v428);
            v434 = *v432;
            v433 = v432[1];
            sub_1B0E42EF8();
            __swift_destroy_boxed_opaque_existential_0(&v534);
            v523 = 14;
            sub_1B0C6ECE0(v522, &v577, sub_1B0C76E40, v524, v508, &v534);
            sub_1B0C72700(v427, sub_1B0C76E40);
            v300 = v534;
          }

          if (v322)
          {
            v435 = v323 - v322;
          }

          else
          {
            v435 = 0;
          }

          if (v435 < 0)
          {
            goto LABEL_434;
          }

          v328 = v518;
          sub_1B0C92F04(v515, v518, 1, sub_1B0C76E40, v524, 0, v435, v322, v323);
          goto LABEL_353;
        }
      }

      else
      {
        v267 = v261;
        v268 = v262;
        v269 = v263;
        v480 = v217;
        v517 = 0;
        v513 = 0;
        v514 = 0;
        v490 = 0;
        v485 = 0;
        v486 = 0;
        v270 = 0;
        do
        {
          sub_1B0CB7ED8(v520, v267, v268, v269 & 1, &v565);
          v274 = v565;
          v275 = v566;
          v276 = v567;
          v277 = v568;
          v278 = v569;
          v279 = v570;
          if (v569 >> 59 == 9)
          {
            v516 = v570;
            v280 = v269;
            v281 = v569;
            v282 = v268;
            v283 = v267;
            v284 = v566;
            v285 = v565;
            v286 = v568;
            v287 = v567;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

            v276 = v287;
            v277 = v286;
            v274 = v285;
            v275 = v284;
            v267 = v283;
            v268 = v282;
            v278 = v281;
            v269 = v280;
            v279 = v516;
            v485 = v274;
            v486 = v275;
            v490 = v276;
            v513 = v277;
            v514 = v278;
            v517 = v516;
          }

          if (!(v270 & 1 | (v520 == 0)) && v519 && &v520[-v519] >= 1)
          {
            v288 = v276;
            sub_1B0C92F04(v515, v518, 1, sub_1B0C76E40, v524, 0, &v520[-v519], v519, v481);
            v276 = v288;
          }

          if ((*&v532[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
          {
            if (*&v532[1])
            {
              v289 = (*(&v532[1] + 1) - *&v532[1]);
            }

            else
            {
              v289 = 0;
            }

            if ((v289 & 0x8000000000000000) != 0)
            {
              goto LABEL_409;
            }

            v290 = v276;
            sub_1B0C92F04(v515, v518, 1, sub_1B0C76E40, v524, 0, v289, *&v532[1], *(&v532[1] + 1));
            sub_1B0398EFC(&v530, &qword_1EB6E5D38, &qword_1B0EE0240);
            v276 = v290;
          }

          *&v530 = v274;
          *(&v530 + 1) = v275;
          *&v531 = v276;
          *(&v531 + 1) = v277;
          *&v532[0] = v278;
          *(&v532[0] + 1) = v279;
          *&v532[1] = v520;
          *(&v532[1] + 1) = v267;
          *&v532[2] = v268;
          BYTE8(v532[2]) = v269 & 1;
          v520 = sub_1B0CB8540();
          v267 = v271;
          v268 = v272;
          v269 = v273;
          v270 = 1;
        }

        while (v273 != 2);
        if ((*&v532[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
        {
          a5 = v484;
          v31 = MEMORY[0x1E69E6290];
          v264 = v517;
          if (!v517)
          {
            v265 = v518;
            v266 = v508;
LABEL_258:
            LOBYTE(v526) = v265;
            *(&v535 + 1) = v31;
            v330 = MEMORY[0x1E6969DF8];
            *&v536 = MEMORY[0x1E6969DF8];
            *&v534 = "Content-Type";
            *(&v534 + 1) = "";
            v331 = __swift_project_boxed_opaque_existential_0(&v534, v31);
            v333 = *v331;
            v332 = v331[1];
            sub_1B0E42EF8();
            __swift_destroy_boxed_opaque_existential_0(&v534);
            *(&v535 + 1) = v31;
            *&v536 = v330;
            *&v534 = ": ";
            *(&v534 + 1) = "";
            v334 = __swift_project_boxed_opaque_existential_0(&v534, v31);
            v336 = *v334;
            v335 = v334[1];
            sub_1B0E42EF8();
            __swift_destroy_boxed_opaque_existential_0(&v534);
            v527 = 14;
            sub_1B0C6ECE0(&v526, &v577, sub_1B0C76E40, v524, v266, &v534);
            sub_1B0C72700(v265, sub_1B0C76E40);
            v300 = v534;
            v264 = 0;
            v324 = v265;
            if (!v265)
            {
LABEL_259:
              *(&v535 + 1) = v31;
              *&v536 = MEMORY[0x1E6969DF8];
              v337 = "";
              *&v534 = "\r\n";
              goto LABEL_359;
            }

LABEL_355:
            if (v324 == 1)
            {
              v436 = 13;
            }

            else
            {
              v436 = 10;
            }

            LOBYTE(v526) = v436;
            *(&v535 + 1) = v31;
            *&v536 = MEMORY[0x1E6969DF8];
            *&v534 = &v526;
            v337 = v496;
LABEL_359:
            *(&v534 + 1) = v337;
            v437 = __swift_project_boxed_opaque_existential_0(&v534, v31);
            v439 = *v437;
            v438 = v437[1];
            sub_1B0E42EF8();
            __swift_destroy_boxed_opaque_existential_0(&v534);
            v119 = v511;
            if (v300)
            {
              goto LABEL_394;
            }

            if (!v264)
            {
              goto LABEL_386;
            }

            v414 = v511;
            v601 = v485;
            v602 = v486;
            v603 = v490;
            v604 = v513;
            v605 = v514;
            v606 = v264;
            v415 = sub_1B0C7EB6C();
            if (v441 != 2)
            {
              v418 = v440;
              if ((v441 & 1) == 0)
              {
                goto LABEL_393;
              }

              if (v415)
              {
                v419 = v440 - v415;
              }

              else
              {
                v419 = 0;
              }

              if (v419 < 0)
              {
                goto LABEL_437;
              }

              goto LABEL_392;
            }

            goto LABEL_385;
          }

          v300 = 0;
LABEL_232:
          v324 = v518;
          if (!v518)
          {
            goto LABEL_259;
          }

          goto LABEL_355;
        }

        v323 = *(&v532[1] + 1);
        v322 = *&v532[1];
        a5 = v484;
        v264 = v517;
        if (!(*&v532[0] >> 59))
        {
          goto LABEL_229;
        }
      }

      sub_1B0398EFC(&v530, &qword_1EB6E5D38, &qword_1B0EE0240);
      if (v322)
      {
        v327 = v323 - v322;
      }

      else
      {
        v327 = 0;
      }

      if (v327 < 0)
      {
        goto LABEL_431;
      }

      v328 = v518;
      sub_1B0C92F04(v515, v518, 1, sub_1B0C76E40, v524, 0, v327, v322, v323);
      if (!v264)
      {
LABEL_346:
        LOBYTE(v526) = v328;
        v31 = MEMORY[0x1E69E6290];
        *(&v535 + 1) = MEMORY[0x1E69E6290];
        v420 = MEMORY[0x1E6969DF8];
        *&v536 = MEMORY[0x1E6969DF8];
        *&v534 = "Content-Type";
        *(&v534 + 1) = "";
        v421 = __swift_project_boxed_opaque_existential_0(&v534, MEMORY[0x1E69E6290]);
        v423 = *v421;
        v422 = v421[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v534);
        *(&v535 + 1) = v31;
        *&v536 = v420;
        *&v534 = ": ";
        *(&v534 + 1) = "";
        v424 = __swift_project_boxed_opaque_existential_0(&v534, v31);
        v426 = *v424;
        v425 = v424[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v534);
        v527 = 14;
        sub_1B0C6ECE0(&v526, &v577, sub_1B0C76E40, v524, v508, &v534);
        sub_1B0C72700(v328, sub_1B0C76E40);
        v300 = v534;
        goto LABEL_354;
      }

      v300 = 0;
LABEL_353:
      v31 = MEMORY[0x1E69E6290];
LABEL_354:
      v324 = v328;
      if (!v328)
      {
        goto LABEL_259;
      }

      goto LABEL_355;
    }

    if (v129 == 2)
    {
      v176 = *(v128 + 16);
      v177 = *(v128 + 24);
      v178 = sub_1B0E42A98();
      if (v178)
      {
        v179 = sub_1B0E42AC8();
        if (__OFSUB__(v176, v179))
        {
          goto LABEL_427;
        }

        v178 += v176 - v179;
      }

      v180 = __OFSUB__(v177, v176);
      v181 = v177 - v176;
      if (v180)
      {
        goto LABEL_421;
      }

      v182 = sub_1B0E42AB8();
      if (v182 >= v181)
      {
        v183 = v181;
      }

      else
      {
        v183 = v182;
      }

      if (v178)
      {
        v184 = v183;
      }

      else
      {
        v184 = 0;
      }

      if (v184 < 0)
      {
        goto LABEL_423;
      }

      v185 = v183 + v178;
      if (v178)
      {
        v186 = v185;
      }

      else
      {
        v186 = 0;
      }

      sub_1B0C946BC(3u, 0, v184, v178);
      if (v188)
      {
        v189 = v184;
      }

      else
      {
        v189 = v187;
      }

      sub_1B0CA3370(3, 0, v184, v178, v186, v189);
      v191 = v190;
      v193 = v192;
      v195 = v194;
      v197 = v196;
      v617[8] = v585;
      v617[9] = v586;
      v617[10] = v587;
      v617[4] = v581;
      v617[5] = v582;
      v617[6] = v583;
      v617[7] = v584;
      v617[0] = v577;
      v617[1] = v578;
      v617[2] = v579;
      v618 = v588;
      v617[3] = v580;
      if (sub_1B0717014(v617) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v617);
        v198 = 0;
      }

      else
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v617);
        v198 = 1;
      }

      v31 = MEMORY[0x1E69E6290];
      *&v530 = 0;
      v258 = swift_allocObject();
      *(v258 + 16) = &v530;
      sub_1B07169CC(&v577, &v534);
      sub_1B0CAB0E8(v518, v198, 1, sub_1B0C76CF4, v258, sub_1B0C76E40, v524, v191, v193, v195, v197, &v577, v518, v508, sub_1B0C76E40, v524);
      sub_1B075E648(&v577);

      sub_1B0391D50(v482, v483);
      v259 = v530;
      sub_1B0C74E2C(v509);
      *&v534 = v259;
      v119 = v511;
      goto LABEL_396;
    }

    memset(v521, 0, 14);
    sub_1B0CA3370(3, 0, 0, v521, v521, 0);
    LODWORD(v515) = v218;
    v519 = v219;
    v481 = v220;
    v222 = v221;
    v611[8] = v585;
    v611[9] = v586;
    v611[10] = v587;
    v611[4] = v581;
    v611[5] = v582;
    v611[6] = v583;
    v611[7] = v584;
    v611[0] = v577;
    v611[1] = v578;
    v611[2] = v579;
    v612 = v588;
    v611[3] = v580;
    v480 = sub_1B0717014(v611);
    v31 = MEMORY[0x1E69E6290];
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v611);
    if (v222 < 0)
    {
      goto LABEL_419;
    }

    if (v519)
    {
      v229 = v519 + v222;
    }

    else
    {
      v229 = 0;
    }

    sub_1B0CB7368(v519, v229, v515, v533);
    sub_1B07169CC(&v577, &v534);
    v530 = 0u;
    v531 = 0u;
    *&v532[0] = 0x1FFFFFFF0ELL;
    *(v532 + 8) = 0u;
    *(&v532[1] + 8) = 0u;
    BYTE8(v532[2]) = 0;
    v520 = sub_1B0CB8540();
    if (v232 == 2)
    {
      v514 = 0;
      v233 = 0;
      if ((*&v532[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
      {
        v485 = 0;
        v486 = 0;
        v490 = 0;
        v513 = 0;
        goto LABEL_210;
      }

      v321 = *(&v532[1] + 1);
      v320 = *&v532[1];
      v513 = 0;
      v490 = 0;
      v485 = 0;
      v486 = 0;
      if (!(*&v532[0] >> 59))
      {
LABEL_224:
        if (v480 == 1)
        {
          if (v233)
          {
            goto LABEL_226;
          }

          v326 = v518;
          goto LABEL_323;
        }

        if (v233)
        {
          v536 = v532[0];
          v537[0] = v532[1];
          *(v537 + 9) = *(&v532[1] + 9);
          v534 = v530;
          v535 = v531;
          sub_1B03B5C80(&v534, &v526, &qword_1EB6E5D40, &qword_1B0EE0250);
          v300 = 0;
        }

        else
        {
          v401 = v518;
          v522[0] = v518;
          v402 = MEMORY[0x1E69E6290];
          v528 = MEMORY[0x1E69E6290];
          v529 = MEMORY[0x1E6969DF8];
          v526 = "Content-Type";
          v527 = "";
          v403 = __swift_project_boxed_opaque_existential_0(&v526, MEMORY[0x1E69E6290]);
          v517 = 0;
          v404 = *v403;
          v405 = v403[1];
          sub_1B03B5C80(&v530, &v534, &qword_1EB6E5D38, &qword_1B0EE0240);
          v233 = v517;
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v526);
          *(&v535 + 1) = v402;
          *&v536 = MEMORY[0x1E6969DF8];
          *&v534 = ": ";
          *(&v534 + 1) = "";
          v406 = __swift_project_boxed_opaque_existential_0(&v534, v402);
          v408 = *v406;
          v407 = v406[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v534);
          v523 = 14;
          sub_1B0C6ECE0(v522, &v577, sub_1B0C76E40, v524, v508, &v534);
          sub_1B0C72700(v401, sub_1B0C76E40);
          v300 = v534;
        }

        if (v320)
        {
          v409 = v321 - v320;
        }

        else
        {
          v409 = 0;
        }

        if (v409 < 0)
        {
          goto LABEL_433;
        }

        v326 = v518;
        sub_1B0C92F04(v515, v518, 1, sub_1B0C76E40, v524, 0, v409, v320, v321);
        goto LABEL_330;
      }
    }

    else
    {
      v234 = v230;
      v235 = v231;
      v236 = v232;
      v517 = 0;
      v513 = 0;
      v514 = 0;
      v490 = 0;
      v485 = 0;
      v486 = 0;
      v237 = 0;
      do
      {
        sub_1B0CB7ED8(v520, v234, v235, v236 & 1, &v553);
        v241 = v553;
        v242 = v554;
        v243 = v555;
        v244 = v556;
        v245 = v557;
        v246 = v558;
        if (v557 >> 59 == 9)
        {
          v516 = v558;
          v247 = v236;
          v248 = v557;
          v249 = v235;
          v250 = v234;
          v251 = v556;
          v252 = v555;
          v253 = v553;
          v254 = v554;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

          v242 = v254;
          v241 = v253;
          v243 = v252;
          v244 = v251;
          v234 = v250;
          v235 = v249;
          v245 = v248;
          v236 = v247;
          v246 = v516;
          v485 = v241;
          v486 = v242;
          v490 = v243;
          v513 = v244;
          v514 = v245;
          v517 = v516;
        }

        if (!(v237 & 1 | (v520 == 0)) && v519 && &v520[-v519] >= 1)
        {
          v255 = v242;
          sub_1B0C92F04(v515, v518, 1, sub_1B0C76E40, v524, 0, &v520[-v519], v519, v481);
          v242 = v255;
        }

        if ((*&v532[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
        {
          if (*&v532[1])
          {
            v256 = (*(&v532[1] + 1) - *&v532[1]);
          }

          else
          {
            v256 = 0;
          }

          if ((v256 & 0x8000000000000000) != 0)
          {
LABEL_408:
            __break(1u);
LABEL_409:
            __break(1u);
LABEL_410:
            __break(1u);
LABEL_411:
            __break(1u);
LABEL_412:
            __break(1u);
LABEL_413:
            __break(1u);
LABEL_414:
            __break(1u);
LABEL_415:
            __break(1u);
LABEL_416:
            __break(1u);
LABEL_417:
            __break(1u);
LABEL_418:
            __break(1u);
LABEL_419:
            __break(1u);
LABEL_420:
            __break(1u);
LABEL_421:
            __break(1u);
LABEL_422:
            __break(1u);
LABEL_423:
            __break(1u);
LABEL_424:
            __break(1u);
LABEL_425:
            __break(1u);
LABEL_426:
            __break(1u);
LABEL_427:
            __break(1u);
LABEL_428:
            __break(1u);
LABEL_429:
            __break(1u);
LABEL_430:
            __break(1u);
LABEL_431:
            __break(1u);
LABEL_432:
            __break(1u);
LABEL_433:
            __break(1u);
LABEL_434:
            __break(1u);
LABEL_435:
            __break(1u);
LABEL_436:
            __break(1u);
LABEL_437:
            __break(1u);
LABEL_438:
            __break(1u);
LABEL_439:
            __break(1u);
          }

          v257 = v242;
          sub_1B0C92F04(v515, v518, 1, sub_1B0C76E40, v524, 0, v256, *&v532[1], *(&v532[1] + 1));
          sub_1B0398EFC(&v530, &qword_1EB6E5D38, &qword_1B0EE0240);
          v242 = v257;
        }

        *&v530 = v241;
        *(&v530 + 1) = v242;
        *&v531 = v243;
        *(&v531 + 1) = v244;
        *&v532[0] = v245;
        *(&v532[0] + 1) = v246;
        *&v532[1] = v520;
        *(&v532[1] + 1) = v234;
        *&v532[2] = v235;
        BYTE8(v532[2]) = v236 & 1;
        v520 = sub_1B0CB8540();
        v234 = v238;
        v235 = v239;
        v236 = v240;
        v237 = 1;
      }

      while (v240 != 2);
      if ((*&v532[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
      {
        a5 = v484;
        v233 = v517;
        if (!v517)
        {
          v31 = MEMORY[0x1E69E6290];
LABEL_210:
          v291 = v518;
          v292 = v508;
          LOBYTE(v526) = v518;
          *(&v535 + 1) = v31;
          v293 = MEMORY[0x1E6969DF8];
          *&v536 = MEMORY[0x1E6969DF8];
          *&v534 = "Content-Type";
          *(&v534 + 1) = "";
          v294 = __swift_project_boxed_opaque_existential_0(&v534, v31);
          v296 = *v294;
          v295 = v294[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v534);
          *(&v535 + 1) = v31;
          *&v536 = v293;
          *&v534 = ": ";
          *(&v534 + 1) = "";
          v297 = __swift_project_boxed_opaque_existential_0(&v534, v31);
          v299 = *v297;
          v298 = v297[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v534);
          v527 = 14;
          sub_1B0C6ECE0(&v526, &v577, sub_1B0C76E40, v524, v292, &v534);
          sub_1B0C72700(v291, sub_1B0C76E40);
          v300 = v534;
          v233 = 0;
          v301 = v291;
          if (!v291)
          {
LABEL_211:
            *(&v535 + 1) = v31;
            *&v536 = MEMORY[0x1E6969DF8];
            v302 = "";
            *&v534 = "\r\n";
            goto LABEL_336;
          }

LABEL_332:
          if (v301 == 1)
          {
            v410 = 13;
          }

          else
          {
            v410 = 10;
          }

          LOBYTE(v526) = v410;
          *(&v535 + 1) = v31;
          *&v536 = MEMORY[0x1E6969DF8];
          *&v534 = &v526;
          v302 = v496;
LABEL_336:
          *(&v534 + 1) = v302;
          v411 = __swift_project_boxed_opaque_existential_0(&v534, v31);
          v413 = *v411;
          v412 = v411[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v534);
          v119 = v511;
          if (v300)
          {
            goto LABEL_394;
          }

          if (!v233)
          {
            goto LABEL_386;
          }

          v414 = v511;
          v589 = v485;
          v590 = v486;
          v591 = v490;
          v592 = v513;
          v593 = v514;
          v594 = v233;
          v415 = sub_1B0C7EB6C();
          if (v417 != 2)
          {
            v418 = v416;
            if ((v417 & 1) == 0)
            {
              goto LABEL_393;
            }

            if (v415)
            {
              v419 = v416 - v415;
            }

            else
            {
              v419 = 0;
            }

            if (v419 < 0)
            {
              goto LABEL_436;
            }

LABEL_392:
            v464 = v488;
            v300 = sub_1B0C93CE8(0, v419, v415, v418);
            v488 = v464;
            v119 = v414;
            goto LABEL_394;
          }

LABEL_385:

          sub_1B075E648(&v577);
          v300 = 0;
          v119 = v414;
LABEL_395:
          sub_1B0391D50(v482, v483);
          sub_1B0C74E2C(v509);
          *&v534 = v300;
          goto LABEL_396;
        }

LABEL_226:
        v300 = 0;
        v31 = MEMORY[0x1E69E6290];
        v301 = v518;
        if (!v518)
        {
          goto LABEL_211;
        }

        goto LABEL_332;
      }

      v321 = *(&v532[1] + 1);
      v320 = *&v532[1];
      a5 = v484;
      v233 = v517;
      if (!(*&v532[0] >> 59))
      {
        goto LABEL_224;
      }
    }

    sub_1B0398EFC(&v530, &qword_1EB6E5D38, &qword_1B0EE0240);
    if (v320)
    {
      v325 = v321 - v320;
    }

    else
    {
      v325 = 0;
    }

    if (v325 < 0)
    {
      goto LABEL_430;
    }

    v326 = v518;
    sub_1B0C92F04(v515, v518, 1, sub_1B0C76E40, v524, 0, v325, v320, v321);
    if (!v233)
    {
LABEL_323:
      LOBYTE(v526) = v326;
      v31 = MEMORY[0x1E69E6290];
      *(&v535 + 1) = MEMORY[0x1E69E6290];
      v394 = MEMORY[0x1E6969DF8];
      *&v536 = MEMORY[0x1E6969DF8];
      *&v534 = "Content-Type";
      *(&v534 + 1) = "";
      v395 = __swift_project_boxed_opaque_existential_0(&v534, MEMORY[0x1E69E6290]);
      v397 = *v395;
      v396 = v395[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v534);
      *(&v535 + 1) = v31;
      *&v536 = v394;
      *&v534 = ": ";
      *(&v534 + 1) = "";
      v398 = __swift_project_boxed_opaque_existential_0(&v534, v31);
      v400 = *v398;
      v399 = v398[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v534);
      v527 = 14;
      sub_1B0C6ECE0(&v526, &v577, sub_1B0C76E40, v524, v508, &v534);
      sub_1B0C72700(v326, sub_1B0C76E40);
      v300 = v534;
      goto LABEL_331;
    }

    v300 = 0;
LABEL_330:
    v31 = MEMORY[0x1E69E6290];
LABEL_331:
    v301 = v326;
    if (!v326)
    {
      goto LABEL_211;
    }

    goto LABEL_332;
  }

  v122 = v494;
  v123 = (*v492)(v14, v121, v494);
  v124 = v14;
  v125 = v122;
  MEMORY[0x1EEE9AC00](v123);
  v475 = v124;
  v476 = sub_1B0C76E28;
  v477 = &v475;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5D30, &qword_1B0EDD3E0);
  v126 = v488;
  sub_1B0E44328();
  v488 = v126;
  if (!v126)
  {
    sub_1B0C74E2C(v509);
    (*v493)(v124, v125);
    v31 = MEMORY[0x1E69E6290];
    v119 = v511;
LABEL_396:
    v101 = v534;
    a1 = v518;
    a4 = v508;
    goto LABEL_397;
  }

  result = (*v493)(v124, v125);
  __break(1u);
  return result;
}

uint64_t sub_1B0C6D3A8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v29 = a3;
  v36 = *MEMORY[0x1E69E9840];
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v28[0] = a1;
  v28[1] = a2;
  v30[0] = a1;
  v30[1] = a2;
  v30[2] = 0;
  v30[3] = v3;
  v31 = 256;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = MEMORY[0x1E69E6290];
  v5 = MEMORY[0x1E6969DF8];
  do
  {
    while (1)
    {
      isStackAllocationSafe = sub_1B0E44CF8();
      if (isStackAllocationSafe < 0)
      {
        goto LABEL_26;
      }

      v7 = isStackAllocationSafe;
      if (isStackAllocationSafe >= 1025)
      {
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          break;
        }
      }

      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v9 = v28 - v8;
      v10 = v28 + v7 - v8;
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = v7;
      v11[4] = v9;
      v11[5] = v10;
      sub_1B0C769AC(&v31, v30, v11);
      swift_beginAccess();
      v13 = *v12;
      v14 = *(v29 + 8);
      if (v14 < 1)
      {
        goto LABEL_14;
      }

      if (__OFADD__(v14, v13))
      {
        goto LABEL_25;
      }

      if (v14 + v13 < 79)
      {
LABEL_14:
        if (v13 < 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
        }

        v34 = v4;
        v35 = v5;
        v32 = v9;
        v33 = &v9[v13];
        v22 = __swift_project_boxed_opaque_existential_0(&v32, v4);
        v24 = *v22;
        v23 = v22[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v32);

        if (v7 < v13)
        {
          goto LABEL_23;
        }

        v21 = v14 + v13;
        if (__OFADD__(v14, v13))
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1B0C74C44(*v29);
        v34 = v4;
        v35 = v5;
        v32 = "\t";
        v33 = "";
        v15 = __swift_project_boxed_opaque_existential_0(&v32, v4);
        v17 = *v15;
        v16 = v15[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v32);
        if (v13 < 0)
        {
          goto LABEL_27;
        }

        v34 = v4;
        v35 = v5;
        v32 = v9;
        v33 = &v9[v13];
        v18 = __swift_project_boxed_opaque_existential_0(&v32, v4);
        v20 = *v18;
        v19 = v18[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v32);

        if (v7 < v13)
        {
          goto LABEL_28;
        }

        v21 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_29;
        }
      }

      *(v29 + 8) = v21;
      if ((v31 & 0x100) != 0)
      {
        goto LABEL_21;
      }
    }

    v25 = swift_slowAlloc();
    sub_1B0C7212C(v25, v25 + v7, 0, v29, &v31, v30);
    MEMORY[0x1B272C230](v25, -1, -1);
  }

  while ((v31 & 0x100) == 0);
LABEL_21:

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C6D6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 16);

  v54 = a3;

  if (v6)
  {
    v7 = 0;
    v8 = a2 + 32;
    v9 = a3 + 32;
    v55 = a2 + 32;
    v56 = a2;
    v58 = v6;
    do
    {
      if (v7 >= *(a2 + 16))
      {
        goto LABEL_40;
      }

      v10 = (v8 + 16 * v7);
      v12 = *v10;
      v11 = v10[1];
      v13 = (v9 + 16 * v7);
      v14 = *v13;
      v15 = v13[1];
      v66 = 0;
      LOBYTE(v65) = 0;
      swift_bridgeObjectRetain_n();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v60 = v12;
      v61 = v11;
      sub_1B0C727A8(v12, v11, &v65, &v66);
      LOBYTE(v65) = 61;
      if (__OFADD__(v66, 1))
      {
        goto LABEL_41;
      }

      ++v7;
      ++v66;
      sub_1B0C72C88(v14, v15, &v65, &v66);

      v16 = v66;
      if (v7 != v6)
      {
        v16 = (v66 + 1);
        if (__OFADD__(v66, 1))
        {
          goto LABEL_42;
        }
      }

      if (v16 < 79)
      {
        sub_1B0C75798(160, 1, a4, v12, v11, v14, v15, v7 == v6);

        continue;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v17 = sub_1B0E44EE8();
      v19 = v18;
      v21 = v20;
      v23 = v22;

      if ((v17 ^ v19) < 0x4000)
      {

        continue;
      }

      v62 = v21;
      v63 = v19;
      v64 = v17;
      v59 = v7;
      v24 = 0;
      v25 = *(a4 + 8);
      do
      {
        v66 = v60;
        v67 = v61;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1B2726E80](42, 0xE100000000000000);
        v65 = v24;
        v26 = sub_1B0E469C8();
        MEMORY[0x1B2726E80](v26);

        v28 = v66;
        v27 = v67;
        v29 = swift_allocObject();
        *(v29 + 16) = 77;
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1B0EDD3C0;
        *(v30 + 32) = v70;
        *(v30 + 40) = &v72;
        sub_1B0C72368(" ", "", v30);

        sub_1B0C75BB8(v28, v27, v29, v30);
        LOBYTE(v66) = 61;
        swift_beginAccess();
        v31 = *(v29 + 16) - 1;
        if (__OFSUB__(*(v29 + 16), 1))
        {
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
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
        }

        *(v29 + 16) = v31;
        sub_1B0C72368(&v66, &v66 + 1, v30);
        if (__OFSUB__(v31, 1))
        {
          goto LABEL_32;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v32 = sub_1B0C73A84(v64, v63, v62, v23, v31 - 1, v30);
        v34 = v33;
        v62 = v35;
        v37 = v36;
        swift_bridgeObjectRelease_n();
        v63 = v34;
        v64 = v32;
        v38 = (v32 ^ v34) >> 14;
        if (v59 != v58 || v38)
        {
          LOBYTE(v66) = 59;
          sub_1B0C72368(&v66, &v66 + 1, v30);
        }

        swift_beginAccess();
        v39 = *(v30 + 16);
        v40 = MEMORY[0x1E69E6290];
        if (v25 < 1)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v25, v39))
        {
          goto LABEL_37;
        }

        if (v25 + v39 < 79)
        {
LABEL_24:
          if (v39 < 0)
          {
            goto LABEL_34;
          }

          v68 = MEMORY[0x1E69E6290];
          v69 = MEMORY[0x1E6969DF8];
          v66 = v70;
          v67 = &v70[v39];
          v48 = __swift_project_boxed_opaque_existential_0(&v66, MEMORY[0x1E69E6290]);
          v50 = *v48;
          v49 = v48[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v66);

          if (v39 > 0xA1)
          {
            goto LABEL_35;
          }

          v51 = __OFADD__(v25, v39);
          v39 += v25;
          if (v51)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_1B0C74C44(*a4);
          v68 = v40;
          v41 = MEMORY[0x1E6969DF8];
          v69 = MEMORY[0x1E6969DF8];
          v66 = "\t";
          v67 = "";
          v42 = __swift_project_boxed_opaque_existential_0(&v66, v40);
          v44 = *v42;
          v43 = v42[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v66);
          if (v39 < 1)
          {
            goto LABEL_38;
          }

          v68 = v40;
          v69 = v41;
          v66 = &v71;
          v67 = &v70[v39];
          v45 = __swift_project_boxed_opaque_existential_0(&v66, v40);
          v47 = *v45;
          v46 = v45[1];
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v66);

          if (v39 > 0xA1)
          {
            goto LABEL_39;
          }
        }

        if (__OFADD__(v24, 1))
        {
          goto LABEL_33;
        }

        ++v24;
        v25 = v39;
        v23 = v37;
      }

      while (v38);

      *(a4 + 8) = v39;
      v8 = v55;
      a2 = v56;
      v7 = v59;
      v6 = v58;
      v9 = v54 + 32;
    }

    while (v7 != v6);
  }

  v53 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C6DC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 16);

  v45 = a3;

  if (v9)
  {
    v10 = 0;
    v47 = a2 + 32;
    v11 = a3 + 32;
    v46 = a2;
    v51 = a4;
    v52 = a5;
    v49 = v9;
    do
    {
      if (v10 >= *(a2 + 16))
      {
        goto LABEL_40;
      }

      v12 = (v47 + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      v15 = (v11 + 16 * v10);
      v16 = *v15;
      v17 = v15[1];
      v59 = 0;
      LOBYTE(v58) = 0;
      swift_bridgeObjectRetain_n();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v53 = v14;
      v54 = v13;
      sub_1B0C727A8(v14, v13, &v58, &v59);
      LOBYTE(v58) = 61;
      if (__OFADD__(v59, 1))
      {
        goto LABEL_41;
      }

      ++v10;
      ++v59;
      sub_1B0C72C88(v16, v17, &v58, &v59);

      v18 = v59;
      if (v10 != v9)
      {
        v18 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_42;
        }
      }

      if (v18 <= 78)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0C73418(a4, a5, 160, 1, v48, v14, v13, v16, v17, v10 == v9);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        continue;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = sub_1B0E44EE8();
      v21 = v20;
      v23 = v22;
      v25 = v24;

      if ((v19 ^ v21) < 0x4000)
      {

        a4 = v51;
        a5 = v52;
        continue;
      }

      v55 = v23;
      v56 = v21;
      v57 = v19;
      v50 = v10;
      v26 = 0;
      v27 = *(v48 + 8);
      do
      {
        v59 = v53;
        v60 = v54;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1B2726E80](42, 0xE100000000000000);
        v58 = v26;
        v28 = sub_1B0E469C8();
        MEMORY[0x1B2726E80](v28);

        v29 = v59;
        v30 = v60;
        v31 = swift_allocObject();
        *(v31 + 16) = 77;
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1B0EDD3C0;
        *(v32 + 32) = v61;
        *(v32 + 40) = &v63;
        sub_1B0C72368(" ", "", v32);
        sub_1B0C737EC(v29, v30, v31, sub_1B0C76E5C);
        LOBYTE(v59) = 61;
        swift_beginAccess();
        v33 = *(v31 + 16) - 1;
        if (__OFSUB__(*(v31 + 16), 1))
        {
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
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
        }

        *(v31 + 16) = v33;
        sub_1B0C72368(&v59, &v59 + 1, v32);
        if (__OFSUB__(v33, 1))
        {
          goto LABEL_32;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v34 = sub_1B0C73A84(v57, v56, v55, v25, v33 - 1, v32);
        v36 = v35;
        v55 = v37;
        v39 = v38;
        swift_bridgeObjectRelease_n();
        v56 = v36;
        v57 = v34;
        v40 = v34 ^ v36;
        if (v50 != v49 || v40 >> 14)
        {
          LOBYTE(v59) = 59;
          sub_1B0C72368(&v59, &v59 + 1, v32);
        }

        swift_beginAccess();
        v41 = *(v32 + 16);
        if (v27 <= 0)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v27, v41))
        {
          goto LABEL_37;
        }

        if (v27 + v41 < 79)
        {
LABEL_24:
          if (v41 < 0)
          {
            goto LABEL_34;
          }

          v51(v61, &v61[v41]);

          if (v41 > 0xA1)
          {
            goto LABEL_35;
          }

          v42 = __OFADD__(v27, v41);
          v41 += v27;
          if (v42)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_1B0C72700(*v48, v51);
          v51("\t", "");
          if (v41 < 1)
          {
            goto LABEL_38;
          }

          v51(&v62, &v61[v41]);

          if (v41 > 0xA1)
          {
            goto LABEL_39;
          }
        }

        if (__OFADD__(v26, 1))
        {
          goto LABEL_33;
        }

        ++v26;
        v27 = v41;
        v25 = v39;
      }

      while (v40 >= 0x4000);

      *(v48 + 8) = v41;
      v11 = v45 + 32;
      a2 = v46;
      a4 = v51;
      a5 = v52;
      v9 = v49;
      v10 = v50;
    }

    while (v10 != v9);
  }

  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C6E240(uint64_t result, uint64_t a2)
{
  v31 = result;
  v37 = *MEMORY[0x1E69E9840];
  v32 = *(a2 + 16);
  if (v32)
  {
    v2 = 0;
    v3 = (a2 + 40);
    do
    {
      v9 = *(v3 - 1);
      v10 = *v3;
      if (v2)
      {
        v11 = 161;
      }

      else
      {
        v11 = 160;
      }

      v12 = *v3;
      v13 = swift_bridgeObjectRetain_n();
      v30 = &v30;
      MEMORY[0x1EEE9AC00](v13);
      v15 = &v30 - v14;
      v16 = &v30 + v11 - v14;
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = v11;
      v17[4] = v15;
      v17[5] = v16;
      if (v2)
      {
        sub_1B0C72368(" ", "", v17);
      }

      v33 = v9;
      v34 = v10;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v18 = sub_1B0E44ED8();
      sub_1B0C7495C(v18, v19, v17);

      if (--v32)
      {
        LOBYTE(v33) = 44;
        sub_1B0C72368(&v33, &v33 + 1, v17);
      }

      swift_beginAccess();
      v20 = v17[2];
      v21 = *(v31 + 8);
      if (v21 < 1)
      {
        goto LABEL_18;
      }

      if (__OFADD__(v21, v20))
      {
        goto LABEL_29;
      }

      if (v21 + v20 < 79)
      {
LABEL_18:
        if (v20 < 0)
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
        }

        v35 = MEMORY[0x1E69E6290];
        v36 = MEMORY[0x1E6969DF8];
        v33 = v15;
        v34 = &v15[v20];
        v26 = __swift_project_boxed_opaque_existential_0(&v33, MEMORY[0x1E69E6290]);
        v28 = *v26;
        v27 = v26[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v33);

        if (v11 < v20)
        {
          goto LABEL_27;
        }

        v8 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1B0C74C44(*v31);
        v35 = MEMORY[0x1E69E6290];
        v36 = MEMORY[0x1E6969DF8];
        v33 = "\t";
        v34 = "";
        v22 = __swift_project_boxed_opaque_existential_0(&v33, MEMORY[0x1E69E6290]);
        v24 = *v22;
        v23 = v22[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v33);
        if (v2)
        {
          if (v20 < 1)
          {
            goto LABEL_31;
          }

          v25 = 1;
        }

        else
        {
          if (v20 < 0)
          {
            goto LABEL_32;
          }

          v25 = 0;
        }

        v35 = MEMORY[0x1E69E6290];
        v36 = MEMORY[0x1E6969DF8];
        v33 = &v15[v25];
        v34 = &v15[v20];
        v4 = __swift_project_boxed_opaque_existential_0(&v33, MEMORY[0x1E69E6290]);
        v6 = *v4;
        v5 = v4[1];
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v33);
        v7 = sub_1B0433338(v25, v20, v15, v16);

        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_30;
        }
      }

      *(v31 + 8) = v8;
      result = swift_bridgeObjectRelease_n();
      --v2;
      v3 += 2;
    }

    while (v32);
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C6E584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = a2;
  v89 = *MEMORY[0x1E69E9840];
  v13 = *(a2 + 144);
  v75[8] = *(a2 + 128);
  v75[9] = v13;
  v75[10] = *(a2 + 160);
  v76 = *(a2 + 176);
  v14 = *(a2 + 80);
  v75[4] = *(a2 + 64);
  v75[5] = v14;
  v15 = *(a2 + 112);
  v75[6] = *(a2 + 96);
  v75[7] = v15;
  v16 = *(a2 + 16);
  v75[0] = *a2;
  v75[1] = v16;
  v17 = *(a2 + 48);
  v75[2] = *(a2 + 32);
  v75[3] = v17;
  if (sub_1B0717014(v75) != 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v75);
    v84 = v26[7];
    v85 = v26[8];
    v86 = v26[9];
    v87 = v26[10];
    v80 = v26[3];
    v81 = v26[4];
    v82 = v26[5];
    v83 = v26[6];
    v77 = *v26;
    v78 = v26[1];
    v79 = v26[2];
    if (!(v77 >> 62))
    {
      v7 = a1;
      a3 = a4;
      a4 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      a1 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v6 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v49 = HIBYTE(v5) & 0xF;
          if ((v6 & 0x1000000000000000) != 0)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v49 = a4 & 0xFFFFFFFFFFFFLL;
          if ((v6 & 0x1000000000000000) != 0)
          {
LABEL_66:
            v64 = sub_1B0E44DC8();
            v53 = v49 + v64;
            if (!__OFADD__(v49, v64))
            {
LABEL_50:
              v55 = (v53 + 2);
              if (!__OFADD__(v53, 2))
              {
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B07169CC(v10, __dst);
                sub_1B0C74E90(v55, 0, v7, a4, v5, a1, v6, &v77, a3);
                sub_1B075E648(v10);

                v56 = *(&v77 + 1);
                v58 = *(&v78 + 1);
                v57 = v78;
                v59 = v7;
LABEL_54:
                result = sub_1B0C6D6A8(v56, v57, v58, v59);
                goto LABEL_55;
              }

LABEL_72:
              __break(1u);
            }

            goto LABEL_68;
          }
        }

LABEL_45:
        if ((v6 & 0x2000000000000000) != 0)
        {
          v54 = HIBYTE(v6) & 0xF;
          v53 = v49 + v54;
          if (!__OFADD__(v49, v54))
          {
            goto LABEL_50;
          }
        }

        else
        {
          v53 = v49 + (a1 & 0xFFFFFFFFFFFFLL);
          if (!__OFADD__(v49, a1 & 0xFFFFFFFFFFFFLL))
          {
            goto LABEL_50;
          }
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_65:
      v49 = sub_1B0E44DC8();
      if ((v6 & 0x1000000000000000) != 0)
      {
        goto LABEL_66;
      }

      goto LABEL_45;
    }

    if (v77 >> 62 != 1)
    {
      v5 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v49 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      if ((v49 & 0x1000000000000000) == 0)
      {
        if ((v49 & 0x2000000000000000) != 0)
        {
          v60 = HIBYTE(v49) & 0xF;
          v50 = (v60 + 6);
          if (__OFADD__(v60, 6))
          {
            goto LABEL_71;
          }
        }

        else
        {
          v50 = ((v5 & 0xFFFFFFFFFFFFLL) + 6);
          if (__OFADD__(v5 & 0xFFFFFFFFFFFFLL, 6))
          {
            goto LABEL_71;
          }
        }

LABEL_53:
        sub_1B07169CC(v10, __dst);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0C7625C(v50, 0, a1, v5, v49, v6, &v77);
        sub_1B075E648(v10);

        v56 = *(&v77 + 1);
        v58 = *(&v78 + 1);
        v57 = v78;
        v59 = a1;
        goto LABEL_54;
      }

LABEL_69:
      v65 = sub_1B0E44DC8();
      v50 = (v65 + 6);
      if (!__OFADD__(v65, 6))
      {
        goto LABEL_53;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    memcpy(__dst, ((v77 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
    if ((*&__dst[8] & 0x1000000000000000) != 0)
    {
      goto LABEL_62;
    }

    if ((*&__dst[8] & 0x2000000000000000) != 0)
    {
      v52 = HIBYTE(*&__dst[8]) & 0xFLL;
      v27 = v52 + 9;
      if (!__OFADD__(v52, 9))
      {
LABEL_43:
        sub_1B07169CC(v10, &v70);
        sub_1B0C6700C(__dst, &v70);
        sub_1B0C75E98(v27, 0, a1, __dst, &v77);
        sub_1B075E648(v10);
        sub_1B0C6D6A8(*(&v77 + 1), v78, *(&v78 + 1), a1);
        result = sub_1B0C67068(__dst);
LABEL_55:
        *a5 = 0;
        goto LABEL_56;
      }
    }

    else
    {
      v27 = (*__dst & 0xFFFFFFFFFFFFLL) + 9;
      if (!__OFADD__(*__dst & 0xFFFFFFFFFFFFLL, 9))
      {
        goto LABEL_43;
      }
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v75);
  v19 = *(v18 + 32);
  v20 = *(v18 + 48);
  v21 = *(v18 + 16);
  *__dst = *v18;
  *&__dst[16] = v21;
  *&__dst[32] = v19;
  *&__dst[48] = v20;
  v23 = *(v18 + 80);
  v22 = *(v18 + 96);
  v24 = *(v18 + 64);
  *&__dst[112] = *(v18 + 112);
  *&__dst[80] = v23;
  *&__dst[96] = v22;
  *&__dst[64] = v24;
  if ((*&__dst[16] & 0x1000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if ((*&__dst[16] & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(*&__dst[16]) & 0xFLL;
    v25 = (v28 + 10);
    if (!__OFADD__(v28, 10))
    {
      goto LABEL_15;
    }

    goto LABEL_61;
  }

  v25 = ((*&__dst[8] & 0xFFFFFFFFFFFFLL) + 10);
  if (__OFADD__(*&__dst[8] & 0xFFFFFFFFFFFFLL, 10))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    v63 = sub_1B0E44DC8();
    v27 = v63 + 9;
    if (!__OFADD__(v63, 9))
    {
      goto LABEL_43;
    }

    goto LABEL_64;
  }

LABEL_15:
  sub_1B07AD120(__dst, &v70);
  v67 = a1;
  sub_1B0C76660(v25, 0, a1, __dst);
  sub_1B075E648(v10);
  LOBYTE(v77) = 59;
  v73 = MEMORY[0x1E69E6290];
  v74 = MEMORY[0x1E6969DF8];
  v70 = &v77;
  v71 = &v77 + 1;
  v29 = __swift_project_boxed_opaque_existential_0(&v70, MEMORY[0x1E69E6290]);
  v31 = *v29;
  v30 = v29[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v70);
  a1 = *&__dst[32];
  v68 = a5;
  v66 = a3;
  if (*&__dst[32])
  {
    v10 = *&__dst[40];
    v32 = *&__dst[24];
  }

  else
  {
    v32 = sub_1B0C740DC(MEMORY[0x1E69E7CC0]);
    a1 = v33;
    v10 = v34;
  }

  v5 = 0x797261646E756F62;
  v70 = v32;
  v71 = a1;
  v72 = v10;
  a5 = *(v10 + 16);
  swift_retain_n();

  v69 = a5;
  if (!a5)
  {
LABEL_28:

    v42 = swift_allocObject();
    *(v42 + 16) = MEMORY[0x1E69E7CC0];
    v43 = v5;
    sub_1B0C670BC(v66, v42);
    sub_1B0C670BC(v66, v42);
    swift_beginAccess();
    sub_1B0C671E0(0xD000000000000016, 0x80000001B0F2E630);
    swift_endAccess();
    sub_1B0C670BC(v66, v42);
    v44 = *(v42 + 16);
    swift_bridgeObjectRetain_n();

    v45 = *(v44 + 16);
    v46 = sub_1B0E44C68();
    v48 = v47;

    sub_1B0C6FCDC(v46, v48, v43, 0xE800000000000000);
    goto LABEL_41;
  }

  a4 = 0;
  v6 = 0;
  while (1)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      v62 = sub_1B0E44DC8();
      v25 = (v62 + 10);
      if (__OFADD__(v62, 10))
      {
        goto LABEL_61;
      }

      goto LABEL_15;
    }

    if (v6 >= *(v10 + 16))
    {
      goto LABEL_58;
    }

    v35 = *(a1 + a4 + 32);
    v36 = *(a1 + a4 + 40);
    v37 = *(v10 + a4 + 32);
    v7 = *(v10 + a4 + 40);
    v38 = sub_1B0E44B98();
    a3 = v39;
    if (v38 == v5 && v39 == 0xE800000000000000)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      goto LABEL_40;
    }

    a5 = v5;
    v41 = sub_1B0E46A78();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    if (v41)
    {
      break;
    }

    ++v6;

    a4 += 16;
    v5 = a5;
    if (v69 == v6)
    {
      goto LABEL_28;
    }
  }

LABEL_40:

  v44 = sub_1B03B7B80(v37, v7);

LABEL_41:
  sub_1B0C6D6A8(v70, v71, v72, v67);

  *v68 = v44;
LABEL_56:
  v61 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C6ECE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(char *, char *)@<X2>, char *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v103 = a5;
  v8 = a2;
  v127 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 144);
  v113[8] = *(a2 + 128);
  v113[9] = v11;
  v113[10] = *(a2 + 160);
  v114 = *(a2 + 176);
  v12 = *(a2 + 80);
  v113[4] = *(a2 + 64);
  v113[5] = v12;
  v13 = *(a2 + 112);
  v113[6] = *(a2 + 96);
  v113[7] = v13;
  v14 = *(a2 + 16);
  v113[0] = *a2;
  v113[1] = v14;
  v15 = *(a2 + 48);
  v113[2] = *(a2 + 32);
  v113[3] = v15;
  v41 = sub_1B0717014(v113) == 1;
  v105 = a4;
  v106 = a3;
  v104 = a6;
  v107 = a1;
  v16 = v113;
  if (v41)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v113);
    v18 = *(v17 + 32);
    v19 = *(v17 + 48);
    v20 = *(v17 + 16);
    v126[0] = *v17;
    v126[1] = v20;
    v126[2] = v18;
    v126[3] = v19;
    v22 = *(v17 + 80);
    v21 = *(v17 + 96);
    v23 = *(v17 + 64);
    *&v126[7] = *(v17 + 112);
    v126[5] = v22;
    v126[6] = v21;
    v126[4] = v23;
    v24 = *&v126[1];
    if ((*&v126[1] & 0x1000000000000000) != 0)
    {
      goto LABEL_111;
    }

    if ((*&v126[1] & 0x2000000000000000) != 0)
    {
      goto LABEL_15;
    }

    v16 = (*(&v126[0] + 1) & 0xFFFFFFFFFFFFLL);
    v25 = (*(&v126[0] + 1) & 0xFFFFFFFFFFFFLL) + 10;
    if (__OFADD__(*(&v126[0] + 1) & 0xFFFFFFFFFFFFLL, 10))
    {
      goto LABEL_7;
    }

    while (1)
    {
LABEL_16:
      sub_1B07AD120(v126, &v110);
      sub_1B0C73DDC(a3, a4, v25, 0, a1, v126);
      sub_1B075E648(v8);
      LOBYTE(v110) = 59;
      a3(&v110, &v110 + 1);
      v31 = *&v126[2];
      if (*&v126[2])
      {
        v32 = *(&v126[2] + 1);
        v33 = *(&v126[1] + 1);
      }

      else
      {
        v33 = sub_1B0C740DC(MEMORY[0x1E69E7CC0]);
        v31 = v34;
        v32 = v35;
      }

      v36 = 0x797261646E756F62;
      v110 = v33;
      v111 = v31;
      v112 = v32;
      a1 = *(v32 + 16);
      swift_retain_n();
      v102 = v33;

      v109 = a1;
      if (!a1)
      {
        break;
      }

      a6 = 0;
      v8 = 0;
      while (v8 < *(v31 + 16))
      {
        if (v8 >= *(v32 + 16))
        {
          goto LABEL_110;
        }

        v37 = *(v31 + a6 + 32);
        v38 = *(v31 + a6 + 40);
        a4 = *(v32 + a6 + 32);
        a1 = *(v32 + a6 + 40);
        v39 = sub_1B0E44B98();
        a3 = v40;
        v41 = v39 == v36 && v40 == 0xE800000000000000;
        if (v41)
        {
          goto LABEL_42;
        }

        v108 = a4;
        a4 = v32;
        v42 = v36;
        v43 = sub_1B0E46A78();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        if (v43)
        {

          a4 = v108;
          goto LABEL_44;
        }

        ++v8;

        a6 += 16;
        v36 = v42;
        v32 = a4;
        if (v109 == v8)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      v16 = sub_1B0E44DC8();
      v25 = v16 + 10;
      if (__OFADD__(v16, 10))
      {
        goto LABEL_7;
      }
    }

LABEL_29:

    v44 = swift_allocObject();
    *(v44 + 16) = MEMORY[0x1E69E7CC0];
    sub_1B0C670BC(v103, v44);
    sub_1B0C670BC(v103, v44);
    swift_beginAccess();
    sub_1B0C671E0(0xD000000000000016, 0x80000001B0F2E630);
    swift_endAccess();
    sub_1B0C670BC(v103, v44);
    v45 = *(v44 + 16);
    swift_bridgeObjectRetain_n();

    v46 = *(v45 + 16);
    v47 = sub_1B0E44C68();
    v49 = v48;

    sub_1B0C6FCDC(v47, v49, v36, 0xE800000000000000);
    goto LABEL_45;
  }

  while (1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v16);
    v122 = v27[7];
    v123 = v27[8];
    v124 = v27[9];
    v125 = v27[10];
    v118 = v27[3];
    v119 = v27[4];
    v120 = v27[5];
    v121 = v27[6];
    v115 = *v27;
    v116 = v27[1];
    v117 = v27[2];
    v28 = (v115 & 0x3FFFFFFFFFFFFFFFLL);
    if (!(v115 >> 62))
    {
      v29 = *((v115 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v50 = *((v115 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v51 = *((v115 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v52 = *((v115 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      if ((v50 & 0x1000000000000000) != 0)
      {
        v94 = *((v115 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v95 = *((v115 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v53 = sub_1B0E44DC8();
        if ((v52 & 0x1000000000000000) != 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if ((v50 & 0x2000000000000000) == 0)
        {
          v53 = v29 & 0xFFFFFFFFFFFFLL;
          if ((v52 & 0x1000000000000000) == 0)
          {
            goto LABEL_33;
          }

LABEL_66:
          v54 = sub_1B0E44DC8();
          v28 = (v53 + v54);
          if (!__OFADD__(v53, v54))
          {
LABEL_70:
            v30 = v28 + 2;
            if (__OFADD__(v28, 2))
            {
              __break(1u);
              goto LABEL_123;
            }

            if (v30 < 0)
            {
              goto LABEL_143;
            }

            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v109 = v51;
            if (v30 >= 1025)
            {
              sub_1B07169CC(v8, v126);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B07169CC(v8, v126);
              isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
              if ((isStackAllocationSafe & 1) == 0)
              {
                v101 = swift_slowAlloc();
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B07169CC(v8, v126);
                sub_1B0C71C3C(v101, v101 + v30, 0, v107, v106, v105, v29, v50, v109, v52, &v115);
                MEMORY[0x1B272C230](v101, -1, -1);
                v30 = v104;
                goto LABEL_86;
              }
            }

            else
            {
              sub_1B07169CC(v8, v126);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              isStackAllocationSafe = sub_1B07169CC(v8, v126);
            }

            v108 = &v102;
            MEMORY[0x1EEE9AC00](isStackAllocationSafe);
            v75 = &v102 - v74;
            v76 = &v102 + v30 - v74;
            v77 = swift_allocObject();
            v77[2] = 0;
            v78 = v77 + 2;
            v77[3] = v30;
            v77[4] = v75;
            v77[5] = v76;
            sub_1B0C6FBFC(sub_1B0C76E5C, v77, v29, v50, v109, v52, &v115);
            swift_beginAccess();
            v79 = *v78;
            v80 = *(v107 + 8);
            if (v80 >= 1)
            {
              if (__OFADD__(v80, v79))
              {
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
                goto LABEL_142;
              }

              if (v80 + v79 >= 79)
              {
                v80 = v106;
                sub_1B0C72700(*v107, v106);
                (v80)("\t", "");
                if (v79 < 0)
                {
LABEL_147:
                  __break(1u);
                  goto LABEL_148;
                }

                (v80)(v75, &v75[v79]);

                if (v30 < v79)
                {
                  goto LABEL_149;
                }

                v81 = v79 + 1;
                v30 = v104;
                if (!__OFADD__(v79, 1))
                {
LABEL_85:
                  *(v107 + 8) = v81;
LABEL_86:

                  sub_1B075E648(v8);
                  sub_1B075E648(v8);
                  swift_bridgeObjectRelease_n();
                  swift_bridgeObjectRelease_n();
                  result = sub_1B0C6DC98(*(&v115 + 1), v116, *(&v116 + 1), v106, v105);
                  goto LABEL_107;
                }

                __break(1u);
              }
            }

            if (v79 < 0)
            {
LABEL_132:
              __break(1u);
              goto LABEL_133;
            }

            v106(v75, &v75[v79]);

            if (v30 < v79)
            {
LABEL_135:
              __break(1u);
              goto LABEL_136;
            }

            v81 = v80 + v79;
            v30 = v104;
            if (__OFADD__(v80, v79))
            {
LABEL_137:
              __break(1u);
              goto LABEL_138;
            }

            goto LABEL_85;
          }

          goto LABEL_36;
        }

        v53 = HIBYTE(v50) & 0xF;
        if ((v52 & 0x1000000000000000) != 0)
        {
          goto LABEL_66;
        }
      }

LABEL_33:
      if ((v52 & 0x2000000000000000) != 0)
      {
        v54 = HIBYTE(v52) & 0xF;
        v28 = (v53 + v54);
        if (!__OFADD__(v53, v54))
        {
          goto LABEL_70;
        }
      }

      else
      {
        v54 = v51 & 0xFFFFFFFFFFFFLL;
        v28 = (v53 + (v51 & 0xFFFFFFFFFFFFLL));
        if (!__OFADD__(v53, v51 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_70;
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      v55 = v28[2];
      v56 = v28[3];
      a1 = v28[4];
      if ((v56 & 0x1000000000000000) != 0)
      {
        v96 = v28[2];
        v97 = v28[3];
        v98 = sub_1B0E44DC8();
        v57 = v98 + 6;
        if (!__OFADD__(v98, 6))
        {
LABEL_88:
          if (v57 < 0)
          {
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

          if (v57 >= 1025)
          {
            sub_1B07169CC(v8, v126);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B07169CC(v8, v126);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v83 = swift_stdlib_isStackAllocationSafe();
            if ((v83 & 1) == 0)
            {
              v100 = swift_slowAlloc();
              sub_1B07169CC(v8, v126);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0C71208(v100, v100 + v57, 0, v107, v106, v105, v55, v56, a1, &v115);
              MEMORY[0x1B272C230](v100, -1, -1);

              sub_1B075E648(v8);
              sub_1B075E648(v8);

              v88 = *(&v116 + 1);
              goto LABEL_105;
            }
          }

          else
          {
            sub_1B07169CC(v8, v126);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B07169CC(v8, v126);
            v83 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          }

          v109 = &v102;
          MEMORY[0x1EEE9AC00](v83);
          v85 = &v102 - v84;
          v86 = &v102 + v57 - v84;
          v87 = swift_allocObject();
          v87[2] = 0;
          v87[3] = v57;
          v87[4] = v85;
          v87[5] = v86;
          sub_1B0C72368("text/", "", v87);
          sub_1B0C724CC(v55, v56, sub_1B0C74E88);
          v88 = *(&v116 + 1);
          if (*(*(&v116 + 1) + 16))
          {
            LOBYTE(v126[0]) = 59;
            sub_1B0C72368(v126, v126 + 1, v87);
          }

          swift_beginAccess();
          v89 = v87[2];
          v90 = *(v107 + 8);
          if (v90 >= 1)
          {
            if (__OFADD__(v90, v89))
            {
LABEL_139:
              __break(1u);
              goto LABEL_140;
            }

            if (v90 + v89 >= 79)
            {
              v90 = v106;
              sub_1B0C72700(*v107, v106);
              (v90)("\t", "");
              if (v89 < 0)
              {
LABEL_145:
                __break(1u);
                goto LABEL_146;
              }

              (v90)(v85, &v85[v89]);

              if (v57 < v89)
              {
LABEL_148:
                __break(1u);
LABEL_149:
                __break(1u);
              }

              v91 = v89 + 1;
              if (!__OFADD__(v89, 1))
              {
LABEL_104:
                *(v107 + 8) = v91;

                sub_1B075E648(v8);
                sub_1B075E648(v8);

LABEL_105:
                result = sub_1B0C6DC98(*(&v115 + 1), v116, v88, v106, v105);
                goto LABEL_106;
              }

              __break(1u);
            }
          }

          if (v89 < 0)
          {
            goto LABEL_130;
          }

          v106(v85, &v85[v89]);

          if (v57 < v89)
          {
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          v91 = v90 + v89;
          if (__OFADD__(v90, v89))
          {
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          goto LABEL_104;
        }
      }

      else if ((v56 & 0x2000000000000000) != 0)
      {
        v82 = HIBYTE(v56) & 0xF;
        v57 = v82 + 6;
        if (!__OFADD__(v82, 6))
        {
          goto LABEL_88;
        }
      }

      else
      {
        v57 = (v55 & 0xFFFFFFFFFFFFLL) + 6;
        if (!__OFADD__(v55 & 0xFFFFFFFFFFFFLL, 6))
        {
          goto LABEL_88;
        }
      }

      __break(1u);
LABEL_42:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

LABEL_44:

      v45 = sub_1B03B7B80(a4, a1);

LABEL_45:
      sub_1B0C6DC98(v110, v111, v112, v106, v105);

      *v104 = v45;
      goto LABEL_108;
    }

    if (v115 >> 62 != 1)
    {
      goto LABEL_37;
    }

    memcpy(v126, v28 + 2, 0x148uLL);
    a6 = *(&v126[0] + 1);
    v29 = *&v126[0];
    if ((*(&v126[0] + 1) & 0x1000000000000000) != 0)
    {
      break;
    }

    if ((*(&v126[0] + 1) & 0x2000000000000000) != 0)
    {
      v59 = HIBYTE(*(&v126[0] + 1)) & 0xFLL;
      v30 = v59 + 9;
      if (!__OFADD__(v59, 9))
      {
        goto LABEL_47;
      }
    }

    else
    {
      v30 = (*&v126[0] & 0xFFFFFFFFFFFFLL) + 9;
      if (!__OFADD__(*&v126[0] & 0xFFFFFFFFFFFFLL, 9))
      {
        goto LABEL_47;
      }
    }

LABEL_14:
    __break(1u);
LABEL_15:
    v16 = (HIBYTE(v24) & 0xF);
    v25 = v16 + 10;
    if (!__OFADD__(v16, 10))
    {
      goto LABEL_16;
    }

LABEL_7:
    __break(1u);
  }

  v93 = sub_1B0E44DC8();
  v30 = v93 + 9;
  if (__OFADD__(v93, 9))
  {
    goto LABEL_14;
  }

LABEL_47:
  if (v30 < 0)
  {
    goto LABEL_141;
  }

  v26 = &v110;
  v54 = v8;
  if (v30 < 1025)
  {
    sub_1B07169CC(v8, &v110);
    sub_1B0C6700C(v126, &v110);
    sub_1B07169CC(v8, &v110);
    v60 = sub_1B0C6700C(v126, &v110);
    goto LABEL_50;
  }

LABEL_123:
  sub_1B07169CC(v54, v26);
  sub_1B0C6700C(v126, &v110);
  sub_1B07169CC(v8, &v110);
  sub_1B0C6700C(v126, &v110);
  v60 = swift_stdlib_isStackAllocationSafe();
  if (v60)
  {
LABEL_50:
    MEMORY[0x1EEE9AC00](v60);
    v62 = &v102 - v61;
    v63 = &v102 + v30 - v61;
    v64 = swift_allocObject();
    v64[2] = 0;
    v64[3] = v30;
    v64[4] = v62;
    v64[5] = v63;
    sub_1B0C72368("message/", "", v64);
    sub_1B0C724CC(v29, a6, sub_1B0C76E5C);
    v65 = *(&v116 + 1);
    if (*(*(&v116 + 1) + 16))
    {
      LOBYTE(v110) = 59;
      sub_1B0C72368(&v110, &v110 + 1, v64);
    }

    swift_beginAccess();
    v66 = v64[2];
    v67 = *(v107 + 8);
    if (v67 >= 1)
    {
      if (__OFADD__(v67, v66))
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      if (v67 + v66 >= 79)
      {
        v67 = v106;
        v68 = v105;
        sub_1B0C72700(*v107, v106);
        (v67)("\t", "");
        if (v66 < 0)
        {
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        (v67)(v62, &v62[v66]);

        if (v30 < v66)
        {
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        v62 = v68;
        v69 = v66 + 1;
        v70 = v107;
        if (!__OFADD__(v66, 1))
        {
          goto LABEL_63;
        }

        __break(1u);
      }
    }

    if ((v66 & 0x8000000000000000) == 0)
    {
      v71 = &v62[v66];
      v72 = v62;
      v62 = v105;
      v106(v72, v71);

      if (v30 >= v66)
      {
        v69 = v67 + v66;
        v70 = v107;
        if (!__OFADD__(v67, v66))
        {
LABEL_63:
          *(v70 + 8) = v69;
          sub_1B0C67068(v126);
          sub_1B075E648(v8);
          sub_1B075E648(v8);
          goto LABEL_64;
        }

        goto LABEL_134;
      }

      goto LABEL_131;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v99 = swift_slowAlloc();
  sub_1B07169CC(v8, &v110);
  sub_1B0C6700C(v126, &v110);
  sub_1B0C71748(v99, v99 + v30, 0, v107, v106, v105, v126, &v115);
  MEMORY[0x1B272C230](v99, -1, -1);
  sub_1B0C67068(v126);
  sub_1B075E648(v8);
  sub_1B075E648(v8);
  v65 = *(&v116 + 1);
  v62 = v105;
LABEL_64:
  sub_1B0C6DC98(*(&v115 + 1), v116, v65, v106, v62);
  result = sub_1B0C67068(v126);
LABEL_106:
  v30 = v104;
LABEL_107:
  *v30 = 0;
LABEL_108:
  v92 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C6FBFC(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v15 = *MEMORY[0x1E69E9840];
  sub_1B0C724CC(a3, a4, a1);
  v14 = 47;
  a1(&v14, &v15);
  result = sub_1B0C724CC(a5, a6, a1);
  if (*(*(a7 + 24) + 16))
  {
    v13 = 59;
    result = a1(&v13, &v14);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C6FCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v10 + 16);
  if (*v4)
  {
    v12 = *v4;

    v13 = sub_1B0C08B5C(a3, a4, v10 + 32, v11, (v9 + 16));
    v15 = v14;
    v17 = v16;

    if ((v15 & 1) == 0)
    {

      if (!a2)
      {
        goto LABEL_27;
      }

LABEL_21:
      v27 = v4[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0C0E064(v27);
        v27 = result;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v13 < *(v27 + 16))
      {
        v28 = v27 + 16 * v13;
        v29 = *(v28 + 40);
        *(v28 + 32) = a1;
        *(v28 + 40) = a2;

        v4[2] = v27;
        return result;
      }

      __break(1u);
      return result;
    }
  }

  else if (v11)
  {
    v13 = 0;
    v18 = (v10 + 40);
    while (1)
    {
      v19 = *(v18 - 1) == a3 && *v18 == a4;
      if (v19 || (sub_1B0E46A78() & 1) != 0)
      {
        break;
      }

      ++v13;
      v18 += 2;
      if (v11 == v13)
      {
        goto LABEL_13;
      }
    }

    if (!a2)
    {
      v17 = 0;
LABEL_27:
      sub_1B0C07FE0(v13, v17);

      sub_1B0C081D0(v13);
LABEL_28:
    }

    goto LABEL_21;
  }

LABEL_13:
  if (!a2)
  {
    goto LABEL_28;
  }

  sub_1B0C07E68(a3, a4);

  v22 = v4[2];
  v20 = v4 + 2;
  v21 = v22;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v22;
  if ((result & 1) == 0)
  {
    result = sub_1B041D32C(0, *(v21 + 16) + 1, 1);
    v21 = *v20;
  }

  v25 = *(v21 + 16);
  v24 = *(v21 + 24);
  if (v25 >= v24 >> 1)
  {
    result = sub_1B041D32C((v24 > 1), v25 + 1, 1);
    v21 = *v20;
  }

  *(v21 + 16) = v25 + 1;
  v26 = v21 + 16 * v25;
  *(v26 + 32) = a1;
  *(v26 + 40) = a2;
  *v20 = v21;
  return result;
}

uint64_t sub_1B0C6FEFC(char a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E6290];
  v5 = MEMORY[0x1E6969DF8];
  v30 = MEMORY[0x1E69E6290];
  v31 = MEMORY[0x1E6969DF8];
  v28 = "X-Apple-Content-Length";
  v29 = "";
  v6 = __swift_project_boxed_opaque_existential_0(&v28, MEMORY[0x1E69E6290]);
  v8 = *v6;
  v7 = v6[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  v30 = v4;
  v31 = v5;
  v28 = ": ";
  v29 = "";
  v9 = __swift_project_boxed_opaque_existential_0(&v28, v4);
  v11 = *v9;
  v10 = v9[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B0EDD3D0;
  *(v12 + 32) = v27;
  *(v12 + 40) = &v28;
  v28 = a2;
  v13 = sub_1B0E469C8();
  sub_1B0C742B8(v13, v14, v12);

  swift_beginAccess();
  v15 = *(v12 + 16);
  if (__OFADD__(v15, 24))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v12 + 16) + 24 < 79)
  {
    goto LABEL_6;
  }

  sub_1B0C74C44(a1);
  v30 = v4;
  v31 = v5;
  v28 = "\t";
  v29 = "";
  v16 = __swift_project_boxed_opaque_existential_0(&v28, v4);
  v18 = *v16;
  v17 = v16[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v30 = v4;
  v31 = v5;
  v28 = v27;
  v29 = &v27[v15];
  v19 = __swift_project_boxed_opaque_existential_0(&v28, v4);
  v21 = *v19;
  v20 = v19[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v28);

  if (v15 > 0x46)
  {
    __break(1u);
LABEL_6:
    if ((v15 & 0x8000000000000000) == 0)
    {
      v30 = v4;
      v31 = v5;
      v28 = v27;
      v29 = &v27[v15];
      v22 = __swift_project_boxed_opaque_existential_0(&v28, v4);
      v24 = *v22;
      v23 = v22[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v28);

      if (v15 <= 0x46)
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_8:
  result = sub_1B0C74C44(a1);
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C70174(char a1, uint64_t a2, uint64_t (*a3)(char *, char *))
{
  v12 = *MEMORY[0x1E69E9840];
  a3("X-Apple-Content-Length", "");
  a3(": ", "");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B0EDD3D0;
  *(v5 + 32) = v11;
  *(v5 + 40) = &v12;
  v6 = sub_1B0E469C8();
  sub_1B0C742B8(v6, v7, v5);

  swift_beginAccess();
  v8 = *(v5 + 16);
  if (__OFADD__(v8, 24))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v5 + 16) + 24 < 79)
  {
    goto LABEL_6;
  }

  sub_1B0C72700(a1, a3);
  a3("\t", "");
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a3(v11, &v11[v8]);

  if (v8 > 0x46)
  {
    __break(1u);
LABEL_6:
    if ((v8 & 0x8000000000000000) == 0)
    {
      a3(v11, &v11[v8]);

      if (v8 <= 0x46)
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_8:
  result = sub_1B0C72700(a1, a3);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B0C7034C()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  while (1)
  {
    v0 = sub_1B0E44DB8();
    v2 = v1;
    if (!v1)
    {
      goto LABEL_24;
    }

    v3 = v0;
    if (v0 == 2573 && v1 == 0xE200000000000000)
    {
      goto LABEL_17;
    }

    result = sub_1B0E46A78();
    if (result)
    {
      goto LABEL_17;
    }

    v5 = (v2 & 0x2000000000000000) != 0 ? HIBYTE(v2) & 0xF : v3 & 0xFFFFFFFFFFFFLL;
    if (!v5)
    {
      break;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      v6 = sub_1B0E44C18();
    }

    else
    {
      v6 = sub_1B0E46278() << 16;
    }

    if (v6 >> 14 != 4 * v5)
    {
      goto LABEL_23;
    }

    result = sub_1B0C04CF0(v3, v2);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_27;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_23:

LABEL_24:

      return v2 == 0;
    }

    result = sub_1B0C04CF0(v3, v2);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_28;
    }

    if ((result & 0xFFFFFF00) != 0)
    {
      goto LABEL_26;
    }

LABEL_17:
    v7 = sub_1B0C704E4(v3, v2);

    if ((v7 & 0x100) != 0 || v7 - 127 < 0xFFFFFFA2 || v7 - 34 <= 0x3B && ((1 << (v7 - 34)) & 0xE0000007F0024C1) != 0)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B0C704E4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a1;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = sub_1B0E44E08();
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = sub_1B0E46368();
      }

      v4 = *v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 8);
}

uint64_t sub_1B0C70574(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, unsigned __int8 a9)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v15 = a2 - a1;
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v17 = v16;
  v18 = a9;
  v16[2] = 0;
  v16[3] = v15;
  v16[4] = a1;
  v16[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v16);
  }

  sub_1B0C7495C(a5, a6, v17);
  LOBYTE(v44) = 61;
  sub_1B0C72368(&v44, &v44 + 1, v17);
  sub_1B0C75534(a7, a8, v17);
  if ((a9 & 1) == 0)
  {
    LOBYTE(v44) = 59;
    sub_1B0C72368(&v44, &v44 + 1, v17);
  }

  swift_beginAccess();
  v19 = v17[2];
  v20 = *(a4 + 8);
  if (v20 >= 1)
  {
    v21 = __OFADD__(v20, v19);
    v22 = v20 + v19;
    if (v21)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v22 >= 79)
    {
      sub_1B0C74C44(*a4);
      v18 = MEMORY[0x1E69E6290];
      v46 = MEMORY[0x1E69E6290];
      v47 = MEMORY[0x1E6969DF8];
      v44 = "\t";
      v45 = "";
      v23 = __swift_project_boxed_opaque_existential_0(&v44, MEMORY[0x1E69E6290]);
      v25 = *v23;
      v24 = v23[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v44);
      if (a3)
      {
        if (v19 < 1)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
        }

        v26 = 1;
        goto LABEL_23;
      }

LABEL_21:
      if (v19 < 0)
      {
        goto LABEL_34;
      }

      v26 = 0;
LABEL_23:
      v34 = (a1 + v26);
      v35 = (a1 + v19);
      if (!a1)
      {
        v35 = 0;
      }

      v46 = v18;
      v47 = MEMORY[0x1E6969DF8];
      if (!a1)
      {
        v34 = 0;
      }

      v44 = v34;
      v45 = v35;
      v36 = __swift_project_boxed_opaque_existential_0(&v44, v18);
      v38 = *v36;
      v37 = v36[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v44);
      v39 = sub_1B0433338(v26, v19, a1, a2);
      v33 = v39 + 1;
      if (!__OFADD__(v39, 1))
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  if (v19 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v27 = (v19 + a1);
  if (!a1)
  {
    v27 = 0;
  }

  v46 = MEMORY[0x1E69E6290];
  v47 = MEMORY[0x1E6969DF8];
  v44 = a1;
  v45 = v27;
  v28 = __swift_project_boxed_opaque_existential_0(&v44, MEMORY[0x1E69E6290]);
  v30 = *v28;
  v29 = v28[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v44);
  v31 = sub_1B0433338(0, v19, a1, a2);
  v32 = *(a4 + 8);
  v21 = __OFADD__(v32, v31);
  v33 = v32 + v31;
  if (v21)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_28:
  *(a4 + 8) = v33;

  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C7084C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, char a11)
{
  *&v40[23] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v17 = a2 - a1;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v19 = v18;
  v20 = a3;
  v21 = a5;
  v22 = a4;
  v18[2] = 0;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = a2;
  v37 = v20;
  if (v20)
  {
    sub_1B0C72368(" ", "", v18);
  }

  sub_1B0C724CC(a7, a8, sub_1B0C76E5C);
  v39 = 61;
  sub_1B0C72368(&v39, v40, v19);
  sub_1B0C731A0(a9, a10, sub_1B0C76E5C);
  if ((a11 & 1) == 0)
  {
    v39 = 59;
    sub_1B0C72368(&v39, v40, v19);
  }

  swift_beginAccess();
  v23 = v19[2];
  v24 = *(a4 + 8);
  if (v24 >= 1)
  {
    v25 = __OFADD__(v24, v23);
    v26 = v24 + v23;
    if (v25)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v26 >= 79)
    {
      sub_1B0C72700(*a4, v21);
      v21("\t", "");
      if (v37)
      {
        if (v23 < 1)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        v27 = 1;
        goto LABEL_24;
      }

LABEL_22:
      if (v23 < 0)
      {
        goto LABEL_37;
      }

      v27 = 0;
LABEL_24:
      if (a1)
      {
        v32 = (a1 + v23);
      }

      else
      {
        v32 = 0;
      }

      if (a1)
      {
        v33 = (a1 + v27);
      }

      else
      {
        v33 = 0;
      }

      v21(v33, v32);
      v34 = sub_1B0433338(v27, v23, a1, a2);
      v31 = v34 + 1;
      if (!__OFADD__(v34, 1))
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  if (v23 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a1)
  {
    v28 = (v23 + a1);
  }

  else
  {
    v28 = 0;
  }

  v21(a1, v28);
  v29 = sub_1B0433338(0, v23, a1, a2);
  v30 = *(a4 + 8);
  v25 = __OFADD__(v30, v29);
  v31 = v30 + v29;
  if (v25)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_31:
  *(v22 + 8) = v31;

  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1B0C70AEC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v10 = a2 - a1;
  }

  else
  {
    v10 = 0;
  }

  result = swift_allocObject();
  if (v10 < 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = result;
  result[2] = 0;
  result[3] = v10;
  result[4] = a1;
  result[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", result);
  }

  sub_1B0C72368("multipart/", "", v12);
  sub_1B0C7495C(*(a5 + 8), *(a5 + 16), v12);
  result = swift_beginAccess();
  v13 = v12[2];
  v14 = *(a4 + 8);
  if (v14 < 1)
  {
    goto LABEL_13;
  }

  v15 = __OFADD__(v14, v13);
  v16 = v14 + v13;
  if (v15)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v16 < 79)
  {
LABEL_13:
    if ((v13 & 0x8000000000000000) == 0)
    {
      v21 = (v13 + a1);
      if (!a1)
      {
        v21 = 0;
      }

      v34 = MEMORY[0x1E69E6290];
      v35 = MEMORY[0x1E6969DF8];
      v32 = a1;
      v33 = v21;
      v22 = __swift_project_boxed_opaque_existential_0(&v32, MEMORY[0x1E69E6290]);
      v24 = *v22;
      v23 = v22[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v32);
      result = sub_1B0433338(0, v13, a1, a2);
      v25 = *(a4 + 8);
      v15 = __OFADD__(v25, result);
      v26 = result + v25;
      if (!v15)
      {
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  sub_1B0C74C44(*a4);
  v10 = MEMORY[0x1E69E6290];
  v34 = MEMORY[0x1E69E6290];
  v35 = MEMORY[0x1E6969DF8];
  v32 = "\t";
  v33 = "";
  v17 = __swift_project_boxed_opaque_existential_0(&v32, MEMORY[0x1E69E6290]);
  v19 = *v17;
  v18 = v17[1];
  sub_1B0E42EF8();
  result = __swift_destroy_boxed_opaque_existential_0(&v32);
  if (a3)
  {
    if (v13 < 1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v20 = 1;
    goto LABEL_21;
  }

LABEL_19:
  if ((v13 & 0x8000000000000000) == 0)
  {
    v20 = 0;
LABEL_21:
    v27 = (a1 + v20);
    v28 = (a1 + v13);
    if (!a1)
    {
      v28 = 0;
    }

    v34 = v10;
    v35 = MEMORY[0x1E6969DF8];
    if (!a1)
    {
      v27 = 0;
    }

    v32 = v27;
    v33 = v28;
    v29 = __swift_project_boxed_opaque_existential_0(&v32, v10);
    v31 = *v29;
    v30 = v29[1];
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v32);
    result = sub_1B0433338(v20, v13, a1, a2);
    v26 = result + 1;
    if (!__OFADD__(result, 1))
    {
LABEL_26:
      *(a4 + 8) = v26;

      return sub_1B0717020(a5);
    }

    goto LABEL_30;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t *sub_1B0C70D4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v13 = a2 - a1;
  }

  else
  {
    v13 = 0;
  }

  result = swift_allocObject();
  if (v13 < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v15 = result;
  result[2] = 0;
  result[3] = v13;
  result[4] = a1;
  result[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", result);
  }

  sub_1B0C72368("multipart/", "", v15);
  sub_1B0C724CC(*(a7 + 8), *(a7 + 16), sub_1B0C76E5C);
  result = swift_beginAccess();
  v16 = v15[2];
  v17 = *(a4 + 8);
  if (v17 < 1)
  {
    goto LABEL_13;
  }

  v18 = __OFADD__(v17, v16);
  v19 = v17 + v16;
  if (v18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v19 < 79)
  {
LABEL_13:
    if ((v16 & 0x8000000000000000) == 0)
    {
      if (a1)
      {
        v21 = v16 + a1;
      }

      else
      {
        v21 = 0;
      }

      a5(a1, v21);
      result = sub_1B0433338(0, v16, a1, a2);
      v22 = *(a4 + 8);
      v18 = __OFADD__(v22, result);
      v23 = result + v22;
      if (!v18)
      {
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  sub_1B0C72700(*a4, a5);
  result = a5("\t", "");
  if (a3)
  {
    if (v16 < 1)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v20 = 1;
    goto LABEL_22;
  }

LABEL_20:
  if ((v16 & 0x8000000000000000) == 0)
  {
    v20 = 0;
LABEL_22:
    if (a1)
    {
      v24 = a1 + v16;
    }

    else
    {
      v24 = 0;
    }

    if (a1)
    {
      v25 = a1 + v20;
    }

    else
    {
      v25 = 0;
    }

    a5(v25, v24);
    result = sub_1B0433338(v20, v16, a1, a2);
    v23 = result + 1;
    if (!__OFADD__(result, 1))
    {
LABEL_29:
      *(a4 + 8) = v23;

      return sub_1B0717020(a7);
    }

    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t *sub_1B0C70F40(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t *a8)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v15 = a2 - a1;
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v17 = v16;
  v16[2] = 0;
  v16[3] = v15;
  v16[4] = a1;
  v16[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v16);
  }

  sub_1B0C72368("text/", "", v17);
  sub_1B0C7495C(a5, a6, v17);
  if (*(a8[3] + 16))
  {
    LOBYTE(v41) = 59;
    sub_1B0C72368(&v41, &v41 + 1, v17);
  }

  swift_beginAccess();
  v18 = v17[2];
  v19 = *(a4 + 8);
  if (v19 >= 1)
  {
    v20 = __OFADD__(v19, v18);
    v21 = v19 + v18;
    if (v20)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v21 >= 79)
    {
      sub_1B0C74C44(*a4);
      v43 = MEMORY[0x1E69E6290];
      v44 = MEMORY[0x1E6969DF8];
      v41 = "\t";
      v42 = "";
      v22 = __swift_project_boxed_opaque_existential_0(&v41, MEMORY[0x1E69E6290]);
      v24 = *v22;
      v23 = v22[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v41);
      if (a3)
      {
        if (v18 < 1)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
        }

        v25 = 1;
        goto LABEL_23;
      }

LABEL_21:
      if (v18 < 0)
      {
        goto LABEL_34;
      }

      v25 = 0;
LABEL_23:
      v33 = (a1 + v25);
      v34 = (a1 + v18);
      if (!a1)
      {
        v34 = 0;
      }

      v43 = MEMORY[0x1E69E6290];
      v44 = MEMORY[0x1E6969DF8];
      if (!a1)
      {
        v33 = 0;
      }

      v41 = v33;
      v42 = v34;
      v35 = __swift_project_boxed_opaque_existential_0(&v41, MEMORY[0x1E69E6290]);
      v37 = *v35;
      v36 = v35[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v41);
      v38 = sub_1B0433338(v25, v18, a1, a2);
      v32 = v38 + 1;
      if (!__OFADD__(v38, 1))
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  if (v18 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26 = (v18 + a1);
  if (!a1)
  {
    v26 = 0;
  }

  v43 = MEMORY[0x1E69E6290];
  v44 = MEMORY[0x1E6969DF8];
  v41 = a1;
  v42 = v26;
  v27 = __swift_project_boxed_opaque_existential_0(&v41, MEMORY[0x1E69E6290]);
  v29 = *v27;
  v28 = v27[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v41);
  v30 = sub_1B0433338(0, v18, a1, a2);
  v31 = *(a4 + 8);
  v20 = __OFADD__(v31, v30);
  v32 = v31 + v30;
  if (v20)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_28:
  *(a4 + 8) = v32;

  result = sub_1B071728C(a8);
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1B0C71208(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t *a10)
{
  *&v35[23] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = swift_allocObject();
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v18 = v17;
  v17[2] = 0;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v17);
  }

  sub_1B0C72368("text/", "", v18);
  sub_1B0C724CC(a7, a8, sub_1B0C76E5C);
  if (*(a10[3] + 16))
  {
    v34 = 59;
    sub_1B0C72368(&v34, v35, v18);
  }

  swift_beginAccess();
  v19 = v18[2];
  v20 = *(a4 + 8);
  if (v20 >= 1)
  {
    v21 = __OFADD__(v20, v19);
    v22 = v20 + v19;
    if (v21)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v22 >= 79)
    {
      sub_1B0C72700(*a4, a5);
      a5("\t", "");
      if (a3)
      {
        if (v19 < 1)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        v23 = 1;
        goto LABEL_24;
      }

LABEL_22:
      if (v19 < 0)
      {
        goto LABEL_37;
      }

      v23 = 0;
LABEL_24:
      if (a1)
      {
        v28 = (a1 + v19);
      }

      else
      {
        v28 = 0;
      }

      if (a1)
      {
        v29 = (a1 + v23);
      }

      else
      {
        v29 = 0;
      }

      a5(v29, v28);
      v30 = sub_1B0433338(v23, v19, a1, a2);
      v27 = v30 + 1;
      if (!__OFADD__(v30, 1))
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  if (v19 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a1)
  {
    v24 = (v19 + a1);
  }

  else
  {
    v24 = 0;
  }

  a5(a1, v24);
  v25 = sub_1B0433338(0, v19, a1, a2);
  v26 = *(a4 + 8);
  v21 = __OFADD__(v26, v25);
  v27 = v26 + v25;
  if (v21)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_31:
  *(a4 + 8) = v27;

  result = sub_1B071728C(a10);
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1B0C71488(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v12 = a2 - a1;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v14 = v13;
  v13[2] = 0;
  v13[3] = v12;
  v13[4] = a1;
  v13[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v13);
  }

  sub_1B0C72368("message/", "", v14);
  sub_1B0C7495C(*a5, *(a5 + 8), v14);
  if (*(a6[3] + 16))
  {
    LOBYTE(v38) = 59;
    sub_1B0C72368(&v38, &v38 + 1, v14);
  }

  swift_beginAccess();
  v15 = v14[2];
  v16 = *(a4 + 8);
  if (v16 >= 1)
  {
    v17 = __OFADD__(v16, v15);
    v18 = v16 + v15;
    if (v17)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v18 >= 79)
    {
      sub_1B0C74C44(*a4);
      v40 = MEMORY[0x1E69E6290];
      v41 = MEMORY[0x1E6969DF8];
      v38 = "\t";
      v39 = "";
      v19 = __swift_project_boxed_opaque_existential_0(&v38, MEMORY[0x1E69E6290]);
      v21 = *v19;
      v20 = v19[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v38);
      if (a3)
      {
        if (v15 < 1)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
        }

        v22 = 1;
        goto LABEL_23;
      }

LABEL_21:
      if (v15 < 0)
      {
        goto LABEL_34;
      }

      v22 = 0;
LABEL_23:
      v30 = (a1 + v22);
      v31 = (a1 + v15);
      if (!a1)
      {
        v31 = 0;
      }

      v40 = MEMORY[0x1E69E6290];
      v41 = MEMORY[0x1E6969DF8];
      if (!a1)
      {
        v30 = 0;
      }

      v38 = v30;
      v39 = v31;
      v32 = __swift_project_boxed_opaque_existential_0(&v38, MEMORY[0x1E69E6290]);
      v34 = *v32;
      v33 = v32[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v38);
      v35 = sub_1B0433338(v22, v15, a1, a2);
      v29 = v35 + 1;
      if (!__OFADD__(v35, 1))
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  if (v15 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v23 = (v15 + a1);
  if (!a1)
  {
    v23 = 0;
  }

  v40 = MEMORY[0x1E69E6290];
  v41 = MEMORY[0x1E6969DF8];
  v38 = a1;
  v39 = v23;
  v24 = __swift_project_boxed_opaque_existential_0(&v38, MEMORY[0x1E69E6290]);
  v26 = *v24;
  v25 = v24[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v38);
  v27 = sub_1B0433338(0, v15, a1, a2);
  v28 = *(a4 + 8);
  v17 = __OFADD__(v28, v27);
  v29 = v28 + v27;
  if (v17)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_28:
  *(a4 + 8) = v29;

  sub_1B0C67068(a5);
  result = sub_1B071728C(a6);
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1B0C71748(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7, uint64_t *a8)
{
  *&v33[23] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = a2 - a1;
  }

  else
  {
    v14 = 0;
  }

  v15 = swift_allocObject();
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v16 = v15;
  v15[2] = 0;
  v15[3] = v14;
  v15[4] = a1;
  v15[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v15);
  }

  sub_1B0C72368("message/", "", v16);
  sub_1B0C724CC(*a7, *(a7 + 8), sub_1B0C76E5C);
  if (*(a8[3] + 16))
  {
    v32 = 59;
    sub_1B0C72368(&v32, v33, v16);
  }

  swift_beginAccess();
  v17 = v16[2];
  v18 = *(a4 + 8);
  if (v18 >= 1)
  {
    v19 = __OFADD__(v18, v17);
    v20 = v18 + v17;
    if (v19)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v20 >= 79)
    {
      sub_1B0C72700(*a4, a5);
      a5("\t", "");
      if (a3)
      {
        if (v17 < 1)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        v21 = 1;
        goto LABEL_24;
      }

LABEL_22:
      if (v17 < 0)
      {
        goto LABEL_37;
      }

      v21 = 0;
LABEL_24:
      if (a1)
      {
        v26 = (a1 + v17);
      }

      else
      {
        v26 = 0;
      }

      if (a1)
      {
        v27 = (a1 + v21);
      }

      else
      {
        v27 = 0;
      }

      a5(v27, v26);
      v28 = sub_1B0433338(v21, v17, a1, a2);
      v25 = v28 + 1;
      if (!__OFADD__(v28, 1))
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  if (v17 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a1)
  {
    v22 = (v17 + a1);
  }

  else
  {
    v22 = 0;
  }

  a5(a1, v22);
  v23 = sub_1B0433338(0, v17, a1, a2);
  v24 = *(a4 + 8);
  v19 = __OFADD__(v24, v23);
  v25 = v24 + v23;
  if (v19)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_31:
  *(a4 + 8) = v25;

  sub_1B0C67068(a7);
  result = sub_1B071728C(a8);
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1B0C719A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v46 = a4;
  if (a1)
  {
    v15 = a2 - a1;
  }

  else
  {
    v15 = 0;
  }

  result = swift_allocObject();
  if (v15 < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = result;
  result[2] = 0;
  result[3] = v15;
  result[4] = a1;
  result[5] = a2;
  v18 = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", result);
  }

  v19 = a5;
  v20 = a9;
  sub_1B0C74B80(v19, a6, a7, a8, a9, v17);
  result = swift_beginAccess();
  v21 = v17[2];
  v22 = v46;
  v23 = *(v46 + 8);
  if (v23 < 1)
  {
    goto LABEL_13;
  }

  v24 = __OFADD__(v23, v21);
  v25 = v23 + v21;
  if (v24)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v25 < 79)
  {
LABEL_13:
    if ((v21 & 0x8000000000000000) == 0)
    {
      v30 = (v21 + a1);
      if (!a1)
      {
        v30 = 0;
      }

      v44 = MEMORY[0x1E69E6290];
      v45 = MEMORY[0x1E6969DF8];
      v42 = a1;
      v43 = v30;
      v31 = __swift_project_boxed_opaque_existential_0(&v42, MEMORY[0x1E69E6290]);
      v33 = *v31;
      v32 = v31[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v42);
      result = sub_1B0433338(0, v21, a1, v18);
      v34 = *(v22 + 8);
      v24 = __OFADD__(v34, result);
      v35 = result + v34;
      if (!v24)
      {
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_29;
  }

  sub_1B0C74C44(*v46);
  v20 = MEMORY[0x1E6969DF8];
  v44 = MEMORY[0x1E69E6290];
  v45 = MEMORY[0x1E6969DF8];
  v42 = "\t";
  v43 = "";
  v26 = __swift_project_boxed_opaque_existential_0(&v42, MEMORY[0x1E69E6290]);
  v28 = *v26;
  v27 = v26[1];
  sub_1B0E42EF8();
  result = __swift_destroy_boxed_opaque_existential_0(&v42);
  if (a3)
  {
    if (v21 < 1)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v29 = 1;
    goto LABEL_21;
  }

LABEL_19:
  if ((v21 & 0x8000000000000000) == 0)
  {
    v29 = 0;
LABEL_21:
    v36 = (a1 + v29);
    v37 = (a1 + v21);
    if (!a1)
    {
      v37 = 0;
    }

    v44 = MEMORY[0x1E69E6290];
    v45 = v20;
    if (!a1)
    {
      v36 = 0;
    }

    v42 = v36;
    v43 = v37;
    v38 = __swift_project_boxed_opaque_existential_0(&v42, MEMORY[0x1E69E6290]);
    v40 = *v38;
    v39 = v38[1];
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v42);
    result = sub_1B0433338(v29, v21, a1, v18);
    v35 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = v46;
      v20 = a9;
LABEL_27:
      *(v22 + 8) = v35;

      return sub_1B071728C(v20);
    }

    goto LABEL_31;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t *sub_1B0C71C3C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t *a11)
{
  if (a1)
  {
    v17 = a2 - a1;
  }

  else
  {
    v17 = 0;
  }

  result = swift_allocObject();
  if (v17 < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = result;
  result[2] = 0;
  result[3] = v17;
  result[4] = a1;
  result[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", result);
  }

  sub_1B0C6FBFC(sub_1B0C76E5C, v19, a7, a8, a9, a10, a11);
  result = swift_beginAccess();
  v20 = *(v19 + 16);
  v21 = *(a4 + 8);
  if (v21 < 1)
  {
    goto LABEL_13;
  }

  v22 = __OFADD__(v21, v20);
  v23 = v21 + v20;
  if (v22)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v23 < 79)
  {
LABEL_13:
    if ((v20 & 0x8000000000000000) == 0)
    {
      if (a1)
      {
        v25 = v20 + a1;
      }

      else
      {
        v25 = 0;
      }

      a5(a1, v25);
      result = sub_1B0433338(0, v20, a1, a2);
      v26 = *(a4 + 8);
      v22 = __OFADD__(v26, result);
      v27 = result + v26;
      if (!v22)
      {
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  sub_1B0C72700(*a4, a5);
  result = a5("\t", "");
  if (a3)
  {
    if (v20 < 1)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v24 = 1;
    goto LABEL_22;
  }

LABEL_20:
  if ((v20 & 0x8000000000000000) == 0)
  {
    v24 = 0;
LABEL_22:
    if (a1)
    {
      v28 = a1 + v20;
    }

    else
    {
      v28 = 0;
    }

    if (a1)
    {
      v29 = a1 + v24;
    }

    else
    {
      v29 = 0;
    }

    a5(v29, v28);
    result = sub_1B0433338(v24, v20, a1, a2);
    v27 = result + 1;
    if (!__OFADD__(result, 1))
    {
LABEL_29:
      *(a4 + 8) = v27;

      return sub_1B071728C(a11);
    }

    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1B0C71E78(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v12 = a2 - a1;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v14 = v13;
  v13[2] = 0;
  v13[3] = v12;
  v13[4] = a1;
  v13[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v13);
  }

  LOBYTE(v38) = 60;
  sub_1B0C72368(&v38, &v38 + 1, v14);
  sub_1B0C742B8(a5, a6, v14);
  LOBYTE(v38) = 62;
  sub_1B0C72368(&v38, &v38 + 1, v14);
  swift_beginAccess();
  v15 = v14[2];
  v16 = *(a4 + 8);
  if (v16 >= 1)
  {
    v17 = __OFADD__(v16, v15);
    v18 = v16 + v15;
    if (v17)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v18 >= 79)
    {
      sub_1B0C74C44(*a4);
      a5 = MEMORY[0x1E69E6290];
      v40 = MEMORY[0x1E69E6290];
      v41 = MEMORY[0x1E6969DF8];
      v38 = "\t";
      v39 = "";
      v19 = __swift_project_boxed_opaque_existential_0(&v38, MEMORY[0x1E69E6290]);
      v21 = *v19;
      v20 = v19[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v38);
      if (a3)
      {
        if (v15 < 1)
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
        }

        v22 = 1;
        goto LABEL_21;
      }

LABEL_19:
      if (v15 < 0)
      {
        goto LABEL_32;
      }

      v22 = 0;
LABEL_21:
      v30 = (a1 + v22);
      v31 = (a1 + v15);
      if (!a1)
      {
        v31 = 0;
      }

      v40 = a5;
      v41 = MEMORY[0x1E6969DF8];
      if (!a1)
      {
        v30 = 0;
      }

      v38 = v30;
      v39 = v31;
      v32 = __swift_project_boxed_opaque_existential_0(&v38, a5);
      v34 = *v32;
      v33 = v32[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v38);
      v35 = sub_1B0433338(v22, v15, a1, a2);
      v29 = v35 + 1;
      if (!__OFADD__(v35, 1))
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  if (v15 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v23 = (v15 + a1);
  if (!a1)
  {
    v23 = 0;
  }

  v40 = MEMORY[0x1E69E6290];
  v41 = MEMORY[0x1E6969DF8];
  v38 = a1;
  v39 = v23;
  v24 = __swift_project_boxed_opaque_existential_0(&v38, MEMORY[0x1E69E6290]);
  v26 = *v24;
  v25 = v24[1];
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v38);
  v27 = sub_1B0433338(0, v15, a1, a2);
  v28 = *(a4 + 8);
  v17 = __OFADD__(v28, v27);
  v29 = v28 + v27;
  if (v17)
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_26:
  *(a4 + 8) = v29;

  v37 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1B0C7212C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char *a5, uint64_t a6)
{
  if (a1)
  {
    v12 = a2 - a1;
  }

  else
  {
    v12 = 0;
  }

  result = swift_allocObject();
  if (v12 < 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v14 = result;
  result[2] = 0;
  result[3] = v12;
  result[4] = a1;
  result[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", result);
  }

  sub_1B0C769AC(a5, a6, v14);
  result = swift_beginAccess();
  v15 = v14[2];
  v16 = *(a4 + 8);
  if (v16 < 1)
  {
    goto LABEL_13;
  }

  v17 = __OFADD__(v16, v15);
  v18 = v16 + v15;
  if (v17)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v18 < 79)
  {
LABEL_13:
    if ((v15 & 0x8000000000000000) == 0)
    {
      v23 = (v15 + a1);
      if (!a1)
      {
        v23 = 0;
      }

      v36 = MEMORY[0x1E69E6290];
      v37 = MEMORY[0x1E6969DF8];
      v34 = a1;
      v35 = v23;
      v24 = __swift_project_boxed_opaque_existential_0(&v34, MEMORY[0x1E69E6290]);
      v26 = *v24;
      v25 = v24[1];
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v34);
      result = sub_1B0433338(0, v15, a1, a2);
      v27 = *(a4 + 8);
      v17 = __OFADD__(v27, result);
      v28 = result + v27;
      if (!v17)
      {
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  sub_1B0C74C44(*a4);
  a5 = MEMORY[0x1E69E6290];
  v12 = MEMORY[0x1E6969DF8];
  v36 = MEMORY[0x1E69E6290];
  v37 = MEMORY[0x1E6969DF8];
  v34 = "\t";
  v35 = "";
  v19 = __swift_project_boxed_opaque_existential_0(&v34, MEMORY[0x1E69E6290]);
  v21 = *v19;
  v20 = v19[1];
  sub_1B0E42EF8();
  result = __swift_destroy_boxed_opaque_existential_0(&v34);
  if (a3)
  {
    if (v15 < 1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v22 = 1;
    goto LABEL_21;
  }

LABEL_19:
  if ((v15 & 0x8000000000000000) == 0)
  {
    v22 = 0;
LABEL_21:
    v29 = (a1 + v22);
    v30 = (a1 + v15);
    if (!a1)
    {
      v30 = 0;
    }

    v36 = a5;
    v37 = v12;
    if (!a1)
    {
      v29 = 0;
    }

    v34 = v29;
    v35 = v30;
    v31 = __swift_project_boxed_opaque_existential_0(&v34, a5);
    v33 = *v31;
    v32 = v31[1];
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v34);
    result = sub_1B0433338(v22, v15, a1, a2);
    v28 = result + 1;
    if (!__OFADD__(result, 1))
    {
LABEL_26:
      *(a4 + 8) = v28;
    }

    goto LABEL_30;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B0C72368(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  if (sub_1B0433338(a3[2], a3[3], a3[4], a3[5]) < v4)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v5 = a3[4];
  v6 = v5 + a3[2];
  if (v5)
  {
    v7 = v5 + a3[3];
    v8 = v5 + a3[2];
  }

  sub_1B0C16D90();
  sub_1B0E429B8();
  swift_beginAccess();
  v9 = a3[2];
  v10 = v9 + v4;
  if (__OFADD__(v9, v4))
  {
    __break(1u);
  }

  else
  {
    v11 = a3[3];
    if (v11 >= v10)
    {
      if (v10 >= v9)
      {
        v13 = a3[4];
        v12 = a3[5];
        result = swift_beginAccess();
        a3[2] = v10;
        a3[3] = v11;
        a3[4] = v13;
        a3[5] = v12;
        return result;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  result = sub_1B0E465B8();
  __break(1u);
  return result;
}

uint64_t sub_1B0C724CC(uint64_t a1, unint64_t a2, void (*a3)(char *, void *))
{
  v23[4] = *MEMORY[0x1E69E9840];
  v4 = HIBYTE(a2) & 0xF;
  v23[0] = a1;
  v23[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v23[2] = 0;
  v23[3] = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B0E44DB8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    while (1)
    {
      if (v7 == 2573 && v8 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
      {
        goto LABEL_28;
      }

      if ((v8 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v8) & 0xF;
      }

      else
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v10)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v15 = sub_1B0E44C18();
      }

      else
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v12 = v7;
        }

        else
        {
          v11 = ((v7 & 0x1000000000000000) != 0 ? (v8 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1B0E46368());
          v12 = *v11;
        }

        v13 = v12;
        v14 = (__clz(~v12) - 24) << 16;
        v15 = v13 < 0 ? v14 : 65541;
      }

      if (v15 >> 14 == 4 * v10)
      {
        v16 = sub_1B0C04CF0(v7, v8);
        if ((v16 & 0x100000000) != 0)
        {
          goto LABEL_38;
        }

        if ((v16 & 0xFFFFFF80) == 0)
        {
          break;
        }
      }

LABEL_6:
      v7 = sub_1B0E44DB8();
      v8 = v9;
      if (!v9)
      {
        goto LABEL_35;
      }
    }

    v17 = sub_1B0C04CF0(v7, v8);
    if ((v17 & 0x100000000) != 0)
    {
      goto LABEL_39;
    }

    if ((v17 & 0xFFFFFF00) != 0)
    {
      goto LABEL_37;
    }

LABEL_28:
    v18 = sub_1B0C704E4(v7, v8);

    if ((v18 & 0x100) == 0)
    {
      v19 = v18;
      if (v18 - 127 >= 0xFFFFFFA1)
      {
        if (v18 - 91 >= 0xFFFFFFE6)
        {
          v19 = v18 | 0x20;
        }

        v22 = v19;
        a3(&v22, v23);
      }
    }

    goto LABEL_6;
  }

LABEL_35:

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C72700(char a1, uint64_t (*a2)(char *, char *))
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = 13;
      v3 = &v8;
      v4 = &v8;
    }

    else
    {
      v9 = 10;
      v3 = &v9;
      v4 = &v9;
    }

    v5 = v3 + 1;
  }

  else
  {
    v4 = "\r\n";
    v5 = "";
  }

  result = a2(v4, v5);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C727A8(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0E44DB8();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    do
    {
      if ((v8 != 2573 || v9 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        if ((v9 & 0x2000000000000000) != 0)
        {
          v11 = HIBYTE(v9) & 0xF;
        }

        else
        {
          v11 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (!v11)
        {
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
          __break(1u);
        }

        if ((v9 & 0x1000000000000000) != 0)
        {
          v16 = sub_1B0E44C18();
        }

        else
        {
          if ((v9 & 0x2000000000000000) != 0)
          {
            v13 = v8;
          }

          else
          {
            if ((v8 & 0x1000000000000000) != 0)
            {
              v12 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v12 = sub_1B0E46368();
            }

            v13 = *v12;
          }

          v14 = v13;
          v15 = (__clz(~v13) - 24) << 16;
          if (v14 < 0)
          {
            v16 = v15;
          }

          else
          {
            v16 = 65541;
          }
        }

        if (v16 >> 14 != 4 * v11)
        {
          goto LABEL_3;
        }

        v17 = sub_1B0C04CF0(v8, v9);
        if ((v17 & 0x100000000) != 0)
        {
          goto LABEL_43;
        }

        if ((v17 & 0xFFFFFF80) != 0)
        {
LABEL_3:

          goto LABEL_4;
        }

        v18 = sub_1B0C04CF0(v8, v9);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_44;
        }

        if ((v18 & 0xFFFFFF00) != 0)
        {
          goto LABEL_40;
        }
      }

      v19 = sub_1B0C704E4(v8, v9);

      if ((v19 & 0x100) == 0 && v19 - 127 >= 0xFFFFFFA1)
      {
        if (v19 - 91 > 0xFFFFFFE5)
        {
          *a3 = v19 | 0x20;
          v20 = *a4 + 1;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_42;
          }
        }

        else
        {
          *a3 = v19;
          v20 = *a4 + 1;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_41;
          }
        }

        *a4 = v20;
      }

LABEL_4:
      v8 = sub_1B0E44DB8();
      v9 = v10;
    }

    while (v10);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B0C729F0(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  *a3 = 34;
  if (__OFADD__(*a4, 1))
  {
    goto LABEL_46;
  }

  ++*a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0E44DB8();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    do
    {
      if ((v8 != 2573 || v9 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        if ((v9 & 0x2000000000000000) != 0)
        {
          v11 = HIBYTE(v9) & 0xF;
        }

        else
        {
          v11 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (!v11)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
        }

        if ((v9 & 0x1000000000000000) != 0)
        {
          v16 = sub_1B0E44C18();
        }

        else
        {
          if ((v9 & 0x2000000000000000) != 0)
          {
            v13 = v8;
          }

          else
          {
            if ((v8 & 0x1000000000000000) != 0)
            {
              v12 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v12 = sub_1B0E46368();
            }

            v13 = *v12;
          }

          v14 = v13;
          v15 = (__clz(~v13) - 24) << 16;
          if (v14 < 0)
          {
            v16 = v15;
          }

          else
          {
            v16 = 65541;
          }
        }

        if (v16 >> 14 != 4 * v11)
        {
          goto LABEL_4;
        }

        v17 = sub_1B0C04CF0(v8, v9);
        if ((v17 & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        if ((v17 & 0xFFFFFF80) != 0)
        {
LABEL_4:

          goto LABEL_5;
        }

        v18 = sub_1B0C04CF0(v8, v9);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_49;
        }

        if ((v18 & 0xFFFFFF00) != 0)
        {
          goto LABEL_44;
        }
      }

      v19 = sub_1B0C704E4(v8, v9);

      if ((v19 & 0x100) == 0)
      {
        if (v19 == 92 || v19 == 34)
        {
          *a3 = 92;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_42;
          }

          ++*a4;
          *a3 = v19;
          v20 = *a4 + 1;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_43;
          }

          goto LABEL_36;
        }

        if (v19 - 127 >= 0xFFFFFFA1)
        {
          *a3 = v19;
          v20 = *a4 + 1;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_45;
          }

LABEL_36:
          *a4 = v20;
        }
      }

LABEL_5:
      v8 = sub_1B0E44DB8();
      v9 = v10;
    }

    while (v10);
  }

  *a3 = 34;
  if (__OFADD__(*a4, 1))
  {
    goto LABEL_47;
  }

  ++*a4;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C72C88(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (sub_1B0C7034C())
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = sub_1B0E44DB8();
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      do
      {
        if ((v10 != 2573 || v11 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
        {
          if ((v11 & 0x2000000000000000) != 0)
          {
            v13 = HIBYTE(v11) & 0xF;
          }

          else
          {
            v13 = v10 & 0xFFFFFFFFFFFFLL;
          }

          if (!v13)
          {
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
          }

          if ((v11 & 0x1000000000000000) != 0)
          {
            v18 = sub_1B0E44C18();
          }

          else
          {
            if ((v11 & 0x2000000000000000) != 0)
            {
              v15 = v10;
            }

            else
            {
              if ((v10 & 0x1000000000000000) != 0)
              {
                v14 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v14 = sub_1B0E46368();
              }

              v15 = *v14;
            }

            v16 = v15;
            v17 = (__clz(~v15) - 24) << 16;
            if (v16 < 0)
            {
              v18 = v17;
            }

            else
            {
              v18 = 65541;
            }
          }

          if (v18 >> 14 != 4 * v13)
          {
            goto LABEL_4;
          }

          v19 = sub_1B0C04CF0(v10, v11);
          if ((v19 & 0x100000000) != 0)
          {
            goto LABEL_41;
          }

          if ((v19 & 0xFFFFFF80) != 0)
          {
LABEL_4:

            goto LABEL_5;
          }

          v20 = sub_1B0C04CF0(v10, v11);
          if ((v20 & 0x100000000) != 0)
          {
            goto LABEL_42;
          }

          if ((v20 & 0xFFFFFF00) != 0)
          {
            goto LABEL_40;
          }
        }

        v21 = sub_1B0C704E4(v10, v11);

        if ((v21 & 0x100) == 0)
        {
          *a3 = v21;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_39;
          }

          ++*a4;
        }

LABEL_5:
        v10 = sub_1B0E44DB8();
        v11 = v12;
      }

      while (v12);
    }

    v24 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v22 = *MEMORY[0x1E69E9840];

    return sub_1B0C729F0(a1, a2, a3, a4);
  }
}

uint64_t sub_1B0C72EFC(uint64_t a1, unint64_t a2, void (*a3)(char *, char *))
{
  v24[4] = *MEMORY[0x1E69E9840];
  LOBYTE(v24[0]) = 34;
  a3(v24, v24 + 1);
  v6 = HIBYTE(a2) & 0xF;
  v24[0] = a1;
  v24[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v24[2] = 0;
  v24[3] = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0E44DB8();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      if ((v9 != 2573 || v10 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1B0E44C18();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            if ((v9 & 0x1000000000000000) != 0)
            {
              v13 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v13 = sub_1B0E46368();
            }

            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          if (v15 < 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 65541;
          }
        }

        if (v17 >> 14 != 4 * v12)
        {
          goto LABEL_5;
        }

        v18 = sub_1B0C04CF0(v9, v10);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_40;
        }

        if ((v18 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v19 = sub_1B0C04CF0(v9, v10);
        if ((v19 & 0x100000000) != 0)
        {
          goto LABEL_41;
        }

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_39;
        }
      }

      v20 = sub_1B0C704E4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        if (v20 == 92 || v20 == 34)
        {
          v23 = 92;
          a3(&v23, v24);
          v23 = v20;
        }

        else
        {
          if (v20 - 127 < 0xFFFFFFA1)
          {
            goto LABEL_6;
          }

          v23 = v20;
        }

        a3(&v23, v24);
      }

LABEL_6:
      v9 = sub_1B0E44DB8();
      v10 = v11;
    }

    while (v11);
  }

  LOBYTE(v24[0]) = 34;
  result = (a3)(v24, v24 + 1);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C731A0(uint64_t a1, unint64_t a2, void (*a3)(char *, char *))
{
  v25[4] = *MEMORY[0x1E69E9840];
  if (sub_1B0C7034C())
  {
    v6 = HIBYTE(a2) & 0xF;
    v25[0] = a1;
    v25[1] = a2;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v25[2] = 0;
    v25[3] = v6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = sub_1B0E44DB8();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      while (1)
      {
        if (v9 == 2573 && v10 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
        {
          goto LABEL_29;
        }

        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1B0E44C18();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            v13 = ((v9 & 0x1000000000000000) != 0 ? (v10 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1B0E46368());
            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          v17 = v15 < 0 ? v16 : 65541;
        }

        if (v17 >> 14 == 4 * v12)
        {
          v18 = sub_1B0C04CF0(v9, v10);
          if ((v18 & 0x100000000) != 0)
          {
            goto LABEL_39;
          }

          if ((v18 & 0xFFFFFF80) == 0)
          {
            break;
          }
        }

LABEL_7:
        v9 = sub_1B0E44DB8();
        v10 = v11;
        if (!v11)
        {
          goto LABEL_36;
        }
      }

      v19 = sub_1B0C04CF0(v9, v10);
      if ((v19 & 0x100000000) != 0)
      {
        goto LABEL_40;
      }

      if ((v19 & 0xFFFFFF00) != 0)
      {
        goto LABEL_38;
      }

LABEL_29:
      v20 = sub_1B0C704E4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        v24 = v20;
        a3(&v24, v25);
      }

      goto LABEL_7;
    }

LABEL_36:

    v23 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v21 = *MEMORY[0x1E69E9840];

    return sub_1B0C72EFC(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1B0C73418(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, char a10)
{
  v32 = a5;
  v33 = a2;
  v31 = a1;
  *&v37[23] = *MEMORY[0x1E69E9840];
  v14 = a3 + (a4 & 1);
  if (__OFADD__(a3, a4 & 1))
  {
    __break(1u);
  }

  else
  {
    if (v14 < 0)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v10 = a8;
    v12 = a7;
    v11 = a6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isStackAllocationSafe = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v14 < 1025)
    {
LABEL_4:
      v34 = v12;
      v35 = a9;
      v30[1] = v30;
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v17 = v30 - v16;
      v18 = v30 + v14 - v16;
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = v14;
      v19[4] = v17;
      v19[5] = v18;
      if (a4)
      {
        sub_1B0C72368(" ", "", v19);
      }

      sub_1B0C724CC(v11, v34, sub_1B0C76E5C);
      v36 = 61;
      sub_1B0C72368(&v36, v37, v19);
      sub_1B0C731A0(v10, v35, sub_1B0C76E5C);
      if ((a10 & 1) == 0)
      {
        v36 = 59;
        sub_1B0C72368(&v36, v37, v19);
      }

      swift_beginAccess();
      v20 = v19[2];
      v21 = v32;
      v22 = *(v32 + 8);
      if (v22 >= 1)
      {
        if (__OFADD__(v22, v20))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (v22 + v20 >= 79)
        {
          v14 = v31;
          sub_1B0C72700(*v32, v31);
          (v14)("\t", "");
          if (a4)
          {
            if (v20 < 1)
            {
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
            }

            v23 = 1;
            goto LABEL_21;
          }

LABEL_19:
          if (v20 < 0)
          {
            goto LABEL_34;
          }

          v23 = 0;
LABEL_21:
          (v14)(&v17[v23], &v17[v20]);
          v25 = sub_1B0433338(v23, v20, v17, v18);

          v24 = v25 + 1;
          if (!__OFADD__(v25, 1))
          {
LABEL_22:
            *(v21 + 8) = v24;

            v27 = *MEMORY[0x1E69E9840];
            return result;
          }

          goto LABEL_32;
        }
      }

      if (v20 < 0)
      {
        __break(1u);
      }

      else
      {
        v31(v17, &v17[v20]);

        if (v14 >= v20)
        {
          v24 = v22 + v20;
          if (!__OFADD__(v22, v20))
          {
            goto LABEL_22;
          }

          __break(1u);
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_4;
  }

  v28 = swift_slowAlloc();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C7084C(v28, v28 + v14, a4 & 1, v32, v31, v33, v11, v12, v10, a9, a10 & 1);
  MEMORY[0x1B272C230](v28, -1, -1);

  v29 = *MEMORY[0x1E69E9840];
}