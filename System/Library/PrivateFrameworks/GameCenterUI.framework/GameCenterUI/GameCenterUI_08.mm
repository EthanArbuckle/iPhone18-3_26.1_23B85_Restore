uint64_t sub_24E02C84C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SettingsView() - 8;
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  sub_24E032D2C();
  v4 = swift_allocObject();
  sub_24E032CD4();
  sub_24E032D2C();
  v5 = swift_allocObject();
  sub_24E032CD4();
  type metadata accessor for GameCenterSettings();
  sub_24E032EB0(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
  v6 = sub_24E345848();
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = type metadata accessor for SignedOutView();
  *(a1 + v10[8]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148);
  swift_storeEnumTagMultiPayload();
  *a1 = v6;
  *(a1 + 8) = v8;
  sub_24E346B78();
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  sub_24E346B78();
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  result = sub_24E346B78();
  *(a1 + 48) = v14;
  *(a1 + 56) = v15;
  v12 = (a1 + v10[9]);
  *v12 = sub_24E032EF8;
  v12[1] = v4;
  v13 = (a1 + v10[10]);
  *v13 = sub_24E033094;
  v13[1] = v5;
  return result;
}

uint64_t sub_24E02CB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = *(a1 + 96);
  LOBYTE(a1) = *(a1 + 104);

  if ((a1 & 1) == 0)
  {
    sub_24E348268();
    v13 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();
    j__swift_release();
    result = (*(v6 + 8))(v10, v4);
    v11 = v14;
  }

  if (v11)
  {
    sub_24E0B1C24(a2);
  }

  return result;
}

uint64_t sub_24E02CC6C(uint64_t a1, void *a2)
{
  if (*a2)
  {

    v2 = sub_24DFECF6C();
    sub_24E245A0C();

    sub_24DFECE04();
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    sub_24E032EB0(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

uint64_t sub_24E02CD34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v87 = type metadata accessor for ResetAnalyticsIdentifierSection();
  MEMORY[0x28223BE20](v87);
  v65 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E12A0);
  MEMORY[0x28223BE20](v4 - 8);
  v90 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v88 = &v65 - v7;
  v93 = type metadata accessor for ProfilePrivacySection();
  MEMORY[0x28223BE20](v93);
  v89 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = (&v65 - v10);
  v11 = type metadata accessor for ProfileSection();
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v92 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v65 - v15);
  *v16 = swift_getKeyPath();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E01B8);
  swift_storeEnumTagMultiPayload();
  v17 = (v16 + v12[7]);
  type metadata accessor for GameCenterSettings();
  sub_24E032EB0(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
  *v17 = sub_24E345848();
  v17[1] = v18;
  v19 = v16 + v12[8];
  type metadata accessor for GameCenterSettingsState();
  sub_24E032EB0(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState);
  *v19 = sub_24E345298();
  v19[8] = v20 & 1;
  v21 = v16 + v12[9];
  type metadata accessor for GameCenterContainerViewModel(0);
  sub_24E032EB0(&qword_27F1E1270, type metadata accessor for GameCenterContainerViewModel);
  *v21 = sub_24E345288();
  v21[8] = v22 & 1;
  v23 = a1[3];
  v115 = a1[2];
  v116 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1278);
  sub_24E346B88();
  v24 = v113[0];
  v25 = a1[5];
  v115 = a1[4];
  v116 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1280);
  sub_24E346B88();
  v86 = v113[0];
  v26 = a1[7];
  v115 = a1[6];
  v116 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1288);
  sub_24E346B88();
  v85 = v113[0];
  v84 = sub_24E345298();
  v83 = v27;
  v28 = sub_24E345848();
  v81 = v29;
  v82 = v28;
  v118 = &type metadata for GameCenterUIFeatureFlags;
  v119 = sub_24E032C80();
  LOBYTE(v12) = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(&v115);
  v80 = (v12 & 1) == 0 || (v118 = &type metadata for GKFeatureFlags, v119 = sub_24DFA0CB4(), LOBYTE(v115) = 17, v30 = sub_24E3435A8(), __swift_destroy_boxed_opaque_existential_1(&v115), (v30 & 1) == 0) || sub_24DFF1F8C();
  v31 = sub_24E345848();
  v78 = v32;
  v79 = v31;
  LOBYTE(v113[0]) = 0;
  sub_24E346B78();
  v77 = v115;
  v76 = v116;
  v33 = sub_24E345298();
  v35 = v34;
  v36 = [objc_opt_self() local];
  v37 = [v36 internal];

  LODWORD(v36) = [v37 contactsIntegrationConsent];
  LOBYTE(v113[0]) = v36 == 1;
  BYTE1(v113[0]) = v36 == 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E12B0);
  sub_24E346B78();
  v75 = v116;
  LOBYTE(v113[0]) = BYTE1(v115);
  sub_24E343AA8();
  v38 = sub_24E343958();
  v73 = v39;
  v74 = v38;
  v71 = LOBYTE(v113[0]);
  v72 = v115;
  v40 = sub_24E345848();
  v41 = v95;
  *v95 = v40;
  v41[1] = v42;
  v43 = *(v93 + 20);
  *(v41 + v43) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v44 = [objc_opt_self() shared];
  if (!v44)
  {
    __break(1u);
    goto LABEL_16;
  }

  v45 = v44;
  v46 = [v44 shouldAllowNearbyMultiplayer];

  LOBYTE(v113[0]) = v46;
  sub_24E346B78();
  if (!*a1)
  {
LABEL_16:
    result = sub_24E345828();
    __break(1u);
    return result;
  }

  LODWORD(v93) = v35;
  v70 = v115;
  v69 = v116;

  sub_24DFECE84();
  v48 = v47;

  v49 = v33;
  if (v48)
  {

    LOBYTE(v113[0]) = 0;
    sub_24E346B78();
    v68 = v116;
    v50 = sub_24E345848();
    v66 = v51;
    v67 = v50;
    v48 = v115;
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v68 = 1;
  }

  v52 = sub_24DFED124();

  if (v52)
  {
    KeyPath = swift_getKeyPath();
    v54 = v24;
    v55 = v65;
    *v65 = KeyPath;
    swift_storeEnumTagMultiPayload();
    v56 = v87;
    v57 = (v55 + *(v87 + 20));
    *v57 = sub_24E345848();
    v57[1] = v58;
    v24 = v54;
    v59 = v88;
    sub_24E032CD4();
    v60 = 0;
  }

  else
  {
    v60 = 1;
    v56 = v87;
    v59 = v88;
  }

  __swift_storeEnumTagSinglePayload(v59, v60, 1, v56);
  sub_24E05A494(v125);
  v61 = v92;
  sub_24E032D2C();
  v113[0] = v24;
  v113[1] = v86;
  v113[2] = v85;
  v113[3] = v82;
  v113[4] = v81;
  v113[5] = v84;
  v114 = v83 & 1;
  v115 = v61;
  v116 = v113;
  v112 = v80;
  v107[0] = v79;
  v107[1] = v78;
  v108 = v77;
  v109 = v76;
  v110 = v49;
  v111 = v93 & 1;
  v117 = &v112;
  v118 = v107;
  v103[0] = v72;
  v103[1] = v71;
  v104 = v75;
  v105 = v74;
  v106 = v73;
  v119 = v103;
  v62 = v89;
  sub_24E032D2C();
  v101 = v70;
  v102 = v69;
  v120 = v62;
  v121 = &v101;
  v97 = v48;
  v98 = v68;
  v99 = v67;
  v100 = v66;
  v122 = &v97;
  v63 = v90;
  sub_24DFA9240();
  v96[0] = v125[0];
  v96[1] = v125[1];
  v96[2] = v125[2];
  v123 = v63;
  v124 = v96;
  sub_24E13B058(&v115, v91);
  sub_24DF8BFF4(v59, &qword_27F1E12A0);
  sub_24E032D84();
  sub_24E032D84();

  sub_24DF8BFF4(v63, &qword_27F1E12A0);
  sub_24E032DD8(v97, v98);

  sub_24E032D84();

  return sub_24E032D84();
}

void sub_24E02D718(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for SettingsView();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_24E032D2C();
  sub_24E348068();
  v8 = sub_24E348058();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  sub_24E032CD4();
  sub_24DFC8700(0, 0, v6, &unk_24E370668, v9);

  if (*a2)
  {

    v11 = sub_24DFECD88();

    v12 = sub_24DFECF6C();

    v13 = sub_24E245A0C();

    if ((v11 ^ v13))
    {

      v14 = sub_24DFECF6C();
      sub_24E245A0C();

      sub_24DFECE04();

      v15 = sub_24DFECF6C();
      sub_24E245A0C();

      sub_24DFECE04();

      type metadata accessor for AllFriendsDataSource();
      swift_allocObject();
      v16 = sub_24E0E1134();
      v17 = a2[3];
      v26 = a2[2];
      v27 = v17;
      v25 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1278);
      sub_24E346B98();
      type metadata accessor for FriendRequestsDataSource();
      swift_allocObject();
      v18 = sub_24E0E0748();
      v19 = a2[5];
      v26 = a2[4];
      v27 = v19;
      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1280);
      sub_24E346B98();
      type metadata accessor for FriendSuggestionInvitationStateManager();
      swift_allocObject();
      v20 = sub_24E155B14(1);
      v21 = a2[9];
      v26 = a2[8];
      v27 = v21;
      v25 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1290);
      sub_24E346B98();
      type metadata accessor for FriendSuggestionsDataSource();
      swift_allocObject();
      v22 = sub_24E0DC5F0();
      v23 = a2[7];
      v26 = a2[6];
      v27 = v23;
      v25 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1288);
      sub_24E346B98();
    }
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    sub_24E032EB0(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
    sub_24E345828();
    __break(1u);
  }
}

uint64_t sub_24E02DB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = sub_24E343F88();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  sub_24E348068();
  v4[22] = sub_24E348058();
  v7 = sub_24E347FF8();
  v4[23] = v7;
  v4[24] = v6;

  return MEMORY[0x2822009F8](sub_24E02DC10, v7, v6);
}

uint64_t sub_24E02DC10()
{
  OUTLINED_FUNCTION_29_5();
  v1 = v0[18];
  v2 = *v1;
  v0[25] = *v1;
  if (v2)
  {

    v3 = sub_24DFECF6C();
    v0[26] = v3;

    v0[2] = v0;
    v0[7] = v0 + 28;
    v0[3] = sub_24E02DDAC;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1298);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_24E0BEDB0;
    v0[13] = &block_descriptor_19;
    v0[14] = v4;
    [v3 refreshInternalWithCompletion_];
    OUTLINED_FUNCTION_64_0();

    return MEMORY[0x282200938](v5);
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    OUTLINED_FUNCTION_1_46();
    sub_24E032EB0(v7, v8);
    OUTLINED_FUNCTION_15_11();
    OUTLINED_FUNCTION_64_0();

    return sub_24E345828();
  }
}

uint64_t sub_24E02DDAC()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_24E02DEB0, v2, v1);
}

uint64_t sub_24E02DEB0()
{
  OUTLINED_FUNCTION_29_5();
  v1 = *(v0 + 224);

  sub_24E343C58();
  v2 = sub_24E343F78();
  v3 = sub_24E348238();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_24DE53000, v2, v3, "Refresh player profile: succeeded=%{BOOL}d", v4, 8u);
    MEMORY[0x253040EE0](v4, -1, -1);
  }

  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);

  (*(v6 + 8))(v5, v7);

  v8 = swift_task_alloc();
  *(v0 + 216) = v8;
  *v8 = v0;
  v8[1] = sub_24E02E008;
  OUTLINED_FUNCTION_64_0();

  return sub_24DFF14D8();
}

uint64_t sub_24E02E008()
{
  OUTLINED_FUNCTION_8_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;

  v4 = *(v1 + 192);
  v5 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_24E02E140, v5, v4);
}

uint64_t sub_24E02E140()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

double sub_24E02E1A0@<D0>(uint64_t a1@<X8>)
{
  GameCenterSettingsState.page.getter(&v4);
  v2 = v5;
  *a1 = v4;
  *(a1 + 2) = v2;
  result = *&v6;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_24E02E1EC(__int16 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *a1;
  v6 = v1;
  v7 = v2;
  v8 = v3;

  return GameCenterSettingsState.page.setter(&v5);
}

uint64_t sub_24E02E244()
{
  v0 = type metadata accessor for SettingsView();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  sub_24E032D2C();
  sub_24E348068();
  v5 = sub_24E348058();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  sub_24E032CD4();
  sub_24DFC8700(0, 0, v3, &unk_24E370658, v6);
}

uint64_t sub_24E02E400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_24E348068();
  v4[3] = sub_24E348058();
  v6 = sub_24E347FF8();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_24E02E498, v6, v5);
}

uint64_t sub_24E02E498()
{
  OUTLINED_FUNCTION_9_7();
  v1 = v0[2];
  v2 = *v1;
  v0[6] = *v1;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_24E02E594;

    return sub_24DFF14D8();
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    OUTLINED_FUNCTION_1_46();
    sub_24E032EB0(v5, v6);
    OUTLINED_FUNCTION_15_11();

    return sub_24E345828();
  }
}

uint64_t sub_24E02E594()
{
  OUTLINED_FUNCTION_8_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24DFC9F94, v5, v4);
}

uint64_t sub_24E02E6CC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1278);
  sub_24E346B88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1280);
  sub_24E346B88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1288);
  sub_24E346B88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1290);
  sub_24E346B88();
  type metadata accessor for GameCenterSettings();
  sub_24E032EB0(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
  v4 = sub_24E345848();
  v6 = v5;
  type metadata accessor for GameCenterSettingsState();
  sub_24E032EB0(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState);
  result = sub_24E345298();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  *(a2 + 24) = v8 & 1;
  *(a2 + 25) = v3;
  *(a2 + 26) = 1;
  *(a2 + 32) = v9;
  *(a2 + 40) = v9;
  *(a2 + 48) = v9;
  *(a2 + 56) = v9;
  return result;
}

uint64_t sub_24E02E898@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v34 = a4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1058);
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = &v25 - v6;
  v30 = *a1;
  v8 = a2[3];
  __dst[0] = a2[2];
  __dst[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1278);
  sub_24E346B88();
  v29 = __src[0];
  v9 = a2[5];
  __dst[0] = a2[4];
  __dst[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1280);
  sub_24E346B88();
  v28 = __src[0];
  v10 = a2[7];
  __dst[0] = a2[6];
  __dst[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1288);
  sub_24E346B88();
  v27 = __src[0];
  v11 = a2[9];
  __dst[0] = a2[8];
  __dst[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1290);
  sub_24E346B88();
  v26 = __src[0];
  type metadata accessor for GameCenterSettings();
  sub_24E032EB0(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
  v12 = sub_24E345848();
  v14 = v13;
  type metadata accessor for GameCenterSettingsState();
  sub_24E032EB0(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState);
  v15 = sub_24E345298();
  v37 = v16 & 1;
  v17 = *a2;
  if (*a2)
  {
    v18 = v15;
    v19 = v37;

    v20 = sub_24E344DC8();
    __src[0] = v12;
    __src[1] = v14;
    __src[2] = v18;
    LOBYTE(__src[3]) = v19;
    *(&__src[3] + 1) = v30;
    __src[4] = v29;
    __src[5] = v28;
    __src[6] = v27;
    __src[7] = v26;
    __src[8] = v20;
    __src[9] = v17;
    v21 = swift_projectBox();
    v22 = v32;
    v23 = v33;
    (*(v32 + 16))(v7, v21, v33);
    sub_24E346D48();
    (*(v22 + 8))(v7, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E10F0);
    sub_24E02F464();
    sub_24E3465A8();

    memcpy(__dst, __src, sizeof(__dst));
    return sub_24DF8BFF4(__dst, &qword_27F1E10F0);
  }

  else
  {
    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

uint64_t sub_24E02EC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = sub_24E343F88();
  v3[3] = v4;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  sub_24E348068();
  v3[6] = sub_24E348058();
  v6 = sub_24E347FF8();
  v3[7] = v6;
  v3[8] = v5;

  return MEMORY[0x2822009F8](sub_24E02ED50, v6, v5);
}

uint64_t sub_24E02ED50()
{
  OUTLINED_FUNCTION_29_5();
  sub_24E343C58();
  v1 = sub_24E343F78();
  v2 = sub_24E348238();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24DE53000, v1, v2, "Trying to present the onboarding flow via the overlay. It will present if the player needs to onboard.", v3, 2u);
    MEMORY[0x253040EE0](v3, -1, -1);
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  (*(v5 + 8))(v4, v7);
  sub_24E02F090();
  v8 = *v6;
  v0[9] = v8;
  if (v8)
  {

    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_24E02EEF8;
    OUTLINED_FUNCTION_64_0();

    return sub_24DFF14D8();
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    OUTLINED_FUNCTION_1_46();
    sub_24E032EB0(v12, v13);
    OUTLINED_FUNCTION_15_11();
    OUTLINED_FUNCTION_64_0();

    return sub_24E345828();
  }
}

uint64_t sub_24E02EEF8()
{
  OUTLINED_FUNCTION_8_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24E02F030, v5, v4);
}

uint64_t sub_24E02F030()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t sub_24E02F090()
{
  v0 = sub_24E343F88();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() mainBundle];
  v5 = sub_24E0CFF20(v4);
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  sub_24E343C58();

  v9 = sub_24E343F78();
  v10 = sub_24E348238();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_24E1C2BE0(v7, v8, &v16);
    _os_log_impl(&dword_24DE53000, v9, v10, "SettingsView.presentOnboardingFlow called for bundleID %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x253040EE0](v12, -1, -1);
    MEMORY[0x253040EE0](v11, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  type metadata accessor for GKLocalPlayer.PrimarySceneLookup();
  swift_initStaticObject();
  sub_24E0C3C94();
  if (qword_27F1DDAA8 != -1)
  {
    swift_once();
  }

  v13 = *(qword_27F20B1B0 + 16);
  sub_24E343E68();
}

uint64_t type metadata accessor for SettingsView()
{
  result = qword_27F1E1140;
  if (!qword_27F1E1140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E02F368()
{
  result = qword_27F1E10D8;
  if (!qword_27F1E10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E10D8);
  }

  return result;
}

unint64_t sub_24E02F3BC()
{
  result = qword_27F1E10E0;
  if (!qword_27F1E10E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E10E0);
  }

  return result;
}

unint64_t sub_24E02F410()
{
  result = qword_27F1E10E8;
  if (!qword_27F1E10E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E10E8);
  }

  return result;
}

unint64_t sub_24E02F464()
{
  result = qword_27F1E10F8;
  if (!qword_27F1E10F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E10F0);
    sub_24E02F3BC();
    sub_24DFB4C28(&qword_27F1E1100, &qword_27F1E1108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E10F8);
  }

  return result;
}

uint64_t sub_24E02F53C()
{
  v0 = type metadata accessor for SettingsView();
  OUTLINED_FUNCTION_4_5(v0);
  OUTLINED_FUNCTION_28_6();

  return sub_24E02E244();
}

uint64_t sub_24E02F594@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SettingsView();
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_28_6();

  return sub_24E02E6CC(a1, a2);
}

uint64_t sub_24E02F60C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SettingsView();
  OUTLINED_FUNCTION_33_4();
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24E02E898(a1, (v2 + v9), v10, a2);
}

