uint64_t sub_2144C7CE8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v143 = a3;
  v147 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  v5 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v167 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v149 = *(v148 - 8);
  v7 = *(v149 + 64);
  MEMORY[0x28223BE20](v148);
  v9 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v133 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v133 - v22;
  v24 = sub_2146D8E18();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = type metadata accessor for SecureCloudInviteRequestProtobuf(0);
  v27 = *(*(v26 - 1) + 64);
  MEMORY[0x28223BE20](v26);
  *&v160 = a1;
  *(&v160 + 1) = a2;
  v166 = 0;
  v164 = 0u;
  v165 = 0u;
  v29 = a1;
  v30 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21402D9F8(v29, a2);
  sub_2146D8E08();
  sub_2144D6800(&qword_27C9138D0, type metadata accessor for SecureCloudInviteRequestProtobuf);
  v31 = v150;
  result = sub_2146D8FD8();
  if (!v31)
  {
    v135 = v14;
    v136 = v9;
    v144 = v21;
    v145 = v23;
    v150 = 0;
    v33 = v26[6];
    v34 = &v30[v26[5]];
    v138 = *v34;
    v137 = v34[8];
    v35 = *&v30[v33 + 8];
    v139 = *&v30[v33];
    v36 = v26[8];
    v37 = &v30[v26[7]];
    v38 = *(v37 + 1);
    v134 = *v37;
    v39 = *&v30[v36 + 8];
    v133 = *&v30[v36];
    v40 = v26[9];
    sub_213FB2E54(&v30[v40], v16, &qword_27C913940, &unk_214740F40);
    v41 = *(v149 + 48);
    v149 += 48;
    v42 = v41(v16, 1, v148);
    v141 = v39;

    v142 = v35;

    v140 = v38;

    sub_213FB2DF4(v16, &qword_27C913940, &unk_214740F40);
    if (v42 == 1)
    {
      v43 = v167;
      v44 = v30;
      v45 = v145;
      v46 = v144;
      v47 = 1;
    }

    else
    {
      v48 = v135;
      sub_213FB2E54(&v30[v40], v135, &qword_27C913940, &unk_214740F40);
      v44 = v30;
      if (v41(v48, 1, v148) == 1)
      {
        v49 = v136;
        sub_2146D8DE8();
        v50 = v148;
        *(v49 + *(v148 + 20)) = xmmword_2146E68C0;
        *(v49 + v50[6]) = xmmword_2146E68C0;
        *(v49 + v50[7]) = xmmword_2146E68C0;
        v51 = (v49 + v50[8]);
        *v51 = 0;
        v51[1] = 0;
        v52 = (v41)(v48, 1) == 1;
        v43 = v167;
        v53 = v48;
        v45 = v145;
        v46 = v144;
        if (!v52)
        {
          sub_213FB2DF4(v53, &qword_27C913940, &unk_214740F40);
        }
      }

      else
      {
        v49 = v136;
        sub_2144D66AC(v48, v136, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
        v43 = v167;
        v45 = v145;
        v46 = v144;
      }

      v54 = v150;
      sub_2144CB11C(v49, v45);
      v47 = v54;
      sub_2144D6848(v49, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
      v150 = v54;
      if (v54)
      {

        return sub_2144D6848(v44, type metadata accessor for SecureCloudInviteRequestProtobuf);
      }
    }

    v55 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
    (*(*(v55 - 8) + 56))(v45, v47, 1, v55);
    v56 = v26[10];
    v149 = v44;
    v57 = v44 + v56;
    LODWORD(v136) = *v57;
    v146 = *(v57 + 4);
    sub_213FB2E54(v45, v46, &qword_27C909DB8, &qword_2146F5AF0);
    sub_213FB2E54(v46, &v43[*(v147 + 32)], &qword_27C909DB8, &qword_2146F5AF0);
    sub_2145ED9D0(&v164);
    v59 = *(&v165 + 1);
    v58 = v165;
    v60 = v166;
    sub_2145EDA04(&v160);
    v61 = v161;
    v62 = v162;
    v63 = v163;
    sub_2145EDA38(&v156);
    v64 = v157;
    v65 = v158;
    v66 = v159;
    sub_2145EDA74(&v151);
    v67 = v152;
    v68 = v153;
    v69 = v154;
    v70 = v155;
    *v167 = v138;
    v167[8] = v137;
    *(v167 + 1) = v164;
    *(v167 + 4) = v58;
    v71 = v167;
    *(v167 + 5) = v59;
    *(v71 + 48) = v60;
    *(v71 + 56) = v160;
    *(v71 + 72) = v61;
    *(v71 + 80) = v62;
    *(v71 + 88) = v63;
    *(v71 + 96) = v156;
    *(v71 + 112) = v64;
    *(v71 + 120) = v65;
    *(v71 + 128) = v66;
    v72 = v71 + *(v147 + 36);
    *v72 = v151;
    *(v72 + 20) = v68;
    *(v72 + 16) = v67;
    *(v72 + 21) = v69;
    *(v72 + 22) = v70;
    v74 = *(v71 + 16);
    v73 = *(v71 + 24);
    v75 = *(v71 + 32);
    v76 = *(v71 + 40);
    v77 = *(v71 + 48);
    *&v160 = v139;
    *(&v160 + 1) = v142;
    LODWORD(v148) = v77;
    LOBYTE(v156) = v77;
    *&v164 = 0xD000000000000044;
    *(&v164 + 1) = 0x8000000214790EF0;
    *&v165 = 0xD00000000000001CLL;
    *(&v165 + 1) = 0x800000021478A360;

    sub_213FDC9D0(v75, v76);
    v78 = v150;
    v79 = v74(&v160, &v156, &v164);
    if (v78)
    {
      v150 = v78;
    }

    else
    {
      v147 = v72;
      if (v79)
      {
        v150 = 0;
        sub_213FDC6D0(v75, v76);

        v80 = *(v71 + 24);
        v81 = *(v71 + 32);
        v82 = *(v71 + 40);

        sub_213FDC6D0(v81, v82);
        *(v71 + 16) = v74;
        *(v71 + 24) = v73;
        v83 = v142;
        *(v71 + 32) = v139;
        *(v71 + 40) = v83;
        *(v71 + 48) = v148;
        v85 = *(v71 + 56);
        v84 = *(v71 + 64);
        v86 = *(v71 + 72);
        v87 = *(v71 + 80);
        v88 = *(v71 + 88);
        v89 = v140;
        *&v160 = v134;
        *(&v160 + 1) = v140;
        LODWORD(v148) = v88;
        LOBYTE(v156) = v88;
        *&v164 = 0xD000000000000040;
        *(&v164 + 1) = 0x8000000214790F40;
        *&v165 = 0xD00000000000001CLL;
        *(&v165 + 1) = 0x800000021478A360;

        sub_213FDC9D0(v86, v87);
        v90 = v150;
        v91 = v85(&v160, &v156, &v164);
        if (v90)
        {
          v150 = v90;
        }

        else
        {
          if (v91)
          {
            sub_213FDC6D0(v86, v87);

            v97 = *(v71 + 64);
            v98 = *(v71 + 72);
            v99 = *(v71 + 80);

            sub_213FDC6D0(v98, v99);
            *(v71 + 56) = v85;
            *(v71 + 64) = v84;
            *(v71 + 72) = v134;
            *(v71 + 80) = v89;
            *(v71 + 88) = v148;
            v101 = *(v71 + 96);
            v100 = *(v71 + 104);
            v102 = *(v71 + 112);
            v103 = *(v71 + 120);
            v104 = *(v71 + 128);
            *&v160 = v133;
            *(&v160 + 1) = v141;
            LODWORD(v148) = v104;
            LOBYTE(v156) = v104;
            *&v164 = 0xD000000000000041;
            *(&v164 + 1) = 0x8000000214790F90;
            *&v165 = 0xD00000000000001CLL;
            *(&v165 + 1) = 0x800000021478A360;

            sub_213FDC9D0(v102, v103);
            v105 = v101(&v160, &v156, &v164);
            if (v105)
            {
              sub_213FDC6D0(v102, v103);

              v111 = *(v71 + 104);
              v112 = *(v71 + 112);
              v113 = *(v71 + 120);

              sub_213FDC6D0(v112, v113);
              *(v71 + 96) = v101;
              *(v71 + 104) = v100;
              v114 = v141;
              *(v71 + 112) = v133;
              *(v71 + 120) = v114;
              *(v71 + 128) = v148;
              v115 = v147;
              v117 = *v147;
              v116 = *(v147 + 8);
              v142 = *(v147 + 20);
              v141 = *(v147 + 16);
              LODWORD(v148) = *(v147 + 21);
              v118 = *(v147 + 22);
              v119 = v136;
              LODWORD(v160) = v136;
              BYTE4(v160) = v146;
              LOBYTE(v156) = v118;
              *&v164 = 0xD00000000000003DLL;
              *(&v164 + 1) = 0x8000000214790FE0;
              *&v165 = 0xD00000000000001CLL;
              *(&v165 + 1) = 0x800000021478A360;

              v120 = v117(&v160, &v156, &v164);
              if (v120)
              {

                sub_213FB2DF4(v144, &qword_27C909DB8, &qword_2146F5AF0);
                sub_213FB2DF4(v145, &qword_27C909DB8, &qword_2146F5AF0);
                v126 = v71;
                v127 = v146 != 0;
                v128 = *(v115 + 8);

                *v115 = v117;
                *(v115 + 8) = v116;
                *(v115 + 20) = v127;
                *(v115 + 16) = v119;
                *(v115 + 21) = 0;
                *(v115 + 22) = v118;
                sub_2144D66AC(v126, v143, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
                return sub_2144D6848(v149, type metadata accessor for SecureCloudInviteRequestProtobuf);
              }

              sub_214031C4C();
              v129 = swift_allocError();
              *v130 = 0xD00000000000003DLL;
              v130[1] = 0x8000000214790FE0;
              v130[2] = 0xD00000000000001CLL;
              v130[3] = 0x800000021478A360;
              v150 = v129;
              swift_willThrow();
              sub_213FB2DF4(v144, &qword_27C909DB8, &qword_2146F5AF0);
              sub_213FB2DF4(v145, &qword_27C909DB8, &qword_2146F5AF0);
              v131 = v141 | (v142 << 32);
              v132 = *(v115 + 8);

              *v115 = v117;
              *(v115 + 8) = v116;
              *(v115 + 20) = BYTE4(v131);
              *(v115 + 16) = v131;
              *(v115 + 21) = v148;
              *(v115 + 22) = v118;
              v71 = v167;
            }

            else
            {
              sub_214031C4C();
              v121 = swift_allocError();
              *v122 = 0xD000000000000041;
              v122[1] = 0x8000000214790F90;
              v122[2] = 0xD00000000000001CLL;
              v122[3] = 0x800000021478A360;
              v150 = v121;
              swift_willThrow();

              sub_213FB2DF4(v144, &qword_27C909DB8, &qword_2146F5AF0);
              sub_213FB2DF4(v145, &qword_27C909DB8, &qword_2146F5AF0);
              v123 = *(v71 + 104);
              v124 = *(v71 + 112);
              v125 = *(v71 + 120);

              sub_213FDC6D0(v124, v125);
              *(v71 + 96) = v101;
              *(v71 + 104) = v100;
              *(v71 + 112) = v102;
              *(v71 + 120) = v103;
              *(v71 + 128) = v148;
            }

            goto LABEL_17;
          }

          sub_214031C4C();
          v106 = swift_allocError();
          *v107 = 0xD000000000000040;
          v107[1] = 0x8000000214790F40;
          v107[2] = 0xD00000000000001CLL;
          v107[3] = 0x800000021478A360;
          v150 = v106;
          swift_willThrow();
        }

        sub_213FB2DF4(v144, &qword_27C909DB8, &qword_2146F5AF0);
        sub_213FB2DF4(v145, &qword_27C909DB8, &qword_2146F5AF0);
        v108 = *(v71 + 64);
        v109 = *(v71 + 72);
        v110 = *(v71 + 80);

        sub_213FDC6D0(v109, v110);
        *(v71 + 56) = v85;
        *(v71 + 64) = v84;
        *(v71 + 72) = v86;
        *(v71 + 80) = v87;
        *(v71 + 88) = v148;
LABEL_17:
        v44 = v149;
        sub_2144D6848(v71, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
        return sub_2144D6848(v44, type metadata accessor for SecureCloudInviteRequestProtobuf);
      }

      sub_214031C4C();
      v92 = swift_allocError();
      *v93 = 0xD000000000000044;
      v93[1] = 0x8000000214790EF0;
      v93[2] = 0xD00000000000001CLL;
      v93[3] = 0x800000021478A360;
      v150 = v92;
      swift_willThrow();
    }

    sub_213FB2DF4(v144, &qword_27C909DB8, &qword_2146F5AF0);
    sub_213FB2DF4(v145, &qword_27C909DB8, &qword_2146F5AF0);
    v94 = *(v71 + 24);
    v95 = *(v71 + 32);
    v96 = *(v71 + 40);

    sub_213FDC6D0(v95, v96);
    *(v71 + 16) = v74;
    *(v71 + 24) = v73;
    *(v71 + 32) = v75;
    *(v71 + 40) = v76;
    *(v71 + 48) = v148;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_2144C8CB8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v167 = a3;
  v171 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
  v5 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v172 = (&v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v173 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v174 = *(v173 - 8);
  v7 = *(v174 + 64);
  MEMORY[0x28223BE20](v173);
  v169 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v158 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v158 - v21;
  v23 = sub_2146D8E18();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = type metadata accessor for SecureCloudInviteResponseProtobuf(0);
  v26 = *(*(v25 - 1) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v184 = a1;
  *(&v184 + 1) = a2;
  v190 = 0;
  v188 = 0u;
  v189 = 0u;
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_2144D6800(&qword_27C9138B0, type metadata accessor for SecureCloudInviteResponseProtobuf);
  v29 = v191;
  result = sub_2146D8FD8();
  if (!v29)
  {
    v161 = v13;
    v166 = v20;
    v168 = v22;
    v191 = 0;
    v31 = v25[6];
    v32 = &v28[v25[5]];
    v163 = *v32;
    v162 = v32[8];
    v33 = *&v28[v31 + 8];
    *&v164 = *&v28[v31];
    v34 = &v28[v25[7]];
    v35 = *(v34 + 1);
    v158 = *v34;
    v36 = v25[10];
    sub_213FB2E54(&v28[v36], v15, &qword_27C913940, &unk_214740F40);
    v37 = *(v174 + 48);
    v174 += 48;
    v160 = v37;
    v38 = (v37)(v15, 1, v173);
    v165 = v35;

    *(&v164 + 1) = v33;

    sub_213FB2DF4(v15, &qword_27C913940, &unk_214740F40);
    if (v38 == 1)
    {
      v39 = v172;
      v40 = v168;
      v41 = 1;
    }

    else
    {
      v42 = v161;
      sub_213FB2E54(&v28[v36], v161, &qword_27C913940, &unk_214740F40);
      v43 = v160;
      if ((v160)(v42, 1, v173) == 1)
      {
        v44 = v169;
        sub_2146D8DE8();
        v45 = v173;
        *(v44 + *(v173 + 20)) = xmmword_2146E68C0;
        *(v44 + v45[6]) = xmmword_2146E68C0;
        *(v44 + v45[7]) = xmmword_2146E68C0;
        v46 = (v44 + v45[8]);
        *v46 = 0;
        v46[1] = 0;
        v47 = v43(v42, 1);
        v39 = v172;
        v40 = v168;
        if (v47 != 1)
        {
          sub_213FB2DF4(v42, &qword_27C913940, &unk_214740F40);
        }
      }

      else
      {
        v44 = v169;
        sub_2144D66AC(v42, v169, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
        v39 = v172;
        v40 = v168;
      }

      v48 = v191;
      sub_2144CB11C(v44, v40);
      v41 = v48;
      sub_2144D6848(v44, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
      v191 = v48;
      if (v48)
      {

        return sub_2144D6848(v28, type metadata accessor for SecureCloudInviteResponseProtobuf);
      }
    }

    v49 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
    (*(*(v49 - 8) + 56))(v40, v41, 1, v49);
    v50 = &v28[v25[11]];
    v51 = *v50;
    LODWORD(v160) = v50[4];
    v52 = &v28[v25[9]];
    v53 = v52[9];
    v159 = v28;
    LODWORD(v161) = v51;
    if ((v53 & 1) != 0 || (v52[8] & 1) == 0)
    {
      v169 = 0;
      v174 = 0;
      LODWORD(v54) = 5;
    }

    else
    {
      v54 = *v52;
      if (v54 <= 1)
      {
        if (!v54)
        {
          v102 = &v28[v25[8]];
          v103 = v102[1];
          if (v103)
          {
            v169 = *v102;
            v174 = v103;

            LODWORD(v173) = 0;
          }

          else
          {
            LODWORD(v173) = 0;
            v169 = 0;
            v174 = 0;
          }

LABEL_18:
          v55 = v166;
          v56 = v171;
          sub_213FB2E54(v40, v166, &qword_27C909DB8, &qword_2146F5AF0);
          sub_213FB2E54(v55, v39 + *(v56 + 36), &qword_27C909DB8, &qword_2146F5AF0);
          sub_2145EDC40(&v188);
          v170 = *(&v189 + 1);
          v171 = v189;
          v57 = v190;
          sub_2145EDC74(&v184);
          v58 = v185;
          v59 = v186;
          v60 = v187;
          sub_2145EDCA8(&v180);
          v61 = v56;
          v62 = v181;
          v63 = v182;
          v64 = v183;
          sub_2145EDCE4(&v175);
          v65 = v176;
          v66 = v177;
          v67 = v178;
          v68 = v179;
          *v39 = v163;
          *(v39 + 8) = v162;
          *(v39 + 1) = v188;
          v69 = v170;
          v39[4] = v171;
          v39[5] = v69;
          *(v39 + 48) = v57;
          *(v39 + 7) = v184;
          v39[9] = v58;
          v39[10] = v59;
          *(v39 + 88) = v60;
          *(v39 + 6) = v180;
          v39[14] = v62;
          v39[15] = v63;
          *(v39 + 128) = v64;
          *(v39 + 129) = v173;
          v70 = v39 + *(v61 + 40);
          *v70 = v175;
          v70[20] = v66;
          *(v70 + 4) = v65;
          v70[21] = v67;
          v70[22] = v68;
          v72 = v39[2];
          v71 = v39[3];
          v74 = v39[4];
          v73 = v39[5];
          v75 = *(v39 + 48);
          v76 = v164;
          v184 = v164;
          LODWORD(v173) = v75;
          LOBYTE(v180) = v75;
          *&v188 = 0xD000000000000045;
          *(&v188 + 1) = 0x8000000214791020;
          *&v189 = 0xD00000000000001CLL;
          *(&v189 + 1) = 0x800000021478A360;

          sub_213FDC9D0(v74, v73);
          v77 = v191;
          v78 = v72(&v184, &v180, &v188);
          if (v77)
          {
            v191 = v77;
          }

          else
          {
            v170 = v70;
            v171 = 0x800000021478A360;
            if (v78)
            {
              v191 = 0;
              sub_213FDC6D0(v74, v73);
              v79 = v171;

              v80 = v172;
              v81 = v172[3];
              v82 = v172[4];
              v83 = v172[5];

              sub_213FDC6D0(v82, v83);
              v80[2] = v72;
              v80[3] = v71;
              *(v80 + 2) = v76;
              v84 = v79;
              *(v80 + 48) = v173;
              v86 = v80[7];
              v85 = v80[8];
              v87 = v80[9];
              v88 = v80[10];
              v89 = v80;
              v90 = *(v80 + 88);
              v91 = v165;
              *&v184 = v158;
              *(&v184 + 1) = v165;
              LOBYTE(v180) = v90;
              *&v188 = 0xD000000000000041;
              *(&v188 + 1) = 0x8000000214791070;
              *&v189 = 0xD00000000000001CLL;
              *(&v189 + 1) = v84;

              sub_213FDC9D0(v87, v88);
              v92 = v191;
              v93 = v86(&v184, &v180, &v188);
              if (v92)
              {
                v191 = v92;
              }

              else
              {
                v104 = v91;
                v105 = v174;
                if (v93)
                {
                  v191 = 0;
                  sub_213FDC6D0(v87, v88);
                  v106 = v171;

                  v107 = v105;
                  v108 = v89[8];
                  v109 = v89[9];
                  v110 = v89[10];

                  sub_213FDC6D0(v109, v110);
                  v89[7] = v86;
                  v89[8] = v85;
                  v89[9] = v158;
                  v89[10] = v104;
                  *(v89 + 88) = v90;
                  v111 = v89;
                  v112 = v89[12];
                  v113 = v111[13];
                  v114 = v111[14];
                  v115 = v111[15];
                  v116 = *(v111 + 128);
                  v117 = v169;
                  *&v184 = v169;
                  *(&v184 + 1) = v107;
                  LOBYTE(v180) = v116;
                  *&v188 = 0xD000000000000042;
                  *(&v188 + 1) = 0x80000002147910C0;
                  *&v189 = 0xD00000000000001CLL;
                  *(&v189 + 1) = v106;

                  sub_213FDC9D0(v114, v115);
                  v118 = v191;
                  v119 = v112(&v184, &v180, &v188);
                  if (v118)
                  {
                    v191 = v118;
                  }

                  else
                  {
                    if (v119)
                    {
                      v127 = v116;
                      v128 = v107;
                      v191 = 0;
                      sub_213FDC6D0(v114, v115);
                      v129 = v171;

                      v130 = v172;
                      v131 = v172[13];
                      v132 = v172[14];
                      v133 = v172[15];

                      sub_213FDC6D0(v132, v133);
                      v130[12] = v112;
                      v130[13] = v113;
                      v130[14] = v117;
                      v130[15] = v128;
                      *(v130 + 128) = v127;
                      v135 = *v170;
                      v134 = *(v170 + 1);
                      v174 = v170[20];
                      v136 = *(v170 + 4);
                      v137 = v170[21];
                      v138 = v170[22];
                      v139 = v161;
                      LODWORD(v184) = v161;
                      v140 = v160;
                      BYTE4(v184) = v160;
                      LOBYTE(v180) = v138;
                      *&v188 = 0xD00000000000003ELL;
                      *(&v188 + 1) = 0x8000000214791110;
                      *&v189 = 0xD00000000000001CLL;
                      *(&v189 + 1) = v129;

                      v141 = v191;
                      v142 = v135(&v184, &v180, &v188);
                      if (v141)
                      {
                        v191 = v141;
                        sub_213FB2DF4(v166, &qword_27C909DB8, &qword_2146F5AF0);
                        sub_213FB2DF4(v168, &qword_27C909DB8, &qword_2146F5AF0);
                      }

                      else
                      {
                        if (v142)
                        {

                          sub_213FB2DF4(v166, &qword_27C909DB8, &qword_2146F5AF0);
                          sub_213FB2DF4(v168, &qword_27C909DB8, &qword_2146F5AF0);
                          v150 = v170;
                          v151 = *(v170 + 1);

                          *v150 = v135;
                          *(v150 + 1) = v134;
                          v150[20] = v140 != 0;
                          *(v150 + 4) = v139;
                          v150[21] = 0;
                          v150[22] = v138;
                          sub_2144D66AC(v172, v167, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
                          return sub_2144D6848(v159, type metadata accessor for SecureCloudInviteResponseProtobuf);
                        }

                        sub_214031C4C();
                        v152 = swift_allocError();
                        *v153 = 0xD00000000000003ELL;
                        v153[1] = 0x8000000214791110;
                        v154 = v171;
                        v153[2] = 0xD00000000000001CLL;
                        v153[3] = v154;
                        v191 = v152;
                        swift_willThrow();
                        sub_213FB2DF4(v166, &qword_27C909DB8, &qword_2146F5AF0);
                        sub_213FB2DF4(v168, &qword_27C909DB8, &qword_2146F5AF0);
                      }

                      v155 = v170;
                      v156 = v136 | (v174 << 32);
                      v157 = *(v170 + 1);

                      *v155 = v135;
                      *(v155 + 1) = v134;
                      v155[20] = BYTE4(v156);
                      *(v155 + 4) = v156;
                      v155[21] = v137;
                      v155[22] = v138;
                      v101 = v172;
                      goto LABEL_25;
                    }

                    sub_214031C4C();
                    v143 = swift_allocError();
                    *v144 = 0xD000000000000042;
                    v144[1] = 0x80000002147910C0;
                    v145 = v171;
                    v144[2] = 0xD00000000000001CLL;
                    v144[3] = v145;
                    v191 = v143;
                    swift_willThrow();
                  }

                  sub_213FB2DF4(v166, &qword_27C909DB8, &qword_2146F5AF0);
                  sub_213FB2DF4(v168, &qword_27C909DB8, &qword_2146F5AF0);
                  v146 = v172;
                  v147 = v172[13];
                  v148 = v172[14];
                  v149 = v172[15];

                  sub_213FDC6D0(v148, v149);
                  v146[12] = v112;
                  v146[13] = v113;
                  v101 = v146;
                  v146[14] = v114;
                  v146[15] = v115;
                  *(v146 + 128) = v116;
LABEL_25:
                  v28 = v159;
                  sub_2144D6848(v101, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
                  return sub_2144D6848(v28, type metadata accessor for SecureCloudInviteResponseProtobuf);
                }

                sub_214031C4C();
                v120 = swift_allocError();
                *v121 = 0xD000000000000041;
                v121[1] = 0x8000000214791070;
                v122 = v171;
                v121[2] = 0xD00000000000001CLL;
                v121[3] = v122;
                v191 = v120;
                swift_willThrow();
              }

              v123 = v168;
              sub_213FB2DF4(v166, &qword_27C909DB8, &qword_2146F5AF0);
              sub_213FB2DF4(v123, &qword_27C909DB8, &qword_2146F5AF0);
              v124 = v80[8];
              v125 = v80[9];
              v126 = v80[10];

              sub_213FDC6D0(v125, v126);
              v101 = v89;
              v89[7] = v86;
              v89[8] = v85;
              v89[9] = v87;
              v89[10] = v88;
              *(v89 + 88) = v90;
              goto LABEL_25;
            }

            sub_214031C4C();
            v94 = swift_allocError();
            *v95 = 0xD000000000000045;
            v95[1] = 0x8000000214791020;
            v96 = v171;
            v95[2] = 0xD00000000000001CLL;
            v95[3] = v96;
            v191 = v94;
            swift_willThrow();
          }

          sub_213FB2DF4(v166, &qword_27C909DB8, &qword_2146F5AF0);
          sub_213FB2DF4(v168, &qword_27C909DB8, &qword_2146F5AF0);
          v97 = v172;
          v98 = v172[3];
          v99 = v172[4];
          v100 = v172[5];

          sub_213FDC6D0(v99, v100);
          v97[2] = v72;
          v97[3] = v71;
          v101 = v97;
          v97[4] = v74;
          v97[5] = v73;
          *(v97 + 48) = v173;
          goto LABEL_25;
        }

        v169 = 0;
        v174 = 0;
        LODWORD(v54) = 2;
      }

      else if (v54 == 2)
      {
        v169 = 0;
        v174 = 0;
        LODWORD(v54) = 1;
      }

      else
      {
        v169 = 0;
        v174 = 0;
        if (v54 != 3)
        {
          LODWORD(v54) = 4;
        }
      }
    }

    LODWORD(v173) = v54;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_2144C9D58@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2146D8E18();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for SecureCloudWithdrawRequestProtobuf(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = a2;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_2144D6800(&qword_27C913818, type metadata accessor for SecureCloudWithdrawRequestProtobuf);
  result = sub_2146D8FD8();
  if (!v3)
  {
    v14 = *(v9 + 24);
    v15 = &v12[*(v9 + 20)];
    v16 = *v15;
    v17 = v15[8];
    v18 = *&v12[v14];
    v19 = *&v12[v14 + 8];

    sub_21420E7FC(v16, v17, v18, v19, a3);
    return sub_2144D6848(v12, type metadata accessor for SecureCloudWithdrawRequestProtobuf);
  }

  return result;
}

uint64_t sub_2144C9F20@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2146D8E18();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for SecureCloudPingRequestProtobuf(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v20 = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_2144D6800(&qword_27C913878, type metadata accessor for SecureCloudPingRequestProtobuf);
  result = sub_2146D8FD8();
  if (!v3)
  {
    v14 = &v12[*(v9 + 20)];
    v15 = *v14;
    v16 = v14[1];

    sub_21420D2E0(v15, v16, a3);
    return sub_2144D6848(v12, type metadata accessor for SecureCloudPingRequestProtobuf);
  }

  return result;
}

uint64_t sub_2144CA0D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v161 = a3;
  v5 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v144 - v14;
  v16 = sub_2146D8E18();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = type metadata accessor for SecureCloudUpgradeMessageProtobuf(0);
  v19 = *(*(v18 - 1) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v172 = a1;
  *(&v172 + 1) = a2;
  v178 = 0;
  v176 = 0u;
  v177 = 0u;
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_2144D6800(&qword_27C913838, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
  v22 = v179;
  result = sub_2146D8FD8();
  if (!v22)
  {
    v24 = v15;
    v160 = v8;
    v158 = v5;
    v159 = v13;
    v179 = 0;
    v25 = &v21[v18[5]];
    v26 = *v25;
    v27 = *(v25 + 1);
    v28 = &v21[v18[6]];
    v157 = *v28;
    LODWORD(v156) = v28[8];
    v29 = &v21[v18[8]];
    v31 = *v29;
    v30 = *(v29 + 1);
    v32 = &v21[v18[9]];
    v33 = v32[1];
    v148 = v31;
    if (v33 >> 60 == 15)
    {
      v34 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
      (*(*(v34 - 8) + 56))(v15, 1, 1, v34);
    }

    else
    {
      v35 = *v32;

      sub_213FDCA18(v35, v33);
      v36 = v179;
      sub_2144CB6C4(v24);
      v179 = v36;
      if (v36)
      {
        sub_2144D6848(v21, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
        sub_213FB54FC(v35, v33);
      }

      sub_213FB54FC(v35, v33);
    }

    v37 = &v21[v18[7]];
    v38 = *(v37 + 1);
    v39 = &v21[v18[11]];
    v40 = &v21[v18[10]];
    v41 = v40[9];
    v154 = v21;
    v153 = v30;
    v155 = v27;
    v152 = v26;
    if (v41)
    {
      LODWORD(v151) = 2;
      v42 = v158;
    }

    else
    {
      v42 = v158;
      if (v40[8])
      {
        v43 = *v40 != 0;
      }

      else
      {
        v43 = 2;
      }

      LODWORD(v151) = v43;
    }

    v146 = v39[4];
    v147 = *v37;
    v145 = *v39;
    v158 = v24;
    v44 = v159;
    sub_213FB2E54(v24, v159, &qword_27C909E38, &qword_2146F5B20);
    v45 = v160;
    sub_213FB2E54(v44, v160 + v42[8], &qword_27C909E38, &qword_2146F5B20);

    sub_2145EE218(&v176);
    v149 = *(&v177 + 1);
    v150 = v177;
    v162 = v38;
    v46 = v178;
    sub_2145EE398(&v172);
    v47 = v173;
    v48 = v174;
    v49 = v175;
    sub_2145EE3CC(&v168);
    v50 = v169;
    v51 = v170;
    v52 = v171;
    sub_2145EE400(&v163);
    v53 = v164;
    v54 = v165;
    v55 = v166;
    v56 = v167;
    *v45 = v176;
    v57 = v149;
    v45[2] = v150;
    v45[3] = v57;
    *(v45 + 32) = v46;
    v45[5] = v157;
    *(v45 + 48) = v156;
    *(v45 + 7) = v172;
    v45[9] = v47;
    v45[10] = v48;
    *(v45 + 88) = v49;
    *(v45 + 89) = v151;
    v58 = v45 + v42[9];
    *v58 = v168;
    *(v58 + 2) = v50;
    *(v58 + 3) = v51;
    v58[32] = v52;
    v59 = v45;
    v60 = v45 + v42[10];
    *v60 = v163;
    v60[20] = v54;
    *(v60 + 4) = v53;
    v60[21] = v55;
    v60[22] = v56;
    v62 = *v45;
    v61 = v45[1];
    v64 = v45[2];
    v63 = v45[3];
    v65 = *(v59 + 32);
    v66 = v152;
    *&v172 = v152;
    *(&v172 + 1) = v155;
    LODWORD(v156) = v65;
    LOBYTE(v168) = v65;
    *&v176 = 0xD000000000000042;
    *(&v176 + 1) = 0x80000002147911A0;
    *&v177 = 0xD00000000000001CLL;
    *(&v177 + 1) = 0x800000021478A360;

    v151 = v64;
    v150 = v63;
    sub_213FDC9D0(v64, v63);
    v67 = v179;
    v157 = v62;
    v68 = v62(&v172, &v168, &v176);
    if (v67)
    {
      v179 = v67;

      v69 = v159;
LABEL_19:

      sub_213FB2DF4(v69, &qword_27C909E38, &qword_2146F5B20);
      sub_213FB2DF4(v158, &qword_27C909E38, &qword_2146F5B20);
      v88 = v160;
      v89 = v160[1];
      v90 = v160[2];
      v91 = v160[3];

      sub_213FDC6D0(v90, v91);
      *v88 = v157;
      v88[1] = v61;
      v92 = v150;
      v88[2] = v151;
      v88[3] = v92;
      *(v88 + 32) = v156;
LABEL_20:
      v93 = v154;
LABEL_21:
      sub_2144D6848(v88, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
      return sub_2144D6848(v93, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
    }

    v144 = v60;
    v149 = 0x800000021478A360;
    v69 = v159;
    if ((v68 & 1) == 0)
    {
      sub_214031C4C();
      v85 = swift_allocError();
      *v86 = 0xD000000000000042;
      v86[1] = 0x80000002147911A0;
      v87 = v149;
      v86[2] = 0xD00000000000001CLL;
      v86[3] = v87;
      v179 = v85;
      swift_willThrow();

      goto LABEL_19;
    }

    v70 = v66;
    v179 = 0;
    sub_213FDC6D0(v151, v150);
    v71 = v149;

    v72 = v160;
    v73 = v160[1];
    v74 = v160[2];
    v75 = v160[3];

    sub_213FDC6D0(v74, v75);
    *v72 = v157;
    v72[1] = v61;
    v76 = v155;
    v72[2] = v70;
    v72[3] = v76;
    *(v72 + 32) = v156;
    v78 = v72[7];
    v77 = v72[8];
    v80 = v72[9];
    v79 = v72[10];
    LODWORD(v76) = *(v72 + 88);
    v81 = v148;
    v82 = v153;
    *&v172 = v148;
    *(&v172 + 1) = v153;
    LODWORD(v156) = v76;
    LOBYTE(v168) = v76;
    *&v176 = 0xD000000000000041;
    *(&v176 + 1) = 0x80000002147911F0;
    *&v177 = 0xD00000000000001CLL;
    *(&v177 + 1) = v71;

    v155 = v80;
    sub_213FDC9D0(v80, v79);
    v83 = v179;
    v157 = v78;
    v84 = v78(&v172, &v168, &v176);
    if (v83)
    {
      v179 = v83;

LABEL_27:

      sub_213FB2DF4(v159, &qword_27C909E38, &qword_2146F5B20);
      sub_213FB2DF4(v158, &qword_27C909E38, &qword_2146F5B20);
      v88 = v160;
      v114 = v160[8];
      v115 = v160[9];
      v116 = v160[10];

      sub_213FDC6D0(v115, v116);
      v88[7] = v157;
      v88[8] = v77;
      v88[9] = v155;
      v88[10] = v79;
      *(v88 + 88) = v156;
      goto LABEL_20;
    }

    if ((v84 & 1) == 0)
    {
      sub_214031C4C();
      v111 = swift_allocError();
      *v112 = 0xD000000000000041;
      v112[1] = 0x80000002147911F0;
      v113 = v149;
      v112[2] = 0xD00000000000001CLL;
      v112[3] = v113;
      v179 = v111;
      swift_willThrow();

      goto LABEL_27;
    }

    v94 = v81;
    v95 = v82;
    v179 = 0;
    sub_213FDC6D0(v155, v79);
    v96 = v149;

    v97 = v160;
    v98 = v160[8];
    v99 = v160[9];
    v100 = v160[10];

    sub_213FDC6D0(v99, v100);
    v97[7] = v157;
    v97[8] = v77;
    v97[9] = v94;
    v97[10] = v95;
    *(v97 + 88) = v156;
    v101 = v58;
    v103 = *v58;
    v102 = *(v58 + 1);
    v104 = *(v58 + 2);
    v105 = *(v58 + 3);
    v106 = v58[32];
    v107 = v147;
    *&v172 = v147;
    *(&v172 + 1) = v162;
    LODWORD(v157) = v106;
    LOBYTE(v168) = v106;
    *&v176 = 0xD000000000000043;
    *(&v176 + 1) = 0x8000000214791240;
    *&v177 = 0xD00000000000001CLL;
    *(&v177 + 1) = v96;

    sub_213FDC9D0(v104, v105);
    v108 = v179;
    v109 = v103(&v172, &v168, &v176);
    if (v108)
    {
      v110 = v103;
      v179 = v108;
    }

    else
    {
      if (v109)
      {
        sub_213FDC6D0(v104, v105);
        v117 = v149;

        v118 = *(v101 + 1);
        v119 = *(v101 + 2);
        v120 = *(v101 + 3);

        sub_213FDC6D0(v119, v120);
        *v101 = v103;
        *(v101 + 1) = v102;
        v121 = v162;
        *(v101 + 2) = v107;
        *(v101 + 3) = v121;
        v101[32] = v157;
        v122 = v144;
        v124 = *v144;
        v123 = *(v144 + 1);
        v157 = v144[20];
        v156 = *(v144 + 4);
        v125 = v144[21];
        v126 = v144[22];
        v127 = v145;
        LODWORD(v172) = v145;
        BYTE4(v172) = v146;
        LODWORD(v162) = v126;
        LOBYTE(v168) = v126;
        *&v176 = 0xD00000000000003ELL;
        *(&v176 + 1) = 0x8000000214791290;
        *&v177 = 0xD00000000000001CLL;
        *(&v177 + 1) = v117;

        v128 = v124;
        v129 = v124(&v172, &v168, &v176);
        v130 = v159;
        if (v129)
        {

          sub_213FB2DF4(v130, &qword_27C909E38, &qword_2146F5B20);
          sub_213FB2DF4(v158, &qword_27C909E38, &qword_2146F5B20);
          v137 = v146 != 0;
          v138 = *(v122 + 1);

          *v122 = v128;
          *(v122 + 1) = v123;
          v122[20] = v137;
          *(v122 + 4) = v127;
          v122[21] = 0;
          v122[22] = v162;
          sub_2144D66AC(v160, v161, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
          return sub_2144D6848(v154, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
        }

        sub_214031C4C();
        v139 = swift_allocError();
        *v140 = 0xD00000000000003ELL;
        v140[1] = 0x8000000214791290;
        v141 = v149;
        v140[2] = 0xD00000000000001CLL;
        v140[3] = v141;
        v179 = v139;
        swift_willThrow();
        sub_213FB2DF4(v130, &qword_27C909E38, &qword_2146F5B20);
        sub_213FB2DF4(v158, &qword_27C909E38, &qword_2146F5B20);
        v142 = v156 | (v157 << 32);
        v143 = *(v122 + 1);

        *v122 = v128;
        *(v122 + 1) = v123;
        v122[20] = BYTE4(v142);
        *(v122 + 4) = v142;
        v122[21] = v125;
        v122[22] = v162;
        goto LABEL_32;
      }

      v110 = v103;
      sub_214031C4C();
      v131 = swift_allocError();
      *v132 = 0xD000000000000043;
      v132[1] = 0x8000000214791240;
      v133 = v149;
      v132[2] = 0xD00000000000001CLL;
      v132[3] = v133;
      v179 = v131;
      swift_willThrow();
    }

    sub_213FB2DF4(v159, &qword_27C909E38, &qword_2146F5B20);
    sub_213FB2DF4(v158, &qword_27C909E38, &qword_2146F5B20);
    v134 = *(v101 + 1);
    v135 = *(v101 + 2);
    v136 = *(v101 + 3);

    sub_213FDC6D0(v135, v136);
    *v101 = v110;
    *(v101 + 1) = v102;
    *(v101 + 2) = v104;
    *(v101 + 3) = v105;
    v101[32] = v157;
LABEL_32:
    v93 = v154;
    v88 = v160;
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_2144CAF50@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2146D8E18();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for SecureCloudPingResponseProtobuf(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = a2;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_2144D6800(&qword_27C913858, type metadata accessor for SecureCloudPingResponseProtobuf);
  result = sub_2146D8FD8();
  if (!v3)
  {
    v14 = *(v9 + 24);
    v15 = &v12[*(v9 + 20)];
    v16 = *v15;
    v17 = v15[1];
    v18 = *&v12[v14];
    v19 = *&v12[v14 + 8];

    sub_21420DAC8(v16, v17, v18, v19, a3);
    return sub_2144D6848(v12, type metadata accessor for SecureCloudPingResponseProtobuf);
  }

  return result;
}

uint64_t sub_2144CB11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v56 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - v9;
  v11 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v12 = (a1 + v11[5]);
  v13 = v12[1];
  v57 = v10;
  if (v13 >> 60 == 15)
  {
    sub_2144D6714(v64);
  }

  else
  {
    v14 = *v12;
    sub_213FDCA18(*v12, v13);
    sub_2144CBC44(v58);
    if (v2)
    {
      return sub_213FB54FC(v14, v13);
    }

    sub_213FB54FC(v14, v13);
    memcpy(v64, v58, 0x189uLL);
  }

  v16 = (a1 + v11[8]);
  v18 = *v16;
  v17 = v16[1];
  v19 = (a1 + v11[7]);
  v20 = v19[1];
  v54 = v18;
  if (v20 >> 60 == 15)
  {
    memset(v58, 0, 73);
    v55 = v17;
  }

  else
  {
    v21 = *v19;

    sub_213FDCA18(v21, v20);
    sub_2144CBFE8(&v59);
    if (v2)
    {
      sub_213FB2DF4(v64, &qword_27C909E50, &unk_2146F5B30);

      v22 = v21;
      return sub_213FB54FC(v22, v20);
    }

    v55 = v17;
    sub_213FB54FC(v21, v20);
    v58[2] = v61;
    v58[3] = v62[0];
    *(&v58[3] + 9) = *(v62 + 9);
    v58[0] = v59;
    v58[1] = v60;
  }

  v23 = a1 + v11[6];
  v20 = *(v23 + 8);
  v24 = v57;
  if (v20 >> 60 == 15)
  {
    v53 = v2;
    v25 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    goto LABEL_17;
  }

  v26 = *v23;
  sub_213FDCA18(*v23, *(v23 + 8));
  sub_2144CB6C4(v24);
  if (v2)
  {
    sub_213FB2DF4(v64, &qword_27C909E50, &unk_2146F5B30);
    sub_213FB2DF4(v58, &qword_27C909E68, &qword_214761070);

    v22 = v26;
    return sub_213FB54FC(v22, v20);
  }

  v53 = 0;
  sub_213FB54FC(v26, v20);
LABEL_17:
  v27 = v56;
  sub_213FB2E54(v24, v56, &qword_27C909E38, &qword_2146F5B20);
  v28 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
  sub_213FB2E54(v27, a2 + *(v28 + 28), &qword_27C909E38, &qword_2146F5B20);
  sub_2145EDEC8(&v59);
  v29 = v59;
  v30 = v60;
  v31 = v61;
  memcpy(a2, v64, 0x189uLL);
  *(a2 + 400) = v29;
  *(a2 + 416) = v30;
  *(a2 + 432) = v31;
  v50 = a2;
  v32 = v58[3];
  *(a2 + 472) = v58[2];
  *(a2 + 488) = v32;
  *(a2 + 497) = *(&v58[3] + 9);
  v33 = v58[1];
  *(a2 + 440) = v58[0];
  *(a2 + 456) = v33;
  v34 = v55;
  v63[0] = v54;
  v63[1] = v55;
  v65 = v31;
  v66 = v31;
  *&v59 = 0xD000000000000046;
  *(&v59 + 1) = 0x8000000214791150;
  *&v60 = 0xD00000000000001CLL;
  *(&v60 + 1) = 0x800000021478A360;

  v51 = v30;
  sub_213FDC9D0(v30, *(&v30 + 1));
  v35 = v53;
  v52 = *(&v29 + 1);
  v53 = v29;
  v36 = (v29)(v63, &v66, &v59);
  if (v35)
  {
  }

  else
  {
    v55 = v34;
    if (v36)
    {
      sub_213FDC6D0(v51, *(&v30 + 1));

      sub_213FB2DF4(v56, &qword_27C909E38, &qword_2146F5B20);
      sub_213FB2DF4(v57, &qword_27C909E38, &qword_2146F5B20);
      v37 = v50;
      v38 = v50[51];
      v39 = v50[52];
      v40 = v50[53];

      result = sub_213FDC6D0(v39, v40);
      v41 = v52;
      v37[50] = v53;
      v37[51] = v41;
      v42 = v55;
      v37[52] = v54;
      v37[53] = v42;
      *(v37 + 432) = v65;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD000000000000046;
    v43[1] = 0x8000000214791150;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();
  }

  v44 = v57;
  sub_213FB2DF4(v56, &qword_27C909E38, &qword_2146F5B20);
  sub_213FB2DF4(v44, &qword_27C909E38, &qword_2146F5B20);
  v45 = v50;
  v46 = v50[51];
  v47 = v50[52];
  v48 = v50[53];

  sub_213FDC6D0(v47, v48);
  v49 = v52;
  *(v45 + 400) = v53;
  *(v45 + 408) = v49;
  *(v45 + 416) = v51;
  *(v45 + 424) = *(&v30 + 1);
  *(v45 + 432) = v65;
  return sub_2144D6848(v45, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
}

uint64_t sub_2144CB6C4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v58 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v14 = objc_allocWithZone(_BlastDoorASCodableSecureCloudShareItem);
  v15 = sub_2146D8A38();
  v16 = [v14 initWithData_];

  if (!v16)
  {
    return (*(v4 + 56))(a1, 1, 1, v3);
  }

  v57 = v3;
  v55 = a1;
  if ([v16 hasZoneName])
  {
    v17 = [v16 zoneName];
    v18 = v4;
    if (v17)
    {
      v19 = v17;
      v56 = sub_2146D95B8();
      v21 = v20;
    }

    else
    {
      v56 = 0;
      v21 = 0;
    }
  }

  else
  {
    v56 = 0;
    v21 = 0;
    v18 = v4;
  }

  v23 = v13;
  v24 = [v16 hasShareURL];
  v25 = v59;
  if (v24 && (v26 = [v16 shareURL]) != 0)
  {
    v54 = v1;
    v27 = v21;
    v28 = v18;
    v29 = v23;
    v30 = v26;
    v31 = sub_2146D95B8();
    v33 = v32;

    v23 = v29;
    v18 = v28;
    v21 = v27;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  sub_2144CD980(v16, v23);
  if (v25)
  {
  }

  else
  {
    v52 = v18;
    v54 = v23;
    v34 = v33;
    v35 = v58;
    sub_213FB2E54(v23, v58, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2E54(v35, &v7[v57[6]], &qword_27C9041D8, &qword_2146ED5C0);
    sub_2145EF54C(&v61);
    v37 = v61;
    v36 = v62;
    v38 = v63;
    v39 = v64;
    v40 = v65;
    *v7 = v56;
    *(v7 + 1) = v21;
    *(v7 + 2) = v37;
    *(v7 + 3) = v36;
    *(v7 + 4) = v38;
    *(v7 + 5) = v39;
    v7[48] = v40;
    v51 = v31;
    v60[0] = v31;
    LODWORD(v59) = v40;
    v66 = v40;
    v60[1] = v34;
    v61 = 0xD00000000000003ALL;
    v62 = 0x8000000214791480;
    v63 = 0xD00000000000001CLL;
    v64 = 0x800000021478A360;

    v56 = v38;
    v53 = v39;
    sub_213FDC9D0(v38, v39);
    if ((v37)(v60, &v66, &v61))
    {
      sub_213FDC6D0(v56, v53);

      sub_213FB2DF4(v58, &qword_27C9041D8, &qword_2146ED5C0);
      sub_213FB2DF4(v54, &qword_27C9041D8, &qword_2146ED5C0);
      v41 = *(v7 + 3);
      v42 = *(v7 + 4);
      v43 = *(v7 + 5);

      sub_213FDC6D0(v42, v43);
      *(v7 + 2) = v37;
      *(v7 + 3) = v36;
      *(v7 + 4) = v51;
      *(v7 + 5) = v34;
      v7[48] = v59;
      v44 = v55;
      sub_2144D66AC(v7, v55, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
      return (*(v52 + 56))(v44, 0, 1, v57);
    }

    else
    {
      v57 = v37;
      sub_214031C4C();
      swift_allocError();
      *v45 = 0xD00000000000003ALL;
      v45[1] = 0x8000000214791480;
      v45[2] = 0xD00000000000001CLL;
      v45[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FB2DF4(v58, &qword_27C9041D8, &qword_2146ED5C0);
      sub_213FB2DF4(v54, &qword_27C9041D8, &qword_2146ED5C0);
      v46 = *(v7 + 3);
      v47 = *(v7 + 4);
      v48 = *(v7 + 5);

      sub_213FDC6D0(v47, v48);
      v49 = v56;
      *(v7 + 2) = v57;
      *(v7 + 3) = v36;
      v50 = v53;
      *(v7 + 4) = v49;
      *(v7 + 5) = v50;
      v7[48] = v59;
      return sub_2144D6848(v7, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
    }
  }
}

void sub_2144CBC44(void *a1@<X8>)
{
  v4 = objc_allocWithZone(_BlastDoorASCodableActivityDataPreview);
  v5 = sub_2146D8A38();
  v6 = [v4 initWithData_];

  if (!v6)
  {
    sub_2144D6714(v29);
LABEL_25:
    memcpy(a1, v29, 0x189uLL);
    return;
  }

  v7 = [v6 hasDate];
  v8 = 0;
  if (v7)
  {
    [v6 date];
    v8 = v9;
  }

  if (![v6 hasActivitySnapshot])
  {
    v12 = sub_2144D6754(v28);
LABEL_11:
    if ([v6 workoutsCount] >= 1 && (v13 = objc_msgSend(v6, sel_workouts)) != 0 && (v14 = v13, *&v29[0] = 0, sub_21404A8B8(0, &qword_27C9133E0, off_278175120), sub_2146D9908(), v14, (v16 = *&v29[0]) != 0))
    {
      MEMORY[0x28223BE20](v15);
      v26 = v1;
      v17 = sub_214538CE4(sub_2144D67C8, v25, v16);
      if (v2)
      {
LABEL_22:
        sub_213FB2DF4(v28, &qword_27C909F60, &qword_2146F5B98);

        return;
      }

      v18 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    if ([v6 achievementsCount] >= 1 && (v19 = objc_msgSend(v6, sel_achievements)) != 0 && (v20 = v19, *&v29[0] = 0, sub_21404A8B8(0, &qword_27C9133D8, off_2781750F0), sub_2146D9908(), v20, (v22 = *&v29[0]) != 0))
    {
      MEMORY[0x28223BE20](v21);
      v26 = v1;
      v23 = sub_214538E9C(sub_2144D6790, v25, v22);
      if (v2)
      {

        goto LABEL_22;
      }

      v24 = v23;
    }

    else
    {

      v24 = MEMORY[0x277D84F90];
    }

    memcpy(v29, v28, 0x169uLL);
    v27[0] = v7 ^ 1;
    *&v29[23] = v18;
    *(&v29[23] + 1) = v24;
    *&v29[24] = v8;
    BYTE8(v29[24]) = v7 ^ 1;
    nullsub_1(v29);
    goto LABEL_25;
  }

  v10 = [v6 activitySnapshot];
  if (v10)
  {
    v11 = v10;
    sub_2144CC16C(v10, v29);
    if (v2)
    {

      return;
    }

    memcpy(v27, v29, 0x169uLL);
    nullsub_1(v27);
    memcpy(v28, v27, 0x169uLL);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_2144CBFE8(_OWORD *a1@<X8>)
{
  v3 = objc_allocWithZone(_BlastDoorASCodableShareLocations);
  v4 = sub_2146D8A38();
  v5 = [v3 initWithData_];

  if (v5)
  {
    if ([v5 hasActivityShareURL] && (v6 = objc_msgSend(v5, sel_activityShareURL)) != 0)
    {
      v7 = v6;
      v8 = sub_2146D95B8();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    if ([v5 hasRelationshipShareURL] && (v11 = objc_msgSend(v5, sel_relationshipShareURL)) != 0)
    {
      v12 = v11;
      v13 = sub_2146D95B8();
      v15 = v14;

      v16 = v15;
      v17 = v13;
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    sub_21420FA38(v8, v10, v17, v16, v20);

    if (!v1)
    {
      v18 = v21[0];
      a1[2] = v20[2];
      a1[3] = v18;
      *(a1 + 57) = *(v21 + 9);
      v19 = v20[1];
      *a1 = v20[0];
      a1[1] = v19;
    }
  }

  else
  {
    *(a1 + 57) = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }
}

void sub_2144CC16C(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (![a1 hasSample])
  {
    v209 = 0;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
LABEL_6:
    if ([a1 hasSourceUUID] && (v7 = objc_msgSend(a1, sel_sourceUUID)) != 0)
    {
      v8 = v7;
      v90 = sub_2146D8A58();
      v10 = v9;
    }

    else
    {
      v90 = 0;
      v10 = 0xF000000000000000;
    }

    v72 = [a1 hasSnapshotIndex];
    if (v72)
    {
      v11 = [a1 snapshotIndex];
    }

    else
    {
      v11 = 0;
    }

    v211 = [a1 hasTimeZoneOffsetFromUTCForNoon];
    if (v211)
    {
      v86 = [a1 timeZoneOffsetFromUTCForNoon];
    }

    else
    {
      v86 = 0;
    }

    v12 = [a1 hasEnergyBurned];
    v13 = 0;
    v14 = 0;
    v210 = v12;
    if (v12)
    {
      [a1 energyBurned];
    }

    v85 = v14;
    v101 = [a1 hasEnergyBurnedGoal];
    if (v101)
    {
      [a1 energyBurnedGoal];
      v13 = v15;
    }

    v74 = v11;
    v16 = 0;
    v17 = 0;
    v99 = [a1 hasBriskMinutes];
    if (v99)
    {
      [a1 briskMinutes];
      v17 = v18;
    }

    v19 = [a1 hasBriskMinutesGoal];
    if (v19)
    {
      [a1 briskMinutesGoal];
      v16 = v20;
    }

    v21 = [a1 hasActiveHours];
    v22 = 0;
    v23 = 0;
    if (v21)
    {
      [a1 activeHours];
      v23 = v24;
    }

    v25 = [a1 hasActiveHoursGoal];
    if (v25)
    {
      [a1 activeHoursGoal];
      v22 = v26;
    }

    v91 = v10;
    v27 = [a1 hasWalkingAndRunningDistance];
    v28 = 0;
    v29 = 0;
    if (v27)
    {
      [a1 walkingAndRunningDistance];
      v29 = v30;
    }

    v87 = v13;
    v71 = a2;
    v31 = [a1 hasStepCount];
    if (v31)
    {
      [a1 stepCount];
      v28 = v32;
    }

    v33 = [a1 hasPushCount];
    v34 = 0;
    if (v33)
    {
      [a1 pushCount];
      v34 = v35;
    }

    v36 = [a1 hasWheelchairUse];
    v84 = v16;
    if (v36)
    {
      v83 = [a1 wheelchairUse];
    }

    else
    {
      v83 = 0;
    }

    v37 = [a1 hasMmv];
    v38 = 0;
    v39 = 0;
    if (v37)
    {
      [a1 mmv];
      v39 = v40;
    }

    v92 = v211 ^ 1;
    v93 = v210 ^ 1;
    v94 = v101 ^ 1;
    v95 = v99 ^ 1;
    v96 = v21 ^ 1;
    v97 = v25 ^ 1;
    v98 = v27 ^ 1;
    v100 = v31 ^ 1;
    v102 = v33 ^ 1;
    v211 = v36 ^ 1;
    v41 = v37 ^ 1;
    v42 = [a1 hasMmg];
    if (v42)
    {
      [a1 mmg];
      v38 = v43;
    }

    v210 = v42 ^ 1;
    v44 = [a1 hasAmm];
    if (v44)
    {
      v82 = [a1 amm];
    }

    else
    {
      v82 = 0;
    }

    sub_213FB2E54(&v205, &v103, &qword_27C90A020, &qword_2146F5BE0);
    sub_2145EF844(&v103);
    v45 = v103;
    v46 = v104;
    v47 = v105;
    sub_2145EF9AC(&v162);
    v79 = v163;
    v80 = v162;
    v76 = v164;
    v75 = v165;
    v78 = v167;
    v202 = v207;
    v203 = v208;
    LOBYTE(v204) = v209;
    v200 = v205;
    v201 = v206;
    v182 = v166;
    v181 = v92;
    v180 = v93;
    v179 = v94;
    v178 = v95;
    v177 = v19 ^ 1;
    v176 = v21 ^ 1;
    v175 = v97;
    v174 = v98;
    v173 = v31 ^ 1;
    v172 = v33 ^ 1;
    v171 = v211;
    v170 = v41;
    v169 = v210;
    v81 = v44 ^ 1;
    v168 = v44 ^ 1;
    v77 = v166;
    v198 = v166;
    v103 = v45;
    v104 = v46;
    LOBYTE(v105) = v47;

    sub_21404F7E0(v46, *(&v46 + 1));
    sub_214032118(v90, v91, 2, 0xD000000000000047, 0x80000002147914C0, 0xD00000000000001CLL, 0x800000021478A360);
    if (v2)
    {
      sub_213FB2DF4(&v205, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FDC6BC(v90, v91);

      v88 = v103;
      v48 = *(&v104 + 1);
      v49 = v104;
      v50 = v105;

      sub_214032564(v46, *(&v46 + 1));
      v51 = v88;
      v52 = v41;
      v53 = v77;
      v54 = v78;
      v56 = v79;
      v55 = v80;
    }

    else
    {
      v57 = v72 ^ 1;

      v89 = v103;
      v73 = *(&v104 + 1);
      v49 = v104;
      v70 = v105;

      sub_214032564(v46, *(&v46 + 1));
      v162 = v74;
      LOBYTE(v163) = v57;
      v54 = v78;
      v182 = v78;
      *&v103 = 0xD00000000000004ALL;
      *(&v103 + 1) = 0x8000000214791510;
      *&v104 = 0xD00000000000001CLL;
      *(&v104 + 1) = 0x800000021478A360;
      v56 = v79;

      v55 = v80;
      if (v80(&v162, &v182, &v103))
      {
        sub_213FB2DF4(&v205, &qword_27C90A020, &qword_2146F5BE0);
        sub_213FDC6BC(v90, v91);

        v198 = 0;
        v58 = v203;
        *(v71 + 32) = v202;
        *(v71 + 48) = v58;
        *(v71 + 64) = v204;
        v59 = v201;
        *v71 = v200;
        *(v71 + 16) = v59;
        *(v71 + 72) = v89;
        *(v71 + 88) = v49;
        *(v71 + 96) = v73;
        *(v71 + 104) = v70;
        *(v71 + 105) = *v199;
        *(v71 + 108) = *&v199[3];
        *(v71 + 112) = v80;
        *(v71 + 120) = v79;
        *(v71 + 128) = v74;
        *(v71 + 136) = 0;
        *(v71 + 138) = v78;
        *(v71 + 139) = v196;
        *(v71 + 143) = v197;
        *(v71 + 144) = v86;
        *(v71 + 152) = v92;
        *(v71 + 153) = v195[0];
        *(v71 + 156) = *(v195 + 3);
        *(v71 + 160) = v85;
        *(v71 + 168) = v93;
        *(v71 + 172) = *(v194 + 3);
        *(v71 + 169) = v194[0];
        *(v71 + 176) = v87;
        *(v71 + 184) = v94;
        *(v71 + 188) = *(v193 + 3);
        *(v71 + 185) = v193[0];
        *(v71 + 192) = v17;
        *(v71 + 200) = v95;
        *(v71 + 204) = *(v192 + 3);
        *(v71 + 201) = v192[0];
        *(v71 + 208) = v84;
        *(v71 + 216) = v19 ^ 1;
        v60 = v191[0];
        *(v71 + 220) = *(v191 + 3);
        *(v71 + 217) = v60;
        *(v71 + 224) = v23;
        *(v71 + 232) = v96;
        v61 = v190[0];
        *(v71 + 236) = *(v190 + 3);
        *(v71 + 233) = v61;
        *(v71 + 240) = v22;
        *(v71 + 248) = v97;
        v62 = v189[0];
        *(v71 + 252) = *(v189 + 3);
        *(v71 + 249) = v62;
        *(v71 + 256) = v29;
        *(v71 + 264) = v98;
        v63 = v188[0];
        *(v71 + 268) = *(v188 + 3);
        *(v71 + 265) = v63;
        *(v71 + 272) = v28;
        *(v71 + 280) = v100;
        v64 = v187[0];
        *(v71 + 284) = *(v187 + 3);
        *(v71 + 281) = v64;
        *(v71 + 288) = v34;
        *(v71 + 296) = v102;
        v65 = v186[0];
        *(v71 + 300) = *(v186 + 3);
        *(v71 + 297) = v65;
        *(v71 + 304) = v83;
        *(v71 + 312) = v211;
        v66 = v185[0];
        *(v71 + 316) = *(v185 + 3);
        *(v71 + 313) = v66;
        *(v71 + 320) = v39;
        *(v71 + 328) = v41;
        v67 = v184[0];
        *(v71 + 332) = *(v184 + 3);
        *(v71 + 329) = v67;
        *(v71 + 336) = v38;
        *(v71 + 344) = v210;
        v68 = v183[0];
        *(v71 + 348) = *(v183 + 3);
        *(v71 + 345) = v68;
        *(v71 + 352) = v82;
        *(v71 + 360) = v81;
        return;
      }

      sub_214031C4C();
      swift_allocError();
      *v69 = 0xD00000000000004ALL;
      v69[1] = 0x8000000214791510;
      v69[2] = 0xD00000000000001CLL;
      v69[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FB2DF4(&v205, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FDC6BC(v90, v91);

      v50 = v70;

      v53 = v77;
      v198 = v77;
      v52 = v41;
      v51 = v89;
      v48 = v73;
    }

    v105 = v202;
    v106 = v203;
    v107 = v204;
    v103 = v200;
    v104 = v201;
    v108 = v51;
    v109 = v49;
    v110 = v48;
    v111 = v50;
    *v112 = *v199;
    *&v112[3] = *&v199[3];
    v113 = v55;
    v114 = v56;
    v115 = v76;
    v116 = v75;
    v117 = v53;
    v118 = v54;
    v120 = v197;
    v119 = v196;
    v121 = v86;
    v122 = v92;
    *&v123[3] = *(v195 + 3);
    *v123 = v195[0];
    v124 = v85;
    v125 = v93;
    *&v126[3] = *(v194 + 3);
    *v126 = v194[0];
    v127 = v87;
    v128 = v94;
    *&v129[3] = *(v193 + 3);
    *v129 = v193[0];
    v130 = v17;
    v131 = v95;
    *&v132[3] = *(v192 + 3);
    *v132 = v192[0];
    v133 = v84;
    v134 = v19 ^ 1;
    *&v135[3] = *(v191 + 3);
    *v135 = v191[0];
    v136 = v23;
    v137 = v96;
    *&v138[3] = *(v190 + 3);
    *v138 = v190[0];
    v139 = v22;
    v140 = v97;
    *&v141[3] = *(v189 + 3);
    *v141 = v189[0];
    v142 = v29;
    v143 = v98;
    *v144 = v188[0];
    *&v144[3] = *(v188 + 3);
    v145 = v28;
    v146 = v100;
    *v147 = v187[0];
    *&v147[3] = *(v187 + 3);
    v148 = v34;
    v149 = v102;
    *v150 = v186[0];
    *&v150[3] = *(v186 + 3);
    v151 = v83;
    v152 = v211;
    *v153 = v185[0];
    *&v153[3] = *(v185 + 3);
    v154 = v39;
    v155 = v52;
    *v156 = v184[0];
    *&v156[3] = *(v184 + 3);
    v157 = v38;
    v158 = v210;
    *v159 = v183[0];
    *&v159[3] = *(v183 + 3);
    v160 = v82;
    v161 = v81;
    sub_21430B3E4(&v103);
    return;
  }

  v5 = [a1 sample];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  sub_2144CE058(v5, &v103);

  if (!v2)
  {
    v207 = v105;
    v208 = v106;
    v209 = v107;
    v205 = v103;
    v206 = v104;
    goto LABEL_6;
  }
}

void sub_2144CCE00(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 hasSample])
  {
    v5 = [a1 sample];
    if (!v5)
    {
      __break(1u);
      goto LABEL_61;
    }

    v6 = v5;
    sub_2144CE058(v5, &v79);

    if (v2)
    {
      return;
    }

    v152 = v81;
    v153 = v82;
    v154 = v83;
    v150 = v79;
    v151 = v80;
  }

  else
  {
    v154 = 0;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
  }

  v7 = [a1 hasType];
  if (v7)
  {
    v8 = [a1 type];
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  v10 = 0;
  v70 = [a1 hasDuration];
  if (v70)
  {
    [a1 duration];
    v10 = v11;
  }

  v69 = [a1 hasTotalEnergyBurnedInCanonicalUnit];
  if (v69)
  {
    [a1 totalEnergyBurnedInCanonicalUnit];
    v9 = v12;
  }

  v13 = 0;
  v14 = 0;
  v65 = [a1 hasTotalBasalEnergyBurnedInCanonicalUnit];
  if (v65)
  {
    [a1 totalBasalEnergyBurnedInCanonicalUnit];
    v14 = v15;
  }

  v62 = [a1 hasTotalDistanceInCanonicalUnit];
  if (v62)
  {
    [a1 totalDistanceInCanonicalUnit];
    v13 = v16;
  }

  v58 = [a1 hasGoalType];
  v78 = v8;
  if (v58)
  {
    v17 = [a1 goalType];
  }

  else
  {
    v17 = 0;
  }

  v18 = [a1 hasGoalInCanonicalUnit];
  v19 = 0;
  if (v18)
  {
    [a1 goalInCanonicalUnit];
    v19 = v20;
  }

  if ([a1 hasBundleID] && (v21 = objc_msgSend(a1, sel_bundleID)) != 0)
  {
    v22 = v21;
    v23 = sub_2146D95B8();
    v75 = v24;
    v76 = v23;
  }

  else
  {
    v75 = 0;
    v76 = 0;
  }

  if ([a1 hasIsWatchWorkout])
  {
    v74 = [a1 isWatchWorkout];
  }

  else
  {
    v74 = 2;
  }

  if ([a1 hasIsIndoorWorkout])
  {
    v73 = [a1 isIndoorWorkout];
  }

  else
  {
    v73 = 2;
  }

  if ([a1 hasDeviceManufacturer] && (v25 = objc_msgSend(a1, sel_deviceManufacturer)) != 0)
  {
    v26 = v25;
    v27 = sub_2146D95B8();
    v71 = v28;
    v72 = v27;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  if ([a1 hasDeviceModel] && (v29 = objc_msgSend(a1, sel_deviceModel)) != 0)
  {
    v30 = v29;
    v31 = sub_2146D95B8();
    v67 = v32;
    v68 = v31;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v33 = [a1 hasAmm];
  if (v33)
  {
    v64 = [a1 amm];
  }

  else
  {
    v64 = 0;
  }

  if ([a1 hasSeymourCatalogWorkoutIdentifier] && (v34 = objc_msgSend(a1, sel_seymourCatalogWorkoutIdentifier)) != 0)
  {
    v35 = v34;
    v36 = sub_2146D95B8();
    v60 = v37;
    v61 = v36;
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  v54 = a2;
  v77 = v17;
  if ([a1 hasSeymourMediaType])
  {
    v38 = [a1 seymourMediaType];
    if (v38)
    {
      v39 = v38;
      sub_2146D95B8();

      v40 = sub_2146DA098();

      v41 = 4;
      if (v40 < 4)
      {
        v41 = v40;
      }

      v57 = v41;
      goto LABEL_53;
    }

LABEL_61:
    __break(1u);
    return;
  }

  v57 = 4;
LABEL_53:
  v42 = v58 ^ 1;
  v43 = v18 ^ 1;
  sub_213FB2E54(&v150, &v79, &qword_27C90A020, &qword_2146F5BE0);
  sub_2145EFD30(&v79);
  v44 = *(&v79 + 1);
  v56 = v80;
  v55 = BYTE8(v80);
  v147 = v152;
  v148 = v153;
  LOBYTE(v149) = v154;
  v145 = v150;
  v146 = v151;
  v133 = v69 ^ 1;
  v45 = BYTE10(v80);
  v59 = v65 ^ 1;
  v132 = v65 ^ 1;
  v46 = v79;
  v63 = v62 ^ 1;
  v131 = v63;
  v66 = v42;
  v130 = v42;
  v47 = v7 ^ 1;
  v48 = BYTE9(v80);
  v129 = v43;
  v128 = v33 ^ 1;
  v144 = BYTE9(v80);
  v126 = v78;
  v127 = v47;
  v134[0] = BYTE10(v80);
  *&v79 = 0xD000000000000038;
  *(&v79 + 1) = 0x8000000214791560;
  *&v80 = 0xD00000000000001CLL;
  *(&v80 + 1) = 0x800000021478A360;

  v49 = v46(&v126, v134, &v79);
  if (v2)
  {
    sub_213FB2DF4(&v150, &qword_27C90A020, &qword_2146F5BE0);
  }

  else
  {
    if (v49)
    {
      sub_213FB2DF4(&v150, &qword_27C90A020, &qword_2146F5BE0);

      v144 = 0;
      v50 = v148;
      *(v54 + 32) = v147;
      *(v54 + 48) = v50;
      v51 = v149;
      v52 = v146;
      *v54 = v145;
      *(v54 + 16) = v52;
      *(v54 + 64) = v51;
      *(v54 + 72) = v46;
      *(v54 + 80) = v44;
      *(v54 + 88) = v78;
      *(v54 + 96) = v47;
      *(v54 + 97) = 0;
      *(v54 + 98) = v45;
      *(v54 + 104) = v10;
      *(v54 + 112) = v70 ^ 1;
      *(v54 + 120) = v9;
      *(v54 + 128) = v69 ^ 1;
      *(v54 + 136) = v14;
      *(v54 + 144) = v59;
      *(v54 + 152) = v13;
      *(v54 + 160) = v63;
      *(v54 + 168) = v77;
      *(v54 + 176) = v66;
      *(v54 + 184) = v19;
      *(v54 + 192) = v43;
      *(v54 + 200) = v76;
      *(v54 + 208) = v75;
      *(v54 + 216) = v74;
      *(v54 + 217) = v73;
      *(v54 + 224) = v72;
      *(v54 + 232) = v71;
      *(v54 + 240) = v68;
      *(v54 + 248) = v67;
      *(v54 + 256) = v64;
      *(v54 + 264) = v33 ^ 1;
      *(v54 + 272) = v61;
      *(v54 + 280) = v60;
      *(v54 + 288) = v57;
      return;
    }

    sub_214031C4C();
    swift_allocError();
    *v53 = 0xD000000000000038;
    v53[1] = 0x8000000214791560;
    v53[2] = 0xD00000000000001CLL;
    v53[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(&v150, &qword_27C90A020, &qword_2146F5BE0);
  }

  v81 = v147;
  v82 = v148;
  v79 = v145;
  v80 = v146;
  v83 = v149;
  v84 = v46;
  v85 = v44;
  v86 = v56;
  v87 = v55;
  v88 = v48;
  v89 = v45;
  v91 = v143;
  v90 = v142[2];
  v92 = v10;
  v93 = v70 ^ 1;
  *&v94[3] = *(v142 + 3);
  *v94 = v142[0];
  v95 = v9;
  v96 = v69 ^ 1;
  *&v97[3] = *(v141 + 3);
  *v97 = v141[0];
  v98 = v14;
  v99 = v59;
  *&v100[3] = *(v140 + 3);
  *v100 = v140[0];
  v101 = v13;
  v102 = v63;
  *&v103[3] = *(v139 + 3);
  *v103 = v139[0];
  v104 = v77;
  v105 = v66;
  *&v106[3] = *(v138 + 3);
  *v106 = v138[0];
  v107 = v19;
  v108 = v43;
  *&v109[3] = *(v137 + 3);
  *v109 = v137[0];
  v110 = v76;
  v111 = v75;
  v112 = v74;
  v113 = v73;
  v115 = v136;
  v114 = v135[2];
  v116 = v72;
  v117 = v71;
  v118 = v68;
  v119 = v67;
  v120 = v64;
  v121 = v33 ^ 1;
  *v122 = v135[0];
  *&v122[3] = *(v135 + 3);
  v123 = v61;
  v124 = v60;
  v125 = v57;
  sub_21430B698(&v79);
}

void sub_2144CD6C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (![a1 hasSample])
  {
    v43 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    goto LABEL_6;
  }

  v5 = [a1 sample];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  sub_2144CE058(v5, v38);

  if (!v2)
  {
    v36 = v38[1];
    v37 = v38[0];
    v34 = v38[3];
    v35 = v38[2];
    v43 = v39;
LABEL_6:
    v7 = [a1 hasCompletedDate];
    v8 = 0;
    v9 = 0;
    if (v7)
    {
      [a1 completedDate];
      v9 = v10;
    }

    v11 = [a1 hasDoubleValue];
    if (v11)
    {
      [a1 doubleValue];
      v8 = v12;
    }

    v13 = [a1 hasIntValue];
    if (v13)
    {
      v33 = [a1 intValue];
    }

    else
    {
      v33 = 0;
    }

    v14 = [a1 hasWorkoutActivityType];
    if (v14)
    {
      v32 = [a1 workoutActivityType];
    }

    else
    {
      v32 = 0;
    }

    v15 = v7 ^ 1;
    v16 = v11 ^ 1;
    v17 = v13 ^ 1;
    v18 = v14 ^ 1;
    if ([a1 hasDefinitionIdentifier] && (v19 = objc_msgSend(a1, sel_definitionIdentifier)) != 0)
    {
      v20 = v19;
      v21 = sub_2146D95B8();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    if ([a1 hasTemplateUniqueName] && (v24 = objc_msgSend(a1, sel_templateUniqueName)) != 0)
    {
      v31 = v18;
      v25 = v23;
      v26 = v21;
      v27 = v24;
      v28 = sub_2146D95B8();
      v30 = v29;

      v21 = v26;
      v23 = v25;
      v18 = v31;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    LOBYTE(v38[0]) = v15;
    v42 = v16;
    v41 = v17;
    v40 = v18;
    *a2 = v37;
    *(a2 + 16) = v36;
    *(a2 + 32) = v35;
    *(a2 + 48) = v34;
    *(a2 + 64) = v43;
    *(a2 + 72) = v9;
    *(a2 + 80) = v15;
    *(a2 + 88) = v8;
    *(a2 + 96) = v16;
    *(a2 + 104) = v33;
    *(a2 + 112) = v17;
    *(a2 + 120) = v32;
    *(a2 + 128) = v18;
    *(a2 + 136) = v21;
    *(a2 + 144) = v23;
    *(a2 + 152) = v28;
    *(a2 + 160) = v30;
  }
}

void sub_2144CD980(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v54 - v7;
  if (![a1 hasInvitationToken] || (v9 = objc_msgSend(a1, sel_invitationToken)) == 0)
  {
    v30 = type metadata accessor for CloudKitSharingToken();
    (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
    return;
  }

  v10 = v9;
  v11 = sub_2146D8A58();
  v13 = v12;

  v14 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_21402D9F8(v11, v13);
  v15 = sub_21404A62C();
  if (!v2)
  {
    v31 = v15;
    v56 = v13;
    sub_213FB54FC(v11, v13);
    v32 = v31;
    [v32 _enableStrictSecureDecodingMode];
    [v32 setDecodingFailurePolicy_];
    v33 = sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35 = sub_2146D9588();
    [v32 setClass:ObjCClassFromMetadata forClassName:v35];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_2146EA710;
    *(v36 + 32) = v33;
    v37 = *MEMORY[0x277CCA308];
    sub_2146D95B8();
    sub_2146D9D08();
    v55 = v32;

    if (v59)
    {
      if (swift_dynamicCast())
      {
        v38 = v61;
        v39 = [a1 hasShareURL];
        v40 = v56;
        if (v39)
        {
          v41 = [a1 shareURL];
          if (!v41)
          {
            __break(1u);
            return;
          }

          v42 = v41;
          sub_2146D95B8();

          sub_2146D8928();

          v43 = sub_2146D8958();
          v44 = *(v43 - 8);
          v45 = 0;
          if ((*(v44 + 48))(v8, 1, v43) != 1)
          {
            v45 = sub_2146D8898();
            (*(v44 + 8))(v8, v43);
          }

          [v38 setShareURL_];

          v40 = v56;
        }

        sub_2145A8530(v38, a2);

        sub_213FB54FC(v11, v40);
        v46 = type metadata accessor for CloudKitSharingToken();
        (*(*(v46 - 8) + 56))(a2, 0, 1, v46);
        return;
      }
    }

    else
    {
      sub_213FB2DF4(&v57, &qword_27C913170, &qword_2146EAB20);
    }

    v50 = v56;
    v51 = sub_2146D9F58();
    swift_allocError();
    v53 = v52;
    sub_2146D9F28();
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84168], v51);
    swift_willThrow();

    sub_213FB54FC(v11, v50);
    return;
  }

  sub_213FB54FC(v11, v13);
  v61 = v2;
  v16 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
  sub_21404A8B8(0, &qword_27C9131B0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v17 = v60;
    v56 = 0x800000021478B060;
    sub_21404A6EC();
    swift_allocError();
    v19 = v18;
    v20 = v17;
    v21 = [v20 domain];
    v22 = v13;
    v23 = sub_2146D95B8();
    v25 = v24;

    v57 = 0xD000000000000014;
    v58 = 0x800000021478AAD0;
    MEMORY[0x2160545D0](v23, v25);

    v26 = v58;
    *v19 = v57;
    v19[1] = v26;
    v57 = [v20 code];
    v27 = sub_2146DA428();
    v29 = v28;

    v19[2] = v27;
    v19[3] = v29;
    v19[4] = 0xD00000000000001CLL;
    v19[5] = v56;
    swift_willThrow();
    sub_213FB54FC(v11, v22);
  }

  else
  {

    sub_21404A6EC();
    swift_allocError();
    v48 = v47;
    v49 = v2;
    sub_214689A34(v2, 0xD00000000000001CLL, 0x800000021478B060, v48);
    swift_willThrow();
    sub_213FB54FC(v11, v13);
  }
}

uint64_t sub_2144CE058@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 hasUuid] && (v3 = objc_msgSend(a1, sel_uuid)) != 0)
  {
    v4 = v3;
    v5 = sub_2146D8A58();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = [a1 hasStartDate];
  v9 = 0;
  v10 = 0;
  if (v8)
  {
    [a1 startDate];
    v10 = v11;
  }

  v35 = v8 ^ 1;
  v12 = [a1 hasEndDate];
  if (v12)
  {
    [a1 endDate];
    v9 = v13;
  }

  sub_2145EFF6C(&v23);
  v14 = v24;
  v15 = v25;
  v16 = v12 ^ 1;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;

  sub_21404F7E0(v14, v15);
  sub_214032118(v5, v7, 2, 0xD000000000000037, 0x80000002147915A0, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FDC6BC(v5, v7);

  v17 = v32;
  v18 = v33;
  v19 = v34;

  if (v22)
  {
    sub_214032564(v14, v15);
    v23 = v31;
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v27 = v10;
    v28 = v35;
    v29 = v9;
    v30 = v16;
    return sub_21430B9A0(&v23);
  }

  else
  {
    result = sub_214032564(v14, v15);
    *a2 = v31;
    *(a2 + 16) = v17;
    *(a2 + 24) = v18;
    *(a2 + 32) = v19;
    *(a2 + 40) = v10;
    *(a2 + 48) = v35;
    *(a2 + 56) = v9;
    *(a2 + 64) = v16;
  }

  return result;
}

uint64_t sub_2144CE2B4(uint64_t a1)
{
  v2 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v37 - v8;
  v9 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v42 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SecureCloudInviteRequestProtobuf(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D8DE8();
  v16 = &v15[v12[5]];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v15[v12[6]];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v15[v12[7]];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v15[v12[8]];
  *v19 = 0;
  v19[1] = 0;
  v20 = *(v3 + 56);
  v38 = v12[9];
  v39 = v20;
  v40 = v3 + 56;
  v41 = v2;
  v20(&v15[v38], 1, 1, v2);
  v21 = &v15[v12[10]];
  *v21 = 0;
  v21[4] = 1;
  if ((*(a1 + 8) & 1) == 0)
  {
    *v16 = *a1;
    v16[8] = 0;
  }

  v23 = *(a1 + 32);
  v22 = *(a1 + 40);
  if (v22)
  {
    if (v22 == 1)
    {
      goto LABEL_22;
    }

    *v17 = v23;
    v17[1] = v22;
  }

  v24 = *(a1 + 72);
  v25 = *(a1 + 80);
  if (v25)
  {
    if (v25 == 1)
    {
      goto LABEL_22;
    }

    *v18 = v24;
    v18[1] = v25;
  }

  v26 = *(a1 + 112);
  v27 = *(a1 + 120);
  if (v27)
  {
    if (v27 == 1)
    {
      goto LABEL_22;
    }

    *v19 = v26;
    v19[1] = v27;
  }

  v45 = v26;
  v46 = v24;
  v44 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  v28 = v49;
  sub_213FB2E54(a1 + *(v44 + 32), v49, &qword_27C909DB8, &qword_2146F5AF0);
  if ((*(v47 + 48))(v28, 1, v48) == 1)
  {
    sub_213FDC9D0(v23, v22);
    sub_213FDC9D0(v46, v25);
    sub_213FDC9D0(v45, v27);
    sub_213FB2DF4(v28, &qword_27C909DB8, &qword_2146F5AF0);
  }

  else
  {
    v48 = v21;
    v29 = v28;
    v30 = v42;
    sub_2144D66AC(v29, v42, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    sub_213FDC9D0(v23, v22);
    sub_213FDC9D0(v46, v25);
    sub_213FDC9D0(v45, v27);
    v31 = v43;
    v32 = v50;
    sub_2144CF5C8(v30, v43);
    sub_2144D6848(v30, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    if (v32)
    {
      sub_2144D6848(v15, type metadata accessor for SecureCloudInviteRequestProtobuf);
      return v31;
    }

    v33 = v38;
    sub_213FB2DF4(&v15[v38], &qword_27C913940, &unk_214740F40);
    sub_2144D66AC(v31, &v15[v33], type metadata accessor for SecureCloudInviteUserInfoProtobuf);
    v39(&v15[v33], 0, 1, v41);
    v21 = v48;
  }

  v34 = a1 + *(v44 + 36);
  if ((*(v34 + 21) & 1) == 0)
  {
    v35 = *(v34 + 16) | (*(v34 + 20) << 32);
    if ((v35 & 0x100000000) == 0)
    {
      *v21 = v35;
      v21[4] = 0;
    }

    sub_2144D6800(&qword_27C9138D0, type metadata accessor for SecureCloudInviteRequestProtobuf);
    v31 = sub_2146D8FC8();
    sub_2144D6848(v15, type metadata accessor for SecureCloudInviteRequestProtobuf);
    return v31;
  }

LABEL_22:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144CE7F8(uint64_t a1)
{
  v52 = a1;
  v1 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v50 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = v44 - v7;
  v8 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v49 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SecureCloudInviteResponseProtobuf(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D8DE8();
  v15 = &v14[v11[5]];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v14[v11[6]];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v14[v11[7]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v14[v11[8]];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v14[v11[9]];
  *v19 = 0;
  *(v19 + 4) = 256;
  v20 = *(v2 + 56);
  v45 = v11[10];
  v46 = v20;
  v47 = v1;
  v21 = v1;
  v22 = v52;
  v44[1] = v2 + 56;
  v20(&v14[v45], 1, 1, v21);
  v51 = v11;
  v23 = &v14[v11[11]];
  *v23 = 0;
  v23[4] = 1;
  if ((*(v22 + 8) & 1) == 0)
  {
    *v15 = *v22;
    v15[8] = 0;
  }

  v24 = *(v22 + 32);
  v25 = *(v22 + 40);
  if (v25)
  {
    if (v25 == 1)
    {
      goto LABEL_33;
    }

    *v16 = v24;
    v16[1] = v25;
  }

  v26 = *(v22 + 72);
  v27 = *(v22 + 80);
  if (v27)
  {
    if (v27 == 1)
    {
      goto LABEL_33;
    }

    *v17 = v26;
    *(v17 + 1) = v27;
  }

  v28 = *(v22 + 112);
  v29 = *(v22 + 120);
  if (v29)
  {
    if (v29 == 1)
    {
      goto LABEL_33;
    }

    *v18 = v28;
    v18[1] = v29;
  }

  v30 = *(v22 + 129);
  if (v30 <= 2)
  {
    v31 = v55;
    if (*(v22 + 129))
    {
      if (v30 == 1)
      {
        v32 = 2;
      }

      else
      {
        v32 = 1;
      }
    }

    else
    {
      v32 = 0;
    }

    goto LABEL_22;
  }

  v31 = v55;
  if (v30 == 3)
  {
    v32 = 3;
    goto LABEL_22;
  }

  if (v30 == 4)
  {
    v32 = 4;
LABEL_22:
    *v19 = v32;
    *(v19 + 4) = 1;
  }

  v33 = v26;
  v48 = v23;
  v55 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
  sub_213FB2E54(v22 + *(v55 + 9), v31, &qword_27C909DB8, &qword_2146F5AF0);
  if ((*(v53 + 48))(v31, 1, v54) == 1)
  {
    sub_213FDC9D0(v24, v25);
    sub_213FDC9D0(v33, v27);
    sub_213FDC9D0(v28, v29);
    sub_213FB2DF4(v31, &qword_27C909DB8, &qword_2146F5AF0);
  }

  else
  {
    v34 = v31;
    v35 = v24;
    v36 = v49;
    sub_2144D66AC(v34, v49, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    sub_213FDC9D0(v35, v25);
    sub_213FDC9D0(v33, v27);
    sub_213FDC9D0(v28, v29);
    v37 = v50;
    v38 = v56;
    sub_2144CF5C8(v36, v50);
    sub_2144D6848(v36, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    if (v38)
    {
      sub_2144D6848(v14, type metadata accessor for SecureCloudInviteResponseProtobuf);
      return v33;
    }

    v39 = v45;
    sub_213FB2DF4(&v14[v45], &qword_27C913940, &unk_214740F40);
    sub_2144D66AC(v37, &v14[v39], type metadata accessor for SecureCloudInviteUserInfoProtobuf);
    v46(&v14[v39], 0, 1, v47);
  }

  v40 = v22 + *(v55 + 10);
  if ((*(v40 + 21) & 1) == 0)
  {
    v41 = *(v40 + 16) | (*(v40 + 20) << 32);
    if ((v41 & 0x100000000) == 0)
    {
      v42 = v48;
      *v48 = v41;
      v42[4] = 0;
    }

    sub_2144D6800(&qword_27C9138B0, type metadata accessor for SecureCloudInviteResponseProtobuf);
    v33 = sub_2146D8FC8();
    sub_2144D6848(v14, type metadata accessor for SecureCloudInviteResponseProtobuf);
    return v33;
  }

LABEL_33:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144CEDBC(uint64_t *a1)
{
  v2 = type metadata accessor for SecureCloudWithdrawRequestProtobuf(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(a1 + 8);
  v9 = a1[4];
  v8 = a1[5];
  sub_2146D8DE8();
  v10 = &v5[*(v2 + 20)];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v5[*(v2 + 24)];
  *v11 = 0;
  *(v11 + 1) = 0;
  if ((v7 & 1) == 0)
  {
    *v10 = v6;
    v10[8] = 0;
  }

  if (!v8)
  {
    goto LABEL_6;
  }

  if (v8 != 1)
  {
    *v11 = v9;
    *(v11 + 1) = v8;
LABEL_6:
    sub_2144D6800(&qword_27C913818, type metadata accessor for SecureCloudWithdrawRequestProtobuf);

    v12 = sub_2146D8FC8();
    sub_2144D6848(v5, type metadata accessor for SecureCloudWithdrawRequestProtobuf);
    return v12;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144CEF64(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - v6;
  v8 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v49 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for SecureCloudUpgradeMessageProtobuf(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D8DE8();
  v15 = &v14[v11[5]];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v14[v11[6]];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v14[v11[7]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v14[v11[8]];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v14[v11[9]];
  *v19 = xmmword_2146E68C0;
  v20 = &v14[v11[10]];
  *v20 = 0;
  v48 = v20;
  *(v20 + 4) = 256;
  v21 = &v14[v11[11]];
  *v21 = 0;
  v21[4] = 1;
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  if (v23)
  {
    if (v23 == 1)
    {
      goto LABEL_25;
    }

    *v15 = v22;
    v15[1] = v23;
  }

  v55 = v2;
  if ((*(a1 + 48) & 1) == 0)
  {
    *v16 = *(a1 + 40);
    v16[8] = 0;
  }

  v24 = *(a1 + 72);
  v25 = *(a1 + 80);
  if (v25)
  {
    if (v25 == 1)
    {
      goto LABEL_25;
    }

    *v18 = v24;
    v18[1] = v25;
  }

  v51 = v24;
  v52 = v22;
  v47 = v19;
  v50 = v1;
  v26 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  v27 = a1 + v26[9];
  v28 = *(v27 + 16);
  v29 = *(v27 + 24);
  if (!v29)
  {
    goto LABEL_12;
  }

  if (v29 == 1)
  {
LABEL_25:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  *v17 = v28;
  *(v17 + 1) = v29;
LABEL_12:
  v30 = a1 + v26[10];
  if (*(v30 + 21))
  {
    goto LABEL_25;
  }

  v31 = v28;
  v32 = *(v30 + 16) | (*(v30 + 20) << 32);
  if ((v32 & 0x100000000) == 0)
  {
    *v21 = v32;
    v21[4] = 0;
  }

  sub_213FB2E54(a1 + v26[8], v7, &qword_27C909E38, &qword_2146F5B20);
  if ((*(v53 + 48))(v7, 1, v54) == 1)
  {
    sub_213FDC9D0(v52, v23);
    sub_213FDC9D0(v51, v25);
    sub_213FDC9D0(v31, v29);
    sub_213FB2DF4(v7, &qword_27C909E38, &qword_2146F5B20);
    v33 = v55;
  }

  else
  {
    v34 = v7;
    v35 = v49;
    sub_2144D66AC(v34, v49, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
    sub_213FDC9D0(v52, v23);
    sub_213FDC9D0(v51, v25);
    sub_213FDC9D0(v31, v29);
    v36 = v55;
    v37 = sub_2144CFA8C(v35);
    v33 = v36;
    if (v36)
    {
      sub_2144D6848(v35, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
      return sub_2144D6848(v14, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
    }

    v39 = v37;
    v40 = v38;
    sub_2144D6848(v35, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
    v41 = v47;
    sub_213FDC6BC(*v47, *(v47 + 1));
    *v41 = v39;
    v41[1] = v40;
  }

  v42 = *(a1 + 89);
  if (v42 != 2)
  {
    v43 = v48;
    *v48 = v42 & 1;
    *(v43 + 4) = 1;
  }

  sub_2144D6800(&qword_27C913838, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
  v44 = sub_2146D8FC8();
  if (v33)
  {
    return sub_2144D6848(v14, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
  }

  v46 = v44;
  sub_2144D6848(v14, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
  return v46;
}

uint64_t sub_2144CF41C(void *a1)
{
  v2 = type metadata accessor for SecureCloudPingResponseProtobuf(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[2];
  v6 = a1[3];
  v9 = a1[7];
  v8 = a1[8];
  sub_2146D8DE8();
  v10 = &v5[*(v2 + 20)];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v5[*(v2 + 24)];
  *v11 = 0;
  v11[1] = 0;
  if (v6)
  {
    if (v6 == 1)
    {
      goto LABEL_8;
    }

    *v10 = v7;
    v10[1] = v6;
  }

  if (!v8)
  {
LABEL_7:
    sub_213FDC9D0(v7, v6);
    sub_213FDC9D0(v9, v8);
    sub_2144D6800(&qword_27C913858, type metadata accessor for SecureCloudPingResponseProtobuf);
    v12 = sub_2146D8FC8();
    sub_2144D6848(v5, type metadata accessor for SecureCloudPingResponseProtobuf);
    return v12;
  }

  if (v8 != 1)
  {
    *v11 = v9;
    v11[1] = v8;
    goto LABEL_7;
  }

LABEL_8:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144CF5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v40 - v7;
  v9 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v44 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2146D8DE8();
  v12 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v13 = a2 + v12[5];
  *v13 = xmmword_2146E68C0;
  v42 = (a2 + v12[6]);
  *v42 = xmmword_2146E68C0;
  v43 = (a2 + v12[7]);
  *v43 = xmmword_2146E68C0;
  v14 = (a2 + v12[8]);
  *v14 = 0;
  v14[1] = 0;
  memcpy(v49, a1, 0x189uLL);
  memcpy(v50, a1, 0x189uLL);
  v15 = sub_2144D65A8(v50);
  v45 = v9;
  if (v15 != 1)
  {
    v41 = v8;
    memcpy(v47, v50, 0x189uLL);
    memcpy(v48, v49, 0x189uLL);
    sub_2144D68A8(v48, v46);
    v16 = sub_2144CFE70(v47);
    if (v2)
    {
      sub_2144D6848(a2, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
      return sub_213FB2DF4(v49, &qword_27C909E50, &unk_2146F5B30);
    }

    v19 = v16;
    v20 = v17;
    sub_213FB2DF4(v49, &qword_27C909E50, &unk_2146F5B30);
    sub_213FDC6BC(*v13, *(v13 + 8));
    *v13 = v19;
    *(v13 + 8) = v20;
    v8 = v41;
    v9 = v45;
  }

  v21 = *(a1 + 416);
  v22 = *(a1 + 424);
  if (v22)
  {
    if (v22 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    *v14 = v21;
    v14[1] = v22;
  }

  v23 = *(a1 + 456);
  v48[0] = *(a1 + 440);
  v48[1] = v23;
  v24 = *(a1 + 488);
  v48[2] = *(a1 + 472);
  v48[3] = v24;
  *(&v48[3] + 9) = *(a1 + 497);
  if (*&v48[0])
  {
    v25 = v8;
    v47[0] = *&v48[0];
    v26 = *(a1 + 448);
    *&v47[3] = *(a1 + 464);
    v27 = *(a1 + 496);
    *&v47[5] = *(a1 + 480);
    *&v47[7] = v27;
    LOBYTE(v47[9]) = *(a1 + 512);
    *&v47[1] = v26;
    sub_213FDC9D0(v21, v22);
    sub_213FB2E54(v48, v46, &qword_27C909E68, &qword_214761070);
    v28 = sub_2144D0258(v47);
    if (v2)
    {
      sub_2144D6848(a2, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
      return sub_213FB2DF4(v48, &qword_27C909E68, &qword_214761070);
    }

    v30 = v28;
    v31 = v29;
    sub_213FB2DF4(v48, &qword_27C909E68, &qword_214761070);
    v32 = v43;
    sub_213FDC6BC(*v43, v43[1]);
    *v32 = v30;
    v32[1] = v31;
    v8 = v25;
    v9 = v45;
  }

  else
  {
  }

  v33 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
  sub_213FB2E54(a1 + *(v33 + 28), v8, &qword_27C909E38, &qword_2146F5B20);
  if ((*(v51 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C909E38, &qword_2146F5B20);
  }

  v34 = v44;
  sub_2144D66AC(v8, v44, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
  v35 = sub_2144CFA8C(v34);
  if (v2)
  {
    sub_2144D6848(v34, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
    return sub_2144D6848(a2, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  }

  else
  {
    v37 = v35;
    v38 = v36;
    sub_2144D6848(v34, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
    v39 = v42;
    result = sub_213FDC6BC(*v42, v42[1]);
    *v39 = v37;
    v39[1] = v38;
  }

  return result;
}

uint64_t sub_2144CFA8C(uint64_t *a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for CloudKitSharingToken();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(_BlastDoorASCodableSecureCloudShareItem) init];
  if (!v14)
  {
    v1 = 0x800000021478B060;
    sub_21404A6EC();
    swift_allocError();
    *v22 = 0xD000000000000036;
    v22[1] = 0x800000021478B020;
    v22[2] = 0x5064696C61766E69;
    v22[3] = 0xEF6675626F746F72;
    v22[4] = 0xD00000000000001CLL;
    v22[5] = 0x800000021478B060;
    swift_willThrow();
    return v1;
  }

  v15 = v14;
  if (a1[1])
  {
    v16 = *a1;
    v17 = sub_2146D9588();
    [v15 setZoneName_];
  }

  v18 = a1[5];
  if (v18)
  {
    v33 = v1;
    v34 = v13;
    if (v18 == 1)
    {
      goto LABEL_17;
    }

    v19 = a1[4];

    v20 = sub_2146D9588();
    sub_213FDC6D0(v19, v18);
    [v15 setShareURL_];

    v3 = v2;
    v13 = v34;
    v1 = v33;
  }

  v21 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
  sub_213FB2E54(a1 + *(v21 + 24), v8, &qword_27C9041D8, &qword_2146ED5C0);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_2144D66AC(v8, v13, type metadata accessor for CloudKitSharingToken);
    v23 = sub_2144D0454();
    if (!v3)
    {
      v25 = v13;
      v26 = v23;
      v27 = v24;
      v28 = sub_2146D8A38();
      sub_213FB54FC(v26, v27);
      [v15 setInvitationToken_];

      sub_2144D6848(v25, type metadata accessor for CloudKitSharingToken);
      goto LABEL_13;
    }

    sub_2144D6848(v13, type metadata accessor for CloudKitSharingToken);

    return v1;
  }

  sub_213FB2DF4(v8, &qword_27C9041D8, &qword_2146ED5C0);
LABEL_13:
  v29 = [v15 data];
  if (v29)
  {
    v30 = v29;
    v1 = sub_2146D8A58();

    return v1;
  }

  __break(1u);
LABEL_17:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

id sub_2144CFE70(void *__src)
{
  memcpy(v30, __src, 0x169uLL);
  v5 = *(__src + 46);
  v4 = *(__src + 47);
  v6 = *(__src + 48);
  v7 = *(__src + 392);
  v8 = [objc_allocWithZone(_BlastDoorASCodableActivityDataPreview) init];
  if (!v8)
  {
    v1 = 0x800000021478B020;
    sub_21404A6EC();
    swift_allocError();
    *v12 = 0xD000000000000036;
    v12[1] = 0x800000021478B020;
    v12[2] = 0x5064696C61766E69;
    v12[3] = 0xEF6675626F746F72;
    v12[4] = 0xD00000000000001CLL;
    v12[5] = 0x800000021478B060;
    swift_willThrow();
    return v1;
  }

  v9 = v8;
  memcpy(v29, __src, 0x169uLL);
  v10 = sub_2144D6590(v29);
  if (v10 != 1)
  {
    memcpy(v27, v29, 0x169uLL);
    memcpy(v28, v30, 0x169uLL);
    sub_21430B564(v28, &v26);
    v11 = sub_2144D0680(v27);
    if (v2)
    {

      sub_213FB2DF4(v30, &qword_27C909F60, &qword_2146F5B98);
      return v1;
    }

    v13 = v11;
    [v9 setActivitySnapshot_];

    v10 = sub_213FB2DF4(v30, &qword_27C909F60, &qword_2146F5B98);
  }

  if (*(v5 + 16))
  {
    MEMORY[0x28223BE20](v10);
    v25 = v1;
    v14 = sub_2145389C0(sub_2144D6904, v24, v5);
    if (v2)
    {
LABEL_12:

      return v1;
    }

    sub_214429790(v14);

    v15 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v16 = sub_2146D98E8();

    v17 = [v15 initWithArray_];

    [v9 setWorkouts_];
  }

  if (*(v4 + 16))
  {
    MEMORY[0x28223BE20](v10);
    v25 = v1;
    v18 = sub_214538B10(sub_2144D6978, v24, v4);
    if (v2)
    {
      goto LABEL_12;
    }

    sub_2144297A4(v18);

    v20 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v21 = sub_2146D98E8();

    v22 = [v20 initWithArray_];

    [v9 setAchievements_];
  }

  if ((v7 & 1) == 0)
  {
    [v9 setDate_];
  }

  result = [v9 data];
  if (result)
  {
    v23 = result;
    v1 = sub_2146D8A58();

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2144D0258(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[7];
  v4 = a1[8];
  v5 = [objc_allocWithZone(_BlastDoorASCodableShareLocations) init];
  if (!v5)
  {
    sub_21404A6EC();
    swift_allocError();
    *v13 = 0xD000000000000036;
    v13[1] = 0x800000021478B020;
    v13[2] = 0x5064696C61766E69;
    v13[3] = 0xEF6675626F746F72;
    v13[4] = 0xD00000000000001CLL;
    v13[5] = 0x800000021478B060;
    return swift_willThrow();
  }

  v6 = v5;
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_12;
    }

    v7 = sub_2146D9588();
    sub_213FDC6D0(v1, v2);
    [v6 setActivityShareURL_];
  }

  if (!v4)
  {
LABEL_8:
    v9 = [v6 data];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2146D8A58();

      return v11;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v4 != 1)
  {

    v8 = sub_2146D9588();
    sub_213FDC6D0(v3, v4);
    [v6 setRelationshipShareURL_];

    goto LABEL_8;
  }

LABEL_12:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144D0454()
{
  v1 = sub_2145A8204();
  if (v0)
  {
    v2 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v3 = qword_280B35410;
    if (os_log_type_enabled(qword_280B35410, v2))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = v0;
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v7;
      *v5 = v7;
      _os_log_impl(&dword_213FAF000, v3, v2, "Error when attempting to recompose CloudSharingMetadata token: %@", v4, 0xCu);
      sub_213FB2DF4(v5, &qword_27C9041E0, &qword_214736EF0);
      MEMORY[0x216056AC0](v5, -1, -1);
      MEMORY[0x216056AC0](v4, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v9 = v1;
    [v9 setShareURL_];
    v10 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    v11 = sub_2146D9588();
    sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
    [v10 setClassName:v11 forClass:swift_getObjCClassFromMetadata()];

    [v10 encodeObject:v9 forKey:*MEMORY[0x277CCA308]];
    v12 = [v10 encodedData];
    v13 = sub_2146D8A58();

    return v13;
  }
}

uint64_t sub_2144D0680(uint64_t a1)
{
  v3 = *(a1 + 48);
  v52[2] = *(a1 + 32);
  v52[3] = v3;
  v53 = *(a1 + 64);
  v4 = *(a1 + 16);
  v52[0] = *a1;
  v52[1] = v4;
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v7 = *(a1 + 136);
  v8 = *(a1 + 137);
  v27 = *(a1 + 128);
  v28 = *(a1 + 144);
  v9 = *(a1 + 152);
  v10 = *(a1 + 160);
  v11 = *(a1 + 176);
  v34 = *(a1 + 168);
  v35 = *(a1 + 184);
  v12 = *(a1 + 192);
  v13 = *(a1 + 208);
  v36 = *(a1 + 200);
  v37 = *(a1 + 216);
  v14 = *(a1 + 224);
  v15 = *(a1 + 240);
  v38 = *(a1 + 232);
  v39 = *(a1 + 248);
  v16 = *(a1 + 256);
  v17 = *(a1 + 272);
  v40 = *(a1 + 264);
  v41 = *(a1 + 280);
  v29 = *(a1 + 288);
  v30 = *(a1 + 304);
  v42 = *(a1 + 296);
  v43 = *(a1 + 312);
  v44 = *(a1 + 328);
  v31 = *(a1 + 320);
  v32 = *(a1 + 336);
  v54 = *(a1 + 344);
  v33 = *(a1 + 352);
  v55 = *(a1 + 360);
  v18 = [objc_allocWithZone(_BlastDoorASCodableActivitySnapshot) init];
  if (!v18)
  {
    sub_21404A6EC();
    swift_allocError();
    *v23 = 0xD000000000000036;
    v23[1] = 0x800000021478B020;
    v23[2] = 0x5064696C61766E69;
    v23[3] = 0xEF6675626F746F72;
    v23[4] = 0xD00000000000001CLL;
    v23[5] = 0x800000021478B060;
    swift_willThrow();
    return v18;
  }

  if (*&v52[0])
  {
    v46 = *&v52[0];
    v19 = *(a1 + 24);
    v47 = *(a1 + 8);
    v48 = v19;
    v49[0] = *(a1 + 40);
    *(v49 + 9) = *(a1 + 49);
    v20 = *(a1 + 16);
    v21 = *(a1 + 48);
    v50[2] = *(a1 + 32);
    v50[3] = v21;
    v51 = *(a1 + 64);
    v50[0] = *a1;
    v50[1] = v20;
    sub_21430BA48(v50, v45);
    v22 = sub_2144D13E4(&v46);
    if (v1)
    {

      sub_213FB2DF4(v52, &qword_27C90A020, &qword_2146F5BE0);
      return v18;
    }

    v24 = v22;
    [v18 setSample_];

    sub_213FB2DF4(v52, &qword_27C90A020, &qword_2146F5BE0);
  }

  if (v6 >> 60 != 11)
  {
    if (v6 >> 60 != 15)
    {
      sub_213FDCA18(v5, v6);
      v25 = sub_2146D8A38();
      [v18 setSourceUUID_];

      sub_214032564(v5, v6);
    }

    if ((v8 & 1) == 0)
    {
      if (v7)
      {
        if (v9)
        {
          goto LABEL_13;
        }
      }

      else
      {
        [v18 setSnapshotIndex_];
        if (v9)
        {
LABEL_13:
          if (v34)
          {
            goto LABEL_14;
          }

          goto LABEL_30;
        }
      }

      [v18 setTimeZoneOffsetFromUTCForNoon_];
      if (v34)
      {
LABEL_14:
        if (v35)
        {
          goto LABEL_15;
        }

        goto LABEL_31;
      }

LABEL_30:
      [v18 setEnergyBurned_];
      if (v35)
      {
LABEL_15:
        if (v36)
        {
          goto LABEL_16;
        }

        goto LABEL_32;
      }

LABEL_31:
      [v18 setEnergyBurnedGoal_];
      if (v36)
      {
LABEL_16:
        if (v37)
        {
          goto LABEL_17;
        }

        goto LABEL_33;
      }

LABEL_32:
      [v18 setBriskMinutes_];
      if (v37)
      {
LABEL_17:
        if (v38)
        {
          goto LABEL_18;
        }

        goto LABEL_34;
      }

LABEL_33:
      [v18 setBriskMinutesGoal_];
      if (v38)
      {
LABEL_18:
        if (v39)
        {
          goto LABEL_19;
        }

        goto LABEL_35;
      }

LABEL_34:
      [v18 setActiveHours_];
      if (v39)
      {
LABEL_19:
        if (v40)
        {
          goto LABEL_20;
        }

        goto LABEL_36;
      }

LABEL_35:
      [v18 setActiveHoursGoal_];
      if (v40)
      {
LABEL_20:
        if (v41)
        {
          goto LABEL_21;
        }

        goto LABEL_37;
      }

LABEL_36:
      [v18 setWalkingAndRunningDistance_];
      if (v41)
      {
LABEL_21:
        if (v42)
        {
          goto LABEL_22;
        }

        goto LABEL_38;
      }

LABEL_37:
      [v18 setStepCount_];
      if (v42)
      {
LABEL_22:
        if (v43)
        {
          goto LABEL_23;
        }

        goto LABEL_39;
      }

LABEL_38:
      [v18 setPushCount_];
      if (v43)
      {
LABEL_23:
        if (v44)
        {
          goto LABEL_24;
        }

        goto LABEL_40;
      }

LABEL_39:
      [v18 setWheelchairUse_];
      if (v44)
      {
LABEL_24:
        if (v54)
        {
          goto LABEL_25;
        }

        goto LABEL_41;
      }

LABEL_40:
      [v18 setMmv_];
      if (v54)
      {
LABEL_25:
        if (v55)
        {
          return v18;
        }

LABEL_26:
        [v18 setAmm_];
        return v18;
      }

LABEL_41:
      [v18 setMmg_];
      if (v55)
      {
        return v18;
      }

      goto LABEL_26;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

id sub_2144D0BBC(uint64_t a1)
{
  v3 = *(a1 + 48);
  v53[2] = *(a1 + 32);
  v53[3] = v3;
  v54 = *(a1 + 64);
  v4 = *(a1 + 16);
  v53[0] = *a1;
  v53[1] = v4;
  v5 = *(a1 + 96);
  v6 = *(a1 + 97);
  v7 = *(a1 + 104);
  v8 = *(a1 + 120);
  v35 = *(a1 + 112);
  v36 = *(a1 + 128);
  v9 = *(a1 + 136);
  v10 = *(a1 + 152);
  v37 = *(a1 + 144);
  v38 = *(a1 + 160);
  v28 = *(a1 + 88);
  v29 = *(a1 + 168);
  v11 = *(a1 + 184);
  v39 = *(a1 + 176);
  v40 = *(a1 + 192);
  v12 = *(a1 + 208);
  v13 = *(a1 + 216);
  v42 = *(a1 + 217);
  v31 = *(a1 + 200);
  v32 = *(a1 + 224);
  v41 = *(a1 + 232);
  v43 = *(a1 + 248);
  v30 = *(a1 + 256);
  v14 = *(a1 + 280);
  v33 = *(a1 + 240);
  v34 = *(a1 + 272);
  v44 = *(a1 + 264);
  v45 = *(a1 + 288);
  v15 = [objc_allocWithZone(_BlastDoorASCodableWorkout) init];
  if (!v15)
  {
    sub_21404A6EC();
    swift_allocError();
    *v20 = 0xD000000000000036;
    v20[1] = 0x800000021478B020;
    v20[2] = 0x5064696C61766E69;
    v20[3] = 0xEF6675626F746F72;
    v20[4] = 0xD00000000000001CLL;
    v20[5] = 0x800000021478B060;
    swift_willThrow();
    return v15;
  }

  if (*&v53[0])
  {
    v47 = *&v53[0];
    v16 = *(a1 + 24);
    v48 = *(a1 + 8);
    v49 = v16;
    v50[0] = *(a1 + 40);
    *(v50 + 9) = *(a1 + 49);
    v17 = *(a1 + 16);
    v18 = *(a1 + 48);
    v51[2] = *(a1 + 32);
    v51[3] = v18;
    v52 = *(a1 + 64);
    v51[0] = *a1;
    v51[1] = v17;
    sub_21430BA48(v51, v46);
    v19 = sub_2144D13E4(&v47);
    if (v1)
    {

      sub_213FB2DF4(v53, &qword_27C90A020, &qword_2146F5BE0);
      return v15;
    }

    v25 = v19;
    [v15 setSample_];

    sub_213FB2DF4(v53, &qword_27C90A020, &qword_2146F5BE0);
    if (v6)
    {
      goto LABEL_40;
    }
  }

  else if (v6)
  {
LABEL_40:
    sub_2146DA018();
    __break(1u);
LABEL_41:
    v26 = sub_2146D9588();

    [v15 setSeymourMediaType_];

    return v15;
  }

  if ((v5 & 1) == 0)
  {
    [v15 setType_];
  }

  if ((v35 & 1) == 0)
  {
    [v15 setDuration_];
  }

  if ((v36 & 1) == 0)
  {
    [v15 setTotalEnergyBurnedInCanonicalUnit_];
  }

  if ((v37 & 1) == 0)
  {
    [v15 setTotalBasalEnergyBurnedInCanonicalUnit_];
  }

  if ((v38 & 1) == 0)
  {
    [v15 setTotalDistanceInCanonicalUnit_];
  }

  if (v39)
  {
    if (v40)
    {
      goto LABEL_19;
    }
  }

  else
  {
    [v15 setGoalType_];
    if (v40)
    {
LABEL_19:
      if (!v12)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  [v15 setGoalInCanonicalUnit_];
  if (v12)
  {
LABEL_20:
    v21 = sub_2146D9588();
    [v15 setBundleID_];
  }

LABEL_21:
  if (v13 == 2)
  {
    if (v42 == 2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    [v15 setIsWatchWorkout_];
    if (v42 == 2)
    {
LABEL_23:
      if (!v41)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  [v15 setIsIndoorWorkout_];
  if (v41)
  {
LABEL_24:
    v22 = sub_2146D9588();
    [v15 setDeviceManufacturer_];
  }

LABEL_25:
  if (v43)
  {
    v23 = sub_2146D9588();
    [v15 setDeviceModel_];
  }

  if ((v44 & 1) == 0)
  {
    [v15 setAmm_];
  }

  if (v14)
  {
    v24 = sub_2146D9588();
    [v15 setSeymourCatalogWorkoutIdentifier_];
  }

  if (v45 < 4)
  {
    goto LABEL_41;
  }

  return v15;
}

id sub_2144D1114(uint64_t a1)
{
  v3 = *(a1 + 48);
  v33[2] = *(a1 + 32);
  v33[3] = v3;
  v34 = *(a1 + 64);
  v4 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v4;
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  v22 = *(a1 + 104);
  v23 = *(a1 + 120);
  v10 = *(a1 + 128);
  v11 = *(a1 + 144);
  v24 = *(a1 + 136);
  v25 = *(a1 + 152);
  v35 = *(a1 + 160);
  v12 = [objc_allocWithZone(_BlastDoorASCodableAchievement) init];
  if (!v12)
  {
    sub_21404A6EC();
    swift_allocError();
    *v17 = 0xD000000000000036;
    v17[1] = 0x800000021478B020;
    v17[2] = 0x5064696C61766E69;
    v17[3] = 0xEF6675626F746F72;
    v17[4] = 0xD00000000000001CLL;
    v17[5] = 0x800000021478B060;
    swift_willThrow();
    return v12;
  }

  if (*&v33[0])
  {
    v27 = *&v33[0];
    v13 = *(a1 + 24);
    v28 = *(a1 + 8);
    v29 = v13;
    v30[0] = *(a1 + 40);
    *(v30 + 9) = *(a1 + 49);
    v14 = *(a1 + 16);
    v15 = *(a1 + 48);
    v31[2] = *(a1 + 32);
    v31[3] = v15;
    v32 = *(a1 + 64);
    v31[0] = *a1;
    v31[1] = v14;
    sub_21430BA48(v31, v26);
    v16 = sub_2144D13E4(&v27);
    if (v1)
    {

      sub_213FB2DF4(v33, &qword_27C90A020, &qword_2146F5BE0);
      return v12;
    }

    v18 = v16;
    [v12 setSample_];

    sub_213FB2DF4(v33, &qword_27C90A020, &qword_2146F5BE0);
  }

  if (v6)
  {
    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [v12 setCompletedDate_];
    if (v8)
    {
LABEL_9:
      if (v9)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  [v12 setDoubleValue_];
  if (v9)
  {
LABEL_10:
    if (v10)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v12 setIntValue_];
  if (v10)
  {
LABEL_11:
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  [v12 setWorkoutActivityType_];
  if (v11)
  {
LABEL_12:
    v19 = sub_2146D9588();
    [v12 setDefinitionIdentifier_];
  }

LABEL_13:
  if (v35)
  {
    v20 = sub_2146D9588();
    [v12 setTemplateUniqueName_];
  }

  return v12;
}

uint64_t sub_2144D13E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = [objc_allocWithZone(_BlastDoorASCodableSample) init];
  if (!v7)
  {
    sub_21404A6EC();
    swift_allocError();
    *v8 = 0xD000000000000036;
    v8[1] = 0x800000021478B020;
    v8[2] = 0x5064696C61766E69;
    v8[3] = 0xEF6675626F746F72;
    v8[4] = 0xD00000000000001CLL;
    v8[5] = 0x800000021478B060;
    swift_willThrow();
    return v7;
  }

  if (v2 >> 60 != 11)
  {
    if (v2 >> 60 == 15)
    {
      if (v4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_213FDCA18(v1, v2);
      v9 = sub_2146D8A38();
      [v7 setUuid_];

      sub_214032564(v1, v2);
      if (v4)
      {
LABEL_5:
        if (v6)
        {
          return v7;
        }

        goto LABEL_10;
      }
    }

    [v7 setStartDate_];
    if ((v6 & 1) == 0)
    {
LABEL_10:
      [v7 setEndDate_];
    }

    return v7;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144D163C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 >> 60 == 11 || (v3 = *(a2 + 24), v3 >> 60 == 11))
  {
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a2 + 16);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v13 = *(a2 + 64);
  if (v2 >> 60 != 15)
  {
    if (v3 >> 60 != 15)
    {
      sub_21404F7E0(*(a1 + 16), v2);
      sub_21404F7E0(v9, v3);
      sub_21404F7E0(v4, v2);
      sub_21404F7E0(v9, v3);
      v15 = sub_214466780(v4, v2, v9, v3);
      sub_213FDC6BC(v9, v3);
      sub_214032564(v9, v3);
      sub_214032564(v4, v2);
      sub_213FDC6BC(v4, v2);
      if (v15)
      {
        goto LABEL_10;
      }

      return 0;
    }

LABEL_7:
    sub_21404F7E0(*(a1 + 16), v2);
    sub_21404F7E0(v9, v3);
    sub_213FDC6BC(v4, v2);
    sub_213FDC6BC(v9, v3);
    return 0;
  }

  if (v3 >> 60 != 15)
  {
    goto LABEL_7;
  }

  sub_21404F7E0(*(a1 + 16), v2);
  sub_21404F7E0(v9, v3);
  sub_213FDC6BC(v4, v2);
LABEL_10:
  if (v6)
  {
    if (v8 & 1 | ((v11 & 1) == 0))
    {
      return v11 & v13;
    }
  }

  else
  {
    if (v5 == v10)
    {
      v16 = v11;
    }

    else
    {
      v16 = 1;
    }

    if ((v16 | v8))
    {
      return (v16 ^ 1) & v13;
    }
  }

  return (v7 == v12) & ~v13;
}

uint64_t sub_2144D1844(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v143[2] = *(a1 + 32);
  v143[3] = v4;
  v144 = *(a1 + 64);
  v5 = *(a1 + 16);
  v143[0] = *a1;
  v143[1] = v5;
  v7 = *(a1 + 88);
  v6 = *(a1 + 96);
  v121 = *(a1 + 128);
  v127 = *(a1 + 136);
  v126 = *(a1 + 137);
  v118 = *(a1 + 144);
  v123 = *(a1 + 152);
  v8 = *(a1 + 160);
  v119 = *(a1 + 168);
  v9 = *(a1 + 176);
  v115 = *(a1 + 184);
  v10 = *(a1 + 192);
  v11 = *(a1 + 200);
  v12 = *(a1 + 208);
  v13 = *(a1 + 216);
  v14 = *(a1 + 224);
  v15 = *(a1 + 232);
  v16 = *(a1 + 240);
  v17 = *(a1 + 248);
  v18 = *(a1 + 256);
  v19 = *(a1 + 264);
  v20 = *(a1 + 272);
  v21 = *(a1 + 280);
  v22 = *(a1 + 288);
  v23 = *(a1 + 296);
  v24 = *(a1 + 304);
  v25 = *(a1 + 312);
  v26 = *(a1 + 320);
  v27 = *(a1 + 328);
  v28 = *(a1 + 336);
  v29 = *(a1 + 344);
  v30 = *(a1 + 352);
  v31 = *(a1 + 360);
  v32 = *(a2 + 16);
  v145[0] = *a2;
  v145[1] = v32;
  v33 = *(a2 + 48);
  v145[2] = *(a2 + 32);
  v145[3] = v33;
  v146 = *(a2 + 64);
  v35 = *(a2 + 88);
  v34 = *(a2 + 96);
  v120 = *(a2 + 128);
  v125 = *(a2 + 136);
  v124 = *(a2 + 137);
  v36 = *(a2 + 160);
  v37 = *(a2 + 176);
  v38 = *(a2 + 192);
  v39 = *(a2 + 208);
  v40 = *(a2 + 224);
  v41 = *(a2 + 240);
  v42 = *(a2 + 256);
  v43 = *(a2 + 272);
  v44 = *(a2 + 288);
  v45 = *(a2 + 320);
  v46 = *(a2 + 336);
  v116 = *(a2 + 144);
  v122 = *(a2 + 152);
  v117 = *(a2 + 168);
  v114 = *(a2 + 184);
  v113 = *(a2 + 200);
  v112 = *(a2 + 216);
  v111 = *(a2 + 232);
  v110 = *(a2 + 248);
  v109 = *(a2 + 264);
  v108 = *(a2 + 280);
  v107 = *(a2 + 296);
  v47 = *(a2 + 312);
  v48 = *(a2 + 328);
  v49 = *(a2 + 344);
  v50 = *(a2 + 352);
  v51 = *(a2 + 360);
  v52 = *&v143[0];
  v53 = *&v145[0];
  if (!*&v143[0])
  {
    if (!*&v145[0])
    {
      v94 = *(a2 + 224);
      v95 = *(a2 + 240);
      v96 = v8;
      v97 = *(a2 + 256);
      v98 = v9;
      v99 = *(a2 + 272);
      v106 = *(a2 + 304);
      v100 = v11;
      v86 = v27;
      v87 = *(a2 + 312);
      v101 = v10;
      v88 = *(a2 + 288);
      v89 = v22;
      v102 = v13;
      v83 = *(a2 + 344);
      v84 = *(a2 + 328);
      v103 = v12;
      v104 = v15;
      v105 = v17;
      v79 = *(a2 + 320);
      v80 = v26;
      v74 = *(a2 + 352);
      v78 = *(a2 + 360);
      v91 = v19;
      v92 = v21;
      v75 = *(a2 + 336);
      v76 = v28;
      v93 = v23;
      v90 = v25;
      v85 = v24;
      v81 = v29;
      v82 = v31;
      v77 = v30;
      *v138 = 0;
      *&v138[8] = *(a1 + 8);
      *&v138[24] = *(a1 + 24);
      *&v138[40] = *(a1 + 40);
      *&v138[49] = *(a1 + 49);
      sub_213FB2E54(v143, &v133, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FB2E54(v145, &v133, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FB2DF4(v138, &qword_27C90A020, &qword_2146F5BE0);
      goto LABEL_10;
    }

    sub_213FB2E54(v143, v138, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v145, v138, &qword_27C90A020, &qword_2146F5BE0);
LABEL_8:
    *&v138[8] = *(a1 + 8);
    *&v138[24] = *(a1 + 24);
    *&v138[40] = *(a1 + 40);
    *&v138[49] = *(a1 + 49);
    *v138 = v52;
    v139 = v53;
    v55 = *(a2 + 24);
    v140 = *(a2 + 8);
    v141 = v55;
    v142[0] = *(a2 + 40);
    *(v142 + 9) = *(a2 + 49);
    sub_213FB2DF4(v138, &qword_27C914910, &unk_214755D50);
    return 0;
  }

  v106 = *(a2 + 304);
  *v138 = *&v143[0];
  *&v138[24] = *(a1 + 24);
  *&v138[8] = *(a1 + 8);
  *&v138[40] = *(a1 + 40);
  *&v138[49] = *(a1 + 49);
  v135 = *&v138[32];
  v136 = *&v138[48];
  v137 = v138[64];
  v133 = *v138;
  v134 = *&v138[16];
  if (!*&v145[0])
  {
    *&v132[32] = *&v138[32];
    *&v132[48] = *&v138[48];
    v132[64] = v138[64];
    *v132 = *v138;
    *&v132[16] = *&v138[16];
    sub_213FB2E54(v143, v130, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v145, v130, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v138, v130, &qword_27C90A020, &qword_2146F5BE0);
    sub_21430B9A0(v132);
    goto LABEL_8;
  }

  v94 = v40;
  v95 = v41;
  v96 = v8;
  v97 = v42;
  v98 = v9;
  v99 = v43;
  v100 = v11;
  v86 = v27;
  v87 = v47;
  v101 = v10;
  v88 = v44;
  v89 = v22;
  v102 = v13;
  v83 = v49;
  v84 = v48;
  v103 = v12;
  v104 = v15;
  v105 = v17;
  v79 = v45;
  v80 = v26;
  v74 = v50;
  v78 = v51;
  v91 = v19;
  v92 = v21;
  v75 = v46;
  v76 = v28;
  v93 = v23;
  v90 = v25;
  v85 = v24;
  v81 = v29;
  v82 = v31;
  v77 = v30;
  *&v132[8] = *(a2 + 8);
  *&v132[24] = *(a2 + 24);
  *&v132[40] = *(a2 + 40);
  *&v132[49] = *(a2 + 49);
  *v132 = *&v145[0];
  sub_213FB2E54(v143, v130, &qword_27C90A020, &qword_2146F5BE0);
  sub_213FB2E54(v145, v130, &qword_27C90A020, &qword_2146F5BE0);
  sub_213FB2E54(v138, v130, &qword_27C90A020, &qword_2146F5BE0);
  v54 = sub_2144D163C(&v133, v132);
  v128[2] = *&v132[32];
  v128[3] = *&v132[48];
  v129 = v132[64];
  v128[0] = *v132;
  v128[1] = *&v132[16];
  sub_21430B9A0(v128);
  v130[2] = v135;
  v130[3] = v136;
  v131 = v137;
  v130[0] = v133;
  v130[1] = v134;
  sub_21430B9A0(v130);
  *v132 = v52;
  *&v132[8] = *(a1 + 8);
  *&v132[24] = *(a1 + 24);
  *&v132[40] = *(a1 + 40);
  *&v132[49] = *(a1 + 49);
  sub_213FB2DF4(v132, &qword_27C90A020, &qword_2146F5BE0);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (v6 >> 60 == 11 || v34 >> 60 == 11)
  {
    goto LABEL_107;
  }

  if (v6 >> 60 == 15)
  {
    if (v34 >> 60 == 15)
    {
      sub_21404F7E0(v7, v6);
      sub_21404F7E0(v35, v34);
      sub_213FDC6BC(v7, v6);
      goto LABEL_20;
    }

LABEL_16:
    sub_21404F7E0(v7, v6);
    sub_21404F7E0(v35, v34);
    sub_213FDC6BC(v7, v6);
    sub_213FDC6BC(v35, v34);
    return 0;
  }

  if (v34 >> 60 == 15)
  {
    goto LABEL_16;
  }

  sub_21404F7E0(v7, v6);
  sub_21404F7E0(v35, v34);
  sub_21404F7E0(v7, v6);
  sub_21404F7E0(v35, v34);
  v57 = sub_214466780(v7, v6, v35, v34);
  sub_213FDC6BC(v35, v34);
  sub_214032564(v35, v34);
  sub_214032564(v7, v6);
  sub_213FDC6BC(v7, v6);
  if ((v57 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  if (v126 & 1) != 0 || (v124)
  {
LABEL_107:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  if (v127)
  {
    if ((v125 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v125 & 1) != 0 || v121 != v120)
    {
      return result;
    }
  }

  if (v123)
  {
    v59 = v92;
    v58 = v93;
    v60 = v91;
    if (!v122)
    {
      return 0;
    }
  }

  else
  {
    v61 = v122;
    if (v118 != v116)
    {
      v61 = 1;
    }

    v59 = v92;
    v58 = v93;
    v60 = v91;
    if (v61)
    {
      return 0;
    }
  }

  if (v119)
  {
    if (!v117)
    {
      return 0;
    }
  }

  else
  {
    v62 = v117;
    if (v96 != v36)
    {
      v62 = 1;
    }

    if (v62)
    {
      return 0;
    }
  }

  if (v115)
  {
    if (!v114)
    {
      return 0;
    }
  }

  else
  {
    v63 = v114;
    if (v98 != v37)
    {
      v63 = 1;
    }

    if (v63)
    {
      return 0;
    }
  }

  if (v100)
  {
    if (!v113)
    {
      return 0;
    }
  }

  else
  {
    v64 = v113;
    if (v101 != v38)
    {
      v64 = 1;
    }

    if (v64)
    {
      return 0;
    }
  }

  if (v102)
  {
    if (!v112)
    {
      return 0;
    }
  }

  else
  {
    v65 = v112;
    if (v103 != v39)
    {
      v65 = 1;
    }

    if (v65)
    {
      return 0;
    }
  }

  if (v104)
  {
    if (!v111)
    {
      return 0;
    }
  }

  else
  {
    v66 = v111;
    if (v14 != v94)
    {
      v66 = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  if (v105)
  {
    if (!v110)
    {
      return 0;
    }
  }

  else
  {
    v67 = v110;
    if (v16 != v95)
    {
      v67 = 1;
    }

    if (v67)
    {
      return 0;
    }
  }

  if (v60)
  {
    if (!v109)
    {
      return 0;
    }
  }

  else
  {
    v68 = v109;
    if (v18 != v97)
    {
      v68 = 1;
    }

    if (v68)
    {
      return 0;
    }
  }

  if (v59)
  {
    if (!v108)
    {
      return 0;
    }
  }

  else
  {
    v69 = v108;
    if (v20 != v99)
    {
      v69 = 1;
    }

    if (v69)
    {
      return 0;
    }
  }

  if (v58)
  {
    if (!v107)
    {
      return 0;
    }
  }

  else
  {
    v70 = v107;
    if (v89 != v88)
    {
      v70 = 1;
    }

    if (v70)
    {
      return 0;
    }
  }

  if (v90)
  {
    if (!v87)
    {
      return 0;
    }
  }

  else
  {
    v71 = v87;
    if (v85 != v106)
    {
      v71 = 1;
    }

    if (v71)
    {
      return 0;
    }
  }

  if ((v86 & 1) == 0)
  {
    v72 = v84;
    if (v80 != v79)
    {
      v72 = 1;
    }

    if (v72)
    {
      return 0;
    }

    goto LABEL_99;
  }

  if (!v84)
  {
    return 0;
  }

LABEL_99:
  if (v81)
  {
    if (v82 & 1 | ((v83 & 1) == 0))
    {
      return v83 & v78;
    }
  }

  else
  {
    v73 = v83;
    if (v76 != v75)
    {
      v73 = 1;
    }

    if ((v73 | v82))
    {
      return (v73 ^ 1) & v78;
    }
  }

  return (v77 == v74) & ~v78;
}

uint64_t sub_2144D2170(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v113[2] = *(a1 + 32);
  v113[3] = v4;
  v114 = *(a1 + 64);
  v5 = *(a1 + 16);
  v113[0] = *a1;
  v113[1] = v5;
  v93 = *(a1 + 88);
  v97 = *(a1 + 96);
  v96 = *(a1 + 97);
  v6 = *(a1 + 104);
  v95 = *(a1 + 112);
  v7 = *(a1 + 120);
  v91 = *(a1 + 128);
  v8 = *(a1 + 136);
  v89 = *(a1 + 144);
  v9 = *(a1 + 152);
  v87 = *(a1 + 160);
  v82 = *(a1 + 168);
  v85 = *(a1 + 176);
  v10 = *(a1 + 184);
  v83 = *(a1 + 192);
  v11 = *(a1 + 200);
  v79 = *(a1 + 208);
  v12 = *(a1 + 216);
  v13 = *(a1 + 217);
  v14 = *(a1 + 224);
  v15 = *(a1 + 232);
  v16 = *(a1 + 240);
  v17 = *(a1 + 248);
  v18 = *(a1 + 256);
  v19 = *(a1 + 264);
  v20 = *(a1 + 272);
  v21 = *(a1 + 280);
  v22 = *(a1 + 288);
  v23 = *(a2 + 16);
  v115[0] = *a2;
  v115[1] = v23;
  v24 = *(a2 + 48);
  v115[2] = *(a2 + 32);
  v115[3] = v24;
  v116 = *(a2 + 64);
  v92 = *(a2 + 88);
  v25 = *(a2 + 96);
  v26 = *(a2 + 97);
  v94 = *(a2 + 112);
  v27 = *(a2 + 120);
  v28 = *(a2 + 136);
  v29 = *(a2 + 152);
  v30 = *(a2 + 184);
  v90 = *(a2 + 128);
  v88 = *(a2 + 144);
  v86 = *(a2 + 160);
  v80 = *(a2 + 168);
  v84 = *(a2 + 176);
  v81 = *(a2 + 192);
  v76 = *(a2 + 200);
  v78 = *(a2 + 208);
  v77 = *(a2 + 216);
  v75 = *(a2 + 217);
  v31 = *(a2 + 224);
  v33 = *(a2 + 240);
  v32 = *(a2 + 248);
  v34 = *(a2 + 256);
  v35 = *(a2 + 264);
  v36 = *(a2 + 272);
  v37 = *(a2 + 280);
  v38 = *(a2 + 288);
  v39 = *&v113[0];
  v40 = *&v115[0];
  if (*&v113[0])
  {
    v71 = *(a2 + 104);
    v70 = *(a2 + 232);
    *v108 = *&v113[0];
    *&v108[24] = *(a1 + 24);
    *&v108[8] = *(a1 + 8);
    *&v108[40] = *(a1 + 40);
    *&v108[49] = *(a1 + 49);
    v105 = *&v108[32];
    v106 = *&v108[48];
    v107 = v108[64];
    v103 = *v108;
    v104 = *&v108[16];
    if (*&v115[0])
    {
      v72 = v27;
      v73 = v11;
      v66 = v31;
      v67 = v14;
      v74 = v12;
      v64 = v33;
      v65 = v16;
      v68 = v32;
      v69 = v17;
      v58 = v34;
      v59 = v18;
      v62 = v19;
      v63 = v35;
      v55 = v36;
      v56 = v20;
      v60 = v37;
      v61 = v21;
      v54 = v38;
      v57 = v22;
      *&v102[8] = *(a2 + 8);
      *&v102[24] = *(a2 + 24);
      *&v102[40] = *(a2 + 40);
      *&v102[49] = *(a2 + 49);
      *v102 = *&v115[0];
      sub_213FB2E54(v113, v100, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FB2E54(v115, v100, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FB2E54(v108, v100, &qword_27C90A020, &qword_2146F5BE0);
      v41 = sub_2144D163C(&v103, v102);
      v98[2] = *&v102[32];
      v98[3] = *&v102[48];
      v99 = v102[64];
      v98[0] = *v102;
      v98[1] = *&v102[16];
      sub_21430B9A0(v98);
      v100[2] = v105;
      v100[3] = v106;
      v101 = v107;
      v100[0] = v103;
      v100[1] = v104;
      sub_21430B9A0(v100);
      *v102 = v39;
      *&v102[8] = *(a1 + 8);
      *&v102[24] = *(a1 + 24);
      *&v102[40] = *(a1 + 40);
      *&v102[49] = *(a1 + 49);
      sub_213FB2DF4(v102, &qword_27C90A020, &qword_2146F5BE0);
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      if (v96)
      {
        goto LABEL_107;
      }

      goto LABEL_13;
    }

    *&v102[32] = *&v108[32];
    *&v102[48] = *&v108[48];
    v102[64] = v108[64];
    *v102 = *v108;
    *&v102[16] = *&v108[16];
    sub_213FB2E54(v113, v100, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v115, v100, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v108, v100, &qword_27C90A020, &qword_2146F5BE0);
    sub_21430B9A0(v102);
LABEL_9:
    *&v108[8] = *(a1 + 8);
    *&v108[24] = *(a1 + 24);
    *&v108[40] = *(a1 + 40);
    *&v108[49] = *(a1 + 49);
    *v108 = v39;
    v109 = v40;
    v42 = *(a2 + 24);
    v110 = *(a2 + 8);
    v111 = v42;
    v112[0] = *(a2 + 40);
    *(v112 + 9) = *(a2 + 49);
    sub_213FB2DF4(v108, &qword_27C914910, &unk_214755D50);
    return 0;
  }

  if (*&v115[0])
  {
    sub_213FB2E54(v113, v108, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v115, v108, &qword_27C90A020, &qword_2146F5BE0);
    goto LABEL_9;
  }

  v71 = *(a2 + 104);
  v72 = *(a2 + 120);
  v73 = v11;
  v66 = *(a2 + 224);
  v67 = v14;
  v74 = v12;
  v69 = v17;
  v70 = *(a2 + 232);
  v64 = *(a2 + 240);
  v65 = v16;
  v68 = *(a2 + 248);
  v58 = *(a2 + 256);
  v59 = v18;
  v62 = v19;
  v63 = *(a2 + 264);
  v55 = *(a2 + 272);
  v56 = v20;
  v60 = *(a2 + 280);
  v61 = v21;
  v54 = *(a2 + 288);
  v57 = v22;
  *v108 = 0;
  *&v108[8] = *(a1 + 8);
  *&v108[24] = *(a1 + 24);
  *&v108[40] = *(a1 + 40);
  *&v108[49] = *(a1 + 49);
  sub_213FB2E54(v113, &v103, &qword_27C90A020, &qword_2146F5BE0);
  sub_213FB2E54(v115, &v103, &qword_27C90A020, &qword_2146F5BE0);
  sub_213FB2DF4(v108, &qword_27C90A020, &qword_2146F5BE0);
  if (v96)
  {
LABEL_107:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

LABEL_13:
  v44 = v74;
  if (v26)
  {
    goto LABEL_107;
  }

  if (v97)
  {
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v25 & 1) != 0 || v93 != v92)
    {
      return result;
    }
  }

  if (v95)
  {
    if (!v94)
    {
      return 0;
    }
  }

  else
  {
    v45 = v94;
    if (v6 != v71)
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  if (v91)
  {
    if (!v90)
    {
      return 0;
    }
  }

  else
  {
    v46 = v90;
    if (v7 != v72)
    {
      v46 = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  if (v89)
  {
    if (!v88)
    {
      return 0;
    }
  }

  else
  {
    v47 = v88;
    if (v8 != v28)
    {
      v47 = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  if (v87)
  {
    if (!v86)
    {
      return 0;
    }
  }

  else
  {
    v48 = v86;
    if (v9 != v29)
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  if (v85)
  {
    if (!v84)
    {
      return 0;
    }
  }

  else
  {
    v49 = v84;
    if (v82 != v80)
    {
      v49 = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  if (v83)
  {
    if (!v81)
    {
      return 0;
    }
  }

  else
  {
    v50 = v81;
    if (v10 != v30)
    {
      v50 = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  if (v79)
  {
    if (!v78)
    {
      return 0;
    }

    if (v73 != v76 || v79 != v78)
    {
      v51 = sub_2146DA6A8();
      v44 = v74;
      if ((v51 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v78)
  {
    return 0;
  }

  if (v44 == 2)
  {
    if (v77 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v77 == 2 || ((v77 ^ v44) & 1) != 0)
    {
      return result;
    }
  }

  if (v13 == 2)
  {
    if (v75 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v75 == 2 || ((v75 ^ v13) & 1) != 0)
    {
      return result;
    }
  }

  if (v15)
  {
    if (!v70 || (v67 != v66 || v15 != v70) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v70)
  {
    return 0;
  }

  if (v69)
  {
    if (!v68 || (v65 != v64 || v69 != v68) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v68)
  {
    return 0;
  }

  if (v62)
  {
    if (!v63)
    {
      return 0;
    }
  }

  else
  {
    v52 = v63;
    if (v59 != v58)
    {
      v52 = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  if (v61)
  {
    if (v60 && (v56 == v55 && v61 == v60 || (sub_2146DA6A8() & 1) != 0))
    {
      goto LABEL_99;
    }

    return 0;
  }

  if (v60)
  {
    return 0;
  }

LABEL_99:
  if (v57 == 4)
  {
    return v54 == 4;
  }

  else
  {
    return v54 != 4 && v57 == v54;
  }
}

uint64_t sub_2144D2984(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v78[2] = *(a1 + 32);
  v78[3] = v4;
  v79 = *(a1 + 64);
  v5 = *(a1 + 16);
  v78[0] = *a1;
  v78[1] = v5;
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  v10 = *(a1 + 104);
  v11 = *(a1 + 112);
  v12 = *(a1 + 120);
  v13 = *(a1 + 128);
  v14 = *(a1 + 136);
  v15 = *(a1 + 144);
  v16 = *(a1 + 152);
  v17 = *(a1 + 160);
  v81 = *(a2 + 64);
  v18 = *(a2 + 48);
  v80[2] = *(a2 + 32);
  v80[3] = v18;
  v19 = *(a2 + 16);
  v80[0] = *a2;
  v80[1] = v19;
  v20 = *(a2 + 72);
  v21 = *(a2 + 80);
  v22 = *(a2 + 88);
  v23 = *(a2 + 96);
  v24 = *(a2 + 104);
  v25 = *(a2 + 112);
  v26 = *(a2 + 120);
  v28 = *(a2 + 136);
  v27 = *(a2 + 144);
  v29 = *(a2 + 152);
  v30 = *(a2 + 160);
  v31 = *&v78[0];
  v32 = *&v80[0];
  if (*&v78[0])
  {
    v55 = *(a2 + 128);
    *v73 = *&v78[0];
    *&v73[24] = *(a1 + 24);
    *&v73[8] = *(a1 + 8);
    *&v73[40] = *(a1 + 40);
    *&v73[49] = *(a1 + 49);
    v70 = *&v73[32];
    v71 = *&v73[48];
    v72 = v73[64];
    v68 = *v73;
    v69 = *&v73[16];
    if (*&v80[0])
    {
      v56 = v23;
      v57 = v24;
      v58 = v25;
      v59 = v26;
      v60 = v11;
      v61 = v10;
      v62 = v14;
      v54 = v13;
      v50 = v28;
      v51 = v12;
      v52 = v27;
      v53 = v15;
      *v49 = v29;
      *&v49[8] = v30;
      *&v49[16] = v17;
      v48 = v16;
      *&v67[8] = *(a2 + 8);
      *&v67[24] = *(a2 + 24);
      *&v67[40] = *(a2 + 40);
      *&v67[49] = *(a2 + 49);
      *v67 = *&v80[0];
      sub_213FB2E54(v78, v65, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FB2E54(v80, v65, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FB2E54(v73, v65, &qword_27C90A020, &qword_2146F5BE0);
      v33 = sub_2144D163C(&v68, v67);
      v63[2] = *&v67[32];
      v63[3] = *&v67[48];
      v64 = v67[64];
      v63[0] = *v67;
      v63[1] = *&v67[16];
      sub_21430B9A0(v63);
      v65[2] = v70;
      v65[3] = v71;
      v66 = v72;
      v65[0] = v68;
      v65[1] = v69;
      sub_21430B9A0(v65);
      *v67 = v31;
      *&v67[8] = *(a1 + 8);
      *&v67[24] = *(a1 + 24);
      *&v67[40] = *(a1 + 40);
      *&v67[49] = *(a1 + 49);
      sub_213FB2DF4(v67, &qword_27C90A020, &qword_2146F5BE0);
      if ((v33 & 1) == 0)
      {
        goto LABEL_11;
      }

      if (v7)
      {
        goto LABEL_5;
      }

LABEL_14:
      if (v6 == v20)
      {
        v44 = v21;
      }

      else
      {
        v44 = 1;
      }

      v35 = v61;
      v34 = v62;
      v36 = v60;
      v37 = v59;
      v38 = v58;
      v39 = v57;
      v40 = v56;
      if (v44)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    *&v67[32] = *&v73[32];
    *&v67[48] = *&v73[48];
    v67[64] = v73[64];
    *v67 = *v73;
    *&v67[16] = *&v73[16];
    sub_213FB2E54(v78, v65, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v80, v65, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v73, v65, &qword_27C90A020, &qword_2146F5BE0);
    sub_21430B9A0(v67);
LABEL_10:
    *&v73[8] = *(a1 + 8);
    *&v73[24] = *(a1 + 24);
    *&v73[40] = *(a1 + 40);
    *&v73[49] = *(a1 + 49);
    *v73 = v31;
    v74 = v32;
    v41 = *(a2 + 24);
    v75 = *(a2 + 8);
    v76 = v41;
    v77[0] = *(a2 + 40);
    *(v77 + 9) = *(a2 + 49);
    sub_213FB2DF4(v73, &qword_27C914910, &unk_214755D50);
    goto LABEL_11;
  }

  if (*&v80[0])
  {
    sub_213FB2E54(v78, v73, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v80, v73, &qword_27C90A020, &qword_2146F5BE0);
    goto LABEL_10;
  }

  v55 = *(a2 + 128);
  v56 = *(a2 + 96);
  v57 = *(a2 + 104);
  v58 = *(a2 + 112);
  v59 = *(a2 + 120);
  v60 = v11;
  v61 = v10;
  v62 = v14;
  v54 = v13;
  v50 = *(a2 + 136);
  v51 = v12;
  v52 = *(a2 + 144);
  v53 = v15;
  *v49 = *(a2 + 152);
  *&v49[16] = v17;
  v48 = v16;
  *v73 = 0;
  *&v73[8] = *(a1 + 8);
  *&v73[24] = *(a1 + 24);
  *&v73[40] = *(a1 + 40);
  *&v73[49] = *(a1 + 49);
  sub_213FB2E54(v78, &v68, &qword_27C90A020, &qword_2146F5BE0);
  sub_213FB2E54(v80, &v68, &qword_27C90A020, &qword_2146F5BE0);
  sub_213FB2DF4(v73, &qword_27C90A020, &qword_2146F5BE0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  v35 = v61;
  v34 = v62;
  v36 = v60;
  v37 = v59;
  v38 = v58;
  v39 = v57;
  v40 = v56;
  if (!v21)
  {
    goto LABEL_11;
  }

LABEL_18:
  if (v9)
  {
    if (!v40)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v8 == v22)
    {
      v45 = v40;
    }

    else
    {
      v45 = 1;
    }

    if (v45)
    {
      goto LABEL_11;
    }
  }

  if (v36)
  {
    if (!v38)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v35 == v39)
    {
      v46 = v38;
    }

    else
    {
      v46 = 1;
    }

    if (v46)
    {
      goto LABEL_11;
    }
  }

  if (v54)
  {
    if (!v55)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v47 = v55;
    if (v51 != v37)
    {
      v47 = 1;
    }

    if (v47)
    {
      goto LABEL_11;
    }
  }

  if (v53)
  {
    if (v52 && (v34 == v50 && v53 == v52 || (sub_2146DA6A8() & 1) != 0))
    {
      goto LABEL_45;
    }

LABEL_11:
    v42 = 0;
    return v42 & 1;
  }

  if (v52)
  {
    goto LABEL_11;
  }

LABEL_45:
  v42 = *&v49[8] == 0;
  if (*&v49[16] && *&v49[8])
  {
    if (__PAIR128__(*&v49[16], v48) == *v49)
    {
      v42 = 1;
    }

    else
    {
      v42 = sub_2146DA6A8();
    }
  }

  return v42 & 1;
}

uint64_t sub_2144D2ECC(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, 0x169uLL);
  v6 = v4[46];
  v5 = v4[47];
  memcpy(v20, v3, 0x169uLL);
  v8 = v3[46];
  v7 = v3[47];
  memcpy(__src, v4, 0x169uLL);
  memcpy(&__src[368], v3, 0x169uLL);
  memcpy(v21, v4, 0x169uLL);
  if (sub_2144D6590(v21) == 1)
  {
    memcpy(v16, v3, 0x169uLL);
    if (sub_2144D6590(v16) == 1)
    {
      memcpy(v17, v4, 0x169uLL);
      sub_213FB2E54(__dst, v15, &qword_27C909F60, &qword_2146F5B98);
      sub_213FB2E54(v20, v15, &qword_27C909F60, &qword_2146F5B98);
      sub_213FB2DF4(v17, &qword_27C909F60, &qword_2146F5B98);
      goto LABEL_9;
    }

    sub_213FB2E54(__dst, v17, &qword_27C909F60, &qword_2146F5B98);
    sub_213FB2E54(v20, v17, &qword_27C909F60, &qword_2146F5B98);
    goto LABEL_7;
  }

  memcpy(v17, v4, 0x169uLL);
  memcpy(v15, v4, 0x169uLL);
  memcpy(v16, v3, 0x169uLL);
  if (sub_2144D6590(v16) == 1)
  {
    memcpy(v14, v4, 0x169uLL);
    sub_213FB2E54(__dst, v13, &qword_27C909F60, &qword_2146F5B98);
    sub_213FB2E54(v20, v13, &qword_27C909F60, &qword_2146F5B98);
    sub_213FB2E54(v17, v13, &qword_27C909F60, &qword_2146F5B98);
    sub_21430B3E4(v14);
LABEL_7:
    memcpy(v16, __src, 0x2D9uLL);
    sub_213FB2DF4(v16, &qword_27C914918, &unk_214755D60);
LABEL_11:
    v10 = 0;
    return v10 & 1;
  }

  memcpy(v14, v3, 0x169uLL);
  sub_213FB2E54(__dst, v13, &qword_27C909F60, &qword_2146F5B98);
  sub_213FB2E54(v20, v13, &qword_27C909F60, &qword_2146F5B98);
  sub_213FB2E54(v17, v13, &qword_27C909F60, &qword_2146F5B98);
  v9 = sub_2144D1844(v15, v14);
  memcpy(v12, v14, 0x169uLL);
  sub_21430B3E4(v12);
  memcpy(v13, v15, 0x169uLL);
  sub_21430B3E4(v13);
  memcpy(v14, v4, 0x169uLL);
  sub_213FB2DF4(v14, &qword_27C909F60, &qword_2146F5B98);
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((sub_2143D6EA8(v6, v8) & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = sub_2143D6FD4(v5, v7);
  return v10 & 1;
}

uint64_t sub_2144D3214(void *a1, void *a2)
{
  v4 = type metadata accessor for CloudKitSharingToken();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v29 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917540, &unk_214751950);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v18)
  {
    goto LABEL_17;
  }

  v19 = a1[5];
  if (v19 != 1)
  {
    v20 = a2[5];
    if (v20 != 1)
    {
      v21 = a1[4];
      if (v19)
      {
        if (!v20)
        {
          goto LABEL_17;
        }

        if (v21 != a2[4] || v19 != v20)
        {
          v22 = a1[4];
          if ((sub_2146DA6A8() & 1) == 0)
          {
            goto LABEL_17;
          }
        }

LABEL_20:
        v25 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0) + 24);
        v26 = a1 + v25;
        v27 = *(v13 + 48);
        sub_213FB2E54(v26, v16, &qword_27C9041D8, &qword_2146ED5C0);
        sub_213FB2E54(a2 + v25, &v16[v27], &qword_27C9041D8, &qword_2146ED5C0);
        v28 = *(v5 + 48);
        if (v28(v16, 1, v4) == 1)
        {
          if (v28(&v16[v27], 1, v4) == 1)
          {
            sub_213FB2DF4(v16, &qword_27C9041D8, &qword_2146ED5C0);
            v23 = 1;
            return v23 & 1;
          }
        }

        else
        {
          sub_213FB2E54(v16, v12, &qword_27C9041D8, &qword_2146ED5C0);
          if (v28(&v16[v27], 1, v4) != 1)
          {
            sub_2144D66AC(&v16[v27], v8, type metadata accessor for CloudKitSharingToken);
            v23 = sub_2145AF7C4(v12, v8);
            sub_2144D6848(v8, type metadata accessor for CloudKitSharingToken);
            sub_2144D6848(v12, type metadata accessor for CloudKitSharingToken);
            sub_213FB2DF4(v16, &qword_27C9041D8, &qword_2146ED5C0);
            return v23 & 1;
          }

          sub_2144D6848(v12, type metadata accessor for CloudKitSharingToken);
        }

        sub_213FB2DF4(v16, &qword_27C917540, &unk_214751950);
        v23 = 0;
        return v23 & 1;
      }

      if (!v20)
      {
        sub_213FDC9D0(a2[4], 0);
        sub_213FDC9D0(v21, 0);
        goto LABEL_20;
      }

LABEL_17:
      v23 = 0;
      return v23 & 1;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144D3604(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3 == 1 || (v4 = *(a2 + 24), v4 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v5 = *(a1 + 16);
  if (!v3)
  {
    if (!v4)
    {
      sub_213FDC9D0(*(a2 + 16), 0);
      sub_213FDC9D0(v5, 0);
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (v5 == *(a2 + 16) && v3 == v4)
  {
    return 1;
  }

  v6 = *(a1 + 16);

  return sub_2146DA6A8();
}

uint64_t sub_2144D36F0(void *a1, uint64_t *a2)
{
  v3 = a1[3];
  if (v3 == 1)
  {
    goto LABEL_24;
  }

  v4 = a2[3];
  if (v4 == 1)
  {
    goto LABEL_24;
  }

  v5 = a1[2];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a2[7];
  v9 = a2[8];
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    if (v5 != a2[2] || v3 != v4)
    {
      v10 = a1[2];
      if ((sub_2146DA6A8() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v4)
    {
      return 0;
    }

    sub_213FDC9D0(a2[2], 0);
    sub_213FDC9D0(v5, 0);
  }

  if (v7 == 1 || v9 == 1)
  {
LABEL_24:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  if (!v7)
  {
    if (!v9)
    {
      sub_213FDC9D0(v8, 0);
      sub_213FDC9D0(v6, 0);
      return 1;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  if (v6 == v8 && v7 == v9)
  {
    return 1;
  }

  return sub_2146DA6A8();
}

uint64_t sub_2144D3860(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v5 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v50[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914920, &unk_214755D70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v50[-v16];
  memcpy(v72, v4, 0x189uLL);
  memcpy(v73, v3, 0x189uLL);
  memcpy(v71, v4, 0x189uLL);
  memcpy(&v71[25], v3, 0x189uLL);
  memcpy(v74, v4, 0x189uLL);
  if (sub_2144D65A8(v74) == 1)
  {
    memcpy(v69, &v71[25], 0x189uLL);
    if (sub_2144D65A8(v69) == 1)
    {
      v53 = v9;
      v54 = v13;
      memcpy(v70, v71, 0x189uLL);
      sub_213FB2E54(v72, v68, &qword_27C909E50, &unk_2146F5B30);
      sub_213FB2E54(v73, v68, &qword_27C909E50, &unk_2146F5B30);
      sub_213FB2DF4(v70, &qword_27C909E50, &unk_2146F5B30);
      goto LABEL_12;
    }

    sub_213FB2E54(v72, v70, &qword_27C909E50, &unk_2146F5B30);
    sub_213FB2E54(v73, v70, &qword_27C909E50, &unk_2146F5B30);
LABEL_7:
    memcpy(v69, v71, 0x319uLL);
    v18 = &unk_27C914928;
    v19 = &unk_214755D80;
    v20 = v69;
    goto LABEL_8;
  }

  memcpy(v70, v71, 0x189uLL);
  memcpy(v68, v71, 0x189uLL);
  memcpy(v69, &v71[25], 0x189uLL);
  if (sub_2144D65A8(v69) == 1)
  {
    memcpy(v57, v71, 0x189uLL);
    sub_213FB2E54(v72, v56, &qword_27C909E50, &unk_2146F5B30);
    sub_213FB2E54(v73, v56, &qword_27C909E50, &unk_2146F5B30);
    sub_213FB2E54(v70, v56, &qword_27C909E50, &unk_2146F5B30);
    sub_2144D65C0(v57);
    goto LABEL_7;
  }

  v53 = v9;
  v54 = v13;
  memcpy(v57, &v71[25], 0x189uLL);
  sub_213FB2E54(v72, v56, &qword_27C909E50, &unk_2146F5B30);
  sub_213FB2E54(v73, v56, &qword_27C909E50, &unk_2146F5B30);
  sub_213FB2E54(v70, v56, &qword_27C909E50, &unk_2146F5B30);
  v23 = sub_2144D2ECC(v68);
  memcpy(v55, v57, 0x189uLL);
  sub_2144D65C0(v55);
  memcpy(v56, v68, 0x189uLL);
  sub_2144D65C0(v56);
  memcpy(v57, v71, 0x189uLL);
  sub_213FB2DF4(v57, &qword_27C909E50, &unk_2146F5B30);
  if ((v23 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  v24 = *(v4 + 424);
  if (v24 != 1)
  {
    v25 = *(v3 + 424);
    if (v25 != 1)
    {
      v26 = *(v4 + 416);
      if (v24)
      {
        if (!v25)
        {
          goto LABEL_9;
        }

        if (v26 != *(v3 + 416) || v24 != v25)
        {
          v27 = *(v4 + 416);
          if ((sub_2146DA6A8() & 1) == 0)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        if (v25)
        {
          goto LABEL_9;
        }

        sub_213FDC9D0(*(v3 + 416), 0);
        sub_213FDC9D0(v26, 0);
      }

      v28 = *(v4 + 488);
      v70[2] = *(v4 + 472);
      v70[3] = v28;
      *(&v70[3] + 9) = *(v4 + 497);
      v29 = *(v4 + 440);
      v70[1] = *(v4 + 456);
      v70[0] = v29;
      v30 = *(v3 + 488);
      v69[2] = *(v3 + 472);
      v69[3] = v30;
      *(&v69[3] + 9) = *(v3 + 497);
      v31 = *(v3 + 440);
      v69[1] = *(v3 + 456);
      v69[0] = v31;
      v32 = *&v70[0];
      v33 = *(v4 + 496);
      v65 = *(v4 + 480);
      v66 = v33;
      v67 = *(v4 + 512);
      v34 = *(v4 + 448);
      v64 = *(v4 + 464);
      v63 = v34;
      v35 = *&v69[0];
      v36 = *(v3 + 496);
      v60 = *(v3 + 480);
      v61 = v36;
      v62 = *(v3 + 512);
      v37 = *(v3 + 448);
      v59 = *(v3 + 464);
      v58 = v37;
      if (*&v70[0])
      {
        v52 = v6;
        *&v71[0] = *&v70[0];
        v38 = *(v4 + 464);
        *(v71 + 8) = *(v4 + 448);
        *(&v71[1] + 8) = v38;
        v39 = *(v4 + 496);
        *(&v71[2] + 8) = *(v4 + 480);
        *(&v71[3] + 8) = v39;
        BYTE8(v71[4]) = *(v4 + 512);
        v68[2] = v71[2];
        v68[3] = v71[3];
        *(&v68[3] + 9) = *(&v71[3] + 9);
        v68[1] = v71[1];
        v68[0] = v71[0];
        if (*&v69[0])
        {
          v40 = *(v3 + 448);
          *(&v57[1] + 8) = *(v3 + 464);
          v41 = *(v3 + 496);
          *(&v57[2] + 8) = *(v3 + 480);
          *(&v57[3] + 8) = v41;
          BYTE8(v57[4]) = *(v3 + 512);
          *(v57 + 8) = v40;
          *&v57[0] = *&v69[0];
          v51 = sub_2144D36F0(v68, v57);
          v55[2] = v57[2];
          v55[3] = v57[3];
          *(&v55[3] + 9) = *(&v57[3] + 9);
          v55[0] = v57[0];
          v55[1] = v57[1];
          sub_213FB2E54(v70, v56, &qword_27C909E68, &qword_214761070);
          sub_213FB2E54(v69, v56, &qword_27C909E68, &qword_214761070);
          sub_213FB2E54(v71, v56, &qword_27C909E68, &qword_214761070);
          sub_21430B28C(v55);
          v56[2] = v68[2];
          v56[3] = v68[3];
          *(&v56[3] + 9) = *(&v68[3] + 9);
          v56[0] = v68[0];
          v56[1] = v68[1];
          sub_21430B28C(v56);
          *&v57[0] = v32;
          *(&v57[1] + 8) = v64;
          *(&v57[2] + 8) = v65;
          *(&v57[3] + 8) = v66;
          BYTE8(v57[4]) = v67;
          *(v57 + 8) = v63;
          sub_213FB2DF4(v57, &qword_27C909E68, &qword_214761070);
          v6 = v52;
          if ((v51 & 1) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_31;
        }

        v57[2] = v71[2];
        v57[3] = v71[3];
        *(&v57[3] + 9) = *(&v71[3] + 9);
        v57[0] = v71[0];
        v57[1] = v71[1];
        sub_213FB2E54(v70, v56, &qword_27C909E68, &qword_214761070);
        sub_213FB2E54(v69, v56, &qword_27C909E68, &qword_214761070);
        sub_213FB2E54(v71, v56, &qword_27C909E68, &qword_214761070);
        sub_21430B28C(v57);
      }

      else
      {
        if (!*&v69[0])
        {
          *&v71[0] = 0;
          v42 = *(v4 + 448);
          *(&v71[1] + 8) = *(v4 + 464);
          v43 = *(v4 + 496);
          *(&v71[2] + 8) = *(v4 + 480);
          *(&v71[3] + 8) = v43;
          BYTE8(v71[4]) = *(v4 + 512);
          *(v71 + 8) = v42;
          sub_213FB2E54(v70, v68, &qword_27C909E68, &qword_214761070);
          sub_213FB2E54(v69, v68, &qword_27C909E68, &qword_214761070);
          sub_213FB2DF4(v71, &qword_27C909E68, &qword_214761070);
LABEL_31:
          v44 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0) + 28);
          v45 = *(v14 + 48);
          sub_213FB2E54(v4 + v44, v17, &qword_27C909E38, &qword_2146F5B20);
          sub_213FB2E54(v3 + v44, &v17[v45], &qword_27C909E38, &qword_2146F5B20);
          v46 = *(v6 + 48);
          if (v46(v17, 1, v5) == 1)
          {
            if (v46(&v17[v45], 1, v5) == 1)
            {
              sub_213FB2DF4(v17, &qword_27C909E38, &qword_2146F5B20);
              v21 = 1;
              return v21 & 1;
            }
          }

          else
          {
            v47 = v54;
            sub_213FB2E54(v17, v54, &qword_27C909E38, &qword_2146F5B20);
            if (v46(&v17[v45], 1, v5) != 1)
            {
              v48 = &v17[v45];
              v49 = v53;
              sub_2144D66AC(v48, v53, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
              v21 = sub_2144D3214(v47, v49);
              sub_2144D6848(v49, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
              sub_2144D6848(v47, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
              sub_213FB2DF4(v17, &qword_27C909E38, &qword_2146F5B20);
              return v21 & 1;
            }

            sub_2144D6848(v47, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
          }

          v18 = &qword_27C914920;
          v19 = &unk_214755D70;
          v20 = v17;
          goto LABEL_8;
        }

        sub_213FB2E54(v70, v71, &qword_27C909E68, &qword_214761070);
        sub_213FB2E54(v69, v71, &qword_27C909E68, &qword_214761070);
      }

      *(&v71[1] + 8) = v64;
      *(&v71[2] + 8) = v65;
      *(&v71[3] + 8) = v66;
      *(v71 + 8) = v63;
      *(&v71[6] + 8) = v59;
      *(&v71[7] + 8) = v60;
      *(&v71[8] + 8) = v61;
      *&v71[0] = v32;
      BYTE8(v71[4]) = v67;
      *&v71[5] = v35;
      BYTE8(v71[9]) = v62;
      *(&v71[5] + 8) = v58;
      v18 = &unk_27C914930;
      v19 = &unk_214755D90;
      v20 = v71;
LABEL_8:
      sub_213FB2DF4(v20, v18, v19);
LABEL_9:
      v21 = 0;
      return v21 & 1;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144D42C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914938, &qword_214755DA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  v18 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = *(a1 + 40);
  if (v19 == 1)
  {
    goto LABEL_55;
  }

  v20 = *(a2 + 40);
  if (v20 == 1)
  {
    goto LABEL_55;
  }

  v21 = *(a1 + 32);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    if (v21 != *(a2 + 32) || v19 != v20)
    {
      v22 = v15;
      v23 = *(a1 + 32);
      v24 = sub_2146DA6A8();
      v15 = v22;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v20)
    {
      return 0;
    }

    v25 = v15;
    sub_213FDC9D0(*(a2 + 32), 0);
    sub_213FDC9D0(v21, 0);
    v15 = v25;
  }

  v26 = *(a1 + 80);
  if (v26 == 1)
  {
    goto LABEL_55;
  }

  v27 = *(a2 + 80);
  if (v27 == 1)
  {
    goto LABEL_55;
  }

  v28 = *(a1 + 72);
  if (v26)
  {
    if (!v27)
    {
      return 0;
    }

    if (v28 != *(a2 + 72) || v26 != v27)
    {
      v29 = v15;
      v30 = *(a1 + 72);
      v31 = sub_2146DA6A8();
      v15 = v29;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v27)
    {
      return 0;
    }

    v32 = v15;
    sub_213FDC9D0(*(a2 + 72), 0);
    sub_213FDC9D0(v28, 0);
    v15 = v32;
  }

  v33 = *(a1 + 120);
  if (v33 == 1)
  {
    goto LABEL_55;
  }

  v34 = *(a2 + 120);
  if (v34 == 1)
  {
    goto LABEL_55;
  }

  v35 = *(a1 + 112);
  if (v33)
  {
    if (!v34)
    {
      return 0;
    }

    v36 = v15;
    if (v35 != *(a2 + 112) || v33 != v34)
    {
      v37 = *(a1 + 112);
      if ((sub_2146DA6A8() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v34)
    {
      return 0;
    }

    v36 = v15;
    sub_213FDC9D0(*(a2 + 112), 0);
    sub_213FDC9D0(v35, 0);
  }

  v55 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  v38 = *(v55 + 32);
  v39 = *(v36 + 48);
  sub_213FB2E54(a1 + v38, v17, &qword_27C909DB8, &qword_2146F5AF0);
  v40 = a2 + v38;
  v41 = v39;
  sub_213FB2E54(v40, &v17[v39], &qword_27C909DB8, &qword_2146F5AF0);
  v42 = *(v5 + 48);
  if (v42(v17, 1, v4) != 1)
  {
    sub_213FB2E54(v17, v12, &qword_27C909DB8, &qword_2146F5AF0);
    if (v42(&v17[v41], 1, v4) == 1)
    {
      sub_2144D6848(v12, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
      goto LABEL_42;
    }

    sub_2144D66AC(&v17[v41], v8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    v44 = sub_2144D3860(v12);
    sub_2144D6848(v8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    sub_2144D6848(v12, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    sub_213FB2DF4(v17, &qword_27C909DB8, &qword_2146F5AF0);
    if (v44)
    {
      goto LABEL_45;
    }

    return 0;
  }

  if (v42(&v17[v41], 1, v4) != 1)
  {
LABEL_42:
    sub_213FB2DF4(v17, &qword_27C914938, &qword_214755DA0);
    return 0;
  }

  sub_213FB2DF4(v17, &qword_27C909DB8, &qword_2146F5AF0);
LABEL_45:
  v45 = *(v55 + 36);
  v46 = a1 + v45;
  if (*(a1 + v45 + 21) & 1) != 0 || (v47 = a2 + v45, (*(v47 + 21)))
  {
LABEL_55:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v48 = *(v46 + 20);
  v49 = *(v46 + 16);
  v50 = v49 | (v48 << 32);
  v51 = *(v47 + 20);
  if ((v50 & 0x100000000) != 0)
  {
    return v51 & 1;
  }

  v52 = *(v47 + 16) | (v51 << 32);
  return (v52 & 0x100000000) == 0 && v49 == v52;
}

uint64_t sub_2144D47E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914938, &qword_214755DA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v58 - v16;
  v18 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = *(a1 + 40);
  if (v19 == 1)
  {
    goto LABEL_59;
  }

  v20 = *(a2 + 40);
  if (v20 == 1)
  {
    goto LABEL_59;
  }

  v21 = *(a1 + 32);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    if (v21 != *(a2 + 32) || v19 != v20)
    {
      v22 = v15;
      v23 = *(a1 + 32);
      v24 = sub_2146DA6A8();
      v15 = v22;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v20)
    {
      return 0;
    }

    v25 = v15;
    sub_213FDC9D0(*(a2 + 32), 0);
    sub_213FDC9D0(v21, 0);
    v15 = v25;
  }

  v26 = *(a1 + 80);
  if (v26 == 1)
  {
    goto LABEL_59;
  }

  v27 = *(a2 + 80);
  if (v27 == 1)
  {
    goto LABEL_59;
  }

  v28 = *(a1 + 72);
  if (v26)
  {
    if (!v27)
    {
      return 0;
    }

    if (v28 != *(a2 + 72) || v26 != v27)
    {
      v29 = v15;
      v30 = *(a1 + 72);
      v31 = sub_2146DA6A8();
      v15 = v29;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v27)
    {
      return 0;
    }

    v32 = v15;
    sub_213FDC9D0(*(a2 + 72), 0);
    sub_213FDC9D0(v28, 0);
    v15 = v32;
  }

  v33 = *(a1 + 120);
  if (v33 == 1)
  {
    goto LABEL_59;
  }

  v34 = *(a2 + 120);
  if (v34 == 1)
  {
    goto LABEL_59;
  }

  v35 = *(a1 + 112);
  if (v33)
  {
    if (!v34)
    {
      return 0;
    }

    if (v35 != *(a2 + 112) || v33 != v34)
    {
      v36 = v15;
      v37 = *(a1 + 112);
      v38 = sub_2146DA6A8();
      v15 = v36;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v34)
    {
      return 0;
    }

    v39 = v15;
    sub_213FDC9D0(*(a2 + 112), 0);
    sub_213FDC9D0(v35, 0);
    v15 = v39;
  }

  v40 = *(a1 + 129);
  v41 = *(a2 + 129);
  if (v40 == 5)
  {
    if (v41 != 5)
    {
      return 0;
    }
  }

  else if (v40 != v41)
  {
    return 0;
  }

  v42 = v15;
  v58 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
  v43 = *(v58 + 36);
  v44 = *(v42 + 48);
  sub_213FB2E54(a1 + v43, v17, &qword_27C909DB8, &qword_2146F5AF0);
  v59 = v44;
  sub_213FB2E54(a2 + v43, &v17[v44], &qword_27C909DB8, &qword_2146F5AF0);
  v45 = *(v5 + 48);
  if (v45(v17, 1, v4) != 1)
  {
    sub_213FB2E54(v17, v12, &qword_27C909DB8, &qword_2146F5AF0);
    v46 = v59;
    if (v45(&v17[v59], 1, v4) == 1)
    {
      sub_2144D6848(v12, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
      goto LABEL_46;
    }

    sub_2144D66AC(&v17[v46], v8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    v48 = sub_2144D3860(v12);
    sub_2144D6848(v8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    sub_2144D6848(v12, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    sub_213FB2DF4(v17, &qword_27C909DB8, &qword_2146F5AF0);
    if (v48)
    {
      goto LABEL_49;
    }

    return 0;
  }

  if (v45(&v17[v59], 1, v4) != 1)
  {
LABEL_46:
    sub_213FB2DF4(v17, &qword_27C914938, &qword_214755DA0);
    return 0;
  }

  sub_213FB2DF4(v17, &qword_27C909DB8, &qword_2146F5AF0);
LABEL_49:
  v49 = *(v58 + 40);
  v50 = a1 + v49;
  if (*(a1 + v49 + 21) & 1) != 0 || (v51 = a2 + v49, (*(v51 + 21)))
  {
LABEL_59:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v52 = *(v50 + 20);
  v53 = *(v50 + 16);
  v54 = v53 | (v52 << 32);
  v55 = *(v51 + 20);
  if ((v54 & 0x100000000) != 0)
  {
    return v55 & 1;
  }

  v56 = *(v51 + 16) | (v55 << 32);
  return (v56 & 0x100000000) == 0 && v53 == v56;
}

uint64_t sub_2144D4D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v52 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914920, &unk_214755D70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - v15;
  v17 = *(a1 + 24);
  if (v17 == 1)
  {
    goto LABEL_60;
  }

  v18 = *(a2 + 24);
  if (v18 == 1)
  {
    goto LABEL_60;
  }

  v19 = *(a1 + 16);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (v19 != *(a2 + 16) || v17 != v18)
    {
      v20 = *(a1 + 16);
      if ((sub_2146DA6A8() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v18)
    {
      return 0;
    }

    sub_213FDC9D0(*(a2 + 16), 0);
    sub_213FDC9D0(v19, 0);
  }

  v21 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (!*(a2 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v22 = *(a1 + 80);
  if (v22 == 1)
  {
    goto LABEL_60;
  }

  v23 = *(a2 + 80);
  if (v23 == 1)
  {
    goto LABEL_60;
  }

  v24 = *(a1 + 72);
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    if (v24 != *(a2 + 72) || v22 != v23)
    {
      v25 = *(a1 + 72);
      if ((sub_2146DA6A8() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v23)
    {
      return 0;
    }

    sub_213FDC9D0(*(a2 + 72), 0);
    sub_213FDC9D0(v24, 0);
  }

  v26 = *(a1 + 89);
  v27 = *(a2 + 89);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v27 ^ v26) & 1) != 0)
  {
    return 0;
  }

  v53 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  v28 = *(v53 + 32);
  v29 = *(v13 + 48);
  sub_213FB2E54(a1 + v28, v16, &qword_27C909E38, &qword_2146F5B20);
  v30 = a2 + v28;
  v31 = v29;
  sub_213FB2E54(v30, &v16[v29], &qword_27C909E38, &qword_2146F5B20);
  v32 = *(v5 + 48);
  if (v32(v16, 1, v4) == 1)
  {
    if (v32(&v16[v31], 1, v4) == 1)
    {
      sub_213FB2DF4(v16, &qword_27C909E38, &qword_2146F5B20);
      goto LABEL_39;
    }

LABEL_37:
    sub_213FB2DF4(v16, &qword_27C914920, &unk_214755D70);
    return 0;
  }

  sub_213FB2E54(v16, v12, &qword_27C909E38, &qword_2146F5B20);
  if (v32(&v16[v31], 1, v4) == 1)
  {
    sub_2144D6848(v12, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
    goto LABEL_37;
  }

  sub_2144D66AC(&v16[v31], v8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
  v34 = sub_2144D3214(v12, v8);
  sub_2144D6848(v8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
  sub_2144D6848(v12, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
  sub_213FB2DF4(v16, &qword_27C909E38, &qword_2146F5B20);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  v35 = v53;
  v36 = *(v53 + 36);
  v37 = a1 + v36;
  v38 = *(a1 + v36 + 24);
  if (v38 == 1)
  {
    goto LABEL_60;
  }

  v39 = a2 + v36;
  v40 = *(v39 + 24);
  if (v40 == 1)
  {
    goto LABEL_60;
  }

  v41 = *(v37 + 16);
  if (!v38)
  {
    if (!v40)
    {
      sub_213FDC9D0(*(v39 + 16), 0);
      sub_213FDC9D0(v41, 0);
      goto LABEL_50;
    }

    return 0;
  }

  if (!v40)
  {
    return 0;
  }

  if (v41 != *(v39 + 16) || v38 != v40)
  {
    v42 = *(v37 + 16);
    if ((sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

LABEL_50:
  v43 = *(v35 + 40);
  v44 = a1 + v43;
  if (*(a1 + v43 + 21) & 1) != 0 || (v45 = a2 + v43, (*(v45 + 21)))
  {
LABEL_60:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v46 = *(v44 + 20);
  v47 = *(v44 + 16);
  v48 = v47 | (v46 << 32);
  v49 = *(v45 + 20);
  if ((v48 & 0x100000000) != 0)
  {
    return v49 & 1;
  }

  v50 = *(v45 + 16) | (v49 << 32);
  return (v50 & 0x100000000) == 0 && v47 == v50;
}

uint64_t sub_2144D5280(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (v3 == 1 || v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  if (!v3)
  {
    if (!v6)
    {
      sub_213FDC9D0(v5, 0);
      sub_213FDC9D0(v4, 0);
      return 1;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  if (v4 == v5 && v3 == v6)
  {
    return 1;
  }

  v8 = *(a1 + 32);

  return sub_2146DA6A8();
}

uint64_t sub_2144D538C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v128 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  v135 = *(v128 - 8);
  v4 = *(v135 + 64);
  MEMORY[0x28223BE20](v128);
  v6 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907428, &unk_214755800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v136 = &v123 - v9;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914940, &qword_214755DA8);
  v10 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v129 = &v123 - v11;
  v12 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
  v132 = *(v12 - 8);
  v133 = v12;
  v13 = *(v132 + 64);
  MEMORY[0x28223BE20](v12);
  v126 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907420, &unk_2146F4A40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v130 = &v123 - v17;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914948, &qword_214755DB0);
  v18 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v134 = &v123 - v19;
  v20 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907418, &unk_214755810);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v123 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914950, &qword_214755DB8);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v123 - v31;
  v138 = a1;
  v33 = *a1;
  v34 = *a2;
  if (v33 == 8)
  {
    if (v34 != 8)
    {
      goto LABEL_26;
    }
  }

  else if (v33 != v34)
  {
    goto LABEL_26;
  }

  v124 = v6;
  v35 = type metadata accessor for IDSActivitySharingInvitation(0);
  v137 = a2;
  v125 = v35;
  v36 = *(v35 + 20);
  v37 = *(v29 + 48);
  sub_213FB2E54(&v138[v36], v32, &qword_27C907418, &unk_214755810);
  v38 = &v137[v36];
  v39 = v137;
  sub_213FB2E54(v38, &v32[v37], &qword_27C907418, &unk_214755810);
  v40 = *(v21 + 48);
  if (v40(v32, 1, v20) == 1)
  {
    if (v40(&v32[v37], 1, v20) == 1)
    {
      sub_213FB2DF4(v32, &qword_27C907418, &unk_214755810);
      goto LABEL_12;
    }

LABEL_10:
    v41 = &qword_27C914950;
    v42 = &qword_214755DB8;
    v43 = v32;
LABEL_25:
    sub_213FB2DF4(v43, v41, v42);
    goto LABEL_26;
  }

  sub_213FB2E54(v32, v28, &qword_27C907418, &unk_214755810);
  if (v40(&v32[v37], 1, v20) == 1)
  {
    sub_2144D6848(v28, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
    goto LABEL_10;
  }

  sub_2144D66AC(&v32[v37], v24, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
  v44 = sub_2144D42C4(v28, v24);
  sub_2144D6848(v24, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
  sub_2144D6848(v28, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
  sub_213FB2DF4(v32, &qword_27C907418, &unk_214755810);
  if ((v44 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  v45 = v125;
  v46 = *(v125 + 24);
  v47 = *(v131 + 48);
  v48 = v39;
  v49 = v134;
  sub_213FB2E54(&v138[v46], v134, &qword_27C907420, &unk_2146F4A40);
  v50 = v49;
  sub_213FB2E54(v48 + v46, v49 + v47, &qword_27C907420, &unk_2146F4A40);
  v51 = v133;
  v52 = *(v132 + 48);
  if (v52(v49, 1, v133) == 1)
  {
    v53 = v52(v49 + v47, 1, v51);
    v55 = v135;
    v54 = v136;
    if (v53 == 1)
    {
      sub_213FB2DF4(v50, &qword_27C907420, &unk_2146F4A40);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v56 = v130;
  sub_213FB2E54(v49, v130, &qword_27C907420, &unk_2146F4A40);
  v57 = v52(v49 + v47, 1, v51);
  v55 = v135;
  v54 = v136;
  if (v57 == 1)
  {
    sub_2144D6848(v56, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
LABEL_17:
    v41 = &qword_27C914948;
    v42 = &qword_214755DB0;
    v43 = v50;
    goto LABEL_25;
  }

  v58 = v126;
  sub_2144D66AC(v50 + v47, v126, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
  v59 = sub_2144D47E8(v56, v58);
  sub_2144D6848(v58, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
  sub_2144D6848(v56, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
  sub_213FB2DF4(v50, &qword_27C907420, &unk_2146F4A40);
  if ((v59 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  v60 = *(v45 + 28);
  v61 = *(v127 + 48);
  v62 = v129;
  sub_213FB2E54(&v138[v60], v129, &qword_27C907428, &unk_214755800);
  v63 = &v137[v60];
  v64 = v137;
  v65 = v62;
  sub_213FB2E54(v63, v62 + v61, &qword_27C907428, &unk_214755800);
  v66 = *(v55 + 48);
  v67 = v62;
  v68 = v128;
  if (v66(v67, 1, v128) == 1)
  {
    if (v66(v65 + v61, 1, v68) == 1)
    {
      sub_213FB2DF4(v65, &qword_27C907428, &unk_214755800);
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  sub_213FB2E54(v65, v54, &qword_27C907428, &unk_214755800);
  if (v66(v65 + v61, 1, v68) == 1)
  {
    sub_2144D6848(v54, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
LABEL_24:
    v41 = &qword_27C914940;
    v42 = &qword_214755DA8;
    v43 = v65;
    goto LABEL_25;
  }

  v71 = v65 + v61;
  v72 = v124;
  sub_2144D66AC(v71, v124, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  v73 = sub_2144D4D48(v54, v72);
  sub_2144D6848(v72, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  sub_2144D6848(v54, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  sub_213FB2DF4(v65, &qword_27C907428, &unk_214755800);
  if ((v73 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_29:
  v74 = *(v45 + 32);
  v75 = v64;
  v77 = *&v138[v74];
  v76 = *&v138[v74 + 8];
  v79 = *&v138[v74 + 16];
  v78 = *&v138[v74 + 24];
  v80 = v138[v74 + 32];
  v81 = v75 + v74;
  v82 = *v81;
  v83 = *(v81 + 8);
  v85 = *(v81 + 16);
  v84 = *(v81 + 24);
  v86 = *(v81 + 32);
  LODWORD(v136) = v86;
  if (!v77)
  {
    sub_21431326C(0, v76, v79, v78);
    if (!v82)
    {
      sub_21431326C(0, v83, v85, v84);
      sub_214313220(0, v76, v79, v78);
      goto LABEL_38;
    }

    sub_21431326C(v82, v83, v85, v84);
LABEL_36:
    sub_214313220(v77, v76, v79, v78);
    sub_214313220(v82, v83, v85, v84);
    goto LABEL_26;
  }

  *v148 = v77;
  *&v148[8] = v76;
  *&v148[16] = v79;
  *&v148[24] = v78;
  v148[32] = v80;
  if (!v82)
  {
    v138 = v84;
    sub_21431326C(v77, v76, v79, v78);
    v84 = v138;
    sub_21431326C(0, v83, v85, v138);
    sub_21431326C(v77, v76, v79, v78);

    sub_213FDC6D0(v79, v78);
    goto LABEL_36;
  }

  *&v167 = v82;
  *(&v167 + 1) = v83;
  *&v168 = v85;
  *(&v168 + 1) = v84;
  LOBYTE(v169) = v86;
  LODWORD(v135) = sub_2144D3604(v148, &v167);
  v134 = v168;
  v132 = *(&v167 + 1);
  v133 = *(&v168 + 1);
  sub_21431326C(v77, v76, v79, v78);
  sub_21431326C(v82, v83, v85, v84);
  sub_21431326C(v77, v76, v79, v78);

  sub_213FDC6D0(v134, v133);
  v87 = *&v148[16];
  v88 = *&v148[24];

  sub_213FDC6D0(v87, v88);
  sub_214313220(v77, v76, v79, v78);
  if ((v135 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_38:
  v89 = v125;
  v90 = &v138[*(v125 + 36)];
  v91 = *(v90 + 3);
  v165[2] = *(v90 + 2);
  v166[0] = v91;
  *(v166 + 9) = *(v90 + 57);
  v92 = *(v90 + 1);
  v165[0] = *v90;
  v165[1] = v92;
  v93 = &v137[*(v125 + 36)];
  v94 = *(v93 + 1);
  v95 = *(v93 + 2);
  *(v170 + 9) = *(v93 + 57);
  v96 = *(v93 + 3);
  v169 = v95;
  v170[0] = v96;
  v167 = *v93;
  v168 = v94;
  v97 = *&v165[0];
  v98 = *(v90 + 24);
  v99 = *(v90 + 56);
  v162 = *(v90 + 40);
  v163 = v99;
  v164 = v90[72];
  v160 = *(v90 + 8);
  v161 = v98;
  v100 = v167;
  v101 = *(v93 + 24);
  v102 = *(v93 + 56);
  v157 = *(v93 + 40);
  v158 = v102;
  v159 = v93[72];
  v155 = *(v93 + 8);
  v156 = v101;
  if (*&v165[0])
  {
    *v148 = *&v165[0];
    *&v148[8] = *(v90 + 8);
    *&v148[24] = *(v90 + 24);
    *&v148[40] = *(v90 + 40);
    *&v148[56] = *(v90 + 56);
    v148[72] = v90[72];
    v146 = *&v148[32];
    v147[0] = *&v148[48];
    *(v147 + 9) = *&v148[57];
    v144 = *v148;
    v145 = *&v148[16];
    if (v167)
    {
      *&v143[24] = *(v93 + 24);
      *&v143[40] = *(v93 + 40);
      *&v143[56] = *(v93 + 56);
      v143[72] = v93[72];
      *&v143[8] = *(v93 + 8);
      *v143 = v167;
      v103 = sub_2144D36F0(&v144, v143);
      v139[2] = *&v143[32];
      v140[0] = *&v143[48];
      *(v140 + 9) = *&v143[57];
      v139[0] = *v143;
      v139[1] = *&v143[16];
      sub_213FB2E54(v165, v141, &qword_27C9074A0, &qword_2146F4A68);
      sub_213FB2E54(&v167, v141, &qword_27C9074A0, &qword_2146F4A68);
      sub_213FB2E54(v148, v141, &qword_27C9074A0, &qword_2146F4A68);
      sub_21430ABD0(v139);
      v141[2] = v146;
      v142[0] = v147[0];
      *(v142 + 9) = *(v147 + 9);
      v141[0] = v144;
      v141[1] = v145;
      sub_21430ABD0(v141);
      *v143 = v97;
      *&v143[24] = v161;
      *&v143[40] = v162;
      *&v143[56] = v163;
      v143[72] = v164;
      *&v143[8] = v160;
      sub_213FB2DF4(v143, &qword_27C9074A0, &qword_2146F4A68);
      if ((v103 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_47;
    }

    *&v143[32] = *&v148[32];
    *&v143[48] = *&v148[48];
    *&v143[57] = *&v148[57];
    *v143 = *v148;
    *&v143[16] = *&v148[16];
    sub_213FB2E54(v165, v141, &qword_27C9074A0, &qword_2146F4A68);
    sub_213FB2E54(&v167, v141, &qword_27C9074A0, &qword_2146F4A68);
    sub_213FB2E54(v148, v141, &qword_27C9074A0, &qword_2146F4A68);
    sub_21430ABD0(v143);
    goto LABEL_45;
  }

  if (v167)
  {
    sub_213FB2E54(v165, v148, &qword_27C9074A0, &qword_2146F4A68);
    sub_213FB2E54(&v167, v148, &qword_27C9074A0, &qword_2146F4A68);
LABEL_45:
    *&v148[24] = v161;
    *&v148[40] = v162;
    *&v148[56] = v163;
    *&v148[8] = v160;
    v151 = v156;
    v152 = v157;
    v153 = v158;
    *v148 = v97;
    v148[72] = v164;
    v149 = v100;
    v154 = v159;
    v150 = v155;
    v41 = &unk_27C914958;
    v42 = &unk_214755DC0;
    v43 = v148;
    goto LABEL_25;
  }

  *v148 = 0;
  *&v148[24] = *(v90 + 24);
  *&v148[40] = *(v90 + 40);
  *&v148[56] = *(v90 + 56);
  v148[72] = v90[72];
  *&v148[8] = *(v90 + 8);
  sub_213FB2E54(v165, &v144, &qword_27C9074A0, &qword_2146F4A68);
  sub_213FB2E54(&v167, &v144, &qword_27C9074A0, &qword_2146F4A68);
  sub_213FB2DF4(v148, &qword_27C9074A0, &qword_2146F4A68);
LABEL_47:
  v104 = *(v89 + 40);
  v106 = *&v138[v104];
  v105 = *&v138[v104 + 8];
  v108 = *&v138[v104 + 16];
  v107 = *&v138[v104 + 24];
  v110 = *&v138[v104 + 32];
  v109 = *&v138[v104 + 40];
  v111 = v138[v104 + 48];
  v112 = &v137[v104];
  v114 = *v112;
  v113 = *(v112 + 1);
  v116 = *(v112 + 2);
  v115 = *(v112 + 3);
  v118 = *(v112 + 4);
  v117 = *(v112 + 5);
  LODWORD(v138) = v112[48];
  v136 = v118;
  v137 = v117;
  v134 = v114;
  v135 = v115;
  v133 = v113;
  if (v108)
  {
    *v148 = v106;
    *&v148[8] = v105;
    *&v148[16] = v108;
    *&v148[24] = v107;
    *&v148[32] = v110;
    *&v148[40] = v109;
    v148[48] = v111;
    if (v116)
    {
      *&v144 = v114;
      BYTE8(v144) = v113 & 1;
      *&v145 = v116;
      *(&v145 + 1) = v115;
      *&v146 = v118;
      *(&v146 + 1) = v117;
      LOBYTE(v147[0]) = v138;
      v69 = sub_2144D5280(v148, &v144);
      v132 = v146;
      v130 = *(&v145 + 1);
      v131 = *(&v146 + 1);
      sub_2144D6614(v106, v105, v108, v107, v110, v109);
      sub_2144D6614(v134, v133, v116, v135, v136, v137);
      sub_2144D6614(v106, v105, v108, v107, v110, v109);

      sub_213FDC6D0(v132, v131);
      v119 = *&v148[32];
      LODWORD(v138) = v111;
      v120 = *&v148[40];

      sub_213FDC6D0(v119, v120);
      sub_2144D6660(v106, v105, v108, v107, v110, v109);
      return v69 & 1;
    }

    sub_2144D6614(v106, v105, v108, v107, v110, v109);
    v122 = v114;
    v121 = v133;
    sub_2144D6614(v122, v133, 0, v135, v136, v137);
    sub_2144D6614(v106, v105, v108, v107, v110, v109);

    sub_213FDC6D0(v110, v109);
  }

  else
  {
    sub_2144D6614(v106, v105, 0, v107, v110, v109);
    if (!v116)
    {
      sub_2144D6614(v134, v133, 0, v135, v136, v137);
      sub_2144D6660(v106, v105, 0, v107, v110, v109);
      v69 = 1;
      return v69 & 1;
    }

    v121 = v133;
    sub_2144D6614(v134, v133, v116, v135, v136, v137);
  }

  sub_2144D6660(v106, v105, v108, v107, v110, v109);
  sub_2144D6660(v134, v121, v116, v135, v136, v137);
LABEL_26:
  v69 = 0;
  return v69 & 1;
}

unint64_t sub_2144D645C()
{
  result = qword_27C9148F8;
  if (!qword_27C9148F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9148F8);
  }

  return result;
}

unint64_t sub_2144D64B4()
{
  result = qword_27C914900;
  if (!qword_27C914900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914900);
  }

  return result;
}

unint64_t sub_2144D650C()
{
  result = qword_27C914908;
  if (!qword_27C914908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914908);
  }

  return result;
}

uint64_t sub_2144D6590(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2144D65A8(uint64_t a1)
{
  v1 = *(a1 + 368);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_2144D6614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {

    sub_213FDC9D0(a5, a6);
  }
}

void sub_2144D6660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {

    sub_213FDC6D0(a5, a6);
  }
}

uint64_t sub_2144D66AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_2144D6714(_OWORD *a1)
{
  result = 0.0;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 377) = 0u;
  return result;
}

double sub_2144D6754(_OWORD *a1)
{
  result = 0.0;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 345) = 0u;
  return result;
}

void sub_2144D6790(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  sub_2144CD6C0(*a1, a3);
  if (v4)
  {
    *a2 = v4;
  }
}

void sub_2144D67C8(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  sub_2144CCE00(*a1, a3);
  if (v4)
  {
    *a2 = v4;
  }
}

uint64_t sub_2144D6800(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2144D6848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_2144D6904@<X0>(void *__src@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + 16);
  memcpy(__dst, __src, 0x121uLL);
  result = sub_2144D0BBC(__dst);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

id sub_2144D6978@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(a1 + 144);
  v14[8] = *(a1 + 128);
  v14[9] = v8;
  v15 = *(a1 + 160);
  v9 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v9;
  v10 = *(a1 + 112);
  v14[6] = *(a1 + 96);
  v14[7] = v10;
  v11 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v11;
  v12 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v12;
  result = sub_2144D1114(v14);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2144D6A04()
{
  v1 = v0 + *(type metadata accessor for MessagesAppBalloon() + 48);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t type metadata accessor for MessagesAppBalloon()
{
  result = qword_280B30420;
  if (!qword_280B30420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2144D6AE0@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2144D6B78@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessagesAppBalloon() + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2144D6BE4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for MessagesAppBalloon() + 48));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

__n128 sub_2144D6C5C(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void *sub_2144D6CDC(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

uint64_t sub_2144D6FA4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2144D6FD4(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2144D702C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2144D705C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2144D70B4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_2144D70E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_2144D713C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_2144D716C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_2144D71C4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_2144D71F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_2144D724C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_2144D727C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_2144D72D4()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t sub_2144D72E0(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

void (*sub_2144D7310(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_2144D73F8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

uint64_t sub_2144D7484()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2144D74B4(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2144D750C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2144D753C(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2144D766C()
{
  v1 = (v0 + *(type metadata accessor for MessagesAppBalloon() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_2144D76AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessagesAppBalloon() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2144D7814@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessagesAppBalloon() + 32));
  v5 = v3[5];
  v15 = v3[4];
  v4 = v15;
  v16[0] = v5;
  *(v16 + 9) = *(v3 + 89);
  v6 = *(v16 + 9);
  v7 = v3[3];
  v13 = v3[2];
  v8 = v13;
  v14 = v7;
  v9 = v3[1];
  v12[0] = *v3;
  v12[1] = v9;
  *a1 = v12[0];
  a1[1] = v9;
  a1[4] = v4;
  a1[5] = v5;
  a1[2] = v8;
  a1[3] = v7;
  *(a1 + 89) = v6;
  return sub_213FB2E54(v12, &v11, &qword_27C907DF8, &qword_214755E10);
}

__n128 sub_2144D7898(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for MessagesAppBalloon() + 32));
  v4 = v3[5];
  v10[4] = v3[4];
  v11[0] = v4;
  *(v11 + 9) = *(v3 + 89);
  v5 = v3[3];
  v10[2] = v3[2];
  v10[3] = v5;
  v6 = v3[1];
  v10[0] = *v3;
  v10[1] = v6;
  sub_213FB2DF4(v10, &qword_27C907DF8, &qword_214755E10);
  v7 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v7;
  *(v3 + 89) = *(a1 + 89);
  v8 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v8;
  result = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = result;
  return result;
}

uint64_t sub_2144D7970()
{
  v1 = (v0 + *(type metadata accessor for MessagesAppBalloon() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_2144D799C(uint64_t a1, char a2)
{
  result = type metadata accessor for MessagesAppBalloon();
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2144D7A2C()
{
  v1 = (v0 + *(type metadata accessor for MessagesAppBalloon() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_2144D7A6C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessagesAppBalloon() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2144D7BD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for MessagesAppBalloon() + 48);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2144D7C70(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for MessagesAppBalloon() + 48);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144D7D38(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MessagesAppBalloon() + 48);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144D7E88(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for MessagesAppBalloon() + 48);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

uint64_t sub_2144D7F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MessagesAppBalloon() + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2144D7FE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for MessagesAppBalloon() + 48);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2144D807C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for MessagesAppBalloon() + 48);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

uint64_t sub_2144D8128@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessagesAppBalloon() + 52));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_213FDC9D0(v4, v5);
}

uint64_t sub_2144D8170(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for MessagesAppBalloon() + 52));
  result = sub_213FDC6D0(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_2144D81FC()
{
  v1 = v0 + *(type metadata accessor for MessagesAppBalloon() + 56);
  v2 = *v1;
  sub_213FDCA18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2144D8240(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MessagesAppBalloon() + 56);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2144D82D0()
{
  v1 = (v0 + *(type metadata accessor for MessagesAppBalloon() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_2144D8310(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessagesAppBalloon() + 60));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2144D84D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144D8538(uint64_t a1)
{
  *(a1 + 8) = sub_2144D85A0(&qword_27C90CF20);
  result = sub_2144D85A0(&qword_27C90CEF0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144D85A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MessagesAppBalloon();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2144D860C()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_2144D8814(319, &qword_280B353F8, MEMORY[0x277CC95F0]);
    if (v1 <= 0x3F)
    {
      sub_2144D8814(319, &qword_280B30B80, MEMORY[0x277CC9260]);
      if (v2 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B2F2C0);
        if (v3 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B34BC8);
          if (v4 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_280B2F2D0);
            if (v5 <= 0x3F)
            {
              sub_214084AA4();
              if (v6 <= 0x3F)
              {
                sub_21403BEC8(319, &qword_280B2F2C8);
                if (v7 <= 0x3F)
                {
                  sub_21403BEC8(319, &qword_280B2FDD0);
                  if (v8 <= 0x3F)
                  {
                    sub_2144D8814(319, qword_280B2F7D8, type metadata accessor for EncodedAppData);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_2144D8814(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2144D8894(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2144D88F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2144D89C4(uint64_t a1)
{
  *(a1 + 8) = sub_2144D8A78(&qword_27C914960);
  result = sub_2144D8A78(&qword_27C914968);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for RecoverJunkCommand()
{
  result = qword_280B30410;
  if (!qword_280B30410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2144D8A78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RecoverJunkCommand();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MBDRichCards.init(payloadData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_2146D85C8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_2146D85B8();
  sub_2144D8B98();
  sub_2146D8598();

  result = sub_213FB54FC(a1, a2);
  if (!v3)
  {
    *a3 = v11;
    a3[1] = v12;
  }

  return result;
}

unint64_t sub_2144D8B98()
{
  result = qword_27C914970;
  if (!qword_27C914970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914970);
  }

  return result;
}

unint64_t sub_2144D8BEC(uint64_t a1)
{
  *(a1 + 8) = sub_214300464();
  result = sub_21430053C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2144D8C2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E68D0;
  *(inited + 32) = 1684828002;
  *(inited + 40) = 0xE400000000000000;
  v5 = sub_2146D9988();
  v6 = sub_21403EBDC();
  *(inited + 48) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 0x7363696C617469;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_2146D9988();
  *(inited + 120) = v6;
  *(inited + 128) = 0x6E696C7265646E75;
  *(inited + 136) = 0xE900000000000065;
  v7 = sub_2146D9988();
  *(inited + 168) = v6;
  *(inited + 144) = v7;
  v8 = sub_2140457C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_2144D8D64(uint64_t a1, uint64_t a2)
{
  if ((sub_2146D9778() & 1) == 0 && (a1 || a2 != 0xE000000000000000) && (sub_2146DA6A8() & 1) == 0)
  {
    sub_2146D9BA8();
    if (qword_280B35360 == -1)
    {
      goto LABEL_10;
    }

LABEL_11:
    swift_once();
    goto LABEL_10;
  }

  sub_214069AD8();
  if ((sub_2146D9E08() & 1) == 0)
  {
    return 1;
  }

  sub_2146D9BA8();
  if (qword_280B35360 != -1)
  {
    goto LABEL_11;
  }

LABEL_10:
  sub_2146D91D8();
  return 0;
}

uint64_t sub_2144D8EF4()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[7];
  v3 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E6910;
  *(inited + 32) = 0x6D754E656E6F6870;
  *(inited + 40) = 0xEB00000000726562;
  if (v1)
  {
    v6 = MEMORY[0x277D837D0];
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    *(inited + 72) = v6;
    *(inited + 80) = 0x6B6361626C6C6166;
    *(inited + 88) = 0xEB000000006C7255;
    if (!v3)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      *(inited + 112) = 0;
LABEL_6:
      *(inited + 96) = v7;
      *(inited + 104) = v8;
      *(inited + 120) = v9;
      v10 = inited;

      sub_213FDC9D0(v4, v3);
      v11 = sub_214045690(v10);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
      swift_arrayDestroy();
      v12 = sub_2140418B8(v11);

      return v12;
    }

    if (v3 != 1)
    {
      v9 = MEMORY[0x277D837D0];
      v7 = v4;
      v8 = v3;
      goto LABEL_6;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144D9098(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6B6361626C6C6166;
  }

  else
  {
    v4 = 0x6D754E656E6F6870;
  }

  if (v3)
  {
    v5 = 0xEB00000000726562;
  }

  else
  {
    v5 = 0xEB000000006C7255;
  }

  if (*a2)
  {
    v6 = 0x6B6361626C6C6166;
  }

  else
  {
    v6 = 0x6D754E656E6F6870;
  }

  if (*a2)
  {
    v7 = 0xEB000000006C7255;
  }

  else
  {
    v7 = 0xEB00000000726562;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2144D9150()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144D91E4()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2144D9264()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144D92F4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

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

void sub_2144D9354(uint64_t *a1@<X8>)
{
  v2 = 0x6D754E656E6F6870;
  if (*v1)
  {
    v2 = 0x6B6361626C6C6166;
  }

  v3 = 0xEB00000000726562;
  if (*v1)
  {
    v3 = 0xEB000000006C7255;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2144D93A4@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2144D9408(uint64_t a1)
{
  v2 = sub_2144D98E0();

  return MEMORY[0x2821FE718](a1, v2);
}