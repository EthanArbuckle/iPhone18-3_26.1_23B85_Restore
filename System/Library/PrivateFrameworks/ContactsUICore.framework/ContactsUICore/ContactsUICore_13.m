BOOL sub_1A33A9708@<W0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = [objc_opt_self() standardPreferences];
  v5 = sub_1A34CD0E0();
  v6 = [v4 userHasOptedInToPreference_];

  result = (v6 & 1) != 0 || sub_1A33ADC94(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A33A97BC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9C50);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9C58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  type metadata accessor for SensitiveContentBlur(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9B90);
  sub_1A34CA510();
  if (LOBYTE(v21[0]) != 1)
  {
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  sub_1A34CCC70();
  sub_1A34CADA0();
  v12 = *(v2 + 36);
  v13 = *MEMORY[0x1E697DBA8];
  v14 = sub_1A34CA5D0();
  v15 = *(v14 - 8);
  (*(v15 + 104))(&v4[v12], v13, v14);
  (*(v15 + 56))(&v4[v12], 0, 1, v14);
  v16 = v21[5];
  *(v4 + 4) = v21[4];
  *(v4 + 5) = v16;
  *(v4 + 6) = v21[6];
  v17 = v21[3];
  *(v4 + 2) = v21[2];
  *(v4 + 3) = v17;
  v18 = v21[1];
  *v4 = v21[0];
  *(v4 + 1) = v18;
  v19 = &v8[*(v5 + 36)];
  sub_1A34CCB90();
  LOBYTE(v14) = sub_1A34CBA90();
  v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C92C0) + 36)] = v14;
  sub_1A329D98C(v4, v8, &qword_1EB0C9C50);
  sub_1A329D98C(v8, v11, &qword_1EB0C9C58);
  sub_1A329D98C(v11, a1, &qword_1EB0C9C58);
  return (*(v6 + 56))(a1, 0, 1, v5);
}

uint64_t SensitiveContentActionsView.init(contact:actionsProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SensitiveContentActionsView(0);
  v7 = a3 + v6[5];
  sub_1A34CC730();
  *v7 = v12;
  *(v7 + 8) = v13;
  v8 = a3 + v6[6];
  sub_1A34CC730();
  *v8 = v12;
  *(v8 + 8) = v13;
  v9 = a3 + v6[7];
  sub_1A34CC730();
  *v9 = v12;
  *(v9 + 8) = v13;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  type metadata accessor for SensitiveContentActionsView.Model(0);
  return sub_1A34CA500();
}

uint64_t sub_1A33A9C20@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = objc_allocWithZone(type metadata accessor for SensitiveContentActionsView.Model(0));
  v5 = a1;
  swift_unknownObjectRetain();
  v6 = sub_1A33ADE00(v5);

  result = swift_unknownObjectRelease();
  *a2 = v6;
  return result;
}

uint64_t SensitiveContentActionsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A34CB280();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9A40);
  return sub_1A33A9D18(v1, a1 + *(v3 + 44));
}

uint64_t sub_1A33A9D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9C60);
  v50 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9C68);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9C70);
  v47 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9C78);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9A48);
  v20 = a1;
  sub_1A34CA510();
  v21 = *&v67[0];
  swift_getKeyPath();
  *&v67[0] = v21;
  sub_1A33AE54C(&qword_1EB0C9BB0, type metadata accessor for SensitiveContentActionsView.Model);
  sub_1A34C99A0();

  LODWORD(a1) = v21[OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model__shouldShowDisclaimer];

  if (a1 == 1)
  {
    v45 = v20;
    sub_1A33AA388(v65);
    sub_1A33AA578(v13);
    v61 = v65[6];
    v62 = v65[7];
    v63 = v65[8];
    v64 = v65[9];
    v57 = v65[2];
    v58 = v65[3];
    v59 = v65[4];
    v60 = v65[5];
    v55 = v65[0];
    v56 = v65[1];
    v22 = v46;
    v23 = v47;
    v24 = *(v47 + 16);
    v24(v46, v13, v9);
    v25 = v62;
    v66[6] = v61;
    v66[7] = v62;
    v26 = v63;
    v27 = v64;
    v66[8] = v63;
    v66[9] = v64;
    v28 = v57;
    v29 = v58;
    v66[2] = v57;
    v66[3] = v58;
    v30 = v59;
    v31 = v60;
    v66[4] = v59;
    v66[5] = v60;
    v32 = v55;
    v33 = v56;
    v66[0] = v55;
    v66[1] = v56;
    *(v8 + 6) = v61;
    *(v8 + 7) = v25;
    *(v8 + 8) = v26;
    *(v8 + 9) = v27;
    *(v8 + 2) = v28;
    *(v8 + 3) = v29;
    *(v8 + 4) = v30;
    *(v8 + 5) = v31;
    *v8 = v32;
    *(v8 + 1) = v33;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9C88);
    v24(&v8[*(v34 + 48)], v22, v9);
    sub_1A33AE61C(v66, v67);
    v35 = *(v23 + 8);
    v35(v13, v9);
    v35(v22, v9);
    v67[6] = v61;
    v67[7] = v62;
    v67[8] = v63;
    v67[9] = v64;
    v67[2] = v57;
    v67[3] = v58;
    v67[4] = v59;
    v67[5] = v60;
    v67[0] = v55;
    v67[1] = v56;
    sub_1A3288FDC(v67, &unk_1EB0C9C90);
    sub_1A3208F10(v8, v19);
    (*(v48 + 56))(v19, 0, 1, v49);
  }

  else
  {
    (*(v48 + 56))(v19, 1, 1, v49);
  }

  v36 = v51;
  sub_1A33AAA14(v51);
  sub_1A3208E38(v19, v16);
  v37 = v50;
  v38 = *(v50 + 16);
  v39 = v52;
  v40 = v54;
  v38(v52, v36, v54);
  v41 = v53;
  sub_1A3208E38(v16, v53);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9C80);
  v38((v41 + *(v42 + 48)), v39, v40);
  v43 = *(v37 + 8);
  v43(v36, v40);
  sub_1A3208EA8(v19);
  v43(v39, v40);
  return sub_1A3208EA8(v16);
}

uint64_t sub_1A33AA2E0()
{
  swift_getKeyPath();
  sub_1A33AE54C(&qword_1EB0C9BB0, type metadata accessor for SensitiveContentActionsView.Model);
  sub_1A34C99A0();

  return *(v0 + OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model__shouldShowDisclaimer);
}

__n128 sub_1A33AA388@<Q0>(uint64_t a1@<X8>)
{
  *&v18 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD00000000000001DLL, 0x80000001A3510670);
  *(&v18 + 1) = v2;
  sub_1A328A95C();
  v3 = sub_1A34CBE30();
  v5 = v4;
  v7 = v6;
  if (qword_1EB0C4AD8 != -1)
  {
    swift_once();
  }

  v8 = sub_1A34CBDE0();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1A328A9B0(v3, v5, v7 & 1);

  KeyPath = swift_getKeyPath();
  sub_1A34CCC80();
  sub_1A34CADA0();
  *&v17[23] = v19;
  *&v17[7] = v18;
  *&v17[55] = v21;
  *&v17[71] = v22;
  *&v17[87] = v23;
  *&v17[103] = v24;
  *&v17[39] = v20;
  *(a1 + 105) = *&v17[64];
  *(a1 + 121) = *&v17[80];
  *(a1 + 137) = *&v17[96];
  *(a1 + 41) = *v17;
  *(a1 + 57) = *&v17[16];
  result = *&v17[32];
  *(a1 + 73) = *&v17[32];
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 152) = *(&v24 + 1);
  *(a1 + 89) = *&v17[48];
  return result;
}

uint64_t sub_1A33AA578@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for SensitiveContentActionsView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v31[1] = v6;
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D50);
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9CA0);
  v13 = *(v12 - 8);
  v34 = v12;
  v35 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v37 = v31 - v14;
  v15 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD00000000000001ELL, 0x80000001A3510620);
  v17 = v16;
  sub_1A33AE68C(v2, v7);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  sub_1A33AE6F0(v7, v19 + v18);
  v41 = v15;
  v42 = v17;
  v38 = &v41;
  v39 = 0x6C6C69662E657965;
  v40 = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
  sub_1A34CC790();

  v20 = sub_1A3284D0C(&unk_1EB0C0500, &unk_1EB0C8D50);
  v21 = sub_1A33AE76C();
  v22 = v32;
  sub_1A34CBEB0();
  (*(v33 + 8))(v11, v22);
  v23 = v31[0];
  v24 = (v31[0] + *(v4 + 28));
  v25 = *v24;
  v26 = *(v24 + 1);
  v45 = v25;
  v46 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC760();
  sub_1A33AE68C(v23, v7);
  v27 = swift_allocObject();
  sub_1A33AE6F0(v7, v27 + v18);
  v41 = v22;
  v42 = &type metadata for SensitiveContentButtonStyle;
  v43 = v20;
  v44 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1A33AD610();
  v28 = v34;
  v29 = v37;
  sub_1A34CC2F0();

  return (*(v35 + 8))(v29, v28);
}

uint64_t sub_1A33AAA14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for SensitiveContentActionsView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9CC8);
  MEMORY[0x1EEE9AC00](v56);
  v8 = &v45[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9CD0);
  v10 = *(v9 - 8);
  v53 = v9;
  v54 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v45[-v11];
  v12 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000023, 0x80000001A3510690);
  v14 = v13;
  sub_1A33AE68C(v1, &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1A33AE6F0(&v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15);
  v60 = v12;
  v61 = v14;
  v57 = &v60;
  v58 = 0xD00000000000001DLL;
  v59 = 0x80000001A35106C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
  sub_1A34CC790();

  v17 = sub_1A34CCC80();
  v19 = v18;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9A48);
  sub_1A34CA510();
  v20 = v60;
  v21 = *&v60[OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model_popoverSourceView];

  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9CD8) + 36);
  v51 = v8;
  v23 = &v8[v22];
  *v23 = v21;
  v23[1] = v17;
  v23[2] = v19;
  v24 = sub_1A34CCC80();
  v48 = v25;
  v49 = v24;
  v26 = &v8[*(v56 + 36)];
  v27 = v2 + *(v4 + 32);
  v28 = *v27;
  v29 = *(v27 + 8);
  v64 = v28;
  v65 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC760();
  v30 = v60;
  v47 = v61;
  v46 = v62;
  v31 = v2 + *(v4 + 36);
  v32 = *(v31 + 8);
  v64 = *v31;
  LOBYTE(v4) = v64;
  v65 = v32;
  sub_1A34CC760();
  v34 = v60;
  v33 = v61;
  LOBYTE(v17) = v62;
  sub_1A34CA510();
  v35 = v60;
  *(v26 + 1) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + 1) = &off_1F1624658;
  swift_unknownObjectWeakAssign();

  v36 = v47;
  *(v26 + 2) = v30;
  *(v26 + 3) = v36;
  v26[32] = v46;
  *(v26 + 5) = v34;
  *(v26 + 6) = v33;
  v26[56] = v17;
  v37 = v48;
  *(v26 + 8) = v49;
  *(v26 + 9) = v37;
  v64 = v4;
  v65 = v32;
  sub_1A34CC760();
  v43 = sub_1A33AE9F4();
  v44 = sub_1A33AD984();
  v38 = v52;
  v39 = v56;
  v40 = v51;
  sub_1A34CC2F0();

  sub_1A3288FDC(v40, &qword_1EB0C9CC8);
  v60 = v39;
  v61 = &type metadata for LearnMoreWebViewControllerRepresentable;
  v62 = v43;
  v63 = v44;
  swift_getOpaqueTypeConformance2();
  sub_1A33AE76C();
  v41 = v53;
  sub_1A34CBEB0();
  return (*(v54 + 8))(v38, v41);
}

void sub_1A33AAF58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9A48);
  sub_1A34CA510();
  v0 = [objc_opt_self() standardPreferences];
  v1 = sub_1A34CD0E0();
  v2 = [v0 userHasOptedInToPreference_];

  if (v2)
  {

LABEL_4:
    type metadata accessor for SensitiveContentActionsView(0);
    sub_1A34C9010();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
    sub_1A34CC740();
    sub_1A34CC750();

    return;
  }

  v3 = [*(*&v5[OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model_sensitiveContentAnalysisManager] + OBJC_IVAR____TtC14ContactsUICore31SensitiveContentAnalysisManager_sensitivityAnalyzer) analysisPolicy];

  if (v3 == 2)
  {
    goto LABEL_4;
  }

  sub_1A34CA510();
  swift_getKeyPath();
  sub_1A33AE54C(&qword_1EB0C9BB0, type metadata accessor for SensitiveContentActionsView.Model);
  sub_1A34C99A0();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didSetSensitiveContentOverride_];
    swift_unknownObjectRelease();
  }
}

void sub_1A33AB188(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9A48);
  sub_1A34CA510();
  *(a1 + 8) = &off_1F1624658;
  swift_unknownObjectWeakInit();
}

uint64_t sub_1A33AB1F0()
{
  type metadata accessor for SensitiveContentActionsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  return sub_1A34CC750();
}

uint64_t sub_1A33AB264@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A34CB280();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9A40);
  return sub_1A33A9D18(v1, a1 + *(v3 + 44));
}

void sub_1A33AB2E0()
{
  sub_1A33AB388();
  if (v0 <= 0x3F)
  {
    sub_1A33AD580(319, &qword_1ED853490, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A33AB388()
{
  if (!qword_1EB0C11F8)
  {
    type metadata accessor for SensitiveContentActionsView.Model(255);
    v0 = sub_1A34CA530();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C11F8);
    }
  }
}

uint64_t sub_1A33AB3E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A33AE54C(&qword_1EB0C9BB0, type metadata accessor for SensitiveContentActionsView.Model);
  sub_1A34C99A0();

  *a2 = *(v3 + OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model__shouldShowDisclaimer);
  return result;
}

uint64_t sub_1A33AB490(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model__shouldShowDisclaimer) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model__shouldShowDisclaimer) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A33AE54C(&qword_1EB0C9BB0, type metadata accessor for SensitiveContentActionsView.Model);
    sub_1A34C9990();
  }

  return result;
}

id sub_1A33AB5A8()
{
  swift_getKeyPath();
  sub_1A33AE54C(&qword_1EB0C9BB0, type metadata accessor for SensitiveContentActionsView.Model);
  sub_1A34C99A0();

  v1 = *(v0 + OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model__sensitiveContentMenu);

  return v1;
}

id sub_1A33AB660@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A33AE54C(&qword_1EB0C9BB0, type metadata accessor for SensitiveContentActionsView.Model);
  sub_1A34C99A0();

  v4 = *(v3 + OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model__sensitiveContentMenu);
  *a2 = v4;

  return v4;
}

void sub_1A33AB720(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model__sensitiveContentMenu;
  v5 = *(v1 + OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model__sensitiveContentMenu);
  sub_1A31EC194(0, &qword_1EB0C9BB8);
  v6 = v5;
  v7 = sub_1A34CD830();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A33AE54C(&qword_1EB0C9BB0, type metadata accessor for SensitiveContentActionsView.Model);
    sub_1A34C9990();
  }
}

uint64_t sub_1A33AB894()
{
  swift_getKeyPath();
  sub_1A33AE54C(&qword_1EB0C9BB0, type metadata accessor for SensitiveContentActionsView.Model);
  sub_1A34C99A0();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1A33AB940@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A33AE54C(&qword_1EB0C9BB0, type metadata accessor for SensitiveContentActionsView.Model);
  sub_1A34C99A0();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1A33AB9F4()
{
  swift_getKeyPath();
  sub_1A33AE54C(&qword_1EB0C9BB0, type metadata accessor for SensitiveContentActionsView.Model);
  sub_1A34C9990();
}

uint64_t sub_1A33ABAC0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1A33AE54C(&qword_1EB0C9BB0, type metadata accessor for SensitiveContentActionsView.Model);
  sub_1A34C99A0();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [*(v1 + OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model_contact) identifier];
    if (!v4)
    {
      sub_1A34CD110();
      v4 = sub_1A34CD0E0();
    }

    [v3 performAction:6 forContactIdentifier:v4 sourceView:*(v1 + OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model_popoverSourceView)];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A33ABBE4()
{
  swift_getKeyPath();
  sub_1A33AE54C(&qword_1EB0C9BB0, type metadata accessor for SensitiveContentActionsView.Model);
  sub_1A34C99A0();

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    if ([Strong supportsAction_])
    {
      swift_unknownObjectRelease();
      v2 = 1;
    }

    else
    {
      v3 = [v2 supportsAction_];
      swift_unknownObjectRelease();
      v2 = v3;
    }
  }

  v4 = [*(v0 + OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model_contact) sensitiveContentConfiguration];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 override];

    if (v6 == 1)
    {
      v2 |= 0x10uLL;
    }
  }

  v7 = [objc_opt_self() menuWithOptions_];
  sub_1A33AB720(v7);
}

