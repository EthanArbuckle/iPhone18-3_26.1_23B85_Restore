uint64_t sub_216C17A5C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a1;
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v42 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6200);
  MEMORY[0x28223BE20](v48);
  v9 = v42 - v8;
  v10 = type metadata accessor for SearchPageContentView();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v46 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60A8);
  MEMORY[0x28223BE20](v49);
  v13 = v42 - v12;
  v14 = *(v2 + 8);
  if (v14)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_217007DE4();

    if (v56)
    {
      sub_216C1B0F8();
      (*(v5 + 16))(v9, v7, v4);
      swift_storeEnumTagMultiPayload();
      sub_216C1D5B8();
      v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60B8);
      v16 = v4;
      v17 = type metadata accessor for ObjectGraph();
      v18 = sub_216C1D670();
      v51 = v15;
      v52 = v17;
      v53 = v18;
      swift_getOpaqueTypeConformance2();
      sub_217009554();
      return (*(v5 + 8))(v7, v16);
    }

    else
    {
      v20 = *(v14 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker + 8);
      v43 = *(v14 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
      v44 = v20;
      type metadata accessor for MusicStackAuthority();
      sub_2166B2EC4(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
      swift_unknownObjectRetain();
      *(v13 + 18) = sub_217008CF4();
      *(v13 + 19) = v21;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60B0);
      v23 = v22[24];
      *&v13[v23] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
      swift_storeEnumTagMultiPayload();
      v24 = &v13[v22[25]];
      *v24 = swift_getKeyPath();
      v24[8] = 0;
      v25 = &v13[v22[26]];
      *v25 = sub_216CEB564;
      *(v25 + 1) = 0;
      v25[16] = 0;
      *(v13 + 40) = 0u;
      *(v13 + 24) = 0u;
      *(v13 + 28) = 260;
      type metadata accessor for UserSocialProfileCoordinator();
      v26 = type metadata accessor for ObjectGraph();
      sub_21700E094();
      *(v13 + 11) = v51;
      type metadata accessor for SocialGraphController();
      sub_21700E094();
      *(v13 + 12) = v51;
      type metadata accessor for SubscriptionStatusCoordinator();
      sub_21700E094();
      *(v13 + 13) = v51;
      type metadata accessor for AppDestinationPageProviderBox();
      sub_21700E094();
      *(v13 + 8) = v51;
      type metadata accessor for CloudLibraryStatusController();
      sub_21700E094();
      *(v13 + 14) = v51;
      type metadata accessor for UnifiedMessages.Coordinator();
      sub_21700E094();
      *(v13 + 17) = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30);
      sub_21700E094();
      v42[1] = v4;
      v27 = v54;
      v28 = v55;
      __swift_project_boxed_opaque_existential_1(&v51, v54);
      v29 = (*(v28 + 8))(v27, v28);
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_1Tm(&v51);
      *(v13 + 9) = v29;
      *(v13 + 10) = v31;
      v32 = v47;
      *v13 = sub_2167D8C58;
      *(v13 + 1) = v32;
      v13[16] = 0;
      type metadata accessor for MusicTabChangePublisher();

      sub_21700E094();
      sub_2166B2EC4(&qword_280E46AC8, type metadata accessor for MusicTabChangePublisher);
      *(v13 + 15) = sub_217008684();
      *(v13 + 16) = v33;
      v34 = &v13[v22[27]];
      v35 = v44;
      *v34 = v43;
      *(v34 + 1) = v35;
      v36 = v46;
      sub_216C1E9E8(v3, v46, type metadata accessor for SearchPageContentView);
      v37 = (*(v45 + 80) + 16) & ~*(v45 + 80);
      v38 = swift_allocObject();
      sub_216C1E98C(v36, v38 + v37, type metadata accessor for SearchPageContentView);
      v39 = &v13[*(v49 + 36)];
      *v39 = sub_216C1E974;
      v39[1] = v38;
      v39[2] = 0;
      v39[3] = 0;
      sub_216683A80(v13, v9, &qword_27CAC60A8);
      swift_storeEnumTagMultiPayload();
      sub_216C1D5B8();
      v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60B8);
      v41 = sub_216C1D670();
      v51 = v40;
      v52 = v26;
      v53 = v41;
      swift_getOpaqueTypeConformance2();
      sub_217009554();
      return sub_216699778(v13, &qword_27CAC60A8);
    }
  }

  else
  {
    type metadata accessor for SearchPagePresenter();
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C18224@<X0>(uint64_t a1@<X8>)
{
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61E0);
  MEMORY[0x28223BE20](v91);
  v4 = &v73 - v3;
  v87 = sub_217009144();
  v84 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v83 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61E8);
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x28223BE20](v6);
  v85 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v86 = &v73 - v9;
  v10 = sub_217009334();
  v75 = *(v10 - 8);
  v76 = v10;
  MEMORY[0x28223BE20](v10);
  v74 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61F0);
  v79 = *(v12 - 8);
  v80 = v12;
  MEMORY[0x28223BE20](v12);
  v78 = &v73 - v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60F8);
  MEMORY[0x28223BE20](v90);
  v77 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v81 = &v73 - v16;
  v17 = sub_2170090F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SearchPageContentView();
  if (*(v1 + v21[14]) != 1)
  {
    goto LABEL_7;
  }

  v22 = *(v1 + 80);

  if ((v22 & 1) == 0)
  {
    sub_21700ED94();
    v23 = sub_217009C34();
    v82 = v4;
    v24 = a1;
    v25 = v23;
    sub_217007BC4();

    a1 = v24;
    v4 = v82;
    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v18 + 8))(v20, v17);
  }

  v26 = sub_216C03B7C();

  if (v26)
  {
    v82 = a1;
    v27 = *(v1 + 8);
    if (v27)
    {
      v73 = *(v27 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
      swift_unknownObjectRetain();

      sub_21700B3B4();
      sub_2170083C4();
      v28 = v97;
      v29 = v99;
      v30 = v101;
      v31 = v102;
      v94 = v98;
      v93 = v100;
      v32 = sub_217009CA4();
      sub_217007F24();
      v96 = 0;
      v92[0] = v26;
      *&v92[1] = v73;
      v92[3] = v28;
      LOBYTE(v92[4]) = v94;
      v92[5] = v29;
      LOBYTE(v92[6]) = v93;
      v92[7] = v30;
      v92[8] = v31;
      LOBYTE(v92[9]) = v32;
      v92[10] = v33;
      v92[11] = v34;
      v92[12] = v35;
      v92[13] = v36;
      LOBYTE(v92[14]) = 0;
      v37 = v74;
      sub_217009324();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6100);
      sub_216C1DBA8();
      v38 = v78;
      sub_21700A704();
      (*(v75 + 8))(v37, v76);
      memcpy(v95, v92, 0x71uLL);
      sub_216699778(v95, &qword_27CAC6100);
      v39 = v83;
      sub_217009134();
      sub_21700B424();
      v40 = sub_2166B2EC4(&qword_280E2AC48, MEMORY[0x277CE0068]);
      v42 = v86;
      v41 = v87;
      sub_217008084();

      (*(v84 + 8))(v39, v41);
      v44 = v88;
      v43 = v89;
      (*(v88 + 16))(v85, v42, v89);
      v92[0] = v41;
      v92[1] = v40;
      swift_getOpaqueTypeConformance2();
      v45 = sub_217008404();
      (*(v44 + 8))(v42, v43);
      v46 = v77;
      (*(v79 + 32))(v77, v38, v80);
      *(v46 + *(v90 + 36)) = v45;
      v47 = v81;
      sub_2167C5834(v46, v81, &qword_27CAC60F8);
      sub_216683A80(v47, v4, &qword_27CAC60F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6120);
      sub_216C1DAB4();
      sub_216C1DD4C();
      v48 = v82;
      sub_217009554();

      sub_216699778(v47, &qword_27CAC60F8);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60E8);
      v50 = v48;
LABEL_10:
      v71 = 0;
      return __swift_storeEnumTagSinglePayload(v50, v71, 1, v49);
    }

    type metadata accessor for SearchPagePresenter();
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  }

  else
  {
LABEL_7:
    if (*(v1 + v21[15]) != 1)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60E8);
      v50 = a1;
      v71 = 1;
      return __swift_storeEnumTagSinglePayload(v50, v71, 1, v49);
    }

    v82 = a1;
    v51 = *(v1 + 8);
    type metadata accessor for SearchPagePresenter();
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
    sub_217008CC4();
    swift_getKeyPath();
    sub_217008CE4();

    v52 = *(v1 + v21[16]);
    if (v51)
    {
      LODWORD(v81) = LOBYTE(v95[2]);
      v79 = v95[0];
      v80 = v95[1];
      sub_21700DF14();

      v78 = sub_216C99690();

      LODWORD(v77) = sub_217009CA4();
      sub_217007F24();
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;
      LOBYTE(v97) = 0;
      v61 = v83;
      sub_217009134();
      sub_21700B424();
      v62 = sub_2166B2EC4(&qword_280E2AC48, MEMORY[0x277CE0068]);
      v64 = v86;
      v63 = v87;
      sub_217008084();

      (*(v84 + 8))(v61, v63);
      v66 = v88;
      v65 = v89;
      (*(v88 + 16))(v85, v64, v89);
      v92[0] = v63;
      v92[1] = v62;
      swift_getOpaqueTypeConformance2();
      v67 = sub_217008404();
      (*(v66 + 8))(v64, v65);
      v68 = v80;
      *v4 = v79;
      *(v4 + 1) = v68;
      v4[16] = v81;
      v69 = v78;
      *(v4 + 3) = v52;
      *(v4 + 4) = v69;
      *(v4 + 5) = v51;
      v4[48] = v77;
      *(v4 + 7) = v54;
      *(v4 + 8) = v56;
      *(v4 + 9) = v58;
      *(v4 + 10) = v60;
      v4[88] = 0;
      *(v4 + 12) = v67;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6120);
      sub_216C1DAB4();
      sub_216C1DD4C();
      v70 = v82;
      sub_217009554();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60E8);
      v50 = v70;
      goto LABEL_10;
    }

    sub_21700DF14();
  }

  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216C18D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v87 = a4;
  v85 = a3;
  v86 = a2;
  v84 = a1;
  v102 = a5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61F8);
  v6 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v8 = &v72 - v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6210);
  MEMORY[0x28223BE20](v100);
  v101 = &v72 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9140);
  *&v88 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v11 = &v72 - v10;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9150);
  v81 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v78 = &v72 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6218);
  MEMORY[0x28223BE20](v94);
  v97 = &v72 - v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6220);
  MEMORY[0x28223BE20](v90);
  v91 = &v72 - v14;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6150);
  MEMORY[0x28223BE20](v96);
  v92 = &v72 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6228);
  MEMORY[0x28223BE20](v82);
  v80 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v79 = &v72 - v18;
  v19 = sub_2170090F4();
  v73 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for SearchResultsViewModel(0);
  MEMORY[0x28223BE20](v74);
  v23 = (&v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6230);
  MEMORY[0x28223BE20](v75);
  v77 = &v72 - v24;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6158);
  MEMORY[0x28223BE20](v89);
  v76 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v83 = &v72 - v27;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6148);
  MEMORY[0x28223BE20](v99);
  v95 = &v72 - v28;
  v29 = v5[1];
  if (!v29)
  {
    type metadata accessor for SearchPagePresenter();
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
    result = sub_217008CD4();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_217007DE4();

  if (v107)
  {
    sub_216C1B0F8();
    v30 = v103;
    (*(v6 + 16))(v101, v8, v103);
    swift_storeEnumTagMultiPayload();
    sub_216C1E0C4();
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60B8);
    v32 = type metadata accessor for ObjectGraph();
    v33 = sub_216C1D670();
    *&v105 = v31;
    *(&v105 + 1) = v32;
    v106 = v33;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v6 + 8))(v8, v30);
  }

  v35 = (v5 + *(type metadata accessor for SearchPageContentView() + 48));
  v36 = *v35;
  if ((~*v35 & 0xF000000000000007) == 0)
  {
    goto LABEL_8;
  }

  if (!(v36 >> 62))
  {
    v48 = *v5;
    v49 = v5[9];
    v50 = *(v5 + 80);

    if ((v50 & 1) == 0)
    {
      sub_21700ED94();
      v51 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();

      (*(v73 + 8))(v21, v19);
      v49 = v105;
    }

    v52 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker;
    v53 = v74;
    v54 = (v23 + *(v74 + 24));
    v55 = type metadata accessor for SearchResultsPageIntent();
    v56 = *(v55 + 20);
    v57 = type metadata accessor for ReferrerInfo();
    v88 = *(v29 + v52);
    __swift_storeEnumTagSinglePayload(v54 + v56, 1, 1, v57);
    v58 = v86;
    *v54 = v84;
    v54[1] = v58;
    v59 = (v54 + *(v55 + 24));
    v60 = v87;
    *v59 = v85;
    v59[1] = v60;
    type metadata accessor for JSIntentDispatcher();
    type metadata accessor for ObjectGraph();
    swift_unknownObjectRetain();
    sub_21700DF14();
    sub_21700DF14();
    sub_21700E094();
    *(v23 + *(v53 + 28)) = v105;
    *v23 = v49;
    v23[1] = v48;
    *(v23 + *(v53 + 32)) = v88;
    v61 = v23;
    v62 = v77;
    sub_216C1E98C(v61, v77, type metadata accessor for SearchResultsViewModel);
    v63 = v75;
    v64 = v79;
    swift_storeEnumTagMultiPayload();
    sub_216683A80(v64, v80, &qword_27CAC6228);
    sub_21700AEA4();
    sub_216699778(v64, &qword_27CAC6228);
    v65 = *(v63 + 40);
    v104 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118);
    sub_21700AEA4();
    *(v62 + v65) = v105;
    v66 = *(v29 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_lastEditedText);
    v67 = *(v29 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_lastEditedText + 8);
    v68 = v76;
    sub_2167C5834(v62, v76, &qword_27CAC6230);
    v69 = (v68 + *(v89 + 52));
    *v69 = v66;
    v69[1] = v67;
    v70 = v83;
    sub_2167C5834(v68, v83, &qword_27CAC6158);
    sub_216683A80(v70, v91, &qword_27CAC6158);
    swift_storeEnumTagMultiPayload();
    sub_21680DFBC(qword_280E48638, &qword_27CAB9140);
    sub_21680DFBC(&qword_280E2A540, &qword_27CAC6158);
    sub_21700DF14();
    v71 = v92;
    sub_217009554();
    sub_216683A80(v71, v97, &qword_27CAC6150);
    swift_storeEnumTagMultiPayload();
    sub_216C1E17C();
    sub_21680DFBC(&qword_280E48630, &qword_27CAB9150);
    v41 = v95;
    sub_217009554();
    sub_216699778(v71, &qword_27CAC6150);
    sub_216699778(v70, &qword_27CAC6158);
    goto LABEL_9;
  }

  if (v36 >> 62 == 1)
  {
    sub_2169D4E84(*v35);
    v37 = (v36 & 0x3FFFFFFFFFFFFFFFLL);

    v38 = v78;
    sub_217007564();
    v39 = v81;
    v40 = v98;
    (*(v81 + 16))(v97, v38, v98);
    swift_storeEnumTagMultiPayload();
    sub_216C1E17C();
    sub_21680DFBC(&qword_280E48630, &qword_27CAB9150);
    v41 = v95;
    sub_217009554();

    (*(v39 + 8))(v38, v40);
  }

  else
  {
LABEL_8:
    sub_217007514();
    v42 = v88;
    v43 = v93;
    (*(v88 + 16))(v91, v11, v93);
    swift_storeEnumTagMultiPayload();
    sub_21680DFBC(qword_280E48638, &qword_27CAB9140);
    sub_21680DFBC(&qword_280E2A540, &qword_27CAC6158);
    v44 = v92;
    sub_217009554();
    sub_216683A80(v44, v97, &qword_27CAC6150);
    swift_storeEnumTagMultiPayload();
    sub_216C1E17C();
    sub_21680DFBC(&qword_280E48630, &qword_27CAB9150);
    v41 = v95;
    sub_217009554();
    sub_216699778(v44, &qword_27CAC6150);
    (*(v42 + 8))(v11, v43);
  }

LABEL_9:
  sub_216683A80(v41, v101, &qword_27CAC6148);
  swift_storeEnumTagMultiPayload();
  sub_216C1E0C4();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60B8);
  v46 = type metadata accessor for ObjectGraph();
  v47 = sub_216C1D670();
  *&v105 = v45;
  *(&v105 + 1) = v46;
  v106 = v47;
  swift_getOpaqueTypeConformance2();
  sub_217009554();
  return sub_216699778(v41, &qword_27CAC6148);
}

uint64_t sub_216C19C64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SearchPageContentView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = type metadata accessor for MusicMetrics.PageFields(0);
  MEMORY[0x28223BE20](v7);
  v61 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6238);
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6240);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = &v52 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6170);
  MEMORY[0x28223BE20](v55);
  v60 = &v52 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6168);
  MEMORY[0x28223BE20](v58);
  v62 = &v52 - v17;
  if (!v1[3])
  {
    type metadata accessor for MusicStackAuthority();
    v50 = &qword_280E46D08;
    v51 = type metadata accessor for MusicStackAuthority;
LABEL_14:
    sub_2166B2EC4(v50, v51);
    result = sub_217008CD4();
    __break(1u);
    return result;
  }

  v63 = v5;
  v64 = v6;
  v65 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  v18 = *(v1 + *(v4 + 44));

  v67 = sub_216E9C900(v19, v18);

  v20 = v1[1];
  if (!v20)
  {
    type metadata accessor for SearchPagePresenter();
    v50 = &qword_280E3D248;
    v51 = type metadata accessor for SearchPagePresenter;
    goto LABEL_14;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_217007DE4();

  v68 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F30);
  sub_21700B474();
  type metadata accessor for UnifiedMessagesRequestState(0);
  sub_216C1E810();
  sub_2166B2EC4(&qword_280E32C90, type metadata accessor for UnifiedMessagesRequestState);
  sub_21700A3C4();

  v21 = v56;
  sub_216C0D15C(v67);
  (*(v53 + 8))(v14, v54);
  if (!v1[5])
  {
    sub_217006A14();
    v50 = &unk_280E4A430;
    v51 = MEMORY[0x277D2A6E8];
    goto LABEL_14;
  }

  v22 = sub_217006994();

  v23 = *(v22 + 16);

  v24 = v23 == 0;
  if (v23)
  {
    v25 = 0x746E65636572;
  }

  else
  {
    v25 = 0x72617453646C6F63;
  }

  if (v24)
  {
    v26 = 0xE900000000000074;
  }

  else
  {
    v26 = 0xE600000000000000;
  }

  v27 = v7[7];
  v28 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(&v11[v27], 1, 1, v28);
  *v11 = 16;
  *(v11 + 1) = v25;
  *(v11 + 2) = v26;
  v11[24] = 31;
  *&v11[v7[8]] = xmmword_217020730;
  *&v11[v7[9]] = xmmword_217053F70;
  *&v11[v7[10]] = 0;
  v29 = *(v20 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
  v30 = *(v20 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker + 8);
  v31 = v61;
  sub_216C1E9E8(v11, v61, type metadata accessor for MusicMetrics.PageFields);
  v32 = v60;
  v33 = &v60[*(v55 + 36)];
  v34 = _s19PageMetricsModifierVMa();
  v35 = (v33 + v34[6]);
  *v35 = v29;
  v35[1] = v30;
  v36 = (v33 + v34[5]);
  *v36 = 0x686372616553;
  v36[1] = 0xE600000000000000;
  swift_unknownObjectRetain();
  sub_216F0D610(v31, v33);
  sub_216C1EA44(v31, type metadata accessor for MusicMetrics.PageFields);
  sub_216C1EA44(v11, type metadata accessor for MusicMetrics.PageFields);
  *(v33 + v34[7]) = v67;
  (*(v57 + 32))(v32, v21, v59);
  v37 = v65;
  sub_216C1E9E8(v2, v65, type metadata accessor for SearchPageContentView);
  v38 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v39 = swift_allocObject();
  sub_216C1E98C(v37, v39 + v38, type metadata accessor for SearchPageContentView);
  v40 = v62;
  sub_2167C5834(v32, v62, &qword_27CAC6170);
  v41 = (v40 + *(v58 + 36));
  *v41 = sub_216C1EC2C;
  v41[1] = v39;
  v41[2] = 0;
  v41[3] = 0;

  v42 = sub_21700B3B4();
  v44 = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6160);
  v46 = v66;
  v47 = v66 + *(v45 + 36);
  sub_216C1AC9C(v2, v47);

  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6198) + 36));
  *v48 = v42;
  v48[1] = v44;
  return sub_2167C5834(v40, v46, &qword_27CAC6168);
}

uint64_t sub_216C1A45C()
{
  type metadata accessor for SearchPageContentView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC43A8);
  sub_217007F84();
  sub_217007F84();
}

void sub_216C1A51C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicMetrics.ClickFields(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_21700D574();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != 1)
  {
    if (!*a2)
    {
      return;
    }

    goto LABEL_13;
  }

  if (*a2)
  {
LABEL_13:

    sub_21700D584();
    return;
  }

  type metadata accessor for MusicPageMetricsProvider();
  sub_21700D4B4();
  v16 = v35;
  if (!v35)
  {
LABEL_7:
    if (qword_27CAB5FB0 != -1)
    {
      swift_once();
    }

    v19 = sub_217007CA4();
    __swift_project_value_buffer(v19, qword_27CAC5F18);
    v20 = sub_217007C84();
    v21 = sub_21700ED84();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_216679000, v20, v21, "Click event was not reported because no page fields were provided", v22, 2u);
      MEMORY[0x21CEA1440](v22, -1, -1);
    }

    return;
  }

  v17 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  swift_beginAccess();
  v18 = sub_21700D194();
  if (__swift_getEnumTagSinglePayload(v16 + v17, 1, v18))
  {
    swift_endAccess();
LABEL_6:

    goto LABEL_7;
  }

  v23 = sub_21700D0F4();
  swift_endAccess();
  if (!v23)
  {
    goto LABEL_6;
  }

  v34 = v23;
  sub_21700D4B4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {

    sub_216699778(v11, &unk_27CABFB50);
    if (qword_27CAB5FB0 != -1)
    {
      swift_once();
    }

    v24 = sub_217007CA4();
    __swift_project_value_buffer(v24, qword_27CAC5F18);
    v25 = sub_217007C84();
    v26 = sub_21700ED84();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_216679000, v25, v26, "Click event was not reported because no metrics pipeline was provided", v27, 2u);
      MEMORY[0x21CEA1440](v27, -1, -1);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v28 = v6[9];
    v29 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(&v8[v28], 1, 1, v29);
    *v8 = 0x75516C65636E6163;
    *(v8 + 1) = 0xEB00000000797265;
    *(v8 + 8) = 1026;
    *(v8 + 24) = xmmword_217029BA0;
    *(v8 + 5) = 0;
    v8[v6[11]] = 8;
    *&v8[v6[10]] = 0;
    v30 = *(a3 + 8);
    if (v30)
    {
      v31 = (v30 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
      v32 = *v31;
      v33 = v31[1];
      swift_unknownObjectRetain();
      sub_216C949EC(v8, v34, v15, v32, v33, 0x686372616553, 0xE600000000000000);

      swift_unknownObjectRelease();

      sub_216C1EA44(v8, type metadata accessor for MusicMetrics.ClickFields);
      (*(v13 + 8))(v15, v12);
    }

    else
    {
      type metadata accessor for SearchPagePresenter();
      sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
      sub_217008CD4();
      __break(1u);
    }
  }
}