uint64_t sub_24E02F6B4()
{
  OUTLINED_FUNCTION_8_9();
  v2 = type metadata accessor for SettingsView();
  OUTLINED_FUNCTION_4_5(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24E0334A8;

  return sub_24E02EC5C(v5, v6, v0 + v4);
}

void sub_24E02F7A4(uint64_t a1@<X8>)
{
  type metadata accessor for GameCenterSettings();
  OUTLINED_FUNCTION_1_46();
  sub_24E032EB0(v2, v3);
  *a1 = sub_24E345848();
  *(a1 + 8) = v4;
  type metadata accessor for AllFriendsDataSource();
  OUTLINED_FUNCTION_21_7();
  sub_24E0E1134();
  OUTLINED_FUNCTION_13_15();
  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  type metadata accessor for FriendRequestsDataSource();
  OUTLINED_FUNCTION_21_7();
  sub_24E0E0748();
  OUTLINED_FUNCTION_13_15();
  *(a1 + 32) = v15;
  *(a1 + 40) = v16;
  type metadata accessor for FriendSuggestionsDataSource();
  OUTLINED_FUNCTION_21_7();
  sub_24E0DC5F0();
  OUTLINED_FUNCTION_13_15();
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  type metadata accessor for FriendSuggestionInvitationStateManager();
  OUTLINED_FUNCTION_21_7();
  sub_24E155B14(1);
  OUTLINED_FUNCTION_13_15();
  *(a1 + 64) = v15;
  *(a1 + 72) = v16;
  type metadata accessor for GameCenterSettingsState();
  OUTLINED_FUNCTION_9_18();
  sub_24E032EB0(v5, v6);
  *(a1 + 80) = sub_24E345298();
  *(a1 + 88) = v7 & 1;
  type metadata accessor for GameCenterContainerViewModel(0);
  sub_24E032EB0(&qword_27F1E1270, type metadata accessor for GameCenterContainerViewModel);
  *(a1 + 96) = sub_24E345288();
  *(a1 + 104) = v8 & 1;
  v9 = objc_opt_self();
  v10 = [v9 shared];
  if (v10)
  {
    v11 = v10;
    [v10 inboxContactsOnly];

    sub_24E346B78();
    *(a1 + 112) = v15;
    *(a1 + 120) = v16;
    v12 = [v9 shared];
    if (v12)
    {
      v13 = v12;
      [v12 shouldAllowNearbyMultiplayer];

      sub_24E346B78();
      *(a1 + 128) = v15;
      *(a1 + 136) = v16;
      type metadata accessor for SettingsView();
      v14 = [objc_opt_self() defaultCenter];
      sub_24E348428();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24E02FA88()
{
  sub_24DFEB518();
  if (v0 <= 0x3F)
  {
    sub_24E02FCA4(319, &qword_27F1E1150, type metadata accessor for AllFriendsDataSource, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_24E02FCA4(319, &qword_27F1E1158, type metadata accessor for FriendRequestsDataSource, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_24E02FCA4(319, &qword_27F1E1160, type metadata accessor for FriendSuggestionsDataSource, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_24E02FCA4(319, &qword_27F1E1168, type metadata accessor for FriendSuggestionInvitationStateManager, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_24E02FCA4(319, &qword_27F1E1170, type metadata accessor for GameCenterSettingsState, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_24E02FD08();
              if (v6 <= 0x3F)
              {
                sub_24E02FD6C();
                if (v7 <= 0x3F)
                {
                  sub_24E348418();
                  if (v8 <= 0x3F)
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

void sub_24E02FCA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24E02FD08()
{
  if (!qword_27F1E1178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1180);
    v0 = sub_24E345278();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E1178);
    }
  }
}

void sub_24E02FD6C()
{
  if (!qword_27F1DF470)
  {
    v0 = sub_24E346BB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1DF470);
    }
  }
}

unint64_t sub_24E02FDBC()
{
  result = qword_27F1E1188;
  if (!qword_27F1E1188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1060);
    sub_24DFB4C28(&qword_27F1E10B0, &qword_27F1E1068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DE1E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E10B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E10C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E10C8);
    sub_24DFB4C28(&qword_27F1E10D0, &qword_27F1E10C8);
    sub_24E02F368();
    sub_24E02F3BC();
    swift_getOpaqueTypeConformance2();
    sub_24E02F410();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E10F0);
    type metadata accessor for GameCenterSettingsState();
    sub_24E02F464();
    sub_24E032EB0(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1188);
  }

  return result;
}

uint64_t sub_24E030050(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_24E030090(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_24E03011C@<X0>(uint64_t a1@<X8>)
{
  v142 = a1;
  v2 = type metadata accessor for ShareFriendsListDetailView(0);
  MEMORY[0x28223BE20](v2 - 8);
  v113 = (&v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1190);
  MEMORY[0x28223BE20](v128);
  v111 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v118 = &v105 - v6;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1198);
  MEMORY[0x28223BE20](v125);
  v127 = &v105 - v7;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E11A0);
  MEMORY[0x28223BE20](v141);
  v129 = &v105 - v8;
  v126 = type metadata accessor for InviteFriendsView(0);
  MEMORY[0x28223BE20](v126);
  v115 = (&v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0);
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v110 = &v105 - v10;
  v109 = sub_24E347638();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for FriendRequestsDetailView(0);
  MEMORY[0x28223BE20](v116);
  v117 = (&v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03D0);
  MEMORY[0x28223BE20](v133);
  v119 = &v105 - v13;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E11A8);
  MEMORY[0x28223BE20](v131);
  v132 = &v105 - v14;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E11B0);
  MEMORY[0x28223BE20](v138);
  v134 = &v105 - v15;
  v122 = sub_24E345B68();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AllFriendsDetailView(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03F8);
  MEMORY[0x28223BE20](v130);
  v106 = &v105 - v20;
  v123 = type metadata accessor for CustomizeProfileView();
  MEMORY[0x28223BE20](v123);
  v22 = (&v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v105 = &v105 - v24;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E11B8);
  MEMORY[0x28223BE20](v139);
  v140 = &v105 - v25;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E11C0);
  MEMORY[0x28223BE20](v135);
  v137 = &v105 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E11C8);
  MEMORY[0x28223BE20](v27);
  v29 = &v105 - v28;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E11D0);
  MEMORY[0x28223BE20](v136);
  v31 = &v105 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E11D8);
  MEMORY[0x28223BE20](v32);
  v35 = &v105 - v34;
  v36 = *v1;
  v124 = *(v1 + 16);
  v37 = *(v1 + 24);
  v39 = *(v1 + 40);
  v38 = *(v1 + 48);
  v40 = *(v1 + 56);
  switch(*(v1 + 25))
  {
    case 1:
      if (v36)
      {
        v93 = v35;
        v94 = [objc_allocWithZone(GKNicknameController) initWithMinNicknameLength:*(v36 + OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings_minNicknameLength) maxNicknameLength:*(v36 + OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings_maxNicknameLength)];
        *v22 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620);
        swift_storeEnumTagMultiPayload();
        v95 = v123;
        v96 = v22 + *(v123 + 20);
        LOBYTE(v143) = 0;
        sub_24E346B78();
        v97 = *(&v145 + 1);
        *v96 = v145;
        *(v96 + 1) = v97;
        v98 = v22 + *(v95 + 24);
        LOBYTE(v143) = 0;
        sub_24E346B78();
        v99 = *(&v145 + 1);
        *v98 = v145;
        *(v98 + 1) = v99;
        sub_24E03272C();
        sub_24E3451E8();
        *(v22 + *(v95 + 32)) = v94;
        sub_24E032CD4();
        sub_24E032D2C();
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1208);
        sub_24E032234();
        sub_24E032EB0(&qword_27F1E1218, type metadata accessor for CustomizeProfileView);
        sub_24E345E38();
        sub_24DFA9240();
        swift_storeEnumTagMultiPayload();
        sub_24E032178();
        sub_24E032314();
        sub_24E345E38();
        sub_24DF8BFF4(v31, &qword_27F1E11D0);
        sub_24DFA9240();
        swift_storeEnumTagMultiPayload();
        sub_24E0320EC();
        sub_24E032670();
        sub_24E345E38();
        sub_24DF8BFF4(v93, &qword_27F1E11D8);
        return sub_24E032D84();
      }

      type metadata accessor for GameCenterSettings();
      goto LABEL_20;
    case 2:
      v128 = v35;
      v129 = v33;
      v57 = *(v1 + 32);
      LODWORD(v127) = v37;
      v58 = v40;
      v59 = v38;
      type metadata accessor for GameCenterSettingsState();
      v60 = sub_24E032EB0(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState);

      v126 = v60;
      v61 = sub_24E345298();
      v63 = v62;
      *v19 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620);
      swift_storeEnumTagMultiPayload();
      v64 = v19 + v17[5];
      *v64 = swift_getKeyPath();
      v64[8] = 0;
      v65 = v19 + v17[6];
      *v65 = v61;
      v65[8] = v63 & 1;
      *(v19 + v17[7]) = v57;
      *(v19 + v17[8]) = v39;
      *(v19 + v17[9]) = v59;
      *(v19 + v17[10]) = v58;
      sub_24E347628();

      if ((v127 & 1) == 0)
      {
        sub_24E348268();
        v66 = sub_24E346198();
        sub_24E343EA8();

        v67 = v120;
        sub_24E345B58();
        swift_getAtKeyPath();

        (*(v121 + 8))(v67, v122);
      }

      sub_24E032EB0(&qword_27F1E0400, type metadata accessor for AllFriendsDetailView);
      v68 = v106;
      sub_24E3465A8();

      sub_24E032D84();
      KeyPath = swift_getKeyPath();
      v70 = &v68[*(v130 + 36)];
      *v70 = KeyPath;
      v70[8] = 0;
      v44 = &qword_27F1E03F8;
      sub_24DFA9240();
      swift_storeEnumTagMultiPayload();
      sub_24E0323A0();
      sub_24E032508();
      v71 = v134;
      sub_24E345E38();
      sub_24DFA9240();
      swift_storeEnumTagMultiPayload();
      sub_24E032178();
      sub_24E032314();
      v72 = v128;
      sub_24E345E38();
      sub_24DF8BFF4(v71, &qword_27F1E11B0);
      sub_24DFA9240();
      swift_storeEnumTagMultiPayload();
      sub_24E0320EC();
      sub_24E032670();
      sub_24E345E38();
      v73 = v72;
      goto LABEL_12;
    case 3:
      LODWORD(v127) = *(v1 + 24);
      v128 = v35;
      v129 = v33;
      v74 = v40;
      v75 = v38;
      type metadata accessor for GameCenterSettingsState();
      sub_24E032EB0(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState);

      v76 = sub_24E345298();
      v78 = v77;
      v79 = swift_getKeyPath();
      v80 = v117;
      *v117 = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620);
      swift_storeEnumTagMultiPayload();
      v81 = v116;
      v82 = v80 + *(v116 + 20);
      *v82 = swift_getKeyPath();
      v82[8] = 0;
      v83 = v80 + v81[6];
      *v83 = v76;
      v83[8] = v78 & 1;
      *(v80 + v81[7]) = v39;
      *(v80 + v81[8]) = v75;
      *(v80 + v81[9]) = v74;
      v84 = v107;
      sub_24E347628();
      sub_24E3477D8();
      if (qword_27F1DDF20 != -1)
      {
        swift_once();
      }

      sub_24E32EA08();
      *&v145 = sub_24E3477C8();
      *(&v145 + 1) = MEMORY[0x277D221C0];
      v85 = v110;
      sub_24E3475D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0);
      sub_24E3475B8();
      (*(v112 + 8))(v85, v114);
      (*(v108 + 8))(v84, v109);

      if ((v127 & 1) == 0)
      {
        sub_24E348268();
        v86 = sub_24E346198();
        sub_24E343EA8();

        v87 = v120;
        sub_24E345B58();
        swift_getAtKeyPath();

        (*(v121 + 8))(v87, v122);
      }

      sub_24E032EB0(&qword_27F1E03E0, type metadata accessor for FriendRequestsDetailView);
      v68 = v119;
      sub_24E3465A8();

      sub_24E032D84();
      v88 = swift_getKeyPath();
      v89 = &v68[*(v133 + 36)];
      *v89 = v88;
      v89[8] = 0;
      v44 = &qword_27F1E03D0;
      sub_24DFA9240();
      swift_storeEnumTagMultiPayload();
      sub_24E0323A0();
      sub_24E032508();
      v90 = v134;
      sub_24E345E38();
      sub_24DFA9240();
      swift_storeEnumTagMultiPayload();
      sub_24E032178();
      sub_24E032314();
      v91 = v128;
      sub_24E345E38();
      sub_24DF8BFF4(v90, &qword_27F1E11B0);
      sub_24DFA9240();
      swift_storeEnumTagMultiPayload();
      sub_24E0320EC();
      sub_24E032670();
      sub_24E345E38();
      v73 = v91;
LABEL_12:
      sub_24DF8BFF4(v73, &qword_27F1E11D8);
      v45 = v68;
      return sub_24DF8BFF4(v45, v44);
    case 4:
      v46 = *(v1 + 56);
      v47 = swift_getKeyPath();
      v48 = v115;
      *v115 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620);
      swift_storeEnumTagMultiPayload();
      v49 = v126;
      v50 = v48 + *(v126 + 20);
      *v50 = swift_getKeyPath();
      v50[8] = 0;
      v51 = v48 + v49[8];
      v143 = 0;
      v144 = 0xE000000000000000;

      sub_24E346B78();
      v52 = v146;
      *v51 = v145;
      *(v51 + 2) = v52;
      v53 = (v48 + v49[9]);
      v143 = 0;
      sub_24E346B78();
      v54 = *(&v145 + 1);
      *v53 = v145;
      v53[1] = v54;
      *(v48 + v49[6]) = v46;
      v55 = (v48 + v49[7]);
      *v55 = 0;
      v55[1] = 0;
      sub_24E032D2C();
      swift_storeEnumTagMultiPayload();
      sub_24E032EB0(&qword_27F1DF608, type metadata accessor for InviteFriendsView);
      sub_24E032004();
      v56 = v129;
      sub_24E345E38();
      sub_24DFA9240();
      swift_storeEnumTagMultiPayload();
      sub_24E0320EC();
      sub_24E032670();
      sub_24E345E38();
      sub_24DF8BFF4(v56, &qword_27F1E11A0);
      return sub_24E032D84();
    case 5:
      sub_24E17F5D0(v113);
      type metadata accessor for GameCenterSettings();
      if (v36)
      {
        sub_24E032EB0(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);

        v100 = sub_24E344DC8();
        v101 = v111;
        sub_24E032CD4();
        v102 = (v101 + *(v128 + 36));
        *v102 = v100;
        v102[1] = v36;
        v103 = v118;
        sub_24E031F94(v101, v118);
        sub_24DFA9240();
        swift_storeEnumTagMultiPayload();
        sub_24E032EB0(&qword_27F1DF608, type metadata accessor for InviteFriendsView);
        sub_24E032004();
        v104 = v129;
        sub_24E345E38();
        sub_24DFA9240();
        swift_storeEnumTagMultiPayload();
        sub_24E0320EC();
        sub_24E032670();
        sub_24E345E38();
        sub_24DF8BFF4(v104, &qword_27F1E11A0);
        return sub_24DF8BFF4(v103, &qword_27F1E1190);
      }

      else
      {
LABEL_20:
        sub_24E032EB0(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
        result = sub_24E345828();
        __break(1u);
      }

      return result;
    default:
      v41 = v35;
      v42 = sub_24E345708();
      v43 = sub_24E3461E8();
      *v29 = v42;
      v29[8] = v43;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1208);
      sub_24E032234();
      sub_24E032EB0(&qword_27F1E1218, type metadata accessor for CustomizeProfileView);
      sub_24E345E38();
      sub_24DFA9240();
      swift_storeEnumTagMultiPayload();
      sub_24E032178();
      sub_24E032314();
      sub_24E345E38();
      sub_24DF8BFF4(v31, &qword_27F1E11D0);
      v44 = &qword_27F1E11D8;
      sub_24DFA9240();
      swift_storeEnumTagMultiPayload();
      sub_24E0320EC();
      sub_24E032670();
      sub_24E345E38();
      v45 = v41;
      return sub_24DF8BFF4(v45, v44);
  }
}

id sub_24E031A24()
{
  type metadata accessor for PlayerProfileViewController();
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v0 = PlayerProfileViewController.__allocating_init(playerId:navigationProxy:objectGraph:)(0, 0, v3);
  v1 = [objc_allocWithZone(type metadata accessor for GameLayerNavigationController()) initWithRootViewController_];

  return v1;
}

uint64_t sub_24E031AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E033400();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24E031B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E033400();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24E031BA0()
{
  sub_24E033400();
  sub_24E3460C8();
  __break(1u);
}

id sub_24E031BC8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CEC298]) initWithFrame_];
  [v0 setLockupSize_];
  sub_24DF88A8C(0, &qword_27F1DEFE0);
  sub_24DF88A8C(0, &qword_27F1E3560);
  v1 = sub_24E334618();
  v2 = sub_24E1C69D4(v1, *MEMORY[0x277CEC230], *MEMORY[0x277CEC218]);
  [v0 setRequest_];

  return v0;
}

uint64_t sub_24E031D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E033454();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E031DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E033454();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E031E24()
{
  sub_24E033454();
  sub_24E345E08();
  __break(1u);
}

uint64_t sub_24E031E4C@<X0>(uint64_t a1@<X8>)
{
  sub_24E345D08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1248);
  sub_24DFB4C28(&qword_27F1E1250, &qword_27F1E1248);
  sub_24E032780();
  sub_24E346D08();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1260) + 36));
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF588) + 28);
  v4 = sub_24E346488();
  __swift_storeEnumTagSinglePayload(v2 + v3, 1, 1, v4);
  result = swift_getKeyPath();
  *v2 = result;
  return result;
}

uint64_t sub_24E031F94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E032004()
{
  result = qword_27F1E11E0;
  if (!qword_27F1E11E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1190);
    sub_24E032EB0(&qword_27F1E11E8, type metadata accessor for ShareFriendsListDetailView);
    sub_24DFB4C28(&qword_27F1E1100, &qword_27F1E1108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E11E0);
  }

  return result;
}

unint64_t sub_24E0320EC()
{
  result = qword_27F1E11F0;
  if (!qword_27F1E11F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E11D8);
    sub_24E032178();
    sub_24E032314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E11F0);
  }

  return result;
}

unint64_t sub_24E032178()
{
  result = qword_27F1E11F8;
  if (!qword_27F1E11F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E11D0);
    sub_24E032234();
    sub_24E032EB0(&qword_27F1E1218, type metadata accessor for CustomizeProfileView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E11F8);
  }

  return result;
}

unint64_t sub_24E032234()
{
  result = qword_27F1E1200;
  if (!qword_27F1E1200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1208);
    sub_24E0322C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1200);
  }

  return result;
}

unint64_t sub_24E0322C0()
{
  result = qword_27F1E1210;
  if (!qword_27F1E1210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1210);
  }

  return result;
}

unint64_t sub_24E032314()
{
  result = qword_27F1E1220;
  if (!qword_27F1E1220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E11B0);
    sub_24E0323A0();
    sub_24E032508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1220);
  }

  return result;
}

unint64_t sub_24E0323A0()
{
  result = qword_27F1E1228;
  if (!qword_27F1E1228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E03F8);
    type metadata accessor for AllFriendsDetailView(255);
    type metadata accessor for GameCenterSettingsState();
    sub_24E032EB0(&qword_27F1E0400, type metadata accessor for AllFriendsDetailView);
    sub_24E032EB0(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState);
    swift_getOpaqueTypeConformance2();
    sub_24DFB4C28(&qword_27F1DF610, &qword_27F1DF618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1228);
  }

  return result;
}

unint64_t sub_24E032508()
{
  result = qword_27F1E1230;
  if (!qword_27F1E1230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E03D0);
    type metadata accessor for FriendRequestsDetailView(255);
    type metadata accessor for GameCenterSettingsState();
    sub_24E032EB0(&qword_27F1E03E0, type metadata accessor for FriendRequestsDetailView);
    sub_24E032EB0(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState);
    swift_getOpaqueTypeConformance2();
    sub_24DFB4C28(&qword_27F1DF610, &qword_27F1DF618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1230);
  }

  return result;
}

unint64_t sub_24E032670()
{
  result = qword_27F1E1238;
  if (!qword_27F1E1238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E11A0);
    sub_24E032EB0(&qword_27F1DF608, type metadata accessor for InviteFriendsView);
    sub_24E032004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1238);
  }

  return result;
}

unint64_t sub_24E03272C()
{
  result = qword_27F1E1240;
  if (!qword_27F1E1240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1240);
  }

  return result;
}

unint64_t sub_24E032780()
{
  result = qword_27F1E1258;
  if (!qword_27F1E1258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1258);
  }

  return result;
}

uint64_t sub_24E0327F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1268);
  OUTLINED_FUNCTION_4_5(v0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v1);
  sub_24DFA9240();
  return sub_24E345AC8();
}

uint64_t sub_24E032898()
{
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_27_5();
  v1 = type metadata accessor for SettingsView();
  OUTLINED_FUNCTION_4_5(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_23_10(v2);
  OUTLINED_FUNCTION_64_0();

  return sub_24E02E400(v3, v4, v5, v6);
}

uint64_t objectdestroy_23Tm()
{
  type metadata accessor for SettingsView();
  OUTLINED_FUNCTION_16_12();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();

  j__swift_release();

  v7 = *(v0 + 60);
  sub_24E348418();
  OUTLINED_FUNCTION_5_2();
  (*(v8 + 8))(v1 + v4 + v7);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_24E032AA4()
{
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_27_5();
  v1 = type metadata accessor for SettingsView();
  OUTLINED_FUNCTION_4_5(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_23_10(v2);
  OUTLINED_FUNCTION_64_0();

  return sub_24E02DB1C(v3, v4, v5, v6);
}

uint64_t sub_24E032B70()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  OUTLINED_FUNCTION_12_5();

  return v3();
}

unint64_t sub_24E032C80()
{
  result = qword_27F1E12A8;
  if (!qword_27F1E12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E12A8);
  }

  return result;
}

uint64_t sub_24E032CD4()
{
  OUTLINED_FUNCTION_0_8();
  v1(0);
  OUTLINED_FUNCTION_5_2();
  v2 = OUTLINED_FUNCTION_19_1();
  v3(v2);
  return v0;
}

uint64_t sub_24E032D2C()
{
  OUTLINED_FUNCTION_0_8();
  v1(0);
  OUTLINED_FUNCTION_5_2();
  v2 = OUTLINED_FUNCTION_19_1();
  v3(v2);
  return v0;
}

uint64_t sub_24E032D84()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2(v1);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_24E032DD8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_24E032E38(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_27_5();
  v4 = type metadata accessor for SettingsView();
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_28_6();

  return a2(v2, v3 + v5);
}

uint64_t sub_24E032EB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E032F00(uint64_t a1)
{
  v3 = type metadata accessor for SettingsView();
  OUTLINED_FUNCTION_4_5(v3);
  OUTLINED_FUNCTION_28_6();
  return sub_24E02CB18(v1 + v4, a1);
}

uint64_t objectdestroyTm_4()
{
  type metadata accessor for SettingsView();
  OUTLINED_FUNCTION_16_12();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);

  j__swift_release();

  v7 = *(v0 + 60);
  sub_24E348418();
  OUTLINED_FUNCTION_5_2();
  (*(v8 + 8))(v1 + v4 + v7);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

_BYTE *storeEnumTagSinglePayload for SettingsScreen.PresentationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24E033198()
{
  result = qword_27F1E12D8;
  if (!qword_27F1E12D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E12E0);
    sub_24E0320EC();
    sub_24E032670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E12D8);
  }

  return result;
}

unint64_t sub_24E033224()
{
  result = qword_27F1E12E8;
  if (!qword_27F1E12E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1260);
    sub_24E0332DC();
    sub_24DFB4C28(&qword_27F1E1300, &qword_27F1DF588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E12E8);
  }

  return result;
}

unint64_t sub_24E0332DC()
{
  result = qword_27F1E12F0;
  if (!qword_27F1E12F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E12F8);
    sub_24DFB4C28(&qword_27F1E1250, &qword_27F1E1248);
    sub_24E032780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E12F0);
  }

  return result;
}

unint64_t sub_24E0333A4()
{
  result = qword_27F1E1308;
  if (!qword_27F1E1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1308);
  }

  return result;
}

unint64_t sub_24E033400()
{
  result = qword_27F1E1310;
  if (!qword_27F1E1310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1310);
  }

  return result;
}

unint64_t sub_24E033454()
{
  result = qword_27F1E1318;
  if (!qword_27F1E1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1318);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_21()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_13_15()
{

  return sub_24E346B78();
}

uint64_t OUTLINED_FUNCTION_21_7()
{

  return swift_allocObject();
}

uint64_t sub_24E03366C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SystemImage();
  v4 = [objc_opt_self() configurationWithTextStyle_];
  v5 = sub_24E18EFCC(0x2E6E6F7276656863, 0xEF64726177726F66, v4);

  [v5 size];
  OUTLINED_FUNCTION_7_10();

  if (qword_27F1DD6D0 != -1)
  {
    swift_once();
  }

  result = sub_24E035CBC(&qword_27F1E1320, a1);
  *(a1 + 224) = v1;
  *(a1 + 232) = v2;
  return result;
}

uint64_t sub_24E033768()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DD6D8 != -1)
  {
    swift_once();
  }

  v4 = qword_27F20AB78;
  v5 = unk_27F20AB80;
  if (qword_27F1DD6E8 != -1)
  {
    swift_once();
  }

  v6 = v1;
  if (qword_27F1DDFD0 != -1)
  {
    swift_once();
  }

  v7 = sub_24E344158();
  v8 = __swift_project_value_buffer(v7, &unk_27F20BB70);
  v9 = *(v7 - 8);
  v10 = *(v9 + 16);
  v11 = v9 + 16;
  v10(v3, v8, v7);
  v12 = *MEMORY[0x277D22618];
  v48 = v6[13];
  v47 = v6 + 13;
  v48(v3, v12, v0);
  v46 = sub_24E3444F8();
  v66 = v46;
  v67 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v65);
  v63 = v0;
  v64 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v62);
  v14 = v6[2];
  v50 = v6 + 2;
  v45 = v14;
  v14(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  v15 = v6[1];
  v51 = v6 + 1;
  v44 = v15;
  v15(v3, v0);
  if (qword_27F1DD6F0 != -1)
  {
    swift_once();
  }

  if (qword_27F1DDFD8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v7, &qword_27F20BB88);
  v10(v3, v16, v7);
  v17 = v48;
  v48(v3, v12, v0);
  v18 = v46;
  v63 = v46;
  v64 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v62);
  v41 = v12;
  v19 = v11;
  v42 = v10;
  v60 = v0;
  v61 = MEMORY[0x277D22628];
  v20 = __swift_allocate_boxed_opaque_existential_1(&v59);
  v21 = v45;
  v45(v20, v3, v0);
  sub_24E344508();
  v22 = v44;
  v44(v3, v0);
  if (qword_27F1DD6F8 != -1)
  {
    swift_once();
  }

  v23 = v16;
  v43 = v7;
  v49 = v19;
  v24 = v42;
  (v42)(v3, v23, v7);
  v25 = v41;
  v17(v3, v41, v0);
  v60 = v18;
  v61 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v59);
  v57 = v0;
  v26 = MEMORY[0x277D22628];
  v58 = MEMORY[0x277D22628];
  v27 = __swift_allocate_boxed_opaque_existential_1(&v56);
  v21(v27, v3, v0);
  sub_24E344508();
  v22(v3, v0);
  if (qword_27F1DD700 != -1)
  {
    swift_once();
  }

  if (qword_27F1DDFE0 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v43, &qword_27F20BBA0);
  v24(v3);
  v28 = v25;
  v29 = v25;
  v30 = v48;
  v48(v3, v29, v0);
  v31 = v46;
  v57 = v46;
  v58 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v56);
  v54 = v0;
  v55 = v26;
  v32 = __swift_allocate_boxed_opaque_existential_1(&v53);
  v33 = v45;
  v45(v32, v3, v0);
  sub_24E344508();
  v34 = v44;
  v44(v3, v0);
  if (qword_27F1DD708 != -1)
  {
    swift_once();
  }

  (v42)(v3, v40, v43);
  v30(v3, v28, v0);
  v54 = v31;
  v55 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v53);
  v52[3] = v0;
  v52[4] = MEMORY[0x277D22628];
  v35 = __swift_allocate_boxed_opaque_existential_1(v52);
  v33(v35, v3, v0);
  sub_24E344508();
  v34(v3, v0);
  if (qword_27F1DD6E0 != -1)
  {
    swift_once();
  }

  v36 = qword_27F20AB88;
  v37 = GKIsXRUIIdiom();
  qword_27F1E1320 = v4;
  unk_27F1E1328 = v5;
  sub_24DE56CE8(&v65, &unk_27F1E1330);
  sub_24DE56CE8(&v62, &unk_27F1E1358);
  sub_24DE56CE8(&v59, &unk_27F1E1380);
  sub_24DE56CE8(&v56, &unk_27F1E13A8);
  result = sub_24DE56CE8(&v53, &unk_27F1E13D0);
  qword_27F1E13F8 = v36;
  qword_27F1E1400 = 0;
  unk_27F1E1408 = 0;
  qword_27F1E1410 = 0x7FF0000000000000;
  byte_27F1E1418 = v37;
  return result;
}

uint64_t sub_24E033F70()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 62.0;
  if (result)
  {
    v1 = 52.0;
  }

  qword_27F20AB78 = *&v1;
  unk_27F20AB80 = *&v1;
  return result;
}

uint64_t sub_24E033FAC()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 10.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_27F20AB88 = *&v1;
  return result;
}

uint64_t sub_24E033FDC()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 22.0;
  if (result)
  {
    v1 = 21.0;
  }

  qword_27F20AB90 = *&v1;
  return result;
}

uint64_t sub_24E03400C()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 28.0;
  if (result)
  {
    v1 = 25.0;
  }

  qword_27F20AB98 = *&v1;
  return result;
}

uint64_t sub_24E03403C()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 22.0;
  if (result)
  {
    v1 = 23.0;
  }

  qword_27F20ABA0 = *&v1;
  return result;
}

uint64_t sub_24E03406C()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 18.0;
  if (result)
  {
    v1 = 21.0;
  }

  qword_27F20ABA8 = *&v1;
  return result;
}

uint64_t sub_24E03409C()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 16.0;
  if (result)
  {
    v1 = 13.0;
  }

  qword_27F20ABB0 = *&v1;
  return result;
}