uint64_t sub_1A33ABE90()
{
  result = sub_1A34C99E0();
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

uint64_t sub_1A33ABF48@<X0>(uint64_t a1@<X8>)
{
  sub_1A34CB740();
  if (qword_1EB0C4AD8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB0EDF88;
  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9BF0) + 36));
  *v4 = KeyPath;
  v4[1] = v2;
  sub_1A34C9010();
  LOBYTE(v2) = sub_1A34CBA90();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9BF8) + 36);
  *v5 = v2;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9C00) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9C08);
  sub_1A34CADB0();
  *v6 = swift_getKeyPath();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9C10) + 36);
  v8 = *MEMORY[0x1E697DBA8];
  v9 = sub_1A34CA5D0();
  v10 = *(v9 - 8);
  (*(v10 + 104))(a1 + v7, v8, v9);
  (*(v10 + 56))(a1 + v7, 0, 1, v9);
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9C18) + 36);
  sub_1A34CCB90();
  LOBYTE(v9) = sub_1A34CBA90();
  *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C92C0) + 36)) = v9;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9C28) + 36)) = 0x7FEFFFFFFFFFFFFFLL;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9C30) + 36);
  v13 = *MEMORY[0x1E697F468];
  v14 = sub_1A34CB200();
  v15 = *(*(v14 - 8) + 104);
  v15(v12, v13, v14);
  *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C92D0) + 36)) = 256;
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9C40) + 36);
  v15(v16, v13, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6308);
  *(v16 + *(result + 36)) = 0;
  return result;
}

void sub_1A33AC27C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      swift_getKeyPath();
      sub_1A33AE54C(&qword_1EB0C9BB0, type metadata accessor for SensitiveContentActionsView.Model);
      sub_1A34C99A0();

      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        [v6 didSetSensitiveContentOverride_];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_1A33AC3BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectRetain();
  v10 = a1;
  sub_1A33AE25C(a4, a5, a6);
  swift_unknownObjectRelease();
}

id sub_1A33AC490()
{
  v0 = [objc_opt_self() viewControllerWithWorkflow:0 contextDictionary:0];

  return v0;
}

void sub_1A33AC4D8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9BE0);
  sub_1A34CBA20();
  [a1 setInterventionDelegate_];
}

uint64_t sub_1A33AC53C@<X0>(void *a1@<X8>)
{
  swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  v4 = type metadata accessor for SCUIInterventionViewControllerRepresentable.Coordinator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCV14ContactsUICoreP33_89BB4A4DD01525F2A4B0700F9E16AB5543SCUIInterventionViewControllerRepresentable11Coordinator_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v3;
  swift_unknownObjectWeakAssign();
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = swift_unknownObjectRelease();
  *a1 = v6;
  return result;
}

uint64_t sub_1A33AC5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A33ADB78();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A33AC644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A33ADB78();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A33AC6A8()
{
  sub_1A33ADB78();
  sub_1A34CB940();
  __break(1u);
}

void sub_1A33AC6D0(void *a1)
{
  v2 = v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for SensitiveContentActionsView.Model(0);
    v4 = sub_1A33AB5A8();
    swift_unknownObjectRelease();
    v5 = *(v1 + 24);
    v6 = *(v1 + 32);
    v17[0] = *(v1 + 16);
    v17[1] = v5;
    v18 = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
    MEMORY[0x1A58EE120](v16, v7);
    if (LOBYTE(v16[0]) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9BD0);
      sub_1A34CBA20();
      v8 = v17[0];
      [v4 setMenuDelegate_];

      sub_1A33ADA6C(v2, v17);
      sub_1A33ADA6C(v17, v16);
      v9 = swift_allocObject();
      *(v9 + 16) = v4;
      sub_1A33ADAA4(v17, v9 + 24);
      *(v9 + 88) = a1;
      v10 = a1;
      v11 = v4;
      v12 = [v10 presentedViewController];
      if (v12)
      {

        sub_1A33ADAEC(v16);
        v13 = swift_allocObject();
        *(v13 + 16) = sub_1A33ADADC;
        *(v13 + 24) = v9;
        v15[4] = sub_1A32BEC24;
        v15[5] = v13;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 1107296256;
        v15[2] = sub_1A32A5AB4;
        v15[3] = &block_descriptor_13;
        v14 = _Block_copy(v15);
        sub_1A34C9010();

        [v10 dismissViewControllerAnimated:0 completion:v14];

        _Block_release(v14);
      }

      else
      {
        sub_1A33AC930(v11, v16, v10);

        sub_1A33ADAEC(v16);
      }
    }

    else
    {
    }
  }
}

id sub_1A33AC930(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 popoverPresentationController];
  if (v5)
  {
    v6 = v5;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = *(Strong + OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model_popoverSourceView);
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0;
    }

    [v6 setSourceView_];

    [v6 setPermittedArrowDirections_];
  }

  return [a3 presentViewController:a1 animated:1 completion:0];
}

id sub_1A33ACA10()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v24 = *(v0 + 16);
  v25 = v2;
  v26 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
  sub_1A34CC930();
  v4 = v21;
  v5 = v22;
  v6 = v23;
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v24 = *(v0 + 40);
  v25 = v7;
  v26 = v8;
  sub_1A34CC930();
  v9 = v21;
  v10 = v22;
  v11 = v23;
  swift_unknownObjectWeakLoadStrong();
  v12 = *(v1 + 8);
  v13 = type metadata accessor for MoreHelpAlertViewControllerRepresentable.Coordinator();
  v14 = objc_allocWithZone(v13);
  swift_unknownObjectWeakInit();
  *&v14[OBJC_IVAR____TtCV14ContactsUICoreP33_89BB4A4DD01525F2A4B0700F9E16AB5540MoreHelpAlertViewControllerRepresentable11Coordinator_delegate + 8] = 0;
  v15 = swift_unknownObjectWeakInit();
  v16 = &v14[OBJC_IVAR____TtCV14ContactsUICoreP33_89BB4A4DD01525F2A4B0700F9E16AB5540MoreHelpAlertViewControllerRepresentable11Coordinator__isPresented];
  *v16 = v4;
  *(v16 + 1) = v5;
  v16[16] = v6;
  v17 = &v14[OBJC_IVAR____TtCV14ContactsUICoreP33_89BB4A4DD01525F2A4B0700F9E16AB5540MoreHelpAlertViewControllerRepresentable11Coordinator__showingLearnMore];
  *v17 = v9;
  *(v17 + 1) = v10;
  v17[16] = v11;
  *(v15 + 8) = v12;
  swift_unknownObjectWeakAssign();
  v20.receiver = v14;
  v20.super_class = v13;
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  v18 = objc_msgSendSuper2(&v20, sel_init);

  swift_unknownObjectRelease();
  return v18;
}

void sub_1A33ACBA8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      aBlock[4] = sub_1A33AE5D4;
      aBlock[5] = a1;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A32A5AB4;
      aBlock[3] = &block_descriptor_107;
      v5 = _Block_copy(aBlock);
      sub_1A34C9010();

      [v4 dismissViewControllerAnimated:0 completion:v5];
      _Block_release(v5);
    }
  }
}

void sub_1A33ACCB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A34C9010();
    sub_1A34C9010();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
    sub_1A34CC910();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_1A34C9010();
    sub_1A34C9010();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
    sub_1A34CC910();
  }
}

void sub_1A33ACE30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A34C9010();
    sub_1A34C9010();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
    sub_1A34CC910();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1A33ABAC0();
      swift_unknownObjectRelease();
    }
  }
}

void sub_1A33ACF68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A34C9010();
    sub_1A34C9010();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
    sub_1A34CC910();
  }
}

void sub_1A33AD04C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A34C9010();
    sub_1A34C9010();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
    sub_1A34CC910();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      swift_getKeyPath();
      sub_1A33AE54C(&qword_1EB0C9BB0, type metadata accessor for SensitiveContentActionsView.Model);
      sub_1A34C99A0();

      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        [v5 didSetSensitiveContentOverride_];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

id sub_1A33AD234(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A33AD32C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A33AD378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A33AD3DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A33AD428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A33AD4D0()
{
  sub_1A31EC194(319, &qword_1ED854E70);
  if (v0 <= 0x3F)
  {
    sub_1A33AD580(319, &qword_1EB0C11E8, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A33AD580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A33AD610()
{
  result = qword_1EB0C9B98;
  if (!qword_1EB0C9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9B98);
  }

  return result;
}

id sub_1A33AD664()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9BD0);
  sub_1A34CBA20();
  swift_unknownObjectWeakAssign();

  return v0;
}

id sub_1A33AD6E8@<X0>(void *a1@<X8>)
{
  result = sub_1A33ACA10();
  *a1 = result;
  return result;
}

uint64_t sub_1A33AD710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A33ADB24();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A33AD774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A33ADB24();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A33AD7D8()
{
  sub_1A33ADB24();
  sub_1A34CB940();
  __break(1u);
}

unint64_t sub_1A33AD804()
{
  result = qword_1EB0C9BA0;
  if (!qword_1EB0C9BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9BA0);
  }

  return result;
}

id sub_1A33AD858()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69CA908]);

  return [v0 init];
}

uint64_t sub_1A33AD890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A33ADA18();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A33AD8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A33ADA18();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A33AD958()
{
  sub_1A33ADA18();
  sub_1A34CB940();
  __break(1u);
}

unint64_t sub_1A33AD984()
{
  result = qword_1EB0C9BA8;
  if (!qword_1EB0C9BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9BA8);
  }

  return result;
}

void sub_1A33AD9D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model__sensitiveContentMenu);
  *(v1 + OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model__sensitiveContentMenu) = v2;
  v4 = v2;
}

unint64_t sub_1A33ADA18()
{
  result = qword_1EB0C9BC0;
  if (!qword_1EB0C9BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9BC0);
  }

  return result;
}

unint64_t sub_1A33ADB24()
{
  result = qword_1EB0C9BD8;
  if (!qword_1EB0C9BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9BD8);
  }

  return result;
}

unint64_t sub_1A33ADB78()
{
  result = qword_1EB0C9BE8;
  if (!qword_1EB0C9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9BE8);
  }

  return result;
}

uint64_t sub_1A33ADBCC(uint64_t a1)
{
  v2 = sub_1A34CADC0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1A34CAED0();
}

BOOL sub_1A33ADC94(void *a1)
{
  sub_1A344331C();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (qword_1EB0C1708 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB0ED0F0;
  if (qword_1EB0C1370 != -1)
  {
    swift_once();
  }

  if ((sub_1A3481224(qword_1EB0C1378, unk_1EB0C1380, qword_1EB0C1388) & v4 & 1) == 0)
  {
    return 0;
  }

  v6 = [a1 sensitiveContentConfiguration];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 override];

    if (v8 == 1)
    {
      return 0;
    }
  }

  if (sub_1A3480A38())
  {
    return [*(v5 + OBJC_IVAR____TtC14ContactsUICore31SensitiveContentAnalysisManager_sensitivityAnalyzer) analysisPolicy] != 0;
  }

  return 1;
}

char *sub_1A33ADE00(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(MEMORY[0x1E69CA8F8]) init];
  *&v1[OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model__sensitiveContentMenu] = v4;
  v5 = OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model__actionsProvider;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model_sensitiveContentAnalysisManager;
  if (qword_1EB0C1708 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB0ED0F0;
  *&v1[v6] = qword_1EB0ED0F0;
  v8 = OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model_popoverSourceView;
  v9 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v10 = v7;
  *&v1[v8] = [v9 init];
  sub_1A34C99D0();
  swift_unknownObjectRetain();
  sub_1A31F08B0(&v1[v5]);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *&v1[OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model_contact] = a1;
  v11 = objc_opt_self();
  v12 = a1;
  v13 = [v11 standardPreferences];
  v14 = sub_1A34CD0E0();
  v15 = [v13 userHasOptedInToPreference_];

  v16 = (v15 & 1) != 0 || sub_1A33ADC94(v12);
  v1[OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model__shouldShowDisclaimer] = v16;
  v27.receiver = v1;
  v27.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v27, sel_init);
  swift_getKeyPath();
  sub_1A33AE54C(&qword_1EB0C9BB0, type metadata accessor for SensitiveContentActionsView.Model);
  sub_1A34C99A0();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong addObserver_];
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  sub_1A34C99A0();

  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = v19;
  if (v19)
  {
    if ([v19 supportsAction_])
    {
      swift_unknownObjectRelease();
      v20 = 1;
    }

    else
    {
      v21 = [v20 supportsAction_];
      swift_unknownObjectRelease();
      v20 = v21;
    }
  }

  v22 = [*&v17[OBJC_IVAR____TtCV14ContactsUICore27SensitiveContentActionsView5Model_contact] sensitiveContentConfiguration];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 override];

    if (v24 == 1)
    {
      v20 |= 0x10uLL;
    }
  }

  v25 = [objc_opt_self() menuWithOptions_];
  sub_1A33AB720(v25);
  return v17;
}

BOOL sub_1A33AE18C()
{
  sub_1A344331C();
  if (!v1)
  {
    return 0;
  }

  v3 = v0;

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  if (qword_1EB0C1708 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB0ED0F0;
  return (sub_1A3480A38() & 1) == 0 || [*(v4 + OBJC_IVAR____TtC14ContactsUICore31SensitiveContentAnalysisManager_sensitivityAnalyzer) analysisPolicy] != 0;
}

uint64_t sub_1A33AE25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A34CCE90();
  v16 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A34CCED0();
  v8 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A31EC194(0, &qword_1ED854B50);
  v11 = sub_1A34CD750();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a2;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A32A5AB4;
  aBlock[3] = a3;
  v13 = _Block_copy(aBlock);

  sub_1A34CCEB0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A33AE54C(&qword_1ED854650, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
  sub_1A3284D0C(&qword_1ED854640, &unk_1EB0C6100);
  sub_1A34CD960();
  MEMORY[0x1A58EEF80](0, v10, v7, v13);
  _Block_release(v13);

  (*(v16 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v15);
}

uint64_t sub_1A33AE54C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A33AE61C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A33AE68C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentActionsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A33AE6F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentActionsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A33AE76C()
{
  result = qword_1EB0C9CC0;
  if (!qword_1EB0C9CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9CC0);
  }

  return result;
}

uint64_t objectdestroy_123Tm()
{
  v1 = *(type metadata accessor for SensitiveContentActionsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9CA8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9CB0);

  return swift_deallocObject();
}

void sub_1A33AE8F8(uint64_t a1@<X8>)
{
  type metadata accessor for SensitiveContentActionsView(0);

  sub_1A33AB188(a1);
}

uint64_t sub_1A33AE980(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SensitiveContentActionsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1A33AE9F4()
{
  result = qword_1EB0C9CE0;
  if (!qword_1EB0C9CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9CC8);
    sub_1A33AEAAC();
    sub_1A3284D0C(&qword_1EB0C9CF0, &qword_1EB0C9CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9CE0);
  }

  return result;
}

unint64_t sub_1A33AEAAC()
{
  result = qword_1EB0C9CE8;
  if (!qword_1EB0C9CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9CD8);
    sub_1A3284D0C(&unk_1EB0C0500, &unk_1EB0C8D50);
    sub_1A3284D0C(&qword_1EB0C0920, &unk_1EB0C8FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9CE8);
  }

  return result;
}

unint64_t sub_1A33AEBA8()
{
  result = qword_1EB0C9D00;
  if (!qword_1EB0C9D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9C40);
    sub_1A33AEC60();
    sub_1A3284D0C(&qword_1EB0C2ED0, &qword_1EB0C6308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9D00);
  }

  return result;
}

unint64_t sub_1A33AEC60()
{
  result = qword_1EB0C9D08;
  if (!qword_1EB0C9D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9C30);
    sub_1A33AED18();
    sub_1A3284D0C(&qword_1EB0C92C8, &qword_1EB0C92D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9D08);
  }

  return result;
}

unint64_t sub_1A33AED18()
{
  result = qword_1EB0C9D10;
  if (!qword_1EB0C9D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9C28);
    sub_1A33AEDD0();
    sub_1A3284D0C(&qword_1EB0C9D68, &unk_1EB0C9D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9D10);
  }

  return result;
}

unint64_t sub_1A33AEDD0()
{
  result = qword_1EB0C9D18;
  if (!qword_1EB0C9D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9C18);
    sub_1A33AEE88();
    sub_1A3284D0C(&qword_1ED853F90, &qword_1EB0C92C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9D18);
  }

  return result;
}

unint64_t sub_1A33AEE88()
{
  result = qword_1EB0C9D20;
  if (!qword_1EB0C9D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9C10);
    sub_1A33AEF40();
    sub_1A3284D0C(&qword_1EB0C06E0, &unk_1EB0C9D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9D20);
  }

  return result;
}

unint64_t sub_1A33AEF40()
{
  result = qword_1EB0C9D28;
  if (!qword_1EB0C9D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9C00);
    sub_1A33AEFF8();
    sub_1A3284D0C(&unk_1EB0C9D48, &qword_1EB0C9C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9D28);
  }

  return result;
}

unint64_t sub_1A33AEFF8()
{
  result = qword_1EB0C9D30;
  if (!qword_1EB0C9D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9BF8);
    sub_1A33AF084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9D30);
  }

  return result;
}

unint64_t sub_1A33AF084()
{
  result = qword_1EB0C9D38;
  if (!qword_1EB0C9D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9BF0);
    sub_1A33AE54C(&qword_1ED8534B0, MEMORY[0x1E697C8D0]);
    sub_1A3284D0C(&qword_1EB0C0688, &unk_1EB0C93C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9D38);
  }

  return result;
}

unint64_t sub_1A33AF16C()
{
  result = qword_1EB0C0A38;
  if (!qword_1EB0C0A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9D80);
    sub_1A33AF1F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0A38);
  }

  return result;
}

unint64_t sub_1A33AF1F0()
{
  result = qword_1EB0C0A48;
  if (!qword_1EB0C0A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9C58);
    sub_1A33AF2A8();
    sub_1A3284D0C(&qword_1ED853F90, &qword_1EB0C92C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0A48);
  }

  return result;
}