uint64_t sub_216C1AA98(uint64_t a1)
{
  v2 = type metadata accessor for MusicMetrics.PageFields(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicPageMetricsProvider();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  if (*(a1 + 40))
  {

    v5 = sub_217006994();

    v6 = *(v5 + 16);

    if (v6)
    {
      v7 = 0x746E65636572;
    }

    else
    {
      v7 = 0x72617453646C6F63;
    }

    if (v6)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE900000000000074;
    }

    v9 = v2[7];
    v10 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(&v4[v9], 1, 1, v10);
    *v4 = 16;
    *(v4 + 1) = v7;
    *(v4 + 2) = v8;
    v4[24] = 31;
    *&v4[v2[8]] = xmmword_217020730;
    *&v4[v2[9]] = xmmword_217053F70;
    *&v4[v2[10]] = 0;
    sub_216F0D464(v4);

    return sub_216C1EA44(v4, type metadata accessor for MusicMetrics.PageFields);
  }

  else
  {
    sub_217006A14();
    sub_2166B2EC4(&unk_280E4A430, MEMORY[0x277D2A6E8]);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C1AC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6248);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  if (*(a1 + 40))
  {

    v8 = sub_217006994();

    v9 = *(v8 + 16);

    if (v9)
    {

      return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA420);
      sub_21680DFBC(&qword_280E2A5E0, &qword_27CABA420);
      sub_2170097D4();
      (*(v5 + 32))(a2, v7, v4);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
    }
  }

  else
  {
    sub_217006A14();
    sub_2166B2EC4(&unk_280E4A430, MEMORY[0x277D2A6E8]);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C1AF24()
{
  sub_216983738(176);
  sub_2167B2E14();
  return sub_21700AE34();
}

uint64_t sub_216C1AF94@<X0>(uint64_t a1@<X8>)
{
  result = sub_216983738(175);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_216C1AFD0()
{
  type metadata accessor for MusicPageMetricsProvider();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v0 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  swift_beginAccess();
  v1 = sub_21700D194();
  if (!__swift_getEnumTagSinglePayload(v5[0] + v0, 1, v1))
  {
    v2 = sub_21700D0E4();
    if (*v3)
    {
      sub_2166EF928();
    }

    v2(v5, 0);
  }

  swift_endAccess();
}

uint64_t sub_216C1B0F8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + *(type metadata accessor for SearchPageContentView() + 44));

    v3 = sub_216E9C900(v2, v1);

    type metadata accessor for MenuBuilder();
    v4 = sub_216C65C14();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    type metadata accessor for AddToPlaylistMenuBuilder();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;

    sub_216C1B24C(v7, v5, v6);
  }

  else
  {
    type metadata accessor for MusicStackAuthority();
    sub_2166B2EC4(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C1B24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  if (v4)
  {

    sub_216C99A14();
    v22 = v9;
    v23 = v8;

    v10 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker;

    v21 = *(v4 + v10);
    swift_unknownObjectRetain();
    sub_216C99B1C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6208);
    sub_21680DFBC(&qword_280E4A448, &qword_27CAC6208);
    v11 = sub_217008684();
    v19 = v12;
    v20 = v11;
    type metadata accessor for FacetBarState(0);
    sub_2166B2EC4(qword_280E44190, type metadata accessor for FacetBarState);
    v18 = sub_217008104();
    v26 = v13 & 1;
    v25 = 0;
    type metadata accessor for MenuBuilder();
    sub_2166B2EC4(qword_280E45220, type metadata accessor for MenuBuilder);

    v17 = sub_217007D54();
    type metadata accessor for AddToPlaylistMenuBuilder();
    sub_2166B2EC4(qword_280E36F00, type metadata accessor for AddToPlaylistMenuBuilder);

    v14 = sub_217007D54();
    type metadata accessor for MusicEntityAnnotationWrapper();
    type metadata accessor for ObjectGraph();

    sub_21700E094();
    sub_2166B2EC4(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
    v15 = sub_217007D54();
    type metadata accessor for PlaybackPresenter();
    sub_21700E094();
    sub_2166B2EC4(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
    *__src = v23;
    *&__src[8] = v22;
    *&__src[16] = a1;
    __src[24] = 0;
    *&__src[32] = v21;
    *&__src[48] = v20;
    *&__src[56] = v19;
    *&__src[64] = v18;
    __src[72] = v26;
    *&__src[80] = sub_216878678;
    *&__src[88] = 0;
    __src[96] = 0;
    *&__src[104] = v17;
    *&__src[112] = a2;
    *&__src[120] = v14;
    *&__src[128] = a3;
    *&__src[136] = v15;
    *&__src[144] = __dst[0];
    *&__src[152] = sub_217007D54();
    *&__src[160] = __dst[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60B8);
    sub_216C1D670();
    sub_21700A1E4();
    memcpy(__dst, __src, 0xA8uLL);
    return sub_216699778(__dst, &qword_27CAC60B8);
  }

  else
  {
    type metadata accessor for SearchPagePresenter();
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

void sub_216C1B67C(void *a1, uint64_t a2, char a3)
{
  if (sub_21700B304())
  {
    v5 = [objc_opt_self() currentTraitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1)
    {
      [a1 setLargeTitleDisplayMode_];
    }
  }

  if (a3)
  {

    [a1 setPinnedTrailingGroup_];
  }

  else
  {
    sub_216685F4C(0, &qword_27CAC6250);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_21701D820;
    *(v7 + 32) = sub_216C1B7EC();
    v8 = sub_21700EFD4();

    [a1 setPinnedTrailingGroup_];
  }
}

id sub_216C1B7EC()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    sub_216C1B848(v0);
    v3 = *(v0 + 32);
    *(v0 + 32) = v4;
    v2 = v4;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_216C1B848(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  sub_217009454();
  (*(a1 + 16))();
  v2 = sub_217009434();
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];

    v6 = [v2 view];
    if (v6)
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];

      [v7 _setPrefersNoPlatter_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_216C1B9D4()
{

  return v0;
}

uint64_t sub_216C1B9FC()
{
  v0 = sub_216C1B9D4();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t type metadata accessor for SearchPageContentView()
{
  result = qword_280E39DC0;
  if (!qword_280E39DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216C1BAB8()
{
  type metadata accessor for ObjectGraph();
  if (v0 <= 0x3F)
  {
    sub_2169D4144();
    if (v1 <= 0x3F)
    {
      sub_2166B49AC();
      if (v2 <= 0x3F)
      {
        sub_216BE4DEC();
        if (v3 <= 0x3F)
        {
          sub_216C1BD40(319, &qword_280E2B438, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_216C1BE18(319, &qword_280E2B4B8, type metadata accessor for FacetBarState, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_216C1BE7C(319, &qword_280E2A4B8, &qword_27CAC54D0, &unk_217051210, MEMORY[0x277CE1438]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for AppDestinationPageProviderBox();
                if (v7 <= 0x3F)
                {
                  sub_216C1BD40(319, &qword_280E43838, &type metadata for BootstrapState.State, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_216C1BDB8(319, &qword_280E2B4F0, MEMORY[0x277CDD698]);
                    if (v9 <= 0x3F)
                    {
                      sub_216C1BD40(319, &qword_280E2A008, &type metadata for SearchScope, MEMORY[0x277D83940]);
                      if (v10 <= 0x3F)
                      {
                        sub_216C1BD40(319, &qword_280E2A590, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
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

void sub_216C1BD40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_216C1BDB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0], MEMORY[0x277D839C0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216C1BE18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216C1BE7C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_216C1BF40()
{
  result = qword_280E2A000;
  if (!qword_280E2A000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F60);
    sub_216C1BFC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A000);
  }

  return result;
}

unint64_t sub_216C1BFC4()
{
  result = qword_280E44FB8;
  if (!qword_280E44FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E44FB8);
  }

  return result;
}

unint64_t sub_216C1C018()
{
  result = qword_280E2AD80;
  if (!qword_280E2AD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F68);
    sub_216C1C0D0();
    sub_21680DFBC(&qword_280E2B380, &qword_27CABC210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AD80);
  }

  return result;
}

unint64_t sub_216C1C0D0()
{
  result = qword_280E2ADB8;
  if (!qword_280E2ADB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F70);
    sub_216C1C15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ADB8);
  }

  return result;
}

unint64_t sub_216C1C15C()
{
  result = qword_280E2AE20;
  if (!qword_280E2AE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F78);
    sub_216C1C1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE20);
  }

  return result;
}

unint64_t sub_216C1C1E8()
{
  result = qword_280E2AEC0;
  if (!qword_280E2AEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F80);
    sub_216C1C2A0();
    sub_21680DFBC(&qword_280E2ABE0, &unk_27CAC5FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AEC0);
  }

  return result;
}

unint64_t sub_216C1C2A0()
{
  result = qword_280E2AFA8;
  if (!qword_280E2AFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F88);
    sub_216C1C358();
    sub_21680DFBC(&qword_280E2AC40, &unk_27CAB7480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFA8);
  }

  return result;
}

unint64_t sub_216C1C358()
{
  result = qword_280E2B108;
  if (!qword_280E2B108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F90);
    sub_21680DFBC(&qword_280E2ABF8, &unk_27CAC5F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B108);
  }

  return result;
}

uint64_t sub_216C1C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  OUTLINED_FUNCTION_5_105();
  OUTLINED_FUNCTION_43_27();
  v11 = OUTLINED_FUNCTION_109();
  return sub_216C0F3E8(v11, v12, a3, a4, v13, v7, v8, v9, v14, v10);
}

uint64_t sub_216C1C52C()
{
  OUTLINED_FUNCTION_50_19();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_5_105();
  OUTLINED_FUNCTION_6_91();
  OUTLINED_FUNCTION_49_25();

  return sub_216C133A0(v0, v1, v2, v3, v4, v5, v6);
}

void sub_216C1C5A8()
{
  OUTLINED_FUNCTION_50_19();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_5_105();
  OUTLINED_FUNCTION_6_91();
  OUTLINED_FUNCTION_49_25();

  sub_216C134F8(v0, v1, v2, v3);
}

uint64_t sub_216C1C64C()
{
  OUTLINED_FUNCTION_50_19();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_5_105();
  OUTLINED_FUNCTION_6_91();
  OUTLINED_FUNCTION_49_25();

  return sub_216C15440(v0, v1);
}

uint64_t sub_216C1C6C8()
{
  OUTLINED_FUNCTION_50_19();
  OUTLINED_FUNCTION_5_105();
  OUTLINED_FUNCTION_43_27();
  OUTLINED_FUNCTION_49_25();

  return sub_216C15510();
}

unint64_t sub_216C1C7AC()
{
  result = qword_280E2B118;
  if (!qword_280E2B118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5FC8);
    sub_21680DFBC(&qword_280E2A8E8, &qword_27CAC3CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B118);
  }

  return result;
}

uint64_t sub_216C1C8B8()
{
  OUTLINED_FUNCTION_5_105();
  OUTLINED_FUNCTION_54_19();

  return sub_216C14FC4();
}

void objectdestroy_48Tm_0()
{
  OUTLINED_FUNCTION_50_19();
  OUTLINED_FUNCTION_42_29();
  OUTLINED_FUNCTION_117();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_65_12();
  OUTLINED_FUNCTION_71_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FB8);
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38);
  OUTLINED_FUNCTION_64_14();
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_48_21();
  OUTLINED_FUNCTION_3_132();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  if (OUTLINED_FUNCTION_81_9() == 1)
  {
    v2 = sub_2170098A4();
    if (!OUTLINED_FUNCTION_37_37(v2))
    {
      OUTLINED_FUNCTION_50();
      v3 = OUTLINED_FUNCTION_68_14();
      v4(v3);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_7();
  swift_deallocObject();
  OUTLINED_FUNCTION_49_25();
}

uint64_t sub_216C1CAB4()
{
  OUTLINED_FUNCTION_5_105();

  return sub_216C150CC();
}

unint64_t sub_216C1CB58()
{
  result = qword_280E2B2E8;
  if (!qword_280E2B2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6008);
    sub_2166B2EC4(qword_280E42C28, type metadata accessor for SearchScopeBar);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B2E8);
  }

  return result;
}

void *sub_216C1CC14@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  OUTLINED_FUNCTION_5_105();
  OUTLINED_FUNCTION_43_27();

  return sub_216C129F8(v3, v4, v5, v6, a1);
}

unint64_t sub_216C1CCB0()
{
  result = qword_280E2DB58;
  if (!qword_280E2DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2DB58);
  }

  return result;
}

uint64_t sub_216C1CD04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C1CD74()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = v4;
  v1[5] = v5;
  v6 = type metadata accessor for SearchPageView();
  OUTLINED_FUNCTION_2(v6);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v10 = v0[2];
  v11 = v0[3];
  v12 = *(v0 + ((*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  v1[6] = v13;
  *v13 = v1;
  v13[1] = sub_216C1CEB8;

  return sub_216C10C58(v10, v11, v0 + v8, v12, v3, v2, v4, v5);
}

uint64_t sub_216C1CEB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_216C1CFAC()
{
  v0 = type metadata accessor for SearchPageView();
  OUTLINED_FUNCTION_2(v0);
  OUTLINED_FUNCTION_54_19();

  return sub_216C10EB4(v1, v2);
}

void objectdestroy_74Tm_0()
{
  OUTLINED_FUNCTION_50_19();
  OUTLINED_FUNCTION_42_29();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_65_12();
  OUTLINED_FUNCTION_71_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FB8);
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38);
  OUTLINED_FUNCTION_64_14();
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_48_21();
  OUTLINED_FUNCTION_3_132();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  if (OUTLINED_FUNCTION_81_9() == 1)
  {
    v2 = sub_2170098A4();
    if (!OUTLINED_FUNCTION_37_37(v2))
    {
      OUTLINED_FUNCTION_50();
      v3 = OUTLINED_FUNCTION_68_14();
      v4(v3);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_78_14();
  swift_deallocObject();
  OUTLINED_FUNCTION_49_25();
}

uint64_t sub_216C1D1D0()
{
  v0 = type metadata accessor for SearchPageView();
  OUTLINED_FUNCTION_2(v0);
  OUTLINED_FUNCTION_54_19();

  return sub_216C1178C(v1, v2, v3);
}

uint64_t sub_216C1D2B0(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  OUTLINED_FUNCTION_5_105();
  OUTLINED_FUNCTION_43_27();

  return a1(&v1[v6], v2, v3, v4, v5);
}

unint64_t sub_216C1D350()
{
  result = qword_27CAC6070;
  if (!qword_27CAC6070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6050);
    sub_216C1D3D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6070);
  }

  return result;
}

unint64_t sub_216C1D3D4()
{
  result = qword_27CAC6078;
  if (!qword_27CAC6078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6080);
    sub_216C1D460();
    sub_216C1DE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6078);
  }

  return result;
}

unint64_t sub_216C1D460()
{
  result = qword_27CAC6088;
  if (!qword_27CAC6088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6090);
    sub_2166B2EC4(&qword_280E39E70, type metadata accessor for SearchLandingPageView);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6098);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60A0);
    sub_216C1DFF0(&qword_280E2AA88, &qword_27CAC6098, &unk_2170543B0, sub_216C1D5B8);
    sub_216C1D9A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6088);
  }

  return result;
}

unint64_t sub_216C1D5B8()
{
  result = qword_280E2B230;
  if (!qword_280E2B230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60A8);
    sub_21680DFBC(qword_280E2B940, &unk_27CAC60B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B230);
  }

  return result;
}

unint64_t sub_216C1D670()
{
  result = qword_280E2AE58;
  if (!qword_280E2AE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60B8);
    sub_216C1D728();
    sub_21680DFBC(&qword_280E2A7D8, &qword_27CABBA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE58);
  }

  return result;
}

unint64_t sub_216C1D728()
{
  result = qword_280E2AF20;
  if (!qword_280E2AF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60C0);
    sub_216C1D7E0();
    sub_21680DFBC(&qword_280E2A7F0, &qword_27CABB9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF20);
  }

  return result;
}

unint64_t sub_216C1D7E0()
{
  result = qword_280E2B040;
  if (!qword_280E2B040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60C8);
    sub_216C1D898();
    sub_21680DFBC(&qword_280E2A7A8, &qword_27CABBA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B040);
  }

  return result;
}

unint64_t sub_216C1D898()
{
  result = qword_280E2B270;
  if (!qword_280E2B270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60D0);
    sub_216C1D950();
    sub_21680DFBC(&qword_280E2A7E8, &qword_27CABBA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B270);
  }

  return result;
}

unint64_t sub_216C1D950()
{
  result = qword_280E366E0;
  if (!qword_280E366E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E366E0);
  }

  return result;
}

unint64_t sub_216C1D9A4()
{
  result = qword_27CAC60D8;
  if (!qword_27CAC60D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60A0);
    sub_216C1DA28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC60D8);
  }

  return result;
}

unint64_t sub_216C1DA28()
{
  result = qword_27CAC60E0;
  if (!qword_27CAC60E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60E8);
    sub_216C1DAB4();
    sub_216C1DD4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC60E0);
  }

  return result;
}

unint64_t sub_216C1DAB4()
{
  result = qword_27CAC60F0;
  if (!qword_27CAC60F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6100);
    sub_216C1DBA8();
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A8E0, &qword_27CABBA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC60F0);
  }

  return result;
}

unint64_t sub_216C1DBA8()
{
  result = qword_280E2AF48;
  if (!qword_280E2AF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6100);
    sub_216C1DC34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF48);
  }

  return result;
}

unint64_t sub_216C1DC34()
{
  result = qword_280E2B060;
  if (!qword_280E2B060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6108);
    sub_216C1DCC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B060);
  }

  return result;
}

unint64_t sub_216C1DCC0()
{
  result = qword_280E2B2F8;
  if (!qword_280E2B2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6110);
    sub_216C06678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B2F8);
  }

  return result;
}

unint64_t sub_216C1DD4C()
{
  result = qword_27CAC6118;
  if (!qword_27CAC6118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6120);
    sub_216C1DE04();
    sub_21680DFBC(&qword_280E2A8E0, &qword_27CABBA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6118);
  }

  return result;
}

unint64_t sub_216C1DE04()
{
  result = qword_280E2B2A8;
  if (!qword_280E2B2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6128);
    sub_21694ED24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B2A8);
  }

  return result;
}

unint64_t sub_216C1DE90()
{
  result = qword_27CAC6130;
  if (!qword_27CAC6130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6138);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60A0);
    sub_216C1DFF0(&qword_280E2A940, &qword_27CAC6140, &unk_217054458, sub_216C1E0C4);
    sub_216C1D9A4();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6160);
    sub_216C1E260();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6130);
  }

  return result;
}

uint64_t sub_216C1DFF0(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60B8);
    type metadata accessor for ObjectGraph();
    sub_216C1D670();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216C1E0C4()
{
  result = qword_280E2A9F0;
  if (!qword_280E2A9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6148);
    sub_216C1E17C();
    sub_21680DFBC(&qword_280E48630, &qword_27CAB9150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9F0);
  }

  return result;
}

unint64_t sub_216C1E17C()
{
  result = qword_280E2ABC8;
  if (!qword_280E2ABC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6150);
    sub_21680DFBC(qword_280E48638, &qword_27CAB9140);
    sub_21680DFBC(&qword_280E2A540, &unk_27CAC6158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ABC8);
  }

  return result;
}

unint64_t sub_216C1E260()
{
  result = qword_280E2AEE8;
  if (!qword_280E2AEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6160);
    sub_216C1E318();
    sub_21680DFBC(&qword_280E2ACE0, &unk_27CAC6198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AEE8);
  }

  return result;
}

unint64_t sub_216C1E318()
{
  result = qword_280E2AFF0;
  if (!qword_280E2AFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6168);
    sub_216C1E3A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFF0);
  }

  return result;
}

unint64_t sub_216C1E3A4()
{
  result = qword_280E2B1C0;
  if (!qword_280E2B1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6170);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6178);
    type metadata accessor for ObjectGraph();
    sub_216C1E4B4();
    swift_getOpaqueTypeConformance2();
    sub_2166B2EC4(&qword_280E460E0, _s19PageMetricsModifierVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1C0);
  }

  return result;
}

unint64_t sub_216C1E4B4()
{
  result = qword_280E2AE30;
  if (!qword_280E2AE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6178);
    sub_216C1E56C();
    sub_21680DFBC(&qword_280E2A7B8, &qword_27CAB92A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE30);
  }

  return result;
}

unint64_t sub_216C1E56C()
{
  result = qword_280E2AED8;
  if (!qword_280E2AED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6180);
    sub_216C1E624();
    sub_21680DFBC(&qword_280E2A778, &qword_27CAB9298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AED8);
  }

  return result;
}

unint64_t sub_216C1E624()
{
  result = qword_280E2AFC8;
  if (!qword_280E2AFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6188);
    sub_216C1E6DC();
    sub_21680DFBC(&qword_280E2A7A8, &qword_27CABBA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFC8);
  }

  return result;
}

unint64_t sub_216C1E6DC()
{
  result = qword_280E2B170;
  if (!qword_280E2B170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6190);
    type metadata accessor for UnifiedMessagesRequestState(255);
    sub_216C1E810();
    sub_2166B2EC4(&qword_280E32C90, type metadata accessor for UnifiedMessagesRequestState);
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A7E8, &qword_27CABBA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B170);
  }

  return result;
}

unint64_t sub_216C1E810()
{
  result = qword_280E3BAE8[0];
  if (!qword_280E3BAE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3BAE8);
  }

  return result;
}

uint64_t sub_216C1E864()
{
  v0 = type metadata accessor for SearchPageContentView();
  OUTLINED_FUNCTION_36(v0);

  return sub_216C1A45C();
}

void sub_216C1E8D0()
{
  OUTLINED_FUNCTION_76();
  v3 = type metadata accessor for SearchPageContentView();
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_216C1A51C(v2, v0, v5);
}

uint64_t sub_216C1E98C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216C1E9E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216C1EA44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_86Tm()
{
  v1 = type metadata accessor for SearchPageContentView();
  OUTLINED_FUNCTION_65_12();

  sub_216684F5C(*(v0 + 56), *(v0 + 64));

  v2 = v0 + *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61A0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F30);
  OUTLINED_FUNCTION_64_14();

  v4 = *(v0 + *(v1 + 48));
  if ((~v4 & 0xF000000000000007) != 0)
  {
    sub_2166DE7B8(v4);
  }

  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_216C1EC44(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for SearchPageContentView();
  OUTLINED_FUNCTION_36(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_216C1ECB4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_216C1ED08()
{
  result = qword_27CAC6278;
  if (!qword_27CAC6278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6258);
    sub_216C1EDC0();
    sub_21680DFBC(&qword_280E2A7B8, &qword_27CAB92A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6278);
  }

  return result;
}

unint64_t sub_216C1EDC0()
{
  result = qword_27CAC6280;
  if (!qword_27CAC6280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6270);
    sub_216C1EE78();
    sub_21680DFBC(&qword_280E2A778, &qword_27CAB9298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6280);
  }

  return result;
}

unint64_t sub_216C1EE78()
{
  result = qword_27CAC6288;
  if (!qword_27CAC6288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6268);
    sub_216C1EF30();
    sub_21680DFBC(&qword_280E2A7A8, &qword_27CABBA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6288);
  }

  return result;
}

