uint64_t _s22HomeAccessoryControlUI6DeviceV8controls4with14actionEndpoint7handlerSayAC0C6ModuleVG0A9DataModel13ActionServiceV_AK0nI0VSgAA0bC0V25WriteSpecificationHandler_pSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v44 = a3;
  v42 = a1;
  v3 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3430);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_25268E8D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25268E040();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25268E850();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for HAPControlSolver.Source();
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, v42, v18, v23);
  sub_25268E1B0();
  v26 = sub_25268E1A0();
  sub_25268E140();

  sub_25268E870();
  (*(v12 + 8))(v14, v11);
  sub_25237153C(v43, v10, &qword_27F4E3430);
  sub_25259A854(v21, v17, v10, v25);
  sub_25237153C(v44, &v46, &qword_27F4E3438);
  if (v47)
  {
    sub_25235E1A4(&v46, v49);
    sub_2523C3820(v49, &v46);
    sub_2523C3820(&v46, v5);
    v27 = v47;
    v28 = v48;
    __swift_project_boxed_opaque_existential_1(&v46, v47);
    v29 = *(v28 + 8);
    v30 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
    v29(v27, v28);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    __swift_destroy_boxed_opaque_existential_1Tm(&v46);
    (*(*(v30 - 8) + 56))(v5, 0, 1, v30);
  }

  else
  {
    sub_252372288(&v46, &qword_27F4E3438);
    v31 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
    (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
  }

  v32 = v45;
  sub_252599CF8(v5, v45, type metadata accessor for AccessoryControl.ValueDestination);
  v33 = sub_252594D38(v25, v32);
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v35 = sub_252595348(v25, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE30);
    v36 = (type metadata accessor for Device.ControlModule(0) - 8);
    v37 = (*(*v36 + 80) + 32) & ~*(*v36 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_252694E90;
    v38 = (v34 + v37);
    *(v38 + 3) = 0;
    *(v38 + 4) = 0;
    v39 = v36[9];
    v40 = type metadata accessor for AccessoryControlModule.Layout(0);
    (*(*(v40 - 8) + 56))(&v38[v39], 1, 1, v40);
    *(v38 + 1) = 0;
    *(v38 + 2) = v35;
    *v38 = 0;
  }

  sub_252599D60(v32, type metadata accessor for AccessoryControl.ValueDestination);
  sub_252599D60(v25, type metadata accessor for HAPControlSolver.Source);
  return v34;
}

uint64_t _s22HomeAccessoryControlUI6DeviceV8controls4withSayAC0C6ModuleVG0A9DataModel18ActionServiceGroupV_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3430);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v58 - v3;
  v63 = sub_25268E8D0();
  v5 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v75 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25268E040();
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HAPControlSolver.Source();
  MEMORY[0x28223BE20](v9 - 8);
  v73 = (&v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Device.ControlGroup(0);
  v72 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADE0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v58 - v16;
  v18 = sub_25268E850();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v70 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v62 = &v58 - v22;
  v23 = sub_25268F470();
  v24 = v23;
  v25 = *(v23 + 16);
  if (v25)
  {
    v26 = sub_2525EEE48(*(v23 + 16), 0);
    v27 = sub_2525EF424(v77, &v26[(*(v19 + 80) + 32) & ~*(v19 + 80)], v25, v24);
    v76 = v77[0];
    v68 = v77[2];
    v69 = v77[1];
    v66 = v77[4];
    v67 = v77[3];

    sub_2523A4D1C();
    if (v27 == v25)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v26 = MEMORY[0x277D84F90];
LABEL_5:
  v77[0] = v26;
  sub_25258FA38(v77);

  v28 = v77[0];
  v29 = v77[0][2];
  if (v29)
  {
    v59 = v17;
    v60 = a1;
    v30 = sub_25268E1B0();
    v32 = *(v19 + 16);
    v31 = v19 + 16;
    v68 = v32;
    v69 = v30;
    v33 = (*(v31 + 64) + 32) & ~*(v31 + 64);
    v58 = v28;
    v34 = v28 + v33;
    v35 = *(v31 + 56);
    v66 = (v5 + 8);
    v67 = v35;
    v64 = (v31 - 8);
    v76 = MEMORY[0x277D84F90];
    v36 = v62;
    v37 = v63;
    v65 = v31;
    do
    {
      v38 = v68;
      v68(v36, v34, v18);
      v39 = v70;
      v38(v70, v36, v18);
      v40 = sub_25268E1A0();
      v41 = v75;
      sub_25268E140();

      v42 = v74;
      sub_25268E870();
      (*v66)(v41, v37);
      v43 = sub_25268ECE0();
      (*(*(v43 - 8) + 56))(v4, 1, 1, v43);
      v44 = v18;
      v45 = v37;
      v46 = v4;
      v47 = v73;
      sub_25259A854(v39, v42, v46, v73);
      v48 = sub_252595348(v47, 0);
      sub_252599D60(v47, type metadata accessor for HAPControlSolver.Source);
      if (*(v48 + 16) == 1)
      {
        v49 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v50 = v61;
        sub_252599DC0(v48 + v49, v61, type metadata accessor for Device.ControlGroup);

        (*v64)(v36, v44);
        sub_252599CF8(v50, v71, type metadata accessor for Device.ControlGroup);
        v51 = v76;
        v18 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_252369B0C(0, v51[2] + 1, 1, v51);
        }

        v53 = v51[2];
        v52 = v51[3];
        if (v53 >= v52 >> 1)
        {
          v51 = sub_252369B0C(v52 > 1, v53 + 1, 1, v51);
        }

        v51[2] = v53 + 1;
        v76 = v51;
        sub_252599CF8(v71, v51 + v49 + *(v72 + 72) * v53, type metadata accessor for Device.ControlGroup);
        v4 = v46;
        v36 = v62;
        v37 = v63;
      }

      else
      {
        (*v64)(v36, v44);

        v4 = v46;
        v37 = v45;
        v18 = v44;
      }

      v34 = v67 + v34;
      --v29;
    }

    while (v29);

    v17 = v59;
    v54 = v76;
  }

  else
  {

    v54 = MEMORY[0x277D84F90];
  }

  sub_25268F450();
  v55 = sub_25268E2F0();
  (*(*(v55 - 8) + 56))(v17, 0, 1, v55);
  v56 = sub_252595E74(v54, v17);

  sub_252372288(v17, &qword_27F4DADE0);
  return v56;
}

uint64_t sub_252599CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252599D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252599DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252599E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for HAPControlSolver.Source()
{
  result = qword_27F4E34A0;
  if (!qword_27F4E34A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HAPControlSolver.Source.has(characteristicKinds:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  v5 = sub_25268F4D0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v20[2] = v6 + 32;
  v20[3] = v6 + 16;
  v20[1] = v6 + 8;
  v21 = a1;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
LABEL_8:
      (*(v6 + 16))(v11, *(v21 + 48) + *(v6 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v5);
      (*(v6 + 32))(v9, v11, v5);
      type metadata accessor for HAPControlSolver.Source();
      sub_25268FD80();
      (*(v6 + 8))(v9, v5);
      v19 = sub_25268F9E0();
      if ((*(*(v19 - 8) + 48))(v4, 1, v19) == 1)
      {
        break;
      }

      v14 &= v14 - 1;
      result = sub_252372288(v4, &qword_27F4DB208);
      v17 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    sub_252372288(v4, &qword_27F4DB208);
    return 0;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        return 1;
      }

      v14 = *(a1 + 56 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

unsigned __int8 *HAPControlSolver.Source.runningState(currentMode:)@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
LABEL_8:
      LOBYTE(v2) = 0;
      goto LABEL_13;
    }

    v3 = a2;
    type metadata accessor for HAPControlSolver.Source();
    *&result = COERCE_DOUBLE(sub_25268FD50());
    if (v4 & 1) != 0 || (v5 = *&result, *&result = COERCE_DOUBLE(sub_25268FD40()), (v6))
    {
      LOBYTE(v2) = 0;
    }

    else if (v5 >= *&result)
    {
      LOBYTE(v2) = 1;
    }

    else
    {
      LOBYTE(v2) = 2;
    }

    a2 = v3;
  }

  else if (v2 - 1 >= 2)
  {
    goto LABEL_8;
  }

LABEL_13:
  *a2 = v2;
  return result;
}

uint64_t sub_25259A3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v41 = a3;
  v42 = sub_25268E040();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_25268EBE0();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD58);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_25268EE60();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD50);
  MEMORY[0x28223BE20](v17 - 8);
  v36 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v36 - v23;
  v25 = a1;
  StaticService.staticEndpoint.getter(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_252372288(v9, &qword_27F4DAD58);
    v26 = 1;
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v13, v16, v10);
    MatterControlSolver.Source.init(with:)(v13, v21);
    (*(v11 + 8))(v16, v10);
    v26 = 0;
  }

  v27 = type metadata accessor for MatterControlSolver.Source(0);
  (*(*(v27 - 8) + 56))(v21, v26, 1, v27);
  sub_2523714D4(v21, v24, &qword_27F4DAD50);
  v28 = v37;
  v29 = v39;
  (*(v5 + 16))(v37, a1, v39);
  v30 = v36;
  sub_25237153C(v24, v36, &qword_27F4DAD50);
  v31 = v40;
  v32 = v38;
  v34 = v42;
  v33 = v43;
  (*(v40 + 16))(v38, v43, v42);
  sub_25259AF74(v28, v30, v32, v41);
  (*(v31 + 8))(v33, v34);
  (*(v5 + 8))(v25, v29);
  return sub_252372288(v24, &qword_27F4DAD50);
}

uint64_t sub_25259A854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a3;
  v65 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3430);
  MEMORY[0x28223BE20](v6 - 8);
  v60 = &v57 - v7;
  v8 = sub_25268ECE0();
  v9 = *(v8 - 8);
  v62 = v8;
  v63 = v9;
  MEMORY[0x28223BE20](v8);
  v58 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD50);
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v57 - v14;
  v15 = sub_25268DA10();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HAPControlSolver.Source();
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268E810();
  sub_25268E760();
  sub_25268E720();
  v22 = sub_25268E830();
  v23 = &v21[v19[7]];
  *v23 = v22;
  v23[1] = v24;
  v25 = sub_25268E780();
  v26 = &v21[v19[8]];
  *v26 = v25;
  v26[1] = v27;
  sub_25268E790();
  v21[v19[10]] = 1;
  v28 = &v21[v19[11]];
  *v28 = 0;
  *(v28 + 1) = 0;
  sub_25268E730();
  v21[v19[13]] = (sub_25268E840() & 1) == 0;
  v71 = 0x2D65636976726573;
  v72 = 0xE800000000000000;
  sub_25268E810();
  sub_2525A3E9C(&qword_27F4DB2B8, MEMORY[0x277CC95F0]);
  v29 = sub_252693370();
  MEMORY[0x2530A4800](v29);

  (*(v16 + 8))(v18, v15);
  v30 = v72;
  v31 = &v21[v19[14]];
  *v31 = v71;
  v31[1] = v30;
  *&v21[v19[18]] = sub_25268E020();
  v32 = sub_25268E7E0();
  v33 = &v21[v19[15]];
  *v33 = v32;
  v33[8] = v34 & 1;
  v35 = sub_25268E7C0();
  v70 = a2;
  v36 = sub_2525F8278(sub_2525ADBC4, v69, v35);

  *&v21[v19[16]] = v36;
  v37 = sub_25268E7D0();
  v66 = a2;
  v68 = a2;
  v38 = sub_2525F8278(sub_2525A3E7C, v67, v37);
  v39 = v61;
  v40 = v38;

  v41 = v60;
  *&v21[v19[17]] = v40;
  sub_25268E7F0();
  sub_25268E7A0();
  v42 = v19[21];
  v43 = sub_25268EAF0();
  (*(*(v43 - 8) + 56))(&v21[v42], 1, 1, v43);
  v44 = v19[22];
  sub_25268E740();
  v45 = &v21[v44];
  v46 = v62;
  (*(v16 + 56))(v45, 0, 1, v15);
  sub_25268E7B0();
  v47 = v63;
  sub_25237153C(v39, v41, &qword_27F4E3430);
  if ((*(v47 + 48))(v41, 1, v46) == 1)
  {
    sub_252372288(v39, &qword_27F4E3430);
    v48 = sub_25268E850();
    (*(*(v48 - 8) + 8))(a1, v48);
    sub_252372288(v41, &qword_27F4E3430);
    v49 = 1;
    v50 = v64;
  }

  else
  {
    v51 = v59;
    (*(v47 + 32))(v59, v41, v46);
    v52 = v58;
    (*(v47 + 16))(v58, v51, v46);
    v50 = v64;
    MatterControlSolver.Source.init(with:)(v52, v64);
    sub_252372288(v39, &qword_27F4E3430);
    v53 = sub_25268E850();
    (*(*(v53 - 8) + 8))(a1, v53);
    (*(v47 + 8))(v51, v46);
    v49 = 0;
  }

  v54 = type metadata accessor for MatterControlSolver.Source(0);
  (*(*(v54 - 8) + 56))(v50, v49, 1, v54);
  sub_2523714D4(v50, &v21[v19[24]], &qword_27F4DAD50);
  sub_2525ADA94(v21, v65, type metadata accessor for HAPControlSolver.Source);
  v55 = sub_25268E040();
  return (*(*(v55 - 8) + 8))(v66, v55);
}

uint64_t sub_25259AF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a4;
  v68 = a3;
  v66 = a2;
  v5 = sub_25268DA10();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB070);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v56 - v8;
  v59 = sub_25268EBF0();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25268EC10();
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x28223BE20](v11);
  v58 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v56 - v14;
  v16 = type metadata accessor for HAPControlSolver.Source();
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268EB50();
  sub_25268E970();
  v19 = v16[6];
  sub_25268E8F0();
  v20 = sub_25268E530();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v15, 1, v20) == 1)
  {
    sub_25268E970();
    if (v22(v15, 1, v20) != 1)
    {
      sub_252372288(v15, &qword_27F4DAD90);
    }
  }

  else
  {
    (*(v21 + 32))(&v18[v19], v15, v20);
  }

  v23 = sub_25268EBA0();
  v24 = &v18[v16[7]];
  *v24 = v23;
  v24[1] = v25;
  v26 = sub_25268E9D0();
  v27 = &v18[v16[8]];
  *v27 = v26;
  v27[1] = v28;
  sub_25268E9E0();
  v18[v16[10]] = sub_25268E960() & 1;
  v29 = v57;
  v30 = v59;
  (*(v57 + 104))(v10, *MEMORY[0x277D15AF8], v59);
  v31 = v58;
  sub_25268EC00();
  (*(v29 + 8))(v10, v30);
  v32 = sub_25268F610();
  v33 = v62;
  (*(*(v32 - 8) + 56))(v62, 1, 1, v32);
  v34 = sub_25268E9A0();
  v36 = v35;
  sub_252372288(v33, &qword_27F4DB070);
  (*(v60 + 8))(v31, v61);
  v37 = &v18[v16[11]];
  *v37 = v34;
  v37[1] = v36;
  sub_25268E930();
  v18[v16[13]] = (sub_25268EBD0() & 1) == 0;
  v69 = 0x2D65636976726573;
  v70 = 0xE800000000000000;
  v38 = v63;
  sub_25268EB50();
  sub_2525A3E9C(&qword_27F4DB2B8, MEMORY[0x277CC95F0]);
  v39 = v65;
  v40 = sub_252693370();
  MEMORY[0x2530A4800](v40);

  v41 = v64;
  (*(v64 + 8))(v38, v39);
  v42 = v70;
  v43 = &v18[v16[14]];
  *v43 = v69;
  v43[1] = v42;
  v44 = v68;
  *&v18[v16[18]] = sub_25268E020();
  v45 = sub_25268EA90();
  v46 = &v18[v16[15]];
  *v46 = v45;
  v46[8] = v47 & 1;
  v48 = sub_25268EA50();
  MEMORY[0x28223BE20](v48);
  *(&v56 - 2) = v44;
  v49 = sub_2525F7D8C(sub_2525ADBDC, (&v56 - 4), v48);

  *&v18[v16[16]] = v49;
  v50 = sub_25268E900();
  MEMORY[0x28223BE20](v50);
  *(&v56 - 2) = v44;
  v51 = sub_2525F7D8C(sub_2525A3EE4, (&v56 - 4), v50);

  *&v18[v16[17]] = v51;
  sub_25268EB10();
  sub_25268EA30();
  sub_25268EB00();
  v52 = v16[22];
  sub_25268E940();
  (*(v41 + 56))(&v18[v52], 0, 1, v39);
  sub_25268EA40();
  v53 = sub_25268EBE0();
  (*(*(v53 - 8) + 8))(a1, v53);
  sub_2523714D4(v66, &v18[v16[24]], &qword_27F4DAD50);
  sub_2525ADA94(v18, v67, type metadata accessor for HAPControlSolver.Source);
  v54 = sub_25268E040();
  return (*(*(v54 - 8) + 8))(v44, v54);
}

uint64_t sub_25259B70C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268E040();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = sub_25268EBE0();
  MEMORY[0x28223BE20](v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a1);
  v15 = type metadata accessor for MatterControlSolver.Source(0);
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  (*(v5 + 16))(v7, a2, v4);
  return sub_25259AF74(v13, v10, v7);
}

uint64_t sub_25259B924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_25268E040();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25268E850();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, v12);
  (*(v8 + 16))(v10, a2, v7);
  v16 = sub_25268ECE0();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  return sub_25259A854(v14, v10, v6);
}

uint64_t StaticService.staticEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = sub_25268EE60();
  v61 = *(v1 - 8);
  v62 = v1;
  MEMORY[0x28223BE20](v1);
  v54 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25268F610();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = &v52 - v6;
  v7 = sub_25268DA10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25268F890();
  v12 = *(v11 - 8);
  v59 = v11;
  v60 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB058);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v52 - v19;
  v21 = sub_25268E710();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268EA40();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_252372288(v20, &qword_27F4DB058);
LABEL_13:
    v50 = 1;
    v48 = v62;
    v49 = v63;
    v43 = v61;
    return (*(v43 + 56))(v49, v50, 1, v48);
  }

  (*(v22 + 32))(v24, v20, v21);
  sub_25268E1B0();
  v25 = sub_25268E1A0();
  MEMORY[0x2530A0260]();
  v26 = sub_25268E170();

  if (!*(v26 + 16) || (v27 = sub_252367880(v10), (v28 & 1) == 0))
  {

    (*(v8 + 8))(v10, v7);
LABEL_12:
    (*(v22 + 8))(v24, v21);
    goto LABEL_13;
  }

  v29 = v60;
  v30 = *(v26 + 56) + *(v60 + 72) * v27;
  v31 = *(v60 + 16);
  v53 = v7;
  v32 = v59;
  v31(v14, v30, v59);
  (*(v8 + 8))(v10, v53);

  (*(v29 + 32))(v17, v14, v32);
  v53 = v17;
  v33 = sub_25268F870();
  v34 = sub_25268E340();
  if (!*(v33 + 16) || (v35 = sub_252372350(v34), (v36 & 1) == 0))
  {

    (*(v60 + 8))(v53, v32);
    goto LABEL_12;
  }

  v37 = v55;
  v38 = v56;
  v39 = v57;
  (*(v56 + 16))(v55, *(v33 + 56) + *(v56 + 72) * v35, v57);

  (*(v38 + 32))(v58, v37, v39);
  v40 = sub_25268F600();
  v41 = sub_25268E320();
  v42 = v63;
  v43 = v61;
  if (*(v40 + 16) && (v44 = sub_252367690(v41), (v45 & 1) != 0))
  {
    v46 = v54;
    v47 = v62;
    (*(v43 + 16))(v54, *(v40 + 56) + *(v43 + 72) * v44, v62);
    (*(v38 + 8))(v58, v39);
    (*(v60 + 8))(v53, v59);
    (*(v22 + 8))(v24, v21);

    (*(v43 + 32))(v42, v46, v47);
    v48 = v47;
    v49 = v42;
    v50 = 0;
  }

  else
  {

    (*(v38 + 8))(v58, v39);
    (*(v60 + 8))(v53, v59);
    (*(v22 + 8))(v24, v21);
    v50 = 1;
    v49 = v42;
    v48 = v62;
  }

  return (*(v43 + 56))(v49, v50, 1, v48);
}

uint64_t HAPControlSolver.Source.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for MatterControlSolver.Source(0);
  v100 = *(v3 - 8);
  v101 = v3;
  MEMORY[0x28223BE20](v3);
  v85 = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD50);
  MEMORY[0x28223BE20](v5 - 8);
  v99 = v81 - v6;
  v7 = sub_25268E710();
  v97 = *(v7 - 8);
  v98 = v7;
  MEMORY[0x28223BE20](v7);
  v84 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB058);
  MEMORY[0x28223BE20](v9 - 8);
  v96 = v81 - v10;
  v11 = sub_25268DA10();
  v94 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v83 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v13 - 8);
  v93 = v81 - v14;
  v15 = sub_25268EAF0();
  v91 = *(v15 - 8);
  v92 = v15;
  MEMORY[0x28223BE20](v15);
  v82 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3460);
  MEMORY[0x28223BE20](v17 - 8);
  v90 = v81 - v18;
  v87 = sub_25268F860();
  v89 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v88 = v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HAPControlSolver.Source();
  v102 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v81 - v24;
  v86 = sub_25268ED50();
  v26 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v81[0] = v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3468);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v81 - v29;
  v31 = sub_2525A3E9C(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
  v95 = v11;
  v81[1] = v31;
  sub_252692B30();
  sub_25268E530();
  sub_2525A3E9C(&qword_27F4DB068, MEMORY[0x277D158E0]);
  sub_252692B30();
  sub_252692B30();
  sub_252692C80();
  v103 = v1;
  v104 = v20;
  if (*(v1 + *(v20 + 32) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  v33 = v103;
  v32 = v104;
  sub_25237153C(v103 + v104[9], v30, &qword_27F4E3468);
  v34 = v26;
  v35 = v86;
  if ((*(v26 + 48))(v30, 1, v86) == 1)
  {
    sub_252693480();
  }

  else
  {
    v36 = *(v26 + 32);
    v37 = v81[0];
    v36(v81[0], v30, v35);
    sub_252693480();
    sub_2525A3E9C(&qword_27F4E3470, MEMORY[0x277D15B98]);
    sub_252692B30();
    (*(v34 + 8))(v37, v35);
  }

  sub_252693480();
  if (*(v33 + v32[11] + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  sub_25268E2F0();
  sub_2525A3E9C(&qword_27F4E3478, MEMORY[0x277D15510]);
  sub_252692B30();
  MEMORY[0x2530A4FE0](*(v33 + v32[13]));
  sub_252692C80();
  v38 = (v33 + v32[15]);
  if (*(v38 + 8) == 1)
  {
    sub_252693480();
  }

  else
  {
    v39 = *v38;
    sub_252693480();
    MEMORY[0x2530A4FE0](v39);
  }

  v40 = *(v33 + v32[16]);
  MEMORY[0x2530A4FE0](*(v40 + 16));
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = v40 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v43 = *(v102 + 72);
    do
    {
      sub_2525ADAFC(v42, v25, type metadata accessor for HAPControlSolver.Source);
      HAPControlSolver.Source.hash(into:)(a1);
      sub_2525ADB64(v25, type metadata accessor for HAPControlSolver.Source);
      v42 += v43;
      --v41;
    }

    while (v41);
  }

  v44 = v87;
  v45 = *(v33 + v104[17]);
  MEMORY[0x2530A4FE0](*(v45 + 16));
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = v45 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v48 = *(v102 + 72);
    do
    {
      sub_2525ADAFC(v47, v22, type metadata accessor for HAPControlSolver.Source);
      HAPControlSolver.Source.hash(into:)(a1);
      sub_2525ADB64(v22, type metadata accessor for HAPControlSolver.Source);
      v47 += v48;
      --v46;
    }

    while (v46);
  }

  v49 = *(v33 + v104[18]);
  MEMORY[0x2530A4FE0](*(v49 + 16));
  v50 = *(v49 + 16);
  v51 = v88;
  v52 = a1;
  if (v50)
  {
    v53 = v89 + 16;
    v54 = *(v89 + 16);
    v55 = v49 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
    v56 = *(v89 + 72);
    v57 = (v89 + 8);
    do
    {
      v58 = v53;
      v54(v51, v55, v44);
      sub_2525A3E9C(&qword_27F4DCD30, MEMORY[0x277D164C0]);
      sub_252692B30();
      (*v57)(v51, v44);
      v53 = v58;
      v55 += v56;
      --v50;
    }

    while (v50);
  }

  v59 = v104;
  sub_25268FEB0();
  sub_2525A3E9C(&qword_27F4E3480, MEMORY[0x277D16B88]);
  v60 = v103;
  sub_252692B30();
  sub_25268F1A0();
  sub_2525A3E9C(&qword_27F4E3488, MEMORY[0x277D15FA0]);
  sub_252692B30();
  v61 = v90;
  sub_25237153C(v60 + v59[21], v90, &qword_27F4E3460);
  v63 = v91;
  v62 = v92;
  v64 = v52;
  if ((*(v91 + 48))(v61, 1, v92) == 1)
  {
    sub_252693480();
  }

  else
  {
    v65 = v82;
    (*(v63 + 32))(v82, v61, v62);
    sub_252693480();
    sub_2525A3E9C(&qword_27F4E3490, MEMORY[0x277D15A98]);
    sub_252692B30();
    (*(v63 + 8))(v65, v62);
  }

  v67 = v98;
  v66 = v99;
  v69 = v96;
  v68 = v97;
  v70 = v95;
  v71 = v93;
  sub_25237153C(v60 + v59[22], v93, &qword_27F4DB290);
  v72 = v94;
  if ((*(v94 + 48))(v71, 1, v70) == 1)
  {
    sub_252693480();
  }

  else
  {
    v73 = v71;
    v74 = v83;
    (*(v72 + 32))(v83, v73, v70);
    sub_252693480();
    sub_252692B30();
    (*(v72 + 8))(v74, v70);
    v59 = v104;
  }

  v75 = v66;
  sub_25237153C(v60 + v59[23], v69, &qword_27F4DB058);
  if ((*(v68 + 48))(v69, 1, v67) == 1)
  {
    sub_252693480();
  }

  else
  {
    v76 = v84;
    (*(v68 + 32))(v84, v69, v67);
    sub_252693480();
    sub_2525A3E9C(&qword_27F4DAFD0, MEMORY[0x277D15980]);
    sub_252692B30();
    (*(v68 + 8))(v76, v67);
  }

  v77 = v100;
  v78 = v101;
  sub_25237153C(v60 + v59[24], v75, &qword_27F4DAD50);
  if ((*(v77 + 48))(v75, 1, v78) == 1)
  {
    return sub_252693480();
  }

  v80 = v85;
  sub_2525ADA94(v75, v85, type metadata accessor for MatterControlSolver.Source);
  sub_252693480();
  MatterControlSolver.Source.hash(into:)(v64);
  return sub_2525ADB64(v80, type metadata accessor for MatterControlSolver.Source);
}

uint64_t HAPControlSolver.Source.hashValue.getter()
{
  sub_252693460();
  HAPControlSolver.Source.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_25259D094()
{
  sub_252693460();
  HAPControlSolver.Source.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_25259D0D8()
{
  sub_252693460();
  HAPControlSolver.Source.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_25259D114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2525ADAFC(v3, a2, type metadata accessor for Device.Control);
  v15 = type metadata accessor for Device.Control(0);
  sub_2525ADAFC(v3 + *(v15 + 20), v14, type metadata accessor for Device.Control.Kind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8);
    v17 = *(v16 + 48);
    sub_2523714D4(v14, v11, &qword_27F4DB218);
    sub_2525ADA94(&v14[v17], v8, type metadata accessor for AccessoryControl.IncrementalConfig);
    v18 = *(v6 + 28);
    v19 = sub_25268EEA0();
    (*(*(v19 - 8) + 24))(&v8[v18], a1, v19);
    v20 = a2 + *(v15 + 20);
    sub_2525ADB64(v20, type metadata accessor for Device.Control.Kind);
    v21 = *(v16 + 48);
    sub_2523714D4(v11, v20, &qword_27F4DB218);
    sub_2525ADAFC(v8, v20 + v21, type metadata accessor for AccessoryControl.IncrementalConfig);
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for AccessoryControl.IncrementalConfig;
    v23 = v8;
  }

  else
  {
    v22 = type metadata accessor for Device.Control.Kind;
    v23 = v14;
  }

  return sub_2525ADB64(v23, v22);
}

uint64_t sub_25259D438@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a5;
  v86 = a4;
  v80 = a3;
  LODWORD(v79) = a2;
  v85 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v71 - v8;
  v77 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v77);
  v84 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v10 = sub_25259EB00(a1, sub_252624684, sub_252368C8C, &unk_286483ED8, sub_25240C078);
  v11 = sub_252692C40();
  v13 = v12;
  v14 = sub_252692C40();
  v16 = v15;
  v75 = sub_252692C40();
  v83 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEA0);
  inited = swift_initStackObject();
  v19 = 0;
  *(inited + 32) = 1;
  v20 = inited + 32;
  *(inited + 16) = xmmword_252694EA0;
  *(inited + 40) = v11;
  *(inited + 48) = v13;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = v14;
  *(inited + 80) = v16;
  v82 = inited;
  *(inited + 88) = 0;
  v21 = v10 + 56;
  v22 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      v23 = v19++;
      if (*(v10 + 16))
      {
        v24 = v20 + 32 * v23;
        v87 = *v24;
        v25 = *(v24 + 16);
        v26 = *(v24 + 24);
        sub_252693460();
        v27 = v87;
        MEMORY[0x2530A4FE0](v87);
        v28 = sub_2526934C0();
        v29 = -1 << *(v10 + 32);
        v30 = v28 & ~v29;
        if ((*(v21 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
        {
          break;
        }
      }

LABEL_2:
      if (v19 == 2)
      {
        goto LABEL_14;
      }
    }

    v31 = ~v29;
    while (*(*(v10 + 48) + 8 * v30) != v27)
    {
      v30 = (v30 + 1) & v31;
      if (((*(v21 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25236FF90(0, *(v22 + 2) + 1, 1);
      v22 = v88;
    }

    v34 = *(v22 + 2);
    v33 = *(v22 + 3);
    if (v34 >= v33 >> 1)
    {
      sub_25236FF90((v33 > 1), v34 + 1, 1);
      v22 = v88;
    }

    *(v22 + 2) = v34 + 1;
    v35 = &v22[32 * v34];
    *(v35 + 2) = v87;
    *(v35 + 6) = v25;
    *(v35 + 7) = v26;
  }

  while (v19 != 2);
LABEL_14:

  v36 = *(v22 + 2);
  if (v36 <= 1)
  {

    return sub_2525C3604(v86, v76, v85);
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_252368918(0, v36 + 1, 1, v22);
    }

    v37 = v75;
    v39 = *(v22 + 2);
    v38 = *(v22 + 3);
    if (v39 >= v38 >> 1)
    {
      v22 = sub_252368918((v38 > 1), v39 + 1, 1, v22);
    }

    *(v22 + 2) = v39 + 1;
    v40 = &v22[32 * v39];
    *(v40 + 4) = 100;
    *(v40 + 5) = v37;
    *(v40 + 6) = v83;
    *(v40 + 7) = 0;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
    v42 = *(*(v41 - 8) + 56);
    v43 = v78;
    v42(v78, 1, 1, v41);
    v44 = sub_2526922F0();
    v45 = sub_252692330();
    v46 = v77;
    type metadata accessor for AccessoryControl.StatusProvider();
    v47 = v84;
    swift_storeEnumTagMultiPayload();
    v48 = v46[6];
    v42((v47 + v48), 1, 1, v41);
    v49 = v47 + v46[11];
    *v47 = v22;
    *(v47 + 8) = 1;
    *(v47 + v46[8]) = v44;
    *(v47 + v46[9]) = v45;
    sub_252377048(v43, v47 + v48, &qword_27F4DADB8);
    *v49 = 0;
    *(v49 + 8) = 1;
    *(v47 + v46[7]) = 0;
    if (v79)
    {
      v50 = v80;
    }

    else
    {
      v50 = 100;
    }

    v51 = v85;
    sub_25268F9B0();
    *&v87 = type metadata accessor for Device.Control(0);
    v52 = v51 + *(v87 + 20);
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0) + 48);
    *v52 = v50;
    *(v52 + 8) = 0;
    sub_2525ADAFC(v47, v52 + v53, type metadata accessor for AccessoryControl.PickerViewConfig);
    type metadata accessor for Device.Control.Kind(0);
    swift_storeEnumTagMultiPayload();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3528);
    v83 = swift_allocBox();
    v56 = v55;
    v81 = v55 + *(v54 + 48);
    v82 = *(v54 + 64);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3088);
    v77 = *(v74 + 48);
    v57 = *MEMORY[0x277D16330];
    v79 = sub_25268F4D0();
    v58 = *(v79 - 8);
    v78 = *(v58 + 104);
    v80 = v58 + 104;
    (v78)(v56, v57, v79);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v59 = sub_25268DA10();
    v60 = *(v59 - 8);
    v75 = *(v60 + 72);
    v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v62 = swift_allocObject();
    v73 = xmmword_252694E90;
    *(v62 + 16) = xmmword_252694E90;
    v72 = *(v60 + 16);
    v72(v62 + v61, v86, v59);
    v63 = sub_25240C1FC(v62);
    swift_setDeallocating();
    v71 = *(v60 + 8);
    v71(v62 + v61, v59);
    swift_deallocClassInstance();
    *(v56 + v77) = v63;
    type metadata accessor for Device.Control.Source(0);
    swift_storeEnumTagMultiPayload();
    v77 = *(v74 + 48);
    v64 = v81;
    (v78)(v81, *MEMORY[0x277D16260], v79);
    v65 = swift_allocObject();
    *(v65 + 16) = v73;
    v72(v65 + v61, v86, v59);
    v66 = sub_25240C1FC(v65);
    swift_setDeallocating();
    v71(v65 + v61, v59);
    swift_deallocClassInstance();
    *(v64 + v77) = v66;
    swift_storeEnumTagMultiPayload();
    *(v56 + v82) = 100;
    v67 = v87;
    *(v51 + *(v87 + 24)) = v83;
    swift_storeEnumTagMultiPayload();
    v68 = (v51 + v67[8]);
    v69 = v67[10];
    *(v51 + v69) = 16;
    *(v51 + v67[7]) = 0;
    *v68 = 0;
    v68[1] = 0;
    *(v51 + v67[9]) = 1028;
    *(v51 + v69) = 15;
    *(v51 + v67[11]) = 1;
    return sub_2525ADB64(v84, type metadata accessor for AccessoryControl.PickerViewConfig);
  }
}

