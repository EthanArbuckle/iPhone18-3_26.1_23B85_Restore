uint64_t sub_24F512184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  *&v33 = a2;
  v32 = a1;
  v40 = a3;
  v5 = sub_24F9294C8();
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F929458();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_24F928698();
  v37 = *(v38 - 8);
  v11 = v37;
  MEMORY[0x28223BE20](v38);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928AD8();
  MEMORY[0x28223BE20](v14 - 8);
  v36 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4[1];
  v35 = *v4;
  v34 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  sub_24F9293F8();
  v18 = sub_24F929448();
  v20 = v19;
  (*(v8 + 8))(v10, v7);
  v21 = MEMORY[0x277D837D0];
  *(inited + 48) = v18;
  *(inited + 56) = v20;
  *(inited + 72) = v21;
  *(inited + 80) = 0x6449746567726174;
  v22 = v32;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v22;
  *(inited + 104) = v33;
  *(inited + 120) = v21;
  *(inited + 128) = 0x7954746567726174;
  *(inited + 136) = 0xEA00000000006570;
  *(inited + 144) = 0x6E6F74747562;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v21;
  *(inited + 176) = 0x79546E6F69746361;
  *(inited + 216) = v21;
  *(inited + 184) = 0xEA00000000006570;
  *(inited + 192) = 0x7463656C6573;
  *(inited + 200) = 0xE600000000000000;

  sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948);
  v23 = sub_24F92A2C8();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v33 = xmmword_24F93DE60;
  *(v26 + 16) = xmmword_24F93DE60;
  sub_24F92A2A8();
  sub_24E805DFC(v26);
  swift_setDeallocating();
  (*(v24 + 8))(v26 + v25, v23);
  swift_deallocClassInstance();

  sub_24F928658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8);
  v27 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v33;
  v29 = v38;
  (*(v11 + 16))(v28 + v27, v13, v38);
  sub_24F9294B8();
  sub_24F928AA8();
  (*(v11 + 8))(v13, v29);
  return sub_24F928498();
}

uint64_t sub_24F5126E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F40);
  sub_24E602068(&qword_27F246F48, &qword_27F227420);
  sub_24F512E6C();
  swift_getOpaqueTypeConformance2();
  sub_24F512F84();
  return sub_24F927238();
}

uint64_t sub_24F512818@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (qword_27F211618 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_27F211620 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  sub_24E600AEC();
  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_24F512908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendsPlayingAccessoryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F512970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendsPlayingAccessoryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5129D4(uint64_t a1)
{
  v3 = *(type metadata accessor for FriendsPlayingAccessoryView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F510C40(a1, v4);
}

uint64_t sub_24F512A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246EF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F512AE8()
{
  result = qword_27F246F10;
  if (!qword_27F246F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246EC0);
    sub_24F512B74();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246F10);
  }

  return result;
}

unint64_t sub_24F512B74()
{
  result = qword_27F246F18;
  if (!qword_27F246F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246F08);
    sub_24E602068(&qword_27F246F20, &qword_27F246F00);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246F18);
  }

  return result;
}

uint64_t objectdestroyTm_72()
{
  v1 = type metadata accessor for FriendsPlayingAccessoryView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E90);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[6];
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

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F921B58();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F512DCC(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for FriendsPlayingAccessoryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F511E74(a1, a2, v6);
}

unint64_t sub_24F512E6C()
{
  result = qword_27F246F30;
  if (!qword_27F246F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246F30);
  }

  return result;
}

unint64_t sub_24F512EC0()
{
  result = qword_27F246F38;
  if (!qword_27F246F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246F28);
    sub_24F512E6C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246F38);
  }

  return result;
}

unint64_t sub_24F512F84()
{
  result = qword_27F246F50;
  if (!qword_27F246F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246F50);
  }

  return result;
}

uint64_t sub_24F512FD8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246EC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246EC0);
  sub_24F512AE8();
  swift_getOpaqueTypeConformance2();
  sub_24EAC4450();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F513090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a5;
  v7[11] = a7;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v9 = swift_task_alloc();
  v7[12] = v9;
  *v9 = v7;
  v9[1] = sub_24F513158;

  return MEMORY[0x28217F228](v7 + 2, v8, v8);
}

uint64_t sub_24F513158()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24E646B78;
  }

  else
  {
    v2 = sub_24F51326C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F51326C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_24E646A64;
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x28217F4B0](v8, v6, v7, v4, v5, v1, v2);
}

uint64_t sub_24F5133A4@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v193 = a4;
  v194 = a5;
  *&v220 = a3;
  v222 = a6;
  LODWORD(v219) = a1;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v213);
  v187 = &v166 - v8;
  v9 = type metadata accessor for HeroCardGameHeadingView();
  v196 = *(v9 - 8);
  v197 = v9;
  MEMORY[0x28223BE20](v9);
  v195 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50);
  MEMORY[0x28223BE20](v207);
  v198 = &v166 - v11;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241770);
  MEMORY[0x28223BE20](v199);
  v201 = &v166 - v12;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241778);
  MEMORY[0x28223BE20](v206);
  v208 = &v166 - v13;
  v200 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v200);
  v183 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v185 = &v166 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v170 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v171 = v18;
  v172 = &v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v186 = &v166 - v20;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A50);
  MEMORY[0x28223BE20](v173);
  v175 = (&v166 - v21);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E938);
  MEMORY[0x28223BE20](v189);
  v174 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v176 = &v166 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v25 - 8);
  v216 = &v166 - v26;
  v27 = type metadata accessor for LeaderboardEntry();
  v169 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v215 = &v166 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F60);
  MEMORY[0x28223BE20](v211);
  v212 = &v166 - v29;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F68);
  MEMORY[0x28223BE20](v202);
  v204 = &v166 - v30;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F70);
  MEMORY[0x28223BE20](v188);
  v191 = &v166 - v31;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F78);
  MEMORY[0x28223BE20](v203);
  v192 = &v166 - v32;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F80);
  MEMORY[0x28223BE20](v210);
  v205 = &v166 - v33;
  v179 = type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView();
  MEMORY[0x28223BE20](v179);
  v35 = &v166 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F88);
  MEMORY[0x28223BE20](v181);
  v182 = &v166 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F90);
  MEMORY[0x28223BE20](v37);
  v177 = &v166 - v38;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F98);
  MEMORY[0x28223BE20](v180);
  v178 = &v166 - v39;
  v214 = type metadata accessor for PlayerAvatar(0);
  v217 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v168 = &v166 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v166 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v166 - v45;
  v47 = type metadata accessor for CardCompactAvatarView();
  MEMORY[0x28223BE20](v47);
  v49 = &v166 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246FA0);
  MEMORY[0x28223BE20](v190);
  v184 = &v166 - v50;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246FA8);
  v221 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v209 = &v166 - v51;
  if (v219 == 4)
  {
    if (v220 < 4u || v220 == 4)
    {
      v63 = sub_24F92CE08();

      if ((v63 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v68 = type metadata accessor for LeaderboardWithFriendCard();
    v69 = a2;
    v70 = a2 + *(v68 + 32);
    v71 = (v70 + *(type metadata accessor for CommonCardAttributes(0) + 44));
    v72 = v71[1];
    if (v72)
    {
      v73 = *v71;
      v74 = *(v68 + 40);
      v75 = sub_24F9289E8();
      v76 = v195;
      (*(*(v75 - 8) + 16))(v195, v69 + v74, v75);
      v77 = v197;
      v78 = v198;
      v79 = (v76 + *(v197 + 20));
      *v79 = v73;
      v79[1] = v72;
      sub_24F516FE0(v76, v78, type metadata accessor for HeroCardGameHeadingView);
      (*(v196 + 56))(v78, 0, 1, v77);
    }

    else
    {
      v78 = v198;
      (*(v196 + 56))(v198, 1, 1, v197);
    }

    sub_24E60169C(v78, v201, &qword_27F219E50);
    swift_storeEnumTagMultiPayload();
    sub_24F517E14(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    sub_24E7179AC();

    v80 = v208;
    sub_24F924E28();
    sub_24E60169C(v80, v204, &qword_27F241778);
    swift_storeEnumTagMultiPayload();
    sub_24F516D28();
    sub_24F516F2C(&qword_27F2417F0, &qword_27F241778, &unk_24F9EE480, sub_24E7179AC);
    v81 = v205;
    sub_24F924E28();
    sub_24E601704(v80, &qword_27F241778);
    sub_24E60169C(v81, v212, &qword_27F246F80);
    swift_storeEnumTagMultiPayload();
    sub_24F516C70();
    sub_24E701970();
    v82 = v209;
    sub_24F924E28();
    sub_24E601704(v81, &qword_27F246F80);
    sub_24E601704(v78, &qword_27F219E50);
    goto LABEL_37;
  }

  v198 = a2;
  v52 = a2;
  v53 = v220;
  if (sub_24E92D030(a1, v52, v220))
  {
    if (a1 == 11)
    {
      v83 = dword_24FA056EC[v53];
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
      v85 = v183;
      (*(*(v84 - 8) + 56))(v183, v83, 5, v84);
      v86 = v185;
      sub_24F516FE0(v85, v185, type metadata accessor for CardContentBackgroundStyle);
      sub_24F517D4C(v86, v201, type metadata accessor for CardContentBackgroundStyle);
      swift_storeEnumTagMultiPayload();
      sub_24F517E14(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
      sub_24E7179AC();
      v87 = v208;
      sub_24F924E28();
      sub_24E60169C(v87, v204, &qword_27F241778);
      swift_storeEnumTagMultiPayload();
      sub_24F516D28();
      sub_24F516F2C(&qword_27F2417F0, &qword_27F241778, &unk_24F9EE480, sub_24E7179AC);
      v88 = v205;
      sub_24F924E28();
      sub_24E601704(v87, &qword_27F241778);
      sub_24E60169C(v88, v212, &qword_27F246F80);
      swift_storeEnumTagMultiPayload();
      sub_24F516C70();
      sub_24E701970();
      v82 = v209;
      sub_24F924E28();
      sub_24E601704(v88, &qword_27F246F80);
      sub_24F517DB4(v86, type metadata accessor for CardContentBackgroundStyle);
LABEL_37:
      v93 = v218;
      goto LABEL_38;
    }

    if (a1 != 3)
    {
      if (a1 == 2)
      {
        if (v53 - 2 >= 4)
        {
          v60 = v184;
          if (!v53)
          {
            swift_storeEnumTagMultiPayload();
            sub_24F516E40();
            sub_24F924E28();
LABEL_27:
            v93 = v218;
            sub_24E60169C(v60, v191, &qword_27F246FA0);
            swift_storeEnumTagMultiPayload();
            sub_24F516DB4();
            sub_24E8178E0();
            v94 = v192;
            sub_24F924E28();
            sub_24E60169C(v94, v204, &qword_27F246F78);
            swift_storeEnumTagMultiPayload();
            sub_24F516D28();
            sub_24F516F2C(&qword_27F2417F0, &qword_27F241778, &unk_24F9EE480, sub_24E7179AC);
            v95 = v205;
            sub_24F924E28();
            sub_24E601704(v94, &qword_27F246F78);
            sub_24E60169C(v95, v212, &qword_27F246F80);
            swift_storeEnumTagMultiPayload();
            sub_24F516C70();
            sub_24E701970();
            v82 = v209;
            sub_24F924E28();
            sub_24E601704(v95, &qword_27F246F80);
            sub_24E601704(v60, &qword_27F246FA0);
LABEL_38:
            v117 = v222;
LABEL_39:
            sub_24E6009C8(v82, v117, &qword_27F246FA8);
            return (*(v221 + 56))(v117, 0, 1, v93);
          }

          v89 = type metadata accessor for LeaderboardWithFriendCard();
          sub_24F517D4C(v198 + *(v89 + 44), v46, type metadata accessor for PlayerAvatar);
          v90 = &v49[*(v47 + 20)];
          type metadata accessor for CardSafeArea(0);
          sub_24F517E14(&qword_27F214D10, type metadata accessor for CardSafeArea);
          *v90 = sub_24F923598();
          v90[8] = v91 & 1;
          sub_24F517D4C(v46, v43, type metadata accessor for PlayerAvatar);
          LOBYTE(v238) = 7;
          sub_24F8319B8(v43, &v238, v49);
          sub_24F517DB4(v46, type metadata accessor for PlayerAvatar);
          sub_24F517D4C(v49, v177, type metadata accessor for CardCompactAvatarView);
          swift_storeEnumTagMultiPayload();
          sub_24F517E14(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView);
          sub_24F517E14(&qword_27F246FD0, type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView);
          v92 = v178;
          sub_24F924E28();
          sub_24E60169C(v92, v182, &qword_27F246F98);
          swift_storeEnumTagMultiPayload();
          sub_24F516E40();
          sub_24F924E28();
          sub_24E601704(v92, &qword_27F246F98);
          v61 = type metadata accessor for CardCompactAvatarView;
          v62 = v49;
        }

        else
        {
          sub_24F517D4C(v198, v35, type metadata accessor for LeaderboardWithFriendCard);
          v54 = v179;
          v55 = *(v179 + 24);
          v56 = sub_24F923E98();
          (*(*(v56 - 8) + 16))(&v35[v55], v193, v56);
          v35[v54[5]] = v53;
          *&v35[v54[7]] = v194;
          v57 = &v35[v54[8]];
          type metadata accessor for CardSafeArea(0);
          sub_24F517E14(&qword_27F214D10, type metadata accessor for CardSafeArea);

          *v57 = sub_24F923598();
          v57[8] = v58 & 1;
          sub_24F517D4C(v35, v177, type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView);
          swift_storeEnumTagMultiPayload();
          sub_24F517E14(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView);
          sub_24F517E14(&qword_27F246FD0, type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView);
          v59 = v178;
          sub_24F924E28();
          sub_24E60169C(v59, v182, &qword_27F246F98);
          swift_storeEnumTagMultiPayload();
          sub_24F516E40();
          v60 = v184;
          sub_24F924E28();
          sub_24E601704(v59, &qword_27F246F98);
          v61 = type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView;
          v62 = v35;
        }

        sub_24F517DB4(v62, v61);
        goto LABEL_27;
      }

      goto LABEL_36;
    }

    if (v53)
    {
      v96 = sub_24F92CE08();

      if ((v96 & 1) == 0)
      {
LABEL_36:
        v116 = v187;
        sub_24E923A20(a1, v198, v53, v193, v194, v187);
        sub_24E60169C(v116, v212, &qword_27F214A20);
        swift_storeEnumTagMultiPayload();
        sub_24F516C70();
        sub_24E701970();
        v82 = v209;
        sub_24F924E28();
        sub_24E601704(v116, &qword_27F214A20);
        goto LABEL_37;
      }
    }

    else
    {
    }

    v97 = type metadata accessor for LeaderboardWithFriendCard();
    v98 = v198;
    v99 = *(v198 + *(v97 + 36));
    v100 = *(v99 + 16);
    v101 = MEMORY[0x277D84F90];
    if (v100)
    {
      v200 = v97;
      v223[0] = MEMORY[0x277D84F90];
      sub_24F457BF8(0, v100, 0);
      v101 = v223[0];
      v102 = v168;
      v103 = v99 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
      v201 = *(v169 + 72);
      v167 = v27;
      do
      {
        v219 = v103;
        *&v220 = v100;
        v104 = v215;
        sub_24F517D4C(v103, v215, type metadata accessor for LeaderboardEntry);
        v105 = v104 + *(v27 + 20);
        v106 = *(v105 + 16);
        v207 = *(v105 + 24);
        v208 = v106;

        sub_24F517DB4(v104, type metadata accessor for LeaderboardEntry);
        v107 = type metadata accessor for PlayerAvatar.Overlay(0);
        v108 = *(*(v107 - 8) + 56);
        v109 = v216;
        v108(v216, 1, 1, v107);
        *&v240 = 0;
        v238 = 0u;
        v239 = 0u;
        v110 = v214;
        v111 = *(v214 + 20);
        v108(&v102[v111], 1, 1, v107);
        v112 = &v102[*(v110 + 24)];
        *&v233 = 0;
        v231 = 0u;
        v232 = 0u;
        *v112 = 0u;
        *(v112 + 16) = 0u;
        *(v112 + 32) = 0;
        sub_24E61DA68(&v231, v112, qword_27F21B590);
        v113 = v207;
        *v102 = v208;
        *(v102 + 1) = v113;
        sub_24E61DA68(v109, &v102[v111], &qword_27F22DF80);
        sub_24E61DA68(&v238, v112, qword_27F21B590);
        v223[0] = v101;
        v115 = *(v101 + 16);
        v114 = *(v101 + 24);
        if (v115 >= v114 >> 1)
        {
          sub_24F457BF8(v114 > 1, v115 + 1, 1);
          v101 = v223[0];
        }

        *(v101 + 16) = v115 + 1;
        sub_24F516FE0(v102, v101 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v115, type metadata accessor for PlayerAvatar);
        v103 = v219 + v201;
        v100 = v220 - 1;
        v27 = v167;
      }

      while (v220 != 1);
      v98 = v198;
      v97 = v200;
    }

    v118 = v98 + *(v97 + 32);
    v119 = type metadata accessor for CommonCardAttributes(0);
    sub_24E60169C(v118 + *(v119 + 40), v186, &qword_27F213FB0);
    if (qword_27F211940 != -1)
    {
      swift_once();
    }

    v220 = xmmword_27F2543C0;
    v120 = qword_27F2543D0;
    v121 = qword_27F2543D8;
    v122 = sub_24E608A68(qword_2861BE9F8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DD0);
    swift_arrayDestroy();
    *&v249[8] = v220;
    *v249 = 0x4044000000000000;
    *&v249[24] = v120;
    *&v250 = v121;
    *(&v250 + 1) = v122;
    LOBYTE(v251) = 0;
    *(&v251 + 1) = 3;
    KeyPath = swift_getKeyPath();
    v124 = v175;
    *v175 = KeyPath;
    *(v124 + 8) = 0;
    LOBYTE(v231) = 0;
    sub_24F926F28();
    v125 = *(&v238 + 1);
    *(v124 + 16) = v238;
    v124[3] = v125;
    if (*(v101 + 16) >= 4uLL)
    {
      sub_24E6B8064(v101, v101 + ((*(v217 + 80) + 32) & ~*(v217 + 80)), 0, 7uLL);
      v127 = v126;

      v101 = v127;
    }

    *&v220 = v101;
    v124[4] = v101;
    v128 = v173;
    v129 = v186;
    sub_24E60169C(v186, v124 + *(v173 + 44), &qword_27F213FB0);
    v130 = (v124 + v128[13]);
    v131 = *&v249[16];
    *v130 = *v249;
    v130[1] = v131;
    v132 = v251;
    v130[2] = v250;
    v130[3] = v132;
    *(v124 + v128[12]) = 0xBFC657184AE74487;
    *(v124 + v128[14]) = 0x3FF0000000000000;
    v133 = v129;
    v134 = v172;
    sub_24E6009C8(v133, v172, &qword_27F213FB0);
    v135 = (*(v170 + 80) + 16) & ~*(v170 + 80);
    v136 = (v171 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
    v137 = (v136 + 15) & 0xFFFFFFFFFFFFFFF8;
    v138 = (v137 + 71) & 0xFFFFFFFFFFFFFFF8;
    v139 = v124;
    v140 = swift_allocObject();
    sub_24E6009C8(v134, v140 + v135, &qword_27F213FB0);
    *(v140 + v136) = 0xBFC657184AE74487;
    v141 = (v140 + v137);
    v142 = v139;
    v143 = v251;
    v141[2] = v250;
    v141[3] = v143;
    v144 = *&v249[16];
    *v141 = *v249;
    v141[1] = v144;
    *(v140 + v138) = 0x3FF0000000000000;
    v145 = (v139 + v128[15]);
    *v145 = sub_24E63DE54;
    v145[1] = v140;
    sub_24E63D388(v249, &v238);
    if (qword_27F211968 != -1)
    {
      swift_once();
    }

    v146 = xmmword_27F254460;
    v147 = qword_27F254470;
    v148 = qword_27F254478;
    v149 = sub_24F927618();
    v151 = v150;
    v152 = v130[3];
    v229 = v130[2];
    v230 = v152;
    v153 = v130[1];
    v228[0] = *v130;
    v228[1] = v153;
    v154 = *(v220 + 16);
    v224 = v228[0];
    v225 = v153;
    v226 = v229;
    v227 = v152;
    v233 = v229;
    v234 = v152;
    v231 = v228[0];
    v232 = v153;
    v220 = xmmword_24FA05420;
    *(v235 + 8) = xmmword_24FA05420;
    *&v235[0] = v154;
    *(&v235[1] + 1) = v148;
    *v236 = v147;
    *&v236[8] = v146;
    *&v236[24] = v149;
    v237 = v150;
    v155 = v174;
    sub_24E60169C(v142, v174, &qword_27F214A50);
    v156 = v155 + *(v189 + 36);
    v157 = *&v236[16];
    *(v156 + 96) = *v236;
    *(v156 + 112) = v157;
    *(v156 + 128) = v237;
    v158 = v234;
    *(v156 + 32) = v233;
    *(v156 + 48) = v158;
    v159 = v235[1];
    *(v156 + 64) = v235[0];
    *(v156 + 80) = v159;
    v160 = v232;
    *v156 = v231;
    *(v156 + 16) = v160;
    v238 = v224;
    v239 = v225;
    v240 = v226;
    v241 = v227;
    v243 = v220;
    v242 = v154;
    v244 = v148;
    v245 = v147;
    v246 = v146;
    v247 = v149;
    v248 = v151;
    sub_24E63D388(v228, v223);

    sub_24E60169C(&v231, v223, &qword_27F21E9A8);
    sub_24E601704(&v238, &qword_27F21E9A8);
    sub_24E601704(v142, &qword_27F214A50);
    v161 = v176;
    sub_24E6009C8(v155, v176, &qword_27F21E938);
    sub_24E60169C(v161, v191, &qword_27F21E938);
    swift_storeEnumTagMultiPayload();
    sub_24F516DB4();
    sub_24E8178E0();
    v162 = v192;
    sub_24F924E28();
    sub_24E60169C(v162, v204, &qword_27F246F78);
    swift_storeEnumTagMultiPayload();
    sub_24F516D28();
    sub_24F516F2C(&qword_27F2417F0, &qword_27F241778, &unk_24F9EE480, sub_24E7179AC);
    v163 = v205;
    sub_24F924E28();
    sub_24E601704(v162, &qword_27F246F78);
    sub_24E60169C(v163, v212, &qword_27F246F80);
    swift_storeEnumTagMultiPayload();
    sub_24F516C70();
    sub_24E701970();
    v164 = v209;
    sub_24F924E28();
    v165 = v163;
    v82 = v164;
    sub_24E601704(v165, &qword_27F246F80);
    sub_24E601704(v161, &qword_27F21E938);
    v117 = v222;
    v93 = v218;
    goto LABEL_39;
  }

LABEL_12:
  v64 = v222;
  v65 = *(v221 + 56);
  v66 = v218;

  return v65(v64, 1, 1, v66);
}

void sub_24F5153F4()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView();
  v6 = *(v0 + *(v5 + 20)) - 3;
  v7 = (v0 + *(v5 + 32));
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v6 > 1)
  {

    if ((v9 & 1) == 0)
    {
      sub_24F92BDC8();
      v12 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
      v8 = v14;
    }

    swift_getKeyPath();
    v14 = v8;
    sub_24F517E14(&qword_27F214D10, type metadata accessor for CardSafeArea);
    sub_24F91FD88();
  }

  else
  {

    if ((v9 & 1) == 0)
    {
      sub_24F92BDC8();
      v10 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
      v8 = v14;
    }

    swift_getKeyPath();
    v14 = v8;
    sub_24F517E14(&qword_27F214D10, type metadata accessor for CardSafeArea);
    sub_24F91FD88();

    v11 = *(v8 + 16);

    sub_24F925868();
    sub_24EA91914(v11);
  }
}

uint64_t sub_24F51570C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247008);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v37 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247010);
  MEMORY[0x28223BE20](v7);
  v9 = v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247018);
  MEMORY[0x28223BE20](v10);
  v12 = v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v37 - v14;
  v16 = *(v2 + *(type metadata accessor for LeaderboardWithFriendCard() + 36));
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = type metadata accessor for LeaderboardEntry();
    v19 = *(v18 - 8);
    v20 = (v16 + *(v18 + 28) + ((*(v19 + 80) + 32) & ~*(v19 + 80)));
    v21 = *v20;
    v22 = *(v20 + *(v19 + 72) * (v17 - 1));
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  sub_24F515C54(v2, v21 < v22, v6);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v6, v9, &qword_27F247008);
  v23 = &v9[*(v7 + 36)];
  v24 = v37[5];
  *(v23 + 4) = v37[4];
  *(v23 + 5) = v24;
  *(v23 + 6) = v37[6];
  v25 = v37[1];
  *v23 = v37[0];
  *(v23 + 1) = v25;
  v26 = v37[3];
  *(v23 + 2) = v37[2];
  *(v23 + 3) = v26;
  v27 = sub_24F927618();
  v29 = v28;
  v30 = &v12[*(v10 + 36)];
  sub_24F516258(v2, v30);
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247028) + 36));
  *v31 = v27;
  v31[1] = v29;
  sub_24E6009C8(v9, v12, &qword_27F247010);
  if (*(v2 + *(type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView() + 20)) > 4u)
  {

    v33 = 1;
    sub_24F516948(1);
    sub_24E601704(v12, &qword_27F247018);
  }

  else
  {
    v32 = sub_24F92CE08();

    sub_24F516948(v32 & 1);
    sub_24E601704(v12, &qword_27F247018);
    v33 = sub_24F92CE08();
  }

  KeyPath = swift_getKeyPath();
  sub_24E6009C8(v15, a1, &qword_27F247020);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247030);
  v36 = a1 + *(result + 36);
  *v36 = v33 & 1;
  *(v36 + 8) = KeyPath;
  *(v36 + 16) = 0;
  return result;
}