unint64_t sub_216C1EF30()
{
  result = qword_27CAC6290;
  if (!qword_27CAC6290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6260);
    sub_216C1EFE8();
    sub_21680DFBC(&qword_280E2A7E8, &qword_27CABBA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6290);
  }

  return result;
}

unint64_t sub_216C1EFE8()
{
  result = qword_27CAC6298;
  if (!qword_27CAC6298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1610);
    sub_216C1F074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6298);
  }

  return result;
}

unint64_t sub_216C1F074()
{
  result = qword_27CAC62A0;
  if (!qword_27CAC62A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1608);
    sub_216C1F0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC62A0);
  }

  return result;
}

unint64_t sub_216C1F0F8()
{
  result = qword_27CAC62A8;
  if (!qword_27CAC62A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC62B0);
    sub_21680DFBC(&qword_27CAC62B8, &qword_27CAC1618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC62A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_79_17()
{

  return swift_getOpaqueTypeMetadata2();
}

_BYTE *storeEnumTagSinglePayload for VerticalVideoLockup.HeadlineTextStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VerticalVideoLockup.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_216C1F3B4()
{
  v0 = sub_21700F5E4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216C1F408(char a1)
{
  if (a1)
  {
    return 1684828002;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_216C1F438()
{
  v0 = sub_21700F5E4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_216C1F4A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C1F3B4();
  *a1 = result;
  return result;
}

uint64_t sub_216C1F4D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216C1F408(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216C1F504@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C1F438();
  *a1 = result;
  return result;
}

unint64_t sub_216C1F538()
{
  result = qword_27CAC62C0;
  if (!qword_27CAC62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC62C0);
  }

  return result;
}

unint64_t sub_216C1F590()
{
  result = qword_27CAC62C8;
  if (!qword_27CAC62C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC62C8);
  }

  return result;
}

uint64_t sub_216C1F5E4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a2;
  v110 = a3;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v103 = v5;
  v104 = v4;
  MEMORY[0x28223BE20](v4);
  v102 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v105 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v100 = &v99 - v18;
  MEMORY[0x28223BE20](v19);
  v101 = &v99 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v99 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v99 - v25;
  sub_21700D7A4();
  OUTLINED_FUNCTION_1_84();
  sub_21700CE04();
  v107 = v9;
  v28 = *(v9 + 16);
  v27 = (v9 + 16);
  v112 = v7;
  v29 = v7;
  v30 = v110;
  v108 = v28;
  (v28)(v12, v118, v29);
  v109 = v12;
  sub_21700D734();
  v114 = a1;
  v31 = v111;
  sub_21700CE04();
  v32 = sub_21700CDB4();
  v34 = v33;
  v35 = *(v14 + 8);
  v115 = v14 + 8;
  v113 = v35;
  v35(v23, v31);
  if (v34)
  {
    v36 = type metadata accessor for VerticalVideoLockup();
    v116 = v32;
    v117 = v34;
    sub_21700F364();
    sub_21700CE04();
    sub_21700D2E4();
    v113(v26, v31);
    type metadata accessor for Artwork();
    sub_21700CE04();
    v37 = v108;
    v38 = v112;
    v39 = v109;
    v108();
    v106 = v36;
    sub_2166D8934(&qword_280E2BF60, type metadata accessor for Artwork);
    OUTLINED_FUNCTION_3_6();
    sub_21700D734();
    sub_21700CE04();
    v40 = v118;
    (v37)(v39, v118, v38);
    OUTLINED_FUNCTION_3_6();
    sub_216AC6598();
    v42 = v41;
    OUTLINED_FUNCTION_56_3();
    sub_21700CE04();
    (v37)(v39, v40, v38);
    OUTLINED_FUNCTION_3_6();
    sub_216AC6598();
    v44 = v43;
    if (!v42)
    {
      v45 = v101;
      sub_21700CE04();
      v46 = sub_21700CDB4();
      v47 = v45;
      v49 = v48;
      v113(v47, v111);
      if (v49)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8978);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_217013DA0;
        v50 = v102;
        sub_217006214();
        v51 = sub_2170061F4();
        v101 = v52;
        (*(v103 + 8))(v50, v104);
        v53 = v101;
        *(v42 + 32) = v51;
        *(v42 + 40) = v53;
        *(v42 + 48) = v46;
        *(v42 + 56) = v49;
        *(v42 + 64) = 0u;
        *(v42 + 80) = 0u;
        *(v42 + 96) = 0;
      }

      else
      {
        v42 = 0;
      }
    }

    v101 = v27;
    if (!v44)
    {
      v61 = v100;
      OUTLINED_FUNCTION_56_3();
      sub_21700CE04();
      v62 = sub_21700CDB4();
      v64 = v63;
      v113(v61, v111);
      if (v64)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8978);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_217013DA0;
        v65 = v102;
        sub_217006214();
        v66 = sub_2170061F4();
        v68 = v67;
        (*(v103 + 8))(v65, v104);
        *(v44 + 32) = v66;
        *(v44 + 40) = v68;
        *(v44 + 48) = v62;
        *(v44 + 56) = v64;
        *(v44 + 64) = 0u;
        *(v44 + 80) = 0u;
        *(v44 + 96) = 0;
      }

      else
      {
        v44 = 0;
      }
    }

    v69 = v106;
    v70 = v110;
    *(v110 + *(v106 + 28)) = v42;
    *(v70 + *(v69 + 32)) = v44;
    OUTLINED_FUNCTION_18_0();
    v72 = v71;
    v73 = v114;
    sub_21700CE04();
    v74 = sub_21700CDB4();
    v76 = v75;
    v77 = v113;
    v78 = v111;
    v113(v26, v111);
    v79 = (v70 + v72[9]);
    *v79 = v74;
    v79[1] = v76;
    v80 = v105;
    sub_21700CE04();
    LOBYTE(v74) = sub_21700CD44();
    v77(v80, v78);
    *(v70 + v72[10]) = v74 & 1;
    sub_21700CE04();
    sub_216C200C0();
    OUTLINED_FUNCTION_8_88();
    v81 = OUTLINED_FUNCTION_3_6();
    (v77)(v81);
    *(v70 + v72[11]) = v116;
    OUTLINED_FUNCTION_18_0();
    sub_21700CE04();
    sub_216C20114();
    OUTLINED_FUNCTION_8_88();
    v82 = OUTLINED_FUNCTION_3_6();
    (v77)(v82);
    *(v70 + v72[12]) = v116;
    sub_21700CE04();
    v83 = v118;
    sub_21700D2E4();
    v84 = OUTLINED_FUNCTION_3_6();
    (v77)(v84);
    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_1_84();
    sub_21700CE04();
    (v108)(v109, v83, v112);
    sub_2166D8934(qword_280E40390, type metadata accessor for ContentDescriptor);
    sub_21700D734();
    sub_21700CE04();
    v85 = sub_21700CDB4();
    v87 = v86;
    v88 = OUTLINED_FUNCTION_3_6();
    v89 = v113;
    (v113)(v88);
    v90 = v106;
    v91 = (v70 + *(v106 + 52));
    *v91 = v85;
    v91[1] = v87;
    sub_21700CE04();
    v92 = sub_21700CDB4();
    v94 = v93;
    v95 = OUTLINED_FUNCTION_5_106();
    v96(v95);
    v89(v73, v78);
    v97 = OUTLINED_FUNCTION_3_6();
    result = (v89)(v97);
    v98 = (v70 + *(v90 + 64));
    *v98 = v92;
    v98[1] = v94;
  }

  else
  {
    v54 = sub_21700E2E4();
    sub_2166D8934(&qword_280E2A0F8, MEMORY[0x277D22548]);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    v56 = v55;
    v57 = type metadata accessor for VerticalVideoLockup();
    *v56 = 25705;
    v56[1] = 0xE200000000000000;
    v56[2] = v57;
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D22530], v54);
    swift_willThrow();
    v58 = OUTLINED_FUNCTION_5_106();
    v59(v58);
    v113(v114, v31);
    return sub_2167B0250(v30);
  }

  return result;
}

unint64_t sub_216C200C0()
{
  result = qword_27CAC62D0;
  if (!qword_27CAC62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC62D0);
  }

  return result;
}

unint64_t sub_216C20114()
{
  result = qword_27CAC62D8;
  if (!qword_27CAC62D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC62D8);
  }

  return result;
}

uint64_t sub_216C20188@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35[-v5];
  v7 = type metadata accessor for SocialCardLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = _s7MusicUI7ContentVMa_0(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OUTLINED_FUNCTION_1_172();
  sub_216C23428(v2, v10, v15);
  v16 = type metadata accessor for SocialCardLockupView(0);
  v17 = *(v2 + *(v16 + 20));
  if (v17)
  {
    v18 = *(v2 + *(v16 + 24));
    if (v18)
    {
      v19 = &v14[v11[7]];
      *v19 = swift_getKeyPath();
      v19[8] = 0;
      v20 = &v14[v11[8]];
      v35[15] = 6;
      v21 = v17;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B30);
      sub_21700AEA4();
      v22 = v36;
      *v20 = v35[16];
      *(v20 + 1) = v22;
      OUTLINED_FUNCTION_1_172();
      sub_216C23428(v10, v14, v23);
      *&v14[v11[5]] = v21;
      *&v14[v11[6]] = v18;
      sub_216683A80(&v14[*(v7 + 56)], v6, &qword_27CAB6A00);
      v24 = type metadata accessor for ContentDescriptor();
      if (__swift_getEnumTagSinglePayload(v6, 1, v24) == 1)
      {
        sub_216697664(v6, &qword_27CAB6A00);
      }

      else
      {
        v25 = *(v6 + 4);
        sub_21700DF14();
        sub_216C23484(v6, type metadata accessor for ContentDescriptor);
        if (v25)
        {
          v26 = sub_216F0706C();

LABEL_8:
          sub_216C23484(v10, type metadata accessor for SocialCardLockup);

          *v20 = v26;
          *(v20 + 1) = 0;
          KeyPath = swift_getKeyPath();
          sub_216C23428(v14, a1, _s7MusicUI7ContentVMa_0);
          v28 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC62E8) + 36);
          *v28 = KeyPath;
          *(v28 + 8) = 0;
          return sub_216C23484(v14, _s7MusicUI7ContentVMa_0);
        }
      }

      v26 = 6;
      goto LABEL_8;
    }

    type metadata accessor for SocialGraphController();
    OUTLINED_FUNCTION_2_138();
    sub_216C206DC(v32, v33);
    v34 = v17;
  }

  else
  {
    type metadata accessor for UserSocialProfileCoordinator();
    OUTLINED_FUNCTION_3_133();
    sub_216C206DC(v30, v31);
  }

  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216C20554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216C24B44(a1, a2, type metadata accessor for SocialCardLockup);
  v3 = type metadata accessor for SocialCardLockupView(0);
  v4 = (a2 + *(v3 + 20));
  type metadata accessor for UserSocialProfileCoordinator();
  OUTLINED_FUNCTION_3_133();
  sub_216C206DC(v5, v6);
  *v4 = sub_217008CF4();
  v4[1] = v7;
  v8 = (a2 + *(v3 + 24));
  type metadata accessor for SocialGraphController();
  OUTLINED_FUNCTION_2_138();
  sub_216C206DC(v9, v10);
  result = sub_217008CF4();
  *v8 = result;
  v8[1] = v12;
  return result;
}

uint64_t sub_216C20684(uint64_t a1)
{
  result = sub_216C206DC(qword_280E3B858, type metadata accessor for SocialCardLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C206DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216C20744()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for SocialCardLockup();
  sub_216683A80(v0 + *(v4 + 56), v3, &qword_27CAB6A00);
  v5 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    sub_216697664(v3, &qword_27CAB6A00);
    return 6;
  }

  v6 = *(v3 + 4);
  sub_21700DF14();
  sub_216C23484(v3, type metadata accessor for ContentDescriptor);
  if (!v6)
  {
    return 6;
  }

  _s7MusicUI7ContentVMa_0(0);
  v7 = sub_216F0706C();

  return v7;
}

uint64_t sub_216C2087C@<X0>(uint64_t a1@<X8>)
{
  v3 = _s7MusicUI7ContentVMa_0(0);
  v43 = *(v3 - 8);
  v42[1] = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v42[0] = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_2170093B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6310);
  sub_216C20C28(v1, a1 + *(v5 + 44));
  v6 = sub_21700B354();
  v8 = v7;
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6318) + 36);
  sub_216C24058(v1, v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6320) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = sub_21700B3B4();
  v13 = v12;
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6328) + 36);
  v15 = [objc_opt_self() quaternarySystemFillColor];
  v16 = sub_21700AC44();
  v17 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8798) + 36));
  v18 = *(sub_217008B44() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_217009294();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #10.0 }

  *v17 = _Q0;
  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)] = 256;
  *v14 = v16;
  *(v14 + 8) = 256;
  v26 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3200) + 36));
  *v26 = v11;
  v26[1] = v13;
  LOBYTE(v11) = sub_217009C94();
  sub_217007F24();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6330) + 36);
  *v35 = v11;
  *(v35 + 8) = v28;
  *(v35 + 16) = v30;
  *(v35 + 24) = v32;
  *(v35 + 32) = v34;
  *(v35 + 40) = 0;
  swift_beginAccess();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6340);
  sub_217007DB4();
  swift_endAccess();
  v37 = v42[0];
  sub_216C23428(v1, v42[0], _s7MusicUI7ContentVMa_0);
  v38 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v39 = swift_allocObject();
  result = sub_216C24B44(v37, v39 + v38, _s7MusicUI7ContentVMa_0);
  v41 = (a1 + *(v36 + 56));
  *v41 = sub_216C24BA0;
  v41[1] = v39;
  return result;
}

uint64_t sub_216C20C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6360);
  MEMORY[0x28223BE20](v112);
  v4 = (&v101 - v3);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6368);
  MEMORY[0x28223BE20](v108);
  v110 = &v101 - v5;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6370);
  MEMORY[0x28223BE20](v109);
  v7 = &v101 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6378);
  MEMORY[0x28223BE20](v8 - 8);
  v113 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v101 - v11;
  v102 = _s7MusicUI7ContentVMa_0(0);
  v106 = *(v102 - 8);
  v13 = *(v106 + 64);
  MEMORY[0x28223BE20](v102);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6380);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v101 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6388);
  MEMORY[0x28223BE20](v18);
  v107 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v101 - v21;
  MEMORY[0x28223BE20](v23);
  v115 = &v101 - v24;
  v101 = type metadata accessor for SocialCardLockup();
  v105 = *(v101 + 32);
  sub_216683A80(a1 + v105, &v116, &qword_27CAB6DB0);
  v111 = v12;
  if (v117)
  {
    sub_2166A0F18(&v116, &v118);
  }

  else
  {
    sub_216C21978(v17);
    v25 = type metadata accessor for OpenSocialProfilePageAction();
    if (__swift_getEnumTagSinglePayload(v17, 1, v25) == 1)
    {
      sub_216697664(v17, &qword_27CAC6380);
      v118 = 0u;
      v119 = 0u;
      *&v120 = 0;
    }

    else
    {
      *(&v119 + 1) = v25;
      *&v120 = sub_216C206DC(&qword_27CABA688, type metadata accessor for OpenSocialProfilePageAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v118);
      sub_216C24B44(v17, boxed_opaque_existential_1, type metadata accessor for OpenSocialProfilePageAction);
    }

    if (v117)
    {
      sub_216697664(&v116, &qword_27CAB6DB0);
    }
  }

  v27 = v18[11];
  v28 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(&v22[v27], 1, 1, v28);
  sub_216C23428(a1, &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), _s7MusicUI7ContentVMa_0);
  v29 = (*(v106 + 80) + 16) & ~*(v106 + 80);
  v30 = swift_allocObject();
  v103 = v13;
  v31 = v30;
  sub_216C24B44(v14, v30 + v29, _s7MusicUI7ContentVMa_0);
  v104 = v14;
  v32 = a1;
  v33 = v18[12];
  *&v22[v33] = swift_getKeyPath();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v34 = &v22[v18[13]];
  *v34 = swift_getKeyPath();
  v34[40] = 0;
  v35 = v120;
  v36 = v119;
  *v22 = v118;
  *(v22 + 1) = v36;
  *(v22 + 4) = v35;
  *(v22 + 5) = sub_216C24C50;
  *(v22 + 6) = v31;
  *(v22 + 7) = 0;
  *(v22 + 8) = 0;
  v37 = v22;
  v38 = v115;
  sub_2167C5834(v37, v115, &qword_27CAC6388);
  sub_216683A80(v32 + v105, &v118, &qword_27CAB6DB0);
  if (*(&v119 + 1))
  {
    sub_2166A0F18(&v118, &v116);
    sub_2167B7D58(&v116, v4);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC63D8);
    __swift_storeEnumTagSinglePayload(v4 + v39[11], 1, 1, v28);
    v40 = v32;
    v41 = v104;
    sub_216C23428(v40, v104, _s7MusicUI7ContentVMa_0);
    v42 = swift_allocObject();
    sub_216C24B44(v41, v42 + v29, _s7MusicUI7ContentVMa_0);
    v43 = v39[12];
    *(v4 + v43) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v44 = v4 + v39[13];
    *v44 = swift_getKeyPath();
    v44[40] = 0;
    v4[5] = sub_216C25080;
    v4[6] = v42;
    v4[7] = 0;
    v4[8] = 0;
    if (qword_27CAB5FB8 != -1)
    {
      swift_once();
    }

    sub_21700B3B4();
    sub_2170083C4();
    v45 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC63C8) + 36));
    v46 = v119;
    *v45 = v118;
    v45[1] = v46;
    v45[2] = v120;
    v47 = sub_217009C74();
    sub_217007F24();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC63B8) + 36);
    *v56 = v47;
    *(v56 + 1) = v49;
    *(v56 + 2) = v51;
    *(v56 + 3) = v53;
    *(v56 + 4) = v55;
    v56[40] = 0;
    v57 = sub_217009CA4();
    sub_217007F24();
    v58 = v4 + *(v112 + 36);
    *v58 = v57;
    *(v58 + 1) = v59;
    *(v58 + 2) = v60;
    *(v58 + 3) = v61;
    *(v58 + 4) = v62;
    v58[40] = 0;
    sub_216683A80(v4, v110, &qword_27CAC6360);
    swift_storeEnumTagMultiPayload();
    sub_216C24CE0();
    sub_216C24EB0();
    v63 = v111;
    sub_217009554();
    sub_216697664(v4, &qword_27CAC6360);
    __swift_destroy_boxed_opaque_existential_1Tm(&v116);
  }

  else
  {
    sub_216697664(&v118, &qword_27CAB6DB0);
    v105 = sub_216C232F8();
    v65 = v64;
    LODWORD(v101) = *(v32 + *(v101 + 48));
    v66 = v32 + *(v102 + 32);
    v67 = *v66;
    v68 = *(v66 + 8);
    LOBYTE(v116) = v67;
    *(&v116 + 1) = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
    sub_21700AED4();
    v69 = v118;
    v70 = v119;
    v71 = v32;
    v72 = v104;
    sub_216C23428(v71, v104, _s7MusicUI7ContentVMa_0);
    v73 = swift_allocObject();
    sub_216C24B44(v72, v73 + v29, _s7MusicUI7ContentVMa_0);
    type metadata accessor for UserSocialProfileCoordinator();
    sub_216C206DC(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
    *(v7 + 8) = sub_217008CF4();
    *(v7 + 9) = v74;
    type metadata accessor for SocialGraphController();
    sub_216C206DC(&qword_280E39AC8, type metadata accessor for SocialGraphController);
    *(v7 + 10) = sub_217008CF4();
    *(v7 + 11) = v75;
    *(v7 + 12) = swift_getKeyPath();
    v7[136] = 0;
    v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6390) + 60);
    *&v7[v76] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    sub_217007C94();
    *v7 = v105;
    *(v7 + 1) = v65;
    v7[16] = v101;
    *(v7 + 3) = sub_216C24C68;
    *(v7 + 4) = v73;
    *(v7 + 40) = v69;
    v7[56] = v70;
    if (qword_27CAB5FB8 != -1)
    {
      swift_once();
    }

    sub_21700B3B4();
    sub_2170083C4();
    v77 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6398) + 36)];
    v78 = v119;
    *v77 = v118;
    *(v77 + 1) = v78;
    *(v77 + 2) = v120;
    v79 = sub_217009C74();
    sub_217007F24();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC63A0) + 36)];
    *v88 = v79;
    *(v88 + 1) = v81;
    *(v88 + 2) = v83;
    *(v88 + 3) = v85;
    *(v88 + 4) = v87;
    v88[40] = 0;
    v89 = sub_217009CA4();
    sub_217007F24();
    v90 = &v7[*(v109 + 36)];
    *v90 = v89;
    *(v90 + 1) = v91;
    *(v90 + 2) = v92;
    *(v90 + 3) = v93;
    *(v90 + 4) = v94;
    v90[40] = 0;
    sub_216683A80(v7, v110, &qword_27CAC6370);
    swift_storeEnumTagMultiPayload();
    sub_216C24CE0();
    sub_216C24EB0();
    v63 = v111;
    sub_217009554();
    sub_216697664(v7, &qword_27CAC6370);
    v38 = v115;
  }

  v95 = v107;
  sub_216683A80(v38, v107, &qword_27CAC6388);
  v96 = v113;
  sub_216683A80(v63, v113, &qword_27CAC6378);
  v97 = v114;
  sub_216683A80(v95, v114, &qword_27CAC6388);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6400);
  v99 = v97 + *(v98 + 48);
  *v99 = 0x4026000000000000;
  *(v99 + 8) = 0;
  sub_216683A80(v96, v97 + *(v98 + 64), &qword_27CAC6378);
  sub_216697664(v63, &qword_27CAC6378);
  sub_216697664(v38, &qword_27CAC6388);
  sub_216697664(v96, &qword_27CAC6378);
  return sub_216697664(v95, &qword_27CAC6388);
}

uint64_t sub_216C21978@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for SocialCardLockup();
  sub_216683A80(v1 + *(v6 + 56), v5, &qword_27CAB6A00);
  v7 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    sub_216697664(v5, &qword_27CAB6A00);
LABEL_5:
    v13 = type metadata accessor for OpenSocialProfilePageAction();
    v11 = a1;
    v12 = 1;
    return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
  }

  v9 = *(v5 + 3);
  v8 = *(v5 + 4);
  sub_21700DF14();
  sub_216C23484(v5, type metadata accessor for ContentDescriptor);
  if (!v8)
  {
    goto LABEL_5;
  }

  v10 = type metadata accessor for OpenSocialProfilePageAction();
  sub_21700D234();
  *a1 = v9;
  a1[1] = v8;
  v11 = a1;
  v12 = 0;
  v13 = v10;
  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

double sub_216C21AD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_2170093B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6418);
  sub_216C21CB4(a1, a2 + *(v8 + 44));
  v9 = a1 + *(_s7MusicUI7ContentVMa_0(0) + 28);
  v10 = *v9;
  if ((*(v9 + 8) & 1) == 0)
  {

    sub_21700ED94();
    v11 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v10, 0);
    (*(v5 + 8))(v7, v4);
  }

  sub_21700B3B4();
  sub_2170083C4();
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6420) + 36));
  v13 = v15[1];
  *v12 = v15[0];
  v12[1] = v13;
  result = *&v16;
  v12[2] = v16;
  return result;
}

