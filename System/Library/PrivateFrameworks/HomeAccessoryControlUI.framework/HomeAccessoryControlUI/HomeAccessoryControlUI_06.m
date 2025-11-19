uint64_t sub_2523CD2A0(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v33 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7C8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
  v18 = *(v36 + 40);
  v19 = *(v15 + 56);
  v38 = a1;
  sub_25237153C(a1 + v18, v17, &qword_27F4DB440);
  sub_25237153C(v42 + v18, &v17[v19], &qword_27F4DB440);
  v20 = *(v8 + 48);
  if (v20(v17, 1, v7) == 1)
  {
    if (v20(&v17[v19], 1, v7) == 1)
    {
      sub_252372288(v17, &qword_27F4DB440);
      goto LABEL_8;
    }

LABEL_6:
    v21 = &qword_27F4DB7C8;
    v22 = v17;
LABEL_14:
    sub_252372288(v22, v21);
    goto LABEL_15;
  }

  sub_25237153C(v17, v13, &qword_27F4DB440);
  if (v20(&v17[v19], 1, v7) == 1)
  {
    sub_2523E12E4(v13, type metadata accessor for AccessoryControl.StatusButtonState);
    goto LABEL_6;
  }

  sub_2523E127C(&v17[v19], v10, type metadata accessor for AccessoryControl.StatusButtonState);
  v23 = _s22HomeAccessoryControlUI0bC0V17StatusButtonStateV2eeoiySbAE_AEtFZ_0(v13, v10);
  sub_2523E12E4(v10, type metadata accessor for AccessoryControl.StatusButtonState);
  sub_2523E12E4(v13, type metadata accessor for AccessoryControl.StatusButtonState);
  sub_252372288(v17, &qword_27F4DB440);
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

uint64_t sub_2523CD87C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C8);
  v5 = *(v4 + 40);
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = v6[1];
  v9 = v7[1];
  if (!v8)
  {
    if (!v9)
    {
      v14 = v4;

      v12 = v14;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (!v9)
  {
LABEL_7:

    return 0;
  }

  if (*v6 != *v7)
  {
    return 0;
  }

  v10 = v4;
  v11 = sub_252439504(v8, v9);
  v12 = v10;
  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v15 = *(v12 + 36);

  return _s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(a1 + v15, a2 + v15);
}

uint64_t sub_2523CD96C(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7D0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
  v18 = *(v36 + 40);
  v19 = *(v15 + 56);
  v38 = a1;
  sub_25237153C(a1 + v18, v17, &qword_27F4DB2E8);
  sub_25237153C(v42 + v18, &v17[v19], &qword_27F4DB2E8);
  v20 = *(v8 + 48);
  if (v20(v17, 1, v7) == 1)
  {
    if (v20(&v17[v19], 1, v7) == 1)
    {
      sub_252372288(v17, &qword_27F4DB2E8);
      goto LABEL_8;
    }

LABEL_6:
    v21 = &qword_27F4DB7D0;
    v22 = v17;
LABEL_14:
    sub_252372288(v22, v21);
    goto LABEL_15;
  }

  sub_25237153C(v17, v13, &qword_27F4DB2E8);
  if (v20(&v17[v19], 1, v7) == 1)
  {
    sub_2523E12E4(v13, type metadata accessor for AccessoryControl.AutoClimateState);
    goto LABEL_6;
  }

  sub_2523E127C(&v17[v19], v10, type metadata accessor for AccessoryControl.AutoClimateState);
  v23 = static AccessoryControl.AutoClimateState.== infix(_:_:)(v13, v10);
  sub_2523E12E4(v10, type metadata accessor for AccessoryControl.AutoClimateState);
  sub_2523E12E4(v13, type metadata accessor for AccessoryControl.AutoClimateState);
  sub_252372288(v17, &qword_27F4DB2E8);
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

uint64_t sub_2523CDF48(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB378);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7D8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
  v18 = *(v36 + 40);
  v19 = *(v15 + 56);
  v38 = a1;
  sub_25237153C(a1 + v18, v17, &qword_27F4DB378);
  sub_25237153C(v42 + v18, &v17[v19], &qword_27F4DB378);
  v20 = *(v8 + 48);
  if (v20(v17, 1, v7) == 1)
  {
    if (v20(&v17[v19], 1, v7) == 1)
    {
      sub_252372288(v17, &qword_27F4DB378);
      goto LABEL_8;
    }

LABEL_6:
    v21 = &qword_27F4DB7D8;
    v22 = v17;
LABEL_14:
    sub_252372288(v22, v21);
    goto LABEL_15;
  }

  sub_25237153C(v17, v13, &qword_27F4DB378);
  if (v20(&v17[v19], 1, v7) == 1)
  {
    sub_2523E12E4(v13, type metadata accessor for AccessoryControl.AutoClimatePickerState);
    goto LABEL_6;
  }

  sub_2523E127C(&v17[v19], v10, type metadata accessor for AccessoryControl.AutoClimatePickerState);
  v23 = static AccessoryControl.AutoClimatePickerState.== infix(_:_:)(v13, v10);
  sub_2523E12E4(v10, type metadata accessor for AccessoryControl.AutoClimatePickerState);
  sub_2523E12E4(v13, type metadata accessor for AccessoryControl.AutoClimatePickerState);
  sub_252372288(v17, &qword_27F4DB378);
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

uint64_t static ControlBinding.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlBinding();
  if ((sub_252692B70() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 36);

  return _s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(a1 + v5, a2 + v5);
}

uint64_t static ControlAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ControlAction(0) + 24);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_2526933B0();
}

uint64_t AccessoryControl.State.hash(into:)(__int128 *a1)
{
  v200 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
  MEMORY[0x28223BE20](v1 - 8);
  v193 = &v161 - v2;
  v190 = type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);
  MEMORY[0x28223BE20](v190);
  v192 = (&v161 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v189 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);
  MEMORY[0x28223BE20](v189);
  v191 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
  MEMORY[0x28223BE20](v186);
  v194 = &v161 - v5;
  v6 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig(0);
  MEMORY[0x28223BE20](v6 - 8);
  v181 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C8);
  MEMORY[0x28223BE20](v182);
  v187 = &v161 - v8;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
  MEMORY[0x28223BE20](v183);
  v188 = &v161 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
  MEMORY[0x28223BE20](v10 - 8);
  v179 = &v161 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
  MEMORY[0x28223BE20](v12 - 8);
  v178 = &v161 - v13;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298);
  MEMORY[0x28223BE20](v177);
  v180 = &v161 - v14;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v175 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v161 = &v161 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v16 - 8);
  v174 = &v161 - v17;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0);
  MEMORY[0x28223BE20](v163);
  v185 = &v161 - v18;
  v171 = type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0);
  MEMORY[0x28223BE20](v171);
  v184 = (&v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v198 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v195 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AccessoryControl.ValueDestination(0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v173 = &v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v169 = &v161 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v172 = &v161 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v167 = &v161 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v176 = &v161 - v31;
  MEMORY[0x28223BE20](v30);
  v162 = &v161 - v32;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  MEMORY[0x28223BE20](v166);
  v170 = &v161 - v33;
  v34 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v34 - 8);
  v168 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD70);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v39 = &v161 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v165 = &v161 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v161 - v42;
  v44 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v161 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ControlAction(0);
  MEMORY[0x28223BE20](v47);
  v49 = &v161 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  v164 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v52 = &v161 - v51;
  v53 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v53 - 8);
  v55 = &v161 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v56);
  v58 = &v161 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2523DE7AC(v199, v58, type metadata accessor for AccessoryControl.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v107 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB420) + 48);
      sub_2523E127C(v58, v55, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_2523E127C(&v58[v107], v49, type metadata accessor for ControlAction);
      v108 = v200;
      MEMORY[0x2530A4FE0](1);
      AccessoryControl.BinaryViewConfig.hash(into:)(v108);
      sub_252692C80();
      sub_2523E12E4(v55, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v109 = type metadata accessor for ControlAction;
      goto LABEL_58;
    case 2u:
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
      v91 = *(v90 + 48);
      v92 = *(v90 + 64);
      sub_2523E127C(v58, v46, type metadata accessor for AccessoryControl.IncrementalConfig);
      sub_2523714D4(&v58[v91], v43, &qword_27F4DAD78);
      v93 = v165;
      sub_2523714D4(&v58[v92], v165, &qword_27F4DAD70);
      v94 = v200;
      MEMORY[0x2530A4FE0](2);
      AccessoryControl.IncrementalConfig.hash(into:)(v94);
      sub_2523D3418();
      sub_25237153C(v93, v39, &qword_27F4DAD70);
      if ((*(v164 + 48))(v39, 1, v50) == 1)
      {
        sub_252693480();
      }

      else
      {
        sub_2523714D4(v39, v52, &qword_27F4DAD80);
        sub_252693480();
        sub_2523D315C();
        sub_252372288(v52, &qword_27F4DAD80);
      }

      sub_252372288(v93, &qword_27F4DAD70);
      sub_252372288(v43, &qword_27F4DAD78);
      v61 = type metadata accessor for AccessoryControl.IncrementalConfig;
      v62 = v46;
      return sub_2523E12E4(v62, v61);
    case 3u:
      v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);
      v96 = v168;
      sub_2523E127C(v58, v168, type metadata accessor for AccessoryControl.PickerViewConfig);
      v97 = v170;
      sub_2523714D4(&v58[v95], v170, &qword_27F4DAD68);
      v98 = v200;
      MEMORY[0x2530A4FE0](3);
      AccessoryControl.PickerViewConfig.hash(into:)(v98);
      v99 = v166;
      v100 = v97 + *(v166 + 40);
      if (*(v100 + 8) == 1)
      {
        sub_252693480();
      }

      else
      {
        v138 = *v100;
        sub_252693480();
        MEMORY[0x2530A4FE0](v138);
      }

      v139 = v198;
      v140 = v197;
      v141 = v162;
      sub_2523DE7AC(v97 + *(v99 + 36), v162, type metadata accessor for AccessoryControl.ValueDestination);
      if ((*(v140 + 48))(v141, 1, v139) == 1)
      {
        MEMORY[0x2530A4FE0](0);
      }

      else
      {
        v142 = v141;
        v143 = v195;
        sub_2523E127C(v142, v195, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
        MEMORY[0x2530A4FE0](1);
        sub_25268DA10();
        sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
        sub_252692B30();
        sub_2523E12E4(v143, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      }

      sub_252372288(v97, &qword_27F4DAD68);
      v61 = type metadata accessor for AccessoryControl.PickerViewConfig;
      v62 = v96;
      return sub_2523E12E4(v62, v61);
    case 4u:
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3F8) + 48);
      v64 = v184;
      sub_2523E127C(v58, v184, type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig);
      v71 = v185;
      sub_2523714D4(&v58[v70], v185, &qword_27F4DB3E0);
      v72 = v200;
      MEMORY[0x2530A4FE0](4);
      sub_2523DB2E4(v72, *v64);
      sub_252693480();
      v73 = v174;
      sub_25237153C(v64 + *(v171 + 24), v174, &qword_27F4DADB8);
      if ((*(v175 + 48))(v73, 1, v196) == 1)
      {
        sub_252693480();
      }

      else
      {
        v132 = v73;
        v133 = v161;
        sub_2523714D4(v132, v161, &qword_27F4DAD88);
        sub_252693480();
        sub_252692C80();
        type metadata accessor for IconDescriptor();
        sub_25268F910();
        sub_2523E1344(&qword_27F4DB560, MEMORY[0x277D165A0]);
        sub_252692B30();
        sub_252693480();
        sub_252692C80();
        sub_252692B30();
        sub_252693480();
        sub_252372288(v133, &qword_27F4DAD88);
      }

      v134 = v163;
      v135 = *(v71 + *(v163 + 40));
      v136 = v198;
      v137 = v197;
      sub_252693480();
      if (v135)
      {
        sub_2523DD734(v72, v135);
      }

      v148 = v176;
      sub_2523DE7AC(v71 + *(v134 + 36), v176, type metadata accessor for AccessoryControl.ValueDestination);
      if ((*(v137 + 48))(v148, 1, v136) == 1)
      {
        MEMORY[0x2530A4FE0](0);
      }

      else
      {
        v149 = v195;
        sub_2523E127C(v148, v195, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
        MEMORY[0x2530A4FE0](1);
        sub_25268DA10();
        sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
        sub_252692B30();
        sub_2523E12E4(v149, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      }

      sub_252372288(v71, &qword_27F4DB3E0);
      v68 = type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig;
      goto LABEL_48;
    case 5u:
      v208 = *v58;
      *&v209 = *(v58 + 2);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2B0);
      v86 = v180;
      sub_2523714D4(&v58[*(v110 + 48)], v180, &qword_27F4DB298);
      v111 = v200;
      MEMORY[0x2530A4FE0](5);
      v201 = v208;
      *&v202 = v209;
      AccessoryControl.ColorPickerConfig.hash(into:)();
      sub_252394280(&v208);
      v112 = v177;
      sub_2523D6C14(v111);
      v113 = v167;
      sub_2523DE7AC(v86 + *(v112 + 36), v167, type metadata accessor for AccessoryControl.ValueDestination);
      if ((*(v197 + 48))(v113, 1, v198) == 1)
      {
        MEMORY[0x2530A4FE0](0);
      }

      else
      {
        v144 = v195;
        sub_2523E127C(v113, v195, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
        MEMORY[0x2530A4FE0](1);
        sub_25268DA10();
        sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
        sub_252692B30();
        sub_2523E12E4(v144, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      }

      v145 = &qword_27F4DB298;
      return sub_252372288(v86, v145);
    case 6u:
      v116 = *(v58 + 5);
      v212 = *(v58 + 4);
      v213 = v116;
      v214 = *(v58 + 48);
      v117 = *(v58 + 1);
      v208 = *v58;
      v209 = v117;
      v118 = *(v58 + 3);
      v210 = *(v58 + 2);
      v211 = v118;
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270);
      v120 = v178;
      sub_2523714D4(&v58[*(v119 + 48)], v178, &qword_27F4DB278);
      v121 = v200;
      MEMORY[0x2530A4FE0](6);
      v205 = v212;
      v206 = v213;
      v207 = v214;
      v201 = v208;
      v202 = v209;
      v204 = v211;
      v203 = v210;
      AccessoryControl.ThermostatConfig.hash(into:)(v121);
      sub_252385F08(&v208);
      sub_2523D2DC4(v121);
      return sub_252372288(v120, &qword_27F4DB278);
    case 7u:
      v101 = *v58;
      v102 = *(v58 + 4);
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0);
      v104 = v179;
      sub_2523714D4(&v58[*(v103 + 48)], v179, &qword_27F4DB498);
      v105 = v200;
      MEMORY[0x2530A4FE0](7);
      sub_2523D8FD0(v105, v101);
      sub_252693480();
      sub_252692C80();
      sub_2523D8AB4(v105, v102);

      sub_2523D2B0C(v105);
      return sub_252372288(v104, &qword_27F4DB498);
    case 8u:
      v122 = *(v58 + 3);
      v123 = *(v58 + 4);
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470);
      v125 = v188;
      sub_2523714D4(&v58[*(v124 + 48)], v188, &qword_27F4DB450);
      v126 = v200;
      MEMORY[0x2530A4FE0](8);
      sub_252693480();
      sub_252692C80();
      sub_2523D8AB4(v126, v122);
      MEMORY[0x2530A4FE0](*(v123 + 16));
      v127 = *(v123 + 16);
      if (v127)
      {
        v128 = (v123 + 32);
        do
        {
          v129 = *v128++;
          MEMORY[0x2530A4FE0](v129);
          --v127;
        }

        while (v127);
      }

      v130 = v183;
      sub_2523D6884(v126);
      v131 = v172;
      sub_2523DE7AC(v125 + *(v130 + 36), v172, type metadata accessor for AccessoryControl.ValueDestination);
      if ((*(v197 + 48))(v131, 1, v198) == 1)
      {
        MEMORY[0x2530A4FE0](0);
      }

      else
      {
        v146 = v195;
        sub_2523E127C(v131, v195, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
        MEMORY[0x2530A4FE0](1);
        sub_25268DA10();
        sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
        sub_252692B30();
        sub_2523E12E4(v146, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      }

      v147 = &qword_27F4DB450;
      return sub_252372288(v125, v147);
    case 9u:
      v84 = *(v58 + 1);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4D8);
      v86 = v187;
      sub_2523714D4(&v58[*(v85 + 48)], v187, &qword_27F4DB4C8);
      v87 = v200;
      MEMORY[0x2530A4FE0](9);
      sub_252693480();
      sub_2523DB164(v87, v84);

      v88 = v182;
      v89 = *(v86 + *(v182 + 40) + 8);
      sub_252693480();
      if (v89)
      {
        sub_2526934A0();
        sub_2523D7718(v87, v89);
      }

      v150 = v198;
      v151 = v197;
      v152 = v169;
      sub_2523DE7AC(v86 + *(v88 + 36), v169, type metadata accessor for AccessoryControl.ValueDestination);
      if ((*(v151 + 48))(v152, 1, v150) == 1)
      {
        MEMORY[0x2530A4FE0](0);
      }

      else
      {
        v153 = v152;
        v154 = v195;
        sub_2523E127C(v153, v195, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
        MEMORY[0x2530A4FE0](1);
        sub_25268DA10();
        sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
        sub_252692B30();
        sub_2523E12E4(v154, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      }

      v145 = &qword_27F4DB4C8;
      return sub_252372288(v86, v145);
    case 0xAu:
      MEMORY[0x2530A4FE0](10);
      sub_252692C80();
      sub_252693480();

    case 0xBu:
      v69 = v181;
      sub_2523E127C(v58, v181, type metadata accessor for AccessoryControl.AlarmAndTimerConfig);
      MEMORY[0x2530A4FE0](11);
      sub_25268DA10();
      sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
      sub_252692B30();
      v61 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig;
      v62 = v69;
      return sub_2523E12E4(v62, v61);
    case 0xCu:
      v75 = *v58;
      v74 = *(v58 + 1);
      v76 = *(v58 + 2);
      v77 = *(v58 + 3);
      v78 = *(v58 + 4);
      v79 = v58[40];
      v80 = v58[41];
      v81 = *(v58 + 6);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F0);
      sub_2523714D4(&v58[*(v82 + 48)], v194, &qword_27F4DB2F8);
      v83 = v200;
      MEMORY[0x2530A4FE0](12);
      *&v208 = v75;
      *(&v208 + 1) = v74;
      *&v209 = v76;
      *(&v209 + 1) = v77;
      *&v210 = v78;
      BYTE8(v210) = v79;
      AccessoryControl.AutoClimateViewConfig.IconConfig.hash(into:)();
      MEMORY[0x2530A4FE0](v80);
      if (v81 == 1)
      {
        sub_252693480();
      }

      else
      {
        sub_252693480();
        if (v81)
        {
          MEMORY[0x2530A4FE0](1);
          sub_2523DA850(v83, v81);
        }

        else
        {
          MEMORY[0x2530A4FE0](0);
        }
      }

      v156 = v198;
      v157 = v197;
      v125 = v194;
      v158 = v186;
      sub_2523D6FA4(v83);
      v159 = v173;
      sub_2523DE7AC(v125 + *(v158 + 36), v173, type metadata accessor for AccessoryControl.ValueDestination);
      if ((*(v157 + 48))(v159, 1, v156) == 1)
      {
        MEMORY[0x2530A4FE0](0);

        sub_2523A9BF8(v81);
      }

      else
      {
        v160 = v195;
        sub_2523E127C(v159, v195, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
        MEMORY[0x2530A4FE0](1);
        sub_25268DA10();
        sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
        sub_252692B30();

        sub_2523A9BF8(v81);
        sub_2523E12E4(v160, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      }

      v147 = &qword_27F4DB2F8;
      return sub_252372288(v125, v147);
    case 0xDu:
      v49 = v191;
      sub_2523E127C(v58, v191, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig);
      v114 = v200;
      MEMORY[0x2530A4FE0](13);
      sub_252692C80();
      type metadata accessor for IconDescriptor();
      sub_25268F910();
      sub_2523E1344(&qword_27F4DB560, MEMORY[0x277D165A0]);
      sub_252692B30();
      sub_252693480();
      sub_252692C80();
      sub_252692B30();
      sub_252693480();
      v115 = v189;
      sub_252692C80();
      if (*&v49[*(v115 + 24) + 8])
      {
        sub_252693480();
        sub_252692C80();
      }

      else
      {
        sub_252693480();
      }

      v155 = *&v49[*(v115 + 28)];
      sub_252693480();
      if (v155)
      {
        sub_2523DA3A4(v114, v155);
      }

      v109 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig;
LABEL_58:
      v61 = v109;
      v62 = v49;
      return sub_2523E12E4(v62, v61);
    case 0xEu:
      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB348) + 48);
      v64 = v192;
      sub_2523E127C(v58, v192, type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig);
      v65 = v193;
      sub_2523714D4(&v58[v63], v193, &qword_27F4DB350);
      v66 = v200;
      MEMORY[0x2530A4FE0](14);
      sub_252692C80();
      type metadata accessor for IconDescriptor();
      sub_25268F910();
      sub_2523E1344(&qword_27F4DB560, MEMORY[0x277D165A0]);
      sub_252692B30();
      sub_252693480();
      sub_252692C80();
      sub_252692B30();
      sub_252693480();
      v67 = v190;
      sub_252692C80();
      sub_2523D9E44(v66, *(v64 + *(v67 + 24)));
      sub_2523D260C(v66);
      sub_252372288(v65, &qword_27F4DB350);
      v68 = type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig;
LABEL_48:
      v61 = v68;
      v62 = v64;
      return sub_2523E12E4(v62, v61);
    default:
      v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);
      sub_2523E127C(v58, v55, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_2523714D4(&v58[v59], v52, &qword_27F4DAD80);
      v60 = v200;
      MEMORY[0x2530A4FE0](0);
      AccessoryControl.BinaryViewConfig.hash(into:)(v60);
      sub_2523D315C();
      sub_252372288(v52, &qword_27F4DAD80);
      v61 = type metadata accessor for AccessoryControl.BinaryViewConfig;
      v62 = v55;
      return sub_2523E12E4(v62, v61);
  }
}

uint64_t sub_2523D0784(void (*a1)(_BYTE *))
{
  sub_252693460();
  a1(v3);
  return sub_2526934C0();
}

uint64_t sub_2523D07E8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_252693460();
  a3(v5);
  return sub_2526934C0();
}

uint64_t sub_2523D084C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_252693460();
  a4(v6);
  return sub_2526934C0();
}

