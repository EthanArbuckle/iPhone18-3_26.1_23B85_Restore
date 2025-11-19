uint64_t sub_24F793E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for Game();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  v37 = v6;
  v18 = *(v6 + 56);
  v34 = v6 + 56;
  v35 = v5;
  v33 = v18;
  (v18)(&v32 - v16, 1, 1, v5, v15);
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = (v37 + 48);
    v21 = (a1 + 40);
    do
    {
      if (*(a2 + 16))
      {
        v22 = *(v21 - 1);
        v23 = *v21;

        v24 = sub_24E76D644(v22, v23);
        v26 = v25;

        if (v26)
        {
          v27 = *(a2 + 56) + *(v37 + 72) * v24;
          v28 = v36;
          sub_24F796798(v27, v36, type metadata accessor for Game);
          sub_24F7966D0(v28, v10, type metadata accessor for Game);
          if (v10[96])
          {
            sub_24E601704(v17, &qword_27F216FE0);
            v31 = v32;
            sub_24F7966D0(v10, v32, type metadata accessor for Game);
            return v33(v31, 0, 1, v35);
          }

          sub_24E736938(v17, v13);
          v29 = v35;
          if ((*v20)(v13, 1, v35) == 1)
          {
            sub_24E601704(v17, &qword_27F216FE0);
            sub_24E601704(v13, &qword_27F216FE0);
            sub_24F7966D0(v10, v17, type metadata accessor for Game);
            v33(v17, 0, 1, v29);
          }

          else
          {
            sub_24F796738(v10, type metadata accessor for Game);
            sub_24E601704(v13, &qword_27F216FE0);
          }
        }
      }

      v21 += 2;
      --v19;
    }

    while (v19);
  }

  return sub_24E6009C8(v17, v32, &qword_27F216FE0);
}

uint64_t sub_24F7941CC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v115 = a5;
  v104 = a4;
  v107 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v7 - 8);
  v112 = &v103 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  MEMORY[0x28223BE20](v9 - 8);
  v105 = &v103 - v10;
  v11 = type metadata accessor for Game();
  v108 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v106 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v113 = &v103 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v110 = &v103 - v19;
  v111 = type metadata accessor for Player(0);
  v114 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = &v103 - v23;
  v25 = *a1;
  v26 = [*a1 fromPlayerID];
  v27 = sub_24F92B0D8();
  v29 = v28;

  if (!*(a2 + 16))
  {

LABEL_6:
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v38 = sub_24F9220D8();
    __swift_project_value_buffer(v38, qword_27F39E778);
    v39 = v25;

    v40 = sub_24F9220B8();
    v41 = sub_24F92BDB8();
    if (!os_log_type_enabled(v40, v41))
    {

LABEL_31:
      v97 = type metadata accessor for ChallengeInvite();
      return (*(*(v97 - 8) + 56))(v115, 1, 1, v97);
    }

    v42 = swift_slowAlloc();
    *v42 = 67109120;
    v43 = [v39 fromPlayerID];
    v44 = sub_24F92B0D8();
    v46 = v45;

    if (*(a2 + 16))
    {
      v47 = sub_24E76D644(v44, v46);
      v49 = v48;

      if (v49)
      {
        v50 = v114;
        v51 = v112;
        sub_24F796798(*(a2 + 56) + *(v114 + 72) * v47, v112, type metadata accessor for Player);
        (*(v50 + 56))(v51, 0, 1, v111);
        v52 = 0;
LABEL_15:
        sub_24E601704(v51, &unk_27F23E1F0);
        *(v42 + 4) = v52;

        _os_log_impl(&dword_24E5DD000, v40, v41, "ChallengesHubDataIntentImplementation invites skipped: inviter is nil == %{BOOL}d", v42, 8u);
        MEMORY[0x2530542D0](v42, -1, -1);

        goto LABEL_31;
      }
    }

    else
    {
    }

    v52 = 1;
    v51 = v112;
    (*(v114 + 56))(v112, 1, 1, v111);
    goto LABEL_15;
  }

  v30 = sub_24E76D644(v27, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_24F796798(*(a2 + 56) + *(v114 + 72) * v30, v24, type metadata accessor for Player);
  v33 = [v25 bundleIDs];
  if (v33)
  {
    v34 = v33;
    v35 = sub_24F92B5A8();

    v36 = v110;
    sub_24F793E3C(v35, v107, v110);

    v37 = v108;
    goto LABEL_21;
  }

  v53 = [v25 bundleID];
  v54 = sub_24F92B0D8();
  v56 = v55;

  v57 = v107;
  v36 = v110;
  if (*(v107 + 16))
  {
    v58 = sub_24E76D644(v54, v56);
    v60 = v59;

    if (v60)
    {
      v37 = v108;
      sub_24F796798(*(v57 + 56) + *(v108 + 72) * v58, v36, type metadata accessor for Game);
      (*(v37 + 56))(v36, 0, 1, v11);
      goto LABEL_21;
    }
  }

  else
  {
  }

  v37 = v108;
  (*(v108 + 56))(v36, 1, 1, v11);
LABEL_21:
  sub_24E736938(v36, v17);
  v61 = (*(v37 + 48))(v17, 1, v11);
  v62 = v113;
  if (v61 == 1)
  {
    sub_24E601704(v17, &qword_27F216FE0);
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v63 = sub_24F9220D8();
    __swift_project_value_buffer(v63, qword_27F39E778);
    v64 = v25;
    v65 = sub_24F9220B8();
    v66 = sub_24F92BDB8();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v116 = v68;
      *v67 = 136315138;
      v69 = [v64 challengeID];
      v70 = v36;
      v71 = sub_24F92B0D8();
      v73 = v72;

      v74 = sub_24E7620D4(v71, v73, &v116);

      *(v67 + 4) = v74;
      _os_log_impl(&dword_24E5DD000, v65, v66, "ChallengesHubDataIntentImplementation invites skipped: Failed to find game for challenge: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x2530542D0](v68, -1, -1);
      MEMORY[0x2530542D0](v67, -1, -1);

      v75 = v70;
    }

    else
    {

      v75 = v36;
    }

    sub_24E601704(v75, &qword_27F216FE0);
    sub_24F796738(v24, type metadata accessor for Player);
    goto LABEL_31;
  }

  sub_24F7966D0(v17, v113, type metadata accessor for Game);
  v76 = [v25 challengeID];
  v77 = sub_24F92B0D8();
  v79 = v78;

  sub_24F796798(v24, v109, type metadata accessor for Player);
  v80 = v106;
  sub_24F796798(v62, v106, type metadata accessor for Game);
  v81 = [v25 challengeVendorID];
  v82 = sub_24F92B0D8();
  v84 = v83;

  v85 = v62;
  v86 = v104;
  if (!*(v104 + 16))
  {

    v99 = v85;
LABEL_34:
    sub_24F796738(v99, type metadata accessor for Game);
    sub_24E601704(v36, &qword_27F216FE0);
    sub_24F796738(v24, type metadata accessor for Player);
    v100 = type metadata accessor for ChallengeDefinitionDetail(0);
    v95 = v105;
    (*(*(v100 - 8) + 56))(v105, 1, 1, v100);
    goto LABEL_35;
  }

  v87 = sub_24E76D644(v82, v84);
  v89 = v88;

  if ((v89 & 1) == 0)
  {
    v99 = v113;
    goto LABEL_34;
  }

  v90 = *(v86 + 56);
  v91 = type metadata accessor for ChallengeDefinitionDetail(0);
  v92 = v36;
  v93 = *(v91 - 8);
  v94 = v90 + *(v93 + 72) * v87;
  v95 = v105;
  sub_24F796798(v94, v105, type metadata accessor for ChallengeDefinitionDetail);
  sub_24F796738(v113, type metadata accessor for Game);
  v96 = v92;
  v80 = v106;
  sub_24E601704(v96, &qword_27F216FE0);
  sub_24F796738(v24, type metadata accessor for Player);
  (*(v93 + 56))(v95, 0, 1, v91);
LABEL_35:
  v101 = v115;
  *v115 = v77;
  v101[1] = v79;
  v102 = type metadata accessor for ChallengeInvite();
  sub_24F7966D0(v109, v101 + v102[5], type metadata accessor for Player);
  sub_24F7966D0(v80, v101 + v102[6], type metadata accessor for Game);
  sub_24E6009C8(v95, v101 + v102[7], &qword_27F212A08);
  return (*(*(v102 - 1) + 56))(v101, 0, 1, v102);
}

uint64_t sub_24F794D7C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v155 = a4;
  v173 = a3;
  v158 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  MEMORY[0x28223BE20](v7 - 8);
  v149 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v154 = &v144 - v10;
  v11 = type metadata accessor for Player(0);
  v167 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v166 = &v144 - v15;
  MEMORY[0x28223BE20](v16);
  v169 = &v144 - v17;
  v18 = type metadata accessor for Challenge.Participant(0);
  v164 = *(v18 - 8);
  v165 = v18;
  MEMORY[0x28223BE20](v18);
  v163 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v168 = &v144 - v21;
  v151 = sub_24F91F648();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v160 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for Challenge(0);
  MEMORY[0x28223BE20](v152);
  v156 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v153 = (&v144 - v25);
  v26 = type metadata accessor for Game();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v159 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v157 = &v144 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v35 = MEMORY[0x28223BE20](v34).n128_u64[0];
  v37 = &v144 - v36;
  v38 = *a1;
  v39 = [v38 bundleIDs];
  v162 = v38;
  if (v39)
  {
    v40 = v39;
    v41 = sub_24F92B5A8();

    v42 = v162;
    sub_24F793E3C(v41, a2, v37);

    goto LABEL_9;
  }

  v43 = [v38 bundleID];
  v44 = sub_24F92B0D8();
  v46 = v45;

  if (!*(a2 + 16))
  {

    goto LABEL_7;
  }

  v47 = sub_24E76D644(v44, v46);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
LABEL_7:
    (*(v27 + 56))(v37, 1, 1, v26);
    goto LABEL_8;
  }

  sub_24F796798(*(a2 + 56) + *(v27 + 72) * v47, v37, type metadata accessor for Game);
  (*(v27 + 56))(v37, 0, 1, v26);
LABEL_8:
  v42 = v162;
LABEL_9:
  sub_24E736938(v37, v33);
  if ((*(v27 + 48))(v33, 1, v26) == 1)
  {
    sub_24E601704(v33, &qword_27F216FE0);
    if (qword_27F2113B8 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_11;
  }

  v148 = v37;
  v64 = v157;
  sub_24F7966D0(v33, v157, type metadata accessor for Game);
  v65 = v42;
  v66 = [v42 challengeID];
  v147 = sub_24F92B0D8();
  v146 = v67;

  v68 = [v65 challengeVendorID];
  v145 = sub_24F92B0D8();
  v144 = v69;

  v70 = [v65 endDate];
  sub_24F91F608();

  sub_24F796798(v64, v159, type metadata accessor for Game);
  v71 = [v65 participants];
  sub_24E69A5C4(0, &qword_27F21DE28);
  v72 = sub_24F92B5A8();

  if (v72 >> 62)
  {
    v37 = sub_24F92C738();
    if (v37)
    {
      goto LABEL_16;
    }

LABEL_39:
    v172 = MEMORY[0x277D84F90];
LABEL_40:

    v98 = [v162 challengeVendorID];
    v99 = sub_24F92B0D8();
    v101 = v100;

    v102 = v155;
    if (*(v155 + 16))
    {
      v103 = sub_24E76D644(v99, v101);
      v105 = v104;

      v106 = v154;
      v107 = v153;
      if (v105)
      {
        v108 = *(v102 + 56);
        v109 = type metadata accessor for ChallengeDefinitionDetail(0);
        v110 = *(v109 - 8);
        sub_24F796798(v108 + *(v110 + 72) * v103, v106, type metadata accessor for ChallengeDefinitionDetail);
        (*(v110 + 56))(v106, 0, 1, v109);
      }

      else
      {
        v112 = type metadata accessor for ChallengeDefinitionDetail(0);
        (*(*(v112 - 8) + 56))(v106, 1, 1, v112);
      }
    }

    else
    {

      v111 = type metadata accessor for ChallengeDefinitionDetail(0);
      v106 = v154;
      (*(*(v111 - 8) + 56))(v154, 1, 1, v111);
      v107 = v153;
    }

    v113 = [v162 rank];
    v114 = v113;
    if (v113)
    {
      v115 = [v113 integerValue];
    }

    else
    {
      v115 = 0;
    }

    v116 = v152;
    v117 = *(v152 + 52);
    v118 = v162;
    v119 = [v162 scheduledEndDate];
    sub_24F91F608();

    v120 = v150;
    v121 = v107 + v117;
    v122 = v151;
    (*(v150 + 56))(v121, 0, 1, v151);
    v123 = v146;
    *v107 = v147;
    v107[1] = v123;
    v124 = v144;
    v107[2] = v145;
    v107[3] = v124;
    (*(v120 + 32))(v107 + v116[6], v160, v122);
    sub_24F7966D0(v159, v107 + v116[7], type metadata accessor for Game);
    *(v107 + v116[8]) = v172;
    v125 = (v107 + v116[9]);
    *v125 = 0;
    v125[1] = 0xE000000000000000;
    sub_24E6009C8(v106, v107 + v116[10], &qword_27F212A08);
    v126 = v107 + v116[11];
    *v126 = 0;
    v126[8] = 0;
    v127 = v107 + v116[12];
    *v127 = v115;
    v127[8] = v114 == 0;
    v128 = v156;
    sub_24F796798(v107, v156, type metadata accessor for Challenge);
    v129 = [v118 challengeVendorID];
    v130 = sub_24F92B0D8();
    v132 = v131;

    if (*(v102 + 16))
    {
      v133 = sub_24E76D644(v130, v132);
      v135 = v134;

      if (v135)
      {
        v136 = *(v102 + 56);
        v137 = type metadata accessor for ChallengeDefinitionDetail(0);
        v138 = *(v137 - 8);
        v139 = v136 + *(v138 + 72) * v133;
        v140 = v149;
        sub_24F796798(v139, v149, type metadata accessor for ChallengeDefinitionDetail);
        sub_24F796738(v107, type metadata accessor for Challenge);
        sub_24F796738(v157, type metadata accessor for Game);
        sub_24E601704(v148, &qword_27F216FE0);
        (*(v138 + 56))(v140, 0, 1, v137);
LABEL_53:
        v142 = v158;
        sub_24F7966D0(v128, v158, type metadata accessor for Challenge);
        v143 = type metadata accessor for CompletedChallengeSummary();
        sub_24E6009C8(v140, v142 + *(v143 + 20), &qword_27F212A08);
        return (*(*(v143 - 8) + 56))(v142, 0, 1, v143);
      }
    }

    else
    {
    }

    sub_24F796738(v107, type metadata accessor for Challenge);
    sub_24F796738(v157, type metadata accessor for Game);
    sub_24E601704(v148, &qword_27F216FE0);
    v141 = type metadata accessor for ChallengeDefinitionDetail(0);
    v140 = v149;
    (*(*(v141 - 8) + 56))(v149, 1, 1, v141);
    goto LABEL_53;
  }

  v37 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_39;
  }

LABEL_16:
  v161 = v13;
  v42 = 0;
  v170 = v72 & 0xFFFFFFFFFFFFFF8;
  v171 = v72 & 0xC000000000000001;
  v172 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v171)
    {
      v73 = MEMORY[0x253052270](v42, v72);
    }

    else
    {
      if (v42 >= *(v170 + 16))
      {
        goto LABEL_36;
      }

      v73 = *(v72 + 8 * v42 + 32);
    }

    v74 = v73;
    v75 = (v42 + 1);
    if (__OFADD__(v42, 1))
    {
      break;
    }

    v76 = [v73 playerID];
    v77 = sub_24F92B0D8();
    v79 = v78;

    if (*(v173 + 16))
    {
      v80 = v77;
      v81 = v173;
      v82 = sub_24E76D644(v80, v79);
      v84 = v83;

      if (v84)
      {
        v85 = v166;
        sub_24F796798(*(v81 + 56) + *(v167 + 72) * v82, v166, type metadata accessor for Player);
        v86 = v85;
        v87 = v169;
        sub_24F7966D0(v86, v169, type metadata accessor for Player);
        v88 = v161;
        sub_24F796798(v87, v161, type metadata accessor for Player);
        v89 = [v74 rank];
        v90 = v89;
        if (v89)
        {
          v91 = [v89 integerValue];
        }

        else
        {
          v91 = 0;
        }

        sub_24F796738(v169, type metadata accessor for Player);
        v92 = v88;
        v93 = v163;
        sub_24F7966D0(v92, v163, type metadata accessor for Player);
        v94 = v93 + *(v165 + 20);
        *v94 = v91;
        *(v94 + 8) = v90 == 0;
        sub_24F7966D0(v93, v168, type metadata accessor for Challenge.Participant);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v172 = sub_24E61782C(0, v172[2] + 1, 1, v172);
        }

        v96 = v172[2];
        v95 = v172[3];
        if (v96 >= v95 >> 1)
        {
          v172 = sub_24E61782C(v95 > 1, v96 + 1, 1, v172);
        }

        v97 = v172;
        v172[2] = v96 + 1;
        sub_24F7966D0(v168, v97 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v96, type metadata accessor for Challenge.Participant);
        goto LABEL_19;
      }
    }

    else
    {
    }

