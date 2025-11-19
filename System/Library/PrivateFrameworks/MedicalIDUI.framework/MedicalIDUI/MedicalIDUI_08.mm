uint64_t sub_25885D920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v195 = a2;
  sub_258860DB8(0);
  v194 = v3;
  v193 = *(v3 - 8);
  v4 = *(v193 + 64);
  MEMORY[0x28223BE20](v3);
  v176 = v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MedicalIDEditSettingsView();
  v7 = v6 - 8;
  v168 = *(v6 - 8);
  v8 = *(v168 + 64);
  MEMORY[0x28223BE20](v6);
  v170 = v9;
  v10 = v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886107C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258860FE4();
  v167 = v15;
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v175 = v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v166 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v166 - v22;
  sub_258860F88(0, &qword_27F960558, &qword_27F960560, MEMORY[0x277CE0338], sub_2588621B0);
  v184 = v24;
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v198 = v166 - v26;
  sub_258860EE8();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v183 = v166 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258860E5C(0);
  v182 = v30;
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v169 = v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v181 = v166 - v35;
  MEMORY[0x28223BE20](v34);
  v185 = v166 - v36;
  sub_258860D84(0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v192 = v166 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v199 = v166 - v41;
  sub_258860A88(0);
  v197 = v42;
  v196 = *(v42 - 8);
  v43 = *(v196 + 64);
  MEMORY[0x28223BE20](v42);
  v180 = v166 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258860CA0(0, &qword_27F960520, &qword_27F960528, &type metadata for ListInsetGroupedFooterView);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v179 = v166 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v178 = v166 - v49;
  sub_258860F88(0, &qword_27F960508, &qword_27F960510, MEMORY[0x277CE0338], sub_258860C0C);
  v189 = v50;
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v200 = v166 - v52;
  sub_258860B6C();
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v188 = v166 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258860B44(0);
  v187 = v56;
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v56);
  v177 = v166 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v186 = v166 - v61;
  MEMORY[0x28223BE20](v60);
  v201 = v166 - v62;
  sub_258860A54(0);
  v64 = *(*(v63 - 8) + 64);
  v65 = MEMORY[0x28223BE20](v63 - 8);
  v191 = v166 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v202 = v166 - v67;
  sub_258860CA0(0, &qword_27F9604D0, &qword_27F9604D8, &type metadata for ListInsetGroupedTableHeaderView);
  v69 = v68;
  v70 = *(v68 - 8);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  v73 = v166 - v72;
  sub_2588609E4();
  v75 = *(*(v74 - 8) + 64);
  v76 = MEMORY[0x28223BE20](v74 - 8);
  v190 = v166 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v203 = v166 - v78;
  v79 = a1 + *(v7 + 40);
  v80 = *v79;
  if (!*v79)
  {
    goto LABEL_25;
  }

  v81 = [v80 isShowWhenLockedVisible];
  v174 = v23;
  v204 = a1;
  v173 = v14;
  v172 = v21;
  v171 = v10;
  if (v81 & 1) != 0 || (sub_25885F040())
  {
    if (qword_27F95D158 != -1)
    {
      swift_once();
    }

    v82 = qword_27F960488;
    v83 = unk_27F960490;

    v84 = sub_2588BCB78();
    v210 = 1;
    *&v208 = v82;
    *(&v208 + 1) = v83;
    v209[0] = v84;
    memset(&v209[8], 0, 32);
    v209[40] = 1;
    sub_2588615C4(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_2588BFF50;
    v86 = (a1 + *(type metadata accessor for MedicalIDSettingsViewModel(0) + 44));
    v87 = v86[1];
    *(v85 + 32) = *v86;
    *(v85 + 40) = v87;
    *(v85 + 48) = 0x726564616548;
    *(v85 + 56) = 0xE600000000000000;

    v88 = sub_2588BD9A8();

    v89 = HKUIJoinStringsForAutomationIdentifier();

    if (!v89)
    {
      __break(1u);
      goto LABEL_21;
    }

    sub_2588BD8A8();

    sub_258860D30(0, &qword_27F9604D8, &type metadata for ListInsetGroupedTableHeaderView, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_258861E74(&qword_27F9605E8, &qword_27F9604D8, &type metadata for ListInsetGroupedTableHeaderView, sub_2588620E0);
    sub_2588BCFB8();

    v205 = v208;
    v206 = *v209;
    *v207 = *&v209[16];
    *&v207[9] = *&v209[25];
    sub_258861F10(&v205, &qword_27F9604D8, &type metadata for ListInsetGroupedTableHeaderView);
    v90 = v203;
    sub_258862134(v73, v203);
    (*(v70 + 56))(v90, 0, 1, v69);
    a1 = v204;
  }

  else
  {
    (*(v70 + 56))(v203, 1, 1, v69);
  }

  v91 = [v80 isShowWhenLockedVisible];
  v92 = v201;
  v93 = v200;
  if (v91)
  {
    sub_25885F18C(a1, v200);
    sub_2588615C4(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v166[1] = v94;
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_2588BFF50;
    v96 = (a1 + *(type metadata accessor for MedicalIDSettingsViewModel(0) + 44));
    v97 = *v96;
    v98 = v96[1];
    *(v95 + 32) = *v96;
    *(v95 + 40) = v98;
    strcpy((v95 + 48), "ShowWhenLocked");
    *(v95 + 63) = -18;
    swift_bridgeObjectRetain_n();
    v99 = sub_2588BD9A8();

    v100 = HKUIJoinStringsForAutomationIdentifier();

    if (v100)
    {
      sub_2588BD8A8();

      sub_258861D68();
      v101 = v188;
      sub_2588BCFB8();

      sub_258861E18(v93, &qword_27F960508, &qword_27F960510, MEMORY[0x277CE0338], sub_258860C0C);
      v102 = v186;
      sub_2588618D4(v101, v186, sub_258860B6C);
      *(v102 + *(v187 + 36)) = 1;
      sub_2588618D4(v102, v92, sub_258860B44);
      MedicalIDSettingsViewModel.showWhenLockedFooter.getter();
      v103 = sub_2588BC688();
      v105 = v104;
      v107 = v106;
      v109 = v108;
      v110 = sub_2588BCBA8();
      [v80 isShareDuringEmergencyCallVisible];
      sub_2588BBE38();
      v210 = 0;
      *&v208 = v103;
      *(&v208 + 1) = v105;
      v209[0] = v107 & 1;
      *&v209[8] = v109;
      v209[16] = v110;
      *&v209[24] = v111;
      *&v209[32] = v112;
      *&v209[40] = v113;
      *&v209[48] = v114;
      v209[56] = 0;
      v115 = swift_allocObject();
      *(v115 + 16) = xmmword_2588C17A0;
      *(v115 + 32) = v97;
      *(v115 + 40) = v98;
      strcpy((v115 + 48), "ShowWhenLocked");
      *(v115 + 63) = -18;
      *(v115 + 64) = 0x7265746F6F46;
      *(v115 + 72) = 0xE600000000000000;
      v116 = sub_2588BD9A8();

      v117 = HKUIJoinStringsForAutomationIdentifier();

      if (v117)
      {
        sub_2588BD8A8();

        sub_258860D30(0, &qword_27F960528, &type metadata for ListInsetGroupedFooterView, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
        sub_258861E74(&qword_27F9605E0, &qword_27F960528, &type metadata for ListInsetGroupedFooterView, sub_25886193C);
        v118 = v178;
        sub_2588BCFB8();

        *v207 = *&v209[16];
        *&v207[16] = *&v209[32];
        *&v207[25] = *&v209[41];
        v206 = *v209;
        v205 = v208;
        sub_258861F10(&v205, &qword_27F960528, &type metadata for ListInsetGroupedFooterView);
        v119 = v177;
        sub_258861F88(v92, v177, sub_258860B44);
        v120 = v179;
        sub_258861FF0(v118, v179);
        v121 = v180;
        sub_258861F88(v119, v180, sub_258860B44);
        sub_258860ABC();
        sub_258861FF0(v120, v121 + *(v122 + 48));
        sub_25886206C(v118);
        sub_258861290(v92, sub_258860B44);
        sub_25886206C(v120);
        sub_258861290(v119, sub_258860B44);
        v123 = v202;
        sub_2588618D4(v121, v202, sub_258860A88);
        (*(v196 + 56))(v123, 0, 1, v197);
        v124 = v199;
        a1 = v204;
        goto LABEL_14;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v123 = v202;
  (*(v196 + 56))(v202, 1, 1, v197);
  v124 = v199;
LABEL_14:
  v125 = v198;
  if ((sub_25885F040() & 1) == 0)
  {
    v156 = 1;
    goto LABEL_19;
  }

  sub_25885F5BC(a1, v125);
  sub_2588615C4(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v126 = a1;
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_2588BFF50;
  v128 = (v126 + *(type metadata accessor for MedicalIDSettingsViewModel(0) + 44));
  v130 = *v128;
  v129 = v128[1];
  *(v127 + 32) = *v128;
  *(v127 + 40) = v129;
  *(v127 + 48) = 0xD000000000000014;
  *(v127 + 56) = 0x80000002588CA670;
  swift_bridgeObjectRetain_n();
  v131 = sub_2588BD9A8();

  v132 = HKUIJoinStringsForAutomationIdentifier();

  if (v132)
  {
    sub_2588BD8A8();

    sub_258861614();
    v133 = v183;
    sub_2588BCFB8();

    sub_258861E18(v125, &qword_27F960558, &qword_27F960560, MEMORY[0x277CE0338], sub_2588621B0);
    v134 = v181;
    sub_2588618D4(v133, v181, sub_258860EE8);
    *(v134 + *(v182 + 36)) = 1;
    v135 = v185;
    sub_2588618D4(v134, v185, sub_258860E5C);
    MedicalIDSettingsViewModel.shareDuringEmergencyCallFooter.getter();
    *&v208 = sub_2588BC688();
    *(&v208 + 1) = v136;
    v209[0] = v137 & 1;
    *&v209[8] = v138;
    v139 = swift_allocObject();
    *(v139 + 16) = xmmword_2588C17A0;
    *(v139 + 32) = v130;
    *(v139 + 40) = v129;
    *(v139 + 48) = 0xD000000000000014;
    *(v139 + 56) = 0x80000002588CA670;
    *(v139 + 64) = 0x7265746F6F46;
    *(v139 + 72) = 0xE600000000000000;
    v140 = sub_2588BD9A8();

    v141 = HKUIJoinStringsForAutomationIdentifier();

    if (v141)
    {
      sub_2588BD8A8();

      sub_25886193C();
      v142 = v173;
      sub_2588BCFB8();

      KeyPath = swift_getKeyPath();
      v144 = v171;
      sub_258861F88(v204, v171, type metadata accessor for MedicalIDEditSettingsView);
      v145 = (*(v168 + 80) + 16) & ~*(v168 + 80);
      v146 = swift_allocObject();
      sub_2588618D4(v144, v146 + v145, type metadata accessor for MedicalIDEditSettingsView);
      v147 = v172;
      v148 = &v172[*(v167 + 36)];
      sub_25885C5F0(0, &qword_27F95E6C8, MEMORY[0x277CDF708], MEMORY[0x277CE0860]);
      v150 = *(v149 + 28);
      sub_2588BC078();
      *v148 = KeyPath;
      sub_2588618D4(v142, v147, sub_25886107C);
      v151 = v174;
      sub_2588618D4(v147, v174, sub_258860FE4);
      v152 = v169;
      sub_258861F88(v135, v169, sub_258860E5C);
      v153 = v175;
      sub_258861F88(v151, v175, sub_258860FE4);
      v154 = v176;
      sub_258861F88(v152, v176, sub_258860E5C);
      sub_258860DEC();
      sub_258861F88(v153, v154 + *(v155 + 48), sub_258860FE4);
      sub_258861290(v151, sub_258860FE4);
      sub_258861290(v135, sub_258860E5C);
      sub_258861290(v153, sub_258860FE4);
      sub_258861290(v152, sub_258860E5C);
      sub_2588618D4(v154, v124, sub_258860DB8);
      v156 = 0;
      v123 = v202;
LABEL_19:
      (*(v193 + 56))(v124, v156, 1, v194);
      v157 = v203;
      v158 = v190;
      sub_258861F88(v203, v190, sub_2588609E4);
      v159 = v191;
      sub_258861F88(v123, v191, sub_258860A54);
      v160 = v192;
      sub_258861F88(v124, v192, sub_258860D84);
      v161 = v195;
      sub_258861F88(v158, v195, sub_2588609E4);
      sub_25886095C();
      v163 = v162;
      sub_258861F88(v159, v161 + *(v162 + 48), sub_258860A54);
      sub_258861F88(v160, v161 + *(v163 + 64), sub_258860D84);
      sub_258861290(v124, sub_258860D84);
      sub_258861290(v123, sub_258860A54);
      sub_258861290(v157, sub_2588609E4);
      sub_258861290(v160, sub_258860D84);
      sub_258861290(v159, sub_258860A54);
      return sub_258861290(v158, sub_2588609E4);
    }

    goto LABEL_24;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  v165 = *(v79 + 8);
  sub_2587CEE98();
  sub_25886084C(&qword_27F95DAE8, sub_2587CEE98);
  result = sub_2588BC348();
  __break(1u);
  return result;
}

uint64_t sub_25885F040()
{
  v1 = v0;
  v2 = type metadata accessor for MedicalIDEditSettingsView();
  v3 = v0 + *(v2 + 32);
  v4 = *v3;
  if (*v3)
  {
    v5 = (v1 + *(v2 + 24));
    v10 = *v5;
    v11 = *(v5 + 1);
    sub_2588615C4(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    v6 = v4;
    sub_2588BD2C8();
    if ([(MIUIDisplayConfiguration *)v6 isShareDuringEmergencyCallVisible])
    {
      MedicalIDSettingsViewModel.shareDuringEmergencyCallViewState(with:hasShareDuringEmergencyCallBeenEnabled:)(v6, v9);

      return v10 < 2u;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v8 = *(v3 + 8);
    sub_2587CEE98();
    sub_25886084C(&qword_27F95DAE8, sub_2587CEE98);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_25885F18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_258860C0C(0, &qword_27F9605F8, MEMORY[0x277CE0330]);
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v32 - v7);
  sub_258860D30(0, &qword_27F960518, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF058]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = v32 - v13;
  v15 = type metadata accessor for MedicalIDEditSettingsView();
  v16 = a1 + *(v15 + 32);
  if (*v16)
  {
    v17 = v15;
    v18 = *v16;
    v19 = MedicalIDSettingsViewModel.isShowWhenLockedEditable(with:)(v18);

    if (v19)
    {
      v20 = (a1 + *(v17 + 28));
      v22 = *v20;
      v21 = v20[1];
      v32[2] = v22;
      v32[3] = v21;
      sub_25885C5F0(0, &qword_27F9604A8, type metadata accessor for MedicalIDEditableSettingsViewModel, MEMORY[0x277CE10B8]);
      sub_2588BD2E8();
      v23 = v33;
      v24 = v34;
      v32[1] = a2;
      v25 = v35;
      swift_getKeyPath();
      v32[0] = v5;
      v33 = v23;
      v34 = v24;
      v35 = v25;
      sub_25885C5F0(0, &qword_27F960600, type metadata accessor for MedicalIDEditableSettingsViewModel, MEMORY[0x277CE11F8]);
      sub_2588BD448();

      sub_2588BD3C8();
      (*(v11 + 16))(v8, v14, v10);
      swift_storeEnumTagMultiPayload();
      sub_2588617FC();
      sub_258861880();
      sub_2588BC778();
      return (*(v11 + 8))(v14, v10);
    }

    else
    {
      if (qword_27F95D0B0 != -1)
      {
        swift_once();
      }

      v28 = qword_27F9697B8;
      v27 = qword_27F9697C0;

      locked = MedicalIDSettingsViewModel.showWhenLockedDetail.getter();
      *v8 = v28;
      v8[1] = v27;
      v8[2] = locked;
      v8[3] = v30;
      swift_storeEnumTagMultiPayload();
      sub_2588617FC();
      sub_258861880();
      return sub_2588BC778();
    }
  }

  else
  {
    v31 = *(v16 + 8);
    sub_2587CEE98();
    sub_25886084C(&qword_27F95DAE8, sub_2587CEE98);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_25885F5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2588621B0(0, &qword_27F960608, MEMORY[0x277CE0330]);
  v47 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v42 - v6;
  sub_258860C0C(0, &qword_27F9605F8, MEMORY[0x277CE0330]);
  v44 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v42 - v10);
  sub_258860C0C(0, &qword_27F960510, MEMORY[0x277CE0338]);
  v46 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v42 - v14;
  sub_258860D30(0, &qword_27F960518, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF058]);
  v45 = v16;
  v43 = *(v16 - 8);
  v17 = *(v43 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v42 - v18;
  v20 = type metadata accessor for MedicalIDEditSettingsView();
  v21 = a1 + *(v20 + 32);
  v22 = *v21;
  if (*v21)
  {
    v23 = v20;
    v24 = (a1 + *(v20 + 24));
    v25 = *v24;
    v26 = *(v24 + 1);
    LOBYTE(v50) = v25;
    v51 = v26;
    sub_2588615C4(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    v27 = v22;
    sub_2588BD2C8();
    MedicalIDSettingsViewModel.shareDuringEmergencyCallViewState(with:hasShareDuringEmergencyCallBeenEnabled:)(v27, v48);

    if (v53)
    {
      if (v53 == 1)
      {
        if (qword_27F95D100 != -1)
        {
          swift_once();
        }

        v29 = qword_27F969858;
        v28 = qword_27F969860;

        v30 = MedicalIDSettingsViewModel.shareDuringEmergencyCallDetail.getter();
        *v11 = v29;
        v11[1] = v28;
        v11[2] = v30;
        v11[3] = v31;
        swift_storeEnumTagMultiPayload();
        sub_2588617FC();
        sub_258861880();
        sub_2588BC778();
        sub_258862234(v15, v7);
        swift_storeEnumTagMultiPayload();
        sub_258861760();
        sub_2588BC778();
        return sub_2588622B4(v15);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        sub_258861760();
        return sub_2588BC778();
      }
    }

    else
    {
      v33 = (a1 + *(v23 + 28));
      v35 = *v33;
      v34 = v33[1];
      v48 = v35;
      v49 = v34;
      sub_25885C5F0(0, &qword_27F9604A8, type metadata accessor for MedicalIDEditableSettingsViewModel, MEMORY[0x277CE10B8]);
      sub_2588BD2E8();
      v36 = v50;
      v37 = v51;
      v38 = v52;
      swift_getKeyPath();
      v42[1] = a2;
      v50 = v36;
      v51 = v37;
      v52 = v38;
      sub_25885C5F0(0, &qword_27F960600, type metadata accessor for MedicalIDEditableSettingsViewModel, MEMORY[0x277CE11F8]);
      sub_2588BD448();

      sub_2588BD3C8();
      v39 = v43;
      v40 = v45;
      (*(v43 + 16))(v11, v19, v45);
      swift_storeEnumTagMultiPayload();
      sub_2588617FC();
      sub_258861880();
      sub_2588BC778();
      sub_258862234(v15, v7);
      swift_storeEnumTagMultiPayload();
      sub_258861760();
      sub_2588BC778();
      sub_2588622B4(v15);
      return (*(v39 + 8))(v19, v40);
    }
  }

  else
  {
    v41 = *(v21 + 8);
    sub_2587CEE98();
    sub_25886084C(&qword_27F95DAE8, sub_2587CEE98);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_25885FBFC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    v9 = a2;
    v10 = a3;
    swift_once();
    a2 = v9;
    a3 = v10;
  }

  v11 = *a2;
  v12 = *a3;
  sub_25878F648();

  result = sub_2588BCDF8();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_25885FC94(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for MedicalIDEditSettingsView() + 20));
  v4 = *v2;
  v5 = *(v2 + 1);
  sub_2588615C4(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2D8();
  return sub_2588BC068();
}

uint64_t sub_25885FD34@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_25885C5F0(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25885FDB8(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDEditSettingsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258861350(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2588BDAA8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_258861F88(a1, v5, type metadata accessor for MedicalIDEditSettingsView);
  sub_2588BDA78();
  v11 = sub_2588BDA68();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_2588618D4(v5, v13 + v12, type metadata accessor for MedicalIDEditSettingsView);
  sub_25885CB04(0, 0, v9, &unk_2588C6038, v13);
}

uint64_t sub_25885FF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  sub_2587B63B8();
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for MedicalIDData();
  v4[17] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v9 = type metadata accessor for MedicalIDEditSettingsView();
  v4[19] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = sub_2588BDA78();
  v4[22] = sub_2588BDA68();
  v12 = sub_2588BDA28();
  v4[23] = v12;
  v4[24] = v11;

  return MEMORY[0x2822009F8](sub_2588600B8, v12, v11);
}

uint64_t sub_2588600B8()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[15];
  v0[25] = sub_25885CDB8();
  sub_258861F88(v3, v2, type metadata accessor for MedicalIDEditSettingsView);
  v0[26] = sub_2588BDA68();
  v5 = sub_2588BDA28();
  v0[27] = v5;
  v0[28] = v4;

  return MEMORY[0x2822009F8](sub_258860178, v5, v4);
}

uint64_t sub_258860178()
{
  v1 = v0[25];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v16 = v0[17];
  v5 = v0[16];
  swift_getKeyPath();
  v0[9] = v1;
  sub_25886084C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v6 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258861F88(v1 + v6, v5, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v4);
  sub_258861290(v5, sub_2587B63B8);
  v7 = (v2 + *(v3 + 28));
  v9 = *v7;
  v8 = v7[1];
  v0[5] = *v7;
  v0[6] = v8;
  sub_25885C5F0(0, &qword_27F9604A8, type metadata accessor for MedicalIDEditableSettingsViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v10 = v0[10];
  swift_getKeyPath();
  v0[11] = v10;
  sub_25886084C(&qword_27F95DC18, type metadata accessor for MedicalIDEditableSettingsViewModel);
  sub_2588BBB98();

  LOBYTE(v6) = *(v10 + 16);

  *(v4 + *(v16 + 68)) = v6;
  v0[7] = v9;
  v0[8] = v8;
  sub_2588BD2C8();
  v11 = v0[12];
  swift_getKeyPath();
  v0[13] = v11;
  sub_2588BBB98();

  LOBYTE(v6) = *(v11 + 17);

  *(v4 + *(v16 + 64)) = (v6 & 1) == 0;
  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_258860478;
  v13 = v0[25];
  v14 = v0[18];

  return sub_258880280(v14, (v0 + 14));
}

uint64_t sub_258860478()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v8 = *v1;

  v4 = *(v2 + 216);
  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = sub_2588606CC;
  }

  else
  {
    v6 = sub_258860588;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_258860588()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[20];
  v4 = v0[18];

  sub_258861290(v4, type metadata accessor for MedicalIDData);
  sub_258861290(v3, type metadata accessor for MedicalIDEditSettingsView);
  v5 = v0[23];
  v6 = v0[24];

  return MEMORY[0x2822009F8](sub_25886063C, v5, v6);
}

uint64_t sub_25886063C()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2588606CC()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[20];
  v4 = v0[18];

  sub_258861290(v4, type metadata accessor for MedicalIDData);
  v0[30] = v0[14];
  sub_258861290(v3, type metadata accessor for MedicalIDEditSettingsView);
  v5 = v0[23];
  v6 = v0[24];

  return MEMORY[0x2822009F8](sub_258860788, v5, v6);
}

uint64_t sub_258860788()
{
  v1 = v0[30];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[18];
  v5 = v0[16];

  sub_2587CE078();
  swift_allocError();
  *v6 = v1;

  v7 = v0[1];

  return v7();
}

uint64_t sub_25886084C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258860894()
{
  if (!qword_27F9604B0)
  {
    sub_258860928(255);
    sub_25886084C(&qword_27F960578, sub_258860928);
    v0 = sub_2588BD618();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9604B0);
    }
  }
}

void sub_25886095C()
{
  if (!qword_27F9604C0)
  {
    sub_2588609E4();
    sub_258860A54(255);
    sub_258860D84(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F9604C0);
    }
  }
}

void sub_2588609E4()
{
  if (!qword_27F9604C8)
  {
    sub_258860CA0(255, &qword_27F9604D0, &qword_27F9604D8, &type metadata for ListInsetGroupedTableHeaderView);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9604C8);
    }
  }
}

void sub_258860ABC()
{
  if (!qword_27F9604F0)
  {
    sub_258860B44(255);
    sub_258860CA0(255, &qword_27F960520, &qword_27F960528, &type metadata for ListInsetGroupedFooterView);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9604F0);
    }
  }
}

void sub_258860B6C()
{
  if (!qword_27F960500)
  {
    sub_258860F88(255, &qword_27F960508, &unk_27F960510, MEMORY[0x277CE0338], sub_258860C0C);
    sub_2588BCA98();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960500);
    }
  }
}

void sub_258860C0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *))
{
  if (!*a2)
  {
    sub_258860D30(255, &qword_27F960518, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF058]);
    v7 = a3(a1, v6, &type metadata for HorizontalTitleDetailLabelView);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_258860CA0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_258860D30(255, a3, a4, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_2588BCA98();
    v5 = sub_2588BC1E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258860D30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258860DEC()
{
  if (!qword_27F960540)
  {
    sub_258860E5C(255);
    sub_258860FE4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960540);
    }
  }
}

