uint64_t sub_190C5E500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61318);
  MEMORY[0x1EEE9AC00](v16);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61320);
  v15 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  v9 = v18[0];
  swift_getKeyPath();
  v18[0] = v9;
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  v18[0] = v9;
  sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  v18[0] = v9;
  sub_190D51C20();

  v10 = [*(*(v9 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) shouldShowAutoDonationAction];

  if (v10)
  {
    MEMORY[0x1EEE9AC00](v11);
    v12 = *(a1 + 24);
    *(&v15 - 4) = *(a1 + 16);
    *(&v15 - 3) = v12;
    *(&v15 - 2) = v2;
    sub_190C603A0(v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61338);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61348);
    sub_190C64B94();
    sub_190C64CE0();
    sub_190D562F0();
    v13 = v15;
    (*(v15 + 16))(v5, v8, v6);
    swift_storeEnumTagMultiPayload();
    sub_190C64AFC();
    sub_190D54C50();
    return (*(v13 + 8))(v8, v6);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_190C64AFC();
    return sub_190D54C50();
  }
}

uint64_t sub_190C5E8DC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD612F8);
  sub_190233640(&qword_1EAD61300, &qword_1EAD612F8);
  sub_190D562E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD611F8);
  *(a1 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_190C5E9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = *(v8 + 24);
  v17 = *(v8 + 16);
  v18 = v17;
  v19 = v9;
  v20 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61210);
  sub_190233640(&qword_1EAD61218, &qword_1EAD61210);
  sub_190D562E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61220) + 36)) = v21;
  v10 = [objc_opt_self() defaultCenter];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD611E8);
  sub_190D579C0();

  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v17;
  *(v13 + 24) = v9;
  result = (*(v6 + 32))(v13 + v12, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v15 = (a2 + *(v11 + 56));
  *v15 = sub_190C64424;
  v15[1] = v13;
  return result;
}

uint64_t sub_190C5EC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  v6 = *(v5 - 8);
  v42 = v5;
  v43 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v34 - v7;
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v34 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C58);
  MEMORY[0x1EEE9AC00](v41);
  v16 = v34 - v15;
  sub_190D53970();
  v17 = sub_190D539A0();
  (*(*(v17 - 8) + 56))(v14, 0, 1, v17);
  (*(v9 + 16))(v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = *(a1 + 16);
  v39 = *(a1 + 24);
  v21 = v39;
  v40 = v20;
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  (*(v9 + 32))(v19 + v18, v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v38 = v16;
  sub_190D56020();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  v22 = sub_190C5B3E4();

  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = (v22 & 1) == 0;
  v25 = &v16[*(v41 + 36)];
  *v25 = KeyPath;
  v25[1] = sub_1908D9D28;
  v25[2] = v24;
  v26 = sub_190D549E0();
  v36 = v27;
  v37 = v26;
  v35 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  v34[1] = v3;
  sub_190D56330();
  swift_getKeyPath();
  v29 = v42;
  sub_190D56350();

  (*(v43 + 8))(v8, v29);
  v45 = v40;
  v46 = v39;
  v47 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  sub_19096421C();
  sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  v30 = v44;
  v31 = v38;
  sub_190D559A0();

  sub_19022EEA4(v31, &qword_1EAD57C58);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  v32 = v48;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD611D8);
  *(v30 + *(result + 36)) = v32;
  return result;
}

uint64_t sub_190C5F174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  v6 = *(v5 - 8);
  v34 = v5;
  v35 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v32 = v29 - v7;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v11 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v29 - v13;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v36 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v31 = v29 - v15;
  sub_190D53970();
  v16 = sub_190D539A0();
  (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
  (*(v8 + 16))(v11, v3, a1);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  (*(v8 + 32))(v18 + v17, v11, a1);
  sub_190D56020();
  v30 = sub_190D549E0();
  v29[3] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  v22 = v32;
  sub_190D56330();
  swift_getKeyPath();
  v23 = v34;
  sub_190D56350();

  (*(v35 + 8))(v22, v23);
  v38 = v19;
  v39 = v20;
  v40 = v3;
  sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  v24 = v33;
  v25 = v37;
  v26 = v31;
  sub_190D559A0();

  (*(v36 + 8))(v26, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  v27 = v41;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD611C8);
  *(v25 + *(result + 36)) = v27;
  return result;
}

uint64_t sub_190C5F624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v36 = a2;
  v37 = a3;
  v40 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for DetailsViewConversationSettings();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v38 = &v35 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v35 - v22;
  (*(v9 + 16))(v11, a1, v8, v21);
  v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v25 = swift_allocObject();
  v26 = v37;
  *(v25 + 16) = v36;
  *(v25 + 24) = v26;
  (*(v9 + 32))(v25 + v24, v11, v8);
  sub_190D56030();
  sub_190D53980();
  v27 = sub_190D539A0();
  (*(*(v27 - 8) + 56))(v7, 0, 1, v27);
  sub_190D56020();
  v28 = *(v13 + 16);
  v29 = v38;
  v28(v38, v23, v12);
  v30 = v39;
  v28(v39, v19, v12);
  v31 = v40;
  v28(v40, v29, v12);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62160);
  v28(&v31[*(v32 + 48)], v30, v12);
  v33 = *(v13 + 8);
  v33(v19, v12);
  v33(v23, v12);
  v33(v30, v12);
  return (v33)(v29, v12);
}

uint64_t sub_190C5FA58()
{
  v0 = sub_190D53D10();
  v9 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetailsViewConversationSettings();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v3 = v10;
  v4 = [*&v10[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation] chat];
  [v4 stopSharingLocation];

  swift_getKeyPath();
  v10 = v3;
  sub_190C64F58(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong dismissDetailsNavigationController];
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v6 = v10;
  swift_getKeyPath();
  v10 = v6;
  sub_190D51C20();

  v7 = swift_unknownObjectWeakLoadStrong();

  if (v7)
  {
    return swift_unknownObjectRelease();
  }

  sub_1909CD28C(v2);
  sub_190D53D00();
  return (*(v9 + 8))(v2, v0);
}

id sub_190C5FCE8@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190C5FDE8@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190C5FEE8@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_190D548A0();
  v2 = *(v1 - 8);
  v19 = v1;
  v20 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FC90);
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v17 - v10;
  type metadata accessor for DetailsViewConversationSettings();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56330();
  swift_getKeyPath();
  sub_190D56350();

  (*(v6 + 8))(v8, v5);
  sub_190D56180();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();

  sub_190D54890();
  sub_190233640(&qword_1EAD5FC98, &qword_1EAD5FC90);
  sub_190C64F58(&qword_1EAD61270, MEMORY[0x1E697C480]);
  v12 = v21;
  v14 = v18;
  v13 = v19;
  sub_190D557B0();
  (*(v20 + 8))(v4, v13);
  (*(v9 + 8))(v11, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  v15 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61338);
  *(v12 + *(result + 36)) = v15;
  return result;
}

id sub_190C602A0@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190C603A0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DetailsViewConversationSettings();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();

  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 0;
  if (v4 == 5)
  {
    sub_190D55DA0();
    v5 = sub_190D561E0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();

  [v2 __ck_currentDeviceIsMac];
  v6 = sub_190D552B0();
  result = sub_190D539C0();
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_190C60500@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v1 = sub_190D548A0();
  v84 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v81 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v4 = &v72 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FC90);
  v83 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v72 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61260);
  v86 = *(v8 - 8);
  v87 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v72 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61308);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v79 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v72 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v72 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v72 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v89 = &v72 - v22;
  v23 = type metadata accessor for DetailsViewConversationSettings();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  v24 = sub_190C5B500();

  v85 = v1;
  v25 = v5;
  v74 = v7;
  v75 = v5;
  v26 = v10;
  v73 = v10;
  v27 = v90;
  v72 = v4;
  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
    sub_190D56330();
    swift_getKeyPath();
    sub_190D56350();

    (*(v88 + 8))(v4, v27);
    sub_190D56180();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
    sub_190D56320();

    v28 = v81;
    sub_190D54890();
    sub_190233640(&qword_1EAD5FC98, &qword_1EAD5FC90);
    sub_190C64F58(&qword_1EAD61270, MEMORY[0x1E697C480]);
    v29 = v26;
    v30 = v85;
    sub_190D557B0();
    (*(v84 + 8))(v28, v30);
    (*(v83 + 8))(v7, v25);
    v31 = v86;
    v32 = v89;
    v33 = v29;
    v34 = v87;
    (*(v86 + 32))(v89, v33, v87);
    v35 = 0;
    v36 = v32;
  }

  else
  {
    v35 = 1;
    v31 = v86;
    v34 = v87;
    v36 = v89;
  }

  v37 = 1;
  v87 = *(v31 + 56);
  v87(v36, v35, 1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v38 = v92;
  swift_getKeyPath();
  v92 = v38;
  sub_190C64F58(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v39 = *&v38[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__visibleConversationDetailsSections];

  v40 = v91;
  v82 = v23;
  if ((v39 & 0x10) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
    v41 = v72;
    sub_190D56330();
    swift_getKeyPath();
    v42 = v90;
    sub_190D56350();

    (*(v88 + 8))(v41, v42);
    v43 = v74;
    sub_190D56180();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
    sub_190D56320();

    v44 = v81;
    sub_190D54890();
    sub_190233640(&qword_1EAD5FC98, &qword_1EAD5FC90);
    sub_190C64F58(&qword_1EAD61270, MEMORY[0x1E697C480]);
    v45 = v73;
    v46 = v75;
    v47 = v85;
    sub_190D557B0();
    (*(v84 + 8))(v44, v47);
    v48 = v43;
    v31 = v86;
    v40 = v91;
    (*(v83 + 8))(v48, v46);
    (*(v31 + 32))(v40, v45, v34);
    v37 = 0;
  }

  v87(v40, v37, 1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  v49 = v92;
  swift_getKeyPath();
  v92 = v49;
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  v50 = *&v49[OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsSharingFocusStatus];
  v51 = v90;
  v52 = v88;
  if (!v50)
  {

    goto LABEL_10;
  }

  v53 = v50;
  v54 = [v53 BOOLValue];

  if (!v54)
  {
LABEL_10:
    v63 = 1;
    v62 = v76;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  v55 = v72;
  sub_190D56330();
  swift_getKeyPath();
  sub_190D56350();

  (*(v52 + 8))(v55, v51);
  v56 = v31;
  v57 = v74;
  sub_190D56180();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();

  v58 = v81;
  sub_190D54890();
  sub_190233640(&qword_1EAD5FC98, &qword_1EAD5FC90);
  sub_190C64F58(&qword_1EAD61270, MEMORY[0x1E697C480]);
  v59 = v73;
  v60 = v75;
  v61 = v85;
  sub_190D557B0();
  (*(v84 + 8))(v58, v61);
  (*(v83 + 8))(v57, v60);
  v62 = v76;
  (*(v56 + 32))(v76, v59, v34);
  v63 = 0;
LABEL_11:
  v87(v62, v63, 1, v34);
  v64 = v89;
  v65 = v77;
  sub_19022FD14(v89, v77, &qword_1EAD61308);
  v66 = v91;
  v67 = v78;
  sub_19022FD14(v91, v78, &qword_1EAD61308);
  v68 = v79;
  sub_19022FD14(v62, v79, &qword_1EAD61308);
  v69 = v80;
  sub_19022FD14(v65, v80, &qword_1EAD61308);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61310);
  sub_19022FD14(v67, v69 + *(v70 + 48), &qword_1EAD61308);
  sub_19022FD14(v68, v69 + *(v70 + 64), &qword_1EAD61308);
  sub_19022EEA4(v62, &qword_1EAD61308);
  sub_19022EEA4(v66, &qword_1EAD61308);
  sub_19022EEA4(v64, &qword_1EAD61308);
  sub_19022EEA4(v68, &qword_1EAD61308);
  sub_19022EEA4(v67, &qword_1EAD61308);
  return sub_19022EEA4(v65, &qword_1EAD61308);
}

id sub_190C6119C@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190C612A4@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190C613A4@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190C614A4@<X0>(uint64_t a1@<X8>)
{
  sub_190D56030();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61228);
  *(a1 + *(result + 36)) = v3;
  return result;
}

id sub_190C6156C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_190D515F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D515E0();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_19022EEA4(v2, &unk_1EAD55F20);
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v8 = result;
    v9 = sub_190D51570();
    sub_190820FDC(MEMORY[0x1E69E7CC0]);
    v10 = sub_190D56D60();

    [v8 openSensitiveURL:v9 withOptions:v10];

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190C61798@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    v7 = sub_190D555F0();
    v9 = v8;
    v11 = v10;
    sub_190D55360();
    v12 = sub_190D555B0();
    v14 = v13;
    v16 = v15;

    sub_19081E474(v7, v9, v11 & 1);

    type metadata accessor for DetailsViewConversationSettings();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
    sub_190D56320();
    if (qword_1EAD51FD0 != -1)
    {
      swift_once();
    }

    result = [qword_1EAD61068 detailsTextColor];
    if (result)
    {

      sub_190D55CE0();
      v17 = sub_190D55570();
      v19 = v18;
      v21 = v20;
      v23 = v22;

      sub_19081E474(v12, v14, v16 & 1);

      *a1 = v17;
      *(a1 + 8) = v19;
      *(a1 + 16) = v21 & 1;
      *(a1 + 24) = v23;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_190C619F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v107 = a1;
  v102 = a4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61228);
  MEMORY[0x1EEE9AC00](v93);
  v75 = &v74 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61230);
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v74 - v7;
  v90 = sub_190D54930();
  v85 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v83 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61238);
  v82 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v79 = &v74 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61240);
  v86 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v84 = &v74 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61248);
  v98 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v88 = &v74 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61250);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v101 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v74 - v15;
  v106 = sub_190D548A0();
  v108 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v74 - v19;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FC90);
  v105 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v22 = &v74 - v21;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61260);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v74 - v25;
  v80 = a2;
  v81 = a3;
  type metadata accessor for DetailsViewConversationSettings();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56330();
  swift_getKeyPath();
  sub_190D56350();

  v27 = *(v18 + 8);
  v77 = v20;
  v78 = v17;
  v76 = v18 + 8;
  v27(v20, v17);
  sub_190D56180();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();

  v28 = v104;
  sub_190D54890();
  sub_190233640(&qword_1EAD5FC98, &qword_1EAD5FC90);
  sub_190C64F58(&qword_1EAD61270, MEMORY[0x1E697C480]);
  v94 = v26;
  v29 = v103;
  v30 = v106;
  sub_190D557B0();
  (*(v108 + 8))(v28, v30);
  (*(v105 + 8))(v22, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  LOBYTE(v28) = sub_190C5BE58();

  if ((v28 & 1) == 0)
  {
    v59 = 1;
    v60 = v99;
LABEL_8:
    (*(v98 + 56))(v60, v59, 1, v100);
    v63 = v96;
    v64 = *(v96 + 16);
    v65 = v95;
    v66 = v94;
    v67 = v97;
    v64(v95, v94, v97);
    v68 = v101;
    sub_19022FD14(v60, v101, &unk_1EAD61250);
    v69 = v102;
    v64(v102, v65, v67);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61278);
    sub_19022FD14(v68, &v69[*(v70 + 48)], &unk_1EAD61250);
    sub_19022EEA4(v60, &unk_1EAD61250);
    v71 = *(v63 + 8);
    v71(v66, v67);
    sub_19022EEA4(v68, &unk_1EAD61250);
    return (v71)(v65, v67);
  }

  v31 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  v32 = v112;
  swift_getKeyPath();
  *&v112 = v32;
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  v33 = *(v32 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__availableTranslationLocales);
  sub_190D52690();

  v34 = *(v33 + 16);

  if (!v34)
  {
    v61 = v75;
    sub_190C614A4(v75);
    sub_190C64574(v61, v92);
    swift_storeEnumTagMultiPayload();
    v62 = sub_190233640(&qword_1EAD61290, &qword_1EAD61238);
    *&v112 = v87;
    *(&v112 + 1) = v90;
    v113 = v62;
    v114 = MEMORY[0x1E697C4D8];
    swift_getOpaqueTypeConformance2();
    sub_190C644BC();
    v58 = v88;
    sub_190D54C50();
    sub_19022EEA4(v61, &qword_1EAD61228);
    goto LABEL_7;
  }

  result = CKFrameworkBundle();
  if (result)
  {
    v36 = result;
    v37 = sub_190D56ED0();
    v38 = sub_190D56ED0();
    v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

    v40 = sub_190D56F10();
    v42 = v41;

    v115 = v40;
    v116 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
    v43 = v77;
    sub_190D56330();
    swift_getKeyPath();
    v44 = v78;
    sub_190D56350();

    v45 = v31(v43, v44);
    v109 = v112;
    v110 = v113;
    v111 = v114;
    MEMORY[0x1EEE9AC00](v45);
    v46 = v81;
    *(&v74 - 4) = v80;
    *(&v74 - 3) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61280);
    v47 = sub_190233640(&qword_1EAD61288, &qword_1EAD61280);
    v48 = sub_19081E484();
    v72 = v47;
    v73 = v48;
    v49 = v79;
    sub_190D56140();
    v50 = v83;
    sub_190D54920();
    v51 = sub_190233640(&qword_1EAD61290, &qword_1EAD61238);
    v52 = MEMORY[0x1E697C4D8];
    v53 = v84;
    v54 = v87;
    v55 = v90;
    sub_190D55790();
    (*(v85 + 8))(v50, v55);
    (*(v82 + 8))(v49, v54);
    v56 = v86;
    v57 = v91;
    (*(v86 + 16))(v92, v53, v91);
    swift_storeEnumTagMultiPayload();
    *&v112 = v54;
    *(&v112 + 1) = v55;
    v113 = v51;
    v114 = v52;
    swift_getOpaqueTypeConformance2();
    sub_190C644BC();
    v58 = v88;
    sub_190D54C50();
    (*(v56 + 8))(v53, v57);
LABEL_7:
    v60 = v99;
    sub_19081E40C(v58, v99, &qword_1EAD61248);
    v59 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_190C62898@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190C62998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v60 = a3;
  v67 = a4;
  v59 = sub_190D51920();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_190D519C0();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD612A8);
  v69 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = (&v53 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD612B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v53 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD612B8);
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  type metadata accessor for DetailsViewConversationSettings();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  v17 = v75;
  swift_getKeyPath();
  v75 = v17;
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  v18 = *(v17 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__availableTranslationLocales);
  sub_190D52690();

  v79 = v18;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
  sub_190233640(&qword_1EAD612C8, &unk_1EAD57920);
  v75 = MEMORY[0x1E6981148];
  v76 = MEMORY[0x1E69E6158];
  v77 = MEMORY[0x1E6981138];
  v78 = MEMORY[0x1E69E6168];
  v68 = 1;
  swift_getOpaqueTypeConformance2();
  v63 = v16;
  v19 = v61;
  sub_190D56280();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  v20 = v75;
  swift_getKeyPath();
  v75 = v20;
  sub_190D51C20();

  v21 = *(v20 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__availableTranslationLocales);
  sub_190D52690();

  v72 = a2;
  v73 = v60;
  v74 = a1;
  LOBYTE(v20) = sub_190CA8558(sub_190C645F0, v71, v21);

  if ((v20 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
    sub_190D56320();
    sub_190C5C170();

    v22 = v53;
    sub_190D518B0();
    v23 = v57;
    v24 = v55;
    v25 = v59;
    (*(v57 + 104))(v55, *MEMORY[0x1E69A6658], v59);
    v26 = sub_190D51900();
    v28 = v27;
    (*(v23 + 8))(v24, v25);
    (*(v54 + 8))(v22, v56);
    v75 = v26;
    v76 = v28;
    sub_19081E484();
    v29 = sub_190D555F0();
    v31 = v30;
    v32 = v19;
    v34 = v33;
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
    sub_190D56320();
    v37 = sub_190C5C170();
    v39 = v38;

    v40 = v58;
    *v58 = v29;
    v40[1] = v31;
    v41 = v34 & 1;
    v19 = v32;
    *(v40 + 16) = v41;
    v40[3] = v36;
    v40[4] = v37;
    v40[5] = v39;
    *(v40 + 48) = 1;
    (*(v69 + 32))(v70);
    v68 = 0;
  }

  v42 = v70;
  (*(v69 + 56))(v70, v68, 1, v19);
  v44 = v62;
  v43 = v63;
  v45 = *(v62 + 16);
  v46 = v64;
  v47 = v65;
  v45(v65, v63, v64);
  v48 = v66;
  sub_19022FD14(v42, v66, &qword_1EAD612B0);
  v49 = v67;
  v45(v67, v47, v46);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD612D0);
  sub_19022FD14(v48, &v49[*(v50 + 48)], &qword_1EAD612B0);
  sub_19022EEA4(v42, &qword_1EAD612B0);
  v51 = *(v44 + 8);
  v51(v43, v46);
  sub_19022EEA4(v48, &qword_1EAD612B0);
  return (v51)(v47, v46);
}

uint64_t sub_190C631D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D51920();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D519C0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v22 = *a1;
  sub_190D52690();
  sub_190D518B0();
  (*(v5 + 104))(v7, *MEMORY[0x1E69A6658], v4);
  v13 = sub_190D51900();
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  v23 = v13;
  v24 = v15;
  sub_19081E484();
  *a2 = sub_190D555F0();
  *(a2 + 8) = v16;
  *(a2 + 16) = v17 & 1;
  v18 = v22;
  *(a2 + 24) = v19;
  *(a2 + 32) = v18;
  *(a2 + 40) = v12;
  *(a2 + 48) = 1;
  return sub_190D52690();
}

