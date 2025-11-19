unint64_t sub_20D9FA98C()
{
  v0 = sub_20D9D4AFC(MEMORY[0x277D84F90]);
  v6 = MEMORY[0x277D839B0];
  LOBYTE(v5) = 1;
  sub_20D9D77C8(&v5, &v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0;
  sub_20D9D0070(&v3, @"dependentOnMatterSnapshot", isUniquelyReferenced_nonNull_native);
  v8 = v7;
  sub_20D9FC2D8(&v3);
  if (v4)
  {
    sub_20D9C51D4(&v3, &v5);
    sub_20D9FB098(&v8, &v5);
    __swift_destroy_boxed_opaque_existential_0(&v5);
  }

  else
  {
    sub_20D9D76EC(&v3, &qword_27C843A30, &qword_20DD940B8);
    sub_20D9FAA84(&v8);
  }

  return v8;
}

uint64_t sub_20D9FAA84(uint64_t a1)
{
  v58 = a1;
  v2 = sub_20DD645F4();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v2);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A38, &unk_20DD940C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v49 - v7;
  v9 = sub_20DD641A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v49 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  v16 = sub_20DD64604();
  v55 = *(v16 - 8);
  v56 = v16;
  v17 = *(v55 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v54 = &v49 - v21;
  v57 = v1;
  v22 = *&v1[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable];
  v23 = *&v22[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory];
  v24 = @"title";
  v25 = [v23 name];
  v26 = sub_20DD64EB4();
  v28 = v27;

  v62 = MEMORY[0x277D837D0];
  v59 = v26;
  v60 = v28;
  sub_20D9F971C(&v59, v24);
  v29 = @"serviceNameComponents";
  v30 = [v22 hf_serviceNameComponents];
  v62 = sub_20D9D7510(0, &qword_27C843D68, off_277DF00A8);
  v59 = v30;
  sub_20D9F971C(&v59, v29);
  v50 = v22;
  sub_20D9F1C2C(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20D9D76EC(v8, &unk_27C843A38, &unk_20DD940C0);
    sub_20DD645C4();
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v49, v15, v9);
    sub_20DD645D4();
    (*(v10 + 8))(v15, v9);
  }

  v32 = v54;
  v31 = v55;
  v33 = v56;
  (*(v55 + 32))(v54, v20, v56);
  v34 = @"icon";
  v35 = v51;
  sub_20DD645B4();
  sub_20DD645E4();
  (*(v52 + 8))(v35, v53);
  if (qword_27C842440 != -1)
  {
    swift_once();
  }

  v36 = qword_27C84C5D8;
  v37 = objc_allocWithZone(HFImageIconDescriptor);
  v38 = v36;
  v39 = sub_20DD64E74();

  v40 = [v37 initWithSystemImageNamed:v39 configuration:v38];

  v62 = sub_20D9D7510(0, &unk_27C843D70, off_277DEFBA8);
  v59 = v40;
  sub_20D9F971C(&v59, v34);
  v41 = [v50 hf_safeRoom];
  if (v41)
  {
    v42 = v41;
    v43 = @"roomIdentifier";
    v44 = [v42 uniqueIdentifier];
    v62 = sub_20DD63744();
    __swift_allocate_boxed_opaque_existential_1(&v59);
    sub_20DD63714();

    sub_20D9F971C(&v59, v43);
  }

  v45 = @"isFavorite";
  v46 = v57;
  if ([v57 hf_hasSetFavorite])
  {
    LOBYTE(v59) = [v46 hf_effectiveIsFavorite];
    v47 = MEMORY[0x277D839B0];
  }

  else
  {
    v47 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
  }

  v62 = v47;
  sub_20D9F971C(&v59, v45);
  return (*(v31 + 8))(v32, v33);
}

void sub_20D9FB098(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v61 - v5;
  v6 = sub_20DD63744();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v6);
  v67 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20DD645F4();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20DD64604();
  v62 = *(v13 - 8);
  v63 = v13;
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v18 = @"title";
  v19 = sub_20DD64094();
  v74 = MEMORY[0x277D837D0];
  v71 = v19;
  v72 = v20;
  sub_20D9F971C(&v71, v18);
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v22 = @"serviceNameComponents";
  sub_20DD64094();
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_20DD640B4();
  v25 = v24;
  v26 = sub_20DD64E74();

  if (v25)
  {
    v27 = sub_20DD64E74();
  }

  else
  {
    v27 = 0;
  }

  v28 = [objc_allocWithZone(HFServiceNameComponents) initWithRawServiceName:v26 rawRoomName:v27];

  v74 = sub_20D9D7510(0, &qword_27C843D68, off_277DF00A8);
  v71 = v28;
  sub_20D9F971C(&v71, v22);
  if (qword_27C842440 != -1)
  {
    swift_once();
  }

  v29 = qword_27C84C5D8;
  v30 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_20DD64084();
  v31 = sub_20DD64D64();

  v32 = [objc_opt_self() configurationWithHierarchicalColor_];

  v33 = [v29 configurationByApplyingConfiguration_];
  v34 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v35 = @"icon";
  sub_20DD640C4();
  sub_20DD645B4();
  (*(v62 + 8))(v16, v63);
  sub_20DD645E4();
  (*(v64 + 8))(v12, v65);
  v36 = objc_allocWithZone(HFImageIconDescriptor);
  v37 = v33;
  v38 = sub_20DD64E74();

  v39 = [v36 initWithSystemImageNamed:v38 configuration:v37];

  v74 = sub_20D9D7510(0, &unk_27C843D70, off_277DEFBA8);
  v71 = v39;
  sub_20D9F971C(&v71, v35);
  v40 = @"description";
  v41 = sub_20D9FE62C(a2);
  v43 = v66;
  if (v42)
  {
    v44 = MEMORY[0x277D837D0];
  }

  else
  {
    v41 = 0;
    v44 = 0;
    v73 = 0;
  }

  v46 = v68;
  v45 = v69;
  v47 = v67;
  v71 = v41;
  v72 = v42;
  v74 = v44;
  sub_20D9F971C(&v71, v40);
  v48 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v49 = sub_20DD640A4();
  sub_20DA52FF8(v49, v43);

  if ((*(v46 + 48))(v43, 1, v45) == 1)
  {
    sub_20D9D76EC(v43, &unk_27C843A70, &qword_20DD94260);
  }

  else
  {
    (*(v46 + 32))(v47, v43, v45);
    v50 = a2[4];
    __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v51 = *(sub_20DD640A4() + 16);

    if (v51 == 1)
    {
      v74 = v45;
      v52 = __swift_allocate_boxed_opaque_existential_1(&v71);
      (*(v46 + 16))(v52, v47, v45);
      sub_20D9F971C(&v71, @"roomIdentifier");
    }

    (*(v46 + 8))(v47, v45);
  }

  v53 = v70;
  v54 = @"isFavorite";
  if ([v53 hf_hasSetFavorite])
  {
    LOBYTE(v71) = [v53 hf_effectiveIsFavorite];
    v55 = MEMORY[0x277D839B0];
  }

  else
  {
    v55 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
  }

  v74 = v55;
  sub_20D9F971C(&v71, v54);
  v56 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  if (sub_20DD64074())
  {
    v57 = a2[4];
    __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v58 = sub_20DD64064();
    HFPrimaryStateFromBOOL(v58 & 1);
  }

  v59 = @"state";
  v60 = sub_20DD652E4();
  v74 = sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
  v71 = v60;
  sub_20D9F971C(&v71, v59);
}

uint64_t sub_20D9FB850(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = sub_20DD63744();
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v6 = *(v5 + 64) + 15;
  v2[14] = swift_task_alloc();
  v7 = sub_20DD64354();
  v2[15] = v7;
  v8 = *(v7 - 8);
  v2[16] = v8;
  v9 = *(v8 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D9FB9B0, 0, 0);
}

uint64_t sub_20D9FB9B0()
{
  v1 = v0[9];
  if (*(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder))
  {
    MatterAccessoryLikeItem.updateTileInfo()(v0[8]);
    v2 = v0[17];
    v3 = v0[14];
    v5 = v0[10];
    v4 = v0[11];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[14];
    v9 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider);
    v10 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider + 8);
    v0[18] = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
    MEMORY[0x20F324F20]();
    v15 = (v9 + *v9);
    v11 = v9[1];
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_20D9FBB4C;
    v13 = v0[17];
    v14 = v0[14];

    return v15(v13, v14);
  }
}

uint64_t sub_20D9FBB4C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_20D9FBCA4, 0, 0);
}

uint64_t sub_20D9FBCA4()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = *(v0[9] + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable);
  v4 = sub_20DD642E4();
  v5 = sub_20DD63FD4();
  if (*(v4 + 16) && (v6 = sub_20D9CB2A8(v5), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = v0[11];
    v10 = *(v4 + 56);
    v11 = sub_20DD64294();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v9, v10 + *(v12 + 72) * v8, v11);

    v13 = 0;
  }

  else
  {

    v11 = sub_20DD64294();
    v12 = *(v11 - 8);
    v13 = 1;
  }

  v15 = v0[17];
  v14 = v0[18];
  v16 = v0[16];
  v28 = v0[15];
  v18 = v0[10];
  v17 = v0[11];
  v20 = v0[8];
  v19 = v0[9];
  (*(v12 + 56))(v17, v13, 1, v11);
  v21 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9FA458(v3 + v21, v18);
  swift_beginAccess();
  sub_20D9F0D50(v17, v3 + v21);
  swift_endAccess();
  sub_20D9F04E4(v18);
  sub_20D9D76EC(v18, &qword_27C843A20, &qword_20DD940B0);
  sub_20D9D76EC(v17, &qword_27C843A20, &qword_20DD940B0);
  sub_20DD64334();
  (*(v16 + 8))(v15, v28);
  v22 = v0[17];
  v23 = v0[14];
  v25 = v0[10];
  v24 = v0[11];

  v26 = v0[1];

  return v26();
}

uint64_t MatterAccessoryLikeItem.updateTileInfo()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - v5;
  v7 = sub_20DD64294();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder);
  if (!v15 || (v31 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder), v16 = v15, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843C50, &unk_20DD941C0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843C58, &unk_20DD94500), (swift_dynamicCast() & 1) == 0))
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    goto LABEL_9;
  }

  if (!*(&v33 + 1))
  {
LABEL_9:
    result = sub_20D9D76EC(&v32, &unk_27C843F70, &unk_20DD941B0);
LABEL_10:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v28 = v8;
  v29 = v7;
  sub_20D9C51D4(&v32, v35);
  v17 = v35[4];
  v30 = __swift_project_boxed_opaque_existential_0(v35, v35[3]);
  v27 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable);
  v18 = *(v17 + 8);
  v19 = *(v27 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory);
  v20 = v18();

  if (!v20)
  {
LABEL_13:
    result = __swift_destroy_boxed_opaque_existential_0(v35);
    goto LABEL_10;
  }

  if (!*(v20 + 16))
  {

    goto LABEL_13;
  }

  v21 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  v22 = v27;
  swift_beginAccess();
  sub_20D9FA458(v22 + v21, v6);
  v24 = v28;
  v23 = v29;
  if ((*(v28 + 48))(v6, 1, v29) == 1)
  {

    sub_20D9D76EC(v6, &qword_27C843A20, &qword_20DD940B0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    (*(v24 + 32))(v14, v6, v23);
    (*(v24 + 16))(v12, v14, v23);
    *(a1 + 24) = sub_20DD641D4();
    *(a1 + 32) = sub_20D9FF488(&unk_27C843C60, MEMORY[0x277D16078]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_20DD641B4();
    (*(v24 + 8))(v14, v23);
  }

  return __swift_destroy_boxed_opaque_existential_0(v35);
}

double sub_20D9FC2D8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20DD64C44();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20DD64054();
  v46 = *(v7 - 8);
  v8 = v46[8];
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_20DD64294();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v2[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable];
  v21 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9FA458(v20 + v21, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_20D9D76EC(v14, &qword_27C843A20, &qword_20DD940B0);
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    v45 = a1;
    v23 = *(v16 + 32);
    v23(v19, v14, v15);
    v44 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
    v24 = sub_20DD63F84();
    if ((v24 & 0x10000) != 0)
    {
      v32 = v45;
      v45[3] = v15;
      v32[4] = sub_20D9FF488(&qword_27C843D60, MEMORY[0x277D16408]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
      v23(boxed_opaque_existential_1, v19, v15);
    }

    else
    {
      v25 = v24;
      v26 = sub_20DD64284();
      if (*(v26 + 16) && (v27 = sub_20D9CB188(v25), (v28 & 1) != 0))
      {
        v29 = v46;
        (v46[2])(v10, *(v26 + 56) + v46[9] * v27, v7);

        v30 = v45;
        v45[3] = v7;
        v30[4] = sub_20D9FF488(&qword_27C843B10, MEMORY[0x277D15C38]);
        v31 = __swift_allocate_boxed_opaque_existential_1(v30);
        (v29[4])(v31, v10, v7);
        (*(v16 + 8))(v19, v15);
      }

      else
      {

        v34 = v47;
        sub_20DD64BE4();
        v35 = v2;
        v36 = sub_20DD64C24();
        v37 = sub_20DD65364();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v43 = v35;
          v39 = v38;
          v46 = swift_slowAlloc();
          v50 = v46;
          *v39 = 136315650;
          *(v39 + 4) = sub_20D9E0B38(0xD000000000000019, 0x800000020DD985D0, &v50);
          *(v39 + 12) = 512;
          *(v39 + 14) = v25;
          *(v39 + 16) = 2050;
          *(v39 + 18) = sub_20DD63FD4();

          _os_log_impl(&dword_20D9BF000, v36, v37, "%s Failed to get static endpoint for endpoint %hu in device with id %{public}llu", v39, 0x1Au);
          v40 = v46;
          __swift_destroy_boxed_opaque_existential_0(v46);
          MEMORY[0x20F327D10](v40, -1, -1);
          MEMORY[0x20F327D10](v39, -1, -1);
        }

        else
        {
        }

        (*(v48 + 8))(v34, v49);
        (*(v16 + 8))(v19, v15);
        v41 = v45;
        v45[4] = 0;
        result = 0.0;
        *v41 = 0u;
        *(v41 + 1) = 0u;
      }
    }
  }

  return result;
}

id sub_20D9FC874()
{
  v1 = [*(v0 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable) hf_homeKitObject];

  return v1;
}

uint64_t sub_20D9FC8C8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D50, &qword_20DD94250) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_20DD63744();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_20DD638F4();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_20DD63E94();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D58, &qword_20DD94258) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D9FCAB0, 0, 0);
}

uint64_t sub_20D9FCAB0()
{
  v0[15] = sub_20DD63C84();
  v0[16] = sub_20DD650F4();
  v0[17] = sub_20DD650E4();
  v2 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20D9FCB54, v2, v1);
}

uint64_t sub_20D9FCB54()
{
  v1 = v0[17];
  v2 = v0[15];

  v0[18] = sub_20DD63C64();

  return MEMORY[0x2822009F8](sub_20D9FCBC8, 0, 0);
}

uint64_t sub_20D9FCBC8()
{
  v1 = *(v0 + 128);
  *(v0 + 152) = sub_20DD650E4();
  v3 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20D9FCC54, v3, v2);
}

uint64_t sub_20D9FCC54()
{
  v2 = v0[18];
  v1 = v0[19];

  v0[20] = sub_20DD63C04();

  return MEMORY[0x2822009F8](sub_20D9FCCC8, 0, 0);
}

uint64_t sub_20D9FCCC8()
{
  if (*(v0[20] + 16) && (v1 = sub_20D9CB38C(v0[3]), (v2 & 1) != 0))
  {
    (*(v0[12] + 16))(v0[14], *(v0[20] + 56) + *(v0[12] + 72) * v1, v0[11]);
    v3 = 0;
    v4 = v0[20];
  }

  else
  {
    v3 = 1;
  }

  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];

  (*(v7 + 56))(v5, v3, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6))
  {
    sub_20D9D76EC(v0[14], &qword_27C843D58, &qword_20DD94258);
    v8 = v0[2];
    sub_20DD64324();
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[10];
    v12 = v0[7];
    v13 = v0[4];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[13];
    v17 = v0[14];
    v18 = v0[11];
    v19 = v0[12];
    v20 = v0[10];
    (*(v19 + 16))(v16, v17, v18);
    sub_20D9D76EC(v17, &qword_27C843D58, &qword_20DD94258);
    sub_20DD63E34();
    (*(v19 + 8))(v16, v18);
    v21 = *(MEMORY[0x277D151F8] + 4);
    v22 = swift_task_alloc();
    v0[21] = v22;
    *v22 = v0;
    v22[1] = sub_20D9FCF08;
    v23 = v0[10];

    return MEMORY[0x28216E688]();
  }
}

uint64_t sub_20D9FCF08(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 176) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_20D9FD068, 0, 0);
}

uint64_t sub_20D9FD068()
{
  if (v0[22])
  {
    v1 = v0[16];
    v0[23] = sub_20DD650E4();
    v3 = sub_20DD65094();

    return MEMORY[0x2822009F8](sub_20D9FD174, v3, v2);
  }

  else
  {
    v4 = v0[2];
    sub_20DD64324();
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[10];
    v8 = v0[7];
    v9 = v0[4];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_20D9FD174()
{
  v1 = v0[23];
  v2 = v0[15];

  v0[24] = sub_20DD63C64();

  return MEMORY[0x2822009F8](sub_20D9FD1E8, 0, 0);
}

uint64_t sub_20D9FD1E8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 56);
  v3 = [*(v0 + 176) uniqueIdentifier];
  sub_20DD63714();

  *(v0 + 200) = sub_20DD650E4();
  v5 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20D9FD2A8, v5, v4);
}

uint64_t sub_20D9FD2A8()
{
  v2 = v0[24];
  v1 = v0[25];

  v0[26] = sub_20DD63C14();

  return MEMORY[0x2822009F8](sub_20D9FD31C, 0, 0);
}

uint64_t sub_20D9FD31C()
{
  if (*(v0[26] + 16) && (v1 = sub_20D9CB38C(v0[7]), (v2 & 1) != 0))
  {
    v3 = v1;
    v4 = v0[22];
    v5 = v0[6];
    v7 = v0[4];
    v6 = v0[5];
    v26 = v0[7];
    v27 = v0[2];
    v8 = *(v0[26] + 56);
    v9 = sub_20DD64354();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v7, v8 + *(v10 + 72) * v3, v9);

    (*(v5 + 8))(v26, v6);

    (*(v10 + 56))(v7, 0, 1, v9);
    (*(v10 + 32))(v27, v7, v9);
  }

  else
  {
    v11 = v0[22];
    v13 = v0[6];
    v12 = v0[7];
    v15 = v0[4];
    v14 = v0[5];
    v16 = v0[2];

    (*(v13 + 8))(v12, v14);
    v17 = sub_20DD64354();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v15, 1, 1, v17);
    sub_20DD64324();

    if ((*(v18 + 48))(v15, 1, v17) != 1)
    {
      sub_20D9D76EC(v0[4], &qword_27C843D50, &qword_20DD94250);
    }
  }

  v20 = v0[13];
  v19 = v0[14];
  v21 = v0[10];
  v22 = v0[7];
  v23 = v0[4];

  v24 = v0[1];

  return v24();
}

id sub_20D9FD61C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable);
  v5 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider);
  v4 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider + 8);
  v6 = type metadata accessor for MatterAccessoryLikeItem();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath;
  v9 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
  v10 = sub_20DD63FE4();
  (*(*(v10 - 8) + 16))(&v7[v9], &v3[v8], v10);
  v11 = &v7[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider];
  *v11 = v5;
  *(v11 + 1) = v4;
  *&v7[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable] = v3;
  *&v7[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder] = 0;
  v14.receiver = v7;
  v14.super_class = v6;

  v12 = v3;
  result = objc_msgSendSuper2(&v14, sel_init);
  a1[3] = v6;
  *a1 = result;
  return result;
}

id MatterAccessoryLikeItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_20D9FD824()
{
  v1 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
  v2 = sub_20DD63FE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider + 8);

  v4 = *(v0 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder);
}

id MatterAccessoryLikeItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatterAccessoryLikeItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id MatterAccessoryLikeItem.updateShowInHomeDashboard(_:)(char a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable) hf:a1 & 1 updateShowInHomeDashboard:?];

  return v2;
}

id MatterAccessoryLikeItem.updateIsFavorite(_:)(char a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable) hf:a1 & 1 updateIsFavorite:?];

  return v2;
}

id MatterAccessoryLikeItem.updateIsVisibleInHomeStatus(_:)(char a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable) hf:a1 & 1 updateIsVisibleInHomeStatus:?];

  return v2;
}

uint64_t MatterAccessoryLikeItem.copy(with:)()
{
  swift_getObjectType();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    v3 = [v2 actionSetBuilder];
    if (v3)
    {
      v4 = v3;
      v5 = *&v0[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable];
      v7 = *&v0[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider];
      v6 = *&v0[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider + 8];
      v8 = type metadata accessor for MatterAccessoryLikeItem();
      v9 = objc_allocWithZone(v8);
      v10 = OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath;
      v11 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
      v12 = sub_20DD63FE4();
      (*(*(v12 - 8) + 16))(&v9[v11], &v5[v10], v12);
      v13 = &v9[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider];
      *v13 = v7;
      *(v13 + 1) = v6;
      *&v9[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable] = v5;
      *&v9[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder] = v4;
      v17.receiver = v9;
      v17.super_class = v8;

      v14 = v5;
      v15 = v4;
      objc_msgSendSuper2(&v17, sel_init);

      swift_unknownObjectRelease();
      return swift_dynamicCastClassUnconditional();
    }

    swift_unknownObjectRelease();
  }

  [v0 copy];
  sub_20DD654E4();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v18;
}

id MatterAccessoryLikeItem.home.getter()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable) + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) home];

  return v1;
}

void MatterAccessoryLikeItem.services.getter()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
  {
    v1 = MEMORY[0x277D84F90];

    sub_20D9EE59C(v1);
  }
}

uint64_t MatterAccessoryLikeItem.accessories()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable) hf_associatedAccessories];
  sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
  sub_20D9EC18C(&qword_27C843840, &qword_27C844290, 0x277CD1650);
  v2 = sub_20DD651E4();

  return v2;
}

id MatterAccessoryLikeItem.namingComponentForHomeKitObject()()
{
  v0 = objc_allocWithZone(HFNamingComponents);

  return [v0 initWithHomeKitObject_];
}

void sub_20D9FE440()
{
  v0 = *MEMORY[0x277D76A20];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle:v2 scale:3];

  qword_27C84C5D8 = v3;
}

id MatterAccessoryLikeItem.serviceLikeBuilder(in:)()
{
  v1 = [*&v0[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable] hf_homeKitObject];
  v2 = [v0 home];
  v3 = [objc_allocWithZone(HFAccessoryBuilder) initWithExistingObject:v1 inHome:v2];
  swift_unknownObjectRelease();

  return v3;
}

uint64_t sub_20D9FE62C(uint64_t a1)
{
  v57 = a1;
  v51 = sub_20DD63F14();
  v47 = *(v51 - 8);
  v1 = *(v47 + 64);
  v2 = MEMORY[0x28223BE20](v51);
  v46 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v49 = &v46 - v4;
  v55 = sub_20DD64054();
  v50 = *(v55 - 8);
  v5 = *(v50 + 64);
  v6 = MEMORY[0x28223BE20](v55);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v46 - v8;
  v56 = sub_20DD641D4();
  v54 = *(v56 - 8);
  v9 = *(v54 + 64);
  v10 = MEMORY[0x28223BE20](v56);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v46 - v16;
  v18 = sub_20DD64294();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  v26 = sub_20DD63ED4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20DD63EF4();
  v58 = *(v31 - 8);
  v59 = v31;
  v32 = *(v58 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 104))(v30, *MEMORY[0x277D15AE8], v26);
  sub_20DD63EE4();
  (*(v27 + 8))(v30, v26);
  sub_20D9FF4D0(v57, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843D80, &qword_20DD94268);
  if (swift_dynamicCast())
  {
    (*(v19 + 32))(v23, v25, v18);
    (*(v19 + 56))(v17, 1, 1, v18);
    v35 = sub_20DD64234();
    sub_20D9D76EC(v17, &qword_27C843A20, &qword_20DD940B0);
    (*(v19 + 8))(v23, v18);
    goto LABEL_8;
  }

  v36 = v56;
  if (swift_dynamicCast())
  {
    v37 = v54;
    v38 = v52;
    (*(v54 + 32))(v52, v13, v36);
    (*(v19 + 56))(v17, 1, 1, v18);
    v39 = sub_20DD641C4();
LABEL_7:
    v35 = v39;
    sub_20D9D76EC(v17, &qword_27C843A20, &qword_20DD940B0);
    (*(v37 + 8))(v38, v36);
    goto LABEL_8;
  }

  v40 = v53;
  v36 = v55;
  if (swift_dynamicCast())
  {
    v37 = v50;
    v38 = v48;
    (*(v50 + 32))(v48, v40, v36);
    (*(v19 + 56))(v17, 1, 1, v18);
    v39 = sub_20DD64034();
    goto LABEL_7;
  }

  v42 = v49;
  v43 = v51;
  v35 = 0;
  if (swift_dynamicCast())
  {
    v44 = v46;
    v45 = v47;
    (*(v47 + 32))(v46, v42, v43);
    (*(v19 + 56))(v17, 1, 1, v18);
    v35 = sub_20DD63F04();
    sub_20D9D76EC(v17, &qword_27C843A20, &qword_20DD940B0);
    (*(v45 + 8))(v44, v43);
  }

LABEL_8:
  (*(v58 + 8))(v34, v59);
  __swift_destroy_boxed_opaque_existential_0(v60);
  return v35;
}

id sub_20D9FED40(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v6 = sub_20DD63FE4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v7[2];
  v11(v10, a1, v6);
  v12 = type metadata accessor for MatterAccessoryRepresentable();
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  v15 = sub_20DD64294();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = &v13[OBJC_IVAR___HFMatterAccessoryRepresentable__tileInfo];
  *(v16 + 4) = 0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *&v13[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory] = a4;
  v11(&v13[OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath], v10, v6);
  v31.receiver = v13;
  v31.super_class = v12;
  v17 = a4;
  v18 = objc_msgSendSuper2(&v31, sel_init);
  v19 = v7[1];
  v19(v10, v6);
  v20 = type metadata accessor for MatterAccessoryLikeItem();
  v21 = objc_allocWithZone(v20);
  v11(&v21[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath], &v18[OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath], v6);
  v22 = &v21[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider];
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  *&v21[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable] = v18;
  *&v21[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder] = 0;
  v30.receiver = v21;
  v30.super_class = v20;
  v24 = objc_msgSendSuper2(&v30, sel_init);
  v19(v27, v6);
  return v24;
}

uint64_t type metadata accessor for MatterAccessoryLikeItem()
{
  result = qword_27C843C70;
  if (!qword_27C843C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s4Home23MatterAccessoryLikeItemC04withC19RepresentableObject_11valueSourceACXDSgSo011HFAccessoryG0_p_So021HFCharacteristicValueJ0_ptFZ_0(uint64_t a1)
{
  v2 = sub_20DD64C44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MatterAccessoryRepresentable();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = type metadata accessor for MatterAccessoryLikeItem();
    v10 = objc_allocWithZone(v9);
    v11 = OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath;
    v12 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
    v13 = sub_20DD63FE4();
    (*(*(v13 - 8) + 16))(&v10[v12], v8 + v11, v13);
    v14 = &v10[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider];
    *v14 = &unk_20DD94248;
    *(v14 + 1) = 0;
    *&v10[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable] = v8;
    *&v10[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder] = 0;
    v23.receiver = v10;
    v23.super_class = v9;
    swift_unknownObjectRetain();
    v25 = objc_msgSendSuper2(&v23, sel_init);
    sub_20DD65494();
    swift_dynamicCast();
    return v24;
  }

  else
  {
    sub_20DD64BE4();
    swift_unknownObjectRetain();
    v16 = sub_20DD64C24();
    v17 = sub_20DD65364();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = a1;
      v25 = v19;
      *v18 = 136446210;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
      v20 = sub_20DD64EE4();
      v22 = sub_20D9E0B38(v20, v21, &v25);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_20D9BF000, v16, v17, "Attempted to create MatterAccessoryLikeItem with an object that is not a MatterAccessoryRepresentable! %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x20F327D10](v19, -1, -1);
      MEMORY[0x20F327D10](v18, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

uint64_t sub_20D9FF2D8()
{
  result = sub_20DD63FE4();
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

uint64_t sub_20D9FF488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D9FF4D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_20D9FF53C(id result, unint64_t a2, uint64_t *a3)
{
  v12 = result;
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x20F326680](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a2 + 8 * j + 32);
      }

      v8 = result;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = result;
      sub_20DA00DF8(&v12, &v11, a3);

      if (v3)
      {
      }

      if (v9 == i)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = result;
    i = sub_20DD655B4();
  }

  return result;
}

void sub_20D9FF65C(uint64_t a1)
{
  v1 = a1;
  v19 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9D7510(0, &qword_27C843EE8, 0x277CD17F8);
    sub_20D9EC18C(&qword_27C843EF0, &qword_27C843EE8, 0x277CD17F8);
    sub_20DD65284();
    v1 = v14;
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
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

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_20DD655F4() || (sub_20D9D7510(0, &qword_27C843EE8, 0x277CD17F8), swift_dynamicCast(), (v11 = v13) == 0))
    {
LABEL_21:
      sub_20D9C51CC();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x20F325F00]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20DD65014();
      }

      sub_20DD65054();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void HFActionNaturalLanguageExecution.stringKeys(for:)(uint64_t a1)
{
  v2 = sub_20DD641A4();
  v53 = *(v2 - 1);
  v3 = *(v53 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v49 - v8;
  MEMORY[0x28223BE20](v7);
  v52 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843EB0, &qword_20DD94290);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  sub_20D9FF65C(a1);
  if (v18 >> 62)
  {
    goto LABEL_28;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v59 = v9;
      v19 = MEMORY[0x277D84F90];
      v20 = v18;
      v64 = sub_20D9D51E0(MEMORY[0x277D84F90]);
      v21 = sub_20D9D5400(v19);
      v54 = sub_20D9FF53C(v21, v20, &v64);

      v60 = v2;
      if (v19 >> 62)
      {
        v47 = sub_20DD655B4();
        v9 = v59;
        if (v47)
        {
          sub_20D9EE918(MEMORY[0x277D84F90]);
        }

        else
        {
          v18 = MEMORY[0x277D84FA0];
        }
      }

      else
      {
        v18 = MEMORY[0x277D84FA0];
        v9 = v59;
      }

      v22 = 0;
      v64 = v18;
      v23 = v54[8];
      v49 = (v54 + 8);
      v24 = 1 << *(v54 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & v23;
      v27 = (v24 + 63) >> 6;
      v61 = (v53 + 32);
      v62 = (v53 + 16);
      v57 = (v53 + 88);
      v56 = *MEMORY[0x277D15EE8];
      v55 = (v53 + 8);
      v2 = qword_20DD94298;
      v50 = v15;
      v51 = v6;
      v58 = v17;
      while (v26)
      {
        v17 = v22;
LABEL_19:
        v31 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v32 = v31 | (v17 << 6);
        v34 = v53;
        v33 = v54;
        (*(v53 + 16))(v52, v54[6] + *(v53 + 72) * v32, v60);
        v35 = *(v33[7] + 8 * v32);
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843EB8, qword_20DD94298);
        v37 = *(v36 + 48);
        v15 = v50;
        (*(v34 + 32))();
        *&v15[v37] = v35;
        (*(*(v36 - 8) + 56))(v15, 0, 1, v36);

        v30 = v17;
        v6 = v51;
        v9 = v59;
LABEL_20:
        v38 = v58;
        sub_20DA031AC(v15, v58, &qword_27C843EB0, &qword_20DD94290);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843EB8, qword_20DD94298);
        if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
        {

          return;
        }

        v40 = *(v38 + *(v39 + 48));
        v41 = v60;
        (*v61)(v9, v38, v60);
        (*v62)(v6, v9, v41);
        v42 = (*v57)(v6, v41);
        if (v42 == v56)
        {
          v43 = sub_20DA00054(v40);

          if (v43)
          {
            sub_20D9E188C(&v63, v43);
            v9 = v59;
            (*v55)(v59, v41);
          }

          else
          {
            v9 = v59;
            v18 = (*v55)(v59, v41);
          }
        }

        else
        {

          v28 = *v55;
          (*v55)(v9, v41);
          v18 = (v28)(v6, v41);
        }

        v22 = v30;
        v2 = qword_20DD94298;
      }

      if (v27 <= v22 + 1)
      {
        v29 = v22 + 1;
      }

      else
      {
        v29 = v27;
      }

      v30 = v29 - 1;
      while (1)
      {
        v17 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v17 >= v27)
        {
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843EB8, qword_20DD94298);
          (*(*(v44 - 8) + 56))(v15, 1, 1, v44);
          v26 = 0;
          goto LABEL_20;
        }

        v26 = *&v49[8 * v17];
        ++v22;
        if (v26)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_28:
      v45 = v18;
      v46 = sub_20DD655B4();
      v18 = v45;
    }

    while (v46);
  }

  if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
  {
    v48 = MEMORY[0x277D84F90];

    sub_20D9EE918(v48);
  }
}

uint64_t sub_20DA00054(uint64_t a1)
{
  v2 = sub_20DD64C44();
  v79 = *(v2 - 8);
  v80 = v2;
  v3 = *(v79 + 64);
  MEMORY[0x28223BE20](v2);
  v78 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = _s21AccessoryCommandTupleVMa();
  v89 = *(v76 - 8);
  v5 = *(v89 + 64);
  v6 = MEMORY[0x28223BE20](v76);
  v77 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v75 - v9;
  MEMORY[0x28223BE20](v8);
  v91 = &v75 - v11;
  v94 = sub_20DD63744();
  v12 = *(v94 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v94);
  v86 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F00, &qword_20DD94330);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v75 - v20;
  v97 = MEMORY[0x277D84FA0];
  v22 = *(a1 + 64);
  v82 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v81 = (v23 + 63) >> 6;
  v83 = v12 + 32;
  v84 = v12 + 16;
  v88 = v12;
  v92 = a1;
  v93 = (v12 + 8);

  v27 = 0;
  v90 = v10;
  v87 = v21;
  v85 = v19;
  v28 = v86;
  if (v25)
  {
    while (1)
    {
      v29 = v27;
LABEL_12:
      v32 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v33 = v32 | (v29 << 6);
      v34 = v92;
      v35 = v88;
      v36 = v94;
      (*(v88 + 16))(v28, *(v92 + 48) + *(v88 + 72) * v33, v94);
      v37 = v91;
      sub_20D9D739C(*(v34 + 56) + *(v89 + 72) * v33, v91);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F08, &qword_20DD94338);
      v39 = *(v38 + 48);
      v40 = *(v35 + 32);
      v41 = v85;
      v40(v85, v28, v36);
      v42 = v37;
      v19 = v41;
      sub_20D9D7400(v42, &v41[v39]);
      (*(*(v38 - 8) + 56))(v41, 0, 1, v38);
      v31 = v29;
      v10 = v90;
      v21 = v87;
LABEL_13:
      sub_20DA031AC(v19, v21, &qword_27C843F00, &qword_20DD94330);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F08, &qword_20DD94338);
      if ((*(*(v43 - 8) + 48))(v21, 1, v43) == 1)
      {
        break;
      }

      sub_20D9D7400(&v21[*(v43 + 48)], v10);
      v44 = sub_20DA00964();
      v45 = sub_20DA49324(v44);

      if (!v45 || (v46 = sub_20DA03568(v45), v46 == 6))
      {

        v48 = v78;
        sub_20DD64C04();
        v49 = v77;
        sub_20D9D739C(v10, v77);
        v50 = sub_20DD64C24();
        v51 = sub_20DD65364();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v95 = v53;
          *v52 = 136446210;
          sub_20D9D739C(v49, v91);
          v54 = sub_20DD64ED4();
          v56 = v55;
          sub_20DA04690(v49);
          v57 = sub_20D9E0B38(v54, v56, &v95);

          *(v52 + 4) = v57;
          _os_log_impl(&dword_20D9BF000, v50, v51, "Failed to describe actions for %{public}s", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v53);
          MEMORY[0x20F327D10](v53, -1, -1);
          MEMORY[0x20F327D10](v52, -1, -1);
        }

        else
        {

          sub_20DA04690(v49);
        }

        (*(v79 + 8))(v48, v80);
        sub_20DA04690(v10);
        (*v93)(v21, v94);
        return 0;
      }

      sub_20D9E1600(&v95, v46);
      sub_20DA04690(v10);
      result = (*v93)(v21, v94);
      v27 = v31;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    v58 = v92;

    v59 = sub_20DA04448(v97);

    if (v59 == 6)
    {
      return 0;
    }

    v60 = sub_20DA00CBC(v59);
    v62 = v60;
    v63 = v61;
    if (*(v58 + 16) < 2uLL)
    {
      v67 = v75;
      [v75 named];
      if ([v67 named])
      {
        v95 = v62;
        v96 = v63;

        MEMORY[0x20F325E90](0x64656D614E5FLL, 0xE600000000000000);

        v68 = objc_allocWithZone(HFLocalizableStringKey);
        v69 = sub_20DD64E74();

        v70 = sub_20DD64FB4();
        v71 = [v68 initWithKey:v69 argumentKeys:v70];
      }

      else
      {
        v72 = objc_allocWithZone(HFLocalizableStringKey);
        v73 = sub_20DD64E74();

        v74 = sub_20DD64FB4();
        v71 = [v72 initWithKey:v73 argumentKeys:v74];
      }

      return v71;
    }

    else
    {
      v95 = v60;
      v96 = v61;

      MEMORY[0x20F325E90](0x6C7069746C754D5FLL, 0xE900000000000065);

      v64 = objc_allocWithZone(HFNumberDependentLocalizableStringKey);
      v65 = sub_20DD64E74();

      v66 = [v64 initWithKey_];

      [v66 setIntegerArgument_];
      return v66;
    }
  }

  else
  {
LABEL_5:
    if (v81 <= v27 + 1)
    {
      v30 = v27 + 1;
    }

    else
    {
      v30 = v81;
    }

    v31 = v30 - 1;
    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v81)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F08, &qword_20DD94338);
        (*(*(v47 - 8) + 56))(v19, 1, 1, v47);
        v25 = 0;
        goto LABEL_13;
      }

      v25 = *(v82 + 8 * v29);
      ++v27;
      if (v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20DA00964()
{
  v1 = v0;
  v2 = sub_20DD64C44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  if (v7 < 0)
  {
    v27 = *(v1 + 8);
  }

  v8 = sub_20DD655B4();
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  result = _s21AccessoryCommandTupleVMa();
  if (v8 >= 1)
  {
    v11 = 0;
    v12 = *(result + 24);
    v33 = v7 & 0xC000000000000001;
    v34 = v12;
    v13 = MEMORY[0x277D84F90];
    v29 = (v3 + 8);
    *&v10 = 138543362;
    v28 = v10;
    v31 = v7;
    v32 = v6;
    v30 = v8;
    do
    {
      if (v33)
      {
        v20 = MEMORY[0x20F326680](v11, v7);
      }

      else
      {
        v20 = *(v7 + 8 * v11 + 32);
      }

      v21 = v20;
      sub_20DD64374();
      if (v36)
      {
        sub_20D9C51D4(&v35, v37);
        sub_20D9FF4D0(v37, &v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_20D9E0250(0, v13[2] + 1, 1, v13);
        }

        v23 = v13[2];
        v22 = v13[3];
        if (v23 >= v22 >> 1)
        {
          v13 = sub_20D9E0250((v22 > 1), v23 + 1, 1, v13);
        }

        __swift_destroy_boxed_opaque_existential_0(v37);
        v13[2] = v23 + 1;
        sub_20D9C51D4(&v35, &v13[5 * v23 + 4]);
      }

      else
      {
        sub_20D9D76EC(&v35, &qword_27C843F30, &unk_20DD94350);
        sub_20DD64BE4();
        v24 = v21;
        v25 = sub_20DD64C24();
        v26 = sub_20DD65364();

        if (os_log_type_enabled(v25, v26))
        {
          v14 = swift_slowAlloc();
          v15 = v2;
          v16 = v1;
          v17 = swift_slowAlloc();
          *v14 = v28;
          *(v14 + 4) = v24;
          *v17 = v24;
          v18 = v24;
          _os_log_impl(&dword_20D9BF000, v25, v26, "Tried describing unexpected command: %{public}@", v14, 0xCu);
          sub_20D9D76EC(v17, &unk_27C843630, &qword_20DD94080);
          v19 = v17;
          v1 = v16;
          v2 = v15;
          MEMORY[0x20F327D10](v19, -1, -1);
          MEMORY[0x20F327D10](v14, -1, -1);
        }

        else
        {
          v18 = v25;
          v25 = v24;
        }

        (*v29)(v32, v2);
        v8 = v30;
        v7 = v31;
      }

      ++v11;
    }

    while (v8 != v11);
    return v13;
  }

  __break(1u);
  return result;
}

unint64_t sub_20DA00CBC(char a1)
{
  switch(a1)
  {
    case 3:
      return 0xD000000000000025;
    case 5:
      return 0xD00000000000002ALL;
    case 4:
      return 0xD000000000000022;
  }

  sub_20DD65704();

  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x676E6970706F4DLL;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (a1 == 1)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0x800000020DD97E80;
    }
  }

  else
  {
    v4 = 0xE900000000000067;
    v3 = 0x6E696D7575636156;
  }

  MEMORY[0x20F325E90](v3, v4);

  return 0xD000000000000026;
}