uint64_t sub_216C21CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  KeyPath = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6428);
  MEMORY[0x28223BE20](KeyPath);
  v4 = &v65 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6430);
  MEMORY[0x28223BE20](v5);
  v7 = &v65 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6438);
  MEMORY[0x28223BE20](v88);
  v9 = &v65 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6440);
  MEMORY[0x28223BE20](v10 - 8);
  v90 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v65 - v13;
  v79 = type metadata accessor for SocialCardLockup();
  v15 = a1;
  sub_216683A80(a1 + *(v79 + 32), v93, &qword_27CAB6DB0);
  v16 = v94;
  sub_216697664(v93, &qword_27CAB6DB0);
  if (v16)
  {
    v17 = v15;
    sub_216C2249C(v9);
    sub_216683A80(v9, v7, &qword_27CAC6438);
    swift_storeEnumTagMultiPayload();
    sub_216C2510C();
    sub_216C252EC();
    sub_217009554();
    v18 = v9;
    v19 = &qword_27CAC6438;
  }

  else
  {
    v17 = v15;
    sub_216C226DC(v4);
    sub_216683A80(v4, v7, &qword_27CAC6428);
    swift_storeEnumTagMultiPayload();
    sub_216C2510C();
    sub_216C252EC();
    sub_217009554();
    v18 = v4;
    v19 = &qword_27CAC6428;
  }

  sub_216697664(v18, v19);
  v20 = v14;
  v21 = v79;
  v22 = (v17 + *(v79 + 36));
  if (v22[1])
  {
    v23 = *v22;
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = v22[1];
  sub_21700DF14();
  v26 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  v88 = sub_217009D44();
  v87 = swift_getKeyPath();
  v86 = swift_getKeyPath();
  v130 = 0;
  v85 = sub_217009C74();
  sub_217007F24();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v131 = 0;
  v84 = sub_217009CA4();
  sub_217007F24();
  v82 = v36;
  v83 = v35;
  v80 = v38;
  v81 = v37;
  v132 = 0;
  v39 = (v17 + *(v21 + 40));
  v40 = v39[1];
  if (v40)
  {
    v75 = *v39;
    v76 = MEMORY[0x277D84F90];
  }

  else
  {
    v75 = 0;
    v76 = 0;
  }

  v79 = v40;
  sub_21700DF14();
  v73 = sub_21700AD34();
  v41 = swift_getKeyPath();
  v66 = v41;
  v72 = swift_getKeyPath();
  sub_21700B394();
  sub_2170083C4();
  *&v127[7] = v133;
  *&v127[23] = v134;
  *&v127[39] = v135;
  v78 = sub_217009E64();
  v42 = swift_getKeyPath();
  v65 = v42;
  v70 = swift_getKeyPath();
  v128 = 0;
  v69 = sub_217009C74();
  sub_217007F24();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v129 = 0;
  v51 = v20;
  v71 = v20;
  v52 = v90;
  sub_216683A80(v51, v90, &qword_27CAC6440);
  v53 = v52;
  v54 = v77;
  sub_216683A80(v53, v77, &qword_27CAC6440);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC64F8);
  v56 = *(v55 + 48);
  v91[0] = v23;
  v91[1] = v25;
  v74 = v25;
  v91[2] = 0;
  v91[3] = v24;
  v67 = v24;
  v68 = v26;
  v91[4] = KeyPath;
  v91[5] = v26;
  v91[6] = v87;
  v91[7] = v88;
  v91[8] = v86;
  v91[9] = 1;
  LOBYTE(v91[10]) = 0;
  LOBYTE(v91[11]) = v85;
  v91[12] = v28;
  v91[13] = v30;
  v91[14] = v32;
  v91[15] = v34;
  LOBYTE(v91[16]) = 0;
  LOBYTE(v91[17]) = v84;
  v91[18] = v83;
  v91[19] = v82;
  v91[20] = v81;
  v91[21] = v80;
  LOBYTE(v91[22]) = 0;
  memcpy((v54 + v56), v91, 0xB1uLL);
  v57 = *(v55 + 64);
  *(&v92[7] + 1) = *v127;
  v59 = v75;
  v58 = v76;
  v92[0] = v75;
  v92[1] = v79;
  v92[2] = 0;
  v92[3] = v76;
  v92[4] = v41;
  v60 = v72;
  v61 = v73;
  v92[5] = v73;
  v92[6] = v72;
  LOBYTE(v92[7]) = 1;
  *(&v92[9] + 1) = *&v127[16];
  *(&v92[11] + 1) = *&v127[32];
  v92[13] = *&v127[47];
  v92[14] = v42;
  v62 = v70;
  v92[15] = v78;
  v92[16] = v70;
  v92[17] = 2;
  LOBYTE(v92[18]) = 0;
  v63 = v69;
  LOBYTE(v92[19]) = v69;
  v92[20] = v44;
  v92[21] = v46;
  v92[22] = v48;
  v92[23] = v50;
  LOBYTE(v92[24]) = 0;
  memcpy((v54 + v57), v92, 0xC1uLL);
  sub_216683A80(v91, v93, &qword_27CAC6500);
  sub_216683A80(v92, v93, &qword_27CAC6508);
  sub_216697664(v71, &qword_27CAC6440);
  v99 = *v127;
  v93[0] = v59;
  v93[1] = v79;
  v93[2] = 0;
  v94 = v58;
  v95 = v66;
  v96 = v61;
  v97 = v60;
  v98 = 1;
  v100 = *&v127[16];
  *v101 = *&v127[32];
  *&v101[15] = *&v127[47];
  v102 = v65;
  v103 = v78;
  v104 = v62;
  v105 = 2;
  v106 = 0;
  v107 = v63;
  v108 = v44;
  v109 = v46;
  v110 = v48;
  v111 = v50;
  v112 = 0;
  sub_216697664(v93, &qword_27CAC6508);
  v113[0] = v23;
  v113[1] = v74;
  v113[2] = 0;
  v113[3] = v67;
  v113[4] = KeyPath;
  v113[5] = v68;
  v113[6] = v87;
  v113[7] = v88;
  v113[8] = v86;
  v113[9] = 1;
  v114 = 0;
  v115 = v85;
  v116 = v28;
  v117 = v30;
  v118 = v32;
  v119 = v34;
  v120 = 0;
  v121 = v84;
  v122 = v83;
  v123 = v82;
  v124 = v81;
  v125 = v80;
  v126 = 0;
  sub_216697664(v113, &qword_27CAC6500);
  return sub_216697664(v90, &qword_27CAC6440);
}

uint64_t sub_216C2249C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __src - v3;
  v5 = sub_21700ADB4();
  v6 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  v7 = sub_217009DF4();
  sub_216697664(v4, &qword_27CAB81D0);
  KeyPath = swift_getKeyPath();
  sub_21700B3B4();
  sub_2170083C4();
  __src[0] = v5;
  __src[1] = KeyPath;
  __src[2] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6460);
  sub_216C25260();
  sub_21700AB94();
  memcpy(__dst, __src, sizeof(__dst));
  sub_216697664(__dst, &qword_27CAC6460);
  LOBYTE(KeyPath) = sub_217009C94();
  sub_217007F24();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6458) + 36);
  *v17 = KeyPath;
  *(v17 + 8) = v10;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = v16;
  *(v17 + 40) = 0;
  LOBYTE(KeyPath) = sub_217009CA4();
  sub_217007F24();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6438);
  v27 = a1 + *(result + 36);
  *v27 = KeyPath;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_216C226DC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v71 - v4;
  v5 = sub_21700C444();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x28223BE20](v5);
  v85 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v71 - v14;
  v84 = sub_217007474();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v76 = &v71 - v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v74 = &v71 - v20;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC64D0);
  MEMORY[0x28223BE20](v73);
  v22 = &v71 - v21;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6510);
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v78 = &v71 - v23;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6480);
  MEMORY[0x28223BE20](v75);
  v80 = &v71 - v24;
  v72 = type metadata accessor for SocialCardLockup();
  v25 = *(v72 + 52);
  sub_216683A80(v1 + v25, v12, &qword_27CAB6D60);
  v26 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v12, 1, v26) == 1)
  {
    sub_216697664(v12, &qword_27CAB6D60);
    v27 = sub_21700C4B4();
    v28 = v15;
    v29 = 1;
  }

  else
  {
    v30 = a1;
    v31 = sub_21700C4B4();
    (*(*(v31 - 8) + 16))(v15, v12, v31);
    sub_216C23484(v12, type metadata accessor for Artwork);
    v28 = v15;
    v29 = 0;
    v27 = v31;
    a1 = v30;
  }

  __swift_storeEnumTagSinglePayload(v28, v29, 1, v27);
  sub_217007434();
  v32 = v1;
  sub_216683A80(v1 + v25, v9, &qword_27CAB6D60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v26);
  v35 = v87;
  v34 = v88;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v9, &qword_27CAB6D60);
    v36 = v86;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v34);
    v37 = v85;
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v36, 1, v34) != 1)
    {
      sub_216697664(v36, &qword_27CAB7530);
    }
  }

  else
  {
    v38 = v86;
    (*(v87 + 16))(v86, &v9[*(v26 + 20)], v88);
    sub_216C23484(v9, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v34);
    v37 = v85;
    (*(v35 + 32))(v85, v38, v34);
  }

  v39 = v76;
  sub_2170073E4();
  (*(v35 + 8))(v37, v34);
  v40 = *(v82 + 8);
  v41 = v84;
  v40(v17, v84);
  v42 = (v32 + *(v72 + 36));
  v44 = *v42;
  v43 = v42[1];
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v43;
  sub_2167C505C();
  sub_21700DF14();
  v46 = v74;
  sub_2170073F4();

  v40(v39, v41);
  LODWORD(v43) = sub_217009834();
  LOBYTE(v44) = sub_217009C84();
  (*(v77 + 32))(v22, v46, v79);
  v47 = &v22[*(v73 + 36)];
  *v47 = v43;
  v47[4] = v44;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v48 = v78;
  sub_216E30318();
  sub_216697664(v22, &qword_27CAC64D0);
  v49 = sub_217009C94();
  sub_217007F24();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v80;
  (*(v81 + 32))(v80, v48, v83);
  v59 = v58 + *(v75 + 36);
  *v59 = v49;
  *(v59 + 8) = v51;
  *(v59 + 16) = v53;
  *(v59 + 24) = v55;
  *(v59 + 32) = v57;
  *(v59 + 40) = 0;
  v60 = sub_217009CA4();
  sub_217007F24();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  sub_2167C5834(v58, a1, &qword_27CAC6480);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6428);
  v70 = a1 + *(result + 36);
  *v70 = v60;
  *(v70 + 8) = v62;
  *(v70 + 16) = v64;
  *(v70 + 24) = v66;
  *(v70 + 32) = v68;
  *(v70 + 40) = 0;
  return result;
}

uint64_t sub_216C22F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SocialCardLockup() + 44));
  v5 = *v3;
  v4 = v3[1];
  sub_21700DF14();
  v6 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v8 = sub_217009E94();
  v9 = swift_getKeyPath();
  *&v26 = v5;
  *(&v26 + 1) = v4;
  *&v27 = 0;
  *(&v27 + 1) = MEMORY[0x277D84F90];
  *&v28 = KeyPath;
  *(&v28 + 1) = v6;
  *&v29 = v9;
  *(&v29 + 1) = v8;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E88);
  sub_2167D95A8();
  sub_21700A304();
  v30[0] = v26;
  v30[1] = v27;
  v30[2] = v28;
  v30[3] = v29;
  sub_216697664(v30, &qword_27CAB7E88);
  LOBYTE(v4) = sub_217009C74();
  sub_217007F24();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C50) + 36);
  *v18 = v4;
  *(v18 + 8) = v11;
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  if (qword_27CAB5FB8 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C58) + 36));
  *v19 = v26;
  v19[1] = v27;
  v19[2] = v28;
  v20 = sub_21700B3B4();
  v22 = v21;
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6408) + 36);
  sub_216C231D0(v23);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5830);
  v25 = (v23 + *(result + 36));
  *v25 = v20;
  v25[1] = v22;
  return result;
}

double sub_216C231D0@<D0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CE0118];
  v3 = sub_217009294();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = sub_21700AC54();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780);
  *(a1 + *(v5 + 52)) = v4;
  *(a1 + *(v5 + 56)) = 256;
  if (qword_27CAB5FB8 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C98) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_216C232F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for SocialCardLockup();
  sub_216683A80(v0 + *(v4 + 56), v3, &qword_27CAB6A00);
  v5 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    sub_216697664(v3, &qword_27CAB6A00);
    return 0;
  }

  else
  {
    v6 = *(v3 + 3);
    sub_21700DF14();
    sub_216C23484(v3, type metadata accessor for ContentDescriptor);
  }

  return v6;
}

uint64_t sub_216C23428(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216C23484(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C234DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EA0);
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v9 = &v44 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C50);
  MEMORY[0x28223BE20](v45);
  v11 = &v44 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C58);
  MEMORY[0x28223BE20](v47);
  v13 = &v44 - v12;
  if (a2)
  {
    v14 = a1;
  }

  else
  {
    v14 = 0;
  }

  if (a2)
  {
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = 0;
  }

  v16 = *(_s7MusicUI7ContentVMa_0(0) + 32);
  v48 = a3;
  v17 = (a3 + v16);
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v54[0]) = v18;
  *(&v54[0] + 1) = v19;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
  sub_21700AEB4();
  if (v50 == 6)
  {
LABEL_11:
    v20 = sub_21700ACF4();
    goto LABEL_13;
  }

  if (v50 != 2)
  {
    if (!v50)
    {
      v20 = sub_21700AC54();
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v20 = sub_21700AD34();
LABEL_13:
  v21 = v20;
  KeyPath = swift_getKeyPath();
  v23 = sub_217009E94();
  v24 = swift_getKeyPath();
  *&v50 = v14;
  *(&v50 + 1) = a2;
  *&v51 = 0;
  *(&v51 + 1) = v15;
  *&v52 = KeyPath;
  *(&v52 + 1) = v21;
  *&v53 = v24;
  *(&v53 + 1) = v23;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E88);
  sub_2167D95A8();
  sub_21700A304();
  v54[0] = v50;
  v54[1] = v51;
  v54[2] = v52;
  v54[3] = v53;
  sub_216697664(v54, &qword_27CAB7E88);
  LOBYTE(KeyPath) = sub_217009C74();
  sub_217007F24();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  (*(v7 + 32))(v11, v9, v46);
  v33 = &v11[*(v45 + 36)];
  *v33 = KeyPath;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  if (qword_27CAB5FB8 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  sub_2167C5834(v11, v13, &qword_27CAC0C50);
  v34 = &v13[*(v47 + 36)];
  v35 = v51;
  *v34 = v50;
  *(v34 + 1) = v35;
  *(v34 + 2) = v52;
  v36 = sub_21700B3B4();
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6410);
  v40 = v49;
  v41 = v49 + *(v39 + 36);
  sub_216C2391C(v48, v41);
  v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C70) + 36));
  *v42 = v36;
  v42[1] = v38;
  return sub_2167C5834(v13, v40, &qword_27CAC0C58);
}

uint64_t sub_216C2391C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_217008B44();
  MEMORY[0x28223BE20](v3);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C78);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v61 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v61 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C88);
  MEMORY[0x28223BE20](v64);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C90);
  MEMORY[0x28223BE20](v62);
  v18 = &v61 - v17;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C98);
  MEMORY[0x28223BE20](v63);
  v20 = &v61 - v19;
  v21 = (a1 + *(_s7MusicUI7ContentVMa_0(0) + 32));
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v69) = v22;
  *(&v69 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
  sub_21700AEB4();
  v24 = v66;
  if (v66 == 6)
  {
    v25 = *MEMORY[0x277CE0118];
    v26 = sub_217009294();
    (*(*(v26 - 8) + 104))(v20, v25, v26);
    v27 = sub_21700AC54();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780);
    *&v20[*(v28 + 52)] = v27;
    *&v20[*(v28 + 56)] = 256;
    if (qword_27CAB5FB8 != -1)
    {
      swift_once();
    }

    sub_21700B3B4();
    sub_2170083C4();
    v29 = &v20[*(v63 + 36)];
    v30 = v70;
    *v29 = v69;
    *(v29 + 1) = v30;
    *(v29 + 2) = v71;
    v31 = &qword_27CAC0C98;
    sub_216683A80(v20, v18, &qword_27CAC0C98);
    swift_storeEnumTagMultiPayload();
    sub_216A65D88();
    sub_216A65E40();
    sub_217009554();
    v32 = v20;
  }

  else
  {
    v33 = *(v3 + 20);
    v34 = *MEMORY[0x277CE0128];
    v35 = sub_217009294();
    (*(*(v35 - 8) + 104))(&v5[v33], v34, v35);
    __asm { FMOV            V0.2D, #20.0 }

    *v5 = _Q0;
    if (v24 == 2)
    {
      v41 = sub_21700AD34();
    }

    else if (v24)
    {
      v41 = sub_21700ACD4();
    }

    else
    {
      v41 = sub_21700AC54();
    }

    v42 = v41;
    sub_2170081E4();
    sub_216C23428(v5, v8, MEMORY[0x277CDFC08]);
    v43 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CB8) + 36)];
    v44 = v67;
    *v43 = v66;
    *(v43 + 1) = v44;
    *(v43 + 4) = v68;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CC0);
    *&v8[*(v45 + 52)] = v42;
    *&v8[*(v45 + 56)] = 256;
    v46 = sub_21700B3B4();
    v48 = v47;
    sub_216C23484(v5, MEMORY[0x277CDFC08]);
    v49 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CC8) + 36)];
    *v49 = v46;
    v49[1] = v48;
    if ((v24 | 2) == 2)
    {
      v50 = sub_21700ACD4();
    }

    else
    {
      v50 = sub_21700AC54();
    }

    v51 = v50;
    sub_216C23428(v8, v11, MEMORY[0x277CDFC08]);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE98);
    *&v11[*(v52 + 52)] = v51;
    *&v11[*(v52 + 56)] = 256;
    v53 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CD0) + 36)];
    sub_216683A80(v8, v53, &qword_27CAC0C78);
    v54 = sub_21700B3B4();
    v56 = v55;
    sub_216697664(v8, &qword_27CAC0C78);
    v57 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CD8) + 36));
    *v57 = v54;
    v57[1] = v56;
    if (qword_27CAB5FB8 != -1)
    {
      swift_once();
    }

    sub_21700B3B4();
    sub_2170083C4();
    sub_2167C5834(v11, v13, &qword_27CAC0C80);
    v58 = &v13[*(v64 + 36)];
    v59 = v70;
    *v58 = v69;
    *(v58 + 1) = v59;
    *(v58 + 2) = v71;
    v31 = &qword_27CAC0C88;
    sub_2167C5834(v13, v16, &qword_27CAC0C88);
    sub_216683A80(v16, v18, &qword_27CAC0C88);
    swift_storeEnumTagMultiPayload();
    sub_216A65D88();
    sub_216A65E40();
    sub_217009554();
    v32 = v16;
  }

  return sub_216697664(v32, v31);
}

uint64_t sub_216C24058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6348);
  MEMORY[0x28223BE20](v4);
  v6 = (&v15 - v5);
  v7 = type metadata accessor for SocialCardLockup();
  sub_216683A80(a1 + *(v7 + 28), &v15, &qword_27CAB6DB0);
  if (v16)
  {
    sub_2166A0F18(&v15, v17);
    sub_2166A0F18(v17, v6);
    v8 = v4[11];
    v9 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v6 + v8, 1, 1, v9);
    v10 = v4[12];
    *(v6 + v10) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    swift_storeEnumTagMultiPayload();
    v11 = v6 + v4[13];
    *v11 = swift_getKeyPath();
    v11[40] = 0;
    v6[7] = 0;
    v6[8] = 0;
    v6[5] = sub_216C24208;
    v6[6] = 0;
    sub_2167C5834(v6, a2, &qword_27CAC6348);
    v12 = a2;
    v13 = 0;
  }

  else
  {
    sub_216697664(&v15, &qword_27CAB6DB0);
    v12 = a2;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v4);
}

uint64_t sub_216C24208@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21700ADB4();
  v3 = sub_217009E94();
  *&v27 = v2;
  *(&v27 + 1) = swift_getKeyPath();
  *&v28 = v3;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8250);
  sub_2167E947C();
  sub_21700A304();

  sub_21700AD34();
  v4 = sub_21700AD04();

  KeyPath = swift_getKeyPath();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8248) + 36));
  *v6 = KeyPath;
  v6[1] = v4;
  sub_21700B3B4();
  sub_2170083C4();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8230) + 36));
  *v7 = v27;
  v7[1] = v28;
  v7[2] = v29;
  LOBYTE(KeyPath) = sub_217009CB4();
  sub_217007F24();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6350) + 36);
  *v16 = KeyPath;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  LOBYTE(KeyPath) = sub_217009C94();
  sub_217007F24();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6358);
  v26 = a1 + *(result + 36);
  *v26 = KeyPath;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

uint64_t sub_216C2441C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21700B5A4();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21700B5E4();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s7MusicUI7ContentVMa_0(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2166AF2EC();
  v12 = sub_21700EE84();
  sub_216C23428(a2, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), _s7MusicUI7ContentVMa_0);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_216C24B44(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, _s7MusicUI7ContentVMa_0);
  aBlock[4] = sub_216C24C00;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2169F0990;
  aBlock[3] = &block_descriptor_32;
  v15 = _Block_copy(aBlock);

  sub_21700B5C4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_216C206DC(&qword_280E2A480, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
  sub_2166D9530(&qword_280E29E50, &unk_27CABC970);
  sub_21700F214();
  MEMORY[0x21CE9FCB0](0, v8, v5, v15);
  _Block_release(v15);

  (*(v18 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v17);
}

uint64_t sub_216C247B4()
{
  sub_216C20744();
  _s7MusicUI7ContentVMa_0(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
  return sub_21700AEC4();
}

uint64_t sub_216C24830()
{
  result = sub_21700B304();
  v1 = 32.0;
  if ((result & 1) == 0)
  {
    v1 = 24.0;
  }

  qword_27CAC62E0 = *&v1;
  return result;
}

void sub_216C248B0()
{
  type metadata accessor for SocialCardLockup();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UserSocialProfileCoordinator();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SocialGraphController();
      if (v2 <= 0x3F)
      {
        sub_2167B8000();
        if (v3 <= 0x3F)
        {
          sub_216BE96C8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216C249A4()
{
  type metadata accessor for SocialCardLockup();
  if (v0 <= 0x3F)
  {
    sub_216A949B4();
    if (v1 <= 0x3F)
    {
      sub_216AF7568();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_216C24A40()
{
  result = qword_27CAC6300;
  if (!qword_27CAC6300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC62E8);
    sub_216C206DC(&qword_27CAC6308, _s7MusicUI7ContentVMa_0);
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6300);
  }

  return result;
}

uint64_t sub_216C24B44(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216C24BA0(uint64_t a1)
{
  OUTLINED_FUNCTION_6_92();
  OUTLINED_FUNCTION_11_2();

  return sub_216C2441C(a1, v1 + v3);
}

uint64_t sub_216C24C00()
{
  OUTLINED_FUNCTION_6_92();
  OUTLINED_FUNCTION_11_2();

  return sub_216C247B4();
}

uint64_t sub_216C24C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_6_92();
  OUTLINED_FUNCTION_11_2();

  return sub_216C234DC(a1, a2, v3 + v7, a3);
}

unint64_t sub_216C24CE0()
{
  result = qword_27CAC63A8;
  if (!qword_27CAC63A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6360);
    sub_216C24D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC63A8);
  }

  return result;
}

unint64_t sub_216C24D6C()
{
  result = qword_27CAC63B0;
  if (!qword_27CAC63B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC63B8);
    sub_216C24DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC63B0);
  }

  return result;
}

unint64_t sub_216C24DF8()
{
  result = qword_27CAC63C0;
  if (!qword_27CAC63C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC63C8);
    sub_2166D9530(&qword_27CAC63D0, &qword_27CAC63D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC63C0);
  }

  return result;
}

unint64_t sub_216C24EB0()
{
  result = qword_27CAC63E0;
  if (!qword_27CAC63E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6370);
    sub_216C24F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC63E0);
  }

  return result;
}