uint64_t sub_190C633E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for DetailsViewConversationSettings();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  v3 = sub_190C5C170();
  v5 = v4;

  if (v1 == v3 && v2 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_190D58760();
  }

  return v7 & 1;
}

uint64_t sub_190C634B0()
{
  type metadata accessor for DetailsViewConversationSettings();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  sub_190D52100();
  sub_190D520F0();
  v0 = sub_190D520C0();

  sub_190C58518(v0);
}

uint64_t sub_190C63550()
{
  type metadata accessor for DetailsViewConversationSettings();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  [*(v5[2] + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) leave];

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  if (*(v5 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isPresentingLeaveAlert))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
    sub_190D51C10();
  }

  else
  {
    *(v5 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isPresentingLeaveAlert) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v1 = v5;
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v2 = [*(v5 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) chat];
  if (v2)
  {
    v3 = v2;
    [v2 hasRecipientsFollowingLocation];

    v1 = v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  return sub_190D55FE0();
}

id sub_190C63888@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190C63988(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for DetailsViewConversationSettings();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 5)
  {
  }

  if (*(v9 + *a4))
  {
    *(v9 + *a4) = 1;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C10();
}

id sub_190C63B18@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190C63C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[0] = a5;
  v20[1] = a6;
  v9 = type metadata accessor for DetailsViewConversationSettings();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v20 - v14;
  sub_190D53970();
  v16 = sub_190D539A0();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  (*(v10 + 32))(v18 + v17, v12, v9);
  return sub_190D56020();
}

uint64_t sub_190C63E08()
{
  type metadata accessor for DetailsViewConversationSettings();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  sub_190CEDD98();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  sub_190D56320();
  if (v5[OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isPresentingDeleteAndBlockAlert])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
    sub_190D51C10();
  }

  else
  {
    v5[OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isPresentingDeleteAndBlockAlert] = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v1 = v5;
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v2 = [*&v5[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation] chat];
  if (v2)
  {
    v3 = v2;
    [v2 hasSiblingRecipientsSharingLocation];

    v1 = v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  return sub_190D55FE0();
}

id sub_190C640BC@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190C641F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CEE300();
  *a1 = result & 1;
  return result;
}

id sub_190C64250@<X0>(uint64_t *a1@<X0>, SEL *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  result = [*(v5 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) *a2];
  *a3 = result;
  return result;
}

unint64_t sub_190C64350()
{
  result = qword_1EAD611A0;
  if (!qword_1EAD611A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61180);
    sub_190233640(&qword_1EAD611A8, &unk_1EAD611B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD611A0);
  }

  return result;
}

uint64_t sub_190C64424()
{
  type metadata accessor for DetailsViewConversationSettings();

  return sub_190C634B0();
}

unint64_t sub_190C644BC()
{
  result = qword_1EAD61298;
  if (!qword_1EAD61298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61228);
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    sub_190B06BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61298);
  }

  return result;
}

uint64_t sub_190C64574(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61228);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C64724(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for DetailsViewConversationSettings() - 8);
  return sub_190C63988(v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v4, a1);
}

uint64_t objectdestroyTm_47()
{
  v1 = type metadata accessor for DetailsViewConversationSettings();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v1[9];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[10];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  if (*(v0 + v3 + v1[11]))
  {
  }

  v9 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D53D10();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190C64A00(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for DetailsViewConversationSettings() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

unint64_t sub_190C64AFC()
{
  result = qword_1EAD61328;
  if (!qword_1EAD61328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61320);
    sub_190C64B94();
    sub_190C64CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61328);
  }

  return result;
}

unint64_t sub_190C64B94()
{
  result = qword_1EAD61330;
  if (!qword_1EAD61330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61338);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FC90);
    sub_190D548A0();
    sub_190233640(&qword_1EAD5FC98, &qword_1EAD5FC90);
    sub_190C64F58(&qword_1EAD61270, MEMORY[0x1E697C480]);
    swift_getOpaqueTypeConformance2();
    sub_190B06BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61330);
  }

  return result;
}

unint64_t sub_190C64CE0()
{
  result = qword_1EAD61340;
  if (!qword_1EAD61340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61348);
    sub_190C64D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61340);
  }

  return result;
}

unint64_t sub_190C64D6C()
{
  result = qword_1EAD61350;
  if (!qword_1EAD61350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61358);
    sub_190C64E24();
    sub_190233640(&unk_1EAD52250, &qword_1EAD55E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61350);
  }

  return result;
}

unint64_t sub_190C64E24()
{
  result = qword_1EAD61360;
  if (!qword_1EAD61360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61360);
  }

  return result;
}

uint64_t sub_190C64EA4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__availableTranslationLocales) = *(v0 + 24);
  sub_190D52690();
}

uint64_t sub_190C64F58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_190C64FF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isSharingFocusStatus);
  *(v1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isSharingFocusStatus) = v2;
  v4 = v2;
}

void sub_190C650AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsSharingFocusStatus);
  *(v1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsSharingFocusStatus) = v2;
  v4 = v2;
}

uint64_t sub_190C650EC()
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C10();

  swift_getKeyPath();
  sub_190D51C10();
}

double sub_190C652DC@<D0>(uint64_t a1@<X8>)
{
  sub_190D549E0();
  v2 = sub_190D555D0();
  v4 = v3;
  v6 = v5;
  v7 = sub_190D555B0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_19081E474(v2, v4, v6 & 1);

  LOBYTE(v2) = sub_190D552B0();
  v14 = v11 & 1;
  LODWORD(v4) = sub_190D54EA0();
  v15 = sub_190D552B0();
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61460) + 36);
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_190D54A20();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61468) + 36)) = 256;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v14;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  result = 4.0;
  *(a1 + 40) = xmmword_190DF11F0;
  *(a1 + 56) = xmmword_190DF11F0;
  *(a1 + 72) = 0;
  *(a1 + 76) = v4;
  *(a1 + 80) = v15;
  return result;
}

uint64_t sub_190C65498()
{
  swift_getKeyPath();
  sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
  sub_190D51C20();

  return *(v0 + 16);
}

uint64_t sub_190C65538@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
  sub_190D51C20();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_190C655E0(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
    sub_190D51C10();
  }

  return result;
}

void *sub_190C656E4()
{
  swift_getKeyPath();
  sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
  sub_190D51C20();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_190C6578C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
  sub_190D51C20();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_190C65844(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
    sub_190D51C10();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1902188FC(0, &qword_1EAD613B0);
  v5 = v4;
  v6 = a1;
  v7 = sub_190D57D90();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

uint64_t sub_190C659D4()
{
  swift_getKeyPath();
  sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
  sub_190D51C20();

  return *(v0 + 32);
}

uint64_t sub_190C65A74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
  sub_190D51C20();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_190C65B1C(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190C65C2C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
  sub_190D51C20();

  v3 = OBJC_IVAR____TtC7ChatKitP33_F467A9D7D96CE0C082487096A8375BFD33SearchIndexingDebugStateViewModel__throttledUntil;
  swift_beginAccess();
  return sub_19022FD14(v5 + v3, a1, &unk_1EAD5E5D0);
}

uint64_t sub_190C65D04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
  sub_190D51C20();

  v4 = OBJC_IVAR____TtC7ChatKitP33_F467A9D7D96CE0C082487096A8375BFD33SearchIndexingDebugStateViewModel__throttledUntil;
  swift_beginAccess();
  return sub_19022FD14(v3 + v4, a2, &unk_1EAD5E5D0);
}

uint64_t sub_190C65DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_19022FD14(a1, &v6 - v3, &unk_1EAD5E5D0);
  return sub_190C65E88(v4);
}

uint64_t sub_190C65E88(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC7ChatKitP33_F467A9D7D96CE0C082487096A8375BFD33SearchIndexingDebugStateViewModel__throttledUntil;
  swift_beginAccess();
  sub_19022FD14(v1 + v6, v5, &unk_1EAD5E5D0);
  v7 = sub_190C68474(v5, a1);
  sub_19022EEA4(v5, &unk_1EAD5E5D0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
    sub_190D51C10();
  }

  else
  {
    sub_19022FD14(a1, v5, &unk_1EAD5E5D0);
    swift_beginAccess();
    sub_190C32FD4(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_19022EEA4(a1, &unk_1EAD5E5D0);
}

uint64_t sub_190C66090(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7ChatKitP33_F467A9D7D96CE0C082487096A8375BFD33SearchIndexingDebugStateViewModel__throttledUntil;
  swift_beginAccess();
  sub_190C687B0(a2, a1 + v4);
  return swift_endAccess();
}

void *sub_190C660FC()
{
  swift_getKeyPath();
  sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
  sub_190D51C20();

  v1 = *(v0 + OBJC_IVAR____TtC7ChatKitP33_F467A9D7D96CE0C082487096A8375BFD33SearchIndexingDebugStateViewModel__throttleMonitor);
  v2 = v1;
  return v1;
}

id sub_190C661AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
  sub_190D51C20();

  v4 = *(v3 + OBJC_IVAR____TtC7ChatKitP33_F467A9D7D96CE0C082487096A8375BFD33SearchIndexingDebugStateViewModel__throttleMonitor);
  *a2 = v4;

  return v4;
}

void sub_190C6626C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7ChatKitP33_F467A9D7D96CE0C082487096A8375BFD33SearchIndexingDebugStateViewModel__throttleMonitor;
  v5 = *(v1 + OBJC_IVAR____TtC7ChatKitP33_F467A9D7D96CE0C082487096A8375BFD33SearchIndexingDebugStateViewModel__throttleMonitor);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
    sub_190D51C10();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1902188FC(0, &qword_1EAD613A0);
  v6 = v5;
  v7 = a1;
  v8 = sub_190D57D90();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_190C66404()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v1 = OBJC_IVAR____TtC7ChatKitP33_F467A9D7D96CE0C082487096A8375BFD33SearchIndexingDebugStateViewModel__throttledUntil;
  v2 = sub_190D51840();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC7ChatKitP33_F467A9D7D96CE0C082487096A8375BFD33SearchIndexingDebugStateViewModel__throttleMonitor) = 0;
  sub_190D51C50();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = objc_allocWithZone(MEMORY[0x1E69A5DE8]);
  v8[4] = sub_190C68034;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_190896518;
  v8[3] = &block_descriptor_114;
  v5 = _Block_copy(v8);
  sub_190D50920();

  v6 = [v4 initWithChangeHandler_];
  _Block_release(v5);

  sub_190C6626C(v6);
  return v0;
}

uint64_t sub_190C66584(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = a1 & 1;
    if (*(Strong + 32) == (a1 & 1))
    {
      *(Strong + 32) = v9;
    }

    else
    {
      v10 = Strong;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v18[-2] = v10;
      LOBYTE(v18[-1]) = v9;
      v18[1] = v10;
      sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
      sub_190D51C10();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v13 = [objc_opt_self() dateOfThrottlingCompletion];
      if (v13)
      {
        v14 = v13;
        sub_190D517E0();

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      v17 = sub_190D51840();
      (*(*(v17 - 8) + 56))(v4, v15, 1, v17);
      sub_19081E40C(v4, v7, &unk_1EAD5E5D0);
    }

    else
    {
      v16 = sub_190D51840();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    }

    sub_190C65E88(v7);
  }

  return result;
}

uint64_t sub_190C66868()
{
  sub_19022EEA4(v0 + OBJC_IVAR____TtC7ChatKitP33_F467A9D7D96CE0C082487096A8375BFD33SearchIndexingDebugStateViewModel__throttledUntil, &unk_1EAD5E5D0);

  v1 = OBJC_IVAR____TtC7ChatKitP33_F467A9D7D96CE0C082487096A8375BFD33SearchIndexingDebugStateViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchIndexingDebugStateViewModel()
{
  result = qword_1EAD61380;
  if (!qword_1EAD61380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190C66990()
{
  sub_1908808B4();
  if (v0 <= 0x3F)
  {
    sub_190D51C60();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_190C66A7C(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - v6;
  v8 = sub_190D51840();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v39 = a1;
  sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
  sub_190D51C20();

  if (*(a1 + 32) != 1)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  v39 = a1;
  sub_190D51C20();

  v12 = OBJC_IVAR____TtC7ChatKitP33_F467A9D7D96CE0C082487096A8375BFD33SearchIndexingDebugStateViewModel__throttledUntil;
  swift_beginAccess();
  sub_19022FD14(a1 + v12, v7, &unk_1EAD5E5D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_19022EEA4(v7, &unk_1EAD5E5D0);
LABEL_4:
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  (*(v9 + 32))(v11, v7, v8);
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_190D582B0();

  v41 = 0xD00000000000001CLL;
  v42 = 0x8000000190E7C9F0;
  sub_190D51980();
  v14 = sub_190D519C0();
  (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
  v15 = sub_190D51720();
  v17 = v16;
  sub_19022EEA4(v4, &qword_1EAD54C10);
  MEMORY[0x193AF28B0](v15, v17);

  MEMORY[0x193AF28B0](46, 0xE100000000000000);
  v18 = v42;
  v38 = v41;
  v13 = sub_1908354D4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v20 = *(v13 + 2);
  v19 = *(v13 + 3);
  if (v20 >= v19 >> 1)
  {
    v13 = sub_1908354D4((v19 > 1), v20 + 1, 1, v13);
  }

  (*(v9 + 8))(v11, v8);
  *(v13 + 2) = v20 + 1;
  v21 = &v13[16 * v20];
  *(v21 + 4) = v38;
  *(v21 + 5) = v18;
LABEL_8:
  swift_getKeyPath();
  v41 = a1;
  sub_190D51C20();

  v22 = *(a1 + 24);
  if (v22)
  {
    swift_getKeyPath();
    v41 = a1;
    v23 = v22;
    sub_190D51C20();

    if (*(a1 + 16))
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_190D582B0();
      swift_getKeyPath();
      v41 = a1;
      sub_190D51C20();

      v40 = *(a1 + 16);
      v24 = sub_190D58720();
      v26 = v25;

      v41 = v24;
      v42 = v26;
      MEMORY[0x193AF28B0](0xD000000000000022, 0x8000000190E7C990);
    }

    else
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_190D582B0();

      v41 = 0xD000000000000023;
      v42 = 0x8000000190E7C9C0;
    }

    v40 = [v23 indexRevision];
    v32 = sub_190D58720();
    MEMORY[0x193AF28B0](v32);

    MEMORY[0x193AF28B0](46, 0xE100000000000000);
    v27 = v41;
    v31 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1908354D4(0, *(v13 + 2) + 1, 1, v13);
    }

    v29 = *(v13 + 2);
    v33 = *(v13 + 3);
    v30 = v29 + 1;
    if (v29 >= v33 >> 1)
    {
      v13 = sub_1908354D4((v33 > 1), v29 + 1, 1, v13);
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1908354D4(0, *(v13 + 2) + 1, 1, v13);
    }

    v27 = 0xD000000000000019;
    v29 = *(v13 + 2);
    v28 = *(v13 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v13 = sub_1908354D4((v28 > 1), v29 + 1, 1, v13);
    }

    v31 = 0x8000000190E7C970;
  }

  *(v13 + 2) = v30;
  v34 = &v13[16 * v29];
  *(v34 + 4) = v27;
  *(v34 + 5) = v31;
  v41 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
  sub_190233640(&qword_1EAD46720, &unk_1EAD57920);
  v35 = sub_190D56DF0();

  return v35;
}

uint64_t sub_190C6717C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v43 = a2;
  v2 = sub_190D54800();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD613B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v42 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD613C0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD613C8);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD613D0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - v19;
  sub_190D547F0();
  sub_190D545B0();
  v22 = v21;
  (*(v3 + 8))(v5, v2);
  *v8 = sub_190D54AC0();
  v8[1] = v22 * 0.5;
  *(v8 + 16) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD613D8);
  sub_190C675A8(v42, v8 + *(v23 + 44));
  sub_190D56500();
  sub_190D54430();
  sub_19081E40C(v8, v12, &qword_1EAD613B8);
  v24 = &v12[*(v10 + 44)];
  v25 = v49;
  *(v24 + 4) = v48;
  *(v24 + 5) = v25;
  *(v24 + 6) = v50;
  v26 = v45;
  *v24 = v44;
  *(v24 + 1) = v26;
  v27 = v47;
  *(v24 + 2) = v46;
  *(v24 + 3) = v27;
  LOBYTE(v2) = sub_190D552B0();
  sub_19081E40C(v12, v16, &qword_1EAD613C0);
  v28 = &v16[*(v14 + 44)];
  *v28 = v2;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  LODWORD(v2) = sub_190D54E90();
  LOBYTE(v5) = sub_190D552B0();
  sub_19081E40C(v16, v20, &qword_1EAD613C8);
  v29 = &v20[*(v18 + 44)];
  *v29 = v2;
  v29[4] = v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD613E0);
  v31 = v43;
  v32 = (v43 + *(v30 + 36));
  v33 = *(sub_190D543E0() + 20);
  v34 = *MEMORY[0x1E697F468];
  v35 = sub_190D54A20();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #20.0 }

  *v32 = _Q0;
  *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A00) + 36)] = 256;
  return sub_19081E40C(v20, v31, &qword_1EAD613D0);
}

void sub_190C675A8(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD613E8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34[-v9];
  v49 = sub_190C66A7C(a1);
  v50 = v11;
  sub_19081E484();
  v12 = sub_190D555F0();
  v14 = v13;
  v16 = v15;
  v43 = v17;
  KeyPath = swift_getKeyPath();
  v18 = [objc_opt_self() sharedBehaviors];
  if (v18)
  {
    v19 = v18;
    v36 = a2;
    v41 = v14;
    v37 = v12;
    v38 = v4;
    v20 = [v18 searchIndexingSubtitleFont];

    if (v20)
    {
      *(&v40 + 1) = sub_190D554B0();
      *&v40 = swift_getKeyPath();
      v21 = v16 & 1;
      v57 = v16 & 1;
      v35 = v16 & 1;
      v22 = [objc_opt_self() secondaryLabelColor];
      v39 = sub_190D55CE0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD613F0);
      sub_190233640(&qword_1EAD613F8, &qword_1EAD613F0);
      sub_190D56030();
      sub_190C6807C();
      v24 = v23;
      v25 = v5;
      v26 = *(v5 + 16);
      v27 = v38;
      v26(v7, v10, v38);
      v28 = v37;
      *&v44 = v37;
      *(&v44 + 1) = v41;
      LOBYTE(v45) = v21;
      *(&v45 + 1) = v43;
      *&v46 = KeyPath;
      BYTE8(v46) = 1;
      v47 = v40;
      v48 = v39;
      v29 = v36;
      *(v36 + 64) = v39;
      v30 = v47;
      v29[2] = v46;
      v29[3] = v30;
      v31 = v45;
      *v29 = v44;
      v29[1] = v31;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61400);
      v26(v29 + *(v32 + 48), v7, v27);
      *(v29 + *(v32 + 64)) = v24;
      sub_19022FD14(&v44, &v49, &qword_1EAD61408);
      v33 = *(v25 + 8);
      sub_190D50920();
      v33(v10, v27);

      v33(v7, v27);
      v49 = v28;
      v50 = v41;
      v51 = v35;
      v52 = v43;
      v53 = KeyPath;
      v54 = 1;
      v55 = v40;
      v56 = v39;
      sub_19022EEA4(&v49, &qword_1EAD61408);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_190C679C4()
{
  v0 = objc_opt_self();
  v1 = sub_190D56ED0();
  v2 = sub_190D56ED0();
  [v0 launchTapToRadarWithTitle:v1 description:v2];
}

void sub_190C67A78(uint64_t a1@<X8>)
{
  v2 = sub_190D55ED0();
  v3 = sub_190D55DD0();
  sub_190D549E0();
  LOWORD(v19) = 256;
  v4 = sub_190D555D0();
  v6 = v5;
  v8 = v7;
  v9 = [objc_opt_self() sharedBehaviors];
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  v20 = v3;
  v21 = v2;
  v11 = [v9 searchIndexingSubtitleFont];

  if (!v11)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_190D554B0();
  v12 = sub_190D555B0();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_19081E474(v4, v6, v8 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v12;
  *(a1 + 24) = v14;
  v16 &= 1u;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v12, v14, v16);
  sub_190D52690();
  sub_19081E474(v12, v14, v16);
}

id sub_190C67C50()
{
  if (![objc_opt_self() wantsInternalDebugInformation])
  {
    return 0;
  }

  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isSpotlightInternalIndexingUIEnabled];

  if (!v2)
  {
    return 0;
  }

  if (objc_getAssociatedObject(v0, v3))
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61398);
    if (swift_dynamicCast())
    {
      return v9;
    }

    v5 = v0;
  }

  else
  {
    v5 = v0;
    sub_19022EEA4(v12, &unk_1EAD551C0);
  }

  type metadata accessor for SearchIndexingDebugStateViewModel();
  swift_allocObject();
  *&v12[0] = sub_190C66404();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61398));
  v7 = sub_190D54B60();
  objc_setAssociatedObject(v5, v8, v7, 0x301);

  return v7;
}

id sub_190C67E5C(void *a1, void *a2)
{
  result = sub_190C67C50();
  if (result)
  {
    v5 = result;
    sub_190D54B70();

    if (*(v8 + 16) != [a1 remainingMessages])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_190C68884(&qword_1EAD61390, type metadata accessor for SearchIndexingDebugStateViewModel);
      sub_190D51C10();
    }

    v7 = a2;
    sub_190C65844(a2);
  }

  return result;
}