char *sub_24E0340CC()
{
  v1 = v0;
  OUTLINED_FUNCTION_29();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v47 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_headingLabel;
  if (qword_27F1DDFD0 != -1)
  {
    OUTLINED_FUNCTION_3_37();
    swift_once();
  }

  v6 = sub_24E344158();
  v7 = __swift_project_value_buffer(v6, &unk_27F20BB70);
  v8 = *(*(v6 - 8) + 16);
  v8(v4, v7, v6);
  OUTLINED_FUNCTION_1_22();
  v9 = type metadata accessor for DynamicTypeLabel();
  v10 = objc_allocWithZone(v9);
  v11 = OUTLINED_FUNCTION_0_29();
  *(v0 + v5) = v11;
  v12 = OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_titleLabel;
  if (qword_27F1DDFD8 != -1)
  {
    OUTLINED_FUNCTION_2_19();
    v11 = swift_once();
  }

  v13 = OUTLINED_FUNCTION_6_13(v11, &qword_27F20BB88);
  (v8)(v13);
  OUTLINED_FUNCTION_1_22();
  v14 = objc_allocWithZone(v9);
  v15 = OUTLINED_FUNCTION_24_4();
  *(v0 + v12) = v15;
  v16 = OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_subtitleLabel;
  if (qword_27F1DDFE0 != -1)
  {
    OUTLINED_FUNCTION_20_6();
    v15 = swift_once();
  }

  v17 = OUTLINED_FUNCTION_6_13(v15, &qword_27F20BBA0);
  (v8)(v17);
  OUTLINED_FUNCTION_1_22();
  v18 = objc_allocWithZone(v9);
  *(v0 + v16) = OUTLINED_FUNCTION_0_29();
  v19 = OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_artworkView;
  type metadata accessor for ArtworkView();
  *(v0 + v19) = sub_24E0D89D0();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_selectedBackgroundColor) = 0;
  v20 = OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_chevronView;
  v48 = 1;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  v53 = 7;
  v21 = sub_24E073800();
  sub_24DF9D524(&v48);
  *(v1 + v20) = v21;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_hasChevron) = 0;
  v22 = type metadata accessor for SmallLockupView();
  v47[1] = v1;
  v47[2] = v22;
  v23 = OUTLINED_FUNCTION_28();
  v26 = objc_msgSendSuper2(v24, v25, v23);
  v27 = OUTLINED_FUNCTION_10_19();
  [v28 v29];
  v30 = OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_headingLabel;
  [*&v26[OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_headingLabel] setTextAlignment_];
  v31 = *&v26[v30];
  LODWORD(v20) = GKIsXRUIIdiom();
  v32 = objc_opt_self();
  v33 = &selRef_secondaryLabelColor;
  if (!v20)
  {
    v33 = &selRef_labelColor;
  }

  v34 = [v32 *v33];
  [v31 setTextColor_];

  sub_24DFD8050(0xD00000000000002BLL, 0x800000024E3A27F0, *&v26[v30]);
  v35 = OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_titleLabel;
  [*&v26[OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_titleLabel] setTextAlignment_];
  v36 = *&v26[v35];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 labelColor];
  [v38 setTextColor_];

  v40 = *&v26[v35];
  v41 = [v26 traitCollection];
  sub_24E3483C8();

  [v40 setNumberOfLines_];
  sub_24DFD8050(0xD000000000000029, 0x800000024E3A2820, *&v26[v35]);
  v42 = OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_subtitleLabel;
  [*&v26[OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_subtitleLabel] setTextAlignment_];
  v43 = *&v26[v42];
  v44 = [v37 secondaryLabelColor];
  [v43 setTextColor_];

  sub_24DFD8050(0xD00000000000002CLL, 0x800000024E3A2850, *&v26[v42]);
  v45 = OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_artworkView;
  [*&v26[OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_artworkView] setBackgroundColor_];
  sub_24DFD8050(0xD00000000000002ALL, 0x800000024E3A2880, *&v26[v45]);
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_15_12();

  return v26;
}

void sub_24E0345CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_headingLabel;
  if (qword_27F1DDFD0 != -1)
  {
    OUTLINED_FUNCTION_3_37();
    swift_once();
  }

  v6 = sub_24E344158();
  v7 = __swift_project_value_buffer(v6, &unk_27F20BB70);
  v8 = *(*(v6 - 8) + 16);
  v8(v4, v7, v6);
  OUTLINED_FUNCTION_1_22();
  v9 = type metadata accessor for DynamicTypeLabel();
  v10 = objc_allocWithZone(v9);
  v11 = OUTLINED_FUNCTION_0_29();
  *(v0 + v5) = v11;
  v12 = OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_titleLabel;
  if (qword_27F1DDFD8 != -1)
  {
    OUTLINED_FUNCTION_2_19();
    v11 = swift_once();
  }

  v13 = OUTLINED_FUNCTION_6_13(v11, &qword_27F20BB88);
  (v8)(v13);
  OUTLINED_FUNCTION_1_22();
  v14 = objc_allocWithZone(v9);
  v15 = OUTLINED_FUNCTION_24_4();
  *(v0 + v12) = v15;
  v16 = OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_subtitleLabel;
  if (qword_27F1DDFE0 != -1)
  {
    OUTLINED_FUNCTION_20_6();
    v15 = swift_once();
  }

  v17 = OUTLINED_FUNCTION_6_13(v15, &qword_27F20BBA0);
  (v8)(v17);
  OUTLINED_FUNCTION_1_22();
  v18 = objc_allocWithZone(v9);
  *(v0 + v16) = OUTLINED_FUNCTION_0_29();
  v19 = OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_artworkView;
  type metadata accessor for ArtworkView();
  *(v0 + v19) = sub_24E0D89D0();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_selectedBackgroundColor) = 0;
  v20 = OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_chevronView;
  v23 = 1;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v28 = 7;
  v21 = sub_24E073800();
  sub_24DF9D524(&v23);
  *(v1 + v20) = v21;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_hasChevron) = 0;
  sub_24E348AE8();
  __break(1u);
}

id sub_24E034880(id result)
{
  if (v1[OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_hasChevron] != (result & 1))
  {
    v2 = *&v1[OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_chevronView];
    if (v1[OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_hasChevron])
    {
      return [v1 addSubview_];
    }

    else
    {
      return [*&v1[OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_chevronView] removeFromSuperview];
    }
  }

  return result;
}

id sub_24E0348CC(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_hasChevron);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_hasChevron) = a1;
  return sub_24E034880(v2);
}

double sub_24E034940()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SmallLockupView();
  objc_msgSendSuper2(&v3, sel_layoutMargins);
  if (result == 0.0 && v2 == 0.0)
  {
    return 8.0;
  }

  return result;
}

id sub_24E034A0C()
{
  OUTLINED_FUNCTION_29();
  v5 = type metadata accessor for SmallLockupView();
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

double sub_24E034AAC(void *a1)
{
  v2 = v1;
  [v1 layoutMargins];
  sub_24E348538();
  v5 = v4;
  v7 = v6;
  sub_24E034E40(v15);
  v8 = [a1 traitCollection];
  v9 = sub_24E3483C8();

  if (v9)
  {
    sub_24DFABA30(a1);
  }

  else
  {
    sub_24DFAC688(v5);
  }

  OUTLINED_FUNCTION_7_10();
  [v2 layoutMargins];
  v11 = v10;
  v13 = v12;
  sub_24E035D18(v15);
  return v7 + v11 + v13;
}

uint64_t sub_24E034C54()
{
  v1 = v0;
  v2 = sub_24E344048();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmallLockupView();
  v37.receiver = v0;
  v37.super_class = v6;
  objc_msgSendSuper2(&v37, sel_layoutSubviews);
  sub_24E034E40(&v18);
  [v0 bounds];
  [v0 layoutMargins];
  OUTLINED_FUNCTION_7_10();
  v7 = [v0 traitCollection];
  v8 = sub_24E3483C8();

  if (v8)
  {
    sub_24DFA99C8(v1, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
  }

  else
  {
    sub_24DFAA7B4(v1, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
  }

  (*(v3 + 8))(v5, v2);
  return sub_24E035D18(&v18);
}

id sub_24E034E40@<X0>(void *a1@<X8>)
{
  sub_24E03366C(__src);
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_artworkView);
  v25 = type metadata accessor for ArtworkView();
  v26 = MEMORY[0x277D22A58];
  *&v24 = v3;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_headingLabel);
  v5 = type metadata accessor for DynamicTypeLabel();
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_titleLabel);
  v10 = MEMORY[0x277D22A68];
  v22 = v5;
  v23 = MEMORY[0x277D22A68];
  v20 = MEMORY[0x277D22A68];
  *&v21 = v9;
  v11 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_subtitleLabel);
  v19 = v5;
  v17 = v11;
  *&v18 = v11;
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_hasChevron) == 1)
  {
    v8 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_chevronView);
    v6 = sub_24DF88A8C(0, &qword_27F1E1D30);
    v12 = v8;
    v7 = MEMORY[0x277D22A58];
  }

  memcpy(a1, __src, 0xF9uLL);
  sub_24DE56CE8(&v24, (a1 + 32));
  a1[37] = v4;
  a1[40] = v5;
  a1[41] = v10;
  sub_24DE56CE8(&v21, (a1 + 42));
  sub_24DE56CE8(&v18, (a1 + 47));
  a1[52] = v8;
  a1[53] = 0;
  a1[54] = 0;
  a1[55] = v6;
  a1[56] = v7;
  v13 = v3;
  v14 = v4;
  v15 = v9;

  return v17;
}

void sub_24E034FB8()
{
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_headingLabel) setText_];
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_titleLabel) setText_];
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_subtitleLabel) setText_];
  sub_24E0D8ED8(0, 0);
}

double sub_24E035038(double a1, double a2, uint64_t a3, void *a4)
{
  v7 = sub_24E344788();
  swift_allocObject();
  v29 = sub_24E344768();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1460);
  sub_24E347128();

  sub_24DF88A8C(0, &qword_27F1DEE28);
  if (qword_27F1DDFD0 != -1)
  {
    OUTLINED_FUNCTION_3_37();
    swift_once();
  }

  v28 = v7;
  v8 = sub_24E344158();
  v9 = __swift_project_value_buffer(v8, &unk_27F20BB70);
  swift_getObjectType();
  v10 = [a4 traitCollection];
  MEMORY[0x25303F0C0](v9, v10);

  sub_24E344398();
  sub_24E3443A8();
  v11 = sub_24E344868();
  swift_allocObject();
  v30 = OUTLINED_FUNCTION_13_16();
  swift_getKeyPath();
  sub_24E347128();

  if (qword_27F1DDFD8 != -1)
  {
    OUTLINED_FUNCTION_2_19();
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, &qword_27F20BB88);
  v13 = [a4 traitCollection];
  MEMORY[0x25303F0C0](v12, v13);

  v14 = [a4 traitCollection];
  swift_getKeyPath();
  v15 = a4;
  sub_24E347128();

  sub_24E3483C8();

  sub_24E344398();
  sub_24E3443A8();
  OUTLINED_FUNCTION_14_10();
  v16 = sub_24E344858();
  swift_getKeyPath();
  sub_24E347128();

  if (qword_27F1DDFE0 != -1)
  {
    OUTLINED_FUNCTION_20_6();
    swift_once();
  }

  v17 = __swift_project_value_buffer(v8, &qword_27F20BBA0);
  v18 = [v15 traitCollection];
  MEMORY[0x25303F0C0](v17, v18);

  sub_24E344398();
  sub_24E3443A8();
  OUTLINED_FUNCTION_14_10();
  v19 = OUTLINED_FUNCTION_13_16();
  sub_24E03366C(v45);
  sub_24E035CBC(v45, __src);
  v38 = v28;
  v39 = MEMORY[0x277D228B0];
  *&v37 = v29;
  v20 = MEMORY[0x277D228F0];
  v35 = v11;
  v36 = MEMORY[0x277D228F0];
  v33 = MEMORY[0x277D228F0];
  *&v34 = v16;
  v32 = v11;
  *&v31 = v19;
  swift_getKeyPath();

  sub_24E347128();

  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (LOBYTE(__dst[0]) == 1)
  {
    swift_allocObject();
    v23 = sub_24E344768();
    v22 = MEMORY[0x277D228B0];
    v21 = v28;
  }

  memcpy(__dst, __src, 0xF9uLL);
  sub_24DE56CE8(&v37, v42);
  v42[5] = v30;
  v42[8] = v11;
  v42[9] = v20;
  sub_24DE56CE8(&v34, &v43);
  sub_24DE56CE8(&v31, v44);
  v44[5] = v23;
  v44[6] = 0;
  v44[7] = 0;
  v44[8] = v21;
  v44[9] = v22;
  v24 = sub_24DFC1764();
  v25 = [v24 traitCollection];
  v26 = sub_24E3483C8();

  if (v26)
  {
    sub_24DFABA30(v24);
  }

  else
  {
    sub_24DFAC688(a1);
  }

  OUTLINED_FUNCTION_7_10();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_10_19();
  sub_24E348558();
  OUTLINED_FUNCTION_7_10();

  sub_24E035D18(__dst);
  sub_24E035D6C(v45);
  return a2;
}

id sub_24E0355EC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_headingLabel];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1460);
  sub_24E347128();

  if (v12)
  {
    v3 = sub_24E347CB8();
  }

  else
  {
    v3 = 0;
  }

  [v2 setText_];

  v4 = *&v1[OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_titleLabel];
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_25();

  if (v12)
  {
    v5 = sub_24E347CB8();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText_];

  v6 = [v1 traitCollection];
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_25();

  sub_24E3483C8();

  [v4 setNumberOfLines_];
  v7 = *&v1[OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_subtitleLabel];
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_25();

  if (v12)
  {
    v8 = sub_24E347CB8();
  }

  else
  {
    v8 = 0;
  }

  [v7 setText_];

  if (GKIsXRUIIdiomShouldUsePadUI() && [v7 hasContent])
  {
    [v4 setNumberOfLines_];
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_6_25();

  sub_24E0348CC(v11);
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_25();

  v9 = *&v1[OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_selectedBackgroundColor];
  *&v1[OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_selectedBackgroundColor] = v11;

  return [v1 setNeedsLayout];
}

uint64_t sub_24E035888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1460);
  sub_24E347128();

  v9 = v12[0];
  if (v12[0])
  {
    if (qword_27F1DD6D8 != -1)
    {
      swift_once();
    }

    v12[0] = 0;
    v12[1] = 0;
    v10 = sub_24E0ABE8C(v12, 0, *&qword_27F20AB78, unk_27F20AB80);
    v11 = *(v6 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_artworkView);
    LOBYTE(v12[0]) = *(v9 + 56);
    sub_24E0D8DC8(v12);
    if (*(a6 + qword_27F1EB198))
    {

      sub_24E0624A4(v10, 2, 1, v11);
    }
  }

  return result;
}

uint64_t sub_24E0359C8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + qword_27F1EB198))
  {
    v3 = *(v2 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_artworkView);

    sub_24E17DAC4(v3, 1);
  }

  return result;
}

id sub_24E035AFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallLockupView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E035C70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_6_25()
{

  return sub_24E347128();
}

uint64_t OUTLINED_FUNCTION_13_16()
{

  return sub_24E344858();
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_15_12()
{

  return [v0 (v1 + 2040)];
}

uint64_t sub_24E035EA4()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 8.0;
  v2 = 10.0;
  if (!result)
  {
    v2 = 8.0;
  }

  v3 = 2.0;
  if (result)
  {
    v3 = 3.0;
    v1 = 12.0;
  }

  *&xmmword_27F1E1468 = v2;
  *(&xmmword_27F1E1468 + 1) = v3;
  qword_27F1E1478 = *&v1;
  return result;
}

void AchievementBadge.Metrics.init(fontSize:ringThickness:innerRingSpacing:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

uint64_t sub_24E035EFC()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 14.0;
  if (result)
  {
    v1 = 13.0;
  }

  xmmword_27F1E1480 = xmmword_24E370AB0;
  qword_27F1E1490 = *&v1;
  return result;
}

double sub_24E035F5C()
{
  result = 7.0;
  xmmword_27F1E1498 = xmmword_24E370AC0;
  qword_27F1E14A8 = 0x4020000000000000;
  return result;
}

double sub_24E035F9C@<D0>(void *a1@<X0>, double *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = *a2;
  *a4 = *a3;
  *(a4 + 16) = result;
  return result;
}

uint64_t _s7MetricsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7MetricsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_24E036074()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  if (result)
  {
    v1 = 0;
    v2 = xmmword_24E370B00;
    v3 = xmmword_24E370B10;
    v4 = 12.0;
    v5 = 0x406F400000000000;
    v6 = 32.0;
  }

  else
  {
    v3 = *MEMORY[0x277D75060];
    v2 = *(MEMORY[0x277D75060] + 16);
    v1 = 1;
    v4 = 11.0;
    v6 = 18.0;
    v5 = 0x4069000000000000;
  }

  qword_27F1E14C8 = MEMORY[0x277D839F8];
  unk_27F1E14D0 = MEMORY[0x277D22A30];
  qword_27F1E14B0 = *&v6;
  qword_27F1E14F0 = MEMORY[0x277D839F8];
  unk_27F1E14F8 = MEMORY[0x277D22A30];
  qword_27F1E14D8 = *&v4;
  qword_27F1E1518 = MEMORY[0x277D839F8];
  unk_27F1E1520 = MEMORY[0x277D22A30];
  qword_27F1E1500 = 0x4030000000000000;
  qword_27F1E1560 = MEMORY[0x277D839F8];
  unk_27F1E1568 = MEMORY[0x277D22A30];
  qword_27F1E1548 = v5;
  unk_27F1E1528 = v3;
  unk_27F1E1538 = v2;
  byte_27F1E1570 = v1;
  return result;
}

id GKMultiplayerFooterView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

char *GKMultiplayerFooterView.init(frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_29();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v126 = &v114 - v3;
  v4 = sub_24E343FC8();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v17 = v16 - v15;
  v18 = (v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_buttonTitle);
  *v18 = 0;
  v18[1] = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_backgroundView) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_topSeparator) = 0;
  v19 = (v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_startGameHandler);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_inviteFriendsHandler);
  *v20 = 0;
  v20[1] = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView____lazy_storage___secondaryButtonFocusGuide) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView____lazy_storage___primaryButtonFocusGuide) = 0;
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v125 = v13;
  v123 = v4;
  if (ShouldUsePadUI)
  {
    if (qword_27F1DE040 != -1)
    {
      swift_once();
    }

    v122 = v1;
    v22 = __swift_project_value_buffer(v11, &unk_27F20BCC0);
    v23 = *(v13 + 16);
    v120 = v22;
    v23(v17);
    v121 = v17;
    if (qword_27F1DE030 != -1)
    {
      OUTLINED_FUNCTION_1_47();
    }

    v119 = __swift_project_value_buffer(v11, qword_27F20BC90);
    (v23)(v10, v119, v11);
    LODWORD(v118) = *MEMORY[0x277D22618];
    v124 = v23;
    v117 = *(v6 + 104);
    v117(v10);
    v24 = *MEMORY[0x277D76818];
    v25 = v4;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0B98);
    v27 = v10;
    v28 = swift_allocObject();
    v29 = *(*v28 + 88);
    v116 = *(v6 + 32);
    v116(v28 + v29, v27, v25);
    v115 = type metadata accessor for RoundedTitledButton();
    v30 = objc_allocWithZone(v115);
    v31 = v24;

    v32 = v31;
    v33 = v11;
    v34 = v121;
    v35 = sub_24E0391A0(v121, v28, v32, 0, 1, v30, 52.0);

    v36 = v122;
    *(v122 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_primaryButton) = v35;
    (v124)(v34, v120, v33);
    (v124)(v27, v119, v33);
    v37 = v123;
    (v117)(v27, v118, v123);
    v38 = v124;
    swift_allocObject();
    OUTLINED_FUNCTION_9_19();
    v41 = v27;
    v1 = v36;
    v116(v40 + *(v39 + 88), v41, v37);
    v42 = objc_allocWithZone(v115);

    v43 = v32;
    v44 = v34;
    v11 = v33;
    v45 = 52.0;
    v46 = v26;
    v47 = v43;
    v48 = 0;
    v49 = 1;
  }

  else
  {
    if (qword_27F1DE030 != -1)
    {
      OUTLINED_FUNCTION_1_47();
    }

    v120 = __swift_project_value_buffer(v11, qword_27F20BC90);
    v38 = *(v13 + 16);
    OUTLINED_FUNCTION_14_11();
    v38();
    OUTLINED_FUNCTION_14_11();
    v38();
    LODWORD(v121) = *MEMORY[0x277D22618];
    v50 = *(v6 + 104);
    v122 = v6 + 104;
    v124 = v50;
    (v50)(v10);
    v51 = v10;
    v114 = v10;
    v52 = *MEMORY[0x277D76818];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0B98);
    swift_allocObject();
    OUTLINED_FUNCTION_9_19();
    v54 = *(v53 + 88);
    v119 = *(v6 + 32);
    v119(v55 + v54, v51);
    v118 = type metadata accessor for RoundedTitledButton();
    v56 = objc_allocWithZone(v118);
    v57 = v52;

    v58 = v57;
    v59 = sub_24E0391A0(v17, v4, v58, 1, 0, v56, 50.0);

    *(v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_primaryButton) = v59;
    OUTLINED_FUNCTION_14_11();
    v38();
    v60 = v114;
    OUTLINED_FUNCTION_14_11();
    v38();
    v61 = v123;
    (v124)(v60, v121, v123);
    swift_allocObject();
    OUTLINED_FUNCTION_9_19();
    (v119)(v63 + *(v62 + 88), v60, v61);
    v42 = objc_allocWithZone(v118);

    v43 = v58;
    v44 = v17;
    v45 = 50.0;
    v46 = v60;
    v47 = v43;
    v48 = 1;
    v49 = 0;
  }

  v64 = sub_24E0391A0(v44, v46, v47, v48, v49, v42, v45);

  *(v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_secondaryButton) = v64;
  if (qword_27F1DDFE0 != -1)
  {
    swift_once();
  }

  v65 = __swift_project_value_buffer(v11, &qword_27F20BBA0);
  v66 = v126;
  (v38)(v126, v65, v11);
  __swift_storeEnumTagSinglePayload(v66, 0, 1, v11);
  v67 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v68 = sub_24E0AEF24(v66, 0, 2, 0, 1, 0);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_statusLabel) = v68;
  [v68 setMaximumContentSizeCategory_];
  v69 = type metadata accessor for GKMultiplayerFooterView();
  v129 = v1;
  v130 = v69;
  v70 = OUTLINED_FUNCTION_28();
  v73 = objc_msgSendSuper2(v71, v72, v70);
  v74 = sub_24E347CB8();
  v75 = GKGameCenterUIFrameworkBundle();
  v76 = GKGetLocalizedStringFromTableInBundle();

  v77 = sub_24E347CF8();
  v79 = v78;

  sub_24E037B0C(v77, v79);
  v80 = OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_primaryButton;
  v81 = *&v73[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_primaryButton];
  OUTLINED_FUNCTION_21_2();
  v82 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = &v81[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_tapHandler];
  v84 = *&v81[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_tapHandler];
  *v83 = sub_24E0397CC;
  v83[1] = v82;
  v85 = v81;

  sub_24DE73FA0(v84);

  v86 = *&v73[v80];
  v87 = type metadata accessor for RoundedTitledButton();
  v128.receiver = v86;
  v128.super_class = v87;
  v88 = v86;
  objc_msgSendSuper2(&v128, sel__setCornerRadius_, 14.0);
  sub_24E2B8470();

  v89 = sub_24E347CB8();
  v90 = GKGameCenterUIFrameworkBundle();
  v91 = GKGetLocalizedStringFromTableInBundle();

  v92 = sub_24E347CF8();
  v94 = v93;

  sub_24E037CC0(v92, v94);
  v95 = OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_secondaryButton;
  v96 = *&v73[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_secondaryButton];
  OUTLINED_FUNCTION_21_2();
  v97 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = v96;

  v99 = &v98[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_tapHandler];
  v100 = *&v98[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_tapHandler];
  *v99 = sub_24E0397FC;
  v99[1] = v97;

  sub_24DE73FA0(v100);

  v127.receiver = *&v73[v95];
  v127.super_class = v87;
  v101 = v127.receiver;
  objc_msgSendSuper2(&v127, sel__setCornerRadius_, 14.0);
  sub_24E2B8470();

  v102 = OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_statusLabel;
  [*&v73[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_statusLabel] setTextAlignment_];
  v103 = *&v73[v102];
  v104 = objc_opt_self();
  v105 = v103;
  v106 = [v104 secondaryLabelColor];
  [v105 setTextColor_];

  v107 = [*&v73[v102] layer];
  [v107 setCompositingFilter_];

  v108 = *&v73[v80];
  v109 = v73;
  [v109 addSubview_];
  [v109 addSubview_];
  [v109 addSubview_];
  v110 = sub_24E03854C();
  [v109 addLayoutGuide_];

  v111 = sub_24E038560();
  [v109 addLayoutGuide_];

  sub_24E036DF8();
  v112 = [v104 whiteColor];
  [v109 setTintColor_];

  return v109;
}

