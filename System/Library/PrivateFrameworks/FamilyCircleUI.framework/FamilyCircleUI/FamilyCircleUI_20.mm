__n128 sub_21BD7A05C@<Q0>(void (*a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(&v7);
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v21[0] = v7;
  v21[1] = v8;
  v21[2] = v9;
  v21[3] = v10;
  v21[4] = v11;
  v21[5] = v12;
  v22 = v13;
  sub_21BC12ED0(&v14, &v6);
  sub_21BD7FB80(v21);
  v3 = v19;
  *(a2 + 64) = v18;
  *(a2 + 80) = v3;
  *(a2 + 96) = v20;
  v4 = v15;
  *a2 = v14;
  *(a2 + 16) = v4;
  result = v17;
  *(a2 + 32) = v16;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_21BD7A108()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);

  if ((v7 & 1) == 0)
  {
    sub_21BE28FEC();
    v8 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_21BD7A248()
{
  v1 = [*v0 dsid];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 56);
    v4 = OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore;
    v5 = *(v3 + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v6 = v16;
    if (!v16)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v7 = [v6 me];

    v8 = [v7 dsid];
    if (!v8)
    {
      goto LABEL_11;
    }

    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v9 = v2;
    v10 = sub_21BE2940C();

    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }

    v11 = *(v3 + v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v12 = v16;
    if (!v16)
    {
      v12 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v13 = [v12 me];

    if (v13)
    {
      v14 = sub_21BE2916C();

      if (v14)
      {
        return 1;
      }
    }

    else
    {
LABEL_11:
    }
  }

  return 0;
}

uint64_t sub_21BD7A450()
{
  v1 = v0;
  sub_21BD7A108();
  sub_21BDA72D4();
  sub_21BE262CC();

  if (LOBYTE(v9[0]) == 2 || (v9[0] & 1) == 0)
  {
    v3 = *(*(v0 + 56) + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v4 = v9[0];
    if (!v9[0])
    {
      v4 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v5 = *v1;
    v6 = *(v1 + 152);
    v10 = type metadata accessor for ServicesStore();
    v11 = &off_282D8FEE0;
    v9[0] = v6;
    v7 = *__swift_project_boxed_opaque_existential_1Tm(v9, v10);

    v2 = sub_21BD7EF34(v5, 0x545F4E4545524353, 0xEB00000000454D49, v7, v4);

    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_21BD7A5B4@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 136);
  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  v5 = qword_280BDCB98;
  v6 = type metadata accessor for ServicesStore();
  v18[3] = v6;
  v18[4] = &off_282D8FEE0;
  v18[0] = v5;

  v7 = [v3 dsid];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = __swift_project_boxed_opaque_existential_1Tm(v18, v6);
  v10 = sub_21BD7EE28(0x545F4E4545524353, 0xEB00000000454D49, *v9);
  if (!v10)
  {

    v14 = 0;
    goto LABEL_12;
  }

  v11 = v10;
  v17 = v8;
  MEMORY[0x28223BE20](v10);
  v16[2] = &v17;
  v12 = sub_21BC9DAC4(sub_21BBF0CE4, v16, v11);

  if ((v12 & 1) == 0)
  {

LABEL_11:
    v14 = 2;
    goto LABEL_12;
  }

  v13 = [v4 activityEnabledForUser];

  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

LABEL_12:
  *a1 = v14;
  return __swift_destroy_boxed_opaque_existential_0Tm(v18);
}

id sub_21BD7A754()
{
  v1 = *(v0[7] + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = v8;
  if (!v8)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v3 = *v0;
  v4 = [v2 me];
  if (v4)
  {
    v5 = v4;
    if (sub_21BE2916C())
    {
      v6 = [v5 isGuardian];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_21BD7A854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCF0, &qword_21BE48D10);
  v3 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v5 = &v55 - v4;
  v6 = type metadata accessor for MemberDetailsLocationView();
  v7 = *(*(v6 - 1) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (&v55 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCF8, &qword_21BE48D18);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6128, &qword_21BE48D20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD00, &qword_21BE48D28);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  v24 = *a1;
  v25 = [*a1 isMe];
  if (v25)
  {
    v26 = MEMORY[0x28223BE20](v25);
    *(&v55 - 2) = a1;
    v27 = MEMORY[0x28223BE20](v26);
    *(&v55 - 2) = a1;
    MEMORY[0x28223BE20](v27);
    *(&v55 - 2) = sub_21BD7FB28;
    *(&v55 - 1) = v28;
    sub_21BD10D60();
    sub_21BE268EC();
    v29 = sub_21BE268FC();
    v30 = (*(*(v29 - 8) + 56))(v19, 0, 1, v29);
    MEMORY[0x28223BE20](v30);
    *(&v55 - 2) = sub_21BD7FBF4;
    *(&v55 - 1) = &v55 - 4;
    sub_21BD7F8AC();
    sub_21BD7F440(&qword_27CDB61E8, MEMORY[0x277D40260]);
    sub_21BE2709C();
    v31 = *(a1 + 160);
    KeyPath = swift_getKeyPath();
    v33 = swift_allocObject();
    *(v33 + 16) = (v31 & 1) == 0;
    v34 = &v23[*(v20 + 36)];
    *v34 = KeyPath;
    v34[1] = sub_21BC0C5A0;
    v34[2] = v33;
    sub_21BBA3854(v23, v15, &qword_27CDBBD00, &qword_21BE48D28);
    swift_storeEnumTagMultiPayload();
    sub_21BD7F900();
    sub_21BD7F9E4();
    sub_21BE2784C();
    sub_21BB3A4CC(v23, &qword_27CDBBD00, &qword_21BE48D28);
LABEL_7:
    v38 = 0;
    goto LABEL_8;
  }

  v58 = v5;
  v59 = v20;
  v60 = v12;
  v35 = *(*(a1 + 56) + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v36 = v65;
  if (!v65)
  {
    v36 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v37 = [v36 me];

  v38 = 1;
  if (v37)
  {
    v56 = v37;
    v39 = *(a1 + 72);
    v40 = *(a1 + 152);
    swift_getKeyPath();
    v57 = v15;
    swift_getKeyPath();
    v55 = v39;
    sub_21BE26CAC();

    v41 = sub_21BCE6070(0xD000000000000011, 0x800000021BE57B00, v65);

    v42 = v6[5];
    *(v11 + v42) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
    swift_storeEnumTagMultiPayload();
    v43 = v6[6];
    v44 = v11 + v6[8];
    v64 = 0;
    v45 = v24;
    sub_21BE283EC();
    v46 = v66;
    *v44 = v65;
    *(v44 + 1) = v46;
    type metadata accessor for LocationViewModel();
    sub_21BD7F440(&qword_27CDBDC20, type metadata accessor for LocationViewModel);
    *v11 = sub_21BE270CC();
    v11[1] = v47;
    *(v11 + v6[7]) = v45;
    *(v11 + v6[9]) = v56;
    *(v11 + v43) = v41;
    v48 = sub_21BD7F828(v11, v61, type metadata accessor for MemberDetailsLocationView);
    MEMORY[0x28223BE20](v48);
    *(&v55 - 2) = a1;
    sub_21BD7F8AC();
    sub_21BD7F440(&qword_27CDBBD18, type metadata accessor for MemberDetailsLocationView);
    v49 = v58;
    sub_21BE2706C();
    LOBYTE(v43) = *(a1 + 160);
    v50 = swift_getKeyPath();
    v51 = swift_allocObject();
    *(v51 + 16) = (v43 & 1) == 0;
    v52 = (v49 + *(v62 + 36));
    *v52 = v50;
    v52[1] = sub_21BC0AE98;
    v52[2] = v51;
    sub_21BBA3854(v49, v57, &qword_27CDBBCF0, &qword_21BE48D10);
    swift_storeEnumTagMultiPayload();
    sub_21BD7F900();
    sub_21BD7F9E4();
    sub_21BE2784C();
    sub_21BB3A4CC(v49, &qword_27CDBBCF0, &qword_21BE48D10);
    sub_21BD7FAC8(v11, type metadata accessor for MemberDetailsLocationView);
    goto LABEL_7;
  }

LABEL_8:
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD08, &qword_21BE48D30);
  return (*(*(v53 - 8) + 56))(v63, v38, 1, v53);
}

__n128 sub_21BD7B0DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21BDFD940(*(a1 + 72), *(a1 + 176), 0, v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v7;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_21BD7B160@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 72);
  v4 = *a1;
  type metadata accessor for LocationViewModel();
  sub_21BD7F440(&qword_27CDBDC20, type metadata accessor for LocationViewModel);
  v5 = v3;
  v6 = v4;
  result = sub_21BE270CC();
  *a2 = result;
  a2[1] = v8;
  a2[2] = v6;
  return result;
}

uint64_t sub_21BD7B204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC28, &qword_21BE48BB8);
  v3 = *(v31 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v31);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC30, &qword_21BE48BC0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC38, &qword_21BE48BC8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v30 - v20;
  sub_21BD7A5B4(&v33);
  if (v33 == 3 && (v22 = sub_21BD7A450(), (v22 & 1) != 0))
  {
    v30[2] = v30;
    MEMORY[0x28223BE20](v22);
    v30[-2] = a1;
    v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC58, &qword_21BE48BE0);
    sub_21BD7F2EC();
    sub_21BE2860C();
    (*(v11 + 32))(v21, v14, v10);
    v23 = (*(v11 + 56))(v21, 0, 1, v10);
  }

  else
  {
    v23 = (*(v11 + 56))(v21, 1, 1, v10);
  }

  MEMORY[0x28223BE20](v23);
  v30[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC40, &qword_21BE48BD0);
  sub_21BB3B038(&qword_27CDBBC48, &qword_27CDBBC40, &qword_21BE48BD0);
  sub_21BE2860C();
  sub_21BBA3854(v21, v19, &qword_27CDBBC38, &qword_21BE48BC8);
  v24 = v3[2];
  v25 = v31;
  v24(v7, v9, v31);
  v26 = v32;
  sub_21BBA3854(v19, v32, &qword_27CDBBC38, &qword_21BE48BC8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC50, &qword_21BE48BD8);
  v24((v26 + *(v27 + 48)), v7, v25);
  v28 = v3[1];
  v28(v9, v25);
  sub_21BB3A4CC(v21, &qword_27CDBBC38, &qword_21BE48BC8);
  v28(v7, v25);
  return sub_21BB3A4CC(v19, &qword_27CDBBC38, &qword_21BE48BC8);
}

uint64_t sub_21BD7B65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = sub_21BE27A2C();
  v24 = *(v26 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MemberDetailsScreentimeWrapper();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 152);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v11 = sub_21BCE6070(0x545F4E4545524353, 0xEB00000000454D49, v27[0]);

  v12 = [*a1 dsid];
  sub_21BD7A5B4(v27);
  v13 = v27[0];
  v14 = *(a1 + 136);
  v15 = sub_21BD7F3D8();
  v16 = *(v6 + 32);
  *&v9[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  swift_storeEnumTagMultiPayload();
  v17 = *(v6 + 36);
  *&v9[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  swift_storeEnumTagMultiPayload();
  *v9 = v11;
  *(v9 + 1) = v12;
  v9[16] = v13;
  *(v9 + 3) = v14;
  *(v9 + 4) = v15;
  v18 = v14;
  sub_21BE27A0C();
  sub_21BD7F440(&qword_27CDBBC68, type metadata accessor for MemberDetailsScreentimeWrapper);
  v19 = v25;
  sub_21BE2805C();
  (*(v24 + 8))(v5, v26);
  sub_21BD7FAC8(v9, type metadata accessor for MemberDetailsScreentimeWrapper);
  sub_21BD09E30(a1, v27);
  v20 = swift_allocObject();
  sub_21BD7F210(v27, v20 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC58, &qword_21BE48BE0);
  v22 = (v19 + *(result + 36));
  *v22 = sub_21BD7FBD4;
  v22[1] = v20;
  v22[2] = 0;
  v22[3] = 0;
  return result;
}

uint64_t sub_21BD7B9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a2;
  v186 = sub_21BE263DC();
  v185 = *(v186 - 8);
  v3 = v185[8];
  MEMORY[0x28223BE20](v186);
  v184 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for MemberDetailsAppleCashWrapper();
  v5 = *(*(v182 - 8) + 64);
  MEMORY[0x28223BE20](v182);
  v183 = (&v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC78, &qword_21BE48CA0);
  v191 = *(v192 - 8);
  v7 = *(v191 + 64);
  v8 = MEMORY[0x28223BE20](v192);
  v180 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v181 = &v174 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC80, &unk_21BE48CA8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v198 = &v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v174 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v190 = &v174 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v175 = &v174 - v21;
  v178 = type metadata accessor for MemberDetailsAskToBuyWrapper();
  v22 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v179 = (&v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC88, &qword_21BE48CB8);
  v187 = *(v188 - 8);
  v24 = v187[8];
  v25 = MEMORY[0x28223BE20](v188);
  v176 = &v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v177 = &v174 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC90, &qword_21BE48CC0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v197 = &v174 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v202 = &v174 - v32;
  v195 = sub_21BE27A2C();
  v194 = *(v195 - 1);
  v33 = *(v194 + 64);
  MEMORY[0x28223BE20](v195);
  v189 = &v174 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for MemberDetailsScreentimeWrapper();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v174 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC98, &qword_21BE48CC8);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v42 = &v174 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCA0, &qword_21BE48CD0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v174 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCA8, &qword_21BE48CD8);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v196 = &v174 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v201 = &v174 - v52;
  sub_21BD7A5B4(&v203);
  v200 = v16;
  v199 = a1;
  if (v203 == 3 || (sub_21BD7A450() & 1) == 0)
  {
    (*(v44 + 56))(v201, 1, 1, v43);
  }

  else
  {
    v53 = *(a1 + 152);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v174 = sub_21BCE6070(0x545F4E4545524353, 0xEB00000000454D49, v203);

    v54 = [*v199 dsid];
    sub_21BD7A5B4(&v203);
    LOBYTE(v53) = v203;
    v55 = *(v35 + 32);
    *&v38[v55] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
    swift_storeEnumTagMultiPayload();
    v56 = *(v35 + 36);
    *&v38[v56] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
    swift_storeEnumTagMultiPayload();
    *v38 = v174;
    *(v38 + 1) = v54;
    v38[16] = v53;
    *(v38 + 3) = 0;
    *(v38 + 4) = 0;
    LOBYTE(v208) = 0;
    sub_21BE283EC();
    LOBYTE(v54) = v203;
    v57 = v204;
    sub_21BD7F828(v38, v42, type metadata accessor for MemberDetailsScreentimeWrapper);
    v58 = &v42[*(v39 + 36)];
    *v58 = v54;
    v16 = v200;
    *(v58 + 1) = v57;
    a1 = v199;
    sub_21BD7FAC8(v38, type metadata accessor for MemberDetailsScreentimeWrapper);
    v59 = v189;
    sub_21BE27A0C();
    sub_21BD7F5CC();
    sub_21BE2805C();
    (*(v194 + 8))(v59, v195);
    sub_21BB3A4CC(v42, &qword_27CDBBC98, &qword_21BE48CC8);
    sub_21BD09E30(a1, &v203);
    v60 = swift_allocObject();
    sub_21BD7F210(&v203, v60 + 16);
    v61 = &v47[*(v43 + 36)];
    *v61 = sub_21BD7F784;
    *(v61 + 1) = v60;
    *(v61 + 2) = 0;
    *(v61 + 3) = 0;
    v62 = v201;
    sub_21BBB7D84(v47, v201, &qword_27CDBBCA0, &qword_21BE48CD0);
    (*(v44 + 56))(v62, 0, 1, v43);
  }

  v63 = OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore;
  v194 = *(a1 + 56);
  v64 = *(v194 + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v65 = v203;
  v66 = v202;
  if (!v203)
  {
    v65 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v67 = *a1;
  v68 = *(a1 + 152);
  v69 = type metadata accessor for ServicesStore();
  v207 = &off_282D8FEE0;
  v206 = v69;
  v203 = v68;
  v70 = *__swift_project_boxed_opaque_existential_1Tm(&v203, v69);

  LOBYTE(v70) = sub_21BD7EF34(v67, 0x425F4F545F4B5341, 0xEA00000000005955, v70, v65);

  __swift_destroy_boxed_opaque_existential_0Tm(&v203);
  v195 = v67;
  v189 = v63;
  if (v70)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v71 = sub_21BCE6070(0x425F4F545F4B5341, 0xEA00000000005955, v203);

    v72 = *(a1 + 8);
    if (*(v72 + 16) && (v73 = sub_21BBB3108(0x425F4F545F4B5341, 0xEA00000000005955), (v74 & 1) != 0))
    {
      v75 = v73;
      v76 = *(v72 + 56);
      v77 = sub_21BE25B9C();
      v78 = *(v77 - 8);
      v79 = v78;
      v80 = v76 + *(v78 + 72) * v75;
      v67 = v195;
      v81 = v175;
      (*(v78 + 16))(v175, v80, v77);
      (*(v79 + 56))(v81, 0, 1, v77);
      a1 = v199;
    }

    else
    {
      v84 = sub_21BE25B9C();
      v81 = v175;
      (*(*(v84 - 8) + 56))(v175, 1, 1, v84);
    }

    swift_unknownObjectWeakLoadStrong();
    v85 = *(a1 + 32);
    v86 = *(a1 + 40);
    v203 = *(a1 + 24);
    v204 = v85;
    v205 = v86;
    v87 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2856C();
    v88 = v208;
    v89 = v209;
    v90 = v210;
    v91 = v179;
    *v179 = v71;
    v92 = v178;
    sub_21BBB7D84(v81, v91 + *(v178 + 20), &unk_27CDB57F0, &qword_21BE328A0);
    *(v91 + v92[6]) = v87;
    v67 = v195;
    v93 = v92[7];
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v94 = v91 + v92[8];
    *v94 = v88;
    *(v94 + 8) = v89;
    a1 = v199;
    *(v94 + 16) = v90;
    LOBYTE(v208) = 0;
    sub_21BE283EC();
    LOBYTE(v92) = v203;
    v95 = v204;
    v96 = v176;
    sub_21BD7F7C0(v91, v176, type metadata accessor for MemberDetailsAskToBuyWrapper);
    v83 = v188;
    v97 = v96 + *(v188 + 36);
    *v97 = v92;
    *(v97 + 8) = v95;
    v98 = v96;
    v99 = v177;
    sub_21BBB7D84(v98, v177, &qword_27CDBBC88, &qword_21BE48CB8);
    v66 = v202;
    sub_21BBB7D84(v99, v202, &qword_27CDBBC88, &qword_21BE48CB8);
    v82 = 0;
    v63 = v189;
  }

  else
  {
    v82 = 1;
    v83 = v188;
  }

  (v187[7])(v66, v82, 1, v83);
  v100 = *(v194 + v63);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v101 = v203;
  if (!v203)
  {
    v101 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v102 = sub_21BD7EAC4(v67, v68, v101);

  if (v102)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v188 = sub_21BCE6070(0x41435F454C505041, 0xEA00000000004853, v203);

    v103 = *(a1 + 8);
    if (*(v103 + 16))
    {
      v104 = sub_21BBB3108(0x41435F454C505041, 0xEA00000000004853);
      v105 = v190;
      if (v106)
      {
        v107 = v104;
        v108 = *(v103 + 56);
        v109 = sub_21BE25B9C();
        v110 = *(v109 - 8);
        (*(v110 + 16))(v105, v108 + *(v110 + 72) * v107, v109);
        (*(v110 + 56))(v105, 0, 1, v109);
        v67 = v195;
      }

      else
      {
        v114 = sub_21BE25B9C();
        (*(*(v114 - 8) + 56))(v105, 1, 1, v114);
      }
    }

    else
    {
      v113 = sub_21BE25B9C();
      (*(*(v113 - 8) + 56))(v190, 1, 1, v113);
    }

    v187 = [v67 dsid];
    v179 = sub_21BE2917C();
    v116 = v115;
    v117 = sub_21BD7A248();
    swift_unknownObjectWeakLoadStrong();
    v118 = *(a1 + 32);
    v119 = *(a1 + 40);
    v203 = *(a1 + 24);
    v204 = v118;
    v205 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2856C();
    v120 = v208;
    v121 = v209;
    v122 = v210;
    v123 = *(v199 + 104);
    KeyPath = swift_getKeyPath();
    v125 = v182;
    v126 = v183;
    *(v183 + *(v182 + 52)) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
    swift_storeEnumTagMultiPayload();
    *v126 = v188;
    sub_21BBB7D84(v190, v126 + v125[5], &unk_27CDB57F0, &qword_21BE328A0);
    *(v126 + v125[6]) = v187;
    v127 = (v126 + v125[7]);
    *v127 = v179;
    v127[1] = v116;
    *(v126 + v125[8]) = v117 & 1;
    v128 = v125[9];
    swift_unknownObjectWeakInit();

    swift_unknownObjectRelease();
    v129 = v126 + v125[10];
    *v129 = v120;
    *(v129 + 1) = v121;
    a1 = v199;
    v129[16] = v122;
    v130 = (v126 + v125[11]);
    type metadata accessor for MemberDetailsAppleCashViewModel();
    sub_21BD7F440(&qword_27CDBA118, type metadata accessor for MemberDetailsAppleCashViewModel);
    *v130 = sub_21BE270CC();
    v130[1] = v131;
    v132 = v126 + v125[12];
    *v132 = sub_21BCC08FC;
    *(v132 + 1) = 0;
    v132[16] = 0;
    LOBYTE(v208) = 0;
    sub_21BE283EC();
    v133 = v203;
    v134 = v204;
    v135 = v126;
    v136 = v180;
    sub_21BD7F7C0(v135, v180, type metadata accessor for MemberDetailsAppleCashWrapper);
    v112 = v192;
    v137 = v136 + *(v192 + 36);
    *v137 = v133;
    *(v137 + 8) = v134;
    v138 = v136;
    v139 = v181;
    sub_21BBB7D84(v138, v181, &qword_27CDBBC78, &qword_21BE48CA0);
    v16 = v200;
    sub_21BBB7D84(v139, v200, &qword_27CDBBC78, &qword_21BE48CA0);
    v111 = 0;
    v66 = v202;
    v63 = v189;
  }

  else
  {
    v111 = 1;
    v112 = v192;
  }

  (*(v191 + 56))(v16, v111, 1, v112);
  v140 = *(a1 + 88);
  type metadata accessor for MemberDetailsAppleCardViewModel();
  sub_21BD7F440(&qword_27CDBA110, type metadata accessor for MemberDetailsAppleCardViewModel);

  v141 = sub_21BE270CC();
  v143 = v142;
  LOBYTE(v208) = 0;
  sub_21BE283EC();
  v144 = v203;
  v145 = v204;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v203 != 1 || [v195 isMe] || (sub_21BE2915C() & 1) == 0)
  {

    v141 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
  }

  v192 = v143;
  v146 = sub_21BD7A754();
  v191 = v141;
  v199 = v144;
  v187 = v145;
  if (v146 & 1) != 0 && (v147 = v185, v148 = v184, v149 = v186, (v185[13])(v184, *MEMORY[0x277D08028], v186), v150 = sub_21BE263CC(), (v147[1])(v148, v149), (v150))
  {
    v151 = *(v194 + v63);
    swift_getKeyPath();
    swift_getKeyPath();
    v190 = v195;
    sub_21BE26CAC();

    v152 = v203;
    if (!v203)
    {
      v152 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v153 = [v152 me];

    if (v153)
    {
      v154 = [v153 altDSID];

      if (v154)
      {
        v189 = sub_21BE28A0C();
        v153 = v155;
      }

      else
      {
        v189 = 0;
        v153 = 0;
      }
    }

    else
    {
      v189 = 0;
    }

    v185 = v153;
    v156 = *(a1 + 192);
    v203 = *(a1 + 184);
    v204 = v156;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA128, &unk_21BE42B80);
    sub_21BE283FC();
    type metadata accessor for FamilyMemberAccountDetailsViewModel();
    sub_21BD7F440(&qword_27CDBDBE0, type metadata accessor for FamilyMemberAccountDetailsViewModel);
    v195 = sub_21BE270CC();
    v194 = v157;
    LOBYTE(v208) = 0;
    sub_21BE283EC();
    v188 = v203;
    v186 = v204;
  }

  else
  {
    v190 = 0;
    v189 = 0;
    v185 = 0;
    v195 = 0;
    v194 = 0;
    v188 = 0;
    v186 = 0;
  }

  v158 = v196;
  sub_21BBA3854(v201, v196, &qword_27CDBBCA8, &qword_21BE48CD8);
  v159 = v197;
  sub_21BBA3854(v66, v197, &qword_27CDBBC90, &qword_21BE48CC0);
  v160 = v198;
  sub_21BBA3854(v200, v198, &qword_27CDBBC80, &unk_21BE48CA8);
  v161 = v193;
  sub_21BBA3854(v158, v193, &qword_27CDBBCA8, &qword_21BE48CD8);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCB0, &qword_21BE48CE0);
  sub_21BBA3854(v159, v161 + v162[12], &qword_27CDBBC90, &qword_21BE48CC0);
  sub_21BBA3854(v160, v161 + v162[16], &qword_27CDBBC80, &unk_21BE48CA8);
  v163 = (v161 + v162[20]);
  v164 = v191;
  v165 = v192;
  *v163 = v191;
  v163[1] = v165;
  v163[2] = v199;
  v163[3] = v187;
  v166 = (v161 + v162[24]);
  v167 = v190;
  v168 = v189;
  *v166 = v190;
  v166[1] = v168;
  v169 = v185;
  v170 = v195;
  v166[2] = v185;
  v166[3] = v170;
  v171 = v194;
  v172 = v188;
  v166[4] = v194;
  v166[5] = v172;
  v166[6] = v186;
  sub_21BD7F488(v164, v165);
  sub_21BD7F4CC(v167, v168, v169, v170, v171);
  sub_21BB3A4CC(v200, &qword_27CDBBC80, &unk_21BE48CA8);
  sub_21BB3A4CC(v202, &qword_27CDBBC90, &qword_21BE48CC0);
  sub_21BB3A4CC(v201, &qword_27CDBBCA8, &qword_21BE48CD8);
  sub_21BD7F52C(v167, v168, v169, v170, v171);
  sub_21BD7F588(v164, v165);
  sub_21BB3A4CC(v198, &qword_27CDBBC80, &unk_21BE48CA8);
  sub_21BB3A4CC(v197, &qword_27CDBBC90, &qword_21BE48CC0);
  return sub_21BB3A4CC(v196, &qword_27CDBBCA8, &qword_21BE48CD8);
}