void sub_190C6803C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKitP33_F467A9D7D96CE0C082487096A8375BFD33SearchIndexingDebugStateViewModel__throttleMonitor);
  *(v1 + OBJC_IVAR____TtC7ChatKitP33_F467A9D7D96CE0C082487096A8375BFD33SearchIndexingDebugStateViewModel__throttleMonitor) = v2;
  v4 = v2;
}

void sub_190C6807C()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v1 = [v0 fontDescriptorWithDesign_];

  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E018);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD1D90;
    v3 = *MEMORY[0x1E69DB8F0];
    *(inited + 32) = *MEMORY[0x1E69DB8F0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B58);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_190DD1DA0;
    v5 = *MEMORY[0x1E69DB990];
    type metadata accessor for TraitKey(0);
    sub_190C68884(&qword_1EAD53660, type metadata accessor for TraitKey);
    v6 = v3;
    v7 = v5;
    sub_190D58230();
    v8 = *MEMORY[0x1E69DB970];
    type metadata accessor for Weight(0);
    *(v4 + 96) = v9;
    *(v4 + 72) = v8;
    v10 = *MEMORY[0x1E69DB8B0];
    type metadata accessor for AttributeName(0);
    sub_190C68884(&qword_1EAD44F30, type metadata accessor for AttributeName);
    v11 = v10;
    sub_190D58230();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61410);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_190DD1DA0;
    v13 = *MEMORY[0x1E69DB908];
    *(v12 + 32) = *MEMORY[0x1E69DB908];
    v14 = *MEMORY[0x1E69DB900];
    *(v12 + 40) = 38;
    *(v12 + 48) = v14;
    *(v12 + 56) = 1;
    v15 = v13;
    v16 = v14;
    v17 = sub_19082409C(v12);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61418);
    swift_arrayDestroy();
    *(v4 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61420);
    *(v4 + 144) = v17;
    v18 = sub_190821644(v4);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A00);
    swift_arrayDestroy();
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5C270);
    *(inited + 40) = v18;
    sub_190821870(inited);
    swift_setDeallocating();
    sub_19022EEA4(inited + 32, &qword_1EAD538A0);
    v19 = sub_190D56D60();

    v20 = [v1 fontDescriptorByAddingAttributes_];

    v21 = objc_opt_self();
    v22 = v20;
    [v21 smallSystemFontSize];
    v23 = [v21 fontWithDescriptor:v22 size:?];

    sub_190D554B0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190C68474(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D51840();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD613A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_19022FD14(a1, &v21 - v12, &unk_1EAD5E5D0);
  sub_19022FD14(a2, &v13[v15], &unk_1EAD5E5D0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_19022FD14(v13, v10, &unk_1EAD5E5D0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_190C68884(&qword_1EAD54D90, MEMORY[0x1E6969530]);
      v18 = sub_190D56E30();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_19022EEA4(v13, &unk_1EAD5E5D0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_19022EEA4(v13, &qword_1EAD613A8);
    v17 = 1;
    return v17 & 1;
  }

  sub_19022EEA4(v13, &unk_1EAD5E5D0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_190C687B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_190C68820()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

uint64_t sub_190C68884(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190C688DC()
{
  result = qword_1EAD61428;
  if (!qword_1EAD61428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD613E0);
    sub_190C68994();
    sub_190233640(&qword_1EAD467C8, &qword_1EAD55A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61428);
  }

  return result;
}

unint64_t sub_190C68994()
{
  result = qword_1EAD61430;
  if (!qword_1EAD61430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD613D0);
    sub_190C68A4C();
    sub_190233640(&qword_1EAD61450, &qword_1EAD61458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61430);
  }

  return result;
}

unint64_t sub_190C68A4C()
{
  result = qword_1EAD61438;
  if (!qword_1EAD61438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD613C8);
    sub_190C68AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61438);
  }

  return result;
}

unint64_t sub_190C68AD8()
{
  result = qword_1EAD61440;
  if (!qword_1EAD61440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD613C0);
    sub_190233640(&qword_1EAD61448, &qword_1EAD613B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61440);
  }

  return result;
}

unint64_t sub_190C68BAC()
{
  result = qword_1EAD61470;
  if (!qword_1EAD61470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61460);
    sub_190C68C64();
    sub_190233640(&qword_1EAD61488, &qword_1EAD61468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61470);
  }

  return result;
}

unint64_t sub_190C68C64()
{
  result = qword_1EAD61478;
  if (!qword_1EAD61478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61480);
    sub_1908BE60C();
    sub_190233640(&qword_1EAD61450, &qword_1EAD61458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61478);
  }

  return result;
}

id sub_190C68D4C()
{
  v1 = v0;
  v2 = [v0 sendingService];
  v3 = [objc_opt_self() iMessageService];
  v4 = v3;
  if (!v2)
  {
    if (v3)
    {

      return 0;
    }

    goto LABEL_7;
  }

  if (!v3)
  {

    return 0;
  }

  sub_1902188FC(0, &qword_1EAD5AE70);
  v5 = sub_190D57D90();

  if (v5)
  {
LABEL_7:
    result = [v1 chat];
    if (!result)
    {
      return result;
    }

    v7 = result;
    v8 = [result keyTransparencyStatusForAffectedHandles_];

    if (v8 <= 0x13)
    {
      return qword_190E00438[v8];
    }
  }

  return 0;
}

uint64_t sub_190C68E5C()
{
  v1 = [v0 chat];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 participants];

  sub_1902188FC(0, &qword_1EAD44E70);
  v4 = sub_190D57180();

  v12 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AF3B90](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v7 isKTVerified])
      {
        sub_190D58360();
        sub_190D583B0();
        sub_190D583C0();
        sub_190D58370();
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        v10 = v12;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v10;
}

uint64_t sub_190C69010()
{
  v1 = [v0 sendingService];
  v2 = MEMORY[0x1E69A79A0];
  if (v1)
  {
    v3 = v1;
    v4 = [v1 supportsCapability_];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v0 chat];
  if (v5)
  {
    v6 = *v2;
    v7 = v5;
    v8 = [v5 hasMessageWithServiceCapability_];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v0 hasLeftGroupChat];
  v10 = v4 | v8;
  if (v9)
  {
    v10 = 0;
  }

  return v10 & 1;
}

id sub_190C690DC()
{
  v7[1] = *MEMORY[0x1E69E9840];
  sub_1902188FC(0, &qword_1EAD44E70);
  v1 = sub_190D57160();
  v2 = [v0 chat];
  v3 = v2;
  if (v2)
  {
    v7[0] = v1;
    v4 = [v2 keyTransparencyStatusForAffectedHandles_];

    v5 = v7[0];
    v1 = v5;
  }

  else
  {
    v4 = 0;
  }

  v7[0] = 0;
  sub_190D57170();

  return v4;
}

void sub_190C69204(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = CKFrameworkBundle();
  if (!v11)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11;
  v13 = &v5[OBJC_IVAR____TtC7ChatKit32SharedWithYouDescriptionTextView_descriptionString];
  v14 = sub_190D56ED0();
  v15 = sub_190D56ED0();
  v16 = [v12 localizedStringForKey:v14 value:0 table:v15];

  v17 = sub_190D56F10();
  v19 = v18;

  *v13 = v17;
  v13[1] = v19;
  v20 = CKFrameworkBundle();
  if (!v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = v20;
  v22 = &v5[OBJC_IVAR____TtC7ChatKit32SharedWithYouDescriptionTextView_learnMoreString];
  v23 = sub_190D56ED0();
  v24 = sub_190D56ED0();
  v25 = [v21 localizedStringForKey:v23 value:0 table:v24];

  v26 = sub_190D56F10();
  v28 = v27;

  *v22 = v26;
  v22[1] = v28;
  v29 = OBJC_IVAR____TtC7ChatKit32SharedWithYouDescriptionTextView_footerTextColor;
  *&v5[v29] = [objc_opt_self() secondaryLabelColor];
  v30 = objc_opt_self();
  v31 = [v30 sharedBehaviors];
  if (!v31)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v32 = v31;
  v33 = [v31 theme];

  if (!v33)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v34 = [v33 appTintColor];

  if (!v34)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *&v5[OBJC_IVAR____TtC7ChatKit32SharedWithYouDescriptionTextView_learnMoreColor] = v34;
  v35 = [v30 sharedBehaviors];
  if (!v35)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v36 = v35;
  v37 = [v35 headerFont];

  v38 = [v30 font:v37 adjustedForMaxSizeCategory:*MEMORY[0x1E69DDC58]];
  if (v38)
  {
    *&v5[OBJC_IVAR____TtC7ChatKit32SharedWithYouDescriptionTextView_footerFont] = v38;
    v49.receiver = v5;
    v49.super_class = type metadata accessor for SharedWithYouDescriptionTextView();
    v39 = objc_msgSendSuper2(&v49, sel_initWithFrame_textContainer_, a1, a2, a3, a4, a5);
    [v39 setEditable_];
    [v39 _setInteractiveTextSelectionDisabled_];
    v40 = [v39 textContainer];
    [v40 setLineFragmentPadding_];

    v41 = *MEMORY[0x1E69DDCE0];
    v42 = *(MEMORY[0x1E69DDCE0] + 8);
    v43 = *(MEMORY[0x1E69DDCE0] + 16);
    v44 = *(MEMORY[0x1E69DDCE0] + 24);
    v45 = v39;
    [v45 setTextContainerInset_];
    [v45 setBackgroundColor_];

    v46 = v45;
    v47 = [v46 textColor];
    [v46 setTextColor_];

    [v46 setScrollEnabled_];
    [v46 setIsAccessibilityElement_];
    v48 = sub_190D56ED0();
    [v46 setAccessibilityIdentifier_];

    sub_190C69A10();
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_190C696E0(void *a1)
{
  v3 = CKFrameworkBundle();
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = &v1[OBJC_IVAR____TtC7ChatKit32SharedWithYouDescriptionTextView_descriptionString];
  v6 = sub_190D56ED0();
  v7 = sub_190D56ED0();
  v8 = [v4 localizedStringForKey:v6 value:0 table:v7];

  v9 = sub_190D56F10();
  v11 = v10;

  *v5 = v9;
  v5[1] = v11;
  v12 = CKFrameworkBundle();
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  v14 = &v1[OBJC_IVAR____TtC7ChatKit32SharedWithYouDescriptionTextView_learnMoreString];
  v15 = sub_190D56ED0();
  v16 = sub_190D56ED0();
  v17 = [v13 localizedStringForKey:v15 value:0 table:v16];

  v18 = sub_190D56F10();
  v20 = v19;

  *v14 = v18;
  v14[1] = v20;
  v21 = OBJC_IVAR____TtC7ChatKit32SharedWithYouDescriptionTextView_footerTextColor;
  *&v1[v21] = [objc_opt_self() secondaryLabelColor];
  v22 = objc_opt_self();
  v23 = [v22 sharedBehaviors];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = v23;
  v25 = [v23 theme];

  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = [v25 appTintColor];

  if (!v26)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *&v1[OBJC_IVAR____TtC7ChatKit32SharedWithYouDescriptionTextView_learnMoreColor] = v26;
  v27 = [v22 sharedBehaviors];
  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = v27;
  v29 = [v27 headerFont];

  v30 = [v22 font:v29 adjustedForMaxSizeCategory:*MEMORY[0x1E69DDC58]];
  if (!v30)
  {
LABEL_17:
    __break(1u);
    return;
  }

  *&v1[OBJC_IVAR____TtC7ChatKit32SharedWithYouDescriptionTextView_footerFont] = v30;
  v33.receiver = v1;
  v33.super_class = type metadata accessor for SharedWithYouDescriptionTextView();
  v31 = objc_msgSendSuper2(&v33, sel_initWithCoder_, a1);
  if (v31)
  {
    v32 = v31;
    sub_190C69A10();
  }
}

void sub_190C69A10()
{
  v1 = v0;
  v2 = [v0 textColor];
  [v1 setTextColor_];

  sub_190D52690();
  MEMORY[0x193AF28B0](32, 0xE100000000000000);
  MEMORY[0x193AF28B0](*&v1[OBJC_IVAR____TtC7ChatKit32SharedWithYouDescriptionTextView_learnMoreString], *&v1[OBJC_IVAR____TtC7ChatKit32SharedWithYouDescriptionTextView_learnMoreString + 8]);
  v3 = sub_190D56ED0();
  v4 = sub_190D56ED0();
  v5 = [v3 rangeOfString_];
  v7 = v6;

  v8 = sub_190D56ED0();
  v9 = [v8 length];

  v10 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v11 = sub_190D56ED0();

  v12 = [v10 initWithString_];

  [v12 addAttribute:*MEMORY[0x1E69DB648] value:*&v1[OBJC_IVAR____TtC7ChatKit32SharedWithYouDescriptionTextView_footerFont] range:{0, v9}];
  v13 = *MEMORY[0x1E69DB650];
  [v12 addAttribute:*MEMORY[0x1E69DB650] value:*&v1[OBJC_IVAR____TtC7ChatKit32SharedWithYouDescriptionTextView_footerTextColor] range:{0, v9}];
  v14 = *MEMORY[0x1E69DE720];
  v15 = sub_190D56ED0();
  [v12 addAttribute:v14 value:v15 range:{v5, v7}];

  [v12 addAttribute:v13 value:*&v1[OBJC_IVAR____TtC7ChatKit32SharedWithYouDescriptionTextView_learnMoreColor] range:{v5, v7}];
  v17 = v12;
  [v1 setAttributedText_];
  v16 = [v17 string];

  if (!v16)
  {
    sub_190D56F10();
    v16 = sub_190D56ED0();
  }

  [v1 setAccessibilityLabel_];

  [v1 setDelegate_];
}

id sub_190C69CEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_190D515F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D515E0();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_19084CF50(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v8 = result;
    v9 = sub_190D51570();
    sub_190820FDC(MEMORY[0x1E69E7CC0]);
    v10 = sub_190D56D60();

    [v8 openSensitiveURL:v9 withOptions:v10];

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190C69F94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedWithYouDescriptionTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190C6A070()
{
  type metadata accessor for SharedWithYouDescriptionTextView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_190C6A0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190C6A374();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190C6A10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190C6A374();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190C6A170()
{
  sub_190C6A374();
  sub_190D54C10();
  __break(1u);
}

id sub_190C6A198(uint64_t a1, void *a2)
{
  v3 = sub_190D575B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_190D575C0();
  if ((*(v4 + 88))(v6, v3) != *MEMORY[0x1E69DC3B0])
  {
    (*(v4 + 8))(v6, v3);
    return a2;
  }

  (*(v4 + 96))(v6, v3);
  if (*v6 != 0xD000000000000016 || 0x8000000190E7CA90 != v6[1])
  {
    v8 = sub_190D58760();

    if (v8)
    {
      goto LABEL_11;
    }

    return a2;
  }

LABEL_11:
  sub_1908D84D0();
  return sub_190D57DC0();
}

unint64_t sub_190C6A374()
{
  result = qword_1EAD61528;
  if (!qword_1EAD61528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61528);
  }

  return result;
}

id UITextView.ck_textAnimationFollowing(_:)(uint64_t a1)
{
  result = [v1 attributedText];
  if (result)
  {
    v13 = 0;
    v12 = 0;
    *&v4 = MEMORY[0x1EEE9AC00](result).n128_u64[0];
    v10[2] = &v12;
    v10[3] = &v13;
    v10[4] = a1;
    v6 = v5;
    v7 = [v5 length];
    v8 = swift_allocObject();
    *(v8 + 16) = sub_190B19370;
    *(v8 + 24) = v10;
    aBlock[4] = sub_190B1937C;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1908A2B98;
    aBlock[3] = &block_descriptor_115;
    v9 = _Block_copy(aBlock);
    sub_190D50920();

    [v6 ck:0 enumerateTextAnimationsIn:v7 options:0 using:v9];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }

    else
    {
      return v13;
    }
  }

  return result;
}

id UITextView.ck_containsTextAnimation(_:)(uint64_t a1)
{
  result = [v1 attributedText];
  if (result)
  {
    v12 = 0;
    *&v4 = MEMORY[0x1EEE9AC00](result).n128_u64[0];
    v10[2] = a1;
    v10[3] = &v12;
    v6 = v5;
    v7 = [v5 length];
    v8 = swift_allocObject();
    *(v8 + 16) = sub_190B19390;
    *(v8 + 24) = v10;
    aBlock[4] = sub_190B19414;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1908A2B98;
    aBlock[3] = &block_descriptor_7;
    v9 = _Block_copy(aBlock);
    sub_190D50920();

    [v6 ck:0 enumerateTextAnimationsIn:v7 options:0 using:v9];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }

    else
    {
      return v12;
    }
  }

  return result;
}

Swift::Bool __swiftcall UITextView.ck_containsStaleEntryViewFont()()
{
  v1 = [v0 attributedText];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 font];
    if (v3)
    {
      v4 = v3;
      if (![v2 length])
      {
        sub_1908A631C();
        v7 = sub_190CA9A44(v4, v6);

        v5 = v7 ^ 1;
        return v5 & 1;
      }
    }

    v5 = [v2 ck_containsStaleEntryViewFont];
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

BOOL sub_190C6A7EC(void *a1)
{
  v1 = a1;
  v2 = UITextView.ck_containsStaleEntryViewFont()();

  return v2;
}

Swift::Void __swiftcall UITextView.ck_invalidateAllAnimators()()
{
  v1 = [v0 attributedText];
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v10[6] = v0;
    *&v3 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
    v10[2] = sub_190C6BF6C;
    v10[3] = v4;
    v6 = v5;
    v7 = [v5 length];
    v8 = swift_allocObject();
    *(v8 + 16) = sub_190B193F8;
    *(v8 + 24) = v10;
    aBlock[4] = sub_190B19414;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1908A2B98;
    aBlock[3] = &block_descriptor_14_1;
    v9 = _Block_copy(aBlock);
    sub_190D50920();

    [v6 ck:0 enumerateTextAnimationsIn:v7 options:0 using:v9];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }
}

id sub_190C6A9E8(uint64_t a1, int a2, int a3, id a4)
{
  result = [a4 _animatorForTextAnimation_];
  if (result)
  {
    [result invalidate];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_190C6AA54(void *a1)
{
  v1 = a1;
  UITextView.ck_invalidateAllAnimators()();
}

id UITextView.ck_firstTextAnimation()()
{
  result = [v0 attributedText];
  if (result)
  {
    v10 = 0;
    *&v2 = MEMORY[0x1EEE9AC00](result).n128_u64[0];
    v8[2] = &v10;
    v4 = v3;
    v5 = [v3 length];
    v6 = swift_allocObject();
    *(v6 + 16) = sub_190C6BF74;
    *(v6 + 24) = v8;
    aBlock[4] = sub_190B19414;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1908A2B98;
    aBlock[3] = &block_descriptor_21_5;
    v7 = _Block_copy(aBlock);
    sub_190D50920();

    [v4 ck:0 enumerateTextAnimationsIn:v5 options:0 using:v7];

    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }

    else
    {
      return v10;
    }
  }

  return result;
}

id sub_190C6AC3C(void *a1)
{
  v1 = a1;
  Text = UITextView.ck_firstTextAnimation()();

  return Text;
}

id UITextView.ck_isLastTextAnimation(_:)(uint64_t a1)
{
  result = [v1 attributedText];
  if (result)
  {
    v12 = 0;
    *&v4 = MEMORY[0x1EEE9AC00](result).n128_u64[0];
    v10[2] = &v12;
    v10[3] = a1;
    v6 = v5;
    v7 = [v5 length];
    v8 = swift_allocObject();
    *(v8 + 16) = sub_190C6BF7C;
    *(v8 + 24) = v10;
    aBlock[4] = sub_190B19414;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1908A2B98;
    aBlock[3] = &block_descriptor_28_2;
    v9 = _Block_copy(aBlock);
    sub_190D50920();

    [v6 ck:0 enumerateTextAnimationsIn:v7 options:2 using:v9];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }

    else
    {
      return v12;
    }
  }

  return result;
}

uint64_t sub_190C6AE24(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = UITextView.ck_isLastTextAnimation(_:)(a3);
  swift_unknownObjectRelease();

  return v6 & 1;
}

Swift::Bool __swiftcall UITextView.ck_hasPlayingOrPausedTextAnimator()()
{
  LODWORD(v1) = [v0 allowsTextAnimations];
  if (v1)
  {
    v1 = [v0 attributedText];
    if (v1)
    {
      v11 = 0;
      *&v2 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
      v9[2] = v0;
      v9[3] = &v11;
      v4 = v3;
      v5 = [v3 length];
      v6 = swift_allocObject();
      *(v6 + 16) = sub_190C6BF98;
      *(v6 + 24) = v9;
      aBlock[4] = sub_190B19414;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1908A2B98;
      aBlock[3] = &block_descriptor_35_1;
      v7 = _Block_copy(aBlock);
      sub_190D50920();

      [v4 ck:0 enumerateTextAnimationsIn:v5 options:0 using:v7];

      _Block_release(v7);
      LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

      if (v4)
      {
        __break(1u);
      }

      else
      {
        LOBYTE(v1) = v11;
      }
    }
  }

  return v1;
}

id sub_190C6B030(uint64_t a1, int a2, int a3, _BYTE *a4, id a5, _BYTE *a6)
{
  result = [a5 _animatorForTextAnimation_];
  if (result)
  {
    if (([result state] & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      *a6 = 1;
      *a4 = 1;
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_190C6B0C8(void *a1)
{
  v1 = a1;
  hasPlayingOrPausedText = UITextView.ck_hasPlayingOrPausedTextAnimator()();

  return hasPlayingOrPausedText;
}

Swift::UInt sub_190C6B110(void *a1, uint64_t a2, Swift::Int a3, Swift::Int a4)
{
  v6 = a1;
  v7.location = a3;
  v7.length = a4;
  rawValue = UITextView.ck_activeTextStylesInRange(_:)(v7).rawValue;

  return rawValue;
}

id sub_190C6B174(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v5 = v4;
  if (a2)
  {
    v9 = [v5 attributedText];
    if (!v9)
    {
      return 0;
    }

    v10 = v9;
    v11 = [v9 *a4];
LABEL_6:
    v14 = v11;

    return v14;
  }

  result = [v5 typingAttributes];
  if (result)
  {
    v10 = result;
    v11 = [result *a3];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_190C6B224(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = UITextView.ck_activeTextEffectTypeInRange(_:)(a3, a4);

  return v7;
}

void UITextView.ck_apply(textStyle:toRange:baseFont:undo:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (!a3)
  {
    v15 = [v7 typingAttributes];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 mutableCopy];

      if (v17)
      {
        [v17 ck:a1 toggleTextStyles:a4 baseFont:?];
        type metadata accessor for Key(0);
        sub_19082B370();
        v17;
        sub_190D56D70();
LABEL_19:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  v14 = [v7 attributedText];
  if (v14)
  {
    if (a3 >= 1)
    {
      v25 = v14;
      if ([v14 length] > a2 && objc_msgSend(v25, sel_length) >= a3 + a2)
      {
        v18 = [v7 undoManager];
        if (v18)
        {
          v19 = v18;
          v20 = swift_allocObject();
          v20[2] = a1;
          v20[3] = a2;
          v20[4] = a3;
          v20[5] = a4;
          v20[6] = a5;
          v20[7] = a6;
          sub_190C6BFB8();
          v21 = a4;
          sub_190D50920();
          sub_190D57670();
        }

        v22 = [v7 textStorage];
        [v22 beginEditing];

        v23 = [v7 textStorage];
        [v23 ck:a1 applyTextStyle:3 options:a2 range:a3];

        v24 = [v7 textStorage];
        [v24 endEditing];

        v14 = v24;
      }

      else
      {
        v14 = v25;
      }
    }
  }
}

uint64_t sub_190C6B568(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v15[4] = a6;
  v15[5] = a7;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_190840E6C;
  v15[3] = &block_descriptor_67_0;
  v13 = _Block_copy(v15);
  sub_190D50920();

  [a1 ck:a2 applyWithTextStyle:a3 toRange:a4 baseFont:a5 undo:v13];
  _Block_release(v13);
  return a6();
}

uint64_t sub_190C6B664(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *aBlock)
{
  v12 = _Block_copy(aBlock);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = a6;
  v15 = a1;
  UITextView.ck_apply(textStyle:toRange:baseFont:undo:)(a3, a4, a5, v14, sub_190841AA4, v13);
}

Swift::Void __swiftcall UITextView.ck_apply(textStyle:toRange:baseFont:)(__C::IMTextStyle textStyle, __C::_NSRange toRange, UIFont baseFont)
{
  length = toRange.length;
  location = toRange.location;
  v9[4] = nullsub_10;
  v9[5] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_190840E6C;
  v9[3] = &block_descriptor_41_2;
  v8 = _Block_copy(v9);
  [v3 ck:textStyle.rawValue applyWithTextStyle:location toRange:length baseFont:baseFont.super.isa undo:v8];
  _Block_release(v8);
}

void sub_190C6B804(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[4] = nullsub_10;
  v12[5] = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_190840E6C;
  v12[3] = &block_descriptor_57_0;
  v11 = _Block_copy(v12);
  [a1 ck:a3 applyWithTextStyle:a4 toRange:a5 baseFont:a6 undo:v11];
  _Block_release(v11);
}

void UITextView.ck_toggleTextEffectNamed(_:inRange:getAdded:undo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (a2)
  {
    v14 = sub_190D56ED0();
  }

  else
  {
    v14 = 0;
  }

  v15 = IMTextEffectTypeFromName();

  v17[4] = a6;
  v17[5] = a7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_190840E6C;
  v17[3] = &block_descriptor_44_0;
  v16 = _Block_copy(v17);
  sub_190D50920();

  [v8 ck:v15 toggleTextEffect:a3 inRange:a4 getAdded:a5 undo:v16];
  _Block_release(v16);
}

uint64_t sub_190C6B9E8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock)
{
  v12 = _Block_copy(aBlock);
  if (a3)
  {
    v13 = sub_190D56F10();
    a3 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = a1;
  UITextView.ck_toggleTextEffectNamed(_:inRange:getAdded:undo:)(v13, a3, a4, a5, a6, sub_190841AA4, v15);
}

void UITextView.ck_toggleTextEffect(_:inRange:getAdded:undo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = [v7 attributedText];
  if (!v14)
  {
    return;
  }

  if (!a3)
  {
    v22 = [v7 typingAttributes];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 mutableCopy];

      if (v24)
      {
        [v24 ck:a1 toggleTextEffect:?];
        type metadata accessor for Key(0);
        sub_19082B370();
        v24;
        sub_190D56D70();
LABEL_16:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v15 = [v7 textStorage];
  v16 = [v15 ck:a2 canToggleTextEffectInRange:a3];

  if (v16)
  {
    v17 = [v7 undoManager];
    if (v17)
    {
      v18 = v17;
      v19 = swift_allocObject();
      v19[2] = a1;
      v19[3] = a2;
      v19[4] = a3;
      v19[5] = a4;
      v19[6] = a5;
      v19[7] = a6;
      sub_190C6BFB8();
      sub_190D50920();
      sub_190D57670();
    }

    v20 = [v7 textStorage];
    [v20 beginEditing];

    v21 = [v7 textStorage];
    [v21 ck:a1 toggleTextEffectType:a2 range:a3 getAdded:a4];

    v25 = [v7 textStorage];
    [v25 endEditing];
  }
}

uint64_t sub_190C6BDB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v15[4] = a6;
  v15[5] = a7;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_190840E6C;
  v15[3] = &block_descriptor_64_0;
  v13 = _Block_copy(v15);
  sub_190D50920();

  [a1 ck:a2 toggleTextEffect:a3 inRange:a4 getAdded:a5 undo:v13];
  _Block_release(v13);
  return a6();
}

uint64_t sub_190C6BEAC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock)
{
  v12 = _Block_copy(aBlock);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = a1;
  UITextView.ck_toggleTextEffect(_:inRange:getAdded:undo:)(a3, a4, a5, a6, sub_190841A8C, v13);
}

uint64_t sub_190C6BF7C(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  **(v4 + 16) = *(v4 + 24) == result;
  *a4 = 1;
  return result;
}

unint64_t sub_190C6BFB8()
{
  result = qword_1EAD61530;
  if (!qword_1EAD61530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD61530);
  }

  return result;
}

id NavigationBarState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_190C6C0D8@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for NavigationBarState();
  v4 = [objc_allocWithZone(v3) init];
  v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_showsBackButton] = *(v1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_showsBackButton);
  *&v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_displayMode] = *(v1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_displayMode);
  v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_isTitleViewInteractable] = *(v1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_isTitleViewInteractable);
  v5 = *(v1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversation);
  v6 = *&v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversation];
  *&v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversation] = v5;
  v7 = v5;

  *&v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_unreadCount] = *(v1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_unreadCount);
  *&v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_sendProgress] = *(v1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_sendProgress);
  v8 = *(v1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_sendProgressColor);
  v9 = *&v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_sendProgressColor];
  *&v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_sendProgressColor] = v8;
  v10 = v8;

  *&v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_leadingItems] = *(v1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_leadingItems);
  sub_190D52690();

  *&v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_trailingItems] = *(v1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_trailingItems);
  sub_190D52690();

  v11 = *(v1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversationTitle);
  v12 = *&v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversationTitle];
  *&v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversationTitle] = v11;
  v13 = v11;

  v14 = *(v1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_locationText + 8);
  v15 = &v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_locationText];
  *v15 = *(v1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_locationText);
  v15[1] = v14;
  sub_190D52690();

  v16 = *(v1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_nicknameOracle);
  v17 = *(v1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_nicknameOracle + 8);
  v18 = *(v1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_nicknameOracle + 16);
  v19 = &v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_nicknameOracle];
  v20 = *&v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_nicknameOracle];
  v21 = *&v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_nicknameOracle + 8];
  *v19 = v16;
  v19[1] = v17;
  v19[2] = v18;
  sub_190C6C2B0(v16, v17);
  result = sub_1908F1D9C(v20, v21);
  v4[OBJC_IVAR____TtC7ChatKit18NavigationBarState_showGroupNameAndPhoto] = *(v1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_showGroupNameAndPhoto);
  a1[3] = v3;
  *a1 = v4;
  return result;
}

