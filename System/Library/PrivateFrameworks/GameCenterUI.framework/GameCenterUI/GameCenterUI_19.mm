uint64_t sub_24E13E57C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24E346A68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24E345B68();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = type metadata accessor for FriendSuggestionLockup();
  if (*(a1 + *(result + 44)))
  {
    goto LABEL_9;
  }

  sub_24E283414(*(a1 + *(result + 32)), &v27);
  if ((v28 & 1) == 0)
  {

LABEL_9:
    v16 = 0;
    v17 = 0.0;
    v19 = 0;
    v21 = 0;
    v22 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    goto LABEL_10;
  }

  v13 = *a1;
  if (*(a1 + 8) == 1)
  {
    v14 = *a1;
  }

  else
  {

    sub_24E348268();
    v15 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DE73F34(v13, 0);
    (*(v9 + 8))(v11, v8);
    v14 = v29;
  }

  result = sub_24DFE717C(21.3333333, 21.3333333, v14);
  if (!result)
  {
    goto LABEL_9;
  }

  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v16 = sub_24E346AE8();
  (*(v5 + 8))(v7, v4);
  sub_24E346E28();
  sub_24E3453D8();
  v17 = v29;
  v18 = v30;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v22 = v34;

  v26[16] = v18;
  v26[8] = v20;
  v23 = v18;
  v24 = v20;
  v25 = 0x4000000000000000;
LABEL_10:
  *a2 = v16;
  *(a2 + 1) = v17;
  a2[2] = v23;
  a2[3] = v19;
  a2[4] = v24;
  a2[5] = v21;
  a2[6] = v22;
  a2[7] = v25;
  a2[8] = 0;
  return result;
}

uint64_t sub_24E13E8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + *(type metadata accessor for FriendSuggestionLockup() + 32)) contact];
  v4 = [v3 _gkCompositeName];

  sub_24E347CF8();
  sub_24DF90C4C();
  v22 = sub_24E3464E8();
  v23 = v5;
  v7 = v6;
  v21 = v8;
  sub_24E13D7E4();
  sub_24E346358();
  v9 = sub_24E3464B8();
  v11 = v10;
  v13 = v12;

  sub_24E345F28();
  v14 = sub_24E346478();
  v16 = v15;
  LOBYTE(v3) = v17;
  v19 = v18;
  sub_24DFA92EC(v9, v11, v13 & 1);

  *a2 = v22;
  *(a2 + 8) = v7;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  *(a2 + 48) = v3 & 1;
  *(a2 + 56) = v19;
  sub_24DF82DD4(v22, v7, v21 & 1);

  sub_24DF82DD4(v14, v16, v3 & 1);

  sub_24DFA92EC(v14, v16, v3 & 1);

  sub_24DFA92EC(v22, v7, v21 & 1);
}

uint64_t sub_24E13EABC()
{
  type metadata accessor for GameCenterSettings();
  if (sub_24DFF20B4())
  {
    return sub_24E13EB50();
  }

  type metadata accessor for FriendSuggestionLockup();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  return sub_24E346B98();
}

uint64_t sub_24E13EB50()
{
  v1 = v0;
  v70 = sub_24E346158();
  OUTLINED_FUNCTION_0_14();
  v69 = v2;
  MEMORY[0x28223BE20](v3);
  v68 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FriendSuggestionLockup();
  OUTLINED_FUNCTION_0_14();
  v65 = v6;
  MEMORY[0x28223BE20](v7);
  v67 = v8;
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  v11 = OUTLINED_FUNCTION_4_5(v10);
  MEMORY[0x28223BE20](v11);
  v66 = &v63 - v12;
  v13 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = 0x657469766E69;
  v84 = 0xE600000000000000;
  v85 = xmmword_24E379720;
  v86 = 1;
  v87 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E24C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24E367D20;
  *(v19 + 32) = sub_24E323A3C();
  v20 = (v0 + *(v5 + 40));
  v21 = v20[1];
  if (v21)
  {
    v64 = v5;
    v22 = v20[6];
    v23 = v20[7];
    v63 = *(v20 + 4);
    v24 = v20[10];
    v25 = *(v20 + 88);
    v26 = *(v20 + 40);
    v27 = v20[4];
    v78 = *v20;
    v79 = v21;
    v80 = *(v20 + 1);
    v81 = v27;
    v82 = v26;
    v28 = sub_24E323A3C();
    v29 = *(v19 + 16);
    if (v29 >= *(v19 + 24) >> 1)
    {
      OUTLINED_FUNCTION_6_54();
      v19 = v61;
    }

    *(v19 + 16) = v29 + 1;
    *(v19 + 8 * v29 + 32) = v28;
    v73 = v22;
    v74 = v23;
    v75 = v63;
    v76 = v24;
    v77 = v25;
    v30 = sub_24E323A3C();
    v31 = *(v19 + 16);
    if (v31 >= *(v19 + 24) >> 1)
    {
      OUTLINED_FUNCTION_6_54();
      v19 = v62;
    }

    v1 = v0;
    *(v19 + 16) = v31 + 1;
    *(v19 + 8 * v31 + 32) = v30;
    v5 = v64;
  }

  else
  {
    sub_24E343CC8();
    v32 = sub_24E343F78();
    v33 = sub_24E348258();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_24DE53000, v32, v33, "FriendSuggestionLockup: Missing metrics context", v34, 2u);
      MEMORY[0x253040EE0](v34, -1, -1);
    }

    (*(v15 + 8))(v18, v13);
  }

  v35 = *(v1 + *(v5 + 32));
  sub_24E283414(v35, v71);
  v36 = v71[0];
  v37 = v71[2];
  if (v72)
  {
    v38 = [objc_allocWithZone(MEMORY[0x277D0BFA8]) init];
    v39 = sub_24E347CB8();
    v40 = sub_24E347CB8();
    v42 = v36 && (v41 = sub_24DFD8654(v36), , v41) || v37 != 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E24C8);
    v58 = sub_24E347EE8();

    [v38 recordInviteFriendClickEventWithPageType:v39 pageId:v40 pushBased:0 knownRecipient:v42 location:v58];

    v59 = v68;
    v60 = sub_24E028DF0(v68);
    MEMORY[0x28223BE20](v60);
    *(&v63 - 2) = v35;
    sub_24E346148();
    return (*(v69 + 8))(v59, v70);
  }

  else
  {
    v70 = v71[3];
    v43 = v71[1];
    v44 = [objc_allocWithZone(MEMORY[0x277D0BFA8]) init];
    v45 = sub_24E347CB8();
    v46 = v1;
    v47 = sub_24E347CB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E24C8);
    v48 = sub_24E347EE8();

    [v44 recordInviteFriendClickEventWithPageType:v45 pageId:v47 pushBased:1 knownRecipient:1 location:v48];

    v49 = sub_24E348098();
    v50 = v66;
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v49);
    OUTLINED_FUNCTION_1_85();
    sub_24E1409B4(v46, v9, v51);
    sub_24E348068();
    v52 = sub_24E348058();
    v53 = (*(v65 + 80) + 64) & ~*(v65 + 80);
    v54 = swift_allocObject();
    v55 = MEMORY[0x277D85700];
    v54[2] = v52;
    v54[3] = v55;
    v54[4] = v36;
    v54[5] = v43;
    v56 = v70;
    v54[6] = v37;
    v54[7] = v56;
    sub_24E13FFF8(v9, v54 + v53);
    sub_24DFC8700(0, 0, v50, &unk_24E37BA98, v54);
  }
}

uint64_t sub_24E13F25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FriendSuggestionLockup();
  sub_24E15567C();
  v5 = [*(a1 + *(v4 + 32)) contact];
  v6 = [v5 identifier];

  sub_24E347CF8();
  LOBYTE(v5) = sub_24E023F8C();

  sub_24E343AA8();
  if (v5)
  {
    sub_24E343818();
  }

  else
  {
    sub_24E343898();
  }

  sub_24DF90C4C();
  v7 = sub_24E3464E8();
  v9 = v8;
  v11 = v10;
  v12 = sub_24E346498();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_24DFA92EC(v7, v9, v11 & 1);

  LOBYTE(v7) = sub_24E3461D8();
  result = sub_24E3451B8();
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v18;
  *(a2 + 32) = v7;
  *(a2 + 40) = v20;
  *(a2 + 48) = v21;
  *(a2 + 56) = v22;
  *(a2 + 64) = v23;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_24E13F408@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E53E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_24E347CB8();
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();

  v7 = sub_24E347CF8();
  v9 = v8;

  v19 = v7;
  v20 = v9;
  sub_24DF90C4C();
  sub_24E3464E8();
  v10 = sub_24E347CB8();
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();

  v13 = sub_24E347CF8();
  v15 = v14;

  v19 = v13;
  v20 = v15;
  sub_24E3464E8();
  v16 = sub_24E346938();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v16);
  return sub_24E346928();
}

uint64_t sub_24E13F614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v9 = sub_24E346158();
  v8[3] = v9;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  v10 = sub_24E343F88();
  v8[6] = v10;
  v8[7] = *(v10 - 8);
  v8[8] = swift_task_alloc();
  v8[9] = sub_24E348068();
  v8[10] = sub_24E348058();
  type metadata accessor for GameCenter();
  swift_initStaticObject();
  v11 = swift_task_alloc();
  v8[11] = v11;
  *v11 = v8;
  v11[1] = sub_24E13F7BC;

  return sub_24E2EFF78();
}

uint64_t sub_24E13F7BC()
{
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v5 = v4;
  *(v6 + 96) = v0;

  v8 = sub_24E347FF8();
  if (v0)
  {
    v9 = sub_24E13F910;
  }

  else
  {
    v9 = sub_24E115A28;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24E13F910()
{
  v1 = v0[12];

  sub_24E343CC8();
  v2 = v1;
  v3 = sub_24E343F78();
  v4 = sub_24E348258();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24DE53000, v3, v4, "CompactFriendSuggestionLockup: Unable to send friend invitation via push: %@", v6, 0xCu);
    sub_24DF8BFF4(v7, &unk_27F1DF730);
    MEMORY[0x253040EE0](v7, -1, -1);
    MEMORY[0x253040EE0](v6, -1, -1);
  }

  v10 = v0[12];
  v12 = v0[7];
  v11 = v0[8];
  v14 = v0[5];
  v13 = v0[6];
  v15 = v0[3];
  v16 = v0[4];
  v17 = v0[2];

  (*(v12 + 8))(v11, v13);
  v18 = *(v17 + *(type metadata accessor for FriendSuggestionLockup() + 32));
  sub_24E028DF0(v14);
  *(swift_task_alloc() + 16) = v18;
  sub_24E346148();

  (*(v16 + 8))(v14, v15);

  OUTLINED_FUNCTION_12_5();

  return v19();
}

void sub_24E13FB2C(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_24E343F88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    if (GKIsRemoteUI())
    {
      v12 = sub_24E348098();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
      sub_24E348068();
      v13 = v11;
      v14 = a2;
      v15 = sub_24E348058();
      v16 = swift_allocObject();
      v17 = MEMORY[0x277D85700];
      v16[2] = v15;
      v16[3] = v17;
      v16[4] = v14;
      v16[5] = v13;
      sub_24DFC8700(0, 0, v6, &unk_24E37BAA8, v16);
    }

    else
    {
      type metadata accessor for FriendRequestFacilitator();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_24E369990;
      *(v21 + 32) = [a2 contact];
      v22 = swift_allocObject();
      *(v22 + 16) = v11;
      v25 = v11;
      static FriendRequestFacilitator.makeViewControllerForRemoteInvite(recipients:chatGUID:resultHandler:)(v21, 0, 0, sub_24E14075C, v22);

      v23 = v25;
    }
  }

  else
  {
    sub_24E343CC8();
    v18 = sub_24E343F78();
    v19 = sub_24E348258();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24DE53000, v18, v19, "InviteFriendsBaseView: Unable to present Messages compose sheet: No hosting controller", v20, 2u);
      MEMORY[0x253040EE0](v20, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }
}

void sub_24E13FE4C(void *a1, void *a2, void *a3)
{
  v6 = sub_24E343F88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = a1;
LABEL_5:
    v10 = a1;
    [a3 presentViewController:v16 animated:1 completion:0];
    v11 = v16;

    return;
  }

  if (a2)
  {
    v16 = a2;
    goto LABEL_5;
  }

  sub_24E343CC8();
  v12 = sub_24E343F78();
  v13 = sub_24E348258();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24DE53000, v12, v13, "CompactFriendSuggestionLockup: Unable to present Messages compose sheet: No view controller returned", v14, 2u);
    MEMORY[0x253040EE0](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_24E13FFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendSuggestionLockup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E14005C@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for FriendSuggestionLockup();
  OUTLINED_FUNCTION_4_5(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_24E13DABC(v5, a1);
}

uint64_t objectdestroyTm_14()
{
  type metadata accessor for FriendSuggestionLockup();
  OUTLINED_FUNCTION_3_13();
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = (v4 + 16) & ~v4;
  v8 = v1 + v7;
  OUTLINED_FUNCTION_11_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E346158();
    OUTLINED_FUNCTION_5_2();
    (*(v9 + 8))(v8 + v2);
  }

  else
  {
  }

  if (*(v8 + v0[10] + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v7 + v6, v4 | 7);
}

uint64_t sub_24E140230()
{
  v0 = type metadata accessor for FriendSuggestionLockup();
  OUTLINED_FUNCTION_4_5(v0);

  return sub_24E13EABC();
}

uint64_t sub_24E140294(void *a1, char a2, double a3)
{
  v6 = type metadata accessor for ContactAvatarView();
  MEMORY[0x28223BE20](v6);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E53F8);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  if (a2)
  {
    *v8 = a1;
    v8[1] = a3;
    v8[2] = a3;
    *(v8 + 3) = swift_getKeyPath();
    *(v8 + 32) = 0;
    v12 = *(v6 + 28);
    *(v8 + v12) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FF0);
    swift_storeEnumTagMultiPayload();
    v13 = *(v6 + 32);
    v19[1] = 0;
    v14 = a1;
    sub_24E346B78();
    *(v8 + v13) = v20;
    sub_24E1409B4(v8, v11, type metadata accessor for ContactAvatarView);
    swift_storeEnumTagMultiPayload();
    sub_24E140A14();
    sub_24E140A68();
    sub_24E345E38();
    return sub_24E140AC0(v8);
  }

  else
  {
    *v11 = sub_24E1AF4F4(a1);
    *(v11 + 1) = v16;
    v11[16] = v17 & 1;
    v11[17] = v18 & 1;
    swift_storeEnumTagMultiPayload();
    sub_24E140A14();
    sub_24E140A68();
    return sub_24E345E38();
  }
}

unint64_t sub_24E140514()
{
  result = qword_27F1E53D8;
  if (!qword_27F1E53D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E53A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5398);
    sub_24DFB4C28(&qword_27F1E53D0, &qword_27F1E5398);
    sub_24E11FB48();
    swift_getOpaqueTypeConformance2();
    sub_24DFB4C28(&qword_27F1E0160, &qword_27F1E0168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E53D8);
  }

  return result;
}

uint64_t sub_24E140658()
{
  v2 = type metadata accessor for FriendSuggestionLockup();
  OUTLINED_FUNCTION_4_5(v2);
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24E059AA8;
  v7 = OUTLINED_FUNCTION_3_66();

  return sub_24E13F614(v7, v8, v9, v10, v3, v4, v5, v11);
}

uint64_t sub_24E140764()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E059970;
  v4 = OUTLINED_FUNCTION_3_66();

  return sub_24E1162FC(v4, v5, v6, v7, v2);
}

uint64_t sub_24E140820(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 24))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_24E140860(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_24E1408B4()
{
  result = qword_27F1E53E8;
  if (!qword_27F1E53E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5390);
    sub_24DFB4C28(&qword_27F1E53F0, &qword_27F1E5388);
    sub_24DFB4C28(&qword_27F1E4140, &qword_27F1E4148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E53E8);
  }

  return result;
}

uint64_t sub_24E1409B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_24E140A14()
{
  result = qword_27F1E5400;
  if (!qword_27F1E5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5400);
  }

  return result;
}

unint64_t sub_24E140A68()
{
  result = qword_27F1E5408;
  if (!qword_27F1E5408)
  {
    type metadata accessor for ContactAvatarView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5408);
  }

  return result;
}

uint64_t sub_24E140AC0(uint64_t a1)
{
  v2 = type metadata accessor for ContactAvatarView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E140B2C()
{
  result = qword_27F1E5410;
  if (!qword_27F1E5410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5418);
    sub_24E140A14();
    sub_24E140A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5410);
  }

  return result;
}

void OUTLINED_FUNCTION_6_54()
{

  sub_24E077C78();
}

_BYTE *storeEnumTagSinglePayload for CustomizeProfileView.FocusAreas(_BYTE *result, int a2, int a3)
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

uint64_t type metadata accessor for CustomizeProfileView()
{
  result = qword_27F1E5420;
  if (!qword_27F1E5420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E140D18()
{
  sub_24E140DDC();
  if (v0 <= 0x3F)
  {
    sub_24E02FD6C();
    if (v1 <= 0x3F)
    {
      sub_24E140E34();
      if (v2 <= 0x3F)
      {
        sub_24DF88A8C(319, &qword_27F1DF758);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E140DDC()
{
  if (!qword_27F1E3EB8)
  {
    sub_24E345478();
    v0 = sub_24E345278();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E3EB8);
    }
  }
}

void sub_24E140E34()
{
  if (!qword_27F1E5430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5438);
    sub_24E140EA4();
    v0 = sub_24E3451F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E5430);
    }
  }
}

unint64_t sub_24E140EA4()
{
  result = qword_27F1E5440;
  if (!qword_27F1E5440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5438);
    sub_24E03272C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5440);
  }

  return result;
}

unint64_t sub_24E140F2C()
{
  result = qword_27F1E5448;
  if (!qword_27F1E5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5448);
  }

  return result;
}

uint64_t sub_24E140F9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5450);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5458);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF830);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5460);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5468);
  sub_24E14328C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5488);
  sub_24DFB4C28(&qword_27F1E5490, &qword_27F1E5488);
  OUTLINED_FUNCTION_8_46();
  OUTLINED_FUNCTION_8_46();
  sub_24DF90C4C();
  sub_24DFB4C28(&qword_27F1DF868, &qword_27F1DF830);
  OUTLINED_FUNCTION_8_46();
  return sub_24E3456F8();
}

uint64_t sub_24E141180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5460);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5458);
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  MEMORY[0x28223BE20](v6);
  v34 = &v32 - v8;
  *v5 = sub_24E345CF8();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5498);
  sub_24E1415CC(a1, &v5[*(v9 + 44)]);
  v10 = sub_24E3461D8();
  sub_24E3451B8();
  v11 = &v5[*(v3 + 36)];
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  v39 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5468);
  v16 = sub_24E14328C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5488);
  v18 = sub_24DFB4C28(&qword_27F1E5490, &qword_27F1E5488);
  v40 = v17;
  v41 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24E3468B8();
  sub_24DFA9298(v5, &qword_27F1E5460);
  v20 = sub_24E347CB8();
  v21 = GKGameCenterUIFrameworkBundle();
  v22 = GKGetLocalizedStringFromTableInBundle();

  v23 = sub_24E347CF8();
  v25 = v24;

  v46 = v23;
  v47 = v25;
  v26 = a1 + *(type metadata accessor for CustomizeProfileView() + 20);
  v27 = *v26;
  v28 = *(v26 + 8);
  v44 = v27;
  v45 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346BA8();
  v38 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF830);
  v40 = v3;
  v41 = v33;
  v42 = v16;
  v43 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24DF90C4C();
  sub_24DFB4C28(&qword_27F1DF868, &qword_27F1DF830);
  v29 = v35;
  v30 = v34;
  sub_24E346838();

  return (*(v36 + 8))(v30, v29);
}

uint64_t sub_24E1415CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v54 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5328) - 8;
  MEMORY[0x28223BE20](v52);
  v53 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v47 - v4;
  v49 = sub_24E343AA8();
  v77[0].n128_u64[0] = sub_24E3437B8();
  v77[0].n128_u64[1] = v6;
  sub_24DF90C4C();
  v7 = sub_24E3464E8();
  v9 = v8;
  v11 = v10;
  sub_24E346268();
  v12 = sub_24E3464B8();
  v14 = v13;
  v16 = v15;
  v47 = v17;

  sub_24DFA92EC(v7, v9, v11 & 1);

  v18 = sub_24E346498();
  v20 = v19;
  v50 = v21;
  v51 = v22;
  sub_24DFA92EC(v12, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  sub_24E149DF4(v77, 150.0);
  v24 = *(v48 + *(type metadata accessor for CustomizeProfileView() + 32));
  v25 = swift_getKeyPath();
  v26 = type metadata accessor for EditNicknameSection();
  *&v5[v26[7]] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0);
  swift_storeEnumTagMultiPayload();
  *&v5[v26[8]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v5[v26[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940);
  swift_storeEnumTagMultiPayload();
  *v5 = v24;
  *(v5 + 4) = 256;
  v27 = &v5[v26[10]];
  type metadata accessor for ProfileEditorData();
  sub_24E144134();
  v28 = v24;
  *v27 = sub_24E345298();
  v27[8] = v29 & 1;
  v30 = &v5[v26[11]];
  v71 = sub_24E3436E8();
  v72 = v31;
  sub_24E346B78();
  v32 = v60.n128_u64[0];
  *v30 = v59;
  v30[1].n128_u64[0] = v32;
  v33 = &v5[v26[12]];
  LOBYTE(v71) = 0;
  sub_24E346B78();
  v34 = v59.n128_u64[1];
  *v33 = v59.n128_u8[0];
  *(v33 + 1) = v34;
  v35 = &v5[v26[13]];
  LOBYTE(v71) = 0;
  sub_24E346B78();
  v36 = v59.n128_u64[1];
  *v35 = v59.n128_u8[0];
  *(v35 + 1) = v36;
  v37 = &v5[v26[14]];
  LOBYTE(v71) = 0;
  sub_24E346B78();
  v38 = v59.n128_u64[1];
  *v37 = v59.n128_u8[0];
  *(v37 + 1) = v38;
  LOBYTE(v25) = sub_24E3461F8();
  sub_24E3451B8();
  v39 = &v5[*(v52 + 44)];
  *v39 = v25;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v65 = v18;
  v66 = v20;
  v67 = v50 & 1;
  v68 = v51;
  v69 = KeyPath;
  v70 = 1;
  v64 = 1;
  v71 = &v65;
  v72 = &v63;
  v59 = v77[0];
  v60 = v77[1];
  v61 = v77[2];
  v62 = v78;
  v63 = 0;
  v73 = &v59;
  v44 = v53;
  sub_24DF9DEAC(v5, v53, &qword_27F1E5328);
  v57 = 0;
  v58 = 1;
  v74 = v44;
  v75 = &v57;
  v55 = 0;
  v56 = 1;
  v76 = &v55;
  sub_24E13B4F0(&v71, v54);
  sub_24DFA9298(v5, &qword_27F1E5328);
  sub_24DFA9298(v44, &qword_27F1E5328);
  v45 = v61.n128_u64[0];

  sub_24DFA92EC(v65, v66, v67);
}

uint64_t sub_24E141A80(uint64_t a1)
{
  v2 = sub_24E345EA8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5488);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = a1;
  sub_24E345E98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E54A0);
  sub_24E143AFC();
  sub_24E3452E8();
  v7 = sub_24DFB4C28(&qword_27F1E5490, &qword_27F1E5488);
  MEMORY[0x25303CA30](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E141C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for CustomizeProfileView();
  v4 = v3 - 8;
  v25 = *(v3 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF830);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E54B0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE230);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = a1 + *(v4 + 32);
  v17 = *v16;
  v18 = *(v16 + 8);
  v30 = v17;
  v31 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  if (v29 == 1)
  {
    sub_24E345348();
    (*(v13 + 16))(v11, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_24DFB4C28(&qword_27F1E2088, &qword_27F1DE230);
    sub_24DFB4C28(&qword_27F1DF868, &qword_27F1DF830);
    sub_24E345E38();
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    sub_24E143354(a1, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v21 = swift_allocObject();
    sub_24E1433B8(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    sub_24E346BD8();
    v23 = v26;
    v22 = v27;
    (*(v26 + 16))(v11, v8, v27);
    swift_storeEnumTagMultiPayload();
    sub_24DFB4C28(&qword_27F1E2088, &qword_27F1DE230);
    sub_24DFB4C28(&qword_27F1DF868, &qword_27F1DF830);
    sub_24E345E38();
    return (*(v23 + 8))(v8, v22);
  }
}

uint64_t sub_24E1420A4(uint64_t a1)
{
  v2 = sub_24E345478();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CustomizeProfileView();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  *&v8 = MEMORY[0x28223BE20](v7 - 8).n128_u64[0];
  v10 = &v31 - v9;
  v11 = sub_24DFFA658([*(a1 + *(v5 + 32)) nickname]);
  v13 = v12;
  v14 = [objc_opt_self() local];
  v15 = [v14 alias];

  v16 = sub_24E347CF8();
  v18 = v17;

  if (!v13)
  {

    goto LABEL_9;
  }

  if (v11 != v16 || v13 != v18)
  {
    v20 = sub_24E348C08();

    if (v20)
    {
      goto LABEL_11;
    }

LABEL_9:
    v21 = a1 + *(v5 + 24);
    v22 = *v21;
    v23 = *(v21 + 8);
    v37 = v22;
    v38 = v23;
    v36 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
    sub_24E346B98();
    v24 = sub_24E348098();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v24);
    v25 = v35;
    sub_24E143354(a1, v35);
    sub_24E348068();
    v26 = sub_24E348058();
    v27 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    *(v28 + 16) = v26;
    *(v28 + 24) = v29;
    sub_24E1433B8(v25, v28 + v27);
    sub_24DFC8700(0, 0, v10, &unk_24E37BDF8, v28);
  }

LABEL_11:
  sub_24E028E9C(v4);
  sub_24E345468();
  return (*(v32 + 8))(v4, v33);
}

uint64_t sub_24E142420()
{
  v0[2] = sub_24E348068();
  v0[3] = sub_24E348058();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24E1424CC;

  return sub_24E142604();
}

uint64_t sub_24E1424CC()
{
  OUTLINED_FUNCTION_9_7();

  v1 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24DFC9F94, v1, v0);
}