void sub_258860E84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258860EE8()
{
  if (!qword_27F960550)
  {
    sub_258860F88(255, &qword_27F960558, &unk_27F960560, MEMORY[0x277CE0338], sub_2588621B0);
    sub_2588BCA98();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960550);
    }
  }
}

void sub_258860F88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_2588BD238();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258860FE4()
{
  if (!qword_27F960568)
  {
    sub_25886107C();
    sub_25885C5F0(255, &qword_27F95E6C8, MEMORY[0x277CDF708], MEMORY[0x277CE0860]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960568);
    }
  }
}

void sub_25886107C()
{
  if (!qword_27F960570)
  {
    sub_2588BCA98();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960570);
    }
  }
}

void sub_258861104()
{
  if (!qword_27F960588)
  {
    sub_2588610DC(255);
    type metadata accessor for MedicalIDLearnMoreNavigationView();
    sub_2588611D8();
    sub_25886084C(&qword_27F95E780, type metadata accessor for MedicalIDLearnMoreNavigationView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960588);
    }
  }
}

unint64_t sub_2588611D8()
{
  result = qword_27F960590;
  if (!qword_27F960590)
  {
    sub_2588610DC(255);
    sub_25886084C(&qword_27F960598, sub_258860894);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960590);
  }

  return result;
}

uint64_t sub_258861290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2588612F0()
{
  v1 = *(type metadata accessor for MedicalIDEditSettingsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25885FDB8(v2);
}

uint64_t sub_258861384(uint64_t a1)
{
  v4 = *(type metadata accessor for MedicalIDEditSettingsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AE310;

  return sub_25885FF90(a1, v6, v7, v1 + v5);
}

uint64_t sub_258861474()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F960488 = result;
  unk_27F960490 = v7;
  return result;
}

void sub_2588615C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258861614()
{
  result = qword_27F9605A8;
  if (!qword_27F9605A8)
  {
    sub_258860F88(255, &qword_27F960558, &qword_27F960560, MEMORY[0x277CE0338], sub_2588621B0);
    sub_2588616C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9605A8);
  }

  return result;
}

unint64_t sub_2588616C4()
{
  result = qword_27F9605B0;
  if (!qword_27F9605B0)
  {
    sub_2588621B0(255, &qword_27F960560, MEMORY[0x277CE0338]);
    sub_258861760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9605B0);
  }

  return result;
}

unint64_t sub_258861760()
{
  result = qword_27F9605B8;
  if (!qword_27F9605B8)
  {
    sub_258860C0C(255, &qword_27F960510, MEMORY[0x277CE0338]);
    sub_2588617FC();
    sub_258861880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9605B8);
  }

  return result;
}

unint64_t sub_2588617FC()
{
  result = qword_27F9605C0;
  if (!qword_27F9605C0)
  {
    sub_258860D30(255, &qword_27F960518, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF058]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9605C0);
  }

  return result;
}

unint64_t sub_258861880()
{
  result = qword_27F9605C8;
  if (!qword_27F9605C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9605C8);
  }

  return result;
}

uint64_t sub_2588618D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25886193C()
{
  result = qword_27F9605D0;
  if (!qword_27F9605D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9605D0);
  }

  return result;
}

uint64_t objectdestroyTm_24()
{
  v1 = type metadata accessor for MedicalIDEditSettingsView();
  v33 = *(*(v1 - 1) + 80);
  v32 = *(*(v1 - 1) + 64);
  v2 = v0 + ((v33 + 16) & ~v33);
  v3 = *(v2 + 8);

  v4 = *(v2 + 16);

  v5 = *(v2 + 32);

  v6 = *(v2 + 48);

  v7 = *(v2 + 64);

  v8 = *(v2 + 80);

  v9 = type metadata accessor for MedicalIDData();
  v10 = v9[13];
  v11 = sub_2588BB9B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v2 + v10, v11);
  }

  v14 = v9[14];
  if (!v13(v2 + v14, 1, v11))
  {
    (*(v12 + 8))(v2 + v14, v11);
  }

  v15 = *(v2 + v9[15] + 8);

  v16 = (v2 + v9[18]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_2587C2610(*v16, v17);
  }

  v18 = v9[19];
  v19 = sub_2588BB818();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v2 + v18, 1, v19))
  {
    (*(v20 + 8))(v2 + v18, v19);
  }

  v21 = v9[21];
  if (!v13(v2 + v21, 1, v11))
  {
    (*(v12 + 8))(v2 + v21, v11);
  }

  v22 = type metadata accessor for MedicalIDSettingsViewModel(0);

  v23 = *(v2 + v22[6] + 8);

  v24 = *(v2 + v22[11] + 8);

  v25 = *(v2 + v1[5] + 8);

  v26 = *(v2 + v1[6] + 8);

  v27 = (v2 + v1[7]);
  v28 = *v27;

  v29 = v27[1];

  v30 = *(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t sub_258861CE8(uint64_t a1)
{
  v3 = *(type metadata accessor for MedicalIDEditSettingsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25885FC94(a1, v4);
}

unint64_t sub_258861D68()
{
  result = qword_27F9605D8;
  if (!qword_27F9605D8)
  {
    sub_258860F88(255, &qword_27F960508, &qword_27F960510, MEMORY[0x277CE0338], sub_258860C0C);
    sub_258861760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9605D8);
  }

  return result;
}

uint64_t sub_258861E18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_258860F88(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_258861E74(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_258860D30(255, a2, a3, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258861F10(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_258860D30(0, a2, a3, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258861F88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258861FF0(uint64_t a1, uint64_t a2)
{
  sub_258860CA0(0, &qword_27F960520, &qword_27F960528, &type metadata for ListInsetGroupedFooterView);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25886206C(uint64_t a1)
{
  sub_258860CA0(0, &qword_27F960520, &qword_27F960528, &type metadata for ListInsetGroupedFooterView);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2588620E0()
{
  result = qword_27F9605F0;
  if (!qword_27F9605F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9605F0);
  }

  return result;
}

uint64_t sub_258862134(uint64_t a1, uint64_t a2)
{
  sub_258860CA0(0, &qword_27F9604D0, &qword_27F9604D8, &type metadata for ListInsetGroupedTableHeaderView);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2588621B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_258860C0C(255, &qword_27F960510, MEMORY[0x277CE0338]);
    v7 = a3(a1, v6, MEMORY[0x277CE1428]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_258862234(uint64_t a1, uint64_t a2)
{
  sub_258860C0C(0, &qword_27F960510, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588622B4(uint64_t a1)
{
  sub_258860C0C(0, &qword_27F960510, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *MedicalIDViewFactory.scrollView.getter()
{
  v1 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDViewFactory_scrollView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MedicalIDViewFactory.scrollView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDViewFactory_scrollView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MedicalIDViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicalIDViewFactory.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC11MedicalIDUI20MedicalIDViewFactory_scrollView] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

char *MedicalIDViewFactory.makeHostingController(healthStore:medicalIDData:displayConfiguration:)(void *a1, void *a2, void *a3)
{
  v37 = a1;
  v5 = sub_2588BCAC8();
  v38 = *(v5 - 8);
  v6 = v38;
  v39 = v5;
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = type metadata accessor for MedicalIDMainView();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v36 - v14);
  [a3 setIsHostingView_];
  v16 = v9[7];
  *(v15 + v16) = swift_getKeyPath();
  v17 = MEMORY[0x277CDF458];
  sub_258862DE8(0, &qword_27F95DB18, MEMORY[0x28220C260], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v18 = v9[8];
  *(v15 + v18) = swift_getKeyPath();
  sub_258862DE8(0, &qword_27F95DB20, MEMORY[0x28220C178], v17);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MedicalIDModelProvider();
  swift_allocObject();
  v19 = a2;
  v20 = a3;
  *v15 = sub_2587B31A0(v37, a2, v20);
  *(v15 + v9[10]) = v20;
  v21 = v15 + v9[9];
  *v21 = 1;
  *(v21 + 1) = 0;
  v22 = objc_allocWithZone(type metadata accessor for MedicalIDHostingController());
  *&v22[qword_27F960618] = 0;
  sub_258862CD0(v15, v13);
  v23 = v20;
  v24 = sub_2588BC738();
  sub_258862D34(v15);
  v25 = MEMORY[0x277CDE4B0];
  sub_258862DE8(0, &qword_27F960620, MEMORY[0x277CDE4B0], MEMORY[0x277D84560]);
  v26 = *(v6 + 72);
  v27 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2588BFF50;
  v29 = v24;
  sub_2588BCAA8();
  sub_2588BCAB8();
  v41 = v28;
  sub_258862D90();
  sub_258862DE8(0, &qword_27F960630, v25, MEMORY[0x277D83940]);
  sub_258862E4C();
  sub_2588BDD48();
  sub_2588BC728();

  if ([v23 entryPoint] == 1 && (sub_258862ED4() & 1) != 0)
  {
    [v23 setEntryPoint_];
  }

  v30 = *&v29[qword_27F960618];
  v31 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDViewFactory_scrollView;
  v32 = v40;
  swift_beginAccess();
  v33 = *(v32 + v31);
  *(v32 + v31) = v30;
  v34 = v30;

  return v29;
}

uint64_t sub_258862990(uint64_t a1)
{
  v3 = type metadata accessor for MedicalIDMainView();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  *&v7[qword_27F960618] = 0;
  sub_258862CD0(a1, v6);
  v8 = sub_2588BC738();
  sub_258862D34(a1);
  return v8;
}

void sub_258862AEC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v6 = a3;
  v7 = v9.receiver;
  objc_msgSendSuper2(&v9, sel_setContentScrollView_forEdge_, v6, a4);
  v8 = *&v7[qword_27F960618];
  *&v7[qword_27F960618] = a3;
}

id sub_258862B78(char *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&a1[qword_27F960618] = 0;
  v9.receiver = a1;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v6);

  if (v7)
  {
  }

  return v7;
}

id _s11MedicalIDUI0A13IDViewFactoryCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MedicalIDHostingController()
{
  result = qword_27F960640;
  if (!qword_27F960640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258862CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMainView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258862D34(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDMainView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258862D90()
{
  result = qword_27F960628;
  if (!qword_27F960628)
  {
    sub_2588BCAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960628);
  }

  return result;
}

void sub_258862DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258862E4C()
{
  result = qword_27F960638;
  if (!qword_27F960638)
  {
    sub_258862DE8(255, &qword_27F960630, MEMORY[0x277CDE4B0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960638);
  }

  return result;
}

uint64_t sub_258862ED4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v3 = sub_2588BD8A8();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v9[0] = v3;
  v9[1] = v5;
  MEMORY[0x28223BE20](v2);
  v8[2] = v9;
  v6 = sub_2588B576C(sub_258863060, v8, &unk_2869BD170);
  sub_258863080();
  swift_arrayDestroy();

  return v6 & 1;
}

void sub_258863080()
{
  if (!qword_27F95D458)
  {
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D458);
    }
  }
}

MedicalIDUI::MedicalIDAccessAnalyticsEvent __swiftcall MedicalIDAccessAnalyticsEvent.init(healthAccessType:profileType:typeOfAccess:)(Swift::String healthAccessType, Swift::Int profileType, Swift::String typeOfAccess)
{
  v4 = v3;
  sub_258863340();
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000015;
  *(inited + 16) = xmmword_2588C61B0;
  *(inited + 40) = 0x80000002588CA830;
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    sub_2588BD8A8();
  }

  v8 = sub_2588BD868();

  *(inited + 48) = v8;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x80000002588CA850;
  v9 = sub_2588BD868();

  *(inited + 72) = v9;
  *(inited + 80) = 0x54656C69666F7270;
  *(inited + 88) = 0xEB00000000657079;
  *(inited + 96) = sub_2588BDB18();
  strcpy((inited + 104), "typeOfAccess");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  v10 = sub_2588BD868();

  *(inited + 120) = v10;
  v11 = sub_2588637D0(inited, &qword_27F960680, &qword_27F95D878, 0x277D82BB8);
  swift_setDeallocating();
  sub_258863398();
  swift_arrayDestroy();
  result.eventPayload._rawValue = HKImproveHealthAndActivityAnalyticsAllowed();
  *v4 = v11;
  *(v4 + 8) = result.eventPayload._rawValue;
  result.isAnalyticsAllowed = v12;
  return result;
}

void sub_258863340()
{
  if (!qword_27F960650)
  {
    sub_258863398();
    v0 = sub_2588BDF88();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960650);
    }
  }
}

void sub_258863398()
{
  if (!qword_27F960658)
  {
    sub_25878E130(255, &qword_27F95D878, 0x277D82BB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960658);
    }
  }
}

Swift::Bool __swiftcall MedicalIDAccessAnalyticsEvent.submit()()
{
  v1 = *(v0 + 8);
  if (v1 == 1)
  {
    v2 = *v0;
    v3 = sub_2588BD868();
    sub_25878E130(0, &qword_27F95D878, 0x277D82BB8);
    v4 = sub_2588BD758();
    AnalyticsSendEvent();

    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v5 = sub_2588BBC98();
    __swift_project_value_buffer(v5, qword_27F969938);
    v6 = sub_2588BBC78();
    v7 = sub_2588BDBF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_258790224(0xD00000000000001DLL, 0x80000002588C61A0, &v11);
      _os_log_impl(&dword_25878B000, v6, v7, "[%s] Submitted Medical ID Access Event", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x259C8DBE0](v9, -1, -1);
      MEMORY[0x259C8DBE0](v8, -1, -1);
    }
  }

  return v1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_258863604(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_25886364C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25886369C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_258863D34();
    v3 = sub_2588BDF28();
    v4 = a1 + 32;

    while (1)
    {
      sub_258863D98(v4, &v13, sub_258863E00);
      v5 = v13;
      v6 = v14;
      result = sub_258869E40(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_258863BC8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2588637D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_258863CCC(0, a2, a3, a4);
    v6 = sub_2588BDF28();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      v11 = v10;
      result = sub_258869E40(v8, v9);
      if (v13)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v6[6] + 16 * result);
      *v14 = v8;
      v14[1] = v9;
      *(v6[7] + 8 * result) = v11;
      v15 = v6[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v6[2] = v17;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2588638C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_258863BD8();
    v3 = sub_2588BDF28();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_25886A42C();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2588639AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_258863ABC();
    v3 = sub_2588BDF28();
    v4 = a1 + 32;

    while (1)
    {
      sub_258863D98(v4, &v11, sub_258863B5C);
      v5 = v11;
      result = sub_25886A42C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_258863BC8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_258863ABC()
{
  if (!qword_27F960660)
  {
    type metadata accessor for AttributeName(255);
    sub_258863C84(&qword_27F95D650, type metadata accessor for AttributeName);
    v0 = sub_2588BDF38();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960660);
    }
  }
}

void sub_258863B5C()
{
  if (!qword_27F960668)
  {
    type metadata accessor for AttributeName(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960668);
    }
  }
}

_OWORD *sub_258863BC8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_258863BD8()
{
  if (!qword_27F960670)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_258863C84(&qword_27F95D640, type metadata accessor for TraitKey);
    v0 = sub_2588BDF38();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960670);
    }
  }
}

uint64_t sub_258863C84(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258863CCC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_25878E130(255, a3, a4);
    v5 = sub_2588BDF38();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258863D34()
{
  if (!qword_27F960688)
  {
    v0 = sub_2588BDF38();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960688);
    }
  }
}

uint64_t sub_258863D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258863E00()
{
  if (!qword_27F960690)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960690);
    }
  }
}

uint64_t type metadata accessor for MedicalIDMedicalConditionsCellView()
{
  result = qword_27F960698;
  if (!qword_27F960698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258863EF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F95D148 != -1)
  {
    swift_once();
  }

  v3 = qword_27F9698F0;
  v23 = qword_27F9698E8;
  v4 = *v1;

  v5 = [v4 medicalConditions];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2588BD8A8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = sub_2588BD858();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v12 = qword_27F95DA88;
  v13 = sub_2588BBAC8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v12;
  sub_2588BBAB8();
  v16 = sub_2588BD8B8();
  v18 = v17;
  v19 = (v1 + *(type metadata accessor for MedicalIDMedicalConditionsCellView() + 20));
  v21 = *v19;
  v20 = v19[1];
  *a1 = v23;
  *(a1 + 8) = v3;
  *(a1 + 16) = 2;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v16;
  *(a1 + 48) = v18;
  *(a1 + 56) = v21;
  *(a1 + 64) = v20;
}

__n128 sub_258864120@<Q0>(uint64_t a1@<X8>)
{
  sub_258863EF4(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t MedicalIDPregnancyViewModel.pregnancyDueDateLabelState(_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v96 = a2;
  v3 = sub_2588BB9B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v9;
  MEMORY[0x28223BE20](v8);
  v12 = v80 - v11;
  sub_2588252AC(a1, v80 - v11);
  v13 = *(v4 + 48);
  if (v13(v12, 1, v3) == 1)
  {
    v14 = v4;
    v15 = v97 + *(type metadata accessor for MedicalIDPregnancyViewModel() + 20);
    v16 = type metadata accessor for MedicalIDData();
    sub_2588252AC(v15 + *(v16 + 56), v10);
    if (v13(v12, 1, v3) != 1)
    {
      sub_258826118(v12);
    }
  }

  else
  {
    (*(v4 + 32))(v10, v12, v3);
    v14 = v4;
    (*(v4 + 56))(v10, 0, 1, v3);
  }

  if (v13(v10, 1, v3) == 1)
  {
    result = sub_258826118(v10);
    v18 = 3;
LABEL_7:
    *v96 = v18;
    return result;
  }

  v92 = v4 + 48;
  v19 = v3;
  v20 = *(v14 + 32);
  v21 = v20(v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v19);
  v91 = v80;
  MEMORY[0x28223BE20](v21);
  v22 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v93 = v13;
  v24 = type metadata accessor for MedicalIDPregnancyViewModel();
  v94 = *(v24 + 24);
  sub_2588BBAF8();
  v25 = v5;
  v26 = v19;
  v27 = *(v14 + 8);
  v27(v22, v26);
  v89 = v22;
  v28 = v22;
  v29 = v97;
  v85 = v20;
  v30 = v20(v28, v80 - v23, v26);
  v31 = v14 + 32;
  v32 = (v14 + 8);
  v87 = v80;
  v33 = MEMORY[0x28223BE20](v30);
  v83 = v23;
  v34 = v80 - v23;
  v86 = v80;
  v35 = *(v24 + 36);
  MEMORY[0x28223BE20](v33);
  v37 = v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v38;
  sub_2588252AC(v29 + v38, v37);
  v39 = (v93)(v37, 1, v26);
  v90 = v27;
  v91 = v32;
  v88 = v25;
  if (v39 == 1)
  {
    MEMORY[0x28223BE20](v39);
    v40 = (v80 - v83);
    sub_2588BB9A8();
    sub_2588BBAF8();
    v27(v40, v26);
    v41 = (v93)(v37, 1, v26);
    v42 = v31;
    if (v41 != 1)
    {
      v41 = sub_258826118(v37);
    }
  }

  else
  {
    v41 = v85(v80 - v23, v37, v26);
    v42 = v31;
  }

  v43 = v88;
  MEMORY[0x28223BE20](v41);
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = v89;
  sub_2588BBAF8();
  v46 = sub_2588BB978();
  v47 = v90;
  v90(v80 - v44, v26);
  v48 = v47(v34, v26);
  v49 = v26;
  if (v46)
  {
    result = v47(v45, v26);
    *v96 = 0;
  }

  else
  {
    v50 = v42;
    v87 = v80;
    v51 = MEMORY[0x28223BE20](v48);
    v52 = v80 - v44;
    v86 = v80;
    v53 = MEMORY[0x28223BE20](v51);
    v54 = v80 - v44;
    MEMORY[0x28223BE20](v53);
    v56 = v80 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = v97;
    sub_2588252AC(v97 + v84, v56);
    v58 = v93;
    v59 = (v93)(v56, 1, v26);
    v82 = v50;
    if (v59 == 1)
    {
      v81 = v26;
      v83 = v80;
      MEMORY[0x28223BE20](v59);
      sub_2588BB9A8();
      sub_2588BBAF8();
      v49 = v81;
      v90(v80 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v81);
      v60 = v58(v56, 1, v49);
      v61 = v89;
      if (v60 != 1)
      {
        sub_258826118(v56);
      }
    }

    else
    {
      v85(v54, v56, v26);
      v61 = v89;
    }

    sub_2588BBAF8();
    v62 = v90;
    v90(v54, v49);
    v63 = sub_2588BB968();
    v64 = v62(v52, v49);
    if (v63)
    {
      result = v62(v61, v49);
      v18 = 2;
      goto LABEL_7;
    }

    v87 = v80;
    MEMORY[0x28223BE20](v64);
    v65 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
    v66 = objc_opt_self();
    v67 = sub_2588BB958();
    v68 = [v66 calculatePregnancyStartForEstimatedDueDate_];

    sub_2588BB988();
    v83 = v80;
    MEMORY[0x28223BE20](v69);
    v86 = v80 - v65;
    v70 = sub_2588BBAF8();
    v81 = v80;
    v71 = MEMORY[0x28223BE20](v70);
    v80[1] = v80;
    v72 = MEMORY[0x28223BE20](v71);
    v80[0] = v80;
    MEMORY[0x28223BE20](v72);
    v74 = v57;
    v75 = v80 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588252AC(v74 + v84, v75);
    v76 = v93;
    v77 = (v93)(v75, 1, v49);
    if (v77 == 1)
    {
      v95 = v80;
      MEMORY[0x28223BE20](v77);
      sub_2588BB9A8();
      sub_2588BBAF8();
      v90(v80 - v65, v49);
      if (v76(v75, 1, v49) != 1)
      {
        sub_258826118(v75);
      }
    }

    else
    {
      v85(v80 - v65, v75, v49);
    }

    sub_2588BBAF8();
    v78 = v90;
    v90(v80 - v65, v49);
    v79 = sub_2588BB968();
    v78(v80 - v65, v49);
    v78(v80 - v65, v49);
    v78(v86, v49);
    result = (v78)(v89, v49);
    *v96 = (v79 & 1) != 0;
  }

  return result;
}

uint64_t type metadata accessor for MedicalIDPregnancyViewModel()
{
  result = qword_27F9606C8;
  if (!qword_27F9606C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MedicalIDPregnancyViewModel.gestationalAgeDescription(dueDate:)(uint64_t a1)
{
  v3 = sub_2588BB9B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v31 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - v10;
  sub_2588252AC(a1, v30 - v10);
  v12 = *(v4 + 48);
  if (v12(v11, 1, v3) == 1)
  {
    v13 = v1 + *(type metadata accessor for MedicalIDPregnancyViewModel() + 20);
    v14 = type metadata accessor for MedicalIDData();
    sub_2588252AC(v13 + *(v14 + 56), v9);
    if (v12(v11, 1, v3) != 1)
    {
      sub_258826118(v11);
    }
  }

  else
  {
    (*(v4 + 32))(v9, v11, v3);
    (*(v4 + 56))(v9, 0, 1, v3);
  }

  if (v12(v9, 1, v3) == 1)
  {
    sub_258826118(v9);
    return 0;
  }

  else
  {
    v16 = (*(v4 + 32))(v31, v9, v3);
    v30[2] = v30;
    MEMORY[0x28223BE20](v16);
    v17 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = objc_opt_self();
    v19 = sub_2588BB958();
    v20 = [v18 calculatePregnancyStartForEstimatedDueDate_];

    sub_2588BB988();
    v30[1] = v30;
    MEMORY[0x28223BE20](v21);
    v22 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v22, v17, v3);
    (*(v4 + 56))(v22, 0, 1, v3);
    v23 = sub_2588BE0A8();
    v24 = *(v23 - 8);
    v25 = *(v24 + 64);
    MEMORY[0x28223BE20](v23);
    v27 = v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BE098();
    v28 = MedicalIDPregnancyViewModel.gestationalAgeDescription(startDate:format:)(v22, v27);
    (*(v24 + 8))(v27, v23);
    sub_258826118(v22);
    v29 = *(v4 + 8);
    v29(v17, v3);
    v29(v31, v3);
    return v28;
  }
}

uint64_t MedicalIDPregnancyViewModel.init(data:calendar:locale:sampleDataProvider:currentDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_2588BD9A8();
  v13 = HKUIJoinStringsForAutomationIdentifier();

  if (v13)
  {
    v14 = sub_2588BD8A8();
    v16 = v15;
  }

  else
  {
    v16 = 0xE900000000000079;
    v14 = 0x636E616E67657250;
  }

  *a6 = v14;
  a6[1] = v16;
  v17 = type metadata accessor for MedicalIDPregnancyViewModel();
  sub_258868BD0(a1, a6 + v17[5], type metadata accessor for MedicalIDData);
  v18 = v17[6];
  v19 = sub_2588BBB48();
  (*(*(v19 - 8) + 32))(a6 + v18, a2, v19);
  v20 = v17[7];
  v21 = sub_2588BBAC8();
  (*(*(v21 - 8) + 32))(a6 + v20, a3, v21);
  *(a6 + v17[8]) = a4;
  v22 = a6 + v17[9];

  return sub_2587E8EE8(a5, v22);
}

Swift::Bool __swiftcall MedicalIDPregnancyViewModel.hasPregnancyData()()
{
  v1 = v0 + *(type metadata accessor for MedicalIDPregnancyViewModel() + 20);
  v2 = type metadata accessor for MedicalIDData();
  v3 = *(v2 + 52);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4 - 8);
  sub_2588252AC(v1 + v3, &v14 - v5);
  v6 = sub_2588BB9B8();
  v7 = *(*(v6 - 8) + 48);
  v8 = v7(&v14 - v5, 1, v6);
  v9 = sub_258826118(&v14 - v5);
  if (v8 == 1)
  {
    return 0;
  }

  v11 = *(v2 + 56);
  MEMORY[0x28223BE20](v9);
  sub_2588252AC(v1 + v12, &v14 - v5);
  v10 = v7(&v14 - v5, 1, v6) != 1;
  sub_258826118(&v14 - v5);
  return v10;
}

uint64_t MedicalIDPregnancyViewModel.defaultPregnancyDueDate(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 suggestHealthData])
  {
    sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
    v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v4 - 8);
    v7 = v27 - v6;
    v8 = *(v2 + *(type metadata accessor for MedicalIDPregnancyViewModel() + 32));
    if (v8)
    {
      swift_getKeyPath();
      v27[1] = v8;
      sub_258825208();
      sub_2588BBB98();

      v9 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate;
      swift_beginAccess();
      sub_2588252AC(v8 + v9, v7);
      v10 = sub_2588BB9B8();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v7, 1, v10) != 1)
      {
        return (*(v11 + 32))(a2, v7, v10);
      }
    }

    else
    {
      v13 = sub_2588BB9B8();
      (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    }

    sub_258826118(v7);
  }

  v14 = HKUIDefaultPregnancyDueDate();
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v27 - v17;
  if (v14)
  {
    v19 = sub_2588BB9B8();
    v20 = *(v19 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19);
    v23 = v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BB988();

    v24 = *(v20 + 32);
    v24(v18, v23, v19);
    (*(v20 + 56))(v18, 0, 1, v19);
    return (v24)(a2, v18, v19);
  }

  else
  {
    v25 = sub_2588BB9B8();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v18, 1, 1, v25);
    sub_2588BB9A8();
    result = (*(v26 + 48))(v18, 1, v25);
    if (result != 1)
    {
      return sub_258826118(v18);
    }
  }

  return result;
}