LABEL_19:
    ++v42;
    if (v75 == v37)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_11:
  v50 = sub_24F9220D8();
  __swift_project_value_buffer(v50, qword_27F39E778);
  v51 = v42;
  v52 = sub_24F9220B8();
  v53 = sub_24F92BDB8();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v174 = v55;
    *v54 = 136315138;
    v56 = [v51 challengeID];
    v57 = sub_24F92B0D8();
    v59 = v58;

    v60 = sub_24E7620D4(v57, v59, &v174);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_24E5DD000, v52, v53, "ChallengesHubDataIntentImplementation activeChallenges: Failed to find game for challenge: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x2530542D0](v55, -1, -1);
    MEMORY[0x2530542D0](v54, -1, -1);
  }

  sub_24E601704(v37, &qword_27F216FE0);
  v61 = v158;
  v62 = type metadata accessor for CompletedChallengeSummary();
  return (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
}

uint64_t sub_24F795E70()
{
  v1 = [v0 actives];
  sub_24E69A5C4(0, &qword_27F24FE58);
  v2 = sub_24F92B5A8();

  if (v2 >> 62)
  {
    goto LABEL_47;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x277D84F90];
  v33 = v2;
  if (v3)
  {
    v5 = 0;
    v36 = v2 & 0xFFFFFFFFFFFFFF8;
    v37 = v2 & 0xC000000000000001;
    v34 = v3;
    v35 = v2 + 32;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v37)
      {
        v7 = MEMORY[0x253052270](v5, v33);
      }

      else
      {
        if (v5 >= *(v36 + 16))
        {
          goto LABEL_41;
        }

        v7 = *(v35 + 8 * v5);
      }

      v8 = v7;
      v9 = __OFADD__(v5, 1);
      v10 = v5 + 1;
      if (v9)
      {
        __break(1u);
LABEL_41:
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
        v3 = sub_24F92C738();
        goto LABEL_3;
      }

      v39 = v10;
      v40 = v6;
      v11 = [v7 participants];
      sub_24E69A5C4(0, &qword_27F21DE28);
      v12 = sub_24F92B5A8();

      if (v12 >> 62)
      {
        v13 = sub_24F92C738();
        if (!v13)
        {
LABEL_24:

          v2 = v4;
          goto LABEL_25;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      v41 = v4;
      v2 = &v41;
      sub_24F4578E0(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        goto LABEL_44;
      }

      v38 = v8;
      v14 = 0;
      v2 = v41;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x253052270](v14, v12);
        }

        else
        {
          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = [v15 playerID];
        v18 = sub_24F92B0D8();
        v20 = v19;

        v41 = v2;
        v22 = *(v2 + 16);
        v21 = *(v2 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_24F4578E0((v21 > 1), v22 + 1, 1);
          v2 = v41;
        }

        ++v14;
        *(v2 + 16) = v22 + 1;
        v23 = v2 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
      }

      while (v13 != v14);

      v3 = v34;
      v4 = MEMORY[0x277D84F90];
LABEL_25:
      v24 = *(v2 + 16);
      v6 = v40;
      v25 = *(v40 + 2);
      v26 = v25 + v24;
      if (__OFADD__(v25, v24))
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v26 <= *(v40 + 3) >> 1)
      {
        if (*(v2 + 16))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v25 <= v26)
        {
          v28 = v25 + v24;
        }

        else
        {
          v28 = v25;
        }

        v6 = sub_24E615CF4(isUniquelyReferenced_nonNull_native, v28, 1, v40);
        if (*(v2 + 16))
        {
LABEL_34:
          if ((*(v6 + 3) >> 1) - *(v6 + 2) < v24)
          {
            goto LABEL_45;
          }

          swift_arrayInitWithCopy();

          if (v24)
          {
            v29 = *(v6 + 2);
            v9 = __OFADD__(v29, v24);
            v30 = v29 + v24;
            if (v9)
            {
              goto LABEL_46;
            }

            *(v6 + 2) = v30;
          }

          goto LABEL_6;
        }
      }

      if (v24)
      {
        goto LABEL_43;
      }

LABEL_6:
      v5 = v39;
      if (v39 == v3)
      {
        goto LABEL_39;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_39:

  v31 = sub_24F45D828(v6);

  return v31;
}

uint64_t sub_24F796208()
{
  v1 = [v0 details];
  sub_24E69A5C4(0, &qword_27F21DE20);
  v2 = sub_24F92B5A8();

  if (v2 >> 62)
  {
    goto LABEL_47;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x277D84F90];
  v33 = v2;
  if (v3)
  {
    v5 = 0;
    v36 = v2 & 0xFFFFFFFFFFFFFF8;
    v37 = v2 & 0xC000000000000001;
    v34 = v3;
    v35 = v2 + 32;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v37)
      {
        v7 = MEMORY[0x253052270](v5, v33);
      }

      else
      {
        if (v5 >= *(v36 + 16))
        {
          goto LABEL_41;
        }

        v7 = *(v35 + 8 * v5);
      }

      v8 = v7;
      v9 = __OFADD__(v5, 1);
      v10 = v5 + 1;
      if (v9)
      {
        __break(1u);
LABEL_41:
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
        v3 = sub_24F92C738();
        goto LABEL_3;
      }

      v39 = v10;
      v40 = v6;
      v11 = [v7 participants];
      sub_24E69A5C4(0, &qword_27F21DE28);
      v12 = sub_24F92B5A8();

      if (v12 >> 62)
      {
        v13 = sub_24F92C738();
        if (!v13)
        {
LABEL_24:

          v2 = v4;
          goto LABEL_25;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      v41 = v4;
      v2 = &v41;
      sub_24F4578E0(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        goto LABEL_44;
      }

      v38 = v8;
      v14 = 0;
      v2 = v41;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x253052270](v14, v12);
        }

        else
        {
          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = [v15 playerID];
        v18 = sub_24F92B0D8();
        v20 = v19;

        v41 = v2;
        v22 = *(v2 + 16);
        v21 = *(v2 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_24F4578E0((v21 > 1), v22 + 1, 1);
          v2 = v41;
        }

        ++v14;
        *(v2 + 16) = v22 + 1;
        v23 = v2 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
      }

      while (v13 != v14);

      v3 = v34;
      v4 = MEMORY[0x277D84F90];
LABEL_25:
      v24 = *(v2 + 16);
      v6 = v40;
      v25 = *(v40 + 2);
      v26 = v25 + v24;
      if (__OFADD__(v25, v24))
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v26 <= *(v40 + 3) >> 1)
      {
        if (*(v2 + 16))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v25 <= v26)
        {
          v28 = v25 + v24;
        }

        else
        {
          v28 = v25;
        }

        v6 = sub_24E615CF4(isUniquelyReferenced_nonNull_native, v28, 1, v40);
        if (*(v2 + 16))
        {
LABEL_34:
          if ((*(v6 + 3) >> 1) - *(v6 + 2) < v24)
          {
            goto LABEL_45;
          }

          swift_arrayInitWithCopy();

          if (v24)
          {
            v29 = *(v6 + 2);
            v9 = __OFADD__(v29, v24);
            v30 = v29 + v24;
            if (v9)
            {
              goto LABEL_46;
            }

            *(v6 + 2) = v30;
          }

          goto LABEL_6;
        }
      }

      if (v24)
      {
        goto LABEL_43;
      }

LABEL_6:
      v5 = v39;
      if (v39 == v3)
      {
        goto LABEL_39;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_39:

  v31 = sub_24F45D828(v6);

  return v31;
}

uint64_t sub_24F7965A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return ChallengesHubDataIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

unint64_t sub_24F79667C()
{
  result = qword_27F24FE50;
  if (!qword_27F24FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FE50);
  }

  return result;
}

uint64_t sub_24F7966D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F796738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F796798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F796814()
{
  result = qword_27F24FE70;
  if (!qword_27F24FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FE70);
  }

  return result;
}

id sub_24F79686C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_24F92B098();

  v2 = sub_24F92B098();
  v3 = [v0 objectForKey:v1 inDomain:v2];

  if (v3)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_24F796B60();
    if (swift_dynamicCast())
    {
      v4 = [v6 BOOLValue];

      return v4;
    }
  }

  else
  {
    sub_24E857CC8(v9);
  }

  return 0;
}

uint64_t sub_24F7969E0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_24F92B098();

  v2 = sub_24F92B098();
  v3 = [v0 objectForKey:v1 inDomain:v2];

  if (v3)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_24E857CC8(v8);
    return 0;
  }
}

unint64_t sub_24F796B60()
{
  result = qword_27F236AD8;
  if (!qword_27F236AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F236AD8);
  }

  return result;
}