uint64_t sub_24E036D30(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = Strong;
    if (Strong)
    {
      Strong = type metadata accessor for GKMultiplayerFooterView();
    }

    else
    {
      v7[1] = 0;
      v7[2] = 0;
    }

    v7[0] = v6;
    v7[3] = Strong;
    a2();

    return sub_24DF8894C(v7);
  }

  return result;
}

void sub_24E036DF8()
{
  v26 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24E36CB10;
  v2 = sub_24E03854C();
  v3 = [v2 topAnchor];

  v4 = *&v0[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_secondaryButton];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v6;
  v7 = OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView____lazy_storage___secondaryButtonFocusGuide;
  v8 = [*&v0[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView____lazy_storage___secondaryButtonFocusGuide] bottomAnchor];
  v9 = OUTLINED_FUNCTION_0_61([v4 &selRef_contentView + 5]);

  *(v1 + 40) = v9;
  v10 = [*&v0[v7] leadingAnchor];
  v11 = OUTLINED_FUNCTION_0_61([v0 leadingAnchor]);

  *(v1 + 48) = v11;
  v12 = [*&v0[v7] trailingAnchor];
  v13 = OUTLINED_FUNCTION_23_11([v4 trailingAnchor]);

  *(v1 + 56) = v13;
  v14 = sub_24E038560();
  v15 = [v14 topAnchor];

  v16 = *&v0[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_primaryButton];
  v17 = OUTLINED_FUNCTION_0_61([v16 topAnchor]);

  *(v1 + 64) = v17;
  v18 = OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView____lazy_storage___primaryButtonFocusGuide;
  v19 = [*&v0[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView____lazy_storage___primaryButtonFocusGuide] bottomAnchor];
  v20 = OUTLINED_FUNCTION_0_61([v16 bottomAnchor]);

  *(v1 + 72) = v20;
  v21 = [*&v0[v18] leadingAnchor];
  v22 = OUTLINED_FUNCTION_23_11([v16 leadingAnchor]);

  *(v1 + 80) = v22;
  v23 = [*&v0[v18] trailingAnchor];
  v24 = [v0 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v1 + 88) = v25;
  sub_24DF88A8C(0, &qword_27F1E1F10);
  v27 = sub_24E347EE8();

  [v26 activateConstraints_];
}

void sub_24E037188()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_buttonTitle);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_topSeparator) = 0;
  v2 = (v0 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_startGameHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_inviteFriendsHandler);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView____lazy_storage___secondaryButtonFocusGuide) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView____lazy_storage___primaryButtonFocusGuide) = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E03725C(double a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_backgroundView;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_backgroundView);
  if (v4)
  {
    goto LABEL_5;
  }

  v5 = [objc_opt_self() effectWithStyle_];
  v6 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  sub_24E0374D4(v6);
  sub_24E03751C([objc_allocWithZone(MEMORY[0x277D75D18]) init]);
  v7 = *(v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_topSeparator);
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 separatorColor];
    [v9 setBackgroundColor_];
  }

  v4 = *(v1 + v3);
  if (v4)
  {
LABEL_5:
    v11 = *(v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_topSeparator);
    if (v11)
    {
      v12 = a1 / 30.0;
      if (v12 < 0.0)
      {
        v12 = 0.0;
      }

      if (a1 / 30.0 >= 1.0)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = v12;
      }

      v14 = v4;
      v15 = v11;
      v16 = [v14 layer];
      *&v17 = v13;
      [v16 setOpacity_];

      v19 = [v15 layer];
      *&v18 = v13;
      [v19 setOpacity_];
    }
  }
}

id sub_24E0374AC()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_backgroundView];
  if (v1)
  {
    return [v0 insertSubview:v1 atIndex:0];
  }

  return result;
}

id sub_24E0374F4()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_topSeparator];
  if (v1)
  {
    return [v0 insertSubview:v1 atIndex:1];
  }

  return result;
}

void sub_24E03753C(void *a1, uint64_t *a2, void (*a3)(void))
{
  v6 = *a2;
  v7 = *(v3 + *a2);
  if (v7)
  {
    [v7 removeFromSuperview];
    v6 = *a2;
    v9 = *(v3 + *a2);
  }

  else
  {
    v9 = 0;
  }

  *(v3 + v6) = a1;
  v10 = a1;

  a3();
}

void sub_24E03765C(char a1)
{
  OUTLINED_FUNCTION_11_12();
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RoundedTitledButton();
  objc_msgSendSuper2(&v3, sel_setEnabled_, a1 & 1);
  sub_24E2B8584();
}

void (*sub_24E0376B0(objc_super **a1))(char **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_primaryButton);
  v3[3].receiver = v4;
  v5 = type metadata accessor for RoundedTitledButton();
  v3[3].super_class = v5;
  v3->receiver = v4;
  v3->super_class = v5;
  LOBYTE(v3[4].receiver) = [(objc_super *)v3 isEnabled];
  return sub_24E03773C;
}

void sub_24E03773C(char **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[64];
  v4 = *(*a1 + 7);
  v5 = 32;
  if (a2)
  {
    v5 = 16;
  }

  v6 = 40;
  if (a2)
  {
    v6 = 24;
  }

  *&v2[v5] = *(*a1 + 6);
  *&v2[v6] = v4;
  objc_msgSendSuper2(&v2[v5], sel_setEnabled_, v3);
  sub_24E2B8584();

  free(v2);
}

id sub_24E0377F0(void *a1)
{
  v3.receiver = *(v1 + *a1);
  v3.super_class = type metadata accessor for RoundedTitledButton();
  return objc_msgSendSuper2(&v3, sel_isEnabled);
}

id sub_24E03788C(char a1)
{
  OUTLINED_FUNCTION_11_12();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for RoundedTitledButton();
  objc_msgSendSuper2(&v4, sel_setEnabled_, a1 & 1);
  sub_24E2B8584();
  return [v1 setNeedsLayout];
}

id (*sub_24E0378FC(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_13_17(a1);
  OUTLINED_FUNCTION_11_12();
  v3 = type metadata accessor for RoundedTitledButton();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 24) = objc_msgSendSuper2(v1, sel_isEnabled);
  return sub_24E037960;
}

id (*sub_24E037A58(uint64_t a1))(void **a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_secondaryButton);
  *a1 = v3;
  *(a1 + 8) = [v3 isHidden];
  return sub_24E037AB4;
}

uint64_t (*sub_24E037B18(uint64_t a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_13_17(a1);
  *v1 = sub_24E037AE0();
  v1[1] = v2;
  return sub_24E037B5C;
}

id sub_24E037B8C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_24E347CB8();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_24E037C38(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
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

id sub_24E037CCC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *&v3[*a3];
  if (a2)
  {
    v5 = sub_24E347CB8();
  }

  else
  {
    v5 = 0;
  }

  [v4 setTitle:v5 forState:0];

  return [v3 setNeedsLayout];
}

uint64_t sub_24E037D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_13_0();
  return a5(v6);
}

uint64_t (*sub_24E037D94(uint64_t a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_13_17(a1);
  *v1 = sub_24E037C0C();
  v1[1] = v2;
  return sub_24E037DD8;
}

uint64_t sub_24E037DF0(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_13_0();
    a3(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_13_0();
    return (a3)(v6);
  }
}

uint64_t sub_24E037E94(void *a1, SEL *a2)
{
  v3 = [*(v2 + *a1) *a2];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_24E347CF8();

  return v5;
}

id sub_24E037F14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (sub_24E347DD8() >= 1)
    {
      v5 = *&v2[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_statusLabel];
      v6 = a1;
      v7 = a2;
      goto LABEL_6;
    }
  }

  v5 = *&v2[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_statusLabel];
  v6 = 32;
  v7 = 0xE100000000000000;
LABEL_6:
  sub_24DFA0B40(v6, v7, v5);

  return [v2 setNeedsLayout];
}

uint64_t (*sub_24E037FA4(uint64_t a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_13_17(a1);
  *v1 = sub_24E037E80();
  v1[1] = v2;
  return sub_24E037FE8;
}

uint64_t sub_24E0380E0@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_24E038020();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_24DFD8674;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_24E038150(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24DFD865C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24DE56C38(v1);
  return sub_24E0380D4(v4, v3);
}

id sub_24E038250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = a3();
  if (v5)
  {
    v9[4] = v5;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24E00B24C;
    v9[3] = a4;
    v7 = _Block_copy(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_24E038304()
{
  OUTLINED_FUNCTION_3_31();
  v1 = *v0;
  sub_24DE56C38(*v0);
  return v1;
}

uint64_t sub_24E0383FC@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_24E0382F8();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_24DFA0D30;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_24E03846C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24DFA0D28;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24DE56C38(v1);
  return sub_24E0383F0(v4, v3);
}

id sub_24E038574(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = sub_24E0385D4(v2, a2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_24E0385D4(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24E369990;
  v6 = *(a1 + *a2);
  *(v5 + 32) = v6;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_13_0();
  sub_24DFD7FD0(v8, v9);
  return v4;
}

void sub_24E038668()
{
  OUTLINED_FUNCTION_11_12();
  v1 = type metadata accessor for RoundedTitledButton();
  v4.receiver = v0;
  v4.super_class = v1;
  v2 = objc_msgSendSuper2(&v4, sel_isEnabled);
  v3.receiver = v0;
  v3.super_class = v1;
  objc_msgSendSuper2(&v3, sel_setEnabled_, v2);
  sub_24E2B8584();
}

uint64_t sub_24E038730()
{
  v1 = v0;
  v2 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for GKMultiplayerFooterView();
  objc_msgSendSuper2(&v34, sel_layoutSubviews);
  sub_24E038998(v24);
  OUTLINED_FUNCTION_11_12();
  v26 = type metadata accessor for DynamicTypeLabel();
  v27 = MEMORY[0x277D22A68];
  v25 = v0;
  v9 = *&v0[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_primaryButton];
  v29 = type metadata accessor for RoundedTitledButton();
  v30 = MEMORY[0x277D22A58];
  v28 = v9;
  v10 = *&v0[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_secondaryButton];
  v32 = v29;
  v33 = MEMORY[0x277D22A58];
  v31 = v10;
  v11 = v0;
  v12 = v9;
  v13 = v10;
  [v0 bounds];
  [v0 layoutMargins];
  v16 = OUTLINED_FUNCTION_7_22(v14, v15);
  sub_24E0DA4DC(v16, v17, v18);
  (*(v4 + 8))(v8, v2);
  v19 = *&v0[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_backgroundView];
  if (v19)
  {
    v20 = v19;
    [v1 bounds];
    [v20 setFrame_];
  }

  v21 = *&v1[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_topSeparator];
  if (v21)
  {
    v22 = v21;
    [v1 bounds];
    [v22 setFrame_];
  }

  return sub_24E03982C(v24);
}

void sub_24E038998(void *a1@<X8>)
{
  if (!GKIsXRUIIdiomShouldUsePadUI())
  {
    v6 = [v1 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 && !GKIsXRUIIdiomShouldUsePhoneUI())
    {
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v8 = [v1 window];
      if (v8)
      {
        v9 = v8;
        [v9 frame];
        Width = CGRectGetWidth(v39);
        [v9 frame];
        OUTLINED_FUNCTION_21_8();
        v11 = OUTLINED_FUNCTION_20_10();

        v12 = v11 < Width;
      }

      else
      {
        v15 = objc_opt_self();
        v16 = [v15 mainScreen];
        [v16 bounds];
        OUTLINED_FUNCTION_8_2();

        v40.origin.x = OUTLINED_FUNCTION_7_2();
        v17 = CGRectGetWidth(v40);
        [objc_msgSend(v15 mainScreen)];
        OUTLINED_FUNCTION_21_8();
        v12 = OUTLINED_FUNCTION_20_10() < v17;
      }

      v14 = v12;
      v13 = v14 ^ 1;
    }

    if (qword_27F1DD728 != -1)
    {
      OUTLINED_FUNCTION_4_33();
    }

    sub_24E03A4E4(&qword_27F1E14B0, __src);
    v18 = (v14 & 1) == 0 && !GKIsPadUIIdiom();
    LOBYTE(__src[24]) = v18;
    if (GKIsPadUIIdiom())
    {
      v19 = &__src[18];
      *&__src[15] = xmmword_24E369970;
      __src[17] = 0x4047000000000000;
      v20 = 20.0;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_27;
      }

      v19 = &__src[17];
      v20 = 10.0;
    }

    *v19 = v20;
LABEL_27:
    v21 = [objc_opt_self() mainScreen];
    [v21 bounds];
    OUTLINED_FUNCTION_8_2();

    v41.origin.x = OUTLINED_FUNCTION_7_2();
    v22 = CGRectGetWidth(v41);
    if (v22 <= 374.0)
    {
      v24 = MEMORY[0x277D839F8];
      v37 = MEMORY[0x277D22A30];
      v25 = 0x4020000000000000;
    }

    else
    {
      if (v22 > 736.0)
      {
        v37 = MEMORY[0x277D22A30];
        if (v22 <= 1024.0)
        {
          v23 = 0x4030000000000000;
        }

        else
        {
          v23 = 0x4038000000000000;
        }

        v36 = MEMORY[0x277D839F8];
        *&v35 = v23;
        goto LABEL_36;
      }

      v24 = MEMORY[0x277D839F8];
      v37 = MEMORY[0x277D22A30];
      v25 = 0x4024000000000000;
    }

    v36 = v24;
    *&v35 = v25;
LABEL_36:
    __swift_destroy_boxed_opaque_existential_1(&__src[10]);
    sub_24DF88BF0(&v35, &__src[10]);
    if (v13)
    {
      [v1 bounds];
      [v1 layoutMargins];
      v42.origin.x = OUTLINED_FUNCTION_7_22(v26, v27);
      v42.origin.y = v28;
      v42.size.width = v29;
      v30 = CGRectGetWidth(v42);
    }

    else
    {
      type metadata accessor for PageGrid();
      [v1 bounds];
      v31 = [v1 traitCollection];
      v32 = PageGrid.__allocating_init(size:traitCollection:)();
      v33 = *&v32[OBJC_IVAR___GameLayerPageGrid_columnWidth] + *&v32[OBJC_IVAR___GameLayerPageGrid_columnWidth];
      v34 = *&v32[OBJC_IVAR___GameLayerPageGrid_interColumnSpacing];

      v30 = v33 + v34;
    }

    v36 = MEMORY[0x277D85048];
    v37 = MEMORY[0x277D225F8];
    *&v35 = v30;
    __swift_destroy_boxed_opaque_existential_1(&__src[19]);
    sub_24DF88BF0(&v35, &__src[19]);
    memcpy(a1, __src, 0xC1uLL);
    OUTLINED_FUNCTION_19_10();
    return;
  }

  if (qword_27F1DD728 != -1)
  {
    OUTLINED_FUNCTION_4_33();
  }

  OUTLINED_FUNCTION_19_10();

  sub_24E03A4E4(v3, v4);
}

void sub_24E038DB4(double a1)
{
  sub_24E038998(v9);
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_statusLabel);
  v9[28] = type metadata accessor for DynamicTypeLabel();
  v9[29] = MEMORY[0x277D22A68];
  v9[25] = v3;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_primaryButton);
  v10 = type metadata accessor for RoundedTitledButton();
  v11 = MEMORY[0x277D22A58];
  v9[30] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerFooterView_secondaryButton);
  v13 = v10;
  v14 = MEMORY[0x277D22A58];
  v12 = v5;
  v6 = v3;
  v7 = v4;
  v8 = v5;
  sub_24E0DB3D4(a1);
  OUTLINED_FUNCTION_8_2();
  sub_24E03982C(v9);
  OUTLINED_FUNCTION_7_2();
}

uint64_t sub_24E038FA4()
{
  result = OUTLINED_FUNCTION_3_31();
  v2 = *v0;
  if (*v0)
  {

    v2(v3);
    return sub_24DE73FA0(v2);
  }

  return result;
}

uint64_t sub_24E039018(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_24DF8894C(v9);
}

id GKMultiplayerFooterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GKMultiplayerFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_24E0391A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, _BYTE *a6, double a7)
{
  ObjectType = swift_getObjectType();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v43 - v16;
  v46[3] = &type metadata for CappedSizeStaticDimension;
  v46[4] = sub_24E03A540();
  *v46 = a7;
  v46[1] = a2;
  v46[2] = a3;
  v18 = &a6[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_tapHandler];
  *v18 = 0;
  v18[1] = 0;
  v19 = &a6[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_horizontalOutsets];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v19[32] = 1;
  *&a6[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_visualEffectView] = 0;
  sub_24DF89628(v46, &a6[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_height]);
  a6[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_usesCapsuleRounding] = a5;
  v45.receiver = a6;
  v45.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v45, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v21 = sub_24E344158();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v17, a1, v21);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v21);
  v23 = v20;
  sub_24E28CB2C(v17);
  [v23 setLayoutMargins_];
  [v23 addTarget:v23 action:sel_didTapButton_ forControlEvents:0x2000];
  if (qword_27F1DDDD8 != -1)
  {
    swift_once();
  }

  [v23 setTintColor_];

  if (a4)
  {
    v43 = a1;
    v24 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
    v25 = [objc_opt_self() _gkGameLayerButtonVisualEffect];
    if (!v25)
    {
      sub_24DF88A8C(0, &qword_27F1E9F20);
      sub_24E347F08();
      v25 = sub_24E347EE8();
    }

    [v24 setBackgroundEffects_];

    v26 = *&v23[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_visualEffectView];
    *&v23[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_visualEffectView] = v24;
    v27 = v24;

    v28 = v27;
    [v23 insertSubview:v28 atIndex:0];
    v29 = [v28 layer];
    [v29 setCornerRadius_];

    v30 = [v28 layer];
    [v30 setCornerCurve_];

    v31 = [v28 layer];
    [v31 setMasksToBounds_];

    [v28 setUserInteractionEnabled_];
    v32 = [v23 titleLabel];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 layer];

      [v34 setCompositingFilter_];
    }

    v23[OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_titleColorFollowsTintColor] = 0;
    sub_24E28D74C();
    v35 = objc_opt_self();
    v36 = [v35 systemBlackColor];
    v37 = [v36 colorWithAlphaComponent_];

    [v23 setTitleColor:v37 forState:0];
    v38 = [v35 systemBlackColor];
    v39 = [v38 colorWithAlphaComponent_];

    [v23 setTitleColor:v39 forState:1];
    v40 = [v35 systemBlackColor];
    v41 = [v40 colorWithAlphaComponent_];

    [v23 setTitleColor:v41 forState:2];
    a1 = v43;
  }

  else
  {
    v44.receiver = v23;
    v44.super_class = ObjectType;
    objc_msgSendSuper2(&v44, sel__setCornerRadius_, 10.0);
    sub_24E2B8470();
    if (qword_27F1DDDC8 != -1)
    {
      swift_once();
    }

    [v23 _setBackgroundColor_];
  }

  (*(v22 + 8))(a1, v21);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return v23;
}

char *sub_24E039EA0(uint64_t a1, uint64_t a2, char a3, char a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - v12;
  v14 = sub_24E3444F8();
  v44[3] = v14;
  v44[4] = MEMORY[0x277D22798];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  (*(*(v14 - 8) + 32))(boxed_opaque_existential_1, a2, v14);
  v16 = &a5[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_tapHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = &a5[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_horizontalOutsets];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  *&a5[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_visualEffectView] = 0;
  sub_24DF89628(v44, &a5[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_height]);
  a5[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_usesCapsuleRounding] = a4;
  v43.receiver = a5;
  v43.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v43, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v19 = sub_24E344158();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v13, a1, v19);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v19);
  v21 = v18;
  sub_24E28CB2C(v13);
  [v21 setLayoutMargins_];
  [v21 addTarget:v21 action:sel_didTapButton_ forControlEvents:0x2000];
  if (qword_27F1DDDD8 != -1)
  {
    swift_once();
  }

  [v21 setTintColor_];

  if (a3)
  {
    v41 = a1;
    v22 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
    v23 = [objc_opt_self() _gkGameLayerButtonVisualEffect];
    if (!v23)
    {
      sub_24DF88A8C(0, &qword_27F1E9F20);
      sub_24E347F08();
      v23 = sub_24E347EE8();
    }

    [v22 setBackgroundEffects_];

    v24 = *&v21[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_visualEffectView];
    *&v21[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_visualEffectView] = v22;
    v25 = v22;

    v26 = v25;
    [v21 insertSubview:v26 atIndex:0];
    v27 = [v26 layer];
    [v27 setCornerRadius_];

    v28 = [v26 layer];
    [v28 setCornerCurve_];

    v29 = [v26 layer];
    [v29 setMasksToBounds_];

    [v26 setUserInteractionEnabled_];
    v30 = [v21 titleLabel];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 layer];

      [v32 setCompositingFilter_];
    }

    v21[OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_titleColorFollowsTintColor] = 0;
    sub_24E28D74C();
    v33 = objc_opt_self();
    v34 = [v33 systemBlackColor];
    v35 = [v34 colorWithAlphaComponent_];

    [v21 setTitleColor:v35 forState:0];
    v36 = [v33 systemBlackColor];
    v37 = [v36 colorWithAlphaComponent_];

    [v21 setTitleColor:v37 forState:1];
    v38 = [v33 systemBlackColor];
    v39 = [v38 colorWithAlphaComponent_];

    [v21 setTitleColor:v39 forState:2];
    a1 = v41;
  }

  else
  {
    v42.receiver = v21;
    v42.super_class = ObjectType;
    objc_msgSendSuper2(&v42, sel__setCornerRadius_, 10.0);
    sub_24E2B8470();
    if (qword_27F1DDDC8 != -1)
    {
      swift_once();
    }

    [v21 _setBackgroundColor_];
  }

  (*(v20 + 8))(a1, v19);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v21;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E03A540()
{
  result = qword_27F1E15C8;
  if (!qword_27F1E15C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E15C8);
  }

  return result;
}

