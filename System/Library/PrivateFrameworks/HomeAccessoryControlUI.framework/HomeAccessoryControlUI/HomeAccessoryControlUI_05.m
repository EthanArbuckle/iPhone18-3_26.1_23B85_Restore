uint64_t _s11RobotVacuumVwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s11RobotVacuumVwst(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2523B2ABC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2523B2B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523B2B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2523B2C04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523B2C6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2523B2CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v66 = a2;
  v67 = a1;
  v70 = a4;
  v4 = sub_25268DA10();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25268FC20();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = v7;
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  MEMORY[0x28223BE20](v68);
  v61 = (&v53 - v8);
  v65 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v9 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v69 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  v17 = type metadata accessor for MatterControlSolver.SourcePath(0);
  v53 = *(v17 - 8);
  v18 = *(v53 + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v54 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v53 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v53 - v23;
  v56 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v56);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_25268E310();
  (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
  v72[0] = 1;
  sub_2525EA7E4(v24, v72, v26);
  v28 = v66;
  sub_252372288(v24, &qword_27F4DB3A0);
  sub_2523B8B3C(v26, v21, type metadata accessor for MatterControlSolver.SourcePath);
  sub_2523B5714(v26, v16);
  v67 = v16;
  sub_25237153C(v16, v14, &qword_27F4DB3C0);
  if ((*(v9 + 48))(v14, 1, v65) == 1)
  {
    sub_252372288(v67, &qword_27F4DB3C0);
    sub_2523B89F4(v21, type metadata accessor for MatterControlSolver.SourcePath);
    sub_2523B89F4(v26, type metadata accessor for MatterControlSolver.Source);
    sub_252372288(v14, &qword_27F4DB3C0);
    v29 = type metadata accessor for AccessoryControl(0);
    return (*(*(v29 - 8) + 56))(v70, 1, 1, v29);
  }

  else
  {
    sub_2523B8AD4(v14, v69, type metadata accessor for AccessoryControl.PickerViewConfig);
    sub_2523B6498(&v71);
    v65 = v71;
    v31 = v61;
    sub_2523B8B3C(v57, v61 + *(v68 + 36), type metadata accessor for AccessoryControl.ValueDestination);
    v32 = v54;
    sub_2523B8B3C(v21, v54, type metadata accessor for MatterControlSolver.SourcePath);
    v33 = v58;
    v34 = v59;
    v35 = v60;
    (*(v59 + 16))(v58, v28, v60);
    v36 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v37 = *(v34 + 80);
    v66 = v21;
    v38 = (v18 + v37 + v36) & ~v37;
    v39 = swift_allocObject();
    sub_2523B8AD4(v32, v39 + v36, type metadata accessor for MatterControlSolver.SourcePath);
    (*(v34 + 32))(v39 + v38, v33, v35);
    v40 = v31 + *(v68 + 40);
    *v40 = v65;
    v40[8] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB020);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_252694E90;
    *(v41 + 32) = sub_2523B8474;
    *(v41 + 40) = v39;
    *v31 = v41;
    v42 = v62;
    MatterControlSolver.SourcePath.uuid.getter(v62);
    v43 = type metadata accessor for AccessoryControl(0);
    v44 = v70;
    v45 = v70 + v43[5];
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);
    v47 = v69;
    sub_2523B8B3C(v69, v45, type metadata accessor for AccessoryControl.PickerViewConfig);
    sub_25237153C(v31, v45 + v46, &qword_27F4DAD68);
    type metadata accessor for AccessoryControl.State(0);
    swift_storeEnumTagMultiPayload();
    v48 = MatterControlSolver.Source.controlAccessibilityIdentifier.getter();
    v50 = v49;
    sub_252372288(v31, &qword_27F4DAD68);
    sub_2523B89F4(v47, type metadata accessor for AccessoryControl.PickerViewConfig);
    sub_252372288(v67, &qword_27F4DB3C0);
    sub_2523B89F4(v66, type metadata accessor for MatterControlSolver.SourcePath);
    LOBYTE(v38) = v26[*(v56 + 36)];
    sub_2523B89F4(v26, type metadata accessor for MatterControlSolver.Source);
    (*(v63 + 32))(v44, v42, v64);
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v51 = (v44 + v43[7]);
    v52 = v43[9];
    *(v44 + v52) = 16;
    *(v44 + v43[6]) = 0;
    *v51 = v48;
    v51[1] = v50;
    *(v44 + v43[8]) = 1027;
    *(v44 + v52) = 16;
    *(v44 + v43[10]) = v38;
    return (*(*(v43 - 1) + 56))(v44, 0, 1, v43);
  }
}

uint64_t sub_2523B3570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a3;
  v85 = a2;
  v88 = a4;
  v83 = type metadata accessor for MatterControlSolver.Source(0);
  v5 = MEMORY[0x28223BE20](v83);
  v72 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v84 = &v72 - v7;
  v80 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v80);
  v82 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for AccessoryControl.ElementIdentifier();
  MEMORY[0x28223BE20](v79);
  v81 = (&v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_25268FC20();
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = *(v76 + 64);
  MEMORY[0x28223BE20](v10);
  v75 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  MEMORY[0x28223BE20](v74);
  v86 = (&v72 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v72 - v14;
  v16 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v87 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MatterControlSolver.SourcePath(0);
  v20 = v19 - 8;
  v73 = *(v19 - 8);
  v21 = *(v73 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v23 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v72 - v24;
  v26 = a1;
  sub_2523B8B3C(a1, &v72 - v24, type metadata accessor for MatterControlSolver.SourcePath);
  if (v25[*(v20 + 32)] == 2)
  {
  }

  else
  {
    v27 = sub_2526933B0();

    if ((v27 & 1) == 0)
    {
      if (qword_27F4DABD0 != -1)
      {
        swift_once();
      }

      v30 = sub_2526905A0();
      __swift_project_value_buffer(v30, qword_27F4E4B18);
      v31 = v26;
      v32 = v84;
      sub_2523B8B3C(v31, v84, type metadata accessor for MatterControlSolver.Source);
      v33 = sub_252690580();
      v34 = sub_252692EF0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v89 = v36;
        *v35 = 136315138;
        sub_2523B8B3C(v32, v72, type metadata accessor for MatterControlSolver.Source);
        v37 = sub_252692C20();
        v39 = v38;
        sub_2523B89F4(v32, type metadata accessor for MatterControlSolver.Source);
        v40 = sub_2525BDA90(v37, v39, &v89);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_252309000, v33, v34, "Tried to create RVC Secondary Clean Mode Picker with the wrong source  %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x2530A5A40](v36, -1, -1);
        MEMORY[0x2530A5A40](v35, -1, -1);
      }

      else
      {

        sub_2523B89F4(v32, type metadata accessor for MatterControlSolver.Source);
      }

      sub_2523B89F4(v25, type metadata accessor for MatterControlSolver.SourcePath);
      goto LABEL_15;
    }
  }

  v28 = v85;
  sub_2523B4B94(v26, v85, v15);
  v29 = v26;
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_2523B89F4(v25, type metadata accessor for MatterControlSolver.SourcePath);
    sub_252372288(v15, &qword_27F4DB3C0);
LABEL_15:
    v66 = type metadata accessor for AccessoryControl(0);
    return (*(*(v66 - 8) + 56))(v88, 1, 1, v66);
  }

  sub_2523B8AD4(v15, v87, type metadata accessor for AccessoryControl.PickerViewConfig);
  sub_2523B53DC(&v89);
  v72 = v89;
  v41 = v74;
  sub_2523B8B3C(v78, v86 + *(v74 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  sub_2523B8B3C(v25, v23, type metadata accessor for MatterControlSolver.SourcePath);
  v42 = v76;
  v43 = v77;
  v44 = *(v76 + 16);
  v84 = v29;
  v45 = v75;
  v44(v75, v28, v77);
  v46 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v47 = (v21 + *(v42 + 80) + v46) & ~*(v42 + 80);
  v48 = swift_allocObject();
  sub_2523B8AD4(v23, v48 + v46, type metadata accessor for MatterControlSolver.SourcePath);
  (*(v42 + 32))(v48 + v47, v45, v43);
  v49 = v86;
  v50 = v86 + *(v41 + 40);
  *v50 = v72;
  v50[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB020);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_252694E90;
  *(v51 + 32) = sub_2523B8D98;
  *(v51 + 40) = v48;
  *v49 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB408);
  v53 = swift_allocBox();
  v54 = *(v52 + 48);
  *v55 = 1;
  v56 = v84;
  MatterControlSolver.SourcePath.uuid.getter(&v55[v54]);
  swift_storeEnumTagMultiPayload();
  v57 = v81;
  *v81 = v53;
  swift_storeEnumTagMultiPayload();
  v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);
  v59 = v87;
  v60 = v82;
  sub_2523B8B3C(v87, v82, type metadata accessor for AccessoryControl.PickerViewConfig);
  sub_25237153C(v49, v60 + v58, &qword_27F4DAD68);
  swift_storeEnumTagMultiPayload();
  v61 = v56;
  v62 = MatterControlSolver.Source.controlAccessibilityIdentifier.getter();
  v64 = v63;
  sub_252372288(v49, &qword_27F4DAD68);
  sub_2523B89F4(v25, type metadata accessor for MatterControlSolver.SourcePath);
  if (v59[8] == 1 && *(*v59 + 16))
  {
    v65 = *(v61 + *(v83 + 36));
  }

  else
  {
    v65 = 0;
  }

  v68 = type metadata accessor for AccessoryControl(0);
  v69 = v88;
  v70 = (v88 + v68[7]);
  v71 = v68[9];
  *(v88 + v71) = 16;
  sub_2523B8AD4(v57, v69, type metadata accessor for AccessoryControl.ElementIdentifier);
  sub_2523B8AD4(v60, v69 + v68[5], type metadata accessor for AccessoryControl.State);
  *(v69 + v68[6]) = 1;
  *v70 = v62;
  v70[1] = v64;
  *(v69 + v68[8]) = 1028;
  *(v69 + v71) = 16;
  *(v69 + v68[10]) = v65;
  (*(*(v68 - 1) + 56))(v69, 0, 1, v68);
  return sub_2523B89F4(v87, type metadata accessor for AccessoryControl.PickerViewConfig);
}

uint64_t sub_2523B40D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v96 = a3;
  v97 = a4;
  v106 = a5;
  v7 = type metadata accessor for AccessoryControl.ElementIdentifier();
  MEMORY[0x28223BE20](v7 - 8);
  v102 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MatterControlSolver.SourcePath(0);
  v92 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v94 = v10;
  v95 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0);
  MEMORY[0x28223BE20](v93);
  v99 = (&v85 - v11);
  v91 = type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0);
  MEMORY[0x28223BE20](v91);
  v98 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AccessoryControl.State(0);
  v14 = MEMORY[0x28223BE20](v13);
  v101 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v85 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v85 - v19;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  v21 = MEMORY[0x28223BE20](v90);
  v103 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v105 = &v85 - v23;
  v89 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v24 = MEMORY[0x28223BE20](v89);
  v100 = (&v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v104 = &v85 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v85 - v28;
  v30 = type metadata accessor for AccessoryControl(0);
  MEMORY[0x28223BE20](v30);
  v32 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v33;
  sub_25237153C(a2, v29, &qword_27F4DB120);
  if ((*(v34 + 48))(v29, 1, v30) == 1)
  {
    sub_252372288(v29, &qword_27F4DB120);
LABEL_10:
    v55 = 1;
    return (*(v34 + 56))(v106, v55, 1, v30);
  }

  sub_2523B8AD4(v29, v32, type metadata accessor for AccessoryControl);
  sub_2523B8B3C(a1 + v30[5], v20, type metadata accessor for AccessoryControl.State);
  v35 = v32;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v18 = v20;
LABEL_9:
    sub_2523B89F4(v35, type metadata accessor for AccessoryControl);
    sub_2523B89F4(v18, type metadata accessor for AccessoryControl.State);
    goto LABEL_10;
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0);
  v37 = *(v36 + 48);
  v38 = v104;
  sub_2523B8AD4(v20, v104, type metadata accessor for AccessoryControl.PickerViewConfig);
  v39 = &v20[v37];
  v40 = v105;
  sub_2523714D4(v39, v105, &qword_27F4DAD68);
  sub_2523B8B3C(v35 + v30[5], v18, type metadata accessor for AccessoryControl.State);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_252372288(v40, &qword_27F4DAD68);
    sub_2523B89F4(v38, type metadata accessor for AccessoryControl.PickerViewConfig);
    goto LABEL_9;
  }

  v86 = v35;
  v88 = v13;
  v85 = a1;
  v41 = *(v36 + 48);
  v42 = v100;
  sub_2523B8AD4(v18, v100, type metadata accessor for AccessoryControl.PickerViewConfig);
  sub_2523714D4(&v18[v41], v103, &qword_27F4DAD68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E8);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_252694EA0;
  v44 = sub_252692C40();
  v45 = *v38;
  *(v43 + 32) = 0;
  *(v43 + 40) = v44;
  *(v43 + 48) = v46;
  *(v43 + 56) = v45;

  v47 = sub_252692C40();
  v48 = *v42;
  *(v43 + 64) = 1;
  *(v43 + 72) = v47;
  *(v43 + 80) = v49;
  *(v43 + 88) = v48;
  v50 = *(v38 + 8);
  v51 = v98;
  sub_25237153C(v38 + *(v89 + 24), &v98[*(v91 + 24)], &qword_27F4DADB8);
  *v51 = v43;
  *(v51 + 8) = v50;
  v52 = sub_25256E560(MEMORY[0x277D84F90]);
  v53 = v90;
  v54 = *(v90 + 40);
  if (*(v40 + v54 + 8) == 1)
  {
  }

  else
  {
    v57 = *(v40 + v54);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107 = v52;
    sub_25256D4A0(v57, 0, isUniquelyReferenced_nonNull_native);
    v52 = v107;
    v54 = *(v53 + 40);
  }

  if ((*(v103 + v54 + 8) & 1) == 0)
  {
    v59 = *(v103 + v54);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v52;
    sub_25256D4A0(v59, 1, v60);
    v52 = v107;
  }

  v61 = *(v52 + 16);
  v87 = v34;
  if (v61)
  {

    v62 = v52;
  }

  else
  {
    v62 = 0;
  }

  v63 = v93;
  v64 = v99;
  sub_2523B8B3C(v96, v99 + *(v93 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  v65 = v95;
  sub_2523B8B3C(v97, v95, type metadata accessor for MatterControlSolver.SourcePath);
  v66 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v67 = swift_allocObject();
  sub_2523B8AD4(v65, v67 + v66, type metadata accessor for MatterControlSolver.SourcePath);
  *(v64 + *(v63 + 40)) = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3F0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_252694E90;
  *(v68 + 32) = sub_2523B8A54;
  *(v68 + 40) = v67;
  sub_252372288(v103, &qword_27F4DAD68);
  sub_2523B89F4(v100, type metadata accessor for AccessoryControl.PickerViewConfig);
  sub_252372288(v105, &qword_27F4DAD68);
  sub_2523B89F4(v104, type metadata accessor for AccessoryControl.PickerViewConfig);
  *v64 = v68;
  v69 = v85;
  sub_2523B8B3C(v85, v102, type metadata accessor for AccessoryControl.ElementIdentifier);
  v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3F8) + 48);
  v71 = v101;
  sub_2523B8AD4(v51, v101, type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig);
  sub_2523714D4(v64, v71 + v70, &qword_27F4DB3E0);
  swift_storeEnumTagMultiPayload();
  v72 = v30[7];
  LODWORD(v105) = *(v69 + v30[6]);
  v73 = *(v69 + v72 + 8);
  v104 = *(v69 + v72);
  v74 = (v69 + v30[8]);
  v75 = *v74;
  v76 = v74[1];
  v77 = *(v69 + v30[9]);
  v78 = v30[10];
  if (*(v69 + v78))
  {
    v79 = 1;
    v80 = v86;
  }

  else
  {
    v80 = v86;
    v79 = *(v86 + v78);
  }

  sub_2523B89F4(v80, type metadata accessor for AccessoryControl);

  v81 = v106;
  v82 = (v106 + v30[7]);
  v83 = v30[9];
  *(v106 + v83) = 16;
  sub_2523B8AD4(v102, v81, type metadata accessor for AccessoryControl.ElementIdentifier);
  sub_2523B8AD4(v101, v81 + v30[5], type metadata accessor for AccessoryControl.State);
  v55 = 0;
  *(v81 + v30[6]) = v105;
  *v82 = v104;
  v82[1] = v73;
  v84 = (v81 + v30[8]);
  *v84 = v75;
  v84[1] = v76;
  *(v81 + v83) = v77;
  *(v81 + v30[10]) = v79;
  v34 = v87;
  return (*(v34 + 56))(v106, v55, 1, v30);
}

uint64_t sub_2523B4B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v5 - 8);
  v70 = v63 - v6;
  v7 = sub_25268FBD0();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x28223BE20](v7);
  v65 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v69 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = v63 - v9;
  v10 = sub_25268FCF0();
  v11 = *(v10 - 8);
  v76 = v10;
  v77 = v11;
  MEMORY[0x28223BE20](v10);
  v75 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3D8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v63 - v17;
  sub_25268FA50();
  v19 = sub_25268FC10();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v18, 1, v19) == 1)
  {
    sub_252372288(v18, &qword_27F4DB3D8);
  }

  else
  {
    sub_25268FC00();
    (*(v20 + 8))(v18, v19);
  }

  sub_25268FA50();
  if (v21(v16, 1, v19) == 1)
  {
    sub_252372288(v16, &qword_27F4DB3D8);
  }

  else
  {
    sub_25268FBF0();
    (*(v20 + 8))(v16, v19);
  }

  v22 = sub_25268FB20();
  v23 = *(v22 + 16);
  if (v23)
  {
    v63[2] = a2;
    v64 = a3;
    v78 = MEMORY[0x277D84F90];
    sub_25236FF90(0, v23, 0);
    v24 = v78;
    v25 = *(v77 + 16);
    v26 = *(v77 + 80);
    v63[1] = v22;
    v27 = v22 + ((v26 + 32) & ~v26);
    v73 = *(v77 + 72);
    v74 = v25;
    v77 += 16;
    v28 = (v77 - 8);
    do
    {
      v29 = v24;
      v30 = v75;
      v31 = v76;
      v74(v75, v27, v76);
      v32 = sub_25268FCE0();
      v33 = MEMORY[0x2530A1610](v30);
      v35 = v34;
      v36 = sub_252692330();
      v37 = v30;
      v24 = v29;
      (*v28)(v37, v31);
      v78 = v29;
      v39 = *(v29 + 16);
      v38 = *(v29 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_25236FF90((v38 > 1), v39 + 1, 1);
        v24 = v78;
      }

      *(v24 + 16) = v39 + 1;
      v40 = (v24 + 32 * v39);
      v40[4] = v32;
      v40[5] = v33;
      v40[6] = v35;
      v40[7] = v36;
      v27 += v73;
      --v23;
    }

    while (v23);

    a3 = v64;
    if (*(v24 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_13:
      v76 = v24;
      v41 = v71;
      v42 = (v71 + *(v72 + 28));
      v43 = type metadata accessor for IconDescriptor();
      v44 = *(v43 + 20);
      v45 = *MEMORY[0x277D16588];
      v46 = sub_25268F910();
      (*(*(v46 - 8) + 104))(&v42[v44], v45, v46);
      *v42 = 0xD000000000000020;
      *(v42 + 1) = 0x80000002526AE140;
      v42[*(v43 + 24)] = 0;
      sub_2523B8B3C(v42, v41, type metadata accessor for IconDescriptor);
      if (*(v68 + *(type metadata accessor for MatterControlSolver.Source(0) + 48)) == 1)
      {
        v47 = v65;
        sub_25268FA30();
        LODWORD(v77) = sub_25268FBB0();
        (*(v66 + 8))(v47, v67);
      }

      else
      {
        LODWORD(v77) = StaticRVCClusterGroup.canChangeCleaningMode.getter();
      }

      v55 = v70;
      v54 = v71;
      sub_25237153C(v71, v70, &qword_27F4DAD88);
      v56 = *(v69 + 56);
      v57 = v72;
      v56(v55, 0, 1, v72);
      v58 = sub_2526922F0();
      v59 = sub_252692330();
      sub_252372288(v54, &qword_27F4DAD88);
      v60 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
      type metadata accessor for AccessoryControl.StatusProvider();
      swift_storeEnumTagMultiPayload();
      v61 = v60[6];
      v56(a3 + v61, 1, 1, v57);
      v62 = a3 + v60[11];
      *a3 = v76;
      *(a3 + 8) = v77 & 1;
      *(a3 + v60[8]) = v58;
      *(a3 + v60[9]) = v59;
      sub_252377048(v55, a3 + v61, &qword_27F4DADB8);
      *v62 = 0;
      *(v62 + 8) = 1;
      *(a3 + v60[7]) = 0;
      return (*(*(v60 - 1) + 56))(a3, 0, 1, v60);
    }
  }

  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v48 = sub_2526905A0();
  __swift_project_value_buffer(v48, qword_27F4E4B18);
  v49 = sub_252690580();
  v50 = sub_252692F10();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_252309000, v49, v50, "No options for RVC secondaryCleanControl", v51, 2u);
    MEMORY[0x2530A5A40](v51, -1, -1);
  }

  v52 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  return (*(*(v52 - 8) + 56))(a3, 1, 1, v52);
}

uint64_t sub_2523B53DC@<X0>(void *a1@<X8>)
{
  v2 = sub_25268FCF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB400);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  sub_25268FA50();
  v15 = sub_25268FC10();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_252372288(v8, &qword_27F4DB3D8);
    (*(v3 + 56))(v14, 1, 1, v2);
  }

  else
  {
    v17 = sub_25268FBE0();
    (*(v16 + 8))(v8, v15);
    sub_2525C83D8(v17, v14);
  }

  sub_25237153C(v14, v12, &qword_27F4DB400);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    sub_252372288(v14, &qword_27F4DB400);
    result = sub_252372288(v12, &qword_27F4DB400);
    v19 = 0;
  }

  else
  {
    sub_25268FCC0();
    v20 = *(v3 + 8);
    v20(v12, v2);
    v21 = sub_25268FCE0();
    v20(v5, v2);
    result = sub_252372288(v14, &qword_27F4DB400);
    v19 = v21;
  }

  *a1 = v19;
  return result;
}

uint64_t sub_2523B5714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v40[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v40[-v9];
  v11 = sub_25268FBD0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_2523B84E4();
  if (*(v15 + 2))
  {
    if (*(a1 + *(v3 + 48)) == 1)
    {
      sub_25268FA30();
      v41 = sub_25268FBB0();
      (*(v12 + 8))(v14, v11);
    }

    else
    {
      v41 = StaticRVCClusterGroup.canChangeCleaningMode.getter();
    }

    sub_2523B6498(&v46);
    v25 = &v10[*(v8 + 28)];
    v26 = type metadata accessor for IconDescriptor();
    v27 = *(v26 + 20);
    v28 = *MEMORY[0x277D16588];
    v29 = sub_25268F910();
    (*(*(v29 - 8) + 104))(&v25[v27], v28, v29);
    *v25 = 0xD000000000000020;
    *(v25 + 1) = 0x80000002526AE140;
    v25[*(v26 + 24)] = 0;
    sub_2523B8B3C(v25, v10, type metadata accessor for IconDescriptor);
    v30 = v43;
    sub_25237153C(v10, v43, &qword_27F4DAD88);
    v31 = *(v42 + 56);
    v31(v30, 0, 1, v8);
    v32 = sub_2526922F0();
    v33 = sub_252692330();
    sub_252372288(v10, &qword_27F4DAD88);
    v34 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
    type metadata accessor for AccessoryControl.StatusProvider();
    v35 = v44;
    swift_storeEnumTagMultiPayload();
    v36 = v34[6];
    v31((v35 + v36), 1, 1, v8);
    v37 = v35 + v34[11];
    *v35 = v15;
    *(v35 + 8) = v41 & 1;
    *(v35 + v34[8]) = v32;
    *(v35 + v34[9]) = v33;
    sub_252377048(v30, v35 + v36, &qword_27F4DADB8);
    *v37 = 0;
    *(v37 + 8) = 1;
    *(v35 + v34[7]) = 1;
    return (*(*(v34 - 1) + 56))(v35, 0, 1, v34);
  }

  else
  {

    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v16 = sub_2526905A0();
    __swift_project_value_buffer(v16, qword_27F4E4B18);
    sub_2523B8B3C(a1, v5, type metadata accessor for MatterControlSolver.Source);
    v17 = sub_252690580();
    v18 = sub_252692EF0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45 = v20;
      *v19 = 136446210;
      v21 = MatterControlSolver.SourcePath.description.getter();
      v23 = v22;
      sub_2523B89F4(v5, type metadata accessor for MatterControlSolver.Source);
      v24 = sub_2525BDA90(v21, v23, &v45);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_252309000, v17, v18, "No options for RVC primaryCleanControl in %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x2530A5A40](v20, -1, -1);
      MEMORY[0x2530A5A40](v19, -1, -1);
    }

    else
    {

      sub_2523B89F4(v5, type metadata accessor for MatterControlSolver.Source);
    }

    v39 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
    return (*(*(v39 - 8) + 56))(v44, 1, 1, v39);
  }
}

uint64_t sub_2523B5D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = &v51 - v11;
  v12 = sub_25268FC20();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MatterControlSolver.SourcePath(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *a1;
  v54 = *(a1 + 8);
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v19 = sub_2526905A0();
  __swift_project_value_buffer(v19, qword_27F4E4B18);
  v56 = a2;
  sub_2523B8B3C(a2, v18, type metadata accessor for MatterControlSolver.SourcePath);
  (*(v13 + 16))(v15, a3, v12);
  v20 = sub_252690580();
  v21 = sub_252692F10();
  if (os_log_type_enabled(v20, v21))
  {
    v53 = a4;
    v22 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v58 = v52;
    *v22 = 136446466;
    v23 = v18[*(v16 + 24)];
    if (v23 <= 3)
    {
      v32 = 0xE400000000000000;
      v33 = 1701736270;
      v34 = 0x80000002526AE100;
      v35 = 0xD00000000000001ELL;
      if (v23 != 2)
      {
        v35 = 0x61502F7472617453;
        v34 = 0xEB00000000657375;
      }

      if (v18[*(v16 + 24)])
      {
        v33 = 0xD00000000000001CLL;
        v32 = 0x80000002526AE120;
      }

      if (v18[*(v16 + 24)] <= 1u)
      {
        v30 = v33;
      }

      else
      {
        v30 = v35;
      }

      if (v23 <= 1)
      {
        v31 = v32;
      }

      else
      {
        v31 = v34;
      }
    }

    else
    {
      v24 = 0xED0000646C6F4820;
      v25 = 0x746E696F70746553;
      v26 = 0xEE00746573657250;
      v27 = 0x20746E6572727543;
      if (v23 != 7)
      {
        v27 = 0xD000000000000014;
        v26 = 0x80000002526AE0E0;
      }

      if (v23 != 6)
      {
        v25 = v27;
        v24 = v26;
      }

      v28 = 0xEE006B636F44206FLL;
      v29 = 0x54206E7275746552;
      if (v23 != 4)
      {
        v29 = 0x52207463656C6553;
        v28 = 0xEC000000736D6F6FLL;
      }

      if (v18[*(v16 + 24)] <= 5u)
      {
        v30 = v29;
      }

      else
      {
        v30 = v25;
      }

      if (v23 <= 5)
      {
        v31 = v28;
      }

      else
      {
        v31 = v24;
      }
    }

    sub_2523B89F4(v18, type metadata accessor for MatterControlSolver.SourcePath);
    v36 = sub_2525BDA90(v30, v31, &v58);

    *(v22 + 4) = v36;
    *(v22 + 12) = 2080;
    v37 = sub_25268FA80();
    if (v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = MEMORY[0x277D84F90];
    }

    v39 = sub_25268FC10();
    v40 = MEMORY[0x2530A4900](v38, v39);
    v42 = v41;

    (*(v13 + 8))(v15, v12);
    v43 = sub_2525BDA90(v40, v42, &v58);

    *(v22 + 14) = v43;
    _os_log_impl(&dword_252309000, v20, v21, "User pressed %{public}s button. allCleaningModes:%s", v22, 0x16u);
    v44 = v52;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v44, -1, -1);
    MEMORY[0x2530A5A40](v22, -1, -1);

    a4 = v53;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    sub_2523B89F4(v18, type metadata accessor for MatterControlSolver.SourcePath);
  }

  v45 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  v46 = *(*(v45 - 8) + 56);
  v47 = v57;
  v46(v57, 1, 1, v45);
  v58 = v55;
  v59 = v54;
  sub_2523B62E4(&v58, a4, &v60);
  v48 = v60;
  v46(a5, 1, 1, v45);
  v49 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
  *(a5 + v49) = 0;
  sub_252377048(v47, a5, &qword_27F4DB210);

  *(a5 + v49) = v48;
  return result;
}