uint64_t sub_21BD7D388@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBF8, &qword_21BE48AF0);
  v3 = *(*(v45 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v45);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC00, &qword_21BE48AF8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC08, &qword_21BE48B00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  if ((sub_21BD7A450() & 1) == 0)
  {
    v44 = v8;
    v42 = *(v1 + 56);
    v41 = OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore;
    v20 = *(v42 + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v21 = v48[0];
    if (!v48[0])
    {
      v21 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v22 = *v1;
    v23 = *(v1 + 152);
    v24 = type metadata accessor for ServicesStore();
    v48[4] = &off_282D8FEE0;
    v48[3] = v24;
    v48[0] = v23;
    v25 = *__swift_project_boxed_opaque_existential_1Tm(v48, v24);

    v43 = v22;
    LOBYTE(v25) = sub_21BD7EF34(v22, 0x425F4F545F4B5341, 0xEA00000000005955, v25, v21);

    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    v8 = v44;
    if ((v25 & 1) == 0)
    {
      v26 = *(v42 + v41);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21BE26CAC();

      v27 = v48[0];
      if (!v48[0])
      {
        v27 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
      }

      v28 = sub_21BD7EAC4(v43, v23, v27);

      v8 = v44;
      if ((v28 & 1) == 0)
      {
        v38 = *(v2 + 88);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21BE26CAC();

        if (LOBYTE(v48[0]) != 1 || ([v43 isMe] & 1) != 0)
        {
          v29 = 1;
          v8 = v44;
          goto LABEL_9;
        }

        v39 = sub_21BE2915C();
        v8 = v44;
        if ((v39 & 1) == 0)
        {
          v29 = 1;
          goto LABEL_9;
        }
      }
    }
  }

  sub_21BD7B204(v2, v12);
  sub_21BBB7D84(v12, v19, &qword_27CDBBC00, &qword_21BE48AF8);
  v29 = 0;
LABEL_9:
  v30 = (*(v9 + 56))(v19, v29, 1, v8);
  MEMORY[0x28223BE20](v30);
  *(&v40 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC10, &qword_21BE48B98);
  sub_21BB3B038(&qword_27CDBBC18, &qword_27CDBBC10, &qword_21BE48B98);
  sub_21BE2860C();
  sub_21BD09E30(v2, v48);
  v31 = swift_allocObject();
  sub_21BD7F210(v48, v31 + 16);
  v32 = &v7[*(v45 + 36)];
  v33 = &v32[*(sub_21BE2701C() + 20)];
  sub_21BE28D8C();
  *v32 = &unk_21BE48BA8;
  *(v32 + 1) = v31;
  sub_21BBA3854(v19, v17, &qword_27CDBBC08, &qword_21BE48B00);
  v34 = v46;
  sub_21BBA3854(v7, v46, &qword_27CDBBBF8, &qword_21BE48AF0);
  v35 = v47;
  sub_21BBA3854(v17, v47, &qword_27CDBBC08, &qword_21BE48B00);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBC20, &qword_21BE48BB0);
  sub_21BBA3854(v34, v35 + *(v36 + 48), &qword_27CDBBBF8, &qword_21BE48AF0);
  sub_21BB3A4CC(v7, &qword_27CDBBBF8, &qword_21BE48AF0);
  sub_21BB3A4CC(v19, &qword_27CDBBC08, &qword_21BE48B00);
  sub_21BB3A4CC(v34, &qword_27CDBBBF8, &qword_21BE48AF0);
  return sub_21BB3A4CC(v17, &qword_27CDBBC08, &qword_21BE48B00);
}

uint64_t sub_21BD7D9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCC8, &qword_21BE48CE8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v134 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v132 = &v112 - v7;
  v128 = type metadata accessor for MemberDetailsPurchaseSharingWrapper();
  v8 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v10 = (&v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCD0, &qword_21BE48CF0);
  v11 = *(*(v129 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v129);
  v131 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v127 = &v112 - v15;
  MEMORY[0x28223BE20](v14);
  v130 = &v112 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v136 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v112 - v21;
  v122 = type metadata accessor for MemberDetailsSubscriptionWrapper();
  v23 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v25 = (&v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCD8, &qword_21BE48CF8);
  v123 = *(v26 - 8);
  v27 = v123[8];
  v28 = MEMORY[0x28223BE20](v26);
  v120 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v121 = &v112 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCE0, &qword_21BE48D00);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v126 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v112 - v35;
  v37 = *(a1 + 56);
  v124 = OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore;
  v125 = v37;
  v38 = *(v37 + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v39 = v140;
  v119 = v22;
  if (!v140)
  {
    v39 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v40 = [v39 me];

  v41 = &selRef_bundleURL;
  v135 = v36;
  if (v40)
  {
    v116 = v40;
    v117 = v26;
    v42 = *(a1 + 152);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v115 = sub_21BCE6070(0xD000000000000011, 0x800000021BE55910, v140);

    v43 = *(a1 + 8);
    v44 = *(v43 + 16);
    v118 = v10;
    if (v44 && (v45 = sub_21BBB3108(0xD000000000000011, 0x800000021BE55910), (v46 & 1) != 0))
    {
      v47 = v45;
      v48 = *(v43 + 56);
      v49 = sub_21BE25B9C();
      v50 = *(v49 - 8);
      v51 = v50;
      v52 = v48 + *(v50 + 72) * v47;
      v53 = v119;
      (*(v50 + 16))(v119, v52, v49);
      (*(v51 + 56))(v53, 0, 1, v49);
    }

    else
    {
      v54 = sub_21BE25B9C();
      v53 = v119;
      (*(*(v54 - 8) + 56))(v119, 1, 1, v54);
    }

    v114 = [*a1 dsid];
    v113 = sub_21BE2917C();
    v112 = v55;
    v56 = v116;
    v57 = [v116 dsid];
    swift_unknownObjectWeakLoadStrong();
    v58 = *(a1 + 32);
    v59 = *(a1 + 40);
    v140 = *(a1 + 24);
    v141 = v58;
    v142 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2856C();
    v60 = v137;
    v61 = v138;
    v62 = v139;
    *v25 = v115;
    v63 = v122;
    sub_21BBB7D84(v53, v25 + *(v122 + 20), &unk_27CDB57F0, &qword_21BE328A0);
    *(v25 + v63[6]) = v114;
    v64 = (v25 + v63[7]);
    v65 = v112;
    *v64 = v113;
    v64[1] = v65;
    *(v25 + v63[8]) = v57;
    v41 = &selRef_bundleURL;
    v66 = v63[9];
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v67 = v25 + v63[10];
    *v67 = v60;
    *(v67 + 1) = v61;
    v67[16] = v62;
    LOBYTE(v137) = 0;
    sub_21BE283EC();

    v68 = v140;
    v69 = v141;
    v70 = v120;
    sub_21BD7F7C0(v25, v120, type metadata accessor for MemberDetailsSubscriptionWrapper);
    v26 = v117;
    v71 = v70 + *(v117 + 36);
    *v71 = v68;
    *(v71 + 8) = v69;
    v72 = v70;
    v73 = v121;
    sub_21BBB7D84(v72, v121, &qword_27CDBBCD8, &qword_21BE48CF8);
    v36 = v135;
    sub_21BBB7D84(v73, v135, &qword_27CDBBCD8, &qword_21BE48CF8);
    v74 = 0;
    v10 = v118;
  }

  else
  {
    v74 = 1;
  }

  (v123[7])(v36, v74, 1, v26);
  v75 = *(a1 + 152);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v123 = sub_21BCE6070(0xD000000000000010, 0x800000021BE55930, v140);

  v76 = *(a1 + 8);
  if (*(v76 + 16) && (v77 = sub_21BBB3108(0xD000000000000010, 0x800000021BE55930), (v78 & 1) != 0))
  {
    v79 = v77;
    v80 = *(v76 + 56);
    v81 = sub_21BE25B9C();
    v82 = *(v81 - 8);
    v83 = v82;
    v84 = v80 + *(v82 + 72) * v79;
    v85 = v136;
    (*(v82 + 16))(v136, v84, v81);
    (*(v83 + 56))(v85, 0, 1, v81);
  }

  else
  {
    v86 = sub_21BE25B9C();
    (*(*(v86 - 8) + 56))(v136, 1, 1, v86);
  }

  v87 = [*a1 v41[490]];
  swift_unknownObjectWeakLoadStrong();
  v88 = *(a1 + 32);
  v89 = *(a1 + 40);
  v140 = *(a1 + 24);
  v141 = v88;
  v142 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v90 = v137;
  v91 = v138;
  v92 = v139;
  v93 = *(v125 + v124);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v94 = v140;
  if (!v140)
  {
    v94 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  *v10 = v123;
  v95 = v128;
  sub_21BBB7D84(v136, v10 + *(v128 + 20), &unk_27CDB57F0, &qword_21BE328A0);
  *(v10 + v95[6]) = v87;
  v96 = v95[7];
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v97 = v10 + v95[8];
  *v97 = v90;
  *(v97 + 1) = v91;
  v97[16] = v92;
  *(v10 + v95[9]) = v94;
  v98 = v10 + v95[10];
  *v98 = sub_21BE1DBC0;
  *(v98 + 1) = 0;
  v98[16] = 0;
  LOBYTE(v137) = 0;
  sub_21BE283EC();
  v99 = v140;
  v100 = v141;
  v101 = v127;
  sub_21BD7F7C0(v10, v127, type metadata accessor for MemberDetailsPurchaseSharingWrapper);
  v102 = v130;
  v103 = v101 + *(v129 + 36);
  *v103 = v99;
  *(v103 + 8) = v100;
  sub_21BBB7D84(v101, v102, &qword_27CDBBCD0, &qword_21BE48CF0);
  v104 = v132;
  sub_21BD7A854(a1, v132);
  v105 = v135;
  v106 = v126;
  sub_21BBA3854(v135, v126, &qword_27CDBBCE0, &qword_21BE48D00);
  v107 = v131;
  sub_21BBA3854(v102, v131, &qword_27CDBBCD0, &qword_21BE48CF0);
  v108 = v134;
  sub_21BBA3854(v104, v134, &qword_27CDBBCC8, &qword_21BE48CE8);
  v109 = v133;
  sub_21BBA3854(v106, v133, &qword_27CDBBCE0, &qword_21BE48D00);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBCE8, &qword_21BE48D08);
  sub_21BBA3854(v107, v109 + *(v110 + 48), &qword_27CDBBCD0, &qword_21BE48CF0);
  sub_21BBA3854(v108, v109 + *(v110 + 64), &qword_27CDBBCC8, &qword_21BE48CE8);
  sub_21BB3A4CC(v104, &qword_27CDBBCC8, &qword_21BE48CE8);
  sub_21BB3A4CC(v102, &qword_27CDBBCD0, &qword_21BE48CF0);
  sub_21BB3A4CC(v105, &qword_27CDBBCE0, &qword_21BE48D00);
  sub_21BB3A4CC(v108, &qword_27CDBBCC8, &qword_21BE48CE8);
  sub_21BB3A4CC(v107, &qword_27CDBBCD0, &qword_21BE48CF0);
  return sub_21BB3A4CC(v106, &qword_27CDBBCE0, &qword_21BE48D00);
}

uint64_t sub_21BD7E698(uint64_t a1)
{
  v1[2] = a1;
  sub_21BE28D7C();
  v1[3] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_21BD7E730, v3, v2);
}

uint64_t sub_21BD7E730()
{
  v1 = v0[2];
  v0[6] = sub_21BD7A108();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_21BD7E7CC;

  return sub_21BDA69F4();
}

uint64_t sub_21BD7E7CC()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21BBAFEE4, v5, v4);
}

id sub_21BD7E914()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = v3;
  if (!v3)
  {
    return [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  return result;
}

uint64_t sub_21BD7E9D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BD7EA50(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BD7EAC4(void *a1, uint64_t a2, void *a3)
{
  v32 = type metadata accessor for ServicesStore();
  v33 = &off_282D8FEE0;
  v31[0] = a2;

  v6 = [a3 allowedSubscriptions];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6;
  v8 = sub_21BE28C3C();

  v30[0] = 0x41435F454C505041;
  v30[1] = 0xEA00000000004853;
  MEMORY[0x28223BE20](v9);
  v29 = v30;
  LOBYTE(v7) = sub_21BC9BF08(sub_21BBF0CC4, v28, v8);

  if ((v7 & 1) == 0)
  {
    goto LABEL_19;
  }

  v10 = [a3 me];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  if ((sub_21BE2916C() & 1) == 0)
  {

    goto LABEL_8;
  }

  v12 = [v11 isGuardian];

  if ((v12 & 1) == 0)
  {
LABEL_8:
    __swift_project_boxed_opaque_existential_1Tm(v31, v32);
    v14 = (off_282D8FF00)(0x41435F454C505041, 0xEA00000000004853);
    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = v14;
    v16 = [v14 subscriberDSIDs];

    if (!v16)
    {
      goto LABEL_19;
    }

    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v17 = sub_21BE28C3C();

    v18 = [a1 dsid];
    if (v18)
    {
      v19 = v18;
      v20 = [a3 me];
      if (v20)
      {
        v21 = v20;
        v30[0] = v19;
        MEMORY[0x28223BE20](v20);
        v29 = v30;
        v22 = sub_21BC9DAC4(sub_21BD7FBD8, v28, v17);

        if (v22)
        {
          if ([v21 isOrganizer])
          {

            goto LABEL_6;
          }

          v24 = [v21 dsid];
          if (v24)
          {
            v25 = v24;
            v26 = v19;
            v27 = sub_21BE2940C();

            if (v27)
            {
              v13 = sub_21BE2916C();

              goto LABEL_20;
            }
          }

          else
          {
          }

LABEL_19:
          v13 = 0;
          goto LABEL_20;
        }
      }

      else
      {
      }

      goto LABEL_19;
    }

    goto LABEL_19;
  }

LABEL_6:
  v13 = 1;
LABEL_20:
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  return v13 & 1;
}

uint64_t sub_21BD7EE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = type metadata accessor for ServicesStore();
  v14 = &off_282D8FEE0;
  v12[0] = a3;
  __swift_project_boxed_opaque_existential_1Tm(v12, v13);
  v6 = off_282D8FF00;

  v7 = v6(a1, a2);
  if (v7 && (v8 = v7, v9 = [v7 subscriberDSIDs], v8, v9))
  {
    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v10 = sub_21BE28C3C();
  }

  else
  {
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return v10;
}

uint64_t sub_21BD7EF34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_21BE25FCC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = type metadata accessor for ServicesStore();
  v34 = &off_282D8FEE0;
  v32[0] = a4;

  v15 = [a5 me];
  if (v15)
  {
    v16 = v15;
    if (sub_21BE2916C())
    {
      v17 = [v16 isGuardian];

      if (v17)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  (*(v11 + 104))(v14, *MEMORY[0x277D07F40], v10);
  v18 = MEMORY[0x21CF01150](v14);
  (*(v11 + 8))(v14, v10);
  if ((v18 & 1) == 0 || (sub_21BE2916C() & 1) == 0 || ([a1 isMe] & 1) == 0)
  {
    v20 = __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    v21 = sub_21BD7EE28(a2, a3, *v20);
    if (v21)
    {
      v22 = v21;
      v23 = [a5 me];
      if (v23)
      {
        v24 = v23;
        v25 = [a1 dsid];
        if (!v25)
        {
          sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
          v25 = sub_21BE293EC();
        }

        v31 = v25;
        v26 = MEMORY[0x28223BE20](v25);
        *&v30[-16] = &v31;
        v27 = v26;
        v28 = sub_21BC9DAC4(sub_21BD7FBD8, &v30[-32], v22);

        if (v28)
        {
          v19 = [v24 isParent];

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    v19 = 0;
    goto LABEL_19;
  }

LABEL_9:
  v19 = 1;
LABEL_19:
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  return v19;
}

uint64_t sub_21BD7F248()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21BBA6A64;

  return sub_21BD7E698(v0 + 16);
}

unint64_t sub_21BD7F2EC()
{
  result = qword_27CDBBC60;
  if (!qword_27CDBBC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBC58, &qword_21BE48BE0);
    type metadata accessor for MemberDetailsScreentimeWrapper();
    sub_21BD7F440(&qword_27CDBBC68, type metadata accessor for MemberDetailsScreentimeWrapper);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBC60);
  }

  return result;
}

unint64_t sub_21BD7F3D8()
{
  result = qword_27CDBBC70;
  if (!qword_27CDBBC70)
  {
    sub_21BB3A2A4(255, &qword_27CDB7EE8, off_2782F0D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBC70);
  }

  return result;
}

uint64_t sub_21BD7F440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BD7F488(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_21BD7F4CC(id result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result)
  {
    v5 = result;

    v6 = v5;

    return a5;
  }

  return result;
}

void *sub_21BD7F52C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21BD7F588(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_21BD7F5CC()
{
  result = qword_27CDBBCB8;
  if (!qword_27CDBBCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBC98, &qword_21BE48CC8);
    sub_21BD7F440(&qword_27CDBBC68, type metadata accessor for MemberDetailsScreentimeWrapper);
    sub_21BD7F688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBCB8);
  }

  return result;
}

unint64_t sub_21BD7F688()
{
  result = qword_27CDBBCC0;
  if (!qword_27CDBBCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBCC0);
  }

  return result;
}

uint64_t objectdestroyTm_29()
{
  v1 = *(v0 + 24);

  MEMORY[0x21CF05D90](v0 + 32);
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 104);

  v5 = *(v0 + 120);

  v6 = *(v0 + 128);

  v7 = *(v0 + 168);

  v8 = *(v0 + 208);

  return swift_deallocObject();
}