uint64_t sub_2523D0890@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccessoryControl(0);
  sub_2523DE7AC(v1 + *(v15 + 20), v14, type metadata accessor for AccessoryControl.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);
      sub_2523E127C(v14, v5, type metadata accessor for AccessoryControl.PickerViewConfig);
      sub_25237153C(&v5[*(v3 + 24)], a1, &qword_27F4DADB8);
      sub_2523E12E4(v5, type metadata accessor for AccessoryControl.PickerViewConfig);
      return sub_252372288(&v14[v24], &qword_27F4DAD68);
    case 2:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
      v17 = *(v20 + 48);
      v21 = *(v20 + 64);
      sub_2523E127C(v14, v8, type metadata accessor for AccessoryControl.IncrementalConfig);
      sub_25237153C(v8, a1, &qword_27F4DAD88);
      sub_2523E12E4(v8, type metadata accessor for AccessoryControl.IncrementalConfig);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
      (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
      sub_252372288(&v14[v21], &qword_27F4DAD70);
      v19 = &qword_27F4DAD78;
      return sub_252372288(&v14[v17], v19);
    case 0:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);
      sub_2523E127C(v14, v11, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_25237153C(v11, a1, &qword_27F4DAD88);
      sub_2523E12E4(v11, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
      (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
      v19 = &qword_27F4DAD80;
      return sub_252372288(&v14[v17], v19);
    default:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
      (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
      return sub_2523E12E4(v14, type metadata accessor for AccessoryControl.State);
  }
}

uint64_t sub_2523D0CF4()
{
  v0 = type metadata accessor for AccessoryControl.ValueDestination(0);
  __swift_allocate_value_buffer(v0, qword_27F4DB548);
  v1 = __swift_project_value_buffer(v0, qword_27F4DB548);
  v2 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static AccessoryControl.ValueDestination.accessoryControl.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4DA990 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AccessoryControl.ValueDestination(0);
  v3 = __swift_project_value_buffer(v2, qword_27F4DB548);
  return sub_2523DE7AC(v3, a1, type metadata accessor for AccessoryControl.ValueDestination);
}

uint64_t AccessoryControl.ValueDestination.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2523DE7AC(v1, v8, type metadata accessor for AccessoryControl.ValueDestination);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return 0x446F546574697277;
  }

  sub_2523E127C(v8, v5, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_252693210();

  v15 = 0x69286D6F74737563;
  v16 = 0xEA00000000003A64;
  sub_25268DA10();
  sub_2523E1344(&qword_27F4DB2B8, MEMORY[0x277CC95F0]);
  v10 = sub_252693370();
  MEMORY[0x2530A4800](v10);

  MEMORY[0x2530A4800](0x656C646E6168202CLL, 0xEB00000000203A72);
  sub_2523C3820(v5, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB568);
  v11 = sub_252692C00();
  MEMORY[0x2530A4800](v11);

  v9 = v15;
  sub_2523E12E4(v5, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  return v9;
}

uint64_t static AccessoryControl.ValueDestination.custom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2523C3820(a1, v8);
  sub_2523C3820(v8, a2);
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v5 = *(v4 + 8);
  v6 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v5(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
}

uint64_t static AccessoryControl.AnyWriteSpecificationHandler.== infix(_:_:)()
{
  type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);

  return _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
}

uint64_t AccessoryControl.ValueDestination.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2523DE7AC(v1, v8, type metadata accessor for AccessoryControl.ValueDestination);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return MEMORY[0x2530A4FE0](0);
  }

  sub_2523E127C(v8, v5, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  MEMORY[0x2530A4FE0](1);
  sub_25268DA10();
  sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  sub_252692B30();
  return sub_2523E12E4(v5, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
}

uint64_t AccessoryControl.ValueDestination.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252693460();
  sub_2523DE7AC(v1, v8, type metadata accessor for AccessoryControl.ValueDestination);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x2530A4FE0](0);
  }

  else
  {
    sub_2523E127C(v8, v5, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
    MEMORY[0x2530A4FE0](1);
    sub_25268DA10();
    sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
    sub_252692B30();
    sub_2523E12E4(v5, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  }

  return sub_2526934C0();
}

uint64_t sub_2523D15B0()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2523DE7AC(v1, v8, type metadata accessor for AccessoryControl.ValueDestination);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return MEMORY[0x2530A4FE0](0);
  }

  sub_2523E127C(v8, v6, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  MEMORY[0x2530A4FE0](1);
  sub_25268DA10();
  sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  sub_252692B30();
  return sub_2523E12E4(v6, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
}

uint64_t sub_2523D179C()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252693460();
  sub_2523DE7AC(v1, v8, type metadata accessor for AccessoryControl.ValueDestination);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x2530A4FE0](0);
  }

  else
  {
    sub_2523E127C(v8, v6, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
    MEMORY[0x2530A4FE0](1);
    sub_25268DA10();
    sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
    sub_252692B30();
    sub_2523E12E4(v6, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  }

  return sub_2526934C0();
}

uint64_t AccessoryControl.AnyWriteSpecificationHandler.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0) + 20);
  v4 = sub_25268DA10();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccessoryControl.AnyWriteSpecificationHandler.init<A>(erasing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12[3] = a2;
  v12[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  v9 = *(a2 - 8);
  (*(v9 + 16))(boxed_opaque_existential_0, a1, a2);
  sub_2523C3820(v12, a4);
  v10 = *(a3 + 8);
  type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v10(a2, a3);
  (*(v9 + 8))(a1, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t AccessoryControl.AnyWriteSpecificationHandler.hash(into:)()
{
  type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  sub_25268DA10();
  sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  return sub_252692B30();
}

uint64_t AccessoryControl.AnyWriteSpecificationHandler.perform(writeSpec:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2523D1BC8, 0, 0);
}

uint64_t sub_2523D1BC8()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_2523D1CF4;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_2523D1CF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AccessoryControl.AnyWriteSpecificationHandler.hashValue.getter()
{
  sub_252693460();
  type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  sub_25268DA10();
  sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  sub_252692B30();
  return sub_2526934C0();
}

uint64_t sub_2523D1E88()
{
  sub_252693460();
  sub_25268DA10();
  sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  sub_252692B30();
  return sub_2526934C0();
}

uint64_t sub_2523D1F24()
{
  sub_25268DA10();
  sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  return sub_252692B30();
}

uint64_t sub_2523D1FA4()
{
  sub_252693460();
  sub_25268DA10();
  sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  sub_252692B30();
  return sub_2526934C0();
}

uint64_t sub_2523D204C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_25268DA10();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2523D20C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2523D20E0, 0, 0);
}

uint64_t sub_2523D20E0()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_2523E2EA4;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t ControlBinding.binding(errorHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a1;
  v29 = a2;
  v30 = a4;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v25 = *(v5 + 16);
  v25(&v23 - v8, v10);
  v11 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v24 = v11 + v6;
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  v14 = *(a3 + 16);
  v13 = *(a3 + 24);
  *(v12 + 4) = v14;
  *(v12 + 5) = v13;
  v15 = *(v5 + 32);
  v15(&v12[v11], v9, a3);
  v16 = v27;
  (v25)(v27, v26, a3);
  v17 = (v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = v14;
  *(v18 + 5) = v13;
  v15(&v18[v11], v16, a3);
  v19 = &v18[v17];
  v20 = v28;
  v21 = v29;
  *v19 = v28;
  v19[1] = v21;
  sub_25235E21C(v20);
  return sub_2526926E0();
}

uint64_t ControlBinding.set(value:errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ControlBinding.setBlockWriteSpecifications(value:)(v10);
  sub_2523FEEC8(v4 + *(a4 + 36), v10, a2, a3);
  return sub_2523E12E4(v10, type metadata accessor for AccessoryControl.WriteSpecification);
}

uint64_t ControlBinding.init(value:destination:setBlocks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a3;
  v9 = type metadata accessor for ControlBinding();
  sub_2523E127C(a2, a5 + *(v9 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  v10 = *(*(a4 - 8) + 32);
  v11 = a5 + *(v9 + 40);

  return v10(v11, a1, a4);
}

uint64_t sub_2523D260C(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v33 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v26 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB330);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB378);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v26 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
  v20 = *(v19 + 40);
  v32 = v2;
  sub_25237153C(v2 + v20, v18, &qword_27F4DB378);
  if ((*(v13 + 48))(v18, 1, v12) == 1)
  {
    sub_252693480();
  }

  else
  {
    sub_2523E127C(v18, v15, type metadata accessor for AccessoryControl.AutoClimatePickerState);
    v21 = v30;
    sub_252693480();
    sub_25237153C(v15, v11, &qword_27F4DB330);
    if ((*(v27 + 48))(v11, 1, v28) == 1)
    {
      sub_252693480();
    }

    else
    {
      v22 = v26;
      sub_2523E127C(v11, v26, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      sub_252693480();
      AccessoryControl.AutoClimateState.SetpointHold.hash(into:)(v21);
      sub_2523E12E4(v22, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
    }

    sub_2523E12E4(v15, type metadata accessor for AccessoryControl.AutoClimatePickerState);
  }

  v23 = v33;
  sub_2523DE7AC(v32 + *(v19 + 36), v8, type metadata accessor for AccessoryControl.ValueDestination);
  if ((*(v31 + 48))(v8, 1, v23) == 1)
  {
    return MEMORY[0x2530A4FE0](0);
  }

  v25 = v29;
  sub_2523E127C(v8, v29, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  MEMORY[0x2530A4FE0](1);
  sub_25268DA10();
  sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  sub_252692B30();
  return sub_2523E12E4(v25, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
}

uint64_t sub_2523D2B0C(uint64_t a1)
{
  v3 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
  v11 = (v1 + *(v10 + 40));
  if (v11[1])
  {
    v16 = v11[3];
    v17 = v6;
    v12 = v11[2];
    sub_252693480();
    sub_252692C80();
    MEMORY[0x2530A4FE0](*(v12 + 16));
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = v12 + 40;
      do
      {

        sub_252692C80();

        v14 += 16;
        --v13;
      }

      while (v13);
    }

    sub_2523DCD6C(a1, v16);
    v6 = v17;
  }

  else
  {
    sub_252693480();
  }

  sub_2523DE7AC(v1 + *(v10 + 36), v9, type metadata accessor for AccessoryControl.ValueDestination);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return MEMORY[0x2530A4FE0](0);
  }

  sub_2523E127C(v9, v6, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  MEMORY[0x2530A4FE0](1);
  sub_25268DA10();
  sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  sub_252692B30();
  return sub_2523E12E4(v6, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
}

uint64_t sub_2523D2DC4(uint64_t a1)
{
  v2 = v1;
  v21 = a1;
  v3 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
  v16 = v2;
  sub_25237153C(v2 + *(v15 + 40), v14, &qword_27F4DB258);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_252693480();
  }

  else
  {
    sub_2523E127C(v14, v11, type metadata accessor for AccessoryControl.ThermostatState);
    v17 = v21;
    sub_252693480();
    AccessoryControl.ThermostatState.hash(into:)(v17);
    sub_2523E12E4(v11, type metadata accessor for AccessoryControl.ThermostatState);
  }

  sub_2523DE7AC(v16 + *(v15 + 36), v7, type metadata accessor for AccessoryControl.ValueDestination);
  if ((*(v22 + 48))(v7, 1, v23) == 1)
  {
    return MEMORY[0x2530A4FE0](0);
  }

  v19 = v20;
  sub_2523E127C(v7, v20, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  MEMORY[0x2530A4FE0](1);
  sub_25268DA10();
  sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  sub_252692B30();
  return sub_2523E12E4(v19, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
}

uint64_t sub_2523D315C()
{
  v1 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  v9 = v0 + *(v8 + 40);
  v10 = *(v9 + 32);
  if (v10 != 1)
  {
    v16 = v1;
    v17 = v4;
    v11 = *(v9 + 8);
    v15[1] = *(v9 + 24);
    v12 = *(v9 + 16);
    sub_252693480();
    sub_252693480();
    if (v12)
    {
      sub_252693480();
      v1 = v16;
      v4 = v17;
      if (v10)
      {
LABEL_4:
        sub_252693480();
        sub_252692C80();
        goto LABEL_10;
      }
    }

    else
    {
      sub_252693480();
      if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      MEMORY[0x2530A5020](v13);
      v1 = v16;
      v4 = v17;
      if (v10)
      {
        goto LABEL_4;
      }
    }
  }

  sub_252693480();
LABEL_10:
  sub_2523DE7AC(v0 + *(v8 + 36), v7, type metadata accessor for AccessoryControl.ValueDestination);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return MEMORY[0x2530A4FE0](0);
  }

  sub_2523E127C(v7, v4, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  MEMORY[0x2530A4FE0](1);
  sub_25268DA10();
  sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  sub_252692B30();
  return sub_2523E12E4(v4, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
}

uint64_t sub_2523D3418()
{
  v1 = v0;
  v20 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v17 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
  v14 = *(v13 + 40);
  v19 = v1;
  sub_25237153C(v1 + v14, v12, &qword_27F4DB218);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    sub_252693480();
  }

  else
  {
    sub_2523E127C(v12, v9, type metadata accessor for AccessoryControl.IncrementalState);
    sub_252693480();
    sub_25268ED70();
    sub_2523E1344(&qword_27F4DB790, MEMORY[0x277D15BC0]);
    sub_252692B30();
    sub_252693480();
    sub_2523E12E4(v9, type metadata accessor for AccessoryControl.IncrementalState);
  }

  sub_2523DE7AC(v19 + *(v13 + 36), v5, type metadata accessor for AccessoryControl.ValueDestination);
  if ((*(v18 + 48))(v5, 1, v20) == 1)
  {
    return MEMORY[0x2530A4FE0](0);
  }

  v16 = v17;
  sub_2523E127C(v5, v17, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  MEMORY[0x2530A4FE0](1);
  sub_25268DA10();
  sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  sub_252692B30();
  return sub_2523E12E4(v16, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
}

uint64_t ControlBinding.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252692B30();
  sub_2523DE7AC(v2 + *(a2 + 36), v10, type metadata accessor for AccessoryControl.ValueDestination);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return MEMORY[0x2530A4FE0](0);
  }

  sub_2523E127C(v10, v7, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  MEMORY[0x2530A4FE0](1);
  sub_25268DA10();
  sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  sub_252692B30();
  return sub_2523E12E4(v7, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
}

uint64_t ControlBinding.setBlockWriteSpecifications(value:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AccessoryControl.WriteSpecification(255);
  swift_getFunctionTypeMetadata1();
  sub_252692DD0();

  swift_checkMetadataState();
  swift_getWitnessTable();
  v2 = sub_252692D30();

  static AccessoryControl.WriteSpecification.merge(writeSpecifications:)(v2, a1);
}

uint64_t ControlBinding.hashValue.getter(uint64_t a1)
{
  sub_252693460();
  ControlBinding.hash(into:)(v3, a1);
  return sub_2526934C0();
}

uint64_t sub_2523D3B70(uint64_t a1, uint64_t a2)
{
  sub_252693460();
  ControlBinding.hash(into:)(v4, a2);
  return sub_2526934C0();
}

uint64_t ControlAction.identity.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlAction(0) + 24));

  return v1;
}

uint64_t ControlAction.init(identity:destination:setBlocks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a4;
  v9 = type metadata accessor for ControlAction(0);
  v10 = (a5 + *(v9 + 24));
  *v10 = a1;
  v10[1] = a2;
  return sub_2523E127C(a3, a5 + *(v9 + 20), type metadata accessor for AccessoryControl.ValueDestination);
}

uint64_t ControlAction.hash(into:)()
{
  type metadata accessor for ControlAction(0);

  return sub_252692C80();
}

Swift::Void __swiftcall ControlAction.perform()()
{
  v1 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ControlAction.setBlockWriteSpecifications()(v3);
  v4 = type metadata accessor for ControlAction(0);
  sub_2523FEEC8(v0 + *(v4 + 20), v3, 0, 0);
  sub_2523E12E4(v3, type metadata accessor for AccessoryControl.WriteSpecification);
}

uint64_t ControlAction.setBlockWriteSpecifications()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(*v1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v17 = MEMORY[0x277D84F90];
    sub_252370370(0, v8, 0);
    v9 = v17;
    v10 = v7 + 40;
    do
    {
      v11 = *(v10 - 8);

      v11(v12);

      v17 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_252370370(v13 > 1, v14 + 1, 1);
        v9 = v17;
      }

      *(v9 + 16) = v14 + 1;
      sub_2523E127C(v6, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, type metadata accessor for AccessoryControl.WriteSpecification);
      v10 += 16;
      --v8;
    }

    while (v8);
  }

  static AccessoryControl.WriteSpecification.merge(writeSpecifications:)(v9, a1);
}

uint64_t ControlAction.hashValue.getter()
{
  sub_252693460();
  type metadata accessor for ControlAction(0);
  sub_252692C80();
  return sub_2526934C0();
}

uint64_t sub_2523D3FD4()
{
  sub_252693460();
  sub_252692C80();
  return sub_2526934C0();
}

uint64_t sub_2523D4034()
{
  sub_252693460();
  sub_252692C80();
  return sub_2526934C0();
}

uint64_t sub_2523D4080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (*(a1 + v3) == *(a2 + v3) && *(a1 + v3 + 8) == *(a2 + v3 + 8))
  {
    return 1;
  }

  else
  {
    return sub_2526933B0();
  }
}

unint64_t AccessoryControl.description.getter()
{
  v1 = type metadata accessor for AccessoryControl(0);
  v2 = (v0 + *(v1 + 28));
  if (v2[1])
  {
    MEMORY[0x2530A4800](*v2);
    v4 = 47;
    v3 = 0xE100000000000000;
  }

  else
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  sub_252693210();

  v5 = AccessoryControl.ElementIdentifier.description.getter();
  MEMORY[0x2530A4800](v5);

  MEMORY[0x2530A4800](v4, v3);

  MEMORY[0x2530A4800](8236, 0xE200000000000000);
  if (*(v0 + *(v1 + 40)))
  {
    v6 = 0x64656C62616E65;
  }

  else
  {
    v6 = 0x64656C6261736964;
  }

  if (*(v0 + *(v1 + 40)))
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  MEMORY[0x2530A4800](v6, v7);

  MEMORY[0x2530A4800](0x90A7B2029, 0xE500000000000000);
  v8 = AccessoryControl.State.description.getter();
  MEMORY[0x2530A4800](v8);

  MEMORY[0x2530A4800](32010, 0xE200000000000000);
  return 0xD000000000000011;
}

uint64_t AccessoryControl.debugDescription.getter()
{
  v1 = sub_2526934F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v25 + 1) = type metadata accessor for AccessoryControl(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
  sub_2523DE7AC(v0, boxed_opaque_existential_0, type metadata accessor for AccessoryControl);
  sub_2526934D0();
  v6 = sub_2526934E0();
  (*(v2 + 8))(v4, v1);
  v17[1] = v6;
  sub_252693240();
  sub_2526932B0();
  if (*(&v26 + 1))
  {
    v7 = MEMORY[0x277D84F90];
    do
    {
      v23[0] = v24;
      v23[1] = v25;
      v23[2] = v26;
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_25237153C(v23, &v18, &qword_27F4DB580);
      if (v19)
      {
        v8 = v18;
      }

      else
      {
        v8 = 0x206E776F6E6B6E55;
      }

      if (v19)
      {
        v9 = v19;
      }

      else
      {
        v9 = 0xED00006C6562614CLL;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
      MEMORY[0x2530A4800](v8, v9);

      MEMORY[0x2530A4800](8250, 0xE200000000000000);
      sub_252693250();
      v10 = v21;
      v11 = v22;
      sub_252372288(v23, &qword_27F4DB580);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_25236880C(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_25236880C((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      v14 = &v7[16 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v11;
      sub_2526932B0();
    }

    while (*(&v26 + 1));
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  *&v24 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB570);
  sub_2523E15A4();
  v15 = sub_252692B40();

  return v15;
}

uint64_t AccessoryControl.State.description.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
  MEMORY[0x28223BE20](v0 - 8);
  v160 = &v135 - v1;
  v157 = type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);
  MEMORY[0x28223BE20](v157);
  v158 = &v135 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);
  MEMORY[0x28223BE20](v152);
  v153 = &v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
  MEMORY[0x28223BE20](v4 - 8);
  v156 = &v135 - v5;
  v147 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig(0);
  MEMORY[0x28223BE20](v147);
  v148 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C8);
  MEMORY[0x28223BE20](v155);
  v161 = &v135 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
  MEMORY[0x28223BE20](v8 - 8);
  v150 = &v135 - v9;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
  MEMORY[0x28223BE20](v154);
  v159 = &v135 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
  MEMORY[0x28223BE20](v11 - 8);
  v146 = &v135 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298);
  MEMORY[0x28223BE20](v13 - 8);
  v142 = &v135 - v14;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0);
  MEMORY[0x28223BE20](v143);
  v151 = &v135 - v15;
  v140 = type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0);
  MEMORY[0x28223BE20](v140);
  v149 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  MEMORY[0x28223BE20](v141);
  v145 = &v135 - v17;
  v135 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v135);
  v144 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD70);
  v19 = MEMORY[0x28223BE20](v138);
  v137 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v139 = &v135 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
  MEMORY[0x28223BE20](v22 - 8);
  v136 = &v135 - v23;
  v24 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ControlAction(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  MEMORY[0x28223BE20](v30);
  v32 = &v135 - v31;
  v33 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v33);
  v35 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v36);
  v38 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2523DE7AC(v162, v38, type metadata accessor for AccessoryControl.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB420) + 48);
      sub_2523E127C(v38, v35, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_2523E127C(&v38[v114], v29, type metadata accessor for ControlAction);
      *&v170 = 0;
      *(&v170 + 1) = 0xE000000000000000;
      sub_252693210();
      MEMORY[0x2530A4800](0x63286E6F69746361, 0xEF203A6769666E6FLL);
      sub_252693250();
      MEMORY[0x2530A4800](0x6E6F69746361202CLL, 0xEA0000000000203ALL);
      MEMORY[0x2530A4800](*&v29[*(v27 + 24)], *&v29[*(v27 + 24) + 8]);
      MEMORY[0x2530A4800](41, 0xE100000000000000);
      v51 = v170;
      sub_2523E12E4(v35, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v87 = type metadata accessor for ControlAction;
      v88 = v29;
      goto LABEL_17;
    case 2u:
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
      v82 = *(v81 + 48);
      v83 = *(v81 + 64);
      sub_2523E127C(v38, v26, type metadata accessor for AccessoryControl.IncrementalConfig);
      v84 = v136;
      sub_2523714D4(&v38[v82], v136, &qword_27F4DAD78);
      v85 = v139;
      sub_2523714D4(&v38[v83], v139, &qword_27F4DAD70);
      *&v170 = 0;
      *(&v170 + 1) = 0xE000000000000000;
      sub_252693210();
      MEMORY[0x2530A4800](0xD000000000000014, 0x80000002526AE5A0);
      sub_252693250();
      MEMORY[0x2530A4800](0xD000000000000014, 0x80000002526AE5C0);
      sub_2523CACC0(v84, &qword_27F4DB218, &unk_252696080, &qword_27F4DAD78);
      MEMORY[0x2530A4800](0x7972616E6962202CLL, 0xEF203A65756C6156);
      sub_25237153C(v85, v137, &qword_27F4DAD70);
      v86 = sub_252692C20();
      MEMORY[0x2530A4800](v86);

      v51 = v170;
      sub_252372288(v85, &qword_27F4DAD70);
      sub_252372288(v84, &qword_27F4DAD78);
      v55 = type metadata accessor for AccessoryControl.IncrementalConfig;
      goto LABEL_9;
    case 3u:
      v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);
      v40 = v144;
      sub_2523E127C(v38, v144, type metadata accessor for AccessoryControl.PickerViewConfig);
      v90 = v145;
      sub_2523714D4(&v38[v89], v145, &qword_27F4DAD68);
      *&v170 = 0;
      *(&v170 + 1) = 0xE000000000000000;
      sub_252693210();
      MEMORY[0x2530A4800](0x632872656B636970, 0xEF203A6769666E6FLL);
      sub_252693250();
      MEMORY[0x2530A4800](0xD000000000000010, 0x80000002526AE440);
      v91 = v90 + *(v141 + 40);
      v92 = *v91;
      LOBYTE(v91) = *(v91 + 8);
      *&v163 = v92;
      BYTE8(v163) = v91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3C8);
      v93 = sub_252692C00();
      *&v163 = 0xD000000000000016;
      *(&v163 + 1) = 0x80000002526AE500;
      MEMORY[0x2530A4800](v93);

      MEMORY[0x2530A4800](0x6E6974736564202CLL, 0xEF203A6E6F697461);

      v94 = v163;
      v95 = AccessoryControl.ValueDestination.description.getter();
      v97 = v96;
      v163 = v94;

      MEMORY[0x2530A4800](v95, v97);

      MEMORY[0x2530A4800](41, 0xE100000000000000);

      MEMORY[0x2530A4800](v163, *(&v163 + 1));

      MEMORY[0x2530A4800](41, 0xE100000000000000);
      v51 = v170;
      sub_252372288(v90, &qword_27F4DAD68);
      v52 = type metadata accessor for AccessoryControl.PickerViewConfig;
      goto LABEL_11;
    case 4u:
      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3F8) + 48);
      v40 = v149;
      sub_2523E127C(v38, v149, type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig);
      v59 = v151;
      sub_2523714D4(&v38[v58], v151, &qword_27F4DB3E0);
      *&v170 = 0;
      *(&v170 + 1) = 0xE000000000000000;
      sub_252693210();
      MEMORY[0x2530A4800](0xD000000000000014, 0x80000002526AE580);
      sub_252693250();
      MEMORY[0x2530A4800](0xD000000000000010, 0x80000002526AE440);
      *&v163 = *(v59 + *(v143 + 40));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB590);
      v60 = sub_252692C00();
      *&v163 = 0xD000000000000016;
      *(&v163 + 1) = 0x80000002526AE500;
      MEMORY[0x2530A4800](v60);

      MEMORY[0x2530A4800](0x6E6974736564202CLL, 0xEF203A6E6F697461);

      v61 = v163;
      v62 = AccessoryControl.ValueDestination.description.getter();
      v64 = v63;
      v163 = v61;

      MEMORY[0x2530A4800](v62, v64);

      MEMORY[0x2530A4800](41, 0xE100000000000000);

      MEMORY[0x2530A4800](v163, *(&v163 + 1));

      MEMORY[0x2530A4800](41, 0xE100000000000000);
      v51 = v170;
      sub_252372288(v59, &qword_27F4DB3E0);
      v52 = type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig;
      goto LABEL_11;
    case 5u:
      v170 = *v38;
      *&v171 = *(v38 + 2);
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2B0);
      v67 = &qword_27F4DB298;
      v116 = v142;
      sub_2523714D4(&v38[*(v115 + 48)], v142, &qword_27F4DB298);
      *&v163 = 0;
      *(&v163 + 1) = 0xE000000000000000;
      sub_252693210();
      v177 = v163;
      MEMORY[0x2530A4800](0x6F6328726F6C6F63, 0xEE00203A6769666ELL);
      v163 = v170;
      *&v164 = v171;
      v117 = AccessoryControl.ColorPickerConfig.description.getter();
      v119 = v118;
      sub_252394280(&v170);
      MEMORY[0x2530A4800](v117, v119);

      MEMORY[0x2530A4800](0xD000000000000010, 0x80000002526AE440);
      sub_2523CACC0(v116, &qword_27F4DB2A0, &unk_25269E4A0, &qword_27F4DB298);
      MEMORY[0x2530A4800](41, 0xE100000000000000);
      v51 = v177;
      v80 = v116;
      goto LABEL_22;
    case 6u:
      v120 = *(v38 + 5);
      v174 = *(v38 + 4);
      v175 = v120;
      v176 = *(v38 + 48);
      v121 = *(v38 + 1);
      v170 = *v38;
      v171 = v121;
      v122 = *(v38 + 3);
      v172 = *(v38 + 2);
      v173 = v122;
      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270);
      v67 = &qword_27F4DB278;
      v68 = v146;
      sub_2523714D4(&v38[*(v123 + 48)], v146, &qword_27F4DB278);
      *&v163 = 0;
      *(&v163 + 1) = 0xE000000000000000;
      sub_252693210();
      v177 = v163;
      MEMORY[0x2530A4800](0xD000000000000013, 0x80000002526AE560);
      v167 = v174;
      v168 = v175;
      v169 = v176;
      v163 = v170;
      v164 = v171;
      v166 = v173;
      v165 = v172;
      sub_252693250();
      sub_252385F08(&v170);
      MEMORY[0x2530A4800](0xD000000000000010, 0x80000002526AE440);
      sub_2523CACC0(v68, &qword_27F4DB258, &unk_252696090, &qword_27F4DB278);
      MEMORY[0x2530A4800](41, 0xE100000000000000);
      goto LABEL_19;
    case 7u:
      v98 = *v38;
      v99 = v38[8];
      v101 = *(v38 + 2);
      v100 = *(v38 + 3);
      v102 = *(v38 + 4);
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0);
      v67 = &qword_27F4DB498;
      v104 = v159;
      sub_2523714D4(&v38[*(v103 + 48)], v159, &qword_27F4DB498);
      *&v170 = 0;
      *(&v170 + 1) = 0xE000000000000000;
      sub_252693210();
      v163 = v170;
      MEMORY[0x2530A4800](0xD000000000000015, 0x80000002526AE540);
      *&v170 = v98;
      BYTE8(v170) = v99;
      *&v171 = v101;
      *(&v171 + 1) = v100;
      *&v172 = v102;
      sub_252693250();

      MEMORY[0x2530A4800](0xD000000000000010, 0x80000002526AE440);
      v105 = (v104 + *(v154 + 40));
      v106 = v105[1];
      v107 = v105[2];
      v108 = v105[3];
      *&v170 = *v105;
      *(&v170 + 1) = v106;
      *&v171 = v107;
      *(&v171 + 1) = v108;
      sub_2523E165C(v170, v106);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4B8);
      v109 = sub_252692C00();
      *&v170 = 0xD000000000000016;
      *(&v170 + 1) = 0x80000002526AE500;
      MEMORY[0x2530A4800](v109);

      MEMORY[0x2530A4800](0x6E6974736564202CLL, 0xEF203A6E6F697461);

      v110 = v170;
      v111 = AccessoryControl.ValueDestination.description.getter();
      v113 = v112;
      v170 = v110;

      MEMORY[0x2530A4800](v111, v113);

      MEMORY[0x2530A4800](41, 0xE100000000000000);

      MEMORY[0x2530A4800](v170, *(&v170 + 1));

      MEMORY[0x2530A4800](41, 0xE100000000000000);
      v51 = v163;
      v80 = v104;
      goto LABEL_22;
    case 8u:
      v127 = *v38;
      v129 = *(v38 + 1);
      v128 = *(v38 + 2);
      v130 = *(v38 + 3);
      v131 = *(v38 + 4);
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470);
      v67 = &qword_27F4DB450;
      v133 = v150;
      sub_2523714D4(&v38[*(v132 + 48)], v150, &qword_27F4DB450);
      *&v170 = 0;
      *(&v170 + 1) = 0xE000000000000000;
      sub_252693210();
      v163 = v170;
      MEMORY[0x2530A4800](0xD000000000000015, 0x80000002526AE520);
      LOBYTE(v170) = v127;
      *(&v170 + 1) = v129;
      *&v171 = v128;
      *(&v171 + 1) = v130;
      *&v172 = v131;
      sub_252693250();

      MEMORY[0x2530A4800](0xD000000000000010, 0x80000002526AE440);
      sub_2523CACC0(v133, &qword_27F4DB440, &unk_2526A1150, &qword_27F4DB450);
      MEMORY[0x2530A4800](41, 0xE100000000000000);
      v51 = v163;
      v80 = v133;
      goto LABEL_22;
    case 9u:
      v69 = *v38;
      v70 = *(v38 + 1);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4D8);
      v67 = &qword_27F4DB4C8;
      v72 = v161;
      sub_2523714D4(&v38[*(v71 + 48)], v161, &qword_27F4DB4C8);
      *&v170 = 0;
      *(&v170 + 1) = 0xE000000000000000;
      sub_252693210();
      MEMORY[0x2530A4800](0xD000000000000019, 0x80000002526AE4E0);
      LOBYTE(v163) = v69;
      *(&v163 + 1) = v70;
      sub_252693250();

      MEMORY[0x2530A4800](0xD000000000000010, 0x80000002526AE440);
      v73 = (v72 + *(v155 + 40));
      v74 = v73[1];
      *&v163 = *v73;
      *(&v163 + 1) = v74;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB588);
      v75 = sub_252692C00();
      *&v163 = 0xD000000000000016;
      *(&v163 + 1) = 0x80000002526AE500;
      MEMORY[0x2530A4800](v75);

      MEMORY[0x2530A4800](0x6E6974736564202CLL, 0xEF203A6E6F697461);

      v76 = v163;
      v77 = AccessoryControl.ValueDestination.description.getter();
      v79 = v78;
      v163 = v76;

      MEMORY[0x2530A4800](v77, v79);

      MEMORY[0x2530A4800](41, 0xE100000000000000);

      MEMORY[0x2530A4800](v163, *(&v163 + 1));

      MEMORY[0x2530A4800](41, 0xE100000000000000);
      v51 = v170;
      v80 = v72;
      goto LABEL_22;
    case 0xAu:
      v125 = *v38;
      v124 = *(v38 + 1);
      v126 = v38[16];
      *&v170 = 0;
      *(&v170 + 1) = 0xE000000000000000;
      sub_252693210();
      v163 = v170;
      MEMORY[0x2530A4800](0xD000000000000016, 0x80000002526AE4C0);
      *&v170 = v125;
      *(&v170 + 1) = v124;
      LOBYTE(v171) = v126;
      sub_252693250();

      MEMORY[0x2530A4800](41, 0xE100000000000000);
      return v163;
    case 0xBu:
      v56 = v148;
      sub_2523E127C(v38, v148, type metadata accessor for AccessoryControl.AlarmAndTimerConfig);
      *&v170 = 0;
      *(&v170 + 1) = 0xE000000000000000;
      sub_252693210();
      MEMORY[0x2530A4800](0xD000000000000018, 0x80000002526AE4A0);
      sub_252693250();
      MEMORY[0x2530A4800](41, 0xE100000000000000);
      v51 = v170;
      v57 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig;
      goto LABEL_16;
    case 0xCu:
      v65 = *(v38 + 1);
      v170 = *v38;
      v171 = v65;
      v172 = *(v38 + 2);
      *&v173 = *(v38 + 6);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F0);
      v67 = &qword_27F4DB2F8;
      v68 = v156;
      sub_2523714D4(&v38[*(v66 + 48)], v156, &qword_27F4DB2F8);
      *&v163 = 0;
      *(&v163 + 1) = 0xE000000000000000;
      sub_252693210();
      v177 = v163;
      MEMORY[0x2530A4800](0xD00000000000001BLL, 0x80000002526AE480);
      v163 = v170;
      v164 = v171;
      v165 = v172;
      *&v166 = v173;
      sub_252693250();
      MEMORY[0x2530A4800](0xD000000000000010, 0x80000002526AE440);
      sub_2523CACC0(v68, &qword_27F4DB2E8, &unk_2526960A0, &qword_27F4DB2F8);
      MEMORY[0x2530A4800](41, 0xE100000000000000);
      sub_2523E1608(&v170);