unint64_t sub_1A33AF2A8()
{
  result = qword_1EB0C0B10;
  if (!qword_1EB0C0B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9C50);
    sub_1A33AF360();
    sub_1A3284D0C(&qword_1EB0C06E0, &unk_1EB0C9D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0B10);
  }

  return result;
}

unint64_t sub_1A33AF360()
{
  result = qword_1EB0C0C88;
  if (!qword_1EB0C0C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9D90);
    sub_1A32F68F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0C88);
  }

  return result;
}

id sub_1A33AF434@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 textAlert];
  *a2 = result;
  return result;
}

uint64_t sub_1A33AF470()
{
  result = sub_1A34CD0E0();
  qword_1EB0EDE50 = result;
  return result;
}

uint64_t sub_1A33AF4A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34E7C90;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  v1 = sub_1A33BEBD4(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1EB0ED228 = v1;
  return result;
}

uint64_t sub_1A33AF568()
{
  swift_getKeyPath();
  sub_1A33B23A0(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
  sub_1A34C99A0();
}

uint64_t sub_1A33AF614(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__rows) = a2;
}

uint64_t sub_1A33AF658()
{
  swift_getKeyPath();
  sub_1A33B23A0(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
  sub_1A34C99A0();

  swift_beginAccess();
}

uint64_t sub_1A33AF718(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__sections;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1A33AF788@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A33B23A0(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
  sub_1A34C99A0();

  v3 = (v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__viewConfiguration);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return sub_1A3348BF8(v4, v5, v6, v7);
}

uint64_t sub_1A33AF85C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A33B23A0(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
  sub_1A34C99A0();

  v4 = (v3 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__viewConfiguration);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  *a2 = *v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  return sub_1A3348BF8(v5, v6, v7, v8);
}

void sub_1A33AF930(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;
  v4[3] = v3;
  sub_1A3348BF8(v4[0], v1, v2, v3);
  sub_1A33AF97C(v4);
}

void sub_1A33AF97C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__viewConfiguration);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  sub_1A3348BF8(*v6, v8, v9, v10);
  v11 = v2;
  LOBYTE(v2) = sub_1A33B27B0(v7, v8, v9, v10, v2, v3, v4, v5);
  sub_1A3348C40(v7, v8, v9, v10);
  if (v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A33B23A0(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
    sub_1A34C9990();
    sub_1A3348C40(v11, v3, v4, v5);
  }

  else
  {
    v13 = *v6;
    v14 = v6[1];
    v15 = v6[2];
    v16 = v6[3];
    *v6 = v11;
    v6[1] = v3;
    v6[2] = v4;
    v6[3] = v5;
    sub_1A3348C40(v13, v14, v15, v16);
  }
}

void sub_1A33AFB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = (a1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__viewConfiguration);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v12 = v9[3];
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  sub_1A3348BF8(a2, a3, a4, a5);
  sub_1A3348C40(v10, v11, v13, v12);
}

void (*sub_1A33AFC00(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1A33B23A0(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
  sub_1A34C99A0();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A34C99C0();

  swift_beginAccess();
  return sub_1A33AFD48;
}

void sub_1A33AFD48(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1A34C99B0();

  free(v1);
}

void *sub_1A33AFDCC()
{
  swift_getKeyPath();
  sub_1A33B23A0(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
  sub_1A34C99A0();

  v1 = *(v0 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__currentStaticEntity);
  v2 = v1;
  return v1;
}

id sub_1A33AFE7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A33B23A0(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
  sub_1A34C99A0();

  v4 = *(v3 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__currentStaticEntity);
  *a2 = v4;

  return v4;
}

void sub_1A33AFF3C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__currentStaticEntity;
  v5 = *(v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__currentStaticEntity);
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
    sub_1A33B23A0(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
    sub_1A34C9990();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A31EC194(0, &qword_1EB0C9DA8);
  v6 = v5;
  v7 = a1;
  v8 = sub_1A34CD830();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1A33B00D4()
{

  return swift_deallocClassInstance();
}

id sub_1A33B010C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  [v0 setTotalCostLimit_];
  result = [v0 setCountLimit_];
  qword_1EB0C9D98 = v0;
  return result;
}

uint64_t sub_1A33B0170(void **a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__rows) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__sections) = v3;
  v4 = (v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__viewConfiguration);
  *v4 = 0u;
  v4[1] = 0u;
  *(v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__currentStaticEntity) = 0;
  sub_1A34C99D0();
  sub_1A33B26E0(a1, v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel_configuration, type metadata accessor for ContactCardConfiguration);
  v5 = *a1;
  *(v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel_actionProvider) = *a1;
  v6 = *(a1 + *(type metadata accessor for ContactCardConfiguration(0) + 40));
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = [v8 isMailVIP];
    v10 = [v8 highlightedLabeledValueIdentifiers];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1A34CD370();
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v14 = sub_1A33BE394(v12);

    v15 = [v8 shouldColorEmphasizeHighlightedProperties];
    v16 = [objc_allocWithZone(MEMORY[0x1E695CE90]) initWithContactStore_];
    *&v23 = v9;
    *(&v23 + 1) = v14;
    *&v24 = v15;
    *(&v24 + 1) = v16;
    sub_1A33AF97C(&v23);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v13 = v5;
    sub_1A33AF97C(&v23);
  }

  sub_1A33B044C();
  sub_1A33B07B4();
  v17 = [objc_opt_self() defaultCenter];
  v18 = *MEMORY[0x1E695C458];
  v19 = swift_allocObject();
  swift_weakInit();
  v25 = sub_1A33B23E8;
  v26 = v19;
  *&v23 = MEMORY[0x1E69E9820];
  *(&v23 + 1) = 1107296256;
  *&v24 = sub_1A3403844;
  *(&v24 + 1) = &block_descriptor_14;
  v20 = _Block_copy(&v23);

  v21 = [v17 addObserverForName:v18 object:0 queue:0 usingBlock:v20];
  _Block_release(v20);
  swift_unknownObjectRelease();

  sub_1A33B2748(a1, type metadata accessor for ContactCardConfiguration);
  return v1;
}

void sub_1A33B044C()
{
  v1 = sub_1A34CD7A0();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel_configuration);
  v7 = [v6 identifier];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  v22 = v7;
  if (qword_1EB0C4A00 != -1)
  {
    swift_once();
    v8 = v22;
  }

  v9 = qword_1EB0C9D98;
  v10 = [qword_1EB0C9D98 objectForKey_];
  if (v10)
  {
    v11 = v10[2];
    v12 = v11;
    sub_1A33AFF3C(v11);
    goto LABEL_8;
  }

  v13 = [objc_allocWithZone(CNUIStaticIdentity) initWithContact_];
  v14 = [v6 identifier];
  if (!v14)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v15 = v14;
  type metadata accessor for ContactCardDetailsViewModel.StaticIdentityWrapper();
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v17 = v13;
  [v9 setObject:v16 forKey:v15];
  sub_1A33AFF3C(v13);

LABEL_8:

  v18 = v22;
  if (qword_1EB0EDE58)
  {
  }

  else
  {
    sub_1A31EC194(0, &qword_1EB0C9DC0);
    v19 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_1EB0C49F0 != -1)
    {
      swift_once();
    }

    sub_1A34CD7B0();

    swift_allocObject();
    swift_weakInit();
    sub_1A33B23A0(&qword_1EB0C9DC8, MEMORY[0x1E6969F20]);
    v20 = sub_1A34CA3E0();

    (*(v2 + 8))(v5, v1);
    qword_1EB0EDE58 = v20;
  }
}

void sub_1A33B07B4()
{
  v1 = v0;
  v2 = type metadata accessor for ContactCardDetailsViewModel.Section(0);
  v3 = *(v2 - 8);
  v63 = v2;
  v64 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel_actionProvider;
  v5 = *(v0 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel_actionProvider);
  v72 = (v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel_configuration);
  v70 = *(v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel_configuration + 16);
  v6 = v70;
  swift_getKeyPath();
  v7 = OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel___observationRegistrar;
  *&v91[0] = v1;
  v8 = sub_1A33B23A0(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
  v71 = v5;
  v74 = v6;
  v75 = v7;
  v76 = v8;
  sub_1A34C99A0();

  v9 = v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__viewConfiguration;
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  swift_getKeyPath();
  *&v91[0] = v1;
  sub_1A3348BF8(v10, v11, v13, v12);
  sub_1A34C99A0();

  v14 = *(v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__currentStaticEntity);
  v16 = *(v1 + KeyPath);
  v17 = v71;
  *&v102 = *v72;
  v15 = v102;
  *(&v102 + 1) = v71;
  *&v103 = v70;
  *(&v103 + 1) = v10;
  *&v104 = v11;
  *(&v104 + 1) = v13;
  *&v105 = v12;
  *(&v105 + 1) = v14;
  v106 = v16;
  v101 = 0;
  KeyPath = swift_getKeyPath();
  v77 = v1;
  v78 = MEMORY[0x1E69E7CC0];
  *&v91[0] = v1;
  v18 = v14;
  v65 = v15;
  v68 = v17;
  v67 = v74;
  v74 = v10;
  v71 = v13;
  v72 = v11;
  v70 = v12;
  sub_1A3348BF8(v10, v11, v13, v12);
  v69 = v18;
  v19 = v16;
  sub_1A34C9990();

  v91[2] = v104;
  v91[3] = v105;
  *&v92 = v106;
  v91[0] = v102;
  v91[1] = v103;
  if (qword_1EB0C2A18 != -1)
  {
LABEL_28:
    swift_once();
  }

  v21 = sub_1A334610C(v20);

  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v21 + 32;
    v25 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      sub_1A33B241C(v24, v100);
      sub_1A33B1664(v100, &v101, v1, v91);
      sub_1A33B2478(v100);
      if (v92)
      {
        v87 = v96;
        v88 = v97;
        v89 = v98;
        v90 = v99;
        v83 = v92;
        v84 = v93;
        v85 = v94;
        v86 = v95;
        v79 = v91[0];
        v80 = v91[1];
        v81 = v91[2];
        v82 = v91[3];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1A32990C4(0, *(v25 + 2) + 1, 1, v25);
        }

        v27 = *(v25 + 2);
        v26 = *(v25 + 3);
        if (v27 >= v26 >> 1)
        {
          v25 = sub_1A32990C4((v26 > 1), v27 + 1, 1, v25);
        }

        *(v25 + 2) = v27 + 1;
        v28 = &v25[184 * v27];
        v29 = v79;
        v30 = v80;
        v31 = v82;
        *(v28 + 4) = v81;
        *(v28 + 5) = v31;
        *(v28 + 2) = v29;
        *(v28 + 3) = v30;
        v32 = v83;
        v33 = v84;
        v34 = v86;
        *(v28 + 8) = v85;
        *(v28 + 9) = v34;
        *(v28 + 6) = v32;
        *(v28 + 7) = v33;
        v35 = v87;
        v36 = v88;
        v37 = v89;
        v28[208] = v90;
        *(v28 + 11) = v36;
        *(v28 + 12) = v37;
        *(v28 + 10) = v35;
      }

      else
      {
        sub_1A33B24CC(v91);
      }

      ++v23;
      v24 += 40;
    }

    while (v22 != v23);
    v38 = v101;

    v39 = v74;
    if ((v38 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
    v39 = v74;
LABEL_16:
    if (([v65 isCoreRecentsAccepted] & 1) == 0)
    {
      v40 = swift_getKeyPath();
      v93 = 0u;
      v94 = 0u;
      *(v91 + 8) = 0u;
      *(&v91[1] + 8) = 0u;
      *(&v91[2] + 8) = xmmword_1A34EE340;
      *&v91[0] = v40;
      *(&v91[3] + 1) = 0;
      *&v92 = 0xE000000000000000;
      BYTE8(v92) = 0;
      v95 = 0u;
      v96 = 0u;
      *&v97 = 0;
      WORD4(v97) = 1;
      v98 = 0uLL;
      v99 = 0;
      sub_1A33B2534(v91, &v79);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1A32990C4(0, *(v25 + 2) + 1, 1, v25);
      }

      v42 = *(v25 + 2);
      v41 = *(v25 + 3);
      if (v42 >= v41 >> 1)
      {
        v25 = sub_1A32990C4((v41 > 1), v42 + 1, 1, v25);
      }

      *(v25 + 2) = v42 + 1;
      v43 = &v25[184 * v42];
      v44 = v79;
      v45 = v80;
      v46 = v82;
      *(v43 + 4) = v81;
      *(v43 + 5) = v46;
      *(v43 + 2) = v44;
      *(v43 + 3) = v45;
      v47 = v83;
      v48 = v84;
      v49 = v86;
      *(v43 + 8) = v85;
      *(v43 + 9) = v49;
      *(v43 + 6) = v47;
      *(v43 + 7) = v48;
      v50 = v87;
      v51 = v88;
      v52 = v89;
      v43[208] = v90;
      *(v43 + 11) = v51;
      *(v43 + 12) = v52;
      *(v43 + 10) = v50;
      v53 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5740);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1A34DAA10;
      sub_1A33B2534(v91, v54 + 32);
      v55 = v66;
      sub_1A34C8A90();
      v56 = v63;
      *(v55 + *(v63 + 20)) = v53;
      *(v55 + *(v56 + 24)) = v54;
      swift_getKeyPath();
      *&v79 = v1;
      sub_1A34C99A0();

      *&v79 = v1;
      swift_getKeyPath();
      sub_1A34C99C0();

      v57 = OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__sections;
      swift_beginAccess();
      v58 = *(v1 + v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v57) = v58;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v58 = sub_1A329909C(0, v58[2] + 1, 1, v58);
        *(v1 + v57) = v58;
      }

      v61 = v58[2];
      v60 = v58[3];
      if (v61 >= v60 >> 1)
      {
        v58 = sub_1A329909C(v60 > 1, v61 + 1, 1, v58);
      }

      v58[2] = v61 + 1;
      sub_1A33B2590(v66, v58 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v61);
      *(v1 + v57) = v58;
      swift_endAccess();
      *&v79 = v1;
      swift_getKeyPath();
      sub_1A34C99B0();

      sub_1A33B25F4(v91);
    }
  }

  v62 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v62);
  *(&v63 - 2) = v1;
  *(&v63 - 1) = v25;
  *&v91[0] = v1;
  sub_1A34C9990();
  sub_1A33B268C(&v102);

  sub_1A3348C40(v39, v72, v71, v70);
}