void sub_2523B62E4(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X2>, void *a3@<X8>)
{
  if (a1[1])
  {
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v4 = sub_2526905A0();
    __swift_project_value_buffer(v4, qword_27F4E4B18);
    v5 = sub_252690580();
    v6 = sub_252692EF0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3C8);
      v9 = sub_252692C20();
      v11 = sub_2525BDA90(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_252309000, v5, v6, "While trying to set Picker state, failed to get selected option: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x2530A5A40](v8, -1, -1);
      MEMORY[0x2530A5A40](v7, -1, -1);
    }

    *a3 = 0;
  }

  else
  {
    v12 = *a1;

    a2(v12);
  }
}

uint64_t sub_2523B6498@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3D8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  sub_25268FA50();
  v8 = sub_25268FC10();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) == 1)
  {
    sub_252372288(v7, &qword_27F4DB3D8);
    v11 = 0;
  }

  else
  {
    v11 = sub_25268FC00();
    (*(v9 + 8))(v7, v8);
  }

  sub_25268FA50();
  if (v10(v5, 1, v8) == 1)
  {
    result = sub_252372288(v5, &qword_27F4DB3D8);
  }

  else
  {
    v14 = sub_25268FBF0();
    result = (*(v9 + 8))(v5, v8);
    if (v11)
    {
      if (v14)
      {
        v13 = 1;
        goto LABEL_7;
      }
    }

    else if (v14)
    {
      v13 = 2;
      goto LABEL_7;
    }
  }

  v13 = 0;
LABEL_7:
  *a1 = v13;
  return result;
}

uint64_t sub_2523B6694@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = *a1;
  if (v9)
  {
    if (*(v9 + 16))
    {
      v10 = sub_252372350(0);
      if (v11)
      {
        sub_2523B698C(*(*(v9 + 56) + 8 * v10), a2, &v33);
        v12 = v33;
        if (v33)
        {
          v13 = sub_252368FE0(0, 1, 1, MEMORY[0x277D84F90]);
          v14 = *(v13 + 2);
          v15 = *(v13 + 3);
          v16 = v14 + 1;
          if (v14 >= v15 >> 1)
          {
            v32 = v14 + 1;
            v29 = v13;
            v30 = v14;
            v31 = sub_252368FE0((v15 > 1), v14 + 1, 1, v29);
            v14 = v30;
            v16 = v32;
            v13 = v31;
          }

          *(v13 + 2) = v16;
          *&v13[8 * v14 + 32] = v12;
          if (!*(v9 + 16))
          {
            goto LABEL_21;
          }

          goto LABEL_13;
        }
      }

      v13 = MEMORY[0x277D84F90];
      if (*(v9 + 16))
      {
LABEL_13:
        v20 = sub_252372350(1);
        if (v21)
        {
          sub_2523B7510(*(*(v9 + 56) + 8 * v20), a2, &v33);
          v22 = v33;
          if (v33)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_252368FE0(0, *(v13 + 2) + 1, 1, v13);
            }

            v24 = *(v13 + 2);
            v23 = *(v13 + 3);
            if (v24 >= v23 >> 1)
            {
              v13 = sub_252368FE0((v23 > 1), v24 + 1, 1, v13);
            }

            *(v13 + 2) = v24 + 1;
            *&v13[8 * v24 + 32] = v22;
          }
        }
      }
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

LABEL_21:
    v25 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v26 = *(*(v25 - 8) + 56);
    v26(v8, 1, 1, v25);
    static AccessoryControl.MatterWriteSpecification.merge(_:)(v13, &v33);

    v27 = v33;
    v26(a3, 1, 1, v25);
    v28 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v28) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210);

    *(a3 + v28) = v27;
    return result;
  }

  if (qword_27F4DA998 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  v18 = __swift_project_value_buffer(v17, qword_27F4DB8A0);
  return sub_2523B8B3C(v18, a3, type metadata accessor for AccessoryControl.WriteSpecification);
}

void sub_2523B698C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v93 = a1;
  v85 = sub_25268FBA0();
  v5 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25268FB90();
  v92 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v84 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v89 = &v83 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v83 - v13;
  v88 = type metadata accessor for MatterControlSolver.SourcePath(0);
  v15 = MEMORY[0x28223BE20](v88);
  v86 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v83 - v17;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v19 = sub_2526905A0();
  __swift_project_value_buffer(v19, qword_27F4E4B18);
  sub_2523B8B3C(a2, v18, type metadata accessor for MatterControlSolver.SourcePath);
  v20 = sub_252690580();
  v21 = sub_252692F10();
  v22 = os_log_type_enabled(v20, v21);
  v90 = v14;
  v91 = a3;
  if (v22)
  {
    v83 = v8;
    v87 = a2;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v94 = v24;
    *v23 = 136446210;
    v25 = v18[*(v88 + 24)];
    if (v25 <= 3)
    {
      v34 = 1701736270;
      v35 = 0xE400000000000000;
      v36 = 0x80000002526AE100;
      v37 = 0xD00000000000001ELL;
      if (v25 != 2)
      {
        v37 = 0x61502F7472617453;
        v36 = 0xEB00000000657375;
      }

      if (v18[*(v88 + 24)])
      {
        v34 = 0xD00000000000001CLL;
        v35 = 0x80000002526AE120;
      }

      if (v18[*(v88 + 24)] <= 1u)
      {
        v32 = v34;
      }

      else
      {
        v32 = v37;
      }

      if (v18[*(v88 + 24)] <= 1u)
      {
        v33 = v35;
      }

      else
      {
        v33 = v36;
      }
    }

    else
    {
      v26 = 0x746E696F70746553;
      v27 = 0xED0000646C6F4820;
      v28 = 0x20746E6572727543;
      v29 = 0xEE00746573657250;
      if (v25 != 7)
      {
        v28 = 0xD000000000000014;
        v29 = 0x80000002526AE0E0;
      }

      if (v25 != 6)
      {
        v26 = v28;
        v27 = v29;
      }

      v30 = 0x54206E7275746552;
      v31 = 0xEE006B636F44206FLL;
      if (v25 != 4)
      {
        v30 = 0x52207463656C6553;
        v31 = 0xEC000000736D6F6FLL;
      }

      if (v18[*(v88 + 24)] <= 5u)
      {
        v32 = v30;
      }

      else
      {
        v32 = v26;
      }

      if (v18[*(v88 + 24)] <= 5u)
      {
        v33 = v31;
      }

      else
      {
        v33 = v27;
      }
    }

    sub_2523B89F4(v18, type metadata accessor for MatterControlSolver.SourcePath);
    v38 = sub_2525BDA90(v32, v33, &v94);

    *(v23 + 4) = v38;
    _os_log_impl(&dword_252309000, v20, v21, "User pressed %{public}s button.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x2530A5A40](v24, -1, -1);
    MEMORY[0x2530A5A40](v23, -1, -1);

    v14 = v90;
    a3 = v91;
    a2 = v87;
    v8 = v83;
  }

  else
  {

    sub_2523B89F4(v18, type metadata accessor for MatterControlSolver.SourcePath);
  }

  v40 = v92;
  v39 = v93;
  if (v93 >= 3)
  {
    v49 = v86;
    sub_2523B8B3C(a2, v86, type metadata accessor for MatterControlSolver.SourcePath);
    v50 = sub_252690580();
    v51 = sub_252692EF0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v94 = v53;
      *v52 = 136446466;
      v54 = *(v49 + *(v88 + 24));
      if (v54 <= 3)
      {
        if (*(v49 + *(v88 + 24)) > 1u)
        {
          if (v54 == 2)
          {
            v62 = 0x80000002526AE100;
            v61 = 0xD00000000000001ELL;
          }

          else
          {
            v61 = 0x61502F7472617453;
            v62 = 0xEB00000000657375;
          }
        }

        else
        {
          if (*(v49 + *(v88 + 24)))
          {
            v61 = 0xD00000000000001CLL;
          }

          else
          {
            v61 = 1701736270;
          }

          if (*(v49 + *(v88 + 24)))
          {
            v62 = 0x80000002526AE120;
          }

          else
          {
            v62 = 0xE400000000000000;
          }
        }
      }

      else
      {
        v55 = 0x746E696F70746553;
        v56 = 0xED0000646C6F4820;
        v57 = 0x20746E6572727543;
        v58 = 0xEE00746573657250;
        if (v54 != 7)
        {
          v57 = 0xD000000000000014;
          v58 = 0x80000002526AE0E0;
        }

        if (v54 != 6)
        {
          v55 = v57;
          v56 = v58;
        }

        v59 = 0x54206E7275746552;
        v60 = 0xEE006B636F44206FLL;
        if (v54 != 4)
        {
          v59 = 0x52207463656C6553;
          v60 = 0xEC000000736D6F6FLL;
        }

        if (*(v49 + *(v88 + 24)) <= 5u)
        {
          v61 = v59;
        }

        else
        {
          v61 = v55;
        }

        if (*(v49 + *(v88 + 24)) <= 5u)
        {
          v62 = v60;
        }

        else
        {
          v62 = v56;
        }
      }

      sub_2523B89F4(v49, type metadata accessor for MatterControlSolver.SourcePath);
      v82 = sub_2525BDA90(v61, v62, &v94);

      *(v52 + 4) = v82;
      *(v52 + 12) = 2050;
      *(v52 + 14) = v93;
      _os_log_impl(&dword_252309000, v50, v51, "While trying to set Picker state with controlId: %{public}s, failed to find a selectedOption for selected ID: %{public}ld", v52, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x2530A5A40](v53, -1, -1);
      MEMORY[0x2530A5A40](v52, -1, -1);
    }

    else
    {

      sub_2523B89F4(v49, type metadata accessor for MatterControlSolver.SourcePath);
    }

    *a3 = 0;
  }

  else
  {
    v41 = v85;
    (*(v5 + 104))(v7, **(&unk_27970C2D0 + v93), v85);
    (*(v5 + 32))(v14, v7, v41);
    (*(v40 + 104))(v14, *MEMORY[0x277D16950], v8);
    v42 = v89;
    v88 = *(v40 + 16);
    (v88)(v89, v14, v8);
    v43 = sub_252690580();
    v44 = sub_252692F10();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v94 = v46;
      *v45 = 136446466;
      v87 = a2;
      LODWORD(v86) = v44;
      if (v39)
      {
        if (v39 == 2)
        {
          v47 = 0xE700000000000000;
          v48 = 0x796C6E4F706F6DLL;
        }

        else
        {
          v47 = 0xEC000000706F4D64;
          v48 = 0x6E416D7575636176;
        }
      }

      else
      {
        v47 = 0xEA0000000000796CLL;
        v48 = 0x6E4F6D7575636176;
      }

      v66 = sub_2525BDA90(v48, v47, &v94);

      *(v45 + 4) = v66;
      *(v45 + 12) = 2082;
      v65 = v88;
      v67 = v89;
      (v88)(v84, v89, v8);
      v68 = sub_252692C20();
      v70 = v69;
      v71 = v67;
      v64 = *(v92 + 8);
      v64(v71, v8);
      v72 = sub_2525BDA90(v68, v70, &v94);

      *(v45 + 14) = v72;
      _os_log_impl(&dword_252309000, v43, v86, "setPrimaryCleanState: selectedOption: (%{public}s) command: %{public}s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v46, -1, -1);
      MEMORY[0x2530A5A40](v45, -1, -1);

      a2 = v87;
    }

    else
    {

      v63 = v42;
      v64 = *(v40 + 8);
      v64(v63, v8);
      v65 = v88;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE80);
    v73 = swift_allocObject();
    v93 = xmmword_252694E90;
    *(v73 + 16) = xmmword_252694E90;
    *(v73 + 56) = v8;
    *(v73 + 64) = sub_2523B848C();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v73 + 32));
    v75 = v90;
    v65(boxed_opaque_existential_0, v90, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB320);
    v76 = sub_25268E710();
    v77 = v8;
    v78 = *(v76 - 8);
    v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v93;
    (*(v78 + 16))(v80 + v79, a2, v76);
    v81 = sub_25240C51C(v80);
    swift_setDeallocating();
    (*(v78 + 8))(v80 + v79, v76);
    swift_deallocClassInstance();
    sub_2523F648C(v73, v81, &v94);
    v64(v75, v77);
    *v91 = v94;
  }
}

void sub_2523B7510(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v81 = a2;
  v82 = a3;
  v77 = type metadata accessor for MatterControlSolver.SourcePath(0);
  MEMORY[0x28223BE20](v77);
  v79 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v84 = sub_25268FB90();
  v5 = *(v84 - 8);
  v6 = MEMORY[0x28223BE20](v84);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v78 = &v72 - v10;
  MEMORY[0x28223BE20](v9);
  v80 = &v72 - v11;
  v12 = sub_25268E310();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB400);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v72 - v17;
  v19 = sub_25268FCF0();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v83 = &v72 - v24;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (a1 >> 16)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  (*(v13 + 104))(v15, *MEMORY[0x277D15538], v12);
  sub_25268FCD0();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_252372288(v18, &qword_27F4DB400);
    if (qword_27F4DABD0 == -1)
    {
LABEL_5:
      v25 = sub_2526905A0();
      __swift_project_value_buffer(v25, qword_27F4E4B18);
      v26 = v79;
      sub_2523B8B3C(v81, v79, type metadata accessor for MatterControlSolver.SourcePath);
      v27 = sub_252690580();
      v28 = sub_252692EF0();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v85 = v30;
        *v29 = 136446466;
        v31 = *(v26 + *(v77 + 24));
        if (v31 <= 3)
        {
          if (*(v26 + *(v77 + 24)) > 1u)
          {
            if (v31 == 2)
            {
              v32 = 0x80000002526AE100;
              v33 = 0xD00000000000001ELL;
            }

            else
            {
              v32 = 0xEB00000000657375;
              v33 = 0x61502F7472617453;
            }
          }

          else if (*(v26 + *(v77 + 24)))
          {
            v32 = 0x80000002526AE120;
            v33 = 0xD00000000000001CLL;
          }

          else
          {
            v32 = 0xE400000000000000;
            v33 = 1701736270;
          }
        }

        else if (*(v26 + *(v77 + 24)) <= 5u)
        {
          if (v31 == 4)
          {
            v32 = 0xEE006B636F44206FLL;
            v33 = 0x54206E7275746552;
          }

          else
          {
            v32 = 0xEC000000736D6F6FLL;
            v33 = 0x52207463656C6553;
          }
        }

        else if (v31 == 6)
        {
          v32 = 0xED0000646C6F4820;
          v33 = 0x746E696F70746553;
        }

        else if (v31 == 7)
        {
          v32 = 0xEE00746573657250;
          v33 = 0x20746E6572727543;
        }

        else
        {
          v33 = 0xD000000000000014;
          v32 = 0x80000002526AE0E0;
        }

        sub_2523B89F4(v26, type metadata accessor for MatterControlSolver.SourcePath);
        v71 = sub_2525BDA90(v33, v32, &v85);

        *(v29 + 4) = v71;
        *(v29 + 12) = 2050;
        *(v29 + 14) = a1;
        _os_log_impl(&dword_252309000, v27, v28, "While trying to set Picker state with controlId: %{public}s, failed to find a tag for selected ID: %{public}ld", v29, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x2530A5A40](v30, -1, -1);
        MEMORY[0x2530A5A40](v29, -1, -1);
      }

      else
      {

        sub_2523B89F4(v26, type metadata accessor for MatterControlSolver.SourcePath);
      }

      *v82 = 0;
      return;
    }

LABEL_34:
    swift_once();
    goto LABEL_5;
  }

  v77 = v8;
  v34 = v83;
  (*(v20 + 32))(v83, v18, v19);
  v35 = *(v20 + 16);
  v36 = v80;
  v35(v80, v34, v19);
  v37 = *MEMORY[0x277D16998];
  v38 = sub_25268FBA0();
  (*(*(v38 - 8) + 104))(v36, v37, v38);
  v39 = v84;
  (*(v5 + 104))(v36, *MEMORY[0x277D16950], v84);
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v40 = sub_2526905A0();
  __swift_project_value_buffer(v40, qword_27F4E4B18);
  v35(v23, v34, v19);
  v41 = *(v5 + 16);
  v42 = v78;
  v41(v78, v36, v39);
  v43 = sub_252690580();
  v75 = sub_252692F10();
  if (os_log_type_enabled(v43, v75))
  {
    v44 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v85 = v74;
    *v44 = 136446466;
    v73 = v43;
    v45 = sub_25268FCB0();
    v46 = v42;
    v48 = v47;
    v76 = v41;
    v49 = v5;
    v50 = *(v20 + 8);
    v79 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50(v23, v19);
    v51 = sub_2525BDA90(v45, v48, &v85);

    *(v44 + 4) = v51;
    *(v44 + 12) = 2080;
    v76(v77, v46, v84);
    v52 = sub_252692C20();
    v54 = v53;
    v55 = *(v49 + 8);
    v77 = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v78 = v55;
    v56 = v46;
    v39 = v84;
    (v55)(v56, v84);
    v41 = v76;
    v57 = sub_2525BDA90(v52, v54, &v85);

    *(v44 + 14) = v57;
    v58 = v73;
    _os_log_impl(&dword_252309000, v73, v75, "setSecondaryCleanState: tag: (%{public}s) command: %s", v44, 0x16u);
    v59 = v74;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v59, -1, -1);
    v60 = v44;
    v36 = v80;
    MEMORY[0x2530A5A40](v60, -1, -1);
  }

  else
  {

    v61 = *(v5 + 8);
    v77 = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v78 = v61;
    (v61)(v42, v39);
    v50 = *(v20 + 8);
    v79 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50(v23, v19);
  }

  v62 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE80);
  v63 = swift_allocObject();
  v84 = xmmword_252694E90;
  *(v63 + 16) = xmmword_252694E90;
  *(v63 + 56) = v39;
  *(v63 + 64) = sub_2523B848C();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v63 + 32));
  v41(boxed_opaque_existential_0, v36, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB320);
  v65 = sub_25268E710();
  v66 = *(v65 - 8);
  v67 = v36;
  v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = v84;
  (*(v66 + 16))(v69 + v68, v62, v65);
  v70 = sub_25240C51C(v69);
  swift_setDeallocating();
  (*(v66 + 8))(v69 + v68, v65);
  swift_deallocClassInstance();
  sub_2523F648C(v63, v70, &v85);
  (v78)(v67, v39);
  v50(v83, v19);
  *v82 = v85;
}

unint64_t AccessoryControlSolver.Matter.RobotVacuum.PrimaryModePickerValue.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t AccessoryControlSolver.Matter.RobotVacuum.PrimaryModePickerValue.cleanMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_25268FBA0();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_27970C2D0 + v3);

  return v5(a1, v6, v4);
}

uint64_t AccessoryControlSolver.Matter.RobotVacuum.PrimaryModePickerValue.description.getter()
{
  v1 = 0x6E416D7575636176;
  if (*v0 != 1)
  {
    v1 = 0x796C6E4F706F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E4F6D7575636176;
  }
}

unint64_t sub_2523B8104()
{
  result = qword_27F4DB3A8;
  if (!qword_27F4DB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB3A8);
  }

  return result;
}

uint64_t _s22HomeAccessoryControlUI0bC5GroupV010DecorationC6ConfigV14BackgroundModeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  return sub_2526934C0();
}

uint64_t sub_2523B81A0()
{
  v1 = *v0;
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  return sub_2526934C0();
}

unint64_t sub_2523B81F0()
{
  result = qword_27F4DB3B0;
  if (!qword_27F4DB3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB3B0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2523B82AC()
{
  v1 = 0x6E416D7575636176;
  if (*v0 != 1)
  {
    v1 = 0x796C6E4F706F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E4F6D7575636176;
  }
}

uint64_t getEnumTagSinglePayload for AccessoryControlSolver.Context.LayoutType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AccessoryControlSolver.Context.LayoutType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2523B848C()
{
  result = qword_27F4DB3D0;
  if (!qword_27F4DB3D0)
  {
    sub_25268FB90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB3D0);
  }

  return result;
}

char *sub_2523B84E4()
{
  v0 = sub_25268FC10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25268FA80();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(v5 + 16);
  if (!v6)
  {

    return MEMORY[0x277D84F90];
  }

  v38 = 0;
  v39 = 0;
  v7 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v8 = (v1 + 8);
  v40 = v6 - 1;
  v9 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        if (v9 >= *(v5 + 16))
        {
          __break(1u);
LABEL_47:

          if ((v38 & 0x100000000) == 0)
          {
            v17 = MEMORY[0x277D84F90];
            if (v39)
            {
              v36 = 1;
              goto LABEL_31;
            }

LABEL_38:
            v28 = sub_252692C40();
            v30 = v29;
            v31 = sub_252692330();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_252368918(0, *(v17 + 2) + 1, 1, v17);
            }

            v33 = *(v17 + 2);
            v32 = *(v17 + 3);
            if (v33 >= v32 >> 1)
            {
              v17 = sub_252368918((v32 > 1), v33 + 1, 1, v17);
            }

            *(v17 + 2) = v33 + 1;
            v34 = &v17[32 * v33];
            *(v34 + 4) = 1;
            *(v34 + 5) = v28;
            *(v34 + 6) = v30;
            *(v34 + 7) = v31;
            return v17;
          }

          v36 = 1;
LABEL_22:
          v12 = v39;
          goto LABEL_23;
        }

        (*(v1 + 16))(v3, v7 + *(v1 + 72) * v9, v0);
        if ((sub_25268FBF0() & 1) == 0 || (sub_25268FC00() & 1) == 0)
        {
          break;
        }

        (*v8)(v3, v0);
        LODWORD(v38) = 1;
        if (v40 == v9)
        {
          goto LABEL_47;
        }

        ++v9;
      }

      if (sub_25268FBF0())
      {
        break;
      }

      v10 = sub_25268FC00();
      (*v8)(v3, v0);
      if (v10)
      {
        HIDWORD(v38) = 1;
        v11 = v40 == v9++;
        if (v11)
        {

          v36 = v38;
          goto LABEL_22;
        }
      }

      else if (v6 == ++v9)
      {

        v36 = v38;
        if ((v38 & 0x100000000) != 0)
        {
          goto LABEL_22;
        }

        v17 = MEMORY[0x277D84F90];
        if (v39)
        {
          goto LABEL_31;
        }

LABEL_37:
        if ((v36 & 1) == 0)
        {
          return v17;
        }

        goto LABEL_38;
      }
    }

    (*v8)(v3, v0);
    v39 = 1;
    v11 = v40 == v9++;
  }

  while (!v11);

  if ((v38 & 0x100000000) == 0)
  {
    v17 = MEMORY[0x277D84F90];
    v36 = v38;
    goto LABEL_31;
  }

  v12 = 1;
  v36 = v38;
LABEL_23:
  v13 = sub_252692C40();
  v15 = v14;
  v16 = sub_252692330();
  v17 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_252368918(0, *(v17 + 2) + 1, 1, v17);
  }

  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  if (v19 >= v18 >> 1)
  {
    v17 = sub_252368918((v18 > 1), v19 + 1, 1, v17);
  }

  *(v17 + 2) = v19 + 1;
  v20 = &v17[32 * v19];
  *(v20 + 4) = 0;
  *(v20 + 5) = v13;
  *(v20 + 6) = v15;
  *(v20 + 7) = v16;
  if ((v12 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_31:
  v21 = sub_252692C40();
  v23 = v22;
  v24 = sub_252692330();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_252368918(0, *(v17 + 2) + 1, 1, v17);
  }

  v26 = *(v17 + 2);
  v25 = *(v17 + 3);
  if (v26 >= v25 >> 1)
  {
    v17 = sub_252368918((v25 > 1), v26 + 1, 1, v17);
  }

  *(v17 + 2) = v26 + 1;
  v27 = &v17[32 * v26];
  *(v27 + 4) = 2;
  *(v27 + 5) = v21;
  *(v27 + 6) = v23;
  *(v27 + 7) = v24;
  if (v36)
  {
    goto LABEL_38;
  }

  return v17;
}

uint64_t sub_2523B89F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2523B8A54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MatterControlSolver.SourcePath(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2523B6694(a1, v6, a2);
}

uint64_t sub_2523B8AD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523B8B3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for MatterControlSolver.SourcePath(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*v1 + 64);
  v4 = sub_25268FC20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v13 = *(v5 + 64);
  v7 = sub_25268E710();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v1[7];
  v9 = sub_25268E310();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v0 + v3 + v8, v9);
  }

  v11 = (v3 + v14 + v6) & ~v6;
  (*(v5 + 8))(v0 + v11, v4);

  return MEMORY[0x2821FE8E8](v0, v11 + v13, v2 | v6 | 7);
}

uint64_t sub_2523B8DB0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for MatterControlSolver.SourcePath(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_25268FC20() - 8);
  return sub_2523B5D10(a1, v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a2, a3);
}