uint64_t SaveRecentSearchAction.playerID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SaveRecentSearchAction.term.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SaveRecentSearchAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SaveRecentSearchAction() + 28);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SaveRecentSearchAction()
{
  result = qword_27F24FE88;
  if (!qword_27F24FE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F796CDC()
{
  v1 = 0x4449726579616C70;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x654D6E6F69746361;
  }

  if (*v0)
  {
    v1 = 1836213620;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24F796D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F7975CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F796D88(uint64_t a1)
{
  v2 = sub_24F797184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F796DC4(uint64_t a1)
{
  v2 = sub_24F797184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SaveRecentSearchAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_24F928AD8();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FE78);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v19 - v6;
  v8 = type metadata accessor for SaveRecentSearchAction();
  MEMORY[0x28223BE20](v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F797184();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = a1;
  v23 = v8;
  v12 = v5;
  v14 = v26;
  v13 = v27;
  v32 = 0;
  v15 = v28;
  *v10 = sub_24F92CC28();
  v10[1] = v16;
  v22 = v16;
  v31 = 1;
  v10[2] = sub_24F92CC28();
  v10[3] = v17;
  v30 = 2;
  v21 = 0;
  v10[4] = sub_24F92CC58();
  v29 = 3;
  sub_24E862F10();
  v20 = v12;
  sub_24F92CC68();
  (*(v14 + 8))(v7, v15);
  (*(v24 + 32))(v10 + *(v23 + 28), v20, v13);
  sub_24F7971D8(v10, v25);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return sub_24F79723C(v10);
}

unint64_t sub_24F797184()
{
  result = qword_27F24FE80;
  if (!qword_27F24FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FE80);
  }

  return result;
}

uint64_t sub_24F7971D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SaveRecentSearchAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F79723C(uint64_t a1)
{
  v2 = type metadata accessor for SaveRecentSearchAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F7972C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F797384(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F797428()
{
  result = sub_24F928AD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F7974C8()
{
  result = qword_27F24FE98;
  if (!qword_27F24FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FE98);
  }

  return result;
}

unint64_t sub_24F797520()
{
  result = qword_27F24FEA0;
  if (!qword_27F24FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FEA0);
  }

  return result;
}

unint64_t sub_24F797578()
{
  result = qword_27F24FEA8;
  if (!qword_27F24FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FEA8);
  }

  return result;
}

uint64_t sub_24F7975CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1836213620 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA7DA60 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24F797764(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for ChallengesHistoryHero.TitleType(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_24F79791C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ChallengesHistoryHero.TitleType(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

void sub_24F797AC0()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ChallengesHistoryHero.TitleType(319);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
        if (v3 <= 0x3F)
        {
          sub_24E61C938();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F797BC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24F797C0C()
{
  sub_24F797C80();
  if (v0 <= 0x3F)
  {
    sub_24F797CB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_24F797C80()
{
  result = qword_27F24FED0;
  if (!qword_27F24FED0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F24FED0);
  }

  return result;
}

void sub_24F797CB0()
{
  if (!qword_27F24FED8)
  {
    sub_24F9289E8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F24FED8);
    }
  }
}

uint64_t sub_24F797D1C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FF90);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v32 = &v23 - v3;
  v25 = sub_24F9289E8();
  v29 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v31 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FF98);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = type metadata accessor for ChallengesHistoryHero.TitleType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FFA0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F79AD74();
  sub_24F92D128();
  sub_24F79ACAC(v28, v10, type metadata accessor for ChallengesHistoryHero.TitleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v12;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FF10);
    v16 = v25;
    (*(v29 + 32))(v31, &v10[*(v15 + 48)], v25);
    v36 = 1;
    sub_24F79ADC8();
    sub_24F92CC98();
    v35 = 0;
    v17 = v27;
    v18 = v30;
    sub_24F92CD08();
    if (v18)
    {

      (*(v26 + 8))(v32, v17);
      (*(v29 + 8))(v31, v16);
      return (*(v28 + 8))(v14, v11);
    }

    else
    {
      v21 = v29;

      v34 = 1;
      sub_24F797BC4(&qword_27F214060, MEMORY[0x277D21C48]);
      sub_24F92CD48();
      v22 = v28;
      (*(v26 + 8))(v32, v17);
      (*(v21 + 8))(v31, v16);
      return (*(v22 + 8))(v14, v11);
    }
  }

  else
  {
    v33 = 0;
    sub_24F79AE1C();
    sub_24F92CC98();
    v20 = v24;
    sub_24F92CD08();

    (*(v23 + 8))(v7, v20);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_24F798264@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FF60);
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FF68);
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FF70);
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for ChallengesHistoryHero.TitleType(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v52 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24F79AD74();
  v21 = v64;
  sub_24F92D108();
  if (!v21)
  {
    v53 = v16;
    v54 = v13;
    v22 = v7;
    v55 = v19;
    v64 = v11;
    v23 = v60;
    v24 = v61;
    v25 = v63;
    v26 = sub_24F92CC78();
    v27 = (2 * *(v26 + 16)) | 1;
    v66 = v26;
    v67 = v26 + 32;
    v68 = 0;
    v69 = v27;
    v28 = sub_24E643430();
    if (v28 == 2 || v68 != v69 >> 1)
    {
      v32 = v10;
      v33 = v25;
      v34 = sub_24F92C918();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v36 = v64;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v62 + 8))(v32, v33);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v28)
      {
        v70 = 1;
        sub_24F79ADC8();
        v29 = v23;
        sub_24F92CBA8();
        v57 = v10;
        v70 = 0;
        v30 = sub_24F92CC28();
        v31 = v62;
        v42 = v30;
        v44 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FF10);
        v45 = v54;
        *v54 = v42;
        *(v45 + 8) = v44;
        sub_24F9289E8();
        v70 = 1;
        sub_24F797BC4(&qword_27F214018, MEMORY[0x277D21C48]);
        v46 = v59;
        sub_24F92CC68();
        (*(v58 + 8))(v29, v46);
        (*(v31 + 8))(v57, v63);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v50 = v24;
        v51 = v55;
      }

      else
      {
        v70 = 0;
        sub_24F79AE1C();
        v37 = v22;
        sub_24F92CBA8();
        v51 = v55;
        v50 = v24;
        v38 = v57;
        v39 = sub_24F92CC28();
        v40 = v37;
        v48 = v47;
        (*(v56 + 8))(v40, v38);
        (*(v62 + 8))(v10, v25);
        swift_unknownObjectRelease();
        v49 = v53;
        *v53 = v39;
        v49[1] = v48;
        swift_storeEnumTagMultiPayload();
        v45 = v49;
      }

      sub_24F79AC48(v45, v51);
      sub_24F79AC48(v51, v50);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t sub_24F798970()
{
  if (*v0)
  {
    return 0x64616548656D6167;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_24F7989A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616548656D6167 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F798A8C(uint64_t a1)
{
  v2 = sub_24F79AD74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F798AC8(uint64_t a1)
{
  v2 = sub_24F79AD74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F798B04()
{
  if (*v0)
  {
    return 0x6E6F6349656D6167;
  }

  else
  {
    return 0x656D614E656D6167;
  }
}

uint64_t sub_24F798B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F798C14(uint64_t a1)
{
  v2 = sub_24F79ADC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F798C50(uint64_t a1)
{
  v2 = sub_24F79ADC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F798CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F798D24(uint64_t a1)
{
  v2 = sub_24F79AE1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F798D60(uint64_t a1)
{
  v2 = sub_24F79AE1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F798DCC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FF50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F79ABF4();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    type metadata accessor for ChallengesHistoryHero(0);
    v8[13] = 2;
    type metadata accessor for ChallengesHistoryHero.TitleType(0);
    sub_24F797BC4(&qword_27F24FF58, type metadata accessor for ChallengesHistoryHero.TitleType);
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F92CD08();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v8[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[9] = 6;
    sub_24F929608();
    sub_24F797BC4(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F7991B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = v36 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v39);
  v40 = v36 - v5;
  v6 = type metadata accessor for ChallengesHistoryHero.TitleType(0);
  MEMORY[0x28223BE20](v6);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FF38);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v10 = v36 - v9;
  v11 = type metadata accessor for ChallengesHistoryHero(0);
  MEMORY[0x28223BE20](v11);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v13[*(v14 + 32)];
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v46 = v15;
  sub_24E61DA68(&v47, v15, qword_27F21B590);
  v16 = v11[9];
  v17 = sub_24F92A6D8();
  v18 = *(*(v17 - 8) + 56);
  v45 = v16;
  v19 = v13;
  v18(&v13[v16], 1, 1, v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F79ABF4();
  v42 = v10;
  v20 = v44;
  sub_24F92D108();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v22 = v45;
    sub_24E601704(v46, qword_27F24EC90);
    return sub_24E601704(&v13[v22], &qword_27F215440);
  }

  else
  {
    v44 = v6;
    v21 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v50 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v23 = v48;
    *v13 = v47;
    *(v13 + 1) = v23;
    *(v13 + 4) = v49;
    LOBYTE(v47) = 1;
    v24 = v21;
    *(v13 + 5) = sub_24F92CC28();
    *(v13 + 6) = v25;
    LOBYTE(v47) = 2;
    sub_24F797BC4(&qword_27F24FF48, type metadata accessor for ChallengesHistoryHero.TitleType);
    v26 = v8;
    sub_24F92CC68();
    v44 = a1;
    v27 = v19;
    sub_24F79AC48(v26, &v19[v11[6]]);
    LOBYTE(v47) = 3;
    v28 = sub_24F92CC28();
    v30 = v45;
    v29 = v46;
    v31 = (v27 + v11[7]);
    *v31 = v28;
    v31[1] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v50 = 4;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    v36[1] = 0;
    sub_24E61DA68(&v47, v29, qword_27F24EC90);
    LOBYTE(v47) = 5;
    sub_24E65CAA0();
    v33 = v40;
    sub_24F92CC68();
    sub_24E61DA68(v33, v27 + v30, &qword_27F215440);
    sub_24F929608();
    LOBYTE(v47) = 6;
    sub_24F797BC4(&qword_27F213F48, MEMORY[0x277D21F70]);
    v34 = v38;
    sub_24F92CC18();
    (*(v24 + 8))(v42, v43);
    sub_24E6009C8(v34, v27 + v11[10], &qword_27F213E68);
    sub_24F79ACAC(v27, v37, type metadata accessor for ChallengesHistoryHero);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return sub_24F79AD14(v27, type metadata accessor for ChallengesHistoryHero);
  }
}

unint64_t sub_24F799994()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x656C746974627573;
  if (v1 != 3)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D614E6567616D69;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F799A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F79B3B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F799A90(uint64_t a1)
{
  v2 = sub_24F79ABF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F799ACC(uint64_t a1)
{
  v2 = sub_24F79ABF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F799B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 36), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F799C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FEF8);
  MEMORY[0x28223BE20](v77);
  v71 = (&v66 - v3);
  v73 = sub_24F9289E8();
  v70 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FF00);
  MEMORY[0x28223BE20](v74);
  v75 = &v66 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v68 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v67 = &v66 - v6;
  v7 = type metadata accessor for ChallengesHistoryHero.TitleType(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FF08);
  MEMORY[0x28223BE20](v10 - 8);
  v79 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = &v66 - v13;
  v14 = sub_24F926E08();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_27F211820;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_27F24F280;
  sub_24F926E98();
  (*(v15 + 104))(v17, *MEMORY[0x277CE0FE0], v14);
  v81 = sub_24F926E88();

  (*(v15 + 8))(v17, v14);
  sub_24F927618();
  sub_24F9238C8();
  LOBYTE(v85) = 1;
  *&v92[3] = *&v92[27];
  *&v92[11] = *&v92[35];
  *&v92[19] = *&v92[43];
  v72 = type metadata accessor for ChallengesHistoryHero(0);
  sub_24F79ACAC(a1 + *(v72 + 24), v9, type metadata accessor for ChallengesHistoryHero.TitleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = *v9;
  v21 = v9[1];
  v78 = a1;
  if (EnumCaseMultiPayload == 1)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FF10);
    v24 = v69;
    v25 = v70;
    (*(v70 + 32))(v69, v9 + *(v23 + 48), v73);
    v26 = sub_24F9249A8();
    v27 = v71;
    *v71 = v26;
    *(v27 + 8) = 0;
    *(v27 + 16) = 1;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FF18);
    sub_24F79A5C4(v24, v22, v21, v27 + *(v28 + 44));

    sub_24E60169C(v27, v75, &qword_27F24FEF8);
    swift_storeEnumTagMultiPayload();
    v85 = MEMORY[0x277CE0BD8];
    v86 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F24FF20, &qword_27F24FEF8);
    v29 = v82;
    sub_24F924E28();
    sub_24E601704(v27, &qword_27F24FEF8);
    (*(v25 + 8))(v24, v73);
  }

  else
  {
    v85 = v22;
    v86 = v21;
    sub_24E600AEC();
    v30 = sub_24F925E18();
    v32 = v31;
    v34 = v33;
    sub_24F9258F8();
    v35 = sub_24F925C98();
    v37 = v36;
    v39 = v38;
    v41 = v40;

    sub_24E600B40(v30, v32, v34 & 1);

    v85 = v35;
    v86 = v37;
    v39 &= 1u;
    v87 = v39;
    *(&v89 + 6) = v41;
    v42 = MEMORY[0x277CE0BC8];
    v43 = v67;
    sub_24F9268B8();
    sub_24E600B40(v35, v37, v39);

    v44 = v68;
    v45 = v76;
    (*(v68 + 16))(v75, v43, v76);
    swift_storeEnumTagMultiPayload();
    v85 = MEMORY[0x277CE0BD8];
    v86 = v42;
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F24FF20, &qword_27F24FEF8);
    v29 = v82;
    sub_24F924E28();
    (*(v44 + 8))(v43, v45);
  }

  v46 = (v78 + *(v72 + 28));
  v47 = v46[1];
  v85 = *v46;
  v86 = v47;
  sub_24E600AEC();

  v48 = sub_24F925E18();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  KeyPath = swift_getKeyPath();
  v56 = v29;
  v57 = v79;
  sub_24E60169C(v56, v79, &qword_27F24FF08);
  v83[0] = v81;
  v83[1] = 0;
  v84[0] = 1;
  v84[1] = 0;
  *&v84[2] = *v92;
  *&v84[18] = *&v92[8];
  *&v84[34] = *&v92[16];
  *&v84[48] = *&v92[23];
  v58 = v81;
  v59 = *v84;
  v60 = *&v84[16];
  v61 = *&v84[32];
  v62 = v80;
  *(v80 + 64) = *&v92[23];
  v62[2] = v60;
  v62[3] = v61;
  *v62 = v58;
  v62[1] = v59;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FF28);
  sub_24E60169C(v57, v62 + *(v63 + 48), &qword_27F24FF08);
  v64 = v62 + *(v63 + 64);
  *v64 = v48;
  *(v64 + 1) = v50;
  v64[16] = v52 & 1;
  *(v64 + 3) = v54;
  *(v64 + 4) = KeyPath;
  v64[40] = 1;
  sub_24E60169C(v83, &v85, &qword_27F235A20);
  sub_24E5FD138(v48, v50, v52 & 1);

  sub_24E601704(v82, &qword_27F24FF08);
  sub_24E600B40(v48, v50, v52 & 1);

  sub_24E601704(v57, &qword_27F24FF08);
  v85 = v81;
  v86 = 0;
  v87 = 1;
  v88 = 0;
  v89 = *v92;
  v90 = *&v92[8];
  *v91 = *&v92[16];
  *&v91[14] = *&v92[23];
  return sub_24E601704(&v85, &qword_27F235A20);
}

uint64_t sub_24F79A5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v45 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = sub_24F9289E8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v19 = type metadata accessor for GameIcon(0);
  v20 = v19[8];
  *&v16[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  v16[v19[5]] = 1;
  v16[v19[6]] = 1;
  v16[v19[7]] = 0;
  sub_24F927618();
  sub_24F9238C8();
  v21 = &v16[*(v12 + 44)];
  v22 = v56;
  *v21 = v55;
  *(v21 + 1) = v22;
  *(v21 + 2) = v57;
  v51 = a2;
  v52 = a3;
  sub_24E600AEC();

  v23 = sub_24F925E18();
  v25 = v24;
  LOBYTE(v19) = v26;
  sub_24F9258F8();
  v27 = sub_24F925C98();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_24E600B40(v23, v25, v19 & 1);

  v51 = v27;
  v52 = v29;
  v53 = v31 & 1;
  v54 = v33;
  v34 = v50;
  sub_24F9268B8();
  sub_24E600B40(v27, v29, v31 & 1);

  v35 = v45;
  sub_24E60169C(v16, v45, &qword_27F216760);
  v37 = v46;
  v36 = v47;
  v38 = *(v47 + 16);
  v39 = v48;
  v38(v46, v34, v48);
  v40 = v49;
  sub_24E60169C(v35, v49, &qword_27F216760);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FF30);
  v38((v40 + *(v41 + 48)), v37, v39);
  v42 = *(v36 + 8);
  v42(v50, v39);
  sub_24E601704(v16, &qword_27F216760);
  v42(v37, v39);
  return sub_24E601704(v35, &qword_27F216760);
}

uint64_t sub_24F79A9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FEF0);
  return sub_24F799C48(a1, a2 + *(v4 + 44));
}

uint64_t sub_24F79AA54()
{
  sub_24F47D988();

  return sub_24F9218E8();
}

unint64_t sub_24F79AAE4()
{
  result = qword_27F24FEE8;
  if (!qword_27F24FEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FEE8);
  }

  return result;
}

unint64_t sub_24F79ABF4()
{
  result = qword_27F24FF40;
  if (!qword_27F24FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FF40);
  }

  return result;
}

uint64_t sub_24F79AC48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesHistoryHero.TitleType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F79ACAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F79AD14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F79AD74()
{
  result = qword_27F24FF78;
  if (!qword_27F24FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FF78);
  }

  return result;
}

unint64_t sub_24F79ADC8()
{
  result = qword_27F24FF80;
  if (!qword_27F24FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FF80);
  }

  return result;
}

unint64_t sub_24F79AE1C()
{
  result = qword_27F24FF88;
  if (!qword_27F24FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FF88);
  }

  return result;
}

unint64_t sub_24F79AEB4()
{
  result = qword_27F24FFA8;
  if (!qword_27F24FFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24FFB0);
    sub_24E602068(&qword_27F24FFB8, &qword_27F24FFC0);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FFA8);
  }

  return result;
}

unint64_t sub_24F79AF9C()
{
  result = qword_27F24FFC8;
  if (!qword_27F24FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FFC8);
  }

  return result;
}

unint64_t sub_24F79AFF4()
{
  result = qword_27F24FFD0;
  if (!qword_27F24FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FFD0);
  }

  return result;
}

unint64_t sub_24F79B04C()
{
  result = qword_27F24FFD8;
  if (!qword_27F24FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FFD8);
  }

  return result;
}

unint64_t sub_24F79B0A4()
{
  result = qword_27F24FFE0;
  if (!qword_27F24FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FFE0);
  }

  return result;
}

unint64_t sub_24F79B0FC()
{
  result = qword_27F24FFE8;
  if (!qword_27F24FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FFE8);
  }

  return result;
}

unint64_t sub_24F79B154()
{
  result = qword_27F24FFF0;
  if (!qword_27F24FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FFF0);
  }

  return result;
}

unint64_t sub_24F79B1AC()
{
  result = qword_27F24FFF8;
  if (!qword_27F24FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FFF8);
  }

  return result;
}

unint64_t sub_24F79B204()
{
  result = qword_27F250000;
  if (!qword_27F250000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250000);
  }

  return result;
}

unint64_t sub_24F79B25C()
{
  result = qword_27F250008;
  if (!qword_27F250008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250008);
  }

  return result;
}

unint64_t sub_24F79B2B4()
{
  result = qword_27F250010;
  if (!qword_27F250010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250010);
  }

  return result;
}

unint64_t sub_24F79B30C()
{
  result = qword_27F250018;
  if (!qword_27F250018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250018);
  }

  return result;
}

unint64_t sub_24F79B364()
{
  result = qword_27F250020;
  if (!qword_27F250020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250020);
  }

  return result;
}