uint64_t sub_25259DDEC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v66 = a3;
  v53 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v53);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v58);
  v56 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ControlTextModifier.Config(0);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3520);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78);
  MEMORY[0x28223BE20](v10 - 8);
  v62 = &v53 - v11;
  v12 = type metadata accessor for Device.Control(0);
  v64 = *(v12 - 8);
  v65 = v12;
  MEMORY[0x28223BE20](v12);
  v60 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v53 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v16 - 8);
  v63 = &v53 - v17;
  v18 = sub_25268F4D0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25268E530();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v67 = type metadata accessor for HAPControlSolver.Source();
  (*(v23 + 104))(v25, *MEMORY[0x277D15850], v22);
  sub_2525A3E9C(&qword_27F4DADD8, MEMORY[0x277D158E0]);
  *&v68 = a1;
  sub_252692D40();
  sub_252692D40();
  if (v71 == v69 && v72 == v70)
  {
    (*(v23 + 8))(v25, v22);
  }

  else
  {
    v26 = sub_2526933B0();
    (*(v23 + 8))(v25, v22);

    if ((v26 & 1) == 0)
    {
LABEL_9:
      v36 = 1;
      v34 = v65;
      v37 = v66;
      v35 = v64;
      return (*(v35 + 56))(v37, v36, 1, v34);
    }
  }

  v27 = *(v19 + 104);
  v27(v21, *MEMORY[0x277D160F8], v18);
  v28 = sub_25268FE70();
  v29 = *(v19 + 8);
  v29(v21, v18);
  if (v28 != 2 && (v28 & 1) == 0)
  {
    goto LABEL_9;
  }

  v27(v21, *MEMORY[0x277D16330], v18);
  v30 = v68;
  v31 = v63;
  sub_25268FD80();
  v29(v21, v18);
  v32 = v61;
  sub_2525ADAFC(v30, v61, type metadata accessor for HAPControlSolver.Source);
  (*(*(v67 - 8) + 56))(v32, 0, 1);
  v33 = v62;
  sub_2525C1B8C(v32, v31, v62);
  sub_252372288(v32, &qword_27F4E3520);
  v35 = v64;
  v34 = v65;
  if ((*(v64 + 48))(v33, 1, v65) == 1)
  {
    sub_252372288(v31, &qword_27F4DB208);
    sub_252372288(v33, &qword_27F4E2B78);
    v36 = 1;
    v37 = v66;
  }

  else
  {
    v38 = v55;
    v39 = v59;
    sub_2525ADA94(v33, v59, type metadata accessor for Device.Control);
    v40 = v57;
    sub_25259E700(v57);
    v41 = v60;
    sub_2525ADAFC(v39, v60, type metadata accessor for Device.Control);
    v42 = v56;
    sub_2525ADAFC(v39 + *(v34 + 20), v56, type metadata accessor for Device.Control.Kind);
    if (swift_getEnumCaseMultiPayload())
    {
      v43 = type metadata accessor for Device.Control.Kind;
    }

    else
    {
      v44 = *(v42 + 32);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428);
      v46 = *(v45 + 48);
      v47 = *v42;
      v67 = *(v42 + 16);
      v68 = v47;
      v48 = v42 + v46;
      v42 = v54;
      sub_2525ADA94(v48, v54, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_2525AB4BC(v40, v42 + *(v53 + 24));
      v49 = v60 + *(v34 + 20);
      sub_2525ADB64(v49, type metadata accessor for Device.Control.Kind);
      v50 = *(v45 + 48);
      v51 = v67;
      *v49 = v68;
      *(v49 + 16) = v51;
      *(v49 + 32) = v44;
      v41 = v60;
      sub_2525ADAFC(v42, v49 + v50, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v39 = v59;
      swift_storeEnumTagMultiPayload();
      v43 = type metadata accessor for AccessoryControl.BinaryViewConfig;
    }

    sub_2525ADB64(v42, v43);
    v37 = v66;
    sub_2525ADB64(v40, type metadata accessor for ControlTextModifier.Config);
    sub_2525ADB64(v39, type metadata accessor for Device.Control);
    sub_252372288(v63, &qword_27F4DB208);
    sub_2525ADA94(v41, v39, type metadata accessor for Device.Control);
    if (v38 != 5)
    {
      *(v39 + *(v34 + 36)) = v38;
    }

    sub_2525ADA94(v39, v37, type metadata accessor for Device.Control);
    v36 = 0;
  }

  return (*(v35 + 56))(v37, v36, 1, v34);
}

uint64_t sub_25259E700@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v1 - 8);
  v37 = &v31 - v2;
  v3 = sub_25268D990();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v34 = &v31 - v6;
  v7 = sub_25268F4D0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 104);
  (v12)(v11, *MEMORY[0x277D16328], v7, v9);
  type metadata accessor for HAPControlSolver.Source();
  v13 = sub_25268FE70();
  v14 = *(v8 + 8);
  v14(v11, v7);
  if (v13 != 2 && (v13 & 1) != 0)
  {
    v32 = *MEMORY[0x277D161A0];
    v12(v11);
    v15 = sub_25268FEA0();
    v17 = v16;
    v14(v11, v7);
    if ((v17 & 1) == 0)
    {
      v31 = v15;
      (v12)(v11, v32, v7);
      v18 = v37;
      sub_25268FD80();
      v14(v11, v7);
      v19 = sub_25268F9E0();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v18, 1, v19) != 1)
      {
        v25 = v33;
        sub_25268F990();
        (*(v20 + 8))(v18, v19);
        v26 = v34;
        v27 = *(v35 + 32);
        v28 = v36;
        v27(v34, v25, v36);
        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
        v30 = v38;
        *v38 = v31;
        v27(v30 + v29, v26, v28);
        goto LABEL_7;
      }

      sub_252372288(v18, &qword_27F4DB208);
    }
  }

  v21 = sub_252692C40();
  v22 = v38;
  *v38 = v21;
  v22[1] = v23;
LABEL_7:
  type metadata accessor for ControlTextModifier.Config(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25259EB00(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(BOOL, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v32 = a3;
  v33 = a2;
  v7 = sub_25268FFD0();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_252690050();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  sub_25268F9D0();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_252372288(v12, &qword_27F4DB230);
    return a5(a4);
  }

  (*(v14 + 32))(v19, v12, v13);
  (*(v14 + 16))(v16, v19, v13);
  if ((*(v14 + 88))(v16, v13) != *MEMORY[0x277D16CC8])
  {
    v27 = *(v14 + 8);
    v27(v19, v13);
    v27(v16, v13);
    return a5(a4);
  }

  (*(v14 + 96))(v16, v13);
  (*(v34 + 32))(v9, v16, v35);
  v31 = sub_25268FF90();
  v20 = *(v31 + 16);
  if (v20)
  {
    v21 = (v31 + 32);
    v22 = MEMORY[0x277D84F90];
    do
    {
      v24 = *v21++;
      v23 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = v32(0, *(v22 + 16) + 1, 1, v22);
      }

      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      if (v26 >= v25 >> 1)
      {
        v22 = v32(v25 > 1, v26 + 1, 1, v22);
      }

      *(v22 + 16) = v26 + 1;
      *(v22 + 8 * v26 + 32) = v23;
      --v20;
    }

    while (v20);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v29 = v33(v22);

  (*(v34 + 8))(v9, v35);
  (*(v14 + 8))(v19, v13);
  return v29;
}

uint64_t sub_25259EEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v42 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v39 - v3;
  v4 = sub_25268F4D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v40 = &v39 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v19 = *(v5 + 104);
  v19(v7, *MEMORY[0x277D16228], v4, v16);
  type metadata accessor for HAPControlSolver.Source();
  sub_25268FD80();
  v20 = *(v5 + 8);
  v20(v7, v4);
  (v19)(v7, *MEMORY[0x277D161E8], v4);
  v44 = v14;
  v21 = v40;
  sub_25268FD80();
  v20(v7, v4);
  sub_25237153C(v18, v21, &qword_27F4DB208);
  v22 = sub_25268F9E0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v21, 1, v22) == 1)
  {
    v25 = v42;
    sub_252372288(v21, &qword_27F4DB208);
    v26 = sub_25268DA10();
    v27 = *(v26 - 8);
    v28 = v43;
    v39 = *(v27 + 56);
    v40 = v26;
    v39(v43, 1, 1);
    v29 = v41;
    sub_25237153C(v44, v41, &qword_27F4DB208);
    if (v24(v29, 1, v22) == 1)
    {
      sub_252372288(v44, &qword_27F4DB208);
      sub_252372288(v18, &qword_27F4DB208);
      sub_252372288(v41, &qword_27F4DB208);
      v30 = 1;
    }

    else
    {
      v37 = v41;
      sub_25268F9B0();
      sub_252372288(v44, &qword_27F4DB208);
      sub_252372288(v18, &qword_27F4DB208);
      (*(v23 + 8))(v37, v22);
      v30 = 0;
    }

    v38 = v40;
    (v39)(v25, v30, 1, v40);
    result = (*(v27 + 48))(v28, 1, v38);
    if (result != 1)
    {
      return sub_252372288(v28, &qword_27F4DB290);
    }
  }

  else
  {
    v31 = v43;
    sub_25268F9B0();
    sub_252372288(v44, &qword_27F4DB208);
    sub_252372288(v18, &qword_27F4DB208);
    (*(v23 + 8))(v21, v22);
    v32 = sub_25268DA10();
    v33 = *(v32 - 8);
    v34 = *(v33 + 56);
    v34(v31, 0, 1, v32);
    v35 = v42;
    (*(v33 + 32))(v42, v31, v32);
    return (v34)(v35, 0, 1, v32);
  }

  return result;
}

uint64_t sub_25259F488@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v136 = a4;
  v145 = a3;
  v146 = a1;
  LODWORD(v144) = a2;
  v147 = a5;
  v127 = sub_25268EEA0();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Device.Control(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v124 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for HAPControlSolver.Source();
  v131 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v129 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3520);
  MEMORY[0x28223BE20](v10 - 8);
  v132 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v133 = &v110 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78);
  MEMORY[0x28223BE20](v14 - 8);
  v134 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v135 = &v110 - v17;
  v18 = sub_25268F4D0();
  v19 = *(v18 - 8);
  v137 = v18;
  v138 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v22 - 8);
  v128 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v141 = &v110 - v25;
  MEMORY[0x28223BE20](v26);
  v140 = &v110 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v110 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v110 - v32;
  v34 = sub_25268F9E0();
  v35 = *(v34 - 8);
  v142 = v34;
  v143 = v35;
  MEMORY[0x28223BE20](v34);
  v122 = &v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v121 = &v110 - v38;
  MEMORY[0x28223BE20](v39);
  v123 = &v110 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v41 - 8);
  v130 = &v110 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v110 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v110 - v47;
  v49 = sub_25268DA10();
  MEMORY[0x28223BE20](v49);
  v51 = &v110 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v52;
  v55 = v54;
  sub_25237153C(v146, v48, &qword_27F4DB290);
  if ((*(v53 + 48))(v48, 1, v55) == 1)
  {
    sub_252372288(v48, &qword_27F4DB290);
    return (*(v7 + 56))(v147, 1, 1, v6);
  }

  (*(v53 + 32))(v51, v48, v55);
  if ((v144 & 1) == 0)
  {
    v150[0] = 0;
    v63 = v147;
    sub_2525C3CCC(v145, v51, v150, v147);
    (*(v53 + 8))(v51, v55);
    v64 = *(v7 + 56);
    v65 = v63;
    return v64(v65, 0, 1, v6);
  }

  v146 = v51;
  v120 = v53;
  v144 = v55;
  v57 = v138;
  v58 = *(v138 + 104);
  v119 = v6;
  v118 = v7;
  if (v136)
  {
    v59 = v146;
    v60 = v133;
    v61 = v137;
    if (v136 == 1)
    {
      v62 = MEMORY[0x277D161E8];
    }

    else
    {
      v62 = MEMORY[0x277D16228];
    }

    v68 = *v62;
    goto LABEL_17;
  }

  v117 = *MEMORY[0x277D16228];
  v61 = v137;
  v136 = v58;
  v58(v21);
  v116 = *(v139 + 76);
  sub_25268FD80();
  v66 = *(v57 + 8);
  v115 = v57 + 8;
  v114 = v66;
  v66(v21, v61);
  v67 = v142;
  v113 = *(v143 + 48);
  if (v113(v33, 1, v142) != 1)
  {
    v69 = *(v143 + 32);
    v112 = v143 + 32;
    v111 = v69;
    v69(v123, v33, v67);
    (v136)(v21, *MEMORY[0x277D161E8], v61);
    v70 = v145;
    sub_25268FD80();
    v71 = v142;
    v114(v21, v61);
    if (v113(v30, 1, v71) == 1)
    {
      (*(v143 + 8))(v123, v71);
      sub_252372288(v30, &qword_27F4DB208);
      v59 = v146;
      v60 = v133;
      v61 = v137;
      goto LABEL_16;
    }

    v103 = v121;
    v111(v121, v30, v71);
    v104 = v120;
    v105 = v144;
    (*(v120 + 16))(v45, v146, v144);
    (*(v104 + 56))(v45, 0, 1, v105);
    v148 = 0;
    v106 = v71;
    v107 = v147;
    v108 = v123;
    sub_2525C450C(v70, v123, v103, v45, &v148, v147);
    sub_252372288(v45, &qword_27F4DB290);
    v109 = *(v143 + 8);
    v109(v103, v106);
    v109(v108, v106);
    (*(v104 + 8))(v146, v105);
    v64 = *(v7 + 56);
    v65 = v107;
    return v64(v65, 0, 1, v6);
  }

  sub_252372288(v33, &qword_27F4DB208);
  v59 = v146;
  v60 = v133;
LABEL_16:
  v57 = v138;
  v58 = v136;
  v68 = v117;
LABEL_17:
  (v58)(v21, v68, v61);
  v72 = v139;
  v73 = v140;
  v74 = v145;
  sub_25268FD80();
  (*(v57 + 8))(v21, v61);
  sub_2525ADAFC(v74, v60, type metadata accessor for HAPControlSolver.Source);
  v75 = v131;
  (*(v131 + 56))(v60, 0, 1, v72);
  v77 = v142;
  v76 = v143;
  v78 = v141;
  (*(v143 + 56))(v141, 1, 1, v142);
  v79 = v120;
  v80 = v130;
  v81 = v59;
  v82 = v144;
  (*(v120 + 16))(v130, v81, v144);
  v83 = v79;
  v84 = v80;
  (*(v83 + 56))(v80, 0, 1, v82);
  v85 = v132;
  sub_25237153C(v60, v132, &qword_27F4E3520);
  if ((*(v75 + 48))(v85, 1, v72) == 1)
  {
    sub_252372288(v84, &qword_27F4DB290);
    sub_252372288(v78, &qword_27F4DB208);
    sub_252372288(v60, &qword_27F4E3520);
    sub_252372288(v85, &qword_27F4E3520);
    v86 = 1;
    v87 = v135;
  }

  else
  {
    v88 = v129;
    sub_2525ADA94(v85, v129, type metadata accessor for HAPControlSolver.Source);
    v89 = v128;
    sub_25237153C(v73, v128, &qword_27F4DB208);
    v90 = (*(v76 + 48))(v89, 1, v77);
    v87 = v135;
    if (v90 == 1)
    {
      sub_2525ADB64(v88, type metadata accessor for HAPControlSolver.Source);
      sub_252372288(v84, &qword_27F4DB290);
      sub_252372288(v141, &qword_27F4DB208);
      sub_252372288(v60, &qword_27F4E3520);
      sub_252372288(v89, &qword_27F4DB208);
      v86 = 1;
    }

    else
    {
      v91 = v122;
      (*(v76 + 32))(v122, v89, v77);
      v149 = 0;
      v92 = v84;
      v93 = v141;
      sub_2525C1F10(v88, v91, v141, v92, &v149, v87);
      (*(v76 + 8))(v91, v77);
      sub_2525ADB64(v88, type metadata accessor for HAPControlSolver.Source);
      sub_252372288(v92, &qword_27F4DB290);
      sub_252372288(v93, &qword_27F4DB208);
      sub_252372288(v60, &qword_27F4E3520);
      v86 = 0;
    }
  }

  v94 = v134;
  v95 = v118;
  v96 = *(v118 + 56);
  v97 = 1;
  v98 = v119;
  v96(v87, v86, 1, v119);
  if (!(*(v95 + 48))(v87, 1, v98))
  {
    v99 = v124;
    sub_2525ADAFC(v87, v124, type metadata accessor for Device.Control);
    v100 = v126;
    v101 = v125;
    v102 = v127;
    (*(v126 + 104))(v125, *MEMORY[0x277D15CE8], v127);
    sub_25259D114(v101, v94);
    (*(v100 + 8))(v101, v102);
    v73 = v140;
    sub_2525ADB64(v99, type metadata accessor for Device.Control);
    v97 = 0;
  }

  sub_252372288(v73, &qword_27F4DB208);
  (*(v120 + 8))(v146, v144);
  v96(v94, v97, 1, v98);
  sub_252377048(v94, v87, &qword_27F4E2B78);
  return sub_2523714D4(v87, v147, &qword_27F4E2B78);
}

uint64_t sub_2525A03F0()
{
  v0 = sub_25268FFD0();
  v35 = *(v0 - 8);
  v36 = v0;
  MEMORY[0x28223BE20](v0);
  v34 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_25268F4D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_252690050();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v33 - v18;
  (*(v3 + 104))(v5, *MEMORY[0x277D162C8], v2, v17);
  type metadata accessor for HAPControlSolver.Source();
  sub_25268FD80();
  (*(v3 + 8))(v5, v2);
  v20 = sub_25268F9E0();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v8, 1, v20) == 1)
  {
    sub_252372288(v8, &qword_27F4DB208);
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_4:
    sub_252372288(v11, &qword_27F4DB230);
    return sub_25240C064(&unk_286483EA0);
  }

  sub_25268F9D0();
  (*(v21 + 8))(v8, v20);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  (*(v13 + 32))(v19, v11, v12);
  (*(v13 + 16))(v15, v19, v12);
  if ((*(v13 + 88))(v15, v12) != *MEMORY[0x277D16CC8])
  {
    v31 = *(v13 + 8);
    v31(v19, v12);
    v31(v15, v12);
    return sub_25240C064(&unk_286483EA0);
  }

  (*(v13 + 96))(v15, v12);
  (*(v35 + 32))(v34, v15, v36);
  v23 = sub_25268FF90();
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = (v23 + 32);
    v26 = MEMORY[0x277D84F90];
    do
    {
      v28 = *v25++;
      v27 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_252368C50(0, *(v26 + 2) + 1, 1, v26);
      }

      v30 = *(v26 + 2);
      v29 = *(v26 + 3);
      if (v30 >= v29 >> 1)
      {
        v26 = sub_252368C50((v29 > 1), v30 + 1, 1, v26);
      }

      *(v26 + 2) = v30 + 1;
      *&v26[8 * v30 + 32] = v27;
      --v24;
    }

    while (v24);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v32 = sub_2526245D8(v26);

  (*(v35 + 8))(v34, v36);
  (*(v13 + 8))(v19, v12);
  return v32;
}