void *sub_190C6C2B0(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;

    return sub_19029063C(a2);
  }

  return result;
}

id sub_190C6C358()
{
  [v0 copy];
  sub_190D58140();
  swift_unknownObjectRelease();
  type metadata accessor for NavigationBarState();
  if (swift_dynamicCast())
  {
    return v3;
  }

  return v2;
}

id NavigationBarState.init()()
{
  v0[OBJC_IVAR____TtC7ChatKit18NavigationBarState_showsBackButton] = 1;
  *&v0[OBJC_IVAR____TtC7ChatKit18NavigationBarState_displayMode] = 0;
  v0[OBJC_IVAR____TtC7ChatKit18NavigationBarState_isTitleViewInteractable] = 1;
  *&v0[OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversation] = 0;
  *&v0[OBJC_IVAR____TtC7ChatKit18NavigationBarState_unreadCount] = 0;
  *&v0[OBJC_IVAR____TtC7ChatKit18NavigationBarState_sendProgress] = 0;
  v1 = OBJC_IVAR____TtC7ChatKit18NavigationBarState_sendProgressColor;
  v2 = objc_opt_self();
  *&v0[v1] = [v2 systemBlueColor];
  v3 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC7ChatKit18NavigationBarState_leadingItems] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC7ChatKit18NavigationBarState_trailingItems] = v3;
  v4 = OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversationTitle;
  v5 = [v2 labelColor];
  v6 = type metadata accessor for ConversationTitle();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC7ChatKit17ConversationTitle_title];
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v7[OBJC_IVAR____TtC7ChatKit17ConversationTitle_wantsChevron] = 1;
  *&v7[OBJC_IVAR____TtC7ChatKit17ConversationTitle_leadingIndicatorIcons] = v3;
  *&v7[OBJC_IVAR____TtC7ChatKit17ConversationTitle_color] = v5;
  v13.receiver = v7;
  v13.super_class = v6;
  *&v0[v4] = objc_msgSendSuper2(&v13, sel_init);
  v9 = &v0[OBJC_IVAR____TtC7ChatKit18NavigationBarState_locationText];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v0[OBJC_IVAR____TtC7ChatKit18NavigationBarState_nicknameOracle];
  v10[1] = 0;
  v10[2] = 0;
  *v10 = 0;
  v0[OBJC_IVAR____TtC7ChatKit18NavigationBarState_showGroupNameAndPhoto] = 0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for NavigationBarState();
  return objc_msgSendSuper2(&v12, sel_init);
}

id NavigationBarState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationBarState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_So34CNSharedProfileAvatarAnimationTypeVIegy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_190C6C7EC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    notify_cancel(v1);
  }

  return v0;
}

uint64_t sub_190C6C818()
{
  sub_190C6C7EC();

  return swift_deallocClassInstance();
}

uint64_t sub_190C6C864(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  v3 = sub_190D51920();
  v2[45] = v3;
  v2[46] = *(v3 - 8);
  v2[47] = swift_task_alloc();
  v4 = sub_190D519C0();
  v2[48] = v4;
  v2[49] = *(v4 - 8);
  v2[50] = swift_task_alloc();
  v5 = sub_190D51350();
  v2[51] = v5;
  v2[52] = *(v5 - 8);
  v2[53] = swift_task_alloc();
  v6 = sub_190D51330();
  v2[54] = v6;
  v2[55] = *(v6 - 8);
  v2[56] = swift_task_alloc();
  v7 = sub_190D51360();
  v2[57] = v7;
  v2[58] = *(v7 - 8);
  v2[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B548);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  sub_190D572A0();
  v2[62] = sub_190D57290();
  v9 = sub_190D57240();
  v2[63] = v9;
  v2[64] = v8;

  return MEMORY[0x1EEE6DFA0](sub_190C6CB0C, v9, v8);
}

uint64_t sub_190C6CB0C()
{
  sub_190D577A0();
  if ((sub_190D57790() & 1) == 0 || !*(v0[43] + 16))
  {
    v8 = v0[44];
    v9 = sub_190D57160();
    v0[66] = v9;
    v0[2] = v0;
    v0[3] = sub_190A740B4;
    v10 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57930);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_19088DB28;
    v0[21] = &block_descriptor_116;
    v0[22] = v10;
    [v8 startDownloadFor:v9 completionHandler:v0 + 18];
    v11 = v0 + 2;
    goto LABEL_11;
  }

  v2 = v0[60];
  v1 = v0[61];
  sub_190D52100();
  sub_190D52690();
  sub_190D520F0();
  sub_190D52090();

  sub_190C6E008(v1, v2);
  v3 = sub_190D52080();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[60];
  if (v5 == 1)
  {
    sub_190C6E078(v0[60]);
    v7 = 0;
  }

  else
  {
    v7 = sub_190D52040();
    (*(v4 + 8))(v6, v3);
  }

  v12 = v0[58];
  v13 = v0[59];
  v14 = v0[56];
  v15 = v0[54];
  v16 = v0[55];
  v18 = v0[52];
  v17 = v0[53];
  v51 = v0[51];
  v52 = v0[57];
  v56 = v0[49];
  v57 = v0[48];
  v19 = v0[46];
  v55 = v0[47];
  v53 = v0[50];
  v54 = v0[45];
  v0[42] = v7;
  (*(v16 + 104))(v14, *MEMORY[0x1E69689E0], v15);
  sub_190D51340();
  sub_190D50E50();
  (*(v18 + 8))(v17, v51);
  (*(v16 + 8))(v14, v15);
  sub_190A780F8();
  sub_190C6E0E0();
  sub_190A7814C();
  sub_190D58120();
  (*(v12 + 8))(v13, v52);
  v20 = v0[40];
  v21 = v0[41];
  sub_190D518B0();
  (*(v19 + 104))(v55, *MEMORY[0x1E69A6648], v54);
  sub_1908EA100(0xD000000000000027, 0x8000000190E6A630);
  (*(v19 + 8))(v55, v54);
  (*(v56 + 8))(v53, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_190DD1D90;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_19081EA10();
  *(v22 + 32) = v20;
  *(v22 + 40) = v21;
  v11 = CKFrameworkBundle();
  if (!v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v11;
  v24 = sub_190D56ED0();
  v25 = sub_190D56ED0();
  v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

  sub_190D56F10();
  sub_190D56EE0();

  v27 = sub_190D56ED0();

  v28 = sub_190D56ED0();

  v29 = [objc_opt_self() alertControllerWithTitle:v27 message:v28 preferredStyle:1];
  v0[65] = v29;

  v11 = CKFrameworkBundle();
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = v11;
  v32 = v0[43];
  v31 = v0[44];
  v33 = sub_190D56ED0();
  v34 = sub_190D56ED0();
  v35 = [v30 localizedStringForKey:v33 value:0 table:v34];

  sub_190D56F10();
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  *(v36 + 24) = v32;
  v37 = v31;
  sub_190D52690();
  v38 = sub_190D56ED0();

  v0[38] = sub_190C6E138;
  v0[39] = v36;
  v0[34] = MEMORY[0x1E69E9820];
  v0[35] = 1107296256;
  v0[36] = sub_19084156C;
  v0[37] = &block_descriptor_32_2;
  v39 = _Block_copy(v0 + 34);

  v40 = objc_opt_self();
  v41 = [v40 actionWithTitle:v38 style:0 handler:v39];
  _Block_release(v39);

  [v29 addAction_];
  v11 = CKFrameworkBundle();
  if (!v11)
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v11);
  }

  v42 = v11;
  v43 = v0[44];
  v44 = sub_190D56ED0();
  v45 = sub_190D56ED0();
  v46 = [v42 localizedStringForKey:v44 value:0 table:v45];

  sub_190D56F10();
  v47 = sub_190D56ED0();

  v48 = [v40 actionWithTitle:v47 style:1 handler:0];

  [v29 addAction_];
  v0[10] = v0;
  v0[11] = sub_190C6D3D8;
  v49 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57930);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_19088DB28;
  v0[29] = &block_descriptor_35_2;
  v0[30] = v49;
  [v43 presentViewController:v29 animated:1 completion:v0 + 26];
  v11 = v0 + 10;
LABEL_11:

  return MEMORY[0x1EEE6DEC8](v11);
}

uint64_t sub_190C6D3D8()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 504);

  return MEMORY[0x1EEE6DFA0](sub_190C6D4E0, v2, v1);
}

uint64_t sub_190C6D4E0()
{
  v1 = v0[65];
  v2 = v0[61];

  sub_190C6E078(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_190C6D5AC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_190D572E0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_190D572A0();
  v9 = a2;
  sub_190D52690();
  v10 = sub_190D57290();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = a3;
  sub_190857E08(0, 0, v7, &unk_190E00748, v11);
}

uint64_t sub_190C6D6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_190D572A0();
  v5[20] = sub_190D57290();
  v7 = sub_190D57240();
  v5[21] = v7;
  v5[22] = v6;

  return MEMORY[0x1EEE6DFA0](sub_190C6D780, v7, v6);
}

uint64_t sub_190C6D780()
{
  v1 = v0[18];
  v2 = sub_190D57160();
  v0[23] = v2;
  v0[2] = v0;
  v0[3] = sub_190A74588;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57930);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19088DB28;
  v0[13] = &block_descriptor_42_2;
  v0[14] = v3;
  [v1 startDownloadFor:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_190C6DA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_190D572A0();
  v3[5] = sub_190D57290();
  v5 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190C6DAD8, v5, v4);
}

uint64_t sub_190C6DAD8()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v3 = sub_190D57180();
  v0[7] = v3;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_190A749F0;

  return sub_190C6C864(v3);
}

uint64_t sub_190C6DD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_190D572A0();
  v3[5] = sub_190D57290();
  v5 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190C6DDD0, v5, v4);
}

uint64_t sub_190C6DDD0()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v3 = sub_190D57180();
  v0[7] = v3;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_190A74E48;

  return sub_190A77BB4(v3);
}

uint64_t sub_190C6DEA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_190221DA0;

  return sub_190C6DD34(v2, v3, v4);
}

uint64_t sub_190C6DF54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_190221DA0;

  return sub_190C6DA3C(v2, v3, v4);
}

uint64_t sub_190C6E008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C6E078(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_190C6E0E0()
{
  result = qword_1EAD5B558;
  if (!qword_1EAD5B558)
  {
    sub_190D51360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B558);
  }

  return result;
}

uint64_t block_copy_helper_30_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_190D50920();
}

uint64_t sub_190C6E158(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA0;

  return sub_190C6D6E8(a1, v4, v5, v7, v6);
}

id CKCloudTipDescriptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKCloudTipDescriptor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190C6E3D0()
{
  sub_190C6E4F4(319, &qword_1EAD52C00, type metadata accessor for DetailsViewConfiguration);
  if (v0 <= 0x3F)
  {
    sub_190C6E4F4(319, &qword_1EAD560E8, _s9ViewModelCMa_0);
    if (v1 <= 0x3F)
    {
      sub_19081C950();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_190C6E4F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_190D56360();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_190C6E58C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = 7;
  v7 = &a4[*(_s11ContentViewVMa_7() + 44)];
  type metadata accessor for DetailsViewConfiguration();
  sub_190C72098(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v8 = a1;
  sub_190D56340();
  _s9ViewModelCMa_0();
  swift_allocObject();
  v9 = v8;
  sub_190B98238(v9);
  sub_190C72098(&qword_1EAD5EA10, _s9ViewModelCMa_0);
  sub_190D56340();

  *v7 = a2;
  v7[1] = a3;
}

uint64_t sub_190C6E6E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C72098(&qword_1EAD5EA10, _s9ViewModelCMa_0);
  sub_190D51C20();

  *a2 = *(v3 + OBJC_IVAR____TtCV7ChatKit33DetailsViewKeyTransparencySection9ViewModel__isPresentingClearAlertController);
  return result;
}

unint64_t sub_190C6E7B8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_190C71814(*a1);
  *a2 = result;
  return result;
}

id sub_190C6E7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v71 = a2;
  v5 = *(a1 + 16);
  v61 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E40);
  v67 = sub_190D54200();
  v64 = sub_190D58050();
  v68 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = v56 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v69 = v56 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD616E0);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = v56 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD616E8);
  v15 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v17 = v56 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD616F0);
  MEMORY[0x1EEE9AC00](v63);
  v65 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v72 = v56 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  v21 = sub_190B98420();

  v70 = v9;
  if (v21)
  {
    v57 = v7;
    v56[2] = v56;
    MEMORY[0x1EEE9AC00](v22);
    v56[1] = &v56[-6];
    v23 = *(a1 + 24);
    v56[-4] = v5;
    v56[-3] = v23;
    v54 = v2;
    result = CKFrameworkBundle();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v25 = result;
    v26 = v5;
    v54 = 0xE000000000000000;
    v27 = sub_190D51210();
    v29 = v28;

    v74 = v27;
    v75 = v29;
    v56[0] = v26;
    sub_190C70E20(v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD617B8);
    sub_190C71A00();
    v30 = sub_190C71A54();
    v31 = sub_190C72000();
    v54 = v30;
    v55 = v31;
    v32 = v58;
    sub_190D562D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
    sub_190D56320();

    v33 = [objc_opt_self() currentDevice];
    v34 = [v33 userInterfaceIdiom];

    v35 = 0;
    if (v34 == 5)
    {
      v73[0] = sub_190D55DA0();
      v35 = sub_190D561E0();
    }

    (*(v59 + 32))(v17, v32, v60);
    v36 = v62;
    *&v17[*(v62 + 36)] = v35;
    v37 = v72;
    sub_190288DAC(v17, v72);
    v38 = 0;
    v5 = v56[0];
    v7 = v57;
  }

  else
  {
    v38 = 1;
    v37 = v72;
    v36 = v62;
  }

  (*(v15 + 56))(v37, v38, 1, v36);
  v39 = *&v3[*(a1 + 44)];
  if (v39)
  {
    LOBYTE(v73[0]) = *v3;
    v39(v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
    sub_190D56320();

    v40 = [objc_opt_self() currentDevice];
    v41 = [v40 userInterfaceIdiom];

    v42 = v66;
    if (v41 == 5)
    {
      v43 = sub_190D55DA0();
    }

    else
    {
      v43 = 0;
    }

    v73[0] = v43;
    v44 = *(a1 + 24);
    sub_190D55940();

    (*(v61 + 8))(v7, v5);
    (*(*(v67 - 8) + 56))(v42, 0, 1, v67);
  }

  else
  {
    v42 = v66;
    (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
    v44 = *(a1 + 24);
  }

  v45 = sub_190233640(&unk_1EAD52250, &qword_1EAD55E40);
  v77 = v44;
  v78 = v45;
  WitnessTable = swift_getWitnessTable();
  v46 = v64;
  v47 = swift_getWitnessTable();
  v48 = v69;
  sub_19096BC74(v42, v46, v47);
  v49 = v68;
  v50 = *(v68 + 8);
  v50(v42, v46);
  v51 = v72;
  v52 = v65;
  sub_19022FD14(v72, v65, &unk_1EAD616F0);
  v73[0] = v52;
  v53 = v70;
  (*(v49 + 16))(v70, v48, v46);
  v73[1] = v53;
  v74 = v63;
  v75 = v46;
  v73[9] = sub_190C71824();
  v73[10] = v47;
  sub_190B74A3C(v73, 2uLL, &v74);
  v50(v48, v46);
  sub_19022EEA4(v51, &unk_1EAD616F0);
  v50(v53, v46);
  return sub_19022EEA4(v52, &unk_1EAD616F0);
}

uint64_t sub_190C6F148@<X0>(uint64_t a1@<X8>)
{
  v117 = a1;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD617C8);
  MEMORY[0x1EEE9AC00](v115);
  v2 = &v88 - v1;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD617A8);
  MEMORY[0x1EEE9AC00](v118);
  v4 = &v88 - v3;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD617D0);
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v88 - v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61788);
  MEMORY[0x1EEE9AC00](v112);
  v105 = &v88 - v6;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61798);
  MEMORY[0x1EEE9AC00](v102);
  v106 = &v88 - v7;
  v92 = _s24VerifyConversationButtonVMa();
  MEMORY[0x1EEE9AC00](v92);
  v101 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v88 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD617D8);
  MEMORY[0x1EEE9AC00](v91);
  v12 = &v88 - v11;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD617E0);
  v113 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v100 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v88 - v15;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61760);
  MEMORY[0x1EEE9AC00](v99);
  v93 = &v88 - v16;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD617E8);
  MEMORY[0x1EEE9AC00](v116);
  v18 = &v88 - v17;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD617F0);
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v88 - v19;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD617F8);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v88 - v20;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61748);
  MEMORY[0x1EEE9AC00](v109);
  v98 = &v88 - v21;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61738);
  MEMORY[0x1EEE9AC00](v120);
  v111 = &v88 - v22;
  v95 = _s30EnableEnhancedProtectionButtonVMa_0();
  MEMORY[0x1EEE9AC00](v95);
  v90 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = _s11ContentViewVMa_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v25 = v121;
  swift_getKeyPath();
  v121 = v25;
  sub_190C72098(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v26 = *&v25[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState];
  v27 = v25[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState + 8];

  if (v27)
  {
    goto LABEL_2;
  }

  v88 = v12;
  v89 = v4;
  v34 = v119;
  v94 = v18;
  if (v26 > 8)
  {
    v35 = v119;
    if ((v26 - 9) >= 6)
    {
      v18 = v94;
      v4 = v89;
      if (v26 != 17)
      {
        if (v26 == 18)
        {
LABEL_18:
          v64 = v114;
          sub_190C70AA8(v24, v114);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
          sub_190D56320();
          _s9ViewModelCMa_0();
          sub_190C72098(&qword_1EAD5EA10, _s9ViewModelCMa_0);
          v65 = v107;
          sub_190D56340();
          v66 = v113;
          v67 = *(v113 + 16);
          v68 = v100;
          v69 = v64;
          v70 = v119;
          v67(v100, v69, v119);
          v71 = v101;
          sub_190C720E0(v65, v101, _s24VerifyConversationButtonVMa);
          v72 = v106;
          v67(v106, v68, v70);
          v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61808);
          sub_190C720E0(v71, v72 + *(v73 + 48), _s24VerifyConversationButtonVMa);
          v115 = _s24VerifyConversationButtonVMa;
          sub_190C72160(v71, _s24VerifyConversationButtonVMa);
          v113 = *(v66 + 8);
          (v113)(v68, v70);
          sub_19022FD14(v72, v104, &qword_1EAD61798);
          swift_storeEnumTagMultiPayload();
          sub_190233640(&qword_1EAD61790, &qword_1EAD61798);
          v74 = v105;
          sub_190D54C50();
          sub_19022FD14(v74, v110, &qword_1EAD61788);
          swift_storeEnumTagMultiPayload();
          sub_190C71B6C();
          sub_190C71DD4();
          v75 = v111;
          sub_190D54C50();
          sub_19022EEA4(v74, &qword_1EAD61788);
          sub_19022FD14(v75, v18, &qword_1EAD61738);
          swift_storeEnumTagMultiPayload();
          sub_190C71AE0();
          sub_190C71E84();
          sub_190D54C50();
          sub_19022EEA4(v75, &qword_1EAD61738);
          sub_19022EEA4(v72, &qword_1EAD61798);
          sub_190C72160(v107, v115);
          return (v113)(v114, v70);
        }

LABEL_2:
        swift_storeEnumTagMultiPayload();
        v28 = _s28EnhancedProtectionStatusViewVMa();
        v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
        v30 = sub_190C72098(&qword_1EAD61770, _s28EnhancedProtectionStatusViewVMa);
        v31 = sub_19081E484();
        v32 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
        v121 = v28;
        v122 = MEMORY[0x1E69E6158];
        v123 = v29;
        v124 = MEMORY[0x1E6981148];
        v125 = v30;
        v126 = v31;
        v127 = v32;
        v128 = MEMORY[0x1E6981138];
        swift_getOpaqueTypeConformance2();
        sub_190D54C50();
        sub_19022FD14(v4, v18, &qword_1EAD617A8);
        swift_storeEnumTagMultiPayload();
        sub_190C71AE0();
        sub_190C71E84();
        sub_190D54C50();
        return sub_19022EEA4(v4, &qword_1EAD617A8);
      }

      goto LABEL_14;
    }

LABEL_16:
    v56 = v114;
    sub_190C70AA8(v24, v114);
    v57 = v113;
    (*(v113 + 16))(v2, v56, v35);
    swift_storeEnumTagMultiPayload();
    v58 = _s28EnhancedProtectionStatusViewVMa();
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
    v60 = sub_190C72098(&qword_1EAD61770, _s28EnhancedProtectionStatusViewVMa);
    v61 = sub_19081E484();
    v62 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    v121 = v58;
    v122 = MEMORY[0x1E69E6158];
    v123 = v59;
    v124 = MEMORY[0x1E6981148];
    v125 = v60;
    v126 = v61;
    v127 = v62;
    v128 = MEMORY[0x1E6981138];
    swift_getOpaqueTypeConformance2();
    v63 = v89;
    sub_190D54C50();
    sub_19022FD14(v63, v94, &qword_1EAD617A8);
    swift_storeEnumTagMultiPayload();
    sub_190C71AE0();
    sub_190C71E84();
    sub_190D54C50();
    sub_19022EEA4(v63, &qword_1EAD617A8);
    return (*(v57 + 8))(v56, v35);
  }

  v35 = v119;
  if (v26 > 3)
  {
    if ((v26 - 5) < 4)
    {
      v36 = v114;
      sub_190C70AA8(v24, v114);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
      sub_190D56320();
      _s9ViewModelCMa_0();
      sub_190C72098(&qword_1EAD5EA10, _s9ViewModelCMa_0);
      v37 = v107;
      sub_190D56340();
      v38 = v113;
      v39 = *(v113 + 16);
      v40 = v100;
      v39(v100, v36, v35);
      v41 = v101;
      sub_190C720E0(v37, v101, _s24VerifyConversationButtonVMa);
      v42 = v106;
      v39(v106, v40, v35);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61808);
      sub_190C720E0(v41, v42 + *(v43 + 48), _s24VerifyConversationButtonVMa);
      sub_190C72160(v41, _s24VerifyConversationButtonVMa);
      v115 = *(v38 + 8);
      v115(v40, v35);
      sub_19022FD14(v42, v104, &qword_1EAD61798);
      swift_storeEnumTagMultiPayload();
      sub_190233640(&qword_1EAD61790, &qword_1EAD61798);
      v44 = v105;
      sub_190D54C50();
      sub_19022FD14(v44, v110, &qword_1EAD61788);
      swift_storeEnumTagMultiPayload();
      sub_190C71B6C();
      sub_190C71DD4();
      v45 = v111;
      sub_190D54C50();
      sub_19022EEA4(v44, &qword_1EAD61788);
      sub_19022FD14(v45, v94, &qword_1EAD61738);
      swift_storeEnumTagMultiPayload();
      sub_190C71AE0();
      sub_190C71E84();
      sub_190D54C50();
      sub_19022EEA4(v45, &qword_1EAD61738);
      sub_19022EEA4(v42, &qword_1EAD61798);
      sub_190C72160(v37, _s24VerifyConversationButtonVMa);
      return (v115)(v114, v119);
    }

    v18 = v94;
    v4 = v89;
    if (v26 == 4)
    {
      goto LABEL_18;
    }

    goto LABEL_2;
  }

  if ((v26 - 1) < 2)
  {
    goto LABEL_16;
  }

  if (!v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
    sub_190D56320();
    _s9ViewModelCMa_0();
    sub_190C72098(&qword_1EAD5EA10, _s9ViewModelCMa_0);
    v76 = v90;
    sub_190D56340();
    sub_190C720E0(v76, v97, _s30EnableEnhancedProtectionButtonVMa_0);
    swift_storeEnumTagMultiPayload();
    sub_190C72098(&qword_1EAD61750, _s30EnableEnhancedProtectionButtonVMa_0);
    sub_190C71C28();
    v77 = v98;
    sub_190D54C50();
    sub_19022FD14(v77, v110, &qword_1EAD61748);
    swift_storeEnumTagMultiPayload();
    sub_190C71B6C();
    sub_190C71DD4();
    v78 = v111;
    sub_190D54C50();
    sub_19022EEA4(v77, &qword_1EAD61748);
    sub_19022FD14(v78, v94, &qword_1EAD61738);
    swift_storeEnumTagMultiPayload();
    sub_190C71AE0();
    sub_190C71E84();
    sub_190D54C50();
    sub_19022EEA4(v78, &qword_1EAD61738);
    return sub_190C72160(v76, _s30EnableEnhancedProtectionButtonVMa_0);
  }

  v18 = v94;
  v4 = v89;
  if (v26 != 3)
  {
    goto LABEL_2;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v46 = v121;
  swift_getKeyPath();
  v121 = v46;
  sub_190D51C20();

  v47 = v46[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation];

  if (v47 == 1)
  {
    v48 = v114;
    sub_190C70AA8(v24, v114);
    v49 = v113;
    (*(v113 + 16))(v88, v48, v34);
    swift_storeEnumTagMultiPayload();
    v50 = _s28EnhancedProtectionStatusViewVMa();
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
    v52 = sub_190C72098(&qword_1EAD61770, _s28EnhancedProtectionStatusViewVMa);
    v53 = sub_19081E484();
    v54 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    v121 = v50;
    v122 = MEMORY[0x1E69E6158];
    v123 = v51;
    v124 = MEMORY[0x1E6981148];
    v125 = v52;
    v126 = v53;
    v127 = v54;
    v128 = MEMORY[0x1E6981138];
    swift_getOpaqueTypeConformance2();
    sub_190C72098(&qword_1EAD61778, _s24VerifyConversationButtonVMa);
    v55 = v93;
    sub_190D54C50();
    (*(v49 + 8))(v48, v34);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
    sub_190D56320();
    _s9ViewModelCMa_0();
    sub_190C72098(&qword_1EAD5EA10, _s9ViewModelCMa_0);
    v79 = v107;
    sub_190D56340();
    sub_190C720E0(v79, v88, _s24VerifyConversationButtonVMa);
    swift_storeEnumTagMultiPayload();
    v80 = _s28EnhancedProtectionStatusViewVMa();
    v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
    v82 = sub_190C72098(&qword_1EAD61770, _s28EnhancedProtectionStatusViewVMa);
    v83 = sub_19081E484();
    v84 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    v121 = v80;
    v122 = MEMORY[0x1E69E6158];
    v123 = v81;
    v124 = MEMORY[0x1E6981148];
    v125 = v82;
    v126 = v83;
    v127 = v84;
    v128 = MEMORY[0x1E6981138];
    swift_getOpaqueTypeConformance2();
    sub_190C72098(&qword_1EAD61778, _s24VerifyConversationButtonVMa);
    v55 = v93;
    sub_190D54C50();
    sub_190C72160(v79, _s24VerifyConversationButtonVMa);
  }

  v85 = v94;
  sub_19022FD14(v55, v97, &unk_1EAD61760);
  swift_storeEnumTagMultiPayload();
  sub_190C72098(&qword_1EAD61750, _s30EnableEnhancedProtectionButtonVMa_0);
  sub_190C71C28();
  v86 = v98;
  sub_190D54C50();
  sub_19022FD14(v86, v110, &qword_1EAD61748);
  swift_storeEnumTagMultiPayload();
  sub_190C71B6C();
  sub_190C71DD4();
  v87 = v111;
  sub_190D54C50();
  sub_19022EEA4(v86, &qword_1EAD61748);
  sub_19022FD14(v87, v85, &qword_1EAD61738);
  swift_storeEnumTagMultiPayload();
  sub_190C71AE0();
  sub_190C71E84();
  sub_190D54C50();
  sub_19022EEA4(v87, &qword_1EAD61738);
  return sub_19022EEA4(v55, &unk_1EAD61760);
}

uint64_t sub_190C70AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v12[0] = _s28EnhancedProtectionStatusViewVMa();
  MEMORY[0x1EEE9AC00](v12[0]);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  _s9ViewModelCMa_0();
  sub_190C72098(&qword_1EAD5EA10, _s9ViewModelCMa_0);
  sub_190D56340();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();

  v17 = 0;
  v18 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56330();
  swift_getKeyPath();
  sub_190D56350();

  (*(v5 + 8))(v7, v4);
  v10 = *(a1 + 24);
  v14 = *(a1 + 16);
  v15 = v10;
  v16 = v2;
  v12[4] = v14;
  v12[5] = v10;
  v13 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  sub_190C72098(&qword_1EAD61770, _s28EnhancedProtectionStatusViewVMa);
  sub_19081E484();
  sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  sub_190D55990();

  return sub_190C72160(v9, _s28EnhancedProtectionStatusViewVMa);
}

double sub_190C70E20@<D0>(uint64_t a1@<X8>)
{
  _s11ContentViewVMa_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  swift_getKeyPath();
  sub_190C72098(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v2 = *(v9 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState);
  v3 = *(v9 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState + 8);

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  swift_getKeyPath();
  sub_190C72098(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  v5 = *(v9[2] + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  swift_getKeyPath();
  sub_190D51C20();

  v6 = *(v9 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktHandlesForKTChatStatus);
  sub_190D52690();

  if (!v6)
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = sub_190D552D0();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
  return result;
}

uint64_t sub_190C710C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s11ContentViewVMa_7();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_190D56030();
}

void sub_190C7123C()
{
  _s11ContentViewVMa_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  swift_getKeyPath();
  sub_190C72098(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v0 = *(v7 + 16);

  v1 = *&v0[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

  v2 = [v1 chat];
  [v2 ignoreKTFailure];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  swift_getKeyPath();
  sub_190D51C20();

  v3 = *(v7 + 16);

  swift_getKeyPath();
  sub_190C72098(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong detailsControllerWillDismiss_];
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  swift_getKeyPath();
  sub_190D51C20();

  v5 = v3[2];

  swift_getKeyPath();
  sub_190D51C20();

  v6 = swift_unknownObjectWeakLoadStrong();

  if (v6)
  {
    [v6 dismissDetailsNavigationController];
    swift_unknownObjectRelease();
  }
}

id sub_190C71578@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    sub_190D51210();

    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190C71648@<X0>(uint64_t a1@<X8>)
{
  _s11ContentViewVMa_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();

  sub_19081E484();
  result = sub_190D555F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_190C716E8()
{
  result = qword_1EAD616D0;
  if (!qword_1EAD616D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD616D0);
  }

  return result;
}

uint64_t sub_190C7173C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C72098(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation);
  return result;
}

unint64_t sub_190C71814(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

unint64_t sub_190C71824()
{
  result = qword_1EAD61700;
  if (!qword_1EAD61700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD616F0);
    sub_190C718A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61700);
  }

  return result;
}

unint64_t sub_190C718A8()
{
  result = qword_1EAD61708;
  if (!qword_1EAD61708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD616E8);
    sub_190C71960();
    sub_190233640(&unk_1EAD52250, &qword_1EAD55E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61708);
  }

  return result;
}

unint64_t sub_190C71960()
{
  result = qword_1EAD61710;
  if (!qword_1EAD61710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD616E0);
    sub_190C71A00();
    sub_190C71A54();
    sub_190C72000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61710);
  }

  return result;
}

unint64_t sub_190C71A00()
{
  result = qword_1EAD61718;
  if (!qword_1EAD61718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61718);
  }

  return result;
}

unint64_t sub_190C71A54()
{
  result = qword_1EAD61720;
  if (!qword_1EAD61720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61728);
    sub_190C71AE0();
    sub_190C71E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61720);
  }

  return result;
}

unint64_t sub_190C71AE0()
{
  result = qword_1EAD61730;
  if (!qword_1EAD61730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61738);
    sub_190C71B6C();
    sub_190C71DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61730);
  }

  return result;
}

unint64_t sub_190C71B6C()
{
  result = qword_1EAD61740;
  if (!qword_1EAD61740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61748);
    sub_190C72098(&qword_1EAD61750, _s30EnableEnhancedProtectionButtonVMa_0);
    sub_190C71C28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61740);
  }

  return result;
}

unint64_t sub_190C71C28()
{
  result = qword_1EAD61758;
  if (!qword_1EAD61758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD61760);
    _s28EnhancedProtectionStatusViewVMa();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
    sub_190C72098(&qword_1EAD61770, _s28EnhancedProtectionStatusViewVMa);
    sub_19081E484();
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    swift_getOpaqueTypeConformance2();
    sub_190C72098(&qword_1EAD61778, _s24VerifyConversationButtonVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61758);
  }

  return result;
}

unint64_t sub_190C71DD4()
{
  result = qword_1EAD61780;
  if (!qword_1EAD61780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61788);
    sub_190233640(&qword_1EAD61790, &qword_1EAD61798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61780);
  }

  return result;
}

unint64_t sub_190C71E84()
{
  result = qword_1EAD617A0;
  if (!qword_1EAD617A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD617A8);
    _s28EnhancedProtectionStatusViewVMa();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
    sub_190C72098(&qword_1EAD61770, _s28EnhancedProtectionStatusViewVMa);
    sub_19081E484();
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD617A0);
  }

  return result;
}

unint64_t sub_190C72000()
{
  result = qword_1EAD617B0;
  if (!qword_1EAD617B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD617B8);
    sub_190913A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD617B0);
  }

  return result;
}

uint64_t sub_190C72098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190C720E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190C72160(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_190C721C0()
{
  _s11ContentViewVMa_7();

  sub_190C7123C();
}

double sub_190C72268()
{
  result = *(v0 + OBJC_IVAR____TtC7ChatKit34CKTranscriptNavigationBarAnimation_animation);
  if (*(v0 + OBJC_IVAR____TtC7ChatKit34CKTranscriptNavigationBarAnimation_animation + 8))
  {
    return 0.0;
  }

  return result;
}

id sub_190C7228C()
{
  v0 = type metadata accessor for CKTranscriptNavigationBarAnimation();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC7ChatKit34CKTranscriptNavigationBarAnimation_animation];
  *v2 = 0;
  v2[8] = 1;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  qword_1EAD46810 = result;
  return result;
}