id OUTLINED_FUNCTION_0_61(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_1_47()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_33()
{

  return swift_once();
}

double OUTLINED_FUNCTION_20_10()
{
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return CGRectGetHeight(*&v5);
}

void OUTLINED_FUNCTION_21_8()
{
}

id OUTLINED_FUNCTION_23_11(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI17ContactAvatarViewV10ImageState33_C516C5FEB226ACA4FD4127E3FB4A62CDLLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E03A6F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E03A748(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for ContactAvatarView()
{
  result = qword_27F1E15E0;
  if (!qword_27F1E15E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E03A828()
{
  sub_24E03A93C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_24E03A9D8(319, &qword_27F1E15F0, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24E03A980();
        if (v3 <= 0x3F)
        {
          sub_24E03A9D8(319, &qword_27F1E1600, &type metadata for ContactAvatarView.ImageState, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_24E03A93C()
{
  result = qword_27F1E2F40;
  if (!qword_27F1E2F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E2F40);
  }

  return result;
}

void sub_24E03A980()
{
  if (!qword_27F1E15F8)
  {
    sub_24E345678();
    v0 = sub_24E345278();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E15F8);
    }
  }
}

void sub_24E03A9D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_24E03AA28()
{
  result = [objc_allocWithZone(MEMORY[0x277CBDBD0]) init];
  qword_27F1E15D0 = result;
  return result;
}

uint64_t sub_24E03AA5C(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  return MEMORY[0x282133690]();
}

uint64_t sub_24E03AABC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContactAvatarView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_24E03AC54(v1, &v18);
  v17 = v18;
  v6 = v19;
  sub_24E346E28();
  sub_24E3453D8();
  v7 = v18;
  v8 = v20;
  v10 = v22;
  v9 = v23;
  v26 = v6;
  v25 = v19;
  v24 = v21;
  sub_24E03B490(v1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  result = sub_24E03B4F4(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v14 = v26;
  v15 = v25;
  v16 = v24;
  *a1 = v17;
  *(a1 + 8) = v14;
  *(a1 + 16) = v7;
  *(a1 + 24) = v15;
  *(a1 + 32) = v8;
  *(a1 + 40) = v16;
  *(a1 + 48) = v10;
  *(a1 + 56) = v9;
  *(a1 + 64) = sub_24E03B558;
  *(a1 + 72) = v12;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_24E03AC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24E346A68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + *(type metadata accessor for ContactAvatarView() + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1608);
  sub_24E346B88();
  v8 = v13;
  if (v13 >= 2)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v11 = sub_24E346AE8();
    (*(v5 + 8))(v7, v4);
    v13 = v11;
    v14 = 1;
    swift_retain_n();
    sub_24E345E38();
    sub_24E03B5B8(v8);
  }

  else
  {
    sub_24E346A58();
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v9 = sub_24E346AE8();

    (*(v5 + 8))(v7, v4);
    v13 = v9;
    v14 = 0;
    result = sub_24E345E38();
  }

  v12 = BYTE8(v15);
  *a2 = v15;
  *(a2 + 8) = v12;
  return result;
}

void sub_24E03AEC0(uint64_t a1)
{
  v2 = type metadata accessor for ContactAvatarView();
  v52 = *(v2 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v2);
  v49 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_24E345678();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = sub_24E345B68();
  v47 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 32);
  v51 = a1;
  v13 = (a1 + v12);
  v15 = *v13;
  v14 = *(v13 + 1);
  aBlock = *v13;
  v54 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1608);
  sub_24E346B88();
  if (v59)
  {
    if (v59 != 1)
    {
      sub_24E03B5B8(v59);
    }
  }

  else
  {
    v42 = v11;
    v43 = v9;
    v44 = v8;
    v45 = v2;
    v46 = v5;
    v16 = v50;
    aBlock = v15;
    v54 = v14;
    v59 = 1;
    sub_24E346B98();
    v17 = v51;
    v18 = *(v51 + 8);
    v19 = *(v51 + 16);
    v20 = *(v51 + 24);
    if (*(v51 + 32) == 1)
    {
      aBlock = *(v51 + 24);
    }

    else
    {

      sub_24E348268();
      v21 = sub_24E346198();
      sub_24E343EA8();

      v22 = v42;
      sub_24E345B58();
      swift_getAtKeyPath();
      sub_24DE73F34(v20, 0);
      (*(v47 + 8))(v22, v43);
    }

    v23 = v48;
    v24 = v49;
    v25 = v46;
    v26 = v44;
    v27 = objc_opt_self();
    v28 = aBlock;
    sub_24E028E74(v26);
    (*(v23 + 104))(v25, *MEMORY[0x277CDFA90], v16);
    v29 = sub_24E345668();
    v30 = *(v23 + 8);
    v30(v25, v16);
    v30(v26, v16);
    v31 = [v27 scopeWithPointSize:v29 & 1 scale:0 rightToLeft:v18 style:{v19, v28}];
    if (qword_27F1DD730 != -1)
    {
      swift_once();
    }

    v32 = qword_27F1E15D0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_24E369990;
    v34 = *v17;
    *(v33 + 32) = *v17;
    sub_24E03A93C();
    v35 = v34;
    v36 = sub_24E347EE8();

    sub_24E03B490(v17, v24);
    v37 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v38 = swift_allocObject();
    sub_24E03B4F4(v24, v38 + v37);
    v57 = sub_24E03B71C;
    v58 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_24E216C88;
    v56 = &block_descriptor_21;
    v39 = _Block_copy(&aBlock);

    v40 = [v32 renderAvatarsForContacts:v36 scope:v31 imageHandler:v39];
    _Block_release(v39);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24E03B41C(void *a1)
{
  v1 = a1;
  sub_24E346A38();
  type metadata accessor for ContactAvatarView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1608);
  return sub_24E346B98();
}

uint64_t sub_24E03B490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAvatarView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E03B4F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAvatarView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24E03B558()
{
  v1 = *(type metadata accessor for ContactAvatarView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_24E03AEC0(v2);
}

unint64_t sub_24E03B5B8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for ContactAvatarView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_24DE73F34(*(v5 + 24), *(v5 + 32));
  v6 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24E345678();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  if (*(v5 + *(v1 + 32)) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24E03B71C(void *a1)
{
  type metadata accessor for ContactAvatarView();

  return sub_24E03B41C(a1);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E03B7A4()
{
  result = qword_27F1E1610;
  if (!qword_27F1E1610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1618);
    sub_24E03B830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1610);
  }

  return result;
}

unint64_t sub_24E03B830()
{
  result = qword_27F1E1620;
  if (!qword_27F1E1620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1628);
    sub_24E03B8BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1620);
  }

  return result;
}

unint64_t sub_24E03B8BC()
{
  result = qword_27F1E1630;
  if (!qword_27F1E1630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1638);
    sub_24E03B940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1630);
  }

  return result;
}

unint64_t sub_24E03B940()
{
  result = qword_27F1E1640;
  if (!qword_27F1E1640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1640);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI19ViewBackgroundStyleO(uint64_t a1)
{
  if ((*(a1 + 48) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

uint64_t sub_24E03B9E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_24E03BA20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24E03BA8C()
{
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2 = [v0 whiteColor];
  v3 = OUTLINED_FUNCTION_0_62(objc_allocWithZone(MEMORY[0x277D75348]), sel_initWithRed_green_blue_alpha_, 0.17254902);
  v4 = [v0 gk:v2 dynamicColorWithLightColor:v3 darkColor:?];

  v5 = OUTLINED_FUNCTION_0_62(objc_allocWithZone(MEMORY[0x277D75348]), sel_initWithRed_green_blue_alpha_, 0.91372549);
  v6 = OUTLINED_FUNCTION_0_62(objc_allocWithZone(MEMORY[0x277D75348]), sel_initWithRed_green_blue_alpha_, 0.0784313725);
  v7 = [v0 gk:v5 dynamicColorWithLightColor:v6 darkColor:?];

  v8 = [v0 whiteColor];
  v9 = [v0 whiteColor];
  v10 = [v9 colorWithAlphaComponent_];

  v11 = [v0 gk:v8 dynamicColorWithLightColor:v10 darkColor:?];
  v12 = [v0 systemBlueColor];
  v13 = [v12 colorWithAlphaComponent_];

  v14 = [v0 labelColor];
  v15 = [v0 secondaryLabelColor];
  v16 = [v0 labelColor];
  qword_27F20ABB8 = v1;
  result = 0.0;
  unk_27F20ABC0 = 0u;
  unk_27F20ABD0 = 0u;
  unk_27F20ABD9 = 0u;
  qword_27F20ABF0 = v4;
  unk_27F20ABF8 = v7;
  qword_27F20AC00 = v11;
  unk_27F20AC08 = v13;
  qword_27F20AC10 = v14;
  unk_27F20AC18 = v15;
  word_27F20AC20 = 256;
  qword_27F20AC28 = v16;
  return result;
}

double sub_24E03BCEC()
{
  v0 = [objc_opt_self() _gkGameLayerModuleVisualEffect];
  sub_24DFEC928();
  v1 = sub_24E347F08();

  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = OUTLINED_FUNCTION_1_48();
  v6 = [v5 colorWithAlphaComponent_];

  v7 = OUTLINED_FUNCTION_1_48();
  v8 = [v7 colorWithAlphaComponent_];

  v9 = OUTLINED_FUNCTION_1_48();
  v10 = [v9 colorWithAlphaComponent_];

  v11 = OUTLINED_FUNCTION_1_48();
  v12 = OUTLINED_FUNCTION_1_48();
  v13 = [v12 colorWithAlphaComponent_];

  v14 = [v2 labelColor];
  qword_27F20AC30 = v1;
  result = 0.0;
  unk_27F20AC38 = 0u;
  unk_27F20AC48 = 0u;
  qword_27F20AC58 = 0;
  byte_27F20AC60 = 2;
  qword_27F20AC68 = v4;
  unk_27F20AC70 = v6;
  qword_27F20AC78 = v8;
  unk_27F20AC80 = v10;
  qword_27F20AC88 = v11;
  unk_27F20AC90 = v13;
  word_27F20AC98 = 257;
  qword_27F20ACA0 = v14;
  return result;
}

id OUTLINED_FUNCTION_0_62(id a1, SEL a2, double a3)
{

  return [a1 a2];
}

id OUTLINED_FUNCTION_1_48()
{
  v3 = *(v1 + 3104);

  return [v0 v3];
}

uint64_t sub_24E03BF08(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24E03BF58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_24E03BFBC(void *a1, unsigned __int8 a2)
{
  v3 = v2 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_selectedItem;
  v4 = *(v2 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_selectedItem);
  *v3 = a1;
  v5 = *(v3 + 8);
  *(v3 + 8) = a2;
  sub_24DF959BC(a1, a2);

  sub_24E041C34(v4, v5);
  sub_24E346F78();

  sub_24E041828(v4, v5);
  sub_24E041828(v4, v5);
}

void sub_24E03C090()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v1 = sub_24E347CF8();
  v3 = v2;
  v4 = sub_24E347CF8();
  v6 = v5;
  v7 = sub_24E12BF48();
  sub_24E3357D8(v7);
  v9 = v8;

  sub_24E32BF38(v1, v3, v4, v6, v9, v0);

  sub_24E03DA60();
}

void sub_24E03C178(char *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C40);
  OUTLINED_FUNCTION_0_14();
  v35 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v33 = &v31 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1760);
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = *a1;
  v17 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_pageMetricsPresenter;
  *(v4 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_pageMetricsPresenter) = 0;
  *(v4 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_retryAfterAuthentication) = 0;
  v18 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_onSelectedItem;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E32A0);
  OUTLINED_FUNCTION_1_30();
  *(v4 + v18) = sub_24E346F88();
  v19 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_onRequiredDataChanged;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFAF8);
  OUTLINED_FUNCTION_1_30();
  *(v4 + v19) = sub_24E346F88();
  *(v4 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_game) = 0;
  v20 = v4 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_selectedItem;
  *v20 = 0;
  *(v20 + 8) = -1;
  *(v4 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_intentOnFirstLoad) = -1;
  v21 = (v4 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_achievementIdToPresentOnFirstLoad);
  *v21 = 0;
  v21[1] = 0;
  *(v4 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_sections) = MEMORY[0x277D84F90];
  v22 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_requiredData;
  v23 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  __swift_storeEnumTagSinglePayload(v4 + v22, 1, 1, v23);
  *(v4 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_requiredDataPresenter) = 0;
  *(v4 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_dashboardDisplayMode) = 0;
  *(v4 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_launchContext) = v16;
  *(v4 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_request) = a2;
  *(v4 + v17) = a3;
  v31 = a2;
  v36 = a3;

  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v24 = *(qword_27F20B960 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_refAppFieldProvider);
  v38[0] = v16;

  v25 = sub_24E12BD60();
  v26 = (v24 + OBJC_IVAR____TtC12GameCenterUI22GKRefAppFieldsProvider_refApp);
  *v26 = v25;
  v26[1] = v27;

  v28 = sub_24E287888(0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1768);
  sub_24E041D60(&qword_27F1E1770, &qword_27F1E1768);
  v29 = v28;

  sub_24E347198();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v38);
  (*(v12 + 8))(v15, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0);
  sub_24E041D60(&unk_27F1E1C50, &unk_27F1E6CC0);

  sub_24E347198();
  v30 = v33;
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v38);
  (*(v35 + 8))(v30, v37);
  OUTLINED_FUNCTION_18();
}

void (*sub_24E03C654(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E041DD8;
}

void sub_24E03C6B8()
{
  v1 = v0;
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v8 = [v7 _gkIsAnyOverlayUI];

  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_request);
    if (v9)
    {
      v10 = [v9 gameRecord];
      if (v10)
      {
        v11 = v10;
        sub_24E343C98();
        v12 = sub_24E343F78();
        v13 = sub_24E348238();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_24DE53000, v12, v13, "Notifying game authenticated player changed...", v14, 2u);
          MEMORY[0x253040EE0](v14, -1, -1);
        }

        (*(v3 + 8))(v5, v2);
        v15 = [objc_opt_self() proxyForLocalPlayer];
        v16 = [v15 accountServicePrivate];

        v17 = [v11 bundleIdentifier];
        if (!v17)
        {
          sub_24E347CF8();
          v17 = sub_24E347CB8();
        }

        sub_24E0CFF20([v6 mainBundle]);
        if (v18)
        {
          v19 = sub_24E347CB8();
        }

        else
        {
          v19 = 0;
        }

        [v16 notifyClient:v17 playerAuthenticatedFromClient:v19];

        swift_unknownObjectRelease();
      }
    }
  }

  *(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;
  sub_24E03E584(0);
}

uint64_t (*sub_24E03C964(void *a1))(void *a1)
{
  v1 = sub_24E03C654(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E0418F4;
}

void (*sub_24E03C9BC(void *a1))(__int128 *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E041DB4;
}

void sub_24E03CA20(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  v3 = v1;
  sub_24E03CA60(&v2);
}

void sub_24E03CA60(uint64_t a1)
{
  v2 = *a1;
  if (*a1 != 1)
  {
    if (v2 == 2)
    {
      *(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;

      sub_24E03E584(0);
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v2;
      sub_24DF88BEC(v3);
      sub_24DE73FA0(v3);
      swift_allocObject();
      swift_unknownObjectWeakInit();

      v5 = v2;

      sub_24E346F78();

      sub_24E024148(v2, sub_24E041DBC);
    }
  }
}

void *sub_24E03CBC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_request);
  v2 = v1;
  return v1;
}

uint64_t sub_24E03CCDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  v4 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_requiredData;
  swift_beginAccess();
  sub_24E041AEC(v0 + v4, v3);
  sub_24E346F78();
  return sub_24DF8BFF4(v3, &qword_27F1DF018);
}

uint64_t sub_24E03CDB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_requiredData;
  swift_beginAccess();
  sub_24E041B5C(a1, v1 + v3);
  swift_endAccess();
  sub_24E03CCDC();
  return sub_24DF8BFF4(a1, &qword_27F1DF018);
}

uint64_t sub_24E03CE30()
{
  v1 = v0;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1698);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = &v29[-v3 - 8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29[-v11 - 8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29[-v14 - 8];
  v16 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  v17 = 1;
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  sub_24E03CDB4(v15);
  v18 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_requiredDataPresenter;
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_requiredDataPresenter))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16B8);
    sub_24E041D60(&qword_27F1E16C0, &qword_27F1E16B8);

    sub_24E347198();
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v29);
    v17 = 0;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16C8);
  v20 = 1;
  __swift_storeEnumTagSinglePayload(v12, v17, 1, v19);
  sub_24DF8BFF4(v12, &qword_27F1E16B0);
  if (*(v1 + v18))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16D0);
    sub_24E041D60(&qword_27F1E16D8, &qword_27F1E16D0);

    sub_24E347198();
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v29);
    v20 = 0;
  }

  v21 = v28;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16E0);
  v23 = 1;
  __swift_storeEnumTagSinglePayload(v9, v20, 1, v22);
  sub_24DF8BFF4(v9, &qword_27F1E16A8);
  if (*(v1 + v18))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16E8);
    sub_24E041D60(&qword_27F1E16F0, &qword_27F1E16E8);

    sub_24E347198();
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v29);
    v23 = 0;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16F8);
  v25 = 1;
  __swift_storeEnumTagSinglePayload(v6, v23, 1, v24);
  sub_24DF8BFF4(v6, &qword_27F1E16A0);
  if (*(v1 + v18))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1700);
    sub_24E041D60(&qword_27F1E1708, &qword_27F1E1700);

    sub_24E347198();
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v29);
    v25 = 0;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1710);
  __swift_storeEnumTagSinglePayload(v21, v25, 1, v26);
  return sub_24DF8BFF4(v21, &qword_27F1E1698);
}

uint64_t (*sub_24E03D430(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E041AC8;
}

uint64_t sub_24E03D494(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  sub_24E041AEC(a1, &v7 - v4);
  sub_24E03CDB4(v5);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;
  return sub_24E03E584(0);
}

uint64_t (*sub_24E03D538(void *a1))(uint64_t a1)
{
  v1 = sub_24E03D430(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E041AC0;
}

uint64_t (*sub_24E03D590(void *a1))(char a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E041A48;
}

uint64_t sub_24E03D5F4(char a1)
{
  *(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;
  sub_24E041A6C();
  v3 = swift_allocError();
  *v4 = a1;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_24E346F78();

  sub_24E024148(v3, sub_24E041F04);
}

uint64_t (*sub_24E03D6DC(void *a1))(unsigned __int8 *a1)
{
  v1 = sub_24E03D590(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E041A40;
}

void (*sub_24E03D734(void *a1))(_BYTE *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E041904;
}

void sub_24E03D798(_BYTE *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  if ((*a1 & 1) == 0)
  {
    v9 = type metadata accessor for DashboardRequiredDataPresenter.Update(0);
    sub_24E041928(&a1[*(v9 + 20)], v8);
    v10 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
    sub_24E03CDB4(v8);
    v11 = sub_24E348098();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v1;
    v13 = v1;
    sub_24DFC8700(0, 0, v5, &unk_24E370F50, v12);
  }
}

uint64_t (*sub_24E03D910(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E0418FC;
}

uint64_t sub_24E03D9AC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_requiredDataPresenter) = a1;

  sub_24E03CE30();
}

uint64_t (*sub_24E03DA08(void *a1))(void *a1)
{
  v1 = sub_24E03D910(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E0418F4;
}

void sub_24E03DA60()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_request);
  if (v1)
  {
    v2 = [*(v0 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_request) state];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 gameRecord];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1778);

  if (v1)
  {
    switch(v2)
    {
      case 0xFFFFFFFFFFFFFFFFLL:
      case 4uLL:
        goto LABEL_6;
      case 0uLL:
        *(v0 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_intentOnFirstLoad) = 0;
        break;
      case 1uLL:
        *(v0 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_intentOnFirstLoad) = 1;
        v6 = [v1 achievementID];
        if (v6)
        {
          v7 = v6;
          v8 = sub_24E347CF8();
          v10 = v9;
        }

        else
        {
          v8 = 0;
          v10 = 0;
        }

        v11 = (v0 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_achievementIdToPresentOnFirstLoad);
        *v11 = v8;
        v11[1] = v10;

        break;
      case 2uLL:
        v4 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_intentOnFirstLoad;
        v5 = 2;
        goto LABEL_7;
      case 3uLL:
        v4 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_intentOnFirstLoad;
        v5 = 3;
        goto LABEL_7;
      case 5uLL:
        v4 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_intentOnFirstLoad;
        v5 = 5;
        goto LABEL_7;
      default:
        sub_24E348BF8();
        __break(1u);
        break;
    }
  }

  else
  {
LABEL_6:
    v4 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_intentOnFirstLoad;
    v5 = -1;
LABEL_7:
    *(v0 + v4) = v5;
  }
}

uint64_t sub_24E03DC4C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v20[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60);
  OUTLINED_FUNCTION_4_5(v8);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v20[-v10];
  sub_24E287A3C(a1);
  if (*&v1[OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_pageMetricsPresenter])
  {
    v12 = *&v1[OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_intentOnFirstLoad];
    v14 = v12 == -1 || v12 == 4;
    v20[15] = v1[OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_launchContext];

    sub_24E12C030(v14, v11);
    v15 = sub_24E347118();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v15);
    sub_24E347698();
  }

  v16 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v2;
  v17[5] = a1;
  v18 = v2;

  sub_24DFC8700(0, 0, v7, &unk_24E370ED8, v17);
}

uint64_t sub_24E03DE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  v5 = sub_24DF88A8C(0, &unk_27F1DFCF0);
  v6 = swift_task_alloc();
  *(v4 + 32) = v6;
  *v6 = v4;
  v6[1] = sub_24E03DED8;

  return MEMORY[0x28217F210](v4 + 16, v5, v5);
}

uint64_t sub_24E03DED8()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v2 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24E03DFDC()
{
  OUTLINED_FUNCTION_9_7();
  v1 = v0[2];
  v2 = v0[3];
  v3 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_game;
  v0[5] = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_game;
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;

  if (*(v2 + v3))
  {
    sub_24E03E584(*(v0[3] + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating));
    OUTLINED_FUNCTION_12_5();

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_0_63(v7);

    return sub_24E03E2F8();
  }
}

uint64_t sub_24E03E0B0()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  *(v1 + 56) = v0;

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24E03E1A4()
{
  OUTLINED_FUNCTION_9_7();
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v2 + v1);
  *(v2 + v1) = v0[7];

  sub_24E03E584(*(v0[3] + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating));
  OUTLINED_FUNCTION_12_5();

  return v4();
}

uint64_t sub_24E03E224()
{
  OUTLINED_FUNCTION_9_7();
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_game;
  v0[5] = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_game;
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;

  if (*(v1 + v2))
  {
    sub_24E03E584(*(v0[3] + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating));
    OUTLINED_FUNCTION_12_5();

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_0_63(v6);

    return sub_24E03E2F8();
  }
}

uint64_t sub_24E03E318()
{
  OUTLINED_FUNCTION_9_7();
  v1 = 1 << *(v0[3] + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_launchContext);
  if ((v1 & 0x187) != 0)
  {
    v2 = [objc_opt_self() currentGame];
  }

  else
  {
    v2 = 0;
    if ((v1 & 0x1A60) != 0)
    {
      v3 = swift_task_alloc();
      v0[4] = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1728);
      *v3 = v0;
      v3[1] = sub_24E03E484;
      OUTLINED_FUNCTION_35_3();

      return MEMORY[0x2822007B8](v4, v5, v6, v7, v8, v9, 0, v10);
    }
  }

  v11 = v0[1];

  return v11(v2);
}