id MedicalIDPregnancyViewModel.minimumSelectableDueDate.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_2588BB9B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7 - 8);
  v52 = v1;
  _s11MedicalIDUI0A20IDPregnancyViewModelV24maximumSelectableDueDate10Foundation0I0VSgvg_0(&v37 - v9);
  v51 = *(v4 + 48);
  if (v51(&v37 - v9, 1, v3) == 1)
  {
    sub_258826118(&v37 - v9);
    return (*(v4 + 56))(a1, 1, 1, v3);
  }

  else
  {
    v47 = a1;
    v41 = *(v4 + 32);
    v42 = v4 + 32;
    v11 = v41(&v37 - v6, &v37 - v9, v3);
    v46 = &v37;
    v12 = MEMORY[0x28223BE20](v11);
    v40 = &v37 - v6;
    v45 = &v37;
    MEMORY[0x28223BE20](v12);
    v50 = &v37 - v6;
    v13 = &v37 - v9;
    v39 = type metadata accessor for MedicalIDPregnancyViewModel();
    v49 = *(v39 + 24);
    v14 = sub_2588BBB38();
    v44 = &v37;
    v15 = *(v14 - 8);
    v16 = v15[8];
    MEMORY[0x28223BE20](v14);
    v17 = *MEMORY[0x277CC9938];
    v18 = v15[13];
    v48 = v19;
    v38 = v18;
    v18(&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    result = [objc_opt_self() maximumNumberOfWeeksPregnant];
    if (__OFSUB__(0, result))
    {
      __break(1u);
    }

    else
    {
      v43 = v4;
      sub_2588BBB28();
      v37 = v15[1];
      v37(&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v48);
      v20 = v51;
      if (v51(v13, 1, v3) == 1)
      {
        v21 = v50;
        v22 = sub_258826118(v13);
        v48 = &v37;
        v23 = *(v39 + 36);
        MEMORY[0x28223BE20](v22);
        v24 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_2588252AC(v52 + v25, v24);
        v26 = v20(v24, 1, v3);
        if (v26 == 1)
        {
          v27 = v20;
          v46 = &v37;
          MEMORY[0x28223BE20](v26);
          v28 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_2588BB9A8();
          v29 = v47;
          sub_2588BBAF8();
          v30 = v43;
          v31 = *(v43 + 8);
          v31(v28, v3);
          v31(v21, v3);
          v32 = v30;
          if (v27(v24, 1, v3) != 1)
          {
            sub_258826118(v24);
          }
        }

        else
        {
          v32 = v43;
          (*(v43 + 8))(v21, v3);
          v29 = v47;
          v41(v47, &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
        }

        return (*(v32 + 56))(v29, 0, 1, v3);
      }

      else
      {
        v33 = v40;
        v34 = v41(v40, v13, v3);
        MEMORY[0x28223BE20](v34);
        v35 = v48;
        v38(&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9970], v48);
        sub_2588BBB28();
        v37(&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v35);
        v36 = *(v43 + 8);
        v36(v33, v3);
        return (v36)(v50, v3);
      }
    }
  }

  return result;
}

uint64_t MedicalIDPregnancyViewModel.update(_:with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2588BB9B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9 - 8);
  sub_2588252AC(a2, v24 - v10);
  if ((*(v5 + 48))(v24 - v10, 1, v4) == 1)
  {
    sub_258826118(v24 - v10);
    v11 = type metadata accessor for MedicalIDData();
    v12 = *(v11 + 56);
    sub_258826118(a1 + v12);
    v13 = *(v5 + 56);
    v13(a1 + v12, 1, 1, v4);
    v14 = *(v11 + 52);
    sub_258826118(a1 + v14);
    return (v13)(a1 + v14, 1, 1, v4);
  }

  else
  {
    (*(v5 + 32))(v8, v24 - v10, v4);
    v16 = type metadata accessor for MedicalIDData();
    v17 = *(v16 + 56);
    sub_258826118(a1 + v17);
    (*(v5 + 16))(a1 + v17, v8, v4);
    v18 = *(v5 + 56);
    v19 = v18(a1 + v17, 0, 1, v4);
    v24[1] = v24;
    MEMORY[0x28223BE20](v19);
    v20 = v24 - v10;
    v21 = objc_opt_self();
    v22 = sub_2588BB958();
    v23 = [v21 calculatePregnancyStartForEstimatedDueDate_];

    sub_2588BB988();
    (*(v5 + 8))(v8, v4);
    v18(v20, 0, 1, v4);
    return sub_25886803C(v20, a1 + *(v16 + 52));
  }
}

double MedicalIDPregnancyViewModel.validationResult(for:)@<D0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v149 = a2;
  v3 = sub_2588BB9B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  MEMORY[0x28223BE20](v3);
  v148 = v6;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = type metadata accessor for MedicalIDData();
  v9 = *(v8 + 52);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10 - 8);
  v146 = a1;
  sub_2588252AC(&a1[v9], &v115 - v12);
  v150 = *(v4 + 6);
  v151 = v3;
  if (v150(&v115 - v12, 1, v3) == 1)
  {
    sub_258826118(&v115 - v12);
LABEL_5:
    v20 = v149;
    v149[6] = 0;
    result = 0.0;
    *(v20 + 1) = 0u;
    *(v20 + 2) = 0u;
    *v20 = 0u;
    return result;
  }

  v13 = v151;
  v143 = *(v4 + 4);
  v144 = (v4 + 32);
  v14 = (v143)(&v115 - v7, &v115 - v12, v151);
  v145 = &v115 - v7;
  v15 = v148;
  v16 = MEMORY[0x28223BE20](v14);
  v17 = &v115 - v7;
  v18 = *(v8 + 56);
  MEMORY[0x28223BE20](v16);
  sub_2588252AC(&v146[v19], &v115 - v12);
  v146 = v4 + 48;
  if (v150(&v115 - v12, 1, v13) == 1)
  {
    (*(v4 + 1))(v145, v151);
    sub_258826118(&v115 - v12);
    goto LABEL_5;
  }

  v139 = v4;
  v140 = &v115;
  v22 = (v143)(v17, &v115 - v12, v151);
  v138 = &v115;
  MEMORY[0x28223BE20](v22);
  v23 = v17;
  v24 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = type metadata accessor for MedicalIDPregnancyViewModel();
  v26 = *(v25 + 24);
  v27 = v147;
  v142 = &v115 - v24;
  v28 = v145;
  v29 = sub_2588BBAF8();
  v137 = &v115;
  MEMORY[0x28223BE20](v29);
  v136 = &v115 - v24;
  v141 = v23;
  v30 = sub_2588BBAF8();
  v135 = &v115;
  v31 = MEMORY[0x28223BE20](v30);
  v32 = *(v25 + 36);
  MEMORY[0x28223BE20](v31);
  v33 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v34;
  sub_2588252AC(v27 + v34, v33);
  v35 = (v150)(v33, 1, v151);
  v133 = v11;
  v134 = v26;
  if (v35 == 1)
  {
    MEMORY[0x28223BE20](v35);
    sub_2588BB9A8();
    sub_2588BBAF8();
    v36 = v139;
    v37 = v151;
    (*(v139 + 1))(&v115 - v24, v151);
    v38 = v150;
    if (v150(v33, 1, v37) != 1)
    {
      sub_258826118(v33);
    }
  }

  else
  {
    v38 = v150;
    v37 = v151;
    (v143)(&v115 - v24, v33, v151);
    v36 = v139;
  }

  sub_258868B88(&qword_27F95D888, MEMORY[0x28220BF98]);
  v39 = v142;
  v40 = sub_2588BD7B8();
  v41 = *(v36 + 1);
  v41(&v115 - v24, v37);
  v42 = v141;
  if (v40)
  {
    v152 = 1;
    MedicalIDPregnancyViewModel.validationError(for:)(&v153, &v152);
    v41(v136, v37);
    v41(v39, v37);
    v41(v42, v37);
    v41(v28, v37);
    object = v153.title._object;
    rawValue = v153.actions._rawValue;
    v45 = v149;
    *v149 = v153.title._countAndFlagsBits;
    v45[1] = object;
    *(v45 + 1) = v153.message;
    v45[4] = rawValue;
    result = *&v153.code.value._countAndFlagsBits;
    *(v45 + 5) = v153.code;
    return result;
  }

  v151 = v41;
  v46 = sub_2588BB818();
  v135 = &v115;
  v131 = v46;
  v130 = *(v46 - 8);
  v47 = *(v130 + 64);
  MEMORY[0x28223BE20](v46);
  v124 = v48;
  v139 = &v115 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258868DE8(0, &qword_27F9606A8, MEMORY[0x28220C208], MEMORY[0x277D84560]);
  v50 = v49;
  v51 = sub_2588BBB38();
  v52 = *(v51 - 8);
  v53 = *(v52 + 80);
  v54 = (v53 + 32) & ~v53;
  v121 = *(v52 + 72);
  v120 = v53;
  v122 = v50;
  v55 = swift_allocObject();
  v117 = xmmword_2588C00B0;
  *(v55 + 16) = xmmword_2588C00B0;
  v56 = *MEMORY[0x277CC9938];
  v57 = *(v52 + 104);
  v119 = v52 + 104;
  v118 = v57;
  v57(v55 + v54, v56, v51);
  v129 = sub_2588B9D4C(v55);
  swift_setDeallocating();
  v58 = *(v52 + 8);
  v123 = v54;
  v126 = v51;
  v125 = v52 + 8;
  v116 = v58;
  v58(v55 + v54, v51);
  v59 = swift_deallocClassInstance();
  v128 = &v115;
  v60 = v148;
  v61 = MEMORY[0x28223BE20](v59);
  v62 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = &v115 - v62;
  v127 = &v115;
  MEMORY[0x28223BE20](v61);
  v65 = &v115 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588252AC(v147 + v132, v65);
  v66 = (v38)(v65, 1, v37);
  if (v66 == 1)
  {
    v115 = &v115;
    MEMORY[0x28223BE20](v66);
    sub_2588BB9A8();
    sub_2588BBAF8();
    v67 = &v115 - v62;
    v42 = v141;
    v68 = v151;
    v151(v67, v37);
    if (v38(v65, 1, v37) != 1)
    {
      sub_258826118(v65);
    }
  }

  else
  {
    (v143)(&v115 - v62, v65, v37);
    v68 = v151;
  }

  v69 = v147;
  v70 = v139;
  v71 = v142;
  sub_2588BBB08();

  v68(v63, v37);
  v72 = sub_2588BB748();
  if (v73)
  {
    (*(v130 + 8))(v70, v131);
    v68(v136, v37);
    v68(v71, v37);
    v68(v42, v37);
    v68(v145, v37);
    v74 = v149;
    v149[6] = 0;
    result = 0.0;
    *(v74 + 1) = 0u;
    *(v74 + 2) = 0u;
    *v74 = 0u;
    return result;
  }

  v115 = v72;
  v129 = &v115;
  MEMORY[0x28223BE20](v72);
  v128 = (&v115 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = v123;
  v77 = swift_allocObject();
  *(v77 + 16) = v117;
  v78 = v126;
  v118(v77 + v76, *MEMORY[0x277CC9970], v126);
  v127 = sub_2588B9D4C(v77);
  swift_setDeallocating();
  v116(v77 + v76, v78);
  v79 = swift_deallocClassInstance();
  v126 = &v115;
  v80 = v148;
  v81 = MEMORY[0x28223BE20](v79);
  v82 = (v80 + 15) & 0xFFFFFFFFFFFFFFF0;
  v83 = &v115 - v82;
  MEMORY[0x28223BE20](v81);
  v85 = &v115 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588252AC(v69 + v132, v85);
  v86 = v150;
  v87 = (v150)(v85, 1, v37);
  if (v87 == 1)
  {
    v144 = &v115;
    v143 = &v115;
    MEMORY[0x28223BE20](v87);
    sub_2588BB9A8();
    sub_2588BBAF8();
    v88 = &v115 - v82;
    v89 = v151;
    v151(v88, v37);
    if (v86(v85, 1, v37) != 1)
    {
      sub_258826118(v85);
    }
  }

  else
  {
    (v143)(&v115 - v82, v85, v37);
    v89 = v151;
  }

  v90 = v128;
  v91 = v136;
  sub_2588BBB08();

  v89(v83, v37);
  v92 = sub_2588BB788();
  if (v93)
  {
    v94 = v89;
    v95 = *(v130 + 8);
    v96 = v131;
    v95(v90, v131);
    v95(v139, v96);
    v94(v91, v37);
    v94(v142, v37);
    v94(v141, v37);
    v94(v145, v37);
    v97 = v149;
    v149[6] = 0;
    result = 0.0;
    *(v97 + 1) = 0u;
    *(v97 + 2) = 0u;
    *v97 = 0u;
    return result;
  }

  v98 = v92;
  v99 = objc_opt_self();
  v100 = [v99 maximumNumberOfWeeksPregnant];
  v101 = v141;
  if (v115 >= v100)
  {
    v152 = 0;
    MedicalIDPregnancyViewModel.validationError(for:)(&v153, &v152);
    v105 = v89;
    v106 = *(v130 + 8);
    v107 = v131;
    v106(v90, v131);
    v106(v139, v107);
    v105(v91, v37);
    v105(v142, v37);
    v105(v101, v37);
    v105(v145, v37);
    goto LABEL_28;
  }

  if ([v99 estimatedDueDateNumberOfDays] < v98)
  {
    v152 = 1;
    MedicalIDPregnancyViewModel.validationError(for:)(&v153, &v152);
    v102 = *(v130 + 8);
    v103 = v131;
    v102(v90, v131);
    v102(v139, v103);
    v104 = v151;
    v151(v91, v37);
    v104(v142, v37);
    v104(v101, v37);
    v104(v145, v37);
LABEL_28:
    v108 = v153.title._object;
    v109 = v153.actions._rawValue;
    v110 = v149;
    *v149 = v153.title._countAndFlagsBits;
    v110[1] = v108;
    *(v110 + 1) = v153.message;
    v110[4] = v109;
    result = *&v153.code.value._countAndFlagsBits;
    *(v110 + 5) = v153.code;
    return result;
  }

  v111 = *(v130 + 8);
  v112 = v131;
  v111(v90, v131);
  v111(v139, v112);
  v113 = v151;
  v151(v91, v37);
  v113(v142, v37);
  v113(v101, v37);
  v113(v145, v37);
  v114 = v149;
  v149[6] = 0;
  result = 0.0;
  *(v114 + 1) = 0u;
  *(v114 + 2) = 0u;
  *v114 = 0u;
  return result;
}