uint64_t StaticAccessory.staticEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_25268EBE0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268EEB0();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_252372288(v4, &qword_27F4DAF40);
    v9 = sub_25268EE60();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    StaticService.staticEndpoint.getter(a1);
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_2525A0B54(void **a1)
{
  v2 = *(type metadata accessor for Device.ControlGroup(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_252624320(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_2525A0BFC(v5);
  *a1 = v3;
}

void sub_2525A0BFC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_252693360();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Device.ControlGroup(0);
        v6 = sub_252692DC0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Device.ControlGroup(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2525A1070(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2525A0D28(0, v2, 1, a1);
  }
}

void sub_2525A0D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v41 = type metadata accessor for Device.ControlGroup(0);
  MEMORY[0x28223BE20](v41);
  v39 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v12;
  v32 = a2;
  if (a3 != a2)
  {
    v15 = v13;
    v16 = *a4;
    v17 = *(v11 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = v16;
    v19 = a1 - a3;
    v31 = v17;
    v20 = v16 + v17 * a3;
    v40 = &v30 - v12;
LABEL_6:
    v35 = v18;
    v36 = a3;
    v33 = v20;
    v34 = v19;
    while (1)
    {
      sub_2525ADAFC(v20, v14, type metadata accessor for Device.ControlGroup);
      sub_2525ADAFC(v18, v15, type metadata accessor for Device.ControlGroup);
      v21 = *(v41 + 24);
      if (*&v14[v21 + 8])
      {
        v22 = *&v14[v21];
        v23 = *&v14[v21 + 8];
      }

      else
      {
        v22 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = v15;
      v25 = (v15 + v21);
      if (v25[1])
      {
        v26 = v25[1];
        if (v22 != *v25)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v26 = 0xE000000000000000;
        if (v22)
        {
          goto LABEL_15;
        }
      }

      if (v23 == v26)
      {

        v15 = v24;
        sub_2525ADB64(v24, type metadata accessor for Device.ControlGroup);
        v14 = v40;
        sub_2525ADB64(v40, type metadata accessor for Device.ControlGroup);
LABEL_5:
        a3 = v36 + 1;
        v18 = v35 + v31;
        v19 = v34 - 1;
        v20 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_6;
      }

LABEL_15:
      v27 = sub_2526933B0();

      v15 = v24;
      sub_2525ADB64(v24, type metadata accessor for Device.ControlGroup);
      v14 = v40;
      sub_2525ADB64(v40, type metadata accessor for Device.ControlGroup);
      if ((v27 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v38)
      {
        __break(1u);
        return;
      }

      v28 = v39;
      sub_2525ADA94(v20, v39, type metadata accessor for Device.ControlGroup);
      swift_arrayInitWithTakeFrontToBack();
      sub_2525ADA94(v28, v18, type metadata accessor for Device.ControlGroup);
      v18 += v37;
      v20 += v37;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_2525A1070(int64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v139 = a4;
  v137 = a1;
  v8 = type metadata accessor for Device.ControlGroup(0);
  v146 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v142 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v153 = &v134 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v134 - v13;
  MEMORY[0x28223BE20](v15);
  v156 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v151 = &v134 - v18;
  MEMORY[0x28223BE20](v19);
  v150 = &v134 - v20;
  MEMORY[0x28223BE20](v21);
  v134 = &v134 - v22;
  MEMORY[0x28223BE20](v23);
  v136 = &v134 - v24;
  v25 = *(a3 + 8);
  v143 = a3;
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_126:
    v29 = *v137;
    if (!*v137)
    {
      goto LABEL_165;
    }

    v4 = v27;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v128 = v4;
LABEL_129:
      v157 = v128;
      v129 = *(v128 + 2);
      if (v129 >= 2)
      {
        do
        {
          v130 = *a3;
          if (!*a3)
          {
            goto LABEL_163;
          }

          v4 = v129 - 1;
          v131 = *&v128[16 * v129];
          v132 = v128;
          a3 = *&v128[16 * v129 + 24];
          sub_2525A1C84(v130 + *(v146 + 72) * v131, v130 + *(v146 + 72) * *&v128[16 * v129 + 16], v130 + *(v146 + 72) * a3, v29);
          if (v6)
          {
            break;
          }

          if (a3 < v131)
          {
            goto LABEL_152;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v132 = sub_252624154(v132);
          }

          if (v129 - 2 >= *(v132 + 2))
          {
            goto LABEL_153;
          }

          v133 = &v132[16 * v129];
          *v133 = v131;
          *(v133 + 1) = a3;
          v157 = v132;
          sub_2526240C8(v4);
          v128 = v157;
          v129 = *(v157 + 2);
          a3 = v143;
        }

        while (v129 > 1);
      }

LABEL_137:

      return;
    }

LABEL_159:
    v128 = sub_252624154(v4);
    goto LABEL_129;
  }

  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v154 = v8;
  v155 = v14;
  while (2)
  {
    v28 = v26;
    v29 = v26 + 1;
    v147 = v27;
    if (v26 + 1 >= v25)
    {
      v41 = v139;
      goto LABEL_46;
    }

    v144 = v25;
    v30 = v26;
    v31 = *a3;
    v32 = *(v146 + 72);
    v33 = v26 + 1;
    v34 = v31 + v32 * v29;
    v35 = v136;
    sub_2525ADAFC(v34, v136, type metadata accessor for Device.ControlGroup);
    v138 = v30;
    v148 = v32;
    v36 = v31 + v32 * v30;
    v37 = v134;
    sub_2525ADAFC(v36, v134, type metadata accessor for Device.ControlGroup);
    v38 = *(v8 + 24);
    if (*(v35 + v38 + 8))
    {
      v39 = *(v35 + v38);
      v40 = *(v35 + v38 + 8);
    }

    else
    {
      v39 = 0;
      v40 = 0xE000000000000000;
    }

    v42 = (v37 + v38);
    if (v42[1])
    {
      v43 = *v42;
      v44 = v42[1];
    }

    else
    {
      v43 = 0;
      v44 = 0xE000000000000000;
    }

    v135 = v6;
    if (v39 == v43 && v40 == v44)
    {
      LODWORD(v145) = 0;
    }

    else
    {
      LODWORD(v145) = sub_2526933B0();
    }

    v4 = type metadata accessor for Device.ControlGroup;
    sub_2525ADB64(v37, type metadata accessor for Device.ControlGroup);
    sub_2525ADB64(v136, type metadata accessor for Device.ControlGroup);
    v45 = v138 + 2;
    v46 = v148 * (v138 + 2);
    v47 = v31 + v46;
    v48 = v33;
    v49 = v148 * v33;
    v50 = v31 + v148 * v33;
    v14 = v155;
    do
    {
      v29 = v45;
      v52 = v48;
      a3 = v49;
      v6 = v46;
      v152 = v45;
      if (v45 >= v144)
      {
        break;
      }

      v149 = v48;
      v53 = v150;
      sub_2525ADAFC(v47, v150, type metadata accessor for Device.ControlGroup);
      sub_2525ADAFC(v50, v151, type metadata accessor for Device.ControlGroup);
      v54 = *(v8 + 24);
      if (*(v53 + v54 + 8))
      {
        v55 = *(v53 + v54);
        v56 = *(v53 + v54 + 8);
      }

      else
      {
        v55 = 0;
        v56 = 0xE000000000000000;
      }

      v57 = (v151 + v54);
      if (v57[1])
      {
        v58 = v57[1];
        if (v55 != *v57)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v58 = 0xE000000000000000;
        if (v55)
        {
          goto LABEL_17;
        }
      }

      if (v56 == v58)
      {
        v51 = 0;
        goto LABEL_18;
      }

LABEL_17:
      v51 = sub_2526933B0();
LABEL_18:

      v4 = type metadata accessor for Device.ControlGroup;
      sub_2525ADB64(v151, type metadata accessor for Device.ControlGroup);
      sub_2525ADB64(v150, type metadata accessor for Device.ControlGroup);
      v29 = v152;
      v45 = v152 + 1;
      v52 = v149;
      v47 += v148;
      v50 += v148;
      v48 = v149 + 1;
      v49 = a3 + v148;
      v46 = v6 + v148;
      v8 = v154;
      v14 = v155;
    }

    while (((v145 ^ v51) & 1) == 0);
    if ((v145 & 1) == 0)
    {
      v6 = v135;
      a3 = v143;
      v41 = v139;
      goto LABEL_45;
    }

    v28 = v138;
    v41 = v139;
    if (v29 < v138)
    {
      goto LABEL_156;
    }

    if (v138 >= v29)
    {
      v6 = v135;
      a3 = v143;
    }

    else
    {
      v59 = v138;
      v60 = v138 * v148;
      do
      {
        if (v59 != v52)
        {
          v62 = *v143;
          if (!*v143)
          {
            goto LABEL_162;
          }

          v63 = v52;
          v4 = v62 + v60;
          sub_2525ADA94(v62 + v60, v142, type metadata accessor for Device.ControlGroup);
          if (v60 < a3 || v4 >= v62 + v6)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_2525ADA94(v142, v62 + a3, type metadata accessor for Device.ControlGroup);
          v41 = v139;
          v52 = v63;
        }

        ++v59;
        a3 -= v148;
        v6 -= v148;
        v60 += v148;
      }

      while (v59 < v52--);
      v29 = v152;
      v6 = v135;
      a3 = v143;
LABEL_45:
      v28 = v138;
    }

LABEL_46:
    v64 = *(a3 + 8);
    if (v29 >= v64)
    {
      goto LABEL_73;
    }

    if (__OFSUB__(v29, v28))
    {
      goto LABEL_155;
    }

    if (v29 - v28 >= v41)
    {
LABEL_73:
      if (v29 < v28)
      {
        goto LABEL_154;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v27 = v147;
      }

      else
      {
        v27 = sub_252368690(0, *(v147 + 2) + 1, 1, v147);
      }

      v4 = *(v27 + 2);
      v82 = *(v27 + 3);
      v83 = v4 + 1;
      if (v4 >= v82 >> 1)
      {
        v27 = sub_252368690((v82 > 1), v4 + 1, 1, v27);
      }

      *(v27 + 2) = v83;
      v84 = &v27[16 * v4];
      *(v84 + 4) = v28;
      *(v84 + 5) = v29;
      v149 = v29;
      v29 = *v137;
      if (!*v137)
      {
        goto LABEL_164;
      }

      if (!v4)
      {
LABEL_3:
        v25 = *(a3 + 8);
        v26 = v149;
        if (v149 >= v25)
        {
          goto LABEL_126;
        }

        continue;
      }

      while (1)
      {
        v85 = v83 - 1;
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v86 = *(v27 + 4);
          v87 = *(v27 + 5);
          v96 = __OFSUB__(v87, v86);
          v88 = v87 - v86;
          v89 = v96;
LABEL_93:
          if (v89)
          {
            goto LABEL_143;
          }

          v102 = &v27[16 * v83];
          v104 = *v102;
          v103 = *(v102 + 1);
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_146;
          }

          v108 = &v27[16 * v85 + 32];
          v110 = *v108;
          v109 = *(v108 + 1);
          v96 = __OFSUB__(v109, v110);
          v111 = v109 - v110;
          if (v96)
          {
            goto LABEL_149;
          }

          if (__OFADD__(v106, v111))
          {
            goto LABEL_150;
          }

          if (v106 + v111 >= v88)
          {
            if (v88 < v111)
            {
              v85 = v83 - 2;
            }

            goto LABEL_114;
          }

          goto LABEL_107;
        }

        v112 = &v27[16 * v83];
        v114 = *v112;
        v113 = *(v112 + 1);
        v96 = __OFSUB__(v113, v114);
        v106 = v113 - v114;
        v107 = v96;
LABEL_107:
        if (v107)
        {
          goto LABEL_145;
        }

        v115 = &v27[16 * v85];
        v117 = *(v115 + 4);
        v116 = *(v115 + 5);
        v96 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v96)
        {
          goto LABEL_148;
        }

        if (v118 < v106)
        {
          goto LABEL_3;
        }

LABEL_114:
        v4 = v85 - 1;
        if (v85 - 1 >= v83)
        {
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
LABEL_146:
          __break(1u);
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
          goto LABEL_158;
        }

        if (!*a3)
        {
          goto LABEL_161;
        }

        v123 = v27;
        v124 = *&v27[16 * v4 + 32];
        v125 = *&v27[16 * v85 + 40];
        sub_2525A1C84(*a3 + *(v146 + 72) * v124, *a3 + *(v146 + 72) * *&v27[16 * v85 + 32], *a3 + *(v146 + 72) * v125, v29);
        if (v6)
        {
          goto LABEL_137;
        }

        if (v125 < v124)
        {
          goto LABEL_139;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v126 = v123;
        }

        else
        {
          v126 = sub_252624154(v123);
        }

        v14 = v155;
        if (v4 >= *(v126 + 2))
        {
          goto LABEL_140;
        }

        v127 = &v126[16 * v4];
        *(v127 + 4) = v124;
        *(v127 + 5) = v125;
        v157 = v126;
        sub_2526240C8(v85);
        v27 = v157;
        v83 = *(v157 + 2);
        if (v83 <= 1)
        {
          goto LABEL_3;
        }
      }

      v90 = &v27[16 * v83 + 32];
      v91 = *(v90 - 64);
      v92 = *(v90 - 56);
      v96 = __OFSUB__(v92, v91);
      v93 = v92 - v91;
      if (v96)
      {
        goto LABEL_141;
      }

      v95 = *(v90 - 48);
      v94 = *(v90 - 40);
      v96 = __OFSUB__(v94, v95);
      v88 = v94 - v95;
      v89 = v96;
      if (v96)
      {
        goto LABEL_142;
      }

      v97 = &v27[16 * v83];
      v99 = *v97;
      v98 = *(v97 + 1);
      v96 = __OFSUB__(v98, v99);
      v100 = v98 - v99;
      if (v96)
      {
        goto LABEL_144;
      }

      v96 = __OFADD__(v88, v100);
      v101 = v88 + v100;
      if (v96)
      {
        goto LABEL_147;
      }

      if (v101 >= v93)
      {
        v119 = &v27[16 * v85 + 32];
        v121 = *v119;
        v120 = *(v119 + 1);
        v96 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v96)
        {
          goto LABEL_151;
        }

        if (v88 < v122)
        {
          v85 = v83 - 2;
        }

        goto LABEL_114;
      }

      goto LABEL_93;
    }

    break;
  }

  v65 = v28 + v41;
  if (__OFADD__(v28, v41))
  {
    goto LABEL_157;
  }

  if (v65 >= v64)
  {
    v65 = *(a3 + 8);
  }

  if (v65 < v28)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if (v29 == v65)
  {
    goto LABEL_73;
  }

  v135 = v6;
  v66 = *a3;
  v67 = *(v146 + 72);
  v68 = *a3 + v67 * (v29 - 1);
  v69 = -v67;
  v138 = v28;
  v70 = v28 - v29;
  v152 = v66;
  v140 = v67;
  v141 = v65;
  v71 = v66 + v29 * v67;
  while (2)
  {
    v148 = v68;
    v149 = v29;
    v144 = v71;
    v145 = v70;
    v72 = v71;
LABEL_59:
    v73 = v156;
    sub_2525ADAFC(v72, v156, type metadata accessor for Device.ControlGroup);
    sub_2525ADAFC(v68, v14, type metadata accessor for Device.ControlGroup);
    v74 = *(v8 + 24);
    if (*(v73 + v74 + 8))
    {
      v75 = *(v73 + v74);
      v76 = *(v73 + v74 + 8);
    }

    else
    {
      v75 = 0;
      v76 = 0xE000000000000000;
    }

    v77 = &v14[v74];
    if (*(v77 + 1))
    {
      v78 = *(v77 + 1);
      if (v75 != *v77)
      {
        break;
      }
    }

    else
    {
      v78 = 0xE000000000000000;
      if (v75)
      {
        break;
      }
    }

    if (v76 == v78)
    {

      v4 = type metadata accessor for Device.ControlGroup;
      v14 = v155;
      sub_2525ADB64(v155, type metadata accessor for Device.ControlGroup);
      sub_2525ADB64(v156, type metadata accessor for Device.ControlGroup);
LABEL_56:
      v8 = v154;
LABEL_57:
      v29 = v149 + 1;
      v68 = v148 + v140;
      v70 = v145 - 1;
      v71 = v144 + v140;
      if (v149 + 1 == v141)
      {
        v29 = v141;
        v6 = v135;
        a3 = v143;
        v28 = v138;
        goto LABEL_73;
      }

      continue;
    }

    break;
  }

  v79 = sub_2526933B0();

  v4 = type metadata accessor for Device.ControlGroup;
  v14 = v155;
  sub_2525ADB64(v155, type metadata accessor for Device.ControlGroup);
  sub_2525ADB64(v156, type metadata accessor for Device.ControlGroup);
  if ((v79 & 1) == 0)
  {
    goto LABEL_56;
  }

  v8 = v154;
  if (v152)
  {
    v4 = type metadata accessor for Device.ControlGroup;
    v80 = v153;
    sub_2525ADA94(v72, v153, type metadata accessor for Device.ControlGroup);
    swift_arrayInitWithTakeFrontToBack();
    sub_2525ADA94(v80, v68, type metadata accessor for Device.ControlGroup);
    v68 += v69;
    v72 += v69;
    if (__CFADD__(v70++, 1))
    {
      goto LABEL_57;
    }

    goto LABEL_59;
  }

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
}

void sub_2525A1C84(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = type metadata accessor for Device.ControlGroup(0);
  MEMORY[0x28223BE20](v64);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v54 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  MEMORY[0x28223BE20](v14);
  v62 = &v54 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_79;
  }

  v18 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v17 != -1)
  {
    v19 = (a2 - a1) / v17;
    v67 = a1;
    v66 = a4;
    if (v19 < v18 / v17)
    {
      v20 = v19 * v17;
      if (a4 < a1 || a1 + v20 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v61 = a4 + v20;
      v65 = a4 + v20;
      if (v20 >= 1 && a2 < a3)
      {
        v59 = a3;
        while (1)
        {
          v23 = v62;
          sub_2525ADAFC(a2, v62, type metadata accessor for Device.ControlGroup);
          v63 = a4;
          sub_2525ADAFC(a4, v13, type metadata accessor for Device.ControlGroup);
          v24 = *(v64 + 24);
          v25 = (v23 + v24);
          v26 = *(v23 + v24 + 8);
          v27 = a2;
          if (v26)
          {
            v28 = *v25;
            v29 = v26;
          }

          else
          {
            v28 = 0;
            v29 = 0xE000000000000000;
          }

          v30 = v13;
          v31 = &v13[v24];
          if (*(v31 + 1))
          {
            v32 = *(v31 + 1);
            if (v28 != *v31)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v32 = 0xE000000000000000;
            if (v28)
            {
              goto LABEL_30;
            }
          }

          if (v29 == v32)
          {

            v13 = v30;
            sub_2525ADB64(v30, type metadata accessor for Device.ControlGroup);
            sub_2525ADB64(v62, type metadata accessor for Device.ControlGroup);
LABEL_35:
            a4 = v63 + v17;
            if (a1 < v63 || a1 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v59;
            }

            else
            {
              v34 = v59;
              if (a1 != v63)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v66 = a4;
            goto LABEL_41;
          }

LABEL_30:
          v33 = sub_2526933B0();

          v13 = v30;
          sub_2525ADB64(v30, type metadata accessor for Device.ControlGroup);
          sub_2525ADB64(v62, type metadata accessor for Device.ControlGroup);
          if ((v33 & 1) == 0)
          {
            goto LABEL_35;
          }

          a2 += v17;
          a4 = v63;
          if (a1 < v27 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v59;
          }

          else
          {
            v34 = v59;
            if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

LABEL_41:
          a1 += v17;
          v67 = a1;
          if (a4 >= v61 || a2 >= v34)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_77;
    }

    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v21;
    if (v21 < 1)
    {
LABEL_76:
      v67 = a2;
      v65 = v35;
LABEL_77:
      sub_252594C38(&v67, &v66, &v65);
      return;
    }

    v36 = -v17;
    v37 = a4 + v21;
    v63 = a4;
    v58 = v36;
LABEL_48:
    v55 = v35;
    v38 = a2;
    v39 = a2 + v36;
    v59 = v39;
    v57 = v38;
    while (1)
    {
      if (v38 <= a1)
      {
        v67 = v38;
        v65 = v55;
        goto LABEL_77;
      }

      v40 = a3;
      v56 = v35;
      v41 = v58;
      v62 = v37 + v58;
      v42 = v60;
      sub_2525ADAFC(v37 + v58, v60, type metadata accessor for Device.ControlGroup);
      sub_2525ADAFC(v39, v61, type metadata accessor for Device.ControlGroup);
      v43 = *(v64 + 24);
      v44 = (v42 + v43);
      v45 = *(v42 + v43 + 8);
      if (v45)
      {
        v46 = *v44;
        v47 = v45;
      }

      else
      {
        v46 = 0;
        v47 = 0xE000000000000000;
      }

      v48 = (v61 + v43);
      if (v48[1])
      {
        v49 = v48[1];
        if (v46 != *v48)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v49 = 0xE000000000000000;
        if (v46)
        {
          goto LABEL_61;
        }
      }

      if (v47 == v49)
      {
        v50 = 0;
        goto LABEL_62;
      }

LABEL_61:
      v50 = sub_2526933B0();
LABEL_62:
      a3 = v40 + v41;

      sub_2525ADB64(v61, type metadata accessor for Device.ControlGroup);
      sub_2525ADB64(v60, type metadata accessor for Device.ControlGroup);
      if (v50)
      {
        a2 = v59;
        v53 = v63;
        if (v40 < v57 || a3 >= v57)
        {
          swift_arrayInitWithTakeFrontToBack();
          v35 = v56;
        }

        else
        {
          v35 = v56;
          if (v40 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v36 = v58;
        if (v37 <= v53)
        {
          goto LABEL_76;
        }

        goto LABEL_48;
      }

      v51 = v62;
      v52 = v63;
      v35 = v62;
      v39 = v59;
      if (v40 < v37 || a3 >= v37)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v40 != v37)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v37 = v35;
      v38 = v57;
      if (v51 <= v52)
      {
        a2 = v57;
        goto LABEL_76;
      }
    }
  }

LABEL_80:
  __break(1u);
}

BOOL _s22HomeAccessoryControlUI16HAPControlSolverC6SourceV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterControlSolver.Source(0);
  v131 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v123 - v8;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E34E8);
  MEMORY[0x28223BE20](v130);
  v11 = &v123 - v10;
  v137 = sub_25268E710();
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v129 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB058);
  MEMORY[0x28223BE20](v13 - 8);
  v133 = &v123 - v14;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E34F0);
  MEMORY[0x28223BE20](v134);
  v140 = &v123 - v15;
  v16 = sub_25268DA10();
  v141 = *(v16 - 8);
  v142 = v16;
  MEMORY[0x28223BE20](v16);
  v132 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v18 - 8);
  v138 = &v123 - v19;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E34F8);
  MEMORY[0x28223BE20](v139);
  v145 = &v123 - v20;
  v21 = sub_25268EAF0();
  v146 = *(v21 - 8);
  v147 = v21;
  MEMORY[0x28223BE20](v21);
  v136 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3460);
  MEMORY[0x28223BE20](v23 - 8);
  v144 = &v123 - v24;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3500);
  MEMORY[0x28223BE20](v143);
  v148 = &v123 - v25;
  v26 = sub_25268ED50();
  v150 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v149 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3468);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v123 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3508);
  MEMORY[0x28223BE20](v31);
  v33 = &v123 - v32;
  if ((_s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v124 = v9;
  v125 = v4;
  v126 = v11;
  v123 = v6;
  v127 = type metadata accessor for HAPControlSolver.Source();
  sub_25268E530();
  sub_2525A3E9C(&qword_27F4DADD8, MEMORY[0x277D158E0]);
  v151 = a1;
  sub_252692D40();
  v128 = a2;
  sub_252692D40();
  if (v154 == v152 && v155 == v153)
  {
  }

  else
  {
    v34 = sub_2526933B0();

    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  v35 = v127;
  sub_252692D40();
  v36 = v128;
  sub_252692D40();
  if (v154 == v152 && v155 == v153)
  {
  }

  else
  {
    v37 = sub_2526933B0();

    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  v38 = v35[7];
  v39 = v151;
  v40 = *(v151 + v38);
  v41 = *(v151 + v38 + 8);
  v42 = (v36 + v38);
  if ((v40 != *v42 || v41 != v42[1]) && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  v43 = v35[8];
  v44 = (v39 + v43);
  v45 = *(v39 + v43 + 8);
  v46 = (v36 + v43);
  v47 = v46[1];
  if (!v45)
  {
    if (!v47)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v47 || (*v44 != *v46 || v45 != v47) && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v48 = v35[9];
  v49 = *(v31 + 48);
  sub_25237153C(v39 + v48, v33, &qword_27F4E3468);
  sub_25237153C(v36 + v48, &v33[v49], &qword_27F4E3468);
  v50 = v150;
  v51 = *(v150 + 48);
  if (v51(v33, 1, v26) == 1)
  {
    if (v51(&v33[v49], 1, v26) == 1)
    {
      sub_252372288(v33, &qword_27F4E3468);
      goto LABEL_28;
    }

LABEL_25:
    v52 = &qword_27F4E3508;
    v53 = v33;
LABEL_26:
    sub_252372288(v53, v52);
    return 0;
  }

  sub_25237153C(v33, v30, &qword_27F4E3468);
  if (v51(&v33[v49], 1, v26) == 1)
  {
    (*(v50 + 8))(v30, v26);
    goto LABEL_25;
  }

  v54 = &v33[v49];
  v55 = v149;
  (*(v50 + 32))(v149, v54, v26);
  sub_2525A3E9C(&qword_27F4E3518, MEMORY[0x277D15B98]);
  v56 = sub_252692B70();
  v57 = *(v50 + 8);
  v57(v55, v26);
  v57(v30, v26);
  sub_252372288(v33, &qword_27F4E3468);
  if ((v56 & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  v58 = v151;
  if (*(v151 + v35[10]) != *(v36 + v35[10]))
  {
    return 0;
  }

  v60 = v35[11];
  v61 = (v151 + v60);
  v62 = *(v151 + v60 + 8);
  v63 = (v36 + v60);
  v64 = v63[1];
  if (v62)
  {
    if (!v64 || (*v61 != *v63 || v62 != v64) && (sub_2526933B0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v64)
  {
    return 0;
  }

  if ((MEMORY[0x25309FE20](v58 + v35[12], v36 + v35[12]) & 1) == 0 || *(v58 + v35[13]) != *(v36 + v35[13]))
  {
    return 0;
  }

  v65 = v35[14];
  v66 = *(v58 + v65);
  v67 = *(v58 + v65 + 8);
  v68 = (v36 + v65);
  if ((v66 != *v68 || v67 != v68[1]) && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  v69 = v35[15];
  v70 = (v58 + v69);
  v71 = *(v58 + v69 + 8);
  v72 = (v36 + v69);
  v73 = *(v36 + v69 + 8);
  if (v71)
  {
    if (!v73)
    {
      return 0;
    }
  }

  else
  {
    if (*v70 != *v72)
    {
      LOBYTE(v73) = 1;
    }

    if (v73)
    {
      return 0;
    }
  }

  if ((sub_2523E52FC(*(v58 + v35[16]), *(v36 + v35[16])) & 1) == 0 || (sub_2523E52FC(*(v58 + v35[17]), *(v36 + v35[17])) & 1) == 0 || (sub_2523E5350(*(v58 + v35[18]), *(v36 + v35[18])) & 1) == 0 || (sub_25268FE30() & 1) == 0 || (sub_25268F190() & 1) == 0)
  {
    return 0;
  }

  v74 = v127[21];
  v75 = *(v143 + 48);
  v76 = v148;
  sub_25237153C(v151 + v74, v148, &qword_27F4E3460);
  sub_25237153C(v128 + v74, v76 + v75, &qword_27F4E3460);
  v77 = *(v146 + 48);
  if (v77(v76, 1, v147) == 1)
  {
    if (v77(v148 + v75, 1, v147) == 1)
    {
      sub_252372288(v148, &qword_27F4E3460);
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  v78 = v148;
  sub_25237153C(v148, v144, &qword_27F4E3460);
  if (v77(v78 + v75, 1, v147) == 1)
  {
    (*(v146 + 8))(v144, v147);
LABEL_58:
    v52 = &qword_27F4E3500;
    v53 = v148;
    goto LABEL_26;
  }

  v79 = v146;
  v80 = v148;
  v81 = v148 + v75;
  v82 = v136;
  v83 = v147;
  (*(v146 + 32))(v136, v81, v147);
  sub_2525A3E9C(&qword_27F4E3510, MEMORY[0x277D15A98]);
  v84 = v144;
  v85 = sub_252692B70();
  v86 = *(v79 + 8);
  v86(v82, v83);
  v86(v84, v83);
  sub_252372288(v80, &qword_27F4E3460);
  if ((v85 & 1) == 0)
  {
    return 0;
  }

LABEL_60:
  v87 = v127[22];
  v88 = *(v139 + 48);
  v89 = v145;
  sub_25237153C(v151 + v87, v145, &qword_27F4DB290);
  sub_25237153C(v128 + v87, v89 + v88, &qword_27F4DB290);
  v90 = *(v141 + 48);
  if (v90(v89, 1, v142) == 1)
  {
    if (v90(v145 + v88, 1, v142) == 1)
    {
      sub_252372288(v145, &qword_27F4DB290);
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  v91 = v145;
  sub_25237153C(v145, v138, &qword_27F4DB290);
  if (v90(v91 + v88, 1, v142) == 1)
  {
    (*(v141 + 8))(v138, v142);
LABEL_65:
    v52 = &qword_27F4E34F8;
    v53 = v145;
    goto LABEL_26;
  }

  v92 = v141;
  v93 = v145;
  v94 = v145 + v88;
  v95 = v132;
  v96 = v142;
  (*(v141 + 32))(v132, v94, v142);
  sub_2525A3E9C(&qword_27F4DAF90, MEMORY[0x277CC95F0]);
  v97 = v138;
  v98 = sub_252692B70();
  v99 = *(v92 + 8);
  v99(v95, v96);
  v99(v97, v96);
  sub_252372288(v93, &qword_27F4DB290);
  if ((v98 & 1) == 0)
  {
    return 0;
  }

LABEL_67:
  v100 = v127[23];
  v101 = *(v134 + 48);
  v102 = v140;
  sub_25237153C(v151 + v100, v140, &qword_27F4DB058);
  sub_25237153C(v128 + v100, v102 + v101, &qword_27F4DB058);
  v103 = *(v135 + 48);
  if (v103(v102, 1, v137) == 1)
  {
    if (v103(v140 + v101, 1, v137) == 1)
    {
      sub_252372288(v140, &qword_27F4DB058);
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  v104 = v140;
  sub_25237153C(v140, v133, &qword_27F4DB058);
  if (v103(v104 + v101, 1, v137) == 1)
  {
    (*(v135 + 8))(v133, v137);
LABEL_72:
    v52 = &qword_27F4E34F0;
    v53 = v140;
    goto LABEL_26;
  }

  v105 = v135;
  v106 = v140;
  v107 = v140 + v101;
  v108 = v129;
  v109 = v137;
  (*(v135 + 32))(v129, v107, v137);
  sub_2525A3E9C(&qword_27F4DAFD8, MEMORY[0x277D15980]);
  v110 = v133;
  v111 = sub_252692B70();
  v112 = *(v105 + 8);
  v112(v108, v109);
  v112(v110, v109);
  sub_252372288(v106, &qword_27F4DB058);
  if ((v111 & 1) == 0)
  {
    return 0;
  }

LABEL_74:
  v113 = v127[24];
  v114 = *(v130 + 48);
  v115 = v126;
  sub_25237153C(v151 + v113, v126, &qword_27F4DAD50);
  sub_25237153C(v128 + v113, v115 + v114, &qword_27F4DAD50);
  v116 = *(v131 + 48);
  if (v116(v115, 1, v125) == 1)
  {
    if (v116(&v126[v114], 1, v125) == 1)
    {
      sub_252372288(v126, &qword_27F4DAD50);
      return 1;
    }

    goto LABEL_79;
  }

  v117 = v126;
  sub_25237153C(v126, v124, &qword_27F4DAD50);
  if (v116((v117 + v114), 1, v125) == 1)
  {
    sub_2525ADB64(v124, type metadata accessor for MatterControlSolver.Source);
LABEL_79:
    v52 = &qword_27F4E34E8;
    v53 = v126;
    goto LABEL_26;
  }

  v118 = v126;
  v119 = &v126[v114];
  v120 = v123;
  sub_2525ADA94(v119, v123, type metadata accessor for MatterControlSolver.Source);
  v121 = v124;
  v122 = static MatterControlSolver.Source.== infix(_:_:)(v124, v120);
  sub_2525ADB64(v120, type metadata accessor for MatterControlSolver.Source);
  sub_2525ADB64(v121, type metadata accessor for MatterControlSolver.Source);
  sub_252372288(v118, &qword_27F4DAD50);
  return (v122 & 1) != 0;
}

void sub_2525A3700()
{
  sub_25268DA10();
  if (v0 <= 0x3F)
  {
    sub_25268E530();
    if (v1 <= 0x3F)
    {
      sub_2523E19E4(319, &qword_27F4DB5E0);
      if (v2 <= 0x3F)
      {
        sub_2525A3A50(319, &qword_27F4E34B0, MEMORY[0x277D15B98], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_25268E2F0();
          if (v4 <= 0x3F)
          {
            sub_2523E19E4(319, &qword_27F4DCEF8);
            if (v5 <= 0x3F)
            {
              sub_2525A3A50(319, &qword_27F4E34B8, type metadata accessor for HAPControlSolver.Source, MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_2525A3A50(319, &qword_27F4E34C0, MEMORY[0x277D164C0], MEMORY[0x277D83940]);
                if (v7 <= 0x3F)
                {
                  sub_25268FEB0();
                  if (v8 <= 0x3F)
                  {
                    sub_25268F1A0();
                    if (v9 <= 0x3F)
                    {
                      sub_2525A3A50(319, &qword_27F4E34C8, MEMORY[0x277D15A98], MEMORY[0x277D83D88]);
                      if (v10 <= 0x3F)
                      {
                        sub_2525A3A50(319, &qword_27F4E34D0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
                        if (v11 <= 0x3F)
                        {
                          sub_2525A3A50(319, &qword_27F4E34D8, MEMORY[0x277D15980], MEMORY[0x277D83D88]);
                          if (v12 <= 0x3F)
                          {
                            sub_2525A3A50(319, &qword_27F4E34E0, type metadata accessor for MatterControlSolver.Source, MEMORY[0x277D83D88]);
                            if (v13 <= 0x3F)
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
  }
}

void sub_2525A3A50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

ValueMetadata *sub_2525A3AB4(uint64_t a1)
{
  v2 = sub_25268E530();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HAPControlSolver.Source();
  (*(v3 + 16))(v5, a1 + *(v6 + 20), v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == *MEMORY[0x277D15650])
  {
    return &_s11AirPurifierVN;
  }

  if (v7 == *MEMORY[0x277D15828])
  {
    return &_s28DoorWindowAndWindowConveringVN;
  }

  if (v7 == *MEMORY[0x277D15810])
  {
    return &_s3FanVN;
  }

  if (v7 == *MEMORY[0x277D15868])
  {
    return &_s6FaucetVN;
  }

  if (v7 == *MEMORY[0x277D15760])
  {
    return &_s10GarageDoorVN;
  }

  if (v7 == *MEMORY[0x277D15698])
  {
    return &_s12HeaterCoolerVN;
  }

  if (v7 == *MEMORY[0x277D157D8])
  {
    return &_s10HumidifierVN;
  }

  if (v7 == *MEMORY[0x277D15770])
  {
    return &_s10IrrigationVN;
  }

  if (v7 == *MEMORY[0x277D158D0])
  {
    return &_s9LightbulbVN;
  }

  if (v7 == *MEMORY[0x277D156D8])
  {
    return &_s4LockVN;
  }

  if (v7 == *MEMORY[0x277D15870])
  {
    return &_s12OutletSwitchVN;
  }

  if (v7 == *MEMORY[0x277D15708])
  {
    return &_s14SecuritySystemVN;
  }

  if (v7 == *MEMORY[0x277D15888])
  {
    return &_s12OutletSwitchVN;
  }

  if (v7 == *MEMORY[0x277D15630])
  {
    return &_s10TelevisionVN;
  }

  if (v7 == *MEMORY[0x277D15640])
  {
    return &_s10ThermostatVN;
  }

  v9 = v7;
  if (v7 == *MEMORY[0x277D15850])
  {
    return &_s5ValveVN;
  }

  if (v7 == *MEMORY[0x277D15718])
  {
    return &_s3FanVN;
  }

  result = &_s28DoorWindowAndWindowConveringVN;
  if (v9 != *MEMORY[0x277D15898] && v9 != *MEMORY[0x277D15720])
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return result;
}

uint64_t sub_2525A3E9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2525A3FD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_25268F4D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = sub_25268F9E0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277D16140], v5, v17);
  type metadata accessor for HAPControlSolver.Source();
  v27 = a1;
  sub_25268FD80();
  (*(v6 + 8))(v8, v5);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_252372288(v14, &qword_27F4DB208);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
    v21 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v22 = (*(*v21 + 80) + 32) & ~*(*v21 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_252694E90;
    (*(v16 + 56))(v11, 1, 1, v15);
    v24 = sub_25268DA10();
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
    v28 = 0;
    sub_2525C1F10(v27, v19, v11, v4, &v28, v23 + v22);
    sub_252372288(v4, &qword_27F4DB290);
    sub_252372288(v11, &qword_27F4DB208);
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v25 = (v23 + v22 + v21[7]);
    v26 = (v23 + v22 + v21[8]);
    *v25 = 0;
    v25[1] = 0;
    *v26 = 0;
    v26[1] = 0;
    (*(v16 + 8))(v19, v15);
    return v23;
  }
}

uint64_t sub_2525A4424(uint64_t a1)
{
  v135 = type metadata accessor for Device.Control(0);
  v136 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v130 = &v119 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v141 = &v119 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v5 - 8);
  v133 = &v119 - v6;
  v132 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v132);
  v137 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78);
  MEMORY[0x28223BE20](v8 - 8);
  v134 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v139 = &v119 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v12 - 8);
  v140 = &v119 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v119 - v15;
  v144 = sub_25268F9E0();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25268F4D0();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v19 + 104);
  LODWORD(v131) = *MEMORY[0x277D16330];
  v23(v22, v20);
  type metadata accessor for HAPControlSolver.Source();
  v24 = a1;
  LODWORD(v138) = sub_25268FE70();
  LODWORD(a1) = v138;
  v25 = *(v19 + 8);
  v25(v22, v18);
  if (a1 == 2)
  {
    return MEMORY[0x277D84F90];
  }

  v127 = *MEMORY[0x277D162C8];
  v128 = v19 + 104;
  (v23)(v22);
  v26 = v24;
  sub_25268FD80();
  v129 = v18;
  v25(v22, v18);
  v27 = v143;
  v28 = v144;
  if ((*(v143 + 48))(v16, 1, v144) == 1)
  {
    sub_252372288(v16, &qword_27F4DB208);
    return MEMORY[0x277D84F90];
  }

  v126 = v23;
  v29 = v142;
  (*(v27 + 32))(v142, v16, v28);
  v30 = sub_25268FE40();
  if (v31)
  {
    (*(v27 + 8))(v29, v28);
    return MEMORY[0x277D84F90];
  }

  v33 = v30;
  v34 = v140;
  sub_25259EEF0(v26, v140);
  v124 = v33;
  sub_25259F488(v34, v138 & 1, v26, v33, v139);
  v35 = sub_252692C40();
  v37 = v36;
  v38 = sub_252692C40();
  v40 = v39;
  v41 = sub_252692C40();
  v43 = v42;
  v123 = sub_252692C40();
  v122 = v44;
  v125 = v26;
  v45 = sub_2525A03F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEA0);
  inited = swift_initStackObject();
  v47 = 0;
  *(inited + 16) = xmmword_2526952C0;
  *(inited + 32) = 0;
  v48 = inited + 32;
  *(inited + 40) = v35;
  *(inited + 48) = v37;
  *(inited + 56) = xmmword_2526952D0;
  *(inited + 72) = v38;
  *(inited + 80) = v40;
  *(inited + 88) = xmmword_2526952E0;
  *(inited + 104) = v41;
  *(inited + 112) = v43;
  v49 = v45 + 56;
  v121 = inited;
  *(inited + 120) = 0;
  v50 = MEMORY[0x277D84F90];
  do
  {
    if (v47 <= 3)
    {
      v51 = 3;
    }

    else
    {
      v51 = v47;
    }

    while (1)
    {
      if (v47 == v51)
      {
        __break(1u);
        goto LABEL_34;
      }

      v52 = v47++;
      if (*(v45 + 16))
      {
        v53 = v48 + 32 * v52;
        v145 = *v53;
        v54 = *(v53 + 16);
        v55 = *(v53 + 24);
        sub_252693460();
        v56 = v145;
        MEMORY[0x2530A4FE0](v145);
        v57 = sub_2526934C0();
        v58 = -1 << *(v45 + 32);
        v59 = v57 & ~v58;
        if ((*(v49 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
        {
          break;
        }
      }

LABEL_11:
      if (v47 == 3)
      {
        goto LABEL_24;
      }
    }

    v60 = ~v58;
    while (*(*(v45 + 48) + 8 * v59) != v56)
    {
      v59 = (v59 + 1) & v60;
      if (((*(v49 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146 = v50;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25236FF90(0, *(v50 + 2) + 1, 1);
      v50 = v146;
    }

    v63 = *(v50 + 2);
    v62 = *(v50 + 3);
    if (v63 >= v62 >> 1)
    {
      sub_25236FF90((v62 > 1), v63 + 1, 1);
      v50 = v146;
    }

    *(v50 + 2) = v63 + 1;
    v64 = &v50[32 * v63];
    *(v64 + 2) = v145;
    *(v64 + 6) = v54;
    *(v64 + 7) = v55;
  }

  while (v47 != 3);
LABEL_24:

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_25;
  }

LABEL_34:
  v50 = sub_252368918(0, *(v50 + 2) + 1, 1, v50);
LABEL_25:
  v65 = v137;
  v66 = v123;
  v67 = v122;
  v69 = *(v50 + 2);
  v68 = *(v50 + 3);
  if (v69 >= v68 >> 1)
  {
    v50 = sub_252368918((v68 > 1), v69 + 1, 1, v50);
  }

  *(v50 + 2) = v69 + 1;
  v70 = &v50[32 * v69];
  *(v70 + 4) = 100;
  *(v70 + 5) = v66;
  *(v70 + 6) = v67;
  *(v70 + 7) = 0;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v72 = *(*(v71 - 8) + 56);
  v73 = v133;
  v72(v133, 1, 1, v71);
  v74 = sub_2526922F0();
  v75 = sub_252692330();
  v76 = v132;
  type metadata accessor for AccessoryControl.StatusProvider();
  swift_storeEnumTagMultiPayload();
  v77 = v76[6];
  v72((v65 + v77), 1, 1, v71);
  v78 = v65 + v76[11];
  *v65 = v50;
  *(v65 + 8) = 1;
  *(v65 + v76[8]) = v74;
  *(v65 + v76[9]) = v75;
  sub_252377048(v73, v65 + v77, &qword_27F4DADB8);
  *v78 = 0;
  *(v78 + 8) = 1;
  *(v65 + v76[7]) = 0;
  if (v138)
  {
    v79 = v124;
  }

  else
  {
    v79 = 100;
  }

  v80 = v141;
  sub_25268F9B0();
  v81 = v135;
  v82 = &v80[*(v135 + 20)];
  v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0) + 48);
  *v82 = v79;
  v82[8] = 0;
  sub_2525ADAFC(v65, &v82[v83], type metadata accessor for AccessoryControl.PickerViewConfig);
  type metadata accessor for Device.Control.Kind(0);
  swift_storeEnumTagMultiPayload();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3528);
  v133 = swift_allocBox();
  v86 = v85;
  v124 = (v85 + *(v84 + 48));
  v138 = v85;
  v132 = *(v84 + 64);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3088);
  v122 = *(v123 + 48);
  (v126)(v86, v131, v129);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
  v87 = sub_25268DA10();
  v88 = *(v87 - 8);
  v121 = *(v88 + 72);
  v89 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v90 = swift_allocObject();
  v145 = xmmword_252694E90;
  *(v90 + 16) = xmmword_252694E90;
  v120 = *(v88 + 16);
  v91 = v125;
  v120(v90 + v89, v125, v87);
  v92 = sub_25240C1FC(v90);
  swift_setDeallocating();
  v119 = *(v88 + 8);
  v119(v90 + v89, v87);
  swift_deallocClassInstance();
  *(v138 + v122) = v92;
  type metadata accessor for Device.Control.Source(0);
  swift_storeEnumTagMultiPayload();
  v123 = *(v123 + 48);
  v93 = v124;
  (v126)(v124, v127, v129);
  v94 = swift_allocObject();
  *(v94 + 16) = v145;
  v120(v94 + v89, v91, v87);
  v95 = sub_25240C1FC(v94);
  swift_setDeallocating();
  v119(v94 + v89, v87);
  swift_deallocClassInstance();
  *(v93 + v123) = v95;
  swift_storeEnumTagMultiPayload();
  *(v138 + v132) = 100;
  *&v141[v81[6]] = v133;
  v96 = v141;
  swift_storeEnumTagMultiPayload();
  v97 = (v96 + v81[8]);
  v98 = v81[10];
  *(v96 + v98) = 16;
  *(v96 + v81[7]) = 0;
  *v97 = 0;
  v97[1] = 0;
  *(v96 + v81[9]) = 1028;
  *(v96 + v98) = 15;
  *(v96 + v81[11]) = 1;
  v99 = v139;
  v100 = v134;
  sub_25237153C(v139, v134, &qword_27F4E2B78);
  v101 = v136;
  if ((*(v136 + 48))(v100, 1, v81) == 1)
  {
    sub_252372288(v100, &qword_27F4E2B78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
    v102 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v103 = (*(*v102 + 80) + 32) & ~*(*v102 + 80);
    v104 = swift_allocObject();
    *(v104 + 16) = v145;
    v105 = v104 + v103;
    sub_2525ADAFC(v96, v105, type metadata accessor for Device.Control);
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v106 = (v105 + v102[7]);
    v107 = (v105 + v102[8]);
    *v106 = 0;
    v106[1] = 0;
    *v107 = 0;
    v107[1] = 0;
    sub_252372288(v99, &qword_27F4E2B78);
    sub_252372288(v140, &qword_27F4DB290);
    (*(v143 + 8))(v142, v144);
    sub_2525ADB64(v96, type metadata accessor for Device.Control);
    sub_2525ADB64(v137, type metadata accessor for AccessoryControl.PickerViewConfig);
    return v104;
  }

  else
  {
    v108 = v130;
    sub_2525ADA94(v100, v130, type metadata accessor for Device.Control);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
    v109 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v110 = (*(*v109 + 80) + 32) & ~*(*v109 + 80);
    v111 = swift_allocObject();
    *(v111 + 16) = v145;
    v112 = (v111 + v110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8);
    v113 = *(v101 + 72);
    v114 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_252694EA0;
    v116 = v115 + v114;
    sub_2525ADAFC(v108, v116, type metadata accessor for Device.Control);
    sub_2525ADAFC(v96, v116 + v113, type metadata accessor for Device.Control);
    *v112 = v115;
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v117 = (v112 + v109[7]);
    v118 = (v112 + v109[8]);
    *v117 = 0;
    v117[1] = 0;
    *v118 = 0;
    v118[1] = 0;
    sub_2525ADB64(v108, type metadata accessor for Device.Control);
    sub_252372288(v99, &qword_27F4E2B78);
    sub_252372288(v140, &qword_27F4DB290);
    (*(v143 + 8))(v142, v144);
    sub_2525ADB64(v96, type metadata accessor for Device.Control);
    sub_2525ADB64(v137, type metadata accessor for AccessoryControl.PickerViewConfig);
    return v111;
  }
}

void *sub_2525A55D8(uint64_t a1, unsigned __int16 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Device.Control(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v27 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v26 = &v23 - v11;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = *a2;
  v14 = *(type metadata accessor for HAPControlSolver.Source() - 8);
  v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v16 = *(v14 + 72);
  v17 = MEMORY[0x277D84F90];
  v25 = v13;
  v24 = v16;
  do
  {
    sub_25259DDEC(v15, v13, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_252372288(v6, &qword_27F4E2B78);
    }

    else
    {
      v18 = v7;
      v19 = v26;
      sub_2525ADA94(v6, v26, type metadata accessor for Device.Control);
      sub_2525ADA94(v19, v27, type metadata accessor for Device.Control);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_252369B34(0, v17[2] + 1, 1, v17);
      }

      v21 = v17[2];
      v20 = v17[3];
      if (v21 >= v20 >> 1)
      {
        v17 = sub_252369B34(v20 > 1, v21 + 1, 1, v17);
      }

      v17[2] = v21 + 1;
      sub_2525ADA94(v27, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, type metadata accessor for Device.Control);
      v7 = v18;
      v13 = v25;
      v16 = v24;
    }

    v15 += v16;
    --v12;
  }

  while (v12);
  return v17;
}

void *sub_2525A58D8(uint64_t a1)
{
  v3 = type metadata accessor for Device.Control(0);
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = type metadata accessor for Device.ControlGroup(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v51 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v40 - v14;
  v15 = type metadata accessor for HAPControlSolver.Source();
  v50 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v18;
  v19 = *(a1 + *(v18 + 64));
  v49 = v19[2];
  if (v49)
  {
    v20 = 0;
    v48 = (v11 + 56);
    v21 = MEMORY[0x277D84F90];
    v41 = v11;
    v47 = (v11 + 48);
    v46 = xmmword_252694E90;
    while (v20 < v19[2])
    {
      v22 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v1 = v19;
      sub_2525ADAFC(v19 + v22 + *(v50 + 72) * v20, v17, type metadata accessor for HAPControlSolver.Source);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF18);
      v23 = swift_allocObject();
      *(v23 + 16) = v46;
      sub_2525ADAFC(v17, v23 + v22, type metadata accessor for HAPControlSolver.Source);
      LOWORD(v53) = 5;
      v24 = sub_2525A55D8(v23, &v53);
      swift_setDeallocating();
      sub_2525ADB64(v23 + v22, type metadata accessor for HAPControlSolver.Source);
      swift_deallocClassInstance();
      if (v24[2])
      {
        v25 = v44;
        sub_2525ADAFC(v24 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v44, type metadata accessor for Device.Control);

        sub_2525ADA94(v25, v52, type metadata accessor for Device.Control);
        v26 = v43;
        v27 = &v17[*(v43 + 32)];
        if (*(v27 + 1))
        {
          v28 = *v27;
          v29 = *(v27 + 1);
        }

        else
        {
          v30 = &v17[*(v43 + 28)];
          v28 = *v30;
          v29 = *(v30 + 1);
        }

        sub_2525ADA94(v52, v9, type metadata accessor for Device.Control);
        type metadata accessor for Device.ControlGroup.LayoutType(0);
        swift_storeEnumTagMultiPayload();
        v31 = &v17[*(v26 + 28)];
        v32 = *v31;
        v33 = *(v31 + 1);
        v34 = &v9[*(v10 + 20)];
        v35 = &v9[*(v10 + 24)];
        *v34 = v28;
        *(v34 + 1) = v29;
        *v35 = v32;
        *(v35 + 1) = v33;
        (*v48)(v9, 0, 1, v10);
      }

      else
      {

        (*v48)(v9, 1, 1, v10);
      }

      sub_2525ADB64(v17, type metadata accessor for HAPControlSolver.Source);
      if ((*v47)(v9, 1, v10) == 1)
      {
        sub_252372288(v9, &qword_27F4E2B80);
      }

      else
      {
        v36 = v42;
        sub_2525ADA94(v9, v42, type metadata accessor for Device.ControlGroup);
        sub_2525ADA94(v36, v51, type metadata accessor for Device.ControlGroup);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_252369B0C(0, v21[2] + 1, 1, v21);
        }

        v38 = v21[2];
        v37 = v21[3];
        if (v38 >= v37 >> 1)
        {
          v21 = sub_252369B0C(v37 > 1, v38 + 1, 1, v21);
        }

        v21[2] = v38 + 1;
        sub_2525ADA94(v51, v21 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v38, type metadata accessor for Device.ControlGroup);
      }

      ++v20;
      v19 = v1;
      if (v49 == v20)
      {
        goto LABEL_19;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
LABEL_19:
    v53 = v21;

    sub_2525A0B54(&v53);

    return v53;
  }

  return result;
}

uint64_t sub_2525A5F10(uint64_t a1)
{
  v194 = sub_25268DA10();
  v199 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v190 = &v163 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v3 - 8);
  v183 = &v163 - v4;
  v184 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v184);
  v189 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_25268E530();
  v204 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v207 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HAPControlSolver.Source();
  v214 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for Device.Control(0);
  v185 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v186 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v200 = &v163 - v12;
  v13 = sub_25268F4D0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v163 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v17 - 8);
  v193 = &v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v195 = &v163 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v163 - v22;
  v24 = sub_25268F9E0();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v196 = &v163 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v163 - v29;
  v31 = *(v14 + 104);
  v197 = *MEMORY[0x277D16330];
  v211 = v31;
  v212 = v14 + 104;
  v31(v16, v28);
  v216 = v7;
  v32 = *(v7 + 76);
  v202 = a1;
  sub_25268FD80();
  v33 = *(v14 + 8);
  v209 = v13;
  v210 = v14 + 8;
  v33(v16, v13);
  v34 = *(v25 + 48);
  v192 = v25 + 48;
  v191 = v34;
  if (v34(v23, 1, v24) == 1)
  {
    sub_252372288(v23, &qword_27F4DB208);
    return MEMORY[0x277D84F90];
  }

  v180 = v25;
  v36 = *(v25 + 32);
  v187 = v24;
  v178 = v25 + 32;
  v177 = v36;
  v36(v30, v23, v24);
  v37 = v209;
  v211(v16, v197, v209);
  v182 = v32;
  v38 = sub_25268FE70();
  v205 = v16;
  v206 = v33;
  v33(v16, v37);
  v39 = v38 == 2;
  v40 = v38 != 2;
  v41 = v200;
  v42 = v38 & 1;
  v179 = v30;
  sub_25268F9B0();
  v43 = (v41 + *(v198 + 20));
  v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428) + 48);
  *v43 = v42;
  v43[1] = 0;
  v43[2] = v40;
  v43[3] = 0;
  v43[4] = v39;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v45 = (v44 + *(v176 + 28));
  v46 = type metadata accessor for IconDescriptor();
  v47 = *(v46 + 20);
  v48 = *MEMORY[0x277D16578];
  v49 = sub_25268F910();
  (*(*(v49 - 8) + 104))(&v45[v47], v48, v49);
  *v45 = 0x7265776F70;
  *(v45 + 1) = 0xE500000000000000;
  v45[*(v46 + 24)] = 0;
  sub_2525ADAFC(v45, v44, type metadata accessor for IconDescriptor);
  v215 = sub_252692330();
  v50 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  type metadata accessor for ControlTextModifier.Config(0);
  swift_storeEnumTagMultiPayload();
  v165 = type metadata accessor for AccessoryControl.StatusProvider();
  swift_storeEnumTagMultiPayload();
  v51 = v44 + v50[7];
  *v51 = 0u;
  *(v51 + 16) = 0u;
  *(v51 + 32) = -1;
  v52 = v44 + v50[8];
  *v52 = 0u;
  *(v52 + 16) = 0u;
  *(v52 + 32) = -1;
  v53 = v50[12];
  *(v44 + v50[5]) = v215;
  v54 = (v44 + v50[10]);
  *v54 = 0;
  v54[1] = 0xE000000000000000;
  sub_252376DA8(*v51, *(v51 + 8), *(v51 + 16), *(v51 + 24), *(v51 + 32));
  *v51 = 0u;
  *(v51 + 16) = 0u;
  *(v51 + 32) = -1;
  sub_252376DA8(*v52, *(v52 + 8), *(v52 + 16), *(v52 + 24), *(v52 + 32));
  *v52 = 0u;
  *(v52 + 16) = 0u;
  *(v52 + 32) = -1;
  *(v44 + v53) = 0;
  *(v44 + v50[9]) = 0;
  v174 = type metadata accessor for Device.Control.Kind(0);
  swift_storeEnumTagMultiPayload();
  v55 = v198;
  v56 = v41;
  v57 = v41 + *(v198 + 24);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3088);
  v215 = *(v173 + 48);
  v211(v57, v197, v37);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
  v59 = v199;
  v60 = *(v199 + 80);
  v61 = (v60 + 32) & ~v60;
  v170 = *(v199 + 72);
  v169 = v60;
  v171 = v58;
  v62 = swift_allocObject();
  v181 = xmmword_252694E90;
  *(v62 + 16) = xmmword_252694E90;
  v63 = *(v59 + 16);
  v64 = v202;
  v65 = v194;
  v168 = v59 + 16;
  v167 = v63;
  v63(v62 + v61, v202, v194);
  v66 = sub_25240C1FC(v62);
  swift_setDeallocating();
  v67 = *(v59 + 8);
  v175 = v61;
  v199 = v59 + 8;
  v172 = v67;
  v67((v62 + v61), v65);
  swift_deallocClassInstance();
  *(v57 + v215) = v66;
  v166 = type metadata accessor for Device.Control.Source(0);
  swift_storeEnumTagMultiPayload();
  v68 = (v56 + v55[8]);
  v69 = v55[10];
  *(v56 + v69) = 16;
  *(v56 + v55[7]) = 0;
  *v68 = 0;
  v68[1] = 0;
  *(v56 + v55[9]) = 514;
  *(v56 + v69) = 16;
  *(v56 + v55[11]) = 1;
  v70 = *(v64 + v216[17]);
  v71 = *(v70 + 16);
  if (v71)
  {
    v215 = v216[5];
    v72 = v70 + ((*(v214 + 80) + 32) & ~*(v214 + 80));
    v214 = *(v214 + 72);
    v213 = *MEMORY[0x277D15668];
    v73 = (v204 + 104);
    v74 = (v204 + 8);
    LODWORD(v204) = *MEMORY[0x277D16248];
    v188 = *MEMORY[0x277D160F8];
    v201 = MEMORY[0x277D84F90];
    v76 = v207;
    v75 = v208;
    while (1)
    {
      sub_2525ADAFC(v72, v9, type metadata accessor for HAPControlSolver.Source);
      (*v73)(v76, v213, v75);
      sub_2525A3E9C(&qword_27F4DADD8, MEMORY[0x277D158E0]);
      sub_252692D40();
      sub_252692D40();
      if (v219[0] == v217 && v219[1] == v218)
      {
        (*v74)(v76, v75);
      }

      else
      {
        v78 = sub_2526933B0();
        (*v74)(v76, v75);

        if ((v78 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v79 = &v9[v216[15]];
      if ((v79[8] & 1) == 0)
      {
        v203 = *v79;
        v80 = v205;
        v81 = v209;
        v211(v205, v204, v209);
        v82 = sub_25268FE70();
        v83 = v80;
        v84 = v81;
        v76 = v207;
        v75 = v208;
        v206(v83, v84);
        if (v82 != 2 && (v82 & 1) != 0)
        {
          v85 = v205;
          v86 = v209;
          v211(v205, v188, v209);
          v87 = sub_25268FE70();
          v88 = v85;
          v89 = v86;
          v76 = v207;
          v75 = v208;
          v206(v88, v89);
          if (v87 != 2 && (v87 & 1) != 0)
          {
            v90 = &v9[v216[8]];
            v91 = *(v90 + 1);
            if (v91)
            {
              v164 = *v90;
              v163 = v91;
            }

            else
            {
              v92 = &v9[v216[7]];
              v93 = *(v92 + 1);
              v164 = *v92;
              v163 = v93;
            }

            v94 = v203;

            sub_2525ADB64(v9, type metadata accessor for HAPControlSolver.Source);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v201 = sub_252368918(0, *(v201 + 2) + 1, 1, v201);
            }

            v96 = *(v201 + 2);
            v95 = *(v201 + 3);
            if (v96 >= v95 >> 1)
            {
              v201 = sub_252368918((v95 > 1), v96 + 1, 1, v201);
            }

            v97 = v201;
            *(v201 + 2) = v96 + 1;
            v98 = &v97[32 * v96];
            v99 = v164;
            *(v98 + 4) = v94;
            *(v98 + 5) = v99;
            *(v98 + 6) = v163;
            *(v98 + 7) = 0;
            goto LABEL_20;
          }
        }
      }

LABEL_19:
      sub_2525ADB64(v9, type metadata accessor for HAPControlSolver.Source);
LABEL_20:
      v72 += v214;
      if (!--v71)
      {
        goto LABEL_29;
      }
    }
  }

  v201 = MEMORY[0x277D84F90];
LABEL_29:
  v100 = sub_25268F170();
  if (v100)
  {
    v101 = v100;
    v219[0] = v201;

    sub_25239D704(v219, v101);
    v102 = v200;
    v103 = v196;
    v104 = v211;

    swift_bridgeObjectRelease_n();
    v201 = v219[0];
    v105 = v187;
    v106 = v195;
  }

  else
  {
    v102 = v200;
    v105 = v187;
    v106 = v195;
    v103 = v196;
    v104 = v211;
  }

  v107 = v205;
  v108 = v209;
  v104(v205, *MEMORY[0x277D16160], v209);
  sub_25268FD80();
  v109 = v206;
  v206(v107, v108);
  v110 = v193;
  sub_25237153C(v106, v193, &qword_27F4DB208);
  if (v191(v110, 1, v105) == 1)
  {

    sub_252372288(v110, &qword_27F4DB208);
    v111 = v102;
    v112 = v180;
LABEL_41:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
    v157 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v158 = (*(*v157 + 80) + 32) & ~*(*v157 + 80);
    v159 = swift_allocObject();
    *(v159 + 16) = v181;
    v160 = v159 + v158;
    sub_2525ADAFC(v111, v160, type metadata accessor for Device.Control);
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v161 = (v160 + v157[7]);
    v162 = (v160 + v157[8]);
    *v161 = 0;
    v161[1] = 0;
    *v162 = 0;
    v162[1] = 0;
    sub_252372288(v106, &qword_27F4DB208);
    (*(v112 + 8))(v179, v105);
    sub_2525ADB64(v111, type metadata accessor for Device.Control);
    return v159;
  }

  v177(v103, v110, v105);
  v113 = v201;
  if (!*(v201 + 2))
  {
    v111 = v102;
    v112 = v180;
    (*(v180 + 8))(v103, v105);

    goto LABEL_41;
  }

  v211(v107, v197, v108);
  LODWORD(v215) = sub_25268FE70();
  v109(v107, v108);
  v114 = v176;
  v115 = *(*(v176 - 8) + 56);
  v116 = v183;
  v115(v183, 1, 1, v176);
  v214 = sub_2526922F0();
  v117 = sub_252692330();
  v118 = v184;
  v119 = v189;
  swift_storeEnumTagMultiPayload();
  v120 = v113;
  v121 = v118[6];
  v115((v119 + v121), 1, 1, v114);
  v122 = v119 + v118[11];
  *v119 = v120;
  *(v119 + 8) = v215 & 1;
  *(v119 + v118[8]) = v214;
  *(v119 + v118[9]) = v117;
  sub_252377048(v116, v119 + v121, &qword_27F4DADB8);
  *v122 = 0;
  *(v122 + 8) = 1;
  v123 = v202;
  *(v119 + v118[7]) = 0;
  sub_25268F9B0();
  sub_25268F9A0();
  v124 = sub_25268FE60();
  LOBYTE(v120) = v125;
  v206(v107, v209);
  if ((v120 & 1) != 0 || *(v123 + v216[10]) != 1)
  {
    v124 = 0;
    v126 = 1;
  }

  else
  {
    v126 = 0;
  }

  v127 = v194;
  v128 = v186;
  v129 = v167;
  v167(v186, v190, v194);
  v130 = v198;
  v131 = v128 + *(v198 + 20);
  v132 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0) + 48);
  *v131 = v124;
  *(v131 + 8) = v126;
  sub_2525ADAFC(v119, v131 + v132, type metadata accessor for AccessoryControl.PickerViewConfig);
  swift_storeEnumTagMultiPayload();
  v133 = v128 + v130[6];
  v215 = *(v173 + 48);
  sub_25268F9A0();
  v134 = v175;
  v135 = swift_allocObject();
  *(v135 + 16) = v181;
  v129(v135 + v134, v123, v127);
  v136 = sub_25240C1FC(v135);
  swift_setDeallocating();
  v137 = v135 + v134;
  v138 = v172;
  v172(v137, v127);
  swift_deallocClassInstance();
  v138(v190, v127);
  *(v133 + v215) = v136;
  swift_storeEnumTagMultiPayload();
  v139 = (v123 + v216[14]);
  v140 = *v139;
  v141 = v139[1];
  v142 = (v128 + v130[8]);
  v143 = v130[10];
  *(v128 + v143) = 16;
  *(v128 + v130[7]) = 0;
  *v142 = v140;
  v142[1] = v141;
  *(v128 + v130[9]) = 1028;
  *(v128 + v143) = 16;
  *(v128 + v130[11]) = 1;
  *(v128 + v143) = 14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
  v144 = (type metadata accessor for Device.ControlGroup(0) - 8);
  v145 = (*(*v144 + 80) + 32) & ~*(*v144 + 80);
  v146 = swift_allocObject();
  *(v146 + 16) = v181;
  v147 = (v146 + v145);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8);
  v148 = *(v185 + 72);
  v149 = (*(v185 + 80) + 32) & ~*(v185 + 80);
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_252694EA0;
  v151 = v150 + v149;
  v152 = v200;
  sub_2525ADAFC(v200, v151, type metadata accessor for Device.Control);
  sub_2525ADAFC(v128, v151 + v148, type metadata accessor for Device.Control);
  *v147 = v150;
  type metadata accessor for Device.ControlGroup.LayoutType(0);
  swift_storeEnumTagMultiPayload();
  v153 = (v147 + v144[7]);
  v154 = (v147 + v144[8]);
  *v153 = 0;
  v153[1] = 0;
  *v154 = 0;
  v154[1] = 0;
  v155 = *(v180 + 8);

  v156 = v187;
  v155(v196, v187);
  sub_252372288(v195, &qword_27F4DB208);
  v155(v179, v156);
  sub_2525ADB64(v128, type metadata accessor for Device.Control);
  sub_2525ADB64(v189, type metadata accessor for AccessoryControl.PickerViewConfig);
  sub_2525ADB64(v152, type metadata accessor for Device.Control);
  return v146;
}

uint64_t sub_2525A7608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v2 - 8);
  v147 = &v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v146 = &v141 - v5;
  v145 = sub_25268EEA0();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for Device.Control(0);
  v176 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v150 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v149 = &v141 - v9;
  MEMORY[0x28223BE20](v10);
  v164 = &v141 - v11;
  MEMORY[0x28223BE20](v12);
  v142 = &v141 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v14 - 8);
  v152 = &v141 - v15;
  v178 = sub_25268F9E0();
  v175 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v165 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v148 = &v141 - v18;
  MEMORY[0x28223BE20](v19);
  v154 = &v141 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78);
  MEMORY[0x28223BE20](v21 - 8);
  v155 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v163 = &v141 - v24;
  MEMORY[0x28223BE20](v25);
  v170 = &v141 - v26;
  MEMORY[0x28223BE20](v27);
  v180 = &v141 - v28;
  MEMORY[0x28223BE20](v29);
  v153 = &v141 - v30;
  MEMORY[0x28223BE20](v31);
  v166 = &v141 - v32;
  MEMORY[0x28223BE20](v33);
  v179 = &v141 - v34;
  v35 = sub_25268F4D0();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v141 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v39 - 8);
  v162 = &v141 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v151 = &v141 - v42;
  MEMORY[0x28223BE20](v43);
  v161 = &v141 - v44;
  MEMORY[0x28223BE20](v45);
  v177 = &v141 - v46;
  MEMORY[0x28223BE20](v47);
  v174 = &v141 - v48;
  MEMORY[0x28223BE20](v49);
  v51 = &v141 - v50;
  v53 = MEMORY[0x28223BE20](v52);
  v55 = &v141 - v54;
  v57 = v36 + 104;
  v56 = *(v36 + 104);
  v56(v38, *MEMORY[0x277D16330], v35, v53);
  v58 = *(type metadata accessor for HAPControlSolver.Source() + 76);
  v59 = a1;
  sub_25268FD80();
  v60 = v175;
  v61 = v36 + 8;
  v62 = *(v36 + 8);
  v168 = v35;
  v160 = v61;
  v62(v38, v35);
  v172 = *(v60 + 48);
  v63 = v172(v51, 1, v178);
  v171 = v59;
  v169 = v60 + 48;
  v173 = v55;
  v159 = v56;
  v158 = v58;
  v157 = v57;
  v156 = v62;
  if (v63 == 1)
  {
    (v56)(v38, *MEMORY[0x277D160B0], v168);
    sub_25268FD80();
    v64 = v168;
    v62(v38, v168);
    v65 = v64;
    if (v172(v51, 1, v178) != 1)
    {
      sub_252372288(v51, &qword_27F4DB208);
    }
  }

  else
  {
    v66 = v51;
    v67 = v178;
    (*(v60 + 32))(v55, v66, v178);
    (*(v60 + 56))(v55, 0, 1, v67);
    v65 = v168;
  }

  v68 = v159;
  v159(v38, *MEMORY[0x277D16128], v65);
  v69 = v171;
  v70 = v174;
  sub_25268FD80();
  v71 = v156;
  v156(v38, v65);
  v68(v38, *MEMORY[0x277D161A8], v65);
  v72 = v69;
  sub_25268FD80();
  v71(v38, v65);
  v73 = *(v176 + 56);
  v74 = v167;
  v73(v179, 1, 1, v167);
  v75 = v70;
  v76 = v161;
  sub_25237153C(v75, v161, &qword_27F4DB208);
  v77 = v178;
  v78 = v172;
  if (v172(v76, 1, v178) == 1)
  {
    sub_252372288(v76, &qword_27F4DB208);
    v79 = v151;
    sub_25237153C(v173, v151, &qword_27F4DB208);
    v80 = v78(v79, 1, v77);
    v81 = v170;
    v82 = v162;
    if (v80 == 1)
    {
      sub_252372288(v79, &qword_27F4DB208);
      v83 = v175;
    }

    else
    {
      v83 = v175;
      v99 = v148;
      (*(v175 + 32))(v148, v79, v77);
      v100 = v166;
      sub_2525C3604(v171, v99, v166);
      v101 = v99;
      v81 = v170;
      (*(v83 + 8))(v101, v77);
      v73(v100, 0, 1, v74);
      sub_252377048(v100, v179, &qword_27F4E2B78);
    }

    v98 = v165;
  }

  else
  {
    v83 = v175;
    v84 = v154;
    (*(v175 + 32))(v154, v76, v77);
    v85 = sub_25268DA10();
    v86 = 1;
    v87 = v152;
    (*(*(v85 - 8) + 56))(v152, 1, 1, v85);
    v181 = 0;
    v88 = v166;
    sub_2525C1F10(v72, v84, v173, v87, &v181, v166);
    sub_252372288(v87, &qword_27F4DB290);
    v73(v88, 0, 1, v74);
    v89 = v88;
    v90 = v179;
    sub_252377048(v89, v179, &qword_27F4E2B78);
    v91 = (*(v176 + 48))(v90, 1, v74);
    v81 = v170;
    if (!v91)
    {
      v92 = v142;
      sub_2525ADAFC(v179, v142, type metadata accessor for Device.Control);
      v93 = v144;
      v94 = v143;
      v95 = v145;
      (*(v144 + 104))(v143, *MEMORY[0x277D15CE8], v145);
      sub_25259D114(v94, v153);
      v96 = v94;
      v81 = v170;
      (*(v93 + 8))(v96, v95);
      v84 = v154;
      sub_2525ADB64(v92, type metadata accessor for Device.Control);
      v86 = 0;
    }

    (*(v83 + 8))(v84, v77);
    v97 = v153;
    v73(v153, v86, 1, v74);
    sub_252377048(v97, v179, &qword_27F4E2B78);
    v98 = v165;
    v82 = v162;
    v78 = v172;
  }

  v73(v180, 1, 1, v74);
  sub_25237153C(v177, v82, &qword_27F4DB208);
  if (v78(v82, 1, v77) == 1)
  {
    sub_252372288(v82, &qword_27F4DB208);
    v102 = *(v176 + 48);
    v103 = v102(v179, 1, v74);
  }

  else
  {
    (*(v83 + 32))(v98, v82, v77);
    v104 = v166;
    sub_2525C3604(v171, v98, v166);
    v73(v104, 0, 1, v74);
    v105 = v176;
    v106 = v180;
    sub_252377048(v104, v180, &qword_27F4E2B78);
    v107 = v77;
    v102 = *(v105 + 48);
    if (v102(v106, 1, v74))
    {
      (*(v83 + 8))(v98, v107);
    }

    else
    {
      v108 = type metadata accessor for IconDescriptor();
      v109 = *(v108 + 20);
      v110 = *MEMORY[0x277D16578];
      v111 = sub_25268F910();
      v112 = *(*(v111 - 8) + 104);
      v113 = v146;
      v112(&v146[v109], v110, v111);
      *v113 = 0x6C632E776F727261;
      v113[1] = 0xEF657369776B636FLL;
      *(v113 + *(v108 + 24)) = 0;
      v172 = 0x80000002526B1BA0;
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
      v115 = v113 + *(v114 + 28);
      v112(&v115[*(v108 + 20)], v110, v111);
      *v115 = 0xD000000000000016;
      *(v115 + 1) = v172;
      v115[*(v108 + 24)] = 0;
      (*(*(v114 - 8) + 56))(v113, 0, 1, v114);
      v116 = v147;
      sub_25237153C(v113, v147, &qword_27F4DADB8);
      sub_252612854(v116);
      v81 = v170;
      v74 = v167;
      sub_252372288(v113, &qword_27F4DADB8);
      (*(v175 + 8))(v165, v178);
    }

    v103 = v102(v179, 1, v74);
  }

  v117 = v163;
  if (!v103)
  {
    *(v179 + *(v74 + 28)) = 0;
  }

  if (!v102(v180, 1, v74))
  {
    *(v180 + *(v74 + 28)) = 1;
  }

  if (!v102(v180, 1, v74))
  {
    *(v180 + *(v74 + 36)) = 0;
  }

  sub_25237153C(v180, v81, &qword_27F4E2B78);
  v118 = v102(v81, 1, v74);
  v119 = v164;
  if (v118 == 1)
  {
    v117 = v81;
  }

  else
  {
    sub_2525ADA94(v81, v164, type metadata accessor for Device.Control);
    sub_25237153C(v179, v117, &qword_27F4E2B78);
    if (v102(v117, 1, v74) != 1)
    {
      v128 = v149;
      sub_2525ADA94(v117, v149, type metadata accessor for Device.Control);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
      v129 = v119;
      v130 = (type metadata accessor for Device.ControlGroup(0) - 8);
      v131 = (*(*v130 + 80) + 32) & ~*(*v130 + 80);
      v121 = swift_allocObject();
      *(v121 + 16) = xmmword_252694E90;
      v132 = (v121 + v131);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8);
      v133 = *(v176 + 72);
      v134 = (*(v176 + 80) + 32) & ~*(v176 + 80);
      v135 = swift_allocObject();
      *(v135 + 16) = xmmword_252694EA0;
      v136 = v135 + v134;
      sub_2525ADAFC(v128, v136, type metadata accessor for Device.Control);
      sub_2525ADAFC(v129, v136 + v133, type metadata accessor for Device.Control);
      *v132 = v135;
      type metadata accessor for Device.ControlGroup.LayoutType(0);
      swift_storeEnumTagMultiPayload();
      v137 = (v132 + v130[7]);
      v138 = (v132 + v130[8]);
      *v137 = 0;
      v137[1] = 0;
      *v138 = 0;
      v138[1] = 0;
      sub_2525ADB64(v128, type metadata accessor for Device.Control);
      v127 = v129;
      goto LABEL_33;
    }

    sub_2525ADB64(v119, type metadata accessor for Device.Control);
  }

  sub_252372288(v117, &qword_27F4E2B78);
  v120 = v155;
  sub_25237153C(v179, v155, &qword_27F4E2B78);
  if (v102(v120, 1, v74) != 1)
  {
    v122 = v150;
    sub_2525ADA94(v120, v150, type metadata accessor for Device.Control);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
    v123 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v124 = (*(*v123 + 80) + 32) & ~*(*v123 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_252694E90;
    sub_2525ADAFC(v122, v121 + v124, type metadata accessor for Device.Control);
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v125 = (v121 + v124 + v123[7]);
    v126 = (v121 + v124 + v123[8]);
    *v125 = 0;
    v125[1] = 0;
    *v126 = 0;
    v126[1] = 0;
    v127 = v122;
LABEL_33:
    sub_2525ADB64(v127, type metadata accessor for Device.Control);
    goto LABEL_34;
  }

  sub_252372288(v120, &qword_27F4E2B78);
  v121 = MEMORY[0x277D84F90];
LABEL_34:
  v139 = v173;
  sub_252372288(v177, &qword_27F4DB208);
  sub_252372288(v174, &qword_27F4DB208);
  sub_252372288(v139, &qword_27F4DB208);
  sub_252372288(v180, &qword_27F4E2B78);
  sub_252372288(v179, &qword_27F4E2B78);
  return v121;
}

uint64_t sub_2525A8A3C(uint64_t a1)
{
  v179 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v1 - 8);
  v156 = &v145 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v155 = &v145 - v4;
  v5 = sub_25268EEA0();
  v161 = *(v5 - 8);
  v162 = v5;
  MEMORY[0x28223BE20](v5);
  v160 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v7 - 8);
  v158 = &v145 - v8;
  v9 = type metadata accessor for Device.Control(0);
  v10 = *(v9 - 8);
  v163 = v9;
  v164 = v10;
  MEMORY[0x28223BE20](v9);
  v159 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v168 = &v145 - v13;
  MEMORY[0x28223BE20](v14);
  v169 = &v145 - v15;
  v16 = type metadata accessor for HAPControlSolver.Source();
  v165 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v178 = &v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25268F4D0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v22 - 8);
  v157 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v166 = &v145 - v25;
  MEMORY[0x28223BE20](v26);
  v172 = &v145 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v145 - v29;
  v31 = sub_25268F9E0();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v167 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v171 = &v145 - v35;
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v145 - v38;
  v40 = *MEMORY[0x277D16330];
  v41 = v19 + 104;
  v176 = *(v19 + 104);
  v176(v21, v40, v18, v37);
  v170 = v16;
  v175 = *(v16 + 76);
  sub_25268FD80();
  v42 = v32;
  v43 = *(v19 + 8);
  v177 = v18;
  v43(v21, v18);
  v173 = *(v42 + 48);
  v174 = v42 + 48;
  if (v173(v30, 1, v31) == 1)
  {
    v44 = v30;
LABEL_3:
    sub_252372288(v44, &qword_27F4DB208);
    return MEMORY[0x277D84F90];
  }

  v45 = *(v42 + 32);
  v154 = v42 + 32;
  v153 = v45;
  v45(v39, v30, v31);
  v46 = v177;
  (v176)(v21, v40, v177);
  v47 = v42;
  v48 = sub_25268FE70();
  v43(v21, v46);
  if (v48 == 2)
  {
    (*(v47 + 8))(v39, v31);
    return MEMORY[0x277D84F90];
  }

  v50 = v21;
  v149 = v48;
  v152 = v39;
  v151 = v47;
  v51 = v177;
  (v176)(v21, *MEMORY[0x277D16260], v177);
  v52 = v179;
  v53 = v172;
  sub_25268FD80();
  v150 = v43;
  v43(v50, v51);
  if (v173(v53, 1, v31) == 1)
  {
    (*(v151 + 8))(v152, v31);
    v44 = v53;
    goto LABEL_3;
  }

  v54 = v52;
  v55 = v41;
  v56 = v171;
  v153(v171, v53, v31);
  v57 = sub_25268FDB0();
  if (v58)
  {
    v59 = *(v151 + 8);
    v59(v56, v31);
    v59(v152, v31);
    return MEMORY[0x277D84F90];
  }

  v147 = v55;
  v148 = v31;
  v60 = *(v54 + *(v170 + 68));
  v61 = *(v60 + 16);
  v146 = v50;
  v62 = v57;
  if (!v61)
  {
    v64 = MEMORY[0x277D84F90];
LABEL_29:
    v76 = v169;
    v77 = v179;
    v78 = v152;
    sub_25259D438(v56, v149 & 1, v62, v179, v152, v169);
    v79 = v146;
    v80 = v177;
    (v176)(v146, *MEMORY[0x277D16128], v177);
    v81 = v166;
    sub_25268FD80();
    v82 = v80;
    v83 = v81;
    v150(v79, v82);
    v84 = v148;
    if (v173(v81, 1, v148) == 1)
    {
      sub_252372288(v81, &qword_27F4DB208);
      if (v64[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
        v85 = (type metadata accessor for Device.ControlGroup(0) - 8);
        v86 = (*(*v85 + 80) + 32) & ~*(*v85 + 80);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_252694E90;
        v88 = v87 + v86;
        sub_2525ADAFC(v76, v88, type metadata accessor for Device.Control);
        type metadata accessor for Device.ControlGroup.LayoutType(0);
        swift_storeEnumTagMultiPayload();
        v89 = (v179 + *(v170 + 28));
        v91 = *v89;
        v90 = v89[1];
        v92 = (v88 + v85[7]);
        v93 = (v88 + v85[8]);
        *v92 = 0;
        v92[1] = 0;
        *v93 = v91;
        v93[1] = v90;
        v182 = v87;

        sub_2523C6584(v64);
        sub_2525ADB64(v76, type metadata accessor for Device.Control);
        v94 = *(v151 + 8);
        v95 = v148;
        v94(v171, v148);
        v94(v152, v95);
        return v182;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
      v135 = (type metadata accessor for Device.ControlGroup(0) - 8);
      v136 = (*(*v135 + 80) + 32) & ~*(*v135 + 80);
      v121 = swift_allocObject();
      *(v121 + 16) = xmmword_252694E90;
      v137 = v121 + v136;
      sub_2525ADAFC(v76, v137, type metadata accessor for Device.Control);
      type metadata accessor for Device.ControlGroup.LayoutType(0);
      swift_storeEnumTagMultiPayload();
      v138 = (v179 + *(v170 + 28));
      v140 = *v138;
      v139 = v138[1];
      v141 = (v137 + v135[7]);
      v142 = (v137 + v135[8]);
      *v141 = 0;
      v141[1] = 0;
      *v142 = v140;
      v142[1] = v139;

      sub_2525ADB64(v76, type metadata accessor for Device.Control);
      v143 = *(v151 + 8);
      v144 = v148;
      v143(v171, v148);
      v143(v152, v144);
      return v121;
    }

    v96 = v167;
    v153(v167, v83, v84);
    v97 = v151;
    v98 = v157;
    (*(v151 + 16))(v157, v78, v84);
    (*(v97 + 56))(v98, 0, 1, v84);
    v99 = sub_25268DA10();
    v100 = v158;
    (*(*(v99 - 8) + 56))(v158, 1, 1, v99);
    v181 = 0;
    v101 = v168;
    sub_2525C1F10(v77, v96, v98, v100, &v181, v168);
    sub_252372288(v100, &qword_27F4DB290);
    sub_252372288(v98, &qword_27F4DB208);
    v103 = v161;
    v102 = v162;
    v104 = v160;
    (*(v161 + 104))(v160, *MEMORY[0x277D15CE8], v162);
    v105 = v159;
    sub_25259D114(v104, v159);
    (*(v103 + 8))(v104, v102);
    sub_2525ADB64(v101, type metadata accessor for Device.Control);
    sub_2525ADA94(v105, v101, type metadata accessor for Device.Control);
    v106 = v163;
    v107 = *(v163 + 20);
    Device.Control.Kind.primitive.getter(&v180);
    if (v180 >= 2u || v180)
    {
      v108 = sub_2526933B0();

      if ((v108 & 1) == 0)
      {
LABEL_35:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
        v119 = (type metadata accessor for Device.ControlGroup(0) - 8);
        v120 = (*(*v119 + 80) + 32) & ~*(*v119 + 80);
        v121 = swift_allocObject();
        *(v121 + 16) = xmmword_252694E90;
        v122 = (v121 + v120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8);
        v123 = *(v164 + 72);
        v124 = (*(v164 + 80) + 32) & ~*(v164 + 80);
        v125 = swift_allocObject();
        *(v125 + 16) = xmmword_252694EA0;
        v126 = v125 + v124;
        v127 = v168;
        sub_2525ADAFC(v168, v126, type metadata accessor for Device.Control);
        sub_2525ADAFC(v76, v126 + v123, type metadata accessor for Device.Control);
        *v122 = v125;
        type metadata accessor for Device.ControlGroup.LayoutType(0);
        swift_storeEnumTagMultiPayload();
        v128 = (v179 + *(v170 + 28));
        v130 = *v128;
        v129 = v128[1];
        v131 = (v122 + v119[7]);
        v132 = (v122 + v119[8]);
        *v131 = 0;
        v131[1] = 0;
        *v132 = v130;
        v132[1] = v129;

        sub_2525ADB64(v127, type metadata accessor for Device.Control);
        v133 = *(v151 + 8);
        v134 = v148;
        v133(v167, v148);
        sub_2525ADB64(v76, type metadata accessor for Device.Control);
        v133(v171, v134);
        v133(v152, v134);
        return v121;
      }
    }

    else
    {
    }

    *(v76 + *(v106 + 36)) = 514;
    v109 = type metadata accessor for IconDescriptor();
    v110 = *(v109 + 20);
    v111 = *MEMORY[0x277D16578];
    v112 = sub_25268F910();
    v113 = *(*(v112 - 8) + 104);
    v178 = v107;
    v114 = v155;
    v113(&v155[v110], v111, v112);
    *v114 = 0x7265776F70;
    v114[1] = 0xE500000000000000;
    *(v114 + *(v109 + 24)) = 0;
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
    v116 = v114 + *(v115 + 28);
    v113(&v116[*(v109 + 20)], v111, v112);
    *v116 = 0x7265776F70;
    *(v116 + 1) = 0xE500000000000000;
    v117 = v169;
    v116[*(v109 + 24)] = 0;
    v76 = v117;
    (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
    v118 = v156;
    sub_25237153C(v114, v156, &qword_27F4DADB8);
    sub_252612854(v118);
    sub_252372288(v114, &qword_27F4DADB8);
    goto LABEL_35;
  }

  v63 = v60 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
  v172 = *(v165 + 72);
  v64 = MEMORY[0x277D84F90];
  while (1)
  {
    v65 = v178;
    sub_2525ADAFC(v63, v178, type metadata accessor for HAPControlSolver.Source);
    v66 = sub_2525A7608(v65);
    result = sub_2525ADB64(v65, type metadata accessor for HAPControlSolver.Source);
    v67 = *(v66 + 16);
    v68 = v64[2];
    v69 = v68 + v67;
    if (__OFADD__(v68, v67))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v69 <= v64[3] >> 1)
    {
      if (*(v66 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v68 <= v69)
      {
        v71 = v68 + v67;
      }

      else
      {
        v71 = v68;
      }

      v64 = sub_252369B0C(isUniquelyReferenced_nonNull_native, v71, 1, v64);
      if (*(v66 + 16))
      {
LABEL_24:
        v72 = (v64[3] >> 1) - v64[2];
        result = type metadata accessor for Device.ControlGroup(0);
        if (v72 < v67)
        {
          goto LABEL_43;
        }

        swift_arrayInitWithCopy();

        if (v67)
        {
          v73 = v64[2];
          v74 = __OFADD__(v73, v67);
          v75 = v73 + v67;
          if (v74)
          {
            goto LABEL_44;
          }

          v64[2] = v75;
        }

        goto LABEL_14;
      }
    }

    if (v67)
    {
      goto LABEL_42;
    }

LABEL_14:
    v63 += v172;
    if (!--v61)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_2525A9DCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3520);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v28 = type metadata accessor for Device.Control(0);
  v8 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25268F4D0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v27 - v16;
  (*(v11 + 104))(v13, *MEMORY[0x277D160B0], v10, v15);
  v18 = type metadata accessor for HAPControlSolver.Source();
  sub_25268FD80();
  (*(v11 + 8))(v13, v10);
  sub_2525ADAFC(a1, v4, type metadata accessor for HAPControlSolver.Source);
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  sub_2525C1B8C(v4, v17, v7);
  sub_252372288(v4, &qword_27F4E3520);
  if ((*(v8 + 48))(v7, 1, v28) == 1)
  {
    sub_252372288(v7, &qword_27F4E2B78);
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = v7;
    v21 = v27;
    sub_2525ADA94(v20, v27, type metadata accessor for Device.Control);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
    v22 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v23 = (*(*v22 + 80) + 32) & ~*(*v22 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_252694E90;
    sub_2525ADAFC(v21, v19 + v23, type metadata accessor for Device.Control);
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v24 = (v19 + v23 + v22[7]);
    v25 = (v19 + v23 + v22[8]);
    *v24 = 0;
    v24[1] = 0;
    *v25 = 0;
    v25[1] = 0;
    sub_2525ADB64(v21, type metadata accessor for Device.Control);
  }

  sub_252372288(v17, &qword_27F4DB208);
  return v19;
}

uint64_t sub_2525AA250(char *a1)
{
  v101 = sub_25268DA10();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v106 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v102);
  v103 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v4 - 8);
  v98 = &v87 - v5;
  v97 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v97);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25268F4D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v87 - v13;
  v15 = sub_25268F9E0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x277D162B0], v8, v17);
  v20 = type metadata accessor for HAPControlSolver.Source();
  v94 = *(v20 + 76);
  v105 = a1;
  sub_25268FD80();
  v21 = *(v9 + 8);
  v95 = v11;
  v99 = v8;
  v96 = v9 + 8;
  v21(v11, v8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_252372288(v14, &qword_27F4DB208);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v88 = v21;
    v104 = v7;
    v90 = v16;
    v23 = *(v16 + 32);
    v91 = v15;
    v23(v19, v14, v15);
    v93 = v19;
    v24 = sub_25259EB00(v19, sub_252624730, sub_252368CA0, &unk_286483F30, sub_25240C08C);
    v92 = v20;
    v25 = sub_25268E510();
    v26 = sub_252692C40();
    v28 = v27;
    v29 = sub_252692C40();
    v31 = v30;
    v32 = sub_252692C40();
    v34 = v33;
    v35 = sub_252692C40();
    v109[0] = 0;
    v109[1] = v26;
    v109[2] = v28;
    v109[3] = v25;
    v109[4] = 1;
    v109[5] = v29;
    v109[6] = v31;
    v109[7] = v25;
    v109[8] = 2;
    v109[9] = v32;
    v109[10] = v34;
    v109[11] = v25;
    v109[12] = 3;
    v109[13] = v35;
    v36 = v24 + 56;
    v109[14] = v37;
    v109[15] = 0;
    v89 = v25;
    result = swift_retain_n();
    v38 = 0;
    v39 = MEMORY[0x277D84F90];
    do
    {
      if (v38 <= 4)
      {
        v40 = 4;
      }

      else
      {
        v40 = v38;
      }

      while (1)
      {
        if (v38 == v40)
        {
          __break(1u);
          return result;
        }

        v41 = v38++;
        if (*(v24 + 16))
        {
          v42 = &v109[4 * v41];
          v107 = *v42;
          v43 = v42[2];
          v44 = v42[3];
          sub_252693460();
          v45 = v107;
          MEMORY[0x2530A4FE0](v107);
          result = sub_2526934C0();
          v46 = -1 << *(v24 + 32);
          v47 = result & ~v46;
          if ((*(v36 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
          {
            break;
          }
        }

LABEL_7:
        if (v38 == 4)
        {
          goto LABEL_20;
        }
      }

      v48 = ~v46;
      while (*(*(v24 + 48) + 8 * v47) != v45)
      {
        v47 = (v47 + 1) & v48;
        if (((*(v36 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v108 = v39;
      if ((result & 1) == 0)
      {
        result = sub_25236FF90(0, *(v39 + 16) + 1, 1);
        v39 = v108;
      }

      v50 = *(v39 + 16);
      v49 = *(v39 + 24);
      if (v50 >= v49 >> 1)
      {
        result = sub_25236FF90((v49 > 1), v50 + 1, 1);
        v39 = v108;
      }

      *(v39 + 16) = v50 + 1;
      v51 = v39 + 32 * v50;
      *(v51 + 32) = v107;
      *(v51 + 48) = v43;
      *(v51 + 56) = v44;
    }

    while (v38 != 4);
LABEL_20:

    swift_arrayDestroy();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
    v53 = *(*(v52 - 8) + 56);
    v54 = v98;
    v53(v98, 1, 1, v52);
    v55 = sub_2526922F0();
    v56 = sub_252692330();
    v57 = v97;
    type metadata accessor for AccessoryControl.StatusProvider();
    v58 = v104;
    swift_storeEnumTagMultiPayload();
    v59 = v57[6];
    v53(v58 + v59, 1, 1, v52);
    v60 = v58 + v57[11];
    *v58 = v39;
    v61 = 1;
    *(v58 + 8) = 1;
    *(v58 + v57[8]) = v55;
    *(v58 + v57[9]) = v56;
    sub_252377048(v54, v58 + v59, &qword_27F4DADB8);
    *v60 = 0;
    *(v60 + 8) = 1;
    *(v58 + v57[7]) = 0;
    sub_25268F9B0();
    v62 = v95;
    sub_25268F9A0();
    v63 = v105;
    v64 = sub_25268FE60();
    LOBYTE(v60) = v65;
    v88(v62, v99);
    if ((v60 & 1) != 0 || v63[*(v92 + 40)] != 1)
    {
      v64 = 0;
    }

    else
    {
      v61 = 0;
    }

    v66 = v100;
    v99 = *(v100 + 16);
    v67 = v103;
    v68 = v101;
    v99(v103, v106, v101);
    v69 = v102;
    v70 = v67 + *(v102 + 20);
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0) + 48);
    *v70 = v64;
    *(v70 + 8) = v61;
    sub_2525ADAFC(v104, v70 + v71, type metadata accessor for AccessoryControl.PickerViewConfig);
    type metadata accessor for Device.Control.Kind(0);
    swift_storeEnumTagMultiPayload();
    v72 = v67 + v69[6];
    v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3088) + 48);
    sub_25268F9A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v73 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v74 = swift_allocObject();
    v107 = xmmword_252694E90;
    *(v74 + 16) = xmmword_252694E90;
    v99((v74 + v73), v63, v68);
    v75 = sub_25240C1FC(v74);
    swift_setDeallocating();
    v76 = *(v66 + 8);
    v76(v74 + v73, v68);
    swift_deallocClassInstance();
    v76(v106, v68);
    *(v72 + v98) = v75;
    type metadata accessor for Device.Control.Source(0);
    swift_storeEnumTagMultiPayload();
    v77 = &v63[*(v92 + 56)];
    v78 = *v77;
    v79 = v77[1];
    v80 = (v67 + v69[8]);
    v81 = v69[10];
    *(v67 + v81) = 16;
    *(v67 + v69[7]) = 0;
    *v80 = v78;
    v80[1] = v79;
    *(v67 + v69[9]) = 1028;
    *(v67 + v81) = 16;
    *(v67 + v69[11]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
    v82 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v83 = (*(*v82 + 80) + 32) & ~*(*v82 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v107;
    sub_2525ADAFC(v67, v84 + v83, type metadata accessor for Device.Control);
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v85 = (v84 + v83 + v82[7]);
    v86 = (v84 + v83 + v82[8]);
    *v85 = 0;
    v85[1] = 0;
    *v86 = 0;
    v86[1] = 0;

    (*(v90 + 8))(v93, v91);
    sub_2525ADB64(v67, type metadata accessor for Device.Control);
    sub_2525ADB64(v104, type metadata accessor for AccessoryControl.PickerViewConfig);
    return v84;
  }
}

uint64_t sub_2525AAE48(uint64_t a1, unsigned int *a2)
{
  v4 = sub_25268F4D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_25268F9E0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *a2, v4, v13);
  type metadata accessor for HAPControlSolver.Source();
  sub_25268FD80();
  (*(v5 + 8))(v7, v4);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_252372288(v10, &qword_27F4DB208);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
    v17 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v18 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_252694E90;
    v20 = v19 + v18;
    sub_2525C3604(a1, v15, v20);
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v21 = (v20 + v17[7]);
    v22 = (v20 + v17[8]);
    *v21 = 0;
    v21[1] = 0;
    *v22 = 0;
    v22[1] = 0;
    (*(v12 + 8))(v15, v11);
    return v19;
  }
}

uint64_t sub_2525AB178(uint64_t a1)
{
  v2 = type metadata accessor for Device.Control(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF18);
  v9 = type metadata accessor for HAPControlSolver.Source();
  v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v11 = swift_allocObject();
  v23 = xmmword_252694E90;
  *(v11 + 16) = xmmword_252694E90;
  sub_2525ADAFC(a1, v11 + v10, type metadata accessor for HAPControlSolver.Source);
  v24 = 5;
  v12 = sub_2525A55D8(v11, &v24);
  swift_setDeallocating();
  sub_2525ADB64(v11 + v10, type metadata accessor for HAPControlSolver.Source);
  swift_deallocClassInstance();
  if (v12[2])
  {
    sub_2525ADAFC(v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v5, type metadata accessor for Device.Control);

    sub_2525ADA94(v5, v8, type metadata accessor for Device.Control);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
    v13 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v23;
    v16 = v15 + v14;
    sub_2525ADAFC(v8, v16, type metadata accessor for Device.Control);
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v17 = (a1 + *(v9 + 28));
    v19 = *v17;
    v18 = v17[1];
    v20 = (v16 + v13[7]);
    v21 = (v16 + v13[8]);
    *v20 = 0;
    v20[1] = 0;
    *v21 = v19;
    v21[1] = v18;

    sub_2525ADB64(v8, type metadata accessor for Device.Control);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v15;
}

uint64_t sub_2525AB4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTextModifier.Config(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2525AB520(uint64_t a1)
{
  v82 = a1;
  v1 = sub_25268EEA0();
  v72 = *(v1 - 8);
  v73 = v1;
  MEMORY[0x28223BE20](v1);
  v71 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25268F9E0();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v66 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78);
  MEMORY[0x28223BE20](v7 - 8);
  v81 = &v66 - v8;
  v9 = type metadata accessor for Device.Control(0);
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x28223BE20](v9);
  v69 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = &v66 - v12;
  v13 = sub_25268F4D0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v17 - 8);
  v68 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v75 = &v66 - v20;
  MEMORY[0x28223BE20](v21);
  v83 = &v66 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3520);
  MEMORY[0x28223BE20](v23 - 8);
  v74 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v66 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v66 - v29;
  v31 = type metadata accessor for HAPControlSolver.Source();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v67 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v66 - v35;
  sub_25237153C(v82, v30, &qword_27F4E3520);
  v37 = *(v32 + 48);
  if (v37(v30, 1, v31) == 1)
  {
    sub_252372288(v30, &qword_27F4E3520);
    return MEMORY[0x277D84F90];
  }

  sub_2525ADA94(v30, v36, type metadata accessor for HAPControlSolver.Source);
  (*(v14 + 104))(v16, *MEMORY[0x277D16180], v13);
  sub_25268FD80();
  (*(v14 + 8))(v16, v13);
  sub_2525ADAFC(v36, v27, type metadata accessor for HAPControlSolver.Source);
  (*(v32 + 56))(v27, 0, 1, v31);
  v39 = v77;
  v38 = v78;
  v40 = v75;
  (*(v77 + 56))(v75, 1, 1, v78);
  v41 = sub_25268DA10();
  v42 = v76;
  (*(*(v41 - 8) + 56))(v76, 1, 1, v41);
  v43 = v74;
  sub_25237153C(v27, v74, &qword_27F4E3520);
  if (v37(v43, 1, v31) == 1)
  {
    sub_252372288(v42, &qword_27F4DB290);
    sub_252372288(v40, &qword_27F4DB208);
    sub_252372288(v27, &qword_27F4E3520);
    sub_252372288(v43, &qword_27F4E3520);
    v44 = 1;
    v45 = v83;
LABEL_7:
    v49 = v81;
    goto LABEL_9;
  }

  v46 = v27;
  v47 = v67;
  sub_2525ADA94(v43, v67, type metadata accessor for HAPControlSolver.Source);
  v45 = v83;
  v48 = v68;
  sub_25237153C(v83, v68, &qword_27F4DB208);
  if ((*(v39 + 48))(v48, 1, v38) == 1)
  {
    sub_2525ADB64(v47, type metadata accessor for HAPControlSolver.Source);
    sub_252372288(v42, &qword_27F4DB290);
    sub_252372288(v40, &qword_27F4DB208);
    sub_252372288(v46, &qword_27F4E3520);
    sub_252372288(v48, &qword_27F4DB208);
    v44 = 1;
    goto LABEL_7;
  }

  v50 = v66;
  (*(v39 + 32))(v66, v48, v38);
  v84[0] = 0;
  v51 = v47;
  v49 = v81;
  sub_2525C1F10(v51, v50, v40, v42, v84, v81);
  (*(v39 + 8))(v50, v38);
  sub_2525ADB64(v51, type metadata accessor for HAPControlSolver.Source);
  sub_252372288(v42, &qword_27F4DB290);
  sub_252372288(v40, &qword_27F4DB208);
  sub_252372288(v46, &qword_27F4E3520);
  v44 = 0;
LABEL_9:
  v53 = v79;
  v52 = v80;
  (*(v79 + 56))(v49, v44, 1, v80);
  if ((*(v53 + 48))(v49, 1, v52) == 1)
  {
    sub_252372288(v49, &qword_27F4E2B78);
    sub_252372288(v45, &qword_27F4DB208);
    sub_2525ADB64(v36, type metadata accessor for HAPControlSolver.Source);
    return MEMORY[0x277D84F90];
  }

  v55 = v70;
  sub_2525ADA94(v49, v70, type metadata accessor for Device.Control);
  v57 = v71;
  v56 = v72;
  v58 = v73;
  (*(v72 + 104))(v71, *MEMORY[0x277D15CE8], v73);
  v59 = v69;
  sub_25259D114(v57, v69);
  (*(v56 + 8))(v57, v58);
  sub_2525ADB64(v55, type metadata accessor for Device.Control);
  sub_2525ADA94(v59, v55, type metadata accessor for Device.Control);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
  v60 = (type metadata accessor for Device.ControlGroup(0) - 8);
  v61 = (*(*v60 + 80) + 32) & ~*(*v60 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_252694E90;
  v63 = v62 + v61;
  sub_2525ADAFC(v55, v63, type metadata accessor for Device.Control);
  type metadata accessor for Device.ControlGroup.LayoutType(0);
  swift_storeEnumTagMultiPayload();
  v64 = (v63 + v60[7]);
  v65 = (v63 + v60[8]);
  *v64 = 0;
  v64[1] = 0;
  *v65 = 0;
  v65[1] = 0;
  sub_2525ADB64(v55, type metadata accessor for Device.Control);
  sub_252372288(v45, &qword_27F4DB208);
  sub_2525ADB64(v36, type metadata accessor for HAPControlSolver.Source);
  return v62;
}

uint64_t sub_2525AC048(uint64_t a1)
{
  v2 = sub_25268E530();
  v65 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v71 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HAPControlSolver.Source();
  v70 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3520);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v52 - v12;
  v14 = type metadata accessor for Device.Control(0);
  v68 = *(v14 - 8);
  v69 = v14;
  MEMORY[0x28223BE20](v14);
  v67 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25268F4D0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v52 - v22;
  (*(v17 + 104))(v19, *MEMORY[0x277D16330], v16, v21);
  sub_25268FD80();
  (*(v17 + 8))(v19, v16);
  sub_2525ADAFC(a1, v10, type metadata accessor for HAPControlSolver.Source);
  v24 = v70 + 56;
  v25 = *(v70 + 56);
  v25(v10, 0, 1, v4);
  sub_2525C1B8C(v10, v23, v13);
  sub_252372288(v10, &qword_27F4E3520);
  if ((*(v68 + 48))(v13, 1, v69) == 1)
  {
    sub_252372288(v13, &qword_27F4E2B78);
    sub_252372288(v23, &qword_27F4DB208);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v55 = v23;
    v62 = v25;
    v63 = v24;
    v27 = v67;
    sub_2525ADA94(v13, v67, type metadata accessor for Device.Control);
    v28 = *(a1 + *(v4 + 68));
    LOWORD(v75[0]) = 256;
    v29 = sub_2525A55D8(v28, v75);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
    v31 = type metadata accessor for Device.ControlGroup(0);
    v32 = *(v31 - 8);
    v33 = *(v32 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v58 = *(v32 + 80);
    v59 = v33;
    v61 = v30;
    v35 = swift_allocObject();
    v56 = xmmword_252694E90;
    *(v35 + 16) = xmmword_252694E90;
    v60 = v34;
    *(v35 + v34) = v29;
    v36 = 1;
    v57 = type metadata accessor for Device.ControlGroup.LayoutType(0);
    result = swift_storeEnumTagMultiPayload();
    v37 = (v35 + v34 + *(v31 + 20));
    v38 = (v35 + v34 + *(v31 + 24));
    *v37 = 0;
    v37[1] = 0;
    *v38 = 0;
    v38[1] = 0;
    v68 = *(v28 + 16);
    if (v68)
    {
      v53 = v35;
      v54 = v31;
      v39 = 0;
      LODWORD(v69) = *MEMORY[0x277D15698];
      v40 = v64;
      v41 = (v65 + 104);
      v42 = (v65 + 8);
      while (v39 < *(v28 + 16))
      {
        sub_2525ADAFC(v28 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v39, v40, type metadata accessor for HAPControlSolver.Source);
        (*v41)(v71, v69, v2);
        sub_2525A3E9C(&qword_27F4DADD8, MEMORY[0x277D158E0]);
        sub_252692D40();
        sub_252692D40();
        if (v75[0] == v73 && v75[1] == v74)
        {
          (*v42)(v71, v2);

LABEL_13:
          v44 = v66;
          sub_2525ADA94(v40, v66, type metadata accessor for HAPControlSolver.Source);
          v36 = 0;
LABEL_14:
          v27 = v67;
          v45 = v55;
          v31 = v54;
          v35 = v53;
          goto LABEL_15;
        }

        v43 = sub_2526933B0();
        (*v42)(v71, v2);

        if (v43)
        {
          goto LABEL_13;
        }

        ++v39;
        result = sub_2525ADB64(v40, type metadata accessor for HAPControlSolver.Source);
        if (v68 == v39)
        {
          v36 = 1;
          v44 = v66;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
      v44 = v66;
      v45 = v55;
LABEL_15:
      v62(v44, v36, 1, v4);
      v46 = sub_2525AB520(v44);
      v47 = v60;
      v48 = swift_allocObject();
      *(v48 + 16) = v56;
      v49 = v48 + v47;
      sub_2525ADAFC(v27, v49, type metadata accessor for Device.Control);
      swift_storeEnumTagMultiPayload();
      v50 = (v49 + *(v31 + 20));
      v51 = (v49 + *(v31 + 24));
      *v50 = 0;
      v50[1] = 0;
      *v51 = 0;
      v51[1] = 0;
      v72 = v48;
      sub_2523C6584(v46);
      sub_2523C6584(v35);
      sub_252372288(v44, &qword_27F4E3520);
      sub_2525ADB64(v27, type metadata accessor for Device.Control);
      sub_252372288(v45, &qword_27F4DB208);
      return v72;
    }
  }

  return result;
}

uint64_t sub_2525AC8FC(uint64_t a1)
{
  v161 = type metadata accessor for Device.Control(0);
  v152 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v131 = &v130 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v140 = &v130 - v4;
  MEMORY[0x28223BE20](v5);
  v141 = &v130 - v6;
  v138 = sub_25268EEA0();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_25268F9E0();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v130 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for HAPControlSolver.Source();
  v145 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v133 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v10 - 8);
  v144 = &v130 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3520);
  MEMORY[0x28223BE20](v12 - 8);
  v148 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v143 = &v130 - v15;
  MEMORY[0x28223BE20](v16);
  v142 = &v130 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78);
  MEMORY[0x28223BE20](v18 - 8);
  v150 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v139 = &v130 - v21;
  MEMORY[0x28223BE20](v22);
  v149 = &v130 - v23;
  MEMORY[0x28223BE20](v24);
  v151 = &v130 - v25;
  MEMORY[0x28223BE20](v26);
  v147 = &v130 - v27;
  MEMORY[0x28223BE20](v28);
  v153 = &v130 - v29;
  MEMORY[0x28223BE20](v30);
  v159 = &v130 - v31;
  MEMORY[0x28223BE20](v32);
  v146 = (&v130 - v33);
  MEMORY[0x28223BE20](v34);
  v158 = &v130 - v35;
  MEMORY[0x28223BE20](v36);
  v157 = &v130 - v37;
  v38 = sub_25268F4D0();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v130 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v42 - 8);
  v132 = &v130 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v130 - v45;
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v130 - v49;
  v51 = *(v39 + 104);
  v51(v41, *MEMORY[0x277D160A8], v38, v48);
  v154 = v50;
  sub_25268FD80();
  v52 = *(v39 + 8);
  v52(v41, v38);
  (v51)(v41, *MEMORY[0x277D160B0], v38);
  v156 = v46;
  v53 = v144;
  sub_25268FD80();
  v52(v41, v38);
  v55 = v142;
  v54 = v143;
  v56 = v160;
  sub_2525C15D4(a1, v157);
  v155 = a1;
  sub_2525ADAFC(a1, v55, type metadata accessor for HAPControlSolver.Source);
  v57 = v145;
  v58 = *(v145 + 56);
  v58(v55, 0, 1, v56);
  v59 = sub_25268DA10();
  (*(*(v59 - 8) + 56))(v53, 1, 1, v59);
  sub_25237153C(v55, v54, &qword_27F4E3520);
  if ((*(v57 + 48))(v54, 1, v56) == 1)
  {
    sub_252372288(v53, &qword_27F4DB290);
    sub_252372288(v55, &qword_27F4E3520);
    v60 = v54;
    v61 = &qword_27F4E3520;
LABEL_5:
    sub_252372288(v60, v61);
    v67 = 1;
    v68 = v158;
    v69 = v159;
    v70 = v146;
    goto LABEL_7;
  }

  v62 = v54;
  v63 = v133;
  sub_2525ADA94(v62, v133, type metadata accessor for HAPControlSolver.Source);
  v64 = v132;
  sub_25237153C(v154, v132, &qword_27F4DB208);
  v65 = v134;
  v66 = v135;
  if ((*(v134 + 48))(v64, 1, v135) == 1)
  {
    sub_2525ADB64(v63, type metadata accessor for HAPControlSolver.Source);
    sub_252372288(v53, &qword_27F4DB290);
    sub_252372288(v55, &qword_27F4E3520);
    v61 = &qword_27F4DB208;
    v60 = v64;
    goto LABEL_5;
  }

  v71 = v130;
  (*(v65 + 32))(v130, v64, v66);
  v162 = 0;
  v70 = v146;
  sub_2525C1F10(v63, v71, v156, v53, &v162, v146);
  (*(v65 + 8))(v71, v66);
  sub_2525ADB64(v63, type metadata accessor for HAPControlSolver.Source);
  sub_252372288(v53, &qword_27F4DB290);
  sub_252372288(v55, &qword_27F4E3520);
  v67 = 0;
  v68 = v158;
  v69 = v159;
LABEL_7:
  v72 = v152;
  v73 = *(v152 + 56);
  v74 = v161;
  (v73)(v70, v67, 1, v161);
  v75 = *(v72 + 48);
  if (v75(v70, 1, v74) == 1)
  {
    sub_252372288(v70, &qword_27F4E2B78);
    v76 = 1;
  }

  else
  {
    v77 = *MEMORY[0x277D15CE8];
    v78 = v58;
    v79 = v137;
    v80 = *(v137 + 104);
    v146 = v73;
    v81 = v70;
    v82 = v136;
    v83 = v138;
    v80(v136, v77, v138);
    sub_25259D114(v82, v68);
    v68 = v158;
    (*(v79 + 8))(v82, v83);
    v58 = v78;
    v69 = v159;
    v84 = v81;
    v73 = v146;
    sub_2525ADB64(v84, type metadata accessor for Device.Control);
    v76 = 0;
  }

  v85 = v161;
  (v73)(v68, v76, 1, v161);
  v86 = v148;
  sub_2525ADAFC(v155, v148, type metadata accessor for HAPControlSolver.Source);
  v58(v86, 0, 1, v160);
  sub_2525C1B8C(v86, v156, v69);
  sub_252372288(v86, &qword_27F4E3520);
  v87 = v68;
  v88 = v73;
  v89 = v85;
  v90 = v147;
  sub_25237153C(v87, v147, &qword_27F4E2B78);
  if (v75(v90, 1, v89) == 1)
  {
    v91 = v153;
    sub_25237153C(v69, v153, &qword_27F4E2B78);
    v92 = v75(v90, 1, v89);
    v93 = v150;
    v94 = v151;
    v95 = v154;
    if (v92 != 1)
    {
      sub_252372288(v90, &qword_27F4E2B78);
    }
  }

  else
  {
    v91 = v153;
    sub_2525ADA94(v90, v153, type metadata accessor for Device.Control);
    v88(v91, 0, 1, v89);
    v93 = v150;
    v94 = v151;
    v95 = v154;
  }

  v96 = v157;
  sub_25237153C(v157, v94, &qword_27F4E2B78);
  if (!v75(v91, 1, v89))
  {
    *(v91 + *(v89 + 28)) = 0;
  }

  if (!v75(v94, 1, v89))
  {
    *(v94 + *(v89 + 28)) = 1;
  }

  v97 = v149;
  sub_25237153C(v91, v149, &qword_27F4E2B78);
  if (v75(v97, 1, v89) == 1)
  {
    v98 = v97;
  }

  else
  {
    v99 = v97;
    v100 = v141;
    sub_2525ADA94(v99, v141, type metadata accessor for Device.Control);
    v101 = v139;
    sub_25237153C(v94, v139, &qword_27F4E2B78);
    if (v75(v101, 1, v89) != 1)
    {
      sub_2525ADA94(v101, v140, type metadata accessor for Device.Control);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
      v113 = v95;
      v114 = v100;
      v115 = (type metadata accessor for Device.ControlGroup(0) - 8);
      v116 = (*(*v115 + 80) + 32) & ~*(*v115 + 80);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_252694E90;
      v117 = (v102 + v116);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8);
      v118 = *(v152 + 72);
      v119 = (*(v152 + 80) + 32) & ~*(v152 + 80);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_252694EA0;
      v121 = v120 + v119;
      sub_2525ADAFC(v114, v121, type metadata accessor for Device.Control);
      v122 = v121 + v118;
      v96 = v157;
      v123 = v140;
      v91 = v153;
      sub_2525ADAFC(v140, v122, type metadata accessor for Device.Control);
      *v117 = v120;
      type metadata accessor for Device.ControlGroup.LayoutType(0);
      swift_storeEnumTagMultiPayload();
      v124 = (v155 + *(v160 + 28));
      v126 = *v124;
      v125 = v124[1];
      v127 = (v117 + v115[7]);
      v128 = (v117 + v115[8]);
      *v127 = 0;
      v127[1] = 0;
      *v128 = v126;
      v128[1] = v125;

      sub_2525ADB64(v123, type metadata accessor for Device.Control);
      v112 = v114;
      v95 = v113;
      goto LABEL_26;
    }

    sub_2525ADB64(v100, type metadata accessor for Device.Control);
    v98 = v101;
  }

  sub_252372288(v98, &qword_27F4E2B78);
  sub_25237153C(v91, v93, &qword_27F4E2B78);
  if (v75(v93, 1, v161) != 1)
  {
    v103 = v131;
    sub_2525ADA94(v93, v131, type metadata accessor for Device.Control);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
    v104 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v105 = (*(*v104 + 80) + 32) & ~*(*v104 + 80);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_252694E90;
    v106 = v102 + v105;
    sub_2525ADAFC(v103, v106, type metadata accessor for Device.Control);
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v107 = (v155 + *(v160 + 28));
    v109 = *v107;
    v108 = v107[1];
    v110 = (v106 + v104[7]);
    v111 = (v106 + v104[8]);
    *v110 = 0;
    v110[1] = 0;
    *v111 = v109;
    v111[1] = v108;

    v112 = v103;
LABEL_26:
    sub_2525ADB64(v112, type metadata accessor for Device.Control);
    goto LABEL_27;
  }

  sub_252372288(v93, &qword_27F4E2B78);
  v102 = MEMORY[0x277D84F90];
LABEL_27:
  sub_252372288(v159, &qword_27F4E2B78);
  sub_252372288(v158, &qword_27F4E2B78);
  sub_252372288(v96, &qword_27F4E2B78);
  sub_252372288(v156, &qword_27F4DB208);
  sub_252372288(v95, &qword_27F4DB208);
  sub_252372288(v94, &qword_27F4E2B78);
  sub_252372288(v91, &qword_27F4E2B78);
  return v102;
}

uint64_t sub_2525ADA94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525ADAFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525ADB64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t AccessoryControl.ThermostatState.Mode.init(heatingCoolingState:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3 - result;
  if (result >= 3)
  {
    v2 = 4;
  }

  *a2 = v2;
  return result;
}

BOOL AccessoryControl.ThermostatState.Mode.targetHeaterCoolerState.getter()
{
  v1 = 2;
  if (!*v0)
  {
    v1 = 0;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return *v0 == 2;
  }
}

unint64_t AccessoryControl.ThermostatState.Mode.init(heatingCoolingMode:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x3010200u >> (8 * result);
  if (result >= 4)
  {
    LOBYTE(v2) = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2525ADC80@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB280);
  MEMORY[0x28223BE20](v3 - 8);
  v102 = v87 - v4;
  v104 = sub_25268F4D0();
  v5 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v7 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v8 - 8);
  v98 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v87 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v87 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v87 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230);
  MEMORY[0x28223BE20](v19 - 8);
  v99 = v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v101 = v87 - v22;
  MEMORY[0x28223BE20](v23);
  v103 = v87 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = v87 - v26;
  v28 = sub_252690030();
  v107 = *(v28 - 8);
  v108 = v28;
  MEMORY[0x28223BE20](v28);
  v97 = v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v100 = v87 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = v87 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = v87 - v36;
  type metadata accessor for HAPControlSolver.Source();
  v106 = a1;
  v38 = sub_25268FDD0();
  if ((v39 & 1) != 0 || v38 != 2)
  {
    v44 = sub_25268FDD0();
    if ((v45 & 1) == 0 && v44 == 1)
    {
      v46 = v104;
      (*(v5 + 104))(v7, *MEMORY[0x277D16180], v104);
      sub_25268FD80();
      (*(v5 + 8))(v7, v46);
      v47 = sub_25268F9E0();
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(v15, 1, v47) == 1)
      {
        sub_252372288(v15, &qword_27F4DB208);
        v49 = sub_252690050();
        v27 = v103;
        (*(*(v49 - 8) + 56))(v103, 1, 1, v49);
        goto LABEL_9;
      }

      v27 = v103;
      sub_25268F9D0();
      (*(v48 + 8))(v15, v47);
      v63 = sub_252690050();
      v64 = *(v63 - 8);
      v71 = (*(v64 + 48))(v27, 1, v63);
      v50 = v105;
      v52 = v107;
      v51 = v108;
      if (v71 == 1)
      {
        goto LABEL_19;
      }

      if ((*(v64 + 88))(v27, v63) == *MEMORY[0x277D16CD0])
      {
        (*(v64 + 96))(v27, v63);
        v66 = *(v52 + 32);
        v66(v34, v27, v51);
        v67 = v50;
        v68 = v34;
        goto LABEL_28;
      }

LABEL_30:
      (*(v64 + 8))(v27, v63);
      goto LABEL_21;
    }

    v53 = sub_25268FDD0();
    if ((v54 & 1) != 0 || v53)
    {
      v69 = sub_252690040();
      (*(*(v69 - 8) + 56))(v102, 1, 1, v69);
      v50 = v105;
      sub_25268FFE0();
      v70 = 0;
LABEL_25:
      v52 = v107;
      v51 = v108;
      return (*(v52 + 56))(v50, v70, 1, v51);
    }

    v55 = *MEMORY[0x277D16170];
    v56 = v104;
    v103 = *(v5 + 104);
    (v103)(v7, v55, v104);
    sub_25268FD80();
    v57 = *(v5 + 8);
    v57(v7, v56);
    v58 = sub_25268F9E0();
    v59 = *(v58 - 8);
    v60 = *(v59 + 48);
    if (v60(v12, 1, v58) == 1)
    {
      sub_252372288(v12, &qword_27F4DB208);
      v61 = sub_252690050();
      v62 = v101;
      (*(*(v61 - 8) + 56))(v101, 1, 1, v61);
    }

    else
    {
      v94 = v60;
      v95 = v57;
      v73 = v101;
      sub_25268F9D0();
      v62 = v73;
      v93 = *(v59 + 8);
      v93(v12, v58);
      v74 = sub_252690050();
      v96 = *(v74 - 8);
      v92 = *(v96 + 48);
      if (v92(v62, 1, v74) != 1)
      {
        v76 = *(v96 + 88);
        v90 = v96 + 88;
        v89 = v76;
        v77 = v76(v62, v74);
        if (v77 == *MEMORY[0x277D16CD0])
        {
          v88 = v77;
          v78 = *(v96 + 96);
          v91 = v74;
          v87[1] = v96 + 96;
          v87[0] = v78;
          v78(v62, v74);
          v101 = *(v107 + 32);
          (v101)(v100, v62, v108);
          (v103)(v7, *MEMORY[0x277D16180], v104);
          v79 = v98;
          sub_25268FD80();
          v95(v7, v104);
          if (v94(v79, 1, v58) == 1)
          {
            v52 = v107;
            v51 = v108;
            (*(v107 + 8))(v100, v108);
            sub_252372288(v79, &qword_27F4DB208);
            v80 = v99;
            (*(v96 + 56))(v99, 1, 1, v91);
            v50 = v105;
          }

          else
          {
            v81 = v96;
            v80 = v99;
            sub_25268F9D0();
            v93(v79, v58);
            v82 = v92(v80, 1, v91);
            v50 = v105;
            if (v82 != 1)
            {
              v83 = v89(v80, v91);
              v52 = v107;
              v51 = v108;
              v84 = v100;
              if (v83 == v88)
              {
                (v87[0])(v80, v91);
                v85 = v97;
                (v101)(v97, v80, v51);
                sub_25268FFF0();
                sub_25268FFF0();
                sub_252690000();
                sub_252690000();
                sub_252690020();
                sub_252690020();
                sub_252690010();
                sub_25268FFE0();
                v86 = *(v52 + 8);
                v86(v85, v51);
                v86(v84, v51);
                v70 = 0;
                return (*(v52 + 56))(v50, v70, 1, v51);
              }

              (*(v107 + 8))(v100, v108);
              (*(v81 + 8))(v80, v91);
              goto LABEL_21;
            }

            v52 = v107;
            v51 = v108;
            (*(v107 + 8))(v100, v108);
          }

          v72 = v80;
          goto LABEL_20;
        }

        (*(v96 + 8))(v62, v74);
        goto LABEL_24;
      }
    }

    sub_252372288(v62, &qword_27F4DB230);
LABEL_24:
    v70 = 1;
    v50 = v105;
    goto LABEL_25;
  }

  v40 = v104;
  (*(v5 + 104))(v7, *MEMORY[0x277D16170], v104);
  sub_25268FD80();
  (*(v5 + 8))(v7, v40);
  v41 = sub_25268F9E0();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v18, 1, v41) != 1)
  {
    sub_25268F9D0();
    (*(v42 + 8))(v18, v41);
    v63 = sub_252690050();
    v64 = *(v63 - 8);
    v65 = (*(v64 + 48))(v27, 1, v63);
    v50 = v105;
    v52 = v107;
    v51 = v108;
    if (v65 == 1)
    {
      goto LABEL_19;
    }

    if ((*(v64 + 88))(v27, v63) == *MEMORY[0x277D16CD0])
    {
      (*(v64 + 96))(v27, v63);
      v66 = *(v52 + 32);
      v66(v37, v27, v51);
      v67 = v50;
      v68 = v37;
LABEL_28:
      v66(v67, v68, v51);
      v70 = 0;
      return (*(v52 + 56))(v50, v70, 1, v51);
    }

    goto LABEL_30;
  }

  sub_252372288(v18, &qword_27F4DB208);
  v43 = sub_252690050();
  (*(*(v43 - 8) + 56))(v27, 1, 1, v43);
LABEL_9:
  v50 = v105;
  v52 = v107;
  v51 = v108;
LABEL_19:
  v72 = v27;
LABEL_20:
  sub_252372288(v72, &qword_27F4DB230);
LABEL_21:
  v70 = 1;
  return (*(v52 + 56))(v50, v70, 1, v51);
}

void *sub_2525AEA90(uint64_t a1)
{
  v205 = a1;
  v187 = type metadata accessor for Device.ControlGroup(0);
  v190 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v188 = &v155 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v189 = &v155 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v4 - 8);
  v180 = &v155 - v5;
  v179 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v179);
  v196 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25268F4D0();
  v8 = *(v7 - 8);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  v183 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v11 - 8);
  v184 = &v155 - v12;
  v13 = sub_25268F9E0();
  v194 = *(v13 - 8);
  v195 = v13;
  MEMORY[0x28223BE20](v13);
  v193 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78);
  MEMORY[0x28223BE20](v15 - 8);
  v186 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v181 = &v155 - v18;
  MEMORY[0x28223BE20](v19);
  v201 = &v155 - v20;
  v202 = type metadata accessor for Device.Control(0);
  v200 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v182 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v155 - v23;
  MEMORY[0x28223BE20](v25);
  v197 = &v155 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258);
  MEMORY[0x28223BE20](v27 - 8);
  v204 = &v155 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB260);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v155 - v30;
  v32 = sub_252690030();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v203 = &v155 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB238);
  v35 = *(v8 + 72);
  v36 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_252694EA0;
  v38 = v37 + v36;
  v39 = *MEMORY[0x277D16330];
  v185 = v9;
  v40 = *(v9 + 104);
  LODWORD(v178) = v39;
  v40(v38);
  v41 = v38 + v35;
  v42 = v205;
  v191 = *MEMORY[0x277D16288];
  v198 = v9 + 104;
  v192 = v40;
  v40(v41);
  v43 = sub_25240BD30(v37);
  swift_setDeallocating();
  v199 = v7;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  LOBYTE(v38) = HAPControlSolver.Source.has(characteristicKinds:)(v43);

  v44 = MEMORY[0x277D84F90];
  if (v38)
  {
    sub_2525ADC80(v42, v31);
    if ((*(v33 + 48))(v31, 1, v32) == 1)
    {
      sub_252372288(v31, &qword_27F4DB260);
    }

    else
    {
      v174 = v33;
      v45 = *(v33 + 32);
      v175 = v32;
      v45(v203, v31, v32);
      v176 = type metadata accessor for HAPControlSolver.Source();
      v46 = v176[19];
      v47 = sub_25268FE90();
      v168 = v46;
      v48 = sub_25268FDD0();
      v49 = 4;
      v50 = 1;
      if ((v51 & 1) == 0 && v47 != 2)
      {
        if (v47)
        {
          if (v48 <= 2)
          {
            v50 = 0;
            v49 = 3 - v48;
          }
        }

        else
        {
          v50 = 0;
          v49 = 0;
        }
      }

      v52 = sub_2525B36F4();
      sub_252690000();
      v54 = v53;
      sub_25268FFF0();
      v56 = v55;
      sub_252690020();
      v58 = v57;
      LOBYTE(v206) = v49;
      sub_252383C40(&v206, v204);
      v59 = 3;
      if (!sub_2525F82E0(3u, v52))
      {
        if (sub_2525F82E0(1u, v52))
        {
          v59 = 2;
        }

        else
        {
          v59 = sub_2525F82E0(2u, v52);
        }
      }

      v169 = v52;
      v158 = v49;
      v164 = v50;
      v166 = v24;
      LOBYTE(v206) = 1;
      LOBYTE(v211[0]) = 1;
      LOBYTE(v210[0]) = 1;
      LOBYTE(v209[0]) = 1;
      v60 = sub_25268DA10();
      *&v177 = *(v60 - 8);
      v61 = v177;
      v63 = v177 + 16;
      v62 = *(v177 + 16);
      v64 = v197;
      v62(v197, v205, v60);
      v65 = v202;
      v66 = &v64[*(v202 + 20)];
      v67 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0) + 48);
      sub_25237153C(v204, v66, &qword_27F4DB258);
      *v67 = v54;
      *(v67 + 8) = v56;
      *(v67 + 16) = v58;
      *(v67 + 24) = v59;
      *(v67 + 25) = v211[0];
      *(v67 + 28) = *(v211 + 3);
      *(v67 + 32) = 1;
      *(v67 + 40) = 1;
      *(v67 + 41) = v210[0];
      *(v67 + 44) = *(v210 + 3);
      *(v67 + 48) = 0;
      *(v67 + 56) = 1;
      v68 = v209[0];
      *(v67 + 60) = *(v209 + 3);
      *(v67 + 57) = v68;
      *(v67 + 64) = 0;
      *(v67 + 72) = 769;
      *(v67 + 74) = v207;
      *(v67 + 78) = v208;
      *(v67 + 80) = 0;
      *(v67 + 88) = 0;
      *(v67 + 96) = 513;
      v159 = type metadata accessor for Device.Control.Kind(0);
      swift_storeEnumTagMultiPayload();
      v69 = &v64[v65[6]];
      v167 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3090) + 48);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
      v71 = v205;
      v72 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v73 = v72 + *(v177 + 72);
      v170 = *(v61 + 80);
      v171 = v70;
      v161 = v73;
      v74 = swift_allocObject();
      v177 = xmmword_252694E90;
      *(v74 + 16) = xmmword_252694E90;
      v172 = v63;
      v163 = v62;
      v62((v74 + v72), v71, v60);
      v75 = sub_25240C1FC(v74);
      swift_setDeallocating();
      v76 = *(v61 + 8);
      v162 = v72;
      v165 = v60;
      v173 = v61 + 8;
      v160 = v76;
      v76(v74 + v72, v60);
      swift_deallocClassInstance();
      *v69 = v75;
      v77 = v176[5];
      v78 = sub_25268E530();
      (*(*(v78 - 8) + 16))(v69 + v167, v71 + v77, v78);
      v167 = type metadata accessor for Device.Control.Source(0);
      swift_storeEnumTagMultiPayload();
      v79 = v65[8];
      v80 = v65[10];
      v64[v80] = 16;
      v81 = &v64[v79];
      v64[v65[7]] = 0;
      *v81 = 0;
      *(v81 + 1) = 0;
      *&v64[v65[9]] = 1028;
      v64[v80] = 16;
      v64[v65[11]] = 1;
      v82 = v64;
      v83 = (v200 + 56);
      v84 = *(v200 + 56);
      v84(v201, 1, 1, v65);
      v85 = v183;
      v86 = v199;
      (v192)(v183, v191, v199);
      v87 = v184;
      sub_25268FD80();
      (*(v185 + 1))(v85, v86);
      v89 = v194;
      v88 = v195;
      if ((*(v194 + 48))(v87, 1, v195) == 1)
      {

        sub_252372288(v87, &qword_27F4DB208);
        v90 = v189;
        v92 = v201;
        v91 = v202;
      }

      else
      {
        v168 = v84;
        v183 = v83;
        (*(v89 + 32))(v193, v87, v88);
        v93 = v169;
        v94 = *(v169 + 16);
        if (v94)
        {
          v206 = MEMORY[0x277D84F90];
          sub_25236FF90(0, v94, 0);
          v95 = v206;
          v96 = "HFServiceThermostatModeOff";
          v185 = "HFServiceThermostatModeCool";
          v184 = "HFServiceThermostatModeHeat";
          v97 = 32;
          do
          {
            if (*(v93 + v97) > 1u)
            {
              if (*(v93 + v97) == 2)
              {
                v98 = sub_252692C40();
                v100 = 1;
              }

              else
              {
                v98 = sub_252692C40();
                v100 = 0;
              }
            }

            else if (*(v93 + v97))
            {
              v98 = sub_252692C40();
              v100 = 2;
            }

            else
            {
              v98 = sub_252692C40();
              v100 = 100;
            }

            v206 = v95;
            v102 = *(v95 + 16);
            v101 = *(v95 + 24);
            if (v102 >= v101 >> 1)
            {
              v156 = v96;
              v157 = v98;
              v104 = v99;
              sub_25236FF90((v101 > 1), v102 + 1, 1);
              v96 = v156;
              v99 = v104;
              v98 = v157;
              v95 = v206;
            }

            *(v95 + 16) = v102 + 1;
            v103 = (v95 + 32 * v102);
            v103[4] = v100;
            v103[5] = v98;
            v103[6] = v99;
            v103[7] = 0;
            ++v97;
            --v94;
          }

          while (v94);

          v71 = v205;
        }

        else
        {

          v95 = MEMORY[0x277D84F90];
        }

        LODWORD(v185) = *(v71 + v176[10]);
        v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
        v106 = *(*(v105 - 8) + 56);
        v107 = v180;
        v106(v180, 1, 1, v105);
        v108 = sub_2526922F0();
        v109 = sub_252692330();
        v110 = v179;
        type metadata accessor for AccessoryControl.StatusProvider();
        v111 = v196;
        swift_storeEnumTagMultiPayload();
        v112 = v110[6];
        v106(v111 + v112, 1, 1, v105);
        v113 = v111 + v110[11];
        *v111 = v95;
        *(v111 + 8) = v185;
        *(v111 + v110[8]) = v108;
        *(v111 + v110[9]) = v109;
        sub_2525B3BD8(v107, v111 + v112);
        v114 = 0;
        *v113 = 0;
        *(v113 + 8) = 1;
        *(v111 + v110[7]) = 0;
        v115 = v164;
        if ((v164 & 1) == 0)
        {
          if (v158 > 1u)
          {
            v114 = v158 == 2;
          }

          else if (v158)
          {
            v114 = 2;
          }

          else
          {
            v114 = 100;
          }
        }

        v116 = v181;
        sub_25268F9B0();
        v117 = v116 + *(v202 + 20);
        v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0) + 48);
        *v117 = v114;
        *(v117 + 8) = v115;
        v185 = type metadata accessor for AccessoryControl.PickerViewConfig;
        sub_2525B3C48(v196, v117 + v118, type metadata accessor for AccessoryControl.PickerViewConfig);
        swift_storeEnumTagMultiPayload();
        v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3528);
        v184 = swift_allocBox();
        v121 = v120;
        v179 = &v120[*(v119 + 48)];
        v180 = *(v119 + 64);
        v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3088);
        v169 = v176[12];
        v122 = v192;
        (v192)(v121, v178, v199);
        v123 = swift_allocObject();
        *(v123 + 16) = v177;
        v124 = v162;
        v125 = v165;
        v126 = v163;
        v163(v123 + v162, v205, v165);
        v127 = sub_25240C1FC(v123);
        swift_setDeallocating();
        v128 = v160;
        v160(v123 + v124, v125);
        swift_deallocClassInstance();
        *&v121[v169] = v127;
        swift_storeEnumTagMultiPayload();
        v178 = v176[12];
        v129 = v179;
        (v122)(v179, v191, v199);
        v130 = swift_allocObject();
        *(v130 + 16) = v177;
        v126(v130 + v124, v205, v125);
        v131 = sub_25240C1FC(v130);
        swift_setDeallocating();
        v128(v130 + v124, v125);
        swift_deallocClassInstance();
        (*(v194 + 8))(v193, v195);
        v92 = v201;
        sub_252372288(v201, &qword_27F4E2B78);
        *(v129 + v178) = v131;
        v91 = v202;
        swift_storeEnumTagMultiPayload();
        *&v121[v180] = 100;
        *(v116 + v91[6]) = v184;
        swift_storeEnumTagMultiPayload();
        v132 = (v116 + v91[8]);
        v133 = v91[10];
        *(v116 + v133) = 16;
        *(v116 + v91[7]) = 0;
        *v132 = 0;
        v132[1] = 0;
        *(v116 + v91[9]) = 1028;
        *(v116 + v133) = 15;
        *(v116 + v91[11]) = 1;
        sub_2525B3CB0(v196, v185);
        v168(v116, 0, 1, v91);
        sub_2525B3D10(v116, v92);
        v90 = v189;
        v82 = v197;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8);
      v134 = v200;
      v135 = (*(v200 + 80) + 32) & ~*(v200 + 80);
      v136 = v135 + *(v200 + 72);
      v137 = swift_allocObject();
      *(v137 + 16) = v177;
      sub_2525B3C48(v82, v137 + v135, type metadata accessor for Device.Control);
      v138 = v186;
      sub_25237153C(v92, v186, &qword_27F4E2B78);
      v139 = (*(v134 + 48))(v138, 1, v91);
      v140 = v188;
      if (v139 == 1)
      {
        sub_252372288(v138, &qword_27F4E2B78);
      }

      else
      {
        v141 = v82;
        v142 = v92;
        v143 = v166;
        sub_2525B3B70(v138, v166, type metadata accessor for Device.Control);
        v144 = v182;
        sub_2525B3C48(v143, v182, type metadata accessor for Device.Control);
        v137 = sub_252369B34(1uLL, 2, 1, v137);
        v145 = v143;
        v92 = v142;
        v82 = v141;
        sub_2525B3CB0(v145, type metadata accessor for Device.Control);
        *(v137 + 16) = 2;
        sub_2525B3B70(v144, v137 + v136, type metadata accessor for Device.Control);
      }

      if (*(v137 + 16) < 2uLL)
      {

        sub_2525B3C48(v82, v140, type metadata accessor for Device.Control);
        type metadata accessor for Device.ControlGroup.LayoutType(0);
        swift_storeEnumTagMultiPayload();
        v151 = (v140 + *(v187 + 20));
        v152 = (v140 + *(v187 + 24));
        *v151 = 0;
        v151[1] = 0;
        *v152 = 0;
        v152[1] = 0;
        v44 = sub_252369B0C(0, 1, 1, MEMORY[0x277D84F90]);
        v149 = v44[2];
        v153 = v44[3];
        v150 = v149 + 1;
        if (v149 >= v153 >> 1)
        {
          v44 = sub_252369B0C(v153 > 1, v149 + 1, 1, v44);
        }

        v90 = v140;
      }

      else
      {
        *v90 = v137;
        type metadata accessor for Device.ControlGroup.LayoutType(0);
        swift_storeEnumTagMultiPayload();
        v146 = (v90 + *(v187 + 20));
        v147 = (v90 + *(v187 + 24));
        *v146 = 0;
        v146[1] = 0;
        *v147 = 0;
        v147[1] = 0;
        v44 = sub_252369B0C(0, 1, 1, MEMORY[0x277D84F90]);
        v149 = v44[2];
        v148 = v44[3];
        v150 = v149 + 1;
        if (v149 >= v148 >> 1)
        {
          v44 = sub_252369B0C(v148 > 1, v149 + 1, 1, v44);
        }
      }

      sub_252372288(v92, &qword_27F4E2B78);
      sub_252372288(v204, &qword_27F4DB258);
      (*(v174 + 8))(v203, v175);
      v44[2] = v150;
      sub_2525B3B70(v90, v44 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v149, type metadata accessor for Device.ControlGroup);
      sub_2525B3CB0(v82, type metadata accessor for Device.Control);
    }
  }

  return v44;
}