id static CKTranscriptNavigationBarAnimation.unanimated.getter()
{
  if (qword_1EAD46808 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAD46810;

  return v1;
}

id static CKTranscriptNavigationBarAnimation.linearAnimation(duration:)(double a1)
{
  v2 = type metadata accessor for CKTranscriptNavigationBarAnimation();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC7ChatKit34CKTranscriptNavigationBarAnimation_animation];
  *v4 = a1;
  *(v4 + 8) = 0;
  v6.receiver = v3;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

id CKTranscriptNavigationBarAnimation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKTranscriptNavigationBarAnimation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTranscriptNavigationBarAnimation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190C727B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61818);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31[-v5 - 8];
  *v6 = sub_190D56500();
  v6[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61820);
  sub_190C72ACC(v2, v6 + *(v8 + 44));
  sub_190D56500();
  sub_190D53C60();
  v9 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61828) + 36));
  v10 = v33;
  *v9 = v32;
  v9[1] = v10;
  v9[2] = v34;
  v11 = v6 + *(v4 + 36);
  v12 = *(sub_190D543E0() + 20);
  v13 = *MEMORY[0x1E697F468];
  v14 = sub_190D54A20();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  __asm { FMOV            V0.2D, #12.0 }

  *v11 = _Q0;
  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A00) + 36)] = 256;
  v20 = *v2;
  v21 = *(v2 + 32);
  v35 = *(v2 + 40);
  v36 = v21;
  v22 = swift_allocObject();
  v23 = *(v2 + 16);
  v22[1] = *v2;
  v22[2] = v23;
  v22[3] = *(v2 + 32);
  v24 = v20;
  sub_190D50920();
  sub_19022FD14(&v36, v31, &qword_1EAD590B0);
  sub_19022FD14(&v35, v31, &qword_1EAD61830);
  sub_190C73E04();
  sub_190D557E0();

  sub_19022EEA4(v6, &qword_1EAD61818);
  v25 = swift_allocObject();
  v26 = *(v2 + 16);
  *(v25 + 1) = *v2;
  *(v25 + 2) = v26;
  *(v25 + 3) = *(v2 + 32);
  v27 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61858) + 36));
  *v27 = sub_190C73F74;
  v27[1] = v25;
  v27[2] = 0;
  v27[3] = 0;
  v28 = v24;
  sub_190D50920();
  sub_19022FD14(&v36, v31, &qword_1EAD590B0);
  return sub_19022FD14(&v35, v31, &qword_1EAD61830);
}

void sub_190C72ACC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_190D55EB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61868);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61870);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61878);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v30 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FD98);
  sub_190D55FD0();
  if (v29)
  {
    v18 = v29;
    sub_190D55E90();
    (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
    v19 = sub_190D55F10();

    (*(v4 + 8))(v6, v3);
    *v9 = v19;
    *(v9 + 1) = 0;
    *(v9 + 8) = 257;
    swift_storeEnumTagMultiPayload();
    sub_190D50920();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56598);
    sub_1908E6408();
    sub_190233640(&qword_1EAD61888, &qword_1EAD61870);
    sub_190D54C50();
  }

  else
  {
    v20 = [objc_opt_self() systemGray5Color];
    v21 = sub_190D55CE0();
    sub_190D53B80();
    v22 = sub_190D55E00();
    KeyPath = swift_getKeyPath();
    v24 = &v17[*(v12 + 36)];
    *v24 = KeyPath;
    v24[1] = v22;
    sub_19022FD14(v17, v14, &qword_1EAD61878);
    *v11 = v21;
    *(v11 + 4) = 256;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61880);
    sub_19022FD14(v14, &v11[*(v25 + 48)], &qword_1EAD61878);
    swift_retain_n();
    sub_19022EEA4(v14, &qword_1EAD61878);

    sub_19022FD14(v11, v9, &qword_1EAD61870);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56598);
    sub_1908E6408();
    sub_190233640(&qword_1EAD61888, &qword_1EAD61870);
    sub_190D54C50();

    sub_19022EEA4(v11, &qword_1EAD61870);
    sub_19022EEA4(v17, &qword_1EAD61878);
  }
}

void sub_190C72F80()
{
  v1 = [objc_opt_self() defaultManager];
  v2 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  [v2 setNetworkAccessAllowed_];
  [v2 setDeliveryMode_];
  v3 = *v0;
  v4 = *(v0 + 32);
  v12 = *(v0 + 40);
  v13 = v4;
  v5 = swift_allocObject();
  v6 = *(v0 + 16);
  v5[1] = *v0;
  v5[2] = v6;
  v5[3] = *(v0 + 32);
  aBlock[4] = sub_190C73FFC;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190C73C8C;
  aBlock[3] = &block_descriptor_18_2;
  v7 = _Block_copy(aBlock);
  v8 = v2;
  v9 = v3;
  sub_190D50920();
  sub_19022FD14(&v13, v10, &qword_1EAD590B0);
  sub_19022FD14(&v12, v10, &qword_1EAD61830);

  [v1 requestImageDataAndOrientationForAsset:v9 options:v8 resultHandler:v7];
  _Block_release(v7);
}

void sub_190C73144()
{
  v1 = [objc_opt_self() defaultManager];
  v2 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  [v2 setDeliveryMode_];
  [v2 setNetworkAccessAllowed_];
  v3 = [objc_opt_self() mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = v5 * *(v0 + 24);
  v7 = *v0;
  v8 = *(v0 + 32);
  v16 = *(v0 + 40);
  v17 = v8;
  v9 = swift_allocObject();
  v10 = *(v0 + 16);
  v9[1] = *v0;
  v9[2] = v10;
  v9[3] = *(v0 + 32);
  aBlock[4] = sub_190C73F98;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190B09630;
  aBlock[3] = &block_descriptor_117;
  v11 = _Block_copy(aBlock);
  v12 = v2;
  v13 = v7;
  sub_190D50920();
  sub_19022FD14(&v17, v14, &qword_1EAD590B0);
  sub_19022FD14(&v16, v14, &qword_1EAD61830);

  [v1 requestImageForAsset:v13 targetSize:1 contentMode:v12 options:v11 resultHandler:{v6, v6}];
  _Block_release(v11);
}

uint64_t sub_190C7335C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_190D56770();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_190D567A0();
  v8 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670);
  v11 = sub_190D57870();
  v12 = *a3;
  v13 = *(a3 + 32);
  v25 = *(a3 + 40);
  v26 = v13;
  v14 = swift_allocObject();
  v15 = *(a3 + 16);
  *(v14 + 16) = *a3;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(a3 + 32);
  *(v14 + 64) = a1;
  aBlock[4] = sub_190C73FA0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_12_8;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  sub_190D50920();
  sub_19022FD14(&v26, v23, &qword_1EAD590B0);
  sub_19022FD14(&v25, v23, &qword_1EAD61830);
  v18 = a1;

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190233640(&qword_1EAD46730, &unk_1EAD546A0);
  sub_190D58170();
  MEMORY[0x193AF3110](0, v10, v7, v16);
  _Block_release(v16);

  (*(v22 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v21);
}

uint64_t sub_190C73688(uint64_t a1, void *a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FD98);
  return sub_190D55FE0();
}

void sub_190C736E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_190D56770();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_190D567A0();
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 != 15)
  {
    v29 = v16;
    v30 = v15;
    sub_1902188FC(0, &qword_1EAD46670);
    v28 = v11;
    sub_19083B680(a1, a2);
    v27 = sub_190D57870();
    v19 = *a7;
    v20 = *(a7 + 32);
    v33 = *(a7 + 40);
    v34 = v20;
    v21 = swift_allocObject();
    v22 = *(a7 + 16);
    *(v21 + 16) = *a7;
    *(v21 + 32) = v22;
    *(v21 + 48) = *(a7 + 32);
    *(v21 + 64) = a1;
    *(v21 + 72) = a2;
    aBlock[4] = sub_190C74004;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_24_2;
    v23 = _Block_copy(aBlock);
    sub_19087C5A8(a1, a2);
    v24 = v19;
    sub_190D50920();
    sub_19022FD14(&v34, v31, &qword_1EAD590B0);
    sub_19022FD14(&v33, v31, &qword_1EAD61830);

    sub_190D56790();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_190840DB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
    sub_190233640(&qword_1EAD46730, &unk_1EAD546A0);
    sub_190D58170();
    v25 = v27;
    MEMORY[0x193AF3110](0, v18, v13, v23);
    _Block_release(v23);

    sub_19029064C(a1, a2);
    (*(v28 + 8))(v13, v10);
    (*(v29 + 8))(v18, v30);
  }
}

void sub_190C73A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() assetResourcesForAsset_];
  sub_1902188FC(0, &qword_1EAD61860);
  v7 = sub_190D57180();

  if (v7 >> 62)
  {
    if (sub_190D581C0())
    {
      goto LABEL_3;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x193AF3B90](0, v7);
      goto LABEL_6;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v7 + 32);
LABEL_6:
      v9 = v8;

      v10 = [v9 originalFilename];

      v11 = sub_190D56F10();
      v13 = v12;

      (*(a1 + 8))(a2, a3, v11, v13);

      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_1EAD51CB8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v14 = sub_190D53040();
  __swift_project_value_buffer(v14, qword_1EAD9E058);
  oslog = sub_190D53020();
  v15 = sub_190D576A0();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_19020E000, oslog, v15, "Could not determine original filename for photo asset", v16, 2u);
    MEMORY[0x193AF7A40](v16, -1, -1);
  }
}

uint64_t sub_190C73C8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_190D50920();
    v10 = v8;
    v8 = sub_190D51670();
    v12 = v11;

    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_190D50920();
    v12 = 0xF000000000000000;
    if (a3)
    {
LABEL_3:
      v13 = sub_190D56F10();
      a3 = v14;
      if (!a5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v13 = 0;
  if (a5)
  {
LABEL_4:
    a5 = sub_190D56D90();
  }

LABEL_5:
  v9(v8, v12, v13, a3, a4, a5);

  sub_19029064C(v8, v12);
}

unint64_t sub_190C73E04()
{
  result = qword_1EAD61838;
  if (!qword_1EAD61838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61818);
    sub_190C73EBC();
    sub_190233640(&qword_1EAD467C8, &qword_1EAD55A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61838);
  }

  return result;
}

unint64_t sub_190C73EBC()
{
  result = qword_1EAD61840;
  if (!qword_1EAD61840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61828);
    sub_190233640(&qword_1EAD61848, &qword_1EAD61850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61840);
  }

  return result;
}

uint64_t objectdestroyTm_48()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t sub_190C74010()
{
  result = qword_1EAD61890;
  if (!qword_1EAD61890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61818);
    sub_190C73E04();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61890);
  }

  return result;
}