uint64_t sub_20DA00DF8(void *a1, id *a2, uint64_t *a3)
{
  v132 = a3;
  v114 = sub_20DD63744();
  v106 = *(v114 - 8);
  v5 = *(v106 + 64);
  v6 = MEMORY[0x28223BE20](v114);
  v105 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v112 = &v102 - v9;
  MEMORY[0x28223BE20](v8);
  v109 = &v102 - v10;
  v120 = _s21AccessoryCommandTupleVMa();
  v108 = *(v120 - 8);
  v11 = *(v108 + 64);
  v12 = MEMORY[0x28223BE20](v120);
  v111 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v110 = (&v102 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v104 = &v102 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v102 - v19;
  MEMORY[0x28223BE20](v18);
  v117 = (&v102 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A38, &unk_20DD940C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v134 = &v102 - v24;
  v25 = sub_20DD641A4();
  v26 = *(v25 - 8);
  v27 = v26[8];
  MEMORY[0x28223BE20](v25);
  v29 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v133 = &v102 - v32;
  v135 = sub_20DD64294();
  v33 = *(v135 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v135);
  v138 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = [*a2 commands];
  sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
  v37 = sub_20DD64FD4();

  v103 = v20;
  if (v37 >> 62)
  {
    goto LABEL_42;
  }

  v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v39 = v37;
  v40 = v135;
  if (!v38)
  {
  }

  v130 = v37 & 0xFFFFFFFFFFFFFF8;
  v131 = v37 & 0xC000000000000001;
  v129 = (v33 + 48);
  v126 = (v26 + 6);
  v127 = (v33 + 32);
  v124 = (v26 + 4);
  v113 = (v106 + 8);
  v119 = (v33 + 16);
  v102 = v106 + 16;
  v121 = (v26 + 1);
  v125 = (v33 + 8);
  v33 = 0;
  v118 = xmmword_20DD940A0;
  v115 = xmmword_20DD93A70;
  v122 = v38;
  v123 = a1;
  v116 = v25;
  v128 = v37;
  while (1)
  {
    if (v131)
    {
      v57 = MEMORY[0x20F326680](v33, v39);
      v37 = v133;
      v56 = v134;
      v58 = (v33 + 1);
      if (__OFADD__(v33, 1))
      {
        goto LABEL_39;
      }
    }

    else
    {
      v37 = v133;
      v56 = v134;
      if (v33 >= *(v130 + 16))
      {
        goto LABEL_40;
      }

      v57 = *(v39 + 8 * v33 + 32);
      v58 = (v33 + 1);
      if (__OFADD__(v33, 1))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        v38 = sub_20DD655B4();
        goto LABEL_3;
      }
    }

    v137 = v58;
    v59 = v57;
    v26 = [v57 accessory];
    sub_20DA01BB4(v26, v132, v37);
    if ((*v129)(v37, 1, v40) == 1)
    {

      v99 = &qword_27C843A20;
      v100 = &qword_20DD940B0;
      v101 = v37;
      return sub_20D9D76EC(v101, v99, v100);
    }

    v136 = v33;
    (*v127)(v138, v37, v40);
    sub_20DD64204();
    if ((*v126)(v56, 1, v25) == 1)
    {
      (*v125)(v138, v40);

      v99 = &unk_27C843A38;
      v100 = &unk_20DD940C0;
      v101 = v56;
      return sub_20D9D76EC(v101, v99, v100);
    }

    (*v124)(v29, v56, v25);
    v60 = *a1;
    if (*(*a1 + 16))
    {
      v61 = sub_20D9CB460(v29);
      if (v62)
      {
        break;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
    v41 = swift_allocObject();
    *(v41 + 16) = v118;
    *(v41 + 32) = v59;
    v42 = v117;
    (*v119)(v117 + *(v120 + 24), v138, v40);
    *v42 = v26;
    v42[1] = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F38, &qword_20DD94368);
    v43 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8435C8, &unk_20DD94370) - 8);
    v44 = *(*v43 + 72);
    v45 = (*(*v43 + 80) + 32) & ~*(*v43 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = v115;
    v47 = v46 + v45;
    v48 = v43[14];
    v49 = v59;
    v50 = [v26 uniqueIdentifier];
    sub_20DD63714();

    v51 = v47 + v48;
    a1 = v123;
    sub_20D9D739C(v42, v51);
    v26 = sub_20D9D48F4(v46);
    swift_setDeallocating();
    v52 = v47;
    v40 = v135;
    sub_20D9D76EC(v52, &qword_27C8435C8, &unk_20DD94370);
    swift_deallocClassInstance();
    v53 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139 = *a1;
    sub_20D9D0BF8(v26, v29, isUniquelyReferenced_nonNull_native);

    *a1 = v139;
    v55 = v42;
    v25 = v116;
    sub_20DA04690(v55);
    (*v121)(v29, v25);
    v39 = v128;
    (*v125)(v138, v40);
LABEL_6:
    v33 = v136 + 1;
    if (v137 == v122)
    {
    }
  }

  v33 = *(*(v60 + 56) + 8 * v61);

  v63 = [v26 uniqueIdentifier];
  v64 = v109;
  sub_20DD63714();

  if (*(v33 + 16))
  {
    v65 = sub_20D9CB38C(v64);
    if (v66)
    {
      v67 = v104;
      sub_20D9D739C(*(v33 + 56) + *(v108 + 72) * v65, v104);
      v107 = *v113;
      v107(v64, v114);
      v68 = v103;
      sub_20D9D7400(v67, v103);
      v69 = v59;
      MEMORY[0x20F325F00]();
      if (*((*(v68 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v68 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v97 = *((*(v68 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20DD65014();
      }

      sub_20DD65054();
      v70 = [v26 uniqueIdentifier];
      v71 = v105;
      sub_20DD63714();

      v72 = v117;
      sub_20D9D739C(v68, v117);
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v139 = v33;
      sub_20D9D0A10(v72, v71, v73);
      v107(v71, v114);
      v74 = v139;

      sub_20DA04690(v68);
      goto LABEL_29;
    }
  }

  v107 = *v113;
  v107(v64, v114);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  v75 = swift_allocObject();
  *(v75 + 16) = v118;
  *(v75 + 32) = v59;
  v76 = v110;
  (*v119)(v110 + *(v120 + 24), v138, v135);
  *v76 = v26;
  v76[1] = v75;
  v77 = v59;
  v78 = [v26 uniqueIdentifier];
  v79 = v112;
  sub_20DD63714();

  sub_20D9D739C(v76, v111);
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v139 = v33;
  v81 = v79;
  v37 = v33;
  v83 = sub_20D9CB38C(v81);
  v84 = *(v33 + 16);
  v85 = (v82 & 1) == 0;
  v86 = v84 + v85;
  if (__OFADD__(v84, v85))
  {
    goto LABEL_41;
  }

  v87 = v82;
  if (*(v33 + 24) >= v86)
  {
    if (v80)
    {
      v74 = v139;
      if ((v82 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_20D9D2620();
      v74 = v139;
      if ((v87 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

  sub_20D9CCACC(v86, v80);
  v88 = sub_20D9CB38C(v112);
  if ((v87 & 1) != (v89 & 1))
  {
    goto LABEL_44;
  }

  v83 = v88;
  v74 = v139;
  if (v87)
  {
LABEL_27:
    sub_20D9D74AC(v111, v74[7] + *(v108 + 72) * v83);
    v107(v112, v114);
    sub_20DA04690(v110);
    goto LABEL_28;
  }

LABEL_23:
  v74[(v83 >> 6) + 8] |= 1 << v83;
  v90 = v112;
  v91 = v114;
  (*(v106 + 16))(v74[6] + *(v106 + 72) * v83, v112, v114);
  sub_20D9D7400(v111, v74[7] + *(v108 + 72) * v83);
  v107(v90, v91);
  sub_20DA04690(v110);
  v92 = v74[2];
  v93 = __OFADD__(v92, 1);
  v94 = v92 + 1;
  if (!v93)
  {
    v74[2] = v94;
LABEL_28:

LABEL_29:
    a1 = v123;
    v40 = v135;
    v95 = *v123;
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v139 = *a1;
    sub_20D9D0BF8(v74, v29, v96);

    *a1 = v139;
    (*v121)(v29, v25);
    (*v125)(v138, v40);

    v39 = v128;
    goto LABEL_6;
  }

  __break(1u);
LABEL_44:
  result = sub_20DD659E4();
  __break(1u);
  return result;
}

uint64_t sub_20DA01BB4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_20DD64C44();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v78 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v76 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v73 - v15;
  v17 = sub_20DD63744();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v75 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v73 - v22;
  v24 = sub_20DD64294();
  v81 = *(v24 - 8);
  v25 = *(v81 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v73 - v29;
  if ([a1 hf_isMatterOnlyAccessory])
  {
    v73 = v24;
    v74 = a3;
    v31 = [a1 uniqueIdentifier];
    sub_20DD63714();

    v32 = *a2;
    if (*(*a2 + 16) && (v33 = sub_20D9CB38C(v23), (v34 & 1) != 0))
    {
      v35 = *(v32 + 56) + *(v81 + 72) * v33;
      v36 = v73;
      (*(v81 + 16))(v30, v35, v73);
      (*(v18 + 8))(v23, v17);
      v37 = v74;
      (*(v81 + 32))(v74, v30, v36);
      return (*(v81 + 56))(v37, 0, 1, v36);
    }

    else
    {
      (*(v18 + 8))(v23, v17);
      v40 = sub_20DD652F4();
      if (v40)
      {
        v41 = v40;
        swift_unknownObjectRetain();
        v42 = a1;
        sub_20DD64254();
        v43 = v73;
        if ((*(v81 + 48))(v16, 1, v73) == 1)
        {
          sub_20D9D76EC(v16, &qword_27C843A20, &qword_20DD940B0);
          v44 = v77;
          sub_20DD64BE4();
          v45 = v42;
          v46 = sub_20DD64C24();
          v47 = sub_20DD65364();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v78 = v41;
            v50 = v49;
            v51 = swift_slowAlloc();
            v82 = v51;
            *v48 = 136315394;
            _s21AccessoryCommandTupleVMa();
            v52 = sub_20DD65B04();
            v54 = sub_20D9E0B38(v52, v53, &v82);

            *(v48 + 4) = v54;
            *(v48 + 12) = 2112;
            *(v48 + 14) = v45;
            *v50 = v45;
            v55 = v45;
            _os_log_impl(&dword_20D9BF000, v46, v47, "%s: StaticMatterDevice returned nil from initializer with %@", v48, 0x16u);
            sub_20D9D76EC(v50, &unk_27C843630, &qword_20DD94080);
            MEMORY[0x20F327D10](v50, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v51);
            MEMORY[0x20F327D10](v51, -1, -1);
            MEMORY[0x20F327D10](v48, -1, -1);
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          (*(v79 + 8))(v44, v80);
          return (*(v81 + 56))(v74, 1, 1, v43);
        }

        else
        {
          v67 = *(v81 + 32);
          v67(v28, v16, v43);
          v68 = [v42 uniqueIdentifier];
          v69 = v75;
          sub_20DD63714();

          v70 = v76;
          (*(v81 + 16))(v76, v28, v43);
          v71 = *(v81 + 56);
          v81 += 56;
          v71(v70, 0, 1, v43);
          sub_20D9F99FC(v70, v69);
          swift_unknownObjectRelease();
          v72 = v74;
          v67(v74, v28, v43);
          return v71(v72, 0, 1, v43);
        }
      }

      else
      {
        v56 = v78;
        sub_20DD64BE4();
        v57 = a1;
        v58 = sub_20DD64C24();
        v59 = sub_20DD65364();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v82 = v62;
          *v60 = 136315394;
          _s21AccessoryCommandTupleVMa();
          v63 = sub_20DD65B04();
          v65 = sub_20D9E0B38(v63, v64, &v82);

          *(v60 + 4) = v65;
          *(v60 + 12) = 2112;
          *(v60 + 14) = v57;
          *v61 = v57;
          v66 = v57;
          _os_log_impl(&dword_20D9BF000, v58, v59, "%s: Failed to get matter device on accessory %@", v60, 0x16u);
          sub_20D9D76EC(v61, &unk_27C843630, &qword_20DD94080);
          MEMORY[0x20F327D10](v61, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v62);
          MEMORY[0x20F327D10](v62, -1, -1);
          MEMORY[0x20F327D10](v60, -1, -1);
        }

        (*(v79 + 8))(v56, v80);
        return (*(v81 + 56))(v74, 1, 1, v73);
      }
    }
  }

  else
  {
    v39 = *(v81 + 56);

    return v39(a3, 1, 1, v24);
  }
}

uint64_t sub_20DA023E8(uint64_t a1)
{
  v3 = v1;
  sub_20DD65A64();
  v4 = *v1;
  sub_20DD65464();
  sub_20DA02D24(v7, v3[1]);
  v5 = *(a1 + 24);
  sub_20DD64294();
  sub_20DA03164(&qword_27C843EE0, MEMORY[0x277D16408]);
  sub_20DD64E34();
  return sub_20DD65AA4();
}

uint64_t sub_20DA024A0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  sub_20DD65464();
  sub_20DA02D24(a1, v4[1]);
  v7 = *(a2 + 24);
  sub_20DD64294();
  sub_20DA03164(&qword_27C843EE0, MEMORY[0x277D16408]);
  return sub_20DD64E34();
}

uint64_t sub_20DA0253C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_20DD65A64();
  v5 = *v2;
  sub_20DD65464();
  sub_20DA02D24(v8, v4[1]);
  v6 = *(a2 + 24);
  sub_20DD64294();
  sub_20DA03164(&qword_27C843EE0, MEMORY[0x277D16408]);
  sub_20DD64E34();
  return sub_20DD65AA4();
}

uint64_t sub_20DA025F0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_20D9D7510(0, &qword_27C8441A0, 0x277D82BB8);
  v6 = *a1;
  v7 = *a2;
  if (sub_20DD65454() & 1) != 0 && (sub_20DA4A558(a1[1], a2[1]))
  {
    v8 = *(a3 + 24);

    JUMPOUT(0x20F3251A0);
  }

  return 0;
}

uint64_t sub_20DA0268C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20DA04AE0();
  *a2 = result;
  return result;
}

void sub_20DA026BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0xE700000000000000;
  v5 = 0x676E6970706F4DLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x800000020DD97E80;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E696D7575636156;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_20DA02724()
{
  v1 = *v0;
  sub_20DD65A64();
  sub_20DD64F24();

  return sub_20DD65AA4();
}

uint64_t sub_20DA027D0()
{
  *v0;
  *v0;
  sub_20DD64F24();
}

uint64_t sub_20DA02868()
{
  v1 = *v0;
  sub_20DD65A64();
  sub_20DD64F24();

  return sub_20DD65AA4();
}

uint64_t sub_20DA02910(uint64_t a1, char a2)
{
  if (a2 == 5)
  {
    v2 = 1;
    return MEMORY[0x20F3269D0](v2);
  }

  if (a2 == 4)
  {
    v2 = 0;
    return MEMORY[0x20F3269D0](v2);
  }

  MEMORY[0x20F3269D0](2);
  if (a2 == 3)
  {
    return sub_20DD65A84();
  }

  sub_20DD65A84();
  sub_20DD64F24();
}

uint64_t sub_20DA02A08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x676E6970706F4DLL;
  v5 = 0x800000020DD97E80;
  if (v2 != 1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x800000020DD97E80;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E696D7575636156;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE900000000000067;
  }

  v8 = 0x676E6970706F4DLL;
  if (*a2 == 1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xD000000000000013;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E696D7575636156;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20DD65974();
  }

  return v11 & 1;
}

uint64_t sub_20DA02B04()
{
  v1 = *v0;
  sub_20DD65A64();
  sub_20DA02910(v3, v1);
  return sub_20DD65AA4();
}

uint64_t sub_20DA02B54()
{
  v1 = *v0;
  sub_20DD65A64();
  sub_20DA02910(v3, v1);
  return sub_20DD65AA4();
}

uint64_t sub_20DA02BA4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v20 = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18 = &v16;
  v19 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = &v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_20DA03214(v8, v3, a2);
  }

  else
  {
    v13 = swift_slowAlloc();
    bzero(v13, v12);
    sub_20DA046EC(v13, &v17);
    v14 = v17;
    MEMORY[0x20F327D10](v13, -1, -1);
    v9 = v14;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

void sub_20DA02D24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_20DD655B4();
    MEMORY[0x20F3269D0](v8);
    v3 = sub_20DD655B4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x20F3269D0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x20F326680](i, a2);
      sub_20DD65464();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_20DD65464();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_20DA02E14(char a1, char a2)
{
  if (a1 == 5)
  {
    return a2 == 5;
  }

  if (a1 == 4)
  {
    return a2 == 4;
  }

  if ((a2 & 0xFE) == 4)
  {
    return 0;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a2 == 3)
  {
    return 0;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xE700000000000000;
      v4 = 0x676E6970706F4DLL;
    }

    else
    {
      v4 = 0xD000000000000013;
      v3 = 0x800000020DD97E80;
    }
  }

  else
  {
    v4 = 0x6E696D7575636156;
    v3 = 0xE900000000000067;
  }

  v5 = 0x676E6970706F4DLL;
  v6 = 0x800000020DD97E80;
  if (a2 == 1)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (a2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E696D7575636156;
  }

  if (a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE900000000000067;
  }

  if (v4 != v7 || v3 != v8)
  {
    v9 = sub_20DD65974();

    return (v9 & 1) != 0;
  }

  return 1;
}

uint64_t _s21AccessoryCommandTupleVMa()
{
  result = qword_27C843EC0;
  if (!qword_27C843EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20DA03008()
{
  sub_20D9D7510(319, &qword_27C844290, 0x277CD1650);
  if (v0 <= 0x3F)
  {
    sub_20DA030B4();
    if (v1 <= 0x3F)
    {
      sub_20DD64294();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20DA030B4()
{
  if (!qword_27C843ED0)
  {
    sub_20D9D7510(255, &qword_27C843BB0, 0x277CD1B68);
    v0 = sub_20DD65084();
    if (!v1)
    {
      atomic_store(v0, &qword_27C843ED0);
    }
  }
}

uint64_t sub_20DA03164(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20DA031AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_20DA03214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v6 = sub_20DD644F4();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v28 - v12;
  v33 = *(a2 + 16);
  if (!v33)
  {
    return 0;
  }

  v28 = v3;
  v29 = 0;
  v13 = 0;
  v38 = *(v11 + 16);
  v39 = v11 + 16;
  v32 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v14 = *(v11 + 72);
  v36 = a3 + 56;
  v37 = v14;
  v15 = (v11 + 8);
  v35 = a3;
  while (1)
  {
    v34 = v13;
    v38(v40, v32 + v37 * v13, v6);
    v18 = *(a3 + 40);
    sub_20DA03164(&qword_27C843F20, MEMORY[0x277D16AB8]);
    v19 = sub_20DD64E24();
    v20 = -1 << *(a3 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
    {
      v16 = *v15;
LABEL_4:
      v16(v40, v6);
      goto LABEL_5;
    }

    v31 = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24 = ~v20;
    while (1)
    {
      v38(v10, *(v35 + 48) + v21 * v37, v6);
      sub_20DA03164(&qword_27C843F28, MEMORY[0x277D16AB8]);
      v25 = sub_20DD64E64();
      v16 = *v15;
      (*v15)(v10, v6);
      if (v25)
      {
        break;
      }

      v21 = (v21 + 1) & v24;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
      {
        a3 = v35;
        goto LABEL_4;
      }
    }

    result = (v16)(v40, v6);
    v27 = *(v30 + 8 * v22);
    *(v30 + 8 * v22) = v27 | v23;
    if ((v27 & v23) != 0)
    {
      a3 = v35;
LABEL_5:
      v17 = v34;
      goto LABEL_6;
    }

    v17 = v34;
    a3 = v35;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v29 + 1 == *(v35 + 16))
    {
      return 1;
    }

    ++v29;
LABEL_6:
    v13 = v17 + 1;
    if (v13 == v33)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA03568(uint64_t a1)
{
  v2 = sub_20DD644F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v119 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v121 = &v82 - v8;
  MEMORY[0x28223BE20](v7);
  v120 = &v82 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F10, &qword_20DD94340);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v116 = &v82 - v12;
  v13 = sub_20DD644A4();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v117 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v82 - v18;
  v20 = v14[13];
  v20(&v82 - v18, *MEMORY[0x277D16938], v13);
  v21 = sub_20DA2FCBC(v19, a1);
  v118 = v14;
  v24 = v14[1];
  v22 = v14 + 1;
  v23 = v24;
  v24(v19, v13);
  if (v21)
  {

    return 4;
  }

  v26 = *MEMORY[0x277D168F0];
  v27 = sub_20DD64494();
  (*(*(v27 - 8) + 104))(v19, v26, v27);
  v20(v19, *MEMORY[0x277D16948], v13);
  LOBYTE(v26) = sub_20DA2FCBC(v19, a1);
  v23(v19, v13);
  if ((v26 & 1) == 0)
  {
    v20(v19, *MEMORY[0x277D16908], v13);
    v32 = sub_20DA2FCBC(v19, a1);

    v23(v19, v13);
    if (v32)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  v104 = v3;
  v109 = v2;
  v28 = *MEMORY[0x277D169C8];
  v29 = sub_20DD644B4();
  v111 = *(v29 - 8);
  v30 = v111[13];
  v114 = (v111 + 13);
  v115 = v30;
  v30(v19, v28, v29);
  v31 = *MEMORY[0x277D16958];
  v20(v19, v31, v13);
  LOBYTE(v28) = sub_20DA2FCBC(v19, a1);
  v23(v19, v13);
  if (v28)
  {

    return 0;
  }

  v115(v19, *MEMORY[0x277D169B0], v29);
  v20(v19, v31, v13);
  v33 = sub_20DA2FCBC(v19, a1);
  v23(v19, v13);
  if (v33)
  {

    return 1;
  }

  v34 = *MEMORY[0x277D169A8];
  v107 = v29;
  v115(v19, v34, v29);
  v108 = v31;
  v20(v19, v31, v13);
  v35 = sub_20DA2FCBC(v19, a1);
  v97 = v23;
  result = (v23)(v19, v13);
  v106 = v22;
  if (v35)
  {

    return 2;
  }

  v115 = *(a1 + 16);
  if (!v115)
  {

    return 3;
  }

  v36 = 0;
  v37 = v118;
  v114 = (a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80)));
  v112 = v118 + 11;
  v113 = v118 + 2;
  v102 = (v111 + 11);
  v103 = (v118 + 12);
  v101 = *MEMORY[0x277D16988];
  v96 = (v111 + 1);
  v95 = (v111 + 12);
  v92 = *MEMORY[0x277D16A90];
  v99 = *MEMORY[0x277D16AA0];
  v38 = v104;
  v94 = v104 + 104;
  v86 = *MEMORY[0x277D16A80];
  v83 = (v104 + 48);
  v105 = (v104 + 8);
  v100 = (v104 + 16);
  v85 = 3;
  v84 = xmmword_20DD94280;
  v39 = v117;
  v40 = v97;
  v41 = v108;
  v91 = a1;
  while (v36 < *(a1 + 16))
  {
    (v37[2])(v39, &v114[v37[9] * v36], v13);
    if ((v37[11])(v39, v13) == v41)
    {
      (*v103)(v39, v13);
      v42 = v107;
      v43 = (*v102)(v39, v107);
      if (v43 == v101)
      {
        result = (*v95)(v39, v42);
        if (*(v39 + 1))
        {
          v111 = *(v39 + 1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F18, &qword_20DD94348);
          v110 = *(v38 + 72);
          v44 = (*(v38 + 80) + 32) & ~*(v38 + 80);
          v45 = swift_allocObject();
          *(v45 + 1) = v84;
          v98 = v45;
          v46 = &v45[v44];
          v47 = sub_20DD644E4();
          v48 = *(v47 - 8);
          v49 = *(v48 + 104);
          v50 = v48 + 104;
          v49(v46, v92, v47);
          v51 = *(v38 + 104);
          v51(v46, v99, v109);
          v52 = v110;
          v90 = v47;
          v53 = v47;
          v54 = v109;
          v89 = v49;
          v88 = v50;
          v49(&v46[v110], v86, v53);
          v87 = v51;
          v51(&v46[v52], v99, v54);
          v55 = v111[2];
          v41 = v108;
          if (v55 == 1)
          {
            v56 = v116;
            sub_20DA53024(v111, v116);
            result = (*v83)(v56, 1, v54);
            if (result == 1)
            {
              goto LABEL_52;
            }

            v93 = sub_20DA03164(&qword_27C843F28, MEMORY[0x277D16AB8]);
            v57 = sub_20DD64E64();
            a1 = v91;
            v37 = v118;
            if (v57 & 1) != 0 || (sub_20DD64E64())
            {

              (*v105)(v56, v54);
LABEL_32:

              v85 = 2;
LABEL_33:
              v38 = v104;
              v40 = v97;
              goto LABEL_17;
            }

            (*v105)(v56, v54);
            v59 = v111;
          }

          else
          {
            a1 = v91;
            v37 = v118;
            if (!v55)
            {

              swift_setDeallocating();
              v85 = 2;
              swift_arrayDestroy();
              result = swift_deallocClassInstance();
              goto LABEL_33;
            }

            v58 = v98;
            v59 = v111;
            LODWORD(v93) = sub_20DA02BA4(v98, v111);
            swift_setDeallocating();
            v60 = v58[2];
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (v93)
            {
              goto LABEL_32;
            }
          }

          v61 = v120;
          v89(v120, v92, v90);
          v87(v61, v99, v54);
          if (v59[2] && (v62 = v59[5], sub_20DA03164(&qword_27C843F20, MEMORY[0x277D16AB8]), v63 = sub_20DD64E24(), v64 = -1 << *(v59 + 32), v65 = v63 & ~v64, v98 = (v59 + 7), ((*(v59 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v65) & 1) != 0))
          {
            v93 = ~v64;
            v66 = *v100;
            while (1)
            {
              v67 = v121;
              v66(v121, v59[6] + v65 * v110, v54);
              sub_20DA03164(&qword_27C843F28, MEMORY[0x277D16AB8]);
              v68 = sub_20DD64E64();
              v69 = *v105;
              (*v105)(v67, v54);
              if (v68)
              {
                break;
              }

              v65 = (v65 + 1) & v93;
              v59 = v111;
              if (((*&v98[(v65 >> 3) & 0xFFFFFFFFFFFFFF8] >> v65) & 1) == 0)
              {
                goto LABEL_40;
              }
            }

            result = (v69)(v120, v54);
            v85 = 0;
          }

          else
          {
LABEL_40:
            v98 = *v105;
            (v98)(v120, v54);
            v70 = v119;
            v89(v119, v86, v90);
            v87(v70, v99, v54);
            if (v59[2] && (v71 = v111, v72 = v111[5], sub_20DA03164(&qword_27C843F20, MEMORY[0x277D16AB8]), v73 = sub_20DD64E24(), v74 = v71 + 7, v75 = -1 << *(v71 + 32), v76 = v73 & ~v75, ((*(v74 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) != 0))
            {
              v77 = v74;
              v78 = ~v75;
              v79 = *v100;
              while (1)
              {
                v80 = v121;
                v79(v121, v111[6] + v76 * v110, v54);
                sub_20DA03164(&qword_27C843F28, MEMORY[0x277D16AB8]);
                v81 = sub_20DD64E64();
                (v98)(v80, v54);
                if (v81)
                {
                  break;
                }

                v76 = (v76 + 1) & v78;
                if (((*(v77 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
                {
                  goto LABEL_45;
                }
              }

              result = (v98)(v119, v54);
              v85 = 1;
            }

            else
            {
LABEL_45:

              result = (v98)(v119, v54);
            }
          }

          a1 = v91;
          v38 = v104;
          v39 = v117;
          v40 = v97;
        }
      }

      else
      {
        result = (*v96)(v39, v42);
      }

      v41 = v108;
    }

    else
    {
      result = v40(v39, v13);
    }

LABEL_17:
    if (++v36 == v115)
    {

      return v85;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_20DA04448(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = sub_20DA53124(a1);
    if (v2 != 6)
    {
      return v2;
    }
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v2 = 6;
  while (v5)
  {
LABEL_11:
    if (v2 - 4 < 2)
    {
      goto LABEL_34;
    }

    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a1 + 48) + (v10 | (v8 << 6)));
    if (v2 == 6)
    {
      v2 = v11;
    }

    else
    {
      if ((v11 & 0xFE) == 4)
      {
LABEL_34:
        v2 = 6;
LABEL_35:

        return v2;
      }

      if (v2 == 3)
      {
        v2 = v11;
      }

      else if (v11 != 3)
      {
        if (v2)
        {
          if (v2 == 1)
          {
            v12 = 0xE700000000000000;
            v13 = 0x676E6970706F4DLL;
            if (v11)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v13 = 0xD000000000000013;
            v12 = 0x800000020DD97E80;
            if (v11)
            {
LABEL_21:
              if (v11 == 1)
              {
                v14 = 0xE700000000000000;
                v15 = 0x676E6970706F4DLL;
              }

              else
              {
                v15 = 0xD000000000000013;
                v14 = 0x800000020DD97E80;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v13 = 0x6E696D7575636156;
          v12 = 0xE900000000000067;
          if (v11)
          {
            goto LABEL_21;
          }
        }

        v15 = 0x6E696D7575636156;
        v14 = 0xE900000000000067;
LABEL_26:
        if (v13 == v15 && v12 == v14)
        {
        }

        else
        {
          v16 = sub_20DD65974();

          if (v16)
          {
            v2 = v2;
          }

          else
          {
            v2 = 3;
          }
        }
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      goto LABEL_35;
    }

    v5 = *(a1 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA04690(uint64_t a1)
{
  v2 = _s21AccessoryCommandTupleVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DA046EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20DA03214(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t _s19RVCActionStringTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 < 2)
  {
    v9 = 0;
  }

  if (v9 >= 3)
  {
    return v9 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t _s19RVCActionStringTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_20DA04890(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 3;
  v3 = v1 - 3;
  if (!v2)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_20DA048B0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_20DA048D4()
{
  result = qword_27C843F40;
  if (!qword_27C843F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C843F40);
  }

  return result;
}

uint64_t _s19RVCActionStringTypeO12CleaningTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19RVCActionStringTypeO12CleaningTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20DA04A8C()
{
  result = qword_27C843F48;
  if (!qword_27C843F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C843F48);
  }

  return result;
}

uint64_t sub_20DA04AE0()
{
  v0 = sub_20DD658B4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t static HFProgrammableSwitchServiceItem.supportedServiceTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD93A70;
  v1 = *MEMORY[0x277CD0F00];
  *(inited + 32) = sub_20DD64EB4();
  *(inited + 40) = v2;
  v3 = sub_20D9EE93C(inited);
  swift_setDeallocating();
  sub_20DA057B4(inited + 32);
  return v3;
}

uint64_t HFProgrammableSwitchServiceItem._subclass_update(options:)(uint64_t a1)
{
  result = sub_20DD651C4();
  if (a1)
  {
    v4 = result;
    v5 = sub_20DD64DB4();
    v6 = [v1 performStandardUpdateWithCharacteristicTypes:v4 options:v5];

    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v11[4] = sub_20DA05808;
    v11[5] = v7;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_20DA055A4;
    v11[3] = &block_descriptor_1;
    v8 = _Block_copy(v11);
    v9 = v1;

    v10 = [v6 flatMap_];

    _Block_release(v8);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20DA04DF0(void *a1, void *a2)
{
  v3 = [a1 standardResults];
  v4 = sub_20DD64DC4();

  v5 = [a2 home];
  if (!v5)
  {
    v12 = objc_allocWithZone(HFItemUpdateOutcome);
    v13 = sub_20DD64DB4();
    v14 = [v12 initWithResults_];

    v15 = [objc_opt_self() futureWithResult_];
    v16 = [v15 asGeneric];

    return v16;
  }

  v6 = v5;
  if ([v5 hf_currentUserIsAdministrator])
  {
    v7 = [a2 service];
    v8 = [v7 hf_isProgrammableSwitchConfigured];

    if ((v8 & 1) == 0)
    {
      *&v52 = @"longErrorDescription";
      type metadata accessor for HFItemResultKey(0);
      sub_20DA0583C();
      v9 = @"longErrorDescription";
      sub_20DD65684();
      if (*(v4 + 16) && (v10 = sub_20D9CB264(v54), (v11 & 1) != 0))
      {
        sub_20D9D7174(*(v4 + 56) + 32 * v10, &v52);
        sub_20D9D4298(v54);
        sub_20D9F8608(&v52);
      }

      else
      {
        sub_20D9D4298(v54);
        v52 = 0u;
        v53 = 0u;
        sub_20D9F8608(&v52);
        *&v52 = v9;
        v18 = v9;
        sub_20DD65684();
        v19 = sub_20DD64E74();
        v20 = HFLocalizedString(v19);

        v21 = sub_20DD64EB4();
        v23 = v22;

        *(&v53 + 1) = MEMORY[0x277D837D0];
        *&v52 = v21;
        *(&v52 + 1) = v23;
        sub_20D9D77C8(&v52, v51);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_20D9D0DFC(v51, v54, isUniquelyReferenced_nonNull_native);
        sub_20D9D4298(v54);
      }
    }
  }

  if ([v6 hf_remoteAccessState] != 3)
  {
    *&v52 = @"longErrorDescription";
    type metadata accessor for HFItemResultKey(0);
    sub_20DA0583C();
    v25 = @"longErrorDescription";
    sub_20DD65684();
    [v6 hf_remoteAccessState];
    v26 = sub_20DD64E74();
    v27 = HFLocalizedString(v26);

    v28 = sub_20DD64EB4();
    v30 = v29;

    *(&v53 + 1) = MEMORY[0x277D837D0];
    *&v52 = v28;
    *(&v52 + 1) = v30;
    sub_20D9D77C8(&v52, v51);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0DFC(v51, v54, v31);
    sub_20D9D4298(v54);
    *&v52 = @"badge";
    v32 = @"badge";
    sub_20DD65684();
    v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v34 = sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
    *(&v53 + 1) = v34;
    *&v52 = v33;
    sub_20D9D77C8(&v52, v51);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0DFC(v51, v54, v35);
    sub_20D9D4298(v54);
    *&v52 = @"descriptionBadge";
    v36 = @"descriptionBadge";
    sub_20DD65684();
    v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    *(&v53 + 1) = v34;
    *&v52 = v37;
    sub_20D9D77C8(&v52, v51);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0DFC(v51, v54, v38);
    sub_20D9D4298(v54);
  }

  type metadata accessor for HFItemResultKey(0);
  sub_20DA0583C();
  v39 = @"dependentHomeKitClasses";
  sub_20DD65684();
  if (!*(v4 + 16) || (v40 = sub_20D9CB264(v54), (v41 & 1) == 0))
  {
    sub_20D9D4298(v54);
LABEL_17:
    v42 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
    goto LABEL_18;
  }

  sub_20D9D7174(*(v4 + 56) + 32 * v40, v51);
  sub_20D9D4298(v54);
  sub_20D9D7510(0, &qword_27C8439F0, 0x277CBEB98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  [@"dependentHomeKitClasses" mutableCopy];

  sub_20DD654E4();
  swift_unknownObjectRelease();
  sub_20D9D7510(0, &qword_27C843F68, 0x277CBEB58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v42 = v54[0];
LABEL_18:
  v54[0] = sub_20D9D7510(0, &qword_27C843F58, 0x277CD1EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F60, &unk_20DD944B0);
  [v42 addObject_];
  swift_unknownObjectRelease();
  *&v52 = v39;
  v43 = v39;
  sub_20DD65684();
  *(&v53 + 1) = sub_20D9D7510(0, &qword_27C843F68, 0x277CBEB58);
  *&v52 = v42;
  sub_20D9D77C8(&v52, v51);
  v44 = v42;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0DFC(v51, v54, v45);
  sub_20D9D4298(v54);
  v46 = objc_allocWithZone(HFItemUpdateOutcome);
  v47 = sub_20DD64DB4();
  v48 = [v46 initWithResults_];

  v49 = [objc_opt_self() futureWithResult_];
  v50 = [v49 asGeneric];

  return v50;
}

id sub_20DA055A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

id HFProgrammableSwitchServiceItem.init(valueSource:service:)(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValueSource:a1 service:a2];
  swift_unknownObjectRelease();

  return v3;
}

{
  v5.super_class = HFProgrammableSwitchServiceItem;
  v3 = objc_msgSendSuper2(&v5, sel_initWithValueSource_service_, a1, a2);
  swift_unknownObjectRelease();

  return v3;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20DA0583C()
{
  result = qword_27C842890;
  if (!qword_27C842890)
  {
    type metadata accessor for HFItemResultKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C842890);
  }

  return result;
}

uint64_t sub_20DA05894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_20DA48C3C(a1, a2, a3, a4);
  if (result == 2)
  {

    return sub_20DA06210(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_20DA05914(void *a1, void *a2)
{
  result = sub_20DA48DA0(a1, a2);
  if (result != 2)
  {
    return result;
  }

  type metadata accessor for DashboardStaticSectionListItem();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___HFDashboardStaticSectionListItem_sectionType);
  }

  else
  {
    v4 = 3;
  }

  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR___HFDashboardStaticSectionListItem_sectionType);
    if (v4 != 3)
    {
      goto LABEL_11;
    }

LABEL_9:
    if (v6 == 3)
    {
      return 2;
    }

    goto LABEL_11;
  }

  v6 = 3;
  if (v4 == 3)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (v4 == 3)
  {
    if (v6 != 3)
    {
      return v4 != 3;
    }

    return 2;
  }

  if (v6 == 3)
  {
    return v4 != 3;
  }

  v7 = v4 == v6;
  v8 = v4 < v6;
  if (v7)
  {
    return 2;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_20DA059FC(void *a1, void *a2)
{
  result = sub_20DA48DA0(a1, a2);
  if (result == 2)
  {
    type metadata accessor for DashboardStaticSectionListItem();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR___HFDashboardStaticSectionListItem_sectionType);
    }

    else
    {
      v4 = 3;
    }

    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR___HFDashboardStaticSectionListItem_sectionType);
    }

    else
    {
      v6 = 3;
    }

    return sub_20DA061A4(v4, v6);
  }

  return result;
}

uint64_t sub_20DA05AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v11 = *(v10 + 16);
  v12 = v11 == 0;
  if (v11)
  {
    v13 = (v10 + 40);
    do
    {
      if (*(v13 - 1) == a1 && *v13 == a2)
      {
        break;
      }

      if (sub_20DD65974())
      {
        break;
      }

      v13 += 2;
      v12 = --v11 == 0;
    }

    while (v11);
  }

  v15 = *(v10 + 16);
  v16 = v15 == 0;
  if (v15)
  {
    v17 = (v10 + 40);
    do
    {
      if (*(v17 - 1) == a3 && *v17 == a4)
      {
        break;
      }

      if (sub_20DD65974())
      {
        break;
      }

      v17 += 2;
      v16 = --v15 == 0;
    }

    while (v15);
  }

  if (a1 == 0x655373656E656373 && a2 == 0xED00006E6F697463 || (sub_20DD65974() & 1) != 0)
  {
    v19 = 1;
  }

  else if (a1 == 0x53736172656D6163 && a2 == 0xEE006E6F69746365 || (sub_20DD65974() & 1) != 0)
  {
    v19 = 0;
  }

  else
  {
    v19 = 2;
    if (a1 != 0xD000000000000010 || 0x800000020DD98860 != a2)
    {
      if (sub_20DD65974())
      {
        v19 = 2;
      }

      else
      {
        v19 = 3;
      }
    }
  }

  if (a3 == 0x655373656E656373 && a4 == 0xED00006E6F697463 || (sub_20DD65974() & 1) != 0)
  {
    v20 = 1;
  }

  else if (a3 == 0x53736172656D6163 && a4 == 0xEE006E6F69746365 || (sub_20DD65974() & 1) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = 2;
    if (a3 != 0xD000000000000010 || 0x800000020DD98860 != a4)
    {
      if (sub_20DD65974())
      {
        v20 = 2;
      }

      else
      {
        v20 = 3;
      }
    }
  }

  v21 = v19 < v20;
  if (v20 == 3)
  {
    v21 = 2;
  }

  if (v19 == 3)
  {
    v22 = 2;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = v20 == 3;
  }

  else
  {
    v22 = v19 != 3;
    v23 = 2;
  }

  if (v12)
  {
    return v22;
  }

  else
  {
    return v23;
  }
}

uint64_t sub_20DA05DBC(void *a1, void *a2)
{
  v5 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v6 = *(v2 + v5);

  v7 = [a1 uuidString];
  v8 = sub_20DD64EB4();
  v10 = v9;

  v11 = *(v6 + 16);
  v12 = v11 == 0;
  if (v11)
  {
    v13 = (v6 + 40);
    do
    {
      if (*(v13 - 1) == v8 && *v13 == v10)
      {
        break;
      }

      if (sub_20DD65974())
      {
        break;
      }

      v13 += 2;
      v12 = --v11 == 0;
    }

    while (v11);
  }

  v15 = *(v2 + v5);

  v16 = [a2 uuidString];
  v17 = sub_20DD64EB4();
  v19 = v18;

  v20 = *(v15 + 16);
  v21 = v20 == 0;
  if (v20)
  {
    v22 = (v15 + 40);
    do
    {
      if (*(v22 - 1) == v17 && *v22 == v19)
      {
        break;
      }

      if (sub_20DD65974())
      {
        break;
      }

      v22 += 2;
      v21 = --v20 == 0;
    }

    while (v20);
  }

  type metadata accessor for DashboardStaticSectionListItem();
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v25 = *(v24 + OBJC_IVAR___HFDashboardStaticSectionListItem_sectionType);
  }

  else
  {
    v25 = 3;
  }

  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = *(v26 + OBJC_IVAR___HFDashboardStaticSectionListItem_sectionType);
    if (v12)
    {
      goto LABEL_22;
    }

LABEL_27:
    v29 = v27 == 3;
    if (v21)
    {
      return v29;
    }

    else
    {
      return 2;
    }
  }

  v27 = 3;
  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (!v21)
  {
    return v25 != 3;
  }

  result = 2;
  if (v25 != 3 && v27 != 3)
  {
    return v25 < v27;
  }

  return result;
}

id DashboardReorderableItemList.__allocating_init(applicationDataContainer:category:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_20DD64E74();

  v5 = [v3 initWithApplicationDataContainer:a1 category:v4];
  swift_unknownObjectRelease();

  return v5;
}

id DashboardReorderableItemList.init(applicationDataContainer:category:)(uint64_t a1)
{
  v3 = sub_20DD64E74();

  v6.receiver = v1;
  v6.super_class = type metadata accessor for DashboardReorderableItemList();
  v4 = objc_msgSendSuper2(&v6, sel_initWithApplicationDataContainer_category_, a1, v3);

  swift_unknownObjectRelease();
  return v4;
}

id DashboardReorderableItemList.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardReorderableItemList();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20DA061A4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 3 && a2 == 3)
  {
    return 2;
  }

  if (a1 == 3)
  {
    if (a2 == 3)
    {
      return 2;
    }

    return a1 != 3;
  }

  if (a2 == 3)
  {
    return a1 != 3;
  }

  if (a1 == a2)
  {
    return 2;
  }

  else
  {
    return a1 < a2;
  }
}

uint64_t sub_20DA06210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 0x655373656E656373 && a2 == 0xED00006E6F697463 || (sub_20DD65974() & 1) != 0)
  {
    v8 = 1;
  }

  else if (a1 == 0x53736172656D6163 && a2 == 0xEE006E6F69746365 || (sub_20DD65974() & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
    if (a1 != 0xD000000000000010 || 0x800000020DD98860 != a2)
    {
      if (sub_20DD65974())
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }
    }
  }

  if (a3 == 0x655373656E656373 && a4 == 0xED00006E6F697463 || (sub_20DD65974() & 1) != 0)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (a3 == 0x53736172656D6163 && a4 == 0xEE006E6F69746365 || (sub_20DD65974() & 1) != 0)
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (a3 == 0xD000000000000010 && 0x800000020DD98860 == a4)
  {
    v9 = 2;
LABEL_9:
    if (v8 == 3)
    {
      return 0;
    }

    goto LABEL_33;
  }

  v11 = sub_20DD65974();
  if (v8 == 3 && (v11 & 1) == 0)
  {
    return 2;
  }

  if (v8 == 3)
  {
    if (v11)
    {
      return 0;
    }

    return 2;
  }

  if ((v11 & 1) == 0)
  {
    return 1;
  }

  v9 = 2;
LABEL_33:
  v12 = v9 == v8;
  v13 = v9 > v8;
  if (v12)
  {
    return 2;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_20DA06504(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 < a3;
  if (a1 == a3)
  {
    v4 = 2;
  }

  if (a4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (a4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

id ActionBuilderContainer.actionBuilder(actingOn:)(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v33 = sub_20DD63744();
  v5 = *(v33 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v31 = &v29 - v9;
  v10 = (*(a3 + 8))(a2, a3);
  v11 = v10;
  if (v10 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v13 = 0;
    v35 = v11 & 0xFFFFFFFFFFFFFF8;
    v36 = v11 & 0xC000000000000001;
    v30 = v5 + 1;
    while (1)
    {
      if (v36)
      {
        v14 = MEMORY[0x20F326680](v13, v11);
      }

      else
      {
        if (v13 >= *(v35 + 16))
        {
          goto LABEL_14;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v5 = v14;
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v16 = [objc_opt_self() asCharacteristicWriteAction_];
      if (v16)
      {
        v17 = i;
        v18 = v16;
        v19 = [v16 characteristic];
        v20 = [v19 uniqueIdentifier];

        v21 = v31;
        sub_20DD63714();

        v22 = [v34 uniqueIdentifier];
        v23 = v32;
        sub_20DD63714();

        LOBYTE(v22) = sub_20DD63704();
        v24 = *v30;
        v25 = v23;
        v26 = v33;
        (*v30)(v25, v33);
        v24(v21, v26);
        i = v17;
        if (v22)
        {
          goto LABEL_17;
        }
      }

      ++v13;
      if (v15 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v5 = 0;
LABEL_17:

  v27 = [objc_opt_self() asCharacteristicWriteAction_];

  return v27;
}

uint64_t ActionBuilderContainer.actionBuilders(actingOn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a1;
  v47 = a2;
  v45 = sub_20DD63744();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = (*(a4 + 8))(a3, a4);
  v50 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
LABEL_20:
    v32 = v12;
    v13 = sub_20DD655B4();
    v12 = v32;
    v36 = v32;
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_21:
    v31 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = v12;
  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_3:
  v14 = 0;
  v39 = v12 & 0xFFFFFFFFFFFFFF8;
  v40 = v12 & 0xC000000000000001;
  v37 = v13;
  v38 = v12 + 32;
  v43 = v47 + 16;
  v15 = (v6 + 8);
  while (v40)
  {
    v16 = MEMORY[0x20F326680](v14, v36);
    v17 = __OFADD__(v14, 1);
    v18 = v14 + 1;
    if (v17)
    {
      goto LABEL_16;
    }

LABEL_9:
    v41 = v16;
    v42 = v18;
    v12 = sub_20DA07D54(v16);
    v19 = (v12 + 40);
    v48 = -*(v12 + 16);
    v49 = v12;
    v20 = -1;
    do
    {
      if (v48 + v20 == -1)
      {

        goto LABEL_5;
      }

      if (++v20 >= *(v49 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v21 = v19 + 2;
      v23 = *(v19 - 1);
      v22 = *v19;
      ObjectType = swift_getObjectType();
      v25 = *(v22 + 16);
      swift_unknownObjectRetain();
      v25(ObjectType, v22);
      v26 = swift_getObjectType();
      v27 = v44;
      (*(v47 + 16))(v26);
      v28 = sub_20DD63704();
      swift_unknownObjectRelease();
      v29 = *v15;
      v30 = v27;
      v6 = v45;
      (*v15)(v30, v45);
      v12 = (v29)(v11, v6);
      v19 = v21;
    }

    while ((v28 & 1) == 0);

    sub_20DD65754();
    v6 = *(v50 + 16);
    sub_20DD65784();
    sub_20DD65794();
    v12 = sub_20DD65764();
LABEL_5:
    v14 = v42;
    if (v42 == v37)
    {
      goto LABEL_17;
    }
  }

  if (v14 >= *(v39 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = *(v38 + 8 * v14);
  v17 = __OFADD__(v14, 1);
  v18 = v14 + 1;
  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v31 = v50;
LABEL_22:

  v33 = sub_20D9F919C(v31);

  return v33;
}

uint64_t ActionBuilderContainer.actionBuilders(actingOn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v42 = sub_20DD63744();
  v5 = *(v42 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v42);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = (*(a3 + 8))(a2, a3);
  v46 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
LABEL_20:
    v30 = v12;
    v13 = sub_20DD655B4();
    v12 = v30;
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_21:
    v29 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_3:
  v14 = 0;
  v41 = OBJC_IVAR___HFMatterAccessoryRepresentable_accessory;
  v37 = v12 & 0xFFFFFFFFFFFFFF8;
  v38 = v12 & 0xC000000000000001;
  v34 = v12;
  v35 = v13;
  v36 = v12 + 32;
  v15 = (v5 + 8);
  while (v38)
  {
    v16 = MEMORY[0x20F326680](v14, v34);
    v17 = __OFADD__(v14, 1);
    v18 = v14 + 1;
    if (v17)
    {
      goto LABEL_16;
    }

LABEL_9:
    v39 = v16;
    v40 = v18;
    v12 = sub_20DA07D54(v16);
    v19 = (v12 + 40);
    v44 = -*(v12 + 16);
    v45 = v12;
    v20 = -1;
    do
    {
      if (v44 + v20 == -1)
      {

        goto LABEL_5;
      }

      if (++v20 >= *(v45 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v21 = v19 + 2;
      v23 = *(v19 - 1);
      v22 = *v19;
      ObjectType = swift_getObjectType();
      v5 = *(v22 + 16);
      swift_unknownObjectRetain();
      (v5)(ObjectType, v22);
      v25 = [*(v43 + v41) uniqueIdentifier];
      sub_20DD63714();

      LOBYTE(v25) = sub_20DD63704();
      swift_unknownObjectRelease();
      v26 = *v15;
      v27 = v42;
      (*v15)(v9, v42);
      v12 = (v26)(v11, v27);
      v19 = v21;
    }

    while ((v25 & 1) == 0);

    sub_20DD65754();
    v28 = *(v46 + 16);
    sub_20DD65784();
    sub_20DD65794();
    v12 = sub_20DD65764();
LABEL_5:
    v14 = v40;
    if (v40 == v35)
    {
      goto LABEL_17;
    }
  }

  if (v14 >= *(v37 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = *(v36 + 8 * v14);
  v17 = __OFADD__(v14, 1);
  v18 = v14 + 1;
  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v29 = v46;
LABEL_22:

  v31 = sub_20D9F919C(v29);

  return v31;
}

Swift::OpaquePointer_optional __swiftcall ActionBuilderContainer.matterAttributeValues(for:)(HMAccessory *a1)
{
  v10 = (*(v1 + 64))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843C50, &unk_20DD941C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843C58, &unk_20DD94500);
  if (swift_dynamicCast())
  {
    sub_20D9FF538(v8, v11);
    v3 = v12;
    v4 = v13;
    __swift_project_boxed_opaque_existential_0(v11, v12);
    v5 = (*(v4 + 8))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v11);
    v7 = v5;
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_20D9D76EC(v8, &unk_27C843F70, &unk_20DD941B0);
    v7 = sub_20D9D4D68(MEMORY[0x277D84F90]);
  }

  result.value._rawValue = v7;
  result.is_nil = v6;
  return result;
}

Swift::Void __swiftcall ActionSetBuilderContainer.set(included:actionSet:)(Swift::Bool included, HMActionSet actionSet)
{
  if (included)
  {
    (*(v2 + 8))(actionSet.super.isa);
  }

  else
  {
    (*(v2 + 16))(actionSet.super.isa);
  }
}

id HFTriggerActionSetsBuilder.mediaActionBuilder.getter()
{
  v1 = [v0 anonymousActionSetBuilder];
  v2 = [v1 mediaAction];

  return v2;
}

uint64_t HFTriggerActionSetsBuilder.naturalLightActionBuilders.getter()
{
  v1 = [v0 anonymousActionSetBuilder];
  v2 = [v1 naturalLightingActions];

  sub_20D9D7510(0, &qword_27C843F80, off_277DEFE08);
  v3 = sub_20DD64FD4();

  return v3;
}

uint64_t HFTriggerActionSetsBuilder.anonymousActionSetReference.getter()
{
  v1 = [v0 anonymousActionSetBuilder];
  v2 = swift_dynamicCastObjCProtocolUnconditional();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F88, &qword_20DD94510);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA071E8()
{
  v1 = [*v0 anonymousActionSetBuilder];
  v2 = [v1 naturalLightingActions];

  sub_20D9D7510(0, &qword_27C843F80, off_277DEFE08);
  v3 = sub_20DD64FD4();

  return v3;
}

id sub_20DA0726C()
{
  v1 = [*v0 anonymousActionSetBuilder];
  v2 = [v1 mediaAction];

  return v2;
}

uint64_t sub_20DA07300()
{
  v1 = [*v0 anonymousActionSetBuilder];
  v2 = swift_dynamicCastObjCProtocolUnconditional();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F88, &qword_20DD94510);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    return v2;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall HFTriggerActionSetsBuilder.contains(actionSet:)(HMActionSet actionSet)
{
  v3 = [v1 namedActionSets];
  sub_20D9D7510(0, &unk_27C843F90, off_277DEF3C0);
  v4 = sub_20DD64FD4();

  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F326680](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v12 = v7;
      v10 = sub_20DA0751C(&v12, actionSet.super.isa);

      if (v10)
      {

        return 1;
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_20DA0751C(void **a1, void *a2)
{
  v4 = sub_20DD63744();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A68, &unk_20DD940F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  v21 = *a1;
  v22 = [a2 uniqueIdentifier];
  sub_20DD63714();

  v39 = v5;
  v23 = *(v5 + 56);
  v24 = 1;
  v23(v20, 0, 1, v4);
  v25 = [v21 actionSet];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 uniqueIdentifier];

    sub_20DD63714();
    v24 = 0;
  }

  v23(v18, v24, 1, v4);
  v28 = *(v8 + 48);
  sub_20D9C90A8(v20, v11);
  sub_20D9C90A8(v18, &v11[v28]);
  v29 = *(v39 + 48);
  if (v29(v11, 1, v4) != 1)
  {
    v31 = v38;
    sub_20D9C90A8(v11, v38);
    if (v29(&v11[v28], 1, v4) != 1)
    {
      v32 = v39;
      v33 = v37;
      (*(v39 + 32))(v37, &v11[v28], v4);
      sub_20DA08490();
      v30 = sub_20DD64E64();
      v34 = *(v32 + 8);
      v34(v33, v4);
      sub_20D9D76EC(v18, &unk_27C843A70, &qword_20DD94260);
      sub_20D9D76EC(v20, &unk_27C843A70, &qword_20DD94260);
      v34(v38, v4);
      sub_20D9D76EC(v11, &unk_27C843A70, &qword_20DD94260);
      return v30 & 1;
    }

    sub_20D9D76EC(v18, &unk_27C843A70, &qword_20DD94260);
    sub_20D9D76EC(v20, &unk_27C843A70, &qword_20DD94260);
    (*(v39 + 8))(v31, v4);
    goto LABEL_8;
  }

  sub_20D9D76EC(v18, &unk_27C843A70, &qword_20DD94260);
  sub_20D9D76EC(v20, &unk_27C843A70, &qword_20DD94260);
  if (v29(&v11[v28], 1, v4) != 1)
  {
LABEL_8:
    sub_20D9D76EC(v11, &qword_27C843A68, &unk_20DD940F0);
    v30 = 0;
    return v30 & 1;
  }

  sub_20D9D76EC(v11, &unk_27C843A70, &qword_20DD94260);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_20DA07A0C(SEL *a1, unint64_t *a2, uint64_t *a3)
{
  v6 = [v3 *a1];
  sub_20D9D7510(0, a2, a3);
  v7 = sub_20DD64FD4();

  return v7;
}

id HFActionSetBuilder.mediaActionBuilder.getter()
{
  v1 = [v0 mediaAction];

  return v1;
}

id HFActionSetBuilder.anonymousActionSetReference.getter()
{
  v1 = swift_dynamicCastObjCProtocolUnconditional();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F88, &qword_20DD94510);
  result = swift_dynamicCastMetatype();
  if (result)
  {

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20DA07BBC(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, uint64_t *a5)
{
  v8 = [*v5 *a3];
  sub_20D9D7510(0, a4, a5);
  v9 = sub_20DD64FD4();

  return v9;
}

id sub_20DA07C44()
{
  v1 = [*v0 mediaAction];

  return v1;
}

id sub_20DA07CB8()
{
  v1 = *v0;
  v3 = swift_dynamicCastObjCProtocolUnconditional();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843F88, &qword_20DD94510);
  result = swift_dynamicCastMetatype();
  if (result)
  {

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20DA07D54(void *a1)
{
  v2 = sub_20DD64C44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    v10 = [v8 characteristic];
    v11 = [v10 service];

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843FB0, &unk_20DD95650);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_20DD93A70;
      *(v12 + 32) = v11;
      *(v12 + 40) = &protocol witness table for HMService;

      return v12;
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v53 = a1;
      v16 = [v15 mediaProfiles];
      v17 = sub_20DD651E4();

      v18 = v17 + 56;
      v19 = 1 << *(v17 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(v17 + 56);
      v22 = (v19 + 63) >> 6;
      v58 = (v3 + 8);

      v23 = 0;
      v54 = MEMORY[0x277D84F90];
      *&v24 = 136315138;
      v55 = v24;
      v56 = v17;
      v57 = v6;
      for (i = v17 + 56; v21; *&v39[2 * v38 + 4] = v52)
      {
LABEL_15:
        while (1)
        {
          v26 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          sub_20D9D7288(*(v17 + 48) + 40 * (v26 | (v23 << 6)), v62);
          sub_20D9D7288(v62, v61);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438F0, &qword_20DD93F90);
          if (swift_dynamicCast())
          {
            break;
          }

          sub_20DD64BF4();
          sub_20D9D7288(v62, v61);
          v27 = sub_20DD64C24();
          v28 = sub_20DD65364();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            *&v60 = v30;
            *v29 = v55;
            v31 = sub_20DD65654();
            v32 = v2;
            v34 = v33;
            sub_20D9D4298(v61);
            v35 = sub_20D9E0B38(v31, v34, &v60);
            v2 = v32;
            v6 = v57;

            *(v29 + 4) = v35;
            _os_log_impl(&dword_20D9BF000, v27, v28, "Failed to cast mediaProfileContainer %s to AccessoryElement. This may lead to undefined behavior", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v30);
            v36 = v30;
            v17 = v56;
            MEMORY[0x20F327D10](v36, -1, -1);
            MEMORY[0x20F327D10](v29, -1, -1);
          }

          else
          {

            sub_20D9D4298(v61);
          }

          (*v58)(v6, v2);
          result = sub_20D9D4298(v62);
          v18 = i;
          if (!v21)
          {
            goto LABEL_11;
          }
        }

        v52 = v60;
        sub_20D9D4298(v62);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_20D9E0398(0, v54[2] + 1, 1, v54);
          v54 = result;
        }

        v38 = v54[2];
        v37 = v54[3];
        if (v38 >= v37 >> 1)
        {
          result = sub_20D9E0398((v37 > 1), v38 + 1, 1, v54);
          v54 = result;
        }

        v39 = v54;
        v54[2] = v38 + 1;
      }

LABEL_11:
      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v25 >= v22)
        {

          return v54;
        }

        v21 = *(v18 + 8 * v25);
        ++v23;
        if (v21)
        {
          v23 = v25;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        v41 = v40;
        v42 = a1;
        v43 = [v41 lightProfile];
        v44 = [v43 services];

        sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
        v45 = sub_20DD64FD4();

        v46 = sub_20DA0B284(v45);

        return v46;
      }

      else
      {
        objc_opt_self();
        v47 = swift_dynamicCastObjCClass();
        result = MEMORY[0x277D84F90];
        if (v47)
        {
          v48 = MEMORY[0x277D84F90];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FA0, &qword_20DD945D0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_20DD93A70;
          v50 = a1;
          *(inited + 32) = [v47 accessory];
          v51 = sub_20DA495F4(inited);
          swift_setDeallocating();
          sub_20D9D76EC(inited + 32, &qword_27C843FA8, &unk_20DD945D8);

          if (v51)
          {
            return v51;
          }

          else
          {
            return v48;
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_20DA08490()
{
  result = qword_280E02288;
  if (!qword_280E02288)
  {
    sub_20DD63744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02288);
  }

  return result;
}

uint64_t sub_20DA084EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20DA0850C, 0, 0);
}

uint64_t sub_20DA0850C()
{
  sub_20DD64BC4();
  v1 = sub_20DD64B94();
  v0[4] = v1;
  v2 = *(MEMORY[0x277D18268] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_20DA085C0;
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282172638](v5, v4, v1);
}

uint64_t sub_20DA085C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DA08718, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_20DA08718()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_20DA08794(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20DA087B4, 0, 0);
}

uint64_t sub_20DA087B4()
{
  sub_20DD64BC4();
  v1 = sub_20DD64B94();
  v0[4] = v1;
  v2 = *(MEMORY[0x277D18268] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_20DA08868;
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282172638](v5, v4, v1);
}

uint64_t sub_20DA08868(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DA08CD8, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t HFHomeEnergyManager.testingMode.getter()
{
  sub_20D9FF4D0(v0 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_utilityService, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FC0, &qword_20DD945E8);
  type metadata accessor for RealUtilityServices();
  v1 = swift_dynamicCast();
  if (v1)
  {
  }

  return v1 ^ 1u;
}

uint64_t dispatch thunk of UtilityServicing.allUtilitiesInRegion(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_20D9D7010;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RealUtilityServices.allUtilitiesInRegion(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 80);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20D9D77BC;

  return v10(a1, a2);
}

uint64_t sub_20DA08CE0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D50, &qword_20DD94250) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_20DD63744();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_20DD638F4();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_20DD63E94();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D58, &qword_20DD94258) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  sub_20DD650F4();
  v2[15] = sub_20DD650E4();
  v15 = sub_20DD65094();
  v2[16] = v15;
  v2[17] = v14;

  return MEMORY[0x2822009F8](sub_20DA08EFC, v15, v14);
}

uint64_t sub_20DA08EFC()
{
  v0[18] = sub_20DD63C84();
  v1 = sub_20DD63C64();
  v2 = sub_20DD63C04();

  if (*(v2 + 16) && (v3 = sub_20D9CB38C(v0[3]), (v4 & 1) != 0))
  {
    (*(v0[12] + 16))(v0[14], *(v2 + 56) + *(v0[12] + 72) * v3, v0[11]);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];

  (*(v8 + 56))(v6, v5, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    v10 = v0[14];
    v9 = v0[15];

    sub_20D9D76EC(v10, &qword_27C843D58, &qword_20DD94258);
    v11 = v0[2];
    sub_20DD64324();
    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[10];
    v15 = v0[7];
    v16 = v0[4];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[13];
    v20 = v0[14];
    v21 = v0[11];
    v22 = v0[12];
    v23 = v0[10];
    (*(v22 + 16))(v19, v20, v21);
    sub_20D9D76EC(v20, &qword_27C843D58, &qword_20DD94258);
    sub_20DD63E34();
    (*(v22 + 8))(v19, v21);
    v24 = *(MEMORY[0x277D151F8] + 4);
    v25 = swift_task_alloc();
    v0[19] = v25;
    *v25 = v0;
    v25[1] = sub_20DA09160;
    v26 = v0[10];

    return MEMORY[0x28216E688]();
  }
}

uint64_t sub_20DA09160(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 160) = a1;

  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 136);
  v8 = *(v2 + 128);

  return MEMORY[0x2822009F8](sub_20DA092EC, v8, v7);
}

uint64_t sub_20DA092EC()
{
  v1 = v0[20];
  v2 = v0[15];

  if (v1)
  {
    v3 = v0[20];
    v4 = v0[18];
    v5 = v0[7];
    v6 = sub_20DD63C64();
    v7 = [v3 uniqueIdentifier];
    sub_20DD63714();

    v8 = sub_20DD63C14();
    if (*(v8 + 16) && (v9 = sub_20D9CB38C(v0[7]), (v10 & 1) != 0))
    {
      v11 = v9;
      v12 = v0[6];
      v14 = v0[4];
      v13 = v0[5];
      v33 = v0[7];
      v34 = v0[2];
      v15 = *(v8 + 56);
      v16 = sub_20DD64354();
      v17 = *(v16 - 8);
      (*(v17 + 16))(v14, v15 + *(v17 + 72) * v11, v16);

      (*(v12 + 8))(v33, v13);

      (*(v17 + 56))(v14, 0, 1, v16);
      (*(v17 + 32))(v34, v14, v16);
    }

    else
    {
      v19 = v0[6];
      v18 = v0[7];
      v21 = v0[4];
      v20 = v0[5];
      v22 = v0[2];

      (*(v19 + 8))(v18, v20);
      v23 = sub_20DD64354();
      v24 = *(v23 - 8);
      (*(v24 + 56))(v21, 1, 1, v23);
      sub_20DD64324();

      if ((*(v24 + 48))(v21, 1, v23) != 1)
      {
        sub_20D9D76EC(v0[4], &qword_27C843D50, &qword_20DD94250);
      }
    }
  }

  else
  {
    v25 = v0[2];
    sub_20DD64324();
  }

  v27 = v0[13];
  v26 = v0[14];
  v28 = v0[10];
  v29 = v0[7];
  v30 = v0[4];

  v31 = v0[1];

  return v31();
}

id _sSo27HFServiceActionItemProviderC4HomeE013_createMatterbC03for4home16actionSetBuilderSo0abC0CSgSo11HMAccessoryC_So6HMHomeCSo08HFActionkL8Protocol_So06HFItemL0CyyXlGXctF_0(void *a1, void *a2, void *a3)
{
  v6 = sub_20DD63744();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_20DD63FE4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 hf_isMatterOnlyAccessory])
  {
    return 0;
  }

  sub_20DD65334();
  if (v13)
  {
    return 0;
  }

  v15 = [a2 uniqueIdentifier];
  sub_20DD63714();

  sub_20DD63FB4();
  v16 = type metadata accessor for MatterAccessoryRepresentable();
  v17 = objc_allocWithZone(v16);
  v18 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  v19 = sub_20DD64294();
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  v20 = &v17[OBJC_IVAR___HFMatterAccessoryRepresentable__tileInfo];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *&v17[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory] = a1;
  v33 = a2;
  v21 = *(v9 + 16);
  v21(&v17[OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath], v12, v8);
  v35.receiver = v17;
  v35.super_class = v16;
  v22 = a1;
  v23 = objc_msgSendSuper2(&v35, sel_init);
  (*(v9 + 8))(v12, v8);
  v24 = type metadata accessor for MatterAccessoryLikeItem();
  v25 = objc_allocWithZone(v24);
  v21(&v25[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath], &v23[OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath], v8);
  v26 = &v25[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider];
  *v26 = &unk_20DD94660;
  *(v26 + 1) = 0;
  *&v25[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable] = v23;
  *&v25[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder] = a3;
  v34.receiver = v25;
  v34.super_class = v24;
  v27 = v23;
  v28 = a3;
  v29 = objc_msgSendSuper2(&v34, sel_init);
  v30 = *&v29[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable];
  sub_20D9F18F4();

  v31 = objc_allocWithZone(HFServiceActionItem);
  v32 = [v31 initWithHome:v33 containingItem:v29];

  return v32;
}

uint64_t _sSo27HFServiceActionItemProviderC4HomeE015isMatterServicebC0_14forAccessoryIDSbSo0abC0C_10Foundation4UUIDVtF_0(void *a1)
{
  v2 = sub_20DD63744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 containingItem];
  type metadata accessor for MatterAccessoryLikeItem();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable);
    v10 = *&v9[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory];
    v11 = v9;
    v12 = [v10 uniqueIdentifier];
    sub_20DD63714();

    v13 = sub_20DD63704();
    (*(v3 + 8))(v6, v2);
  }

  else
  {

    v13 = 0;
  }

  return v13 & 1;
}

Swift::OpaquePointer_optional __swiftcall HFAbstractBaseActionSetBuilder.matterAttributeValues(for:)(HMAccessory *a1)
{
  v2 = sub_20DD63D64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 matterActionBuilders];
  if (v7)
  {

    v7 = sub_20DA09E0C();
    if (v7)
    {
      v9 = v7;
      v10 = MEMORY[0x277D84F90];
      v11 = sub_20D9D4D68(MEMORY[0x277D84F90]);
      v17 = v10;
      v18 = v11;
      sub_20DA09FE4(v9);

      v12 = v17;
      v13 = *(v17 + 16);
      if (v13)
      {
        v14 = 0;
        v15 = (v3 + 8);
        while (v14 < *(v12 + 16))
        {
          (*(v3 + 16))(v6, v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, v2);
          sub_20DA0A0D4(v6, &v18);
          ++v14;
          (*v15)(v6, v2);
          if (v13 == v14)
          {
            v11 = v18;
            goto LABEL_8;
          }
        }

        __break(1u);

        v7 = (*v15)(v6, v2);
        __break(1u);
      }

      else
      {
LABEL_8:

        v7 = v11;
      }
    }
  }

  result.value._rawValue = v7;
  result.is_nil = v8;
  return result;
}

uint64_t sub_20DA09E0C()
{
  v1 = [v0 matterActionBuilders];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_20DA0AF98();
  v3 = sub_20DD64FD4();

  v20 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F326680](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 accessory];
      if (v9)
      {
        v10 = v9;
        v11 = sub_20DD65334();
        v13 = v12;

        v14 = sub_20DD65334();
        if (v13)
        {
          if (v15)
          {
            goto LABEL_19;
          }
        }

        else if ((v15 & 1) == 0 && v11 == v14)
        {
LABEL_19:
          sub_20DD65754();
          v17 = *(v20 + 16);
          sub_20DD65784();
          sub_20DD65794();
          sub_20DD65764();
          goto LABEL_6;
        }
      }

      else
      {
        sub_20DD65334();
        if (v16)
        {
          goto LABEL_19;
        }
      }

LABEL_6:
      ++v5;
      if (v8 == i)
      {
        v18 = v20;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_27:

  return v18;
}

void sub_20DA09FE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x20F326680](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = HFMatterCommandActionBuilder.overridingAttributes()();
      if (v7)
      {
        sub_20DA12BF8(v7);
      }

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_20DA0A0D4(uint64_t a1, void *a2)
{
  v163 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FC8, &qword_20DD946C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v135 = v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v162 = v133 - v7;
  v167 = sub_20DD63CD4();
  v8 = *(v167 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v167);
  v171 = v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v147 = v133 - v12;
  v13 = sub_20DD638D4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v143 = v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v161 = v133 - v19;
  MEMORY[0x28223BE20](v18);
  v139 = v133 - v20;
  v21 = sub_20DD64504();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v169 = v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v160 = v133 - v27;
  MEMORY[0x28223BE20](v26);
  v138 = v133 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FD0, &qword_20DD946C8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v152 = v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v149 = v133 - v33;
  v148 = a1;
  v34 = sub_20DD63D54();
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = *(v34 + 64);
  v134 = v34 + 64;
  v140 = v34;
  v39 = 1 << *(v34 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v38;
  v42 = (v39 + 63) >> 6;
  v166 = (v22 + 16);
  v156 = (v22 + 32);
  v157 = (v14 + 16);
  v168 = (v14 + 32);
  v159 = (v8 + 8);
  v146 = (v14 + 56);
  v137 = v8;
  v136 = v8 + 16;
  v144 = (v14 + 48);
  v150 = v22;
  v153 = (v22 + 8);
  v133[2] = v14 + 40;
  v154 = v14;
  v141 = (v14 + 8);
  v142 = v42;
  v145 = v13;
  v170 = v21;
  while (1)
  {
    v164 = v36;
    v165 = v35;
    if (!v41)
    {
      break;
    }

    v47 = v37;
LABEL_16:
    v158 = (v41 - 1) & v41;
    v51 = __clz(__rbit64(v41)) | (v47 << 6);
    v52 = v140;
    v53 = v150;
    v54 = v138;
    v55 = v170;
    (*(v150 + 16))(v138, *(v140 + 48) + *(v150 + 72) * v51, v170);
    v56 = v154;
    v57 = v139;
    (*(v154 + 16))(v139, *(v52 + 56) + *(v154 + 72) * v51, v13);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FD8, &qword_20DD946D0);
    v59 = *(v58 + 48);
    v60 = *(v53 + 32);
    v50 = v152;
    v60(v152, v54, v55);
    (*(v56 + 32))(v50 + v59, v57, v13);
    (*(*(v58 - 8) + 56))(v50, 0, 1, v58);
LABEL_17:
    v61 = v149;
    sub_20DA0AEC0(v50, v149);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FD8, &qword_20DD946D0);
    if ((*(*(v62 - 8) + 48))(v61, 1, v62) == 1)
    {

      sub_20D9C2E38(v165);
      return sub_20D9C2E38(v164);
    }

    v63 = *(v62 + 48);
    v64 = v160;
    v65 = v170;
    (*v156)(v160, v61, v170);
    v66 = v161;
    v155 = *v168;
    v155(v161, v61 + v63, v13);
    v67 = v13;
    v68 = sub_20DD63D24();
    v69 = v147;
    sub_20DD63D44();
    sub_20DD63CB4();
    v70 = *v159;
    (*v159)(v69, v167);
    v151 = *v166;
    v151(v169, v64, v65);
    v71 = v162;
    (*v157)(v162, v66, v67);
    (*v146)(v71, 0, 1, v67);
    sub_20D9C2E38(v165);
    v72 = v163;
    v73 = *v163;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v172 = *v72;
    v75 = v172;
    *v72 = 0x8000000000000000;
    v77 = sub_20D9CB188(v68);
    v78 = v75[2];
    v79 = (v76 & 1) == 0;
    v80 = v78 + v79;
    if (__OFADD__(v78, v79))
    {
      goto LABEL_51;
    }

    v81 = v76;
    if (v75[3] >= v80)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20D9D2B2C();
        v75 = v172;
      }
    }

    else
    {
      sub_20D9CDE48(v80, isUniquelyReferenced_nonNull_native);
      v75 = v172;
      v82 = sub_20D9CB188(v68);
      if ((v81 & 1) != (v83 & 1))
      {
        goto LABEL_58;
      }

      v77 = v82;
    }

    v84 = v163;
    v85 = *v163;
    *v163 = v75;

    v86 = *v84;
    if ((v81 & 1) == 0)
    {
      v87 = sub_20D9D55E8(MEMORY[0x277D84F90]);
      v86[(v77 >> 6) + 8] |= 1 << v77;
      *(v86[6] + 2 * v77) = v68;
      *(v86[7] + 8 * v77) = v87;
      v88 = v86[2];
      v89 = __OFADD__(v88, 1);
      v90 = v88 + 1;
      if (v89)
      {
        goto LABEL_53;
      }

      v86[2] = v90;
    }

    v91 = v86[7];
    sub_20D9C2E38(v164);
    v92 = *(v91 + 8 * v77);
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v172 = *(v91 + 8 * v77);
    v94 = v172;
    *(v91 + 8 * v77) = 0x8000000000000000;
    v96 = sub_20D9CB608(v171);
    v97 = v94[2];
    v98 = (v95 & 1) == 0;
    v99 = v97 + v98;
    if (__OFADD__(v97, v98))
    {
      goto LABEL_52;
    }

    v100 = v95;
    if (v94[3] >= v99)
    {
      if ((v93 & 1) == 0)
      {
        sub_20D9D2B04();
        v94 = v172;
      }
    }

    else
    {
      sub_20D9CDA6C(v99, v93);
      v94 = v172;
      v101 = sub_20D9CB608(v171);
      if ((v100 & 1) != (v102 & 1))
      {
        goto LABEL_57;
      }

      v96 = v101;
    }

    v103 = *(v91 + 8 * v77);
    *(v91 + 8 * v77) = v94;

    v104 = *(v91 + 8 * v77);
    v105 = v162;
    if ((v100 & 1) == 0)
    {
      v106 = sub_20D9D57D0(MEMORY[0x277D84F90]);
      v104[(v96 >> 6) + 8] |= 1 << v96;
      (*(v137 + 16))(v104[6] + *(v137 + 72) * v96, v171, v167);
      *(v104[7] + 8 * v96) = v106;
      v107 = v104[2];
      v89 = __OFADD__(v107, 1);
      v108 = v107 + 1;
      if (v89)
      {
        goto LABEL_54;
      }

      v104[2] = v108;
    }

    v109 = (v104[7] + 8 * v96);
    v13 = v145;
    if ((*v144)(v105, 1, v145) == 1)
    {
      sub_20DA0AF30(v105);
      v43 = v135;
      v44 = v169;
      sub_20DA27740(v169, v135);
      sub_20DA0AF30(v43);
      v45 = *v153;
      v46 = v170;
      (*v153)(v44, v170);
      goto LABEL_5;
    }

    v155(v143, v105, v13);
    v110 = *v109;
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v172 = *v109;
    v112 = v172;
    *v109 = 0x8000000000000000;
    v113 = sub_20D9CB534(v169);
    v115 = v112[2];
    v116 = (v114 & 1) == 0;
    v89 = __OFADD__(v115, v116);
    v117 = v115 + v116;
    v118 = v153;
    if (v89)
    {
      goto LABEL_55;
    }

    v119 = v114;
    if (v112[3] < v117)
    {
      sub_20D9CD5C4(v117, v111);
      v113 = sub_20D9CB534(v169);
      if ((v119 & 1) != (v120 & 1))
      {
        goto LABEL_59;
      }

LABEL_42:
      v121 = v172;
      if ((v119 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    if (v111)
    {
      goto LABEL_42;
    }

    v123 = v113;
    sub_20D9D2AC8();
    v113 = v123;
    v121 = v172;
    if ((v119 & 1) == 0)
    {
LABEL_46:
      v165 = v70;
      v121[(v113 >> 6) + 8] |= 1 << v113;
      v124 = v150;
      v125 = v113;
      v126 = v13;
      v128 = v169;
      v127 = v170;
      v151(v121[6] + *(v150 + 72) * v113, v169, v170);
      v155((v121[7] + *(v154 + 72) * v125), v143, v126);
      v45 = *(v124 + 8);
      v45(v128, v127);
      v129 = v121[2];
      v89 = __OFADD__(v129, 1);
      v130 = v129 + 1;
      if (v89)
      {
        goto LABEL_56;
      }

      v121[2] = v130;
      v13 = v126;
      v70 = v165;
      goto LABEL_48;
    }

LABEL_43:
    (*(v154 + 40))(v121[7] + *(v154 + 72) * v113, v143, v13);
    v45 = *v118;
    (*v118)(v169, v170);
LABEL_48:
    v131 = *v109;
    *v109 = v121;

    v46 = v170;
LABEL_5:
    (v70)(v171, v167);
    (*v141)(v161, v13);
    v45(v160, v46);
    v36 = sub_20DA0AE58;
    v35 = sub_20DA0AE28;
    v42 = v142;
    v41 = v158;
  }

  if (v42 <= v37 + 1)
  {
    v48 = v37 + 1;
  }

  else
  {
    v48 = v42;
  }

  v49 = v48 - 1;
  v50 = v152;
  while (1)
  {
    v47 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v47 >= v42)
    {
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FD8, &qword_20DD946D0);
      (*(*(v122 - 8) + 56))(v50, 1, 1, v122);
      v158 = 0;
      v37 = v49;
      goto LABEL_17;
    }

    v41 = *(v134 + 8 * v47);
    ++v37;
    if (v41)
    {
      v37 = v47;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  sub_20DD659E4();
  __break(1u);
LABEL_58:
  sub_20DD659E4();
  __break(1u);
LABEL_59:
  result = sub_20DD659E4();
  __break(1u);
  return result;
}

unint64_t sub_20DA0AE28@<X0>(unint64_t *a1@<X8>)
{
  result = sub_20D9D55E8(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

unint64_t sub_20DA0AE58@<X0>(unint64_t *a1@<X8>)
{
  result = sub_20D9D57D0(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_20DA0AEC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FD0, &qword_20DD946C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA0AF30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FC8, &qword_20DD946C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20DA0AF98()
{
  result = qword_27C843FE0;
  if (!qword_27C843FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C843FE0);
  }

  return result;
}

uint64_t sub_20DA0AFE4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x20F326680](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_20DD65754();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_20DD65784();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_20DD65794();
        sub_20DD65764();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

uint64_t sub_20DA0B190(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_20DD655B4();
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
    sub_20D9E9BF8(a1);
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

  if (v4 <= sub_20DD655B4() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_20DD655B4();
  v2 = sub_20D9E3D58(v5, v6);
LABEL_10:

  return sub_20DA868B8(a1, v2);
}

uint64_t sub_20DA0B290(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_20DA4B008(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844850, &qword_20DD946F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438D0, &unk_20DD93F80);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_20DA4B008((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_20DA0B3CC(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_20DD655B4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v20 = MEMORY[0x277D84F90];
  result = sub_20DA4AFE8(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v20;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = MEMORY[0x20F326680](v7, a1);
        v10 = *(v20 + 16);
        v9 = *(v20 + 24);
        if (v10 >= v9 >> 1)
        {
          v12 = v8;
          sub_20DA4AFE8((v9 > 1), v10 + 1, 1);
          v8 = v12;
        }

        ++v7;
        *(v20 + 16) = v10 + 1;
        v11 = v20 + 16 * v10;
        *(v11 + 32) = v8;
        *(v11 + 40) = a2;
      }

      while (v4 != v7);
    }

    else
    {
      v13 = (a1 + 32);
      do
      {
        v14 = *(v20 + 16);
        v15 = *(v20 + 24);
        v16 = *v13;
        if (v14 >= v15 >> 1)
        {
          v18 = v15 > 1;
          v19 = v16;
          sub_20DA4AFE8(v18, v14 + 1, 1);
          v16 = v19;
        }

        *(v20 + 16) = v14 + 1;
        v17 = v20 + 16 * v14;
        *(v17 + 32) = v16;
        *(v17 + 40) = a2;
        ++v13;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA0B570(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v11 = MEMORY[0x277D84F90];
    sub_20DD65774();
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
      swift_dynamicCast();
      sub_20DD65754();
      v10 = *(v11 + 16);
      sub_20DD65784();
      sub_20DD65794();
      sub_20DD65764();
      --v4;
    }

    while (v4);
    return v11;
  }

  return result;
}

uint64_t sub_20DA0B67C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_20DA4AFE8(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_20D9D7174(v4, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438F0, &qword_20DD93F90);
      swift_dynamicCast();
      v5 = v11;
      v12 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        v9 = v11;
        sub_20DA4AFE8((v6 > 1), v7 + 1, 1);
        v5 = v9;
        v2 = v12;
      }

      *(v2 + 16) = v7 + 1;
      *(v2 + 16 * v7 + 32) = v5;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_20DA0B794(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_20DA4B048(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_20DA4B048((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_20D9D77C8(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_20DA0B894(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_20DA4B0AC(0, v1, 0);
    v2 = v14;
    v4 = a1 + 32;
    do
    {
      sub_20D9D7558(v4, v12, &unk_27C844030, &qword_20DD93C68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844030, &qword_20DD93C68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C845270, &unk_20DD96CD0);
      swift_dynamicCast();
      v14 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_20DA4B0AC((v5 > 1), v6 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 72 * v6;
      *(v7 + 32) = v12[3];
      v8 = v12[4];
      v9 = v12[5];
      v10 = v12[6];
      *(v7 + 96) = v13;
      *(v7 + 64) = v9;
      *(v7 + 80) = v10;
      *(v7 + 48) = v8;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

Swift::OpaquePointer_optional __swiftcall HFMatterCommandActionBuilder.overridingAttributes()()
{
  v1 = sub_20DD63CD4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843FF0, &qword_20DD946D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v39 = sub_20DD63D64();
  v30 = *(v39 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v39);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 commands];
  if (v10)
  {
    v12 = v10;
    sub_20DA0BEB0();
    v13 = sub_20DD64FD4();

    v37 = v13;
    if (v13 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
    {
      v15 = 0;
      v16 = v37 & 0xC000000000000001;
      v17 = v37 & 0xFFFFFFFFFFFFFF8;
      v36 = (v30 + 56);
      v31 = (v30 + 32);
      v32 = (v30 + 48);
      v18 = MEMORY[0x277D84F90];
      v33 = v37 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v16)
        {
          v19 = MEMORY[0x20F326680](v15, v37);
        }

        else
        {
          if (v15 >= *(v17 + 16))
          {
            goto LABEL_25;
          }

          v19 = *(v37 + 8 * v15 + 32);
        }

        v20 = v19;
        v21 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        sub_20DD65394();
        if (!v41)
        {

          sub_20D9D76EC(&v40, &qword_27C844000, &qword_20DD946E0);
LABEL_6:
          (*v36)(v7, 1, 1, v39);
          goto LABEL_7;
        }

        v38 = v15 + 1;
        sub_20D9C51D4(&v40, v42);
        __swift_project_boxed_opaque_existential_0(v42, v43);
        if (!sub_20DD63E04())
        {

          __swift_destroy_boxed_opaque_existential_0(v42);
          v21 = v38;
          goto LABEL_6;
        }

        __swift_project_boxed_opaque_existential_0(v42, v43);
        v17 = v33;
        sub_20DD63DC4();
        v22 = [v20 endpointID];
        [v22 unsignedShortValue];

        v23 = v39;
        sub_20DD63D34();

        (*v36)(v7, 0, 1, v23);
        __swift_destroy_boxed_opaque_existential_0(v42);
        v24 = (*v32)(v7, 1, v23);
        v21 = v38;
        if (v24 != 1)
        {
          v25 = *v31;
          (*v31)(v34, v7, v39);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_20D9E04CC(0, *(v18 + 2) + 1, 1, v18);
          }

          v27 = *(v18 + 2);
          v26 = *(v18 + 3);
          if (v27 >= v26 >> 1)
          {
            v18 = sub_20D9E04CC(v26 > 1, v27 + 1, 1, v18);
          }

          *(v18 + 2) = v27 + 1;
          v25(&v18[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27], v34, v39);
          goto LABEL_8;
        }

LABEL_7:
        sub_20D9D76EC(v7, &unk_27C843FF0, &qword_20DD946D8);
LABEL_8:
        ++v15;
        if (v21 == i)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    v18 = MEMORY[0x277D84F90];
LABEL_28:
  }

  else
  {
    v18 = 0;
  }

  v28 = v18;
  result.value._rawValue = v28;
  result.is_nil = v11;
  return result;
}

unint64_t sub_20DA0BEB0()
{
  result = qword_27C843BB0;
  if (!qword_27C843BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C843BB0);
  }

  return result;
}

void sub_20DA0BEFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v3 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x20F326680](v3, a1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v6 = v4;
      sub_20D9E1CFC(&v8, v6);
      v7 = v8;

      ++v3;
      if (v5 == i)
      {
        return;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v4 = *(a1 + 8 * v3 + 32);
    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

Swift::Void __swiftcall HFMatterCommandActionBuilder.updateCommands(with:)(Swift::OpaquePointer with)
{
  v3 = [v1 commands];
  if (v3)
  {
    v4 = v3;
    sub_20DA0BEB0();
    v5 = sub_20DD64FD4();

    if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
    {
      sub_20D9EEAA4(MEMORY[0x277D84F90]);
    }

    else
    {
      v6 = MEMORY[0x277D84FA0];
    }

    v12 = v6;
    v7 = v1;
    sub_20DA0D36C(with._rawValue, v7, &v12);

    v8 = sub_20D9F91CC(v5);

    v9 = sub_20DA0B190(v12, v8);

    sub_20DA0D270(v10, v9, sub_20D9E1CFC);

    sub_20DD65224();

    v11 = sub_20DD64FB4();

    [v7 setCommands_];
  }

  else
  {
    sub_20DA0BEB0();
    v11 = sub_20DD64FB4();
    [v1 setCommands_];
  }
}

uint64_t HFMatterCommandActionBuilder.associatedMatterCommand(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844008, &qword_20DD946E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844010, &qword_20DD946F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = sub_20DD63CD4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 clusterID];
  [v17 unsignedIntValue];

  sub_20DD63CC4();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    result = sub_20D9D76EC(v11, &unk_27C844010, &qword_20DD946F0);
LABEL_7:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  (*(v13 + 32))(v16, v11, v12);
  v19 = [a1 expectedValues];
  if (!v19)
  {
    result = (*(v13 + 8))(v16, v12);
    goto LABEL_7;
  }

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844850, &qword_20DD946F8);
  v21 = sub_20DD64FD4();

  v22 = [a1 commandID];
  [v22 unsignedIntValue];

  sub_20DA0B290(v21);

  v23 = [a1 commandFields];
  if (v23)
  {
    v24 = v23;
    sub_20DD64DC4();
  }

  sub_20DD642A4();
  sub_20DD64364();

  sub_20D9D76EC(v7, &qword_27C844008, &qword_20DD946E8);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_20DA0C69C(uint64_t *a1)
{
  v1 = *a1;
  sub_20DD653A4();
  if (v5)
  {
    sub_20D9C51D4(&v4, v6);
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    v2 = sub_20DD64474() ^ 1;
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_20D9D76EC(&v4, &qword_27C843F30, &unk_20DD94350);
    v2 = 0;
  }

  return v2 & 1;
}

char *HFMatterCommandActionBuilder.description.getter()
{
  v1 = sub_20DD63744();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 accessory];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [v6 name];
  v9 = sub_20DD64EB4();
  v11 = v10;

  v12 = [v7 uniqueIdentifier];
  sub_20DD63714();

  v13 = [v0 commands];
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = v13;
    sub_20DA0BEB0();
    v16 = sub_20DD64FD4();

    if (!(v16 >> 62))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_4:
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v9;
      v40 = v11;
      if (v17)
      {
        goto LABEL_5;
      }

LABEL_17:

      v20 = MEMORY[0x277D84F90];
LABEL_18:
      v42[0] = 0;
      v42[1] = 0xE000000000000000;
      sub_20DD65704();

      strcpy(v42, "<accessory: ");
      BYTE5(v42[1]) = 0;
      HIWORD(v42[1]) = -5120;
      MEMORY[0x20F325E90](v39, v40);

      MEMORY[0x20F325E90](10272, 0xE200000000000000);
      sub_20DA0D808();
      v30 = sub_20DD65934();
      MEMORY[0x20F325E90](v30);

      MEMORY[0x20F325E90](0xD000000000000014, 0x800000020DD988D0);
      v41 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436B0, &qword_20DD93CF0);
      sub_20DA0D860();
      v31 = sub_20DD64E44();
      v33 = v32;

      MEMORY[0x20F325E90](v31, v33);

      MEMORY[0x20F325E90](15882, 0xE200000000000000);

      v29 = v42[0];
      (*(v2 + 8))(v5, v1);
      return v29;
    }
  }

  v17 = sub_20DD655B4();
  v39 = v9;
  v40 = v11;
  if (!v17)
  {
    goto LABEL_17;
  }

LABEL_5:
  v42[0] = v14;
  result = sub_20DA4AF84(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v35 = v7;
    v36 = v5;
    v37 = v2;
    v38 = v1;
    v19 = 0;
    v20 = v42[0];
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x20F326680](v19, v16);
      }

      else
      {
        v21 = *(v16 + 8 * v19 + 32);
      }

      v22 = v21;
      v23 = sub_20DA0CB84();
      v25 = v24;

      v42[0] = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_20DA4AF84((v26 > 1), v27 + 1, 1);
        v20 = v42[0];
      }

      ++v19;
      *(v20 + 16) = v27 + 1;
      v28 = v20 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
    }

    while (v17 != v19);

    v2 = v37;
    v1 = v38;
    v7 = v35;
    v5 = v36;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA0CB84()
{
  v1 = v0;
  v2 = sub_20DD63CD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844010, &qword_20DD946F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = [v1 clusterID];
  [v14 unsignedIntValue];

  sub_20DD63CC4();
  v39 = v13;
  sub_20D9D7558(v13, v11, &unk_27C844010, &qword_20DD946F0);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    sub_20D9D76EC(v11, &unk_27C844010, &qword_20DD946F0);
    v40 = 0x286E776F6E6B6E75;
    v41 = 0xE800000000000000;
    v15 = [v1 clusterID];
    v16 = [v15 description];
    v17 = sub_20DD64EB4();
    v19 = v18;

    MEMORY[0x20F325E90](v17, v19);

    MEMORY[0x20F325E90](41, 0xE100000000000000);
    v21 = v40;
    v20 = v41;
  }

  else
  {
    (*(v3 + 32))(v6, v11, v2);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_20DD657A4();
    v21 = v40;
    v20 = v41;
    (*(v3 + 8))(v6, v2);
  }

  v40 = 0;
  v41 = 0xE000000000000000;
  sub_20DD65704();

  v40 = 2112101;
  v41 = 0xE300000000000000;
  v22 = [v1 endpointID];
  v23 = [v22 description];
  v24 = sub_20DD64EB4();
  v26 = v25;

  MEMORY[0x20F325E90](v24, v26);

  MEMORY[0x20F325E90](0x203A63202CLL, 0xE500000000000000);
  MEMORY[0x20F325E90](v21, v20);

  MEMORY[0x20F325E90](0x209286E220, 0xA500000000000000);
  v28 = v40;
  v27 = v41;
  sub_20DD65394();
  if (v42)
  {
    __swift_project_boxed_opaque_existential_0(&v40, v42);
    v29 = sub_20DD63DD4();
    v31 = v30;
    __swift_destroy_boxed_opaque_existential_0(&v40);
  }

  else
  {
    sub_20D9D76EC(&v40, &qword_27C844000, &qword_20DD946E0);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_20DD65704();

    v40 = 0x436E776F6E6B6E75;
    v41 = 0xEF28646E616D6D6FLL;
    v32 = [v1 commandID];
    v33 = [v32 description];
    v34 = sub_20DD64EB4();
    v36 = v35;

    MEMORY[0x20F325E90](v34, v36);

    MEMORY[0x20F325E90](41, 0xE100000000000000);
    v29 = v40;
    v31 = v41;
  }

  v40 = v28;
  v41 = v27;

  MEMORY[0x20F325E90](v29, v31);

  v37 = v40;
  sub_20D9D76EC(v39, &unk_27C844010, &qword_20DD946F0);
  return v37;
}

id sub_20DA0D060(void *a1)
{
  v1 = a1;
  v2 = [v1 commands];
  sub_20DA0BEB0();
  v3 = sub_20DD64FD4();

  if (v3 >> 62)
  {
    result = sub_20DD655B4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v7 = 0;
    goto LABEL_9;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x20F326680](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = [v6 accessory];

LABEL_9:

  return v7;
}

uint64_t HMMatterCommandAction.representedAccessory.getter()
{
  v1 = [v0 commands];
  sub_20DA0BEB0();
  v2 = sub_20DD64FD4();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = sub_20DD655B4();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F326680](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_6:
    v5 = v4;

    v6 = [v5 accessory];

    return v6;
  }

  __break(1u);
  return result;
}

id sub_20DA0D270(unint64_t a1, id a2, void (*a3)(id *, id))
{
  v13 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x20F326680](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v7 = *(a1 + 8 * i + 32);
        }

        a2 = v7;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        a3(&v12, v7);

        if (v8 == v5)
        {
          return v13;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v10 = a2;
      v11 = sub_20DD655B4();
      a2 = v10;
      v5 = v11;
    }

    while (v11);
  }

  return a2;
}

void sub_20DA0D36C(unint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v25 = a1;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v6 = 0;
    v7 = v25 & 0xC000000000000001;
    v8 = v25 & 0xFFFFFFFFFFFFFF8;
    v19 = i;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x20F326680](v6, v25);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v25 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_20DD653A4();
      if (v23)
      {
        sub_20D9C51D4(&v22, v24);
        v12 = [v20 commands];
        if (v12)
        {
          v13 = v12;
          sub_20DA0BEB0();
          v14 = v4;
          v15 = sub_20DD64FD4();

          MEMORY[0x28223BE20](v16);
          v18[2] = v24;
          v17 = sub_20DA0AFE4(sub_20DA0D8C4, v18, v15);
          v4 = v14;
          i = v19;
        }

        else
        {
          v17 = MEMORY[0x277D84F90];
        }

        __swift_destroy_boxed_opaque_existential_0(v24);
        sub_20DA0BEFC(v17);
      }

      else
      {
        sub_20D9D76EC(&v22, &qword_27C843F30, &unk_20DD94350);
      }

      ++v6;
      if (v11 == i)
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

uint64_t _sSo28HFMatterCommandActionBuilderC4HomeE20actionExpectedValues3forSaySDySSs8Sendable_pGGSgSo08HMMatterB0C_tF_0(void *a1)
{
  sub_20DD65394();
  if (v6)
  {
    sub_20D9C51D4(&v5, v7);
    __swift_project_boxed_opaque_existential_0(v7, v8);
    sub_20DD63DF4();
    __swift_project_boxed_opaque_existential_0(v7, v8);
    v2 = [a1 endpointID];
    [v2 unsignedShortValue];

    v3 = sub_20DD63E24();

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_20D9D76EC(&v5, &qword_27C844000, &qword_20DD946E0);
    return 0;
  }

  return v3;
}

uint64_t _sSo28HFMatterCommandActionBuilderC4HomeE06actionB6Fields3forSDySSypGSgSo08HMMatterB0C_tF_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844008, &qword_20DD946E8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  sub_20DD65394();
  if (v9)
  {
    sub_20D9C51D4(&v8, v10);
    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    sub_20DD63DE4();
    v4 = sub_20DD642C4();
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_20D9D76EC(v3, &qword_27C844008, &qword_20DD946E8);
      v6 = 0;
    }

    else
    {
      v6 = sub_20DD642B4();
      (*(v5 + 8))(v3, v4);
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_20D9D76EC(&v8, &qword_27C844000, &qword_20DD946E0);
    return 0;
  }

  return v6;
}

unint64_t sub_20DA0D808()
{
  result = qword_27C8436C0;
  if (!qword_27C8436C0)
  {
    sub_20DD63744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8436C0);
  }

  return result;
}

unint64_t sub_20DA0D860()
{
  result = qword_27C844020;
  if (!qword_27C844020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C8436B0, &qword_20DD93CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844020);
  }

  return result;
}

uint64_t sub_20DA0D98C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  return v1;
}

uint64_t sub_20DA0DA84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_20DD64CE4();
}

uint64_t sub_20DA0DAFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_20DA0DB7C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_20DD64CE4();
}

uint64_t (*sub_20DA0DBFC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_20DD64CC4();
  return sub_20DA11CC8;
}

uint64_t sub_20DA0DCA0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844060, &qword_20DD94768);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844058, &qword_20DD94760);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_20DA0DE40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844060, &qword_20DD94768);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844058, &qword_20DD94760);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_20DA0DF78(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844060, &qword_20DD94768);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___HFStatusItemUpdate__title;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844058, &qword_20DD94760);
  sub_20DD64CA4();
  swift_endAccess();
  return sub_20DA11CCC;
}

uint64_t sub_20DA0E1A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  return v1;
}

uint64_t sub_20DA0E2A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_20DD64CE4();
}

double sub_20DA0E320@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_20DA0E3A0(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_20DD64CE4();
}

uint64_t (*sub_20DA0E420(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_20DD64CC4();
  return sub_20DA11CC8;
}

uint64_t sub_20DA0E4C4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844078, &unk_20DD947D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844070, &qword_20DD947C8);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_20DA0E664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844078, &unk_20DD947D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844070, &qword_20DD947C8);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_20DA0E79C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844078, &unk_20DD947D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___HFStatusItemUpdate__secondaryText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844070, &qword_20DD947C8);
  sub_20DD64CA4();
  swift_endAccess();
  return sub_20DA11CCC;
}

uint64_t sub_20DA0E9C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v1 = v0;
  sub_20DD64CE4();
  sub_20DA0EAE4();
  return swift_unknownObjectRelease();
}

uint64_t sub_20DA0EA60(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v3;
  sub_20DD64CE4();
  return sub_20DA0EAE4();
}

uint64_t sub_20DA0EAE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  v1 = sub_20DA10DDC(v5);
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  sub_20DD64CD4();

  if (v1)
  {
    if (v5)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v1 == v5)
      {
        return swift_unknownObjectRelease();
      }

      goto LABEL_7;
    }
  }

  else if (!v5)
  {
    return result;
  }

  swift_unknownObjectRelease();
LABEL_7:
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v3 = v0;
  v4 = sub_20DD64CE4();
  sub_20DA0EAE4(v4);
  return swift_unknownObjectRelease();
}

uint64_t (*sub_20DA0EC50(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  *a1 = a1[1];
  return sub_20DA0ECE4;
}

uint64_t sub_20DA0ECE4(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  v5 = a1[2];
  swift_unknownObjectRetain();
  v5;
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_20DD64CE4();
    sub_20DA0EAE4();
    swift_unknownObjectRelease();
    v6 = *a1;
  }

  else
  {
    sub_20DD64CE4();
    sub_20DA0EAE4();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20DA0EDC8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8440F0, &qword_20DD94840);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8440E8, &qword_20DD94838);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_20DA0EF68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8440F0, &qword_20DD94840);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8440E8, &qword_20DD94838);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_20DA0F0A0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8440F0, &qword_20DD94840);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___HFStatusItemUpdate__iconDescriptor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8440E8, &qword_20DD94838);
  sub_20DD64CA4();
  swift_endAccess();
  return sub_20DA11CCC;
}

uint64_t (*sub_20DA0F288(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_20DD64CC4();
  return sub_20DA0F32C;
}

uint64_t sub_20DA0F330(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844108, &qword_20DD948A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844100, &qword_20DD948A0);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_20DA0F4D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844108, &qword_20DD948A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844100, &qword_20DD948A0);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_20DA0F608(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844108, &qword_20DD948A8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___HFStatusItemUpdate__currentValue;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844100, &qword_20DD948A0);
  sub_20DD64CA4();
  swift_endAccess();
  return sub_20DA0F778;
}

id sub_20DA0F790(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  sub_20DD64CD4();

  return v4;
}

uint64_t sub_20DA0F830()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  return v1;
}