void sub_21BD7F788()
{
  if ([*(v0 + 152) activityEnablementChanged])
  {
    FAScreenTimeWrapper.notifyObservable()();
  }
}

uint64_t sub_21BD7F7C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BD7F828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BD7F8AC()
{
  result = qword_27CDBBD10;
  if (!qword_27CDBBD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBD10);
  }

  return result;
}

unint64_t sub_21BD7F900()
{
  result = qword_27CDBBD20;
  if (!qword_27CDBBD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBD00, &qword_21BE48D28);
    sub_21BB3B038(&qword_27CDBBD28, &qword_27CDBBD30, &unk_21BE48DA0);
    sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBD20);
  }

  return result;
}

unint64_t sub_21BD7F9E4()
{
  result = qword_27CDBBD38;
  if (!qword_27CDBBD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBCF0, &qword_21BE48D10);
    sub_21BB3B038(&qword_27CDBBD40, &qword_27CDBBD48, &qword_21BE48DB0);
    sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBD38);
  }

  return result;
}

uint64_t sub_21BD7FAC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_21BD7FB30@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *&result = sub_21BD7A05C(*(v1 + 16), a1).n128_u64[0];
  return result;
}

__n128 sub_21BD7FB38@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3(&v6);
  result = v7;
  *a1 = v6;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21BD7FBF8()
{
  result = sub_21BE289CC();
  qword_280BD6B50 = result;
  return result;
}

uint64_t sub_21BD7FC30(uint64_t a1)
{
  v1[37] = a1;
  v2 = *(*(sub_21BE25E9C() - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v3 = sub_21BE25EBC();
  v1[39] = v3;
  v4 = *(v3 - 8);
  v1[40] = v4;
  v5 = *(v4 + 64) + 15;
  v1[41] = swift_task_alloc();
  v6 = sub_21BE25B9C();
  v1[42] = v6;
  v7 = *(v6 - 8);
  v1[43] = v7;
  v8 = *(v7 + 64) + 15;
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD7FD84, 0, 0);
}

uint64_t sub_21BD7FD84()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D08348]) init];
  v0[46] = v1;
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_21BD7FEBC;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5808, &qword_21BE328C8);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21BBB25CC;
  v0[21] = &block_descriptor_48;
  v0[22] = v2;
  [v1 fetchAAURLConfigurationWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BD7FEBC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  if (v2)
  {
    v3 = sub_21BD805DC;
  }

  else
  {
    v3 = sub_21BD7FFCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BD7FFCC()
{
  v1 = v0[46];
  v2 = v0[36];
  v0[48] = v2;

  if (qword_280BD6B48 != -1)
  {
    swift_once();
  }

  v3 = [v2 urlForEndpoint_];
  if (v3)
  {
    v5 = v0[44];
    v4 = v0[45];
    v6 = v0[42];
    v7 = v0[43];
    v8 = v0[37];
    v9 = v3;
    sub_21BE25B5C();

    (*(v7 + 32))(v4, v5, v6);
    sub_21BE25AFC();
    v10 = objc_allocWithZone(FASharedServicesRequest);
    v11 = sub_21BE289CC();

    v12 = [v10 initWithAppleAccount:v8 urlString:v11];
    v0[49] = v12;

    v0[10] = v0;
    v0[15] = v0 + 34;
    v0[11] = sub_21BD802C4;
    v13 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD60, &unk_21BE48DD0);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_21BD8074C;
    v0[29] = &block_descriptor_3;
    v0[30] = v13;
    [v12 performRequestWithHandler_];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {
    v15 = v0[40];
    v14 = v0[41];
    v16 = v0[38];
    v17 = v0[39];
    sub_21BE25E8C();
    sub_21BDCE614(MEMORY[0x277D84F90]);
    sub_21BD80824();
    sub_21BE25A6C();
    sub_21BE25EAC();
    (*(v15 + 8))(v14, v17);
    swift_willThrow();

    v19 = v0[44];
    v18 = v0[45];
    v20 = v0[41];
    v21 = v0[38];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_21BD802C4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 400) = v2;
  if (v2)
  {
    v3 = sub_21BD8067C;
  }

  else
  {
    v3 = sub_21BD803D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BD803D4()
{
  v1 = *(v0 + 280);
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 384);
      v4 = *(v0 + 392);
      v6 = *(v0 + 352);
      v7 = *(v0 + 328);
      v8 = *(v0 + 304);
      (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));

      v9 = *(v0 + 8);

      return v9(v3);
    }
  }

  v12 = *(v0 + 384);
  v11 = *(v0 + 392);
  v24 = *(v0 + 360);
  v13 = *(v0 + 336);
  v14 = *(v0 + 344);
  v15 = *(v0 + 320);
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  sub_21BE25E7C();
  sub_21BDCE614(MEMORY[0x277D84F90]);
  sub_21BD80824();
  sub_21BE25A6C();
  sub_21BE25EAC();
  (*(v15 + 8))(v16, v18);
  swift_willThrow();

  (*(v14 + 8))(v24, v13);
  v20 = *(v0 + 352);
  v19 = *(v0 + 360);
  v21 = *(v0 + 328);
  v22 = *(v0 + 304);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_21BD805DC()
{
  v1 = v0[46];
  v2 = v0[47];
  swift_willThrow();

  v3 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[41];
  v7 = v0[38];

  v8 = v0[1];

  return v8();
}

uint64_t sub_21BD8067C()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[45];
  v5 = v0[42];
  v6 = v0[43];
  swift_willThrow();

  (*(v6 + 8))(v4, v5);
  v7 = v0[50];
  v9 = v0[44];
  v8 = v0[45];
  v10 = v0[41];
  v11 = v0[38];

  v12 = v0[1];

  return v12();
}

uint64_t sub_21BD8074C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;
    v12 = a2;
    v13 = a3;

    return MEMORY[0x282200950](v7);
  }
}

unint64_t sub_21BD80824()
{
  result = qword_27CDB7A10;
  if (!qword_27CDB7A10)
  {
    sub_21BE25EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7A10);
  }

  return result;
}

uint64_t sub_21BD808B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BD836F4(&qword_27CDB9A08, type metadata accessor for SharedPasswordsItemModel);
  sub_21BE25F1C();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_21BD80980()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[1];
  v8 = v0[2];
  v54[0] = v7;
  v9 = (v7 >> 62);
  if (v7 >> 62)
  {
LABEL_35:
    v31 = v4;
    v32 = sub_21BE2951C();
    v4 = v31;
    if (!v32)
    {
      return 0;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v53 = v8;
  v10 = v8 >> 62;
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    return 0;
  }

  v33 = v4;
  v34 = sub_21BE2951C();
  v10 = v8 >> 62;
  v35 = v34;
  v4 = v33;
  if (!v35)
  {
    return 0;
  }

LABEL_5:
  v49 = MEMORY[0x277D84FA0];
  v39 = v4;
  v40 = v10;
  if (v9)
  {
    v9 = sub_21BE2951C();
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v0[3];
  v52 = *(v0 + 32);
  v12 = v0[5];
  v50 = v0[6];
  v51 = v11;
  sub_21BBA3854(v54, v48, &qword_27CDBBD88, &unk_21BE48EC0);
  sub_21BBA3854(&v53, v48, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BBA3854(&v51, v48, &qword_27CDB5C50, &qword_21BE33490);
  v46 = v12;

  v4 = sub_21BBA3854(&v50, v48, &qword_27CDBBD90, &qword_21BE48ED0);
  if (v9)
  {
    v37 = v6;
    v38 = v2;
    v6 = 0;
    v44 = v7 & 0xC000000000000001;
    v45 = v8;
    v42 = v9;
    v43 = v7 & 0xFFFFFFFFFFFFFF8;
    v41 = v7;
    v8 = &qword_27CDBBD90;
    while (1)
    {
      if (v44)
      {
        v13 = MEMORY[0x21CF047C0](v6, v7);
        v9 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v16 = v49;
          v6 = v37;
          v2 = v38;
          v8 = v45;
          goto LABEL_20;
        }
      }

      else
      {
        if (v6 >= *(v43 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v13 = *(v7 + 8 * v6 + 32);
        v9 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_17;
        }
      }

      v47 = v13;
      v14 = [v13 participants];
      sub_21BD843E0();
      v15 = sub_21BE28C3C();

      sub_21BBA3854(v54, v48, &qword_27CDBBD88, &unk_21BE48EC0);
      sub_21BBA3854(&v53, v48, &qword_27CDB5CC8, &qword_21BE36190);
      v0 = &qword_21BE33490;
      sub_21BBA3854(&v51, v48, &qword_27CDB5C50, &qword_21BE33490);
      v2 = v46;

      sub_21BBA3854(&v50, v48, &qword_27CDBBD90, &qword_21BE48ED0);
      sub_21BD839BC(v15, v45);
      sub_21BB3A4CC(v54, &qword_27CDBBD88, &unk_21BE48EC0);
      sub_21BB3A4CC(&v53, &qword_27CDB5CC8, &qword_21BE36190);
      sub_21BB3A4CC(&v51, &qword_27CDB5C50, &qword_21BE33490);

      sub_21BB3A4CC(&v50, &qword_27CDBBD90, &qword_21BE48ED0);

      v7 = v41;

      ++v6;
      if (v9 == v42)
      {
        goto LABEL_18;
      }
    }
  }

  v16 = MEMORY[0x277D84FA0];
LABEL_20:
  sub_21BB3A4CC(v54, &qword_27CDBBD88, &unk_21BE48EC0);
  sub_21BB3A4CC(&v53, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BB3A4CC(&v51, &qword_27CDB5C50, &qword_21BE33490);

  sub_21BB3A4CC(&v50, &qword_27CDBBD90, &qword_21BE48ED0);
  if ((v16 & 0xC000000000000001) == 0)
  {
    if (*(v16 + 16))
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (!sub_21BE2951C())
  {
LABEL_25:
    sub_21BE261BC();
    v19 = sub_21BE26A2C();
    v20 = sub_21BE28FDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_21BB3D81C(0x64616548627573, 0xE700000000000000, v48);
      _os_log_impl(&dword_21BB35000, v19, v20, "%s no one in password group is part of family", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x21CF05C50](v22, -1, -1);
      MEMORY[0x21CF05C50](v21, -1, -1);
    }

    (*(v2 + 8))(v6, v39);

    return 0;
  }

LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21BE33260;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = sub_21BE2951C();
  }

  else
  {
    v18 = *(v16 + 16);
  }

  v24 = MEMORY[0x277D83B88];
  v25 = MEMORY[0x277D83C10];
  *(v17 + 56) = MEMORY[0x277D83B88];
  *(v17 + 64) = v25;
  *(v17 + 32) = v18;
  if (v40)
  {
    v26 = sub_21BE2951C();
  }

  else
  {
    v26 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v17 + 96) = v24;
  *(v17 + 104) = v25;
  *(v17 + 72) = v26;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_opt_self();

  v29 = [v28 bundleForClass_];
  sub_21BE2599C();

  v30 = sub_21BE289DC();

  return v30;
}

void sub_21BD81050(_OWORD *a1@<X8>)
{
  v2 = sub_21BE2838C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v8 = sub_21BE289CC();
  v9 = [v7 initWithBundleIdentifier_];

  v10 = [objc_opt_self() imageDescriptorNamed_];
  v11 = [v9 prepareImageForDescriptor_];

  if (!v11)
  {
    sub_21BE2837C();
    (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
    v15 = sub_21BE283CC();

    (*(v3 + 8))(v6, v2);
    LOBYTE(v21[0]) = 1;
    LOBYTE(v19[0]) = 1;
    v28 = v15;
    *v29 = 1;
    *&v29[2] = v26;
    *&v29[18] = v27[0];
    *&v29[32] = *(v27 + 14);
    v29[40] = 1;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8110, &unk_21BE3AE10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90C8, &qword_21BE3E900);
    sub_21BD8353C(&qword_27CDB8108, &qword_27CDB8110, &unk_21BE3AE10);
    sub_21BD8353C(&qword_27CDB90D0, &qword_27CDB90C8, &qword_21BE3E900);
    sub_21BE2784C();

    v28 = v23;
    *v29 = v24;
    *&v29[16] = v25[0];
    *&v29[25] = *(v25 + 9);
    goto LABEL_5;
  }

  v17 = a1;
  v12 = [v11 CGImage];
  if (v12)
  {
    v13 = v12;
    [v11 iconSize];
    [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

    sub_21BE2836C();
    (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
    v14 = sub_21BE283CC();

    (*(v3 + 8))(v6, v2);
    sub_21BE2869C();
    sub_21BE26F2C();
    v22 = BYTE8(v26);
    v20 = BYTE8(v27[0]);
    v18 = 0;
    *&v28 = v14;
    *(&v28 + 1) = v26;
    v29[0] = BYTE8(v26);
    *&v29[1] = v21[0];
    *&v29[4] = *(v21 + 3);
    *&v29[8] = *&v27[0];
    v29[16] = BYTE8(v27[0]);
    *&v29[17] = v19[0];
    *&v29[20] = *(v19 + 3);
    *&v29[24] = v27[1];
    v29[40] = 0;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8110, &unk_21BE3AE10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90C8, &qword_21BE3E900);
    sub_21BD8353C(&qword_27CDB8108, &qword_27CDB8110, &unk_21BE3AE10);
    sub_21BD8353C(&qword_27CDB90D0, &qword_27CDB90C8, &qword_21BE3E900);
    sub_21BE2784C();

    v28 = v23;
    *v29 = v24;
    *&v29[16] = v25[0];
    *&v29[25] = *(v25 + 9);
    a1 = v17;
LABEL_5:
    v16 = *v29;
    *a1 = v28;
    a1[1] = v16;
    a1[2] = *&v29[16];
    *(a1 + 41) = *&v29[25];
    return;
  }

  __break(1u);
}

uint64_t sub_21BD815B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v120 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v107 = *(v3 - 8);
  v4 = *(v107 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v106 = &v97 - v8;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD68, &qword_21BE48E98);
  v108 = *(v118 - 8);
  v9 = *(v108 + 64);
  MEMORY[0x28223BE20](v118);
  v111 = &v97 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD70, &qword_21BE48EA0);
  v110 = *(v119 - 8);
  v11 = *(v110 + 64);
  MEMORY[0x28223BE20](v119);
  v109 = &v97 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD78, &qword_21BE48EA8);
  v13 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v116 = &v97 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD80, &unk_21BE48EB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v117 = &v97 - v17;
  v18 = sub_21BE2754C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = *(v2 + 32);
  v23 = *(v2 + 24);
  v148 = v23;
  if (v149 == 1)
  {
    v129 = v23;
  }

  else
  {

    sub_21BE28FEC();
    v24 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v148, &qword_27CDB5C50, &qword_21BE33490);
    (*(v19 + 8))(v22, v18);
  }

  v25 = swift_allocBox();
  v27 = v26;
  type metadata accessor for ChecklistStateVars();
  sub_21BD836F4(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  sub_21BE2864C();
  v28 = *(v2 + 8);
  v113 = *v2;
  v114 = v28;
  v29 = *(v2 + 16);
  v147 = v28;
  if (v28 >> 62)
  {
    v30 = sub_21BE2951C();
  }

  else
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v121 = v25;
  v146 = v29;
  v112 = v29;
  if (v30)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = objc_opt_self();
    sub_21BBA3854(&v147, &v129, &qword_27CDBBD88, &unk_21BE48EC0);
    sub_21BBA3854(&v146, &v129, &qword_27CDB5CC8, &qword_21BE36190);
    v33 = [v32 bundleForClass_];
    v34 = sub_21BE2599C();
    v36 = v35;

    v37 = sub_21BD80980();
    v39 = v38;
    v40 = [v32 bundleForClass_];
    v41 = sub_21BE2599C();
    v43 = v42;

    sub_21BD81050(&v126);
    v44 = *(v2 + 40);
    v122[0] = *(v2 + 48);
    v45 = swift_allocObject();
    v46 = *(v2 + 16);
    *(v45 + 16) = *v2;
    *(v45 + 32) = v46;
    *(v45 + 48) = *(v2 + 32);
    *(v45 + 64) = *(v2 + 48);
    v142 = &type metadata for SharedPasswordsItem;
    v47 = sub_21BBDAAC0();
    v139 = v113;
    v140 = v114;
    v143 = v47;
    v141 = v112;
    v129 = v34;
    v130 = v36;
    v131 = v37;
    v132 = v39;
    v133 = v41;
    v134 = v43;
    sub_21BBA3854(&v148, &v123, &qword_27CDB5C50, &qword_21BE33490);
    sub_21BBA3854(&v147, &v123, &qword_27CDBBD88, &unk_21BE48EC0);
    sub_21BBA3854(&v146, &v123, &qword_27CDB5CC8, &qword_21BE36190);

    sub_21BBA3854(v122, &v123, &qword_27CDBBD90, &qword_21BE48ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD98, &unk_21BE48ED8);
    sub_21BD83470();
    v144 = sub_21BE2852C();
    v137 = v45;
    v138 = 0;
    v135 = 0;
    v136 = sub_21BD84678;
    sub_21BBC7A18(&v129, v116);
    swift_storeEnumTagMultiPayload();
    sub_21BBC24D4();
    v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
    v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBDA8, &qword_21BE48EE8);
    v50 = sub_21BBC2528();
    v51 = sub_21BD835AC();
    *&v126 = &type metadata for ChecklistNotSetupButtonCell;
    *(&v126 + 1) = v49;
    *&v127 = v50;
    *(&v127 + 1) = v51;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v53 = sub_21BB41FA4();
    v54 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60);
    *&v126 = v118;
    *(&v126 + 1) = MEMORY[0x277D837D0];
    *&v127 = v48;
    *(&v127 + 1) = MEMORY[0x277CE0BD8];
    *&v128[0] = OpaqueTypeConformance2;
    *(&v128[0] + 1) = v53;
    *&v128[1] = v54;
    *(&v128[1] + 1) = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v55 = v117;
    sub_21BE2784C();
    sub_21BBC7A74(&v129);
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v56 = swift_getObjCClassFromMetadata();
    v57 = objc_opt_self();
    sub_21BBA3854(&v147, &v129, &qword_27CDBBD88, &unk_21BE48EC0);
    sub_21BBA3854(&v146, &v129, &qword_27CDB5CC8, &qword_21BE36190);
    v58 = v56;
    v59 = [v57 bundleForClass_];
    v60 = sub_21BE2599C();
    v100 = v61;
    v101 = v60;

    v103 = v57;
    v104 = v58;
    v62 = v58;
    v63 = [v57 bundleForClass_];
    v64 = sub_21BE2599C();
    v98 = v65;
    v99 = v64;

    sub_21BD81050(&v126);
    v66 = *(v2 + 48);
    v102 = *(v2 + 40);
    v105 = v66;
    v145 = v66;
    v67 = swift_allocObject();
    v68 = *(v2 + 16);
    *(v67 + 16) = *v2;
    *(v67 + 32) = v68;
    *(v67 + 48) = *(v2 + 32);
    *(v67 + 64) = *(v2 + 48);
    sub_21BBA3854(&v148, &v129, &qword_27CDB5C50, &qword_21BE33490);
    sub_21BBA3854(&v147, &v129, &qword_27CDBBD88, &unk_21BE48EC0);
    sub_21BBA3854(&v146, &v129, &qword_27CDB5CC8, &qword_21BE36190);

    sub_21BBA3854(&v145, &v129, &qword_27CDBBD90, &qword_21BE48ED0);
    v69 = [v57 bundleForClass_];
    v70 = sub_21BE2599C();
    v72 = v71;

    v142 = &type metadata for SharedPasswordsItem;
    v73 = sub_21BBDAAC0();
    v139 = v113;
    v140 = v114;
    v143 = v73;
    v141 = v112;
    v123 = v126;
    v124 = v127;
    v125[0] = v128[0];
    *(v125 + 9) = *(v128 + 9);
    v129 = v101;
    v130 = v100;
    v131 = v99;
    v132 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBD98, &unk_21BE48ED8);
    sub_21BD83470();
    v144 = sub_21BE2852C();
    v135 = v67;
    v136 = v70;
    v137 = v72;
    v138 = 0;
    v133 = 0;
    v134 = sub_21BD83668;
    v74 = v107;
    (*(v107 + 16))(v7, v27, v3);
    v75 = v106;
    sub_21BE2863C();
    v76 = *(v74 + 8);
    v76(v7, v3);
    swift_getKeyPath();
    sub_21BE2865C();

    v76(v75, v3);
    v77 = swift_allocObject();
    v78 = *(v2 + 16);
    *(v77 + 16) = *v2;
    *(v77 + 32) = v78;
    *(v77 + 48) = *(v2 + 32);
    *(v77 + 64) = *(v2 + 48);
    sub_21BBA3854(&v148, v122, &qword_27CDB5C50, &qword_21BE33490);
    sub_21BBA3854(&v147, v122, &qword_27CDBBD88, &unk_21BE48EC0);
    sub_21BBA3854(&v146, v122, &qword_27CDB5CC8, &qword_21BE36190);
    v79 = v102;

    sub_21BBA3854(&v145, v122, &qword_27CDBBD90, &qword_21BE48ED0);

    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBDA8, &qword_21BE48EE8);
    v113 = sub_21BBC2528();
    v114 = sub_21BD835AC();
    sub_21BE2812C();

    sub_21BBC79C4(&v129);
    v80 = [v103 bundleForClass_];
    v81 = sub_21BE2599C();
    v83 = v82;
    v107 = v82;

    v122[3] = v81;
    v122[4] = v83;
    *&v123 = v79;
    *(&v123 + 1) = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBDC0, &qword_21BE48F18);
    sub_21BE2841C();
    v84 = v129;
    v85 = v130;
    v86 = v131;
    swift_getKeyPath();
    *&v123 = v84;
    *(&v123 + 1) = v85;
    *&v124 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBDC8, &qword_21BE48F48);
    sub_21BE2855C();

    v106 = &v97;
    MEMORY[0x28223BE20](v87);
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8130, &qword_21BE3ED60);
    v129 = &type metadata for ChecklistNotSetupButtonCell;
    v130 = v112;
    v131 = v113;
    v132 = v114;
    v88 = swift_getOpaqueTypeConformance2();
    v89 = sub_21BB41FA4();
    v96 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60);
    v90 = v118;
    v91 = v109;
    v92 = v111;
    sub_21BE280EC();

    (*(v108 + 8))(v92, v90);
    v93 = v110;
    v94 = v119;
    (*(v110 + 16))(v116, v91, v119);
    swift_storeEnumTagMultiPayload();
    sub_21BBC24D4();
    v129 = v90;
    v130 = MEMORY[0x277D837D0];
    v131 = v105;
    v132 = MEMORY[0x277CE0BD8];
    v133 = v88;
    v134 = v89;
    v135 = v96;
    v136 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v55 = v117;
    sub_21BE2784C();
    (*(v93 + 8))(v91, v94);
  }

  sub_21BB56918(v55, v120);
}