unint64_t sub_216C24F3C()
{
  result = qword_27CAC63E8;
  if (!qword_27CAC63E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC63A0);
    sub_216C24FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC63E8);
  }

  return result;
}

unint64_t sub_216C24FC8()
{
  result = qword_27CAC63F0;
  if (!qword_27CAC63F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6398);
    sub_2166D9530(&qword_27CAC63F8, &qword_27CAC6390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC63F0);
  }

  return result;
}

uint64_t sub_216C25098(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_6_92();
  OUTLINED_FUNCTION_11_2();

  return a1(v1 + v2);
}

unint64_t sub_216C2510C()
{
  result = qword_27CAC6448;
  if (!qword_27CAC6448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6438);
    sub_216C25198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6448);
  }

  return result;
}

unint64_t sub_216C25198()
{
  result = qword_27CAC6450;
  if (!qword_27CAC6450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6458);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6460);
    sub_216C25260();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6450);
  }

  return result;
}

unint64_t sub_216C25260()
{
  result = qword_27CAC6468;
  if (!qword_27CAC6468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6460);
    sub_2167E947C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6468);
  }

  return result;
}

unint64_t sub_216C252EC()
{
  result = qword_27CAC6470;
  if (!qword_27CAC6470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6428);
    sub_216C25378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6470);
  }

  return result;
}

unint64_t sub_216C25378()
{
  result = qword_27CAC6478;
  if (!qword_27CAC6478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6480);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6488);
    sub_216C25440();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6478);
  }

  return result;
}

unint64_t sub_216C25440()
{
  result = qword_27CAC6490;
  if (!qword_27CAC6490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6488);
    sub_216C254F8();
    sub_2166D9530(&qword_27CAC64E8, &qword_27CAC64F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6490);
  }

  return result;
}

unint64_t sub_216C254F8()
{
  result = qword_27CAC6498;
  if (!qword_27CAC6498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC64A0);
    sub_216C255B0();
    sub_2166D9530(&qword_27CAB76C8, &qword_27CAB76D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6498);
  }

  return result;
}

unint64_t sub_216C255B0()
{
  result = qword_27CAC64A8;
  if (!qword_27CAC64A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC64B0);
    sub_216C2563C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC64A8);
  }

  return result;
}

unint64_t sub_216C2563C()
{
  result = qword_27CAC64B8;
  if (!qword_27CAC64B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC64C0);
    sub_216C256F4();
    sub_2166D9530(&qword_280E2B388, &qword_27CAB76C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC64B8);
  }

  return result;
}

unint64_t sub_216C256F4()
{
  result = qword_27CAC64C8;
  if (!qword_27CAC64C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC64D0);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_27CAC64D8, &qword_27CAC64E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC64C8);
  }

  return result;
}

uint64_t sub_216C25824@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a1;
  v81 = a2;
  v88 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v85 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v77 = v7;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_4();
  v80 = v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  v73 = &v72 - v11;
  v84 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v76 = v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  v72 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - v19;
  v21 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_6_93();
  v26 = *(v25 + 48);
  v27 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_88(a3 + v26, v28, v29, v27);
  sub_217006214();
  v30 = sub_2170061F4();
  v32 = v31;
  (*(v23 + 8))(v3, v21);
  v86 = v30;
  v87 = v32;
  sub_21700F364();
  v33 = v74;
  sub_21700CE04();
  v34 = sub_21700CDB4();
  v36 = v35;
  v78 = *(v13 + 8);
  v79 = v13 + 8;
  v78(v20, v84);
  v37 = v33;
  v82 = a3;
  v83 = v25;
  v38 = (a3 + *(v25 + 24));
  *v38 = v34;
  v38[1] = v36;
  v39 = v81;
  v40 = v72;
  sub_21700CE04();
  v41 = *(v85 + 16);
  v42 = v73;
  v41(v73, v39, v88);
  v43 = v75;
  v44 = sub_216CBFBF0(v40, v42);
  v46 = v43;
  if (v43)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8968);
    sub_21700CE04();
    v41(v80, v39, v88);
    sub_2167FF028();
    sub_21700D734();
    v46 = 0;
    if (v86)
    {
      v44 = v86;
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
    }

    v45 = 1;
  }

  v47 = v82 + v83[7];
  *v47 = v44;
  *(v47 + 8) = v45;
  v48 = v76;
  sub_21700CE04();
  v49 = v77;
  v41(v77, v39, v88);
  v50 = sub_216CBFBF0(v48, v49);
  if (v46)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8968);
    sub_21700CE04();
    v41(v80, v39, v88);
    sub_2167FF028();
    sub_21700D734();
    v80 = 0;
    if (v86)
    {
      v50 = v86;
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
    }

    v51 = 1;
    v52 = v37;
  }

  else
  {
    v52 = v37;
    v80 = 0;
  }

  v53 = v82;
  v54 = v83;
  v55 = v82 + v83[8];
  *v55 = v50;
  *(v55 + 8) = v51;
  sub_21700CE04();
  v56 = sub_21700CD94();
  v58 = v57;
  v59 = v84;
  v60 = v78;
  v78(v20, v84);
  v61 = v53 + v54[9];
  *v61 = v56;
  *(v61 + 8) = v58 & 1;
  sub_21700CE04();
  v62 = sub_21700CDB4();
  v64 = v63;
  v60(v20, v59);
  v65 = (v53 + v54[10]);
  *v65 = v62;
  v65[1] = v64;
  sub_21700CE04();
  v66 = v81;
  sub_21700D2E4();
  (*(v85 + 8))(v66, v88);
  v60(v52, v59);
  v60(v20, v59);
  v67 = v54[5];
  v68 = sub_21700D7A4();
  return OUTLINED_FUNCTION_88(v53 + v67, v69, v70, v68);
}

uint64_t sub_216C25EFC(uint64_t a1)
{
  result = sub_216C25FE4(&qword_27CAC6520, type metadata accessor for ComposerSectionHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C25FE4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_216C2602C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = type metadata accessor for AttributedLinkList(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v72 = v6;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_4();
  v78 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_4();
  v73 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v74 = (&v72 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6538);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_1_0();
  v77 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v72 - v16;
  v18 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_6_93();
  v23 = v22[12];
  v24 = type metadata accessor for ContentDescriptor();
  v76 = v23;
  OUTLINED_FUNCTION_88(a2 + v23, v25, v26, v24);
  sub_217006214();
  v27 = sub_2170061F4();
  v29 = v28;
  (*(v20 + 8))(v2, v18);
  v80 = v27;
  v81 = v29;
  v30 = a1;
  sub_21700F364();
  v31 = v22[5];
  v32 = sub_21700D7A4();
  v75 = v31;
  OUTLINED_FUNCTION_88(a2 + v31, v33, v34, v32);
  v35 = type metadata accessor for Section.Header.ComposerHeader(0);
  v36 = (a1 + v35[5]);
  v37 = *v36;
  v38 = v36[1];
  v39 = v22;
  v40 = (a2 + v22[6]);
  *v40 = v37;
  v40[1] = v38;
  sub_216681B04(v30 + v35[6], v17, &qword_27CAC6538);
  LODWORD(v29) = __swift_getEnumTagSinglePayload(v17, 1, v82);
  sub_21700DF14();
  sub_216697664(v17, &qword_27CAC6538);
  if (v29 == 1)
  {
    v41 = v30;
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v44 = v74;
    v41 = v30;
    sub_216F94F44(v74);
    v45 = v73;
    sub_216C26510(v44, v73);
    v46 = v79;
    v47 = sub_216CC0644(v45);
    if (v46)
    {
      v49 = 0;
      goto LABEL_10;
    }

    v42 = v47;
    v43 = v48;
    v79 = 0;
    OUTLINED_FUNCTION_2_139();
  }

  v50 = a2 + v39[7];
  *v50 = v42;
  *(v50 + 8) = v43;
  v51 = v41;
  v52 = v77;
  sub_216681B04(v41 + v35[7], v77, &qword_27CAC6538);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v82);
  sub_216697664(v52, &qword_27CAC6538);
  v44 = v78;
  if (EnumTagSinglePayload == 1)
  {
    v54 = 0;
    v55 = 0;
LABEL_14:
    v61 = a2 + v39[8];
    *v61 = v54;
    *(v61 + 8) = v55;
    v62 = v51 + v35[8];
    v63 = *v62;
    v64 = *(v62 + 4);
    v65 = v63;
    if (v64)
    {
      v65 = 0.0;
    }

    v66 = a2 + v39[9];
    *v66 = v65;
    *(v66 + 8) = v64;
    v67 = (v51 + v35[9]);
    v69 = *v67;
    v68 = v67[1];
    sub_21700DF14();
    OUTLINED_FUNCTION_3_134();
    v70 = (a2 + v39[10]);
    *v70 = v69;
    v70[1] = v68;
    v71 = a2 + v39[11];
    *(v71 + 32) = 0;
    result = 0.0;
    *v71 = 0u;
    *(v71 + 16) = 0u;
    return result;
  }

  sub_216F952B0(v78);
  v56 = v72;
  sub_216C26510(v44, v72);
  v57 = v79;
  v58 = sub_216CC0644(v56);
  if (!v57)
  {
    v54 = v58;
    v55 = v59;
    OUTLINED_FUNCTION_2_139();
    goto LABEL_14;
  }

  v49 = 1;
LABEL_10:
  sub_216C26574(v44, type metadata accessor for AttributedLinkList);
  OUTLINED_FUNCTION_3_134();
  sub_216788110(a2);
  sub_216697664(a2 + v75, &qword_27CAB6D58);

  if (v49)
  {
  }

  sub_216697664(a2 + v76, &qword_27CAB6A00);
  return result;
}

uint64_t sub_216C26510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedLinkList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C26574(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *_s7SectionV19BackgroundTreatmentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s7SectionV8ItemKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xC3)
  {
    if (a2 + 61 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 61) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 62;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3E;
  v5 = v6 - 62;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7SectionV8ItemKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 61) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xC3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xC2)
  {
    v6 = ((a2 - 195) >> 8) + 1;
    *result = a2 + 61;
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
          *result = a2 + 61;
        }

        break;
    }
  }

  return result;
}

unsigned __int16 *_s7SectionV12PresentationOwet(unsigned __int16 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *(result + 1);
    if (v6 <= 2)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6 ^ 0xFF;
    }

    if (v7 + 1 >= 2)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 65283;
    if (a2 + 65283 <= 0xFFFEFFFF)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4;
    }

    if (v2 < 0xFF0000)
    {
      v3 = 1;
    }

    if (v2 >= 0x10000)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = *(result + 2);
        if (!*(result + 2))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 16)) - 65283);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

uint64_t _s7SectionV12PresentationOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65283;
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 2) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *(result + 1) = ~a2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216C269BC(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216C269D0(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
  }

  else if (a2)
  {
    *(result + 1) = -a2;
  }

  return result;
}

_BYTE *_s7SectionV6HeaderV4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_216C26B08()
{
  OUTLINED_FUNCTION_22_3();
  v90 = v0;
  v105 = v1;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for SectionContent();
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v87 = v8;
  OUTLINED_FUNCTION_4_1();
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v101 = v9;
  v102 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_4();
  v91 = v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_4();
  v98 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v80 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0);
  OUTLINED_FUNCTION_36(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - v20;
  v22 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_4();
  v100 = v29;
  OUTLINED_FUNCTION_3_1();
  v31 = MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v31);
  v33 = &v80 - v32;
  v34 = _s7SectionVMa(0);
  v35 = v34[10];
  v92 = v5;
  v36 = (v5 + v35);
  *(v36 + 41) = 0u;
  v36[1] = 0u;
  v36[2] = 0u;
  v99 = v36;
  *v36 = 0u;
  v103 = v3;
  sub_21700CE04();
  v89 = sub_21700CDB4();
  v38 = v37;
  v85 = v24;
  v39 = v33;
  v40 = *(v24 + 8);
  v40(v39, v22);
  v97 = v38;
  if (!v38)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_2_140();
    sub_216C2BFE0(v46, v47);
    OUTLINED_FUNCTION_4();
    *v48 = 25705;
    v48[1] = 0xE200000000000000;
    v48[2] = v34;
    OUTLINED_FUNCTION_50();
    (*(v49 + 104))();
    swift_willThrow();
    (*(v102 + 8))(v105, v101);
    v40(v103, v22);
LABEL_9:
    sub_216697664(v99, &qword_27CAC6590);
    goto LABEL_10;
  }

  v95 = v40;
  v88 = v24 + 8;
  v96 = v22;
  sub_21700CE04();
  v41 = v101;
  v93 = *(v102 + 16);
  v94 = v102 + 16;
  v93(v17, v105, v101);
  v42 = v90;
  sub_216C27D80();
  if (v42)
  {

    v90 = 0;
    v43 = 1;
    v44 = v92;
    v45 = v98;
  }

  else
  {
    v43 = 0;
    v44 = v92;
    v45 = v98;
    v90 = 0;
  }

  v50 = _s7SectionV6HeaderVMa(0);
  __swift_storeEnumTagSinglePayload(v21, v43, 1, v50);
  v83 = v34[6];
  sub_2167A4788();
  v92 = sub_21700D7A4();
  v51 = v103;
  sub_21700CE04();
  v52 = v93;
  v93(v45, v105, v41);
  v80 = v34;
  v82 = v34[5];
  sub_21700D734();
  v53 = v97;
  *v44 = v89;
  v44[1] = v53;
  OUTLINED_FUNCTION_46_18();
  sub_21700CE04();
  v54 = v91;
  v55 = OUTLINED_FUNCTION_90();
  v52(v55);
  v56 = v90;
  sub_216C290BC(v51, v54, v57, v58, v59, v60, v61, v62, v80, v81, SWORD2(v81), HIWORD(v81));
  if (v56)
  {
    v64 = v103;
    v65 = v96;
    (*(v102 + 8))(v105, v41);
    v95(v64, v65);

    sub_216697664(v44 + v82, &qword_27CAB6D58);
    sub_216697664(v44 + v83, &qword_27CABDCC0);
    goto LABEL_9;
  }

  v66 = v80;
  *(v44 + v80[7]) = v63;
  v67 = v100;
  v68 = v103;
  sub_21700CE04();
  sub_21682FF4C();
  sub_21700CD14();
  v69 = v67;
  v70 = v96;
  v95(v69, v96);
  *(v44 + *(v66 + 32)) = v104;
  (*(v85 + 16))(v84, v68, v70);
  v93(v86, v105, v41);
  sub_21699CE4C();
  v71 = v102;
  v72 = v44;
  v73 = v80;
  OUTLINED_FUNCTION_31_42();
  v75 = v74;
  sub_216C2D984();
  v76 = v100;
  sub_21700CE04();
  v75(v98, v105, v101);
  sub_216BA1E5C();
  sub_21700D734();
  v77 = v73;
  *(v72 + *(v73 + 56)) = v104;
  v78 = v81;
  sub_21700CE04();
  LOBYTE(v68) = sub_21700CD44();
  v95(v78, v96);
  *(v72 + *(v77 + 36)) = v68 & 1;
  sub_21700CE04();
  v93(v98, v105, v101);
  sub_216C2D70C();
  OUTLINED_FUNCTION_45();
  sub_21700D734();
  sub_216C2D760(&v104, v99);
  sub_21700CE04();
  sub_216C2D7D0();
  sub_21700CD14();
  v95(v76, v96);
  *(v72 + v80[11]) = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948);
  sub_21700CE04();
  v79 = v101;
  v93(v98, v105, v101);
  sub_216C2D824();
  sub_21700D734();
  (*(v71 + 8))(v105, v79);
  v95(v103, v96);
