uint64_t sub_21BD64ED8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_familyCircle);
  v2 = *(a1 + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_membersToRender);
  v3 = type metadata accessor for FAImageMarqueeViewModel();
  v4 = swift_allocObject();

  v9[0] = sub_21BC2AC78(v5);
  sub_21BC29DF8(v9);
  *(v4 + 16) = v9[0];
  v9[3] = v3;
  v9[4] = &off_282D8B0F8;
  v9[0] = v4;
  [objc_allocWithZone(FAProfilePictureStore) initWithFamilyCircle_];
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BC2ACA4();
  v9[5] = sub_21BE270CC();
  v9[6] = v6;
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB958, &unk_21BE47EE0));
  return sub_21BE2774C();
}

id FAImageMarqueeViewWrapperImpl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FAImageMarqueeViewWrapperImpl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FAImageMarqueeViewWrapperImpl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BD651A8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ChecklistStateVars();
  sub_21BD67F14(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  *a1 = sub_21BE26E9C();
  *(a1 + 8) = v2 & 1;
  v3 = type metadata accessor for SharedGroceryListFlowView();
  v4 = *(v3 + 20);
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for SharedGroceryListItemModel();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 18) = 0;
  *(v8 + 24) = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v9 = *(qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_aidaAccountManager);
  *(v8 + 32) = v9;
  v10 = v9;
  sub_21BE25F4C();
  v11 = (a1 + *(v3 + 24));
  sub_21BE283EC();
  *v11 = v14;
  v11[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB960, &qword_21BE47F28);
  sub_21BE283FC();
  if (*(v8 + 16) == 1)
  {
    *(v8 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BD67F14(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
    sub_21BE25F0C();
  }
}

uint64_t sub_21BD65478@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BD67F14(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
  sub_21BE25F1C();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t type metadata accessor for SharedGroceryListFlowView()
{
  result = qword_27CDBB968;
  if (!qword_27CDBB968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD655BC()
{
  sub_21BD656E8(319, &qword_27CDB56D8, type metadata accessor for ChecklistStateVars, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21BD656E8(319, &qword_280BD6A40, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21BD656E8(319, &qword_27CDBB978, type metadata accessor for SharedGroceryListItemModel, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21BD656E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21BD65768@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SharedGroceryListFlowView();
  sub_21BBA3854(v1 + *(v12 + 20), v11, &unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE26F5C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_21BE28FEC();
    v16 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21BD65970@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v2 = type metadata accessor for SharedGroceryListFlowView();
  v3 = v2 - 8;
  v83 = *(v2 - 8);
  v4 = v83[8];
  MEMORY[0x28223BE20](v2);
  v84 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56E0, &unk_21BE326D0);
  v5 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v7 = (v75 - v6);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB980, &qword_21BE47FE8);
  v8 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v99 = v75 - v9;
  v94 = type metadata accessor for SharedFamilyGroceryIntroView();
  v10 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v92 = (v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB988, &qword_21BE47FF0);
  v86 = *(v97 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = v75 - v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB990, &qword_21BE47FF8);
  v88 = *(v98 - 8);
  v14 = *(v88 + 64);
  MEMORY[0x28223BE20](v98);
  v87 = v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB998, &qword_21BE48000);
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v85 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v75 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB9A0, &qword_21BE48008);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v96 = v75 - v25;
  v26 = swift_allocBox();
  v102 = v1;
  v103 = v26;
  v28 = v27;
  v29 = (v1 + *(v3 + 32));
  v31 = *v29;
  v30 = v29[1];
  v104 = v31;
  v105 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB960, &qword_21BE47F28);
  sub_21BE283FC();
  type metadata accessor for SharedGroceryListItemModel();
  sub_21BD67F14(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
  sub_21BE2864C();
  v32 = v17[2];
  v91 = v28;
  v89 = v32;
  v32(v22, v28, v16);
  sub_21BE2862C();
  v90 = v17[1];
  v90(v22, v16);
  v33 = v104;
  swift_getKeyPath();
  v104 = v33;
  sub_21BE25F1C();

  v34 = *(v33 + 16);

  if (v34)
  {
    v35 = v84;
    sub_21BD67F5C(v102, v84);
    v36 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v37 = swift_allocObject();
    sub_21BD67FC0(v35, v37 + v36);
    v38 = (v7 + *(v100 + 36));
    LODWORD(v35) = *(sub_21BE2701C() + 20);
    v39 = v103;

    sub_21BE28D8C();
    *v38 = &unk_21BE48078;
    v38[1] = v39;
    *v7 = sub_21BD686A0;
    v7[1] = v37;
    sub_21BBA3854(v7, v99, &qword_27CDB56E0, &unk_21BE326D0);
    swift_storeEnumTagMultiPayload();
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB55A0, &unk_21BE32460);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
    v42 = sub_21BD67F14(&qword_27CDBB9A8, type metadata accessor for SharedFamilyGroceryIntroView);
    v43 = sub_21BB41FA4();
    v44 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60);
    v45 = MEMORY[0x277D837D0];
    v104 = v94;
    v105 = MEMORY[0x277D837D0];
    v106 = v41;
    v107 = MEMORY[0x277CE0BD8];
    v108 = v42;
    v109 = v43;
    v110 = v44;
    v111 = MEMORY[0x277CE0BC8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v47 = sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
    v104 = v97;
    v105 = v45;
    v106 = v40;
    v107 = OpaqueTypeConformance2;
    v108 = v43;
    v109 = v47;
    swift_getOpaqueTypeConformance2();
    sub_21BBA6BC8();
    v48 = v96;
    sub_21BE2784C();
    sub_21BB3A4CC(v7, &qword_27CDB56E0, &unk_21BE326D0);
  }

  else
  {
    sub_21BD15C7C(v92);
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v84 = ObjCClassFromMetadata;
    v83 = objc_opt_self();
    v50 = [v83 bundleForClass_];
    v51 = sub_21BE2599C();
    v53 = v52;
    v78 = v52;

    v112 = v51;
    v113 = v53;
    v54 = v85;
    v89(v85, v91, v16);
    sub_21BE2863C();
    v55 = v90;
    v90(v54, v16);
    swift_getKeyPath();
    sub_21BE2865C();

    v56 = v55(v22, v16);
    v77 = v75;
    v75[1] = v104;
    v75[0] = v105;
    v76 = v106;
    MEMORY[0x28223BE20](v56);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8130, &qword_21BE3ED60);
    v79 = sub_21BD67F14(&qword_27CDBB9A8, type metadata accessor for SharedFamilyGroceryIntroView);
    v81 = sub_21BB41FA4();
    v82 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60);
    v57 = v94;
    v58 = v92;
    sub_21BE280EC();

    sub_21BD67EB0(v58);
    v59 = [v83 bundleForClass_];
    v60 = sub_21BE2599C();
    v62 = v61;
    v92 = v61;

    v115 = v60;
    v116 = v62;
    v89(v54, v91, v16);
    sub_21BE2863C();
    v63 = v90;
    v90(v54, v16);
    swift_getKeyPath();
    sub_21BE2865C();

    v64 = v63(v22, v16);
    v91 = v75;
    LODWORD(v90) = v114;
    MEMORY[0x28223BE20](v64);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
    v104 = v57;
    v105 = MEMORY[0x277D837D0];
    v106 = v80;
    v107 = MEMORY[0x277CE0BD8];
    v108 = v79;
    v66 = v81;
    v109 = v81;
    v110 = v82;
    v111 = MEMORY[0x277CE0BC8];
    v67 = swift_getOpaqueTypeConformance2();
    v74 = sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
    v68 = v87;
    v69 = v97;
    v70 = v93;
    sub_21BE280FC();

    (*(v86 + 8))(v70, v69);
    v71 = v88;
    v72 = v98;
    (*(v88 + 16))(v99, v68, v98);
    swift_storeEnumTagMultiPayload();
    v104 = v69;
    v105 = MEMORY[0x277D837D0];
    v106 = v65;
    v107 = v67;
    v108 = v66;
    v109 = v74;
    swift_getOpaqueTypeConformance2();
    sub_21BBA6BC8();
    v48 = v96;
    sub_21BE2784C();
    (*(v71 + 8))(v68, v72);
  }

  sub_21BB55AA4(v48, v101);
}

uint64_t sub_21BD667A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v59 = a2;
  v61 = a1;
  v68 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v67 = &v54 - v6;
  v7 = sub_21BE271FC();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SharedGroceryListFlowView();
  v57 = *(v11 - 8);
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v60 = *(v69 - 8);
  v13 = *(v60 + 64);
  v14 = MEMORY[0x28223BE20](v69);
  v66 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - v16;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8160, &unk_21BE3AE60);
  v70 = *(v65 - 8);
  v18 = v70[8];
  v19 = MEMORY[0x28223BE20](v65);
  v64 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v56 = &v54 - v21;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v55 = ObjCClassFromMetadata;
  v23 = objc_opt_self();
  v24 = [v23 bundleForClass_];
  v25 = sub_21BE2599C();
  v27 = v26;

  v71 = v25;
  v72 = v27;
  v28 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BD67F5C(a2, v28);
  v29 = (*(v57 + 80) + 24) & ~*(v57 + 80);
  v30 = swift_allocObject();
  v31 = v61;
  *(v30 + 16) = v61;
  sub_21BD67FC0(v28, v30 + v29);
  v57 = sub_21BB41FA4();

  sub_21BE2845C();
  sub_21BE271EC();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
  v32 = v69;
  sub_21BE27FBC();
  (*(v62 + 8))(v10, v63);
  v33 = v60;
  v62 = *(v60 + 8);
  v63 = v60 + 8;
  (v62)(v17, v32);
  v34 = [v23 bundleForClass_];
  v35 = sub_21BE2599C();
  v37 = v36;

  v71 = v35;
  v72 = v37;
  v38 = v67;
  sub_21BE26DEC();
  v39 = sub_21BE26DFC();
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  sub_21BD67F5C(v59, v28);
  v40 = swift_allocObject();
  *(v40 + 16) = v31;
  sub_21BD67FC0(v28, v40 + v29);

  v54 = v17;
  sub_21BE2844C();
  v41 = v70[2];
  v42 = v64;
  v43 = v65;
  v44 = v56;
  v41(v64, v56, v65);
  v45 = *(v33 + 16);
  v46 = v66;
  v47 = v17;
  v48 = v69;
  v45(v66, v47, v69);
  v49 = v68;
  v41(v68, v42, v43);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8168, &qword_21BE48080);
  v45(&v49[*(v50 + 48)], v46, v48);
  v51 = v62;
  (v62)(v54, v48);
  v52 = v70[1];
  v52(v44, v43);
  v51(v46, v48);
  return (v52)(v42, v43);
}

uint64_t sub_21BD66E58(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21BE26F5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB998, &qword_21BE48000);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - v14;
  v16 = objc_opt_self();
  v36[0] = 0;
  v17 = [v16 urlDestinationTo:11 error:v36];
  v18 = v36[0];
  if (v17)
  {
    v19 = v17;
    sub_21BE25B5C();
    v20 = v18;

    v21 = 0;
  }

  else
  {
    v22 = v36[0];
    v23 = sub_21BE25A8C();
    v34 = v6;
    v24 = v2;
    v25 = v23;

    swift_willThrow();
    v26 = v25;
    v2 = v24;
    v6 = v34;

    v21 = 1;
  }

  v27 = sub_21BE25B9C();
  (*(*(v27 - 8) + 56))(v15, v21, 1, v27);
  sub_21BDEF00C(v15);
  v28 = swift_projectBox();
  (*(v8 + 16))(v11, v28, v7);
  sub_21BE2862C();
  (*(v8 + 8))(v11, v7);
  v29 = v36[0];
  if (*(v36[0] + 17))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v33 - 2) = v29;
    *(&v33 - 8) = 0;
    v36[0] = v29;
    sub_21BD67F14(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
    sub_21BE25F0C();
  }

  else
  {
    *(v36[0] + 17) = 0;
  }

  sub_21BD65768(v6);
  sub_21BE26F4C();
  (*(v3 + 8))(v6, v2);
  result = sub_21BB3A4CC(v15, &unk_27CDB57F0, &qword_21BE328A0);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21BD67278()
{
  v0 = sub_21BE26F5C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB998, &qword_21BE48000);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = swift_projectBox();
  (*(v6 + 16))(v9, v10, v5);
  sub_21BE2862C();
  (*(v6 + 8))(v9, v5);
  v11 = v15;
  if (*(v15 + 17))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v11;
    *(&v14 - 8) = 0;
    v15 = v11;
    sub_21BD67F14(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
    sub_21BE25F0C();
  }

  else
  {
    *(v15 + 17) = 0;
  }

  sub_21BD65768(v4);
  sub_21BE26F4C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21BD67520(uint64_t a1)
{
  v2 = type metadata accessor for SharedGroceryListFlowView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_21BE2599C();
  v9 = v8;

  v13[0] = v7;
  v13[1] = v9;
  sub_21BD67F5C(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21BD67FC0(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_21BB41FA4();
  return sub_21BE2845C();
}

uint64_t sub_21BD676BC(uint64_t a1)
{
  v20 = sub_21BE2754C();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v19 - v8);
  v10 = sub_21BE26F5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SharedGroceryListFlowView();
  sub_21BBA3854(a1 + *(v15 + 20), v9, &unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_21BE28FEC();
    v17 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  sub_21BE26F4C();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21BD67944(uint64_t a1)
{
  v1[6] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB998, &qword_21BE48000);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  sub_21BE28D7C();
  v1[10] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[11] = v6;
  v1[12] = v5;

  return MEMORY[0x2822009F8](sub_21BD67A44, v6, v5);
}

uint64_t sub_21BD67A44()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = swift_projectBox();
  v6 = *(v2 + 16);
  v6(v1, v5, v4);
  sub_21BE2862C();
  v7 = *(v2 + 8);
  v7(v1, v4);
  v8 = v0[2];
  LOBYTE(v4) = sub_21BD30D68();

  if (v4)
  {
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[7];

    v6(v10, v5, v11);
    sub_21BE2862C();
    v7(v10, v11);
    v12 = v0[4];
    if (*(v12 + 16))
    {
      swift_getKeyPath();
      v13 = swift_task_alloc();
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      v0[5] = v12;
      sub_21BD67F14(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
      sub_21BE25F0C();
    }

    else
    {
      *(v12 + 16) = 0;
    }

    v18 = v0[9];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v14 = v0[9];
    v15 = v0[7];
    v6(v14, v5, v15);
    sub_21BE2862C();
    v7(v14, v15);
    v0[13] = v0[3];
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_21BD67CF8;

    return sub_21BD30E84();
  }
}

uint64_t sub_21BD67CF8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v7 = *v0;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21BD67E3C, v5, v4);
}

uint64_t sub_21BD67E3C()
{
  v1 = v0[10];

  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BD67EB0(uint64_t a1)
{
  v2 = type metadata accessor for SharedFamilyGroceryIntroView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BD67F14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BD67F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedGroceryListFlowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD67FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedGroceryListFlowView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD68024()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21BBA6A64;

  return sub_21BD67944(v0);
}

uint64_t objectdestroyTm_25()
{
  v1 = type metadata accessor for SharedGroceryListFlowView();
  v2 = *(*(v1 - 8) + 64);
  v3 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v4 = *v3;

  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE26F5C();
    (*(*(v6 - 8) + 8))(&v3[v5], v6);
  }

  else
  {
    v7 = *&v3[v5];
  }

  v8 = &v3[*(v1 + 24)];
  v9 = *v8;

  v10 = *(v8 + 1);

  return swift_deallocObject();
}

uint64_t objectdestroy_22Tm()
{
  v1 = type metadata accessor for SharedGroceryListFlowView();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21BE26F5C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = (v5 + *(v1 + 24));
  v11 = *v10;

  v12 = v10[1];

  return swift_deallocObject();
}

uint64_t sub_21BD683C4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for SharedGroceryListFlowView() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

unint64_t sub_21BD6845C()
{
  result = qword_27CDBB9B0[0];
  if (!qword_27CDBB9B0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB9A0, &qword_21BE48008);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB988, &qword_21BE47FF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB55A0, &unk_21BE32460);
    type metadata accessor for SharedFamilyGroceryIntroView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
    sub_21BD67F14(&qword_27CDBB9A8, type metadata accessor for SharedFamilyGroceryIntroView);
    sub_21BB41FA4();
    sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60);
    swift_getOpaqueTypeConformance2();
    sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
    swift_getOpaqueTypeConformance2();
    sub_21BBA6BC8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDBB9B0);
  }

  return result;
}

uint64_t sub_21BD686A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xRi_zRi0_zlyq_Isegr_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21BD68710(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BD6875C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5D50, &qword_21BE36430);
  sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC520, &qword_21BE38BA0);
  sub_21BE2719C();
  sub_21BE2946C();
  swift_getTupleTypeMetadata2();
  sub_21BE286EC();
  swift_getWitnessTable();
  sub_21BE284FC();
  swift_getTupleTypeMetadata2();
  sub_21BE286EC();
  swift_getWitnessTable();
  v6 = sub_21BE2848C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  v16[4] = v5;
  v16[5] = v4;
  v16[6] = v3;
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = v16[0];
  sub_21BE275DC();
  sub_21BE2847C();
  swift_getWitnessTable();
  sub_21BD37338(v11);
  v14 = *(v7 + 8);
  v14(v11, v6);
  sub_21BD37338(v13);
  return (v14)(v13, v6);
}

uint64_t sub_21BD689FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a7;
  v43 = a5;
  v44 = a6;
  v42 = a3;
  v40 = a2;
  v45 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5D50, &qword_21BE36430);
  sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC520, &qword_21BE38BA0);
  sub_21BE2719C();
  sub_21BE2946C();
  swift_getTupleTypeMetadata2();
  v39 = sub_21BE286EC();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_21BE284FC();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v35 - v16;
  v18 = *(a4 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v36 = &v35 - v24;
  v25 = *(a1 + 40);
  (*(a1 + 32))(v23);
  v26 = v46;
  sub_21BD37338(v22);
  v27 = v18[1];
  v35 = v18 + 1;
  v37 = v27;
  v27(v22, a4);
  sub_21BE2771C();
  v47 = v40;
  v48 = v42;
  v49 = a4;
  v50 = v43;
  v51 = v44;
  v52 = v26;
  v53 = a1;
  sub_21BE284EC();
  v28 = swift_getWitnessTable();
  sub_21BD37338(v14);
  v29 = v41;
  v30 = *(v41 + 8);
  v30(v14, v10);
  v31 = v18[2];
  v32 = v36;
  v31(v22, v36, a4);
  v57[0] = v22;
  (*(v29 + 16))(v14, v17, v10);
  v57[1] = v14;
  v56[0] = a4;
  v56[1] = v10;
  v54 = v46;
  v55 = v28;
  sub_21BDFE148(v57, 2uLL, v56);
  v30(v17, v10);
  v33 = v37;
  v37(v32, a4);
  v30(v14, v10);
  return v33(v22, a4);
}

uint64_t sub_21BD68E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v71 = a5;
  v76 = a6;
  v64 = *(a3 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](a1);
  v63 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5D50, &qword_21BE36430);
  v65 = a3;
  v12 = sub_21BE2719C();
  v66 = *(v12 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x28223BE20](v12);
  v62 = &v60 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC520, &qword_21BE38BA0);
  v68 = sub_21BE2719C();
  v15 = sub_21BE2946C();
  v73 = *(v15 - 8);
  v16 = *(v73 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v74 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v60 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v72 = &v60 - v23;
  v24 = *(a2 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v22);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v60 - v30;
  v32 = *(a1 + 8);
  (*a1)(v29);
  v70 = v31;
  v75 = a4;
  sub_21BD37338(v28);
  v33 = *(v24 + 8);
  v77 = a2;
  v69 = v24 + 8;
  v67 = v33;
  v34 = v33(v28, a2);
  v35 = *(a1 + 16);
  if (v35)
  {
    v36 = *(a1 + 24);
    v61 = v21;
    v37 = v12;
    v38 = v24;
    v39 = v63;
    v35(v34);
    sub_21BE27BEC();
    v40 = v62;
    v41 = v65;
    v42 = v71;
    sub_21BE280CC();

    v43 = v39;
    v24 = v38;
    v44 = v37;
    v21 = v61;
    (*(v64 + 8))(v43, v41);
    sub_21BE2833C();
    v45 = sub_21BD69500(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430);
    v78 = v42;
    v79 = v45;
    swift_getWitnessTable();
    sub_21BE27F8C();

    (*(v66 + 8))(v40, v44);
    v46 = 0;
  }

  else
  {
    v46 = 1;
    v42 = v71;
  }

  (*(*(v68 - 8) + 56))(v21, v46, 1, v68);
  v47 = sub_21BD69500(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430);
  v83[5] = v42;
  v83[6] = v47;
  WitnessTable = swift_getWitnessTable();
  v49 = sub_21BD69500(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0);
  v83[3] = WitnessTable;
  v83[4] = v49;
  v83[2] = swift_getWitnessTable();
  v50 = swift_getWitnessTable();
  v51 = v72;
  sub_21BD37338(v21);
  v52 = v73;
  v53 = *(v73 + 8);
  v53(v21, v15);
  v54 = v70;
  v55 = v77;
  (*(v24 + 16))(v28, v70, v77);
  v83[0] = v28;
  v56 = v74;
  (*(v52 + 16))(v74, v51, v15);
  v83[1] = v56;
  v82[0] = v55;
  v82[1] = v15;
  v80 = v75;
  v81 = v50;
  sub_21BDFE148(v83, 2uLL, v82);
  v53(v51, v15);
  v57 = v54;
  v58 = v67;
  v67(v57, v55);
  v53(v56, v15);
  return v58(v28, v55);
}