uint64_t sub_24E142604()
{
  v1[20] = v0;
  v2 = type metadata accessor for CustomizeProfileView();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v1[23] = *(v3 + 64);
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  v1[25] = swift_task_alloc();
  v1[26] = sub_24E348068();
  v1[27] = sub_24E348058();
  v5 = sub_24E347FF8();
  v1[28] = v5;
  v1[29] = v4;

  return MEMORY[0x2822009F8](sub_24E14273C, v5, v4);
}

uint64_t sub_24E14273C()
{
  v1 = *(v0[20] + *(v0[21] + 32));
  v0[2] = v0;
  v0[3] = sub_24E142858;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E02C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24DFECA10;
  v0[13] = &block_descriptor_50;
  v0[14] = v2;
  [v1 commitNicknameChangesWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E142858()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_24E142A78;
  }

  else
  {
    v5 = sub_24E142984;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E142984()
{
  OUTLINED_FUNCTION_29_5();
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);

  v3 = sub_24E348098();
  OUTLINED_FUNCTION_13_33(v3);
  v4 = sub_24E348058();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v4;
  *(v6 + 24) = v7;
  sub_24E1433B8(v1, v6 + v5);
  v8 = OUTLINED_FUNCTION_10_38();
  sub_24DFC8700(v8, v9, v10, v11, v6);

  OUTLINED_FUNCTION_12_5();

  return v12();
}

uint64_t sub_24E142A78()
{
  v1 = *(v0 + 240);

  swift_willThrow();
  *(v0 + 144) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30);
  sub_24DF88A8C(0, &qword_27F1DFD38);
  result = swift_dynamicCast();
  if (result)
  {
    v3 = *(v0 + 192);
    v4 = *(v0 + 176);
    v5 = *(v0 + 152);
    v6 = sub_24E348098();
    OUTLINED_FUNCTION_13_33(v6);
    v7 = v5;
    v8 = sub_24E348058();
    v9 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v8;
    v10[3] = v11;
    v10[4] = v7;
    sub_24E1433B8(v3, v10 + v9);
    v12 = OUTLINED_FUNCTION_10_38();
    sub_24DFC8700(v12, v13, v14, v15, v10);

    OUTLINED_FUNCTION_12_5();

    return v16();
  }

  return result;
}

uint64_t sub_24E142C18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  v5 = sub_24E3464E8();
  v7 = v6;
  LOBYTE(v4) = v8;
  v9 = sub_24E346498();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_24DFA92EC(v5, v7, v4 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_24E142D34(uint64_t a1)
{
  v2 = type metadata accessor for CustomizeProfileView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - v6;
  v8 = sub_24E347CB8();
  v9 = GKGameCenterUIFrameworkBundle();
  v10 = GKGetLocalizedStringFromTableInBundle();

  v11 = sub_24E347CF8();
  v13 = v12;

  v18[0] = v11;
  v18[1] = v13;
  sub_24E345188();
  v14 = sub_24E345198();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v14);
  sub_24E143354(a1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_24E1433B8(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_24DF90C4C();
  return sub_24E346BF8();
}

uint64_t sub_24E142F40(uint64_t a1)
{
  v15 = sub_24E345B68();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_24E345478();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DF9DEAC(a1, v7, &qword_27F1DF620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_24E348268();
    v12 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_24E345468();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24E1431BC@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_24E14328C()
{
  result = qword_27F1E5470;
  if (!qword_27F1E5470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5460);
    sub_24DFB4C28(&qword_27F1E5478, &qword_27F1E5480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5470);
  }

  return result;
}

uint64_t sub_24E143354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomizeProfileView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E1433B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomizeProfileView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E143434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_24E345478();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_24E343F88();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  sub_24E348068();
  v4[11] = sub_24E348058();
  v8 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E143584, v8, v7);
}

uint64_t sub_24E143584()
{

  sub_24E343C98();
  v1 = sub_24E343F78();
  v2 = sub_24E348238();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24DE53000, v1, v2, "CustomizeProfileView: Nickname saved.", v3, 2u);
    MEMORY[0x253040EE0](v3, -1, -1);
  }

  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);

  (*(v5 + 8))(v4, v7);
  type metadata accessor for CustomizeProfileView();
  OUTLINED_FUNCTION_12_27();
  *(v0 + 16) = v10;
  *(v0 + 24) = v11;
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B98();
  sub_24E028E9C(v6);
  sub_24E345468();
  (*(v9 + 8))(v6, v8);

  OUTLINED_FUNCTION_12_5();

  return v12();
}

uint64_t sub_24E143710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = sub_24E343F88();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  sub_24E348068();
  v5[18] = sub_24E348058();
  v8 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E143804, v8, v7);
}

uint64_t sub_24E143804()
{
  OUTLINED_FUNCTION_29_5();
  v1 = *(v0 + 104);

  sub_24E343C98();
  v2 = v1;
  v3 = sub_24E343F78();
  v4 = sub_24E348258();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_24DE53000, v3, v4, "CustomizeProfileView: Failed to change player's nickname: %@", v6, 0xCu);
    sub_24DFA9298(v7, &unk_27F1DF730);
    MEMORY[0x253040EE0](v7, -1, -1);
    MEMORY[0x253040EE0](v6, -1, -1);
  }

  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 120);
  v12 = *(v0 + 104);

  (*(v10 + 8))(v9, v11);
  v13 = type metadata accessor for CustomizeProfileView();
  OUTLINED_FUNCTION_12_27();
  *(v0 + 72) = v14;
  *(v0 + 80) = v15;
  *(v0 + 65) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B98();
  v16 = [v12 userInfo];
  v17 = sub_24E347C08();

  sub_24E12CAE8(v17, (v0 + 16));

  if (*(v0 + 40))
  {
    if (swift_dynamicCast() && (*(v0 + 67) & 1) != 0)
    {
      v18 = (*(v0 + 112) + *(v13 + 28));
      v19 = *v18;
      v20 = *(v18 + 1);
      LOBYTE(v18) = v18[16];
      *(v0 + 48) = v19;
      *(v0 + 56) = v20;
      *(v0 + 64) = v18;
      *(v0 + 68) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E54B8);
      sub_24E3451C8();
      goto LABEL_9;
    }
  }

  else
  {
    sub_24DFA9298(v0 + 16, &qword_27F1E0370);
  }

  v21 = (*(v0 + 112) + *(v13 + 20));
  v22 = *v21;
  v23 = *(v21 + 1);
  *(v0 + 88) = v22;
  *(v0 + 96) = v23;
  *(v0 + 66) = 1;
  sub_24E346B98();
LABEL_9:

  OUTLINED_FUNCTION_12_5();

  return v24();
}

unint64_t sub_24E143AFC()
{
  result = qword_27F1E54A8;
  if (!qword_27F1E54A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E54A0);
    sub_24DFB4C28(&qword_27F1E2088, &qword_27F1DE230);
    sub_24DFB4C28(&qword_27F1DF868, &qword_27F1DF830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E54A8);
  }

  return result;
}

uint64_t objectdestroyTm_15()
{
  type metadata accessor for CustomizeProfileView();
  OUTLINED_FUNCTION_3_13();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345478();
    OUTLINED_FUNCTION_0_26();
    (*(v4 + 8))(v1 + v3);
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_58();
  OUTLINED_FUNCTION_4_58();
  OUTLINED_FUNCTION_4_58();

  v5 = OUTLINED_FUNCTION_42_2();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_24E143D0C(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for CustomizeProfileView();
  OUTLINED_FUNCTION_4_5(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_24E143D7C()
{
  OUTLINED_FUNCTION_29_5();
  v0 = type metadata accessor for CustomizeProfileView();
  OUTLINED_FUNCTION_4_5(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_4(v1);
  *v2 = v3;
  v2[1] = sub_24E090488;
  OUTLINED_FUNCTION_23_22();

  return sub_24E142420();
}

uint64_t sub_24E143E68()
{
  OUTLINED_FUNCTION_29_5();
  v1 = type metadata accessor for CustomizeProfileView();
  OUTLINED_FUNCTION_4_5(v1);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_4(v3);
  *v4 = v5;
  v4[1] = sub_24E090108;
  v6 = OUTLINED_FUNCTION_23_22();

  return sub_24E143710(v6, v7, v8, v2, v9);
}

uint64_t objectdestroy_13Tm()
{
  type metadata accessor for CustomizeProfileView();
  OUTLINED_FUNCTION_3_13();
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();
  v4 = (v3 + 32) & ~v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345478();
    OUTLINED_FUNCTION_0_26();
    (*(v5 + 8))(v1 + v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_58();
  OUTLINED_FUNCTION_4_58();
  OUTLINED_FUNCTION_4_58();

  v6 = OUTLINED_FUNCTION_42_2();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_24E144060()
{
  OUTLINED_FUNCTION_29_5();
  v0 = type metadata accessor for CustomizeProfileView();
  OUTLINED_FUNCTION_4_5(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_4(v1);
  *v2 = v3;
  v2[1] = sub_24E090488;
  v4 = OUTLINED_FUNCTION_23_22();

  return sub_24E143434(v4, v5, v6, v7);
}

unint64_t sub_24E144134()
{
  result = qword_27F1DF920;
  if (!qword_27F1DF920)
  {
    type metadata accessor for ProfileEditorData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF920);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_58()
{
}

uint64_t OUTLINED_FUNCTION_8_46()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_13_33(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_24E143354(v3, v2);
}

uint64_t HelpFriendsFindYouSection.body.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E54D0);
  MEMORY[0x28223BE20](v41);
  v3 = &v38 - v2;
  v4 = v1[1];
  v5 = *(v1 + 1);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v39 = *v1;
  v43 = v39;
  v38 = v4;
  v44 = v4;
  v40 = v5;
  v45 = v5;
  v46 = v6;
  v47 = v7;
  v50 = v6;
  v51 = v7;
  sub_24DF90C4C();

  v60 = sub_24E3464E8();
  v61 = v8;
  v62 = v9 & 1;
  v63 = v10;
  v11 = sub_24E347CB8();
  v12 = GKGameCenterUIFrameworkBundle();
  v13 = GKGetLocalizedStringFromTableInBundle();

  v14 = sub_24E347CF8();
  v16 = v15;

  v50 = v14;
  v51 = v16;
  v17 = sub_24E3464E8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v14) = sub_24E346208();
  v24 = sub_24E346228();
  sub_24E346228();
  if (sub_24E346228() != v14)
  {
    v24 = sub_24E346228();
  }

  sub_24E3451B8();
  v49 = v21 & 1;
  v48 = 0;
  v50 = v17;
  v51 = v19;
  v52 = v21 & 1;
  v53 = v23;
  v54 = v24;
  v55 = v25;
  v56 = v26;
  v57 = v27;
  v58 = v28;
  v59 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E54D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF880);
  sub_24E144A88();
  sub_24DFB4858();
  sub_24E346D18();
  v29 = swift_allocObject();
  *(v29 + 16) = v39;
  *(v29 + 17) = v38;
  *(v29 + 24) = v40;
  *(v29 + 32) = v6;
  *(v29 + 40) = v7;
  v30 = &v3[*(v41 + 36)];
  *v30 = sub_24E144D08;
  v30[1] = v29;
  type metadata accessor for GameCenterSettings();
  v30[2] = 0;
  v30[3] = 0;

  if (sub_24DFF2054())
  {
    v31 = [objc_opt_self() _gkIsOnline] ^ 1;
  }

  else
  {
    v31 = 1;
  }

  KeyPath = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  v34 = v3;
  v35 = v42;
  sub_24E145480(v34, v42);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5508);
  v37 = (v35 + *(result + 36));
  *v37 = KeyPath;
  v37[1] = sub_24E145470;
  v37[2] = v33;
  return result;
}

uint64_t sub_24E1445D4(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() proxyForLocalPlayer];
  v9 = [v8 profileServicePrivate];

  v10 = swift_allocObject();
  *(v10 + 16) = a1 & 1;
  *(v10 + 17) = HIBYTE(a1) & 1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v13[4] = sub_24E1456F8;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24E1450F8;
  v13[3] = &block_descriptor_51;
  v11 = _Block_copy(v13);

  [v9 getContactsIntegrationConsentWithCompletionHandler_];
  _Block_release(v11);
  return swift_unknownObjectRelease();
}

uint64_t sub_24E144728@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E54F0);
  MEMORY[0x28223BE20](v28);
  v8 = &v28 - v7;
  v9 = sub_24E347CB8();
  v10 = GKGameCenterUIFrameworkBundle();
  v11 = GKGetLocalizedStringFromTableInBundle();

  v12 = sub_24E347CF8();
  v14 = v13;

  v38 = v12;
  v39 = v14;
  v15 = a1 & 1;
  LOWORD(v32) = a1 & 0x101;
  v16 = (a1 >> 8) & 1;
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5530);
  sub_24E346BA8();
  v17 = v34;
  v18 = v35;
  LOBYTE(a1) = v36;
  v19 = v37;
  swift_getKeyPath();
  v34 = v17;
  v35 = v18;
  v36 = a1;
  v37 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5538);
  sub_24E346C78();

  sub_24DF90C4C();
  sub_24E346C38();
  LOBYTE(v34) = v15;
  BYTE1(v34) = v16;
  v35 = a2;
  sub_24E346B88();
  LOBYTE(v18) = v32 ^ BYTE1(v32);
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v18 & 1;
  v22 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5500) + 36)];
  *v22 = KeyPath;
  v22[1] = sub_24E1457C8;
  v22[2] = v21;
  LOBYTE(v34) = v15;
  BYTE1(v34) = v16;
  v35 = a2;
  sub_24E346B88();
  LOBYTE(KeyPath) = v32;
  v23 = swift_allocObject();
  *(v23 + 16) = v15;
  *(v23 + 17) = v16;
  v24 = v29;
  v25 = v30;
  *(v23 + 24) = a2;
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  v26 = &v8[*(v28 + 36)];
  *v26 = KeyPath;
  *(v26 + 1) = sub_24E145730;
  *(v26 + 2) = v23;
  sub_24E144B14();

  sub_24E346648();
  return sub_24DF8C95C(v8, &qword_27F1E54F0);
}

uint64_t sub_24E144A64@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_24E144728(v2 | *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), a1);
}

unint64_t sub_24E144A88()
{
  result = qword_27F1E54E0;
  if (!qword_27F1E54E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E54D8);
    sub_24E144B14();
    sub_24E144CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E54E0);
  }

  return result;
}

unint64_t sub_24E144B14()
{
  result = qword_27F1E54E8;
  if (!qword_27F1E54E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E54F0);
    sub_24E144BCC();
    sub_24DFB4C28(&qword_27F1E45A0, &qword_27F1E45A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E54E8);
  }

  return result;
}

unint64_t sub_24E144BCC()
{
  result = qword_27F1E54F8;
  if (!qword_27F1E54F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5500);
    sub_24DFB4C28(qword_27F1E1790, &qword_27F1E1788);
    sub_24DFB4C28(&qword_27F1E0160, &qword_27F1E0168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E54F8);
  }

  return result;
}

unint64_t sub_24E144CB0()
{
  result = qword_27F1DF850;
  if (!qword_27F1DF850)
  {
    sub_24E346128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF850);
  }

  return result;
}

uint64_t sub_24E144D08()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_24E1445D4(v1 | *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

uint64_t sub_24E144D2C(char *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5530);
  result = sub_24E346B88();
  if (v3 != v4)
  {
    return sub_24E144DD8(v1);
  }

  return result;
}

uint64_t sub_24E144DD8(char a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 1);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v9 = sub_24E347CF8();
  v11 = v10;
  v12 = sub_24E347CF8();
  sub_24E08FD58(v9, v11, v12, v13, v8);

  v14 = a1 & 1;
  v15 = [objc_opt_self() proxyForLocalPlayer];
  v16 = [v15 profileServicePrivate];

  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 17) = v4;
  *(v17 + 24) = v5;
  *(v17 + 32) = v6;
  *(v17 + 40) = v7;
  *(v17 + 48) = v14;
  v20[4] = sub_24E14579C;
  v20[5] = v17;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_24E052CF0;
  v20[3] = &block_descriptor_22_0;
  v18 = _Block_copy(v20);

  [v16 setContactsIntegrationConsent:v14 withCompletionHandler:v18];
  _Block_release(v18);
  return swift_unknownObjectRelease();
}

uint64_t sub_24E144FA4(uint64_t a1)
{
  v2 = [objc_opt_self() local];
  v3 = [v2 internal];

  [v3 setContactsIntegrationConsent_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5530);
  sub_24E346B88();
  sub_24E346B98();
  sub_24E346B88();
  sub_24E346B98();
}

uint64_t sub_24E1450F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_24E14514C(void *a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  v10 = HIBYTE(a2) & 1;
  v11 = sub_24E343F88();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = v8 & 1;
    v30 = v10;
    v31 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5530);
    sub_24E346B88();
    v26 = v8 & 1;
    v27 = v10;
    v28 = a3;
    BYTE6(v25) = v33;
    HIBYTE(v25) = v33;
    sub_24E346B98();

    sub_24E343C98();
    v15 = a1;
    v16 = sub_24E343F78();
    v17 = sub_24E348258();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 67109378;
      *(v18 + 4) = a6;
      *(v18 + 8) = 2112;
      v20 = a1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 10) = v21;
      *v19 = v21;
      _os_log_impl(&dword_24DE53000, v16, v17, "setContactsIntegrationConsent(%d) error: %@", v18, 0x12u);
      sub_24DF8C95C(v19, &unk_27F1DF730);
      MEMORY[0x253040EE0](v19, -1, -1);
      MEMORY[0x253040EE0](v18, -1, -1);
    }

    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v23 = [objc_opt_self() local];
    v24 = [v23 internal];

    [v24 setContactsIntegrationConsent_];
    v29 = v8 & 1;
    v30 = v10;
    v31 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5530);
    sub_24E346B88();
    v26 = v8 & 1;
    v27 = v10;
    v28 = a3;
    BYTE6(v25) = v32;
    HIBYTE(v25) = v32;
    sub_24E346B98();
  }
}

uint64_t sub_24E145480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E54D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E14551C()
{
  result = qword_27F1E5510;
  if (!qword_27F1E5510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5508);
    sub_24E1455D4();
    sub_24DFB4C28(&qword_27F1E0160, &qword_27F1E0168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5510);
  }

  return result;
}

unint64_t sub_24E1455D4()
{
  result = qword_27F1E5518;
  if (!qword_27F1E5518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E54D0);
    sub_24E145660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5518);
  }

  return result;
}

unint64_t sub_24E145660()
{
  result = qword_27F1E5520;
  if (!qword_27F1E5520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5528);
    sub_24E144A88();
    sub_24DFB4858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5520);
  }

  return result;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_16(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24E14579C()
{
  OUTLINED_FUNCTION_1_86();
  if (v7)
  {
    v6 = 0;
  }

  return sub_24E14514C(v1, v6 | v5, v2, v3, v4, *(v0 + 48));
}

uint64_t sub_24E1457F4()
{
  sub_24E145A44();

  return sub_24E345B78();
}

uint64_t PresentationContext.hashValue.getter()
{
  v1 = *v0;
  sub_24E348D18();
  MEMORY[0x25303F880](v1);
  return sub_24E348D68();
}

unint64_t sub_24E145914()
{
  result = qword_27F1E5540;
  if (!qword_27F1E5540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5540);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PresentationContext(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24E145A44()
{
  result = qword_27F1E5548;
  if (!qword_27F1E5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5548);
  }

  return result;
}

uint64_t sub_24E145AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24E145914();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_24E145B2C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_24E145B6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24E145BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 9))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_24E145CAC(*v2, v4 | *(v2 + 8), a1, a2);
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5550) + 36);
  v6 = *MEMORY[0x277CE0118];
  sub_24E345C68();
  OUTLINED_FUNCTION_5_2();
  (*(v7 + 104))(v5, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4B98);
  *(v5 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_24E145CAC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v5) = a2;
  v78 = a4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5558);
  MEMORY[0x28223BE20](v77);
  v64 = &v54 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5560);
  MEMORY[0x28223BE20](v73);
  v76 = &v54 - v8;
  v72 = sub_24E345CA8();
  v68 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5568);
  v60 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v59 = &v54 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5570);
  MEMORY[0x28223BE20](v61);
  v66 = &v54 - v12;
  v62 = sub_24E346038();
  v58 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v56 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24E346138();
  v70 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v69 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5578);
  v71 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v17 = &v54 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5580);
  v18 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v57 = &v54 - v19;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5588);
  MEMORY[0x28223BE20](v74);
  v65 = &v54 - v20;
  v21 = sub_24E345B68();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    v26 = a1;
    LOBYTE(v79) = a1;
  }

  else
  {
    sub_24E100480(a1, 0);
    sub_24E348268();
    v54 = v14;
    v27 = sub_24E346198();
    v55 = v5;
    v5 = v27;
    sub_24E343EA8();

    LOWORD(v5) = v55;
    sub_24E345B58();
    swift_getAtKeyPath();
    v14 = v54;
    sub_24DE73F34(a1, 0);
    (*(v22 + 8))(v25, v21);
    v26 = v79;
  }

  if (v26 == 1)
  {
    (*(v70 + 16))(v69, a3, v14, v23);
    sub_24E346BE8();
    sub_24E345C98();
    sub_24DFB4C28(&qword_27F1E5590, &qword_27F1E5578);
    sub_24E146A2C(&qword_27F1E46D8, MEMORY[0x277CDDEE0]);
    v28 = v64;
    v29 = v75;
    v30 = v72;
    sub_24E346588();
    (*(v68 + 8))(v10, v30);
    (*(v71 + 8))(v17, v29);
    v31 = sub_24E345F18();
    v32 = v76;
    *(v28 + *(v77 + 36)) = v31;
    v33 = &qword_27F1E5558;
    sub_24DF8BD90(v28, v32, &qword_27F1E5558);
    swift_storeEnumTagMultiPayload();
    sub_24E146888();
    sub_24E146A74();
    sub_24E345E38();
    v34 = v28;
  }

  else
  {
    (*(v70 + 16))(v69, a3, v14, v23);
    sub_24E346BE8();
    v35 = (v71 + 8);
    if ((v5 & 0x100) != 0)
    {
      v45 = v56;
      sub_24E346028();
      v46 = sub_24DFB4C28(&qword_27F1E5590, &qword_27F1E5578);
      v47 = sub_24E146A2C(&qword_27F1E46D0, MEMORY[0x277CDE400]);
      v48 = v57;
      v49 = v75;
      v50 = v62;
      sub_24E346588();
      (*(v58 + 8))(v45, v50);
      (*v35)(v17, v49);
      v51 = v63;
      (*(v18 + 16))(v66, v48, v63);
      swift_storeEnumTagMultiPayload();
      v79 = v49;
      v80 = v50;
      v81 = v46;
      v82 = v47;
      swift_getOpaqueTypeConformance2();
      v52 = sub_24E146A2C(&qword_27F1E46D8, MEMORY[0x277CDDEE0]);
      v79 = v49;
      v80 = v72;
      v81 = v46;
      v82 = v52;
      swift_getOpaqueTypeConformance2();
      v44 = v65;
      sub_24E345E38();
      (*(v18 + 8))(v48, v51);
    }

    else
    {
      sub_24E345C98();
      v36 = sub_24DFB4C28(&qword_27F1E5590, &qword_27F1E5578);
      v37 = sub_24E146A2C(&qword_27F1E46D8, MEMORY[0x277CDDEE0]);
      v38 = v59;
      v39 = v75;
      v40 = v72;
      sub_24E346588();
      (*(v68 + 8))(v10, v40);
      (*v35)(v17, v39);
      v41 = v60;
      v42 = v67;
      (*(v60 + 16))(v66, v38, v67);
      swift_storeEnumTagMultiPayload();
      v43 = sub_24E146A2C(&qword_27F1E46D0, MEMORY[0x277CDE400]);
      v79 = v39;
      v80 = v62;
      v81 = v36;
      v82 = v43;
      swift_getOpaqueTypeConformance2();
      v79 = v39;
      v80 = v40;
      v81 = v36;
      v82 = v37;
      swift_getOpaqueTypeConformance2();
      v44 = v65;
      sub_24E345E38();
      (*(v41 + 8))(v38, v42);
    }

    v33 = &qword_27F1E5588;
    sub_24DF8BD90(v44, v76, &qword_27F1E5588);
    swift_storeEnumTagMultiPayload();
    sub_24E146888();
    sub_24E146A74();
    sub_24E345E38();
    v34 = v44;
  }

  return sub_24DF8BFF4(v34, v33);
}