uint64_t sub_1A33B1014(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A34CCE90();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A34CCED0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A31EC194(0, &qword_1ED854B50);
  v11 = sub_1A34CD750();
  aBlock[4] = sub_1A33B23F8;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A32A5AB4;
  aBlock[3] = &block_descriptor_28;
  v12 = _Block_copy(aBlock);
  sub_1A34C9010();

  sub_1A34CCEB0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A33B23A0(&qword_1ED854650, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
  sub_1A328B67C();
  sub_1A34CD960();
  MEMORY[0x1A58EEF80](0, v10, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A33B12C4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v3 = sub_1A33AFC00(v7);
    if (*(v2 + 8))
    {
      v4 = v2;
      v5 = [objc_allocWithZone(MEMORY[0x1E695CE90]) initWithContactStore_];
      v6 = *(v4 + 24);
      *(v4 + 24) = v5;
    }

    (v3)(v7, 0);
    sub_1A33B07B4();
  }

  return result;
}

id sub_1A33B1394()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel_configuration);
  v2 = [objc_allocWithZone(CNUIStaticIdentity) initWithContact_];
  result = [v1 identifier];
  if (result)
  {
    v4 = result;
    type metadata accessor for ContactCardDetailsViewModel.StaticIdentityWrapper();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v6 = qword_1EB0C4A00;
    v7 = v2;
    if (v6 != -1)
    {
      swift_once();
    }

    [qword_1EB0C9D98 setObject:v5 forKey:v4];
    sub_1A33AFF3C(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1A33B149C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EB0C4A00 != -1)
    {
      swift_once();
    }

    v2 = qword_1EB0C9D98;
    [qword_1EB0C9D98 removeAllObjects];
    v3 = *&v1[OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel_configuration];
    v4 = [objc_allocWithZone(CNUIStaticIdentity) initWithContact_];
    result = [v3 identifier];
    if (result)
    {
      v5 = result;
      type metadata accessor for ContactCardDetailsViewModel.StaticIdentityWrapper();
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      v7 = v4;
      [v2 setObject:v6 forKey:v5];
      sub_1A33AFF3C(v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A33B1664@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for ContactCardDetailsViewModel.Section(0);
  v95 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = v63 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v63 - v15;
  sub_1A31EE4BC(a1, v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9DB8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    result = sub_1A33B24CC(&v70);
    *(a4 + 176) = 0;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    return result;
  }

  v67 = v16;
  v91 = v78;
  v92 = v79;
  v93 = v80;
  v94 = v81;
  v87 = v74;
  v88 = v75;
  v89 = v76;
  v90 = v77;
  v83 = v70;
  v84 = v71;
  v85 = v72;
  v86 = v73;
  v18 = v70;
  if (v70)
  {
    v63[1] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8140);
    *&v70 = v18;
    v82[0] = swift_getKeyPath();
    v64 = v18;
    sub_1A34C9010();
    v19 = sub_1A34CD040();

    if (v19)
    {
      *a2 = 1;
    }

    swift_getKeyPath();
    v20 = OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel___observationRegistrar;
    *&v70 = a3;
    v21 = sub_1A33B23A0(&qword_1EB0C1AD0, type metadata accessor for ContactCardDetailsViewModel);
    v66 = v20;
    v68 = v21;
    sub_1A34C99A0();

    v22 = OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__sections;
    v65 = OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__sections;
    swift_beginAccess();
    v23 = *(a3 + v22);
    v24 = *(v23 + 16);
    v25 = v64;
    v26 = v67;
    if (v24)
    {
      v27 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v63[0] = *(v95 + 72);
      sub_1A33B26E0(v23 + v27 + v63[0] * (v24 - 1), v67, type metadata accessor for ContactCardDetailsViewModel.Section);
      sub_1A34CD940();
      if (MEMORY[0x1A58EF150](*(v26 + *(v9 + 20)), v25))
      {
        sub_1A33B2534(&v83, &v70);
        v28 = *(v9 + 24);
        v29 = *(v26 + v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1A32990C4(0, *(v29 + 2) + 1, 1, v29);
        }

        v31 = *(v29 + 2);
        v30 = *(v29 + 3);
        v95 = v27;
        if (v31 >= v30 >> 1)
        {
          v29 = sub_1A32990C4((v30 > 1), v31 + 1, 1, v29);
        }

        *(v29 + 2) = v31 + 1;
        v32 = &v29[184 * v31];
        v33 = v70;
        v34 = v71;
        v35 = v73;
        *(v32 + 4) = v72;
        *(v32 + 5) = v35;
        *(v32 + 2) = v33;
        *(v32 + 3) = v34;
        v36 = v74;
        v37 = v75;
        v38 = v77;
        *(v32 + 8) = v76;
        *(v32 + 9) = v38;
        *(v32 + 6) = v36;
        *(v32 + 7) = v37;
        v39 = v78;
        v40 = v79;
        v41 = v80;
        v32[208] = v81;
        *(v32 + 11) = v40;
        *(v32 + 12) = v41;
        *(v32 + 10) = v39;
        *(v26 + v28) = v29;
        swift_getKeyPath();
        *&v70 = a3;
        v42 = v68;
        sub_1A34C99A0();

        *&v70 = a3;
        KeyPath = swift_getKeyPath();
        sub_1A34C99C0();

        v44 = v65;
        swift_beginAccess();
        v45 = *(a3 + v44);
        if (v45[2])
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          KeyPath = v95;
          if (isUniquelyReferenced_nonNull_native)
          {
            v47 = v45[2];
            if (v47)
            {
              goto LABEL_14;
            }

            goto LABEL_28;
          }
        }

        else
        {
          __break(1u);
        }

        v45 = sub_1A3426070(v45);
        v47 = v45[2];
        if (v47)
        {
LABEL_14:
          v48 = v47 - 1;
          sub_1A33B2748(v45 + KeyPath + (v47 - 1) * v63[0], type metadata accessor for ContactCardDetailsViewModel.Section);
          v45[2] = v48;
          *(a3 + v44) = v45;
          swift_endAccess();
          *&v70 = a3;
          swift_getKeyPath();
          sub_1A34C99B0();

          sub_1A33B26E0(v26, v69, type metadata accessor for ContactCardDetailsViewModel.Section);
          swift_getKeyPath();
          *&v70 = a3;
          sub_1A34C99A0();

          *&v70 = a3;
          swift_getKeyPath();
          v42 = v65;
          sub_1A34C99C0();

          swift_beginAccess();
          v45 = *(a3 + v42);
          v49 = swift_isUniquelyReferenced_nonNull_native();
          *(a3 + v42) = v45;
          if (v49)
          {
LABEL_15:
            v51 = v45[2];
            v50 = v45[3];
            if (v51 >= v50 >> 1)
            {
              v45 = sub_1A329909C(v50 > 1, v51 + 1, 1, v45);
            }

            v45[2] = v51 + 1;
            sub_1A33B2590(v69, v45 + v95 + v51 * v63[0]);
            *(a3 + v42) = v45;
            swift_endAccess();
            *&v70 = a3;
            swift_getKeyPath();
            sub_1A34C99B0();

            result = sub_1A33B2748(v26, type metadata accessor for ContactCardDetailsViewModel.Section);
            goto LABEL_25;
          }

LABEL_29:
          v45 = sub_1A329909C(0, v45[2] + 1, 1, v45);
          *(a3 + v42) = v45;
          goto LABEL_15;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      sub_1A33B2748(v26, type metadata accessor for ContactCardDetailsViewModel.Section);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5740);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1A34DAA10;
    sub_1A33B2534(&v83, v52 + 32);
    sub_1A34C8A90();
    *&v11[*(v9 + 20)] = v25;
    *&v11[*(v9 + 24)] = v52;
    swift_getKeyPath();
    *&v70 = a3;
    sub_1A34C99A0();

    *&v70 = a3;
    swift_getKeyPath();
    v53 = v65;
    sub_1A34C99C0();

    swift_beginAccess();
    v54 = *(a3 + v53);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + v53) = v54;
    if ((v55 & 1) == 0)
    {
      v54 = sub_1A329909C(0, v54[2] + 1, 1, v54);
      *(a3 + v53) = v54;
    }

    v57 = v54[2];
    v56 = v54[3];
    if (v57 >= v56 >> 1)
    {
      v54 = sub_1A329909C(v56 > 1, v57 + 1, 1, v54);
    }

    v54[2] = v57 + 1;
    sub_1A33B2590(v11, v54 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v57);
    *(a3 + v53) = v54;
    swift_endAccess();
    *&v70 = a3;
    swift_getKeyPath();
    sub_1A34C99B0();
  }

LABEL_25:
  v58 = v92;
  *(a4 + 128) = v91;
  *(a4 + 144) = v58;
  *(a4 + 160) = v93;
  *(a4 + 176) = v94;
  v59 = v88;
  *(a4 + 64) = v87;
  *(a4 + 80) = v59;
  v60 = v90;
  *(a4 + 96) = v89;
  *(a4 + 112) = v60;
  v61 = v84;
  *a4 = v83;
  *(a4 + 16) = v61;
  v62 = v86;
  *(a4 + 32) = v85;
  *(a4 + 48) = v62;
  return result;
}

uint64_t sub_1A33B1F20()
{
  sub_1A33B2748(v0 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel_configuration, type metadata accessor for ContactCardConfiguration);

  sub_1A3348C40(*(v0 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__viewConfiguration), *(v0 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__viewConfiguration + 8), *(v0 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__viewConfiguration + 16), *(v0 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__viewConfiguration + 24));
  v1 = OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel___observationRegistrar;
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A33B2060()
{
  result = type metadata accessor for ContactCardConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = sub_1A34C99E0();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1A33B21C4()
{
  sub_1A34C9780();
  if (v0 <= 0x3F)
  {
    sub_1A33B2260();
    if (v1 <= 0x3F)
    {
      sub_1A33B22C8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A33B2260()
{
  if (!qword_1EB0C0070)
  {
    sub_1A31EC194(255, &qword_1ED854E70);
    v0 = sub_1A34CDB40();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C0070);
    }
  }
}

void sub_1A33B22C8()
{
  if (!qword_1EB0C0278)
  {
    v0 = sub_1A34CD3C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C0278);
    }
  }
}

void sub_1A33B2360()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__currentStaticEntity);
  *(v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__currentStaticEntity) = v2;
  v4 = v2;
}

uint64_t sub_1A33B23A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A33B24CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A33B2590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardDetailsViewModel.Section(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A33B2648()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14ContactsUICore27ContactCardDetailsViewModel__rows) = *(v0 + 24);
}

uint64_t sub_1A33B26E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A33B2748(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A33B27B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (!a2)
  {
    sub_1A3348BF8(a1, 0, a3, a4);
    if (!a6)
    {
      sub_1A3348BF8(a5, 0, a7, a8);
      sub_1A3348C40(a1, 0, a3, a4);
      v19 = 0;
      return v19 & 1;
    }

    sub_1A3348BF8(a5, a6, a7, a8);
    goto LABEL_7;
  }

  v25[0] = a1;
  v25[1] = a2;
  v25[2] = a3;
  v26 = a4;
  if (!a6)
  {
    sub_1A3348BF8(a1, a2, a3, a4);
    sub_1A3348BF8(a5, 0, a7, a8);
    sub_1A3348BF8(a1, a2, a3, a4);

LABEL_7:
    sub_1A3348C40(a1, a2, a3, a4);
    sub_1A3348C40(a5, a6, a7, a8);
    v19 = 1;
    return v19 & 1;
  }

  v21[0] = a5 & 1;
  v22 = a6;
  v23 = a7 & 1;
  v24 = a8;
  sub_1A3348BF8(a1, a2, a3, a4);
  sub_1A3348BF8(a5, a6, a7, a8);
  sub_1A3348BF8(a1, a2, a3, a4);
  v16 = _s14ContactsUICore28ContactCardViewConfigurationV2eeoiySbAC_ACtFZ_0(v25, v21);
  v17 = v24;

  v18 = v26;

  sub_1A3348C40(a1, a2, a3, a4);
  v19 = v16 ^ 1;
  return v19 & 1;
}

uint64_t sub_1A33B29CC(uint64_t a1)
{
  v46 = sub_1A34CA8A0();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[1] == 0.0 || (v5 = *(*v1 + 16), sub_1A34CA9B0(), sub_1A33B3790(&qword_1ED8542D8), sub_1A34CD5B0(), sub_1A34CD5E0(), result = sub_1A34CD5D0(), v5 != result))
  {
    v44 = v1;
    sub_1A34CA9B0();
    sub_1A33B3790(&qword_1ED8542D8);
    v7 = sub_1A34CD5C0();
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v9 = v7;
      v49 = MEMORY[0x1E69E7CC0];
      sub_1A32EBE14(0, v7 & ~(v7 >> 63), 0);
      v10 = v49;
      result = sub_1A34CD5B0();
      if (v9 < 0)
      {
        __break(1u);
        return result;
      }

      do
      {
        v11 = sub_1A34CD600();
        v13 = v45;
        v12 = v46;
        (*(v3 + 16))(v45);
        v11(v48, 0);
        sub_1A34CAD30();
        LOBYTE(v48[0]) = v14 & 1;
        v47 = v15 & 1;
        sub_1A34CA880();
        v17 = v16;
        v19 = v18;
        (*(v3 + 8))(v13, v12);
        v49 = v10;
        v20 = a1;
        v22 = v10[2];
        v21 = v10[3];
        if (v22 >= v21 >> 1)
        {
          sub_1A32EBE14((v21 > 1), v22 + 1, 1);
          v10 = v49;
        }

        v10[2] = v22 + 1;
        v23 = &v10[2 * v22];
        v23[4] = v17;
        v23[5] = v19;
        sub_1A34CD5F0();
        --v9;
        a1 = v20;
      }

      while (v9);
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    v24 = v44;

    *v24 = v10;
    v25 = v10[2];
    if (v25)
    {
      v48[0] = v8;
      sub_1A32EBDF4(0, v25, 0);
      v26 = v48[0];
      v27 = v10 + 4;
      v28 = *(v48[0] + 16);
      do
      {
        v29 = *v27;
        v48[0] = v26;
        v30 = *(v26 + 24);
        v31 = v28 + 1;
        if (v28 >= v30 >> 1)
        {
          sub_1A32EBDF4((v30 > 1), v28 + 1, 1);
          v26 = v48[0];
        }

        *(v26 + 16) = v31;
        *(v26 + 8 * v28 + 32) = v29;
        v27 += 2;
        ++v28;
        --v25;
      }

      while (v25);
    }

    else
    {
      v31 = *(v8 + 16);
      if (!v31)
      {
        v32 = 0.0;
        goto LABEL_25;
      }

      v26 = v8;
    }

    v32 = *(v26 + 32);
    v33 = v31 - 1;
    if (v31 != 1)
    {
      v34 = 40;
      do
      {
        if (v32 < *(v26 + v34))
        {
          v32 = *(v26 + v34);
        }

        v34 += 8;
        --v33;
      }

      while (v33);
    }

LABEL_25:

    v24[1] = v32;
    v35 = v10[2];
    if (v35)
    {
      v48[0] = v8;
      sub_1A32EBDF4(0, v35, 0);
      v8 = v48[0];
      v36 = *(v48[0] + 16);
      v37 = v10 + 5;
      do
      {
        v38 = *v37;
        v48[0] = v8;
        v39 = *(v8 + 24);
        v40 = v36 + 1;
        if (v36 >= v39 >> 1)
        {
          sub_1A32EBDF4((v39 > 1), v36 + 1, 1);
          v8 = v48[0];
        }

        *(v8 + 16) = v40;
        *(v8 + 8 * v36 + 32) = v38;
        v37 += 2;
        ++v36;
        --v35;
      }

      while (v35);
    }

    else
    {
      v40 = *(v8 + 16);
      if (!v40)
      {
        v41 = 0.0;
LABEL_39:

        v24[2] = v41;
        return result;
      }
    }

    v41 = *(v8 + 32);
    v42 = v40 - 1;
    if (v40 != 1)
    {
      v43 = 40;
      do
      {
        if (v41 < *(v8 + v43))
        {
          v41 = *(v8 + v43);
        }

        v43 += 8;
        --v42;
      }

      while (v42);
    }

    goto LABEL_39;
  }

  return result;
}

void sub_1A33B2E6C(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = v1;
}

void (*sub_1A33B2EA0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34CA400();
  return sub_1A32F7C20;
}

unint64_t sub_1A33B2F2C()
{
  result = qword_1EB0C9DD0;
  if (!qword_1EB0C9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9DD0);
  }

  return result;
}

uint64_t sub_1A33B2F80(uint64_t a1)
{
  sub_1A33B29CC(a1);
  sub_1A34CA9B0();
  sub_1A33B3790(&qword_1ED8542D8);
  sub_1A34CD5B0();
  sub_1A34CD5E0();
  sub_1A34CD5D0();
  sub_1A34CD5B0();
  sub_1A34CD5E0();
  result = sub_1A34CD5D0();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A33B3098(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9DD8);
  v14 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v63 = &v58 - v15;
  v70 = sub_1A34CA8A0();
  v65 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70 - 8);
  v69 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v58 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9DE0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v67 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v58 - v22);
  v24 = sub_1A34CA9B0();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9DE8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v58 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9DF0);
  v32 = v31 - 8;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v58 - v33;
  sub_1A33B29CC(a1);
  v74.origin.x = a3;
  v74.origin.y = a4;
  v74.size.width = a5;
  v74.size.height = a6;
  MinX = CGRectGetMinX(v74);
  v75.origin.x = a3;
  v75.origin.y = a4;
  v75.size.width = a5;
  v75.size.height = a6;
  MinY = CGRectGetMinY(v75);
  v37 = *(a2 + 8);
  v38 = *(a2 + 16);
  v66 = a2;
  (*(v25 + 16))(v30, a1, v24);
  (*(v25 + 32))(v27, v30, v24);
  sub_1A33B3790(&qword_1EB0C0FE0);
  sub_1A34CD2B0();
  v60 = *(v32 + 44);
  *&v34[v60] = 0;
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9DF8) + 36);
  sub_1A33B3790(&qword_1ED8542D8);
  v40 = 0;
  v61 = (v65 + 16);
  v41 = (v65 + 32);
  v42 = (v14 + 56);
  v68 = (v14 + 48);
  v43 = v39;
  v64 = (v65 + 8);
  v65 = v24;
  v59 = v23;
  v58 = v42;
  while (1)
  {
    sub_1A34CD5E0();
    if (*&v34[v43] == v73[0])
    {
      v44 = 1;
      v45 = v67;
    }

    else
    {
      v46 = sub_1A34CD600();
      v47 = v40;
      v48 = v62;
      v49 = v70;
      (*v61)(v62);
      v46(v73, 0);
      sub_1A34CD5F0();
      v50 = *(v71 + 48);
      v51 = v63;
      *v63 = v40;
      result = (*v41)(&v51[v50], v48, v49);
      ++v40;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_13;
      }

      *&v34[v60] = v40;
      v53 = v51;
      v45 = v67;
      sub_1A329D98C(v53, v67, &qword_1EB0C9DD8);
      v44 = 0;
      v23 = v59;
      v42 = v58;
    }

    v54 = v71;
    (*v42)(v45, v44, 1, v71);
    sub_1A329D98C(v45, v23, &qword_1EB0C9DE0);
    if ((*v68)(v23, 1, v54) == 1)
    {
      return sub_1A33B37D4(v34);
    }

    v55 = *v23;
    result = (*v41)(v69, v23 + *(v71 + 48), v70);
    if ((v55 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v55 >= *(*v66 + 16))
    {
      goto LABEL_12;
    }

    v76.origin.x = MinX;
    v76.origin.y = MinY;
    v76.size.width = v37;
    v76.size.height = v38;
    CGRectGetMidX(v76);
    v77.origin.x = MinX;
    v77.origin.y = MinY;
    v77.size.width = v37;
    v77.size.height = v38;
    CGRectGetMidY(v77);
    sub_1A34CCE10();
    LOBYTE(v73[0]) = 0;
    v72 = 0;
    v56 = v69;
    v57 = v70;
    sub_1A34CA890();
    (*v64)(v56, v57);
    MinX = v37 + a7 + MinX;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1A33B3790(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A34CA9B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A33B37D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A33B383C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A33B3884(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void (*sub_1A33B38F4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34CA400();
  return sub_1A32F7C20;
}

uint64_t sub_1A33B397C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A31ECCD0();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

void PosterLayoutPreferences.saliencyRect.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t type metadata accessor for ContactCardCustomView()
{
  result = qword_1EB0C22A0;
  if (!qword_1EB0C22A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A33B3AF8()
{
  sub_1A31EF4D8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContactCardCustomViewConfiguration(319);
    if (v1 <= 0x3F)
    {
      sub_1A33B3BA0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A33B3BA0()
{
  if (!qword_1ED853490)
  {
    v0 = sub_1A34CC770();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED853490);
    }
  }
}

uint64_t sub_1A33B3C0C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_1A34CB400();
  v3 = *(v2 - 8);
  v36 = v2;
  v37 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContactCardCustomView();
  v6 = v5 - 8;
  v35 = *(v5 - 8);
  v42 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9E20);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9E28);
  MEMORY[0x1EEE9AC00](v41);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9E30);
  v14 = *(v13 - 8);
  v38 = v13;
  v39 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v31 - v15;
  *v10 = sub_1A34CB280();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v16 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9E38) + 44)];
  v31 = v1;
  sub_1A33B4160(v1, v16);
  sub_1A3284D0C(&unk_1EB0C9E40, &qword_1EB0C9E20);
  sub_1A34CC1F0();
  sub_1A3288FDC(v10, &qword_1EB0C9E20);
  v12[*(v41 + 36)] = 0;
  v17 = v32;
  sub_1A33B6F14(v1, v32);
  v18 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v19 = swift_allocObject();
  sub_1A33B6F78(v17, v19 + v18);
  v20 = v33;
  sub_1A34CB640();
  v21 = sub_1A33B7054();
  v22 = v36;
  sub_1A34CC0C0();

  (*(v37 + 8))(v20, v22);
  sub_1A3288FDC(v12, &qword_1EB0C9E28);
  v23 = v31;
  v24 = v31 + *(v6 + 36);
  v25 = *v24;
  v26 = *(v24 + 8);
  v47 = v25;
  v48 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC760();
  sub_1A33B6F14(v23, v17);
  v27 = swift_allocObject();
  sub_1A33B6F78(v17, v27 + v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5DB0);
  v43 = v41;
  v44 = v22;
  v45 = v21;
  v46 = MEMORY[0x1E697FA08];
  swift_getOpaqueTypeConformance2();
  sub_1A32B5314();
  v28 = v38;
  v29 = v34;
  sub_1A34CC390();

  return (*(v39 + 8))(v29, v28);
}