uint64_t sub_20DA0F8B0(void *a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = a1;
  return sub_20DD64CE4();
}

uint64_t sub_20DA0F934()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_20DD64CE4();
}

uint64_t sub_20DA0F9B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  *a2 = v5;
  return result;
}

uint64_t sub_20DA0FA40(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_20DD64CE4();
}

uint64_t (*sub_20DA0FAB0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_20DD64CC4();
  return sub_20DA11CC8;
}

void sub_20DA0FB54(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_20DA0FBBC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_20DD64CA4();
  return swift_endAccess();
}

uint64_t sub_20DA0FC38(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844108, &qword_20DD948A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844100, &qword_20DD948A0);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_20DA0FDD8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_20DD64CA4();
  return swift_endAccess();
}

uint64_t sub_20DA0FE50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844108, &qword_20DD948A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844100, &qword_20DD948A0);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_20DA0FF88(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844108, &qword_20DD948A8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___HFStatusItemUpdate__possibleValues;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844100, &qword_20DD948A0);
  sub_20DD64CA4();
  swift_endAccess();
  return sub_20DA11CCC;
}

void sub_20DA100F8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_20DD64CB4();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_20DD64CB4();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

id StatusItemUpdate.__allocating_init(title:secondaryText:iconDescriptor:)(__CFString *a1, uint64_t a2, __CFString *a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_20DA10F78(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v12;
}

id StatusItemUpdate.init(title:secondaryText:iconDescriptor:)(__CFString *a1, uint64_t a2, __CFString *a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_20DA10F78(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v5;
}

id StatusItemUpdate.init(title:)(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844100, &qword_20DD948A0);
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8440E8, &qword_20DD94838);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844070, &qword_20DD947C8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR___HFStatusItemUpdate__secondaryText;
  v31 = 0;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844118, qword_20DD96F20);
  sub_20DD64C94();
  (*(v13 + 32))(&v2[v17], v16, v12);
  v18 = OBJC_IVAR___HFStatusItemUpdate__iconDescriptor;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844120, &qword_20DD94910);
  sub_20DD64C94();
  (*(v8 + 32))(&v2[v18], v11, v7);
  v19 = OBJC_IVAR___HFStatusItemUpdate__currentValue;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844128, &qword_20DD94918);
  sub_20DD64C94();
  v20 = *(v3 + 32);
  v21 = v25;
  v20(&v2[v19], v6, v25);
  v22 = OBJC_IVAR___HFStatusItemUpdate__possibleValues;
  v31 = 0;
  sub_20DD64C94();
  v20(&v2[v22], v6, v21);
  swift_beginAccess();
  v29 = v26;
  v30 = v27;
  sub_20DD64C94();
  swift_endAccess();
  v23 = type metadata accessor for StatusItemUpdate();
  v28.receiver = v2;
  v28.super_class = v23;
  return objc_msgSendSuper2(&v28, sel_init);
}