uint64_t sub_2525B0134@<X0>(unsigned int (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v163 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB280);
  MEMORY[0x28223BE20](v5 - 8);
  v145 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v146 = &v136 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB260);
  MEMORY[0x28223BE20](v9 - 8);
  v151 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v157 = &v136 - v12;
  v13 = sub_252690030();
  v164 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v148 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v152 = &v136 - v16;
  v17 = sub_252690050();
  v161 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v155 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v147 = &v136 - v20;
  MEMORY[0x28223BE20](v21);
  v153 = &v136 - v22;
  MEMORY[0x28223BE20](v23);
  v156 = &v136 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230);
  MEMORY[0x28223BE20](v25 - 8);
  v158 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v150 = &v136 - v28;
  MEMORY[0x28223BE20](v29);
  v154 = (&v136 - v30);
  MEMORY[0x28223BE20](v31);
  v159 = &v136 - v32;
  v33 = sub_25268F4D0();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v136 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v37 - 8);
  MEMORY[0x28223BE20](v38);
  MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v40);
  MEMORY[0x28223BE20](&v136 - v41);
  v43 = &v136 - v42;
  v50 = MEMORY[0x28223BE20](v44);
  v51 = *a2;
  if (v51 != 4)
  {
    v140 = v45;
    v138 = v49;
    v139 = v48;
    v137 = v47;
    v141 = v17;
    v149 = v13;
    v144 = a3;
    LODWORD(v142) = v51;
    v54 = &v136 - v46;
    v55 = *(v34 + 104);
    v55(v36, *MEMORY[0x277D16180], v33, v50);
    type metadata accessor for HAPControlSolver.Source();
    v162 = v54;
    sub_25268FD80();
    v56 = *(v34 + 8);
    v56(v36, v33);
    v57 = *MEMORY[0x277D16170];
    v143 = v55;
    (v55)(v36, v57, v33);
    v160 = v43;
    sub_25268FD80();
    v56(v36, v33);
    if (v142 <= 2)
    {
      v58 = v162;
      v143(v36, *MEMORY[0x277D161B0], v33);
      v59 = v140;
      sub_25268FD80();
      v56(v36, v33);
      v60 = sub_25268F9E0();
      v61 = *(v60 - 8);
      if ((*(v61 + 48))(v59, 1, v60) == 1)
      {
        sub_252372288(v58, &qword_27F4DB208);
        v62 = v59;
LABEL_12:
        sub_252372288(v62, &qword_27F4DB208);
        v69 = v144;
        v70 = v149;
LABEL_18:
        (*(v164 + 56))(v69, 1, 1, v70);
LABEL_19:
        v81 = v160;
        return sub_252372288(v81, &qword_27F4DB208);
      }

      v71 = v159;
      sub_25268F9D0();
      (*(v61 + 8))(v59, v60);
      v72 = v161;
      v73 = v141;
      v74 = (*(v161 + 48))(v71, 1, v141);
      v69 = v144;
      v70 = v149;
      if (v74 != 1)
      {
        v87 = v156;
        (*(v72 + 16))(v156, v71, v73);
        if ((*(v72 + 88))(v87, v73) == *MEMORY[0x277D16CD0])
        {
          (*(v72 + 96))(v87, v73);
          (*(v164 + 32))(v69, v87, v70);
          v88 = v164;
          v89 = 0;
        }

        else
        {
          (*(v72 + 8))(v87, v73);
          v89 = 1;
          v88 = v164;
        }

        (*(v88 + 56))(v69, v89, 1, v70);
        sub_252372288(v58, &qword_27F4DB208);
        (*(v72 + 8))(v71, v73);
        goto LABEL_19;
      }

      sub_252372288(v58, &qword_27F4DB208);
      v75 = v71;
      goto LABEL_17;
    }

    v159 = (v34 + 8);
    v63 = v143;
    v64 = v56;
    v65 = sub_25268F9E0();
    v156 = *(v65 - 8);
    v66 = *(v156 + 6);
    v67 = v156 + 48;
    if (v66(v162, 1, v65) == 1 || v66(v160, 1, v65) == 1)
    {
      v63(v36, *MEMORY[0x277D161B0], v33);
      v68 = v139;
      sub_25268FD80();
      v64(v36, v33);
      if (v66(v68, 1, v65) == 1)
      {
        sub_252372288(v162, &qword_27F4DB208);
        v62 = v68;
        goto LABEL_12;
      }

      v76 = v158;
      sub_25268F9D0();
      (*(v156 + 1))(v68, v65);
      v77 = v161;
      v78 = v141;
      v79 = (*(v161 + 48))(v76, 1, v141);
      v69 = v144;
      v70 = v149;
      v80 = v162;
      if (v79 != 1)
      {
        v90 = v155;
        (*(v77 + 16))(v155, v76, v78);
        if ((*(v77 + 88))(v90, v78) == *MEMORY[0x277D16CD0])
        {
          (*(v77 + 96))(v90, v78);
          (*(v164 + 32))(v69, v90, v70);
          v91 = v164;
          v92 = 0;
        }

        else
        {
          (*(v77 + 8))(v90, v78);
          v92 = 1;
          v91 = v164;
        }

        (*(v91 + 56))(v69, v92, 1, v70);
        sub_252372288(v80, &qword_27F4DB208);
        (*(v77 + 8))(v76, v78);
        goto LABEL_19;
      }

      sub_252372288(v162, &qword_27F4DB208);
      v75 = v76;
LABEL_17:
      sub_252372288(v75, &qword_27F4DB230);
      goto LABEL_18;
    }

    v82 = v162;
    v83 = v138;
    sub_25237153C(v162, v138, &qword_27F4DB208);
    if (v66(v83, 1, v65) == 1)
    {
      sub_252372288(v83, &qword_27F4DB208);
      v84 = v144;
      v85 = v149;
      v86 = v157;
LABEL_29:
      v99 = *(v164 + 56);
      v99(v86, 1, 1, v85);
      v100 = v86;
LABEL_30:
      sub_252372288(v82, &qword_27F4DB208);
      sub_252372288(v100, &qword_27F4DB260);
      v101 = v84;
      v102 = 1;
      v103 = v85;
LABEL_31:
      v99(v101, v102, 1, v103);
      v81 = v160;
      return sub_252372288(v81, &qword_27F4DB208);
    }

    v159 = v67;
    v163 = v66;
    v93 = v154;
    sub_25268F9D0();
    v95 = v156 + 8;
    v94 = *(v156 + 1);
    v94(v83, v65);
    v96 = v161;
    v97 = v141;
    v158 = *(v161 + 48);
    v98 = (v158)(v93, 1, v141);
    v86 = v157;
    if (v98 == 1)
    {
      sub_252372288(v93, &qword_27F4DB230);
      v85 = v149;
      v84 = v144;
      goto LABEL_29;
    }

    v155 = v94;
    v156 = v95;
    v104 = *(v96 + 16);
    v105 = v153;
    v143 = (v96 + 16);
    v104(v153, v93, v97);
    v106 = *(v96 + 88);
    v142 = v96 + 88;
    v140 = v106;
    v107 = v106(v105, v97);
    LODWORD(v139) = *MEMORY[0x277D16CD0];
    v108 = v96;
    if (v107 == v139)
    {
      (*(v96 + 96))(v105, v97);
      v109 = v149;
      (*(v164 + 32))(v86, v105, v149);
      v99 = *(v164 + 56);
      v99(v86, 0, 1, v109);
      v110 = *(v108 + 8);
    }

    else
    {
      v138 = v104;
      v111 = *(v96 + 8);
      v111(v105, v97);
      v99 = *(v164 + 56);
      v109 = v149;
      v99(v86, 1, 1, v149);
      v110 = v111;
      v104 = v138;
    }

    v154 = v110;
    v110(v93, v97);
    v112 = *(v164 + 48);
    if (v112(v86, 1, v109) == 1)
    {
      v100 = v86;
      v85 = v109;
LABEL_41:
      v82 = v162;
      v84 = v144;
      goto LABEL_30;
    }

    v153 = v112;
    v113 = *(v164 + 32);
    v114 = v86;
    v115 = v152;
    v157 = (v164 + 32);
    v138 = v113;
    v113(v152, v114, v109);
    v116 = v137;
    sub_25237153C(v160, v137, &qword_27F4DB208);
    if (v163(v116, 1, v65) == 1)
    {
      (*(v164 + 8))(v115, v109);
      sub_252372288(v116, &qword_27F4DB208);
      v85 = v109;
    }

    else
    {
      v117 = v150;
      sub_25268F9D0();
      (v155)(v116, v65);
      v118 = v141;
      if ((v158)(v117, 1, v141) != 1)
      {
        v119 = v117;
        v120 = v147;
        v104(v147, v119, v118);
        v121 = v140(v120, v118);
        v85 = v149;
        v100 = v151;
        v122 = v152;
        if (v121 == v139)
        {
          (*(v161 + 96))(v120, v118);
          v138(v100, v120, v85);
          v123 = 0;
          v124 = v148;
          v125 = v154;
        }

        else
        {
          v125 = v154;
          v154(v120, v118);
          v123 = 1;
          v124 = v148;
        }

        v163 = (v164 + 56);
        v99(v100, v123, 1, v85);
        v125(v150, v118);
        if ((v153)(v100, 1, v85) != 1)
        {
          v138(v124, v100, v85);
          sub_25268FFF0();
          sub_25268FFF0();
          sub_252690000();
          sub_252690000();
          sub_252690020();
          sub_252690020();
          v126 = v145;
          sub_252690010();
          v127 = sub_252690040();
          v128 = *(v127 - 8);
          v129 = *(v128 + 48);
          v130 = v129(v126, 1, v127);
          v131 = v162;
          if (v130 == 1)
          {
            sub_252690010();
            if (v129(v126, 1, v127) != 1)
            {
              sub_252372288(v126, &qword_27F4DB280);
            }
          }

          else
          {
            v132 = v146;
            (*(v128 + 32))(v146, v126, v127);
            (*(v128 + 56))(v132, 0, 1, v127);
          }

          v133 = v144;
          sub_25268FFE0();
          v134 = *(v164 + 8);
          v164 += 8;
          v135 = v149;
          v134(v124, v149);
          v134(v152, v135);
          sub_252372288(v131, &qword_27F4DB208);
          v101 = v133;
          v102 = 0;
          v103 = v135;
          goto LABEL_31;
        }

        (*(v164 + 8))(v122, v85);
        goto LABEL_41;
      }

      v85 = v149;
      (*(v164 + 8))(v152, v149);
      sub_252372288(v117, &qword_27F4DB230);
    }

    v100 = v151;
    v84 = v144;
    v99(v151, 1, 1, v85);
    v82 = v162;
    goto LABEL_30;
  }

  v52 = *(v164 + 56);

  return v52(a3, 1, 1, v13, v50);
}