LABEL_10:
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216C2750C()
{
  v1 = *(v0 + *(_s7SectionVMa(0) + 32));
  if (v1 == 62)
  {
    v2 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  else
  {
    sub_216C275C8(v1);
    v2 = v4;
  }

  MEMORY[0x21CE9F490](v3, v2);

  return 0x5F6E6F6974636573;
}

void sub_216C275C8(char a1)
{
  switch(a1)
  {
    case 7:
    case 8:
    case 12:
    case 18:
    case 19:
    case 25:
    case 26:
    case 29:
    case 49:
    case 51:
    case 52:
    case 53:
    case 55:
    case 56:
      return;
    case 14:
    case 21:
    case 24:
    case 30:
    case 60:
      OUTLINED_FUNCTION_17_5();
      break;
    case 48:
      OUTLINED_FUNCTION_74_14();
      break;
    default:
      OUTLINED_FUNCTION_11_71();
      break;
  }
}

uint64_t sub_216C27BE4()
{
  OUTLINED_FUNCTION_56_19();
  sub_21700F5E4();
  OUTLINED_FUNCTION_47();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_216C27C28(char a1)
{
  result = 0x6E6D756C6F63;
  switch(a1)
  {
    case 1:
      result = 0x7265736F706D6F63;
      break;
    case 2:
      result = 0x746C7561666564;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_216C27CD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C27BE4();
  *a1 = result;
  return result;
}

unint64_t sub_216C27D00()
{
  v1 = OUTLINED_FUNCTION_18_45();
  result = sub_216C27C28(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_216C27D2C()
{
  result = qword_27CAC6548;
  if (!qword_27CAC6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6548);
  }

  return result;
}

void sub_216C27D80()
{
  OUTLINED_FUNCTION_22_3();
  v99 = v3;
  v102 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC65B8);
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v98 = v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC65C0);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v97 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_4_1();
  v15 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCB8);
  v20 = OUTLINED_FUNCTION_36(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_4();
  v95 = v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_4();
  v94 = v24;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47_1();
  v96 = v26;
  OUTLINED_FUNCTION_4_1();
  v27 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_52_15();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v32);
  sub_21700CE04();
  if (sub_21700CDA4())
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_2_140();
    sub_216C2BFE0(v33, v34);
    OUTLINED_FUNCTION_4();
    v36 = v35;
    v37 = _s7SectionV6HeaderVMa(0);
    *v36 = 1835365481;
    v36[1] = 0xE400000000000000;
    v36[2] = v37;
    OUTLINED_FUNCTION_50();
    (*(v38 + 104))(v36);
    swift_willThrow();
    (*(v17 + 8))(v102, v15);
    v39 = *(v29 + 8);
    v39(v6, v27);
LABEL_5:
    v40 = OUTLINED_FUNCTION_19();
    (v39)(v40);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_36_34();
  sub_21700CE04();
  sub_216C2D8DC();
  sub_21700CCD4();
  if (v1)
  {
    (*(v17 + 8))(v102, v15);
    v39 = *(v29 + 8);
    v39(v6, v27);
    v39(v2, v27);
    goto LABEL_5;
  }

  (*(v29 + 8))(v2, v27);
  v41 = LOBYTE(v100[0]);
  *v99 = v100[0];
  switch(v41)
  {
    case 1:
      v73 = type metadata accessor for ComposerSectionHeader();
      v74 = OUTLINED_FUNCTION_21_48();
      v75(v74);
      OUTLINED_FUNCTION_20_49();
      v76 = OUTLINED_FUNCTION_44_24();
      v77(v76);
      sub_216C2BFE0(&qword_27CAC65D0, type metadata accessor for ComposerSectionHeader);
      OUTLINED_FUNCTION_71_15();
      v78 = OUTLINED_FUNCTION_70_11();
      v79(v78);
      v80 = OUTLINED_FUNCTION_14_61();
      v0(v80);
      v81 = OUTLINED_FUNCTION_19();
      v0(v81);
      v50 = v97;
      sub_2167A4788();
      v82 = OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_31_2(v82, v83, v73);
      if (!v64)
      {
        OUTLINED_FUNCTION_49_0();
        v84 = v94;
        sub_216C2D984();
        OUTLINED_FUNCTION_35_32();
        OUTLINED_FUNCTION_91();
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_73_11();
      v52 = v94;
      goto LABEL_21;
    case 2:
      v53 = type metadata accessor for DefaultSectionHeader();
      v54 = OUTLINED_FUNCTION_21_48();
      v55(v54);
      OUTLINED_FUNCTION_20_49();
      v56 = OUTLINED_FUNCTION_44_24();
      v57(v56);
      sub_216C2BFE0(&qword_280E3C5A0, type metadata accessor for DefaultSectionHeader);
      OUTLINED_FUNCTION_71_15();
      v58 = OUTLINED_FUNCTION_70_11();
      v59(v58);
      v60 = OUTLINED_FUNCTION_14_61();
      v0(v60);
      v61 = OUTLINED_FUNCTION_19();
      v0(v61);
      v50 = v98;
      sub_2167A4788();
      v62 = OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_31_2(v62, v63, v53);
      if (!v64)
      {
        OUTLINED_FUNCTION_49_0();
        v84 = v95;
        sub_216C2D984();
        OUTLINED_FUNCTION_35_32();
        OUTLINED_FUNCTION_91();
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_73_11();
      v52 = v95;
      goto LABEL_21;
    case 3:
      v65 = OUTLINED_FUNCTION_21_48();
      v66(v65);
      OUTLINED_FUNCTION_20_49();
      v67 = OUTLINED_FUNCTION_90();
      v68(v67);
      sub_216C2D930();
      OUTLINED_FUNCTION_8();
      sub_21700D734();
      v69 = OUTLINED_FUNCTION_70_11();
      v70(v69, v15);
      v71 = OUTLINED_FUNCTION_14_61();
      v0(v71);
      v72 = OUTLINED_FUNCTION_19();
      v0(v72);
      v50 = v101;
      if (v101)
      {
        v84 = v93;
        memcpy(v93, v100, 0x50uLL);
        v93[10] = v50;
        OUTLINED_FUNCTION_35_32();
        OUTLINED_FUNCTION_91();
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_73_11();
      v52 = v93;
      goto LABEL_21;
    default:
      v42 = OUTLINED_FUNCTION_21_48();
      v43(v42);
      OUTLINED_FUNCTION_20_49();
      v44 = OUTLINED_FUNCTION_90();
      v45(v44);
      sub_216C2D9DC();
      OUTLINED_FUNCTION_8();
      sub_21700D734();
      v46 = OUTLINED_FUNCTION_70_11();
      v47(v46, v15);
      v48 = OUTLINED_FUNCTION_14_61();
      v0(v48);
      v49 = OUTLINED_FUNCTION_19();
      v0(v49);
      v50 = v100[1];
      if (v100[1] == 1)
      {
        OUTLINED_FUNCTION_73_11();
        v52 = v96;
LABEL_21:
        v91 = v52;
        v92 = 1;
      }

      else
      {
        v86 = v100[4];
        v85 = v100[5];
        v88 = v100[2];
        v87 = v100[3];
        sub_21700DF14();
        sub_21700DF14();
        sub_21700DF14();
        v89 = OUTLINED_FUNCTION_91();
        sub_216C2DA30(v89, v90);
        *v96 = v100[0];
        v96[1] = v50;
        v84 = v96;
        v96[2] = v88;
        v96[3] = v87;
        v96[4] = v86;
        v96[5] = v85;
        OUTLINED_FUNCTION_35_32();
        OUTLINED_FUNCTION_91();
LABEL_19:
        swift_storeEnumTagMultiPayload();
        v91 = v84;
        v92 = 0;
        v51 = v50;
      }

      __swift_storeEnumTagSinglePayload(v91, v92, 1, v51);
      _s7SectionV6HeaderVMa(0);
      sub_2167A4788();
      break;
  }

LABEL_6:
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216C2863C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632167 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
  {

    return 256;
  }

  else
  {
    v6 = a1 == 1953720684 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
    {

      return 512;
    }

    else if (a1 == 0x666C656873 && a2 == 0xE500000000000000)
    {

      return 1;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_59_2();

      if (v8)
      {
        return 1;
      }

      else
      {
        return 4294967040;
      }
    }
  }
}

uint64_t sub_216C2872C(__int16 a1)
{
  v1 = 1684632167;
  if (HIBYTE(a1) != 1)
  {
    v1 = 1953720684;
  }

  if (HIBYTE(a1))
  {
    return v1;
  }

  else
  {
    return 0x666C656873;
  }
}

uint64_t sub_216C28774()
{
  OUTLINED_FUNCTION_56_19();
  sub_21700F5E4();
  OUTLINED_FUNCTION_47();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216C287C0(char a1)
{
  if (a1)
  {
    return 0x6E6D756C6F63;
  }

  else
  {
    return 7827314;
  }
}

uint64_t sub_216C287EC@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_216C2863C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_216C2881C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216C2872C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216C2886C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C28774();
  *a1 = result;
  return result;
}

uint64_t sub_216C2889C()
{
  v1 = OUTLINED_FUNCTION_18_45();
  result = sub_216C287C0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_216C288C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_22_3();
  v105 = v13;
  v112 = v15;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20);
  v19 = OUTLINED_FUNCTION_36(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v107 = v20;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v100 - v22;
  sub_21700D3E4();
  OUTLINED_FUNCTION_1();
  v109 = v25;
  v110 = v24;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v108 = v26;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47_1();
  v104 = v28;
  OUTLINED_FUNCTION_4_1();
  v29 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  v101 = v33;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_4();
  v103 = v35;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  v106 = v37;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_4();
  v102 = v39;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_15_52();
  MEMORY[0x28223BE20](v41);
  v43 = &v100 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v100 - v45;
  v47 = v17;
  sub_21700CE04();
  v48 = sub_21700CDB4();
  v50 = v49;
  v51 = *(v31 + 8);
  v52 = v46;
  v113 = v29;
  v53 = v51;
  v51(v52, v29);
  if (v50 && (sub_216C2863C(v48, v50) >> 8) != 255)
  {
    sub_21700CF34();
    OUTLINED_FUNCTION_34();
    (*(v68 + 8))(v112);
    v53(v47, v113);
LABEL_34:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  OUTLINED_FUNCTION_34_31();
  v111 = v47;
  sub_21700CE04();
  sub_21700CCB4();
  v54 = v43;
  v55 = v53;
  v53(v54, v113);
  v56 = OUTLINED_FUNCTION_12_17();
  v57 = v110;
  OUTLINED_FUNCTION_31_2(v56, v58, v110);
  if (v64)
  {
    sub_216697664(v23, &qword_27CAB7D20);
    goto LABEL_17;
  }

  v59 = OUTLINED_FUNCTION_82_1();
  v60(v59);
  OUTLINED_FUNCTION_36_34();
  sub_21700D3F4();
  v61 = sub_21700CDB4();
  v63 = v62;
  v55(v14, v113);
  if (!v63)
  {
    goto LABEL_12;
  }

  v64 = v61 == 0x666C656873 && v63 == 0xE500000000000000;
  if (v64)
  {
  }

  else
  {
    v65 = sub_21700F7D4();

    if ((v65 & 1) == 0)
    {
LABEL_12:
      v66 = OUTLINED_FUNCTION_37_38();
      v67(v66);
      goto LABEL_17;
    }
  }

  v69 = v102;
  sub_21700D3F4();
  v100 = sub_21700CD64();
  v71 = v70;
  v55(v69, v113);
  v72 = OUTLINED_FUNCTION_37_38();
  v73(v72);
  if (v71)
  {
LABEL_17:
    v74 = v106;
    sub_21700CE04();
    v75 = v107;
    sub_21700CCB4();
    v55(v74, v113);
    v76 = OUTLINED_FUNCTION_12_17();
    OUTLINED_FUNCTION_31_2(v76, v77, v57);
    if (!v64)
    {
      v78 = OUTLINED_FUNCTION_91();
      v79(v78);
      v29 = v103;
      OUTLINED_FUNCTION_36_34();
      sub_21700D3F4();
      v80 = sub_21700CDB4();
      v82 = v81;
      v55(v29, v113);
      if (!v82)
      {
        v87 = OUTLINED_FUNCTION_53_19();
        v88(v87);
        OUTLINED_FUNCTION_34_31();
        goto LABEL_30;
      }

      if (v80 == 1684632167 && v82 == 0xE400000000000000)
      {

        OUTLINED_FUNCTION_34_31();
      }

      else
      {
        v84 = sub_21700F7D4();

        OUTLINED_FUNCTION_34_31();
        if ((v84 & 1) == 0)
        {
          v85 = OUTLINED_FUNCTION_53_19();
          v86(v85);
          goto LABEL_30;
        }
      }

      v89 = v101;
      sub_21700D3F4();
      sub_216C2DC1C();
      sub_21700CD14();
      v55(v89, v113);
      v90 = OUTLINED_FUNCTION_53_19();
      v91(v90);
      if (a13 != 2)
      {
        sub_21700CF34();
        OUTLINED_FUNCTION_34();
        (*(v99 + 8))(v112);
        v55(v111, v113);
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    sub_216697664(v75, &qword_27CAB7D20);
LABEL_30:
    sub_21700E2E4();
    OUTLINED_FUNCTION_2_140();
    sub_216C2BFE0(v92, v93);
    OUTLINED_FUNCTION_4();
    v94 = MEMORY[0x277D84F90];
    *v95 = v29;
    v95[1] = 0xE600000000000000;
    v95[2] = &_s7SectionV12PresentationO22CollectionPresentationVN;
    v95[3] = v94;
    OUTLINED_FUNCTION_50();
    (*(v96 + 104))();
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_34();
    (*(v97 + 8))(v112);
    v55(v111, v113);
    goto LABEL_34;
  }

  sub_21700CF34();
  OUTLINED_FUNCTION_34();
  (*(v98 + 8))(v112);
  v55(v111, v113);
  if (v100 <= 0xFF)
  {
    goto LABEL_34;
  }

  __break(1u);
}

void sub_216C29090(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _WORD *a9@<X8>)
{
  sub_216C288C4(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13));
  if (!v9)
  {
    *a9 = v11;
  }
}

void sub_216C290BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, unsigned __int16 a12)
{
  OUTLINED_FUNCTION_22_3();
  v54 = v12;
  v57 = v13;
  v15 = v14;
  v56 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v53 - v29;
  OUTLINED_FUNCTION_36_34();
  v58 = v15;
  sub_21700CE04();
  v31 = sub_21700CDB4();
  v33 = v32;
  v55 = *(v23 + 8);
  v55(v30, v21);
  if (!v33)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_2_140();
    sub_216C2BFE0(v43, v44);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_12();
    *v45 = 1684957547;
    v45[1] = 0xE400000000000000;
    v45[2] = &_s7SectionV12PresentationON;
    OUTLINED_FUNCTION_50();
    v47 = *(v46 + 104);
LABEL_10:
    v47();
    v36 = v57;
    v35 = v58;
    v37 = v56;
    goto LABEL_11;
  }

  v34 = v31 == 0x697463656C6C6F63 && v33 == 0xEA00000000006E6FLL;
  if (!v34 && (sub_21700F7D4() & 1) == 0)
  {
    v48 = v31 == 0x656C676E6973 && v33 == 0xE600000000000000;
    if (v48 || (sub_21700F7D4() & 1) != 0)
    {

      (*(v17 + 8))(v57, v56);
      v55(v58, v21);
      goto LABEL_19;
    }

    sub_21700E2E4();
    OUTLINED_FUNCTION_2_140();
    sub_216C2BFE0(v49, v50);
    OUTLINED_FUNCTION_12();
    *v51 = v31;
    v51[1] = v33;
    v51[2] = &_s7SectionV12PresentationON;
    OUTLINED_FUNCTION_50();
    v47 = *(v52 + 104);
    goto LABEL_10;
  }

  v35 = v58;
  (*(v23 + 16))(v27, v58, v21);
  v37 = v56;
  v36 = v57;
  (*(v17 + 16))(v20, v57, v56);
  sub_216C2D888();
  sub_21700D734();
  if (HIBYTE(a12) <= 0xFEu)
  {
    (*(v17 + 8))(v36, v37);
    v55(v35, v21);
    goto LABEL_19;
  }

  sub_21700E2E4();
  OUTLINED_FUNCTION_2_140();
  sub_216C2BFE0(v38, v39);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_12();
  v40 = MEMORY[0x277D84F90];
  *v41 = 1684957547;
  v41[1] = 0xE400000000000000;
  v41[2] = &_s7SectionV12PresentationON;
  v41[3] = v40;
  OUTLINED_FUNCTION_50();
  (*(v42 + 104))();
LABEL_11:
  swift_willThrow();
  (*(v17 + 8))(v36, v37);
  v55(v35, v21);
LABEL_19:
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216C29590()
{
  OUTLINED_FUNCTION_56_19();
  sub_21700F7F4();
  OUTLINED_FUNCTION_47();

  if (v0 >= 0x3E)
  {
    return 62;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_216C295DC()
{
  OUTLINED_FUNCTION_56_19();
  sub_21700F5E4();
  OUTLINED_FUNCTION_47();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

void sub_216C29620()
{
  OUTLINED_FUNCTION_74_14();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_17_5();
      break;
    default:
      return;
  }
}

uint64_t sub_216C296D0()
{
  OUTLINED_FUNCTION_56_19();
  sub_21700F5E4();
  OUTLINED_FUNCTION_47();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_216C29714(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x74616E7265746C61;
  }

  return 0x6D6574737973;
}

void sub_216C29764(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _WORD *a9@<X8>)
{
  sub_216C290BC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SWORD2(v13), HIWORD(v13));
  if (!v9)
  {
    *a9 = v11;
  }
}

unint64_t sub_216C29794()
{
  result = qword_280E2C650;
  if (!qword_280E2C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C650);
  }

  return result;
}

uint64_t sub_216C297F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C29590();
  *a1 = result;
  return result;
}

void sub_216C29824()
{
  v1 = OUTLINED_FUNCTION_18_45();
  sub_216C275C8(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_216C29870@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C295DC();
  *a1 = result;
  return result;
}

void sub_216C298A0()
{
  OUTLINED_FUNCTION_18_45();
  sub_216C29620();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_216C29904@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C296D0();
  *a1 = result;
  return result;
}

uint64_t sub_216C29934()
{
  v1 = OUTLINED_FUNCTION_18_45();
  result = sub_216C29714(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_216C29960()
{
  result = qword_27CAC6550;
  if (!qword_27CAC6550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6550);
  }

  return result;
}

uint64_t sub_216C299B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93D8);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_77();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_52();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_103_3();
  v10 = MEMORY[0x28223BE20](v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v134 - v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_4();
  v134[30] = v43;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_4();
  v134[31] = v45;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_4();
  v134[32] = v47;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_4();
  v134[33] = v49;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_4();
  v134[34] = v51;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_4();
  v134[35] = v53;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_4();
  v134[36] = v55;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6_4();
  v134[37] = v57;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_4();
  v134[38] = v59;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6_4();
  v134[39] = v61;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_6_4();
  v134[40] = v63;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6_4();
  v134[41] = v65;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_4();
  v134[42] = v67;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_6_4();
  v134[43] = v69;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_6_4();
  v134[44] = v71;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_6_4();
  v134[45] = v73;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_6_4();
  v134[46] = v75;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_4();
  v134[47] = v77;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_47_1();
  v134[48] = v79;
  __swift_allocate_value_buffer(v80, qword_280E73B58);
  v134[49] = __swift_project_value_buffer(v0, qword_280E73B58);
  sub_216C2DA84();
  sub_21682FF4C();
  sub_21700D374();
  type metadata accessor for AlbumDetailHeaderLockup();
  sub_216C2BFE0(&qword_280E38970, type metadata accessor for AlbumDetailHeaderLockup);
  sub_216C2BFE0(&qword_280E38968, type metadata accessor for AlbumDetailHeaderLockup);
  v135 = 0;
  sub_21700D354();
  v81 = *(v2 + 8);
  v81(v6, v0);
  type metadata accessor for AlbumTrackLockup();
  sub_216C2BFE0(qword_280E41540, type metadata accessor for AlbumTrackLockup);
  sub_216C2BFE0(&qword_280E41538, type metadata accessor for AlbumTrackLockup);
  OUTLINED_FUNCTION_5_101(1);
  sub_21700D354();
  v82 = OUTLINED_FUNCTION_91();
  (v81)(v82);
  type metadata accessor for AnimatedTextListItem();
  sub_216C2BFE0(&qword_27CABE138, type metadata accessor for AnimatedTextListItem);
  sub_216C2BFE0(&qword_27CAC65E0, type metadata accessor for AnimatedTextListItem);
  OUTLINED_FUNCTION_5_101(2);
  sub_21700D354();
  v83 = OUTLINED_FUNCTION_45();
  (v81)(v83);
  type metadata accessor for AppsWithAccessComponentModel();
  sub_216C2BFE0(&qword_280E32798, type metadata accessor for AppsWithAccessComponentModel);
  sub_216C2BFE0(&qword_280E32790, type metadata accessor for AppsWithAccessComponentModel);
  OUTLINED_FUNCTION_5_101(3);
  sub_21700D354();
  v84 = OUTLINED_FUNCTION_82_1();
  (v81)(v84);
  type metadata accessor for ArtistDetailHeaderLockup();
  sub_216C2BFE0(&qword_280E36D90, type metadata accessor for ArtistDetailHeaderLockup);
  sub_216C2BFE0(&qword_280E36D88, type metadata accessor for ArtistDetailHeaderLockup);
  OUTLINED_FUNCTION_5_101(4);
  v85 = v134[1];
  OUTLINED_FUNCTION_90();
  sub_21700D354();
  v81(v13, v0);
  type metadata accessor for ArtistLatestReleaseLockup();
  sub_216C2BFE0(&qword_280E35C28, type metadata accessor for ArtistLatestReleaseLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E35C20);
  OUTLINED_FUNCTION_5_101(5);
  OUTLINED_FUNCTION_46_18();
  sub_21700D354();
  v81(v85, v0);
  type metadata accessor for ArtistLatestReleaseAndTopSongsLockup();
  sub_216C2BFE0(qword_280E2E350, type metadata accessor for ArtistLatestReleaseAndTopSongsLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2E348);
  OUTLINED_FUNCTION_5_101(6);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v86 = OUTLINED_FUNCTION_91();
  (v81)(v86);
  type metadata accessor for BubbleLockup();
  sub_216C2BFE0(&qword_280E44DC0, type metadata accessor for BubbleLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E44DB8);
  OUTLINED_FUNCTION_5_101(8);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v87 = OUTLINED_FUNCTION_45();
  (v81)(v87);
  type metadata accessor for ContainerDetailTracklistFooterLockup();
  sub_216C2BFE0(&qword_280E2E290, type metadata accessor for ContainerDetailTracklistFooterLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2E288);
  OUTLINED_FUNCTION_5_101(9);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v88 = OUTLINED_FUNCTION_82_1();
  (v81)(v88);
  type metadata accessor for CuratorDetailHeaderComponentModel();
  sub_216C2BFE0(&qword_280E2F350, type metadata accessor for CuratorDetailHeaderComponentModel);
  OUTLINED_FUNCTION_39_28(&qword_280E2F348);
  OUTLINED_FUNCTION_5_101(10);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v89 = OUTLINED_FUNCTION_45();
  (v81)(v89);
  type metadata accessor for EmptyStateLockup();
  sub_216C2BFE0(&qword_280E41380, type metadata accessor for EmptyStateLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E41378);
  OUTLINED_FUNCTION_5_101(11);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v90 = OUTLINED_FUNCTION_82_1();
  (v81)(v90);
  type metadata accessor for FlowcaseLockup();
  sub_216C2BFE0(qword_280E43620, type metadata accessor for FlowcaseLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E43618);
  OUTLINED_FUNCTION_5_101(12);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v91 = OUTLINED_FUNCTION_45();
  (v81)(v91);
  type metadata accessor for GroupedTextListLockup();
  sub_216C2BFE0(qword_280E3A888, type metadata accessor for GroupedTextListLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E3A880);
  OUTLINED_FUNCTION_5_101(14);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v92 = OUTLINED_FUNCTION_82_1();
  (v81)(v92);
  type metadata accessor for HeaderComponentModel();
  sub_216C2BFE0(&qword_280E3C3A8, type metadata accessor for HeaderComponentModel);
  OUTLINED_FUNCTION_39_28(&qword_280E3C3A0);
  OUTLINED_FUNCTION_5_101(15);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v93 = OUTLINED_FUNCTION_45();
  (v81)(v93);
  type metadata accessor for HorizontalLockup();
  sub_216C2BFE0(qword_280E410F0, type metadata accessor for HorizontalLockup);
  OUTLINED_FUNCTION_39_28(&unk_280E410E0);
  OUTLINED_FUNCTION_5_101(16);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v94 = OUTLINED_FUNCTION_82_1();
  (v81)(v94);
  type metadata accessor for HorizontalPosterLockup();
  sub_216C2BFE0(qword_280E39370, type metadata accessor for HorizontalPosterLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E39368);
  OUTLINED_FUNCTION_5_101(17);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v95 = OUTLINED_FUNCTION_45();
  (v81)(v95);
  type metadata accessor for InlineUpsell();
  sub_216C2BFE0(&qword_280E44CE0, type metadata accessor for InlineUpsell);
  OUTLINED_FUNCTION_39_28(&qword_280E44CD8);
  OUTLINED_FUNCTION_5_101(18);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v96 = OUTLINED_FUNCTION_82_1();
  (v81)(v96);
  type metadata accessor for LinkComponentModel();
  sub_216C2BFE0(&qword_280E3EC50, type metadata accessor for LinkComponentModel);
  OUTLINED_FUNCTION_39_28(&qword_280E3EC48);
  OUTLINED_FUNCTION_5_101(20);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v97 = OUTLINED_FUNCTION_45();
  (v81)(v97);
  type metadata accessor for LiveRadioGridLockup();
  sub_216C2BFE0(qword_280E3DB38, type metadata accessor for LiveRadioGridLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E3DB30);
  OUTLINED_FUNCTION_5_101(21);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v98 = OUTLINED_FUNCTION_82_1();
  (v81)(v98);
  type metadata accessor for ParagraphComponentModel();
  sub_216C2BFE0(&qword_280E37B38, type metadata accessor for ParagraphComponentModel);
  OUTLINED_FUNCTION_39_28(&qword_280E37B30);
  OUTLINED_FUNCTION_5_101(22);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v99 = OUTLINED_FUNCTION_45();
  (v81)(v99);
  type metadata accessor for PlaylistDetailHeaderLockup();
  sub_216C2BFE0(qword_280E34400, type metadata accessor for PlaylistDetailHeaderLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E343F8);
  OUTLINED_FUNCTION_5_101(23);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v100 = OUTLINED_FUNCTION_82_1();
  (v81)(v100);
  type metadata accessor for PlaylistTrackLockup();
  sub_216C2BFE0(qword_280E3D5F0, type metadata accessor for PlaylistTrackLockup);
  OUTLINED_FUNCTION_39_28(&unk_280E3D5E0);
  OUTLINED_FUNCTION_5_101(24);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v101 = OUTLINED_FUNCTION_45();
  (v81)(v101);
  type metadata accessor for PosterLockup();
  sub_216C2BFE0(qword_280E44990, type metadata accessor for PosterLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E44988);
  OUTLINED_FUNCTION_5_101(26);
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v102 = OUTLINED_FUNCTION_82_1();
  (v81)(v102);
  type metadata accessor for SearchLandingBrickLockup();
  sub_216C2BFE0(qword_280E363D0, type metadata accessor for SearchLandingBrickLockup);
  sub_216C2BFE0(&qword_280E363C8, type metadata accessor for SearchLandingBrickLockup);
  OUTLINED_FUNCTION_5_101(7);
  OUTLINED_FUNCTION_12_62();
  sub_21700D354();
  v103 = OUTLINED_FUNCTION_91();
  (v81)(v103);
  OUTLINED_FUNCTION_5_101(28);
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_12_62();
  sub_21700D354();
  v104 = OUTLINED_FUNCTION_45();
  (v81)(v104);
  type metadata accessor for SongDetailList();
  sub_216C2BFE0(qword_280E42AE0, type metadata accessor for SongDetailList);
  OUTLINED_FUNCTION_39_28(&qword_280E42AD8);
  OUTLINED_FUNCTION_5_101(48);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v105 = OUTLINED_FUNCTION_91();
  (v81)(v105);
  type metadata accessor for SocialCardLockup();
  sub_216C2BFE0(&qword_280E407F0, type metadata accessor for SocialCardLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E407E8);
  OUTLINED_FUNCTION_5_101(31);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v106 = OUTLINED_FUNCTION_45();
  (v81)(v106);
  type metadata accessor for SocialProfileDetailHeaderLockup();
  sub_216C2BFE0(qword_280E2FEC8, type metadata accessor for SocialProfileDetailHeaderLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2FEC0);
  OUTLINED_FUNCTION_5_101(44);
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v107 = OUTLINED_FUNCTION_82_1();
  (v81)(v107);
  type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
  sub_216C2BFE0(&qword_280E2CFC0, type metadata accessor for SocialProfileDetailViewFollowRequestsHeader);
  OUTLINED_FUNCTION_39_28(&qword_280E2CFB8);
  v135 = 47;
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v108 = OUTLINED_FUNCTION_91();
  (v81)(v108);
  type metadata accessor for SocialProfileEditorHeaderLockup(0);
  sub_216C2BFE0(qword_280E2FE08, type metadata accessor for SocialProfileEditorHeaderLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2FE00);
  OUTLINED_FUNCTION_5_101(45);
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v109 = OUTLINED_FUNCTION_45();
  (v81)(v109);
  type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
  sub_216C2BFE0(&qword_280E2CDC8, type metadata accessor for SocialProfileFindFriendsButtonComponentModel);
  OUTLINED_FUNCTION_39_28(&qword_280E2CDC0);
  OUTLINED_FUNCTION_5_101(46);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v110 = OUTLINED_FUNCTION_91();
  (v81)(v110);
  type metadata accessor for SocialOnboardingWelcomePageLockup();
  sub_216C2BFE0(qword_280E2EF10, type metadata accessor for SocialOnboardingWelcomePageLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2EF08);
  OUTLINED_FUNCTION_5_101(43);
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v111 = OUTLINED_FUNCTION_45();
  (v81)(v111);
  type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
  sub_216C2BFE0(qword_280E2D5F8, type metadata accessor for SocialOnboardingUserNameHandlePageLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2D5F0);
  OUTLINED_FUNCTION_5_101(42);
  OUTLINED_FUNCTION_0_198();
  sub_21700D354();
  v112 = OUTLINED_FUNCTION_91();
  (v81)(v112);
  type metadata accessor for SocialOnboardingFindFriendsPageLockup();
  sub_216C2BFE0(qword_280E2DC28, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2DC20);
  OUTLINED_FUNCTION_5_101(32);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v113 = OUTLINED_FUNCTION_45();
  (v81)(v113);
  type metadata accessor for SocialOnboardingPrivacySettingsPageLockup();
  sub_216C2BFE0(&qword_280E2D280, type metadata accessor for SocialOnboardingPrivacySettingsPageLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2D278);
  OUTLINED_FUNCTION_5_101(34);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v114 = OUTLINED_FUNCTION_91();
  (v81)(v114);
  type metadata accessor for SocialOnboardingSharedPlaylistLockup();
  sub_216C2BFE0(&qword_280E2DFF0, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
  OUTLINED_FUNCTION_39_28(&unk_280E2DFE0);
  OUTLINED_FUNCTION_5_101(35);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v115 = OUTLINED_FUNCTION_45();
  (v81)(v115);
  type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
  sub_216C2BFE0(&qword_280E2CAC0, type metadata accessor for SocialOnboardingNotificationSettingsPageLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2CAB8);
  OUTLINED_FUNCTION_5_101(33);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v116 = OUTLINED_FUNCTION_91();
  (v81)(v116);
  type metadata accessor for SocialOnboardingSharedPlaylistPageLockup();
  sub_216C2BFE0(&qword_280E2D6A8, type metadata accessor for SocialOnboardingSharedPlaylistPageLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2D6A0);
  OUTLINED_FUNCTION_5_101(36);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v117 = OUTLINED_FUNCTION_45();
  (v81)(v117);
  type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup();
  sub_216C2BFE0(&qword_280E2CE80, type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E2CE78);
  OUTLINED_FUNCTION_5_101(37);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v118 = OUTLINED_FUNCTION_91();
  (v81)(v118);
  type metadata accessor for SocialProfileFollowRequestResponseHeader();
  sub_216C2BFE0(qword_280E2D540, type metadata accessor for SocialProfileFollowRequestResponseHeader);
  OUTLINED_FUNCTION_39_28(&qword_280E2D538);
  v135 = 47;
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v119 = OUTLINED_FUNCTION_45();
  (v81)(v119);
  type metadata accessor for SocialProfileHorizontalLockup();
  sub_216C2BFE0(&qword_280E310E0, type metadata accessor for SocialProfileHorizontalLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E310D8);
  OUTLINED_FUNCTION_5_101(39);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v120 = OUTLINED_FUNCTION_82_1();
  (v81)(v120);
  type metadata accessor for Spacer();
  sub_216C2BFE0(&qword_280E2C268, type metadata accessor for Spacer);
  OUTLINED_FUNCTION_39_28(&qword_280E2C260);
  OUTLINED_FUNCTION_5_101(49);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v121 = OUTLINED_FUNCTION_45();
  (v81)(v121);
  type metadata accessor for SquareLockup();
  sub_216C2BFE0(&qword_280E445F0, type metadata accessor for SquareLockup);
  OUTLINED_FUNCTION_39_28(&unk_280E445E0);
  OUTLINED_FUNCTION_5_101(51);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v122 = OUTLINED_FUNCTION_82_1();
  (v81)(v122);
  type metadata accessor for SuggestionItem();
  sub_216C2BFE0(qword_280E42A28, type metadata accessor for SuggestionItem);
  OUTLINED_FUNCTION_39_28(&unk_280E42A18);
  OUTLINED_FUNCTION_5_101(52);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v123 = OUTLINED_FUNCTION_45();
  (v81)(v123);
  type metadata accessor for SuperHeroLockup();
  sub_216C2BFE0(qword_280E41E98, type metadata accessor for SuperHeroLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E41E90);
  OUTLINED_FUNCTION_5_101(53);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v124 = OUTLINED_FUNCTION_82_1();
  (v81)(v124);
  type metadata accessor for TextListComponentModel();
  sub_216C2BFE0(&qword_280E38AD0, type metadata accessor for TextListComponentModel);
  OUTLINED_FUNCTION_39_28(&qword_280E38AC8);
  OUTLINED_FUNCTION_5_101(54);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v125 = OUTLINED_FUNCTION_45();
  (v81)(v125);
  type metadata accessor for TrackLockup();
  sub_216C2BFE0(&qword_280E44FA0, type metadata accessor for TrackLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E44F98);
  OUTLINED_FUNCTION_5_101(56);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v126 = OUTLINED_FUNCTION_82_1();
  (v81)(v126);
  type metadata accessor for TopSearchLockup();
  sub_216C2BFE0(&qword_280E41D00, type metadata accessor for TopSearchLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E41CF8);
  OUTLINED_FUNCTION_5_101(55);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v127 = OUTLINED_FUNCTION_45();
  (v81)(v127);
  type metadata accessor for TVMovieDetailHeaderLockup();
  sub_216C2BFE0(qword_280E34CE8, type metadata accessor for TVMovieDetailHeaderLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E34CE0);
  OUTLINED_FUNCTION_5_101(58);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v128 = OUTLINED_FUNCTION_82_1();
  (v81)(v128);
  type metadata accessor for TVMovieDescription();
  sub_216C2BFE0(qword_280E3E588, type metadata accessor for TVMovieDescription);
  OUTLINED_FUNCTION_39_28(&qword_280E3E580);
  OUTLINED_FUNCTION_5_101(57);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v129 = OUTLINED_FUNCTION_45();
  (v81)(v129);
  type metadata accessor for VerticalArtworkListItem();
  sub_216C2BFE0(&qword_27CABE110, type metadata accessor for VerticalArtworkListItem);
  OUTLINED_FUNCTION_39_28(&qword_27CAC65E8);
  OUTLINED_FUNCTION_5_101(59);
  OUTLINED_FUNCTION_1_169();
  sub_21700D354();
  v130 = OUTLINED_FUNCTION_82_1();
  (v81)(v130);
  type metadata accessor for VerticalVideoLockup();
  sub_216C2BFE0(&qword_280E3CD90, type metadata accessor for VerticalVideoLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E3CD88);
  OUTLINED_FUNCTION_5_101(60);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v131 = OUTLINED_FUNCTION_45();
  (v81)(v131);
  type metadata accessor for SearchQueryContextLockup();
  sub_216C2BFE0(qword_280E36308, type metadata accessor for SearchQueryContextLockup);
  OUTLINED_FUNCTION_39_28(&qword_280E36300);
  OUTLINED_FUNCTION_5_101(61);
  OUTLINED_FUNCTION_3_127();
  sub_21700D354();
  v132 = OUTLINED_FUNCTION_82_1();
  return (v81)(v132);
}

uint64_t sub_216C2BEF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216C2750C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_216C2BFE0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_216C2C06C()
{
  OUTLINED_FUNCTION_22_3();
  v149 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6578);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v142 = &v128 - v7;
  v8 = OUTLINED_FUNCTION_4_1();
  v143 = type metadata accessor for SongTrackLockupCollection.OneOf_Presentation(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v140 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_47_1();
  v141 = v12;
  v13 = OUTLINED_FUNCTION_4_1();
  v139 = type metadata accessor for SongTrackLockupCollection(v13);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v144 = v15;
  v16 = OUTLINED_FUNCTION_4_1();
  v134 = type metadata accessor for Presentation.StackedShelf(v16);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v133 = v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47_1();
  v130 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6580);
  OUTLINED_FUNCTION_36(v21);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v137 = &v128 - v23;
  v24 = OUTLINED_FUNCTION_4_1();
  v138 = type metadata accessor for HorizontalLockupCollection.OneOf_Presentation(v24);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v132 = v26;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47_1();
  v131 = v28;
  v29 = OUTLINED_FUNCTION_4_1();
  v135 = type metadata accessor for HorizontalLockupCollection(v29);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  v136 = v31;
  OUTLINED_FUNCTION_4_1();
  v32 = type metadata accessor for SectionContent();
  v33 = OUTLINED_FUNCTION_36(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_0();
  v146 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE10);
  OUTLINED_FUNCTION_36(v35);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  v38 = &v128 - v37;
  v39 = type metadata accessor for Section.Content(0);
  v40 = OUTLINED_FUNCTION_36(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v128 - v45;
  v47 = type metadata accessor for Section.Content.OneOf_InnerContent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_0();
  v145 = v49;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47_1();
  v147 = v51;
  v52 = OUTLINED_FUNCTION_4_1();
  v53 = type metadata accessor for Section.Header(v52);
  v54 = OUTLINED_FUNCTION_36(v53);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_52_15();
  MEMORY[0x28223BE20](v55);
  v57 = &v128 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0);
  OUTLINED_FUNCTION_36(v58);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v59);
  v61 = &v128 - v60;
  v150 = _s7SectionVMa(0);
  v62 = (v4 + v150[10]);
  *(v62 + 41) = 0u;
  v62[1] = 0u;
  v62[2] = 0u;
  v151 = v62;
  *v62 = 0u;
  if (!sub_216F8CD78())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6588);
    sub_2167880BC();
    v68 = OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_33_5(xmmword_217014E10, v68, v69);
    OUTLINED_FUNCTION_0_200();
    sub_216C2D6B4(v2, v70);
    v67 = 0;
LABEL_15:
    sub_216697664(v151, &qword_27CAC6590);
    if (v67)
    {
      sub_216C2D6B4(v4 + v150[13], type metadata accessor for SectionContent);
    }

LABEL_17:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  *v4 = sub_216F8CBC4();
  v4[1] = v63;
  v148 = v4;
  v129 = v63;
  if (sub_216F8D1D0())
  {
    sub_216F8CE30();
    sub_216C2D65C();
    v64 = v149;
    sub_216C2CEB4();
    v149 = v64;
    if (v64)
    {
      OUTLINED_FUNCTION_1_173();
      sub_216C2D6B4(v57, v65);
      OUTLINED_FUNCTION_0_200();
      sub_216C2D6B4(v2, v66);

      v67 = 0;
      v4 = v148;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_1_173();
    sub_216C2D6B4(v57, v73);
    v71 = _s7SectionV6HeaderVMa(0);
    v72 = 0;
  }

  else
  {
    v71 = _s7SectionV6HeaderVMa(0);
    v72 = 1;
  }

  __swift_storeEnumTagSinglePayload(v61, v72, 1, v71);
  v74 = v150;
  v75 = v150[6];
  sub_2167A4788();
  if ((sub_216F8E36C() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_216F8DF74();
  sub_2166A6EA4();
  sub_216C2D6B4(v46, type metadata accessor for Section.Content);
  OUTLINED_FUNCTION_31_2(v38, 1, v47);
  if (v76)
  {
    sub_216697664(v38, &qword_27CABEE10);
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6588);
    sub_2167880BC();
    v77 = OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_33_5(xmmword_217030F50, v77, v78);
    OUTLINED_FUNCTION_0_200();
    v80 = v2;
    goto LABEL_13;
  }

  v81 = v147;
  sub_216C2D984();
  sub_216F8DF74();
  v82 = sub_216F8DC84();
  v83 = v149;
  sub_2169BA3CC(v43, v82, v84, v84, v85, v86, v87, v88, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
  if (v83)
  {
    OUTLINED_FUNCTION_0_200();
    sub_216C2D6B4(v2, v89);
    OUTLINED_FUNCTION_7_87();
    v80 = v81;
LABEL_13:
    sub_216C2D6B4(v80, v79);
    v67 = 0;
    v4 = v148;
LABEL_14:

    sub_216697664(v4 + v75, &qword_27CABDCC0);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_31_42();
  v4 = v148;
  sub_216C2D984();
  sub_216C2D65C();
  OUTLINED_FUNCTION_65_13();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v92 = v142;
  v91 = v143;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_22_45();
      v94 = 26;
      goto LABEL_31;
    case 2:
      sub_216C2D984();
      v95 = v137;
      sub_2166A6EA4();
      OUTLINED_FUNCTION_31_2(v95, 1, v138);
      if (v76)
      {
        sub_216697664(v95, &qword_27CAC6580);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6598);
        sub_2167880BC();
        v96 = OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_33_5(xmmword_217054E70, v96, v97);
        OUTLINED_FUNCTION_0_200();
        sub_216C2D6B4(v2, v98);
        v99 = OUTLINED_FUNCTION_30_40();
        sub_216C2D6B4(v99, v109);
        OUTLINED_FUNCTION_7_87();
        sub_216C2D6B4(v81, v110);
        v67 = 1;
        goto LABEL_14;
      }

      v118 = OUTLINED_FUNCTION_30_40();
      sub_216C2D6B4(v118, v119);
      sub_216C2D984();
      v120 = v132;
      sub_216C2D984();
      OUTLINED_FUNCTION_65_13();
      v121 = swift_getEnumCaseMultiPayload();
      if (v121)
      {
        v74 = v150;
        if (v121 == 1)
        {
          v122 = 256;
        }

        else
        {
          v122 = -256;
        }

        *(v4 + v150[7]) = v122;
        sub_216C2D6B4(v120, type metadata accessor for HorizontalLockupCollection.OneOf_Presentation);
LABEL_60:
        v125 = v74[8];
        v126 = 16;
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_29_39();
      sub_216C2D984();
      OUTLINED_FUNCTION_27_43();
      if (v120)
      {
        v127 = 0;
      }

      else
      {
        v127 = type metadata accessor for HorizontalLockupCollection.OneOf_Presentation;
      }

      if ((v127 & 0x80000000) == 0)
      {
        v74 = v150;
        if (v127 > 0xFF)
        {
          goto LABEL_65;
        }

        *(v4 + v150[7]) = v127;
        goto LABEL_60;
      }

LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      return;
    case 3:
      OUTLINED_FUNCTION_22_45();
      v94 = 31;
      goto LABEL_31;
    case 4:
      OUTLINED_FUNCTION_22_45();
      v94 = 51;
      goto LABEL_31;
    case 5:
      *(v4 + v74[7]) = -256;
      v93 = v74[8];
      v94 = 53;
      goto LABEL_31;
    case 6:
      OUTLINED_FUNCTION_54_20();
      v93 = v74[8];
      v94 = 1;
      goto LABEL_31;
    case 7:
      OUTLINED_FUNCTION_54_20();
      v93 = v74[8];
      v94 = 24;
      goto LABEL_31;
    case 8:
      sub_216C2D984();
      sub_2166A6EA4();
      OUTLINED_FUNCTION_31_2(v92, 1, v91);
      if (v76)
      {
        sub_217007874();
        OUTLINED_FUNCTION_33_33();
        OUTLINED_FUNCTION_65_13();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_31_2(v92, 1, v91);
        v123 = v140;
        if (!v76)
        {
          sub_216697664(v92, &qword_27CAC6578);
        }
      }

      else
      {
        OUTLINED_FUNCTION_33_33();
        OUTLINED_FUNCTION_32_28();
        sub_216C2D984();
        v123 = v140;
      }

      OUTLINED_FUNCTION_32_28();
      sub_216C2D984();
      OUTLINED_FUNCTION_65_13();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_29_39();
        sub_216C2D984();
        OUTLINED_FUNCTION_27_43();
        if (v123)
        {
          v124 = 0;
        }

        else
        {
          v124 = v74;
        }

        if ((v124 & 0x80000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v74 = v150;
          if (v124 <= 0xFF)
          {
            *(v4 + v150[7]) = v124;
            goto LABEL_51;
          }
        }

        __break(1u);
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_54_20();
      sub_216C2D6B4(v123, type metadata accessor for SongTrackLockupCollection.OneOf_Presentation);
LABEL_51:
      v125 = v74[8];
      v126 = 56;
LABEL_61:
      *(v4 + v125) = v126;
LABEL_32:
      *(v4 + v74[9]) = sub_216F8D230() & 1;
      if (sub_216F8D5F4())
      {
        v101 = sub_216F8D4DC();
        sub_216C2CC0C(v101, v102 & 1, v103, v104, v105, v106, v107, v108, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
        v112 = v111;
      }

      else
      {
        v112 = 3;
      }

      OUTLINED_FUNCTION_0_200();
      sub_216C2D6B4(v2, v113);
      OUTLINED_FUNCTION_7_87();
      sub_216C2D6B4(v81, v114);
      v115 = v150;
      *(v4 + v150[11]) = v112;
      *(v4 + v115[14]) = 1;
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948);
      OUTLINED_FUNCTION_72_16(v116);
      v117 = sub_21700D7A4();
      OUTLINED_FUNCTION_72_16(v117);
      goto LABEL_17;
    default:
      OUTLINED_FUNCTION_22_45();
      v94 = 8;
LABEL_31:
      *(v4 + v93) = v94;
      OUTLINED_FUNCTION_7_87();
      sub_216C2D6B4(v145, v100);
      goto LABEL_32;
  }
}

void sub_216C2CC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v24 & 1) == 0)
  {
    sub_217007C94();
    v33 = sub_217007C84();
    v34 = sub_21700ED84();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v44 = v20;
      v36 = v35;
      v37 = swift_slowAlloc();
      a10 = v37;
      *v36 = 136315394;
      v45 = v26;
      v38 = sub_21700F784();
      v40 = sub_2166A85FC(v38, v39, &a10);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      v45 = &type metadata for Section.BackgroundTreatment;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC65B0);
      v41 = sub_21700E594();
      v43 = sub_2166A85FC(v41, v42, &a10);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_216679000, v33, v34, "Unrecognized value '%s' for type '%s'", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v37, -1, -1);
      MEMORY[0x21CEA1440](v36, -1, -1);
    }

    (*(v29 + 8))(v32, v27);
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216C2CEB4()
{
  OUTLINED_FUNCTION_22_3();
  v3 = v2;
  v77 = v4;
  v5 = type metadata accessor for Section.Header.ContainerPlayableItemsHeader(0);
  v6 = OUTLINED_FUNCTION_36(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  *&v75 = v7;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47_1();
  v76 = v9;
  v10 = OUTLINED_FUNCTION_4_1();
  v11 = type metadata accessor for Section.Header.ComposerHeader(v10);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v69 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_47_1();
  v71 = v15;
  v16 = OUTLINED_FUNCTION_4_1();
  v68 = type metadata accessor for Section.Header.ColumnHeader(v16);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v72 = v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47_1();
  v74 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCB8);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  *&v73 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  v70 = v25;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47_1();
  v67 = v27;
  v28 = OUTLINED_FUNCTION_4_1();
  v29 = type metadata accessor for Section.Header.DefaultHeader(v28);
  v30 = OUTLINED_FUNCTION_36(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v31);
  v33 = &v67 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC65A0);
  OUTLINED_FUNCTION_36(v34);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  v37 = &v67 - v36;
  v38 = type metadata accessor for Section.Header.OneOf_InnerHeader(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_52_15();
  MEMORY[0x28223BE20](v40);
  sub_2166A6EA4();
  OUTLINED_FUNCTION_31_2(v37, 1, v38);
  if (v41)
  {
    sub_216697664(v37, &qword_27CAC65A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC65A8);
    sub_2167880BC();
    v42 = OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_33_5(xmmword_217054E80, v42, v43);
    OUTLINED_FUNCTION_1_173();
    sub_216C2D6B4(v3, v44);
  }

  else
  {
    sub_216C2D984();
    OUTLINED_FUNCTION_82_1();
    sub_216C2D65C();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_49_0();
        sub_216C2D984();
        v52 = &v77[*(_s7SectionV6HeaderVMa(0) + 20)];
        v53 = v72;
        sub_216C2D65C();
        v54 = (v53 + v68[5]);
        v55 = v54[1];
        v56 = (v53 + v68[6]);
        v57 = v56[1];
        v58 = (v53 + v68[7]);
        v59 = v58[1];
        v76 = *v58;
        *&v60 = *v56;
        v75 = v60;
        *&v60 = *v54;
        v73 = v60;
        sub_21700DF14();
        sub_21700DF14();
        sub_21700DF14();
        sub_216C2D6B4(v53, type metadata accessor for Section.Header.ColumnHeader);
        OUTLINED_FUNCTION_1_173();
        sub_216C2D6B4(v3, v61);
        v62 = OUTLINED_FUNCTION_19();
        sub_216C2D6B4(v62, v63);
        OUTLINED_FUNCTION_11_73();
        *&v64 = v73;
        *(&v64 + 1) = v55;
        *&v65 = v75;
        *(&v65 + 1) = v57;
        *v52 = v64;
        *(v52 + 16) = v65;
        *(v52 + 32) = v76;
        *(v52 + 40) = v59;
        v66 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        OUTLINED_FUNCTION_8();
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v52, 0, 1, v66);
        *v77 = 0;
        break;
      case 2:
        OUTLINED_FUNCTION_49_0();
        v0 = v71;
        sub_216C2D984();
        OUTLINED_FUNCTION_49_0();
        v49 = v69;
        sub_216C2D65C();
        v46 = v70;
        sub_216C2602C(v49, v70);
        OUTLINED_FUNCTION_1_173();
        sub_216C2D6B4(v3, v50);
        sub_216C2D6B4(v0, type metadata accessor for Section.Header.ComposerHeader);
        OUTLINED_FUNCTION_11_73();
        if (!v1)
        {
          OUTLINED_FUNCTION_35_32();
          v48 = 1;
          OUTLINED_FUNCTION_45();
          goto LABEL_11;
        }

        break;
      case 3:
        OUTLINED_FUNCTION_49_0();
        v0 = v76;
        sub_216C2D984();
        OUTLINED_FUNCTION_49_0();
        sub_216C2D65C();
        v46 = v73;
        sub_216C86CB8();
        OUTLINED_FUNCTION_1_173();
        sub_216C2D6B4(v3, v51);
        sub_216C2D6B4(v0, type metadata accessor for Section.Header.ContainerPlayableItemsHeader);
        OUTLINED_FUNCTION_11_73();
        if (!v1)
        {
          OUTLINED_FUNCTION_35_32();
          v48 = 3;
          OUTLINED_FUNCTION_45();
          goto LABEL_11;
        }

        break;
      default:
        OUTLINED_FUNCTION_49_0();
        sub_216C2D984();
        sub_216C2D65C();
        v46 = v67;
        sub_216BEE6C8(v67);
        OUTLINED_FUNCTION_1_173();
        sub_216C2D6B4(v3, v47);
        sub_216C2D6B4(v33, type metadata accessor for Section.Header.DefaultHeader);
        OUTLINED_FUNCTION_11_73();
        if (!v1)
        {
          OUTLINED_FUNCTION_35_32();
          v48 = 2;
          OUTLINED_FUNCTION_45();
LABEL_11:
          swift_storeEnumTagMultiPayload();
          __swift_storeEnumTagSinglePayload(v46, 0, 1, v0);
          *v77 = v48;
          _s7SectionV6HeaderVMa(0);
          sub_2167A4788();
        }

        break;
    }
  }

  OUTLINED_FUNCTION_21_4();
}

unint64_t sub_216C2D5C0()
{
  result = qword_27CAC6568;
  if (!qword_27CAC6568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6568);
  }

  return result;
}