uint64_t sub_2523B8E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a2;
  v95 = a1;
  v96 = a4;
  v5 = sub_25268FAE0();
  v88 = *(v5 - 8);
  v89 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v85 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v84 = &v74 - v8;
  v9 = sub_25268DA10();
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x28223BE20](v9);
  v83 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v80);
  v82 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for MatterControlSolver.Source(0);
  v75 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v76 = v12;
  v77 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ControlAction(0);
  MEMORY[0x28223BE20](v78);
  v92 = (&v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v74);
  v81 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25268FB50();
  v90 = *(v15 - 8);
  v91 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB410);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v74 - v24;
  v26 = type metadata accessor for AccessoryControl.ValueDestination(0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v74 - v30;
  (*(v19 + 56))(&v74 - v30, 1, 1, v18);
  v32 = *(v23 + 56);
  v79 = a3;
  sub_2523BA6C4(a3, v25, type metadata accessor for AccessoryControl.ValueDestination);
  sub_2523BA6C4(v31, &v25[v32], type metadata accessor for AccessoryControl.ValueDestination);
  v33 = *(v19 + 48);
  if (v33(v25, 1, v18) == 1)
  {
    sub_2523BA72C(v31, type metadata accessor for AccessoryControl.ValueDestination);
    if (v33(&v25[v32], 1, v18) == 1)
    {
      goto LABEL_8;
    }

LABEL_6:
    sub_2523BA2E0(v25);
LABEL_23:
    v37 = type metadata accessor for AccessoryControl(0);
    return (*(*(v37 - 8) + 56))(v96, 1, 1, v37);
  }

  sub_2523BA6C4(v25, v29, type metadata accessor for AccessoryControl.ValueDestination);
  if (v33(&v25[v32], 1, v18) == 1)
  {
    sub_2523BA72C(v31, type metadata accessor for AccessoryControl.ValueDestination);
    sub_2523BA72C(v29, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
    goto LABEL_6;
  }

  sub_2523BA5EC(&v25[v32], v21, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  v34 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
  sub_2523BA72C(v21, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  sub_2523BA72C(v31, type metadata accessor for AccessoryControl.ValueDestination);
  sub_2523BA72C(v29, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  if ((v34 & 1) == 0)
  {
LABEL_22:
    sub_2523BA72C(v25, type metadata accessor for AccessoryControl.ValueDestination);
    goto LABEL_23;
  }

LABEL_8:
  sub_2523BA72C(v25, type metadata accessor for AccessoryControl.ValueDestination);
  v35 = v95;
  if (*(v95 + *(v94 + 36)) != 1)
  {
    goto LABEL_23;
  }

  sub_25268FB70();
  v36 = (*(v90 + 88))(v17, v91);
  if (v36 != *MEMORY[0x277D16880] && v36 != *MEMORY[0x277D16888] && v36 != *MEMORY[0x277D16878])
  {
    if (v36 == *MEMORY[0x277D16868] || v36 == *MEMORY[0x277D16850] || v36 == *MEMORY[0x277D16898] || v36 == *MEMORY[0x277D16870] || v36 == *MEMORY[0x277D16858] || v36 == *MEMORY[0x277D16840] || v36 == *MEMORY[0x277D16860] || v36 == *MEMORY[0x277D16848] || v36 == *MEMORY[0x277D16890])
    {
      goto LABEL_23;
    }

    sub_2526933A0();
    __break(1u);
    goto LABEL_22;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v40 = v81;
  v41 = &v81[*(v39 + 28)];
  v42 = type metadata accessor for IconDescriptor();
  v43 = *(v42 + 20);
  v44 = *MEMORY[0x277D16578];
  v45 = sub_25268F910();
  (*(*(v45 - 8) + 104))(&v41[v43], v44, v45);
  *v41 = 0x69662E6573756F68;
  *(v41 + 1) = 0xEA00000000006C6CLL;
  v41[*(v42 + 24)] = 0;
  sub_2523BA6C4(v41, v40, type metadata accessor for IconDescriptor);
  v46 = sub_252692330();
  v47 = sub_252692C40();
  v49 = v48;
  v50 = v74;
  type metadata accessor for ControlTextModifier.Config(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AccessoryControl.StatusProvider();
  swift_storeEnumTagMultiPayload();
  v51 = v40 + v50[7];
  *v51 = 0u;
  *(v51 + 16) = 0u;
  *(v51 + 32) = -1;
  v52 = v40 + v50[8];
  *v52 = 0u;
  *(v52 + 16) = 0u;
  *(v52 + 32) = -1;
  v53 = v50[12];
  *(v40 + v50[5]) = v46;
  v54 = (v40 + v50[10]);
  *v54 = 0;
  v54[1] = 0xE000000000000000;
  sub_252376DA8(*v51, *(v51 + 8), *(v51 + 16), *(v51 + 24), *(v51 + 32));
  *v51 = v47;
  *(v51 + 8) = v49;
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = 0;
  sub_252376DA8(*v52, *(v52 + 8), *(v52 + 16), *(v52 + 24), *(v52 + 32));
  *v52 = 0u;
  *(v52 + 16) = 0u;
  *(v52 + 32) = -1;
  *(v40 + v53) = 0;
  *(v40 + v50[9]) = 0;
  v55 = v78;
  v56 = v92;
  sub_2523BA6C4(v79, v92 + *(v78 + 20), type metadata accessor for AccessoryControl.ValueDestination);
  v57 = v77;
  sub_2523BA6C4(v35, v77, type metadata accessor for MatterControlSolver.Source);
  v58 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v59 = swift_allocObject();
  sub_2523BA5EC(v57, v59 + v58, type metadata accessor for MatterControlSolver.Source);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB418);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_252694E90;
  *(v60 + 32) = sub_2523BA654;
  *(v60 + 40) = v59;
  *v56 = v60;
  v61 = (v56 + *(v55 + 24));
  *v61 = 0x656D6F486F67;
  v61[1] = 0xE600000000000000;
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB420) + 48);
  v63 = v82;
  sub_2523BA6C4(v40, v82, type metadata accessor for AccessoryControl.BinaryViewConfig);
  sub_2523BA6C4(v56, v63 + v62, type metadata accessor for ControlAction);
  swift_storeEnumTagMultiPayload();
  v64 = v83;
  MatterControlSolver.SourcePath.uuid.getter(v83);
  v65 = type metadata accessor for AccessoryControl(0);
  v66 = v96;
  sub_2523BA6C4(v63, v96 + v65[5], type metadata accessor for AccessoryControl.State);
  v67 = v84;
  sub_25268FB60();
  v68 = v85;
  sub_25268FAB0();
  LOBYTE(v58) = MEMORY[0x2530A1640](v67, v68);
  v69 = *(v88 + 8);
  v70 = v68;
  v71 = v89;
  v69(v70, v89);
  v69(v67, v71);
  sub_2523BA72C(v63, type metadata accessor for AccessoryControl.State);
  sub_2523BA72C(v92, type metadata accessor for ControlAction);
  (*(v86 + 32))(v66, v64, v87);
  type metadata accessor for AccessoryControl.ElementIdentifier();
  swift_storeEnumTagMultiPayload();
  v72 = (v66 + v65[7]);
  v73 = v65[9];
  *(v66 + v73) = 16;
  *(v66 + v65[6]) = 0;
  *v72 = 0;
  v72[1] = 0;
  *(v66 + v65[8]) = 1028;
  *(v66 + v73) = 3;
  *(v66 + v65[10]) = v58 & 1;
  sub_2523BA72C(v40, type metadata accessor for AccessoryControl.BinaryViewConfig);
  return (*(*(v65 - 1) + 56))(v66, 0, 1, v65);
}

uint64_t sub_2523B9B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_25268FAE0();
  v59 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v58 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v53 - v6;
  v7 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25268FB50();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MatterControlSolver.Source(0);
  if ((*(a1 + *(v17 + 48)) & 1) != 0 || *(a1 + *(v17 + 36)) != 1)
  {
    goto LABEL_21;
  }

  v56 = v3;
  sub_25268FB70();
  v18 = (*(v14 + 88))(v16, v13);
  if (v18 == *MEMORY[0x277D16880] || v18 == *MEMORY[0x277D16888] || v18 == *MEMORY[0x277D16878])
  {
    v21 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28)];
    v22 = type metadata accessor for IconDescriptor();
    v23 = *(v22 + 20);
    v24 = *MEMORY[0x277D16578];
    v25 = sub_25268F910();
    (*(*(v25 - 8) + 104))(&v21[v23], v24, v25);
    *v21 = 0x69662E6573756F68;
    *(v21 + 1) = 0xEA00000000006C6CLL;
    v21[*(v22 + 24)] = 0;
    sub_2523BA6C4(v21, v12, type metadata accessor for IconDescriptor);
    v26 = sub_252692330();
    v27 = sub_252692C40();
    v54 = v28;
    v55 = v27;
    type metadata accessor for ControlTextModifier.Config(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for AccessoryControl.StatusProvider();
    swift_storeEnumTagMultiPayload();
    v29 = &v12[v10[7]];
    *v29 = 0u;
    *(v29 + 1) = 0u;
    v29[32] = -1;
    v30 = &v12[v10[8]];
    *v30 = 0u;
    *(v30 + 1) = 0u;
    v30[32] = -1;
    v31 = v10[12];
    *&v12[v10[5]] = v26;
    v32 = &v12[v10[10]];
    *v32 = 0;
    *(v32 + 1) = 0xE000000000000000;
    sub_252376DA8(*v29, *(v29 + 1), *(v29 + 2), *(v29 + 3), v29[32]);
    v33 = v54;
    *v29 = v55;
    *(v29 + 1) = v33;
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v29[32] = 0;
    sub_252376DA8(*v30, *(v30 + 1), *(v30 + 2), *(v30 + 3), v30[32]);
    *v30 = 0u;
    *(v30 + 1) = 0u;
    v30[32] = -1;
    *&v12[v31] = 0;
    v12[v10[9]] = 0;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428) + 48);
    *v9 = xmmword_252695730;
    *(v9 + 3) = 0;
    *(v9 + 4) = 0;
    *(v9 + 2) = 1;
    sub_2523BA6C4(v12, &v9[v34], type metadata accessor for AccessoryControl.BinaryViewConfig);
    swift_storeEnumTagMultiPayload();
    v35 = v60;
    MatterControlSolver.SourcePath.uuid.getter(v60);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430);
    v37 = swift_allocBox();
    v39 = v38 + *(v36 + 48);
    sub_2523BA6C4(v9, v38, type metadata accessor for Device.Control.Kind);
    v40 = *MEMORY[0x277D15DB0];
    v41 = sub_25268F0E0();
    (*(*(v41 - 8) + 104))(v39, v40, v41);
    v42 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
    *(v39 + *(v42 + 20)) = 1;
    *(v39 + *(v42 + 24)) = 0;
    v43 = type metadata accessor for Device.Control(0);
    *(v35 + v43[5]) = v37;
    swift_storeEnumTagMultiPayload();
    sub_2523BA6C4(a1, v35 + v43[6], type metadata accessor for MatterControlSolver.Source);
    type metadata accessor for Device.Control.Source(0);
    swift_storeEnumTagMultiPayload();
    v44 = v57;
    sub_25268FB60();
    v45 = v58;
    sub_25268FAB0();
    LOBYTE(v39) = MEMORY[0x2530A1640](v44, v45);
    v46 = *(v59 + 8);
    v47 = v45;
    v48 = v56;
    v46(v47, v56);
    v46(v44, v48);
    sub_2523BA72C(v9, type metadata accessor for Device.Control.Kind);
    v49 = (v35 + v43[8]);
    v50 = v43[10];
    *(v35 + v50) = 16;
    *(v35 + v43[7]) = 0;
    *v49 = 0;
    v49[1] = 0;
    *(v35 + v43[9]) = 1028;
    *(v35 + v50) = 3;
    *(v35 + v43[11]) = v39 & 1;
    sub_2523BA72C(v12, type metadata accessor for AccessoryControl.BinaryViewConfig);
    return (*(*(v43 - 1) + 56))(v35, 0, 1, v43);
  }

  if (v18 == *MEMORY[0x277D16868] || v18 == *MEMORY[0x277D16850] || v18 == *MEMORY[0x277D16898] || v18 == *MEMORY[0x277D16870] || v18 == *MEMORY[0x277D16858] || v18 == *MEMORY[0x277D16840] || v18 == *MEMORY[0x277D16860] || v18 == *MEMORY[0x277D16848] || v18 == *MEMORY[0x277D16890])
  {
LABEL_21:
    v52 = type metadata accessor for Device.Control(0);
    return (*(*(v52 - 8) + 56))(v60, 1, 1, v52);
  }

  else
  {
    result = sub_2526933A0();
    __break(1u);
  }

  return result;
}

uint64_t sub_2523BA2E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2523BA348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE80);
  v7 = swift_allocObject();
  v20 = xmmword_252694E90;
  *(v7 + 16) = xmmword_252694E90;
  v8 = sub_25268FB90();
  *(v7 + 56) = v8;
  *(v7 + 64) = sub_2523B848C();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + 32));
  (*(*(v8 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D16910], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB320);
  v10 = sub_25268E710();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v20;
  (*(v11 + 16))(v13 + v12, a1, v10);
  v14 = sub_25240C51C(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
  swift_deallocClassInstance();
  v15 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v6, 1, 1, v15);
  sub_2523F648C(v7, v14, &v21);
  v17 = v21;
  v16(a2, 1, 1, v15);
  v18 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
  *(a2 + v18) = 0;
  sub_2523795D4(v6, a2);

  *(a2 + v18) = v17;
  return result;
}

uint64_t sub_2523BA5EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523BA654@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MatterControlSolver.Source(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2523BA348(v4, a1);
}

uint64_t sub_2523BA6C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523BA72C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2523BA78C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v137 = a3;
  v140 = a1;
  v141 = a2;
  v144 = a4;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB398);
  v4 = MEMORY[0x28223BE20](v127);
  v126 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v125 = &v117 - v6;
  v124 = type metadata accessor for MatterControlSolver.SourcePath(0);
  MEMORY[0x28223BE20](v124);
  v122 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25268FBD0();
  v129 = *(v8 - 8);
  v130 = v8;
  MEMORY[0x28223BE20](v8);
  v128 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessoryControl(0);
  v142 = *(v10 - 8);
  v143 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v118 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v120 = &v117 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v119 = (&v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v135 = &v117 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v136 = (&v117 - v20);
  MEMORY[0x28223BE20](v19);
  v134 = (&v117 - v21);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB438);
  v22 = MEMORY[0x28223BE20](v123);
  v121 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v117 - v24;
  v26 = sub_25268E4F0();
  v146 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v117 - v30;
  v32 = type metadata accessor for MatterControlSolver.Source(0);
  v33 = MEMORY[0x28223BE20](v32);
  v131 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v117 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v138 = &v117 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v139 = &v117 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v133 = &v117 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v132 = &v117 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v117 - v46;
  v48 = *MEMORY[0x277D15530];
  v49 = sub_25268E310();
  v50 = *(v49 - 8);
  (*(v50 + 104))(v31, v48, v49);
  (*(v50 + 56))(v31, 0, 1, v49);
  v51 = v47;
  v52 = v26;
  v53 = v140;
  LOBYTE(v147[0]) = 5;
  sub_2525EA7E4(v31, v147, v51);
  v54 = v31;
  v55 = v146;
  sub_252372288(v54, &qword_27F4DB3A0);
  v56 = v141;
  sub_25268FA40();
  v57 = *(v55 + 48);
  v145 = v52;
  if (v57(v25, 1, v52) == 1)
  {
    sub_252372288(v25, &qword_27F4DB438);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v58 = sub_2526905A0();
    __swift_project_value_buffer(v58, qword_27F4E4B18);
    sub_2523C391C(v53, v37, type metadata accessor for MatterControlSolver.Source);
    v59 = sub_252690580();
    v60 = sub_252692EF0();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v147[0] = v62;
      *v61 = 136315138;
      sub_2523C391C(v37, v131, type metadata accessor for MatterControlSolver.Source);
      v63 = sub_252692C20();
      v65 = v64;
      sub_2523C3ABC(v37, type metadata accessor for MatterControlSolver.Source);
      v66 = sub_2525BDA90(v63, v65, v147);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_252309000, v59, v60, "Failed to build RVC status button control for source %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x2530A5A40](v62, -1, -1);
      MEMORY[0x2530A5A40](v61, -1, -1);
    }

    else
    {

      sub_2523C3ABC(v37, type metadata accessor for MatterControlSolver.Source);
    }

    v67 = v51;
LABEL_29:
    sub_2523C3ABC(v67, type metadata accessor for MatterControlSolver.Source);
    v106 = 1;
    v74 = v143;
    v105 = v144;
    v75 = v142;
    return (*(v75 + 56))(v105, v106, 1, v74);
  }

  (*(v55 + 32))(v28, v25, v145);
  v68 = v32;
  if (*(v53 + *(v32 + 36)) != 1)
  {
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v77 = sub_2526905A0();
    __swift_project_value_buffer(v77, qword_27F4E4B18);
    v78 = v132;
    sub_2523C391C(v53, v132, type metadata accessor for MatterControlSolver.Source);
    v79 = v133;
    sub_2523C391C(v53, v133, type metadata accessor for MatterControlSolver.Source);
    sub_2523C391C(v53, v139, type metadata accessor for MatterControlSolver.Source);
    v80 = v138;
    sub_2523C391C(v53, v138, type metadata accessor for MatterControlSolver.Source);
    v81 = sub_252690580();
    v82 = sub_252692F10();
    if (os_log_type_enabled(v81, v82))
    {
      v140 = v28;
      v141 = v51;
      v83 = v68;
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v147[0] = v85;
      *v84 = 136446978;
      sub_2523C391C(v78, v122, type metadata accessor for MatterControlSolver.SourcePath);
      v86 = sub_252692C20();
      v88 = v87;
      sub_2523C3ABC(v78, type metadata accessor for MatterControlSolver.Source);
      v89 = sub_2525BDA90(v86, v88, v147);

      *(v84 + 4) = v89;
      *(v84 + 12) = 1026;
      LODWORD(v89) = *(v79 + *(v83 + 36));
      sub_2523C3ABC(v79, type metadata accessor for MatterControlSolver.Source);
      *(v84 + 14) = v89;
      *(v84 + 18) = 2080;
      v137 = v83;
      v90 = v125;
      sub_25268F8D0();
      v91 = sub_25268FC20();
      v92 = *(v91 - 8);
      if ((*(v92 + 48))(v90, 1, v91) == 1)
      {
        sub_252372288(v90, &qword_27F4DB398);
        v93 = v146;
        (*(v146 + 56))(v121, 1, 1, v145);
      }

      else
      {
        sub_25268FA40();
        (*(v92 + 8))(v90, v91);
        v93 = v146;
      }

      v107 = sub_252692C20();
      v109 = v108;
      sub_2523C3ABC(v139, type metadata accessor for MatterControlSolver.Source);
      v110 = sub_2525BDA90(v107, v109, v147);

      *(v84 + 20) = v110;
      *(v84 + 28) = 2080;
      v111 = v138;
      sub_25268F8D0();
      v112 = sub_252692C20();
      v114 = v113;
      sub_2523C3ABC(v111, type metadata accessor for MatterControlSolver.Source);
      v115 = sub_2525BDA90(v112, v114, v147);

      *(v84 + 30) = v115;
      _os_log_impl(&dword_252309000, v81, v82, "RVC is unreachable so hiding room picker controls. path: %{public}s isReachable: %{BOOL,public}d serviceArea: %s rvcClusterGroup:%s", v84, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v85, -1, -1);
      MEMORY[0x2530A5A40](v84, -1, -1);

      (*(v93 + 8))(v140, v145);
      v67 = v141;
    }

    else
    {
      sub_2523C3ABC(v79, type metadata accessor for MatterControlSolver.Source);

      sub_2523C3ABC(v80, type metadata accessor for MatterControlSolver.Source);
      sub_2523C3ABC(v139, type metadata accessor for MatterControlSolver.Source);
      sub_2523C3ABC(v78, type metadata accessor for MatterControlSolver.Source);
      (*(v55 + 8))(v28, v145);
      v67 = v51;
    }

    goto LABEL_29;
  }

  if (*(v53 + *(v32 + 48)))
  {
    v69 = v134;
    v70 = v56;
    v71 = v56;
    v72 = v137;
    sub_2523BD1E0(v51, v71, v28, v137, v134);
    v73 = v136;
    sub_2523BE1D0(v51, v70, v28, v72, v136);
    v75 = v142;
    v74 = v143;
    v76 = v135;
  }

  else
  {
    v94 = v56;
    v95 = StaticRVCClusterGroup.canChangeServiceAreas.getter();
    v69 = v134;
    v96 = v137;
    sub_2523BD1E0(v51, v94, v28, v137, v134);
    v73 = v136;
    sub_2523BE1D0(v51, v94, v28, v96, v136);
    v75 = v142;
    v74 = v143;
    v76 = v135;
    if ((v95 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  sub_25237153C(v69, v76, &qword_27F4DB120);
  if ((*(v75 + 48))(v76, 1, v74) != 1)
  {
    sub_252372288(v73, &qword_27F4DB120);
    sub_252372288(v69, &qword_27F4DB120);
    (*(v55 + 8))(v28, v145);
    sub_2523C3ABC(v51, type metadata accessor for MatterControlSolver.Source);
    v104 = v120;
    sub_2523C37B8(v76, v120, type metadata accessor for AccessoryControl);
    v103 = v104;
    v101 = v144;
    goto LABEL_24;
  }

  sub_252372288(v76, &qword_27F4DB120);
LABEL_19:
  v97 = v128;
  sub_25268FA30();
  v98 = sub_25268FBB0();
  (*(v129 + 8))(v97, v130);
  sub_252372288(v69, &qword_27F4DB120);
  (*(v55 + 8))(v28, v145);
  sub_2523C3ABC(v51, type metadata accessor for MatterControlSolver.Source);
  if ((v98 & 1) == 0)
  {
    v101 = v144;
    goto LABEL_26;
  }

  v99 = v73;
  v73 = v119;
  sub_2523714D4(v99, v119, &qword_27F4DB120);
  v100 = (*(v75 + 48))(v73, 1, v74);
  v101 = v144;
  if (v100 == 1)
  {
LABEL_26:
    sub_252372288(v73, &qword_27F4DB120);
    v106 = 1;
    v105 = v101;
    return (*(v75 + 56))(v105, v106, 1, v74);
  }

  v102 = v118;
  sub_2523C37B8(v73, v118, type metadata accessor for AccessoryControl);
  v103 = v102;
LABEL_24:
  sub_2523C37B8(v103, v101, type metadata accessor for AccessoryControl);
  v105 = v101;
  v106 = 0;
  return (*(v75 + 56))(v105, v106, 1, v74);
}

uint64_t sub_2523BB764@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v66 = a2;
  v67 = a1;
  v68 = a3;
  v3 = sub_25268DA10();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v62 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268FC20();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = v6;
  v57 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C8);
  MEMORY[0x28223BE20](v58);
  v61 = (&v53 - v7);
  v8 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v8 - 8);
  v65 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB438);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v53 - v11;
  v13 = sub_25268E4F0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v53 - v18;
  v20 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_25268E310();
  (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  LOBYTE(v69) = 5;
  sub_2525EA7E4(v19, &v69, v22);
  v24 = v67;
  sub_252372288(v19, &qword_27F4DB3A0);
  sub_25268FA40();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2523C3ABC(v22, type metadata accessor for MatterControlSolver.Source);
    sub_252372288(v12, &qword_27F4DB438);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    if (v22[*(v20 + 36)] == 1)
    {
      v25 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      v26 = 1;
      v27 = v65;
      (*(*(v25 - 8) + 56))(v65, 1, 1, v25);
      v28 = _s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(v66, v27);
      sub_2523C3ABC(v27, type metadata accessor for AccessoryControl.ValueDestination);
      if (v28)
      {
        v26 = StaticRVCClusterGroup.canChangeServiceAreas.getter();
      }

      sub_2523BBF58(v16, &v69);
      v29 = v70;
      if (v70)
      {
        v65 = v13;
        v55 = v69;
        sub_2523BC618(&v69);
        v54 = v69;
        v30 = v70;
        v31 = v59;
        v32 = *(v59 + 16);
        v33 = v57;
        LODWORD(v67) = v26;
        v34 = v60;
        v32(v57, v24, v60);
        v35 = (*(v31 + 80) + 16) & ~*(v31 + 80);
        v36 = swift_allocObject();
        (*(v31 + 32))(v36 + v35, v33, v34);
        v37 = v58;
        v38 = v61;
        sub_2523C391C(v66, v61 + *(v58 + 36), type metadata accessor for AccessoryControl.ValueDestination);
        v39 = (v38 + *(v37 + 40));
        *v39 = v54;
        v39[1] = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4D0);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_252694E90;
        *(v40 + 32) = sub_2523C3B1C;
        *(v40 + 40) = v36;
        *v38 = v40;
        v41 = v62;
        MatterControlSolver.SourcePath.uuid.getter(v62);
        v42 = type metadata accessor for AccessoryControl(0);
        v43 = v68;
        v44 = v68 + v42[5];
        v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4D8) + 48);
        *v44 = v55 & 1;
        *(v44 + 8) = v29;
        sub_25237153C(v38, v44 + v45, &qword_27F4DB4C8);
        type metadata accessor for AccessoryControl.State(0);
        swift_storeEnumTagMultiPayload();
        v46 = MatterControlSolver.Source.controlAccessibilityIdentifier.getter();
        v66 = v47;
        sub_252372288(v38, &qword_27F4DB4C8);
        (*(v14 + 8))(v16, v65);
        sub_2523C3ABC(v22, type metadata accessor for MatterControlSolver.Source);
        (*(v63 + 32))(v43, v41, v64);
        type metadata accessor for AccessoryControl.ElementIdentifier();
        swift_storeEnumTagMultiPayload();
        v48 = (v43 + v42[7]);
        v49 = v42[9];
        *(v43 + v49) = 16;
        *(v43 + v42[6]) = 1;
        v50 = v66;
        *v48 = v46;
        v48[1] = v50;
        *(v43 + v42[8]) = 1028;
        *(v43 + v49) = 16;
        *(v43 + v42[10]) = v67 & 1;
        return (*(*(v42 - 1) + 56))(v43, 0, 1, v42);
      }
    }

    (*(v14 + 8))(v16, v13);
    sub_2523C3ABC(v22, type metadata accessor for MatterControlSolver.Source);
  }

  v52 = type metadata accessor for AccessoryControl(0);
  return (*(*(v52 - 8) + 56))(v68, 1, 1, v52);
}

uint64_t sub_2523BBF58@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v61 = a2;
  v81 = sub_25268E3C0();
  v74 = *(v81 - 8);
  v3 = MEMORY[0x28223BE20](v81);
  v80 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v79 = &v60 - v5;
  v6 = sub_25268E470();
  v70 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = 1;
  if (sub_25268E400())
  {
    result = sub_25268E420();
    if (result)
    {
      v69 = *(result + 16);
      if (v69)
      {
        v10 = 0;
        v65 = result + ((*(v70 + 80) + 32) & ~*(v70 + 80));
        v64 = v70 + 16;
        v75 = (v74 + 8);
        v76 = (v74 + 16);
        v68 = (v70 + 8);
        v11 = MEMORY[0x277D84F90];
        v63 = a1;
        v62 = v6;
        v66 = result;
        v67 = v8;
        while (v10 < *(result + 16))
        {
          v12 = *(v70 + 72);
          v73 = v10;
          (*(v70 + 16))(v8, v65 + v12 * v10, v6);
          v13 = sub_25268E3D0();
          v14 = *(v13 + 16);
          if (v14)
          {
            v72 = v11;
            v83 = MEMORY[0x277D84F90];
            sub_2523700AC(0, v14, 0);
            v15 = v83;
            v16 = (*(v74 + 80) + 32) & ~*(v74 + 80);
            v71 = v13;
            v17 = v13 + v16;
            v18 = *(v74 + 72);
            v77 = *(v74 + 16);
            v78 = v18;
            do
            {
              v19 = v79;
              v20 = v81;
              v21 = v77;
              v77(v79, v17, v81);
              v22 = v80;
              v21(v80, v19, v20);
              v82 = sub_25268E3A0();
              v23 = sub_25268E390();
              v25 = v24;
              v26 = *v75;
              (*v75)(v22, v20);
              v26(v19, v20);
              v83 = v15;
              v28 = *(v15 + 16);
              v27 = *(v15 + 24);
              if (v28 >= v27 >> 1)
              {
                sub_2523700AC((v27 > 1), v28 + 1, 1);
                v15 = v83;
              }

              *(v15 + 16) = v28 + 1;
              v29 = v15 + 24 * v28;
              *(v29 + 32) = v82;
              *(v29 + 40) = v23;
              *(v29 + 48) = v25;
              v17 += v78;
              --v14;
            }

            while (v14);

            v11 = v72;
            v6 = v62;
          }

          else
          {

            v15 = MEMORY[0x277D84F90];
          }

          v8 = v67;
          if (*(v15 + 16))
          {
            v30 = sub_25268E450();
            v31 = sub_25268E460();
            v33 = v32;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = sub_252368B44(0, *(v11 + 16) + 1, 1, v11);
            }

            v35 = *(v11 + 16);
            v34 = *(v11 + 24);
            if (v35 >= v34 >> 1)
            {
              v11 = sub_252368B44((v34 > 1), v35 + 1, 1, v11);
            }

            (*v68)(v8, v6);
            *(v11 + 16) = v35 + 1;
            v36 = v11 + 32 * v35;
            *(v36 + 32) = v30;
            *(v36 + 40) = v31;
            *(v36 + 48) = v33;
            *(v36 + 56) = v15;
          }

          else
          {
            (*v68)(v67, v6);
          }

          v10 = v73 + 1;
          result = v66;
          if (v73 + 1 == v69)
          {

            goto LABEL_32;
          }
        }

        __break(1u);
        return result;
      }
    }
  }

  v37 = *(sub_25268E3E0() + 16);

  v11 = MEMORY[0x277D84F90];
  if (v37)
  {
    v38 = sub_25268E3E0();
    v39 = *(v38 + 16);
    if (v39)
    {
      v83 = v11;
      sub_2523700AC(0, v39, 0);
      v40 = v83;
      v41 = *(v74 + 16);
      v42 = *(v74 + 80);
      v74 += 16;
      v75 = v38;
      v43 = v38 + ((v42 + 32) & ~v42);
      v77 = *(v74 + 56);
      v78 = v41;
      v76 = (v74 - 8);
      do
      {
        v45 = v78;
        v44 = v79;
        v46 = v81;
        v78(v79, v43, v81);
        v47 = v80;
        v45(v80, v44, v46);
        v82 = sub_25268E3A0();
        v48 = sub_25268E390();
        v50 = v49;
        v51 = *v76;
        (*v76)(v47, v46);
        v51(v44, v46);
        v83 = v40;
        v53 = *(v40 + 16);
        v52 = *(v40 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_2523700AC((v52 > 1), v53 + 1, 1);
          v40 = v83;
        }

        *(v40 + 16) = v53 + 1;
        v54 = v40 + 24 * v53;
        *(v54 + 32) = v82;
        *(v54 + 40) = v48;
        *(v54 + 48) = v50;
        v43 += v77;
        --v39;
      }

      while (v39);
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEB8);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_252694E90;
    v55 = sub_252692C40();
    *(v11 + 32) = 404;
    *(v11 + 40) = v55;
    *(v11 + 48) = v56;
    *(v11 + 56) = v40;
    v84 = 0;
  }