uint64_t sub_24F79B3B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24F79B604@<X0>(_BYTE *a1@<X8>)
{
  v146 = a1;
  v2 = sub_24F927C88();
  v128 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927C58();
  v139 = *(v5 - 8);
  v140 = v5;
  MEMORY[0x28223BE20](v5);
  v138 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_24F927BC8();
  v144 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v132 = (&v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v131 = (&v124 - v9);
  MEMORY[0x28223BE20](v10);
  v136 = &v124 - v11;
  MEMORY[0x28223BE20](v12);
  v141 = &v124 - v13;
  MEMORY[0x28223BE20](v14);
  v130 = &v124 - v15;
  v145 = sub_24F927C28();
  v137 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v129 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v134 = &v124 - v18;
  MEMORY[0x28223BE20](v19);
  v135 = &v124 - v20;
  MEMORY[0x28223BE20](v21);
  v143 = &v124 - v22;
  MEMORY[0x28223BE20](v23);
  v133 = &v124 - v24;
  v25 = sub_24F927C68();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_24F927C78();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *v1;
  v35 = v1[1];
  v36 = v1[6];
  v37 = v36 >> 60;
  if ((v36 >> 60) <= 3)
  {
    if (v37 <= 1)
    {
      if (v37)
      {
        if (v34)
        {
          v53 = MEMORY[0x277CEC038];
        }

        else
        {
          v53 = MEMORY[0x277CEC040];
        }

        (*(v26 + 104))(v28, *v53, v25, v31);
        v46 = v146;
        (*(v26 + 32))(v146, v28, v25);
        v47 = MEMORY[0x277CEC0D0];
      }

      else
      {
        (*(v30 + 104))(v33, **(&unk_27968FB90 + v34), v29, v31);
        v46 = v146;
        (*(v30 + 32))(v146, v33, v29);
        v47 = MEMORY[0x277CEC0B8];
      }

      goto LABEL_67;
    }

    v48 = v146;
    *v146 = v34;
    v48[7] = HIBYTE(v34);
    *(v48 + 5) = HIDWORD(v34) >> 8;
    *(v48 + 1) = v34 >> 8;
    *(v48 + 1) = v35;
    if (v37 == 2)
    {
      v49 = MEMORY[0x277CEC0D8];
    }

    else
    {
      v49 = MEMORY[0x277CEC098];
    }

    v54 = *v49;
    v55 = sub_24F927CE8();
    (*(*(v55 - 8) + 104))(v48, v54, v55);
  }

  v38 = v1[2];
  v39 = v1[3];
  v40 = v1[4];
  v41 = v1[5];
  v42 = v1[7];
  if (v37 <= 5)
  {
    v50 = v142;
    v127 = v42;
    v126 = v36;
    v125 = v41;
    v124 = v39;
    if (v37 == 4)
    {
      v51 = (v36 >> 8);
      if (!v35)
      {
        [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
      }

      v66 = v35;
      sub_24F927C38();
      sub_24F927BF8();
      v134 = v51;
      if (v40)
      {
        v67 = v40;
        v68 = v130;
        sub_24F927BE8();
        v69 = v144;
        (*(v144 + 104))(v68, *MEMORY[0x277CEC028], v50);
        v70 = v38;
      }

      else
      {
        v69 = v144;
        if (!v38)
        {
          [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
        }

        v93 = v130;
        v70 = v38;
        sub_24F927BE8();
        (*(v69 + 104))(v93, *MEMORY[0x277CEC020], v50);
        v67 = 0;
      }

      v94 = *(v69 + 16);
      v95 = v141;
      v94();
      v96 = v137;
      v132 = *(v137 + 16);
      v132(v143, v133, v145);
      v97 = objc_allocWithZone(MEMORY[0x277CEC328]);
      v98 = sub_24F92B098();
      v99 = [v97 initWithBundleID_];

      [v99 setInstallProgress_];
      [v99 setDownloadProgress_];
      [v99 setPostProcessProgress_];
      [v99 setHasPostProcessing_];
      [v99 setEssentialBackgroundAssetDownloadEstimate_];
      [v99 setStoreExternalVersionID_];
      v100 = v95;
      (v94)(v136, v95, v50);
      v101 = v143;
      v102 = v145;
      v132(v135, v143, v145);
      v103 = v138;
      sub_24F927BB8();
      v104 = *(v96 + 8);
      v104(v101, v102);
      v105 = *(v144 + 8);
      v105(v100, v50);
      v105(v130, v50);
      v106 = v133;
    }

    else
    {
      v133 = (v36 >> 8);
      if (!v35)
      {
        [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
      }

      v71 = v38;
      v72 = v35;
      sub_24F927BE8();
      if (v40)
      {
        v73 = v40;
        v74 = v131;
        sub_24F927BE8();
        v75 = v144;
        (*(v144 + 104))(v74, *MEMORY[0x277CEC028], v50);
        v76 = v71;
        v77 = v73;
      }

      else
      {
        v75 = v144;
        if (!v71)
        {
          [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
        }

        v76 = v71;
        v107 = v131;
        sub_24F927BE8();
        (*(v75 + 104))(v107, *MEMORY[0x277CEC020], v50);
        v77 = 0;
      }

      v108 = *(v75 + 16);
      v109 = v141;
      v108();
      v110 = v137;
      v132 = *(v137 + 16);
      v132(v143, v134, v145);
      v111 = objc_allocWithZone(MEMORY[0x277CEC328]);
      v112 = sub_24F92B098();
      v113 = [v111 initWithBundleID_];

      [v113 setInstallProgress_];
      [v113 setDownloadProgress_];
      [v113 setPostProcessProgress_];
      [v113 setHasPostProcessing_];
      [v113 setEssentialBackgroundAssetDownloadEstimate_];
      [v113 setStoreExternalVersionID_];
      v114 = v109;
      (v108)(v136, v109, v50);
      v115 = v143;
      v102 = v145;
      v132(v135, v143, v145);
      v103 = v138;
      sub_24F927BB8();
      v104 = *(v110 + 8);
      v104(v115, v102);
      v116 = *(v144 + 8);
      v116(v114, v50);
      v116(v131, v50);
      v106 = v134;
    }

    v104(v106, v102);
    v46 = v146;
    (*(v139 + 32))(v146, v103, v140);
    goto LABEL_66;
  }

  if (v37 == 6)
  {
    v52 = v142;
    v126 = v36;
    v134 = (v36 >> 8);
    if (!v35)
    {
      [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
    }

    v61 = v35;
    sub_24F927BE8();
    v127 = v42;
    v125 = v41;
    v124 = v39;
    if (v40)
    {
      v62 = v40;
      v63 = v132;
      v133 = v62;
      sub_24F927BE8();
      v64 = v144;
      v65 = v52;
      (*(v144 + 104))(v63, *MEMORY[0x277CEC028], v52);
      v130 = v38;
    }

    else
    {
      v64 = v144;
      if (!v38)
      {
        [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
      }

      v130 = v38;
      v63 = v132;
      sub_24F927BE8();
      v65 = v52;
      (*(v64 + 104))(v63, *MEMORY[0x277CEC020], v52);
      v133 = 0;
    }

    v78 = *(v64 + 16);
    v78(v141, v63, v65);
    v79 = v137;
    v131 = *(v137 + 16);
    v80 = v143;
    v131();
    v81 = v65;
    v82 = objc_allocWithZone(MEMORY[0x277CEC328]);
    v83 = sub_24F92B098();
    v84 = [v82 initWithBundleID_];

    [v84 setInstallProgress_];
    [v84 setDownloadProgress_];
    [v84 setPostProcessProgress_];
    [v84 setHasPostProcessing_];
    [v84 setEssentialBackgroundAssetDownloadEstimate_];
    [v84 setStoreExternalVersionID_];
    v85 = v141;
    v78(v136, v141, v81);
    v86 = v80;
    v87 = v80;
    v88 = v145;
    (v131)(v135, v87, v145);
    v89 = v138;
    sub_24F927BB8();
    v90 = *(v79 + 8);
    v91 = v88;
    v90(v86, v88);
    v92 = *(v144 + 8);
    v92(v85, v81);
    v92(v132, v81);
    v90(v129, v91);
    v46 = v146;
    (*(v139 + 32))(v146, v89, v140);
LABEL_66:
    v47 = MEMORY[0x277CEC090];
LABEL_67:
    v117 = *v47;
    v118 = sub_24F927CE8();
    return (*(*(v118 - 8) + 104))(v46, v117, v118);
  }

  if (v37 == 7)
  {
    v43 = v128;
    if (v34)
    {
      v44 = MEMORY[0x277CEC070];
    }

    else
    {
      v44 = MEMORY[0x277CEC068];
    }

    (*(v128 + 104))(v4, *v44, v2, v31);
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250028) + 48);
    v46 = v146;
    (*(v43 + 32))(v146, v4, v2);
    *&v46[v45] = [v35 longLongValue];
    v47 = MEMORY[0x277CEC0C0];
    goto LABEL_67;
  }

  v57 = v38 | v35;
  v58 = v40 | v41;
  if (v36 != 0x8000000000000000 || v57 | v34 | v39 | v58 | v42)
  {
    v60 = v57 | v39 | v58;
    if ((v42 || v36 != 0x8000000000000000 || v34 != 1 || v60) && (v42 || v36 != 0x8000000000000000 || v34 != 2 || v60))
    {
      v59 = MEMORY[0x277CEC0B0];
    }

    else
    {
      v59 = MEMORY[0x277CEC0C8];
    }
  }

  else
  {
    v59 = MEMORY[0x277CEC0A8];
  }

  v119 = *v59;
  v120 = sub_24F927CE8();
  v121 = *(*(v120 - 8) + 104);
  v122 = v120;
  v123 = v146;

  return v121(v123, v119, v122);
}

uint64_t sub_24F79C750@<X0>(uint64_t *a1@<X8>)
{
  v188 = a1;
  v2 = sub_24F927C88();
  v175 = *(v2 - 8);
  v176 = v2;
  MEMORY[0x28223BE20](v2);
  v173 = &v168 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v174 = &v168 - v5;
  v6 = sub_24F927C28();
  v180 = *(v6 - 8);
  v181 = v6;
  MEMORY[0x28223BE20](v6);
  v168 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v170 = &v168 - v9;
  MEMORY[0x28223BE20](v10);
  v177 = &v168 - v11;
  MEMORY[0x28223BE20](v12);
  v178 = &v168 - v13;
  MEMORY[0x28223BE20](v14);
  v179 = &v168 - v15;
  v16 = sub_24F927BC8();
  v183 = *(v16 - 8);
  v184 = v16;
  MEMORY[0x28223BE20](v16);
  v169 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v171 = &v168 - v19;
  MEMORY[0x28223BE20](v20);
  v172 = &v168 - v21;
  MEMORY[0x28223BE20](v22);
  v185 = &v168 - v23;
  v24 = sub_24F927C58();
  v186 = *(v24 - 8);
  v187 = v24;
  MEMORY[0x28223BE20](v24);
  v182 = &v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24F927C68();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24F927C78();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v168 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24F927CE8();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = (&v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v38, v1, v34, v36);
  result = (*(v35 + 88))(v38, v34);
  if (result == *MEMORY[0x277CEC0B8])
  {
    (*(v35 + 96))(v38, v34);
    (*(v31 + 32))(v33, v38, v30);
    result = (*(v31 + 88))(v33, v30);
    if (result != *MEMORY[0x277CEC058])
    {
      if (result == *MEMORY[0x277CEC060])
      {
        v40 = 1;
        goto LABEL_21;
      }

      if (result == *MEMORY[0x277CEC050])
      {
        v40 = 2;
        goto LABEL_21;
      }

      if (result == *MEMORY[0x277CEC048])
      {
        v40 = 3;
        goto LABEL_21;
      }

      result = (*(v31 + 8))(v33, v30);
    }

    v40 = 0;
LABEL_21:
    v47 = v188;
    *v188 = v40;
    v47[6] = 0;
    return result;
  }

  if (result == *MEMORY[0x277CEC0D0])
  {
    (*(v35 + 96))(v38, v34);
    (*(v27 + 32))(v29, v38, v26);
    result = (*(v27 + 88))(v29, v26);
    if (result != *MEMORY[0x277CEC040])
    {
      if (result == *MEMORY[0x277CEC038])
      {
        v41 = 1;
LABEL_18:
        v46 = v188;
        *v188 = v41;
        v46[6] = 0x1000000000000000;
        return result;
      }

      result = (*(v27 + 8))(v29, v26);
    }

    v41 = 0;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277CEC0D8])
  {
    result = (*(v35 + 96))(v38, v34);
    v42 = v38[1];
    v43 = v188;
    *v188 = *v38;
    v43[1] = v42;
    v43[6] = 0x2000000000000000;
    return result;
  }

  if (result == *MEMORY[0x277CEC098])
  {
    result = (*(v35 + 96))(v38, v34);
    v44 = v38[1];
    v45 = v188;
    *v188 = *v38;
    v45[1] = v44;
    v45[6] = 0x3000000000000000;
    return result;
  }

  if (result != *MEMORY[0x277CEC090])
  {
    if (result != *MEMORY[0x277CEC0C0])
    {
      if (result == *MEMORY[0x277CEC0A8])
      {
        v98 = v188;
        *v188 = 0u;
        *(v98 + 1) = 0u;
        *(v98 + 2) = 0u;
        *(v98 + 3) = xmmword_24F966510;
        return result;
      }

      if (result == *MEMORY[0x277CEC0C8])
      {
        v114 = 1;
      }

      else
      {
        if (result != *MEMORY[0x277CEC0A0])
        {
          v143 = *MEMORY[0x277CEC0B0];
          v144 = v188;
          *v188 = 4;
          *(v144 + 1) = 0u;
          *(v144 + 3) = 0u;
          v144[5] = 0;
          *(v144 + 3) = xmmword_24F966510;
          if (result != v143)
          {
            return (*(v35 + 8))(v38, v34);
          }

          return result;
        }

        v114 = 2;
      }

      v125 = v188;
      *v188 = v114;
      *(v125 + 1) = 0u;
      *(v125 + 3) = 0u;
      v125[5] = 0;
      *(v125 + 3) = xmmword_24F966510;
      return result;
    }

    (*(v35 + 96))(v38, v34);
    v75 = *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250028) + 48));
    v77 = v174;
    v76 = v175;
    v78 = v38;
    v79 = v176;
    (v175[4])(v174, v78, v176);
    v80 = v173;
    (v76[2])(v173, v77, v79);
    v81 = (v76[11])(v80, v79);
    if (v81 != *MEMORY[0x277CEC068])
    {
      if (v81 == *MEMORY[0x277CEC070])
      {
        v82 = 1;
LABEL_45:
        v115 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
        result = (v76[1])(v77, v79);
        v116 = v188;
        *v188 = v82;
        v116[1] = v115;
        v116[6] = 0x7000000000000000;
        return result;
      }

      (v76[1])(v80, v79);
    }

    v82 = 0;
    goto LABEL_45;
  }

  (*(v35 + 96))(v38, v34);
  v48 = v186;
  v49 = v182;
  (*(v186 + 32))(v182, v38, v187);
  v50 = sub_24F927BA8();
  v51 = v185;
  sub_24F927BD8();
  v52 = v183;
  v53 = v184;
  v54 = v183[11];
  v55 = v54(v51, v184);
  v56 = *MEMORY[0x277CEC020];
  v176 = v50;
  if (v55 == v56)
  {
    (v52[12])(v51, v53);
    v58 = v179;
    v57 = v180;
    v59 = v181;
    (*(v180 + 32))(v179, v51, v181);
    v60 = v178;
    sub_24F927C48();
    sub_24F927BF8();
    v62 = v61;
    v63 = *(v57 + 8);
    v63(v60, v59);
    v64 = v177;
    sub_24F927C48();
    v185 = sub_24F927C08();
    v63(v64, v59);
    v184 = sub_24F927C08();
    v65 = sub_24F927B98();
    v183 = [v65 installProgress];

    v66 = sub_24F927B98();
    v67 = [v66 postProcessProgress];

    v68 = sub_24F927B78();
    LOBYTE(v64) = sub_24F927B88();
    v69 = sub_24F927B68();
    v63(v58, v59);
    result = (*(v48 + 8))(v49, v187);
    v70 = v188;
    *v188 = v62;
    v71 = v184;
    v70[1] = v185;
    v70[2] = v71;
    v70[3] = v183;
    v70[4] = v67;
    v72 = (v64 & 1) == 0;
LABEL_26:
    v73 = 0x5000000000000000;
    v74 = 0x5000000000000100;
LABEL_34:
    if (!v72)
    {
      v73 = v74;
    }

    v70[5] = v176;
    v70[6] = v73 & 0xFFFFFFFFFFFFFFFELL | v68 & 1;
    v70[7] = v69;
    return result;
  }

  v83 = v181;
  if (v55 == *MEMORY[0x277CEC018])
  {
    v84 = v185;
    (v52[12])(v185, v53);
    v86 = v179;
    v85 = v180;
    (*(v180 + 32))(v179, v84, v83);
    v87 = v178;
    sub_24F927C48();
    sub_24F927BF8();
    v89 = v88;
    v90 = *(v85 + 8);
    v90(v87, v83);
    v91 = v177;
    sub_24F927C48();
    v185 = sub_24F927C08();
    v90(v91, v83);
    v92 = sub_24F927B98();
    v184 = [v92 downloadProgress];

    v93 = sub_24F927C08();
    v94 = sub_24F927B98();
    v95 = [v94 postProcessProgress];

    v68 = sub_24F927B78();
    v96 = sub_24F927B88();
    v69 = sub_24F927B68();
    v90(v86, v83);
    result = (*(v186 + 8))(v49, v187);
    v70 = v188;
    *v188 = v89;
    v97 = v184;
    v70[1] = v185;
    v70[2] = v97;
    v70[3] = v93;
    v70[4] = v95;
    v72 = (v96 & 1) == 0;
    v73 = 0x6000000000000000;
    v74 = 0x6000000000000100;
    goto LABEL_34;
  }

  v99 = *MEMORY[0x277CEC028];
  if (v55 == *MEMORY[0x277CEC028])
  {
    v100 = v185;
    (v52[12])(v185, v53);
    v101 = v179;
    v102 = v180;
    (*(v180 + 32))(v179, v100, v83);
    v103 = v178;
    sub_24F927C48();
    sub_24F927BF8();
    v105 = v104;
    v106 = *(v102 + 8);
    v106(v103, v83);
    v107 = v177;
    sub_24F927C48();
    v185 = sub_24F927C08();
    v106(v107, v83);
    v108 = sub_24F927B98();
    v184 = [v108 downloadProgress];

    v109 = sub_24F927B98();
    v110 = [v109 installProgress];

    v111 = sub_24F927C08();
    v68 = sub_24F927B78();
    v112 = sub_24F927B88();
    v69 = sub_24F927B68();
    v106(v101, v83);
    result = (*(v186 + 8))(v49, v187);
    v70 = v188;
    *v188 = v105;
    v113 = v184;
    v70[1] = v185;
    v70[2] = v113;
    v70[3] = v110;
    v70[4] = v111;
    v72 = (v112 & 1) == 0;
    goto LABEL_26;
  }

  if (v55 == *MEMORY[0x277CEC030])
  {
    v117 = v52[12];
    v118 = v185;
    v175 = v52 + 12;
    v177 = v117;
    (v117)(v185, v53);
    v185 = *v118;
    v119 = swift_projectBox();
    v120 = v52[2];
    (v120)(v172, v119, v53);
    v121 = v171;
    v174 = v120;
    v120();
    if (v54(v121, v53) == v99)
    {
      (v177)(v121, v184);
      v122 = v180;
      v123 = v170;
      (*(v180 + 32))(v170, v121, v83);
      v177 = sub_24F927C08();
      (*(v122 + 8))(v123, v83);
      v124 = 0;
    }

    else
    {
      v145 = v177;
      v146 = v184;
      v147 = v183[1];
      v147(v121, v184);
      v148 = v169;
      (v174)(v169, v172, v146);
      if (v54(v148, v146) != v56)
      {
        v147(v148, v146);
        v177 = 0;
        v124 = 0;
        v151 = v186;
        v150 = v187;
        v83 = v181;
        v152 = v182;
        v122 = v180;
        goto LABEL_61;
      }

      v145(v148, v146);
      v122 = v180;
      v83 = v181;
      v149 = v168;
      (*(v180 + 32))(v168, v148, v181);
      v124 = sub_24F927C08();
      (*(v122 + 8))(v149, v83);
      v177 = 0;
    }

    v151 = v186;
    v150 = v187;
    v152 = v182;
LABEL_61:
    v153 = v179;
    sub_24F927C48();
    sub_24F927BF8();
    v155 = v154;
    v156 = *(v122 + 8);
    v156(v153, v83);
    v157 = v178;
    sub_24F927C48();
    v158 = sub_24F927C08();
    v156(v157, v83);
    v159 = sub_24F927B98();
    v160 = [v159 installProgress];

    v161 = v152;
    v162 = sub_24F927B78();
    v163 = sub_24F927B88();
    v164 = sub_24F927B68();
    (v183[1])(v172, v184);
    (*(v151 + 8))(v161, v150);

    v165 = v188;
    *v188 = v155;
    v165[1] = v158;
    v165[2] = v124;
    v166 = v177;
    v165[3] = v160;
    v165[4] = v166;
    v167 = 0x4000000000000000;
    if (v163)
    {
      v167 = 0x4000000000000100;
    }

    v165[5] = v176;
    v165[6] = v167 & 0xFFFFFFFFFFFFFFFELL | v162 & 1;
    v165[7] = v164;
    return result;
  }

  v126 = v179;
  sub_24F927C48();
  sub_24F927BF8();
  v128 = v127;
  v129 = v50;
  v130 = *(v180 + 8);
  v130(v126, v83);
  v131 = v178;
  sub_24F927C48();
  v132 = sub_24F927C08();
  v130(v131, v83);
  v133 = sub_24F927B98();
  v134 = [v133 downloadProgress];

  v135 = sub_24F927B98();
  v136 = [v135 installProgress];

  v137 = sub_24F927B98();
  v138 = v52;
  v139 = [v137 postProcessProgress];

  LOBYTE(v131) = sub_24F927B88();
  v140 = sub_24F927B68();
  (*(v186 + 8))(v49, v187);
  v141 = v188;
  *v188 = v128;
  v141[1] = v132;
  v141[2] = v134;
  v141[3] = v136;
  v141[4] = v139;
  v142 = 0x6000000000000000;
  if (v131)
  {
    v142 = 0x6000000000000100;
  }

  v141[5] = v129;
  v141[6] = v142;
  v141[7] = v140;
  return (v138[1])(v185, v53);
}

uint64_t sub_24F79DAA0()
{
  sub_24F47DF84();
  sub_24F924868();
  return v1;
}

uint64_t sub_24F79DB10()
{
  sub_24F92B218();
}

uint64_t sub_24F79DBFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F79DE74();
  *a1 = result;
  return result;
}