uint64_t sub_24F515C54@<X0>(uint64_t a1@<X0>, char a2@<W1>, int *a3@<X8>)
{
  v6 = type metadata accessor for CardLeaderboardView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247108);
  MEMORY[0x28223BE20](v42);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247110);
  MEMORY[0x28223BE20](v11);
  v13 = (&v41 - v12);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247080);
  MEMORY[0x28223BE20](v43);
  v15 = &v41 - v14;
  v16 = *(a1 + *(type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView() + 20));
  if (v16 - 2 >= 3)
  {
    v41 = v6;
    if (v16 >= 2)
    {
      v29 = *(a1 + *(type metadata accessor for LeaderboardWithFriendCard() + 36));

      sub_24F5153F4();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      type metadata accessor for HeroSafeAreaMetrics();
      sub_24F517E14(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
      v38 = sub_24F923598();
      *&v45 = v29;
      BYTE8(v45) = 5;
      BYTE9(v45) = a2 & 1;
      BYTE10(v45) = 5;
      *&v46 = v31;
      *(&v46 + 1) = v33;
      *v47 = v35;
      *&v47[8] = v37;
      *&v47[16] = v38;
      v47[24] = v39 & 1;
      v40 = v46;
      *v13 = v45;
      v13[1] = v40;
      v13[2] = *v47;
      *(v13 + 41) = *&v47[9];
      swift_storeEnumTagMultiPayload();
      sub_24F517E5C(&v45, v44);
      sub_24F5179F8();
      sub_24F517E14(&qword_27F247090, type metadata accessor for CardLeaderboardView);
      sub_24F924E28();
      sub_24E60169C(v15, v10, &qword_27F247080);
      swift_storeEnumTagMultiPayload();
      sub_24F51793C();
      sub_24F924E28();
      sub_24F517EB8(&v45);
      return sub_24E601704(v15, &qword_27F247080);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_24F51793C();
      return sub_24F924E28();
    }
  }

  else
  {
    v17 = *(type metadata accessor for LeaderboardWithFriendCard() + 36);
    v41 = a3;
    v18 = *(a1 + v17);

    sub_24F5153F4();
    *v8 = v18;
    v8[8] = v16;
    v8[9] = a2 & 1;
    v8[10] = v16;
    *(v8 + 2) = v19;
    *(v8 + 3) = v20;
    *(v8 + 4) = v21;
    *(v8 + 5) = v22;
    *(v8 + 6) = 0;
    *(v8 + 7) = swift_getKeyPath();
    v8[64] = 0;
    v23 = v6[10];
    *&v8[v23] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
    swift_storeEnumTagMultiPayload();
    v24 = &v8[v6[11]];
    *v24 = swift_getKeyPath();
    v24[8] = 0;
    v25 = &v8[v6[12]];
    v44[0] = sub_24E609BDC(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247118);
    sub_24F926F28();
    v26 = *(&v45 + 1);
    *v25 = v45;
    *(v25 + 1) = v26;
    v27 = &v8[v6[13]];
    *v27 = 0xD000000000000018;
    *(v27 + 1) = 0x800000024FA76070;
    sub_24F517D4C(v8, v13, type metadata accessor for CardLeaderboardView);
    swift_storeEnumTagMultiPayload();
    sub_24F5179F8();
    sub_24F517E14(&qword_27F247090, type metadata accessor for CardLeaderboardView);
    sub_24F924E28();
    sub_24E60169C(v15, v10, &qword_27F247080);
    swift_storeEnumTagMultiPayload();
    sub_24F51793C();
    sub_24F924E28();
    sub_24E601704(v15, &qword_27F247080);
    return sub_24F517DB4(v8, type metadata accessor for CardLeaderboardView);
  }
}

uint64_t sub_24F516258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v54 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2470A0);
  MEMORY[0x28223BE20](v49);
  *&v52 = &v41 - v2;
  *&v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2470A8);
  MEMORY[0x28223BE20](v51);
  v50 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2470B0);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2470B8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v41 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2470C0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2470C8);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView();
  v20 = *(v53 + v19[5]);
  if (v20 >= 4)
  {
    v41 = v4;
    v43 = v15;
    v22 = v50;
    v44 = v12;
    v23 = v51;
    v24 = v52;
    v45 = v13;
    v42 = v9;
    v46 = v18;
    v47 = v16;
    v48 = v10;
    if (v20 == 4)
    {
      v38 = v46;
      if (qword_27F20FFA0 != -1)
      {
        swift_once();
      }

      v25 = xmmword_27F39B048;

      v51 = unk_27F39B060;
      v52 = *(&xmmword_27F39B048 + 8);
      sub_24F5153F4();
      v27 = v26;
      sub_24F925868();
      v28 = sub_24EA91914(v27);
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v35 = sub_24F925808();
      LOBYTE(v55[0]) = 0;
      v36 = v43;
      *v43 = v25;
      v37 = v52;
      *(v36 + 3) = v51;
      *(v36 + 1) = v37;
      *(v36 + 40) = v35;
      *(v36 + 6) = v28;
      v36[7] = v30;
      v36[8] = v32;
      v36[9] = v34;
      *(v36 + 80) = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2470E0);
      sub_24F517AD8();
      sub_24F517B64();
      sub_24F924E28();
      v39 = &qword_27F2470C8;
      sub_24E60169C(v38, v44, &qword_27F2470C8);
      swift_storeEnumTagMultiPayload();
      sub_24F517A4C();
      sub_24F924E28();
    }

    else
    {
      sub_24E923A20(0xC, v53, 5, v53 + v19[6], *(v53 + v19[7]), v6);
      v55[3] = sub_24F925048();
      v55[4] = MEMORY[0x277CE0420];
      __swift_allocate_boxed_opaque_existential_1(v55);
      sub_24F925258();
      sub_24E615E00(v55, v22 + *(v23 + 36));
      sub_24E60169C(v6, v22, &qword_27F214A20);
      sub_24E60169C(v22, v24, &qword_27F2470A8);
      swift_storeEnumTagMultiPayload();
      sub_24F517CA8();
      sub_24E701970();
      v38 = v42;
      sub_24F924E28();
      sub_24E601704(v22, &qword_27F2470A8);
      sub_24E601704(v6, &qword_27F214A20);
      __swift_destroy_boxed_opaque_existential_1(v55);
      *(v38 + *(v7 + 36)) = sub_24F925808();
      v39 = &qword_27F2470B0;
      sub_24E60169C(v38, v43, &qword_27F2470B0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2470E0);
      sub_24F517AD8();
      sub_24F517B64();
      v40 = v46;
      sub_24F924E28();
      sub_24E60169C(v40, v44, &qword_27F2470C8);
      swift_storeEnumTagMultiPayload();
      sub_24F517A4C();
      sub_24F924E28();
      sub_24E601704(v40, &qword_27F2470C8);
    }

    return sub_24E601704(v38, v39);
  }

  else
  {
    *v12 = sub_24F926C98();
    swift_storeEnumTagMultiPayload();
    sub_24F517A4C();
    return sub_24F924E28();
  }
}

uint64_t sub_24F516948(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247038);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = sub_24F9249B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247040);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v16 - v13;
  if (a1)
  {
    (*(v8 + 104))(v10, *MEMORY[0x277CE00F0], v7, v12);
    sub_24F924E68();
    sub_24F924E48();
    sub_24F924E58();
    sub_24E60169C(v2, v14, &qword_27F247018);
    sub_24E60169C(v14, v6, &qword_27F247040);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247018);
    sub_24F51765C();
    sub_24F5176E8();
    sub_24F924E28();
    return sub_24E601704(v14, &qword_27F247040);
  }

  else
  {
    sub_24E60169C(v2, v6, &qword_27F247018);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247018);
    sub_24F51765C();
    sub_24F5176E8();
    return sub_24F924E28();
  }
}

uint64_t type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView()
{
  result = qword_27F246FD8;
  if (!qword_27F246FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F516C70()
{
  result = qword_27F246FB0;
  if (!qword_27F246FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246F80);
    sub_24F516D28();
    sub_24F516F2C(&qword_27F2417F0, &qword_27F241778, &unk_24F9EE480, sub_24E7179AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246FB0);
  }

  return result;
}

unint64_t sub_24F516D28()
{
  result = qword_27F246FB8;
  if (!qword_27F246FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246F78);
    sub_24F516DB4();
    sub_24E8178E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246FB8);
  }

  return result;
}

unint64_t sub_24F516DB4()
{
  result = qword_27F246FC0;
  if (!qword_27F246FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246FA0);
    sub_24F516E40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246FC0);
  }

  return result;
}

unint64_t sub_24F516E40()
{
  result = qword_27F246FC8;
  if (!qword_27F246FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246F98);
    sub_24F517E14(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView);
    sub_24F517E14(&qword_27F246FD0, type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246FC8);
  }

  return result;
}

uint64_t sub_24F516F2C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_24F517E14(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F516FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F517050()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F9289E8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24F5171AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LeaderboardWithFriendCard();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24F923E98();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24F5172CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LeaderboardWithFriendCard();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_24F923E98();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F5173D4()
{
  type metadata accessor for LeaderboardWithFriendCard();
  if (v0 <= 0x3F)
  {
    sub_24F923E98();
    if (v1 <= 0x3F)
    {
      sub_24F517490();
      if (v2 <= 0x3F)
      {
        sub_24E7268F0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F517490()
{
  if (!qword_27F246FE8)
  {
    type metadata accessor for LeaderboardWithFriendCard();
    sub_24F517E14(&qword_27F246F58, type metadata accessor for LeaderboardWithFriendCard);
    v0 = type metadata accessor for DefaultCardConfiguration();
    if (!v1)
    {
      atomic_store(v0, &qword_27F246FE8);
    }
  }
}

unint64_t sub_24F517528()
{
  result = qword_27F246FF0;
  if (!qword_27F246FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246FF8);
    sub_24F5175AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246FF0);
  }

  return result;
}

unint64_t sub_24F5175AC()
{
  result = qword_27F247000;
  if (!qword_27F247000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246FA8);
    sub_24F516C70();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247000);
  }

  return result;
}

unint64_t sub_24F51765C()
{
  result = qword_27F247048;
  if (!qword_27F247048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247040);
    sub_24F5176E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247048);
  }

  return result;
}

unint64_t sub_24F5176E8()
{
  result = qword_27F247050;
  if (!qword_27F247050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247018);
    sub_24F5177A0();
    sub_24E602068(&qword_27F247098, &qword_27F247028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247050);
  }

  return result;
}

unint64_t sub_24F5177A0()
{
  result = qword_27F247058;
  if (!qword_27F247058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247010);
    sub_24F51782C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247058);
  }

  return result;
}

unint64_t sub_24F51782C()
{
  result = qword_27F247060;
  if (!qword_27F247060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247008);
    sub_24F5178B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247060);
  }

  return result;
}

unint64_t sub_24F5178B0()
{
  result = qword_27F247068;
  if (!qword_27F247068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247070);
    sub_24F51793C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247068);
  }

  return result;
}

unint64_t sub_24F51793C()
{
  result = qword_27F247078;
  if (!qword_27F247078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247080);
    sub_24F5179F8();
    sub_24F517E14(&qword_27F247090, type metadata accessor for CardLeaderboardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247078);
  }

  return result;
}

unint64_t sub_24F5179F8()
{
  result = qword_27F247088;
  if (!qword_27F247088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247088);
  }

  return result;
}

unint64_t sub_24F517A4C()
{
  result = qword_27F2470D0;
  if (!qword_27F2470D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2470C8);
    sub_24F517AD8();
    sub_24F517B64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2470D0);
  }

  return result;
}

unint64_t sub_24F517AD8()
{
  result = qword_27F2470D8;
  if (!qword_27F2470D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2470E0);
    sub_24E86BC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2470D8);
  }

  return result;
}

unint64_t sub_24F517B64()
{
  result = qword_27F2470E8;
  if (!qword_27F2470E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2470B0);
    sub_24F517C1C();
    sub_24E602068(&qword_27F21E230, &qword_27F21E238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2470E8);
  }

  return result;
}

unint64_t sub_24F517C1C()
{
  result = qword_27F2470F0;
  if (!qword_27F2470F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2470F8);
    sub_24F517CA8();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2470F0);
  }

  return result;
}

unint64_t sub_24F517CA8()
{
  result = qword_27F247100;
  if (!qword_27F247100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2470A8);
    sub_24E701970();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247100);
  }

  return result;
}

uint64_t sub_24F517D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F517DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F517E14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F517F10()
{
  result = qword_27F247120;
  if (!qword_27F247120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247030);
    sub_24F517F9C();
    sub_24F3147F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247120);
  }

  return result;
}

unint64_t sub_24F517F9C()
{
  result = qword_27F247128;
  if (!qword_27F247128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247020);
    sub_24F51765C();
    sub_24F5176E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247128);
  }

  return result;
}

