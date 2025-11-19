char *sub_25236352C(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = *(type metadata accessor for Device.ControlGroup(0) - 8);
  v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v18 = *(v6 + 72);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    result = a1(&v20, v7);
    if (v3)
    {

      return v8;
    }

    v10 = v20;
    v11 = *(v20 + 16);
    v12 = *(v8 + 2);
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v13 <= *(v8 + 3) >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v14 = v12 + v11;
      }

      else
      {
        v14 = v12;
      }

      result = sub_252369BF0(result, v14, 1, v8, &qword_27F4DB150);
      v8 = result;
      if (*(v10 + 16))
      {
LABEL_15:
        if ((*(v8 + 3) >> 1) - *(v8 + 2) < v11)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v15 = *(v8 + 2);
          v16 = __OFADD__(v15, v11);
          v17 = v15 + v11;
          if (v16)
          {
            goto LABEL_25;
          }

          *(v8 + 2) = v17;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v7 += v18;
    if (!--v4)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t AccessoryControlSolver.HAP.controlModules(with:staticHome:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for AccessoryControlGroup(0);
  v36 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  sub_25268F810();
  sub_252371884(&qword_27F4DADF8, MEMORY[0x277D164A0]);
  v37 = sub_25268EE70();

  sub_25236DD88(&v37);

  v16 = v37;
  v17 = sub_25268F890();
  v18 = (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  MEMORY[0x28223BE20](v18);
  *(&v34 - 4) = v15;
  *(&v34 - 3) = v3;
  *(&v34 - 2) = a2;
  v19 = sub_252365A54(sub_2523701E4, (&v34 - 3), v16);

  sub_252372288(v15, &qword_27F4DADF0);
  type metadata accessor for AccessoryControlSolver();
  sub_25268F760();
  v20 = sub_25268E2F0();
  (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
  v21 = sub_25268F7E0();
  sub_2523C8DA0(v19, v7, v21, v22, v10);

  sub_252372288(v7, &qword_27F4DADE0);
  v23 = v36;
  if ((*(v36 + 48))(v10, 1, v11) == 1)
  {
    sub_252372288(v10, &qword_27F4DADE8);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v25 = v35;
    sub_2523722E8(v10, v35, type metadata accessor for AccessoryControlGroup);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD60);
    v26 = (type metadata accessor for AccessoryControlModule(0) - 8);
    v27 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
    v28 = swift_allocObject();
    v34 = xmmword_252694E90;
    *(v28 + 16) = xmmword_252694E90;
    v29 = v28 + v27;
    sub_25268F7C0();
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
    v30 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v34;
    sub_2523721C0(v25, v31 + v30, type metadata accessor for AccessoryControlGroup);
    v32 = (v29 + v26[7]);
    v33 = (v29 + v26[9]);
    *v33 = 0;
    v33[1] = 0;
    *(v29 + v26[8]) = v31;
    type metadata accessor for AccessoryControlModule.Layout(0);
    swift_storeEnumTagMultiPayload();
    *v32 = 0;
    v32[1] = 0;
    sub_252372228(v25, type metadata accessor for AccessoryControlGroup);
    return v28;
  }
}

void *AccessoryControlSolver.HAP.getControlGroups(from:matterSnapshot:staticHome:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[4] = a3;
  return sub_252365A54(sub_25237236C, v4, a1);
}

uint64_t AccessoryControlSolver.HAP.controlModules(with:matterSnapshot:staticHome:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25268DA10();
  v8 = *(v7 - 8);
  v80 = v7;
  v81 = v8;
  MEMORY[0x28223BE20](v7);
  v69 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADE8);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = &v67 - v11;
  v75 = type metadata accessor for AccessoryControlGroup(0);
  v12 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v78 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v87 = sub_25268EBE0();
  v14 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADE0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v74 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v72 = &v67 - v19;
  v20 = sub_25268E2F0();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v67 - v25;
  v89 = a2;
  v90 = v3;
  v91 = a3;
  v73 = sub_252365A54(sub_25237236C, v88, a1);
  v27 = *(a1 + 16);
  v85 = v21;
  v79 = v12;
  v71 = v26;
  v68 = v14;
  v77 = a1;
  v70 = v27;
  if (v27)
  {
    v92 = MEMORY[0x277D84F90];
    sub_252370248(0, v27, 0);
    v28 = v92;
    v30 = v14 + 16;
    v29 = *(v14 + 16);
    v31 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v83 = *(v14 + 72);
    v84 = v29;
    v32 = v27;
    v82 = v21 + 32;
    do
    {
      v34 = v86;
      v33 = v87;
      v84(v86, v31, v87);
      sub_25268E930();
      (*(v30 - 8))(v34, v33);
      v92 = v28;
      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_252370248(v35 > 1, v36 + 1, 1);
        v28 = v92;
      }

      *(v28 + 16) = v36 + 1;
      (*(v85 + 32))(v28 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v36, v24, v20);
      v31 += v83;
      --v32;
    }

    while (v32);
    v21 = v85;
    v26 = v71;
  }

  v37 = v72;
  sub_252692DA0();

  v38 = *(v21 + 48);
  if (v38(v37, 1, v20) == 1)
  {
    sub_25268E280();
    v39 = v38(v37, 1, v20);
    v40 = v76;
    if (v39 != 1)
    {
      sub_252372288(v37, &qword_27F4DADE0);
    }
  }

  else
  {
    (*(v21 + 32))(v26, v37, v20);
    v40 = v76;
  }

  v41 = v77;
  v42 = sub_252364644(v77);
  v44 = v43;
  type metadata accessor for AccessoryControlSolver();
  v45 = v74;
  (*(v21 + 16))(v74, v26, v20);
  (*(v21 + 56))(v45, 0, 1, v20);
  sub_2523C8DA0(v73, v45, v42, v44, v40);

  sub_252372288(v45, &qword_27F4DADE0);
  v46 = v79;
  if ((*(v79 + 48))(v40, 1, v75) == 1)
  {
    (*(v21 + 8))(v26, v20);
    sub_252372288(v40, &qword_27F4DADE8);
    return 0;
  }

  else
  {
    v82 = v20;
    sub_2523722E8(v40, v78, type metadata accessor for AccessoryControlGroup);
    v48 = MEMORY[0x277D84F90];
    if (v70)
    {
      v92 = MEMORY[0x277D84F90];
      v49 = v70;
      sub_252370204(0, v70, 0);
      v48 = v92;
      v50 = *(v68 + 16);
      v51 = v41 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
      v83 = *(v68 + 72);
      v84 = v50;
      v52 = (v68 + 8);
      v53 = v69;
      do
      {
        v55 = v86;
        v54 = v87;
        v84(v86, v51, v87);
        sub_25268EB50();
        (*v52)(v55, v54);
        v92 = v48;
        v57 = *(v48 + 16);
        v56 = *(v48 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_252370204(v56 > 1, v57 + 1, 1);
          v48 = v92;
        }

        *(v48 + 16) = v57 + 1;
        (*(v81 + 32))(v48 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v57, v53, v80);
        v51 += v83;
        --v49;
      }

      while (v49);
      v26 = v71;
      v46 = v79;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD60);
    v58 = (type metadata accessor for AccessoryControlModule(0) - 8);
    v59 = (*(*v58 + 80) + 32) & ~*(*v58 + 80);
    v60 = swift_allocObject();
    v87 = xmmword_252694E90;
    *(v60 + 16) = xmmword_252694E90;
    v61 = (v60 + v59);
    *v61 = v48;
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
    v62 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v87;
    v64 = v78;
    sub_2523721C0(v78, v63 + v62, type metadata accessor for AccessoryControlGroup);
    v65 = (v61 + v58[7]);
    v66 = (v61 + v58[9]);
    *v66 = 0;
    v66[1] = 0;
    *(v61 + v58[8]) = v63;
    type metadata accessor for AccessoryControlModule.Layout(0);
    swift_storeEnumTagMultiPayload();
    *v65 = 0;
    v65[1] = 0;
    sub_252372228(v64, type metadata accessor for AccessoryControlGroup);
    (*(v85 + 8))(v26, v82);
    return v60;
  }
}

uint64_t sub_252364644(uint64_t a1)
{
  v2 = sub_25268DA60();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_252692B90();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_25268E530();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8 < 2)
  {
    result = 0;
    if (v8)
    {
      sub_25268EBE0();
      return sub_25268EBA0();
    }
  }

  else
  {
    sub_25268EBE0();
    sub_25268E970();
    v9 = sub_25268E520();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    v15[1] = v8;
    v16 = sub_252693370();
    v17 = v12;
    MEMORY[0x2530A4800](32, 0xE100000000000000);
    if (!v11)
    {
      sub_252692B80();
      sub_25268DA30();
      v9 = sub_252692BF0();
      v11 = v13;
    }

    MEMORY[0x2530A4800](v9, v11);

    return v16;
  }

  return result;
}

uint64_t sub_2523648F8@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a4;
  v88 = a3;
  v76 = a2;
  v89 = a5;
  v6 = sub_25268EE60();
  v85 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v75 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD50);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v87 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v84 = &v75 - v14;
  MEMORY[0x28223BE20](v13);
  v86 = &v75 - v15;
  v97 = sub_25268E040();
  v96 = *(v97 - 8);
  v16 = MEMORY[0x28223BE20](v97);
  v83 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v93 = &v75 - v18;
  v19 = sub_25268EBE0();
  v94 = *(v19 - 8);
  v95 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v80 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v92 = &v75 - v22;
  v23 = type metadata accessor for HAPControlSolver.Source();
  MEMORY[0x28223BE20](v23 - 8);
  v82 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADF0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v75 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB058);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v75 - v29;
  v31 = sub_25268E710();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD58);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v38 = &v75 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v90 = &v75 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v75 - v42;
  MEMORY[0x28223BE20](v41);
  v91 = &v75 - v44;
  v79 = a1;
  sub_25268EA40();
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_252372288(v30, &qword_27F4DB058);
    v45 = v85;
    (*(v85 + 56))(v43, 1, 1, v6);
  }

  else
  {
    v75 = v6;
    (*(v32 + 32))(v34, v30, v31);
    sub_25237153C(v76, v27, &qword_27F4DADF0);
    v46 = sub_25268F890();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v27, 1, v46) == 1)
    {
      (*(v32 + 8))(v34, v31);
      sub_252372288(v27, &qword_27F4DADF0);
      v45 = v85;
      v6 = v75;
      (*(v85 + 56))(v43, 1, 1, v75);
    }

    else
    {
      sub_25268F8A0();
      (*(v32 + 8))(v34, v31);
      (*(v47 + 8))(v27, v46);
      v6 = v75;
      v45 = v85;
    }
  }

  v48 = v43;
  v49 = v91;
  sub_2523714D4(v48, v91, &qword_27F4DAD58);
  v50 = v79;
  v79 = *(v94 + 16);
  v79(v92, v50, v95);
  v51 = v49;
  v52 = v90;
  sub_25237153C(v51, v90, &qword_27F4DAD58);
  v85 = *(v96 + 16);
  (v85)(v93, v81, v97);
  sub_25237153C(v52, v38, &qword_27F4DAD58);
  if ((*(v45 + 48))(v38, 1, v6) == 1)
  {
    sub_252372288(v38, &qword_27F4DAD58);
    v53 = 1;
    v54 = v84;
  }

  else
  {
    v55 = v45;
    v56 = *(v45 + 32);
    v57 = v77;
    v56(v77, v38, v6);
    v58 = v78;
    (*(v55 + 16))(v78, v57, v6);
    v54 = v84;
    MatterControlSolver.Source.init(with:)(v58, v84);
    (*(v55 + 8))(v57, v6);
    v53 = 0;
  }

  v59 = type metadata accessor for MatterControlSolver.Source(0);
  (*(*(v59 - 8) + 56))(v54, v53, 1, v59);
  v60 = v86;
  sub_2523714D4(v54, v86, &qword_27F4DAD50);
  v61 = v80;
  v62 = v92;
  v63 = v95;
  v79(v80, v92, v95);
  v64 = v87;
  sub_25237153C(v60, v87, &qword_27F4DAD50);
  v65 = v83;
  v66 = v93;
  v67 = v97;
  (v85)(v83, v93, v97);
  v68 = v82;
  sub_25259AF74(v61, v64, v65, v82);
  sub_252372288(v60, &qword_27F4DAD50);
  (*(v96 + 8))(v66, v67);
  sub_252372288(v90, &qword_27F4DAD58);
  (*(v94 + 8))(v62, v63);
  v69 = sub_25235FDB8(v68, 0);
  sub_252372228(v68, type metadata accessor for HAPControlSolver.Source);
  if (*(v69 + 16) == 1)
  {
    v70 = type metadata accessor for AccessoryControlGroup(0);
    v71 = *(v70 - 8);
    v72 = v89;
    sub_2523721C0(v69 + ((*(v71 + 80) + 32) & ~*(v71 + 80)), v89, type metadata accessor for AccessoryControlGroup);

    sub_252372288(v91, &qword_27F4DAD58);
    return (*(v71 + 56))(v72, 0, 1, v70);
  }

  else
  {
    sub_252372288(v91, &qword_27F4DAD58);

    v74 = type metadata accessor for AccessoryControlGroup(0);
    return (*(*(v74 - 8) + 56))(v89, 1, 1, v74);
  }
}