uint64_t sub_216C2D65C()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216C2D6B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216C2D70C()
{
  result = qword_280E2C7E0;
  if (!qword_280E2C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C7E0);
  }

  return result;
}

uint64_t sub_216C2D760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6590);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_216C2D7D0()
{
  result = qword_280E2C7D0;
  if (!qword_280E2C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C7D0);
  }

  return result;
}

unint64_t sub_216C2D824()
{
  result = qword_280E2E660;
  if (!qword_280E2E660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2E660);
  }

  return result;
}

unint64_t sub_216C2D888()
{
  result = qword_280E2C7E8;
  if (!qword_280E2C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C7E8);
  }

  return result;
}

unint64_t sub_216C2D8DC()
{
  result = qword_280E2C710[0];
  if (!qword_280E2C710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2C710);
  }

  return result;
}

unint64_t sub_216C2D930()
{
  result = qword_27CAC65C8;
  if (!qword_27CAC65C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC65C8);
  }

  return result;
}

uint64_t sub_216C2D984()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

unint64_t sub_216C2D9DC()
{
  result = qword_27CAC65D8;
  if (!qword_27CAC65D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC65D8);
  }

  return result;
}

uint64_t sub_216C2DA30(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_216C2DA84()
{
  result = qword_280E2C658;
  if (!qword_280E2C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C658);
  }

  return result;
}