uint64_t sub_20DA107B8()
{
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_20DD65704();
  v10.receiver = v0;
  v10.super_class = type metadata accessor for StatusItemUpdate();
  v1 = objc_msgSendSuper2(&v10, sel_description);
  v2 = sub_20DD64EB4();
  v4 = v3;

  MEMORY[0x20F325E90](v2, v4);

  MEMORY[0x20F325E90](32, 0xE100000000000000);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  MEMORY[0x20F325E90]();

  MEMORY[0x20F325E90](0x61646E6F63657320, 0xEB000000003A7972);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844118, qword_20DD96F20);
  v5 = sub_20DD64ED4();
  MEMORY[0x20F325E90](v5);

  MEMORY[0x20F325E90](0x3A6E6F636920, 0xE600000000000000);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844120, &qword_20DD94910);
  v6 = sub_20DD64ED4();
  MEMORY[0x20F325E90](v6);

  MEMORY[0x20F325E90](0x746E657272756320, 0xEE003A65756C6156);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844128, &qword_20DD94918);
  v7 = sub_20DD64ED4();
  MEMORY[0x20F325E90](v7);

  MEMORY[0x20F325E90](0xD000000000000010, 0x800000020DD98950);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  v8 = sub_20DD64ED4();
  MEMORY[0x20F325E90](v8);

  return v11;
}