void *sub_25236538C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAFE8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0) - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v19 = MEMORY[0x277D84F90];
  v29 = *(v16 + 72);
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_252372288(v9, &qword_27F4DAFE8);
    }

    else
    {
      v20 = v28;
      sub_2523722E8(v9, v28, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction);
      sub_2523722E8(v20, v30, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_252369CFC(0, v19[2] + 1, 1, v19, &qword_27F4DAFF0, &unk_252694FF8, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_252369CFC(v21 > 1, v22 + 1, 1, v19, &qword_27F4DAFF0, &unk_252694FF8, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction);
      }

      v19[2] = v22 + 1;
      sub_2523722E8(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_2523656F0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for AccessoryControl(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(type metadata accessor for HAPControlSolver.Source() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v19 = MEMORY[0x277D84F90];
  v29 = *(v16 + 72);
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_252372288(v9, &qword_27F4DB120);
    }

    else
    {
      v20 = v28;
      sub_2523722E8(v9, v28, type metadata accessor for AccessoryControl);
      sub_2523722E8(v20, v30, type metadata accessor for AccessoryControl);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_252369CFC(0, v19[2] + 1, 1, v19, &qword_27F4DADA8, &unk_252694EC0, type metadata accessor for AccessoryControl);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_252369CFC(v21 > 1, v22 + 1, 1, v19, &qword_27F4DADA8, &unk_252694EC0, type metadata accessor for AccessoryControl);
      }

      v19[2] = v22 + 1;
      sub_2523722E8(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for AccessoryControl);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_252365A54(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADE8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for AccessoryControlGroup(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_25268EBE0() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v19 = MEMORY[0x277D84F90];
  v29 = *(v16 + 72);
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_252372288(v9, &qword_27F4DADE8);
    }

    else
    {
      v20 = v28;
      sub_2523722E8(v9, v28, type metadata accessor for AccessoryControlGroup);
      sub_2523722E8(v20, v30, type metadata accessor for AccessoryControlGroup);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_252369CFC(0, v19[2] + 1, 1, v19, &qword_27F4DAD98, &unk_252694EB8, type metadata accessor for AccessoryControlGroup);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_252369CFC(v21 > 1, v22 + 1, 1, v19, &qword_27F4DAD98, &unk_252694EB8, type metadata accessor for AccessoryControlGroup);
      }

      v19[2] = v22 + 1;
      sub_2523722E8(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for AccessoryControlGroup);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_252365DB8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DABF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_25268E3C0() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v19 = MEMORY[0x277D84F90];
  v29 = *(v16 + 72);
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_252372288(v9, &qword_27F4DABF0);
    }

    else
    {
      v20 = v28;
      sub_2523722E8(v9, v28, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
      sub_2523722E8(v20, v30, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_252369CFC(0, v19[2] + 1, 1, v19, &qword_27F4DAE70, &unk_252694F10, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_252369CFC(v21 > 1, v22 + 1, 1, v19, &qword_27F4DAE70, &unk_252694F10, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
      }

      v19[2] = v22 + 1;
      sub_2523722E8(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_25236611C(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = MEMORY[0x277D84F90];
  v7 = a3 + 32;
  a1(&v11, a3 + 32);
  while (!v3)
  {
    if (v12)
    {
      sub_25235E1A4(&v11, v13);
      sub_25235E1A4(v13, &v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_25236928C(0, v6[2] + 1, 1, v6, &qword_27F4DAFB0, &unk_252694FC8, &qword_27F4DAFB8);
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        v6 = sub_25236928C((v8 > 1), v9 + 1, 1, v6, &qword_27F4DAFB0, &unk_252694FC8, &qword_27F4DAFB8);
      }

      v6[2] = v9 + 1;
      sub_25235E1A4(&v11, &v6[5 * v9 + 4]);
    }

    else
    {
      sub_252372288(&v11, &qword_27F4DAFC0);
    }

    v7 += 40;
    if (!--v4)
    {
      return v6;
    }

    a1(&v11, v7);
  }

  return v6;
}

void *sub_2523662B8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB140);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v26 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  MEMORY[0x28223BE20](v26);
  v24 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v23 = &v21 - v12;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = (a3 + 32);
  v21 = v11;
  v15 = (v11 + 48);
  v16 = MEMORY[0x277D84F90];
  v22 = a1;
  while (1)
  {
    v25 = *v14;

    a1(&v25);
    if (v3)
    {
      break;
    }

    if ((*v15)(v8, 1, v26) == 1)
    {
      sub_252372288(v8, &qword_27F4DB140);
    }

    else
    {
      v17 = v23;
      sub_2523722E8(v8, v23, type metadata accessor for AccessoryControl.WriteSpecification);
      sub_2523722E8(v17, v24, type metadata accessor for AccessoryControl.WriteSpecification);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_252369CFC(0, v16[2] + 1, 1, v16, &qword_27F4DAF98, &unk_252694FB0, type metadata accessor for AccessoryControl.WriteSpecification);
      }

      v19 = v16[2];
      v18 = v16[3];
      if (v19 >= v18 >> 1)
      {
        v16 = sub_252369CFC(v18 > 1, v19 + 1, 1, v16, &qword_27F4DAF98, &unk_252694FB0, type metadata accessor for AccessoryControl.WriteSpecification);
      }

      v16[2] = v19 + 1;
      sub_2523722E8(v24, v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, type metadata accessor for AccessoryControl.WriteSpecification);
      a1 = v22;
    }

    ++v14;
    if (!--v13)
    {
      return v16;
    }
  }

  return v16;
}

void *sub_2523665E0(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for AccessoryControlDecorationButton.Config(0);
  MEMORY[0x28223BE20](v10);
  v29 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v27 = &v23 - v14;
  v28 = *(a3 + 16);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = 0;
  v24 = v13;
  v16 = (v13 + 48);
  v17 = MEMORY[0x277D84F90];
  v25 = v10;
  v26 = a2;
  while (1)
  {
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18) - 8);
    a1(a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15);
    if (v3)
    {
      break;
    }

    if ((*v16)(v9, 1, v10) == 1)
    {
      sub_252372288(v9, &qword_27F4DAE10);
    }

    else
    {
      v19 = v27;
      sub_2523722E8(v9, v27, type metadata accessor for AccessoryControlDecorationButton.Config);
      sub_2523722E8(v19, v29, type metadata accessor for AccessoryControlDecorationButton.Config);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_252369CFC(0, v17[2] + 1, 1, v17, &qword_27F4DAE20, &unk_2526ABB90, type metadata accessor for AccessoryControlDecorationButton.Config);
      }

      v21 = v17[2];
      v20 = v17[3];
      if (v21 >= v20 >> 1)
      {
        v17 = sub_252369CFC(v20 > 1, v21 + 1, 1, v17, &qword_27F4DAE20, &unk_2526ABB90, type metadata accessor for AccessoryControlDecorationButton.Config);
      }

      v17[2] = v21 + 1;
      sub_2523722E8(v29, v17 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, type metadata accessor for AccessoryControlDecorationButton.Config);
      v10 = v25;
    }

    if (v28 == ++v15)
    {
      return v17;
    }
  }

  return v17;
}

void *sub_252366960(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v51 = sub_25268EBE0();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v43 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v36 - v11;
  v12 = sub_25268DA10();
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v46 = v14 + 16;
  v47 = v14;
  v50 = (v14 + 8);
  v45 = (v8 + 48);
  v40 = v8;
  v41 = (v8 + 32);
  v52 = a3;
  v22 = v13;

  v24 = 0;
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v47 + 16))(v16, *(v52 + 48) + *(v47 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v22);
    v49(v16);
    if (v3)
    {
      (*v50)(v16, v22);
      v35 = v44;

      return v35;
    }

    v20 &= v20 - 1;
    (*v50)(v16, v22);
    if ((*v45)(v7, 1, v51) == 1)
    {
      result = sub_252372288(v7, &qword_27F4DAF40);
    }

    else
    {
      v39 = v22;
      v26 = *v41;
      (*v41)(v42, v7, v51);
      v26(v43, v42, v51);
      v27 = v26;
      v28 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_252369CFC(0, v28[2] + 1, 1, v28, &qword_27F4DAF48, &unk_252694F78, MEMORY[0x277D15AC0]);
      }

      v30 = v28[2];
      v29 = v28[3];
      v44 = v28;
      v31 = v30 + 1;
      v22 = v39;
      if (v30 >= v29 >> 1)
      {
        v37 = v30;
        v38 = v30 + 1;
        v34 = sub_252369CFC(v29 > 1, v30 + 1, 1, v44, &qword_27F4DAF48, &unk_252694F78, MEMORY[0x277D15AC0]);
        v30 = v37;
        v31 = v38;
        v44 = v34;
      }

      v32 = v43;
      v33 = v44;
      v44[2] = v31;
      result = (v27)(v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, v32, v51);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v44;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

ValueMetadata *sub_252366DF4(uint64_t a1)
{
  v2 = sub_25268E530();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HAPControlSolver.Source();
  (*(v3 + 16))(v5, a1 + *(v6 + 20), v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == *MEMORY[0x277D15650])
  {
    sub_252371D64();
    return &_s14descr286481D49V11AirPurifierVN;
  }

  if (v7 == *MEMORY[0x277D15828])
  {
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D15810])
  {
    goto LABEL_6;
  }

  if (v7 == *MEMORY[0x277D15868])
  {
    sub_2523718CC();
    return &_s14descr286481D49V6FaucetVN;
  }

  if (v7 == *MEMORY[0x277D15760])
  {
    sub_252371AC4();
    return &_s14descr286481D49V10GarageDoorVN;
  }

  if (v7 == *MEMORY[0x277D15698])
  {
    sub_252371B6C();
    return &_s14descr286481D49V12HeaterCoolerVN;
  }

  if (v7 == *MEMORY[0x277D157D8])
  {
    sub_252371CBC();
    return &_s14descr286481D49V10HumidifierVN;
  }

  if (v7 == *MEMORY[0x277D15770])
  {
    sub_2523719C8();
    return &_s14descr286481D49V9SprinklerVN;
  }

  if (v7 == *MEMORY[0x277D158D0])
  {
    sub_252371C14();
    return &_s14descr286481D49V9LightbulbVN;
  }

  if (v7 == *MEMORY[0x277D156D8])
  {
    sub_252371B18();
    return &_s14descr286481D49V4LockVN;
  }

  if (v7 == *MEMORY[0x277D15870])
  {
    goto LABEL_22;
  }

  if (v7 == *MEMORY[0x277D15708])
  {
    sub_252371974();
    return &_s14descr286481D49V14SecuritySystemVN;
  }

  else
  {
    if (v7 == *MEMORY[0x277D15888])
    {
LABEL_22:
      sub_252371C68();
      return &_s14descr286481D49V12OutletSwitchVN;
    }

    if (v7 == *MEMORY[0x277D15630])
    {
      sub_252371920();
      return &_s14descr286481D49V10TelevisionVN;
    }

    else if (v7 == *MEMORY[0x277D15640])
    {
      sub_252371BC0();
      return &_s14descr286481D49V10ThermostatVN;
    }

    else if (v7 == *MEMORY[0x277D15850])
    {
      sub_252371A1C();
      return &_s14descr286481D49V5ValveVN;
    }

    else
    {
      if (v7 == *MEMORY[0x277D15718])
      {
LABEL_6:
        sub_252371D10();
        return &_s14descr286481D49V3FanVN;
      }

      if (v7 == *MEMORY[0x277D15898] || v7 == *MEMORY[0x277D15720])
      {
LABEL_4:
        sub_252371A70();
        return &_s14descr286481D49V27DoorWindowAndWindowCoveringVN;
      }

      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }
}

uint64_t sub_2523671A8()
{
  v1 = sub_25268DA10();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = sub_25268EBD0();
  if (((v8 ^ sub_25268EBD0()) & 1) == 0)
  {
    v25 = v2;
    v26 = v0;
    v9 = sub_25268E9D0();
    if (!v10)
    {
      v9 = sub_25268EBA0();
    }

    v11 = v9;
    v12 = v10;
    v13 = sub_25268E9D0();
    if (!v14)
    {
      v13 = sub_25268EBA0();
    }

    if (v11 == v13 && v12 == v14)
    {
    }

    else
    {
      if (sub_2526933B0())
      {

        LOBYTE(v8) = 1;
        return v8 & 1;
      }

      v22 = sub_2526933B0();

      if (v22)
      {
        goto LABEL_18;
      }
    }

    sub_25268EB50();
    v24 = sub_25268D9A0();
    v16 = v15;
    v17 = *(v25 + 8);
    v17(v7, v1);
    sub_25268EB50();
    v18 = sub_25268D9A0();
    v20 = v19;
    v17(v5, v1);
    if (v24 != v18 || v16 != v20)
    {
      LOBYTE(v8) = sub_2526933B0();

      return v8 & 1;
    }

LABEL_18:
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

unint64_t sub_25236743C(uint64_t a1, unsigned __int8 a2)
{
  sub_252693460();
  MEMORY[0x2530A4FE0](a1);
  MEMORY[0x2530A4FE0](a2);
  v4 = sub_2526934C0();

  return sub_252367B0C(a1, a2, v4);
}

unint64_t sub_2523674E8(uint64_t a1)
{
  sub_25268E310();
  v2 = MEMORY[0x277D15558];
  sub_252371884(&qword_27F4DAF08, MEMORY[0x277D15558]);
  v3 = sub_252692B20();
  return sub_2523680BC(a1, v3, MEMORY[0x277D15558], &qword_27F4DAF10, v2, MEMORY[0x277D15588]);
}

unint64_t sub_2523675BC(uint64_t a1)
{
  sub_25268E530();
  v2 = MEMORY[0x277D158E0];
  sub_252371884(&qword_27F4DB068, MEMORY[0x277D158E0]);
  v3 = sub_252692B20();
  return sub_2523680BC(a1, v3, MEMORY[0x277D158E0], &qword_27F4DB078, v2, MEMORY[0x277D158F0]);
}

unint64_t sub_252367690(unsigned __int16 a1)
{
  v3 = MEMORY[0x2530A4FB0](*(v1 + 40), a1, 2);

  return sub_25236825C(a1, v3);
}

unint64_t sub_2523676D8(uint64_t a1)
{
  sub_25268F4D0();
  v2 = MEMORY[0x277D16348];
  sub_252371884(&qword_27F4DAF28, MEMORY[0x277D16348]);
  v3 = sub_252692B20();
  return sub_2523680BC(a1, v3, MEMORY[0x277D16348], &qword_27F4DAF30, v2, MEMORY[0x277D16360]);
}

unint64_t sub_2523677AC(uint64_t a1)
{
  sub_25268E710();
  v2 = MEMORY[0x277D15980];
  sub_252371884(&qword_27F4DAFD0, MEMORY[0x277D15980]);
  v3 = sub_252692B20();
  return sub_2523680BC(a1, v3, MEMORY[0x277D15980], &qword_27F4DAFD8, v2, MEMORY[0x277D15998]);
}

unint64_t sub_252367880(uint64_t a1)
{
  sub_25268DA10();
  v2 = MEMORY[0x277CC95F0];
  sub_252371884(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  v3 = sub_252692B20();
  return sub_2523680BC(a1, v3, MEMORY[0x277CC95F0], &qword_27F4DAF90, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_252367954(uint64_t a1, uint64_t a2)
{
  sub_252693460();
  sub_252692C80();
  v4 = sub_2526934C0();

  return sub_252368338(a1, a2, v4);
}

uint64_t sub_2523679F8(uint64_t a1, void (*a2)(_BYTE *), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_252693460();
  a2(v8);
  v5 = sub_2526934C0();

  return a3(a1, v5);
}

unint64_t sub_252367A78(uint64_t a1)
{
  sub_252692BD0();
  sub_252693460();
  sub_252692C80();
  v2 = sub_2526934C0();

  return sub_252368550(a1, v2);
}

unint64_t sub_252367B0C(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v10 = *(v8 + 8);
      if (v9 == a1 && a2 == v10)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_252367B8C(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v41 = sub_25268DA10();
  v4 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE50);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v36 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v42 = (&v36 - v17);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  v45 = v2 + 64;
  v46 = v2;
  v21 = -1 << *(v2 + 32);
  v22 = a2 & ~v21;
  if ((*(v2 + 64 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
  {
    v23 = *(v18 + 72);
    v43 = ~v21;
    v44 = v23;
    v40 = (v4 + 8);
    v36 = (v4 + 32);
    v37 = v15;
    while (1)
    {
      sub_2523721C0(*(v46 + 48) + v44 * v22, v20, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      v24 = *(v6 + 48);
      sub_2523721C0(v20, v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      sub_2523721C0(v47, &v8[v24], type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        break;
      }

      sub_252372228(v20, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      sub_2523721C0(v8, v42, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_4;
      }

      v26 = *v42;
      v27 = *&v8[v24];
      sub_252372228(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      if (v26 == v27)
      {
        return v22;
      }

LABEL_5:
      v22 = (v22 + 1) & v43;
      if (((*(v45 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        return v22;
      }
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_252372228(v20, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      sub_2523721C0(v8, v15, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (*v15 == *&v8[v24])
        {
          goto LABEL_18;
        }

LABEL_16:
        sub_252372228(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        goto LABEL_5;
      }
    }

    else
    {
      sub_2523721C0(v8, v12, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v28 = v9;
        v29 = v6;
        v30 = v38;
        v31 = v41;
        (*v36)(v38, &v8[v24], v41);
        v39 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
        v32 = *v40;
        v33 = v30;
        v6 = v29;
        v9 = v28;
        (*v40)(v33, v31);
        sub_252372228(v20, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        v34 = v31;
        v15 = v37;
        v32(v12, v34);
        if (v39)
        {
LABEL_18:
          sub_252372228(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
          return v22;
        }

        goto LABEL_16;
      }

      sub_252372228(v20, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      (*v40)(v12, v41);
    }

LABEL_4:
    sub_252372288(v8, &qword_27F4DAE50);
    goto LABEL_5;
  }

  return v22;
}

unint64_t sub_2523680BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_252371884(v23, v24);
      v19 = sub_252692B70();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_25236825C(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2523682CC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_252368338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2526933B0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2523683F0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AccessoryControl.ElementIdentifier() - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_2523721C0(*(v2 + 48) + v12 * v10, v8, type metadata accessor for AccessoryControl.ElementIdentifier);
      v13 = static AccessoryControl.ElementIdentifier.== infix(_:_:)(v8, a1);
      sub_252372228(v8, type metadata accessor for AccessoryControl.ElementIdentifier);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_252368550(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_252692BD0();
      v8 = v7;
      if (v6 == sub_252692BD0() && v8 == v9)
      {
        break;
      }

      v11 = sub_2526933B0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_252368690(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAED8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25236880C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_252368918(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_252368A24(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_252368B44(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_252368CB4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

void *sub_252368E8C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v6)
  {
    if (v11 != a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB010);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_252368FE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAFA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_252369138(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_25236928C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_252369438(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 32 * v9;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

char *sub_252369594(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

void *sub_252369768(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_2523698F4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE28);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_252369BF0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

size_t sub_252369CFC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_252369ED8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEC8);
  result = sub_252693290();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_252693450();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25236A13C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_25268E530();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB060);
  v40 = a2;
  result = sub_252693290();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_252371884(&qword_27F4DB068, MEMORY[0x277D158E0]);
      result = sub_252692B20();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25236A4FC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_25268F4D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF50);
  v39 = a2;
  result = sub_252693290();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_25235E20C((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_252371478(*(v9 + 56) + 32 * v23, v44);
      }

      sub_252371884(&qword_27F4DAF28, MEMORY[0x277D16348]);
      result = sub_252692B20();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_25235E20C(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25236A8D4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_25268E710();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAFC8);
  v39 = a2;
  result = sub_252693290();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_252371884(&qword_27F4DAFD0, MEMORY[0x277D15980]);
      result = sub_252692B20();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25236ACB0(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_25268DA10();
  v5 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v54 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v53 = &v43 - v10;
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE58);
  v52 = a2;
  result = sub_252693290();
  v13 = result;
  if (*(v11 + 16))
  {
    v44 = v2;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v45 = (v5 + 8);
    v46 = (v5 + 32);
    v20 = result + 64;
    v21 = v53;
    v47 = v11;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(v50 + 72);
      v28 = *(v11 + 48) + v27 * v26;
      if (v52)
      {
        sub_2523722E8(v28, v21, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      }

      else
      {
        sub_2523721C0(v28, v21, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      }

      v29 = *(*(v11 + 56) + 8 * v26);
      sub_252693460();
      sub_2523721C0(v21, v54, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          MEMORY[0x2530A4FE0](1);
          sub_2526934A0();
        }

        else
        {
          v33 = v48;
          v32 = v49;
          (*v46)(v48, v54, v49);
          MEMORY[0x2530A4FE0](2);
          sub_252371884(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
          sub_252692B30();
          v34 = v33;
          v11 = v47;
          (*v45)(v34, v32);
        }
      }

      else
      {
        v31 = *v54;
        MEMORY[0x2530A4FE0](0);
        MEMORY[0x2530A4FE0](v31);
      }

      result = sub_2526934C0();
      v35 = -1 << *(v13 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v21 = v53;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v20 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v21 = v53;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_2523722E8(v21, *(v13 + 48) + v27 * v22, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      *(*(v13 + 56) + 8 * v22) = v29;
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_39;
    }

    v42 = 1 << *(v11 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v15, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v42;
    }

    *(v11 + 16) = 0;
  }

LABEL_39:
  *v3 = v13;
  return result;
}

uint64_t sub_25236B1F0(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = sub_25268DA10();
  v5 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v53 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE68);
  v50 = a2;
  result = sub_252693290();
  v14 = result;
  if (*(v12 + 16))
  {
    v42 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = (v5 + 8);
    v44 = (v5 + 32);
    v21 = result + 64;
    v47 = v12;
    v52 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v48 + 72);
      v28 = *(v12 + 48) + v27 * v26;
      v29 = v52;
      if (v50)
      {
        sub_2523722E8(v28, v52, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        v51 = *(*(v12 + 56) + 8 * v26);
      }

      else
      {
        sub_2523721C0(v28, v52, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        v51 = *(*(v12 + 56) + 8 * v26);
      }

      sub_252693460();
      sub_2523721C0(v29, v53, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          MEMORY[0x2530A4FE0](1);
          sub_2526934A0();
        }

        else
        {
          v32 = v45;
          v33 = v46;
          (*v44)(v45, v53, v46);
          MEMORY[0x2530A4FE0](2);
          sub_252371884(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
          sub_252692B30();
          (*v43)(v32, v33);
        }
      }

      else
      {
        v31 = *v53;
        MEMORY[0x2530A4FE0](0);
        MEMORY[0x2530A4FE0](v31);
      }

      result = sub_2526934C0();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v12 = v47;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v12 = v47;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_2523722E8(v52, *(v14 + 48) + v27 * v22, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      *(*(v14 + 56) + 8 * v22) = v51;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_39;
    }

    v41 = 1 << *(v12 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_39:
  *v3 = v14;
  return result;
}

uint64_t sub_25236B734(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE48);
  v40 = a2;
  result = sub_252693290();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(v7 + 48) + 16 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_2523722E8(v28, v41, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
      }

      else
      {
        sub_2523721C0(v28, v41, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
      }

      sub_252693460();
      MEMORY[0x2530A4FE0](v25);
      MEMORY[0x2530A4FE0](v26);
      result = sub_2526934C0();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 16 * v17;
      *v18 = v25;
      *(v18 + 8) = v26;
      result = sub_2523722E8(v41, *(v9 + 56) + v27 * v17, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_25236BAAC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for AccessoryControl.ElementIdentifier();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE38);
  v40 = a2;
  result = sub_252693290();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v24 = v21 | (v11 << 6);
      v25 = *(v39 + 72);
      v26 = *(v8 + 48) + v25 * v24;
      if (v40)
      {
        sub_2523722E8(v26, v7, type metadata accessor for AccessoryControl.ElementIdentifier);
      }

      else
      {
        sub_2523721C0(v26, v7, type metadata accessor for AccessoryControl.ElementIdentifier);
      }

      v27 = (*(v8 + 56) + 32 * v24);
      v28 = *v27;
      v41 = v27[1];
      v42 = v28;
      sub_252693460();
      AccessoryControl.ElementIdentifier.hash(into:)(v43);
      result = sub_2526934C0();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_2523722E8(v7, *(v10 + 48) + v25 * v18, type metadata accessor for AccessoryControl.ElementIdentifier);
      v19 = (*(v10 + 56) + 32 * v18);
      v20 = v41;
      *v19 = v42;
      v19[1] = v20;
      ++*(v10 + 16);
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v8 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v8 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_25236BE1C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Device.Control(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25268DA10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF00);
  v43 = a2;
  result = sub_252693290();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_2523722E8(v27 + v28 * v24, v47, type metadata accessor for Device.Control);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_2523721C0(v29 + v28 * v24, v47, type metadata accessor for Device.Control);
      }

      sub_252371884(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
      result = sub_252692B20();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_2523722E8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for Device.Control);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_25236C2BC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for AccessoryControl.ElementIdentifier();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB130);
  v43 = a2;
  result = sub_252693290();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v3;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v42 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v43)
      {
        sub_2523722E8(v25, v7, type metadata accessor for AccessoryControl.ElementIdentifier);
        v26 = *(v10 + 56);
        v27 = v7;
        v28 = *(v26 + 8 * v23);
      }

      else
      {
        sub_2523721C0(v25, v7, type metadata accessor for AccessoryControl.ElementIdentifier);
        v29 = *(v10 + 56);
        v27 = v7;
        v28 = *(v29 + 8 * v23);
      }

      sub_252693460();
      v30 = v27;
      AccessoryControl.ElementIdentifier.hash(into:)(v44);
      result = sub_2526934C0();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_2523722E8(v30, *(v11 + 48) + v24 * v19, type metadata accessor for AccessoryControl.ElementIdentifier);
      *(*(v11 + 56) + 8 * v19) = v28;
      v7 = v30;
      ++*(v11 + 16);
      v10 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void *sub_25236C640()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEC8);
  v2 = *v0;
  v3 = sub_252693280();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_25236C78C()
{
  v1 = v0;
  v31 = sub_25268E530();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB060);
  v3 = *v0;
  v4 = sub_252693280();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_25236C9FC()
{
  v1 = v0;
  v26 = sub_25268F4D0();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF50);
  v3 = *v0;
  v4 = sub_252693280();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_252371478(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_25235E20C(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_25236CC80()
{
  v1 = v0;
  v33 = sub_25268E710();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAFC8);
  v3 = *v0;
  v4 = sub_252693280();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_25236CF00()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE58);
  v6 = *v0;
  v7 = sub_252693280();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_2523721C0(*(v6 + 48) + v22, v5, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        v23 = *(*(v6 + 56) + 8 * v21);
        result = sub_2523722E8(v5, *(v8 + 48) + v22, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v25;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_25236D13C()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE68);
  v5 = *v0;
  v6 = sub_252693280();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_2523721C0(*(v5 + 48) + v21, v4, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_2523722E8(v4, *(v7 + 48) + v21, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_25236D37C()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE48);
  v4 = *v0;
  v5 = sub_252693280();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = *(v4 + 48) + 16 * v20;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_2523721C0(*(v4 + 56) + v26, v30, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
        v27 = v32;
        v28 = *(v32 + 48) + v21;
        *v28 = v23;
        *(v28 + 8) = v24;
        result = sub_2523722E8(v25, *(v27 + 56) + v26, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_25236D5D4()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.ElementIdentifier();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE38);
  v6 = *v0;
  v7 = sub_252693280();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_2523721C0(*(v6 + 48) + v22, v5, type metadata accessor for AccessoryControl.ElementIdentifier);
        v21 *= 32;
        v23 = (*(v6 + 56) + v21);
        v24 = *(v8 + 48);
        v25 = *v23;
        v30 = v23[1];
        v31 = v25;
        result = sub_2523722E8(v5, v24 + v22, type metadata accessor for AccessoryControl.ElementIdentifier);
        v26 = (*(v8 + 56) + v21);
        v27 = v30;
        *v26 = v31;
        v26[1] = v27;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_25236D81C()
{
  v1 = v0;
  v2 = type metadata accessor for Device.Control(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_25268DA10();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF00);
  v5 = *v0;
  v6 = sub_252693280();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_2523721C0(*(v5 + 56) + v26, v35, type metadata accessor for Device.Control);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_2523722E8(v25, *(v27 + 56) + v26, type metadata accessor for Device.Control);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_25236DB48()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.ElementIdentifier();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB130);
  v5 = *v0;
  v6 = sub_252693280();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_2523721C0(*(v5 + 48) + v21, v4, type metadata accessor for AccessoryControl.ElementIdentifier);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_2523722E8(v4, *(v7 + 48) + v21, type metadata accessor for AccessoryControl.ElementIdentifier);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_25236DD88(void **a1)
{
  v2 = *(sub_25268EBE0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2526242BC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25236DE50(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25236DE50(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_252693360();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25268EBE0();
        v6 = sub_252692DC0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25268EBE0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25236E4BC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25236DF7C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25236DF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v65 = sub_25268DA10();
  v8 = *(v65 - 8);
  v9 = MEMORY[0x28223BE20](v65);
  v64 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v63 = &v54[-v11];
  v12 = sub_25268EBE0();
  v13 = MEMORY[0x28223BE20](v12);
  v73 = &v54[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v54[-v16];
  result = MEMORY[0x28223BE20](v15);
  v56 = a2;
  if (a3 != a2)
  {
    v21 = &v54[-v19];
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v74 = (v23 - 8);
    v75 = v24;
    v61 = v12;
    v62 = (v8 + 8);
    v76 = v23;
    v26 = v22 + v25 * (a3 - 1);
    v70 = -v25;
    v71 = (v23 + 16);
    v27 = a1 - a3;
    v72 = v22;
    v55 = v25;
    v28 = v22 + v25 * a3;
    v68 = &v54[-v19];
    v69 = v17;
LABEL_7:
    v59 = v26;
    v60 = a3;
    v57 = v28;
    v58 = v27;
    v30 = v27;
    while (1)
    {
      v31 = v75;
      v75(v21, v28, v12);
      v31(v17, v26, v12);
      v32 = sub_25268EBD0();
      if (((v32 ^ sub_25268EBD0()) & 1) == 0)
      {
        v33 = sub_25268E9D0();
        if (!v34)
        {
          v33 = sub_25268EBA0();
        }

        v35 = v33;
        v36 = v34;
        v37 = sub_25268E9D0();
        if (!v38)
        {
          v37 = sub_25268EBA0();
        }

        if (v35 == v37 && v36 == v38)
        {
        }

        else
        {
          if (sub_2526933B0())
          {

            v39 = *v74;
            v17 = v69;
            (*v74)(v69, v12);
            v21 = v68;
            result = v39(v68, v12);
            goto LABEL_23;
          }

          v40 = sub_2526933B0();

          v21 = v68;
          if (v40)
          {
            goto LABEL_5;
          }
        }

        v41 = v63;
        sub_25268EB50();
        v42 = sub_25268D9A0();
        v66 = v43;
        v67 = v42;
        v44 = *v62;
        v45 = v65;
        (*v62)(v41, v65);
        v46 = v64;
        sub_25268EB50();
        v47 = sub_25268D9A0();
        v49 = v48;
        v44(v46, v45);
        if (v67 == v47 && v66 == v49)
        {

          v21 = v68;
          v12 = v61;
LABEL_5:
          v29 = *v74;
          v17 = v69;
          (*v74)(v69, v12);
          result = v29(v21, v12);
LABEL_6:
          a3 = v60 + 1;
          v26 = v59 + v55;
          v27 = v58 - 1;
          v28 = v57 + v55;
          if (v60 + 1 == v56)
          {
            return result;
          }

          goto LABEL_7;
        }

        LOBYTE(v32) = sub_2526933B0();

        v21 = v68;
        v17 = v69;
        v12 = v61;
      }

      v50 = *v74;
      (*v74)(v17, v12);
      result = v50(v21, v12);
      if ((v32 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      if (!v72)
      {
        __break(1u);
        return result;
      }

      v51 = *v71;
      v52 = v73;
      (*v71)(v73, v28, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = v51(v26, v52, v12);
      v26 += v70;
      v28 += v70;
      if (__CFADD__(v30++, 1))
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t sub_25236E4BC(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v164 = a4;
  v161 = a1;
  v182 = sub_25268DA10();
  v7 = *(v182 - 8);
  v8 = MEMORY[0x28223BE20](v182);
  v178 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v177 = &v158 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v163 = &v158 - v13;
  MEMORY[0x28223BE20](v12);
  v162 = &v158 - v14;
  v15 = sub_25268EBE0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v167 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v188 = &v158 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v158 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v158 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v179 = &v158 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v180 = &v158 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  result = MEMORY[0x28223BE20](v31);
  v175 = a3;
  v35 = *(a3 + 8);
  if (v35 < 1)
  {
    v37 = MEMORY[0x277D84F90];
LABEL_132:
    a3 = *v161;
    if (!*v161)
    {
      goto LABEL_174;
    }

    v7 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_168;
    }

    result = v7;
LABEL_135:
    v195 = result;
    v7 = *(result + 16);
    if (v7 >= 2)
    {
      while (*v175)
      {
        v153 = *(result + 16 * v7);
        v154 = result;
        v155 = *(result + 16 * (v7 - 1) + 40);
        sub_25236F494(&(*v175)[*(v16 + 72) * v153], &(*v175)[*(v16 + 72) * *(result + 16 * (v7 - 1) + 32)], &(*v175)[*(v16 + 72) * v155], a3);
        if (v5)
        {
        }

        if (v155 < v153)
        {
          goto LABEL_161;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v154 = sub_252624154(v154);
        }

        if (v7 - 2 >= *(v154 + 2))
        {
          goto LABEL_162;
        }

        v156 = &v154[16 * v7];
        *v156 = v153;
        *(v156 + 1) = v155;
        v195 = v154;
        sub_2526240C8(v7 - 1);
        result = v195;
        v7 = *(v195 + 16);
        if (v7 <= 1)
        {
        }
      }

      goto LABEL_172;
    }
  }

  v160 = &v158 - v33;
  v159 = v34;
  v36 = 0;
  v193 = (v16 + 8);
  v194 = v16 + 16;
  v181 = (v7 + 8);
  v190 = (v16 + 32);
  v37 = MEMORY[0x277D84F90];
  v174 = v16;
  v183 = v15;
  v191 = v23;
  v192 = v26;
  while (1)
  {
    v168 = v37;
    v165 = v36;
    if (v36 + 1 >= v35)
    {
      v71 = v36 + 1;
      v72 = v164;
      goto LABEL_43;
    }

    v176 = v35;
    v38 = *v175;
    v39 = *(v16 + 72);
    v40 = v16;
    v41 = &(*v175)[v39 * (v36 + 1)];
    v42 = *(v40 + 16);
    v42(v160, v41, v15);
    v187 = v39;
    v189 = v38;
    v43 = &v38[v39 * v165];
    v44 = v160;
    v45 = v159;
    v185 = v42;
    v42(v159, v43, v15);
    LODWORD(v186) = sub_2523671A8();
    if (v5)
    {
      v157 = *v193;
      (*v193)(v45, v15);
      v157(v44, v15);
    }

    v46 = *v193;
    (*v193)(v45, v15);
    v184 = v46;
    result = v46(v44, v15);
    a3 = v165 + 2;
    v47 = v187;
    v48 = v189 + v187 * (v165 + 2);
    v169 = 0;
    v7 = v180;
    do
    {
      if (v176 == a3)
      {
        v71 = v176;
        goto LABEL_29;
      }

      v53 = v185;
      v185(v7, v48, v15);
      v189 = v41;
      v53(v179, v41, v15);
      v49 = sub_25268EBD0();
      v54 = sub_25268EBD0();
      v7 = v180;
      if (((v49 ^ v54) & 1) == 0)
      {
        v55 = sub_25268E9D0();
        if (!v56)
        {
          v55 = sub_25268EBA0();
        }

        v57 = v55;
        v58 = v56;
        v59 = sub_25268E9D0();
        if (!v60)
        {
          v59 = sub_25268EBA0();
        }

        if (v57 == v59 && v58 == v60)
        {
        }

        else
        {
          LOBYTE(v49) = 1;
          if (sub_2526933B0())
          {
LABEL_8:
            v15 = v183;

            v5 = v169;
LABEL_9:
            v26 = v192;
            v7 = v180;
            goto LABEL_10;
          }

          v70 = sub_2526933B0();

          if (v70)
          {
            LOBYTE(v49) = 0;
            v5 = v169;
            v15 = v183;
            goto LABEL_9;
          }
        }

        v61 = v162;
        sub_25268EB50();
        v173 = sub_25268D9A0();
        v63 = v62;
        v64 = v182;
        v65 = *v181;
        (*v181)(v61, v182);
        v66 = v163;
        sub_25268EB50();
        v67 = sub_25268D9A0();
        v69 = v68;
        v65(v66, v64);
        if (v173 == v67 && v63 == v69)
        {
          LOBYTE(v49) = 0;
        }

        else
        {
          LOBYTE(v49) = sub_2526933B0();
        }

        goto LABEL_8;
      }

LABEL_10:
      v50 = v5;
      v51 = v184;
      v184(v179, v15);
      result = v51(v7, v15);
      v5 = v50;
      v52 = v186 ^ v49;
      ++a3;
      v47 = v187;
      v48 += v187;
      v41 = v189 + v187;
      v23 = v191;
    }

    while ((v52 & 1) == 0);
    v71 = a3 - 1;
LABEL_29:
    v16 = v174;
    v72 = v164;
    v73 = v168;
    v36 = v165;
    if (v186)
    {
      if (v71 >= v165)
      {
        if (v165 < v71)
        {
          v74 = v71;
          a3 = v47 * (v71 - 1);
          v75 = v71 * v47;
          v176 = v71;
          v76 = v165;
          v77 = v165 * v47;
          do
          {
            if (v76 != --v74)
            {
              v78 = *v175;
              if (!*v175)
              {
                goto LABEL_171;
              }

              v7 = &v78[v77];
              v79 = *v190;
              (*v190)(v167, &v78[v77], v15, v73);
              if (v77 < a3 || v7 >= &v78[v75])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v77 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = v79(&v78[a3], v167, v15);
              v72 = v164;
              v73 = v168;
              v23 = v191;
              v47 = v187;
            }

            ++v76;
            a3 -= v47;
            v75 -= v47;
            v77 += v47;
          }

          while (v76 < v74);
          v5 = v169;
          v16 = v174;
          v26 = v192;
          v36 = v165;
          v71 = v176;
        }

        goto LABEL_43;
      }

LABEL_167:
      __break(1u);
LABEL_168:
      result = sub_252624154(v7);
      goto LABEL_135;
    }

LABEL_43:
    v80 = v175[1];
    if (v71 >= v80)
    {
      goto LABEL_52;
    }

    if (__OFSUB__(v71, v36))
    {
      goto LABEL_164;
    }

    if (v71 - v36 >= v72)
    {
      goto LABEL_52;
    }

    if (__OFADD__(v36, v72))
    {
      goto LABEL_165;
    }

    if (v36 + v72 >= v80)
    {
      v81 = v175[1];
    }

    else
    {
      v81 = v36 + v72;
    }

    if (v81 < v36)
    {
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    if (v71 == v81)
    {
LABEL_52:
      v82 = v71;
      if (v71 < v36)
      {
        goto LABEL_163;
      }

      goto LABEL_53;
    }

    v169 = v5;
    v127 = *v175;
    v128 = *(v16 + 72);
    v189 = *(v16 + 16);
    v129 = &v127[v128 * (v71 - 1)];
    v186 = -v128;
    v187 = v127;
    a3 = v36 - v71;
    v166 = v128;
    v16 = &v127[v71 * v128];
    v170 = v81;
LABEL_107:
    v176 = v71;
    v171 = v16;
    v172 = a3;
    v173 = v129;
LABEL_108:
    v131 = v189;
    v189(v26, v16, v15);
    v131(v23, v129, v15);
    v132 = sub_25268EBD0();
    if ((v132 ^ sub_25268EBD0()))
    {
      goto LABEL_122;
    }

    v133 = sub_25268E9D0();
    if (!v134)
    {
      v133 = sub_25268EBA0();
    }

    v135 = v133;
    v136 = v134;
    v137 = sub_25268E9D0();
    if (!v138)
    {
      v137 = sub_25268EBA0();
    }

    if (v135 == v137 && v136 == v138)
    {

      goto LABEL_119;
    }

    if (sub_2526933B0())
    {

      v139 = *v193;
      v23 = v191;
      (*v193)(v191, v15);
      v26 = v192;
      result = v139(v192, v15);
      goto LABEL_123;
    }

    v140 = sub_2526933B0();

    if (v140)
    {
      goto LABEL_105;
    }

LABEL_119:
    v141 = v177;
    sub_25268EB50();
    v142 = sub_25268D9A0();
    v184 = v143;
    v185 = v142;
    v144 = *v181;
    v145 = v141;
    v146 = v182;
    (*v181)(v145, v182);
    v147 = v178;
    sub_25268EB50();
    v148 = sub_25268D9A0();
    v150 = v149;
    v144(v147, v146);
    if (v185 != v148 || v184 != v150)
    {
      break;
    }

    v15 = v183;
LABEL_105:
    v7 = v193;
    v130 = *v193;
    v23 = v191;
    (*v193)(v191, v15);
    v26 = v192;
    v130(v192, v15);
LABEL_106:
    v71 = v176 + 1;
    v129 = v173 + v166;
    a3 = v172 - 1;
    v16 = v171 + v166;
    v82 = v170;
    if (v176 + 1 != v170)
    {
      goto LABEL_107;
    }

    v5 = v169;
    if (v170 < v165)
    {
      goto LABEL_163;
    }

LABEL_53:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v37 = v168;
    }

    else
    {
      result = sub_252368690(0, *(v168 + 2) + 1, 1, v168);
      v37 = result;
    }

    a3 = *(v37 + 2);
    v83 = *(v37 + 3);
    v7 = a3 + 1;
    if (a3 >= v83 >> 1)
    {
      result = sub_252368690((v83 > 1), a3 + 1, 1, v37);
      v37 = result;
    }

    *(v37 + 2) = v7;
    v84 = &v37[16 * a3];
    *(v84 + 4) = v165;
    *(v84 + 5) = v82;
    v16 = *v161;
    if (!*v161)
    {
      goto LABEL_173;
    }

    v170 = v82;
    if (a3)
    {
      while (1)
      {
        v85 = v7 - 1;
        if (v7 >= 4)
        {
          break;
        }

        if (v7 == 3)
        {
          v86 = *(v37 + 4);
          v87 = *(v37 + 5);
          v96 = __OFSUB__(v87, v86);
          v88 = v87 - v86;
          v89 = v96;
LABEL_72:
          if (v89)
          {
            goto LABEL_152;
          }

          v102 = &v37[16 * v7];
          v104 = *v102;
          v103 = *(v102 + 1);
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_155;
          }

          v108 = &v37[16 * v85 + 32];
          v110 = *v108;
          v109 = *(v108 + 1);
          v96 = __OFSUB__(v109, v110);
          v111 = v109 - v110;
          if (v96)
          {
            goto LABEL_158;
          }

          if (__OFADD__(v106, v111))
          {
            goto LABEL_159;
          }

          if (v106 + v111 >= v88)
          {
            if (v88 < v111)
            {
              v85 = v7 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v112 = &v37[16 * v7];
        v114 = *v112;
        v113 = *(v112 + 1);
        v96 = __OFSUB__(v113, v114);
        v106 = v113 - v114;
        v107 = v96;
LABEL_86:
        if (v107)
        {
          goto LABEL_154;
        }

        v115 = &v37[16 * v85];
        v117 = *(v115 + 4);
        v116 = *(v115 + 5);
        v96 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v96)
        {
          goto LABEL_157;
        }

        if (v118 < v106)
        {
          goto LABEL_3;
        }

LABEL_93:
        a3 = v85 - 1;
        if (v85 - 1 >= v7)
        {
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
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        if (!*v175)
        {
          goto LABEL_170;
        }

        v123 = v37;
        v7 = *&v37[16 * a3 + 32];
        v124 = *&v37[16 * v85 + 40];
        sub_25236F494(&(*v175)[*(v174 + 72) * v7], &(*v175)[*(v174 + 72) * *&v37[16 * v85 + 32]], &(*v175)[*(v174 + 72) * v124], v16);
        if (v5)
        {
        }

        if (v124 < v7)
        {
          goto LABEL_148;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v125 = v123;
        }

        else
        {
          v125 = sub_252624154(v123);
        }

        v26 = v192;
        if (a3 >= *(v125 + 2))
        {
          goto LABEL_149;
        }

        v126 = &v125[16 * a3];
        *(v126 + 4) = v7;
        *(v126 + 5) = v124;
        v195 = v125;
        result = sub_2526240C8(v85);
        v37 = v195;
        v7 = *(v195 + 16);
        if (v7 <= 1)
        {
          goto LABEL_3;
        }
      }

      v90 = &v37[16 * v7 + 32];
      v91 = *(v90 - 64);
      v92 = *(v90 - 56);
      v96 = __OFSUB__(v92, v91);
      v93 = v92 - v91;
      if (v96)
      {
        goto LABEL_150;
      }

      v95 = *(v90 - 48);
      v94 = *(v90 - 40);
      v96 = __OFSUB__(v94, v95);
      v88 = v94 - v95;
      v89 = v96;
      if (v96)
      {
        goto LABEL_151;
      }

      v97 = &v37[16 * v7];
      v99 = *v97;
      v98 = *(v97 + 1);
      v96 = __OFSUB__(v98, v99);
      v100 = v98 - v99;
      if (v96)
      {
        goto LABEL_153;
      }

      v96 = __OFADD__(v88, v100);
      v101 = v88 + v100;
      if (v96)
      {
        goto LABEL_156;
      }

      if (v101 >= v93)
      {
        v119 = &v37[16 * v85 + 32];
        v121 = *v119;
        v120 = *(v119 + 1);
        v96 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v96)
        {
          goto LABEL_160;
        }

        if (v88 < v122)
        {
          v85 = v7 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v16 = v174;
    v35 = v175[1];
    v36 = v170;
    if (v170 >= v35)
    {
      goto LABEL_132;
    }
  }

  LOBYTE(v132) = sub_2526933B0();

  v15 = v183;
  v23 = v191;
  v26 = v192;
LABEL_122:
  v7 = *v193;
  (*v193)(v23, v15);
  result = (v7)(v26, v15);
  if ((v132 & 1) == 0)
  {
    goto LABEL_106;
  }

LABEL_123:
  if (v187)
  {
    v7 = *v190;
    v151 = v188;
    (*v190)(v188, v16, v15);
    swift_arrayInitWithTakeFrontToBack();
    (v7)(v129, v151, v15);
    v129 += v186;
    v16 += v186;
    if (__CFADD__(a3++, 1))
    {
      goto LABEL_106;
    }

    goto LABEL_108;
  }

  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
  return result;
}

uint64_t sub_25236F494(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v109 = a3;
  v113 = a2;
  v102 = sub_25268DA10();
  v6 = *(v102 - 8);
  v7 = MEMORY[0x28223BE20](v102);
  v99 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v98 = &v96 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v101 = &v96 - v12;
  MEMORY[0x28223BE20](v11);
  v100 = &v96 - v13;
  v14 = sub_25268EBE0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v111 = &v96 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  result = MEMORY[0x28223BE20](v21);
  v112 = &v96 - v24;
  v26 = *(v25 + 72);
  if (!v26)
  {
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    return result;
  }

  v27 = v113 - a1;
  if (v113 - a1 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_97;
  }

  v28 = v109 - v113;
  if (v109 - v113 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_98;
  }

  v29 = v27 / v26;
  v116 = a1;
  v115 = a4;
  if (v27 / v26 >= v28 / v26)
  {
    v33 = v28 / v26 * v26;
    v112 = v18;
    if (a4 < v113 || v113 + v33 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v113)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v33;
    if (v33 < 1)
    {
      v67 = a4 + v33;
      goto LABEL_94;
    }

    v64 = -v26;
    v97 = (v6 + 8);
    v105 = (v15 + 8);
    v106 = (v15 + 16);
    v65 = a4 + v33;
    v66 = v109;
    v67 = v63;
    v110 = a4;
    v104 = v14;
    v108 = v64;
    while (1)
    {
      v96 = v67;
      v68 = v113;
      v113 += v64;
      v107 = v68;
      while (1)
      {
        if (v68 <= a1)
        {
          v116 = v68;
          v114 = v96;
          goto LABEL_95;
        }

        v70 = v66;
        v103 = v67;
        v109 = v65;
        v71 = (v65 + v64);
        v72 = *v106;
        (*v106)(v111, v71, v14);
        v72(v112, v113, v14);
        v73 = sub_25268EBD0();
        v74 = v111;
        if (((v73 ^ sub_25268EBD0()) & 1) == 0)
        {
          v75 = sub_25268E9D0();
          if (!v76)
          {
            v75 = sub_25268EBA0();
          }

          v77 = v75;
          v78 = v76;
          v79 = sub_25268E9D0();
          if (!v80)
          {
            v79 = sub_25268EBA0();
          }

          if (v77 == v79 && v78 == v80)
          {

LABEL_69:
            v101 = v71;
            v81 = v98;
            sub_25268EB50();
            v100 = sub_25268D9A0();
            v83 = v82;
            v84 = *v97;
            v85 = v81;
            v86 = v102;
            (*v97)(v85, v102);
            v87 = v99;
            sub_25268EB50();
            v88 = sub_25268D9A0();
            v90 = v89;
            v84(v87, v86);
            if (v100 == v88 && v83 == v90)
            {
              LOBYTE(v73) = 0;
            }

            else
            {
              LOBYTE(v73) = sub_2526933B0();
            }

            v14 = v104;
            v71 = v101;
LABEL_76:
          }

          else
          {
            LOBYTE(v73) = 1;
            if (sub_2526933B0())
            {
              v14 = v104;
              goto LABEL_76;
            }

            v95 = sub_2526933B0();

            if ((v95 & 1) == 0)
            {
              goto LABEL_69;
            }

            LOBYTE(v73) = 0;
            v14 = v104;
          }

          v74 = v111;
        }

        v91 = a1;
        v92 = v70 + v108;
        v93 = v74;
        v94 = *v105;
        (*v105)(v112, v14);
        v94(v93, v14);
        if (v73)
        {
          break;
        }

        v67 = v71;
        v66 = v92;
        if (v70 < v109 || v92 >= v109)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v91;
        }

        else
        {
          a1 = v91;
          if (v70 != v109)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v65 = v71;
        v69 = v71 > v110;
        v68 = v107;
        v64 = v108;
        if (!v69)
        {
          v113 = v107;
          goto LABEL_94;
        }
      }

      v66 = v92;
      if (v70 < v107 || v92 >= v107)
      {
        swift_arrayInitWithTakeFrontToBack();
        v67 = v103;
        a1 = v91;
        v64 = v108;
      }

      else
      {
        v67 = v103;
        a1 = v91;
        v64 = v108;
        if (v70 != v107)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v65 = v109;
      if (v109 <= v110)
      {
LABEL_94:
        v116 = v113;
        v114 = v67;
        goto LABEL_95;
      }
    }
  }

  v30 = v26;
  v31 = v15;
  v108 = v30;
  v32 = v29 * v30;
  v111 = v23;
  if (a4 < a1 || a1 + v32 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v107 = a4 + v32;
  v114 = a4 + v32;
  if (v32 >= 1 && v113 < v109)
  {
    v35 = *(v31 + 16);
    v105 = (v31 + 8);
    v106 = v35;
    v99 = (v6 + 8);
    v103 = v31 + 16;
    v104 = v14;
    do
    {
      v36 = v106;
      (v106)(v112, v113, v14);
      v37 = v111;
      (v36)(v111, a4, v14);
      v38 = sub_25268EBD0();
      if (((v38 ^ sub_25268EBD0()) & 1) == 0)
      {
        v110 = a4;
        v39 = sub_25268E9D0();
        if (!v40)
        {
          v39 = sub_25268EBA0();
        }

        v41 = v39;
        v42 = v40;
        v43 = sub_25268E9D0();
        if (!v44)
        {
          v43 = sub_25268EBA0();
        }

        if (v41 == v43 && v42 == v44)
        {
        }

        else
        {
          if (sub_2526933B0())
          {

            v56 = *v105;
            (*v105)(v111, v14);
            v56(v112, v14);
            a4 = v110;
LABEL_36:
            v58 = v108;
            v59 = v113 + v108;
            if (a1 < v113 || a1 >= v59)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v113)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v113 = v59;
            goto LABEL_50;
          }

          v60 = sub_2526933B0();

          if (v60)
          {
            goto LABEL_43;
          }
        }

        v45 = v100;
        sub_25268EB50();
        v46 = sub_25268D9A0();
        v48 = v47;
        v49 = *v99;
        v50 = v45;
        v51 = v102;
        (*v99)(v50, v102);
        v52 = v101;
        sub_25268EB50();
        v53 = sub_25268D9A0();
        v55 = v54;
        v49(v52, v51);
        if (v46 == v53 && v48 == v55)
        {

          v14 = v104;
LABEL_43:
          v61 = *v105;
          (*v105)(v111, v14);
          v61(v112, v14);
          a4 = v110;
          goto LABEL_44;
        }

        LOBYTE(v38) = sub_2526933B0();

        a4 = v110;
        v37 = v111;
        v14 = v104;
      }

      v57 = *v105;
      (*v105)(v37, v14);
      v57(v112, v14);
      if (v38)
      {
        goto LABEL_36;
      }

LABEL_44:
      v58 = v108;
      v62 = a4 + v108;
      if (a1 < a4 || a1 >= v62)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v115 = v62;
      a4 += v58;
LABEL_50:
      a1 += v58;
      v116 = a1;
    }

    while (a4 < v107 && v113 < v109);
  }

LABEL_95:
  sub_252594BF0(&v116, &v115, &v114);
  return 1;
}

size_t sub_25236FF2C(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DAF18, &unk_252694F68, type metadata accessor for HAPControlSolver.Source);
  *v3 = result;
  return result;
}

char *sub_25236FF70(char *a1, int64_t a2, char a3)
{
  result = sub_252370840(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25236FF90(char *a1, int64_t a2, char a3)
{
  result = sub_25237094C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25236FFB0(char *a1, int64_t a2, char a3)
{
  result = sub_25237138C(a1, a2, a3, *v3, &qword_27F4DAF38);
  *v3 = result;
  return result;
}

size_t sub_25236FFE0(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DAEA8, &unk_252694F20, MEMORY[0x277D15600]);
  *v3 = result;
  return result;
}

size_t sub_252370024(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DAE70, &unk_252694F10, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
  *v3 = result;
  return result;
}

size_t sub_252370068(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DAE40, &unk_2526A13D0, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  *v3 = result;
  return result;
}

char *sub_2523700AC(char *a1, int64_t a2, char a3)
{
  result = sub_252370A6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2523700CC(char *a1, int64_t a2, char a3)
{
  result = sub_252370B8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2523700EC(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DAEB0, &unk_252694F28, MEMORY[0x277D155B8]);
  *v3 = result;
  return result;
}

size_t sub_252370130(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DADA8, &unk_252694EC0, type metadata accessor for AccessoryControl);
  *v3 = result;
  return result;
}

uint64_t sub_252370174(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

size_t sub_252370204(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DAF58, &unk_2526951D0, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

size_t sub_252370248(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DB000, &unk_252695008, MEMORY[0x277D15510]);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for AccessoryControlSolver.HAP()
{
  result = qword_27F4DAE00;
  if (!qword_27F4DAE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252370300()
{
  result = type metadata accessor for AccessoryControlSolver.Context();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

size_t sub_252370370(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DAF98, &unk_252694FB0, type metadata accessor for AccessoryControl.WriteSpecification);
  *v3 = result;
  return result;
}

void *sub_2523703B4(void *a1, int64_t a2, char a3)
{
  result = sub_252370D04(a1, a2, a3, *v3, &qword_27F4DAE80, &unk_2526956C0, &qword_27F4DAE88);
  *v3 = result;
  return result;
}

size_t sub_2523703F4(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DB1F8, &unk_252695110, MEMORY[0x277D15948]);
  *v3 = result;
  return result;
}

size_t sub_252370438(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DB188, &unk_25269F550, MEMORY[0x277D164C0]);
  *v3 = result;
  return result;
}

void *sub_25237047C(void *a1, int64_t a2, char a3)
{
  result = sub_252371244(a1, a2, a3, *v3, &qword_27F4DB1B0, &unk_2526950D0, &qword_27F4DB1B8);
  *v3 = result;
  return result;
}

size_t sub_2523704BC(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DB1D0, &unk_2526950E8, _s21ColorSwatchPickerViewV9CellValueOMa);
  *v3 = result;
  return result;
}

size_t sub_252370500(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DB178, &unk_2526950B0, MEMORY[0x277D15B48]);
  *v3 = result;
  return result;
}

char *sub_252370544(char *a1, int64_t a2, char a3)
{
  result = sub_252370E4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_252370564(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DB148, &unk_252695098, type metadata accessor for SelectionPickerView.ToggleableItem);
  *v3 = result;
  return result;
}

size_t sub_2523705A8(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DB1E0, &unk_2526950F8, type metadata accessor for StatusDetailsView.ListItem);
  *v3 = result;
  return result;
}

char *sub_2523705EC(char *a1, int64_t a2, char a3)
{
  result = sub_2523710A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25237060C(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DAEE8, &unk_2526AACD0, type metadata accessor for Device.Control);
  *v3 = result;
  return result;
}

size_t sub_252370650(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DAEE0, &unk_2526A8FF0, type metadata accessor for Device.ControlGroup);
  *v3 = result;
  return result;
}

size_t sub_252370694(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DAE30, &unk_2526A8D50, type metadata accessor for Device.ControlModule);
  *v3 = result;
  return result;
}

size_t sub_2523706D8(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DAE20, &unk_2526ABB90, type metadata accessor for AccessoryControlDecorationButton.Config);
  *v3 = result;
  return result;
}

void *sub_25237071C(void *a1, int64_t a2, char a3)
{
  result = sub_252371244(a1, a2, a3, *v3, &qword_27F4DAEF0, &unk_252694F50, &qword_27F4DAEF8);
  *v3 = result;
  return result;
}

char *sub_25237075C(char *a1, int64_t a2, char a3)
{
  result = sub_25237138C(a1, a2, a3, *v3, &qword_27F4DAED0);
  *v3 = result;
  return result;
}

char *sub_25237078C(char *a1, int64_t a2, char a3)
{
  result = sub_2523715A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2523707AC(size_t a1, int64_t a2, char a3)
{
  result = sub_2523716A8(a1, a2, a3, *v3, &qword_27F4DB158, &unk_2526AA900, type metadata accessor for DisplayControl);
  *v3 = result;
  return result;
}

char *sub_252370840(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25237094C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_252370A6C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_252370B8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_252370D04(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_252370E4C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_252370F5C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2523710A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB1F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_252371244(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_25237138C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

uint64_t sub_252371478(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2523714D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25237153C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_2523715A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_2523716A8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_252371884(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2523718CC()
{
  result = qword_27F4DB080;
  if (!qword_27F4DB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB080);
  }

  return result;
}

unint64_t sub_252371920()
{
  result = qword_27F4DB088;
  if (!qword_27F4DB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB088);
  }

  return result;
}

unint64_t sub_252371974()
{
  result = qword_27F4DB090;
  if (!qword_27F4DB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB090);
  }

  return result;
}

unint64_t sub_2523719C8()
{
  result = qword_27F4DB098;
  if (!qword_27F4DB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB098);
  }

  return result;
}

unint64_t sub_252371A1C()
{
  result = qword_27F4DB0A0;
  if (!qword_27F4DB0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB0A0);
  }

  return result;
}

unint64_t sub_252371A70()
{
  result = qword_27F4DB0A8;
  if (!qword_27F4DB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB0A8);
  }

  return result;
}

unint64_t sub_252371AC4()
{
  result = qword_27F4DB0B0;
  if (!qword_27F4DB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB0B0);
  }

  return result;
}

unint64_t sub_252371B18()
{
  result = qword_27F4DB0B8;
  if (!qword_27F4DB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB0B8);
  }

  return result;
}

unint64_t sub_252371B6C()
{
  result = qword_27F4DB0C0;
  if (!qword_27F4DB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB0C0);
  }

  return result;
}

unint64_t sub_252371BC0()
{
  result = qword_27F4DB0C8;
  if (!qword_27F4DB0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB0C8);
  }

  return result;
}

unint64_t sub_252371C14()
{
  result = qword_27F4DB0D0;
  if (!qword_27F4DB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB0D0);
  }

  return result;
}

unint64_t sub_252371C68()
{
  result = qword_27F4DB0D8;
  if (!qword_27F4DB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB0D8);
  }

  return result;
}

unint64_t sub_252371CBC()
{
  result = qword_27F4DB0E0;
  if (!qword_27F4DB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB0E0);
  }

  return result;
}

unint64_t sub_252371D10()
{
  result = qword_27F4DB0E8;
  if (!qword_27F4DB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB0E8);
  }

  return result;
}

unint64_t sub_252371D64()
{
  result = qword_27F4DB0F0;
  if (!qword_27F4DB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB0F0);
  }

  return result;
}

void sub_252371DB8(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v34 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB160);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v32 = type metadata accessor for DisplayControlGroup(0);
  v13 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v28 = &v26 - v16;
  v17 = type metadata accessor for Device.ControlGroup(0);
  v33 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a5 >> 1;
  if (a5 >> 1 != a4)
  {
    v26 = v13;
    if (a4 <= v20)
    {
      v21 = a5 >> 1;
    }

    else
    {
      v21 = a4;
    }

    v29 = (v13 + 48);
    v30 = v21;
    v22 = MEMORY[0x277D84F90];
    v27 = a3;
    while (v30 != a4)
    {
      sub_2523721C0(a3 + *(v33 + 72) * a4, v19, type metadata accessor for Device.ControlGroup);
      a1(v19);
      if (v5)
      {
        sub_252372228(v19, type metadata accessor for Device.ControlGroup);

        return;
      }

      sub_252372228(v19, type metadata accessor for Device.ControlGroup);
      if ((*v29)(v12, 1, v32) == 1)
      {
        sub_252372288(v12, &qword_27F4DB160);
      }

      else
      {
        v23 = v28;
        sub_2523722E8(v12, v28, type metadata accessor for DisplayControlGroup);
        sub_2523722E8(v23, v31, type metadata accessor for DisplayControlGroup);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_252369CFC(0, v22[2] + 1, 1, v22, &qword_27F4DB168, &unk_2526950A8, type metadata accessor for DisplayControlGroup);
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          v22 = sub_252369CFC(v24 > 1, v25 + 1, 1, v22, &qword_27F4DB168, &unk_2526950A8, type metadata accessor for DisplayControlGroup);
        }

        v22[2] = v25 + 1;
        sub_2523722E8(v31, v22 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25, type metadata accessor for DisplayControlGroup);
        a3 = v27;
      }

      if (v20 == ++a4)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2523721C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252372228(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252372288(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2523722E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523723DC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 4) == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v14 = __swift_project_value_buffer(v13, qword_27F4DB8A0);
    return sub_2523770B0(v14, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v39 = a2;
    v16 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
    v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228) - 8);
    v18 = *(*v17 + 80);
    v40 = v8;
    v19 = (v18 + 32) & ~v18;
    v20 = swift_allocObject();
    v38 = xmmword_252694E90;
    *(v20 + 16) = xmmword_252694E90;
    v21 = v20 + v19;
    v22 = v21 + v17[14];
    v23 = *MEMORY[0x277D16330];
    v24 = sub_25268F4D0();
    (*(*(v24 - 8) + 104))(v21, v23, v24);
    *(v22 + 24) = MEMORY[0x277D839B0];
    *v22 = v16 & 1;
    v25 = sub_25256E63C(v20);
    swift_setDeallocating();
    sub_252372288(v21, &qword_27F4DB228);
    swift_deallocClassInstance();
    v26 = *(v9 + 24);
    v27 = sub_25268F140();
    (*(*(v27 - 8) + 56))(v12 + v26, 1, 1, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v28 = sub_25268DA10();
    v29 = *(v28 - 8);
    v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v38;
    (*(v29 + 16))(v31 + v30, v39, v28);
    v32 = sub_25240C1FC(v31);
    swift_setDeallocating();
    (*(v29 + 8))(v31 + v30, v28);
    swift_deallocClassInstance();
    v33 = sub_2523F75C4(v25);

    *v12 = v33;
    v12[1] = 0;
    *(v12 + *(v9 + 28)) = v32;
    v34 = v12;
    v35 = v40;
    sub_252376FE0(v34, v40, type metadata accessor for AccessoryControl.HAPWriteSpecification);
    v36 = *(v10 + 56);
    v36(v35, 0, 1, v9);
    v36(a3, 1, 1, v9);
    v37 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v37) = 0;
    sub_252377048(v35, a3, &qword_27F4DB210);

    *(a3 + v37) = 0;
  }

  return result;
}

uint64_t sub_252372898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a2;
  v110 = a1;
  v108 = a3;
  v3 = type metadata accessor for HAPControlSolver.Source();
  v4 = v3 - 8;
  v100 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v102 = v5;
  v103 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_25268DA10();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v107 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v7 - 8);
  v98 = &v89 - v8;
  v99 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v99);
  v104 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25268F4D0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v89 - v15;
  v17 = sub_25268F9E0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v109 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v11 + 104);
  v20(v13, *MEMORY[0x277D16260], v10);
  v21 = *(v4 + 84);
  sub_25268FD80();
  v22 = v17;
  v23 = *(v11 + 8);
  v23(v13, v10);
  if ((*(v18 + 48))(v16, 1, v22) == 1)
  {
    sub_252372288(v16, &qword_27F4DB208);
LABEL_7:
    v27 = v108;
    v28 = type metadata accessor for AccessoryControl(0);
    v29 = *(*(v28 - 8) + 56);
    v30 = v27;
    return v29(v30, 1, 1, v28);
  }

  (*(v18 + 32))(v109, v16, v22);
  v20(v13, *MEMORY[0x277D16330], v10);
  v24 = sub_25268FE70();
  v23(v13, v10);
  if (v24 == 2)
  {
    (*(v18 + 8))(v109, v22);
    goto LABEL_7;
  }

  v96 = v18;
  v97 = v22;
  v25 = sub_25268FDB0();
  if (v26)
  {
    (*(v96 + 8))(v109, v97);
    goto LABEL_7;
  }

  v91 = v21;
  v92 = v25;
  v93 = v24;
  v32 = sub_252373510();
  v33 = sub_252692C40();
  v35 = v34;
  v36 = sub_252692C40();
  v38 = v37;
  v90 = sub_252692C40();
  v95 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEA0);
  inited = swift_initStackObject();
  v41 = 0;
  *(inited + 32) = 1;
  v42 = inited + 32;
  *(inited + 16) = xmmword_252694EA0;
  *(inited + 40) = v33;
  *(inited + 48) = v35;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = v36;
  *(inited + 80) = v38;
  v94 = inited;
  *(inited + 88) = 0;
  v43 = v32 + 56;
  v44 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      v45 = v41++;
      if (*(v32 + 16))
      {
        v46 = v42 + 32 * v45;
        v111 = *v46;
        v47 = *(v46 + 16);
        v48 = *(v46 + 24);
        sub_252693460();
        v49 = v111;
        MEMORY[0x2530A4FE0](v111);
        v50 = sub_2526934C0();
        v51 = -1 << *(v32 + 32);
        v52 = v50 & ~v51;
        if ((*(v43 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
        {
          break;
        }
      }

LABEL_10:
      if (v41 == 2)
      {
        goto LABEL_22;
      }
    }

    v53 = ~v51;
    while (*(*(v32 + 48) + 8 * v52) != v49)
    {
      v52 = (v52 + 1) & v53;
      if (((*(v43 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v44;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25236FF90(0, *(v44 + 2) + 1, 1);
      v44 = v112;
    }

    v56 = *(v44 + 2);
    v55 = *(v44 + 3);
    if (v56 >= v55 >> 1)
    {
      sub_25236FF90((v55 > 1), v56 + 1, 1);
      v44 = v112;
    }

    *(v44 + 2) = v56 + 1;
    v57 = &v44[32 * v56];
    *(v57 + 2) = v111;
    *(v57 + 6) = v47;
    *(v57 + 7) = v48;
  }

  while (v41 != 2);
LABEL_22:

  v58 = *(v44 + 2);
  if (v58 <= 1)
  {
    (*(v96 + 8))(v109, v97);

    v28 = type metadata accessor for AccessoryControl(0);
    v29 = *(*(v28 - 8) + 56);
    v30 = v108;
    return v29(v30, 1, 1, v28);
  }

  v59 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v108;
  if ((v59 & 1) == 0)
  {
    v44 = sub_252368918(0, v58 + 1, 1, v44);
  }

  v61 = v90;
  v63 = *(v44 + 2);
  v62 = *(v44 + 3);
  if (v63 >= v62 >> 1)
  {
    v44 = sub_252368918((v62 > 1), v63 + 1, 1, v44);
  }

  *(v44 + 2) = v63 + 1;
  v64 = &v44[32 * v63];
  *(v64 + 4) = 100;
  *(v64 + 5) = v61;
  *(v64 + 6) = v95;
  *(v64 + 7) = 0;
  v65 = sub_25268FDC0();
  if ((v66 & 1) != 0 || v65 != 2)
  {
    v67 = sub_2526922D0();
  }

  else
  {
    v67 = sub_2526922C0();
  }

  *&v111 = v67;
  v68 = sub_252692330();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v70 = *(*(v69 - 8) + 56);
  v71 = v98;
  v70(v98, 1, 1, v69);
  v72 = v99;
  type metadata accessor for AccessoryControl.StatusProvider();
  v73 = v104;
  swift_storeEnumTagMultiPayload();
  v74 = v72[6];
  v70((v73 + v74), 1, 1, v69);
  v75 = v73 + v72[11];
  *v73 = v44;
  *(v73 + 8) = 1;
  *(v73 + v72[8]) = v111;
  *(v73 + v72[9]) = v68;
  sub_252377048(v71, v73 + v74, &qword_27F4DADB8);
  v76 = 100;
  *v75 = 100;
  *(v75 + 8) = 0;
  *(v73 + v72[7]) = 0;
  if (v93)
  {
    v76 = v92;
  }

  *&v111 = v76;
  v77 = v109;
  sub_25268F9B0();
  v78 = type metadata accessor for AccessoryControl(0);
  v79 = v60 + v78[5];
  v80 = (v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48));
  sub_2523770B0(v73, v79, type metadata accessor for AccessoryControl.PickerViewConfig);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  sub_2523770B0(v101, v80 + *(v81 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  v82 = v103;
  sub_2523770B0(v110, v103, type metadata accessor for HAPControlSolver.Source);
  v83 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v84 = swift_allocObject();
  sub_252376FE0(v82, v84 + v83, type metadata accessor for HAPControlSolver.Source);
  v85 = v80 + *(v81 + 40);
  *v85 = v111;
  v85[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB020);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_252694E90;
  *(v86 + 32) = sub_2523777AC;
  *(v86 + 40) = v84;
  (*(v96 + 8))(v77, v97);
  *v80 = v86;
  type metadata accessor for AccessoryControl.State(0);
  swift_storeEnumTagMultiPayload();
  (*(v105 + 32))(v60, v107, v106);
  type metadata accessor for AccessoryControl.ElementIdentifier();
  swift_storeEnumTagMultiPayload();
  v87 = (v60 + v78[7]);
  v88 = v78[9];
  *(v60 + v88) = 16;
  *(v60 + v78[6]) = 1;
  *v87 = 0;
  v87[1] = 0;
  *(v60 + v78[8]) = 1028;
  *(v60 + v88) = 14;
  *(v60 + v78[10]) = 1;
  sub_25237782C(v73, type metadata accessor for AccessoryControl.PickerViewConfig);
  return (*(*(v78 - 1) + 56))(v60, 0, 1, v78);
}

uint64_t sub_252373510()
{
  v0 = sub_25268FFD0();
  v34 = *(v0 - 8);
  v35 = v0;
  MEMORY[0x28223BE20](v0);
  v33 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_25268F4D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_252690050();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  (*(v3 + 104))(v5, *MEMORY[0x277D16260], v2);
  type metadata accessor for HAPControlSolver.Source();
  sub_25268FD80();
  (*(v3 + 8))(v5, v2);
  v19 = sub_25268F9E0();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v8, 1, v19) == 1)
  {
    sub_252372288(v8, &qword_27F4DB208);
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_4:
    sub_252372288(v11, &qword_27F4DB230);
    return sub_25240C078(&unk_286483918);
  }

  sub_25268F9D0();
  (*(v20 + 8))(v8, v19);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  (*(v13 + 32))(v18, v11, v12);
  (*(v13 + 16))(v16, v18, v12);
  if ((*(v13 + 88))(v16, v12) != *MEMORY[0x277D16CC8])
  {
    v30 = *(v13 + 8);
    v30(v18, v12);
    v30(v16, v12);
    return sub_25240C078(&unk_286483918);
  }

  (*(v13 + 96))(v16, v12);
  (*(v34 + 32))(v33, v16, v35);
  v22 = sub_25268FF90();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = (v22 + 32);
    v25 = MEMORY[0x277D84F90];
    do
    {
      v27 = *v24++;
      v26 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_252368C8C(0, *(v25 + 2) + 1, 1, v25);
      }

      v29 = *(v25 + 2);
      v28 = *(v25 + 3);
      if (v29 >= v28 >> 1)
      {
        v25 = sub_252368C8C((v28 > 1), v29 + 1, 1, v25);
      }

      *(v25 + 2) = v29 + 1;
      *&v25[8 * v29 + 32] = v26;
      --v23;
    }

    while (v23);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v31 = sub_252624684(v25);

  (*(v34 + 8))(v33, v35);
  (*(v13 + 8))(v18, v12);
  return v31;
}

uint64_t sub_252373AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v24 - v7);
  if (*(a1 + 8) == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v10 = __swift_project_value_buffer(v9, qword_27F4DB8A0);
    return sub_2523770B0(v10, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v12 = sub_252374480(*a1);
    v13 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v14 = *(v13 + 24);
    v15 = sub_25268F140();
    (*(*(v15 - 8) + 56))(v8 + v14, 1, 1, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v16 = sub_25268DA10();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_252694E90;
    (*(v17 + 16))(v19 + v18, a2, v16);
    v20 = sub_25240C1FC(v19);
    swift_setDeallocating();
    (*(v17 + 8))(v19 + v18, v16);
    swift_deallocClassInstance();
    v21 = sub_2523F75C4(v12);

    *v8 = v21;
    v8[1] = 0;
    *(v8 + *(v13 + 28)) = v20;
    v22 = *(*(v13 - 8) + 56);
    v22(v8, 0, 1, v13);
    v22(a3, 1, 1, v13);
    v23 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v23) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210);

    *(a3 + v23) = 0;
  }

  return result;
}

uint64_t sub_252373DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - v6;
  v8 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = (&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v48 - v12;
  v14 = sub_25268ED70();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25237153C(a1, v13, &qword_27F4DB218);
  v18 = type metadata accessor for AccessoryControl.IncrementalState(0);
  if ((*(*(v18 - 8) + 48))(v13, 1, v18) == 1)
  {
    sub_252372288(v13, &qword_27F4DB218);
  }

  else
  {
    (*(v15 + 16))(v17, v13, v14);
    sub_25237782C(v13, type metadata accessor for AccessoryControl.IncrementalState);
    if ((*(v15 + 88))(v17, v14) == *MEMORY[0x277D15BB8])
    {
      (*(v15 + 96))(v17, v14);
      v19 = *v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228);
      v21 = *(*(v20 - 8) + 72);
      v22 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_252694EA0;
      v24 = v23 + v22;
      v25 = v23 + v22 + *(v20 + 48);
      v26 = *MEMORY[0x277D16128];
      v27 = sub_25268F4D0();
      v28 = *(v27 - 8);
      v50 = a3;
      v29 = *(v28 + 104);
      v49 = v7;
      (v29)(v24, v26, v27);
      *(v25 + 24) = MEMORY[0x277D839F8];
      *v25 = v19;
      v30 = v24 + v21 + *(v20 + 48);
      v29();
      *(v30 + 24) = MEMORY[0x277D839B0];
      *v30 = v19 > 0.0;
      v31 = sub_25256E63C(v23);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v32 = v53;
      v33 = *(v53 + 24);
      v34 = sub_25268F140();
      (*(*(v34 - 8) + 56))(v10 + v33, 1, 1, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
      v35 = sub_25268DA10();
      v36 = *(v35 - 8);
      v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_252694E90;
      (*(v36 + 16))(v38 + v37, v51, v35);
      v39 = sub_25240C1FC(v38);
      swift_setDeallocating();
      (*(v36 + 8))(v38 + v37, v35);
      swift_deallocClassInstance();
      v40 = sub_2523F75C4(v31);

      *v10 = v40;
      v10[1] = 0;
      *(v10 + *(v32 + 28)) = v39;
      v41 = v49;
      sub_252376FE0(v10, v49, type metadata accessor for AccessoryControl.HAPWriteSpecification);
      v42 = *(v52 + 56);
      v42(v41, 0, 1, v32);
      v43 = v50;
      v42(v50, 1, 1, v32);
      v44 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
      *(v43 + v44) = 0;
      sub_252377048(v41, v43, &qword_27F4DB210);

      *(v43 + v44) = 0;
      return result;
    }

    (*(v15 + 8))(v17, v14);
  }

  if (qword_27F4DA998 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  v47 = __swift_project_value_buffer(v46, qword_27F4DB8A0);
  return sub_2523770B0(v47, a3, type metadata accessor for AccessoryControl.WriteSpecification);
}

unint64_t sub_252374480(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  if (a1 == 100)
  {
    *(v5 + 16) = xmmword_252694E90;
    v6 = v5 + v4;
    v7 = v6 + *(v2 + 48);
    v8 = *MEMORY[0x277D16330];
    v9 = sub_25268F4D0();
    (*(*(v9 - 8) + 104))(v6, v8, v9);
    *(v7 + 24) = MEMORY[0x277D839B0];
    *v7 = 0;
    v10 = sub_25256E63C(v5);
    swift_setDeallocating();
    sub_252372288(v6, &qword_27F4DB228);
  }

  else
  {
    *(v5 + 16) = xmmword_252694EA0;
    v11 = v5 + v4;
    v12 = (v11 + *(v2 + 48));
    v13 = *MEMORY[0x277D16260];
    v14 = sub_25268F4D0();
    v15 = *(*(v14 - 8) + 104);
    (v15)(v11, v13, v14);
    v12[3] = MEMORY[0x277D83B88];
    *v12 = a1;
    v16 = v11 + v3 + *(v2 + 48);
    v15();
    *(v16 + 24) = MEMORY[0x277D839B0];
    *v16 = 1;
    v10 = sub_25256E63C(v5);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
  return v10;
}

uint64_t sub_2523746FC(uint64_t a1, uint64_t a2)
{
  v326 = a1;
  v296 = type metadata accessor for AccessoryControlGroup.Layout(0);
  v3 = MEMORY[0x28223BE20](v296);
  v258 = &v238 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v260 = &v238 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v272 = &v238 - v8;
  MEMORY[0x28223BE20](v7);
  v273 = &v238 - v9;
  v298 = sub_25268DA10();
  v297 = *(v298 - 8);
  MEMORY[0x28223BE20](v298);
  v289 = &v238 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = type metadata accessor for AccessoryControl(0);
  v293 = *(v294 - 8);
  v11 = MEMORY[0x28223BE20](v294);
  v250 = &v238 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v259 = &v238 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v251 = &v238 - v16;
  MEMORY[0x28223BE20](v15);
  v274 = &v238 - v17;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
  MEMORY[0x28223BE20](v270);
  v295 = (&v238 - v18);
  v269 = sub_25268F970();
  v268 = *(v269 - 8);
  MEMORY[0x28223BE20](v269);
  v265 = &v238 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = sub_25268ED70();
  v263 = *(v266 - 8);
  MEMORY[0x28223BE20](v266);
  v262 = (&v238 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v267 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v264 = *(v267 - 8);
  MEMORY[0x28223BE20](v267);
  v291 = &v238 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_25268E530();
  v285 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v284 = &v238 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = sub_25268EEA0();
  v287 = *(v288 - 8);
  v23 = MEMORY[0x28223BE20](v288);
  v286 = &v238 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v306 = &v238 - v25;
  v257 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v257);
  v310 = &v238 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v254 = &v238 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v271 = &v238 - v31;
  MEMORY[0x28223BE20](v30);
  v322 = &v238 - v32;
  v33 = type metadata accessor for HAPControlSolver.Source();
  v279 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v280 = v34;
  v307 = &v238 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  v261 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v321 = (&v238 - v35);
  v303 = sub_25268E2E0();
  v319 = *(v303 - 8);
  v36 = MEMORY[0x28223BE20](v303);
  v302 = &v238 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v301 = &v238 - v38;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v39 = MEMORY[0x28223BE20](v300);
  v283 = &v238 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v282 = (&v238 - v42);
  MEMORY[0x28223BE20](v41);
  v314 = &v238 - v43;
  v276 = type metadata accessor for ControlTextModifier.Config(0);
  MEMORY[0x28223BE20](v276);
  *&v324 = &v238 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = type metadata accessor for AccessoryControl.StatusProvider();
  v45 = MEMORY[0x28223BE20](v299);
  v252 = &v238 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v281 = (&v238 - v48);
  v49 = MEMORY[0x28223BE20](v47);
  v275 = &v238 - v50;
  MEMORY[0x28223BE20](v49);
  v323 = &v238 - v51;
  v277 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  v52 = MEMORY[0x28223BE20](v277);
  v315 = &v238 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v320 = &v238 - v54;
  v55 = sub_25268F4D0();
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v58 = &v238 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  v60 = MEMORY[0x28223BE20](v59 - 8);
  v278 = &v238 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v63 = &v238 - v62;
  v64 = sub_25268F9E0();
  v65 = *(v64 - 8);
  v66 = MEMORY[0x28223BE20](v64);
  v309 = &v238 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v69 = &v238 - v68;
  v70 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v70 - 8);
  v72 = &v238 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = a2;
  sub_2523770B0(a2, v72, type metadata accessor for AccessoryControl.ValueDestination);
  v73 = *(v56 + 104);
  v253 = *MEMORY[0x277D16330];
  v312 = v73;
  v313 = v56 + 104;
  v73(v58);
  v325 = v33;
  v317 = *(v33 + 76);
  v74 = v326;
  sub_25268FD80();
  v75 = *(v56 + 8);
  v304 = v58;
  v305 = v55;
  v318 = v56 + 8;
  v316 = v75;
  v75(v58, v55);
  v76 = *(v65 + 48);
  if (v76(v63, 1, v64) == 1)
  {
    sub_252372288(v63, &qword_27F4DB208);
    sub_25237782C(v72, type metadata accessor for AccessoryControl.ValueDestination);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v247 = v76;
    v248 = v65 + 48;
    v311 = v72;
    v78 = *(v65 + 32);
    v290 = v69;
    v240 = v65 + 32;
    v239 = v78;
    v78(v69, v63, v64);
    v79 = v275;
    swift_storeEnumTagMultiPayload();
    v80 = v325;
    v81 = (v74 + v325[11]);
    v83 = *v81;
    v82 = v81[1];
    v292 = v64;
    v249 = v65;
    v242 = v82;
    v238 = v83;
    if (v82)
    {

      sub_25237782C(v79, type metadata accessor for AccessoryControl.StatusProvider);
      v84 = v323;
      *v323 = v83;
      *(v84 + 8) = v82;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_252376FE0(v79, v323, type metadata accessor for AccessoryControl.StatusProvider);
    }

    swift_storeEnumTagMultiPayload();
    v85 = v80[12];
    v86 = v301;
    sub_25268E250();
    v276 = sub_25268E2D0();
    v87 = v74;
    v275 = v88;
    v89 = v319 + 8;
    v90 = *(v319 + 8);
    v91 = v303;
    v90(v86, v303);
    v92 = v302;
    sub_25268E250();
    v93 = type metadata accessor for IconDescriptor();
    v94 = v314;
    sub_25268E2C0();
    v90(v92, v91);
    v95 = v275;
    *v94 = v276;
    v94[1] = v95;
    *(v94 + *(v93 + 24)) = 0;
    sub_25268E260();
    v276 = sub_25268E2D0();
    v275 = v96;
    v90(v86, v91);
    v244 = v85;
    sub_25268E260();
    v97 = (v94 + *(v300 + 28));
    sub_25268E2C0();
    v319 = v89;
    v245 = v90;
    v90(v92, v91);
    v98 = v275;
    *v97 = v276;
    v97[1] = v98;
    v243 = v93;
    *(v97 + *(v93 + 24)) = 0;
    v99 = v325;
    v241 = v325[6];
    v100 = sub_25268E510();
    v101 = v315;
    sub_25237153C(v94, v315, &qword_27F4DAD88);
    v102 = v277;
    sub_2523770B0(v324, v101 + *(v277 + 24), type metadata accessor for ControlTextModifier.Config);
    v103 = (v87 + v99[7]);
    v104 = *v103;
    v105 = v103[1];
    sub_2523770B0(v323, v101 + v102[11], type metadata accessor for AccessoryControl.StatusProvider);
    v106 = v101 + v102[7];
    *v106 = 0u;
    *(v106 + 16) = 0u;
    *(v106 + 32) = -1;
    v107 = v101 + v102[8];
    *v107 = 0u;
    *(v107 + 16) = 0u;
    *(v107 + 32) = -1;
    v246 = v102[12];
    *(v101 + v102[5]) = v100;
    v108 = (v101 + v102[10]);
    v275 = v104;
    *v108 = v104;
    v108[1] = v105;
    v109 = *v106;
    v110 = *(v106 + 8);
    v111 = *(v106 + 16);
    v112 = *(v106 + 24);
    LOBYTE(v97) = *(v106 + 32);
    v276 = v105;

    sub_252376DA8(v109, v110, v111, v112, v97);
    *v106 = 0u;
    *(v106 + 16) = 0u;
    *(v106 + 32) = -1;
    v113 = v326;
    sub_252376DA8(*v107, *(v107 + 8), *(v107 + 16), *(v107 + 24), *(v107 + 32));
    *v107 = 0u;
    *(v107 + 16) = 0u;
    *(v107 + 32) = -1;
    *(v101 + v246) = 0;
    *(v101 + v102[9]) = 0;
    if (*(v113 + v325[10]) == 1)
    {
      v114 = v304;
      sub_25268F9A0();
      v115 = sub_25268FE70();
      v116 = v305;
      v316(v114, v305);
      sub_252372288(v314, &qword_27F4DAD88);
      sub_25237782C(v324, type metadata accessor for ControlTextModifier.Config);
      sub_25237782C(v323, type metadata accessor for AccessoryControl.StatusProvider);
      v323 = v115 & 1;
      *&v324 = 0;
      v117 = 1;
      v118 = v320;
      v119 = v321;
      v120 = v311;
    }

    else
    {
      sub_252372288(v314, &qword_27F4DAD88);
      sub_25237782C(v324, type metadata accessor for ControlTextModifier.Config);
      sub_25237782C(v323, type metadata accessor for AccessoryControl.StatusProvider);
      v117 = 0;
      v323 = 0;
      *&v324 = 1;
      v118 = v320;
      v119 = v321;
      v120 = v311;
      v116 = v305;
      v114 = v304;
    }

    sub_252376FE0(v315, v118, type metadata accessor for AccessoryControl.BinaryViewConfig);
    v121 = v308;
    sub_2523770B0(v120, v119 + *(v308 + 36), type metadata accessor for AccessoryControl.ValueDestination);
    v122 = v326;
    v123 = v307;
    sub_2523770B0(v326, v307, type metadata accessor for HAPControlSolver.Source);
    v124 = (*(v279 + 80) + 16) & ~*(v279 + 80);
    v314 = *(v279 + 80);
    v280 += v124;
    v125 = swift_allocObject();
    v315 = v124;
    sub_252376FE0(v123, v125 + v124, type metadata accessor for HAPControlSolver.Source);
    v126 = (v119 + *(v121 + 40));
    v127 = v324;
    *v126 = v323;
    v126[1] = 0;
    v126[2] = v117;
    v126[3] = 0;
    v126[4] = v127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB018);
    v128 = swift_allocObject();
    v324 = xmmword_252694E90;
    *(v128 + 16) = xmmword_252694E90;
    *(v128 + 32) = sub_252376E28;
    *(v128 + 40) = v125;
    *v119 = v128;
    v129 = v322;
    sub_252372898(v122, v120, v322);
    v130 = *MEMORY[0x277D16128];
    v312(v114, *MEMORY[0x277D16128], v116);
    v131 = v278;
    sub_25268FD80();
    v316(v114, v116);
    v132 = v292;
    if (v247(v131, 1, v292) == 1)
    {
      v133 = v129;
      sub_252372288(v131, &qword_27F4DB208);
      v134 = v289;
      sub_25268F9B0();
      v135 = v294;
      v136 = v259;
      v137 = &v259[*(v294 + 20)];
      v138 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);
      sub_2523770B0(v320, v137, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_25237153C(v119, v137 + v138, &qword_27F4DAD80);
      type metadata accessor for AccessoryControl.State(0);
      swift_storeEnumTagMultiPayload();
      v139 = v326;
      v140 = (v326 + v325[14]);
      v142 = *v140;
      v141 = v140[1];
      v143 = v297;
      v144 = v298;
      (*(v297 + 32))(v136, v134, v298);
      type metadata accessor for AccessoryControl.ElementIdentifier();
      swift_storeEnumTagMultiPayload();
      v145 = (v136 + v135[7]);
      v146 = v135[9];
      *(v136 + v146) = 16;
      *(v136 + v135[6]) = 0;
      *v145 = v142;
      v145[1] = v141;
      *(v136 + v135[8]) = 1027;
      *(v136 + v146) = 16;
      *(v136 + v135[10]) = 1;
      v147 = v254;
      sub_25237153C(v133, v254, &qword_27F4DB120);
      if ((*(v293 + 48))(v147, 1, v135) == 1)
      {

        sub_252372288(v147, &qword_27F4DB120);
        v148 = v258;
        sub_2523770B0(v136, v258, type metadata accessor for AccessoryControl);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v153 = v250;
        sub_252376FE0(v147, v250, type metadata accessor for AccessoryControl);
        v154 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0) + 48);
        v148 = v258;
        sub_2523770B0(v136, v258, type metadata accessor for AccessoryControl);
        sub_252376FE0(v153, v148 + v154, type metadata accessor for AccessoryControl);
        swift_storeEnumTagMultiPayload();
      }

      v155 = v148;
      v156 = v260;
      sub_252376FE0(v155, v260, type metadata accessor for AccessoryControlGroup.Layout);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
      v157 = (type metadata accessor for AccessoryControlGroup(0) - 8);
      v158 = (*(*v157 + 80) + 32) & ~*(*v157 + 80);
      v159 = swift_allocObject();
      *(v159 + 16) = v324;
      v160 = v159 + v158;
      (*(v143 + 16))(v160, v139, v144);
      swift_storeEnumTagMultiPayload();
      sub_2523770B0(v156, v160 + v157[7], type metadata accessor for AccessoryControlGroup.Layout);
      v161 = (v160 + v157[9]);
      v162 = (v160 + v157[8]);
      v163 = v276;
      *v162 = v275;
      v162[1] = v163;
      *v161 = 0;
      v161[1] = 0;

      sub_25237782C(v156, type metadata accessor for AccessoryControlGroup.Layout);
      sub_252372288(v322, &qword_27F4DB120);
      sub_252372288(v321, &qword_27F4DAD80);
      sub_25237782C(v320, type metadata accessor for AccessoryControl.BinaryViewConfig);
      (*(v249 + 8))(v290, v292);
      sub_25237782C(v311, type metadata accessor for AccessoryControl.ValueDestination);
      v164 = v136;
    }

    else
    {
      v149 = v326;
      v239(v309, v131, v132);
      (*(v287 + 104))(v306, *MEMORY[0x277D15CE8], v288);
      v150 = v252;
      swift_storeEnumTagMultiPayload();
      v151 = v242;
      LODWORD(v277) = v130;
      if (v242)
      {

        sub_25237782C(v150, type metadata accessor for AccessoryControl.StatusProvider);
        v152 = v281;
        *v281 = v238;
        v152[1] = v151;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_252376FE0(v150, v281, type metadata accessor for AccessoryControl.StatusProvider);
      }

      LODWORD(v323) = *(v255 + *(type metadata accessor for AccessoryControlSolver.Context() + 20));
      v165 = v301;
      sub_25268E250();
      v299 = sub_25268E2D0();
      v279 = v166;
      v167 = v303;
      v168 = v245;
      v245(v165, v303);
      v169 = v302;
      sub_25268E250();
      v170 = v243;
      v171 = v282;
      sub_25268E2C0();
      v168(v169, v167);
      v172 = v279;
      *v171 = v299;
      v171[1] = v172;
      *(v171 + *(v170 + 24)) = 0;
      sub_25268E260();
      v299 = sub_25268E2D0();
      v279 = v173;
      v168(v165, v167);
      sub_25268E260();
      v174 = (v171 + *(v300 + 28));
      sub_25268E2C0();
      v168(v169, v167);
      v175 = v149;
      v176 = v279;
      *v174 = v299;
      v174[1] = v176;
      *(v174 + *(v170 + 24)) = 0;
      LOBYTE(v329[0]) = v323;
      v323 = sub_2523F5EC0(v149, v329);
      v178 = v177;
      sub_25237153C(v171, v283, &qword_27F4DAD88);
      v179 = sub_25268E510();
      v180 = v287;
      v181 = v288;
      (*(v287 + 16))(v286, v306, v288);
      v182 = v256;
      (*(v285 + 104))(v284, *MEMORY[0x277D15720], v256);
      sub_252376EA8(&qword_27F4DADD8, MEMORY[0x277D158E0]);
      sub_252692D40();
      v183 = 0x408F400000000000;
      sub_252692D40();
      if ((v329[0] != v327 || v329[1] != v328) && (sub_2526933B0() & 1) == 0)
      {
        v183 = 0x406F400000000000;
      }

      (*(v285 + 8))(v284, v182);

      v184 = v257;
      v185 = v310;
      v186 = v281;
      sub_2523770B0(v281, v310 + *(v257 + 56), type metadata accessor for AccessoryControl.StatusProvider);
      v187 = sub_252692340();
      sub_252372288(v282, &qword_27F4DAD88);
      sub_25237782C(v186, type metadata accessor for AccessoryControl.StatusProvider);
      (*(v180 + 8))(v306, v181);
      sub_252376EF0(v283, v185);
      *(v185 + v184[5]) = v178;
      *(v185 + v184[6]) = v323;
      *(v185 + v184[12]) = v179;
      *(v185 + v184[13]) = v187;
      (*(v180 + 32))(v185 + v184[7], v286, v181);
      *(v185 + v184[8]) = 0;
      *(v185 + v184[9]) = 0x4059000000000000;
      *(v185 + v184[10]) = 0x3FF0000000000000;
      v188 = v185 + v184[11];
      *v188 = v183;
      *(v188 + 8) = 0;
      v189 = v304;
      v190 = v305;
      v312(v304, v253, v305);
      v191 = sub_25268FE70();
      v192 = v316;
      v316(v189, v190);
      if (v191 == 2 || (v191 & 1) != 0)
      {
        v312(v189, v277, v190);
        v193 = sub_25268FEA0();
        v195 = v194;
        v192(v189, v190);
        v196 = v321;
        if (v195)
        {
          v193 = 0;
        }
      }

      else
      {
        v193 = 0;
        v196 = v321;
      }

      v197 = v262;
      *v262 = v193;
      v198 = v263;
      v199 = v266;
      (*(v263 + 104))(v197, *MEMORY[0x277D15BB8], v266);
      v200 = v265;
      sub_25268F980();
      v201 = sub_25268F960();
      (*(v268 + 8))(v200, v269);
      v202 = v291;
      (*(v198 + 32))(v291, v197, v199);
      v203 = v267;
      *(v202 + *(v267 + 20)) = v201 & 1;
      v204 = v270;
      v205 = *(v270 + 40);
      v206 = v295;
      sub_2523770B0(v202, v295 + v205, type metadata accessor for AccessoryControl.IncrementalState);
      (*(v264 + 56))(v206 + v205, 0, 1, v203);
      sub_2523770B0(v311, v206 + *(v204 + 36), type metadata accessor for AccessoryControl.ValueDestination);
      v207 = v307;
      sub_2523770B0(v175, v307, type metadata accessor for HAPControlSolver.Source);
      v208 = swift_allocObject();
      sub_252376FE0(v207, v208 + v315, type metadata accessor for HAPControlSolver.Source);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB008);
      v209 = swift_allocObject();
      *(v209 + 16) = v324;
      *(v209 + 32) = sub_252376F60;
      *(v209 + 40) = v208;
      *v206 = v209;
      v210 = v289;
      sub_25268F9B0();
      v211 = v294;
      v212 = v274;
      v213 = &v274[*(v294 + 20)];
      v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
      v215 = *(v214 + 48);
      v216 = *(v214 + 64);
      sub_2523770B0(v310, v213, type metadata accessor for AccessoryControl.IncrementalConfig);
      sub_25237153C(v206, v213 + v215, &qword_27F4DAD78);
      sub_25237153C(v196, v213 + v216, &qword_27F4DAD80);
      (*(v261 + 56))(v213 + v216, 0, 1, v308);
      type metadata accessor for AccessoryControl.State(0);
      swift_storeEnumTagMultiPayload();
      v217 = (v175 + v325[14]);
      v219 = *v217;
      v218 = v217[1];
      v220 = v297;
      v221 = v298;
      (*(v297 + 32))(v212, v210, v298);
      type metadata accessor for AccessoryControl.ElementIdentifier();
      swift_storeEnumTagMultiPayload();
      v222 = (v212 + v211[7]);
      v223 = v211[9];
      *(v212 + v223) = 16;
      *(v212 + v211[6]) = 0;
      *v222 = v219;
      v222[1] = v218;
      *(v212 + v211[8]) = 1028;
      *(v212 + v223) = 16;
      *(v212 + v211[10]) = 1;
      v224 = v271;
      sub_25237153C(v322, v271, &qword_27F4DB120);
      if ((*(v293 + 48))(v224, 1, v211) == 1)
      {

        sub_252372288(v224, &qword_27F4DB120);
        v225 = v272;
        sub_2523770B0(v212, v272, type metadata accessor for AccessoryControl);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v226 = v251;
        sub_252376FE0(v224, v251, type metadata accessor for AccessoryControl);
        v227 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0) + 48);
        v225 = v272;
        sub_2523770B0(v212, v272, type metadata accessor for AccessoryControl);
        sub_252376FE0(v226, v225 + v227, type metadata accessor for AccessoryControl);
        swift_storeEnumTagMultiPayload();
      }

      v228 = v225;
      v229 = v273;
      sub_252376FE0(v228, v273, type metadata accessor for AccessoryControlGroup.Layout);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
      v230 = (type metadata accessor for AccessoryControlGroup(0) - 8);
      v231 = (*(*v230 + 80) + 32) & ~*(*v230 + 80);
      v159 = swift_allocObject();
      *(v159 + 16) = v324;
      v232 = v159 + v231;
      (*(v220 + 16))(v232, v175, v221);
      swift_storeEnumTagMultiPayload();
      sub_2523770B0(v229, v232 + v230[7], type metadata accessor for AccessoryControlGroup.Layout);
      v233 = (v232 + v230[9]);
      v234 = (v232 + v230[8]);
      v235 = v276;
      *v234 = v275;
      v234[1] = v235;
      *v233 = 0;
      v233[1] = 0;

      sub_25237782C(v229, type metadata accessor for AccessoryControlGroup.Layout);
      sub_252372288(v295, &qword_27F4DAD78);
      sub_25237782C(v291, type metadata accessor for AccessoryControl.IncrementalState);
      sub_25237782C(v310, type metadata accessor for AccessoryControl.IncrementalConfig);
      v236 = *(v249 + 8);
      v237 = v292;
      v236(v309, v292);
      sub_252372288(v322, &qword_27F4DB120);
      sub_252372288(v321, &qword_27F4DAD80);
      sub_25237782C(v320, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v236(v290, v237);
      sub_25237782C(v311, type metadata accessor for AccessoryControl.ValueDestination);
      v164 = v212;
    }

    sub_25237782C(v164, type metadata accessor for AccessoryControl);
    return v159;
  }
}

uint64_t sub_252376DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_252376DBC(a1, a2, a3, a4, a5);
  }

  return a1;
}