LABEL_32:
  v57 = *(v11 + 16);
  if (v57)
  {
    v58 = v84;

    v57 = v11;
  }

  else
  {
    v58 = 0;
  }

  v59 = v61;
  *v61 = v58;
  v59[1] = v57;
}

uint64_t sub_2523BC618@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v80 = sub_25268E3C0();
  v78 = *(v80 - 8);
  v1 = MEMORY[0x28223BE20](v80);
  v79 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v68 - v4;
  MEMORY[0x28223BE20](v3);
  v75 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v68 - v8;
  v10 = sub_25268E470();
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v68 = &v68 - v17;
  if ((sub_25268E400() & 1) == 0)
  {
    goto LABEL_7;
  }

  v18 = sub_25268E420();
  if (!v18)
  {
    goto LABEL_7;
  }

  if (!*(v18 + 16))
  {

LABEL_7:
    v23 = sub_25268E440();
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v25 = *(v23 + 16);
      if (v25)
      {
        v81 = MEMORY[0x277D84F90];
        v26 = v23;
        sub_2523700CC(0, v25, 0);
        v24 = v81;
        v28 = *(v78 + 16);
        v27 = v78 + 16;
        v77 = v26;
        v78 = v28;
        v29 = v26 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
        v30 = *(v27 + 56);
        v31 = (v27 - 8);
        do
        {
          v32 = v79;
          v33 = v80;
          (v78)(v79, v29, v80);
          v34 = sub_25268E3A0();
          (*v31)(v32, v33);
          v81 = v24;
          v36 = *(v24 + 16);
          v35 = *(v24 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_2523700CC((v35 > 1), v36 + 1, 1);
            v24 = v81;
          }

          *(v24 + 16) = v36 + 1;
          *(v24 + 4 * v36 + 32) = v34;
          v29 += v30;
          --v25;
        }

        while (v25);
      }
    }

    v37 = v71;
    v38 = sub_252624564(v24);

    LODWORD(v22) = 404;
    goto LABEL_15;
  }

  v74 = v5;
  v20 = v69;
  v19 = v70;
  (*(v69 + 16))(v16, v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v70);

  v21 = *(v20 + 32);
  v21(v68, v16, v19);
  sub_25268E3F0();
  if ((*(v20 + 48))(v9, 1, v19) == 1)
  {
    sub_252372288(v9, &qword_27F4DB4A8);
    v22 = sub_25268E450();
  }

  else
  {
    v21(v13, v9, v19);
    v40 = sub_25268E450();
    v41 = v20;
    v22 = v40;
    (*(v41 + 8))(v13, v19);
  }

  v42 = v75;
  result = sub_25268E440();
  v43 = MEMORY[0x277D84F90];
  if (result)
  {
    v44 = result;
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v45 = *(v44 + 16);
  v46 = v74;
  if (!v45)
  {
LABEL_32:

    v57 = *(v43 + 16);
    if (v57)
    {
      LODWORD(v76) = v22;
      v81 = MEMORY[0x277D84F90];
      sub_2523700CC(0, v57, 0);
      v58 = v81;
      v59 = v78 + 16;
      v60 = *(v78 + 16);
      v61 = v43 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v77 = *(v78 + 72);
      v78 = v60;
      v62 = (v59 - 8);
      do
      {
        v63 = v79;
        v64 = v80;
        (v78)(v79, v61, v80);
        v65 = sub_25268E3A0();
        (*v62)(v63, v64);
        v81 = v58;
        v67 = *(v58 + 16);
        v66 = *(v58 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_2523700CC((v66 > 1), v67 + 1, 1);
          v58 = v81;
        }

        *(v58 + 16) = v67 + 1;
        *(v58 + 4 * v67 + 32) = v65;
        v61 += v77;
        --v57;
      }

      while (v57);

      LODWORD(v22) = v76;
    }

    else
    {

      v58 = MEMORY[0x277D84F90];
    }

    v38 = sub_252624564(v58);

    result = (*(v69 + 8))(v68, v70);
    v37 = v71;
LABEL_15:
    *v37 = v22;
    *(v37 + 8) = v38;
    return result;
  }

  v47 = 0;
  v76 = (v78 + 32);
  v77 = v78 + 16;
  v72 = (v78 + 8);
  v73 = v45;
  while (v47 < *(v44 + 16))
  {
    v48 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v49 = *(v78 + 72);
    (*(v78 + 16))(v42, v44 + v48 + v49 * v47, v80);
    v50 = sub_25268E3B0();
    if ((v50 & 0x100000000) != 0 || v22 != v50)
    {
      result = (*v72)(v42, v80);
    }

    else
    {
      v51 = v22;
      v52 = *v76;
      (*v76)(v46, v42, v80);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2523700EC(0, *(v43 + 16) + 1, 1);
        v43 = v81;
      }

      v55 = *(v43 + 16);
      v54 = *(v43 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_2523700EC(v54 > 1, v55 + 1, 1);
        v43 = v81;
      }

      *(v43 + 16) = v55 + 1;
      v56 = v43 + v48 + v55 * v49;
      v46 = v74;
      result = (v52)(v56, v74, v80);
      v42 = v75;
      v22 = v51;
      v45 = v73;
    }

    if (v45 == ++v47)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2523BCD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = v35 - v7;
  v8 = sub_25268FB90();
  v9 = MEMORY[0x28223BE20](v8);
  v12 = (v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 8);
  if (!v13)
  {
    if (qword_27F4DA998 == -1)
    {
LABEL_6:
      v16 = type metadata accessor for AccessoryControl.WriteSpecification(0);
      v17 = __swift_project_value_buffer(v16, qword_27F4DB8A0);
      return sub_2523C391C(v17, a3, type metadata accessor for AccessoryControl.WriteSpecification);
    }

LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  v37 = v10;
  v38 = v9;
  v14 = *(v13 + 16);
  if (!v14)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  v35[1] = a2;
  *&v36 = a3;
  v15 = sub_2525EECF0(v14, 0);
  a3 = sub_2525EF068(&v40, v15 + 8, v14, v13);

  sub_2523A4D1C();
  if (a3 != v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  a3 = v36;
LABEL_8:
  *v12 = v15;
  v19 = *MEMORY[0x277D168C8];
  v20 = sub_25268FB80();
  (*(*(v20 - 8) + 104))(v12, v19, v20);
  v22 = v37;
  v21 = v38;
  (*(v37 + 104))(v12, *MEMORY[0x277D16918], v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE80);
  v23 = swift_allocObject();
  v36 = xmmword_252694E90;
  *(v23 + 16) = xmmword_252694E90;
  *(v23 + 56) = v21;
  *(v23 + 64) = sub_2523C3888(&qword_27F4DB3D0, MEMORY[0x277D16978]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v23 + 32));
  (*(v22 + 16))(boxed_opaque_existential_0, v12, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB320);
  v25 = sub_25268E710();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v36;
  sub_25268FA60();
  v29 = sub_25240C51C(v28);
  swift_setDeallocating();
  (*(v26 + 8))(v28 + v27, v25);
  swift_deallocClassInstance();
  v30 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  v31 = *(*(v30 - 8) + 56);
  v32 = v39;
  v31(v39, 1, 1, v30);
  sub_2523F648C(v23, v29, &v40);
  (*(v22 + 8))(v12, v21);
  v33 = v40;
  v31(a3, 1, 1, v30);
  v34 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
  *&a3[v34] = 0;
  sub_252377048(v32, a3, &qword_27F4DB210);

  *&a3[v34] = v33;
  return result;
}

uint64_t sub_2523BD1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v155 = a4;
  v158 = a5;
  v8 = sub_25268FC20();
  v153 = *(v8 - 8);
  v154 = v8;
  MEMORY[0x28223BE20](v8);
  v150 = v9;
  v151 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
  MEMORY[0x28223BE20](v152);
  v11 = &v138 - v10;
  v167 = sub_25268E3C0();
  v139 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v166 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB460);
  MEMORY[0x28223BE20](v13 - 8);
  v138 = &v138 - v14;
  v143 = sub_25268FBD0();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25268FB50();
  v164 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v160 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v159 = &v138 - v19;
  v20 = sub_25268FAE0();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v138 - v25;
  v27 = *(type metadata accessor for MatterControlSolver.Source(0) + 48);
  v157 = a1;
  LODWORD(v27) = *(a1 + v27);
  v161 = a2;
  v163 = v27;
  if (v27 & 1) != 0 || (sub_25268FB60(), sub_25268FAB0(), sub_2523C3888(&qword_27F4DB468, MEMORY[0x277D16828]), v28 = sub_252692B70(), v29 = *(v21 + 8), v29(v24, v20), v29(v26, v20), (v28))
  {
    v30 = v159;
    sub_25268FB70();
    v31 = v164;
    v32 = v160;
    (*(v164 + 104))(v160, *MEMORY[0x277D16850], v16);
    v33 = sub_25268FB40();
    v34 = *(v31 + 8);
    v34(v32, v16);
    v34(v30, v16);
    v149 = v33 ^ 1;
  }

  else
  {
    v149 = 0;
  }

  v35 = ServiceArea.pickerButtonMapOptions.getter();
  v36 = sub_25268E440();
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v37 = v36;
  }

  v162 = v37;
  v38 = sub_25268E3E0();
  MEMORY[0x28223BE20](v38);
  *(&v138 - 2) = a3;
  v39 = sub_2525F7DF4(sub_2523C3984, (&v138 - 4), v38);

  v40 = *(v35 + 16);
  v165 = v39;
  if (v40 < 2)
  {

    v168 = MEMORY[0x277D84F90];
  }

  else
  {
    v41 = sub_252692C40();
    v43 = v42;
    LOBYTE(v169) = 0;
    v44 = sub_252368A24(0, 1, 1, MEMORY[0x277D84F90]);
    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    v168 = v44;
    if (v46 >= v45 >> 1)
    {
      v168 = sub_252368A24((v45 > 1), v46 + 1, 1, v168);
    }

    v47 = v168;
    *(v168 + 2) = v46 + 1;
    v48 = &v47[80 * v46];
    *(v48 + 4) = 0;
    v48[40] = 0;
    *(v48 + 6) = v35;
    v48[56] = 0;
    *(v48 + 8) = v41;
    *(v48 + 9) = v43;
    *(v48 + 5) = 0u;
    *(v48 + 6) = 0u;
  }

  v49 = sub_25268E420();
  v156 = v11;
  if (v49)
  {
    v50 = v49;
    v51 = sub_25256DFB0(MEMORY[0x277D84F90]);
    v52 = MEMORY[0x28223BE20](v51);
    *(&v138 - 2) = a3;
    v53 = sub_2525690E8(v52, sub_2523C3A84, (&v138 - 4), v50);

    if (v40 <= 1)
    {
      v54 = 0;
    }

    else
    {

      v54 = 1;
      v165 = v53;
    }
  }

  else
  {
    v54 = 0;
    v53 = 0;
  }

  v55 = sub_252692C40();
  v57 = v56;
  v58 = sub_252692C40();
  v60 = v59;
  if (!v53 || (v61 = v58, v62 = *(v53 + 16), , !v62))
  {

    v61 = sub_252692C40();
    v60 = v63;
    v55 = 0;
    v57 = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v168 = sub_252368A24(0, *(v168 + 2) + 1, 1, v168);
  }

  v65 = *(v168 + 2);
  v64 = *(v168 + 3);
  v144 = v16;
  if (v65 >= v64 >> 1)
  {
    v168 = sub_252368A24((v64 > 1), v65 + 1, 1, v168);
  }

  v66 = v168;
  *(v168 + 2) = v65 + 1;
  v67 = &v66[80 * v65];
  *(v67 + 4) = 1;
  v67[40] = 2;
  v68 = *&v171[3];
  *(v67 + 41) = *v171;
  *(v67 + 11) = v68;
  *(v67 + 6) = v165;
  v67[56] = v54;
  v69 = *v170;
  *(v67 + 15) = *&v170[3];
  *(v67 + 57) = v69;
  *(v67 + 8) = 0;
  *(v67 + 9) = 0;
  *(v67 + 10) = v55;
  *(v67 + 11) = v57;
  *(v67 + 12) = v61;
  *(v67 + 13) = v60;
  v140 = "HFRVCRoomSelectionFooterNoRooms";
  v148 = sub_252692C40();
  v147 = v70;

  v71 = sub_25268E3E0();
  MEMORY[0x28223BE20](v71);
  *(&v138 - 2) = a3;
  v146 = sub_2525F7DF4(sub_2523C3B9C, (&v138 - 4), v71);

  v72 = MEMORY[0x277D84F90];
  v73 = sub_25256E194(MEMORY[0x277D84F90]);
  v74 = MEMORY[0x28223BE20](v73);
  v75 = v162;
  *(&v138 - 2) = a3;
  *(&v138 - 1) = v75;
  v145 = sub_252569114(v74, sub_2523C39A4, (&v138 - 4), v66);
  v76 = v161;
  if (StaticRVCClusterGroup.canChangeServiceAreas.getter())
  {
    v77 = v141;
    sub_25268FA30();
    v78 = sub_25268FBC0();
    (*(v142 + 8))(v77, v143);
    if ((v78 & 1) == 0)
    {

      v88 = sub_25268E440();
      if (v88)
      {
        v89 = v88;
        MEMORY[0x28223BE20](v88);
        *(&v138 - 2) = a3;
        v90 = v138;
        sub_2525F84D8(sub_2523C3A64, v89, v138);

        v91 = v139;
        v92 = v167;
        v93 = (*(v139 + 48))(v90, 1, v167);
        v94 = v149;
        if (v93 != 1)
        {
          v95 = sub_25268E390();
          v97 = v96;
          (*(v91 + 8))(v90, v92);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE90);
          v72 = swift_allocObject();
          *(v72 + 16) = xmmword_252694E90;
          *(v72 + 32) = v95;
          *(v72 + 40) = v97;
          if (v163)
          {
            goto LABEL_41;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v90 = v138;
        (*(v139 + 56))(v138, 1, 1, v167);
        v94 = v149;
      }

      sub_252372288(v90, &qword_27F4DB460);
      v72 = MEMORY[0x277D84F90];
      if (v163)
      {
        goto LABEL_41;
      }

LABEL_44:
      v112 = StaticRVCClusterGroup.currentTitle.getter();
      goto LABEL_45;
    }
  }

  v79 = v159;
  sub_25268FB70();
  v80 = v164;
  v81 = v160;
  v82 = v144;
  (*(v164 + 104))(v160, *MEMORY[0x277D16850], v144);
  v83 = sub_25268FB40();
  v84 = *(v80 + 8);
  v84(v81, v82);
  v84(v79, v82);
  if (v83)
  {
LABEL_27:

    goto LABEL_40;
  }

  v85 = ServiceArea.allRoomsSelected.getter();
  v86 = v162;
  if (v85)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE90);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_252694E90;
    *(v72 + 32) = sub_252692C40();
    *(v72 + 40) = v87;
  }

  else
  {
    v98 = *(v162 + 16);
    if (!v98)
    {
      goto LABEL_27;
    }

    v169 = v72;
    sub_25236FF70(0, v98, 0);
    v72 = v169;
    v99 = v139 + 16;
    v100 = *(v139 + 16);
    v101 = v86 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    v164 = *(v139 + 72);
    v165 = v100;
    v102 = (v139 + 8);
    do
    {
      v103 = v166;
      v104 = v167;
      v105 = v99;
      v165(v166, v101, v167);
      v106 = sub_25268E390();
      v108 = v107;
      (*v102)(v103, v104);
      v169 = v72;
      v110 = *(v72 + 16);
      v109 = *(v72 + 24);
      if (v110 >= v109 >> 1)
      {
        sub_25236FF70((v109 > 1), v110 + 1, 1);
        v72 = v169;
      }

      *(v72 + 16) = v110 + 1;
      v111 = v72 + 16 * v110;
      *(v111 + 32) = v106;
      *(v111 + 40) = v108;
      v101 += v164;
      --v98;
      v99 = v105;
    }

    while (v98);

    v76 = v161;
  }

LABEL_40:
  v94 = v149;
  if (!v163)
  {
    goto LABEL_44;
  }

LABEL_41:
  v112 = sub_252692C40();
LABEL_45:
  v166 = v112;
  v114 = v113;
  LODWORD(v167) = v94 & 1;
  v115 = *(v157 + *(type metadata accessor for MatterControlSolver.SourcePath(0) + 24));
  v116 = v153;
  v117 = v154;
  v118 = v151;
  (*(v153 + 16))(v151, v76, v154);
  v119 = (*(v116 + 80) + 17) & ~*(v116 + 80);
  v120 = v119 + v150;
  v121 = swift_allocObject();
  *(v121 + 16) = v115;
  (*(v116 + 32))(v121 + v119, v118, v117);
  *(v121 + v120) = v163;
  v122 = v152;
  v123 = v156;
  sub_2523C391C(v155, v156 + *(v152 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  v124 = (v123 + *(v122 + 40));
  *v124 = v166;
  v124[1] = v114;
  v125 = v145;
  v124[2] = v72;
  v124[3] = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB038);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_252694E90;
  *(v126 + 32) = sub_2523C39C0;
  *(v126 + 40) = v121;
  *v123 = v126;
  v127 = v158;
  sub_2525EC4EC(v158);
  v128 = type metadata accessor for AccessoryControl(0);
  v129 = v127 + v128[5];
  v130 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0) + 48);
  *v129 = v146;
  LOBYTE(v116) = v167;
  v129[8] = v167;
  v131 = v147;
  *(v129 + 2) = v148;
  *(v129 + 3) = v131;
  *(v129 + 4) = v168;
  sub_25237153C(v123, &v129[v130], &qword_27F4DB498);
  type metadata accessor for AccessoryControl.State(0);
  swift_storeEnumTagMultiPayload();
  v132 = MatterControlSolver.Source.controlAccessibilityIdentifier.getter();
  v134 = v133;
  sub_252372288(v123, &qword_27F4DB498);
  v135 = (v127 + v128[7]);
  v136 = v128[9];
  *(v127 + v136) = 16;
  *(v127 + v128[6]) = 0;
  *v135 = v132;
  v135[1] = v134;
  *(v127 + v128[8]) = 1028;
  *(v127 + v136) = 10;
  *(v127 + v128[10]) = v116;
  return (*(*(v128 - 1) + 56))(v127, 0, 1, v128);
}

uint64_t sub_2523BE1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v149 = a4;
  v160 = a1;
  v151 = a5;
  v166 = sub_25268E3C0();
  v7 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v165 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v163 = *(v9 - 8);
  v164 = v9;
  MEMORY[0x28223BE20](v9);
  v131 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440);
  MEMORY[0x28223BE20](v11 - 8);
  v148 = &v127 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB448);
  v143 = *(v13 - 8);
  v144 = *(v143 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v145 = &v127 - v14;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
  MEMORY[0x28223BE20](v146);
  v150 = (&v127 - v15);
  v16 = sub_25268E710();
  v158 = *(v16 - 8);
  v159 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v141 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v18;
  MEMORY[0x28223BE20](v17);
  v157 = &v127 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458);
  MEMORY[0x28223BE20](v20 - 8);
  v135 = (&v127 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB460);
  MEMORY[0x28223BE20](v22 - 8);
  v127 = &v127 - v23;
  v24 = sub_25268FB50();
  v154 = *(v24 - 8);
  v155 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v153 = &v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v152 = &v127 - v27;
  v139 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  v137 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v147 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_25268FAE0();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v127 - v34;
  v161 = a3;
  v36 = sub_25268E410();
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  sub_25268FB60();
  sub_25268FAB0();
  sub_2523C3888(&qword_27F4DB468, MEMORY[0x277D16828]);
  v39 = sub_252692B70();
  v40 = *(v30 + 8);
  v40(v33, v29);
  v40(v35, v29);
  if (v39)
  {
    v41 = *(v38 + 16);

    v142 = v41 != 0;
  }

  else
  {

    v142 = 0;
  }

  v42 = v161;
  v43 = sub_25268E440();
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = v37;
  }

  MEMORY[0x28223BE20](v43);
  *(&v127 - 2) = v42;
  v45 = sub_2525F7DF4(sub_2523C3688, (&v127 - 4), v44);

  v134 = sub_252692C40();
  v138 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE98);
  v47 = swift_allocObject();
  v133 = xmmword_252694E90;
  *(v47 + 16) = xmmword_252694E90;
  *(v47 + 32) = 0;
  *(v47 + 40) = 2;
  *(v47 + 48) = v45;
  *(v47 + 56) = 0;
  *(v47 + 64) = 0u;
  *(v47 + 80) = 0u;
  v136 = v47;
  *(v47 + 96) = 0u;
  v48 = sub_25268E360();
  v49 = sub_25268E410();
  if (v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = v37;
  }

  v51 = *(v50 + 16);
  v156 = a2;
  if (v51)
  {
    v129 = 0;
    v132 = v48;
    v167 = v37;
    sub_252370068(0, v51, 0);
    v37 = v167;
    v130 = v7;
    v162 = *(v7 + 16);
    v52 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v128 = v50;
    v53 = v50 + v52;
    v54 = *(v7 + 72);
    v55 = (v7 + 8);
    v56 = v131;
    do
    {
      v58 = v165;
      v57 = v166;
      v162(v165, v53, v166);
      v59 = sub_25268E3A0();
      (*v55)(v58, v57);
      *v56 = v59;
      swift_storeEnumTagMultiPayload();
      v167 = v37;
      v61 = *(v37 + 16);
      v60 = *(v37 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_252370068(v60 > 1, v61 + 1, 1);
        v56 = v131;
        v37 = v167;
      }

      *(v37 + 16) = v61 + 1;
      sub_2523C37B8(v56, v37 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v61, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      v53 += v54;
      --v51;
    }

    while (v51);
    v7 = v130;
    v48 = v132;
    v50 = v128;
  }

  v62 = sub_2526243FC(v37);

  v63 = MEMORY[0x277D84F90];
  v64 = sub_25256E37C(MEMORY[0x277D84F90]);
  v65 = MEMORY[0x28223BE20](v64);
  *(&v127 - 2) = v161;
  v66 = sub_25256921C(v65, sub_2523C36A8, (&v127 - 4), v50);

  v67 = StaticRVCClusterGroup.isCleaningCurrentArea.getter();
  if (v67 == 2 || (v67 & 1) == 0)
  {
    v164 = 0;
    v165 = 0;
    goto LABEL_28;
  }

  v132 = v48;
  v130 = v7;
  v68 = v152;
  sub_25268FB70();
  v70 = v153;
  v69 = v154;
  v71 = v155;
  (*(v154 + 104))(v153, *MEMORY[0x277D16850], v155);
  v72 = sub_25268FB40();
  v73 = *(v69 + 8);
  v73(v70, v71);
  v73(v68, v71);
  if ((v72 & 1) == 0)
  {
    v74 = v127;
    sub_25268E380();
    v75 = v130;
    v76 = v166;
    if ((*(v130 + 48))(v74, 1, v166) != 1)
    {
      v77 = sub_25268E390();
      v164 = v78;
      v165 = v77;
      (*(v75 + 8))(v74, v76);
      goto LABEL_27;
    }

    sub_252372288(v74, &qword_27F4DB460);
  }

  v164 = 0;
  v165 = 0;
LABEL_27:
  LOBYTE(v48) = v132;
LABEL_28:
  v79 = &unk_2864838B8;
  if ((v48 & 1) == 0)
  {
    v79 = v63;
  }

  v166 = v79;
  v80 = StaticRVCClusterGroup.currentTitle.getter();
  v162 = v81;
  v163 = v80;
  v82 = v135;
  *v135 = v62;
  *(v82 + 8) = 2;
  *(v82 + 16) = 0;
  *(v82 + 24) = v66;
  v83 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  swift_storeEnumTagMultiPayload();
  v84 = *(*(v83 - 8) + 56);
  v84(v82, 0, 1, v83);
  v85 = v152;
  sub_25268FB70();
  v86 = v153;
  v87 = v154;
  v88 = v155;
  (*(v154 + 104))(v153, *MEMORY[0x277D16878], v155);
  v89 = sub_25268FB40();
  v90 = *(v87 + 8);
  v90(v86, v88);
  v90(v85, v88);
  v91 = v139;
  v92 = *(v139 + 24);
  v93 = v147;
  v84(&v147[v92], 1, 1, v83);
  v94 = *(v91 + 32);
  v95 = v162;
  *v93 = v163;
  v93[1] = v95;
  v96 = v164;
  v93[2] = v165;
  v93[3] = v96;
  sub_252377048(v82, v93 + v92, &qword_27F4DB458);
  *(v93 + *(v91 + 28)) = v89 & 1;
  *(v93 + v94) = 2;
  LOBYTE(v92) = *(v160 + *(type metadata accessor for MatterControlSolver.SourcePath(0) + 24));
  v97 = v160;
  v98 = v157;
  sub_25268FA60();
  v99 = *(type metadata accessor for MatterControlSolver.Source(0) + 44);
  v100 = v158;
  v101 = v159;
  v102 = v141;
  (*(v158 + 16))(v141, v98, v159);
  v103 = v145;
  sub_25237153C(v97 + v99, v145, &qword_27F4DB448);
  v104 = (*(v100 + 80) + 17) & ~*(v100 + 80);
  v105 = (v140 + *(v143 + 80) + v104) & ~*(v143 + 80);
  v106 = swift_allocObject();
  *(v106 + 16) = v92;
  (*(v100 + 32))(v106 + v104, v102, v101);
  sub_2523714D4(v103, v106 + v105, &qword_27F4DB448);
  v107 = v148;
  sub_2523C391C(v93, v148, type metadata accessor for AccessoryControl.StatusButtonState);
  (*(v137 + 56))(v107, 0, 1, v91);
  v108 = v146;
  v109 = v150;
  sub_25237153C(v107, v150 + *(v146 + 40), &qword_27F4DB440);
  sub_2523C391C(v149, v109 + *(v108 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB040);
  v110 = swift_allocObject();
  *(v110 + 16) = v133;
  *(v110 + 32) = sub_2523C36C4;
  *(v110 + 40) = v106;
  sub_252372288(v107, &qword_27F4DB440);
  *v109 = v110;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB408);
  v112 = swift_allocBox();
  v113 = *(v111 + 48);
  *v114 = 4;
  sub_2525EC4EC(&v114[v113]);
  v115 = v151;
  *v151 = v112;
  type metadata accessor for AccessoryControl.ElementIdentifier();
  swift_storeEnumTagMultiPayload();
  v116 = type metadata accessor for AccessoryControl(0);
  v117 = v115 + v116[5];
  v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470) + 48);
  LOBYTE(v103) = v142;
  *v117 = v142;
  v119 = v138;
  *(v117 + 1) = v134;
  *(v117 + 2) = v119;
  v120 = v166;
  *(v117 + 3) = v136;
  *(v117 + 4) = v120;
  sub_25237153C(v109, &v117[v118], &qword_27F4DB450);
  type metadata accessor for AccessoryControl.State(0);
  swift_storeEnumTagMultiPayload();

  v121 = MatterControlSolver.Source.controlAccessibilityIdentifier.getter();
  v123 = v122;
  sub_252372288(v109, &qword_27F4DB450);
  (*(v158 + 8))(v157, v159);

  v124 = (v115 + v116[7]);
  v125 = v116[9];
  *(v115 + v125) = 16;
  *(v115 + v116[6]) = 0;
  *v124 = v121;
  v124[1] = v123;
  *(v115 + v116[8]) = 1028;
  *(v115 + v125) = 16;
  *(v115 + v116[10]) = v103;
  sub_2523C3ABC(v93, type metadata accessor for AccessoryControl.StatusButtonState);
  return (*(*(v116 - 1) + 56))(v115, 0, 1, v116);
}

uint64_t sub_2523BF1E4@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v11, &qword_27F4DB440);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_252372288(v11, &qword_27F4DB440);
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v17 = __swift_project_value_buffer(v16, qword_27F4DB8A0);
    return sub_2523C391C(v17, a5, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    sub_2523C37B8(v11, v15, type metadata accessor for AccessoryControl.StatusButtonState);
    v20 = a2;
    sub_2523BF414(v15, &v20, a3, v19, a5);
    return sub_2523C3ABC(v15, type metadata accessor for AccessoryControl.StatusButtonState);
  }
}