uint64_t sub_21BD69478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  return sub_21BD6875C(a1, a2);
}

uint64_t sub_21BD69500(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for RecoveryContactIsSetupCell()
{
  result = qword_27CDBBA38;
  if (!qword_27CDBBA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD695C8()
{
  sub_21BCB057C();
  if (v0 <= 0x3F)
  {
    sub_21BBC8F58();
    if (v1 <= 0x3F)
    {
      type metadata accessor for RecoveryContactDataItem(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21BD6968C()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

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

uint64_t sub_21BD697CC@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v31 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBA48, &qword_21BE481F8);
  v40 = *(v39 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = &v31 - v8;
  v42 = swift_allocBox();
  v10 = v9;
  sub_21BD6968C();
  type metadata accessor for ChecklistStateVars();
  v38 = sub_21BD6A330(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  v34 = v10;
  sub_21BE2864C();
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[7];
  v33 = v1[6];
  v15 = v1[4];
  v14 = v1[5];
  v16 = v1[8];
  v17 = *(type metadata accessor for RecoveryContactIsSetupCell() + 36);
  v55[3] = type metadata accessor for RecoveryContactDataItem(0);
  v55[4] = sub_21BD6A330(&qword_27CDB5E88, type metadata accessor for RecoveryContactDataItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  sub_21BD6A378(v1 + v17, boxed_opaque_existential_1);
  v45 = v11;
  v46 = v12;
  v47 = v33;
  v48 = v13;
  v49 = v15;
  v50 = v14;
  v51 = v16;
  v52 = sub_21BD6A328;
  v53 = v42;
  v54 = 0;
  v55[5] = 0;
  v19 = v36;
  v33 = *(v36 + 16);
  v20 = v35;
  v33(v35, v10, v2);

  v21 = v16;

  v22 = v37;
  v23 = v20;
  sub_21BE2863C();
  v24 = *(v19 + 8);
  v24(v23, v2);
  v32 = v24;
  swift_getKeyPath();
  sub_21BE2865C();

  v24(v22, v2);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBA50, &qword_21BE48228);
  v26 = sub_21BBC24D4();
  v36 = sub_21BD6A3DC();
  sub_21BE2806C();

  sub_21BBC7A74(&v45);
  v33(v22, v34, v2);
  sub_21BE2862C();
  v32(v22, v2);
  v27 = v45;
  swift_getKeyPath();
  v45 = v27;
  sub_21BE25F1C();

  swift_beginAccess();
  LOBYTE(v24) = BYTE3(v27[1].Kind);

  v44 = v24;

  v45 = &type metadata for ChecklistAlreadySetupButtonCell;
  v46 = v25;
  v47 = v26;
  v48 = v36;
  swift_getOpaqueTypeConformance2();
  v28 = v39;
  v29 = v43;
  sub_21BE281CC();

  (*(v40 + 8))(v29, v28);
}

uint64_t sub_21BD69D8C()
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
  if (*(v6 + 19) == 1)
  {
    *(v6 + 19) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 1;
    v9[2] = v6;
    sub_21BD6A330(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
    sub_21BE25F0C();
  }
}

uint64_t sub_21BD69F94@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BCB304C();
  sub_21BB41FA4();
  sub_21BE27F9C();

  v4 = [objc_opt_self() systemGroupedBackgroundColor];
  v5 = sub_21BE2826C();
  v6 = sub_21BE27B7C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBA50, &qword_21BE48228);
  v8 = a1 + *(result + 36);
  *v8 = v5;
  *(v8 + 8) = v6;
  return result;
}

void sub_21BD6A118()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_21BE2862C();
  (*(v1 + 8))(v4, v0);
  v6 = v9;
  swift_getKeyPath();
  v9 = v6;
  sub_21BD6A330(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  sub_21BE25F1C();

  swift_beginAccess();
  LOBYTE(v4) = *(v6 + 19);

  if ((v4 & 1) == 0)
  {
    v7 = [objc_opt_self() defaultCenter];
    if (qword_27CDB4EB8 != -1)
    {
      swift_once();
    }

    [v7 postNotificationName:qword_27CDB7E68 object:0 userInfo:0 deliverImmediately:1];
  }
}

uint64_t sub_21BD6A330(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BD6A378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecoveryContactDataItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BD6A3DC()
{
  result = qword_27CDBBA58;
  if (!qword_27CDBBA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBA50, &qword_21BE48228);
    sub_21BCB304C();
    sub_21BB41FA4();
    swift_getOpaqueTypeConformance2();
    sub_21BD6A4A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBA58);
  }

  return result;
}

unint64_t sub_21BD6A4A8()
{
  result = qword_27CDBBB80;
  if (!qword_27CDBBB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9F30, &qword_21BE48230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBB80);
  }

  return result;
}

uint64_t sub_21BD6A534@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE27A2C();
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v3);
  v72 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v66[-v8];
  v10 = type metadata accessor for StaticSelectableCellTemplate();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v66[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBA80, &qword_21BE48300);
  v73 = *(v78 - 8);
  v14 = *(v73 + 64);
  MEMORY[0x28223BE20](v78);
  v71 = &v66[-v15];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBA88, &qword_21BE48308);
  v16 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v18 = &v66[-v17];
  v19 = type metadata accessor for MemberDetailsAppleCashWrapper();
  v76 = *(v19 - 1);
  v20 = *(v76 + 64);
  v21 = &v66[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = *(v1 + *(MEMORY[0x28223BE20](v19) + 32));
  v79 = a1;
  if (v22 == 1)
  {
    v75 = sub_21BE275DC();
    v97 = 0;
    sub_21BD6B00C(&v81);
    v110 = v93;
    v111 = v94;
    v106 = v89;
    v107 = v90;
    v108 = v91;
    v109 = v92;
    v102 = v85;
    v103 = v86;
    v104 = v87;
    v105 = v88;
    v98 = v81;
    v99 = v82;
    v100 = v83;
    v101 = v84;
    v124 = v92;
    v125 = v93;
    v126 = v94;
    v127 = v95;
    v120 = v88;
    v121 = v89;
    v122 = v90;
    v123 = v91;
    v116 = v84;
    v117 = v85;
    v118 = v86;
    v119 = v87;
    v112 = v95;
    v113 = v81;
    v114 = v82;
    v115 = v83;
    sub_21BBA3854(&v98, &v80, &qword_27CDB8BB0, &qword_21BE3D590);
    sub_21BB3A4CC(&v113, &qword_27CDB8BB0, &qword_21BE3D590);
    *&v96[183] = v109;
    *&v96[199] = v110;
    *&v96[215] = v111;
    *&v96[231] = v112;
    *&v96[119] = v105;
    *&v96[135] = v106;
    *&v96[151] = v107;
    *&v96[167] = v108;
    *&v96[55] = v101;
    *&v96[71] = v102;
    *&v96[87] = v103;
    *&v96[103] = v104;
    *&v96[7] = v98;
    *&v96[23] = v99;
    *&v96[39] = v100;
    v23 = v97;
    KeyPath = swift_getKeyPath();
    sub_21BD6BE18(v1, &v66[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v25 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v26 = swift_allocObject();
    sub_21BD6BE7C(&v66[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)], v26 + v25);
    v27 = *&v96[208];
    *(v18 + 209) = *&v96[192];
    *(v18 + 225) = v27;
    *(v18 + 241) = *&v96[224];
    v28 = *&v96[144];
    *(v18 + 145) = *&v96[128];
    *(v18 + 161) = v28;
    v29 = *&v96[176];
    *(v18 + 177) = *&v96[160];
    *(v18 + 193) = v29;
    v30 = *&v96[80];
    *(v18 + 81) = *&v96[64];
    *(v18 + 97) = v30;
    v31 = *&v96[112];
    *(v18 + 113) = *&v96[96];
    *(v18 + 129) = v31;
    v32 = *&v96[16];
    *(v18 + 17) = *v96;
    *(v18 + 33) = v32;
    v33 = *&v96[48];
    *(v18 + 49) = *&v96[32];
    *v18 = v75;
    *(v18 + 1) = 0;
    v18[16] = v23;
    *(v18 + 32) = *&v96[239];
    *(v18 + 65) = v33;
    v18[264] = 1;
    *(v18 + 34) = KeyPath;
    *(v18 + 140) = 0;
    *(v18 + 36) = sub_21BD6C4D8;
    *(v18 + 37) = v26;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBA90, &unk_21BE48310);
    sub_21BD6C0D4();
    v34 = sub_21BD6C08C(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate);
    *&v81 = v10;
    *(&v81 + 1) = v34;
    swift_getOpaqueTypeConformance2();
    return sub_21BE2784C();
  }

  else
  {
    sub_21BD6BE18(v1, &v66[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v36 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v37 = swift_allocObject();
    sub_21BD6BE7C(v21, v37 + v36);
    sub_21BBA3854(v1 + v19[5], v9, &unk_27CDB57F0, &qword_21BE328A0);
    v38 = v19[9];
    swift_unknownObjectWeakLoadStrong();
    v39 = sub_21BD6BEF8();
    v69 = v40;
    v70 = v39;
    v41 = *(v1 + v19[6]);
    if (v41)
    {
      v68 = [v41 integerValue];
    }

    else
    {
      v68 = 0;
    }

    v42 = v1 + v19[10];
    v43 = *v42;
    v44 = *(v42 + 8);
    LOBYTE(v42) = *(v42 + 16);
    *&v113 = v43;
    *(&v113 + 1) = v44;
    LOBYTE(v114) = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2856C();
    v45 = v98;
    v76 = v37;
    v46 = *(&v98 + 1);
    v67 = v99;
    if (qword_280BD76F0 != -1)
    {
      swift_once();
    }

    *v13 = 0x41435F454C505041;
    v13[1] = 0xEA00000000004853;
    sub_21BC438F8(v9, v13 + v10[5]);
    *(v13 + v10[6]) = 1;
    v47 = v10[7];
    swift_unknownObjectWeakInit();

    swift_unknownObjectRelease();
    v48 = (v13 + v10[8]);
    v49 = v69;
    *v48 = v70;
    v48[1] = v49;
    v50 = v13 + v10[9];
    *v50 = v68;
    v50[8] = v41 == 0;
    v51 = (v13 + v10[10]);
    v52 = v76;
    *v51 = sub_21BD6BEE0;
    v51[1] = v52;
    v53 = v13 + v10[11];
    *v53 = v45;
    *(v53 + 1) = v46;
    v53[16] = v67;
    v54 = (v13 + v10[12]);
    *v54 = 0;
    v54[1] = 0;
    *(v13 + v10[13]) = 0;
    *(v13 + v10[14]) = 5;
    v55 = (v13 + v10[15]);
    type metadata accessor for ServicesStore();
    sub_21BD6C08C(&qword_27CDB5750, type metadata accessor for ServicesStore);
    *v55 = sub_21BE270CC();
    v55[1] = v56;
    *(v13 + v10[16]) = 0;
    v57 = v13 + v10[17];
    LOBYTE(v98) = 0;
    sub_21BE283EC();
    v58 = *(&v113 + 1);
    *v57 = v113;
    *(v57 + 1) = v58;
    v59 = v10[18];
    sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
    v60 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_27CDB4EE0 != -1)
    {
      swift_once();
    }

    sub_21BE2935C();

    v61 = v72;
    sub_21BE27A0C();
    v62 = sub_21BD6C08C(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate);
    v63 = v71;
    sub_21BE2805C();
    (*(v74 + 8))(v61, v75);
    sub_21BC5E088(v13);
    v64 = v73;
    v65 = v78;
    (*(v73 + 16))(v18, v63, v78);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBA90, &unk_21BE48310);
    sub_21BD6C0D4();
    *&v113 = v10;
    *(&v113 + 1) = v62;
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();

    return (*(v64 + 8))(v63, v65);
  }
}

uint64_t sub_21BD6B00C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BE2771C();
  v41 = 1;
  sub_21BD6B2B0(v42);
  *&v40[7] = v42[0];
  *&v40[23] = v42[1];
  *&v40[39] = v42[2];
  *&v40[55] = v42[3];
  sub_21BE286AC();
  sub_21BE2725C();
  v25[0] = v2;
  v25[1] = 0;
  v26[0] = 1;
  *&v26[17] = *&v40[16];
  *&v26[33] = *&v40[32];
  *&v26[49] = *&v40[48];
  *&v26[64] = *&v40[63];
  *&v26[1] = *v40;
  v3 = v21;
  *&v26[136] = v22;
  v4 = v20;
  *&v26[120] = v21;
  v5 = v22;
  *&v26[152] = v23;
  v6 = v23;
  *&v26[168] = v24;
  *&v26[72] = v18;
  *&v26[88] = v19;
  v7 = v18;
  v8 = v19;
  *&v26[104] = v20;
  *(&v17[9] + 7) = *&v26[128];
  *(&v17[10] + 7) = *&v26[144];
  *(&v17[11] + 7) = *&v26[160];
  *(&v17[12] + 7) = *(&v24 + 1);
  *(&v17[5] + 7) = *&v26[64];
  *(&v17[6] + 7) = *&v26[80];
  *(&v17[7] + 7) = *&v26[96];
  *(&v17[8] + 7) = *&v26[112];
  *(&v17[1] + 7) = *v26;
  *(&v17[2] + 7) = *&v26[16];
  *(&v17[3] + 7) = *&v26[32];
  *(&v17[4] + 7) = *&v26[48];
  *(v17 + 7) = v2;
  v9 = v17[8];
  *(a1 + 177) = v17[9];
  v10 = v17[11];
  *(a1 + 193) = v17[10];
  *(a1 + 209) = v10;
  *(a1 + 224) = *(&v17[11] + 15);
  v11 = v17[4];
  *(a1 + 113) = v17[5];
  v12 = v17[7];
  *(a1 + 129) = v17[6];
  *(a1 + 145) = v12;
  *(a1 + 161) = v9;
  v13 = v17[0];
  *(a1 + 49) = v17[1];
  v14 = v17[3];
  *(a1 + 65) = v17[2];
  *(a1 + 81) = v14;
  *(a1 + 97) = v11;
  *(a1 + 33) = v13;
  v30 = *&v40[16];
  v31 = *&v40[32];
  *v32 = *&v40[48];
  v29 = *v40;
  v36 = v3;
  v37 = v5;
  v38 = v6;
  v39 = v24;
  v33 = v7;
  v34 = v8;
  *a1 = 6;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_282D86E60;
  *(a1 + 24) = &unk_282D86E90;
  *(a1 + 32) = 0;
  v27[0] = v2;
  v27[1] = 0;
  v28 = 1;
  *&v32[15] = *&v40[63];
  v35 = v4;

  sub_21BBA3854(v25, v16, &qword_27CDB6210, &qword_21BE340D0);
  sub_21BB3A4CC(v27, &qword_27CDB6210, &qword_21BE340D0);
}

uint64_t sub_21BD6B2B0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  sub_21BE2832C();
  v9 = sub_21BE27D4C();
  v32 = v10;
  v33 = v9;
  v31 = v11;
  v34 = v12;

  sub_21BBC7C7C(v4, v6, v8 & 1);

  sub_21BD6BEF8();
  v13 = sub_21BE27DBC();
  v15 = v14;
  v17 = v16;
  sub_21BE27BEC();
  v18 = sub_21BE27D9C();
  v20 = v19;
  v22 = v21;

  sub_21BBC7C7C(v13, v15, v17 & 1);

  sub_21BE2833C();
  v23 = sub_21BE27D4C();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_21BBC7C7C(v18, v20, v22 & 1);

  *a1 = v33;
  *(a1 + 8) = v32;
  *(a1 + 16) = v31 & 1;
  *(a1 + 24) = v34;
  *(a1 + 32) = v23;
  *(a1 + 40) = v25;
  *(a1 + 48) = v27 & 1;
  *(a1 + 56) = v29;
  sub_21BBA4A38(v33, v32, v31 & 1);

  sub_21BBA4A38(v23, v25, v27 & 1);

  sub_21BBC7C7C(v23, v25, v27 & 1);

  sub_21BBC7C7C(v33, v32, v31 & 1);
}

uint64_t sub_21BD6B554(uint64_t a1)
{
  v20 = sub_21BE2754C();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v19 - v8);
  v10 = sub_21BE27B0C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MemberDetailsAppleCashWrapper();
  sub_21BBA3854(a1 + *(v15 + 52), v9, &qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_21BE28FEC();
    v17 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  sub_21BE27AFC();
  return (*(v11 + 8))(v14, v10);
}

void sub_21BD6B7F4(void *a1)
{
  if (a1)
  {
    v1 = [a1 navigationController];
    if (v1)
    {
      v2 = v1;
      v3 = [objc_allocWithZone(FAAppleCashPresentationHandler) initWithNavigationController_];
      [v3 presentPaymentPassDetailViewController];
      if (qword_27CDB4F90 != -1)
      {
        swift_once();
      }

      v4 = 257;
      sub_21BD23980(&v4);
    }
  }
}

void sub_21BD6B8B0(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = [v2 subscriberDSIDs];
    if (v3)
    {
      v4 = v3;
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v5 = sub_21BE28C3C();

      v6 = type metadata accessor for MemberDetailsAppleCashWrapper();
      if (*(a1 + *(v6 + 24)))
      {
        v11 = *(a1 + *(v6 + 24));
        MEMORY[0x28223BE20](v6);
        v10[2] = &v11;
        v8 = v7;
        v9 = sub_21BC9DAC4(sub_21BBF0CE4, v10, v5);

        if (v9)
        {
          if (qword_27CDB4F90 != -1)
          {
            swift_once();
          }

          LOWORD(v11) = 1;
        }

        else
        {
          if (qword_27CDB4F90 != -1)
          {
            swift_once();
          }

          LOWORD(v11) = 0;
        }

        sub_21BD23980(&v11);
      }

      else
      {
      }
    }
  }
}

uint64_t type metadata accessor for MemberDetailsAppleCashWrapper()
{
  result = qword_27CDBBA60;
  if (!qword_27CDBBA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD6BAC4()
{
  sub_21BC97780(319, &qword_27CDB8B60, &unk_27CDB6550, 0x277D08338);
  if (v0 <= 0x3F)
  {
    sub_21BD6BC70(319, &qword_280BD89E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21BC97780(319, &qword_27CDB8B68, &qword_280BD68F8, 0x277CCABB0);
      if (v2 <= 0x3F)
      {
        sub_21BD39D4C();
        if (v3 <= 0x3F)
        {
          sub_21BD6BCD4();
          if (v4 <= 0x3F)
          {
            sub_21BD6BD68();
            if (v5 <= 0x3F)
            {
              sub_21BD6BC70(319, &qword_27CDB6118, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
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

void sub_21BD6BC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21BD6BCD4()
{
  if (!qword_27CDBBA70)
  {
    type metadata accessor for MemberDetailsAppleCashViewModel();
    sub_21BD6C08C(&qword_27CDBA118, type metadata accessor for MemberDetailsAppleCashViewModel);
    v0 = sub_21BE270DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBBA70);
    }
  }
}

void sub_21BD6BD68()
{
  if (!qword_27CDBBA78)
  {
    type metadata accessor for AppleCashFamilyCache();
    sub_21BD6C08C(&qword_27CDB9428, type metadata accessor for AppleCashFamilyCache);
    v0 = sub_21BE26EBC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBBA78);
    }
  }
}

uint64_t sub_21BD6BE18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberDetailsAppleCashWrapper();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD6BE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberDetailsAppleCashWrapper();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD6BEF8()
{
  v1 = (v0 + *(type metadata accessor for MemberDetailsAppleCashWrapper() + 48));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  type metadata accessor for AppleCashFamilyCache();
  sub_21BD6C08C(&qword_27CDB9428, type metadata accessor for AppleCashFamilyCache);
  sub_21BE26EAC();
  sub_21BE1F1EC(&v11);
  v10[0] = v11;
  v10[1] = v12;
  v5 = sub_21BE20000(v10);

  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_6;
  }

  v11 = 0;
  v12 = 0;
  sub_21BE289FC();

  if (!v12)
  {
LABEL_6:
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v6 = sub_21BE2599C();

    return v6;
  }

  return v11;
}

uint64_t sub_21BD6C08C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BD6C0D4()
{
  result = qword_27CDBBA98;
  if (!qword_27CDBBA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBA90, &unk_21BE48310);
    sub_21BD6C160();
    sub_21BBDD1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBA98);
  }

  return result;
}

unint64_t sub_21BD6C160()
{
  result = qword_27CDBBAA0;
  if (!qword_27CDBBAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8BB8, &qword_21BE3D5C8);
    sub_21BD6C218();
    sub_21BB3B038(&qword_27CDB6188, &qword_27CDB6190, &qword_21BE33F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBAA0);
  }

  return result;
}

unint64_t sub_21BD6C218()
{
  result = qword_27CDBBAA8;
  if (!qword_27CDBBAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBAB0, &qword_21BE48320);
    sub_21BB3B038(&qword_27CDBBAB8, &qword_27CDBBAC0, &qword_21BE48328);
    sub_21BBDD1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBAA8);
  }

  return result;
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for MemberDetailsAppleCashWrapper();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v4 = v1[5];
  v5 = sub_21BE25B9C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = *(v3 + v1[7] + 8);

  MEMORY[0x21CF05D90](v3 + v1[9]);
  v8 = (v3 + v1[10]);
  v9 = *v8;

  v10 = v8[1];

  v11 = *(v3 + v1[11] + 8);

  v12 = v3 + v1[12];
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = v12[16];
  sub_21BB47CE0();
  v16 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_21BE27B0C();
    (*(*(v17 - 8) + 8))(v3 + v16, v17);
  }

  else
  {
    v18 = *(v3 + v16);
  }

  return swift_deallocObject();
}

