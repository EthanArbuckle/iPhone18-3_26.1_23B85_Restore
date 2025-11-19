uint64_t sub_24E308838(char *a1, char *a2, char *a3, char *a4)
{
  v63 = sub_24E343368();
  MEMORY[0x28223BE20](v63);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  MEMORY[0x28223BE20](v12);
  v59 = &v56 - v13;
  MEMORY[0x28223BE20](v14);
  i = (&v56 - v15);
  v16 = (a2 - a1) / 8;
  v62 = (v17 + 8);
  v18 = (a3 - a2) / 8;
  if (v16 < v18)
  {
    sub_24E130EB0(a1, (a2 - a1) / 8, a4);
    v19 = &a4[8 * v16];
    v20 = &selRef_setRequiresValidation_;
    v64 = v19;
    v65 = a3;
    while (1)
    {
      if (a4 >= v19 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_31;
      }

      v22 = a1;
      v66 = a2;
      v23 = *a2;
      v24 = *a4;
      v25 = v23;
      v26 = v24;
      result = [v25 v20[459]];
      if (!result)
      {
        __break(1u);
        goto LABEL_39;
      }

      v28 = result;
      v29 = a4;
      v30 = i;
      sub_24E343328();

      result = [v26 v20[459]];
      if (!result)
      {
        goto LABEL_40;
      }

      v31 = result;
      v32 = v59;
      sub_24E343328();

      LOBYTE(v31) = sub_24E3432F8();
      v33 = *v62;
      v34 = v32;
      v35 = v63;
      (*v62)(v34, v63);
      v33(v30, v35);

      if ((v31 & 1) == 0)
      {
        break;
      }

      v36 = v66;
      a2 = v66 + 8;
      v37 = v22;
      if (v22 != v66)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 = v37 + 8;
      v19 = v64;
      a3 = v65;
      v20 = &selRef_setRequiresValidation_;
    }

    v36 = a4;
    a4 += 8;
    v37 = v22;
    a2 = v66;
    if (v22 == v29)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v37 = *v36;
    goto LABEL_14;
  }

  sub_24E130EB0(a2, (a3 - a2) / 8, a4);
  v19 = &a4[8 * v18];
  v38 = &selRef_setRequiresValidation_;
  v57 = a4;
  v58 = a1;
LABEL_16:
  v39 = (a2 - 8);
  v40 = (a3 - 8);
  v66 = a2;
  for (i = (a2 - 8); v19 > a4 && a2 > a1; v39 = i)
  {
    v65 = v40;
    v42 = v19 - 8;
    v43 = *v39;
    v44 = *(v19 - 1);
    v45 = v43;
    result = [v44 v38[459]];
    if (!result)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v46 = result;
    v64 = v19;
    sub_24E343328();

    result = [v45 v38[459]];
    if (!result)
    {
      goto LABEL_41;
    }

    v47 = result;
    v48 = v60;
    sub_24E343328();

    LOBYTE(v47) = sub_24E3432F8();
    v49 = *v62;
    v50 = v48;
    v51 = v63;
    (*v62)(v50, v63);
    v49(v11, v51);

    if (v47)
    {
      v19 = v64;
      a3 = v65;
      v53 = i;
      a2 = i;
      a4 = v57;
      a1 = v58;
      v38 = &selRef_setRequiresValidation_;
      if (v65 + 1 != v66)
      {
        *v65 = *i;
        a2 = v53;
      }

      goto LABEL_16;
    }

    v52 = v65;
    a4 = v57;
    if (v64 != (v65 + 1))
    {
      *v65 = *v42;
    }

    v40 = v52 - 1;
    v19 = v42;
    a2 = v66;
    a1 = v58;
    v38 = &selRef_setRequiresValidation_;
  }

LABEL_31:
  v54 = (v19 - a4) / 8;
  if (a2 != a4 || a2 >= &a4[8 * v54])
  {
    memmove(a2, a4, 8 * v54);
  }

  return 1;
}

uint64_t sub_24E308C98()
{
  OUTLINED_FUNCTION_9_7();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E308D28;

  return sub_24E305F1C(v2);
}

uint64_t sub_24E308D28()
{
  OUTLINED_FUNCTION_9_7();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_24E308E54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_24E308EB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E308F24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24E308F84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_134()
{

  return swift_once();
}

void OUTLINED_FUNCTION_19_34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_24E309064(uint64_t a1, uint64_t a2)
{
  v3 = sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = *(a2 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_nicknamePresenter);
  if (!v12)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24E367D20;
  v14 = v12;
  v15 = sub_24E32D004();
  sub_24E343398();
  (*(v5 + 16))(v8, v11, v3);
  v16 = type metadata accessor for NicknameFieldData();
  *(v13 + 56) = v16;
  *(v13 + 64) = sub_24E309DB8(&qword_27F1EA578, type metadata accessor for NicknameFieldData);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
  sub_24E309DB8(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v5 + 8))(v11, v3);
  boxed_opaque_existential_1[11] = 0;
  *(boxed_opaque_existential_1 + 9) = 0u;
  *(boxed_opaque_existential_1 + 7) = 0u;
  v18 = *(v16 + 32);
  v19 = sub_24E3474B8();
  OUTLINED_FUNCTION_4_12(boxed_opaque_existential_1 + v18, v20, v21, v19);
  boxed_opaque_existential_1[5] = v14;
  *(boxed_opaque_existential_1 + 48) = v15 & 1;

  return v13;
}

uint64_t sub_24E3092D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v123 = a1;
  v127 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE70);
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  v124 = &v114 - v4;
  v5 = OUTLINED_FUNCTION_18_1();
  v126 = type metadata accessor for FooterData(v5);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v125 = (v8 - v7);
  OUTLINED_FUNCTION_18_1();
  v9 = sub_24E347458();
  v10 = OUTLINED_FUNCTION_4_5(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v121 = v12 - v11;
  OUTLINED_FUNCTION_18_1();
  v13 = sub_24E347478();
  v14 = OUTLINED_FUNCTION_4_5(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v120 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v18 = OUTLINED_FUNCTION_4_5(v17);
  MEMORY[0x28223BE20](v18);
  v122 = &v114 - v19;
  OUTLINED_FUNCTION_18_1();
  v119 = sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_1();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF050);
  v27 = OUTLINED_FUNCTION_4_5(v26);
  MEMORY[0x28223BE20](v27);
  v129 = &v114 - v28;
  v29 = OUTLINED_FUNCTION_18_1();
  v30 = type metadata accessor for TitleHeaderView.Style(v29);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_1();
  v34 = v33 - v32;
  v35 = type metadata accessor for HeaderData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_1();
  v39 = v38 - v37;
  sub_24E09984C();
  v40 = v30[5];
  v41 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_4_12(v34 + v40, v42, v43, v41);
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for PlayerCardTheme();
  v45 = *(__swift_project_value_buffer(v44, qword_27F20BF00) + *(v44 + 40));
  v46 = v30[8];
  *(v34 + v30[6]) = 0;
  *(v34 + v30[7]) = 0;
  *(v34 + v46) = 0;
  *(v34 + v30[9]) = 0;
  *(v34 + v30[11]) = 0;
  *(v34 + v30[13]) = v45;
  *(v34 + v30[10]) = 1;
  *(v34 + v30[12]) = 1;
  v47 = v45;
  v48 = sub_24E347CB8();
  v49 = GKGameCenterUIFrameworkBundle();
  v50 = GKGetLocalizedStringFromTableInBundle();

  v116 = sub_24E347CF8();
  v128 = v51;

  memset(v138, 0, sizeof(v138));
  v136 = 0u;
  v137 = 0u;
  v139 = -1;
  memset(v134, 0, sizeof(v134));
  v135 = -1;
  v52 = sub_24E3444F8();
  memset(v132, 0, sizeof(v132));
  v133 = 0;
  OUTLINED_FUNCTION_4_12(v129, v53, v54, v52);
  sub_24E343398();
  v55 = sub_24E343378();
  v117 = v56;
  (*(v21 + 8))(v25, v119);
  v57 = v39 + v35[7];
  *(v57 + 32) = 0u;
  *(v57 + 48) = 0u;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  *(v57 + 64) = -1;
  v58 = v39 + v35[9];
  *(v58 + 32) = 0u;
  *(v58 + 48) = 0u;
  *v58 = 0u;
  *(v58 + 16) = 0u;
  *(v58 + 64) = -1;
  v59 = (v39 + v35[10]);
  v60 = v39 + v35[11];
  *(v60 + 32) = 0;
  *v60 = 0u;
  *(v60 + 16) = 0u;
  v61 = v35[13];
  v115 = v35[12];
  v62 = v39 + v61;
  *(v62 + 32) = 0;
  *v62 = 0u;
  *(v62 + 16) = 0u;
  v63 = v39;
  v64 = v35;
  v65 = v35[14];
  v119 = v65;
  v118 = sub_24E3474B8();
  OUTLINED_FUNCTION_4_12(v63 + v65, v66, v67, v118);
  v130 = v55;
  v131 = v117;
  sub_24E348918();
  v68 = v64[5];
  v117 = type metadata accessor for TitleHeaderView.Style;
  sub_24DFAE760(v34, v63 + v68, type metadata accessor for TitleHeaderView.Style);
  v69 = (v63 + v64[6]);
  v70 = v116;
  v71 = v128;
  *v69 = v116;
  v69[1] = v71;

  sub_24DFAE710(&v136, v57, &qword_27F1DEE88);
  v72 = (v63 + v64[8]);
  *v72 = 0;
  v72[1] = 0;
  v73 = v64;
  v74 = v63;
  sub_24DFAE710(v134, v58, &qword_27F1DEE88);
  *(v63 + v115) = 0;
  *v59 = 0;
  v59[1] = 0;
  sub_24DFAE710(v132, v60, &qword_27F1DEE90);
  v75 = v129;
  sub_24DFAE87C(v129, v63 + v73[17], &qword_27F1DF050);
  v76 = v63 + v73[16];
  *v76 = 0;
  *(v76 + 8) = 0;
  *(v63 + v73[15]) = xmmword_24E3699A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369E30;
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  *(inited + 48) = 0x666C656873;
  *(inited + 56) = 0xE500000000000000;
  v78 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = 0x6973736572706D69;
  v79 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v79;
  *(inited + 128) = 0x657079546469;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x636974617473;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v78;
  *(inited + 176) = 1701667182;
  *(inited + 216) = v78;
  *(inited + 184) = 0xE400000000000000;
  *(inited + 192) = v70;
  *(inited + 200) = v128;
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v80 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v80);
  v81 = v122;
  sub_24E347488();
  sub_24DF8BFF4(v75, &qword_27F1DF050);
  sub_24DF8BFF4(v132, &qword_27F1DEE90);
  sub_24DF8BFF4(v134, &qword_27F1DEE88);
  sub_24DF8BFF4(&v136, &qword_27F1DEE88);
  sub_24DFAE7C0(v34, v117);
  __swift_storeEnumTagSinglePayload(v81, 0, 1, v118);
  sub_24DF8BEB4(v81, v74 + v119);
  v82 = *(v123 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_nicknamePresenter);
  if (v82 && (v83 = (v82 + OBJC_IVAR____TtC12GameCenterUI17NicknamePresenter_localizedUpdateError), (v84 = v83[1]) != 0))
  {
    v85 = *v83;
    *&v138[0] = 0;
    v136 = 0u;
    v137 = 0u;
    *(v138 + 8) = xmmword_24E36CD50;
    BYTE8(v138[1]) = 0;
    v86 = type metadata accessor for FooterData.Attachment(0);
    v87 = v124;
    OUTLINED_FUNCTION_4_12(v124, v88, v89, v86);
    v90 = v125;
    *v125 = v85;
    *(v90 + 8) = v84;
    sub_24DF8BBD0(&v136, v90 + 24);
    v91 = v126;
    sub_24DFAE87C(v87, v90 + *(v126 + 28), &qword_27F1DEE70);
    v92 = objc_opt_self();

    v93 = [v92 labelColor];
    sub_24DF8BFF4(v87, &qword_27F1DEE70);
    sub_24DF8BC2C(&v136);
    *(v90 + 16) = v93;
  }

  else
  {
    v94 = sub_24E347CB8();
    v95 = GKGameCenterUIFrameworkBundle();
    v96 = GKGetLocalizedStringFromTableInBundle();

    v97 = sub_24E347CF8();
    v99 = v98;

    v100 = type metadata accessor for FooterData.Attachment(0);
    v101 = v124;
    OUTLINED_FUNCTION_4_12(v124, v102, v103, v100);
    v137 = 0u;
    memset(v138, 0, 25);
    v136 = 0u;
    v90 = v125;
    *v125 = v97;
    *(v90 + 8) = v99;
    sub_24DF8BBD0(&v136, v90 + 24);
    v91 = v126;
    sub_24DFAE87C(v101, v90 + *(v126 + 28), &qword_27F1DEE70);
    v104 = [objc_opt_self() labelColor];
    sub_24DF8BC2C(&v136);
    sub_24DF8BFF4(v101, &qword_27F1DEE70);
    *(v90 + 16) = v104;
  }

  v105 = v127;
  sub_24DFAE760(v74, v127, type metadata accessor for HeaderData);
  __swift_storeEnumTagSinglePayload(v105, 0, 1, v73);
  v106 = type metadata accessor for Shelf.Presentation(0);
  v107 = v106[5];
  sub_24E010BEC(v90, v105 + v107);
  __swift_storeEnumTagSinglePayload(v105 + v107, 0, 1, v91);
  v108 = v105 + v106[11];
  *v108 = 0u;
  *(v108 + 16) = 0u;
  *(v108 + 32) = 1;
  v109 = v105 + v106[12];
  *v109 = 0;
  *(v109 + 8) = 1;
  v110 = (v105 + v106[13]);
  v111 = (v105 + v106[14]);
  v112 = (v105 + v106[15]);
  *(v105 + v106[6]) = 1;
  *v110 = 0;
  v110[1] = 0;
  *v111 = 0;
  v111[1] = 0;
  *v112 = 0;
  v112[1] = 0;
  *(v105 + v106[7]) = 1;
  *(v105 + v106[8]) = 1;
  *(v105 + v106[9]) = 1;
  *(v105 + v106[10]) = 0;
  return sub_24DFAE7C0(v74, type metadata accessor for HeaderData);
}

uint64_t sub_24E309DB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E309E14()
{
  result = qword_27F1E5D40;
  if (!qword_27F1E5D40)
  {
    type metadata accessor for DashboardLeaderboardsChicletAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5D40);
  }

  return result;
}

uint64_t sub_24E309E6C(void **a1)
{
  v2 = sub_24E347218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  if (Strong)
  {
    v7 = sub_24E347AD8();
    type metadata accessor for DashboardPresenter();
    sub_24E260A60(Strong, 0, *a1);

    return v7;
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
    return sub_24E347AA8();
  }
}

unint64_t sub_24E309FC0()
{
  result = qword_27F1DEEA8;
  if (!qword_27F1DEEA8)
  {
    type metadata accessor for FriendsListAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DEEA8);
  }

  return result;
}

uint64_t sub_24E30A018(uint64_t a1)
{
  v2 = sub_24E347218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v7 = type metadata accessor for FriendsListAction();
  sub_24DFD8A60();

  v8 = *(a1 + 16);
  if ((*(a1 + 17) & 1) != 0 || (v8 = 2, *(a1 + 16) == 2))
  {
    v9 = *(a1 + 8);
    v25 = *a1;
    v10 = objc_allocWithZone(type metadata accessor for FriendsListPresenter());

    *(sub_24E09F378(v25, v9, 0, v8, 1) + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_isDeeplinked) = *(a1 + *(v7 + 32));
    objc_allocWithZone(type metadata accessor for FriendsListViewController());

    sub_24E288E84();
  }

  else
  {
    LOBYTE(v28[0]) = 2;
    v12 = objc_allocWithZone(type metadata accessor for PlayerProfilePresenter());

    sub_24E245B74();
    *(v13 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_isDeeplinked) = *(a1 + *(v7 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0);
    sub_24E347328();
    v14 = objc_allocWithZone(type metadata accessor for PlayerProfileViewController());

    sub_24E0CACF0();
  }

  v15 = v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0);
    sub_24E347328();
    if (v27)
    {
      sub_24DE56CE8(&v26, v28);
      v18 = v29;
      v19 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      (*(v19 + 8))(v15, 1, v18, v19);
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {
      sub_24E0B9DD0(&v26);
      v21 = [v17 navigationController];
      if (v21)
      {
        v22 = v21;
        [v21 pushViewController:v15 animated:1];
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
    v20 = sub_24E347AA8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
    v20 = sub_24E347AA8();
    v17 = v15;
  }

  return v20;
}

id sub_24E30A400(char a1, double a2)
{
  *&v2[OBJC_IVAR____TtC12GameCenterUI10ShadowView_cornerRadius] = a2;
  v2[OBJC_IVAR____TtC12GameCenterUI10ShadowView_cornerStyle] = a1 & 1;
  result = sub_24E0985DC(v2, a1 & 1, a2);
  if (*&v2[OBJC_IVAR____TtC12GameCenterUI10ShadowView_shadow])
  {

    return [v2 setNeedsLayout];
  }

  return result;
}

void sub_24E30A46C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC12GameCenterUI10ShadowView_shadow);
  v6 = *(v4 + OBJC_IVAR____TtC12GameCenterUI10ShadowView_shadow);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v7 = a1;

  sub_24E30A4CC();
}

id sub_24E30A4CC()
{
  v1 = &v0[OBJC_IVAR____TtC12GameCenterUI10ShadowView_shadow];
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI10ShadowView_shadow];
  if (v2)
  {
    v4 = v1[2];
    v3 = v1[3];
    v5 = v1[1];
    v6 = v2;
    v7 = OUTLINED_FUNCTION_1_153();
    v8 = [v6 CGColor];
    [v7 setShadowColor_];

    v9 = OUTLINED_FUNCTION_1_153();
    [v9 setShadowRadius_];

    v10 = OUTLINED_FUNCTION_1_153();
    [v10 setShadowOffset_];

    v11 = OUTLINED_FUNCTION_1_153();
    LODWORD(v12) = 1.0;
    [v11 setShadowOpacity_];

    [v0 setClipsToBounds_];
  }

  else
  {
    v13 = OUTLINED_FUNCTION_2_129();
    [v13 setShadowColor_];

    v14 = OUTLINED_FUNCTION_2_129();
    [v14 setShadowRadius_];

    v15 = OUTLINED_FUNCTION_2_129();
    [v15 setShadowOffset_];

    v16 = OUTLINED_FUNCTION_2_129();
    [v16 setShadowOpacity_];

    [v0 setClipsToBounds_];
  }

  return [v0 setNeedsLayout];
}

void sub_24E30A6CC()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for ShadowView();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  if (*&v0[OBJC_IVAR____TtC12GameCenterUI10ShadowView_shadow])
  {
    v1 = [v0 layer];
    v2 = v0[OBJC_IVAR____TtC12GameCenterUI10ShadowView_cornerStyle];
    [v0 bounds];
    v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI10ShadowView_cornerRadius];
    objc_opt_self();
    if (v3 >= COERCE_DOUBLE(1))
    {
      if (v2)
      {
        v8 = OUTLINED_FUNCTION_28();
        v11 = [v9 v10];
        if (v11)
        {
LABEL_9:
          v15 = [v11 CGPath];

          [v1 setShadowPath_];
          return;
        }

        __break(1u);
      }

      v12 = OUTLINED_FUNCTION_28();
      v7 = [v13 v14];
    }

    else
    {
      v4 = OUTLINED_FUNCTION_28();
      v7 = [v5 v6];
    }

    v11 = v7;
    goto LABEL_9;
  }
}

id sub_24E30A894(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ShadowView();
  objc_msgSendSuper2(&v6, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (!a1)
  {
    return sub_24E30A4CC();
  }

  result = [a1 userInterfaceStyle];
  if (v4 != result)
  {
    return sub_24E30A4CC();
  }

  return result;
}

id sub_24E30A9A0()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10ShadowView_cornerRadius) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10ShadowView_cornerStyle) = 1;
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI10ShadowView_shadow);
  v2 = type metadata accessor for ShadowView();
  *v1 = 0u;
  v1[1] = 0u;
  v7 = v2;
  v3 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v4, v5, v3, v0, v7);
}

id sub_24E30AA54(void *a1)
{
  *&v1[OBJC_IVAR____TtC12GameCenterUI10ShadowView_cornerRadius] = 0;
  v1[OBJC_IVAR____TtC12GameCenterUI10ShadowView_cornerStyle] = 1;
  v3 = &v1[OBJC_IVAR____TtC12GameCenterUI10ShadowView_shadow];
  v4 = type metadata accessor for ShadowView();
  *v3 = 0u;
  v3[1] = 0u;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_24E30AB14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShadowView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id OUTLINED_FUNCTION_1_153()
{

  return [v0 (v1 + 2168)];
}

id OUTLINED_FUNCTION_2_129()
{

  return [v0 (v1 + 2168)];
}

void sub_24E30ABAC()
{
  OUTLINED_FUNCTION_44();
  v1 = v0;
  v3 = v2;
  v44 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v46 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v42 = v7 - v6;
  v8 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v14 = v13 - v12;
  swift_getObjectType();
  sub_24E30B6B8();
  v15 = v0[13];
  v16 = v1[14];
  v17 = __swift_project_boxed_opaque_existential_1(v1 + 10, v15);
  sub_24E2548A0(v15, v16);
  OUTLINED_FUNCTION_2_130();
  v18 = v17;
  sub_24E344198();
  MinY = v19;
  (*(v10 + 8))(v14, v8);
  v21 = sub_24E30BA74(v3, v1);
  v54.origin.x = OUTLINED_FUNCTION_28();
  MinX = CGRectGetMinX(v54);
  v22 = 0;
  v23 = *(v21 + 16);
  v45 = v21;
  v41 = v21 + 32;
  v24 = (v46 + 8);
  v43 = MinY;
  while (1)
  {
    if (v22 == v23)
    {
      v25 = 0;
      v26 = 0uLL;
      v22 = v23;
      v27 = 0uLL;
      v28 = 0uLL;
      goto LABEL_6;
    }

    if (v22 >= *(v45 + 16))
    {
      break;
    }

    *&v50[0] = v22;
    sub_24E1608A0(v41 + 48 * v22, v50 + 8);
    v26 = v50[0];
    v27 = v50[1];
    v28 = v51;
    ++v22;
    v25 = v52;
LABEL_6:
    OUTLINED_FUNCTION_8_87(v25, v28, v27, v26);
    if (!v30)
    {

      OUTLINED_FUNCTION_28();
      sub_24E343FD8();
      OUTLINED_FUNCTION_45();
      return;
    }

    v47 = v29;
    sub_24DFFE564(&v53, v50);
    OUTLINED_FUNCTION_8_8(v50);
    sub_24E3440D8();
    v32 = v31;
    v33 = type metadata accessor for PlayerProfileInfoBarLayout.Metrics(0);
    sub_24E160904(v1 + *(v33 + 36), v49);
    OUTLINED_FUNCTION_9_72();
    if (v18)
    {
      OUTLINED_FUNCTION_7_80();
      OUTLINED_FUNCTION_2_130();
      sub_24E344198();
      v34 = OUTLINED_FUNCTION_3_135();
      v35(v34);
      __swift_destroy_boxed_opaque_existential_1(v49);
      v18 = [v3 traitCollection];
      v36 = sub_24E3483C8();

      if (MinY >= v32)
      {
        v37 = v32;
      }

      else
      {
        v37 = MinY;
      }

      if ((v36 & 1) == 0)
      {
        v32 = v37;
      }
    }

    else
    {
      sub_24DF8A960(v49);
    }

    sub_24E160904(v1 + *(v33 + 40), v49);
    OUTLINED_FUNCTION_9_72();
    if (v18)
    {
      OUTLINED_FUNCTION_7_80();
      OUTLINED_FUNCTION_2_130();
      v18 = v8;
      sub_24E344198();
      v38 = OUTLINED_FUNCTION_3_135();
      v39(v38);
      __swift_destroy_boxed_opaque_existential_1(v49);
      if (v32 <= MinY)
      {
        v32 = MinY;
      }
    }

    else
    {
      sub_24DF8A960(v49);
    }

    v55.origin.x = OUTLINED_FUNCTION_28();
    MinY = CGRectGetMinY(v55);
    v8 = v51;
    OUTLINED_FUNCTION_8_8(v50);
    sub_24E344978();
    (*v24)(v42, v44);
    MinX = MinX + v43 + v32;
    if (v47 != *(v45 + 16) - 1)
    {
      v40 = *(v1 + *(type metadata accessor for PlayerProfileInfoBarLayout(0) + 24));
      if (v47 < *(v40 + 16))
      {
        if (v47 < 0)
        {
          goto LABEL_27;
        }

        sub_24DF89628(v40 + 40 * v47 + 32, v49);
        v56.origin.x = OUTLINED_FUNCTION_28();
        CGRectGetHeight(v56);
        OUTLINED_FUNCTION_8_8(v1 + 15);
        sub_24E344168();
        v8 = v49[4];
        OUTLINED_FUNCTION_8_8(v49);
        v57.origin.x = OUTLINED_FUNCTION_28();
        MinY = CGRectGetMinY(v57);
        v58.origin.x = OUTLINED_FUNCTION_28();
        CGRectGetHeight(v58);
        sub_24E344088();
        __swift_destroy_boxed_opaque_existential_1(v49);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_24E30B12C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 80 * v2 - 48;
  for (i = 32; ; i += 80)
  {
    if (v3 == v5)
    {
      goto LABEL_11;
    }

    v8 = *(v1 + 16);
    if (v3 >= v8)
    {
      break;
    }

    result = sub_24E160974(v1 + i, v11);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_24E160974(v1 + v6, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24E259F84();
      v1 = v9;
    }

    result = sub_24E30C350(v10, v1 + i);
    if (v5 >= *(v1 + 16))
    {
      goto LABEL_15;
    }

    result = sub_24E30C350(v11, v1 + v6);
LABEL_11:
    ++v3;
    --v5;
    v6 -= 80;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_24E30B234(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v19 = sub_24E348878();
    if (v19)
    {
      v20 = v19;
      v2 = sub_24E07912C(v19, 0);
      sub_24E0836CC(v2 + 32, v20, v1);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_39;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v2 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        v1 = *(v2 + 16);
        v3 = v1 >> 1;
        goto LABEL_6;
      }

LABEL_39:
      v23 = sub_24E348878();
      if (v23 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v1 = v23;
    v3 = v23 / 2;
LABEL_6:
    if (v1 + 1 < 3)
    {
      return v2;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v1 - (v6 - 3);
      if (__OFSUB__(v1, v6 - 3))
      {
        break;
      }

      v8 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x25303F560]();
          v12 = MEMORY[0x25303F560](v1 - (v6 - 3), v2);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v9)
          {
            goto LABEL_33;
          }

          if (v7 >= v9)
          {
            goto LABEL_34;
          }

          v10 = *(v2 + 8 * v7 + 32);
          v11 = *(v2 + 8 * v6);
          v12 = v10;
        }

        v13 = v12;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = sub_24E25ACD8(v2);
          v14 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v14) = 0;
        }

        v15 = v2 & 0xFFFFFFFFFFFFFF8;
        v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v13;

        if ((v2 & 0x8000000000000000) != 0 || v14)
        {
          v2 = sub_24E25ACD8(v2);
          v15 = v2 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_30:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v7 >= *(v15 + 16))
        {
          goto LABEL_35;
        }

        v17 = v15 + 8 * v7;
        v18 = *(v17 + 32);
        *(v17 + 32) = v11;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

void sub_24E30B440(uint64_t a1)
{
  v2 = sub_24E345658();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v31 = v25 - v9;
  v10 = *(a1 + 16);
  if (v10 < 2)
  {
    return;
  }

  v11 = 0;
  v12 = v10 >> 1;
  v13 = v10 - 1;
  v26 = v10 >> 1;
  v27 = v7;
  v25[1] = v7 + 16;
  v28 = (v7 + 40);
  while (1)
  {
    if (v11 == v13)
    {
      goto LABEL_10;
    }

    v14 = *(a1 + 16);
    if (v11 >= v14)
    {
      break;
    }

    v15 = v5;
    v30 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v16 = a1 + v30;
    v17 = *(v7 + 72);
    v18 = a1;
    v19 = *(v7 + 16);
    v29 = v17 * v11;
    v19(v31, v16 + v17 * v11, v2, v8);
    if (v13 >= v14)
    {
      goto LABEL_13;
    }

    v20 = v17 * v13;
    v21 = v16 + v17 * v13;
    v5 = v15;
    (v19)(v15, v21, v2);
    a1 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24E259FD4();
      a1 = v24;
    }

    v22 = a1 + v30;
    v23 = *v28;
    (*v28)(a1 + v30 + v29, v5, v2);
    if (v13 >= *(a1 + 16))
    {
      goto LABEL_14;
    }

    v23(v22 + v20, v31, v2);
    v12 = v26;
    v7 = v27;
LABEL_10:
    ++v11;
    --v13;
    if (v12 == v11)
    {
      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_24E30B660()
{
  swift_getObjectType();

  sub_24E30B6B8();
}

void sub_24E30B6B8()
{
  OUTLINED_FUNCTION_44();
  v1 = v0;
  v3 = v2;
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v5 = sub_24E30BA74(v3, v1);
  v6 = 0;
  v7 = *(v5 + 16);
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v44 = v7;
  while (1)
  {
    if (v6 == v7)
    {
      v12 = 0;
      v13 = 0uLL;
      v14 = v7;
      v15 = 0uLL;
      v16 = 0uLL;
      goto LABEL_6;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v14 = v6 + 1;
    v49.n128_u64[0] = v6;
    sub_24E1608A0(v5 + 32 + 48 * v6, &v49.n128_i64[1]);
    v13 = v49;
    v15 = v50;
    v16 = v51;
    v12 = v52;
LABEL_6:
    OUTLINED_FUNCTION_8_87(v12, v16, v15, v13);
    if (!v18)
    {

      OUTLINED_FUNCTION_45();
      return;
    }

    v45 = v17;
    v46 = v14;
    v47 = v8;
    sub_24DFFE564(&v53, &v49);
    v19 = __swift_project_boxed_opaque_existential_1(&v49, v50.n128_i64[1]);
    sub_24E3440D8();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = type metadata accessor for PlayerProfileInfoBarLayout.Metrics(0);
    sub_24E160904(v1 + *(v28 + 36), v48);
    OUTLINED_FUNCTION_9_72();
    if (v19)
    {
      v29 = v48[4];
      __swift_project_boxed_opaque_existential_1(v48, v19);
      sub_24E2548A0(v19, v29);
      OUTLINED_FUNCTION_1_10();
      sub_24E344198();
      v31 = v30;
      v32 = OUTLINED_FUNCTION_6_102();
      v33(v32);
      __swift_destroy_boxed_opaque_existential_1(v48);
      v19 = [v3 traitCollection];
      v34 = sub_24E3483C8();

      if (v31 >= v21)
      {
        v35 = v21;
      }

      else
      {
        v35 = v31;
      }

      if ((v34 & 1) == 0)
      {
        v21 = v35;
      }
    }

    else
    {
      sub_24DF8A960(v48);
    }

    sub_24E160904(v1 + *(v28 + 40), v48);
    OUTLINED_FUNCTION_9_72();
    if (v19)
    {
      __swift_project_boxed_opaque_existential_1(v48, v19);
      OUTLINED_FUNCTION_13_60();
      OUTLINED_FUNCTION_1_10();
      sub_24E344198();
      v37 = v36;
      v38 = OUTLINED_FUNCTION_6_102();
      v39(v38);
      __swift_destroy_boxed_opaque_existential_1(v48);
      if (v21 <= v37)
      {
        v21 = v37;
      }
    }

    else
    {
      sub_24DF8A960(v48);
    }

    v11 = v11 + v21;
    if (v45 != *(v5 + 16) - 1)
    {
      __swift_project_boxed_opaque_existential_1((v1 + 80), *(v1 + 104));
      OUTLINED_FUNCTION_13_60();
      OUTLINED_FUNCTION_1_10();
      sub_24E344198();
      v41 = v40;
      v42 = OUTLINED_FUNCTION_6_102();
      v43(v42);
      v11 = v11 + v41;
    }

    v7 = v44;
    if (v10 <= v23)
    {
      v10 = v23;
    }

    if (v9 <= v25)
    {
      v9 = v25;
    }

    v8 = v47;
    if (v47 <= v27)
    {
      v8 = v27;
    }

    __swift_destroy_boxed_opaque_existential_1(&v49);
    v6 = v46;
  }

  __break(1u);
}

uint64_t sub_24E30BA74(void *a1, uint64_t a2)
{
  v58 = sub_24E344648();
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24E3445E8();
  v5 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24E3446A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v81 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v80 = v50 - v12;
  v13 = [a1 traitCollection];
  LOBYTE(a1) = sub_24E3483B8();

  v14 = *(type metadata accessor for PlayerProfileInfoBarLayout(0) + 20);
  v82 = a2;
  v15 = *(a2 + v14);

  if (a1)
  {
    v15 = sub_24E30B12C(v15);
  }

  v16 = *(v15 + 16);
  if (v16)
  {
    v79 = v82 + *(type metadata accessor for PlayerProfileInfoBarLayout.Metrics(0) + 32);
    v50[1] = v15;
    v17 = v15 + 32;
    v78 = (v5 + 104);
    v77 = *MEMORY[0x277D227C8];
    v76 = v59 + 8;
    v75 = (v5 + 8);
    v18 = (v8 + 16);
    v52 = (v8 + 8);
    v19 = MEMORY[0x277D84F90];
    v51 = xmmword_24E36A270;
    v74 = xmmword_24E367D20;
    v54 = v7;
    v53 = v18;
    do
    {
      v71 = v19;
      v73 = v16;
      v72 = v17;
      sub_24E160974(v17, v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10);
      v20 = *(sub_24E344688() - 8);
      v69 = *(v20 + 72);
      v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v22 = swift_allocObject();
      v70 = v22;
      *(v22 + 16) = v51;
      v61 = v22 + v21;
      v85 = 0;
      v84 = 0u;
      v83 = 0u;
      v68 = *v78;
      v23 = v55;
      v24 = v56;
      v68(v55, v77, v56);
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
      v25 = v59;
      v66 = *(v59 + 72);
      v26 = swift_allocObject();
      *(v26 + 16) = v74;
      sub_24E344618();
      *&v88[0] = v26;
      v64 = sub_24DF8A8A4();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
      v65 = sub_24DF8A8FC();
      v27 = v57;
      v28 = v58;
      sub_24E3487E8();
      sub_24E344678();
      v62 = *(v25 + 8);
      v62(v27, v28);
      v60 = *v75;
      v29 = v24;
      v60(v23, v24);
      sub_24DF8A960(&v83);
      v31 = v92;
      v30 = v93;
      v32 = __swift_project_boxed_opaque_existential_1(&v91, v92);
      *(&v84 + 1) = v31;
      v85 = *(v30 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v83);
      v34 = v32;
      v35 = v81;
      v36 = v80;
      (*(*(v31 - 8) + 16))(boxed_opaque_existential_1, v34, v31);
      sub_24E160A18(v90);
      v89 = 0;
      memset(v88, 0, sizeof(v88));
      v68(v23, v77, v29);
      v37 = v53;
      v38 = swift_allocObject();
      *(v38 + 16) = v74;
      sub_24E344618();
      v87 = v38;
      sub_24E3487E8();
      sub_24E344678();
      v39 = v27;
      v40 = v54;
      v62(v39, v28);
      v41 = v23;
      v19 = v71;
      v60(v41, v29);
      sub_24DF8A960(v88);
      __swift_destroy_boxed_opaque_existential_1(&v83);
      sub_24E344668();
      v42 = *v37;
      (*v37)(v35, v36, v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076B00();
        v19 = v47;
      }

      v43 = *(v19 + 16);
      if (v43 >= *(v19 + 24) >> 1)
      {
        sub_24E076B00();
        v19 = v48;
      }

      v44 = *v52;
      (*v52)(v80, v40);
      *(&v84 + 1) = v40;
      v85 = MEMORY[0x277D22808];
      v86 = MEMORY[0x277D22810];
      v45 = __swift_allocate_boxed_opaque_existential_1(&v83);
      v46 = v81;
      v42(v45, v81, v40);
      *(v19 + 16) = v43 + 1;
      sub_24DFFE564(&v83, (v19 + 48 * v43 + 32));
      v44(v46, v40);
      v17 = v72 + 80;
      v16 = v73 - 1;
    }

    while (v73 != 1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v19;
}

void sub_24E30C3C0()
{
  sub_24E30C48C();
  if (v0 <= 0x3F)
  {
    sub_24E344658();
    if (v1 <= 0x3F)
    {
      sub_24E30C628(319, &qword_27F1EAD20, &qword_27F1EAD28, &unk_24E38DE10, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24E30C48C()
{
  result = qword_27F1EAD18;
  if (!qword_27F1EAD18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F1EAD18);
  }

  return result;
}

void sub_24E30C510()
{
  type metadata accessor for PlayerProfileInfoBarLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_24E30C5D8();
    if (v1 <= 0x3F)
    {
      sub_24E30C628(319, &qword_27F1EAD48, &qword_27F1DFD48, &unk_24E37B200, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E30C5D8()
{
  if (!qword_27F1EAD40)
  {
    v0 = sub_24E347FC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1EAD40);
    }
  }
}

void sub_24E30C628(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_80()
{
  v2 = *(v1 - 280);
  __swift_project_boxed_opaque_existential_1((v1 - 312), v0);

  return sub_24E2548A0(v0, v2);
}

void OUTLINED_FUNCTION_8_87(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *(v4 - 208) = a4;
  *(v4 - 192) = a3;
  *(v4 - 176) = a2;
  *(v4 - 160) = a1;
}

uint64_t OUTLINED_FUNCTION_13_60()
{

  return sub_24E2548A0(v0, v1);
}

id sub_24E30C758(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_24E347CB8();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() imageNamed:v4 inBundle:a3];

  return v5;
}

id sub_24E30C7D8()
{
  sub_24DF88A8C(0, &qword_280BE0110);
  v0 = GKGameCenterUIFrameworkBundle();
  result = sub_24E30C758(0x702E79627261656ELL, 0xED00006E6F737265, v0);
  if (result)
  {
    qword_27F1EAD50 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E30C854()
{
  result = sub_24E30C878();
  qword_27F1EAD58 = result;
  unk_27F1EAD60 = v1;
  return result;
}

uint64_t sub_24E30C878()
{
  v0 = [objc_opt_self() wapiCapability];
  v9 = &type metadata for GKFeatureFlags;
  v10 = sub_24DFA0CB4();
  v8[0] = 9;
  v1 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(v8);
  if (v1)
  {
    sub_24E343AA8();
    if (v0)
    {
      return sub_24E343A98();
    }

    else
    {
      return sub_24E343A88();
    }
  }

  else
  {
    v3 = sub_24E347CB8();
    v4 = GKGameCenterUIFrameworkBundle();
    v5 = GKGetLocalizedStringFromTableInBundle();

    v6 = sub_24E347CF8();
  }

  return v6;
}

void sub_24E30C9DC()
{
  OUTLINED_FUNCTION_13_44();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47 - v12;
  if (qword_27F1DDD70 != -1)
  {
    OUTLINED_FUNCTION_6_103();
  }

  v14 = qword_27F1EAD50;
  v15 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x277D76A08] scale:3];
  v16 = [v14 imageWithConfiguration_];

  v17 = [v16 imageWithRenderingMode_];
  v18 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v1[OBJC_IVAR____TtC12GameCenterUI40GKMultiplayerPickerNearbyInstructionCell_imageView] = v18;
  if (qword_27F1DE058 != -1)
  {
    OUTLINED_FUNCTION_5_114();
  }

  v19 = sub_24E344158();
  v20 = __swift_project_value_buffer(v19, &unk_27F20BD08);
  (*(*(v19 - 8) + 16))(v13, v20, v19);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v19);
  v21 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v1[OBJC_IVAR____TtC12GameCenterUI40GKMultiplayerPickerNearbyInstructionCell_textField] = sub_24E0AEF24(v13, 0, 0, 0, 1, 1);
  v47.receiver = v1;
  v47.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v47, sel_initWithFrame_, v9, v7, v5, v3);
  v23 = OUTLINED_FUNCTION_10_69();
  [v22 setLayoutMargins_];
  v28 = OBJC_IVAR____TtC12GameCenterUI40GKMultiplayerPickerNearbyInstructionCell_imageView;
  v29 = *&v22[OBJC_IVAR____TtC12GameCenterUI40GKMultiplayerPickerNearbyInstructionCell_imageView];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 tertiaryLabelColor];
  [v31 setTintColor_];

  v33 = [*&v22[v28] layer];
  v34 = *MEMORY[0x277CDA5E8];
  [v33 setCompositingFilter_];

  v35 = OBJC_IVAR____TtC12GameCenterUI40GKMultiplayerPickerNearbyInstructionCell_textField;
  v36 = qword_27F1DDD78;
  v37 = *&v22[OBJC_IVAR____TtC12GameCenterUI40GKMultiplayerPickerNearbyInstructionCell_textField];
  if (v36 != -1)
  {
    OUTLINED_FUNCTION_4_115();
  }

  v38 = sub_24E347CB8();
  [v37 setText_];

  sub_24DFD8050(0xD00000000000002FLL, 0x800000024E3B2CD0, *&v22[v35]);
  v39 = *&v22[v35];
  v40 = [v30 secondaryLabelColor];
  [v39 setTextColor_];

  v41 = [*&v22[v35] layer];
  [v41 setCompositingFilter_];

  v42 = v22;
  v43 = [v42 contentView];
  v44 = [v30 clearColor];
  [v43 setBackgroundColor_];

  v45 = [v42 contentView];
  [v45 addSubview_];

  v46 = [v42 contentView];
  [v46 addSubview_];

  OUTLINED_FUNCTION_12_37();
}

Swift::Void __swiftcall GKMultiplayerPickerNearbyInstructionCell.layoutSubviews()()
{
  OUTLINED_FUNCTION_13_44();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_24E344428();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  [v1 bounds];
  [v1 layoutMargins];
  v10 = *&v1[OBJC_IVAR____TtC12GameCenterUI40GKMultiplayerPickerNearbyInstructionCell_imageView];
  v16[3] = sub_24DF88A8C(0, &qword_27F1DFF00);
  v16[4] = MEMORY[0x277D22A58];
  v16[0] = v10;
  v11 = *&v1[OBJC_IVAR____TtC12GameCenterUI40GKMultiplayerPickerNearbyInstructionCell_textField];
  v15[3] = type metadata accessor for DynamicTypeLabel();
  v15[4] = MEMORY[0x277D22A68];
  v15[0] = v11;
  v12 = v10;
  v13 = v11;
  sub_24E30D128(v16, v15);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  [v1 bounds];
  [v1 layoutMargins];
  v14 = [v1 traitCollection];
  sub_24E30D41C(v14);

  (*(v5 + 8))(v9, v3);
  OUTLINED_FUNCTION_12_37();
}

uint64_t sub_24E30D128(void *a1, void *a2)
{
  v5 = sub_24E3442D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E3440E8();
  v10 = v9;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24E3440E8();
  v14 = v13;
  v16 = v15;
  sub_24E344408();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E3440F8();
  *(swift_allocObject() + 16) = v2;
  sub_24E3443F8();

  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_24E3442B8();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24E3440F8();
  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v12;
  v17[4] = v14;
  v17[5] = v16;
  sub_24E344298();

  __swift_destroy_boxed_opaque_existential_1(v21);
  v21[3] = v5;
  v21[4] = MEMORY[0x277D226E0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(v6 + 16))(boxed_opaque_existential_1, v8, v5);
  sub_24E3443F8();
  (*(v6 + 8))(v8, v5);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_24E30D41C(void *a1)
{
  v2 = sub_24E344A58();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAD88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_24E3443B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_24E344428();
  sub_24E30E1B8(&qword_27F1EAD78, MEMORY[0x277D22780]);
  v27 = a1;
  sub_24E344458();
  v25 = v17;
  v26 = v9;
  (*(v9 + 16))(v11, v17, v8);
  v18 = MEMORY[0x277D22758];
  sub_24E30E1B8(&qword_27F1EAD90, MEMORY[0x277D22758]);
  v28 = v14;
  v29 = v8;
  sub_24E347EA8();
  sub_24E30E1B8(&qword_27F1EAD98, v18);
  v19 = (v24 + 32);
  v20 = (v24 + 8);
  while (1)
  {
    sub_24E3486C8();
    if (__swift_getEnumTagSinglePayload(v7, 1, v2) == 1)
    {
      break;
    }

    (*v19)(v4, v7, v2);
    sub_24E344A38();
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_24E344A48();
    [v27 layoutDirection];
    sub_24E348518();
    sub_24E344A08();
    (*v20)(v4, v2);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v21 = *(v26 + 8);
  v22 = v29;
  v21(v28, v29);
  return (v21)(v25, v22);
}

void GKMultiplayerPickerNearbyInstructionCell.measurements(fitting:in:)()
{
  OUTLINED_FUNCTION_13_44();
  v2 = v1;
  swift_getObjectType();
  v3 = sub_24E3443B8();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v10 = sub_24E344428();
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  v17 = *(v0 + OBJC_IVAR____TtC12GameCenterUI40GKMultiplayerPickerNearbyInstructionCell_imageView);
  v27[3] = sub_24DF88A8C(0, &qword_27F1DFF00);
  v27[4] = MEMORY[0x277D22A58];
  v27[0] = v17;
  v18 = *(v0 + OBJC_IVAR____TtC12GameCenterUI40GKMultiplayerPickerNearbyInstructionCell_textField);
  v26[3] = type metadata accessor for DynamicTypeLabel();
  v26[4] = MEMORY[0x277D22A68];
  v26[0] = v18;
  v19 = v17;
  v20 = v18;
  sub_24E30D128(v27, v26);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  v21 = [v2 traitCollection];
  sub_24E344798();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_3_136();
  sub_24E30E1B8(v22, v23);
  OUTLINED_FUNCTION_7_2();
  sub_24E344458();
  OUTLINED_FUNCTION_2_131();
  sub_24E30E1B8(v24, v25);
  sub_24E3445D8();
  OUTLINED_FUNCTION_8_2();

  (*(v5 + 8))(v9, v3);
  (*(v12 + 8))(v16, v10);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_12_37();
}

uint64_t static GKMultiplayerPickerNearbyInstructionCell.itemHeight(fitting:in:)(void *a1)
{
  sub_24E3443B8();
  OUTLINED_FUNCTION_0_14();
  v27 = v3;
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  v26 = sub_24E344428();
  OUTLINED_FUNCTION_0_14();
  v25 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  swift_getObjectType();
  OUTLINED_FUNCTION_10_69();
  sub_24E0B7968();
  if (qword_27F1DDD70 != -1)
  {
    OUTLINED_FUNCTION_6_103();
  }

  [qword_27F1EAD50 size];
  v12 = sub_24E344788();
  swift_allocObject();
  v13 = sub_24E344768();
  if (qword_27F1DDD78 != -1)
  {
    OUTLINED_FUNCTION_4_115();
  }

  sub_24DF88A8C(0, &qword_27F1DEE28);
  v14 = qword_27F1DE058;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_5_114();
  }

  v15 = sub_24E344158();
  v16 = __swift_project_value_buffer(v15, &unk_27F20BD08);
  sub_24E065D2C(v16, a1);
  sub_24E3443A8();
  v17 = sub_24E344868();
  swift_allocObject();
  v18 = sub_24E344858();
  v30[3] = v12;
  v30[4] = MEMORY[0x277D228B0];
  v30[0] = v13;
  v29[3] = v17;
  v29[4] = MEMORY[0x277D228F0];
  v29[0] = v18;

  sub_24E30D128(v30, v29);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  v19 = [a1 traitCollection];
  sub_24E344798();
  OUTLINED_FUNCTION_3_136();
  sub_24E30E1B8(v20, v21);
  sub_24E344458();
  OUTLINED_FUNCTION_2_131();
  sub_24E30E1B8(v22, v23);
  sub_24E3445D8();

  (*(v27 + 8))(v6, v28);
  return (*(v25 + 8))(v11, v26);
}

id GKMultiplayerPickerNearbyInstructionCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E30E1B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_4_115()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_114()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_103()
{

  return swift_once();
}

id sub_24E30E2B8(void *a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC12GameCenterUI34ProfilePrivacyActionImplementation_currentAction;
  v4 = type metadata accessor for ProfilePrivacyAction();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  swift_unknownObjectWeakAssign();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ProfilePrivacyActionImplementation();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

uint64_t sub_24E30E354(void *a1)
{
  v2 = v1;
  v4 = sub_24E347218();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAE38);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v12 = type metadata accessor for ProfilePrivacyAction();
  sub_24DFD8A60();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_24DF8BC88(a1, v10);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
    v15 = OBJC_IVAR____TtC12GameCenterUI34ProfilePrivacyActionImplementation_currentAction;
    swift_beginAccess();
    sub_24E30EBC4(v10, v2 + v15);
    swift_endAccess();
    v16 = [objc_allocWithZone(GKProfilePrivacyTableViewController) initWithStyle_];
    v17 = [v16 navigationItem];
    [v17 setLargeTitleDisplayMode_];

    [v16 setLocalPlayer_];
    [v16 setDelegate_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0);
    sub_24E347328();
    if (v25)
    {
      sub_24DE56CE8(&v24, v26);
      v18 = v27;
      v19 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      (*(v19 + 8))(v16, 1, v18, v19);
      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    else
    {
      sub_24DF8C95C(&v24, &qword_27F1E1B70);
      v21 = [v14 navigationController];
      if (v21)
      {
        v22 = v21;
        [v21 pushViewController:v16 animated:1];
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    (*(v5 + 104))(v7, *MEMORY[0x277D21CA8], v4);
    v20 = sub_24E347AA8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    (*(v5 + 104))(v7, *MEMORY[0x277D21CA8], v4);
    return sub_24E347AA8();
  }

  return v20;
}

uint64_t sub_24E30E6E8(uint64_t a1)
{
  v3 = type metadata accessor for ProfilePrivacyAction();
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAE38);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC12GameCenterUI34ProfilePrivacyActionImplementation_currentAction;
  swift_beginAccess();
  sub_24E30EB54(v1 + v9, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v3))
  {
    return sub_24DF8C95C(v8, &qword_27F1EAE38);
  }

  sub_24DF8BC88(v8, v5);
  sub_24DF8C95C(v8, &qword_27F1EAE38);
  v11 = *(v5 + 1);
  sub_24DE56C38(v11);
  result = sub_24DF8BF24(v5);
  if (v11)
  {
    v11(a1);
    return sub_24E059AAC(v11);
  }

  return result;
}

id sub_24E30E904()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfilePrivacyActionImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ProfilePrivacyActionImplementation()
{
  result = qword_27F1EAE18;
  if (!qword_27F1EAE18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E30E9E0()
{
  sub_24E30EA7C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24E30EA7C()
{
  if (!qword_27F1EAE28)
  {
    type metadata accessor for ProfilePrivacyAction();
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1EAE28);
    }
  }
}

unint64_t sub_24E30EAD8()
{
  result = qword_27F1EAE30;
  if (!qword_27F1EAE30)
  {
    type metadata accessor for ProfilePrivacyAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EAE30);
  }

  return result;
}

uint64_t sub_24E30EB54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAE38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E30EBC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAE38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E30EC34(void *__src)
{
  v44 = *v1;
  memcpy(__dst, __src, sizeof(__dst));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFA60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v39 - v4;
  v6 = sub_24E347458();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_7_1();
  v7 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v13 = v12 - v11;
  v14 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v45 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_1();
  v19 = v18 - v17;
  v43 = type metadata accessor for EmptyStateData();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7_1();
  v22 = v21 - v20;
  memcpy(v48, __src, sizeof(v48));
  if (sub_24DF8BF80(v48) == 1)
  {
    return 0;
  }

  v42 = v14;
  v23 = v48[9];
  v24 = v48[4] >> 62 ? sub_24E348878() : *((v48[4] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v24 | v23)
  {
    return 0;
  }

  v40 = __src;
  memcpy(v47, __dst, sizeof(v47));
  sub_24DF8BF98(v47, v46);
  sub_24DFC2C7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  v41 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v26 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v26;
  *(inited + 48) = 1852141679;
  *(inited + 56) = 0xE400000000000000;
  v27 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v28 = sub_24E347058();
  v29 = __swift_project_value_buffer(v28, qword_27F20AE00);
  MEMORY[0x25303DB90](0x6E65697246646461, 0xEA00000000007364, 0x6E6F74747562, 0xE600000000000000, v27, v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
  v30 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v41;
  (*(v9 + 16))(v31 + v30, v13, v7);
  sub_24E347448();
  sub_24E3471D8();
  (*(v9 + 8))(v13, v7);
  v32 = sub_24E32C0B8();
  memset(v49, 0, 32);
  v49[32] = 1;
  v33 = v45;
  v34 = v42;
  (*(v45 + 16))(v5, v19, v42);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v34);
  v46[3] = type metadata accessor for AddFriendsAction();
  v46[4] = sub_24E30F1F8(&qword_27F1DFA68, type metadata accessor for AddFriendsAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  sub_24E2835B0(v32, v49, v5, 0, boxed_opaque_existential_1);
  sub_24DFE981C(v46, v22 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
  v36 = swift_allocObject();
  *(v36 + 16) = v41;
  *(v36 + 56) = v43;
  *(v36 + 64) = sub_24E30F1F8(&qword_27F1DFD30, type metadata accessor for EmptyStateData);
  v37 = __swift_allocate_boxed_opaque_existential_1((v36 + 32));
  sub_24E1A8F38(v22, v37);
  sub_24E30F240(v40);
  (*(v33 + 8))(v19, v34);
  sub_24DFE22E0(v22);
  return v36;
}

uint64_t sub_24E30F1F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E30F240(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

UIEdgeInsets __swiftcall NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)(UITraitEnvironmentLayoutDirection a1)
{
  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v1 = v2;
  }

  v4 = v3;
  result.right = v4;
  result.left = v1;
  return result;
}

double NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)()
{
  OUTLINED_FUNCTION_29();
  swift_getObjectType();

  return sub_24E0B7968();
}

uint64_t sub_24E30F320@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GameLayerSection();
  v5 = *(v2 + *(v4 + 24));
  if (*(v5 + 16))
  {

    return sub_24DF89628(v5 + 32, a1);
  }

  else
  {
    v7 = v4;
    sub_24E348998();

    MEMORY[0x25303E950](*(v2 + *(v7 + 20)), *(v2 + *(v7 + 20) + 8));
    MEMORY[0x25303E950](0xD000000000000019, 0x800000024E3AA3D0);
    result = sub_24E348AE8();
    __break(1u);
  }

  return result;
}

uint64_t GameLayerSection.id.getter()
{
  v1 = *(v0 + *(type metadata accessor for GameLayerSection() + 20));

  return v1;
}

uint64_t type metadata accessor for GameLayerSection()
{
  result = qword_27F1EAE40;
  if (!qword_27F1EAE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E30F4EC@<X0>(uint64_t *a1@<X8>)
{
  result = GameLayerSection.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_24E30F53C()
{
  sub_24DF9E0E0();
  if (v0 <= 0x3F)
  {
    sub_24E30F5E0();
    if (v1 <= 0x3F)
    {
      sub_24E30F644();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E30F5E0()
{
  if (!qword_27F1E6050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E2180);
    v0 = sub_24E347FC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E6050);
    }
  }
}

unint64_t sub_24E30F644()
{
  result = qword_27F1EAE50;
  if (!qword_27F1EAE50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F1EAE50);
  }

  return result;
}

uint64_t sub_24E30F6A0(double a1, double a2)
{
  v3 = v2;
  v6 = sub_24E342EE8();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 identifier];
  v12 = sub_24E347CF8();
  v14 = v13;

  v22 = v12;
  v23 = v14;
  sub_24E342EB8();
  sub_24DF90C4C();
  v15 = sub_24E348748();
  v17 = v16;
  (*(v7 + 8))(v10, v6);

  if (!v17)
  {
    v18 = [v3 identifier];
    v15 = sub_24E347CF8();
    v17 = v19;
  }

  type metadata accessor for Artwork();
  v22 = 0x69746361746E6F63;
  v23 = 0xEF2F2F3A6567616DLL;
  MEMORY[0x25303E950](v15, v17);

  v21[0] = 29555;
  v21[1] = 0xE200000000000000;
  return Artwork.__allocating_init(template:size:backgroundColor:crop:variants:)(&v22, 0, v21, MEMORY[0x277D84F90], a1, a2);
}

id sub_24E30F8CC()
{
  v0 = sub_24E3104C4(&qword_27F1DDD80, &qword_27F20B7A8);

  return v0;
}

id sub_24E30F94C()
{
  v0 = sub_24E3104C4(&qword_27F1DDD88, &qword_27F20B7B0);

  return v0;
}

id sub_24E30F9CC()
{
  v0 = sub_24E3104C4(&qword_27F1DDD90, &qword_27F20B7B8);

  return v0;
}

id sub_24E30FA4C()
{
  v0 = sub_24E3104C4(&qword_27F1DDD98, &qword_27F20B7C0);

  return v0;
}

id sub_24E30FACC()
{
  v0 = sub_24E3104C4(&qword_27F1DDDA0, &qword_27F20B7C8);

  return v0;
}

id sub_24E30FB54()
{
  v0 = sub_24E3104C4(&qword_27F1DDDA8, &qword_27F20B7D0);

  return v0;
}

id sub_24E30FBDC()
{
  v0 = sub_24E3104C4(&qword_27F1DDDB0, &qword_27F20B7D8);

  return v0;
}

id sub_24E30FC64()
{
  v0 = sub_24E3104C4(&qword_27F1DDDB8, &qword_27F20B7E0);

  return v0;
}

id sub_24E30FCE4()
{
  v0 = sub_24E3104C4(&qword_27F1DDDC0, &qword_27F20B7E8);

  return v0;
}

id sub_24E30FD64()
{
  v0 = sub_24E3104C4(&qword_27F1DDDC8, &qword_27F20B7F0);

  return v0;
}

id sub_24E30FDEC()
{
  v0 = sub_24E3104C4(&qword_27F1DDDD0, &qword_27F20B7F8);

  return v0;
}

void sub_24E30FE58()
{
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v0 whiteColor];
  v3 = [v0 gk:v1 dynamicColorWithLightColor:v2 darkColor:?];

  qword_27F20B800 = v3;
}

id sub_24E30FEF4()
{
  v0 = sub_24E3104C4(&qword_27F1DDDD8, &qword_27F20B800);

  return v0;
}

void sub_24E30FF60()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.08];
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.08];
  v2 = [objc_opt_self() gk:v0 dynamicColorWithLightColor:v1 darkColor:?];

  qword_27F20B808 = v2;
}

id sub_24E31000C()
{
  v0 = sub_24E3104C4(&qword_27F1DDDE0, &qword_27F20B808);

  return v0;
}

id sub_24E31008C()
{
  v0 = sub_24E3104C4(&qword_27F1DDDE8, &qword_27F20B810);

  return v0;
}

id sub_24E31010C()
{
  v0 = sub_24E3104C4(&qword_27F1DDDF0, &qword_27F20B818);

  return v0;
}

id sub_24E31018C()
{
  v0 = sub_24E3104C4(&qword_27F1DDDF8, &qword_27F20B820);

  return v0;
}

id sub_24E31020C(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_24E310250()
{
  v0 = sub_24E3104C4(&qword_27F1DDE00, &qword_27F20B828);

  return v0;
}

id sub_24E310298()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.82];
  qword_27F20B830 = result;
  return result;
}

id sub_24E3102FC()
{
  v0 = sub_24E3104C4(&qword_27F1DDE08, &qword_27F20B830);

  return v0;
}

id sub_24E310344()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.82];
  qword_27F20B838 = result;
  return result;
}

id sub_24E3103A8()
{
  v0 = sub_24E3104C4(&qword_27F1DDE10, &qword_27F20B838);

  return v0;
}

void sub_24E3103F0()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  v3 = [v0 gk:v1 dynamicColorWithLightColor:v2 darkColor:?];

  qword_27F20B840 = v3;
}

id sub_24E3104C4(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

id sub_24E310510()
{
  v0 = sub_24E3104C4(&qword_27F1DDE18, &qword_27F20B840);

  return v0;
}

uint64_t sub_24E310570()
{
  v1 = *(v0 + 48);
  if (v1 == 255)
  {
    return 0;
  }

  if (v1)
  {
    return sub_24E30F6A0(300.0, 300.0);
  }

  v3 = 0;
  return sub_24E253E8C(&v3, 300.0, 300.0);
}

uint64_t sub_24E3105DC()
{
  v1 = *(v0 + 96);
  if (v1 == 255)
  {
    return 0;
  }

  if (v1)
  {
    return sub_24E30F6A0(300.0, 300.0);
  }

  v3 = 0;
  return sub_24E253E8C(&v3, 300.0, 300.0);
}

uint64_t sub_24E310648()
{
  v1 = *(v0 + 80);
  if (v1 == 255)
  {
    return 0;
  }

  if (v1)
  {
    return sub_24E30F6A0(300.0, 300.0);
  }

  v3 = 0;
  return sub_24E253E8C(&v3, 300.0, 300.0);
}

void sub_24E3106BC(void (*a1)(id *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v11 = type metadata accessor for LargePlayerLockupData();
  v12 = OUTLINED_FUNCTION_6_15(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v15 = v14 - v13;
  v30 = a5;
  v16 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v16)
  {
    return;
  }

  v32 = MEMORY[0x277D84F90];
  v17 = OUTLINED_FUNCTION_32_21();
  sub_24E12F4B0(v17, v18, v19);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = v32;
    v28 = &a4[8 * v30];
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if ((v30 + v20) >= (a6 >> 1) || v20 >= v16)
      {
        goto LABEL_16;
      }

      v31 = *&v28[8 * v20];
      a4 = v31;
      a1(&v31);
      if (v7)
      {
        goto LABEL_19;
      }

      v7 = 0;

      v32 = v21;
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      a4 = (v25 + 1);
      if (v25 >= v24 >> 1)
      {
        sub_24E12F4B0(v24 > 1, v25 + 1, 1);
        v21 = v32;
      }

      *(v21 + 16) = a4;
      OUTLINED_FUNCTION_23_18();
      sub_24E31459C(v15, v21 + v26 + *(v27 + 72) * v25, type metadata accessor for LargePlayerLockupData);
      ++v20;
      if (v22 == v16)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
LABEL_19:

  __break(1u);
}

void sub_24E3108A8(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for SmallPlayerCardData();
  v7 = OUTLINED_FUNCTION_6_15(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24E348878())
  {
    v26 = MEMORY[0x277D84F90];
    v12 = OUTLINED_FUNCTION_32_21();
    sub_24E12F508(v12, v13, v14);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v15 = 0;
    v16 = v26;
    v23 = i;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x25303F560](v15, a3);
      }

      else
      {
        if (v15 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v18 = *(a3 + 8 * v15 + 32);
      }

      i = v18;
      v25 = v18;
      a1(&v25);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v26 = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_24E12F508(v19 > 1, v20 + 1, 1);
        v16 = v26;
      }

      *(v16 + 16) = v20 + 1;
      OUTLINED_FUNCTION_23_18();
      sub_24E31459C(v10, v16 + v21 + *(v22 + 72) * v20, type metadata accessor for SmallPlayerCardData);
      ++v15;
      if (v17 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_24E310ABC(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24E348878())
  {
    v23 = MEMORY[0x277D84F90];
    sub_24E12F688(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v23;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25303F560](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(a3 + 8 * v8 + 32);
      }

      v4 = v11;
      v20 = v11;
      a1(&v21, &v20);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v12 = v21;
      v13 = v22;
      v23 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      v4 = (v15 + 1);
      if (v15 >= v14 >> 1)
      {
        v18 = v21;
        v17 = v22;
        sub_24E12F688(v14 > 1, v15 + 1, 1);
        v13 = v17;
        v12 = v18;
        v9 = v23;
      }

      *(v9 + 16) = v4;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      ++v8;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_24E310C68(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for ActivityFeedLockupView();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_24E12F970(0, v10, 0);
  v11 = v21;
  v12 = *(type metadata accessor for ActivityFeedLockupViewModel() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_24E12F970(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_24E31459C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for ActivityFeedLockupView);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_24E310E64(void *a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>)
{
  LODWORD(v249) = a7;
  v252 = a6;
  v254 = a4;
  v259 = a2;
  v12 = sub_24E343028();
  OUTLINED_FUNCTION_0_14();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  v18 = v17 - v16;
  v19 = sub_24E343288();
  OUTLINED_FUNCTION_0_14();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v23);
  v25 = &v233 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v26 - 8);
  MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v30);
  v255 = a1;
  v256 = a1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships;
  v258 = *(*(a1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships) + 16);
  if (!v258)
  {
LABEL_52:
    type metadata accessor for ActivityFeedLockupViewModel();
    OUTLINED_FUNCTION_8_6();
    OUTLINED_FUNCTION_18();

    __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
    return;
  }

  v233 = v33;
  v241 = v32;
  v239 = a5;
  v240 = a3;
  v235 = v18;
  v236 = v14;
  v237 = v12;
  v238 = v25;
  v253 = &v233 - v31;
  v243 = v21;
  v251 = v19;
  v250 = a8;

  v35 = 0;
  v36 = (v34 + 80);
  v37 = MEMORY[0x277D84F90];
  for (i = v34; ; v34 = i)
  {
    if (v258 == v35)
    {

      v47 = 0;
      v48 = *(v37 + 16);
      v49 = MEMORY[0x277D84F90];
LABEL_11:
      v50 = v37 + 40 + 16 * v47;
      while (v48 != v47)
      {
        if (v47 >= *(v37 + 16))
        {
          goto LABEL_96;
        }

        if (v259[2])
        {

          v51 = sub_24E26AE3C();
          if (v52)
          {
            v53 = *(v259[7] + 8 * v51);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_5_10();
              sub_24E07805C();
              v49 = v57;
            }

            v55 = *(v49 + 16);
            v54 = *(v49 + 24);
            if (v55 >= v54 >> 1)
            {
              OUTLINED_FUNCTION_14_2(v54);
              sub_24E07805C();
              v49 = v58;
            }

            ++v47;
            *(v49 + 16) = v55 + 1;
            v56 = v49 + 40 * v55;
            *(v56 + 32) = v53;
            *(v56 + 40) = 0;
            *(v56 + 48) = 0;
            *(v56 + 56) = 0;
            *(v56 + 64) = 0;
            goto LABEL_11;
          }
        }

        v50 += 16;
        ++v47;
      }

      if (*(v49 + 16))
      {
        OUTLINED_FUNCTION_28_21();
      }

      else
      {

        OUTLINED_FUNCTION_28_21();
        v59 = *v50;
        v60 = *(*v50 + 16);
        v49 = MEMORY[0x277D84F90];
        if (v60)
        {
          __dst[0] = MEMORY[0x277D84F90];

          sub_24E12F898(0, v60, 0);
          v61 = __dst[0];
          i = v59;
          v62 = (v59 + 80);
          do
          {
            v64 = *(v62 - 2);
            v63 = *(v62 - 1);
            v65 = HIBYTE(v63) & 0xF;
            if ((v63 & 0x2000000000000000) == 0)
            {
              v65 = v64 & 0xFFFFFFFFFFFFLL;
            }

            if (v65)
            {

              v66 = 0;
              v67 = 0;
              v50 = 1;
              v68 = v63;
            }

            else
            {
              v69 = *v62;
              v258 = *(v62 - 5);

              v70 = v69;
              v71 = [v70 playerID];
              v64 = sub_24E347CF8();
              v68 = v72;

              v73 = sub_24E0C5B1C(v70);
              v67 = v74;

              if (v67)
              {
                v66 = v73;
              }

              else
              {
                v66 = 0;
              }

              if (!v67)
              {
                v67 = 0xE000000000000000;
              }

              v50 = 2;
            }

            v75 = v61;
            __dst[0] = v61;
            v77 = *(v61 + 16);
            v76 = *(v61 + 24);
            if (v77 >= v76 >> 1)
            {
              v79 = OUTLINED_FUNCTION_14_2(v76);
              sub_24E12F898(v79, v77 + 1, 1);
              v75 = __dst[0];
            }

            *(v75 + 16) = v77 + 1;
            v61 = v75;
            v78 = v75 + 40 * v77;
            *(v78 + 32) = v64;
            *(v78 + 40) = v68;
            *(v78 + 48) = v66;
            *(v78 + 56) = v67;
            *(v78 + 64) = v50;
            v62 += 7;
            --v60;
          }

          while (v60);

          v49 = v61;
          OUTLINED_FUNCTION_28_21();
        }

        if (!*(v49 + 16))
        {

          goto LABEL_52;
        }
      }

      v80 = *(v50 + 8);
      if (*(v80 + 16))
      {
        v81 = *(v80 + 96);
        if (v81)
        {
          v82 = *(v81 + 56);
        }

        else
        {
          v82 = 5;
        }

        swift_bridgeObjectRetain_n();

        v86 = OUTLINED_FUNCTION_19_1();
        v88 = sub_24E130ED0(v86, v87, v259);

        v234 = v82;
        if (v88)
        {
          v259 = v88;

          i = 0;
          LODWORD(v258) = 0;
          goto LABEL_58;
        }

        if (v81)
        {

          v89 = *(v81 + 24);
          v259 = *(v81 + 16);
          i = v89;

          v84 = 1;
        }

        else
        {

          OUTLINED_FUNCTION_22_34();
        }

        v85 = &v264;
      }

      else
      {
        OUTLINED_FUNCTION_22_34();
        LODWORD(v258) = v83;
        v84 = 5;
        v85 = &__src[52];
      }

      *(v85 - 64) = v84;
LABEL_58:

      v95 = OUTLINED_FUNCTION_3_137();
      sub_24E150D04(v95, v96);
      v98 = v97;

      if (v98)
      {
        v99 = [v98 adamID];

        v100 = [v99 stringValue];
        v242 = sub_24E347CF8();
        v245 = v101;
      }

      else
      {
        v242 = 0;
        v245 = 0xE000000000000000;
      }

      v102 = v255;
      v244 = v49;
      if (v254 && v252)
      {
        __dst[3] = &type metadata for GKFeatureFlags;
        __dst[4] = sub_24DFA0CB4();
        LOBYTE(__dst[0]) = 2;

        v103 = sub_24E3435A8();
        __swift_destroy_boxed_opaque_existential_1(__dst);
        if (v103)
        {
          v104 = (v102 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_compactTitle);
          v102 = *(v102 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_compactTitle + 8);
          if (v102)
          {
            v103 = *v104;
            v105 = HIBYTE(v102) & 0xF;
            if ((v102 & 0x2000000000000000) == 0)
            {
              v105 = v103 & 0xFFFFFFFFFFFFLL;
            }

            if (v105)
            {
            }
          }
        }

        OUTLINED_FUNCTION_27_18();

        v106 = OUTLINED_FUNCTION_11_57();
        v246 = sub_24E0EFFC0(v106, v107, v108, v109, v110, v111, v112, 0);
        v248 = v113;

        OUTLINED_FUNCTION_27_18();

        v114 = OUTLINED_FUNCTION_11_57();
        v241 = sub_24E0EFFC0(v114, v115, v116, v117, v118, v119, v120, 1);
        v122 = v121;

        OUTLINED_FUNCTION_27_18();

        sub_24E150D04(v103, v102);
        v124 = v123;

        v125 = v255;
        v126 = v245;
        if (v124)
        {
          if ((v249 & 1) == 0)
          {
            v201 = v124;
            v202 = [v201 adamID];
            v203 = [v202 stringValue];

            v204 = sub_24E347CF8();
            v206 = v205;

            v207 = [v201 bundleIdentifier];
            v208 = sub_24E347CF8();
            v210 = v209;

            v125 = v255;
            *__src = v204;
            *&__src[8] = v206;
            *&__src[16] = v208;
            *&__src[24] = v210;
            *&__src[32] = v239;
            *&__src[40] = v252;
            *&__src[48] = v240;
            *&__src[56] = v254;
            __src[64] = 0;
            memcpy(__dst, __src, 0x41uLL);
            v263 = 3;

            sub_24E18F520(__dst, v253);

            sub_24DF8BFF4(__src, &qword_27F1E6A58);
            goto LABEL_86;
          }
        }

        OUTLINED_FUNCTION_8_6();
        __swift_storeEnumTagSinglePayload(v127, v128, v129, v251);
LABEL_86:
        *__src = *(v125 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_brickType);

        sub_24E348BA8();
        if (static GKFeatureFlags.shouldDeepLinkToGameCenterUI.getter())
        {
          v211 = v247;
          sub_24DF90CA0(v125, v247);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E39C0);
          v212 = sub_24E342F68();
          OUTLINED_FUNCTION_6_15(v212);
          *(swift_allocObject() + 16) = xmmword_24E37B2E0;
          sub_24E342F38();
          OUTLINED_FUNCTION_2_132();
          sub_24E342F38();
          v213 = OUTLINED_FUNCTION_2_132();
          OUTLINED_FUNCTION_30_15(v213);
          sub_24E342F38();
          sub_24E342F38();
          sub_24E342F38();
          v214 = v235;
          sub_24E343018();
          OUTLINED_FUNCTION_7_81();
          sub_24E343008();
          OUTLINED_FUNCTION_18_46();
          sub_24E342F88();
          v211 = v247;
          sub_24E342FA8();

          (*(v236 + 8))(v214, v237);
        }

        v215 = v250;
        v216 = v251;
        if (__swift_getEnumTagSinglePayload(v211, 1, v251) != 1)
        {
          v219 = v243;
          v220 = v238;
          (*(v243 + 32))(v238, v211, v216);
          v221 = type metadata accessor for ActivityFeedLockupViewModel();
          v222 = *(v219 + 16);
          v222(v215 + v221[6], v220, v216);
          OUTLINED_FUNCTION_22_1();
          __swift_storeEnumTagSinglePayload(v223, v224, v225, v216);
          v222(v215 + v221[8], v220, v216);
          OUTLINED_FUNCTION_22_1();
          __swift_storeEnumTagSinglePayload(v226, v227, v228, v216);
          v229 = v253;
          sub_24DFC1E40(v253, v215 + v221[11]);
          sub_24E343398();
          (*(v219 + 8))(v220, v216);
          sub_24DF8BFF4(v229, &qword_27F1DEFB8);
          *(v215 + v221[5]) = v244;
          OUTLINED_FUNCTION_29_18((v215 + v221[7]));
          v230 = (v215 + v221[9]);
          *v230 = v241;
          v230[1] = v122;
          OUTLINED_FUNCTION_29_18((v215 + v221[10]));
          *(v231 + 16) = 0;
          *(v231 + 24) = 0;
          *(v231 + 32) = v258;
          *(v215 + v221[12]) = v234;
          v232 = (v215 + v221[13]);
          *v232 = v242;
          v232[1] = v126;
          *(v215 + v221[14]) = 0;
          OUTLINED_FUNCTION_22_1();
          v200 = v221;
          goto LABEL_94;
        }

        OUTLINED_FUNCTION_25_19();
        sub_24DF8BFF4(v217, v218);

        OUTLINED_FUNCTION_1_154();

        OUTLINED_FUNCTION_25_19();
        goto LABEL_91;
      }

      v130 = v254 != 0;
      v131 = *(v50 + 16);
      OUTLINED_FUNCTION_14_31();
      v133 = *(v132 + 24);

      v134 = OUTLINED_FUNCTION_3_137();
      v247 = sub_24E0EFFC0(v134, v135, v136, v137, v131, v133, v130, 0);
      v254 = v138;

      OUTLINED_FUNCTION_14_31();
      OUTLINED_FUNCTION_14_31();
      OUTLINED_FUNCTION_14_31();
      v140 = *(v139 + 16);
      OUTLINED_FUNCTION_14_31();
      v142 = *(v141 + 24);

      v143 = OUTLINED_FUNCTION_3_137();
      v240 = sub_24E0EFFC0(v143, v144, v145, v146, v140, v142, v130, 1);
      v252 = v147;

      OUTLINED_FUNCTION_28_21();

      v148 = OUTLINED_FUNCTION_3_137();
      sub_24E150D04(v148, v149);
      v151 = v150;

      v152 = v250;
      v153 = v253;
      if (v151)
      {
        if ((v249 & 1) == 0)
        {
          v158 = v151;
          v159 = [v158 adamID];
          v160 = [v159 stringValue];

          v161 = sub_24E347CF8();
          v163 = v162;

          v164 = [v158 bundleIdentifier];
          v165 = sub_24E347CF8();
          v166 = v152;
          v168 = v167;

          *__src = v161;
          *&__src[8] = v163;
          *&__src[16] = v165;
          *&__src[24] = v168;
          v152 = v166;
          memset(&__src[32], 0, 32);
          __src[64] = 1;
          memcpy(__dst, __src, 0x41uLL);
          v263 = 3;
          sub_24E18F520(__dst, v153);

          sub_24DF8BFF4(__src, &qword_27F1E6A58);
          v154 = v251;
          goto LABEL_78;
        }
      }

      OUTLINED_FUNCTION_8_6();
      v154 = v251;
      __swift_storeEnumTagSinglePayload(v155, v156, v157, v251);
LABEL_78:
      v169 = *v142;
      if (!*(*v142 + 16))
      {

        sub_24DF8BFF4(v153, &qword_27F1DEFB8);

        OUTLINED_FUNCTION_1_154();

LABEL_92:
        type metadata accessor for ActivityFeedLockupViewModel();
        OUTLINED_FUNCTION_8_6();
LABEL_94:
        __swift_storeEnumTagSinglePayload(v197, v198, v199, v200);
        OUTLINED_FUNCTION_18();
        return;
      }

      v170 = v169[5];
      v171 = v169[7];
      v173 = v169[9];
      v172 = v169[10];
      *__src = v169[4];
      *&__src[8] = v170;
      __src[16] = 1;
      v261 = 0;
      swift_bridgeObjectRetain_n();

      v174 = v172;
      v175 = v246;
      sub_24E18F520(__src, v246);

      if (__swift_getEnumTagSinglePayload(v175, 1, v154) != 1)
      {
        v239 = v174;
        v249 = v173;
        v256 = v171;
        v178 = v152;
        (*(v243 + 32))(v248, v175, v154);
        v179 = v241;
        OUTLINED_FUNCTION_8_6();
        __swift_storeEnumTagSinglePayload(v180, v181, v182, v154);
        if (*(v255 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_mainActionLink + 8))
        {

          v183 = v233;
          sub_24E343268();

          sub_24DF8BFF4(v179, &qword_27F1DEFB8);
          sub_24E211FFC(v183, v179);
        }

        v184 = type metadata accessor for ActivityFeedLockupViewModel();
        v185 = v243;
        v186 = v251;
        (*(v243 + 16))(v178 + v184[6], v248, v251);
        OUTLINED_FUNCTION_22_1();
        __swift_storeEnumTagSinglePayload(v187, v188, v189, v186);
        sub_24DFC1E40(v179, v178 + v184[8]);
        v190 = v253;
        sub_24DFC1E40(v253, v178 + v184[11]);
        v191 = v259;
        v192 = i;
        v193 = v258;
        sub_24E274F0C(v259, i, 0, 0, v258);
        sub_24E343398();

        sub_24E274F20(v191, v192, 0, 0, v193);
        sub_24DF8BFF4(v241, &qword_27F1DEFB8);
        (*(v185 + 8))(v248, v186);
        sub_24DF8BFF4(v190, &qword_27F1DEFB8);
        *(v178 + v184[5]) = v244;
        v194 = (v178 + v184[7]);
        v195 = v254;
        *v194 = v247;
        v194[1] = v195;
        OUTLINED_FUNCTION_29_18((v178 + v184[9]));
        v196 = v178 + v184[10];
        *v196 = v191;
        *(v196 + 8) = v192;
        *(v196 + 16) = 0;
        *(v196 + 24) = 0;
        *(v196 + 32) = v193;
        *(v178 + v184[12]) = v234;
        OUTLINED_FUNCTION_29_18((v178 + v184[13]));
        *(v178 + v184[14]) = 0;
        OUTLINED_FUNCTION_22_1();
        v200 = v184;
        goto LABEL_94;
      }

      sub_24DF8BFF4(v253, &qword_27F1DEFB8);

      OUTLINED_FUNCTION_1_154();

      v176 = v175;
      v177 = &qword_27F1DEFB8;
LABEL_91:
      sub_24DF8BFF4(v176, v177);
      goto LABEL_92;
    }

    if (v35 >= *(v34 + 16))
    {
      break;
    }

    v38 = *(v36 - 6);
    v39 = *(v36 - 5);
    v40 = *v36;
    swift_bridgeObjectRetain_n();

    v41 = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_10();
      sub_24E076A08();
      v37 = v45;
    }

    v43 = *(v37 + 16);
    v42 = *(v37 + 24);
    if (v43 >= v42 >> 1)
    {
      OUTLINED_FUNCTION_14_2(v42);
      sub_24E076A08();
      v37 = v46;
    }

    *(v37 + 16) = v43 + 1;
    v44 = v37 + 16 * v43;
    *(v44 + 32) = v38;
    *(v44 + 40) = v39;
    v36 += 7;
    ++v35;
  }

  __break(1u);
LABEL_96:
  __break(1u);
}

uint64_t GameCategoryFilter.rawValue.getter()
{
  v1 = 0x6F2D656461637261;
  if (*v0 != 1)
  {
    v1 = 0x616372612D6E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7105633;
  }
}

GameCenterUI::GameCategoryFilter_optional __swiftcall GameCategoryFilter.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24E348B78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24E3126C8@<X0>(uint64_t *a1@<X8>)
{
  result = GameCategoryFilter.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static ActivityFeedLockupVendor.fetchFeedViews(theme:actionHandlers:bundleID:)()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_10_70(v1, v2);
  *(v0 + 112) = 3;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_49_2(v3);
  OUTLINED_FUNCTION_19_1();

  return static ActivityFeedLockupVendor.fetchFilteredFeedModels(bundleID:gameCategoryFilter:)();
}

uint64_t sub_24E312794()
{
  OUTLINED_FUNCTION_8_9();
  v3 = v2;
  OUTLINED_FUNCTION_13_5();
  v5 = v4;
  OUTLINED_FUNCTION_9_10();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24E3128A8()
{
  v2 = OUTLINED_FUNCTION_34_17();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  OUTLINED_FUNCTION_25_19();
  v6 = sub_24E310C68(v3, v4, v5);

  OUTLINED_FUNCTION_21_5();

  return v7(v6);
}

uint64_t static ActivityFeedLockupVendor.fetchFilteredFeedModels(bundleID:gameCategoryFilter:)()
{
  OUTLINED_FUNCTION_8_9();
  v2 = v1;
  v3 = sub_24E3433A8();
  *(v0 + 80) = v3;
  OUTLINED_FUNCTION_6_15(v3);
  *(v0 + 88) = v4;
  *(v0 + 96) = swift_task_alloc();
  *(v0 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E64B8);
  *(v0 + 112) = swift_task_alloc();
  v5 = type metadata accessor for ActivityFeedLockupViewModel();
  *(v0 + 120) = v5;
  OUTLINED_FUNCTION_6_15(v5);
  *(v0 + 128) = v6;
  *(v0 + 136) = swift_task_alloc();
  *(v0 + 144) = swift_task_alloc();
  *(v0 + 176) = *v2;
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_49_2(v7);
  OUTLINED_FUNCTION_25_19();

  return sub_24E3136F8(v8, v9, v10, (v0 + 176));
}

uint64_t sub_24E312AF8()
{
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v4;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

id sub_24E312C00()
{
  v42 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 88);
  result = sub_24DFD8654();
  v4 = 0;
  v37 = v1 & 0xC000000000000001;
  v38 = result;
  v35 = v1 + 32;
  v36 = v1 & 0xFFFFFFFFFFFFFF8;
  v34 = MEMORY[0x277D84F90];
  while (v38 != v4)
  {
    if (v37)
    {
      result = MEMORY[0x25303F560](v4, *(v0 + 160));
    }

    else
    {
      if (v4 >= *(v36 + 16))
      {
        goto LABEL_22;
      }

      result = *(v35 + 8 * v4);
    }

    v5 = result;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 80);
    v9 = [result instrumentationKey];
    v10 = sub_24E347CF8();
    v12 = v11;

    *(v0 + 16) = v10;
    *(v0 + 24) = v12;
    *(v0 + 32) = v4;
    *(v0 + 40) = 0xD000000000000012;
    *(v0 + 48) = 0x800000024E3B30A0;
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    sub_24E343398();
    (*(v2 + 16))(v7, v6, v8);
    sub_24DFDC008();
    sub_24E348918();
    (*(v2 + 8))(v6, v8);
    type metadata accessor for ActivityFeedBaseData();
    swift_allocObject();
    v13 = v5;
    sub_24E0E32D0(&v41, v13, 0, 0, (v0 + 16), 1, v39);
    if (v14)
    {
      v15 = v14;
      v16 = *(v0 + 112);
      sub_24DF88A8C(0, &qword_280BE0110);
      v17 = sub_24E347C28();
      sub_24E310E64(v15, v17, 0, 0, 0, 0, 0, v16);
    }

    else
    {
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    }

    v22 = *(v0 + 112);
    if (__swift_getEnumTagSinglePayload(v22, 1, *(v0 + 120)) == 1)
    {
      result = sub_24DF8BFF4(v22, &qword_27F1E64B8);
      ++v4;
    }

    else
    {
      v24 = *(v0 + 136);
      v23 = *(v0 + 144);
      sub_24E31459C(v22, v23, type metadata accessor for ActivityFeedLockupViewModel);
      sub_24E31459C(v23, v24, type metadata accessor for ActivityFeedLockupViewModel);
      v25 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_5_10();
        sub_24E078AA8();
        v25 = v31;
      }

      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
      if (v27 >= v26 >> 1)
      {
        OUTLINED_FUNCTION_14_2(v26);
        sub_24E078AA8();
        v25 = v32;
      }

      *(v25 + 16) = v27 + 1;
      OUTLINED_FUNCTION_23_18();
      v34 = v25;
      result = sub_24E31459C(v30, v25 + v28 + *(v29 + 72) * v27, type metadata accessor for ActivityFeedLockupViewModel);
      ++v4;
    }
  }

  OUTLINED_FUNCTION_21_5();

  return v33(v34);
}

uint64_t sub_24E313000()
{
  OUTLINED_FUNCTION_8_9();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ActivityFeedLockupVendor.fetchFilteredFeedViews(theme:actionHandlers:bundleID:gameCategoryFilter:)()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_10_70(v1, v2);
  *(v0 + 112) = *v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_49_2(v4);
  OUTLINED_FUNCTION_19_1();

  return static ActivityFeedLockupVendor.fetchFilteredFeedModels(bundleID:gameCategoryFilter:)();
}

uint64_t sub_24E313134()
{
  OUTLINED_FUNCTION_8_9();
  v3 = v2;
  OUTLINED_FUNCTION_13_5();
  v5 = v4;
  OUTLINED_FUNCTION_9_10();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24E313248()
{
  v2 = OUTLINED_FUNCTION_34_17();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  OUTLINED_FUNCTION_25_19();
  v6 = sub_24E310C68(v3, v4, v5);

  OUTLINED_FUNCTION_21_5();

  return v7(v6);
}

double sub_24E313308@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a3[1];
  v18 = *a3;
  v19 = v8;
  v9 = a3[3];
  v20 = a3[2];
  v21 = v9;
  v10 = type metadata accessor for ActivityFeedLockupView();
  sub_24E3144DC(a1, a4 + v10[5], type metadata accessor for ActivityFeedLockupViewModel);
  sub_24E3144DC(a2, a4 + v10[6], type metadata accessor for ActivityFeedLockupTheme);
  type metadata accessor for ArtworkLoader();
  sub_24E1FF9A8(a3, &v17);
  *a4 = sub_24E2002B8();
  v11 = a4 + v10[8];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v10[9];
  *(a4 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0);
  swift_storeEnumTagMultiPayload();
  v13 = (a4 + v10[7]);
  v14 = v19;
  *v13 = v18;
  v13[1] = v14;
  result = *&v20;
  v16 = v21;
  v13[2] = v20;
  v13[3] = v16;
  return result;
}

uint64_t static ActivityFeedLockupVendor.fetchFeedModels(bundleID:)()
{
  OUTLINED_FUNCTION_8_9();
  v1 = sub_24E3433A8();
  *(v0 + 80) = v1;
  OUTLINED_FUNCTION_6_15(v1);
  *(v0 + 88) = v2;
  *(v0 + 96) = swift_task_alloc();
  *(v0 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E64B8);
  *(v0 + 112) = swift_task_alloc();
  v3 = type metadata accessor for ActivityFeedLockupViewModel();
  *(v0 + 120) = v3;
  OUTLINED_FUNCTION_6_15(v3);
  *(v0 + 128) = v4;
  *(v0 + 136) = swift_task_alloc();
  *(v0 + 144) = swift_task_alloc();
  *(v0 + 176) = 3;
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_49_2(v5);
  OUTLINED_FUNCTION_25_19();

  return sub_24E3136F8(v6, v7, v8, (v0 + 176));
}

uint64_t sub_24E3135F0()
{
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v4;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24E3136F8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v4 + 96) = a2;
  *(v4 + 104) = a3;
  *(v4 + 88) = a1;
  *(v4 + 136) = *a4;
  return MEMORY[0x2822009F8](sub_24E313724, 0, 0);
}

uint64_t sub_24E313724()
{
  type metadata accessor for GameCenter();
  swift_initStaticObject();
  OUTLINED_FUNCTION_25_19();
  *(v0 + 112) = sub_24E2F57E0(v1, v2, v3, 0, 0, v4);
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_49_2(v5);

  return sub_24E313B48();
}

uint64_t sub_24E31381C()
{
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v5 = v4;
  *(v7 + 128) = v6;

  if (v0)
  {
    v8 = *(v4 + 8);

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_35_3();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_24E313960()
{
  v1 = *(v0 + 128);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    goto LABEL_19;
  }

  v3 = sub_24E078DC4(*(v0 + 128));
  if (!v3)
  {
LABEL_18:

    goto LABEL_19;
  }

  v4 = v3;
  if (!sub_24DFD8654())
  {

    goto LABEL_18;
  }

  sub_24DFFA844(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25303F560](0, v4);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = sub_24E078E40(v6);
  if (!v7)
  {

    goto LABEL_18;
  }

  v13 = v6;
  v14 = v2;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;
    do
    {
      sub_24DFB4104(v9, v0 + 16);
      sub_24E024710((v0 + 16), (v0 + 48));
      sub_24DF88A8C(0, &qword_280BDFA88);
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 80))
      {
        MEMORY[0x25303EA30]();
        v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10 >> 1)
        {
          OUTLINED_FUNCTION_14_2(v10);
          sub_24E347F48();
        }

        sub_24E347F88();
        v2 = v14;
      }

      v9 += 32;
      --v8;
    }

    while (v8);
  }

LABEL_19:
  OUTLINED_FUNCTION_21_5();

  return v11(v2);
}

uint64_t sub_24E313B48()
{
  v2 = *v0;
  v3 = sub_24E314538();
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_24E313C20;

  return MEMORY[0x282180360](v1 + 16, v2, v3);
}

uint64_t sub_24E313C20()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_13_5();
  v3 = v2;
  OUTLINED_FUNCTION_9_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 16);
    v10 = *(v5 + 8);

    return v10(v9);
  }
}

void static ActivityFeedLockupVendor.makeRemoteDashboardURL(widgetId:widgetFamily:)(uint64_t a1@<X8>)
{
  v2 = sub_24E343028();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  if (static GKFeatureFlags.shouldDeepLinkToGameCenterUI.getter())
  {
    sub_24DF90350(a1);
  }

  else
  {
    sub_24E343018();
    OUTLINED_FUNCTION_7_81();
    sub_24E343008();
    OUTLINED_FUNCTION_18_46();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E39C0);
    v9 = sub_24E342F68();
    OUTLINED_FUNCTION_6_15(v9);
    *(swift_allocObject() + 16) = xmmword_24E36A270;
    OUTLINED_FUNCTION_2_132();
    sub_24E342F38();
    v10 = OUTLINED_FUNCTION_2_132();
    OUTLINED_FUNCTION_30_15(v10);
    sub_24E342F38();
    sub_24E342F88();
    sub_24E342FA8();
    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_18();
}

void static ActivityFeedLockupVendor.makeRemoteLaunchGameURL(adamID:bundleID:)()
{
  OUTLINED_FUNCTION_26_24();
  v2 = 0;
  v3 = 3;
  sub_24E18F520(v1, v0);
}

void static ActivityFeedLockupVendor.makeRemoteLaunchGameURL(adamID:bundleID:isFromAvatar:)()
{
  OUTLINED_FUNCTION_26_24();
  v3 = v0;
  v4 = 3;
  sub_24E18F520(v2, v1);
}

void static ActivityFeedLockupVendor.makeRemoteLaunchTrampolineURL(adamId:bundleId:widgetId:widgetSize:localizedName:topic:)()
{
  v7 = sub_24E343028();
  OUTLINED_FUNCTION_0_14();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v5 = v4 - v3;
  static GKFeatureFlags.shouldDeepLinkToGameCenterUI.getter();
  sub_24E343018();
  OUTLINED_FUNCTION_7_81();
  sub_24E343008();
  MEMORY[0x253039B20](0x706D617274637361, 0xED0000656E696C6FLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E39C0);
  v6 = sub_24E342F68();
  OUTLINED_FUNCTION_6_15(v6);
  *(swift_allocObject() + 16) = xmmword_24E36D920;
  sub_24E342F38();
  sub_24E342F38();
  OUTLINED_FUNCTION_2_132();
  sub_24E342F38();
  sub_24E348BA8();
  OUTLINED_FUNCTION_2_132();
  sub_24E342F38();

  sub_24E342F38();
  sub_24E342F38();

  sub_24E342F38();
  sub_24E342F88();
  sub_24E342FA8();
  (*(v1 + 8))(v5, v7);
  OUTLINED_FUNCTION_18();
}

unint64_t sub_24E314300()
{
  result = qword_27F1EAE58;
  if (!qword_27F1EAE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EAE58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GameCategoryFilter(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActivityFeedLockupVendor(_BYTE *result, int a2, int a3)
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

uint64_t sub_24E3144DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

unint64_t sub_24E314538()
{
  result = qword_280BDFB98;
  if (!qword_280BDFB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EAA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BDFB98);
  }

  return result;
}

uint64_t sub_24E31459C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

void OUTLINED_FUNCTION_1_154()
{
  v2 = *(v0 - 272);
  v3 = *(v0 - 288);
  v4 = *(v0 - 280);

  sub_24E274F20(v2, v3, 0, 0, v4);
}

__n128 OUTLINED_FUNCTION_10_70(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  v3 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  result = *(a2 + 32);
  v5 = *(a2 + 48);
  *(v2 + 48) = result;
  *(v2 + 64) = v5;
  return result;
}

void OUTLINED_FUNCTION_18_46()
{

  JUMPOUT(0x253039B20);
}

uint64_t OUTLINED_FUNCTION_27_18()
{
}

void OUTLINED_FUNCTION_29_18(void *a1@<X8>)
{
  v3 = *(v1 - 256);
  *a1 = v2;
  a1[1] = v3;
}

uint64_t OUTLINED_FUNCTION_34_17()
{

  return swift_task_alloc();
}

uint64_t sub_24E3147C4()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DDE20 != -1)
  {
    swift_once();
  }

  v4 = sub_24E344158();
  v5 = __swift_project_value_buffer(v4, qword_27F1EAE60);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  qword_27F1EAE90 = sub_24E3444F8();
  unk_27F1EAE98 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(qword_27F1EAE78);
  v9[3] = v0;
  v9[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E3149B8()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DDE30 != -1)
  {
    swift_once();
  }

  v4 = sub_24E344158();
  v5 = __swift_project_value_buffer(v4, qword_27F1EAEA0);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  qword_27F1EAED0 = sub_24E3444F8();
  unk_27F1EAED8 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(qword_27F1EAEB8);
  v9[3] = v0;
  v9[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

char *sub_24E314B80(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = OBJC_IVAR____TtC12GameCenterUI21LeaderboardLockupView_titleLabel;
  if (qword_27F1DDE20 != -1)
  {
    OUTLINED_FUNCTION_6_104();
    swift_once();
  }

  v14 = sub_24E344158();
  v15 = __swift_project_value_buffer(v14, qword_27F1EAE60);
  v16 = *(*(v14 - 8) + 16);
  v16(v12, v15, v14);
  OUTLINED_FUNCTION_1_22();
  v17 = type metadata accessor for DynamicTypeLabel();
  v18 = objc_allocWithZone(v17);
  *&v4[v13] = OUTLINED_FUNCTION_0_29();
  v19 = OBJC_IVAR____TtC12GameCenterUI21LeaderboardLockupView_subtitleLabel;
  if (qword_27F1DDE30 != -1)
  {
    OUTLINED_FUNCTION_5_115();
    swift_once();
  }

  v20 = __swift_project_value_buffer(v14, qword_27F1EAEA0);
  v16(v12, v20, v14);
  OUTLINED_FUNCTION_1_22();
  v21 = objc_allocWithZone(v17);
  *&v4[v19] = OUTLINED_FUNCTION_0_29();
  v22 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12GameCenterUI21LeaderboardLockupView_playerPairs] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12GameCenterUI21LeaderboardLockupView_playerRankLabels] = v22;
  v23 = &v4[OBJC_IVAR____TtC12GameCenterUI21LeaderboardLockupView_playerSize];
  v24 = type metadata accessor for LeaderboardLockupView();
  *v23 = 0;
  *(v23 + 1) = 0;
  v32.receiver = v5;
  v32.super_class = v24;
  v25 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a1, a2, a3, a4);
  v26 = *MEMORY[0x277D768C8];
  v27 = *(MEMORY[0x277D768C8] + 8);
  v28 = *(MEMORY[0x277D768C8] + 16);
  v29 = *(MEMORY[0x277D768C8] + 24);
  v30 = v25;
  [v30 setLayoutMargins_];
  [v30 addSubview_];
  [v30 addSubview_];

  return v30;
}

void sub_24E314E18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = OBJC_IVAR____TtC12GameCenterUI21LeaderboardLockupView_titleLabel;
  if (qword_27F1DDE20 != -1)
  {
    OUTLINED_FUNCTION_6_104();
    swift_once();
  }

  v5 = sub_24E344158();
  v6 = __swift_project_value_buffer(v5, qword_27F1EAE60);
  v7 = *(*(v5 - 8) + 16);
  v7(v3, v6, v5);
  OUTLINED_FUNCTION_1_22();
  v8 = type metadata accessor for DynamicTypeLabel();
  v9 = objc_allocWithZone(v8);
  *(v0 + v4) = OUTLINED_FUNCTION_0_29();
  v10 = OBJC_IVAR____TtC12GameCenterUI21LeaderboardLockupView_subtitleLabel;
  if (qword_27F1DDE30 != -1)
  {
    OUTLINED_FUNCTION_5_115();
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27F1EAEA0);
  v7(v3, v11, v5);
  OUTLINED_FUNCTION_1_22();
  v12 = objc_allocWithZone(v8);
  *(v0 + v10) = OUTLINED_FUNCTION_0_29();
  v13 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI21LeaderboardLockupView_playerPairs) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI21LeaderboardLockupView_playerRankLabels) = v13;
  v14 = (v0 + OBJC_IVAR____TtC12GameCenterUI21LeaderboardLockupView_playerSize);
  *v14 = 0;
  v14[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

__n128 sub_24E315028@<Q0>(__n128 *a1@<X8>)
{
  v2 = MEMORY[0x277D85048];
  v3 = MEMORY[0x277D225F8];
  v4 = OBJC_IVAR____TtC12GameCenterUI21LeaderboardLockupView_playerSize;
  a1[2].n128_u64[1] = MEMORY[0x277D85048];
  a1[3].n128_u64[0] = v3;
  a1[1].n128_u64[0] = 0x4014000000000000;
  a1[5].n128_u64[0] = v2;
  a1[5].n128_u64[1] = v3;
  a1[3].n128_u64[1] = 0x4024000000000000;
  result = *(v1 + v4);
  *a1 = result;
  return result;
}

void sub_24E3150B8()
{
  OUTLINED_FUNCTION_44();
  v1 = v0;
  v2 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v9 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v15 = v14 - v13;
  [v0 layoutMargins];
  sub_24E348538();
  sub_24E3161E8(&v42);
  v16 = *(MEMORY[0x277D22A78] + 8);
  v17 = *(v49 + 16);
  v38 = v11;
  if (v17)
  {
    v36 = v8;
    v37 = v2;
    v35 = v49;
    v18 = v49 + 32;
    v19 = 0.0;
    do
    {
      sub_24E0D0BA4(v18, v41);
      sub_24DF98AC8(v41, v39);
      if (v40)
      {
        __swift_project_boxed_opaque_existential_1(v39, v40);
        sub_24E3440D8();
        v21 = v20;
        v23 = v22;
        v25 = v24;
        __swift_destroy_boxed_opaque_existential_1(v39);
        v26 = v44;
        v27 = v45;
        __swift_project_boxed_opaque_existential_1(&v43, v44);
        sub_24E2548A0(v26, v27);
        sub_24E344198();
        v29 = v28;
        (*(v11 + 8))(v15, v9);
        sub_24E0D0BDC(v41);
        v30 = v21 + v29 + v42.n128_f64[0];
        v31 = v23 - v25;
        if (v42.n128_f64[1] > v23 - v25)
        {
          v31 = v42.n128_f64[1];
        }
      }

      else
      {
        sub_24E0D0BDC(v41);
        sub_24DF8C95C(v39, &qword_27F1DF0C0);
        v31 = v42.n128_f64[1];
        v30 = v42.n128_f64[0];
      }

      v19 = v19 + v30;
      if (v16 < v31)
      {
        v16 = v31;
      }

      v18 += 80;
      --v17;
    }

    while (v17);
    v32 = v37;
    v8 = v36;
  }

  else
  {
    v32 = v2;
  }

  v33 = v47;
  v34 = v48;
  __swift_project_boxed_opaque_existential_1(&v46, v47);
  sub_24E2548A0(v33, v34);
  sub_24E344198();
  (*(v38 + 8))(v15, v9);
  sub_24E315B60();
  sub_24E3445F8();
  [v1 layoutMargins];
  (*(v4 + 8))(v8, v32);
  sub_24E31648C(&v42);
  OUTLINED_FUNCTION_45();
}

void sub_24E315518()
{
  OUTLINED_FUNCTION_44();
  v1 = v0;
  v2 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v59 = v7 - v6;
  v58 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v57 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v56 = v11 - v10;
  v61 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v17 = v16 - v15;
  v73.receiver = v0;
  v73.super_class = type metadata accessor for LeaderboardLockupView();
  objc_msgSendSuper2(&v73, sel_layoutSubviews);
  sub_24E3161E8(&v65);
  [v0 bounds];
  [v0 layoutMargins];
  v18 = *(MEMORY[0x277D22A78] + 8);
  v19 = v72;
  v20 = *(v72 + 16);
  v60 = v2;
  if (v20)
  {
    v55 = v4;
    v21 = v72 + 32;
    v22 = 0.0;
    do
    {
      sub_24E0D0BA4(v21, v64);
      sub_24DF98AC8(v64, v62);
      if (v63)
      {
        __swift_project_boxed_opaque_existential_1(v62, v63);
        sub_24E3440D8();
        v24 = v23;
        v26 = v25;
        v28 = v27;
        __swift_destroy_boxed_opaque_existential_1(v62);
        v29 = v67;
        v30 = v68;
        __swift_project_boxed_opaque_existential_1(&v66, v67);
        sub_24E2548A0(v29, v30);
        sub_24E344198();
        v32 = v31;
        (*(v13 + 8))(v17, v61);
        sub_24E0D0BDC(v64);
        v33 = v65.n128_f64[1];
        v34 = v24 + v32 + v65.n128_f64[0];
        if (v65.n128_f64[1] <= v26 - v28)
        {
          v33 = v26 - v28;
        }
      }

      else
      {
        sub_24E0D0BDC(v64);
        sub_24DF8C95C(v62, &qword_27F1DF0C0);
        v33 = v65.n128_f64[1];
        v34 = v65.n128_f64[0];
      }

      v22 = v22 + v34;
      if (v18 < v33)
      {
        v18 = v33;
      }

      v21 += 80;
      --v20;
    }

    while (v20);
    v35 = *(v19 + 16) + -1.0;
    v4 = v55;
  }

  else
  {
    v22 = 0.0;
    v35 = -1.0;
  }

  v36 = v70;
  v37 = v71;
  __swift_project_boxed_opaque_existential_1(&v69, v70);
  sub_24E2548A0(v36, v37);
  sub_24E344198();
  v39 = v38;
  (*(v13 + 8))(v17, v61);
  v40 = v22 + v35 * v39;
  OUTLINED_FUNCTION_9_20();
  OUTLINED_FUNCTION_8_88();
  OUTLINED_FUNCTION_4_16(v41, v42);
  OUTLINED_FUNCTION_0_33();
  v43 = CGRectGetMaxX(v74) - v40;
  OUTLINED_FUNCTION_9_20();
  OUTLINED_FUNCTION_8_88();
  OUTLINED_FUNCTION_4_16(v44, v45);
  OUTLINED_FUNCTION_0_33();
  CGRectGetMidY(v75);
  sub_24E0D06D4(v1, v56, v43, v40);
  v46 = *(v57 + 8);
  v46(v56, v58);
  sub_24E315B60();
  OUTLINED_FUNCTION_9_20();
  OUTLINED_FUNCTION_8_88();
  OUTLINED_FUNCTION_4_16(v47, v48);
  OUTLINED_FUNCTION_0_33();
  CGRectGetWidth(v76);
  OUTLINED_FUNCTION_9_20();
  OUTLINED_FUNCTION_8_88();
  OUTLINED_FUNCTION_4_16(v49, v50);
  OUTLINED_FUNCTION_0_33();
  CGRectGetHeight(v77);
  sub_24E3445F8();
  OUTLINED_FUNCTION_9_20();
  OUTLINED_FUNCTION_8_88();
  OUTLINED_FUNCTION_4_16(v51, v52);
  OUTLINED_FUNCTION_0_33();
  CGRectGetMinX(v78);
  OUTLINED_FUNCTION_9_20();
  OUTLINED_FUNCTION_8_88();
  OUTLINED_FUNCTION_4_16(v53, v54);
  OUTLINED_FUNCTION_0_33();
  CGRectGetMidY(v79);
  sub_24E344608();
  v46(v56, v58);
  (*(v4 + 8))(v59, v60);
  sub_24E31648C(&v65);
  OUTLINED_FUNCTION_45();
}

uint64_t sub_24E315B60()
{
  v36 = sub_24E344648();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v37 = v5 - v4;
  v6 = sub_24E344658();
  OUTLINED_FUNCTION_0_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v12 = v11 - v10;
  v13 = sub_24E3445E8();
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_1();
  v19 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10);
  sub_24E344688();
  *(swift_allocObject() + 16) = xmmword_24E36A270;
  v20 = *(v0 + OBJC_IVAR____TtC12GameCenterUI21LeaderboardLockupView_titleLabel);
  v42 = type metadata accessor for DynamicTypeLabel();
  v43 = MEMORY[0x277D22A58];
  v35 = v42;
  v41[0] = v20;
  v21 = qword_27F1DDE28;
  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v34 = *MEMORY[0x277D227C8];
  v33 = *(v15 + 104);
  v33(v19);
  v28 = v13;
  v32 = *MEMORY[0x277D227F0];
  v31 = *(v8 + 104);
  v31(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E344618();
  sub_24DF8A8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
  sub_24DF8A8FC();
  sub_24E3487E8();
  sub_24E344678();
  v30 = *(v2 + 8);
  v30(v37, v36);
  v29 = *(v8 + 8);
  v29(v12, v6);
  v23 = *(v15 + 8);
  v23(v19);
  sub_24DF8C95C(&v38, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(v41);
  v24 = *(v0 + OBJC_IVAR____TtC12GameCenterUI21LeaderboardLockupView_subtitleLabel);
  v42 = v35;
  v43 = MEMORY[0x277D22A58];
  v41[0] = v24;
  v25 = qword_27F1DDE38;
  v26 = v24;
  if (v25 != -1)
  {
    swift_once();
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  (v33)(v19, v34, v28);
  (v31)(v12, v32, v6);
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E344618();
  sub_24E3487E8();
  sub_24E344678();
  v30(v37, v36);
  v29(v12, v6);
  (v23)(v19, v28);
  sub_24DF8C95C(&v38, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_24E344668();
}

void sub_24E3161E8(__n128 *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI21LeaderboardLockupView_playerPairs);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v21 = MEMORY[0x277D84F90];

    sub_24E12F9C8(0, v4, 0);
    v5 = v21;
    v6 = (v3 + 40);
    v7 = 0uLL;
    v8 = MEMORY[0x277D22A58];
    v9 = MEMORY[0x277D22A68];
    do
    {
      v10 = *(v6 - 1);
      v11 = *v6;
      if (v10)
      {
        *(&v18 + 1) = type metadata accessor for DynamicTypeLabel();
        v19 = v9;
        *&v17 = v10;
      }

      else
      {
        v19 = 0;
        v17 = v7;
        v18 = v7;
      }

      *&__src[4] = type metadata accessor for ArtworkView();
      *(&__src[4] + 1) = v8;
      memset(__src, 0, 40);
      *(&__src[2] + 1) = v11;
      v12 = v11;
      v13 = v10;
      sub_24E31641C(&v17, __src);
      v21 = v5;
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_24E12F9C8((v14 > 1), v15 + 1, 1);
        v5 = v21;
      }

      *(v5 + 16) = v15 + 1;
      memcpy((v5 + 80 * v15 + 32), __src, 0x50uLL);
      v6 += 2;
      --v4;
      v7 = 0uLL;
    }

    while (v4);

    a1 = v16;
  }

  sub_24E315028(a1);
  a1[6].n128_u64[0] = v5;
}

id sub_24E316358()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LeaderboardLockupView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E31641C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF0C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id OUTLINED_FUNCTION_8_88()
{

  return [v0 (v1 + 3448)];
}

uint64_t sub_24E316520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30[-v8];
  v10 = type metadata accessor for Shelf.Presentation(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = (*(*v3 + 112))(a1, a2, v11);
  if (v14)
  {
    v15 = v14;
    (*(*v3 + 120))(a1, a2);
    ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
    v17 = v3[16];
    if (ShouldUsePadUI)
    {
      if (v17 <= 3)
      {
        v18 = qword_24E38E3F8[v17];
        v19 = qword_24E38E418[v17];
        v20 = &v13[*(v10 + 44)];
        *v20 = 0;
        *(v20 + 1) = v18;
        *(v20 + 2) = 0;
        *(v20 + 3) = v19;
        v20[32] = 0;
      }
    }

    v30[15] = v17;
    sub_24E316E78();
    sub_24E348918();
    v21 = v3[17];
    v22 = type metadata accessor for Shelf(0);
    sub_24E17AA84(v13, a3 + *(v22 + 28));
    (*(*v3 + 128))(a1);
    sub_24DF82D00(v13);
    v23 = *(v22 + 32);
    v24 = sub_24E3474B8();
    __swift_storeEnumTagSinglePayload(a3 + v23, 1, 1, v24);
    *(a3 + 40) = v21;
    *(a3 + 48) = v15;
    sub_24DF8BEB4(v9, a3 + v23);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v22);
  }

  else
  {
    type metadata accessor for Shelf(0);
    v26 = OUTLINED_FUNCTION_10_22();

    return __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  }
}

uint64_t sub_24E316798()
{
  sub_24E31685C(*(v0 + 16));
  sub_24E347DC8();

  sub_24E17A62C(*(v0 + 17));
  sub_24E347DC8();
}

uint64_t sub_24E31681C()
{
  sub_24E348D18();
  sub_24E316798();
  return sub_24E348D68();
}

unint64_t sub_24E31685C(char a1)
{
  result = 0x6979616C50776F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x65756E69746E6F63;
      break;
    case 2:
      result = 0x7974697669746361;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x72616265646973;
      break;
    case 5:
      result = 0x73646E65697266;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E31692C()
{
  sub_24E3474B8();
  v0 = OUTLINED_FUNCTION_10_22();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_24E31696C()
{
  v0 = sub_24E348B78();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24E3169DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E31696C();
  *a1 = result;
  return result;
}

unint64_t sub_24E316A0C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24E31685C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_24E316A38@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for HeaderData();
  v2 = OUTLINED_FUNCTION_10_22();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for Shelf.Presentation(0);
  v7 = v6[5];
  v8 = type metadata accessor for FooterData(0);
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v8);
  v9 = a1 + v6[11];
  result = 0.0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 1;
  v11 = a1 + v6[12];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (a1 + v6[13]);
  v13 = (a1 + v6[14]);
  v14 = (a1 + v6[15]);
  *(a1 + v6[6]) = 1;
  *v12 = 0;
  v12[1] = 0;
  *v13 = 0;
  v13[1] = 0;
  *v14 = 0;
  v14[1] = 0;
  *(a1 + v6[7]) = 1;
  *(a1 + v6[8]) = 1;
  *(a1 + v6[9]) = 1;
  *(a1 + v6[10]) = 0;
  return result;
}

uint64_t sub_24E316B10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_24E31685C(*(a1 + 16));
  v7 = v6;
  if (v5 == sub_24E31685C(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24E348C08();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = *(a1 + 17);
  v13 = *(a2 + 17);
  v14 = sub_24E17A62C(v12);
  v16 = v15;
  if (v14 == sub_24E17A62C(v13) && v16 == v17)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24E348C08();
  }

  return v11 & 1;
}

_BYTE *storeEnumTagSinglePayload for DashboardSections.Identifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E316D20()
{
  result = qword_27F1EAF08;
  if (!qword_27F1EAF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EAF08);
  }

  return result;
}

uint64_t sub_24E316DBC()
{
  sub_24E348D18();
  sub_24E316798();
  return sub_24E348D68();
}

unint64_t sub_24E316E24()
{
  result = qword_27F1EAF10;
  if (!qword_27F1EAF10)
  {
    type metadata accessor for DashboardSections();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EAF10);
  }

  return result;
}

unint64_t sub_24E316E78()
{
  result = qword_27F1EAF18[0];
  if (!qword_27F1EAF18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1EAF18);
  }

  return result;
}

unint64_t sub_24E316ED4()
{
  result = sub_24DFA1058();
  if (v1 <= 0x3F)
  {
    result = sub_24E347208();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24E316FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_24E347208();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

GameCenterUI::GameLayerAchievementsEntryPoint_optional __swiftcall GameLayerAchievementsEntryPoint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24E348B78();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t GameLayerAchievementsEntryPoint.rawValue.getter()
{
  result = 0x72616F6268736164;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      return result;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

unint64_t sub_24E317130()
{
  result = qword_27F1EAFA0;
  if (!qword_27F1EAFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EAFA0);
  }

  return result;
}

unint64_t sub_24E3171A8@<X0>(unint64_t *a1@<X8>)
{
  result = GameLayerAchievementsEntryPoint.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for GameLayerAchievementsEntryPoint(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for GameLeaderboardsAction()
{
  result = qword_27F1EAFA8;
  if (!qword_27F1EAFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E317320()
{
  sub_24DF88A8C(319, &qword_27F1DF108);
  if (v0 <= 0x3F)
  {
    sub_24E3173EC();
    if (v1 <= 0x3F)
    {
      sub_24E0ADC44();
      if (v2 <= 0x3F)
      {
        sub_24E347208();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E3173EC()
{
  if (!qword_27F1EAFB8)
  {
    sub_24DF88A8C(255, &qword_27F1E1758);
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1EAFB8);
    }
  }
}

id sub_24E317454(double a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  [v2 setAnchorPoint_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D00);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24E36A270;
  sub_24DF88A8C(0, &qword_27F1E5FD0);
  v4 = sub_24E3485B8();
  v5 = [v4 CGColor];

  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v3 + 56) = v6;
  *(v3 + 32) = v5;
  v8 = sub_24E3485B8();
  v9 = [v8 CGColor];

  *(v3 + 88) = v7;
  *(v3 + 64) = v9;
  sub_24E27B56C(v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24E36BFC0;
  sub_24DF88A8C(0, &qword_27F1E50D0);
  *(v10 + 32) = sub_24E3485D8();
  *(v10 + 40) = sub_24E3485D8();
  sub_24E317694(v10, v2);
  [v2 setStartPoint_];
  [v2 setEndPoint_];
  [v2 setType_];
  [v2 setCornerRadius_];

  return v2;
}

void sub_24E317694(uint64_t a1, void *a2)
{
  sub_24DF88A8C(0, &qword_27F1E50D0);
  v3 = sub_24E347EE8();

  [a2 setLocations_];
}

uint64_t sub_24E317718@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_emptyStateData;
  swift_beginAccess();
  return sub_24E1A8F38(v1 + v3, a1);
}

uint64_t sub_24E317780()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_suggestedFriends);
  if (v1 >> 62)
  {
    return sub_24E348878();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_24E3177B0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v164 = a3;
  v165 = a8;
  LODWORD(v158) = a7;
  v163 = a6;
  v160 = a4;
  v161 = a5;
  v166 = a1;
  v12 = sub_24E347478();
  v13 = OUTLINED_FUNCTION_4_5(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_14();
  v148 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v16 = OUTLINED_FUNCTION_4_5(v15);
  MEMORY[0x28223BE20](v16);
  v149 = &v138 - v17;
  OUTLINED_FUNCTION_18_1();
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v154 = v19;
  v155 = v18;
  MEMORY[0x28223BE20](v18);
  v152 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v153 = &v138 - v22;
  OUTLINED_FUNCTION_18_1();
  v150 = type metadata accessor for EmptyStateData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_14();
  v151 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFA60);
  v26 = OUTLINED_FUNCTION_4_5(v25);
  MEMORY[0x28223BE20](v26);
  v147 = &v138 - v27;
  OUTLINED_FUNCTION_18_1();
  v28 = sub_24E347458();
  v29 = OUTLINED_FUNCTION_4_5(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_14();
  v156 = v30;
  OUTLINED_FUNCTION_18_1();
  sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v142 = v32;
  v143 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_14();
  v141 = v33;
  OUTLINED_FUNCTION_18_1();
  sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v145 = v35;
  v146 = v34;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_14();
  v144 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890);
  v38 = OUTLINED_FUNCTION_4_5(v37);
  MEMORY[0x28223BE20](v38);
  v40 = &v138 - v39;
  v159 = sub_24E343368();
  OUTLINED_FUNCTION_0_14();
  v162 = v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v138 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v138 - v46;
  *(v9 + 56) = 0u;
  v48 = v9 + 56;
  *(v9 + 88) = 0;
  *(v9 + 72) = 0u;
  v49 = OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_impressionMetrics;
  sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  v157 = v50;
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v50);
  v54 = (v9 + OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_instrumentationKey);
  type metadata accessor for PlayerProfileSection();
  *v54 = 0;
  v54[1] = 0;
  if ((sub_24E32C9A4() & 1) == 0)
  {

    OUTLINED_FUNCTION_10_71(a9);
    OUTLINED_FUNCTION_9_73(v165);
    sub_24DF8BE60(v166);
    OUTLINED_FUNCTION_9_73(v48);
    OUTLINED_FUNCTION_10_71(v10 + v49);
LABEL_19:

    type metadata accessor for ActivityFeedAddFriendsData(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_24DF8BD34(v166, v10 + 16);
  *(v10 + OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_isEnabled) = v158 & 1;
  OUTLINED_FUNCTION_37_12();
  sub_24DF95B4C(v165, v48, &qword_27F1DEE90);
  swift_endAccess();
  OUTLINED_FUNCTION_37_12();
  v140 = v49;
  v158 = a9;
  sub_24DF95B4C(a9, v10 + v49, &qword_27F1E58A0);
  swift_endAccess();
  v55 = [a2 timeStamp];
  v56 = v10;
  if (v55)
  {
    v57 = v55;
    sub_24E343328();

    v58 = v162;
    v59 = *(v162 + 32);
    v60 = v44;
    v61 = v159;
    v59(v40, v60, v159);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v61);
    v59(v47, v40, v61);
    v62 = v58;
    v56 = v10;
  }

  else
  {
    OUTLINED_FUNCTION_8_6();
    v61 = v159;
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v159);
    sub_24E343338();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v61);
    v62 = v162;
    if (EnumTagSinglePayload != 1)
    {
      sub_24DF8BFF4(v40, &unk_27F1E5890);
    }
  }

  v67 = v61;
  (*(v62 + 32))(v56 + OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_timestamp, v47, v61);
  v68 = v161;
  *(v56 + OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_index) = v160;
  v69 = (v56 + OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_shelfId);
  v70 = v163;
  *v69 = v68;
  v69[1] = v70;
  v71 = sub_24E0E77AC(a2, &selRef_message);
  v73 = v158;
  if (!v72)
  {

    v78 = v166;
LABEL_18:
    OUTLINED_FUNCTION_10_71(v73);
    OUTLINED_FUNCTION_9_73(v165);
    sub_24DF8BE60(v78);
    sub_24DF8BE60(v56 + 16);
    OUTLINED_FUNCTION_9_73(v48);
    (*(v162 + 8))(v56 + OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_timestamp, v67);
    OUTLINED_FUNCTION_10_71(v56 + v140);

    goto LABEL_19;
  }

  v74 = v71;
  v75 = v72;
  v76 = sub_24E0E77AC(a2, &selRef_alternateMessage);
  v78 = v166;
  if (!v77)
  {

    goto LABEL_18;
  }

  v79 = v77;
  v139 = v76;
  v80 = sub_24E0E77AC(a2, &selRef_sfSymbol);
  v82 = a2;
  if (!v81)
  {

    v73 = v158;
    goto LABEL_18;
  }

  v83 = v80;
  v84 = v81;
  *&v138 = v74;
  v161 = v82;
  v162 = v79;
  v85 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:30.0];
  sub_24DFC2C38();
  v86 = v85;
  v87 = sub_24E1A5748(v83, v84, v85);

  v163 = v86;
  if (!v87 || (v88 = [objc_opt_self() labelColor], v89 = objc_msgSend(v87, sel_imageWithTintColor_, v88), v87, v88, v86 = v163, v90 = v163, !v89))
  {
    v91 = sub_24E1A5748(0xD000000000000013, 0x800000024E39F240, v85);

    if (!v91)
    {
      v160 = 0;
      goto LABEL_22;
    }

    v90 = [objc_opt_self() labelColor];
    v89 = [v91 imageWithTintColor_];
  }

  v160 = v89;

LABEL_22:
  v93 = sub_24DFD8654(v164);
  v94 = MEMORY[0x277D837D0];
  if (v93 < 1)
  {

    v97 = sub_24E347CB8();
    v98 = GKGameCenterUIFrameworkBundle();
    v99 = GKGetLocalizedStringFromTableInBundle();

    v159 = sub_24E347CF8();
    v140 = v100;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
    inited = swift_initStackObject();
    v138 = xmmword_24E367D20;
    *(inited + 16) = xmmword_24E367D20;
    *(inited + 32) = 0x79546E6F69746361;
    *(inited + 40) = 0xEA00000000006570;
    *(inited + 72) = v94;
    *(inited + 48) = 1852141679;
    *(inited + 56) = 0xE400000000000000;
    v102 = sub_24E347C28();
    if (qword_27F1DD808 != -1)
    {
      swift_once();
    }

    v103 = sub_24E347058();
    v104 = __swift_project_value_buffer(v103, qword_27F20AE00);
    v105 = v141;
    MEMORY[0x25303DB90](0x6E65697246646461, 0xEA00000000007364, 0x6E6F74747562, 0xE600000000000000, v102, v104);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
    v106 = v142;
    v107 = (*(v142 + 80) + 32) & ~*(v142 + 80);
    v108 = swift_allocObject();
    *(v108 + 16) = v138;
    v109 = v143;
    (*(v106 + 16))(v108 + v107, v105, v143);
    sub_24E347448();
    v110 = v144;
    sub_24E3471D8();
    (*(v106 + 8))(v105, v109);
    v111 = [objc_opt_self() local];
    memset(v171, 0, 32);
    v171[32] = 1;
    v113 = v145;
    v112 = v146;
    v114 = v147;
    (*(v145 + 16))(v147, v110, v146);
    __swift_storeEnumTagSinglePayload(v114, 0, 1, v112);
    *(&v169 + 1) = type metadata accessor for AddFriendsAction();
    v170 = sub_24E319014(&qword_27F1DFA68, type metadata accessor for AddFriendsAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v168);
    sub_24E2835B0(v111, v171, v114, 0, boxed_opaque_existential_1);
    (*(v113 + 8))(v110, v112);
    v96 = v162;
    v95 = v139;
  }

  else
  {

    v159 = 0;
    v140 = 0;
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
    v95 = v138;
    v96 = v75;
  }

  v116 = v160;
  v117 = v160;
  if (!v160)
  {
    v117 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  sub_24DF95B98(&v168, v167, &qword_27F1DEE90);
  v118 = v151;
  *(v151 + 152) = 0u;
  *(v118 + 168) = 0;
  *(v118 + 136) = 0u;
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v157);
  *(v118 + 40) = v117;
  *(v118 + 48) = 0;
  *(v118 + 56) = 1;
  *(v118 + 64) = v95;
  *(v118 + 72) = v96;
  *(v118 + 80) = 0;
  *(v118 + 88) = 0;
  v122 = v140;
  *(v118 + 96) = v159;
  *(v118 + 104) = v122;
  *(v118 + 112) = 0;
  *(v118 + 120) = 0;
  *(v118 + 128) = 1;
  v123 = v116;
  sub_24DF95B4C(v167, v118 + 136, &qword_27F1DEE90);
  v124 = v153;
  sub_24E343398();
  v126 = v154;
  v125 = v155;
  (*(v154 + 16))(v152, v124, v155);
  OUTLINED_FUNCTION_3_138();
  sub_24E319014(v127, v128);
  sub_24E348918();
  (*(v126 + 8))(v124, v125);
  sub_24DF8BFF4(v167, &qword_27F1DEE90);
  sub_24DFE227C(v118, v56 + OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_emptyStateData);
  *(v56 + OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_suggestedFriends) = v164;
  v129 = v161;
  v130 = sub_24E0E77AC(v161, &selRef_instrumentationKey);
  v132 = v131;
  v133 = (v56 + OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_instrumentationKey);
  *v133 = v130;
  v133[1] = v131;

  if (v132)
  {
    v164 = v123;

    sub_24E347468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
    v134 = swift_initStackObject();
    *(v134 + 16) = xmmword_24E367D20;
    strcpy((v134 + 32), "impressionType");
    *(v134 + 47) = -18;
    *(v134 + 72) = MEMORY[0x277D837D0];
    *(v134 + 48) = 0x74656C63696863;
    *(v134 + 56) = 0xE700000000000000;
    sub_24E347C28();
    sub_24E347448();
    v135 = MEMORY[0x277D84F90];
    sub_24E0241AC(MEMORY[0x277D84F90]);
    sub_24E0241AC(v135);
    v136 = v149;
    sub_24E347488();

    sub_24DF8BFF4(v158, &qword_27F1E58A0);
    sub_24DF8BFF4(v165, &qword_27F1DEE90);
    sub_24DF8BE60(v166);
    sub_24DF8BFF4(&v168, &qword_27F1DEE90);
    __swift_storeEnumTagSinglePayload(v136, 0, 1, v157);
    v137 = OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_impressionMetrics;
    OUTLINED_FUNCTION_37_12();
    sub_24DF95BE4(v136, v56 + v137, &qword_27F1E58A0);
    swift_endAccess();
  }

  else
  {

    sub_24DF8BFF4(v158, &qword_27F1E58A0);
    sub_24DF8BFF4(v165, &qword_27F1DEE90);
    sub_24DF8BE60(v166);
    sub_24DF8BFF4(&v168, &qword_27F1DEE90);
  }

  return v56;
}

uint64_t sub_24E318808()
{
  sub_24DF8BE60(v0 + 16);
  sub_24DF8BFF4(v0 + 56, &qword_27F1DEE90);
  v1 = OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_timestamp;
  sub_24E343368();
  OUTLINED_FUNCTION_5_2();
  (*(v2 + 8))(v0 + v1);
  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_impressionMetrics, &qword_27F1E58A0);

  sub_24DFE22E0(v0 + OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_emptyStateData);

  return v0;
}

uint64_t sub_24E3188E8()
{
  sub_24E318808();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_24E318968()
{
  sub_24E343368();
  if (v0 <= 0x3F)
  {
    sub_24DF9E0E0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EmptyStateData();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_24E318AAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24DF95B98(v3 + 56, a1, &qword_27F1DEE90);
}

uint64_t sub_24E318B08@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_impressionMetrics;
  swift_beginAccess();
  return sub_24DF95B98(v3 + v4, a1, &qword_27F1E58A0);
}

uint64_t sub_24E318BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v4 + 104) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  (*(v11 + 16))(v14, a1, v9);
  OUTLINED_FUNCTION_3_138();
  sub_24E319014(v19, v20);
  sub_24E348918();
  (*(v11 + 8))(a1, v9);
  v21 = v24;
  *(v4 + 16) = *&v23[8];
  *(v4 + 32) = v21;
  *(v4 + 48) = v25;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;

  OUTLINED_FUNCTION_37_12();
  sub_24DF95BE4(a4, v4 + 72, &qword_27F1DEE90);
  swift_endAccess();
  return v4;
}

uint64_t sub_24E318D5C()
{
  sub_24DF8BE60(v0 + 16);

  sub_24DF8BFF4(v0 + 72, &qword_27F1DEE90);
  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI24ActivityFeedLoadMoreData_impressionMetrics, &qword_27F1E58A0);
  return v0;
}

uint64_t sub_24E318DBC()
{
  sub_24E318D5C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_24E318E3C()
{
  sub_24DF9E0E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24E318EEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24DF95B98(v3 + 72, a1, &qword_27F1DEE90);
}

uint64_t sub_24E319014(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_9_73(uint64_t a1)
{

  return sub_24DF8BFF4(a1, v1);
}

uint64_t OUTLINED_FUNCTION_10_71(uint64_t a1)
{

  return sub_24DF8BFF4(a1, v1);
}

id sub_24E3190AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_24E347CB8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24E216C88;
  v12[3] = &block_descriptor_39;
  v9 = _Block_copy(v12);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

id sub_24E3191B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_24E347CB8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_24E347CB8();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

uint64_t sub_24E31926C(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC12GameCenterUI30AddFriendsActionImplementation_action;
  v6 = type metadata accessor for AddFriendsAction();
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  swift_unknownObjectWeakAssign();

  *(v2 + 16) = a2;
  return v2;
}

id sub_24E3192E0(uint64_t a1)
{
  sub_24E347218();
  OUTLINED_FUNCTION_0_14();
  v70 = v3;
  v71 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v69 = v5 - v4;
  v6 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v12 = v11 - v10;
  v13 = type metadata accessor for AddFriendsAction();
  v68 = *(v13 - 8);
  v14 = *(v68 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v68 - v17;
  v19 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v20 = sub_24E347CF8();
  v22 = v21;
  v23 = sub_24E347CF8();
  sub_24E08FD58(v20, v22, v23, v24, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  v25 = sub_24E347AD8();
  result = [objc_opt_self() shared];
  if (result)
  {
    v27 = result;
    v28 = [result isAddingFriendsRestricted];

    if (v28)
    {
      sub_24E343CC8();
      v29 = sub_24E343F78();
      v30 = sub_24E348238();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_24DE53000, v29, v30, "Tried to send a friend invitation while adding friends is restricted via Screen Time. Blocking.", v31, 2u);
        MEMORY[0x253040EE0](v31, -1, -1);
      }

      (*(v8 + 8))(v12, v6);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        while (1)
        {
          v33 = [Strong presentedViewController];
          if (!v33)
          {
            break;
          }

          v34 = v33;

          Strong = v34;
        }
      }

      sub_24DF88A8C(0, &qword_27F1DFB28);
      v39 = sub_24E347CB8();
      v40 = GKGameCenterUIFrameworkBundle();
      v41 = GKGetLocalizedStringFromTableInBundle();

      v42 = sub_24E347CF8();
      v44 = v43;

      v45 = sub_24E347CB8();
      v46 = GKGameCenterUIFrameworkBundle();
      v47 = GKGetLocalizedStringFromTableInBundle();

      v48 = sub_24E347CF8();
      v50 = v49;

      v51 = sub_24E3191B4(v42, v44, v48, v50, 1);
      sub_24DF88A8C(0, &qword_27F1E2900);
      v52 = sub_24E347CB8();
      v53 = GKGameCenterUIFrameworkBundle();
      v54 = GKGetLocalizedStringFromTableInBundle();

      v55 = sub_24E347CF8();
      v57 = v56;

      v58 = sub_24E3190AC(v55, v57, 0, 0, 0);
      [v51 addAction_];

      if (Strong)
      {
        [Strong presentViewController:v51 animated:1 completion:0];
      }

      v60 = v69;
      v59 = v70;
      v61 = v71;
      (*(v70 + 104))(v69, *MEMORY[0x277D21CA8], v71);
      sub_24E347AC8();

      (*(v59 + 8))(v60, v61);
    }

    else
    {
      v36 = *(a1 + 8);
      v35 = *(a1 + 16);
      v37 = *(a1 + 24);
      if (*(a1 + 40))
      {

        sub_24E319FB4(v38, v35, v37, v25, a1);
      }

      else
      {
        v62 = *(a1 + 32);
        v74 = &type metadata for GKFeatureFlags;
        v75 = sub_24DFA0CB4();
        v73[0] = 15;

        v63 = sub_24E3435A8();
        __swift_destroy_boxed_opaque_existential_1(v73);
        if (v63)
        {
          v64 = sub_24E348098();
          __swift_storeEnumTagSinglePayload(v18, 1, 1, v64);
          sub_24E26A6D0(a1, &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
          v65 = (*(v68 + 80) + 80) & ~*(v68 + 80);
          v66 = swift_allocObject();
          v66[2] = 0;
          v66[3] = 0;
          v66[4] = v36;
          v66[5] = v35;
          v66[6] = v37;
          v66[7] = v62;
          v67 = v72;
          v66[8] = v25;
          v66[9] = v67;
          sub_24E31B1F4(v15, v66 + v65);

          sub_24DFC8700(0, 0, v18, &unk_24E38E888, v66);
        }

        else
        {

          sub_24E319FB4(0, 0, 0, v25, a1);
        }
      }
    }

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E3199FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v14;
  v8[6] = v15;
  v8[3] = a5;
  v8[4] = a8;
  v8[2] = a4;
  v9 = sub_24E343F88();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v10 = sub_24E347218();
  v8[10] = v10;
  v8[11] = *(v10 - 8);
  v8[12] = swift_task_alloc();
  type metadata accessor for GameCenter();
  swift_initStaticObject();
  v11 = swift_task_alloc();
  v8[13] = v11;
  *v11 = v8;
  v11[1] = sub_24E319BA0;

  return sub_24E2EFF78();
}

uint64_t sub_24E319BA0()
{
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v5 = v4;
  *(v6 + 112) = v0;

  if (v0)
  {
    v7 = sub_24E319D70;
  }

  else
  {
    v7 = sub_24E319CAC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24E319CAC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 104))(v1, *MEMORY[0x277D21CA8], v3);
  sub_24E347AC8();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_12_5();

  return v4();
}

uint64_t sub_24E319D70()
{
  v1 = v0[14];
  sub_24E343CC8();
  v2 = v1;
  v3 = sub_24E343F78();
  v4 = sub_24E348258();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24DE53000, v3, v4, "Unable to send friend invitation via push, sending via Messages instead. %@", v6, 0xCu);
    sub_24DFA9298(v7, &unk_27F1DF730);
    MEMORY[0x253040EE0](v7, -1, -1);
    MEMORY[0x253040EE0](v6, -1, -1);
  }

  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];

  (*(v11 + 8))(v10, v12);
  v13 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v14 = sub_24E347CB8();
  v15 = [v13 contactForIdentifier_];

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24E369990;
    *(v16 + 32) = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v0[14];
  sub_24E319FB4(v16, 0, 0, v0[4], v0[6]);

  OUTLINED_FUNCTION_12_5();

  return v18();
}

void sub_24E319FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a2;
  v9 = sub_24E347218();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v30 - v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  v20 = *(a5 + *(type metadata accessor for AddFriendsAction() + 28));
  if (v20)
  {
    v21 = v20;

    v22 = v21;
  }

  else
  {
    if (!Strong)
    {
      (*(v11 + 104))(v15, *MEMORY[0x277D21CA8], v9);
      sub_24E347AC8();
      (*(v11 + 8))(v15, v9);
      return;
    }

    v22 = Strong;
    v21 = 0;
  }

  v23 = v21;

  v24 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v24);
  sub_24E348068();

  v25 = v22;

  v26 = sub_24E348058();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  v27[2] = v26;
  v27[3] = v28;
  v29 = v31;
  v27[4] = a1;
  v27[5] = v29;
  v27[6] = a3;
  v27[7] = v25;
  v27[8] = a4;
  sub_24DFC8700(0, 0, v18, &unk_24E38E878, v27);
}

uint64_t sub_24E31A20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  sub_24E348068();
  v8[13] = sub_24E348058();
  v10 = sub_24E347FF8();
  v8[14] = v10;
  v8[15] = v9;

  return MEMORY[0x2822009F8](sub_24E31A2AC, v10, v9);
}

uint64_t sub_24E31A2AC()
{
  if (GKIsRemoteUI())
  {
    type metadata accessor for FriendRequestFacilitator();

    v1 = swift_task_alloc();
    v0[16] = v1;
    *v1 = v0;
    v1[1] = sub_24E31A464;

    return static FriendRequestFacilitator.makeViewController(recipients:chatGUID:)();
  }

  else
  {
    v3 = v0[12];
    v4 = v0[10];
    v5 = v0[11];
    v7 = v0[8];
    v6 = v0[9];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    type metadata accessor for FriendRequestFacilitator();
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = v3;

    v10 = v5;

    static FriendRequestFacilitator.makeViewControllerForRemoteInvite(recipients:chatGUID:resultHandler:)(v8, v6, v4, sub_24E31B0C8, v9);

    OUTLINED_FUNCTION_12_5();

    return v11();
  }
}

uint64_t sub_24E31A464()
{
  v1 = *v0;
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_10();
  *v5 = v4;
  *(v7 + 136) = v6;

  v8 = *(v1 + 120);
  v9 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_24E31A5B8, v9, v8);
}

uint64_t sub_24E31A5B8()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[11];

  v0[6] = sub_24E31B4B0;
  v0[7] = v2;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24E00B24C;
  v0[5] = &block_descriptor_104;
  v4 = _Block_copy(v0 + 2);

  [v3 presentViewController:v1 animated:1 completion:v4];
  _Block_release(v4);

  OUTLINED_FUNCTION_12_5();

  return v5();
}

void sub_24E31A6CC(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    v18 = sub_24E31B4B0;
    v19 = a4;
    v14 = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_24E00B24C;
    v17 = &block_descriptor_23_1;
    v7 = _Block_copy(&v14);
    v8 = a1;

    [a3 presentViewController:v8 animated:1 completion:v7];
    _Block_release(v7);
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a3;
    v18 = sub_24E31B0E8;
    v19 = v10;
    v14 = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_24E0121FC;
    v17 = &block_descriptor_20_4;
    v11 = _Block_copy(&v14);
    v12 = a2;

    v8 = v12;
    v13 = a3;

    [v8 setRemoteViewReadyHandler_];
    _Block_release(v11);
  }
}

void sub_24E31A888(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24E346EE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24E346F08();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v25[0] = v13;
    sub_24DF88A8C(0, &qword_27F1DFCD0);
    v16 = a1;
    v17 = sub_24E348368();
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = a4;
    v18[4] = a3;
    aBlock[4] = sub_24E31B144;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E00B24C;
    aBlock[3] = &block_descriptor_29;
    v19 = a4;
    v20 = _Block_copy(aBlock);
    v21 = v16;
    v22 = v19;

    sub_24E346EF8();
    v25[1] = MEMORY[0x277D84F90];
    sub_24E31B150(&qword_27F1DFD00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
    sub_24DFCD5F4();
    sub_24E3487E8();
    MEMORY[0x25303EED0](0, v15, v10, v20);
    _Block_release(v20);

    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v15, v25[0]);
  }

  else
  {
    sub_24E31B0F0();
    v23 = swift_allocError();
    *v24 = 3;
    sub_24E347AB8();
  }
}

void sub_24E31ABE0(void *a1, void *a2, uint64_t a3)
{
  [a1 setModalPresentationStyle_];
  v7[4] = sub_24E31B198;
  v7[5] = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_24E00B24C;
  v7[3] = &block_descriptor_32_2;
  v6 = _Block_copy(v7);

  [a2 presentViewController:a1 animated:0 completion:v6];
  _Block_release(v6);
}

uint64_t sub_24E31ACCC()
{
  v0 = sub_24E347218();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  (*(v2 + 104))(v5 - v4, *MEMORY[0x277D21CA8], v0);
  sub_24E347AC8();
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_24E31ADA4()
{
  MEMORY[0x253040FB0](v0 + 24);
  sub_24DFA9298(v0 + OBJC_IVAR____TtC12GameCenterUI30AddFriendsActionImplementation_action, &qword_27F1EB018);
  return v0;
}

uint64_t sub_24E31ADEC()
{
  sub_24E31ADA4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AddFriendsActionImplementation()
{
  result = qword_27F1EAFF8;
  if (!qword_27F1EAFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E31AE98()
{
  sub_24E31AF40();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24E31AF40()
{
  if (!qword_27F1EB008)
  {
    type metadata accessor for AddFriendsAction();
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1EB008);
    }
  }
}

uint64_t sub_24E31B004()
{
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E059970;
  OUTLINED_FUNCTION_2_133();

  return sub_24E31A20C(v4, v5, v6, v7, v8, v9, v10, v2);
}

unint64_t sub_24E31B0F0()
{
  result = qword_27F1EB010;
  if (!qword_27F1EB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB010);
  }

  return result;
}

uint64_t sub_24E31B150(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E31B1B4()
{
}

uint64_t sub_24E31B1F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddFriendsAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E31B258()
{
  type metadata accessor for AddFriendsAction();
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E059AA8;
  OUTLINED_FUNCTION_2_133();

  return sub_24E3199FC(v4, v5, v6, v7, v8, v9, v10, v2);
}

_BYTE *storeEnumTagSinglePayload for AddFriendsActionImplementation.AddFriendsActionImplementationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E31B448()
{
  result = qword_27F1EB020;
  if (!qword_27F1EB020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB020);
  }

  return result;
}

uint64_t sub_24E31B4E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

uint64_t sub_24E31B500()
{

  return v0;
}

uint64_t sub_24E31B528()
{
  sub_24E31B500();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_24E31B580@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MicaViewInfo();
  result = sub_24E344DD8();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall OnboardingProfileCreationViewController.loadView()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v1 setView_];

  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFC68));
  v4 = sub_24E345D58();

  sub_24E31B650(v4);
}

void sub_24E31B650(void *a1)
{
  sub_24E31B700();
  v3 = *(v1 + OBJC_IVAR___GKOnboardingProfileCreationViewController_hostingController);
  *(v1 + OBJC_IVAR___GKOnboardingProfileCreationViewController_hostingController) = a1;
  v4 = a1;

  sub_24E31B7A4();
}

void sub_24E31B700()
{
  v1 = *&v0[OBJC_IVAR___GKOnboardingProfileCreationViewController_hostingController];
  if (v1)
  {
    v4 = v1;
    v2 = [v4 view];
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];

      [v0 removeChildViewController_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_24E31B7A4()
{
  v1 = *&v0[OBJC_IVAR___GKOnboardingProfileCreationViewController_hostingController];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v4 addSubview_];

  v7 = [v2 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  v9 = objc_opt_self();
  v10 = [v2 view];
  v11 = [v0 view];
  [v9 _gkInstallEdgeConstraintsForView_containedWithinParentView_];
}

void sub_24E31B924()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 local];
  v5 = [v4 shouldShowFriendSuggestionsScreen];

  if (v5)
  {
    v11 = [objc_opt_self() shared];
    [v11 presentFriendSuggestionsScreen_];
  }

  else
  {
    v6 = [v3 local];
    v7 = [v6 shouldShowContactsIntegrationConsentScreen];

    v8 = [objc_opt_self() shared];
    v11 = v8;
    if (!v7)
    {
      v10 = [v8 delegate];

      if (v10)
      {
        [v10 onboardingFlowFinishedWithAction_];
        swift_unknownObjectRelease();
      }

      v9 = v2;
      goto LABEL_11;
    }

    [v8 presentContactsIntegrationConsentScreen_];
  }

  v9 = v11;
LABEL_11:
}

Swift::Void __swiftcall OnboardingProfileCreationViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v16.receiver = v1;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_viewWillAppear_, a1, v5);
  v6 = [v1 navigationItem];
  [v6 setHidesBackButton_];

  v7 = [v1 navigationController];
  [v7 setNavigationBarHidden_];

  v8 = sub_24E348098();
  OUTLINED_FUNCTION_15_48(v8);
  sub_24E348068();
  v9 = v1;
  v10 = sub_24E348058();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  OUTLINED_FUNCTION_35_7(v11, v13, v14, v15, v11);
}

uint64_t sub_24E31BC34()
{
  v0[2] = sub_24E348068();
  v0[3] = sub_24E348058();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24DFC9E68;

  return sub_24E31BD8C();
}

uint64_t sub_24E31BCE0()
{
  OUTLINED_FUNCTION_8_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_3();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_24DFB3184;

  return sub_24E31BC34();
}

uint64_t sub_24E31BD8C()
{
  v1[23] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  v1[24] = swift_task_alloc();
  v2 = sub_24E343F88();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = sub_24E348068();
  v1[29] = sub_24E348058();
  v4 = sub_24E347FF8();
  v1[30] = v4;
  v1[31] = v3;

  return MEMORY[0x2822009F8](sub_24E31BEBC, v4, v3);
}

uint64_t sub_24E31BEBC()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 accountServicePrivate];
  v0[32] = v2;

  v3 = [objc_opt_self() local];
  v4 = [v3 internal];

  v5 = [v4 playerID];
  if (!v5)
  {
    sub_24E347CF8();
    v5 = sub_24E347CB8();
  }

  v0[33] = v5;
  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_24E31C0A4;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E0350);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24E19F854;
  v0[13] = &block_descriptor_105;
  v0[14] = v6;
  [v2 getAccountAgeCategoryForPlayerID:v5 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E31C0A4()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_5_20();
  *v1 = v0;
  v3 = *(v2 + 248);
  v4 = *(v2 + 240);

  return MEMORY[0x2822009F8](sub_24E31C19C, v4, v3);
}

uint64_t sub_24E31C19C()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *(v0 + 264);
  *(v0 + 300) = *(v0 + 296);
  swift_unknownObjectRelease();

  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  *v2 = v0;
  v2[1] = sub_24E31C23C;

  return sub_24E31C8C8();
}

uint64_t sub_24E31C23C()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_4_13();
  *v2 = v0;
  v3 = *v1;
  OUTLINED_FUNCTION_5_20();
  *v4 = v3;
  *(v0 + 304) = v5;

  v6 = swift_task_alloc();
  *(v0 + 280) = v6;
  *v6 = v3;
  v6[1] = sub_24E31C374;
  OUTLINED_FUNCTION_4_116();

  return sub_24E31CB64(v7);
}

uint64_t sub_24E31C374()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v2 = v1;
  OUTLINED_FUNCTION_5_20();
  *v3 = v2;
  *(v2 + 176) = v4;
  *(v2 + 168) = v0;
  v5 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v6 = v5;

  type metadata accessor for GameCenterSettings();
  v7 = swift_task_alloc();
  *(v2 + 288) = v7;
  *v7 = v5;
  v7[1] = sub_24E31C49C;

  return sub_24DFEECBC();
}

uint64_t sub_24E31C49C()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_5_20();
  *v3 = v2;
  v2[18] = v1;
  v2[19] = v4;
  v2[20] = v5;
  OUTLINED_FUNCTION_4_116();
  v6 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v7 = v6;

  OUTLINED_FUNCTION_4_116();
  v9 = *(v8 + 248);
  v10 = *(v0 + 240);

  return MEMORY[0x2822009F8](sub_24E31C5A4, v10, v9);
}

uint64_t sub_24E31C5A4()
{
  v34 = v0;

  sub_24E343C58();
  v1 = sub_24E343F78();
  v2 = sub_24E348238();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 304);
    v4 = *(v0 + 208);
    v30 = *(v0 + 200);
    v32 = *(v0 + 216);
    v5 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v5 = 136315394;
    if (v3)
    {
      v6 = 7562585;
    }

    else
    {
      v6 = 28494;
    }

    if (v3)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE200000000000000;
    }

    if (v3)
    {
      v8 = 28494;
    }

    else
    {
      v8 = 7562585;
    }

    if (v3)
    {
      v9 = 0xE200000000000000;
    }

    else
    {
      v9 = 0xE300000000000000;
    }

    v10 = sub_24E1C2BE0(v6, v7, &v33);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    v11 = sub_24E1C2BE0(v8, v9, &v33);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_24DE53000, v1, v2, "OnboardingProfileCreationViewController: Has the player completed nickname change? %s, need new nickname? %s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_22_4();

    (*(v4 + 8))(v32, v30);
  }

  else
  {

    v12 = OUTLINED_FUNCTION_27_1();
    v13(v12);
  }

  v14 = *(v0 + 160);
  v15 = *(v0 + 176);
  v16 = *(v0 + 304);
  v17 = *(v0 + 300);
  v31 = *(v0 + 152);
  v18 = *(v0 + 184);
  type metadata accessor for ProfileEditorData();
  swift_allocObject();
  v19 = sub_24E1AF268();
  sub_24E1AEACC();
  sub_24E1AEF04();
  v20 = sub_24E348098();
  OUTLINED_FUNCTION_15_48(v20);
  v21 = v18;

  v22 = sub_24E348058();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  *(v23 + 32) = v17;
  *(v23 + 36) = (v16 & 1) == 0;
  *(v23 + 40) = v15;
  *(v23 + 48) = v31;
  *(v23 + 56) = v14;
  *(v23 + 64) = v21;
  *(v23 + 72) = v19;
  OUTLINED_FUNCTION_35_7(v23, v25, v26, v27, v23);

  OUTLINED_FUNCTION_12_5();

  return v28();
}

uint64_t sub_24E31C8C8()
{
  v0[2] = sub_24E348068();
  v0[3] = sub_24E348058();
  v2 = sub_24E347FF8();
  v0[4] = v2;
  v0[5] = v1;

  return MEMORY[0x2822009F8](sub_24E31C960, v2, v1);
}

uint64_t sub_24E31C960()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 48) = sub_24E348058();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_3();
  *(v0 + 56) = v1;
  *v1 = v2;
  v1[1] = sub_24E31CA34;
  v3 = OUTLINED_FUNCTION_7_82();

  return MEMORY[0x2822007B8](v3, v4, v5, 0xD00000000000001CLL, v6, v7, 0, v8);
}

uint64_t sub_24E31CA34()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_5_116();
  v2 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;

  OUTLINED_FUNCTION_4_116();
  v5 = *(v4 + 40);
  v6 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_24E31EC0C, v6, v5);
}

uint64_t sub_24E31CB64(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 104) = a1;
  v3 = sub_24E343F88();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = sub_24E348068();
  *(v2 + 64) = sub_24E348058();
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_24E31CC80;

  return sub_24E31D95C();
}

uint64_t sub_24E31CC80()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_13_5();
  v2 = v1;
  OUTLINED_FUNCTION_5_20();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v5 = v4;
  *(v2 + 112) = v6;

  v8 = sub_24E347FF8();
  *(v2 + 80) = v8;
  *(v2 + 88) = v7;

  return MEMORY[0x2822009F8](sub_24E31CDB4, v8, v7);
}

uint64_t sub_24E31CDB4()
{
  v24 = v0;
  sub_24E343C58();
  v1 = sub_24E343F78();
  v2 = sub_24E348238();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 112);
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    if (v3)
    {
      v7 = 7562585;
    }

    else
    {
      v7 = 28494;
    }

    if (v3)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    v9 = sub_24E1C2BE0(v7, v8, &v23);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24DE53000, v1, v2, "OnboardingProfileCreationViewController: Has the player chosen profile privacy? %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_22_4();

    v10 = *(v4 + 8);
    v11 = OUTLINED_FUNCTION_27_1();
    v10(v11);
  }

  else
  {
    v12 = *(v0 + 32);

    v10 = *(v12 + 8);
    v13 = OUTLINED_FUNCTION_27_1();
    v10(v13);
  }

  if (*(v0 + 112) != 1)
  {

    OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_29_2();

    __asm { BRAA            X2, X16 }
  }

  sub_24E343C58();
  v14 = sub_24E343F78();
  v15 = sub_24E348238();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24DE53000, v14, v15, "OnboardingProfileCreationViewController: Restoring the previously chosen profile privacy state.", v16, 2u);
    OUTLINED_FUNCTION_22_4();
  }

  v17 = OUTLINED_FUNCTION_27_1();
  v10(v17);
  v18 = swift_task_alloc();
  *(v0 + 96) = v18;
  *v18 = v0;
  v18[1] = sub_24E31D068;
  OUTLINED_FUNCTION_29_2();

  return sub_24E31DC54();
}

uint64_t sub_24E31D068()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_5_116();
  OUTLINED_FUNCTION_5_20();
  *v2 = v1;
  *(v1 + 108) = v3;

  OUTLINED_FUNCTION_4_116();
  v5 = *(v4 + 88);
  v6 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_24E31D17C, v6, v5);
}

uint64_t sub_24E31D17C()
{
  OUTLINED_FUNCTION_9_7();

  v1 = *(v0 + 108);

  OUTLINED_FUNCTION_21_5();

  return v2(v1);
}

uint64_t sub_24E31D1EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v14;
  *(v8 + 192) = v15;
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 300) = a6;
  *(v8 + 304) = a5;
  *(v8 + 296) = a4;
  *(v8 + 200) = *v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF2C8);
  *(v8 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF740);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = type metadata accessor for ProfileCreationOnboardingView();
  *(v8 + 240) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB030);
  *(v8 + 248) = v9;
  *(v8 + 256) = *(v9 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  sub_24E348068();
  *(v8 + 280) = sub_24E348058();
  v11 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E31D3E0, v11, v10);
}

uint64_t sub_24E31D3E0()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = *(v0 + 176);
  v7 = *(v0 + 168);
  v29 = *(v0 + 300);
  v28 = *(v0 + 304);
  v8 = *(v0 + 296);

  v9 = [objc_allocWithZone(GKNicknameController) initWithMinNicknameLength:v7 maxNicknameLength:v6];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0);
  swift_storeEnumTagMultiPayload();
  *v3 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940);
  swift_storeEnumTagMultiPayload();
  *v1 = v8;
  *(v1 + 4) = v28;
  *(v1 + 8) = v29;
  *(v1 + 16) = v9;
  *(v1 + 24) = sub_24E31E990;
  *(v1 + 32) = v10;
  *(v0 + 288) = 0;
  *(v0 + 292) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0288);
  sub_24E346B78();
  v11 = *(v0 + 108);
  v12 = *(v0 + 112);
  *(v1 + 40) = *(v0 + 104);
  *(v1 + 44) = v11;
  *(v1 + 48) = v12;
  *(v0 + 293) = 0;
  sub_24E346B78();
  v13 = *(v0 + 128);
  *(v1 + 56) = *(v0 + 120);
  *(v1 + 64) = v13;
  *(v0 + 294) = 0;
  sub_24E346B78();
  v14 = *(v0 + 144);
  *(v1 + 72) = *(v0 + 136);
  *(v1 + 80) = v14;
  sub_24E31E998(&qword_27F1DF920, type metadata accessor for ProfileEditorData);
  *(v1 + 88) = sub_24E345298();
  *(v1 + 96) = v15 & 1;
  sub_24E2FD180(v4, v1 + v2[13], &qword_27F1DF740);
  sub_24E2FD180(v3, v1 + v2[14], &qword_27F1DF740);
  sub_24E2FD180(v5, v1 + v2[15], &qword_27F1DF2C8);
  sub_24E2A4868();
  sub_24E3451E8();
  v16 = v1 + v2[17];
  *(v0 + 295) = 0;
  sub_24E346B78();
  v17 = *(v0 + 160);
  *v16 = *(v0 + 152);
  *(v16 + 8) = v17;
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    if (qword_27F1DDA88 != -1)
    {
      swift_once();
    }

    v18 = xmmword_27F1E7C90;
  }

  else
  {
    if (qword_27F1DDA80 != -1)
    {
      swift_once();
    }

    v18 = xmmword_27F1E7C38;
  }

  memcpy((v0 + 16), v18, 0x58uLL);

  v19 = *(v0 + 264);
  v20 = *(v0 + 272);
  v22 = *(v0 + 248);
  v21 = *(v0 + 256);
  v23 = *(v0 + 240);
  memcpy((v23 + *(*(v0 + 232) + 72)), (v0 + 16), 0x58uLL);
  sub_24E31E998(&qword_27F1EB038, type metadata accessor for ProfileCreationOnboardingView);
  sub_24E3465A8();
  sub_24E31E9E0(v23);
  (*(v21 + 16))(v19, v20, v22);
  v24 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB040));
  v25 = sub_24E345D58();
  sub_24E31B650(v25);
  (*(v21 + 8))(v20, v22);

  OUTLINED_FUNCTION_12_5();

  return v26();
}

void sub_24E31D8D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24E31B924();
  }
}

uint64_t sub_24E31D95C()
{
  v0[2] = sub_24E348068();
  v0[3] = sub_24E348058();
  v2 = sub_24E347FF8();
  v0[4] = v2;
  v0[5] = v1;

  return MEMORY[0x2822009F8](sub_24E31D9F4, v2, v1);
}

uint64_t sub_24E31D9F4()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 48) = sub_24E348058();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_3();
  *(v0 + 56) = v1;
  *v1 = v2;
  v1[1] = sub_24E31DAC8;
  v3 = OUTLINED_FUNCTION_7_82();

  return MEMORY[0x2822007B8](v3, v4, v5, 0xD000000000000019, v6, v7, 0, v8);
}

uint64_t sub_24E31DAC8()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_5_116();
  v2 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;

  OUTLINED_FUNCTION_4_116();
  v5 = *(v4 + 40);
  v6 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_24E31DBF8, v6, v5);
}

uint64_t sub_24E31DBF8()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_21_5();

  return v0();
}

uint64_t sub_24E31DC54()
{
  v0[2] = sub_24E348068();
  v0[3] = sub_24E348058();
  v2 = sub_24E347FF8();
  v0[4] = v2;
  v0[5] = v1;

  return MEMORY[0x2822009F8](sub_24E31DCEC, v2, v1);
}

uint64_t sub_24E31DCEC()
{
  OUTLINED_FUNCTION_8_9();
  v1 = sub_24E348058();
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  type metadata accessor for GKProfilePrivacyVisibility(0);
  *v2 = v0;
  v2[1] = sub_24E31DDE0;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v0 + 64, v1, v4, 0xD00000000000001CLL, 0x800000024E3B3380, sub_24E31E380, 0, v3);
}

uint64_t sub_24E31DDE0()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_5_116();
  v2 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;

  OUTLINED_FUNCTION_4_116();
  v5 = *(v4 + 40);
  v6 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_24E31DF10, v6, v5);
}

uint64_t sub_24E31DF10()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_21_5();

  return v0();
}

uint64_t sub_24E31DF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB050);
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  v14 = [objc_opt_self() proxyForLocalPlayer];
  v15 = [v14 accountServicePrivate];

  (*(v10 + 16))(v13, a1, v8);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v13, v8);
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E1A27AC;
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);

  [v15 *v21];
  _Block_release(v18);
  return swift_unknownObjectRelease();
}

void sub_24E31E180(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const char *a5)
{
  v8 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    v14 = a3;
    sub_24E343C58();
    v15 = a3;
    v16 = sub_24E343F78();
    v17 = sub_24E348258();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = a3;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_24DE53000, v16, v17, a5, v18, 0xCu);
      sub_24E0C60AC(v19);
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_22_4();
    }

    (*(v10 + 8))(v13, v8);
    v22[14] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB050);
    sub_24E348018();
  }

  else
  {
    v22[15] = a2 != 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB050);
    sub_24E348018();
  }
}

uint64_t sub_24E31E380(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB048);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 profileServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_24E31EA3C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24DFE5584;
  aBlock[3] = &block_descriptor_29_0;
  v10 = _Block_copy(aBlock);

  [v7 getProfilePrivacyWithHandler_];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

id OnboardingProfileCreationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24E347CB8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id OnboardingProfileCreationViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___GKOnboardingProfileCreationViewController_hostingController] = 0;
  if (a2)
  {
    v7 = sub_24E347CB8();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id OnboardingProfileCreationViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id OnboardingProfileCreationViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___GKOnboardingProfileCreationViewController_hostingController] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id OnboardingProfileCreationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E31E8A8()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_36_3();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_24DFB4D64;
  OUTLINED_FUNCTION_29_2();

  return sub_24E31D1EC(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24E31E998(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E31E9E0(uint64_t a1)
{
  v2 = type metadata accessor for ProfileCreationOnboardingView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E31EA3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB048);

  return sub_24E31E574();
}

uint64_t block_copy_helper_27_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_25Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t OUTLINED_FUNCTION_15_48(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

unint64_t AppStoreContentLookupSource.rawValue.getter()
{
  result = 0x796C746E65636572;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x646163724177656ELL;
      break;
    case 3:
      result = 0x756F59726F66;
      break;
    default:
      return result;
  }

  return result;
}

GameCenterUI::AppStoreContentLookupSource_optional __swiftcall AppStoreContentLookupSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24E348B78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_24E31ED6C()
{
  result = qword_27F1EB058;
  if (!qword_27F1EB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB058);
  }

  return result;
}

unint64_t sub_24E31EDE4@<X0>(unint64_t *a1@<X8>)
{
  result = AppStoreContentLookupSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AppStoreContentLookupSource(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

char *sub_24E31EEE8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC12GameCenterUI26FocusableTitledAppIconView_embeddedView] = [objc_allocWithZone(type metadata accessor for TitledAppIconView()) initWithFrame_];
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 set:-6.0 gkFocusHighlightInsets:{-6.0, -6.0, -6.0}];
  [v10 set:6.0 gkFocusHighlightCornerRadius:?];
  v11 = [v10 contentView];
  [v11 addSubview_];

  return v10;
}

id sub_24E31F09C()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI26FocusableTitledAppIconView_embeddedView];
  [v0 bounds];
  return [v1 setFrame_];
}

double sub_24E31F158(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI26FocusableTitledAppIconView_embeddedView);
  swift_getObjectType();

  return sub_24E2EC488(a1, v3);
}

uint64_t sub_24E31F278()
{
  type metadata accessor for AchievementsLinkProfileSection();
  result = swift_allocObject();
  *(result + 16) = 2829;
  return result;
}

uint64_t sub_24E31F2A4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_24E3433A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  memcpy(v47, __src, sizeof(v47));
  v9 = 0;
  if (sub_24DF8BF80(v47) != 1)
  {
    v44 = __src;
    v10 = v47[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_24E367D20;
    v41 = v2;
    memcpy(v46, __dst, sizeof(v46));
    sub_24DF8BF98(v46, v45);
    v11 = sub_24E347CB8();
    v40 = v5;
    v12 = v11;
    v13 = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();

    v15 = sub_24E347CF8();
    v42 = v16;
    v43 = v15;

    v39 = v10;
    v17 = [v39 playerID];
    v18 = sub_24E347CF8();
    v37 = v19;
    v38 = v18;

    v20 = sub_24E347CF8();
    v22 = v21;
    v23 = v8;
    v24 = sub_24E347CF8();
    v26 = v25;
    v45[3] = type metadata accessor for AchievementsByGameAction();
    v45[4] = sub_24E31F6C0(&qword_27F1E29D8, type metadata accessor for AchievementsByGameAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    ActionMetrics.init(domain:eventType:)(v20, v22, v24, v26);
    v28 = v37;
    *boxed_opaque_existential_1 = v38;
    boxed_opaque_existential_1[1] = v28;
    boxed_opaque_existential_1[2] = v39;
    sub_24E343398();
    v29 = v41;
    (*(v3 + 16))(v40, v23, v41);
    v30 = type metadata accessor for AchievementsLinkData();
    *(v9 + 56) = v30;
    *(v9 + 64) = sub_24E31F6C0(&qword_27F1DFFA0, type metadata accessor for AchievementsLinkData);
    v31 = __swift_allocate_boxed_opaque_existential_1((v9 + 32));
    sub_24E31F6C0(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
    sub_24E348918();
    (*(v3 + 8))(v23, v29);
    v31[15] = 0;
    *(v31 + 13) = 0u;
    *(v31 + 11) = 0u;
    v32 = *(v30 + 40);
    v33 = sub_24E3474B8();
    __swift_storeEnumTagSinglePayload(v31 + v32, 1, 1, v33);
    v34 = v42;
    v31[5] = v43;
    v31[6] = v34;
    v31[8] = 0;
    v31[9] = 0;
    v31[7] = 0;
    *(v31 + 80) = 0;
    sub_24DFE981C(v45, (v31 + 11));
    sub_24E30F240(v44);
  }

  return v9;
}

uint64_t sub_24E31F6C0(unint64_t *a1, void (*a2)(uint64_t))
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

objc_super *sub_24E31F708()
{
  v1 = OBJC_IVAR___GKContactsIntegrationConsentViewController____lazy_storage___contactsView;
  v2 = *&v0[OBJC_IVAR___GKContactsIntegrationConsentViewController____lazy_storage___contactsView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___GKContactsIntegrationConsentViewController____lazy_storage___contactsView];
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for ContactsIntegrationConsentView());
    v5 = sub_24E320E80(v0, v4);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

Swift::Void __swiftcall ContactsIntegrationConsentViewController.viewDidLoad()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v1 = sub_24E31F708();
  [(objc_super *)v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR___GKContactsIntegrationConsentViewController____lazy_storage___contactsView;
    [v2 addSubview_];

    v5 = objc_opt_self();
    v6 = *&v0[v4];
    v7 = [v0 view];
    [v5 _gkInstallEdgeConstraintsForView_containedWithinParentView_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ContactsIntegrationConsentViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1);
  v4 = sub_24E31F708();
  sub_24E09BA18();

  v5 = [v2 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 setNavigationBarHidden_];
  }
}

Swift::Void __swiftcall ContactsIntegrationConsentViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewIsAppearing_, a1);
}

Swift::Void __swiftcall ContactsIntegrationConsentViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  sub_24E31FA90();
}

uint64_t sub_24E31FA90()
{
  v0 = sub_24E347638();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  sub_24E32087C();
  sub_24E32E770(6, 6, 3u, 0, v3, 0);
  return (*(v1 + 8))(v3, v0);
}

Swift::Void __swiftcall ContactsIntegrationConsentViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillDisappear_, a1);
  if ([v1 isMovingFromParentViewController])
  {
    sub_24E320080(9, 2);
  }
}

void sub_24E31FCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 1)
  {
    v7 = 10;
  }

  else
  {
    if (a1)
    {
      goto LABEL_6;
    }

    v7 = 13;
  }

  sub_24E320080(v7, 0);
LABEL_6:
  v8 = [objc_opt_self() _gkReachabilityForInternetConnection];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 _gkCurrentReachabilityStatus];

    if (v10)
    {
      v11 = [objc_opt_self() proxyForLocalPlayer];
      v12 = [v11 profileServicePrivate];

      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = a2;
      *(v14 + 32) = a3;
      *(v14 + 40) = a1;
      OUTLINED_FUNCTION_0_188();
      v36 = 1107296256;
      v37 = sub_24E052CF0;
      v38 = &block_descriptor_106;
      v15 = _Block_copy(aBlock);

      [v12 setContactsIntegrationConsent:a1 withCompletionHandler:v15];
      _Block_release(v15);
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = sub_24E347CB8();
      v17 = GKGameCenterUIFrameworkBundle();
      v18 = GKGetLocalizedStringFromTableInBundle();

      v34 = sub_24E347CF8();
      v20 = v19;

      v21 = sub_24E347CB8();
      v22 = GKGameCenterUIFrameworkBundle();
      v23 = GKGetLocalizedStringFromTableInBundle();

      v24 = sub_24E347CF8();
      v26 = v25;

      v27 = sub_24E347CB8();
      v28 = GKGameCenterUIFrameworkBundle();
      v29 = GKGetLocalizedStringFromTableInBundle();

      if (!v29)
      {
        sub_24E347CF8();
        v29 = sub_24E347CB8();
      }

      v30 = swift_allocObject();
      *(v30 + 16) = v3;
      *(v30 + 24) = a1;
      *(v30 + 32) = a2;
      *(v30 + 40) = a3;
      OUTLINED_FUNCTION_0_188();
      v36 = 1107296256;
      v37 = sub_24E00B24C;
      v38 = &block_descriptor_10_5;
      v31 = _Block_copy(aBlock);

      v32 = v3;

      v33 = sub_24E320DC8(v34, v20, v24, v26, v29, v31, v32);
      _Block_release(v31);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24E320080(char a1, char a2)
{
  v4 = sub_24E347638();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  sub_24E32087C();
  sub_24E32E900(6, 6, 1, a1, a2, v7);
  return (*(v5 + 8))(v7, v4);
}

void sub_24E3201F4(char a1, int a2)
{
  if (a1)
  {
    v3 = [objc_opt_self() shared];
    v4 = [v3 delegate];

    if (!v4)
    {
      return;
    }

    [v4 onboardingFlowFinishedWithAction_];
    goto LABEL_10;
  }

  v6 = [v2 navigationController];
  if (!v6)
  {
    return;
  }

  v10 = v6;
  v7 = [objc_opt_self() shared];
  v8 = [v7 delegate];

  if (v8)
  {
    if (a2 == 1)
    {
      v9 = 7;
    }

    else
    {
      v9 = 8;
    }

    [v8 onboardingFlowFinishedWithAction_];

LABEL_10:

    swift_unknownObjectRelease();
    return;
  }
}

void sub_24E320360(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, int a5)
{
  v9 = sub_24E343F88();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (a1)
    {
      v47 = a3;
      sub_24E343C98();
      v15 = a1;
      v16 = sub_24E343F78();
      v17 = sub_24E348258();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        v20 = a1;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v21;
        *v19 = v21;
        _os_log_impl(&dword_24DE53000, v16, v17, "Contacts Integration Consent error: %@", v18, 0xCu);
        sub_24E0C60AC(v19);
        MEMORY[0x253040EE0](v19, -1, -1);
        MEMORY[0x253040EE0](v18, -1, -1);
      }

      (*(v10 + 8))(v12, v9);
      v22 = sub_24E347CB8();
      v23 = GKGameCenterUIFrameworkBundle();
      v24 = GKGetLocalizedStringFromTableInBundle();

      v25 = sub_24E347CF8();
      v27 = v26;

      v28 = sub_24E347CB8();
      v29 = GKGameCenterUIFrameworkBundle();
      v30 = GKGetLocalizedStringFromTableInBundle();

      v31 = sub_24E347CF8();
      v33 = v32;

      v34 = sub_24E347CB8();
      v35 = GKGameCenterUIFrameworkBundle();
      v36 = GKGetLocalizedStringFromTableInBundle();

      if (!v36)
      {
        sub_24E347CF8();
        v36 = sub_24E347CB8();
      }

      v37 = swift_allocObject();
      v38 = v47;
      v37[2] = v14;
      v37[3] = v38;
      v37[4] = a4;
      aBlock[4] = sub_24E320E74;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24E00B24C;
      aBlock[3] = &block_descriptor_16_2;
      v39 = _Block_copy(aBlock);
      v40 = v14;

      v41 = sub_24E320DC8(v25, v27, v31, v33, v36, v39, v40);
      _Block_release(v39);

      v14 = v36;
    }

    else
    {
      v42 = [objc_opt_self() proxyForLocalPlayer];
      v43 = [v42 accountService];

      v44 = [objc_opt_self() currentDevice];
      if (!v44)
      {
        __break(1u);
        return;
      }

      sub_24E1A3838(v44);
      if (v45)
      {
        v46 = sub_24E347CB8();
      }

      else
      {
        v46 = 0;
      }

      [v43 setLastContactsIntegrationConsentVersionDisplayedForSignedInPlayer_];
      swift_unknownObjectRelease();

      sub_24E3201F4(0, a5);
      a3();
    }
  }
}

uint64_t sub_24E32087C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24E347638();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E347628();
  sub_24E3477D8();
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  sub_24E32EA08();
  v9[0] = sub_24E3477C8();
  v9[1] = MEMORY[0x277D221C0];
  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0);
  sub_24E3475B8();
  (*(v1 + 8))(v3, v0);

  return (*(v5 + 8))(v7, v4);
}

id ContactsIntegrationConsentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24E347CB8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ContactsIntegrationConsentViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___GKContactsIntegrationConsentViewController____lazy_storage___contactsView] = 0;
  if (a2)
  {
    v7 = sub_24E347CB8();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id ContactsIntegrationConsentViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ContactsIntegrationConsentViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___GKContactsIntegrationConsentViewController____lazy_storage___contactsView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id ContactsIntegrationConsentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E320D98(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

id sub_24E320DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_24E347CB8();

  v11 = sub_24E347CB8();

  v12 = [a7 _gkPresentAlertWithTitle_message_buttonTitle_dismissHandler_];

  return v12;
}

objc_super *sub_24E320E80(void *a1, uint64_t a2)
{
  v3 = a2 + OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_delegate;
  *(a2 + OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_iconImage;
  *(a2 + v4) = sub_24E09B41C();
  v5 = OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_detailView;
  *(a2 + v5) = sub_24E09B564();
  v6 = OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_primaryTrayButton;
  *(a2 + v6) = sub_24E09B6BC();
  v7 = OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_secondaryTrayButton;
  *(a2 + v7) = sub_24E09B7FC();
  *(v3 + 8) = &off_28612C490;
  swift_unknownObjectWeakAssign();
  v8 = sub_24E3244AC(1, 0, 0, 0);
  sub_24E343AA8();
  v27 = sub_24E343888();
  v10 = v9;
  v11 = *(a2 + v4);
  v12 = *(a2 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24E36BFC0;
  v14 = *(a2 + v6);
  v15 = *(a2 + v7);
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24E36BFC0;
  *(v16 + 32) = v15;
  *(v16 + 40) = v14;
  v17 = v8 & 1;
  v18 = v14;
  v19 = v15;
  v20 = v18;
  v21 = v11;
  v22 = v12;
  v23 = sub_24E3246E4(v27, v10, 0, 0, v11, 0, v12, v13, v16, v17);
  v24 = *(&v23->receiver + OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_primaryTrayButton);
  v25 = v23;
  [v24 addTarget:v25 action:sel_primaryAction forControlEvents:0x2000];
  [*(&v25->receiver + OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_secondaryTrayButton) addTarget:v25 action:sel_secondaryAction forControlEvents:0x2000];

  return v25;
}

uint64_t getEnumTagSinglePayload for GKMultiplayerLayout(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for GKMultiplayerLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_24E321184(uint64_t result)
{
  if (*(v1 + 40) && *(v1 + 40) != 1 && __OFSUB__(result, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E321264(uint64_t result)
{
  if (!*(v1 + 40))
  {
    if (!__OFSUB__(result, 1))
    {
      return result;
    }

    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (*(v1 + 40) != 1 && __OFSUB__(result, 1))
  {
    goto LABEL_9;
  }

  return result;
}

double sub_24E321384()
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 preferredContentSizeCategory];

  sub_24E347CF8();
  OUTLINED_FUNCTION_5_82();
  OUTLINED_FUNCTION_9_47();
  v5 = v5 && v0 == v4;
  if (v5)
  {

    return 324.0;
  }

  OUTLINED_FUNCTION_3_92();
  OUTLINED_FUNCTION_27_14();

  if (v1)
  {

    return 324.0;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_5_82();
  OUTLINED_FUNCTION_9_47();
  if (v5 && v0 == v7)
  {

    return 292.0;
  }

  OUTLINED_FUNCTION_3_92();
  OUTLINED_FUNCTION_27_14();

  if (v1)
  {

    return 292.0;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_5_82();
  OUTLINED_FUNCTION_9_47();
  if (v5 && v0 == v9)
  {

    return 264.0;
  }

  OUTLINED_FUNCTION_3_92();
  OUTLINED_FUNCTION_27_14();

  if (v1)
  {

    return 264.0;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_5_82();
  OUTLINED_FUNCTION_9_47();
  if (v5 && v0 == v11)
  {

    return 224.0;
  }

  OUTLINED_FUNCTION_3_92();
  OUTLINED_FUNCTION_27_14();

  if (v1)
  {

    return 224.0;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_5_82();
  OUTLINED_FUNCTION_9_47();
  if (v5 && v0 == v14)
  {

    return 184.0;
  }

  OUTLINED_FUNCTION_3_92();
  OUTLINED_FUNCTION_27_14();

  if (v1)
  {

    return 184.0;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_5_82();
  OUTLINED_FUNCTION_9_47();
  if (v5 && v0 == v16)
  {

    return 114.0;
  }

  OUTLINED_FUNCTION_3_92();
  OUTLINED_FUNCTION_27_14();

  if (v1)
  {

    return 114.0;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_5_82();
  OUTLINED_FUNCTION_9_47();
  if (v5 && v0 == v18)
  {

    return 104.0;
  }

  OUTLINED_FUNCTION_3_92();
  OUTLINED_FUNCTION_27_14();

  if (v1)
  {

    return 104.0;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_5_82();
  OUTLINED_FUNCTION_9_47();
  if (v5 && v0 == v20)
  {

    return 96.0;
  }

  v22 = OUTLINED_FUNCTION_3_92();

  result = 88.0;
  if (v22)
  {
    return 96.0;
  }

  return result;
}

uint64_t sub_24E3216D4()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 262.0;
  if (result)
  {
    v1 = 392.0;
  }

  qword_27F1EB070 = *&v1;
  return result;
}

void sub_24E32170C(double a1)
{
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0 && a1 > 374.0)
  {
    v4 = [objc_opt_self() currentTraitCollection];
    v5 = [v4 preferredContentSizeCategory];

    sub_24E347CF8();
    OUTLINED_FUNCTION_5_82();
    OUTLINED_FUNCTION_9_47();
    v7 = v7 && v1 == v6;
    if (v7)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_3_92();
    OUTLINED_FUNCTION_27_14();

    if (v2)
    {

      return;
    }

    sub_24E347CF8();
    OUTLINED_FUNCTION_5_82();
    OUTLINED_FUNCTION_9_47();
    if (v7 && v1 == v8)
    {
LABEL_15:
    }

    else
    {
      OUTLINED_FUNCTION_3_92();
    }
  }
}

double sub_24E32185C(double a1)
{
  v2 = 24.0;
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    v2 = 8.0;
    if (a1 > 374.0)
    {
      v3 = 24.0;
      if (a1 <= 1024.0)
      {
        v3 = 16.0;
      }

      if (a1 > 736.0)
      {
        return v3;
      }

      else
      {
        return 10.0;
      }
    }
  }

  return v2;
}

void sub_24E3218CC(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB090);
  MEMORY[0x28223BE20](v3);
  v5 = (&v13 - v4);
  v7 = *v1;
  v6 = v1[1];
  v8 = *(*v1 + 16);
  if (v6 == v8)
  {

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }

  else
  {
    if (v6 >= v8)
    {
      __break(1u);
    }

    else
    {
      v9 = *(type metadata accessor for ActivityFeedRelationshipAchievement() - 8);
      v10 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6;
      v1[1] = v6 + 1;
      v11 = *(v3 + 48);
      v12 = v1[2];
      *v5 = v12;
      sub_24E3228BC(v10, v5 + v11, type metadata accessor for ActivityFeedRelationshipAchievement);
      if (!__OFADD__(v12, 1))
      {
        v1[2] = v12 + 1;
        sub_24E0A8D84(v5, a1, &qword_27F1EB090);
        __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24E321AA8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int a6, id a7)
{
  LODWORD(v141) = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_23(&v118 - v15);
  v16 = type metadata accessor for Achievement();
  v17 = OUTLINED_FUNCTION_0_27(v16, &__dst[8]);
  v131 = v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_1();
  v21 = v20 - v19;
  v22 = sub_24E343428();
  v23 = OUTLINED_FUNCTION_0_27(v22, &__dst[6]);
  v140 = v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_23(v26 - v25);
  v128 = type metadata accessor for ActivityFeedRelationshipAchievement();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_23(v29 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB088);
  MEMORY[0x28223BE20](v30 - 8);
  v135 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23(&v118 - v33);
  v34 = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementData_achievementCardViewModels) = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementData_achievementCardLinks) = v34;
  sub_24DF8BD34(a1, __dst);
  sub_24E1AA0F0(a7, __src);
  v35 = a2;
  sub_24E0E32D0(__dst, v35, a3, a4, a5, v141, __src);
  v37 = v36;
  if (!v36)
  {

    sub_24DF8BFF4(a7, &qword_27F1DEE90);
    sub_24DF8BE60(a1);
    return v37;
  }

  v124 = (v36 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships);
  v38 = *(v36 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships + 24);
  v146 = 0;
  v147 = 0;
  v145 = v38;
  v123 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementData_achievementCardViewModels;
  v122 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementData_achievementCardLinks;
  v133 = v37;
  v118 = (v37 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_mainActionLink);
  v121 = (v140 + 8);

  v39 = v136;
  v40 = MEMORY[0x277D84F90];
  v127 = a1;
  v126 = a7;
  v125 = v35;
  while (1)
  {
    v41 = v135;
    sub_24E3218CC(v135);
    v42 = v41;
    v43 = v134;
    sub_24E0A8D84(v42, v134, &qword_27F1EB088);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB090);
    if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
    {
      break;
    }

    v140 = *v43;
    sub_24E00FCC4(v43 + *(v44 + 48), v39);
    v45 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v46 = v129;
    sub_24E343418();
    v47 = sub_24E3433C8();
    (*v121)(v46, v130);
    [v45 setLocale_];

    [v45 setDateStyle_];
    v48 = v128;
    v49 = *(v128 + 32);
    v50 = sub_24E3432E8();
    v141 = v45;
    v51 = [v45 stringFromDate_];

    v52 = sub_24E347CF8();
    v54 = v53;

    __src[0] = v52;
    __src[1] = v54;
    sub_24DF90C4C();
    v55 = COERCE_DOUBLE(sub_24E348708());
    v57 = v56;

    v58 = *(v39 + *(v48 + 36));
    if (v58 >= 100)
    {
      type metadata accessor for Artwork();
      v139 = v57;
      v59 = v39[5];
      __src[0] = v39[4];
      __src[1] = v59;
      v143 = 25186;
      v144 = 0xE200000000000000;
      v138 = Artwork.__allocating_init(template:size:backgroundColor:crop:variants:)(__src, 0, &v143, v40, 256.0, 256.0) | 0x4000000000000000;

      v137 = v55;
    }

    else
    {

      v139 = 0;
      v138 = 0;
      v137 = v58;
    }

    v60 = v39[1];
    v143 = *v39;
    v144 = v60;

    sub_24E348918();
    v61 = v39[2];
    v62 = v39[3];
    v64 = v39[6];
    v63 = v39[7];
    v65 = v39;
    v66 = v132;
    v67 = v132[8];
    v68 = sub_24E343368();
    OUTLINED_FUNCTION_5_2();
    (*(v69 + 16))(v21 + v67, v65 + v49, v68);
    __swift_storeEnumTagSinglePayload(v21 + v67, 0, 1, v68);
    sub_24DF8BD34(__src, v21);

    sub_24DF8BE60(__src);
    v70 = v21 + v66[9];
    *(v70 + 32) = 0;
    *v70 = 0u;
    *(v70 + 16) = 0u;
    v71 = (v21 + v66[10]);
    *v71 = 0;
    v71[1] = 0;
    v71[2] = 0;
    *(v21 + v66[11]) = 0;
    v72 = v21 + v66[12];
    *v72 = 0u;
    *(v72 + 16) = 0u;
    v74 = v66[13];
    v73 = v66[14];
    v75 = sub_24E3474B8();
    __swift_storeEnumTagSinglePayload(v21 + v73, 1, 1, v75);
    *(v21 + 40) = v61;
    *(v21 + 48) = v62;
    *(v21 + 56) = v64;
    *(v21 + 64) = v63;
    v76 = v139;
    *(v21 + 72) = v137;
    *(v21 + 80) = v76;
    *(v21 + 88) = v138;
    sub_24E151BF4(*v72, *(v72 + 8));
    *v72 = 0u;
    *(v72 + 16) = 0u;
    sub_24E0735B0(*v71, v71[1], v71[2]);
    *v71 = 0;
    v71[1] = 0;
    v71[2] = 0;
    v77 = MEMORY[0x277D84F90];
    *(v21 + v74) = MEMORY[0x277D84F90];
    v78 = v133;
    v79 = v123;
    swift_beginAccess();
    sub_24E0111E8();
    v80 = *(*(v78 + v79) + 16);
    sub_24E1242B8(v80);
    v81 = *(v78 + v79);
    *(v81 + 16) = v80 + 1;
    sub_24E3228BC(v21, v81 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v80, type metadata accessor for Achievement);
    *(v78 + v79) = v81;
    swift_endAccess();
    v82 = v124;
    v83 = *v124;
    v84 = v124[1];
    v85 = v124[2];
    v86 = v124[3];

    v87 = sub_24E151234(v83, v84, v85, v86);

    type metadata accessor for ActivityFeedSharedView();
    a7 = sub_24E00DE9C(v87, v140);
    v89 = v88;
    a1 = v122;
    swift_beginAccess();
    sub_24E0111D0();
    v90 = *(*(v78 + a1) + 16);
    sub_24E1242A0(v90);
    v91 = *(v78 + a1);
    *(v91 + 16) = v90 + 1;
    v92 = v91 + 16 * v90;
    v93 = v82;
    *(v92 + 32) = a7;
    *(v92 + 40) = v89;
    *(v78 + a1) = v91;
    swift_endAccess();
    v94 = v82[1];

    if (!*(v94 + 2))
    {
      v40 = v77;

      OUTLINED_FUNCTION_7_83();
      OUTLINED_FUNCTION_0_189();
      v39 = v136;
      sub_24E322864(v136, v111);
      OUTLINED_FUNCTION_1_155();
      OUTLINED_FUNCTION_3_139();
      goto LABEL_13;
    }

    v95 = *(v94 + 5);
    v140 = *(v94 + 4);
    a1 = *(v94 + 7);
    v96 = v94[9];
    v139 = *(v94 + 10);
    v97 = v93;
    v98 = *(v94 + 11);
    v99 = *(v94 + 12);

    a7 = v95;

    v100 = *v97;
    if (*(*v97 + 16))
    {
      v120 = v99;
      v137 = v96;
      v138 = a1;
      v101 = v100[4];
      a1 = v100[5];
      v102 = v100[6];
      v103 = v100[7];
      v104 = v100[9];
      v105 = v100[10];
      __src[0] = v87;
      __src[1] = v139;
      __src[2] = v98;
      __src[3] = v140;
      __src[4] = a7;
      __src[5] = v101;
      __src[6] = a1;
      __src[7] = v102;
      __src[8] = v103;
      memcpy(__dst, __src, sizeof(__dst));
      v149 = 2;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v140 = v104;

      a7 = v105;

      v106 = v119;
      sub_24E18F520(__dst, v119);
      sub_24DF8BFF4(__src, &qword_27F1EB098);
      v107 = sub_24E343288();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v106, 1, v107);
      v39 = v136;
      if (EnumTagSinglePayload == 1)
      {
        OUTLINED_FUNCTION_0_189();
        sub_24E322864(v39, v109);

        OUTLINED_FUNCTION_7_83();
        OUTLINED_FUNCTION_1_155();
        sub_24DF8BFF4(v106, &qword_27F1DEFB8);
        v110 = 0;
      }

      else
      {
        v139 = sub_24E343218();
        v110 = v113;

        OUTLINED_FUNCTION_7_83();
        OUTLINED_FUNCTION_0_189();
        sub_24E322864(v39, v114);
        OUTLINED_FUNCTION_1_155();
        (*(*(v107 - 8) + 8))(v106, v107);
      }

      OUTLINED_FUNCTION_3_139();
      v35 = v125;
      v115 = v118;
      *v118 = v116;
      v115[1] = v110;

      v40 = MEMORY[0x277D84F90];
    }

    else
    {

      OUTLINED_FUNCTION_7_83();
      OUTLINED_FUNCTION_0_189();
      v39 = v136;
      sub_24E322864(v136, v112);
      OUTLINED_FUNCTION_1_155();
      OUTLINED_FUNCTION_3_139();
      v40 = MEMORY[0x277D84F90];
LABEL_13:
      v35 = v125;
    }
  }

  sub_24DF8BFF4(a7, &qword_27F1DEE90);
  sub_24DF8BE60(a1);

  return v133;
}

uint64_t sub_24E322734()
{
}

uint64_t sub_24E322774()
{
  v0 = sub_24E0E7144();

  return v0;
}

uint64_t sub_24E3227BC()
{
  v0 = sub_24E322774();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ActivityFeedAchievementData()
{
  result = qword_27F1EB078;
  if (!qword_27F1EB078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E322864(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E3228BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_155()
{

  return sub_24E322864(v0, type metadata accessor for Achievement);
}

void OUTLINED_FUNCTION_7_83()
{
  v2 = *(v0 - 296);
}

id sub_24E322988()
{
  OUTLINED_FUNCTION_29();
  v10 = type metadata accessor for ActivityFeedAchievementCollectionViewCell();
  v1 = OUTLINED_FUNCTION_28();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v10);
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 16.0;
  }

  [v4 set:0.0 gkFocusHighlightInsets:{0.0, v5, 0.0}];
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v6, qword_27F20BF00);
  v7 = [objc_allocWithZone(MEMORY[0x277D75C80]) init];
  v8 = sub_24E336558();

  [v4 set:v8 gkFocusHighlightCornerRadius:?];
  return v4;
}

double sub_24E322B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v9 = v7 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  OUTLINED_FUNCTION_3_18(a2, &v18 - v14);
  OUTLINED_FUNCTION_3_18(a3, &v15[*(v6 + 56)]);
  sub_24DFC5400(v15, v13);
  v16 = *(v6 + 56);
  OUTLINED_FUNCTION_3_18(v13, v9);
  OUTLINED_FUNCTION_3_18(&v13[v16], v9 + *(v6 + 56));
  sub_24DF8C95C(v9, &unk_27F1E1CA0);
  sub_24DF8C95C(&v13[v16], &unk_27F1E1CB0);
  sub_24DF8C95C(v13, &unk_27F1E1CB0);
  return 0.0;
}

double sub_24E322CA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  sub_24DF9DEAC(a2, &v19 - v14, &unk_27F1E1CB0);
  sub_24DF9DEAC(a3, &v15[*(v9 + 56)], &unk_27F1E1CB0);
  type metadata accessor for ActivityFeedBaseCollectionViewCell();
  sub_24DF9DEAC(v15, v12, &unk_27F1E1CA0);
  v16 = *(v9 + 56);
  v17 = sub_24E17B0B4(a1, v12, v12 + v16, a4);
  sub_24DF8C95C(v15, &unk_27F1E1CA0);
  sub_24DF8C95C(v12 + v16, &unk_27F1E1CB0);
  sub_24DF8C95C(v12, &unk_27F1E1CB0);
  return v17;
}

uint64_t sub_24E322E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[0] = a1;
  v18[1] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  sub_24DF9DEAC(a2, v18 - v14, &unk_27F1E1CB0);
  sub_24DF9DEAC(a3, &v15[*(v9 + 56)], &unk_27F1E1CB0);
  type metadata accessor for ActivityFeedBaseCollectionViewCell();
  sub_24DF9DEAC(v15, v12, &unk_27F1E1CA0);
  v16 = *(v9 + 56);
  sub_24E17B1EC(v12, v12 + v16, a5);
  sub_24DF8C95C(v15, &unk_27F1E1CA0);
  sub_24DF8C95C(v12 + v16, &unk_27F1E1CB0);
  return sub_24DF8C95C(v12, &unk_27F1E1CB0);
}

uint64_t sub_24E322FB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E60C8);
  sub_24E347148();

  return 1;
}

uint64_t sub_24E323004()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E60C8);
  sub_24E347148();
}

uint64_t sub_24E323050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E60C8);
  sub_24E347148();
  type metadata accessor for ActivityFeedBaseCollectionViewCell();
  sub_24E17B2CC(v13, a6);
  sub_24E2EA5D4(a1, a2, a3, a4, a5, a6);
}

id sub_24E323120(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E60C8);
  sub_24E347148();
  type metadata accessor for ActivityFeedBaseCollectionViewCell();
  v3 = sub_24E17B3B4(v5, a2);

  return v3;
}

id sub_24E3231AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityFeedAchievementCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivityFeedAchievementCollectionViewCell()
{
  result = qword_27F1EB0A0;
  if (!qword_27F1EB0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E3232B8(uint64_t a1)
{
  result = sub_24E3233F8(&qword_27F1EB0B0, type metadata accessor for ActivityFeedAchievementCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E3233A0(uint64_t a1)
{
  result = sub_24E3233F8(&qword_27F1E6460, type metadata accessor for ActivityFeedAchievementCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E3233F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E323448(char a1)
{
  result = 1802398060;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_2_134();
      break;
    case 2:
      result = OUTLINED_FUNCTION_0_190();
      break;
    case 3:
      result = 0x6F50737365636361;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x42656D6F636C6577;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E3234E4(char a1)
{
  result = 0x657461676976616ELL;
  switch(a1)
  {
    case 1:
      result = 0x7373696D736964;
      break;
    case 2:
      result = OUTLINED_FUNCTION_3_140();
      break;
    case 3:
      result = 1852141679;
      break;
    case 4:
      result = 0x74726F706572;
      break;
    case 5:
      result = 0x65766F6D6572;
      break;
    case 6:
      result = OUTLINED_FUNCTION_1_156();
      break;
    case 7:
      result = 1953064037;
      break;
    case 8:
      result = 6579297;
      break;
    case 9:
      result = 0x7463656C6573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E3235AC(char a1)
{
  result = 0x614E726579616C70;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x6F6272656461656CLL;
      break;
    case 3:
      result = 0x49656C69666F7270;
      break;
    case 4:
      result = 0x6D65766569686361;
      break;
    case 5:
      result = 0x656C69666F7270;
      break;
    case 6:
      result = 0x7250646E65697266;
      break;
    case 7:
      result = 0x73646E65697266;
      break;
    case 8:
      result = 0x72616F6268736164;
      break;
    case 9:
      result = OUTLINED_FUNCTION_3_140();
      break;
    case 10:
      result = 0x65756E69746E6F63;
      break;
    case 11:
      result = 1701736292;
      break;
    case 12:
      result = 0x7472617453746567;
      break;
    case 13:
      result = 0x74614C7075746573;
      break;
    case 14:
      result = 0x74754F6E676973;
      break;
    case 15:
      result = 0x6E65697246646461;
      break;
    case 16:
      result = 0x657469766E69;
      break;
    case 17:
      result = 0x7246657469766E49;
      break;
    case 18:
      v3 = 0x65766F6D6572;
      goto LABEL_28;
    case 19:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0x464174726F706572;
      break;
    case 21:
      result = 0x6C6C41656573;
      break;
    case 22:
      result = 0x744F657469766E69;
      break;
    case 23:
      result = 0x65726F4D776F6873;
      break;
    case 24:
      result = 0x7373654C776F6873;
      break;
    case 25:
      result = OUTLINED_FUNCTION_1_156();
      break;
    case 26:
      result = 0xD000000000000010;
      break;
    case 27:
      result = 0x776F4E746F4ELL;
      break;
    case 28:
      result = 0x666F725074696445;
      break;
    case 29:
      result = 0x6B63694E74696445;
      break;
    case 30:
      result = 0x656E6F7972657645;
      break;
    case 31:
      result = 0x4F73646E65697246;
      break;
    case 32:
      result = 0x756F59796C6E4FLL;
      break;
    case 33:
      v3 = 0x747065636341;
LABEL_28:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7246000000000000;
      break;
    case 34:
      result = 0x65697246796E6544;
      break;
    case 35:
      result = 0x65736F6C43;
      break;
    case 36:
      result = 0x6E6F6349656D6167;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E323980(char a1)
{
  result = 0x707954746E657665;
  switch(a1)
  {
    case 1:
      v3 = 0x6E6F69746361;
      goto LABEL_5;
    case 2:
      v3 = 0x746567726174;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
      break;
    case 3:
      result = 0x6449746567726174;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0x6973736572706D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E323A3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369E30;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v3 = *v0;
  v4 = v0[1];
  v5 = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 0x657079546469;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0x636974617473;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v5;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x800000024E3B3630;
  v6 = sub_24DF97DD4();

  *(inited + 144) = sub_24E3485F8();
  *(inited + 168) = v6;
  strcpy((inited + 176), "locationType");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  v7 = sub_24E323CBC(*(v1 + 40));
  *(inited + 216) = v5;
  *(inited + 192) = v7;
  *(inited + 200) = v8;
  v9 = sub_24E347C28();
  v15 = *(v1 + 1);
  if (*(&v15 + 1))
  {
    v14 = v5;
    v13 = v15;
    sub_24E024710(&v13, &v12);
    sub_24E323E28(&v15, &v11);
    swift_isUniquelyReferenced_nonNull_native();
    v11 = v9;
    sub_24E058328();
    return v11;
  }

  return v9;
}

uint64_t sub_24E323BF0(char a1)
{
  result = 0x6B63696C63;
  switch(a1)
  {
    case 1:
      result = 0x686372616573;
      break;
    case 2:
      result = 0x676F6C616964;
      break;
    case 3:
      result = 0x6973736572706D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E323C70()
{
  v0 = sub_24E348B78();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24E323CBC(char a1)
{
  result = 1802398060;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_0_190();
      break;
    case 2:
      result = 0x666C656873;
      break;
    case 3:
      result = OUTLINED_FUNCTION_2_134();
      break;
    case 4:
      result = 0x6143646E65697266;
      break;
    case 5:
      result = 0x70756B636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_24E323D3C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x657079546469;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_24E323DCC()
{
  v0 = sub_24E348B78();

  return v0 != 0;
}

uint64_t sub_24E323E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E323E98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E323448(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24E323EE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E323C70();
  *a1 = result;
  return result;
}

uint64_t sub_24E323F18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E323CBC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_24E323F50@<W0>(_BYTE *a1@<X8>)
{
  result = sub_24E323DCC();
  *a1 = result;
  return result;
}

uint64_t sub_24E323F9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E323FDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_24E324034(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_24E32410C(_BYTE *result, int a2, int a3)
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

unint64_t sub_24E3241B8()
{
  result = qword_27F1EB0B8;
  if (!qword_27F1EB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB0B8);
  }

  return result;
}

unint64_t sub_24E324210()
{
  result = qword_27F1EB0C0;
  if (!qword_27F1EB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB0C0);
  }

  return result;
}

uint64_t sub_24E3242B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    v11 = objc_opt_self();
    v12 = [v11 currentTraitCollection];
    v13 = [v12 verticalSizeClass];

    if (v13 == 2 && (v14 = [v11 currentTraitCollection], v15 = objc_msgSend(v14, sel_horizontalSizeClass), v14, v15 == 2))
    {
      return a3;
    }

    else
    {
      v16 = [v11 currentTraitCollection];
      v17 = [v16 verticalSizeClass];

      if (v17 == 2)
      {
        return a5;
      }

      else
      {
        return a7;
      }
    }
  }

  return a1;
}

double sub_24E3243DC()
{
  OUTLINED_FUNCTION_29();
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    v6 = objc_opt_self();
    v7 = OUTLINED_FUNCTION_9_74(v6);
    v8 = OUTLINED_FUNCTION_7_84(v7);

    if (v8 != 2 || (v9 = OUTLINED_FUNCTION_8_89(), v10 = [v9 horizontalSizeClass], v9, v5 = v4, v10 != 2))
    {
      v11 = OUTLINED_FUNCTION_8_89();
      v12 = [v11 (v1 + 1439)];

      if (v12 == 2)
      {
        return v3;
      }

      else
      {
        return v2;
      }
    }
  }

  return v5;
}

uint64_t sub_24E3244AC(char a1, char a2, char a3, char a4)
{
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    v8 = objc_opt_self();
    v9 = [v8 currentTraitCollection];
    v10 = [v9 verticalSizeClass];

    if (v10 == 2 && (v11 = [v8 currentTraitCollection], v12 = objc_msgSend(v11, sel_horizontalSizeClass), v11, v12 == 2))
    {
      a1 = a2;
    }

    else
    {
      v13 = [v8 currentTraitCollection];
      v14 = [v13 verticalSizeClass];

      if (v14 == 2)
      {
        a1 = a3;
      }

      else
      {
        a1 = a4;
      }
    }
  }

  return a1 & 1;
}

double static OnboardingTemplateView.horizontalLayoutHorizontalMargin.getter()
{
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    return 32.0;
  }

  v3 = objc_opt_self();
  v4 = OUTLINED_FUNCTION_9_74(v3);
  v5 = OUTLINED_FUNCTION_7_84(v4);

  if (v5 != 2 || (v6 = OUTLINED_FUNCTION_8_89(), v7 = [v6 horizontalSizeClass], v6, result = 16.0, v7 != 2))
  {
    v8 = OUTLINED_FUNCTION_8_89();
    [v8 (v1 + 1439)];

    return 16.0;
  }

  return result;
}

uint64_t sub_24E324668()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_24E348478();
  return v0 & 1;
}

objc_super *sub_24E3246E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_contentTopConstraint) = 0;
  *(v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_contentTopOffset) = 0;
  v18 = OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_contentStack;
  *(v10 + v18) = sub_24E326424();
  v19 = OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_contentScrollView;
  *(v10 + v19) = sub_24E3264B0();
  *(v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___headerContainer) = 0;
  *(v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___bottomTrayBlurView) = 0;
  *(v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___headerView) = 0;
  *(v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___verticalBottomTray) = 0;
  *(v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_bottomTrayHidden) = 0;
  *(v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___horizontalBottomTray) = 0;
  *(v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_headerTopMargin) = 0;
  v20 = (v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_headerTitle);
  *v20 = a1;
  v20[1] = a2;
  v21 = (v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_headerDetailText);
  *v21 = a3;
  v21[1] = a4;
  *(v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_headerIcon) = a5;
  *(v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_viewBeforeHeader) = a6;
  *(v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_viewAfterHeader) = a7;
  *(v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_viewsInVerticalBottomTray) = a8;
  *(v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_viewsInHorizontalBottomTray) = a9;
  *(v10 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_overrideBottomTrayAxis) = a10 & 1;
  type metadata accessor for OnboardingTemplateView();
  v22 = a5;
  v23 = a6;
  v24 = a7;
  OUTLINED_FUNCTION_2_135();
  v26 = [(objc_super *)v25 initWithFrame:?];
  sub_24E3257E0();
  sub_24E325A74();
  LODWORD(a4) = GKIsXRUIIdiom();
  v27 = objc_opt_self();
  v28 = v26;
  if (a4)
  {
    v29 = [v27 clearColor];
    [(objc_super *)v28 setBackgroundColor:v29];

    [(objc_super *)v28 setOverrideUserInterfaceStyle:2];
    v30 = v28;
  }

  else
  {
    v30 = [v27 systemBackgroundColor];
    [(objc_super *)v28 setBackgroundColor:v30];
  }

  return v28;
}

id sub_24E324FDC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_5_117();
  v27 = v24;
  swift_getObjectType();
  v28 = *&v24[OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_contentStack];
  v29 = &selRef_processorCount;
  [v28 setAxis_];
  v30 = &selRef_processorCount;
  [v28 setAlignment_];
  [v28 setDistribution_];
  v31 = [v28 setSpacing_];
  v32 = (*((*MEMORY[0x277D85000] & *v24) + 0x218))(v31);
  v33 = static OnboardingTemplateView.horizontalLayoutHorizontalMargin.getter();
  [v28 setLayoutMargins_];
  v34 = sub_24E325D8C();
  OUTLINED_FUNCTION_2_135();
  [v35 v36];

  v37 = *&v27[OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___headerContainer];
  v38 = sub_24E325DCC();
  [v37 addArrangedSubview_];

  sub_24E3261BC();
  v39 = sub_24E32613C();
  v40 = [v39 subviews];

  sub_24DF88A8C(0, &qword_27F1E1D30);
  v41 = sub_24E347F08();

  v42 = sub_24DFD8654(v41);
  if (v42)
  {
    v43 = v42;
    if (v42 < 1)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    for (i = 0; i != v43; i = i + 1)
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x25303F560](i, v41);
      }

      else
      {
        v45 = *(v41 + 8 * i + 32);
      }

      v46 = v45;
      [v45 removeFromSuperview];
    }
  }

  v41 = *&v27[OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_viewsInHorizontalBottomTray];
  v43 = &unk_27F1EB000;
  v25 = &selRef_smallIconURLString;
  v26 = &selRef_setAutoScrollToPlayerId_;
  if (sub_24DFD8654(v41) == 1)
  {
    sub_24DFFA844(0, (v41 & 0xC000000000000001) == 0, v41);
    if ((v41 & 0xC000000000000001) == 0)
    {
      v47 = *(v41 + 32);
LABEL_11:
      v48 = v47;
      v49 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
      [v49 v29[430]];
      [v49 v30[386]];
      v50 = *&v27[v43[42]];
      v51 = v49;
      [v50 addArrangedSubview_];
      [v51 addArrangedSubview_];
      v52 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_24E369990;
      v54 = [v48 v25[391]];
      v55 = [v51 v25[391]];

      v56 = [v54 constraintEqualToAnchor:v55 multiplier:0.5];
      *(v53 + 32) = v56;
      sub_24DF88A8C(0, &qword_27F1E1F10);
      v57 = sub_24E347EE8();

      [v52 v26[355]];

      goto LABEL_12;
    }

LABEL_26:
    v47 = MEMORY[0x25303F560](0, v41);
    goto LABEL_11;
  }

  v87 = sub_24DFD8654(v41);
  v88 = 0;
  v30 = OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___horizontalBottomTray;
  v25 = (v41 & 0xC000000000000001);
  v26 = (v41 & 0xFFFFFFFFFFFFFF8);
  while (v87 != v88)
  {
    if (v25)
    {
      v89 = MEMORY[0x25303F560](v88, v41);
    }

    else
    {
      if (v88 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v89 = *(v41 + 8 * v88 + 32);
    }

    v29 = v89;
    if (__OFADD__(v88, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    [*(v30 + v27) addArrangedSubview_];

    ++v88;
  }

LABEL_12:
  v58 = sub_24E325DAC();
  [v27 addSubview_];

  v59 = OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___horizontalBottomTray;
  [v27 addSubview_];
  v90 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_24E3857F0;
  v61 = [*&v27[v59] centerXAnchor];
  v62 = [v27 centerXAnchor];
  v63 = [v61 constraintEqualToAnchor_];

  *(v60 + 32) = v63;
  v64 = [*&v27[v59] bottomAnchor];
  v65 = [v27 safeAreaLayoutGuide];
  v66 = [v65 bottomAnchor];

  v67 = [v64 constraintEqualToAnchor_];
  *(v60 + 40) = v67;
  v68 = [*&v27[v59] widthAnchor];
  v69 = OUTLINED_FUNCTION_1_157([v27 widthAnchor]);

  *(v60 + 48) = v69;
  v70 = OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___bottomTrayBlurView;
  v71 = [*&v27[OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___bottomTrayBlurView] centerXAnchor];
  v72 = OUTLINED_FUNCTION_1_157([v27 centerXAnchor]);

  *(v60 + 56) = v72;
  v73 = [*&v27[v70] bottomAnchor];
  v74 = OUTLINED_FUNCTION_1_157([v27 bottomAnchor]);

  *(v60 + 64) = v74;
  v75 = [*&v27[v70] widthAnchor];
  v76 = OUTLINED_FUNCTION_1_157([v27 widthAnchor]);

  *(v60 + 72) = v76;
  v77 = [*&v27[v70] topAnchor];
  v78 = OUTLINED_FUNCTION_1_157([*&v27[v59] topAnchor]);

  *(v60 + 80) = v78;
  sub_24DF88A8C(0, &qword_27F1E1F10);
  v79 = sub_24E347EE8();

  [v90 activateConstraints_];

  v80 = *&v27[OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_contentScrollView];
  [*&v27[v59] frame];
  v81 = OUTLINED_FUNCTION_3_141();
  [v80 v82];
  [*&v27[v59] frame];
  [v27 safeAreaInsets];
  OUTLINED_FUNCTION_3_141();
  OUTLINED_FUNCTION_4_117();

  return [v83 v84];
}

void sub_24E3257E0()
{
  [v0 addSubview_];
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24E36D5F0;
  v3 = OUTLINED_FUNCTION_11_58();
  v4 = [v3 topAnchor];

  v5 = [v0 topAnchor];
  v6 = OUTLINED_FUNCTION_6_105();

  *(v2 + 32) = v6;
  v7 = OUTLINED_FUNCTION_11_58();
  v8 = [v7 bottomAnchor];

  v9 = [v0 bottomAnchor];
  v10 = OUTLINED_FUNCTION_6_105();

  *(v2 + 40) = v10;
  v11 = OUTLINED_FUNCTION_11_58();
  v12 = [v11 leadingAnchor];

  v13 = [v0 leadingAnchor];
  v14 = OUTLINED_FUNCTION_6_105();

  *(v2 + 48) = v14;
  v15 = OUTLINED_FUNCTION_11_58();
  v16 = [v15 trailingAnchor];

  v17 = [v0 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v2 + 56) = v18;
  sub_24DF88A8C(0, &qword_27F1E1F10);
  v19 = sub_24E347EE8();

  [v1 activateConstraints_];
}

void sub_24E325A74()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_contentScrollView);
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_contentStack);
  [v1 addSubview_];
  v3 = [v2 topAnchor];
  v4 = [v1 contentLayoutGuide];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:0.0];
  v7 = *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_contentTopConstraint);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_contentTopConstraint) = v6;
  v8 = v6;

  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24E36D5F0;
  *(v10 + 32) = v8;
  v11 = v8;
  v12 = [v2 bottomAnchor];
  v13 = [v1 contentLayoutGuide];
  v14 = [v13 bottomAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v10 + 40) = v15;
  v16 = [v2 leadingAnchor];
  v17 = [v1 safeAreaLayoutGuide];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v10 + 48) = v19;
  v20 = [v2 trailingAnchor];
  v21 = [v1 safeAreaLayoutGuide];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v10 + 56) = v23;
  sub_24DF88A8C(0, &qword_27F1E1F10);
  v24 = sub_24E347EE8();

  [v9 activateConstraints_];
}

id sub_24E325DCC()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___headerView;
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___headerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___headerView);
  }

  else
  {
    v4 = sub_24E326650(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

double sub_24E325E30()
{
  v2 = 16.0;
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    v3 = objc_opt_self();
    v4 = OUTLINED_FUNCTION_9_74(v3);
    v5 = OUTLINED_FUNCTION_7_84(v4);

    if (v5 != 2 || (v6 = OUTLINED_FUNCTION_8_89(), v7 = [v6 horizontalSizeClass], v6, v2 = 5.0, v7 != 2))
    {
      v8 = OUTLINED_FUNCTION_8_89();
      [v8 (v1 + 1439)];

      return 5.0;
    }
  }

  return v2;
}

void sub_24E325F10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_5_117();
  swift_getObjectType();
  v25 = sub_24E325EF0();
  (*((*MEMORY[0x277D85000] & *v24) + 0x1B8))();
  [v25 setSpacing_];

  v26 = sub_24E3268DC();
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    v27 = *(v24 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_viewsInVerticalBottomTray);
    v36 = MEMORY[0x277D84F90];
    v28 = sub_24DFD8654(v27);
    for (i = 0; v28 != i; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x25303F560](i, v27);
      }

      else
      {
        if (i >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v30 = *(v27 + 8 * i + 32);
      }

      v31 = v30;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
      }

      else
      {
      }
    }

    v32 = sub_24DFD8654(v36);

    if (v32 == 1)
    {
      v26 = v26 + 55.0;
    }
  }

  v33 = sub_24E3243DC();
  [*(v24 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___verticalBottomTray) setLayoutMargins_];
  OUTLINED_FUNCTION_4_117();
}

id sub_24E32615C(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_24E3261BC()
{
  swift_getObjectType();
  v1 = sub_24E3243DC();
  v2 = sub_24E32613C();
  v3 = sub_24E3267F8();
  [v2 setLayoutMargins_];

  v4 = *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___horizontalBottomTray);
  [v4 setSpacing_];
}

uint64_t sub_24E3262B0()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 verticalSizeClass];

  if (v1 == 2)
  {
    return 1;
  }

  else
  {
    return sub_24E324668() & 1;
  }
}

void sub_24E32631C()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_contentTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_contentTopOffset) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_contentStack;
  *(v0 + v1) = sub_24E326424();
  v2 = OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_contentScrollView;
  *(v0 + v2) = sub_24E3264B0();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___headerContainer) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___bottomTrayBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___headerView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___verticalBottomTray) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_bottomTrayHidden) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView____lazy_storage___horizontalBottomTray) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_headerTopMargin) = 0;
  sub_24E348AE8();
  __break(1u);
}

id sub_24E326424()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setLayoutMarginsRelativeArrangement_];
  sub_24DFD8050(0xD000000000000026, 0x800000024E3B3970, v0);

  return v0;
}

id sub_24E3264B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_24DFD8050(0xD00000000000002BLL, 0x800000024E3B3940, v0);

  return v0;
}

id sub_24E326528()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v0 setAxis_];
  [v0 setDistribution_];
  [v0 setAlignment_];
  [v0 setLayoutMarginsRelativeArrangement_];
  sub_24DFD8050(0xD000000000000029, 0x800000024E3B3A30, v0);
  return v0;
}

id sub_24E3265D0()
{
  v0 = [objc_opt_self() effectWithStyle_];
  v1 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

id sub_24E326650(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_headerTitle);
  v2 = *(a1 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_headerTitle + 8);
  v3 = *(a1 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_headerDetailText);
  v4 = *(a1 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_headerDetailText + 8);
  v5 = *(a1 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_headerIcon);
  v6 = objc_allocWithZone(MEMORY[0x277D37640]);
  v7 = v5;

  v8 = sub_24E326F40(v1, v2, v3, v4, v5);
  sub_24DFD8050(0xD000000000000024, 0x800000024E3B3A00, v8);
  return v8;
}

double sub_24E326710()
{
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    return 80.0;
  }

  v2 = objc_opt_self();
  v3 = [v2 currentTraitCollection];
  v4 = [v3 verticalSizeClass];

  if (v4 == 2)
  {
    v5 = [v2 currentTraitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == 2)
    {
      return 88.0;
    }
  }

  v7 = [v2 currentTraitCollection];
  [v7 verticalSizeClass];

  return 24.0;
}

double sub_24E3267F8()
{
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    return 32.0;
  }

  v1 = objc_opt_self();
  v2 = [v1 currentTraitCollection];
  v3 = [v2 verticalSizeClass];

  if (v3 != 2 || (v4 = [v1 currentTraitCollection], v5 = objc_msgSend(v4, sel_horizontalSizeClass), v4, result = 12.0, v5 != 2))
  {
    v6 = [v1 currentTraitCollection];
    [v6 verticalSizeClass];

    return 12.0;
  }

  return result;
}

double sub_24E3268DC()
{
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    return 32.0;
  }

  v1 = objc_opt_self();
  v2 = [v1 currentTraitCollection];
  v3 = [v2 verticalSizeClass];

  if (v3 != 2 || (v4 = [v1 currentTraitCollection], v5 = objc_msgSend(v4, sel_horizontalSizeClass), v4, result = 5.0, v5 != 2))
  {
    v6 = [v1 currentTraitCollection];
    [v6 verticalSizeClass];

    return 0.0;
  }

  return result;
}

id sub_24E3269C0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAxis_];
  [v0 setAlignment_];
  [v0 setDistribution_];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  sub_24DFD8050(0xD00000000000002CLL, 0x800000024E3B39D0, v0);
  [v0 setLayoutMarginsRelativeArrangement_];
  return v0;
}

id sub_24E326AC4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAxis_];
  [v0 setDistribution_];
  [v0 setAlignment_];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  sub_24DFD8050(0xD00000000000002ELL, 0x800000024E3B39A0, v0);
  [v0 setLayoutMarginsRelativeArrangement_];
  return v0;
}

uint64_t sub_24E326BC8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for OnboardingTemplateView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_viewBeforeHeader))
  {
    [*(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_contentStack) addArrangedSubview_];
  }

  v1 = sub_24E325D8C();
  [v1 setSpacing_];

  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_contentStack);
  [v2 addArrangedSubview_];
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI22OnboardingTemplateView_viewAfterHeader))
  {
    [v2 addArrangedSubview_];
  }

  if (sub_24E3262B0())
  {
    return (*((*MEMORY[0x277D85000] & *v0) + 0x238))();
  }

  else
  {
    return (*((*MEMORY[0x277D85000] & *v0) + 0x240))();
  }
}

id OnboardingTemplateView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v5 = objc_allocWithZone(v4);

  return [v5 initWithFrame_];
}

id OnboardingTemplateView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingTemplateView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24E326F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_24E347CB8();

  if (a4)
  {
    v9 = sub_24E347CB8();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithTitle:v8 detailText:v9 icon:a5];

  return v10;
}

_BYTE *storeEnumTagSinglePayload for OnboardingTemplateView.BottomTrayAxis(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E3270FC()
{
  result = qword_27F1EB160;
  if (!qword_27F1EB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB160);
  }

  return result;
}

id OUTLINED_FUNCTION_0_191(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

id OUTLINED_FUNCTION_1_157(uint64_t a1)
{

  return [v2 (v1 + 3941)];
}

id OUTLINED_FUNCTION_6_105()
{

  return [v1 (v2 + 3941)];
}

id OUTLINED_FUNCTION_7_84(void *a1)
{

  return [a1 verticalSizeClass];
}

id OUTLINED_FUNCTION_8_89()
{

  return [v0 (v1 + 2566)];
}

id OUTLINED_FUNCTION_9_74(void *a1)
{

  return [a1 currentTraitCollection];
}

id OUTLINED_FUNCTION_11_58()
{

  return [v0 (v1 + 1733)];
}

char *sub_24E327278()
{
  OUTLINED_FUNCTION_0_192();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_1_158();
  return sub_24E3272CC();
}

char *sub_24E3272CC()
{
  OUTLINED_FUNCTION_0_192();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = (v0 + OBJC_IVAR____TtC12GameCenterUI15EmphasizedLabel_fullText);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15EmphasizedLabel_emphasizedLabelSegments) = 0;
  sub_24E0B01B4(v1, v4);
  OUTLINED_FUNCTION_1_158();
  v12 = sub_24E0AEF24(v6, v7, v8, v9, v10, v11);
  sub_24E2C2AB4(v1);
  return v12;
}

id sub_24E32739C(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC12GameCenterUI15EmphasizedLabel_fullText];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC12GameCenterUI15EmphasizedLabel_emphasizedLabelSegments] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for EmphasizedLabel(0);
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_24E327448()
{
}

id sub_24E32748C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmphasizedLabel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24E3275D0()
{
  sub_24E32769C(319, &qword_280BE0678, MEMORY[0x277D22690]);
  if (v0 <= 0x3F)
  {
    sub_24E32769C(319, &qword_27F1E5D78, sub_24DFEA770);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E32769C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24E348698();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t ObjectGraph.init(name:dependencies:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24E347588();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  *(v3 + qword_27F1EB198) = 0;
  (*(v6 + 16))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5, v7);
  v9 = sub_24E3472F8();
  type metadata accessor for ArtworkLoader();

  sub_24E347328();
  (*(v6 + 8))(a3, v5);
  *(v9 + qword_27F1EB198) = v11[1];

  return v9;
}

uint64_t ObjectGraph.deinit()
{
  v0 = sub_24E347338();

  return v0;
}

uint64_t ObjectGraph.__deallocating_deinit()
{
  v0 = sub_24E347338();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t type metadata accessor for ObjectGraph()
{
  result = qword_27F1EB1A0;
  if (!qword_27F1EB1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_24E327A0C(double a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, a5, v9, v13);
  v16 = sub_24E28C8D0(v15);
  *&v16[OBJC_IVAR____TtC12GameCenterUI12HeaderButton_trailingImageSpacer] = a1;
  v17 = v16;
  sub_24E327C5C();
  v18 = v17;
  if (a3)
  {
    v19 = sub_24E347CB8();
  }

  else
  {
    v19 = 0;
  }

  [v17 setTitle:v19 forState:0];

  [v17 setImage:a4 forState:0];
  OUTLINED_FUNCTION_1_159();
  OUTLINED_FUNCTION_0_193(v26, v27, v28);
  [v17 v20];
  v21 = [v17 titleLabel];

  if (v21)
  {
    OUTLINED_FUNCTION_1_159();
    OUTLINED_FUNCTION_0_193(v26, v27, v28);
    [v21 v22];
  }

  v23 = [v17 imageView];

  if (v23)
  {
    OUTLINED_FUNCTION_1_159();
    OUTLINED_FUNCTION_0_193(v26, v27, v28);
    [v23 v24];

    (*(v11 + 8))(a5, v9);
  }

  else
  {
    (*(v11 + 8))(a5, v9);
  }

  return v17;
}

id sub_24E327C5C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI12HeaderButton_trailingImageSpacer];
  v3 = [v0 traitCollection];
  v4 = sub_24E3483B8();

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0.0;
  }

  if (v4)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  if (v4)
  {
    v7 = -v2;
  }

  else
  {
    v7 = v2;
  }

  if ((v4 & 1) == 0)
  {
    v2 = -v2;
  }

  [v1 setContentEdgeInsets_];

  return [v1 setImageEdgeInsets_];
}

id sub_24E327D24()
{
  v0 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (qword_27F1DDFC0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, &unk_27F20BB40);
  (*(v2 + 16))(v5, v6, v0);
  v7 = sub_24E28C8D0(v5);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id sub_24E327EB4(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HeaderButton();
  objc_msgSendSuper2(&v6, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1)
  {
    return sub_24E327C5C();
  }

  result = [a1 layoutDirection];
  if (v4 != result)
  {
    return sub_24E327C5C();
  }

  return result;
}

uint64_t type metadata accessor for HeaderButton()
{
  result = qword_280BE09E0;
  if (!qword_280BE09E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24E328010(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12GameCenterUI12HeaderButton_trailingImageSpacer] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for HeaderButton();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id HeaderButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void OUTLINED_FUNCTION_0_193(__n128 a1, __n128 a2, __n128 a3)
{
  *(v3 - 128) = a1;
  *(v3 - 112) = a2;
  *(v3 - 96) = a3;
}

CGAffineTransform *OUTLINED_FUNCTION_1_159()
{

  return CGAffineTransformMakeScale((v0 - 128), -1.0, 1.0);
}

unint64_t sub_24E32817C(uint64_t a1)
{
  result = sub_24E329020(a1);
  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 48;
  v18 = result + 48;
  while (2)
  {
    v6 = 0;
    v7 = byte_286111780[v3++ + 32];
    v8 = MEMORY[0x277D84F90];
LABEL_3:
    v9 = (v5 + 24 * v6);
    while (v4 != v6)
    {
      if (v6 >= *(v2 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v10 = *v9;
      if (v10 == 2)
      {
        if (!v7)
        {
          goto LABEL_11;
        }
      }

      else if (v7 == 1)
      {
LABEL_11:
        v11 = *(v9 - 2);
        v12 = *(v9 - 1);
        sub_24E3293D0(v11, v12, *v9);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_24E12F8B8(0, *(v8 + 16) + 1, 1);
        }

        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          result = sub_24E12F8B8((v13 > 1), v14 + 1, 1);
        }

        ++v6;
        *(v8 + 16) = v14 + 1;
        v15 = v8 + 24 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v12;
        *(v15 + 48) = v10;
        v5 = v18;
        goto LABEL_3;
      }

      v9 += 24;
      ++v6;
    }

    if (!*(v8 + 16))
    {

      if (v3 != 3)
      {
        continue;
      }

      return 0;
    }

    break;
  }

  result = *(v8 + 16);
  if (!result)
  {
    goto LABEL_25;
  }

  result = sub_24E1D4078(result);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
  }

  else if (result < *(v8 + 16))
  {
    v17 = v8 + 24 * result;
    v16 = *(v17 + 32);
    sub_24E3293D0(v16, *(v17 + 40), *(v17 + 48));

    return v16;
  }

  __break(1u);
  return result;
}

void sub_24E328368(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  switch(a3)
  {
    case 1:
      v47 = sub_24E347CB8();
      v48 = GKGameCenterUIFrameworkBundle();
      v49 = OUTLINED_FUNCTION_5_22();

      a2 = sub_24E347CF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
      v50 = OUTLINED_FUNCTION_17_2();
      *(v50 + 16) = xmmword_24E367D20;
      v51 = sub_24E32936C(a1);
      if (!v52)
      {
        goto LABEL_31;
      }

      v53 = v51;
      v54 = v52;
      *(v50 + 56) = MEMORY[0x277D837D0];
      *(v50 + 64) = sub_24DF95A7C();
      *(v50 + 32) = v53;
      *(v50 + 40) = v54;
      sub_24E347D18();
      OUTLINED_FUNCTION_7_85();

      v55 = OUTLINED_FUNCTION_0_194();
      v56 = GKGameCenterUIFrameworkBundle();
      v17 = GKGetLocalizedStringFromTableInBundle();

      v57 = sub_24E347CF8();
      v100 = v58;
      v102 = v57;

      v59 = sub_24E347CB8();
      v60 = GKGameCenterUIFrameworkBundle();
      v21 = OUTLINED_FUNCTION_4_118();

      v25 = sub_24E347CF8();
      v27 = v61;

      v62 = sub_24E347CB8();
      v63 = GKGameCenterUIFrameworkBundle();
      v64 = OUTLINED_FUNCTION_4_118();

      sub_24E347CF8();
      OUTLINED_FUNCTION_10_72();

      v33 = 0;
      v20 = 0;
      goto LABEL_13;
    case 2:
      [objc_allocWithZone(GKDashboardPlayerPhotoView) init];
      v43 = OUTLINED_FUNCTION_13_61();
      [v5 setPlayer_];

      v44 = [objc_opt_self() formattedDifferenceBetweenFirstScore:a2 secondScore:a1];
      v103 = v5;
      if (v44)
      {
        goto LABEL_10;
      }

      v77 = [a2 score];
      v78 = [a1 score];
      v79 = v77 - v78;
      if (__OFSUB__(v77, v78))
      {
        __break(1u);
        goto LABEL_28;
      }

      if ((v79 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v80 = __OFSUB__(0, v79);
      v79 = v78 - v77;
      if (!v80)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    case 3:
      [objc_allocWithZone(GKDashboardPlayerPhotoView) init];
      v45 = OUTLINED_FUNCTION_13_61();
      [v5 setPlayer_];

      v44 = [objc_opt_self() formattedDifferenceBetweenFirstScore:a1 secondScore:a2];
      v103 = v5;
      if (v44)
      {
LABEL_10:
        v46 = v44;
        sub_24E347CF8();
        OUTLINED_FUNCTION_11_59();
        goto LABEL_24;
      }

      v81 = [a1 score];
      v82 = [a2 score];
      v80 = __OFSUB__(v81, v82);
      v79 = v81 - v82;
      if (v80)
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v79 < 0)
      {
        v80 = __OFSUB__(0, v79);
        v79 = -v79;
        if (v80)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return;
        }
      }

LABEL_23:
      v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v46 = [objc_opt_self() localizedStringFromNumber:v5 numberStyle:1];
      sub_24E347CF8();
      OUTLINED_FUNCTION_11_59();

LABEL_24:
      OUTLINED_FUNCTION_6_106();
      v83 = sub_24E347CB8();
      v84 = GKGameCenterUIFrameworkBundle();
      v85 = OUTLINED_FUNCTION_14_36();

      sub_24E347CF8();
      v87 = v86;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
      v21 = swift_allocObject();
      *(v21 + 1) = xmmword_24E36A270;
      v88 = [a2 v4 + 4088];
      v89 = [v88 alias];

      a2 = sub_24E347CF8();
      *(v21 + 7) = MEMORY[0x277D837D0];
      v90 = sub_24DF95A7C();
      OUTLINED_FUNCTION_5_118(v90);
      OUTLINED_FUNCTION_7_85();

      v91 = OUTLINED_FUNCTION_0_194();
      v92 = GKGameCenterUIFrameworkBundle();
      v93 = OUTLINED_FUNCTION_23_4();

      v94 = sub_24E347CF8();
      v96 = v95;

      v97 = v103;
      v17 = OUTLINED_FUNCTION_8_90();
      v98 = GKGameCenterUIFrameworkBundle();
      v99 = OUTLINED_FUNCTION_5_8();

      sub_24E347CF8();
      OUTLINED_FUNCTION_10_72();

      v33 = 0;
      v20 = 0;
      *a4 = v94;
      *(a4 + 8) = v96;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = v103;
      v42 = 0xE000000000000000;
LABEL_25:
      *(a4 + 40) = 5;
LABEL_26:
      *(a4 + 48) = v105;
      *(a4 + 56) = a2;
      *(a4 + 64) = v33;
      *(a4 + 72) = v42;
      *(a4 + 80) = v20;
      *(a4 + 88) = v17;
      *(a4 + 96) = v21;
      *(a4 + 104) = 0;
      return;
    case 4:
      type metadata accessor for OverlappingPlayersPhotoView();
      v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (sub_24DFD8654(a1) > 0)
      {
        sub_24E16D6B0(a1);
      }

      v35 = MEMORY[0x277D83B88];
      v36 = MEMORY[0x277D83C10];
      if (a2 < 4)
      {
        v33 = 0;
        v42 = 0xE000000000000000;
      }

      else
      {
        v37 = sub_24E347CB8();
        v38 = GKGameCenterUIFrameworkBundle();
        OUTLINED_FUNCTION_7_11();
        v39 = GKGetLocalizedStringFromTableInBundle();

        sub_24E347CF8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
        v40 = OUTLINED_FUNCTION_17_2();
        *(v40 + 16) = xmmword_24E367D20;
        *(v40 + 56) = v35;
        *(v40 + 64) = v36;
        *(v40 + 32) = a2 - 3;
        v33 = sub_24E347CC8();
        v42 = v41;
      }

      v65 = OUTLINED_FUNCTION_0_194();
      v66 = GKGameCenterUIFrameworkBundle();
      OUTLINED_FUNCTION_7_11();
      v67 = GKGetLocalizedStringFromTableInBundle();

      v68 = sub_24E347CF8();
      v101 = v69;
      v104 = v68;

      v70 = v34;
      v71 = sub_24E347CB8();
      v72 = GKGameCenterUIFrameworkBundle();
      OUTLINED_FUNCTION_7_11();
      v73 = v34;
      v21 = GKGetLocalizedStringFromTableInBundle();

      sub_24E347CF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
      v74 = OUTLINED_FUNCTION_17_2();
      *(v74 + 16) = xmmword_24E367D20;
      *(v74 + 56) = v35;
      *(v74 + 64) = MEMORY[0x277D83C10];
      *(v74 + 32) = a2;
      sub_24E347D18();
      OUTLINED_FUNCTION_7_85();

      OUTLINED_FUNCTION_6_106();
      v17 = sub_24E347CB8();
      v75 = GKGameCenterUIFrameworkBundle();
      v76 = OUTLINED_FUNCTION_5_8();

      sub_24E347CF8();
      OUTLINED_FUNCTION_10_72();

      *a4 = v104;
      *(a4 + 8) = v101;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = v73;
      v20 = 1;
      goto LABEL_25;
    default:
      v9 = sub_24E347CB8();
      v10 = GKGameCenterUIFrameworkBundle();
      v11 = OUTLINED_FUNCTION_5_22();

      v12 = sub_24E347CF8();
      v100 = v13;
      v102 = v12;

      v14 = sub_24E347CB8();
      v15 = GKGameCenterUIFrameworkBundle();
      v16 = GKGetLocalizedStringFromTableInBundle();

      sub_24E347CF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
      v17 = OUTLINED_FUNCTION_17_2();
      *(v17 + 1) = xmmword_24E367D20;
      v18 = [a1 rank];
      v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v20 = 1;
      v21 = [objc_opt_self() localizedStringFromNumber:v19 numberStyle:1];
      v22 = sub_24E347CF8();
      v24 = v23;

      *(v17 + 7) = MEMORY[0x277D837D0];
      *(v17 + 8) = sub_24DF95A7C();
      *(v17 + 4) = v22;
      *(v17 + 5) = v24;
      v25 = sub_24E347D18();
      v27 = v26;

      v28 = sub_24E347CB8();
      a2 = GKGameCenterUIFrameworkBundle();
      OUTLINED_FUNCTION_7_11();
      v29 = GKGetLocalizedStringFromTableInBundle();

      sub_24E347CF8();
      OUTLINED_FUNCTION_7_85();

      v30 = sub_24E347CB8();
      v31 = GKGameCenterUIFrameworkBundle();
      v32 = OUTLINED_FUNCTION_4_118();

      sub_24E347CF8();
      OUTLINED_FUNCTION_10_72();

      v33 = 0;
LABEL_13:
      *a4 = v102;
      *(a4 + 8) = v100;
      *(a4 + 16) = v25;
      *(a4 + 24) = v27;
      *(a4 + 32) = 0;
      v42 = 0xE000000000000000;
      *(a4 + 40) = 0;
      goto LABEL_26;
  }
}

uint64_t sub_24E329020(uint64_t a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4;
    v6 = v2;
    v7 = v5;
    if ([v7 rank] > 0)
    {
      v8 = *(a1 + 40);
      if (v8 < 1)
      {
        v11 = MEMORY[0x277D84F90];
      }

      else
      {
        v9 = v7;
        sub_24E0783AC();
        v11 = v10;
        v12 = *(v10 + 16);
        v13 = v12 + 1;
        if (v12 >= *(v10 + 24) >> 1)
        {
          OUTLINED_FUNCTION_2_136();
          sub_24E0783AC();
          v13 = v12 + 1;
          v11 = v37;
        }

        *(v11 + 16) = v13;
        v14 = v11 + 24 * v12;
        *(v14 + 32) = v4;
        *(v14 + 40) = 0;
        *(v14 + 48) = 0;
      }

      v21 = *(a1 + 24);
      v51 = v21;
      if (v21)
      {
        v22 = v7;
        sub_24E329460(&v51, v50);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_160();
          v11 = v38;
        }

        v23 = *(v11 + 16);
        v24 = v23 + 1;
        if (v23 >= *(v11 + 24) >> 1)
        {
          v49 = v23 + 1;
          OUTLINED_FUNCTION_2_136();
          v40 = v39;
          sub_24E0783AC();
          v23 = v40;
          v24 = v49;
          v11 = v41;
        }

        *(v11 + 16) = v24;
        v25 = v11 + 24 * v23;
        *(v25 + 32) = v4;
        *(v25 + 40) = v21;
        *(v25 + 48) = 2;
      }

      v1 = *(a1 + 32);
      if (v1)
      {
        v26 = v1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_160();
          v11 = v42;
        }

        v27 = *(v11 + 16);
        v28 = v27 + 1;
        if (v27 >= *(v11 + 24) >> 1)
        {
          OUTLINED_FUNCTION_2_136();
          v44 = v43;
          sub_24E0783AC();
          v27 = v44;
          v11 = v45;
        }

        *(v11 + 16) = v28;
        v29 = v11 + 24 * v27;
        *(v29 + 32) = v4;
        *(v29 + 40) = v1;
        *(v29 + 48) = 3;
      }

      else
      {
      }

      goto LABEL_29;
    }
  }

  else
  {
    v15 = v2;
  }

  v8 = *(a1 + 40);
  if (!v8)
  {
    v16 = v2;
    LOBYTE(v1) = 1;
    sub_24E0783AC();
    v11 = v17;
    v18 = *(v17 + 16);
    v19 = v18 + 1;
    if (v18 >= *(v17 + 24) >> 1)
    {
      goto LABEL_41;
    }

    goto LABEL_14;
  }

  v11 = MEMORY[0x277D84F90];
  while (1)
  {
LABEL_29:
    if (*(a1 + 48) < 1)
    {

      return v11;
    }

    if (!v4)
    {
      break;
    }

    v19 = [v4 rank];

    if (v19 < 1)
    {
      break;
    }

    if (!__OFSUB__(v8--, 1))
    {
      break;
    }

    __break(1u);
LABEL_41:
    OUTLINED_FUNCTION_2_136();
    v47 = v46;
    sub_24E0783AC();
    v18 = v47;
    v11 = v48;
LABEL_14:
    v8 = 0;
    *(v11 + 16) = v19;
    v20 = v11 + 24 * v18;
    *(v20 + 32) = v2;
    *(v20 + 40) = 0;
    *(v20 + 48) = v1;
  }

  v31 = *(a1 + 56);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_160();
    v11 = v35;
  }

  v32 = *(v11 + 16);
  if (v32 >= *(v11 + 24) >> 1)
  {
    OUTLINED_FUNCTION_2_136();
    sub_24E0783AC();
    v11 = v36;
  }

  *(v11 + 16) = v32 + 1;
  v33 = v11 + 24 * v32;
  *(v33 + 32) = v31;
  *(v33 + 40) = v8;
  *(v33 + 48) = 4;
  return v11;
}

uint64_t sub_24E32936C(void *a1)
{
  v1 = [a1 localizedTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24E347CF8();

  return v3;
}

id sub_24E3293D0(id result, void *a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
      goto LABEL_3;
    case 2:
    case 3:
      v3 = result;
      result = a2;
LABEL_3:

      result = result;
      break;
    case 4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E329460(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB1B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E3294DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_24E32951C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24E329578(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E3295B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_194()
{

  return sub_24E347CB8();
}

void OUTLINED_FUNCTION_1_160()
{

  sub_24E0783AC();
}

uint64_t OUTLINED_FUNCTION_4_118()
{

  return GKGetLocalizedStringFromTableInBundle();
}

uint64_t OUTLINED_FUNCTION_5_118(uint64_t a1)
{
  v5[4] = v2;
  v5[5] = v6;
  v5[12] = v3;
  v5[13] = a1;
  v5[8] = a1;
  v5[9] = v1;
  v5[10] = v4;

  return sub_24E347D18();
}

uint64_t OUTLINED_FUNCTION_8_90()
{

  return sub_24E347CB8();
}

id OUTLINED_FUNCTION_13_61()
{

  return [v0 player];
}

uint64_t type metadata accessor for SignedOutView()
{
  result = qword_27F1EB1B8;
  if (!qword_27F1EB1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E3297A0()
{
  sub_24DFEB518();
  if (v0 <= 0x3F)
  {
    sub_24E02FD6C();
    if (v1 <= 0x3F)
    {
      sub_24E028218();
      if (v2 <= 0x3F)
      {
        sub_24DFA1058();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E329878@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for SignedOutView();
  sub_24E0B5574(v1 + *(v12 + 32), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E346158();
    OUTLINED_FUNCTION_5_2();
    return (*(v13 + 32))(a1, v11);
  }

  else
  {
    sub_24E348268();
    v15 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v3);
  }
}

uint64_t sub_24E329A48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB1C8);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v54 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB1D0);
  OUTLINED_FUNCTION_0_14();
  v58 = v6;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v56 = &v54 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB1D8);
  OUTLINED_FUNCTION_0_14();
  v60 = v9;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v66 = &v54 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB1E0);
  OUTLINED_FUNCTION_0_14();
  v62 = v12;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  v67 = &v54 - v14;
  v71 = v1;
  *v5 = sub_24E345D08();
  *(v5 + 1) = 0x4028000000000000;
  v5[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB1E8);
  sub_24E32A8B8(v1, &v5[*(v15 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB1F0);
  sub_24E32B5C0();
  sub_24DFB4C28(&qword_27F1EB238, &qword_27F1EB1C8);
  sub_24E346D38();
  v16 = sub_24E347CB8();
  v17 = GKGameCenterUIFrameworkBundle();
  v18 = GKGetLocalizedStringFromTableInBundle();

  v19 = sub_24E347CF8();
  v21 = v20;

  v82 = v19;
  v83 = v21;
  v22 = *(v2 + 56);
  v80 = *(v2 + 48);
  v81 = v22;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346BA8();
  v70 = v2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF830);
  v24 = sub_24E32B930();
  v64 = sub_24DF90C4C();
  v54 = OUTLINED_FUNCTION_1_161(&qword_27F1DF868);
  v25 = v24;
  v26 = v23;
  v27 = MEMORY[0x277D837D0];
  v28 = v57;
  sub_24E346838();

  v29 = OUTLINED_FUNCTION_3_142();
  v30(v29, v28);
  v31 = sub_24E347CB8();
  v32 = GKGameCenterUIFrameworkBundle();
  v33 = GKGetLocalizedStringFromTableInBundle();

  v34 = sub_24E347CF8();
  v36 = v35;

  v82 = v34;
  v83 = v36;
  v37 = *(v2 + 16);
  v55 = v2;
  OUTLINED_FUNCTION_5_119(v37);
  v69 = v2;
  v72 = v28;
  v73 = v27;
  v74 = v26;
  v75 = MEMORY[0x277CE0BD8];
  v76 = v25;
  v38 = v54;
  v77 = v64;
  v78 = v54;
  v79 = MEMORY[0x277CE0BC8];
  v58 = MEMORY[0x277CDEDF8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v59;
  OUTLINED_FUNCTION_7_86();
  sub_24E346838();

  v41 = OUTLINED_FUNCTION_3_142();
  v42(v41, v40);
  v43 = sub_24E347CB8();
  v44 = GKGameCenterUIFrameworkBundle();
  v45 = GKGetLocalizedStringFromTableInBundle();

  v46 = sub_24E347CF8();
  v48 = v47;

  v82 = v46;
  v83 = v48;
  v49 = v55;
  OUTLINED_FUNCTION_5_119(*(v55 + 32));
  v68 = v49;
  v72 = v40;
  v73 = v27;
  v74 = v26;
  v75 = MEMORY[0x277CE0BD8];
  v76 = OpaqueTypeConformance2;
  v77 = v64;
  v78 = v38;
  v79 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v50 = v61;
  OUTLINED_FUNCTION_7_86();
  sub_24E346838();

  v51 = OUTLINED_FUNCTION_3_142();
  return v52(v51, v50);
}

uint64_t sub_24E32A1EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for SignedOutView();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB218);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB208);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  sub_24E343AA8();
  v24 = sub_24E343648();
  v25 = v11;
  v22 = a1;
  v13 = *a1;
  v12 = a1[1];
  v14 = type metadata accessor for GameCenterSettings();
  sub_24E32B8C4(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
  v20[0] = v14;
  v20[1] = v12;
  sub_24E345818();
  swift_getKeyPath();
  sub_24E345838();

  sub_24DF90C4C();
  sub_24E346C38();
  if (v13)
  {

    v15 = sub_24DFECD88();

    sub_24E32B9F4(v22, v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v17 = swift_allocObject();
    sub_24E32BA58(v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    sub_24E32BE60(v7, v10);
    v18 = &v10[*(v8 + 36)];
    *v18 = v15 & 1;
    *(v18 + 1) = sub_24E32BDF0;
    *(v18 + 2) = v17;
    sub_24E32B67C();
    sub_24E346648();
    return sub_24E32BED0(v10);
  }

  else
  {
    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

uint64_t sub_24E32A4F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24DFECD88();
  *a1 = result & 1;
  return result;
}

void sub_24E32A54C(unsigned __int8 *a1, void *a2)
{
  if (*a2)
  {
    v2 = *a1;

    v3 = sub_24DFECF6C();

    v4 = sub_24E245A0C();

    if ((v4 & 1) == 0 && v2)
    {
      v5 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
      v6 = sub_24E347CF8();
      v8 = v7;
      v9 = sub_24E347CF8();
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFF80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24E367D20;
      v13 = MEMORY[0x277D837D0];
      sub_24E348918();
      if (qword_27F1DD788 != -1)
      {
        swift_once();
      }

      if (byte_27F1E20F0)
      {
        v14 = 0xE900000000000072;
        v15 = 0x6579614C656D6167;
      }

      else
      {
        if (qword_27F1DD790 != -1)
        {
          swift_once();
        }

        v15 = 0x73676E6974746573;
        if (!byte_27F1E20F1)
        {
          v15 = 0x65726F7453707061;
        }

        v14 = 0xE800000000000000;
      }

      *(inited + 96) = v13;
      *(inited + 72) = v15;
      *(inited + 80) = v14;
      v16 = sub_24E347C28();
      sub_24E32BF38(v6, v8, v9, v11, v16, v5);

      sub_24E32A7DC();
    }
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    sub_24E32B8C4(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
    sub_24E345828();
    __break(1u);
  }
}

uint64_t sub_24E32A7DC()
{
  type metadata accessor for GameCenterSettings();
  if ((sub_24DFF1F20() & 1) != 0 || (sub_24DFF2054() & 1) == 0 || (sub_24DFF1F14() & 1) != 0 || ![objc_opt_self() _gkIsOnline])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
    return sub_24E346B98();
  }

  else
  {
    v2 = type metadata accessor for SignedOutView();
    return (*(v0 + *(v2 + 40)))();
  }
}

id sub_24E32A8B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for SignedOutView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB248);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v63 - v13;
  result = [objc_opt_self() shared];
  if (result)
  {
    v16 = result;
    v76 = v14;
    v77 = v11;
    v72 = v8;
    v17 = [result lockedDown];

    v70 = v5;
    v71 = v6;
    v67 = a2;
    if (v17)
    {
      v18 = sub_24E347CB8();
      v19 = GKGameCenterUIFrameworkBundle();
      v20 = GKGetLocalizedStringFromTableInBundle();

      v21 = sub_24E347CF8();
      v23 = v22;

      v82 = v21;
      v83 = v23;
      sub_24DF90C4C();
      v24 = sub_24E3464E8();
      v26 = v25;
      v75 = v24;
      v68 = v27 & 1;
      v69 = v28;
      sub_24DF82DD4(v24, v28, v27 & 1);
      v74 = v26;
    }

    else
    {
      v74 = 0;
      v75 = 0;
      v68 = 0;
      v69 = 0;
    }

    v29 = sub_24E347CB8();
    v30 = GKGameCenterUIFrameworkBundle();
    v31 = GKGetLocalizedStringFromTableInBundle();

    v32 = sub_24E347CF8();
    v34 = v33;

    v82 = v32;
    v83 = v34;
    v80 = 1076169226;
    v81 = 0xE400000000000000;
    v78 = 0;
    v79 = 0xE000000000000000;
    sub_24DF90C4C();
    v35 = sub_24E348738();
    v37 = v36;

    v82 = v35;
    v83 = v37;
    v80 = 16421;
    v81 = 0xE200000000000000;
    v78 = 0;
    v79 = 0xE000000000000000;
    v38 = sub_24E348738();
    v40 = v39;

    v82 = v38;
    v83 = v40;
    v41 = sub_24E3464E8();
    v64 = v41;
    v73 = v42;
    v65 = v43;
    v66 = v44;
    sub_24E32B9F4(a1, v7);
    v45 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v46 = swift_allocObject();
    v47 = sub_24E32BA58(v7, v46 + v45);
    MEMORY[0x28223BE20](v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB250);
    sub_24E32BB80();
    v48 = v76;
    sub_24E346BD8();
    v49 = *(v9 + 16);
    v50 = v77;
    v51 = v72;
    v49(v77, v48, v72);
    v52 = v67;
    v53 = v68;
    v54 = v74;
    v55 = v69;
    *v67 = v75;
    v52[1] = v55;
    v52[2] = v53;
    v52[3] = v54;
    v56 = v73;
    v52[4] = v41;
    v52[5] = v56;
    LODWORD(v71) = v65 & 1;
    *(v52 + 48) = v65 & 1;
    v52[7] = v66;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB260);
    v49(v52 + *(v57 + 64), v50, v51);
    v58 = v74;
    v59 = v75;
    sub_24E00B1C4(v75, v55, v53, v74);
    v60 = v64;
    v61 = v56;
    LOBYTE(v56) = v71;
    sub_24DF82DD4(v64, v61, v71);

    sub_24E00B208(v59, v55, v53, v58);
    v62 = *(v9 + 8);
    v62(v76, v51);
    v62(v77, v51);
    sub_24DFA92EC(v60, v73, v56);

    return sub_24E00B208(v59, v55, v53, v58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24E32AE8C()
{
  v0 = sub_24E346158();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E028B80();
  v4 = sub_24E347CF8();
  result = sub_24E028978(v4, v5);
  if (result)
  {
    v7 = result;
    v8 = sub_24E329878(v3);
    MEMORY[0x28223BE20](v8);
    *(&v9 - 2) = v7;
    sub_24E346148();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_24E32AFD0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() linkWithBundleIdentifier_];
  if (!v2 || (v3 = v2, v4 = [v2 flow], v3, sub_24E028F3C(v4), !v5))
  {
  }

  sub_24DF90C4C();
  v6 = sub_24E3464E8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_24E346378();
  result = swift_getKeyPath();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  *(a1 + 32) = result;
  *(a1 + 40) = v13;
  return result;
}

uint64_t sub_24E32B0C8()
{
  v1 = type metadata accessor for SignedOutView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = sub_24E347CB8();
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();

  v7 = sub_24E347CF8();
  v9 = v8;

  v13[0] = v7;
  v13[1] = v9;
  sub_24E32B9F4(v0, v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = swift_allocObject();
  sub_24E32BA58(v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_24DF90C4C();
  return sub_24E346C08();
}

uint64_t sub_24E32B254@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  result = sub_24E3464E8();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_24E32B318@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  result = sub_24E3464E8();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_24E32B3DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  result = sub_24E3464E8();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_24E32B4A0(void *a1)
{
  if (*a1)
  {

    sub_24DFECE04();
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    sub_24E32B8C4(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

void sub_24E32B544(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    [a2 setPresentingViewController_];
    [a2 present];
  }
}

unint64_t sub_24E32B5C0()
{
  result = qword_27F1EB1F8;
  if (!qword_27F1EB1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EB1F0);
    sub_24E32B67C();
    sub_24E32B8C4(&qword_27F1DF850, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB1F8);
  }

  return result;
}

unint64_t sub_24E32B67C()
{
  result = qword_27F1EB200;
  if (!qword_27F1EB200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EB208);
    sub_24E32B734();
    sub_24DFB4C28(&qword_27F1E45A0, &qword_27F1E45A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB200);
  }

  return result;
}

unint64_t sub_24E32B734()
{
  result = qword_27F1EB210;
  if (!qword_27F1EB210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EB218);
    sub_24E32B7B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB210);
  }

  return result;
}

unint64_t sub_24E32B7B8()
{
  result = qword_27F1EB220;
  if (!qword_27F1EB220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EB228);
    sub_24DFB4C28(qword_27F1E1790, &qword_27F1E1788);
    sub_24E32B870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB220);
  }

  return result;
}

unint64_t sub_24E32B870()
{
  result = qword_27F1EB230;
  if (!qword_27F1EB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB230);
  }

  return result;
}

uint64_t sub_24E32B8C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E32B930()
{
  result = qword_27F1EB240;
  if (!qword_27F1EB240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EB1D0);
    sub_24E32B5C0();
    sub_24DFB4C28(&qword_27F1EB238, &qword_27F1EB1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB240);
  }

  return result;
}

uint64_t sub_24E32B9F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignedOutView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E32BA58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignedOutView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E32BABC()
{
  v1 = *(type metadata accessor for SignedOutView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_24E32B4A0(v2);
}

unint64_t sub_24E32BB80()
{
  result = qword_27F1EB258;
  if (!qword_27F1EB258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EB250);
    sub_24DFB4C28(&qword_27F1DF648, &qword_27F1DF650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB258);
  }

  return result;
}

uint64_t sub_24E32BC38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E345A58();
  *a1 = result;
  return result;
}

uint64_t objectdestroyTm_31()
{
  v1 = type metadata accessor for SignedOutView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E346158();
    OUTLINED_FUNCTION_5_2();
    (*(v6 + 8))(v0 + v3 + v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_24E32BDF0(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for SignedOutView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_24E32A54C(a1, v4);
}

uint64_t sub_24E32BE60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB218);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E32BED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB208);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24E32BF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = sub_24E347CB8();

  v8 = sub_24E347CB8();

  v9 = sub_24E347BE8();

  [a6 reportEvent:v7 type:v8 payload:v9];
}

uint64_t OUTLINED_FUNCTION_1_161(unint64_t *a1)
{

  return sub_24DFB4C28(a1, v1);
}

uint64_t OUTLINED_FUNCTION_4_119()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_5_119@<X0>(char a1@<W8>)
{
  *(v2 - 120) = a1;
  *(v2 - 112) = v1;

  return sub_24E346BA8();
}

id sub_24E32C0B8()
{
  v0 = objc_opt_self();
  v1 = [v0 localPlayers];
  sub_24DFEA130();
  v2 = sub_24E347F08();

  if (sub_24DFD8654(v2))
  {
    sub_24DFFA844(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x25303F560](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    return v4;
  }

  else
  {

    v6 = [v0 local];

    return v6;
  }
}

uint64_t sub_24E32C1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32[-v8];
  v10 = type metadata accessor for Shelf.Presentation(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (*(*v3 + 112))(a1, a2);
  if (v13)
  {
    v14 = v13;
    (*(*v3 + 120))(a1, a2);
    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      v15 = &v12[*(v10 + 44)];
      v16 = *(MEMORY[0x277D75060] + 16);
      *v15 = *MEMORY[0x277D75060];
      *(v15 + 1) = v16;
      v15[32] = 0;
    }

    v32[15] = v3[16];
    sub_24E24FD64();
    sub_24E348918();
    v17 = v3[17];
    v18 = type metadata accessor for Shelf(0);
    sub_24E32D9FC(v12, a3 + *(v18 + 28));
    v19 = sub_24E3474B8();
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    v23 = *(v18 + 32);
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
    *(a3 + 40) = v17;
    *(a3 + 48) = v14;
    sub_24DF8BEB4(v9, a3 + v23);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v18);
  }

  else
  {
    type metadata accessor for Shelf(0);
    OUTLINED_FUNCTION_8_6();

    return __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }
}

uint64_t sub_24E32C40C()
{
  sub_24E32CAFC(*(v0 + 16));
  sub_24E347DC8();

  sub_24E17A62C(*(v0 + 17));
  sub_24E347DC8();
}

uint64_t sub_24E32C490()
{
  OUTLINED_FUNCTION_2_137();
  sub_24E32C40C();
  return sub_24E348D68();
}

double sub_24E32C4C8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for HeaderData();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for Shelf.Presentation(0);
  type metadata accessor for FooterData(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = a1 + v6[11];
  result = 0.0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 1;
  v13 = a1 + v6[12];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = (a1 + v6[13]);
  v15 = (a1 + v6[14]);
  v16 = (a1 + v6[15]);
  *(a1 + v6[6]) = 1;
  *v14 = 0;
  v14[1] = 0;
  *v15 = 0;
  v15[1] = 0;
  *v16 = 0;
  v16[1] = 0;
  *(a1 + v6[7]) = 1;
  *(a1 + v6[8]) = 1;
  *(a1 + v6[9]) = 1;
  *(a1 + v6[10]) = 0;
  return result;
}

uint64_t sub_24E32C66C(char a1)
{
  OUTLINED_FUNCTION_2_137();
  MEMORY[0x25303F880](a1 & 1);
  return sub_24E348D68();
}

uint64_t sub_24E32C6AC(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_2_137();
  MEMORY[0x25303F880](a1);
  return sub_24E348D68();
}

uint64_t sub_24E32C758()
{
  OUTLINED_FUNCTION_2_137();
  sub_24E347DC8();
  return sub_24E348D68();
}

uint64_t sub_24E32C7D0(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_2_137();
  a2(v5, a1);
  return sub_24E348D68();
}

uint64_t sub_24E32C86C(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_2_137();
  a2(a1);
  sub_24E347DC8();

  return sub_24E348D68();
}

uint64_t sub_24E32C8D0()
{
  OUTLINED_FUNCTION_2_137();
  sub_24E347DC8();
  return sub_24E348D68();
}

uint64_t sub_24E32C924(uint64_t a1)
{
  OUTLINED_FUNCTION_2_137();
  MEMORY[0x25303F880](a1);
  return sub_24E348D68();
}

uint64_t sub_24E32C964()
{
  OUTLINED_FUNCTION_2_137();
  sub_24E348D48();
  return sub_24E348D68();
}

id sub_24E32C9A4()
{
  if (qword_27F1DDE48 != -1)
  {
    OUTLINED_FUNCTION_0_195();
  }

  OUTLINED_FUNCTION_1_162();
  if (!v0)
  {
    return 0;
  }

  if (qword_27F1DDE58 != -1)
  {
    swift_once();
  }

  if (byte_27F20B8B2 != 1)
  {
    return 0;
  }

  if (qword_27F1DDE60 != -1)
  {
    swift_once();
  }

  if (byte_27F20B8B3 == 1)
  {
    return [objc_opt_self() _gkIsOnline];
  }

  else
  {
    return 0;
  }
}

id sub_24E32CA80()
{
  result = [objc_opt_self() shared];
  if (result)
  {
    v1 = result;
    v2 = [result isScreenTimeRestrictionsPasscodeSet];

    if (sub_24E32C9A4())
    {
      v3 = 1;
    }

    else
    {
      v3 = (sub_24E32C9A4() ^ 1) & v2;
    }

    return (v3 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24E32CAFC(char a1)
{
  result = 0x726564616568;
  switch(a1)
  {
    case 1:
      return 0x6D65766569686361;
    case 2:
      return 0x656D616E6B63696ELL;
    case 3:
      return 0x73646E65697266;
    case 4:
      return 0x646E656972466F6ELL;
    case 5:
    case 17:
    case 19:
      v3 = 9;
      goto LABEL_24;
    case 6:
      return 0xD000000000000017;
    case 7:
      return 0x4C73646E65697266;
    case 8:
      v3 = 5;
      goto LABEL_24;
    case 9:
      return 0xD000000000000016;
    case 10:
      v3 = 13;
LABEL_24:
      result = v3 | 0xD000000000000010;
      break;
    case 11:
    case 30:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6E65697246646461;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x50656C69666F7270;
      break;
    case 15:
      result = 0x6C5079627261656ELL;
      break;
    case 16:
    case 26:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0x735574726F706572;
      break;
    case 21:
      result = 0x724665766F6D6572;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 23:
      result = 0x53656C69666F7270;
      break;
    case 24:
      result = 0x6E496E676973;
      break;
    case 25:
      result = 0x74754F6E676973;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 28:
      result = 0xD000000000000010;
      break;
    case 29:
      result = 0x7974697669746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E32CE70(void *a1, _BYTE *a2)
{
  if (qword_27F1DDE48 != -1)
  {
    OUTLINED_FUNCTION_0_195();
  }

  OUTLINED_FUNCTION_1_162();
  if (v4)
  {
    if (*a1 != -1)
    {
      swift_once();
    }

    v5 = *a2 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_24E32CEF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_24E32CAFC(*(a1 + 16));
  v7 = v6;
  if (v5 == sub_24E32CAFC(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24E348C08();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = *(a1 + 17);
  v13 = *(a2 + 17);
  v14 = sub_24E17A62C(v12);
  v16 = v15;
  if (v14 == sub_24E17A62C(v13) && v16 == v17)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24E348C08();
  }

  return v11 & 1;
}

uint64_t sub_24E32D004()
{
  if (qword_27F1DDE48 != -1)
  {
    OUTLINED_FUNCTION_0_195();
  }

  OUTLINED_FUNCTION_1_162();
  if (!v0)
  {
    return 0;
  }

  if (qword_27F1DDE50 != -1)
  {
    swift_once();
  }

  return byte_27F20B8B1;
}

uint64_t sub_24E32D080()
{
  v0 = sub_24E348C38();

  if (v0 >= 0x1F)
  {
    return 31;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24E32D120@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E32D080();
  *a1 = result;
  return result;
}

unint64_t sub_24E32D150@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24E32CAFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_24E32D1CC(uint64_t a1, SEL *a2, _BYTE *a3)
{
  v5 = [objc_opt_self() shared];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 *a2];

    *a3 = v7 ^ 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_24E32D264(uint64_t a1, SEL *a2, unsigned __int8 *a3)
{
  v5 = [objc_opt_self() shared];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 *a2];

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24E32D2D0()
{
  type metadata accessor for HeaderProfileSection();
  result = sub_24E2B8C74();
  qword_27F20B8B8 = result;
  return result;
}

uint64_t sub_24E32D304()
{
  type metadata accessor for AchievementsProfileSection();
  result = sub_24E337F7C();
  qword_27F20B8C0 = result;
  return result;
}

uint64_t sub_24E32D338()
{
  type metadata accessor for FriendsProfileSection();
  result = sub_24E0B9E38();
  qword_27F20B8C8 = result;
  return result;
}

uint64_t sub_24E32D36C()
{
  type metadata accessor for FriendsListProfileSection();
  result = sub_24E2376BC(0);
  qword_27F20B8D0 = result;
  return result;
}

uint64_t sub_24E32D3A4()
{
  type metadata accessor for SmallLockupFriendsListProfileSection();
  result = sub_24E2A1C88();
  qword_27F20B8D8 = result;
  return result;
}

uint64_t sub_24E32D3D8()
{
  type metadata accessor for FriendSuggestionsProfileSection();
  result = sub_24DFB7264();
  qword_27F20B8E0 = result;
  return result;
}

uint64_t sub_24E32D40C()
{
  type metadata accessor for SmallFriendsRequestsProfileSection();
  result = sub_24E33265C();
  qword_27F20B8E8 = result;
  return result;
}

uint64_t sub_24E32D440()
{
  type metadata accessor for AddFriendsProfileSection();
  result = sub_24E020160();
  qword_27F20B8F0 = result;
  return result;
}

uint64_t sub_24E32D474()
{
  type metadata accessor for AchievementsLinkProfileSection();
  result = sub_24E31F278();
  qword_27F20B8F8 = result;
  return result;
}

uint64_t sub_24E32D4A8()
{
  type metadata accessor for ProfilePrivacyProfileSection();
  result = sub_24DF8AFF4();
  qword_27F20B900 = result;
  return result;
}

uint64_t sub_24E32D4DC()
{
  type metadata accessor for NearbyPlayersProfileSection();
  result = sub_24E060EB0();
  qword_27F20B908 = result;
  return result;
}

uint64_t sub_24E32D510()
{
  type metadata accessor for PrivateProfileDescriptionProfileSection();
  result = sub_24E16DE00();
  qword_27F20B910 = result;
  return result;
}

uint64_t sub_24E32D544()
{
  type metadata accessor for RecentlyPlayedGamesProfileSection();
  result = sub_24DFAD674();
  qword_27F20B918 = result;
  return result;
}

uint64_t sub_24E32D578()
{
  type metadata accessor for SeeAllRecentlyPlayedGamesProfileSection();
  result = sub_24E1A4FE4();
  qword_27F20B920 = result;
  return result;
}

uint64_t sub_24E32D5AC()
{
  type metadata accessor for RemoveReportUserProfileSection();
  result = sub_24E0848D4();
  qword_27F20B928 = result;
  return result;
}

uint64_t sub_24E32D5E0()
{
  type metadata accessor for ProfileSettingsProfileSection();
  result = sub_24E170BC8();
  qword_27F20B930 = result;
  return result;
}

uint64_t sub_24E32D614()
{
  type metadata accessor for SignInProfileSection();
  result = sub_24DF9C8C8();
  qword_27F20B938 = result;
  return result;
}

uint64_t sub_24E32D648()
{
  type metadata accessor for FriendListAccessProfileSection();
  result = sub_24E01008C();
  qword_27F20B940 = result;
  return result;
}

uint64_t sub_24E32D67C()
{
  type metadata accessor for DeviceRestrictedProfileSection();
  result = sub_24E1705B0();
  qword_27F20B948 = result;
  return result;
}

uint64_t sub_24E32D6B0()
{
  type metadata accessor for ActivityFeedProfileSection();
  result = sub_24E0263C8();
  qword_27F20B950 = result;
  return result;
}

uint64_t sub_24E32D6E4()
{
  type metadata accessor for ActivityFeedErrorProfileSection();
  result = sub_24DFCDB80();
  qword_27F20B958 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PlayerProfileSection.Identifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PlayerProfileSection.Identifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
          *result = a2 + 30;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E32D8A4()
{
  result = qword_27F1EB268;
  if (!qword_27F1EB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB268);
  }

  return result;
}

uint64_t sub_24E32D940()
{
  sub_24E348D18();
  sub_24E32C40C();
  return sub_24E348D68();
}

unint64_t sub_24E32D9A8()
{
  result = qword_27F1EB270;
  if (!qword_27F1EB270)
  {
    type metadata accessor for PlayerProfileSection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB270);
  }

  return result;
}

uint64_t sub_24E32D9FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Shelf.Presentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_195()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_137()
{

  return sub_24E348D18();
}

uint64_t sub_24E32DAB8(uint64_t result, double a2, double a3, double a4)
{
  if (a2 <= a3)
  {
    a2 = a3;
  }

  if (a2 <= a4)
  {
    a2 = a4;
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (a2 <= v6)
      {
        a2 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

char *sub_24E32DAEC(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v4[OBJC_IVAR____TtC12GameCenterUI14CountBadgeView_size] = a1 & 1;
  if (a1)
  {
    if (qword_27F1DE028 != -1)
    {
      swift_once();
    }

    v10 = &unk_27F20BC78;
  }

  else
  {
    if (qword_27F1DE020 != -1)
    {
      swift_once();
    }

    v10 = &unk_27F20BC60;
  }

  v11 = sub_24E344158();
  v12 = __swift_project_value_buffer(v11, v10);
  (*(*(v11 - 8) + 16))(v9, v12, v11);
  sub_24E344158();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  v13 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v4[OBJC_IVAR____TtC12GameCenterUI14CountBadgeView_countLabel] = sub_24E0AEF24(v9, 0, 1, 0, 1, 0);
  v14 = type metadata accessor for CountBadgeView();
  v33.receiver = v4;
  v33.super_class = v14;
  v15 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = qword_27F1DE118;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for PlayerCardTheme();
  v19 = *__swift_project_value_buffer(v18, qword_27F20BF00);
  if (v19 == 1)
  {
    v20 = sub_24E336964();
  }

  else
  {
    v20 = [objc_opt_self() redColor];
  }

  v21 = v20;
  [v17 setBackgroundColor_];

  v22 = OBJC_IVAR____TtC12GameCenterUI14CountBadgeView_countLabel;
  v23 = *&v17[OBJC_IVAR____TtC12GameCenterUI14CountBadgeView_countLabel];
  v24 = objc_opt_self();
  v25 = v23;
  if (v19)
  {
    v26 = [v24 blackColor];
    v27 = [v26 colorWithAlphaComponent_];
  }

  else
  {
    v27 = [v24 whiteColor];
  }

  [v25 setTextColor_];

  v28 = 9.0;
  if (a1)
  {
    v28 = 12.0;
  }

  [v17 _setContinuousCornerRadius_];
  v29 = *&v17[v22];
  v30 = v29;
  if (a3)
  {
    v31 = sub_24E347CB8();
  }

  else
  {
    v31 = 0;
  }

  [v29 setText_];

  [*&v17[v22] setAdjustsFontForContentSizeCategory_];
  [*&v17[v22] setTextAlignment_];
  [v17 addSubview_];
  [v17 setUserInteractionEnabled_];

  return v17;
}

void sub_24E32DEE4()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI14CountBadgeView_size) = 1;
  sub_24E348AE8();
  __break(1u);
}

double sub_24E32DF68()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI14CountBadgeView_size;
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI14CountBadgeView_size))
  {
    v2 = 24.0;
  }

  else
  {
    v2 = 18.0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI14CountBadgeView_countLabel);
  [v3 intrinsicContentSize];
  v5 = v4;
  v6 = [v3 font];
  if (!v6)
  {
    return v2;
  }

  v7 = v6;
  [v6 pointSize];
  v9 = 12.0;
  if (*(v0 + v1))
  {
    v9 = 15.0;
  }

  v10 = v8 / v9 * 5.0 + v8 / v9 * 5.0;
  v11 = v5 + v10;
  [v7 capHeight];
  v13 = v12 + v10;
  v14 = MEMORY[0x277D84F90];
  sub_24E32DAB8(MEMORY[0x277D84F90], v11, v13, 24.0);
  v16 = v15;
  sub_24E32DAB8(v14, v13, v2, 24.0);

  return v16;
}

id sub_24E32E0D0()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for CountBadgeView();
  objc_msgSendSuper2(&v31, sel_layoutSubviews);
  [v0 bounds];
  [v0 sizeThatFits_];
  v4 = v3;
  v6 = v5;
  v7 = v5 * 0.5;
  [v0 _setContinuousCornerRadius_];
  v8 = *&v0[OBJC_IVAR____TtC12GameCenterUI14CountBadgeView_countLabel];
  [v0 bounds];
  v10 = v9;
  v12 = v11;
  [v0 layoutMargins];
  v14 = v13;
  v32.origin.x = v15;
  v17 = v10 - v15 - v16;
  v32.size.height = v12 - v14 - v18;
  v32.origin.y = v14;
  v32.size.width = v17;
  v19 = floor(CGRectGetMidX(v32) - v4 * 0.5);
  [v0 bounds];
  v21 = v20;
  v23 = v22;
  [v0 layoutMargins];
  v25 = v24;
  v33.origin.x = v26;
  v28 = v21 - v26 - v27;
  v33.size.height = v23 - v25 - v29;
  v33.origin.y = v25;
  v33.size.width = v28;
  return [v8 setFrame_];
}

id sub_24E32E2C8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12GameCenterUI14CountBadgeView_countLabel) firstBaselineAnchor];

  return v1;
}

id sub_24E32E38C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CountBadgeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for CountBadgeView.Size(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E32E4D4()
{
  result = qword_27F1EB288;
  if (!qword_27F1EB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB288);
  }

  return result;
}

void static GKMetricsBridge.recordInviteFriendClickEvent(type:pageType:pageId:)()
{
  OUTLINED_FUNCTION_32();
  v25 = v0;
  v26 = v1;
  v23 = v2;
  v24 = v3;
  v22 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0);
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = sub_24E347638();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v21 - v18;
  if (qword_27F1DDF20 != -1)
  {
    OUTLINED_FUNCTION_4_34();
  }

  sub_24E347628();
  sub_24E3477D8();
  v27 = sub_24E3477C8();
  v28 = MEMORY[0x277D221C0];
  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0);
  sub_24E3475B8();
  (*(v7 + 8))(v10, v5);

  v20 = *(v13 + 8);
  v20(v16, v11);
  sub_24E32F4E0(v22, v23, v24, v25, v26, v19);
  v20(v19, v11);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E32E770(char a1, char a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = a4;
  if (a4)
  {
    v12 = [objc_opt_self() stringForOrigin_];
    v13 = sub_24E347CF8();
    v8 = v14;
  }

  else
  {
    v13 = 0;
  }

  sub_24E0719A8(a1);
  v16 = v15;
  v18 = v17;
  sub_24E071740(a2);
  v21 = 0xE900000000000064;
  v22 = 0x72616F6268736164;
  v23 = 0;
  v24 = a3;
  v25 = 0;
  switch(v24)
  {
    case 1:
      v21 = 0xE700000000000000;
      v22 = 0x656C69666F7270;
      goto LABEL_7;
    case 2:
      v21 = 0xEA00000000007974;
      v22 = 0x7261506472696874;
      goto LABEL_7;
    case 3:
      goto LABEL_8;
    default:
LABEL_7:
      v23 = v22;
      v25 = v21;
LABEL_8:
      LOBYTE(v27) = a6 & 1;
      sub_24E32EC54(v16, v18, v19, v20, v23, v25, v13, v8, a5, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, vars0, vars8);
  }
}

uint64_t sub_24E32E900(char a1, char a2, char a3, char a4, char a5, uint64_t a6)
{
  sub_24E0719A8(a1);
  v12 = v11;
  v14 = v13;
  sub_24E071740(a2);
  v16 = v15;
  v18 = v17;
  v19 = sub_24E323448(a3);
  v21 = v20;
  v22 = sub_24E3235AC(a4);
  v24 = v23;
  v25 = sub_24E3234E4(a5);
  sub_24E330BB0(v12, v14, v16, v18, v19, v21, v22, v24, v25, v26, a6, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
}

double sub_24E32EA08()
{
  result = *(v0 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_loadedThreshold);
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_loadedThreshold + 8))
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_24E32EA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 64) + 40);
  *v4 = a2;
  v4[1] = a3;
  v4[2] = a4;
  return MEMORY[0x282200948]();
}

uint64_t sub_24E32EA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x282200948]();
}

uint64_t sub_24E32EAD0(char a1, char a2, char a3, char a4, uint64_t a5)
{
  sub_24E0719A8(a1);
  v10 = v9;
  v12 = v11;
  v13 = sub_24E323448(a2);
  v15 = v14;
  v16 = sub_24E3235AC(a3);
  v18 = v17;
  v19 = sub_24E3234E4(a4);
  sub_24E330BB0(v10, v12, 0, 0, v13, v15, v16, v18, v19, v20, a5, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t static GKMetricsBridge.sharedPipeline.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F1DDF20 != -1)
  {
    OUTLINED_FUNCTION_4_34();
  }

  v2 = qword_27F20B960;
  v3 = OBJC_IVAR____TtC12GameCenterUI9GKMetrics_pipeline;
  v4 = sub_24E347388();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v2 + v3, v4);
}

void sub_24E32EC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  OUTLINED_FUNCTION_32();
  v61 = v22;
  v24 = v23;
  v58 = v25;
  v27 = v26;
  v59 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v57 = sub_24E3479D8();
  OUTLINED_FUNCTION_0_14();
  v56 = v37;
  MEMORY[0x28223BE20](v38);
  v55[1] = v55 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v55[0] = v55 - v41;
  v60 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_1();
  v47 = v46 - v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  *(inited + 32) = sub_24E347CF8();
  *(inited + 40) = v49;
  v50 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v32;
  *(inited + 56) = v30;
  *(inited + 80) = sub_24E347CF8();
  *(inited + 88) = v51;
  *(inited + 120) = v50;
  *(inited + 96) = v36;
  *(inited + 104) = v34;

  v52 = sub_24E347C28();
  if (v24)
  {
    sub_24E347CF8();
    v65 = v50;
    *&v64 = v58;
    *(&v64 + 1) = v24;
    sub_24E024710(&v64, v63);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_120();

    v52 = v62;
  }

  if (v27)
  {
    sub_24E347CF8();
    v65 = v50;
    *&v64 = v59;
    *(&v64 + 1) = v27;
    sub_24E024710(&v64, v63);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_120();

    v52 = v62;
  }

  sub_24E0A7788(v52);

  if (a22)
  {
    sub_24E3479B8();
    v53 = sub_24E347068();
    v54 = v55[0];
    sub_24E1C3144();
    (*(v56 + 8))(v54, v57);
    v53(&v64, 0);
  }

  sub_24E347378();

  (*(v43 + 8))(v47, v60);
  OUTLINED_FUNCTION_18();
}

unint64_t GKMetricsBridge.FriendingClickMetricsType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24E32F004@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GKMetricsBridge.FriendingClickMetricsType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t static GKMetricsBridge.recordChallengePageEvent(withReferrerData:)(char a1)
{
  v2 = sub_24E347638();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  if (qword_27F1DDF20 != -1)
  {
    OUTLINED_FUNCTION_4_34();
  }

  sub_24E347628();
  sub_24E32E770(11, 15, 0, 0, v8, a1 & 1);
  return (*(v4 + 8))(v8, v2);
}

void static GKMetricsBridge.recordCustomImpressionMetrics(impressionMetrics:context:)()
{
  if (qword_27F1DDF20 != -1)
  {
    OUTLINED_FUNCTION_4_34();
  }

  sub_24E32F344();
}

void sub_24E32F344()
{
  OUTLINED_FUNCTION_32();
  v0 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  sub_24E3474A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E60);
  sub_24E3479D8();
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E3479A8();
  sub_24E1ACE80();
  sub_24E347078();
  sub_24E347378();

  (*(v2 + 8))(v6, v0);
  OUTLINED_FUNCTION_18();
}

id GKMetricsBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GKMetricsBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GKMetricsBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E32F72C()
{
  v0 = sub_24E347568();
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_7_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCA8);

  sub_24E347548();
  return sub_24E347AA8();
}

uint64_t sub_24E32F7D4()
{
  v0 = [objc_opt_self() defaultCenter];
  type metadata accessor for GKMetrics();
  swift_allocObject();
  result = sub_24E32F928(v0);
  qword_27F20B960 = result;
  return result;
}

unint64_t sub_24E32F840()
{
  result = qword_27F1EB290;
  if (!qword_27F1EB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB290);
  }

  return result;
}

id sub_24E32F8C8()
{
  v0 = [objc_opt_self() proxyForLocalPlayer];
  v1 = [v0 utilityService];

  return v1;
}

uint64_t sub_24E32F928(void *a1)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v59 - v4;
  v5 = sub_24E347388();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x28223BE20](v5);
  v74 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24E347988();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_24E347918();
  v83 = *(v80 - 1);
  MEMORY[0x28223BE20](v80);
  v62 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_24E3479D8();
  v9 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_24E347818();
  v82 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v59 - v15;
  MEMORY[0x28223BE20](v16);
  v64 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v65 = &v59 - v19;
  MEMORY[0x28223BE20](v20);
  v68 = &v59 - v21;
  MEMORY[0x28223BE20](v22);
  v69 = &v59 - v23;
  MEMORY[0x28223BE20](v24);
  v73 = &v59 - v25;
  v26 = v2 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_loadedThreshold;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = OBJC_IVAR____TtC12GameCenterUI9GKMetrics_refAppFieldProvider;
  v66 = type metadata accessor for GKRefAppFieldsProvider();
  v28 = swift_allocObject();
  v29 = OBJC_IVAR____TtC12GameCenterUI22GKRefAppFieldsProvider_category;
  v30 = *MEMORY[0x277D22340];
  v31 = sub_24E3479F8();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  v32 = (v28 + OBJC_IVAR____TtC12GameCenterUI22GKRefAppFieldsProvider_refApp);
  *v32 = 0;
  v32[1] = 0;
  v79 = v2;
  v67 = v27;
  *(v2 + v27) = v28;
  sub_24E347808();
  v87 = sub_24E347938();
  v88 = MEMORY[0x277D22268];
  __swift_allocate_boxed_opaque_existential_1(v86);
  sub_24E347928();
  sub_24E347998();
  sub_24E3477E8();
  v33 = v9 + 8;
  v34 = *(v9 + 8);
  v35 = v81;
  v34(v11, v81);
  v36 = *(v82 + 8);
  v37 = v63;
  v36(v13, v63);
  __swift_destroy_boxed_opaque_existential_1(v86);
  v61 = *MEMORY[0x277D22230];
  v38 = *(v83 + 104);
  v83 += 104;
  v60 = v38;
  v38(v62);
  v87 = sub_24E347A18();
  v88 = MEMORY[0x277D22360];
  __swift_allocate_boxed_opaque_existential_1(v86);
  sub_24E347A08();
  sub_24E3479A8();
  v39 = v64;
  v40 = v59;
  sub_24E3477E8();
  v34(v11, v35);
  v36(v40, v37);
  __swift_destroy_boxed_opaque_existential_1(v86);
  v87 = type metadata accessor for GKImpressionsSnapshotMetricsFieldsProvider();
  v88 = sub_24E331138(&qword_27F1EB2A8, type metadata accessor for GKImpressionsSnapshotMetricsFieldsProvider);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v86);
  v60(boxed_opaque_existential_1, v61, v80);
  v42 = v65;
  sub_24E3479C8();
  sub_24E3477E8();
  v83 = v33;
  v80 = v34;
  v34(v11, v35);
  v36(v39, v37);
  __swift_destroy_boxed_opaque_existential_1(v86);
  v87 = &type metadata for GKHostAppMetricsFieldsProvider;
  v88 = sub_24E3310E4();
  if (qword_27F1DDAC0 != -1)
  {
    swift_once();
  }

  v43 = v72;
  __swift_project_value_buffer(v72, qword_27F20B1C0);
  v44 = v68;
  sub_24E3477F8();
  v36(v42, v37);
  __swift_destroy_boxed_opaque_existential_1(v86);
  v45 = [objc_opt_self() mainBundle];
  v87 = sub_24E347788();
  v88 = MEMORY[0x277D221B0];
  __swift_allocate_boxed_opaque_existential_1(v86);
  sub_24E347778();
  v46 = v70;
  sub_24E347968();
  v47 = v69;
  sub_24E3477F8();
  (*(v71 + 8))(v46, v43);
  v36(v44, v37);
  __swift_destroy_boxed_opaque_existential_1(v86);
  v48 = v79;
  v49 = *(v79 + v67);
  v87 = v66;
  v88 = sub_24E331138(&qword_27F1EB2B8, type metadata accessor for GKRefAppFieldsProvider);
  v86[0] = v49;

  sub_24E3479B8();
  v50 = v73;
  sub_24E3477E8();
  v80(v11, v81);
  v36(v47, v37);
  __swift_destroy_boxed_opaque_existential_1(v86);
  sub_24E3479E8();
  (*(v82 + 16))(v47, v50, v37);
  v87 = &type metadata for GKMetrics.PassthroughLinter;
  v88 = sub_24E331180();
  v84 = &type metadata for GameCenterMetricsEventRecorder;
  v85 = sub_24E3311D4();
  v51 = v74;
  sub_24E347368();
  (*(v75 + 32))(v48 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_pipeline, v51, v76);
  v52 = v78;
  [v78 addObserver:v48 selector:sel_handleNotification_ name:*MEMORY[0x277D0BC58] object:0];
  v53 = sub_24E348098();
  v54 = v77;
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v53);
  sub_24E348068();

  v55 = sub_24E348058();
  v56 = swift_allocObject();
  v57 = MEMORY[0x277D85700];
  v56[2] = v55;
  v56[3] = v57;
  v56[4] = v48;
  sub_24DFC8700(0, 0, v54, &unk_24E38F778, v56);

  v36(v50, v37);
  return v48;
}

uint64_t sub_24E330378()
{
  v0[2] = sub_24E348068();
  v0[3] = sub_24E348058();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24DFC9E68;

  return sub_24E330424();
}

uint64_t sub_24E330424()
{
  v1[19] = v0;
  sub_24E348068();
  v1[20] = sub_24E348058();
  v3 = sub_24E347FF8();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x2822009F8](sub_24E3304BC, v3, v2);
}

uint64_t sub_24E3304BC()
{
  OUTLINED_FUNCTION_8_9();
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC12GameCenterUI9GKMetrics_loadedThreshold;
  v0[23] = OBJC_IVAR____TtC12GameCenterUI9GKMetrics_loadedThreshold;
  if (*(v1 + v2 + 8) == 1)
  {
    v3 = sub_24E32F8C8();
    v0[24] = v3;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_24E330630;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB2A0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_24E330E34;
    v0[13] = &block_descriptor_107;
    v0[14] = v4;
    [v3 viewableThresholdWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    OUTLINED_FUNCTION_12_5();

    return v5();
  }
}

uint64_t sub_24E330630()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);

  return MEMORY[0x2822009F8](sub_24E330730, v2, v1);
}

uint64_t sub_24E330730()
{
  OUTLINED_FUNCTION_8_9();

  v1 = *(v0 + 144);
  if (v1)
  {
    [*(v0 + 144) doubleValue];
    v3 = v2;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = 0;
  }

  v4 = *(v0 + 152) + *(v0 + 184);
  *v4 = v3;
  *(v4 + 8) = v1 == 0;
  OUTLINED_FUNCTION_12_5();

  return v5();
}

uint64_t sub_24E3307EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_24E348068();

  v6 = sub_24E348058();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_24DFC8700(0, 0, v4, &unk_24E38F750, v7);
}

uint64_t sub_24E3308EC()
{
  v0[2] = sub_24E348068();
  v0[3] = sub_24E348058();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24E330998;

  return sub_24E330424();
}

uint64_t sub_24E330998()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  v4 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E33131C, v4, v3);
}

void sub_24E330BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_32();
  v50 = v22;
  v48 = v23;
  v51 = v24;
  v49 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v52 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_1();
  v39 = v38 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369B70;
  *(inited + 32) = sub_24E347CF8();
  *(inited + 40) = v41;
  v42 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v33;
  *(inited + 56) = v31;
  *(inited + 80) = sub_24E347CF8();
  *(inited + 88) = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFEF0);
  *(inited + 96) = v29;
  *(inited + 104) = v27;
  *(inited + 120) = v44;
  *(inited + 128) = 0x79546E6F69746361;
  *(inited + 168) = v42;
  *(inited + 136) = 0xEA00000000006570;
  *(inited + 144) = a21;
  *(inited + 152) = a22;

  v45 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v46 = sub_24E347058();
  v47 = __swift_project_value_buffer(v46, qword_27F20AE00);
  MEMORY[0x25303DB90](v48, v50, v49, v51, v45, v47);

  sub_24E347378();

  (*(v35 + 8))(v39, v52);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E330E34(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = a2;
  return sub_24E32EAB0(v3, a2);
}

uint64_t sub_24E330E74()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI9GKMetrics_pipeline;
  v2 = sub_24E347388();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for GKMetrics()
{
  result = qword_280BDFBA0;
  if (!qword_280BDFBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E330F74()
{
  result = sub_24E347388();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24E33101C()
{
  OUTLINED_FUNCTION_8_9();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_1_21(v1);

  return sub_24E3308EC();
}

unint64_t sub_24E3310E4()
{
  result = qword_27F1EB2B0;
  if (!qword_27F1EB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB2B0);
  }

  return result;
}

uint64_t sub_24E331138(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E331180()
{
  result = qword_27F1EB2C0;
  if (!qword_27F1EB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB2C0);
  }

  return result;
}

unint64_t sub_24E3311D4()
{
  result = qword_27F1EB2C8;
  if (!qword_27F1EB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB2C8);
  }

  return result;
}

uint64_t objectdestroyTm_32()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24E331268()
{
  OUTLINED_FUNCTION_8_9();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_1_21(v1);

  return sub_24E330378();
}

_OWORD *OUTLINED_FUNCTION_4_120()
{
  *(v1 - 288) = v0;

  return sub_24E058328();
}

uint64_t sub_24E331378@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v11 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB2D0);
  sub_24E346B88();
  v4 = v12;
  v12 = v3;
  v10 = v11;
  v5 = swift_allocObject();
  v6 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 32);
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB2D8) + 36));
  sub_24E345528();

  sub_24DF9DEAC(&v12, &v9, &qword_27F1E0988);
  sub_24DF9DEAC(&v10, &v9, &qword_27F1EB2E0);
  result = sub_24E348078();
  *v7 = &unk_24E38F878;
  v7[1] = v5;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_24E3314AC(void *a1)
{
  v1[5] = a1;
  v1[6] = sub_24E348068();
  v1[7] = sub_24E348058();
  v5 = (*a1 + **a1);
  v3 = swift_task_alloc();
  v1[8] = v3;
  *v3 = v1;
  v3[1] = sub_24E3315B8;

  return v5();
}

uint64_t sub_24E3315B8()
{
  OUTLINED_FUNCTION_9_7();
  *(*v0 + 72) = v1;

  v3 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E3316F8, v3, v2);
}

uint64_t sub_24E3316F8()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  *(v0 + 16) = *(v2 + 24);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB2D0);
  sub_24E346B98();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24E331794()
{
  OUTLINED_FUNCTION_9_7();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24E127514;

  return sub_24E3314AC((v0 + 16));
}

unint64_t sub_24E331824()
{
  result = qword_27F1EB2E8;
  if (!qword_27F1EB2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EB2D8);
    sub_24E3318B0();
    sub_24E0CA2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB2E8);
  }

  return result;
}

unint64_t sub_24E3318B0()
{
  result = qword_27F1EB2F0;
  if (!qword_27F1EB2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EB2F8);
    sub_24DF965C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB2F0);
  }

  return result;
}

id GKSuggestedPlayerGroup.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t GKSuggestedPlayerGroupSource.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24E331984@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GKSuggestedPlayerGroupSource.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_24E331ABC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_players;
  OUTLINED_FUNCTION_22_6();
  *(v1 + v3) = a1;
}

id sub_24E331C28(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_24E347CB8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_24E331CA8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_24E347CF8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_24E331D3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_24E331DF4()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_source;
  OUTLINED_FUNCTION_9_16();
  return *(v0 + v1);
}

uint64_t sub_24E331E50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_source;
  result = OUTLINED_FUNCTION_22_6();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24E331F00(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_24E331F78(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

BOOL sub_24E332048()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_source;
  OUTLINED_FUNCTION_9_16();
  return *(v0 + v1) == 1;
}

BOOL sub_24E3320AC()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_source;
  OUTLINED_FUNCTION_9_16();
  return *(v0 + v1) == 2;
}

id GKSuggestedPlayerGroup.init()()
{
  *&v0[OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_players] = MEMORY[0x277D84F90];
  v1 = &v0[OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_groupName];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_messagesGroupIdentifier];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_source] = 0;
  v3 = &v0[OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_conversationIdentifier];
  v4 = type metadata accessor for GKSuggestedPlayerGroup();
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_init);
}

id GKSuggestedPlayerGroup.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GKSuggestedPlayerGroup();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E3321F4()
{
  result = qword_27F1EB328;
  if (!qword_27F1EB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB328);
  }

  return result;
}

uint64_t sub_24E33265C()
{
  type metadata accessor for SmallFriendsRequestsProfileSection();
  result = swift_allocObject();
  *(result + 16) = 262;
  return result;
}

void sub_24E332688(void *__src, void *a2)
{
  v86 = a2;
  memcpy(__dst, __src, sizeof(__dst));
  v3 = sub_24E347458();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  v7 = sub_24E347478();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v77 - v12;
  v14 = sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v85 = v15;
  MEMORY[0x28223BE20](v16);
  v84 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v77 - v19;
  v21 = sub_24E343428();
  OUTLINED_FUNCTION_0_14();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_1();
  v27 = v26 - v25;
  memcpy(v98, __src, sizeof(v98));
  if (sub_24DF8BF80(v98) != 1)
  {
    v82 = v10;
    memcpy(v99, v98, sizeof(v99));
    v28 = v99[6] >> 62 ? sub_24E348878() : *((v99[6] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28 >= 1)
    {
      v80 = v13;
      v81 = v6;
      v83 = __src;
      memcpy(v97, __dst, sizeof(v97));
      sub_24DF8BF98(v97, &v94);
      sub_24DFE2518();
      v30 = v29;
      v31 = [objc_opt_self() currentLocale];
      sub_24E3433D8();

      v32 = sub_24E3433C8();
      (*(v23 + 8))(v27, v21);
      v33 = JECountFormatterMakeStringFromNumber();

      if (v33)
      {
        v78 = sub_24E347CF8();
        v35 = v34;
      }

      else
      {
        v78 = 0;
        v35 = 0;
      }

      v36 = sub_24DFD8654();
      sub_24DFE2518();
      v38 = v36 - v37;
      if (__OFSUB__(v36, v37))
      {
        __break(1u);
      }

      else
      {
        v39 = sub_24E347CB8();
        v40 = GKGameCenterUIFrameworkBundle();
        if (v38 < 1)
        {
        }

        else
        {
          v41 = v35;
          v42 = OUTLINED_FUNCTION_16_2();

          sub_24E347CF8();
          v35 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_24E36A270;
          v44 = MEMORY[0x277D83C10];
          v45 = MEMORY[0x277D83B88];
          *(v43 + 56) = MEMORY[0x277D83B88];
          *(v43 + 64) = v44;
          *(v43 + 32) = 0;
          *(v43 + 96) = v45;
          *(v43 + 104) = v44;
          *(v43 + 72) = v38;
          sub_24E347D18();
        }

        v46 = sub_24E347CB8();
        v47 = GKGameCenterUIFrameworkBundle();
        v48 = GKGetLocalizedStringFromTableInBundle();

        v49 = sub_24E347CF8();
        v51 = v50;

        sub_24DFE2518();
        v52 = 3;
        v79 = v49;
        if (v53 <= 0 && v38)
        {

          v54 = 0;
          v35 = 0;
          v91 = 0u;
          v92 = 0u;
          v90 = 0u;
          v52 = -1;
        }

        else
        {
          v54 = v78;
        }

        v89[0] = v54;
        v89[1] = v35;
        v93 = v52;
        v55 = sub_24E347CF8();
        v57 = v56;
        v58 = sub_24E347CF8();
        v60 = v59;
        v88[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89C8);
        v88[4] = sub_24E333938();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
        ActionMetrics.init(domain:eventType:)(v55, v57, v58, v60);
        v62 = swift_allocObject();
        memcpy((v62 + 16), v99, 0x90uLL);
        v63 = v86;
        *(v62 + 160) = v86;
        *boxed_opaque_existential_1 = sub_24E33399C;
        boxed_opaque_existential_1[1] = v62;
        *(boxed_opaque_existential_1 + 16) = 0;
        sub_24DF9DEAC(v83, &v94, &qword_27F1DEEA0);
        v64 = v63;
        sub_24E343398();
        v65 = v85;
        (*(v85 + 16))(v84, v20, v14);
        sub_24E333A0C(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
        sub_24E348918();
        (*(v65 + 8))(v20, v14);
        v66 = type metadata accessor for DetailData();
        v95 = v66;
        v96 = sub_24E333A0C(&qword_27F1DEE80, type metadata accessor for DetailData);
        v67 = __swift_allocate_boxed_opaque_existential_1(&v94);
        *(v67 + 25) = 0u;
        v67[27] = 0;
        *(v67 + 23) = 0u;
        v68 = *(v66 + 56);
        v69 = sub_24E3474B8();
        __swift_storeEnumTagSinglePayload(v67 + v68, 1, 1, v69);
        v70 = v67 + *(v66 + 60);
        sub_24DF8BD34(v87, v67);
        *(v67 + 40) = 1;
        v71 = v79;
        v67[6] = v79;
        v67[7] = v51;
        v67[9] = 0;
        v67[10] = 0;
        v67[8] = 0;
        sub_24DF9DEAC(v89, (v67 + 11), &qword_27F1DEE88);
        v67[20] = 0;
        v67[21] = 0;
        *(v67 + 88) = 256;
        *v70 = 0;
        v70[8] = 0;

        sub_24DF8BDF0(v88, (v67 + 23));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_24E369E30;
        strcpy((v72 + 32), "impressionType");
        *(v72 + 47) = -18;
        v73 = MEMORY[0x277D837D0];
        *(v72 + 48) = 0x74656C63696863;
        *(v72 + 56) = 0xE700000000000000;
        *(v72 + 72) = v73;
        *(v72 + 80) = 0x6973736572706D69;
        *(v72 + 88) = 0xEF7865646E496E6FLL;
        *(v72 + 96) = 0;
        *(v72 + 120) = MEMORY[0x277D83B88];
        *(v72 + 128) = 0x657079546469;
        *(v72 + 136) = 0xE600000000000000;
        *(v72 + 144) = 0x636974617473;
        *(v72 + 152) = 0xE600000000000000;
        *(v72 + 168) = v73;
        *(v72 + 176) = 1701667182;
        *(v72 + 216) = v73;
        *(v72 + 184) = 0xE400000000000000;
        *(v72 + 192) = v71;
        *(v72 + 200) = v51;

        sub_24E347C28();
        sub_24E347468();
        sub_24E347448();
        v74 = MEMORY[0x277D84F90];
        sub_24E0241AC(MEMORY[0x277D84F90]);
        sub_24E0241AC(v74);
        v75 = v80;
        sub_24E347488();
        sub_24DF8BE60(v87);
        sub_24DF8C95C(v89, &qword_27F1DEE88);
        sub_24DF8C95C(v88, &qword_27F1DEE90);
        __swift_storeEnumTagSinglePayload(v75, 0, 1, v69);
        sub_24DF8BEB4(v75, v67 + v68);
        sub_24DE56CE8(&v94, v89);
        sub_24E076EE4();
        v88[0] = v76;
        sub_24E05EBFC();
        sub_24DF8C95C(v83, &qword_27F1DEEA0);
      }
    }
  }
}

uint64_t sub_24E33305C(void *a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v37 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v37 - v4;
  v5 = type metadata accessor for PlayerProfileAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24E347458();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_24E347088();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24E347208();
  v44 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  v41 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v17 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v17;
  *(inited + 48) = 0x657461676976616ELL;
  *(inited + 56) = 0xE800000000000000;
  v18 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v19 = sub_24E347058();
  v20 = __swift_project_value_buffer(v19, qword_27F20AE00);
  MEMORY[0x25303DB90](0x656C69666F7270, 0xE700000000000000, 0x6E6F74747562, 0xE600000000000000, v18, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v41;
  (*(v10 + 16))(v22 + v21, v12, v9);
  sub_24E347448();
  sub_24E3471D8();
  (*(v10 + 8))(v12, v9);
  v23 = [v42 playerID];
  v24 = sub_24E347CF8();
  v26 = v25;

  v27 = v44;
  (*(v44 + 16))(&v7[*(v5 + 24)], v15, v13);
  *v7 = v24;
  *(v7 + 1) = v26;
  v7[16] = 0;
  v7[*(v5 + 28)] = 0;
  v28 = OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph;
  v29 = v43;
  if (*(v43 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph))
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);

    v31 = v40;
    sub_24E347328();

    if (__swift_getEnumTagSinglePayload(v31, 1, v30) == 1)
    {
      sub_24E3339B0(v7);
      (*(v27 + 8))(v15, v13);
      return sub_24DF8C95C(v31, &unk_27F1EAC90);
    }

    else
    {
      v42 = v13;
      v45[3] = v5;
      v45[4] = sub_24E333A0C(&qword_27F1E2E48, type metadata accessor for PlayerProfileAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
      sub_24E333A54(v7, boxed_opaque_existential_1);
      v34 = v38;
      v35 = v37;
      v36 = v39;
      result = (*(v38 + 104))(v37, *MEMORY[0x277D21E18], v39);
      if (*(v29 + v28))
      {

        sub_24E3473B8();

        (*(v34 + 8))(v35, v36);
        sub_24E3339B0(v7);
        (*(v44 + 8))(v15, v42);
        __swift_destroy_boxed_opaque_existential_1(v45);
        return (*(*(v30 - 8) + 8))(v31, v30);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_24E3339B0(v7);
    return (*(v27 + 8))(v15, v13);
  }

  return result;
}

id sub_24E333714@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *(a1 + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  sub_24DF9DEAC(&v22, &v19, &qword_27F1E26F0);
  v6 = qword_27F1DE118;
  v7 = a2;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v8, qword_27F20BF00);
  result = [objc_opt_self() shared];
  if (result)
  {
    v10 = result;
    [result inboxContactsOnly];

    sub_24E346B78();
    v11 = v19;
    v12 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E26F0);
    sub_24E346B78();
    v13 = v19;
    v14 = v20;
    sub_24E346B78();
    LOBYTE(v10) = v19;
    v15 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89D8);
    result = sub_24E346B78();
    v16 = v19;
    v17 = v20;
    v18 = v21;
    LOBYTE(v19) = v20;
    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
    *(a3 + 24) = v14;
    *(a3 + 32) = v10;
    *(a3 + 40) = v15;
    *(a3 + 48) = xmmword_24E387420;
    *(a3 + 64) = sub_24E3339A8;
    *(a3 + 72) = v5;
    *(a3 + 80) = v16;
    *(a3 + 88) = v17;
    *(a3 + 96) = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24E333938()
{
  result = qword_27F1E89D0;
  if (!qword_27F1E89D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E89C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E89D0);
  }

  return result;
}

uint64_t sub_24E3339B0(uint64_t a1)
{
  v2 = type metadata accessor for PlayerProfileAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E333A0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E333A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerProfileAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E333B24(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = sub_24E344158();
  __swift_allocate_value_buffer(v5, a2);
  v6 = OUTLINED_FUNCTION_7_87(v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  v8 = *MEMORY[0x277D76A20];
  if (!v6)
  {
    v8 = *a3;
  }

  *a2 = v8;
  *(a2 + 8) = v7;
  OUTLINED_FUNCTION_22_0();
  v10 = *(v9 + 104);

  return v10(a2);
}

uint64_t sub_24E333D70()
{
  v0 = sub_24E344158();
  __swift_allocate_value_buffer(v0, &qword_27F20BB88);
  v1 = OUTLINED_FUNCTION_7_87(v0);
  v2 = *MEMORY[0x277D76918];
  if (v1)
  {
    v3 = 32770;
  }

  else
  {
    v3 = 0x8000;
  }

  qword_27F20BB88 = v2;
  dword_27F20BB90 = v3;
  OUTLINED_FUNCTION_22_0();
  v5 = *(v4 + 104);

  return v5(&qword_27F20BB88);
}

uint64_t sub_24E333E28()
{
  v0 = sub_24E344158();
  __swift_allocate_value_buffer(v0, &qword_27F20BBA0);
  OUTLINED_FUNCTION_7_87(v0);
  qword_27F20BBA0 = *MEMORY[0x277D76968];
  dword_27F20BBA8 = 0x8000;
  OUTLINED_FUNCTION_22_0();
  v2 = *(v1 + 104);

  return v2(&qword_27F20BBA0);
}

uint64_t sub_24E333FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = OUTLINED_FUNCTION_6_107();
  __swift_allocate_value_buffer(v7, v5);
  v8 = __swift_project_value_buffer(v7, v5);
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v10 = *v4;
  if (ShouldUsePadUI)
  {
    v11 = *MEMORY[0x277D74418];
  }

  else
  {
    v10 = *MEMORY[0x277D76968];
    v11 = *a4;
  }

  *v8 = v10;
  v8[1] = v11;
  OUTLINED_FUNCTION_22_0();
  v13 = *(v12 + 104);

  return v13(v8);
}

uint64_t sub_24E334124(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = sub_24E344158();
  __swift_allocate_value_buffer(v5, a2);
  v6 = OUTLINED_FUNCTION_7_87(v5);
  v7 = *MEMORY[0x277D74420];
  v8 = *a3;
  if (!v6)
  {
    v8 = *MEMORY[0x277D76918];
  }

  *a2 = v8;
  a2[1] = v7;
  OUTLINED_FUNCTION_22_0();
  v10 = *(v9 + 104);

  return v10(a2);
}

uint64_t sub_24E334204(uint64_t a1, uint64_t *a2, id *a3, id *a4, int a5)
{
  v9 = sub_24E344158();
  __swift_allocate_value_buffer(v9, a2);
  v10 = __swift_project_value_buffer(v9, a2);
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v11 = a3;
  }

  else
  {
    v11 = a4;
  }

  *v10 = *v11;
  *(v10 + 8) = a5;
  OUTLINED_FUNCTION_22_0();
  v13 = *(v12 + 104);

  return v13(v10);
}

id sub_24E3343D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = OUTLINED_FUNCTION_6_107();
  __swift_allocate_value_buffer(v7, v5);
  v8 = __swift_project_value_buffer(v7, v5);
  v12 = *v4;
  v9 = *a4;
  *v8 = *v4;
  v8[1] = v9;
  OUTLINED_FUNCTION_22_0();
  (*(v10 + 104))();

  return v12;
}

id sub_24E3344F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = OUTLINED_FUNCTION_6_107();
  __swift_allocate_value_buffer(v7, v5);
  v8 = __swift_project_value_buffer(v7, v5);
  v11 = *v4;
  *v8 = *v4;
  *(v8 + 8) = a4;
  OUTLINED_FUNCTION_22_0();
  (*(v9 + 104))();

  return v11;
}

uint64_t OUTLINED_FUNCTION_6_107()
{

  return sub_24E344158();
}

uint64_t OUTLINED_FUNCTION_7_87(uint64_t a1)
{
  __swift_project_value_buffer(a1, v1);

  return GKIsXRUIIdiomShouldUsePadUI();
}

id sub_24E334618()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_24E347CB8();

  v2 = [v0 initWithStringValue_];

  return v2;
}

uint64_t sub_24E33468C(uint64_t a1)
{
  v31 = a1;
  v1 = type metadata accessor for LaunchGameAction();
  v30 = *(v1 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  sub_24E347218();
  OUTLINED_FUNCTION_0_14();
  v28 = v7;
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  OUTLINED_FUNCTION_0_14();
  v27 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0);
  sub_24E347328();
  if (!v33)
  {
    sub_24DFA9298(v32, &qword_27F1E1B70);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E59F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    goto LABEL_8;
  }

  if (!*(&v35 + 1))
  {
LABEL_8:
    sub_24DFA9298(&v34, &qword_27F1E59E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    v20 = sub_24E347AD8();
    v21 = sub_24E348098();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v21);
    sub_24E287784(v31, &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    sub_24E3354FC(&v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    *(v23 + ((v2 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;

    sub_24DFC8700(0, 0, v5, &unk_24E38FA80, v23);

    return v20;
  }

  sub_24DFA9298(&v34, &qword_27F1E59E8);
  sub_24DFAE8CC();

  v18 = sub_24E334618();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v17, 1, v19) == 1)
  {
    sub_24DFA9298(v17, &unk_27F1EAC90);
  }

  else
  {
    *(&v35 + 1) = &type metadata for AppStoreProductAction;
    v36 = sub_24E18C284();
    v34 = v18;
    v25 = v27;
    (*(v27 + 104))(v14, *MEMORY[0x277D21E18], v10);
    v26 = v18;
    sub_24E3473B8();

    (*(v25 + 8))(v14, v10);
    __swift_destroy_boxed_opaque_existential_1(&v34);
    (*(*(v19 - 8) + 8))(v17, v19);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  (*(v28 + 104))(v9, *MEMORY[0x277D21CA8], v29);
  v20 = sub_24E347AA8();

  return v20;
}

uint64_t sub_24E334BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[49] = a4;
  v5[50] = a5;
  v6 = sub_24E347218();
  v5[51] = v6;
  v5[52] = *(v6 - 8);
  v5[53] = swift_task_alloc();
  v7 = sub_24E343288();
  v5[54] = v7;
  v5[55] = *(v7 - 8);
  v5[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E334CF8, 0, 0);
}

uint64_t sub_24E334CF8()
{
  v1 = v0[49];
  v2 = [objc_opt_self() mainBundle];
  sub_24E0CFF20(v2);
  v3 = 0xE000000000000000;
  v4 = *(v1 + 48);
  if (v4 == 2)
  {
    v5 = 0;
  }

  else
  {
    if (v4)
    {
      v6 = 0x7974697669746361;
    }

    else
    {
      v6 = 0x65756E69746E6F63;
    }

    if (v4)
    {
      v7 = 0xEC00000064656546;
    }

    else
    {
      v7 = 0xEF676E6979616C50;
    }

    MEMORY[0x25303E950](v6, v7);

    v5 = 46;
    v3 = 0xE100000000000000;
  }

  v35 = v5;
  v8 = v0[49];
  MEMORY[0x25303E950](v5, v3);

  v9 = objc_opt_self();
  v10 = *(v8 + 32);
  v34 = *(v8 + 40);
  v11 = sub_24E347CB8();
  v12 = sub_24E347CB8();
  v13 = sub_24E347CB8();

  v14 = [v9 URLWithAdamId:v11 bundleId:v12 localizedName:0 sourceApplication:v13 topic:0];

  sub_24E343238();
  v15 = MEMORY[0x277D837D0];
  v16 = sub_24E347C28();
  type metadata accessor for LaunchGameAction();
  v17 = *(sub_24E3471E8() + 16);

  if (v17)
  {
  }

  else
  {
    v18 = v0[49];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24E369E30;
    *(inited + 32) = 0x707954746E657665;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = 0x6B63696C63;
    *(inited + 56) = 0xE500000000000000;
    *(inited + 72) = v15;
    *(inited + 80) = 0x79546E6F69746361;
    *(inited + 88) = 0xEA00000000006570;
    *(inited + 96) = 0x657461676976616ELL;
    *(inited + 104) = 0xE800000000000000;
    *(inited + 120) = v15;
    *(inited + 128) = 0x6449746567726174;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = v10;
    *(inited + 152) = v34;
    *(inited + 168) = v15;
    *(inited + 176) = 0x6E6F697461636F6CLL;
    *(inited + 184) = 0xE800000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB340);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24E36A270;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2778);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_24E367D20;
    *(v21 + 32) = 1701667182;
    *(v21 + 40) = 0xE400000000000000;
    v22 = *v18;
    v23 = v18[1];
    *(v21 + 48) = v22;
    *(v21 + 56) = v23;

    *(v20 + 32) = sub_24E347C28();
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_24E367D20;
    *(v24 + 32) = 1701667182;
    *(v24 + 40) = 0xE400000000000000;
    if (qword_27F1DE100 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v25 = v35;
    v26 = sub_24E12CAA0(v35, v3, qword_27F1EB330);
    v28 = v27;
    swift_endAccess();
    if (v28)
    {

      v25 = v26;
      v3 = v28;
    }

    *(v24 + 48) = v25;
    *(v24 + 56) = v3;
    *(v20 + 40) = sub_24E347C28();
    *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB348);
    *(inited + 192) = v20;
    v16 = sub_24E347C28();
  }

  type metadata accessor for GameCenter();
  swift_initStaticObject();
  sub_24E335C90(v16);
  v30 = v29;
  v0[57] = v29;

  v31 = swift_task_alloc();
  v0[58] = v31;
  *v31 = v0;
  v31[1] = sub_24E33524C;
  v32 = v0[56];

  return sub_24E2F6804(v32, v30);
}

uint64_t sub_24E33524C(uint64_t a1)
{
  *(*v1 + 472) = a1;

  return MEMORY[0x2822009F8](sub_24E33536C, 0, 0);
}

uint64_t sub_24E33536C()
{
  v1 = v0[59];
  v3 = v0[55];
  v2 = v0[56];
  v4 = v0[54];
  if (v1)
  {
    sub_24E335680();
    v5 = swift_allocError();
    sub_24E347AB8();

    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v7 = v0[52];
    v6 = v0[53];
    v8 = v0[51];
    (*(v7 + 104))(v6, *MEMORY[0x277D21CA8], v8);
    sub_24E347AC8();
    (*(v7 + 8))(v6, v8);
    (*(v3 + 8))(v2, v4);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_24E3354BC()
{
  result = sub_24E347C28();
  qword_27F1EB330 = result;
  return result;
}

uint64_t sub_24E3354FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchGameAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E335560(uint64_t a1)
{
  v4 = *(type metadata accessor for LaunchGameAction() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DF8CD84;

  return sub_24E334BDC(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_24E335680()
{
  result = qword_27F1EB338;
  if (!qword_27F1EB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB338);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LaunchGameActionImplementation.LaunchGameActionImplementationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_24E335784()
{
  result = qword_27F1EB350;
  if (!qword_27F1EB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EB350);
  }

  return result;
}

void sub_24E3357D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB360);
    v2 = OUTLINED_FUNCTION_1_164();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_0_197();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_24E024710(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_24E024710(v29, v30);
    v13 = sub_24E3488E8() & ~(-1 << *(v2 + 32));
    if (((-1 << v13) & ~*(v8 + 8 * (v13 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_6_41();
      while (++v14 != v16 || (v15 & 1) == 0)
      {
        v17 = v14 == v16;
        if (v14 == v16)
        {
          v14 = 0;
        }

        v15 |= v17;
        if (*(v8 + 8 * v14) != -1)
        {
          OUTLINED_FUNCTION_36_9();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_40_8();
LABEL_21:
    v6 &= v6 - 1;
    OUTLINED_FUNCTION_35_10();
    *(v8 + v18) |= v19;
    v21 = *(v2 + 48) + 40 * v20;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    sub_24E024710(v30, (*(v2 + 56) + 32 * v20));
    ++*(v2 + 16);
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_24E335A58(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0EE8);
    v2 = OUTLINED_FUNCTION_1_164();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_0_197();
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_12:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v14 = *v12;
    v13 = v12[1];

    swift_dynamicCast();
    sub_24E024710(&v23, v25);
    sub_24E024710(v25, v26);
    sub_24E024710(v26, &v24);
    result = sub_24E26AE3C();
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      *v17 = v14;
      v17[1] = v13;

      v18 = (v2[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = sub_24E024710(&v24, v18);
      v9 = v10;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v14;
      v19[1] = v13;
      result = sub_24E024710(&v24, (v2[7] + 32 * result));
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      v2[2] = v22;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_24E335C90(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EB360);
    v2 = OUTLINED_FUNCTION_1_164();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_0_197();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (a1[6] + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_24DFB4104(a1[7] + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_24E024710(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_24E024710(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_24E024710(v31, v32);
    v15 = sub_24E3488E8() & ~(-1 << *(v2 + 32));
    if (((-1 << v15) & ~*(v8 + 8 * (v15 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_6_41();
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        if (*(v8 + 8 * v16) != -1)
        {
          OUTLINED_FUNCTION_36_9();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_40_8();
LABEL_21:
    v6 &= v6 - 1;
    OUTLINED_FUNCTION_35_10();
    *(v8 + v20) |= v21;
    v23 = *(v2 + 48) + 40 * v22;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    sub_24E024710(v32, (*(v2 + 56) + 32 * v22));
    ++*(v2 + 16);
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = a1[v10 + 8];
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void GameCenterMetricsEventRecorder.record(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    sub_24E347CF8();
  }

  v3 = objc_opt_self();

  v4 = [v3 daemonProxy];
  v5 = [v4 utilityService];

  v6 = sub_24E347CB8();

  sub_24DF97DD4();
  v7 = sub_24E3485E8();
  v8 = sub_24E347558();
  sub_24E335C90(v8);

  v9 = sub_24E347BE8();

  [v5 reportMetricsEventWithTopic:v6 shouldFlush:v7 metricsFields:v9];
  swift_unknownObjectRelease();
}

_BYTE *storeEnumTagSinglePayload for GameCenterMetricsEventRecorder(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_1_164()
{

  return sub_24E348B58();
}

uint64_t type metadata accessor for PlayerCardTheme()
{
  result = qword_27F1EB470;
  if (!qword_27F1EB470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E33624C()
{
  v0 = sub_24DF88A8C(319, &qword_27F1E5FD0);
  if (v1 <= 0x3F)
  {
    v2 = sub_24E344158();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      sub_24E0ADC44();
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_24E3363BC();
        v0 = v6;
        if (v7 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          v0 = v8;
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

void sub_24E3363BC()
{
  if (!qword_27F1EB480)
  {
    sub_24DF88A8C(255, &qword_27F1EB488);
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1EB480);
    }
  }
}

uint64_t sub_24E336424@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    goto LABEL_2;
  }

  sub_24DFA0CB4();
  v7 = OUTLINED_FUNCTION_0_198();
  OUTLINED_FUNCTION_1_165(v7);
  if ((v1 & 1) == 0)
  {
    if (sub_24DF9EF04())
    {
      v3 = MEMORY[0x277D74D68];
      goto LABEL_3;
    }

LABEL_2:
    v3 = MEMORY[0x277D74D50];
LABEL_3:
    v4 = *v3;
    sub_24E344D18();
    OUTLINED_FUNCTION_3_2();
    return (*(v5 + 104))(a1, v4);
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  v9 = [v8 view];

  LODWORD(v8) = PSShouldInsetListView();
  sub_24E344D18();
  OUTLINED_FUNCTION_3_2();
  if (v8)
  {
    v11 = MEMORY[0x277D74D68];
  }

  else
  {
    v11 = MEMORY[0x277D74D50];
  }

  return (*(v10 + 104))(a1, *v11);
}

double sub_24E336558()
{
  if ((*v0 & 1) == 0)
  {
    sub_24DFA0CB4();
    v2 = OUTLINED_FUNCTION_0_198();
    OUTLINED_FUNCTION_1_165(v2);
    if (v0)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
      v4 = [v3 view];

      LODWORD(v3) = PSShouldInsetListView();
      v1 = 0.0;
      if (!v3)
      {
        return v1;
      }
    }

    else
    {
      v1 = 0.0;
      if (sub_24DF9EF04())
      {
        return v1;
      }
    }
  }

  v1 = 16.0;
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    if (GKIsRemoteUI())
    {
      return 20.0;
    }

    else
    {
      return 10.0;
    }
  }

  return v1;
}

double sub_24E336638()
{
  if ((*v0 & 1) == 0)
  {
    sub_24DFA0CB4();
    v2 = OUTLINED_FUNCTION_0_198();
    OUTLINED_FUNCTION_1_165(v2);
    if (v0)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
      v4 = [v3 view];

      LODWORD(v3) = PSShouldInsetListView();
      if (!v3)
      {
        return 0.0;
      }
    }

    else if (sub_24DF9EF04())
    {
      return 0.0;
    }
  }

  GKIsXRUIIdiomShouldUsePadUI();
  return 0.0;
}

uint64_t sub_24E33670C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    v4 = 0;
  }

  else
  {
    sub_24DFA0CB4();
    v5 = OUTLINED_FUNCTION_0_198();
    OUTLINED_FUNCTION_1_165(v5);
    if (v2)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
      v7 = [v6 view];

      LODWORD(v6) = PSShouldInsetListView();
      result = v6 ^ 1;
    }

    else
    {
      result = sub_24DF9EF04();
    }

    v4 = result & 1;
  }

  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  return result;
}

uint64_t sub_24E3367DC()
{
  v1 = *(v0 + *(type metadata accessor for PlayerCardTheme() + 72));
  if (!v1 || ![v1 subtitleTextColor])
  {
    v2 = [objc_opt_self() secondaryLabelColor];
  }

  return sub_24E346948();
}

uint64_t sub_24E33684C()
{
  v0 = GKIsRemoteUI();
  v1 = objc_opt_self();
  v2 = &selRef_whiteColor;
  if (!v0)
  {
    v2 = &selRef_labelColor;
  }

  v3 = [v1 *v2];

  return sub_24E346948();
}

uint64_t sub_24E3368B4()
{
  if (*v0)
  {
    v1 = 1;
  }

  else
  {
    sub_24DFA0CB4();
    v2 = OUTLINED_FUNCTION_0_198();
    OUTLINED_FUNCTION_1_165(v2);
    if (v0)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
      v4 = [v3 view];

      v1 = PSShouldInsetListView();
    }

    else
    {
      v1 = sub_24DF9EF04() ^ 1;
    }
  }

  return v1 & 1;
}

id sub_24E336964()
{
  v1 = *(v0 + *(type metadata accessor for PlayerCardTheme() + 72));
  if (!v1 || (result = [v1 subtitleTextColor]) == 0)
  {
    v3 = [objc_opt_self() secondaryLabelColor];

    return v3;
  }

  return result;
}

uint64_t sub_24E3369D8()
{
  v0 = sub_24E344158();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v39 - v6;
  MEMORY[0x28223BE20](v5);
  v55 = &v39 - v8;
  v9 = type metadata accessor for PlayerCardTheme();
  __swift_allocate_value_buffer(v9, qword_27F1EB368);
  v10 = __swift_project_value_buffer(v9, qword_27F1EB368);
  if (qword_27F1DE120 != -1)
  {
    swift_once();
  }

  v52 = qword_27F1EB3A0;
  v53 = qword_27F1EB398;
  v50 = qword_27F1EB3B0;
  v51 = qword_27F1EB3A8;
  v48 = qword_27F1EB3C0;
  v49 = qword_27F1EB3B8;
  v47 = byte_27F1EB3C8;
  sub_24DFD7E3C(qword_27F1EB398, qword_27F1EB3A0, qword_27F1EB3A8, qword_27F1EB3B0, qword_27F1EB3B8, qword_27F1EB3C0, byte_27F1EB3C8);
  if (qword_27F1DE128 != -1)
  {
    swift_once();
  }

  v11 = qword_27F1DDFA0;
  v46 = qword_27F1EB3D0;
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v0, qword_27F20BAE0);
  v13 = *(v1 + 16);
  v13(v55, v12, v0);
  v54 = v7;
  v13(v7, v12, v0);
  v14 = objc_opt_self();
  v45 = [v14 systemBlueColor];
  if (qword_27F1DDDC0 != -1)
  {
    swift_once();
  }

  v15 = qword_27F1DDD98;
  v44 = qword_27F20B7E8;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_27F1DDDE8;
  v43 = qword_27F20B7C0;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_27F1DDDF0;
  v42 = qword_27F20B810;
  if (v17 != -1)
  {
    swift_once();
  }

  v41 = qword_27F20B818;
  v40 = [v14 secondaryLabelColor];
  v18 = v4;
  if (qword_27F1DE130 != -1)
  {
    swift_once();
  }

  v39 = qword_27F1EB3D8;
  v19 = [v14 systemBlueColor];
  if (qword_27F1DDB58 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_27F20B258, 0x89uLL);
  v20 = objc_opt_self();
  sub_24E15063C(__dst, &v56);
  v21 = [v20 secondaryTheme];
  if (qword_27F1DE138 != -1)
  {
    swift_once();
  }

  v22 = qword_27F1EB3E0;
  v23 = *algn_27F1EB3E8;
  if (qword_27F1DDF40 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v0, &unk_27F20B9C0);
  v13(v18, v24, v0);
  if (qword_27F1DDF58 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v0, &unk_27F20BA08);
  v13((v10 + v9[21]), v25, v0);
  *v10 = 0;
  v26 = v52;
  *(v10 + 8) = v53;
  *(v10 + 16) = v26;
  v27 = v50;
  *(v10 + 24) = v51;
  *(v10 + 32) = v27;
  v28 = v48;
  *(v10 + 40) = v49;
  *(v10 + 48) = v28;
  *(v10 + 56) = v47;
  *(v10 + 64) = v46;
  v29 = *(v1 + 32);
  v29(v10 + v9[7], v55, v0);
  v29(v10 + v9[8], v54, v0);
  v30 = v44;
  *(v10 + v9[9]) = v45;
  *(v10 + v9[10]) = v30;
  v31 = v42;
  *(v10 + v9[11]) = v43;
  v32 = v10 + v9[12];
  v33 = v41;
  *v32 = v31;
  *(v32 + 8) = v33;
  *(v32 + 16) = xmmword_24E38FC00;
  *(v32 + 32) = xmmword_24E38FC10;
  *(v32 + 48) = 1;
  v34 = v39;
  *(v10 + v9[13]) = v40;
  v35 = (v10 + v9[14]);
  *v35 = 0;
  v35[1] = 0;
  v36 = v10 + v9[15];
  *v36 = v34;
  *(v36 + 8) = 0u;
  *(v36 + 24) = 0u;
  *(v36 + 33) = 0u;
  *(v10 + v9[16]) = v19;
  memcpy((v10 + v9[17]), __dst, 0x89uLL);
  *(v10 + v9[18]) = v21;
  v37 = (v10 + v9[19]);
  *v37 = v22;
  v37[1] = v23;
  result = (v29)(v10 + v9[20], v18, v0);
  *(v10 + v9[22]) = 0x4046000000000000;
  *(v10 + v9[23]) = 0x4040000000000000;
  *(v10 + v9[24]) = 0x403B000000000000;
  *(v10 + v9[25]) = 0x4034000000000000;
  return result;
}

uint64_t sub_24E3370A0()
{
  v0 = sub_24E344158();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v43 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  v10 = type metadata accessor for PlayerCardTheme();
  __swift_allocate_value_buffer(v10, qword_27F1EB380);
  v11 = __swift_project_value_buffer(v10, qword_27F1EB380);
  if (qword_27F1DE140 != -1)
  {
    swift_once();
  }

  v65 = *algn_27F1EB3F8;
  v66 = qword_27F1EB3F0;
  v63 = qword_27F1EB408;
  v64 = qword_27F1EB400;
  v61 = qword_27F1EB418;
  v62 = qword_27F1EB410;
  v60 = byte_27F1EB420;
  sub_24DFD7E3C(qword_27F1EB3F0, *algn_27F1EB3F8, qword_27F1EB400, qword_27F1EB408, qword_27F1EB410, qword_27F1EB418, byte_27F1EB420);
  if (qword_27F1DE150 != -1)
  {
    swift_once();
  }

  v12 = qword_27F1DDFA8;
  v59 = qword_27F1EB460;
  if (v12 != -1)
  {
    swift_once();
  }

  v69 = v4;
  v13 = __swift_project_value_buffer(v0, qword_27F20BAF8);
  v14 = *(v1 + 16);
  v14(v9, v13, v0);
  if (qword_27F1DDFA0 != -1)
  {
    swift_once();
  }

  v67 = v9;
  v15 = __swift_project_value_buffer(v0, qword_27F20BAE0);
  v68 = v7;
  v14(v7, v15, v0);
  v16 = objc_opt_self();
  v58 = [v16 labelColor];
  v57 = [v16 quaternaryLabelColor];
  v56 = [v16 quaternaryLabelColor];
  v55 = [v16 whiteColor];
  v54 = sub_24E347CF8();
  v53 = v17;
  if (qword_27F1DE148 != -1)
  {
    swift_once();
  }

  v18 = qword_27F1EB438;
  v19 = qword_27F1EB440;
  v52 = qword_27F1EB428;
  v51 = qword_27F1EB430;
  v50 = qword_27F1EB448;
  v49 = qword_27F1EB450;
  v48 = byte_27F1EB458;
  sub_24DFD7E3C(qword_27F1EB428, qword_27F1EB430, qword_27F1EB438, qword_27F1EB440, qword_27F1EB448, qword_27F1EB450, byte_27F1EB458);
  v20 = [v16 whiteColor];
  v46 = [v20 colorWithAlphaComponent_];

  v71 = 1;
  v70 = 1;
  v47 = 1;
  v21 = qword_27F1DE158;
  v45 = qword_27F1EB460;
  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_27F1DE138;
  v44 = qword_27F1EB468;
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_27F1EB3E0;
  v24 = *algn_27F1EB3E8;
  v25 = v69;
  if (qword_27F1DDF48 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v0, &unk_27F20B9D8);
  v14(v25, v26, v0);
  if (qword_27F1DDF50 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v0, qword_27F20B9F0);
  v14(v11 + v10[21], v27, v0);
  *v11 = 1;
  v28 = v65;
  *(v11 + 8) = v66;
  *(v11 + 16) = v28;
  v29 = v63;
  *(v11 + 24) = v64;
  *(v11 + 32) = v29;
  v30 = v61;
  *(v11 + 40) = v62;
  *(v11 + 48) = v30;
  *(v11 + 56) = v60;
  *(v11 + 64) = v59;
  v31 = *(v1 + 32);
  v31(v11 + v10[7], v67, v0);
  v31(v11 + v10[8], v68, v0);
  v32 = v57;
  *(v11 + v10[9]) = v58;
  *(v11 + v10[10]) = v32;
  *(v11 + v10[11]) = v56;
  v33 = v11 + v10[12];
  *(v33 + 16) = 0u;
  *(v33 + 32) = 0u;
  *v33 = 0u;
  *(v33 + 48) = 3;
  v34 = v54;
  *(v11 + v10[13]) = v55;
  v35 = (v11 + v10[14]);
  v36 = v53;
  *v35 = v34;
  v35[1] = v36;
  v37 = v11 + v10[15];
  v38 = v51;
  *v37 = v52;
  *(v37 + 8) = v38;
  *(v37 + 16) = v18;
  *(v37 + 24) = v19;
  v39 = v49;
  *(v37 + 32) = v50;
  *(v37 + 40) = v39;
  *(v37 + 48) = v48;
  *(v11 + v10[16]) = v46;
  v40 = v11 + v10[17];
  *v40 = v45;
  *(v40 + 8) = 0u;
  *(v40 + 24) = 0u;
  *(v40 + 33) = 0u;
  *(v40 + 49) = v73[0];
  *(v40 + 52) = *(v73 + 3);
  *(v40 + 56) = -1;
  *(v40 + 64) = 0u;
  *(v40 + 80) = 0u;
  *(v40 + 96) = 1;
  *(v40 + 97) = *v72;
  *(v40 + 100) = *&v72[3];
  *(v40 + 120) = 0u;
  *(v40 + 104) = 0u;
  *(v40 + 136) = v47;
  *(v11 + v10[18]) = v44;
  v41 = (v11 + v10[19]);
  *v41 = v23;
  v41[1] = v24;
  result = (v31)(v11 + v10[20], v25, v0);
  *(v11 + v10[22]) = 0x4044000000000000;
  *(v11 + v10[23]) = 0x4038000000000000;
  *(v11 + v10[24]) = 0xC046800000000000;
  *(v11 + v10[25]) = 0x4032000000000000;
  return result;
}

uint64_t sub_24E3377CC()
{
  v0 = type metadata accessor for PlayerCardTheme();
  __swift_allocate_value_buffer(v0, qword_27F20BF00);
  v1 = __swift_project_value_buffer(v0, qword_27F20BF00);
  if (GKIsRemoteUI())
  {
    if (qword_27F1DE110 != -1)
    {
      swift_once();
    }

    v2 = qword_27F1EB380;
  }

  else
  {
    if (qword_27F1DE108 != -1)
    {
      swift_once();
    }

    v2 = qword_27F1EB368;
  }

  v3 = __swift_project_value_buffer(v0, v2);

  return sub_24E052A30(v3, v1);
}

id sub_24E3378AC()
{
  if (qword_27F1DDDE8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F20B810;
  qword_27F1EB398 = qword_27F20B810;
  unk_27F1EB3A0 = 0u;
  unk_27F1EB3B0 = 0u;
  *(&qword_27F1EB3B8 + 1) = 0u;

  return v1;
}

id sub_24E337924()
{
  if (qword_27F1DDDF0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F20B818;
  qword_27F1EB3D0 = qword_27F20B818;

  return v1;
}

void sub_24E337988()
{
  if (qword_27F1DDD88 != -1)
  {
    swift_once();
  }

  v0 = qword_27F1DDD90;
  v1 = qword_27F20B7B0;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_27F20B7B8;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 gk:v1 dynamicColorWithLightColor:v4 darkColor:?];

  qword_27F1EB3D8 = v5;
}

uint64_t sub_24E337A70()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 128.0;
  if (result)
  {
    v1 = 70.0;
  }

  qword_27F1EB3E0 = *&v1;
  *algn_27F1EB3E8 = v1;
  return result;
}

double sub_24E337AAC()
{
  v0 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  sub_24DF88A8C(0, &qword_27F1E9F20);
  v1 = sub_24E347F08();

  qword_27F1EB3F0 = v1;
  result = 0.0;
  *algn_27F1EB3F8 = 0u;
  unk_27F1EB408 = 0u;
  qword_27F1EB418 = 0;
  byte_27F1EB420 = 2;
  return result;
}

void sub_24E337B3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24E369990;
  v1 = [objc_opt_self() whiteColor];
  v2 = [v1 colorWithAlphaComponent_];

  v3 = [objc_opt_self() effectCompositingColor_];
  if (v3)
  {
    *(v0 + 32) = v3;
    qword_27F1EB428 = v0;
    unk_27F1EB430 = 0u;
    unk_27F1EB440 = 0u;
    qword_27F1EB450 = 0;
    byte_27F1EB458 = 2;
  }

  else
  {
    __break(1u);
  }
}

void sub_24E337C34()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_27F1EB460 = v1;
}

id sub_24E337CA0()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent_];

  v3 = [v0 whiteColor];
  v4 = [v0 secondaryLabelColor];
  v5 = [v0 whiteColor];
  v6 = [v0 whiteColor];
  v7 = [v6 colorWithAlphaComponent_];

  v8 = objc_allocWithZone(MEMORY[0x277CEC2B8]);
  result = sub_24E337E70(v2, v3, v4, v5, v7);
  qword_27F1EB468 = result;
  return result;
}

id sub_24E337DD4()
{
  v1 = *(v0 + *(type metadata accessor for PlayerCardTheme() + 72));
  if (!v1 || (v2 = [v1 subtitleTextColor]) == 0)
  {
    v2 = [objc_opt_self() secondaryLabelColor];
  }

  v3 = [v2 colorWithAlphaComponent_];

  return v3;
}

id sub_24E337E70(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v11 = [v5 initWithTitleBackgroundColor:a1 titleTextColor:a2 subtitleTextColor:a3 iconTintColor:a4 progressColor:a5];

  return v11;
}

uint64_t OUTLINED_FUNCTION_0_198()
{

  return sub_24E3435A8();
}

uint64_t OUTLINED_FUNCTION_1_165(uint64_t a1, ...)
{
  va_start(va, a1);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

JUMeasurements __swiftcall GKTextView.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  [v2 sizeThatFits_];
  v5 = 0.0;
  v6 = v4;
  result.var3 = v5;
  result.var2 = v6;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

uint64_t sub_24E337F7C()
{
  type metadata accessor for AchievementsProfileSection();
  result = swift_allocObject();
  *(result + 16) = 257;
  return result;
}

uint64_t sub_24E337FA8(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_24E347478();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_3_14();
  v95 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v80 - v5;
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v93 = v8;
  v94 = v7;
  MEMORY[0x28223BE20](v7);
  v92 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v80 - v11;
  v13 = type metadata accessor for DetailData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v14);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AchievementsByGameAction();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_14();
  v96 = v19;
  v20 = sub_24E347458();
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_3_14();
  sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v100 = v22;
  v101 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_14();
  v98 = v23;
  v99 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_14();
  v97 = v27;
  memcpy(v110, __src, sizeof(v110));
  v28 = 0;
  if (sub_24DF8BF80(v110) != 1)
  {
    v89 = v6;
    v91 = v13;
    v29 = v110[0];
    v30 = v110[1];
    v88 = v110[8];
    memcpy(v109, __dst, sizeof(v109));
    sub_24DF8BF98(v109, &v104);
    if (([v29 isLocalPlayer] & 1) != 0 || (v13 = &selRef_setRequiresValidation_, objc_msgSend(v29, sel_achievementsVisibility) != 2) && (objc_msgSend(v29, sel_achievementsVisibility) != 1 || (v30 & 0x100) != 0))
    {
      v87 = __src;
      v31 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x277D76A08] scale:-1];
      v84 = sub_24E012D68(v31, 1);

      v32 = sub_24E347CB8();
      v33 = GKGameCenterUIFrameworkBundle();
      v34 = OUTLINED_FUNCTION_24_5();

      v35 = sub_24E347CF8();
      v85 = v36;
      v86 = v35;

      v37 = sub_24E347CB8();
      v38 = GKGameCenterUIFrameworkBundle();
      v39 = OUTLINED_FUNCTION_24_5();

      sub_24E347CF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
      v40 = swift_allocObject();
      v90 = xmmword_24E367D20;
      v41 = MEMORY[0x277D83B88];
      *(v40 + 16) = xmmword_24E367D20;
      v42 = MEMORY[0x277D83C10];
      *(v40 + 56) = v41;
      *(v40 + 64) = v42;
      *(v40 + 32) = v88;
      v43 = sub_24E347CC8();
      v82 = v44;
      v83 = v43;

      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
      inited = swift_initStackObject();
      *(inited + 16) = v90;
      v46 = MEMORY[0x277D837D0];
      *(inited + 32) = 0x79546E6F69746361;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 72) = v46;
      *(inited + 48) = 0x657461676976616ELL;
      *(inited + 56) = 0xE800000000000000;
      v47 = sub_24E347C28();
      if (qword_27F1DD808 != -1)
      {
        swift_once();
      }

      v48 = sub_24E347058();
      v49 = __swift_project_value_buffer(v48, qword_27F20AE00);
      v50 = v97;
      MEMORY[0x25303DB90](0x6D65766569686361, 0xEB00000000746E65, 0x74656C63696863, 0xE700000000000000, v47, v49);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
      v51 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = v90;
      *&v90 = v25;
      (*(v25 + 16))(v52 + v51, v50, v99);
      sub_24E347448();
      v53 = v98;
      sub_24E3471D8();
      v54 = [v29 playerID];
      v55 = sub_24E347CF8();
      v57 = v56;

      v58 = v96;
      (*(v100 + 16))(v96 + *(v17 + 24), v53, v101);
      *v58 = v55;
      v58[1] = v57;
      v58[2] = v29;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v108 = -1;
      v103[3] = v17;
      v103[4] = sub_24E338B90(&qword_27F1E29D8, type metadata accessor for AchievementsByGameAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v103);
      sub_24E338BD8(v58, boxed_opaque_existential_1, type metadata accessor for AchievementsByGameAction);
      v60 = v84;
      v81 = v84;
      v61 = v29;
      sub_24E343398();
      v62 = v93;
      v63 = v94;
      (*(v93 + 16))(v92, v12, v94);
      sub_24E338B90(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
      sub_24E348918();
      (*(v62 + 8))(v12, v63);
      *(v16 + 27) = 0;
      *(v16 + 200) = 0u;
      *(v16 + 184) = 0u;
      v64 = v91;
      v65 = *(v91 + 14);
      v66 = sub_24E3474B8();
      __swift_storeEnumTagSinglePayload(&v16[v65], 1, 1, v66);
      v67 = &v16[*(v64 + 15)];
      sub_24DF8BD34(v102, v16);
      v16[40] = 1;
      v69 = v85;
      v68 = v86;
      *(v16 + 6) = v86;
      *(v16 + 7) = v69;
      v70 = v82;
      *(v16 + 8) = v83;
      *(v16 + 9) = v70;
      *(v16 + 10) = v60;
      sub_24DF8C8EC(&v104, (v16 + 88));
      *(v16 + 20) = 0;
      *(v16 + 21) = 0;
      *(v16 + 88) = 256;
      *v67 = 0;
      v67[8] = 0;

      sub_24DF8BDF0(v103, (v16 + 184));
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_24E369E30;
      strcpy((v71 + 32), "impressionType");
      *(v71 + 47) = -18;
      *(v71 + 48) = 0x74656C63696863;
      *(v71 + 56) = 0xE700000000000000;
      v72 = MEMORY[0x277D837D0];
      *(v71 + 72) = MEMORY[0x277D837D0];
      *(v71 + 80) = 0x6973736572706D69;
      *(v71 + 88) = 0xEF7865646E496E6FLL;
      *(v71 + 96) = 0;
      *(v71 + 120) = MEMORY[0x277D83B88];
      *(v71 + 128) = 0x657079546469;
      *(v71 + 136) = 0xE600000000000000;
      *(v71 + 144) = 0x636974617473;
      *(v71 + 152) = 0xE600000000000000;
      *(v71 + 168) = v72;
      *(v71 + 176) = 1701667182;
      *(v71 + 216) = v72;
      *(v71 + 184) = 0xE400000000000000;
      *(v71 + 192) = v68;
      *(v71 + 200) = v69;

      sub_24E347C28();
      sub_24E347468();
      sub_24E347448();
      v73 = MEMORY[0x277D84F90];
      sub_24E0241AC(MEMORY[0x277D84F90]);
      sub_24E0241AC(v73);
      v74 = v89;
      sub_24E347488();
      sub_24DF8BE60(v102);
      sub_24DF8BFF4(&v104, &qword_27F1DEE88);
      sub_24DF8BFF4(v103, &qword_27F1DEE90);
      __swift_storeEnumTagSinglePayload(v74, 0, 1, v66);
      sub_24DF8BEB4(v74, &v16[v65]);
      sub_24E076EE4();
      v28 = v75;
      v76 = *(v75 + 16);
      if (v76 >= *(v75 + 24) >> 1)
      {
        sub_24E076EE4();
        v28 = v79;
      }

      sub_24DF8BFF4(v87, &qword_27F1DEEA0);

      sub_24E338C38(v96, type metadata accessor for AchievementsByGameAction);
      (*(v100 + 8))(v98, v101);
      (*(v90 + 8))(v97, v99);
      *(&v105 + 1) = v91;
      *&v106 = sub_24E338B90(&qword_27F1DEE80, type metadata accessor for DetailData);
      v77 = __swift_allocate_boxed_opaque_existential_1(&v104);
      sub_24E338BD8(v16, v77, type metadata accessor for DetailData);
      *(v28 + 16) = v76 + 1;
      sub_24DE56CE8(&v104, v28 + 40 * v76 + 32);
      sub_24E338C38(v16, type metadata accessor for DetailData);
    }

    else
    {
      sub_24DF8BFF4(__src, &qword_27F1DEEA0);
      return 0;
    }
  }

  return v28;
}

uint64_t sub_24E338B90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E338BD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24E338C38(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E338C90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 360))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E338CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E338D84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 560))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E338DC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 552) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 560) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 560) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E338EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v8 = v6;
  v147 = a1;
  v123 = a2;
  v13 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v146 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v16);
  v153 = sub_24E344648();
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v20);
  v151 = sub_24E344658();
  OUTLINED_FUNCTION_0_14();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v24);
  v154 = sub_24E3445E8();
  OUTLINED_FUNCTION_0_14();
  v156 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v27);
  v149 = sub_24E344688();
  OUTLINED_FUNCTION_0_14();
  v148 = v28;
  MEMORY[0x28223BE20](v29);
  v119 = v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_11(v118 - v32);
  v121 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v120 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_14();
  v155 = v35;
  sub_24E344668();
  sub_24DF8968C((v6 + 45), &v163);
  v36 = MEMORY[0x277D227E8];
  v122 = v13;
  if (*(&v164 + 1))
  {
    sub_24DF88BF0(&v163, v166);
    if ((OUTLINED_FUNCTION_8_91() & 1) == 0)
    {
      v165 = 0;
      v163 = 0u;
      v164 = 0u;
      OUTLINED_FUNCTION_10_73();
      v37 = OUTLINED_FUNCTION_7_88();
      v38 = v154;
      v39(v37);
      v40 = v150;
      OUTLINED_FUNCTION_14_51();
      v41();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
      v42 = OUTLINED_FUNCTION_26_25();
      *(v42 + 16) = xmmword_24E367D20;
      sub_24E344618();
      *&v160 = v42;
      sub_24DF8A8A4();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
      sub_24DF8A8FC();
      v44 = v152;
      OUTLINED_FUNCTION_5_121();
      sub_24E3487E8();
      OUTLINED_FUNCTION_22_35();
      sub_24E344678();
      (*(v18 + 8))(v44, v43);
      v36 = MEMORY[0x277D227E8];
      (*(v22 + 8))(v40, v22);
      OUTLINED_FUNCTION_10_73();
      (*(v45 + 8))(v7, v38);
      sub_24DF8C95C(&v163, &qword_27F1DEE48);
      OUTLINED_FUNCTION_18_47();
      v46 = OUTLINED_FUNCTION_13_62();
      v47(v46);
    }

    __swift_destroy_boxed_opaque_existential_1(v166);
  }

  else
  {
    sub_24DF8C95C(&v163, &qword_27F1DEE30);
  }

  sub_24DF8968C((v8 + 50), &v163);
  if (*(&v164 + 1))
  {
    sub_24DF88BF0(&v163, v166);
    if ((OUTLINED_FUNCTION_8_91() & 1) == 0)
    {
      *(&v164 + 1) = MEMORY[0x277D839F8];
      v165 = MEMORY[0x277D22A30];
      *&v163 = 0;
      sub_24DF89628((v8 + 5), &v160);
      OUTLINED_FUNCTION_10_73();
      v48 = OUTLINED_FUNCTION_7_88();
      v49 = v154;
      v50(v48);
      v51 = v18;
      v52 = v150;
      OUTLINED_FUNCTION_14_51();
      v53();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
      v54 = OUTLINED_FUNCTION_26_25();
      *(v54 + 16) = xmmword_24E367D20;
      sub_24E344618();
      v157 = v54;
      sub_24DF8A8A4();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
      sub_24DF8A8FC();
      v56 = v152;
      OUTLINED_FUNCTION_5_121();
      sub_24E3487E8();
      OUTLINED_FUNCTION_22_35();
      sub_24E344678();
      (*(v51 + 8))(v56, v55);
      v57 = v52;
      v18 = v51;
      v36 = MEMORY[0x277D227E8];
      (*(v22 + 8))(v57, v22);
      OUTLINED_FUNCTION_10_73();
      (*(v58 + 8))(v7, v49);
      sub_24DF8C95C(&v160, &qword_27F1DEE48);
      __swift_destroy_boxed_opaque_existential_1(&v163);
      OUTLINED_FUNCTION_18_47();
      v59 = OUTLINED_FUNCTION_13_62();
      v60(v59);
    }

    __swift_destroy_boxed_opaque_existential_1(v166);
  }

  else
  {
    sub_24DF8C95C(&v163, &qword_27F1DEE30);
  }

  sub_24DF8968C((v8 + 45), v166);
  if (v167)
  {
    v61 = OUTLINED_FUNCTION_8_91();
    __swift_destroy_boxed_opaque_existential_1(v166);
    if ((v61 & 1) == 0)
    {
      v62 = 10;
      goto LABEL_16;
    }
  }

  else
  {
    sub_24DF8C95C(v166, &qword_27F1DEE30);
  }

  v62 = 15;
LABEL_16:
  sub_24DF89628(&v8[v62], v166);
  v63 = v8[58];
  v64 = v8[59];
  __swift_project_boxed_opaque_existential_1(v8 + 55, v63);
  *(&v164 + 1) = v63;
  v165 = *(v64 + 8);
  __swift_allocate_boxed_opaque_existential_1(&v163);
  OUTLINED_FUNCTION_6_45();
  (*(v65 + 16))();
  v162 = 0;
  v161 = 0u;
  v160 = 0u;
  v66 = v156;
  v67 = OUTLINED_FUNCTION_7_88();
  v118[1] = v68;
  v141 = v69;
  v140 = v70;
  v70(v67);
  v71 = v150;
  v139 = *v36;
  OUTLINED_FUNCTION_14_51();
  v138 = v72;
  v137 = v73;
  v73();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
  v75 = v8;
  v76 = *(v18 + 72);
  v77 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v133 = *(v18 + 80);
  v135 = v74;
  v132 = v77 + 3 * v76;
  v78 = swift_allocObject();
  v130 = xmmword_24E369B70;
  *(v78 + 16) = xmmword_24E369B70;
  v134 = v77;
  v79 = v78 + v77;
  sub_24E344628();
  sub_24E344618();
  v129 = 2 * v76;
  v136 = v76;
  sub_24E344638();
  v157 = v78;
  v80 = sub_24DF8A8A4();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
  sub_24DF8A8FC();
  OUTLINED_FUNCTION_22_35();
  v128 = v81;
  v127 = v82;
  OUTLINED_FUNCTION_5_121();
  v131 = v80;
  sub_24E3487E8();
  v142 = v75;
  OUTLINED_FUNCTION_16_51();
  sub_24E344678();
  v83 = *(v18 + 8);
  v144 = v18 + 8;
  v126 = v83;
  v83(v79, v81);
  v84 = *(v22 + 8);
  v143 = v22 + 8;
  v125 = v84;
  v84(v71, v22);
  v85 = *(v66 + 8);
  v156 = v66 + 8;
  v124 = v85;
  (v85)(v7, v154);
  sub_24DF8C95C(&v160, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(&v163);
  OUTLINED_FUNCTION_18_47();
  v86 = v80;
  v87 = v142;
  v88 = v149;
  v148 = *(v148 + 8);
  (v148)(v86, v149);
  v89 = v87[63];
  v90 = v87[64];
  __swift_project_boxed_opaque_existential_1(v87 + 60, v89);
  *(&v164 + 1) = v89;
  v165 = *(v90 + 8);
  __swift_allocate_boxed_opaque_existential_1(&v163);
  OUTLINED_FUNCTION_6_45();
  (*(v91 + 16))();
  sub_24DF89628((v87 + 20), &v160);
  sub_24DF8968C((v87 + 65), &v157);
  v92 = v158;
  sub_24DF8C95C(&v157, &qword_27F1DEE30);
  if (v92)
  {
    v158 = sub_24E3442F8();
    v159 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(&v157);
    sub_24E3442E8();
  }

  else
  {
    sub_24DF89628((v87 + 35), &v157);
  }

  OUTLINED_FUNCTION_25_29();
  v93();
  OUTLINED_FUNCTION_11_60();
  OUTLINED_FUNCTION_24_24();
  v94();
  v95 = OUTLINED_FUNCTION_12_60();
  OUTLINED_FUNCTION_9_75(v95);
  OUTLINED_FUNCTION_20_35();
  sub_24E344618();
  OUTLINED_FUNCTION_20_35();
  sub_24E344638();
  OUTLINED_FUNCTION_23_33();
  OUTLINED_FUNCTION_22_35();
  OUTLINED_FUNCTION_5_121();
  sub_24E3487E8();
  v96 = v119;
  sub_24E344678();
  OUTLINED_FUNCTION_17_45();
  v97();
  OUTLINED_FUNCTION_21_35();
  v98();
  OUTLINED_FUNCTION_10_73();
  v124();
  __swift_destroy_boxed_opaque_existential_1(&v160);
  sub_24DF8C95C(&v157, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(&v163);
  OUTLINED_FUNCTION_18_47();
  (v148)(v96, v88);
  sub_24DF8968C((v87 + 65), &v160);
  if (!*(&v161 + 1))
  {
    sub_24DF8C95C(&v160, &qword_27F1DEE30);
    goto LABEL_23;
  }

  sub_24DF88BF0(&v160, &v163);
  __swift_project_boxed_opaque_existential_1(&v163, *(&v164 + 1));
  if (sub_24E344098())
  {
    __swift_destroy_boxed_opaque_existential_1(&v163);
LABEL_23:
    v99 = v122;
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(&v163, *(&v164 + 1));
  sub_24E3440E8();
  v100 = v87[33];
  v101 = v87[34];
  __swift_project_boxed_opaque_existential_1(v87 + 30, v100);
  v102 = v145;
  sub_24E2548A0(v100, v101);
  sub_24E344198();
  v99 = v122;
  (*(v146 + 8))(v102, v122);
  v168.origin.x = a3;
  v168.origin.y = a4;
  v168.size.width = a5;
  v168.size.height = a6;
  CGRectGetWidth(v168);
  __swift_project_boxed_opaque_existential_1(&v163, *(&v164 + 1));
  sub_24E3440B8();
  sub_24DF89628((v87 + 35), &v157);
  OUTLINED_FUNCTION_25_29();
  v103();
  OUTLINED_FUNCTION_11_60();
  OUTLINED_FUNCTION_24_24();
  v104();
  v105 = OUTLINED_FUNCTION_12_60();
  OUTLINED_FUNCTION_9_75(v105);
  OUTLINED_FUNCTION_20_35();
  sub_24E344618();
  OUTLINED_FUNCTION_20_35();
  sub_24E344638();
  OUTLINED_FUNCTION_23_33();
  OUTLINED_FUNCTION_5_121();
  sub_24E3487E8();
  OUTLINED_FUNCTION_16_51();
  sub_24E344678();
  OUTLINED_FUNCTION_17_45();
  v106();
  OUTLINED_FUNCTION_21_35();
  v107();
  OUTLINED_FUNCTION_10_73();
  v124();
  sub_24DF8C95C(&v157, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(&v160);
  OUTLINED_FUNCTION_18_47();
  v108 = v87;
  v87 = v142;
  (v148)(v108, v149);
  __swift_destroy_boxed_opaque_existential_1(&v163);
LABEL_25:
  if (qword_27F1DDC28 != -1)
  {
    swift_once();
  }

  v109 = sub_24E3444F8();
  __swift_project_value_buffer(v109, qword_27F20B488);
  sub_24E3444E8();
  v110 = v87[43];
  v111 = v87[44];
  __swift_project_boxed_opaque_existential_1(v87 + 40, v110);
  v112 = v145;
  sub_24E2548A0(v110, v111);
  sub_24E344198();
  v113 = *(v146 + 8);
  v113(v112, v99);
  sub_24E3444E8();
  v114 = v87[43];
  v115 = v87[44];
  __swift_project_boxed_opaque_existential_1(v87 + 40, v114);
  sub_24E2548A0(v114, v115);
  sub_24E344198();
  v113(v112, v99);
  sub_24E3484F8();
  v116 = v155;
  sub_24E344608();
  __swift_destroy_boxed_opaque_existential_1(v166);
  return (*(v120 + 8))(v116, v121);
}

double sub_24E339FE0(uint64_t a1)
{
  swift_getObjectType();

  return sub_24E33A038(a1, v1);
}

double sub_24E33A038(uint64_t a1, void *a2)
{
  v34[1] = a1;
  v3 = sub_24E344478();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24E3444A8();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D22788], v3, v13);
  sub_24E344488();
  sub_24DF89628(a2, &v38);
  v16 = sub_24E344838();
  v17 = MEMORY[0x277D228E0];
  v42 = v16;
  v43 = MEMORY[0x277D228E0];
  __swift_allocate_boxed_opaque_existential_1(v41);
  sub_24E344848();
  sub_24E344498();
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_24DF8968C((a2 + 45), &v38);
  if (v39)
  {
    sub_24DF88BF0(&v38, v41);
    OUTLINED_FUNCTION_3_126();
    if ((sub_24E344098() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_108();
      OUTLINED_FUNCTION_6_45();
      OUTLINED_FUNCTION_16_47();
      v18();
      OUTLINED_FUNCTION_20_33();
      __swift_destroy_boxed_opaque_existential_1(&v38);
    }

    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_24DF8C95C(&v38, &qword_27F1DEE30);
  }

  sub_24DF8968C((a2 + 50), &v38);
  if (v39)
  {
    sub_24DF88BF0(&v38, v41);
    OUTLINED_FUNCTION_3_126();
    if ((sub_24E344098() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_108();
      OUTLINED_FUNCTION_6_45();
      OUTLINED_FUNCTION_16_47();
      v19();
      OUTLINED_FUNCTION_20_33();
      __swift_destroy_boxed_opaque_existential_1(&v38);
    }

    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_24DF8C95C(&v38, &qword_27F1DEE30);
  }

  __swift_project_boxed_opaque_existential_1(a2 + 55, a2[58]);
  v20 = sub_24E344058();
  v21 = MEMORY[0x277D226F0];
  if (v20)
  {
    sub_24DF8968C((a2 + 45), v41);
    if (v42)
    {
      OUTLINED_FUNCTION_3_126();
      v22 = sub_24E344098();
      __swift_destroy_boxed_opaque_existential_1(v41);
      if ((v22 & 1) == 0)
      {
        v23 = 10;
LABEL_17:
        sub_24DF89628(&a2[v23], v41);
        v24 = a2[58];
        v25 = a2[59];
        __swift_project_boxed_opaque_existential_1(a2 + 55, v24);
        v37[3] = v24;
        v37[4] = *(*(v25 + 8) + 8);
        __swift_allocate_boxed_opaque_existential_1(v37);
        OUTLINED_FUNCTION_6_45();
        OUTLINED_FUNCTION_16_47();
        v26();
        sub_24DF89628(v41, v36);
        v35[3] = sub_24E3442F8();
        v35[4] = v21;
        __swift_allocate_boxed_opaque_existential_1(v35);
        sub_24E3442E8();
        v39 = sub_24E344888();
        v40 = MEMORY[0x277D22900];
        __swift_allocate_boxed_opaque_existential_1(&v38);
        sub_24E344878();
        OUTLINED_FUNCTION_20_33();
        __swift_destroy_boxed_opaque_existential_1(v41);
        __swift_destroy_boxed_opaque_existential_1(&v38);
        goto LABEL_18;
      }
    }

    else
    {
      sub_24DF8C95C(v41, &qword_27F1DEE30);
    }

    v23 = 15;
    goto LABEL_17;
  }

LABEL_18:
  __swift_project_boxed_opaque_existential_1(a2 + 60, a2[63]);
  if (sub_24E344058())
  {
    v27 = a2[63];
    v28 = a2[64];
    __swift_project_boxed_opaque_existential_1(a2 + 60, v27);
    v39 = v27;
    v40 = *(*(v28 + 8) + 8);
    __swift_allocate_boxed_opaque_existential_1(&v38);
    OUTLINED_FUNCTION_6_45();
    OUTLINED_FUNCTION_16_47();
    v29();
    sub_24DF89628((a2 + 20), v37);
    v36[3] = sub_24E3442F8();
    v36[4] = v21;
    __swift_allocate_boxed_opaque_existential_1(v36);
    sub_24E3442E8();
    v42 = sub_24E344888();
    v43 = MEMORY[0x277D22900];
    __swift_allocate_boxed_opaque_existential_1(v41);
    sub_24E344878();
    sub_24E344498();
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  sub_24DF8968C((a2 + 65), &v38);
  if (v39)
  {
    sub_24DF88BF0(&v38, v41);
    OUTLINED_FUNCTION_3_126();
    if ((sub_24E344098() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_126();
      if (sub_24E344058())
      {
        sub_24DF89628((a2 + 25), v37);
        v39 = v16;
        v40 = v17;
        __swift_allocate_boxed_opaque_existential_1(&v38);
        sub_24E344848();
        OUTLINED_FUNCTION_20_33();
        __swift_destroy_boxed_opaque_existential_1(&v38);
        OUTLINED_FUNCTION_4_108();
        OUTLINED_FUNCTION_6_45();
        OUTLINED_FUNCTION_16_47();
        v30();
        OUTLINED_FUNCTION_20_33();
        __swift_destroy_boxed_opaque_existential_1(&v38);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_24DF8C95C(&v38, &qword_27F1DEE30);
  }

  sub_24DF89628((a2 + 35), &v38);
  v42 = v16;
  v43 = v17;
  __swift_allocate_boxed_opaque_existential_1(v41);
  sub_24E344848();
  sub_24E344498();
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_24E344468();
  v32 = v31;
  (*(v11 + 8))(v15, v9);
  return v32;
}

uint64_t OUTLINED_FUNCTION_8_91()
{
  __swift_project_boxed_opaque_existential_1((v1 - 192), v0);

  return sub_24E344098();
}

uint64_t OUTLINED_FUNCTION_9_75(uint64_t a1)
{
  *(a1 + 16) = *(v1 - 576);

  return sub_24E344628();
}

uint64_t OUTLINED_FUNCTION_12_60()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_18_47()
{

  return sub_24E344698();
}

uint64_t OUTLINED_FUNCTION_26_25()
{

  return swift_allocObject();
}

uint64_t ActivityFeedLockupViewModel.init(avatarImages:avatarActionURL:body:bodyActionURL:accessibilityLabel:supplementaryViewImage:supplementaryViewActionURL:supplementaryViewArtworkStyle:adamID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12, uint64_t a13)
{
  v21 = *(a8 + 32);
  v30 = *a11;
  sub_24E343398();
  v22 = type metadata accessor for ActivityFeedLockupViewModel();
  *(a9 + v22[5]) = a1;
  sub_24E211FFC(a2, a9 + v22[6]);
  v23 = (a9 + v22[7]);
  *v23 = a3;
  v23[1] = a4;
  sub_24E211FFC(a5, a9 + v22[8]);
  v24 = (a9 + v22[9]);
  *v24 = a6;
  v24[1] = a7;
  v25 = a9 + v22[10];
  v26 = *(a8 + 16);
  *v25 = *a8;
  *(v25 + 16) = v26;
  *(v25 + 32) = v21;
  result = sub_24E211FFC(a10, a9 + v22[11]);
  *(a9 + v22[12]) = v30;
  v28 = (a9 + v22[13]);
  *v28 = a12;
  v28[1] = a13;
  *(a9 + v22[14]) = 0;
  return result;
}

uint64_t type metadata accessor for ActivityFeedLockupViewModel()
{
  result = qword_280BDFFF8;
  if (!qword_280BDFFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityFeedLockupViewModel.hash(into:)()
{
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_199();
  sub_24E33B1CC(v0, v1);

  return sub_24E347C58();
}

uint64_t ActivityFeedLockupViewModel.id.getter()
{
  OUTLINED_FUNCTION_12_28();
  sub_24E3433A8();
  v0 = OUTLINED_FUNCTION_19_1();

  return v1(v0);
}

uint64_t ActivityFeedLockupViewModel.avatarImages.getter()
{
  type metadata accessor for ActivityFeedLockupViewModel();
}

uint64_t ActivityFeedLockupViewModel.avatarActionURL.getter()
{
  OUTLINED_FUNCTION_12_28();
  v2 = v1 + *(type metadata accessor for ActivityFeedLockupViewModel() + 24);

  return sub_24DFC1E40(v2, v0);
}

uint64_t ActivityFeedLockupViewModel.body.getter()
{
  type metadata accessor for ActivityFeedLockupViewModel();
  OUTLINED_FUNCTION_2_139();
  return OUTLINED_FUNCTION_19_1();
}

uint64_t ActivityFeedLockupViewModel.bodyActionURL.getter()
{
  OUTLINED_FUNCTION_12_28();
  v2 = v1 + *(type metadata accessor for ActivityFeedLockupViewModel() + 32);

  return sub_24DFC1E40(v2, v0);
}

uint64_t ActivityFeedLockupViewModel.accessibilityLabel.getter()
{
  type metadata accessor for ActivityFeedLockupViewModel();
  OUTLINED_FUNCTION_2_139();
  return OUTLINED_FUNCTION_19_1();
}

id ActivityFeedLockupViewModel.supplementaryViewImage.getter()
{
  OUTLINED_FUNCTION_12_28();
  v2 = v1 + *(type metadata accessor for ActivityFeedLockupViewModel() + 40);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *v0 = *v2;
  *(v0 + 8) = v4;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  v7 = *(v2 + 32);
  *(v0 + 32) = v7;

  return sub_24E274F0C(v3, v4, v5, v6, v7);
}

uint64_t ActivityFeedLockupViewModel.supplementaryViewActionURL.getter()
{
  OUTLINED_FUNCTION_12_28();
  v2 = v1 + *(type metadata accessor for ActivityFeedLockupViewModel() + 44);

  return sub_24DFC1E40(v2, v0);
}

uint64_t ActivityFeedLockupViewModel.supplementaryViewArtworkStyle.getter()
{
  OUTLINED_FUNCTION_12_28();
  result = type metadata accessor for ActivityFeedLockupViewModel();
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t ActivityFeedLockupViewModel.adamID.getter()
{
  type metadata accessor for ActivityFeedLockupViewModel();
  OUTLINED_FUNCTION_2_139();
  return OUTLINED_FUNCTION_19_1();
}

uint64_t ActivityFeedLockupViewModel.init(avatarImages:avatarActionURL:body:bodyActionURL:supplementaryViewImage:supplementaryViewActionURL:supplementaryViewArtworkStyle:adamID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = *(a6 + 32);
  v19 = *a8;
  sub_24E343398();
  v20 = type metadata accessor for ActivityFeedLockupViewModel();
  *(a9 + v20[5]) = a1;
  sub_24E211FFC(a2, a9 + v20[6]);
  v21 = (a9 + v20[7]);
  *v21 = a3;
  v21[1] = a4;
  sub_24E211FFC(a5, a9 + v20[8]);
  v22 = (a9 + v20[9]);
  *v22 = a3;
  v22[1] = a4;
  v23 = a9 + v20[10];
  v24 = *(a6 + 16);
  *v23 = *a6;
  *(v23 + 16) = v24;
  *(v23 + 32) = v18;
  sub_24E211FFC(a7, a9 + v20[11]);
  *(a9 + v20[12]) = v19;
  v25 = (a9 + v20[13]);
  *v25 = a10;
  v25[1] = a11;
  *(a9 + v20[14]) = 0;
}

uint64_t ActivityFeedLockupViewModel.init(avatarImages:avatarActionURL:body:bodyActionURL:supplementaryViewImage:supplementaryViewActionURL:adamID:isArcade:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v19 = *(a6 + 32);
  sub_24E343398();
  v20 = type metadata accessor for ActivityFeedLockupViewModel();
  *(a9 + v20[5]) = a1;
  sub_24E211FFC(a2, a9 + v20[6]);
  v21 = (a9 + v20[7]);
  *v21 = a3;
  v21[1] = a4;
  sub_24E211FFC(a5, a9 + v20[8]);
  v22 = (a9 + v20[9]);
  *v22 = a3;
  v22[1] = a4;
  v23 = a9 + v20[10];
  v24 = *(a6 + 16);
  *v23 = *a6;
  *(v23 + 16) = v24;
  *(v23 + 32) = v19;
  sub_24E211FFC(a7, a9 + v20[11]);
  *(a9 + v20[12]) = 1;
  v25 = (a9 + v20[13]);
  *v25 = a8;
  v25[1] = a10;
  *(a9 + v20[14]) = a11;
}

uint64_t ActivityFeedLockupViewModel.init(avatarImages:avatarActionURL:body:bodyActionURL:supplementaryViewImage:supplementaryViewActionURL:isArcade:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v17 = *(a6 + 32);
  sub_24E343398();
  v18 = type metadata accessor for ActivityFeedLockupViewModel();
  *(a9 + v18[5]) = a1;
  sub_24E211FFC(a2, a9 + v18[6]);
  v19 = (a9 + v18[7]);
  *v19 = a3;
  v19[1] = a4;
  sub_24E211FFC(a5, a9 + v18[8]);
  v20 = (a9 + v18[9]);
  *v20 = a3;
  v20[1] = a4;
  v21 = a9 + v18[10];
  v22 = *(a6 + 16);
  *v21 = *a6;
  *(v21 + 16) = v22;
  *(v21 + 32) = v17;
  sub_24E211FFC(a7, a9 + v18[11]);
  *(a9 + v18[12]) = 1;
  v23 = (a9 + v18[13]);
  *v23 = 0;
  v23[1] = 0;
  *(a9 + v18[14]) = a8;
}

uint64_t ActivityFeedLockupViewModel.hashValue.getter()
{
  sub_24E348D18();
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_199();
  sub_24E33B1CC(v0, v1);
  sub_24E347C58();
  return sub_24E348D68();
}

uint64_t sub_24E33B100()
{
  sub_24E348D18();
  sub_24E3433A8();
  sub_24E33B1CC(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E347C58();
  return sub_24E348D68();
}

uint64_t sub_24E33B1CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E33B240()
{
  v0 = sub_24E3433A8();
  if (v1 <= 0x3F)
  {
    sub_24E33B444(319, &qword_280BDFB88, &type metadata for ImageProvider, MEMORY[0x277D83940]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_24E33B3EC();
      v0 = v4;
      if (v5 <= 0x3F)
      {
        sub_24E33B444(319, qword_280BDFE90, &type metadata for ImageProvider, MEMORY[0x277D83D88]);
        if (v7 > 0x3F)
        {
          return v6;
        }

        else
        {
          sub_24E33B444(319, &qword_280BDFBB0, &type metadata for Artwork.Style, MEMORY[0x277D83D88]);
          v0 = v8;
          if (v9 <= 0x3F)
          {
            sub_24E33B444(319, &qword_280BE0128, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
            v0 = v10;
            if (v11 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_24E33B3EC()
{
  if (!qword_280BE0078)
  {
    sub_24E343288();
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_280BE0078);
    }
  }
}

void sub_24E33B444(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_139()
{
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_27F20A890 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_27F20A884 > a2)
  {
    return 1;
  }

  if (dword_27F20A884 < a2)
  {
    return 0;
  }

  return dword_27F20A888 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_27F20A898 == -1)
  {
    if (qword_27F20A8A0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27F20A8A0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27F20A890 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27F20A884 > a3)
      {
        return 1;
      }

      if (dword_27F20A884 >= a3)
      {
        return dword_27F20A888 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27F20A8A0;
  if (qword_27F20A8A0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27F20A8A0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x253040380](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27F20A884, &dword_27F20A888);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

void __getRUILoaderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getRUILoaderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GKRemoteUIController.m" lineNumber:53 description:{@"Unable to find class %s", "RUILoader"}];

  __break(1u);
}

void __getRUILoaderClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *RemoteUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GKRemoteUIController.m" lineNumber:52 description:{@"%s", *a1}];

  __break(1u);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x282114780](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x282114928](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x2821F9A68](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}