uint64_t sub_2523BF414@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v90 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v87 - v10;
  v12 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  v98 = *(v12 - 8);
  *&v99 = v12;
  MEMORY[0x28223BE20](v12);
  v95 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v14 - 8);
  v96 = &v87 - v15;
  v16 = sub_25268EDF0();
  v92 = *(v16 - 8);
  v93 = v16;
  MEMORY[0x28223BE20](v16);
  v91 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  v19 = MEMORY[0x28223BE20](v18);
  v94 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v97 = &v87 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v87 - v23;
  v25 = *a2;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v26 = sub_2526905A0();
  __swift_project_value_buffer(v26, qword_27F4E4B18);
  sub_2523C391C(a1, v24, type metadata accessor for AccessoryControl.StatusButtonState);
  v27 = sub_252690580();
  v28 = sub_252692F10();
  if (os_log_type_enabled(v27, v28))
  {
    v88 = a3;
    v89 = a5;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v102[0] = v30;
    *v29 = 136446466;
    v87 = a1;
    if (v25 <= 3)
    {
      v39 = 0xE400000000000000;
      v40 = 1701736270;
      v41 = 0x80000002526AE100;
      v42 = 0xD00000000000001ELL;
      if (v25 != 2)
      {
        v42 = 0x61502F7472617453;
        v41 = 0xEB00000000657375;
      }

      if (v25)
      {
        v40 = 0xD00000000000001CLL;
        v39 = 0x80000002526AE120;
      }

      if (v25 <= 1)
      {
        v37 = v40;
      }

      else
      {
        v37 = v42;
      }

      if (v25 <= 1)
      {
        v38 = v39;
      }

      else
      {
        v38 = v41;
      }
    }

    else
    {
      v31 = 0xED0000646C6F4820;
      v32 = 0x746E696F70746553;
      v33 = 0xEE00746573657250;
      v34 = 0x20746E6572727543;
      if (v25 != 7)
      {
        v34 = 0xD000000000000014;
        v33 = 0x80000002526AE0E0;
      }

      if (v25 != 6)
      {
        v32 = v34;
        v31 = v33;
      }

      v35 = 0xEE006B636F44206FLL;
      v36 = 0x54206E7275746552;
      if (v25 != 4)
      {
        v36 = 0x52207463656C6553;
        v35 = 0xEC000000736D6F6FLL;
      }

      if (v25 <= 5)
      {
        v37 = v36;
      }

      else
      {
        v37 = v32;
      }

      if (v25 <= 5)
      {
        v38 = v35;
      }

      else
      {
        v38 = v31;
      }
    }

    v43 = sub_2525BDA90(v37, v38, v102);

    *(v29 + 4) = v43;
    *(v29 + 12) = 2082;
    sub_2523C391C(v24, v97, type metadata accessor for AccessoryControl.StatusButtonState);
    v44 = sub_252692C20();
    v46 = v45;
    sub_2523C3ABC(v24, type metadata accessor for AccessoryControl.StatusButtonState);
    v47 = sub_2525BDA90(v44, v46, v102);

    *(v29 + 14) = v47;
    _os_log_impl(&dword_252309000, v27, v28, "User pressed something in %{public}s, state: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v30, -1, -1);
    MEMORY[0x2530A5A40](v29, -1, -1);

    a5 = v89;
    a3 = v88;
    a1 = v87;
  }

  else
  {

    sub_2523C3ABC(v24, type metadata accessor for AccessoryControl.StatusButtonState);
  }

  v48 = *(a1 + *(v18 + 32));
  if (v48 != 2 && (v48 & 1) != 0)
  {
    v49 = v91;
    sub_25237153C(v90, v91, &qword_27F4DB448);
    v51 = v92;
    v50 = v93;
    (*(v92 + 104))(v49, *MEMORY[0x277D15BE8], v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE80);
    v52 = swift_allocObject();
    v99 = xmmword_252694E90;
    *(v52 + 16) = xmmword_252694E90;
    *(v52 + 56) = v50;
    *(v52 + 64) = sub_2523C3888(&qword_27F4DB480, MEMORY[0x277D15BF8]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v52 + 32));
    (*(v51 + 16))(boxed_opaque_existential_0, v49, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB320);
    v54 = sub_25268E710();
    v55 = *(v54 - 8);
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v99;
    (*(v55 + 16))(v57 + v56, a3, v54);
    v58 = sub_25240C51C(v57);
    swift_setDeallocating();
    (*(v55 + 8))(v57 + v56, v54);
    swift_deallocClassInstance();
    v59 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v60 = *(*(v59 - 8) + 56);
    v61 = v96;
    v60(v96, 1, 1, v59);
    sub_2523F648C(v52, v58, v102);
    (*(v51 + 8))(v49, v50);
    v62 = v102[0];
LABEL_37:
    v60(a5, 1, 1, v59);
    v81 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a5 + v81) = 0;
    sub_252377048(v61, a5, &qword_27F4DB210);

    *(a5 + v81) = v62;
    return result;
  }

  sub_25237153C(a1 + *(v18 + 24), v11, &qword_27F4DB458);
  if ((*(v98 + 48))(v11, 1, v99) == 1)
  {
    sub_252372288(v11, &qword_27F4DB458);
    v63 = a1;
    v64 = v94;
    sub_2523C391C(v63, v94, type metadata accessor for AccessoryControl.StatusButtonState);
    v65 = sub_252690580();
    v66 = sub_252692EF0();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v102[0] = v68;
      *v67 = 136446210;
      sub_2523C391C(v64, v97, type metadata accessor for AccessoryControl.StatusButtonState);
      v69 = sub_252692C20();
      v71 = v70;
      sub_2523C3ABC(v64, type metadata accessor for AccessoryControl.StatusButtonState);
      v72 = sub_2525BDA90(v69, v71, v102);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_252309000, v65, v66, "While trying to set button state, failed to get selection state: %{public}s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x2530A5A40](v68, -1, -1);
      MEMORY[0x2530A5A40](v67, -1, -1);
    }

    else
    {

      sub_2523C3ABC(v64, type metadata accessor for AccessoryControl.StatusButtonState);
    }

    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v84 = __swift_project_value_buffer(v83, qword_27F4DB8A0);
    return sub_2523C391C(v84, a5, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v73 = v11;
    v74 = v95;
    sub_2523C37B8(v73, v95, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    sub_2523C013C(v74, &v100);
    if (v101)
    {
      sub_25235E1A4(&v100, v102);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE80);
      v75 = swift_allocObject();
      v99 = xmmword_252694E90;
      *(v75 + 16) = xmmword_252694E90;
      sub_2523C3820(v102, v75 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB320);
      v76 = sub_25268E710();
      v77 = *(v76 - 8);
      v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v79 = swift_allocObject();
      *(v79 + 16) = v99;
      (*(v77 + 16))(v79 + v78, a3, v76);
      v80 = sub_25240C51C(v79);
      swift_setDeallocating();
      (*(v77 + 8))(v79 + v78, v76);
      swift_deallocClassInstance();
      v59 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
      v60 = *(*(v59 - 8) + 56);
      v61 = v96;
      v60(v96, 1, 1, v59);
      sub_2523F648C(v75, v80, &v100);
      __swift_destroy_boxed_opaque_existential_1Tm(v102);
      sub_2523C3ABC(v74, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
      v62 = v100;
      goto LABEL_37;
    }

    sub_252372288(&v100, &qword_27F4DB478);
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v86 = __swift_project_value_buffer(v85, qword_27F4DB8A0);
    sub_2523C391C(v86, a5, type metadata accessor for AccessoryControl.WriteSpecification);
    return sub_2523C3ABC(v74, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
  }
}

void sub_2523C013C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB488);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2523C391C(a1, v15, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v16 = *(v15 + 2);

    if (v16)
    {
      v17 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
      v18 = *(v17 - 8);
      (*(v18 + 56))(v12, 1, 1, v17);
      v19 = 0;
      v20 = 1 << *(v16 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      v22 = v21 & *(v16 + 56);
      v23 = (v20 + 63) >> 6;
      do
      {
        if (!v22)
        {
          while (1)
          {
            v24 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v24 >= v23)
            {

              goto LABEL_21;
            }

            v22 = *(v16 + 56 + 8 * v24);
            ++v19;
            if (v22)
            {
              v19 = v24;
              goto LABEL_12;
            }
          }

          __break(1u);
          goto LABEL_31;
        }

        v24 = v19;
LABEL_12:
        v25 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
      }

      while (*(*(v16 + 48) + ((v24 << 10) | (16 * v25)) + 8) != 1);

      sub_2525C8404(v26, v10);
      j__swift_bridgeObjectRelease();

      sub_252372288(v12, &qword_27F4DB488);
      sub_2523714D4(v10, v12, &qword_27F4DB488);
LABEL_21:
      sub_25237153C(v12, v7, &qword_27F4DB488);
      if ((*(v18 + 48))(v7, 1, v17) == 1)
      {
        sub_252372288(v12, &qword_27F4DB488);
        sub_252372288(v7, &qword_27F4DB488);
        goto LABEL_19;
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_252372288(v12, &qword_27F4DB488);
        sub_2523C3ABC(v7, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        goto LABEL_19;
      }

      v31 = *v7;
      if (qword_27F4DABD0 != -1)
      {
        swift_once();
      }

      v32 = sub_2526905A0();
      __swift_project_value_buffer(v32, qword_27F4E4B18);
      v33 = sub_252690580();
      v34 = sub_252692F10();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 67109120;
        *(v35 + 4) = v31;
        _os_log_impl(&dword_252309000, v33, v34, "Skipping area: %u", v35, 8u);
        MEMORY[0x2530A5A40](v35, -1, -1);
      }

      v36 = sub_25268FB90();
      *(a2 + 24) = v36;
      *(a2 + 32) = sub_2523C3888(&qword_27F4DB3D0, MEMORY[0x277D16978]);
      *__swift_allocate_boxed_opaque_existential_0(a2) = v31;
      (*(*(v36 - 8) + 104))();
      sub_252372288(v12, &qword_27F4DB488);
      return;
    }
  }

  else
  {
    sub_2523C3ABC(v15, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
  }

  if (qword_27F4DABD0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v27 = sub_2526905A0();
  __swift_project_value_buffer(v27, qword_27F4E4B18);
  v28 = sub_252690580();
  v29 = sub_252692EF0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_252309000, v28, v29, "Incorrect values found for selection multi selection state", v30, 2u);
    MEMORY[0x2530A5A40](v30, -1, -1);
  }

LABEL_19:
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
}

uint64_t sub_2523C0714(uint64_t a1, char *a2)
{
  v35 = a1;
  v32 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v3 = MEMORY[0x28223BE20](v32);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v34 = (&v31 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB490);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v37 = sub_25268E4D0();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v31 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB460);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = a2;
  v14 = sub_25268E3A0();
  sub_25268E380();
  v15 = sub_25268E3C0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    v17 = &qword_27F4DB460;
    v18 = v12;
  }

  else
  {
    v19 = sub_25268E3A0();
    result = (*(v16 + 8))(v12, v15);
    if (v14 != v19)
    {
      return result;
    }

    v21 = sub_25268E4E0();
    if (v21)
    {
      v22 = v21;
      MEMORY[0x28223BE20](v21);
      *(&v31 - 2) = v13;
      sub_2525F8504(sub_2523C38D0, v22, v8);

      v23 = v36;
      v24 = v37;
      if ((*(v36 + 48))(v8, 1, v37) != 1)
      {
        v25 = v31;
        (*(v23 + 32))(v31, v8, v24);
        v26 = sub_25268E3A0();
        v27 = v34;
        *v34 = v26;
        swift_storeEnumTagMultiPayload();
        v28 = v33;
        sub_2523C391C(v27, v33, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        v29 = sub_25268E490();
        sub_2524A6A6C(v29, v30 & 1, v28);
        sub_2523C3ABC(v27, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        return (*(v23 + 8))(v25, v24);
      }
    }

    else
    {
      (*(v36 + 56))(v8, 1, 1, v37);
    }

    v17 = &qword_27F4DB490;
    v18 = v8;
  }

  return sub_252372288(v18, v17);
}

uint64_t sub_2523C0B3C(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v36 = a3;
  v38 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v4 = MEMORY[0x28223BE20](v38);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = (&v35 - v6);
  v8 = sub_25268E470();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = *(v9 + 16);
  v37 = a2;
  v18(&v35 - v16, a2, v8);
  (*(v9 + 56))(v17, 0, 1, v8);
  sub_25237153C(v17, v15, &qword_27F4DB4A8);
  if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    sub_252372288(v15, &qword_27F4DB4A8);
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v9 + 32))(v11, v15, v8);
    v20 = v36;
    v21 = sub_25268E3D0();
    MEMORY[0x28223BE20](v21);
    *(&v35 - 2) = v20;
    v22 = v40;
    v19 = sub_252365DB8(sub_2523C3AA0, (&v35 - 4), v21);
    v40 = v22;

    (*(v9 + 8))(v11, v8);
  }

  sub_252372288(v17, &qword_27F4DB4A8);
  v23 = v39;
  if (!v19[2])
  {
  }

  *v7 = sub_25268E450();
  swift_storeEnumTagMultiPayload();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v23;
  v25 = v41;
  v27 = sub_2523674BC(v7);
  v28 = v25[2];
  v29 = (v26 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    __break(1u);
    goto LABEL_16;
  }

  LOBYTE(v11) = v26;
  if (v25[3] >= v30)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_25236D13C();
    v25 = v41;
    goto LABEL_11;
  }

  sub_25236B1F0(v30, isUniquelyReferenced_nonNull_native);
  v25 = v41;
  v31 = sub_2523674BC(v7);
  if ((v11 & 1) != (v32 & 1))
  {
    result = sub_2526933E0();
    __break(1u);
    return result;
  }

  v27 = v31;