void sub_24F79DC2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6C6C616D73;
  v5 = 0xE500000000000000;
  v6 = 0x656772616CLL;
  v7 = 0xEA00000000006567;
  v8 = 0x72614C6172747865;
  if (v2 != 4)
  {
    v8 = 1869768040;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x746361706D6F63;
  if (v2 != 1)
  {
    v10 = 0x7469617274726F70;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_24F79DD54()
{
  result = qword_27F250030;
  if (!qword_27F250030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250030);
  }

  return result;
}

unint64_t sub_24F79DDB8()
{
  result = qword_27F250040;
  if (!qword_27F250040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250040);
  }

  return result;
}

uint64_t sub_24F79DE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F79DDB8();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_24F79DE74()
{
  v0 = sub_24F92CB88();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24F79DEC0()
{
  result = qword_27F250048;
  if (!qword_27F250048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250048);
  }

  return result;
}

uint64_t sub_24F79DF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F79E00C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AchievementDetailsGlobalPlayer()
{
  result = qword_27F250050;
  if (!qword_27F250050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F79E108()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E61C8D4();
    if (v1 <= 0x3F)
    {
      sub_24E61C938();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24F79E1B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250088);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F79F1A8();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    type metadata accessor for AchievementDetailsGlobalPlayer();
    v8[11] = 4;
    sub_24F929608();
    sub_24F79F2BC(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F79E4C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250078);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for AchievementDetailsGlobalPlayer();
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 72) = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 13) = 0;
  v33 = v13 + 72;
  sub_24E61DA68(&v36, (v13 + 72), qword_27F21B590);
  v14 = *(v11 + 40);
  v15 = sub_24F929608();
  v16 = *(*(v15 - 8) + 56);
  v35 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24F79F1A8();
  v32 = v9;
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
    sub_24E601704(v33, qword_27F24EC90);
    return sub_24E601704(&v13[v35], &qword_27F213E68);
  }

  else
  {
    v28 = v6;
    v18 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v39 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v19 = v31;
    sub_24F92CC68();
    v20 = v37;
    *v13 = v36;
    *(v13 + 1) = v20;
    *(v13 + 4) = v38;
    LOBYTE(v36) = 1;
    v21 = v18;
    *(v13 + 5) = sub_24F92CC28();
    *(v13 + 6) = v22;
    LOBYTE(v36) = 2;
    v23 = sub_24F92CC28();
    v24 = v33;
    *(v13 + 7) = v23;
    *(v13 + 8) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v39 = 3;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v36, v24, qword_27F24EC90);
    LOBYTE(v36) = 4;
    sub_24F79F2BC(&qword_27F213F48, MEMORY[0x277D21F70]);
    v26 = v28;
    sub_24F92CC18();
    (*(v21 + 8))(v32, v19);
    sub_24E61DA68(v26, &v13[v35], &qword_27F213E68);
    sub_24F79F1FC(v13, v29);
    __swift_destroy_boxed_opaque_existential_1(v34);
    return sub_24F79F260(v13);
  }
}

uint64_t sub_24F79EA40()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D614E7465737361;
  v4 = 0x6575676573;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F79EAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F79F4D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F79EAF8(uint64_t a1)
{
  v2 = sub_24F79F1A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F79EB34(uint64_t a1)
{
  v2 = sub_24F79F1A8();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24F79EBF0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_24F9249A8();
  v15 = 0;
  sub_24F79EDBC(&v17);
  v28 = v21;
  v29 = v22;
  v30 = v23;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v31[0] = v17;
  v31[1] = v18;
  v31[2] = v19;
  v31[3] = v20;
  v31[4] = v21;
  v31[5] = v22;
  v32 = v23;
  sub_24E60169C(&v24, v13, &qword_27F250070);
  sub_24E601704(v31, &qword_27F250070);
  *&v14[55] = v27;
  *&v14[71] = v28;
  *&v14[87] = v29;
  *&v14[7] = v24;
  *&v14[23] = v25;
  v14[103] = v30;
  *&v14[39] = v26;
  v3 = v15;
  sub_24F927628();
  sub_24F9242E8();
  *&v16[55] = v20;
  *&v16[71] = v21;
  *&v16[87] = v22;
  *&v16[103] = v23;
  *&v16[7] = v17;
  *&v16[23] = v18;
  *&v16[39] = v19;
  *a1 = v2;
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = v3;
  v4 = *&v14[32];
  *(a1 + 65) = *&v14[48];
  v5 = *&v14[80];
  *(a1 + 81) = *&v14[64];
  *(a1 + 97) = v5;
  *(a1 + 113) = *&v14[96];
  v6 = *&v14[16];
  *(a1 + 17) = *v14;
  *(a1 + 33) = v6;
  *(a1 + 49) = v4;
  v7 = *v16;
  v8 = *&v16[16];
  v9 = *&v16[32];
  *(a1 + 169) = *&v16[48];
  *(a1 + 153) = v9;
  *(a1 + 137) = v8;
  *(a1 + 121) = v7;
  result = *&v16[64];
  v11 = *&v16[80];
  v12 = *&v16[96];
  *(a1 + 232) = *&v16[111];
  *(a1 + 217) = v12;
  *(a1 + 201) = v11;
  *(a1 + 185) = result;
  return result;
}

uint64_t sub_24F79EDBC@<X0>(uint64_t a1@<X8>)
{

  v34 = sub_24F926E48();
  v33 = sub_24F925838();
  sub_24F923318();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_24E600AEC();

  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  sub_24F925898();
  v15 = sub_24F925C98();
  v17 = v16;
  v19 = v18;

  sub_24E600B40(v10, v12, v14 & 1);

  sub_24F926D38();
  v20 = sub_24F925C48();
  v22 = v21;
  v24 = v23;

  sub_24E600B40(v15, v17, v19 & 1);

  sub_24F925938();
  v25 = sub_24F925B78();
  v27 = v26;
  LOBYTE(v15) = v28;
  v30 = v29;
  sub_24E600B40(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  *a1 = v34;
  *(a1 + 8) = v33;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 56) = v25;
  *(a1 + 64) = v27;
  *(a1 + 72) = v15 & 1;
  *(a1 + 80) = v30;
  *(a1 + 88) = KeyPath;
  *(a1 + 96) = 0;

  sub_24E5FD138(v25, v27, v15 & 1);

  sub_24E600B40(v25, v27, v15 & 1);
}

uint64_t sub_24F79F010()
{
  sub_24F47DDB4();

  return sub_24F9218E8();
}

unint64_t sub_24F79F0A0()
{
  result = qword_27F250068;
  if (!qword_27F250068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250068);
  }

  return result;
}

unint64_t sub_24F79F1A8()
{
  result = qword_27F250080;
  if (!qword_27F250080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250080);
  }

  return result;
}

uint64_t sub_24F79F1FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementDetailsGlobalPlayer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F79F260(uint64_t a1)
{
  v2 = type metadata accessor for AchievementDetailsGlobalPlayer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F79F2BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F79F318()
{
  result = qword_27F250090;
  if (!qword_27F250090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250098);
    sub_24E602068(&qword_27F2500A0, &qword_27F2500A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250090);
  }

  return result;
}

unint64_t sub_24F79F3D4()
{
  result = qword_27F2500B0;
  if (!qword_27F2500B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2500B0);
  }

  return result;
}

unint64_t sub_24F79F42C()
{
  result = qword_27F2500B8;
  if (!qword_27F2500B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2500B8);
  }

  return result;
}

unint64_t sub_24F79F484()
{
  result = qword_27F2500C0;
  if (!qword_27F2500C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2500C0);
  }

  return result;
}

uint64_t sub_24F79F4D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E7465737361 && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24F79F69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F79F7EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for GameLibraryAccessoryView()
{
  result = qword_27F2500D0;
  if (!qword_27F2500D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F79F974()
{
  sub_24F79FA98(319, &qword_27F2500E0, type metadata accessor for GameLibraryOptionProvider, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_24E833194();
    if (v1 <= 0x3F)
    {
      sub_24E600550();
      if (v2 <= 0x3F)
      {
        sub_24F79FA98(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F79FA98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24F79FB18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v79 = a1;
  v71 = sub_24F929888();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_24F927768();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for GameLibraryAccessoryView();
  v5 = *(v67 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v67);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500E8);
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v58 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500F0);
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v9 = &v58 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500F8);
  MEMORY[0x28223BE20](v68);
  v11 = &v58 - v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250100);
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v80 = &v58 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250108);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v58 - v13;
  sub_24F7A50E0(v2, &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v81 = *(v5 + 80);
  v82 = v6;
  v15 = swift_allocObject();
  v73 = v14;
  v78 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F7A5148(v78, v15 + v14);
  v85 = v2;
  v83 = v2;
  v84 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250110);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234CB8);
  v17 = v9;
  v18 = sub_24F7A522C(&qword_27F234CC0, &qword_27F234CB8, &unk_24FA052C0, sub_24EF698BC);
  v87 = v16;
  v88 = v18;
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F250118, &qword_27F250110);
  v19 = v59;
  v20 = v61;
  v21 = v60;
  sub_24F925AA8();
  v22 = v64;
  sub_24F927758();
  sub_24E602068(&qword_27F250120, &qword_27F2500E8);
  v23 = v62;
  sub_24F926BA8();
  (*(v65 + 8))(v22, v66);
  (*(v63 + 8))(v20, v23);
  v90 = MEMORY[0x277CE1120];
  v91 = sub_24E63E454();
  sub_24E60169C(&v87, v11, &qword_27F250128);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250130);
  (*(v21 + 16))(&v11[v24[9]], v9, v19);
  v25 = &v11[v24[10]];
  *v25 = sub_24F923398() & 1;
  *(v25 + 1) = v26;
  v25[16] = v27 & 1;
  v28 = &v11[v24[11]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v29 = qword_27F24E488;
  v30 = sub_24F923398();
  v32 = v31;
  v34 = v33;
  v35 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250138) + 36)];
  *v35 = v29;
  v35[8] = v30 & 1;
  *(v35 + 2) = v32;
  v35[24] = v34 & 1;
  LOBYTE(v29) = sub_24F923398();
  v37 = v36;
  LOBYTE(v32) = v38;
  sub_24E601704(&v87, &qword_27F250128);
  (*(v21 + 8))(v17, v19);
  v39 = v68;
  v40 = &v11[*(v68 + 36)];
  *v40 = v29 & 1;
  *(v40 + 1) = v37;
  v40[16] = v32 & 1;
  v41 = v69;
  sub_24F9297E8();
  v42 = sub_24F7A52E4();
  sub_24F925EE8();
  (*(v70 + 8))(v41, v71);
  sub_24E601704(v11, &qword_27F2500F8);
  v71 = *(v67 + 20);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500C8);
  v43 = v83;
  sub_24F927358();
  v44 = v87;
  swift_getKeyPath();
  v87 = v44;
  v69 = sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  swift_beginAccess();
  v45 = *(v44 + 64);

  v86 = v45;
  v46 = v78;
  sub_24F7A50E0(v43, v78);
  v47 = v73;
  v48 = swift_allocObject();
  sub_24F7A5148(v46, v48 + v47);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250158);
  v87 = v39;
  v88 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = sub_24E602068(&qword_27F250160, &qword_27F250158);
  v50 = v74;
  v51 = v75;
  v52 = v80;
  sub_24F926AB8();

  (*(v72 + 8))(v52, v51);
  v53 = v83;
  sub_24F927358();
  v54 = v87;
  swift_getKeyPath();
  v87 = v54;
  sub_24F91FD88();

  LOBYTE(v52) = *(v54 + 72);

  LOBYTE(v86) = v52;
  sub_24F7A50E0(v53, v46);
  v55 = swift_allocObject();
  sub_24F7A5148(v46, v55 + v47);
  v87 = v51;
  v88 = v67;
  v89 = OpaqueTypeConformance2;
  v90 = v68;
  swift_getOpaqueTypeConformance2();
  sub_24F7A566C();
  v56 = v77;
  sub_24F926AB8();

  return (*(v76 + 8))(v50, v56);
}

uint64_t sub_24F7A0744(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F921B58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GameLibraryAccessoryView();
  sub_24E60169C(a2 + *(v11 + 28), &v20, &qword_27F215690);
  if (v23 == 1)
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v12 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
LABEL_3:
      __swift_project_boxed_opaque_existential_1(&v24, v12);
      *(&v21 + 1) = sub_24F9284A8();
      v22 = MEMORY[0x277D21B60];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      sub_24F7A0A24(boxed_opaque_existential_1);
      sub_24F76973C(v6);
      sub_24F9218A8();
      (*(v4 + 8))(v6, v3);
      __swift_destroy_boxed_opaque_existential_1(&v20);
      return __swift_destroy_boxed_opaque_existential_1(&v24);
    }
  }

  else
  {
    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    v19 = v7;
    v16 = v4;
    v17 = v15;
    sub_24F921FD8();

    v4 = v16;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v19);
    v12 = *(&v25 + 1);
    if (*(&v25 + 1))
    {
      goto LABEL_3;
    }
  }

  return sub_24E601704(&v24, &unk_27F212740);
}