uint64_t sub_2525B1590@<X0>(unsigned __int8 *a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (v4 == 4)
  {
    goto LABEL_2;
  }

  type metadata accessor for HAPControlSolver.Source();
  v47 = sub_25268FD50();
  v13 = v12;
  v48 = sub_25268FD40();
  v15 = v14;
  v16 = COERCE_DOUBLE(sub_25268FD30());
  v18 = v17;
  v19 = COERCE_DOUBLE(sub_25268FD10());
  if ((v4 - 1) < 2)
  {
    if ((v15 & 1) == 0)
    {
      *(a3 + 33) = 514;
      v21 = type metadata accessor for AccessoryControl.ThermostatState(0);
      v22 = v21[8];
      v23 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
      (*(*(v23 - 8) + 56))(a3 + v22, 1, 1, v23);
      v24 = a3 + v21[9];
      *v24 = xmmword_252695260;
      *(v24 + 16) = 0;
      *(a3 + v21[11]) = 3;
      *a3 = v47;
      *(a3 + 8) = v13 & 1;
      *(a3 + v21[10]) = v4;
      *(a3 + 16) = v48;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      v6 = *(*(v21 - 1) + 56);
      v8 = a3;
      v9 = 0;
      v7 = v21;
      goto LABEL_3;
    }

LABEL_2:
    v5 = type metadata accessor for AccessoryControl.ThermostatState(0);
    v6 = *(*(v5 - 8) + 56);
    v7 = v5;
    v8 = a3;
    v9 = 1;
    goto LABEL_3;
  }

  if (!v4)
  {
    v25 = sub_25268FD50();
    v27 = v26;
    *(a3 + 33) = 514;
    v28 = type metadata accessor for AccessoryControl.ThermostatState(0);
    v29 = v28[8];
    v30 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
    (*(*(v30 - 8) + 56))(a3 + v29, 1, 1, v30);
    v31 = a3 + v28[9];
    *v31 = xmmword_252695260;
    *(v31 + 16) = 0;
    *(a3 + v28[11]) = 3;
    *a3 = v25;
    *(a3 + 8) = v27 & 1;
    *(a3 + v28[10]) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 2;
LABEL_11:
    v6 = *(*(v28 - 1) + 56);
    v8 = a3;
    v9 = 0;
    v7 = v28;
    goto LABEL_3;
  }

  if ((a2 & 1) == 0)
  {
    if (v18 & 1) != 0 || (v20)
    {
      goto LABEL_2;
    }

    if (v19 >= v16)
    {
      v39 = v16;
    }

    else
    {
      v39 = v19;
    }

    v40 = v19;
    v41 = sub_25268FD50();
    v43 = v42;
    *(a3 + 33) = 514;
    v28 = type metadata accessor for AccessoryControl.ThermostatState(0);
    v44 = v28[8];
    v45 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
    (*(*(v45 - 8) + 56))(a3 + v44, 1, 1, v45);
    v46 = a3 + v28[9];
    *v46 = xmmword_252695260;
    *(v46 + 16) = 0;
    *(a3 + v28[11]) = 3;
    *a3 = v41;
    *(a3 + 8) = v43 & 1;
    *(a3 + v28[10]) = 3;
    *(a3 + 16) = v39;
    *(a3 + 24) = v40;
    *(a3 + 32) = 1;
    goto LABEL_11;
  }

  if (v15)
  {
    goto LABEL_2;
  }

  v32 = sub_25268FD50();
  v34 = v33;
  *(a3 + 33) = 514;
  v35 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v36 = v35[8];
  v37 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  (*(*(v37 - 8) + 56))(a3 + v36, 1, 1, v37);
  v38 = a3 + v35[9];
  *v38 = xmmword_252695260;
  *(v38 + 16) = 0;
  *(a3 + v35[11]) = 3;
  *a3 = v32;
  *(a3 + 8) = v34 & 1;
  *(a3 + v35[10]) = 3;
  *(a3 + 16) = v48;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v6 = *(*(v35 - 1) + 56);
  v8 = a3;
  v9 = 0;
  v7 = v35;
LABEL_3:

  return v6(v8, v9, 1, v7);
}