uint64_t sub_1A33B4160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for ContactCardCustomView();
  v4 = v3 - 8;
  v44 = *(v3 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9EA8);
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9EB0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9EB8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v46 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9EC0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v45 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  *v23 = sub_1A34CB110();
  *(v23 + 1) = 0;
  v24 = 1;
  v23[16] = 1;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9EC8) + 44);
  v52 = v23;
  sub_1A33B47A0(a1, &v23[v25]);
  v26 = a1 + *(v4 + 28);
  v27 = *(v26 + *(type metadata accessor for ContactCardCustomViewConfiguration(0) + 32));
  if (*(v27 + 16))
  {
    sub_1A34CC9A0();
    sub_1A329D98C(v13, v18, &qword_1EB0C9EB0);
    v24 = 0;
  }

  (*(v11 + 56))(v18, v24, 1, v10);
  v53 = sub_1A33B727C(v27);
  swift_getKeyPath();
  v43 = v18;
  sub_1A33B6F14(a1, &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v29 = swift_allocObject();
  sub_1A33B6F78(&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1A33B7658;
  *(v30 + 24) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9ED8);
  sub_1A3284D0C(&qword_1EB0C9EE0, &qword_1EB0C9ED0);
  sub_1A3284D0C(&qword_1EB0C9EE8, &qword_1EB0C9ED8);
  v31 = v47;
  sub_1A34CC9C0();
  v32 = v45;
  sub_1A328D790(v52, v45, &qword_1EB0C9EC0);
  v33 = v46;
  sub_1A328D790(v18, v46, &qword_1EB0C9EB8);
  v35 = v48;
  v34 = v49;
  v36 = *(v49 + 16);
  v37 = v50;
  v36(v48, v31, v50);
  v38 = v51;
  sub_1A328D790(v32, v51, &qword_1EB0C9EC0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9EF0);
  sub_1A328D790(v33, v38 + *(v39 + 48), &qword_1EB0C9EB8);
  v36((v38 + *(v39 + 64)), v35, v37);
  v40 = *(v34 + 8);
  v40(v31, v37);
  sub_1A3288FDC(v43, &qword_1EB0C9EB8);
  sub_1A3288FDC(v52, &qword_1EB0C9EC0);
  v40(v35, v37);
  sub_1A3288FDC(v33, &qword_1EB0C9EB8);
  return sub_1A3288FDC(v32, &qword_1EB0C9EC0);
}

uint64_t sub_1A33B47A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for ContactCardCustomView();
  v4 = v3 - 8;
  v38 = *(v3 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9F40);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9F48);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9F50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9F58);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  *v22 = sub_1A34CB280();
  *(v22 + 1) = 0;
  v23 = 1;
  v22[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9F60);
  sub_1A33B4CE4(a1, &v22[*(v24 + 44)]);
  v25 = *(v4 + 28);
  v26 = (a1 + *(type metadata accessor for ContactCardCustomViewConfiguration(0) + 36) + v25);
  v27 = v26[1];
  if (v27)
  {
    v28 = *v26;
    sub_1A33B6F14(a1, &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v30 = swift_allocObject();
    v31 = sub_1A33B6F78(&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
    MEMORY[0x1EEE9AC00](v31);
    *(&v37 - 2) = v28;
    *(&v37 - 1) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9F70);
    sub_1A33B7988();
    sub_1A34CC790();
    sub_1A3284D0C(&qword_1EB0C9F90, &qword_1EB0C9F40);
    v32 = v39;
    v33 = v41;
    sub_1A34CC1F0();
    (*(v40 + 8))(v8, v33);
    sub_1A329D98C(v32, v16, &qword_1EB0C9F48);
    v23 = 0;
  }

  (*(v42 + 56))(v16, v23, 1, v43);
  sub_1A328D790(v22, v19, &qword_1EB0C9F58);
  sub_1A328D790(v16, v13, &qword_1EB0C9F50);
  v34 = v44;
  sub_1A328D790(v19, v44, &qword_1EB0C9F58);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9F68);
  sub_1A328D790(v13, v34 + *(v35 + 48), &qword_1EB0C9F50);
  sub_1A3288FDC(v16, &qword_1EB0C9F50);
  sub_1A3288FDC(v22, &qword_1EB0C9F58);
  sub_1A3288FDC(v13, &qword_1EB0C9F50);
  return sub_1A3288FDC(v19, &qword_1EB0C9F58);
}

uint64_t sub_1A33B4CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9F98);
  v56 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v49 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v49 - v5;
  v7 = sub_1A34C93B0();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9FA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9FA8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9FB0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  *v17 = sub_1A34CB110();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9FB8);
  sub_1A33B54AC(a1, &v17[*(v27 + 44)]);
  sub_1A34CCC90();
  sub_1A34CADA0();
  sub_1A329D98C(v17, v23, &qword_1EB0C9FA8);
  v28 = &v23[*(v19 + 44)];
  v29 = v92;
  *(v28 + 4) = v91;
  *(v28 + 5) = v29;
  *(v28 + 6) = v93;
  v30 = v88;
  *v28 = v87;
  *(v28 + 1) = v30;
  v31 = v90;
  *(v28 + 2) = v89;
  *(v28 + 3) = v31;
  v32 = v26;
  sub_1A329D98C(v23, v26, &qword_1EB0C9FB0);
  v33 = a1 + *(type metadata accessor for ContactCardCustomView() + 20);
  v34 = v33 + *(type metadata accessor for ContactCardCustomViewConfiguration(0) + 28);
  v35 = v58;
  v36 = v59;
  sub_1A328D790(v34, v6, &unk_1EB0C5B60);
  if ((*(v35 + 48))(v6, 1, v36) == 1)
  {
    sub_1A3288FDC(v6, &unk_1EB0C5B60);
    (*(v56 + 56))(v14, 1, 1, v53);
    v37 = v14;
  }

  else
  {
    (*(v35 + 32))(v9, v6, v36);
    sub_1A33B7AF8();
    sub_1A34C93D0();
    v38 = v72;
    if (v72)
    {
      v37 = v14;
    }

    else
    {
      v37 = v14;
      if (qword_1EB0C1E18 != -1)
      {
        swift_once();
      }

      v38 = qword_1EB0ED2C8;
      sub_1A34C9010();
    }

    sub_1A33B5B8C(v9, &v72);
    v39 = v74;
    v49 = v73;
    v50 = v72;
    sub_1A34C9010();
    sub_1A34CCC90();
    v51 = v9;
    sub_1A34CADA0();
    v85 = v39;
    KeyPath = swift_getKeyPath();
    v41 = sub_1A34CBA90();
    v86 = 1;
    v60 = v50;
    v61 = v49;
    LOBYTE(v62) = v39;
    *(&v62 + 1) = v38;
    v67 = v71[7];
    v68 = v71[8];
    v69 = v71[9];
    v63 = v71[3];
    v64 = v71[4];
    v65 = v71[5];
    v66 = v71[6];
    *&v70 = KeyPath;
    BYTE8(v70) = 0;
    LOBYTE(v71[0]) = v41;
    *(&v71[1] + 8) = 0u;
    *(v71 + 8) = 0u;
    BYTE8(v71[2]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9FD0);
    sub_1A33B7B4C();
    v42 = v52;
    sub_1A34CC1F0();

    v82 = v70;
    v83 = v71[0];
    v84[0] = v71[1];
    *(v84 + 9) = *(&v71[1] + 9);
    v78 = v66;
    v79 = v67;
    v80 = v68;
    v81 = v69;
    v74 = v62;
    v75 = v63;
    v76 = v64;
    v77 = v65;
    v72 = v60;
    v73 = v61;
    sub_1A3288FDC(&v72, &qword_1EB0C9FD0);
    sub_1A329D98C(v42, v37, &qword_1EB0C9F98);
    (*(v56 + 56))(v37, 0, 1, v53);
    (*(v58 + 8))(v51, v59);
  }

  v43 = v32;
  v44 = v54;
  sub_1A328D790(v32, v54, &qword_1EB0C9FB0);
  v45 = v55;
  sub_1A328D790(v37, v55, &qword_1EB0C9FA0);
  v46 = v57;
  sub_1A328D790(v44, v57, &qword_1EB0C9FB0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9FC0);
  sub_1A328D790(v45, v46 + *(v47 + 48), &qword_1EB0C9FA0);
  sub_1A3288FDC(v37, &qword_1EB0C9FA0);
  sub_1A3288FDC(v43, &qword_1EB0C9FB0);
  sub_1A3288FDC(v45, &qword_1EB0C9FA0);
  return sub_1A3288FDC(v44, &qword_1EB0C9FB0);
}

uint64_t sub_1A33B54AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA028);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v31[-v6];
  v7 = a1 + *(type metadata accessor for ContactCardCustomView() + 20);
  v8 = type metadata accessor for ContactCardCustomViewConfiguration(0);
  if (*(v7 + *(v8 + 20) + 8))
  {
    v9 = *(v7 + *(v8 + 24));
    if (v9)
    {

      v10 = v9;
      v11 = sub_1A34CC5E0();
      v12 = v10;
      v13 = sub_1A34CC440();
      v38 = v11;
      v39 = v13;
      v40 = 0;
      sub_1A34C9010();
      sub_1A34C9010();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C65D0);
      sub_1A32D3F40();
      sub_1A34CB3E0();
    }

    else
    {

      v14 = sub_1A34CC5E0();
      if (qword_1EB0C1E10 != -1)
      {
        v30 = v14;
        swift_once();
        v14 = v30;
      }

      v38 = v14;
      v39 = qword_1EB0ED2C0;
      v40 = 1;
      sub_1A34C9010();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C65D0);
      sub_1A32D3F40();
      sub_1A34CB3E0();
    }

    v33 = v42;
    v34 = v41;
    v32 = v43;
    sub_1A33B7F64();
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v32 = 255;
  }

  sub_1A33B7AF8();
  sub_1A34C93D0();
  v15 = v41;
  if (!v41)
  {
    if (qword_1EB0C1E10 != -1)
    {
      swift_once();
    }

    v15 = qword_1EB0ED2C0;
    sub_1A34C9010();
  }

  sub_1A33B58E8(a1, &v41);
  v16 = v41;
  v17 = v42;
  v18 = v43;
  v19 = v44;
  v20 = v45;
  KeyPath = swift_getKeyPath();
  LOBYTE(v38) = v20;
  v41 = v16;
  v42 = v17;
  v43 = v18;
  v44 = v19;
  v45 = v20;
  v46 = v15;
  v47 = KeyPath;
  v48 = 0;
  sub_1A34C9010();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA030);
  sub_1A33B7E58();
  v22 = v35;
  sub_1A34CC1F0();
  sub_1A33B7F10(v16, v17, v18);

  v23 = v37;
  sub_1A328D790(v22, v37, &qword_1EB0CA028);
  v24 = v36;
  v26 = v33;
  v25 = v34;
  *v36 = v34;
  v24[1] = v26;
  v27 = v32;
  *(v24 + 16) = v32;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA040);
  sub_1A328D790(v23, v24 + *(v28 + 48), &qword_1EB0CA028);
  sub_1A33B7F4C(v25, v26, v27);
  sub_1A33B7F9C(v25, v26, v27);

  sub_1A3288FDC(v22, &qword_1EB0CA028);
  sub_1A3288FDC(v23, &qword_1EB0CA028);
  return sub_1A33B7F9C(v25, v26, v27);
}

double sub_1A33B58E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A34C93B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for ContactCardCustomView() + 20);
  sub_1A33943CC();
  sub_1A34C93D0();
  v9 = v38;
  (*(v5 + 16))(v7, a1 + v8, v4);
  v10 = sub_1A34CBE20();
  v12 = v11;
  v14 = v13;
  if (v9)
  {
    sub_1A34C9010();
    v15 = sub_1A34CBE10();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    sub_1A328A9B0(v10, v12, v14 & 1);

    v33 = v15;
    v34 = v17;
    v35 = v19 & 1;
    v36 = v21;
    v37 = 0;
    sub_1A3285BB4(v15, v17, v19 & 1);

    sub_1A34CB3E0();

    sub_1A328A9B0(v15, v17, v19 & 1);
  }

  else
  {
    if (qword_1EB0C1DE8 != -1)
    {
      swift_once();
    }

    v22 = sub_1A34CBE10();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_1A328A9B0(v10, v12, v14 & 1);

    v33 = v22;
    v34 = v24;
    v35 = v26 & 1;
    v36 = v28;
    v37 = 1;
    sub_1A34CB3E0();
  }

  result = *&v38;
  v30 = v39;
  v31 = v40;
  *a2 = v38;
  *(a2 + 16) = v30;
  *(a2 + 32) = v31;
  return result;
}

double sub_1A33B5B8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A34C93B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A33943CC();
  sub_1A34C93D0();
  v8 = v37;
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_1A34CBE20();
  v11 = v10;
  v13 = v12;
  if (v8)
  {
    sub_1A34C9010();
    v14 = sub_1A34CBE10();
    v16 = v15;
    v18 = v17;
    v20 = v19;

    sub_1A328A9B0(v9, v11, v13 & 1);

    v32 = v14;
    v33 = v16;
    v34 = v18 & 1;
    v35 = v20;
    v36 = 0;
    sub_1A3285BB4(v14, v16, v18 & 1);

    sub_1A34CB3E0();

    sub_1A328A9B0(v14, v16, v18 & 1);
  }

  else
  {
    if (qword_1EB0C1DE8 != -1)
    {
      swift_once();
    }

    v21 = sub_1A34CBE10();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    sub_1A328A9B0(v9, v11, v13 & 1);

    v32 = v21;
    v33 = v23;
    v34 = v25 & 1;
    v35 = v27;
    v36 = 1;
    sub_1A34CB3E0();
  }

  result = *&v37;
  v29 = v38;
  v30 = v39;
  *a2 = v37;
  *(a2 + 16) = v29;
  *(a2 + 32) = v30;
  return result;
}