uint64_t sub_24F7A0A24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_24F9294C8();
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F929458();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24F928698();
  v33 = *(v34 - 8);
  v9 = v33;
  MEMORY[0x28223BE20](v34);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928AD8();
  MEMORY[0x28223BE20](v11 - 8);
  v32 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  sub_24F9293F8();
  v14 = sub_24F929448();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = MEMORY[0x277D837D0];
  *(inited + 48) = v14;
  *(inited + 56) = v16;
  *(inited + 72) = v17;
  *(inited + 80) = 0x6449746567726174;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = 0x7265746C6966;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v17;
  *(inited + 128) = 0x7954746567726174;
  *(inited + 136) = 0xEA00000000006570;
  *(inited + 144) = 0x7265746C6966;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v17;
  *(inited + 176) = 0x79546E6F69746361;
  *(inited + 216) = v17;
  *(inited + 184) = 0xEA00000000006570;
  *(inited + 192) = 0x6E6F74747562;
  *(inited + 200) = 0xE600000000000000;
  sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948);
  v18 = sub_24F92A2C8();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v29 = xmmword_24F93DE60;
  *(v21 + 16) = xmmword_24F93DE60;
  sub_24F92A2A8();
  sub_24E805DFC(v21);
  swift_setDeallocating();
  (*(v19 + 8))(v21 + v20, v18);
  swift_deallocClassInstance();

  v22 = v31;
  sub_24F928658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8);
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v29;
  v25 = v22;
  v26 = v22;
  v27 = v34;
  (*(v9 + 16))(v24 + v23, v25, v34);
  sub_24F9294B8();
  sub_24F928AA8();
  (*(v9 + 8))(v26, v27);
  return sub_24F928498();
}

uint64_t sub_24F7A0F64@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250170);
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250178);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  sub_24F7A1320(&v30 - v13);
  if (qword_27F2115A0 != -1)
  {
    swift_once();
  }

  v32 = &v30;
  v36 = qword_27F39EC08;
  v37 = unk_27F39EC10;
  MEMORY[0x28223BE20](unk_27F39EC10);
  *(&v30 - 2) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250180);
  sub_24E602068(&qword_27F250188, &qword_27F250180);
  sub_24E600AEC();
  sub_24F927288();
  v30 = *(v9 + 16);
  v31 = v14;
  v15 = v11;
  v16 = v8;
  v30(v11, v14, v8);
  v17 = v3;
  v32 = *(v3 + 16);
  v19 = v33;
  v18 = v34;
  v32(v33, v7, v34);
  v20 = v16;
  v21 = v9;
  v22 = v7;
  v23 = v19;
  v24 = v35;
  v25 = v20;
  (v30)(v35, v15);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250190);
  v32((v24 + *(v26 + 48)), v23, v18);
  v27 = *(v17 + 8);
  v27(v22, v18);
  v28 = *(v21 + 8);
  v28(v31, v25);
  v27(v23, v18);
  return (v28)(v15, v25);
}

uint64_t sub_24F7A1320@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_24F9248E8();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v21 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250250);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250258);
  v19 = *(v11 - 8);
  v20 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  if (qword_27F211598 != -1)
  {
    swift_once();
  }

  v31 = qword_27F39EBF8;
  v32 = unk_27F39EC00;
  type metadata accessor for GameLibraryAccessoryView();

  sub_24F927368();
  swift_getKeyPath();
  sub_24F927388();

  (*(v4 + 8))(v6, v3);
  v25 = v28;
  v26 = v29;
  v27 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250260);
  sub_24F7AA9A4();
  sub_24F7AA9F8();
  sub_24E600AEC();
  sub_24F927098();
  v14 = sub_24E602068(&qword_27F250278, &qword_27F250250);
  sub_24F926968();
  (*(v8 + 8))(v10, v7);
  v15 = v21;
  sub_24F9248D8();
  v28 = v7;
  v29 = v14;
  swift_getOpaqueTypeConformance2();
  v16 = v20;
  v17 = v24;
  sub_24F9261F8();
  (*(v23 + 8))(v15, v17);
  return (*(v19 + 8))(v13, v16);
}

uint64_t sub_24F7A177C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_24F9248C8();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x28223BE20](v1);
  v36 = &KeyPath - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &KeyPath - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CE0);
  MEMORY[0x28223BE20](v6);
  v8 = (&KeyPath - v7);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CD0);
  MEMORY[0x28223BE20](v34);
  v10 = &KeyPath - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CB8);
  MEMORY[0x28223BE20](v35);
  v12 = &KeyPath - v11;
  v33 = sub_24F926DF8();
  v32 = sub_24F9258F8();
  KeyPath = swift_getKeyPath();
  type metadata accessor for GameLibraryAccessoryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500C8);
  sub_24F927358();
  v13 = sub_24F7ABF28();

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    sub_24F924CF8();
    v14 = 0;
  }

  v15 = sub_24F924D08();
  (*(*(v15 - 8) + 56))(v5, v14, 1, v15);
  v16 = swift_getKeyPath();
  v17 = (v8 + *(v6 + 36));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0);
  sub_24E6009C8(v5, v17 + *(v18 + 28), &qword_27F214410);
  *v17 = v16;
  v20 = KeyPath;
  v19 = v32;
  *v8 = v33;
  v8[1] = v20;
  v8[2] = v19;
  sub_24F927358();
  v21 = sub_24F7ABF28();

  v22 = 0;
  if (!v21)
  {
    v22 = sub_24F926D18();
  }

  v23 = swift_getKeyPath();
  sub_24E6009C8(v8, v10, &qword_27F234CE0);
  v24 = &v10[*(v34 + 36)];
  *v24 = v23;
  v24[1] = v22;
  sub_24F927358();
  v25 = sub_24F7ABF28();

  if (v25)
  {
    v26 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  else
  {
    v26 = 0;
  }

  v27 = swift_getKeyPath();
  sub_24E6009C8(v10, v12, &qword_27F234CD0);
  v28 = v36;
  v29 = &v12[*(v35 + 36)];
  *v29 = v27;
  v29[1] = v26;
  sub_24F9248B8();
  sub_24F7A522C(&qword_27F234CC0, &qword_27F234CB8, &unk_24FA052C0, sub_24EF698BC);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v38 + 8))(v28, v39);
  return sub_24E601704(v12, &qword_27F234CB8);
}

uint64_t sub_24F7A1C28(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  if (*(*a2 + 16) <= *(*a1 + 16) >> 3)
  {
    v13 = *a1;

    v6 = sub_24F7A6DDC(v5);
    v7 = v4;
  }

  else
  {

    v6 = sub_24F7A7E6C(v5, v4);
    v7 = v6;
  }

  MEMORY[0x28223BE20](v6);
  v12 = a3;
  sub_24EB0B8C4(sub_24F7A9DA0, v11, v7);

  if (*(v4 + 16) <= *(v5 + 16) >> 3)
  {
    v13 = v5;

    v8 = sub_24F7A6DDC(v4);
    v9 = v13;
  }

  else
  {

    v8 = sub_24F7A7E6C(v4, v5);
    v9 = v8;
  }

  MEMORY[0x28223BE20](v8);
  v12 = a3;
  sub_24EB0B8C4(sub_24F7A9DC8, v11, v9);
}

uint64_t sub_24F7A1D94(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v22[0] = a3;
  v5 = sub_24F921B58();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(type metadata accessor for GameLibraryAccessoryView() + 28);
  v22[1] = a2;
  sub_24E60169C(a2 + v13, &v25, &qword_27F215690);
  if (v28 != 1)
  {
    sub_24F92BDC8();
    v21 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v14 = *(&v30 + 1);
    if (*(&v30 + 1))
    {
      goto LABEL_3;
    }

    return sub_24E601704(&v29, &unk_27F212740);
  }

  v29 = v25;
  v30 = v26;
  v31 = v27;
  v14 = *(&v26 + 1);
  if (!*(&v26 + 1))
  {
    return sub_24E601704(&v29, &unk_27F212740);
  }

LABEL_3:
  __swift_project_boxed_opaque_existential_1(&v29, v14);
  v15 = 0xE600000000000000;
  v16 = 0x656461637241;
  if (v12 != 1)
  {
    v16 = 0xD000000000000011;
    v15 = 0x800000024FA7DAA0;
  }

  if (v12)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x656C6C6174736E49;
  }

  if (v12)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0xE900000000000064;
  }

  *(&v26 + 1) = sub_24F9284A8();
  v27 = MEMORY[0x277D21B60];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
  sub_24F7A20C4(v17, v18, v22[0], boxed_opaque_existential_1);

  sub_24F76973C(v7);
  sub_24F9218A8();
  (*(v23 + 8))(v7, v24);
  __swift_destroy_boxed_opaque_existential_1(&v25);
  return __swift_destroy_boxed_opaque_existential_1(&v29);
}

uint64_t sub_24F7A20C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v35 = a3;
  v5 = v4;
  v34 = a2;
  v33 = a1;
  v42 = a4;
  v6 = sub_24F9294C8();
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F929458();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_24F928698();
  v39 = *(v40 - 8);
  v12 = v39;
  MEMORY[0x28223BE20](v40);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F928AD8();
  MEMORY[0x28223BE20](v15 - 8);
  v38 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v5[1];
  v37 = *v5;
  v36 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  sub_24F9293F8();
  v19 = sub_24F929448();
  v21 = v20;
  (*(v9 + 8))(v11, v8);
  v22 = MEMORY[0x277D837D0];
  *(inited + 48) = v19;
  *(inited + 56) = v21;
  *(inited + 72) = v22;
  *(inited + 80) = 0x6449746567726174;
  v23 = v33;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v23;
  *(inited + 104) = v34;
  *(inited + 120) = v22;
  *(inited + 128) = 0x7954746567726174;
  *(inited + 136) = 0xEA00000000006570;
  *(inited + 144) = 0x6E6F74747562;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v22;
  *(inited + 176) = 0x79546E6F69746361;
  *(inited + 216) = v22;
  v24 = v35;
  *(inited + 184) = 0xEA00000000006570;
  *(inited + 192) = v24;
  *(inited + 200) = 0xE600000000000000;

  sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948);
  v25 = sub_24F92A2C8();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  v35 = xmmword_24F93DE60;
  *(v28 + 16) = xmmword_24F93DE60;
  sub_24F92A2A8();
  sub_24E805DFC(v28);
  swift_setDeallocating();
  (*(v26 + 8))(v28 + v27, v25);
  swift_deallocClassInstance();

  sub_24F928658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8);
  v29 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v35;
  v31 = v40;
  (*(v12 + 16))(v30 + v29, v14, v40);
  sub_24F9294B8();
  sub_24F928AA8();
  (*(v12 + 8))(v14, v31);
  return sub_24F928498();
}

uint64_t sub_24F7A2628(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v22 = sub_24F921B58();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *(type metadata accessor for GameLibraryAccessoryView() + 28);
  v21 = a3;
  sub_24E60169C(a3 + v13, &v23, &qword_27F215690);
  if (v26 != 1)
  {
    sub_24F92BDC8();
    v20 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v14 = *(&v28 + 1);
    if (*(&v28 + 1))
    {
      goto LABEL_3;
    }

    return sub_24E601704(&v27, &unk_27F212740);
  }

  v27 = v23;
  v28 = v24;
  v29 = v25;
  v14 = *(&v24 + 1);
  if (!*(&v24 + 1))
  {
    return sub_24E601704(&v27, &unk_27F212740);
  }

LABEL_3:
  __swift_project_boxed_opaque_existential_1(&v27, v14);
  v15 = v12 == 0;
  if (v12)
  {
    v16 = 1701667182;
  }

  else
  {
    v16 = 0x746E65636572;
  }

  if (v15)
  {
    v17 = 0xE600000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  *(&v24 + 1) = sub_24F9284A8();
  v25 = MEMORY[0x277D21B60];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
  sub_24F7A20C4(v16, v17, 0x7463656C6573, boxed_opaque_existential_1);

  sub_24F76973C(v7);
  sub_24F9218A8();
  (*(v5 + 8))(v7, v22);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  return __swift_destroy_boxed_opaque_existential_1(&v27);
}

uint64_t sub_24F7A293C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_24F7A2A1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250288);
  sub_24E602068(&qword_27F250290, &qword_27F250280);
  sub_24F7AA9A4();
  swift_getOpaqueTypeConformance2();
  sub_24F7AAABC();
  return sub_24F927238();
}

uint64_t sub_24F7A2B50@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = "f.FilterMenu.Categories.Text";
  if (*a1)
  {
    v4 = "f.SortMenu.Recent.Text";
    v5 = 0xD000000000000024;
  }

  else
  {
    v5 = 0xD000000000000026;
  }

  v6 = v4 | 0x8000000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  localizedString(_:comment:)(*&v5, v7);
  sub_24E600AEC();
  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_24F7A2BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a1;
  v154 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250198);
  v152 = *(v3 - 8);
  v153 = v3;
  MEMORY[0x28223BE20](v3);
  v141 = v115 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v5 - 8);
  v131 = v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v133 = v115 - v8;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212828);
  v134 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v132 = v115 - v9;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A90);
  MEMORY[0x28223BE20](v130);
  v140 = v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v129 = v115 - v12;
  MEMORY[0x28223BE20](v13);
  v137 = v115 - v14;
  v139 = sub_24F9271F8();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v135 = v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v156 = v115 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501A0);
  MEMORY[0x28223BE20](v18 - 8);
  v151 = v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v150 = v115 - v21;
  v125 = sub_24F923F98();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501A8);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = v115 - v23;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501B0);
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v119 = v115 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501B8);
  MEMORY[0x28223BE20](v25 - 8);
  v117 = v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v118 = v115 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501C0);
  MEMORY[0x28223BE20](v29 - 8);
  v149 = v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v158 = v115 - v32;
  v33 = type metadata accessor for GameLibraryAccessoryView();
  v34 = v33 - 8;
  v35 = *(v33 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501C8);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = v115 - v39;
  v161 = &unk_2861C2760;
  sub_24F7A50E0(a1, v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = *(v35 + 80);
  v42 = (v41 + 16) & ~v41;
  v116 = v36;
  v126 = v42 + v36;
  v43 = swift_allocObject();
  v128 = v42;
  v155 = v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F7A5148(v155, v43 + v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2461F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DFA0);
  sub_24E602068(&qword_27F2501D0, &qword_27F2461F8);
  sub_24E602068(&qword_27F2501D8, &qword_27F24DFA0);
  v113 = sub_24F7A9EB8();
  v157 = v40;
  v44 = v142;
  sub_24F927238();
  v45 = *(v34 + 28);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500C8);
  sub_24F927358();
  v46 = v161;
  swift_getKeyPath();
  v161 = v46;
  v47 = sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  v48 = *&v46[OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genresFilterOptions];

  v49 = *(v48 + 16);

  v127 = v41;
  if (v49)
  {
    v50 = v155;
    sub_24F7A50E0(v44, v155);
    sub_24F92B7F8();
    v51 = sub_24F92B7E8();
    v52 = (v41 + 32) & ~v41;
    v53 = swift_allocObject();
    v115[1] = v45;
    v54 = MEMORY[0x277D85700];
    *(v53 + 16) = v51;
    *(v53 + 24) = v54;
    sub_24F7A5148(v50, v53 + v52);
    sub_24F7A50E0(v44, v50);
    v55 = sub_24F92B7E8();
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = v54;
    sub_24F7A5148(v50, v56 + v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8);
    v116 = v47;
    v57 = v118;
    v58 = sub_24F9271A8();
    v115[0] = v115;
    MEMORY[0x28223BE20](v58);
    sub_24E60169C(v57, v117, &qword_27F2501B8);
    sub_24F7A4C78(&v161);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501F8);
    sub_24E602068(&qword_27F250200, &qword_27F2501F0);
    v113 = sub_24F7AA1FC();
    v114 = sub_24F7AA2F8();
    v59 = v120;
    sub_24F927088();
    v60 = v123;
    sub_24F923F88();
    sub_24E602068(&qword_27F250220, &qword_27F2501A8);
    v61 = v119;
    v62 = v122;
    v63 = v125;
    sub_24F9261F8();
    (*(v124 + 8))(v60, v63);
    (*(v121 + 8))(v59, v62);
    sub_24E601704(v57, &qword_27F2501B8);
    v64 = v144;
    v65 = v158;
    v66 = v145;
    (*(v144 + 32))(v158, v61, v145);
    v67 = 0;
    v68 = v65;
    v69 = v155;
    v70 = v66;
    v71 = v64;
  }

  else
  {
    v67 = 1;
    v68 = v158;
    v69 = v155;
    v70 = v145;
    v71 = v144;
  }

  (*(v71 + 56))(v68, v67, 1, v70);
  sub_24F927358();
  v72 = v161;
  swift_getKeyPath();
  v161 = v72;
  sub_24F91FD88();

  swift_beginAccess();
  if (*(*(v72 + 8) + 16))
  {
  }

  else
  {
    swift_getKeyPath();
    v160 = v72;
    sub_24F91FD88();

    v73 = *&v72[OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID + 8];

    if (!v73)
    {
      v101 = 1;
      v100 = v150;
      goto LABEL_11;
    }
  }

  sub_24F9271E8();
  sub_24F927358();
  v74 = v160;
  swift_getKeyPath();
  v160 = v74;
  sub_24F91FD88();

  swift_beginAccess();
  v75 = *(*(v74 + 8) + 16);
  swift_getKeyPath();
  v159[0] = v74;
  sub_24F91FD88();

  v76 = *&v74[OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID + 8];

  if (v76)
  {
    v77 = v75 + 1;
  }

  else
  {
    v77 = v75;
  }

  v78 = _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(0xD00000000000002ELL, 0x800000024FA7DAC0, v77);
  v80 = v79;
  v81 = v133;
  sub_24F9232B8();
  v82 = sub_24F9232F8();
  (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
  sub_24F7A50E0(v44, v69);
  v83 = swift_allocObject();
  sub_24F7A5148(v69, v83 + v128);
  v159[0] = v78;
  v159[1] = v80;
  v84 = sub_24E60169C(v81, v131, &unk_27F254FA0);
  MEMORY[0x28223BE20](v84);
  v115[-4] = v159;
  v115[-3] = 0x69632E73756E696DLL;
  v113 = 0xEC000000656C6372;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58);
  sub_24E602068(&qword_27F212910, &qword_27F211B58);
  v85 = v132;
  sub_24F926F78();
  sub_24E601704(v81, &unk_27F254FA0);

  v86 = sub_24F926C28();
  KeyPath = swift_getKeyPath();
  v88 = v129;
  (*(v134 + 32))(v129, v85, v136);
  v89 = (v88 + *(v130 + 36));
  *v89 = KeyPath;
  v89[1] = v86;
  v90 = v137;
  sub_24E6009C8(v88, v137, &qword_27F231A90);
  v91 = v138;
  v92 = *(v138 + 16);
  v93 = v135;
  v94 = v156;
  v95 = v139;
  v92(v135, v156, v139);
  v96 = v140;
  sub_24E60169C(v90, v140, &qword_27F231A90);
  v97 = v141;
  v92(v141, v93, v95);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250228);
  sub_24E60169C(v96, v97 + *(v98 + 48), &qword_27F231A90);
  sub_24E601704(v90, &qword_27F231A90);
  v99 = *(v91 + 8);
  v99(v94, v95);
  sub_24E601704(v96, &qword_27F231A90);
  v99(v93, v95);
  v100 = v150;
  sub_24E6009C8(v97, v150, &qword_27F250198);
  v101 = 0;