uint64_t sub_24E03E484()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_24E03E584(char a1)
{
  v2 = OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating;
  if ((*(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) & 1) == 0)
  {
    v3 = v1;
    v5 = [objc_opt_self() local];
    v6 = sub_24E287BD0();
    [v5 updateFromLocalPlayer_];

    *(v3 + v2) = 1;
    v29[1] = 0;
    v29[2] = 0;
    v29[0] = 1;

    sub_24E346F78();

    if (sub_24E287CE4())
    {
      sub_24E20EA5C();
      return;
    }

    v7 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_launchContext;
    LOBYTE(v29[0]) = *(v3 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_launchContext);
    if (sub_24E287D40(v29))
    {
      *(v3 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_hasShownAuthenticationFlow) = 1;
      LOBYTE(v29[0]) = *(v3 + v7);
      v8 = sub_24E12BD60();
      sub_24E20E1BC(5, v8, v9);

      return;
    }

    if ((sub_24E287C88() & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_requiredDataPresenter;
    if (*(v3 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_requiredDataPresenter))
    {
      if ((a1 & 1) == 0)
      {
LABEL_9:
        v29[0] = *(v3 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_dashboardDisplayMode);
        v11 = v29[0];
        sub_24E040514(v29);

        return;
      }
    }

    else
    {
      sub_24E287BD0();
      if (!*(v3 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_playerId + 8))
      {
        v12 = sub_24E287BD0();
        v13 = [v12 internal];

        v14 = [v13 playerID];
        sub_24E347CF8();
      }

      v15 = *(v3 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_game);
      type metadata accessor for DashboardRequiredDataPresenter(0);
      swift_allocObject();
      v16 = v15;

      sub_24E1C74F8();
      sub_24E03D9AC(v17);
    }

    v18 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_retryAfterAuthentication;
    if (*(v3 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_retryAfterAuthentication) == 1 && (v19 = *(v3 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_request)) != 0 && (v20 = [v19 gameRecord]) != 0)
    {
      v21 = v20;
      *(v3 + v18) = 0;
      if (*(v3 + v10))
      {

        v22 = [v21 bundleIdentifier];
        v23 = sub_24E347CF8();
        v25 = v24;

        sub_24E1C6BA4(v23, v25);
      }
    }

    else
    {
      v26 = *(v3 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_game);
      v27 = *(v3 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_dashboardDisplayMode);
      *(v3 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_dashboardDisplayMode) = v26;
      v28 = v26;

      if (*(v3 + v10))
      {

        sub_24E1C6D2C(1);
      }
    }
  }
}

void sub_24E03E914(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  OUTLINED_FUNCTION_4_5(v8);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v128 - v10;
  v12 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v13);
  v15 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2)
  {
    case 1:
      LOBYTE(aBlock[0]) = 3;
      v43 = *&v4[OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_achievementIdToPresentOnFirstLoad];
      v44 = *&v4[OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_achievementIdToPresentOnFirstLoad + 8];
      type metadata accessor for GameLayerAchievementsPresenter();
      swift_allocObject();
      sub_24DF959BC(a1, 1u);

      GameLayerAchievementsPresenter.init(gameRecord:entryPoint:achievementIdsToHighlight:achievementIdToPresent:)(a1, aBlock, MEMORY[0x277D84F90], v43, v44);
      LOBYTE(aBlock[0]) = 3;
      v45 = objc_allocWithZone(type metadata accessor for GameLayerAchievementsViewController());

      GameLayerAchievementsViewController.init(presenter:theme:objectGraph:)();
      v47 = v46;
      v46[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_isDeeplinked] = (a3 & 1) == 0;
      *&v46[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_preferredLargeTitleDisplayMode] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1738);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
      OUTLINED_FUNCTION_5_30();
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_24E369990;
      *(v48 + 32) = v47;
      aBlock[0] = v48;
      v49 = v47;
      sub_24E347AA8();

LABEL_13:

      break;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1738);
      v32 = sub_24E347AD8();
      v33 = *&v4[OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_request];
      if (v33 && (v34 = [v33 leaderboardID]) != 0)
      {
        v35 = v34;
        v36 = sub_24E347CF8();
        v38 = v37;
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      v53 = objc_opt_self();
      v54 = swift_allocObject();
      *(v54 + 16) = v32;
      *(v54 + 24) = a1;
      *(v54 + 32) = v4;
      *(v54 + 40) = a3 & 1;
      *(v54 + 48) = v36;
      *(v54 + 56) = v38;
      aBlock[4] = sub_24E041CD8;
      aBlock[5] = v54;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24E260358;
      aBlock[3] = &block_descriptor_62;
      v55 = _Block_copy(aBlock);
      sub_24DF959BC(a1, 2u);

      v56 = v4;

      [v53 loadLeaderboardsForGame:a1 withCompletionHandler:v55];
      _Block_release(v55);
      break;
    case 3:
      v39 = [objc_allocWithZone(GKChallengeListViewController) initWithGameRecord_];
      if (v39)
      {
        v40 = v39;
        [v39 setIsDeeplinked_];
        v41 = *&v4[OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_request];
        if (v41)
        {
          v42 = [v41 shouldShowPlayForChallenge];
        }

        else
        {
          v42 = 0;
        }

        [v40 setShouldShowPlayForChallenge_];
        [v40 setPreferredLargeTitleDisplayMode_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1738);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
        OUTLINED_FUNCTION_5_30();
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_24E369990;
        *(v31 + 32) = v40;
        goto LABEL_34;
      }

      sub_24E343C98();
      v57 = a1;
      v58 = sub_24E343F78();
      v59 = sub_24E348258();
      sub_24DF959D0(a1, 3u);
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        *(v60 + 4) = v57;
        *v61 = a1;
        v62 = v57;
        _os_log_impl(&dword_24DE53000, v58, v59, "error encountered while initiating GKChallengeListViewController with game record: %@", v60, 0xCu);
        sub_24DF8BFF4(v61, &unk_27F1DF730);
        MEMORY[0x253040EE0](v61, -1, -1);
        MEMORY[0x253040EE0](v60, -1, -1);
      }

      (*(v18 + 8))(v22, v16);
      break;
    case 4:
      v28 = objc_allocWithZone(type metadata accessor for AppStoreContentViewController());
      v29 = a1;
      v30 = AppStoreContentViewController.init(gameRecord:)(a1);
      *&v30[OBJC_IVAR____TtC12GameCenterUI29AppStoreContentViewController_preferredLargeTitleDisplayMode] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1738);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
      OUTLINED_FUNCTION_5_30();
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_24E369990;
      *(v31 + 32) = v30;
      goto LABEL_34;
    case 5:
      v50 = *&v4[OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_request];
      if (v50)
      {
        v51 = [*&v4[OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_request] playerID];
        if (v51)
        {
          v52 = v51;
          sub_24E347CF8();
        }

        v75 = [v50 gameRecord];
      }

      type metadata accessor for PlayerProfileViewController();
      OUTLINED_FUNCTION_3_38();
      LOBYTE(v133) = 0;
      v131 = v76;
      sub_24E0CA66C();
      v78 = v77;
      *(v77 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_isDeeplinked) = (a3 & 1) == 0;
      sub_24E0CBB90();
      if (v50)
      {
        v79 = v50;
        if ([v79 state] == 5)
        {
          v80 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_requiredData;
          swift_beginAccess();
          sub_24E041AEC(&v4[v80], v11);
          if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
          {
            sub_24DF8BFF4(v11, &qword_27F1DF018);
            type metadata accessor for AllFriendsDataSource();
            OUTLINED_FUNCTION_1_30();
            v81 = sub_24E0E1134();
            type metadata accessor for FriendRequestsDataSource();
            OUTLINED_FUNCTION_1_30();

            v82 = sub_24E0E0748();
            type metadata accessor for FriendSuggestionsDataSource();
            OUTLINED_FUNCTION_1_30();

            v83 = sub_24E0DC5F0();
            type metadata accessor for FriendSuggestionInvitationStateManager();
            OUTLINED_FUNCTION_1_30();

            v84 = sub_24E155B14(1);

            sub_24E0E1220(v85);
            sub_24E0DE5D0();
            sub_24E0DCC54();
          }

          else
          {
            sub_24E041BD4(v11, v15, type metadata accessor for DashboardRequiredDataPresenter.Data);
            v81 = *&v15[v12[14]];
            v82 = *&v15[v12[15]];
            v86 = v12[17];
            v83 = *&v15[v12[16]];
            v84 = *&v15[v86];
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();

            sub_24DFC1380(v15);
          }

          type metadata accessor for FriendingViewControllers();
          v87 = v78;
          v88 = sub_24DFF6DF4(v87, v81, v82, v83, v84);

          v89 = [v88 navigationController];
          if (v89)
          {
            v90 = v89;
            v91 = [v89 navigationBar];

            [v91 setPrefersLargeTitles_];
          }

          v92 = [v79 deepLinkDestination];
          switch(v92)
          {
            case 0uLL:

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1738);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
              v93 = swift_allocObject();
              *(v93 + 16) = xmmword_24E36BFC0;
              *(v93 + 32) = v87;
              *(v93 + 40) = v88;
              aBlock[0] = v93;
              v94 = v88;
              sub_24E347AA8();

              goto LABEL_48;
            case 1uLL:

              OUTLINED_FUNCTION_8_21();
              v124 = sub_24DFF7224(v120, v121, v122, v123);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1738);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
              v125 = swift_allocObject();
              *(v125 + 16) = xmmword_24E370DD0;
              *(v125 + 32) = v87;
              *(v125 + 40) = v88;
              *(v125 + 48) = v124;
              aBlock[0] = v125;
              v126 = v88;
              v127 = v124;
              sub_24E347AA8();

              goto LABEL_48;
            case 2uLL:
              v130 = v81;

              OUTLINED_FUNCTION_8_21();
              v99 = sub_24DFF7224(v95, v96, v97, v98);
              v100 = objc_opt_self();
              v101 = [v100 currentLocalPlayer];
              if (!v101)
              {
                v101 = [v100 local];
              }

              v129 = v101;
              v102 = [v101 playerID];
              sub_24E347CF8();

              v103 = [v79 gameRecord];
              OUTLINED_FUNCTION_3_38();
              OUTLINED_FUNCTION_13_18();
              sub_24E0CA66C();
              v105 = v104;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1738);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
              v106 = swift_allocObject();
              *(v106 + 16) = xmmword_24E36D5F0;
              *(v106 + 32) = v105;
              *(v106 + 40) = v88;
              *(v106 + 48) = v99;
              *(v106 + 56) = v87;
              aBlock[0] = v106;
              v107 = v99;
              v108 = v88;
              v109 = v105;
              v110 = v107;
              sub_24E347AA8();

LABEL_48:

              goto LABEL_13;
            case 3uLL:
              v129 = v82;
              v130 = v81;

              v111 = objc_opt_self();
              v112 = [v111 currentLocalPlayer];
              if (!v112)
              {
                v112 = [v111 local];
              }

              v113 = [v112 playerID];
              sub_24E347CF8();

              v114 = [v79 gameRecord];
              OUTLINED_FUNCTION_3_38();
              OUTLINED_FUNCTION_13_18();
              sub_24E0CA66C();
              v116 = v115;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1738);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
              v117 = swift_allocObject();
              *(v117 + 16) = xmmword_24E370DD0;
              *(v117 + 32) = v116;
              *(v117 + 40) = v88;
              *(v117 + 48) = v87;
              aBlock[0] = v117;
              v118 = v88;
              v119 = v116;
              sub_24E347AA8();

              goto LABEL_13;
            default:
              type metadata accessor for GKDeepLinkDestinationInternal(0);
              aBlock[0] = v92;
              sub_24E348C58();
              __break(1u);
              return;
          }
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1738);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
      OUTLINED_FUNCTION_5_30();
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_24E369990;
      *(v31 + 32) = v78;
LABEL_34:
      aBlock[0] = v31;
      sub_24E347AA8();
      break;
    default:
      v133 = *&v4[OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_dashboardDisplayMode];
      OUTLINED_FUNCTION_3_38();
      v24 = *&v4[OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_request];
      if (v24)
      {
        v25 = v23;
        v26 = [v24 activityIdentifier];
        if (v26)
        {
          v27 = v26;
          sub_24E347CF8();
        }
      }

      else
      {
        v63 = v23;
      }

      v64 = objc_allocWithZone(type metadata accessor for DashboardActivityFeedViewController());

      DashboardActivityFeedViewController.init(dashboardDisplayMode:navigationProxy:activityIdentifier:objectGraph:)();
      v66 = v65;
      v67 = [v66 navigationItem];
      v68 = sub_24E347CB8();
      v69 = GKGameCenterUIFrameworkBundle();
      v70 = GKGetLocalizedStringFromTableInBundle();

      v71 = sub_24E347CF8();
      v73 = v72;

      sub_24DFF79C8(v71, v73, v67);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1738);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
      OUTLINED_FUNCTION_5_30();
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_24E369990;
      *(v74 + 32) = v66;
      aBlock[0] = v74;
      sub_24E347AA8();

      break;
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E03F8C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v10) = a7;
  v16 = sub_24E347358();
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v20 = a3;
    sub_24E347AB8();

    return;
  }

  v21 = v17;
  v63 = a9;
  v64 = a6;
  v65 = a4;
  if (!a1 || (v22 = sub_24E040028(a1)) == 0)
  {
LABEL_15:
    sub_24E041D0C();
    v35 = swift_allocError();
    sub_24E347AB8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
    sub_24E347018();
    *(swift_allocObject() + 16) = xmmword_24E367D20;
    v67[3] = MEMORY[0x277D837D0];
    v67[0] = 0xD00000000000003FLL;
    v67[1] = 0x800000024E3A2D30;
    sub_24E346FE8();
    sub_24DF8BFF4(v67, &qword_27F1E0370);
    (*(v21 + 104))(v19, *MEMORY[0x277D21DE8], v16);
    sub_24E0EF428();

    (*(v21 + 8))(v19, v16);
    return;
  }

  v23 = v22;
  v24 = sub_24DFD8654(v22);
  if (!v24)
  {

    goto LABEL_15;
  }

  v25 = v24;
  v26 = sub_24DFD8654(v23);
  if (v26 == 1)
  {
    sub_24DFFA844(0, (v23 & 0xC000000000000001) == 0, v23);
    v25 = v64;
    if ((v23 & 0xC000000000000001) != 0)
    {
      goto LABEL_48;
    }

    v27 = *(v23 + 32);
    goto LABEL_11;
  }

  if (v26 < 2)
  {

    return;
  }

  v67[0] = MEMORY[0x277D84F90];
  sub_24DF88A8C(0, &qword_27F1E1748);
  v60 = a5;
  v36 = sub_24E260304();
  v59 = v10 ^ 1;
  [v36 setIsDeeplinked_];
  [v36 setPreferredLargeTitleDisplayMode_];
  v37 = v36;
  MEMORY[0x25303EA30]();
  a5 = *((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (a5 >= *((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24E347F48();
  }

  v61 = v37;
  sub_24E347F88();
  v38 = 0;
  v58 = v67[0];
  v62 = v23 & 0xFFFFFFFFFFFFFF8;
  v10 = a8;
  v39 = v63;
  while (1)
  {
    if (v25 == v38)
    {

      v47 = 0;
      v48 = v61;
      v49 = v58;
      goto LABEL_45;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x25303F560](v38, v23);
    }

    else
    {
      if (v38 >= *(v62 + 16))
      {
        goto LABEL_47;
      }

      v40 = *(v23 + 8 * v38 + 32);
    }

    a5 = v40;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    v41 = [v40 baseLeaderboardID];
    v42 = sub_24E347CF8();
    v44 = v43;

    if (!v39)
    {

      goto LABEL_33;
    }

    if (v42 == v10 && v44 == v39)
    {

LABEL_40:

      v50 = v64;
      v51 = v60;
      sub_24DF88A8C(0, &qword_27F1E1750);
      v52 = a5;
      v53 = v51;
      v47 = v52;
      v54 = sub_24E2602B0();
      v55 = *(v50 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_request);
      v48 = v61;
      if (v55)
      {
        [v54 setInitialTimeScope_];
        [v54 setInitialPlayerScope_];
      }

      [v54 setIsDeeplinked_];
      v56 = v54;
      MEMORY[0x25303EA30]();
      if (*((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();
      v49 = v67[0];

LABEL_45:
      v66 = v49;
      sub_24E347AC8();

      return;
    }

    v46 = sub_24E348C08();

    if (v46)
    {
      goto LABEL_40;
    }

LABEL_33:

    ++v38;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  v27 = MEMORY[0x25303F560](0, v23);
LABEL_11:
  v28 = v27;

  sub_24DF88A8C(0, &qword_27F1E1750);
  v29 = a5;
  v30 = v28;
  v31 = sub_24E2602B0();
  v32 = *(v25 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_request);
  if (v32)
  {
    [v31 setInitialTimeScope_];
    [v31 setInitialPlayerScope_];
  }

  [v31 setIsDeeplinked_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_24E369990;
  *(v33 + 32) = v31;
  v67[0] = v33;
  v34 = v31;
  sub_24E347AC8();
}

uint64_t sub_24E040028(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_24E348A68();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_24DFB4104(v3, v5);
    sub_24DF88A8C(0, &qword_27F1E1758);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_24E348A48();
    sub_24E348A78();
    sub_24E348A88();
    sub_24E348A58();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_24E040134()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24E03E584(1);
  }
}

uint64_t sub_24E04018C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_24E040220;

  return sub_24E03E2F8();
}

uint64_t sub_24E040220()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  *(v1 + 32) = v0;

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24E040314()
{
  OUTLINED_FUNCTION_9_7();
  sub_24E348068();
  *(v0 + 40) = sub_24E348058();
  v2 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E0403A4, v2, v1);
}

uint64_t sub_24E0403A4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  sub_24E0404A8(v2, v1);
  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E040450()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v1();
}

void sub_24E0404A8(uint64_t a1, void *a2)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_dashboardDisplayMode;
  v4 = *(a1 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_dashboardDisplayMode);
  *(a1 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_dashboardDisplayMode) = a2;
  v5 = a2;

  v7 = *(a1 + v3);
  v6 = v7;
  sub_24E040514(&v7);
}

uint64_t sub_24E040514(void *a1)
{
  v2 = v1;
  v4 = sub_24E347358();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  *&v32 = *a1;
  v14 = v32;
  v15 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_requiredData;
  swift_beginAccess();
  sub_24E041AEC(v2 + v15, v13);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for SidebarSection();
  swift_allocObject();
  v17 = v14;
  v18 = sub_24DF927CC(4, 19, &v32, v13, sub_24E041BCC, v16);
  sub_24DF9263C();
  v20 = *(v19 + 16);

  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24E369990;
    *(v21 + 32) = v18;
    *(v2 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_sections) = v21;

    if (*(v2 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_selectedItem + 8) == 255)
    {
      sub_24DF9263C();
      sub_24E040DB8(v22);
    }

    *(v2 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;
    sub_24E040A98();
    *&v33 = 0;
    v32 = 2uLL;
  }

  else
  {
    v31 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
    sub_24E347018();
    *(swift_allocObject() + 16) = xmmword_24E369B70;
    sub_24E346FB8();
    v23 = *(v2 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_game);
    if (v23)
    {
      v24 = sub_24DF88A8C(0, &unk_27F1DFCF0);
    }

    else
    {
      v24 = 0;
      *(&v32 + 1) = 0;
      *&v33 = 0;
    }

    *&v32 = v23;
    *(&v33 + 1) = v24;
    v25 = v23;
    sub_24E347008();
    sub_24DF8BFF4(&v32, &qword_27F1E0370);
    sub_24E041AEC(v2 + v15, v10);
    v26 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v26) == 1)
    {
      sub_24DF8BFF4(v10, &qword_27F1DF018);
      v32 = 0u;
      v33 = 0u;
    }

    else
    {
      *(&v33 + 1) = v26;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
      sub_24E041BD4(v10, boxed_opaque_existential_1, type metadata accessor for DashboardRequiredDataPresenter.Data);
    }

    sub_24E347008();
    sub_24DF8BFF4(&v32, &qword_27F1E0370);
    v28 = v31;
    (*(v31 + 104))(v7, *MEMORY[0x277D21DE8], v4);
    sub_24E0EF428();

    (*(v28 + 8))(v7, v4);
    *(v2 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;
    sub_24E040A98();
    v32 = 0uLL;
    *&v33 = 0;
  }

  sub_24E346F78();
}

void sub_24E040A24(void *a1, unsigned __int8 a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24E03BFBC(a1, a2);
  }
}

void sub_24E040A98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1720);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for Shelf(0);
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v18 = &v18 - v7;
  v8 = *&v0[OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_sections];
  v9 = sub_24DFD8654(v8);
  v10 = v0;

  v11 = 0;
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v9 == v11)
    {

      sub_24E19A4A0(v10);

      sub_24E19A480();
      return;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25303F560](v11, v8);
    }

    else
    {
      if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }
    }

    if (__OFADD__(v11, 1))
    {
      break;
    }

    sub_24E041204(v3);

    if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
    {
      sub_24DF8BFF4(v3, &qword_27F1E1720);
      ++v11;
    }

    else
    {
      v12 = v18;
      sub_24E041BD4(v3, v18, type metadata accessor for Shelf);
      sub_24E041BD4(v12, v20, type metadata accessor for Shelf);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076D5C();
        v21 = v16;
      }

      v13 = *(v21 + 16);
      if (v13 >= *(v21 + 24) >> 1)
      {
        sub_24E076D5C();
        v21 = v17;
      }

      v14 = v20;
      v15 = v21;
      *(v21 + 16) = v13 + 1;
      sub_24E041BD4(v14, v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v13, type metadata accessor for Shelf);
      ++v11;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_24E040DB8(uint64_t a1)
{
  v2 = 0;
  v3 = 5;
  switch(*(v1 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_intentOnFirstLoad))
  {
    case 0xFFFFFFFFFFFFFFFFLL:
    case 4:
      v4 = *(a1 + 16);
      v5 = (a1 + 40);
      v6 = v4 + 1;
      do
      {
        if (!--v6)
        {
          goto LABEL_20;
        }

        v7 = v5 + 16;
        v8 = *v5;
        v5 += 16;
      }

      while (v8);
      v3 = 0;
      v9 = (v7 - 24);
      goto LABEL_18;
    case 0:
      v4 = *(a1 + 16);
      v18 = (a1 + 40);
      v19 = v4 + 1;
      while (--v19)
      {
        v20 = v18 + 16;
        v21 = *v18;
        v18 += 16;
        if (v21 == 2)
        {
          v9 = (v20 - 24);
          v3 = 2;
          goto LABEL_18;
        }
      }

      goto LABEL_20;
    case 1:
      v4 = *(a1 + 16);
      v10 = (a1 + 40);
      v11 = v4 + 1;
      while (--v11)
      {
        v12 = v10 + 16;
        v13 = *v10;
        v10 += 16;
        if (v13 == 1)
        {
          v9 = (v12 - 24);
          v3 = 1;
          goto LABEL_18;
        }
      }

      goto LABEL_20;
    case 2:
      v4 = *(a1 + 16);
      v14 = (a1 + 40);
      v15 = v4 + 1;
      break;
    case 3:
    case 5:
      goto LABEL_19;
    default:
      type metadata accessor for GKGameCenterViewControllerState(0);
      sub_24E348C58();
      __break(1u);
      return;
  }

  while (--v15)
  {
    v16 = v14 + 16;
    v17 = *v14;
    v14 += 16;
    if (v17 == 3)
    {
      v9 = (v16 - 24);
      v3 = 3;
LABEL_18:
      v2 = *v9;
      sub_24DF959BC(*v9, v3);
      v22 = v2;
LABEL_19:
      sub_24E03BFBC(v2, v3);
      sub_24E041828(v2, v3);
      v23 = v2;
      v24 = v3;
      goto LABEL_22;
    }
  }

LABEL_20:
  if (!v4)
  {
    return;
  }

  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  sub_24DF959BC(v25, v26);
  sub_24E03BFBC(v25, v26);
  v23 = v25;
  v24 = v26;
LABEL_22:

  sub_24DF959D0(v23, v24);
}

uint64_t sub_24E040FA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1730);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 utilityServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_24E041C48;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E0D5E98;
  aBlock[3] = &block_descriptor_22;
  v10 = _Block_copy(aBlock);

  [v7 currentNonGameCenterForegroundGameHandler_];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

uint64_t sub_24E041194(uint64_t a1)
{
  if (a1)
  {
    [objc_allocWithZone(MEMORY[0x277D0C048]) initWithInternalRepresentation_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1730);
  return sub_24E348018();
}

uint64_t sub_24E041204@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_requiredData;
  swift_beginAccess();
  sub_24E041AEC(v1 + v6, v5);
  sub_24E316520(v5, v1, a1);
  return sub_24DF8BFF4(v5, &qword_27F1DF018);
}

void sub_24E0412E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_24E287BD0();
  if (!*(v2 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_playerId + 8))
  {
    v6 = sub_24E287BD0();
    v7 = [v6 internal];

    v8 = [v7 playerID];
    sub_24E347CF8();
  }

  v9 = *(v3 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_game);
  type metadata accessor for DashboardRequiredDataPresenter(0);
  OUTLINED_FUNCTION_1_30();
  v10 = v9;

  sub_24E1C74F8();
  sub_24E03D9AC(v11);
  if (*(v3 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_requiredDataPresenter))
  {

    sub_24E1C6BA4(a1, a2);
    OUTLINED_FUNCTION_18();
  }

  else
  {
    OUTLINED_FUNCTION_18();
  }
}

void sub_24E0414FC()
{

  sub_24E041828(*(v0 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_selectedItem), *(v0 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_selectedItem + 8));

  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_requiredData, &qword_27F1DF018);

  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI25DashboardSidebarPresenter_dashboardDisplayMode);
}

uint64_t type metadata accessor for DashboardSidebarPresenter()
{
  result = qword_27F1E1688;
  if (!qword_27F1E1688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E041734()
{
  sub_24DF95920();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24E041828(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_24DF959D0(a1, a2);
  }
}

uint64_t sub_24E04183C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24DFB4D64;
  OUTLINED_FUNCTION_8_21();

  return sub_24E03DE14(v2, v3, v4, v5);
}

uint64_t sub_24E041928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E04198C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DFB3184;

  return sub_24E04018C(a1, v4, v5, v6);
}

unint64_t sub_24E041A6C()
{
  result = qword_27F1E1718;
  if (!qword_27F1E1718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1718);
  }

  return result;
}

uint64_t sub_24E041AEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E041B5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E041BD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

id sub_24E041C34(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_24DF959BC(result, a2);
  }

  return result;
}

uint64_t sub_24E041C48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1730);
  OUTLINED_FUNCTION_4_5(v2);

  return sub_24E041194(a1);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E041D0C()
{
  result = qword_27F1E1740;
  if (!qword_27F1E1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1740);
  }

  return result;
}

uint64_t sub_24E041D60(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DashboardSidebarPresenter.SidebarPresenterError(_BYTE *result, int a2, int a3)
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

unint64_t sub_24E041EAC()
{
  result = qword_27F1E1780;
  if (!qword_27F1E1780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1780);
  }

  return result;
}

double OUTLINED_FUNCTION_3_38()
{
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t Optional.nonNilDescription.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v18 - v8 + 32;
  v10 = *(v3 + 16);
  v10(v18 - v8 + 32, v1, a1, v7);
  v11 = *(a1 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_2;
  }

  (v10)(v5, v9, a1);
  if (swift_dynamicCast())
  {
    v14 = v18[0];
LABEL_9:
    (*(*(v11 - 8) + 8))(v5, v11);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30);
  if (swift_dynamicCast())
  {
    v15 = v18[0];
    swift_getErrorValue();
    v14 = sub_24E348CA8();

    goto LABEL_9;
  }

  EnumTagSinglePayload = (*(*(v11 - 8) + 8))(v5, v11);
LABEL_2:
  MEMORY[0x28223BE20](EnumTagSinglePayload);
  *(&v17 - 2) = v11;
  sub_24E042318(sub_24E0422F8, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v13, v18);
  if (v18[1])
  {
    v14 = v18[0];
  }

  else
  {
    v14 = 7104878;
  }

LABEL_10:
  (*(v3 + 8))(v9, a1);
  return v14;
}

uint64_t sub_24E042228@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = sub_24E347D28();
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_24E042318@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v25 = a4;
  v26 = a1;
  v27 = a3;
  v23 = *(a2 - 8);
  v24 = a2;
  MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, v16);
  v21 = 1;
  if (__swift_getEnumTagSinglePayload(v18, 1, v10) != 1)
  {
    (*(v11 + 32))(v14, v18, v10);
    v26(v14, v8);
    (*(v11 + 8))(v14, v10);
    if (v5)
    {
      return (*(v23 + 32))(v25, v8, v24);
    }

    v21 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a5, v21, 1, v27);
}

uint64_t sub_24E0425C4()
{
  OUTLINED_FUNCTION_3_39();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DF720);
  MEMORY[0x25303D7B0](&v2, v0);
  return v2;
}

uint64_t sub_24E042610()
{
  OUTLINED_FUNCTION_3_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DF720);
  return sub_24E346C68();
}