_BYTE *_s7SectionV11SectionKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216C2DBC8()
{
  result = qword_27CAC65F0;
  if (!qword_27CAC65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC65F0);
  }

  return result;
}

unint64_t sub_216C2DC1C()
{
  result = qword_27CAC65F8;
  if (!qword_27CAC65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC65F8);
  }

  return result;
}

_BYTE *_s7SectionV12PresentationO22CollectionPresentationV9FlowStyleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_216C2DD4C(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65283;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 2)
  {
    v5 = -1;
  }

  else
  {
    v5 = v6 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t sub_216C2DDDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = -a2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216C2DEA8(unsigned __int8 *a1)
{
  if (a1[1] <= 1u)
  {
    return a1[1];
  }

  else
  {
    return *a1 + 2;
  }
}

_BYTE *sub_216C2DEC0(_BYTE *result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  result[1] = a2;
  return result;
}

unint64_t sub_216C2DEEC()
{
  result = qword_27CAC6600;
  if (!qword_27CAC6600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6600);
  }

  return result;
}

uint64_t sub_216C2DF48(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  v22 = v23;
  v21[0] = v1;
  v21[1] = v2;
  v3 = static MusicTabID.== infix(_:_:)(&v22, v21);
  result = sub_2166E8284(v22, *(&v22 + 1));
  if ((v3 & 1) == 0)
  {
    if (qword_280E46AD8 != -1)
    {
      swift_once();
    }

    v5 = sub_217007CA4();
    __swift_project_value_buffer(v5, qword_280E73DE8);
    v6 = OUTLINED_FUNCTION_82();
    sub_2166E8270(v6, v7);
    v8 = sub_217007C84();
    v9 = sub_21700EDA4();
    v10 = OUTLINED_FUNCTION_82();
    sub_2166E8284(v10, v11);
    if (os_log_type_enabled(v8, v9))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v22 = v13;
      *v12 = 136446210;
      *&v23 = v1;
      *(&v23 + 1) = v2;
      v14 = OUTLINED_FUNCTION_82();
      sub_2166E8270(v14, v15);
      v16 = sub_21700E594();
      v18 = sub_2166A85FC(v16, v17, &v22);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_216679000, v8, v9, "Notifying of tab changed to %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x21CEA1440](v13, -1, -1);
      MEMORY[0x21CEA1440](v12, -1, -1);
    }

    *&v23 = v1;
    *(&v23 + 1) = v2;
    v19 = OUTLINED_FUNCTION_82();
    sub_2166E8270(v19, v20);
    sub_216C2E1D8();
    *&v23 = v1;
    *(&v23 + 1) = v2;
    return sub_217007D74();
  }

  return result;
}

uint64_t sub_216C2E160()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_216C2E1D8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216C2E250()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6610);
  sub_2166D9530(&qword_27CAC6628, &qword_27CAC6610);
  return sub_217007E24();
}

uint64_t sub_216C2E2E4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E73DE8);
  __swift_project_value_buffer(v0, qword_280E73DE8);
  return sub_217007C94();
}

uint64_t sub_216C2E364()
{
  v1 = OBJC_IVAR____TtC7MusicUI23MusicTabChangePublisher__selectedTab;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6608);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_216C2E41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6618);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  if (a2)
  {

    v16 = sub_216C2E250();

    v17 = swift_allocObject();
    *(v17 + 2) = a2;
    *(v17 + 3) = a3;
    *(v17 + 4) = a4;
    *(v17 + 5) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6620);
    OUTLINED_FUNCTION_34();
    (*(v18 + 16))(v15, a1);
    *&v15[*(v12 + 52)] = v16;
    v19 = &v15[*(v12 + 56)];
    *v19 = sub_216C2E734;
    v19[1] = v17;
    sub_216C2E770(v15, a6);
  }

  else
  {
    type metadata accessor for MusicTabChangePublisher();
    sub_216C2E6DC();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

double sub_216C2E5B0@<D0>(_OWORD *a1@<X8>)
{
  sub_216C2E160();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_216C2E630(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_216C2E670(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_216C2E6DC()
{
  result = qword_280E46AC8;
  if (!qword_280E46AC8)
  {
    type metadata accessor for MusicTabChangePublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46AC8);
  }

  return result;
}

uint64_t sub_216C2E734(__int128 *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_216C2E770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6618);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_216C2E7E0()
{
  OUTLINED_FUNCTION_28_36();
  if (v4)
  {
    while (1)
    {
      sub_2167ADC3C(v3, __src);
      v5 = v2(__src);
      if (v0)
      {
        sub_2167ADC98(__src);
        return;
      }

      if (v5)
      {
        break;
      }

      sub_2167ADC98(__src);
      v3 += 72;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    memcpy(v1, __src, 0x48uLL);
  }

  else
  {
LABEL_5:
    *(v1 + 8) = 0;
    v1[2] = 0u;
    v1[3] = 0u;
    *v1 = 0u;
    v1[1] = 0u;
  }
}

void sub_216C2E88C()
{
  OUTLINED_FUNCTION_28_36();
  if (v4)
  {
    while (1)
    {
      sub_216880D18(v3, v6);
      v5 = v2(v6);
      if (v0)
      {
        sub_216880DBC(v6);
        return;
      }

      if (v5)
      {
        break;
      }

      sub_216880DBC(v6);
      v3 += 128;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    memcpy(v1, v6, 0x80uLL);
  }

  else
  {
LABEL_5:
    v1[6] = 0u;
    v1[7] = 0u;
    v1[4] = 0u;
    v1[5] = 0u;
    v1[2] = 0u;
    v1[3] = 0u;
    *v1 = 0u;
    v1[1] = 0u;
  }
}

uint64_t sub_216C2E93C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = 0;
  v14 = *(a2 + 16);
  while (1)
  {
    if (v14 == v13)
    {
      v16 = 1;
      v17 = a3;
      return __swift_storeEnumTagSinglePayload(v17, v16, 1, v6);
    }

    sub_216C379D4(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v12, type metadata accessor for MappedSection);
    v15 = a1(v12);
    if (v3)
    {
      return sub_216C38088(v12, type metadata accessor for MappedSection);
    }

    if (v15)
    {
      break;
    }

    sub_216C38088(v12, type metadata accessor for MappedSection);
    ++v13;
  }

  v17 = a3;
  sub_216C37A30(v12, a3, type metadata accessor for MappedSection);
  v16 = 0;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v6);
}

uint64_t sub_216C2EAE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for ReplayPageView(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  swift_storeEnumTagMultiPayload();
  memset(v22, 0, sizeof(v22));
  sub_216683A80(v22, v21, &qword_27CABA690);
  v5 = OUTLINED_FUNCTION_82();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  sub_21700AEA4();
  sub_2166997CC(v22, &qword_27CABA690);
  v6 = a2 + v3[7];
  LOBYTE(v21[0]) = 0;
  sub_21700AEA4();
  v7 = *(&v22[0] + 1);
  *v6 = v22[0];
  *(v6 + 1) = v7;
  OUTLINED_FUNCTION_38_34(a2 + v3[8]);
  v8 = v3[9];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_38_34(a2 + v3[10]);
  OUTLINED_FUNCTION_38_34(a2 + v3[11]);
  OUTLINED_FUNCTION_38_34(a2 + v3[12]);
  v9 = (a2 + v3[13]);
  type metadata accessor for ReplayToolbarPagePresenter(0);
  v10 = swift_allocObject();
  sub_216EC8A28(v10, v11, v12, v13, v14, v15, v16, v17, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11]);
  v21[0] = v18;
  result = sub_21700AEA4();
  v20 = *(&v22[0] + 1);
  *v9 = *&v22[0];
  v9[1] = v20;
  return result;
}

void sub_216C2ECE0()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v16[0] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6950);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = v16 - v11;
  sub_2166AF2EC();
  v13 = sub_21700EE84();
  v16[1] = v13;
  v14 = sub_21700EE64();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9130);
  sub_2166D9530(&qword_27CAC6958, &qword_27CAB9130);
  sub_216C36C54(&qword_280E29CD8, sub_2166AF2EC);
  sub_217007E54();
  sub_2166997CC(v6, &qword_27CABE1F0);

  swift_allocObject();
  swift_weakInit();
  sub_2166D9530(&qword_27CAC6960, &qword_27CAC6950);
  v15 = sub_217007E84();

  (*(v9 + 8))(v12, v7);
  *(v1 + OBJC_IVAR____TtC7MusicUI17ReplayTaskManager_contentPagePresenterObservation) = v15;

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C2EF9C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_82();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_67_0();
  sub_216683A80(a1, v1, &qword_27CABB9E8);
  return sub_2168D8828(v1);
}

double sub_216C2F030()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_201();
  sub_216C36C54(v1, v2);
  OUTLINED_FUNCTION_116_0();

  return *(v0 + 16);
}

double sub_216C2F0B0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_201();
  sub_216C36C54(v1, v2);
  OUTLINED_FUNCTION_116_0();

  return *(v0 + 24);
}

void sub_216C2F130()
{
  OUTLINED_FUNCTION_49();
  v147 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E28);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v5);
  v143 = sub_21700D574();
  OUTLINED_FUNCTION_1();
  v139 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v9 - v8);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC67D8);
  OUTLINED_FUNCTION_1();
  v135 = v10;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v12);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC67E0);
  OUTLINED_FUNCTION_1();
  v140 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  v17 = OUTLINED_FUNCTION_36(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77();
  v124 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v150 = v121 - v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_70(v121 - v23);
  v24 = type metadata accessor for ReplayPageView(0);
  OUTLINED_FUNCTION_1();
  v148 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_70(v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9E8);
  OUTLINED_FUNCTION_36(v29);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  v32 = v121 - v31;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC67E8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_25_1();
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC67F0);
  OUTLINED_FUNCTION_1();
  v128 = v34;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v36);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC67F8);
  OUTLINED_FUNCTION_1();
  v129 = v37;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v39);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6800);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v41);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6808);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v43);
  v44 = v0 + *(v24 + 44);
  v45 = *(v44 + 8);
  v137 = *v44;
  v123 = v45;
  v122 = *(v44 + 16);
  v121[2] = type metadata accessor for MusicPageMetricsProvider();
  v121[1] = sub_216C36C54(qword_280E46A08, type metadata accessor for MusicPageMetricsProvider);
  sub_2170081B4();
  v46 = sub_216C0CD74();
  v149 = v46;

  sub_217009C64();
  v153 = v46;
  v154 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6810);
  sub_216C36DB8();
  sub_217008054();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6870);
  type metadata accessor for ReplayPageGeometry(0);
  sub_217007FF4();
  v47 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6878) + 36));
  *v47 = 0xD000000000000021;
  v47[1] = 0x8000000217084850;
  sub_216C0C94C();
  v48 = sub_216C093A4();
  sub_2166997CC(v32, &qword_27CABB9E8);
  v160 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCC0);
  sub_2166D9530(&qword_280E48520, &qword_27CABCCC0);
  sub_217007E64();
  v50 = v0;

  v51 = v141;
  sub_216C379D4(v0, v141, type metadata accessor for ReplayPageView);
  v52 = (*(v148 + 80) + 16) & ~*(v148 + 80);
  v53 = swift_allocObject();
  sub_216C37A30(v51, v53 + v52, type metadata accessor for ReplayPageView);
  v54 = (v1 + *(v49 + 56));
  *v54 = sub_216C370AC;
  v54[1] = v53;
  KeyPath = swift_getKeyPath();
  type metadata accessor for PersistentPageSectionManager();
  sub_216C36C54(&unk_280E32060, type metadata accessor for PersistentPageSectionManager);
  v56 = sub_2170081B4();
  v57 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6888) + 36));
  *v57 = KeyPath;
  v57[1] = v56;
  v58 = sub_21700B3A4();
  v60 = v59;
  v61 = v1 + *(v151 + 36);
  sub_216C30B7C(v61);
  v62 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6890) + 36));
  *v62 = v58;
  v62[1] = v60;
  v63 = sub_2170081B4();
  v64 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  swift_beginAccess();
  v65 = v152;
  sub_216683A80(v63 + v64, v152, &qword_27CAB8DF8);

  v137 = v24;
  v66 = v150;
  v141 = v50;
  type metadata accessor for ReplayPageView.ImpressionsTracker();
  sub_216C36C54(&qword_280E42F98, type metadata accessor for ReplayPageView.ImpressionsTracker);
  OUTLINED_FUNCTION_8();
  v148 = *(sub_2170081B4() + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30);
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v67 = v162;
  v68 = v163;
  __swift_project_boxed_opaque_existential_1(&v160, v162);
  v69 = (*(v68 + 8))(v67, v68);
  v71 = v70;
  sub_216683A80(v65, v66, &qword_27CAB8DF8);
  v72 = sub_21700D194();
  if (__swift_getEnumTagSinglePayload(v66, 1, v72))
  {
  }

  else
  {
    v73 = sub_21700D0E4();
    if (*v74)
    {
      v157 = MEMORY[0x277D837D0];
      v155 = v69;
      v156 = v71;
      sub_2166EF928();
    }

    else
    {
    }

    v73(&v158, 0);
  }

  v75 = sub_216C3710C();
  v76 = v134;
  v77 = v151;
  sub_21700A224();
  v78 = v124;
  sub_216683A80(v66, v124, &qword_27CAB8DF8);
  v79 = v136;
  v80 = v143;
  sub_21700D444();
  v81 = v144;
  sub_217007584();
  v82 = sub_217007594();
  __swift_storeEnumTagSinglePayload(v81, 0, 1, v82);
  v158 = v77;
  v159 = v75;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = v138;
  v151 = v1;
  v85 = v142;
  sub_21700A194();
  sub_2166997CC(v81, &qword_27CAC1E28);
  OUTLINED_FUNCTION_67();
  v86(v79, v80);
  sub_2166997CC(v78, &qword_27CAB8DF8);
  OUTLINED_FUNCTION_67();
  v87(v76, v85);
  sub_21700D844();
  sub_21700D444();
  v158 = v85;
  v159 = OpaqueTypeConformance2;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = v126;
  v90 = v146;
  sub_21700A1F4();

  OUTLINED_FUNCTION_67();
  v91(v84, v90);
  OUTLINED_FUNCTION_71_0();
  sub_2166997CC(v92, v93);
  sub_2166997CC(v151, &qword_27CAC67E8);
  OUTLINED_FUNCTION_71_0();
  sub_2166997CC(v94, v95);
  __swift_destroy_boxed_opaque_existential_1Tm(&v160);
  v96 = v137;
  v97 = v141;
  v98 = (v141 + *(v137 + 28));
  v99 = *v98;
  v100 = *(v98 + 1);
  LOBYTE(v158) = v99;
  v159 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AED4();
  v160 = v90;
  v161 = v88;
  swift_getOpaqueTypeConformance2();
  v101 = v127;
  v102 = v131;
  sub_21700A1B4();

  OUTLINED_FUNCTION_67();
  v103(v89, v102);
  type metadata accessor for ReplayToolbarPagePresenter(0);
  sub_216C36C54(&qword_27CAB9120, type metadata accessor for ReplayToolbarPagePresenter);
  v104 = sub_217008CF4();
  v106 = v105;
  v107 = v132;
  (*(v129 + 32))(v132, v101, v133);
  v108 = (v107 + *(v125 + 36));
  *v108 = v104;
  v108[1] = v106;
  v109 = (v97 + *(v96 + 52));
  v111 = *v109;
  v110 = v109[1];
  v160 = v111;
  v161 = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC68B8);
  sub_21700AEB4();
  v112 = v158;
  v113 = sub_217007D54();
  v114 = v145;
  sub_2167C5834(v107, v145, &qword_27CAC6800);
  v115 = (v114 + *(v130 + 36));
  *v115 = v113;
  v115[1] = v112;
  if (qword_280E464C0 != -1)
  {
    swift_once();
  }

  type metadata accessor for MusicUINetworkConnectivityMonitor();
  sub_216C36C54(&qword_280E464A8, type metadata accessor for MusicUINetworkConnectivityMonitor);

  v116 = sub_217008684();
  v118 = v117;

  v119 = v147;
  sub_2167C5834(v114, v147, &qword_27CAC6808);
  v120 = (v119 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC68C0) + 36));
  *v120 = v116;
  v120[1] = v118;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C30164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v38 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6828) - 8;
  MEMORY[0x28223BE20](v37);
  v36 = (v33 - v4);
  v5 = type metadata accessor for ReplayPageView(0);
  type metadata accessor for ReplayPageView.ImpressionsTracker();
  sub_216C36C54(&qword_280E42F98, type metadata accessor for ReplayPageView.ImpressionsTracker);
  v6 = *(sub_2170081B4() + 16);

  v7 = *(v5 + 32);
  v35 = a2;
  v33[3] = *(a2 + v7 + 16);
  type metadata accessor for ReplayTaskManager(0);
  sub_216C36C54(&qword_280E3FA50, type metadata accessor for ReplayTaskManager);
  sub_2170081B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6A0);
  sub_21700AED4();
  v8 = (a2 + *(v5 + 28));
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v40) = v9;
  *(&v40 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AED4();
  v11 = v42[0];
  v12 = v42[1];
  *&v41[0] = v34;
  *(&v41[0] + 1) = v6;
  *&v41[1] = MEMORY[0x277D221C0];

  *(&v41[1] + 1) = sub_217008684();
  *&v41[2] = v13;
  *(&v41[11] + 8) = v11;
  BYTE8(v41[12]) = v12;
  sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  v41[13] = v42[0];
  v41[14] = v42[1];
  *&v41[15] = *&v42[2];
  BYTE8(v41[15]) = BYTE8(v42[2]);
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118);
  sub_21700AEA4();
  v41[16] = v40;
  *&v41[17] = swift_getKeyPath();
  BYTE8(v41[17]) = 1;
  sub_2170081B4();
  v14 = sub_216C3073C();

  if (v14)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  memcpy(v42, v41, 0x119uLL);
  v16 = sub_21700B354();
  v18 = v17;
  v19 = v36;
  v20 = v36 + *(v37 + 44);
  sub_216C30794(v20);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6868) + 36));
  *v21 = v16;
  v21[1] = v18;
  memcpy(v19, v42, 0x120uLL);
  v19[36] = v15;
  LOBYTE(v16) = sub_217009C94();
  sub_217007F24();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v38;
  sub_2167C5834(v19, v38, &qword_27CAC6828);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6810);
  v32 = v30 + *(result + 36);
  *v32 = v16;
  *(v32 + 8) = v23;
  *(v32 + 16) = v25;
  *(v32 + 24) = v27;
  *(v32 + 32) = v29;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_216C30594()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216C30610@<X0>(uint64_t a1@<X8>)
{
  result = sub_216C30594();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_216C306A8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216C3073C()
{
  v0 = sub_216C30594();
  if (v1)
  {
    if (v1 == 1)
    {

      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_216C30794@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC68E8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16[-1] - v3;
  type metadata accessor for ReplayPageView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6A0);
  sub_21700AEB4();
  if (v16[1])
  {
    memcpy(v17, v16, 0x80uLL);
    sub_216880D18(v17, v4);
    type metadata accessor for ReplayTaskManager(0);
    sub_216C36C54(&qword_280E3FA50, type metadata accessor for ReplayTaskManager);
    sub_2170081B4();
    v5 = sub_216C30A10();

    v6 = type metadata accessor for BackgroundGradientView(0);
    sub_216C0C900();
    v4[128] = v5 & 1;
    v7 = &v4[*(v6 + 28)];
    type metadata accessor for ReplayPageGeometry(0);
    sub_216C36C54(&qword_27CABA750, type metadata accessor for ReplayPageGeometry);
    *v7 = sub_217008104();
    v7[8] = v8 & 1;
    v9 = sub_217009C94();
    v10 = sub_217008A34();
    sub_216880DBC(v17);
    v11 = &v4[*(v2 + 36)];
    *v11 = v10;
    v11[8] = v9;
    sub_2167C5834(v4, a1, &qword_27CAC68E8);
    v12 = a1;
    v13 = 0;
  }

  else
  {
    sub_2166997CC(v16, &qword_27CABA690);
    v12 = a1;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v2);
}

uint64_t sub_216C30A10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216C30A84(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(result + 16);
    v3 = *result;
    type metadata accessor for ReplayPageView(0);
    type metadata accessor for PersistentPageSectionManager();
    sub_216C36C54(&unk_280E32060, type metadata accessor for PersistentPageSectionManager);
    sub_2170081B4();
    sub_216B7354C(v3 & 1, v1, v2);
  }

  return result;
}

uint64_t sub_216C30B7C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9140);
  v22 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v2 = &v22 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9150);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v23 = &v22 - v4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC68C8);
  MEMORY[0x28223BE20](v26);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC68D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC68D8);
  MEMORY[0x28223BE20](v27);
  v11 = &v22 - v10;
  type metadata accessor for ReplayPageView(0);
  type metadata accessor for ReplayTaskManager(0);
  sub_216C36C54(&qword_280E3FA50, type metadata accessor for ReplayTaskManager);
  sub_2170081B4();
  v12 = sub_216C30594();
  v14 = v13;

  if (v14)
  {
    if (v14 == 1)
    {

      swift_storeEnumTagMultiPayload();
      sub_2166D9530(&qword_280E48630, &qword_27CAB9150);
      sub_217009554();
      sub_216683A80(v11, v6, &qword_27CAC68D8);
      swift_storeEnumTagMultiPayload();
      sub_216C372A8();
      sub_2166D9530(qword_280E48638, &qword_27CAB9140);
      sub_217009554();
      return sub_2166997CC(v11, &qword_27CAC68D8);
    }

    else
    {
      sub_217007514();
      v20 = v22;
      v21 = v29;
      (*(v22 + 16))(v6, v2, v29);
      swift_storeEnumTagMultiPayload();
      sub_216C372A8();
      sub_2166D9530(qword_280E48638, &qword_27CAB9140);
      sub_217009554();
      return (*(v20 + 8))(v2, v21);
    }
  }

  else
  {
    v16 = v12;

    v17 = v23;
    sub_217007564();
    v19 = v24;
    v18 = v25;
    (*(v24 + 16))(v9, v17, v25);
    swift_storeEnumTagMultiPayload();
    sub_2166D9530(&qword_280E48630, &qword_27CAB9150);
    sub_217009554();
    sub_216683A80(v11, v6, &qword_27CAC68D8);
    swift_storeEnumTagMultiPayload();
    sub_216C372A8();
    sub_2166D9530(qword_280E48638, &qword_27CAB9140);
    sub_217009554();

    sub_2166997CC(v11, &qword_27CAC68D8);
    return (*(v19 + 8))(v17, v18);
  }
}