uint64_t sub_24F51803C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AchievementDetails();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_24F929158();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24F518174(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AchievementDetails();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_24F929158();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for AchievementDetailsPageView()
{
  result = qword_27F247130;
  if (!qword_27F247130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F5182E4()
{
  type metadata accessor for AchievementDetails();
  if (v0 <= 0x3F)
  {
    sub_24F928FD8();
    if (v1 <= 0x3F)
    {
      sub_24F1F9B74();
      if (v2 <= 0x3F)
      {
        sub_24F929158();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F5183BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for AchievementsDetailsPageMainContentView();
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247140);
  MEMORY[0x28223BE20](v43);
  v45 = &v42 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247148);
  MEMORY[0x28223BE20](v46);
  v44 = &v42 - v15;
  v16 = a1;
  sub_24F5197DC(a1, v13, type metadata accessor for AchievementDetails);
  sub_24F923998();
  v18 = v17;
  v20 = v19;
  *&v13[v11[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v21 = &v13[v11[5]];
  *v21 = v18;
  *(v21 + 1) = v20;
  v22 = v11[6];
  if (qword_27F210E90 != -1)
  {
    swift_once();
  }

  memcpy(v50, &xmmword_27F237800, 0x178uLL);
  memcpy(&v13[v22], &xmmword_27F237800, 0x178uLL);
  *&v13[v11[7]] = 0x4078900000000000;
  v23 = v11[9];
  *&v13[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for AchievementDetails();
  v25 = *(v24 + 48);
  v26 = sub_24F928818();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v10, v16 + v25, v26);
  (*(v27 + 56))(v10, 0, 1, v26);
  v28 = (v16 + *(type metadata accessor for AchievementDetailsPageView() + 28));
  v30 = *v28;
  v29 = v28[1];
  v49[47] = v30;
  v49[48] = v29;
  sub_24E76A93C(v50, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215810);
  sub_24F926F38();
  v31 = sub_24F921B48();
  (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
  sub_24F519AFC(&qword_27F247150, type metadata accessor for AchievementsDetailsPageMainContentView);
  v32 = v45;
  sub_24F925E58();

  sub_24E601704(v7, &qword_27F2157E8);
  sub_24E601704(v10, &qword_27F2157F0);
  sub_24F519854(v13);
  v33 = *(v24 + 40);
  v34 = v32 + *(v43 + 36);
  sub_24E7D14D8(v16 + v33, v34);
  v35 = type metadata accessor for PageBackgroundViewModifier(0);
  *(v34 + *(v35 + 20)) = 3;
  *(v34 + *(v35 + 24)) = 0;
  v36 = v47;
  sub_24E7D14D8(v16 + v33, v47);
  v37 = type metadata accessor for Page.Background(0);
  LOBYTE(v33) = (*(*(v37 - 8) + 48))(v36, 1, v37) == 1;
  sub_24E601704(v36, &qword_27F21D8F8);
  KeyPath = swift_getKeyPath();
  v39 = v44;
  sub_24F5198B8(v32, v44);
  v40 = v39 + *(v46 + 36);
  *v40 = KeyPath;
  *(v40 + 8) = v33;
  sub_24F519928();
  sub_24F9267F8();
  return sub_24F519B44(v39);
}

uint64_t sub_24F5189C4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24F5197DC(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AchievementDetailsPageView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_24F5196F8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_24F51975C;
  a2[1] = v7;
  return result;
}

uint64_t sub_24F518AC4()
{
  v62 = type metadata accessor for AchievementDetailsPageView();
  v1 = *(*(v62 - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);
  __swift_destroy_boxed_opaque_existential_1(v2);

  v3 = type metadata accessor for AchievementDetailsHeader();
  v4 = v2 + v3[7];
  v5 = sub_24F9289E8();
  v61 = *(v5 - 8);
  v58 = *(v61 + 48);
  if (!v58(v4, 1, v5))
  {
    (*(v61 + 8))(v4, v5);
  }

  v60 = v5;
  v6 = *(type metadata accessor for AchievementBadgeModel() + 20);
  type metadata accessor for AchievementProgressStatus(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v7 = sub_24F91F648();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  v8 = v2 + v3[8];
  if (*(v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v9 = v3[9];
  v10 = sub_24F929608();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  v59 = v11;
  v13 = type metadata accessor for AchievementDetails();
  v14 = v2 + v13[5];
  v15 = type metadata accessor for GameLockup(0);
  if (!(*(*(v15 - 1) + 48))(v14, 1, v15))
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v16 = v15[5];
    v17 = type metadata accessor for TransitionalGameIcon(0);
    if (!(*(*(v17 - 8) + 48))(v14 + v16, 1, v17))
    {
      (*(v61 + 8))(v14 + v16, v60);
    }

    v18 = v14 + v15[10];
    v19 = type metadata accessor for DescriptionLabelConfig(0);
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {

      v20 = v18 + *(v19 + 24);
      v21 = type metadata accessor for JSColor();
      if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
      {
        v22 = sub_24F928388();
        (*(*(v22 - 8) + 8))(v20, v22);
      }
    }

    v23 = v14 + v15[13];
    v24 = type metadata accessor for GameLockup.TrailingButtonType(0);
    if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        __swift_destroy_boxed_opaque_existential_1(v23 + 16);
      }

      else
      {
        v25 = type metadata accessor for OfferButtonInfo();
        if (!(*(*(v25 - 8) + 48))(v23, 1, v25))
        {

          v26 = *(v25 + 24);
          v27 = sub_24F91F4A8();
          v56 = *(v27 - 8);
          v57 = v26;
          v28 = v23 + v26;
          v29 = v27;
          if (!(*(v56 + 48))(v28, 1, v27))
          {
            (*(v56 + 8))(v23 + v57, v29);
          }
        }
      }
    }

    v30 = v15[15];
    if (!v12(v14 + v30, 1, v10))
    {
      (*(v59 + 8))(v14 + v30, v10);
    }

    v31 = v14 + v15[16];
    if (*(v31 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    v32 = v15[17];
    v33 = sub_24F92A6D8();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v14 + v32, 1, v33))
    {
      (*(v34 + 8))(v14 + v32, v33);
    }

    if (*(v14 + v15[21] + 8))
    {
    }
  }

  v35 = v2 + v13[10];
  v36 = type metadata accessor for Page.Background(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          (*(v61 + 8))(v35, v60);
          v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v46 = sub_24F922348();
          v47 = *(v46 - 8);
          if (!(*(v47 + 48))(v35 + v45, 1, v46))
          {
            (*(v47 + 8))(v35 + v45, v46);
          }
        }
      }

      else
      {
        (*(v61 + 8))(v35, v60);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      if (!v58(v35, 1, v60))
      {
        (*(v61 + 8))(v35, v60);
      }

      v48 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v49 = type metadata accessor for GSKVideo();
      if (!(*(*(v49 - 1) + 48))(v48, 1, v49))
      {
        v50 = sub_24F91F4A8();
        (*(*(v50 - 8) + 8))(v48, v50);
        (*(v61 + 8))(v48 + v49[5], v60);
        v51 = v49[9];
        v52 = sub_24F928698();
        v53 = *(v52 - 8);
        v54 = *(v53 + 48);
        if (!v54(v48 + v51, 1, v52))
        {
          (*(v53 + 8))(v48 + v51, v52);
        }

        v55 = v49[10];
        if (!v54(v48 + v55, 1, v52))
        {
          (*(v53 + 8))(v48 + v55, v52);
        }
      }
    }

    else if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      v44 = sub_24F928388();
      (*(*(v44 - 8) + 8))(v35, v44);
    }
  }

  if (*(v2 + v13[11]) != 1)
  {
  }

  v37 = v13[12];
  v38 = sub_24F928818();
  (*(*(v38 - 8) + 8))(v2 + v37, v38);
  if (*(v2 + v13[13] + 8))
  {
  }

  v39 = v2 + *(v62 + 24);

  v40 = *(v62 + 32);
  v41 = sub_24F929158();
  (*(*(v41 - 8) + 8))(v2 + v40, v41);

  return swift_deallocObject();
}

uint64_t sub_24F5196F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementDetailsPageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F51975C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AchievementDetailsPageView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F5183BC(v4, a1);
}

uint64_t sub_24F5197DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F519854(uint64_t a1)
{
  v2 = type metadata accessor for AchievementsDetailsPageMainContentView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F5198B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F519928()
{
  result = qword_27F247158;
  if (!qword_27F247158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247148);
    sub_24F5199E0();
    sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247158);
  }

  return result;
}

unint64_t sub_24F5199E0()
{
  result = qword_27F247160;
  if (!qword_27F247160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247140);
    type metadata accessor for AchievementsDetailsPageMainContentView();
    sub_24F519AFC(&qword_27F247150, type metadata accessor for AchievementsDetailsPageMainContentView);
    swift_getOpaqueTypeConformance2();
    sub_24F519AFC(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247160);
  }

  return result;
}

uint64_t sub_24F519AFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F519B44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F519BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_24F028328(a1, &v8 - v3);
  v5 = sub_24F922348();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24F0F8BDC(v4);
  }

  else
  {
    sub_24F9222E8();
    (*(v6 + 8))(v4, v5);
  }

  return sub_24F926168();
}

uint64_t sub_24F519D70(uint64_t a1)
{
  v2 = sub_24F519F1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F519DAC(uint64_t a1)
{
  v2 = sub_24F519F1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F519E08(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247178);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F519F1C();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F519F1C()
{
  result = qword_27F247180;
  if (!qword_27F247180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247180);
  }

  return result;
}

unint64_t sub_24F519F84()
{
  result = qword_27F247188;
  if (!qword_27F247188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247188);
  }

  return result;
}

unint64_t sub_24F519FDC()
{
  result = qword_27F247190;
  if (!qword_27F247190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247190);
  }

  return result;
}

uint64_t sub_24F51A030(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E8617B4(v2);
  }

  v3 = *(v2 + 2);
  v33[0] = (v2 + 32);
  v33[1] = v3;
  result = sub_24F92CD78();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 112;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*v12)
          {
            break;
          }

          if (!v12[88])
          {
            break;
          }

          v13 = v12 - 80;
          v14 = *(v12 + 24);
          v27 = *(v12 + 8);
          v28 = v14;
          v15 = *(v12 + 40);
          v16 = *(v12 + 56);
          v17 = *(v12 + 72);
          v32 = *(v12 + 44);
          v30 = v16;
          v31 = v17;
          v29 = v15;
          *(v12 + 11) = *v12;
          v18 = *(v12 - 2);
          *(v12 + 72) = *(v12 - 1);
          v19 = *(v12 - 4);
          v20 = *(v12 - 3);
          *(v12 + 56) = v18;
          *(v12 + 40) = v20;
          *(v12 + 8) = *(v12 - 5);
          *(v12 + 24) = v19;
          v21 = v28;
          *v13 = v27;
          *(v13 + 1) = v21;
          v22 = v29;
          v23 = v30;
          v24 = v31;
          *v12 = v32;
          *(v13 + 3) = v23;
          *(v13 + 4) = v24;
          *(v13 + 2) = v22;
          v12 -= 88;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 88;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_24F92B618();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v27 = v7 + 32;
    *(&v27 + 1) = v6;
    sub_24F521388(&v27, v26, v33, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24F51A1D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480);
  v2 = sub_24F92AE38();

  v1(v2);
}

uint64_t sub_24F51A268()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471D0);
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - v1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2471E8);
  v3 = swift_allocObject();
  *&v3[(*(*v3 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24E6009C8(v2, &v3[*(*v3 + *MEMORY[0x277D841D0] + 16)], &unk_27F2471D0);
  off_27F2471A0 = v3;
  return result;
}

uint64_t sub_24F51A3B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8);
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - v1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2471E0);
  v3 = swift_allocObject();
  *&v3[(*(*v3 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24E6009C8(v2, &v3[*(*v3 + *MEMORY[0x277D841D0] + 16)], &qword_27F242AC8);
  off_27F2471A8 = v3;
  return result;
}

uint64_t sub_24F51A500()
{
  v0 = type metadata accessor for DataIntentCacheBusterStreamState();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471F0);
  v4 = swift_allocObject();
  *&v4[(*(*v4 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24F5242C4(v2, &v4[*(*v4 + *MEMORY[0x277D841D0] + 16)], type metadata accessor for DataIntentCacheBusterStreamState);
  off_27F2471B0 = v4;
  return result;
}

id sub_24F51A678()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F941C80;
  result = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  *(v0 + 32) = result;
  qword_27F2471B8 = v0;
  return result;
}

uint64_t sub_24F51A6F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = type metadata accessor for DataIntentCacheBusterStreamState();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F52425C(a1, v9, type metadata accessor for DataIntentCacheBusterStreamState);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return sub_24F52432C(v9, type metadata accessor for DataIntentCacheBusterStreamState);
  }

  sub_24F52432C(a1, type metadata accessor for DataIntentCacheBusterStreamState);
  v12 = sub_24E802CE0(&unk_2861C2388);
  v16[1] = v1;
  v13 = MEMORY[0x28223BE20](v12);
  v16[-4] = v14;
  v16[-3] = &unk_24FA059B0;
  v16[-2] = 0;
  LOWORD(v16[-1]) = 1;
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3, v13);
  sub_24F92B928();

  return (*(v11 + 56))(a1, 0, 1, v10);
}

uint64_t sub_24F51A9C4()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendSuggestionsDataIntentImplementation] UpdateListener says friend suggestions updated, dropping previously cached suggestions.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  if (qword_27F211320 != -1)
  {
    swift_once();
  }

  v5 = off_27F2471A0;
  v6 = MEMORY[0x277D841D0];
  v7 = *(*off_27F2471A0 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*off_27F2471A0 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F2471A0 + v8));
  sub_24E601704(&v5[v7], &unk_27F2471D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471D0);
  swift_storeEnumTagMultiPayload();
  os_unfair_lock_unlock(&v5[v8]);
  if (qword_27F211328 != -1)
  {
    swift_once();
  }

  v9 = off_27F2471A8;
  v10 = *(*off_27F2471A8 + *v6 + 16);
  v11 = (*(*off_27F2471A8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F2471A8 + v11));
  sub_24E601704(&v9[v10], &qword_27F242AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8);
  swift_storeEnumTagMultiPayload();
  os_unfair_lock_unlock(&v9[v11]);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24F51AC6C(uint64_t a1, uint64_t a2)
{
  v2[243] = a2;
  v2[242] = a1;
  v2[244] = *(type metadata accessor for ActivityFriendSuggestion(0) - 8);
  v2[245] = swift_task_alloc();
  v2[246] = swift_task_alloc();
  v3 = type metadata accessor for FriendSuggestion(0);
  v2[247] = v3;
  v2[248] = *(v3 - 8);
  v2[249] = swift_task_alloc();
  v2[250] = swift_task_alloc();
  v2[251] = swift_task_alloc();
  v2[252] = swift_task_alloc();
  v2[253] = swift_task_alloc();
  v4 = type metadata accessor for Player(0);
  v2[254] = v4;
  v5 = *(v4 - 8);
  v2[255] = v5;
  v2[256] = *(v5 + 64);
  v2[257] = swift_task_alloc();
  v2[258] = swift_task_alloc();
  v2[259] = swift_task_alloc();
  v2[260] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F51AE4C, 0, 0);
}

uint64_t sub_24F51AE4C()
{
  *(v0 + 2088) = sub_24F92B7F8();
  *(v0 + 2096) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F51AEE4, v2, v1);
}

uint64_t sub_24F51AEE4()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 2104) = *(v0 + 1784);

  return MEMORY[0x2822009F8](sub_24F51AF6C, 0, 0);
}

uint64_t sub_24F51AF6C()
{
  *(v0 + 2112) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F51AFF8, v2, v1);
}

uint64_t sub_24F51AFF8()
{
  v1 = v0[263];
  v2 = v0[260];

  swift_getKeyPath();
  v0[229] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24F52425C(v1 + v3, v2, type metadata accessor for Player);

  v4 = swift_task_alloc();
  v0[265] = v4;
  *v4 = v0;
  v4[1] = sub_24F51B13C;
  v5 = v0[243];

  return sub_24E64AFB8(2, v5);
}

uint64_t sub_24F51B13C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2128) = a1;
  *(v3 + 2136) = v1;

  if (v1)
  {
    v4 = sub_24F51C2FC;
  }

  else
  {
    v4 = sub_24F51B254;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F51B254()
{
  v42 = v0;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1936);
  v2 = sub_24F9220D8();
  *(v0 + 2144) = __swift_project_value_buffer(v2, qword_27F39E808);

  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1936);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    v40 = v7;
    *v6 = 136315138;
    if (v5)
    {
      v9 = *(v1 + 16);
      v10 = MEMORY[0x277D84F90];
      if (v9)
      {
        v37 = v7;
        v38 = v6;
        v39 = v4;
        v41 = MEMORY[0x277D84F90];
        sub_24F4578E0(0, v9, 0);
        v11 = (v1 + 32);
        v10 = v41;
        do
        {
          v13 = *v11++;
          v12 = v13;
          v14 = v13 == 1;
          if (v13 == 1)
          {
            v15 = 0x746E6F4368737570;
          }

          else
          {
            v15 = 0x79616C5068737570;
          }

          if (v14)
          {
            v16 = 0xEB00000000746361;
          }

          else
          {
            v16 = 0xEA00000000007265;
          }

          if (v12)
          {
            v17 = v15;
          }

          else
          {
            v17 = 0x736567617373656DLL;
          }

          if (v12)
          {
            v18 = v16;
          }

          else
          {
            v18 = 0xE800000000000000;
          }

          v41 = v10;
          v20 = *(v10 + 16);
          v19 = *(v10 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_24F4578E0((v19 > 1), v20 + 1, 1);
            v10 = v41;
          }

          *(v10 + 16) = v20 + 1;
          v21 = v10 + 16 * v20;
          *(v21 + 32) = v17;
          *(v21 + 40) = v18;
          --v9;
        }

        while (v9);
        v4 = v39;
        v8 = v37;
        v6 = v38;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v22 = MEMORY[0x253050F40](v10, MEMORY[0x277D837D0]);
    v24 = v23;

    v25 = sub_24E7620D4(v22, v24, &v40);

    *(v6 + 4) = v25;
    _os_log_impl(&dword_24E5DD000, v3, v4, "[FriendSuggestionsDataIntentImplementation] Fetching friend suggestions with filters: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v26 = *(v0 + 2080);
  v27 = *(v0 + 2072);
  v28 = *(v0 + 2048);
  v29 = *(v0 + 2040);
  v30 = *(v0 + 1944);
  v31 = *(v0 + 1936);
  v32 = swift_allocObject();
  *(v0 + 2152) = v32;
  *(v32 + 16) = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247208);
  swift_asyncLet_begin();
  sub_24F52425C(v26, v27, type metadata accessor for Player);
  v33 = *(v29 + 80);
  *(v0 + 1420) = v33;
  v34 = (v33 + 24) & ~v33;
  v35 = swift_allocObject();
  *(v0 + 2160) = v35;
  *(v35 + 16) = v31;
  sub_24F5242C4(v27, v35 + v34, type metadata accessor for Player);
  *(v35 + ((v28 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247210);
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 1880, sub_24F51B6AC, v0 + 1296);
}

uint64_t sub_24F51B6AC()
{
  v1[271] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 241, sub_24F51C41C, v1 + 178);
  }

  else
  {
    v1[272] = v1[235];

    return MEMORY[0x282200930](v1 + 82, v1 + 241, sub_24F51B768, v1 + 210);
  }
}

uint64_t sub_24F51B768()
{
  *(v1 + 2184) = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 656, v1 + 1928, sub_24F51C5AC, v1 + 1744);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24F51B820, 0, 0);
  }
}