uint64_t sub_2525B19F8(unsigned int (*a1)(uint64_t, uint64_t, uint64_t))
{
  v237 = a1;
  v213 = type metadata accessor for Device.ControlGroup(0);
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v208 = v183 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v214 = (v183 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v4 - 8);
  v204 = v183 - v5;
  v203 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v203);
  v209 = v183 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25268F9E0();
  v235 = *(v7 - 8);
  v236 = v7;
  MEMORY[0x28223BE20](v7);
  v210 = v183 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78);
  MEMORY[0x28223BE20](v9 - 8);
  v211 = v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v205 = v183 - v12;
  MEMORY[0x28223BE20](v13);
  v216 = v183 - v14;
  v227 = type metadata accessor for Device.Control(0);
  v217 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v207 = v183 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v206 = v183 - v17;
  MEMORY[0x28223BE20](v18);
  v230 = v183 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258);
  MEMORY[0x28223BE20](v20 - 8);
  v219 = v183 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB260);
  MEMORY[0x28223BE20](v22 - 8);
  v226 = v183 - v23;
  v229 = sub_252690030();
  v228 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v218 = v183 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_25268F4D0();
  v26 = *(v25 - 8);
  v27 = v26;
  MEMORY[0x28223BE20](v25);
  v29 = v183 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v30 - 8);
  v215 = v183 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = v183 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230);
  MEMORY[0x28223BE20](v35 - 8);
  v234 = v183 - v36;
  v37 = sub_25268FFD0();
  v232 = *(v37 - 8);
  v233 = v37;
  MEMORY[0x28223BE20](v37);
  v231 = v183 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB238);
  v40 = *(v26 + 72);
  v41 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v222 = *(v26 + 80);
  v224 = v39;
  v221 = v41 + 2 * v40;
  v42 = swift_allocObject();
  v220 = xmmword_252694EA0;
  *(v42 + 16) = xmmword_252694EA0;
  v223 = v41;
  v43 = v42 + v41;
  v44 = *MEMORY[0x277D16298];
  v46 = v27 + 104;
  v45 = *(v27 + 104);
  v45(v43, v44, v25);
  v47 = *MEMORY[0x277D161B0];
  *&v225 = v40;
  v45(v43 + v40, v47, v25);
  v48 = sub_25240BD30(v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v49 = v237;
  LOBYTE(v42) = HAPControlSolver.Source.has(characteristicKinds:)(v48);

  if ((v42 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v45(v29, v44, v25);
  v202 = type metadata accessor for HAPControlSolver.Source();
  v200 = v202[19];
  sub_25268FD80();
  v52 = *(v27 + 8);
  v50 = v27 + 8;
  v51 = v52;
  v201 = v29;
  v52(v29, v25);
  v53 = v235;
  v54 = v236;
  v55 = *(v235 + 6);
  v199 = v235 + 48;
  v198 = v55;
  if (v55(v34, 1, v236) == 1)
  {
    sub_252372288(v34, &qword_27F4DB208);
    v56 = sub_252690050();
    v57 = v234;
    (*(*(v56 - 8) + 56))(v234, 1, 1, v56);
LABEL_5:
    sub_252372288(v57, &qword_27F4DB230);
    return MEMORY[0x277D84F90];
  }

  v193 = v51;
  v194 = v50;
  v196 = v45;
  v195 = v44;
  v197 = v46;
  v57 = v234;
  sub_25268F9D0();
  v59 = v53 + 8;
  v58 = *(v53 + 1);
  v58(v34, v54);
  v60 = sub_252690050();
  v61 = *(v60 - 8);
  if ((*(v61 + 48))(v57, 1, v60) == 1)
  {
    goto LABEL_5;
  }

  if ((*(v61 + 88))(v57, v60) != *MEMORY[0x277D16CC8])
  {
    (*(v61 + 8))(v57, v60);
    return MEMORY[0x277D84F90];
  }

  v192 = v25;
  (*(v61 + 96))(v57, v60);
  (*(v232 + 32))(v231, v57, v233);
  v63 = sub_25268FF90();
  v64 = *(v63 + 16);
  v65 = MEMORY[0x277D84F90];
  v66 = v49;
  if (v64)
  {
    v67 = (v63 + 32);
    do
    {
      v69 = *v67++;
      v68 = v69;
      if (v69 <= 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_252368654(0, *(v65 + 2) + 1, 1, v65);
        }

        v71 = *(v65 + 2);
        v70 = *(v65 + 3);
        if (v71 >= v70 >> 1)
        {
          v65 = sub_252368654((v70 > 1), v71 + 1, 1, v65);
        }

        *(v65 + 2) = v71 + 1;
        v65[v71 + 32] = 0x3010200u >> (8 * v68);
        v66 = v237;
      }

      --v64;
    }

    while (v64);
  }

  v72 = sub_2526243C8(v65);

  v73 = sub_25240D50C(3u, v72);
  v191 = v58;
  if (v73)
  {
    v74 = swift_allocObject();
    *(v74 + 16) = v220;
    v75 = v74 + v223;
    v76 = v192;
    v77 = v196;
    v196(v74 + v223, *MEMORY[0x277D16180], v192);
    v77(v75 + v225, *MEMORY[0x277D16170], v76);
    v78 = sub_25240BD30(v74);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v79 = HAPControlSolver.Source.has(characteristicKinds:)(v78);
  }

  else
  {
    v79 = 0;
  }

  v80 = v229;
  if (sub_25240D50C(3u, v72))
  {
    v81 = swift_allocObject();
    *(v81 + 16) = v220;
    v82 = v81 + v223;
    v83 = v192;
    v84 = v196;
    v196(v81 + v223, *MEMORY[0x277D16180], v192);
    v84(v82 + v225, *MEMORY[0x277D16170], v83);
    v85 = sub_25240BD30(v81);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    LOBYTE(v81) = HAPControlSolver.Source.has(characteristicKinds:)(v85);

    v86 = v81 ^ 1;
  }

  else
  {
    v86 = 0;
  }

  v87 = v228;
  v88 = v226;
  sub_2525B35A0(v86 & 1, v79 & 1, v238);
  v89 = SLOBYTE(v238[0]);
  sub_2525B0134(v66, v238, v88);
  if ((*(v87 + 48))(v88, 1, v80) == 1)
  {

    sub_252372288(v88, &qword_27F4DB260);
    (*(v232 + 8))(v231, v233);
    return MEMORY[0x277D84F90];
  }

  v234 = v72;
  v224 = v59;
  v183[0] = v89;
  (*(v87 + 32))(v218, v88, v80);
  LODWORD(v220) = v89;
  LOBYTE(v238[0]) = v89;
  v90 = v219;
  sub_2525B1590(v238, v86 & 1, v219);
  sub_252690000();
  v92 = v91;
  sub_25268FFF0();
  v94 = v93;
  sub_252690020();
  v96 = v95;
  LOBYTE(v238[0]) = 1;
  LOBYTE(v243[0]) = 1;
  LOBYTE(v242[0]) = 1;
  LOBYTE(v241[0]) = 1;
  v97 = sub_25268DA10();
  *&v225 = *(v97 - 8);
  v98 = v225;
  v99 = v225 + 16;
  v226 = *(v225 + 16);
  v100 = v230;
  (v226)(v230, v66, v97);
  v101 = v227;
  v102 = v100 + *(v227 + 20);
  v103 = v102 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0) + 48);
  sub_25237153C(v90, v102, &qword_27F4DB258);
  *v103 = v92;
  *(v103 + 8) = v94;
  *(v103 + 16) = v96;
  *(v103 + 24) = 3;
  *(v103 + 25) = v243[0];
  *(v103 + 28) = *(v243 + 3);
  *(v103 + 32) = 1;
  *(v103 + 40) = 1;
  *(v103 + 41) = v242[0];
  *(v103 + 44) = *(v242 + 3);
  *(v103 + 48) = 0;
  *(v103 + 56) = 1;
  v104 = v241[0];
  *(v103 + 60) = *(v241 + 3);
  *(v103 + 57) = v104;
  *(v103 + 64) = 0;
  *(v103 + 72) = 769;
  *(v103 + 74) = v239;
  *(v103 + 78) = v240;
  *(v103 + 80) = 0;
  *(v103 + 88) = 0;
  *(v103 + 96) = 513;
  v189 = type metadata accessor for Device.Control.Kind(0);
  swift_storeEnumTagMultiPayload();
  v105 = (v100 + *(v101 + 24));
  v106 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3090) + 48);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
  v108 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v109 = v108 + *(v225 + 72);
  v187 = *(v98 + 80);
  v188 = v107;
  v186 = v109;
  v110 = swift_allocObject();
  v225 = xmmword_252694E90;
  *(v110 + 16) = xmmword_252694E90;
  v221 = v99;
  (v226)(v110 + v108, v66, v97);
  v111 = sub_25240C1FC(v110);
  swift_setDeallocating();
  v112 = *(v98 + 8);
  v190 = v108;
  v223 = v97;
  v222 = v98 + 8;
  v185 = v112;
  v112(v110 + v108, v97);
  swift_deallocClassInstance();
  *v105 = v111;
  v113 = v202[5];
  v114 = sub_25268E530();
  v115 = v227;
  (*(*(v114 - 8) + 16))(v105 + v106, v66 + v113, v114);
  v183[1] = type metadata accessor for Device.Control.Source(0);
  swift_storeEnumTagMultiPayload();
  v116 = v115[8];
  v117 = v115[10];
  *(v100 + v117) = 16;
  v118 = (v100 + v116);
  *(v100 + v115[7]) = 0;
  *v118 = 0;
  v118[1] = 0;
  *(v100 + v115[9]) = 1028;
  *(v100 + v117) = 16;
  *(v100 + v115[11]) = 1;
  v119 = (v217 + 56);
  v120 = v216;
  v184 = *(v217 + 56);
  v184(v216, 1, 1, v115);
  v121 = v201;
  v122 = v192;
  v196(v201, v195, v192);
  v123 = v215;
  sub_25268FD80();
  v193(v121, v122);
  v124 = v236;
  if (v198(v123, 1, v236) == 1)
  {

    sub_252372288(v123, &qword_27F4DB208);
  }

  else
  {
    v201 = v119;
    (*(v235 + 4))(v210, v123, v124);
    v125 = v234;
    v126 = *(v234 + 2);
    if (v126)
    {
      v127 = sub_2525EEC7C(*(v234 + 2), 0);
      v128 = sub_2525EEF6C(v238, v127 + 32, v126, v125);
      v129 = v238[2];

      sub_2523A4D1C();
      if (v128 != v126)
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v66 = v237;
    }

    else
    {

      v127 = MEMORY[0x277D84F90];
    }

    v238[0] = v127;
    sub_2523A44BC(v238);
    v130 = v238[0];
    v131 = *(v238[0] + 2);
    if (v131)
    {
      v238[0] = MEMORY[0x277D84F90];
      sub_25236FF90(0, v131, 0);
      v132 = v238[0];
      v133 = "fan.oscillation.fill";
      v234 = "HFServiceThermostatModeOff";
      v235 = "HFServiceThermostatModeCool";
      v134 = 32;
      do
      {
        if (v130[v134] > 1u)
        {
          if (v130[v134] == 2)
          {
            v135 = sub_252692C40();
            v137 = 1;
          }

          else
          {
            v135 = sub_252692C40();
            v137 = 3;
          }
        }

        else if (v130[v134])
        {
          v135 = sub_252692C40();
          v137 = 2;
        }

        else
        {
          v135 = sub_252692C40();
          v137 = 0;
        }

        v238[0] = v132;
        v139 = *(v132 + 2);
        v138 = *(v132 + 3);
        if (v139 >= v138 >> 1)
        {
          v200 = v133;
          v215 = v135;
          v141 = v136;
          sub_25236FF90((v138 > 1), v139 + 1, 1);
          v133 = v200;
          v136 = v141;
          v135 = v215;
          v132 = v238[0];
        }

        *(v132 + 2) = v139 + 1;
        v140 = &v132[32 * v139];
        *(v140 + 4) = v137;
        *(v140 + 5) = v135;
        *(v140 + 6) = v136;
        *(v140 + 7) = 0;
        ++v134;
        --v131;
      }

      while (v131);

      v66 = v237;
    }

    else
    {

      v132 = MEMORY[0x277D84F90];
    }

    LODWORD(v235) = *(v66 + v202[10]);
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
    v143 = *(*(v142 - 8) + 56);
    v144 = v204;
    v143(v204, 1, 1, v142);
    v145 = sub_2526922F0();
    v146 = sub_252692330();
    v147 = v203;
    type metadata accessor for AccessoryControl.StatusProvider();
    v148 = v209;
    swift_storeEnumTagMultiPayload();
    v149 = v147[6];
    v143((v148 + v149), 1, 1, v142);
    v150 = v148 + v147[11];
    *v148 = v132;
    *(v148 + 8) = v235;
    *(v148 + v147[8]) = v145;
    *(v148 + v147[9]) = v146;
    sub_2525B3BD8(v144, v148 + v149);
    v151 = 0;
    *v150 = 0;
    *(v150 + 8) = 1;
    *(v148 + v147[7]) = 0;
    if (v220 != 4)
    {
      v151 = qword_2526A9080[v183[0]];
    }

    v152 = v220 == 4;
    v153 = v205;
    v154 = v210;
    sub_25268F9B0();
    v115 = v227;
    v155 = v153 + *(v227 + 20);
    v156 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0) + 48);
    *v155 = v151;
    *(v155 + 8) = v152;
    v235 = type metadata accessor for AccessoryControl.PickerViewConfig;
    v157 = v209;
    sub_2525B3C48(v209, v155 + v156, type metadata accessor for AccessoryControl.PickerViewConfig);
    swift_storeEnumTagMultiPayload();
    v158 = v153 + v115[6];
    v159 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3088) + 48);
    v196(v158, v195, v192);
    v160 = swift_allocObject();
    *(v160 + 16) = v225;
    v161 = v190;
    v162 = v223;
    (v226)(v160 + v190, v237, v223);
    v163 = sub_25240C1FC(v160);
    swift_setDeallocating();
    v185(v160 + v161, v162);
    swift_deallocClassInstance();
    v191(v154, v236);
    v164 = v216;
    sub_252372288(v216, &qword_27F4E2B78);
    *(v158 + v159) = v163;
    v120 = v164;
    swift_storeEnumTagMultiPayload();
    v165 = (v153 + v115[8]);
    v166 = v115[10];
    *(v153 + v166) = 16;
    *(v153 + v115[7]) = 0;
    *v165 = 0;
    v165[1] = 0;
    *(v153 + v115[9]) = 1028;
    *(v153 + v166) = 15;
    *(v153 + v115[11]) = 1;
    sub_2525B3CB0(v157, v235);
    v184(v153, 0, 1, v115);
    sub_2525B3D10(v153, v164);
  }

  v167 = v212;
  v168 = v229;
  v169 = v211;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8);
  v170 = v217;
  v171 = (*(v217 + 80) + 32) & ~*(v217 + 80);
  v172 = v171 + *(v217 + 72);
  v173 = swift_allocObject();
  *(v173 + 16) = v225;
  sub_2525B3C48(v230, v173 + v171, type metadata accessor for Device.Control);
  sub_25237153C(v120, v169, &qword_27F4E2B78);
  if ((*(v170 + 48))(v169, 1, v115) == 1)
  {
    sub_252372288(v169, &qword_27F4E2B78);
  }

  else
  {
    v174 = v206;
    sub_2525B3B70(v169, v206, type metadata accessor for Device.Control);
    v175 = v207;
    sub_2525B3C48(v174, v207, type metadata accessor for Device.Control);
    v173 = sub_252369B34(1uLL, 2, 1, v173);
    sub_2525B3CB0(v174, type metadata accessor for Device.Control);
    *(v173 + 16) = 2;
    v120 = v216;
    sub_2525B3B70(v175, v173 + v172, type metadata accessor for Device.Control);
  }

  v176 = v214;
  if (*(v173 + 16) < 2uLL)
  {

    v176 = v208;
    sub_2525B3C48(v230, v208, type metadata accessor for Device.Control);
  }

  else
  {
    *v214 = v173;
  }

  type metadata accessor for Device.ControlGroup.LayoutType(0);
  swift_storeEnumTagMultiPayload();
  v177 = (v176 + *(v213 + 20));
  v178 = (v176 + *(v213 + 24));
  *v177 = 0;
  v177[1] = 0;
  *v178 = 0;
  v178[1] = 0;
  v179 = sub_252369B0C(0, 1, 1, MEMORY[0x277D84F90]);
  v181 = v179[2];
  v180 = v179[3];
  v182 = v179;
  if (v181 >= v180 >> 1)
  {
    v182 = sub_252369B0C(v180 > 1, v181 + 1, 1, v179);
  }

  sub_252372288(v120, &qword_27F4E2B78);
  sub_252372288(v219, &qword_27F4DB258);
  (*(v228 + 8))(v218, v168);
  (*(v232 + 8))(v231, v233);
  *(v182 + 16) = v181 + 1;
  sub_2525B3B70(v176, v182 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v181, type metadata accessor for Device.ControlGroup);
  sub_2525B3CB0(v230, type metadata accessor for Device.Control);
  return v182;
}