char *sub_190C740F0(uint64_t a1, int a2, uint64_t a3)
{
  v136 = a3;
  v132 = a2;
  v4 = *(a1 + 24);
  v5 = *(*(a1 + 32) + 16);
  v129 = v5 != 0;
  if (v5)
  {
    v142[0] = v4;
    sub_190D52690();
    v6 = sub_190D52690();
    sub_190CA9D08(v6);
  }

  else
  {
    sub_190D52690();
  }

  v133 = v3;
  if (v132)
  {
    v7 = sub_190842034();
    v8 = sub_190CAAE18(v7);

    v9 = *(v4 + 2);
    if (v9)
    {
      v10 = 0;
      v139 = (v4 + 32);
      v11 = v8 + 56;
      v12 = MEMORY[0x1E69E7CC0];
      v138 = v9;
      while (1)
      {
        if (v10 >= *(v4 + 2))
        {
          goto LABEL_150;
        }

        v13 = &v139[2 * v10];
        v15 = *v13;
        v14 = v13[1];
        ++v10;
        if (!*(v8 + 16))
        {
          break;
        }

        sub_190D58870();
        sub_190D52690();
        sub_190D56FC0();
        v16 = sub_190D588C0();
        v17 = -1 << *(v8 + 32);
        v18 = v16 & ~v17;
        if ((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          while (1)
          {
            v20 = (*(v8 + 48) + 16 * v18);
            v21 = *v20 == v15 && v20[1] == v14;
            if (v21 || (sub_190D58760() & 1) != 0)
            {
              break;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          if (v10 == v9)
          {
            goto LABEL_26;
          }
        }

        else
        {
LABEL_18:
          v141 = v12;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_19082DBB4(0, *(v12 + 16) + 1, 1);
            v12 = v141;
          }

          v23 = *(v12 + 16);
          v22 = *(v12 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_19082DBB4((v22 > 1), v23 + 1, 1);
            v12 = v141;
          }

          *(v12 + 16) = v23 + 1;
          v24 = v12 + 16 * v23;
          *(v24 + 32) = v15;
          *(v24 + 40) = v14;
          v9 = v138;
          if (v10 == v138)
          {
            goto LABEL_26;
          }
        }
      }

      sub_190D52690();
      goto LABEL_18;
    }

    v12 = MEMORY[0x1E69E7CC0];
LABEL_26:

    if (v132 == 1)
    {
      v4 = v12;
      goto LABEL_50;
    }

    v25 = sub_190841F8C();
    v26 = sub_190CAAE18(v25);

    v27 = *(v12 + 16);
    if (!v27)
    {
      v4 = MEMORY[0x1E69E7CC0];
LABEL_49:

      goto LABEL_50;
    }

    v28 = 0;
    v139 = (v12 + 32);
    v29 = v26 + 56;
    v4 = MEMORY[0x1E69E7CC0];
    v138 = v27;
    while (1)
    {
      if (v28 >= *(v12 + 16))
      {
        goto LABEL_151;
      }

      v30 = &v139[2 * v28];
      v32 = *v30;
      v31 = v30[1];
      ++v28;
      if (!*(v26 + 16))
      {
        break;
      }

      sub_190D58870();
      sub_190D52690();
      sub_190D56FC0();
      v33 = sub_190D588C0();
      v34 = -1 << *(v26 + 32);
      v35 = v33 & ~v34;
      if ((*(v29 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
      {
        v36 = ~v34;
        while (1)
        {
          v37 = (*(v26 + 48) + 16 * v35);
          v38 = *v37 == v32 && v37[1] == v31;
          if (v38 || (sub_190D58760() & 1) != 0)
          {
            break;
          }

          v35 = (v35 + 1) & v36;
          if (((*(v29 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        if (v28 == v27)
        {
          goto LABEL_49;
        }
      }

      else
      {
LABEL_41:
        v141 = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_19082DBB4(0, *(v4 + 2) + 1, 1);
          v4 = v141;
        }

        v40 = *(v4 + 2);
        v39 = *(v4 + 3);
        if (v40 >= v39 >> 1)
        {
          sub_19082DBB4((v39 > 1), v40 + 1, 1);
          v4 = v141;
        }

        *(v4 + 2) = v40 + 1;
        v41 = &v4[16 * v40];
        *(v41 + 4) = v32;
        *(v41 + 5) = v31;
        v27 = v138;
        if (v28 == v138)
        {
          goto LABEL_49;
        }
      }
    }

    sub_190D52690();
    goto LABEL_41;
  }

LABEL_50:
  v42 = sub_190D52690();
  v12 = sub_190CAAE18(v42);

  if (qword_1EAD45B10 != -1)
  {
    goto LABEL_152;
  }

  while (1)
  {
    swift_beginAccess();
    v43 = off_1EAD45B18;
    swift_beginAccess();
    v44 = v43[3];
    v138 = v43[2];
    swift_unknownObjectRetain();
    v45 = sub_190841C34();
    v46 = v45;
    v47 = *(v45 + 16);
    v137 = v44;
    v135 = v44 + 40;
    if (v47)
    {
      v48 = 0;
      v139 = (v45 + 32);
      v49 = v12 + 56;
      v131 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v48 >= *(v46 + 16))
        {
          __break(1u);
          goto LABEL_146;
        }

        v50 = &v139[2 * v48];
        v52 = *v50;
        v51 = v50[1];
        ++v48;
        if (*(v12 + 16))
        {
          sub_190D58870();
          sub_190D52690();
          sub_190D56FC0();
          v53 = sub_190D588C0();
          v54 = -1 << *(v12 + 32);
          v55 = v53 & ~v54;
          if ((*(v49 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
          {
            v56 = ~v54;
            do
            {
              v57 = (*(v12 + 48) + 16 * v55);
              v58 = *v57 == v52 && v57[1] == v51;
              if (v58 || (sub_190D58760() & 1) != 0)
              {
                goto LABEL_66;
              }

              v55 = (v55 + 1) & v56;
            }

            while (((*(v49 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) != 0);
          }
        }

        else
        {
          sub_190D52690();
        }

        ObjectType = swift_getObjectType();
        if ((*(v137 + 40))(v52, v51, v136, ObjectType))
        {
          v60 = v131;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v143 = v60;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_19082DBB4(0, *(v60 + 2) + 1, 1);
            v60 = v143;
          }

          v63 = *(v60 + 2);
          v62 = *(v60 + 3);
          v64 = v63 + 1;
          if (v63 >= v62 >> 1)
          {
            v134 = v63 + 1;
            sub_19082DBB4((v62 > 1), v63 + 1, 1);
            v64 = v134;
            v60 = v143;
          }

          *(v60 + 2) = v64;
          v131 = v60;
          v65 = &v60[16 * v63];
          *(v65 + 4) = v52;
          *(v65 + 5) = v51;
          goto LABEL_67;
        }

LABEL_66:

LABEL_67:
        if (v48 == v47)
        {
          goto LABEL_75;
        }
      }
    }

    v131 = MEMORY[0x1E69E7CC0];
LABEL_75:

    v67 = *(v4 + 2);
    if (v67)
    {
      v68 = 0;
      v12 = 0;
      v69 = v4 + 40;
      v134 = *(v4 + 2);
      v127 = v67 - 1;
      v70 = MEMORY[0x1E69E7CC0];
      v128 = v4 + 40;
LABEL_77:
      v130 = v70;
      v71 = &v69[16 * v68];
      while (v68 < *(v4 + 2))
      {
        v139 = &v127;
        v73 = *(v71 - 1);
        v72 = *v71;
        v74 = v68 + 1;
        v142[0] = v73;
        v142[1] = v72;
        MEMORY[0x1EEE9AC00](v66);
        v126[2] = v142;
        sub_190D52690();
        if ((sub_190CA8558(sub_1909F5BC8, v126, v46) & 1) == 0)
        {
          v75 = v130;
          v66 = swift_isUniquelyReferenced_nonNull_native();
          v70 = v75;
          v143 = v75;
          if ((v66 & 1) == 0)
          {
            v66 = sub_19082DBB4(0, *(v75 + 16) + 1, 1);
            v70 = v143;
          }

          v77 = *(v70 + 16);
          v76 = *(v70 + 24);
          v78 = v77 + 1;
          if (v77 >= v76 >> 1)
          {
            v66 = sub_19082DBB4((v76 > 1), v77 + 1, 1);
            v78 = v77 + 1;
            v70 = v143;
          }

          *(v70 + 16) = v78;
          v79 = v70 + 16 * v77;
          *(v79 + 32) = v73;
          *(v79 + 40) = v72;
          v21 = v127 == v68;
          v69 = v128;
          ++v68;
          if (v21)
          {
            goto LABEL_90;
          }

          goto LABEL_77;
        }

        v71 += 2;
        ++v68;
        if (v134 == v74)
        {
          v70 = v130;
          goto LABEL_90;
        }
      }

LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v12 = 0;
    v70 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v142[0] = v46;
    sub_190CA9D08(v70);
    v80 = v142[0];
    v81 = *(v131 + 2);
    if (!v81)
    {
      break;
    }

    v82 = (v131 + 40);
    while (1)
    {
      v84 = *(v82 - 1);
      v83 = *v82;
      v85 = sub_190C75C14(v84, *v82, v4, v80);
      v86 = *(v4 + 2);
      if (v86 < v85)
      {
        break;
      }

      v87 = v85;
      if (v85 < 0)
      {
        goto LABEL_148;
      }

      sub_190D52690();
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v143 = v4;
      if (!v88 || v86 >= *(v4 + 3) >> 1)
      {
        v4 = sub_1908354D4(v88, v86 + 1, 1, v4);
        v143 = v4;
      }

      sub_190CAAEB0(v87, v87, 1, v84, v83);

      v82 += 2;
      if (!--v81)
      {
        v129 = 1;
        goto LABEL_100;
      }
    }

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
    swift_once();
  }

LABEL_100:

  v89 = swift_getObjectType();
  v90 = *(v137 + 32);
  v139 = v89;
  v91 = v90();
  v92 = sub_190841AA8();
  v93 = sub_190CAAE18(v92);

  v134 = *(v91 + 16);
  if (v134)
  {
    v94 = 0;
    v133 = v91 + 32;
    v95 = v93 + 56;
    v96 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v131 = v96;
    while (1)
    {
      if (v94 >= *(v91 + 16))
      {
        goto LABEL_149;
      }

      v97 = (v133 + 16 * v94);
      v99 = *v97;
      v98 = v97[1];
      if (!*(v93 + 16))
      {
        break;
      }

      sub_190D58870();
      sub_190D52690();
      sub_190D56FC0();
      v100 = sub_190D588C0();
      v101 = -1 << *(v93 + 32);
      v102 = v100 & ~v101;
      if (((*(v95 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0)
      {
        goto LABEL_116;
      }

      v103 = ~v101;
      while (1)
      {
        v104 = (*(v93 + 48) + 16 * v102);
        v105 = *v104 == v99 && v104[1] == v98;
        if (v105 || (sub_190D58760() & 1) != 0)
        {
          break;
        }

        v102 = (v102 + 1) & v103;
        if (((*(v95 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0)
        {
          goto LABEL_116;
        }
      }

      v106 = 0;
LABEL_118:
      ++v94;
      v107 = (*(v137 + 40))(v99, v98, v136, v139);
      if (v106 && (v107 & 1) != 0)
      {
        v108 = v131;
        v109 = swift_isUniquelyReferenced_nonNull_native();
        v140 = v108;
        if ((v109 & 1) == 0)
        {
          sub_19082DBB4(0, *(v108 + 2) + 1, 1);
          v108 = v140;
        }

        v111 = *(v108 + 2);
        v110 = *(v108 + 3);
        v112 = (v111 + 1);
        if (v111 >= v110 >> 1)
        {
          v131 = (v111 + 1);
          sub_19082DBB4((v110 > 1), v111 + 1, 1);
          v112 = v131;
          v108 = v140;
        }

        *(v108 + 2) = v112;
        v113 = &v108[16 * v111];
        *(v113 + 4) = v99;
        *(v113 + 5) = v98;
        v96 = v108;
        if (v94 != v134)
        {
          goto LABEL_102;
        }

        goto LABEL_128;
      }

      if (v94 == v134)
      {
        v96 = v131;
        goto LABEL_128;
      }
    }

    sub_190D52690();
LABEL_116:
    v106 = 1;
    goto LABEL_118;
  }

  v96 = MEMORY[0x1E69E7CC0];
LABEL_128:
  v114 = v132;

  v115 = sub_190C75D88(v96, v4);
  v116 = sub_190C75D88(v4, v96);
  if (!v114 && (v115 & 1) != 0 && (v116 & 1) != 0)
  {
    swift_unknownObjectRelease();

    return v4;
  }

  v117 = v138;
  if (qword_1EAD458A8 != -1)
  {
    swift_once();
    v118 = *(v4 + 2);
    if (v118)
    {
      goto LABEL_134;
    }

LABEL_143:
    v124 = sub_190CAA710(v118, 0, v4);
    v142[0] = v96;
    swift_unknownObjectRetain();
    sub_190D52690();
    sub_190D50920();
    sub_190CAC4C0(v142, v124, v118, v117, v137);

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease_n();
    return v142[0];
  }

  v118 = *(v4 + 2);
  if (!v118)
  {
    goto LABEL_143;
  }

LABEL_134:
  v119 = 0;
  v120 = qword_1EAD458B0;
  v121 = *algn_1EAD458B8;
  v122 = v4 + 40;
  while (1)
  {
    v123 = *(v122 - 1) == v120 && *v122 == v121;
    if (v123 || (sub_190D58760() & 1) != 0)
    {
      break;
    }

    ++v119;
    v122 += 2;
    if (v118 == v119)
    {
      goto LABEL_143;
    }
  }

  v118 = v119 + 1;
  if (!__OFADD__(v119, 1))
  {
    goto LABEL_143;
  }

  __break(1u);

  swift_unknownObjectRelease();

  __break(1u);
  return result;
}

uint64_t static SendMenuSortOrder.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1909A7254(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);

  return sub_1909A7254(v4, v5);
}

void sub_190C74EC8(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 > 6)
  {
    v3 = 0;
  }

  else if (*(v1 + 17))
  {
    v3 = 1;
  }

  else if ((v2 | 2) == 2)
  {
    v4 = a1;
    if (qword_1EAD46180 != -1)
    {
      swift_once();
    }

    v5 = sub_190D53040();
    __swift_project_value_buffer(v5, qword_1EAD9D658);
    v6 = sub_190D53020();
    v7 = sub_190D576A0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v6, v7, "User is upgrading directly from a very old build, performing one time migration", v8, 2u);
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

    v9 = sub_190C764F4();
    v10 = sub_190D53020();
    v11 = sub_190D576C0();
    v12 = os_log_type_enabled(v10, v11);
    if (v9)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    if (v12)
    {
      if (v9)
      {
        v13 = "Determined that their legacy sort order was still default";
      }

      else
      {
        v13 = "Determined that their legacy sort order was not default";
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v10, v11, v13, v14, 2u);
      MEMORY[0x193AF7A40](v14, -1, -1);
    }

    a1 = v4;
  }

  else
  {
    v3 = 2;
  }

  *a1 = v3;
}

uint64_t sub_190C750A4(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for Fall2025SendMenuSortOrderProvider();
  inited = swift_initStackObject();
  *(inited + 16) = 0u;
  *(inited + 32) = 0u;
  if (*(*(v1 + 24) + 16))
  {
    sub_190D50920();
  }

  else
  {
    v5 = sub_190841C34();
    v6 = *(v2 + 32);
    type metadata accessor for SendMenuSortOrder();
    v2 = swift_allocObject();
    *(v2 + 16) = 7;
    *(v2 + 24) = v5;
    *(v2 + 32) = v6;
    sub_190D52690();
  }

  sub_190C74EC8(&v19);
  v7 = v19;
  v8 = sub_190C740F0(v2, v19, a1);
  v10 = v9;
  if (*(v2 + 16))
  {
    v11 = *(v2 + 17);
  }

  else
  {
    v11 = (v7 == 1) | *(v2 + 17);
  }

  type metadata accessor for SendMenuSortOrder();
  v12 = swift_allocObject();
  *(v12 + 16) = 7;
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 17) = v11 & 1;
  *(v12 + 24) = v8;
  *(v12 + 32) = v13;
  if (v10 & 1 | (v7 != 0))
  {
    if (qword_1EAD46180 != -1)
    {
      swift_once();
    }

    v14 = sub_190D53040();
    __swift_project_value_buffer(v14, qword_1EAD9D658);
    v15 = sub_190D53020();
    v16 = sub_190D57680();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_19020E000, v15, v16, "The sort order was recalculated, or this is an order upgrade. Persisting updated order.", v17, 2u);
      MEMORY[0x193AF7A40](v17, -1, -1);
    }
  }

  else
  {
  }

  return v12;
}

double sub_190C752D0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (*v0 > 5u)
    {
      if (v1 == 6)
      {
        type metadata accessor for Spring2025DSendMenuSortOrderProvider();
      }

      else
      {
        type metadata accessor for Fall2025SendMenuSortOrderProvider();
      }
    }

    else if (v1 == 4)
    {
      type metadata accessor for Fall2024SendMenuOrderProvider();
    }

    else
    {
      type metadata accessor for Spring2025SendMenuSortOrderProvider();
    }

    v5 = swift_allocObject();
    result = 0.0;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
  }

  else if (v1 >= 2)
  {
    if (v1 == 2)
    {
      type metadata accessor for DevelopmentFall2024SendMenuOrderProvider();
      v6 = swift_allocObject();
      v6[2] = 0;
      v6[3] = 0;
      v7 = MEMORY[0x1E69E7CC0];
      v6[4] = MEMORY[0x1E69E7CC0];
      v6[5] = v7;
    }

    else
    {
      type metadata accessor for Fall2024EarlySeedBuildsSendMenuOrderProvider();
      v8 = swift_allocObject();
      result = 0.0;
      *(v8 + 16) = 0u;
      *(v8 + 32) = 0u;
    }
  }

  else
  {
    type metadata accessor for LegacySendMenuOrderProvider();
    v2 = swift_allocObject();
    v2[2] = 0;
    v2[3] = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v2[4] = MEMORY[0x1E69E7CC0];
    v2[5] = v4;
  }

  return result;
}

unint64_t sub_190C75460()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53838);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DDD0E0;
  *(inited + 32) = 0x6E6F6973726576;
  *(inited + 40) = 0xE700000000000000;
  v2 = MEMORY[0x1E69E6530];
  *(inited + 48) = *(v0 + 16);
  *(inited + 72) = v2;
  strcpy((inited + 80), "isCustomized");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v3 = MEMORY[0x1E69E6370];
  *(inited + 96) = *(v0 + 17);
  *(inited + 120) = v3;
  *(inited + 128) = 0x657469726F766166;
  *(inited + 136) = 0xE900000000000073;
  v4 = *(v0 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
  *(inited + 144) = v4;
  *(inited + 168) = v5;
  *(inited + 176) = 0x7370704165726F6DLL;
  *(inited + 184) = 0xE800000000000000;
  v6 = *(v0 + 32);
  *(inited + 216) = v5;
  *(inited + 192) = v6;
  sub_190D52690();
  sub_190D52690();
  v7 = sub_190820FDC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DF00);
  swift_arrayDestroy();
  return v7;
}

ChatKit::SendMenuSortOrder::Version_optional __swiftcall SendMenuSortOrder.Version.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_190C755F0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v40 = *(a1 + 24);
  swift_bridgeObjectRetain_n();
  sub_190D52690();
  v3 = sub_190D52690();
  sub_190CA9D08(v3);
  v4 = v40;
  v5 = sub_190CAAE18(v2);
  v39 = v2;

  v6 = *(v40 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
LABEL_21:

    if (qword_1EAD45B10 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_22;
  }

  v8 = 0;
  v9 = v5 + 56;
  while (v8 < *(v4 + 16))
  {
    v10 = (v40 + 32 + 16 * v8);
    v12 = *v10;
    v11 = v10[1];
    ++v8;
    if (!*(v5 + 16))
    {
      sub_190D52690();
      goto LABEL_14;
    }

    sub_190D58870();
    sub_190D52690();
    sub_190D56FC0();
    v13 = sub_190D588C0();
    v14 = -1 << *(v5 + 32);
    v15 = v13 & ~v14;
    if ((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      while (1)
      {
        v17 = (*(v5 + 48) + 16 * v15);
        v18 = *v17 == v12 && v17[1] == v11;
        if (v18 || (sub_190D58760() & 1) != 0)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      if (v8 == v6)
      {
        goto LABEL_21;
      }
    }

    else
    {
LABEL_14:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19082DBB4(0, v7[2] + 1, 1);
      }

      v20 = v7[2];
      v19 = v7[3];
      if (v20 >= v19 >> 1)
      {
        sub_19082DBB4((v19 > 1), v20 + 1, 1);
      }

      v7[2] = v20 + 1;
      v21 = &v7[2 * v20];
      v21[4] = v12;
      v21[5] = v11;
      v4 = v40;
      if (v8 == v6)
      {
        goto LABEL_21;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  swift_once();
LABEL_22:
  swift_beginAccess();
  v22 = off_1EAD45B18;
  swift_beginAccess();
  v23 = v22[2];
  v24 = v7[2];
  if (v24)
  {
    v25 = v22[3];
    ObjectType = swift_getObjectType();
    v26 = *(v25 + 24);
    swift_unknownObjectRetain();
    v27 = v7 + 5;
    while (1)
    {
      v29 = *(v27 - 1);
      v28 = *v27;
      sub_190D52690();
      v30 = v23;
      if (v26(v29, v28, ObjectType, v25))
      {
        v31 = sub_190C75C14(v29, v28, v39, v4);
        v32 = *(v39 + 2);
        if (v32 < v31)
        {
          goto LABEL_36;
        }

        v4 = v31;
        if (v31 < 0)
        {
          goto LABEL_37;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v32 >= *(v39 + 3) >> 1)
        {
          v39 = sub_1908354D4(isUniquelyReferenced_nonNull_native, v32 + 1, 1, v39);
        }

        sub_190CAAEB0(v4, v4, 1, v29, v28);
        v4 = v40;
      }

      v27 += 2;
      --v24;
      v23 = v30;
      if (!v24)
      {
        goto LABEL_34;
      }
    }
  }

  swift_unknownObjectRetain();
LABEL_34:

  v34 = *(v37 + 16);
  v35 = *(v37 + 17);
  swift_unknownObjectRelease();
  type metadata accessor for SendMenuSortOrder();
  result = swift_allocObject();
  *(result + 16) = v34;
  *(result + 17) = v35;
  *(result + 24) = v39;
  *(result + 32) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t SendMenuSortOrder.deinit()
{

  return v0;
}

uint64_t SendMenuSortOrder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_190C75A34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((sub_1909A7254(*(*a1 + 24), *(*a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 32);
  v5 = *(v3 + 32);

  return sub_1909A7254(v4, v5);
}

uint64_t SendMenuSortOrder.UpgradeType.hashValue.getter()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](v1);
  return sub_190D588C0();
}

unint64_t sub_190C75B0C()
{
  result = qword_1EAD61898;
  if (!qword_1EAD61898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61898);
  }

  return result;
}

unint64_t sub_190C75B64()
{
  result = qword_1EAD618A0;
  if (!qword_1EAD618A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD618A0);
  }

  return result;
}

uint64_t sub_190C75C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  if (!v5)
  {
    return *(a3 + 16);
  }

  v8 = 0;
  v9 = a4 + 32;
  for (i = (a4 + 24); ; i += 2)
  {
    result = i[1];
    if (result == a1 && i[2] == a2)
    {
      break;
    }

    result = sub_190D58760();
    if (result)
    {
      break;
    }

    if (v5 == ++v8)
    {
      return *(a3 + 16);
    }
  }

  if (!v8)
  {
    return 0;
  }

  if (v5 - 1 == v8)
  {
    return *(a3 + 16);
  }

  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = *(i - 1);
    v17 = *i;
    v18 = (a3 + 40);
    while (1)
    {
      result = *(v18 - 1);
      if (result == v16 && *v18 == v17)
      {
        break;
      }

      result = sub_190D58760();
      if (result)
      {
        break;
      }

      ++v15;
      v18 += 2;
      if (v14 == v15)
      {
        goto LABEL_23;
      }
    }

    v13 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      return v13;
    }

    __break(1u);
    goto LABEL_39;
  }

LABEL_23:
  v20 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v20 >= v5)
  {
LABEL_40:
    __break(1u);
    return result;
  }

  if (v14)
  {
    v13 = 0;
    v21 = (v9 + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = (a3 + 40);
    do
    {
      v25 = *(v24 - 1) == v22 && *v24 == v23;
      if (v25 || (sub_190D58760() & 1) != 0)
      {
        return v13;
      }

      ++v13;
      v24 += 2;
    }

    while (v14 != v13);
  }

  if (v14 >= v8)
  {
    return v8;
  }

  else
  {
    return v14;
  }
}

uint64_t sub_190C75D88(uint64_t a1, uint64_t a2)
{
  sub_190D52690();
  v4 = sub_190CAAE18(a2);

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = a1 + 32;
    v8 = v4 + 56;
    while (1)
    {
      v9 = (v7 + 16 * v6);
      v11 = *v9;
      v10 = v9[1];
      if (!*(v4 + 16))
      {
        break;
      }

      sub_190D58870();
      sub_190D52690();
      sub_190D56FC0();
      v12 = sub_190D588C0();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      if (((*(v8 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_13;
      }

      ++v6;
      v15 = ~v13;
      while (1)
      {
        v16 = (*(v4 + 48) + 16 * v14);
        v17 = *v16 == v11 && v16[1] == v10;
        if (v17 || (sub_190D58760() & 1) != 0)
        {
          break;
        }

        v14 = (v14 + 1) & v15;
        if (((*(v8 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      if (v6 == v5)
      {
        goto LABEL_17;
      }
    }

    sub_190D52690();
LABEL_13:

    if (qword_1EAD46180 != -1)
    {
      swift_once();
    }

    v18 = sub_190D53040();
    __swift_project_value_buffer(v18, qword_1EAD9D658);
    sub_190D52690();
    v19 = sub_190D53020();
    v20 = sub_190D57680();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29[0] = v22;
      *v21 = 136315138;
      v23 = sub_19021D9F8(v11, v10, v29);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_19020E000, v19, v20, "Persisted sort does not contain %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x193AF7A40](v22, -1, -1);
      MEMORY[0x193AF7A40](v21, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
LABEL_17:

    if (qword_1EAD46180 != -1)
    {
      swift_once();
    }

    v24 = sub_190D53040();
    __swift_project_value_buffer(v24, qword_1EAD9D658);
    v25 = sub_190D53020();
    v26 = sub_190D57680();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_19020E000, v25, v26, "Persisted sort contains all installed extension identifiers.", v27, 2u);
      MEMORY[0x193AF7A40](v27, -1, -1);
    }

    return 1;
  }
}

id sub_190C760C8(uint64_t a1)
{
  if (!a1)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  if (*(a1 + 16))
  {
    sub_190D52690();
    v2 = sub_19022DCEC(0x6D6F747375437369, 0xEC00000064657A69);
    if (v3)
    {
      sub_19021834C(*(a1 + 56) + 32 * v2, v31);

      if (swift_dynamicCast())
      {
        v4 = rawValue;
        if (!*(a1 + 16))
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v4 = 0;
  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

LABEL_10:
  sub_190D52690();
  v7 = sub_19022DCEC(0x657469726F766166, 0xE900000000000073);
  if (v8)
  {
    sub_19021834C(*(a1 + 56) + 32 * v7, v31);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
    if (swift_dynamicCast())
    {
      v6 = rawValue;
      if (!*(a1 + 16))
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

LABEL_15:
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

LABEL_16:
  sub_190D52690();
  v9 = sub_19022DCEC(0x7370704165726F6DLL, 0xE800000000000000);
  if (v10)
  {
    sub_19021834C(*(a1 + 56) + 32 * v9, v31);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
    if (swift_dynamicCast())
    {
      v5 = rawValue;
      if (!*(a1 + 16))
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }
  }

  else
  {
  }

LABEL_21:
  v5 = MEMORY[0x1E69E7CC0];
  if (!*(a1 + 16))
  {
    goto LABEL_27;
  }

LABEL_22:
  sub_190D52690();
  v11 = sub_19022DCEC(0x6E6F6973726576, 0xE700000000000000);
  if (v12)
  {
    sub_19021834C(*(a1 + 56) + 32 * v11, v31);

    if (swift_dynamicCast())
    {
      SendMenuSortOrder.Version.init(rawValue:)(rawValue);
      v13 = v31[0];
      if ((v31[0] | 8) != 8)
      {

        goto LABEL_37;
      }
    }
  }

  else
  {
  }

LABEL_27:
  result = IMBalloonExtensionIDWithSuffix();
  if (result)
  {
    v15 = result;
    v16 = sub_190D56F10();
    v18 = v17;

    result = IMBalloonExtensionIDWithSuffix();
    if (result)
    {
      v19 = result;

      v20 = sub_190D56F10();
      v22 = v21;

      v23 = sub_190D52690();
      v24 = sub_190CAAE18(v23);

      v25 = sub_190D52690();
      v26 = sub_190CAAE18(v25);

      if (sub_190CA994C(v16, v18, v24))
      {
        v27 = 1;
      }

      else
      {
        v27 = sub_190CA994C(v16, v18, v26);
      }

      v28 = sub_190CA994C(v20, v22, v24);

      if (v28)
      {
      }

      else
      {
        v29 = sub_190CA994C(v20, v22, v26);

        if (((v27 | v29) & 1) == 0)
        {
          v13 = 0;
          goto LABEL_37;
        }
      }

      v13 = 2;
LABEL_37:
      type metadata accessor for SendMenuSortOrder();
      result = swift_allocObject();
      *(result + 16) = v13;
      *(result + 17) = v4;
      *(result + 3) = v6;
      *(result + 4) = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190C764F4()
{
  sub_190C752D0();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 16))(ObjectType, v2);
  v5 = *(v0 + 24);
  v6 = sub_190D52690();
  v7 = sub_190CAAE18(v6);

  v9 = *(v5 + 16);
  if (!v9)
  {
LABEL_29:
    swift_unknownObjectRelease();

LABEL_33:

    return 0;
  }

  v10 = 0;
  v31 = *(v4 + 16);
  v32 = 0;
  v11 = 1;
LABEL_4:
  while (2)
  {
    if (v10 == v31)
    {

      v19 = sub_190CAAE18(v4);

      v20 = 0;
      v21 = v19 + 56;
      while (v20 < *(v5 + 16))
      {
        v22 = (v5 + 32 + 16 * v20);
        v23 = v22[1];
        if (!*(v19 + 16))
        {
LABEL_35:
          sub_190D52690();
          goto LABEL_29;
        }

        v24 = *v22;
        sub_190D58870();
        sub_190D52690();
        sub_190D56FC0();
        v25 = sub_190D588C0();
        v26 = -1 << *(v19 + 32);
        v27 = v25 & ~v26;
        if (((*(v21 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_29;
        }

        ++v20;
        v28 = ~v26;
        while (1)
        {
          v29 = (*(v19 + 48) + 16 * v27);
          v30 = *v29 == v24 && v29[1] == v23;
          if (v30 || (sub_190D58760() & 1) != 0)
          {
            break;
          }

          v27 = (v27 + 1) & v28;
          if (((*(v21 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        if (v20 == v9)
        {
          swift_unknownObjectRelease();

          return 1;
        }
      }
    }

    else
    {
      if (v10 < *(v4 + 16))
      {
        v13 = (v4 + 32 + 16 * v10);
        v15 = *v13;
        v14 = v13[1];
        sub_190D52690();
        if (sub_190CA994C(v15, v14, v7))
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v16 = 0;
          ++v10;
          v17 = (v5 + 40);
          while (1)
          {
            if (v16 >= *(v5 + 16))
            {
              __break(1u);
              goto LABEL_35;
            }

            v18 = *(v17 - 1) == v15 && *v17 == v14;
            if (v18 || (sub_190D58760() & 1) != 0)
            {
              break;
            }

            ++v16;
            v17 += 2;
            if (v9 == v16)
            {

              goto LABEL_4;
            }
          }

          v12 = v11 | (v16 >= v32);
          v32 = v16;
          v11 = 0;
          if (v12)
          {
            continue;
          }

          swift_unknownObjectRelease();
        }

        goto LABEL_33;
      }

      __break(1u);
    }

    break;
  }

  __break(1u);
  return result;
}

_BYTE *sub_190C76818(void *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_currentDisplayMode] = 0;
  v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_wantsPileDestOut] = 0;
  v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_isAlphaThresholdFilterEnabled] = 0;
  v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_ignoreGyro] = 1;
  *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_presentationTintColor] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_backingBalloon] = 0;
  v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_wantsMaterialBackground] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration] = a1;
  v1[OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled] = 0;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for TapbackBlurView();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4[OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled] = 1;
  v5 = *MEMORY[0x1E6979928];
  v6 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v7 = [v6 initWithType_];
  sub_190A86CA4(v7);

  v4[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_isAlphaThresholdFilterEnabled] = 1;
  v8 = *MEMORY[0x1E6979808];
  v9 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v10 = v4;
  v11 = [v9 initWithType_];
  sub_190A86CA4(v11);

  v10[OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled] = 1;
  v12 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_190A86CA4(v12);

  return v10;
}

void *sub_190C769C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_presentationTintColor);
  v2 = v1;
  return v1;
}

void sub_190C769F8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_presentationTintColor);
  *(v1 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_presentationTintColor) = a1;
}

void sub_190C76A0C(double a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x150))();
  if (!v3)
  {
    v3 = [v1 tintColor];
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:2213.63 damping:94.0985 initialVelocity:{0.0, 0.0}];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v4 timingParameters:0.0];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v10[4] = sub_190C773EC;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_190840E6C;
  v10[3] = &block_descriptor_53_0;
  v7 = _Block_copy(v10);
  v8 = v3;
  v9 = v1;

  [v5 addAnimations_];
  _Block_release(v7);
  [v5 startAnimationAfterDelay_];
}

void sub_190C76C8C()
{
  v1 = [v0 tintColor];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x150))();
  [v0 setTintColor_];

  v3 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:2213.63 damping:94.0985 initialVelocity:{0.0, 0.0}];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v3 timingParameters:0.0];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = v1;
  v9[4] = sub_190C774EC;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_190840E6C;
  v9[3] = &block_descriptor_118;
  v6 = _Block_copy(v9);
  v7 = v0;
  v8 = v1;

  [v4 addAnimations_];
  _Block_release(v6);
  [v4 startAnimationAfterDelay_];
}

void sub_190C76E6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_backingBalloon);
}

id sub_190C76EBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackPickerContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190C76F80(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration);
  *(v1 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration) = a1;
}

uint64_t sub_190C772C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD000000000000021 && 0x8000000190E7D050 == a2 || (sub_190D58760() & 1) != 0)
    {
      return 1;
    }

    v4 = sub_190D56ED0();
  }

  else
  {
    v4 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for TapbackPickerContainerView();
  v5 = objc_msgSendSuper2(&v6, sel__shouldAnimatePropertyWithKey_, v4);

  return v5;
}

void sub_190C773FC(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TapbackPickerContainerView();
  objc_msgSendSuper2(&v8, sel_setTintColor_, a1);
  v3 = [v1 layer];
  v4 = [v1 tintColor];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 CGColor];

    v7 = sub_190D56ED0();
    [v3 setValue:v6 forKeyPath:v7];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190C774F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19085B7E8(a3, v25 - v10);
  v12 = sub_190D572E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_190D50920();
  if (v14 == 1)
  {
    sub_19021BD94(v11);
  }

  else
  {
    sub_190D572D0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_190D57240();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_190D56F80() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_190D50920();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59BF0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59BF0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_190C777AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19085B7E8(a3, v25 - v10);
  v12 = sub_190D572E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_190D50920();
  if (v14 == 1)
  {
    sub_19021BD94(v11);
  }

  else
  {
    sub_190D572D0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_190D57240();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_190D56F80() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_190D50920();
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_190C77A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19085B7E8(a3, v25 - v10);
  v12 = sub_190D572E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_190D50920();
  if (v14 == 1)
  {
    sub_19021BD94(v11);
  }

  else
  {
    sub_190D572D0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_190D57240();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_190D56F80() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_190D50920();
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id SafetyCheckHelper.init(contacts:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  *&v1[OBJC_IVAR___CKSafetyCheckHelper_controllerTask] = 0;
  *&v1[OBJC_IVAR___CKSafetyCheckHelper_safetyCheckController] = 0;
  *&v1[OBJC_IVAR___CKSafetyCheckHelper_contacts] = a1;
  v6 = type metadata accessor for SafetyCheckHelper();
  v14.receiver = v1;
  v14.super_class = v6;
  sub_190D52690();
  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = [objc_opt_self() sharedFeatureFlags];
  v9 = [v8 isContactReviewEnabled];

  if (v9)
  {
    v10 = sub_190D572E0();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v7;
    v11[5] = a1;
    v12 = v7;
    *&v12[OBJC_IVAR___CKSafetyCheckHelper_controllerTask] = sub_1908590EC(0, 0, v5, &unk_190E00EB0, v11);
  }

  else
  {
  }

  return v7;
}

uint64_t sub_190C77EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_190C77F1C, 0, 0);
}

uint64_t sub_190C77F1C()
{
  v0[4] = sub_190D52580();
  v0[5] = sub_190D52570();
  v3 = (*MEMORY[0x1E699A168] + MEMORY[0x1E699A168]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_190C77FD8;

  return v3();
}

uint64_t sub_190C77FD8()
{

  return MEMORY[0x1EEE6DFA0](sub_190C780F0, 0, 0);
}

uint64_t sub_190C780F0()
{
  v1 = v0[3];
  v0[7] = sub_190D52570();
  v4 = (*MEMORY[0x1E699A158] + MEMORY[0x1E699A158]);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_190C781AC;

  return v4(v1, 0);
}

uint64_t sub_190C781AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_190C78354;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_190C782DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_190C782DC()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR___CKSafetyCheckHelper_safetyCheckController);
  *(v1 + OBJC_IVAR___CKSafetyCheckHelper_safetyCheckController) = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_190C78354()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190C783B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA4;

  return sub_190C77EFC(a1, v4, v5, v7, v6);
}

uint64_t sub_190C784C4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190C78560, 0, 0);
}

uint64_t sub_190C78560()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_190D572E0();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v5[5] = v3;
  v6 = v2;
  v7 = v3;
  v8 = sub_190C77A4C(0, 0, v1, &unk_190E00EC8, v5);
  v0[5] = v8;
  sub_19021BD94(v1);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_190C786B4;
  v10 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DA40](v0 + 7, v8, v10);
}