uint64_t sub_21BD82670()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_21BE2862C();
  (*(v1 + 8))(v4, v0);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 18))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 0;
    v9[2] = v6;
    sub_21BD836F4(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
    sub_21BE25F0C();
  }

  else
  {
    *(v6 + 18) = 0;
  }
}

uint64_t sub_21BD82870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBDC0, &qword_21BE48F18);
  sub_21BE283FC();
  type metadata accessor for ChecklistStateVars();
  sub_21BD836F4(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  v3 = sub_21BE26E9C();
  v5 = v4;
  KeyPath = swift_getKeyPath();
  v7 = type metadata accessor for SharedPasswordsFlowView();
  *(a2 + *(v7 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  result = swift_storeEnumTagMultiPayload();
  *a2 = v3;
  *(a2 + 8) = v5 & 1;
  *(a2 + *(v7 + 24)) = v9;
  return result;
}

uint64_t sub_21BD82990@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v59 = a1;
  v66 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v56 - v6;
  v60 = sub_21BE271FC();
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v60);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v58 = *(v67 - 8);
  v11 = *(v58 + 64);
  v12 = MEMORY[0x28223BE20](v67);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8160, &unk_21BE3AE60);
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = *(v63 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v62 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - v20;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = objc_opt_self();
  v24 = [v23 bundleForClass_];
  v25 = sub_21BE2599C();
  v27 = v26;

  v69 = v25;
  v70 = v27;
  sub_21BB41FA4();

  sub_21BE2845C();
  sub_21BE271EC();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
  v28 = v21;
  v57 = v21;
  v29 = v67;
  sub_21BE27FBC();
  (*(v7 + 8))(v10, v60);
  v30 = v58;
  v59 = *(v58 + 8);
  v60 = v58 + 8;
  v59(v15, v29);
  v31 = [v23 bundleForClass_];
  v32 = sub_21BE2599C();
  v34 = v33;

  v69 = v32;
  v70 = v34;
  v35 = v61;
  sub_21BE26DEC();
  v36 = sub_21BE26DFC();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = *(a2 + 8);
  v74 = *(a2 + 16);
  v75 = v37;
  v38 = *(a2 + 24);
  v73 = *(a2 + 32);
  v39 = *(a2 + 40);
  v71 = *(a2 + 48);
  v72 = v38;
  v40 = swift_allocObject();
  v41 = *(a2 + 16);
  *(v40 + 16) = *a2;
  *(v40 + 32) = v41;
  *(v40 + 48) = *(a2 + 32);
  *(v40 + 64) = *(a2 + 48);
  sub_21BBA3854(&v75, v68, &qword_27CDBBD88, &unk_21BE48EC0);
  sub_21BBA3854(&v74, v68, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BBA3854(&v72, v68, &qword_27CDB5C50, &qword_21BE33490);

  sub_21BBA3854(&v71, v68, &qword_27CDBBD90, &qword_21BE48ED0);
  v56 = v15;
  sub_21BE2844C();
  v42 = v62;
  v43 = v63;
  v44 = *(v63 + 16);
  v45 = v28;
  v46 = v64;
  v44(v62, v45, v64);
  v47 = *(v30 + 16);
  v48 = v65;
  v49 = v15;
  v50 = v67;
  v47(v65, v49, v67);
  v51 = v66;
  v44(v66, v42, v46);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8168, &qword_21BE48080);
  v47(&v51[*(v52 + 48)], v48, v50);
  v53 = v59;
  v59(v56, v50);
  v54 = *(v43 + 8);
  v54(v57, v46);
  v53(v48, v50);
  return (v54)(v42, v46);
}

uint64_t sub_21BD83000()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_21BE2862C();
  (*(v1 + 8))(v4, v0);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 18) == 1)
  {
    *(v6 + 18) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 1;
    v9[2] = v6;
    sub_21BD836F4(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
    sub_21BE25F0C();
  }
}

uint64_t sub_21BD83208(uint64_t a1)
{
  v4 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBDC0, &qword_21BE48F18);
  sub_21BE283FC();
  if (*(v3 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BD836F4(&qword_27CDB9A08, type metadata accessor for SharedPasswordsItemModel);
    sub_21BE25F0C();
  }

  else
  {
    *(v3 + 16) = 0;
  }
}

uint64_t sub_21BD8334C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_21BD8342C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_21BD815B8(a1);
}

unint64_t sub_21BD83470()
{
  result = qword_27CDBBDA0;
  if (!qword_27CDBBDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBD98, &unk_21BE48ED8);
    sub_21BD8353C(&qword_27CDB8108, &qword_27CDB8110, &unk_21BE3AE10);
    sub_21BD8353C(&qword_27CDB90D0, &qword_27CDB90C8, &qword_21BE3E900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBDA0);
  }

  return result;
}

uint64_t sub_21BD8353C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD835AC()
{
  result = qword_27CDBBDB0;
  if (!qword_27CDBBDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBDA8, &qword_21BE48EE8);
    sub_21BD836F4(&qword_27CDBBDB8, type metadata accessor for SharedPasswordsFlowView);
    sub_21BC66030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBDB0);
  }

  return result;
}

uint64_t objectdestroyTm_30()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_21BD836F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21BD8375C(id *a1, unint64_t a2)
{
  v2 = a2;
  v30 = *a1;
  if (a2 >> 62)
  {
    v3 = sub_21BE2951C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v28 = v2;
    v29 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v29)
      {
        v5 = MEMORY[0x21CF047C0](v4, v2);
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v30 handle];
      v8 = sub_21BE28A0C();
      v10 = v9;

      v11 = [v6 appleID];
      if (v11)
      {
        v12 = v11;
        v13 = sub_21BE28A0C();
        v15 = v14;

        if (v8 == v13 && v10 == v15)
        {
          goto LABEL_5;
        }

        v17 = sub_21BE2995C();

        v2 = v28;
        if (v17)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }

      v18 = [v30 handle];
      v19 = sub_21BE28A0C();
      v21 = v20;

      v22 = [v6 memberPhoneNumbers];
      if (!v22)
      {

        goto LABEL_7;
      }

      v23 = v22;
      v24 = sub_21BE28A0C();
      v26 = v25;

      if (v19 == v24 && v21 == v26)
      {
LABEL_5:

        v2 = v28;
        goto LABEL_6;
      }

      v27 = sub_21BE2995C();

      v2 = v28;
      if ((v27 & 1) == 0)
      {

        goto LABEL_7;
      }

LABEL_6:
      sub_21BC679A4(&v31, v6);

LABEL_7:
      if (v3 == ++v4)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_21BD839BC(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CF047C0](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_21BD8375C(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

id sub_21BD83ABC(unint64_t a1)
{
  v41 = sub_21BE25B9C();
  v2 = *(v41 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v41);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  if (a1 >> 62)
  {
    result = sub_21BE2951C();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result != 1)
  {
    sub_21BE261BC();
    v30 = sub_21BE26A2C();
    v31 = sub_21BE28FFC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_21BB3D81C(0xD000000000000012, 0x800000021BE60840, &v42);
      _os_log_impl(&dword_21BB35000, v30, v31, "%s Opening passwords manager deeplink", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x21CF05C50](v33, -1, -1);
      MEMORY[0x21CF05C50](v32, -1, -1);
    }

    (*(v10 + 8))(v14, v9);
    v34 = [objc_opt_self() passwordManagerURL];
    sub_21BE25B5C();

    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v35 = result;
      v8 = v6;
LABEL_18:
      v37 = sub_21BE25B2C();
      sub_21BBB52D8(MEMORY[0x277D84F90]);
      v38 = sub_21BE288EC();

      [v35 openSensitiveURL:v37 withOptions:v38];

      return (*(v2 + 8))(v8, v41);
    }

    goto LABEL_22;
  }

  v40 = v9;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(a1 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = MEMORY[0x21CF047C0](0, a1);
LABEL_7:
  v19 = v18;
  v20 = [v18 groupID];

  v21 = v20;
  if (!v20)
  {
    sub_21BE28A0C();
    v21 = sub_21BE289CC();
  }

  v22 = sub_21BE28A0C();
  v24 = v23;
  sub_21BE261BC();

  v25 = sub_21BE26A2C();
  v26 = sub_21BE28FFC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v42 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_21BB3D81C(0xD000000000000012, 0x800000021BE60840, &v42);
    *(v27 + 12) = 2080;
    v29 = sub_21BB3D81C(v22, v24, &v42);

    *(v27 + 14) = v29;
    _os_log_impl(&dword_21BB35000, v25, v26, "%s Opening passwords manager deeplink for groupID: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v28, -1, -1);
    MEMORY[0x21CF05C50](v27, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v16, v40);
  v2 = v39;
  v36 = [objc_opt_self() passwordManagerURLForSharingGroupWithGroupID_];

  sub_21BE25B5C();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v35 = result;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

id sub_21BD84088(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2;
  v22 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBDC0, &qword_21BE48F18);
  sub_21BE283FC();
  v11 = [*(v20 + 24) isKeychainSyncEnabled];

  if (v11)
  {
    if (a1 >> 62)
    {
      if (sub_21BE2951C())
      {
        return sub_21BD83ABC(a1);
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return sub_21BD83ABC(a1);
    }

    v21 = a2;
    v22 = a3;
    sub_21BE283FC();
    sub_21BCE3398();
  }

  else
  {
    sub_21BE261BC();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FFC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_21BB3D81C(0x6C4668636E75616CLL, 0xEC0000002928776FLL, &v21);
      _os_log_impl(&dword_21BB35000, v13, v14, "%s keychain sync is disabled, showing alert to enable", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x21CF05C50](v16, -1, -1);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v21 = a2;
    v22 = a3;
    sub_21BE283FC();
    v17 = v20;
    if (*(v20 + 16) != 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v19 - 2) = v17;
      *(&v19 - 8) = 1;
      v21 = v17;
      sub_21BD836F4(&qword_27CDB9A08, type metadata accessor for SharedPasswordsItemModel);
      sub_21BE25F0C();
    }

    *(v20 + 16) = 1;
  }
}

unint64_t sub_21BD843E0()
{
  result = qword_27CDBBDD0;
  if (!qword_27CDBBDD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDBBDD0);
  }

  return result;
}

uint64_t sub_21BD8442C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_21BD84474(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BD844D0()
{
  result = qword_27CDBBDD8;
  if (!qword_27CDBBDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBD80, &unk_21BE48EB0);
    sub_21BBC24D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBD68, &qword_21BE48E98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBDA8, &qword_21BE48EE8);
    sub_21BBC2528();
    sub_21BD835AC();
    swift_getOpaqueTypeConformance2();
    sub_21BB41FA4();
    sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBDD8);
  }

  return result;
}

uint64_t sub_21BD846A8()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD847BC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_21BE2590C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE258FC();
  sub_21BE258DC();
  MEMORY[0x21CF00A60](7824750, 0xE300000000000000);
  sub_21BD84F5C();
  sub_21BE2587C();
  sub_21BE258AC();
  v11 = sub_21BE25B9C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_21BB3A4CC(v5, &unk_27CDB57F0, &qword_21BE328A0);
    sub_21BD89A94();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 32))(a1, v5, v11);
  }
}

uint64_t sub_21BD84A0C()
{
  v1[18] = v0;
  v2 = sub_21BE25B9C();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD84ACC, 0, 0);
}

uint64_t sub_21BD84ACC()
{
  v1 = v0[18];
  sub_21BD847BC(v0[21]);
  v0[22] = objc_opt_self();
  sub_21BE28D7C();
  v0[23] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD84BCC, v3, v2);
}

uint64_t sub_21BD84BCC()
{
  v2 = v0[22];
  v1 = v0[23];

  v0[24] = [v2 sharedApplication];

  return MEMORY[0x2822009F8](sub_21BD84C50, 0, 0);
}

uint64_t sub_21BD84C50()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = sub_21BE25B2C();
  v0[25] = v3;
  sub_21BBB6C98(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_21BD89A3C();
  v4 = sub_21BE288EC();
  v0[26] = v4;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_21BD84DE0;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBDC4C4;
  v0[13] = &block_descriptor_49;
  v0[14] = v5;
  [v1 openURL:v3 options:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BD84DE0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BD84EC0, 0, 0);
}

uint64_t sub_21BD84EC0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v4 = v0[1];

  return v4();
}

char *sub_21BD84F5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6250, &unk_21BE49110);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v400 = &v364 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v399 = &v364 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v398 = &v364 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v395 = &v364 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v392 = &v364 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v389 = &v364 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v388 = &v364 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v364 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v364 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v364 - v24;
  v26 = sub_21BE2585C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v367 = &v364 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v366 = &v364 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v383 = &v364 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v382 = &v364 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v419 = &v364 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v381 = &v364 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v418 = &v364 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v417 = &v364 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v380 = &v364 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v416 = &v364 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v397 = &v364 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v396 = &v364 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v415 = &v364 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v379 = &v364 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v414 = &v364 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v413 = &v364 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v378 = &v364 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v412 = &v364 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v411 = &v364 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v377 = &v364 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v410 = &v364 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v409 = &v364 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v376 = &v364 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v408 = &v364 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v394 = &v364 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v393 = &v364 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v420 = &v364 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v375 = &v364 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v407 = &v364 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v406 = &v364 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v374 = &v364 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v405 = &v364 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v404 = &v364 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v373 = &v364 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v403 = &v364 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v391 = &v364 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v390 = &v364 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v402 = &v364 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v372 = &v364 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v401 = &v364 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v371 = &v364 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v370 = &v364 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v369 = &v364 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v368 = &v364 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v387 = &v364 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v386 = &v364 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v385 = &v364 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v384 = &v364 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v127 = &v364 - v126;
  MEMORY[0x28223BE20](v125);
  v129 = &v364 - v128;
  v424 = v27;
  v425 = MEMORY[0x277D84F90];
  v130 = v1[3];
  v421 = v1;
  if (!v130)
  {
    v422 = *(v27 + 56);
    v422(v25, 1, 1, v26);
LABEL_5:
    sub_21BB3A4CC(v25, &qword_27CDB6250, &unk_21BE49110);
    v134 = v1[6];
    if (!v134)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v131 = v1[1];
  v132 = v1[2];
  v133 = *v1;

  v27 = v424;
  sub_21BE2582C();
  v422 = *(v27 + 56);
  v422(v25, 0, 1, v26);

  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v1 = v421;
    goto LABEL_5;
  }

  v423 = *(v27 + 32);
  v423(v129, v25, v26);
  (*(v27 + 16))(v127, v129, v26);
  v167 = sub_21BBBD914(0, 1, 1, MEMORY[0x277D84F90]);
  v169 = v167[2];
  v168 = v167[3];
  v365 = v20;
  if (v169 >= v168 >> 1)
  {
    v167 = sub_21BBBD914(v168 > 1, v169 + 1, 1, v167);
  }

  v170 = v424;
  v171 = v424 + 8;
  (*(v424 + 8))(v129, v26);
  v167[2] = v169 + 1;
  v172 = v167 + ((*(v171 + 72) + 32) & ~*(v171 + 72)) + *(v171 + 64) * v169;
  v27 = v170;
  v423(v172, v127, v26);
  v425 = v167;
  v1 = v421;
  v20 = v365;
  v134 = v421[6];
  if (v134)
  {
LABEL_6:
    v136 = v1[7];
    v135 = v1[8];
    v426 = *(v1 + 2);
    v427 = v134;
    v428 = v136;
    v429 = v135;
    v137 = sub_21BD87978();
    sub_21BDE5BC0(v137);
  }

LABEL_7:
  v138 = v1[9];
  v139 = v1[10];
  v140 = *(v1 + 88);

  sub_21BD88DC0(v140, v23);

  v423 = *(v27 + 48);
  if (v423(v23, 1, v26) == 1)
  {
    sub_21BB3A4CC(v23, &qword_27CDB6250, &unk_21BE49110);
  }

  else
  {
    v141 = *(v27 + 32);
    v142 = v384;
    v141(v384, v23, v26);
    (*(v27 + 16))(v385, v142, v26);
    v143 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_21BBBD914(0, *(v143 + 2) + 1, 1, v143);
    }

    v145 = *(v143 + 2);
    v144 = *(v143 + 3);
    if (v145 >= v144 >> 1)
    {
      v143 = sub_21BBBD914(v144 > 1, v145 + 1, 1, v143);
    }

    (*(v27 + 8))(v384, v26);
    *(v143 + 2) = v145 + 1;
    v141(&v143[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v145], v385, v26);
    v425 = v143;
    v1 = v421;
  }

  v146 = v1[12];
  v147 = v1[13];
  v148 = *(v1 + 112);

  sub_21BD88FB4(v148, v20);

  if (v423(v20, 1, v26) == 1)
  {
    sub_21BB3A4CC(v20, &qword_27CDB6250, &unk_21BE49110);
    if (v1[18])
    {
      goto LABEL_16;
    }

LABEL_28:
    v152 = v388;
    v422(v388, 1, 1, v26);
    goto LABEL_29;
  }

  v159 = *(v27 + 32);
  v160 = v386;
  v159(v386, v20, v26);
  (*(v27 + 16))(v387, v160, v26);
  v161 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v161 = sub_21BBBD914(0, *(v161 + 2) + 1, 1, v161);
  }

  v163 = *(v161 + 2);
  v162 = *(v161 + 3);
  if (v163 >= v162 >> 1)
  {
    v161 = sub_21BBBD914(v162 > 1, v163 + 1, 1, v161);
  }

  (*(v27 + 8))(v386, v26);
  *(v161 + 2) = v163 + 1;
  v159(&v161[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v163], v387, v26);
  v425 = v161;
  if (!v1[18])
  {
    goto LABEL_28;
  }