unint64_t sub_24E146888()
{
  result = qword_27F1E5598;
  if (!qword_27F1E5598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5578);
    sub_24E346038();
    sub_24DFB4C28(&qword_27F1E5590, &qword_27F1E5578);
    sub_24E146A2C(&qword_27F1E46D0, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_24E345CA8();
    sub_24E146A2C(&qword_27F1E46D8, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5598);
  }

  return result;
}

uint64_t sub_24E146A2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E146A74()
{
  result = qword_27F1E55A0;
  if (!qword_27F1E55A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5558);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5578);
    sub_24E345CA8();
    sub_24DFB4C28(&qword_27F1E5590, &qword_27F1E5578);
    sub_24E146A2C(&qword_27F1E46D8, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    sub_24DFB4C28(&qword_27F1E4AD0, &qword_27F1E4AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E55A0);
  }

  return result;
}

unint64_t sub_24E146BEC()
{
  result = qword_27F1E55A8;
  if (!qword_27F1E55A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5550);
    sub_24E146CA4();
    sub_24DFB4C28(&qword_27F1E4B90, &qword_27F1E4B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E55A8);
  }

  return result;
}

unint64_t sub_24E146CA4()
{
  result = qword_27F1E55B0;
  if (!qword_27F1E55B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E55B8);
    sub_24E146D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E55B0);
  }

  return result;
}

unint64_t sub_24E146D28()
{
  result = qword_27F1E55C0;
  if (!qword_27F1E55C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E55C8);
    sub_24E146888();
    sub_24E146A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E55C0);
  }

  return result;
}

uint64_t type metadata accessor for ProfilePrivacySection()
{
  result = qword_27F1E55D0;
  if (!qword_27F1E55D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E146E28()
{
  sub_24DFEB518();
  if (v0 <= 0x3F)
  {
    sub_24DFEB4C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24E146EC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v43 = sub_24E345698();
  OUTLINED_FUNCTION_0_14();
  v44 = v3;
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5680);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5630);
  OUTLINED_FUNCTION_0_14();
  v40 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5688);
  OUTLINED_FUNCTION_0_14();
  v42 = v14;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  v38 = type metadata accessor for GameCenterSettings();
  OUTLINED_FUNCTION_2_66();
  sub_24E149C18(v18, v19);
  sub_24E345818();
  swift_getKeyPath();
  sub_24E345838();

  v20 = v47;
  v21 = v48;
  v22 = v49;
  swift_getKeyPath();
  v57 = v20;
  v58 = v21;
  v59 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5690);
  sub_24E346C78();

  v23 = v54;
  v24 = v55;
  v25 = v56;

  v46 = v2;
  v51 = v23;
  v52 = v24;
  v53 = v25;
  sub_24E147E2C(v8);
  type metadata accessor for GKProfilePrivacyVisibility(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5698);
  sub_24E149B5C();
  sub_24E149C18(&qword_27F1E0DD8, type metadata accessor for GKProfilePrivacyVisibility);
  sub_24DFB4C28(&qword_27F1E56A8, &qword_27F1E5698);
  sub_24E346C18();
  v26 = v37;
  sub_24E345688();
  v27 = sub_24DFB4C28(&qword_27F1E5638, &qword_27F1E5630);
  v28 = MEMORY[0x277CDDA00];
  v29 = v43;
  sub_24E3465F8();
  (*(v44 + 8))(v26, v29);
  (*(v40 + 8))(v13, v9);
  v47 = v9;
  v48 = v29;
  v49 = v27;
  v50 = v28;
  swift_getOpaqueTypeConformance2();
  v30 = v45;
  v31 = v41;
  sub_24E346648();
  (*(v42 + 8))(v17, v31);
  LOBYTE(v31) = sub_24DFF2180();
  KeyPath = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = (v31 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5618);
  v35 = (v30 + *(result + 36));
  *v35 = KeyPath;
  v35[1] = sub_24DFEB7E4;
  v35[2] = v33;
  return result;
}

uint64_t sub_24E147460@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24DFED204();
  *a1 = result;
  return result;
}

uint64_t sub_24E1474B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0E10);
  v85 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v76 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E56B8);
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x28223BE20](v7);
  v82 = v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E56C0);
  MEMORY[0x28223BE20](v9);
  v11 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v76 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v76 - v16;
  MEMORY[0x28223BE20](v18);
  v87 = v76 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E56C8);
  MEMORY[0x28223BE20](v20 - 8);
  MEMORY[0x28223BE20](v21);
  v86 = v76 - v23;
  if (*a1)
  {
    v77 = v17;
    v78 = v22;
    v79 = v14;
    v80 = v11;
    v81 = a2;

    v11 = sub_24DFED03C();

    v24 = MEMORY[0x277CE0BD8];
    v25 = MEMORY[0x277CE0BC8];
    v26 = 1;
    if ((v11 & 0x100000000) != 0)
    {
LABEL_7:
      __swift_storeEnumTagSinglePayload(v86, v26, 1, v9);
      v43 = sub_24E347CB8();
      v44 = GKGameCenterUIFrameworkBundle();
      v45 = GKGetLocalizedStringFromTableInBundle();

      v46 = sub_24E347CF8();
      v48 = v47;

      v88 = v46;
      v89 = v48;
      v76[1] = sub_24DF90C4C();
      *v6 = sub_24E3464E8();
      *(v6 + 1) = v49;
      v6[16] = v50 & 1;
      *(v6 + 3) = v51;
      *(v6 + 8) = 1;
      v6[36] = 1;
      type metadata accessor for GKProfilePrivacyVisibility(255);
      v53 = v52;
      v54 = sub_24E149C18(&qword_27F1E0DD8, type metadata accessor for GKProfilePrivacyVisibility);
      v88 = v24;
      v89 = v53;
      v90 = v25;
      v91 = v54;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v56 = v82;
      sub_24E3466E8();
      v85 = *(v85 + 8);
      (v85)(v6, v4);
      v88 = v4;
      v89 = OpaqueTypeConformance2;
      v76[0] = swift_getOpaqueTypeConformance2();
      v57 = v84;
      sub_24E346648();
      v83 = *(v83 + 8);
      (v83)(v56, v57);
      v58 = sub_24E347CB8();
      v59 = GKGameCenterUIFrameworkBundle();
      v60 = GKGetLocalizedStringFromTableInBundle();

      v61 = sub_24E347CF8();
      v63 = v62;

      v88 = v61;
      v89 = v63;
      *v6 = sub_24E3464E8();
      *(v6 + 1) = v64;
      v6[16] = v65 & 1;
      *(v6 + 3) = v66;
      *(v6 + 8) = 2;
      v6[36] = 1;
      sub_24E3466E8();
      (v85)(v6, v4);
      v67 = v77;
      sub_24E346648();
      (v83)(v56, v57);
      v68 = v86;
      v69 = v78;
      sub_24DF8BD90(v86, v78, &qword_27F1E56C8);
      v70 = v87;
      v71 = v79;
      sub_24DF8BD90(v87, v79, &qword_27F1E56C0);
      v72 = v80;
      sub_24DF8BD90(v67, v80, &qword_27F1E56C0);
      v73 = v81;
      sub_24DF8BD90(v69, v81, &qword_27F1E56C8);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E56D0);
      sub_24DF8BD90(v71, v73 + *(v74 + 48), &qword_27F1E56C0);
      sub_24DF8BD90(v72, v73 + *(v74 + 64), &qword_27F1E56C0);
      sub_24DF8BFF4(v67, &qword_27F1E56C0);
      sub_24DF8BFF4(v70, &qword_27F1E56C0);
      sub_24DF8BFF4(v68, &qword_27F1E56C8);
      sub_24DF8BFF4(v72, &qword_27F1E56C0);
      sub_24DF8BFF4(v71, &qword_27F1E56C0);
      return sub_24DF8BFF4(v69, &qword_27F1E56C8);
    }

    v26 = 1;
    if ((v11 - 1) < 2)
    {
      v27 = sub_24E347CB8();
      v28 = GKGameCenterUIFrameworkBundle();
      v29 = GKGetLocalizedStringFromTableInBundle();

      v30 = sub_24E347CF8();
      v32 = v31;

      v88 = v30;
      v89 = v32;
      sub_24DF90C4C();
      *v6 = sub_24E3464E8();
      *(v6 + 1) = v33;
      v6[16] = v34 & 1;
      *(v6 + 3) = v35;
      *(v6 + 8) = 0;
      v6[36] = 1;
      type metadata accessor for GKProfilePrivacyVisibility(255);
      v37 = v36;
      v38 = sub_24E149C18(&qword_27F1E0DD8, type metadata accessor for GKProfilePrivacyVisibility);
      v88 = v24;
      v89 = v37;
      v90 = v25;
      v91 = v38;
      v39 = swift_getOpaqueTypeConformance2();
      v40 = v82;
      sub_24E3466E8();
      (*(v85 + 8))(v6, v4);
      v88 = v4;
      v89 = v39;
      swift_getOpaqueTypeConformance2();
      v41 = v87;
      v42 = v84;
      sub_24E346648();
      (*(v83 + 8))(v40, v42);
      sub_24DE652A4(v41, v86);
      v26 = 0;
      goto LABEL_7;
    }

    if (!v11 || v11 == 3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    sub_24E149C18(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
    sub_24E345828();
    __break(1u);
  }

  type metadata accessor for GKPlayerAgeCategory(0);
  LODWORD(v88) = v11;
  result = sub_24E348C58();
  __break(1u);
  return result;
}

uint64_t sub_24E147E2C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5670);
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = v31 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E56B0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  v11 = sub_24E345CC8();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProfilePrivacySection();
  sub_24E028EC4(v16);
  v17 = sub_24E345CB8();
  (*(v13 + 8))(v16, v11);
  if (v17)
  {
    swift_storeEnumTagMultiPayload();
    v32 = MEMORY[0x277CE0BD8];
    v33 = MEMORY[0x277CE0BC8];
    OUTLINED_FUNCTION_3_71();
    return sub_24E345E38();
  }

  else
  {
    v19 = sub_24E347CB8();
    v20 = GKGameCenterUIFrameworkBundle();
    v21 = GKGetLocalizedStringFromTableInBundle();

    v22 = sub_24E347CF8();
    v24 = v23;

    v32 = v22;
    v33 = v24;
    sub_24DF90C4C();
    v25 = sub_24E3464E8();
    v27 = v26;
    v32 = v25;
    v33 = v26;
    v31[1] = a1;
    v29 = v28 & 1;
    v34 = v28 & 1;
    v35 = v30;
    sub_24E3466E8();
    sub_24DFA92EC(v25, v27, v29);

    (*(v4 + 16))(v10, v7, v2);
    swift_storeEnumTagMultiPayload();
    v32 = MEMORY[0x277CE0BD8];
    v33 = MEMORY[0x277CE0BC8];
    OUTLINED_FUNCTION_3_71();
    sub_24E345E38();
    return (*(v4 + 8))(v7, v2);
  }
}

uint64_t sub_24E148190@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for ProfilePrivacySection();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E55E0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v4);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E55E8);
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v31 = v1;
  v10 = sub_24E347CB8();
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();

  v13 = sub_24E347CF8();
  v15 = v14;

  v32 = v13;
  v33 = v15;
  sub_24DF90C4C();
  v32 = sub_24E3464E8();
  v33 = v16;
  v34 = v17 & 1;
  v35 = v18;
  sub_24E148C88(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E55F0);
  sub_24E14958C();
  sub_24E149848();
  sub_24E346D18();
  if (*v1)
  {

    v19 = sub_24DFED204();

    sub_24E149A98(v1, &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProfilePrivacySection);
    v20 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v21 = swift_allocObject();
    sub_24E149904(&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    v22 = v30;
    (*(v6 + 32))(v30, v9, v28);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5648);
    v24 = v22 + *(result + 36);
    *v24 = v19;
    *(v24 + 8) = sub_24E149968;
    *(v24 + 16) = v21;
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    OUTLINED_FUNCTION_2_66();
    sub_24E149C18(v25, v26);
    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

uint64_t sub_24E148528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5618);
  MEMORY[0x28223BE20](v20[0]);
  v4 = v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5658);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5608);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  v11 = sub_24E345CC8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProfilePrivacySection();
  sub_24E028EC4(v14);
  v15 = sub_24E345CB8();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    *v10 = sub_24E345D08();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5660);
    sub_24E148880(a1, &v10[*(v16 + 44)]);
    v17 = &qword_27F1E5608;
    sub_24DF8BD90(v10, v7, &qword_27F1E5608);
    swift_storeEnumTagMultiPayload();
    sub_24DFB4C28(&qword_27F1E5600, &qword_27F1E5608);
    sub_24E149644();
    sub_24E345E38();
    v18 = v10;
  }

  else
  {
    sub_24E146EC8(v4);
    v17 = &qword_27F1E5618;
    sub_24DF8BD90(v4, v7, &qword_27F1E5618);
    swift_storeEnumTagMultiPayload();
    sub_24DFB4C28(&qword_27F1E5600, &qword_27F1E5608);
    sub_24E149644();
    sub_24E345E38();
    v18 = v4;
  }

  return sub_24DF8BFF4(v18, v17);
}

uint64_t sub_24E148880@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a1;
  v47 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5618);
  MEMORY[0x28223BE20](v44);
  v3 = &v39 - v2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5668);
  v42 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5670);
  v41 = *(v7 - 8);
  v8 = v41;
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = sub_24E347CB8();
  v15 = GKGameCenterUIFrameworkBundle();
  v16 = GKGetLocalizedStringFromTableInBundle();

  v17 = sub_24E347CF8();
  v19 = v18;

  v49 = v17;
  v50 = v19;
  sub_24DF90C4C();
  v20 = sub_24E3464E8();
  v22 = v21;
  v49 = v20;
  v50 = v21;
  v24 = v23 & 1;
  v51 = v23 & 1;
  v52 = v25;
  v40 = v13;
  sub_24E3466E8();
  sub_24DFA92EC(v20, v22, v24);

  sub_24E146EC8(v3);
  sub_24E149644();
  v26 = v48;
  sub_24E346618();
  sub_24DF8BFF4(v3, &qword_27F1E5618);
  v27 = *(v8 + 16);
  v39 = v10;
  v28 = v13;
  v29 = v7;
  v27(v10, v28, v7);
  v31 = v42;
  v30 = v43;
  v32 = *(v42 + 16);
  v33 = v46;
  v32(v43, v26, v46);
  v34 = v47;
  v27(v47, v10, v29);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5678);
  v32(&v34[*(v35 + 48)], v30, v33);
  v36 = *(v31 + 8);
  v36(v48, v33);
  v37 = *(v41 + 8);
  v37(v40, v29);
  v36(v30, v33);
  return (v37)(v39, v29);
}

uint64_t sub_24E148C88(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5650);
  MEMORY[0x28223BE20](v2);
  v4 = v20 - v3;
  v5 = type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView();
  MEMORY[0x28223BE20](v5);
  v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24E347CB8();
  v9 = GKGameCenterUIFrameworkBundle();
  v10 = GKGetLocalizedStringFromTableInBundle();

  v11 = sub_24E347CF8();
  v13 = v12;

  if (*a1)
  {

    v14 = sub_24DFED124();

    if (v14)
    {
      v20[0] = v11;
      v20[1] = v13;
      sub_24DF90C4C();
      *v4 = sub_24E3464E8();
      *(v4 + 1) = v15;
      v4[16] = v16 & 1;
      *(v4 + 3) = v17;
      swift_storeEnumTagMultiPayload();
      sub_24E149C18(&qword_27F1E0170, type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView);
      return sub_24E345E38();
    }

    else
    {
      *v7 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148);
      swift_storeEnumTagMultiPayload();
      v19 = (v7 + *(v5 + 20));
      *v19 = v11;
      v19[1] = v13;
      sub_24E149A98(v7, v4, type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView);
      swift_storeEnumTagMultiPayload();
      sub_24E149C18(&qword_27F1E0170, type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView);
      sub_24E345E38();
      return sub_24E149AF8(v7);
    }
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    sub_24E149C18(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

uint64_t sub_24E148FC8(unsigned int *a1, void *a2)
{
  if (*a2)
  {
    v2 = *a1;

    v3 = sub_24DFED204();

    if (HIDWORD(v3) != v3)
    {

      v5 = sub_24DFED204() >> 32;

      return sub_24E1490A4(v5, v2);
    }
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    sub_24E149C18(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

uint64_t sub_24E1490A4(int a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ProfilePrivacySection();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() proxyForLocalPlayer];
  v11 = [v10 profileServicePrivate];

  sub_24E149A98(v3, v9, type metadata accessor for ProfilePrivacySection);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = (v8 + v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v14 = swift_allocObject();
  sub_24E149904(v9, v14 + v12);
  *(v14 + v13) = a1;
  *(v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL)) = a2;
  aBlock[4] = sub_24E1499D8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E052CF0;
  aBlock[3] = &block_descriptor_52;
  v15 = _Block_copy(aBlock);

  [v11 setProfilePrivacy:a2 handler:v15];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

void sub_24E14929C(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v4 = *a2;
  if (a1)
  {
    if (v4)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v5 = sub_24E344E48();
      *v6 = v6[1];
      v5(&v24, 0);

      return;
    }

    goto LABEL_7;
  }

  if (!v4)
  {
LABEL_7:
    type metadata accessor for GameCenterSettings();
    sub_24E149C18(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
    sub_24E345828();
    __break(1u);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v9 = sub_24E344E48();
  v10[1] = *v10;
  v9(&v24, 0);

  v11 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v23 = sub_24E347CF8();
  v13 = v12;
  v14 = sub_24E347CF8();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  v24 = sub_24E347CF8();
  v25 = v18;
  sub_24E348918();
  type metadata accessor for GKProfilePrivacyVisibility(0);
  v20 = v19;
  *(inited + 96) = v19;
  *(inited + 72) = a3;
  v24 = sub_24E347CF8();
  v25 = v21;
  sub_24E348918();
  *(inited + 168) = v20;
  *(inited + 144) = a4;
  v22 = sub_24E347C28();
  sub_24E32BF38(v23, v13, v14, v16, v22, v11);
}

unint64_t sub_24E14958C()
{
  result = qword_27F1E55F8;
  if (!qword_27F1E55F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E55F0);
    sub_24DFB4C28(&qword_27F1E5600, &qword_27F1E5608);
    sub_24E149644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E55F8);
  }

  return result;
}

unint64_t sub_24E149644()
{
  result = qword_27F1E5610;
  if (!qword_27F1E5610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5618);
    sub_24E1496FC();
    sub_24DFB4C28(&qword_27F1E0160, &qword_27F1E0168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5610);
  }

  return result;
}

unint64_t sub_24E1496FC()
{
  result = qword_27F1E5620;
  if (!qword_27F1E5620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5630);
    sub_24E345698();
    sub_24DFB4C28(&qword_27F1E5638, &qword_27F1E5630);
    swift_getOpaqueTypeConformance2();
    sub_24E149C18(&qword_27F1DF850, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5620);
  }

  return result;
}

unint64_t sub_24E149848()
{
  result = qword_27F1E5640;
  if (!qword_27F1E5640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E55E0);
    sub_24E149C18(&qword_27F1E0170, type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5640);
  }

  return result;
}

uint64_t sub_24E149904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfilePrivacySection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E149968(unsigned int *a1)
{
  v3 = *(type metadata accessor for ProfilePrivacySection() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24E148FC8(a1, v4);
}

void sub_24E1499D8(uint64_t a1)
{
  v3 = *(type metadata accessor for ProfilePrivacySection() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL));

  sub_24E14929C(a1, (v1 + v4), v6, v7);
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E149A98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24E149AF8(uint64_t a1)
{
  v2 = type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E149B5C()
{
  result = qword_27F1E56A0;
  if (!qword_27F1E56A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5680);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E56A0);
  }

  return result;
}

uint64_t sub_24E149C18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E149C60()
{
  result = qword_27F1E56D8;
  if (!qword_27F1E56D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5648);
    sub_24E149D18();
    sub_24DFB4C28(&qword_27F1E56E8, &qword_27F1E56F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E56D8);
  }

  return result;
}

unint64_t sub_24E149D18()
{
  result = qword_27F1E56E0;
  if (!qword_27F1E56E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E55E8);
    sub_24E14958C();
    sub_24E149848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E56E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_71()
{

  return swift_getOpaqueTypeConformance2();
}

__n128 sub_24E149DF4@<Q0>(__n128 *a1@<X8>, double a2@<D0>)
{
  type metadata accessor for ProfileEditorData();
  sub_24E14D864(&qword_27F1DF920, type metadata accessor for ProfileEditorData);
  v4 = sub_24E345298();
  v6 = v5;
  sub_24E346B78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5718);
  sub_24E346B78();
  result = v8;
  a1->n128_u64[0] = v4;
  a1->n128_u8[8] = v6 & 1;
  a1[1].n128_u8[0] = v8.n128_u8[0];
  a1[1].n128_u64[1] = v8.n128_u64[1];
  a1[2] = v8;
  a1[3].n128_f64[0] = a2;
  return result;
}