uint64_t sub_258867124(uint64_t a1)
{
  v3 = sub_2588BB9B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  sub_2588252AC(a1, &v19 - v10);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_258826118(v11);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v14 = v1 + *(type metadata accessor for MedicalIDPregnancyViewModel() + 28);
    v15 = sub_2588BBA88();
    [v13 setLocale_];

    [v13 setDateStyle_];
    v16 = sub_2588BB958();
    v17 = [v13 stringFromDate_];

    v18 = sub_2588BD8A8();
    (*(v4 + 8))(v7, v3);
    return v18;
  }
}

uint64_t MedicalIDPregnancyViewModel.gestationalAgeDescription(startDate:format:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_2588BB9B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  sub_2588252AC(a1, &v31 - v14);
  v16 = *(v6 + 48);
  if (v16(v15, 1, v5) == 1)
  {
    v17 = v2 + *(type metadata accessor for MedicalIDPregnancyViewModel() + 20);
    v18 = type metadata accessor for MedicalIDData();
    sub_2588252AC(v17 + *(v18 + 52), v13);
    if (v16(v15, 1, v5) != 1)
    {
      sub_258826118(v15);
    }
  }

  else
  {
    (*(v6 + 32))(v13, v15, v5);
    (*(v6 + 56))(v13, 0, 1, v5);
  }

  if (v16(v13, 1, v5) == 1)
  {
    sub_258826118(v13);
    return 0;
  }

  else
  {
    v33 = a2;
    (*(v6 + 32))(&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v5);
    v19 = sub_2588BBB78();
    v20 = *(v19 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19);
    v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BBB68();
    sub_2588BBB58();
    (*(v20 + 8))(v23, v19);
    v24 = sub_258868B3C();
    MEMORY[0x28223BE20](v24);
    sub_2588BB9A8();
    sub_2588BDC88();
    v32 = *(v6 + 8);
    v32(&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

    v26 = sub_2588BE0B8();
    v27 = *(v26 - 8);
    v28 = *(v27 + 64);
    MEMORY[0x28223BE20](v26);
    v30 = &v31 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BDC78();
    sub_258868B88(&qword_27F9606B8, MEMORY[0x28220C4C8]);
    sub_2588BE0C8();
    (*(v27 + 8))(v30, v26);
    v32(v8, v5);
    return v34;
  }
}

uint64_t sub_258867848@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258825208();
  sub_2588BBB98();

  v4 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate;
  swift_beginAccess();
  return sub_2588252AC(v3 + v4, a2);
}

uint64_t sub_2588678E0(uint64_t a1, uint64_t *a2)
{
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_2588252AC(a1, &v10 - v6);
  v8 = *a2;
  return PregnancySampleDataProvider.ongoingEstimatedDueDate.setter(v7);
}

Swift::Bool __swiftcall MedicalIDPregnancyViewModel.isGestationalAgeValid()()
{
  v1 = sub_2588BB9B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for MedicalIDPregnancyViewModel() + 20);
  v7 = *(type metadata accessor for MedicalIDData() + 52);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_2588252AC(v6 + v7, &v15 - v10);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    sub_258826118(v11);
    return 0;
  }

  else
  {
    (*(v2 + 32))(v5, v11, v1);
    v13 = objc_opt_self();
    v14 = sub_2588BB958();
    LOBYTE(v13) = [v13 isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate_];

    (*(v2 + 8))(v5, v1);
    return v13;
  }
}

uint64_t MedicalIDPregnancyViewModel.baseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MedicalIDPregnancyViewModel.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MedicalIDPregnancyViewModel() + 20);

  return sub_2587B94F8(v3, a1);
}

uint64_t MedicalIDPregnancyViewModel.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDPregnancyViewModel() + 24);
  v4 = sub_2588BBB48();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MedicalIDPregnancyViewModel.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDPregnancyViewModel() + 28);
  v4 = sub_2588BBAC8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MedicalIDPregnancyViewModel.sampleDataProvider.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicalIDPregnancyViewModel() + 32));
}

uint64_t _s11MedicalIDUI0A20IDPregnancyViewModelV24maximumSelectableDueDate10Foundation0I0VSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for MedicalIDPregnancyViewModel();
  v3 = *(v2 + 24);
  v4 = sub_2588BBB38();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *MEMORY[0x277CC9970];
  v25 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v8;
  v9 = *(v8 + 104);
  v28 = v10;
  v9();
  v24[1] = [objc_opt_self() estimatedDueDateNumberOfDays];
  v11 = sub_2588BB9B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = *(v2 + 36);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v24 - v18;
  sub_2588252AC(v1 + v15, v24 - v18);
  v20 = *(v12 + 48);
  v21 = v20(v19, 1, v11);
  if (v21 == 1)
  {
    v24[0] = v24;
    MEMORY[0x28223BE20](v21);
    sub_2588BB9A8();
    sub_2588BBAF8();
    (*(v12 + 8))(v24 - v14, v11);
    if (v20(v19, 1, v11) != 1)
    {
      sub_258826118(v19);
    }
  }

  else
  {
    (*(v12 + 32))(v24 - v14, v19, v11);
  }

  v22 = v25;
  sub_2588BBB28();
  (*(v12 + 8))(v24 - v14, v11);
  return (*(v26 + 8))(v22, v28);
}

uint64_t sub_25886803C(uint64_t a1, uint64_t a2)
{
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::String_optional __swiftcall MedicalIDPregnancyViewModel.dueDateDescription()()
{
  v1 = sub_2588BB9B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for MedicalIDPregnancyViewModel() + 20);
  v7 = *(type metadata accessor for MedicalIDData() + 56);
  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - 8);
  sub_2588252AC(v6 + v7, &v17 - v9);
  if ((*(v2 + 48))(&v17 - v9, 1, v1) == 1)
  {
    sub_258826118(&v17 - v9);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = (*(v2 + 32))(v5, &v17 - v9, v1);
    MEMORY[0x28223BE20](v12);
    (*(v2 + 16))(&v17 - v9, v5, v1);
    (*(v2 + 56))(&v17 - v9, 0, 1, v1);
    v13 = sub_258867124(&v17 - v9);
    v15 = v14;
    sub_258826118(&v17 - v9);
    (*(v2 + 8))(v5, v1);
    v11 = v15;
    v10 = v13;
  }

  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

MedicalIDUI::MedicalIDPregnancyViewModel::ValidationError_optional __swiftcall MedicalIDPregnancyViewModel.ValidationError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2588BDF58();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t MedicalIDPregnancyViewModel.ValidationError.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_258868888(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (v3)
  {
    v5 = "com.apple.mobilephone";
  }

  else
  {
    v5 = "dueDateTooFarInPast";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (*a2)
  {
    v8 = "dueDateTooFarInPast";
  }

  else
  {
    v8 = "com.apple.mobilephone";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2588BDF98();
  }

  return v10 & 1;
}

uint64_t sub_258868934()
{
  v1 = *v0;
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

uint64_t sub_2588689B4()
{
  *v0;
  sub_2588BD908();
}

uint64_t sub_258868A20()
{
  v1 = *v0;
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

uint64_t sub_258868A9C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2588BDF58();

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

void sub_258868AFC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v1)
  {
    v3 = "dueDateTooFarInPast";
  }

  else
  {
    v3 = "com.apple.mobilephone";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_258868B3C()
{
  result = qword_27F9606B0;
  if (!qword_27F9606B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F9606B0);
  }

  return result;
}

uint64_t sub_258868B88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258868BD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_258868C3C()
{
  result = qword_27F9606C0;
  if (!qword_27F9606C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9606C0);
  }

  return result;
}

void sub_258868CB8()
{
  type metadata accessor for MedicalIDData();
  if (v0 <= 0x3F)
  {
    sub_2588BBB48();
    if (v1 <= 0x3F)
    {
      sub_2588BBAC8();
      if (v2 <= 0x3F)
      {
        sub_258868DE8(319, &qword_27F9606D8, type metadata accessor for PregnancySampleDataProvider, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_258868DE8(319, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_258868DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _s11MedicalIDUI0A18IDValidationResultO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = a2[6];
  if (!v3)
  {
    if (!v10)
    {
      sub_2587FC42C(*a1, 0);
      sub_2587FC42C(v9, 0);
      v16 = 1;
      return v16 & 1;
    }

    goto LABEL_5;
  }

  if (!v10)
  {
LABEL_5:
    v18 = a2[3];
    v20 = a2[2];
    v21 = a2[4];
    sub_25882C8CC(*a2, a2[1]);
    sub_25882C8CC(v2, v3);
    sub_2587FC42C(v2, v3);
    sub_2587FC42C(v9, v10);
    v16 = 0;
    return v16 & 1;
  }

  v23[0] = *a1;
  v23[1] = v3;
  v23[2] = v5;
  v23[3] = v4;
  v23[4] = v6;
  v23[5] = v7;
  v23[6] = v8;
  v22[0] = v9;
  v22[1] = v10;
  v22[2] = v12;
  v22[3] = v11;
  v22[4] = v14;
  v22[5] = v13;
  v22[6] = v15;
  sub_25882C8CC(v9, v10);
  sub_25882C8CC(v2, v3);
  sub_25882C8CC(v9, v10);
  sub_25882C8CC(v2, v3);
  v19 = _s11MedicalIDUI15BasicAlertModelV2eeoiySbAC_ACtFZ_0(v23, v22);
  sub_2587FC42C(v2, v3);
  sub_2587FC42C(v9, v10);
  sub_2587FC42C(v9, v10);
  sub_2587FC42C(v2, v3);
  v16 = v19;
  return v16 & 1;
}

uint64_t get_enum_tag_for_layout_string_11MedicalIDUI0A18IDValidationResultO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_258869140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258869190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_2588691F0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

id sub_258869230()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D755C8]) init];
  sub_258869D4C();
  sub_2588BCB38();
  [v1 setDelegate_];

  [v1 setAllowsEditing_];
  v2 = *(v0 + *(type metadata accessor for ImagePickerView(0) + 20));
  [v1 setSourceType_];
  if (v2 == 1)
  {
    [v1 setCameraDevice_];
  }

  return v1;
}

uint64_t sub_2588694F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(sub_2588BC298() - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_258804A60(0);
  v5[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  sub_2588BDA78();
  v5[7] = sub_2588BDA68();
  v10 = sub_2588BDA28();

  return MEMORY[0x2822009F8](sub_2588695E4, v10, v9);
}

uint64_t sub_2588695E4()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = v0[3];

  v4 = (v2 + OBJC_IVAR____TtCV11MedicalIDUI15ImagePickerView11Coordinator_imageProcessor);
  v5 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI15ImagePickerView11Coordinator_imageProcessor + 24);
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 8))(v3, v0 + 8, v5, v6, 200.0, 200.0);
  if (v7)
  {
    v8 = v7;
    v9 = v0[2] + OBJC_IVAR____TtCV11MedicalIDUI15ImagePickerView11Coordinator_parent;
    v10 = v9 + *(type metadata accessor for ImagePickerView(0) + 24);
    v11 = *(v10 + 8);
    (*v10)(v8);
  }

  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[4];
  sub_25885299C(v12);
  MEMORY[0x259C8C5A0](v13);
  sub_2588BC288();
  sub_2588BD438();
  sub_258869DE0(v12, sub_258804A60);

  v15 = v0[1];

  return v15();
}

uint64_t sub_258869820()
{
  result = type metadata accessor for ImagePickerView(319);
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

void sub_258869900()
{
  sub_25886A2BC(319, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SourceType(319);
    if (v1 <= 0x3F)
    {
      sub_2587B2F78();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258869A18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258869CE8(v2, v6);
  v13[3] = &type metadata for UIImageProcessor;
  v13[4] = &protocol witness table for UIImageProcessor;
  v7 = type metadata accessor for ImagePickerView.Coordinator(0);
  v8 = objc_allocWithZone(v7);
  sub_258869CE8(v6, v8 + OBJC_IVAR____TtCV11MedicalIDUI15ImagePickerView11Coordinator_parent);
  sub_2587B6C14(v13, v8 + OBJC_IVAR____TtCV11MedicalIDUI15ImagePickerView11Coordinator_imageProcessor);
  v12.receiver = v8;
  v12.super_class = v7;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  sub_258869DE0(v6, type metadata accessor for ImagePickerView);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v13);
  *a2 = v9;
  return result;
}

uint64_t sub_258869B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258869CA0(&qword_27F960800, type metadata accessor for ImagePickerView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_258869BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258869CA0(&qword_27F960800, type metadata accessor for ImagePickerView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_258869C48()
{
  sub_258869CA0(&qword_27F960800, type metadata accessor for ImagePickerView);
  sub_2588BCA58();
  __break(1u);
}

uint64_t sub_258869CA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258869CE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_258869D4C()
{
  if (!qword_27F960808)
  {
    type metadata accessor for ImagePickerView(255);
    sub_258869CA0(&qword_27F960800, type metadata accessor for ImagePickerView);
    v0 = sub_2588BCB48();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960808);
    }
  }
}

uint64_t sub_258869DE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_258869E40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2588BE038();
  sub_2588BD908();
  v6 = sub_2588BE078();

  return sub_258869F48(a1, a2, v6);
}

unint64_t sub_258869EB8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2588BD8A8();
  sub_2588BE038();
  sub_2588BD908();
  v4 = sub_2588BE078();

  return sub_25886A000(a1, v4);
}

unint64_t sub_258869F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2588BDF98())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25886A000(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2588BD8A8();
      v9 = v8;
      if (v7 == sub_2588BD8A8() && v9 == v10)
      {
        break;
      }

      v12 = sub_2588BDF98();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_25886A104(uint64_t a1)
{
  v2 = v1;
  sub_25886A2BC(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v17 - v6;
  if (*(a1 + 16))
  {
    v8 = sub_258869EB8(*MEMORY[0x277D76A50]);
    if (v9)
    {
      sub_258790448(*(a1 + 56) + 32 * v8, v18);
      sub_25886A320();
      if (swift_dynamicCast())
      {
        v10 = v17[1];
        v11 = sub_2588BDAA8();
        (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
        sub_2588BDA78();
        v12 = v2;
        v13 = v10;
        v14 = sub_2588BDA68();
        v15 = swift_allocObject();
        v16 = MEMORY[0x277D85700];
        v15[2] = v14;
        v15[3] = v16;
        v15[4] = v12;
        v15[5] = v13;
        sub_2587ABD24(0, 0, v7, &unk_2588C6588, v15);
      }
    }
  }
}

void sub_25886A2BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25886A320()
{
  result = qword_27F960810;
  if (!qword_27F960810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F960810);
  }

  return result;
}

uint64_t sub_25886A36C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AE310;

  return sub_2588694F0(a1, v4, v5, v7, v6);
}

uint64_t sub_25886A430(char a1, uint64_t a2, uint64_t a3)
{
  sub_2587B1964();
  v5 = sub_2588BC1E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  sub_2588BCCC8();
  sub_2588BD028();

  if (a1)
  {
    sub_2588BD1D8();
  }

  else
  {
    sub_2588BD1E8();
  }

  v10 = sub_25886A59C();
  v12[0] = a3;
  v12[1] = v10;
  swift_getWitnessTable();
  sub_2588BCF08();

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_25886A59C()
{
  result = qword_27F95D9B8;
  if (!qword_27F95D9B8)
  {
    sub_2587B1964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D9B8);
  }

  return result;
}

uint64_t *SuggestedEmergencyContactFetcher.__allocating_init(contactAuthorizationChecker:suggestedContactFetcher:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v6 = a1[3];
  v5 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2[3];
  v13 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  v15 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = sub_25886AFF0(v10, v17, v4, v6, v12, v5, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v19;
}

uint64_t SuggestedEmergencyContactFetcher.fetch(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  if (((*(v6 + 8))(v5, v6) & 1) == 0)
  {
    return a1(0);
  }

  v7 = v2[10];
  v8 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = *(v8 + 8);

  v10(sub_2587907A0, v9, v7, v8);
}

uint64_t *SuggestedEmergencyContactFetcher.init(contactAuthorizationChecker:suggestedContactFetcher:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_25886AFF0(v11, v18, v3, v7, v13, v6, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v20;
}

uint64_t SuggestedEmergencyContactFetcher.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

void *sub_25886AAE0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_25878F1E0(0, &qword_280C0DDD8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 95;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 7);
  return result;
}

void *sub_25886AB68(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_25878F1E0(0, &qword_280C0DDB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_25886ABF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_25886B4DC();
  v39 = a2;
  result = sub_2588BDF18();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_2588BE038();
      sub_2588BD908();
      result = sub_2588BE078();
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
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

id sub_25886AE90()
{
  v1 = v0;
  sub_25886B4DC();
  v2 = *v0;
  v3 = sub_2588BDF08();
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

        result = v20;
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

uint64_t *sub_25886AFF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a3[5] = a4;
  a3[6] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 2);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  a3[10] = a5;
  a3[11] = a7;
  v14 = __swift_allocate_boxed_opaque_existential_1(a3 + 7);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  return a3;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *sub_25886B1F4(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + ((v12 << 13) | (v17 << 7)));
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v28[2] = v18[2];
      v28[3] = v19;
      v28[0] = v21;
      v28[1] = v20;
      v22 = v18[7];
      v24 = v18[4];
      v23 = v18[5];
      v28[6] = v18[6];
      v28[7] = v22;
      v28[4] = v24;
      v28[5] = v23;
      memmove(v11, v18, 0x80uLL);
      if (v14 == v10)
      {
        sub_2587914E8(v28, v27);
        goto LABEL_24;
      }

      v11 += 128;
      sub_2587914E8(v28, v27);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_25886B388(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_25886B4DC()
{
  if (!qword_27F960678)
  {
    sub_25878E130(255, &unk_280C0DDF0, 0x277CBDA58);
    v0 = sub_2588BDF38();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960678);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t MedicalIDSpokenLanguagePickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = sub_2588BC7C8();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886C4F4(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v40 - v9;
  sub_25886BAF0();
  v44 = v11;
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v1;
  sub_25886BD64();
  v42 = v15;
  sub_25886BFB0();
  v41 = v16;
  sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v40 = v17;
  sub_25886C168();
  v19 = v18;
  sub_25886C2D4();
  v21 = v20;
  sub_25886C410();
  v23 = v22;
  sub_2587E20D0();
  v25 = v24;
  v26 = sub_25886C9D4(&qword_27F9608D8, sub_25886C410);
  sub_2587E2184();
  v28 = v27;
  v29 = sub_25886C9D4(&qword_27F95E460, sub_2587E2184);
  v51 = v28;
  v52 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v23;
  v52 = v25;
  v53 = v26;
  v54 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v51 = v21;
  v52 = v31;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_25878F648();
  v51 = v19;
  v52 = MEMORY[0x277D837D0];
  v53 = v32;
  v54 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_25886D00C(&qword_27F9608E0);
  v51 = v41;
  v52 = v40;
  v53 = v34;
  v54 = v35;
  swift_getOpaqueTypeConformance2();
  sub_2588BC1F8();
  v36 = v43 + *(type metadata accessor for MedicalIDSpokenLanguagePickerView() + 20);
  sub_2588BD538();
  swift_getKeyPath();
  sub_2588BD558();

  (*(v7 + 8))(v10, v6);
  v37 = v45;
  sub_2588BC7B8();
  sub_25886C9D4(&qword_27F9608E8, sub_25886BAF0);
  v38 = v44;
  sub_2588BCE38();

  (*(v48 + 8))(v37, v49);
  return (*(v46 + 8))(v14, v38);
}

void sub_25886BAF0()
{
  if (!qword_27F960820)
  {
    sub_2588BC138();
    sub_25886BD64();
    sub_25886BFB0();
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886C168();
    sub_25886C2D4();
    sub_25886C410();
    sub_2587E20D0();
    sub_25886C9D4(&qword_27F9608D8, sub_25886C410);
    sub_2587E2184();
    sub_25886C9D4(&qword_27F95E460, sub_2587E2184);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25878F648();
    swift_getOpaqueTypeConformance2();
    sub_25886D00C(&qword_27F9608E0);
    swift_getOpaqueTypeConformance2();
    v0 = sub_2588BC208();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960820);
    }
  }
}

void sub_25886BD64()
{
  if (!qword_27F960828)
  {
    sub_25886BFB0();
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886C168();
    sub_25886C2D4();
    sub_25886C410();
    sub_2587E20D0();
    sub_25886C9D4(&qword_27F9608D8, sub_25886C410);
    sub_2587E2184();
    sub_25886C9D4(&qword_27F95E460, sub_2587E2184);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25878F648();
    swift_getOpaqueTypeConformance2();
    sub_25886D00C(&qword_27F9608E0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960828);
    }
  }
}

void sub_25886BFB0()
{
  if (!qword_27F960830)
  {
    sub_25886C168();
    sub_25886C2D4();
    sub_25886C410();
    sub_2587E20D0();
    sub_25886C9D4(&qword_27F9608D8, sub_25886C410);
    sub_2587E2184();
    sub_25886C9D4(&qword_27F95E460, sub_2587E2184);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25878F648();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960830);
    }
  }
}

void sub_25886C168()
{
  if (!qword_27F960838)
  {
    sub_25886C2D4();
    sub_25886C410();
    sub_2587E20D0();
    sub_25886C9D4(&qword_27F9608D8, sub_25886C410);
    sub_2587E2184();
    sub_25886C9D4(&qword_27F95E460, sub_2587E2184);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960838);
    }
  }
}