uint64_t sub_21BD6C4F0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MemberDetailsAppleCashWrapper() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21BD6C564()
{
  result = qword_27CDBBAC8;
  if (!qword_27CDBBAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDBBAD0, qword_21BE48368);
    sub_21BD6C0D4();
    type metadata accessor for StaticSelectableCellTemplate();
    sub_21BD6C08C(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBAC8);
  }

  return result;
}

uint64_t sub_21BD6C658()
{
  result = sub_21BE289CC();
  qword_27CDD4338 = result;
  return result;
}

uint64_t sub_21BD6C690()
{
  result = sub_21BE289CC();
  qword_27CDD4340 = result;
  return result;
}

uint64_t sub_21BD6C6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BD6F8D0();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BD6C72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BD6F8D0();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BD6C790()
{
  sub_21BD6F8D0();
  sub_21BE27ABC();
  __break(1u);
}

uint64_t sub_21BD6C7B8(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = sub_21BE2870C();
  v2[34] = v3;
  v4 = *(v3 - 8);
  v2[35] = v4;
  v5 = *(v4 + 64) + 15;
  v2[36] = swift_task_alloc();
  v6 = sub_21BE2874C();
  v2[37] = v6;
  v7 = *(v6 - 8);
  v2[38] = v7;
  v8 = *(v7 + 64) + 15;
  v2[39] = swift_task_alloc();
  v9 = sub_21BE26A4C();
  v2[40] = v9;
  v10 = *(v9 - 8);
  v2[41] = v10;
  v11 = *(v10 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  sub_21BE28D7C();
  v2[44] = sub_21BE28D6C();
  v13 = sub_21BE28D0C();
  v2[45] = v13;
  v2[46] = v12;

  return MEMORY[0x2822009F8](sub_21BD6C970, v13, v12);
}

uint64_t sub_21BD6C970()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[47] = v3;
  v4 = sub_21BE25B2C();
  [v3 setUrlForContext_];

  v5 = [objc_allocWithZone(FACircleStateController) initWithPresenter_];
  v0[48] = v5;
  [v5 setPresentationType_];
  [v5 setModalPresentationStyle_];
  v0[22] = sub_21BD6D094;
  v0[23] = 0;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21BB42A18;
  v0[21] = &block_descriptor_46;
  v6 = _Block_copy(v0 + 18);
  [v5 setPresentationHandler_];
  _Block_release(v6);
  v7 = sub_21BE289CC();
  [v3 setClientName_];

  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_21BD6CBEC;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BC2D85C;
  v0[13] = &block_descriptor_6_0;
  v0[14] = v8;
  [v5 performWithContext:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BD6CBEC()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BD6CCF4, v2, v1);
}

uint64_t sub_21BD6CCF4()
{
  v30 = v0;
  v1 = v0[44];

  v28 = v0[30];
  v2 = [v28 error];
  if (v2)
  {
    v3 = v2;
    v4 = v0[43];
    v6 = v0[40];
    v5 = v0[41];
    sub_21BE2614C();
    v7 = v3;
    sub_21BC51D50(v3);
  }

  else
  {
    v8 = v0[42];
    sub_21BE2614C();
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FFC();
    v11 = os_log_type_enabled(v9, v10);
    v5 = v0[41];
    v4 = v0[42];
    v6 = v0[40];
    if (v11)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_21BB3D81C(0x3A5F287472617473, 0xE900000000000029, &v29);
      _os_log_impl(&dword_21BB35000, v9, v10, "%s response ok", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x21CF05C50](v13, -1, -1);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }
  }

  (*(v5 + 8))(v4, v6);
  v22 = v0[48];
  v23 = v0[47];
  v26 = v0[43];
  v27 = v0[42];
  v14 = v0[39];
  v15 = v0[36];
  v24 = v0[38];
  v25 = v0[37];
  v16 = v0[34];
  v21 = v0[35];
  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v20 = sub_21BE2925C();
  v0[28] = sub_21BD6D0B8;
  v0[29] = 0;
  v0[24] = MEMORY[0x277D85DD0];
  v0[25] = 1107296256;
  v0[26] = sub_21BB42A18;
  v0[27] = &block_descriptor_9;
  v17 = _Block_copy(v0 + 24);
  sub_21BE2872C();
  v0[31] = MEMORY[0x277D84F90];
  sub_21BBE3CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3B038(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BE294DC();
  MEMORY[0x21CF04410](0, v14, v15, v17);
  _Block_release(v17);

  (*(v21 + 8))(v15, v16);
  (*(v24 + 8))(v14, v25);

  v18 = v0[1];

  return v18();
}

void sub_21BD6D0DC(void *a1, void *a2)
{
  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (*a1 != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:*a2 object:0 userInfo:0 deliverImmediately:1];
}

uint64_t sub_21BD6D310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_21BE28D7C();
  v3[6] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD6D3B0, v5, v4);
}

uint64_t sub_21BD6D3B0()
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

  return MEMORY[0x2822009F8](sub_21BD6D464, v9, v8);
}

uint64_t sub_21BD6D464()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];
  v4 = v0[2];

  sub_21BD6DBC0(v4);

  if (v2)
  {
    v5 = v0[7];
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BD6D694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = sub_21BE28D7C();
  v3[4] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD6D730, v5, v4);
}

uint64_t sub_21BD6D730()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v0[6] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD6D7D0, v5, v4);
}

uint64_t sub_21BD6D7D0()
{
  v2 = v0[5];
  v1 = v0[6];

  if (v2)
  {
    v3 = v0[5];
    v3[2](v3);
    _Block_release(v3);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BD6D9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = sub_21BE28D7C();
  v3[5] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD6DA74, v5, v4);
}

uint64_t sub_21BD6DA74()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v0[7] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD6DB20, v7, v6);
}

uint64_t sub_21BD6DB20()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];

  [v3 dismissViewControllerAnimated:1 completion:0];

  if (v2)
  {
    v4 = v0[6];
    v4[2](v4);
    _Block_release(v4);
  }

  v5 = v0[1];

  return v5();
}

void sub_21BD6DBC0(void *a1)
{
  [v1 addChildViewController_];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [a1 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v4 addSubview_];

  v7 = [a1 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  v9 = [a1 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  v28 = [v1 view];
  if (!v28)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21BE397B0;
  v13 = [v10 topAnchor];
  v14 = [v28 topAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [v10 bottomAnchor];
  v17 = [v28 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v12 + 40) = v18;
  v19 = [v10 leadingAnchor];
  v20 = [v28 safeAreaLayoutGuide];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v12 + 48) = v22;
  v23 = [v10 trailingAnchor];
  v24 = [v28 safeAreaLayoutGuide];
  v25 = [v24 trailingAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v12 + 56) = v26;
  sub_21BB3A2A4(0, &qword_27CDBBAE0, 0x277CCAAD0);
  v27 = sub_21BE28C1C();

  [v11 activateConstraints_];

  [a1 didMoveToParentViewController_];
}

id sub_21BD6E070()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyDisclosureController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BD6E0E4@<X0>(void *a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7020, &qword_21BE39520);
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBA0, &qword_21BE48600);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  *v15 = sub_21BE275DC();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBA8, &qword_21BE48608) + 44)];
  sub_21BE26EEC();
  v17 = v2[2];
  v17(v6, v8, v1);
  *v16 = 0;
  v16[8] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBB0, &qword_21BE48610);
  v17(&v16[*(v18 + 48)], v6, v1);
  v19 = &v16[*(v18 + 64)];
  *v19 = 0;
  v19[8] = 1;
  v20 = v2[1];
  v20(v8, v1);
  v20(v6, v1);
  sub_21BBA3854(v15, v13, &qword_27CDBBBA0, &qword_21BE48600);
  v21 = v27;
  *v27 = 0;
  *(v21 + 8) = 1;
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBB8, &qword_21BE48618);
  sub_21BBA3854(v13, v22 + *(v23 + 48), &qword_27CDBBBA0, &qword_21BE48600);
  v24 = v22 + *(v23 + 64);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_21BB3A4CC(v15, &qword_27CDBBBA0, &qword_21BE48600);
  return sub_21BB3A4CC(v13, &qword_27CDBBBA0, &qword_21BE48600);
}

uint64_t sub_21BD6E3AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for DisclosureModalHostingView();
  v4 = v3 - 8;
  v47 = *(v3 - 8);
  v46[1] = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46[0] = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB18, &qword_21BE48580);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB20, &qword_21BE48588);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB28, &qword_21BE48590);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v46 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB30, &qword_21BE48598);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v46 - v23;
  *v9 = sub_21BE2770C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v25 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBBB38, &unk_21BE485A0) + 44)];
  sub_21BD6E7FC(v2);
  sub_21BE2869C();
  sub_21BE2725C();
  sub_21BBB7D84(v9, v14, &qword_27CDBBB18, &qword_21BE48580);
  v26 = &v14[*(v11 + 44)];
  v27 = v54;
  *(v26 + 4) = v53;
  *(v26 + 5) = v27;
  *(v26 + 6) = v55;
  v28 = v50;
  *v26 = v49;
  *(v26 + 1) = v28;
  v29 = v52;
  *(v26 + 2) = v51;
  *(v26 + 3) = v29;
  v30 = sub_21BE271CC();
  LOBYTE(v11) = sub_21BE27B7C();
  sub_21BBB7D84(v14, v19, &qword_27CDBBB20, &qword_21BE48588);
  v31 = &v19[*(v16 + 44)];
  *v31 = v30;
  v31[8] = v11;
  v32 = v2;
  v33 = v2;
  v34 = v46[0];
  sub_21BD6F398(v33, v46[0]);
  v35 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v36 = swift_allocObject();
  sub_21BD6F3FC(v34, v36 + v35);
  sub_21BBB7D84(v19, v24, &qword_27CDBBB28, &qword_21BE48590);
  v37 = &v24[*(v21 + 44)];
  *v37 = sub_21BD6F460;
  v37[1] = v36;
  v37[2] = 0;
  v37[3] = 0;
  v38 = *(v4 + 48);
  sub_21BD6F398(v32, v34);
  v39 = swift_allocObject();
  sub_21BD6F3FC(v34, v39 + v35);
  v40 = v48;
  sub_21BBB7D84(v24, v48, &qword_27CDBBB30, &qword_21BE48598);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB48, &unk_21BE485B0);
  v42 = *(v41 + 52);
  v43 = sub_21BE2934C();
  result = (*(*(v43 - 8) + 16))(v40 + v42, v32 + v38, v43);
  v45 = (v40 + *(v41 + 56));
  *v45 = sub_21BD6F68C;
  v45[1] = v39;
  return result;
}

uint64_t sub_21BD6E7FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB58, &qword_21BE485D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB60, &qword_21BE485D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB68, &unk_21BE485E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v32[-v15];
  v17 = type metadata accessor for DisclosureModalHostingView();
  v18 = (a1 + *(v17 + 24));
  v19 = *v18;
  v20 = *(v18 + 1);
  v32[16] = v19;
  v33 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (v32[15] == 1)
  {
    *v9 = sub_21BE2770C();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBBB90, &unk_21BE485F0);
    sub_21BD6E0E4(&v9[*(v21 + 44)]);
    if (qword_27CDB4E58 != -1)
    {
      swift_once();
    }

    v22 = byte_27CDD41B0;
    v23 = objc_opt_self();
    v24 = &selRef_systemGroupedBackgroundColor;
    if (!v22)
    {
      v24 = &selRef_secondarySystemBackgroundColor;
    }

    v25 = [v23 *v24];
    v26 = sub_21BE2826C();
    v27 = sub_21BE27B7C();
    sub_21BBB7D84(v9, v14, &qword_27CDBBB60, &qword_21BE485D8);
    v28 = &v14[*(v10 + 36)];
    *v28 = v26;
    v28[8] = v27;
    sub_21BBB7D84(v14, v16, &qword_27CDBBB68, &unk_21BE485E0);
    sub_21BBA3854(v16, v5, &qword_27CDBBB68, &unk_21BE485E0);
    swift_storeEnumTagMultiPayload();
    sub_21BD6F7EC();
    sub_21BD6F328();
    sub_21BE2784C();
    return sub_21BB3A4CC(v16, &qword_27CDBBB68, &unk_21BE485E0);
  }

  else
  {
    v30 = *(a1 + *(v17 + 32));
    *v5 = v30;
    swift_storeEnumTagMultiPayload();
    sub_21BD6F7EC();
    sub_21BD6F328();
    v31 = v30;
    return sub_21BE2784C();
  }
}

uint64_t sub_21BD6EB60(uint64_t a1)
{
  v2 = type metadata accessor for DisclosureModalHostingView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20[-v9];
  v11 = a1 + *(v3 + 36);
  v12 = *v11;
  v13 = *(v11 + 8);
  v22 = *v11;
  v23 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  result = sub_21BE283FC();
  if ((v21 & 1) == 0)
  {
    v22 = v12;
    v23 = v13;
    v21 = 1;
    sub_21BE2840C();
    v15 = sub_21BE28DAC();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    sub_21BD6F398(a1, &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_21BE28D7C();
    v16 = sub_21BE28D6C();
    v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v16;
    *(v18 + 24) = v19;
    sub_21BD6F3FC(v6, v18 + v17);
    sub_21BBA932C(0, 0, v10, &unk_21BE485C8, v18);
  }

  return result;
}

uint64_t sub_21BD6ED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21BE28D7C();
  v4[3] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21BD6EE28, v6, v5);
}

uint64_t sub_21BD6EE28()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for DisclosureModalHostingView() + 32));
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_21BC34664;
  v4 = *(v0 + 16);

  return sub_21BD6C7B8(v4);
}

uint64_t sub_21BD6EED0(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for DisclosureModalHostingView() + 24));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  return sub_21BE2840C();
}

uint64_t sub_21BD6EF44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BD6D9D8(v2, v3, v4);
}

uint64_t sub_21BD6EFF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBB7EB8;

  return sub_21BD6D694(v2, v3, v5);
}

uint64_t objectdestroyTm_27()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21BD6F100()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BD6D310(v2, v3, v4);
}