LABEL_11:
  (*(v152 + 56))(v100, v101, 1, v153);
  v102 = v147;
  v103 = *(v147 + 16);
  v104 = v146;
  v105 = v148;
  v103(v146, v157, v148);
  v106 = v158;
  v107 = v149;
  sub_24E60169C(v158, v149, &qword_27F2501C0);
  v108 = v151;
  sub_24E60169C(v100, v151, &qword_27F2501A0);
  v109 = v154;
  v103(v154, v104, v105);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250230);
  sub_24E60169C(v107, v109 + *(v110 + 48), &qword_27F2501C0);
  sub_24E60169C(v108, v109 + *(v110 + 64), &qword_27F2501A0);
  sub_24E601704(v100, &qword_27F2501A0);
  sub_24E601704(v106, &qword_27F2501C0);
  v111 = *(v102 + 8);
  v111(v157, v105);
  sub_24E601704(v108, &qword_27F2501A0);
  sub_24E601704(v107, &qword_27F2501C0);
  return (v111)(v104, v105);
}

uint64_t sub_24F7A3FFC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = type metadata accessor for GameLibraryAccessoryView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_24F7A50E0(a2, v8);
  sub_24F92B7F8();
  v10 = sub_24F92B7E8();
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = v11 + v7;
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v10;
  *(v13 + 24) = v14;
  sub_24F7A5148(v8, v13 + v11);
  *(v13 + v12) = v9;
  sub_24F7A50E0(a2, v8);
  v15 = sub_24F92B7E8();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  sub_24F7A5148(v8, v16 + v11);
  *(v16 + v12) = v9;
  sub_24F9271A8();
  v19 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58);
  sub_24E602068(&qword_27F212910, &qword_27F211B58);
  return sub_24F9270D8();
}

uint64_t sub_24F7A422C@<X0>(unsigned __int8 a1@<W3>, _BYTE *a2@<X8>)
{
  type metadata accessor for GameLibraryAccessoryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500C8);
  sub_24F927358();
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  swift_beginAccess();
  v4 = *(v7 + 64);

  v5 = sub_24F4D37F0(a1, v4);

  *a2 = v5 & 1;
  return result;
}

uint64_t sub_24F7A4350(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = *a1;
  type metadata accessor for GameLibraryAccessoryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500C8);
  sub_24F927358();
  v8 = a5;
  sub_24F7AC248(&v8, v6);
}

uint64_t sub_24F7A43D0@<X0>(uint64_t a1@<X8>)
{
  sub_24F7AC5B8();
  sub_24E600AEC();
  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_24F7A4430@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    v3 = [objc_opt_self() currentDevice];
    [v3 userInterfaceIdiom];
  }

  result = sub_24F926E48();
  *a2 = result;
  return result;
}

uint64_t sub_24F7A4510@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for GameLibraryAccessoryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500C8);
  sub_24F927358();
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  v2 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter;
  swift_beginAccess();
  sub_24E60169C(v4 + v2, a1, &qword_27F2501E8);
}

uint64_t sub_24F7A4620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  type metadata accessor for GameLibraryAccessoryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500C8);
  sub_24F927358();
  v19 = a1;
  v20 = v21;
  sub_24E60169C(a1, v4, &qword_27F2501E8);
  v8 = sub_24F920678();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_24E601704(v4, &qword_27F2501E8);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = sub_24F920658();
    v11 = v12;
    (*(v9 + 8))(v4, v8);
  }

  sub_24F927358();
  v13 = v21;
  swift_getKeyPath();
  v21 = v13;
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  v15 = *(v13 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID);
  v14 = *(v13 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID + 8);

  if (!v11)
  {
    if (!v14)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (!v14)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v10 == v15 && v11 == v14)
  {

LABEL_13:
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_14;
  }

  v16 = sub_24F92CE08();

  if (v16)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_24E60169C(v19, v7, &qword_27F2501E8);
LABEL_14:
  sub_24F7AC80C(v7);

  return sub_24E601704(v7, &qword_27F2501E8);
}

uint64_t sub_24F7A4958()
{
  type metadata accessor for GameLibraryAccessoryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500C8);
  sub_24F927358();
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250240);
  sub_24E602068(&qword_27F250248, &qword_27F250238);
  sub_24F920678();
  sub_24F7AA2B0(&qword_27F250210, MEMORY[0x277D0CDA0]);
  swift_getOpaqueTypeConformance2();
  return sub_24F927228();
}

uint64_t sub_24F7A4B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24F920668();
  sub_24E600AEC();
  v4 = sub_24F925E18();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B70) + 36);
  v12 = sub_24F920678();
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B78);
  *(v11 + *(result + 36)) = 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_24F7A4C78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F920678();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v34 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v33 - v6;
  v36 = sub_24F926DF8();
  v8._object = 0x800000024FA7DAF0;
  v8._countAndFlagsBits = 0xD00000000000002CLL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v39 = localizedString(_:comment:)(v8, v9);
  v33[1] = sub_24E600AEC();
  v10 = sub_24F925E18();
  v12 = v11;
  v35 = v13;
  v15 = v14;
  type metadata accessor for GameLibraryAccessoryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500C8);
  sub_24F927358();
  countAndFlagsBits = v39._countAndFlagsBits;
  swift_getKeyPath();
  v39._countAndFlagsBits = countAndFlagsBits;
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  v17 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter;
  swift_beginAccess();
  sub_24E60169C(countAndFlagsBits + v17, v7, &qword_27F2501E8);

  if ((*(v3 + 48))(v7, 1, v2))
  {
    sub_24E601704(v7, &qword_27F2501E8);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = v34;
    (*(v3 + 16))(v34, v7, v2);
    sub_24E601704(v7, &qword_27F2501E8);
    v23 = sub_24F920668();
    v25 = v24;
    (*(v3 + 8))(v22, v2);
    v37 = v23;
    v38 = v25;
    v18 = sub_24F925E18();
    v19 = v26;
    v21 = v27;
    v20 = v28 & 1;
    sub_24E5FD138(v18, v26, v28 & 1);
  }

  v29 = v35 & 1;
  LOBYTE(v37) = v35 & 1;
  v30 = v36;

  sub_24E5FD138(v10, v12, v29);

  sub_24E65D2B4(v18, v19, v20, v21);
  sub_24E65D2F8(v18, v19, v20, v21);
  v31 = v37;
  *a1 = v30;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12;
  *(a1 + 24) = v31;
  *(a1 + 32) = v15;
  *(a1 + 40) = v18;
  *(a1 + 48) = v19;
  *(a1 + 56) = v20;
  *(a1 + 64) = v21;
  sub_24E65D2F8(v18, v19, v20, v21);
  sub_24E600B40(v10, v12, v29);
}

uint64_t sub_24F7A5078()
{
  type metadata accessor for GameLibraryAccessoryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500C8);
  sub_24F927358();
  sub_24F7ACBB8();
}

uint64_t sub_24F7A50E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLibraryAccessoryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7A5148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLibraryAccessoryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7A51AC(uint64_t a1)
{
  v3 = *(type metadata accessor for GameLibraryAccessoryView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F7A0744(a1, v4);
}

uint64_t sub_24F7A522C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F7A52E4()
{
  result = qword_27F250140;
  if (!qword_27F250140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2500F8);
    sub_24F7A5370();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250140);
  }

  return result;
}

unint64_t sub_24F7A5370()
{
  result = qword_27F250148;
  if (!qword_27F250148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250138);
    sub_24E602068(&qword_27F250150, &qword_27F250130);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250148);
  }

  return result;
}

uint64_t sub_24F7A5428@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_24F7A5530(uint64_t *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for GameLibraryAccessoryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F7A1C28(a1, a2, v6);
}

uint64_t sub_24F7A55EC(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for GameLibraryAccessoryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F7A2628(a1, a2, v6);
}

unint64_t sub_24F7A566C()
{
  result = qword_27F250168;
  if (!qword_27F250168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250168);
  }

  return result;
}

uint64_t sub_24F7A56C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genresFilterOptions);
}