uint64_t KeyPathToggle.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a1;
  v52 = a2;
  v41 = *(a1 + 16);
  v3 = sub_24E348608();
  OUTLINED_FUNCTION_2_7();
  v51 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1788);
  v44 = v8;
  OUTLINED_FUNCTION_2_7();
  v49 = v9;
  MEMORY[0x28223BE20](v10);
  v39 = &v39 - v11;
  OUTLINED_FUNCTION_0_64();
  v46 = v3;
  WitnessTable = swift_getWitnessTable();
  v47 = WitnessTable;
  v45 = sub_24E042B7C();
  *&v56 = v3;
  *(&v56 + 1) = v8;
  *&v57 = WitnessTable;
  *(&v57 + 1) = v45;
  v13 = sub_24E3457D8();
  v42 = v13;
  OUTLINED_FUNCTION_2_7();
  v48 = v14;
  MEMORY[0x28223BE20](v15);
  v40 = &v39 - v16;
  v43 = OUTLINED_FUNCTION_1_49();
  *&v56 = v13;
  *(&v56 + 1) = v43;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2_7();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v39 - v24;
  v26 = v2[1];
  v56 = *v2;
  v57 = v26;
  v58 = v2[2];
  v59 = *(v2 + 6);
  v27 = v41;
  v53 = v41;
  v54 = &v56;

  sub_24E346C28();
  v28 = v7;
  sub_24E3431F8();
  v29 = swift_allocObject();
  v30 = v57;
  *(v29 + 24) = v56;
  *(v29 + 16) = v27;
  *(v29 + 40) = v30;
  *(v29 + 56) = v58;
  *(v29 + 72) = v59;
  (*(*(v50 - 8) + 16))(v55, &v56);
  v31 = v40;
  v32 = v44;
  v33 = v46;
  v34 = v39;
  sub_24E346918();

  (*(v51 + 8))(v28, v33);
  (*(v49 + 8))(v34, v32);
  v35 = v42;
  View.GKFocusable(_:)();
  (*(v48 + 8))(v31, v35);
  v36 = *(v19 + 16);
  v36(v25, v22, OpaqueTypeMetadata2);
  v37 = *(v19 + 8);
  v37(v22, OpaqueTypeMetadata2);
  v36(v52, v25, OpaqueTypeMetadata2);
  return (v37)(v25, OpaqueTypeMetadata2);
}

unint64_t sub_24E042B7C()
{
  result = qword_27F1E1790[0];
  if (!qword_27F1E1790[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1788);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1E1790);
  }

  return result;
}

uint64_t sub_24E042BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 32))
  {
    v3 = sub_24E3487B8();
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v3 = 6369134;
      v5 = 0xE300000000000000;
    }

    MEMORY[0x25303E950](v3, v5);
  }

  sub_24DF90C4C();

  result = sub_24E3464E8();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_24E042CA8(unsigned __int8 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a2[1];
  v10 = *a2;
  v11 = v4;
  v12 = a2[2];
  v13 = *(a2 + 6);
  result = sub_24E0425C4();
  if (v3 != (result & 1))
  {
    v6 = type metadata accessor for KeyPathToggle();
    v7 = a2[1];
    v10 = *a2;
    v11 = v7;
    v12 = a2[2];
    v13 = *(a2 + 6);
    (*(*(v6 - 8) + 16))(v9, a2, v6);
    sub_24E042610();
    v8 = *(&v12 + 1);
  }

  return result;
}

uint64_t sub_24E042DF0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_1_49()
{

  return swift_getWitnessTable();
}

uint64_t sub_24E042E9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_24E042EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24E042F40(double a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 32), *(v1 + 56));
  sub_24E3440D8();
  return a1;
}

uint64_t sub_24E042FCC()
{
  if (*(v0 + 72) == 1)
  {
    sub_24E3484F8();
    OUTLINED_FUNCTION_1_50();
    sub_24E3440D8();
    v2 = v1;
    v7.origin.x = OUTLINED_FUNCTION_28();
    CGRectGetMidX(v7);
    v8.origin.x = OUTLINED_FUNCTION_28();
    floor(CGRectGetMidY(v8) - v2 * 0.5);
  }

  else
  {
    OUTLINED_FUNCTION_1_50();
    sub_24E3440D8();
    v4 = v3;
    v9.origin.x = OUTLINED_FUNCTION_28();
    CGRectGetMinX(v9);
    v10.origin.x = OUTLINED_FUNCTION_28();
    floor(CGRectGetMidY(v10) + v4 * -0.5);
  }

  OUTLINED_FUNCTION_1_50();
  OUTLINED_FUNCTION_28();
  sub_24E348508();
  sub_24E344088();
  OUTLINED_FUNCTION_28();

  return sub_24E343FD8();
}

uint64_t sub_24E043174(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

id UIView.highlightedTintColor.getter()
{
  result = [v0 tintColor];
  if (result)
  {
    v2 = result;
    v3 = [result colorWithAlphaComponent_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24E043290(uint64_t a1, uint64_t *a2, id *a3, uint64_t *a4)
{
  v7 = sub_24E344158();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  v11 = *a3;
  v9 = *a4;
  *v8 = *a3;
  v8[1] = v9;
  (*(*(v7 - 8) + 104))();

  return v11;
}

uint64_t sub_24E043348()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DD748 != -1)
  {
    swift_once();
  }

  v4 = sub_24E344158();
  v5 = __swift_project_value_buffer(v4, qword_27F1E1818);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  qword_27F1E1878 = sub_24E3444F8();
  unk_27F1E1880 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(qword_27F1E1860);
  v9[3] = v0;
  v9[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E043514()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DD750 != -1)
  {
    swift_once();
  }

  v4 = sub_24E344158();
  v5 = __swift_project_value_buffer(v4, qword_27F1E1830);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  qword_27F1E18A0 = sub_24E3444F8();
  unk_27F1E18A8 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(qword_27F1E1888);
  v9[3] = v0;
  v9[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E0436E0()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DD758 != -1)
  {
    swift_once();
  }

  v4 = sub_24E344158();
  v5 = __swift_project_value_buffer(v4, qword_27F1E1848);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  qword_27F1E18C8 = sub_24E3444F8();
  unk_27F1E18D0 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(qword_27F1E18B0);
  v9[3] = v0;
  v9[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E0438A8()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DD758 != -1)
  {
    swift_once();
  }

  v4 = sub_24E344158();
  v5 = __swift_project_value_buffer(v4, qword_27F1E1848);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  qword_27F1E18F0 = sub_24E3444F8();
  unk_27F1E18F8 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(qword_27F1E18D8);
  v9[3] = v0;
  v9[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

char *sub_24E043A74(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v60 - v11;
  v13 = OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_gradientBackground;
  sub_24E045028();
  *&v4[v13] = sub_24E317454(10.0);
  v14 = OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_headingLabel;
  if (qword_27F1DD748 != -1)
  {
    OUTLINED_FUNCTION_8_22();
    swift_once();
  }

  v15 = sub_24E344158();
  v16 = __swift_project_value_buffer(v15, qword_27F1E1818);
  v17 = *(*(v15 - 8) + 16);
  v17(v12, v16, v15);
  OUTLINED_FUNCTION_1_22();
  v18 = type metadata accessor for DynamicTypeLabel();
  v19 = objc_allocWithZone(v18);
  v20 = OUTLINED_FUNCTION_1_51();
  v26 = sub_24E0AEF24(v20, v21, v22, v23, v24, v25);
  *&v4[v14] = v26;
  v27 = OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_detailLabel;
  if (qword_27F1DD750 != -1)
  {
    OUTLINED_FUNCTION_7_23();
    v26 = swift_once();
  }

  v28 = OUTLINED_FUNCTION_6_13(v26, qword_27F1E1830);
  (v17)(v28);
  OUTLINED_FUNCTION_1_22();
  v29 = objc_allocWithZone(type metadata accessor for EmphasizedLabel(0));
  OUTLINED_FUNCTION_1_51();
  v30 = sub_24E3272CC();
  *&v4[v27] = v30;
  v31 = OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_scoreLabel;
  if (qword_27F1DD758 != -1)
  {
    OUTLINED_FUNCTION_6_27();
    v30 = swift_once();
  }

  v32 = OUTLINED_FUNCTION_6_13(v30, qword_27F1E1848);
  (v17)(v32);
  OUTLINED_FUNCTION_1_22();
  v33 = objc_allocWithZone(v18);
  v34 = OUTLINED_FUNCTION_1_51();
  *&v4[v31] = sub_24E0AEF24(v34, v35, v36, v37, v38, v39);
  v40 = OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_avatarView;
  type metadata accessor for AvatarView();
  *&v5[v40] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v41 = type metadata accessor for LeaderboardHeroLockupView();
  v60.receiver = v5;
  v60.super_class = v41;
  v42 = objc_msgSendSuper2(&v60, sel_initWithFrame_, a1, a2, a3, a4);
  [v42 setLayoutMargins_];
  v43 = [v42 layer];
  [v43 addSublayer_];

  v44 = OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_headingLabel;
  v45 = *&v42[OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_headingLabel];
  v46 = objc_opt_self();
  v47 = v45;
  v48 = [v46 whiteColor];
  v49 = [v48 colorWithAlphaComponent_];

  [v47 setTextColor_];
  v50 = *&v42[OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_detailLabel];
  v51 = [v46 whiteColor];
  [v50 setTextColor_];

  v52 = OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_scoreLabel;
  v53 = *&v42[OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_scoreLabel];
  v54 = [v46 whiteColor];
  v55 = [v54 colorWithAlphaComponent_];

  [v53 setTextColor_];
  v56 = [*&v42[v44] layer];
  v57 = *MEMORY[0x277CDA5E8];
  [v56 setCompositingFilter_];

  v58 = [*&v42[v52] layer];
  [v58 setCompositingFilter_];

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_15_12();

  return v42;
}

void sub_24E043F28()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_gradientBackground;
  sub_24E045028();
  *(v0 + v5) = sub_24E317454(10.0);
  v6 = OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_headingLabel;
  if (qword_27F1DD748 != -1)
  {
    OUTLINED_FUNCTION_8_22();
    swift_once();
  }

  v7 = sub_24E344158();
  v8 = __swift_project_value_buffer(v7, qword_27F1E1818);
  v9 = *(*(v7 - 8) + 16);
  v9(v4, v8, v7);
  OUTLINED_FUNCTION_1_22();
  v10 = type metadata accessor for DynamicTypeLabel();
  v11 = objc_allocWithZone(v10);
  v12 = OUTLINED_FUNCTION_1_51();
  v18 = sub_24E0AEF24(v12, v13, v14, v15, v16, v17);
  *(v0 + v6) = v18;
  v19 = OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_detailLabel;
  if (qword_27F1DD750 != -1)
  {
    OUTLINED_FUNCTION_7_23();
    v18 = swift_once();
  }

  v20 = OUTLINED_FUNCTION_6_13(v18, qword_27F1E1830);
  (v9)(v20);
  OUTLINED_FUNCTION_1_22();
  v21 = objc_allocWithZone(type metadata accessor for EmphasizedLabel(0));
  OUTLINED_FUNCTION_1_51();
  v22 = sub_24E3272CC();
  *(v0 + v19) = v22;
  v23 = OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_scoreLabel;
  if (qword_27F1DD758 != -1)
  {
    OUTLINED_FUNCTION_6_27();
    v22 = swift_once();
  }

  v24 = OUTLINED_FUNCTION_6_13(v22, qword_27F1E1848);
  (v9)(v24);
  OUTLINED_FUNCTION_1_22();
  v25 = objc_allocWithZone(v10);
  v26 = OUTLINED_FUNCTION_1_51();
  *(v0 + v23) = sub_24E0AEF24(v26, v27, v28, v29, v30, v31);
  v32 = OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_avatarView;
  type metadata accessor for AvatarView();
  *(v1 + v32) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_24E348AE8();
  __break(1u);
}

double sub_24E044228()
{
  v1 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  [v0 layoutMargins];
  sub_24E348538();
  v9 = v8;
  sub_24E044734();
  sub_24E3440D8();
  [v0 layoutMargins];
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v7, v1);
  return v9 + v11 + v13;
}

uint64_t sub_24E044424()
{
  v1 = v0;
  v2 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v9 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v15 = v14 - v13;
  v28.receiver = v0;
  v28.super_class = type metadata accessor for LeaderboardHeroLockupView();
  objc_msgSendSuper2(&v28, sel_layoutSubviews);
  v16 = *&v0[OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_gradientBackground];
  OUTLINED_FUNCTION_9_20();
  [v16 setFrame_];
  OUTLINED_FUNCTION_9_20();
  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_4_16(v17, v18);
  OUTLINED_FUNCTION_0_33();
  CGRectGetWidth(v29);
  OUTLINED_FUNCTION_9_20();
  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_4_16(v19, v20);
  OUTLINED_FUNCTION_0_33();
  CGRectGetHeight(v30);
  OUTLINED_FUNCTION_9_20();
  OUTLINED_FUNCTION_11_13();
  sub_24E044734();
  sub_24E344608();
  (*(v4 + 8))(v8, v2);
  v21 = *&v1[OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_avatarView];
  OUTLINED_FUNCTION_9_20();
  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_4_16(v22, v23);
  OUTLINED_FUNCTION_0_33();
  v24 = CGRectGetMaxX(v31) + -110.0;
  OUTLINED_FUNCTION_9_20();
  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_4_16(v25, v26);
  OUTLINED_FUNCTION_0_33();
  [v21 setFrame_];
  return (*(v11 + 8))(v15, v9);
}

uint64_t sub_24E044734()
{
  v35 = sub_24E344648();
  OUTLINED_FUNCTION_0_14();
  v38 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v42 = v4 - v3;
  v5 = sub_24E344658();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  v12 = sub_24E3445E8();
  OUTLINED_FUNCTION_0_14();
  v44 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v17 = v16 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10);
  sub_24E344688();
  *(swift_allocObject() + 16) = xmmword_24E369B70;
  v18 = *(v0 + OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_headingLabel);
  v49 = type metadata accessor for DynamicTypeLabel();
  v50 = MEMORY[0x277D22A58];
  v36 = v49;
  v48 = v18;
  v19 = qword_27F1DD760;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = *MEMORY[0x277D227C8];
  v41 = *(v44 + 104);
  v41(v17);
  v40 = *MEMORY[0x277D227F0];
  v39 = *(v7 + 104);
  v39(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E344618();
  sub_24DF8A8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
  sub_24DF8A8FC();
  sub_24E3487E8();
  sub_24E344678();
  (*(v38 + 8))(v42, v35);
  v37 = *(v7 + 8);
  v37(v11, v5);
  (*(v44 + 8))(v17, v12);
  sub_24DF8A960(&v45);
  __swift_destroy_boxed_opaque_existential_1(&v48);
  v21 = v12;
  v22 = *(v0 + OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_detailLabel);
  v49 = type metadata accessor for EmphasizedLabel(0);
  v50 = MEMORY[0x277D22A58];
  v48 = v22;
  v23 = qword_27F1DD768;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  (v41)(v17, v43, v21);
  (v39)(v11, v40, v5);
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E344618();
  OUTLINED_FUNCTION_5_31();
  sub_24E344678();
  v25 = OUTLINED_FUNCTION_13_19();
  v26(v25);
  v37(v11, v5);
  OUTLINED_FUNCTION_14_12();
  v27();
  sub_24DF8A960(&v45);
  __swift_destroy_boxed_opaque_existential_1(&v48);
  v28 = *(v0 + OBJC_IVAR____TtC12GameCenterUI25LeaderboardHeroLockupView_scoreLabel);
  v49 = v36;
  v50 = MEMORY[0x277D22A58];
  v48 = v28;
  v29 = qword_27F1DD770;
  v30 = v28;
  if (v29 != -1)
  {
    swift_once();
  }

  if (qword_27F1DD778 != -1)
  {
    swift_once();
  }

  sub_24DF89628(qword_27F1E18D8, &v45);
  (v41)(v17, v43, v21);
  (v39)(v11, v40, v5);
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E344618();
  OUTLINED_FUNCTION_5_31();
  sub_24E344678();
  v31 = OUTLINED_FUNCTION_13_19();
  v32(v31);
  v37(v11, v5);
  OUTLINED_FUNCTION_14_12();
  v33();
  sub_24DF8A960(&v45);
  __swift_destroy_boxed_opaque_existential_1(&v48);
  return sub_24E344668();
}

id sub_24E044F54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LeaderboardHeroLockupView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E045028()
{
  result = qword_27F1E1928;
  if (!qword_27F1E1928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E1928);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_31()
{

  return sub_24E3487E8();
}

id OUTLINED_FUNCTION_9_20()
{

  return [v0 (v1 + 3832)];
}

id OUTLINED_FUNCTION_11_13()
{

  return [v0 (v1 + 3448)];
}

uint64_t sub_24E0451C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF338);
  OUTLINED_FUNCTION_4_5(v7);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  sub_24DF95B98(a1, &v12 - v9, &qword_27F1DF338);
  return a5(v10);
}

uint64_t sub_24E045294(uint64_t a1)
{
  sub_24E345658();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_16();
  (*(v4 + 16))(v1, a1);
  return sub_24E345938();
}

void ActivitySharingRepromptView.init(recipientName:layoutMetrics:continueHandler:)()
{
  OUTLINED_FUNCTION_32();
  v30 = v0;
  v31 = v1;
  v3 = v2;
  v28 = v4;
  v29 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0);
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = sub_24E347638();
  OUTLINED_FUNCTION_0_14();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v35, v3, sizeof(v35));
  v32 = 0;
  sub_24E346B78();
  v20 = v34;
  *(v7 + 120) = v33;
  *(v7 + 128) = v20;
  v32 = 0;
  sub_24E346B78();
  v21 = v34;
  *(v7 + 136) = v33;
  *(v7 + 144) = v21;
  v22 = type metadata accessor for ActivitySharingRepromptView();
  v23 = v22[9];
  *(v7 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0);
  swift_storeEnumTagMultiPayload();
  v24 = v22[10];
  *(v7 + v24) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v25 = v22[11];
  *(v7 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940);
  swift_storeEnumTagMultiPayload();
  sub_24E347628();
  sub_24E3477D8();
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  sub_24E32EA08();
  v33 = sub_24E3477C8();
  v34 = MEMORY[0x277D221C0];
  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0);
  sub_24E3475B8();
  (*(v10 + 8))(v13, v8);

  (*(v16 + 8))(v19, v14);
  v26 = v29;
  *v7 = v28;
  *(v7 + 8) = v26;
  memcpy((v7 + 16), v35, 0x58uLL);
  v27 = v31;
  *(v7 + 104) = v30;
  *(v7 + 112) = v27;
  OUTLINED_FUNCTION_18();
}

uint64_t type metadata accessor for ActivitySharingRepromptView()
{
  result = qword_27F1E1950;
  if (!qword_27F1E1950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E0456A8()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v4 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_22_9(*(v9 + 36));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E01FF10(v1, v3);
  }

  else
  {
    sub_24E348268();
    v10 = sub_24E346198();
    OUTLINED_FUNCTION_6_12();

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v6 + 8))(v0, v4);
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E045818()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v4 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_22_9(*(v9 + 44));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345658();
    OUTLINED_FUNCTION_5_2();
    (*(v10 + 32))(v3, v1);
  }

  else
  {
    sub_24E348268();
    v11 = sub_24E346198();
    OUTLINED_FUNCTION_6_12();

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v6 + 8))(v0, v4);
  }

  OUTLINED_FUNCTION_18();
}

void ActivitySharingRepromptView.body.getter()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v3 = type metadata accessor for ActivitySharingRepromptView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v19 = v0;
  sub_24E04AA44(v0, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24E04AAA8(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = sub_24E345CF8();
  v9 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1930) + 36);
  sub_24E046C88(v0, v9);
  v10 = sub_24E345398();
  v11 = MEMORY[0x25303CDB0]((2 * v10));
  v12 = sub_24E345728();
  v13 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1938) + 36);
  *v13 = v12;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  *(v13 + 17) = v11;
  *(v13 + 24) = v8;
  *v2 = sub_24E04AB0C;
  v2[1] = v7;
  v14 = sub_24E345718();
  LOBYTE(v8) = sub_24E3461E8();
  v15 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1940) + 36);
  *v15 = v14;
  v15[8] = v8;
  sub_24E04AA44(v19, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_24E04AAA8(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v6);
  v17 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1948) + 36));
  *v17 = sub_24E04AB88;
  v17[1] = v16;
  v17[2] = 0;
  v17[3] = 0;
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E045BC4()
{
  sub_24E3461C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1A20);
  sub_24E04B7E0();
  return sub_24E345218();
}

void *sub_24E045C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1A38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &__src[-v5];
  *v6 = sub_24E345CF8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1A40);
  sub_24E045E00(a1);
  sub_24E345488();
  sub_24E346E28();
  sub_24E3457F8();
  sub_24E04B898(v6, a2, &qword_27F1E1A38);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1A20);
  return memcpy((a2 + *(v7 + 36)), __src, 0x70uLL);
}

uint64_t sub_24E045E00(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v82 = v1;
  v3 = v2;
  v84 = v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1A48);
  MEMORY[0x28223BE20](v83);
  v6 = &v71 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1A50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v71 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1A58);
  MEMORY[0x28223BE20](v77);
  v11 = &v71 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1A60);
  MEMORY[0x28223BE20](v79);
  v80 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v71 - v14;
  MEMORY[0x28223BE20](v15);
  v81 = &v71 - v16;
  v76 = sub_24E345658();
  v17 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1A68);
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  if (sub_24E0467B8())
  {
    v23 = *(v3 + 72);
    v24 = sub_24E345BF8();
    v89[0] = 0;
    sub_24E048354(v3, v85);
    sub_24E346E28();
    sub_24E3457F8();
    memcpy(&v86[7], v85, 0x258uLL);
    v25 = v89[0];
    v26 = sub_24E3461D8();
    sub_24E3451B8();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v90[0] = 0;
    sub_24E345488();
    sub_24E346E28();
    sub_24E3453D8();
    *&v87[7] = *v91;
    *&v87[23] = *&v91[16];
    *&v87[39] = *&v91[32];
    *v22 = v24;
    *(v22 + 1) = v23;
    v22[16] = v25;
    memcpy(v22 + 17, v86, 0x25FuLL);
    v22[624] = v26;
    *(v22 + 79) = v28;
    *(v22 + 80) = v30;
    *(v22 + 81) = v32;
    *(v22 + 82) = v34;
    v22[664] = 0;
    v35 = *&v87[16];
    *(v22 + 665) = *v87;
    *(v22 + 681) = v35;
    *(v22 + 697) = *&v87[32];
    *(v22 + 89) = *&v87[47];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1A90);
    sub_24E04B8E4();
    sub_24DFB4C28(&qword_27F1E1AC0, &qword_27F1E1A48);
    return sub_24E345E38();
  }

  else
  {
    v73 = v11;
    v74 = v20;
    v75 = v6;
    v72 = sub_24E345CF8();
    v89[0] = 0;
    sub_24E048C5C(v3, v91);
    memcpy(v93, v91, 0x1E9uLL);
    memcpy(v94, v91, 0x1E9uLL);
    sub_24DF95B98(v93, v90, &qword_27F1E1A70);
    sub_24DFA9298(v94, &qword_27F1E1A70);
    memcpy(&v92[7], v93, 0x1E9uLL);
    v37 = v89[0];
    v38 = sub_24E3461D8();
    v39 = *(v3 + 24);
    v40 = *(v3 + 32);
    sub_24E345488();
    sub_24E3451B8();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v92[496] = 0;
    *v91 = v72;
    *&v91[8] = 0;
    v91[16] = v37;
    memcpy(&v91[17], v92, 0x1F0uLL);
    v91[520] = v38;
    *&v91[528] = v42;
    *&v91[536] = v44;
    *&v91[544] = v46;
    *&v91[552] = v48;
    v91[560] = 0;
    sub_24E045818();
    v49 = sub_24E345638();
    (*(v17 + 8))(v19, v76);
    LODWORD(v76) = v49;
    LODWORD(v72) = (v49 & 1) == 0;
    v50 = *(v3 + 96);
    *v9 = sub_24E345CF8();
    *(v9 + 1) = v50;
    v9[16] = 0;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1A78);
    sub_24E046F28(v3, &v9[*(v51 + 44)]);
    sub_24E345488();
    sub_24E346E28();
    sub_24E3457F8();
    v52 = v73;
    sub_24E04B898(v9, v73, &qword_27F1E1A50);
    memcpy((v52 + *(v77 + 36)), v95, 0x70uLL);
    v53 = *(v3 + 80);
    sub_24E345488();
    if (v54 >= v55 || v54 <= 436.0)
    {
      v57 = v39;
    }

    else
    {
      v57 = v40;
    }

    v58 = *(v3 + 88);
    sub_24E345488();
    if (v59 >= v60 || v59 <= 436.0)
    {
      v62 = v39;
    }

    else
    {
      v62 = v40;
    }

    v63 = sub_24E3461E8();
    v64 = v52;
    v65 = v78;
    sub_24E04B898(v64, v78, &qword_27F1E1A58);
    v66 = v65 + *(v79 + 36);
    *v66 = v63;
    *(v66 + 8) = v53;
    *(v66 + 16) = v57;
    *(v66 + 24) = v58;
    *(v66 + 32) = v62;
    *(v66 + 40) = 0;
    v67 = v81;
    sub_24E04B898(v65, v81, &qword_27F1E1A60);
    memcpy(v88, v91, sizeof(v88));
    v68 = v80;
    sub_24DF95B98(v67, v80, &qword_27F1E1A60);
    memcpy(v89, v88, 0x231uLL);
    v69 = v75;
    memcpy(v75, v88, 0x231uLL);
    v69[71] = 0;
    *(v69 + 576) = v72;
    *(v69 + 577) = v76 & 1;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1A80);
    sub_24DF95B98(v68, v69 + *(v70 + 64), &qword_27F1E1A60);
    sub_24DF95B98(v91, v90, &qword_27F1E1A88);
    sub_24DF95B98(v89, v90, &qword_27F1E1A88);
    sub_24DFA9298(v68, &qword_27F1E1A60);
    memcpy(v90, v88, 0x231uLL);
    sub_24DFA9298(v90, &qword_27F1E1A88);
    sub_24DF95B98(v69, v22, &qword_27F1E1A48);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1A90);
    sub_24E04B8E4();
    sub_24DFB4C28(&qword_27F1E1AC0, &qword_27F1E1A48);
    sub_24E345E38();
    sub_24DFA9298(v91, &qword_27F1E1A88);
    sub_24DFA9298(v69, &qword_27F1E1A48);
    return sub_24DFA9298(v67, &qword_27F1E1A60);
  }
}