uint64_t sub_24F51B820()
{
  v1 = *(v0 + 2176);
  v2 = *(v0 + 1936);
  v3 = *(v0 + 1928);

  v89 = sub_24F51F18C(v2, v1);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  v87 = v3;
  if (v4)
  {
    v6 = *(v0 + 1984);
    v7 = *(v0 + 1952);
    v92 = MEMORY[0x277D84F90];
    v8 = sub_24F458E8C(0, v4, 0);
    v12 = 0;
    v13 = v92;
    v85 = v7;
    v14 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    while (v12 < *(v3 + 16))
    {
      v15 = *(v0 + 2024);
      v16 = *(v0 + 1968);
      sub_24F52425C(v14 + *(v85 + 72) * v12, v16, type metadata accessor for ActivityFriendSuggestion);
      sub_24F52425C(v16, v15, type metadata accessor for ActivityFriendSuggestion);
      swift_storeEnumTagMultiPayload();
      sub_24F52432C(v16, type metadata accessor for ActivityFriendSuggestion);
      v18 = *(v92 + 16);
      v17 = *(v92 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_24F458E8C(v17 > 1, v18 + 1, 1);
      }

      v19 = *(v0 + 2024);
      ++v12;
      *(v92 + 16) = v18 + 1;
      v8 = sub_24F5242C4(v19, v92 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, type metadata accessor for FriendSuggestion);
      v3 = v87;
      if (v4 == v12)
      {
        v5 = MEMORY[0x277D84F90];
        goto LABEL_9;
      }
    }

    goto LABEL_70;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_9:
  v91 = v13;
  v20 = v89;
  v21 = *(v89 + 16);
  if (v21)
  {
    v93 = v5;
    v8 = sub_24F458E8C(0, v21, 0);
    if (!*(v89 + 16))
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      return MEMORY[0x282200920](v8, v9, v10, v11);
    }

    v22 = 0;
    v23 = v93;
    v24 = *(v0 + 1984);
    v25 = 32;
    while (1)
    {
      v26 = *(v0 + 2016);
      v27 = *(v20 + v25 + 16);
      *(v0 + 1336) = *(v20 + v25);
      *(v0 + 1352) = v27;
      v29 = *(v20 + v25 + 48);
      v28 = *(v20 + v25 + 64);
      v30 = *(v20 + v25 + 32);
      *(v0 + 1416) = *(v20 + v25 + 80);
      *(v0 + 1384) = v29;
      *(v0 + 1400) = v28;
      *(v0 + 1368) = v30;
      memmove(v26, (v20 + v25), 0x52uLL);
      swift_storeEnumTagMultiPayload();
      sub_24E7FA89C(v0 + 1336, v0 + 1464);
      v32 = *(v93 + 16);
      v31 = *(v93 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_24F458E8C(v31 > 1, v32 + 1, 1);
      }

      v33 = *(v0 + 2016);
      *(v93 + 16) = v32 + 1;
      v8 = sub_24F5242C4(v33, v93 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v32, type metadata accessor for FriendSuggestion);
      if (v21 - 1 == v22)
      {
        break;
      }

      ++v22;
      v20 = v89;
      v25 += 88;
      if (v22 >= *(v89 + 16))
      {
        goto LABEL_69;
      }
    }
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v8 = sub_24EA0C5BC(v23);
  v34 = v91;
  v82 = *(v91 + 16);
  if (v82)
  {
    v35 = 0;
    v80 = (v0 + 1592);
    v36 = *(v0 + 2128);
    v37 = *(v0 + 2040);
    v77 = *(v0 + 2032);
    v81 = *(v0 + 1984);
    v88 = *(v0 + 2064);
    v90 = v36 + ((*(v0 + 1420) + 32) & ~*(v0 + 1420));
    v38 = MEMORY[0x277D84F90];
    v78 = *(v0 + 1960);
    while (1)
    {
      if (v35 >= *(v34 + 16))
      {
        goto LABEL_71;
      }

      v40 = v37;
      v41 = *(v0 + 2008);
      v42 = *(v0 + 2000);
      v84 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v86 = v35;
      v83 = *(v81 + 72);
      sub_24F52425C(v34 + v84 + v83 * v35, v41, type metadata accessor for FriendSuggestion);
      sub_24F52425C(v41, v42, type metadata accessor for FriendSuggestion);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v8 = *(v0 + 2000);
      if (EnumCaseMultiPayload == 1)
      {
        break;
      }

      v79 = v38;
      v52 = *(v8 + 16);
      *v80 = *v8;
      *(v0 + 1608) = v52;
      v53 = *(v8 + 32);
      v54 = *(v8 + 48);
      v55 = *(v8 + 64);
      *(v0 + 1672) = *(v8 + 80);
      *(v0 + 1640) = v54;
      *(v0 + 1656) = v55;
      *(v0 + 1624) = v53;
      v56 = *(v36 + 16);
      if (v56)
      {
        v57 = 0;
        v58 = (*(v0 + 2056) + *(v77 + 40));
        v59 = *(v0 + 1656);
        v60 = *(v0 + 1664);
        while (v57 < *(v36 + 16))
        {
          sub_24F52425C(v90 + *(v37 + 72) * v57, *(v0 + 2056), type metadata accessor for Player);
          v61 = v58[1];
          if (v61)
          {
            v62 = *(v0 + 2056);
            if (*v58 == v59 && v61 == v60)
            {
              sub_24F52432C(*(v0 + 2056), type metadata accessor for Player);
              v37 = v40;
LABEL_56:
              sub_24E7FA8F8(v80);
              v38 = v79;
              v34 = v91;
LABEL_23:
              v39 = v86;
              v8 = sub_24F52432C(*(v0 + 2008), type metadata accessor for FriendSuggestion);
              goto LABEL_24;
            }

            v64 = sub_24F92CE08();
            v8 = sub_24F52432C(v62, type metadata accessor for Player);
            v37 = v40;
            if (v64)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v8 = sub_24F52432C(*(v0 + 2056), type metadata accessor for Player);
          }

          if (v56 == ++v57)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_68;
      }

LABEL_48:
      sub_24E7FA8F8(v80);
      v38 = v79;
      v34 = v91;
LABEL_50:
      sub_24F5242C4(*(v0 + 2008), *(v0 + 1992), type metadata accessor for FriendSuggestion);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24F458E8C(0, *(v38 + 16) + 1, 1);
      }

      v66 = *(v38 + 16);
      v65 = *(v38 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_24F458E8C(v65 > 1, v66 + 1, 1);
      }

      v67 = *(v0 + 1992);
      *(v38 + 16) = v66 + 1;
      v8 = sub_24F5242C4(v67, v38 + v84 + v66 * v83, type metadata accessor for FriendSuggestion);
      v39 = v86;
LABEL_24:
      v35 = v39 + 1;
      if (v35 == v82)
      {
        goto LABEL_58;
      }
    }

    v8 = sub_24F5242C4(v8, *(v0 + 1960), type metadata accessor for ActivityFriendSuggestion);
    v44 = 0;
    v45 = *(v36 + 16);
    v34 = v91;
    while (1)
    {
      if (v45 == v44)
      {
        sub_24F52432C(*(v0 + 1960), type metadata accessor for ActivityFriendSuggestion);
        goto LABEL_50;
      }

      if (v44 >= *(v36 + 16))
      {
        break;
      }

      v46 = *(v0 + 2064);
      v47 = *(v0 + 1960);
      sub_24F52425C(v90 + *(v37 + 72) * v44, v46, type metadata accessor for Player);
      v48 = *v46;
      v49 = *(v0 + 2064);
      if (v48 == *v47 && *(v88 + 8) == *(v78 + 8))
      {
        sub_24F52432C(*(v0 + 2064), type metadata accessor for Player);
LABEL_22:
        sub_24F52432C(*(v0 + 1960), type metadata accessor for ActivityFriendSuggestion);
        goto LABEL_23;
      }

      ++v44;
      v51 = sub_24F92CE08();
      v8 = sub_24F52432C(v49, type metadata accessor for Player);
      if (v51)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v38 = MEMORY[0x277D84F90];
LABEL_58:
  *(v0 + 2192) = v38;

  v68 = sub_24F9220B8();
  v69 = sub_24F92BD98();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 134217984;
    v71 = *(v34 + 16);
    v72 = *(v38 + 16);

    *(v70 + 4) = v71 - v72;

    _os_log_impl(&dword_24E5DD000, v68, v69, "[FriendSuggestionsDataIntentImplementation] Filtered out %ld pending friend requests.", v70, 0xCu);
    MEMORY[0x2530542D0](v70, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v73 = sub_24F9220B8();
  v74 = sub_24F92BD98();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 134217984;
    *(v75 + 4) = *(v38 + 16);

    _os_log_impl(&dword_24E5DD000, v73, v74, "[FriendSuggestionsDataIntentImplementation] Fetched %ld friend suggestions.", v75, 0xCu);
    MEMORY[0x2530542D0](v75, -1, -1);
  }

  else
  {
  }

  v10 = sub_24F51C164;
  v8 = v0 + 656;
  v9 = v0 + 1928;
  v11 = v0 + 1840;

  return MEMORY[0x282200920](v8, v9, v10, v11);
}

uint64_t sub_24F51C1BC()
{
  sub_24F52432C(v0[260], type metadata accessor for Player);

  v1 = v0[1];
  v2 = v0[274];

  return v1(v2);
}

uint64_t sub_24F51C2FC()
{
  sub_24F52432C(*(v0 + 2080), type metadata accessor for Player);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F51C474()
{
  sub_24F52432C(*(v0 + 2080), type metadata accessor for Player);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F51C604()
{
  sub_24F52432C(*(v0 + 2080), type metadata accessor for Player);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F51C73C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24F51C75C, 0, 0);
}

uint64_t sub_24F51C75C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = (v1 + 32);
    v4 = v2;
    v5 = (v1 + 32);
    while (v4)
    {
      if (*v5 && *v5 != 2)
      {
LABEL_12:

        goto LABEL_13;
      }

      v6 = sub_24F92CE08();

      ++v5;
      --v4;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    while (v2)
    {
      v8 = *v3;
      if (v8 != 1 && v8 != 2)
      {
        goto LABEL_12;
      }

      v7 = sub_24F92CE08();

      ++v3;
      --v2;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    **(v0 + 16) = MEMORY[0x277D84F90];
    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
LABEL_13:
    v9 = swift_task_alloc();
    *(v0 + 32) = v9;
    *v9 = v0;
    v9[1] = sub_24F51C978;

    return sub_24F525850();
  }
}

uint64_t sub_24F51C978(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_24F51CAC4, 0, 0);
  }
}

uint64_t sub_24F51CAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24F51CB0C, 0, 0);
}

uint64_t sub_24F51CB0C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = (v1 + 32);
    v3 = *(v1 + 16);
    while (v3)
    {
      if (*v2 && *v2 != 1)
      {

        goto LABEL_12;
      }

      v4 = sub_24F92CE08();

      ++v2;
      --v3;
      if (v4)
      {
        goto LABEL_12;
      }
    }

    **(v0 + 16) = MEMORY[0x277D84F90];
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
LABEL_12:
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    *v7 = v0;
    v7[1] = sub_24F51CCBC;
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);

    return sub_24F51CE2C(v9, v8);
  }
}

uint64_t sub_24F51CCBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_24F51CE08, 0, 0);
  }
}

uint64_t sub_24F51CE2C(uint64_t a1, uint64_t a2)
{
  v2[271] = a2;
  v2[265] = a1;
  v3 = type metadata accessor for ActivityFriendSuggestion(0);
  v2[277] = v3;
  v2[283] = *(v3 - 8);
  v2[289] = swift_task_alloc();
  v2[295] = swift_task_alloc();
  v2[301] = swift_task_alloc();
  v4 = type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity();
  v2[307] = v4;
  v2[313] = *(v4 - 8);
  v2[319] = swift_task_alloc();
  v2[325] = swift_task_alloc();
  v2[331] = swift_task_alloc();
  v2[332] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247218);
  v2[333] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220);
  v2[334] = swift_task_alloc();
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  v2[335] = ChallengeInfo;
  v2[336] = *(ChallengeInfo - 8);
  v2[337] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220);
  v2[338] = swift_task_alloc();
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  v2[339] = PlayedTogetherInfo;
  v2[340] = *(PlayedTogetherInfo - 8);
  v2[341] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247230);
  v2[342] = swift_task_alloc();
  v2[343] = swift_task_alloc();
  v2[344] = swift_task_alloc();
  v2[345] = swift_task_alloc();
  v2[346] = swift_task_alloc();
  v2[347] = swift_task_alloc();
  v2[348] = swift_task_alloc();
  v2[349] = swift_task_alloc();
  v7 = *(type metadata accessor for FriendsDataIntent() - 8);
  v2[350] = v7;
  v2[351] = *(v7 + 64);
  v2[352] = swift_task_alloc();
  v2[353] = swift_task_alloc();
  v8 = type metadata accessor for Player(0);
  v2[354] = v8;
  v9 = *(v8 - 8);
  v2[355] = v9;
  v2[356] = *(v9 + 64);
  v2[357] = swift_task_alloc();
  v2[358] = swift_task_alloc();
  v2[359] = swift_task_alloc();
  v2[360] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F51D260, 0, 0);
}

uint64_t sub_24F51D260()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  *(v0 + 2888) = __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Fetching denylist, played-with, and friends...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = *(v0 + 2880);
  v6 = *(v0 + 2840);
  v7 = *(v0 + 2824);
  v8 = *(v0 + 2816);
  v18 = *(v0 + 2808);
  v9 = *(v0 + 2800);
  v10 = *(v0 + 2168);
  v11 = *(v0 + 2120);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480);
  swift_asyncLet_begin();
  sub_24F52425C(v11, v5, type metadata accessor for Player);
  v12 = *(v6 + 80);
  *(v0 + 2960) = v12;
  v13 = (v12 + 16) & ~v12;
  v14 = swift_allocObject();
  *(v0 + 2896) = v14;
  sub_24F5242C4(v5, v14 + v13, type metadata accessor for Player);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
  swift_asyncLet_begin();
  sub_24F52425C(v11, v7, type metadata accessor for Player);
  sub_24F52425C(v7, v8, type metadata accessor for FriendsDataIntent);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v0 + 2904) = v16;
  sub_24F5242C4(v8, v16 + v15, type metadata accessor for FriendsDataIntent);
  *(v16 + ((v18 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;

  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 1976, sub_24F51D57C, v0 + 1936);
}

uint64_t sub_24F51D57C()
{
  v1[364] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 162, v1 + 259, sub_24F51E814, v1 + 248);
  }

  else
  {
    v1[365] = v1[247];

    return MEMORY[0x282200930](v1 + 82, v1 + 253, sub_24F51D630, v1 + 266);
  }
}

uint64_t sub_24F51D630()
{
  v1[366] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F51EAF0, 0, 0);
  }

  else
  {
    v1[367] = v1[253];

    return MEMORY[0x282200930](v1 + 162, v1 + 259, sub_24F51D6E0, v1 + 290);
  }
}

uint64_t sub_24F51D6E0()
{
  *(v1 + 2944) = v0;
  if (v0)
  {
    v2 = sub_24F51EE38;
  }

  else
  {
    v2 = sub_24F51D714;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24F51D714()
{
  v133 = v0;
  v130 = *(v0 + 2072);

  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24E5DD000, v1, v2, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Fetched required data, building suggestions.", v3, 2u);
    MEMORY[0x2530542D0](v3, -1, -1);
  }

  v4 = *(v0 + 2936);

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = *(v0 + 2920);
    v127 = *(v0 + 2872);
    v129 = *(v0 + 2864);
    v8 = (*(v0 + 2960) + 32) & ~*(v0 + 2960);
    v125 = *(v0 + 2936) + v8;
    v126 = *(v0 + 2840);
    v131 = v7 + 56;
    v122 = v130 + v8;
    v9 = *(v0 + 2504);
    v123 = (v9 + 56);
    v113 = (*(v0 + 2688) + 48);
    v114 = (*(v0 + 2720) + 48);
    v117 = (v9 + 48);
    v128 = *(v0 + 2832);
    v112 = *(v0 + 2656);
    v116 = *(v0 + 2456);
    v110 = *(v0 + 2216);
    v111 = *(v0 + 2264);
    v115 = MEMORY[0x277D84F90];
    v120 = v7;
    v121 = v4;
    v124 = *(v4 + 16);
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v1 = *(v0 + 2872);
      v10 = *(v126 + 72);
      sub_24F52425C(v125 + v10 * v6, v1, type metadata accessor for Player);
      v11.isa = *v1;
      v12 = *(v127 + 8);
      if (*(v7 + 16))
      {
        sub_24F92D068();
        sub_24F92B218();
        v13 = sub_24F92D0B8();
        v14 = -1 << *(v7 + 32);
        v1 = v13 & ~v14;
        if ((*(v131 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1))
        {
          v15 = ~v14;
          do
          {
            v16 = (*(v7 + 48) + 16 * v1);
            v17 = *v16 == v11.isa && v16[1] == v12;
            if (v17 || (sub_24F92CE08() & 1) != 0)
            {
              goto LABEL_7;
            }

            v1 = (v1 + 1) & v15;
          }

          while (((*(v131 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) != 0);
        }
      }

      if (*(*(v0 + 2872) + v128[18]) == 1)
      {
        break;
      }

LABEL_7:
      ++v6;
      sub_24F52432C(*(v0 + 2872), type metadata accessor for Player);
      if (v6 == v5)
      {

        v1 = v115;
        goto LABEL_63;
      }
    }

    v18 = -*(v130 + 16);
    v19 = -1;
    v1 = v122;
    while (v18 + v19 != -1)
    {
      if (++v19 >= *(v130 + 16))
      {
        __break(1u);
        goto LABEL_71;
      }

      v20 = *(v0 + 2864);
      sub_24F52425C(v1, v20, type metadata accessor for Player);
      v21 = *v20;
      v22 = *(v0 + 2864);
      if (v21 == v11.isa && *(v129 + 8) == v12)
      {
        sub_24F52432C(*(v0 + 2864), type metadata accessor for Player);
LABEL_6:
        v7 = v120;
        v4 = v121;
        v5 = v124;
        goto LABEL_7;
      }

      v1 += v10;
      v24 = sub_24F92CE08();
      sub_24F52432C(v22, type metadata accessor for Player);
      if (v24)
      {
        goto LABEL_6;
      }
    }

    v25 = *(v0 + 2712);
    v26 = *(v0 + 2704);
    sub_24E60169C(*(v0 + 2872) + v128[16], v26, &unk_27F23E220);
    v27 = (*v114)(v26, 1, v25);
    v28 = *(v0 + 2784);
    if (v27 == 1)
    {
      v29 = *(v0 + 2456);
      sub_24E601704(*(v0 + 2704), &unk_27F23E220);
      v30 = *v123;
      v31 = v28;
      v32 = 1;
      v33 = v29;
    }

    else
    {
      v34 = *(v0 + 2728);
      v35 = *(v0 + 2456);
      sub_24F5242C4(*(v0 + 2704), v34, type metadata accessor for Player.LastPlayedTogetherInfo);
      sub_24F52425C(v34, &v28[*(v116 + 20)], type metadata accessor for Game);
      sub_24F91F5D8();
      sub_24F52432C(v34, type metadata accessor for Player.LastPlayedTogetherInfo);
      *v28 = 0;
      v30 = *v123;
      v31 = v28;
      v32 = 0;
      v33 = v35;
    }

    v118 = v30;
    v30(v31, v32, 1, v33);
    v7 = v120;
    v36 = *(v0 + 2872);
    v37 = *(v0 + 2680);
    v38 = *(v0 + 2672);
    sub_24E6009C8(*(v0 + 2784), *(v0 + 2792), &unk_27F247230);
    sub_24E60169C(v36 + v128[17], v38, &unk_27F247220);
    v39 = (*v113)(v38, 1, v37);
    v40 = *(v0 + 2768);
    if (v39 == 1)
    {
      v41 = *(v0 + 2456);
      sub_24E601704(*(v0 + 2672), &unk_27F247220);
      v42 = v40;
      v43 = 1;
      v44 = v41;
    }

    else
    {
      v45 = *(v0 + 2696);
      v46 = *(v0 + 2456);
      sub_24F5242C4(*(v0 + 2672), v45, type metadata accessor for Player.LastChallengeInfo);
      sub_24F52425C(v45, &v40[*(v116 + 20)], type metadata accessor for Game);
      sub_24F91F5D8();
      sub_24F52432C(v45, type metadata accessor for Player.LastChallengeInfo);
      *v40 = 1;
      v42 = v40;
      v43 = 0;
      v44 = v46;
    }

    v118(v42, v43, 1, v44);
    v47 = *(v0 + 2792);
    v48 = *(v0 + 2776);
    v49 = *(v0 + 2664);
    v50 = *(v0 + 2456);
    sub_24E6009C8(*(v0 + 2768), v48, &unk_27F247230);
    v51 = *(v112 + 48);
    sub_24E60169C(v47, v49, &unk_27F247230);
    sub_24E60169C(v48, v49 + v51, &unk_27F247230);
    v52 = *v117;
    LODWORD(v48) = (*v117)(v49, 1, v50);
    v53 = v50;
    v54 = v52;
    v55 = v52(v49 + v51, 1, v53);
    v56 = *(v0 + 2752);
    if (v48 == 1)
    {
      v57 = *(v0 + 2456);
      if (v55 == 1)
      {
        v58 = *(v0 + 2752);
        v59 = 1;
LABEL_41:
        v118(v58, v59, 1, v57);
LABEL_49:
        v5 = v124;
        v67 = *(v0 + 2760);
        v68 = *(v0 + 2736);
        v69 = *(v0 + 2456);
        sub_24E6009C8(*(v0 + 2752), v67, &unk_27F247230);
        sub_24E60169C(v67, v68, &unk_27F247230);
        if (v54(v68, 1, v69) == 1)
        {
          v70 = *(v0 + 2872);
          v71 = *(v0 + 2856);
          sub_24E601704(*(v0 + 2736), &unk_27F247230);
          sub_24F52425C(v70, v71, type metadata accessor for Player);
          v72 = sub_24F9220B8();
          v109 = sub_24F92BD98();
          v73 = os_log_type_enabled(v72, v109);
          v1 = &unk_24FA05AC8;
          v74 = *(v0 + 2856);
          v75 = *(v0 + 2792);
          v76 = *(v0 + 2776);
          v119 = *(v0 + 2760);
          if (v73)
          {
            v107 = *(v0 + 2792);
            v77 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v132[0] = v104;
            *v77 = 136315138;
            v78 = (v74 + v128[7]);
            v105 = v76;
            v79 = *v78;
            v80 = v78[1];

            sub_24F52432C(v74, type metadata accessor for Player);
            v81 = sub_24E7620D4(v79, v80, v132);

            *(v77 + 4) = v81;
            _os_log_impl(&dword_24E5DD000, v72, v109, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Skipping %s due to us not having played anything together.", v77, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v104);
            MEMORY[0x2530542D0](v104, -1, -1);
            MEMORY[0x2530542D0](v77, -1, -1);

            v1 = &unk_24FA05AC8;
            sub_24E601704(v119, &unk_27F247230);
            sub_24E601704(v105, &unk_27F247230);
            v82 = v107;
          }

          else
          {

            sub_24F52432C(v74, type metadata accessor for Player);
            sub_24E601704(v119, &unk_27F247230);
            sub_24E601704(v76, &unk_27F247230);
            v82 = v75;
          }

          sub_24E601704(v82, &unk_27F247230);
        }

        else
        {
          v83 = *(v0 + 2872);
          v84 = *(v0 + 2552);
          v85 = *(v0 + 2408);
          v86 = *(v0 + 2360);
          sub_24F5242C4(*(v0 + 2736), v84, type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity);
          sub_24F52425C(v83, v85, type metadata accessor for Player);
          v87 = *v84;
          sub_24F52425C(&v84[*(v116 + 20)], v85 + v110[6], type metadata accessor for Game);
          v88 = *(v116 + 24);
          v89 = v110[7];
          v90 = sub_24F91F648();
          (*(*(v90 - 8) + 16))(v85 + v89, &v84[v88], v90);
          *(v85 + v110[5]) = v87;
          sub_24F52425C(v85, v86, type metadata accessor for ActivityFriendSuggestion);
          v91 = v115;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v91 = sub_24E61A618(0, v115[2] + 1, 1, v115);
          }

          v93 = v91[2];
          v92 = v91[3];
          v5 = v124;
          if (v93 >= v92 >> 1)
          {
            v115 = sub_24E61A618(v92 > 1, v93 + 1, 1, v91);
          }

          else
          {
            v115 = v91;
          }

          v94 = *(v0 + 2792);
          v95 = *(v0 + 2776);
          v96 = *(v0 + 2760);
          v97 = *(v0 + 2552);
          v1 = *(v0 + 2360);
          sub_24F52432C(*(v0 + 2408), type metadata accessor for ActivityFriendSuggestion);
          sub_24F52432C(v97, type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity);
          sub_24E601704(v96, &unk_27F247230);
          sub_24E601704(v95, &unk_27F247230);
          sub_24E601704(v94, &unk_27F247230);
          v115[2] = v93 + 1;
          sub_24F5242C4(v1, v115 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v93, type metadata accessor for ActivityFriendSuggestion);
        }

        v4 = v121;
        goto LABEL_7;
      }

      v60 = v49 + v51;
    }

    else
    {
      if (v55 != 1)
      {
        v106 = *(v0 + 2744);
        v61 = *(v0 + 2648);
        v62 = *(v0 + 2600);
        v108 = *(v0 + 2456);
        sub_24F5242C4(*(v0 + 2664), v61, type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity);
        sub_24F5242C4(v49 + v51, v62, type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity);
        v63 = sub_24F91F588();
        v64 = (v63 & 1) == 0;
        if (v63)
        {
          v65 = v62;
        }

        else
        {
          v65 = v61;
        }

        if (v64)
        {
          v66 = v62;
        }

        else
        {
          v66 = v61;
        }

        v54 = v52;
        sub_24F52432C(v65, type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity);
        sub_24F5242C4(v66, v106, type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity);
        v118(v106, 0, 1, v108);
        sub_24E6009C8(v106, v56, &unk_27F247230);
        goto LABEL_49;
      }

      v60 = *(v0 + 2664);
      v57 = *(v0 + 2456);
    }

    sub_24F5242C4(v60, *(v0 + 2752), type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity);
    v58 = v56;
    v59 = 0;
    goto LABEL_41;
  }

  v1 = MEMORY[0x277D84F90];
LABEL_63:

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_72:
    v1 = sub_24ECDE3E4(v1);
  }

  *(v0 + 2952) = v1;
  v98 = *(v0 + 2944);
  v99 = *(v1 + 16);
  v100 = *(*(v0 + 2264) + 80);
  v132[0] = v1 + ((v100 + 32) & ~v100);
  v132[1] = v99;
  sub_24F520FF8(v132);
  if (!v98)
  {
    v101 = sub_24F9220B8();
    v102 = sub_24F92BD98();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_24E5DD000, v101, v102, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Finished.", v103, 2u);
      MEMORY[0x2530542D0](v103, -1, -1);
    }

    MEMORY[0x282200920](v0 + 1296, v0 + 2072, sub_24F51E53C, v0 + 2512);
  }
}