LABEL_16:
  v150 = v1[16];
  v149 = v1[17];
  v151 = v1[15];

  v152 = v388;
  sub_21BE2582C();
  v422(v152, 0, 1, v26);

  if (v423(v152, 1, v26) != 1)
  {
    v153 = *(v27 + 32);
    v154 = v368;
    v153(v368, v152, v26);
    (*(v27 + 16))(v369, v154, v26);
    v155 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v155 = sub_21BBBD914(0, *(v155 + 2) + 1, 1, v155);
    }

    v157 = *(v155 + 2);
    v156 = *(v155 + 3);
    if (v157 >= v156 >> 1)
    {
      v155 = sub_21BBBD914(v156 > 1, v157 + 1, 1, v155);
    }

    (*(v27 + 8))(v368, v26);
    *(v155 + 2) = v157 + 1;
    v153(&v155[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v157], v369, v26);
    v425 = v155;
    if (!v1[22])
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_21BB3A4CC(v152, &qword_27CDB6250, &unk_21BE49110);
  if (!v1[22])
  {
LABEL_22:
    v158 = v389;
    v422(v389, 1, 1, v26);
LABEL_31:
    sub_21BB3A4CC(v158, &qword_27CDB6250, &unk_21BE49110);
    goto LABEL_41;
  }

LABEL_30:
  v165 = v1[20];
  v164 = v1[21];
  v166 = v1[19];

  v158 = v389;
  sub_21BE2582C();
  v422(v158, 0, 1, v26);

  if (v423(v158, 1, v26) == 1)
  {
    goto LABEL_31;
  }

  v173 = *(v27 + 32);
  v174 = v370;
  v173(v370, v158, v26);
  (*(v27 + 16))(v371, v174, v26);
  v175 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v175 = sub_21BBBD914(0, *(v175 + 2) + 1, 1, v175);
  }

  v177 = *(v175 + 2);
  v176 = *(v175 + 3);
  if (v177 >= v176 >> 1)
  {
    v175 = sub_21BBBD914(v176 > 1, v177 + 1, 1, v175);
  }

  (*(v27 + 8))(v370, v26);
  *(v175 + 2) = v177 + 1;
  v173(&v175[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v177], v371, v26);
  v425 = v175;
LABEL_41:
  v179 = v1[23];
  v178 = v1[24];
  v180 = v1[25];

  sub_21BD898E4(v181);
  if (v182)
  {
    v183 = v372;
    sub_21BE2582C();

    v184 = *(v27 + 32);
    v185 = v401;
    v184(v401, v183, v26);
    (*(v27 + 16))(v402, v185, v26);
    v186 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v186 = sub_21BBBD914(0, *(v186 + 2) + 1, 1, v186);
    }

    v188 = *(v186 + 2);
    v187 = *(v186 + 3);
    if (v188 >= v187 >> 1)
    {
      v186 = sub_21BBBD914(v187 > 1, v188 + 1, 1, v186);
    }

    (*(v27 + 8))(v401, v26);
    *(v186 + 2) = v188 + 1;
    v184(&v186[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v188], v402, v26);
    v425 = v186;
  }

  else
  {
  }

  v189 = type metadata accessor for TapToRadarDraft();
  v190 = v1 + v189[11];
  v191 = v392;
  sub_21BD8910C(v392);
  if (v423(v191, 1, v26) == 1)
  {
    sub_21BB3A4CC(v191, &qword_27CDB6250, &unk_21BE49110);
  }

  else
  {
    v192 = *(v27 + 32);
    v193 = v390;
    v192(v390, v191, v26);
    (*(v27 + 16))(v391, v193, v26);
    v194 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v194 = sub_21BBBD914(0, *(v194 + 2) + 1, 1, v194);
    }

    v196 = *(v194 + 2);
    v195 = *(v194 + 3);
    if (v196 >= v195 >> 1)
    {
      v194 = sub_21BBBD914(v195 > 1, v196 + 1, 1, v194);
    }

    (*(v27 + 8))(v390, v26);
    *(v194 + 2) = v196 + 1;
    v192(&v194[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v196], v391, v26);
    v425 = v194;
    v1 = v421;
  }

  v197 = (v1 + v189[12]);
  v199 = *v197;
  v198 = v197[1];
  v200 = v197[2];

  sub_21BD896D0(v201);
  if (v202)
  {
    v203 = v373;
    sub_21BE2582C();

    v204 = *(v27 + 32);
    v205 = v403;
    v204(v403, v203, v26);
    (*(v27 + 16))(v404, v205, v26);
    v206 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v206 = sub_21BBBD914(0, *(v206 + 2) + 1, 1, v206);
    }

    v208 = *(v206 + 2);
    v207 = *(v206 + 3);
    if (v208 >= v207 >> 1)
    {
      v206 = sub_21BBBD914(v207 > 1, v208 + 1, 1, v206);
    }

    (*(v27 + 8))(v403, v26);
    *(v206 + 2) = v208 + 1;
    v204(&v206[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v208], v404, v26);
    v425 = v206;
    v1 = v421;
  }

  else
  {
  }

  v209 = (v1 + v189[13]);
  v211 = *v209;
  v210 = v209[1];
  v212 = v209[2];

  sub_21BD896D0(v213);
  if (v214)
  {
    v215 = v374;
    sub_21BE2582C();

    v216 = *(v27 + 32);
    v217 = v405;
    v216(v405, v215, v26);
    (*(v27 + 16))(v406, v217, v26);
    v218 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v218 = sub_21BBBD914(0, *(v218 + 2) + 1, 1, v218);
    }

    v220 = *(v218 + 2);
    v219 = *(v218 + 3);
    if (v220 >= v219 >> 1)
    {
      v218 = sub_21BBBD914(v219 > 1, v220 + 1, 1, v218);
    }

    (*(v27 + 8))(v405, v26);
    *(v218 + 2) = v220 + 1;
    v216(&v218[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v220], v406, v26);
    v425 = v218;
    v1 = v421;
  }

  else
  {
  }

  v221 = (v1 + v189[14]);
  v223 = *v221;
  v222 = v221[1];
  v224 = v221[2];

  sub_21BD895A0(v225);
  if (v226)
  {
    v227 = v375;
    sub_21BE2582C();

    v228 = *(v27 + 32);
    v229 = v407;
    v228(v407, v227, v26);
    (*(v27 + 16))(v420, v229, v26);
    v230 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v230 = sub_21BBBD914(0, *(v230 + 2) + 1, 1, v230);
    }

    v232 = *(v230 + 2);
    v231 = *(v230 + 3);
    if (v232 >= v231 >> 1)
    {
      v230 = sub_21BBBD914(v231 > 1, v232 + 1, 1, v230);
    }

    (*(v27 + 8))(v407, v26);
    *(v230 + 2) = v232 + 1;
    v228(&v230[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v232], v420, v26);
    v425 = v230;
    v1 = v421;
  }

  else
  {
  }

  v233 = (v1 + v189[15]);
  v234 = *v233;
  v235 = v233[1];
  *(v233 + 16);

  v236 = v395;
  sub_21BE2582C();

  v420 = (v27 + 56);
  v422(v236, 0, 1, v26);

  if (v423(v236, 1, v26) == 1)
  {
    sub_21BB3A4CC(v236, &qword_27CDB6250, &unk_21BE49110);
  }

  else
  {
    v237 = *(v27 + 32);
    v238 = v393;
    v237(v393, v236, v26);
    (*(v27 + 16))(v394, v238, v26);
    v239 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v239 = sub_21BBBD914(0, *(v239 + 2) + 1, 1, v239);
    }

    v241 = *(v239 + 2);
    v240 = *(v239 + 3);
    if (v241 >= v240 >> 1)
    {
      v239 = sub_21BBBD914(v240 > 1, v241 + 1, 1, v239);
    }

    v242 = v424 + 8;
    (*(v424 + 8))(v393, v26);
    *(v239 + 2) = v241 + 1;
    v237(&v239[((*(v242 + 72) + 32) & ~*(v242 + 72)) + *(v242 + 64) * v241], v394, v26);
    v425 = v239;
  }

  v243 = (v1 + v189[16]);
  v245 = *v243;
  v244 = v243[1];
  v246 = v243[2];

  sub_21BD895A0(v247);
  if (v248)
  {
    v249 = v376;
    sub_21BE2582C();

    v250 = v424;
    v251 = *(v424 + 32);
    v252 = v408;
    v251(v408, v249, v26);
    (*(v250 + 16))(v409, v252, v26);
    v253 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v253 = sub_21BBBD914(0, *(v253 + 2) + 1, 1, v253);
    }

    v255 = *(v253 + 2);
    v254 = *(v253 + 3);
    if (v255 >= v254 >> 1)
    {
      v253 = sub_21BBBD914(v254 > 1, v255 + 1, 1, v253);
    }

    v256 = v424 + 8;
    (*(v424 + 8))(v408, v26);
    *(v253 + 2) = v255 + 1;
    v251(&v253[((*(v256 + 72) + 32) & ~*(v256 + 72)) + *(v256 + 64) * v255], v409, v26);
    v425 = v253;
  }

  else
  {
  }

  v257 = (v1 + v189[17]);
  v259 = *v257;
  v258 = v257[1];
  v260 = v257[2];

  sub_21BD893C8(v261);
  if (v262)
  {
    v263 = v377;
    sub_21BE2582C();

    v264 = v424;
    v265 = *(v424 + 32);
    v266 = v410;
    v265(v410, v263, v26);
    (*(v264 + 16))(v411, v266, v26);
    v267 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v267 = sub_21BBBD914(0, *(v267 + 2) + 1, 1, v267);
    }

    v269 = *(v267 + 2);
    v268 = *(v267 + 3);
    if (v269 >= v268 >> 1)
    {
      v267 = sub_21BBBD914(v268 > 1, v269 + 1, 1, v267);
    }

    v270 = v424 + 8;
    (*(v424 + 8))(v410, v26);
    *(v267 + 2) = v269 + 1;
    v265(&v267[((*(v270 + 72) + 32) & ~*(v270 + 72)) + *(v270 + 64) * v269], v411, v26);
    v425 = v267;
  }

  else
  {
  }

  v271 = (v1 + v189[18]);
  v273 = *v271;
  v272 = v271[1];
  v274 = v271[2];

  sub_21BD895A0(v275);
  if (v276)
  {
    v277 = v378;
    sub_21BE2582C();

    v278 = v424;
    v279 = *(v424 + 32);
    v280 = v412;
    v279(v412, v277, v26);
    (*(v278 + 16))(v413, v280, v26);
    v281 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v281 = sub_21BBBD914(0, *(v281 + 2) + 1, 1, v281);
    }

    v283 = *(v281 + 2);
    v282 = *(v281 + 3);
    if (v283 >= v282 >> 1)
    {
      v281 = sub_21BBBD914(v282 > 1, v283 + 1, 1, v281);
    }

    v284 = v424 + 8;
    (*(v424 + 8))(v412, v26);
    *(v281 + 2) = v283 + 1;
    v279(&v281[((*(v284 + 72) + 32) & ~*(v284 + 72)) + *(v284 + 64) * v283], v413, v26);
    v425 = v281;
  }

  else
  {
  }

  v285 = (v1 + v189[19]);
  v287 = *v285;
  v286 = v285[1];
  v288 = v285[2];

  sub_21BD88490(v288);
  if (v289)
  {
    v290 = v379;
    sub_21BE2582C();

    v291 = v424;
    v292 = *(v424 + 32);
    v293 = v414;
    v292(v414, v290, v26);
    (*(v291 + 16))(v415, v293, v26);
    v294 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v294 = sub_21BBBD914(0, *(v294 + 2) + 1, 1, v294);
    }

    v296 = *(v294 + 2);
    v295 = *(v294 + 3);
    if (v296 >= v295 >> 1)
    {
      v294 = sub_21BBBD914(v295 > 1, v296 + 1, 1, v294);
    }

    v297 = v424 + 8;
    (*(v424 + 8))(v414, v26);
    *(v294 + 2) = v296 + 1;
    v292(&v294[((*(v297 + 72) + 32) & ~*(v297 + 72)) + *(v297 + 64) * v296], v415, v26);
    v425 = v294;
  }

  else
  {
  }

  v298 = (v1 + v189[20]);
  v299 = *v298;
  v300 = v298[1];
  *(v298 + 16);

  v301 = v398;
  sub_21BE2582C();

  v422(v301, 0, 1, v26);
  v302 = v301;

  if (v423(v301, 1, v26) == 1)
  {
    sub_21BB3A4CC(v301, &qword_27CDB6250, &unk_21BE49110);
  }

  else
  {
    v303 = v424;
    v304 = *(v424 + 32);
    v305 = v396;
    v304(v396, v302, v26);
    (*(v303 + 16))(v397, v305, v26);
    v306 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v306 = sub_21BBBD914(0, *(v306 + 2) + 1, 1, v306);
    }

    v308 = *(v306 + 2);
    v307 = *(v306 + 3);
    if (v308 >= v307 >> 1)
    {
      v306 = sub_21BBBD914(v307 > 1, v308 + 1, 1, v306);
    }

    v309 = v424 + 8;
    (*(v424 + 8))(v396, v26);
    *(v306 + 2) = v308 + 1;
    v304(&v306[((*(v309 + 72) + 32) & ~*(v309 + 72)) + *(v309 + 64) * v308], v397, v26);
    v425 = v306;
  }

  v310 = (v1 + v189[21]);
  v312 = *v310;
  v311 = v310[1];
  v313 = *(v310 + 16);

  sub_21BD88994(v313);
  if (v314)
  {
    v315 = v380;
    sub_21BE2582C();

    v316 = v424;
    v317 = *(v424 + 32);
    v318 = v416;
    v317(v416, v315, v26);
    (*(v316 + 16))(v417, v318, v26);
    v319 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v319 = sub_21BBBD914(0, *(v319 + 2) + 1, 1, v319);
    }

    v321 = *(v319 + 2);
    v320 = *(v319 + 3);
    if (v321 >= v320 >> 1)
    {
      v319 = sub_21BBBD914(v320 > 1, v321 + 1, 1, v319);
    }

    v322 = v424 + 8;
    (*(v424 + 8))(v416, v26);
    *(v319 + 2) = v321 + 1;
    v317(&v319[((*(v322 + 72) + 32) & ~*(v322 + 72)) + *(v322 + 64) * v321], v417, v26);
    v425 = v319;
  }

  else
  {
  }

  v323 = (v1 + v189[22]);
  v325 = *v323;
  v324 = v323[1];
  v326 = v323[2];

  sub_21BD895A0(v327);
  if (v328)
  {
    v329 = v381;
    sub_21BE2582C();

    v330 = v424;
    v331 = *(v424 + 32);
    v332 = v418;
    v331(v418, v329, v26);
    (*(v330 + 16))(v419, v332, v26);
    v333 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v333 = sub_21BBBD914(0, *(v333 + 2) + 1, 1, v333);
    }

    v335 = *(v333 + 2);
    v334 = *(v333 + 3);
    if (v335 >= v334 >> 1)
    {
      v333 = sub_21BBBD914(v334 > 1, v335 + 1, 1, v333);
    }

    v336 = v424 + 8;
    (*(v424 + 8))(v418, v26);
    *(v333 + 2) = v335 + 1;
    v331(&v333[((*(v336 + 72) + 32) & ~*(v336 + 72)) + *(v336 + 64) * v335], v419, v26);
    v425 = v333;
  }

  else
  {
  }

  v337 = (v1 + v189[23]);
  if (!v337[3])
  {
    v342 = v399;
    v422(v399, 1, 1, v26);
    v344 = v424;
    goto LABEL_140;
  }

  v339 = v337[1];
  v338 = v337[2];
  v340 = *v337;
  v341 = v337[3];

  v342 = v399;
  sub_21BE2582C();
  v422(v342, 0, 1, v26);

  v343 = v423(v342, 1, v26);
  v344 = v424;
  if (v343 == 1)
  {
LABEL_140:
    sub_21BB3A4CC(v342, &qword_27CDB6250, &unk_21BE49110);
    goto LABEL_141;
  }

  v345 = *(v424 + 32);
  v346 = v382;
  v345(v382, v342, v26);
  (*(v344 + 16))(v383, v346, v26);
  v347 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v347 = sub_21BBBD914(0, *(v347 + 2) + 1, 1, v347);
  }

  v349 = *(v347 + 2);
  v348 = *(v347 + 3);
  if (v349 >= v348 >> 1)
  {
    v347 = sub_21BBBD914(v348 > 1, v349 + 1, 1, v347);
  }

  v344 = v424;
  v350 = v424 + 8;
  (*(v424 + 8))(v382, v26);
  *(v347 + 2) = v349 + 1;
  v345(&v347[((*(v350 + 72) + 32) & ~*(v350 + 72)) + *(v350 + 64) * v349], v383, v26);
  v425 = v347;
LABEL_141:
  v351 = (v421 + v189[24]);
  if (!v351[3])
  {
    v356 = v400;
    v422(v400, 1, 1, v26);
    goto LABEL_149;
  }

  v353 = v351[1];
  v352 = v351[2];
  v354 = *v351;
  v355 = v351[3];

  v356 = v400;
  sub_21BE2582C();
  v422(v356, 0, 1, v26);

  if (v423(v356, 1, v26) == 1)
  {
LABEL_149:
    sub_21BB3A4CC(v356, &qword_27CDB6250, &unk_21BE49110);
    return v425;
  }

  v357 = *(v344 + 32);
  v358 = v366;
  v357(v366, v356, v26);
  v359 = v367;
  (*(v344 + 16))(v367, v358, v26);
  v360 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v360 = sub_21BBBD914(0, *(v360 + 2) + 1, 1, v360);
  }

  v362 = *(v360 + 2);
  v361 = *(v360 + 3);
  if (v362 >= v361 >> 1)
  {
    v360 = sub_21BBBD914(v361 > 1, v362 + 1, 1, v360);
  }

  (*(v344 + 8))(v358, v26);
  *(v360 + 2) = v362 + 1;
  v357(&v360[((*(v344 + 80) + 32) & ~*(v344 + 80)) + *(v344 + 72) * v362], v359, v26);
  return v360;
}

uint64_t sub_21BD87978()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5810, qword_21BE328D0);
  v1 = *(sub_21BE2585C() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21BE362A0;
  v10 = *v0;
  sub_21BE2992C();
  sub_21BE2582C();

  v5 = v0[1];
  v6 = v0[2];
  sub_21BE2582C();
  v7 = v0[3];
  v8 = v0[4];
  sub_21BE2582C();
  return v4;
}

uint64_t sub_21BD87AF4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  sub_21BE28ABC();
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t sub_21BD87B74()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x21CF04C80](*v0);
  sub_21BE28ABC();

  return sub_21BE28ABC();
}

uint64_t sub_21BD87BE4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  sub_21BE28ABC();
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t sub_21BD87C60(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_21BE2995C() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_21BE2995C();
}