void *sub_1A33B5E24()
{
  type metadata accessor for ContactCardCustomView();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if ([result respondsToSelector_])
    {
      [v1 performCustomViewDisclosureAction];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A33B5EA4@<X0>(uint64_t *a1@<X8>)
{

  v2 = sub_1A34CC5E0();
  if (qword_1EB0C1DE8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB0ED298;
  KeyPath = swift_getKeyPath();
  sub_1A34C9010();
  result = sub_1A34CC4A0();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = result;
  return result;
}

uint64_t sub_1A33B5F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a4;
  v50 = a3;
  v49 = a2;
  v48 = a1;
  v57 = a5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9EB0);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v45 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9EB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v44 - v10;
  v11 = type metadata accessor for ContactCardCustomView();
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9EF8);
  v16 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v18 = &v44 - v17;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9F00);
  MEMORY[0x1EEE9AC00](v46);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9F08);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v53 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - v24;
  sub_1A33B6F14(a4, v15);
  v26 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v27 = (v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_1A33B6F78(v15, v28 + v26);
  v29 = v48;
  *(v28 + v27) = v48;
  v58 = v49;
  v59 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9F10);
  sub_1A33B77B8();
  sub_1A34CC790();
  sub_1A34CCC80();
  v30 = 1;
  sub_1A34CADA0();
  v31 = v18;
  v32 = v52;
  (*(v16 + 32))(v20, v31, v47);
  v33 = &v20[*(v46 + 36)];
  v34 = v68;
  *(v33 + 4) = v67;
  *(v33 + 5) = v34;
  *(v33 + 6) = v69;
  v35 = v64;
  *v33 = v63;
  *(v33 + 1) = v35;
  v36 = v66;
  *(v33 + 2) = v65;
  *(v33 + 3) = v36;
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_1A34CDAD0();

  v61 = 0xD000000000000016;
  v62 = 0x80000001A3510860;
  v60 = v29;
  v37 = sub_1A34CDDF0();
  MEMORY[0x1A58EEA30](v37);

  sub_1A33B783C();
  sub_1A34CC1F0();

  sub_1A3288FDC(v20, &qword_1EB0C9F00);
  if (*(*(v51 + *(v12 + 28) + *(type metadata accessor for ContactCardCustomViewConfiguration(0) + 32)) + 16) - 1 != v29)
  {
    v38 = v45;
    sub_1A34CC9A0();
    sub_1A329D98C(v38, v32, &qword_1EB0C9EB0);
    v30 = 0;
  }

  (*(v54 + 56))(v32, v30, 1, v55);
  v39 = v53;
  sub_1A328D790(v25, v53, &qword_1EB0C9F08);
  v40 = v56;
  sub_1A328D790(v32, v56, &qword_1EB0C9EB8);
  v41 = v57;
  sub_1A328D790(v39, v57, &qword_1EB0C9F08);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9F30);
  sub_1A328D790(v40, v41 + *(v42 + 48), &qword_1EB0C9EB8);
  sub_1A3288FDC(v32, &qword_1EB0C9EB8);
  sub_1A3288FDC(v25, &qword_1EB0C9F08);
  sub_1A3288FDC(v40, &qword_1EB0C9EB8);
  return sub_1A3288FDC(v39, &qword_1EB0C9F08);
}

void *sub_1A33B6624(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContactCardCustomView();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if ([result respondsToSelector_])
    {
      [v4 performCustomViewActionAtIndex_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1A33B66B8@<D0>(uint64_t a1@<X8>)
{
  sub_1A328A95C();

  v2 = sub_1A34CBE30();
  v4 = v3;
  v6 = v5;
  if (qword_1EB0C1DE8 != -1)
  {
    swift_once();
  }

  v7 = sub_1A34CBE10();
  v9 = v8;
  v11 = v10;
  sub_1A328A9B0(v2, v4, v6 & 1);

  sub_1A34CC4A0();
  v12 = sub_1A34CBDF0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1A328A9B0(v7, v9, v11 & 1);

  v19 = sub_1A34CBA90();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  return result;
}

uint64_t sub_1A33B6848()
{
  type metadata accessor for ContactCardCustomView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  return sub_1A34CC750();
}

uint64_t sub_1A33B68BC(uint64_t a1)
{
  v2 = type metadata accessor for ContactCardCustomView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  v13[0] = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x4549465F59504F43, 0xEA0000000000444CLL);
  v13[1] = v9;
  sub_1A33B6F14(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1A33B6F78(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_1A328A95C();
  sub_1A34CC7C0();
  sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
  sub_1A34CC1F0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A33B6B14(uint64_t a1)
{
  v2 = sub_1A34C9370();
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_1A34C93B0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + *(type metadata accessor for ContactCardCustomView() + 20);
  v11 = type metadata accessor for ContactCardCustomViewConfiguration(0);
  sub_1A328D790(v10 + *(v11 + 28), v5, &unk_1EB0C5B60);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1A3288FDC(v5, &unk_1EB0C5B60);
  }

  (*(v7 + 32))(v9, v5, v6);
  v13 = [objc_opt_self() generalPasteboard];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8858);
  v14 = swift_allocObject();
  v22 = xmmword_1A34DAA10;
  *(v14 + 16) = xmmword_1A34DAA10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9E90);
  inited = swift_initStackObject();
  *(inited + 16) = v22;
  *(inited + 32) = sub_1A34CD110();
  *(inited + 40) = v16;
  sub_1A34C9360();
  sub_1A33B7610(&qword_1EB0C9E98, MEMORY[0x1E6968678]);
  v17 = sub_1A34CD290();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v17;
  *(inited + 56) = v18;
  v19 = sub_1A33E9E68(inited);
  swift_setDeallocating();
  sub_1A3288FDC(inited + 32, &qword_1EB0C9EA0);
  *(v14 + 32) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8860);
  v20 = sub_1A34CD350();

  sub_1A33EA3E8(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OptionsKey(0);
  sub_1A33B7610(&qword_1EB0C5060, type metadata accessor for OptionsKey);
  v21 = sub_1A34CCF70();

  [v13 setItems:v20 options:v21];

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A33B6F14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardCustomView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A33B6F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardCustomView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A33B6FDC()
{
  type metadata accessor for ContactCardCustomView();

  return sub_1A33B6848();
}

unint64_t sub_1A33B7054()
{
  result = qword_1EB0C9E50;
  if (!qword_1EB0C9E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9E28);
    sub_1A33B710C();
    sub_1A3284D0C(&qword_1EB0C0790, &qword_1EB0C58B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9E50);
  }

  return result;
}

unint64_t sub_1A33B710C()
{
  result = qword_1EB0C9E58;
  if (!qword_1EB0C9E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9E60);
    sub_1A3284D0C(&unk_1EB0C9E40, &qword_1EB0C9E20);
    sub_1A33B7610(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9E58);
  }

  return result;
}

uint64_t sub_1A33B71F4()
{
  v1 = *(type metadata accessor for ContactCardCustomView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A33B68BC(v2);
}

uint64_t sub_1A33B727C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    v6 = (result + 40);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      if (v4)
      {

        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v10 = v2[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9F38);
        v13 = swift_allocObject();
        v14 = (_swift_stdlib_malloc_size(v13) - 32) / 24;
        v13[2] = v12;
        v13[3] = 2 * v14;
        v15 = v13 + 4;
        v16 = v2[3] >> 1;
        v5 = &v13[3 * v16 + 4];
        v17 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;
        if (v2[2])
        {
          if (v13 != v2 || v15 >= &v2[3 * v16 + 4])
          {
            memmove(v15, v2 + 4, 24 * v16);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v13;
        v9 = __OFSUB__(v17, 1);
        v4 = v17 - 1;
        if (v9)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      v5[1] = v7;
      v5[2] = v8;
      v5 += 3;
      v6 += 2;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v19 = v2[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v9 = __OFSUB__(v20, v4);
    v21 = v20 - v4;
    if (v9)
    {
      goto LABEL_30;
    }

    v2[2] = v21;
  }

  return v2;
}

uint64_t sub_1A33B742C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = (result + 40);
    v22 = *(result + 16);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      if (v4)
      {
        result = sub_1A31EE004(*(v6 - 1), *v6);
        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_30;
        }

        goto LABEL_23;
      }

      v10 = v2[3];
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA048);
      v13 = swift_allocObject();
      v14 = (_swift_stdlib_malloc_size(v13) - 32) / 24;
      v13[2] = v12;
      v13[3] = 2 * v14;
      v15 = v2[3] >> 1;
      v16 = 3 * v15;
      v17 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v15;
      v5 = &v13[3 * v15 + 4];
      if (!v2[2])
      {
        sub_1A31EE004(v7, v8);
        goto LABEL_22;
      }

      if (v13 < v2 || v13 + 4 >= &v2[v16 + 4])
      {
        sub_1A31EE004(v7, v8);
      }

      else
      {
        sub_1A31EE004(v7, v8);
        if (v13 == v2)
        {
          goto LABEL_21;
        }
      }

      memmove(v13 + 4, v2 + 4, v16 * 8);
LABEL_21:
      v2[2] = 0;
LABEL_22:

      v2 = v13;
      v1 = v22;
      v9 = __OFSUB__(v17, 1);
      v4 = v17 - 1;
      if (v9)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

LABEL_23:
      v6 += 16;
      *v5 = v3;
      *(v5 + 8) = v7;
      *(v5 + 16) = v8;
      v5 += 24;
      if (v1 == ++v3)
      {
        goto LABEL_26;
      }
    }
  }

  v4 = 0;
LABEL_26:
  v19 = v2[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v9 = __OFSUB__(v20, v4);
    v21 = v20 - v4;
    if (v9)
    {
      goto LABEL_32;
    }

    v2[2] = v21;
  }

  return v2;
}

uint64_t sub_1A33B7610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A33B7658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for ContactCardCustomView() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1A33B5F48(a1, a2, a3, v10, a4);
}

void *sub_1A33B7724()
{
  v1 = *(type metadata accessor for ContactCardCustomView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A33B6624(v0 + v2, v3);
}

unint64_t sub_1A33B77B8()
{
  result = qword_1EB0CAE30;
  if (!qword_1EB0CAE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAE30);
  }

  return result;
}

unint64_t sub_1A33B783C()
{
  result = qword_1EB0C9F20;
  if (!qword_1EB0C9F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9F00);
    sub_1A3284D0C(&qword_1EB0C9F28, &qword_1EB0C9EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9F20);
  }

  return result;
}

uint64_t sub_1A33B790C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ContactCardCustomView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1A33B7988()
{
  result = qword_1EB0C9F78;
  if (!qword_1EB0C9F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9F70);
    sub_1A33B7A40();
    sub_1A3284D0C(&qword_1ED854EA0, &qword_1EB0C9000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9F78);
  }

  return result;
}

unint64_t sub_1A33B7A40()
{
  result = qword_1EB0C9F80;
  if (!qword_1EB0C9F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9F88);
    sub_1A3284D0C(&unk_1ED8534A0, &unk_1EB0C8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9F80);
  }

  return result;
}

unint64_t sub_1A33B7AF8()
{
  result = qword_1EB0C9FC8;
  if (!qword_1EB0C9FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9FC8);
  }

  return result;
}

unint64_t sub_1A33B7B4C()
{
  result = qword_1EB0C9FD8;
  if (!qword_1EB0C9FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9FD0);
    sub_1A33B7BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9FD8);
  }

  return result;
}

unint64_t sub_1A33B7BD8()
{
  result = qword_1EB0C9FE0;
  if (!qword_1EB0C9FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9FE8);
    sub_1A33B7C90();
    sub_1A3284D0C(&qword_1EB0C06A0, &qword_1EB0C9340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9FE0);
  }

  return result;
}

unint64_t sub_1A33B7C90()
{
  result = qword_1EB0C9FF0;
  if (!qword_1EB0C9FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9FF8);
    sub_1A33B7D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9FF0);
  }

  return result;
}

unint64_t sub_1A33B7D1C()
{
  result = qword_1EB0CA000;
  if (!qword_1EB0CA000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA008);
    sub_1A33B7DD4();
    sub_1A3284D0C(&qword_1ED854EA0, &qword_1EB0C9000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA000);
  }

  return result;
}

unint64_t sub_1A33B7DD4()
{
  result = qword_1EB0CA010;
  if (!qword_1EB0CA010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA018);
    sub_1A32BF778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA010);
  }

  return result;
}

unint64_t sub_1A33B7E58()
{
  result = qword_1EB0CA038;
  if (!qword_1EB0CA038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA030);
    sub_1A33B7D1C();
    sub_1A3284D0C(&qword_1EB0C06A0, &qword_1EB0C9340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA038);
  }

  return result;
}

uint64_t sub_1A33B7F10(uint64_t a1, uint64_t a2, char a3)
{
  sub_1A328A9B0(a1, a2, a3 & 1);
}

uint64_t sub_1A33B7F4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1A33B7F64();
  }

  return result;
}

uint64_t sub_1A33B7F64()
{
  sub_1A34C9010();

  return sub_1A34C9010();
}

uint64_t sub_1A33B7F9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1A33B7FB4();
  }

  return result;
}

uint64_t sub_1A33B7FB4()
{
}

uint64_t sub_1A33B802C(uint64_t a1)
{
  v2 = *(v1 + 120);
  sub_1A31EE4BC(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAD00);
  if (swift_dynamicCast())
  {
    *&v6[8] = *&v6[25];
    *&v6[10] = *&v6[27];
    *&v6[12] = *&v6[29];
    *&v6[14] = v7;
    *v6 = *&v6[17];
    *&v6[2] = *&v6[19];
    *&v6[4] = *&v6[21];
    *&v6[6] = *&v6[23];
    v3 = sub_1A3426DAC(v2, *(&v7 + 1));
    sub_1A33B843C(v6);
    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_1A33B80E4()
{
  v0 = sub_1A34C9780();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for VisualIdentity(0);
  __swift_allocate_value_buffer(v4, qword_1EB0ED9C8);
  v5 = __swift_project_value_buffer(v4, qword_1EB0ED9C8);
  sub_1A34C8A90();
  v16 = &type metadata for ClearAvatarSource;
  v17 = &off_1F1624DC0;
  v6 = swift_allocObject();
  *&v15 = v6;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 112) = 0x2000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v7 = swift_allocObject();
  v11 = xmmword_1A34DAA10;
  *(v7 + 16) = xmmword_1A34DAA10;
  *(v7 + 32) = sub_1A34CC500();
  *(v6 + 136) = v7;
  v13 = &type metadata for PlaceholderPosterSource;
  v14 = &off_1F1624DA0;
  v8 = swift_allocObject();
  *&v12 = v8;
  *(v8 + 16) = 1;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0x2000000000000000;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = v11;
  *(v9 + 32) = sub_1A34CC500();
  *(v8 + 136) = v9;
  (*(v1 + 32))(v5, v3, v0);
  *(v5 + v4[5]) = 0;
  *(v5 + v4[6]) = 1;
  sub_1A31EE568(&v15, v5 + v4[7]);
  return sub_1A31EE568(&v12, v5 + v4[8]);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1A33B8364(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1A33B83B4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 120) = 0;
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 128) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 8 * -a2;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0;
      return result;
    }

    *(a1 + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SharedProfileSettings.givenName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SharedProfileSettings.givenName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SharedProfileSettings.familyName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SharedProfileSettings.familyName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t SharedProfileSettings.hash(into:)()
{
  v1 = *(v0 + 40);
  sub_1A34CDF40();
  sub_1A34CD1C0();
  sub_1A34CD1C0();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return MEMORY[0x1A58EF750](v2);
}

uint64_t SharedProfileSettings.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_1A34CDF20();
  sub_1A34CDF40();
  sub_1A34CD1C0();
  sub_1A34CD1C0();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1A58EF750](v2);
  return sub_1A34CDF70();
}

uint64_t sub_1A33B8728()
{
  v1 = *(v0 + 40);
  sub_1A34CDF20();
  sub_1A34CDF40();
  sub_1A34CD1C0();
  sub_1A34CD1C0();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1A58EF750](v2);
  return sub_1A34CDF70();
}

uint64_t sub_1A33B87C8()
{
  v1 = *(v0 + 40);
  sub_1A34CDF40();
  sub_1A34CD1C0();
  sub_1A34CD1C0();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return MEMORY[0x1A58EF750](v2);
}

uint64_t sub_1A33B8848()
{
  v1 = *(v0 + 40);
  sub_1A34CDF20();
  sub_1A34CDF40();
  sub_1A34CD1C0();
  sub_1A34CD1C0();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1A58EF750](v2);
  return sub_1A34CDF70();
}

ContactsUICore::SharedProfileSettings::SharingAudience_optional __swiftcall SharedProfileSettings.SharingAudience.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SharedProfileSettings.SharingAudience.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void *sub_1A33B8918@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_1A33B8938(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_1A33B8950()
{
  v1 = *v0;
  sub_1A34CDF20();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1A58EF750](v2);
  return sub_1A34CDF70();
}

uint64_t sub_1A33B89A0()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x1A58EF750](v1);
}

uint64_t sub_1A33B89D8()
{
  v1 = *v0;
  sub_1A34CDF20();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1A58EF750](v2);
  return sub_1A34CDF70();
}

uint64_t _s14ContactsUICore21SharedProfileSettingsV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = a1[40];
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = a2[40];
  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2) || (sub_1A34CDE30()) && (v3 == v6 && v4 == v7 || (sub_1A34CDE30()))
  {
    return v5 ^ v8 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1A33B8AEC()
{
  result = qword_1EB0C2280;
  if (!qword_1EB0C2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2280);
  }

  return result;
}

unint64_t sub_1A33B8B44()
{
  result = qword_1EB0CA050;
  if (!qword_1EB0CA050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA050);
  }

  return result;
}