uint64_t sub_24F51E558()
{
  sub_24F52432C(*(v0 + 2824), type metadata accessor for FriendsDataIntent);

  return MEMORY[0x282200920](v0 + 656, v0 + 2024, sub_24F51E5D8, v0 + 2560);
}

uint64_t sub_24F51E630()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 2952);

  return v1(v2);
}

uint64_t sub_24F51E830()
{
  sub_24F52432C(*(v0 + 2824), type metadata accessor for FriendsDataIntent);

  return MEMORY[0x282200920](v0 + 656, v0 + 2024, sub_24F51E8B0, v0 + 2032);
}

uint64_t sub_24F51E908()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F51EAF0()
{

  return MEMORY[0x282200920](v0 + 1296, v0 + 2072, sub_24F51EB5C, v0 + 2176);
}

uint64_t sub_24F51EB78()
{
  sub_24F52432C(*(v0 + 2824), type metadata accessor for FriendsDataIntent);

  return MEMORY[0x282200920](v0 + 656, v0 + 2024, sub_24F51EBF8, v0 + 2224);
}

uint64_t sub_24F51EC50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F51EE38()
{

  return MEMORY[0x282200920](v0 + 1296, v0 + 2072, sub_24F51EEB0, v0 + 2368);
}

uint64_t sub_24F51EECC()
{
  sub_24F52432C(*(v0 + 2824), type metadata accessor for FriendsDataIntent);

  return MEMORY[0x282200920](v0 + 656, v0 + 2024, sub_24F51EF4C, v0 + 2416);
}

uint64_t sub_24F51EFA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F51F18C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
LABEL_30:

    return v2;
  }

  v3 = *(result + 16);
  v4 = (result + 32);
  v5 = v3;
  v6 = (result + 32);
  while (1)
  {
    v8 = v5;
    if (!v5)
    {
      goto LABEL_9;
    }

    v9 = *v6;
    if (v9 != 1 && v9 != 2)
    {
      break;
    }

    v7 = sub_24F92CE08();

    ++v6;
    v5 = v8 - 1;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  while (1)
  {
LABEL_9:
    if (!v3)
    {
      if (v8)
      {
        v11 = *(a2 + 16);
        if (v11)
        {
          v12 = 0;
          v2 = MEMORY[0x277D84F90];
          do
          {
            v13 = a2 + 32 + 88 * v12;
            for (i = v12; ; ++i)
            {
              if (i >= v11)
              {
                __break(1u);
LABEL_49:
                __break(1u);
                goto LABEL_50;
              }

              v15 = *(v13 + 32);
              v16 = *(v13 + 64);
              v44 = *(v13 + 48);
              v45 = v16;
              v46 = *(v13 + 80);
              v17 = *(v13 + 16);
              v41 = *v13;
              v42 = v17;
              v43 = v15;
              v12 = i + 1;
              if (__OFADD__(i, 1))
              {
                goto LABEL_49;
              }

              if ((v46 & 1) == 0)
              {
                break;
              }

              v13 += 88;
              if (v12 == v11)
              {
                return v2;
              }
            }

            sub_24E7FA89C(&v41, v40);
            result = swift_isUniquelyReferenced_nonNull_native();
            v47 = v2;
            if ((result & 1) == 0)
            {
              result = sub_24F457F38(0, *(v2 + 16) + 1, 1);
              v2 = v47;
            }

            v19 = *(v2 + 16);
            v18 = *(v2 + 24);
            if (v19 >= v18 >> 1)
            {
              result = sub_24F457F38((v18 > 1), v19 + 1, 1);
              v2 = v47;
            }

            *(v2 + 16) = v19 + 1;
            v20 = v2 + 88 * v19;
            v21 = v42;
            *(v20 + 32) = v41;
            *(v20 + 48) = v21;
            v22 = v43;
            v23 = v44;
            v24 = v45;
            *(v20 + 112) = v46;
            *(v20 + 80) = v23;
            *(v20 + 96) = v24;
            *(v20 + 64) = v22;
          }

          while (v12 != v11);
          return v2;
        }
      }

      return MEMORY[0x277D84F90];
    }

    if (*v4 && *v4 != 2)
    {
      break;
    }

    v10 = sub_24F92CE08();

    ++v4;
    --v3;
    if (v10)
    {
      if (!v8)
      {
        goto LABEL_32;
      }

LABEL_29:
      v2 = a2;
      goto LABEL_30;
    }
  }

  if (v8)
  {
    goto LABEL_29;
  }

LABEL_32:
  v25 = *(a2 + 16);
  if (!v25)
  {
    return MEMORY[0x277D84F90];
  }

  v26 = 0;
  v2 = MEMORY[0x277D84F90];
LABEL_34:
  v27 = a2 + 32 + 88 * v26;
  for (j = v26; j < v25; ++j)
  {
    v29 = *(v27 + 32);
    v30 = *(v27 + 64);
    v44 = *(v27 + 48);
    v45 = v30;
    v46 = *(v27 + 80);
    v31 = *(v27 + 16);
    v41 = *v27;
    v42 = v31;
    v43 = v29;
    v26 = j + 1;
    if (__OFADD__(j, 1))
    {
      goto LABEL_51;
    }

    if (v46)
    {
      sub_24E7FA89C(&v41, v40);
      result = swift_isUniquelyReferenced_nonNull_native();
      v47 = v2;
      if ((result & 1) == 0)
      {
        result = sub_24F457F38(0, *(v2 + 16) + 1, 1);
        v2 = v47;
      }

      v33 = *(v2 + 16);
      v32 = *(v2 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_24F457F38((v32 > 1), v33 + 1, 1);
        v2 = v47;
      }

      *(v2 + 16) = v33 + 1;
      v34 = v2 + 88 * v33;
      v35 = v42;
      *(v34 + 32) = v41;
      *(v34 + 48) = v35;
      v36 = v43;
      v37 = v44;
      v38 = v45;
      *(v34 + 112) = v46;
      *(v34 + 80) = v37;
      *(v34 + 96) = v38;
      *(v34 + 64) = v36;
      if (v26 != v25)
      {
        goto LABEL_34;
      }

      return v2;
    }

    v27 += 88;
    if (v26 == v25)
    {
      return v2;
    }
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_24F51F558(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247278);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 utilityServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_24F527D94;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F7F8270;
  aBlock[3] = &block_descriptor_86_1;
  v10 = _Block_copy(aBlock);

  [v7 suggestedFriendsWithHandler_];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

uint64_t sub_24F51F74C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = result + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v23 = v4;
      v5 = v2;
      while (1)
      {
        if (v5 >= v1)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          return result;
        }

        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_35;
        }

        v6 = *(v3 + 8 * v5);
        if (*(v6 + 16))
        {
          result = sub_24E76D644(0x49746361746E6F63, 0xE900000000000044);
          if (v7)
          {
            sub_24E643A9C(*(v6 + 56) + 32 * result, v26);
            result = swift_dynamicCast();
            if (result)
            {
              break;
            }
          }
        }

LABEL_5:
        ++v5;
        if (v2 == v1)
        {
          v4 = v23;
          goto LABEL_33;
        }
      }

      if (!*(v6 + 16))
      {
        break;
      }

      v8 = sub_24E76D644(0x656C646E6168, 0xE600000000000000);
      if ((v9 & 1) == 0)
      {
        break;
      }

      sub_24E643A9C(*(v6 + 56) + 32 * v8, v26);
      if (!swift_dynamicCast())
      {
        break;
      }

      if (*(v6 + 16))
      {
        v10 = sub_24E76D644(1684627811, 0xE400000000000000);
        v11 = v23;
        if (v12)
        {
          sub_24E643A9C(*(v6 + 56) + 32 * v10, v26);
          v13 = swift_dynamicCast();
          if (v13)
          {
            v14 = v24;
          }

          else
          {
            v14 = 0;
          }

          if (v13)
          {
            v15 = v25;
          }

          else
          {
            v15 = 0;
          }

          v21 = v15;
          v22 = v14;
        }

        else
        {
          v21 = 0;
          v22 = 0;
        }
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v11 = v23;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E61A640(0, v11[2] + 1, 1, v11);
        v11 = result;
      }

      v16 = v11;
      v17 = v11[2];
      v18 = v16;
      v19 = v16[3];
      if (v17 >= v19 >> 1)
      {
        result = sub_24E61A640((v19 > 1), v17 + 1, 1, v18);
        v18 = result;
      }

      v4 = v18;
      v18[2] = v17 + 1;
      v20 = &v18[6 * v17];
      v20[4] = v24;
      v20[5] = v25;
      v20[6] = v22;
      v20[7] = v21;
      v20[8] = v24;
      v20[9] = v25;
      if (v2 == v1)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_5;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_33:
  v26[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247278);
  return sub_24F92B798();
}

void sub_24F51F9EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 profileServicePrivate];

  v8 = sub_24F92B588();
  (*(v3 + 16))(v5, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v5, v2);
  aBlock[4] = sub_24F527CC0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F7F8178;
  aBlock[3] = &block_descriptor_80_1;
  v11 = _Block_copy(aBlock);

  [v7 filterForContactIDsSupportingFriendingViaPushFromContactIDs:v8 withCompletion:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();
}

uint64_t sub_24F51FC00(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v3 = sub_24F9220D8();
    __swift_project_value_buffer(v3, qword_27F39E808);
    v4 = sub_24F9220B8();
    v5 = sub_24F92BDB8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24E5DD000, v4, v5, "[FriendSuggestionsDataIntentImplementation loadContactSuggestions] Unable to determine who supports friending via push", v6, 2u);
      MEMORY[0x2530542D0](v6, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720);
    return sub_24F92B788();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720);
    return sub_24F92B798();
  }
}

uint64_t sub_24F51FD64()
{
  v47[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_24F92B588();
  v2 = [v0 predicateForContactsWithIdentifiers_];

  v3 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  if (qword_27F211338 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0);
    v4 = sub_24F92B588();
    v47[0] = 0;
    v5 = [v3 unifiedContactsMatchingPredicate:v2 keysToFetch:v4 error:v47];

    v6 = v47[0];
    if (!v5)
    {
      v34 = v47[0];
      v35 = sub_24F91F278();

      swift_willThrow();
      if (qword_27F2113E8 != -1)
      {
        swift_once();
      }

      v36 = sub_24F9220D8();
      __swift_project_value_buffer(v36, qword_27F39E808);
      v37 = v35;
      v38 = sub_24F9220B8();
      v39 = sub_24F92BDB8();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        v42 = v35;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v43;
        *v41 = v43;
        _os_log_impl(&dword_24E5DD000, v38, v39, "[FriendSuggestionsDataIntentImplementation loadContactSuggestions] CNContactStore threw an exception: %@", v40, 0xCu);
        sub_24E601704(v41, &qword_27F227B20);
        MEMORY[0x2530542D0](v41, -1, -1);
        MEMORY[0x2530542D0](v40, -1, -1);
      }

      v9 = sub_24E611E60(MEMORY[0x277D84F90]);
      goto LABEL_36;
    }

    v45 = v3;
    sub_24E7FA974();
    v3 = sub_24F92B5A8();
    v7 = v6;

    if (!(v3 >> 62))
    {
      v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v46 = v2;
      if (!v8)
      {
        break;
      }

      goto LABEL_5;
    }

    v8 = sub_24F92C738();
    v46 = v2;
    if (!v8)
    {
      break;
    }

LABEL_5:
    v2 = 0;
    v9 = MEMORY[0x277D84F98];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x253052270](v2, v3);
      }

      else
      {
        if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v13 = *(v3 + 8 * v2 + 32);
      }

      v14 = v13;
      v15 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v16 = [v13 identifier];
      v17 = sub_24F92B0D8();
      v19 = v18;

      v20 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47[0] = v9;
      v22 = sub_24E76D644(v17, v19);
      v24 = v9[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_29;
      }

      v28 = v23;
      if (v9[3] < v27)
      {
        sub_24E8AB044(v27, isUniquelyReferenced_nonNull_native);
        v22 = sub_24E76D644(v17, v19);
        if ((v28 & 1) != (v29 & 1))
        {
          result = sub_24F92CF88();
          __break(1u);
          return result;
        }

LABEL_18:
        if (v28)
        {
          goto LABEL_6;
        }

        goto LABEL_19;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v33 = v22;
      sub_24E8B7C5C();
      v22 = v33;
      if (v28)
      {
LABEL_6:
        v10 = v22;

        v9 = v47[0];
        v11 = *(v47[0] + 7);
        v12 = *(v11 + 8 * v10);
        *(v11 + 8 * v10) = v20;

        goto LABEL_7;
      }

LABEL_19:
      v9 = v47[0];
      *(v47[0] + (v22 >> 6) + 8) |= 1 << v22;
      v30 = (v9[6] + 16 * v22);
      *v30 = v17;
      v30[1] = v19;
      *(v9[7] + 8 * v22) = v20;

      v31 = v9[2];
      v26 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v26)
      {
        goto LABEL_30;
      }

      v9[2] = v32;
LABEL_7:
      ++v2;
      if (v15 == v8)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  v9 = MEMORY[0x277D84F98];
LABEL_35:

  v2 = v46;
LABEL_36:

  return v9;
}

uint64_t sub_24F52026C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480);
  *v3 = v1;
  v3[1] = sub_24E614970;

  return MEMORY[0x2822008A0](a1, 0, 0, 0xD00000000000002ALL, 0x800000024FA760C0, sub_24F520360, 0, v4);
}

uint64_t sub_24F520360(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 utilityServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_24F527C28;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F51A1D8;
  aBlock[3] = &block_descriptor_64_0;
  v10 = _Block_copy(aBlock);

  [v7 getFriendSuggestionDenyListWithHandler_];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

uint64_t sub_24F520554(uint64_t a1)
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E808);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Fetched denylist.", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  if (*(a1 + 16))
  {
    sub_24E76D644(0x4449726579616C70, 0xE900000000000073);
    if (v6)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720);
  return sub_24F92B798();
}

uint64_t sub_24F5206B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24E83F06C;

  return sub_24F526AE8(a2);
}

uint64_t sub_24F520748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return sub_24E6480C8(a2, a3);
}

uint64_t sub_24F520800(void *a1, uint64_t a2, uint64_t *a3)
{
  sub_24E601704(a1, a3);
  *a1 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_24F520878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D0C1C8]) init];
  v7 = sub_24F92B098();
  [v6 setPlayerID_];

  v8 = [objc_opt_self() proxyForLocalPlayer];
  v9 = [v8 friendServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v5, v2);
  aBlock[4] = sub_24F527BD4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E872254;
  aBlock[3] = &block_descriptor_157;
  v12 = _Block_copy(aBlock);

  [v9 getFriendsForPlayer:v6 withFilter:2 handler:v12];
  _Block_release(v12);

  return swift_unknownObjectRelease();
}

size_t sub_24F520ABC(unint64_t a1, void *a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a2)
  {
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v18 = sub_24F9220D8();
    __swift_project_value_buffer(v18, qword_27F39E808);
    v19 = sub_24F9220B8();
    v20 = sub_24F92BD98();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24E5DD000, v19, v20, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Fetched played-with.", v21, 2u);
      MEMORY[0x2530542D0](v21, -1, -1);
    }

    if (a1 >> 62)
    {
      v22 = sub_24F92C738();
    }

    else
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = MEMORY[0x277D84F90];
    if (v22)
    {
      v29 = MEMORY[0x277D84F90];
      result = sub_24F457FDC(0, v22 & ~(v22 >> 63), 0);
      if (v22 < 0)
      {
        __break(1u);
        return result;
      }

      v24 = 0;
      v23 = v29;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x253052270](v24, a1);
        }

        else
        {
          v25 = *(a1 + 8 * v24 + 32);
        }

        sub_24F3FAC70(v25, 0, 0, v7);
        v29 = v23;
        v27 = v23[2];
        v26 = v23[3];
        if (v27 >= v26 >> 1)
        {
          sub_24F457FDC(v26 > 1, v27 + 1, 1);
          v23 = v29;
        }

        ++v24;
        v23[2] = v27 + 1;
        sub_24F5242C4(v7, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, type metadata accessor for Player);
      }

      while (v22 != v24);
    }

    v29 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD8);
    return sub_24F92B798();
  }

  v8 = a2;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v9 = sub_24F9220D8();
  __swift_project_value_buffer(v9, qword_27F39E808);
  v10 = a2;
  v11 = sub_24F9220B8();
  v12 = sub_24F92BDB8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = a2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_24E5DD000, v11, v12, "Unable to fetch recently played with: %@", v13, 0xCu);
    sub_24E601704(v14, &qword_27F227B20);
    MEMORY[0x2530542D0](v14, -1, -1);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD8);
  return sub_24F92B788();
}