LABEL_19:
      v51 = v177;
      v80 = v68;
LABEL_22:
      sub_252372288(v80, v67);
      return v51;
    case 0xDu:
      v56 = v153;
      sub_2523E127C(v38, v153, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig);
      *&v170 = 0;
      *(&v170 + 1) = 0xE000000000000000;
      sub_252693210();
      MEMORY[0x2530A4800](0xD000000000000015, 0x80000002526AE460);
      sub_252693250();
      MEMORY[0x2530A4800](41, 0xE100000000000000);
      v51 = v170;
      v57 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig;
LABEL_16:
      v87 = v57;
      v88 = v56;
      goto LABEL_17;
    case 0xEu:
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB348) + 48);
      v26 = v158;
      sub_2523E127C(v38, v158, type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig);
      v54 = v160;
      sub_2523714D4(&v38[v53], v160, &qword_27F4DB350);
      *&v170 = 0;
      *(&v170 + 1) = 0xE000000000000000;
      sub_252693210();
      MEMORY[0x2530A4800](0xD00000000000001ALL, 0x80000002526AE420);
      sub_252693250();
      MEMORY[0x2530A4800](0xD000000000000010, 0x80000002526AE440);
      sub_2523CACC0(v54, &qword_27F4DB378, &unk_2526954D8, &qword_27F4DB350);
      MEMORY[0x2530A4800](41, 0xE100000000000000);
      v51 = v170;
      sub_252372288(v54, &qword_27F4DB350);
      v55 = type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig;
LABEL_9:
      v87 = v55;
      v88 = v26;
      goto LABEL_17;
    default:
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);
      v40 = v35;
      sub_2523E127C(v38, v35, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_2523714D4(&v38[v39], v32, &qword_27F4DAD80);
      *&v170 = 0;
      *(&v170 + 1) = 0xE000000000000000;
      sub_252693210();
      v163 = v170;
      MEMORY[0x2530A4800](0x63287972616E6962, 0xEF203A6769666E6FLL);
      sub_252693250();
      MEMORY[0x2530A4800](0xD000000000000010, 0x80000002526AE440);
      v41 = &v32[*(v30 + 40)];
      v42 = *(v41 + 1);
      v43 = *(v41 + 2);
      v44 = *(v41 + 3);
      v45 = *(v41 + 4);
      *&v170 = *v41;
      *(&v170 + 1) = v42;
      *&v171 = v43;
      *(&v171 + 1) = v44;
      *&v172 = v45;
      sub_25239F750(v170, v42, v43, v44, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4E0);
      v46 = sub_252692C00();
      *&v170 = 0xD000000000000016;
      *(&v170 + 1) = 0x80000002526AE500;
      MEMORY[0x2530A4800](v46);

      MEMORY[0x2530A4800](0x6E6974736564202CLL, 0xEF203A6E6F697461);

      v47 = v170;
      v48 = AccessoryControl.ValueDestination.description.getter();
      v50 = v49;
      v170 = v47;

      MEMORY[0x2530A4800](v48, v50);

      MEMORY[0x2530A4800](41, 0xE100000000000000);

      MEMORY[0x2530A4800](v170, *(&v170 + 1));

      MEMORY[0x2530A4800](41, 0xE100000000000000);
      v51 = v163;
      sub_252372288(v32, &qword_27F4DAD80);
      v52 = type metadata accessor for AccessoryControl.BinaryViewConfig;
LABEL_11:
      v87 = v52;
      v88 = v40;
LABEL_17:
      sub_2523E12E4(v88, v87);
      return v51;
  }
}

unint64_t ControlBinding.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + *(v4 + 40), v3);
  v7 = sub_252692C00();
  v14 = 0xD000000000000016;
  v15 = 0x80000002526AE500;
  MEMORY[0x2530A4800](v7);

  MEMORY[0x2530A4800](0x6E6974736564202CLL, 0xEF203A6E6F697461);

  v9 = v14;
  v8 = v15;
  v10 = AccessoryControl.ValueDestination.description.getter();
  v12 = v11;
  v14 = v9;
  v15 = v8;

  MEMORY[0x2530A4800](v10, v12);

  MEMORY[0x2530A4800](41, 0xE100000000000000);

  return v14;
}

uint64_t ControlBinding.debugDescription.getter()
{
  sub_252693210();
  MEMORY[0x2530A4800](0xD00000000000001CLL, 0x80000002526AE5E0);
  v0 = AccessoryControl.ValueDestination.description.getter();
  MEMORY[0x2530A4800](v0);

  MEMORY[0x2530A4800](0x636974617473202CLL, 0xEF203A65756C6156);
  sub_252693390();
  return 0;
}

uint64_t sub_2523D6884(__int128 *a1)
{
  v3 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  v17 = *(v3 - 8);
  v18 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v17 - v14;
  sub_25237153C(v1, &v17 - v14, &qword_27F4DB440);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    return sub_252693480();
  }

  sub_2523E127C(v15, v12, type metadata accessor for AccessoryControl.StatusButtonState);
  sub_252693480();
  sub_252692C80();
  if (*(v12 + 3))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  sub_25237153C(&v12[*(v9 + 24)], v8, &qword_27F4DB458);
  if ((*(v17 + 48))(v8, 1, v18) == 1)
  {
    sub_252693480();
  }

  else
  {
    sub_2523E127C(v8, v5, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    sub_252693480();
    AccessoryControl.PickerButtonState.SelectionState.hash(into:)(a1);
    sub_2523E12E4(v5, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
  }

  sub_252693480();
  if (v12[*(v9 + 32)] != 2)
  {
    sub_252693480();
  }

  sub_252693480();
  return sub_2523E12E4(v12, type metadata accessor for AccessoryControl.StatusButtonState);
}

uint64_t sub_2523D6C14(uint64_t a1)
{
  v20[1] = a1;
  v2 = sub_25268ED20();
  v20[0] = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - v6;
  v8 = type metadata accessor for AccessoryControl.ColorState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v20 - v13;
  sub_25237153C(v1, v20 - v13, &qword_27F4DB2A0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    return sub_252693480();
  }

  sub_2523E127C(v14, v11, type metadata accessor for AccessoryControl.ColorState);
  sub_252693480();
  sub_25237153C(v11, v7, &qword_27F4DB2A8);
  v16 = v20[0];
  if ((*(v20[0] + 48))(v7, 1, v2) == 1)
  {
    sub_252693480();
  }

  else
  {
    (*(v16 + 32))(v4, v7, v2);
    sub_252693480();
    sub_2523E1344(&qword_27F4DB798, MEMORY[0x277D15B48]);
    sub_252692B30();
    (*(v16 + 8))(v4, v2);
  }

  v17 = &v11[*(v8 + 20)];
  if (v17[8] == 1)
  {
    sub_252693480();
  }

  else
  {
    v18 = *v17;
    sub_252693480();
    if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    MEMORY[0x2530A5020](v19);
  }

  return sub_2523E12E4(v11, type metadata accessor for AccessoryControl.ColorState);
}

uint64_t sub_2523D6FA4(uint64_t a1)
{
  v3 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB300);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  sub_25237153C(v1, &v26 - v14, &qword_27F4DB2E8);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    return sub_252693480();
  }

  sub_2523E127C(v15, v12, type metadata accessor for AccessoryControl.AutoClimateState);
  sub_252693480();
  if (*v12 == 2)
  {
    sub_252693480();
  }

  else
  {
    sub_252693480();
    sub_252692C80();
  }

  sub_25237153C(&v12[v9[5]], v8, &qword_27F4DB300);
  if ((*(v26 + 48))(v8, 1, v27) == 1)
  {
    sub_252693480();
  }

  else
  {
    sub_2523E127C(v8, v5, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    sub_252693480();
    AccessoryControl.AutoClimateState.AutoClimateHold.hash(into:)(a1);
    sub_2523E12E4(v5, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  }

  v17 = &v12[v9[6]];
  v18 = v17[1];
  if (v18 != 7)
  {
    v19 = *v17;
    sub_252693480();
    if (v18 <= 2)
    {
      switch(v18)
      {
        case 0:
          MEMORY[0x2530A4FE0](0);
          v20 = v19;
          v21 = 0;
          goto LABEL_27;
        case 1:
          MEMORY[0x2530A4FE0](1);
          v20 = v19;
          v21 = 1;
          goto LABEL_27;
        case 2:
          MEMORY[0x2530A4FE0](2);
          v20 = v19;
          v21 = 2;
LABEL_27:
          sub_25235E2A8(v20, v21);
          goto LABEL_28;
      }
    }

    else
    {
      if (v18 <= 4)
      {
        if (v18 == 3)
        {
          MEMORY[0x2530A4FE0](3);
          v20 = v19;
          v21 = 3;
        }

        else
        {
          MEMORY[0x2530A4FE0](4);
          v20 = v19;
          v21 = 4;
        }

        goto LABEL_27;
      }

      if (v18 == 5)
      {
        MEMORY[0x2530A4FE0](5);
        v20 = v19;
        v21 = 5;
        goto LABEL_27;
      }

      if (v18 == 6)
      {
        MEMORY[0x2530A4FE0](6);
        v20 = v19;
        v21 = 6;
        goto LABEL_27;
      }
    }

    MEMORY[0x2530A4FE0](7);
    sub_25235E190(v19, v18);
    sub_252692C80();
    sub_252693480();
    v20 = v19;
    v21 = v18;
    goto LABEL_27;
  }

  sub_252693480();
LABEL_28:
  v22 = v12[v9[7]];
  sub_252693480();
  if (v22 != 3)
  {
    MEMORY[0x2530A4FE0](v22);
  }

  v23 = &v12[v9[8]];
  if (v23[8] == 1)
  {
    sub_252693480();
  }

  else
  {
    v24 = *v23;
    sub_252693480();
    if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    MEMORY[0x2530A5020](v25);
  }

  return sub_2523E12E4(v12, type metadata accessor for AccessoryControl.AutoClimateState);
}

uint64_t sub_2523D74EC(__int128 *a1, uint64_t a2)
{
  v4 = sub_25268DA10();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v23 = v10;
  v24 = v9;
  v11 = sub_2526934C0();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v11;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v14; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
    v21 = sub_252692B20();
    result = (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x2530A4FE0](v17);
    }

    v14 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2523D7718(uint64_t a1, uint64_t a2)
{
  result = sub_2526934C0();
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  for (i = (v7 + 63) >> 6; v9; v5 ^= result)
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    result = MEMORY[0x2530A4FB0](v4, *(*(a2 + 48) + ((v11 << 8) | (4 * v12))), 4);
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= i)
    {
      return MEMORY[0x2530A4FE0](v5);
    }

    v9 = *(a2 + 56 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2523D782C(__int128 *a1, uint64_t a2)
{
  v35 = sub_25268DA10();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = a1[3];
  v41 = a1[2];
  v42 = v12;
  v43 = *(a1 + 8);
  v14 = *a1;
  v13 = a1[1];
  v30 = a1;
  v39 = v14;
  v40 = v13;
  v36 = sub_2526934C0();
  v15 = a2 + 56;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 56);
  v19 = (v16 + 63) >> 6;
  v32 = (v4 + 32);
  v31 = (v4 + 8);

  v21 = 0;
  v22 = 0;
  v33 = a2;
  while (v18)
  {
LABEL_11:
    sub_2523DE7AC(*(a2 + 48) + *(v37 + 72) * (__clz(__rbit64(v18)) | (v22 << 6)), v11, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    sub_252693460();
    sub_2523DE7AC(v11, v9, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
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
        v27 = v34;
        v28 = v35;
        (*v32)(v34, v9, v35);
        MEMORY[0x2530A4FE0](2);
        sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
        sub_252692B30();
        v29 = v27;
        a2 = v33;
        (*v31)(v29, v28);
      }
    }

    else
    {
      v23 = *v9;
      MEMORY[0x2530A4FE0](0);
      MEMORY[0x2530A4FE0](v23);
    }

    v18 &= v18 - 1;
    v24 = sub_2526934C0();
    result = sub_2523E12E4(v11, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v21 ^= v24;
  }

  while (1)
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v25 >= v19)
    {

      return MEMORY[0x2530A4FE0](v21);
    }

    v18 = *(v15 + 8 * v25);
    ++v22;
    if (v18)
    {
      v22 = v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2523D7BEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v18[13] = *(a1 + 32);
  *&v18[15] = v3;
  v18[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v18[9] = *a1;
  *&v18[11] = v4;
  sub_2526934C0();
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= v17)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = *(a2 + 48) + ((v12 << 10) | (16 * v13));
    v15 = *v14;
    v16 = *(v14 + 8);
    sub_252693460();
    MEMORY[0x2530A4FE0](v16);

    sub_2523D782C(v18, v15);
    v17 = sub_2526934C0();
    result = j__swift_bridgeObjectRelease();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x2530A4FE0](v10);
    }

    v7 = *(a2 + 56 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2523D7D58(uint64_t a1, uint64_t a2)
{
  result = sub_2526934C0();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + ((v10 << 9) | (8 * v11)));
    sub_252693460();
    MEMORY[0x2530A4FE0](v12);
    result = sub_2526934C0();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x2530A4FE0](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2523D7E88(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Device.Control(0);
  v54 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  v62 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v62);
  v63 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Device.ControlGroup(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a2;
  v19 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v19, v16);
  v61 = v19;
  if (v19)
  {
    v21 = v18;
    v22 = *(v14 + 24);
    v23 = &v18[*(v14 + 20)];
    v59 = &v18[v22];
    v60 = v18;
    v58 = v70 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v57 = *(v15 + 72);
    v24 = 0;
    v52 = v6;
    v53 = v4;
    v55 = v23;
    do
    {
      sub_2523DE7AC(v58 + v57 * v24, v21, type metadata accessor for Device.ControlGroup);
      sub_2523DE7AC(v21, v63, type metadata accessor for Device.ControlGroup.LayoutType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v26 = *v63;
          MEMORY[0x2530A4FE0](1);
          v27 = *(v26 + 16);
          MEMORY[0x2530A4FE0](v27);
          if (!v27)
          {
LABEL_39:

            v23 = v55;
            if (!*(v55 + 1))
            {
              goto LABEL_40;
            }

            goto LABEL_50;
          }

          v56 = v24;
          v28 = v4[5];
          v69 = v4[6];
          v70 = v28;
          v29 = v4[7];
          v67 = &v9[v4[8]];
          v68 = v29;
          v30 = v4[10];
          v31 = &v9[v4[9]];
          v65 = v4[11];
          v66 = v30;
          v32 = v26 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
          v64 = *(v54 + 72);
          while (2)
          {
            v33 = v26;
            sub_2523DE7AC(v32, v9, type metadata accessor for Device.Control);
            sub_25268DA10();
            sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
            sub_252692B30();
            Device.Control.Kind.hash(into:)(a1);
            Device.Control.Source.hash(into:)(a1);
            MEMORY[0x2530A4FE0](v9[v68]);
            if (*(v67 + 1))
            {
              sub_252693480();
              sub_252692C80();
            }

            else
            {
              sub_252693480();
            }

            v34 = *v31;
            v35 = v31[1];
            if (v34 == 4)
            {
              sub_252693480();
              if (v35 != 4)
              {
                goto LABEL_16;
              }

LABEL_18:
              sub_252693480();
            }

            else
            {
              sub_252693480();
              MEMORY[0x2530A4FE0](v34);
              if (v35 == 4)
              {
                goto LABEL_18;
              }

LABEL_16:
              sub_252693480();
              MEMORY[0x2530A4FE0](v35);
            }

            v36 = v9[v66];
            sub_252693480();
            if (v36 != 16)
            {
              MEMORY[0x2530A4FE0](v36);
            }

            v26 = v33;
            sub_252693480();
            sub_2523E12E4(v9, type metadata accessor for Device.Control);
            v32 += v64;
            if (!--v27)
            {
              goto LABEL_35;
            }

            continue;
          }
        }

        sub_2523E127C(v63, v6, type metadata accessor for Device.Control);
        MEMORY[0x2530A4FE0](2);
        sub_25268DA10();
        sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
        sub_252692B30();
        Device.Control.Kind.hash(into:)(a1);
        Device.Control.Source.hash(into:)(a1);
        MEMORY[0x2530A4FE0](v6[v4[7]]);
        if (*&v6[v4[8] + 8])
        {
          sub_252693480();
          sub_252692C80();
        }

        else
        {
          sub_252693480();
        }

        v48 = &v6[v4[9]];
        v49 = *v48;
        v50 = v48[1];
        if (v49 == 4)
        {
          sub_252693480();
          if (v50 != 4)
          {
            goto LABEL_44;
          }

LABEL_46:
          sub_252693480();
        }

        else
        {
          sub_252693480();
          MEMORY[0x2530A4FE0](v49);
          if (v50 == 4)
          {
            goto LABEL_46;
          }

LABEL_44:
          sub_252693480();
          MEMORY[0x2530A4FE0](v50);
        }

        v51 = v6[v4[10]];
        sub_252693480();
        if (v51 != 16)
        {
          MEMORY[0x2530A4FE0](v51);
        }

        sub_252693480();
        sub_2523E12E4(v6, type metadata accessor for Device.Control);
        if (*(v23 + 1))
        {
          goto LABEL_50;
        }

LABEL_40:
        sub_252693480();
        goto LABEL_51;
      }

      v37 = *v63;
      MEMORY[0x2530A4FE0](0);
      v38 = *(v37 + 16);
      MEMORY[0x2530A4FE0](v38);
      if (!v38)
      {
        goto LABEL_39;
      }

      v56 = v24;
      v39 = v4[5];
      v69 = v4[6];
      v70 = v39;
      v40 = v4[7];
      v67 = &v12[v4[8]];
      v68 = v40;
      v41 = v4[10];
      v42 = &v12[v4[9]];
      v65 = v4[11];
      v66 = v41;
      v43 = v37 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v64 = *(v54 + 72);
      do
      {
        v44 = v37;
        sub_2523DE7AC(v43, v12, type metadata accessor for Device.Control);
        sub_25268DA10();
        sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
        sub_252692B30();
        Device.Control.Kind.hash(into:)(a1);
        Device.Control.Source.hash(into:)(a1);
        MEMORY[0x2530A4FE0](v12[v68]);
        if (*(v67 + 1))
        {
          sub_252693480();
          sub_252692C80();
        }

        else
        {
          sub_252693480();
        }

        v45 = *v42;
        v46 = v42[1];
        if (v45 == 4)
        {
          sub_252693480();
          if (v46 != 4)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_252693480();
          MEMORY[0x2530A4FE0](v45);
          if (v46 != 4)
          {
LABEL_30:
            sub_252693480();
            MEMORY[0x2530A4FE0](v46);
            goto LABEL_33;
          }
        }

        sub_252693480();
LABEL_33:
        v47 = v12[v66];
        sub_252693480();
        if (v47 != 16)
        {
          MEMORY[0x2530A4FE0](v47);
        }

        v37 = v44;
        sub_252693480();
        sub_2523E12E4(v12, type metadata accessor for Device.Control);
        v43 += v64;
        --v38;
      }

      while (v38);
LABEL_35:

      v6 = v52;
      v4 = v53;
      v23 = v55;
      v24 = v56;
      if (!*(v55 + 1))
      {
        goto LABEL_40;
      }

LABEL_50:
      sub_252693480();
      sub_252692C80();
LABEL_51:
      if (*(v59 + 1))
      {
        sub_252693480();
        sub_252692C80();
      }

      else
      {
        sub_252693480();
      }

      ++v24;
      v21 = v60;
      result = sub_2523E12E4(v60, type metadata accessor for Device.ControlGroup);
    }

    while (v24 != v61);
  }

  return result;
}