LABEL_11:
  *v23 = v25;
  if ((v11 & 1) == 0)
  {
    v34 = v35;
    sub_2523C391C(v7, v35, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    sub_25256DD7C(v27, v34, MEMORY[0x277D84F90], v25);
  }

  sub_2523C5DD4(v19);
  return sub_2523C3ABC(v7, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
}

uint64_t sub_2523C0F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v52 = a1;
  v58 = sub_25268E3C0();
  v6 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = (&v49 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v49 - v14;
  v16 = sub_25268E470();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  result = MEMORY[0x28223BE20](v21);
  v25 = &v49 - v24;
  if (*(a2 + 8))
  {
    if (*(a2 + 8) != 1)
    {
      v50 = *a2;
      v26 = *(a4 + 16);
      v27 = MEMORY[0x277D84F90];
      if (v26)
      {
        v60 = MEMORY[0x277D84F90];
        sub_252370068(0, v26, 0);
        v27 = v60;
        v29 = *(v6 + 16);
        v28 = v6 + 16;
        v30 = a4 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v54 = *(v28 + 56);
        v55 = v29;
        v56 = v28;
        v31 = (v28 - 8);
        do
        {
          v32 = v58;
          v55(v8, v30, v58);
          v33 = sub_25268E3A0();
          (*v31)(v8, v32);
          *v10 = v33;
          swift_storeEnumTagMultiPayload();
          v60 = v27;
          v35 = *(v27 + 16);
          v34 = *(v27 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_252370068(v34 > 1, v35 + 1, 1);
            v27 = v60;
          }

          *(v27 + 16) = v35 + 1;
          sub_2523C37B8(v10, v27 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v35, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
          v30 += v54;
          --v26;
        }

        while (v26);
      }

      v42 = ServiceArea.allRoomsSelected.getter();
      v43 = sub_2526243FC(v27);

      v44 = v51;
      *v51 = v43;
      *(v44 + 8) = (v42 & 1) == 0;
      v45 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
      *(v44 + 16) = 0;
      *(v44 + 24) = 0;
      swift_storeEnumTagMultiPayload();
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
      return sub_2524A6BB8(v44, v50, 2);
    }
  }

  else
  {
    v36 = v23;
    v37 = *a2;
    v38 = result;
    sub_25268E3F0();
    if ((*(v17 + 48))(v15, 1, v38) == 1)
    {
      sub_252372288(v15, &qword_27F4DB4A8);
      result = sub_25268E420();
      if (result)
      {
        if (*(result + 16))
        {
          (*(v17 + 16))(v20, result + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v38);

          (*(v17 + 32))(v36, v20, v38);
          v39 = sub_25268E450();
          v40 = v51;
          *v51 = v39;
          swift_storeEnumTagMultiPayload();
          v41 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
          sub_2524A6BB8(v40, v37, 0);
          return (*(v17 + 8))(v36, v38);
        }

        else
        {
        }
      }
    }

    else
    {
      (*(v17 + 32))(v25, v15, v38);
      v46 = sub_25268E450();
      v47 = v51;
      *v51 = v46;
      swift_storeEnumTagMultiPayload();
      v48 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
      sub_2524A6BB8(v47, v37, 0);
      return (*(v17 + 8))(v25, v38);
    }
  }

  return result;
}

uint64_t sub_2523C1634@<X0>(_OWORD *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_25268E710();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[1];
  v14[0] = *a1;
  v14[1] = v10;
  v13 = a2;
  sub_25268FA60();
  sub_2523C173C(v14, &v13, v9, a3);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2523C173C@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v238 = a3;
  v241 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v239 = &v222 - v7;
  v233 = sub_25268FB80();
  v232 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v231 = (&v222 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v248 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v247 = *(v248 - 8);
  v9 = MEMORY[0x28223BE20](v248);
  v11 = &v222 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v245 = &v222 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v235 = (&v222 - v15);
  MEMORY[0x28223BE20](v14);
  v234 = &v222 - v16;
  v242 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  v250 = *(v242 - 8);
  v17 = MEMORY[0x28223BE20](v242);
  v227 = &v222 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v237 = &v222 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v228 = &v222 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v236 = (&v222 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v222 - v26;
  MEMORY[0x28223BE20](v25);
  v251 = &v222 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4B0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v254 = (&v222 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v33 = &v222 - v32;
  v35 = *a1;
  v34 = a1[1];
  v36 = a1[3];
  v255 = a1[2];
  v253 = v36;
  LODWORD(v37) = *a2;
  if (qword_27F4DABD0 != -1)
  {
LABEL_117:
    swift_once();
  }

  v38 = sub_2526905A0();
  v39 = __swift_project_value_buffer(v38, qword_27F4E4B18);
  v40 = sub_252690580();
  v41 = sub_252692F10();
  v42 = os_log_type_enabled(v40, v41);
  v252 = v27;
  v246 = v11;
  if (v42)
  {
    v43 = v35;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v261[0] = v45;
    *v44 = 136446210;
    v46 = v45;
    if (v37 <= 3)
    {
      v123 = 0xE400000000000000;
      v124 = 1701736270;
      v125 = 0x80000002526AE100;
      v126 = 0xD00000000000001ELL;
      if (v37 != 2)
      {
        v126 = 0x61502F7472617453;
        v125 = 0xEB00000000657375;
      }

      if (v37)
      {
        v124 = 0xD00000000000001CLL;
        v123 = 0x80000002526AE120;
      }

      if (v37 <= 1)
      {
        v53 = v124;
      }

      else
      {
        v53 = v126;
      }

      if (v37 <= 1)
      {
        v54 = v123;
      }

      else
      {
        v54 = v125;
      }
    }

    else
    {
      v47 = 0xED0000646C6F4820;
      v48 = 0x746E696F70746553;
      v49 = 0xEE00746573657250;
      v50 = 0x20746E6572727543;
      if (v37 != 7)
      {
        v50 = 0xD000000000000014;
        v49 = 0x80000002526AE0E0;
      }

      if (v37 != 6)
      {
        v48 = v50;
        v47 = v49;
      }

      v51 = 0xEE006B636F44206FLL;
      v52 = 0x54206E7275746552;
      if (v37 != 4)
      {
        v52 = 0x52207463656C6553;
        v51 = 0xEC000000736D6F6FLL;
      }

      if (v37 <= 5)
      {
        v53 = v52;
      }

      else
      {
        v53 = v48;
      }

      if (v37 <= 5)
      {
        v54 = v51;
      }

      else
      {
        v54 = v47;
      }
    }

    v127 = sub_2525BDA90(v53, v54, v261);

    *(v44 + 4) = v127;
    _os_log_impl(&dword_252309000, v40, v41, "User pressed %{public}s button.", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x2530A5A40](v46, -1, -1);
    MEMORY[0x2530A5A40](v44, -1, -1);

    v27 = v252;
    v35 = v43;
    if (!v34)
    {
      goto LABEL_78;
    }
  }

  else
  {

    if (!v34)
    {
LABEL_78:
      v128 = sub_252690580();
      v129 = sub_252692EF0();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        *&v258 = v131;
        *v130 = 136446210;
        v261[0] = v35;
        v261[1] = 0;
        v261[2] = v255;
        v262 = v253;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4B8);
        v132 = sub_252692C20();
        v134 = sub_2525BDA90(v132, v133, &v258);

        *(v130 + 4) = v134;
        _os_log_impl(&dword_252309000, v128, v129, "While trying to set button state, failed to get selection state: %{public}s", v130, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v131);
        MEMORY[0x2530A5A40](v131, -1, -1);
        MEMORY[0x2530A5A40](v130, -1, -1);
      }

      v135 = v241;
      if (qword_27F4DA998 != -1)
      {
        swift_once();
      }

      v136 = type metadata accessor for AccessoryControl.WriteSpecification(0);
      v137 = __swift_project_value_buffer(v136, qword_27F4DB8A0);
      return sub_2523C391C(v137, v135, type metadata accessor for AccessoryControl.WriteSpecification);
    }
  }

  v226 = v39;
  v11 = (v253 + 64);
  v55 = 1 << *(v253 + 32);
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  else
  {
    v56 = -1;
  }

  v34 = v56 & *(v253 + 64);
  v57 = (v55 + 63) >> 6;

  v229 = 0;
  v243 = 0;
  v58 = 0;
  v59 = &qword_27F4DB4C0;
  v60 = &unk_252695780;
  v240 = 2;
  v230 = 1;
  v249 = v33;
  v35 = v254;
LABEL_21:
  v61 = v58;
  if (v34)
  {
    while (1)
    {
      v62 = v61;
LABEL_30:
      v65 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v66 = v65 | (v62 << 6);
      v67 = *(v253 + 48) + 16 * v66;
      v68 = *v67;
      v69 = *(v67 + 8);
      v70 = v251;
      sub_2523C391C(*(v253 + 56) + *(v250 + 72) * v66, v251, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
      v59 = &qword_27F4DB4C0;
      v60 = &unk_252695780;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C0);
      v72 = *(v71 + 48);
      v73 = v254;
      *v254 = v68;
      *(v73 + 8) = v69;
      v74 = v70;
      v35 = v73;
      sub_2523C37B8(v74, v73 + v72, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
      (*(*(v71 - 8) + 56))(v35, 0, 1, v71);
      v255 = v62;
      v27 = v252;
      v33 = v249;
LABEL_31:
      sub_2523714D4(v35, v33, &qword_27F4DB4B0);
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C0);
      if ((*(*(v75 - 8) + 48))(v33, 1, v75) == 1)
      {
        break;
      }

      v76 = v33[8];
      sub_2523C37B8(&v33[*(v75 + 48)], v27, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
      if (v76 != 1)
      {
        if (!v76)
        {
          v78 = v236;
          sub_2523C391C(v27, v236, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
          if (swift_getEnumCaseMultiPayload())
          {

            v211 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState;
          }

          else
          {
            v79 = v78;
            v80 = v234;
            sub_2523C37B8(v79, v234, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
            v81 = v80;
            v78 = v235;
            sub_2523C37B8(v81, v235, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_2523C3ABC(v27, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
              v230 = 0;
              v229 = *v78;
              v58 = v255;
              goto LABEL_21;
            }

            v211 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier;
          }

          sub_2523C3ABC(v78, v211);
          v198 = v228;
          sub_2523C391C(v27, v228, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
          v199 = sub_252690580();
          v200 = sub_252692EF0();
          if (os_log_type_enabled(v199, v200))
          {
            v201 = swift_slowAlloc();
            v202 = swift_slowAlloc();
            v261[0] = v202;
            *v201 = 136446466;
            LOBYTE(v258) = 0;
            v212 = sub_252692C20();
            v214 = sub_2525BDA90(v212, v213, v261);

            *(v201 + 4) = v214;
            *(v201 + 12) = 2082;
            sub_2523C391C(v198, v251, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
            v215 = sub_252692C20();
            v217 = v216;
            sub_2523C3ABC(v198, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
            v218 = sub_2525BDA90(v215, v217, v261);

            *(v201 + 14) = v218;
            v210 = "Incorrect value found for selection state of type: %{public}s selection state: %{public}s";
LABEL_111:
            _os_log_impl(&dword_252309000, v199, v200, v210, v201, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x2530A5A40](v202, -1, -1);
            MEMORY[0x2530A5A40](v201, -1, -1);

LABEL_113:
            v219 = v241;
            if (qword_27F4DA998 != -1)
            {
              swift_once();
            }

            v220 = type metadata accessor for AccessoryControl.WriteSpecification(0);
            v221 = __swift_project_value_buffer(v220, qword_27F4DB8A0);
            sub_2523C391C(v221, v219, type metadata accessor for AccessoryControl.WriteSpecification);

            return sub_2523C3ABC(v27, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
          }

LABEL_112:

          sub_2523C3ABC(v198, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
          goto LABEL_113;
        }

        v82 = v237;
        sub_2523C391C(v27, v237, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_2523C3ABC(v82, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
          v198 = v227;
          sub_2523C391C(v27, v227, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
          v199 = sub_252690580();
          v200 = sub_252692EF0();
          if (os_log_type_enabled(v199, v200))
          {
            v201 = swift_slowAlloc();
            v202 = swift_slowAlloc();
            v261[0] = v202;
            *v201 = 136446466;
            LOBYTE(v258) = 2;
            v203 = sub_252692C20();
            v205 = sub_2525BDA90(v203, v204, v261);

            *(v201 + 4) = v205;
            *(v201 + 12) = 2082;
            sub_2523C391C(v198, v251, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
            v206 = sub_252692C20();
            v208 = v207;
            sub_2523C3ABC(v198, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
            v209 = sub_2525BDA90(v206, v208, v261);

            *(v201 + 14) = v209;
            v210 = "Incorrect values found for selection state of type: %{public}s selection state: %{public}s";
            goto LABEL_111;
          }

          goto LABEL_112;
        }

        v83 = *v82;
        v240 = *(v82 + 8);

        v37 = v83 + 56;
        v84 = 1 << *(v83 + 32);
        if (v84 < 64)
        {
          v85 = ~(-1 << v84);
        }

        else
        {
          v85 = -1;
        }

        v27 = v85 & *(v83 + 56);
        v86 = (v84 + 63) >> 6;
        v244 = v83;

        v87 = 0;
        v243 = MEMORY[0x277D84F90];
LABEL_45:
        v88 = v87;
        if (!v27)
        {
          goto LABEL_47;
        }

        do
        {
          v87 = v88;
LABEL_50:
          v89 = __clz(__rbit64(v27));
          v27 &= v27 - 1;
          v90 = v245;
          sub_2523C391C(*(v244 + 48) + *(v247 + 72) * (v89 | (v87 << 6)), v245, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
          v91 = v90;
          v92 = v246;
          sub_2523C37B8(v91, v246, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v225 = *v92;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v243 = sub_252369138(0, *(v243 + 2) + 1, 1, v243);
            }

            v60 = &unk_252695780;
            v35 = v254;
            v94 = *(v243 + 2);
            v93 = *(v243 + 3);
            v95 = v94 + 1;
            if (v94 >= v93 >> 1)
            {
              v224 = v94 + 1;
              v223 = v94;
              v97 = sub_252369138((v93 > 1), v94 + 1, 1, v243);
              v95 = v224;
              v94 = v223;
              v243 = v97;
            }

            v96 = v243;
            *(v243 + 2) = v95;
            *&v96[4 * v94 + 32] = v225;
            goto LABEL_45;
          }

          sub_2523C3ABC(v92, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
          v88 = v87;
          v60 = &unk_252695780;
          v35 = v254;
        }

        while (v27);
LABEL_47:
        while (1)
        {
          v87 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            break;
          }

          if (v87 >= v86)
          {
            v27 = v252;
            sub_2523C3ABC(v252, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);

            v59 = &qword_27F4DB4C0;
            v58 = v255;
            goto LABEL_21;
          }

          v27 = *(v37 + 8 * v87);
          ++v88;
          if (v27)
          {
            goto LABEL_50;
          }
        }

        __break(1u);
        goto LABEL_117;
      }

      sub_2523C3ABC(v27, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
      v61 = v255;
      if (!v34)
      {
        goto LABEL_23;
      }
    }

    if (v240 == 2)
    {

      v98 = MEMORY[0x277D84F90];
      v99 = v241;
      v59 = v239;
      goto LABEL_104;
    }

    v59 = v239;
    if (v240)
    {
      v60 = v232;
      v61 = &v258 + 8;
      if (!v243)
      {
        goto LABEL_93;
      }

      v100 = v231;
      *v231 = v243;
      v101 = v233;
      (*(v60 + 13))(v100, *MEMORY[0x277D168C8], v233);
      v102 = sub_25268FB90();
      v262 = v102;
      v103 = sub_2523C3888(&qword_27F4DB3D0, MEMORY[0x277D16978]);
      v263 = v103;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v261);
      (*(v60 + 2))(boxed_opaque_existential_0, v100, v101);
      v105 = *(v102 - 8);
      (*(v105 + 104))(boxed_opaque_existential_0, *MEMORY[0x277D16918], v102);
      v106 = *(v60 + 1);

      v106(v100, v101);
      v98 = sub_252369114(0, 1, 1, MEMORY[0x277D84F90]);
      v108 = v98[2];
      v107 = v98[3];
      if (v108 >= v107 >> 1)
      {
        v98 = sub_252369114((v107 > 1), v108 + 1, 1, v98);
      }

      v259 = v102;
      v260 = v103;
      v109 = __swift_allocate_boxed_opaque_existential_0(&v258);
      (*(v105 + 16))(v109, boxed_opaque_existential_0, v102);
      v98[2] = v108 + 1;
      sub_25235E1A4(&v258, &v98[5 * v108 + 4]);
      sub_2523C3820(v261, &v258);
      v110 = v243;

      v111 = sub_252690580();
      v112 = sub_252692F10();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v257 = v114;
        *v113 = 136315394;
        v115 = MEMORY[0x2530A4900](v110, MEMORY[0x277D84CC0]);
        v117 = v116;

        v118 = sub_2525BDA90(v115, v117, &v257);

        *(v113 + 4) = v118;
        *(v113 + 12) = 2082;
        sub_2523C3820(&v258, v256);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE88);
        v119 = sub_252692C20();
        v121 = v120;
        __swift_destroy_boxed_opaque_existential_1Tm(&v258);
        v122 = sub_2525BDA90(v119, v121, &v257);

        *(v113 + 14) = v122;
        _os_log_impl(&dword_252309000, v111, v112, "Changing selected areas to: %s, command: %{public}s", v113, 0x16u);
        swift_arrayDestroy();
        goto LABEL_99;
      }

      goto LABEL_102;
    }

    v139 = v232;
    if (v230)
    {
      v140 = v231;
      v141 = MEMORY[0x277D84F90];
      *v231 = MEMORY[0x277D84F90];
      v142 = v233;
      v139[13](v140, *MEMORY[0x277D168C8], v233);
      v143 = sub_25268FB90();
      v262 = v143;
      v144 = sub_2523C3888(&qword_27F4DB3D0, MEMORY[0x277D16978]);
      v263 = v144;
      v145 = __swift_allocate_boxed_opaque_existential_0(v261);
      (v139)[2](v145, v140, v142);
      v146 = *(v143 - 8);
      (*(v146 + 104))(v145, *MEMORY[0x277D16918], v143);
      (v139[1])(v140, v142);
      v98 = sub_252369114(0, 1, 1, v141);
      v148 = v98[2];
      v147 = v98[3];
      if (v148 >= v147 >> 1)
      {
        v98 = sub_252369114((v147 > 1), v148 + 1, 1, v98);
      }

      v259 = v143;
      v260 = v144;
      v149 = __swift_allocate_boxed_opaque_existential_0(&v258);
      (*(v146 + 16))(v149, v145, v143);
      v98[2] = v148 + 1;
      sub_25235E1A4(&v258, &v98[5 * v148 + 4]);
      sub_2523C3820(v261, &v258);
      v111 = sub_252690580();
      v150 = sub_252692F10();
      if (os_log_type_enabled(v111, v150))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v257 = v114;
        *v113 = 136446210;
        sub_2523C3820(&v258, v256);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE88);
        v151 = sub_252692C20();
        v153 = v152;
        __swift_destroy_boxed_opaque_existential_1Tm(&v258);
        v154 = sub_2525BDA90(v151, v153, &v257);

        *(v113 + 4) = v154;
        v155 = "Changing selected areas to all areas, command: %{public}s";
        goto LABEL_97;
      }
    }

    else
    {
      v156 = v231;
      *v231 = v229;
      v157 = v233;
      v139[13](v156, *MEMORY[0x277D168C0], v233);
      v158 = sub_25268FB90();
      v262 = v158;
      v159 = sub_2523C3888(&qword_27F4DB3D0, MEMORY[0x277D16978]);
      v263 = v159;
      v160 = __swift_allocate_boxed_opaque_existential_0(v261);
      (v139)[2](v160, v156, v157);
      v161 = *(v158 - 8);
      (*(v161 + 104))(v160, *MEMORY[0x277D16918], v158);
      (v139[1])(v156, v157);
      v98 = sub_252369114(0, 1, 1, MEMORY[0x277D84F90]);
      v163 = v98[2];
      v162 = v98[3];
      if (v163 >= v162 >> 1)
      {
        v98 = sub_252369114((v162 > 1), v163 + 1, 1, v98);
      }

      v259 = v158;
      v260 = v159;
      v164 = __swift_allocate_boxed_opaque_existential_0(&v258);
      (*(v161 + 16))(v164, v160, v158);
      v98[2] = v163 + 1;
      sub_25235E1A4(&v258, &v98[5 * v163 + 4]);
      sub_2523C3820(v261, &v258);
      v111 = sub_252690580();
      v165 = sub_252692F10();
      if (os_log_type_enabled(v111, v165))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v257 = v114;
        *v113 = 67109378;
        *(v113 + 4) = v229;
        *(v113 + 8) = 2082;
        sub_2523C3820(&v258, v256);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE88);
        v166 = sub_252692C20();
        v168 = v167;
        __swift_destroy_boxed_opaque_existential_1Tm(&v258);
        v169 = sub_2525BDA90(v166, v168, &v257);

        *(v113 + 10) = v169;
        v155 = "Changing selected map to: %u, command: %{public}s";
        v170 = v165;
        v171 = v111;
        v172 = v113;
        v173 = 18;
        goto LABEL_98;
      }
    }

    goto LABEL_100;
  }

LABEL_23:
  if (v57 <= (v61 + 1))
  {
    v63 = v61 + 1;
  }

  else
  {
    v63 = v57;
  }

  v64 = (v63 - 1);
  while (1)
  {
    v62 = (v61 + 1);
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v62 >= v57)
    {
      v255 = v64;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C0);
      (*(*(v77 - 8) + 56))(v35, 1, 1, v77);
      v34 = 0;
      goto LABEL_31;
    }

    v34 = *&v11[8 * v62];
    ++v61;
    if (v34)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_93:
  v174 = *(v61 - 32);
  v175 = MEMORY[0x277D84F90];
  *v174 = MEMORY[0x277D84F90];
  v176 = v233;
  (*(v60 + 13))(v174, *MEMORY[0x277D168C8], v233);
  v177 = sub_25268FB90();
  v262 = v177;
  v178 = sub_2523C3888(&qword_27F4DB3D0, MEMORY[0x277D16978]);
  v263 = v178;
  v179 = __swift_allocate_boxed_opaque_existential_0(v261);
  (*(v60 + 2))(v179, v174, v176);
  v180 = *(v177 - 8);
  (*(v180 + 104))(v179, *MEMORY[0x277D16918], v177);
  (*(v60 + 1))(v174, v176);
  v98 = sub_252369114(0, 1, 1, v175);
  v182 = v98[2];
  v181 = v98[3];
  if (v182 >= v181 >> 1)
  {
    v98 = sub_252369114((v181 > 1), v182 + 1, 1, v98);
  }

  v259 = v177;
  v260 = v178;
  v183 = __swift_allocate_boxed_opaque_existential_0(&v258);
  (*(v180 + 16))(v183, v179, v177);
  v98[2] = v182 + 1;
  sub_25235E1A4(&v258, &v98[5 * v182 + 4]);
  sub_2523C3820(v261, &v258);
  v111 = sub_252690580();
  v150 = sub_252692F10();
  if (!os_log_type_enabled(v111, v150))
  {
LABEL_100:

LABEL_102:
    __swift_destroy_boxed_opaque_existential_1Tm(&v258);
    goto LABEL_103;
  }

  v113 = swift_slowAlloc();
  v114 = swift_slowAlloc();
  v257 = v114;
  *v113 = 136446210;
  sub_2523C3820(&v258, v256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE88);
  v184 = sub_252692C20();
  v186 = v185;
  __swift_destroy_boxed_opaque_existential_1Tm(&v258);
  v187 = sub_2525BDA90(v184, v186, &v257);

  *(v113 + 4) = v187;
  v155 = "Clearing selected areas, command: %{public}s";
LABEL_97:
  v170 = v150;
  v171 = v111;
  v172 = v113;
  v173 = 12;
LABEL_98:
  _os_log_impl(&dword_252309000, v171, v170, v155, v172, v173);
  __swift_destroy_boxed_opaque_existential_1Tm(v114);
LABEL_99:
  MEMORY[0x2530A5A40](v114, -1, -1);
  MEMORY[0x2530A5A40](v113, -1, -1);

LABEL_103:
  __swift_destroy_boxed_opaque_existential_1Tm(v261);
  v99 = v241;
LABEL_104:
  v188 = v238;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB320);
  v189 = sub_25268E710();
  v190 = *(v189 - 8);
  v191 = (*(v190 + 80) + 32) & ~*(v190 + 80);
  v192 = swift_allocObject();
  *(v192 + 16) = xmmword_252694E90;
  (*(v190 + 16))(v192 + v191, v188, v189);
  v193 = sub_25240C51C(v192);
  swift_setDeallocating();
  (*(v190 + 8))(v192 + v191, v189);
  swift_deallocClassInstance();
  v194 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  v195 = *(*(v194 - 8) + 56);
  v195(v59, 1, 1, v194);
  sub_2523F648C(v98, v193, v261);
  v196 = v261[0];
  v195(v99, 1, 1, v194);
  v197 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
  *(v99 + v197) = 0;
  sub_252377048(v59, v99, &qword_27F4DB210);

  *(v99 + v197) = v196;
  return result;
}

uint64_t sub_2523C36C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_25268E710() - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB448) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2523BF1E4(a1, v9, v2 + v6, v10, a2);
}

uint64_t sub_2523C37B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523C3820(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2523C3888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2523C391C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523C39C0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25268FC20();
  v5 = *(v2 + 16);

  return sub_2523C1634(a1, v5, a2);
}

uint64_t sub_2523C3ABC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2523C3B1C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(sub_25268FC20() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2523BCD38(a1, v6, a2);
}

uint64_t sub_2523C3BB4@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v63 = a3;
  v64 = a2;
  v60 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v60);
  v59 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268DA10();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v57 = (&v51 - v9);
  v10 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v51 - v14;
  v16 = type metadata accessor for MatterControlSolver.Source(0);
  v17 = v16 - 8;
  v56 = *(v16 - 8);
  v18 = *(v56 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v51 - v21;
  v23 = sub_25268E310();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  LOBYTE(v65[0]) = 3;
  sub_2525EA7E4(v15, v65, v22);
  sub_252372288(v15, &qword_27F4DB3A0);
  v24 = v64;
  sub_2523C41B4(v22, a1, v64, v65);
  v55 = LOBYTE(v65[0]);
  v53 = v66;
  v54 = v65[1];
  v25 = v68;
  v51 = a1;
  v52 = v67;
  v26 = v12;
  sub_2523C4BA4(v22, a1, v24, v12);
  v27 = v57;
  sub_2523C5A30(v24, v57 + *(v8 + 44), type metadata accessor for AccessoryControl.ValueDestination);
  sub_2523C5A30(v22, v20, type metadata accessor for MatterControlSolver.Source);
  v28 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v29 = swift_allocObject();
  sub_2523C5AF8(v20, v29 + v28, type metadata accessor for MatterControlSolver.Source);
  v30 = (v27 + *(v8 + 48));
  v31 = v54;
  *v30 = v55;
  v30[1] = v31;
  v32 = v52;
  *(v30 + 2) = v53;
  *(v30 + 3) = v32;
  *(v30 + 4) = v25;
  v34 = v58;
  v33 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB018);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_252694E90;
  *(v35 + 32) = sub_2523C52D8;
  *(v35 + 40) = v29;
  *v27 = v35;
  v36 = *(v64 + *(type metadata accessor for AccessoryControlSolver.Context() + 20));
  MatterControlSolver.SourcePath.uuid.getter(v34);
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);
  sub_2523C5A30(v26, v33, type metadata accessor for AccessoryControl.BinaryViewConfig);
  v38 = v33 + v37;
  v39 = v27;
  sub_25237153C(v27, v38, &qword_27F4DAD80);
  swift_storeEnumTagMultiPayload();
  v40 = MatterControlSolver.Source.controlAccessibilityIdentifier.getter();
  v42 = v41;
  v43 = 0;
  if (v22[*(v17 + 44)] == 1)
  {
    v43 = StaticRVCClusterGroup.canChangeRunMode.getter();
  }

  if (v36)
  {
    v44 = 4;
  }

  else
  {
    v44 = 3;
  }

  sub_252372288(v39, &qword_27F4DAD80);
  sub_2523C5A98(v26, type metadata accessor for AccessoryControl.BinaryViewConfig);
  sub_2523C5A98(v22, type metadata accessor for MatterControlSolver.Source);
  v45 = v63;
  (*(v61 + 32))(v63, v34, v62);
  type metadata accessor for AccessoryControl.ElementIdentifier();
  swift_storeEnumTagMultiPayload();
  v46 = type metadata accessor for AccessoryControl(0);
  v47 = (v45 + v46[7]);
  v48 = v46[9];
  *(v45 + v48) = 16;
  result = sub_2523C5AF8(v33, v45 + v46[5], type metadata accessor for AccessoryControl.State);
  *(v45 + v46[6]) = 0;
  *v47 = v40;
  v47[1] = v42;
  v50 = (v45 + v46[8]);
  *v50 = v44;
  v50[1] = 4;
  *(v45 + v48) = 11;
  *(v45 + v46[10]) = v43;
  return result;
}

uint64_t sub_2523C41B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, double *a4@<X8>)
{
  v87 = a3;
  v85 = a1;
  v83 = a4;
  v93 = sub_25268E4A0();
  v79 = *(v93 - 8);
  v5 = MEMORY[0x28223BE20](v93);
  v92 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v91 = &v65[-v7];
  v8 = sub_25268E4D0();
  v88 = *(v8 - 8);
  v89 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v90 = &v65[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v76 = &v65[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB438);
  MEMORY[0x28223BE20](v12 - 8);
  v80 = &v65[-v13];
  v74 = sub_25268E4F0();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v69 = &v65[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_25268FB50();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v65[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v65[-v20];
  v22 = sub_25268FBD0();
  v81 = *(v22 - 8);
  v82 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v65[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25268FA30();
  v84 = v24;
  LODWORD(v86) = sub_25268FBC0() ^ 1;
  sub_25268FB70();
  v25 = *(v16 + 104);
  v25(v19, *MEMORY[0x277D16880], v15);
  v26 = sub_25268FB40();
  v27 = *(v16 + 8);
  v27(v19, v15);
  v27(v21, v15);
  v77 = a2;
  sub_25268FB70();
  v25(v19, *MEMORY[0x277D16850], v15);
  v28 = sub_25268FB40();
  v27(v19, v15);
  v29 = v15;
  v30 = v86;
  v27(v21, v29);
  v31 = v30 & v26;
  if (v30 & v26)
  {
    v32 = v85;
  }

  else
  {
    v32 = v85;
    if (v28)
    {
      v31 = *(v32 + *(type metadata accessor for MatterControlSolver.Source(0) + 48)) ^ 1;
    }
  }

  if (*(v87 + *(type metadata accessor for AccessoryControlSolver.Context() + 20)) - 1 >= 2)
  {
    v33 = v26;
  }

  else
  {
    v33 = v26 | v30;
  }

  v34 = v84;
  v35 = 1;
  v36 = 0.0;
  if (sub_25268FBB0() & 1) == 0 || (v33 & 1) == 0 || (*(v32 + *(type metadata accessor for MatterControlSolver.Source(0) + 48)))
  {
    goto LABEL_29;
  }

  v37 = v80;
  sub_25268FA40();
  v38 = v73;
  v39 = v74;
  if ((*(v73 + 48))(v37, 1, v74) == 1)
  {
    sub_252372288(v37, &qword_27F4DB438);
LABEL_28:
    v35 = 1;
LABEL_29:
    v60 = 0;
    v61 = 0;
    if ((*(v32 + *(type metadata accessor for MatterControlSolver.Source(0) + 48)) & 1) == 0)
    {
      v60 = sub_25268FA70();
      v61 = v62;
    }

    result = (*(v81 + 8))(v34, v82);
    v63 = v83;
    *v83 = v31 & 1;
    v63[1] = v36;
    *(v63 + 16) = v35;
    *(v63 + 3) = v60;
    *(v63 + 4) = v61;
    return result;
  }

  v40 = v69;
  (*(v38 + 32))(v69, v37, v39);
  result = sub_25268E4E0();
  if (!result)
  {
    (*(v38 + 8))(v40, v39);
    goto LABEL_28;
  }

  v42 = result;
  v75 = *(result + 16);
  if (v75 <= 1)
  {
    (*(v38 + 8))(v40, v39);

    goto LABEL_28;
  }

  v66 = v31;
  v43 = 0;
  v71 = v88 + 16;
  v70 = *MEMORY[0x277D155E0];
  v44 = v79++;
  v80 = v44 + 13;
  v68 = *MEMORY[0x277D155D8];
  v67 = (v88 + 8);
  v78 = (v88 + 32);
  v45 = MEMORY[0x277D84F90];
  v46 = v89;
  v47 = v76;
  v72 = result;
  while (v43 < *(v42 + 16))
  {
    v87 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v86 = *(v88 + 72);
    (*(v88 + 16))(v47, v42 + v87 + v86 * v43, v46);
    v48 = v91;
    sub_25268E4C0();
    v49 = *v80;
    v50 = v92;
    v51 = v93;
    (*v80)(v92, v70, v93);
    sub_2523C5B60(&qword_27F4DB4E8, MEMORY[0x277D155F0]);
    sub_252692D40();
    sub_252692D40();
    v52 = *v79;
    (*v79)(v50, v51);
    v52(v48, v51);
    if (v97 == v96 || (v53 = v91, sub_25268E4C0(), v54 = v92, v55 = v93, v49(v92, v68, v93), sub_252692D40(), sub_252692D40(), v52(v54, v55), v52(v53, v55), v95 == v94))
    {
      v56 = *v78;
      v46 = v89;
      (*v78)(v90, v47, v89);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25236FFE0(0, *(v45 + 16) + 1, 1);
        v47 = v76;
        v45 = v98;
      }

      v42 = v72;
      v59 = *(v45 + 16);
      v58 = *(v45 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_25236FFE0(v58 > 1, v59 + 1, 1);
        v47 = v76;
        v45 = v98;
      }

      *(v45 + 16) = v59 + 1;
      result = v56(v45 + v87 + v59 * v86, v90, v46);
    }

    else
    {
      v46 = v89;
      result = (*v67)(v47, v89);
      v42 = v72;
    }

    if (v75 == ++v43)
    {

      (*(v73 + 8))(v69, v74);
      v64 = *(v45 + 16);

      v35 = 0;
      v36 = v64 / v75;
      v34 = v84;
      v32 = v85;
      LOBYTE(v31) = v66;
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2523C4BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  MEMORY[0x28223BE20](v76);
  v77 = (&v67 - v7);
  v8 = sub_25268FBD0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25268F130();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + *(type metadata accessor for MatterControlSolver.Source(0) + 48));
  if (*(a3 + *(type metadata accessor for AccessoryControlSolver.Context() + 20)) - 1 > 1)
  {
    v74 = sub_252692330();

    v75 = 0;
  }

  else
  {
    v17 = *MEMORY[0x277D15EE0];
    LODWORD(v73) = v16;
    v71 = a2;
    v18 = v9;
    v19 = *(v13 + 104);
    v19(v15, v17, v12);
    v20 = sub_25268F100();
    v72 = v8;
    v21 = v20;
    v70 = v11;
    v22 = *(v13 + 8);
    v22(v15, v12);
    v19(v15, v17, v12);
    v9 = v18;
    v16 = v73;
    v74 = v21;

    v23 = sub_25268F100();
    v22(v15, v12);
    v11 = v70;
    v75 = v23;
    v8 = v72;
  }

  v24 = sub_25268FA90();
  if (v25)
  {
    v26 = v25;
    v27 = v24;
    v28 = sub_25268FAF0();
    if (v29)
    {
      v79 = v28;
      v80 = v29;
      MEMORY[0x2530A4800](0x20A280E220, 0xA500000000000000);
      MEMORY[0x2530A4800](v27, v26);

      v72 = 0;
      v73 = 0;
      LODWORD(v70) = 0;
      v68 = v79;
      v69 = v80;
LABEL_26:
      LODWORD(v71) = 255;
      goto LABEL_27;
    }
  }

  v30 = sub_25268FA90();
  if (v31)
  {
    v72 = 0;
    v73 = 0;
    LODWORD(v70) = 0;
    LODWORD(v71) = 255;
    v68 = v30;
    v69 = v31;
    goto LABEL_27;
  }

  sub_25268FA30();
  v32 = sub_25268FBC0();
  (*(v9 + 8))(v11, v8);
  if ((v32 & 1) == 0)
  {
    v40 = sub_25268FAF0();
    v72 = 0;
    v73 = 0;
    if (v41)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0;
    }

    v68 = v42;
    v69 = v41;
    if (v41)
    {
      v43 = 0;
    }

    else
    {
      v43 = -1;
    }

    LODWORD(v70) = v43;
    goto LABEL_26;
  }

  v33 = sub_25268FB00();
  v35 = v34;
  v36 = sub_25268FB10();
  if (v35)
  {
    v38 = v33;
  }

  else
  {
    v38 = 0;
  }

  if (v35)
  {
    v39 = 0;
  }

  else
  {
    v39 = -1;
  }

  LODWORD(v70) = v39;
  v68 = v38;
  v69 = v35;
  if (v37)
  {
    LODWORD(v71) = 0;
    v72 = v37;
    v73 = v36;
  }

  else
  {
    v72 = 0;
    v73 = 0;
    LODWORD(v71) = 255;
  }

LABEL_27:
  v44 = 0xEA00000000006C6CLL;
  if (v16)
  {
    v45 = 0xE90000000000006CLL;
  }

  else
  {
    v45 = 0xEA00000000006C6CLL;
  }

  if (v16)
  {
    v46 = 0x6C69662E79616C70;
  }

  else
  {
    v46 = 0x69662E6573756170;
  }

  if (!v16)
  {
    v44 = 0xE90000000000006CLL;
  }

  v67 = v44;
  if (v16)
  {
    v47 = 0x69662E6573756170;
  }

  else
  {
    v47 = 0x6C69662E79616C70;
  }

  v48 = type metadata accessor for IconDescriptor();
  v49 = *(v48 + 20);
  v50 = *MEMORY[0x277D16578];
  v51 = sub_25268F910();
  v52 = *(*(v51 - 8) + 104);
  v53 = v77;
  v52(v77 + v49, v50, v51);
  v54 = (v53 + *(v76 + 28));
  v52(v54 + *(v48 + 20), v50, v51);
  *v53 = v46;
  v53[1] = v45;
  *(v53 + *(v48 + 24)) = 0;
  v55 = v67;
  *v54 = v47;
  v54[1] = v55;
  *(v54 + *(v48 + 24)) = 0;
  v56 = v78;
  sub_25237153C(v53, v78, &qword_27F4DAD88);
  v57 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  type metadata accessor for AccessoryControl.StatusProvider();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ControlTextModifier.Config(0);
  swift_storeEnumTagMultiPayload();
  v58 = v74;

  v59 = v75;

  sub_252372288(v53, &qword_27F4DAD88);
  v60 = v56 + v57[7];
  *v60 = 0u;
  *(v60 + 16) = 0u;
  *(v60 + 32) = -1;
  v61 = v56 + v57[8];
  *v61 = 0u;
  *(v61 + 16) = 0u;
  *(v61 + 32) = -1;
  v62 = v57[12];
  *(v56 + v57[5]) = v58;
  v63 = (v56 + v57[10]);
  *v63 = 0;
  v63[1] = 0xE000000000000000;
  sub_252376DA8(*v60, *(v60 + 8), *(v60 + 16), *(v60 + 24), *(v60 + 32));
  v64 = v69;
  *v60 = v68;
  *(v60 + 8) = v64;
  *(v60 + 16) = 0;
  *(v60 + 24) = 0;
  *(v60 + 32) = v70;
  result = sub_252376DA8(*v61, *(v61 + 8), *(v61 + 16), *(v61 + 24), *(v61 + 32));
  v66 = v72;
  *v61 = v73;
  *(v61 + 8) = v66;
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = v71;
  *(v56 + v62) = v59;
  *(v56 + v57[9]) = 0;
  return result;
}

uint64_t sub_2523C5190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = *(a1 + 32);
  v10 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  v11 = *(*(v10 - 8) + 56);
  v12 = *a1;
  v16 = *(a1 + 16);
  v17 = v12;
  v11(v8, 1, 1, v10);
  v18[0] = v17;
  v18[1] = v16;
  v19 = v9;
  sub_2523C5358(v18, a2, &v20);
  v13 = v20;
  v11(a3, 1, 1, v10);
  v14 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
  *(a3 + v14) = 0;
  sub_2523795D4(v8, a3);

  *(a3 + v14) = v13;
  return result;
}

uint64_t sub_2523C52D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MatterControlSolver.Source(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2523C5190(a1, v6, a2);
}

void sub_2523C5358(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v58 = a3;
  v5 = sub_25268FB90();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v53 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v53 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v53 - v17;
  MEMORY[0x28223BE20](v16);
  *&v57 = &v53 - v19;
  v20 = *a1;
  if (*(a1 + 4) == 1)
  {
    v57 = *a1;
    v56 = a1[1];
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v21 = sub_2526905A0();
    __swift_project_value_buffer(v21, qword_27F4E4B18);
    v22 = sub_252690580();
    v23 = sub_252692EF0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 136446210;
      v59[0] = v57;
      v59[1] = v56;
      v60 = 1;
      v61 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4E0);
      v26 = sub_252692C20();
      v28 = sub_2525BDA90(v26, v27, &v61);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_252309000, v22, v23, "While trying to set Binary state, couldn't unwrap: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2530A5A40](v25, -1, -1);
      MEMORY[0x2530A5A40](v24, -1, -1);
    }

    *v58 = 0;
  }

  else
  {
    v29 = *a1;
    v55 = a2;
    if (v20)
    {
      (*(v6 + 104))(v18, *MEMORY[0x277D16920], v5);
      v30 = *(v6 + 32);
    }

    else
    {
      if (*(a2 + *(type metadata accessor for MatterControlSolver.Source(0) + 48)))
      {
        v31 = MEMORY[0x277D16928];
      }

      else
      {
        v31 = MEMORY[0x277D16930];
      }

      (*(v6 + 104))(v15, *v31, v5);
      v30 = *(v6 + 32);
      v30(v18, v15, v5);
    }

    v32 = v57;
    v30(v57, v18, v5);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v33 = sub_2526905A0();
    __swift_project_value_buffer(v33, qword_27F4E4B18);
    *&v56 = *(v6 + 16);
    (v56)(v12, v32, v5);
    v34 = sub_252690580();
    v35 = sub_252692F10();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *&v53 = swift_slowAlloc();
      *&v59[0] = v53;
      *v36 = 67240450;
      *(v36 + 4) = v29 & 1;
      *(v36 + 8) = 2082;
      (v56)(v9, v12, v5);
      v37 = sub_252692C20();
      v39 = v38;
      v40 = *(v6 + 8);
      v54 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v40(v12, v5);
      v41 = sub_2525BDA90(v37, v39, v59);

      *(v36 + 10) = v41;
      _os_log_impl(&dword_252309000, v34, v35, "Start/Stop button was pressed with state: %{BOOL,public}d, command: %{public}s", v36, 0x12u);
      v42 = v53;
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x2530A5A40](v42, -1, -1);
      v43 = v36;
      v44 = v40;
      MEMORY[0x2530A5A40](v43, -1, -1);
    }

    else
    {

      v44 = *(v6 + 8);
      v54 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v44(v12, v5);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE80);
    v45 = swift_allocObject();
    v53 = xmmword_252694E90;
    *(v45 + 16) = xmmword_252694E90;
    *(v45 + 56) = v5;
    *(v45 + 64) = sub_2523C5B60(&qword_27F4DB3D0, MEMORY[0x277D16978]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v45 + 32));
    v47 = v57;
    (v56)(boxed_opaque_existential_0, v57, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB320);
    v48 = sub_25268E710();
    v49 = *(v48 - 8);
    v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v53;
    (*(v49 + 16))(v51 + v50, v55, v48);
    v52 = sub_25240C51C(v51);
    swift_setDeallocating();
    (*(v49 + 8))(v51 + v50, v48);
    swift_deallocClassInstance();
    sub_2523F648C(v45, v52, v59);
    v44(v47, v5);
    *v58 = *&v59[0];
  }
}