uint64_t sub_24F520EB8(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  sub_24E601704(a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  *a1 = a2;

  sub_24F91F618();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24F520F58(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E7E3A7C;

  return sub_24F51AC6C(v5, a3);
}

void sub_24F520FF8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ActivityFriendSuggestion(0);
        v6 = sub_24F92B618();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ActivityFriendSuggestion(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24F5219B8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24F521124(0, v2, 1, a1);
  }
}

void sub_24F521124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ActivityFriendSuggestion(0);
  MEMORY[0x28223BE20](v8);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_24F52425C(v22, v16, type metadata accessor for ActivityFriendSuggestion);
      sub_24F52425C(v19, v12, type metadata accessor for ActivityFriendSuggestion);
      v23 = sub_24F91F588();
      sub_24F52432C(v12, type metadata accessor for ActivityFriendSuggestion);
      sub_24F52432C(v16, type metadata accessor for ActivityFriendSuggestion);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_24F5242C4(v22, v34, type metadata accessor for ActivityFriendSuggestion);
      swift_arrayInitWithTakeFrontToBack();
      sub_24F5242C4(v24, v19, type metadata accessor for ActivityFriendSuggestion);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24F521388(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_92:
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_24E86164C(v7);
      v7 = result;
    }

    v76 = (v7 + 16);
    v77 = *(v7 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v7 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_24F52231C((*a3 + 88 * *v78), (*a3 + 88 * *v80), (*a3 + 88 * v81), v85);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_118;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_119;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_120;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = *(v9 + 88 * v6 + 80) & (*(v9 + 88 * v8 + 80) ^ 1);
      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v11 = (v9 + 88 * v8 + 256);
        do
        {
          v12 = *v11;
          if (v12 == *(v11 - 88))
          {
            if (v10)
            {
              goto LABEL_14;
            }
          }

          else if ((v10 ^ v12))
          {
            goto LABEL_13;
          }

          ++v6;
          v11 += 88;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_13:
      if (v10)
      {
LABEL_14:
        if (v6 < v8)
        {
          goto LABEL_123;
        }

        if (v8 < v6)
        {
          v13 = 88 * v6 - 88;
          v14 = 88 * v8;
          v15 = v6;
          v16 = v8;
          do
          {
            if (v16 != --v15)
            {
              v18 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v17 = v18 + v13;
              v90 = *(v18 + v14 + 32);
              v92 = *(v18 + v14 + 48);
              v94 = *(v18 + v14 + 64);
              v96 = *(v18 + v14 + 80);
              v86 = *(v18 + v14);
              v88 = *(v18 + v14 + 16);
              result = memmove((v18 + v14), (v18 + v13), 0x58uLL);
              *(v17 + 32) = v90;
              *(v17 + 48) = v92;
              *(v17 + 64) = v94;
              *(v17 + 80) = v96;
              *v17 = v86;
              *(v17 + 16) = v88;
            }

            ++v16;
            v13 -= 88;
            v14 += 88;
          }

          while (v16 < v15);
          v5 = a3[1];
        }
      }
    }

    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_122;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_124;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_41:
    if (v6 < v8)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v29 = *(v7 + 16);
    v28 = *(v7 + 24);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_24E615ED8((v28 > 1), v29 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v30;
    v31 = v7 + 32;
    v32 = (v7 + 32 + 16 * v29);
    *v32 = v8;
    v32[1] = v6;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_131;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v7 + 32);
          v35 = *(v7 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_61:
          if (v37)
          {
            goto LABEL_108;
          }

          v50 = (v7 + 16 * v30);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_110;
          }

          v56 = (v31 + 16 * v33);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_115;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        if (v30 < 2)
        {
          goto LABEL_116;
        }

        v60 = (v7 + 16 * v30);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_76:
        if (v55)
        {
          goto LABEL_112;
        }

        v63 = (v31 + 16 * v33);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_114;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_83:
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v71 = (v31 + 16 * (v33 - 1));
        v72 = *v71;
        v73 = (v31 + 16 * v33);
        v74 = v73[1];
        sub_24F52231C((*a3 + 88 * *v71), (*a3 + 88 * *v73), (*a3 + 88 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_103;
        }

        if (v33 > *(v7 + 16))
        {
          goto LABEL_104;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v7 + 16);
        if (v33 >= v75)
        {
          goto LABEL_105;
        }

        v30 = v75 - 1;
        result = memmove((v31 + 16 * v33), v73 + 2, 16 * (v75 - 1 - v33));
        *(v7 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v31 + 16 * v30;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_106;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_107;
      }

      v45 = (v7 + 16 * v30);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_109;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_111;
      }

      if (v49 >= v41)
      {
        v67 = (v31 + 16 * v33);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_117;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_61;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_92;
    }
  }

  v19 = *a3;
  v20 = *a3 + 88 * v6;
  v21 = v8 - v6;
LABEL_33:
  v22 = v21;
  v23 = v20;
  while (1)
  {
    if ((*(v23 - 8) & 1) != 0 || !*(v23 + 80))
    {
LABEL_32:
      ++v6;
      v20 += 88;
      --v21;
      if (v6 != v5)
      {
        goto LABEL_33;
      }

      v6 = v5;
      goto LABEL_41;
    }

    if (!v19)
    {
      break;
    }

    v24 = v23 - 88;
    v91 = *(v23 + 32);
    v93 = *(v23 + 48);
    v95 = *(v23 + 64);
    v97 = *(v23 + 80);
    v87 = *v23;
    v89 = *(v23 + 16);
    v25 = *(v23 - 40);
    *(v23 + 32) = *(v23 - 56);
    *(v23 + 48) = v25;
    *(v23 + 64) = *(v23 - 24);
    *(v23 + 80) = *(v23 - 8);
    v26 = *(v23 - 72);
    *v23 = *(v23 - 88);
    *(v23 + 16) = v26;
    *(v24 + 32) = v91;
    *(v24 + 48) = v93;
    *(v24 + 64) = v95;
    *(v24 + 80) = v97;
    v23 -= 88;
    *v24 = v87;
    *(v24 + 16) = v89;
    if (__CFADD__(v22++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

void sub_24F5219B8(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for ActivityFriendSuggestion(0);
  v112 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v107 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v115 = &v100 - v12;
  MEMORY[0x28223BE20](v13);
  v116 = &v100 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v100 - v16;
  v114 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a4;
    }

    else
    {
LABEL_128:
      v95 = sub_24E86164C(a4);
    }

    v118 = v95;
    a4 = *(v95 + 2);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *&v95[16 * a4];
        v97 = v95;
        v98 = *&v95[16 * a4 + 24];
        sub_24F522580(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *&v95[16 * a4 + 16], *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_24E86164C(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_24E8615C0(a4 - 1);
        v95 = v118;
        a4 = *(v118 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v108 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v23 = *(v112 + 72);
      v5 = *v114 + v23 * v22;
      v110 = *v114;
      v24 = v110;
      sub_24F52425C(v110 + v23 * v22, v17, type metadata accessor for ActivityFriendSuggestion);
      v25 = v24 + v23 * v21;
      v26 = v21;
      v27 = v116;
      sub_24F52425C(v25, v116, type metadata accessor for ActivityFriendSuggestion);
      LODWORD(v111) = sub_24F91F588();
      sub_24F52432C(v27, type metadata accessor for ActivityFriendSuggestion);
      sub_24F52432C(v17, type metadata accessor for ActivityFriendSuggestion);
      v102 = v26;
      v28 = v26 + 2;
      v113 = v23;
      v29 = v110 + v23 * (v26 + 2);
      while (v18 != v28)
      {
        sub_24F52425C(v29, v17, type metadata accessor for ActivityFriendSuggestion);
        v30 = v116;
        sub_24F52425C(v5, v116, type metadata accessor for ActivityFriendSuggestion);
        v31 = sub_24F91F588() & 1;
        sub_24F52432C(v30, type metadata accessor for ActivityFriendSuggestion);
        sub_24F52432C(v17, type metadata accessor for ActivityFriendSuggestion);
        ++v28;
        v29 += v113;
        v5 += v113;
        if ((v111 & 1) != v31)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v102;
      a4 = v103;
      if (v111)
      {
        if (v18 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v18)
        {
          v101 = v6;
          v32 = v113 * (v18 - 1);
          v33 = v18;
          v34 = v18 * v113;
          v111 = v18;
          v35 = v102;
          v36 = v102;
          v37 = v102 * v113;
          do
          {
            if (v35 != --v33)
            {
              v38 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v38 + v37;
              sub_24F5242C4(v38 + v37, v107, type metadata accessor for ActivityFriendSuggestion);
              if (v37 < v32 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_24F5242C4(v107, v38 + v32, type metadata accessor for ActivityFriendSuggestion);
            }

            ++v35;
            v32 -= v113;
            v34 -= v113;
            v37 += v113;
          }

          while (v35 < v33);
          v6 = v101;
          a4 = v103;
          v21 = v36;
          v18 = v111;
        }
      }
    }

    v39 = v114[1];
    if (v18 < v39)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v39)
        {
          v40 = v114[1];
        }

        else
        {
          v40 = v21 + a4;
        }

        if (v40 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v40)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v108;
    }

    else
    {
      v20 = sub_24E615ED8(0, *(v108 + 2) + 1, 1, v108);
    }

    a4 = *(v20 + 2);
    v41 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v20 = sub_24E615ED8((v41 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * a4];
    *(v42 + 4) = v21;
    *(v42 + 5) = v19;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v20;
        v83 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_24F522580(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v20[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_24E86164C(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v118 = v82;
        sub_24E8615C0(v44);
        v20 = v118;
        v5 = *(v118 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v114[1];
    a4 = v103;
    if (v19 >= v18)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = v18;
  v86 = v21;
  v87 = *v114;
  v88 = *(v112 + 72);
  v89 = *v114 + v88 * (v18 - 1);
  v90 = -v88;
  v102 = v86;
  v91 = v86 - v18;
  v111 = v85;
  v105 = v88;
  v106 = v40;
  v5 = v87 + v85 * v88;
LABEL_85:
  v109 = v5;
  v110 = v91;
  v113 = v89;
  while (1)
  {
    sub_24F52425C(v5, v17, type metadata accessor for ActivityFriendSuggestion);
    v92 = v116;
    sub_24F52425C(v89, v116, type metadata accessor for ActivityFriendSuggestion);
    a4 = sub_24F91F588();
    sub_24F52432C(v92, type metadata accessor for ActivityFriendSuggestion);
    sub_24F52432C(v17, type metadata accessor for ActivityFriendSuggestion);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v19 = v106;
      v89 = v113 + v105;
      v91 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v21 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v87)
    {
      break;
    }

    a4 = type metadata accessor for ActivityFriendSuggestion;
    v93 = v115;
    sub_24F5242C4(v5, v115, type metadata accessor for ActivityFriendSuggestion);
    swift_arrayInitWithTakeFrontToBack();
    sub_24F5242C4(v93, v89, type metadata accessor for ActivityFriendSuggestion);
    v89 += v90;
    v5 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

uint64_t sub_24F52231C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 88;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 88;
  if (v9 >= v11)
  {
    v16 = 88 * v11;
    if (a4 != __src || &__src[v16] <= a4)
    {
      memmove(a4, __src, 88 * v11);
    }

    v13 = &v4[v16];
    if (v10 >= 88 && v6 > v7)
    {
LABEL_22:
      v5 -= 88;
      do
      {
        if ((*(v6 - 8) & 1) == 0 && *(v13 - 8))
        {
          v18 = v6 - 88;
          if (v5 + 88 != v6)
          {
            memmove(v5, v6 - 88, 0x58uLL);
          }

          if (v13 <= v4 || (v6 -= 88, v18 <= v7))
          {
            v6 = v18;
            goto LABEL_35;
          }

          goto LABEL_22;
        }

        v17 = (v13 - 88);
        if (v5 + 88 != v13)
        {
          memmove(v5, v13 - 88, 0x58uLL);
        }

        v5 -= 88;
        v13 -= 88;
      }

      while (v17 > v4);
      v13 = v17;
    }
  }

  else
  {
    v12 = 88 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 88)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while ((v4[80] & 1) == 0 && v6[80])
        {
          v14 = v6;
          v15 = v7 == v6;
          v6 += 88;
          if (!v15)
          {
            goto LABEL_13;
          }

LABEL_14:
          v7 += 88;
          if (v4 >= v13 || v6 >= v5)
          {
            goto LABEL_16;
          }
        }

        v14 = v4;
        v15 = v7 == v4;
        v4 += 88;
        if (v15)
        {
          goto LABEL_14;
        }

LABEL_13:
        memmove(v7, v14, 0x58uLL);
        goto LABEL_14;
      }

LABEL_16:
      v6 = v7;
    }
  }

LABEL_35:
  v19 = 88 * ((v13 - v4) / 88);
  if (v6 != v4 || v6 >= &v4[v19])
  {
    memmove(v6, v4, v19);
  }

  return 1;
}

void sub_24F522580(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for ActivityFriendSuggestion(0);
  MEMORY[0x28223BE20](v44);
  v43 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v34 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = a4 + v16;
      v38 = a1;
      v39 = a4;
      v37 = -v12;
      do
      {
        v35 = v22;
        v25 = a2;
        v26 = a2 + v23;
        v40 = v25;
        v41 = v26;
        while (1)
        {
          if (v25 <= a1)
          {
            v47 = v25;
            v45 = v35;
            goto LABEL_59;
          }

          v36 = v22;
          v28 = a3 + v23;
          v29 = v24 + v23;
          v30 = v42;
          sub_24F52425C(v29, v42, type metadata accessor for ActivityFriendSuggestion);
          v31 = v43;
          sub_24F52425C(v26, v43, type metadata accessor for ActivityFriendSuggestion);
          v32 = sub_24F91F588();
          sub_24F52432C(v31, type metadata accessor for ActivityFriendSuggestion);
          sub_24F52432C(v30, type metadata accessor for ActivityFriendSuggestion);
          if (v32)
          {
            break;
          }

          v22 = v29;
          if (a3 < v24 || v28 >= v24)
          {
            a3 = v28;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v38;
          }

          else
          {
            v33 = a3 == v24;
            a3 = v28;
            a1 = v38;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v29;
          v25 = v40;
          v27 = v29 > v39;
          v26 = v41;
          v23 = v37;
          if (!v27)
          {
            a2 = v40;
            goto LABEL_58;
          }
        }

        if (a3 < v40 || v28 >= v40)
        {
          a3 = v28;
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v37;
          a1 = v38;
          v22 = v36;
        }

        else
        {
          v33 = a3 == v40;
          a3 = v28;
          a2 = v41;
          v23 = v37;
          a1 = v38;
          v22 = v36;
          if (!v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v39);
    }

LABEL_58:
    v47 = a2;
    v45 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = a3;
        v19 = v42;
        sub_24F52425C(a2, v42, type metadata accessor for ActivityFriendSuggestion);
        v20 = v43;
        sub_24F52425C(a4, v43, type metadata accessor for ActivityFriendSuggestion);
        v21 = sub_24F91F588();
        sub_24F52432C(v20, type metadata accessor for ActivityFriendSuggestion);
        sub_24F52432C(v19, type metadata accessor for ActivityFriendSuggestion);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v12;
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v12;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_59:
  sub_24F8FB158(&v47, &v46, &v45);
}

uint64_t sub_24F522ACC()
{

  return swift_deallocObject();
}

uint64_t sub_24F522B04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24F51C73C(a1, v4);
}

uint64_t sub_24F522BA4()
{
  v1 = type metadata accessor for Player(0);
  v2 = *(*(v1 - 1) + 80);

  v3 = v0 + ((v2 + 24) & ~v2);

  v4 = v1[6];
  v5 = sub_24F9289E8();
  v29 = *(v5 - 8);
  v28 = *(v29 + 8);
  v28(v3 + v4, v5);

  if (*(v3 + v1[9] + 8) != 1)
  {
  }

  v6 = v3 + v1[13];
  v7 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = type metadata accessor for CallProviderConversationHandle();
    v9 = *(*(v8 - 8) + 48);
    if (!v9(v6, 1, v8))
    {

      v10 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v29 + 48))(v6 + v10, 1, v5))
      {
        v28(v6 + v10, v5);
      }
    }

    v11 = v6 + *(v7 + 20);
    if (!v9(v11, 1, v8))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v29 + 48))(v11 + v12, 1, v5))
      {
        v28(v11 + v12, v5);
      }
    }
  }

  if (*(v3 + v1[15] + 8))
  {
  }

  v13 = v3 + v1[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v13, 1, PlayedTogetherInfo))
  {

    v15 = type metadata accessor for Game();
    v28(v13 + v15[18], v5);
    v16 = v15[19];
    if (!(*(v29 + 48))(v13 + v16, 1, v5))
    {
      v28(v13 + v16, v5);
    }

    v17 = v15[21];
    v18 = sub_24F920818();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v13 + v17, 1, v18))
    {
      (*(v19 + 8))(v13 + v17, v18);
    }
  }

  v20 = v3 + v1[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v20, 1, ChallengeInfo))
  {

    v22 = type metadata accessor for Game();
    v28(v20 + v22[18], v5);
    v23 = v22[19];
    if (!(*(v29 + 48))(v20 + v23, 1, v5))
    {
      v28(v20 + v23, v5);
    }

    v24 = v22[21];
    v25 = sub_24F920818();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v20 + v24, 1, v25))
    {
      (*(v26 + 8))(v20 + v24, v25);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F523224(uint64_t a1)
{
  v4 = *(type metadata accessor for Player(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F51CAE8(a1, v6, v1 + v5, v7);
}

uint64_t type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity()
{
  result = qword_27F247288;
  if (!qword_27F247288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F52338C()
{
  v1 = type metadata accessor for Player(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v1[6];
  v5 = sub_24F9289E8();
  v28 = *(*(v5 - 8) + 8);
  v29 = *(v5 - 8);
  v28(v3 + v4, v5);

  if (*(v3 + v1[9] + 8) != 1)
  {
  }

  v6 = v3 + v1[13];
  v7 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = type metadata accessor for CallProviderConversationHandle();
    v9 = *(*(v8 - 8) + 48);
    if (!v9(v6, 1, v8))
    {

      v10 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v29 + 48))(v6 + v10, 1, v5))
      {
        v28(v6 + v10, v5);
      }
    }

    v11 = v6 + *(v7 + 20);
    if (!v9(v11, 1, v8))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v29 + 48))(v11 + v12, 1, v5))
      {
        v28(v11 + v12, v5);
      }
    }
  }

  if (*(v3 + v1[15] + 8))
  {
  }

  v13 = v3 + v1[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v13, 1, PlayedTogetherInfo))
  {

    v15 = type metadata accessor for Game();
    v28(v13 + v15[18], v5);
    v16 = v15[19];
    if (!(*(v29 + 48))(v13 + v16, 1, v5))
    {
      v28(v13 + v16, v5);
    }

    v17 = v15[21];
    v18 = sub_24F920818();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v13 + v17, 1, v18))
    {
      (*(v19 + 8))(v13 + v17, v18);
    }
  }

  v20 = v3 + v1[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v20, 1, ChallengeInfo))
  {

    v22 = type metadata accessor for Game();
    v28(v20 + v22[18], v5);
    v23 = v22[19];
    if (!(*(v29 + 48))(v20 + v23, 1, v5))
    {
      v28(v20 + v23, v5);
    }

    v24 = v22[21];
    v25 = sub_24F920818();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v20 + v24, 1, v25))
    {
      (*(v26 + 8))(v20 + v24, v25);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F5239F4(uint64_t a1)
{
  v4 = *(type metadata accessor for Player(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E614970;

  return sub_24F5206B0(a1, v1 + v5);
}

uint64_t sub_24F523AD0()
{
  v1 = *(type metadata accessor for FriendsDataIntent() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = type metadata accessor for Player(0);
  v4 = v3[6];
  v5 = sub_24F9289E8();
  v28 = *(*(v5 - 8) + 8);
  v29 = *(v5 - 8);
  v28(v2 + v4, v5);

  if (*(v2 + v3[9] + 8) != 1)
  {
  }

  v6 = v2 + v3[13];
  v7 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = type metadata accessor for CallProviderConversationHandle();
    v9 = *(*(v8 - 8) + 48);
    if (!v9(v6, 1, v8))
    {

      v10 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v29 + 48))(v6 + v10, 1, v5))
      {
        v28(v6 + v10, v5);
      }
    }

    v11 = v6 + *(v7 + 20);
    if (!v9(v11, 1, v8))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v29 + 48))(v11 + v12, 1, v5))
      {
        v28(v11 + v12, v5);
      }
    }
  }

  if (*(v2 + v3[15] + 8))
  {
  }

  v13 = v2 + v3[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v13, 1, PlayedTogetherInfo))
  {

    v15 = type metadata accessor for Game();
    v28(v13 + v15[18], v5);
    v16 = v15[19];
    if (!(*(v29 + 48))(v13 + v16, 1, v5))
    {
      v28(v13 + v16, v5);
    }

    v17 = v15[21];
    v18 = sub_24F920818();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v13 + v17, 1, v18))
    {
      (*(v19 + 8))(v13 + v17, v18);
    }
  }

  v20 = v2 + v3[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v20, 1, ChallengeInfo))
  {

    v22 = type metadata accessor for Game();
    v28(v20 + v22[18], v5);
    v23 = v22[19];
    if (!(*(v29 + 48))(v20 + v23, 1, v5))
    {
      v28(v20 + v23, v5);
    }

    v24 = v22[21];
    v25 = sub_24F920818();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v20 + v24, 1, v25))
    {
      (*(v26 + 8))(v20 + v24, v25);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F524150(uint64_t a1)
{
  v4 = *(type metadata accessor for FriendsDataIntent() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F520748(a1, v1 + v5, v6);
}

uint64_t sub_24F52425C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5242C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F52432C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F52438C()
{
  v1 = sub_24F91EAA8();
  v0[6] = v1;
  v0[7] = *(v1 - 8);
  v0[8] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[9] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247270);
  *v2 = v0;
  v2[1] = sub_24F5244D0;

  return MEMORY[0x2822008A0](v0 + 4, 0, 0, 0xD000000000000018, 0x800000024FA760F0, sub_24F51F558, 0, v3);
}

uint64_t sub_24F5244D0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24EB1B50C;
  }

  else
  {
    v2 = sub_24F5245E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F5245E4()
{
  v1 = v0[4];
  v0[11] = v1;
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v20 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v2, 0);
    v3 = v20;
    v4 = *(v20 + 16);
    v5 = 16 * v4;
    v6 = (v1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = v4 + 1;
      v10 = *(v20 + 24);

      if (v4 >= v10 >> 1)
      {
        sub_24F4578E0((v10 > 1), v9, 1);
      }

      *(v20 + 16) = v9;
      v11 = v20 + v5;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v5 += 16;
      v6 += 6;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v0[12] = v3;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v12 = sub_24F9220D8();
  v0[13] = __swift_project_value_buffer(v12, qword_27F39E808);
  v13 = sub_24F9220B8();
  v14 = sub_24F92BD98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24E5DD000, v13, v14, "[FriendSuggestionsDataIntentImplementation loadContactSuggestions] Determining Friending via Push capability...", v15, 2u);
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[14] = v16;
  *(v16 + 16) = v3;
  v17 = swift_task_alloc();
  v0[15] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480);
  *v17 = v0;
  v17[1] = sub_24F524860;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000018, 0x800000024FA760F0, sub_24F527CB8, v16, v18);
}