id StatusItemUpdate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StatusItemUpdate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StatusItemUpdate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20DA10D9C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StatusItemUpdate();
  result = sub_20DD64C84();
  *a1 = result;
  return result;
}

__CFString *sub_20DA10DDC(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  swift_unknownObjectRetain();
  v4 = [v3 packageIdentifier];
  if (!v4)
  {
    sub_20DD64EB4();
    v4 = sub_20DD64E74();
  }

  v5 = [v3 state];
  v6 = sub_20DD64EB4();
  v8 = v7;
  if (v6 == sub_20DD64EB4() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_20DD65974();

    if ((v11 & 1) == 0)
    {

      swift_unknownObjectRelease();
LABEL_11:
      swift_unknownObjectRetain();
      return v1;
    }
  }

  result = HFCAPackageAlternateStateForHFCAPackageState(v5);
  if (result)
  {
    v13 = result;

    v14 = [objc_allocWithZone(HFCAPackageIconDescriptor) initWithPackageIdentifier:v4 state:v13];
    swift_unknownObjectRelease();

    return v14;
  }

  __break(1u);
  return result;
}

id sub_20DA10F78(__CFString *a1, uint64_t a2, __CFString *a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v37 = a2;
  v38 = a3;
  v36 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844100, &qword_20DD948A0);
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v35);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8440E8, &qword_20DD94838);
  v11 = *(v10 - 8);
  v12 = v11;
  v31 = v10;
  v32 = v11;
  v13 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844070, &qword_20DD947C8);
  v30 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v21 = OBJC_IVAR___HFStatusItemUpdate__secondaryText;
  v44 = 0;
  v45 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844118, qword_20DD96F20);
  sub_20DD64C94();
  (*(v17 + 32))(&v5[v21], v20, v16);
  v22 = OBJC_IVAR___HFStatusItemUpdate__iconDescriptor;
  v44 = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844120, &qword_20DD94910);
  sub_20DD64C94();
  (*(v12 + 32))(&v5[v22], v15, v10);
  v23 = OBJC_IVAR___HFStatusItemUpdate__currentValue;
  v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844128, &qword_20DD94918);
  sub_20DD64C94();
  v24 = *(v6 + 32);
  v25 = v35;
  v24(&v5[v23], v9, v35);
  v26 = OBJC_IVAR___HFStatusItemUpdate__possibleValues;
  v44 = 0;
  sub_20DD64C94();
  v24(&v5[v26], v9, v25);
  swift_beginAccess();
  v42 = v36;
  v43 = v37;
  sub_20DD64C94();
  swift_endAccess();
  swift_beginAccess();
  (*(v17 + 8))(&v5[v21], v30);
  v42 = v38;
  v43 = v39;
  sub_20DD64C94();
  swift_endAccess();
  v27 = sub_20DA10DDC(v40);
  swift_beginAccess();
  (*(v32 + 8))(&v5[v22], v31);
  v42 = v27;
  sub_20DD64C94();
  swift_endAccess();
  v28 = type metadata accessor for StatusItemUpdate();
  v41.receiver = v5;
  v41.super_class = v28;
  return [(__CFString *)&v41 init];
}