uint64_t sub_2523C5A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523C5A98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2523C5AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523C5B60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2523C5C94(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB010);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v8 = *(v4 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v4 + 16) = v10;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_2523C5E00(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_252369114(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE88);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2523C5F34(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v68 = a2;
  v8 = sub_25268ED20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v66 = &v52 - v16;
  v18 = MEMORY[0x28223BE20](v17);
  v19 = &v52;
  v21 = &v52 - v20;
  v22 = (a4 >> 1);
  v23 = __OFSUB__(a4 >> 1, a3);
  v24 = (a4 >> 1) - a3;
  if (v23)
  {
    __break(1u);
    goto LABEL_21;
  }

  v67 = v11;
  v69 = v9;
  v70 = a1;
  v11 = *v4;
  v25 = *(*v4 + 16);
  v26 = v25 + v24;
  if (__OFADD__(v25, v24))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v19 = (v11[3] >> 1), v19 < v26))
  {
    if (v25 <= v26)
    {
      v28 = v25 + v24;
    }

    else
    {
      v28 = v25;
    }

    v11 = sub_252369680(isUniquelyReferenced_nonNull_native, v28, 1, v11);
    v19 = (v11[3] >> 1);
  }

  v29 = &v19[-v11[2]];
  if (v22 == a3)
  {
    if (v24 <= 0)
    {
      v24 = 0;
      v19 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v29 < v24)
  {
    __break(1u);
    goto LABEL_27;
  }

  result = swift_arrayInitWithCopy();
  if (v24 <= 0)
  {
LABEL_16:
    v19 = v22;
LABEL_17:
    if (v24 != v29)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v11;
      return result;
    }

LABEL_23:
    v65 = v19;
    v24 = v11[2];
    v26 = v69;
    v54 = *(v69 + 56);
    v55 = v69 + 56;
    v54(v21, 1, 1, v8, v18);
    v33 = v66;
    sub_25237153C(v21, v66, &qword_27F4DB2A8);
    v62 = *(v26 + 48);
    v63 = v26 + 48;
    if (v62(v33, 1, v8) == 1)
    {
      v34 = v66;
LABEL_25:
      sub_252372288(v21, &qword_27F4DB2A8);
      swift_unknownObjectRelease();
      result = sub_252372288(v34, &qword_27F4DB2A8);
      goto LABEL_19;
    }

LABEL_27:
    v58 = (v26 + 32);
    v52 = (v26 + 8);
    v53 = (v26 + 16);
    v35 = v24;
    v34 = v66;
    v60 = v21;
    v61 = v14;
    do
    {
      sub_252372288(v34, &qword_27F4DB2A8);
      v37 = v11[3];
      v38 = v37 >> 1;
      v39 = v35;
      if ((v37 >> 1) < v35 + 1)
      {
        v11 = sub_252369680(v37 > 1, v35 + 1, 1, v11);
        v38 = v11[3] >> 1;
      }

      v40 = *(v69 + 80);
      sub_25237153C(v21, v14, &qword_27F4DB2A8);
      if (v62(v14, 1, v8) == 1)
      {
        v35 = v39;
        v41 = v61;
LABEL_34:
        sub_252372288(v41, &qword_27F4DB2A8);
        v36 = v35;
        v34 = v66;
        v14 = v41;
      }

      else
      {
        v57 = v11 + ((v40 + 32) & ~v40);
        v42 = *v58;
        v35 = v39;
        if (v39 <= v38)
        {
          v43 = v38;
        }

        else
        {
          v43 = v39;
        }

        v59 = v43;
        v41 = v61;
        v56 = v42;
        while (1)
        {
          v47 = v67;
          v42(v67, v41, v8);
          if (v59 == v35)
          {
            break;
          }

          v48 = v60;
          sub_252372288(v60, &qword_27F4DB2A8);
          v49 = v35;
          v50 = *(v69 + 72);
          v64 = v49;
          result = (v42)(&v57[v50 * v49], v47, v8);
          if (v65 == v22)
          {
            v44 = 1;
            v65 = v22;
            v45 = v61;
          }

          else
          {
            v45 = v61;
            if (v65 < a3 || v65 >= v22)
            {
              goto LABEL_47;
            }

            v51 = v65;
            (*v53)(v48, v68 + v50 * v65, v8);
            v44 = 0;
            v65 = v51 + 1;
          }

          (v54)(v48, v44, 1, v8);
          sub_25237153C(v48, v45, &qword_27F4DB2A8);
          v46 = v62(v45, 1, v8);
          v35 = v64 + 1;
          v41 = v45;
          v42 = v56;
          if (v46 == 1)
          {
            goto LABEL_34;
          }
        }

        (*v52)(v47, v8);
        v36 = v59;
        v35 = v59;
        v34 = v66;
        v14 = v61;
      }

      v21 = v60;
      v11[2] = v36;
      sub_25237153C(v21, v34, &qword_27F4DB2A8);
    }

    while (v62(v34, 1, v8) != 1);
    goto LABEL_25;
  }

  v31 = v11[2];
  v23 = __OFADD__(v31, v24);
  v32 = v31 + v24;
  if (!v23)
  {
    v11[2] = v32;
    goto LABEL_16;
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_2523C6608(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t AccessoryControlSolver.Matter.__allocating_init(context:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2523C777C(a1, v2 + OBJC_IVAR____TtCC22HomeAccessoryControlUI22AccessoryControlSolver6Matter_context, type metadata accessor for AccessoryControlSolver.Context);
  return v2;
}

uint64_t AccessoryControlSolver.Matter.controlModules(with:)()
{
  v1 = v0;
  v63 = type metadata accessor for AccessoryControl.ElementIdentifier();
  MEMORY[0x28223BE20](v63);
  v64 = (&v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_25268DA10();
  v3 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v72);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_25268EE60();
  v7 = *(v82 - 8);
  v8 = MEMORY[0x28223BE20](v82);
  v71 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v61 - v10;
  v12 = sub_25268F600();
  v85 = MEMORY[0x277D84F90];
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v76 = OBJC_IVAR____TtCC22HomeAccessoryControlUI22AccessoryControlSolver6Matter_context;
  v17 = (v14 + 63) >> 6;
  v66 = (v3 + 8);
  v67 = v7 + 2;
  v81 = v7;
  v18 = v7 + 1;
  v78 = v12;

  v20 = 0;
  v61 = xmmword_252694E90;
  v68 = v17;
  v69 = v13;
  v75 = v1;
  v70 = v11;
  v65 = v18;
  while (v16)
  {
LABEL_11:
    v23 = v82;
    v24 = v81[2];
    v24(v11, *(v78 + 56) + v81[9] * (__clz(__rbit64(v16)) | (v20 << 6)), v82);
    v25 = v71;
    v24(v71, v11, v23);
    v26 = v72;
    v79 = *(v72 + 48);
    sub_25268EDB0();
    v27 = type metadata accessor for MatterControlSolver.SourcePath(0);
    v28 = *(v27 + 20);
    v29 = sub_25268E310();
    (*(*(v29 - 8) + 56))(&v6[v28], 1, 1, v29);
    v77 = *(v27 + 24);
    v6[v77] = 0;
    v30 = sub_25268EE30();
    v31 = &v6[v26[5]];
    *v31 = v30;
    v31[1] = v32;
    sub_25268EE00();
    *&v6[v26[7]] = sub_25268EE40();
    sub_25268EDE0();
    v6[v26[9]] = sub_25268ED90() == 1;
    v33 = sub_25268EDC0();
    v34 = &v6[v26[10]];
    *v34 = v33;
    v34[2] = BYTE2(v33) & 1;
    sub_25268EDD0();
    sub_25268ED80();
    v83 = 0x746E696F70646E65;
    v84 = 0xE90000000000002DLL;
    v35 = v73;
    sub_25268EE10();
    sub_2523C70B8();
    v36 = v74;
    v37 = sub_252693370();
    MEMORY[0x2530A4800](v37);

    (*v66)(v35, v36);
    v38 = v83;
    v39 = v84;
    v80 = v81[1];
    v80(v25, v23);
    v40 = &v6[v26[14]];
    *v40 = v38;
    *(v40 + 1) = v39;
    v6[v79] = 0;
    v41 = sub_2523C7110(v6);
    v43 = v75;
    if (v41)
    {
      v44 = (*(v42 + 32))(v6, v75 + v76);
      if (v44)
      {
        v21 = v44;
        v13 = v69;
        v11 = v70;
        goto LABEL_5;
      }
    }

    if (sub_2523C7110(v6))
    {
      v46 = (*(v45 + 24))(v6, v43 + v76);
    }

    else
    {
      v46 = MEMORY[0x277D84F90];
    }

    v13 = v69;
    v11 = v70;
    if (!*(v46 + 16))
    {

      v21 = MEMORY[0x277D84F90];
      goto LABEL_5;
    }

    v79 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD60);
    v62 = type metadata accessor for AccessoryControlModule(0);
    v47 = (*(*(v62 - 8) + 80) + 32) & ~*(*(v62 - 8) + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v61;
    v48 = (v21 + v47);
    v49 = sub_25268E340();
    v50 = sub_25268E320();
    v51 = v64;
    *v64 = v49;
    *(v51 + 4) = v50;
    swift_storeEnumTagMultiPayload();
    v52 = v6[v77];
    if (v52 > 3)
    {
      if (v6[v77] <= 5u)
      {
        if (v52 == 4)
        {
          v53 = 3;
        }

        else
        {
          v53 = 4;
        }
      }

      else if (v52 == 6)
      {
        v53 = 5;
      }

      else if (v52 == 7)
      {
        v53 = 6;
      }

      else
      {
        v53 = 7;
      }

      goto LABEL_35;
    }

    if (v6[v77] > 1u)
    {
      if (v52 == 2)
      {
        v53 = 1;
      }

      else
      {
        v53 = 2;
      }

LABEL_35:
      LODWORD(v77) = v53;
LABEL_36:
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB408);
      v55 = swift_allocBox();
      v56 = *(v54 + 48);
      *v57 = v77;
      sub_2523C777C(v64, &v57[v56], type metadata accessor for AccessoryControl.ElementIdentifier);
      *v48 = v55;
      swift_storeEnumTagMultiPayload();
      goto LABEL_37;
    }

    if (v6[v77])
    {
      LODWORD(v77) = 0;
      goto LABEL_36;
    }

    sub_2523C777C(v64, v48, type metadata accessor for AccessoryControl.ElementIdentifier);
LABEL_37:
    v58 = v62;
    v59 = (v48 + *(v62 + 20));
    v60 = (v48 + *(v62 + 28));
    *v60 = 0;
    v60[1] = 0;
    *(v48 + *(v58 + 24)) = v79;
    type metadata accessor for AccessoryControlModule.Layout(0);
    swift_storeEnumTagMultiPayload();
    *v59 = 0;
    v59[1] = 0;
LABEL_5:
    v16 &= v16 - 1;
    sub_2523C77E4(v6, type metadata accessor for MatterControlSolver.Source);
    v80(v11, v82);
    result = sub_2523C6608(v21, sub_25236923C, type metadata accessor for AccessoryControlModule);
    v17 = v68;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v17)
    {

      return v85;
    }

    v16 = *(v13 + 8 * v22);
    ++v20;
    if (v16)
    {
      v20 = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t AccessoryControlSolver.Matter.__deallocating_deinit()
{
  sub_2523C77E4(v0 + OBJC_IVAR____TtCC22HomeAccessoryControlUI22AccessoryControlSolver6Matter_context, type metadata accessor for AccessoryControlSolver.Context);

  return swift_deallocClassInstance();
}

unint64_t sub_2523C70B8()
{
  result = qword_27F4DB2B8;
  if (!qword_27F4DB2B8)
  {
    sub_25268DA10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB2B8);
  }

  return result;
}

ValueMetadata *sub_2523C7110(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB500);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v40 - v6;
  MEMORY[0x28223BE20](v5);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_25268E310();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  v19 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
  v44 = a1;
  sub_25237153C(a1 + v19, v11, &qword_27F4DB3A0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_252372288(v11, &qword_27F4DB3A0);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB518);
    v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_252694E90;
    (*(v13 + 16))(v21 + v20, v18, v12);
    (*(v13 + 104))(v16, *MEMORY[0x277D15548], v12);
    v22 = sub_2525F8418(v16, v21);
    swift_setDeallocating();
    v23 = *(v13 + 8);
    v23(v21 + v20, v12);
    swift_deallocClassInstance();
    v23(v16, v12);
    v23(v18, v12);
    if (v22)
    {
      goto LABEL_16;
    }
  }

  v41 = v16;
  v40 = type metadata accessor for MatterControlSolver.Source(0);
  v24 = *(v40 + 24);
  v26 = v43;
  v25 = v44;
  sub_25237153C(v44 + v24, v43, &qword_27F4DB500);
  v27 = sub_25268F130();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v26, 1, v27) != 1)
  {
    sub_25237153C(v26, v7, &qword_27F4DB500);
    if ((*(v28 + 88))(v7, v27) == *MEMORY[0x277D15EE0])
    {
      sub_2523C79A8();
      sub_252372288(v26, &qword_27F4DB500);
      return &type metadata for AccessoryControlSolver.Matter.RobotVacuum;
    }

    (*(v28 + 8))(v7, v27);
    v25 = v44;
  }

  sub_252372288(v26, &qword_27F4DB500);
  v31 = v42;
  sub_25237153C(v25 + v24, v42, &qword_27F4DB500);
  v32 = v25;
  if (v29(v31, 1, v27) == 1)
  {
    sub_252372288(v31, &qword_27F4DB500);
    goto LABEL_11;
  }

  v33 = v41;
  (*(v13 + 104))(v41, *MEMORY[0x277D15548], v12);
  v34 = sub_25268F120();
  (*(v13 + 8))(v33, v12);
  (*(v28 + 8))(v31, v27);
  if (v34)
  {
LABEL_16:
    sub_2523C7954();
    return &_s5OnOffVN;
  }

LABEL_11:
  v35 = *(v32 + *(v40 + 28));
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = sub_2525EED74(*(v35 + 16), 0);
    v44 = sub_2525EF168(&v45, (v37 + ((*(v13 + 80) + 32) & ~*(v13 + 80))), v36, v35);

    sub_2523A4D1C();
    if (v44 == v36)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  v37 = MEMORY[0x277D84F90];
LABEL_15:
  v38 = v41;
  (*(v13 + 104))(v41, *MEMORY[0x277D15548], v12);
  v39 = sub_2525F8418(v38, v37);

  (*(v13 + 8))(v38, v12);
  if (v39)
  {
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_2523C777C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523C77E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for AccessoryControlSolver.Matter()
{
  result = qword_27F4DB4F0;
  if (!qword_27F4DB4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2523C7898()
{
  result = type metadata accessor for AccessoryControlSolver.Context();
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

unint64_t sub_2523C7954()
{
  result = qword_27F4DB508;
  if (!qword_27F4DB508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB508);
  }

  return result;
}

unint64_t sub_2523C79A8()
{
  result = qword_27F4DB510;
  if (!qword_27F4DB510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB510);
  }

  return result;
}

uint64_t sub_2523C7A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_25268F730();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32) == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v14 = __swift_project_value_buffer(v13, qword_27F4DB8A0);
    return sub_2523C8CF0(v14, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v16 = MEMORY[0x277D16470];
    if ((*a1 & 1) == 0)
    {
      v16 = MEMORY[0x277D16478];
    }

    (*(v10 + 104))(v12, *v16, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE80);
    v17 = swift_allocObject();
    v33 = xmmword_252694E90;
    *(v17 + 16) = xmmword_252694E90;
    *(v17 + 56) = v9;
    *(v17 + 64) = sub_2523C8D58(&qword_27F4DB520, MEMORY[0x277D16490]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v17 + 32));
    (*(v10 + 16))(boxed_opaque_existential_0, v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB320);
    v19 = sub_25268E710();
    v20 = *(v19 - 8);
    v21 = *(v20 + 80);
    v32 = v8;
    v22 = a3;
    v23 = (v21 + 32) & ~v21;
    v24 = swift_allocObject();
    *(v24 + 16) = v33;
    (*(v20 + 16))(v24 + v23, a2, v19);
    v25 = sub_25240C51C(v24);
    swift_setDeallocating();
    (*(v20 + 8))(v24 + v23, v19);
    swift_deallocClassInstance();
    v26 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v27 = *(*(v26 - 8) + 56);
    v28 = v32;
    v27(v32, 1, 1, v26);
    sub_2523F648C(v17, v25, &v34);
    (*(v10 + 8))(v12, v9);
    v29 = v34;
    v27(v22, 1, 1, v26);
    v30 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(v22 + v30) = 0;
    sub_2523795D4(v28, v22);

    *(v22 + v30) = v29;
  }

  return result;
}

uint64_t sub_2523C7E58(uint64_t a1, uint64_t a2)
{
  v120 = a2;
  v3 = sub_25268DA10();
  v109 = *(v3 - 8);
  v110 = v3;
  MEMORY[0x28223BE20](v3);
  v108 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for AccessoryControl(0);
  MEMORY[0x28223BE20](v111);
  v114 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MatterControlSolver.Source(0);
  v105 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v106 = v7;
  *&v107 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  MEMORY[0x28223BE20](v104);
  v112 = (&v91 - v8);
  v103 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v103);
  v113 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25268E2E0();
  v101 = *(v10 - 8);
  v102 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v99 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v98 = &v91 - v13;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  MEMORY[0x28223BE20](v97);
  v117 = (&v91 - v14);
  v118 = sub_25268F740();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25268E310();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_25268E8E0();
  v20 = *(v119 - 8);
  v21 = MEMORY[0x28223BE20](v119);
  v23 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v91 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v91 - v27;
  v29 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2523C8CF0(v120, v31, type metadata accessor for AccessoryControl.ValueDestination);
  v100 = v6;
  v32 = *(v6 + 28);
  v120 = a1;
  v33 = *(a1 + v32);
  (*(v17 + 104))(v19, *MEMORY[0x277D15548], v16);
  if (*(v33 + 16) && (v34 = sub_2523674E8(v19), (v35 & 1) != 0))
  {
    v96 = v31;
    v36 = *(v33 + 56) + *(v20 + 72) * v34;
    v37 = *(v20 + 16);
    v38 = v119;
    v37(v26, v36, v119);
    (*(v17 + 8))(v19, v16);
    v39 = v28;
    (*(v20 + 32))(v28, v26, v38);
    v37(v23, v28, v38);
    if ((*(v20 + 88))(v23, v38) == *MEMORY[0x277D15A70])
    {
      (*(v20 + 96))(v23, v38);
      (*(v116 + 32))(v115, v23, v118);
      v94 = sub_25268F720();
      v40 = v120;
      v41 = v98;
      sub_25268E250();
      v42 = sub_25268E2D0();
      v100 = v39;
      v95 = v20;
      v93 = v42;
      v92 = v43;
      v44 = v102;
      v45 = *(v101 + 8);
      v45(v41, v102);
      v46 = v40;
      v47 = v99;
      sub_25268E250();
      v48 = type metadata accessor for IconDescriptor();
      v49 = v117;
      sub_25268E2C0();
      v45(v47, v44);
      v50 = v92;
      *v49 = v93;
      v49[1] = v50;
      *(v49 + *(v48 + 24)) = 0;
      sub_25268E260();
      v101 = sub_25268E2D0();
      v93 = v51;
      v45(v41, v44);
      v52 = v46;
      sub_25268E260();
      v53 = (v49 + *(v97 + 28));
      sub_25268E2C0();
      v45(v47, v44);
      v54 = v93;
      *v53 = v101;
      v53[1] = v54;
      *(v53 + *(v48 + 24)) = 0;
      v55 = v49;
      v56 = v113;
      sub_25237153C(v55, v113, &qword_27F4DAD88);
      v57 = sub_252692340();
      v58 = v103;
      type metadata accessor for ControlTextModifier.Config(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for AccessoryControl.StatusProvider();
      swift_storeEnumTagMultiPayload();
      v59 = v56 + v58[7];
      *v59 = 0u;
      *(v59 + 16) = 0u;
      *(v59 + 32) = -1;
      v60 = v56 + v58[8];
      *v60 = 0u;
      *(v60 + 16) = 0u;
      *(v60 + 32) = -1;
      v61 = v58[12];
      *(v56 + v58[5]) = v57;
      v62 = (v56 + v58[10]);
      *v62 = 0;
      v62[1] = 0xE000000000000000;
      sub_252376DA8(*v59, *(v59 + 8), *(v59 + 16), *(v59 + 24), *(v59 + 32));
      *v59 = 0u;
      *(v59 + 16) = 0u;
      *(v59 + 32) = -1;
      sub_252376DA8(*v60, *(v60 + 8), *(v60 + 16), *(v60 + 24), *(v60 + 32));
      *v60 = 0u;
      *(v60 + 16) = 0u;
      *(v60 + 32) = -1;
      *(v56 + v61) = 0;
      *(v56 + v58[9]) = 0;
      v63 = v94 & 1;
      v64 = v104;
      v65 = v112;
      sub_2523C8CF0(v96, v112 + *(v104 + 36), type metadata accessor for AccessoryControl.ValueDestination);
      v66 = v107;
      sub_2523C8CF0(v52, v107, type metadata accessor for MatterControlSolver.Source);
      v67 = (*(v105 + 80) + 16) & ~*(v105 + 80);
      v68 = swift_allocObject();
      sub_2523C8BAC(v66, v68 + v67);
      v69 = v65 + *(v64 + 40);
      *v69 = v63;
      *(v69 + 8) = xmmword_2526952D0;
      *(v69 + 3) = 0;
      *(v69 + 4) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB018);
      v70 = swift_allocObject();
      v107 = xmmword_252694E90;
      *(v70 + 16) = xmmword_252694E90;
      *(v70 + 32) = sub_2523C8C10;
      *(v70 + 40) = v68;
      *v65 = v70;
      v71 = v108;
      MatterControlSolver.SourcePath.uuid.getter(v108);
      v72 = v111;
      v73 = v95;
      v74 = v114;
      v75 = &v114[*(v111 + 20)];
      v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);
      sub_2523C8CF0(v56, v75, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_25237153C(v65, v75 + v76, &qword_27F4DAD80);
      type metadata accessor for AccessoryControl.State(0);
      swift_storeEnumTagMultiPayload();
      v77 = MatterControlSolver.Source.controlAccessibilityIdentifier.getter();
      v79 = v78;
      (*(v109 + 32))(v74, v71, v110);
      type metadata accessor for AccessoryControl.ElementIdentifier();
      swift_storeEnumTagMultiPayload();
      v80 = (v74 + v72[7]);
      v81 = v72[9];
      *(v74 + v81) = 16;
      *(v74 + v72[6]) = 0;
      *v80 = v77;
      v80[1] = v79;
      *(v74 + v72[8]) = 1027;
      *(v74 + v81) = 16;
      *(v74 + v72[10]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
      v82 = (type metadata accessor for AccessoryControlGroup(0) - 8);
      v83 = (*(*v82 + 80) + 32) & ~*(*v82 + 80);
      v84 = swift_allocObject();
      *(v84 + 16) = v107;
      v85 = v84 + v83;
      sub_2523C8CF0(v74, v85, type metadata accessor for AccessoryControl.ElementIdentifier);
      sub_2523C8CF0(v74, v85 + v82[7], type metadata accessor for AccessoryControl);
      type metadata accessor for AccessoryControlGroup.Layout(0);
      swift_storeEnumTagMultiPayload();
      v86 = (v85 + v82[9]);
      v87 = (v85 + v82[8]);
      *v87 = 0;
      v87[1] = 0xE000000000000000;
      *v86 = 0;
      v86[1] = 0;
      sub_252372288(v65, &qword_27F4DAD80);
      sub_252372288(v117, &qword_27F4DAD88);
      (*(v116 + 8))(v115, v118);
      (*(v73 + 8))(v100, v119);
      sub_2523C8C90(v96, type metadata accessor for AccessoryControl.ValueDestination);
      sub_2523C8C90(v74, type metadata accessor for AccessoryControl);
      sub_2523C8C90(v56, type metadata accessor for AccessoryControl.BinaryViewConfig);
      return v84;
    }

    v90 = *(v20 + 8);
    v90(v23, v38);
    v90(v28, v38);
    v89 = v96;
  }

  else
  {
    (*(v17 + 8))(v19, v16);
    v89 = v31;
  }

  sub_2523C8C90(v89, type metadata accessor for AccessoryControl.ValueDestination);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2523C8BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterControlSolver.Source(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2523C8C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MatterControlSolver.Source(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2523C7A54(a1, v6, a2);
}

uint64_t sub_2523C8C90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2523C8CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523C8D58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2523C8DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a3;
  v69 = a4;
  v71 = a2;
  v75 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADE0);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v65 - v7;
  v8 = sub_25268E2F0();
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8);
  v70 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessoryControlGroup(0);
  v11 = *(v10 - 1);
  v12 = MEMORY[0x28223BE20](v10);
  v65 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v66 = &v65 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v67 = &v65 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v78 = &v65 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v79 = &v65 - v21;
  MEMORY[0x28223BE20](v20);
  v84 = &v65 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADE8);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v65 - v28;
  MEMORY[0x28223BE20](v27);
  v76 = v11;
  v30 = *(v11 + 56);
  v85 = &v65 - v31;
  v82 = v30;
  v83 = v11 + 56;
  v30();
  v32 = *(a1 + 16);
  if (!v32)
  {
    goto LABEL_9;
  }

  v33 = a1 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
  v34 = (v76 + 48);
  v80 = *(v76 + 72);
  v81 = v10;
  v77 = (v76 + 48);
  while (1)
  {
    sub_2523CA4D8(v33, v84, type metadata accessor for AccessoryControlGroup);
    sub_25237153C(v85, v29, &qword_27F4DADE8);
    v37 = *v34;
    if ((*v34)(v29, 1, v10) != 1)
    {
      break;
    }

    sub_252372288(v29, &qword_27F4DADE8);
    v35 = v84;
LABEL_4:
    v36 = v85;
    sub_252372288(v85, &qword_27F4DADE8);
    sub_2523CA408(v35, v36, type metadata accessor for AccessoryControlGroup);
    v10 = v81;
    (v82)(v36, 0, 1, v81);
    v33 += v80;
    if (!--v32)
    {
      goto LABEL_9;
    }
  }

  v38 = v84;
  v39 = v29;
  v40 = v29;
  v41 = v26;
  v42 = v79;
  sub_2523CA408(v40, v79, type metadata accessor for AccessoryControlGroup);
  sub_2523EB174(v42, v38, v41);
  v43 = v42;
  v26 = v41;
  sub_2523CA478(v43, type metadata accessor for AccessoryControlGroup);
  v44 = v38;
  v34 = v77;
  sub_2523CA478(v44, type metadata accessor for AccessoryControlGroup);
  if (v37(v41, 1, v10) != 1)
  {
    v35 = v78;
    sub_2523CA408(v41, v78, type metadata accessor for AccessoryControlGroup);
    v29 = v39;
    goto LABEL_4;
  }

  sub_252372288(v41, &qword_27F4DADE8);
  v45 = v85;
  sub_252372288(v85, &qword_27F4DADE8);
  (v82)(v45, 1, 1, v10);