void sub_25886C2D4()
{
  if (!qword_27F960840)
  {
    sub_25886C410();
    sub_2587E20D0();
    sub_25886C9D4(&qword_27F9608D8, sub_25886C410);
    sub_2587E2184();
    sub_25886C9D4(&qword_27F95E460, sub_2587E2184);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960840);
    }
  }
}

void sub_25886C410()
{
  if (!qword_27F960848)
  {
    sub_25886C4C0(255);
    sub_25886C9D4(&qword_27F9608D0, sub_25886C4C0);
    v0 = sub_2588BCD58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960848);
    }
  }
}

void sub_25886C4F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25886C558()
{
  if (!qword_27F960858)
  {
    sub_25886C4F4(255, &qword_27F960860, sub_25886C634, MEMORY[0x277D83D88]);
    sub_25886CA1C(255, &qword_27F960898, sub_25886CAE8, &qword_27F9608C8, sub_25886CAE8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F960858);
    }
  }
}

void sub_25886C670()
{
  if (!qword_27F960870)
  {
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886CD78(255, &qword_27F960878, sub_25886C788, MEMORY[0x277CDE470]);
    sub_25886D00C(&qword_27F95D460);
    sub_25886C868();
    v0 = sub_2588BD3B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960870);
    }
  }
}

void sub_25886C788()
{
  if (!qword_27F960880)
  {
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886D00C(&qword_27F95D460);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960880);
    }
  }
}

unint64_t sub_25886C868()
{
  result = qword_27F960888;
  if (!qword_27F960888)
  {
    sub_25886CD78(255, &qword_27F960878, sub_25886C788, MEMORY[0x277CDE470]);
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886D00C(&qword_27F95D460);
    swift_getOpaqueTypeConformance2();
    sub_25886C9D4(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960888);
  }

  return result;
}

uint64_t sub_25886C9D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25886CA1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2588BC5D8();
    sub_25886C9D4(a4, a5);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_25886CAE8()
{
  if (!qword_27F9608A0)
  {
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886CBD0();
    sub_25886D00C(&qword_27F95D460);
    sub_25886CEFC();
    v0 = sub_2588BD3B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9608A0);
    }
  }
}

void sub_25886CBD0()
{
  if (!qword_27F9608A8)
  {
    sub_25878E334(255, &qword_27F95EC50, &type metadata for MedicalIDSpokenLanguage, MEMORY[0x277D83940]);
    sub_25886CC8C();
    sub_25880AC14();
    v0 = sub_2588BD4D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9608A8);
    }
  }
}

void sub_25886CC8C()
{
  if (!qword_27F9608B0)
  {
    sub_2587A99C0(255);
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886CDEC();
    sub_25886D00C(&qword_27F95D460);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9608B0);
    }
  }
}

void sub_25886CD78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_25886CDEC()
{
  result = qword_27F9608B8;
  if (!qword_27F9608B8)
  {
    sub_2587A99C0(255);
    sub_2587A9ABC();
    sub_25886C9D4(&qword_27F95D440, sub_2587A9ABC);
    swift_getOpaqueTypeConformance2();
    sub_25886C9D4(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9608B8);
  }

  return result;
}

unint64_t sub_25886CEFC()
{
  result = qword_27F9608C0;
  if (!qword_27F9608C0)
  {
    sub_25886CBD0();
    sub_2587A99C0(255);
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886CDEC();
    sub_25886D00C(&qword_27F95D460);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9608C0);
  }

  return result;
}