unint64_t sub_21BD87D14(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21BD87E78(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21BD87D14(*a1);
  v5 = v4;
  if (v3 == sub_21BD87D14(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BE2995C();
  }

  return v8 & 1;
}

uint64_t sub_21BD87F00()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BD87D14(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD87F64()
{
  sub_21BD87D14(*v0);
  sub_21BE28ABC();
}

uint64_t sub_21BD87FB8()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BD87D14(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD88018@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21BD8AD6C();
  *a2 = result;
  return result;
}

unint64_t sub_21BD88048@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BD87D14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21BD88088()
{
  *v0;
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BD8818C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21BD8ADB8();
  *a2 = result;
  return result;
}

void sub_21BD881BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
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

uint64_t sub_21BD882A0()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BD8839C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21BD8AE04();
  *a2 = result;
  return result;
}

void sub_21BD883CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_21BD88490(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_21BBBC990(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_21BBBC990((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21BBBC990(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_21BBBC990((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21BBBC990(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_21BBBC990((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21BBBC990(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_21BBBC990((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21BBBC990(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_21BBBC990((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
            sub_21BBBF03C();
            v1 = sub_21BE2897C();

            return v1;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21BBBC990(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v24 = *(v2 + 3);
          if (v25 >= v24 >> 1)
          {
            v2 = sub_21BBBC990((v24 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v26 = &v2[16 * v25];
          *(v26 + 4) = 0xD000000000000016;
          *(v26 + 5) = 0x800000021BE608A0;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21BBBC990(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_21BBBC990((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21BBBC990(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_21BBBC990((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

uint64_t sub_21BD88954@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_21BD8AD34(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_21BD88994(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_21BE2995C();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_21BD88B64()
{
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BD88C68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21BD8AE50();
  *a2 = result;
  return result;
}

void sub_21BD88C98(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000021BE558C0;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000021BE558E0;
    }

    v5 = 0x800000021BE55880;
    if (v2 != 3)
    {
      v5 = 0x800000021BE558A0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t sub_21BD88D68()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000028;
  }

  *v0;
  return result;
}

uint64_t sub_21BD88DC0@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 9u)
  {
    v3 = 1;
  }

  else
  {
    sub_21BE2582C();

    v3 = 0;
  }

  v4 = sub_21BE2585C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_21BD88FB4@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 5u)
  {
    v3 = 1;
  }

  else
  {
    sub_21BE2582C();

    v3 = 0;
  }

  v4 = sub_21BE2585C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_21BD8910C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_21BE25D1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8FC0, &qword_21BE49120);
  sub_21BC1E1AC(v2 + *(v13 + 36), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21BB3A4CC(v7, &qword_27CDB9720, &unk_21BE39F00);
    v14 = 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v16 = sub_21BE289CC();
    [v15 setDateFormat_];

    [v15 setDoesRelativeDateFormatting_];
    v17 = sub_21BE25CAC();
    v18 = [v15 stringFromDate_];

    sub_21BE28A0C();
    (*(v9 + 8))(v12, v8);
    v19 = *v2;
    v20 = v2[1];
    sub_21BE2582C();

    v14 = 0;
  }

  v21 = sub_21BE2585C();
  return (*(*(v21 - 8) + 56))(a1, v14, 1, v21);
}

uint64_t sub_21BD893C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21BBBC990(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_21BBBC990((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
  sub_21BBBF03C();
  v17 = sub_21BE2897C();

  return v17;
}

uint64_t sub_21BD895A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21BBBC990(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_21BBBC990((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
  sub_21BBBF03C();
  v9 = sub_21BE2897C();

  return v9;
}

uint64_t sub_21BD896D0(uint64_t a1)
{
  v24 = sub_21BE25B9C();
  v2 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v8 = *(v3 + 16);
  v7 = v3 + 16;
  v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v22 = *(v7 + 56);
  v23 = v8;
  v10 = (v7 - 8);
  v11 = MEMORY[0x277D84F90];
  do
  {
    v12 = v24;
    v13 = v7;
    v23(v5, v9, v24);
    v14 = sub_21BE25B6C();
    v16 = v15;
    (*v10)(v5, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_21BBBC990(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    if (v18 >= v17 >> 1)
    {
      v11 = sub_21BBBC990((v17 > 1), v18 + 1, 1, v11);
    }

    *(v11 + 2) = v18 + 1;
    v19 = &v11[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
    v9 += v22;
    --v6;
    v7 = v13;
  }

  while (v6);
  v25 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
  sub_21BBBF03C();
  v20 = sub_21BE2897C();

  return v20;
}

uint64_t sub_21BD898E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = *v2++;
    v5 = sub_21BE2992C();
    v7 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21BBBC990(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_21BBBC990((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v7;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
  sub_21BBBF03C();
  v11 = sub_21BE2897C();

  return v11;
}

unint64_t sub_21BD89A3C()
{
  result = qword_27CDB54F0;
  if (!qword_27CDB54F0)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB54F0);
  }

  return result;
}

unint64_t sub_21BD89A94()
{
  result = qword_27CDBBDE0[0];
  if (!qword_27CDBBDE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDBBDE0);
  }

  return result;
}

uint64_t type metadata accessor for TapToRadarDraft()
{
  result = qword_27CDBBE68;
  if (!qword_27CDBBE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BD89B44(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21BD89BC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21BD89D48(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_21BD89FD8()
{
  sub_21BD8A3FC(319, &qword_27CDBBE78, &qword_27CDB7AB0, &qword_21BE39110, sub_21BD8A330);
  if (v0 <= 0x3F)
  {
    sub_21BD8A3AC();
    if (v1 <= 0x3F)
    {
      sub_21BD8A3FC(319, &qword_27CDBBE90, &qword_27CDBBE98, &qword_21BE49170, sub_21BD8A46C);
      if (v2 <= 0x3F)
      {
        sub_21BD8A3FC(319, &qword_27CDBBEA8, &qword_27CDBBEB0, &qword_21BE49178, sub_21BD8A4E8);
        if (v3 <= 0x3F)
        {
          sub_21BD8A3FC(319, &qword_27CDBBEC0, &qword_27CDBBEC8, &qword_21BE49180, sub_21BD8A564);
          if (v4 <= 0x3F)
          {
            sub_21BD8A3FC(319, &qword_27CDBBED8, &qword_27CDB9720, &unk_21BE39F00, sub_21BD8A5E0);
            if (v5 <= 0x3F)
            {
              sub_21BD8A3FC(319, &qword_27CDBBEE8, &qword_27CDBBEF0, &qword_21BE49188, sub_21BD8A65C);
              if (v6 <= 0x3F)
              {
                sub_21BD8A3FC(319, &qword_27CDBBF00, &qword_27CDB6EF0, &unk_21BE33800, sub_21BD8A6D8);
                if (v7 <= 0x3F)
                {
                  sub_21BD8A7D0(319, &qword_27CDBBF10);
                  if (v8 <= 0x3F)
                  {
                    sub_21BD8A3FC(319, &qword_27CDBBF18, &qword_27CDBBF20, &qword_21BE49190, sub_21BD8A754);
                    if (v9 <= 0x3F)
                    {
                      sub_21BD8A7D0(319, &qword_27CDBBF30);
                      if (v10 <= 0x3F)
                      {
                        sub_21BD8A7D0(319, &qword_27CDBBF38);
                        if (v11 <= 0x3F)
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
  }
}

unint64_t sub_21BD8A330()
{
  result = qword_27CDBBE80;
  if (!qword_27CDBBE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7AB0, &qword_21BE39110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBE80);
  }

  return result;
}

void sub_21BD8A3AC()
{
  if (!qword_27CDBBE88)
  {
    v0 = sub_21BE2946C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBBE88);
    }
  }
}

void sub_21BD8A3FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = type metadata accessor for URLParameter();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21BD8A46C()
{
  result = qword_27CDBBEA0;
  if (!qword_27CDBBEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBE98, &qword_21BE49170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBEA0);
  }

  return result;
}

unint64_t sub_21BD8A4E8()
{
  result = qword_27CDBBEB8;
  if (!qword_27CDBBEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBEB0, &qword_21BE49178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBEB8);
  }

  return result;
}

unint64_t sub_21BD8A564()
{
  result = qword_27CDBBED0;
  if (!qword_27CDBBED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBEC8, &qword_21BE49180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBED0);
  }

  return result;
}

unint64_t sub_21BD8A5E0()
{
  result = qword_27CDBBEE0;
  if (!qword_27CDBBEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9720, &unk_21BE39F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBEE0);
  }

  return result;
}

unint64_t sub_21BD8A65C()
{
  result = qword_27CDBBEF8;
  if (!qword_27CDBBEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBEF0, &qword_21BE49188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBEF8);
  }

  return result;
}

unint64_t sub_21BD8A6D8()
{
  result = qword_27CDBBF08;
  if (!qword_27CDBBF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6EF0, &unk_21BE33800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBF08);
  }

  return result;
}

unint64_t sub_21BD8A754()
{
  result = qword_27CDBBF28;
  if (!qword_27CDBBF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBF20, &qword_21BE49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBF28);
  }

  return result;
}

void sub_21BD8A7D0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for URLParameter();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21BD8A9C4()
{
  result = qword_27CDBBF40;
  if (!qword_27CDBBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBF40);
  }

  return result;
}

unint64_t sub_21BD8AA1C()
{
  result = qword_27CDBBF48;
  if (!qword_27CDBBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBF48);
  }

  return result;
}

unint64_t sub_21BD8AA74()
{
  result = qword_27CDBBF50;
  if (!qword_27CDBBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBF50);
  }

  return result;
}

unint64_t sub_21BD8AACC()
{
  result = qword_27CDBBF58;
  if (!qword_27CDBBF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBF58);
  }

  return result;
}

unint64_t sub_21BD8AB20()
{
  result = qword_27CDBBF60;
  if (!qword_27CDBBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBF60);
  }

  return result;
}

unint64_t sub_21BD8AB78()
{
  result = qword_27CDBBF68;
  if (!qword_27CDBBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBF68);
  }

  return result;
}

unint64_t sub_21BD8ABD0()
{
  result = qword_27CDBBF70;
  if (!qword_27CDBBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBF70);
  }

  return result;
}

unint64_t sub_21BD8AC28()
{
  result = qword_27CDBBF78;
  if (!qword_27CDBBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBF78);
  }

  return result;
}

unint64_t sub_21BD8AC80()
{
  result = qword_27CDBBF80;
  if (!qword_27CDBBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBF80);
  }

  return result;
}

unint64_t sub_21BD8ACDC()
{
  result = qword_27CDBBF88;
  if (!qword_27CDBBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBF88);
  }

  return result;
}

uint64_t sub_21BD8AD34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_21BD8AD6C()
{
  v0 = sub_21BE2980C();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BD8ADB8()
{
  v0 = sub_21BE2980C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BD8AE04()
{
  v0 = sub_21BE2980C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BD8AE50()
{
  v0 = sub_21BE2980C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BD8AF00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_21BD8AF5C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_21BD8AFF8@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_21BE2869C();
  a2[1] = v4;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFA0, &qword_21BE49AB8) + 44);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFA8, &qword_21BE49AC0);
  (*(*(v6 - 8) + 16))(a2 + v5, a1, v6);
  sub_21BE2869C();
  sub_21BE26F2C();
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFB0, &qword_21BE49AC8) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

void sub_21BD8B0E4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [objc_opt_self() defaultCenter];
    [v3 postNotificationName:a1 object:0];
  }
}

id sub_21BD8B160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *v2;
  v5 = *(v2 + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v10;
  *(v6 + 24) = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC1A0, &qword_21BE4A000);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC1A8, qword_21BE4A008) + 36));
  *v8 = sub_21BD8E1F8;
  v8[1] = v6;
  v8[2] = 0;
  v8[3] = 0;

  return v10;
}

uint64_t sub_21BD8B254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC100, &qword_21BE49F00);
  v7 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC108, &qword_21BE49F08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC110, &qword_21BE49F10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v26 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC118, &qword_21BE49F18);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v26 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC120, &qword_21BE49F20);
  if (a2 >= 1 || (v26[1] = v14, (a3 & 1) != 0))
  {
    sub_21BB3B038(&qword_27CDBC138, &qword_27CDBC120, &qword_21BE49F20);
    sub_21BE2810C();
    v23 = &v21[*(v18 + 36)];
    v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC148, &qword_21BE49F28) + 28);
    sub_21BE2716C();
    *v23 = swift_getKeyPath();
    sub_21BBA3854(v21, v13, &qword_27CDBC118, &qword_21BE49F18);
    swift_storeEnumTagMultiPayload();
    sub_21BD8DA24();
    sub_21BE2784C();
    sub_21BBA3854(v17, v9, &qword_27CDBC110, &qword_21BE49F10);
    swift_storeEnumTagMultiPayload();
    sub_21BD8D9A0();
    sub_21BE2784C();
    sub_21BB3A4CC(v17, &qword_27CDBC110, &qword_21BE49F10);
    return sub_21BB3A4CC(v21, &qword_27CDBC118, &qword_21BE49F18);
  }

  else
  {
    (*(*(v22 - 8) + 16))(v9, a1, v22);
    swift_storeEnumTagMultiPayload();
    sub_21BD8D9A0();
    sub_21BB3B038(&qword_27CDBC138, &qword_27CDBC120, &qword_21BE49F20);
    return sub_21BE2784C();
  }
}

uint64_t sub_21BD8B75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  sub_21BD8D6C4(v3, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActiveStateChange);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_21BD8D830(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ActiveStateChange);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFB8, &qword_21BE49AD0);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFC0, &qword_21BE49AD8);
  v12 = *(v11 + 52);
  v13 = sub_21BE2934C();
  result = (*(*(v13 - 8) + 16))(a3 + v12, v3, v13);
  v15 = (a3 + *(v11 + 56));
  *v15 = sub_21BD8CAB8;
  v15[1] = v9;
  return result;
}

uint64_t sub_21BD8B918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), const char *a5)
{
  v8 = a3(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = sub_21BE26A4C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  sub_21BD8D6C4(a2, v11, a4);
  v17 = sub_21BE26A2C();
  v18 = sub_21BE28FCC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v35 = v12;
    v22 = v21;
    *v20 = 136315138;
    v23 = &v11[*(v8 + 24)];
    v36 = a2;
    v37 = v21;
    v34 = a5;
    v24 = v8;
    v25 = *v23;
    v26 = v23[1];

    sub_21BD8D940(v11, v33);
    v27 = sub_21BB3D81C(v25, v26, &v37);
    v8 = v24;

    *(v20 + 4) = v27;
    a2 = v36;
    _os_log_impl(&dword_21BB35000, v17, v18, v34, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x21CF05C50](v22, -1, -1);
    MEMORY[0x21CF05C50](v20, -1, -1);

    v28 = (*(v13 + 8))(v16, v35);
  }

  else
  {

    sub_21BD8D940(v11, a4);
    v28 = (*(v13 + 8))(v16, v12);
  }

  v29 = a2 + *(v8 + 20);
  v30 = *(v29 + 8);
  return (*v29)(v28);
}

uint64_t sub_21BD8BB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  sub_21BD8D6C4(v3, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InactiveStateChange);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_21BD8D830(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for InactiveStateChange);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0F0, &qword_21BE49EF0);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0F8, &qword_21BE49EF8);
  v12 = *(v11 + 52);
  v13 = sub_21BE2934C();
  result = (*(*(v13 - 8) + 16))(a3 + v12, v3, v13);
  v15 = (a3 + *(v11 + 56));
  *v15 = sub_21BD8D898;
  v15[1] = v9;
  return result;
}

uint64_t sub_21BD8BD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC080, &qword_21BE49DF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = sub_21BE27C8C();
  KeyPath = swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC088, &unk_21BE49E30);
  (*(*(v10 - 8) + 16))(v7, a1, v10);
  v11 = &v7[*(v4 + 36)];
  *v11 = KeyPath;
  v11[1] = v8;
  sub_21BD8D518();
  sub_21BE280BC();
  sub_21BD8D5FC(v7);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0A0, &unk_21BE49E40) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660) + 28);
  v14 = sub_21BE27D7C();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  *v12 = swift_getKeyPath();
  v15 = sub_21BE2832C();
  v16 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0A8, &qword_21BE49EB0);
  v18 = (a2 + *(result + 36));
  *v18 = v16;
  v18[1] = v15;
  return result;
}

uint64_t sub_21BD8BF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE27CCC();
  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0B0, &qword_21BE49EB8);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0B8, &qword_21BE49EC0) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  v8 = sub_21BE2833C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0C0, &qword_21BE49EC8);
  *(a2 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_21BD8BFEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = sub_21BE2798C();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0C8, &qword_21BE49ED0);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0D0, &qword_21BE49ED8);
  v29 = *(v27 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v14 = &v25 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC0D8, &unk_21BE49EE0);
  v17 = sub_21BB3B038(&qword_27CDBC0E0, &qword_27CDBC0D8, &unk_21BE49EE0);
  sub_21BE27F4C();

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = a1;

  v33 = v16;
  v34 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21BE27FFC();

  (*(v26 + 8))(v11, v8);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = a2;

  v22 = v28;
  sub_21BE2797C();
  v33 = v8;
  v34 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v23 = v27;
  sub_21BE2802C();

  (*(v31 + 8))(v22, v32);
  return (*(v29 + 8))(v14, v23);
}

uint64_t sub_21BD8C3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE26A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE26A6C();
  sub_21BE26A5C();
  v10 = v9;
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  v13 = v10 + -16.0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFF0, &qword_21BE49B00);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFF8, &qword_21BE49B08);
  v16 = a2 + *(result + 36);
  *v16 = 0;
  *(v16 + 8) = v13;
  *(v16 + 16) = 0;
  *(v16 + 24) = v12 + 8.0 + v13;
  *(v16 + 32) = 0;
  return result;
}

uint64_t sub_21BD8C550@<X0>(void *a1@<X8>)
{
  v2 = sub_21BE278FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2799C();
  sub_21BE26F7C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v8;
  a1[1] = v10;
  a1[2] = v12;
  a1[3] = v14;
  return result;
}

uint64_t sub_21BD8C65C(CGRect *a1, uint64_t a2)
{
  CGRectGetMinY(*a1);
  *a2;
  *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC010, &unk_21BE49B20);
  return sub_21BE2854C();
}

uint64_t sub_21BD8C6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v7 = *(v2 + 32);
  v13 = *(v2 + 16);
  v6 = v13;
  v8 = swift_allocObject();
  *(v8 + 16) = *v2;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC000, &qword_21BE49B10);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC008, &qword_21BE49B18) + 36));
  *v10 = sub_21BD8C550;
  v10[1] = 0;
  v10[2] = sub_21BD8CCE0;
  v10[3] = v8;
  sub_21BBC7C94(&v13, &v12);
}

uint64_t sub_21BD8C838@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = a1;
  v16 = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFC8, &unk_21BE49AE0);
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v15);
  v9 = &v14 - v8;
  v19 = a2;
  v20 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFD0, &qword_21BE49AF0);
  sub_21BB3B038(&qword_27CDBBFD8, &qword_27CDBBFD0, &qword_21BE49AF0);
  sub_21BD8CC8C();
  sub_21BE27EDC();

  LOBYTE(v17) = a2;
  v18 = a3;
  sub_21BE283FC();
  if (v19 == 1)
  {
    sub_21BE282AC();
    v10 = sub_21BE2831C();

    v17 = v10;
    v11 = sub_21BE2852C();
  }

  else
  {
    v11 = 0;
  }

  v12 = v16;
  (*(v6 + 32))(v16, v9, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBFE8, &qword_21BE49AF8);
  *(v12 + *(result + 36)) = v11;
  return result;
}

uint64_t sub_21BD8CADC()
{
  v1 = sub_21BE279AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  v7 = v0[1];
  v8 = *(v0 + 16);
  sub_21BE279BC();
  v11[15] = sub_21BE279CC() & 1;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  *(v9 + 32) = v8;
  sub_21BD8E0DC(&qword_27CDBC0E8, MEMORY[0x277CDE278]);

  sub_21BE281BC();

  return (*(v2 + 8))(v5, v1);
}

unint64_t sub_21BD8CC8C()
{
  result = qword_27CDBBFE0;
  if (!qword_27CDBBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBFE0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21BD8CD1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_21BD8CD64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BE2934C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21BE2934C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_21BD8CF70()
{
  result = sub_21BE2934C();
  if (v1 <= 0x3F)
  {
    result = sub_21BC41568();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BadgeModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BadgeModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_21BD8D0B4()
{
  result = qword_27CDBC028;
  if (!qword_27CDBC028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBFB0, &qword_21BE49AC8);
    sub_21BB3B038(&qword_27CDBC030, &qword_27CDBC038, &qword_21BE49C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC028);
  }

  return result;
}

unint64_t sub_21BD8D16C()
{
  result = qword_27CDBC048;
  if (!qword_27CDBC048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBFE8, &qword_21BE49AF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBFD0, &qword_21BE49AF0);
    sub_21BB3B038(&qword_27CDBBFD8, &qword_27CDBBFD0, &qword_21BE49AF0);
    sub_21BD8CC8C();
    swift_getOpaqueTypeConformance2();
    sub_21BB3B038(&qword_27CDBB1D0, &qword_27CDBB1D8, &qword_21BE46178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC048);
  }

  return result;
}

unint64_t sub_21BD8D2A8()
{
  result = qword_27CDBC050;
  if (!qword_27CDBC050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBFF8, &qword_21BE49B08);
    sub_21BB3B038(&qword_27CDBC058, &qword_27CDBBFF0, &qword_21BE49B00);
    sub_21BB3B038(&qword_27CDB6D50, &qword_27CDB6D58, &unk_21BE36040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC050);
  }

  return result;
}

unint64_t sub_21BD8D38C()
{
  result = qword_27CDBC060;
  if (!qword_27CDBC060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC008, &qword_21BE49B18);
    sub_21BB3B038(&qword_27CDBC068, &qword_27CDBC000, &qword_21BE49B10);
    sub_21BB3B038(&qword_27CDBC070, &qword_27CDBC078, &qword_21BE49C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC060);
  }

  return result;
}

unint64_t sub_21BD8D518()
{
  result = qword_27CDBC090;
  if (!qword_27CDBC090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC080, &qword_21BE49DF8);
    sub_21BB3B038(&qword_27CDBC098, &qword_27CDBC088, &unk_21BE49E30);
    sub_21BB3B038(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC090);
  }

  return result;
}

uint64_t sub_21BD8D5FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC080, &qword_21BE49DF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BD8D664(uint64_t a1, char *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  return sub_21BE2854C();
}

uint64_t sub_21BD8D6C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_31(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 64);
  v4 = v1 + ((*(*v2 + 80) + 16) & ~*(*v2 + 80));
  v5 = sub_21BE2934C();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = *(v4 + v2[7] + 8);

  v7 = *(v4 + v2[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_21BD8D830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BD8D940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21BD8D9A0()
{
  result = qword_27CDBC128;
  if (!qword_27CDBC128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC110, &qword_21BE49F10);
    sub_21BD8DA24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC128);
  }

  return result;
}

unint64_t sub_21BD8DA24()
{
  result = qword_27CDBC130;
  if (!qword_27CDBC130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC118, &qword_21BE49F18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC120, &qword_21BE49F20);
    sub_21BB3B038(&qword_27CDBC138, &qword_27CDBC120, &qword_21BE49F20);
    swift_getOpaqueTypeConformance2();
    sub_21BB3B038(&qword_27CDBC140, &qword_27CDBC148, &qword_21BE49F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC130);
  }

  return result;
}

uint64_t sub_21BD8DB4C(uint64_t a1)
{
  v2 = sub_21BE2717C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21BE2734C();
}

unint64_t sub_21BD8DC24()
{
  result = qword_27CDBC150;
  if (!qword_27CDBC150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC0A8, &qword_21BE49EB0);
    sub_21BD8DCDC();
    sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC150);
  }

  return result;
}

unint64_t sub_21BD8DCDC()
{
  result = qword_27CDBC158;
  if (!qword_27CDBC158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC0A0, &unk_21BE49E40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC080, &qword_21BE49DF8);
    sub_21BD8D518();
    swift_getOpaqueTypeConformance2();
    sub_21BB3B038(&qword_27CDB6D70, &qword_27CDBC2A0, &qword_21BE33660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC158);
  }

  return result;
}