uint64_t sub_24E0467B8()
{
  v1 = sub_24E345658();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24E345F38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DF890);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF338);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v31 = v0;
  sub_24E0456A8();
  v19 = v4;
  (*(v4 + 104))(v15, *MEMORY[0x277CE0558], v3);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
  v20 = *(v7 + 56);
  sub_24DF95B98(v18, v9, &qword_27F1DF338);
  sub_24DF95B98(v15, &v9[v20], &qword_27F1DF338);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_24DFA9298(v15, &qword_27F1DF338);
    sub_24DFA9298(v18, &qword_27F1DF338);
    if (__swift_getEnumTagSinglePayload(&v9[v20], 1, v3) == 1)
    {
      sub_24DFA9298(v9, &qword_27F1DF338);
LABEL_9:
      v25 = v30;
      sub_24E045818();
      v26 = sub_24E345638();
      (*(v32 + 8))(v25, v33);
      v21 = v26 ^ 1;
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_24DF95B98(v9, v12, &qword_27F1DF338);
  if (__swift_getEnumTagSinglePayload(&v9[v20], 1, v3) == 1)
  {
    sub_24DFA9298(v15, &qword_27F1DF338);
    sub_24DFA9298(v18, &qword_27F1DF338);
    (*(v19 + 8))(v12, v3);
LABEL_6:
    sub_24DFA9298(v9, &unk_27F1DF890);
    goto LABEL_7;
  }

  v22 = v29;
  (*(v19 + 32))(v29, &v9[v20], v3);
  sub_24E04B790(&qword_27F1DF3C8, MEMORY[0x277CE0570]);
  v23 = sub_24E347CA8();
  v24 = *(v19 + 8);
  v24(v22, v3);
  sub_24DFA9298(v15, &qword_27F1DF338);
  sub_24DFA9298(v18, &qword_27F1DF338);
  v24(v12, v3);
  sub_24DFA9298(v9, &qword_27F1DF338);
  if (v23)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_24E046C88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1990);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = sub_24E345658();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_24E0467B8() & 1) != 0 && (sub_24E045818(), v11 = sub_24E345638(), (*(v8 + 8))(v10, v7), (v11 & 1) == 0))
  {
    v13 = a1[9];
    *v6 = sub_24E345BF8();
    *(v6 + 1) = v13;
    v6[16] = 0;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1998);
    sub_24E04766C(a1, &v6[*(v14 + 44)]);
    v15 = a1[8];
    v17 = a1[10];
    v16 = a1[11];
    LOBYTE(v13) = sub_24E3461E8();
    v18 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19A0) + 36)];
    *v18 = v13;
    *(v18 + 1) = v17;
    *(v18 + 2) = v15;
    *(v18 + 3) = v16;
    *(v18 + 4) = v15;
    v18[40] = 0;
    v19 = sub_24E346E28();
    v21 = v20;
    v22 = sub_24E345708();
    v23 = sub_24E3461E8();
    v24 = &v6[*(v4 + 36)];
    *v24 = v22;
    v24[8] = v23;
    *(v24 + 2) = v19;
    *(v24 + 3) = v21;
    sub_24E04B898(v6, a2, &qword_27F1E1990);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v12, 1, v4);
}

uint64_t sub_24E046EA8(uint64_t a1)
{
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ActivitySharingRepromptView();
  return sub_24E32E770(6, 17, 3u, 0, a1 + *(v2 + 48), 0);
}

uint64_t sub_24E046F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v55 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19B0);
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v42 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19B8) - 8;
  MEMORY[0x28223BE20](v53);
  v54 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v42 - v6;
  v7 = type metadata accessor for ActivitySharingRepromptView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = v9;
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF830);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19A8);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v48 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  sub_24E04AA44(a1, v10);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  sub_24E04AAA8(v10, v22 + v21);
  sub_24E346BD8();
  sub_24E16A8AC(__src);
  v47 = MEMORY[0x277CDF028];
  sub_24DFB4C28(&qword_27F1DF868, &qword_27F1DF830);
  sub_24E04B194();
  sub_24E346598();
  (*(v12 + 8))(v14, v11);
  memcpy(__dst, __src, sizeof(__dst));
  sub_24E04B1E8(__dst);
  v23 = v43;
  v46 = *(v43 + 120);
  v45 = *(v43 + 128);
  LOBYTE(__src[0]) = v46;
  __src[1] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  LOBYTE(v9) = v56;
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v9;
  v26 = &v20[*(v16 + 44)];
  v27 = v20;
  *v26 = KeyPath;
  v26[1] = sub_24E04BCC0;
  v26[2] = v25;
  sub_24E04AA44(v23, v10);
  v28 = swift_allocObject();
  sub_24E04AAA8(v10, v28 + v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19C0);
  sub_24E04AF34();
  v29 = v49;
  sub_24E346BD8();
  v30 = swift_getKeyPath();
  v31 = sub_24E346958();
  __src[0] = v30;
  LOBYTE(__src[1]) = 0;
  __src[2] = v31;
  sub_24DFB4C28(&qword_27F1E19F0, &qword_27F1E19B0);
  sub_24E04B128();
  v32 = v50;
  v33 = v51;
  sub_24E346598();

  (*(v52 + 8))(v29, v33);
  LOBYTE(__src[0]) = v46;
  __src[1] = v45;
  sub_24E346B88();
  LOBYTE(KeyPath) = v56;
  v34 = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = KeyPath;
  v36 = (v32 + *(v53 + 44));
  *v36 = v34;
  v36[1] = sub_24E04BCC0;
  v36[2] = v35;
  v37 = v48;
  sub_24DF95B98(v27, v48, &qword_27F1E19A8);
  v38 = v54;
  sub_24DF95B98(v32, v54, &qword_27F1E19B8);
  v39 = v55;
  sub_24DF95B98(v37, v55, &qword_27F1E19A8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1B00);
  sub_24DF95B98(v38, v39 + *(v40 + 48), &qword_27F1E19B8);
  sub_24DFA9298(v32, &qword_27F1E19B8);
  sub_24DFA9298(v27, &qword_27F1E19A8);
  sub_24DFA9298(v38, &qword_27F1E19B8);
  return sub_24DFA9298(v37, &qword_27F1E19A8);
}

uint64_t sub_24E04766C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v55 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF830);
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v43 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19A8) - 8;
  MEMORY[0x28223BE20](v53);
  v54 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v43 - v6;
  v7 = type metadata accessor for ActivitySharingRepromptView();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = v9;
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19B0);
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19B8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v48 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v43 - v18;
  sub_24E04AA44(a1, v10);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  sub_24E04AAA8(v10, v20 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19C0);
  sub_24E04AF34();
  sub_24E346BD8();
  KeyPath = swift_getKeyPath();
  v22 = sub_24E346958();
  __dst[0] = KeyPath;
  LOBYTE(__dst[1]) = 0;
  __dst[2] = v22;
  v45 = MEMORY[0x277CDF028];
  sub_24DFB4C28(&qword_27F1E19F0, &qword_27F1E19B0);
  sub_24E04B128();
  v23 = v56;
  sub_24E346598();

  (*(v46 + 8))(v13, v11);
  v24 = v44;
  LODWORD(v46) = *(v44 + 120);
  v25 = *(v44 + 128);
  LOBYTE(__dst[0]) = v46;
  __dst[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  v26 = __src[0];
  v27 = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  v29 = (v23 + *(v15 + 44));
  *v29 = v27;
  v29[1] = sub_24DFEB7E4;
  v29[2] = v28;
  sub_24E04AA44(v24, v10);
  v30 = swift_allocObject();
  sub_24E04AAA8(v10, v30 + v19);
  v31 = v49;
  sub_24E346BD8();
  sub_24E16A8AC(__src);
  sub_24DFB4C28(&qword_27F1DF868, &qword_27F1DF830);
  sub_24E04B194();
  v32 = v50;
  v33 = v51;
  sub_24E346598();
  (*(v52 + 8))(v31, v33);
  memcpy(__dst, __src, sizeof(__dst));
  sub_24E04B1E8(__dst);
  LOBYTE(__src[0]) = v46;
  __src[1] = v25;
  sub_24E346B88();
  LOBYTE(v27) = v57;
  v34 = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = v27;
  v36 = (v32 + *(v53 + 44));
  *v36 = v34;
  v36[1] = sub_24E04BCC0;
  v36[2] = v35;
  v37 = v56;
  v38 = v48;
  sub_24DF95B98(v56, v48, &qword_27F1E19B8);
  v39 = v54;
  sub_24DF95B98(v32, v54, &qword_27F1E19A8);
  v40 = v55;
  sub_24DF95B98(v38, v55, &qword_27F1E19B8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1A08);
  sub_24DF95B98(v39, v40 + *(v41 + 48), &qword_27F1E19A8);
  sub_24DFA9298(v32, &qword_27F1E19A8);
  sub_24DFA9298(v37, &qword_27F1E19B8);
  sub_24DFA9298(v39, &qword_27F1E19A8);
  return sub_24DFA9298(v38, &qword_27F1E19B8);
}

uint64_t sub_24E047DB4@<X0>(uint64_t a1@<X8>)
{
  v46 = sub_24E346968();
  v41 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v40 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24E346A68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = GKGameCenterUIFrameworkBundle();
  sub_24E346AF8();
  v9 = *(v4 + 104);
  LODWORD(v31) = *MEMORY[0x277CE0FE0];
  v8 = v31;
  v9(v6, v31, v3);
  v32 = v9;
  v47 = sub_24E346AE8();

  v10 = *(v4 + 8);
  v10(v6, v3);
  v30 = v10;
  sub_24E346E28();
  sub_24E3453D8();
  v44 = v54;
  v45 = v52;
  v38 = v55;
  LODWORD(v39) = v53;
  v42 = v57;
  v43 = v56;
  v11 = GKGameCenterUIFrameworkBundle();
  sub_24E346AF8();
  v9(v6, v8, v3);
  v37 = sub_24E346AE8();

  v10(v6, v3);
  sub_24E346E28();
  sub_24E3453D8();
  v33 = v58;
  v34 = v60;
  v35 = v63;
  v36 = v62;
  v72 = v59;
  v70 = v61;
  (*(v41 + 104))(v40, *MEMORY[0x277CE0ED0], v46);
  v12 = sub_24E346A08();
  v29 = v12;
  LOBYTE(v10) = v72;
  LODWORD(v41) = v72;
  LOBYTE(v8) = v70;
  LODWORD(v40) = v70;
  v13 = GKGameCenterUIFrameworkBundle();
  sub_24E346AF8();
  v32(v6, v31, v3);
  v46 = sub_24E346AE8();

  v30(v6, v3);
  sub_24E346E28();
  sub_24E3453D8();
  v14 = v65;
  v31 = v66;
  v32 = v64;
  v15 = v67;
  v51 = v39;
  v50 = v38;
  v17 = v36;
  v16 = v37;
  v18 = v33;
  v73[0] = v37;
  v73[1] = v33;
  LOBYTE(v73[2]) = v10;
  *(&v73[2] + 1) = *v71;
  HIDWORD(v73[2]) = *&v71[3];
  v19 = v34;
  v73[3] = v34;
  LOBYTE(v73[4]) = v8;
  HIDWORD(v73[4]) = *&v69[3];
  *(&v73[4] + 1) = *v69;
  v20 = v35;
  v73[5] = v36;
  v73[6] = v35;
  v73[7] = 0x3FF0000000000000;
  v73[8] = v12;
  v39 = xmmword_24E36B8E0;
  *&v73[9] = xmmword_24E36B8E0;
  v73[11] = 0x4024000000000000;
  v49 = v65;
  v48 = v67;
  v21 = v51;
  v22 = v38;
  v23 = v45;
  *a1 = v47;
  *(a1 + 8) = v23;
  *(a1 + 16) = v21;
  v24 = v43;
  *(a1 + 24) = v44;
  *(a1 + 32) = v22;
  v25 = v42;
  *(a1 + 40) = v24;
  *(a1 + 48) = v25;
  memcpy((a1 + 56), v73, 0x60uLL);
  v26 = v31;
  v27 = v32;
  *(a1 + 152) = v46;
  *(a1 + 160) = v27;
  *(a1 + 168) = v14;
  *(a1 + 176) = v26;
  *(a1 + 184) = v15;
  *(a1 + 192) = v68;

  sub_24DF95B98(v73, v74, &qword_27F1E1AF8);
  v74[0] = v16;
  v74[1] = v18;
  v75 = v41;
  *v76 = *v71;
  *&v76[3] = *&v71[3];
  v77 = v19;
  v78 = v40;
  *v79 = *v69;
  *&v79[3] = *&v69[3];
  v80 = v17;
  v81 = v20;
  v82 = 0x3FF0000000000000;
  v83 = v29;
  v84 = v39;
  v85 = 0x4024000000000000;
  sub_24DFA9298(v74, &qword_27F1E1AF8);
}

uint64_t sub_24E048354@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
  v3 = sub_24E345658();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24E345CF8();
  LOBYTE(v35[0]) = 0;
  sub_24E048724(a1, v45);
  memcpy(v51, v45, 0x181uLL);
  memcpy(v52, v45, 0x181uLL);
  sub_24DF95B98(v51, v33, &qword_27F1E1AC8);
  sub_24DFA9298(v52, &qword_27F1E1AC8);
  memcpy(&v50[7], v51, 0x181uLL);
  v30 = LOBYTE(v35[0]);
  v27 = sub_24E345CF8();
  v49 = 1;
  sub_24E343AA8();
  v45[0] = sub_24E3437D8();
  v45[1] = v6;
  sub_24DF90C4C();
  v7 = sub_24E3464E8();
  v9 = v8;
  v11 = v10;
  sub_24E346288();
  v12 = sub_24E3464B8();
  v24 = v13;
  v25 = v12;
  v15 = v14;
  v26 = v16;

  sub_24DFA92EC(v7, v9, v11 & 1);

  sub_24E045818();
  LOBYTE(v7) = sub_24E345638();
  (*(v28 + 8))(v5, v3);
  LOBYTE(v9) = (v7 & 1) == 0;
  KeyPath = swift_getKeyPath();
  v15 &= 1u;
  v47 = v15;
  v18 = v49;
  v33[0] = v31;
  v33[1] = 0;
  LOBYTE(v33[2]) = v30;
  memcpy(&v33[2] + 1, v50, 0x188uLL);
  memcpy(v32, v33, 0x199uLL);
  v20 = v26;
  v19 = v27;
  v34[0] = v27;
  v34[1] = 0;
  LOBYTE(v34[2]) = v49;
  *(&v34[2] + 1) = *v48;
  HIDWORD(v34[2]) = *&v48[3];
  v21 = v24;
  v22 = v25;
  v34[3] = v25;
  v34[4] = v24;
  LOBYTE(v34[5]) = v15;
  *(&v34[5] + 1) = *v46;
  HIDWORD(v34[5]) = *&v46[3];
  v34[6] = v26;
  v34[7] = KeyPath;
  LOBYTE(v34[8]) = v9;
  memcpy(&v32[416], v34, 0x41uLL);
  memcpy(v29, v32, 0x1E1uLL);
  v35[0] = v19;
  v35[1] = 0;
  v36 = v18;
  *v37 = *v48;
  *&v37[3] = *&v48[3];
  v38 = v22;
  v39 = v21;
  v40 = v15;
  *v41 = *v46;
  *&v41[3] = *&v46[3];
  v42 = v20;
  v43 = KeyPath;
  v44 = v9;
  sub_24DF95B98(v33, v45, &qword_27F1E1AD0);
  sub_24DF95B98(v34, v45, &qword_27F1E1AD8);
  sub_24DFA9298(v35, &qword_27F1E1AD8);
  v45[0] = v31;
  v45[1] = 0;
  LOBYTE(v45[2]) = v30;
  memcpy(&v45[2] + 1, v50, 0x188uLL);
  return sub_24DFA9298(v45, &qword_27F1E1AD0);
}

uint64_t sub_24E048724@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v46 = a1;
  v50 = a2;
  v2 = sub_24E345658();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v47 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_24E345BF8();
  LOBYTE(v58[0]) = 0;
  sub_24E047DB4(v73);
  memcpy(v87, v73, sizeof(v87));
  memcpy(v88, v73, 0xD0uLL);
  sub_24DF95B98(v87, v56, &qword_27F1E1AE0);
  sub_24DFA9298(v88, &qword_27F1E1AE0);
  memcpy(&v86[7], v87, 0xD0uLL);
  v52 = LOBYTE(v58[0]);
  v53 = sub_24E3461F8();
  sub_24E3451B8();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  LOBYTE(v73[0]) = 0;
  sub_24E343AA8();
  v73[0] = sub_24E343788();
  v73[1] = v12;
  sub_24DF90C4C();
  v13 = sub_24E3464E8();
  v15 = v14;
  v17 = v16;
  sub_24E346268();
  v18 = sub_24E3464B8();
  v20 = v19;
  v22 = v21;

  sub_24DFA92EC(v13, v15, v17 & 1);

  v23 = sub_24E346498();
  v45 = v24;
  v26 = v25;
  v28 = v27;
  sub_24DFA92EC(v18, v20, v22 & 1);

  v29 = v47;
  sub_24E045818();
  LOBYTE(v13) = sub_24E345638();
  (*(v48 + 8))(v29, v49);
  LOBYTE(v29) = (v13 & 1) == 0;
  LODWORD(v49) = v29;
  KeyPath = swift_getKeyPath();
  v48 = KeyPath;
  LOBYTE(v20) = sub_24E3461F8();
  sub_24E3451B8();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v26 &= 1u;
  v85 = v26;
  v81 = 0;
  v56[0] = v51;
  v56[1] = 0xC024000000000000;
  LOBYTE(v56[2]) = v52;
  memcpy(&v56[2] + 1, v86, 0xD7uLL);
  LOBYTE(v56[29]) = v53;
  *(&v56[29] + 1) = v89[0];
  HIDWORD(v56[29]) = *(v89 + 3);
  v56[30] = v5;
  v56[31] = v7;
  v56[32] = v9;
  v56[33] = v11;
  LOBYTE(v56[34]) = 0;
  memcpy(v55, v56, 0x111uLL);
  v57[0] = v23;
  v39 = v23;
  v40 = v45;
  v57[1] = v45;
  LOBYTE(v57[2]) = v26;
  *(&v57[2] + 1) = *v84;
  HIDWORD(v57[2]) = *&v84[3];
  v57[3] = v28;
  v41 = v28;
  v57[4] = KeyPath;
  LOBYTE(v57[5]) = v29;
  *(&v57[5] + 1) = *v83;
  HIDWORD(v57[5]) = *&v83[3];
  LOBYTE(v57[6]) = v20;
  *(&v57[6] + 1) = *v82;
  HIDWORD(v57[6]) = *&v82[3];
  v57[7] = v32;
  v57[8] = v34;
  v57[9] = v36;
  v57[10] = v38;
  LOBYTE(v57[11]) = 0;
  *(&v57[11] + 1) = 256;
  memcpy(&v55[280], v57, 0x5BuLL);
  v54 = 1;
  v42 = v50;
  memcpy(v50, v55, 0x178uLL);
  v42[47] = 0;
  *(v42 + 384) = 1;
  v58[0] = v39;
  v58[1] = v40;
  v59 = v26;
  *v60 = *v84;
  *&v60[3] = *&v84[3];
  v61 = v41;
  v62 = v48;
  v63 = v49;
  *v64 = *v83;
  *&v64[3] = *&v83[3];
  v65 = v20;
  *&v66[3] = *&v82[3];
  *v66 = *v82;
  v67 = v32;
  v68 = v34;
  v69 = v36;
  v70 = v38;
  v71 = 0;
  v72 = 256;
  sub_24DF95B98(v56, v73, &qword_27F1E1AE8);
  sub_24DF95B98(v57, v73, &qword_27F1E1AF0);
  sub_24DFA9298(v58, &qword_27F1E1AF0);
  v73[0] = v51;
  v73[1] = 0xC024000000000000;
  LOBYTE(v73[2]) = v52;
  memcpy(&v73[2] + 1, v86, 0xD7uLL);
  v74 = v53;
  *v75 = v89[0];
  *&v75[3] = *(v89 + 3);
  v76 = v5;
  v77 = v7;
  v78 = v9;
  v79 = v11;
  v80 = 0;
  return sub_24DFA9298(v73, &qword_27F1E1AE8);
}

uint64_t sub_24E048C5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v3 = sub_24E345658();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24E345BF8();
  LOBYTE(v30[0]) = 0;
  sub_24E047DB4(v33);
  memcpy(v44, v33, sizeof(v44));
  memcpy(v45, v33, 0xD0uLL);
  sub_24DF95B98(v44, v28, &qword_27F1E1AE0);
  sub_24DFA9298(v45, &qword_27F1E1AE0);
  memcpy(&v43[7], v44, 0xD0uLL);
  v8 = v30[0];
  v9 = sub_24E3461F8();
  sub_24E3451B8();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  LOBYTE(v33[0]) = 0;
  sub_24E045818();
  v18 = sub_24E345638();
  (*(v4 + 8))(v6, v3);
  if (v18)
  {
    v19 = sub_24E345D08();
  }

  else
  {
    v19 = sub_24E345CF8();
  }

  v20 = v19;
  v42 = 0;
  sub_24E04901C(a1, v33);
  memcpy(v26, v33, 0xB9uLL);
  memcpy(v27, v33, 0xB9uLL);
  sub_24DF95B98(v26, v28, &qword_27F1E1B08);
  sub_24DFA9298(v27, &qword_27F1E1B08);
  memcpy(&v41[7], v26, 0xB9uLL);
  v21 = v42;
  v28[0] = v7;
  v28[1] = 0xC024000000000000;
  LOBYTE(v28[2]) = v8;
  memcpy(&v28[2] + 1, v43, 0xD7uLL);
  LOBYTE(v28[29]) = v9;
  *(&v28[29] + 1) = v46[0];
  HIDWORD(v28[29]) = *(v46 + 3);
  v28[30] = v11;
  v28[31] = v13;
  v28[32] = v15;
  v28[33] = v17;
  LOBYTE(v28[34]) = 0;
  memcpy(v25, v28, 0x111uLL);
  v29[0] = v20;
  v29[1] = 0;
  LOBYTE(v29[2]) = v42;
  memcpy(&v29[2] + 1, v41, 0xC0uLL);
  memcpy(&v25[280], v29, 0xD1uLL);
  memcpy(v24, v25, 0x1E9uLL);
  v30[0] = v20;
  v30[1] = 0;
  v31 = v21;
  memcpy(v32, v41, sizeof(v32));
  sub_24DF95B98(v28, v33, &qword_27F1E1AE8);
  sub_24DF95B98(v29, v33, &qword_27F1E1B10);
  sub_24DFA9298(v30, &qword_27F1E1B10);
  v33[0] = v7;
  v33[1] = 0xC024000000000000;
  LOBYTE(v33[2]) = v8;
  memcpy(&v33[2] + 1, v43, 0xD7uLL);
  v34 = v9;
  *v35 = v46[0];
  *&v35[3] = *(v46 + 3);
  v36 = v11;
  v37 = v13;
  v38 = v15;
  v39 = v17;
  v40 = 0;
  return sub_24DFA9298(v33, &qword_27F1E1AE8);
}