unint64_t sub_2525B35A0@<X0>(char a1@<W1>, char a2@<W2>, _BYTE *a3@<X8>)
{
  type metadata accessor for HAPControlSolver.Source();
  result = sub_25268FDF0();
  if (v7)
  {
    LOBYTE(v8) = 4;
  }

  else if ((a1 & 1) != 0 && result == 3)
  {
    LOBYTE(v8) = 3;
  }

  else
  {
    LOBYTE(v8) = 0;
    if ((result != 3) | a2 & 1 && result <= 3)
    {
      v8 = 0x3010200u >> (8 * result);
    }
  }

  *a3 = v8;
  return result;
}

unint64_t static AccessoryControl.ThermostatState.Mode.targetThermostatMode(for:)@<X0>(char *a1@<X8>)
{
  result = sub_25268EB20();
  if (v3)
  {
    result = sub_25268EAB0();
    if (result >= 3)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3 - result;
    }

    if (v4)
    {
      v6 = 4;
    }

    else
    {
      v6 = v5;
    }
  }

  else if (result >= 4)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0x3010200u >> (8 * result);
  }

  *a1 = v6;
  return result;
}

unint64_t AccessoryControl.ThermostatState.Mode.init(heatingCoolingState:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x10200u >> (8 * result);
  if (result >= 3)
  {
    LOBYTE(v2) = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2525B36F4()
{
  v0 = sub_25268F4D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23[-v8];
  v10 = sub_25268FFD0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v1 + 104))(v3, *MEMORY[0x277D16288], v0, v12);
  type metadata accessor for HAPControlSolver.Source();
  sub_25268FD80();
  (*(v1 + 8))(v3, v0);
  v15 = sub_25268F9E0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    sub_252372288(v6, &qword_27F4DB208);
    v17 = sub_252690050();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
LABEL_4:
    sub_252372288(v9, &qword_27F4DB230);
    return MEMORY[0x277D84F90];
  }

  sub_25268F9D0();
  (*(v16 + 8))(v6, v15);
  v18 = sub_252690050();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v9, 1, v18) == 1)
  {
    goto LABEL_4;
  }

  if ((*(v19 + 88))(v9, v18) != *MEMORY[0x277D16CC8])
  {
    (*(v19 + 8))(v9, v18);
    return MEMORY[0x277D84F90];
  }

  (*(v19 + 96))(v9, v18);
  v21 = (*(v11 + 32))(v14, v9, v10);
  MEMORY[0x28223BE20](v21);
  *&v23[-16] = v14;
  v22 = sub_2523802CC(sub_252386064, &v23[-32], &unk_286483F08);
  (*(v11 + 8))(v14, v10);
  return v22;
}