uint64_t sub_24F524860()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_24F524EBC;
  }

  else
  {

    v2 = sub_24F5249B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F5249B0()
{
  v54 = v0;
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[5];
  v52 = sub_24F51FD64();

  v51 = *(v1 + 16);
  if (v51)
  {
    v5 = 0;
    v50 = v1 + 32;
    v6 = v3 + 56;
    v45 = (v2 + 8);
    v47 = MEMORY[0x277D84F90];
    v7 = v52;
    while (v5 < *(v0[11] + 16))
    {
      v8 = v0;
      v9 = (v50 + 48 * v5);
      v11 = *v9;
      v10 = v9[1];
      v12 = v9[3];
      v13 = v9[5];
      v48 = v9[2];
      v49 = v9[4];
      if (*(v3 + 16))
      {
        sub_24F92D068();

        sub_24F92B218();
        v14 = sub_24F92D0B8();
        v15 = -1 << *(v3 + 32);
        v16 = v14 & ~v15;
        if ((*(v6 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          while (1)
          {
            v18 = (*(v3 + 48) + 16 * v16);
            v19 = *v18 == v11 && v18[1] == v10;
            if (v19 || (sub_24F92CE08() & 1) != 0)
            {
              break;
            }

            v16 = (v16 + 1) & v17;
            if (((*(v6 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v20 = v12 != 0;
        }

        else
        {
LABEL_14:
          v20 = 0;
        }

        v7 = v52;
      }

      else
      {

        v20 = 0;
      }

      ++v5;
      if (*(v7 + 16) && (v21 = sub_24E76D644(v11, v10), v7 = v52, (v22 & 1) != 0))
      {
        v46 = v8[8];
        v41 = v8[6];
        v42 = *(*(v52 + 56) + 8 * v21);
        v23 = [v42 _gkCompositeName];
        v24 = sub_24F92B0D8();
        v43 = v25;
        v44 = v24;

        v8[2] = v11;
        v8[3] = v10;
        sub_24F91EA28();
        sub_24E600AEC();
        v40 = sub_24F92C578();
        v27 = v26;
        (*v45)(v46, v41);
        if (v27)
        {
          v28 = v27;
          v29 = v40;
        }

        else
        {

          v29 = v11;
          v28 = v10;
        }

        v53[0] = 0x3A746361746E6F63;
        v53[1] = 0xEA00000000002F2FLL;
        MEMORY[0x253050C20](v29, v28);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_24E617854(0, *(v47 + 16) + 1, 1, v47);
          v47 = result;
        }

        v31 = *(v47 + 16);
        v30 = *(v47 + 24);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          result = sub_24E617854((v30 > 1), v31 + 1, 1, v47);
          v32 = v31 + 1;
          v47 = result;
        }

        *(v47 + 16) = v32;
        v33 = v47 + 88 * v31;
        *(v33 + 32) = v11;
        *(v33 + 40) = v10;
        *(v33 + 48) = v48;
        *(v33 + 56) = v12;
        *(v33 + 64) = v44;
        *(v33 + 72) = v43;
        *(v33 + 80) = 0x3A746361746E6F63;
        *(v33 + 88) = 0xEA00000000002F2FLL;
        *(v33 + 96) = v49;
        *(v33 + 104) = v13;
        *(v33 + 112) = v20;
        *(v33 + 113) = 1;
        v7 = v52;
        v0 = v8;
        if (v5 == v51)
        {
          goto LABEL_30;
        }
      }

      else
      {

        v0 = v8;
        if (v5 == v51)
        {
          goto LABEL_30;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
LABEL_30:
    v34 = v0[16];

    v53[0] = v47;

    sub_24F51A030(v53);
    if (v34)
    {
    }

    else
    {

      v35 = v53[0];
      v36 = sub_24F9220B8();
      v37 = sub_24F92BD98();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_24E5DD000, v36, v37, "[FriendSuggestionsDataIntentImplementation loadContactSuggestions] Finished.", v38, 2u);
        MEMORY[0x2530542D0](v38, -1, -1);
      }

      v39 = v0[1];

      return v39(v35);
    }
  }

  return result;
}

uint64_t sub_24F524EBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F524F3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247268);
  *(v0 + 24) = sub_24F92A9E8();
  if (qword_27F211320 != -1)
  {
    swift_once();
  }

  v1 = off_27F2471A0;
  *(v0 + 32) = off_27F2471A0;
  v2 = *v1;
  v3 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 40) = v3;
  v4 = *(v2 + 48);
  *(v0 + 72) = v4;
  v5 = (v4 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v5));
  sub_24F527C50((v1 + v3));
  os_unfair_lock_unlock((v1 + v5));
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_24F5250BC;

  return sub_24F52438C();
}

uint64_t sub_24F5250BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_24F5254F8;
  }

  else
  {
    v4 = sub_24F5251D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24F5251D0()
{
  v1 = qword_27F2113E8;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E808);

  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 56);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = *(v6 + 16);

    *(v7 + 4) = v8;

    _os_log_impl(&dword_24E5DD000, v3, v4, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Loaded %ld suggestions.", v7, 0xCu);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  v11 = qword_27F2113E8;

  if (v11 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27F39E808);

  v12 = sub_24F9220B8();
  v13 = sub_24F92BD98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = *(v9 + 16);

    _os_log_impl(&dword_24E5DD000, v12, v13, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Caching and returning %ld suggestions.", v14, 0xCu);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 32);
  v15 = *(v0 + 40);
  v17 = (*(v0 + 72) + 3) & 0x1FFFFFFFCLL;
  *(v0 + 16) = v9;

  sub_24F92A9C8();

  *(swift_task_alloc() + 16) = v9;
  os_unfair_lock_lock((v16 + v17));
  sub_24F527C7C((v16 + v15));
  v18 = *(v0 + 72);
  v19 = *(v0 + 32);
  if (v10)
  {

    os_unfair_lock_unlock((v19 + ((v18 + 3) & 0x1FFFFFFFCLL)));
  }

  else
  {
    os_unfair_lock_unlock((v19 + ((v18 + 3) & 0x1FFFFFFFCLL)));

    v20 = *(v0 + 8);

    v20(v9);
  }
}

uint64_t sub_24F5254F8()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E808);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Unable to load suggestions: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = *(v0 + 64);

  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27F39E808);
  v12 = MEMORY[0x277D84F90];

  v13 = sub_24F9220B8();
  v14 = sub_24F92BD98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(v12 + 16);

    _os_log_impl(&dword_24E5DD000, v13, v14, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Caching and returning %ld suggestions.", v15, 0xCu);
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 32);
  v16 = *(v0 + 40);
  v18 = (*(v0 + 72) + 3) & 0x1FFFFFFFCLL;
  *(v0 + 16) = v12;

  sub_24F92A9C8();

  *(swift_task_alloc() + 16) = v12;
  os_unfair_lock_lock((v17 + v18));
  sub_24F527C7C((v17 + v16));
  os_unfair_lock_unlock((*(v0 + 32) + ((*(v0 + 72) + 3) & 0x1FFFFFFFCLL)));

  v19 = MEMORY[0x277D84F90];

  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_24F525850()
{
  v1 = sub_24F91F648();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471D0);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F525960, 0, 0);
}

uint64_t sub_24F525960()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[10] = __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Fetching...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  if (qword_27F211320 != -1)
  {
    swift_once();
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = off_27F2471A0;
  v8 = *(*off_27F2471A0 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_27F2471A0 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F2471A0 + v9));
  sub_24E60169C(&v7[v8], v5, &unk_27F2471D0);
  os_unfair_lock_unlock(&v7[v9]);
  sub_24E60169C(v5, v6, &unk_27F2471D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v24 = sub_24F9220B8();
      v25 = sub_24F92BD98();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_24E5DD000, v24, v25, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Suggestions not yet loaded, starting load...", v26, 2u);
        MEMORY[0x2530542D0](v26, -1, -1);
      }

      v27 = swift_task_alloc();
      v0[11] = v27;
      *v27 = v0;
      v28 = sub_24F525FA8;
      goto LABEL_24;
    }

    v11 = v0[8];
    v12 = v0[6];
    v13 = v0[3];
    v14 = v0[4];
    v15 = *v11;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247260);
    (*(v14 + 32))(v12, &v11[*(v16 + 48)], v13);

    v17 = sub_24F9220B8();
    v18 = sub_24F92BD98();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = *(v15 + 16);

      _os_log_impl(&dword_24E5DD000, v17, v18, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Suggestions already cached, returning %ld", v19, 0xCu);
      MEMORY[0x2530542D0](v19, -1, -1);
    }

    else
    {
    }

    v29 = v0[5];
    v30 = v0[3];
    v31 = v0[4];
    sub_24F91F638();
    sub_24F91F558();
    v33 = v32;
    v34 = *(v31 + 8);
    v0[16] = v34;
    v0[17] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34(v29, v30);
    if (v33 > 300.0)
    {

      v35 = sub_24F9220B8();
      v36 = sub_24F92BD98();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_24E5DD000, v35, v36, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Cache is getting old, marking it as dirty for next fetch", v37, 2u);
        MEMORY[0x2530542D0](v37, -1, -1);
      }

      v27 = swift_task_alloc();
      v0[18] = v27;
      *v27 = v0;
      v28 = sub_24F5263B4;
LABEL_24:
      v27[1] = v28;

      return sub_24F524F20();
    }

    v38 = v0[9];
    v34(v0[6], v0[3]);
    sub_24E601704(v38, &unk_27F2471D0);

    v39 = v0[1];

    return v39(v15);
  }

  else
  {
    v0[13] = *v0[8];
    v20 = sub_24F9220B8();
    v21 = sub_24F92BD98();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24E5DD000, v20, v21, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Suggestions already fetching, returning cached once it's ready...", v22, 2u);
      MEMORY[0x2530542D0](v22, -1, -1);
    }

    v23 = swift_task_alloc();
    v0[14] = v23;
    *v23 = v0;
    v23[1] = sub_24F526150;

    return MEMORY[0x282180668](v0 + 2);
  }
}

uint64_t sub_24F525FA8(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_24F5260A8, 0, 0);
}

uint64_t sub_24F5260A8()
{
  sub_24E601704(v0[9], &unk_27F2471D0);
  v1 = v0[12];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_24F526150()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24F526570;
  }

  else
  {
    v2 = sub_24F526264;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F526264()
{
  v1 = v0[2];

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Cached suggestions are ready, returning %ld", v4, 0xCu);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  else
  {
  }

  v5 = v0[9];

  sub_24E601704(v5, &unk_27F2471D0);

  v6 = v0[1];

  return v6(v1);
}

uint64_t sub_24F5263B4(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_24F5264B4, 0, 0);
}

uint64_t sub_24F5264B4()
{
  v1 = *(v0 + 72);
  (*(v0 + 128))(*(v0 + 48), *(v0 + 24));
  sub_24E601704(v1, &unk_27F2471D0);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24F526570()
{
  v1 = *(v0 + 72);

  sub_24E601704(v1, &unk_27F2471D0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F52663C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247250);
  *(v0 + 40) = sub_24F92A9E8();
  if (qword_27F211328 != -1)
  {
    swift_once();
  }

  v1 = off_27F2471A8;
  *(v0 + 48) = off_27F2471A8;
  v2 = *v1;
  v3 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 56) = v3;
  v4 = *(v2 + 48);
  *(v0 + 88) = v4;
  v5 = (v4 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v5));
  sub_24F527B50((v1 + v3));
  os_unfair_lock_unlock((v1 + v5));
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *(v7 + 16) = v6;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
  *v8 = v0;
  v8[1] = sub_24F526830;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000025, 0x800000024FA76090, sub_24F527B7C, v7, v9);
}

uint64_t sub_24F526830()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24F526A78;
  }

  else
  {

    v2 = sub_24F52694C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24F52694C()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = (*(v0 + 88) + 3) & 0x1FFFFFFFCLL;
  v5 = *(v0 + 16);
  *(swift_task_alloc() + 16) = v5;
  os_unfair_lock_lock((v3 + v4));
  sub_24F527B84((v3 + v2));
  if (v1)
  {
    v6 = (*(v0 + 48) + ((*(v0 + 88) + 3) & 0x1FFFFFFFCLL));

    os_unfair_lock_unlock(v6);
  }

  else
  {
    os_unfair_lock_unlock((*(v0 + 48) + ((*(v0 + 88) + 3) & 0x1FFFFFFFCLL)));

    *(v0 + 24) = v5;
    sub_24F92A9C8();

    v7 = *(v0 + 8);

    v7(v5);
  }
}

uint64_t sub_24F526A78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F526AE8(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_24F91F648();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F526BFC, 0, 0);
}

uint64_t sub_24F526BFC()
{
  if (qword_27F211328 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = off_27F2471A8;
  v4 = *(*off_27F2471A8 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*off_27F2471A8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F2471A8 + v5));
  sub_24E60169C(&v3[v4], v2, &qword_27F242AC8);
  os_unfair_lock_unlock(&v3[v5]);
  sub_24E60169C(v2, v1, &qword_27F242AC8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (qword_27F2113E8 != -1)
      {
        swift_once();
      }

      v28 = sub_24F9220D8();
      v0[11] = __swift_project_value_buffer(v28, qword_27F39E808);
      v29 = sub_24F9220B8();
      v30 = sub_24F92BD98();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_24E5DD000, v29, v30, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Recently played with cache is empty, fetching.", v31, 2u);
        MEMORY[0x2530542D0](v31, -1, -1);
      }

      v21 = swift_task_alloc();
      v0[12] = v21;
      *v21 = v0;
      v22 = sub_24F527284;
      goto LABEL_23;
    }

    v7 = v0[9];
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[4];
    v11 = v0[5];
    v12 = *v7;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD0);
    (*(v11 + 32))(v8, &v7[*(v13 + 48)], v10);
    sub_24F91F618();
    sub_24F91F558();
    v15 = v14;
    v16 = *(v11 + 8);
    v0[19] = v16;
    v0[20] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v9, v10);
    if (v15 > 300.0)
    {

      if (qword_27F2113E8 != -1)
      {
        swift_once();
      }

      v17 = sub_24F9220D8();
      v0[21] = __swift_project_value_buffer(v17, qword_27F39E808);
      v18 = sub_24F9220B8();
      v19 = sub_24F92BD98();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_24E5DD000, v18, v19, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Recently played with cache is expired, refetching.", v20, 2u);
        MEMORY[0x2530542D0](v20, -1, -1);
      }

      v21 = swift_task_alloc();
      v0[22] = v21;
      *v21 = v0;
      v22 = sub_24F527798;
LABEL_23:
      v21[1] = v22;
      v32 = v0[3];

      return sub_24F52661C(v32);
    }

    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v33 = sub_24F9220D8();
    __swift_project_value_buffer(v33, qword_27F39E808);
    v34 = sub_24F9220B8();
    v35 = sub_24F92BD98();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[10];
    v38 = v0[7];
    v39 = v0[4];
    if (v36)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24E5DD000, v34, v35, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Recently played with cache is valid, returning.", v40, 2u);
      MEMORY[0x2530542D0](v40, -1, -1);
    }

    v16(v38, v39);
    sub_24E601704(v37, &qword_27F242AC8);

    v41 = v0[1];

    return v41(v12);
  }

  else
  {
    v0[15] = *v0[9];
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v23 = sub_24F9220D8();
    v0[16] = __swift_project_value_buffer(v23, qword_27F39E808);
    v24 = sub_24F9220B8();
    v25 = sub_24F92BD98();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24E5DD000, v24, v25, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Recently played with cache is mid-update, waiting on it to finish.", v26, 2u);
      MEMORY[0x2530542D0](v26, -1, -1);
    }

    v27 = swift_task_alloc();
    v0[17] = v27;
    *v27 = v0;
    v27[1] = sub_24F527554;

    return MEMORY[0x282180668](v0 + 2);
  }
}