uint64_t sub_190C786B4()
{

  return MEMORY[0x1EEE6DFA0](sub_190C787B0, 0, 0);
}

uint64_t sub_190C787B0()
{

  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_190C78820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[9] = a1;
  v6 = sub_190D56770();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = sub_190D567A0();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190C78940, 0, 0);
}

uint64_t sub_190C78940()
{
  v1 = v0[10];
  v2 = *(v1 + OBJC_IVAR___CKSafetyCheckHelper_controllerTask);
  v0[18] = v2;
  if (v2)
  {
    sub_190D50920();
    v3 = swift_task_alloc();
    v0[19] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020);
    *v3 = v0;
    v3[1] = sub_190C78C48;
    v5 = MEMORY[0x1E69E7288];
    v6 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v4, v2, v6, v4, v5);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR___CKSafetyCheckHelper_safetyCheckController);
    if (v7)
    {
      v21 = v0[17];
      v22 = v0[16];
      v8 = v0[14];
      v23 = v0[15];
      v10 = v0[12];
      v9 = v0[13];
      v11 = v0[11];
      sub_1902188FC(0, &qword_1EAD46670);
      v12 = v7;
      v13 = sub_190D57870();
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v12;
      v0[6] = sub_190991A78;
      v0[7] = v14;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_190840E6C;
      v0[5] = &block_descriptor_119;
      v15 = _Block_copy(v0 + 2);
      v16 = v12;
      v17 = v11;
      sub_190D56790();
      v0[8] = MEMORY[0x1E69E7CC0];
      sub_190840DB0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
      sub_190840E08();
      sub_190D58170();
      MEMORY[0x193AF3110](0, v21, v8, v15);
      _Block_release(v15);

      (*(v9 + 8))(v8, v10);
      (*(v22 + 8))(v21, v23);

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    *v0[9] = v18;

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_190C78C48()
{

  if (v0)
  {

    v1 = sub_190C7A074;
  }

  else
  {
    v1 = sub_190C78D60;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_190C78D60()
{

  v1 = *(v0[10] + OBJC_IVAR___CKSafetyCheckHelper_safetyCheckController);
  if (v1)
  {
    v14 = v0[17];
    v2 = v0[14];
    v16 = v0[16];
    v17 = v0[15];
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    sub_1902188FC(0, &qword_1EAD46670);
    v6 = v1;
    v15 = sub_190D57870();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v0[6] = sub_190991A78;
    v0[7] = v7;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_190840E6C;
    v0[5] = &block_descriptor_119;
    v8 = _Block_copy(v0 + 2);
    v9 = v6;
    v10 = v5;
    sub_190D56790();
    v0[8] = MEMORY[0x1E69E7CC0];
    sub_190840DB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
    sub_190840E08();
    sub_190D58170();
    MEMORY[0x193AF3110](0, v14, v2, v8);
    _Block_release(v8);

    (*(v3 + 8))(v2, v4);
    (*(v16 + 8))(v14, v17);

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  *v0[9] = v11;

  v12 = v0[1];

  return v12();
}

uint64_t sub_190C78FA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA0;

  return sub_190C78820(a1, v4, v5, v7, v6);
}

uint64_t sub_190C791F0(void *a1, const void *a2, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v7 = a1;
  v8 = a3;

  return MEMORY[0x1EEE6DFA0](sub_190C792B8, 0, 0);
}

uint64_t sub_190C792B8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_190D572E0();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v5[5] = v3;
  v6 = v3;
  v7 = v2;
  v8 = sub_190C77A4C(0, 0, v1, &unk_190E00F48, v5);
  v0[6] = v8;
  sub_19021BD94(v1);
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_190C7940C;
  v10 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DA40](v0 + 8, v8, v10);
}

uint64_t sub_190C7940C()
{

  return MEMORY[0x1EEE6DFA0](sub_190C79508, 0, 0);
}

uint64_t sub_190C79508()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v1[2](v1, *(v0 + 64));
  _Block_release(v1);

  v3 = *(v0 + 8);

  return v3();
}

id SafetyCheckHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SafetyCheckHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetyCheckHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of SafetyCheckHelper.presentSafetyCheck(from:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19082CAEC;

  return v7(a1);
}

uint64_t sub_190C79828()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_190221DA0;

  return sub_190C791F0(v2, v3, v4);
}

uint64_t sub_190C798DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_19085B7E8(a3, v23 - v10);
  v12 = sub_190D572E0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_19021BD94(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_190D572D0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_190D57240();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_190D56F80() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    sub_190D50920();
    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_19021BD94(a3);

    return v21;
  }

LABEL_8:
  sub_19021BD94(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_190C79B98(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_190C7A078;

  return v6(a1);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_190C79CD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA4;

  return sub_190C78820(a1, v4, v5, v7, v6);
}

uint64_t sub_190C79D98(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_190C79E8C;

  return v5(v2 + 16);
}

uint64_t sub_190C79E8C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_190C79FBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA0;

  return sub_190C79D98(a1, v4);
}

uint64_t sub_190C7A07C(uint64_t a1)
{
  v3 = sub_190D52690();
  v4 = sub_1909A9490(v3, a1);

  if (v4)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A4B6B8();
    sub_190D51C10();
  }
}

uint64_t sub_190C7A1A0(uint64_t result)
{
  if (*(v1 + 56) == (result & 1))
  {
    *(v1 + 56) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A4B6B8();
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190C7A280(uint64_t result)
{
  if (*(v1 + 57) == (result & 1))
  {
    *(v1 + 57) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A4B6B8();
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190C7A360(uint64_t result)
{
  if (*(v1 + 58) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A4B6B8();
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190C7A438(uint64_t a1, char a2)
{
  if (*(v2 + 40))
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_190A4B6B8();
      sub_190D51C10();
    }
  }

  else if ((a2 & 1) != 0 || *(v2 + 32) != a1)
  {
    goto LABEL_9;
  }

  *(v2 + 32) = a1;
  *(v2 + 40) = a2 & 1;

  return sub_190C7A560();
}

uint64_t sub_190C7A560()
{
  swift_getKeyPath();
  sub_190A4B6B8();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  if (*(v0 + 40))
  {
LABEL_2:
    if (*(v0 + 58))
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_190D51C10();
    }
  }

  else
  {
    switch(*(v0 + 32))
    {
      case 0:
        goto LABEL_2;
      case 1:
      case 0xALL:
      case 0xDLL:
      case 0xELL:
      case 0x13:
        if (*(v0 + 58) != 3)
        {
          goto LABEL_3;
        }

        break;
      case 2:
        if (*(v0 + 58) != 6)
        {
          goto LABEL_3;
        }

        break;
      case 3:
      case 0x11:
        if (*(v0 + 58) != 2)
        {
          goto LABEL_3;
        }

        break;
      case 4:
      case 0x12:
        if (*(v0 + 58) != 1)
        {
          goto LABEL_3;
        }

        break;
      case 5:
      case 6:
      case 7:
      case 8:
        if (*(v0 + 58) != 4)
        {
          goto LABEL_3;
        }

        break;
      case 9:
        if (*(v0 + 58) != 5)
        {
          goto LABEL_3;
        }

        break;
      case 0xBLL:
      case 0xCLL:
        if (*(v0 + 58) != 7)
        {
          goto LABEL_3;
        }

        break;
      case 0xFLL:
      case 0x10:
        if (*(v0 + 58))
        {
          goto LABEL_3;
        }

        break;
      default:
        if (*(v0 + 58))
        {
          goto LABEL_3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_190C7AA84()
{
  swift_getKeyPath();
  sub_190A4B6B8();
  sub_190D51C20();

  return *(v0 + 32);
}

uint64_t sub_190C7AAF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A4B6B8();
  sub_190D51C20();

  v5 = *(v3 + 40);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_190C7ABAC()
{
  swift_getKeyPath();
  sub_190A4B6B8();
  sub_190D51C20();

  return sub_190D52690();
}

uint64_t sub_190C7AC20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A4B6B8();
  sub_190D51C20();

  *a2 = *(v3 + 48);
  return sub_190D52690();
}

uint64_t sub_190C7AC9C()
{
  swift_getKeyPath();
  sub_190A4B6B8();
  sub_190D51C20();

  return *(v0 + 56);
}

uint64_t sub_190C7AD14()
{
  swift_getKeyPath();
  sub_190A4B6B8();
  sub_190D51C20();

  return *(v0 + 57);
}

uint64_t sub_190C7AD8C()
{
  swift_getKeyPath();
  sub_190A4B6B8();
  sub_190D51C20();

  return *(v0 + 58);
}

uint64_t sub_190C7ADFC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_190A4B6B8();
  sub_190D51C20();

  if ((*(v0 + 58) - 4) > 3u)
  {
    v2 = MEMORY[0x1E69E7CC0];
    v3 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(&off_1E72FA240 + (*(v0 + 58) - 4));
    v3 = *(v2 + 16);
    if (v3)
    {
LABEL_3:
      v4 = (v2 + 32);
      v5 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v9 = *v4++;
        v8 = v9;
        if (v9 > 1)
        {
          if (v8 == 2 || (v12 = [*(v1 + 16) recipients], v13 = sub_190D57180(), v12, v14 = *(v13 + 16), , v14 == 1))
          {
LABEL_14:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_19082E23C(0, *(v5 + 16) + 1, 1);
            }

            v7 = *(v5 + 16);
            v6 = *(v5 + 24);
            if (v7 >= v6 >> 1)
            {
              sub_19082E23C((v6 > 1), v7 + 1, 1);
            }

            *(v5 + 16) = v7 + 1;
            *(v5 + v7 + 32) = v8;
          }
        }

        else
        {
          if (!v8)
          {
            goto LABEL_14;
          }

          v10 = [objc_opt_self() sharedFeatureFlags];
          v11 = [v10 isKeyTransparencyReportToAppleEnabled];

          if (v11)
          {
            goto LABEL_14;
          }
        }

        if (!--v3)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v5;
}

uint64_t sub_190C7AFF4(uint64_t a1, uint64_t a2, char a3)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    if ((a3 & 1) != 0 || *(a1 + 32) != a2)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(a1 + 32) = a2;
    *(a1 + 40) = a3 & 1;
    return sub_190C7A560();
  }

  if (a3)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_190A4B6B8();
  sub_190D51C10();
}

uint64_t sub_190C7B15C()
{

  v1 = OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15KeyTransparency9ViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s9ViewModelCMa_5()
{
  result = qword_1EAD45CC0;
  if (!qword_1EAD45CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190C7B264()
{
  result = sub_190D51C60();
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

uint64_t sub_190C7B364()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
  sub_190D52690();
}

uint64_t sub_190C7B3B8(void *a1, void *a2)
{
  v3 = v2;
  *(v3 + 32) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v3 + 40) = 1;
  *(v3 + 48) = v6;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  sub_190D51C50();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v7 = a1;
  v8 = a2;
  v9 = sub_190C690DC();
  v11 = v10;

  if ((*(v3 + 40) & 1) == 0)
  {
    if ((v11 & 1) != 0 || *(v3 + 32) != v9)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v3 + 32) = v9;
    *(v3 + 40) = v11 & 1;
    sub_190C7A560();
    goto LABEL_8;
  }

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_190A4B6B8();
  sub_190D51C10();

LABEL_8:
  v13 = [objc_opt_self() defaultCenter];
  v14 = qword_1EAD45038;
  sub_190D50920();
  if (v14 != -1)
  {
    swift_once();
  }

  [v13 addObserver:v3 selector:sel_handleKeyTransparencyStatusChanged_ name:qword_1EAD9D558 object:0];

  return v3;
}

uint64_t sub_190C7B5BC()
{
  sub_190C690DC();
  swift_getKeyPath();
  sub_190A4B6B8();
  sub_190D51C10();

  swift_getKeyPath();
  sub_190D51C10();
}

uint64_t sub_190C7B738()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 24);
  *(v1 + 40) = v2;
  return sub_190C7A560();
}

id sub_190C7B7A4()
{
  result = [v0 chat];
  if (result)
  {
    v2 = result;
    v5 = sub_190C7C42C();
    MEMORY[0x193AF28B0](44, 0xE100000000000000);
    v3 = sub_190C7C544();
    MEMORY[0x193AF28B0](v3);

    MEMORY[0x193AF28B0](44, 0xE100000000000000);
    v4 = sub_190C7C630();
    MEMORY[0x193AF28B0](v4);

    return v5;
  }

  return result;
}

unint64_t CKConversationListCollectionViewController.captureFilteringStateForDiagnosticsRequest()()
{
  if (qword_1EAD46BA0 != -1)
  {
    swift_once();
  }

  v0 = sub_190D53040();
  __swift_project_value_buffer(v0, qword_1EAD9D8E0);
  v1 = sub_190D53020();
  v2 = sub_190D576C0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19020E000, v1, v2, "Capturing diagnostic information", v3, 2u);
    MEMORY[0x193AF7A40](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DDD0E0;
  *(inited + 32) = 0x73676E6974746573;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_190C7CACC();
  *(inited + 56) = 0x6F4D7265746C6966;
  *(inited + 64) = 0xEB00000000736564;
  *(inited + 72) = sub_190C7BA58();
  strcpy((inited + 80), "conversations");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_190C7BD20();
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x8000000190E5E330;
  *(inited + 120) = sub_190C7D448();
  v5 = sub_190824188(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61908);
  swift_arrayDestroy();
  return v5;
}

id sub_190C7BA58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD5600;
  *(inited + 32) = 0x657669746361;
  *(inited + 40) = 0xE600000000000000;
  result = [v1 activeFilterModes];
  if (result)
  {
    v4 = result;
    sub_1902188FC(0, &qword_1EAD46510);
    sub_190218944();
    sub_190D57410();

    sub_190D574B0();

    v5 = sub_190D57480();
    v7 = v6;

    *(inited + 48) = v5;
    *(inited + 56) = v7;
    *(inited + 64) = 0x746C7561666564;
    *(inited + 72) = 0xE700000000000000;
    sub_190D57AA0();
    *(inited + 80) = sub_190D57B40();
    *(inited + 88) = v8;
    *(inited + 96) = 0xD000000000000010;
    *(inited + 104) = 0x8000000190E7D1F0;
    v9 = sub_190D57A90();
    sub_19024FA1C(v9);

    v10 = sub_190D57480();
    v12 = v11;

    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 128) = 0x656C626967696C65;
    *(inited + 136) = 0xE800000000000000;
    sub_19022CDE8();
    v13 = sub_190D57480();
    v15 = v14;

    *(inited + 144) = v13;
    *(inited + 152) = v15;
    *(inited + 160) = 0xD000000000000015;
    *(inited + 168) = 0x8000000190E7D210;
    if (CKMessageSpamFilteringEnabled())
    {
      v16 = sub_190B6CB20();
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    sub_19024FA1C(v16);

    v17 = sub_190D57480();
    v19 = v18;

    *(inited + 176) = v17;
    *(inited + 184) = v19;
    *(inited + 192) = 0xD000000000000013;
    *(inited + 200) = 0x8000000190E7D230;
    if (CKMessageSpamFilteringEnabled())
    {
      v20 = sub_190B6CB38();
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    sub_19024FA1C(v20);

    v21 = sub_190D57480();
    v23 = v22;

    *(inited + 208) = v21;
    *(inited + 216) = v23;
    v24 = sub_190821AD4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53C60);
    swift_arrayDestroy();
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}