uint64_t sub_24E149EF8@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5720);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v19 - v3;
  v21 = v19 - v3;
  v32 = *v1;
  v33 = *(v1 + 8);
  v31 = *(v1 + 1);
  v5 = v1[4];
  v29 = v1[5];
  v30 = v5;
  OUTLINED_FUNCTION_6_55();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_0_109(v6);
  v24 = v1;
  sub_24DF8BD90(&v32, v28, &qword_27F1DF708);
  sub_24DF8BD90(&v31, v28, &qword_27F1E34E0);
  sub_24DF8BD90(&v30, v28, &qword_27F1E5718);
  sub_24DF8BD90(&v29, v28, &qword_27F1E5728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5730);
  sub_24E14D55C(&qword_27F1E5738, &qword_27F1E5730, &unk_24E37C7B8, sub_24E14D390);
  sub_24E346BD8();
  type metadata accessor for GameCenterSettings();
  v7 = sub_24DFECA04();
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = (v7 & 1) == 0;
  v10 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5780) + 36)];
  *v10 = KeyPath;
  v10[1] = sub_24DFEB7E4;
  v10[2] = v9;
  sub_24E346E28();
  sub_24E3453D8();
  v11 = &v4[*(v2 + 36)];
  v12 = v28[1];
  *v11 = v28[0];
  *(v11 + 1) = v12;
  *(v11 + 2) = v28[2];
  v27 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346BA8();
  v19[1] = v25[0];
  v19[0] = v25[1];
  v20 = v26;
  OUTLINED_FUNCTION_6_55();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_0_109(v13);
  OUTLINED_FUNCTION_6_55();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_0_109(v14);
  sub_24DF8BD90(&v32, v25, &qword_27F1DF708);
  sub_24DF8BD90(&v31, v25, &qword_27F1E34E0);
  sub_24DF8BD90(&v30, v25, &qword_27F1E5718);
  sub_24DF8BD90(&v29, v25, &qword_27F1E5728);
  sub_24DF8BD90(&v32, v25, &qword_27F1DF708);
  sub_24DF8BD90(&v31, v25, &qword_27F1E34E0);
  sub_24DF8BD90(&v30, v25, &qword_27F1E5718);
  sub_24DF8BD90(&v29, v25, &qword_27F1E5728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5788);
  OUTLINED_FUNCTION_1_87();
  sub_24E14D55C(v15, &qword_27F1E5720, &unk_24E37C798, v16);
  sub_24E14D6C0();
  v17 = v21;
  sub_24E346868();

  return sub_24E101ED8(v17, &qword_27F1E5720);
}

uint64_t sub_24E14A3E0()
{
  sub_24E14A440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  return sub_24E346B98();
}

uint64_t sub_24E14A440()
{
  v1 = sub_24E347638();
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24E345B68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v0 + 8);
  v8 = *v0;
  v22 = *v0;
  v9 = v23;

  if ((v9 & 1) == 0)
  {
    sub_24E348268();
    v10 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24E101ED8(&v22, &qword_27F1DF708);
    (*(v5 + 8))(v7, v4);
  }

  v11 = sub_24E1AE84C();

  if (v11 != 12)
  {

    if ((v9 & 1) == 0)
    {
      sub_24E348268();
      v13 = sub_24E346198();
      sub_24E343EA8();

      sub_24E345B58();
      swift_getAtKeyPath();
      sub_24E101ED8(&v22, &qword_27F1DF708);
      (*(v5 + 8))(v7, v4);
    }

    v14 = sub_24E1AE860();

    if (v14 != 20)
    {
      if (qword_27F1DDF20 != -1)
      {
        swift_once();
      }

      if ((v9 & 1) == 0)
      {
        sub_24E348268();
        v15 = sub_24E346198();
        sub_24E343EA8();

        sub_24E345B58();
        swift_getAtKeyPath();
        sub_24E101ED8(&v22, &qword_27F1DF708);
        (*(v5 + 8))(v7, v4);
        v8 = v21;
      }

      v17 = v19;
      v16 = v20;
      (*(v19 + 16))(v3, v8 + OBJC_IVAR____TtC12GameCenterUI17ProfileEditorData_metricsContext, v20);

      sub_24E32E900(v11, v14, 1, 28, 7, v3);
      return (*(v17 + 8))(v3, v16);
    }
  }

  return result;
}

double sub_24E14A838@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24E345B68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(a1 + 8);
  v8 = *a1;
  v50 = *a1;
  if (v51 == 1)
  {
    v49 = v8;
  }

  else
  {

    sub_24E348268();
    v9 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24E101ED8(&v50, &qword_27F1DF708);
    (*(v5 + 8))(v7, v4);
  }

  v10 = sub_24E1AE7CC();

  v11 = [v10 internal];

  v12 = sub_24E1AF4F4(v11);
  v14 = v13;
  v16 = v15;
  v17 = sub_24E346DF8();
  v19 = v18;
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5758) + 36);
  sub_24E14ABD0(v20);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5768) + 36));
  *v21 = v17;
  v21[1] = v19;
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;
  *(a2 + 17) = HIBYTE(v16) & 1;
  sub_24E346998();
  v22 = sub_24E3469C8();

  sub_24E346998();
  v23 = sub_24E3469C8();

  v24 = sub_24E346E28();
  v26 = v25;
  v40[0] = v22;
  LOWORD(v40[1]) = 256;
  v40[2] = v23;
  v37 = xmmword_24E37C4E0;
  *&v40[3] = xmmword_24E37C4E0;
  __asm { FMOV            V0.2D, #5.0 }

  v36 = _Q0;
  *&v40[5] = _Q0;
  LOBYTE(v40[7]) = 0;
  v40[8] = v24;
  v40[9] = v25;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5748);
  memcpy((a2 + *(v32 + 36)), v40, 0x50uLL);
  v41 = v22;
  v42 = 256;
  v43 = v23;
  v44 = v37;
  v45 = v36;
  v46 = 0;
  v47 = v24;
  v48 = v26;
  sub_24DF8BD90(v40, v38, &qword_27F1E5778);
  sub_24E101ED8(&v41, &qword_27F1E5778);
  sub_24E346E28();
  sub_24E3453D8();
  v33 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5730) + 36));
  v34 = v38[1];
  *v33 = v38[0];
  v33[1] = v34;
  result = *&v39;
  v33[2] = v39;
  return result;
}

uint64_t sub_24E14ABD0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19E0);
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF658);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E57D8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  type metadata accessor for GameCenterSettings();
  if (sub_24DFECA04())
  {
    v37 = v8;
    v38 = a1;
    v11 = sub_24E346A58();
    v12 = sub_24E346288();
    KeyPath = swift_getKeyPath();
    *&v39 = v11;
    *(&v39 + 1) = KeyPath;
    *&v40 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF638);
    sub_24DFA9774();
    sub_24E346818();

    v14 = &v7[*(v5 + 36)];
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF660) + 28);
    v16 = *MEMORY[0x277CE1048];
    v17 = sub_24E346AC8();
    (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
    *v14 = swift_getKeyPath();
    v18 = *MEMORY[0x277CDFA10];
    v19 = sub_24E345658();
    (*(*(v19 - 8) + 104))(v4, v18, v19);
    sub_24E14D864(&qword_27F1E1A18, MEMORY[0x277CDFA28]);
    result = sub_24E347CA8();
    if (result)
    {
      sub_24E14D8AC();
      sub_24E1027E4(&qword_27F1E19E8, &qword_27F1E19E0);
      sub_24E346678();
      sub_24E101ED8(v4, &qword_27F1E19E0);
      sub_24E101ED8(v7, &qword_27F1DF658);
      sub_24E346E28();
      sub_24E3453D8();
      v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E57F0) + 36)];
      v22 = v40;
      *v21 = v39;
      *(v21 + 1) = v22;
      *(v21 + 2) = v41;
      v23 = [objc_opt_self() systemBlueColor];
      v24 = sub_24E346948();
      *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E57F8) + 36)] = v24;
      v25 = sub_24E3469B8();
      v26 = sub_24E3461E8();
      v27 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5800) + 36)];
      *v27 = v25;
      v27[8] = v26;
      *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5808) + 36)] = 256;
      sub_24E346998();
      v28 = sub_24E3469C8();

      v29 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5810) + 36)];
      *v29 = v28;
      *(v29 + 8) = xmmword_24E37C4E0;
      *(v29 + 3) = 0x4014000000000000;
      LOBYTE(v25) = sub_24E3461E8();
      sub_24E3451B8();
      v30 = v37;
      v31 = &v10[*(v37 + 36)];
      *v31 = v25;
      *(v31 + 1) = v32;
      *(v31 + 2) = v33;
      *(v31 + 3) = v34;
      *(v31 + 4) = v35;
      v31[40] = 0;
      v36 = v38;
      sub_24DE65454(v10, v38);
      return __swift_storeEnumTagSinglePayload(v36, 0, 1, v30);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v8);
  }

  return result;
}

uint64_t sub_24E14B16C(uint64_t *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  *&v67 = v2;
  *(&v67 + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E57B8);
  sub_24E346B88();
  v4 = v65;
  if (v65)
  {
    type metadata accessor for ProfileEditorData();
    sub_24E14D864(&qword_27F1DF920, type metadata accessor for ProfileEditorData);
    v5 = sub_24E345298();
    v7 = v6;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E57C8);
    MEMORY[0x28223BE20](v8);
    v10 = &v49 - v9;
    *v10 = v5;
    v10[8] = v7 & 1;
    *(v10 + 2) = v4;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E57C0);
    sub_24E14CF24();
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DE230);
    v12 = sub_24E1027E4(&qword_27F1E2088, &qword_27F1DE230);
    *&v67 = v11;
    *(&v67 + 1) = v12;
    swift_getOpaqueTypeConformance2();
    return sub_24E345E38();
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E57C0);
    v63 = &v49;
    v62 = *(v14 - 8);
    MEMORY[0x28223BE20](v14);
    v61 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = &v49;
    MEMORY[0x28223BE20](v16);
    v58 = &v49 - v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE230);
    v57 = &v49;
    v60 = v18;
    v56 = *(v18 - 8);
    MEMORY[0x28223BE20](v18);
    v55 = &v49 - v19;
    sub_24E345348();
    v68 = *a1;
    v69 = *(a1 + 8);
    v67 = *(a1 + 1);
    v70 = v2;
    v71 = v3;
    sub_24E348068();
    sub_24DF8BD90(&v68, &v65, &qword_27F1DF708);
    sub_24DF8BD90(&v67, &v65, &qword_27F1E34E0);
    sub_24DF8BD90(&v70, &v65, &qword_27F1E5718);
    sub_24DF8BD90(&v71, &v65, &qword_27F1E5728);
    v20 = sub_24E348058();
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    *(v21 + 16) = v20;
    *(v21 + 24) = v22;
    v23 = *(a1 + 1);
    *(v21 + 32) = *a1;
    *(v21 + 48) = v23;
    *(v21 + 64) = *(a1 + 2);
    *(v21 + 80) = a1[6];
    v54 = sub_24E348098();
    v24 = *(v54 - 8);
    v25 = *(v24 + 64);
    MEMORY[0x28223BE20](v54);
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
    v27 = &v49 - v26;
    sub_24E348078();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v51 = sub_24E345608();
      v52 = &v49;
      v50 = *(v51 - 8);
      MEMORY[0x28223BE20](v51);
      v53 = v14;
      v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_24E348998();

      v65 = 0xD000000000000031;
      v66 = 0x800000024E3A8A40;
      v64 = 109;
      v30 = sub_24E348BA8();
      MEMORY[0x25303E950](v30);

      v49 = &v49;
      v32 = MEMORY[0x28223BE20](v31);
      v33 = &v49 - v26;
      v34 = &v49 - v26;
      v35 = v54;
      (*(v24 + 16))(v33, v34, v54, v32);
      sub_24E3455F8();
      (*(v24 + 8))(v27, v35);
      v36 = v58;
      v37 = v60;
      (*(v56 + 32))(v58, v55, v60);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE238);
      v39 = v29;
      v14 = v53;
      (*(v50 + 32))(&v36[*(v38 + 36)], v39, v51);
    }

    else
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DE240);
      v36 = v58;
      v41 = &v58[*(v40 + 36)];
      v42 = sub_24E345528();
      (*(v24 + 32))(&v41[*(v42 + 20)], &v49 - v26, v54);
      *v41 = &unk_24E37C850;
      *(v41 + 1) = v21;
      v37 = v60;
      (*(v56 + 32))(v36, v55, v60);
    }

    v44 = v61;
    v43 = v62;
    (*(v62 + 32))(v61, v36, v14);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E57C8);
    v46 = MEMORY[0x28223BE20](v45);
    (*(v43 + 16))(&v49 - v47, v44, v14, v46);
    swift_storeEnumTagMultiPayload();
    sub_24E14CF24();
    v48 = sub_24E1027E4(&qword_27F1E2088, &qword_27F1DE230);
    v65 = v37;
    v66 = v48;
    swift_getOpaqueTypeConformance2();
    sub_24E345E38();
    return (*(v43 + 8))(v44, v14);
  }
}

uint64_t sub_24E14BA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a3;
  sub_24E348068();
  v3[21] = sub_24E348058();
  v5 = sub_24E347FF8();
  v3[22] = v5;
  v3[23] = v4;

  return MEMORY[0x2822009F8](sub_24E14BAC4, v5, v4);
}

uint64_t sub_24E14BAC4()
{
  OUTLINED_FUNCTION_8_9();
  v1 = [objc_opt_self() local];
  v0[24] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24E14BC04;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E57D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24E14BDB4;
  v0[13] = &block_descriptor_35_0;
  v0[14] = v2;
  [v1 loadPlayerContactForAvatarControllerWithImageSize:1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E14BC04()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_24E14BD0C, v2, v1);
}

uint64_t sub_24E14BD0C()
{
  OUTLINED_FUNCTION_8_9();
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);

  v3 = *(v0 + 144);

  *(v0 + 80) = *(v2 + 32);
  *(v0 + 144) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E57B8);
  sub_24E346B98();
  OUTLINED_FUNCTION_12_5();

  return v4();
}

uint64_t sub_24E14BDB4(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = a2;
  v7 = a3;

  return sub_24E32EA70(v5, v6, v7);
}

id sub_24E14BE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [objc_opt_self() photoPickerForGameCenterWithContact_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5708);
  sub_24E346168();
  [v4 setDelegate_];

  v5 = sub_24E347CB8();
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = GKGetLocalizedStringFromTableInBundle();

  v8 = sub_24E347CF8();
  v10 = v9;

  sub_24E14D064(v8, v10, v4);
  v11 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  return v11;
}

uint64_t sub_24E14BFB4()
{
  v1 = sub_24E345B68();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtCV12GameCenterUIP33_A3F53D5CE5AC6C06F2DAA78D55DA747516AvatarEditorView11Coordinator_parent + 8);

  if ((v5 & 1) == 0)
  {

    sub_24E348268();
    v6 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v7 = [objc_opt_self() local];
  sub_24E1AE8E4(v7);
}

void sub_24E14C138(void *a1)
{
  v1 = [a1 presentingViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_24E14C20C(void *a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = a2;
  v11[6] = v3;
  v11[7] = a1;
  v12 = a3;
  v13 = a2;
  v14 = v3;
  v15 = a1;
  sub_24DFC8700(0, 0, v9, &unk_24E37C688, v11);
}

uint64_t sub_24E14C310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = sub_24E343F88();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E14C40C, 0, 0);
}

uint64_t sub_24E14C40C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = [objc_opt_self() local];
  v0[26] = v3;
  v0[2] = v0;
  v0[3] = sub_24E14C558;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E02C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24DFECA10;
  v0[13] = &block_descriptor_53;
  v0[14] = v4;
  [v3 setPhotoFromCNContactImage:v2 pendingContact:v1 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E14C558()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_24E14C76C;
  }

  else
  {
    v2 = sub_24E14C668;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E14C668()
{
  OUTLINED_FUNCTION_8_9();
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);

  v4 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
  sub_24E348068();
  v5 = v2;
  v6 = v3;
  v7 = sub_24E348058();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;
  v8[5] = v6;
  sub_24DFC8700(0, 0, v1, &unk_24E37C698, v8);

  OUTLINED_FUNCTION_12_5();

  return v10();
}

uint64_t sub_24E14C76C()
{
  v2 = v0[26];
  v1 = v0[27];
  swift_willThrow();

  sub_24E343C98();
  v3 = v1;
  v4 = sub_24E343F78();
  v5 = sub_24E348258();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[27];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24DE53000, v4, v5, "Error saving the avatar: %@", v8, 0xCu);
    sub_24E101ED8(v9, &unk_27F1DF730);
    MEMORY[0x253040EE0](v9, -1, -1);
    MEMORY[0x253040EE0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[23] + 8))(v0[24], v0[22]);

  OUTLINED_FUNCTION_12_5();

  return v12();
}

uint64_t sub_24E14C904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_24E345B68();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_24E348068();
  v5[8] = sub_24E348058();
  v8 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E14C9F8, v8, v7);
}

uint64_t sub_24E14C9F8()
{
  v1 = v0[3];

  v2 = objc_opt_self();
  v3 = [v2 local];
  [v3 clearInMemoryCachedAvatars];

  LOBYTE(v1) = *(v1 + OBJC_IVAR____TtCV12GameCenterUIP33_A3F53D5CE5AC6C06F2DAA78D55DA747516AvatarEditorView11Coordinator_parent + 8);

  if ((v1 & 1) == 0)
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];

    sub_24E348268();
    v7 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v5 + 8))(v4, v6);
  }

  v8 = v0[4];
  sub_24E1AE8E4([v2 local]);

  v9 = [v8 presentingViewController];
  if (v9)
  {
    v10 = v9;
    [v9 dismissViewControllerAnimated:1 completion:0];
  }

  OUTLINED_FUNCTION_12_5();

  return v11();
}

id sub_24E14CC80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarEditorView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24E14CD34(uint64_t a1, char a2, void *a3)
{
  v6 = type metadata accessor for AvatarEditorView.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV12GameCenterUIP33_A3F53D5CE5AC6C06F2DAA78D55DA747516AvatarEditorView11Coordinator_parent];
  *v8 = a1;
  v8[8] = a2 & 1;
  *(v8 + 2) = a3;
  v11.receiver = v7;
  v11.super_class = v6;

  v9 = a3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_24E14CDF4@<X0>(void *a1@<X8>)
{
  result = sub_24E14CD34(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_24E14CE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E14D0C8();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24E14CE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E14D0C8();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24E14CEF8()
{
  sub_24E14D0C8();
  sub_24E3460C8();
  __break(1u);
}

unint64_t sub_24E14CF24()
{
  result = qword_27F1E5700;
  if (!qword_27F1E5700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5700);
  }

  return result;
}

uint64_t sub_24E14CF9C(uint64_t a1)
{
  v2 = sub_24E346AC8();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24E345878();
}

void sub_24E14D064(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24E347CB8();

  [a3 setAssignActionTitleOverride_];
}

unint64_t sub_24E14D0C8()
{
  result = qword_27F1E5710;
  if (!qword_27F1E5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5710);
  }

  return result;
}

uint64_t sub_24E14D11C()
{
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_18_22(v5);

  return sub_24E14C310(v6, v7, v8, v9, v2, v4, v3);
}

uint64_t sub_24E14D1F4()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_18_22(v3);

  return sub_24E14C904(v4, v5, v6, v7, v2);
}

uint64_t sub_24E14D2A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E14D2F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_24E14D390()
{
  result = qword_27F1E5740;
  if (!qword_27F1E5740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5748);
    sub_24E14D448();
    sub_24E1027E4(&qword_27F1E5770, &qword_27F1E5778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5740);
  }

  return result;
}

unint64_t sub_24E14D448()
{
  result = qword_27F1E5750;
  if (!qword_27F1E5750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5758);
    sub_24E140A14();
    sub_24E1027E4(&qword_27F1E5760, &qword_27F1E5768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5750);
  }

  return result;
}

uint64_t objectdestroy_17Tm()
{

  OUTLINED_FUNCTION_6_55();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24E14D55C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_23_20(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E14D5DC()
{
  result = qword_27F1E5798;
  if (!qword_27F1E5798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5780);
    sub_24E1027E4(&qword_27F1E57A0, &unk_27F1E57A8);
    sub_24E1027E4(&qword_27F1E0160, &unk_27F1E0168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5798);
  }

  return result;
}

unint64_t sub_24E14D6C0()
{
  result = qword_27F1E57B0;
  if (!qword_27F1E57B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5788);
    sub_24E14CF24();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DE230);
    sub_24E1027E4(&qword_27F1E2088, &qword_27F1DE230);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E57B0);
  }

  return result;
}

uint64_t sub_24E14D7C4()
{
  OUTLINED_FUNCTION_8_9();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E069390;

  return sub_24E14BA2C(v2, v3, v0 + 32);
}

uint64_t sub_24E14D864(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E14D8AC()
{
  result = qword_27F1E57E0;
  if (!qword_27F1E57E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF658);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF638);
    sub_24DFA9774();
    swift_getOpaqueTypeConformance2();
    sub_24E1027E4(&qword_27F1E57E8, &qword_27F1DF660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E57E0);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_0_109(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  *(a1 + 64) = *(v1 + 48);
  return result;
}

char *sub_24E14D9E8(double a1, double a2, double a3, double a4)
{
  v6 = v4;
  v11 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_16();
  v15 = OBJC_IVAR____TtC12GameCenterUI37OnboardingKitButtonCollectionViewCell_button;
  type metadata accessor for DynamicTypeButton();
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_20_2();
    swift_once();
  }

  v16 = type metadata accessor for PlayerCardTheme();
  v17 = __swift_project_value_buffer(v16, qword_27F20BF00);
  (*(v13 + 16))(v5, v17 + *(v16 + 28), v11);
  *&v6[v15] = sub_24E28C8D0(v5);
  v24.receiver = v6;
  v24.super_class = type metadata accessor for OnboardingKitButtonCollectionViewCell();
  v18 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC12GameCenterUI37OnboardingKitButtonCollectionViewCell_button;
  v20 = *&v18[OBJC_IVAR____TtC12GameCenterUI37OnboardingKitButtonCollectionViewCell_button];
  v21 = v18;
  [v20 setContentHorizontalAlignment_];
  v22 = [v21 contentView];
  [v22 addSubview_];

  return v21;
}

void sub_24E14DBD0()
{
  v2 = v0;
  v3 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_16();
  v7 = OBJC_IVAR____TtC12GameCenterUI37OnboardingKitButtonCollectionViewCell_button;
  type metadata accessor for DynamicTypeButton();
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_20_2();
    swift_once();
  }

  v8 = type metadata accessor for PlayerCardTheme();
  v9 = __swift_project_value_buffer(v8, qword_27F20BF00);
  (*(v5 + 16))(v1, v9 + *(v8 + 28), v3);
  *(v2 + v7) = sub_24E28C8D0(v1);
  sub_24E348AE8();
  __break(1u);
}

double sub_24E14DD50(uint64_t a1, double a2, double a3)
{
  v7 = *&v3[OBJC_IVAR____TtC12GameCenterUI37OnboardingKitButtonCollectionViewCell_button];
  [v3 layoutMargins];
  [v7 measurementsWithFitting:a1 in:{a2 - v8 - v9, a3 - v10 - v11}];
  v13 = v12;
  [v3 layoutMargins];
  return v13 + v14 + v15;
}

id sub_24E14DEEC()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for OnboardingKitButtonCollectionViewCell();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI37OnboardingKitButtonCollectionViewCell_button];
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  [v0 layoutMargins];
  return [v1 setFrame_];
}