uint64_t sub_1A33B8B98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A33B8BE0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1A33B8C4C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A3298298(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A33B8D44(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A32984C4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A33B8E38(uint64_t a1)
{
  v6 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_1A34CD9B0();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v9 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v8);
    result = v9 + v8;
    if (!v10)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = sub_1A34CD9B0();
  v10 = __OFADD__(v17, v8);
  result = v17 + v8;
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1A346C2FC();
  v3 = *v1;
  v2 = *v1 & 0xFFFFFFFFFFFFFF8;
  v12 = *(v2 + 0x10);
  v13 = (*(v2 + 0x18) >> 1) - v12;
  result = sub_1A34446CC(&v40, (v2 + 8 * v12 + 32), v13, a1);
  if (result < v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = result;
  if (result >= 1)
  {
    v15 = *(v2 + 16);
    v10 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v10)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v2 + 16) = v16;
  }

  result = v40;
  if (v14 != v13)
  {
LABEL_11:
    result = sub_1A33BEE40();
    *v6 = v3;
    return result;
  }

LABEL_16:
  v4 = *(v2 + 16);
  v16 = v43;
  v5 = v44;
  v36 = result;
  v37 = v41;
  v38 = v42;
  if (result < 0)
  {
LABEL_20:
    v18 = v16;
    if (!sub_1A34CD9E0())
    {
      goto LABEL_11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
    swift_dynamicCast();
    v20 = v39;
    goto LABEL_31;
  }

  if (v44)
  {
    v18 = v43;
    v19 = v43;
LABEL_30:
    v24 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v20 = *(*(result + 48) + ((v19 << 9) | (8 * v24)));
    sub_1A34C9010();
  }

  else
  {
    v21 = (v42 + 64) >> 6;
    if (v21 <= v43 + 1)
    {
      v22 = v43 + 1;
    }

    else
    {
      v22 = (v42 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_57;
      }

      if (v19 >= v21)
      {
        break;
      }

      v5 = *(v41 + 8 * v19);
      ++v16;
      if (v5)
      {
        v18 = v19;
        goto LABEL_30;
      }
    }

    v20 = 0;
    v5 = 0;
    v18 = v23;
  }

LABEL_31:
  v25 = v37;
  v26 = v18;
  if (!v20)
  {
    goto LABEL_11;
  }

  v27 = v18;
  result = v36;
LABEL_33:
  v28 = v5;
  if (v4 + 1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = v26;
    sub_1A34CD390();
    v28 = v5;
    v26 = v34;
    v25 = v37;
    result = v36;
  }

  v3 = *v6;
  v35 = *v6 & 0xFFFFFFFFFFFFFF8;
  if (v4 <= *(v35 + 0x18) >> 1)
  {
    v29 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  }

  else
  {
    v29 = v4;
  }

  while (1)
  {
    if (v4 == v29)
    {
      v5 = v28;
      *(v35 + 16) = v29;
      v4 = v29;
      goto LABEL_33;
    }

    *(v35 + 32 + 8 * v4++) = v20;
    if ((result & 0x8000000000000000) == 0)
    {
      break;
    }

    v31 = v28;
    v32 = v26;
    if (!sub_1A34CD9E0())
    {
LABEL_51:
      *(v35 + 16) = v4;
      goto LABEL_11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
    swift_dynamicCast();
    v20 = v39;
LABEL_40:
    result = v36;
    v25 = v37;
    v26 = v32;
    v28 = v31;
    if (!v20)
    {
      goto LABEL_51;
    }
  }

  v33 = v27;
  if (v28)
  {
    v30 = v27;
LABEL_39:
    v31 = (v28 - 1) & v28;
    v32 = v30;
    v20 = *(*(result + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v28)))));
    sub_1A34C9010();
    goto LABEL_40;
  }

  while (1)
  {
    v30 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v30 >= ((v38 + 64) >> 6))
    {
      goto LABEL_51;
    }

    v28 = *(v25 + 8 * v30);
    ++v33;
    if (v28)
    {
      v27 = v30;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1A33B9248(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1A32985E4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A33B93B8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A32983B8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A33B94AC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A3298B70(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A33B95D0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1A3298E50(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for ContactLikeness(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A33B9728(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1A34CD9B0();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1A34CD9B0();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1A33B9828(uint64_t result, uint64_t a2)
{
  v2 = result;
  v16 = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    sub_1A34CD9A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
    result = sub_1A34CD580();
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(result + 32);
    v3 = result + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(result + 56);
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    sub_1A34C9010();
    if (!v14)
    {
LABEL_18:
      sub_1A33BEE40();
      return v16;
    }

    while (1)
    {
      sub_1A346417C(&v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1A34CD9E0())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A33B9A74(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DAA30;
  *(inited + 32) = KeyPath;
  sub_1A34C9010();
  v6 = sub_1A33BEBF8(inited, &qword_1EB0CA098, &unk_1A34F9AD0, &qword_1EB0C7D40);

  *a3 = v6;
  return result;
}

uint64_t sub_1A33B9C50@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = sub_1A3463D24(v5, a2);
  *a3 = result;
  a3[1] = v7;
  a3[2] = v8;
  return result;
}

uint64_t sub_1A33B9CC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA0A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34E5190;
  if (qword_1EB0C21F0 != -1)
  {
    swift_once();
  }

  *(inited + 32) = qword_1EB0C21F8;
  v1 = qword_1EB0C2208;

  if (v1 != -1)
  {
    swift_once();
  }

  *(inited + 40) = qword_1EB0C2210;
  v2 = qword_1EB0C2220;

  if (v2 != -1)
  {
    swift_once();
  }

  *(inited + 48) = qword_1EB0C2228;
  v3 = qword_1EB0C21D8;

  if (v3 != -1)
  {
    swift_once();
  }

  *(inited + 56) = qword_1EB0C21E0;
  v4 = qword_1EB0C2230;

  if (v4 != -1)
  {
    swift_once();
  }

  *(inited + 64) = qword_1EB0C2238;

  return VisualIdentitySources.init(arrayLiteral:)(inited, &qword_1EB0C2250);
}

uint64_t VisualIdentitySources.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v4 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v2 + 16))
    {
      v7 = v6 + 1;

      result = sub_1A33B8E38(v8);
      v6 = v7;
      if (v5 == v7)
      {
        v4 = v10;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v9 = sub_1A33BDEA4(v4);

    *a2 = v9;
  }

  return result;
}

uint64_t sub_1A33B9F30@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;
}

double sub_1A33B9F8C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x2000000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return result;
}

unint64_t VisualIdentitySources.init()@<X0>(unint64_t *a1@<X8>)
{
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (sub_1A34CD9B0())
    {
      result = sub_1A33BEBF8(MEMORY[0x1E69E7CC0], &qword_1EB0CA098, &unk_1A34F9AD0, &qword_1EB0C7D40);
    }

    else
    {
      result = MEMORY[0x1E69E7CD0];
    }

    *a1 = result;
  }

  else
  {
    result = MEMORY[0x1E69E7CD0];
    *a1 = MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t VisualIdentitySources.union(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  result = sub_1A33B9828(v4, v5);
  *a2 = result;
  return result;
}

uint64_t VisualIdentitySources.formUnion(_:)()
{
  v1 = *v0;

  result = sub_1A33B9828(v2, v1);
  *v0 = result;
  return result;
}

uint64_t VisualIdentitySources.intersection(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  result = sub_1A33BBDD8(v4, v5);
  *a2 = result;
  return result;
}

uint64_t VisualIdentitySources.formIntersection(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  v4 = sub_1A33BBDD8(v2, v3);

  *v1 = v4;
  return result;
}

uint64_t VisualIdentitySources.symmetricDifference(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;

  result = sub_1A33BCD98(v4);
  *a2 = v6;
  return result;
}

uint64_t VisualIdentitySources.formSymmetricDifference(_:)()
{
  v3 = *v0;

  result = sub_1A33BCD98(v1);
  *v0 = v3;
  return result;
}

uint64_t sub_1A33BA240(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = sub_1A34CD9B0();
    v6 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *(a2 + 16);
    v6 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
LABEL_3:
      if (sub_1A34CD9B0() < v5)
      {
        return 0;
      }

      goto LABEL_7;
    }
  }

  if (*(a1 + 16) < v5)
  {
    return 0;
  }

LABEL_7:
  if (v4)
  {

    sub_1A34CD9A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
    sub_1A34CD580();
    v2 = v28;
    v7 = v29;
    v8 = v30;
    v9 = v31;
    v10 = v32;
  }

  else
  {
    v11 = -1 << *(v2 + 32);
    v7 = v2 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v2 + 56);

    v9 = 0;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
  v25 = v7;
  v15 = (v8 + 64) >> 6;
  v16 = a1 + 56;
  v26 = v9;
  if (v2 < 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  v17 = v10;
  if (v10)
  {
LABEL_19:
    v27 = (v17 - 1) & v17;
    sub_1A34C9010();
    if (v6)
    {
LABEL_20:
      v19 = sub_1A34CD9F0();

      if (v19)
      {
        goto LABEL_31;
      }
    }

    else
    {
      while (1)
      {
        v24 = v6;
        if (!*(a1 + 16))
        {
          break;
        }

        v20 = sub_1A34CCFD0();
        v21 = -1 << *(a1 + 32);
        v22 = v20 & ~v21;
        if (((*(v16 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          break;
        }

        v23 = ~v21;
        while ((sub_1A34CD040() & 1) == 0)
        {
          v22 = (v22 + 1) & v23;
          if (((*(v16 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        v6 = v24;
        v7 = v25;
LABEL_31:
        v10 = v27;
        v26 = v9;
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_22:
        if (!sub_1A34CD9E0())
        {
          goto LABEL_36;
        }

        swift_dynamicCast();
        v27 = v10;
        if (v6)
        {
          goto LABEL_20;
        }
      }

LABEL_33:
    }

    sub_1A33BEE40();
    return 0;
  }

  v18 = v26;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v15)
    {
LABEL_36:
      sub_1A33BEE40();
      return 1;
    }

    v17 = *(v7 + 8 * v9);
    ++v18;
    if (v17)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

BOOL VisualIdentitySources.insert(_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;

  v7 = sub_1A33BA240(v6, v4);

  if ((v7 & 1) == 0)
  {

    *v2 = sub_1A33B9828(v8, v5);
  }

  return (v7 & 1) == 0;
}

uint64_t VisualIdentitySources.remove(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A33BA658(*a1, *v2);
  *v2 = v4;
  *a2 = v4;
}

uint64_t sub_1A33BA658(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1A34CD9B0();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1A33BD228(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_1A34CD9B0() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_1A34CD9B0();
  v2 = sub_1A33BB4AC(v5, v6);
LABEL_10:

  return sub_1A33BD444(a1, v2);
}

uint64_t VisualIdentitySources.update(with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  v6 = sub_1A33BBDD8(v4, v5);

  v7 = v6;
  *v2 = v6;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v11 = v6;
    if (sub_1A34CD9B0())
    {
      v8 = sub_1A33BEBF8(MEMORY[0x1E69E7CC0], &qword_1EB0CA098, &unk_1A34F9AD0, &qword_1EB0C7D40);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CD0];
    }

    v7 = v11;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  v9 = sub_1A33BAA04(v7, v8);

  if (v9)
  {
    result = 0;
  }

  else
  {
  }

  *a2 = result;
  return result;
}

uint64_t sub_1A33BA84C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1A34CDF20();

    sub_1A34CD1C0();
    v16 = sub_1A34CDF70();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1A34CDE30() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A33BAA04(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x1EEE6A200](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x1EEE6A200](v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:
          sub_1A34C9010();
          v19 = sub_1A34CCFD0();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          while ((sub_1A34CD040() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_1A33BDDA0(v8, v7);
}

uint64_t sub_1A33BAC98(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1A34CDF20();
    MEMORY[0x1A58EF750](v13);
    result = sub_1A34CDF70();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A33BAE08@<X0>(unint64_t *a1@<X8>)
{
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (sub_1A34CD9B0())
    {
      result = sub_1A33BEBF8(MEMORY[0x1E69E7CC0], &qword_1EB0CA098, &unk_1A34F9AD0, &qword_1EB0C7D40);
    }

    else
    {
      result = MEMORY[0x1E69E7CD0];
    }

    *a1 = result;
  }

  else
  {
    result = MEMORY[0x1E69E7CD0];
    *a1 = MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1A33BAEA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A33B9828(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1A33BAED8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A33BBDD8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1A33BAF08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  result = sub_1A33BCD98(*a1);
  *a2 = v5;
  return result;
}

BOOL sub_1A33BAF4C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;

  v7 = sub_1A33BA240(v6, v4);

  if ((v7 & 1) == 0)
  {

    *v2 = sub_1A33B9828(v8, v5);
  }

  return (v7 & 1) == 0;
}

uint64_t sub_1A33BAFD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A33BA658(*a1, *v2);
  *v2 = v4;
  *a2 = v4;
}

uint64_t sub_1A33BB01C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  VisualIdentitySources.update(with:)(a1, a2);
}

uint64_t sub_1A33BB054()
{
  v1 = *v0;

  *v0 = sub_1A33B9828(v2, v1);
}

uint64_t sub_1A33BB0A8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  v4 = sub_1A33BBDD8(v2, v3);

  *v1 = v4;
  return result;
}

uint64_t sub_1A33BB0F8()
{
  v3 = *v0;

  sub_1A33BCD98(v1);
  *v0 = v3;
}

uint64_t sub_1A33BB160@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v7 = *v1;

  sub_1A33BCD98(v4);

  v5 = sub_1A33BBDD8(v7, v3);

  *a1 = v5;
}

uint64_t sub_1A33BB1F0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  v4 = sub_1A33BBDD8(v2, v3);
  LOBYTE(v3) = sub_1A33BAA04(v4, v3);

  return v3 & 1;
}

uint64_t sub_1A33BB244(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  v4 = sub_1A33BBDD8(v2, v3);
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1A34CD9B0())
  {
    v5 = sub_1A33BEBF8(MEMORY[0x1E69E7CC0], &qword_1EB0CA098, &unk_1A34F9AD0, &qword_1EB0C7D40);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CD0];
  }

  v6 = sub_1A33BAA04(v4, v5);

  return v6 & 1;
}

uint64_t sub_1A33BB308(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  v4 = sub_1A33BBDD8(v3, v2);
  LOBYTE(v2) = sub_1A33BAA04(v4, v2);

  return v2 & 1;
}

uint64_t sub_1A33BB35C()
{
  v1 = *v0;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v5 = *v0;
    if (sub_1A34CD9B0())
    {
      v2 = sub_1A33BEBF8(MEMORY[0x1E69E7CC0], &qword_1EB0CA098, &unk_1A34F9AD0, &qword_1EB0C7D40);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CD0];
    }

    v1 = v5;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v3 = sub_1A33BAA04(v1, v2);

  return v3 & 1;
}

uint64_t sub_1A33BB41C()
{
  v5 = *v0;

  sub_1A33BCD98(v1);
  v2 = *v0;

  v3 = sub_1A33BBDD8(v5, v2);

  *v0 = v3;
  return result;
}

uint64_t sub_1A33BB4AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA098);
    v2 = sub_1A34CDA70();
    v14 = v2;
    sub_1A34CD9A0();
    for (; sub_1A34CD9E0(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1A3464918();
        v2 = v14;
      }

      result = sub_1A34CCFD0();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v9 = 0;
        v10 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v10 && (v9 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v11 = v7 == v10;
          if (v7 == v10)
          {
            v7 = 0;
          }

          v9 |= v11;
          v12 = *(v4 + 8 * v7);
        }

        while (v12 == -1);
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v13;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1A33BB6B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA0A8);
    v2 = sub_1A34CDA70();
    v14 = v2;
    sub_1A34CD9A0();
    if (sub_1A34CD9E0())
    {
      sub_1A34CA290();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1A3464DC8();
        }

        v2 = v14;
        sub_1A33BF05C(&qword_1ED854A68, MEMORY[0x1E695BF10]);
        result = sub_1A34CCFD0();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1A34CD9E0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1A33BB8EC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
  sub_1A34CCFD0();
  result = sub_1A34CD990();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1A33BB9A4(uint64_t a1, uint64_t a2)
{
  sub_1A34CA290();
  sub_1A33BF05C(&qword_1ED854A68, MEMORY[0x1E695BF10]);
  sub_1A34CCFD0();
  result = sub_1A34CD990();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1A33BBA8C()
{

  v1 = sub_1A34CD9B0();
  v2 = swift_unknownObjectRetain();
  v3 = sub_1A33BB4AC(v2, v1);
  v10 = v3;
  sub_1A34C9010();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
  v4 = sub_1A34CCFD0();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while ((sub_1A34CD040() & 1) == 0)
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v8 = *(*(v3 + 48) + 8 * v6);
  sub_1A33BBC0C(v6);
  result = sub_1A34CD040();
  if (result)
  {
    *v0 = v10;
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A33BBC0C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_1A34C9010();
    v8 = sub_1A34CD980();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
        v10 = sub_1A34CCFD0() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
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

uint64_t sub_1A33BBDD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_1A34CD9B0();
      a2 = sub_1A33BB4AC(v4, v5);
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
    v7 = MEMORY[0x1E69E7CD0];
    v15 = MEMORY[0x1E69E7CD0];
    sub_1A34CD9A0();
    if (sub_1A34CD9E0())
    {
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v9 = sub_1A34CCFD0(), v10 = -1 << *(a1 + 32), v11 = v9 & ~v10, ((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
        {
          v12 = ~v10;
          while (1)
          {
            sub_1A34C9010();
            v13 = sub_1A34CD040();

            if (v13)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          if (*(v7 + 24) <= *(v7 + 16))
          {
            sub_1A3464918();
            v7 = v15;
          }

          sub_1A33BB8EC(v14, v7);
        }

        else
        {
LABEL_13:
        }
      }

      while (sub_1A34CD9E0());
    }

    return v7;
  }

  else
  {
    if (v3)
    {
LABEL_8:

      return sub_1A33BC034(a1, a2);
    }

    return sub_1A33BC1D4(a1, a2);
  }
}

uint64_t sub_1A33BC034(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x1E69E9840];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1A33BC398(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1A33BEE48(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x1A58F1010](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_1A33BC1D4(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  sub_1A34C9010();
  isStackAllocationSafe = sub_1A34C9010();
  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1A33BC754(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();
    sub_1A34C9010();
    v9 = sub_1A33BC6C4(v11, v6, a2, a1);

    MEMORY[0x1A58F1010](v11, -1, -1);
  }

  return v9;
}

uint64_t sub_1A33BC398(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1A34CD9A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
    result = sub_1A34CD580();
    v4 = v34;
    v6 = v35;
    v7 = v36;
    v8 = v37;
    v9 = v38;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v28 = 0;
  v13 = (v7 + 64) >> 6;
  v14 = a4 + 56;
  v31 = v4;
  v32 = v6;
  v30 = v13;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  if (!sub_1A34CD9E0() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40), swift_dynamicCast(), v19 = v39, v17 = v8, v18 = v9, !v39))
  {
LABEL_29:
    sub_1A33BEE40();
    sub_1A34C9010();
    return sub_1A33BCB60(a1, a2, v28, a4);
  }

  while (1)
  {
    v39 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
    v20 = sub_1A34CCFD0();
    v21 = -1 << *(a4 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & *(v14 + 8 * (v22 >> 6))) == 0)
    {
LABEL_9:

      v4 = v31;
      v6 = v32;
      v13 = v30;
      goto LABEL_10;
    }

    v25 = ~v21;
    while ((sub_1A34CD040() & 1) == 0)
    {
      v22 = (v22 + 1) & v25;
      v23 = v22 >> 6;
      v24 = 1 << v22;
      if (((1 << v22) & *(v14 + 8 * (v22 >> 6))) == 0)
      {
        goto LABEL_9;
      }
    }

    v13 = v30;
    v26 = a1[v23];
    a1[v23] = v26 | v24;
    v4 = v31;
    if ((v26 & v24) != 0)
    {
      v6 = v32;
LABEL_10:
      v9 = v18;
      v8 = v17;
      if (v4 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    v6 = v32;
    v9 = v18;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_31;
    }

    ++v28;
    v8 = v17;
    if (v31 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v15 = v8;
    v16 = v9;
    v17 = v8;
    if (!v9)
    {
      break;
    }

LABEL_15:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v4 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    sub_1A34C9010();
    if (!v19)
    {
      goto LABEL_29;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      goto LABEL_29;
    }

    v16 = *(v6 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_1A33BC6C4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1A33BC754(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1A33BC754(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v36 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_23:
    v39 = 0;
    v21 = 0;
    v22 = v5 + 56;
    v23 = 1 << *(v5 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v5 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = v4 + 56;
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v41 = (v25 - 1) & v25;
LABEL_35:
      v38 = v28 | (v21 << 6);
      sub_1A34C9010();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
      v31 = sub_1A34CCFD0();
      v32 = -1 << *(a4 + 32);
      v33 = v31 & ~v32;
      if ((*(v27 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
      {
        v34 = ~v32;
        while ((sub_1A34CD040() & 1) == 0)
        {
          v33 = (v33 + 1) & v34;
          if (((*(v27 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        *(v36 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
        v25 = v41;
        v20 = __OFADD__(v39++, 1);
        v5 = a3;
        if (v20)
        {
          __break(1u);
          goto LABEL_43;
        }
      }

      else
      {
LABEL_27:

        v25 = v41;
        v5 = a3;
      }
    }

    v29 = v21;
    while (1)
    {
      v21 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v21 >= v26)
      {
        goto LABEL_43;
      }

      v30 = *(v22 + 8 * v21);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v41 = (v30 - 1) & v30;
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  v6 = 0;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;
  v39 = 0;
  v40 = a3 + 56;
  while (v10)
  {
    v37 = (v10 - 1) & v10;
LABEL_15:
    sub_1A34C9010();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
    v14 = sub_1A34CCFD0();
    v15 = -1 << *(v5 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    v18 = 1 << v16;
    if (((1 << v16) & *(v40 + 8 * (v16 >> 6))) == 0)
    {
      goto LABEL_6;
    }

    if ((sub_1A34CD040() & 1) == 0)
    {
      v19 = ~v15;
      while (1)
      {
        v16 = (v16 + 1) & v19;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v40 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        if (sub_1A34CD040())
        {
          goto LABEL_20;
        }
      }

LABEL_6:

      v5 = a3;
      goto LABEL_7;
    }

LABEL_20:

    v36[v17] |= v18;
    v20 = __OFADD__(v39++, 1);
    v5 = a3;
    v4 = a4;
    if (v20)
    {
      __break(1u);
      goto LABEL_23;
    }

LABEL_7:
    v10 = v37;
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
LABEL_43:
      sub_1A34C9010();
      return sub_1A33BCB60(v36, a2, v39, v5);
    }

    v13 = *(v7 + 8 * v6);
    ++v12;
    if (v13)
    {
      v37 = (v13 - 1) & v13;
      goto LABEL_15;
    }
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1A33BCB60(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v4 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA098);
  v9 = sub_1A34CDA80();
  v5 = v9;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = v9 + 56;
  result = a4;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v17 = *(*(result + 48) + 8 * (v14 | (v11 << 6)));
    sub_1A34C9010();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
    result = sub_1A34CCFD0();
    v18 = -1 << *(v5 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v17;
    ++*(v5 + 16);
    if (__OFSUB__(v4--, 1))
    {
      goto LABEL_32;
    }

    result = a4;
    if (!v4)
    {
LABEL_28:

      return v5;
    }
  }

  v15 = v11;
  while (1)
  {
    v11 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v16 = a1[v11];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v10 = (v16 - 1) & v16;
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

uint64_t sub_1A33BCD98(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1A34CD9A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
    sub_1A34CD580();
    v3 = v29;
    v23 = v30;
    v4 = v31;
    v25 = v32;
    v5 = v33;
  }

  else
  {
    v25 = 0;
    v6 = -1 << *(a1 + 32);
    v23 = a1 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
  v10 = (v4 + 64) >> 6;
  v24 = v3;
  while (v3 < 0)
  {
    v12 = sub_1A34CD9E0();
    if (!v12)
    {
      return sub_1A33BEE40();
    }

    v27 = v12;
    swift_dynamicCast();
    v13 = v28;
LABEL_21:
    v27 = v13;
    v16 = v2;
    v17 = *v2;
    if ((*v2 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      v18 = sub_1A34CD9F0();
      swift_unknownObjectRelease();
      if ((v18 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (!*(v17 + 16) || (v19 = sub_1A34CCFD0(), v20 = -1 << *(v17 + 32), v21 = v19 & ~v20, ((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0))
      {
LABEL_8:
        v2 = v16;
        sub_1A346417C(&v26, v13);
        goto LABEL_9;
      }

      v22 = ~v20;
      while (1)
      {
        v26 = *(*(v17 + 48) + 8 * v21);
        if (sub_1A34CD040())
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }

    v2 = v16;
    sub_1A33BD080();

LABEL_9:

    v3 = v24;
  }

  if (v5)
  {
    v11 = v25;
LABEL_20:
    v15 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = *(*(v3 + 48) + ((v11 << 9) | (8 * v15)));
    v28 = v13;
    sub_1A34C9010();
    goto LABEL_21;
  }

  v14 = v25;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      return sub_1A33BEE40();
    }

    v5 = *(v23 + 8 * v11);
    ++v14;
    if (v5)
    {
      v25 = v11;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A33BD080()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {

    sub_1A34C9010();
    v2 = sub_1A34CD9F0();

    if (v2)
    {
      v3 = sub_1A33BBA8C();

      return v3;
    }

    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
  v5 = sub_1A34CCFD0();
  v6 = -1 << *(v1 + 32);
  v7 = v5 & ~v6;
  if (((*(v1 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while ((sub_1A34CD040() & 1) == 0)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v1 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  v12 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A3465948();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v7);
  sub_1A33BBC0C(v7);
  result = v11;
  *v0 = v12;
  return result;
}

uint64_t sub_1A33BD228(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    result = sub_1A34CD9B0();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(*v1 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1A34CD9A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
    result = sub_1A34CD580();
    a1 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    sub_1A34C9010();
    if (!v15)
    {
      return sub_1A33BEE40();
    }

    while (1)
    {
      sub_1A33BD080();

      v6 = v13;
      v7 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1A34CD9E0())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
        swift_dynamicCast();
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      return sub_1A33BEE40();
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      return sub_1A33BEE40();
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A33BD444(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v62[10] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1A34CD9A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
    sub_1A34CD580();
    v4 = v62[5];
    v6 = v62[6];
    v7 = v62[7];
    v8 = v62[8];
    v9 = v62[9];
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v50 = v7;
  v13 = (v7 + 64) >> 6;
  v58 = (v3 + 56);
  v14 = &qword_1EB0C7D40;
  v15 = v8;
  v53 = v9;
  v54 = v13;
  v55 = v6;
  while (1)
  {
    if (v4 < 0)
    {
      v19 = sub_1A34CD9E0();
      if (!v19)
      {
        goto LABEL_51;
      }

      v59 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
      swift_dynamicCast();
      v18 = v60;
      v57 = v15;
      v2 = v9;
      if (!v60)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v16 = v15;
      v17 = v9;
      v8 = v15;
      if (!v9)
      {
        while (1)
        {
          v8 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v8 >= v13)
          {
            goto LABEL_51;
          }

          v17 = *(v6 + 8 * v8);
          ++v16;
          if (v17)
          {
            goto LABEL_16;
          }
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_16:
      v2 = (v17 - 1) & v17;
      v18 = sub_1A34C9010();
      v57 = v8;
      v53 = v2;
      if (!v18)
      {
        goto LABEL_51;
      }
    }

    v56 = v18;
    v61 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
    v20 = sub_1A34CCFD0();
    v21 = -1 << *(v3 + 32);
    v15 = v20 & ~v21;
    v14 = v15 >> 6;
    v6 = 1 << v15;
    if (((1 << v15) & v58[v15 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v15 = v57;
    v9 = v2;
    v13 = v54;
    v6 = v55;
    v14 = &qword_1EB0C7D40;
  }

  v22 = ~v21;
  while (1)
  {
    v60 = *(*(v3 + 48) + 8 * v15);
    if (sub_1A34CD040())
    {
      break;
    }

    v15 = (v15 + 1) & v22;
    v14 = v15 >> 6;
    v6 = 1 << v15;
    if (((1 << v15) & v58[v15 >> 6]) == 0)
    {
      goto LABEL_10;
    }
  }

  v23 = v55;
  v62[0] = v4;
  v62[1] = v55;
  v62[2] = v50;
  v62[3] = v8;
  v62[4] = v53;

  v25 = *(v3 + 32);
  v48 = ((1 << v25) + 63) >> 6;
  v5 = 8 * v48;
  if ((v25 & 0x3Fu) <= 0xD)
  {
LABEL_26:
    v49 = &v47;
    MEMORY[0x1EEE9AC00](v24);
    v27 = &v47 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v27, v58, v26);
    v28 = *(v3 + 16);
    v29 = *&v27[8 * v14] & ~v6;
    v51 = v27;
    *&v27[8 * v14] = v29;
    v6 = v28 - 1;
    v30 = v54;
    v52 = v4;
    while (1)
    {
      if (v4 < 0)
      {
        v34 = sub_1A34CD9E0();
        if (!v34)
        {
          goto LABEL_50;
        }

        v59 = v34;
        swift_dynamicCast();
        v14 = v60;
        if (!v60)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v31 = v57;
        if (!v2)
        {
          while (1)
          {
            v32 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              break;
            }

            if (v32 >= v30)
            {
              goto LABEL_50;
            }

            v2 = *(v23 + 8 * v32);
            ++v31;
            if (v2)
            {
              v57 = v32;
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_54;
        }

        v32 = v57;
LABEL_34:
        v33 = __clz(__rbit64(v2));
        v2 &= v2 - 1;
        v14 = *(*(v4 + 48) + ((v32 << 9) | (8 * v33)));
        sub_1A34C9010();
        v53 = v2;
        if (!v14)
        {
LABEL_50:
          v3 = sub_1A33BCB60(v51, v48, v6, v3);
          goto LABEL_51;
        }
      }

      v56 = v6;
      v61 = v14;
      v35 = sub_1A34CCFD0();
      v36 = v3;
      v37 = -1 << *(v3 + 32);
      v15 = v35 & ~v37;
      v38 = v15 >> 6;
      v39 = 1 << v15;
      if (((1 << v15) & v58[v15 >> 6]) == 0)
      {
        break;
      }

      v40 = ~v37;
      while (1)
      {
        v60 = *(*(v36 + 48) + 8 * v15);
        if (sub_1A34CD040())
        {
          break;
        }

        v15 = (v15 + 1) & v40;
        v38 = v15 >> 6;
        v39 = 1 << v15;
        if (((1 << v15) & v58[v15 >> 6]) == 0)
        {
          goto LABEL_42;
        }
      }

      v41 = v51[v38];
      v51[v38] = v41 & ~v39;
      v3 = v36;
      if ((v41 & v39) != 0)
      {
        v23 = v55;
        v6 = v56 - 1;
        v4 = v52;
        v30 = v54;
        if (__OFSUB__(v56, 1))
        {
          goto LABEL_55;
        }

        if (v56 == 1)
        {

          v3 = MEMORY[0x1E69E7CD0];
          goto LABEL_51;
        }
      }

      else
      {
LABEL_47:
        v4 = v52;
        v30 = v54;
        v23 = v55;
        v6 = v56;
      }
    }

LABEL_42:

    v3 = v36;
    goto LABEL_47;
  }

LABEL_56:
  v43 = v5;
  sub_1A34C9010();
  v44 = v3;
  v45 = v43;
  if (swift_stdlib_isStackAllocationSafe())
  {

    v3 = v44;
    v23 = v55;
    goto LABEL_26;
  }

  v46 = swift_slowAlloc();
  memcpy(v46, v58, v45);
  v3 = sub_1A33BDB0C(v46, v48, v44, v15, v62);

  MEMORY[0x1A58F1010](v46, -1, -1);
LABEL_51:
  sub_1A33BEE40();
  return v3;
}

uint64_t sub_1A33BDB0C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v26 = result;
  v27 = v7 - 1;
  v8 = a3 + 56;
  while (1)
  {
    if ((*v5 & 0x8000000000000000) != 0)
    {
      if (!sub_1A34CD9E0())
      {
        goto LABEL_28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
      swift_dynamicCast();
      if (!v29)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    v9 = v5[3];
    v10 = v5[4];
    if (!v10)
    {
      break;
    }

    v11 = v5[3];
LABEL_16:
    v15 = (v10 - 1) & v10;
    v16 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    sub_1A34C9010();
    v14 = v11;
LABEL_17:
    v5[3] = v14;
    v5[4] = v15;
    if (!v16)
    {
LABEL_28:
      sub_1A34C9010();
      return sub_1A33BCB60(v26, a2, v27, a3);
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
    v17 = sub_1A34CCFD0();
    v18 = -1 << *(a3 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v8 + 8 * (v19 >> 6))) != 0)
    {
      v22 = ~v18;
      while (1)
      {
        v29 = *(*(a3 + 48) + 8 * v19);
        if (sub_1A34CD040())
        {
          break;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v8 + 8 * (v19 >> 6))) == 0)
        {
          goto LABEL_2;
        }
      }

      v23 = v26[v20];
      v26[v20] = v23 & ~v21;
      v5 = a5;
      if ((v23 & v21) != 0)
      {
        v24 = v27 - 1;
        if (__OFSUB__(v27, 1))
        {
          goto LABEL_30;
        }

        --v27;
        if (!v24)
        {
          return MEMORY[0x1E69E7CD0];
        }
      }
    }

    else
    {
LABEL_2:

      v5 = a5;
    }
  }

  v12 = (v5[2] + 64) >> 6;
  if (v12 <= v9 + 1)
  {
    v13 = v9 + 1;
  }

  else
  {
    v13 = (v5[2] + 64) >> 6;
  }

  v14 = v13 - 1;
  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v12)
    {
      v16 = 0;
      v15 = 0;
      goto LABEL_17;
    }

    v10 = *(v5[1] + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1A33BDDA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1A34CD9B0();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:
    sub_1A34C9010();
    v12 = sub_1A34CD9F0();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A33BDEA4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1A34CD9B0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
  result = MEMORY[0x1A58EED90](v3, v4, MEMORY[0x1E69E6930]);
  v11 = result;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1A58EF310](i, a1);
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v11;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v8 = *(a1 + 8 * i + 32);
        sub_1A34C9010();
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1A346417C(&v10, v8);

      if (v9 == v2)
      {
        return v11;
      }
    }
  }

  v6 = result;
  v2 = sub_1A34CD9B0();
  result = v6;
  if (v2)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1A33BDFEC()
{
  result = qword_1EB0CA058;
  if (!qword_1EB0CA058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA058);
  }

  return result;
}

unint64_t sub_1A33BE044()
{
  result = qword_1EB0CA060;
  if (!qword_1EB0CA060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA060);
  }

  return result;
}

uint64_t sub_1A33BE0A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA0B0);
    v3 = sub_1A34CDA80();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1A34CDF20();
      MEMORY[0x1A58EF750](v10);
      result = sub_1A34CDF70();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (v10 != *(v17 + v13))
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A33BE1E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA068);
    v3 = sub_1A34CDA80();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_1A34CDF20();
      MEMORY[0x1A58EF750](v10);
      result = sub_1A34CDF70();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}