uint64_t sub_2525B3B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525B3BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2525B3C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525B3CB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2525B3D10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 StaticThermostatClusterGroup.thermostatControlState(for:config:source:)(uint64_t a1, _OWORD *a2, uint64_t a3, __int128 *a4, void *a5)
{
  v207 = a5;
  v208 = a3;
  v171 = a1;
  v172 = a2;
  v7 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v174 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v168 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_25268D990();
  v199 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v183 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  MEMORY[0x28223BE20](v10 - 8);
  v173 = &v166 - v11;
  v12 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  MEMORY[0x28223BE20](v12 - 8);
  v188 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  MEMORY[0x28223BE20](v14 - 8);
  v197 = (&v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB300);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v170 = (&v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v187 = &v166 - v20;
  MEMORY[0x28223BE20](v19);
  v194 = &v166 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCA28);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v169 = &v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v198 = &v166 - v25;
  v205 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  v195 = *(v205 - 8);
  v26 = MEMORY[0x28223BE20](v205);
  v204 = (&v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v203 = &v166 - v28;
  v202 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  v192 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v209 = &v166 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3530);
  MEMORY[0x28223BE20](v30 - 8);
  v206 = &v166 - v31;
  v196 = sub_25268DB10();
  v180 = *(v196 - 8);
  v32 = MEMORY[0x28223BE20](v196);
  v178 = &v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v193 = &v166 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3538);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v201 = &v166 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v200 = &v166 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE70);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v166 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0698);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v166 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3460);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v166 - v46;
  v48 = sub_25268EAF0();
  v175 = *(v48 - 8);
  v176 = v48;
  v49 = MEMORY[0x28223BE20](v48);
  v51 = &v166 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v179 = &v166 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258);
  MEMORY[0x28223BE20](v53 - 8);
  v54 = a4[5];
  v243 = a4[4];
  v244 = v54;
  v245 = *(a4 + 48);
  v55 = a4[1];
  v239 = *a4;
  v240 = v55;
  v57 = a4[2];
  v56 = a4[3];
  v59 = &v166 - v58;
  v241 = v57;
  v242 = v56;
  sub_25237153C(v208, &v166 - v58, &qword_27F4DB258);
  v236 = v243;
  v237 = v244;
  v238 = v245;
  v232 = v239;
  v233 = v240;
  v234 = v241;
  v235 = v242;
  sub_252385F5C(&v239, &v225);
  v177 = v5;
  if ((sub_252690290() & 1) == 0 || (*(v174 + 48))(v59, 1, v7) || v59[v7[10]])
  {
    v60 = type metadata accessor for HAPControlSolver.Source();
    sub_25237153C(v207 + *(v60 + 84), v47, &qword_27F4E3460);
    v61 = v175;
    v62 = v176;
    v63 = (*(v175 + 48))(v47, 1, v176);
    v182 = v59;
    if (v63 == 1)
    {
      sub_252372288(v47, &qword_27F4E3460);
      v64 = sub_25268DC10();
      (*(*(v64 - 8) + 56))(v44, 1, 1, v64);
      v65 = sub_25268DD80();
      (*(*(v65 - 8) + 56))(v41, 1, 1, v65);
      sub_25268DB00();
      v66 = v200;
      sub_25268DE20();
      v67 = sub_25268DE40();
      (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
      sub_25268EAD0();
      v68 = *(v61 + 32);
    }

    else
    {
      v68 = *(v61 + 32);
      v68(v51, v47, v62);
    }

    v68(v179, v51, v62);
    v69 = v201;
    sub_25268EAE0();
    v70 = sub_25268DE40();
    v71 = *(v70 - 8);
    v72 = (*(v71 + 48))(v69, 1, v70);
    v73 = v194;
    v74 = v206;
    if (v72 == 1)
    {
      sub_252372288(v69, &qword_27F4E3538);
      v75 = v180;
      v76 = v196;
      (*(v180 + 56))(v74, 1, 1, v196);
      v77 = v178;
      sub_25268DB00();
      if ((*(v75 + 48))(v74, 1, v76) != 1)
      {
        sub_252372288(v74, &qword_27F4E3530);
      }
    }

    else
    {
      sub_25268DE00();
      (*(v71 + 8))(v69, v70);
      v78 = v180;
      v79 = v196;
      (*(v180 + 56))(v74, 0, 1, v196);
      v77 = v178;
      (*(v78 + 32))(v178, v74, v79);
    }

    v80 = StaticThermostatClusterGroup.availableThermostatHolds(timeZone:)(v77);
    v81 = v198;
    if (v80)
    {
      v166 = v80;
      v167 = v7;
      v82 = v80[2];
      if (v82)
      {
        v83 = v80 + ((*(v192 + 80) + 32) & ~*(v192 + 80));
        v200 = *(v192 + 72);
        v201 = (v192 + 56);
        v186 = (v180 + 32);
        v181 = (v199 + 4);
        v84 = (v195 + 56);
        v199 = (v195 + 48);
        v85 = MEMORY[0x277D84F90];
        v87 = v187;
        v86 = v188;
        v88 = v73;
        v185 = (v195 + 56);
        do
        {
          v207 = v85;
          v208 = v82;
          v206 = v83;
          v89 = v209;
          sub_2525C150C(v83, v209, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
          sub_2525C150C(v89, v88, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
          (*v201)(v88, 0, 1, v202);
          sub_25237153C(v88, v87, &qword_27F4DB300);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_2525C14A4(v87, v86, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
            v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
            v91 = *(v90 - 8);
            if ((*(v91 + 48))(v86, 1, v90) == 1)
            {
              v92 = v204;
              (*(v91 + 56))(v204, 1, 1, v90);
            }

            else
            {
              v109 = *v86;
              v110 = *(v90 + 48);
              v111 = *(v90 + 64);
              v191 = *v181;
              v192 = v109;
              v113 = v183;
              v112 = v184;
              v191(v183, v86 + v110, v184);
              v190 = *v186;
              v114 = v86 + v111;
              v115 = v193;
              v116 = v196;
              v190(v193, v114, v196);
              v117 = *(v90 + 48);
              v189 = *(v90 + 64);
              v92 = v204;
              *v204 = v192;
              v118 = v113;
              v87 = v187;
              v119 = v112;
              v81 = v198;
              v191((v92 + v117), v118, v119);
              v84 = v185;
              v120 = v115;
              v88 = v194;
              v121 = v116;
              v86 = v188;
              v190((v92 + v189), v120, v121);
              (*(v91 + 56))(v92, 0, 1, v90);
            }
          }

          else
          {
            v93 = v197;
            sub_2525C14A4(v87, v197, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
            v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
            v95 = *(v94 - 8);
            v96 = (*(v95 + 48))(v93, 3, v94);
            if (v96 > 1)
            {
              v81 = v198;
              v92 = v204;
              if (v96 == 2)
              {
                (*(v95 + 56))(v204, 2, 3, v94);
              }

              else
              {
                (*(v95 + 56))(v204, 3, 3, v94);
              }
            }

            else
            {
              if (v96)
              {
                v92 = v204;
                (*(v95 + 56))(v204, 1, 3, v94);
              }

              else
              {
                v97 = v197;
                v192 = *v197;
                v98 = *(v94 + 64);
                v99 = v173;
                sub_2523714D4(v197 + *(v94 + 48), v173, &qword_27F4DB2D8);
                v100 = *v186;
                v101 = v97 + v98;
                v102 = v193;
                v103 = v196;
                (*v186)(v193, v101, v196);
                v104 = *(v94 + 48);
                v105 = *(v94 + 64);
                v92 = v204;
                *v204 = v192;
                v106 = v99;
                v87 = v187;
                sub_2523714D4(v106, v92 + v104, &qword_27F4DB2D8);
                v107 = (v92 + v105);
                v88 = v194;
                v108 = v103;
                v86 = v188;
                v100(v107, v102, v108);
                v84 = v185;
                (*(v95 + 56))(v92, 0, 3, v94);
              }

              v81 = v198;
            }
          }

          v122 = v205;
          swift_storeEnumTagMultiPayload();
          sub_252372288(v88, &qword_27F4DB300);
          sub_2525C14A4(v92, v81, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
          (*v84)(v81, 0, 1, v122);
          sub_2525C1574(v209, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
          if ((*v199)(v81, 1, v122) == 1)
          {
            sub_252372288(v81, &qword_27F4DCA28);
            v85 = v207;
          }

          else
          {
            sub_2525C14A4(v81, v203, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
            v85 = v207;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v85 = sub_252368794(0, v85[2] + 1, 1, v85);
            }

            v124 = v85[2];
            v123 = v85[3];
            if (v124 >= v123 >> 1)
            {
              v85 = sub_252368794(v123 > 1, v124 + 1, 1, v85);
            }

            v85[2] = v124 + 1;
            sub_2525C14A4(v203, v85 + ((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v195 + 72) * v124, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
          }

          v83 = &v200[v206];
          v82 = v208 - 1;
        }

        while (v208 != 1);
      }

      else
      {
        v85 = MEMORY[0x277D84F90];
      }

      sub_252385F08(&v239);
      v7 = v167;
      v77 = v178;
    }

    else
    {
      sub_252385F08(&v239);
      v85 = 0;
    }

    *&v237 = v85;
    v125 = *(v174 + 48);
    v126 = v182;
    if (!v125(v182, 1, v7))
    {
      StaticThermostatClusterGroup.activeHold.getter(&v225);
      if (v225 == 2)
      {
        v127 = 2;
      }

      else
      {
        v127 = v225 & 1;
      }

      v126[34] = v127;
    }

    if (!v125(v126, 1, v7))
    {
      v128 = v170;
      StaticThermostatClusterGroup.currentHold(timeZone:)(v77, v170);
      v129 = v169;
      AccessoryControl.ThermostatState.ThermostatHold.init(from:)(v128, v169);
      sub_252377048(v129, &v126[v7[8]], &qword_27F4DCA28);
    }

    if (!v125(v126, 1, v7))
    {
      StaticThermostatClusterGroup.currentActivityState(with:)(v179, &v218);
      v211 = v218;
      LOBYTE(v212) = v219;
      AccessoryControl.ThermostatState.ThermostatActivityState.init(from:)(&v211, &v225);
      v130 = v226;
      v131 = &v182[v7[9]];
      v132 = *v131;
      v133 = *(v131 + 1);
      *v131 = v225;
      v131[16] = v130;
      sub_25235E2A8(v132, v133);
    }

    if (qword_27F4DABD8 != -1)
    {
      swift_once();
    }

    v134 = sub_2526905A0();
    __swift_project_value_buffer(v134, qword_27F4E4B30);
    v229 = v236;
    v230 = v237;
    v231 = v238;
    v225 = v232;
    v226 = v233;
    v227 = v234;
    v228 = v235;
    sub_252385F5C(&v225, &v218);
    v135 = sub_252690580();
    v136 = sub_252692ED0();
    sub_252385F08(&v225);
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *&v211 = v138;
      *v137 = 136315906;
      *(v137 + 4) = sub_2525BDA90(0xD000000000000042, 0x80000002526B1BC0, &v211);
      *(v137 + 12) = 2080;
      *(v137 + 14) = sub_2525BDA90(0xD00000000000002ALL, 0x80000002526B1C10, &v211);
      *(v137 + 22) = 2080;
      v139 = v182;
      swift_beginAccess();
      if (v125(v139, 1, v7))
      {
        v140 = 0;
        v141 = 0xE000000000000000;
      }

      else
      {
        v142 = v139;
        v143 = v168;
        sub_2525C150C(v142, v168, type metadata accessor for AccessoryControl.ThermostatState);
        v144 = sub_2525B5C0C();
        v141 = v145;
        sub_2525C1574(v143, type metadata accessor for AccessoryControl.ThermostatState);
        v140 = v144;
      }

      v146 = sub_2525BDA90(v140, v141, &v211);

      *(v137 + 24) = v146;
      *(v137 + 32) = 2080;
      v222 = v229;
      v223 = v230;
      v224 = v231;
      v218 = v225;
      v219 = v226;
      v220 = v227;
      v221 = v228;
      v147 = sub_2525B545C();
      v149 = sub_2525BDA90(v147, v148, &v211);

      *(v137 + 34) = v149;
      _os_log_impl(&dword_252309000, v135, v136, "%s - %s: Returning state: %s, and config: %s", v137, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v138, -1, -1);
      MEMORY[0x2530A5A40](v137, -1, -1);

      (*(v180 + 8))(v178, v196);
    }

    else
    {

      (*(v180 + 8))(v77, v196);
    }

    (*(v175 + 8))(v179, v176);
    v150 = v182;
    swift_beginAccess();
    sub_25237153C(v150, v171, &qword_27F4DB258);
    swift_beginAccess();
    v151 = v233;
    v153 = v232;
    v152 = v233;
    v211 = v232;
    v212 = v233;
    v154 = v234;
    v155 = v235;
    v156 = v234;
    v157 = v235;
    v213 = v234;
    v214 = v235;
    v158 = v172;
    *v172 = v232;
    v158[1] = v151;
    v158[2] = v154;
    v158[3] = v155;
    v159 = v237;
    v161 = v236;
    v160 = v237;
    v215 = v236;
    v216 = v237;
    v158[4] = v236;
    v158[5] = v159;
    v217 = v238;
    *(v158 + 48) = v238;
    v218 = v153;
    v219 = v152;
    v224 = v238;
    v222 = v161;
    v223 = v160;
    v220 = v156;
    v221 = v157;
    sub_252385F5C(&v211, &v210);
    sub_252385F08(&v218);
    sub_252372288(v150, &qword_27F4DB258);
  }

  else
  {
    (*(v174 + 56))(v171, 1, 1, v7);
    sub_252372288(v59, &qword_27F4DB258);
    v163 = v237;
    v164 = v172;
    v172[4] = v236;
    v164[5] = v163;
    *(v164 + 48) = v238;
    v165 = v233;
    *v164 = v232;
    v164[1] = v165;
    result = v235;
    v164[2] = v234;
    v164[3] = result;
  }

  return result;
}

unint64_t sub_2525B545C()
{
  v1 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v51 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v50 = &v44 - v4;
  v5 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v52 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v55 = &v44 - v8;
  v54 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  v9 = *(v54 - 8);
  v10 = MEMORY[0x28223BE20](v54);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = *(v0 + 80);
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_252693210();

  v60 = 0xD000000000000012;
  v61 = 0x80000002526B1D00;
  if (v15)
  {
    v16 = *(v15 + 16);
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v59 = MEMORY[0x277D84F90];
      sub_25236FF70(0, v16, 0);
      v18 = v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v17 = v59;
      v53 = *(v9 + 72);
      v45 = 0x80000002526AED60;
      v46 = 0x80000002526AED80;
      v49 = 0x80000002526AED40;
      do
      {
        sub_2525C150C(v18, v14, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
        sub_2525C150C(v14, v12, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v19 = v50;
          sub_2525C14A4(v12, v50, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
          v20 = v51;
          sub_2525C150C(v19, v51, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
          if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
          {
            sub_2525C1574(v19, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
            sub_2525C1574(v14, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
            v22 = 0x6F54206C69746E55;
            v23 = 0xEE00776F72726F6DLL;
          }

          else
          {
            v34 = v19;
            v35 = *(v21 + 48);
            v36 = *(v21 + 64);
            sub_2525C1574(v34, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
            sub_2525C1574(v14, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
            v37 = sub_25268DB10();
            (*(*(v37 - 8) + 8))(v20 + v36, v37);
            v38 = sub_25268D990();
            (*(*(v38 - 8) + 8))(v20 + v35, v38);
            v22 = 0xD000000000000011;
            v23 = v49;
          }
        }

        else
        {
          v24 = v55;
          sub_2525C14A4(v12, v55, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
          v25 = v24;
          v26 = v52;
          sub_2525C150C(v25, v52, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
          v28 = (*(*(v27 - 8) + 48))(v26, 3, v27);
          if (v28 > 1)
          {
            if (v28 == 2)
            {
              sub_2525C1574(v55, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
              sub_2525C1574(v14, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
              v22 = 0xD000000000000013;
              v23 = v46;
            }

            else
            {
              sub_2525C1574(v55, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
              sub_2525C1574(v14, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
              v22 = 0x696E696665646E49;
              v23 = 0xEC000000796C6574;
            }
          }

          else if (v28)
          {
            sub_2525C1574(v55, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
            sub_2525C1574(v14, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
            v23 = 0xE400000000000000;
            v22 = 1701736270;
          }

          else
          {
            v29 = v52;
            v30 = *v52;
            v31 = *(v27 + 48);
            v47 = *(v27 + 64);
            v48 = v31;
            v57 = 0;
            v58 = 0xE000000000000000;
            sub_252693210();

            v57 = 0xD000000000000014;
            v58 = v45;
            v56 = v30;
            v32 = sub_252693370();
            MEMORY[0x2530A4800](v32);

            v22 = v57;
            v23 = v58;
            sub_2525C1574(v55, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
            sub_2525C1574(v14, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
            v33 = sub_25268DB10();
            (*(*(v33 - 8) + 8))(&v29[v47], v33);
            sub_252372288(&v29[v48], &qword_27F4DB2D8);
          }
        }

        v59 = v17;
        v40 = *(v17 + 16);
        v39 = *(v17 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_25236FF70((v39 > 1), v40 + 1, 1);
          v17 = v59;
        }

        *(v17 + 16) = v40 + 1;
        v41 = v17 + 16 * v40;
        *(v41 + 32) = v22;
        *(v41 + 40) = v23;
        v18 += v53;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v17 = 0;
  }

  v57 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3558);
  v42 = sub_252692C00();
  MEMORY[0x2530A4800](v42);

  MEMORY[0x2530A4800](93, 0xE100000000000000);
  return v60;
}