uint64_t sub_25886D00C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25886D090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v67 = type metadata accessor for MedicalIDSpokenLanguagePickerView();
  v72 = *(v67 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x28223BE20](v67);
  v73 = v4;
  v74 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2588BC5E8();
  v5 = *(v64 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v64);
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886C410();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886C2D4();
  v15 = v14;
  v63 = *(v14 - 8);
  v16 = *(v63 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886C168();
  v68 = v19;
  v66 = *(v19 - 8);
  v20 = *(v66 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886BFB0();
  v71 = v23;
  v70 = *(v23 - 8);
  v24 = *(v70 + 64);
  MEMORY[0x28223BE20](v23);
  v69 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a1;
  sub_25886C4C0(0);
  sub_25886C9D4(&qword_27F9608D0, sub_25886C4C0);
  sub_2588BCD48();
  v75 = a1;
  v77 = a1;
  sub_2587E20D0();
  v27 = v26;
  v28 = sub_25886C9D4(&qword_27F9608D8, sub_25886C410);
  sub_2587E2184();
  v30 = v29;
  v31 = sub_25886C9D4(&qword_27F95E460, sub_2587E2184);
  v83 = v30;
  v84 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2588BD0B8();
  (*(v10 + 8))(v13, v9);
  v33 = v15;
  v34 = v62;
  v35 = v64;
  (*(v5 + 104))(v62, *MEMORY[0x277CDDDC0], v64);
  v83 = v9;
  v84 = v27;
  v85 = v28;
  v86 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  v65 = v22;
  sub_2588BD008();
  (*(v5 + 8))(v34, v35);
  (*(v63 + 8))(v18, v33);
  v37 = sub_2588BD858();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v39 = qword_27F95DA88;
  v40 = sub_2588BBAC8();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = v39;
  sub_2588BBAB8();
  v83 = sub_2588BD8B8();
  v84 = v43;
  v81 = v33;
  v82 = v36;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_25878F648();
  v46 = MEMORY[0x277D837D0];
  v47 = v69;
  v48 = v68;
  v49 = v65;
  sub_2588BCF38();

  (*(v66 + 8))(v49, v48);
  v50 = *(v67 + 20);
  sub_25886C4F4(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  v51 = v75;
  sub_2588BD528();
  v52 = v83;
  swift_getKeyPath();
  v83 = v52;
  sub_25886C9D4(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v53 = *(v52 + 24);
  v54 = *(v52 + 32);

  v79 = v53;
  v80 = v54;
  v55 = v51;
  v56 = v74;
  sub_2588700CC(v55, v74);
  v57 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v58 = swift_allocObject();
  sub_258870130(v56, v58 + v57);
  sub_25878E334(0, &qword_27F95D458, v46, MEMORY[0x277D83D88]);
  v83 = v48;
  v84 = v46;
  v85 = v44;
  v86 = v45;
  swift_getOpaqueTypeConformance2();
  sub_25886D00C(&qword_27F9608E0);
  v59 = v71;
  sub_2588BD118();

  return (*(v70 + 8))(v47, v59);
}

uint64_t type metadata accessor for MedicalIDSpokenLanguagePickerView()
{
  result = qword_27F9608F0;
  if (!qword_27F9608F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25886DA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  sub_25886CAE8();
  v96 = v3;
  v98 = *(v3 - 8);
  v4 = *(v98 + 64);
  MEMORY[0x28223BE20](v3);
  v95 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886CA1C(0, &qword_27F960898, sub_25886CAE8, &qword_27F9608C8, sub_25886CAE8);
  v102 = v6;
  v101 = *(v6 - 8);
  v7 = *(v101 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v100 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v99 = v87 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v97 = v87 - v13;
  MEMORY[0x28223BE20](v12);
  v110 = v87 - v14;
  v111 = sub_2588BC5D8();
  v104 = *(v111 - 8);
  v15 = *(v104 + 64);
  MEMORY[0x28223BE20](v111);
  v17 = v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886C4F4(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  v19 = v18;
  v112 = *(v18 - 8);
  v20 = *(v112 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v87 - v21;
  sub_25886C670();
  v91 = v23;
  v90 = *(v23 - 8);
  v24 = *(v90 + 64);
  MEMORY[0x28223BE20](v23);
  v89 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886C634(0);
  v92 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v88 = v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886C4F4(0, &qword_27F960860, sub_25886C634, MEMORY[0x277D83D88]);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v108 = v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = v87 - v34;
  v36 = *(type metadata accessor for MedicalIDSpokenLanguagePickerView() + 20);
  v37 = a1;
  sub_2588BD528();
  v38 = v116;
  swift_getKeyPath();
  v116 = v38;
  sub_25886C9D4(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v39 = *(v38 + 40);
  v40 = *(v38 + 48);

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v39 & 0xFFFFFFFFFFFFLL;
  }

  v109 = v37;
  v94 = v17;
  v93 = v19;
  v107 = v22;
  v106 = v36;
  if (v41)
  {
    v42 = 1;
    v43 = v92;
  }

  else
  {
    sub_2588BD538();
    swift_getKeyPath();
    sub_2588BD558();

    v44 = (*(v112 + 8))(v22, v19);
    v113 = v116;
    v114 = v117;
    v115 = v118;
    MEMORY[0x28223BE20](v44);
    sub_25878E334(0, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886CD78(0, &qword_27F960878, sub_25886C788, MEMORY[0x277CDE470]);
    sub_25886D00C(&qword_27F95D460);
    sub_25886C868();
    v45 = v89;
    sub_2588BD388();
    sub_2588BC5C8();
    sub_25886C9D4(&qword_27F960890, sub_25886C670);
    v46 = v88;
    v47 = v91;
    v48 = v111;
    sub_2588BCE88();
    (*(v104 + 8))(v17, v48);
    (*(v90 + 8))(v45, v47);
    v49 = v92;
    (*(v27 + 32))(v35, v46, v92);
    v42 = 0;
    v43 = v49;
  }

  v105 = v35;
  (*(v27 + 56))(v35, v42, 1, v43);
  v50 = sub_2588BD858();
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v92 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v52 = qword_27F95DA88;
  v90 = qword_27F95DA88;
  v53 = sub_2588BBAC8();
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v91 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v55 = v52;
  sub_2588BBAB8();
  v56 = v55;
  v119 = sub_2588BD8B8();
  v120 = v57;
  v58 = v107;
  v59 = v93;
  sub_2588BD538();
  swift_getKeyPath();
  sub_2588BD558();

  v60 = *(v112 + 8);
  v112 += 8;
  v89 = v60;
  v61 = (v60)(v58, v59);
  v113 = v116;
  v114 = v117;
  v115 = v118;
  MEMORY[0x28223BE20](v61);
  sub_25878E334(0, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v88 = v62;
  sub_25886CBD0();
  v87[4] = v63;
  v87[3] = sub_25886D00C(&qword_27F95D460);
  v87[2] = sub_25886CEFC();
  v87[1] = sub_25878F648();
  v64 = v95;
  sub_2588BD3A8();
  v65 = v94;
  sub_2588BC5C8();
  v87[0] = sub_25886C9D4(&qword_27F9608C8, sub_25886CAE8);
  v66 = v111;
  v67 = v96;
  sub_2588BCE88();
  v104 = *(v104 + 8);
  (v104)(v65, v66);
  v98 = *(v98 + 8);
  v68 = (v98)(v64, v67);
  MEMORY[0x28223BE20](v68);
  v69 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v69);
  sub_2588BBAB8();
  v119 = sub_2588BD8B8();
  v120 = v70;
  v71 = v107;
  sub_2588BD538();
  swift_getKeyPath();
  sub_2588BD558();

  v72 = (v89)(v71, v59);
  v113 = v116;
  v114 = v117;
  v115 = v118;
  MEMORY[0x28223BE20](v72);
  sub_2588BD3A8();
  sub_2588BC5C8();
  v73 = v97;
  v74 = v111;
  sub_2588BCE88();
  (v104)(v65, v74);
  (v98)(v64, v67);
  v75 = v108;
  sub_2587A27CC(v105, v108);
  v76 = v101;
  v77 = *(v101 + 16);
  v78 = v99;
  v79 = v110;
  v80 = v102;
  v77(v99, v110, v102);
  v81 = v100;
  v77(v100, v73, v80);
  v82 = v103;
  sub_2587A27CC(v75, v103);
  sub_25886C558();
  v84 = v83;
  v77((v82 + *(v83 + 48)), v78, v80);
  v77((v82 + *(v84 + 64)), v81, v80);
  v85 = *(v76 + 8);
  v85(v73, v80);
  v85(v79, v80);
  sub_2587A2860(v105);
  v85(v81, v80);
  v85(v78, v80);
  return sub_2587A2860(v108);
}

uint64_t sub_25886E9B0()
{
  sub_25886C788();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2588BD858();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v8 = qword_27F95DA88;
  v9 = sub_2588BBAC8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v8;
  sub_2588BBAB8();
  *&v21 = sub_2588BD8B8();
  *(&v21 + 1) = v12;
  sub_25878F648();
  v13 = MEMORY[0x277D837D0];
  *v5 = sub_2588BCDF8();
  *(v5 + 1) = v14;
  v5[16] = v15 & 1;
  *(v5 + 4) = 0;
  *(v5 + 5) = 0;
  *(v5 + 3) = v16;
  v5[48] = 1;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  sub_25886ECB8(&v21, 1701736270, 0xE400000000000000);
  sub_25878E334(255, &qword_27F95D458, v13, MEMORY[0x277D83D88]);
  v18 = v17;
  v19 = sub_25886D00C(&qword_27F95D460);
  *&v21 = MEMORY[0x277CE0BD8];
  *(&v21 + 1) = v18;
  *&v22 = MEMORY[0x277CE0BC8];
  *(&v22 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  sub_2588BCFB8();

  return (*(v2 + 8))(v5, v1);
}

void sub_25886ECB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v33 = a1[4];
  v34 = a1[3];
  v32 = a1[5];
  sub_25878E334(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2588BFF50;
  v10 = type metadata accessor for MedicalIDSpokenLanguagePickerView();
  v11 = (v3 + *(v10 + 24));
  v12 = v11[1];
  *(v9 + 32) = *v11;
  *(v9 + 40) = v12;
  *(v9 + 48) = a2;
  *(v9 + 56) = a3;

  if (v7)
  {

    v9 = sub_2587F0534(1, 3, 1, v9);
    *(v9 + 16) = 3;
    *(v9 + 64) = v6;
    *(v9 + 72) = v7;
  }

  v13 = *(v10 + 20);
  sub_25886C4F4(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  swift_getKeyPath();
  sub_25886C9D4(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v14 = *(v35.id._countAndFlagsBits + 32);
  if (!v14)
  {

    if (v7)
    {
      countAndFlagsBits = 0;
      goto LABEL_24;
    }

LABEL_19:
    sub_258870294(v6, 0);
    v7 = 0;
    goto LABEL_20;
  }

  v15 = *(v35.id._countAndFlagsBits + 24);
  v16 = *(v35.id._countAndFlagsBits + 32);

  v17._countAndFlagsBits = v15;
  v17._object = v14;
  MedicalIDSpokenLanguage.init(id:)(&v35, v17);

  countAndFlagsBits = v35.id._countAndFlagsBits;
  object = v35.id._object;
  v21 = v35.languageInCurrentLocale._countAndFlagsBits;
  v20 = v35.languageInCurrentLocale._object;
  v22 = v35.languageInLanguageLocale._countAndFlagsBits;
  if (!v7)
  {
    if (v35.id._object)
    {
      sub_258870294(v6, 0);
LABEL_25:
      sub_2588702E4(v6, v7);
      v26 = countAndFlagsBits;
      v27 = object;
LABEL_26:
      sub_2588702E4(v26, v27);
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v31 = v35.languageInLanguageLocale._object;
  if (!v35.id._object)
  {
LABEL_24:
    sub_258870294(v6, v7);
    sub_258870294(v6, v7);

    object = 0;
    goto LABEL_25;
  }

  if ((v6 != v35.id._countAndFlagsBits || v7 != v35.id._object) && (sub_2588BDF98() & 1) == 0 || (v8 != v21 || v34 != v20) && (sub_2588BDF98() & 1) == 0)
  {
    sub_258870294(v6, v7);
    sub_258870294(v6, v7);
    sub_2588702E4(countAndFlagsBits, object);

    v26 = v6;
    v27 = v7;
    goto LABEL_26;
  }

  if (v33 != v22 || v32 != v31)
  {
    v30 = sub_2588BDF98();
    sub_258870294(v6, v7);
    sub_258870294(v6, v7);
    sub_2588702E4(countAndFlagsBits, object);

    sub_2588702E4(v6, v7);
    if ((v30 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  sub_258870294(v6, v7);
  sub_258870294(v6, v7);
  sub_2588702E4(countAndFlagsBits, object);

LABEL_20:
  sub_2588702E4(v6, v7);
LABEL_21:
  v24 = *(v9 + 16);
  v23 = *(v9 + 24);
  if (v24 >= v23 >> 1)
  {
    v9 = sub_2587F0534((v23 > 1), v24 + 1, 1, v9);
  }

  *(v9 + 16) = v24 + 1;
  v25 = v9 + 16 * v24;
  *(v25 + 32) = 0x64657463656C6553;
  *(v25 + 40) = 0xE800000000000000;
LABEL_27:
  v28 = sub_2588BD9A8();
  v29 = HKUIJoinStringsForAutomationIdentifier();

  if (v29)
  {
    sub_2588BD8A8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25886F300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2587A99C0(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v16[0] = *a1;
  v9 = v16[0];
  v16[1] = v8;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  sub_25886F420(v16, 0xD00000000000001ALL, 0x80000002588C9D70, v7);
  sub_2587A28EC(v7, a2);
  sub_25886CD78(0, &qword_27F95D448, sub_2587A99C0, sub_2587A9C64);
  v14 = a2 + *(v13 + 36);
  *v14 = v9;
  *(v14 + 8) = v8;
  *(v14 + 16) = 1;
}

uint64_t sub_25886F420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a3;
  v28 = a2;
  v30 = a4;
  v5 = sub_2588BC978();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587A9A08();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v16;
  v17 = *(a1 + 32);
  v26 = *(a1 + 16);
  v27 = v35[0];
  v35[2] = v17;
  v18 = *(a1 + 32);
  v24 = *(a1 + 40);
  v25 = v18;
  v19 = sub_2588BC6F8();
  v31[0] = 1;
  sub_25886FE14(v35, v36);
  *&v34[55] = v37;
  *&v34[39] = v36[2];
  *&v34[23] = v36[1];
  *&v34[7] = v36[0];
  *&v33[17] = *&v34[16];
  *&v33[33] = *&v34[32];
  *&v33[49] = *&v34[48];
  v32 = v19;
  v33[0] = v31[0];
  *&v33[64] = *(&v37 + 1);
  *&v33[1] = *v34;
  sub_2588BC968();
  sub_2587A9ABC();
  v21 = v20;
  v22 = sub_25886C9D4(&qword_27F95D440, sub_2587A9ABC);
  sub_2588BCF88();
  (*(v6 + 8))(v9, v5);
  v38[2] = *&v33[16];
  v38[3] = *&v33[32];
  v38[4] = *&v33[48];
  v39 = *&v33[64];
  v38[0] = v32;
  v38[1] = *v33;
  sub_25887034C(v38);
  v32 = v27;
  *v33 = v26;
  *&v33[16] = v25;
  *&v33[24] = v24;
  sub_25880B8CC(v35, v31);
  sub_25886ECB8(&v32, v28, v29);
  sub_2588702E4(v32, *(&v32 + 1));
  *&v32 = v21;
  *(&v32 + 1) = v22;
  swift_getOpaqueTypeConformance2();
  sub_2588BCFB8();

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_25886F734(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for MedicalIDSpokenLanguagePickerView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(MEMORY[0x28223BE20](v4 - 8) + 28);
  sub_25886C4F4(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  v8 = sub_2588BD528();
  v9 = a2(v8);

  v19[5] = v9;
  sub_2588700CC(a1, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_258870130(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_25878E334(0, &qword_27F95EC50, &type metadata for MedicalIDSpokenLanguage, MEMORY[0x277D83940]);
  sub_25886CC8C();
  sub_25880AC14();
  sub_2587A99C0(255);
  v13 = v12;
  sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = sub_25886CDEC();
  v17 = sub_25886D00C(&qword_27F95D460);
  v19[1] = v13;
  v19[2] = v15;
  v19[3] = v16;
  v19[4] = v17;
  swift_getOpaqueTypeConformance2();
  sub_25880B84C();
  return sub_2588BD4C8();
}

uint64_t sub_25886F9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2587A99C0(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v16[0] = *a1;
  v9 = v16[0];
  v16[1] = v8;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  sub_25886F420(v16, 0xD000000000000012, 0x80000002588CAB30, v7);
  sub_2587A28EC(v7, a2);
  sub_25886CD78(0, &qword_27F95D448, sub_2587A99C0, sub_2587A9C64);
  v14 = a2 + *(v13 + 36);
  *v14 = v9;
  *(v14 + 8) = v8;
  *(v14 + 16) = 1;
}

uint64_t sub_25886FACC(uint64_t a1)
{
  v2 = sub_2588BC828();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2587E2184();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2588BC7F8();
  v13 = a1;
  sub_2588BD748();
  sub_25886C9D4(&qword_27F95E458, MEMORY[0x277D126A0]);
  sub_2588BBF88();
  v10 = sub_25886C9D4(&qword_27F95E460, sub_2587E2184);
  MEMORY[0x259C8B9F0](v9, v5, v10);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25886FC9C(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDSpokenLanguagePickerView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588700CC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_258870130(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_2588BD718();
}

uint64_t sub_25886FDA0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  sub_25878E334(0, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  return sub_2588BD438();
}

uint64_t sub_25886FE14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1[4];
  v26 = a1[5];
  sub_25878F648();

  v22 = sub_2588BCDF8();
  v23 = v4;
  v6 = v5;
  v21 = v7;
  v25 = a1[2];
  v27 = a1[3];

  v8 = sub_2588BCDF8();
  v10 = v9;
  v12 = v11;
  sub_2588BC8D8();
  v13 = sub_2588BCD98();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_2587B1CF8(v8, v10, v12 & 1);

  *a2 = v22;
  *(a2 + 8) = v6;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17 & 1;
  *(a2 + 56) = v19;
  sub_2587A99B0(v22, v6, v21 & 1);

  sub_2587A99B0(v13, v15, v17 & 1);

  sub_2587B1CF8(v13, v15, v17 & 1);

  sub_2587B1CF8(v22, v6, v21 & 1);
}

void sub_25886FFDC()
{
  sub_25878E334(319, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_25886C4F4(319, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2588700CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDSpokenLanguagePickerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258870130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDSpokenLanguagePickerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258870294(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2588702E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25887034C(uint64_t a1)
{
  sub_2587A9ABC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_25()
{
  v1 = (type metadata accessor for MedicalIDSpokenLanguagePickerView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = *(v3 + 1);

  v6 = v1[7];
  sub_25886C4F4(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  (*(*(v7 - 8) + 8))(&v3[v6], v7);
  v8 = *&v3[v1[8] + 8];

  return swift_deallocObject();
}

uint64_t sub_2588704F8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MedicalIDSpokenLanguagePickerView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_258870590@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_2588BD858();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (v3)
  {
    sub_2588BD7E8();
    if (qword_27F95D000 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v6 = qword_27F95DA88;
  v7 = sub_2588BBAC8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v6;
  sub_2588BBAB8();
  v10 = v9;
  v11 = sub_2588BD8B8();
  v20 = v12;
  v21 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v13);
  sub_2588BBAB8();
  v14 = sub_2588BD8B8();
  v16 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v17);
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  *a1 = v21;
  a1[1] = v20;
  a1[2] = v14;
  a1[3] = v16;
  a1[4] = result;
  a1[5] = v19;
  return result;
}

__n128 sub_258870A40@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v24 = a1[1];
  v25 = v4;
  v5 = a1[2];
  v20 = *(a1 + 15);
  v21 = *(a1 + 17);
  v22 = *(a1 + 19);
  v16 = *(a1 + 7);
  v17 = *(a1 + 9);
  v18 = *(a1 + 11);
  v19 = *(a1 + 13);
  v14 = *(a1 + 3);
  v15 = *(a1 + 5);
  sub_2588721C0(&v25, v23, &unk_27F9609A8, &qword_280C0DE00, 0x277CCDDA0, sub_258872234);
  sub_25887228C(&v24, v23);
  sub_258871FD8(0, &unk_27F960980, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact);
  v6 = v5;
  sub_2588BD458();
  v32 = v23[6];
  v33 = v23[7];
  v34 = v23[8];
  v28 = v23[2];
  v29 = v23[3];
  v30 = v23[4];
  v31 = v23[5];
  v26 = v23[0];
  v27 = v23[1];
  v12 = *(a1 + 21);
  v13 = *(a1 + 184);
  sub_258871FD8(0, &qword_27F960990, &qword_27F960998, &type metadata for EmergencyContactPickerError);
  sub_2588BD458();
  v7 = v24;
  *a2 = v25;
  *(a2 + 8) = v7;
  v8 = v33;
  *(a2 + 112) = v32;
  *(a2 + 128) = v8;
  *(a2 + 144) = v34;
  v9 = v29;
  *(a2 + 48) = v28;
  *(a2 + 64) = v9;
  v10 = v31;
  *(a2 + 80) = v30;
  *(a2 + 96) = v10;
  result = v27;
  *(a2 + 16) = v26;
  *(a2 + 32) = result;
  *(a2 + 160) = v14;
  *(a2 + 176) = v15;
  *(a2 + 184) = v6;
  return result;
}

uint64_t sub_258870BE8()
{
  v10 = v0[8];
  v11 = v0[9];
  *v12 = v0[10];
  *&v12[9] = *(v0 + 169);
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_25887216C();
  return sub_2588BC1F8();
}

id sub_258870C80()
{
  v2 = *v0;
  v1 = v0[1];
  v22 = *(v0 + 9);
  v23 = *(v0 + 10);
  v24 = *(v0 + 11);
  v18 = *(v0 + 5);
  v19 = *(v0 + 6);
  v20 = *(v0 + 7);
  v21 = *(v0 + 8);
  v14 = *(v0 + 1);
  v15 = *(v0 + 2);
  v16 = *(v0 + 3);
  v17 = *(v0 + 4);
  v3 = [objc_allocWithZone(MEMORY[0x277CBDC18]) init];
  sub_258872694();
  sub_2588BCB38();
  [v3 setDelegate_];

  [v3 setMode_];
  sub_25878E47C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2588C00B0;
  v5 = *MEMORY[0x277CBD098];
  *(v4 + 32) = sub_2588BD8A8();
  *(v4 + 40) = v6;
  v7 = sub_2588BD9A8();

  [v3 setDisplayedPropertyKeys_];

  [v3 setOnlyRealContacts_];
  v8 = sub_258870F74();
  [v3 setPredicateForEnablingContact_];

  if (v1)
  {
    if (v1 >> 62)
    {
      if (sub_2588BDD68() < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      [v3 setShouldDisplaySuggestionsController_];
      sub_25878E130(0, &unk_280C0DDF0, 0x277CBDA58);
      v9 = sub_2588BD9A8();
      [v3 setContactSuggestions_];
    }
  }

LABEL_5:
  sub_25878E130(0, &qword_27F9609D8, 0x277CCAC30);
  v10 = sub_2588BDB98();
  [v3 setPredicateForSelectionOfContact_];

  v11 = sub_2588BDB98();
  [v3 setPredicateForSelectionOfProperty_];

  return v3;
}

id sub_258870F74()
{
  v1 = *v0;
  v2 = v67;
  v3 = &v56;
  v4 = *(v0 + 15);
  v5 = *(v0 + 19);
  v67[8] = *(v0 + 17);
  v67[9] = v5;
  v67[10] = *(v0 + 21);
  v6 = *(v0 + 7);
  v7 = *(v0 + 11);
  v67[4] = *(v0 + 9);
  v67[5] = v7;
  v67[6] = *(v0 + 13);
  v67[7] = v4;
  v8 = *(v0 + 3);
  v67[0] = *(v0 + 1);
  v67[1] = v8;
  v67[2] = *(v0 + 5);
  v67[3] = v6;
  v9 = v0[23];
  v66 = MEMORY[0x277D84F90];
  sub_25878E130(0, &qword_27F9609D8, 0x277CCAC30);
  sub_2588726F0();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2588C00B0;
  v11 = *MEMORY[0x277CBD098];
  v12 = sub_2588BD8A8();
  v14 = v13;
  v15 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v55 = sub_2587C4D8C();
  *(v10 + 64) = v55;
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  sub_2588BDB98();
  MEMORY[0x259C8CB10]();
  if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_36:
    sub_2588BD9C8();
  }

  sub_2588BD9F8();
  v16 = v2[7];
  v63 = v2[6];
  v64 = v16;
  v17 = v2[9];
  *(v3 + 17) = v2[8];
  *(v3 + 19) = v17;
  *(v3 + 21) = v2[10];
  v18 = v2[2];
  v19 = v2[4];
  v20 = v2[5];
  v60 = v2[3];
  v61 = v19;
  v62 = v20;
  v21 = v2[1];
  v57 = *v2;
  v58 = v21;
  v56 = v1;
  v59 = v18;
  v65 = v9;
  v22 = sub_258871514();
  if (v23)
  {
    v24 = v22;
    v25 = v23;
    v26 = [v9 profileIdentifier];
    v27 = [v26 type];

    if (v27 == 3)
    {
    }

    else
    {
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_2588BFF50;
      v29 = *MEMORY[0x277CBD018];
      v30 = sub_2588BD8A8();
      *(v28 + 56) = v15;
      *(v28 + 64) = v55;
      *(v28 + 32) = v30;
      *(v28 + 40) = v31;
      *(v28 + 96) = v15;
      *(v28 + 104) = v55;
      *(v28 + 72) = v24;
      *(v28 + 80) = v25;
      sub_2588BDB98();
      MEMORY[0x259C8CB10]();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2588BD9C8();
      }

      sub_2588BD9F8();
    }
  }

  v2 = (v1 & 0xFFFFFFFFFFFFFF8);
  if (v1 >> 62)
  {
    v9 = sub_2588BDD68();
  }

  else
  {
    v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v15 = 0;
    v32 = MEMORY[0x277D84F90];
    v3 = &off_2798A7000;
    do
    {
      v33 = v15;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x259C8CF80](v33, v1);
        }

        else
        {
          if (v33 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v34 = *(v1 + 8 * v33 + 32);
        }

        v35 = v34;
        v15 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v36 = [v34 nameContactIdentifier];
        if (v36)
        {
          break;
        }

        ++v33;
        if (v15 == v9)
        {
          goto LABEL_28;
        }
      }

      v37 = v36;
      v38 = sub_2588BD8A8();
      v54 = v39;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_2587F0534(0, *(v32 + 2) + 1, 1, v32);
      }

      v41 = *(v32 + 2);
      v40 = *(v32 + 3);
      if (v41 >= v40 >> 1)
      {
        v32 = sub_2587F0534((v40 > 1), v41 + 1, 1, v32);
      }

      *(v32 + 2) = v41 + 1;
      v42 = &v32[16 * v41];
      *(v42 + 4) = v38;
      *(v42 + 5) = v54;
    }

    while (v15 != v9);
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

LABEL_28:
  if (*(v32 + 2))
  {
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2588BFF50;
    v44 = *MEMORY[0x277CBD018];
    v45 = sub_2588BD8A8();
    v46 = MEMORY[0x277D837D0];
    *(v43 + 56) = MEMORY[0x277D837D0];
    *(v43 + 64) = v55;
    *(v43 + 32) = v45;
    *(v43 + 40) = v47;
    sub_25878E47C(0, &qword_280C0DE60, v46, MEMORY[0x277D83940]);
    *(v43 + 96) = v48;
    *(v43 + 104) = sub_258872748();
    *(v43 + 72) = v32;
    sub_2588BDB98();
    MEMORY[0x259C8CB10]();
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v52 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2588BD9C8();
    }

    sub_2588BD9F8();
  }

  else
  {
  }

  v49 = sub_2588BD9A8();

  v50 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v50;
}

uint64_t sub_258871514()
{
  v27[1] = *MEMORY[0x277D85DE8];
  if ([objc_opt_self() authorizationStatusForEntityType_] != 3)
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v11 = sub_2588BBC98();
    __swift_project_value_buffer(v11, qword_27F969938);
    v12 = sub_2588BBC78();
    v13 = sub_2588BDBD8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25878B000, v12, v13, "Medical ID is not authorized for the contact store, cannot fetch me card", v14, 2u);
      MEMORY[0x259C8DBE0](v14, -1, -1);
    }

    goto LABEL_9;
  }

  v0 = [objc_allocWithZone(MEMORY[0x277CBDAC0]) init];
  [v0 setIncludeSharedPhotoContacts_];
  v1 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) initWithConfiguration_];
  sub_25878E47C(0, &qword_280C0DDB8, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2588C6780;
  v3 = *MEMORY[0x277CBD018];
  *(v2 + 32) = *MEMORY[0x277CBD018];
  sub_25878FA5C();
  v4 = v3;
  v5 = sub_2588BD9A8();

  v27[0] = 0;
  v6 = [v1 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  if (!v6)
  {
    v16 = v27[0];
    v17 = sub_2588BB878();

    swift_willThrow();
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v18 = sub_2588BBC98();
    __swift_project_value_buffer(v18, qword_27F969938);
    v19 = v17;
    v20 = sub_2588BBC78();
    v21 = sub_2588BDBD8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = sub_2588BDFD8();
      v26 = sub_258790224(v24, v25, v27);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_25878B000, v20, v21, "Error fetching me contact: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x259C8DBE0](v23, -1, -1);
      MEMORY[0x259C8DBE0](v22, -1, -1);
    }

    else
    {
    }

LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  v7 = v27[0];
  v8 = [v6 identifier];
  v9 = sub_2588BD8A8();

  result = v9;
LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_258871928()
{
  v1 = *(v0 + 128);
  v39 = *(v0 + 112);
  v40 = v1;
  v41 = *(v0 + 144);
  v2 = *(v0 + 64);
  v35 = *(v0 + 48);
  v36 = v2;
  v3 = *(v0 + 96);
  v37 = *(v0 + 80);
  v38 = v3;
  v4 = *(v0 + 32);
  v33 = *(v0 + 16);
  v34 = v4;
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  sub_258871FD8(0, &unk_27F960980, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact);
  sub_2588BD458();
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v35 = v26;
  v36 = v27;
  v37 = v28;
  v38 = v29;
  v33 = v24;
  v34 = v25;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  sub_258871FD8(0, &qword_27F960990, &qword_27F960998, &type metadata for EmergencyContactPickerError);
  sub_2588BD458();
  v8 = v21;
  v9 = v22;
  v10 = v23;
  v11 = type metadata accessor for EmergencyContactPicker.ContactPickerCoordinator();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact];
  *(v13 + 5) = v29;
  *(v13 + 6) = v39;
  *(v13 + 7) = v40;
  *(v13 + 8) = v41;
  *(v13 + 1) = v34;
  *(v13 + 2) = v35;
  *(v13 + 3) = v36;
  *(v13 + 4) = v37;
  *v13 = v33;
  v14 = &v12[OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__error];
  *v14 = v8;
  *(v14 + 1) = v9;
  v14[16] = v10;
  v15 = [objc_allocWithZone(MEMORY[0x277CCD230]) init];
  *&v12[OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator_coreTelephonyClient] = v15;
  v17.receiver = v12;
  v17.super_class = v11;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_258871BB8(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() emergencyContactWithContact:a1 property:a2];
  v5 = [v4 phoneNumber];
  if (v5 && (v6 = v5, v7 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator_coreTelephonyClient), v8 = [v7 isEmergencyServicePhoneNumber_], v7, v6, v8))
  {
    v9 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__error + 8);
    v10 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__error + 16);
    *&v40 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__error);
    *(&v40 + 1) = v9;
    LOBYTE(v41) = v10;
    LOBYTE(v32[0]) = 1;
    sub_258871FD8(0, &qword_27F960990, &qword_27F960998, &type metadata for EmergencyContactPickerError);

    sub_2588BD438();
  }

  else
  {
    v12 = v4;
    v13 = a1;
    MedicalIDEmergencyContact.init(hkEmergencyContact:contact:)(v12, a1, &v31);
    nullsub_1(&v31);
    v14 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 80);
    v15 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 112);
    v37 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 96);
    v38 = v15;
    v16 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 112);
    v39 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 128);
    v17 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 16);
    v18 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 48);
    v33 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 32);
    v34 = v18;
    v19 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 48);
    v20 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 80);
    v35 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 64);
    v36 = v20;
    v21 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 16);
    v32[0] = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact);
    v32[1] = v21;
    v28 = v37;
    v29 = v16;
    v30 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 128);
    v24 = v33;
    v25 = v19;
    v26 = v35;
    v27 = v14;
    v22 = v32[0];
    v23 = v17;
    sub_2588721C0(v32, &v40, &unk_27F960980, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, sub_258871FD8);
    sub_258871FD8(0, &unk_27F960980, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact);
    sub_2588BD438();

    v46 = v28;
    v47 = v29;
    v48 = v30;
    v42 = v24;
    v43 = v25;
    v44 = v26;
    v45 = v27;
    v40 = v22;
    v41 = v23;
    return sub_258871F64(&v40);
  }
}

id sub_258871E64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmergencyContactPicker.ContactPickerCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_11MedicalIDUI0A18IDEmergencyContactVSg(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_258871F64(uint64_t a1)
{
  sub_258871FD8(0, &unk_27F960980, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258871FD8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_25878E47C(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_2588BD488();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_258872080(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
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

uint64_t sub_2588720C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25887216C()
{
  result = qword_27F9609A0;
  if (!qword_27F9609A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9609A0);
  }

  return result;
}

uint64_t sub_2588721C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_258872234(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_25878E130(255, a3, a4);
    v5 = sub_2588BDA08();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25887228C(uint64_t a1, uint64_t a2)
{
  sub_2588722F0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2588722F0()
{
  if (!qword_280C0DE38)
  {
    sub_258872234(255, &qword_280C0DE40, &unk_280C0DDF0, 0x277CBDA58);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0DE38);
    }
  }
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_258872394(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_2588723DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25887245C()
{
  result = qword_27F9609B0;
  if (!qword_27F9609B0)
  {
    sub_2588724B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9609B0);
  }

  return result;
}

void sub_2588724B4()
{
  if (!qword_27F9609B8)
  {
    sub_2588BC138();
    sub_25887216C();
    v0 = sub_2588BC208();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9609B8);
    }
  }
}

id sub_258872528@<X0>(void *a1@<X8>)
{
  result = sub_258871928();
  *a1 = result;
  return result;
}

uint64_t sub_258872550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258872640();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2588725B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258872640();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_258872618()
{
  sub_258872640();
  sub_2588BCA58();
  __break(1u);
}

unint64_t sub_258872640()
{
  result = qword_27F9609C0;
  if (!qword_27F9609C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9609C0);
  }

  return result;
}

void sub_258872694()
{
  if (!qword_27F9609C8)
  {
    sub_258872640();
    v0 = sub_2588BCB48();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9609C8);
    }
  }
}

void sub_2588726F0()
{
  if (!qword_27F9609E0)
  {
    sub_2587C4D28();
    v0 = sub_2588BDF88();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9609E0);
    }
  }
}