id sub_24E14E044(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5830);
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  type metadata accessor for OnboardingKitButtonData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v39 - v15;
  [objc_msgSend(a3 container];
  swift_unknownObjectRelease();
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_20_2();
    swift_once();
  }

  v17 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v17, qword_27F20BF00);
  v18 = [a3 traitCollection];
  sub_24E336638();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  sub_24E14F1F4(v16, v12);
  sub_24E14F1AC(&qword_27F1E3248, 255, type metadata accessor for OnboardingKitButtonData);
  sub_24E347158();
  v19 = sub_24E14E558(v9, a3);
  v21 = v20;
  (*(v6 + 8))(v9, v4, v19);
  v22 = objc_opt_self();
  v23 = [v22 fractionalWidthDimension_];
  v24 = [v22 absoluteDimension_];
  v25 = objc_opt_self();
  v26 = [v25 sizeWithWidthDimension:v23 heightDimension:v24];

  sub_24DF88A8C(0, &qword_27F1EA590);
  v27 = v26;
  v28 = sub_24E14E72C(v27);
  v29 = [v22 fractionalWidthDimension_];
  v30 = [v27 heightDimension];
  v31 = [v25 sizeWithWidthDimension:v29 heightDimension:v30];

  v32 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_24E369990;
  *(v33 + 32) = v28;
  v34 = v28;
  v35 = sub_24E347EE8();

  v36 = [v32 verticalGroupWithLayoutSize:v31 subitems:v35];

  v37 = [objc_opt_self() sectionWithGroup_];
  sub_24E14F258(v16);
  return v37;
}

double sub_24E14E558(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5830);
  sub_24E347128();

  sub_24DF88A8C(0, &qword_27F1DEE28);
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_20_2();
    swift_once();
  }

  v3 = type metadata accessor for PlayerCardTheme();
  v4 = __swift_project_value_buffer(v3, qword_27F20BF00);
  v5 = *(v3 + 28);
  swift_getObjectType();
  v6 = [a2 traitCollection];
  MEMORY[0x25303F0C0](v4 + v5, v6);

  sub_24E344398();
  sub_24E3443A8();
  sub_24E344868();
  swift_allocObject();
  sub_24E344858();
  sub_24DFC1764();
  sub_24E3440D8();
  v8 = v7;

  swift_unknownObjectRelease();
  return v8;
}

id sub_24E14E72C(void *a1)
{
  sub_24DF88A8C(0, &qword_27F1E5838);
  v2 = sub_24E347EE8();

  v3 = [swift_getObjCClassFromMetadata() itemWithLayoutSize:a1 supplementaryItems:v2];

  return v3;
}

id sub_24E14E7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5830);
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = v22 - v13;
  v15 = *&v4[OBJC_IVAR____TtC12GameCenterUI37OnboardingKitButtonCollectionViewCell_button];
  swift_getKeyPath();
  sub_24E347128();

  sub_24E2BE6B4(v22[0], v22[1], 0, v15);
  v16 = [v15 titleLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setNumberOfLines_];
  }

  sub_24DF88A8C(0, &qword_27F1DFB08);
  (*(v9 + 16))(v14, a1, v7);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  (*(v9 + 32))(v19 + v18, v14, v7);
  *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  v20 = sub_24E348658();
  [v15 addAction:v20 forControlEvents:0x2000];

  return [v4 setNeedsLayout];
}

uint64_t sub_24E14EA04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v11 - v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5830);
  sub_24E347128();

  if (!v12)
  {
    v8 = &qword_27F1DEE90;
    v9 = &v11;
    return sub_24DF8BFF4(v9, v8);
  }

  sub_24DE56CE8(&v11, v13);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v8 = &unk_27F1EAC90;
    v9 = v6;
    return sub_24DF8BFF4(v9, v8);
  }

  (*(v1 + 104))(v3, *MEMORY[0x277D21E18], v0);
  sub_24E3473B8();

  (*(v1 + 8))(v3, v0);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return (*(*(v7 - 8) + 8))(v6, v7);
}

double sub_24E14EC74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_16();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  sub_24E120A58(a2, &v21 - v14);
  sub_24E120A58(a3, &v15[*(v13 + 56)]);
  if (qword_27F1DDC48 != -1)
  {
    OUTLINED_FUNCTION_2_67();
  }

  v16 = sub_24E3444F8();
  __swift_project_value_buffer(v16, qword_27F20B4E8);
  v17 = [a4 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();
  v19 = v18;

  (*(v10 + 8))(v4, v8);
  sub_24DF8BFF4(v15, &unk_27F1E1CA0);
  return v19;
}

double sub_24E14EE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  sub_24E120A58(a2, &v14 - v7);
  sub_24E120A58(a3, &v8[*(v6 + 56)]);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  v10 = 0.0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    if (qword_27F1DDC48 != -1)
    {
      OUTLINED_FUNCTION_2_67();
    }

    v11 = sub_24E3444F8();
    __swift_project_value_buffer(v11, qword_27F20B4E8);
    sub_24E3444E8();
    v10 = v12;
  }

  sub_24DF8BFF4(v8, &unk_27F1E1CA0);
  return v10;
}

id sub_24E14EF70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingKitButtonCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E14F010()
{
  swift_getWitnessTable();

  return sub_24E071EFC();
}

uint64_t sub_24E14F064(uint64_t a1, uint64_t a2)
{
  result = sub_24E14F1AC(&qword_27F1E5820, a2, type metadata accessor for OnboardingKitButtonCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E14F154(uint64_t a1, uint64_t a2)
{
  result = sub_24E14F1AC(&qword_27F1E5828, a2, type metadata accessor for OnboardingKitButtonCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E14F1AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E14F1F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingKitButtonData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E14F258(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingKitButtonData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E14F2B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5830);

  return sub_24E14EA04();
}

uint64_t OUTLINED_FUNCTION_2_67()
{

  return swift_once();
}

id sub_24E14F37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC12GameCenterUI24SignInControllerDelegate_settings] = a1;
  v6 = &v5[OBJC_IVAR____TtC12GameCenterUI24SignInControllerDelegate_showOnboardingUI];
  *v6 = a2;
  *(v6 + 1) = a3;
  v7 = &v5[OBJC_IVAR____TtC12GameCenterUI24SignInControllerDelegate_dismiss];
  *v7 = a4;
  *(v7 + 1) = a5;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for SignInControllerDelegate();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_24E14F3DC(void *a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a3;
  v14[4] = sub_24E14FCC0;
  v14[5] = v7;
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_6_29();
  v14[2] = v8;
  v14[3] = &block_descriptor_15_0;
  v9 = _Block_copy(v14);
  v10 = a3;

  [a1 dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);
  v11 = *(v3 + OBJC_IVAR____TtC12GameCenterUI24SignInControllerDelegate_dismiss);

  v11(v12);
}

void sub_24E14F4EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_24E343F88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a2)
    {
      sub_24E343C98();
      v12 = sub_24E343F78();
      v13 = sub_24E348258();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_24DE53000, v12, v13, "Cannot proceed due to sign in error", v14, 2u);
        MEMORY[0x253040EE0](v14, -1, -1);
      }

      (*(v4 + 8))(v6, v3);

      sub_24DFECE04();
    }

    else
    {
      v18 = objc_opt_self();
      v19 = [v18 local];
      v20 = [v19 shouldShowAnyOnboardingScreen];

      if (v20)
      {
        v21 = *&v11[OBJC_IVAR____TtC12GameCenterUI24SignInControllerDelegate_showOnboardingUI];

        v21(v22);
      }

      else
      {

        v23 = [v18 local];
        sub_24E245A0C();

        sub_24DFECE04();

        v24 = [v18 local];
        sub_24DFECFDC();
      }
    }
  }

  else
  {
    sub_24E343C98();
    v15 = sub_24E343F78();
    v16 = sub_24E348258();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24DE53000, v15, v16, "Cannot proceed after sign in without settings.", v17, 2u);
      MEMORY[0x253040EE0](v17, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
  }
}

uint64_t sub_24E14F894(void *a1)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_24E14FCA0;
  v9[5] = v3;
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_6_29();
  v9[2] = v4;
  v9[3] = &block_descriptor_54;
  v5 = _Block_copy(v9);

  [a1 dismissViewControllerAnimated:1 completion:v5];
  _Block_release(v5);
  v6 = *(v1 + OBJC_IVAR____TtC12GameCenterUI24SignInControllerDelegate_dismiss);

  v6(v7);
}

uint64_t sub_24E14F974()
{
  v0 = sub_24E343F88();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = objc_opt_self();

    v7 = [v6 local];
    sub_24E245A0C();

    sub_24DFECE04();
  }

  else
  {
    sub_24E343C98();
    v9 = sub_24E343F78();
    v10 = sub_24E348258();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24DE53000, v9, v10, "Cannot proceed after cancelling sign in without settings.", v11, 2u);
      MEMORY[0x253040EE0](v11, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }
}

id sub_24E14FBE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInControllerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_24E14FCD0(double a1, double a2, double a3, double a4)
{
  OUTLINED_FUNCTION_0_110(OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_configuration);
  v9 = OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_backgroundView;
  type metadata accessor for BackgroundView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_topSeparator;
  type metadata accessor for SeparatorView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v10] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_bottomSeparator;
  *&v4[v12] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SectionBackgroundView();
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  [v13 setClipsToBounds_];
  [v13 setBackgroundColor_];
  [v13 addSubview_];
  [v13 addSubview_];
  [v13 addSubview_];

  return v13;
}

void sub_24E14FE68()
{
  OUTLINED_FUNCTION_0_110(OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_configuration);
  v1 = OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_backgroundView;
  type metadata accessor for BackgroundView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_topSeparator;
  type metadata accessor for SeparatorView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v2) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v4 = OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_bottomSeparator;
  *(v0 + v4) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  sub_24E348AE8();
  __break(1u);
}

id sub_24E14FF68(const void *a1)
{
  memcpy(v4, (v1 + OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_configuration), 0x89uLL);
  memcpy((v1 + OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_configuration), a1, 0x89uLL);
  sub_24E1505E8(v4);
  return sub_24E150124();
}

id sub_24E14FFCC()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SectionBackgroundView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_backgroundView];
  OUTLINED_FUNCTION_1_88();
  [v2 setFrame_];
  v3 = *&v1[OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_topSeparator];
  OUTLINED_FUNCTION_1_88();
  sub_24E1EDFCC(v4);
  OUTLINED_FUNCTION_1_88();
  OUTLINED_FUNCTION_1_88();
  OUTLINED_FUNCTION_2_68();
  [v3 setFrame_];
  v5 = *&v1[OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_bottomSeparator];
  OUTLINED_FUNCTION_1_88();
  sub_24E1EDFCC(v6);
  OUTLINED_FUNCTION_1_88();
  CGRectGetMinX(v9);
  OUTLINED_FUNCTION_1_88();
  CGRectGetMaxY(v10);
  OUTLINED_FUNCTION_1_88();
  OUTLINED_FUNCTION_2_68();
  return [v5 setFrame_];
}

id sub_24E150124()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_backgroundView];
  v3 = &v0[OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_configuration];
  memcpy(__dst, &v0[OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_configuration], 0x89uLL);
  v16[0] = __dst[0];
  v16[1] = __dst[1];
  v16[2] = __dst[2];
  v17 = __dst[3];
  sub_24E15063C(__dst, &v15);
  sub_24DFEB8F4(v16);
  v4 = [v2 layer];
  [v4 setMaskedCorners_];

  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v5, qword_27F20BF00);
  v6 = [v1 traitCollection];
  v7 = sub_24E336558();

  [v2 _setCornerRadius_];
  v8 = v3[96];
  v9 = *&v1[OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_topSeparator] + OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style;
  v10 = *(v3 + 5);
  *v9 = *(v3 + 4);
  *(v9 + 16) = v10;
  *(v9 + 32) = v8;
  sub_24E1EE11C();
  v11 = v3[136];
  v12 = *&v1[OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_bottomSeparator] + OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style;
  v13 = *(v3 + 120);
  *v12 = *(v3 + 104);
  *(v12 + 16) = v13;
  *(v12 + 32) = v11;
  sub_24E1EE11C();
  return [v1 setNeedsLayout];
}

id sub_24E1502E8(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SectionBackgroundView();
  objc_msgSendSuper2(&v4, sel_traitCollectionDidChange_, a1);
  return sub_24E150124();
}

id sub_24E15039C(void *__src)
{
  memcpy(__dst, __src, 0x89uLL);
  sub_24E15063C(__dst, v3);
  return sub_24E14FF68(__src);
}

id sub_24E1503E8()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for SectionBackgroundView();
  objc_msgSendSuper2(&v13, sel_prepareForReuse);
  v12 = 1;
  v11 = 1;
  memset(v2, 0, sizeof(v2));
  v3 = 3;
  v4 = 0u;
  v5 = 0u;
  v6 = 0;
  v7 = 1;
  v8 = 0u;
  v9 = 0u;
  v10 = 1;
  return sub_24E14FF68(v2);
}

void sub_24E1504AC()
{
  memcpy(v1, (v0 + OBJC_IVAR____TtC12GameCenterUI21SectionBackgroundView_configuration), 0x89uLL);
  sub_24E1505E8(v1);
}

id sub_24E150518()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double OUTLINED_FUNCTION_0_110@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 3;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  *(v2 + 96) = 1;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 1;
  return result;
}

id OUTLINED_FUNCTION_1_88()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_2_68()
{

  return sub_24E348508();
}

BOOL static GKMultiplayerViewStatus.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_53;
      }

      if (!v3)
      {

        v32 = 1;
        v70 = OUTLINED_FUNCTION_2_69();
        v72 = OUTLINED_FUNCTION_3_72(v70, v71, 1u);
        v74 = OUTLINED_FUNCTION_3_72(v72, v73, 1u);
        sub_24DF889CC(v74, v75, 1u);
        v76 = OUTLINED_FUNCTION_2_69();
        sub_24DF889CC(v76, v77, 1u);
        if (!v6)
        {
          return v32;
        }

LABEL_66:
        v58 = OUTLINED_FUNCTION_2_69();
        v60 = 1;
        goto LABEL_54;
      }

      if (!v6)
      {
        v94 = OUTLINED_FUNCTION_4_59();
        sub_24DF889B4(v94, v95, 1u);
        v96 = OUTLINED_FUNCTION_4_59();
        v98 = OUTLINED_FUNCTION_0_111(v96, v97, 1u);
        v100 = OUTLINED_FUNCTION_0_111(v98, v99, 1u);
        sub_24DF889CC(v100, v101, 1u);
        goto LABEL_66;
      }

      if (v2 == v5 && v3 == v6)
      {
        v32 = 1;
        v108 = OUTLINED_FUNCTION_60();
        v110 = OUTLINED_FUNCTION_0_111(v108, v109, 1u);
        v112 = OUTLINED_FUNCTION_0_111(v110, v111, 1u);
        sub_24DF889CC(v112, v113, 1u);
        v33 = OUTLINED_FUNCTION_60();
        v35 = 1;
LABEL_69:
        sub_24DF889CC(v33, v34, v35);
      }

      else
      {
        OUTLINED_FUNCTION_60();
        v37 = OUTLINED_FUNCTION_5_62();
        v32 = 1;
        v38 = OUTLINED_FUNCTION_2_69();
        v40 = OUTLINED_FUNCTION_0_111(v38, v39, 1u);
        v42 = OUTLINED_FUNCTION_0_111(v40, v41, 1u);
        sub_24DF889CC(v42, v43, 1u);
        v44 = OUTLINED_FUNCTION_2_69();
        sub_24DF889CC(v44, v45, 1u);
        if ((v37 & 1) == 0)
        {
          return 0;
        }
      }

      return v32;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_53;
      }

      if (v3)
      {
        if (v6)
        {
          v20 = *a1;
          if (v2 != v5 || v3 != v6)
          {
            v10 = OUTLINED_FUNCTION_5_62();
            v22 = OUTLINED_FUNCTION_2_69();
            v24 = OUTLINED_FUNCTION_0_111(v22, v23, 2u);
            v26 = OUTLINED_FUNCTION_0_111(v24, v25, 2u);
            sub_24DF889CC(v26, v27, 2u);
            v17 = OUTLINED_FUNCTION_2_69();
            v19 = 2;
            goto LABEL_18;
          }

          v102 = OUTLINED_FUNCTION_0_111(v20, v3, 2u);
          v104 = OUTLINED_FUNCTION_0_111(v102, v103, 2u);
          sub_24DF889CC(v104, v105, 2u);
          v49 = OUTLINED_FUNCTION_60();
          v107 = 2;
          goto LABEL_75;
        }

        v86 = OUTLINED_FUNCTION_4_59();
        sub_24DF889B4(v86, v87, 2u);
        v88 = OUTLINED_FUNCTION_4_59();
        v90 = OUTLINED_FUNCTION_0_111(v88, v89, 2u);
        v92 = OUTLINED_FUNCTION_0_111(v90, v91, 2u);
        sub_24DF889CC(v92, v93, 2u);
      }

      else
      {

        v62 = OUTLINED_FUNCTION_2_69();
        v64 = OUTLINED_FUNCTION_3_72(v62, v63, 2u);
        v66 = OUTLINED_FUNCTION_3_72(v64, v65, 2u);
        sub_24DF889CC(v66, v67, 2u);
        v68 = OUTLINED_FUNCTION_2_69();
        sub_24DF889CC(v68, v69, 2u);
        if (!v6)
        {
          return 1;
        }
      }

      v58 = OUTLINED_FUNCTION_2_69();
      v60 = 2;
      goto LABEL_54;
    case 3u:
      if (v2 | v3)
      {
        if (!(v2 ^ 1 | v3))
        {
          if (v7 == 3 && v5 == 1 && v6 == 0)
          {
            v30 = OUTLINED_FUNCTION_60();
            sub_24DF889CC(v30, v31, 3u);
            v32 = 1;
            v33 = 1;
            v34 = 0;
            v35 = 3;
            goto LABEL_69;
          }

          goto LABEL_53;
        }

        if (v7 != 3 || v5 != 2 || v6 != 0)
        {
LABEL_53:
          v52 = OUTLINED_FUNCTION_2_69();
          v54 = OUTLINED_FUNCTION_0_111(v52, v53, v7);
          v56 = OUTLINED_FUNCTION_0_111(v54, v55, v4);
          sub_24DF889CC(v56, v57, v4);
          v58 = OUTLINED_FUNCTION_2_69();
          v60 = v7;
          goto LABEL_54;
        }

        v122 = OUTLINED_FUNCTION_60();
        sub_24DF889CC(v122, v123, 3u);
        v49 = 2;
      }

      else
      {
        if (v7 != 3 || (v6 | v5) != 0)
        {
          goto LABEL_53;
        }

        v47 = OUTLINED_FUNCTION_60();
        sub_24DF889CC(v47, v48, 3u);
        v49 = 0;
      }

      v106 = 0;
      v107 = 3;
      goto LABEL_75;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_53;
      }

      if (v3)
      {
        if (v6)
        {
          v8 = *a1;
          if (v2 == v5 && v3 == v6)
          {
            v124 = OUTLINED_FUNCTION_0_111(v8, v3, 0);
            v126 = OUTLINED_FUNCTION_0_111(v124, v125, 0);
            sub_24DF889CC(v126, v127, 0);
            v49 = OUTLINED_FUNCTION_60();
            v107 = 0;
LABEL_75:
            sub_24DF889CC(v49, v106, v107);
            return 1;
          }

          v10 = OUTLINED_FUNCTION_5_62();
          v11 = OUTLINED_FUNCTION_2_69();
          v13 = OUTLINED_FUNCTION_0_111(v11, v12, 0);
          v15 = OUTLINED_FUNCTION_0_111(v13, v14, 0);
          sub_24DF889CC(v15, v16, 0);
          v17 = OUTLINED_FUNCTION_2_69();
          v19 = 0;
LABEL_18:
          sub_24DF889CC(v17, v18, v19);
          return (v10 & 1) != 0;
        }

        v114 = OUTLINED_FUNCTION_4_59();
        sub_24DF889B4(v114, v115, 0);
        v116 = OUTLINED_FUNCTION_4_59();
        v118 = OUTLINED_FUNCTION_0_111(v116, v117, 0);
        v120 = OUTLINED_FUNCTION_0_111(v118, v119, 0);
        sub_24DF889CC(v120, v121, 0);
      }

      else
      {

        v78 = OUTLINED_FUNCTION_2_69();
        v80 = OUTLINED_FUNCTION_3_72(v78, v79, 0);
        v82 = OUTLINED_FUNCTION_3_72(v80, v81, 0);
        sub_24DF889CC(v82, v83, 0);
        v84 = OUTLINED_FUNCTION_2_69();
        sub_24DF889CC(v84, v85, 0);
        if (!v6)
        {
          return 1;
        }
      }

      v58 = OUTLINED_FUNCTION_2_69();
      v60 = 0;
LABEL_54:
      sub_24DF889CC(v58, v59, v60);
      return 0;
  }
}

uint64_t sub_24E150B28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_24E150B68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_24E150BAC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_62()
{

  return sub_24E348C08();
}