uint64_t type metadata accessor for StatusItemUpdate()
{
  result = qword_27C844138;
  if (!qword_27C844138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20DA113DC()
{
  sub_20DA11C24();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_20DA11C74(319, &qword_27C844150, &qword_27C844118, qword_20DD96F20);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_20DA11C74(319, &qword_27C844158, &qword_27C844120, &qword_20DD94910);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_20DA11C74(319, &unk_27C844160, &unk_27C844128, &qword_20DD94918);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20DA11C24()
{
  if (!qword_27C844148)
  {
    v0 = sub_20DD64CF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C844148);
    }
  }
}

void sub_20DA11C74(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_20DD64CF4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void HFItem.homeElementType.getter(uint64_t a1@<X8>)
{
  v3 = sub_20DD63984();
  v23 = *(v3 - 8);
  v4 = v23[8];
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v7 = *MEMORY[0x277D152E8];
    v8 = v23[13];

    v8(a1, v7, v3);
    return;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v22 = v1;
      v15 = [v14 mediaAccessoryItemType];
      if (v15 > 4)
      {
        if (v15 <= 6)
        {
          goto LABEL_21;
        }

        if (v15 == 7)
        {
          v16 = MEMORY[0x277D152C0];
          goto LABEL_26;
        }

        if (v15 == 8)
        {
LABEL_21:
          v16 = MEMORY[0x277D15300];
          goto LABEL_26;
        }
      }

      else
      {
        if (v15 > 1)
        {
          v16 = MEMORY[0x277D152F8];
LABEL_26:
          (v23[13])(a1, *v16, v3);
          v12 = v22;
          goto LABEL_27;
        }

        if (v15 == 1)
        {
          v16 = MEMORY[0x277D152F0];
          goto LABEL_26;
        }
      }

      v16 = MEMORY[0x277D152D8];
      goto LABEL_26;
    }

    v24 = &unk_28252AFF0;
    v17 = swift_dynamicCastObjCProtocolConditional();
    if (!v17)
    {
      (v23[13])(a1, *MEMORY[0x277D152D8], v3);
      return;
    }

    [v17 accessoryRepresentableObject];
    swift_getObjectType();
    v18 = HFAccessoryRepresentable.accessoryType.getter();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      HFServiceAccessoryType.specializedHomeElementType.getter(v6);
    }

    else
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = [v19 categoryType];
        sub_20DD64EB4();

        sub_20DD63974();
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();

          (v23[13])(v6, *MEMORY[0x277D152D8], v3);
          goto LABEL_33;
        }

        HFMatterDeviceAccessoryType.specializedHomeElementType.getter(v6);
      }
    }

    swift_unknownObjectRelease();