uint64_t type metadata accessor for DisclosureModalHostingView()
{
  result = qword_27CDBBAF8;
  if (!qword_27CDBBAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD6F228()
{
  sub_21BE25B9C();
  if (v0 <= 0x3F)
  {
    sub_21BB40410();
    if (v1 <= 0x3F)
    {
      sub_21BB403C0();
      if (v2 <= 0x3F)
      {
        sub_21BB3A2A4(319, &qword_280BD8A28, 0x277CBEBD0);
        if (v3 <= 0x3F)
        {
          sub_21BE2934C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_21BD6F328()
{
  result = qword_27CDBBB10;
  if (!qword_27CDBBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBB10);
  }

  return result;
}

uint64_t sub_21BD6F398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisclosureModalHostingView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD6F3FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisclosureModalHostingView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD6F460()
{
  v1 = *(type metadata accessor for DisclosureModalHostingView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21BD6EB60(v2);
}

uint64_t objectdestroy_50Tm()
{
  v1 = type metadata accessor for DisclosureModalHostingView();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = sub_21BE25B9C();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE26F5C();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
    v7 = *(v3 + v5);
  }

  v8 = *(v3 + v1[6] + 8);

  v9 = *(v3 + v1[7] + 8);

  v10 = v1[10];
  v11 = sub_21BE2934C();
  (*(*(v11 - 8) + 8))(v3 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_21BD6F68C(uint64_t a1)
{
  v3 = *(type metadata accessor for DisclosureModalHostingView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BD6EED0(a1, v4);
}

uint64_t sub_21BD6F6FC(uint64_t a1)
{
  v4 = *(type metadata accessor for DisclosureModalHostingView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BD6ED90(a1, v6, v7, v1 + v5);
}

unint64_t sub_21BD6F7EC()
{
  result = qword_27CDBBB70;
  if (!qword_27CDBBB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBB68, &unk_21BE485E0);
    sub_21BB3B038(&qword_27CDBBB78, &qword_27CDBBB60, &qword_21BE485D8);
    sub_21BB3B038(&qword_27CDBBB80, &qword_27CDB9F30, &qword_21BE48230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBB70);
  }

  return result;
}

unint64_t sub_21BD6F8D0()
{
  result = qword_27CDBBBC0;
  if (!qword_27CDBBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBBC0);
  }

  return result;
}

uint64_t sub_21BD6F92C()
{
  if (*v0 == 1)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_21BE2599C();

    return v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21BE32770;
    v6 = sub_21BE2917C();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_21BBBEFE8();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    type metadata accessor for ConfirmChildAgeViewModel();
    v9 = swift_getObjCClassFromMetadata();
    v10 = objc_opt_self();

    v11 = [v10 bundleForClass_];
    sub_21BE2599C();

    v12 = sub_21BE289DC();

    return v12;
  }
}

uint64_t sub_21BD6FB28(void *a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  if (v3 == 1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21BE33260;
    v5 = sub_21BE2917C();
    v7 = v6;
    v8 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v9 = sub_21BBBEFE8();
    *(v4 + 64) = v9;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    [a1 age];
    sub_21BE28ECC();
    __swift_project_boxed_opaque_existential_1Tm(v23, v23[3]);
    v10 = sub_21BE29B8C();
    *(v4 + 96) = v8;
    *(v4 + 104) = v9;
    *(v4 + 72) = v10;
    *(v4 + 80) = v11;
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = objc_opt_self();

    v14 = [v13 bundleForClass_];
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21BE32770;
    v16 = sub_21BE2917C();
    v18 = v17;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_21BBBEFE8();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    type metadata accessor for ConfirmChildAgeViewModel();
    v19 = swift_getObjCClassFromMetadata();
    v20 = objc_opt_self();

    v14 = [v20 bundleForClass_];
  }

  sub_21BE2599C();

  v21 = sub_21BE289DC();

  return v21;
}

uint64_t ShowParentalCellType.hashValue.getter()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

unint64_t sub_21BD6FF20()
{
  result = qword_27CDBBBD0;
  if (!qword_27CDBBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBBBD0);
  }

  return result;
}

uint64_t sub_21BD6FF84(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = result + 40;
    v4 = MEMORY[0x277D84F90];
    v13 = result + 40;
    do
    {
      v5 = (v3 + 16 * v2);
      v6 = v2;
      while (1)
      {
        if (v6 >= v1)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v2 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_18;
        }

        v7 = *(v5 - 1);
        v8 = *v5;
        sub_21BBBF0E4();
        sub_21BBBF138();

        if (sub_21BE2896C())
        {
          break;
        }

        ++v6;
        v5 += 2;
        if (v2 == v1)
        {
          goto LABEL_16;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21BC599DC(0, *(v4 + 16) + 1, 1);
      }

      v3 = v13;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        result = sub_21BC599DC((v9 > 1), v10 + 1, 1);
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
    }

    while (v2 != v1);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_16:
  v12 = *(v4 + 16);

  return v12 != 0;
}

char *sub_21BD70140(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a1;

  sub_21BD754AC(&v15, a2, a3, a4);

  v7 = v15;
  v8 = *(v15 + 2);
  if (v8)
  {
    v15 = MEMORY[0x277D84F90];
    sub_21BC599FC(0, v8, 0);
    v9 = v15;
    v10 = *(v15 + 2);
    v11 = 56;
    do
    {
      v12 = v7[v11];
      v15 = v9;
      v13 = *(v9 + 3);
      if (v10 >= v13 >> 1)
      {
        sub_21BC599FC((v13 > 1), v10 + 1, 1);
        v9 = v15;
      }

      *(v9 + 2) = v10 + 1;
      v9[v10 + 32] = v12;
      v11 += 32;
      ++v10;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v9;
}

void *sub_21BD70288(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];

  v7 = sub_21BE2975C();
  sub_21BD72BA0(&v7, a2, v4);

  return v7;
}

BOOL sub_21BD70320(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  v7 = (*(v6 + 32))(v5, v6);
  if (*(a3 + 16) && (v8 = sub_21BBB3274(v7), (v9 & 1) != 0))
  {
    v10 = *(*(a3 + 56) + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v11);
  v13 = (*(v12 + 32))(v11, v12);
  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = sub_21BBB3274(v13);
    if (v16)
    {
      v14 = *(*(a3 + 56) + 8 * v15);
    }

    else
    {
      v14 = 0;
    }
  }

  return v14 < v10;
}

BOOL sub_21BD70410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = *(a2 + 24);
    v6 = sub_21BBB3230(*(a1 + 24));
    if (v7)
    {
      v8 = *(*(a3 + 56) + 8 * v6);
      v3 = *(a3 + 16);
      if (!v3)
      {
        return v3 < v8;
      }
    }

    else
    {
      v8 = 0;
      v3 = *(a3 + 16);
      if (!v3)
      {
        return v3 < v8;
      }
    }

    v9 = sub_21BBB3230(v5);
    if (v10)
    {
      v3 = *(*(a3 + 56) + 8 * v9);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v3 < v8;
}

uint64_t sub_21BD704A4(uint64_t a1, uint64_t a2)
{

  v4 = sub_21BE2975C();
  sub_21BD73F94(&v4, a2, sub_21BDFD58C, sub_21BD71510);

  return v4;
}

uint64_t sub_21BD70548(char *__src, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = a2 - __src;
  v10 = (a2 - __src) / 40;
  v11 = a3 - a2;
  v12 = (a3 - a2) / 40;
  if (v10 >= v12)
  {
    v32 = a2;
    if (a4 != a2 || &a2[40 * v12] <= a4)
    {
      memmove(a4, a2, 40 * v12);
    }

    v63 = &v6[40 * v12];
    if (v11 < 40 || v32 <= v8)
    {
      v31 = v32;
    }

    else
    {
      do
      {
        v56 = v32;
        v33 = (v32 - 40);
        v34 = (v63 - 40);
        v7 -= 40;
        v55 = v33;
        while (1)
        {
          sub_21BB3A35C(v34, v60);
          sub_21BB3A35C(v33, v57);
          v37 = v61;
          v38 = v62;
          __swift_project_boxed_opaque_existential_1Tm(v60, v61);
          v39 = (*(v38 + 32))(v37, v38);
          if (*(a5 + 16) && (v40 = sub_21BBB3274(v39), (v41 & 1) != 0))
          {
            v42 = *(*(a5 + 56) + 8 * v40);
          }

          else
          {
            v42 = 0;
          }

          v43 = v58;
          v44 = v59;
          __swift_project_boxed_opaque_existential_1Tm(v57, v58);
          v45 = (*(v44 + 32))(v43, v44);
          if (*(a5 + 16) && (v46 = sub_21BBB3274(v45), (v47 & 1) != 0))
          {
            v48 = *(*(a5 + 56) + 8 * v46);
          }

          else
          {
            v48 = 0;
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v57);
          __swift_destroy_boxed_opaque_existential_0Tm(v60);
          if (v48 < v42)
          {
            break;
          }

          v33 = v55;
          if (v7 + 40 != v34 + 40)
          {
            v49 = *v34;
            v50 = *(v34 + 16);
            *(v7 + 32) = *(v34 + 32);
            *v7 = v49;
            *(v7 + 16) = v50;
          }

          v35 = v34 - 40;
          v7 -= 40;
          v36 = v34 > v6;
          v34 -= 40;
          if (!v36)
          {
            v63 = (v35 + 40);
            v31 = v56;
            goto LABEL_50;
          }
        }

        v31 = v55;
        if ((v7 + 40) != v56)
        {
          v51 = *v55;
          v52 = *(v55 + 1);
          *(v7 + 32) = *(v55 + 4);
          *v7 = v51;
          *(v7 + 16) = v52;
        }

        v63 = (v34 + 40);
        if (v34 + 40 <= v6)
        {
          break;
        }

        v32 = v55;
      }

      while (v55 > v8);
      v63 = (v34 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v10] <= a4)
    {
      memmove(a4, __src, 40 * v10);
    }

    v63 = &v6[40 * v10];
    if (v9 >= 40 && a2 < v7)
    {
      v14 = a2;
      while (1)
      {
        sub_21BB3A35C(v14, v60);
        sub_21BB3A35C(v6, v57);
        v15 = v61;
        v16 = v62;
        __swift_project_boxed_opaque_existential_1Tm(v60, v61);
        v17 = (*(v16 + 32))(v15, v16);
        if (*(a5 + 16) && (v18 = sub_21BBB3274(v17), (v19 & 1) != 0))
        {
          v20 = *(*(a5 + 56) + 8 * v18);
        }

        else
        {
          v20 = 0;
        }

        v21 = v58;
        v22 = v59;
        __swift_project_boxed_opaque_existential_1Tm(v57, v58);
        v23 = (*(v22 + 32))(v21, v22);
        if (*(a5 + 16) && (v24 = sub_21BBB3274(v23), (v25 & 1) != 0))
        {
          v26 = *(*(a5 + 56) + 8 * v24);
        }

        else
        {
          v26 = 0;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v57);
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        if (v26 >= v20)
        {
          break;
        }

        v27 = v14;
        v28 = v8 == v14;
        v14 += 40;
        if (!v28)
        {
          goto LABEL_21;
        }

LABEL_22:
        v8 += 40;
        if (v6 >= v63 || v14 >= v7)
        {
          goto LABEL_24;
        }
      }

      v27 = v6;
      v28 = v8 == v6;
      v6 += 40;
      if (v28)
      {
        goto LABEL_22;
      }

LABEL_21:
      v29 = *v27;
      v30 = *(v27 + 1);
      *(v8 + 4) = *(v27 + 4);
      *v8 = v29;
      *(v8 + 1) = v30;
      goto LABEL_22;
    }

LABEL_24:
    v31 = v8;
  }

LABEL_50:
  v53 = (v63 - v6) / 40;
  if (v31 != v6 || v31 >= &v6[40 * v53])
  {
    memmove(v31, v6, 40 * v53);
  }

  return 1;
}

uint64_t sub_21BD70978(char *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_21BDFD0AC(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v6 = &v24[16 * v9];
      v12 = *v6;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 40 * *v6);
      v15 = (v10 + 40 * *v13);
      v16 = v10 + 40 * v14;

      sub_21BD70548(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v6 = v12;
      *(v6 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD70B24(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v135 = MEMORY[0x277D84F90];
  if (v6 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v124 = a5;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 >= v6)
      {
        v29 = v7 + 1;
      }

      else
      {
        v125 = v6;
        v11 = *a3;
        sub_21BB3A35C(*a3 + 40 * v10, &v132);
        sub_21BB3A35C(v11 + 40 * v9, v129);
        v12 = sub_21BD70320(&v132, v129, a5);
        if (v128)
        {
          __swift_destroy_boxed_opaque_existential_0Tm(v129);
          __swift_destroy_boxed_opaque_existential_0Tm(&v132);
          goto LABEL_112;
        }

        v13 = v12;
        v114 = v8;
        __swift_destroy_boxed_opaque_existential_0Tm(v129);
        __swift_destroy_boxed_opaque_existential_0Tm(&v132);
        v14 = v9 + 2;
        v115 = v9;
        v15 = 40 * v9;
        v16 = v11 + 40 * v9 + 80;
        while (v125 != v14)
        {
          sub_21BB3A35C(v16, &v132);
          sub_21BB3A35C(v16 - 40, v129);
          v19 = v133;
          v18 = v134;
          __swift_project_boxed_opaque_existential_1Tm(&v132, v133);
          v20 = (*(v18 + 32))(v19, v18);
          if (*(a5 + 16) && (v21 = sub_21BBB3274(v20), (v22 & 1) != 0))
          {
            v23 = *(*(a5 + 56) + 8 * v21);
          }

          else
          {
            v23 = 0;
          }

          v24 = v130;
          v25 = v131;
          __swift_project_boxed_opaque_existential_1Tm(v129, v130);
          v26 = (*(v25 + 32))(v24, v25);
          if (*(a5 + 16) && (v27 = sub_21BBB3274(v26), (v28 & 1) != 0))
          {
            v17 = *(*(a5 + 56) + 8 * v27);
          }

          else
          {
            v17 = 0;
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v129);
          __swift_destroy_boxed_opaque_existential_0Tm(&v132);
          ++v14;
          v16 += 40;
          if (((v13 ^ (v17 >= v23)) & 1) == 0)
          {
            v125 = v14 - 1;
            break;
          }
        }

        v8 = v114;
        if (v13)
        {
          v30 = v115;
          v29 = v125;
          if (v125 < v115)
          {
            goto LABEL_135;
          }

          if (v115 >= v125)
          {
            v9 = v115;
          }

          else
          {
            v31 = 40 * v125 - 40;
            v32 = v125;
            do
            {
              if (v30 != --v32)
              {
                v33 = *a3;
                if (!*a3)
                {
                  goto LABEL_138;
                }

                v34 = v33 + v15;
                v35 = v33 + v31;
                sub_21BB3D104((v33 + v15), &v132);
                v36 = *(v35 + 32);
                v37 = *(v35 + 16);
                *v34 = *v35;
                *(v34 + 16) = v37;
                *(v34 + 32) = v36;
                sub_21BB3D104(&v132, v35);
              }

              ++v30;
              v31 -= 40;
              v15 += 40;
            }

            while (v30 < v32);
            v9 = v115;
          }
        }

        else
        {
          v9 = v115;
          v29 = v125;
        }
      }

      v38 = a3[1];
      if (v29 >= v38)
      {
        goto LABEL_39;
      }

      if (__OFSUB__(v29, v9))
      {
        goto LABEL_132;
      }

      if (v29 - v9 >= a4)
      {
        goto LABEL_39;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_133;
      }

      if (v9 + a4 < v38)
      {
        v38 = v9 + a4;
      }

      if (v38 < v9)
      {
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_137:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_138:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_139:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_140:
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }

      if (v29 == v38)
      {
LABEL_39:
        v7 = v29;
        if (v29 < v9)
        {
          goto LABEL_131;
        }
      }

      else
      {
        v119 = v38;
        v116 = v9;
        v93 = *a3;
        v94 = *a3 + 40 * v29;
        v95 = v9 - v29;
        do
        {
          v127 = v29;
          v120 = v95;
          v122 = v94;
          v96 = v94;
          do
          {
            sub_21BB3A35C(v96, &v132);
            sub_21BB3A35C(v96 - 40, v129);
            v97 = v133;
            v98 = v134;
            __swift_project_boxed_opaque_existential_1Tm(&v132, v133);
            v99 = (*(v98 + 32))(v97, v98);
            if (*(a5 + 16) && (v100 = sub_21BBB3274(v99), (v101 & 1) != 0))
            {
              v102 = *(*(a5 + 56) + 8 * v100);
            }

            else
            {
              v102 = 0;
            }

            v103 = v130;
            v104 = v131;
            __swift_project_boxed_opaque_existential_1Tm(v129, v130);
            v105 = (*(v104 + 32))(v103, v104);
            if (*(a5 + 16) && (v106 = sub_21BBB3274(v105), (v107 & 1) != 0))
            {
              v108 = *(*(a5 + 56) + 8 * v106);
            }

            else
            {
              v108 = 0;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(v129);
            __swift_destroy_boxed_opaque_existential_0Tm(&v132);
            if (v108 >= v102)
            {
              break;
            }

            if (!v93)
            {
              goto LABEL_136;
            }

            sub_21BB3D104(v96, &v132);
            v109 = *(v96 - 24);
            *v96 = *(v96 - 40);
            *(v96 + 16) = v109;
            *(v96 + 32) = *(v96 - 8);
            sub_21BB3D104(&v132, v96 - 40);
            v96 -= 40;
          }

          while (!__CFADD__(v95++, 1));
          v29 = v127 + 1;
          v94 = v122 + 40;
          v95 = v120 - 1;
        }

        while (v127 + 1 != v119);
        v9 = v116;
        v7 = v119;
        if (v119 < v116)
        {
          goto LABEL_131;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_21BBBCBFC(0, *(v8 + 2) + 1, 1, v8);
      }

      v40 = *(v8 + 2);
      v39 = *(v8 + 3);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v8 = sub_21BBBCBFC((v39 > 1), v40 + 1, 1, v8);
      }

      *(v8 + 2) = v41;
      v42 = v8 + 32;
      v43 = &v8[16 * v40 + 32];
      *v43 = v9;
      *(v43 + 1) = v7;
      v135 = v8;
      v126 = *a1;
      if (!*a1)
      {
        goto LABEL_139;
      }

      if (v40)
      {
        v118 = v7;
        v121 = v8 + 32;
        while (1)
        {
          v44 = v41 - 1;
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v45 = *(v8 + 4);
            v46 = *(v8 + 5);
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_60:
            if (v48)
            {
              goto LABEL_122;
            }

            v61 = &v8[16 * v41];
            v63 = *v61;
            v62 = *(v61 + 1);
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_125;
            }

            v67 = &v42[16 * v44];
            v69 = *v67;
            v68 = *(v67 + 1);
            v55 = __OFSUB__(v68, v69);
            v70 = v68 - v69;
            if (v55)
            {
              goto LABEL_128;
            }

            if (__OFADD__(v65, v70))
            {
              goto LABEL_129;
            }

            if (v65 + v70 >= v47)
            {
              if (v47 < v70)
              {
                v44 = v41 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v71 = &v8[16 * v41];
          v73 = *v71;
          v72 = *(v71 + 1);
          v55 = __OFSUB__(v72, v73);
          v65 = v72 - v73;
          v66 = v55;
LABEL_74:
          if (v66)
          {
            goto LABEL_124;
          }

          v74 = &v42[16 * v44];
          v76 = *v74;
          v75 = *(v74 + 1);
          v55 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v55)
          {
            goto LABEL_127;
          }

          if (v77 < v65)
          {
            goto LABEL_3;
          }

LABEL_81:
          if (v44 - 1 >= v41)
          {
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
LABEL_127:
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
LABEL_133:
            __break(1u);
            goto LABEL_134;
          }

          v82 = *a3;
          if (!*a3)
          {
            goto LABEL_137;
          }

          v83 = v8;
          v84 = &v42[16 * v44 - 16];
          v85 = *v84;
          v86 = v44;
          v87 = &v42[16 * v44];
          v88 = *(v87 + 1);
          v89 = (v82 + 40 * *v84);
          v90 = (v82 + 40 * *v87);
          v91 = v82 + 40 * v88;

          sub_21BD70548(v89, v90, v91, v126, v124);
          if (v128)
          {

            v135 = v83;
            goto LABEL_112;
          }

          if (v88 < v85)
          {
            goto LABEL_117;
          }

          v92 = *(v83 + 2);
          if (v86 > v92)
          {
            goto LABEL_118;
          }

          *v84 = v85;
          *(v84 + 1) = v88;
          if (v86 >= v92)
          {
            goto LABEL_119;
          }

          v41 = v92 - 1;
          memmove(v87, v87 + 16, 16 * (v92 - 1 - v86));
          v8 = v83;
          *(v83 + 2) = v92 - 1;
          v42 = v121;
          a5 = v124;
          if (v92 <= 2)
          {
LABEL_3:
            v135 = v8;
            v7 = v118;
            goto LABEL_4;
          }
        }

        v49 = &v42[16 * v41];
        v50 = *(v49 - 8);
        v51 = *(v49 - 7);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_120;
        }

        v54 = *(v49 - 6);
        v53 = *(v49 - 5);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_121;
        }

        v56 = &v8[16 * v41];
        v58 = *v56;
        v57 = *(v56 + 1);
        v55 = __OFSUB__(v57, v58);
        v59 = v57 - v58;
        if (v55)
        {
          goto LABEL_123;
        }

        v55 = __OFADD__(v47, v59);
        v60 = v47 + v59;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v60 >= v52)
        {
          v78 = &v42[16 * v44];
          v80 = *v78;
          v79 = *(v78 + 1);
          v55 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v55)
          {
            goto LABEL_130;
          }

          if (v47 < v81)
          {
            v44 = v41 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_4:
      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_109;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_109:
  v111 = *a1;
  if (!*a1)
  {
    goto LABEL_140;
  }

  sub_21BD70978(&v135, v111, a3, a5);
  if (v128)
  {

LABEL_112:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21BD71360(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = *a4 + 40 * a3;
    v8 = result - a3;
LABEL_5:
    v32 = a3;
    v24 = v8;
    v25 = v7;
    while (1)
    {
      sub_21BB3A35C(v7, &v29);
      sub_21BB3A35C(v7 - 40, v26);
      v9 = v30;
      v10 = v31;
      __swift_project_boxed_opaque_existential_1Tm(&v29, v30);
      v11 = (*(v10 + 32))(v9, v10);
      if (*(a5 + 16) && (v12 = sub_21BBB3274(v11), (v13 & 1) != 0))
      {
        v14 = *(*(a5 + 56) + 8 * v12);
      }

      else
      {
        v14 = 0;
      }

      v15 = v27;
      v16 = v28;
      __swift_project_boxed_opaque_existential_1Tm(v26, v27);
      v17 = (*(v16 + 32))(v15, v16);
      if (*(a5 + 16) && (v18 = sub_21BBB3274(v17), (v19 & 1) != 0))
      {
        v20 = *(*(a5 + 56) + 8 * v18);
      }

      else
      {
        v20 = 0;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v29);
      if (v20 >= v14)
      {
LABEL_4:
        a3 = v32 + 1;
        v7 = v25 + 40;
        v8 = v24 - 1;
        if (v32 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      sub_21BB3D104(v7, &v29);
      v21 = *(v7 - 24);
      *v7 = *(v7 - 40);
      *(v7 + 16) = v21;
      *(v7 + 32) = *(v7 - 8);
      result = sub_21BB3D104(&v29, v7 - 40);
      v7 -= 40;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21BD71510(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_21BE2991C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
        v8 = sub_21BE28C7C();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_21BD70B24(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_21BD71360(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21BD71668(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  v10 = (*(v9 + 32))(v8, v9);
  if (*(a3 + 16) && (v11 = sub_21BBB3274(v10), (v12 & 1) != 0))
  {
    v13 = *(*(a3 + 56) + 8 * v11);
  }

  else
  {
    v13 = 0;
  }

  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  result = (*(v15 + 24))(v14, v15);
  if (result)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0;
  }

  v18 = v13 + v17;
  if (__OFADD__(v13, v17))
  {
    __break(1u);
  }

  else
  {
    v19 = a2[3];
    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v19);
    v21 = (*(v20 + 32))(v19, v20);
    if (*(a3 + 16) && (v22 = sub_21BBB3274(v21), (v23 & 1) != 0))
    {
      v24 = *(*(a3 + 56) + 8 * v22);
    }

    else
    {
      v24 = 0;
    }

    v25 = a2[3];
    v26 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v25);
    result = (*(v26 + 24))(v25, v26);
    if (result)
    {
      v27 = a4;
    }

    else
    {
      v27 = 0;
    }

    v28 = __OFADD__(v24, v27);
    v29 = v24 + v27;
    if (!v28)
    {
      return v29 < v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21BD717F0(char *__src, char *a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v85 = a6;
  v7 = a3;
  v8 = __src;
  v9 = a2 - __src;
  v10 = (a2 - __src) / 40;
  v11 = a3 - a2;
  v12 = (a3 - a2) / 40;
  if (v10 < v12)
  {
    v13 = a2;
    v14 = a4;
    if (a4 != __src || &__src[40 * v10] <= a4)
    {
      memmove(a4, __src, 40 * v10);
    }

    v76 = &v14[40 * v10];
    if (v9 >= 40 && v13 < v7)
    {
      v15 = v13;
      while (1)
      {
        __dst = v15;
        sub_21BB3A35C(v15, v82);
        sub_21BB3A35C(v14, v79);
        v16 = v83;
        v17 = v84;
        __swift_project_boxed_opaque_existential_1Tm(v82, v83);
        v18 = (*(v17 + 32))(v16, v17);
        if (*(a5 + 16) && (v19 = sub_21BBB3274(v18), (v20 & 1) != 0))
        {
          v21 = *(*(a5 + 56) + 8 * v19);
        }

        else
        {
          v21 = 0;
        }

        v22 = v83;
        v23 = v84;
        __swift_project_boxed_opaque_existential_1Tm(v82, v83);
        result = (*(v23 + 24))(v22, v23);
        v25 = v85;
        if ((result & 1) == 0)
        {
          v25 = 0;
        }

        v26 = __OFADD__(v21, v25);
        v27 = v21 + v25;
        if (v26)
        {
          goto LABEL_67;
        }

        v28 = v80;
        v29 = v81;
        __swift_project_boxed_opaque_existential_1Tm(v79, v80);
        v30 = (*(v29 + 32))(v28, v29);
        if (*(a5 + 16) && (v31 = sub_21BBB3274(v30), (v32 & 1) != 0))
        {
          v33 = *(*(a5 + 56) + 8 * v31);
        }

        else
        {
          v33 = 0;
        }

        v34 = v80;
        v35 = v81;
        __swift_project_boxed_opaque_existential_1Tm(v79, v80);
        result = (*(v35 + 24))(v34, v35);
        v36 = v85;
        if ((result & 1) == 0)
        {
          v36 = 0;
        }

        v37 = v33 + v36;
        if (__OFADD__(v33, v36))
        {
          goto LABEL_68;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v79);
        __swift_destroy_boxed_opaque_existential_0Tm(v82);
        if (v37 >= v27)
        {
          break;
        }

        v38 = __dst;
        v15 = (__dst + 40);
        if (v8 != __dst)
        {
          goto LABEL_26;
        }

LABEL_27:
        v8 += 40;
        if (v14 >= v76 || v15 >= v7)
        {
          goto LABEL_29;
        }
      }

      v38 = v14;
      v39 = v8 == v14;
      v14 += 40;
      v15 = __dst;
      if (v39)
      {
        goto LABEL_27;
      }

LABEL_26:
      v40 = *v38;
      v41 = *(v38 + 1);
      *(v8 + 4) = *(v38 + 4);
      *v8 = v40;
      *(v8 + 1) = v41;
      goto LABEL_27;
    }

LABEL_29:
    v42 = v8;
    goto LABEL_62;
  }

  if (a4 != a2 || &a2[40 * v12] <= a4)
  {
    v43 = a2;
    v44 = a4;
    memmove(a4, a2, 40 * v12);
    a4 = v44;
    a2 = v43;
  }

  v76 = &a4[40 * v12];
  v14 = a4;
  if (v11 < 40 || a2 <= v8)
  {
    v42 = a2;
LABEL_62:
    v73 = (v76 - v14) / 40;
    if (v42 != v14 || v42 >= &v14[40 * v73])
    {
      memmove(v42, v14, 40 * v73);
    }

    return 1;
  }

  v74 = a4;
LABEL_36:
  __dsta = a2;
  v45 = (a2 - 40);
  v46 = (v76 - 40);
  v7 -= 40;
  v75 = a2 - 40;
  while (1)
  {
    sub_21BB3A35C(v46, v82);
    sub_21BB3A35C(v45, v79);
    v50 = v83;
    v49 = v84;
    __swift_project_boxed_opaque_existential_1Tm(v82, v83);
    v51 = (*(v49 + 32))(v50, v49);
    if (*(a5 + 16) && (v52 = sub_21BBB3274(v51), (v53 & 1) != 0))
    {
      v54 = *(*(a5 + 56) + 8 * v52);
    }

    else
    {
      v54 = 0;
    }

    v55 = v83;
    v56 = v84;
    __swift_project_boxed_opaque_existential_1Tm(v82, v83);
    result = (*(v56 + 24))(v55, v56);
    v57 = v85;
    if ((result & 1) == 0)
    {
      v57 = 0;
    }

    v26 = __OFADD__(v54, v57);
    v58 = v54 + v57;
    if (v26)
    {
      break;
    }

    v59 = v80;
    v60 = v81;
    __swift_project_boxed_opaque_existential_1Tm(v79, v80);
    v61 = (*(v60 + 32))(v59, v60);
    if (*(a5 + 16) && (v62 = sub_21BBB3274(v61), (v63 & 1) != 0))
    {
      v64 = *(*(a5 + 56) + 8 * v62);
    }

    else
    {
      v64 = 0;
    }

    v65 = v80;
    v66 = v81;
    __swift_project_boxed_opaque_existential_1Tm(v79, v80);
    result = (*(v66 + 24))(v65, v66);
    v67 = v85;
    if ((result & 1) == 0)
    {
      v67 = 0;
    }

    v68 = v64 + v67;
    if (__OFADD__(v64, v67))
    {
      goto LABEL_69;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    __swift_destroy_boxed_opaque_existential_0Tm(v82);
    if (v68 < v58)
    {
      v14 = v74;
      v42 = v75;
      if ((v7 + 40) != __dsta)
      {
        v71 = *v75;
        v72 = *(v75 + 1);
        *(v7 + 32) = *(v75 + 4);
        *v7 = v71;
        *(v7 + 16) = v72;
      }

      v76 = (v46 + 40);
      if (v46 + 40 <= v74 || (a2 = v75, v75 <= v8))
      {
        v76 = (v46 + 40);
        goto LABEL_62;
      }

      goto LABEL_36;
    }

    v14 = v74;
    v45 = v75;
    if (v7 + 40 != v46 + 40)
    {
      v69 = *v46;
      v70 = *(v46 + 16);
      *(v7 + 32) = *(v46 + 32);
      *v7 = v69;
      *(v7 + 16) = v70;
    }

    v47 = v46 - 40;
    v7 -= 40;
    v48 = v46 > v74;
    v46 -= 40;
    if (!v48)
    {
      v76 = (v47 + 40);
      v42 = __dsta;
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_21BD71D5C(char **a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v27 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v27 = sub_21BDFD0AC(v27);
  }

  v22 = v7;
  *v7 = v27;
  v9 = v27 + 16;
  v10 = *(v27 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v22 = v27;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = v6;
      v13 = &v27[16 * v10];
      v14 = *v13;
      v15 = v9;
      v16 = &v9[16 * v10];
      v17 = *(v16 + 1);
      __src = (v11 + 40 * *v13);
      v18 = (v11 + 40 * *v16);
      v7 = (v11 + 40 * v17);

      sub_21BD717F0(__src, v18, v7, a2, a4, a5);
      v6 = v12;

      if (v12)
      {
        *v22 = v27;

        return 1;
      }

      if (v17 < v14)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v19 = *v15;
      if (v10 - 2 >= *v15)
      {
        goto LABEL_13;
      }

      *v13 = v14;
      *(v13 + 1) = v17;
      v20 = v19 - v10;
      if (v19 < v10)
      {
        goto LABEL_14;
      }

      v9 = v15;
      v10 = v19 - 1;
      memmove(v16, v16 + 16, 16 * v20);
      *v15 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD71F08(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v155 = MEMORY[0x277D84F90];
  v7 = a3[1];
  if (v7 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    v143 = a5;
    while (1)
    {
      v10 = v8;
      if (v8 + 1 >= v7)
      {
        v7 = v8 + 1;
        goto LABEL_34;
      }

      v11 = *a3;
      sub_21BB3A35C(*a3 + 40 * (v8 + 1), &v152);
      sub_21BB3A35C(v11 + 40 * v8, v149);
      v145 = sub_21BD71668(&v152, v149, a5, a6);
      if (v144)
      {
        goto LABEL_128;
      }

      v131 = v9;
      __swift_destroy_boxed_opaque_existential_0Tm(v149);
      __swift_destroy_boxed_opaque_existential_0Tm(&v152);
      v12 = v8 + 2;
      v132 = v8;
      v13 = 40 * v8;
      v14 = v11 + 40 * v10 + 80;
      v140 = v7;
      do
      {
        if (v7 == v12)
        {
          goto LABEL_25;
        }

        sub_21BB3A35C(v14, &v152);
        sub_21BB3A35C(v14 - 40, v149);
        v16 = v153;
        v15 = v154;
        __swift_project_boxed_opaque_existential_1Tm(&v152, v153);
        v17 = (*(v15 + 32))(v16, v15);
        if (*(a5 + 16) && (v18 = sub_21BBB3274(v17), (v19 & 1) != 0))
        {
          v20 = *(*(a5 + 56) + 8 * v18);
        }

        else
        {
          v20 = 0;
        }

        v21 = v153;
        v22 = v154;
        __swift_project_boxed_opaque_existential_1Tm(&v152, v153);
        v23 = (*(v22 + 24))(v21, v22);
        v24 = a6;
        if ((v23 & 1) == 0)
        {
          v24 = 0;
        }

        v25 = v20 + v24;
        if (__OFADD__(v20, v24))
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        v26 = v150;
        v27 = v151;
        __swift_project_boxed_opaque_existential_1Tm(v149, v150);
        v28 = (*(v27 + 32))(v26, v27);
        if (*(a5 + 16) && (v29 = sub_21BBB3274(v28), (v30 & 1) != 0))
        {
          v31 = *(*(a5 + 56) + 8 * v29);
        }

        else
        {
          v31 = 0;
        }

        v32 = v150;
        v33 = v151;
        __swift_project_boxed_opaque_existential_1Tm(v149, v150);
        v34 = (*(v33 + 24))(v32, v33);
        v35 = a6;
        if ((v34 & 1) == 0)
        {
          v35 = 0;
        }

        v36 = v31 + v35;
        if (__OFADD__(v31, v35))
        {
          goto LABEL_130;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v149);
        __swift_destroy_boxed_opaque_existential_0Tm(&v152);
        v37 = v36 >= v25;
        ++v12;
        v14 += 40;
        v7 = v140;
      }

      while (((v145 ^ v37) & 1) != 0);
      v7 = v12 - 1;
LABEL_25:
      v9 = v131;
      v10 = v132;
      if (v145)
      {
        if (v7 >= v132)
        {
          if (v132 < v7)
          {
            v38 = 40 * v7 - 40;
            v39 = v7;
            do
            {
              if (v10 != --v39)
              {
                v40 = *a3;
                if (!*a3)
                {
                  goto LABEL_153;
                }

                v41 = v40 + v13;
                v42 = v40 + v38;
                sub_21BB3D104((v40 + v13), &v152);
                v43 = *(v42 + 32);
                v44 = *(v42 + 16);
                *v41 = *v42;
                *(v41 + 16) = v44;
                *(v41 + 32) = v43;
                sub_21BB3D104(&v152, v42);
              }

              ++v10;
              v38 -= 40;
              v13 += 40;
            }

            while (v10 < v39);
            v10 = v132;
          }

          goto LABEL_34;
        }

LABEL_150:
        __break(1u);
LABEL_151:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_152:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_153:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_154:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_155:
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }

LABEL_34:
      v45 = a3[1];
      if (v7 >= v45)
      {
LABEL_43:
        v8 = v7;
        if (v7 < v10)
        {
          goto LABEL_146;
        }
      }

      else
      {
        if (__OFSUB__(v7, v10))
        {
          goto LABEL_147;
        }

        if (v7 - v10 >= a4)
        {
          goto LABEL_43;
        }

        if (__OFADD__(v10, a4))
        {
          goto LABEL_148;
        }

        if (v10 + a4 >= v45)
        {
          v46 = a3[1];
        }

        else
        {
          v46 = v10 + a4;
        }

        if (v46 < v10)
        {
          goto LABEL_149;
        }

        if (v7 == v46)
        {
          goto LABEL_43;
        }

        v133 = v10;
        v147 = *a3;
        v101 = *a3 + 40 * v7;
        v102 = v10 - v7;
        v136 = v46;
        do
        {
          v142 = v7;
          v137 = v102;
          v138 = v101;
          v103 = v101;
          do
          {
            sub_21BB3A35C(v103, &v152);
            sub_21BB3A35C(v103 - 40, v149);
            v104 = v153;
            v105 = v154;
            __swift_project_boxed_opaque_existential_1Tm(&v152, v153);
            v106 = (*(v105 + 32))(v104, v105);
            if (*(a5 + 16) && (v107 = sub_21BBB3274(v106), (v108 & 1) != 0))
            {
              v109 = *(*(a5 + 56) + 8 * v107);
            }

            else
            {
              v109 = 0;
            }

            v110 = v153;
            v111 = v154;
            __swift_project_boxed_opaque_existential_1Tm(&v152, v153);
            v112 = (*(v111 + 24))(v110, v111);
            v113 = a6;
            if ((v112 & 1) == 0)
            {
              v113 = 0;
            }

            v63 = __OFADD__(v109, v113);
            v114 = v109 + v113;
            if (v63)
            {
              __break(1u);
LABEL_127:
              __break(1u);
LABEL_128:
              __swift_destroy_boxed_opaque_existential_0Tm(v149);
              __swift_destroy_boxed_opaque_existential_0Tm(&v152);
LABEL_123:
              swift_bridgeObjectRelease_n();
            }

            v115 = v150;
            v116 = v151;
            __swift_project_boxed_opaque_existential_1Tm(v149, v150);
            v117 = (*(v116 + 32))(v115, v116);
            if (*(a5 + 16) && (v118 = sub_21BBB3274(v117), (v119 & 1) != 0))
            {
              v120 = *(*(a5 + 56) + 8 * v118);
            }

            else
            {
              v120 = 0;
            }

            v121 = v150;
            v122 = v151;
            __swift_project_boxed_opaque_existential_1Tm(v149, v150);
            v123 = (*(v122 + 24))(v121, v122);
            v124 = a6;
            if ((v123 & 1) == 0)
            {
              v124 = 0;
            }

            v63 = __OFADD__(v120, v124);
            v125 = v120 + v124;
            if (v63)
            {
              goto LABEL_127;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(v149);
            __swift_destroy_boxed_opaque_existential_0Tm(&v152);
            if (v125 >= v114)
            {
              break;
            }

            if (!v147)
            {
              goto LABEL_151;
            }

            sub_21BB3D104(v103, &v152);
            v126 = *(v103 - 24);
            *v103 = *(v103 - 40);
            *(v103 + 16) = v126;
            *(v103 + 32) = *(v103 - 8);
            sub_21BB3D104(&v152, v103 - 40);
            v103 -= 40;
          }

          while (!__CFADD__(v102++, 1));
          v7 = v142 + 1;
          v101 = v138 + 40;
          v102 = v137 - 1;
          v8 = v136;
        }

        while (v142 + 1 != v136);
        v10 = v133;
        if (v136 < v133)
        {
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_21BBBCBFC(0, *(v9 + 2) + 1, 1, v9);
      }

      v48 = *(v9 + 2);
      v47 = *(v9 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v9 = sub_21BBBCBFC((v47 > 1), v48 + 1, 1, v9);
      }

      *(v9 + 2) = v49;
      v50 = v9 + 32;
      v51 = &v9[16 * v48 + 32];
      *v51 = v10;
      *(v51 + 1) = v8;
      v155 = v9;
      v146 = *a1;
      if (!*a1)
      {
        goto LABEL_154;
      }

      if (v48)
      {
        break;
      }

LABEL_4:
      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_120;
      }
    }

    v135 = v8;
    v141 = v9 + 32;
    while (1)
    {
      v52 = v49 - 1;
      if (v49 >= 4)
      {
        break;
      }

      if (v49 == 3)
      {
        v53 = *(v9 + 4);
        v54 = *(v9 + 5);
        v63 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        v56 = v63;
LABEL_64:
        if (v56)
        {
          goto LABEL_137;
        }

        v69 = &v9[16 * v49];
        v71 = *v69;
        v70 = *(v69 + 1);
        v72 = __OFSUB__(v70, v71);
        v73 = v70 - v71;
        v74 = v72;
        if (v72)
        {
          goto LABEL_140;
        }

        v75 = &v50[16 * v52];
        v77 = *v75;
        v76 = *(v75 + 1);
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_143;
        }

        if (__OFADD__(v73, v78))
        {
          goto LABEL_144;
        }

        if (v73 + v78 >= v55)
        {
          if (v55 < v78)
          {
            v52 = v49 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      v79 = &v9[16 * v49];
      v81 = *v79;
      v80 = *(v79 + 1);
      v63 = __OFSUB__(v80, v81);
      v73 = v80 - v81;
      v74 = v63;
LABEL_78:
      if (v74)
      {
        goto LABEL_139;
      }

      v82 = &v50[16 * v52];
      v84 = *v82;
      v83 = *(v82 + 1);
      v63 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v63)
      {
        goto LABEL_142;
      }

      if (v85 < v73)
      {
        goto LABEL_3;
      }

LABEL_85:
      if (v52 - 1 >= v49)
      {
        goto LABEL_131;
      }

      v90 = *a3;
      if (!*a3)
      {
        goto LABEL_152;
      }

      v91 = v9;
      v92 = &v50[16 * v52 - 16];
      v93 = *v92;
      v94 = v52;
      v95 = &v50[16 * v52];
      v96 = *(v95 + 1);
      v97 = (v90 + 40 * *v92);
      v98 = (v90 + 40 * *v95);
      v99 = v90 + 40 * v96;

      sub_21BD717F0(v97, v98, v99, v146, v143, a6);
      if (v144)
      {

        v155 = v91;
        goto LABEL_123;
      }

      if (v96 < v93)
      {
        goto LABEL_132;
      }

      v100 = *(v91 + 2);
      if (v94 > v100)
      {
        goto LABEL_133;
      }

      *v92 = v93;
      *(v92 + 1) = v96;
      if (v94 >= v100)
      {
        goto LABEL_134;
      }

      v49 = v100 - 1;
      memmove(v95, v95 + 16, 16 * (v100 - 1 - v94));
      v9 = v91;
      *(v91 + 2) = v100 - 1;
      v50 = v141;
      a5 = v143;
      if (v100 <= 2)
      {
LABEL_3:
        v155 = v9;
        v8 = v135;
        goto LABEL_4;
      }
    }

    v57 = &v50[16 * v49];
    v58 = *(v57 - 8);
    v59 = *(v57 - 7);
    v63 = __OFSUB__(v59, v58);
    v60 = v59 - v58;
    if (v63)
    {
      goto LABEL_135;
    }

    v62 = *(v57 - 6);
    v61 = *(v57 - 5);
    v63 = __OFSUB__(v61, v62);
    v55 = v61 - v62;
    v56 = v63;
    if (v63)
    {
      goto LABEL_136;
    }

    v64 = &v9[16 * v49];
    v66 = *v64;
    v65 = *(v64 + 1);
    v63 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v63)
    {
      goto LABEL_138;
    }

    v63 = __OFADD__(v55, v67);
    v68 = v55 + v67;
    if (v63)
    {
      goto LABEL_141;
    }

    if (v68 >= v60)
    {
      v86 = &v50[16 * v52];
      v88 = *v86;
      v87 = *(v86 + 1);
      v63 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v63)
      {
        goto LABEL_145;
      }

      if (v55 < v89)
      {
        v52 = v49 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_64;
  }

  swift_bridgeObjectRetain_n();
LABEL_120:
  v128 = *a1;
  if (!*a1)
  {
    goto LABEL_155;
  }

  sub_21BD71D5C(&v155, v128, a3, a5, a6);
  if (v144)
  {

    goto LABEL_123;
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_21BD72854(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_21BE2991C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
        v10 = sub_21BE28C7C();
        *(v10 + 16) = v9;
      }

      *&v44 = v10 + 32;
      *(&v44 + 1) = v9;

      sub_21BD71F08(&v44, v41, a1, v8, a2, a3);

      *(v10 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v6 < 0)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  if (v6 <= 1)
  {
    return swift_bridgeObjectRelease_n();
  }

  v11 = *a1;

  v12 = -1;
  v13 = 1;
  v47 = v11;
  v37 = v6;
  while (2)
  {
    v39 = v13;
    v40 = v12;
    v38 = v11;
    do
    {
      sub_21BB3A35C(v11 + 40, &v44);
      sub_21BB3A35C(v11, v41);
      v14 = v45;
      v15 = v46;
      __swift_project_boxed_opaque_existential_1Tm(&v44, v45);
      v16 = (*(v15 + 32))(v14, v15);
      if (*(a2 + 16) && (v17 = sub_21BBB3274(v16), (v18 & 1) != 0))
      {
        v19 = *(*(a2 + 56) + 8 * v17);
      }

      else
      {
        v19 = 0;
      }

      v20 = v45;
      v21 = v46;
      __swift_project_boxed_opaque_existential_1Tm(&v44, v45);
      result = (*(v21 + 24))(v20, v21);
      if (result)
      {
        v22 = a3;
      }

      else
      {
        v22 = 0;
      }

      v23 = __OFADD__(v19, v22);
      v24 = v19 + v22;
      if (v23)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v25 = v42;
      v26 = v43;
      __swift_project_boxed_opaque_existential_1Tm(v41, v42);
      v27 = (*(v26 + 32))(v25, v26);
      if (*(a2 + 16) && (v28 = sub_21BBB3274(v27), (v29 & 1) != 0))
      {
        v30 = *(*(a2 + 56) + 8 * v28);
      }

      else
      {
        v30 = 0;
      }

      v31 = v42;
      v32 = v43;
      __swift_project_boxed_opaque_existential_1Tm(v41, v42);
      result = (*(v32 + 24))(v31, v32);
      if (result)
      {
        v33 = a3;
      }

      else
      {
        v33 = 0;
      }

      v34 = v30 + v33;
      if (__OFADD__(v30, v33))
      {
        goto LABEL_36;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v44);
      if (v34 >= v24)
      {
        break;
      }

      if (!v47)
      {
        goto LABEL_39;
      }

      sub_21BB3D104((v11 + 40), &v44);
      v35 = *(v11 + 16);
      *(v11 + 40) = *v11;
      *(v11 + 56) = v35;
      *(v11 + 72) = *(v11 + 32);
      sub_21BB3D104(&v44, v11);
      v11 -= 40;
    }

    while (!__CFADD__(v12++, 1));
    v13 = v39 + 1;
    v11 = v38 + 40;
    v12 = v40 - 1;
    if (v39 + 1 != v37)
    {
      continue;
    }

    return swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21BD72BA0(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_21BDFD58C(v6);
  }

  v7 = v6[2];
  v9[0] = (v6 + 4);
  v9[1] = v7;

  sub_21BD72854(v9, a2, a3);

  *a1 = v6;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21BD72C54()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v5, v6, "ChecklistItemSorter created", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21BD72D88()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v5, v6, "LegacyChecklistSorter created", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return -1000;
}

uint64_t sub_21BD72EE4(char *__dst, char *__src, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 5;
  v13 = a3 - __src;
  v14 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 5;
  if (v12 < v15)
  {
    v16 = 32 * v12;
    if (a4 != __dst || &__dst[v16] <= a4)
    {
      memmove(a4, __dst, v16);
    }

    v17 = &v6[v16];
    if (v10 < 32 || v8 >= v7)
    {
LABEL_31:
      v8 = v9;
      goto LABEL_58;
    }

    v64 = v7;
    v62 = &v6[v16];
    while (1)
    {
      v18 = *(v8 + 2);
      v20 = *(v6 + 1);
      v19 = *(v6 + 2);
      v21 = v6[24];
      v60 = *(v8 + 1);
      if (*(a5 + 16))
      {
        v22 = v6[24];
        v23 = v8[24];

        v24 = sub_21BBB3230(v23);
        if (v25)
        {
          v26 = *(*(a5 + 56) + 8 * v24);
        }

        else
        {
          v26 = 0;
        }

        v21 = v22;
      }

      else
      {

        v26 = 0;
      }

      v27 = v9;
      if (*(a5 + 16))
      {
        v28 = v6;
        v29 = sub_21BBB3230(v21);
        if (v30)
        {
          v31 = *(*(a5 + 56) + 8 * v29);
          goto LABEL_23;
        }
      }

      else
      {
        v28 = v6;
      }

      v31 = 0;
LABEL_23:

      if (v31 >= v26)
      {
        v36 = v28;
        v32 = v28;
        v6 = v28 + 32;
        v34 = v27;
        v35 = v64;
        if (v27 == v36)
        {
          goto LABEL_29;
        }

LABEL_28:
        v37 = *(v32 + 1);
        *v34 = *v32;
        *(v34 + 1) = v37;
        goto LABEL_29;
      }

      v32 = v8;
      v33 = v27 == v8;
      v8 += 32;
      v6 = v28;
      v34 = v27;
      v35 = v64;
      if (!v33)
      {
        goto LABEL_28;
      }

LABEL_29:
      v9 = v34 + 32;
      v17 = v62;
      if (v6 >= v62 || v8 >= v35)
      {
        goto LABEL_31;
      }
    }
  }

  v38 = 32 * v15;
  if (a4 != __src || &__src[v38] <= a4)
  {
    memmove(a4, __src, 32 * v15);
  }

  v17 = &v6[v38];
  if (v13 >= 32 && v8 > v9)
  {
    v61 = v6;
LABEL_38:
    v39 = v7 - 32;
    while (1)
    {
      v65 = v39;
      v40 = *(v17 - 3);
      v41 = *(v17 - 2);
      v43 = *(v8 - 3);
      v42 = *(v8 - 2);
      v44 = *(v8 - 8);
      v63 = v17;
      if (*(a5 + 16))
      {
        v45 = *(v17 - 8);

        v46 = sub_21BBB3230(v45);
        if (v47)
        {
          v48 = *(*(a5 + 56) + 8 * v46);
          if (!*(a5 + 16))
          {
            goto LABEL_48;
          }

          goto LABEL_46;
        }
      }

      else
      {
      }

      v48 = 0;
      if (!*(a5 + 16))
      {
        goto LABEL_48;
      }

LABEL_46:
      v49 = sub_21BBB3230(v44);
      if ((v50 & 1) == 0)
      {
LABEL_48:
        v51 = 0;
        goto LABEL_49;
      }

      v51 = *(*(a5 + 56) + 8 * v49);
LABEL_49:

      if (v51 < v48)
      {
        v54 = v8 - 32;
        v7 = v65;
        v6 = v61;
        v17 = v63;
        if (v65 + 32 != v8)
        {
          v55 = *(v8 - 1);
          *v65 = *v54;
          *(v65 + 1) = v55;
        }

        if (v63 <= v61 || (v8 -= 32, v54 <= v9))
        {
          v8 = v54;
          break;
        }

        goto LABEL_38;
      }

      v6 = v61;
      v52 = v63 - 32;
      if (v65 + 32 != v63)
      {
        v53 = *(v63 - 1);
        *v65 = *v52;
        *(v65 + 1) = v53;
      }

      v39 = v65 - 32;
      v17 = v63 - 32;
      if (v52 <= v61)
      {
        v17 = v63 - 32;
        break;
      }
    }
  }

LABEL_58:
  v56 = v17 - v6;
  v57 = v17 - v6 + 31;
  if (v56 < 0)
  {
    v56 = v57;
  }

  v58 = v56 & 0xFFFFFFFFFFFFFFE0;
  if (v8 != v6 || v8 >= &v6[v58])
  {
    memmove(v8, v6, v58);
  }

  return 1;
}

uint64_t sub_21BD732BC(char **a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_21BDFD0AC(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __dst = (v10 + 32 * *v12);
      v15 = (v10 + 32 * *v13);
      v16 = (v10 + 32 * v14);

      sub_21BD72EE4(__dst, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD73464(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v151 = MEMORY[0x277D84F90];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
LABEL_111:
    v125 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    sub_21BD732BC(&v151, v125, a3, a5);
    if (!v143)
    {

      swift_bridgeObjectRelease_n();
    }

LABEL_113:

LABEL_114:
    swift_bridgeObjectRelease_n();
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v139 = a5;
  while (1)
  {
    if (v7 + 1 >= v6)
    {
      v6 = v7 + 1;
      goto LABEL_33;
    }

    v130 = v8;
    v9 = *a3;
    v10 = *a3 + 32 * (v7 + 1);
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    LOBYTE(v10) = *(v10 + 24);
    v149[0] = v11;
    v149[1] = v12;
    v149[2] = v13;
    v150 = v10;
    v14 = v9 + 32 * v7;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    LOBYTE(v14) = *(v14 + 24);
    v147[0] = v15;
    v147[1] = v16;
    v147[2] = v17;
    v148 = v14;

    v144 = sub_21BD70410(v149, v147, a5);
    if (v143)
    {

      goto LABEL_114;
    }

    v18 = v7;
    v19 = v7 + 2;
    v128 = v18;
    v136 = 32 * v18;
    v20 = v9 + 32 * v18 + 48;
    v140 = v6;
    while (v6 != v19)
    {
      v23 = *(v20 + 24);
      v24 = *(v20 + 32);
      v26 = *(v20 - 8);
      v25 = *v20;
      v27 = *(v20 + 8);
      if (!*(a5 + 16))
      {
        v33 = *(v20 + 24);

LABEL_16:
        v32 = 0;
        if (!*(a5 + 16))
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }

      v28 = *(v20 + 40);
      v29 = *(v20 + 24);

      v30 = sub_21BBB3230(v28);
      if ((v31 & 1) == 0)
      {
        goto LABEL_16;
      }

      v32 = *(*(a5 + 56) + 8 * v30);
      if (!*(a5 + 16))
      {
        goto LABEL_8;
      }

LABEL_17:
      v34 = sub_21BBB3230(v27);
      if (v35)
      {
        v21 = *(*(a5 + 56) + 8 * v34);
        goto LABEL_9;
      }

LABEL_8:
      v21 = 0;
LABEL_9:

      v22 = v21 >= v32;
      ++v19;
      v20 += 32;
      v6 = v140;
      if (((v144 ^ v22) & 1) == 0)
      {
        v6 = v19 - 1;
        break;
      }
    }

    v7 = v128;
    v8 = v130;
    v36 = v136;
    if (!v144)
    {
      goto LABEL_33;
    }

    if (v6 < v128)
    {
      goto LABEL_137;
    }

    if (v128 < v6)
    {
      v37 = 32 * v6 - 32;
      v38 = v6;
      v39 = v128;
      do
      {
        if (v39 != --v38)
        {
          v42 = *a3;
          if (!*a3)
          {
            goto LABEL_140;
          }

          v43 = (v42 + v36);
          v44 = (v42 + v37);
          v45 = *(v42 + v36);
          v46 = *(v42 + v36 + 8);
          v47 = *(v42 + v36 + 24);
          if (v36 != v37 || v43 >= v44 + 2)
          {
            v40 = v44[1];
            *v43 = *v44;
            v43[1] = v40;
          }

          v41 = v42 + v37;
          *v41 = v45;
          *(v41 + 8) = v46;
          *(v41 + 24) = v47;
        }

        ++v39;
        v37 -= 32;
        v36 += 32;
      }

      while (v39 < v38);
    }

LABEL_33:
    v48 = a3[1];
    if (v6 >= v48)
    {
      goto LABEL_59;
    }

    if (__OFSUB__(v6, v7))
    {
      goto LABEL_134;
    }

    if (v6 - v7 >= a4)
    {
      goto LABEL_59;
    }

    if (__OFADD__(v7, a4))
    {
      goto LABEL_135;
    }

    if (v7 + a4 < v48)
    {
      v48 = v7 + a4;
    }

    if (v48 < v7)
    {
      break;
    }

    if (v6 == v48)
    {
      goto LABEL_59;
    }

    v133 = v48;
    v129 = v7;
    v131 = v8;
    v145 = *a3;
    v49 = *a3 + 32 * v6 + 24;
    v50 = v7 - v6;
    while (2)
    {
      v141 = v6;
      v135 = v50;
      v137 = v49;
      while (2)
      {
        v51 = *(v49 - 16);
        v52 = *(v49 - 8);
        v54 = *(v49 - 48);
        v53 = *(v49 - 40);
        v55 = *(v49 - 32);
        if (!*(a5 + 16))
        {
          v61 = *(v49 - 16);

LABEL_49:
          v60 = 0;
          if (!*(a5 + 16))
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }

        v56 = *v49;
        v57 = *(v49 - 16);

        v58 = sub_21BBB3230(v56);
        if ((v59 & 1) == 0)
        {
          goto LABEL_49;
        }

        v60 = *(*(a5 + 56) + 8 * v58);
        if (!*(a5 + 16))
        {
LABEL_52:
          v64 = 0;
          goto LABEL_53;
        }

LABEL_50:
        v62 = sub_21BBB3230(v55);
        if ((v63 & 1) == 0)
        {
          goto LABEL_52;
        }

        v64 = *(*(a5 + 56) + 8 * v62);
LABEL_53:

        if (v64 >= v60)
        {
          break;
        }

        if (!v145)
        {
          goto LABEL_138;
        }

        v65 = (v49 - 24);
        v67 = *(v49 - 56);
        v66 = *(v49 - 40);
        *(v49 - 32) = *v49;
        v49 -= 32;
        v68 = *(v49 + 8);
        v69 = *(v49 + 16);
        *v65 = v67;
        v65[1] = v66;
        *(v49 - 24) = v68;
        *(v49 - 16) = v69;
        if (!__CFADD__(v50++, 1))
        {
          continue;
        }

        break;
      }

      v6 = v141 + 1;
      v49 = v137 + 32;
      v50 = v135 - 1;
      if (v141 + 1 != v133)
      {
        continue;
      }

      break;
    }

    v7 = v129;
    v8 = v131;
    v6 = v133;
LABEL_59:
    if (v6 < v7)
    {
      goto LABEL_133;
    }

    v134 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_21BBBCBFC(0, *(v8 + 2) + 1, 1, v8);
    }

    v72 = *(v8 + 2);
    v71 = *(v8 + 3);
    v73 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      v8 = sub_21BBBCBFC((v71 > 1), v72 + 1, 1, v8);
    }

    *(v8 + 2) = v73;
    v74 = v8 + 32;
    v75 = &v8[16 * v72 + 32];
    *v75 = v7;
    *(v75 + 1) = v134;
    v151 = v8;
    v146 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (v72)
    {
      v142 = v8 + 32;
      while (1)
      {
        v76 = v73 - 1;
        if (v73 >= 4)
        {
          break;
        }

        if (v73 == 3)
        {
          v77 = *(v8 + 4);
          v78 = *(v8 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_80:
          if (v80)
          {
            goto LABEL_124;
          }

          v93 = &v8[16 * v73];
          v95 = *v93;
          v94 = *(v93 + 1);
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_127;
          }

          v99 = &v74[16 * v76];
          v101 = *v99;
          v100 = *(v99 + 1);
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_131;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              v76 = v73 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v103 = &v8[16 * v73];
        v105 = *v103;
        v104 = *(v103 + 1);
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_94:
        if (v98)
        {
          goto LABEL_126;
        }

        v106 = &v74[16 * v76];
        v108 = *v106;
        v107 = *(v106 + 1);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_129;
        }

        if (v109 < v97)
        {
          goto LABEL_3;
        }

LABEL_101:
        if (v76 - 1 >= v73)
        {
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
LABEL_127:
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        v114 = *a3;
        if (!*a3)
        {
          goto LABEL_139;
        }

        v115 = v8;
        v116 = &v74[16 * v76 - 16];
        v117 = *v116;
        v118 = v76;
        v119 = &v74[16 * v76];
        v120 = *(v119 + 1);
        v121 = (v114 + 32 * *v116);
        v122 = (v114 + 32 * *v119);
        v123 = (v114 + 32 * v120);

        sub_21BD72EE4(v121, v122, v123, v146, v139);
        if (v143)
        {
          goto LABEL_113;
        }

        if (v120 < v117)
        {
          goto LABEL_119;
        }

        v8 = v115;
        v124 = *(v115 + 2);
        if (v118 > v124)
        {
          goto LABEL_120;
        }

        *v116 = v117;
        *(v116 + 1) = v120;
        if (v118 >= v124)
        {
          goto LABEL_121;
        }

        v73 = v124 - 1;
        memmove(v119, v119 + 16, 16 * (v124 - 1 - v118));
        *(v115 + 2) = v124 - 1;
        a5 = v139;
        v74 = v142;
        if (v124 <= 2)
        {
LABEL_3:
          v151 = v8;
          goto LABEL_4;
        }
      }

      v81 = &v74[16 * v73];
      v82 = *(v81 - 8);
      v83 = *(v81 - 7);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_122;
      }

      v86 = *(v81 - 6);
      v85 = *(v81 - 5);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_123;
      }

      v88 = &v8[16 * v73];
      v90 = *v88;
      v89 = *(v88 + 1);
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_125;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_128;
      }

      if (v92 >= v84)
      {
        v110 = &v74[16 * v76];
        v112 = *v110;
        v111 = *(v110 + 1);
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_132;
        }

        if (v79 < v113)
        {
          v76 = v73 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_4:
    v6 = a3[1];
    v7 = v134;
    if (v134 >= v6)
    {
      goto LABEL_111;
    }
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_139:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_140:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_141:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_142:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_21BD73CB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v32 = *a4;
    v6 = *a4 + 32 * a3 + 24;
    v7 = result - a3;
LABEL_5:
    v30 = v6;
    v31 = a3;
    v29 = v7;
    while (1)
    {
      v8 = *(v6 - 16);
      v9 = *(v6 - 8);
      v10 = *(v6 - 48);
      v11 = *(v6 - 40);
      v12 = *(v6 - 32);
      if (!*(a5 + 16))
      {
        break;
      }

      v13 = *v6;
      v14 = *(v6 - 16);

      v15 = sub_21BBB3230(v13);
      if ((v16 & 1) == 0)
      {
        goto LABEL_11;
      }

      v17 = *(*(a5 + 56) + 8 * v15);
      if (!*(a5 + 16))
      {
        goto LABEL_14;
      }

LABEL_12:
      v19 = sub_21BBB3230(v12);
      if (v20)
      {
        v21 = *(*(a5 + 56) + 8 * v19);
        goto LABEL_15;
      }

LABEL_14:
      v21 = 0;
LABEL_15:

      if (v21 >= v17)
      {
        goto LABEL_4;
      }

      if (!v32)
      {
        __break(1u);
        return result;
      }

      v22 = (v6 - 24);
      v24 = *(v6 - 56);
      v23 = *(v6 - 40);
      *(v6 - 32) = *v6;
      v6 -= 32;
      v25 = *(v6 + 8);
      v26 = *(v6 + 16);
      *v22 = v24;
      v22[1] = v23;
      *(v6 - 24) = v25;
      *(v6 - 16) = v26;
      if (__CFADD__(v7++, 1))
      {
LABEL_4:
        a3 = v31 + 1;
        v6 = v30 + 32;
        v7 = v29 - 1;
        if (v31 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    v18 = *(v6 - 16);

LABEL_11:
    v17 = 0;
    if (!*(a5 + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_21BD73E4C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_21BE2991C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_21BE28C7C();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_21BD73464(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_21BD73CB0(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21BD73F94(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void *, uint64_t))
{
  v8 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a3(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + 32;
  v11[1] = v9;

  a4(v11, a2);

  *a1 = v8;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21BD74050(uint64_t a1, uint64_t a2)
{
  v11 = a1;

  sub_21BD73F94(&v11, a2, sub_21BDFD5D4, sub_21BD73E4C);

  v3 = v11;
  v4 = *(v11 + 16);
  if (v4)
  {
    v11 = MEMORY[0x277D84F90];
    sub_21BC599FC(0, v4, 0);
    v5 = v11;
    v6 = *(v11 + 16);
    v7 = 56;
    do
    {
      v8 = *(v3 + v7);
      v11 = v5;
      v9 = *(v5 + 24);
      if (v6 >= v9 >> 1)
      {
        sub_21BC599FC((v9 > 1), v6 + 1, 1);
        v5 = v11;
      }

      *(v5 + 16) = v6 + 1;
      *(v5 + v6 + 32) = v8;
      v7 += 32;
      ++v6;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t sub_21BD741B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v30 = *(a2 + 24);
  if (*(a3 + 16) && (v7 = sub_21BBB3230(*(a1 + 24)), (v8 & 1) != 0))
  {
    v31 = *(*(a3 + 56) + 8 * v7);
  }

  else
  {
    v31 = 0;
  }

  result = v5 + 32;
  v10 = -*(v5 + 16);
  v11 = -1;
  while (v10 + v11 != -1)
  {
    if (++v11 >= *(v5 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v12 = result + 40;
    sub_21BB3A35C(result, v32);
    v13 = v33;
    v14 = v34;
    __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    v15 = (*(v14 + 24))(v13, v14);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    result = v12;
    if ((v15 & 1) == 0)
    {
      v16 = 0;
      goto LABEL_11;
    }
  }

  v16 = v35;
LABEL_11:
  v17 = v31 + v16;
  if (__OFADD__(v31, v16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (*(a3 + 16) && (v18 = sub_21BBB3230(v30), (v19 & 1) != 0))
  {
    v20 = *(*(a3 + 56) + 8 * v18);
  }

  else
  {
    v20 = 0;
  }

  result = v6 + 32;
  v21 = -*(v6 + 16);
  v22 = -1;
  while (v21 + v22 != -1)
  {
    if (++v22 >= *(v6 + 16))
    {
      goto LABEL_25;
    }

    v23 = result + 40;
    sub_21BB3A35C(result, v32);
    v24 = v33;
    v25 = v34;
    __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    v26 = (*(v25 + 24))(v24, v25);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    result = v23;
    if ((v26 & 1) == 0)
    {
      v27 = 0;
      goto LABEL_22;
    }
  }

  v27 = v35;
LABEL_22:
  v28 = __OFADD__(v20, v27);
  v29 = v20 + v27;
  if (!v28)
  {
    return v29 < v17;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21BD743A0(char *__src, char *a2, char *a3, char *__dst, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 31;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 5;
  v12 = a3 - a2;
  v13 = a3 - a2 + 31;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 5;
  if (v11 >= v14)
  {
    v34 = 32 * v14;
    if (__dst != a2 || &a2[v34] <= __dst)
    {
      v35 = __dst;
      memmove(__dst, a2, 32 * v14);
      __dst = v35;
    }

    v59 = __dst;
    v17 = &__dst[v34];
    if (v12 < 32 || v7 <= v8)
    {
      v33 = v7;
      v16 = __dst;
      goto LABEL_50;
    }

    __dstb = v7;
    v56 = v8;
    while (1)
    {
      v36 = 0;
      v37 = v17;
      v57 = __dstb - 32;
      v58 = v6;
      while (1)
      {
        v38 = v37;
        v39 = &v37[v36];
        v40 = &v37[v36 - 32];
        v41 = *&v37[v36 - 24];
        v42 = *&v37[v36 - 16];
        v43 = v37[v36 - 8];
        v68 = *v40;
        v69 = v41;
        v70 = v42;
        v71 = v43;
        v44 = *(__dstb - 3);
        v45 = *(__dstb - 2);
        v46 = *(__dstb - 8);
        v64 = *(__dstb - 4);
        v65 = v44;
        v66 = v45;
        v67 = v46;

        v47 = v72;
        v48 = sub_21BD741B0(&v68, &v64, a5, a6);
        v72 = v47;
        if (v47)
        {

          v54 = v59;
          v33 = __dstb;
          v53 = (v38 - v59 + v36 + ((v38 - v59 + v36) < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
          if (__dstb >= v59 && __dstb < &v59[v53] && __dstb == v59)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        v49 = v48;

        if (v49)
        {
          break;
        }

        v50 = &v58[v36];
        v37 = v38;
        if (&v58[v36] != v39)
        {
          v51 = *(v40 + 16);
          *(v50 - 2) = *v40;
          *(v50 - 1) = v51;
        }

        v36 -= 32;
        v17 = &v38[v36];
        v16 = v59;
        if (&v38[v36] <= v59)
        {
          v33 = __dstb;
          goto LABEL_50;
        }
      }

      v6 = &v58[v36 - 32];
      if (&v58[v36] != __dstb)
      {
        v52 = *(__dstb - 1);
        *v6 = *v57;
        *&v58[v36 - 16] = v52;
      }

      v17 = &v38[v36];
      v16 = v59;
      if (&v38[v36] > v59)
      {
        __dstb -= 32;
        if (v57 > v56)
        {
          continue;
        }
      }

      v17 = &v38[v36];
      v33 = v57;
      goto LABEL_50;
    }
  }

  v15 = 32 * v11;
  v16 = __dst;
  if (__dst != __src || &__src[v15] <= __dst)
  {
    memmove(__dst, __src, v15);
  }

  v17 = &v16[v15];
  if (v9 < 32)
  {
LABEL_21:
    v33 = v8;
LABEL_50:
    v53 = (v17 - v16 + (v17 - v16 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
    if (v33 >= v16 && v33 < &v16[v53] && v33 == v16)
    {
      goto LABEL_55;
    }

LABEL_53:
    v54 = v16;
LABEL_54:
    memmove(v33, v54, v53);
    goto LABEL_55;
  }

  if (v7 >= v6)
  {
    v33 = v8;
    goto LABEL_50;
  }

  __dsta = &v16[v15];
  while (1)
  {
    v18 = v6;
    v19 = v8;
    v20 = *(v7 + 1);
    v21 = *(v7 + 2);
    v22 = v7[24];
    v68 = *v7;
    v69 = v20;
    v70 = v21;
    v71 = v22;
    v23 = *(v16 + 1);
    v24 = *(v16 + 2);
    v25 = v16[24];
    v64 = *v16;
    v65 = v23;
    v66 = v24;
    v67 = v25;

    v26 = v72;
    v27 = sub_21BD741B0(&v68, &v64, a5, a6);
    v72 = v26;
    if (v26)
    {
      break;
    }

    v28 = v27;

    if ((v28 & 1) == 0)
    {
      v29 = v16;
      v30 = v19;
      v31 = v19 == v16;
      v16 += 32;
      if (v31)
      {
        goto LABEL_19;
      }

LABEL_18:
      v32 = *(v29 + 1);
      *v30 = *v29;
      *(v30 + 1) = v32;
      goto LABEL_19;
    }

    v29 = v7;
    v30 = v19;
    v31 = v19 == v7;
    v7 += 32;
    if (!v31)
    {
      goto LABEL_18;
    }

LABEL_19:
    v8 = v30 + 32;
    v17 = __dsta;
    if (v16 < __dsta)
    {
      v6 = v18;
      if (v7 < v18)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  v53 = (__dsta - v16 + (__dsta - v16 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v19 < v16 || v19 >= &v16[v53])
  {
    v33 = v19;
    v54 = v16;
    goto LABEL_54;
  }

  if (v19 != v16)
  {
    v33 = v19;
    goto LABEL_53;
  }

LABEL_55:

  return 1;
}

uint64_t sub_21BD7483C(char *a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v26 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_13:
    v26 = sub_21BDFD0AC(v26);
  }

  v21 = v7;
  *v7 = v26;
  v9 = v26 + 16;
  v10 = *(v26 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v21 = v26;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = &v26[16 * v10];
      v13 = *v12;
      v14 = v9;
      v15 = &v9[16 * v10];
      v16 = *(v15 + 1);
      __src = (v11 + 32 * *v12);
      v17 = (v11 + 32 * *v15);
      v7 = (v11 + 32 * v16);

      sub_21BD743A0(__src, v17, v7, a2, a4, a5);
      if (v6)
      {
        goto LABEL_9;
      }

      if (v16 < v13)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v18 = *v14;
      if (v10 - 2 >= *v14)
      {
        goto LABEL_11;
      }

      *v12 = v13;
      *(v12 + 1) = v16;
      v19 = v18 - v10;
      if (v18 < v10)
      {
        goto LABEL_12;
      }

      v9 = v14;
      v10 = v18 - 1;
      memmove(v15, v15 + 16, 16 * v19);
      *v14 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v21 = v26;
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD749C4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v145 = MEMORY[0x277D84F90];
  v9 = a3[1];
  if (v9 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    v136 = a5;
    while (1)
    {
      if (v10 + 1 >= v9)
      {
        v25 = v10 + 1;
      }

      else
      {
        __dst = v9;
        v12 = *a3;
        v13 = *a3 + 32 * (v10 + 1);
        v14 = *v13;
        v15 = *(v13 + 8);
        v16 = *(v13 + 16);
        LOBYTE(v13) = *(v13 + 24);
        v141 = v14;
        v142 = v15;
        v143 = v16;
        v144 = v13;
        v17 = v12 + 32 * v10;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        LOBYTE(v17) = *(v17 + 24);
        v137 = v18;
        v138 = v19;
        v139 = v20;
        v140 = v17;

        v132 = sub_21BD741B0(&v141, &v137, a5, a6);
        if (v7)
        {
LABEL_100:

          goto LABEL_101;
        }

        v123 = v11;

        v21 = v10;
        v22 = (v10 + 2);
        v121 = v21;
        v23 = 32 * v21;
        v24 = v12 + 32 * v21 + 48;
        while (1)
        {
          v25 = __dst;
          if (__dst == v22)
          {
            break;
          }

          v26 = *(v24 + 24);
          v27 = *(v24 + 32);
          v28 = *(v24 + 40);
          v141 = *(v24 + 16);
          v142 = v26;
          v143 = v27;
          v144 = v28;
          v29 = *(v24 - 8);
          v30 = *v24;
          v31 = *(v24 + 8);
          v137 = *(v24 - 16);
          v138 = v29;
          v139 = v30;
          v140 = v31;

          v32 = sub_21BD741B0(&v141, &v137, v136, a6);

          ++v22;
          v24 += 32;
          if ((v132 ^ v32))
          {
            v25 = (v22 - 1);
            break;
          }
        }

        v7 = 0;
        v10 = v121;
        if (v132)
        {
          if (v25 < v121)
          {
            goto LABEL_123;
          }

          if (v121 < v25)
          {
            v33 = 32 * v25 - 32;
            v34 = v25;
            v35 = v121;
            do
            {
              if (v35 != --v34)
              {
                v38 = *a3;
                if (!*a3)
                {
                  goto LABEL_126;
                }

                v39 = (v38 + v23);
                v40 = (v38 + v33);
                v41 = *(v38 + v23);
                v42 = *(v38 + v23 + 8);
                v43 = *(v38 + v23 + 24);
                if (v23 != v33 || v39 >= v40 + 2)
                {
                  v36 = v40[1];
                  *v39 = *v40;
                  v39[1] = v36;
                }

                v37 = v38 + v33;
                *v37 = v41;
                *(v37 + 8) = v42;
                *(v37 + 24) = v43;
              }

              ++v35;
              v33 -= 32;
              v23 += 32;
            }

            while (v35 < v34);
          }
        }

        v11 = v123;
      }

      v44 = a3[1];
      if (v25 >= v44)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v25, v10))
      {
        goto LABEL_120;
      }

      if (v25 - v10 >= a4)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v10, a4))
      {
        goto LABEL_121;
      }

      if (v10 + a4 >= v44)
      {
        v45 = a3[1];
      }

      else
      {
        v45 = v10 + a4;
      }

      if (v45 < v10)
      {
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_125:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_126:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_127:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_128:
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }

      if (v25 == v45)
      {
LABEL_32:
        v46 = v25;
        if (v25 < v10)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v122 = v10;
        v134 = v7;
        v126 = v45;
        v127 = *a3;
        v99 = *a3 + 32 * v25 + 24;
        v100 = v10 - v25;
        do
        {
          __dstb = v25;
          v118 = v100;
          v119 = v99;
          v101 = v99;
          do
          {
            v102 = (v101 - 24);
            v104 = *(v101 - 16);
            v103 = *(v101 - 8);
            v105 = *v101;
            v141 = *(v101 - 24);
            v142 = v104;
            v143 = v103;
            v144 = v105;
            v106 = *(v101 - 48);
            v107 = *(v101 - 40);
            v108 = *(v101 - 32);
            v137 = *(v101 - 56);
            v138 = v106;
            v139 = v107;
            v140 = v108;

            v109 = sub_21BD741B0(&v141, &v137, v136, a6);
            if (v134)
            {
              goto LABEL_100;
            }

            v110 = v109;

            if ((v110 & 1) == 0)
            {
              break;
            }

            if (!v127)
            {
              goto LABEL_125;
            }

            v112 = *(v101 - 56);
            v111 = *(v101 - 40);
            *(v101 - 32) = *v101;
            v101 -= 32;
            v113 = *(v101 + 8);
            v114 = *(v101 + 16);
            *v102 = v112;
            v102[1] = v111;
            *(v101 - 24) = v113;
            *(v101 - 16) = v114;
          }

          while (!__CFADD__(v100++, 1));
          v25 = (__dstb + 1);
          v99 = v119 + 32;
          v100 = v118 - 1;
          v46 = v126;
        }

        while (__dstb + 1 != v126);
        v7 = 0;
        v10 = v122;
        if (v126 < v122)
        {
          goto LABEL_119;
        }
      }

      v125 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_21BBBCBFC(0, *(v11 + 2) + 1, 1, v11);
      }

      v48 = *(v11 + 2);
      v47 = *(v11 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v11 = sub_21BBBCBFC((v47 > 1), v48 + 1, 1, v11);
      }

      *(v11 + 2) = v49;
      v50 = v11 + 32;
      v51 = &v11[16 * v48 + 32];
      *v51 = v10;
      *(v51 + 1) = v125;
      v145 = v11;
      __dsta = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v48)
      {
        while (1)
        {
          v52 = v49 - 1;
          a5 = v136;
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v53 = *(v11 + 4);
            v54 = *(v11 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_52:
            if (v56)
            {
              goto LABEL_110;
            }

            v69 = &v11[16 * v49];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_113;
            }

            v75 = &v50[16 * v52];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_117;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v49 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v79 = &v11[16 * v49];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_66:
          if (v74)
          {
            goto LABEL_112;
          }

          v82 = &v50[16 * v52];
          v84 = *v82;
          v83 = *(v82 + 1);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_115;
          }

          if (v85 < v73)
          {
            v145 = v11;
            goto LABEL_82;
          }

LABEL_73:
          if (v52 - 1 >= v49)
          {
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
            goto LABEL_122;
          }

          v90 = *a3;
          if (!*a3)
          {
            goto LABEL_124;
          }

          v91 = &v50[16 * v52 - 16];
          v92 = *v91;
          v93 = v52;
          v94 = &v50[16 * v52];
          v95 = *(v94 + 1);
          v96 = (v90 + 32 * *v91);
          v97 = (v90 + 32 * *v94);
          v133 = (v90 + 32 * v95);

          sub_21BD743A0(v96, v97, v133, __dsta, v136, a6);
          if (v7)
          {
            goto LABEL_101;
          }

          if (v95 < v92)
          {
            goto LABEL_105;
          }

          v98 = *(v11 + 2);
          if (v93 > v98)
          {
            goto LABEL_106;
          }

          *v91 = v92;
          *(v91 + 1) = v95;
          if (v93 >= v98)
          {
            goto LABEL_107;
          }

          v49 = v98 - 1;
          memmove(v94, v94 + 16, 16 * (v98 - 1 - v93));
          *(v11 + 2) = v98 - 1;
          v50 = v11 + 32;
          if (v98 <= 2)
          {
            v145 = v11;
            goto LABEL_81;
          }
        }

        v57 = &v50[16 * v49];
        v58 = *(v57 - 8);
        v59 = *(v57 - 7);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_108;
        }

        v62 = *(v57 - 6);
        v61 = *(v57 - 5);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_109;
        }

        v64 = &v11[16 * v49];
        v66 = *v64;
        v65 = *(v64 + 1);
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_111;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_114;
        }

        if (v68 >= v60)
        {
          v86 = &v50[16 * v52];
          v88 = *v86;
          v87 = *(v86 + 1);
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_118;
          }

          if (v55 < v89)
          {
            v52 = v49 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_81:
      a5 = v136;
LABEL_82:
      v9 = a3[1];
      v10 = v125;
      if (v125 >= v9)
      {
        goto LABEL_95;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_95:
  v116 = *a1;
  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_21BD7483C(&v145, v116, a3, a5, a6);
  if (v7)
  {

LABEL_101:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21BD7521C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1[1];
  v31 = a2;
  swift_bridgeObjectRetain_n();
  result = sub_21BE2991C();
  if (result >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v6 <= 1)
      {
        return swift_bridgeObjectRelease_n();
      }

      v10 = *a1;

      v11 = v10 + 32;
      v12 = -1;
      v13 = 1;
      while (1)
      {
        v22 = v13;
        v23 = v11;
        v14 = *(v11 + 8);
        v15 = *(v11 + 16);
        v16 = *(v11 + 24);
        v27 = *v11;
        v28 = v14;
        v29 = v15;
        v30 = v16;
        v17 = *(v11 - 24);
        v18 = *(v11 - 16);
        v19 = *(v11 - 8);
        v25[0] = *(v11 - 32);
        v25[1] = v17;
        v25[2] = v18;
        v26 = v19;

        v20 = sub_21BD741B0(&v27, v25, v31, a3);
        if (v4)
        {
          break;
        }

        v21 = v20;

        if (v21)
        {
          goto LABEL_19;
        }

        v13 = v22 + 1;
        v11 = v23 + 32;
        --v12;
        if (v22 + 1 == v6)
        {
          return swift_bridgeObjectRelease_n();
        }
      }

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        v9 = sub_21BE28C7C();
        *(v9 + 16) = v6 / 2;
      }

      v27 = (v9 + 32);
      v28 = v6 / 2;

      sub_21BD749C4(&v27, v25, a1, v8, v31, a3);

      *(v9 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21BD754AC(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_21BDFD5D4(v7);
  }

  v8 = *(v7 + 2);
  v10[0] = (v7 + 32);
  v10[1] = v8;

  sub_21BD7521C(v10, a2, a4);

  *a1 = v7;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21BD755A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  if (a2)
  {
    v4 = sub_21BE289CC();
  }

  else
  {
    v4 = 0;
  }

  v5 = a3(v4);

  if (!v5)
  {
    return 0;
  }

  v6 = sub_21BE28A0C();

  return v6;
}

id sub_21BD7563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a3)
  {
    sub_21BE28A0C();
    v5 = sub_21BE289CC();
  }

  else
  {
    v5 = 0;
  }

  v6 = a4(v5);

  if (v6)
  {
    sub_21BE28A0C();

    v6 = sub_21BE289CC();
  }

  return v6;
}

uint64_t sub_21BD756EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_21BE289CC();
  }

  else
  {
    v2 = 0;
  }

  v3 = _IDSCopyIDForPhoneNumberWithOptions();

  if (!v3)
  {
    return 0;
  }

  v4 = sub_21BE28A0C();

  return v4;
}

uint64_t sub_21BD75848(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB8A28;

  return sub_21BD779F8(a1);
}

uint64_t sub_21BD758F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_21BD75914, 0, 0);
}

uint64_t sub_21BD75914()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
  *v3 = v0;
  v3[1] = sub_21BD75A1C;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000021, 0x800000021BE60520, sub_21BD788D4, v1, v4);
}

uint64_t sub_21BD75A1C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_21BD75B34, 0, 0);
}

void sub_21BD75B54(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBE8, qword_21BE48850);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_21BC71F58(a3);
  v10 = sub_21BE28C1C();

  v11 = sub_21BE289CC();
  v12 = sub_21BE289CC();
  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v13 = sub_21BE2925C();
  (*(v6 + 16))(v9, a1, v5);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v6 + 32))(v15 + v14, v9, v5);
  aBlock[4] = sub_21BD788DC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BD763A0;
  aBlock[3] = &block_descriptor_46;
  v16 = _Block_copy(aBlock);

  [v18 refreshIDStatusForDestinations:v10 service:v11 listenerID:v12 queue:v13 completionBlock:v16];
  _Block_release(v16);
}

uint64_t sub_21BD75DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  if (!a1)
  {
    sub_21BE2614C();
    v44 = sub_21BE26A2C();
    v45 = sub_21BE28FFC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v63[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE60520, v63);
      _os_log_impl(&dword_21BB35000, v44, v45, "%s no results returned", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x21CF05C50](v47, -1, -1);
      MEMORY[0x21CF05C50](v46, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    *&v63[0] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBE8, qword_21BE48850);
    return sub_21BE28D2C();
  }

  v51 = a2;
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v58 = (v5 + 8);
  v53 = "16@?24";

  v18 = 0;
  v57 = MEMORY[0x277D84F90];
  *&v19 = 136315394;
  v52 = v19;
  v55 = v11;
  v56 = v4;
  for (i = a1 + 64; v15; v16 = v50)
  {
LABEL_12:
    while (1)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_21BBB71DC(*(a1 + 48) + 40 * (v21 | (v18 << 6)), v63);
      v61[0] = v63[0];
      v61[1] = v63[1];
      v62 = v64;
      if (*(a1 + 16))
      {
        v22 = sub_21BBB31E8(v61);
        if (v23)
        {
          sub_21BB3DCD4(*(a1 + 56) + 32 * v22, v60);
          sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
          if (swift_dynamicCast())
          {
            break;
          }
        }
      }

LABEL_23:
      sub_21BE2614C();
      sub_21BBB71DC(v61, v60);
      v32 = sub_21BE26A2C();
      v33 = sub_21BE28FFC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v59 = v35;
        *v34 = v52;
        *(v34 + 4) = sub_21BB3D81C(0xD000000000000021, v53 | 0x8000000000000000, &v59);
        *(v34 + 12) = 2080;
        v36 = sub_21BE2955C();
        v37 = v16;
        v38 = a1;
        v40 = v39;
        sub_21BBB7238(v60);
        v41 = sub_21BB3D81C(v36, v40, &v59);
        a1 = v38;
        v16 = v37;
        v12 = i;

        *(v34 + 14) = v41;
        _os_log_impl(&dword_21BB35000, v32, v33, "%s %s not valid", v34, 0x16u);
        swift_arrayDestroy();
        v42 = v35;
        v4 = v56;
        MEMORY[0x21CF05C50](v42, -1, -1);
        v43 = v34;
        v11 = v55;
        MEMORY[0x21CF05C50](v43, -1, -1);
      }

      else
      {

        sub_21BBB7238(v60);
      }

      (*v58)(v11, v4);
      result = sub_21BBB7238(v61);
      if (!v15)
      {
        goto LABEL_8;
      }
    }

    v24 = v59;
    if ([v59 integerValue] != 1)
    {

      goto LABEL_23;
    }

    v50 = v16;
    v49 = sub_21BE2955C();
    v26 = v25;
    v27 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_21BBBC990(0, *(v57 + 2) + 1, 1, v57);
    }

    v29 = *(v57 + 2);
    v28 = *(v57 + 3);
    if (v29 >= v28 >> 1)
    {
      v57 = sub_21BBBC990((v28 > 1), v29 + 1, 1, v57);
    }

    result = sub_21BBB7238(v61);
    v30 = v57;
    *(v57 + 2) = v29 + 1;
    v31 = &v30[16 * v29];
    *(v31 + 4) = v49;
    *(v31 + 5) = v26;
    a1 = v27;
  }

LABEL_8:
  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      *&v63[0] = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBE8, qword_21BE48850);
      return sub_21BE28D2C();
    }

    v15 = *(v12 + 8 * v20);
    ++v18;
    if (v15)
    {
      v18 = v20;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21BD763A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_21BE2890C();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_21BD765B8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_21BE28C3C();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_21BD7669C;

  return sub_21BD779F8(v5);
}

uint64_t sub_21BD7669C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v8 = *v0;

  v5 = sub_21BE28C1C();

  (v3)[2](v3, v5);

  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

id IDSRecommendationProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IDSRecommendationProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSRecommendationProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IMessageHandleForPeopleRecommendations.__allocating_init(provider:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___IMessageHandlesForPeopleRecommendations_provider] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id IMessageHandleForPeopleRecommendations.init(provider:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___IMessageHandlesForPeopleRecommendations_provider] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMessageHandleForPeopleRecommendations();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_21BD769CC(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_21BE28C3C();

  return MEMORY[0x282200948](v1);
}

uint64_t sub_21BD76A3C(unint64_t a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v7 = sub_21BE26A4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  if (a1 >> 62)
  {
    if (sub_21BE2951C())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_21BE28D8C();
    v16 = sub_21BE28DAC();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = a1;
    v17[5] = v3;
    v17[6] = a2;
    v17[7] = a3;

    v18 = v3;

    sub_21BBA932C(0, 0, v15, &unk_21BE48780, v17);
  }

  sub_21BE2614C();
  v20 = sub_21BE26A2C();
  v21 = sub_21BE28FFC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_21BB3D81C(0xD00000000000002FLL, 0x800000021BE60460, &v25);
    _os_log_impl(&dword_21BB35000, v20, v21, " %s No recommendations supplied", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x21CF05C50](v23, -1, -1);
    MEMORY[0x21CF05C50](v22, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  return a2(MEMORY[0x277D84F90], 0);
}

uint64_t sub_21BD76D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v8 = sub_21BE26A4C();
  v7[23] = v8;
  v9 = *(v8 - 8);
  v7[24] = v9;
  v10 = *(v9 + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD76DF8, 0, 0);
}

uint64_t sub_21BD76DF8()
{
  v93 = v0;
  v1 = *(v0 + 152);
  if (v1 >> 62)
  {
    goto LABEL_59;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v2)
  {
    v3 = 0;
    v85 = OBJC_IVAR___IMessageHandlesForPeopleRecommendations_provider;
    v86 = *(v0 + 160);
    v4 = v1 & 0xC000000000000001;
    v80 = *(v0 + 152) + 32;
    v81 = v1 & 0xFFFFFFFFFFFFFF8;
    v79 = (*(v0 + 192) + 8);
    v5 = MEMORY[0x277D84F90];
    v6 = &selRef_bundleURL;
    v82 = v1 & 0xC000000000000001;
    v83 = v2;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x21CF047C0](v3, *(v0 + 152));
      }

      else
      {
        if (v3 >= *(v81 + 16))
        {
          goto LABEL_58;
        }

        v7 = *(v80 + 8 * v3);
      }

      v8 = v7;
      if (__OFADD__(v3++, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        v2 = sub_21BE2951C();
        goto LABEL_3;
      }

      v10 = [v7 v6[416]];
      if (!v10)
      {
        break;
      }

      v11 = [v8 v6[416]];
      if (v11)
      {
        v87 = v11;
        v88 = v8;
        v12 = [v11 emailAddressStrings];
        v13 = sub_21BE28C3C();

        v14 = *(v13 + 16);
        if (v14)
        {
          v15 = *(v86 + v85);
          v16 = (v13 + 40);
          do
          {
            v18 = *(v16 - 1);
            v19 = *v16;

            v20 = sub_21BE289CC();

            v21 = [v15 getIDForEmailAddressWithHandle_];

            if (v21)
            {
              v22 = sub_21BE28A0C();
              v24 = v23;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v5 = sub_21BBBC990(0, *(v5 + 2) + 1, 1, v5);
              }

              v26 = *(v5 + 2);
              v25 = *(v5 + 3);
              if (v26 >= v25 >> 1)
              {
                v5 = sub_21BBBC990((v25 > 1), v26 + 1, 1, v5);
              }

              *(v5 + 2) = v26 + 1;
              v17 = &v5[16 * v26];
              *(v17 + 4) = v22;
              *(v17 + 5) = v24;
            }

            v16 += 2;
            --v14;
          }

          while (v14);
        }

        v1 = v87;
        v27 = [v87 phoneNumberStrings];
        v28 = sub_21BE28C3C();

        v29 = *(v28 + 16);
        if (v29)
        {
          v30 = *(v86 + v85);
          v31 = (v28 + 40);
          do
          {
            v33 = *(v31 - 1);
            v34 = *v31;

            v35 = sub_21BE289CC();

            v36 = [v30 getIDForPhoneNumberWithPhoneNumber_];

            if (v36)
            {
              v37 = sub_21BE28A0C();
              v39 = v38;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v5 = sub_21BBBC990(0, *(v5 + 2) + 1, 1, v5);
              }

              v1 = *(v5 + 2);
              v40 = *(v5 + 3);
              if (v1 >= v40 >> 1)
              {
                v5 = sub_21BBBC990((v40 > 1), v1 + 1, 1, v5);
              }

              *(v5 + 2) = v1 + 1;
              v32 = &v5[16 * v1];
              *(v32 + 4) = v37;
              *(v32 + 5) = v39;
            }

            v31 += 2;
            --v29;
          }

          while (v29);
        }

        v2 = v83;
        v0 = v84;
        v4 = v82;
LABEL_45:
        v6 = &selRef_bundleURL;
        goto LABEL_6;
      }

LABEL_6:
      if (v3 == v2)
      {
        goto LABEL_47;
      }
    }

    v41 = [v8 handle];
    if (v41 && (v42 = v41, v43 = [*(v86 + v85) getIDForEmailAddressWithHandle_], v42, v43) || (v44 = objc_msgSend(v8, sel_iMessageHandle, v79)) != 0 && (v45 = v44, v43 = objc_msgSend(*(v86 + v85), sel_getIDForBestGuessIDWithHandle_, v44), v45, v43))
    {
      v89 = sub_21BE28A0C();
      v47 = v46;

      v1 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_21BBBC990(0, *(v5 + 2) + 1, 1, v5);
      }

      v49 = *(v5 + 2);
      v48 = *(v5 + 3);
      if (v49 >= v48 >> 1)
      {
        v5 = sub_21BBBC990((v48 > 1), v49 + 1, 1, v5);
      }

      *(v5 + 2) = v49 + 1;
      v50 = &v5[16 * v49];
      *(v50 + 4) = v89;
      *(v50 + 5) = v47;
      goto LABEL_6;
    }

    v90 = v8;
    v51 = *(v0 + 200);
    sub_21BE2614C();
    v1 = sub_21BE26A2C();
    v52 = sub_21BE28FFC();
    v53 = os_log_type_enabled(v1, v52);
    v54 = *(v0 + 200);
    v55 = *(v0 + 184);
    if (v53)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_21BB35000, v1, v52, "Recommendation has no contact, handle, or iMessageHandle", v56, 2u);
      MEMORY[0x21CF05C50](v56, -1, -1);
    }

    (*v79)(v54, v55);
    goto LABEL_45;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_47:
  v57 = *(v0 + 208);
  sub_21BE2614C();
  v58 = sub_21BE26A2C();
  v59 = sub_21BE28FFC();
  v60 = os_log_type_enabled(v58, v59);
  v61 = *(v0 + 208);
  v63 = *(v0 + 184);
  v62 = *(v0 + 192);
  if (v60)
  {
    v91 = *(v0 + 208);
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v92 = v65;
    *v64 = 136315138;

    v67 = MEMORY[0x21CF03DF0](v66, MEMORY[0x277D837D0]);
    v69 = v68;

    v70 = sub_21BB3D81C(v67, v69, &v92);

    *(v64 + 4) = v70;
    v0 = v84;
    _os_log_impl(&dword_21BB35000, v58, v59, "Checking IDStatus for handles: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v65);
    MEMORY[0x21CF05C50](v65, -1, -1);
    MEMORY[0x21CF05C50](v64, -1, -1);

    (*(v62 + 8))(v91, v63);
  }

  else
  {

    (*(v62 + 8))(v61, v63);
  }

  *(v0 + 216) = v5;
  if (*(v5 + 2))
  {
    v71 = *(*(v0 + 160) + OBJC_IVAR___IMessageHandlesForPeopleRecommendations_provider);

    v72 = sub_21BE28C1C();
    *(v0 + 224) = v72;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_21BD77658;
    v73 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBE0, &qword_21BE48838);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BD769CC;
    *(v0 + 104) = &block_descriptor_47;
    *(v0 + 112) = v73;
    [v71 validateHandlesWithIdsDestinations:v72 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v74 = *(v0 + 176);
    (*(v0 + 168))(MEMORY[0x277D84F90], 0);

    v76 = *(v0 + 200);
    v75 = *(v0 + 208);

    v77 = *(v0 + 8);

    return v77();
  }
}

uint64_t sub_21BD77658()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BD77738, 0, 0);
}

uint64_t sub_21BD77738()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 144);

  v5 = sub_21BC71F58(v4);

  v3(v5, 0);

  v7 = *(v0 + 200);
  v6 = *(v0 + 208);

  v8 = *(v0 + 8);

  return v8();
}

void sub_21BD7789C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_21BE28C1C();
    if (a2)
    {
LABEL_3:
      v6 = sub_21BE25A7C();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

id sub_21BD779B0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21BD779F8(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_21BE26A4C();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD77AC4, 0, 0);
}

uint64_t sub_21BD77AC4()
{
  v24 = v0;
  v1 = [objc_opt_self() sharedInstance];
  v0[11] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[6];
    v4 = swift_allocObject();
    v0[12] = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = *(MEMORY[0x277CE4600] + 4);
    v6 = v2;

    v7 = swift_task_alloc();
    v0[13] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
    *v7 = v0;
    v7[1] = sub_21BD77D58;

    return MEMORY[0x2821372C0](v0 + 4, 0x8AC7230489E80000, 0, &unk_21BE48848, v4, v8);
  }

  else
  {
    v9 = v0[10];
    sub_21BE2614C();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FDC();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[10];
    v14 = v0[7];
    v15 = v0[8];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE60520, &v23);
      _os_log_impl(&dword_21BB35000, v10, v11, "%s IDSIDQueryController doesn't exist", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x21CF05C50](v17, -1, -1);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    (*(v15 + 8))(v13, v14);
    v19 = v0[9];
    v18 = v0[10];

    v20 = v0[1];
    v21 = MEMORY[0x277D84F90];

    return v20(v21);
  }
}

uint64_t sub_21BD77D58()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_21BD77EEC;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_21BD77E74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21BD77E74()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_21BD77EEC()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  sub_21BE2614C();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v7 = v1;
  MEMORY[0x21CF03CA0](0xD000000000000021, 0x800000021BE60520);
  MEMORY[0x21CF03CA0](0x203A726F72726520, 0xE800000000000000);
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  sub_21BE2977C();
  v8 = v0[2];
  v9 = v0[3];
  sub_21BC51D50(v1);

  (*(v5 + 8))(v4, v6);
  v11 = v0[9];
  v10 = v0[10];

  v12 = v0[1];
  v13 = MEMORY[0x277D84F90];

  return v12(v13);
}

uint64_t sub_21BD780AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21BBB7EB8;

  return sub_21BD76D28(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t dispatch thunk of IDSRecommendationProvider.validateHandles(idsDestinations:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB8A28;

  return v8(a1);
}

void sub_21BD783C4(unint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_21BE26A4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  if (a1 >> 62)
  {
    v16 = sub_21BE2951C();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _Block_copy(a3);
  if (v16)
  {
    sub_21BE28D8C();
    v17 = sub_21BE28DAC();
    (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = a1;
    v18[5] = a2;
    v18[6] = sub_21BD7871C;
    v18[7] = v15;

    v19 = a2;

    sub_21BBA932C(0, 0, v9, &unk_21BE48820, v18);
  }

  else
  {
    sub_21BE2614C();
    v20 = sub_21BE26A2C();
    v21 = sub_21BE28FFC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_21BB3D81C(0xD00000000000002FLL, 0x800000021BE60460, &v26);
      _os_log_impl(&dword_21BB35000, v20, v21, " %s No recommendations supplied", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x21CF05C50](v23, -1, -1);
      MEMORY[0x21CF05C50](v22, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v24 = sub_21BE28C1C();
    (a3)[2](a3, v24, 0);
  }
}

uint64_t objectdestroyTm_28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_21BD78774()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BD765B8(v2, v3, v4);
}

uint64_t sub_21BD78828(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return sub_21BD758F0(a1, v5, v4);
}

uint64_t sub_21BD788DC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBE8, qword_21BE48850) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BD75DBC(a1, v4);
}

uint64_t sub_21BD78974()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BD789EC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = sub_21BE28D7C();
  v2[10] = sub_21BE28D6C();
  v4 = swift_task_alloc();
  v2[11] = v4;
  *v4 = v2;
  v4[1] = sub_21BD78AD4;

  return sub_21BD78E34();
}

uint64_t sub_21BD78AD4()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD78C10, v5, v4);
}

uint64_t sub_21BD78C10()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);

  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);

  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v4;
  sub_21BBA932C(0, 0, v3, &unk_21BE488D8, v8);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  *v5 = *(v0 + 16);
  *(v5 + 16) = v10;
  *(v5 + 24) = v11;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_21BD78D88()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BD79520();
}

uint64_t sub_21BD78E34()
{
  v1[6] = v0;
  v2 = sub_21BE26A4C();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_21BE28D7C();
  v1[11] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x2822009F8](sub_21BD78F34, v6, v5);
}

uint64_t sub_21BD78F34()
{
  v1 = *(*(v0 + 48) + 48);
  v2 = *(MEMORY[0x277D08060] + 4);
  v5 = (*MEMORY[0x277D08060] + MEMORY[0x277D08060]);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_21BD78FE0;

  return v5(0);
}

uint64_t sub_21BD78FE0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 112);
  v7 = *v3;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = v2;

  v8 = v4[13];
  v9 = v4[12];
  if (v2)
  {
    v10 = sub_21BD7943C;
  }

  else
  {
    v10 = sub_21BD79128;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_21BD79128()
{
  v39 = v0;
  v1 = v0[16];
  v2 = v0[11];

  if (v1 >> 60 == 15)
  {
    v3 = MEMORY[0x21CF01210](0xD000000000000032, 0x800000021BE606A0, 0xD000000000000010, 0x800000021BE573A0, 500);
    swift_willThrow();
LABEL_8:
    v29 = v0[8];
    v28 = v0[9];
    v30 = v0[7];
    sub_21BE261BC();
    v31 = v3;
    sub_21BC51D50(v3);

    (*(v29 + 8))(v28, v30);
    goto LABEL_9;
  }

  v4 = v0[15];
  v5 = v0[16];
  v6 = sub_21BD247B0();
  if (!v7)
  {
    v27 = v0[15];
    v26 = v0[16];
    v3 = MEMORY[0x21CF01210](0xD00000000000002DLL, 0x800000021BE606E0, 0xD000000000000010, 0x800000021BE573A0, 500);
    swift_willThrow();
    sub_21BBBF0B4(v27, v26);
    goto LABEL_8;
  }

  v10 = v6;
  v11 = v7;
  v12 = v9;
  v37 = v8;
  v13 = v0[10];
  sub_21BE261BC();
  v14 = sub_21BE26A2C();
  v15 = sub_21BE28FFC();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[10];
  v19 = v0[7];
  v18 = v0[8];
  if (v16)
  {
    v36 = v10;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_21BB3D81C(0x6D6F724664616F6CLL, 0xEF29286568636143, &v38);
    _os_log_impl(&dword_21BB35000, v14, v15, "%s updated ChecklistRankingConfig", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x21CF05C50](v21, -1, -1);
    v22 = v20;
    v10 = v36;
    MEMORY[0x21CF05C50](v22, -1, -1);
  }

  (*(v18 + 8))(v17, v19);
  v23 = v0[15];
  v24 = v0[16];
  v25 = v0[6];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v10;
  v0[3] = v11;
  v0[4] = v37;
  v0[5] = v12;

  sub_21BE26CBC();
  sub_21BBBF0B4(v23, v24);
LABEL_9:
  v33 = v0[9];
  v32 = v0[10];

  v34 = v0[1];

  return v34();
}

uint64_t sub_21BD7943C()
{
  v1 = v0[11];

  v2 = v0[17];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  sub_21BE261BC();
  v6 = v2;
  sub_21BC51D50(v2);

  (*(v4 + 8))(v3, v5);
  v8 = v0[9];
  v7 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_21BD79520()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x2822009F8](sub_21BD79614, v6, v5);
}

uint64_t sub_21BD79614()
{
  v1 = *(*(v0 + 16) + 48);
  v2 = *(MEMORY[0x277D08060] + 4);
  v5 = (*MEMORY[0x277D08060] + MEMORY[0x277D08060]);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_21BD796C0;

  return v5(1);
}

uint64_t sub_21BD796C0(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v9 = *(v6 + 56);
    v10 = *(v6 + 64);
    v11 = sub_21BD79864;
  }

  else
  {
    sub_21BBBF0B4(a1, a2);
    v9 = *(v6 + 56);
    v10 = *(v6 + 64);
    v11 = sub_21BD797FC;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_21BD797FC()
{
  v1 = v0[6];

  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BD79864()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];

  sub_21BE261BC();
  v6 = v1;
  sub_21BC51D50(v1);

  (*(v5 + 8))(v3, v4);
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_21BD7993C()
{
  v1 = *(v0 + 48);

  v2 = qword_280BD6CD8;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6888, &qword_21BE35808);
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t sub_21BD799B8()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = qword_280BD6CD8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6888, &qword_21BE35808);
  (*(*(v6 - 8) + 8))(&v0[v5], v6);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21BD79A94(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BD789EC(a1, v1);
}

double sub_21BD79B30@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_21BD79BB8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BD79C54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BD78D88();
}

uint64_t sub_21BD79D58(uint64_t a1, uint64_t (*a2)(uint64_t *))
{

  FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v3, &v5);
  return a2(&v5);
}

void _s14FamilyCircleUI23SettingsAnalyticsLoggerO21logOptionUpdatedEvent24ageRangeSharingViewModel5stateyAA03AgelmnO0C_So05FAAgeL11GlobalStateVtFZ_0(uint64_t a1, unsigned int a2)
{

  FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v3, &v5);
  if (a2 >= 4)
  {
    type metadata accessor for AgeRangeGlobalState(0);
    sub_21BE299DC();
    __break(1u);
  }

  else
  {
    LOBYTE(v4) = 0x2010003u >> (8 * a2);
    sub_21BD5E000(&v5, &v4);
  }
}

void _s14FamilyCircleUI23SettingsAnalyticsLoggerO18logNavigationEvent24ageRangeSharingViewModel4viewyAA03AgeklmN0C_AA0pkdM0OtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;

  FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v4, &v12);
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v9 = v16;
  if (v3 > 1)
  {
    v10 = 2;
  }

  else
  {
    swift_getKeyPath();
    v12 = a1;
    sub_21BD5DFA8();
    sub_21BE25F1C();

    v10 = *(a1 + 81);
    v12 = v5;
    v13 = v6;
    v14 = v7;
    v15 = v8;
    v16 = v9;
  }

  v11 = v10;
  _s14FamilyCircleUI0A25DeclaredAgeRangeAnalyticsC31sendSettingsViewNavigationEvent4with4view10entryPointyAA0adefG7PackageV_AA0efiJ0OAA0efk5EntryP0OtFZ_0(&v12, &v11);
}

uint64_t sub_21BD79F6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_21BD79FB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}