void sub_24E150D04(uint64_t a1, void *a2)
{
  if (a2[2] && *(a1 + 16))
  {
    v2 = a2[9];
    v40 = a2[8];
    v3 = a2[10];
    v4 = a2[11];
    v5 = *(a1 + 80);
    v41 = objc_allocWithZone(MEMORY[0x277D0C060]);
    v6 = v3;

    v7 = v5;

    v8 = [v41 init];
    v9 = sub_24E347CB8();
    [v8 setBundleIdentifier_];

    v10 = HIBYTE(v4) & 0xF;
    v11 = v6 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v12 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {
      goto LABEL_73;
    }

    if ((v4 & 0x1000000000000000) != 0)
    {

      sub_24E00F290(v6, v4, 10);
      v32 = v31;

      if (v32)
      {
        goto LABEL_73;
      }

      goto LABEL_75;
    }

    if ((v4 & 0x2000000000000000) != 0)
    {
      if (v6 == 43)
      {
        if (v10)
        {
          if (v10 != 1)
          {
            OUTLINED_FUNCTION_3_73();
            while (1)
            {
              OUTLINED_FUNCTION_0_49();
              if (!v16 & v15)
              {
                break;
              }

              OUTLINED_FUNCTION_1_39();
              if (!v16 || __OFADD__(v25, v24))
              {
                break;
              }

              OUTLINED_FUNCTION_4_25();
              if (v16)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

        goto LABEL_81;
      }

      if (v6 != 45)
      {
        if (v10)
        {
          while (1)
          {
            OUTLINED_FUNCTION_0_49();
            if (!v16 & v15)
            {
              break;
            }

            OUTLINED_FUNCTION_1_39();
            if (!v16 || __OFADD__(v30, v29))
            {
              break;
            }

            OUTLINED_FUNCTION_4_25();
            if (v16)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v10)
      {
        if (v10 != 1)
        {
          OUTLINED_FUNCTION_3_73();
          while (1)
          {
            OUTLINED_FUNCTION_0_49();
            if (!v16 & v15)
            {
              break;
            }

            OUTLINED_FUNCTION_1_39();
            if (!v16 || __OFSUB__(v21, v20))
            {
              break;
            }

            OUTLINED_FUNCTION_4_25();
            if (v16)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        v13 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v13 = sub_24E348A28();
      }

      v14 = *v13;
      if (v14 == 43)
      {
        if (v11 >= 1)
        {
          if (v11 != 1)
          {
            if (v13)
            {
              while (1)
              {
                OUTLINED_FUNCTION_0_49();
                if (!v16 & v15)
                {
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_1_39();
                if (!v16 || __OFADD__(v23, v22))
                {
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_4_25();
                if (v16)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_71;
        }

        goto LABEL_80;
      }

      if (v14 != 45)
      {
        if (v11)
        {
          v26 = 0;
          if (v13)
          {
            while (1)
            {
              v27 = *v13 - 48;
              if (v27 > 9)
              {
                goto LABEL_71;
              }

              v28 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_71;
              }

              v26 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                goto LABEL_71;
              }

              ++v13;
              if (!--v11)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_71:
        v19 = 1;
LABEL_72:
        if (v19)
        {
LABEL_73:

LABEL_76:
          v34 = sub_24E347CB8();
          [v8 setName_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFF80);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_24E367D20;
          v36 = MEMORY[0x277D837D0];
          sub_24E348918();
          *(inited + 96) = v36;
          *(inited + 72) = v40;
          *(inited + 80) = v2;

          v37 = sub_24E347C28();
          sub_24E151480(v37, v8);
          v38 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
          v39 = [objc_allocWithZone(MEMORY[0x277D0C048]) initWithInternalRepresentation_];
          [objc_opt_self() gameRecordForPlayer:v38 game:v39];

          return;
        }

LABEL_75:
        sub_24DF97DD4();
        v33 = sub_24E3485F8();
        [v8 setAdamID_];

        goto LABEL_76;
      }

      if (v11 >= 1)
      {
        if (v11 != 1)
        {
          if (v13)
          {
            while (1)
            {
              OUTLINED_FUNCTION_0_49();
              if (!v16 & v15)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_1_39();
              if (!v16 || __OFSUB__(v18, v17))
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_4_25();
              if (v16)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_62:
          v19 = 0;
          goto LABEL_72;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
  }
}

uint64_t sub_24E151234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ActivityFeedRelationshipAchievement();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a4 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_24E12F080(0, v9, 0);
    v10 = v20;
    v11 = a4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    do
    {
      sub_24DF911B8(v11, v8);
      v14 = *v8;
      v13 = v8[1];

      sub_24DF9121C(v8);
      v20 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_24E12F080((v15 > 1), v16 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_24E1513A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = [objc_opt_self() local];
  v4 = [v3 internal];

  v5 = [v4 playerID];
  v6 = sub_24E347CF8();
  v8 = v7;

  if (v1 == v6 && v2 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24E348C08();
  }

  return v10 & 1;
}

void sub_24E151480(uint64_t a1, void *a2)
{
  v3 = sub_24E347BE8();

  [a2 setIcons_];
}

uint64_t type metadata accessor for ActivityFeedRelationshipAchievement()
{
  result = qword_27F1E5878;
  if (!qword_27F1E5878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E15154C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_24E15158C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_24E151620()
{
  result = sub_24E343368();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E1516B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24E1516F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Achievement.status.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_24E09B300(v2, v3, v4);
}

uint64_t Achievement.lastReportedDate.getter()
{
  OUTLINED_FUNCTION_12_28();
  v2 = type metadata accessor for Achievement();
  return sub_24DF95B98(v1 + *(v2 + 32), v0, &unk_27F1E5890);
}

uint64_t type metadata accessor for Achievement()
{
  result = qword_280BE0A78;
  if (!qword_280BE0A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Achievement.segue.getter()
{
  OUTLINED_FUNCTION_12_28();
  v2 = type metadata accessor for Achievement();
  return sub_24DF95B98(v1 + *(v2 + 36), v0, &qword_27F1DEE90);
}

uint64_t Achievement.contextualMenu.getter()
{
  OUTLINED_FUNCTION_12_28();
  v2 = (v1 + *(type metadata accessor for Achievement() + 40));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;

  return sub_24E1519C0(v3, v4, v5);
}

uint64_t sub_24E1519C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 Achievement.contextualMenu.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = (v1 + *(type metadata accessor for Achievement() + 40));
  sub_24E0735B0(*v3, v3[1], v3[2]);
  result = v5;
  *v3 = v5;
  v3[2] = v2;
  return result;
}

uint64_t Achievement.highlightAchievement.setter(char a1)
{
  result = type metadata accessor for Achievement();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t Achievement.releaseStateIcon.getter()
{
  OUTLINED_FUNCTION_12_28();
  v2 = (v1 + *(type metadata accessor for Achievement() + 48));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;

  return sub_24E151B74(v3, v4);
}

uint64_t sub_24E151B74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 Achievement.releaseStateIcon.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_14_25() + 48);
  sub_24E151BF4(*v2, *(v2 + 8));
  result = *v0;
  v4 = *(v0 + 16);
  *v2 = *v0;
  *(v2 + 16) = v4;
  return result;
}

uint64_t sub_24E151BF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t Achievement.friendsWhoHaveThis.getter()
{
  type metadata accessor for Achievement();
}

uint64_t Achievement.friendsWhoHaveThis.setter()
{
  v2 = *(OUTLINED_FUNCTION_14_25() + 52);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Achievement.impressionMetrics.getter()
{
  OUTLINED_FUNCTION_12_28();
  v2 = type metadata accessor for Achievement();
  return sub_24DF95B98(v1 + *(v2 + 56), v0, &qword_27F1E58A0);
}

__n128 Achievement.init(id:title:subtitle:status:releaseStateIcon:friendsWhoHaveThis:lastReportedDate:contextMenu:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v28 = *a6;
  v17 = *(a6 + 2);
  v18 = OUTLINED_FUNCTION_17_27();
  v19 = a9 + v18[9];
  *(v19 + 32) = 0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  v29 = OUTLINED_FUNCTION_8_47(v18, 0)[13];
  sub_24E3474B8();
  v26 = a7[1];
  v27 = *a7;
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v24;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = v28;
  *(a9 + 88) = v17;
  sub_24E151BF4(*v11, *(v11 + 8));
  *v11 = v27;
  *(v11 + 16) = v26;
  sub_24E151F10(a10, a9 + v18[8]);
  sub_24E0735B0(*v10, v10[1], v10[2]);
  result = v33;
  *v10 = v33;
  v10[2] = v32;
  *(a9 + v29) = a8;
  return result;
}

uint64_t sub_24E151F10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 Achievement.init(id:title:subtitle:status:lastReportedDate:contextMenu:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>)
{
  v25 = *a6;
  v13 = *(a6 + 2);
  v29 = *a8;
  v28 = a8[1].n128_i64[0];
  v14 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v14;
  *(a9 + 32) = *(a1 + 32);
  v15 = type metadata accessor for Achievement();
  v16 = a9 + v15[9];
  *(v16 + 32) = 0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v17 = (a9 + v15[10]);
  *v17 = 0;
  v17[1] = 0;
  v17[2] = 0;
  *(a9 + v15[11]) = 0;
  v18 = a9 + v15[12];
  *v18 = 0u;
  *(v18 + 16) = 0u;
  v19 = v15[13];
  sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = v25;
  *(a9 + 88) = v13;
  sub_24E151BF4(*v18, *(v18 + 8));
  *v18 = 0u;
  *(v18 + 16) = 0u;
  sub_24E151F10(a7, a9 + v15[8]);
  sub_24E0735B0(*v17, v17[1], v17[2]);
  result = v29;
  *v17 = v29;
  v17[2] = v28;
  *(a9 + v19) = MEMORY[0x277D84F90];
  return result;
}

uint64_t Achievement.init(id:title:subtitle:status:releaseStateIcon:friendsWhoHaveThis:lastReportedDate:segue:contextMenu:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v31 = *a6;
  v15 = *(a6 + 2);
  v16 = OUTLINED_FUNCTION_17_27();
  v17 = a9 + *(v16 + 36);
  *&v18 = OUTLINED_FUNCTION_9_38();
  v20 = (a9 + v19);
  *v20 = 0;
  v20[1] = 0;
  v20[2] = 0;
  *(a9 + v21[11]) = 0;
  v22 = a9 + v21[12];
  *v22 = v18;
  *(v22 + 16) = v18;
  v33 = v21[13];
  sub_24E3474B8();
  v29 = a7[1];
  v30 = *a7;
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v27;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = v31;
  *(a9 + 88) = v15;
  sub_24E151BF4(*v22, *(v22 + 8));
  *v22 = v30;
  *(v22 + 16) = v29;
  sub_24E151F10(a10, a9 + *(v16 + 32));
  sub_24E0735B0(*v20, v20[1], v20[2]);
  *v20 = v37;
  v20[2] = v36;
  *(a9 + v33) = a8;
  return sub_24DF95BE4(a11, v17, &qword_27F1DEE90);
}

uint64_t Achievement.init(id:title:subtitle:status:lastReportedDate:segue:contextMenu:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10)
{
  v25 = *a6;
  v15 = *(a6 + 2);
  v30 = *a10;
  v29 = *(a10 + 2);
  v16 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v16;
  *(a9 + 32) = *(a1 + 32);
  v17 = type metadata accessor for Achievement();
  v18 = a9 + v17[9];
  *(v18 + 32) = 0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  v19 = OUTLINED_FUNCTION_8_47(v17, 0)[13];
  sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = v25;
  *(a9 + 88) = v15;
  sub_24E151BF4(*v11, *(v11 + 8));
  *v11 = 0u;
  *(v11 + 16) = 0u;
  sub_24E151F10(a7, a9 + v17[8]);
  sub_24E0735B0(*v10, v10[1], v10[2]);
  *v10 = v30;
  v10[2] = v29;
  *(a9 + v19) = MEMORY[0x277D84F90];
  return sub_24DF95BE4(a8, v18, &qword_27F1DEE90);
}

BOOL static Achievement.Status.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!(v4 >> 62))
  {
    if (v7 >> 62)
    {
      goto LABEL_37;
    }

    v23 = OUTLINED_FUNCTION_4_60();
    sub_24E154E88(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_2_70();
    sub_24E154E88(v26, v27, v28);
    return v3 == v6;
  }

  if (v4 >> 62 == 1)
  {
    if (v7 >> 62 == 1)
    {
      v8 = *&v3 == *&v6 && v2 == v5;
      if (v8 || (sub_24E348C08() & 1) != 0)
      {
        type metadata accessor for Artwork();
        v9 = OUTLINED_FUNCTION_2_70();
        sub_24E09B300(v9, v10, v11);
        v12 = OUTLINED_FUNCTION_4_60();
        sub_24E09B300(v12, v13, v14);
        v15 = static Artwork.== infix(_:_:)(v4 & 0x3FFFFFFFFFFFFFFFLL, v7 & 0x3FFFFFFFFFFFFFFFLL);
        v16 = OUTLINED_FUNCTION_4_60();
        sub_24E154E88(v16, v17, v18);
        v19 = OUTLINED_FUNCTION_2_70();
        sub_24E154E88(v19, v20, v21);
        return v15 & 1;
      }

      v46 = OUTLINED_FUNCTION_2_70();
      sub_24E09B300(v46, v47, v48);
      v37 = OUTLINED_FUNCTION_4_60();
      goto LABEL_38;
    }

LABEL_37:
    v37 = OUTLINED_FUNCTION_2_70();
LABEL_38:
    sub_24E09B300(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_4_60();
    sub_24E154E88(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_2_70();
    sub_24E154E88(v43, v44, v45);
    return 0;
  }

  v29 = v7 >> 62;
  if (v2 | *&v3)
  {
    v30 = 0;
  }

  else
  {
    v30 = v4 == 0x8000000000000000;
  }

  if (v30)
  {
    if (v29 != 2 || (v5 | *&v6) != 0 || v7 != 0x8000000000000000)
    {
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_29_14(0);
    OUTLINED_FUNCTION_29_14(0);
    return 1;
  }

  if (v29 != 2 || *&v6 != 1 || v5 != 0 || v7 != 0x8000000000000000)
  {
    goto LABEL_37;
  }

  v34 = 1;
  OUTLINED_FUNCTION_29_14(1);
  OUTLINED_FUNCTION_29_14(1);
  return v34;
}

uint64_t Achievement.description.getter()
{
  sub_24E348998();
  MEMORY[0x25303E950](0x6D65766569686361, 0xEF203A4449746E65);
  v1 = sub_24E3488D8();
  MEMORY[0x25303E950](v1);

  OUTLINED_FUNCTION_27_13();
  MEMORY[0x25303E950](*(v0 + 40), *(v0 + 48));
  OUTLINED_FUNCTION_27_13();
  sub_24E348AA8();
  MEMORY[0x25303E950](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_24E152638@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  LODWORD(v240) = a1;
  v244 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_11(&v222 - v7);
  v247 = sub_24E343368();
  v234 = *(v247 - 8);
  MEMORY[0x28223BE20](v247 - 8);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v9 - v8);
  v232 = sub_24E343428();
  OUTLINED_FUNCTION_0_14();
  v231 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v13 - v12);
  v14 = sub_24E347458();
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v16 - v15);
  v228 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v227 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v20 - v19);
  v21 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v238 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v24);
  v239 = &v222 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5930);
  MEMORY[0x28223BE20](v26 - 8);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v27);
  v29 = &v222 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_11(&v222 - v31);
  v32 = sub_24E343288();
  OUTLINED_FUNCTION_0_14();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7_1();
  v38 = v37 - v36;
  v39 = [v2 game];
  v40 = [v39 internal];

  v41 = [v40 storeURL];
  sub_24E343238();

  (*(v34 + 8))(v38, v32);
  v42 = sub_24E347CB8();
  v43 = GKGameCenterUIFrameworkBundle();
  v44 = GKGetLocalizedStringFromTableInBundle();

  v45 = sub_24E347CF8();
  v47 = v46;

  v48 = sub_24DFB4F3C();
  v49 = v3;
  sub_24E077E00();
  v51 = v50;
  v53 = *(v50 + 16);
  v52 = *(v50 + 24);
  v236 = v29;
  if (v53 >= v52 >> 1)
  {
    sub_24E077E00();
    v51 = v220;
  }

  *(v51 + 16) = v53 + 1;
  v54 = (v51 + 72 * v53);
  v54[4] = v45;
  v54[5] = v47;
  v54[6] = 0xD000000000000013;
  v54[7] = 0x800000024E3A8EE0;
  v54[8] = 0;
  v54[9] = v49;
  v54[11] = &type metadata for ShareAchievementAction;
  v54[12] = v48;
  v55 = v51;
  v56 = [v49 game];
  [v56 gameInfo];
  v57 = BYTE6(v254);

  if (v57 == 1)
  {
    v245 = v21;
    v58 = sub_24E347CB8();
    v59 = GKGameCenterUIFrameworkBundle();
    v60 = OUTLINED_FUNCTION_1_12();

    *&v224 = sub_24E347CF8();
    v223 = v61;

    v62 = [v49 game];
    v63 = [objc_opt_self() localPlayer];
    v64 = sub_24E155480();
    v66 = *(v55 + 16);
    v65 = *(v55 + 24);
    v67 = v55;
    v68 = v49;
    if (v66 >= v65 >> 1)
    {
      sub_24E077E00();
      v67 = v221;
    }

    v69 = v247;
    OUTLINED_FUNCTION_16_25();
    *(v67 + 16) = v66 + 1;
    v243 = v67;
    v70 = (v67 + 72 * v66);
    v71 = v223;
    v70[4] = v224;
    v70[5] = v71;
    v70[6] = 0;
    v70[7] = 0;
    v70[8] = v62;
    v70[9] = v63;
    v70[10] = v68;
    v70[11] = &type metadata for ChallengePlayersAction;
    v70[12] = v64;
    v21 = v245;
  }

  else
  {
    v243 = v55;
    v69 = v247;
    OUTLINED_FUNCTION_16_25();
  }

  type metadata accessor for AchievementDetailsAction();
  OUTLINED_FUNCTION_8_6();
  v245 = v72;
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v72);
  *(&v255 + 1) = &type metadata for GKFeatureFlags;
  v76 = sub_24DFA0CB4();
  v256 = v76;
  LOBYTE(v254) = 4;
  v77 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(&v254);
  if (v77)
  {
    v78 = v239;
    sub_24E3471C8();
    if (v240 == 3)
    {
      sub_24DF8BFF4(v55, &unk_27F1E5930);
      v79 = *(v238 + 32);
      v80 = v21;
    }

    else
    {
      v81 = MEMORY[0x277D837D0];
      v82 = sub_24E252A34(v49);
      if (v83)
      {
        v55 = v82;
        v84 = v83;
      }

      else
      {
        v85 = [v49 title];
        v55 = sub_24E347CF8();
        v84 = v86;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
      inited = swift_initStackObject();
      v224 = xmmword_24E367D20;
      *(inited + 16) = xmmword_24E367D20;
      *(inited + 32) = 0x79546E6F69746361;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 72) = v81;
      *(inited + 48) = 0x657461676976616ELL;
      *(inited + 56) = 0xE800000000000000;
      v88 = sub_24E347C28();
      if (qword_27F1DD808 != -1)
      {
        swift_once();
      }

      v89 = sub_24E347058();
      v90 = __swift_project_value_buffer(v89, qword_27F20AE00);
      v91 = v225;
      MEMORY[0x25303DB90](v55, v84, 0x6E6F74747562, 0xE600000000000000, v88, v90);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
      v92 = v227;
      v93 = (*(v227 + 80) + 32) & ~*(v227 + 80);
      v94 = swift_allocObject();
      *(v94 + 16) = v224;
      v95 = v228;
      (*(v92 + 16))(v94 + v93, v91, v228);
      sub_24E347448();
      v96 = v226;
      sub_24E3471D8();
      (*(v92 + 8))(v91, v95);
      v97 = v238;
      v78 = v239;
      (*(v238 + 8))(v239, v21);
      OUTLINED_FUNCTION_16_25();
      sub_24DF8BFF4(v55, v98);
      v79 = *(v97 + 32);
      v80 = v21;
      v79(v78, v96, v21);
      v69 = v247;
    }

    *v55 = v49;
    *(v55 + 8) = v240;
    v99 = v245;
    v79((v55 + *(v245 + 24)), v78, v80);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v99);
    v100 = v49;
  }

  *(&v255 + 1) = &type metadata for GKFeatureFlags;
  v256 = v76;
  LOBYTE(v254) = 7;
  v101 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(&v254);
  if ((v101 & 1) != 0 && (v102 = OUTLINED_FUNCTION_18_26(), v103 = [v102 releaseState], v102, v103 == 2))
  {
    sub_24E343AA8();
    v240 = sub_24E343668();
    v239 = v104;
    v238 = 0xEA00000000006C6CLL;
    v237 = 0x69662E6B636F6C63;
  }

  else
  {
    v237 = 0;
    v238 = 0;
    v240 = 0;
    v239 = 0;
  }

  if ([v49 isCompleted])
  {
    v105 = [v49 imageURL];
    v106 = sub_24E347CF8();
    v108 = v107;

    v109 = OUTLINED_FUNCTION_18_26();
    *&v251 = 0x6574616C706D6574;
    *(&v251 + 1) = 0xE800000000000000;
    sub_24E348918();
    v110 = [v109 icons];

    v111 = sub_24E347C08();
    sub_24E12C94C(v111, &v251);

    sub_24DF8BE60(&v254);
    if (*(&v252 + 1))
    {
      if (swift_dynamicCast())
      {

        v112 = v249;
        v108 = v250;
      }

      else
      {
        v112 = v106;
      }
    }

    else
    {
      v112 = v106;
      sub_24DF8BFF4(&v251, &qword_27F1E0370);
    }

    v161 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v162 = v230;
    sub_24E343418();
    v163 = sub_24E3433C8();
    (*(v231 + 8))(v162, v232);
    [v161 setLocale_];

    [v161 setDateStyle_];
    *&v251 = sub_24E252A34(v49);
    *(&v251 + 1) = v164;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFEF0);
    sub_24E15535C();
    sub_24E348918();
    v165 = [v49 title];
    v241 = sub_24E347CF8();
    v235 = v166;

    v167 = [v49 achievedDescription];
    v232 = sub_24E347CF8();
    v231 = v168;

    v169 = [v49 lastReportedDate];
    v170 = v233;
    sub_24E343328();

    v171 = sub_24E3432E8();
    (*(v234 + 8))(v170, v247);
    v172 = [v161 stringFromDate_];

    v173 = sub_24E347CF8();
    v175 = v174;

    v249 = v173;
    v250 = v175;
    sub_24DF90C4C();
    v234 = sub_24E348708();
    v177 = v176;

    type metadata accessor for Artwork();
    *&v251 = v112;
    *(&v251 + 1) = v108;
    v248[0] = 25186;
    v248[1] = 0xE200000000000000;
    v178 = Artwork.__allocating_init(template:size:backgroundColor:crop:variants:)(&v251, 0, v248, MEMORY[0x277D84F90], 512.0, 512.0);
    v179 = [v49 friendsWhoHaveThis];
    sub_24DF88A8C(0, &unk_27F1EACC0);
    v180 = sub_24E347F08();

    v181 = OUTLINED_FUNCTION_18_26();
    v182 = [v181 lastReportedDate];

    if (v182)
    {
      v183 = v242;
      sub_24E343328();

      OUTLINED_FUNCTION_16_25();
    }

    else
    {
      OUTLINED_FUNCTION_16_25();
      v183 = v242;
    }

    __swift_storeEnumTagSinglePayload(v183, v184, 1, v247);
    v185 = v236;
    sub_24DF95B98(&selRef_iconURLString, v236, &unk_27F1E5930);
    v186 = v245;
    if (__swift_getEnumTagSinglePayload(v185, 1, v245) == 1)
    {
      OUTLINED_FUNCTION_28_15(&selRef_iconURLString);

      OUTLINED_FUNCTION_28_15(v185);
      v251 = 0u;
      v252 = 0u;
      v253 = 0;
    }

    else
    {
      *(&v252 + 1) = v186;
      OUTLINED_FUNCTION_5_63();
      v253 = sub_24E1553D8(v187, v188);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v251);
      sub_24E15541C(v185, boxed_opaque_existential_1);

      sub_24DF8BFF4(&selRef_iconURLString, &unk_27F1E5930);
    }

    v190 = v178 | 0x4000000000000000;
    v191 = type metadata accessor for Achievement();
    v192 = v244;
    v193 = v244 + *(v191 + 36);
    *&v194 = OUTLINED_FUNCTION_9_38();
    v196 = (v192 + v195);
    *v196 = 0;
    v196[1] = 0;
    v196[2] = 0;
    *(v192 + v197[11]) = 0;
    v198 = v192 + v197[12];
    *v198 = v194;
    *(v198 + 16) = v194;
    v199 = v197[13];
    sub_24E3474B8();
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v200, v201, v202, v203);
    v204 = v255;
    *v192 = v254;
    *(v192 + 16) = v204;
    v205 = v241;
    *(v192 + 32) = v256;
    *(v192 + 40) = v205;
    v206 = v232;
    *(v192 + 48) = v235;
    *(v192 + 56) = v206;
    v207 = v234;
    *(v192 + 64) = v231;
    *(v192 + 72) = v207;
    *(v192 + 80) = v177;
    *(v192 + 88) = v190;
    sub_24E151BF4(*v198, *(v198 + 8));
    OUTLINED_FUNCTION_19_21();
    *v198 = v209;
    *(v198 + 8) = v208;
    OUTLINED_FUNCTION_24_13();
    *(v198 + 16) = v211;
    *(v198 + 24) = v210;
    sub_24E151F10(v242, v192 + *(v191 + 32));
    sub_24E0735B0(*v196, v196[1], v196[2]);
    OUTLINED_FUNCTION_20_21();
    *(v192 + v199) = v180;
    v160 = v193;
    return sub_24DF95BE4(&v251, v160, &qword_27F1DEE90);
  }

  v113 = [v49 title];
  v114 = sub_24E347CF8();
  OUTLINED_FUNCTION_23_24(v114, v115);

  v116 = [v49 unachievedDescription];
  v236 = sub_24E347CF8();
  v118 = v117;

  v119 = OUTLINED_FUNCTION_18_26();
  v120 = [v119 lastReportedDate];

  if (v120)
  {
    v121 = v229;
    sub_24E343328();

    __swift_storeEnumTagSinglePayload(v121, 0, 1, v69);
    sub_24DF8BFF4(v121, &unk_27F1E5890);
LABEL_30:
    [v49 percentComplete];
    v128 = v127;
    v129 = 0;
    goto LABEL_31;
  }

  v122 = v229;
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v69);
  sub_24DF8BFF4(v122, &unk_27F1E5890);
  [v49 percentComplete];
  if (v126 > 0.0)
  {
    goto LABEL_30;
  }

  v213 = OUTLINED_FUNCTION_18_26();
  v214 = [v213 isHidden];

  if (v214)
  {

    v215 = sub_24E347CB8();
    v216 = GKGameCenterUIFrameworkBundle();
    v217 = OUTLINED_FUNCTION_1_12();

    v218 = sub_24E347CF8();
    OUTLINED_FUNCTION_23_24(v218, v219);

    v236 = 0;
    v118 = 0xE000000000000000;
    v129 = 0x8000000000000000;
    v128 = 1;
  }

  else
  {
    v129 = 0x8000000000000000;
    v128 = 0;
  }

LABEL_31:
  *&v251 = sub_24E252A34(v49);
  *(&v251 + 1) = v130;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFEF0);
  sub_24E15535C();
  sub_24E348918();
  v131 = [v49 friendsWhoHaveThis];
  sub_24DF88A8C(0, &unk_27F1EACC0);
  v132 = sub_24E347F08();

  v133 = [v49 internal];
  v134 = [v133 lastReportedDate];

  if (v134)
  {
    v135 = v241;
    sub_24E343328();

    v136 = 0;
  }

  else
  {
    v136 = 1;
    v135 = v241;
  }

  __swift_storeEnumTagSinglePayload(v135, v136, 1, v69);
  v137 = v235;
  sub_24DF95B98(v55, v235, &unk_27F1E5930);
  v138 = v245;
  if (__swift_getEnumTagSinglePayload(v137, 1, v245) == 1)
  {
    OUTLINED_FUNCTION_28_15(v55);
    OUTLINED_FUNCTION_28_15(v137);
    v251 = 0u;
    v252 = 0u;
    v253 = 0;
  }

  else
  {
    *(&v252 + 1) = v138;
    OUTLINED_FUNCTION_5_63();
    v253 = sub_24E1553D8(v139, v140);
    __swift_allocate_boxed_opaque_existential_1(&v251);
    v141 = OUTLINED_FUNCTION_21_21();
    sub_24E15541C(v141, v142);
    sub_24DF8BFF4(v55, &unk_27F1E5930);
  }

  v143 = type metadata accessor for Achievement();
  v144 = v244;
  v145 = v244 + v143[9];
  *(v145 + 32) = 0;
  *v145 = 0u;
  *(v145 + 16) = 0u;
  v146 = (v144 + v143[10]);
  *v146 = 0;
  v146[1] = 0;
  v146[2] = 0;
  *(v144 + v143[11]) = 0;
  v147 = v144 + v143[12];
  *v147 = 0u;
  *(v147 + 16) = 0u;
  v148 = v143[13];
  sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v149, v150, v151, v152);
  v153 = v255;
  *v144 = v254;
  *(v144 + 16) = v153;
  v154 = v242;
  *(v144 + 32) = v256;
  *(v144 + 40) = v154;
  v155 = v236;
  *(v144 + 48) = v246;
  *(v144 + 56) = v155;
  *(v144 + 64) = v118;
  *(v144 + 72) = v128;
  *(v144 + 80) = 0;
  *(v144 + 88) = v129;
  sub_24E151BF4(*v147, *(v147 + 8));
  OUTLINED_FUNCTION_19_21();
  *v147 = v157;
  *(v147 + 8) = v156;
  OUTLINED_FUNCTION_24_13();
  *(v147 + 16) = v159;
  *(v147 + 24) = v158;
  sub_24E151F10(v241, v144 + v143[8]);
  sub_24E0735B0(*v146, v146[1], v146[2]);
  OUTLINED_FUNCTION_20_21();
  *(v144 + v148) = v132;
  v160 = v145;
  return sub_24DF95BE4(&v251, v160, &qword_27F1DEE90);
}

id sub_24E153C64(uint64_t (*a1)(void), void *a2)
{
  v4 = a1();
  v5 = objc_allocWithZone(v4);
  *&v5[*a2] = v2;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

void SharingAchievementMessage.activityViewControllerPlaceholderItem(_:)(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC12GameCenterUI25SharingAchievementMessage_achievement) game];
  v4 = [v3 name];

  v5 = sub_24E347CF8();
  v7 = v6;

  a1[3] = MEMORY[0x277D837D0];
  *a1 = v5;
  a1[1] = v7;
}

uint64_t SharingAchievementMessage.activityViewController(_:itemForActivityType:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_24E347CF8();
    v5 = v4;
    if (v3 == sub_24E347CF8() && v5 == v6)
    {
    }

    else
    {
      v8 = sub_24E348C08();

      if ((v8 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    result = sub_24E153E44();
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_11:
    result = 0;
    v11 = 0;
    a2[2] = 0;
    goto LABEL_12;
  }

LABEL_7:
  result = sub_24E154300();
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_8:
  v11 = MEMORY[0x277D837D0];
LABEL_12:
  *a2 = result;
  a2[1] = v10;
  a2[3] = v11;
  return result;
}

uint64_t sub_24E153E44()
{
  v1 = sub_24E343288();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC12GameCenterUI25SharingAchievementMessage_achievement);
  v7 = [v6 player];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [v6 game];
  v10 = [v9 internal];

  v11 = [v10 storeURL];
  sub_24E343238();

  v53 = sub_24E343218();
  v13 = v12;
  (*(v2 + 8))(v5, v1);
  v14 = [v8 isLocalPlayer];
  [v6 isCompleted];
  if (v14)
  {
    v15 = sub_24E347CB8();
    v16 = GKGameCenterUIFrameworkBundle();
    v17 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_24E369B70;
    v19 = [v6 title];
    v20 = sub_24E347CF8();
    v22 = v21;

    v23 = MEMORY[0x277D837D0];
    *(v18 + 56) = MEMORY[0x277D837D0];
    v24 = sub_24DF95A7C();
    *(v18 + 64) = v24;
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    v25 = [v6 game];
    v26 = [v25 name];

    v27 = sub_24E347CF8();
    v29 = v28;

    *(v18 + 96) = v23;
    *(v18 + 104) = v24;
    *(v18 + 72) = v27;
    *(v18 + 80) = v29;
    *(v18 + 136) = v23;
    *(v18 + 144) = v24;
    *(v18 + 112) = v53;
    *(v18 + 120) = v13;
  }

  else
  {
    v31 = sub_24E347CB8();
    v32 = GKGameCenterUIFrameworkBundle();
    v33 = GKGetLocalizedStringFromTableInBundle();

    v52 = sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_24E369E30;
    v35 = [v8 displayName];
    v36 = sub_24E347CF8();
    v38 = v37;

    v39 = v13;
    v40 = MEMORY[0x277D837D0];
    *(v34 + 56) = MEMORY[0x277D837D0];
    v41 = sub_24DF95A7C();
    *(v34 + 64) = v41;
    *(v34 + 32) = v36;
    *(v34 + 40) = v38;
    v42 = [v6 title];
    v43 = sub_24E347CF8();
    v45 = v44;

    *(v34 + 96) = v40;
    *(v34 + 104) = v41;
    *(v34 + 72) = v43;
    *(v34 + 80) = v45;
    v46 = [v6 game];
    v47 = [v46 name];

    v48 = sub_24E347CF8();
    v50 = v49;

    *(v34 + 136) = v40;
    *(v34 + 144) = v41;
    *(v34 + 112) = v48;
    *(v34 + 120) = v50;
    *(v34 + 176) = v40;
    *(v34 + 184) = v41;
    *(v34 + 152) = v53;
    *(v34 + 160) = v39;
  }

  v30 = sub_24E347D18();

  return v30;
}

uint64_t sub_24E154300()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI25SharingAchievementMessage_achievement);
  v2 = [v1 player];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 isLocalPlayer];
  [v1 isCompleted];
  if (v4)
  {
    v5 = sub_24E347CB8();
    v6 = GKGameCenterUIFrameworkBundle();
    v7 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24E36A270;
    v9 = [v1 title];
    v10 = sub_24E347CF8();
    v12 = v11;

    v13 = MEMORY[0x277D837D0];
    *(v8 + 56) = MEMORY[0x277D837D0];
    v14 = sub_24DF95A7C();
    *(v8 + 64) = v14;
    *(v8 + 32) = v10;
    *(v8 + 40) = v12;
    v15 = [v1 game];
    v16 = [v15 name];

    v17 = sub_24E347CF8();
    v19 = v18;

    *(v8 + 96) = v13;
    *(v8 + 104) = v14;
    *(v8 + 72) = v17;
    *(v8 + 80) = v19;
  }

  else
  {
    v21 = sub_24E347CB8();
    v22 = GKGameCenterUIFrameworkBundle();
    v23 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_24E369B70;
    v25 = [v3 displayName];
    v26 = sub_24E347CF8();
    v28 = v27;

    v29 = MEMORY[0x277D837D0];
    *(v24 + 56) = MEMORY[0x277D837D0];
    v30 = sub_24DF95A7C();
    *(v24 + 64) = v30;
    *(v24 + 32) = v26;
    *(v24 + 40) = v28;
    v31 = [v1 title];
    v32 = sub_24E347CF8();
    v34 = v33;

    *(v24 + 96) = v29;
    *(v24 + 104) = v30;
    *(v24 + 72) = v32;
    *(v24 + 80) = v34;
    v35 = [v1 game];
    v36 = [v35 name];

    v37 = sub_24E347CF8();
    v39 = v38;

    *(v24 + 136) = v29;
    *(v24 + 144) = v30;
    *(v24 + 112) = v37;
    *(v24 + 120) = v39;
  }

  v20 = sub_24E347D18();

  return v20;
}

Swift::String __swiftcall SharingAchievementMessage.activityViewController(_:subjectForActivityType:)(UIActivityViewController *_, UIActivityType_optional subjectForActivityType)
{
  v3 = sub_24E347CB8();
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24E367D20;
  v7 = [*(v2 + OBJC_IVAR____TtC12GameCenterUI25SharingAchievementMessage_achievement) game];
  v8 = [v7 name];

  v9 = sub_24E347CF8();
  v11 = v10;

  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_24DF95A7C();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  v12 = sub_24E347D18();
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

void SharingAchievementURL.activityViewControllerPlaceholderItem(_:)(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC12GameCenterUI21SharingAchievementURL_achievement) game];
  v4 = [v3 internal];

  v5 = [v4 storeURL];
  a1[3] = sub_24E343288();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_24E343238();
}

id sub_24E1549B4(void *a1, uint64_t a2, void *a3, void (*a4)(void *__return_ptr))
{
  v6 = a3;
  v7 = a1;
  a4(v10);

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v8 = sub_24E348BE8();
  __swift_destroy_boxed_opaque_existential_1(v10);

  return v8;
}

double SharingAchievementURL.activityViewController(_:itemForActivityType:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_28();
  v5 = sub_24E343288();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  if (!a2)
  {
    goto LABEL_7;
  }

  v12 = sub_24E347CF8();
  v14 = v13;
  if (v12 == sub_24E347CF8() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_24E348C08();

    if ((v17 & 1) == 0)
    {
LABEL_7:
      v18 = [*(v3 + OBJC_IVAR____TtC12GameCenterUI21SharingAchievementURL_achievement) game];
      v19 = [v18 internal];

      v20 = [v19 storeURL];
      sub_24E343238();

      *(v2 + 24) = v5;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2);
      (*(v7 + 32))(boxed_opaque_existential_1, v11, v5);
      return result;
    }
  }

  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return result;
}

id sub_24E154C1C(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(void *__return_ptr))
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  a5(v19);

  v11 = v20;
  if (v20)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v13 = *(v11 - 8);
    MEMORY[0x28223BE20](v12);
    OUTLINED_FUNCTION_7_1();
    v16 = v15 - v14;
    (*(v13 + 16))(v15 - v14);
    v17 = sub_24E348BE8();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id SharingAchievementURL.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24E154E2C(uint64_t result, unint64_t *a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      sub_24DF88A8C(0, a2);
      result = sub_24E347F68();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_24E154E88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {
  }

  return result;
}

void sub_24E154F8C()
{
  sub_24E155174(319, &qword_280BE0C18, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    sub_24E155124(319, &qword_280BE0130, &qword_27F1DF158);
    if (v1 <= 0x3F)
    {
      sub_24DF9E030(319, qword_280BE0190);
      if (v2 <= 0x3F)
      {
        sub_24DF9E030(319, qword_280BE0148);
        if (v3 <= 0x3F)
        {
          sub_24E155124(319, &qword_280BE0120, &qword_27F1E26C8);
          if (v4 <= 0x3F)
          {
            sub_24E155174(319, &qword_280BE0650, MEMORY[0x277D21F70]);
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

void sub_24E155124(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    OUTLINED_FUNCTION_21_21();
    v4 = sub_24E348698();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24E155174(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_21_21();
    v4 = sub_24E348698();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t get_enum_tag_for_layout_string_12GameCenterUI11AchievementV6StatusO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_24E1551E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_24E155234(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_24E15529C(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = xmmword_24E37CE70;
  }

  return result;
}

unint64_t sub_24E15535C()
{
  result = qword_27F1E5940;
  if (!qword_27F1E5940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F1DFEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5940);
  }

  return result;
}

uint64_t sub_24E1553D8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_21_21();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E15541C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementDetailsAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E155480()
{
  result = qword_27F1E5968;
  if (!qword_27F1E5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5968);
  }

  return result;
}

int *OUTLINED_FUNCTION_8_47(int *result, __n128 a2)
{
  v3 = (v2 + result[10]);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  *(v2 + result[11]) = 0;
  v4 = (v2 + result[12]);
  *v4 = a2;
  v4[1] = a2;
  return result;
}

double OUTLINED_FUNCTION_9_38()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_25()
{

  return type metadata accessor for Achievement();
}

uint64_t OUTLINED_FUNCTION_17_27()
{

  return type metadata accessor for Achievement();
}

id OUTLINED_FUNCTION_18_26()
{

  return [v0 (v1 + 2424)];
}

void OUTLINED_FUNCTION_20_21()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = *(v1 - 344);
}

uint64_t OUTLINED_FUNCTION_23_24(uint64_t result, uint64_t a2)
{
  *(v2 - 352) = result;
  *(v2 - 320) = a2;
  return result;
}

void OUTLINED_FUNCTION_27_13()
{

  JUMPOUT(0x25303E950);
}

uint64_t OUTLINED_FUNCTION_28_15(uint64_t a1)
{

  return sub_24DF8BFF4(a1, v1);
}

uint64_t OUTLINED_FUNCTION_29_14(uint64_t a1)
{

  return sub_24E154E88(a1, 0, 0x8000000000000000);
}

uint64_t sub_24E15567C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_112();
  sub_24E156878(v0, v1);
  sub_24E343538();

  swift_beginAccess();
}

uint64_t sub_24E155750(uint64_t a1)
{
  swift_beginAccess();
  if (sub_24E12D524(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E1558A4();
  }
}

BOOL sub_24E155828(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for FriendSuggestionInvitationStateManager.DataUpdateDelegate();
    v5 = a1;
    v6 = a2;
    v2 = sub_24E348628();
  }

  return (v2 & 1) == 0;
}

uint64_t sub_24E1558A4()
{
  OUTLINED_FUNCTION_0_112();
  sub_24E156878(v0, v1);
  return sub_24E343528();
}

void *sub_24E15594C()
{
  swift_getKeyPath();
  sub_24E156878(&qword_27F1E59A8, type metadata accessor for FriendSuggestionInvitationStateManager);
  sub_24E343538();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_24E1559F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24E155A24(v1);
}

void sub_24E155A24(void *a1)
{
  v3 = *(v1 + 24);
  v4 = v3;
  LOBYTE(v3) = sub_24E155828(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E1558A4();
  }

  else
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;
  }
}

uint64_t sub_24E155B14(char a1)
{
  v2 = v1;
  *(v2 + 16) = MEMORY[0x277D84F90];
  *(v2 + 24) = 0;
  sub_24E343568();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = objc_allocWithZone(type metadata accessor for FriendSuggestionInvitationStateManager.DataUpdateDelegate());
  v7 = sub_24E156194(sub_24E156848, v5);
  sub_24E155A24(v7);
  return v2;
}

void sub_24E155BD8(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_24E346EE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24E346F08();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 21)
  {
    if (a1 != 4)
    {
      return;
    }

    v28 = sub_24E347CF8();
    v29 = v16;
    sub_24E348918();
    sub_24E12C94C(a2, &v30);
    sub_24DF8BE60(aBlock);
    if (v31)
    {
      if (swift_dynamicCast())
      {
        v18 = v28;
        v17 = v29;
        sub_24DF88A8C(0, &qword_27F1DFCD0);
        v26 = sub_24E348368();
        v19 = swift_allocObject();
        v19[2] = a3;
        v19[3] = v18;
        v19[4] = v17;
        aBlock[4] = sub_24E156854;
        aBlock[5] = v19;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24E00B24C;
        aBlock[3] = &block_descriptor_55;
        v20 = _Block_copy(aBlock);

        sub_24E346EF8();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_24E156878(&qword_27F1DFD00, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
        sub_24DFCD5F4();
        sub_24E3487E8();
        v21 = v26;
        MEMORY[0x25303EED0](0, v15, v11, v20);
        _Block_release(v20);

        (*(v9 + 8))(v11, v8);
        (*(v13 + 8))(v15, v12);
      }

      return;
    }

LABEL_10:
    sub_24DF8894C(&v30);
    return;
  }

  if ((a4 & 1) == 0)
  {
    return;
  }

  v28 = sub_24E347CF8();
  v29 = v22;
  sub_24E348918();
  sub_24E12C94C(a2, &v30);
  sub_24DF8BE60(aBlock);
  if (!v31)
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v23 = v28;
    v24 = v29;
    sub_24DF88A8C(0, &qword_280BDFA90);
    static GKLocalPlayer.presentActivitySharingRepromptInOverlay(recipientName:)(v23, v24);
  }
}

uint64_t sub_24E155FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_getKeyPath();
    sub_24E156878(&qword_27F1E59A8, type metadata accessor for FriendSuggestionInvitationStateManager);

    sub_24E343538();

    swift_getKeyPath();
    sub_24E343558();

    swift_beginAccess();
    sub_24E0111D0();
    v7 = *(*(v6 + 16) + 16);
    sub_24E1242A0(v7);
    v8 = *(v6 + 16);
    *(v8 + 16) = v7 + 1;
    v9 = v8 + 16 * v7;
    *(v9 + 32) = a2;
    *(v9 + 40) = a3;
    *(v6 + 16) = v8;
    swift_endAccess();
    swift_getKeyPath();
    sub_24E343548();
  }

  return result;
}

id sub_24E156194(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtCC12GameCenterUI38FriendSuggestionInvitationStateManagerP33_B74AEE38B88C48CD057FD9C123265F9518DataUpdateDelegate_updateBlock];
  *v6 = a1;
  *(v6 + 1) = a2;
  v18.receiver = v2;
  v18.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v18, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 daemonProxy];
  [v10 addDataUpdateDelegate_];

  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  v13 = sub_24E347CB8();
  [v12 addObserver:v9 selector:sel_refreshFromFriendRecommendationsNotification_ name:v13 object:0];

  v14 = [v11 defaultCenter];
  v15 = v9;
  v16 = sub_24E347CB8();
  [v14 addObserver:v15 selector:sel_refreshFromMessageBasedFriendRequestSent_ name:v16 object:0];

  return v15;
}

uint64_t sub_24E156368(uint64_t result)
{
  if (result == 21 || result == 4)
  {
    return (*(v1 + OBJC_IVAR____TtCC12GameCenterUI38FriendSuggestionInvitationStateManagerP33_B74AEE38B88C48CD057FD9C123265F9518DataUpdateDelegate_updateBlock))();
  }

  return result;
}

uint64_t sub_24E156498(void *a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtCC12GameCenterUI38FriendSuggestionInvitationStateManagerP33_B74AEE38B88C48CD057FD9C123265F9518DataUpdateDelegate_updateBlock);
  v5 = sub_24E1567DC(a1);
  if (!v5)
  {
    v5 = sub_24E347C28();
  }

  v4(a2, v5);
}

uint64_t sub_24E1565F4()
{

  v1 = OBJC_IVAR____TtC12GameCenterUI38FriendSuggestionInvitationStateManager___observationRegistrar;
  v2 = sub_24E343578();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_24E156664()
{
  sub_24E1565F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for FriendSuggestionInvitationStateManager()
{
  result = qword_27F1E5980;
  if (!qword_27F1E5980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E156710()
{
  result = sub_24E343578();
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

uint64_t sub_24E1567DC(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24E347C08();

  return v3;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E156878(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_24E1568D8(void *a1, unint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v106 = a8;
  v103 = a7;
  v120 = a5;
  v121 = a6;
  v13 = sub_24E343368();
  OUTLINED_FUNCTION_0_14();
  v101 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_14();
  v100 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v17 - 8);
  v118 = &v100 - v18;
  v117 = sub_24E343288();
  OUTLINED_FUNCTION_0_14();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_14();
  v113 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v102 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v100 - v26;
  __swift_storeEnumTagSinglePayload(&v100 - v26, 1, 1, v13);
  v116 = a1;
  sub_24E2FB274(a1, a2, a3, a4, v120, v121);
  v29 = v28;
  sub_24DF8C95C(v27, &unk_27F1E5890);
  v119 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  if (qword_27F1DD898 != -1)
  {
LABEL_51:
    swift_once();
  }

  v104 = v13;
  v30 = v29[2];
  v115 = qword_27F1E59C8;
  v105 = unk_27F1E59D0;
  if (v30)
  {
    v114 = a2;
    v107 = a9;
    v112 = (v20 + 32);
    v31 = *MEMORY[0x277D74060];
    v110 = (v20 + 16);
    v111 = v31;
    v109 = (v20 + 8);

    v32 = v30 - 1;
    v20 = 15;
    a2 = 32;
    v108 = xmmword_24E367D20;
    v13 = v119;
    v120 = v29;
    while (1)
    {
      memcpy(__dst, v29 + a2, 0x80uLL);
      v33 = __dst[1];
      v34 = v20 >> 14;
      v35 = v20 >> 14 < __dst[0] >> 14 || v34 >= __dst[1] >> 14;
      v121 = v32;
      if (v35)
      {
        if (__dst[0] >> 14 < v34)
        {
          __break(1u);
          goto LABEL_51;
        }

        sub_24E0F03D0(__dst, v122);
        v36 = sub_24E347E98();
        v37 = MEMORY[0x25303E8C0](v36);
        v39 = v38;

        v40 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v41 = v115;

        v42 = sub_24E194F20(v37, v39, v41);
        [v13 appendAttributedString_];
      }

      else
      {
        sub_24E0F03D0(__dst, v122);
      }

      v43 = __dst[15];
      v44 = __dst[2];
      v45 = __dst[3];
      v46 = qword_27F1E59D8;
      v47 = objc_allocWithZone(MEMORY[0x277CCAB48]);

      v48 = sub_24E15B964(v44, v45, v46);
      v49 = LOBYTE(__dst[6]);
      v50 = v48;
      switch(LOBYTE(__dst[14]))
      {
        case 1:
          strcpy(v122, "leaderboard??");
          HIWORD(v122[1]) = -4864;
          v57 = OUTLINED_FUNCTION_1_89();
          MEMORY[0x25303E950](v57);

          OUTLINED_FUNCTION_0_113();

          v58 = v122[0];
          v59 = v122[1];
          v122[0] = v43;
          v60 = sub_24E348BA8();
          v62 = v61;
          v122[0] = v58;
          v122[1] = v59;

          MEMORY[0x25303E950](v60, v62);

          goto LABEL_31;
        case 2:
          v122[0] = __dst[4];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0338);
          sub_24E00FE20();
          v52 = sub_24E347C78();
          strcpy(v122, "achievement??");
          HIWORD(v122[1]) = -4864;
          goto LABEL_29;
        case 3:
          v53 = __dst[7];
          v54 = (*(&__dst[6] + 1) << 8) | ((*(&__dst[6] + 5) | (HIBYTE(__dst[6]) << 16)) << 40);
          v55 = 1701667175;
          if (__dst[12])
          {
            v55 = 0x74617641656D6167;
            v56 = 0xEA00000000007261;
          }

          else
          {
            v56 = 0xE400000000000000;
          }

          v122[0] = v55;
          v122[1] = v56;

          OUTLINED_FUNCTION_0_113();

          MEMORY[0x25303E950](v54 | v49, v53);
          goto LABEL_30;
        default:
          if (v107 && (__dst[4] == v106 ? (v51 = __dst[5] == v107) : (v51 = 0), v51 || (sub_24E348C08() & 1) != 0))
          {
            sub_24E0F0480(__dst);
          }

          else
          {
            v63 = 0x726579616C70;
            if (v49)
            {
              v63 = 0x7641726579616C70;
              v64 = 0xEC00000072617461;
            }

            else
            {
              v64 = 0xE600000000000000;
            }

            v122[0] = v63;
            v122[1] = v64;

            OUTLINED_FUNCTION_0_113();

            v52 = OUTLINED_FUNCTION_1_89();
LABEL_29:
            MEMORY[0x25303E950](v52);
LABEL_30:

            OUTLINED_FUNCTION_0_113();

            v66 = v122[0];
            v65 = v122[1];
            v122[0] = v43;
            sub_24E348BA8();
            v122[0] = v66;
            v122[1] = v65;

            v67 = OUTLINED_FUNCTION_1_89();
            MEMORY[0x25303E950](v67);

LABEL_31:

            v68 = v118;
            sub_24E343268();

            v69 = v117;
            if (__swift_getEnumTagSinglePayload(v68, 1, v117) == 1)
            {
              sub_24E0F0480(__dst);
              sub_24DF8C95C(v68, &qword_27F1DEFB8);
            }

            else
            {
              v70 = v113;
              (*v112)(v113, v68, v69);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0680);
              inited = swift_initStackObject();
              *(inited + 16) = v108;
              v72 = v111;
              *(inited + 32) = v111;
              *(inited + 64) = v69;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 40));
              (*v110)(boxed_opaque_existential_1, v70, v69);
              type metadata accessor for Key(0);
              sub_24DFEA7B4();
              v74 = v72;
              sub_24E347C28();
              v75 = sub_24E347BE8();

              v76 = [v50 juFullRange];
              [v50 addAttributes:v75 range:{v76, v77}];
              sub_24E0F0480(__dst);

              (*v109)(v70, v69);
            }

            v13 = v119;
          }

          v78 = v121;
          [v13 appendAttributedString_];

          if (!v78)
          {

            a2 = v114;
            goto LABEL_39;
          }

          v32 = v78 - 1;
          a2 += 128;
          v20 = v33;
          v29 = v120;
          break;
      }
    }
  }

  v33 = 15;
  v13 = v119;
LABEL_39:
  v79 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v79 = v116 & 0xFFFFFFFFFFFFLL;
  }

  if (v33 >> 14 == 4 * v79)
  {
  }

  else
  {
    v80 = sub_24E2D5594(v33, v116, a2);
    v81 = MEMORY[0x25303E8C0](v80);
    v83 = v82;

    v84 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v85 = v81;
    v13 = v119;
    v86 = sub_24E194F20(v85, v83, v115);
    [v13 appendAttributedString_];
  }

  v87 = v13;
  v88 = [v87 string];
  sub_24E347CF8();

  v89 = sub_24E347DD8();

  if (v89 < 1)
  {

    return 0;
  }

  else
  {
    v90 = v102;
    sub_24E1578C4(v103, v102);
    v91 = v104;
    if (__swift_getEnumTagSinglePayload(v90, 1, v104) == 1)
    {

      sub_24DF8C95C(v90, &unk_27F1E5890);
    }

    else
    {
      v93 = v100;
      v92 = v101;
      (*(v101 + 32))(v100, v90, v91);
      countAndFlagsBits = Date._gkRelativeTimeAgoString()()._countAndFlagsBits;
      __dst[0] = 32;
      __dst[1] = 0xE100000000000000;
      MEMORY[0x25303E950](countAndFlagsBits);

      v95 = __dst[0];
      v96 = __dst[1];
      v97 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v98 = sub_24E194F20(v95, v96, v105);
      [v87 appendAttributedString_];

      (*(v92 + 8))(v93, v91);
    }
  }

  return v87;
}

uint64_t sub_24E1573B0()
{
  v0 = type metadata accessor for ActivityFeedSharedView.Metrics();
  __swift_allocate_value_buffer(v0, qword_27F1E59B0);
  v1 = __swift_project_value_buffer(v0, qword_27F1E59B0);
  if (qword_27F1DD7E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F20AD58);

  return sub_24E157934(v2, v1);
}

uint64_t sub_24E15744C()
{
  v0 = sub_24E344158();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0680);
  inited = swift_initStackObject();
  v5 = MEMORY[0x277D740C0];
  v35 = xmmword_24E36A270;
  *(inited + 16) = xmmword_24E36A270;
  v6 = *v5;
  *(inited + 32) = *v5;
  v7 = objc_opt_self();
  v37 = v6;
  v46 = v7;
  v8 = [v7 secondaryLabelColor];
  v9 = sub_24DF88A8C(0, &qword_27F1E5FD0);
  *(inited + 40) = v8;
  v10 = *MEMORY[0x277D740A8];
  v45 = v9;
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = sub_24DF88A8C(0, &qword_27F1DEE28);
  v12 = qword_27F1DD890;
  v34 = v10;
  if (v12 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for ActivityFeedSharedView.Metrics();
  v13 = __swift_project_value_buffer(v41, qword_27F1E59B0);
  v39 = *(v1 + 16);
  v40 = v13;
  v39(v3, v13, v0);
  v33 = sub_24DF88A8C(0, &qword_27F1E0BA0);
  v14 = sub_24E3483D8();
  v15 = MEMORY[0x25303F0C0](v3, v14);

  v38 = *(v1 + 8);
  v38(v3, v0);
  *(inited + 104) = v11;
  *(inited + 80) = v15;
  type metadata accessor for Key(0);
  v43 = v16;
  v42 = sub_24DFEA7B4();
  v36 = sub_24E347C28();
  v17 = swift_initStackObject();
  *(v17 + 16) = v35;
  v18 = v34;
  *(v17 + 32) = v34;
  v39(v3, v40 + *(v41 + 40), v0);
  v19 = v18;
  v20 = sub_24E3483D8();
  v21 = MEMORY[0x25303F0C0](v3, v20);

  v38(v3, v0);
  *(v17 + 40) = v21;
  v22 = v37;
  *(v17 + 64) = v11;
  *(v17 + 72) = v22;
  v23 = v22;
  v24 = [v46 secondaryLabelColor];
  *(v17 + 104) = v45;
  *(v17 + 80) = v24;
  v37 = sub_24E347C28();
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_24E369B70;
  *(v25 + 32) = v19;
  v39(v3, v40 + *(v41 + 20), v0);
  v26 = v19;
  v27 = sub_24E3483D8();
  v28 = MEMORY[0x25303F0C0](v3, v27);

  v38(v3, v0);
  *(v25 + 40) = v28;
  *(v25 + 64) = v11;
  *(v25 + 72) = v23;
  v29 = v23;
  *(v25 + 80) = [v46 labelColor];
  v30 = *MEMORY[0x277D741F0];
  *(v25 + 104) = v45;
  *(v25 + 112) = v30;
  *(v25 + 144) = MEMORY[0x277D83B88];
  *(v25 + 120) = 0;
  v31 = v30;
  result = sub_24E347C28();
  qword_27F1E59C8 = v36;
  unk_27F1E59D0 = v37;
  qword_27F1E59D8 = result;
  return result;
}

uint64_t sub_24E1578C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E157934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFeedSharedView.Metrics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_0_113()
{

  JUMPOUT(0x25303E950);
}

uint64_t sub_24E1579C4(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t sub_24E157A04(void *a1)
{
  v2 = sub_24E347218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  v6 = sub_24E347AD8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v11 = OUTLINED_FUNCTION_0_114();
    v12(v11);
    sub_24E347AC8();
LABEL_6:
    (*(v3 + 8))(v5, v2);
    return v6;
  }

  v8 = Strong;
  v9 = [objc_allocWithZone(GKChallengeListViewController) initWithGameRecord_];
  if (!v9)
  {
    v13 = OUTLINED_FUNCTION_0_114();
    v14(v13);
    sub_24E347AC8();

    goto LABEL_6;
  }

  v10 = v9;
  sub_24E0119C8(v9, 1, 0);

  return v6;
}

uint64_t sub_24E157BA4()
{
  MEMORY[0x253040FB0](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_24E157C04()
{
  result = qword_27F1E59E0;
  if (!qword_27F1E59E0)
  {
    type metadata accessor for ChallengeListAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E59E0);
  }

  return result;
}

unint64_t sub_24E157CA8()
{
  result = qword_27F1E5950;
  if (!qword_27F1E5950)
  {
    type metadata accessor for AchievementDetailsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5950);
  }

  return result;
}

uint64_t sub_24E157D00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_24E347218();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0);
  sub_24E347328();
  if (!v20)
  {
    sub_24DF8C95C(v19, &qword_27F1E1B70);
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
LABEL_7:
    v9 = *a1;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E59F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_7;
  }

  v9 = *a1;
  if (!*(&v22 + 1))
  {
LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:
  v11 = *(a1 + 8);
  objc_allocWithZone(type metadata accessor for AchievementDetailViewController());
  v12 = v9;

  v14 = sub_24E303D94(v13, v12, v10, v11);
  v15 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v15 setModalPresentationStyle_];
  [a3 presentViewController:v15 animated:1 completion:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  (*(v6 + 104))(v8, *MEMORY[0x277D21CA8], v5);
  v16 = sub_24E347AA8();

  sub_24DF8C95C(&v21, &qword_27F1E59E8);
  return v16;
}

void sub_24E157F70(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24E344128();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SystemImage();
  v10 = [objc_opt_self() configurationWithTextStyle_];
  v11 = sub_24E18EFCC(0x2E6E6F7276656863, 0xEF64726177726F66, v10);

  [v11 size];
  v13 = v12;
  v15 = v14;

  if (qword_27F1DD8B0 != -1)
  {
    swift_once();
  }

  sub_24E15BA80(&xmmword_27F1E5A28, a3);
  if (a1)
  {
    v16 = a1;
    [v16 size];
    v18 = v17;
    v19 = *a3;
    [v16 size];
    v22 = v21;
    if (v18 == v19)
    {
      v23 = v20;

      *a3 = v22;
      *(a3 + 8) = v23;
    }

    else
    {
      [v16 size];
      sub_24E344138();
      sub_24E344118();
      v25 = v24;

      (*(v7 + 8))(v9, v6);
      *a3 = v19;
      *(a3 + 8) = v25;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *(a3 + 304) = v13;
  *(a3 + 312) = v15;
  *(a3 + 56) = a2;
}

uint64_t sub_24E158204(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_24E344158();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v7, a4);
  OUTLINED_FUNCTION_22_0();
  v10 = *(v9 + 16);

  return v10(v8);
}

uint64_t sub_24E1582C8()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v85 = MEMORY[0x277D839F8];
    v86 = MEMORY[0x277D22A30];
    *&v84 = 0x4034000000000000;
    if (qword_27F1DD8A0 != -1)
    {
      swift_once();
    }

    v4 = sub_24E344158();
    v62 = __swift_project_value_buffer(v4, qword_27F1E59F8);
    v5 = *(v4 - 8);
    v6 = *(v5 + 16);
    v54 = v5 + 16;
    v55 = v6;
    v6(v3, v62, v4);
    v60 = *MEMORY[0x277D22618];
    v7 = v1[13];
    v7(v3);
    v8 = sub_24E3444F8();
    v82 = v8;
    v83 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v81);
    v79 = v0;
    v80 = MEMORY[0x277D22628];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
    v61 = v1[2];
    v61(boxed_opaque_existential_1, v3, v0);
    sub_24E344508();
    v10 = v1[1];
    v10(v3, v0);
    v53 = v4;
    v55(v3, v62, v4);
    v59 = v1 + 13;
    v57 = v7;
    (v7)(v3, v60, v0);
    v11 = v8;
    v79 = v8;
    v80 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v78);
    v76 = v0;
    v77 = MEMORY[0x277D22628];
    v12 = __swift_allocate_boxed_opaque_existential_1(&v75);
    v56 = v1 + 2;
    v61(v12, v3, v0);
    sub_24E344508();
    v58 = v10;
    v62 = (v1 + 1);
    v10(v3, v0);
    v77 = MEMORY[0x277D22A30];
    v76 = MEMORY[0x277D839F8];
    *&v75 = 0x4024000000000000;
    if (qword_27F1DD8A8 != -1)
    {
      swift_once();
    }

    v13 = v53;
    v14 = __swift_project_value_buffer(v53, qword_27F1E5A10);
    v15 = v55;
    v55(v3, v14, v13);
    v16 = v57;
    v57(v3, v60, v0);
    v52 = v11;
    v73 = v11;
    v74 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v72);
    v17 = v16;
    v70 = v0;
    v18 = MEMORY[0x277D22628];
    v71 = MEMORY[0x277D22628];
    v19 = __swift_allocate_boxed_opaque_existential_1(&v69);
    v61(v19, v3, v0);
    sub_24E344508();
    v58(v3, v0);
    v15(v3, v14, v13);
    v17(v3, v60, v0);
    v20 = v52;
    v70 = v52;
    v71 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v69);
    v67 = v0;
    v68 = v18;
    v21 = __swift_allocate_boxed_opaque_existential_1(&v66);
    v22 = v61;
    v61(v21, v3, v0);
    sub_24E344508();
    v23 = v58;
    v58(v3, v0);
    v24 = *MEMORY[0x277D76918];
    *v3 = *MEMORY[0x277D76918];
    v57(v3, *MEMORY[0x277D22620], v0);
    v67 = v20;
    v68 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v66);
    v64 = v0;
    v65 = MEMORY[0x277D22628];
    v25 = __swift_allocate_boxed_opaque_existential_1(v63);
    v22(v25, v3, v0);
    v26 = v24;
    sub_24E344508();
    v23(v3, v0);
    v27 = 0x4040000000000000;
  }

  else
  {
    v85 = MEMORY[0x277D839F8];
    v86 = MEMORY[0x277D22A30];
    *&v84 = 0x4024000000000000;
    if (qword_27F1DD8A0 != -1)
    {
      swift_once();
    }

    v28 = sub_24E344158();
    v62 = __swift_project_value_buffer(v28, qword_27F1E59F8);
    v29 = *(v28 - 8);
    v30 = *(v29 + 16);
    v54 = v29 + 16;
    v55 = v30;
    v30(v3, v62, v28);
    v60 = *MEMORY[0x277D22618];
    v31 = v1[13];
    v31(v3);
    v32 = sub_24E3444F8();
    v82 = v32;
    v83 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v81);
    v79 = v0;
    v80 = MEMORY[0x277D22628];
    v33 = __swift_allocate_boxed_opaque_existential_1(&v78);
    v61 = v1[2];
    v61(v33, v3, v0);
    sub_24E344508();
    v34 = v1[1];
    v34(v3, v0);
    v53 = v28;
    v55(v3, v62, v28);
    v59 = v1 + 13;
    v57 = v31;
    (v31)(v3, v60, v0);
    v35 = v32;
    v79 = v32;
    v80 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v78);
    v76 = v0;
    v77 = MEMORY[0x277D22628];
    v36 = __swift_allocate_boxed_opaque_existential_1(&v75);
    v56 = v1 + 2;
    v61(v36, v3, v0);
    sub_24E344508();
    v58 = v34;
    v62 = (v1 + 1);
    v34(v3, v0);
    v77 = MEMORY[0x277D22A30];
    v76 = MEMORY[0x277D839F8];
    *&v75 = 0x4030000000000000;
    if (qword_27F1DD8A8 != -1)
    {
      swift_once();
    }

    v37 = v53;
    v38 = __swift_project_value_buffer(v53, qword_27F1E5A10);
    v39 = v55;
    v55(v3, v38, v37);
    v40 = v57;
    v57(v3, v60, v0);
    v52 = v35;
    v73 = v35;
    v74 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v72);
    v41 = v40;
    v70 = v0;
    v42 = MEMORY[0x277D22628];
    v71 = MEMORY[0x277D22628];
    v43 = __swift_allocate_boxed_opaque_existential_1(&v69);
    v61(v43, v3, v0);
    sub_24E344508();
    v58(v3, v0);
    v39(v3, v38, v37);
    v41(v3, v60, v0);
    v44 = v52;
    v70 = v52;
    v71 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v69);
    v67 = v0;
    v68 = v42;
    v45 = __swift_allocate_boxed_opaque_existential_1(&v66);
    v46 = v61;
    v61(v45, v3, v0);
    sub_24E344508();
    v47 = v58;
    v58(v3, v0);
    v48 = *MEMORY[0x277D76918];
    *v3 = *MEMORY[0x277D76918];
    v57(v3, *MEMORY[0x277D22620], v0);
    v67 = v44;
    v68 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v66);
    v64 = v0;
    v65 = MEMORY[0x277D22628];
    v49 = __swift_allocate_boxed_opaque_existential_1(v63);
    v46(v49, v3, v0);
    v50 = v48;
    sub_24E344508();
    v47(v3, v0);
    v27 = 0x4046000000000000;
  }

  xmmword_27F1E5A28 = vdupq_n_s64(v27);
  sub_24DE56CE8(&v84, &unk_27F1E5A38);
  qword_27F1E5A60 = 4;
  sub_24DE56CE8(&v81, &unk_27F1E5A68);
  sub_24DE56CE8(&v78, &unk_27F1E5A90);
  sub_24DE56CE8(&v75, &unk_27F1E5AB8);
  sub_24DE56CE8(&v72, &unk_27F1E5AE0);
  sub_24DE56CE8(&v69, &unk_27F1E5B08);
  result = sub_24DE56CE8(&v66, &unk_27F1E5B30);
  qword_27F1E5B58 = 0;
  unk_27F1E5B60 = 0;
  return result;
}