uint64_t sub_2523D87F4(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Device.Control(0);
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v9, v6);
  if (v9)
  {
    v11 = v4[5];
    v24 = v4[6];
    v25 = v11;
    v12 = v4[8];
    v23 = v4[7];
    v13 = &v8[v12];
    v14 = v4[10];
    v15 = &v8[v4[9]];
    v21[1] = v4[11];
    v22 = v14;
    v16 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    do
    {
      sub_2523DE7AC(v16, v8, type metadata accessor for Device.Control);
      sub_25268DA10();
      sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
      sub_252692B30();
      Device.Control.Kind.hash(into:)(a1);
      Device.Control.Source.hash(into:)(a1);
      MEMORY[0x2530A4FE0](v8[v23]);
      if (*(v13 + 1))
      {
        sub_252693480();
        sub_252692C80();
      }

      else
      {
        sub_252693480();
      }

      v18 = *v15;
      v19 = v15[1];
      if (v18 == 4)
      {
        sub_252693480();
        if (v19 != 4)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_252693480();
        MEMORY[0x2530A4FE0](v18);
        if (v19 != 4)
        {
LABEL_11:
          sub_252693480();
          MEMORY[0x2530A4FE0](v19);
          goto LABEL_12;
        }
      }

      sub_252693480();
LABEL_12:
      v20 = v8[v22];
      sub_252693480();
      if (v20 != 16)
      {
        MEMORY[0x2530A4FE0](v20);
      }

      sub_252693480();
      result = sub_2523E12E4(v8, type metadata accessor for Device.Control);
      v16 += v17;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_2523D8AB4(__int128 *a1, uint64_t a2)
{
  v47 = sub_25268DA10();
  v4 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v12);
  v35 = v12;
  if (v12)
  {
    v14 = 0;
    v34 = a2 + 32;
    v44 = (v4 + 8);
    v45 = (v4 + 32);
    v48 = v6;
    do
    {
      v41 = v14;
      v15 = (v34 + 80 * v14);
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = v15[2];
      v19 = *(v15 + 24);
      v20 = v15[5];
      v21 = v15[6];
      v22 = v15[7];
      v36 = v15[4];
      v37 = v21;
      v23 = v15[9];
      v38 = v15[8];
      MEMORY[0x2530A4FE0](v16);
      MEMORY[0x2530A4FE0](v17);
      v39 = v18;
      v40 = v22;
      v42 = v23;
      v43 = v20;
      if (v19)
      {
        MEMORY[0x2530A4FE0](1);

        sub_2523DC4BC(a1, v18);
      }

      else
      {
        MEMORY[0x2530A4FE0](0);
        MEMORY[0x2530A4FE0](*(v18 + 16));
        v24 = *(v18 + 16);
        if (v24)
        {
          v49 = *(v33 + 24);
          v25 = v18 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
          v26 = *(v32 + 72);

          do
          {
            sub_2523DE7AC(v25, v11, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
            sub_2523DE7AC(v11, v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
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
                v29 = v46;
                v30 = v47;
                (*v45)(v46, v8, v47);
                MEMORY[0x2530A4FE0](2);
                sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
                sub_252692B30();
                (*v44)(v29, v30);
              }
            }

            else
            {
              v27 = *v8;
              MEMORY[0x2530A4FE0](0);
              MEMORY[0x2530A4FE0](v27);
            }

            sub_252692C80();
            MEMORY[0x2530A4FE0](v11[v49]);
            sub_2523E12E4(v11, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
            v25 += v26;
            --v24;
          }

          while (v24);
        }

        else
        {
        }
      }

      if (v43)
      {
        sub_252693480();
        sub_252692C80();
      }

      else
      {
        sub_252693480();
      }

      v31 = v42;
      if (v40)
      {
        sub_252693480();
        sub_252692C80();
        if (!v31)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_252693480();
        if (!v31)
        {
LABEL_23:
          sub_252693480();
          goto LABEL_4;
        }
      }

      sub_252693480();
      sub_252692C80();
LABEL_4:

      v14 = v41 + 1;
    }

    while (v41 + 1 != v35);
  }

  return result;
}

uint64_t sub_2523D8FD0(uint64_t a1, uint64_t a2)
{
  v30 = sub_25268DA10();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v12);
  if (v12)
  {
    v14 = v3;
    v15 = *(v8 + 24);
    v16 = a2;
    v17 = &v11[*(v8 + 20)];
    v18 = v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v31 = *(v9 + 72);
    v26 = (v14 + 8);
    v27 = (v14 + 32);
    v28 = v17;
    do
    {
      sub_2523DE7AC(v18, v11, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
      sub_2523DE7AC(v11, v7, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
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
          v21 = v15;
          v22 = v5;
          v23 = v29;
          v24 = v30;
          (*v27)(v29, v7, v30);
          MEMORY[0x2530A4FE0](2);
          sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
          sub_252692B30();
          v25 = v23;
          v5 = v22;
          v15 = v21;
          (*v26)(v25, v24);
        }
      }

      else
      {
        v19 = *v7;
        MEMORY[0x2530A4FE0](0);
        MEMORY[0x2530A4FE0](v19);
      }

      sub_252692C80();
      MEMORY[0x2530A4FE0](v11[v15]);
      result = sub_2523E12E4(v11, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
      v18 += v31;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_2523D9328(__int128 *a1, uint64_t a2)
{
  v60 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig();
  MEMORY[0x28223BE20](v60);
  v59 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl(0);
  v57 = *(v5 - 1);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v58 = &v55 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v63 = &v55 - v12;
  MEMORY[0x28223BE20](v11);
  v72 = &v55 - v13;
  v71 = type metadata accessor for AccessoryControlGroup.Layout(0);
  MEMORY[0x28223BE20](v71);
  v73 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for AccessoryControlGroup(0);
  v16 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v19);
  v70 = v19;
  if (v19)
  {
    v21 = v15[5];
    v68 = &v18[v15[6]];
    v69 = v21;
    v22 = v15[7];
    v23 = 0;
    v67 = &v18[v22];
    v66 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v24 = *(v16 + 72);
    v64 = v18;
    v65 = v24;
    v56 = v5;
    while (1)
    {
      sub_2523DE7AC(v66 + v65 * v23, v18, type metadata accessor for AccessoryControlGroup);
      AccessoryControl.ElementIdentifier.hash(into:)(a1);
      sub_2523DE7AC(&v18[v69], v73, type metadata accessor for AccessoryControlGroup.Layout);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0) + 48);
          v45 = v73;
          v46 = v63;
          sub_2523E127C(v73, v63, type metadata accessor for AccessoryControl);
          v47 = v59;
          sub_2523E127C(v45 + v44, v59, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
          MEMORY[0x2530A4FE0](3);
          AccessoryControl.hash(into:)(a1);
          sub_25268F0E0();
          sub_2523E1344(&qword_27F4DB788, MEMORY[0x277D15DB8]);
          sub_252692B30();
          v48 = v60;
          MEMORY[0x2530A4FE0](*(v47 + *(v60 + 20)));
          v49 = *(v48 + 24);
          v18 = v64;
          MEMORY[0x2530A4FE0](*(v47 + v49));
          sub_2523E12E4(v47, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
          sub_2523E12E4(v46, type metadata accessor for AccessoryControl);
          goto LABEL_37;
        }

        v27 = *v73;
        MEMORY[0x2530A4FE0](2);
        v28 = *(v27 + 16);
        MEMORY[0x2530A4FE0](v28);
        if (!v28)
        {

          goto LABEL_37;
        }

        v61 = v27;
        v62 = v23;
        v29 = v5[5];
        v76 = v5[6];
        v77 = v29;
        v30 = &v8[v5[7]];
        v31 = &v8[v5[8]];
        v32 = v5[9];
        v74 = v5[10];
        v75 = v32;
        v33 = v27 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
        v34 = *(v57 + 72);
        while (2)
        {
          sub_2523DE7AC(v33, v8, type metadata accessor for AccessoryControl);
          AccessoryControl.ElementIdentifier.hash(into:)(a1);
          AccessoryControl.State.hash(into:)(a1);
          MEMORY[0x2530A4FE0](v8[v76]);
          if (*(v30 + 1))
          {
            sub_252693480();
            sub_252692C80();
          }

          else
          {
            sub_252693480();
          }

          v35 = *v31;
          v36 = v31[1];
          if (v35 == 4)
          {
            sub_252693480();
            if (v36 != 4)
            {
              goto LABEL_19;
            }

LABEL_21:
            sub_252693480();
          }

          else
          {
            sub_252693480();
            MEMORY[0x2530A4FE0](v35);
            if (v36 == 4)
            {
              goto LABEL_21;
            }

LABEL_19:
            sub_252693480();
            MEMORY[0x2530A4FE0](v36);
          }

          v37 = v8[v75];
          sub_252693480();
          if (v37 != 16)
          {
            MEMORY[0x2530A4FE0](v37);
          }

          sub_252693480();
          sub_2523E12E4(v8, type metadata accessor for AccessoryControl);
          v33 += v34;
          if (!--v28)
          {

            v5 = v56;
            v18 = v64;
            v23 = v62;
            goto LABEL_37;
          }

          continue;
        }
      }

      if (!EnumCaseMultiPayload)
      {
        break;
      }

      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0) + 48);
      v39 = v73;
      v40 = v63;
      sub_2523E127C(v73, v63, type metadata accessor for AccessoryControl);
      v41 = v39 + v38;
      v42 = v58;
      sub_2523E127C(v41, v58, type metadata accessor for AccessoryControl);
      MEMORY[0x2530A4FE0](1);
      AccessoryControl.hash(into:)(a1);
      AccessoryControl.hash(into:)(a1);
      sub_2523E12E4(v42, type metadata accessor for AccessoryControl);
      v43 = v40;
LABEL_36:
      sub_2523E12E4(v43, type metadata accessor for AccessoryControl);
      v18 = v64;
LABEL_37:
      sub_252692C80();
      if (*(v67 + 1))
      {
        sub_252693480();
        sub_252692C80();
      }

      else
      {
        sub_252693480();
      }

      ++v23;
      result = sub_2523E12E4(v18, type metadata accessor for AccessoryControlGroup);
      if (v23 == v70)
      {
        return result;
      }
    }

    v26 = v72;
    sub_2523E127C(v73, v72, type metadata accessor for AccessoryControl);
    MEMORY[0x2530A4FE0](0);
    AccessoryControl.ElementIdentifier.hash(into:)(a1);
    AccessoryControl.State.hash(into:)(a1);
    MEMORY[0x2530A4FE0](*(v26 + v5[6]));
    if (*(v26 + v5[7] + 8))
    {
      sub_252693480();
      sub_252692C80();
    }

    else
    {
      sub_252693480();
    }

    v50 = (v72 + v5[8]);
    v51 = *v50;
    v52 = v50[1];
    if (v51 == 4)
    {
      sub_252693480();
      if (v52 != 4)
      {
LABEL_30:
        sub_252693480();
        MEMORY[0x2530A4FE0](v52);
LABEL_33:
        v53 = *(v72 + v5[9]);
        sub_252693480();
        if (v53 != 16)
        {
          MEMORY[0x2530A4FE0](v53);
        }

        v54 = v72;
        sub_252693480();
        v43 = v54;
        goto LABEL_36;
      }
    }

    else
    {
      sub_252693480();
      MEMORY[0x2530A4FE0](v51);
      if (v52 != 4)
      {
        goto LABEL_30;
      }
    }

    sub_252693480();
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_2523D9BE4(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v8);
  if (v8)
  {
    v10 = v4[5];
    v21 = v4[6];
    v22 = v10;
    v11 = &v7[v4[7]];
    v12 = &v7[v4[8]];
    v13 = v4[9];
    v19 = v4[10];
    v20 = v13;
    v14 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    do
    {
      sub_2523DE7AC(v14, v7, type metadata accessor for AccessoryControl);
      AccessoryControl.ElementIdentifier.hash(into:)(a1);
      AccessoryControl.State.hash(into:)(a1);
      MEMORY[0x2530A4FE0](v7[v21]);
      if (*(v11 + 1))
      {
        sub_252693480();
        sub_252692C80();
      }

      else
      {
        sub_252693480();
      }

      v16 = *v12;
      v17 = v12[1];
      if (v16 == 4)
      {
        sub_252693480();
        if (v17 != 4)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_252693480();
        MEMORY[0x2530A4FE0](v16);
        if (v17 != 4)
        {
LABEL_11:
          sub_252693480();
          MEMORY[0x2530A4FE0](v17);
          goto LABEL_12;
        }
      }

      sub_252693480();
LABEL_12:
      v18 = v7[v20];
      sub_252693480();
      if (v18 != 16)
      {
        MEMORY[0x2530A4FE0](v18);
      }

      sub_252693480();
      result = sub_2523E12E4(v7, type metadata accessor for AccessoryControl);
      v14 += v15;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_2523D9E44(uint64_t a1, uint64_t a2)
{
  v45 = sub_25268D990();
  v4 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_25268DB10();
  v6 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v44 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v37 - v11;
  v12 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v19);
  if (v19)
  {
    v21 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v22 = *(v13 + 72);
    v42 = (v4 + 48);
    v43 = (v6 + 32);
    v37 = (v4 + 8);
    v38 = (v4 + 32);
    v40 = v22;
    v41 = (v6 + 8);
    do
    {
      sub_2523DE7AC(v21, v18, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      sub_2523DE7AC(v18, v16, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      v25 = (*(*(v24 - 8) + 48))(v16, 3, v24);
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }
      }

      else
      {
        if (!v25)
        {
          v26 = *v16;
          v27 = *(v24 + 48);
          v28 = *(v24 + 64);
          v29 = v46;
          v30 = a1;
          sub_2523714D4(&v16[v27], v46, &qword_27F4DB2D8);
          (*v43)(v47, &v16[v28], v48);
          MEMORY[0x2530A4FE0](3);
          v31 = v45;
          MEMORY[0x2530A4FE0](v26);
          v32 = v44;
          sub_25237153C(v29, v44, &qword_27F4DB2D8);
          if ((*v42)(v32, 1, v31) == 1)
          {
            sub_252693480();
          }

          else
          {
            v33 = v39;
            v34 = v45;
            (*v38)(v39, v32, v45);
            sub_252693480();
            sub_2523E1344(&qword_27F4DB768, MEMORY[0x277CC9578]);
            sub_252692B30();
            (*v37)(v33, v34);
          }

          v22 = v40;
          a1 = v30;
          sub_2523E1344(&qword_27F4DB770, MEMORY[0x277CC9A70]);
          v35 = v47;
          v36 = v48;
          sub_252692B30();
          (*v41)(v35, v36);
          sub_252372288(v46, &qword_27F4DB2D8);
          goto LABEL_5;
        }

        v23 = 0;
      }

      MEMORY[0x2530A4FE0](v23);
LABEL_5:
      result = sub_2523E12E4(v18, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      v21 += v22;
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t sub_2523DA3A4(uint64_t a1, uint64_t a2)
{
  v50 = sub_25268DB10();
  v3 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_25268D990();
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v14);
  if (v14)
  {
    v16 = *(v10 + 20);
    v17 = type metadata accessor for ControlAction(0);
    v18 = v5;
    v19 = &v13[v16 + *(v17 + 24)];
    v20 = v11;
    v21 = *(v10 + 24);
    v22 = a2 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v42 = (v3 + 32);
    v43 = (v18 + 32);
    v23 = *(v20 + 72);
    v39 = (v18 + 8);
    v40 = (v3 + 8);
    v45 = v13;
    v46 = v9;
    v44 = v21;
    v41 = v23;
    do
    {
      sub_2523DE7AC(v22, v13, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction);
      sub_2523DE7AC(v13, v9, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      if ((*(*(v24 - 8) + 48))(v9, 1, v24) == 1)
      {
        MEMORY[0x2530A4FE0](0);
      }

      else
      {
        v25 = v19;
        v26 = *v9;
        v27 = *(v24 + 48);
        v28 = *(v24 + 64);
        v30 = v47;
        v29 = v48;
        (*v43)(v47, v9 + v27, v48);
        v31 = v9 + v28;
        v33 = v49;
        v32 = v50;
        (*v42)(v49, v31, v50);
        MEMORY[0x2530A4FE0](1);
        v34 = v26;
        v19 = v25;
        MEMORY[0x2530A4FE0](v34);
        sub_2523E1344(&qword_27F4DB768, MEMORY[0x277CC9578]);
        sub_252692B30();
        sub_2523E1344(&qword_27F4DB770, MEMORY[0x277CC9A70]);
        sub_252692B30();
        v35 = v33;
        v21 = v44;
        v36 = v32;
        v9 = v46;
        (*v40)(v35, v36);
        v37 = v30;
        v23 = v41;
        v38 = v29;
        v13 = v45;
        (*v39)(v37, v38);
      }

      sub_252692C80();
      MEMORY[0x2530A4FE0](*&v13[v21]);
      result = sub_2523E12E4(v13, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction);
      v22 += v23;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_2523DA850(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v77 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v7 = &v60 - v6;
  v75 = sub_25268D990();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_25268DB10();
  v74 = *(v76 - 8);
  v9 = MEMORY[0x28223BE20](v76);
  v67 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v60 - v15;
  v16 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v60 - v20;
  v80 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  v22 = *(v80 - 8);
  v23 = MEMORY[0x28223BE20](v80);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v60 - v26;
  v28 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v28);
  if (v28)
  {
    v30 = v22;
    v31 = a2 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v78 = *(v30 + 72);
    v79 = v27;
    v61 = (v73 + 48);
    v69 = (v73 + 32);
    v68 = (v73 + 8);
    v71 = (v74 + 8);
    v72 = (v74 + 32);
    v73 = v25;
    v74 = v7;
    v63 = v21;
    v64 = v19;
    do
    {
      sub_2523DE7AC(v31, v27, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      sub_2523DE7AC(v27, v25, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2523E127C(v25, v7, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
        MEMORY[0x2530A4FE0](1);
        v46 = v77;
        sub_2523DE7AC(v7, v77, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
        {
          MEMORY[0x2530A4FE0](0);
        }

        else
        {
          v32 = v77;
          v33 = *v77;
          v34 = *(v47 + 48);
          v35 = *(v47 + 64);
          v36 = v70;
          v37 = v75;
          (*v69)(v70, v77 + v34, v75);
          v38 = v67;
          v39 = v76;
          (*v72)(v67, &v32[v35], v76);
          MEMORY[0x2530A4FE0](1);
          v40 = v33;
          v7 = v74;
          MEMORY[0x2530A4FE0](v40);
          sub_2523E1344(&qword_27F4DB768, MEMORY[0x277CC9578]);
          sub_252692B30();
          sub_2523E1344(&qword_27F4DB770, MEMORY[0x277CC9A70]);
          sub_252692B30();
          v41 = v38;
          v42 = v39;
          v21 = v63;
          v19 = v64;
          (*v71)(v41, v42);
          v43 = v36;
          v25 = v73;
          (*v68)(v43, v37);
        }

        v44 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold;
        v45 = v7;
      }

      else
      {
        sub_2523E127C(v25, v21, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
        MEMORY[0x2530A4FE0](0);
        sub_2523DE7AC(v21, v19, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        v49 = (*(*(v48 - 8) + 48))(v19, 3, v48);
        if (v49 > 1)
        {
          if (v49 == 2)
          {
            v56 = 1;
          }

          else
          {
            v56 = 2;
          }
        }

        else
        {
          if (!v49)
          {
            v50 = *v19;
            v51 = *(v48 + 48);
            v52 = *(v48 + 64);
            v53 = v65;
            sub_2523714D4(v19 + v51, v65, &qword_27F4DB2D8);
            (*v72)(v66, v19 + v52, v76);
            MEMORY[0x2530A4FE0](3);
            MEMORY[0x2530A4FE0](v50);
            v54 = v62;
            sub_25237153C(v53, v62, &qword_27F4DB2D8);
            v55 = v75;
            if ((*v61)(v54, 1, v75) == 1)
            {
              sub_252693480();
            }

            else
            {
              v57 = v70;
              (*v69)(v70, v54, v55);
              sub_252693480();
              sub_2523E1344(&qword_27F4DB768, MEMORY[0x277CC9578]);
              sub_252692B30();
              (*v68)(v57, v55);
            }

            v7 = v74;
            sub_2523E1344(&qword_27F4DB770, MEMORY[0x277CC9A70]);
            v58 = v66;
            v59 = v76;
            sub_252692B30();
            (*v71)(v58, v59);
            sub_252372288(v65, &qword_27F4DB2D8);
            sub_2523E12E4(v21, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
            v25 = v73;
            goto LABEL_6;
          }

          v56 = 0;
        }

        MEMORY[0x2530A4FE0](v56);
        v44 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold;
        v45 = v21;
      }

      sub_2523E12E4(v45, v44);
LABEL_6:
      v27 = v79;
      result = sub_2523E12E4(v79, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      v31 += v78;
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t sub_2523DB164(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v3);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = *(a2 + 32 + 32 * i + 24);
      sub_2526934A0();

      sub_252692C80();
      MEMORY[0x2530A4FE0](*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = v6 + 48;
        do
        {
          sub_2526934A0();

          sub_252692C80();

          v8 += 24;
          --v7;
        }

        while (v7);
      }
    }
  }

  return result;
}

uint64_t sub_2523DB264(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      sub_2526934A0();

      sub_252692C80();

      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2523DB2E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v3);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = (a2 + 32 + 32 * i);
      v7 = v6[3];
      MEMORY[0x2530A4FE0](*v6);

      sub_252692C80();
      MEMORY[0x2530A4FE0](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = (v7 + 56);
        do
        {
          v10 = *v9;
          MEMORY[0x2530A4FE0](*(v9 - 3));

          sub_252692C80();
          sub_252693480();
          if (v10)
          {
            sub_2526922E0();
          }

          v9 += 4;

          --v8;
        }

        while (v8);
      }
    }
  }

  return result;
}

uint64_t sub_2523DB424(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *v5;
      MEMORY[0x2530A4FE0](*(v5 - 3));

      sub_252692C80();
      sub_252693480();
      if (v6)
      {
        sub_2526922E0();
      }

      v5 += 4;

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2523DB4DC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v77 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v7 = &v60 - v6;
  v75 = sub_25268D990();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_25268DB10();
  v74 = *(v76 - 8);
  v9 = MEMORY[0x28223BE20](v76);
  v67 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v60 - v15;
  v16 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v60 - v20;
  v80 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  v22 = *(v80 - 8);
  v23 = MEMORY[0x28223BE20](v80);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v60 - v26;
  v28 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v28);
  if (v28)
  {
    v30 = v22;
    v31 = a2 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v78 = *(v30 + 72);
    v79 = v27;
    v61 = (v73 + 48);
    v69 = (v73 + 32);
    v68 = (v73 + 8);
    v71 = (v74 + 8);
    v72 = (v74 + 32);
    v73 = v25;
    v74 = v7;
    v63 = v21;
    v64 = v19;
    do
    {
      sub_2523DE7AC(v31, v27, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
      sub_2523DE7AC(v27, v25, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2523E127C(v25, v7, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
        MEMORY[0x2530A4FE0](1);
        v46 = v77;
        sub_2523DE7AC(v7, v77, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
        {
          MEMORY[0x2530A4FE0](0);
        }

        else
        {
          v32 = v77;
          v33 = *v77;
          v34 = *(v47 + 48);
          v35 = *(v47 + 64);
          v36 = v70;
          v37 = v75;
          (*v69)(v70, v77 + v34, v75);
          v38 = v67;
          v39 = v76;
          (*v72)(v67, &v32[v35], v76);
          MEMORY[0x2530A4FE0](1);
          v40 = v33;
          v7 = v74;
          MEMORY[0x2530A4FE0](v40);
          sub_2523E1344(&qword_27F4DB768, MEMORY[0x277CC9578]);
          sub_252692B30();
          sub_2523E1344(&qword_27F4DB770, MEMORY[0x277CC9A70]);
          sub_252692B30();
          v41 = v38;
          v42 = v39;
          v21 = v63;
          v19 = v64;
          (*v71)(v41, v42);
          v43 = v36;
          v25 = v73;
          (*v68)(v43, v37);
        }

        v44 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold;
        v45 = v7;
      }

      else
      {
        sub_2523E127C(v25, v21, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
        MEMORY[0x2530A4FE0](0);
        sub_2523DE7AC(v21, v19, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        v49 = (*(*(v48 - 8) + 48))(v19, 3, v48);
        if (v49 > 1)
        {
          if (v49 == 2)
          {
            v56 = 1;
          }

          else
          {
            v56 = 2;
          }
        }

        else
        {
          if (!v49)
          {
            v50 = *v19;
            v51 = *(v48 + 48);
            v52 = *(v48 + 64);
            v53 = v65;
            sub_2523714D4(v19 + v51, v65, &qword_27F4DB2D8);
            (*v72)(v66, v19 + v52, v76);
            MEMORY[0x2530A4FE0](3);
            MEMORY[0x2530A4FE0](v50);
            v54 = v62;
            sub_25237153C(v53, v62, &qword_27F4DB2D8);
            v55 = v75;
            if ((*v61)(v54, 1, v75) == 1)
            {
              sub_252693480();
            }

            else
            {
              v57 = v70;
              (*v69)(v70, v54, v55);
              sub_252693480();
              sub_2523E1344(&qword_27F4DB768, MEMORY[0x277CC9578]);
              sub_252692B30();
              (*v68)(v57, v55);
            }

            v7 = v74;
            sub_2523E1344(&qword_27F4DB770, MEMORY[0x277CC9A70]);
            v58 = v66;
            v59 = v76;
            sub_252692B30();
            (*v71)(v58, v59);
            sub_252372288(v65, &qword_27F4DB2D8);
            sub_2523E12E4(v21, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
            v25 = v73;
            goto LABEL_6;
          }

          v56 = 0;
        }

        MEMORY[0x2530A4FE0](v56);
        v44 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold;
        v45 = v21;
      }

      sub_2523E12E4(v45, v44);
LABEL_6:
      v27 = v79;
      result = sub_2523E12E4(v79, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
      v31 += v78;
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t sub_2523DBDF0(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayControl(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v9, v6);
  if (v9)
  {
    v11 = type metadata accessor for Device.Control(0);
    v12 = v11[5];
    v25 = v11[6];
    v26 = v12;
    v13 = v11[8];
    v24 = v11[7];
    v14 = &v8[v13];
    v15 = v11[10];
    v16 = &v8[v11[9]];
    v22[1] = v11[11];
    v23 = v15;
    v22[0] = *(v4 + 20);
    v17 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v18 = *(v5 + 72);
    do
    {
      sub_2523DE7AC(v17, v8, type metadata accessor for DisplayControl);
      sub_25268DA10();
      sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
      sub_252692B30();
      Device.Control.Kind.hash(into:)(a1);
      Device.Control.Source.hash(into:)(a1);
      MEMORY[0x2530A4FE0](v8[v24]);
      if (*(v14 + 1))
      {
        sub_252693480();
        sub_252692C80();
      }

      else
      {
        sub_252693480();
      }

      v19 = *v16;
      v20 = v16[1];
      if (v19 == 4)
      {
        sub_252693480();
        if (v20 != 4)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_252693480();
        MEMORY[0x2530A4FE0](v19);
        if (v20 != 4)
        {
LABEL_11:
          sub_252693480();
          MEMORY[0x2530A4FE0](v20);
          goto LABEL_12;
        }
      }

      sub_252693480();
LABEL_12:
      v21 = v8[v23];
      sub_252693480();
      if (v21 != 16)
      {
        MEMORY[0x2530A4FE0](v21);
      }

      sub_252693480();
      MEMORY[0x2530A4FE0](v8[v22[0]]);
      result = sub_2523E12E4(v8, type metadata accessor for DisplayControl);
      v17 += v18;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_2523DC0CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_25268ED20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ColorControl.GridElement(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  v15 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v15, v12);
  if (v15)
  {
    v17 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v18 = *(v8 + 72);
    v19 = v4;
    v20 = (v4 + 48);
    v23 = (v19 + 8);
    v24 = (v19 + 32);
    do
    {
      sub_2523DE7AC(v17, v14, type metadata accessor for ColorControl.GridElement);
      sub_2523DE7AC(v14, v10, type metadata accessor for ColorControl.GridElement);
      v21 = (*v20)(v10, 2, v3);
      if (v21)
      {
        if (v21 == 1)
        {
          v22 = 0;
        }

        else
        {
          v22 = 2;
        }

        MEMORY[0x2530A4FE0](v22);
      }

      else
      {
        (*v24)(v6, v10, v3);
        MEMORY[0x2530A4FE0](1);
        sub_2523E1344(&qword_27F4DB798, MEMORY[0x277D15B48]);
        sub_252692B30();
        (*v23)(v6, v3);
      }

      result = sub_2523E12E4(v14, type metadata accessor for ColorControl.GridElement);
      v17 += v18;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_2523DC38C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530A4FE0](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      v6 = *(v5 + 24);
      v7 = *(v5 + 40);
      v8 = *(v5 + 32);
      v9 = *(v5 + 48);

      sub_252692C80();
      sub_252692C80();
      if (v6)
      {
        sub_252693480();
        sub_252692C80();
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_252693480();
        if (!v7)
        {
LABEL_9:
          sub_252693480();
          MEMORY[0x2530A4FE0](v8);
          goto LABEL_4;
        }
      }

      sub_252693480();
LABEL_4:
      MEMORY[0x2530A4FE0](v9);

      v5 += 72;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2523DC4BC(__int128 *a1, uint64_t a2)
{
  v72 = a1;
  v66 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_25268DA10();
  v5 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v68 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v62 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v70 = &v62 - v15;
  MEMORY[0x28223BE20](v14);
  v67 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB758);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  v23 = *(a2 + 64);
  v73 = a2 + 64;
  v24 = 1 << *(a2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v78 = v25 & v23;
  v63 = (v24 + 63) >> 6;
  v80 = (v5 + 8);
  v81 = (v5 + 32);
  v69 = a2;

  v27 = 0;
  v28 = 0;
  v75 = v22;
  v71 = v13;
  v64 = v20;
  v79 = v7;
  while (1)
  {
    v29 = v78;
    v77 = v27;
    if (!v78)
    {
      break;
    }

    v76 = v28;
    v30 = v28;
LABEL_16:
    v78 = (v29 - 1) & v29;
    v33 = __clz(__rbit64(v29)) | (v30 << 6);
    v34 = v69;
    v35 = v67;
    sub_2523DE7AC(*(v69 + 48) + *(v68 + 72) * v33, v67, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v36 = *(*(v34 + 56) + 8 * v33);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB760);
    v38 = *(v37 + 48);
    sub_2523E127C(v35, v20, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    *&v20[v38] = v36;
    (*(*(v37 - 8) + 56))(v20, 0, 1, v37);

    v22 = v75;
LABEL_17:
    sub_2523714D4(v20, v22, &qword_27F4DB758);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB760);
    if ((*(*(v39 - 8) + 48))(v22, 1, v39) == 1)
    {

      return MEMORY[0x2530A4FE0](v77);
    }

    v40 = *(v39 + 48);
    v41 = v70;
    sub_2523E127C(v22, v70, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v42 = *&v22[v40];
    v43 = v72[3];
    v86 = v72[2];
    v87 = v43;
    v88 = *(v72 + 8);
    v44 = v72[1];
    v84 = *v72;
    v85 = v44;
    v45 = v71;
    sub_2523DE7AC(v41, v71, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
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
        v50 = v82;
        v51 = v83;
        (*v81)(v82, v45, v83);
        MEMORY[0x2530A4FE0](2);
        sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
        sub_252692B30();
        (*v80)(v50, v51);
      }
    }

    else
    {
      v47 = v42;
      v48 = *v45;
      MEMORY[0x2530A4FE0](0);
      v49 = v48;
      v42 = v47;
      MEMORY[0x2530A4FE0](v49);
    }

    sub_2523E12E4(v41, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    MEMORY[0x2530A4FE0](*(v42 + 16));
    v52 = *(v42 + 16);
    if (v52)
    {
      v53 = *(v66 + 24);
      v54 = *(v65 + 80);
      v74 = v42;
      v55 = v42 + ((v54 + 32) & ~v54);
      v56 = *(v65 + 72);
      do
      {
        sub_2523DE7AC(v55, v4, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
        sub_2523DE7AC(v4, v10, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        v58 = swift_getEnumCaseMultiPayload();
        if (v58)
        {
          if (v58 == 1)
          {
            MEMORY[0x2530A4FE0](1);
            sub_2526934A0();
          }

          else
          {
            v59 = v82;
            v60 = v83;
            (*v81)(v82, v10, v83);
            MEMORY[0x2530A4FE0](2);
            sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
            sub_252692B30();
            (*v80)(v59, v60);
          }
        }

        else
        {
          v57 = *v10;
          MEMORY[0x2530A4FE0](0);
          MEMORY[0x2530A4FE0](v57);
        }

        sub_252692C80();
        MEMORY[0x2530A4FE0](v4[v53]);
        sub_2523E12E4(v4, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
        v55 += v56;
        --v52;
      }

      while (v52);

      v20 = v64;
    }

    else
    {
    }

    result = sub_2526934C0();
    v28 = v76;
    v27 = result ^ v77;
    v22 = v75;
  }

  if (v63 <= v28 + 1)
  {
    v31 = v28 + 1;
  }

  else
  {
    v31 = v63;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v63)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB760);
      (*(*(v61 - 8) + 56))(v20, 1, 1, v61);
      v78 = 0;
      v76 = v32;
      goto LABEL_17;
    }

    v29 = *(v73 + 8 * v30);
    ++v28;
    if (v29)
    {
      v76 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2523DCD6C(uint64_t a1, uint64_t a2)
{
  v82 = a1;
  v72 = sub_25268DA10();
  v3 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v5 = MEMORY[0x28223BE20](v77);
  v76 = (&v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v75 = &v68 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v74 = (&v68 - v10);
  MEMORY[0x28223BE20](v9);
  v73 = &v68 - v11;
  v81 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  v79 = *(v81 - 8);
  v12 = MEMORY[0x28223BE20](v81);
  v86 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v85 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v78 = &v68 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4B0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v83 = (&v68 - v21);
  v22 = a2 + 64;
  v23 = 1 << *(a2 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a2 + 64);
  v26 = (v23 + 63) >> 6;
  v70 = (v3 + 32);
  v69 = (v3 + 8);
  v80 = a2;

  v28 = 0;
  v29 = 0;
  v84 = v20;
  while (1)
  {
    v87 = v28;
    if (!v25)
    {
      break;
    }

    v32 = v29;
LABEL_18:
    v35 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v36 = v35 | (v32 << 6);
    v37 = *(v80 + 48) + 16 * v36;
    v38 = *v37;
    v39 = *(v37 + 8);
    v40 = v78;
    sub_2523DE7AC(*(v80 + 56) + *(v79 + 72) * v36, v78, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C0);
    v42 = *(v41 + 48);
    v43 = v84;
    *v84 = v38;
    v20 = v43;
    v43[8] = v39;
    sub_2523E127C(v40, &v43[v42], type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    (*(*(v41 - 8) + 56))(v20, 0, 1, v41);
LABEL_19:
    v44 = v20;
    v45 = v83;
    sub_2523714D4(v44, v83, &qword_27F4DB4B0);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C0);
    if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
    {

      return MEMORY[0x2530A4FE0](v87);
    }

    v47 = v45;
    v48 = *v45;
    v49 = *(v47 + 8);
    v50 = v85;
    sub_2523E127C(v47 + *(v46 + 48), v85, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    v51 = *(v82 + 48);
    v88[2] = *(v82 + 32);
    v88[3] = v51;
    v89 = *(v82 + 64);
    v52 = *(v82 + 16);
    v88[0] = *v82;
    v88[1] = v52;
    MEMORY[0x2530A4FE0](v48);
    MEMORY[0x2530A4FE0](v49);
    sub_2523DE7AC(v50, v86, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v56 = v73;
      sub_2523E127C(v86, v73, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      MEMORY[0x2530A4FE0](0);
      sub_2523DE7AC(v56, v74, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      v57 = swift_getEnumCaseMultiPayload();
      if (v57)
      {
        if (v57 == 1)
        {
          MEMORY[0x2530A4FE0](1);
          sub_2526934A0();
        }

        else
        {
          v66 = v71;
          v67 = v72;
          (*v70)(v71, v74, v72);
          MEMORY[0x2530A4FE0](2);
          sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
          sub_252692B30();
          (*v69)(v66, v67);
        }
      }

      else
      {
        v63 = *v74;
        MEMORY[0x2530A4FE0](0);
        MEMORY[0x2530A4FE0](v63);
      }

      v31 = &v90;
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v54 = v75;
      sub_2523E127C(v86, v75, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      MEMORY[0x2530A4FE0](1);
      sub_2523DE7AC(v54, v76, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      v55 = swift_getEnumCaseMultiPayload();
      if (v55)
      {
        if (v55 == 1)
        {
          MEMORY[0x2530A4FE0](1);
          sub_2526934A0();
        }

        else
        {
          v64 = v71;
          v65 = v72;
          (*v70)(v71, v76, v72);
          MEMORY[0x2530A4FE0](2);
          sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
          sub_252692B30();
          (*v69)(v64, v65);
        }
      }

      else
      {
        v30 = *v76;
        MEMORY[0x2530A4FE0](0);
        MEMORY[0x2530A4FE0](v30);
      }

      v31 = &v91;
LABEL_6:
      sub_2523E12E4(*(v31 - 32), type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      v20 = v84;
      goto LABEL_7;
    }

    v58 = *v86;
    v59 = *(v86 + 8);
    v60 = *(v86 + 16);
    v61 = *(v86 + 24);
    MEMORY[0x2530A4FE0](2);
    sub_2523D782C(v88, v58);

    if (v59 == 2)
    {
      sub_252693480();
      if (v60)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_252693480();
      MEMORY[0x2530A4FE0](v59 & 1);
      if (v60)
      {
LABEL_30:
        sub_252693480();
        sub_2523D7BEC(v88, v60);

        v20 = v84;
        if (v61)
        {
          goto LABEL_31;
        }

        goto LABEL_35;
      }
    }

    sub_252693480();
    v20 = v84;
    if (v61)
    {
LABEL_31:
      sub_252693480();
      sub_2523DD858(v88, v61);

      goto LABEL_7;
    }

LABEL_35:
    sub_252693480();
LABEL_7:
    sub_2523E12E4(v85, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    result = sub_2526934C0();
    v28 = result ^ v87;
  }

  if (v26 <= v29 + 1)
  {
    v33 = v29 + 1;
  }

  else
  {
    v33 = v26;
  }

  v34 = v33 - 1;
  while (1)
  {
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v32 >= v26)
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C0);
      (*(*(v62 - 8) + 56))(v20, 1, 1, v62);
      v25 = 0;
      v29 = v34;
      goto LABEL_19;
    }

    v25 = *(v22 + 8 * v32);
    ++v29;
    if (v25)
    {
      v29 = v32;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2523DD734(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  for (i = (v6 + 63) >> 6; v8; v3 ^= result)
  {
    v10 = v4;
LABEL_9:
    v11 = (v10 << 9) | (8 * __clz(__rbit64(v8)));
    v12 = *(*(a2 + 56) + v11);
    v8 &= v8 - 1;
    MEMORY[0x2530A4FE0](*(*(a2 + 48) + v11));
    MEMORY[0x2530A4FE0](v12);
    result = sub_2526934C0();
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x2530A4FE0](v3);
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2523DD858(__int128 *a1, uint64_t a2)
{
  v53 = sub_25268DA10();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v55 = *(v57 - 8);
  v6 = MEMORY[0x28223BE20](v57);
  v61 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v60 = &v49 - v9;
  MEMORY[0x28223BE20](v8);
  v54 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB778);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v49 - v15;
  v16 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 64);
  v20 = (v17 + 63) >> 6;
  v50 = (v4 + 32);
  v49 = (v4 + 8);
  v56 = a2;

  v22 = 0;
  v23 = 0;
  v59 = v14;
  v51 = a1;
  while (1)
  {
    v62 = v22;
    if (!v19)
    {
      break;
    }

    v26 = v23;
LABEL_19:
    v29 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v30 = v29 | (v26 << 6);
    v31 = v56;
    v32 = v54;
    sub_2523DE7AC(*(v56 + 48) + *(v55 + 72) * v30, v54, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v33 = *(*(v31 + 56) + 8 * v30);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB780);
    v35 = *(v34 + 48);
    v36 = v32;
    v14 = v59;
    sub_2523E127C(v36, v59, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    *&v14[v35] = v33;
    (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
LABEL_20:
    v37 = v58;
    sub_2523714D4(v14, v58, &qword_27F4DB778);
    v38 = v37;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB780);
    if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
    {

      return MEMORY[0x2530A4FE0](v62);
    }

    v40 = *(v39 + 48);
    v41 = v60;
    sub_2523E127C(v38, v60, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v42 = *(v38 + v40);
    v43 = a1[3];
    v65 = a1[2];
    v66 = v43;
    v67 = *(a1 + 8);
    v44 = a1[1];
    v63 = *a1;
    v64 = v44;
    sub_2523DE7AC(v41, v61, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
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
        v46 = v52;
        v47 = v53;
        (*v50)(v52, v61, v53);
        MEMORY[0x2530A4FE0](2);
        sub_2523E1344(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
        sub_252692B30();
        v14 = v59;
        a1 = v51;
        (*v49)(v46, v47);
      }
    }

    else
    {
      v24 = *v61;
      MEMORY[0x2530A4FE0](0);
      MEMORY[0x2530A4FE0](v24);
    }

    sub_2523E12E4(v60, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (v42 == 0.0)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v42;
    }

    MEMORY[0x2530A5020](*&v25);
    result = sub_2526934C0();
    v22 = result ^ v62;
  }

  if (v20 <= v23 + 1)
  {
    v27 = v23 + 1;
  }

  else
  {
    v27 = v20;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v26 >= v20)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB780);
      (*(*(v48 - 8) + 56))(v14, 1, 1, v48);
      v19 = 0;
      v23 = v28;
      goto LABEL_20;
    }

    v19 = *(v16 + 8 * v26);
    ++v23;
    if (v19)
    {
      v23 = v26;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2523DDE80(__int128 *a1, uint64_t a2)
{
  v60 = a1;
  v66 = sub_25268E8E0();
  v3 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_25268E310();
  v5 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB740);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v13 = *(a2 + 64);
  v49 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v48 = (v14 + 63) >> 6;
  v52 = v5 + 16;
  v51 = v3 + 16;
  v62 = (v5 + 32);
  v17 = (v3 + 32);
  v55 = v5;
  v56 = v3;
  v58 = (v3 + 8);
  v59 = (v5 + 8);
  v57 = a2;

  v19 = 0;
  v20 = 0;
  v54 = v9;
  v53 = v12;
  v50 = (v3 + 32);
  if (v16)
  {
    while (1)
    {
      v61 = v19;
      v21 = v20;
LABEL_13:
      v24 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v25 = v24 | (v21 << 6);
      v26 = v57;
      v27 = v55;
      v28 = v63;
      v29 = v64;
      (*(v55 + 16))(v63, *(v57 + 48) + *(v55 + 72) * v25, v64);
      v30 = v56;
      v31 = v65;
      v32 = v66;
      (*(v56 + 16))(v65, *(v26 + 56) + *(v56 + 72) * v25, v66);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB748);
      v34 = *(v33 + 48);
      v35 = *(v27 + 32);
      v9 = v54;
      v35(v54, v28, v29);
      v36 = *(v30 + 32);
      v17 = v50;
      v36(&v9[v34], v31, v32);
      (*(*(v33 - 8) + 56))(v9, 0, 1, v33);
      v23 = v21;
      v12 = v53;
      v19 = v61;
LABEL_14:
      sub_2523714D4(v9, v12, &qword_27F4DB740);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB748);
      if ((*(*(v37 - 8) + 48))(v12, 1, v37) == 1)
      {
        break;
      }

      v38 = *(v37 + 48);
      v39 = v63;
      v40 = v64;
      (*v62)(v63, v12, v64);
      v41 = &v12[v38];
      v43 = v65;
      v42 = v66;
      (*v17)(v65, v41, v66);
      v44 = v60[3];
      v69 = v60[2];
      v70 = v44;
      v71 = *(v60 + 8);
      v45 = v60[1];
      v67 = *v60;
      v68 = v45;
      sub_2523E1344(&qword_27F4DAF08, MEMORY[0x277D15558]);
      sub_252692B30();
      (*v59)(v39, v40);
      sub_2523E1344(&qword_27F4DB750, MEMORY[0x277D15A78]);
      sub_252692B30();
      (*v58)(v43, v42);
      result = sub_2526934C0();
      v19 ^= result;
      v20 = v23;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x2530A4FE0](v19);
  }

  else
  {
LABEL_5:
    if (v48 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v48;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v48)
      {
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB748);
        (*(*(v46 - 8) + 56))(v9, 1, 1, v46);
        v16 = 0;
        goto LABEL_14;
      }

      v16 = *(v49 + 8 * v21);
      ++v20;
      if (v16)
      {
        v61 = v19;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB410);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = *(v12 + 56);
  sub_2523DE7AC(a1, &v19 - v13, type metadata accessor for AccessoryControl.ValueDestination);
  sub_2523DE7AC(a2, &v14[v15], type metadata accessor for AccessoryControl.ValueDestination);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_2523DE7AC(v14, v10, type metadata accessor for AccessoryControl.ValueDestination);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_2523E127C(&v14[v15], v7, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      v17 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
      sub_2523E12E4(v7, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      sub_2523E12E4(v10, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
      sub_2523E12E4(v14, type metadata accessor for AccessoryControl.ValueDestination);
      return v17 & 1;
    }

    sub_2523E12E4(v10, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_252372288(v14, &qword_27F4DB410);
    v17 = 0;
    return v17 & 1;
  }

  sub_2523E12E4(v14, type metadata accessor for AccessoryControl.ValueDestination);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_2523DE7AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523DE834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s22HomeAccessoryControlUI0bC0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static AccessoryControl.ElementIdentifier.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = type metadata accessor for AccessoryControl(0);
  if ((_s22HomeAccessoryControlUI0bC0V5StateO2eeoiySbAE_AEtFZ_0(a1 + v4[5], a2 + v4[5]) & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    goto LABEL_4;
  }

  v7 = v4[7];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      goto LABEL_4;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (sub_2526933B0() & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (v11)
  {
    goto LABEL_4;
  }

  v13 = v4[8];
  v18 = *(a1 + v13);
  v17 = *(a2 + v13);
  if (_s22HomeAccessoryControlUI0bC0V18ViewSizeConstraintV2eeoiySbAE_AEtFZ_0(&v18, &v17))
  {
    v14 = v4[9];
    v15 = *(a1 + v14);
    v16 = *(a2 + v14);
    if (v15 == 16)
    {
      if (v16 == 16)
      {
        goto LABEL_20;
      }
    }

    else if (v15 == v16)
    {
LABEL_20:
      v5 = *(a1 + v4[10]) ^ *(a2 + v4[10]) ^ 1;
      return v5 & 1;
    }
  }

LABEL_4:
  v5 = 0;
  return v5 & 1;
}

uint64_t _s22HomeAccessoryControlUI0bC0V5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v334 = a1;
  v335 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v313 = &v282 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v314 = &v282 - v5;
  v282 = type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);
  MEMORY[0x28223BE20](v282);
  v315 = (&v282 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);
  MEMORY[0x28223BE20](v7 - 8);
  v310 = (&v282 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v311 = &v282 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v312 = &v282 - v12;
  v13 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig(0);
  MEMORY[0x28223BE20](v13 - 8);
  v305 = (&v282 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v309 = &v282 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v322 = &v282 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v308 = &v282 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v321 = &v282 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v304 = &v282 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v320 = &v282 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v306 = &v282 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v307 = &v282 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v302 = &v282 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v303 = &v282 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v299 = &v282 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v301 = &v282 - v38;
  v39 = type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0);
  MEMORY[0x28223BE20](v39 - 8);
  v300 = &v282 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v296 = &v282 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v298 = &v282 - v44;
  v45 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v45 - 8);
  v297 = &v282 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7A0);
  MEMORY[0x28223BE20](v285);
  v286 = &v282 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD70);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v284 = &v282 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v316 = &v282 - v52;
  MEMORY[0x28223BE20](v51);
  v333 = &v282 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
  v55 = MEMORY[0x28223BE20](v54 - 8);
  v317 = &v282 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v318 = &v282 - v57;
  v58 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v58 - 8);
  v319 = (&v282 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v288 = type metadata accessor for ControlAction(0);
  v60 = MEMORY[0x28223BE20](v288);
  v294 = &v282 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v295 = &v282 - v62;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  v289 = *(v287 - 8);
  v63 = MEMORY[0x28223BE20](v287);
  v283 = &v282 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v291 = &v282 - v66;
  MEMORY[0x28223BE20](v65);
  v292 = &v282 - v67;
  v68 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  v69 = MEMORY[0x28223BE20](v68 - 8);
  v293 = (&v282 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v69);
  v290 = (&v282 - v71);
  v72 = type metadata accessor for AccessoryControl.State(0);
  v73 = MEMORY[0x28223BE20](v72);
  v332 = (&v282 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = MEMORY[0x28223BE20](v73);
  v331 = (&v282 - v76);
  v77 = MEMORY[0x28223BE20](v75);
  v330 = &v282 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v329 = (&v282 - v80);
  v81 = MEMORY[0x28223BE20](v79);
  v83 = &v282 - v82;
  v84 = MEMORY[0x28223BE20](v81);
  v326 = &v282 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v325 = &v282 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v90 = &v282 - v89;
  v91 = MEMORY[0x28223BE20](v88);
  v328 = &v282 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v95 = &v282 - v94;
  v96 = MEMORY[0x28223BE20](v93);
  v324 = &v282 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v323 = &v282 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v327 = (&v282 - v101);
  v102 = MEMORY[0x28223BE20](v100);
  v104 = (&v282 - v103);
  MEMORY[0x28223BE20](v102);
  v106 = (&v282 - v105);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7A8);
  v108 = MEMORY[0x28223BE20](v107 - 8);
  v110 = &v282 - v109;
  v111 = &v282 + *(v108 + 56) - v109;
  sub_2523DE7AC(v334, &v282 - v109, type metadata accessor for AccessoryControl.State);
  v334 = v111;
  sub_2523DE7AC(v335, v111, type metadata accessor for AccessoryControl.State);
  v335 = v110;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v114 = v335;
      sub_2523DE7AC(v335, v104, type metadata accessor for AccessoryControl.State);
      v201 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB420) + 48);
      v202 = v334;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_2523E12E4(v104 + v201, type metadata accessor for ControlAction);
        v256 = type metadata accessor for AccessoryControl.BinaryViewConfig;
        v257 = v104;
        goto LABEL_79;
      }

      v203 = v293;
      sub_2523E127C(v202, v293, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v204 = v295;
      sub_2523E127C(v104 + v201, v295, type metadata accessor for ControlAction);
      v205 = v202 + v201;
      v206 = v294;
      sub_2523E127C(v205, v294, type metadata accessor for ControlAction);
      v207 = static AccessoryControl.BinaryViewConfig.== infix(_:_:)(v104, v203);
      sub_2523E12E4(v104, type metadata accessor for AccessoryControl.BinaryViewConfig);
      if (!v207)
      {
        sub_2523E12E4(v203, type metadata accessor for AccessoryControl.BinaryViewConfig);
        sub_2523E12E4(v206, type metadata accessor for ControlAction);
        sub_2523E12E4(v204, type metadata accessor for ControlAction);
        goto LABEL_110;
      }

      v208 = *(v288 + 24);
      v209 = *(v204 + v208);
      v210 = *(v204 + v208 + 8);
      v211 = (v206 + v208);
      if (v209 == *v211 && v210 == v211[1])
      {
        sub_2523E12E4(v203, type metadata accessor for AccessoryControl.BinaryViewConfig);
        sub_2523E12E4(v206, type metadata accessor for ControlAction);
        sub_2523E12E4(v204, type metadata accessor for ControlAction);
        goto LABEL_119;
      }

      v274 = sub_2526933B0();
      sub_2523E12E4(v203, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_2523E12E4(v206, type metadata accessor for ControlAction);
      sub_2523E12E4(v204, type metadata accessor for ControlAction);
      if ((v274 & 1) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_119;
    case 2u:
      v114 = v335;
      v157 = v327;
      sub_2523DE7AC(v335, v327, type metadata accessor for AccessoryControl.State);
      v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
      v159 = *(v158 + 48);
      v160 = *(v158 + 64);
      v161 = v334;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_252372288(v157 + v160, &qword_27F4DAD70);
        sub_252372288(v157 + v159, &qword_27F4DAD78);
        v256 = type metadata accessor for AccessoryControl.IncrementalConfig;
        v257 = v157;
        goto LABEL_79;
      }

      v162 = v319;
      sub_2523E127C(v161, v319, type metadata accessor for AccessoryControl.IncrementalConfig);
      v163 = v318;
      sub_2523714D4(v157 + v159, v318, &qword_27F4DAD78);
      sub_2523714D4(v157 + v160, v333, &qword_27F4DAD70);
      v164 = v161 + v159;
      v165 = v317;
      sub_2523714D4(v164, v317, &qword_27F4DAD78);
      v166 = v161 + v160;
      v167 = v316;
      sub_2523714D4(v166, v316, &qword_27F4DAD70);
      v168 = static AccessoryControl.IncrementalConfig.== infix(_:_:)(v157, v162);
      sub_2523E12E4(v157, type metadata accessor for AccessoryControl.IncrementalConfig);
      if ((v168 & 1) == 0 || (sub_2523CB9BC(v163, v165) & 1) == 0)
      {
        sub_252372288(v167, &qword_27F4DAD70);
        sub_252372288(v165, &qword_27F4DAD78);
        sub_252372288(v333, &qword_27F4DAD70);
        sub_252372288(v163, &qword_27F4DAD78);
        sub_2523E12E4(v162, type metadata accessor for AccessoryControl.IncrementalConfig);
        goto LABEL_110;
      }

      v169 = v286;
      v170 = *(v285 + 48);
      v171 = v333;
      sub_25237153C(v333, v286, &qword_27F4DAD70);
      sub_25237153C(v167, v169 + v170, &qword_27F4DAD70);
      v172 = v167;
      v173 = v289 + 48;
      v174 = *(v289 + 48);
      v175 = v287;
      if (v174(v169, 1, v287) == 1)
      {
        v289 = v173;
        sub_252372288(v172, &qword_27F4DAD70);
        sub_252372288(v317, &qword_27F4DAD78);
        sub_252372288(v171, &qword_27F4DAD70);
        sub_252372288(v318, &qword_27F4DAD78);
        sub_2523E12E4(v319, type metadata accessor for AccessoryControl.IncrementalConfig);
        if (v174(v169 + v170, 1, v287) == 1)
        {
          sub_252372288(v169, &qword_27F4DAD70);
          goto LABEL_119;
        }

        goto LABEL_122;
      }

      v275 = v284;
      sub_25237153C(v169, v284, &qword_27F4DAD70);
      if (v174(v169 + v170, 1, v175) == 1)
      {
        sub_252372288(v316, &qword_27F4DAD70);
        sub_252372288(v317, &qword_27F4DAD78);
        sub_252372288(v333, &qword_27F4DAD70);
        sub_252372288(v318, &qword_27F4DAD78);
        sub_2523E12E4(v319, type metadata accessor for AccessoryControl.IncrementalConfig);
        sub_252372288(v275, &qword_27F4DAD80);
LABEL_122:
        v271 = &qword_27F4DB7A0;
        v267 = v169;
        goto LABEL_109;
      }

      v276 = v283;
      sub_2523714D4(v169 + v170, v283, &qword_27F4DAD80);
      v277 = sub_2523CB730(v275, v276);
      sub_252372288(v276, &qword_27F4DAD80);
      sub_252372288(v316, &qword_27F4DAD70);
      sub_252372288(v317, &qword_27F4DAD78);
      sub_252372288(v333, &qword_27F4DAD70);
      sub_252372288(v318, &qword_27F4DAD78);
      sub_2523E12E4(v319, type metadata accessor for AccessoryControl.IncrementalConfig);
      sub_252372288(v275, &qword_27F4DAD80);
      sub_252372288(v169, &qword_27F4DAD70);
      if (v277)
      {
LABEL_119:
        sub_2523E12E4(v114, type metadata accessor for AccessoryControl.State);
        v128 = 1;
        return v128 & 1;
      }

LABEL_110:
      v272 = v114;
LABEL_111:
      sub_2523E12E4(v272, type metadata accessor for AccessoryControl.State);
      goto LABEL_112;
    case 3u:
      v114 = v335;
      v130 = v323;
      sub_2523DE7AC(v335, v323, type metadata accessor for AccessoryControl.State);
      v176 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);
      v177 = v334;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_252372288(v130 + v176, &qword_27F4DAD68);
        v259 = type metadata accessor for AccessoryControl.PickerViewConfig;
        goto LABEL_73;
      }

      v133 = v297;
      sub_2523E127C(v177, v297, type metadata accessor for AccessoryControl.PickerViewConfig);
      v178 = v298;
      sub_2523714D4(v130 + v176, v298, &qword_27F4DAD68);
      v179 = v177 + v176;
      v180 = v296;
      sub_2523714D4(v179, v296, &qword_27F4DAD68);
      v181 = static AccessoryControl.PickerViewConfig.== infix(_:_:)(v130, v133);
      sub_2523E12E4(v130, type metadata accessor for AccessoryControl.PickerViewConfig);
      if (v181)
      {
        v128 = sub_2523CBFE8(v178, v180);
        sub_252372288(v180, &qword_27F4DAD68);
        sub_252372288(v178, &qword_27F4DAD68);
        v138 = type metadata accessor for AccessoryControl.PickerViewConfig;
        goto LABEL_37;
      }

      sub_252372288(v180, &qword_27F4DAD68);
      sub_252372288(v178, &qword_27F4DAD68);
      v265 = type metadata accessor for AccessoryControl.PickerViewConfig;
      goto LABEL_99;
    case 4u:
      v114 = v335;
      v130 = v324;
      sub_2523DE7AC(v335, v324, type metadata accessor for AccessoryControl.State);
      v131 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3F8) + 48);
      v132 = v334;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_252372288(v130 + v131, &qword_27F4DB3E0);
        v259 = type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig;
LABEL_73:
        v256 = v259;
        v257 = v130;
        goto LABEL_79;
      }

      v133 = v300;
      sub_2523E127C(v132, v300, type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig);
      v134 = v301;
      sub_2523714D4(v130 + v131, v301, &qword_27F4DB3E0);
      v135 = v132 + v131;
      v136 = v299;
      sub_2523714D4(v135, v299, &qword_27F4DB3E0);
      v137 = _s22HomeAccessoryControlUI0bC0V28MultiSectionPickerViewConfigV2eeoiySbAE_AEtFZ_0(v130, v133);
      sub_2523E12E4(v130, type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig);
      if (v137)
      {
        v128 = sub_2523CC328(v134, v136);
        sub_252372288(v136, &qword_27F4DB3E0);
        sub_252372288(v134, &qword_27F4DB3E0);
        v138 = type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig;
LABEL_37:
        v182 = v138;
        v183 = v133;
        goto LABEL_53;
      }

      sub_252372288(v136, &qword_27F4DB3E0);
      sub_252372288(v134, &qword_27F4DB3E0);
      v265 = type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig;
LABEL_99:
      sub_2523E12E4(v133, v265);
      goto LABEL_110;
    case 5u:
      v114 = v335;
      sub_2523DE7AC(v335, v95, type metadata accessor for AccessoryControl.State);
      v357 = *v95;
      *&v358 = *(v95 + 2);
      v212 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2B0) + 48);
      v213 = v334;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        sub_252372288(&v95[v212], &qword_27F4DB298);
        sub_252394280(&v357);
        goto LABEL_85;
      }

      v350 = *v213;
      *&v351 = *(v213 + 16);
      v214 = v303;
      sub_2523714D4(&v95[v212], v303, &qword_27F4DB298);
      v215 = v213 + v212;
      v216 = v302;
      sub_2523714D4(v215, v302, &qword_27F4DB298);
      v343 = v357;
      *&v344 = v358;
      v336 = v350;
      *&v337 = v351;
      v217 = static AccessoryControl.ColorPickerConfig.== infix(_:_:)(&v343, &v336);
      sub_252394280(&v350);
      sub_252394280(&v357);
      if (v217)
      {
        v128 = sub_2523CC3F0(v214, v216);
        v144 = &qword_27F4DB298;
        sub_252372288(v216, &qword_27F4DB298);
        v218 = v214;
        goto LABEL_95;
      }

      v144 = &qword_27F4DB298;
      sub_252372288(v216, &qword_27F4DB298);
      v267 = v214;
      goto LABEL_108;
    case 6u:
      v114 = v335;
      v221 = v328;
      sub_2523DE7AC(v335, v328, type metadata accessor for AccessoryControl.State);
      v222 = *(v221 + 80);
      v361 = *(v221 + 64);
      v362 = v222;
      v363 = *(v221 + 96);
      v223 = *(v221 + 16);
      v357 = *v221;
      v358 = v223;
      v224 = *(v221 + 48);
      v359 = *(v221 + 32);
      v360 = v224;
      v225 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270) + 48);
      v226 = v334;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        sub_252372288(v221 + v225, &qword_27F4DB278);
        sub_252385F08(&v357);
        goto LABEL_85;
      }

      v227 = *(v226 + 80);
      v354 = *(v226 + 64);
      v355 = v227;
      v356 = *(v226 + 96);
      v228 = *(v226 + 16);
      v350 = *v226;
      v351 = v228;
      v229 = *(v226 + 48);
      v352 = *(v226 + 32);
      v353 = v229;
      v230 = v221 + v225;
      v146 = v307;
      sub_2523714D4(v230, v307, &qword_27F4DB278);
      v231 = v226 + v225;
      v148 = v306;
      sub_2523714D4(v231, v306, &qword_27F4DB278);
      v347 = v361;
      v348 = v362;
      v349 = v363;
      v343 = v357;
      v344 = v358;
      v345 = v359;
      v346 = v360;
      v340 = v354;
      v341 = v355;
      v342 = v356;
      v336 = v350;
      v337 = v351;
      v338 = v352;
      v339 = v353;
      v232 = static AccessoryControl.ThermostatConfig.== infix(_:_:)(&v343, &v336);
      sub_252385F08(&v350);
      sub_252385F08(&v357);
      if (v232)
      {
        v128 = sub_2523CC9CC(v146, v148);
        v144 = &qword_27F4DB278;
        goto LABEL_94;
      }

      v144 = &qword_27F4DB278;
      goto LABEL_107;
    case 7u:
      v114 = v335;
      sub_2523DE7AC(v335, v90, type metadata accessor for AccessoryControl.State);
      v184 = *v90;
      v185 = *(v90 + 3);
      v186 = *(v90 + 4);
      v187 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0) + 48);
      v188 = v334;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        sub_252372288(&v90[v187], &qword_27F4DB498);

        goto LABEL_83;
      }

      v189 = *(v90 + 2);
      v190 = v90[8];
      v191 = *v188;
      LODWORD(v333) = *(v188 + 8);
      v193 = *(v188 + 16);
      v192 = *(v188 + 24);
      v331 = v191;
      v332 = v193;
      v330 = v192;
      v194 = *(v188 + 32);
      v328 = v189;
      v329 = v194;
      sub_2523714D4(&v90[v187], v320, &qword_27F4DB498);
      v195 = v188 + v187;
      v196 = v304;
      sub_2523714D4(v195, v304, &qword_27F4DB498);
      *&v357 = v184;
      BYTE8(v357) = v190;
      *&v358 = v328;
      *(&v358 + 1) = v185;
      *&v359 = v186;
      *&v350 = v331;
      BYTE8(v350) = v333;
      *&v351 = v332;
      *(&v351 + 1) = v330;
      *&v352 = v329;
      v197 = _s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV2eeoiySbAE_AEtFZ_0(&v357, &v350);

      if (v197)
      {
        v198 = v320;
        v128 = sub_2523CCFA8(v320, v196);
        v199 = &qword_27F4DB498;
        sub_252372288(v196, &qword_27F4DB498);
        v200 = v198;
        goto LABEL_65;
      }

      v268 = &qword_27F4DB498;
      sub_252372288(v196, &qword_27F4DB498);
      v269 = v320;
      goto LABEL_115;
    case 8u:
      v114 = v335;
      v240 = v325;
      sub_2523DE7AC(v335, v325, type metadata accessor for AccessoryControl.State);
      v241 = *(v240 + 16);
      v242 = *(v240 + 24);
      v243 = *(v240 + 32);
      v244 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470) + 48);
      v245 = v334;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        sub_252372288(v240 + v244, &qword_27F4DB450);

LABEL_83:

        goto LABEL_84;
      }

      v246 = *(v240 + 8);
      v247 = *v240;
      LODWORD(v333) = *v245;
      v248 = v245[1];
      v331 = v245[2];
      v332 = v248;
      v249 = v245[3];
      v329 = v246;
      v330 = v249;
      v250 = v240;
      v251 = v245[4];
      sub_2523714D4(v250 + v244, v321, &qword_27F4DB450);
      v252 = v245 + v244;
      v253 = v308;
      sub_2523714D4(v252, v308, &qword_27F4DB450);
      LOBYTE(v357) = v247;
      *(&v357 + 1) = v329;
      *&v358 = v241;
      *(&v358 + 1) = v242;
      *&v359 = v243;
      LOBYTE(v350) = v333;
      *(&v350 + 1) = v332;
      *&v351 = v331;
      *(&v351 + 1) = v330;
      *&v352 = v251;
      v254 = _s22HomeAccessoryControlUI0bC0V22StatusButtonViewConfigV2eeoiySbAE_AEtFZ_0(&v357, &v350);

      if (v254)
      {
        v255 = v321;
        v128 = sub_2523CD2A0(v321, v253);
        v199 = &qword_27F4DB450;
        sub_252372288(v253, &qword_27F4DB450);
        v200 = v255;
LABEL_65:
        sub_252372288(v200, v199);
        goto LABEL_89;
      }

      v268 = &qword_27F4DB450;
      sub_252372288(v253, &qword_27F4DB450);
      v269 = v321;
LABEL_115:
      sub_252372288(v269, v268);
      goto LABEL_117;
    case 9u:
      v114 = v335;
      v149 = v326;
      sub_2523DE7AC(v335, v326, type metadata accessor for AccessoryControl.State);
      v150 = *(v149 + 1);
      v151 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4D8) + 48);
      v152 = v334;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        sub_252372288(&v149[v151], &qword_27F4DB4C8);
LABEL_84:

        goto LABEL_85;
      }

      v153 = *v149;
      v154 = *v152;
      v155 = *(v152 + 1);
      sub_2523714D4(&v149[v151], v322, &qword_27F4DB4C8);
      v156 = &v152[v151];
      v148 = v309;
      sub_2523714D4(v156, v309, &qword_27F4DB4C8);
      if (v153 == v154)
      {
        v266 = sub_2523E59C4(v150, v155);

        if (v266)
        {
          v146 = v322;
          v128 = sub_2523CD87C(v322, v148);
          v144 = &qword_27F4DB4C8;
          goto LABEL_94;
        }
      }

      else
      {
      }

      v144 = &qword_27F4DB4C8;
      sub_252372288(v148, &qword_27F4DB4C8);
      v267 = v322;
      goto LABEL_108;
    case 0xAu:
      v114 = v335;
      sub_2523DE7AC(v335, v83, type metadata accessor for AccessoryControl.State);
      v234 = *v83;
      v233 = *(v83 + 1);
      v235 = v83[16];
      v236 = v334;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_84;
      }

      v237 = *v236;
      v238 = *(v236 + 8);
      v239 = *(v236 + 16);
      if (v234 == v237 && v233 == v238)
      {

        if (v235 != v239)
        {
          goto LABEL_110;
        }

        goto LABEL_119;
      }

      v270 = sub_2526933B0();

      if ((v270 & 1) != 0 && ((v235 ^ v239) & 1) == 0)
      {
        goto LABEL_119;
      }

      goto LABEL_110;
    case 0xBu:
      v114 = v335;
      v125 = v329;
      sub_2523DE7AC(v335, v329, type metadata accessor for AccessoryControl.State);
      v126 = v334;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v127 = v305;
        sub_2523E127C(v126, v305, type metadata accessor for AccessoryControl.AlarmAndTimerConfig);
        v128 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
        v129 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig;
        goto LABEL_51;
      }

      v258 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig;
      goto LABEL_78;
    case 0xCu:
      v114 = v335;
      v139 = v330;
      sub_2523DE7AC(v335, v330, type metadata accessor for AccessoryControl.State);
      v140 = *(v139 + 16);
      v357 = *v139;
      v358 = v140;
      v359 = *(v139 + 32);
      *&v360 = *(v139 + 48);
      v141 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F0) + 48);
      v142 = v334;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        sub_252372288(v139 + v141, &qword_27F4DB2F8);
        sub_2523E1608(&v357);
        goto LABEL_85;
      }

      v143 = *(v142 + 16);
      v350 = *v142;
      v351 = v143;
      v352 = *(v142 + 32);
      *&v353 = *(v142 + 48);
      v144 = &qword_27F4DB2F8;
      v145 = v139 + v141;
      v146 = v312;
      sub_2523714D4(v145, v312, &qword_27F4DB2F8);
      v147 = v142 + v141;
      v148 = v311;
      sub_2523714D4(v147, v311, &qword_27F4DB2F8);
      v343 = v357;
      v344 = v358;
      v345 = v359;
      *&v346 = v360;
      v336 = v350;
      v337 = v351;
      v338 = v352;
      *&v339 = v353;
      if (static AccessoryControl.AutoClimateViewConfig.== infix(_:_:)(&v343, &v336))
      {
        v128 = sub_2523CD96C(v146, v148);
        sub_2523E1608(&v350);
        sub_2523E1608(&v357);
LABEL_94:
        sub_252372288(v148, v144);
        v218 = v146;
LABEL_95:
        sub_252372288(v218, v144);
        goto LABEL_96;
      }

      sub_2523E1608(&v350);
      sub_2523E1608(&v357);
LABEL_107:
      sub_252372288(v148, v144);
      v267 = v146;
LABEL_108:
      v271 = v144;
LABEL_109:
      sub_252372288(v267, v271);
      goto LABEL_110;
    case 0xDu:
      v114 = v335;
      v125 = v331;
      sub_2523DE7AC(v335, v331, type metadata accessor for AccessoryControl.State);
      v219 = v334;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v127 = v310;
        sub_2523E127C(v219, v310, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig);
        v128 = _s22HomeAccessoryControlUI0bC0V26AutoClimateAlertViewConfigV2eeoiySbAE_AEtFZ_0(v125, v127);
        v129 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig;
LABEL_51:
        v220 = v129;
        sub_2523E12E4(v127, v129);
        v183 = v125;
        goto LABEL_52;
      }

      v258 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig;
LABEL_78:
      v256 = v258;
      v257 = v125;
      goto LABEL_79;
    case 0xEu:
      v114 = v335;
      v115 = v332;
      sub_2523DE7AC(v335, v332, type metadata accessor for AccessoryControl.State);
      v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB348) + 48);
      v117 = v334;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v118 = v315;
        sub_2523E127C(v117, v315, type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig);
        v119 = v314;
        sub_2523714D4(v115 + v116, v314, &qword_27F4DB350);
        v120 = v313;
        sub_2523714D4(v117 + v116, v313, &qword_27F4DB350);
        if (*v115 == *v118 && v115[1] == v118[1] || (sub_2526933B0()) && (v121 = type metadata accessor for IconDescriptor(), (sub_25268F900()) && *(v115 + *(v121 + 24)) == *(v118 + *(v121 + 24)) && ((v122 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28), v123 = v115 + v122, v124 = v118 + v122, *(v115 + v122) == *(v118 + v122)) && *(v115 + v122 + 8) == *(v118 + v122 + 8) || (sub_2526933B0()) && (sub_25268F900() & 1) != 0 && v123[*(v121 + 24)] == v124[*(v121 + 24)] && ((v278 = *(v282 + 20), v279 = *(v115 + v278), v280 = *(v115 + v278 + 8), v281 = (v118 + v278), v279 == *v281) && v280 == v281[1] || (sub_2526933B0()))
        {
          if (sub_2523E5AFC(*(v115 + *(v282 + 24)), *(v118 + *(v282 + 24))))
          {
            v220 = type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig;
            sub_2523E12E4(v115, type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig);
            v128 = sub_2523CDF48(v119, v120);
            sub_252372288(v120, &qword_27F4DB350);
            sub_252372288(v119, &qword_27F4DB350);
            v183 = v118;
LABEL_52:
            v182 = v220;
LABEL_53:
            sub_2523E12E4(v183, v182);
LABEL_96:
            sub_2523E12E4(v114, type metadata accessor for AccessoryControl.State);
            return v128 & 1;
          }

          sub_252372288(v120, &qword_27F4DB350);
          sub_252372288(v119, &qword_27F4DB350);
          sub_2523E12E4(v115, type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig);
        }

        else
        {
          sub_2523E12E4(v115, type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig);
          sub_252372288(v120, &qword_27F4DB350);
          sub_252372288(v119, &qword_27F4DB350);
        }

        sub_2523E12E4(v118, type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig);
        goto LABEL_110;
      }

      sub_252372288(v115 + v116, &qword_27F4DB350);
      v256 = type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig;
      v257 = v115;
LABEL_79:
      sub_2523E12E4(v257, v256);
LABEL_85:
      sub_252372288(v114, &qword_27F4DB7A8);
LABEL_112:
      v128 = 0;
      return v128 & 1;
    default:
      sub_2523DE7AC(v335, v106, type metadata accessor for AccessoryControl.State);
      v112 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);
      v113 = v334;
      if (swift_getEnumCaseMultiPayload())
      {
        sub_252372288(v106 + v112, &qword_27F4DAD80);
        sub_2523E12E4(v106, type metadata accessor for AccessoryControl.BinaryViewConfig);
        v114 = v335;
        goto LABEL_85;
      }

      v260 = v290;
      sub_2523E127C(v113, v290, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v261 = v292;
      sub_2523714D4(v106 + v112, v292, &qword_27F4DAD80);
      v262 = v113 + v112;
      v263 = v291;
      sub_2523714D4(v262, v291, &qword_27F4DAD80);
      v264 = static AccessoryControl.BinaryViewConfig.== infix(_:_:)(v106, v260);
      sub_2523E12E4(v106, type metadata accessor for AccessoryControl.BinaryViewConfig);
      if (v264)
      {
        v128 = sub_2523CB730(v261, v263);
        sub_252372288(v263, &qword_27F4DAD80);
        sub_252372288(v261, &qword_27F4DAD80);
        sub_2523E12E4(v260, type metadata accessor for AccessoryControl.BinaryViewConfig);
LABEL_89:
        sub_2523E12E4(v335, type metadata accessor for AccessoryControl.State);
        return v128 & 1;
      }

      sub_252372288(v263, &qword_27F4DAD80);
      sub_252372288(v261, &qword_27F4DAD80);
      sub_2523E12E4(v260, type metadata accessor for AccessoryControl.BinaryViewConfig);
LABEL_117:
      v272 = v335;
      goto LABEL_111;
  }
}

uint64_t sub_2523E1244(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2523E127C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523E12E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2523E1344(unint64_t *a1, void (*a2)(uint64_t))
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2523E13D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = type metadata accessor for ControlBinding();
  v5 = *(*(v3 - 8) + 16);
  v6 = v1 + *(v4 + 40) + ((*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_2523E1480(uint64_t a1)
{
  v3 = type metadata accessor for ControlBinding();
  v4 = (v1 + ((*(*(v3 - 8) + 64) + ((*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return ControlBinding.set(value:errorHandler:)(a1, *v4, v4[1], v3);
}

uint64_t sub_2523E1520@<X0>(void (**a1)(void)@<X0>, uint64_t a2@<X8>)
{
  (*a1)(*(v2 + 32));
  v4 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  return (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
}

unint64_t sub_2523E15A4()
{
  result = qword_27F4DB578;
  if (!qword_27F4DB578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB578);
  }

  return result;
}

uint64_t sub_2523E165C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_2523E16B0()
{
  result = qword_27F4DB598;
  if (!qword_27F4DB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB598);
  }

  return result;
}

void sub_2523E18F8()
{
  type metadata accessor for AccessoryControl.ElementIdentifier();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AccessoryControl.State(319);
    if (v1 <= 0x3F)
    {
      sub_2523E19E4(319, &qword_27F4DB5E0);
      if (v2 <= 0x3F)
      {
        sub_2523E19E4(319, &qword_27F4DB5E8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2523E19E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_252693130();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AccessoryControl.Role(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryControl.Role(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2523E1BD0()
{
  sub_2523E20F4(319, &qword_27F4DB600, type metadata accessor for AccessoryControl.BinaryViewConfig, &qword_27F4DAD80);
  if (v0 <= 0x3F)
  {
    sub_2523E1EF0();
    if (v1 <= 0x3F)
    {
      sub_2523E1F64();
      if (v2 <= 0x3F)
      {
        sub_2523E20F4(319, &qword_27F4DB618, type metadata accessor for AccessoryControl.PickerViewConfig, &qword_27F4DAD68);
        if (v3 <= 0x3F)
        {
          sub_2523E20F4(319, &qword_27F4DB620, type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig, &qword_27F4DB3E0);
          if (v4 <= 0x3F)
          {
            sub_2523E2038(319, &qword_27F4DB628, &qword_27F4DB298);
            if (v5 <= 0x3F)
            {
              sub_2523E2038(319, &qword_27F4DB630, &qword_27F4DB278);
              if (v6 <= 0x3F)
              {
                sub_2523E2038(319, &qword_27F4DB638, &qword_27F4DB498);
                if (v7 <= 0x3F)
                {
                  sub_2523E2038(319, &qword_27F4DB640, &qword_27F4DB450);
                  if (v8 <= 0x3F)
                  {
                    sub_2523E2038(319, &qword_27F4DB648, &qword_27F4DB4C8);
                    if (v9 <= 0x3F)
                    {
                      sub_2523E2008();
                      if (v10 <= 0x3F)
                      {
                        sub_2523E20A8(319, &qword_27F4DB658, type metadata accessor for AccessoryControl.AlarmAndTimerConfig);
                        if (v11 <= 0x3F)
                        {
                          sub_2523E2038(319, &qword_27F4DB660, &qword_27F4DB2F8);
                          if (v12 <= 0x3F)
                          {
                            sub_2523E20A8(319, &qword_27F4DB668, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig);
                            if (v13 <= 0x3F)
                            {
                              sub_2523E20F4(319, &qword_27F4DB670, type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig, &qword_27F4DB350);
                              if (v14 <= 0x3F)
                              {
                                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
    }
  }
}

void sub_2523E1EF0()
{
  if (!qword_27F4DB608)
  {
    type metadata accessor for AccessoryControl.BinaryViewConfig(255);
    type metadata accessor for ControlAction(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4DB608);
    }
  }
}

void sub_2523E1F64()
{
  if (!qword_27F4DB610)
  {
    type metadata accessor for AccessoryControl.IncrementalConfig(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DAD78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DAD70);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F4DB610);
    }
  }
}

ValueMetadata *sub_2523E2008()
{
  result = qword_27F4DB650;
  if (!qword_27F4DB650)
  {
    result = &type metadata for AccessoryControl.MediaPlayerConfig;
    atomic_store(&type metadata for AccessoryControl.MediaPlayerConfig, &qword_27F4DB650);
  }

  return result;
}

void sub_2523E2038(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2523E20A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2523E20F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t *a4)
{
  if (!*a2)
  {
    a3(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2523E21A8()
{
  v0 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t dispatch thunk of AccessoryControl.WriteSpecificationHandler.perform(writeSpec:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2523E233C;

  return v9(a1, a2, a3);
}

uint64_t sub_2523E233C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2523E2458()
{
  result = sub_2523E24DC();
  if (v1 <= 0x3F)
  {
    result = sub_25268DA10();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2523E24DC()
{
  result = qword_27F4DB698[0];
  if (!qword_27F4DB698[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_27F4DB698);
  }

  return result;
}

uint64_t sub_2523E2548()
{
  type metadata accessor for AccessoryControl.WriteSpecification(255);
  swift_getFunctionTypeMetadata1();
  result = sub_252692DD0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AccessoryControl.ValueDestination(319);
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2523E260C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_25268DA10() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  v15 = v9 - 1;
  if (v15 <= v11)
  {
    v16 = *(v10 + 84);
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v12 | 7;
  v19 = ((v12 + 40) & ~v12) + v13 + v14;
  if (a2 <= v17)
  {
    goto LABEL_34;
  }

  v20 = ((v19 + ((v12 + 8) & ~v18)) & ~v14) + *(v10 + 64);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v17 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v24 < 2)
    {
LABEL_34:
      if ((v16 & 0x80000000) != 0)
      {
        v29 = (a1 + v18 + 8) & ~v18;
        if (v15 == v17)
        {
          if ((v8 & 0x80000000) != 0)
          {
            v31 = (*(v7 + 48))((v12 + 40 + v29) & ~v12);
          }

          else
          {
            v30 = *(((a1 + v18 + 8) & ~v18) + 0x18);
            if (v30 >= 0xFFFFFFFF)
            {
              LODWORD(v30) = -1;
            }

            v31 = v30 + 1;
          }

          if (v31 >= 2)
          {
            return v31 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v32 = *(v10 + 48);

          return v32((v19 + v29) & ~v14, v11);
        }
      }

      else
      {
        v28 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v28) = -1;
        }

        return (v28 + 1);
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_34;
  }

LABEL_21:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = ((v19 + ((v12 + 8) & ~v18)) & ~v14) + *(v10 + 64);
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v17 + (v27 | v25) + 1;
}

void sub_2523E28C4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_25268DA10() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v12 + 80);
  if (v11 - 1 <= v13)
  {
    v17 = *(v12 + 84);
  }

  else
  {
    v17 = v11 - 1;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = ((v14 + 40) & ~v14) + v15;
  v20 = ((v19 + v16 + ((v14 + 8) & ~(v14 | 7))) & ~v16) + *(v12 + 64);
  if (a3 <= v18)
  {
    v21 = 0;
  }

  else if (v20 <= 3)
  {
    v24 = ((a3 - v18 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v18 < a2)
  {
    v22 = ~v18 + a2;
    if (v20 < 4)
    {
      v23 = (v22 >> (8 * v20)) + 1;
      if (v20)
      {
        v26 = v22 & ~(-1 << (8 * v20));
        bzero(a1, v20);
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *a1 = v26;
            if (v21 > 1)
            {
LABEL_58:
              if (v21 == 2)
              {
                *&a1[v20] = v23;
              }

              else
              {
                *&a1[v20] = v23;
              }

              return;
            }
          }

          else
          {
            *a1 = v22;
            if (v21 > 1)
            {
              goto LABEL_58;
            }
          }

          goto LABEL_55;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v21 > 1)
      {
        goto LABEL_58;
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_58;
      }
    }

LABEL_55:
    if (v21)
    {
      a1[v20] = v23;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v20] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v21)
  {
    goto LABEL_36;
  }

  a1[v20] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v17 & 0x80000000) != 0)
  {
    v28 = (&a1[(v14 | 7) + 8] & ~(v14 | 7));
    if (v11 - 1 == v18)
    {
      if (a2 >= v11)
      {
        if (v19 <= 3)
        {
          v31 = ~(-1 << (8 * v19));
        }

        else
        {
          v31 = -1;
        }

        if (v19)
        {
          v32 = v31 & (a2 - v11);
          if (v19 <= 3)
          {
            v33 = v19;
          }

          else
          {
            v33 = 4;
          }

          bzero(v28, v19);
          if (v33 > 2)
          {
            if (v33 == 3)
            {
              *v28 = v32;
              *(v28 + 2) = BYTE2(v32);
            }

            else
            {
              *v28 = v32;
            }
          }

          else if (v33 == 1)
          {
            *v28 = v32;
          }

          else
          {
            *v28 = v32;
          }
        }
      }

      else
      {
        v29 = (a2 + 1);
        if ((v10 & 0x80000000) != 0)
        {
          v34 = *(v9 + 56);

          v34((v28 + v14 + 40) & ~v14, v29);
        }

        else if ((v29 & 0x80000000) != 0)
        {
          *(v28 + 4) = 0u;
          *(v28 + 12) = 0u;
          *v28 = (a2 - 0x7FFFFFFF);
        }

        else
        {
          *(v28 + 3) = a2;
        }
      }
    }

    else
    {
      v30 = *(v12 + 56);

      v30((v28 + v19 + v16) & ~v16, a2, v13);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v27 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v27 = (a2 - 1);
    }

    *a1 = v27;
  }
}

void sub_2523E2CD0()
{
  sub_2523E2D5C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AccessoryControl.ValueDestination(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2523E2D5C()
{
  if (!qword_27F4DB730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB738);
    v0 = sub_252692DD0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DB730);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2523E2E24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2523E2EAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x754272656B636970;
    v12 = 0xEC0000006E6F7474;
    v13 = 0x7542737574617473;
    v14 = 0xEC0000006E6F7474;
    if (a1 != 8)
    {
      v13 = 0x79616C7265766FLL;
      v14 = 0xE700000000000000;
    }

    if (a1 != 7)
    {
      v11 = v13;
      v12 = v14;
    }

    v15 = 0x74736F6D72656874;
    v16 = 0xEA00000000007461;
    if (a1 != 5)
    {
      v15 = 0x6E41736D72616C61;
      v16 = 0xEF7372656D695464;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE600000000000000;
    v5 = 0x72656B636970;
    v6 = 0xE500000000000000;
    v7 = 0x726F6C6F63;
    if (a1 != 3)
    {
      v7 = 0x616C50616964656DLL;
      v6 = 0xED00006B63616279;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x6E656D6572636E69;
    if (a1)
    {
      v3 = 0xEB000000006C6174;
    }

    else
    {
      v8 = 0x7972616E6962;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = 0xEA00000000007461;
        if (v9 != 0x74736F6D72656874)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0xEF7372656D695464;
        if (v9 != 0x6E41736D72616C61)
        {
LABEL_57:
          v19 = sub_2526933B0();
          goto LABEL_58;
        }
      }
    }

    else
    {
      if (a2 == 7)
      {
        v18 = 0x72656B636970;
      }

      else
      {
        if (a2 != 8)
        {
          v17 = 0xE700000000000000;
          if (v9 != 0x79616C7265766FLL)
          {
            goto LABEL_57;
          }

          goto LABEL_55;
        }

        v18 = 0x737574617473;
      }

      v17 = 0xEC0000006E6F7474;
      if (v9 != (v18 & 0xFFFFFFFFFFFFLL | 0x7542000000000000))
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v17 = 0xEB000000006C6174;
      if (v9 != 0x6E656D6572636E69)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x7972616E6962)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v17 = 0xE600000000000000;
    if (v9 != 0x72656B636970)
    {
      goto LABEL_57;
    }
  }

  else if (a2 == 3)
  {
    v17 = 0xE500000000000000;
    if (v9 != 0x726F6C6F63)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v17 = 0xED00006B63616279;
    if (v9 != 0x616C50616964656DLL)
    {
      goto LABEL_57;
    }
  }

LABEL_55:
  if (v10 != v17)
  {
    goto LABEL_57;
  }

  v19 = 1;
LABEL_58:

  return v19 & 1;
}

uint64_t sub_2523E31F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006573756150;
  v3 = 0x7472617453637672;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x50746E6572727563;
    v12 = 0xED00007465736572;
    if (a1 != 6)
    {
      v11 = 0xD000000000000012;
      v12 = 0x80000002526ADA40;
    }

    v13 = 0xD000000000000010;
    v14 = 0x80000002526ADA10;
    if (a1 != 4)
    {
      v13 = 0x746E696F70746573;
      v14 = 0xEC000000646C6F48;
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x6D6F486F47637672;
    v6 = 0xE900000000000065;
    if (a1 == 2)
    {
      v5 = 0x7472617453637672;
      v6 = 0xED00006573756150;
    }

    v7 = 0x80000002526AD9C0;
    v8 = 0xD000000000000015;
    if (a1)
    {
      v7 = 0x80000002526AD9E0;
    }

    else
    {
      v8 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xED00007465736572;
        if (v9 != 0x50746E6572727563)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x80000002526ADA40;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 == 4)
    {
      v2 = 0x80000002526ADA10;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v3 = 0x746E696F70746573;
    v2 = 0xEC000000646C6F48;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x80000002526AD9E0;
        if (v9 != 0xD000000000000015)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x80000002526AD9C0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 != 2)
    {
      v2 = 0xE900000000000065;
      if (v9 != 0x6D6F486F47637672)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  if (v9 != v3)
  {
LABEL_45:
    v15 = sub_2526933B0();
    goto LABEL_46;
  }

LABEL_42:
  if (v10 != v2)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_2523E34C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0x80000002526AD9E0;
    v13 = 0xD000000000000015;
    if (a1 != 2)
    {
      v13 = 0x7472617453637672;
      v12 = 0xED00006573756150;
    }

    v14 = 0xD000000000000013;
    if (a1)
    {
      v11 = 0x80000002526AD9C0;
    }

    else
    {
      v14 = 1701736302;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x746E696F70746573;
    v4 = 0xEC000000646C6F48;
    v5 = 0x50746E6572727563;
    v6 = 0x80000002526ADA40;
    if (a1 == 7)
    {
      v6 = 0xED00007465736572;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x6D6F486F47637672;
    v8 = 0xE900000000000065;
    if (a1 != 4)
    {
      v7 = 0xD000000000000010;
      v8 = 0x80000002526ADA10;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v15 = 0x7472617453637672;
        v16 = 0x6573756150;
LABEL_46:
        v17 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v9 != v15)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }

      v17 = 0x80000002526AD9E0;
      if (v9 != 0xD000000000000015)
      {
        goto LABEL_53;
      }
    }

    else if (a2)
    {
      v17 = 0x80000002526AD9C0;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v17 = 0xE400000000000000;
      if (v9 != 1701736302)
      {
        goto LABEL_53;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v17 = 0xE900000000000065;
      if (v9 != 0x6D6F486F47637672)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v17 = 0x80000002526ADA10;
      if (v9 != 0xD000000000000010)
      {
LABEL_53:
        v18 = sub_2526933B0();
        goto LABEL_54;
      }
    }
  }

  else
  {
    if (a2 != 6)
    {
      if (a2 != 7)
      {
        v17 = 0x80000002526ADA40;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }

      v15 = 0x50746E6572727563;
      v16 = 0x7465736572;
      goto LABEL_46;
    }

    v17 = 0xEC000000646C6F48;
    if (v9 != 0x746E696F70746573)
    {
      goto LABEL_53;
    }
  }

LABEL_51:
  if (v10 != v17)
  {
    goto LABEL_53;
  }

  v18 = 1;
LABEL_54:

  return v18 & 1;
}

uint64_t sub_2523E37F4()
{
  sub_252692C80();
}

uint64_t sub_2523E398C()
{
  sub_252692C80();
}

uint64_t sub_2523E3AF0()
{
  sub_252692C80();
}

uint64_t sub_2523E3C74()
{
  sub_252693460();
  sub_252692C80();

  return sub_2526934C0();
}

uint64_t static AccessoryControl.ElementIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = a2;
  v2 = sub_25268DA10();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x28223BE20](v2);
  v54 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessoryControl.ElementIdentifier();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v55 = &v53 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v53 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v53 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v53 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v53 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7E0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v53 - v28;
  v30 = &v53 + *(v27 + 56) - v28;
  sub_2523EB0A8(v59, &v53 - v28, type metadata accessor for AccessoryControl.ElementIdentifier);
  sub_2523EB0A8(v60, v30, type metadata accessor for AccessoryControl.ElementIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2523EB0A8(v29, v25, type metadata accessor for AccessoryControl.ElementIdentifier);
      if (!swift_getEnumCaseMultiPayload())
      {
        v49 = v57;
        v48 = v58;
        v50 = v54;
        (*(v57 + 32))(v54, v30, v58);
        v33 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
        v51 = *(v49 + 8);
        v51(v50, v48);
        v51(v25, v48);
        goto LABEL_28;
      }

      (*(v57 + 8))(v25, v58);
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_2523EB0A8(v29, v23, type metadata accessor for AccessoryControl.ElementIdentifier);
      v32 = *v23;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = sub_2523E7578(v32, *v30, MEMORY[0x277CC95F0], &qword_27F4DAF90, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);

LABEL_28:
        v42 = v29;
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    sub_2523EB0A8(v29, v20, type metadata accessor for AccessoryControl.ElementIdentifier);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v44 = *v20 == *v30;
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_2523EB0A8(v29, v14, type metadata accessor for AccessoryControl.ElementIdentifier);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v34 = swift_projectBox();
        v35 = *v34;
        v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB408) + 48);
        v37 = swift_projectBox();
        v38 = *v37;
        v39 = v56;
        sub_2523EB0A8(&v34[v36], v56, type metadata accessor for AccessoryControl.ElementIdentifier);
        v40 = &v37[v36];
        v41 = v55;
        sub_2523EB0A8(v40, v55, type metadata accessor for AccessoryControl.ElementIdentifier);
        if ((sub_2523E31F0(v35, v38) & 1) == 0)
        {
          sub_2523EB110(v41, type metadata accessor for AccessoryControl.ElementIdentifier);
          sub_2523EB110(v39, type metadata accessor for AccessoryControl.ElementIdentifier);

          sub_2523EB110(v29, type metadata accessor for AccessoryControl.ElementIdentifier);
          goto LABEL_26;
        }

        v33 = static AccessoryControl.ElementIdentifier.== infix(_:_:)(v39, v41);
        sub_2523EB110(v41, type metadata accessor for AccessoryControl.ElementIdentifier);
        sub_2523EB110(v39, type metadata accessor for AccessoryControl.ElementIdentifier);

        v42 = v29;
LABEL_29:
        sub_2523EB110(v42, type metadata accessor for AccessoryControl.ElementIdentifier);
        return v33 & 1;
      }
    }

    else
    {
      sub_2523EB0A8(v29, v7, type metadata accessor for AccessoryControl.ElementIdentifier);
      v45 = *v7;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v46 = *(v45 + 16);
        v47 = *(*v30 + 16);

        v33 = sub_2523E5B50(v46, v47, type metadata accessor for AccessoryControl.ElementIdentifier, type metadata accessor for AccessoryControl.ElementIdentifier, static AccessoryControl.ElementIdentifier.== infix(_:_:), type metadata accessor for AccessoryControl.ElementIdentifier);

        v42 = v29;
        goto LABEL_29;
      }
    }

    goto LABEL_25;
  }

  sub_2523EB0A8(v29, v17, type metadata accessor for AccessoryControl.ElementIdentifier);
  v43 = *(v17 + 4);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    if (*v17 != *v30)
    {
      sub_2523EB110(v29, type metadata accessor for AccessoryControl.ElementIdentifier);
      goto LABEL_26;
    }

    v44 = v43 == *(v30 + 4);
LABEL_18:
    v33 = v44;
    goto LABEL_28;
  }

LABEL_25:
  sub_252372288(v29, &qword_27F4DB7E0);
LABEL_26:
  v33 = 0;
  return v33 & 1;
}

uint64_t type metadata accessor for AccessoryControl.ElementIdentifier()
{
  result = qword_27F4DB800;
  if (!qword_27F4DB800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AccessoryControl.ElementIdentifier.description.getter()
{
  v1 = v0;
  v2 = sub_25268DA10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.ElementIdentifier();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  sub_2523EB0A8(v1, &v37 - v10, type metadata accessor for AccessoryControl.ElementIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v5, v11, v2);
      v39[0] = 0x2864697575;
      v39[1] = 0xE500000000000000;
      sub_2523EB060(&qword_27F4DB2B8, MEMORY[0x277CC95F0]);
      v22 = sub_252693370();
      MEMORY[0x2530A4800](v22);

      MEMORY[0x2530A4800](41, 0xE100000000000000);
      v23 = v39[0];
      (*(v3 + 8))(v5, v2);
      return v23;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v13 = *v11;
      strcpy(v39, "uuidList(");
      WORD1(v39[1]) = 0;
      HIDWORD(v39[1]) = -385875968;
      v14 = MEMORY[0x2530A4900](v13, v2);
      v16 = v15;

      MEMORY[0x2530A4800](v14, v16);
LABEL_15:

      MEMORY[0x2530A4800](41, 0xE100000000000000);
      return v39[0];
    }

    v28 = *v11;
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    sub_252693210();

    strcpy(v39, "matterDevice(");
    HIWORD(v39[1]) = -4864;
    v38 = v28;
LABEL_14:
    v29 = sub_252693370();
    MEMORY[0x2530A4800](v29);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v25 = *v11;
    v26 = *(v11 + 4);
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    sub_252693210();

    v39[0] = 0xD000000000000016;
    v39[1] = 0x80000002526AE680;
    v38 = v25;
    v27 = sub_252693370();
    MEMORY[0x2530A4800](v27);

    MEMORY[0x2530A4800](0x696F70646E65202CLL, 0xEE00203A4449746ELL);
    LOWORD(v38) = v26;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 4)
  {
    strcpy(v39, "merged(");
    v39[1] = 0xE700000000000000;

    v31 = MEMORY[0x2530A4900](v30, v6);
    v33 = v32;

    MEMORY[0x2530A4800](v31, v33);

    MEMORY[0x2530A4800](41, 0xE100000000000000);

    return v39[0];
  }

  v17 = 0xD000000000000010;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB408);
  v19 = swift_projectBox();
  v20 = *v19;
  sub_2523EB0A8(&v19[*(v18 + 48)], v9, type metadata accessor for AccessoryControl.ElementIdentifier);
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_252693210();

  v39[0] = 0xD000000000000014;
  v39[1] = 0x80000002526AE660;
  if (v20 > 3)
  {
    if (v20 > 5)
    {
      if (v20 == 6)
      {
        v21 = 0xED00007465736572;
        v17 = 0x50746E6572727563;
      }

      else
      {
        v21 = 0x80000002526ADA40;
        v17 = 0xD000000000000012;
      }
    }

    else if (v20 == 4)
    {
      v21 = 0x80000002526ADA10;
    }

    else
    {
      v21 = 0xEC000000646C6F48;
      v17 = 0x746E696F70746573;
    }
  }

  else if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = 0xED00006573756150;
      v17 = 0x7472617453637672;
    }

    else
    {
      v21 = 0xE900000000000065;
      v17 = 0x6D6F486F47637672;
    }
  }

  else if (v20)
  {
    v21 = 0x80000002526AD9E0;
    v17 = 0xD000000000000015;
  }

  else
  {
    v21 = 0x80000002526AD9C0;
    v17 = 0xD000000000000013;
  }

  MEMORY[0x2530A4800](v17, v21);

  v34 = MEMORY[0x2530A4800](0x6E6968746977202CLL, 0xEA0000000000203ALL);
  v35 = AccessoryControl.ElementIdentifier.description.getter(v34);
  MEMORY[0x2530A4800](v35);

  MEMORY[0x2530A4800](41, 0xE100000000000000);
  v36 = v39[0];
  sub_2523EB110(v9, type metadata accessor for AccessoryControl.ElementIdentifier);

  return v36;
}

unint64_t AccessoryControl.ControlTypeIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7472617453637672;
  v3 = 0x50746E6572727563;
  if (v1 != 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x746E696F70746573;
  if (v1 == 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (v1 != 2)
  {
    v2 = 0x6D6F486F47637672;
  }

  v5 = 0xD000000000000015;
  if (!*v0)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2523E4D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = (&v50 - v10);
  MEMORY[0x28223BE20](v11);
  v54 = (&v50 - v12);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB840);
  MEMORY[0x28223BE20](v57);
  v14 = &v50 - v13;
  v15 = type metadata accessor for Device.ControlGroup(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v50 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    return 0;
  }

  if (!v23 || a1 == a2)
  {
    return 1;
  }

  v56 = v19;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v51 = *(v20 + 72);
  v52 = v6;
  v50 = v8;
  while (1)
  {
    sub_2523EB0A8(v25, v22, type metadata accessor for Device.ControlGroup);
    sub_2523EB0A8(v26, v17, type metadata accessor for Device.ControlGroup);
    v28 = *(v57 + 48);
    sub_2523EB0A8(v22, v14, type metadata accessor for Device.ControlGroup.LayoutType);
    sub_2523EB0A8(v17, &v14[v28], type metadata accessor for Device.ControlGroup.LayoutType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v32 = v54;
      sub_2523EB0A8(v14, v54, type metadata accessor for Device.ControlGroup.LayoutType);
      v31 = *v32;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_30:

        goto LABEL_32;
      }

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v30 = v55;
      sub_2523EB0A8(v14, v55, type metadata accessor for Device.ControlGroup.LayoutType);
      v31 = *v30;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_30;
      }

LABEL_13:
      v33 = sub_2523E7CA4(v31, *&v14[v28]);

      sub_2523EB110(v14, type metadata accessor for Device.ControlGroup.LayoutType);
      v34 = v56;
      if ((v33 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_17;
    }

    v35 = v50;
    sub_2523EB0A8(v14, v50, type metadata accessor for Device.ControlGroup.LayoutType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      break;
    }

    v36 = v53;
    sub_2523EAFF8(&v14[v28], v53, type metadata accessor for Device.Control);
    v37 = static Device.Control.== infix(_:_:)(v35, v36);
    sub_2523EB110(v36, type metadata accessor for Device.Control);
    sub_2523EB110(v35, type metadata accessor for Device.Control);
    sub_2523EB110(v14, type metadata accessor for Device.ControlGroup.LayoutType);
    v34 = v56;
    if ((v37 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_17:
    v38 = *(v34 + 20);
    v39 = &v22[v38];
    v40 = *&v22[v38 + 8];
    v41 = &v17[v38];
    v42 = *(v41 + 1);
    if (v40)
    {
      if (!v42)
      {
        goto LABEL_33;
      }

      if (*v39 != *v41 || v40 != v42)
      {
        v43 = sub_2526933B0();
        v34 = v56;
        if ((v43 & 1) == 0)
        {
          goto LABEL_33;
        }
      }
    }

    else if (v42)
    {
      goto LABEL_33;
    }

    v44 = *(v34 + 24);
    v45 = &v22[v44];
    v46 = *&v22[v44 + 8];
    v47 = &v17[v44];
    v48 = *(v47 + 1);
    v27 = v48 == 0;
    if (!v46)
    {
      goto LABEL_6;
    }

    if (!v48)
    {
      goto LABEL_33;
    }

    if (*v45 != *v47 || v46 != v48)
    {
      v27 = sub_2526933B0();
LABEL_6:
      sub_2523EB110(v17, type metadata accessor for Device.ControlGroup);
      sub_2523EB110(v22, type metadata accessor for Device.ControlGroup);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    sub_2523EB110(v17, type metadata accessor for Device.ControlGroup);
    sub_2523EB110(v22, type metadata accessor for Device.ControlGroup);
LABEL_7:
    v26 += v51;
    v25 += v51;
    if (!--v23)
    {
      return 1;
    }
  }

  sub_2523EB110(v35, type metadata accessor for Device.Control);
LABEL_32:
  sub_252372288(v14, &qword_27F4DB840);
LABEL_33:
  sub_2523EB110(v17, type metadata accessor for Device.ControlGroup);
  sub_2523EB110(v22, type metadata accessor for Device.ControlGroup);
  return 0;
}

uint64_t sub_2523E5398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControlGroup(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_2523EB0A8(v13, v10, type metadata accessor for AccessoryControlGroup);
      sub_2523EB0A8(v14, v7, type metadata accessor for AccessoryControlGroup);
      if ((static AccessoryControl.ElementIdentifier.== infix(_:_:)(v10, v7) & 1) == 0 || (static AccessoryControlGroup.Layout.== infix(_:_:)(&v10[v4[5]], &v7[v4[5]]) & 1) == 0 || ((v16 = v4[6], v17 = *&v10[v16], v18 = *&v10[v16 + 8], v19 = &v7[v16], v17 == *v19) ? (v20 = v18 == *(v19 + 1)) : (v20 = 0), !v20 && (sub_2526933B0() & 1) == 0))
      {
LABEL_23:
        sub_2523EB110(v7, type metadata accessor for AccessoryControlGroup);
        sub_2523EB110(v10, type metadata accessor for AccessoryControlGroup);
        return 0;
      }

      v21 = v4[7];
      v22 = &v10[v21];
      v23 = *&v10[v21 + 8];
      v24 = &v7[v21];
      v25 = *(v24 + 1);
      v26 = v25 == 0;
      if (!v23)
      {
        goto LABEL_5;
      }

      if (!v25)
      {
        goto LABEL_23;
      }

      if (*v22 != *v24 || v23 != v25)
      {
        break;
      }

      sub_2523EB110(v7, type metadata accessor for AccessoryControlGroup);
      sub_2523EB110(v10, type metadata accessor for AccessoryControlGroup);
LABEL_6:
      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    v26 = sub_2526933B0();
LABEL_5:
    sub_2523EB110(v7, type metadata accessor for AccessoryControlGroup);
    sub_2523EB110(v10, type metadata accessor for AccessoryControlGroup);
    if ((v26 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_2523E5634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v34 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v32 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_2523EB0A8(v13, v10, type metadata accessor for AccessoryControl);
        sub_2523EB0A8(v14, v7, type metadata accessor for AccessoryControl);
        if ((static AccessoryControl.ElementIdentifier.== infix(_:_:)(v10, v7) & 1) == 0 || (static AccessoryControl.State.== infix(_:_:)(&v10[v4[5]], &v7[v4[5]]) & 1) == 0 || v10[v4[6]] != v7[v4[6]])
        {
          break;
        }

        v16 = v4[7];
        v17 = &v10[v16];
        v18 = *&v10[v16 + 8];
        v19 = &v7[v16];
        v20 = *(v19 + 1);
        if (v18)
        {
          if (!v20)
          {
            break;
          }

          v21 = *v17 == *v19 && v18 == v20;
          if (!v21 && (sub_2526933B0() & 1) == 0)
          {
            break;
          }
        }

        else if (v20)
        {
          break;
        }

        v22 = v4[8];
        v23 = v10[v22];
        v24 = v10[v22 + 1];
        v25 = &v7[v22];
        v26 = *v25;
        v27 = v25[1];
        if (v23 == 4)
        {
          if (v26 != 4)
          {
            break;
          }
        }

        else if (v23 != v26)
        {
          break;
        }

        if (v24 == 4)
        {
          if (v27 != 4)
          {
            break;
          }
        }

        else if (v27 == 4 || v24 != v27)
        {
          break;
        }

        v28 = v4[9];
        v29 = v10[v28];
        v30 = v7[v28];
        if (v29 == 16)
        {
          if (v30 != 16)
          {
            break;
          }
        }

        else if (v29 != v30)
        {
          break;
        }

        v31 = v10[v4[10]] ^ v7[v4[10]];
        sub_2523EB110(v7, type metadata accessor for AccessoryControl);
        sub_2523EB110(v10, type metadata accessor for AccessoryControl);
        if ((v31 & 1) == 0)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        v32 = v31 ^ 1;
        return v32 & 1;
      }

      sub_2523EB110(v7, type metadata accessor for AccessoryControl);
      sub_2523EB110(v10, type metadata accessor for AccessoryControl);
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32 & 1;
}

uint64_t sub_2523E5934(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2526933B0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2523E59C4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = v4 + 32 * v3;
    v7 = v5 + 32 * v3;
    if (*v6 != *v7)
    {
      return 0;
    }

    result = *(v6 + 8);
    v8 = *(v6 + 24);
    v9 = *(v7 + 24);
    if (result != *(v7 + 8) || *(v6 + 16) != *(v7 + 16))
    {
      result = sub_2526933B0();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    v11 = *(v8 + 16);
    if (v11 != *(v9 + 16))
    {
      return 0;
    }

    if (v11)
    {
      v12 = v8 == v9;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = (v8 + 48);
      v14 = (v9 + 48);
      while (v11)
      {
        if (*(v13 - 4) != *(v14 - 4))
        {
          return 0;
        }

        result = *(v13 - 1);
        if (result != *(v14 - 1) || *v13 != *v14)
        {
          result = sub_2526933B0();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v13 += 3;
        v14 += 3;
        if (!--v11)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2523E5B50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_2523EB0A8(v20, v17, a4);
        sub_2523EB0A8(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_2523EB110(v14, a6);
        sub_2523EB110(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_2523E5CF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    for (i = (a2 + 48); *(v3 - 4) == *(i - 4); i += 3)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2526933B0() & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2523E5D90(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = (v4 + 32 * v3);
    v7 = (v5 + 32 * v3);
    if (*v6 != *v7)
    {
      return 0;
    }

    v8 = v6[3];
    v9 = v7[3];
    v10 = v6[1] == v7[1] && v6[2] == v7[2];
    if (!v10 && (sub_2526933B0() & 1) == 0)
    {
      return 0;
    }

    v11 = *(v8 + 16);
    if (v11 != *(v9 + 16))
    {
      return 0;
    }

    if (v11)
    {
      v12 = v8 == v9;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v20 = v2;

      v13 = 0;
      while (v11)
      {
        v14 = (v8 + v13);
        v15 = (v9 + v13);
        if (*(v8 + v13 + 32) != *(v9 + v13 + 32) || ((result = v14[5], v16 = v14[7], v17 = v15[7], result == v15[5]) ? (v18 = v14[6] == v15[6]) : (v18 = 0), !v18 && (result = sub_2526933B0(), (result & 1) == 0)))
        {
LABEL_33:

          return 0;
        }

        if (v16)
        {
          if (!v17)
          {
            goto LABEL_33;
          }

          swift_retain_n();
          v19 = sub_252692280();

          if ((v19 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else if (v17)
        {
          goto LABEL_33;
        }

        v13 += 32;
        if (!--v11)
        {

          v2 = v20;
          goto LABEL_7;
        }
      }

      __break(1u);
      break;
    }

LABEL_7:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}