LABEL_9:
  v46 = v72;
  sub_25237153C(v71, v72, &qword_27F4DADE0);
  v48 = v73;
  v47 = v74;
  if ((*(v73 + 48))(v46, 1, v74) == 1)
  {
    sub_252372288(v46, &qword_27F4DADE0);
    v49 = 1;
    v50 = v75;
  }

  else
  {
    v51 = v70;
    (*(v48 + 32))(v70, v46, v47);
    v52 = (*(v76 + 48))(v85, 1, v10);
    v50 = v75;
    if (v52)
    {
      (*(v48 + 8))(v51, v47);
      v49 = 1;
    }

    else
    {
      v53 = v65;
      sub_2523CA4D8(v85, v65, type metadata accessor for AccessoryControlGroup);
      v54 = v66;
      v55 = sub_2523CA4D8(v53, v66, type metadata accessor for AccessoryControlGroup);
      MEMORY[0x28223BE20](v55);
      *(&v65 - 2) = v51;
      AccessoryControlGroup.transformControls(transform:)(sub_2523CA470, (&v65 - 4));
      sub_2523CA478(v53, type metadata accessor for AccessoryControlGroup);
      v56 = v67;
      sub_2523CA408(v54, v67, type metadata accessor for AccessoryControlGroup);
      sub_2523CA4D8(v56, v50, type metadata accessor for AccessoryControl.ElementIdentifier);
      sub_2523CA4D8(v56 + v10[5], v50 + v10[5], type metadata accessor for AccessoryControlGroup.Layout);
      v57 = (v56 + v10[7]);
      v59 = *v57;
      v58 = v57[1];

      sub_2523CA478(v56, type metadata accessor for AccessoryControlGroup);
      v60 = (v50 + v10[7]);
      v61 = (v50 + v10[6]);
      v62 = v69;
      *v61 = v68;
      v61[1] = v62;
      *v60 = v59;
      v60[1] = v58;
      v63 = *(v48 + 8);

      v63(v51, v47);
      v49 = 0;
    }
  }

  (v82)(v50, v49, 1, v10);
  return sub_252372288(v85, &qword_27F4DADE8);
}

uint64_t AccessoryControlSolver.Context.init(destination:layoutType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_2523CA408(a1, a3, type metadata accessor for AccessoryControl.ValueDestination);
  result = type metadata accessor for AccessoryControlSolver.Context();
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t type metadata accessor for AccessoryControlSolver.Context()
{
  result = qword_27F4DB538;
  if (!qword_27F4DB538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AccessoryControlSolver.Context.layoutType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccessoryControlSolver.Context();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t AccessoryControlSolver.Context.LayoutType.hashValue.getter()
{
  v1 = *v0;
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  return sub_2526934C0();
}

uint64_t AccessoryControlSolver.Context.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2523CA4D8(v1, v8, type metadata accessor for AccessoryControl.ValueDestination);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x2530A4FE0](0);
  }

  else
  {
    sub_2523CA408(v8, v5, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
    MEMORY[0x2530A4FE0](1);
    sub_25268DA10();
    sub_2523CA2D8(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
    sub_252692B30();
    sub_2523CA478(v5, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  }

  v9 = type metadata accessor for AccessoryControlSolver.Context();
  return MEMORY[0x2530A4FE0](*(v1 + *(v9 + 20)));
}

uint64_t AccessoryControlSolver.Context.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252693460();
  sub_2523CA4D8(v1, v8, type metadata accessor for AccessoryControl.ValueDestination);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x2530A4FE0](0);
  }

  else
  {
    sub_2523CA408(v8, v5, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
    MEMORY[0x2530A4FE0](1);
    sub_25268DA10();
    sub_2523CA2D8(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
    sub_252692B30();
    sub_2523CA478(v5, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  }

  v9 = type metadata accessor for AccessoryControlSolver.Context();
  MEMORY[0x2530A4FE0](*(v1 + *(v9 + 20)));
  return sub_2526934C0();
}

uint64_t sub_2523C9AF8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2523CA4D8(v4, v11, type metadata accessor for AccessoryControl.ValueDestination);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    MEMORY[0x2530A4FE0](0);
  }

  else
  {
    sub_2523CA408(v11, v8, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
    MEMORY[0x2530A4FE0](1);
    sub_25268DA10();
    sub_2523CA2D8(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
    sub_252692B30();
    sub_2523CA478(v8, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  }

  return MEMORY[0x2530A4FE0](*(v4 + *(a2 + 20)));
}

uint64_t sub_2523C9CFC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252693460();
  sub_2523CA4D8(v4, v11, type metadata accessor for AccessoryControl.ValueDestination);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    MEMORY[0x2530A4FE0](0);
  }

  else
  {
    sub_2523CA408(v11, v8, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
    MEMORY[0x2530A4FE0](1);
    sub_25268DA10();
    sub_2523CA2D8(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
    sub_252692B30();
    sub_2523CA478(v8, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  }

  MEMORY[0x2530A4FE0](*(v4 + *(a2 + 20)));
  return sub_2526934C0();
}

BOOL _s22HomeAccessoryControlUI0bC6SolverC7ContextV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB410);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_2523CA4D8(a1, &v20 - v13, type metadata accessor for AccessoryControl.ValueDestination);
  sub_2523CA4D8(a2, &v14[v15], type metadata accessor for AccessoryControl.ValueDestination);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_2523CA4D8(v14, v10, type metadata accessor for AccessoryControl.ValueDestination);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_2523CA478(v10, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
LABEL_6:
    sub_252372288(v14, &qword_27F4DB410);
    return 0;
  }

  sub_2523CA408(&v14[v15], v7, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  v18 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
  sub_2523CA478(v7, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  sub_2523CA478(v10, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  if ((v18 & 1) == 0)
  {
    sub_2523CA478(v14, type metadata accessor for AccessoryControl.ValueDestination);
    return 0;
  }

LABEL_9:
  sub_2523CA478(v14, type metadata accessor for AccessoryControl.ValueDestination);
  v19 = type metadata accessor for AccessoryControlSolver.Context();
  return *(a1 + *(v19 + 20)) == *(a2 + *(v19 + 20));
}

unint64_t sub_2523CA23C()
{
  result = qword_27F4DB528;
  if (!qword_27F4DB528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB528);
  }

  return result;
}

uint64_t sub_2523CA2D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2523CA384()
{
  result = type metadata accessor for AccessoryControl.ValueDestination(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2523CA408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523CA478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2523CA4D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523CA540(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  MEMORY[0x28223BE20](v2 - 8);
  v49 = &v45 - v3;
  v46 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v46);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD70);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v45 - v14;
  v16 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v45 - v24;
  if ((*(v23 + 48))(a1, 1, v22) == 1)
  {
    return sub_252372288(a1, &qword_27F4DADB8);
  }

  sub_2523714D4(a1, v25, &qword_27F4DAD88);
  v27 = v50 + *(type metadata accessor for AccessoryControl(0) + 20);
  sub_2523DE7AC(v27, v21, type metadata accessor for AccessoryControl.State);
  v50 = v19;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0);
    v40 = *(v39 + 48);
    v41 = v48;
    sub_2523E127C(v21, v48, type metadata accessor for AccessoryControl.PickerViewConfig);
    v42 = v49;
    sub_2523714D4(&v21[v40], v49, &qword_27F4DAD68);
    v43 = *(v46 + 24);
    sub_252372288(v41 + v43, &qword_27F4DADB8);
    sub_2523714D4(v25, v41 + v43, &qword_27F4DAD88);
    (*(v23 + 56))(v41 + v43, 0, 1, v22);
    sub_2523E12E4(v27, type metadata accessor for AccessoryControl.State);
    v44 = *(v39 + 48);
    sub_2523DE7AC(v41, v27, type metadata accessor for AccessoryControl.PickerViewConfig);
    sub_2523714D4(v42, v27 + v44, &qword_27F4DAD68);
    swift_storeEnumTagMultiPayload();
    return sub_2523E12E4(v41, type metadata accessor for AccessoryControl.PickerViewConfig);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
    v33 = *(v32 + 48);
    v34 = *(v32 + 64);
    sub_2523E127C(v21, v12, type metadata accessor for AccessoryControl.IncrementalConfig);
    sub_2523714D4(&v21[v33], v9, &qword_27F4DAD78);
    v35 = &v21[v34];
    v36 = v47;
    sub_2523714D4(v35, v47, &qword_27F4DAD70);
    sub_252370174(v25, v12);
    sub_2523E12E4(v27, type metadata accessor for AccessoryControl.State);
    v37 = *(v32 + 48);
    v38 = *(v32 + 64);
    sub_2523DE7AC(v12, v27, type metadata accessor for AccessoryControl.IncrementalConfig);
    sub_2523714D4(v9, v27 + v37, &qword_27F4DAD78);
    sub_2523714D4(v36, v27 + v38, &qword_27F4DAD70);
    swift_storeEnumTagMultiPayload();
    return sub_2523E12E4(v12, type metadata accessor for AccessoryControl.IncrementalConfig);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_252372288(v25, &qword_27F4DAD88);
    return sub_2523E12E4(v21, type metadata accessor for AccessoryControl.State);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8);
    v30 = *(v29 + 48);
    sub_2523E127C(v21, v18, type metadata accessor for AccessoryControl.BinaryViewConfig);
    sub_2523714D4(&v21[v30], v15, &qword_27F4DAD80);
    sub_252370174(v25, v18);
    sub_2523E12E4(v27, type metadata accessor for AccessoryControl.State);
    v31 = *(v29 + 48);
    sub_2523DE7AC(v18, v27, type metadata accessor for AccessoryControl.BinaryViewConfig);
    sub_2523714D4(v15, v27 + v31, &qword_27F4DAD80);
    swift_storeEnumTagMultiPayload();
    return sub_2523E12E4(v18, type metadata accessor for AccessoryControl.BinaryViewConfig);
  }
}

uint64_t sub_2523CACC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  sub_25237153C(a1 + *(v10 + 40), v9, a2);
  v11 = sub_252692C00();
  v18 = 0xD000000000000016;
  v19 = 0x80000002526AE500;
  MEMORY[0x2530A4800](v11);

  MEMORY[0x2530A4800](0x6E6974736564202CLL, 0xEF203A6E6F697461);

  v13 = v18;
  v12 = v19;
  v14 = AccessoryControl.ValueDestination.description.getter();
  v16 = v15;
  v18 = v13;
  v19 = v12;

  MEMORY[0x2530A4800](v14, v16);

  MEMORY[0x2530A4800](41, 0xE100000000000000);

  MEMORY[0x2530A4800](v18, v19);
}

uint64_t ControlBinding.init(value:destination:set:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  type metadata accessor for AccessoryControl.WriteSpecification(255);
  swift_getFunctionTypeMetadata1();
  sub_252693380();
  swift_allocObject();
  v12 = sub_252692DB0();
  *v13 = a3;
  v13[1] = a4;
  sub_252692DD0();
  *a6 = v12;
  v14 = type metadata accessor for ControlBinding();
  sub_2523E127C(a2, a6 + *(v14 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  v15 = *(*(a5 - 8) + 32);
  v16 = a6 + *(v14 + 40);

  return v15(v16, a1, a5);
}

uint64_t ControlAction.init(identity:destination:set:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB418);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_252694E90;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *a6 = v12;
  v13 = type metadata accessor for ControlAction(0);
  v14 = (a6 + *(v13 + 24));
  *v14 = a1;
  v14[1] = a2;
  return sub_2523E127C(a3, a6 + *(v13 + 20), type metadata accessor for AccessoryControl.ValueDestination);
}

uint64_t AccessoryControl.state.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AccessoryControl(0) + 20);

  return sub_2523DE834(a1, v3);
}

uint64_t AccessoryControl.role.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccessoryControl(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AccessoryControl.role.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AccessoryControl(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t AccessoryControl.accessibilityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryControl(0) + 28));

  return v1;
}

uint64_t AccessoryControl.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AccessoryControl(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AccessoryControl.sizeConstraint.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AccessoryControl(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t AccessoryControl.sizeConstraint.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for AccessoryControl(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t AccessoryControl.preferredViewType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccessoryControl(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t AccessoryControl.preferredViewType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AccessoryControl(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t AccessoryControl.enabled.setter(char a1)
{
  result = type metadata accessor for AccessoryControl(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t AccessoryControl.Role.hashValue.getter()
{
  v1 = *v0;
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  return sub_2526934C0();
}

uint64_t AccessoryControl.hash(into:)(__int128 *a1)
{
  AccessoryControl.ElementIdentifier.hash(into:)(a1);
  v3 = type metadata accessor for AccessoryControl(0);
  AccessoryControl.State.hash(into:)(a1);
  MEMORY[0x2530A4FE0](*(v1 + v3[6]));
  if (*(v1 + v3[7] + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  v4 = (v1 + v3[8]);
  v5 = *v4;
  v6 = v4[1];
  if (v5 == 4)
  {
    sub_252693480();
    if (v6 != 4)
    {
LABEL_6:
      sub_252693480();
      MEMORY[0x2530A4FE0](v6);
      goto LABEL_9;
    }
  }

  else
  {
    sub_252693480();
    MEMORY[0x2530A4FE0](v5);
    if (v6 != 4)
    {
      goto LABEL_6;
    }
  }

  sub_252693480();
LABEL_9:
  v7 = *(v1 + v3[9]);
  sub_252693480();
  if (v7 != 16)
  {
    MEMORY[0x2530A4FE0](v7);
  }

  return sub_252693480();
}

uint64_t sub_2523CB730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  v5 = *(v4 + 40);
  v22 = a1;
  v23 = a2;
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v9 = *v6;
  v8 = v6[1];
  v11 = v6[2];
  v10 = v6[3];
  v12 = v6[4];
  v14 = *v7;
  v13 = v7[1];
  v16 = v7[2];
  v15 = v7[3];
  v17 = v7[4];
  if (v12 != 1)
  {
    v29[0] = *v6;
    v29[1] = v8;
    v29[2] = v11;
    v29[3] = v10;
    v29[4] = v12;
    if (v17 != 1)
    {
      v21 = v4;
      v24[0] = v14 & 1;
      v25 = v13;
      v26 = v16 & 1;
      v27 = v15;
      v28 = v17;
      v20 = _s22HomeAccessoryControlUI0bC0V11BinaryStateV2eeoiySbAE_AEtFZ_0(v29, v24);
      sub_25239F750(v9, v8, v11, v10, v12);
      sub_25239F750(v14, v13, v16, v15, v17);
      sub_25239F750(v9, v8, v11, v10, v12);

      sub_252393F68(v9, v8, v11, v10, v12);
      if (v20)
      {
        goto LABEL_10;
      }

      return 0;
    }

    sub_25239F750(v9, v8, v11, v10, v12);
    sub_25239F750(v14, v13, v16, v15, 1);
    sub_25239F750(v9, v8, v11, v10, v12);

LABEL_7:
    sub_252393F68(v9, v8, v11, v10, v12);
    sub_252393F68(v14, v13, v16, v15, v17);
    return 0;
  }

  v21 = v4;
  sub_25239F750(v9, v8, v11, v10, 1);
  if (v17 != 1)
  {
    sub_25239F750(v14, v13, v16, v15, v17);
    goto LABEL_7;
  }

  sub_25239F750(v14, v13, v16, v15, 1);
  sub_252393F68(v9, v8, v11, v10, 1);
LABEL_10:
  v19 = *(v21 + 36);

  return _s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(v22 + v19, v23 + v19);
}

uint64_t sub_2523CB9BC(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v43 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB410);
  MEMORY[0x28223BE20](v39);
  v42 = &v35 - v6;
  v7 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7B0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
  v18 = *(v38 + 40);
  v19 = *(v15 + 56);
  v40 = a1;
  sub_25237153C(a1 + v18, v17, &qword_27F4DB218);
  sub_25237153C(v44 + v18, &v17[v19], &qword_27F4DB218);
  v20 = *(v8 + 48);
  if (v20(v17, 1, v7) == 1)
  {
    if (v20(&v17[v19], 1, v7) == 1)
    {
      sub_252372288(v17, &qword_27F4DB218);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_25237153C(v17, v13, &qword_27F4DB218);
  if (v20(&v17[v19], 1, v7) == 1)
  {
    sub_2523E12E4(v13, type metadata accessor for AccessoryControl.IncrementalState);
LABEL_9:
    v27 = &qword_27F4DB7B0;
LABEL_10:
    v28 = v17;
LABEL_11:
    sub_252372288(v28, v27);
LABEL_12:
    v26 = 0;
    return v26 & 1;
  }

  sub_2523E127C(&v17[v19], v10, type metadata accessor for AccessoryControl.IncrementalState);
  if ((sub_25268ED60() & 1) == 0)
  {
    sub_2523E12E4(v10, type metadata accessor for AccessoryControl.IncrementalState);
    sub_2523E12E4(v13, type metadata accessor for AccessoryControl.IncrementalState);
    v27 = &qword_27F4DB218;
    goto LABEL_10;
  }

  v30 = *(v7 + 20);
  v31 = v13[v30];
  v32 = v10[v30];
  sub_2523E12E4(v10, type metadata accessor for AccessoryControl.IncrementalState);
  sub_2523E12E4(v13, type metadata accessor for AccessoryControl.IncrementalState);
  sub_252372288(v17, &qword_27F4DB218);
  if (v31 != v32)
  {
    goto LABEL_12;
  }

LABEL_4:
  v21 = *(v38 + 36);
  v22 = *(v39 + 48);
  v23 = v42;
  sub_2523DE7AC(v40 + v21, v42, type metadata accessor for AccessoryControl.ValueDestination);
  sub_2523DE7AC(v44 + v21, v23 + v22, type metadata accessor for AccessoryControl.ValueDestination);
  v24 = *(v41 + 48);
  v25 = v43;
  if (v24(v23, 1, v43) != 1)
  {
    v33 = v37;
    sub_2523DE7AC(v23, v37, type metadata accessor for AccessoryControl.ValueDestination);
    if (v24(v23 + v22, 1, v25) != 1)
    {
      v34 = v36;
      sub_2523E127C(v23 + v22, v36, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      v26 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
      sub_2523E12E4(v34, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      sub_2523E12E4(v33, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      sub_2523E12E4(v23, type metadata accessor for AccessoryControl.ValueDestination);
      return v26 & 1;
    }

    sub_2523E12E4(v33, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
    goto LABEL_19;
  }

  if (v24(v23 + v22, 1, v25) != 1)
  {
LABEL_19:
    v27 = &qword_27F4DB410;
    v28 = v23;
    goto LABEL_11;
  }

  sub_2523E12E4(v23, type metadata accessor for AccessoryControl.ValueDestination);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_2523CBFE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB410);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  v15 = *(v14 + 40);
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  v18 = *(a1 + v15 + 8);
  v19 = *(a2 + v15 + 8);
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*v16 != *v17)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      goto LABEL_13;
    }
  }

  v20 = *(v14 + 36);
  v21 = *(v11 + 48);
  sub_2523DE7AC(a1 + v20, v13, type metadata accessor for AccessoryControl.ValueDestination);
  sub_2523DE7AC(a2 + v20, &v13[v21], type metadata accessor for AccessoryControl.ValueDestination);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) != 1)
  {
    sub_2523DE7AC(v13, v10, type metadata accessor for AccessoryControl.ValueDestination);
    if (v22(&v13[v21], 1, v4) != 1)
    {
      sub_2523E127C(&v13[v21], v7, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      v23 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
      sub_2523E12E4(v7, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      sub_2523E12E4(v10, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      sub_2523E12E4(v13, type metadata accessor for AccessoryControl.ValueDestination);
      return v23 & 1;
    }

    sub_2523E12E4(v10, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
    goto LABEL_12;
  }

  if (v22(&v13[v21], 1, v4) != 1)
  {
LABEL_12:
    sub_252372288(v13, &qword_27F4DB410);
LABEL_13:
    v23 = 0;
    return v23 & 1;
  }

  sub_2523E12E4(v13, type metadata accessor for AccessoryControl.ValueDestination);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_2523CC328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0);
  v5 = *(v4 + 40);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (v7)
    {
      if (sub_2524373FC(v6, *(a2 + v5)))
      {
        goto LABEL_9;
      }

      return 0;
    }

LABEL_6:

    return 0;
  }

  if (v7)
  {
    goto LABEL_6;
  }

LABEL_9:
  v9 = *(v4 + 36);

  return _s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(a1 + v9, a2 + v9);
}

uint64_t sub_2523CC3F0(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v41 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB410);
  MEMORY[0x28223BE20](v37);
  v40 = &v33 - v6;
  v7 = type metadata accessor for AccessoryControl.ColorState(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7B8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298);
  v18 = *(v36 + 40);
  v19 = *(v15 + 56);
  v38 = a1;
  sub_25237153C(a1 + v18, v17, &qword_27F4DB2A0);
  sub_25237153C(v42 + v18, &v17[v19], &qword_27F4DB2A0);
  v20 = *(v8 + 48);
  if (v20(v17, 1, v7) == 1)
  {
    if (v20(&v17[v19], 1, v7) == 1)
    {
      sub_252372288(v17, &qword_27F4DB2A0);
      goto LABEL_8;
    }

LABEL_6:
    v21 = &qword_27F4DB7B8;
    v22 = v17;
LABEL_14:
    sub_252372288(v22, v21);
    goto LABEL_15;
  }

  sub_25237153C(v17, v13, &qword_27F4DB2A0);
  if (v20(&v17[v19], 1, v7) == 1)
  {
    sub_2523E12E4(v13, type metadata accessor for AccessoryControl.ColorState);
    goto LABEL_6;
  }

  sub_2523E127C(&v17[v19], v10, type metadata accessor for AccessoryControl.ColorState);
  v23 = static AccessoryControl.ColorState.== infix(_:_:)(v13, v10);
  sub_2523E12E4(v10, type metadata accessor for AccessoryControl.ColorState);
  sub_2523E12E4(v13, type metadata accessor for AccessoryControl.ColorState);
  sub_252372288(v17, &qword_27F4DB2A0);
  if (!v23)
  {
LABEL_15:
    v29 = 0;
    return v29 & 1;
  }

LABEL_8:
  v24 = *(v36 + 36);
  v25 = *(v37 + 48);
  v26 = v40;
  sub_2523DE7AC(v38 + v24, v40, type metadata accessor for AccessoryControl.ValueDestination);
  sub_2523DE7AC(v42 + v24, v26 + v25, type metadata accessor for AccessoryControl.ValueDestination);
  v27 = *(v39 + 48);
  v28 = v41;
  if (v27(v26, 1, v41) != 1)
  {
    v30 = v35;
    sub_2523DE7AC(v26, v35, type metadata accessor for AccessoryControl.ValueDestination);
    if (v27(v26 + v25, 1, v28) != 1)
    {
      v32 = v34;
      sub_2523E127C(v26 + v25, v34, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      v29 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
      sub_2523E12E4(v32, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      sub_2523E12E4(v30, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      sub_2523E12E4(v26, type metadata accessor for AccessoryControl.ValueDestination);
      return v29 & 1;
    }

    sub_2523E12E4(v30, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
    goto LABEL_13;
  }

  if (v27(v26 + v25, 1, v28) != 1)
  {
LABEL_13:
    v21 = &qword_27F4DB410;
    v22 = v26;
    goto LABEL_14;
  }

  sub_2523E12E4(v26, type metadata accessor for AccessoryControl.ValueDestination);
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_2523CC9CC(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v41 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB410);
  MEMORY[0x28223BE20](v37);
  v40 = &v33 - v6;
  v7 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7C0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
  v18 = *(v36 + 40);
  v19 = *(v15 + 56);
  v38 = a1;
  sub_25237153C(a1 + v18, v17, &qword_27F4DB258);
  sub_25237153C(v42 + v18, &v17[v19], &qword_27F4DB258);
  v20 = *(v8 + 48);
  if (v20(v17, 1, v7) == 1)
  {
    if (v20(&v17[v19], 1, v7) == 1)
    {
      sub_252372288(v17, &qword_27F4DB258);
      goto LABEL_8;
    }

LABEL_6:
    v21 = &qword_27F4DB7C0;
    v22 = v17;
LABEL_14:
    sub_252372288(v22, v21);
    goto LABEL_15;
  }

  sub_25237153C(v17, v13, &qword_27F4DB258);
  if (v20(&v17[v19], 1, v7) == 1)
  {
    sub_2523E12E4(v13, type metadata accessor for AccessoryControl.ThermostatState);
    goto LABEL_6;
  }

  sub_2523E127C(&v17[v19], v10, type metadata accessor for AccessoryControl.ThermostatState);
  v23 = static AccessoryControl.ThermostatState.== infix(_:_:)(v13, v10);
  sub_2523E12E4(v10, type metadata accessor for AccessoryControl.ThermostatState);
  sub_2523E12E4(v13, type metadata accessor for AccessoryControl.ThermostatState);
  sub_252372288(v17, &qword_27F4DB258);
  if ((v23 & 1) == 0)
  {
LABEL_15:
    v29 = 0;
    return v29 & 1;
  }

LABEL_8:
  v24 = *(v36 + 36);
  v25 = *(v37 + 48);
  v26 = v40;
  sub_2523DE7AC(v38 + v24, v40, type metadata accessor for AccessoryControl.ValueDestination);
  sub_2523DE7AC(v42 + v24, v26 + v25, type metadata accessor for AccessoryControl.ValueDestination);
  v27 = *(v39 + 48);
  v28 = v41;
  if (v27(v26, 1, v41) != 1)
  {
    v30 = v35;
    sub_2523DE7AC(v26, v35, type metadata accessor for AccessoryControl.ValueDestination);
    if (v27(v26 + v25, 1, v28) != 1)
    {
      v32 = v34;
      sub_2523E127C(v26 + v25, v34, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      v29 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
      sub_2523E12E4(v32, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      sub_2523E12E4(v30, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      sub_2523E12E4(v26, type metadata accessor for AccessoryControl.ValueDestination);
      return v29 & 1;
    }

    sub_2523E12E4(v30, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
    goto LABEL_13;
  }

  if (v27(v26 + v25, 1, v28) != 1)
  {
LABEL_13:
    v21 = &qword_27F4DB410;
    v22 = v26;
    goto LABEL_14;
  }

  sub_2523E12E4(v26, type metadata accessor for AccessoryControl.ValueDestination);
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_2523CCFA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
  v5 = *(v4 + 40);
  v6 = (a1 + v5);
  v23 = a2;
  v7 = (a2 + v5);
  v8 = *v6;
  v9 = v6[1];
  v11 = v6[2];
  v10 = v6[3];
  v12 = *v7;
  v13 = v7[1];
  v15 = v7[2];
  v14 = v7[3];
  if (!v9)
  {
    sub_2523E165C(*v6, 0);
    if (!v13)
    {
      sub_2523E165C(v12, 0);
      sub_2523E2E24(v8, 0);
      goto LABEL_16;
    }

    sub_2523E165C(v12, v13);
    goto LABEL_14;
  }

  if (!v13)
  {
    sub_2523E165C(*v6, v6[1]);
    sub_2523E165C(v12, 0);
    sub_2523E165C(v8, v9);

LABEL_14:
    sub_2523E2E24(v8, v9);
    v17 = v12;
    v18 = v13;
LABEL_21:
    sub_2523E2E24(v17, v18);
    return 0;
  }

  v16 = v8 == v12 && v9 == v13;
  if (!v16 && (sub_2526933B0() & 1) == 0)
  {
    sub_2523E165C(v8, v9);
    sub_2523E165C(v12, v13);
    sub_2523E165C(v8, v9);
    goto LABEL_20;
  }

  v21 = sub_2523E5934(v11, v15);
  sub_2523E165C(v8, v9);
  sub_2523E165C(v12, v13);
  sub_2523E165C(v8, v9);
  if ((v21 & 1) == 0)
  {
LABEL_20:
    sub_2523E2E24(v12, v13);

    v17 = v8;
    v18 = v9;
    goto LABEL_21;
  }

  v22 = sub_252436F58(v10, v14);
  sub_2523E2E24(v12, v13);

  sub_2523E2E24(v8, v9);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v19 = *(v4 + 36);

  return _s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(a1 + v19, v23 + v19);
}