LABEL_33:
    (v23[4])(a1, v6, v3);
    return;
  }

  v10 = v9;
  v11 = v1;
  v23 = [v10 sourceItem];
  HFItem.homeElementType.getter();

  v12 = v23;
LABEL_27:
}

uint64_t HFMediaAccessoryItem.specializedHomeElementType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 mediaAccessoryItemType];
  v4 = sub_20DD63984();
  v5 = *(*(v4 - 8) + 104);
  if (v3 > 9)
  {
    v6 = MEMORY[0x277D152D8];
  }

  else
  {
    v6 = qword_277DF2488[v3];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t HFAccessoryType.homeElementType.getter@<X0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return HFServiceAccessoryType.specializedHomeElementType.getter(a1);
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 categoryType];
    sub_20DD64EB4();

    return sub_20DD63974();
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return HFMatterDeviceAccessoryType.specializedHomeElementType.getter(a1);
    }

    else
    {
      v5 = *MEMORY[0x277D152D8];
      v6 = sub_20DD63984();
      v7 = *(*(v6 - 8) + 104);

      return v7(a1, v5, v6);
    }
  }
}

uint64_t HFServiceAccessoryType.specializedHomeElementType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844170, &qword_20DD94988);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_20DD63D14();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = [v2 serviceType];
  sub_20DD64EB4();

  sub_20DD63D04();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20D9D76EC(v7, &qword_27C844170, &qword_20DD94988);
    v17 = *MEMORY[0x277D152D8];
    v18 = sub_20DD63984();
    return (*(*(v18 - 8) + 104))(a1, v17, v18);
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    (*(v9 + 16))(v13, v15, v8);
    sub_20DD63964();
    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t HFCategoryAccessoryType.specializedHomeElementType.getter()
{
  v1 = [v0 categoryType];
  sub_20DD64EB4();

  return sub_20DD63974();
}

uint64_t HFMatterDeviceAccessoryType.specializedHomeElementType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A38, &unk_20DD940C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_20DD641A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = [v2 deviceType];
  [v16 unsignedIntValue];

  sub_20DD64184();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20D9D76EC(v7, &unk_27C843A38, &unk_20DD940C0);
    v17 = *MEMORY[0x277D152D8];
    v18 = sub_20DD63984();
    return (*(*(v18 - 8) + 104))(a1, v17, v18);
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    (*(v9 + 16))(v13, v15, v8);
    sub_20DD63954();
    return (*(v9 + 8))(v15, v8);
  }
}

id static HFMatterAccessoryLikeItemProvider.itemProvider(in:in:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  sub_20D9C90A8(a2, &v14 - v6);
  v8 = type metadata accessor for MatterAccessoryLikeItemProvider();
  v9 = objc_allocWithZone(v8);
  *&v9[qword_27C84C680] = a1;
  v10 = &v9[qword_27C844CB8];
  *v10 = 0;
  *(v10 + 1) = 0;
  sub_20D9C90A8(v7, &v9[qword_27C84C688]);
  v14.receiver = v9;
  v14.super_class = v8;
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_20D9C9040(v7);
  return v12;
}

HFMatterAccessoryLikeItemProvider __swiftcall HFMatterAccessoryLikeItemProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HFMatterAccessoryLikeItemProvider()
{
  result = qword_27C844178;
  if (!qword_27C844178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C844178);
  }

  return result;
}