uint64_t sub_24F7A57A0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_24F92D068();
  sub_24F92B218();
  v6 = sub_24F92D0B8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_24F92CE08() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24ED898F0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_24F7A617C(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_24F7A58DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  result = sub_24F92C7B8();
  v8 = -1 << *(v6 + 32);
  v9 = result & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_24E65864C(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x253052150](v16, a1);
      result = sub_24E6585F8(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v16[0] = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24ED89FAC();
      v13 = v16[0];
    }

    v14 = *(v13 + 48) + 40 * v9;
    v15 = *(v14 + 16);
    *a2 = *v14;
    *(a2 + 16) = v15;
    *(a2 + 32) = *(v14 + 32);
    result = sub_24F2467C4(v9);
    *v3 = v16[0];
  }

  else
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_24F7A5A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  sub_24F92D068();
  sub_24F92B218();
  result = sub_24F92D0B8();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if (*v12 == a1 && v12[1] == a2)
      {
        break;
      }

      result = sub_24F92CE08();
      if (result)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v19 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24ED8A138();
      v15 = v19;
    }

    v16 = (*(v15 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    *a3 = v18;
    a3[1] = v17;
    result = sub_24F7A617C(v10);
    *v3 = v19;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

double sub_24F7A5B64@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *v2;
  sub_24F92D068();
  PageFacets.Facet.Option.hash(into:)();
  v5 = sub_24F92D0B8();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v37 = v4 + 56;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_36:
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  v8 = ~v6;
  v9 = a1[1];
  v36 = a1[2];
  v34 = *a1;
  v35 = a1[3];
  v30 = a1[6];
  v31 = a1[4];
  v32 = a1[7];
  v33 = a1[5];
  v10 = *(v4 + 48);
  while (1)
  {
    v11 = (v10 + (v7 << 6));
    v12 = v11[1];
    v13 = v11[2];
    v15 = v11[3];
    v14 = v11[4];
    v17 = v11[5];
    v16 = v11[6];
    v18 = v11[7];
    if (v12)
    {
      if (!v9)
      {
        goto LABEL_4;
      }

      v19 = *v11 == v34 && v12 == v9;
      if (!v19 && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v9)
    {
      goto LABEL_4;
    }

    v20 = v13 == v36 && v15 == v35;
    if (!v20 && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (v17)
    {
      if (!v33)
      {
        goto LABEL_4;
      }

      v21 = v14 == v31 && v17 == v33;
      if (!v21 && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v33)
    {
      goto LABEL_4;
    }

    if (v18)
    {
      break;
    }

    if (!v32)
    {
      goto LABEL_33;
    }

LABEL_4:
    v7 = (v7 + 1) & v8;
    if (((*(v37 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (!v32 || (v16 != v30 || v18 != v32) && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_33:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v28;
  v38 = *v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24ED89A4C();
    v23 = v38;
  }

  v24 = (*(v23 + 48) + (v7 << 6));
  v25 = v24[1];
  *a2 = *v24;
  a2[1] = v25;
  v26 = v24[3];
  a2[2] = v24[2];
  a2[3] = v26;
  sub_24F7A6340(v7);
  *v28 = v38;
  return result;
}

uint64_t sub_24F7A5DE4(uint64_t a1, void (*a2)(void))
{
  v5 = *v2;
  v6 = sub_24F92D058();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (*(*(v5 + 48) + 8 * v8) != a1)
  {
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v8);
  sub_24F7A65D8(v8);
  result = v13;
  *v2 = v14;
  return result;
}

unint64_t sub_24F7A5EE4@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  sub_24F92D068();
  v18 = v2;
  v19 = a2;
  sub_24F92B218();

  result = sub_24F92D0B8();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_21:
    *v19 = 3;
    return result;
  }

  v9 = ~v7;
  while (!*(*(v5 + 48) + v8))
  {
    v10 = 0x656C6C6174736E69;
    v11 = 0xED0000796C6E4F64;
    v12 = a1;
    if (!a1)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v12 == 1)
    {
      v13 = 0x6E4F656461637261;
    }

    else
    {
      v13 = 0xD000000000000015;
    }

    if (v12 == 1)
    {
      v14 = 0xEA0000000000796CLL;
    }

    else
    {
      v14 = 0x800000024FA3F9F0;
    }

    if (v10 == v13)
    {
      goto LABEL_18;
    }

LABEL_19:
    v15 = sub_24F92CE08();

    if (v15)
    {
      goto LABEL_23;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(*(v5 + 48) + v8) == 1)
  {
    v10 = 0x6E4F656461637261;
    v11 = 0xEA0000000000796CLL;
    v12 = a1;
    if (!a1)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v10 = 0xD000000000000015;
  v11 = 0x800000024FA3F9F0;
  v12 = a1;
  if (a1)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = 0xED0000796C6E4F64;
  if (v10 != 0x656C6C6174736E69)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v11 != v14)
  {
    goto LABEL_19;
  }

LABEL_23:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v18;
  v20 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24ED8A124();
    v17 = v20;
  }

  *v19 = *(*(v17 + 48) + v8);
  result = sub_24F7A675C(v8);
  *v18 = v20;
  return result;
}

unint64_t sub_24F7A617C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24F92C6C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_24F92D068();

        sub_24F92B218();
        v10 = sub_24F92D0B8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_24F7A6340(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24F92C6C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v13 = (*(v3 + 48) + (v6 << 6));
        v15 = *v13;
        v14 = v13[1];
        v16 = v13[3];
        v28 = v13[2];
        v29 = v16;
        v27[0] = v15;
        v27[1] = v14;
        sub_24F92D068();
        if (*(&v27[0] + 1))
        {
          sub_24F92D088();
          sub_24E8056D8(v27, v26);
          sub_24F92B218();
        }

        else
        {
          sub_24F92D088();
          sub_24E8056D8(v27, v26);
        }

        v17 = *(&v28 + 1);
        sub_24F92B218();
        if (v17)
        {
          sub_24F92D088();
          sub_24F92B218();
          if (*(&v29 + 1))
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_24F92D088();
          if (*(&v29 + 1))
          {
LABEL_11:
            sub_24F92D088();
            sub_24F92B218();
            goto LABEL_14;
          }
        }

        sub_24F92D088();
LABEL_14:
        v18 = sub_24F92D0B8();
        sub_24E805734(v27);
        v19 = v18 & v7;
        if (v2 >= v9)
        {
          if (v19 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v9)
        {
          goto LABEL_19;
        }

        if (v2 >= v19)
        {
LABEL_19:
          v20 = *(v3 + 48);
          v21 = (v20 + (v2 << 6));
          v22 = (v20 + (v6 << 6));
          if (v2 != v6 || v21 >= v22 + 4)
          {
            v10 = *v22;
            v11 = v22[1];
            v12 = v22[3];
            v21[2] = v22[2];
            v21[3] = v12;
            *v21 = v10;
            v21[1] = v11;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_24F7A65D8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24F92C6C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_24F92D058() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_24F7A675C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24F92C6C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_24F92D068();
        sub_24F92B218();

        v10 = sub_24F92D0B8() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_24F7A69A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24E60169C(a1, &v5 - v3, &qword_27F214410);
  return sub_24F9246D8();
}

uint64_t sub_24F7A6A50(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_24F7A57A0(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_24F7A6B7C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_24F7A5A14(v12, v13, &v14);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_24F7A6CB4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_24E601704(v11, &qword_27F235830))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_24E65864C(*(v2 + 48) + 40 * (v10 | (v9 << 6)), v12);
      sub_24F7A58DC(v12, v11);
      sub_24E6585F8(v12);
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24F7A6DDC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_24F7A5EE4(*(*(v2 + 48) + (v10 | (v9 << 6))), &v11);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_24F7A6EE0(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_24F92D068();

    sub_24F92B218();
    v23 = sub_24F92D0B8();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_24F92CE08() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_24F7A8670(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_24F92D068();

            sub_24F92B218();
            v41 = sub_24F92D0B8();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_24F92CE08() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_24F7A9380(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x2530542D0](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_24E6586B4();
    return v5;
  }

  result = MEMORY[0x2530542D0](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_24F7A7450(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_24F92D068();

    sub_24F92B218();
    v23 = sub_24F92D0B8();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_24F92CE08() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_24F7A8894(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_24F92D068();

            sub_24F92B218();
            v41 = sub_24F92D0B8();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_24F92CE08() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_24F7A95B8(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x2530542D0](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_24E6586B4();
    return v5;
  }

  result = MEMORY[0x2530542D0](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_24F7A79C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    sub_24F92D068();

    sub_24F92B218();
    v11 = sub_24F92D0B8();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_24F92CE08() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    MEMORY[0x28223BE20](v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_24F7A8894(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        sub_24F92D068();

        sub_24F92B218();
        v33 = sub_24F92D0B8();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((sub_24F92CE08() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_24F7A97F0(v44, v49, v2, v13, v57);

  if (!v45)
  {

    MEMORY[0x2530542D0](v44, -1, -1);

    return v46;
  }

  result = MEMORY[0x2530542D0](v44, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_24F7A7E6C(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v7 = a1;
  v48 = 0;
  v8 = *(a1 + 56);
  v56 = a1 + 56;
  v9 = -1 << *(a1 + 32);
  v53 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v8;
  v54 = (63 - v9) >> 6;
  v58 = 0x800000024FA3F9F0;
  v59 = (a2 + 56);

  v57 = 0;
LABEL_6:
  while (2)
  {
    if (!v11)
    {
      v13 = v57;
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v54)
        {
          goto LABEL_76;
        }

        v11 = *(v56 + 8 * v14);
        ++v13;
        if (v11)
        {
          v57 = v14;
          goto LABEL_12;
        }
      }

LABEL_79:
      __break(1u);
LABEL_80:
      v43 = v12;

      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_38;
      }

      v44 = swift_slowAlloc();
      memcpy(v44, v59, v43);
      v45 = v48;
      v46 = sub_24F7A99D4(v44, v49, v6, v2, &v61);

      if (!v45)
      {

        MEMORY[0x2530542D0](v44, -1, -1);
        v53 = v63;
        v57 = v64;
        v6 = v46;
        goto LABEL_76;
      }

      result = MEMORY[0x2530542D0](v44, -1, -1);
      __break(1u);
      return result;
    }

LABEL_12:
    v15 = *(*(v7 + 48) + (__clz(__rbit64(v11)) | (v57 << 6)));
    sub_24F92D068();
    v11 &= v11 - 1;
    sub_24F92B218();

    v16 = sub_24F92D0B8();
    v17 = -1 << *(v6 + 32);
    v2 = v16 & ~v17;
    v3 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & *(v59 + (v2 >> 6))) == 0)
    {
      continue;
    }

    break;
  }

  v55 = v7;
  v5 = ~v17;
  while (1)
  {
    if (*(*(v6 + 48) + v2))
    {
      if (*(*(v6 + 48) + v2) == 1)
      {
        v18 = 0x6E4F656461637261;
        v19 = 0xEA0000000000796CLL;
        if (v15)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v18 = 0xD000000000000015;
        v19 = v58;
        if (v15)
        {
LABEL_17:
          if (v15 == 1)
          {
            v20 = 0x6E4F656461637261;
          }

          else
          {
            v20 = 0xD000000000000015;
          }

          if (v15 == 1)
          {
            v21 = 0xEA0000000000796CLL;
          }

          else
          {
            v21 = v58;
          }

          if (v18 != v20)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
      v18 = 0x656C6C6174736E69;
      v19 = 0xED0000796C6E4F64;
      if (v15)
      {
        goto LABEL_17;
      }
    }

    v21 = 0xED0000796C6E4F64;
    if (v18 != 0x656C6C6174736E69)
    {
      goto LABEL_28;
    }

LABEL_27:
    if (v19 == v21)
    {
      v63 = v53;
      v64 = v57;
      v65 = v11;
      v5 = v55;
      v61 = v55;
      v62 = v56;

      goto LABEL_37;
    }

LABEL_28:
    v22 = sub_24F92CE08();

    if (v22)
    {
      break;
    }

    v2 = (v2 + 1) & v5;
    v3 = v2 >> 6;
    v4 = 1 << v2;
    if ((*(v59 + (v2 >> 6)) & (1 << v2)) == 0)
    {
      v7 = v55;
      goto LABEL_6;
    }
  }

  v63 = v53;
  v64 = v57;
  v65 = v11;
  v5 = v55;
  v61 = v55;
  v62 = v56;
LABEL_37:
  v24 = *(v6 + 32);
  v49 = ((1 << v24) + 63) >> 6;
  v12 = 8 * v49;
  if ((v24 & 0x3Fu) > 0xD)
  {
    goto LABEL_80;
  }

LABEL_38:
  v50 = &v47;
  MEMORY[0x28223BE20](v23);
  v2 = &v47 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v2, v59, v25);
  v26 = *(v2 + 8 * v3) & ~v4;
  v27 = *(v6 + 16);
  v52 = v2;
  *(v2 + 8 * v3) = v26;
  v28 = v27 - 1;
LABEL_39:
  v51 = v28;
LABEL_40:
  while (2)
  {
    if (v11)
    {
LABEL_46:
      v3 = *(*(v5 + 48) + (__clz(__rbit64(v11)) | (v57 << 6)));
      sub_24F92D068();
      v11 &= v11 - 1;
      sub_24F92B218();

      v2 = &v60;
      v31 = sub_24F92D0B8();
      v32 = -1 << *(v6 + 32);
      v33 = v31 & ~v32;
      v4 = v33 >> 6;
      v34 = 1 << v33;
      if (((1 << v33) & *(v59 + (v33 >> 6))) == 0)
      {
        continue;
      }

      v35 = ~v32;
      while (1)
      {
        if (*(*(v6 + 48) + v33))
        {
          if (*(*(v6 + 48) + v33) == 1)
          {
            v36 = 0x6E4F656461637261;
            v2 = 0xEA0000000000796CLL;
            if (v3)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v36 = 0xD000000000000015;
            v2 = v58;
            if (v3)
            {
LABEL_51:
              if (v3 == 1)
              {
                v37 = 0x6E4F656461637261;
              }

              else
              {
                v37 = 0xD000000000000015;
              }

              if (v3 == 1)
              {
                v38 = 0xEA0000000000796CLL;
              }

              else
              {
                v38 = v58;
              }

              if (v36 != v37)
              {
                goto LABEL_62;
              }

              goto LABEL_61;
            }
          }
        }

        else
        {
          v36 = 0x656C6C6174736E69;
          v2 = 0xED0000796C6E4F64;
          if (v3)
          {
            goto LABEL_51;
          }
        }

        v38 = 0xED0000796C6E4F64;
        if (v36 != 0x656C6C6174736E69)
        {
          goto LABEL_62;
        }

LABEL_61:
        if (v2 == v38)
        {

LABEL_68:
          v40 = v52[v4];
          v52[v4] = v40 & ~v34;
          v5 = v55;
          if ((v40 & v34) != 0)
          {
            v28 = v51 - 1;
            if (__OFSUB__(v51, 1))
            {
              __break(1u);
            }

            if (v51 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_76;
            }

            goto LABEL_39;
          }

          goto LABEL_40;
        }

LABEL_62:
        v39 = sub_24F92CE08();

        if (v39)
        {
          goto LABEL_68;
        }

        v33 = (v33 + 1) & v35;
        v4 = v33 >> 6;
        v34 = 1 << v33;
        if ((*(v59 + (v33 >> 6)) & (1 << v33)) == 0)
        {
          v5 = v55;
          goto LABEL_40;
        }
      }
    }

    break;
  }

  v29 = v57;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_79;
    }

    if (v30 >= v54)
    {
      break;
    }

    v11 = *(v56 + 8 * v30);
    ++v29;
    if (v11)
    {
      v57 = v30;
      goto LABEL_46;
    }
  }

  if (v54 <= v57 + 1)
  {
    v41 = v57 + 1;
  }

  else
  {
    v41 = v54;
  }

  v57 = v41 - 1;
  v6 = sub_24F7A8F10(v52, v49, v51, v6);
LABEL_76:
  sub_24E6586B4();
  return v6;
}

uint64_t sub_24F7A8670(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E558);
  result = sub_24F92C838();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_24F92D068();

    sub_24F92B218();
    result = sub_24F92D0B8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24F7A8894(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E560);
  result = sub_24F92C838();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_24F92D068();

    sub_24F92B218();
    result = sub_24F92D0B8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24F7A8AB8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F118);
  result = sub_24F92C838();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_24F92D068();
    sub_24F92B218();

    result = sub_24F92D0B8();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24F7A8CEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5B8);
  result = sub_24F92C838();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    sub_24E65864C(*(a4 + 48) + 40 * (v13 | (v11 << 6)), v28);
    result = sub_24F92C7B8();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v6 + 48) + 40 * v19;
    v25 = v28[0];
    v26 = v28[1];
    *(v24 + 32) = v29;
    *v24 = v25;
    *(v24 + 16) = v26;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24F7A8F10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F058);
  result = sub_24F92C838();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_24F92D068();
    sub_24F92B218();

    result = sub_24F92D0B8();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24F7A918C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F140);
  result = sub_24F92C838();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_24F92C3F8();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24F7A9380(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_24F7A8670(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_24F92D068();

        sub_24F92B218();
        v19 = sub_24F92D0B8();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_24F92CE08() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_24F7A95B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_24F7A8894(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_24F92D068();

        sub_24F92B218();
        v19 = sub_24F92D0B8();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_24F92CE08() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_24F7A97F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_24F7A8894(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_24F92D068();

        sub_24F92B218();
        v16 = sub_24F92D0B8();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_24F92CE08() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_24F7A99D4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v28 = result;
  v6 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v30 = a3 + 56;
LABEL_2:
  v27 = v7;
LABEL_3:
  while (2)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (v9)
    {
      v10 = a5[3];
LABEL_9:
      v13 = *(*(*a5 + 48) + (__clz(__rbit64(v9)) | (v10 << 6)));
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      sub_24F92D068();
      sub_24F92B218();

      result = sub_24F92D0B8();
      v14 = -1 << *(a3 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      v17 = 1 << v15;
      if (((1 << v15) & *(v30 + 8 * (v15 >> 6))) == 0)
      {
        continue;
      }

      v18 = ~v14;
      while (1)
      {
        if (*(*(a3 + 48) + v15))
        {
          if (*(*(a3 + 48) + v15) == 1)
          {
            v19 = 0x6E4F656461637261;
            v20 = 0xEA0000000000796CLL;
            if (v13)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v19 = 0xD000000000000015;
            v20 = 0x800000024FA3F9F0;
            if (v13)
            {
LABEL_16:
              if (v13 == 1)
              {
                v21 = 0x6E4F656461637261;
              }

              else
              {
                v21 = 0xD000000000000015;
              }

              if (v13 == 1)
              {
                v22 = 0xEA0000000000796CLL;
              }

              else
              {
                v22 = 0x800000024FA3F9F0;
              }

              if (v19 != v21)
              {
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v19 = 0x656C6C6174736E69;
          v20 = 0xED0000796C6E4F64;
          if (v13)
          {
            goto LABEL_16;
          }
        }

        v22 = 0xED0000796C6E4F64;
        if (v19 != 0x656C6C6174736E69)
        {
          goto LABEL_27;
        }

LABEL_26:
        if (v20 == v22)
        {

LABEL_31:
          v24 = v28[v16];
          v28[v16] = v24 & ~v17;
          if ((v24 & v17) != 0)
          {
            v7 = v27 - 1;
            if (__OFSUB__(v27, 1))
            {
LABEL_40:
              __break(1u);
              return result;
            }

            if (v27 == 1)
            {
              return MEMORY[0x277D84FA0];
            }

            goto LABEL_2;
          }

          goto LABEL_3;
        }

LABEL_27:
        v23 = sub_24F92CE08();

        if (v23)
        {
          goto LABEL_31;
        }

        v15 = (v15 + 1) & v18;
        v16 = v15 >> 6;
        v17 = 1 << v15;
        if ((*(v30 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  if (v11 <= v8 + 1)
  {
    v25 = v8 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_24F7A8F10(v28, a2, v27, a3);
}

uint64_t sub_24F7A9D20()
{
  sub_24E600AEC();

  return sub_24F926EB8();
}

uint64_t sub_24F7A9E38@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GameLibraryAccessoryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F7A3FFC(a1, v6, a2);
}

unint64_t sub_24F7A9EB8()
{
  result = qword_27F2501E0;
  if (!qword_27F2501E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2501E0);
  }

  return result;
}

uint64_t sub_24F7A9F60@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for GameLibraryAccessoryView();

  return sub_24F7A4510(a1);
}

uint64_t objectdestroy_43Tm()
{
  v1 = type metadata accessor for GameLibraryAccessoryView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v1[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2500C8);
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[6]);
  v5 = v0 + v2 + v1[7];
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
  }

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F921B58();
    (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F7AA180(uint64_t a1)
{
  type metadata accessor for GameLibraryAccessoryView();

  return sub_24F7A4620(a1);
}

unint64_t sub_24F7AA1FC()
{
  result = qword_27F250208;
  if (!qword_27F250208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2501E8);
    sub_24F7AA2B0(&qword_27F250210, MEMORY[0x277D0CDA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250208);
  }

  return result;
}

uint64_t sub_24F7AA2B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F7AA2F8()
{
  result = qword_27F250218;
  if (!qword_27F250218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2501F8);
    sub_24F920678();
    sub_24F7AA2B0(&qword_27F250210, MEMORY[0x277D0CDA0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250218);
  }

  return result;
}