uint64_t sub_24F527284(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_24F5274B4;
  }

  else
  {
    v4 = sub_24F527398;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F527398()
{
  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[10];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v1, v2, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Recently played with cache is now full, returning.", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  sub_24E601704(v4, &qword_27F242AC8);
  v6 = v0[13];

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_24F5274B4()
{
  sub_24E601704(*(v0 + 80), &qword_27F242AC8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F527554()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24F527AA4;
  }

  else
  {
    v2 = sub_24F527668;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F527668()
{
  v1 = v0[2];
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Recently played with cache finished its update, returning.", v6, 2u);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  sub_24E601704(v5, &qword_27F242AC8);

  v7 = v0[1];

  return v7(v1);
}

uint64_t sub_24F527798(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_24F5279F0;
  }

  else
  {
    v4 = sub_24F5278AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F5278AC()
{
  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[19];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[4];
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24E5DD000, v1, v2, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Recently played with cache is valid again, returning.", v8, 2u);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  v4(v6, v7);
  sub_24E601704(v5, &qword_27F242AC8);
  v9 = v0[23];

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_24F5279F0()
{
  v1 = *(v0 + 80);
  (*(v0 + 152))(*(v0 + 56), *(v0 + 32));
  sub_24E601704(v1, &qword_27F242AC8);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F527AA4()
{
  v1 = *(v0 + 80);

  sub_24E601704(v1, &qword_27F242AC8);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t block_copy_helper_157(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F527CE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t sub_24F527DBC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_24F527E58(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Game();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 20)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24F91F648();
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 24)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_24F527F88(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for Game();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24F91F648();
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24F5280A8()
{
  result = type metadata accessor for Game();
  if (v1 <= 0x3F)
  {
    result = sub_24F91F648();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t PlayerDataIntent.playerID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24F5281AC(uint64_t a1)
{
  v2 = sub_24F528360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5281E8(uint64_t a1)
{
  v2 = sub_24F528360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayerDataIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247298);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F528360();
  sub_24F92D128();
  sub_24F92CCA8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F528360()
{
  result = qword_27F2472A0;
  if (!qword_27F2472A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2472A0);
  }

  return result;
}

uint64_t PlayerDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2472A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F528360();
  sub_24F92D108();
  if (!v2)
  {
    v9 = sub_24F92CBC8();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F528560(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247298);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F528360();
  sub_24F92D128();
  sub_24F92CCA8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F5286C0()
{
  result = qword_27F2472B0;
  if (!qword_27F2472B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2472B0);
  }

  return result;
}

unint64_t sub_24F528718()
{
  result = qword_27F2472B8;
  if (!qword_27F2472B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2472B8);
  }

  return result;
}

unint64_t sub_24F528770()
{
  result = qword_27F2472C0;
  if (!qword_27F2472C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2472C0);
  }

  return result;
}

uint64_t sub_24F5287C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217C08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2472C8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    while (1)
    {
      sub_24E60169C(v11, v5, &qword_27F217C08);
      if ((v5[*(v2 + 48) + 8] & 1) == 0)
      {
        break;
      }

      sub_24E601704(v5, &qword_27F217C08);
      v11 += v12;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    sub_24E6009C8(v5, v9, &qword_27F217C08);
    v14 = 0;
    v13 = 1;
  }

  else
  {
LABEL_5:
    v13 = 0;
    v14 = 1;
  }

  (*(v3 + 56))(v9, v14, 1, v2, v7);
  sub_24E601704(v9, &qword_27F2472C8);
  return v13;
}

uint64_t sub_24F5289A8(uint64_t a1, int a2, int64_t *a3, void *a4, uint64_t a5)
{
  v130 = a4;
  LODWORD(v122) = a2;
  v132 = a1;
  v7 = type metadata accessor for PlayerAvatar(0);
  v128 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v121 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType(0);
  v134 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v127 = &v117 - v13;
  MEMORY[0x28223BE20](v14);
  v120 = &v117 - v15;
  MEMORY[0x28223BE20](v16);
  v124 = &v117 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217C08);
  v133 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v123 = &v117 - v22;
  MEMORY[0x28223BE20](v23);
  v126 = &v117 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = (&v117 - v26);
  MEMORY[0x28223BE20](v28);
  v119 = &v117 - v29;
  MEMORY[0x28223BE20](v30);
  v131 = &v117 - v31;
  MEMORY[0x28223BE20](v32);
  v135 = &v117 - v33;
  MEMORY[0x28223BE20](v34);
  v125 = &v117 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v117 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2472C8);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v117 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  MEMORY[0x28223BE20](v43);
  v45 = &v117 - v44;
  MEMORY[0x28223BE20](v46);
  v49 = &v117 - v48;
  v129 = a3;
  if (v122)
  {
    v50 = sub_24E6B7C60(a5, a3);
    v131 = v52;
    v132 = v53 >> 1;
    v54 = (v53 >> 1) - v51;
    if (__OFSUB__(v53 >> 1, v51))
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v27 = v50;
    if (!v54)
    {

      swift_unknownObjectRelease();
      v27 = MEMORY[0x277D84F90];
LABEL_52:
      v84 = v27[2];
      v41 = a3[2];
      v11 = MEMORY[0x277D84F90];
      if (v84 == v41)
      {
        return v27;
      }

      v51 = v84 - 1;
      if (v41 >= v84 - 1)
      {
        if (v84)
        {
          if (v84 == 1)
          {

            if (!v41)
            {
LABEL_96:

              return v27;
            }

LABEL_57:
            v136 = v11;
            sub_24F457BF8(0, v41, 0);
            v85 = v136;
            v86 = v133[80];
            v129 = a3;
            v87 = a3 + ((v86 + 32) & ~v86);
            v134 = *(v133 + 9);
            v88 = v128;
            v89 = v121;
            do
            {
              v90 = v135;
              sub_24E60169C(v87, v135, &qword_27F217C08);
              sub_24E6009C8(v90, v20, &qword_27F217C08);
              sub_24F5299C0(v20, v89, type metadata accessor for PlayerAvatar);
              v136 = v85;
              v92 = v85[2];
              v91 = v85[3];
              if (v92 >= v91 >> 1)
              {
                sub_24F457BF8(v91 > 1, v92 + 1, 1);
                v88 = v128;
                v85 = v136;
              }

              v85[2] = v92 + 1;
              sub_24F5299C0(v89, v85 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v92, type metadata accessor for PlayerAvatar);
              v87 += v134;
              --v41;
            }

            while (v41);
            goto LABEL_96;
          }

LABEL_95:
          sub_24E6B87A4(a3, a3 + ((v133[80] + 32) & ~v133[80]), v51, (2 * v41) | 1);
          a3 = v116;
          v41 = v116[2];
          if (!v41)
          {
            goto LABEL_96;
          }

          goto LABEL_57;
        }

LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v55 = v51;
    v136 = MEMORY[0x277D84F90];
    v41 = v54 & ~(v54 >> 63);

    sub_24F457A38(0, v41, 0);
    if (v54 < 0)
    {
      goto LABEL_91;
    }

    v130 = v27;
    v27 = v136;
    v41 = &qword_27F217C08;
    a3 = &unk_24F9FAD50;
    if (v55 <= v132)
    {
      v56 = v132;
    }

    else
    {
      v56 = v55;
    }

    while (v56 != v55)
    {
      v57 = v135;
      sub_24E60169C(v131 + *(v133 + 9) * v55, v135, &qword_27F217C08);
      v58 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D78) + 48)];
      sub_24E6009C8(v57, v20, &qword_27F217C08);
      sub_24F5299C0(v20, v11, type metadata accessor for PlayerAvatar);
      *v58 = 0;
      v58[8] = 1;
      v136 = v27;
      v60 = v27[2];
      v59 = v27[3];
      if (v60 >= v59 >> 1)
      {
        sub_24F457A38(v59 > 1, v60 + 1, 1);
        v27 = v136;
      }

      v27[2] = v60 + 1;
      sub_24F5299C0(v11, v27 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v60, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
      if (v132 == ++v55)
      {
        swift_unknownObjectRelease();
        a3 = v129;
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v11 = a5;
  v122 = v47;
  if (v132 < 0 || a3[2] <= v132)
  {
    (*(v133 + 7))(v45, 1, 1, v18);
  }

  else
  {
    v20 = v133;
    sub_24E60169C(a3 + ((v20[80] + 32) & ~v20[80]) + *(v133 + 9) * v132, v45, &qword_27F217C08);
    (*(v20 + 7))(v45, 0, 1, v18);
  }

  sub_24E6009C8(v45, v49, &qword_27F2472C8);
  v61 = sub_24F5287C4(a3);
  v118 = v49;
  if ((v61 & 1) == 0)
  {
    sub_24E60169C(v49, v41, &qword_27F2472C8);
    if ((*(v133 + 6))(v41, 1, v18) == 1)
    {
      sub_24E601704(v41, &qword_27F2472C8);
      v27 = MEMORY[0x277D84F90];
LABEL_64:
      v95 = a3[2];
      v96 = v132;
      if (v95)
      {
        v97 = 0;
        v98 = MEMORY[0x277D84F90];
        do
        {
          if (v96 != v97)
          {
            v102 = v27[2];
            if (v102 == v130)
            {
              sub_24E60169C(a3 + ((v133[80] + 32) & ~v133[80]) + *(v133 + 9) * v97, v126, &qword_27F217C08);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v98 = sub_24E6168A0(0, v98[2] + 1, 1, v98);
              }

              v104 = v98[2];
              v103 = v98[3];
              if (v104 >= v103 >> 1)
              {
                v98 = sub_24E6168A0(v103 > 1, v104 + 1, 1, v98);
              }

              v98[2] = v104 + 1;
              v99 = v98 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v104;
              v100 = type metadata accessor for PlayerAvatar;
              v101 = v126;
            }

            else
            {
              v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D78);
              v106 = a3;
              v107 = v127;
              v108 = &v127[*(v105 + 48)];
              v109 = v123;
              sub_24E60169C(v106 + ((v133[80] + 32) & ~v133[80]) + *(v133 + 9) * v97, v123, &qword_27F217C08);
              sub_24F5299C0(v109, v107, type metadata accessor for PlayerAvatar);
              *v108 = 0;
              v108[8] = 1;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = sub_24E6168C8(0, v102 + 1, 1, v27);
              }

              v111 = v27[2];
              v110 = v27[3];
              if (v111 >= v110 >> 1)
              {
                v27 = sub_24E6168C8(v110 > 1, v111 + 1, 1, v27);
              }

              v27[2] = v111 + 1;
              v99 = v27 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v111;
              v100 = type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType;
              v101 = v127;
            }

            sub_24F5299C0(v101, v99, v100);
            a3 = v129;
            v96 = v132;
          }

          ++v97;
        }

        while (v95 != v97);
      }

      sub_24E601704(v118, &qword_27F2472C8);
      return v27;
    }

    v11 = v119;
    sub_24E6009C8(v41, v119, &qword_27F217C08);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D78);
    v63 = v120;
    v94 = &v120[*(v93 + 48)];
    sub_24E60169C(v11, v27, &qword_27F217C08);
    sub_24F5299C0(v27, v63, type metadata accessor for PlayerAvatar);
    *v94 = 0;
    v94[8] = 1;
    v27 = sub_24E6168C8(0, 1, 1, MEMORY[0x277D84F90]);
    v38 = v27[2];
    v65 = v27[3];
    v41 = v38 + 1;
    if (v38 < v65 >> 1)
    {
LABEL_63:
      sub_24E601704(v11, &qword_27F217C08);
      v27[2] = v41;
      sub_24F5299C0(v63, v27 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v38, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
      goto LABEL_64;
    }

LABEL_99:
    v27 = sub_24E6168C8(v65 > 1, v41, 1, v27);
    goto LABEL_63;
  }

  v62 = a5 - 1;
  if (__OFSUB__(a5, 1))
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v123 = v18;
  v63 = v132;
  v64 = v132;
  v41 = v124;
  if (v62 >= 1)
  {
    v63 = v132;
    v64 = v132;
    do
    {
      if (v63 <= 0)
      {
        if (v64 >= a3[2] - 1)
        {
          break;
        }
      }

      else
      {
        --v63;
      }

      if (__OFSUB__(v64, v63))
      {
        goto LABEL_88;
      }

      if (v64 - v63 == 3)
      {
        break;
      }

      if (v64 < a3[2] - 1)
      {
        ++v64;
      }

      if (__OFSUB__(v64, v63))
      {
        goto LABEL_89;
      }
    }

    while (v64 - v63 < v62);
  }

  v65 = a3[2];
  v130 = v65;
  if (!v65)
  {
    v27 = MEMORY[0x277D84F90];
    goto LABEL_82;
  }

  if (v64 < v63)
  {
    __break(1u);
    goto LABEL_99;
  }

  v66 = 0;
  v67 = v129 + ((v133[80] + 32) & ~v133[80]);
  v68 = MEMORY[0x277D84F90];
  v129 = *(v133 + 9);
  v27 = MEMORY[0x277D84F90];
  v126 = v63;
  v127 = v38;
  do
  {
    sub_24E60169C(v67, v38, &qword_27F217C08);
    if (v66 < v63 || v64 < v66)
    {
      sub_24E60169C(v38, v131, &qword_27F217C08);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_24E6168A0(0, v68[2] + 1, 1, v68);
      }

      v79 = v68[2];
      v78 = v68[3];
      if (v79 >= v78 >> 1)
      {
        v68 = sub_24E6168A0(v78 > 1, v79 + 1, 1, v68);
      }

      sub_24E601704(v38, &qword_27F217C08);
      v68[2] = v79 + 1;
      v69 = v68 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v79;
      v70 = type metadata accessor for PlayerAvatar;
      v71 = v131;
    }

    else
    {
      v72 = v125;
      sub_24E60169C(v38, v125, &qword_27F217C08);
      sub_24F5299C0(v72, v41, type metadata accessor for PlayerAvatar);
      if (v132 == v66)
      {
        v73 = v135;
        sub_24E60169C(v38, v135, &qword_27F217C08);
        v74 = v73 + *(v123 + 48);
        v75 = *v74;
        v76 = *(v74 + 8);
        v77 = v73;
        v41 = v124;
        sub_24F529A28(v77);
      }

      else
      {
        v75 = 0;
        v76 = 1;
      }

      v80 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D78) + 48);
      *v80 = v75;
      *(v80 + 8) = v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v126;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_24E6168C8(0, v27[2] + 1, 1, v27);
      }

      v38 = v127;
      v83 = v27[2];
      v82 = v27[3];
      if (v83 >= v82 >> 1)
      {
        v27 = sub_24E6168C8(v82 > 1, v83 + 1, 1, v27);
      }

      sub_24E601704(v38, &qword_27F217C08);
      v27[2] = v83 + 1;
      v69 = v27 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v83;
      v70 = type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType;
      v71 = v41;
    }

    sub_24F5299C0(v71, v69, v70);
    ++v66;
    v67 += v129;
  }

  while (v130 != v66);
LABEL_82:
  v112 = v122;
  sub_24E6009C8(v118, v122, &qword_27F2472C8);
  v113 = v123;
  if ((*(v133 + 6))(v112, 1, v123) == 1)
  {
    sub_24E601704(v112, &qword_27F2472C8);
    return v27;
  }

  v114 = *(v112 + *(v113 + 48) + 8);
  result = sub_24F529A28(v112);
  if ((v114 & 1) != 0 || !__OFSUB__(v132, v63))
  {
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F5299C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F529A28(uint64_t a1)
{
  v2 = type metadata accessor for PlayerAvatar(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FramedVideoViewModel()
{
  result = qword_27F2472D0;
  if (!qword_27F2472D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F529AF4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
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

uint64_t sub_24F529C98(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
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

uint64_t type metadata accessor for ChallengesLeaderboardSuggestionLockup()
{
  result = qword_27F2472E0;
  if (!qword_27F2472E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F529E74()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24F52A020(319, &qword_27F2191B0, type metadata accessor for Player, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_24F52A020(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
        if (v3 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
          if (v4 <= 0x3F)
          {
            sub_24F52A020(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24F52A020(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F52A084(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247380);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F52C174();
  sub_24F92D128();
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v11 = *(v3 + 40);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
    sub_24F52C288(&qword_27F21BC30, &qword_27F213E28);
    sub_24F92CD48();
    type metadata accessor for ChallengesLeaderboardSuggestionLockup();
    v10[14] = 2;
    sub_24F9289E8();
    sub_24F52C324(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CCF8();
    v10[13] = 3;
    sub_24F92CD08();
    v10[12] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v10[11] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v10[10] = 6;
    sub_24F929608();
    sub_24F52C324(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F52A498@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = v42 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v45);
  v46 = v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247370);
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v42 - v10;
  v12 = type metadata accessor for ChallengesLeaderboardSuggestionLockup();
  MEMORY[0x28223BE20](v12);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 24);
  v17 = sub_24F9289E8();
  v18 = *(*(v17 - 8) + 56);
  v53 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = &v14[v12[8]];
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v52 = v19;
  sub_24E61DA68(&v56, v19, qword_27F21B590);
  v20 = v12[9];
  v21 = sub_24F92A6D8();
  v22 = *(*(v21 - 8) + 56);
  v51 = v20;
  v22(&v14[v20], 1, 1, v21);
  v23 = v12[10];
  v24 = sub_24F929608();
  v25 = *(*(v24 - 8) + 56);
  v54 = v23;
  v25(&v14[v23], 1, 1, v24);
  v26 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_24F52C174();
  v49 = v11;
  v27 = v50;
  sub_24F92D108();
  if (v27)
  {
    v28 = v51;
    v29 = v52;
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_24E601704(&v14[v53], &qword_27F213FB0);
    sub_24E601704(v29, qword_27F24EC90);
    sub_24E601704(&v14[v28], &qword_27F215440);
    return sub_24E601704(&v14[v54], &qword_27F213E68);
  }

  else
  {
    v50 = v8;
    v42[2] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v59 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v30 = v57;
    *v14 = v56;
    *(v14 + 1) = v30;
    *(v14 + 4) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
    v59 = 1;
    sub_24F52C288(&qword_27F2196A8, &qword_27F213E38);
    sub_24F92CC68();
    v31 = v51;
    v32 = v52;
    *(v14 + 5) = v56;
    LOBYTE(v56) = 2;
    sub_24F52C324(&qword_27F214018, MEMORY[0x277D21C48]);
    v33 = v50;
    v42[1] = 0;
    sub_24F92CC18();
    v34 = v12;
    sub_24E61DA68(v33, &v14[v53], &qword_27F213FB0);
    LOBYTE(v56) = 3;
    v35 = sub_24F92CC28();
    v36 = v47;
    v37 = &v14[v34[7]];
    *v37 = v35;
    v37[1] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v59 = 4;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v56, v32, qword_27F24EC90);
    LOBYTE(v56) = 5;
    sub_24E65CAA0();
    v39 = v46;
    sub_24F92CC68();
    sub_24E61DA68(v39, &v14[v31], &qword_27F215440);
    LOBYTE(v56) = 6;
    sub_24F52C324(&qword_27F213F48, MEMORY[0x277D21F70]);
    v40 = v44;
    sub_24F92CC18();
    (*(v36 + 8))(v49, v48);
    sub_24E61DA68(v40, &v14[v54], &qword_27F213E68);
    sub_24F52C1C8(v14, v43);
    __swift_destroy_boxed_opaque_existential_1(v55);
    return sub_24F52C22C(v14);
  }
}

unint64_t sub_24F52AD40()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 1701667182;
  if (v1 != 3)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6B726F77747261;
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

uint64_t sub_24F52AE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F52BF28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F52AE40(uint64_t a1)
{
  v2 = sub_24F52C174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F52AE7C(uint64_t a1)
{
  v2 = sub_24F52C174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F52AEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 36), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

uint64_t sub_24F52AFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247300);
  MEMORY[0x28223BE20](v49);
  v4 = &v47 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247308);
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247310);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v9 = &v47 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247318);
  MEMORY[0x28223BE20](v52);
  v11 = &v47 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247320);
  MEMORY[0x28223BE20](v51);
  v13 = &v47 - v12;
  *v7 = sub_24F9249A8();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247328);
  sub_24F52B5B0(a1, &v7[*(v14 + 44)]);
  v15 = type metadata accessor for ChallengesLeaderboardSuggestionLockup();
  sub_24E60169C(a1 + *(v15 + 32), v54, qword_27F24EC90);
  sub_24E601704(v54, qword_27F21B590);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v16 = sub_24F9248C8();
  __swift_project_value_buffer(v16, qword_27F39F078);
  sub_24E602068(&qword_27F247330, &qword_27F247308);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v7, &qword_27F247308);
  v17 = *(sub_24F924258() + 20);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_24F924B38();
  (*(*(v19 - 8) + 104))(&v4[v17], v18, v19);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(sub_24F924248() + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v25 = sub_24F926D08();

  *&v4[*(v49 + 52)] = v25;
  sub_24F52BE30(v4, v11);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247338);
  v27 = v48;
  v28 = v50;
  (*(v48 + 16))(&v11[v26[9]], v9, v50);
  v29 = &v11[v26[10]];
  *v29 = sub_24F923398() & 1;
  *(v29 + 1) = v30;
  v29[16] = v31 & 1;
  v32 = &v11[v26[11]];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v33 = qword_27F24E488;
  v34 = sub_24F923398();
  v36 = v35;
  v38 = v37;
  v39 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247340) + 36)];
  *v39 = v33;
  v39[8] = v34 & 1;
  *(v39 + 2) = v36;
  v39[24] = v38 & 1;
  LOBYTE(v33) = sub_24F923398();
  v41 = v40;
  LOBYTE(v36) = v42;
  sub_24F52BEA8(v4);
  (*(v27 + 8))(v9, v28);
  v43 = &v11[*(v52 + 36)];
  *v43 = v33 & 1;
  *(v43 + 1) = v41;
  v43[16] = v36 & 1;
  LOBYTE(v33) = sub_24F925868();
  sub_24E6009C8(v11, v13, &qword_27F247318);
  v44 = &v13[*(v51 + 36)];
  *v44 = v33;
  *(v44 + 8) = 0u;
  *(v44 + 24) = 0u;
  v44[40] = 1;
  v45 = v53;
  sub_24E6009C8(v13, v53, &qword_27F247320);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247348);
  *(v45 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24F52B5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247350);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = type metadata accessor for ChallengesLeaderboardSuggestionLockup();
  sub_24E60169C(a1 + *(v9 + 24), v8, &qword_27F213FB0);
  v10 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247358) + 36)];
  v11 = *(sub_24F924258() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_24F924B38();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #12.0 }

  *v10 = _Q0;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  sub_24F927618();
  sub_24F9238C8();
  v19 = &v8[*(v4 + 44)];
  v20 = *&v58[11];
  *v19 = *&v58[9];
  *(v19 + 1) = v20;
  *(v19 + 2) = *&v58[13];
  v45 = sub_24F924C98();
  LOBYTE(v50[0]) = 1;
  sub_24F52BA58(a1, v59);
  *(v58 + 7) = v59[0];
  *(&v58[2] + 7) = v59[1];
  *(&v58[4] + 7) = v59[2];
  *(&v58[6] + 7) = v59[3];
  v44 = LOBYTE(v50[0]);
  KeyPath = swift_getKeyPath();
  sub_24E60169C(a1 + *(v9 + 32), v50, qword_27F24EC90);
  v21 = *(&v52 + 7);
  sub_24E601704(v50, qword_27F21B590);
  if (v21)
  {
    v22 = sub_24F926DF8();
    v23 = sub_24F925898();
    v24 = swift_getKeyPath();
    v25 = sub_24F926D38();
    v26 = swift_getKeyPath();
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v23 = 0;
    v26 = 0;
    v25 = 0;
  }

  v27 = v46;
  sub_24E60169C(v8, v46, &qword_27F247350);
  v28 = v27;
  v29 = v43;
  sub_24E60169C(v28, v43, &qword_27F247350);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247360);
  v31 = v29 + v30[12];
  v41 = v8;
  v47[0] = v45;
  v47[1] = 0;
  LOBYTE(v48[0]) = v44;
  *(v48 + 1) = *v58;
  *(&v48[1] + 1) = *&v58[2];
  *(&v48[3] + 1) = *&v58[6];
  *(&v48[2] + 1) = *&v58[4];
  v32 = KeyPath;
  *&v48[4] = *(&v58[7] + 7);
  *(&v48[4] + 1) = KeyPath;
  v49 = 0;
  v33 = v48[0];
  *v31 = v45;
  *(v31 + 16) = v33;
  v34 = v48[1];
  v35 = v48[2];
  v36 = v48[3];
  v37 = v48[4];
  *(v31 + 96) = 0;
  *(v31 + 64) = v36;
  *(v31 + 80) = v37;
  *(v31 + 32) = v34;
  *(v31 + 48) = v35;
  v38 = v29 + v30[16];
  *v38 = 0;
  *(v38 + 8) = 1;
  v39 = (v29 + v30[20]);
  sub_24E60169C(v47, v50, &qword_27F247368);
  sub_24E6DC040(v22);
  sub_24E6DC0B0(v22);
  *v39 = v22;
  v39[1] = v24;
  v39[2] = v23;
  v39[3] = v26;
  v39[4] = v25;
  sub_24E601704(v41, &qword_27F247350);
  sub_24E6DC0B0(v22);
  v53 = *&v58[2];
  v54 = *&v58[4];
  *v55 = *&v58[6];
  v50[0] = v45;
  v50[1] = 0;
  v51 = v44;
  v52 = *v58;
  *&v55[15] = *(&v58[7] + 7);
  v56 = v32;
  v57 = 0;
  sub_24E601704(v50, &qword_27F247368);
  return sub_24E601704(v46, &qword_27F247350);
}

uint64_t sub_24F52BA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ChallengesLeaderboardSuggestionLockup();
  sub_24E600AEC();

  v5 = sub_24F925E18();
  v7 = v6;
  v9 = v8;
  if (*(*(a1 + 40) + 16))
  {
    v32 = v4;
    sub_24F69AF8C();
    v10 = sub_24F925E18();
    v12 = v11;
    v14 = v13;
    sub_24F925A18();
    v33 = v7;
    v15 = sub_24F925C98();
    v17 = v16;
    v34 = v9;
    v19 = v18;

    sub_24E600B40(v10, v12, v14 & 1);

    sub_24F9251C8();
    v20 = sub_24F925C58();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = v19 & 1;
    v9 = v34;
    v28 = v15;
    v7 = v33;
    sub_24E600B40(v28, v17, v27);

    v29 = v24 & 1;
    sub_24E5FD138(v20, v22, v29);

    v4 = v32;
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v29 = 0;
    v26 = 0;
  }

  v30 = v4 & 1;
  sub_24E5FD138(v5, v7, v4 & 1);

  sub_24E65D2B4(v20, v22, v29, v26);
  sub_24E65D2F8(v20, v22, v29, v26);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v30;
  *(a2 + 24) = v9;
  *(a2 + 32) = v20;
  *(a2 + 40) = v22;
  *(a2 + 48) = v29;
  *(a2 + 56) = v26;
  sub_24E65D2F8(v20, v22, v29, v26);
  sub_24E600B40(v5, v7, v30);
}

uint64_t sub_24F52BCA0()
{
  sub_24F47D8E0();

  return sub_24F9218E8();
}

unint64_t sub_24F52BD30()
{
  result = qword_27F2472F8;
  if (!qword_27F2472F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2472F8);
  }

  return result;
}

uint64_t sub_24F52BE30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F52BEA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F52BF28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA6B270 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
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

unint64_t sub_24F52C174()
{
  result = qword_27F247378;
  if (!qword_27F247378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247378);
  }

  return result;
}

uint64_t sub_24F52C1C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesLeaderboardSuggestionLockup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F52C22C(uint64_t a1)
{
  v2 = type metadata accessor for ChallengesLeaderboardSuggestionLockup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F52C288(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240);
    sub_24F52C324(a2, type metadata accessor for Player);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}