char *sub_24E158D04(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47 - v12;
  v14 = OBJC_IVAR____TtC12GameCenterUI10DetailView_separator;
  type metadata accessor for SeparatorView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC12GameCenterUI10DetailView_chevronView] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView] = 0;
  OUTLINED_FUNCTION_11_31(OBJC_IVAR____TtC12GameCenterUI10DetailView_accessory);
  v15 = &v4[OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryAction];
  *v15 = 0;
  *(v15 + 1) = 0;
  v4[OBJC_IVAR____TtC12GameCenterUI10DetailView_disabled] = 0;
  v16 = &v4[OBJC_IVAR____TtC12GameCenterUI10DetailView_selectionHandler];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI10DetailView_tapGestureRecognizer] = 0;
  v4[OBJC_IVAR____TtC12GameCenterUI10DetailView_style] = 0;
  v17 = &v4[OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC12GameCenterUI10DetailView_imageView] = v18;
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v19 = type metadata accessor for PlayerCardTheme();
  v20 = __swift_project_value_buffer(v19, qword_27F20BF00);
  if (*v20 == 1)
  {
    if (qword_27F1DD8A0 != -1)
    {
      swift_once();
    }

    v21 = qword_27F1E59F8;
  }

  else
  {
    if (qword_27F1DDF90 != -1)
    {
      OUTLINED_FUNCTION_0_115();
    }

    v21 = &unk_27F20BAB0;
  }

  v22 = sub_24E344158();
  __swift_project_value_buffer(v22, v21);
  OUTLINED_FUNCTION_22_0();
  (*(v23 + 16))(v13);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v22);
  v24 = type metadata accessor for DynamicTypeLabel();
  v25 = objc_allocWithZone(v24);
  *&v5[OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel] = OUTLINED_FUNCTION_5_64();
  if (qword_27F1DD8A8 != -1)
  {
    swift_once();
  }

  v26 = sub_24E344158();
  __swift_project_value_buffer(v26, qword_27F1E5A10);
  OUTLINED_FUNCTION_22_0();
  (*(v27 + 16))(v13);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v26);
  v28 = objc_allocWithZone(v24);
  *&v5[OBJC_IVAR____TtC12GameCenterUI10DetailView_subtitleLabel] = OUTLINED_FUNCTION_5_64();
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v47, sel_initWithFrame_, a1, a2, a3, a4);
  v30 = *MEMORY[0x277D768C8];
  v31 = *(MEMORY[0x277D768C8] + 8);
  v32 = *(MEMORY[0x277D768C8] + 16);
  v33 = *(MEMORY[0x277D768C8] + 24);
  v34 = v29;
  [v34 setLayoutMargins_];
  v35 = OBJC_IVAR____TtC12GameCenterUI10DetailView_imageView;
  v36 = *&v34[OBJC_IVAR____TtC12GameCenterUI10DetailView_imageView];
  v37 = [v34 backgroundColor];
  [v36 setBackgroundColor_];

  [*&v34[v35] setContentMode_];
  sub_24DFD8050(0xD000000000000023, 0x800000024E3A9140, *&v34[v35]);
  OUTLINED_FUNCTION_5_26();
  v38 = OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel;
  [*&v34[OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel] setLineBreakMode_];
  sub_24DFD8050(0xD00000000000001FLL, 0x800000024E3A9170, *&v34[v38]);
  OUTLINED_FUNCTION_5_26();
  v39 = OBJC_IVAR____TtC12GameCenterUI10DetailView_subtitleLabel;
  v40 = *&v34[OBJC_IVAR____TtC12GameCenterUI10DetailView_subtitleLabel];
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 secondaryLabelColor];
  [v42 setTextColor_];

  v44 = [*&v34[v39] layer];
  if (*&v20[*(v19 + 56) + 8])
  {
    v45 = sub_24E347CB8();
  }

  else
  {
    v45 = 0;
  }

  [v44 setCompositingFilter_];

  swift_unknownObjectRelease();
  sub_24DFD8050(0xD000000000000022, 0x800000024E3A9190, *&v34[v39]);
  OUTLINED_FUNCTION_5_26();
  OUTLINED_FUNCTION_5_26();

  return v34;
}