unint64_t sub_21BD8DDD0()
{
  result = qword_27CDBC160;
  if (!qword_27CDBC160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC0C0, &qword_21BE49EC8);
    sub_21BD8DE88();
    sub_21BB3B038(&qword_27CDBB680, qword_27CDBB688, &unk_21BE476A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC160);
  }

  return result;
}

unint64_t sub_21BD8DE88()
{
  result = qword_27CDBC168;
  if (!qword_27CDBC168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC0B8, &qword_21BE49EC0);
    sub_21BB3B038(&qword_27CDBC170, &qword_27CDBC0B0, &qword_21BE49EB8);
    sub_21BB3B038(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC168);
  }

  return result;
}

unint64_t sub_21BD8DF6C()
{
  result = qword_27CDBC178;
  if (!qword_27CDBC178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC180, &qword_21BE49FA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC0C8, &qword_21BE49ED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC0D8, &unk_21BE49EE0);
    sub_21BB3B038(&qword_27CDBC0E0, &qword_27CDBC0D8, &unk_21BE49EE0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21BD8E0DC(&qword_27CDB6790, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC178);
  }

  return result;
}

uint64_t sub_21BD8E0DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BD8E124()
{
  result = qword_27CDBC190;
  if (!qword_27CDBC190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC198, &qword_21BE49FA8);
    sub_21BD8D9A0();
    sub_21BB3B038(&qword_27CDBC138, &qword_27CDBC120, &qword_21BE49F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC190);
  }

  return result;
}

unint64_t sub_21BD8E204()
{
  result = qword_27CDBC1B0;
  if (!qword_27CDBC1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC1A8, qword_21BE4A008);
    sub_21BB3B038(&qword_27CDBC1B8, &qword_27CDBC1A0, &qword_21BE4A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC1B0);
  }

  return result;
}

void sub_21BD8E2C4()
{
  if (v0[OBJC_IVAR____TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC_shouldAddSpinner] != 1)
  {
    return;
  }

  v1 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;

  v6 = [v0 view];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  [v6 frame];
  v9 = v8;

  [v1 setFrame_];
  [v1 setHidesWhenStopped_];
  v10 = [objc_opt_self() grayColor];
  [v1 setColor_];

  [v1 setActivityIndicatorViewStyle_];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 addSubview_];

  [v1 startAnimating];
  v13 = *&v0[OBJC_IVAR____TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC_progressView];
  *&v0[OBJC_IVAR____TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC_progressView] = v1;
}

void sub_21BD8E4BC(void *a1)
{
  v3 = [a1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v26 = [v1 view];
  if (!v26)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v1 addChildViewController_];
  v5 = [v1 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v5 addSubview_];

  v7 = [a1 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21BE397B0;
  v11 = [v4 topAnchor];
  v12 = [v26 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v10 + 32) = v13;
  v14 = [v4 bottomAnchor];
  v15 = [v26 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v10 + 40) = v16;
  v17 = [v4 leadingAnchor];
  v18 = [v26 safeAreaLayoutGuide];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v10 + 48) = v20;
  v21 = [v4 trailingAnchor];
  v22 = [v26 safeAreaLayoutGuide];
  v23 = [v22 trailingAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v10 + 56) = v24;
  sub_21BC47284();
  v25 = sub_21BE28C1C();

  [v9 activateConstraints_];

  [a1 didMoveToParentViewController_];
}

uint64_t sub_21BD8E9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_21BE28D7C();
  v3[6] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD8EA8C, v5, v4);
}

uint64_t sub_21BD8EA8C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v0[8] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD8EB40, v9, v8);
}

uint64_t sub_21BD8EB40()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];
  v4 = v0[2];

  sub_21BD8E4BC(v4);

  if (v2)
  {
    v5 = v0[7];
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BD8ED70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = sub_21BE28D7C();
  v3[4] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD6D730, v5, v4);
}

uint64_t sub_21BD8EF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = sub_21BE28D7C();
  v3[5] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD6DA74, v5, v4);
}

id sub_21BD8F190()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HelpfulRemoteUiHostingVC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BD8F1F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BD8EF94(v2, v3, v4);
}

uint64_t sub_21BD8F2AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBB7EB8;

  return sub_21BD8ED70(v2, v3, v5);
}

uint64_t sub_21BD8F36C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BD8E9EC(v2, v3, v4);
}

uint64_t type metadata accessor for CheckListHostController()
{
  result = qword_27CDBC1F0;
  if (!qword_27CDBC1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_21BD8F4C4()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v2 setImage_];
  return v2;
}

uint64_t sub_21BD8F578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BD94874();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21BD8F5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BD94874();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21BD8F640()
{
  sub_21BD94874();
  sub_21BE277FC();
  __break(1u);
}

uint64_t sub_21BD8F680(uint64_t a1, void *a2)
{
  if ([v2 propertyForKey_])
  {
    sub_21BE294BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21BB3A4CC(v7, &qword_27CDB5940, &unk_21BE32B10);
    return 0;
  }
}

uint64_t sub_21BD8F74C()
{
  if ([v0 propertyForKey_])
  {
    sub_21BE294BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_21BBC8F58();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21BB3A4CC(v5, &qword_27CDB5940, &unk_21BE32B10);
    return 0;
  }
}

double sub_21BD8F81C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2766C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = [swift_unknownObjectRetain() cellType];
  v7 = v6 == 1 || v6 == 4;
  if (v7 || v6 == 13)
  {
    sub_21BD93FD0();
    sub_21BD94024();
    swift_unknownObjectRetain();
    sub_21BE2784C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC390, &unk_21BE4A3B0);
    sub_21BD93F44();
    sub_21BE2784C();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_21BE2765C();
    sub_21BE2764C();
    *&v9 = [a1 cellType];
    type metadata accessor for FASpecifierCellType(0);
    sub_21BE28A5C();
    sub_21BE2763C();

    sub_21BE2764C();
    sub_21BE2768C();
    sub_21BE27DAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC390, &unk_21BE4A3B0);
    sub_21BD93F44();
    sub_21BE2784C();
  }

  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  return result;
}

uint64_t sub_21BD8FAA0@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v24 = sub_21BE2721C();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC410, &qword_21BE4A520);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v26 = a2;
  *(v14 + 24) = a2;
  v27 = a1;
  v28 = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC418, &qword_21BE4A528);
  sub_21BB3B038(&qword_27CDBC420, &qword_27CDBC418, &qword_21BE4A528);
  sub_21BE2843C();
  sub_21BE2720C();
  sub_21BB3B038(&qword_27CDBC428, &qword_27CDBC410, &qword_21BE4A520);
  sub_21BD94264(&qword_27CDBC430, MEMORY[0x277CDDB18]);
  v16 = v24;
  v15 = v25;
  sub_21BE27ECC();
  (*(v5 + 8))(v8, v16);
  (*(v10 + 8))(v13, v9);
  KeyPath = swift_getKeyPath();
  v18 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC438, &qword_21BE4A560) + 36));
  *v18 = KeyPath;
  v18[1] = 0;
  LOBYTE(v5) = [a1 cellType] == 1;
  *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC440, &qword_21BE4A568) + 36)) = v5;
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v26;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC448, &qword_21BE4A5A0);
  v22 = (v15 + *(result + 36));
  *v22 = v19;
  v22[1] = sub_21BC0AE98;
  v22[2] = v20;
  return result;
}

void sub_21BD8FE2C(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = sub_21BE275CC();
  *(a3 + 8) = 0x4025000000000000;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC450, &qword_21BE4A5A8);
  sub_21BD8FE94(a1, a2, a3 + *(v6 + 44));
}

void sub_21BD8FE94(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC458, &qword_21BE4A5B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC460, &qword_21BE4A5B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v51 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v36[-v15];
  v40 = sub_21BD8F74C();
  sub_21BE2869C();
  sub_21BE26F2C();
  v49 = v86;
  v48 = v87;
  v47 = v88;
  v46 = v89;
  v44 = v91;
  v45 = v90;
  v17 = [a1 cellType];
  v37 = a2;
  if (v17 == 4)
  {
    v60 = sub_21BE2771C();
    v68 = 0;
    sub_21BD903B0(a1, &v62);
    v71 = v64;
    v72 = v65;
    v73 = v66;
    v74 = v67;
    v69 = v62;
    v70 = v63;
    v79 = v64;
    v80 = v65;
    v81 = v66;
    v82 = v67;
    v77 = v62;
    v78 = v63;
    sub_21BBA3854(&v69, &v61, &unk_27CDBC480, &unk_21BE4A5D8);
    sub_21BB3A4CC(&v77, &unk_27CDBC480, &unk_21BE4A5D8);
    v41 = v69;
    v58 = v70;
    v59 = *(&v69 + 1);
    v50 = *(&v70 + 1);
    v56 = v72;
    v57 = *(&v71 + 1);
    v55 = *(&v72 + 1);
    v53 = *(&v73 + 1);
    v54 = v73;
    v42 = *(&v74 + 1);
    v52 = v74;
    v43 = v71;
    v18 = 0x4000000000000000;
    v19 = v68;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v18 = 0;
    v41 = 0;
    v42 = 0;
    v57 = 0;
    v58 = 0;
    v50 = 0;
    v43 = 0;
    v55 = 0;
    v56 = 0;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    v19 = 0;
  }

  if ([a1 cellType] == 1)
  {
    *v10 = sub_21BE2771C();
    *(v10 + 1) = 0x4000000000000000;
    v10[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC478, &qword_21BE4A5D0);
    sub_21BD90800(a1, v37 & 1, &v10[*(v20 + 44)]);
    sub_21BBB7D84(v10, v16, &qword_27CDBC458, &qword_21BE4A5B0);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v7 + 56))(v16, v21, 1, v6);
  v22 = v51;
  sub_21BBA3854(v16, v51, &qword_27CDBC460, &qword_21BE4A5B8);
  v23 = v40;
  v24 = v49;
  *a3 = v40;
  *(a3 + 8) = v24;
  *(a3 + 16) = v48;
  *(a3 + 24) = v47;
  *(a3 + 32) = v46;
  v25 = v44;
  *(a3 + 40) = v45;
  *(a3 + 48) = v25;
  v49 = v16;
  *&v69 = v60;
  *(&v69 + 1) = v18;
  v38 = v19;
  v39 = v18;
  *&v70 = v19;
  v26 = v41;
  *(&v70 + 1) = v41;
  *&v71 = v59;
  v27 = v50;
  *(&v71 + 1) = v58;
  *&v72 = v50;
  v28 = v42;
  v29 = v43;
  *(&v72 + 1) = v43;
  *&v73 = v57;
  *(&v73 + 1) = v56;
  *&v74 = v55;
  *(&v74 + 1) = v54;
  *&v75 = v53;
  *(&v75 + 1) = v52;
  v76 = v42;
  *(a3 + 168) = v42;
  v30 = v73;
  *(a3 + 136) = v74;
  *(a3 + 120) = v30;
  v31 = v69;
  v32 = v70;
  v33 = v71;
  *(a3 + 104) = v72;
  *(a3 + 88) = v33;
  *(a3 + 72) = v32;
  *(a3 + 56) = v31;
  *(a3 + 152) = v75;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC468, &qword_21BE4A5C0);
  sub_21BBA3854(v22, a3 + *(v34 + 64), &qword_27CDBC460, &qword_21BE4A5B8);
  v35 = v23;
  sub_21BBA3854(&v69, &v77, &qword_27CDBC470, &qword_21BE4A5C8);
  sub_21BB3A4CC(v49, &qword_27CDBC460, &qword_21BE4A5B8);
  sub_21BB3A4CC(v22, &qword_27CDBC460, &qword_21BE4A5B8);
  *&v77 = v60;
  *(&v77 + 1) = v39;
  *&v78 = v38;
  *(&v78 + 1) = v26;
  *&v79 = v59;
  *(&v79 + 1) = v58;
  *&v80 = v27;
  *(&v80 + 1) = v29;
  *&v81 = v57;
  *(&v81 + 1) = v56;
  *&v82 = v55;
  *(&v82 + 1) = v54;
  v83 = v53;
  v84 = v52;
  v85 = v28;
  sub_21BB3A4CC(&v77, &qword_27CDBC470, &qword_21BE4A5C8);
}

uint64_t sub_21BD903B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = [a1 name];
  if (v2)
  {
    v3 = v2;
    sub_21BE28A0C();
  }

  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  sub_21BE27CDC();
  v9 = sub_21BE27D9C();
  v63 = v10;
  v64 = v9;
  v62 = v11;
  v65 = v12;

  sub_21BBC7C7C(v4, v6, v8 & 1);

  v14 = sub_21BD8F680(v13, MEMORY[0x277D3FFA8]);
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

LABEL_9:
    v61 = 0;
    v38 = 0;
    v58 = 0;
    v59 = 0;
    goto LABEL_10;
  }

  v17 = sub_21BE27DBC();
  v19 = v18;
  v21 = v20;
  sub_21BE27BEC();
  v22 = sub_21BE27D9C();
  v24 = v23;
  v26 = v25;

  sub_21BBC7C7C(v17, v19, v21 & 1);

  sub_21BE27C4C();
  v27 = sub_21BE27D3C();
  v29 = v28;
  v31 = v30;
  sub_21BBC7C7C(v22, v24, v26 & 1);

  sub_21BE2833C();
  v32 = sub_21BE27D4C();
  v34 = v33;
  LOBYTE(v24) = v35;
  v37 = v36;

  sub_21BBC7C7C(v27, v29, v31 & 1);

  v61 = v32;
  v38 = v34;
  v58 = v24 & 1;
  sub_21BBA4A38(v32, v34, v24 & 1);
  v59 = v37;

LABEL_10:
  sub_21BD8F680(v14, MEMORY[0x277D40160]);
  v39 = sub_21BE27DBC();
  v41 = v40;
  v43 = v42;
  sub_21BE27BEC();
  v44 = sub_21BE27D9C();
  v46 = v45;
  v48 = v47;

  sub_21BBC7C7C(v39, v41, v43 & 1);

  sub_21BE2833C();
  v49 = sub_21BE27D4C();
  v51 = v50;
  v55 = v50;
  v56 = v52;
  v57 = v53;

  sub_21BBC7C7C(v44, v46, v48 & 1);

  sub_21BBA4A38(v64, v63, v62 & 1);

  sub_21BC75900(v61, v38, v58, v59);
  sub_21BBA4A38(v49, v51, v56 & 1);

  sub_21BC75944(v61, v38, v58, v59);
  *a2 = v64;
  *(a2 + 8) = v63;
  *(a2 + 16) = v62 & 1;
  *(a2 + 24) = v65;
  *(a2 + 32) = v61;
  *(a2 + 40) = v38;
  *(a2 + 48) = v58;
  *(a2 + 56) = v59;
  *(a2 + 64) = v49;
  *(a2 + 72) = v55;
  *(a2 + 80) = v56 & 1;
  *(a2 + 88) = v57;
  sub_21BBC7C7C(v49, v55, v56 & 1);

  sub_21BC75944(v61, v38, v58, v59);
  sub_21BBC7C7C(v64, v63, v62 & 1);
}

uint64_t sub_21BD90800@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC490, &qword_21BE4A5E8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v81 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v74 - v9;
  *v10 = sub_21BE275DC();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC498, &qword_21BE4A5F0) + 44);
  v82 = v10;
  v12 = sub_21BD90CB8(a1, a2, &v10[v11]);
  v13 = sub_21BD8F680(v12, MEMORY[0x277D3FFA8]);
  if (v14)
  {
    v15 = v13;
    v16 = v14;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v18 = sub_21BD8F680(v13, MEMORY[0x277D3FFA8]);
      if (v19)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0;
      }

      v21 = 0xE000000000000000;
      if (v19)
      {
        v21 = v19;
      }

      v83 = v20;
      v84 = v21;
      sub_21BB41FA4();
      v22 = sub_21BE27DBC();
      v24 = v23;
      v26 = v25;
      sub_21BE27BEC();
      v27 = sub_21BE27D9C();
      v29 = v28;
      v31 = v30;

      sub_21BBC7C7C(v22, v24, v26 & 1);

      sub_21BE27C4C();
      v32 = sub_21BE27D3C();
      v34 = v33;
      v36 = v35;
      sub_21BBC7C7C(v27, v29, v31 & 1);

      sub_21BE2833C();
      v37 = sub_21BE27D4C();
      v39 = v38;
      LOBYTE(v29) = v40;
      v42 = v41;

      sub_21BBC7C7C(v32, v34, v36 & 1);

      v78 = v39;
      v79 = v37;
      v43 = v29 & 1;
      sub_21BBA4A38(v37, v39, v29 & 1);
      v77 = v42;
    }

    else
    {
      v78 = 0;
      v79 = 0;
      v43 = 0;
      v77 = 0;
    }
  }

  else
  {
    v78 = 0;
    v79 = 0;
    v77 = 1;
    v43 = 0;
  }

  v44 = sub_21BD8F680(v13, MEMORY[0x277D40160]);
  if (v45)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0;
  }

  v47 = 0xE000000000000000;
  if (v45)
  {
    v47 = v45;
  }

  v83 = v46;
  v84 = v47;
  sub_21BB41FA4();
  v48 = sub_21BE27DBC();
  v50 = v49;
  v52 = v51;
  sub_21BE27BEC();
  v53 = sub_21BE27D9C();
  v55 = v54;
  v57 = v56;

  sub_21BBC7C7C(v48, v50, v52 & 1);

  sub_21BE2833C();
  v58 = sub_21BE27D4C();
  v75 = v59;
  v76 = v60;
  v62 = v61;

  sub_21BBC7C7C(v53, v55, v57 & 1);

  v63 = v81;
  sub_21BBA3854(v82, v81, &qword_27CDBC490, &qword_21BE4A5E8);
  v64 = v80;
  sub_21BBA3854(v63, v80, &qword_27CDBC490, &qword_21BE4A5E8);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4A0, &qword_21BE4A5F8);
  v66 = (v64 + *(v65 + 48));
  v68 = v78;
  v67 = v79;
  *v66 = v79;
  v66[1] = v68;
  v69 = v77;
  v66[2] = v43;
  v66[3] = v69;
  v70 = v64 + *(v65 + 64);
  sub_21BD942AC(v67, v68, v43, v69);
  v62 &= 1u;
  v71 = v75;
  sub_21BBA4A38(v58, v75, v62);
  v72 = v76;

  sub_21BD942BC(v67, v68, v43, v69);
  *v70 = v58;
  *(v70 + 8) = v71;
  *(v70 + 16) = v62;
  *(v70 + 24) = v72;
  sub_21BB3A4CC(v82, &qword_27CDBC490, &qword_21BE4A5E8);
  sub_21BBC7C7C(v58, v71, v62);

  sub_21BD942BC(v67, v68, v43, v69);
  return sub_21BB3A4CC(v63, &qword_27CDBC490, &qword_21BE4A5E8);
}

uint64_t sub_21BD90CB8@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4A8, &qword_21BE4A600);
  v5 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v7 = &v51 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC4B0, &unk_21BE4A608);
  v8 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v10 = &v51 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92B0, &unk_21BE3EF80);
  v11 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4C0, &qword_21BE4A618);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v60 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - v18;
  v20 = [a1 name];
  if (v20)
  {
    v21 = v20;
    v22 = sub_21BE28A0C();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v61 = v22;
  v62 = v24;
  sub_21BB41FA4();
  v25 = sub_21BE27DBC();
  v27 = v26;
  v29 = v28;
  sub_21BE27CDC();
  v30 = sub_21BE27D9C();
  v54 = v31;
  v55 = v30;
  v53 = v32;
  v56 = v33;

  sub_21BBC7C7C(v25, v27, v29 & 1);

  if (v52)
  {
    sub_21BE26EEC();
    v34 = &v13[*(v58 + 36)];
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
    v36 = *MEMORY[0x277CDF438];
    v37 = sub_21BE26E7C();
    (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
    *v34 = swift_getKeyPath();
    sub_21BBA3854(v13, v10, &qword_27CDB92B0, &unk_21BE3EF80);
    swift_storeEnumTagMultiPayload();
    sub_21BD942CC();
    sub_21BD943B0();
    sub_21BE2784C();
    sub_21BB3A4CC(v13, &qword_27CDB92B0, &unk_21BE3EF80);
  }

  else
  {
    v61 = sub_21BE2837C();
    sub_21BE27C3C();
    sub_21BE27EAC();

    v38 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4C8, &unk_21BE4A620) + 36)];
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4D0, &qword_21BE425D8) + 28);
    v40 = *MEMORY[0x277CE1050];
    v41 = sub_21BE283BC();
    (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
    *v38 = swift_getKeyPath();
    v42 = sub_21BE2833C();
    KeyPath = swift_getKeyPath();
    v44 = &v7[*(v59 + 36)];
    *v44 = KeyPath;
    v44[1] = v42;
    sub_21BBA3854(v7, v10, &qword_27CDBC4A8, &qword_21BE4A600);
    swift_storeEnumTagMultiPayload();
    sub_21BD942CC();
    sub_21BD943B0();
    sub_21BE2784C();
    sub_21BB3A4CC(v7, &qword_27CDBC4A8, &qword_21BE4A600);
  }

  v45 = v60;
  sub_21BBA3854(v19, v60, &qword_27CDBC4C0, &qword_21BE4A618);
  v47 = v54;
  v46 = v55;
  *a3 = v55;
  *(a3 + 8) = v47;
  v48 = v53 & 1;
  *(a3 + 16) = v53 & 1;
  *(a3 + 24) = v56;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC528, &qword_21BE4A668);
  sub_21BBA3854(v45, a3 + *(v49 + 64), &qword_27CDBC4C0, &qword_21BE4A618);
  sub_21BBA4A38(v46, v47, v48);

  sub_21BB3A4CC(v19, &qword_27CDBC4C0, &qword_21BE4A618);
  sub_21BB3A4CC(v45, &qword_27CDBC4C0, &qword_21BE4A618);
  sub_21BBC7C7C(v46, v47, v48);
}