unint64_t sub_258872748()
{
  result = qword_27F960A00;
  if (!qword_27F960A00)
  {
    sub_25878E47C(255, &qword_280C0DE60, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960A00);
  }

  return result;
}

uint64_t sub_2588727E4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v13[2] = v1[2];
  v13[3] = v3;
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[1];
  v13[0] = *v1;
  v13[1] = v5;
  v12[3] = &type metadata for ConditionsConfiguration;
  v12[4] = &off_2869C1840;
  v6 = swift_allocObject();
  v12[0] = v6;
  v7 = v1[3];
  v6[3] = v1[2];
  v6[4] = v7;
  v8 = v1[5];
  v6[5] = v1[4];
  v6[6] = v8;
  v9 = v1[1];
  v6[1] = *v1;
  v6[2] = v9;
  sub_25887289C(v13, v11);
  return sub_25884E278(v12, sub_258802DC0, 0, a1);
}

double sub_258872924@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v22 = v1[3];
  v23 = *(v1 + 8);
  v4 = *v1;
  v20 = v1[1];
  v21 = v3;
  v19 = v4;
  v24 = v4;
  v5 = v3;
  if (!v20)
  {
    sub_2587FB4AC(&v24, v17);
    v10 = sub_2588BD9A8();
    v7 = HKUIJoinStringsForAutomationIdentifier();

    if (!v7)
    {
      v8 = 0xEB00000000736E6FLL;
      v9 = 0x697461636964654DLL;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v20 != 1)
  {
    sub_2587FB4AC(&v24, v17);
    v11 = sub_2588BD9A8();
    v7 = HKUIJoinStringsForAutomationIdentifier();

    if (!v7)
    {
      v8 = 0x80000002588C8AB0;
      v9 = 0xD000000000000011;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_2587FB4AC(&v24, v17);
  v6 = sub_2588BD9A8();
  v7 = HKUIJoinStringsForAutomationIdentifier();

  if (v7)
  {
LABEL_8:
    v9 = sub_2588BD8A8();
    v8 = v12;

    goto LABEL_9;
  }

  v8 = 0xE900000000000073;
  v9 = 0x65696772656C6C41;
LABEL_9:
  v13 = swift_allocObject();
  v14 = v20;
  v15 = v22;
  *(v13 + 48) = v21;
  *(v13 + 64) = v15;
  *(v13 + 80) = v23;
  *(v13 + 16) = v19;
  *(v13 + 32) = v14;
  v18 = v24;
  sub_258872F38(&v19, v17);
  result = *&v18;
  *a1 = v18;
  *(a1 + 16) = v5 != 0;
  *(a1 + 17) = 2;
  *(a1 + 24) = sub_258872F10;
  *(a1 + 32) = v13;
  *(a1 + 40) = v9;
  *(a1 + 48) = v8;
  return result;
}

double sub_258872B28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (*(a1 + 32))
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);

    if (v3)
    {
      if (v3 == 1)
      {
        v6 = sub_2588BD9A8();
        v7 = HKUIJoinStringsForAutomationIdentifier();

        if (!v7)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v12 = sub_2588BD9A8();
        v7 = HKUIJoinStringsForAutomationIdentifier();

        if (!v7)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v11 = sub_2588BD9A8();
      v7 = HKUIJoinStringsForAutomationIdentifier();

      if (!v7)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);

    if (v3)
    {
      if (v3 == 1)
      {
        v10 = sub_2588BD9A8();
        v7 = HKUIJoinStringsForAutomationIdentifier();

        if (!v7)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v14 = sub_2588BD9A8();
        v7 = HKUIJoinStringsForAutomationIdentifier();

        if (!v7)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v13 = sub_2588BD9A8();
      v7 = HKUIJoinStringsForAutomationIdentifier();

      if (!v7)
      {
        goto LABEL_18;
      }
    }
  }

  sub_2588BD8A8();

LABEL_18:
  sub_258872EBC();
  sub_2587E836C();
  sub_2588BC778();
  result = *&v16;
  *a2 = v16;
  *(a2 + 16) = v17;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  return result;
}

double sub_258872E04@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 48);
  v17[2] = *(v1 + 32);
  v17[3] = v4;
  v5 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v5;
  v10 = *(v1 + 48);
  v18 = *(v1 + 64);
  v11 = *(v1 + 64);
  sub_258872924(v12);
  *(&v14 + 1) = 0x4018000000000000;
  LOBYTE(v15[0]) = 1;
  sub_258872B28(v17, v15 + 8);
  v6 = v15[1];
  a1[4] = v15[0];
  a1[5] = v6;
  a1[6] = v16[0];
  *(a1 + 105) = *(v16 + 9);
  v7 = v12[1];
  *a1 = v12[0];
  a1[1] = v7;
  result = *&v13;
  v9 = v14;
  a1[2] = v13;
  a1[3] = v9;
  return result;
}

unint64_t sub_258872EBC()
{
  result = qword_27F960A08;
  if (!qword_27F960A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960A08);
  }

  return result;
}

uint64_t sub_258872F10()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  return v1();
}

unint64_t sub_258872F80()
{
  result = qword_27F960A10;
  if (!qword_27F960A10)
  {
    sub_258872FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960A10);
  }

  return result;
}

void sub_258872FD8()
{
  if (!qword_27F960A18)
  {
    sub_25887303C();
    sub_258873094();
    v0 = type metadata accessor for MedicalIDCellView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960A18);
    }
  }
}

void sub_25887303C()
{
  if (!qword_27F960A20)
  {
    v0 = sub_2588BC788();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960A20);
    }
  }
}

unint64_t sub_258873094()
{
  result = qword_27F960A28;
  if (!qword_27F960A28)
  {
    sub_25887303C();
    sub_258872EBC();
    sub_2587E836C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960A28);
  }

  return result;
}

uint64_t type metadata accessor for MedicalIDCellHeaderView()
{
  result = qword_27F960A30;
  if (!qword_27F960A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588731A0()
{
  sub_258874404(319, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2587BC234();
    if (v1 <= 0x3F)
    {
      sub_258873294();
      if (v2 <= 0x3F)
      {
        sub_25887333C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_258873294()
{
  if (!qword_27F960A40)
  {
    sub_25878E130(255, &qword_27F95D360, 0x277CCD4D8);
    sub_2587DC150(&qword_27F95E2B0, &qword_27F95D360, 0x277CCD4D8);
    v0 = sub_2588BC368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960A40);
    }
  }
}

void sub_25887333C()
{
  if (!qword_27F960A48)
  {
    sub_25878E130(255, &qword_27F95D378, 0x277CCD7D0);
    sub_2587DC150(&qword_27F95E2B8, &qword_27F95D378, 0x277CCD7D0);
    v0 = sub_2588BC368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960A48);
    }
  }
}

uint64_t sub_258873400@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDFA28];
  v9 = MEMORY[0x277CDF458];
  sub_258874404(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for MedicalIDCellHeaderView();
  sub_258874AF8(v1 + *(v14 + 20), v13, &qword_27F95E160, v8, v9, sub_258874404);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_2588BC1C8();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_2588BDBE8();
    v18 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_258873648@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  sub_258874350();
  v45 = v1;
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258874584(0, &qword_27F960A88, MEMORY[0x277CE0330]);
  v42[1] = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v43 = v42 - v7;
  sub_258874504();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v42 - v13;
  sub_2588745F4();
  v42[2] = v15;
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2588BC1C8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258873400(v23);
  v24 = sub_2588BC1A8();
  (*(v20 + 8))(v23, v19);
  if (v24)
  {
    *v18 = sub_2588BC6F8();
    *(v18 + 1) = 0;
    v18[16] = 1;
    sub_258874880();
    v26 = &v18[*(v25 + 44)];
    sub_258873BF8();
    sub_258873DA0(v56);
    sub_258874918(v14, v12, sub_258874504);
    v52 = v56[6];
    v53 = v56[7];
    v54 = v56[8];
    v55 = v57;
    v48 = v56[2];
    v49 = v56[3];
    v50 = v56[4];
    v51 = v56[5];
    v46 = v56[0];
    v47 = v56[1];
    sub_258874918(v12, v26, sub_258874504);
    sub_2588746A8();
    v28 = *(v27 + 48);
    v29 = v53;
    v58[6] = v52;
    v58[7] = v53;
    v30 = v54;
    v58[8] = v54;
    v31 = v50;
    v32 = v51;
    v58[4] = v50;
    v58[5] = v51;
    v33 = v48;
    v34 = v49;
    v58[2] = v48;
    v58[3] = v49;
    v35 = v46;
    v36 = v47;
    v58[0] = v46;
    v58[1] = v47;
    v37 = v26 + v28;
    *(v37 + 96) = v52;
    *(v37 + 112) = v29;
    *(v37 + 128) = v30;
    *(v37 + 32) = v33;
    *(v37 + 48) = v34;
    *(v37 + 64) = v31;
    *(v37 + 80) = v32;
    v59 = v55;
    *(v37 + 144) = v55;
    *v37 = v35;
    *(v37 + 16) = v36;
    sub_258874AF8(v58, v60, &qword_27F960A78, &type metadata for MedicalIDHeaderAccessoryButton, MEMORY[0x277D83D88], sub_2587B19E0);
    sub_258874980(v14, sub_258874504);
    v60[6] = v52;
    v60[7] = v53;
    v60[8] = v54;
    v61 = v55;
    v60[2] = v48;
    v60[3] = v49;
    v60[4] = v50;
    v60[5] = v51;
    v60[0] = v46;
    v60[1] = v47;
    sub_2588749E0(v60);
    sub_258874980(v12, sub_258874504);
    v38 = sub_2588745F4;
    sub_258874918(v18, v43, sub_2588745F4);
    swift_storeEnumTagMultiPayload();
    sub_258874838(&qword_27F960AB8, sub_2588745F4);
    sub_258874838(&qword_27F960AC0, sub_258874350);
    sub_2588BC778();
    v39 = v18;
  }

  else
  {
    *v4 = sub_2588BC5F8();
    *(v4 + 1) = 0;
    v4[16] = 1;
    sub_2588747A0();
    sub_258874110(&v4[*(v40 + 44)]);
    v38 = sub_258874350;
    sub_258874918(v4, v43, sub_258874350);
    swift_storeEnumTagMultiPayload();
    sub_258874838(&qword_27F960AB8, sub_2588745F4);
    sub_258874838(&qword_27F960AC0, sub_258874350);
    sub_2588BC778();
    v39 = v4;
  }

  return sub_258874980(v39, v38);
}

void sub_258873BF8()
{
  v11 = *v0;
  v12 = v0[1];
  sub_25878F648();

  v1 = MEMORY[0x277D837D0];
  v2 = sub_2588BCDF8();
  v4 = v3;
  v6 = v5 & 1;
  sub_2587B19E0(0, &qword_280C0DDD0, v1, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2588BFF50;
  v8 = v0[6];
  *(v7 + 32) = v0[5];
  *(v7 + 40) = v8;
  *(v7 + 48) = 0x726564616548;
  *(v7 + 56) = 0xE600000000000000;

  v9 = sub_2588BD9A8();

  v10 = HKUIJoinStringsForAutomationIdentifier();

  if (v10)
  {
    sub_2588BD8A8();

    sub_258875348(0, &qword_27F960A70);
    sub_258874A60();
    sub_2588BCFB8();

    sub_2587B1CF8(v2, v4, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_258873DA0(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for MedicalIDCellHeaderView();
  v5 = v1 + v4[6];
  if (!*v5)
  {
    v19 = *(v5 + 8);
    v20 = &qword_27F95D3C0;
    v21 = off_2798A65E8;
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    v22 = &qword_27F95DAE8;
LABEL_10:
    sub_2587DC150(v22, v20, v21);
    sub_2588BC348();
    __break(1u);
    goto LABEL_11;
  }

  if (([*v5 isEditingAvailable] & 1) == 0)
  {
    sub_25880CB1C(&v46);
    goto LABEL_7;
  }

  v45 = *(v1 + 6);
  v6 = v1[2];
  v44[1] = v1[1];
  v44[2] = v6;
  v44[0] = *v1;
  v7 = v1 + v4[7];
  v2 = *v7;
  if (!*v7)
  {
    v23 = *(v7 + 8);
    sub_2587EB238(v44, &v46);
    v20 = &qword_27F95D360;
    v21 = 0x277CCD4D8;
    sub_25878E130(0, &qword_27F95D360, 0x277CCD4D8);
    v22 = &qword_27F95E2B0;
    goto LABEL_10;
  }

  v8 = v1 + v4[8];
  v9 = *v8;
  if (*v8)
  {
    v10 = v1[1];
    v40 = *v1;
    v41 = v10;
    v42 = v1[2];
    *v43 = *(v1 + 6);
    *&v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    sub_2587EB238(v44, &v30);
    sub_2587B19E0(0, &qword_27F95DC40, &type metadata for BasicAlertModel, MEMORY[0x277D83D88]);
    v11 = v2;
    v12 = v9;
    sub_2588BD2B8();
    *&v43[8] = v26;
    *&v43[24] = v27;
    *&v43[40] = v28;
    *&v43[56] = v29;
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587DC150(&qword_27F95DAE8, &qword_27F95D3C0, off_2798A65E8);
    v13 = sub_2588BC358();
    v34 = *&v43[16];
    v35 = *&v43[32];
    v36 = *&v43[48];
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v33 = *v43;
    *&v37 = *&v43[64];
    *(&v37 + 1) = v11;
    *&v38 = v12;
    *(&v38 + 1) = v13;
    v39 = v14;
    nullsub_1(&v30);
    v52 = v36;
    v53 = v37;
    v54 = v38;
    v55 = v39;
    v48 = v32;
    v49 = v33;
    v50 = v34;
    v51 = v35;
    v46 = v30;
    v47 = v31;
LABEL_7:
    v15 = v53;
    *(a1 + 96) = v52;
    *(a1 + 112) = v15;
    *(a1 + 128) = v54;
    *(a1 + 144) = v55;
    v16 = v49;
    *(a1 + 32) = v48;
    *(a1 + 48) = v16;
    v17 = v51;
    *(a1 + 64) = v50;
    *(a1 + 80) = v17;
    v18 = v47;
    *a1 = v46;
    *(a1 + 16) = v18;
    return;
  }

LABEL_11:
  v24 = *(v8 + 8);
  sub_2587EB238(v44, &v46);
  sub_25878E130(0, &qword_27F95D378, 0x277CCD7D0);
  sub_2587DC150(&qword_27F95E2B8, &qword_27F95D378, 0x277CCD7D0);
  v25 = v2;
  sub_2588BC348();
  __break(1u);
}

uint64_t sub_258874110@<X0>(uint64_t a1@<X8>)
{
  sub_258874504();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  sub_258873BF8();
  sub_258873DA0(v32);
  sub_258874918(v8, v6, sub_258874504);
  v28 = v32[6];
  v29 = v32[7];
  v30 = v32[8];
  v31 = v33;
  v24 = v32[2];
  v25 = v32[3];
  v26 = v32[4];
  v27 = v32[5];
  v22 = v32[0];
  v23 = v32[1];
  sub_258874918(v6, a1, sub_258874504);
  sub_258874468();
  v10 = a1 + *(v9 + 48);
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = *(v9 + 64);
  v12 = v24;
  v13 = v25;
  v34[2] = v24;
  v34[3] = v25;
  v14 = v22;
  v15 = v23;
  v34[0] = v22;
  v34[1] = v23;
  v16 = v29;
  v34[6] = v28;
  v34[7] = v29;
  v17 = v30;
  v34[8] = v30;
  v18 = v26;
  v19 = v27;
  v34[4] = v26;
  v34[5] = v27;
  v20 = a1 + v11;
  *(v20 + 96) = v28;
  *(v20 + 112) = v16;
  *(v20 + 128) = v17;
  *(v20 + 32) = v12;
  *(v20 + 48) = v13;
  *(v20 + 64) = v18;
  *(v20 + 80) = v19;
  v35 = v31;
  *(v20 + 144) = v31;
  *v20 = v14;
  *(v20 + 16) = v15;
  sub_258874AF8(v34, v36, &qword_27F960A78, &type metadata for MedicalIDHeaderAccessoryButton, MEMORY[0x277D83D88], sub_2587B19E0);
  sub_258874980(v8, sub_258874504);
  v36[6] = v28;
  v36[7] = v29;
  v36[8] = v30;
  v37 = v31;
  v36[2] = v24;
  v36[3] = v25;
  v36[4] = v26;
  v36[5] = v27;
  v36[0] = v22;
  v36[1] = v23;
  sub_2588749E0(v36);
  return sub_258874980(v6, sub_258874504);
}

void sub_258874350()
{
  if (!qword_27F960A50)
  {
    sub_258874404(255, &qword_27F960A58, sub_258874468, MEMORY[0x277CE14B8]);
    sub_25887473C(&qword_27F960A80, &qword_27F960A58, sub_258874468);
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960A50);
    }
  }
}

void sub_258874404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258874468()
{
  if (!qword_27F960A60)
  {
    sub_258874504();
    sub_2587B19E0(255, &qword_27F960A78, &type metadata for MedicalIDHeaderAccessoryButton, MEMORY[0x277D83D88]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F960A60);
    }
  }
}

void sub_258874504()
{
  if (!qword_27F960A68)
  {
    sub_258875348(255, &qword_27F960A70);
    sub_2588BCA98();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960A68);
    }
  }
}

void sub_258874584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2588745F4();
    v7 = v6;
    sub_258874350();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2588745F4()
{
  if (!qword_27F960A90)
  {
    sub_258874404(255, &qword_27F960A98, sub_2588746A8, MEMORY[0x277CE14B8]);
    sub_25887473C(&qword_27F960AA8, &qword_27F960A98, sub_2588746A8);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960A90);
    }
  }
}

void sub_2588746A8()
{
  if (!qword_27F960AA0)
  {
    sub_258874504();
    sub_2587B19E0(255, &qword_27F960A78, &type metadata for MedicalIDHeaderAccessoryButton, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960AA0);
    }
  }
}

uint64_t sub_25887473C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_258874404(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2588747A0()
{
  if (!qword_27F960AB0)
  {
    sub_258874404(255, &qword_27F960A58, sub_258874468, MEMORY[0x277CE14B8]);
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960AB0);
    }
  }
}

uint64_t sub_258874838(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258874880()
{
  if (!qword_27F960AC8)
  {
    sub_258874404(255, &qword_27F960A98, sub_2588746A8, MEMORY[0x277CE14B8]);
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960AC8);
    }
  }
}