void sub_24E15929C()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI10DetailView_separator;
  type metadata accessor for SeparatorView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_chevronView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView) = 0;
  OUTLINED_FUNCTION_11_31(OBJC_IVAR____TtC12GameCenterUI10DetailView_accessory);
  v2 = (v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryAction);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_disabled) = 0;
  v3 = (v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_selectionHandler);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_tapGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_style) = 0;
  v4 = (v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler);
  *v4 = 0;
  v4[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E1593D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + *a3);
  if (a2)
  {
    v5 = sub_24E347CB8();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText_];
}

void sub_24E159454(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_imageView];
  if (a1)
  {
    v4 = a1;
    v3 = [v4 imageWithRenderingMode_];
    [v2 setImage_];
  }

  else
  {
    v4 = 0;
    [v2 setImage_];
  }

  [v1 setNeedsLayout];
}

void sub_24E159514(void *a1)
{
  [a1 removeFromSuperview];
  v2 = *&v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_chevronView];
  if (v2)
  {
    v3 = v2;
    sub_24DFD8050(0xD000000000000029, 0x800000024E3A90F0, v3);
    [v1 addSubview_];
  }
}

void sub_24E1595B4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI10DetailView_chevronView);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI10DetailView_chevronView) = a1;
  v2 = a1;
  sub_24E159514(v3);
}

id sub_24E159614()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView];
  if (v1)
  {
    v2 = v1;
    sub_24DFD8050(0xD00000000000002FLL, 0x800000024E3A90C0, v2);
    [v0 addSubview_];
  }

  return [v0 setNeedsLayout];
}

void sub_24E1596A4(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView;
    v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_24E159614();
}

uint64_t sub_24E159728()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12GameCenterUI10DetailView_accessory;
  swift_beginAccess();
  sub_24DF8F3A8(v1 + v2, __src, &qword_27F1DEE88);
  if (__src[64] == 255)
  {
    return sub_24DF8F34C(__src, &qword_27F1DEE88);
  }

  memcpy(__dst, __src, 0x41uLL);
  v3 = sub_24E073800();
  sub_24E1596A4(v3);
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView))
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      [v4 addTarget:v1 action:sel_didTapWithAccessoryView_ forControlEvents:64];
    }

    else
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        [v6 addTarget:v1 action:sel_didTapWithAccessoryView_ forControlEvents:4096];
      }
    }
  }

  return sub_24DF9D524(__dst);
}