uint64_t sub_21BD91270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC3C8, &qword_21BE4A4C8);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  sub_21BE2869C();
  sub_21BE26F2C();
  v22 = v27;
  v23 = v25;
  v20 = v30;
  v21 = v29;
  v33 = 1;
  v32 = v26;
  v31 = v28;
  *(swift_allocObject() + 16) = a1;
  v24 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC3D0, &qword_21BE4A4D0);
  sub_21BD94164();
  sub_21BE2843C();
  LOBYTE(a1) = v33;
  v12 = v32;
  v13 = v31;
  v14 = v5[2];
  v14(v9, v11, v4);
  *a2 = 0;
  *(a2 + 8) = a1;
  v15 = v22;
  *(a2 + 16) = v23;
  *(a2 + 24) = v12;
  *(a2 + 32) = v15;
  *(a2 + 40) = v13;
  v16 = v20;
  *(a2 + 48) = v21;
  *(a2 + 56) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC400, &qword_21BE4A4E8);
  v14((a2 + *(v17 + 48)), v9, v4);
  v18 = v5[1];
  v18(v11, v4);
  return (v18)(v9, v4);
}

uint64_t sub_21BD914E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE275DC();
  sub_21BD91594(a1, v13);
  v5 = v13[0];
  v6 = v13[1];
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v10 = v17;
  LOBYTE(v13[0]) = 1;
  v19 = v14;
  v18 = v17;
  v11 = sub_21BE27CDC();
  result = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  *(a2 + 72) = result;
  *(a2 + 80) = v11;
  return result;
}

uint64_t sub_21BD91594@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 name];
  if (v3)
  {
    v4 = v3;
    sub_21BE28A0C();
  }

  sub_21BB41FA4();
  v5 = sub_21BE27DBC();
  v7 = v6;
  *a2 = v5;
  *(a2 + 8) = v6;
  v9 = v8 & 1;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_21BBA4A38(v5, v6, v8 & 1);

  sub_21BBC7C7C(v5, v7, v9);
}

uint64_t sub_21BD9166C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_21BE275DC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC3C0, &qword_21BE4A4C0);
  return sub_21BD91270(v3, a1 + *(v4 + 44));
}

uint64_t sub_21BD916C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v33 = sub_21BE2791C();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC200, &qword_21BE4A198);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC208, &qword_21BE4A1A0);
  v12 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC210, &qword_21BE4A1A8);
  v35 = *(v15 - 8);
  v36 = v15;
  v16 = *(v35 + 64);
  MEMORY[0x28223BE20](v15);
  v32 = &v30 - v17;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC218, &qword_21BE4A1B0);
  v18 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v20 = &v30 - v19;
  v38 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC220, &qword_21BE4A1B8);
  sub_21BD93324(&qword_27CDBC228, &qword_27CDBC220, &qword_21BE4A1B8, sub_21BD92F20);
  sub_21BE27D1C();
  sub_21BE2790C();
  sub_21BB3B038(&qword_27CDBC310, &qword_27CDBC200, &qword_21BE4A198);
  v21 = v33;
  sub_21BE2820C();
  (*(v3 + 8))(v6, v21);
  (*(v8 + 8))(v11, v7);
  v22 = sub_21BE276FC();
  v23 = &v14[*(v31 + 36)];
  *v23 = v22;
  v23[1] = sub_21BD4A688;
  v23[2] = 0;
  sub_21BE27B6C();
  v24 = [objc_opt_self() currentDevice];
  [v24 userInterfaceIdiom];

  v25 = v32;
  sub_21BD93620();
  sub_21BE27F0C();
  sub_21BB3A4CC(v14, &qword_27CDBC208, &qword_21BE4A1A0);
  if (qword_280BD7FD8 != -1)
  {
    swift_once();
  }

  v26 = qword_280BD7FE0;
  type metadata accessor for FamilyNetworkMonitor();
  sub_21BD94264(&qword_27CDBC320, type metadata accessor for FamilyNetworkMonitor);
  v27 = sub_21BE26BFC();
  (*(v35 + 32))(v20, v25, v36);
  v28 = &v20[*(v34 + 36)];
  *v28 = v27;
  v28[1] = v26;
  sub_21BBB7D84(v20, v37, &qword_27CDBC218, &qword_21BE4A1B0);
}

uint64_t sub_21BD91BE4(uint64_t a1)
{
  v14 = *a1;
  v2 = sub_21BD93894(v14);
  v3 = sub_21BC2B75C(v2);

  v11 = v3;
  swift_getKeyPath();
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = v4;
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21BD93AC4;
  *(v8 + 24) = v6;
  sub_21BBA3854(&v14, v10, &unk_27CDBC328, &unk_21BE4A238);
  sub_21BBC7C94(&v13, v10);

  sub_21BBA3854(&v12, v10, &qword_27CDB7AB0, &qword_21BE39110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC338, &qword_21BE4A248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC238, &qword_21BE4A1C0);
  sub_21BB3B038(&qword_27CDBC340, &qword_27CDBC338, &qword_21BE4A248);
  sub_21BD92F20();
  return sub_21BE285BC();
}

uint64_t sub_21BD91DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v66 = a5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2E8, &qword_21BE4A200);
  v9 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v11 = v58 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC348, &qword_21BE4A250);
  v12 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v64 = v58 - v13;
  v14 = sub_21BE2762C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v61 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC278, &qword_21BE4A1E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v58 - v20);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC248, &qword_21BE4A1C8);
  v22 = *(*(v62 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v62);
  v25 = v58 - v24;
  if (a1)
  {
    MEMORY[0x28223BE20](v23);
    v58[-4] = a2;
    v58[-3] = a3;
    v58[-2] = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2B0, &qword_21BE4A1F8);
    sub_21BD93324(&qword_27CDBC2A8, &qword_27CDBC2B0, &qword_21BE4A1F8, sub_21BD933A0);
    sub_21BE2860C();
    v26 = v61;
    sub_21BE2761C();
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2F8, &qword_21BE4A208) + 36);
    (*(v15 + 16))(&v11[v27], v26, v14);
    v28 = *(v15 + 56);
    v28(&v11[v27], 0, 1, v14);
    KeyPath = swift_getKeyPath();
    v30 = &v11[*(v65 + 36)];
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB020, &qword_21BE4F0A0) + 28);
    (*(v15 + 32))(v30 + v31, v26, v14);
    v28(v30 + v31, 0, 1, v14);
    *v30 = KeyPath;
    sub_21BBA3854(v11, v64, &qword_27CDBC2E8, &qword_21BE4A200);
    swift_storeEnumTagMultiPayload();
    sub_21BD92FAC();
    sub_21BD933F4();
    sub_21BE2784C();
    v32 = v11;
    v33 = &qword_27CDBC2E8;
    v34 = &qword_21BE4A200;
  }

  else
  {
    type metadata accessor for FamilyNetworkMonitor();
    sub_21BD94264(&qword_27CDBC320, type metadata accessor for FamilyNetworkMonitor);
    v35 = sub_21BE2727C();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC288, &unk_21BE4A1E8) + 36);
    v59 = a3;
    v60 = a4;
    v39 = (v21 + v38);
    v40 = a2;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660) + 28);
    v42 = sub_21BE27D7C();
    (*(*(v42 - 8) + 56))(v39 + v41, 1, 1, v42);
    *v39 = swift_getKeyPath();
    *v21 = v35;
    v21[1] = v37;
    LOBYTE(v35) = sub_21BE27B9C();
    v43 = sub_21BE26E0C();
    v58[1] = v58;
    v44 = v21 + *(v18 + 36);
    *v44 = v35;
    *(v44 + 1) = v45;
    *(v44 + 2) = v46;
    *(v44 + 3) = v47;
    *(v44 + 4) = v48;
    v44[40] = 0;
    MEMORY[0x28223BE20](v43);
    v50 = v59;
    v49 = v60;
    v58[-4] = v40;
    v58[-3] = v50;
    v58[-2] = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2B0, &qword_21BE4A1F8);
    sub_21BD931E0();
    sub_21BD93324(&qword_27CDBC2A8, &qword_27CDBC2B0, &qword_21BE4A1F8, sub_21BD933A0);
    sub_21BE285EC();
    v51 = v61;
    sub_21BE2761C();
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC258, &qword_21BE4A1D0) + 36);
    (*(v15 + 16))(&v25[v52], v51, v14);
    v53 = *(v15 + 56);
    v53(&v25[v52], 0, 1, v14);
    v54 = swift_getKeyPath();
    v55 = &v25[*(v62 + 36)];
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB020, &qword_21BE4F0A0) + 28);
    (*(v15 + 32))(v55 + v56, v51, v14);
    v53(v55 + v56, 0, 1, v14);
    *v55 = v54;
    sub_21BBA3854(v25, v64, &qword_27CDBC248, &qword_21BE4A1C8);
    swift_storeEnumTagMultiPayload();
    sub_21BD92FAC();
    sub_21BD933F4();
    sub_21BE2784C();
    v32 = v25;
    v33 = &qword_27CDBC248;
    v34 = &qword_21BE4A1C8;
  }

  return sub_21BB3A4CC(v32, v33, v34);
}

uint64_t sub_21BD924D8(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = sub_21BC2B938(a2);
  swift_getKeyPath();
  v8 = *a3;
  v17 = a3[1];
  v18 = v8;
  v9 = a3[2];
  v16 = *(a3 + 3);
  v10 = swift_allocObject();
  v11 = *(a3 + 1);
  *(v10 + 16) = *a3;
  *(v10 + 32) = v11;
  *(v10 + 48) = a3[4];
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = v10;
  sub_21BBA3854(&v18, v14, &unk_27CDBC328, &unk_21BE4A238);
  sub_21BBC7C94(&v17, v14);

  sub_21BBA3854(&v16, v14, &qword_27CDB7AB0, &qword_21BE39110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC350, &qword_21BE4A2D8);
  sub_21BB3B038(&qword_27CDBC358, &qword_27CDBC350, &qword_21BE4A2D8);
  sub_21BD933A0();
  return sub_21BE285BC();
}

uint64_t sub_21BD92668@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_21BD916C4(a1);
}

id sub_21BD926A4(uint64_t a1)
{
  v1 = *(a1 + qword_27CDBC1E0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC370, &qword_21BE4A2F0);
  v2 = sub_21BE28C1C();

  return v2;
}

void sub_21BD92714(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC370, &qword_21BE4A2F0);
  v2 = sub_21BE28C3C();
  v3 = a1;
  sub_21BD92790(v2);
}

uint64_t sub_21BD92790(uint64_t a1)
{
  v2 = qword_27CDBC1E0;
  v3 = *&v1[qword_27CDBC1E0];
  *&v1[qword_27CDBC1E0] = a1;

  v4 = *&v1[v2];
  sub_21BE28D7C();

  v5 = v1;
  v6 = sub_21BE28D6C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  v9 = v5;
  v10 = sub_21BE28D6C();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v8;
  v11[4] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
  sub_21BE2857C();
  return sub_21BE2775C();
}

id sub_21BD928D4(uint64_t a1)
{
  if (*(a1 + qword_27CDBC1E8 + 8))
  {
    v1 = *(a1 + qword_27CDBC1E8);
    v2 = *(a1 + qword_27CDBC1E8 + 8);

    v3 = sub_21BE289CC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_21BD92944(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_21BE28A0C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  sub_21BD929C4(v4, v6);
}

uint64_t sub_21BD929C4(uint64_t a1, uint64_t a2)
{
  v3 = &v2[qword_27CDBC1E8];
  v4 = *&v2[qword_27CDBC1E8 + 8];
  *v3 = a1;
  *(v3 + 1) = a2;

  v5 = *&v2[qword_27CDBC1E0];
  sub_21BE28D7C();

  v6 = v2;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  v10 = v6;
  v11 = sub_21BE28D6C();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v9;
  v12[4] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
  sub_21BE2857C();
  return sub_21BE2775C();
}

char *sub_21BD92B14(uint64_t a1)
{
  v2 = (v1 + qword_27CDBC1E8);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + qword_27CDBC1E0) = a1;
  sub_21BE28D7C();

  v3 = sub_21BE28D6C();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  v6 = sub_21BE28D6C();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
  sub_21BE2857C();
  v8 = sub_21BE2774C();
  [v8 setEdgesForExtendedLayout_];
  v9 = *&v8[qword_27CDBC1E0];
  v10 = v8;

  v11 = sub_21BE28D6C();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v5;
  v12[4] = v10;
  v13 = v10;
  v14 = sub_21BE28D6C();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v5;
  v15[4] = v13;
  sub_21BE2857C();
  sub_21BE2775C();

  return v13;
}

void sub_21BD92D4C(uint64_t a1)
{
  v1 = (a1 + qword_27CDBC1E8);
  *v1 = 0;
  v1[1] = 0;
  sub_21BE2978C();
  __break(1u);
}

uint64_t sub_21BD92DB8()
{
  v1 = *(v0 + qword_27CDBC1E0);

  v2 = *(v0 + qword_27CDBC1E8 + 8);
}

id sub_21BD92DFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CheckListHostController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BD92E34(uint64_t a1)
{
  v2 = *(a1 + qword_27CDBC1E0);

  v3 = *(a1 + qword_27CDBC1E8 + 8);
}

unint64_t sub_21BD92F20()
{
  result = qword_27CDBC230;
  if (!qword_27CDBC230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC238, &qword_21BE4A1C0);
    sub_21BD92FAC();
    sub_21BD933F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC230);
  }

  return result;
}

unint64_t sub_21BD92FAC()
{
  result = qword_27CDBC240;
  if (!qword_27CDBC240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC248, &qword_21BE4A1C8);
    sub_21BD93064();
    sub_21BB3B038(&unk_27CDBC2D0, &qword_27CDBB020, &qword_21BE4F0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC240);
  }

  return result;
}

unint64_t sub_21BD93064()
{
  result = qword_27CDBC250;
  if (!qword_27CDBC250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC258, &qword_21BE4A1D0);
    sub_21BD9311C();
    sub_21BB3B038(&unk_27CDBC2C0, &qword_27CDBB040, &qword_21BE45FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC250);
  }

  return result;
}

unint64_t sub_21BD9311C()
{
  result = qword_27CDBC260;
  if (!qword_27CDBC260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC268, &qword_21BE4A1D8);
    sub_21BD931E0();
    sub_21BD93324(&qword_27CDBC2A8, &qword_27CDBC2B0, &qword_21BE4A1F8, sub_21BD933A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC260);
  }

  return result;
}

unint64_t sub_21BD931E0()
{
  result = qword_27CDBC270;
  if (!qword_27CDBC270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC278, &qword_21BE4A1E0);
    sub_21BD9326C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC270);
  }

  return result;
}

unint64_t sub_21BD9326C()
{
  result = qword_27CDBC280;
  if (!qword_27CDBC280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC288, &unk_21BE4A1E8);
    sub_21BD4B3D8();
    sub_21BB3B038(&qword_27CDB6D70, &qword_27CDBC2A0, &qword_21BE33660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC280);
  }

  return result;
}

uint64_t sub_21BD93324(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD933A0()
{
  result = qword_27CDBC2B8;
  if (!qword_27CDBC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC2B8);
  }

  return result;
}

unint64_t sub_21BD933F4()
{
  result = qword_27CDBC2E0;
  if (!qword_27CDBC2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC2E8, &qword_21BE4A200);
    sub_21BD934AC();
    sub_21BB3B038(&unk_27CDBC2D0, &qword_27CDBB020, &qword_21BE4F0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC2E0);
  }

  return result;
}

unint64_t sub_21BD934AC()
{
  result = qword_27CDBC2F0;
  if (!qword_27CDBC2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC2F8, &qword_21BE4A208);
    sub_21BD93564();
    sub_21BB3B038(&unk_27CDBC2C0, &qword_27CDBB040, &qword_21BE45FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC2F0);
  }

  return result;
}

unint64_t sub_21BD93564()
{
  result = qword_27CDBC300;
  if (!qword_27CDBC300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC308, &qword_21BE4A210);
    sub_21BD93324(&qword_27CDBC2A8, &qword_27CDBC2B0, &qword_21BE4A1F8, sub_21BD933A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC300);
  }

  return result;
}

unint64_t sub_21BD93620()
{
  result = qword_27CDBC318;
  if (!qword_27CDBC318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC208, &qword_21BE4A1A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC200, &qword_21BE4A198);
    sub_21BE2791C();
    sub_21BB3B038(&qword_27CDBC310, &qword_27CDBC200, &qword_21BE4A198);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC318);
  }

  return result;
}

uint64_t sub_21BD93760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC368, &qword_21BE4A2E8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21BBA3854(a1, &v6 - v4, &qword_27CDBC368, &qword_21BE4A2E8);
  return sub_21BE274CC();
}

uint64_t sub_21BD9381C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21BE2951C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_21BD93894(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_31:
    v3 = sub_21BE2951C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    while (2)
    {
      for (i = v5; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x21CF047C0](i, a1);
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (i >= *(v2 + 16))
          {
            goto LABEL_30;
          }

          v7 = *(a1 + 8 * i + 32);
          swift_unknownObjectRetain();
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        v8 = *(v4 + 2);
        if (![v7 cellType])
        {
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_21BBBD93C(0, *(v4 + 2) + 1, 1, v4);
          }

          v10 = *(v4 + 2);
          v9 = *(v4 + 3);
          if (v10 >= v9 >> 1)
          {
            v4 = sub_21BBBD93C((v9 > 1), v10 + 1, 1, v4);
          }

          swift_unknownObjectRelease();
          *(v4 + 2) = v10 + 1;
          v11 = &v4[16 * v10];
          *(v11 + 4) = v7;
          *(v11 + 5) = MEMORY[0x277D84F90];
          goto LABEL_27;
        }

        if (v8)
        {
          break;
        }

        swift_unknownObjectRelease();
        if (v5 == v3)
        {
          return v4;
        }
      }

      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21BD93880(v4);
        v4 = result;
      }

      if (v8 > *(v4 + 2))
      {
        __break(1u);
        return result;
      }

      v13 = &v4[16 * v8 + 16];
      MEMORY[0x21CF03DB0]();
      if (*((*(v13 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v13 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((*(v13 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21BE28C5C();
      }

      sub_21BE28C8C();
      swift_unknownObjectRelease();
LABEL_27:
      if (v5 != v3)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

uint64_t sub_21BD93ACC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2]);
}

uint64_t objectdestroyTm_32()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_21BD93C40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v7 & 1;
  return result;
}

void *sub_21BD93C80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [a1 identifier];
  if (v10)
  {
    v11 = v10;
    v12 = sub_21BE28A0C();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC360, &qword_21BE4A2E0);
  MEMORY[0x21CF036E0](&v17, v15);
  if (v14)
  {
    if (v18)
    {
      if (v12 == v17 && v14 == v18)
      {
      }

      else
      {
        sub_21BE2995C();
      }
    }
  }

  else if (!v18)
  {
    return a1;
  }

  return a1;
}

uint64_t sub_21BD93DB8@<X0>(void *a1@<X8>)
{
  v2 = (*(v1 + 32) + qword_27CDBC1E8);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t sub_21BD93DD4(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  v4 = a1[1];

  return sub_21BD929C4(v3, v4);
}

unint64_t sub_21BD93E34()
{
  result = qword_27CDBC378;
  if (!qword_27CDBC378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC218, &qword_21BE4A1B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC208, &qword_21BE4A1A0);
    sub_21BD93620();
    swift_getOpaqueTypeConformance2();
    sub_21BB3B038(&unk_27CDBC380, &qword_27CDB6DB8, &qword_21BE360A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC378);
  }

  return result;
}

unint64_t sub_21BD93F44()
{
  result = qword_27CDBC398;
  if (!qword_27CDBC398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC390, &unk_21BE4A3B0);
    sub_21BD93FD0();
    sub_21BD94024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC398);
  }

  return result;
}

unint64_t sub_21BD93FD0()
{
  result = qword_27CDBC3A0;
  if (!qword_27CDBC3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC3A0);
  }

  return result;
}

unint64_t sub_21BD94024()
{
  result = qword_27CDBC3A8;
  if (!qword_27CDBC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC3A8);
  }

  return result;
}

unint64_t sub_21BD94098()
{
  result = qword_27CDBC3B0;
  if (!qword_27CDBC3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC3B8, &qword_21BE4A418);
    sub_21BD93F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC3B0);
  }

  return result;
}

unint64_t sub_21BD94164()
{
  result = qword_27CDBC3D8;
  if (!qword_27CDBC3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC3D0, &qword_21BE4A4D0);
    sub_21BB3B038(&qword_27CDBC3E0, &qword_27CDBC3E8, &unk_21BE4A4D8);
    sub_21BB3B038(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC3D8);
  }

  return result;
}

uint64_t sub_21BD94264(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BD942AC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_21BC75900(result, a2, a3, a4);
  }

  return result;
}