uint64_t sub_258874918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258874980(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2588749E0(uint64_t a1)
{
  sub_2587B19E0(0, &qword_27F960A78, &type metadata for MedicalIDHeaderAccessoryButton, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258874A60()
{
  result = qword_27F960AD0;
  if (!qword_27F960AD0)
  {
    sub_258875348(255, &qword_27F960A70);
    sub_25885BF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960AD0);
  }

  return result;
}

uint64_t sub_258874AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_258874BA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258874BE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_258874C5C()
{
  result = qword_27F960AD8;
  if (!qword_27F960AD8)
  {
    sub_258874584(255, &qword_27F960AE0, MEMORY[0x277CE0338]);
    sub_258874838(&qword_27F960AB8, sub_2588745F4);
    sub_258874838(&qword_27F960AC0, sub_258874350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960AD8);
  }

  return result;
}

double sub_258874D74@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v4 = v1[5];
  v40 = v1[6];
  v41 = v3;
  v5 = v1[7];
  v42 = v1[8];
  v6 = v1[3];
  v7 = v1[1];
  v36 = v1[2];
  v37 = v6;
  v8 = v1[3];
  v9 = v1[5];
  v38 = v1[4];
  v39 = v9;
  v10 = v1[1];
  v34 = *v1;
  v35 = v10;
  v30 = v40;
  v31 = v5;
  v32 = v1[8];
  v26 = v36;
  v27 = v8;
  v28 = v38;
  v29 = v4;
  v43 = *(v1 + 18);
  v33 = *(v1 + 18);
  v24 = v34;
  v25 = v7;
  v11 = sub_258874F14();
  v12 = v11;
  v13 = v35;
  v15 = *(&v36 + 1);
  v14 = v37;
  if (BYTE1(v35) != 2)
  {
    v12 = v11 & BYTE1(v35);
  }

  v16 = swift_allocObject();
  v17 = v41;
  *(v16 + 112) = v40;
  *(v16 + 128) = v17;
  *(v16 + 144) = v42;
  *(v16 + 160) = v43;
  v18 = v37;
  *(v16 + 48) = v36;
  *(v16 + 64) = v18;
  v19 = v39;
  *(v16 + 80) = v38;
  *(v16 + 96) = v19;
  v20 = v35;
  *(v16 + 16) = v34;
  *(v16 + 32) = v20;

  sub_258875278(&v34, &v24);
  sub_2587D2DD4();
  sub_2588BD2E8();
  *a1 = v13 & 1;
  *(a1 + 1) = v12 & 1;
  *(a1 + 8) = v15;
  *(a1 + 16) = v14;
  v21 = v24;
  *(a1 + 56) = v25;
  result = *&v26;
  v23 = v27;
  *(a1 + 72) = v26;
  *(a1 + 88) = v23;
  *(a1 + 24) = sub_25887521C;
  *(a1 + 32) = v16;
  *(a1 + 104) = v28;
  *(a1 + 40) = v21;
  return result;
}

uint64_t sub_258874F14()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = v0[15];
    v3 = v1;
    v4 = [v3 isEditingAvailable];
    if (v4)
    {
      v5 = [v2 profileIdentifier];
      v6 = [v5 type];

      if (v6 == 3)
      {
        [v3 accessPoint];
      }
    }

    return v4;
  }

  else
  {
    v8 = v0[18];
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587DC150(&qword_27F95DAE8, &qword_27F95D3C0, off_2798A65E8);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_258875018()
{
  v1 = v0;
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v19 = *(v1 + 56);
  v20 = *(v1 + 72);
  v21 = *(v1 + 88);
  v22 = *(v1 + 104);
  v4 = *(v1 + 136);
  if (v4)
  {
    v6 = *(v1 + 120);
    v5 = *(v1 + 128);
    v7 = v4;
    if (([v7 isEditingAvailable] & 1) != 0 && (v8 = objc_msgSend(v6, sel_profileIdentifier), v9 = objc_msgSend(v8, sel_type), v8, v9 == 3))
    {
      v10 = [v7 accessPoint];

      if (v10 != 8)
      {
        sub_25889C578(v5, &v17);
        v13 = v19;
        v14 = v20;
        v15 = v21;
        v16 = v22;
        sub_258874918(&v19, v18, sub_2587D2DD4);
        sub_2587D2DD4();
        sub_2588BD2D8();
        v18[0] = v13;
        v18[1] = v14;
        v18[2] = v15;
        v18[3] = v16;
        return sub_258874980(v18, sub_2587D2DD4);
      }
    }

    else
    {
    }

    return v3();
  }

  else
  {
    v12 = *(v1 + 144);
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587DC150(&qword_27F95DAE8, &qword_27F95D3C0, off_2798A65E8);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_25887521C()
{
  v8 = *(v0 + 112);
  v9 = *(v0 + 128);
  v10 = *(v0 + 144);
  v11 = *(v0 + 160);
  v4 = *(v0 + 48);
  v5 = *(v0 + 64);
  v6 = *(v0 + 80);
  v7 = *(v0 + 96);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return sub_258875018();
}

unint64_t sub_2588752B0()
{
  result = qword_27F960AE8;
  if (!qword_27F960AE8)
  {
    sub_258875348(255, &qword_27F960AF0);
    sub_258875398();
    sub_2587FC5B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960AE8);
  }

  return result;
}

void sub_258875348(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2588BC1E8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_258875398()
{
  result = qword_27F960AF8;
  if (!qword_27F960AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960AF8);
  }

  return result;
}

id static _HKMedicalIDData.mockMedicalIDData(listVersion:)(uint64_t a1, int a2)
{
  LODWORD(v85) = a2;
  v89 = a1;
  v2 = [objc_allocWithZone(MEMORY[0x277CCDDF0]) init];
  v3 = sub_2588BD868();
  [v2 setName_];

  v91.width = 1.0;
  v91.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v91, 0, 0.0);
  v4 = [objc_opt_self() orangeColor];
  [v4 setFill];

  v92.origin.x = 0.0;
  v92.origin.y = 0.0;
  v92.size.width = 1.0;
  v92.size.height = 1.0;
  UIRectFill(v92);
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (v5)
  {
    v6 = UIImagePNGRepresentation(v5);

    if (v6)
    {
      v7 = sub_2588BB908();
      v9 = v8;

      v5 = sub_2588BB8F8();
      sub_2587C2610(v7, v9);
    }

    else
    {
      v5 = 0;
    }
  }

  [v2 setPictureData_];

  v10 = sub_2588BB818();
  v87 = *(v10 - 8);
  v88 = v10;
  v11 = *(v87 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25887612C(0, &qword_27F960B00, MEMORY[0x28220C238]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = sub_2588BBB48();
  v86 = *(*(v17 - 8) + 56);
  v86(&v78 - v16, 1, 1, v17);
  sub_25887612C(0, &qword_27F960B08, MEMORY[0x28220C298]);
  v90 = v2;
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v78 - v20;
  v22 = sub_2588BBB78();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  sub_2588BB7F8();
  sub_2588BB7E8();
  sub_2588BB798();
  sub_2588BB7C8();
  v23 = sub_2588BB7A8();
  MEMORY[0x28223BE20](v23);
  v24 = &v78 - v16;
  v25 = sub_2588BBAD8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 104))(v29, *MEMORY[0x277CC9838], v25);
  sub_2588BBAE8();
  (*(v26 + 8))(v29, v25);
  v86(v24, 0, 1, v17);
  sub_2588BB808();
  v86 = v13;
  v30 = sub_2588BB758();
  [v90 setGregorianBirthday_];

  v31 = objc_opt_self();
  v32 = [v31 footUnit];
  v33 = objc_opt_self();
  v34 = [v33 quantityWithUnit:v32 doubleValue:5.58];

  [v90 setHeight_];
  v35 = [v31 poundUnit];
  v36 = v90;
  v37 = [v33 quantityWithUnit:v35 doubleValue:150.0];

  [v36 setWeight_];
  [v36 setBloodType_];
  sub_25878E130(0, &qword_27F95D898, 0x277CCABB0);
  v38 = sub_2588BDCC8();
  [v36 setIsOrganDonor_];

  v39 = sub_2588BD868();
  [v36 setPrimaryLanguageCode_];

  v40 = sub_2588BD868();
  [v36 setMedicalConditions_];

  v41 = sub_2588BD868();
  [v36 setAllergyInfo_];

  v42 = sub_2588BD868();
  [v36 setMedicationInfo_];

  v43 = sub_2588BD868();
  [v36 setMedicalNotes_];

  v44 = [objc_allocWithZone(MEMORY[0x277CCDDA0]) init];
  v45 = sub_2588BD868();
  [v44 setName_];

  v46 = sub_2588BD868();
  [v44 setPhoneNumber_];

  v47 = sub_2588BD868();
  [v44 setRelationship_];

  sub_258876180();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_2588C6780;
  *(v48 + 32) = v44;
  sub_25878E130(0, &qword_280C0DE00, 0x277CCDDA0);
  v49 = v44;
  v50 = sub_2588BD9A8();

  [v36 setEmergencyContacts_];

  if (v85)
  {
    (*(v87 + 8))(v86, v88);
  }

  else
  {
    v51 = [objc_allocWithZone(MEMORY[0x277CCDDF8]) init];
    v85 = v49;
    v52 = v51;
    v53 = sub_2588BD868();
    [v52 setTextDescription_];

    v54 = [objc_allocWithZone(MEMORY[0x277CCDDF8]) init];
    v55 = sub_2588BD868();
    [v54 &off_2798A7330 + 5];

    v56 = swift_allocObject();
    v82 = xmmword_2588BFD30;
    *(v56 + 16) = xmmword_2588BFD30;
    *(v56 + 32) = v52;
    *(v56 + 40) = v54;
    sub_25878E130(0, &qword_27F960B10, 0x277CCDDF8);
    v84 = v52;
    v83 = v54;
    v57 = sub_2588BD9A8();

    [v36 setMedicationsList_];

    v58 = sub_2588BDCC8();
    [v36 setMedicationsListVersion_];

    v59 = [objc_allocWithZone(MEMORY[0x277CCDDE0]) init];
    v60 = sub_2588BD868();
    [v59 &off_2798A7330 + 5];

    v61 = [objc_allocWithZone(MEMORY[0x277CCDDE0]) init];
    v62 = sub_2588BD868();
    [v61 &off_2798A7330 + 5];

    v63 = [objc_allocWithZone(MEMORY[0x277CCDDE0]) init];
    v64 = sub_2588BD868();
    [v63 &off_2798A7330 + 5];

    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_2588C6E20;
    *(v65 + 32) = v59;
    *(v65 + 40) = v61;
    *(v65 + 48) = v63;
    sub_25878E130(0, &qword_27F960B18, 0x277CCDDE0);
    v81 = v59;
    v80 = v61;
    v79 = v63;
    v66 = sub_2588BD9A8();

    [v36 setAllergiesList_];

    v67 = sub_2588BDCC8();
    [v36 setAllergiesListVersion_];

    v68 = [objc_allocWithZone(MEMORY[0x277CCDDE8]) init];
    v69 = sub_2588BD868();
    [v68 setTextDescription_];

    v70 = [objc_allocWithZone(MEMORY[0x277CCDDE8]) init];
    v71 = sub_2588BD868();
    [v70 setTextDescription_];

    v72 = swift_allocObject();
    *(v72 + 16) = v82;
    *(v72 + 32) = v68;
    *(v72 + 40) = v70;
    sub_25878E130(0, &qword_27F960B20, 0x277CCDDE8);
    v73 = v68;
    v74 = v70;
    v75 = sub_2588BD9A8();

    [v36 setConditionsList_];

    v76 = sub_2588BDCC8();
    [v36 setConditionsListVersion_];

    (*(v87 + 8))(v86, v88);
  }

  return v36;
}

void sub_25887612C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BDCE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258876180()
{
  if (!qword_280C0DDB8)
  {
    v0 = sub_2588BDF88();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0DDB8);
    }
  }
}

uint64_t type metadata accessor for MedicalIDDeleteView()
{
  result = qword_27F960B28;
  if (!qword_27F960B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258876248()
{
  sub_258878620(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258878620(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2587DC074();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258876360()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for MedicalIDDeleteView() + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2588BDBE8();
    v9 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_2588764B0@<X0>(uint64_t a1@<X8>)
{
  v18[0] = a1;
  sub_258877AB4(0);
  v18[1] = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588767A8();
  v6 = sub_2588BD858();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v8 = qword_27F95DA88;
  v9 = sub_2588BBAC8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v8;
  sub_2588BBAB8();
  v21 = sub_2588BD8B8();
  v22 = v12;
  v13 = (v1 + *(type metadata accessor for MedicalIDDeleteView() + 24));
  v14 = *v13;
  v15 = *(v13 + 1);
  v19 = v14;
  v20 = v15;
  sub_2587DC074();
  v16 = sub_2588BD2E8();
  MEMORY[0x28223BE20](v16);
  sub_258878620(0, &qword_27F960B70, sub_258877E40, MEMORY[0x277CE14B8]);
  sub_258877F30();
  sub_25878F648();
  sub_258878314();
  sub_2588BD048();

  return sub_258878BC0(v5, sub_258877AB4);
}

void sub_2588767A8()
{
  v1 = v0;
  v2 = type metadata accessor for MedicalIDDeleteView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_258877AE8(0);
  v6 = v5;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25887839C(v1, &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_258878400(&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_258877D58();
  sub_258877DB8(&qword_27F960B68, sub_258877D58, sub_258846C40);
  sub_2588BD318();
  v12 = [objc_opt_self() tertiarySystemFillColor];
  v13 = sub_2588BD148();
  LOBYTE(v10) = sub_2588BCB88();
  sub_258877C28();
  v15 = &v9[*(v14 + 36)];
  *v15 = v13;
  v15[8] = v10;
  sub_258877B90();
  v17 = &v9[*(v16 + 36)];
  sub_258878620(0, &qword_27F95F758, MEMORY[0x277CDF450], MEMORY[0x277CE0860]);
  v19 = *(v18 + 28);
  v20 = *MEMORY[0x277CDF420];
  v21 = sub_2588BBF28();
  (*(*(v21 - 8) + 104))(v17 + v19, v20, v21);
  *v17 = swift_getKeyPath();
  v22 = &v9[*(v6 + 36)];
  v23 = *(sub_2588BC2A8() + 20);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_2588BC6B8();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #26.0 }

  *v22 = _Q0;
  sub_258846858();
  *&v22[*(v31 + 36)] = 256;
  v32 = sub_2588BD9A8();
  v33 = HKUIJoinStringsForAutomationIdentifier();

  if (v33)
  {
    sub_2588BD8A8();

    sub_258877FE0();
    sub_2588BCFB8();

    sub_258878BC0(v9, sub_258877AE8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258876B54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  sub_258878620(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v40 - v5;
  sub_258877EDC(0, &qword_27F95E9D0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
  v46 = v7;
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v40 - v11;
  v12 = type metadata accessor for MedicalIDDeleteView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v48 = sub_2588BD748();
  v43 = *(v48 - 8);
  v15 = v43;
  v16 = *(v43 + 64);
  v17 = MEMORY[0x28223BE20](v48);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  sub_25887839C(a1, &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v23 = swift_allocObject();
  sub_258878400(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v42 = v21;
  sub_2588BD718();
  sub_2588BBDC8();
  v24 = sub_2588BBDE8();
  (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
  sub_25887839C(a1, &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = swift_allocObject();
  sub_258878400(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v22);
  v26 = v49;
  sub_2588BD308();
  v27 = *(v15 + 16);
  v41 = v19;
  v28 = v21;
  v29 = v48;
  v27(v19, v28, v48);
  v31 = v44;
  v30 = v45;
  v32 = *(v44 + 16);
  v33 = v46;
  v32(v45, v26, v46);
  v34 = v47;
  v27(v47, v19, v29);
  sub_258877E40();
  v32(&v34[*(v35 + 48)], v30, v33);
  v36 = *(v31 + 8);
  v36(v49, v33);
  v37 = *(v43 + 8);
  v38 = v48;
  v37(v42, v48);
  v36(v30, v33);
  return (v37)(v41, v38);
}

uint64_t sub_258876FFC(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDDeleteView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258878620(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_2588BDAA8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_25887839C(a1, v5);
  sub_2588BDA78();
  v11 = sub_2588BDA68();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_258878400(v5, v13 + v12);
  sub_2587ABD24(0, 0, v9, &unk_2588C6EB0, v13);
}

uint64_t sub_2588771D8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MedicalIDDeleteView() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_2587DC074();
  return sub_2588BD2D8();
}

double sub_258877240@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2588BCC88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v7 = qword_27F95DA88;
  v47 = sub_2588BCDE8();
  v9 = v8;
  v11 = v10;
  sub_2588BCC08();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0A10], v2);
  sub_2588BCCA8();

  (*(v3 + 8))(v6, v2);
  v12 = v11;
  v13 = v47;
  v14 = sub_2588BCDD8();
  v16 = v15;
  v18 = v17;
  v46 = v19;

  sub_2587B1CF8(v13, v9, v12 & 1);

  *&v51 = sub_2588BD168();
  v20 = sub_2588BCD98();
  v22 = v21;
  LOBYTE(v13) = v23;
  v47 = v24;
  sub_2587B1CF8(v14, v16, v18 & 1);

  v25 = sub_2588BCB78();
  sub_2588BBE38();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  LOBYTE(v16) = v13 & 1;
  LOBYTE(v51) = v13 & 1;
  v48 = 0;
  LOBYTE(v13) = sub_2588BCBE8();
  sub_2588BBE38();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v49 = 0;
  sub_2588BD5C8();
  sub_2588BC328();
  *&v50[55] = v54;
  *&v50[71] = v55;
  *&v50[87] = v56;
  *&v50[103] = v57;
  *&v50[7] = v51;
  *&v50[23] = v52;
  *&v50[39] = v53;
  *a1 = v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v16;
  *(a1 + 24) = v47;
  *(a1 + 32) = v25;
  *(a1 + 40) = v27;
  *(a1 + 48) = v29;
  *(a1 + 56) = v31;
  *(a1 + 64) = v33;
  *(a1 + 72) = 0;
  *(a1 + 80) = v13;
  *(a1 + 88) = v35;
  *(a1 + 96) = v37;
  *(a1 + 104) = v39;
  *(a1 + 112) = v41;
  *(a1 + 120) = 0;
  v42 = *&v50[80];
  *(a1 + 185) = *&v50[64];
  *(a1 + 201) = v42;
  *(a1 + 217) = *&v50[96];
  *(a1 + 232) = *&v50[111];
  v43 = *&v50[16];
  *(a1 + 121) = *v50;
  *(a1 + 137) = v43;
  result = *&v50[32];
  v45 = *&v50[48];
  *(a1 + 153) = *&v50[32];
  *(a1 + 169) = v45;
  return result;
}

uint64_t sub_25887762C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for MedicalIDDeleteView() - 8);
  v4[3] = v5;
  v4[4] = *(v5 + 64);
  v4[5] = swift_task_alloc();
  sub_258878620(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = sub_2588BDA78();
  v4[8] = sub_2588BDA68();
  v9 = sub_2588BDA28();
  v4[9] = v9;
  v4[10] = v8;

  return MEMORY[0x2822009F8](sub_258877784, v9, v8);
}

uint64_t sub_258877784()
{
  v1 = v0[2];
  v0[11] = sub_258876360();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_258877824;

  return MedicalIDDataManager.delete()();
}

uint64_t sub_258877824()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v7 = *v0;

  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_258877968, v5, v4);
}

uint64_t sub_258877968()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = sub_2588BDAA8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_25887839C(v7, v3);
  v9 = sub_2588BDA68();
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v9;
  *(v11 + 24) = v12;
  sub_258878400(v3, v11 + v10);
  sub_2587ABD24(0, 0, v4, &unk_2588C6EC0, v11);

  v13 = v0[1];

  return v13();
}

void sub_258877B1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258877B90()
{
  if (!qword_27F960B48)
  {
    sub_258877C28();
    sub_258878620(255, &qword_27F95F758, MEMORY[0x277CDF450], MEMORY[0x277CE0860]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960B48);
    }
  }
}

void sub_258877C28()
{
  if (!qword_27F960B50)
  {
    sub_258877CBC();
    sub_258877EDC(255, &qword_27F95FCF8, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960B50);
    }
  }
}

void sub_258877CBC()
{
  if (!qword_27F960B58)
  {
    sub_258877D58();
    sub_258877DB8(&qword_27F960B68, sub_258877D58, sub_258846C40);
    v0 = sub_2588BD348();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960B58);
    }
  }
}

void sub_258877D58()
{
  if (!qword_27F960B60)
  {
    sub_2588467CC();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960B60);
    }
  }
}

uint64_t sub_258877DB8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258877E40()
{
  if (!qword_27F960B78)
  {
    sub_2588BD748();
    sub_258877EDC(255, &qword_27F95E9D0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960B78);
    }
  }
}

void sub_258877EDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258877F30()
{
  result = qword_27F960B80;
  if (!qword_27F960B80)
  {
    sub_258877AB4(255);
    sub_258877FE0();
    sub_2588782CC(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960B80);
  }

  return result;
}

unint64_t sub_258877FE0()
{
  result = qword_27F960B88;
  if (!qword_27F960B88)
  {
    sub_258877AE8(255);
    sub_258878090();
    sub_2588782CC(&qword_27F95FD40, sub_258846858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960B88);
  }

  return result;
}

unint64_t sub_258878090()
{
  result = qword_27F960B90;
  if (!qword_27F960B90)
  {
    sub_258877B90();
    sub_258878110();
    sub_258878244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960B90);
  }

  return result;
}

unint64_t sub_258878110()
{
  result = qword_27F960B98;
  if (!qword_27F960B98)
  {
    sub_258877C28();
    sub_2588782CC(&qword_27F960BA0, sub_258877CBC);
    sub_2588781C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960B98);
  }

  return result;
}

unint64_t sub_2588781C0()
{
  result = qword_27F95FD38;
  if (!qword_27F95FD38)
  {
    sub_258877EDC(255, &qword_27F95FCF8, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FD38);
  }

  return result;
}

unint64_t sub_258878244()
{
  result = qword_27F960BA8;
  if (!qword_27F960BA8)
  {
    sub_258878620(255, &qword_27F95F758, MEMORY[0x277CDF450], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960BA8);
  }

  return result;
}

uint64_t sub_2588782CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258878314()
{
  result = qword_27F960BB0;
  if (!qword_27F960BB0)
  {
    sub_258878620(255, &qword_27F960B70, sub_258877E40, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960BB0);
  }

  return result;
}

uint64_t sub_25887839C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDDeleteView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258878400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDDeleteView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for MedicalIDDeleteView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  sub_258878620(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2588BC038();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v4 + *(v1 + 20));

  v8 = *(v4 + *(v1 + 24) + 8);

  return swift_deallocObject();
}

uint64_t sub_2588785C0()
{
  v1 = *(type metadata accessor for MedicalIDDeleteView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258876FFC(v2);
}

void sub_258878620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258878684(uint64_t a1)
{
  v4 = *(type metadata accessor for MedicalIDDeleteView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AEAC8;

  return sub_25887762C(a1, v6, v7, v1 + v5);
}

uint64_t sub_258878774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2588BC038();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_2588BDA78();
  v4[6] = sub_2588BDA68();
  v9 = sub_2588BDA28();

  return MEMORY[0x2822009F8](sub_258878868, v9, v8);
}

uint64_t sub_258878868()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  sub_25885269C(v2);
  sub_2588BC028();
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t objectdestroy_6Tm()
{
  v1 = type metadata accessor for MedicalIDDeleteView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = (v0 + v2);
  sub_258878620(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2588BC038();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20));

  v9 = *(v5 + *(v1 + 24) + 8);

  return swift_deallocObject();
}

uint64_t sub_258878A64(uint64_t a1)
{
  v4 = *(type metadata accessor for MedicalIDDeleteView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AE310;

  return sub_258878774(a1, v6, v7, v1 + v5);
}

uint64_t sub_258878BC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListCellModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}