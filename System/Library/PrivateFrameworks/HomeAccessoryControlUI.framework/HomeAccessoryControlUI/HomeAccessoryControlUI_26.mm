uint64_t _s22HomeAccessoryControlUI06MatterC6SolverC10SourcePathV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268E310();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3720);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if ((sub_25268E6E0() & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for MatterControlSolver.SourcePath(0);
  v15 = a1;
  v23 = v14;
  v24 = a1;
  v16 = *(v14 + 20);
  v17 = *(v11 + 48);
  sub_25237153C(v15 + v16, v13, &qword_27F4DB3A0);
  sub_25237153C(a2 + v16, &v13[v17], &qword_27F4DB3A0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_252372288(v13, &qword_27F4DB3A0);
LABEL_11:
      v19 = sub_2523E34C8(*(v24 + *(v23 + 24)), *(a2 + *(v23 + 24)));
      return v19 & 1;
    }

    goto LABEL_7;
  }

  sub_25237153C(v13, v10, &qword_27F4DB3A0);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_252372288(v13, &qword_27F4E3720);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v13[v17], v4);
  sub_2525F0FDC(&qword_27F4DAF10, MEMORY[0x277D15558]);
  v21 = sub_252692B70();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_252372288(v13, &qword_27F4DB3A0);
  if (v21)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = 0;
  return v19 & 1;
}

uint64_t _s22HomeAccessoryControlUI06MatterC6SolverC14controlModules4with16valueDestinationSayAA6DeviceV0C6ModuleVGAC6SourceV_AA0bC0V05ValueK0OtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2525F3C94(a1);
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    goto LABEL_8;
  }

  v8 = *(a1 + *(type metadata accessor for MatterControlSolver.Source(0) + 28));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_2525EEE70(*(v8 + 16), 0, &qword_27F4DB518, &unk_2526A97C0, MEMORY[0x277D15558]);
    v11 = *(sub_25268E310() - 8);
    v21 = sub_2525EF168(&v22, (v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80))), v9, v8);

    sub_2523A4D1C();
    if (v21 == v9)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v10 = MEMORY[0x277D84F90];
LABEL_7:
  v6 = sub_2525F3B18(v10);
  v7 = v12;

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_8:
  result = (*(v7 + 24))(a1, a2, v6, v7);
  if (!result)
  {
    v14 = (*(v7 + 8))(a1, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE30);
    v15 = (type metadata accessor for Device.ControlModule(0) - 8);
    v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_252694E90;
    v18 = (v17 + v16);
    *(v18 + 3) = 0;
    *(v18 + 4) = 0;
    v19 = v15[9];
    v20 = type metadata accessor for AccessoryControlModule.Layout(0);
    (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
    result = v17;
    *(v18 + 1) = 0;
    *(v18 + 2) = v14;
    *v18 = 0;
  }

  return result;
}

uint64_t _s22HomeAccessoryControlUI06MatterC6SolverC14controlModules4withSayAA6DeviceV0C6ModuleVG0A9DataModel06StaticeJ0V_tFZ_0()
{
  v0 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v0 - 8);
  v63 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_25268DA10();
  v2 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_25268EE60();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v54 - v11;
  v12 = sub_25268F600();
  v13 = v12;
  if (*(v12 + 16))
  {
    v14 = *(v12 + 64);
    v55 = v12 + 64;
    v15 = 1 << *(v12 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v14;
    v54 = (v15 + 63) >> 6;
    v58 = (v2 + 8);
    v59 = v7 + 16;
    v60 = v7;
    v57 = v7 + 8;

    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    v56 = v13;
    while (v17)
    {
      v65 = v20;
LABEL_12:
      v22 = v60;
      v23 = *(v60 + 16);
      v24 = v66;
      v25 = v67;
      v23(v66, *(v13 + 56) + *(v60 + 72) * (__clz(__rbit64(v17)) | (v19 << 6)), v67);
      v23(v9, v24, v25);
      v64 = v4[12];
      sub_25268EDB0();
      v26 = type metadata accessor for MatterControlSolver.SourcePath(0);
      v27 = *(v26 + 20);
      v28 = sub_25268E310();
      (*(*(v28 - 8) + 56))(&v6[v27], 1, 1, v28);
      v6[*(v26 + 24)] = 0;
      v29 = sub_25268EE30();
      v30 = &v6[v4[5]];
      *v30 = v29;
      v30[1] = v31;
      sub_25268EE00();
      *&v6[v4[7]] = sub_25268EE40();
      sub_25268EDE0();
      v6[v4[9]] = sub_25268ED90() == 1;
      v32 = sub_25268EDC0();
      v33 = &v6[v4[10]];
      *v33 = v32;
      v33[2] = BYTE2(v32) & 1;
      sub_25268EDD0();
      sub_25268ED80();
      v68 = 0x746E696F70646E65;
      v69 = 0xE90000000000002DLL;
      v34 = v61;
      sub_25268EE10();
      sub_2525F0FDC(&qword_27F4DB2B8, MEMORY[0x277CC95F0]);
      v35 = v62;
      v36 = sub_252693370();
      MEMORY[0x2530A4800](v36);

      (*v58)(v34, v35);
      v37 = v68;
      v38 = v69;
      v39 = *(v22 + 8);
      v40 = v67;
      v39(v9, v67);
      v41 = &v6[v4[14]];
      *v41 = v37;
      *(v41 + 1) = v38;
      v6[v64] = 0;
      v42 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      v43 = v63;
      (*(*(v42 - 8) + 56))(v63, 1, 1, v42);
      v44 = _s22HomeAccessoryControlUI06MatterC6SolverC14controlModules4with16valueDestinationSayAA6DeviceV0C6ModuleVGAC6SourceV_AA0bC0V05ValueK0OtFZ_0(v6, v43);
      sub_2525F0B34(v43, type metadata accessor for AccessoryControl.ValueDestination);
      sub_2525F0B34(v6, type metadata accessor for MatterControlSolver.Source);
      result = (v39)(v66, v40);
      v45 = *(v44 + 16);
      v20 = v65;
      v46 = v65[2];
      v47 = v46 + v45;
      if (__OFADD__(v46, v45))
      {
        goto LABEL_28;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v47 > v20[3] >> 1)
      {
        if (v46 <= v47)
        {
          v49 = v46 + v45;
        }

        else
        {
          v49 = v46;
        }

        v20 = sub_252369B5C(isUniquelyReferenced_nonNull_native, v49, 1, v20);
      }

      v17 &= v17 - 1;
      if (*(v44 + 16))
      {
        v50 = (v20[3] >> 1) - v20[2];
        result = type metadata accessor for Device.ControlModule(0);
        if (v50 < v45)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        v13 = v56;
        if (v45)
        {
          v51 = v20[2];
          v52 = __OFADD__(v51, v45);
          v53 = v51 + v45;
          if (v52)
          {
            goto LABEL_31;
          }

          v20[2] = v53;
        }
      }

      else
      {

        v13 = v56;
        if (v45)
        {
          goto LABEL_29;
        }
      }
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v54)
      {

        return v20;
      }

      v17 = *(v55 + 8 * v21);
      ++v19;
      if (v17)
      {
        v65 = v20;
        v19 = v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2525F0B34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s22HomeAccessoryControlUI06MatterC6SolverC14controlModules4with7handlerSayAA6DeviceV0C6ModuleVG0A9DataModel14ActionEndpointV_AA0bC0V25WriteSpecificationHandler_pSgtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = sub_25268ECE0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MatterControlSolver.Source(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10, v15);
  MatterControlSolver.Source.init(with:)(v13, v17);
  sub_25237153C(a2, &v25, &qword_27F4E3438);
  if (v26)
  {
    sub_25235E1A4(&v25, v28);
    sub_2523C3820(v28, &v25);
    sub_2523C3820(&v25, v6);
    v18 = v26;
    v19 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, v26);
    v20 = *(v19 + 8);
    v21 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
    v20(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    __swift_destroy_boxed_opaque_existential_1Tm(&v25);
    (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  }

  else
  {
    sub_252372288(&v25, &qword_27F4E3438);
    v22 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  }

  sub_2525F19CC(v6, v9, type metadata accessor for AccessoryControl.ValueDestination);
  v23 = _s22HomeAccessoryControlUI06MatterC6SolverC14controlModules4with16valueDestinationSayAA6DeviceV0C6ModuleVGAC6SourceV_AA0bC0V05ValueK0OtFZ_0(v17, v9);
  sub_2525F0B34(v9, type metadata accessor for AccessoryControl.ValueDestination);
  sub_2525F0B34(v17, type metadata accessor for MatterControlSolver.Source);
  return v23;
}

uint64_t sub_2525F0F18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2525F0F88()
{
  result = qword_27F4E3638;
  if (!qword_27F4E3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3638);
  }

  return result;
}

uint64_t sub_2525F0FDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2525F1024()
{
  result = qword_27F4E3650;
  if (!qword_27F4E3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3650);
  }

  return result;
}

unint64_t sub_2525F1078()
{
  result = qword_27F4E3670;
  if (!qword_27F4E3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3670);
  }

  return result;
}

uint64_t sub_2525F10CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterControlSolver.SourcePath(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2525F1134()
{
  result = qword_27F4E3690;
  if (!qword_27F4E3690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3690);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MatterControlSolver.ControlIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MatterControlSolver.ControlIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2525F13CC()
{
  sub_25268E710();
  if (v0 <= 0x3F)
  {
    sub_2525F16E4(319, &qword_27F4E36B8, MEMORY[0x277D15558]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2525F149C()
{
  type metadata accessor for MatterControlSolver.SourcePath(319);
  if (v0 <= 0x3F)
  {
    sub_2525F16E4(319, &qword_27F4E36D0, MEMORY[0x277D15F48]);
    if (v1 <= 0x3F)
    {
      sub_2525F15E8();
      if (v2 <= 0x3F)
      {
        sub_25268F8E0();
        if (v3 <= 0x3F)
        {
          sub_2525F1694();
          if (v4 <= 0x3F)
          {
            sub_2525F16E4(319, &qword_27F4E36E8, MEMORY[0x277D15BD0]);
            if (v5 <= 0x3F)
            {
              sub_25268E2F0();
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

void sub_2525F15E8()
{
  if (!qword_27F4E36D8)
  {
    sub_25268E310();
    sub_25268E8E0();
    sub_2525F0FDC(&qword_27F4DAF08, MEMORY[0x277D15558]);
    v0 = sub_252692B10();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E36D8);
    }
  }
}

void sub_2525F1694()
{
  if (!qword_27F4E36E0)
  {
    v0 = sub_252693130();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E36E0);
    }
  }
}

void sub_2525F16E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_252693130();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2525F174C()
{
  result = qword_27F4E36F0;
  if (!qword_27F4E36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E36F0);
  }

  return result;
}

unint64_t sub_2525F17A4()
{
  result = qword_27F4E36F8;
  if (!qword_27F4E36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E36F8);
  }

  return result;
}

unint64_t sub_2525F17FC()
{
  result = qword_27F4E3700;
  if (!qword_27F4E3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3700);
  }

  return result;
}

uint64_t sub_2525F1850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70646E65 && a2 == 0xEC00000068746150;
  if (v4 || (sub_2526933B0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B72657473756C63 && a2 == 0xEB00000000646E69 || (sub_2526933B0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496C6F72746E6F63 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_2526933B0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_2525F1978()
{
  result = qword_27F4E3708;
  if (!qword_27F4E3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3708);
  }

  return result;
}

uint64_t sub_2525F19CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525F1A3C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MatterControlSolver.Source(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F1B28, 0, 0);
}

uint64_t sub_2525F1B28()
{
  v30 = v0;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_2526905A0();
  __swift_project_value_buffer(v5, qword_27F4E4B18);
  sub_25237153C(v4, v1, &qword_27F4DB218);
  sub_2525F5B30(v3, v2, type metadata accessor for MatterControlSolver.Source);
  v6 = sub_252690580();
  v7 = sub_252692F00();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  if (v8)
  {
    v10 = v0[9];
    v27 = v0[6];
    v28 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446722;
    v13 = sub_252693550();
    v15 = sub_2525BDA90(v13, v14, &v29);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    sub_25237153C(v9, v10, &qword_27F4DB218);
    v16 = sub_252692C20();
    v18 = v17;
    sub_252372288(v9, &qword_27F4DB218);
    v19 = sub_2525BDA90(v16, v18, &v29);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2080;
    sub_2525F5B30(v28, v27, type metadata accessor for MatterControlSolver.Source);
    v20 = sub_252692C00();
    v22 = v21;
    sub_2525F5B98(v28, type metadata accessor for MatterControlSolver.Source);
    v23 = sub_2525BDA90(v20, v22, &v29);

    *(v11 + 24) = v23;
    _os_log_impl(&dword_252309000, v6, v7, "DeviceTypeSolver (%{public}s) does not support incremental set despite it being called\nstate: %s\nsource: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v12, -1, -1);
    MEMORY[0x2530A5A40](v11, -1, -1);
  }

  else
  {
    v24 = v0[7];

    sub_2525F5B98(v24, type metadata accessor for MatterControlSolver.Source);
    sub_252372288(v9, &qword_27F4DB218);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_2525F1E6C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MatterControlSolver.Source(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F5BFC, 0, 0);
}

uint64_t sub_2525F1F58(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 25) = a2;
  *(v4 + 32) = a1;
  *(v4 + 56) = type metadata accessor for MatterControlSolver.Source(0);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F2000, 0, 0);
}

uint64_t sub_2525F2000()
{
  v26 = v0;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = sub_2526905A0();
  __swift_project_value_buffer(v3, qword_27F4E4B18);
  sub_2525F5B30(v2, v1, type metadata accessor for MatterControlSolver.Source);
  v4 = sub_252690580();
  v5 = sub_252692F00();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v24 = *(v0 + 64);
    v8 = *(v0 + 25);
    v9 = *(v0 + 32);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136446722;
    v12 = sub_252693550();
    v14 = sub_2525BDA90(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v0 + 16) = v9;
    *(v0 + 24) = v8 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3C8);
    v15 = sub_252692C20();
    v17 = sub_2525BDA90(v15, v16, &v25);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    sub_2525F5B30(v7, v24, type metadata accessor for MatterControlSolver.Source);
    v18 = sub_252692C00();
    v20 = v19;
    sub_2525F5B98(v7, type metadata accessor for MatterControlSolver.Source);
    v21 = sub_2525BDA90(v18, v20, &v25);

    *(v10 + 24) = v21;
    _os_log_impl(&dword_252309000, v4, v5, "DeviceTypeSolver (%{public}s) does not support picker set despite it being called\nstate: %s\nsource: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v11, -1, -1);
    MEMORY[0x2530A5A40](v10, -1, -1);
  }

  else
  {

    sub_2525F5B98(v7, type metadata accessor for MatterControlSolver.Source);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2525F22D4(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 25) = a2;
  *(v4 + 32) = a1;
  *(v4 + 56) = type metadata accessor for MatterControlSolver.Source(0);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F5C08, 0, 0);
}

uint64_t sub_2525F237C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v6[12] = type metadata accessor for MatterControlSolver.Source(0);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F2424, 0, 0);
}

uint64_t sub_2525F2424()
{
  v31 = v0;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[6];
  v5 = sub_2526905A0();
  __swift_project_value_buffer(v5, qword_27F4E4B18);
  sub_2525F5B30(v2, v1, type metadata accessor for MatterControlSolver.Source);
  sub_2523E165C(v4, v3);
  v6 = sub_252690580();
  v7 = sub_252692F00();
  sub_2523E2E24(v4, v3);
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  if (v8)
  {
    v28 = v0[13];
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[6];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v14 = 136446722;
    v15 = sub_252693550();
    v27 = v7;
    v17 = sub_2525BDA90(v15, v16, &v30);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v0[2] = v12;
    v0[3] = v13;
    v0[4] = v10;
    v0[5] = v11;
    sub_2523E165C(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4B8);
    v18 = sub_252692C20();
    v20 = sub_2525BDA90(v18, v19, &v30);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    sub_2525F5B30(v9, v28, type metadata accessor for MatterControlSolver.Source);
    v21 = sub_252692C00();
    v23 = v22;
    sub_2525F5B98(v9, type metadata accessor for MatterControlSolver.Source);
    v24 = sub_2525BDA90(v21, v23, &v30);

    *(v14 + 24) = v24;
    _os_log_impl(&dword_252309000, v6, v27, "DeviceTypeSolver (%{public}s) does not support picker button set despite it being called\nstate: %s\nsource: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v29, -1, -1);
    MEMORY[0x2530A5A40](v14, -1, -1);
  }

  else
  {

    sub_2525F5B98(v9, type metadata accessor for MatterControlSolver.Source);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_2525F273C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v6[12] = type metadata accessor for MatterControlSolver.Source(0);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F5C04, 0, 0);
}

uint64_t sub_2525F27E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MatterControlSolver.Source(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F28D0, 0, 0);
}

uint64_t sub_2525F28D0()
{
  v30 = v0;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_2526905A0();
  __swift_project_value_buffer(v5, qword_27F4E4B18);
  sub_25237153C(v4, v1, &qword_27F4DB440);
  sub_2525F5B30(v3, v2, type metadata accessor for MatterControlSolver.Source);
  v6 = sub_252690580();
  v7 = sub_252692F00();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  if (v8)
  {
    v10 = v0[9];
    v27 = v0[6];
    v28 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446722;
    v13 = sub_252693550();
    v15 = sub_2525BDA90(v13, v14, &v29);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    sub_25237153C(v9, v10, &qword_27F4DB440);
    v16 = sub_252692C20();
    v18 = v17;
    sub_252372288(v9, &qword_27F4DB440);
    v19 = sub_2525BDA90(v16, v18, &v29);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2080;
    sub_2525F5B30(v28, v27, type metadata accessor for MatterControlSolver.Source);
    v20 = sub_252692C00();
    v22 = v21;
    sub_2525F5B98(v28, type metadata accessor for MatterControlSolver.Source);
    v23 = sub_2525BDA90(v20, v22, &v29);

    *(v11 + 24) = v23;
    _os_log_impl(&dword_252309000, v6, v7, "DeviceTypeSolver (%{public}s) does not support status button set despite it being called\nstate: %s\nsource: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v12, -1, -1);
    MEMORY[0x2530A5A40](v11, -1, -1);
  }

  else
  {
    v24 = v0[7];

    sub_2525F5B98(v24, type metadata accessor for MatterControlSolver.Source);
    sub_252372288(v9, &qword_27F4DB440);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_2525F2C14(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MatterControlSolver.Source(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F5C00, 0, 0);
}

uint64_t sub_2525F2D00@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_25268F610();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = sub_25268F890();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268E1B0();
  v12 = sub_25268E1A0();
  sub_25268E150();

  v13 = sub_25268F870();
  v14 = sub_25268E340();
  if (*(v13 + 16) && (v15 = sub_252372350(v14), (v16 & 1) != 0))
  {
    (*(v2 + 16))(v4, *(v13 + 56) + *(v2 + 72) * v15, v1);

    (*(v2 + 32))(v7, v4, v1);
    v17 = sub_25268F600();
    v18 = sub_25268E320();
    if (*(v17 + 16))
    {
      v19 = sub_252367690(v18);
      if (v20)
      {
        v21 = v19;
        v29 = *(v17 + 56);
        v22 = sub_25268EE60();
        v23 = *(v22 - 8);
        v24 = v23;
        v25 = v29 + *(v23 + 72) * v21;
        v26 = v30;
        (*(v23 + 16))(v30, v25, v22);
        (*(v2 + 8))(v7, v1);
        (*(v9 + 8))(v11, v8);

        return (*(v24 + 56))(v26, 0, 1, v22);
      }
    }

    (*(v2 + 8))(v7, v1);
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
  v28 = sub_25268EE60();
  return (*(*(v28 - 8) + 56))(v30, 1, 1, v28);
}

uint64_t sub_2525F3094(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return (sub_2525F4C64)(a1, a2);
}

uint64_t sub_2525F3148(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_2525F1E6C(a1, a2);
}

uint64_t sub_2525F3200(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_252401074;

  return sub_2525F22D4(v4, v5, a2);
}

uint64_t sub_2525F32C4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_252401074;

  return sub_2525F273C(v4, v5, v6, v7, a2);
}

uint64_t sub_2525F3398(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_2525F2C14(a1, a2);
}

uint64_t sub_2525F3454(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return (sub_2525F557C)(a1, a2);
}

uint64_t sub_2525F3508(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_2525F1E6C(a1, a2);
}

uint64_t sub_2525F35C0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_252401074;

  return sub_2525F22D4(v4, v5, a2);
}

uint64_t sub_2525F3684(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_252401074;

  return sub_2525F273C(v4, v5, v6, v7, a2);
}

uint64_t sub_2525F3758(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_2525F2C14(a1, a2);
}

uint64_t sub_2525F3810(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_2525F1A3C(a1, a2);
}

uint64_t sub_2525F38C8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2523E233C;

  return sub_2525F1F58(v4, v5, a2);
}

uint64_t sub_2525F398C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_252401074;

  return sub_2525F237C(v4, v5, v6, v7, a2);
}

uint64_t sub_2525F3A60(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_2525F27E4(a1, a2);
}

ValueMetadata *sub_2525F3B18(uint64_t a1)
{
  v2 = sub_25268E310();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 104);
  v7(v6, *MEMORY[0x277D15548], v2, v4);
  v8 = sub_2525F8418(v6, a1);
  v9 = *(v3 + 8);
  v9(v6, v2);
  if (v8)
  {
    return &_s5OnOffVN_0;
  }

  (v7)(v6, *MEMORY[0x277D15550], v2);
  v11 = sub_2525F8418(v6, a1);
  v9(v6, v2);
  if (v11)
  {
    return &_s8IdentifyVN;
  }

  else
  {
    return 0;
  }
}

ValueMetadata *sub_2525F3C94(uint64_t a1)
{
  v2 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v2);
  v89 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v87 = v81 - v5;
  MEMORY[0x28223BE20](v6);
  v84 = v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB500);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = (v81 - v9);
  v10 = sub_25268F130();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v83 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v88 = v81 - v14;
  MEMORY[0x28223BE20](v15);
  v90 = v81 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v81 - v18;
  v20 = sub_25268E310();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v86 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v81 - v24;
  v26 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
  v92 = a1;
  sub_25237153C(a1 + v26, v19, &qword_27F4DB3A0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_252372288(v19, &qword_27F4DB3A0);
  }

  else
  {
    (*(v21 + 32))(v25, v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB518);
    v27 = *(v21 + 80);
    v85 = v10;
    v28 = (v27 + 32) & ~v27;
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_252694E90;
    (*(v21 + 16))(v29 + v28, v25, v20);
    v30 = sub_2525F3B18(v29);
    v81[1] = v31;
    v82 = v30;
    swift_setDeallocating();
    v32 = *(v21 + 8);
    v33 = v29 + v28;
    v10 = v85;
    v32(v33, v20);
    swift_deallocClassInstance();
    v32(v25, v20);
    result = v82;
    if (v82)
    {
      return result;
    }
  }

  v36 = v91;
  v35 = v92;
  sub_25237153C(v92 + *(v2 + 24), v91, &qword_27F4DB500);
  if ((*(v11 + 48))(v36, 1, v10) == 1)
  {
    sub_252372288(v36, &qword_27F4DB500);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v37 = sub_2526905A0();
    __swift_project_value_buffer(v37, qword_27F4E4B18);
    v38 = v89;
    sub_2525F5B30(v35, v89, type metadata accessor for MatterControlSolver.Source);
    v39 = sub_252690580();
    v40 = sub_252692EF0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v93 = v42;
      *v41 = 136315394;
      *(v41 + 4) = sub_2525BDA90(0xD000000000000033, 0x80000002526B1D60, &v93);
      *(v41 + 12) = 2080;
      sub_2525F5B30(v38, v87, type metadata accessor for MatterControlSolver.Source);
      v43 = sub_252692C20();
      v45 = v44;
      sub_2525F5B98(v38, type metadata accessor for MatterControlSolver.Source);
      v46 = sub_2525BDA90(v43, v45, &v93);

      *(v41 + 14) = v46;
      _os_log_impl(&dword_252309000, v39, v40, "%s Failed to find a DeviceTypeSolver because we don't have any device types! %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v42, -1, -1);
      MEMORY[0x2530A5A40](v41, -1, -1);
    }

    else
    {

      sub_2525F5B98(v38, type metadata accessor for MatterControlSolver.Source);
    }
  }

  else
  {
    v47 = v90;
    (*(v11 + 32))(v90, v36, v10);
    v48 = *(v11 + 16);
    v49 = v88;
    v48(v88, v47, v10);
    v50 = (*(v11 + 88))(v49, v10);
    v51 = *MEMORY[0x277D15EE0];
    v53 = *(v11 + 8);
    v52 = v11 + 8;
    v91 = v53;
    if (v50 == v51)
    {
      v91(v47, v10);
      return &_s11RobotVacuumVN;
    }

    v91(v49, v10);
    v54 = v86;
    (*(v21 + 104))(v86, *MEMORY[0x277D15548], v20);
    v55 = v52;
    v56 = v47;
    v57 = sub_25268F120();
    (*(v21 + 8))(v54, v20);
    if (v57)
    {
      v91(v56, v10);
      return &_s5OnOffVN_0;
    }

    v89 = v55;
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v58 = sub_2526905A0();
    __swift_project_value_buffer(v58, qword_27F4E4B18);
    v59 = v83;
    v60 = v90;
    v48(v83, v90, v10);
    v61 = v84;
    sub_2525F5B30(v92, v84, type metadata accessor for MatterControlSolver.Source);
    v62 = sub_252690580();
    v63 = sub_252692EF0();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v85 = v10;
      v66 = v87;
      v67 = v91;
      v92 = v65;
      v93 = v65;
      *v64 = 136315650;
      *(v64 + 4) = sub_2525BDA90(0xD000000000000033, 0x80000002526B1D60, &v93);
      *(v64 + 12) = 2082;
      v68 = sub_25268F0F0();
      v69 = v59;
      v70 = v68;
      v72 = v71;
      v67(v69, v10);
      v73 = sub_2525BDA90(v70, v72, &v93);

      *(v64 + 14) = v73;
      *(v64 + 22) = 2080;
      sub_2525F5B30(v61, v66, type metadata accessor for MatterControlSolver.Source);
      v74 = sub_252692C20();
      v75 = v61;
      v77 = v76;
      sub_2525F5B98(v75, type metadata accessor for MatterControlSolver.Source);
      v78 = sub_2525BDA90(v74, v77, &v93);

      *(v64 + 24) = v78;
      _os_log_impl(&dword_252309000, v62, v63, "%s Failed to find a DeviceTypeSolver for device type (%{public}s). Source: %s", v64, 0x20u);
      v79 = v92;
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v79, -1, -1);
      MEMORY[0x2530A5A40](v64, -1, -1);

      v67(v90, v85);
    }

    else
    {

      sub_2525F5B98(v61, type metadata accessor for MatterControlSolver.Source);
      v80 = v91;
      v91(v59, v10);
      v80(v60, v10);
    }
  }

  return 0;
}

uint64_t sub_2525F471C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for Device.Control(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2525FD734(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_252372288(v4, &qword_27F4E2B78);
    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_25258BA78(v4, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
    v10 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_252694E90;
    v13 = v12 + v11;
    sub_2525F5B30(v8, v13, type metadata accessor for Device.Control);
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v14 = (v13 + v10[7]);
    v15 = (v13 + v10[8]);
    *v14 = 0;
    v14[1] = 0;
    *v15 = 0;
    v15[1] = 0;
    sub_2525F5B98(v8, type metadata accessor for Device.Control);
    return v12;
  }
}

uint64_t sub_2525F4968(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3728);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Device.Control(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_2525FE050(a1, v4, v7);
  sub_252372288(v4, &qword_27F4E3728);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_252372288(v7, &qword_27F4E2B78);
    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_25258BA78(v7, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
    v14 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_252694E90;
    v17 = v16 + v15;
    sub_2525F5B30(v11, v17, type metadata accessor for Device.Control);
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v18 = (v17 + v14[7]);
    v19 = (v17 + v14[8]);
    *v18 = 0;
    v18[1] = 0;
    *v19 = 0;
    v19[1] = 0;
    sub_2525F5B98(v11, type metadata accessor for Device.Control);
    return v16;
  }
}

uint64_t sub_2525F4C64(uint64_t *a1, uint64_t a2)
{
  v2[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD58);
  v2[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3730);
  v2[4] = swift_task_alloc();
  v4 = sub_25268F740();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v2[7] = v5;
  v2[8] = v6;
  v2[9] = a1[4];

  return MEMORY[0x2822009F8](sub_2525F4DA4, 0, 0);
}

uint64_t sub_2525F4DA4()
{
  sub_252692E00();
  *(v0 + 80) = sub_252692DF0();
  v2 = sub_252692DE0();

  return MEMORY[0x2822009F8](sub_2525F4E38, v2, v1);
}

uint64_t sub_2525F4E38()
{
  v1 = *(v0 + 24);

  sub_2525F2D00(v1);

  return MEMORY[0x2822009F8](sub_2525F4EB0, 0, 0);
}

uint64_t sub_2525F4EB0()
{
  v1 = *(v0 + 24);
  v2 = sub_25268EE60();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  if (v4 == 1)
  {
    sub_252372288(v1, &qword_27F4DAD58);
    (*(v6 + 56))(v7, 1, 1, v5);
LABEL_4:
    sub_252372288(*(v0 + 32), &qword_27F4E3730);
LABEL_5:

    v8 = *(v0 + 8);

    return v8();
  }

  sub_25268ED30();
  (*(v3 + 8))(v1, v2);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    goto LABEL_4;
  }

  v10 = *(v0 + 72);
  (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
  if (v10 == 1)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
    goto LABEL_5;
  }

  if (*(v0 + 64))
  {
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *v11 = v0;
    v11[1] = sub_2525F518C;

    return MEMORY[0x282170198]();
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 104) = v12;
    *v12 = v0;
    v12[1] = sub_2525F5330;

    return MEMORY[0x2821701A0]();
  }
}

uint64_t sub_2525F518C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_2525F5444;
  }

  else
  {
    v2 = sub_2525F52A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2525F52A0()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2525F5330()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2525F54E0;
  }

  else
  {
    v2 = sub_2525F5BF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2525F5444()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2525F54E0()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2525F557C(uint64_t *a1, uint64_t a2)
{
  v2[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD58);
  v2[3] = swift_task_alloc();
  v4 = sub_25268EE60();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v2[6] = v5;
  v2[7] = v6;
  v2[8] = a1[4];

  return MEMORY[0x2822009F8](sub_2525F5684, 0, 0);
}

uint64_t sub_2525F5684()
{
  sub_252692E00();
  *(v0 + 72) = sub_252692DF0();
  v2 = sub_252692DE0();

  return MEMORY[0x2822009F8](sub_2525F5718, v2, v1);
}

uint64_t sub_2525F5718()
{
  v1 = *(v0 + 24);

  sub_2525F2D00(v1);

  return MEMORY[0x2822009F8](sub_2525F5790, 0, 0);
}

uint64_t sub_2525F5790()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_252372288(v3, &qword_27F4DAD58);
LABEL_9:

    v6 = *(v0 + 8);

    return v6();
  }

  v4 = *(v0 + 64);
  (*(v2 + 32))(*(v0 + 48), v3, v1);
  if (v4 == 1 || (*(v0 + 56) & 1) == 0)
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    goto LABEL_9;
  }

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_2525F590C;

  return MEMORY[0x28216F818]();
}

uint64_t sub_2525F590C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2525F5AA8;
  }

  else
  {
    v2 = sub_2525F5A20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2525F5A20()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2525F5AA8()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2525F5B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525F5B98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2525F5C24(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2523E233C;

  return (sub_2525F6DE4)(a1, a2);
}

size_t sub_2525F5CD8(char *a1, uint64_t a2)
{
  v88 = a2;
  v89 = a1;
  v75 = type metadata accessor for Device.Control(0);
  v78 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v77 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v76 = &v70 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v81 = &v70 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0);
  MEMORY[0x28223BE20](v9 - 8);
  v73 = &v70 - v10;
  v87 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v87);
  v80 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB398);
  MEMORY[0x28223BE20](v12 - 8);
  v90 = &v70 - v13;
  v84 = sub_25268FC20();
  v86 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for Device.ControlModule(0);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v79 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - v17;
  v19 = type metadata accessor for AccessoryControlModule.Layout.RVC(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AccessoryControlSolver.Context();
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB390);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v70 - v31;
  sub_2525F7CC4(v88, v26, type metadata accessor for AccessoryControl.ValueDestination);
  v26[*(v24 + 28)] = 0;
  v33 = v89;
  sub_2523AFB64(v89, v26, v32);
  sub_2525F7D2C(v26, type metadata accessor for AccessoryControlSolver.Context);
  sub_25237153C(v32, v29, &qword_27F4DB390);
  if ((*(v20 + 48))(v29, 1, v19) != 1)
  {
    v88 = v32;
    sub_2525F7C5C(v29, v22, type metadata accessor for AccessoryControlModule.Layout.RVC);
    *(v18 + 3) = 0;
    *(v18 + 4) = 0;
    v35 = *(v85 + 28);
    v36 = type metadata accessor for AccessoryControlModule.Layout(0);
    v37 = *(v36 - 8);
    v38 = *(v37 + 56);
    v39 = v37 + 56;
    v38(&v18[v35], 1, 1, v36);
    v40 = MEMORY[0x277D84F90];
    *(v18 + 1) = 0;
    *(v18 + 2) = v40;
    *v18 = 0;
    sub_252372288(&v18[v35], &qword_27F4E2DC0);
    sub_2525F7CC4(v22, &v18[v35], type metadata accessor for AccessoryControlModule.Layout.RVC);
    swift_storeEnumTagMultiPayload();
    v71 = v39;
    v72 = v38;
    v38(&v18[v35], 0, 1, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE30);
    v41 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v83 = *(v83 + 72);
    v34 = swift_allocObject();
    v70 = xmmword_252694E90;
    *(v34 + 16) = xmmword_252694E90;
    sub_2525F7CC4(v18, v34 + v41, type metadata accessor for Device.ControlModule);
    v42 = v90;
    sub_25268F8D0();
    v43 = v86;
    v44 = v84;
    if ((*(v86 + 48))(v42, 1, v84) == 1)
    {
      sub_2525F7D2C(v22, type metadata accessor for AccessoryControlModule.Layout.RVC);
      sub_252372288(v88, &qword_27F4DB390);
      v45 = &qword_27F4DB398;
      v46 = v90;
    }

    else
    {
      v47 = v43;
      v48 = *(v43 + 32);
      v49 = v82;
      v48(v82, v90, v44);
      if ((v33[*(v87 + 48)] & 1) == 0)
      {
        v90 = v22;
        v50 = sub_25268E310();
        v51 = v73;
        (*(*(v50 - 8) + 56))(v73, 1, 1, v50);
        v91[0] = 4;
        v52 = v80;
        sub_2525EA7E4(v51, v91, v80);
        sub_252372288(v51, &qword_27F4DB3A0);
        v53 = v81;
        sub_2523B9B34(v52, v81);
        v54 = v53;
        v55 = v74;
        sub_25237153C(v54, v74, &qword_27F4E2B78);
        v56 = v78;
        if ((*(v78 + 48))(v55, 1, v75) == 1)
        {
          sub_252372288(v55, &qword_27F4E2B78);
          v57 = MEMORY[0x277D84F90];
        }

        else
        {
          v58 = v55;
          v59 = v76;
          sub_2525F7C5C(v58, v76, type metadata accessor for Device.Control);
          sub_2525F7CC4(v59, v77, type metadata accessor for Device.Control);
          v57 = sub_252369B34(0, 1, 1, MEMORY[0x277D84F90]);
          v61 = v57[2];
          v60 = v57[3];
          if (v61 >= v60 >> 1)
          {
            v57 = sub_252369B34(v60 > 1, v61 + 1, 1, v57);
          }

          sub_2525F7D2C(v76, type metadata accessor for Device.Control);
          v57[2] = v61 + 1;
          sub_2525F7C5C(v77, v57 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v61, type metadata accessor for Device.Control);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
        v62 = (type metadata accessor for Device.ControlGroup(0) - 8);
        v63 = (*(*v62 + 80) + 32) & ~*(*v62 + 80);
        v64 = swift_allocObject();
        *(v64 + 16) = v70;
        v65 = (v64 + v63);
        *v65 = v57;
        type metadata accessor for Device.ControlGroup.LayoutType(0);
        swift_storeEnumTagMultiPayload();
        v66 = (v65 + v62[7]);
        v67 = (v65 + v62[8]);
        *v66 = 0;
        v66[1] = 0;
        *v67 = 0;
        v67[1] = 0;
        v68 = v79;
        *(v79 + 3) = 0;
        *(v68 + 4) = 0;
        v72(&v68[*(v85 + 28)], 1, 1, v36);
        *(v68 + 1) = 0;
        *(v68 + 2) = v64;
        *v68 = 0;
        v34 = sub_252369B5C(1uLL, 2, 1, v34);
        sub_252372288(v81, &qword_27F4E2B78);
        sub_2525F7D2C(v80, type metadata accessor for MatterControlSolver.Source);
        (*(v86 + 8))(v82, v44);
        sub_2525F7D2C(v90, type metadata accessor for AccessoryControlModule.Layout.RVC);
        sub_252372288(v88, &qword_27F4DB390);
        *(v34 + 16) = 2;
        sub_2525F7C5C(v68, v34 + v41 + v83, type metadata accessor for Device.ControlModule);
        goto LABEL_14;
      }

      (*(v47 + 8))(v49, v44);
      sub_2525F7D2C(v22, type metadata accessor for AccessoryControlModule.Layout.RVC);
      v45 = &qword_27F4DB390;
      v46 = v88;
    }

    sub_252372288(v46, v45);
LABEL_14:
    sub_2525F7D2C(v18, type metadata accessor for Device.ControlModule);
    return v34;
  }

  sub_252372288(v32, &qword_27F4DB390);
  sub_252372288(v29, &qword_27F4DB390);
  return 0;
}

uint64_t sub_2525F688C(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB398);
  v1[3] = swift_task_alloc();
  v2 = sub_25268FC20();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F6984, 0, 0);
}

uint64_t sub_2525F6984()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  type metadata accessor for MatterControlSolver.Source(0);
  sub_25268F8D0();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_252372288(v0[3], &qword_27F4DB398);
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
      *v7 = 0;
      _os_log_impl(&dword_252309000, v5, v6, "Failed to send RVC to dock. RVC cluster group not found in control source.", v7, 2u);
      MEMORY[0x2530A5A40](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v10 = sub_2526905A0();
    __swift_project_value_buffer(v10, qword_27F4E4B18);
    v11 = sub_252690580();
    v12 = sub_252692F10();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_252309000, v11, v12, "Sending RVC to dock", v13, 2u);
      MEMORY[0x2530A5A40](v13, -1, -1);
    }

    v14 = swift_task_alloc();
    v0[7] = v14;
    *v14 = v0;
    v14[1] = sub_2525F6C48;

    return MEMORY[0x282170668]();
  }
}

uint64_t sub_2525F6C48()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2525F6D5C;
  }

  else
  {
    v2 = sub_2525F5A20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2525F6D5C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2525F6DE4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = type metadata accessor for MatterControlSolver.Source(0);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F6E90, 0, 0);
}

uint64_t sub_2525F6E90()
{
  v44 = v0;
  v1 = v0[2];
  v2 = type metadata accessor for MatterControlSolver.SourcePath(0);
  if (*(v1 + *(v2 + 24)) == 4)
  {
    v3 = v2;
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
      v1 = v0[2];
    }

    v4 = v0[6];
    v5 = sub_2526905A0();
    __swift_project_value_buffer(v5, qword_27F4E4B18);
    sub_2525F7CC4(v1, v4, type metadata accessor for MatterControlSolver.Source);
    v6 = sub_252690580();
    v7 = sub_252692F10();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[6];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v43 = v11;
      *v10 = 136446210;
      v12 = *(v9 + *(v3 + 24));
      if (v12 <= 3)
      {
        v36 = 0xE400000000000000;
        v37 = 1701736270;
        v38 = 0x80000002526AE100;
        v39 = 0xD00000000000001ELL;
        if (v12 != 2)
        {
          v39 = 0x61502F7472617453;
          v38 = 0xEB00000000657375;
        }

        if (*(v9 + *(v3 + 24)))
        {
          v37 = 0xD00000000000001CLL;
          v36 = 0x80000002526AE120;
        }

        if (*(v9 + *(v3 + 24)) <= 1u)
        {
          v19 = v37;
        }

        else
        {
          v19 = v39;
        }

        if (v12 <= 1)
        {
          v20 = v36;
        }

        else
        {
          v20 = v38;
        }
      }

      else
      {
        v13 = 0xED0000646C6F4820;
        v14 = 0x746E696F70746553;
        v15 = 0xEE00746573657250;
        v16 = 0x20746E6572727543;
        if (v12 != 7)
        {
          v16 = 0xD000000000000014;
          v15 = 0x80000002526AE0E0;
        }

        if (v12 != 6)
        {
          v14 = v16;
          v13 = v15;
        }

        v17 = 0xEE006B636F44206FLL;
        v18 = 0x54206E7275746552;
        if (v12 != 4)
        {
          v18 = 0x52207463656C6553;
          v17 = 0xEC000000736D6F6FLL;
        }

        if (*(v9 + *(v3 + 24)) <= 5u)
        {
          v19 = v18;
        }

        else
        {
          v19 = v14;
        }

        if (v12 <= 5)
        {
          v20 = v17;
        }

        else
        {
          v20 = v13;
        }
      }

      sub_2525F7D2C(v0[6], type metadata accessor for MatterControlSolver.Source);
      v40 = sub_2525BDA90(v19, v20, &v43);

      *(v10 + 4) = v40;
      _os_log_impl(&dword_252309000, v6, v7, "User pressed %{public}s button.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x2530A5A40](v11, -1, -1);
      MEMORY[0x2530A5A40](v10, -1, -1);
    }

    else
    {

      sub_2525F7D2C(v9, type metadata accessor for MatterControlSolver.Source);
    }

    v41 = swift_task_alloc();
    v0[7] = v41;
    *v41 = v0;
    v41[1] = sub_2525F7430;
    v42 = v0[2];

    return sub_2525F688C(v42);
  }

  else
  {
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
      v1 = v0[2];
    }

    v21 = v0[5];
    v22 = sub_2526905A0();
    __swift_project_value_buffer(v22, qword_27F4E4B18);
    sub_2525F7CC4(v1, v21, type metadata accessor for MatterControlSolver.Source);
    v23 = sub_252690580();
    v24 = sub_252692EF0();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[5];
    if (v25)
    {
      v27 = v0[4];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43 = v29;
      *v28 = 136315138;
      sub_2525F7CC4(v26, v27, type metadata accessor for MatterControlSolver.Source);
      v30 = sub_252692C20();
      v32 = v31;
      sub_2525F7D2C(v26, type metadata accessor for MatterControlSolver.Source);
      v33 = sub_2525BDA90(v30, v32, &v43);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_252309000, v23, v24, "Trying to set Binary state got an unexpected control type: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x2530A5A40](v29, -1, -1);
      MEMORY[0x2530A5A40](v28, -1, -1);
    }

    else
    {

      sub_2525F7D2C(v26, type metadata accessor for MatterControlSolver.Source);
    }

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_2525F7430()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2525F7580(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v44 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig();
  MEMORY[0x28223BE20](v44);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessoryControl(0);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v43 - v7;
  v9 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB398);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v43 - v19;
  v21 = sub_25268FC20();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v9;
  v51 = a1;
  sub_25268F8D0();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_252372288(v20, &qword_27F4DB398);
    return MEMORY[0x277D84F90];
  }

  (*(v22 + 32))(v24, v20, v21);
  v25 = sub_25268E310();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  v52 = 2;
  sub_2525EA7E4(v8, &v52, v11);
  sub_252372288(v8, &qword_27F4DB3A0);
  sub_2523B3570(v11, v24, v50, v17);
  sub_2525F7D2C(v11, type metadata accessor for MatterControlSolver.Source);
  sub_25237153C(v17, v14, &qword_27F4DB120);
  if ((*(v48 + 48))(v14, 1, v49) == 1)
  {
    sub_252372288(v14, &qword_27F4DB120);
    sub_252372288(v17, &qword_27F4DB120);
    (*(v22 + 8))(v24, v21);
    return MEMORY[0x277D84F90];
  }

  v27 = v46;
  sub_2525F7C5C(v14, v46, type metadata accessor for AccessoryControl);
  v28 = *MEMORY[0x277D15D98];
  v29 = sub_25268F0E0();
  v30 = v47;
  (*(*(v29 - 8) + 104))(v47, v28, v29);
  v31 = v44;
  *(v30 + *(v44 + 20)) = 0;
  *(v30 + *(v31 + 24)) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
  v32 = (type metadata accessor for AccessoryControlGroup(0) - 8);
  v33 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
  v34 = swift_allocObject();
  v50 = v34;
  *(v34 + 16) = xmmword_252694E90;
  v35 = v34 + v33;
  sub_2525F7CC4(v27, v35, type metadata accessor for AccessoryControl.ElementIdentifier);
  v36 = v35 + v32[7];
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0) + 48);
  sub_2525F7CC4(v27, v36, type metadata accessor for AccessoryControl);
  sub_2525F7CC4(v30, v36 + v37, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
  type metadata accessor for AccessoryControlGroup.Layout(0);
  swift_storeEnumTagMultiPayload();
  v38 = (v51 + *(v45 + 20));
  v40 = *v38;
  v39 = v38[1];
  v41 = (v35 + v32[9]);
  v42 = (v35 + v32[8]);
  *v42 = v40;
  v42[1] = v39;
  *v41 = 0;
  v41[1] = 0;

  sub_2525F7D2C(v30, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
  sub_2525F7D2C(v27, type metadata accessor for AccessoryControl);
  sub_252372288(v17, &qword_27F4DB120);
  (*(v22 + 8))(v24, v21);
  return v50;
}

uint64_t sub_2525F7C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525F7CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525F7D2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2525F7E5C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v26 = a7;
  v27 = a1;
  v10 = v7;
  v28 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v16 = *(a3 + 16);
  v17 = MEMORY[0x277D84F90];
  if (!v16)
  {
    return v17;
  }

  v29 = MEMORY[0x277D84F90];
  v24 = a5;
  a5(0, v16, 0);
  v17 = v29;
  v18 = *(a6(0) - 8);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v25 = *(v18 + 72);
  while (1)
  {
    v27(v19);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v29 = v17;
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    if (v21 >= v20 >> 1)
    {
      v24(v20 > 1, v21 + 1, 1);
      v17 = v29;
    }

    *(v17 + 16) = v21 + 1;
    sub_2525FD6B0(v15, v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v26);
    v19 += v25;
    if (!--v16)
    {
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2525F80D0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for Device.Control(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_25237060C(0, v10, 0);
  v11 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a3 + v18;
  v13 = *(v7 + 72);
  while (1)
  {
    v19(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_25237060C(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_2525FD6B0(v9, v11 + v18 + v15 * v13, type metadata accessor for Device.Control);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_2525F82E0(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_2525F8310(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_2525FD5A0(a4, a5);
  }

  while ((sub_252692B70() & 1) == 0);
  return v9 != v10;
}

BOOL sub_2525F8460(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t sub_2525F8530@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v24 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v8;
    v22 = a4;
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v7);
      v17 = v24(v10);
      if (v4)
      {
        return (*v14)(v10, v7);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v7);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v8 = v21;
        a4 = v22;
        return (*(v8 + 56))(a4, v18, 1, v7);
      }
    }

    v8 = v21;
    a4 = v22;
    (*(v21 + 32))(v22, v10, v7);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v8 + 56))(a4, v18, 1, v7);
}

uint64_t sub_2525F8704@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = result;
    v8 = (a2 + 56);
    while (1)
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v13 = *(v8 - 3);
      v14 = v10;
      v15 = v9;

      v11 = v7(&v13);
      result = v14;
      v12 = v15;
      if (v4)
      {
      }

      if (v11)
      {
        break;
      }

      v8 += 4;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    *a3 = v13;
    *(a3 + 16) = result;
    *(a3 + 24) = v12;
  }

  else
  {
LABEL_6:
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2525F87E0(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = (a3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    v11 = v8;
    v9 = a1(&v11);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2525F890C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v25 = a5;
  v11 = a3(0);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v23 - v15;
  v17 = *(a2 + 16);
  if (v17)
  {
    v23 = v13;
    v24 = a6;
    v18 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v19 = *(v12 + 72);
    while (1)
    {
      sub_2525FD5E8(v18, v16, a4);
      v20 = a1(v16);
      if (v6)
      {
        return sub_2525FD650(v16, a4);
      }

      if (v20)
      {
        break;
      }

      sub_2525FD650(v16, a4);
      v18 += v19;
      if (!--v17)
      {
        v21 = 1;
        a6 = v24;
        goto LABEL_10;
      }
    }

    a6 = v24;
    sub_2525FD6B0(v16, v24, v25);
    v21 = 0;
LABEL_10:
    v13 = v23;
  }

  else
  {
    v21 = 1;
  }

  return (*(v12 + 56))(a6, v21, 1, v13, v14);
}

uint64_t sub_2525F8AA4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v28 = a3;
  v38 = sub_25268F6F0();
  MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v31 = &v28 - v9;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v33 = v8 + 32;
  v34 = v8;
  v29 = (v8 + 8);
  v30 = v8 + 16;
  v35 = a2;

  v16 = 0;
  v17 = v31;
  if (v13)
  {
    while (1)
    {
      v36 = v4;
      v18 = v16;
LABEL_9:
      v19 = v34;
      v20 = v38;
      (*(v34 + 16))(v17, *(v35 + 48) + *(v34 + 72) * (__clz(__rbit64(v13)) | (v18 << 6)), v38);
      v21 = *(v19 + 32);
      v22 = v37;
      v21(v37, v17, v20);
      v23 = v36;
      v24 = v32(v22);
      v4 = v23;
      if (v23)
      {
        (*v29)(v37, v38);
      }

      if (v24)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v29)(v37, v38);
      v16 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v27 = v28;
    v21(v28, v37, v38);
    v26 = v27;
    v25 = 0;
    return (*(v34 + 56))(v26, v25, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v25 = 1;
        v26 = v28;
        return (*(v34 + 56))(v26, v25, 1, v38);
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v36 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t StaticRVCClusterGroup.canChangeCleaningMode.getter()
{
  v0 = sub_25268FB50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25268FAE0();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25268FBD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268FA30();
  v11 = sub_25268FBC0();
  (*(v8 + 8))(v10, v7);
  if (v11 & 1) != 0 || (sub_25268FB30() & 1) != 0 || (sub_25268FB60(), v12 = sub_25268FAC0(), (*(v21 + 8))(v6, v4), (v12))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3738);
    v13 = *(v1 + 72);
    v14 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_25269FCC0;
    v16 = v15 + v14;
    v17 = *(v1 + 104);
    v17(v16, *MEMORY[0x277D16858], v0);
    v17(v16 + v13, *MEMORY[0x277D16840], v0);
    v17(v16 + 2 * v13, *MEMORY[0x277D16860], v0);
    v17(v16 + 3 * v13, *MEMORY[0x277D16848], v0);
    sub_25268FB70();
    LOBYTE(v13) = sub_2525F8310(v3, v15, MEMORY[0x277D168A0], &qword_27F4E3750, MEMORY[0x277D168A0]);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v1 + 8))(v3, v0);
    v18 = v13 ^ 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t StaticRVCClusterGroup.shouldShowReturnToDock.getter()
{
  v0 = sub_25268FB50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268FB70();
  v4 = (*(v1 + 88))(v3, v0);
  v6 = v4 == *MEMORY[0x277D16880] || v4 == *MEMORY[0x277D16888] || v4 == *MEMORY[0x277D16878];
  v7 = v6;
  if (v6)
  {
    return v7;
  }

  v8 = v4 == *MEMORY[0x277D16868] || v4 == *MEMORY[0x277D16850];
  v9 = v8 || v4 == *MEMORY[0x277D16898];
  v10 = v9 || v4 == *MEMORY[0x277D16870];
  v11 = v10 || v4 == *MEMORY[0x277D16858];
  v12 = v11 || v4 == *MEMORY[0x277D16840];
  v13 = v12 || v4 == *MEMORY[0x277D16860];
  v14 = v13 || v4 == *MEMORY[0x277D16848];
  if (v14 || v4 == *MEMORY[0x277D16890])
  {
    return v7;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t StaticRVCClusterGroup.canChangeServiceAreas.getter()
{
  v0 = sub_25268FB50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB438);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_25268FBD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268FA30();
  v11 = sub_25268FBC0();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    goto LABEL_2;
  }

  sub_25268FA40();
  v18 = sub_25268E4F0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v6, 1, v18) == 1)
  {
    sub_252372288(v6, &qword_27F4DB438);
LABEL_6:
    v17 = 0;
    return v17 & 1;
  }

  v20 = sub_25268E480();
  (*(v19 + 8))(v6, v18);
  if ((v20 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_2:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3738);
  v12 = *(v1 + 72);
  v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25269FCC0;
  v15 = v14 + v13;
  v16 = *(v1 + 104);
  v16(v15, *MEMORY[0x277D16858], v0);
  v16(v15 + v12, *MEMORY[0x277D16840], v0);
  v16(v15 + 2 * v12, *MEMORY[0x277D16860], v0);
  v16(v15 + 3 * v12, *MEMORY[0x277D16848], v0);
  sub_25268FB70();
  LOBYTE(v12) = sub_2525F8310(v3, v14, MEMORY[0x277D168A0], &qword_27F4E3750, MEMORY[0x277D168A0]);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v1 + 8))(v3, v0);
  v17 = v12 ^ 1;
  return v17 & 1;
}

uint64_t ServiceArea.pickerButtonSelectedRoomOptions.getter()
{
  v1 = sub_25268E440();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v5[2] = v0;
  v3 = sub_2525F7E5C(sub_2523C3688, v5, v2, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option, sub_252370024, MEMORY[0x277D155B8], type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);

  return v3;
}

uint64_t StaticRVCClusterGroup.isCleaningCurrentArea.getter()
{
  v1 = sub_25268E4A0();
  v66 = *(v1 - 8);
  v67 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v64 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB490);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v59 - v6;
  v7 = sub_25268E4D0();
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x28223BE20](v7);
  v63 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB460);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v59 - v10;
  v12 = sub_25268E3C0();
  v72 = *(v12 - 8);
  v73 = v12;
  MEMORY[0x28223BE20](v12);
  v71 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB438);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v59 - v15;
  v17 = sub_25268E4F0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v74 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25268FB50();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v59 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v59 - v28;
  sub_25268FB70();
  v30 = (*(v21 + 88))(v29, v20);
  v31 = *MEMORY[0x277D16880];
  if (v30 == v31)
  {
    goto LABEL_2;
  }

  v32 = v30;
  if (v30 == *MEMORY[0x277D16888])
  {
    return 2;
  }

  if (v30 == *MEMORY[0x277D16878])
  {
LABEL_2:
    v62 = v0;
    sub_25268FA40();
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_252372288(v16, &qword_27F4DB438);
      return 2;
    }

LABEL_16:
    v34 = v74;
    (*(v18 + 32))();
    if ((sub_25268E370() & 1) == 0)
    {
      (*(v18 + 8))(v34, v17);
      return 2;
    }

    v60 = v17;
    v61 = v18;
    v35 = sub_25268E410();
    if (!v35)
    {
      (*(v61 + 8))(v34, v60);
      return 2;
    }

    v36 = v35;
    sub_25268E380();
    v37 = v34;
    v39 = v72;
    v38 = v73;
    if ((*(v72 + 48))(v11, 1, v73) == 1)
    {
      (*(v61 + 8))(v37, v60);

      sub_252372288(v11, &qword_27F4DB460);
      return 0;
    }

    v40 = *(v39 + 32);
    v41 = v71;
    v40(v71, v11, v38);
    if (sub_2525F8310(v41, v36, MEMORY[0x277D155B8], &qword_27F4E3748, MEMORY[0x277D155B8]))
    {
    }

    else
    {
      v42 = *(v36 + 16);

      if (v42)
      {
        (*(v61 + 8))(v74, v60);
        (*(v72 + 8))(v41, v73);
        return 0;
      }
    }

    sub_25268FB70();
    (*(v21 + 104))(v24, v31, v20);
    v43 = sub_25268FB40();
    v44 = *(v21 + 8);
    v44(v24, v20);
    v44(v27, v20);
    if ((v43 & 1) == 0)
    {
      (*(v61 + 8))(v74, v60);
      (*(v72 + 8))(v41, v73);
      return 1;
    }

    v45 = v74;
    v46 = sub_25268E430();
    v47 = sub_25268E4E0();
    if (v47)
    {
      v48 = v47;
      MEMORY[0x28223BE20](v47);
      *(&v59 - 2) = v41;
      v49 = v68;
      sub_2525F8530(sub_2525FD718, v48, MEMORY[0x277D15600], v68);

      v50 = v69;
      v51 = v70;
      if ((*(v69 + 48))(v49, 1, v70) != 1)
      {
        v53 = v63;
        (*(v50 + 32))(v63, v49, v51);
        v54 = v64;
        sub_25268E4C0();
        v56 = v65;
        v55 = v66;
        v57 = v67;
        (*(v66 + 104))(v65, *MEMORY[0x277D155E8], v67);
        sub_2525FD5A0(&qword_27F4DB4E8, MEMORY[0x277D155F0]);
        sub_252692D40();
        sub_252692D40();
        v58 = *(v55 + 8);
        v58(v56, v57);
        v58(v54, v57);
        (*(v50 + 8))(v53, v51);
        (*(v61 + 8))(v74, v60);
        v52 = v76 == v75;
        goto LABEL_36;
      }

      (*(v61 + 8))(v74, v60);
    }

    else
    {
      (*(v61 + 8))(v45, v60);
      v49 = v68;
      (*(v69 + 56))(v68, 1, 1, v70);
    }

    v52 = v46 ^ 1;
    sub_252372288(v49, &qword_27F4DB490);
LABEL_36:
    (*(v72 + 8))(v41, v73);
    return v52 & 1;
  }

  result = 2;
  if (v32 != *MEMORY[0x277D16868] && v32 != *MEMORY[0x277D16850] && v32 != *MEMORY[0x277D16898] && v32 != *MEMORY[0x277D16870] && v32 != *MEMORY[0x277D16858] && v32 != *MEMORY[0x277D16840] && v32 != *MEMORY[0x277D16860] && v32 != *MEMORY[0x277D16848] && v32 != *MEMORY[0x277D16890])
  {
    sub_2526933A0();
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t StaticRVCClusterGroup.cleaningCompleted.getter()
{
  v0 = sub_25268FB50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_25268FB70();
  (*(v1 + 104))(v3, *MEMORY[0x277D16850], v0);
  v7 = sub_25268FB40();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t StaticRVCClusterGroup.currentTitle.getter()
{
  v0 = sub_25268FB50();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15[-v6];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  sub_25268FB70();
  v10 = *(v1 + 104);
  v16 = *MEMORY[0x277D16850];
  v10(v7);
  v11 = sub_25268FB40();
  v12 = *(v1 + 8);
  v12(v7, v0);
  v12(v9, v0);
  if (v11)
  {
    return sub_252692C40();
  }

  sub_25268FB70();
  v13 = (*(v1 + 88))(v4, v0);
  if (v13 == *MEMORY[0x277D16880])
  {
    goto LABEL_3;
  }

  if (v13 == *MEMORY[0x277D16888])
  {
    return sub_252692C40();
  }

  if (v13 == *MEMORY[0x277D16878])
  {
LABEL_3:
    StaticRVCClusterGroup.isCleaningCurrentArea.getter();
    return sub_252692C40();
  }

  if (v13 == *MEMORY[0x277D16868] || v13 == v16 || v13 == *MEMORY[0x277D16898] || v13 == *MEMORY[0x277D16870] || v13 == *MEMORY[0x277D16858] || v13 == *MEMORY[0x277D16840] || v13 == *MEMORY[0x277D16860] || v13 == *MEMORY[0x277D16848] || v13 == *MEMORY[0x277D16890])
  {
    return sub_252692C40();
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t ServiceArea.pickerButtonMapOptions.getter()
{
  v35 = sub_25268E470();
  v0 = *(v35 - 8);
  v1 = MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v36 = &v27 - v3;
  v4 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_25268E420();
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = *(v7 + 16);
    if (v9)
    {
      v38 = MEMORY[0x277D84F90];
      v10 = v7;
      sub_252370024(0, v9, 0);
      v8 = v38;
      v12 = *(v0 + 16);
      v11 = v0 + 16;
      v13 = v10 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v29 = *(v11 + 56);
      v30 = v12;
      v31 = v11;
      v27 = v10;
      v28 = (v11 - 8);
      do
      {
        v37 = v8;
        v15 = v35;
        v14 = v36;
        v16 = v30;
        v30(v36, v13, v35);
        v17 = v34;
        v16(v34, v14, v15);
        *v6 = sub_25268E450();
        type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
        swift_storeEnumTagMultiPayload();
        v18 = sub_25268E460();
        v20 = v19;
        v21 = *v28;
        (*v28)(v17, v15);
        v21(v14, v15);
        v22 = v33;
        v23 = (v6 + *(v33 + 20));
        *v23 = v18;
        v23[1] = v20;
        v8 = v37;
        *(v6 + *(v22 + 24)) = 2;
        v38 = v8;
        v25 = *(v8 + 16);
        v24 = *(v8 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_252370024(v24 > 1, v25 + 1, 1);
          v8 = v38;
        }

        *(v8 + 16) = v25 + 1;
        sub_2525FD6B0(v6, v8 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v25, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
        v13 += v29;
        --v9;
      }

      while (v9);
    }
  }

  return v8;
}

uint64_t ServiceArea.pickerButtonRoomOptions.getter()
{
  v1 = sub_25268E3E0();
  v5 = v0;
  v2 = sub_2525F7E5C(sub_2523C3984, &v4, v1, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option, sub_252370024, MEMORY[0x277D155B8], type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);

  return v2;
}

void *ServiceArea.allRoomOptions(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-v4];
  v6 = sub_25268E470();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25237153C(a1, v5, &qword_27F4DB4A8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_252372288(v5, &qword_27F4DB4A8);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v11 = sub_25268E3D0();
    MEMORY[0x28223BE20](v11);
    *&v13[-16] = v1;
    v12 = sub_252365DB8(sub_2523C3AA0, &v13[-32], v11);

    (*(v7 + 8))(v9, v6);
    return v12;
  }
}

uint64_t ServiceArea.allRoomsSelected.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_25268E470();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25268E440();
  if (result)
  {
    if (*(result + 16))
    {
      v8 = result;
      sub_25268E3F0();
      if ((*(v4 + 48))(v2, 1, v3) == 1)
      {
        sub_252372288(v2, &qword_27F4DB4A8);
        v9 = *(sub_25268E3E0() + 16);
      }

      else
      {
        (*(v4 + 32))(v6, v2, v3);
        v10 = sub_25268E3D0();
        (*(v4 + 8))(v6, v3);
        v9 = *(v10 + 16);
      }

      v11 = *(v8 + 16);

      return v9 == v11;
    }

    else
    {

      return 1;
    }
  }

  return result;
}

uint64_t ServiceArea.nowCleaningArea.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25268E440();
  if (v2)
  {
    v3 = v2;
    MEMORY[0x28223BE20](v2);
    sub_2525F8530(sub_2523C3A64, v3, MEMORY[0x277D155B8], a1);
  }

  else
  {
    v5 = sub_25268E3C0();
    v6 = *(*(v5 - 8) + 56);

    return v6(a1, 1, 1, v5);
  }
}

BOOL StaticRVCClusterGroup.canChangeRunMode.getter()
{
  v0 = sub_25268FB50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25268FAE0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  sub_25268FB60();
  sub_25268FAB0();
  v11 = MEMORY[0x2530A1640](v10, v8);
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3738);
    v13 = *(v1 + 72);
    v14 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_25269FCC0;
    v16 = v15 + v14;
    v17 = *(v1 + 104);
    v17(v16, *MEMORY[0x277D16858], v0);
    v17(v16 + v13, *MEMORY[0x277D16840], v0);
    v17(v16 + 2 * v13, *MEMORY[0x277D16860], v0);
    v17(v16 + 3 * v13, *MEMORY[0x277D16848], v0);
    sub_25268FB70();
    v18 = sub_2525F8310(v3, v15, MEMORY[0x277D168A0], &qword_27F4E3750, MEMORY[0x277D168A0]);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v1 + 8))(v3, v0);
    return !v18;
  }

  else
  {
    return 0;
  }
}

uint64_t AccessoryControl.PickerButtonViewConfig.Option.init(serviceMap:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = sub_25268E450();
  type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  swift_storeEnumTagMultiPayload();
  v4 = sub_25268E460();
  v6 = v5;
  v7 = sub_25268E470();
  (*(*(v7 - 8) + 8))(a1, v7);
  result = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v9 = (a2 + *(result + 20));
  *v9 = v4;
  v9[1] = v6;
  *(a2 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_2525FB2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v50);
  v56 = (&v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_25268E4D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3740);
  v7 = MEMORY[0x28223BE20](v46);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v54 = &v45 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  MEMORY[0x28223BE20](v11);
  v52 = &v45 - v14;
  v55 = sub_25268E3C0();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB490);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v45 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v45 - v24;
  v26 = sub_25268E4E0();
  if (v26)
  {
    v27 = v26;
    v47 = v13;
    MEMORY[0x28223BE20](v26);
    *(&v45 - 2) = a1;
    v28 = v57;
    sub_2525F8530(sub_2525FD718, v27, MEMORY[0x277D15600], v25);
    v57 = v28;

    v13 = v47;
  }

  else
  {
    (*(v5 + 56))(v25, 1, 1, v4);
  }

  (*(v53 + 16))(v16, a1, v55);
  sub_25237153C(v25, v23, &qword_27F4DB490);
  sub_25237153C(v23, v20, &qword_27F4DB490);
  if ((*(v5 + 48))(v20, 1, v4) == 1)
  {
    sub_252372288(v20, &qword_27F4DB490);
    v29 = 1;
  }

  else
  {
    v30 = v48;
    (*(v5 + 32))(v48, v20, v4);
    sub_25268E4C0();
    (*(v5 + 8))(v30, v4);
    v29 = 0;
  }

  v31 = sub_25268E4A0();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v13, v29, 1, v31);
  v33 = v13;
  v34 = v52;
  sub_2525FD530(v33, v52);
  *v56 = sub_25268E3A0();
  swift_storeEnumTagMultiPayload();
  v50 = sub_25268E390();
  v48 = v35;
  v36 = v54;
  sub_25237153C(v34, v54, &qword_27F4E3740);
  v37 = v36;
  v38 = v49;
  sub_25237153C(v37, v49, &qword_27F4E3740);
  if ((*(v32 + 48))(v38, 1, v31) == 1)
  {
    v39 = 4;
LABEL_17:
    sub_252372288(v54, &qword_27F4E3740);
    sub_252372288(v52, &qword_27F4E3740);
    sub_252372288(v23, &qword_27F4DB490);
    (*(v53 + 8))(v16, v55);
    sub_252372288(v25, &qword_27F4DB490);
    v41 = v51;
    sub_2525FD6B0(v56, v51, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    result = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
    v43 = (v41 + *(result + 20));
    v44 = v48;
    *v43 = v50;
    v43[1] = v44;
    *(v41 + *(result + 24)) = v39;
    return result;
  }

  v40 = (*(v32 + 88))(v38, v31);
  if (v40 == *MEMORY[0x277D155D0])
  {
    v39 = 2;
    goto LABEL_17;
  }

  if (v40 == *MEMORY[0x277D155E8])
  {
    v39 = 1;
    goto LABEL_17;
  }

  if (v40 == *MEMORY[0x277D155D8])
  {
    v39 = 3;
    goto LABEL_17;
  }

  if (v40 == *MEMORY[0x277D155E0])
  {
    v39 = 0;
    goto LABEL_17;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t AccessoryControl.PickerButtonViewConfig.Option.init(serviceArea:progress:isCurrentArea:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v44 = a4;
  v45 = a1;
  v41 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v41);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB490);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_25268E4D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3740);
  MEMORY[0x28223BE20](v39);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  v42 = a2;
  sub_25237153C(a2, v8, &qword_27F4DB490);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_252372288(v8, &qword_27F4DB490);
    if (v40)
    {
      v24 = *MEMORY[0x277D155E8];
      v25 = sub_25268E4A0();
      v26 = *(v25 - 8);
      (*(v26 + 104))(v20, v24, v25);
      (*(v26 + 56))(v20, 0, 1, v25);
    }

    else
    {
      v25 = sub_25268E4A0();
      (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_25268E4C0();
    (*(v10 + 8))(v12, v9);
    v25 = sub_25268E4A0();
    (*(*(v25 - 8) + 56))(v20, 0, 1, v25);
  }

  v27 = v43;
  sub_2525FD530(v20, v23);
  *v27 = sub_25268E3A0();
  swift_storeEnumTagMultiPayload();
  v28 = sub_25268E390();
  v30 = v29;
  sub_25237153C(v23, v17, &qword_27F4E3740);
  sub_25237153C(v17, v14, &qword_27F4E3740);
  sub_25268E4A0();
  v31 = *(v25 - 8);
  if ((*(v31 + 48))(v14, 1, v25) == 1)
  {
    v32 = 4;
LABEL_16:
    sub_252372288(v42, &qword_27F4DB490);
    v34 = sub_25268E3C0();
    (*(*(v34 - 8) + 8))(v45, v34);
    sub_252372288(v17, &qword_27F4E3740);
    sub_252372288(v23, &qword_27F4E3740);
    v35 = v44;
    sub_2525FD6B0(v27, v44, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    result = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
    v37 = (v35 + *(result + 20));
    *v37 = v28;
    v37[1] = v30;
    *(v35 + *(result + 24)) = v32;
    return result;
  }

  v33 = (*(v31 + 88))(v14, v25);
  if (v33 == *MEMORY[0x277D155D0])
  {
    v32 = 2;
    goto LABEL_16;
  }

  if (v33 == *MEMORY[0x277D155E8])
  {
    v32 = 1;
    goto LABEL_16;
  }

  if (v33 == *MEMORY[0x277D155D8])
  {
    v32 = 3;
    goto LABEL_16;
  }

  if (v33 == *MEMORY[0x277D155E0])
  {
    v32 = 0;
    goto LABEL_16;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t sub_2525FBFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v64 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v64);
  v65 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25268E4D0();
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3740);
  v6 = MEMORY[0x28223BE20](v59);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v58 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v62 = &v58 - v12;
  MEMORY[0x28223BE20](v11);
  v70 = &v58 - v13;
  v71 = sub_25268E3C0();
  v73 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v74 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB460);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB490);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v68 = &v58 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v58 - v24;
  v26 = sub_25268E4E0();
  v27 = a1;
  v69 = v25;
  v61 = v4;
  if (v26)
  {
    v28 = v26;
    MEMORY[0x28223BE20](v26);
    *(&v58 - 2) = a1;
    v29 = v72;
    sub_2525F8530(sub_2525FD718, v28, MEMORY[0x277D15600], v25);
    v72 = v29;
  }

  else
  {
    (*(v67 + 56))(v25, 1, 1, v4);
  }

  v30 = sub_25268E3A0();
  sub_25268E380();
  v31 = v73;
  v32 = v71;
  if ((*(v73 + 48))(v17, 1, v71) == 1)
  {
    sub_252372288(v17, &qword_27F4DB460);
    v33 = 0;
  }

  else
  {
    v34 = sub_25268E3A0();
    (*(v73 + 8))(v17, v32);
    v35 = v30 == v34;
    v31 = v73;
    v33 = v35;
  }

  v36 = v67;
  (*(v31 + 16))(v74, v27, v32);
  v37 = v68;
  sub_25237153C(v69, v68, &qword_27F4DB490);
  sub_25237153C(v37, v21, &qword_27F4DB490);
  v38 = v61;
  v39 = v10;
  if ((*(v36 + 48))(v21, 1, v61) == 1)
  {
    sub_252372288(v21, &qword_27F4DB490);
    v40 = v62;
    if (v33)
    {
      v41 = *MEMORY[0x277D155E8];
      v42 = sub_25268E4A0();
      v43 = *(v42 - 8);
      (*(v43 + 104))(v40, v41, v42);
      (*(v43 + 56))(v40, 0, 1, v42);
    }

    else
    {
      v42 = sub_25268E4A0();
      (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
    }
  }

  else
  {
    v44 = v60;
    (*(v36 + 32))(v60, v21, v38);
    v40 = v62;
    sub_25268E4C0();
    (*(v36 + 8))(v44, v38);
    v42 = sub_25268E4A0();
    (*(*(v42 - 8) + 56))(v40, 0, 1, v42);
  }

  v45 = v65;
  v46 = v40;
  v47 = v70;
  sub_2525FD530(v46, v70);
  *v45 = sub_25268E3A0();
  swift_storeEnumTagMultiPayload();
  v48 = sub_25268E390();
  v67 = v49;
  sub_25237153C(v47, v39, &qword_27F4E3740);
  v50 = v63;
  sub_25237153C(v39, v63, &qword_27F4E3740);
  sub_25268E4A0();
  v51 = *(v42 - 8);
  if ((*(v51 + 48))(v50, 1, v42) == 1)
  {
    v52 = 4;
LABEL_24:
    sub_252372288(v39, &qword_27F4E3740);
    sub_252372288(v70, &qword_27F4E3740);
    sub_252372288(v68, &qword_27F4DB490);
    (*(v73 + 8))(v74, v71);
    sub_252372288(v69, &qword_27F4DB490);
    v54 = v66;
    sub_2525FD6B0(v45, v66, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    result = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
    v56 = (v54 + *(result + 20));
    v57 = v67;
    *v56 = v48;
    v56[1] = v57;
    *(v54 + *(result + 24)) = v52;
    return result;
  }

  v53 = (*(v51 + 88))(v50, v42);
  if (v53 == *MEMORY[0x277D155D0])
  {
    v52 = 2;
    goto LABEL_24;
  }

  if (v53 == *MEMORY[0x277D155E8])
  {
    v52 = 1;
    goto LABEL_24;
  }

  if (v53 == *MEMORY[0x277D155D8])
  {
    v52 = 3;
    goto LABEL_24;
  }

  if (v53 == *MEMORY[0x277D155E0])
  {
    v52 = 0;
    goto LABEL_24;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

BOOL sub_2525FC8AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB460);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_25268E3A0();
  sub_25268E380();
  v4 = sub_25268E3C0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_252372288(v2, &qword_27F4DB460);
    return 0;
  }

  else
  {
    v7 = sub_25268E3A0();
    (*(v5 + 8))(v2, v4);
    return v3 == v7;
  }
}

uint64_t sub_2525FC9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v51 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v51);
  v57 = (&v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_25268E4D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3740);
  v7 = MEMORY[0x28223BE20](v47);
  v50 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v55 = &v46 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v53 = &v46 - v14;
  v56 = sub_25268E3C0();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB490);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  v26 = sub_25268E4E0();
  if (v26)
  {
    v27 = v26;
    v48 = v13;
    MEMORY[0x28223BE20](v26);
    *(&v46 - 2) = a1;
    v28 = v58;
    sub_2525F8530(sub_2523C38D0, v27, MEMORY[0x277D15600], v25);
    v58 = v28;

    v13 = v48;
  }

  else
  {
    (*(v5 + 56))(v25, 1, 1, v4);
  }

  (*(v54 + 16))(v16, a1, v56);
  sub_25237153C(v25, v23, &qword_27F4DB490);
  sub_25237153C(v23, v20, &qword_27F4DB490);
  if ((*(v5 + 48))(v20, 1, v4) == 1)
  {
    sub_252372288(v20, &qword_27F4DB490);
    v29 = 1;
  }

  else
  {
    v30 = v49;
    (*(v5 + 32))(v49, v20, v4);
    sub_25268E4C0();
    (*(v5 + 8))(v30, v4);
    v29 = 0;
  }

  v31 = sub_25268E4A0();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v13, v29, 1, v31);
  v33 = v13;
  v34 = v53;
  sub_2525FD530(v33, v53);
  *v57 = sub_25268E3A0();
  swift_storeEnumTagMultiPayload();
  v51 = sub_25268E390();
  v49 = v35;
  v36 = v55;
  sub_25237153C(v34, v55, &qword_27F4E3740);
  v37 = v36;
  v38 = v50;
  sub_25237153C(v37, v50, &qword_27F4E3740);
  if ((*(v32 + 48))(v38, 1, v31) == 1)
  {
    v39 = 4;
LABEL_17:
    sub_252372288(v55, &qword_27F4E3740);
    sub_252372288(v53, &qword_27F4E3740);
    sub_252372288(v23, &qword_27F4DB490);
    (*(v54 + 8))(v16, v56);
    sub_252372288(v25, &qword_27F4DB490);
    v41 = v52;
    sub_2525FD6B0(v57, v52, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v42 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
    v43 = (v41 + *(v42 + 20));
    v44 = v49;
    *v43 = v51;
    v43[1] = v44;
    *(v41 + *(v42 + 24)) = v39;
    return (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  }

  v40 = (*(v32 + 88))(v38, v31);
  if (v40 == *MEMORY[0x277D155D0])
  {
    v39 = 2;
    goto LABEL_17;
  }

  if (v40 == *MEMORY[0x277D155E8])
  {
    v39 = 1;
    goto LABEL_17;
  }

  if (v40 == *MEMORY[0x277D155D8])
  {
    v39 = 3;
    goto LABEL_17;
  }

  if (v40 == *MEMORY[0x277D155E0])
  {
    v39 = 0;
    goto LABEL_17;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t StaticRVCClusterGroup.isCurrentlyCleaning.getter()
{
  v0 = sub_25268FB50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268FB70();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D16880])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x277D16888])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x277D16878])
  {
    return 1;
  }

  v6 = v4 == *MEMORY[0x277D16868] || v4 == *MEMORY[0x277D16850];
  v7 = v6 || v4 == *MEMORY[0x277D16898];
  v8 = v7 || v4 == *MEMORY[0x277D16870];
  v9 = v8 || v4 == *MEMORY[0x277D16858];
  v10 = v9 || v4 == *MEMORY[0x277D16840];
  v11 = v10 || v4 == *MEMORY[0x277D16860];
  v12 = v11 || v4 == *MEMORY[0x277D16848];
  if (v12 || v4 == *MEMORY[0x277D16890])
  {
    return 0;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

BOOL StaticRVCClusterGroup.isBusy.getter()
{
  v0 = sub_25268FB50();
  v1 = *(v0 - 8);
  v2 = v1;
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3738);
  v5 = *(v1 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25269FCC0;
  v8 = v7 + v6;
  v9 = *(v2 + 104);
  v9(v8, *MEMORY[0x277D16858], v0);
  v9(v8 + v5, *MEMORY[0x277D16840], v0);
  v9(v8 + 2 * v5, *MEMORY[0x277D16860], v0);
  v9(v8 + 3 * v5, *MEMORY[0x277D16848], v0);
  sub_25268FB70();
  v10 = sub_2525F8310(v4, v7, MEMORY[0x277D168A0], &qword_27F4E3750, MEMORY[0x277D168A0]);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v2 + 8))(v4, v0);
  return v10;
}

uint64_t sub_2525FD530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2525FD5A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2525FD5E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525FD650(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2525FD6B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525FD734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v76);
  v78 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268E2E0();
  v75 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v74 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v66 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  MEMORY[0x28223BE20](v72);
  v77 = (&v66 - v9);
  v10 = sub_25268F740();
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25268E310();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_25268E8E0();
  v16 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v66 - v23;
  v71 = type metadata accessor for MatterControlSolver.Source(0);
  v25 = *(v71 + 28);
  v83 = a1;
  v26 = *(a1 + v25);
  (*(v13 + 104))(v15, *MEMORY[0x277D15548], v12);
  if (*(v26 + 16) && (v27 = sub_2523674E8(v15), (v28 & 1) != 0))
  {
    v68 = v5;
    v70 = a2;
    v29 = *(v26 + 56) + *(v16 + 72) * v27;
    v30 = *(v16 + 16);
    v31 = v82;
    v30(v21, v29, v82);
    (*(v13 + 8))(v15, v12);
    (*(v16 + 32))(v24, v21, v31);
    v69 = v24;
    v30(v18, v24, v31);
    if ((*(v16 + 88))(v18, v31) == *MEMORY[0x277D15A70])
    {
      (*(v16 + 96))(v18, v31);
      (*(v80 + 32))(v79, v18, v81);
      v67 = sub_25268F720();
      v32 = v73;
      sub_25268E250();
      v33 = sub_25268E2D0();
      v71 = v34;
      v35 = *(v75 + 8);
      v75 = v16;
      v36 = v68;
      v35(v32, v68);
      v37 = v74;
      sub_25268E250();
      v38 = type metadata accessor for IconDescriptor();
      v39 = v77;
      sub_25268E2C0();
      v35(v37, v36);
      v40 = v71;
      *v39 = v33;
      v39[1] = v40;
      *(v39 + *(v38 + 24)) = 0;
      sub_25268E260();
      v71 = sub_25268E2D0();
      v66 = v41;
      v35(v32, v36);
      sub_25268E260();
      v42 = (v39 + *(v72 + 28));
      sub_25268E2C0();
      v35(v37, v36);
      v43 = v66;
      *v42 = v71;
      v42[1] = v43;
      *(v42 + *(v38 + 24)) = 0;
      v44 = v78;
      sub_25237153C(v39, v78, &qword_27F4DAD88);
      v45 = sub_252692340();
      v46 = v76;
      type metadata accessor for ControlTextModifier.Config(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for AccessoryControl.StatusProvider();
      swift_storeEnumTagMultiPayload();
      v47 = v44 + v46[7];
      *v47 = 0u;
      *(v47 + 16) = 0u;
      *(v47 + 32) = -1;
      v48 = v44 + v46[8];
      *v48 = 0u;
      *(v48 + 16) = 0u;
      *(v48 + 32) = -1;
      v49 = v46[12];
      *(v44 + v46[5]) = v45;
      v50 = (v44 + v46[10]);
      *v50 = 0;
      v50[1] = 0xE000000000000000;
      sub_252376DA8(*v47, *(v47 + 8), *(v47 + 16), *(v47 + 24), *(v47 + 32));
      *v47 = 0u;
      *(v47 + 16) = 0u;
      *(v47 + 32) = -1;
      sub_252376DA8(*v48, *(v48 + 8), *(v48 + 16), *(v48 + 24), *(v48 + 32));
      *v48 = 0u;
      *(v48 + 16) = 0u;
      *(v48 + 32) = -1;
      *(v44 + v49) = 0;
      *(v44 + v46[9]) = 0;
      v51 = v70;
      v52 = v83;
      MatterControlSolver.SourcePath.uuid.getter(v70);
      v53 = type metadata accessor for Device.Control(0);
      v54 = v51 + v53[5];
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428) + 48);
      *v54 = v67 & 1;
      *(v54 + 8) = xmmword_2526952D0;
      *(v54 + 24) = 0;
      *(v54 + 32) = 0;
      sub_2525FE774(v44, v54 + v55, type metadata accessor for AccessoryControl.BinaryViewConfig);
      type metadata accessor for Device.Control.Kind(0);
      swift_storeEnumTagMultiPayload();
      sub_2525FE774(v52, v51 + v53[6], type metadata accessor for MatterControlSolver.Source);
      type metadata accessor for Device.Control.Source(0);
      swift_storeEnumTagMultiPayload();
      v56 = MatterControlSolver.Source.controlAccessibilityIdentifier.getter();
      v58 = v57;
      sub_252372288(v39, &qword_27F4DAD88);
      (*(v80 + 8))(v79, v81);
      (*(v75 + 8))(v69, v82);
      v59 = (v51 + v53[8]);
      v60 = v53[10];
      *(v51 + v60) = 16;
      *(v51 + v53[7]) = 0;
      *v59 = v56;
      v59[1] = v58;
      *(v51 + v53[9]) = 1027;
      *(v51 + v60) = 16;
      *(v51 + v53[11]) = 1;
      sub_2525FE7DC(v44, type metadata accessor for AccessoryControl.BinaryViewConfig);
      return (*(*(v53 - 1) + 56))(v51, 0, 1, v53);
    }

    v65 = *(v16 + 8);
    v65(v69, v31);
    v65(v18, v31);
    v62 = type metadata accessor for Device.Control(0);
    v63 = *(*(v62 - 8) + 56);
    v64 = v70;
  }

  else
  {
    (*(v13 + 8))(v15, v12);
    v62 = type metadata accessor for Device.Control(0);
    v63 = *(*(v62 - 8) + 56);
    v64 = a2;
  }

  return v63(v64, 1, 1, v62);
}

uint64_t sub_2525FE050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3728);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v57 - v7;
  v8 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v20 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = (a1 + *(type metadata accessor for MatterControlSolver.Source(0) + 40));
  if (v23[1])
  {
    v24 = type metadata accessor for Device.Control(0);
    v25 = *(*(v24 - 8) + 56);

    return v25(a3, 1, 1, v24);
  }

  else
  {
    v58 = v10;
    v63 = v13;
    v64 = v16;
    v65 = a1;
    v60 = *v23 != 0;
    v27 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28)];
    v28 = type metadata accessor for IconDescriptor();
    v61 = a2;
    v62 = v11;
    v29 = v28;
    v30 = *(v28 + 20);
    v31 = *MEMORY[0x277D16578];
    v32 = sub_25268F910();
    (*(*(v32 - 8) + 104))(&v27[v30], v31, v32);
    *v27 = 0xD00000000000001DLL;
    *(v27 + 1) = 0x80000002526B1DE0;
    v27[*(v29 + 24)] = 0;
    sub_2525FE774(v27, v22, type metadata accessor for IconDescriptor);
    v33 = sub_252692330();
    v59 = sub_252692C40();
    v35 = v34;
    type metadata accessor for ControlTextModifier.Config(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for AccessoryControl.StatusProvider();
    swift_storeEnumTagMultiPayload();
    v36 = &v22[v20[7]];
    *v36 = 0u;
    *(v36 + 1) = 0u;
    v36[32] = -1;
    v37 = &v22[v20[8]];
    *v37 = 0u;
    *(v37 + 1) = 0u;
    v37[32] = -1;
    v38 = v20[12];
    *&v22[v20[5]] = v33;
    v39 = &v22[v20[10]];
    *v39 = 0;
    *(v39 + 1) = 0xE000000000000000;
    sub_252376DA8(*v36, *(v36 + 1), *(v36 + 2), *(v36 + 3), v36[32]);
    *v36 = v59;
    *(v36 + 1) = v35;
    *(v36 + 2) = 0;
    *(v36 + 3) = 0;
    v36[32] = 0;
    sub_252376DA8(*v37, *(v37 + 1), *(v37 + 2), *(v37 + 3), v37[32]);
    *v37 = 0u;
    *(v37 + 1) = 0u;
    v37[32] = -1;
    *&v22[v38] = 0;
    v22[v20[9]] = 0;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428) + 48);
    *v19 = v60;
    *(v19 + 8) = xmmword_2526952D0;
    *(v19 + 3) = 0;
    *(v19 + 4) = 0;
    sub_2525FE774(v22, &v19[v40], type metadata accessor for AccessoryControl.BinaryViewConfig);
    swift_storeEnumTagMultiPayload();
    v41 = v68;
    sub_25237153C(v61, v68, &qword_27F4E3728);
    if ((*(v66 + 48))(v41, 1, v67) == 1)
    {
      sub_252372288(v41, &qword_27F4E3728);
      v42 = v63;
      sub_2525FE774(v19, v63, type metadata accessor for Device.Control.Kind);
    }

    else
    {
      v43 = v58;
      sub_2525FE83C(v41, v58, type metadata accessor for AccessoryControl.DecorationControlConfig);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430);
      v45 = swift_allocBox();
      v47 = v46;
      v48 = *(v44 + 48);
      sub_2525FE774(v19, v46, type metadata accessor for Device.Control.Kind);
      sub_2525FE83C(v43, v47 + v48, type metadata accessor for AccessoryControl.DecorationControlConfig);
      v42 = v63;
      *v63 = v45;
      swift_storeEnumTagMultiPayload();
    }

    v49 = v64;
    sub_2525FE83C(v42, v64, type metadata accessor for Device.Control.Kind);
    v50 = v65;
    MatterControlSolver.SourcePath.uuid.getter(a3);
    v51 = type metadata accessor for Device.Control(0);
    sub_2525FE774(v49, a3 + v51[5], type metadata accessor for Device.Control.Kind);
    sub_2525FE774(v50, a3 + v51[6], type metadata accessor for MatterControlSolver.Source);
    type metadata accessor for Device.Control.Source(0);
    swift_storeEnumTagMultiPayload();
    v52 = MatterControlSolver.Source.controlAccessibilityIdentifier.getter();
    v54 = v53;
    sub_2525FE7DC(v49, type metadata accessor for Device.Control.Kind);
    sub_2525FE7DC(v19, type metadata accessor for Device.Control.Kind);
    v55 = (a3 + v51[8]);
    v56 = v51[10];
    *(a3 + v56) = 16;
    *(a3 + v51[7]) = 0;
    *v55 = v52;
    v55[1] = v54;
    *(a3 + v51[9]) = 1028;
    *(a3 + v56) = 3;
    *(a3 + v51[11]) = 1;
    sub_2525FE7DC(v22, type metadata accessor for AccessoryControl.BinaryViewConfig);
    return (*(*(v51 - 1) + 56))(a3, 0, 1, v51);
  }
}

uint64_t sub_2525FE774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525FE7DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2525FE83C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525FE8EC(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v2[22] = type metadata accessor for MatterControlSolver.Source(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = type metadata accessor for Device.Control(0);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440);
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  v2[29] = swift_task_alloc();
  v2[30] = type metadata accessor for Device.Control.Kind(0);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  sub_252692E00();
  v2[34] = sub_252692DF0();
  v4 = sub_252692DE0();
  v2[35] = v4;
  v2[36] = v3;

  return MEMORY[0x2822009F8](sub_2525FEAB4, v4, v3);
}

uint64_t sub_2525FEAB4()
{
  v91 = v0;
  v1 = sub_2525F3C94(*(v0 + 168));
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    sub_252600E60(*(v0 + 160) + *(*(v0 + 200) + 20), *(v0 + 264), type metadata accessor for Device.Control.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v74 = *(v0 + 264);
          v75 = *(v0 + 232);
          *(v0 + 156) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8) + 48);
          sub_2523714D4(v74, v75, &qword_27F4DB218);
          v88 = (v4[5] + *v4[5]);
          v76 = swift_task_alloc();
          *(v0 + 352) = v76;
          *v76 = v0;
          v76[1] = sub_2525FF9E0;
          v39 = *(v0 + 168);
          v40 = *(v0 + 232);
          v41 = v3;
          v42 = v4;
          v43 = v88;

          return v43(v40, v39, v41, v42);
        }

        if (EnumCaseMultiPayload == 2)
        {
          v6 = *(v0 + 264);
          v7 = *v6;
          v8 = *(v6 + 8);
          *(v0 + 528) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0) + 48);
          *(v0 + 144) = v7;
          v9 = v0 + 144;
          *(v0 + 152) = v8;
          v85 = (v4[6] + *v4[6]);
          v10 = swift_task_alloc();
          *(v0 + 368) = v10;
          *v10 = v0;
          v11 = sub_2525FFC2C;
          goto LABEL_37;
        }

        goto LABEL_24;
      }

      v30 = *(v0 + 264);
      v31 = *v30;
      *(v0 + 296) = *v30;
      v32 = v30[1];
      *(v0 + 304) = v32;
      v33 = v30[2];
      *(v0 + 312) = v33;
      v34 = v30[3];
      *(v0 + 320) = v34;
      v35 = v30[4];
      *(v0 + 328) = v35;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428);
      *&v37 = v31;
      *(&v37 + 1) = v32;
      *&v38 = v33;
      *(&v38 + 1) = v34;
      *(v0 + 140) = *(v36 + 48);
      *(v0 + 72) = v38;
      *(v0 + 56) = v37;
      v27 = v0 + 56;
      *(v0 + 88) = v35;
      v86 = (v4[4] + *v4[4]);
      v28 = swift_task_alloc();
      *(v0 + 336) = v28;
      *v28 = v0;
      v29 = sub_2525FF7C8;
LABEL_18:
      v28[1] = v29;
      v39 = *(v0 + 168);
      v40 = v27;
      v41 = v3;
      v42 = v4;
      v43 = v86;

      return v43(v40, v39, v41, v42);
    }

    if (EnumCaseMultiPayload == 7)
    {
      v44 = *(v0 + 264);
      v45 = *v44;
      *(v0 + 384) = *v44;
      v46 = v44[1];
      *(v0 + 392) = v46;
      v47 = v44[2];
      *(v0 + 400) = v47;
      v48 = v44[3];
      *(v0 + 408) = v48;

      *&v49 = v45;
      *(&v49 + 1) = v46;
      *&v50 = v47;
      *(&v50 + 1) = v48;
      *(v0 + 112) = v50;
      *(v0 + 96) = v49;
      v87 = (v4[7] + *v4[7]);
      v51 = swift_task_alloc();
      *(v0 + 416) = v51;
      *v51 = v0;
      v51[1] = sub_2525FFE34;
      v39 = *(v0 + 168);
      v40 = v0 + 96;
      v41 = v3;
      v42 = v4;
      v43 = v87;

      return v43(v40, v39, v41, v42);
    }

    if (EnumCaseMultiPayload == 8)
    {
      v77 = *(v0 + 264);
      v78 = *(v0 + 224);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98);

      sub_2523714D4(v77, v78, &qword_27F4DB440);
      v89 = (v4[8] + *v4[8]);
      v79 = swift_task_alloc();
      *(v0 + 432) = v79;
      *v79 = v0;
      v79[1] = sub_252600028;
      v39 = *(v0 + 168);
      v40 = *(v0 + 224);
      v41 = v3;
      v42 = v4;
      v43 = v89;

      return v43(v40, v39, v41, v42);
    }

    if (EnumCaseMultiPayload != 9)
    {
LABEL_24:

      if (qword_27F4DABD0 != -1)
      {
        swift_once();
      }

      v52 = *(v0 + 216);
      v53 = *(v0 + 192);
      v55 = *(v0 + 160);
      v54 = *(v0 + 168);
      v56 = sub_2526905A0();
      __swift_project_value_buffer(v56, qword_27F4E4B18);
      sub_252600E60(v55, v52, type metadata accessor for Device.Control);
      sub_252600E60(v54, v53, type metadata accessor for MatterControlSolver.Source);
      v57 = sub_252690580();
      v58 = sub_252692EF0();
      v59 = os_log_type_enabled(v57, v58);
      v60 = *(v0 + 216);
      if (v59)
      {
        v61 = *(v0 + 208);
        v63 = *(v0 + 184);
        v62 = *(v0 + 192);
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v90 = v65;
        *v64 = 136315394;
        sub_252600E60(v60, v61, type metadata accessor for Device.Control);
        v66 = sub_252692C20();
        v68 = v67;
        sub_252600EC8(v60, type metadata accessor for Device.Control);
        v69 = sub_2525BDA90(v66, v68, &v90);

        *(v64 + 4) = v69;
        *(v64 + 12) = 2080;
        sub_252600E60(v62, v63, type metadata accessor for MatterControlSolver.Source);
        v70 = sub_252692C20();
        v72 = v71;
        sub_252600EC8(v62, type metadata accessor for MatterControlSolver.Source);
        v73 = sub_2525BDA90(v70, v72, &v90);

        *(v64 + 14) = v73;
        _os_log_impl(&dword_252309000, v57, v58, "Unknown control kind when trying to set new value. control: %s source: %s", v64, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530A5A40](v65, -1, -1);
        MEMORY[0x2530A5A40](v64, -1, -1);
      }

      else
      {
        v80 = *(v0 + 192);

        sub_252600EC8(v80, type metadata accessor for MatterControlSolver.Source);
        sub_252600EC8(v60, type metadata accessor for Device.Control);
      }

      sub_252600EC8(*(v0 + 264), type metadata accessor for Device.Control.Kind);
      goto LABEL_8;
    }

    v14 = *(v0 + 256);
    v15 = *(v0 + 248);
    *(v0 + 448) = **(v0 + 264);
    v16 = swift_projectBox();
    sub_252600E60(v16, v14, type metadata accessor for Device.Control.Kind);
    sub_252600E60(v14, v15, type metadata accessor for Device.Control.Kind);
    v17 = swift_getEnumCaseMultiPayload();
    if (v17 == 2)
    {
      v81 = *(v0 + 248);
      v82 = *v81;
      v83 = *(v81 + 8);
      *(v0 + 536) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0) + 48);
      *(v0 + 128) = v82;
      v9 = v0 + 128;
      *(v0 + 136) = v83;
      v85 = (v4[6] + *v4[6]);
      v10 = swift_task_alloc();
      *(v0 + 512) = v10;
      *v10 = v0;
      v11 = sub_252600498;
LABEL_37:
      v10[1] = v11;
      v39 = *(v0 + 168);
      v40 = v9;
      v41 = v3;
      v42 = v4;
      v43 = v85;

      return v43(v40, v39, v41, v42);
    }

    if (!v17)
    {
      v18 = *(v0 + 248);
      v19 = *v18;
      *(v0 + 456) = *v18;
      v20 = v18[1];
      *(v0 + 464) = v20;
      v21 = v18[2];
      *(v0 + 472) = v21;
      v22 = v18[3];
      *(v0 + 480) = v22;
      v23 = v18[4];
      *(v0 + 488) = v23;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428);
      *&v25 = v19;
      *(&v25 + 1) = v20;
      *&v26 = v21;
      *(&v26 + 1) = v22;
      *(v0 + 532) = *(v24 + 48);
      *(v0 + 32) = v26;
      *(v0 + 16) = v25;
      v27 = v0 + 16;
      *(v0 + 48) = v23;
      v86 = (v4[4] + *v4[4]);
      v28 = swift_task_alloc();
      *(v0 + 496) = v28;
      *v28 = v0;
      v29 = sub_252600254;
      goto LABEL_18;
    }

    v84 = *(v0 + 248);
    sub_252600EC8(*(v0 + 256), type metadata accessor for Device.Control.Kind);

    sub_252600EC8(v84, type metadata accessor for Device.Control.Kind);
  }

LABEL_8:

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2525FF7C8()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_2526006CC;
  }

  else
  {
    sub_252393F68(v2[37], v2[38], v2[39], v2[40], v2[41]);
    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_2525FF8EC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2525FF8EC()
{
  v1 = *(v0 + 140);
  v2 = *(v0 + 264);

  sub_252600EC8(v2 + v1, type metadata accessor for AccessoryControl.BinaryViewConfig);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2525FF9E0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_2526007EC;
  }

  else
  {
    v5 = sub_2525FFB1C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2525FFB1C()
{
  v1 = *(v0 + 156);
  v2 = *(v0 + 264);
  v3 = *(v0 + 232);

  sub_252372288(v3, &qword_27F4DB218);
  sub_252600EC8(v2 + v1, type metadata accessor for AccessoryControl.IncrementalConfig);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2525FFC2C()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_252600904;
  }

  else
  {
    v5 = sub_2525FFD40;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2525FFD40()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 264);

  sub_252600EC8(v2 + v1, type metadata accessor for AccessoryControl.PickerViewConfig);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2525FFE34()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_252600A00;
  }

  else
  {
    sub_2523E2E24(v2[48], v2[49]);
    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_2525FFF54;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2525FFF54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252600028()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_252600AF8;
  }

  else
  {
    v5 = sub_252600164;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_252600164()
{
  v1 = *(v0 + 224);

  sub_252372288(v1, &qword_27F4DB440);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252600254()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_252600BF0;
  }

  else
  {
    sub_252393F68(v2[57], v2[58], v2[59], v2[60], v2[61]);
    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_252600378;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_252600378()
{
  v1 = *(v0 + 532);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);

  sub_252600EC8(v2, type metadata accessor for Device.Control.Kind);
  sub_252600EC8(v3 + v1, type metadata accessor for AccessoryControl.BinaryViewConfig);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252600498()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_252600D38;
  }

  else
  {
    v5 = sub_2526005AC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2526005AC()
{
  v1 = *(v0 + 536);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);

  sub_252600EC8(v2, type metadata accessor for Device.Control.Kind);
  sub_252600EC8(v3 + v1, type metadata accessor for AccessoryControl.PickerViewConfig);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2526006CC()
{
  v1 = *(v0 + 140);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  v6 = *(v0 + 296);
  v7 = *(v0 + 264);

  sub_252393F68(v6, v5, v4, v2, v3);
  sub_252600EC8(v7 + v1, type metadata accessor for AccessoryControl.BinaryViewConfig);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2526007EC()
{
  v1 = *(v0 + 156);
  v2 = *(v0 + 264);
  v3 = *(v0 + 232);

  sub_252372288(v3, &qword_27F4DB218);
  sub_252600EC8(v2 + v1, type metadata accessor for AccessoryControl.IncrementalConfig);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252600904()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 264);

  sub_252600EC8(v2 + v1, type metadata accessor for AccessoryControl.PickerViewConfig);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252600A00()
{
  v2 = v0[48];
  v1 = v0[49];

  sub_2523E2E24(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252600AF8()
{
  v1 = *(v0 + 224);

  sub_252372288(v1, &qword_27F4DB440);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252600BF0()
{
  v1 = *(v0 + 532);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  v6 = *(v0 + 456);
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);

  sub_252600EC8(v7, type metadata accessor for Device.Control.Kind);
  sub_252393F68(v6, v5, v4, v2, v3);
  sub_252600EC8(v8 + v1, type metadata accessor for AccessoryControl.BinaryViewConfig);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252600D38()
{
  v1 = *(v0 + 536);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);

  sub_252600EC8(v2, type metadata accessor for Device.Control.Kind);
  sub_252600EC8(v3 + v1, type metadata accessor for AccessoryControl.PickerViewConfig);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252600E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252600EC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_252600F28(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v77);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v76);
  v80 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v79 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = v58 - v13;
  MEMORY[0x28223BE20](v14);
  v74 = v58 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3760);
  MEMORY[0x28223BE20](v65);
  v64 = v58 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DD8);
  MEMORY[0x28223BE20](v63);
  v62 = v58 - v17;
  v18 = *a1;
  v88 = a2;
  v89 = a3;
  v90 = a4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B90);
  v20 = sub_25260AD60(&qword_27F4E3150, &qword_27F4E2A48);
  sub_252692700();
  v21 = v84;
  v90 = a4;
  v91 = v84;
  v88 = a2;
  v89 = a3;
  sub_252692710();
  if (v21 != v84)
  {
    v72 = v9 + 80;
    v81 = MEMORY[0x277D84F90];
    v78 = v9;
    v71 = v9 + 16;
    v61 = a4;
    v60 = a3;
    v59 = a2;
    v58[1] = v19;
    v58[0] = v20;
    while (1)
    {
      v84 = v21;
      v88 = a2;
      v89 = a3;
      v90 = a4;
      v23 = v62;
      sub_252692730();
      v88 = a2;
      v89 = a3;
      v90 = a4;
      sub_252692720();
      swift_getKeyPath();
      sub_2526926C0();

      sub_252372288(v23, &qword_27F4E2DD8);
      v24 = v88;
      v25 = v89;
      v26 = v90;
      v84 = v88;
      v85 = v89;
      v86 = v90;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3768);
      v28 = sub_25260AD60(&qword_27F4E3770, &qword_27F4E3778);
      sub_252692700();
      v88 = v24;
      v89 = v25;
      v90 = v26;
      sub_252692710();
      v29 = v87;
      if (v87 != v84)
      {
        break;
      }

LABEL_5:

      a2 = v59;
      a3 = v60;
      v88 = v59;
      v89 = v60;
      a4 = v61;
      v90 = v61;
      sub_252692710();
      v21 = v91;
      if (v91 == v84)
      {
        return v81;
      }
    }

    v30 = v78;
    v70 = v24;
    v69 = v25;
    v68 = v26;
    v67 = v27;
    v66 = v28;
    while (1)
    {
      v84 = v29;
      v88 = v24;
      v89 = v25;
      v90 = v26;
      v31 = v64;
      sub_252692730();
      v88 = v24;
      v89 = v25;
      v90 = v26;
      sub_252692720();
      swift_getKeyPath();
      sub_2526926C0();

      sub_252372288(v31, &qword_27F4E3760);
      v33 = v88;
      v32 = v89;
      v34 = v90;
      v84 = v88;
      v85 = v89;
      v86 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3780);
      sub_25260AD60(&qword_27F4E3788, &qword_27F4E3790);
      sub_252692700();
      v84 = v83;
      v88 = v33;
      v89 = v32;
      v90 = v34;
      sub_252692710();
      v35 = v84;
      if (v84 != v83)
      {
        break;
      }

LABEL_8:

      v24 = v70;
      v25 = v69;
      v88 = v70;
      v89 = v69;
      v26 = v68;
      v90 = v68;
      sub_252692710();
      v29 = v87;
      if (v87 == v84)
      {
        goto LABEL_5;
      }
    }

    while (1)
    {
      v83 = v35;
      v88 = v33;
      v89 = v32;
      v90 = v34;
      v36 = v74;
      sub_252692730();
      v88 = v33;
      v89 = v32;
      v90 = v34;
      sub_252692720();
      sub_2523714D4(v36, v82, &qword_27F4DAE18);
      v37 = v80;
      MEMORY[0x2530A4210](v75);
      sub_25260B694(v37 + *(v76 + 20), v30, type metadata accessor for Device.Control.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload <= 6)
        {
          if (EnumCaseMultiPayload == 5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0);

            sub_252372288(v30, &qword_27F4DB258);
            v40 = 0x74736F6D72656874;
            v39 = 0xEA00000000007461;
            if (v18 > 4)
            {
              goto LABEL_30;
            }
          }

          else
          {
            sub_25260B634(v30, type metadata accessor for Device.Control.Kind);
            v40 = 0x6E41736D72616C61;
            v39 = 0xEF7372656D695464;
            if (v18 > 4)
            {
LABEL_30:
              v44 = 0x7542737574617473;
              if (v18 != 8)
              {
                v44 = 0x79616C7265766FLL;
              }

              v45 = 0xE700000000000000;
              if (v18 == 8)
              {
                v45 = 0xEC0000006E6F7474;
              }

              if (v18 == 7)
              {
                v44 = 0x754272656B636970;
                v45 = 0xEC0000006E6F7474;
              }

              v46 = 0x74736F6D72656874;
              if (v18 != 5)
              {
                v46 = 0x6E41736D72616C61;
              }

              v47 = 0xEF7372656D695464;
              if (v18 == 5)
              {
                v47 = 0xEA00000000007461;
              }

              if (v18 <= 6)
              {
                v48 = v46;
              }

              else
              {
                v48 = v44;
              }

              if (v18 <= 6)
              {
                v49 = v47;
              }

              else
              {
                v49 = v45;
              }

              if (v40 != v48)
              {
                goto LABEL_77;
              }

              goto LABEL_75;
            }
          }
        }

        else
        {
          if (EnumCaseMultiPayload == 7)
          {
            sub_25260B634(v30, type metadata accessor for Device.Control.Kind);
            v41 = 0x72656B636970;
LABEL_49:
            v40 = v41 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
            v39 = 0xEC0000006E6F7474;
            if (v18 > 4)
            {
              goto LABEL_30;
            }

            goto LABEL_50;
          }

          if (EnumCaseMultiPayload == 8)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98);

            sub_252372288(v30, &qword_27F4DB440);
            v41 = 0x737574617473;
            goto LABEL_49;
          }

          sub_25260B634(v30, type metadata accessor for Device.Control.Kind);
          v39 = 0xE700000000000000;
          v40 = 0x79616C7265766FLL;
          if (v18 > 4)
          {
            goto LABEL_30;
          }
        }
      }

      else if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8);
          sub_25260B634(v30 + *(v53 + 48), type metadata accessor for AccessoryControl.IncrementalConfig);
          sub_252372288(v30, &qword_27F4DB218);
          v40 = 0x6E656D6572636E69;
          v39 = 0xEB000000006C6174;
          if (v18 > 4)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_252393F68(*v30, v30[1], v30[2], v30[3], v30[4]);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428);
          sub_25260B634(v30 + *(v42 + 48), type metadata accessor for AccessoryControl.BinaryViewConfig);
          v39 = 0xE600000000000000;
          v40 = 0x7972616E6962;
          if (v18 > 4)
          {
            goto LABEL_30;
          }
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0);
        sub_25260B634(v30 + *(v43 + 48), type metadata accessor for AccessoryControl.PickerViewConfig);
        v39 = 0xE600000000000000;
        v40 = 0x72656B636970;
        if (v18 > 4)
        {
          goto LABEL_30;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8);

        sub_252372288(v30, &qword_27F4DB2A0);
        v39 = 0xE500000000000000;
        v40 = 0x726F6C6F63;
        if (v18 > 4)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_25260B634(v30, type metadata accessor for Device.Control.Kind);
        v40 = 0x616C50616964656DLL;
        v39 = 0xED00006B63616279;
        if (v18 > 4)
        {
          goto LABEL_30;
        }
      }

LABEL_50:
      if (v18 <= 1)
      {
        if (v18)
        {
          v49 = 0xEB000000006C6174;
          if (v40 != 0x6E656D6572636E69)
          {
            goto LABEL_77;
          }
        }

        else
        {
          v49 = 0xE600000000000000;
          if (v40 != 0x7972616E6962)
          {
            goto LABEL_77;
          }
        }
      }

      else
      {
        v50 = 0x616C50616964656DLL;
        if (v18 == 3)
        {
          v50 = 0x726F6C6F63;
        }

        v51 = 0xED00006B63616279;
        if (v18 == 3)
        {
          v51 = 0xE500000000000000;
        }

        if (v18 == 2)
        {
          v52 = 0x72656B636970;
        }

        else
        {
          v52 = v50;
        }

        if (v18 == 2)
        {
          v49 = 0xE600000000000000;
        }

        else
        {
          v49 = v51;
        }

        if (v40 != v52)
        {
          goto LABEL_77;
        }
      }

LABEL_75:
      if (v39 == v49)
      {

LABEL_78:
        sub_25237153C(v82, v79, &qword_27F4DAE18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_2523698F4(0, v81[2] + 1, 1, v81);
        }

        v56 = v81[2];
        v55 = v81[3];
        if (v56 >= v55 >> 1)
        {
          v81 = sub_2523698F4(v55 > 1, v56 + 1, 1, v81);
        }

        sub_25260B634(v80, type metadata accessor for Device.Control);
        sub_252372288(v82, &qword_27F4DAE18);
        v57 = v81;
        v81[2] = v56 + 1;
        sub_2523714D4(v79, v57 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v56, &qword_27F4DAE18);
        goto LABEL_12;
      }

LABEL_77:
      v54 = sub_2526933B0();

      if (v54)
      {
        goto LABEL_78;
      }

      sub_25260B634(v80, type metadata accessor for Device.Control);
      sub_252372288(v82, &qword_27F4DAE18);
LABEL_12:
      v88 = v33;
      v89 = v32;
      v90 = v34;
      sub_252692710();
      v35 = v84;
      v30 = v78;
      if (v84 == v83)
      {
        goto LABEL_8;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252601CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v29 = a3;
  v30 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v27 - v9;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v28 = a2;
  swift_weakInit();
  (*(v8 + 16))(v10, a1, AssociatedTypeWitness);
  v13 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v14 = swift_allocObject();
  v15 = v31;
  *(v14 + 2) = a3;
  *(v14 + 3) = v15;
  v16 = v32;
  *(v14 + 4) = v12;
  *(v14 + 5) = v16;
  (*(v8 + 32))(&v14[v13], v10, AssociatedTypeWitness);

  swift_unknownObjectRetain();
  v17 = v33;
  v18 = DeviceDataModel.controlsBinding(for:errorHandler:onSet:)(v30, sub_25260AF9C, v11, sub_25260AFA4, v14, v29, v15);
  v20 = v19;
  v22 = v21;

  if (!v17)
  {
    v23 = (v28 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlModules);
    v25 = *(v28 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlModules);
    v24 = *(v28 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlModules + 8);
    *v23 = v18;
    v23[1] = v20;
    v23[2] = v22;

    sub_25260B03C(v25, v24);
  }

  return v18;
}

uint64_t DeviceError.hashValue.getter()
{
  sub_252693460();
  MEMORY[0x2530A4FE0](0);
  return sub_2526934C0();
}

uint64_t sub_252601FF0()
{
  sub_252693460();
  MEMORY[0x2530A4FE0](0);
  return sub_2526934C0();
}

uint64_t sub_25260205C()
{
  sub_252693460();
  MEMORY[0x2530A4FE0](0);
  return sub_2526934C0();
}

uint64_t sub_2526020AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v6[9] = *(AssociatedTypeWitness - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = *(type metadata accessor for Device.Control(0) - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v8 = sub_25268DA10();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  sub_252692E00();
  v6[21] = sub_252692DF0();
  v10 = sub_252692DE0();
  v6[22] = v10;
  v6[23] = v9;

  return MEMORY[0x2822009F8](sub_2526022B8, v10, v9);
}

uint64_t sub_2526022B8()
{
  v69 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v0 + 224) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);

  v6 = 0;
  v7 = 0x27F4DA000uLL;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  while (1)
  {
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v9 >= (((1 << *(v0 + 224)) + 63) >> 6))
    {

      v52 = *(v0 + 8);

      return v52();
    }

    v8 = *(v0 + 16);
    v5 = *(v8 + 8 * v9 + 64);
    ++v6;
    if (v5)
    {
      v6 = v9;
      while (1)
      {
        *(v0 + 192) = v5;
        *(v0 + 200) = v6;
        v10 = *(v0 + 152);
        v11 = *(v0 + 160);
        v12 = *(v0 + 136);
        v13 = *(v0 + 144);
        v14 = *(v0 + 24);
        (*(v13 + 16))(v11, *(v8 + 48) + *(v13 + 72) * (__clz(__rbit64(v5)) | (v6 << 6)), v12);
        (*(v13 + 32))(v10, v11, v12);
        if (!*(v14 + 16))
        {
          goto LABEL_7;
        }

        v15 = sub_252367880(*(v0 + 152));
        if ((v16 & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = *(v0 + 16);
        v18 = *(*(v0 + 96) + 72);
        sub_25260B694(*(*(v0 + 24) + 56) + v18 * v15, *(v0 + 128), type metadata accessor for Device.Control);
        if (!*(v17 + 16))
        {
          break;
        }

        v19 = sub_252367880(*(v0 + 152));
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(v0 + 120);
        v22 = *(v0 + 128);
        v23 = *(v0 + 112);
        sub_25260B694(*(*(v0 + 16) + 56) + v19 * v18, v23, type metadata accessor for Device.Control);
        sub_25260B5CC(v23, v21, type metadata accessor for Device.Control);
        if ((_s22HomeAccessoryControlUI6DeviceV0C0V2eeoiySbAE_AEtFZ_0(v22, v21) & 1) == 0)
        {
          goto LABEL_29;
        }

        if (*(v7 + 3024) != -1)
        {
          swift_once();
        }

        v24 = *(v0 + 120);
        v25 = *(v0 + 104);
        v26 = *(v0 + 88);
        v27 = *(v0 + 64);
        v28 = *(v0 + 72);
        v29 = *(v0 + 32);
        v30 = sub_2526905A0();
        __swift_project_value_buffer(v30, qword_27F4E4B18);
        v62 = *(v28 + 16);
        v62(v26, v29, v27);
        sub_25260B694(v24, v25, type metadata accessor for Device.Control);
        v31 = sub_252690580();
        v32 = sub_252692ED0();
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 152);
        v63 = *(v0 + 120);
        v64 = *(v0 + 128);
        v35 = *(v0 + 104);
        v36 = *(v0 + 88);
        v65 = (*(v0 + 144) + 8);
        v66 = *(v0 + 136);
        if (v33)
        {
          v60 = v32;
          v37 = *(v0 + 72);
          v38 = *(v0 + 80);
          v61 = *(v0 + 152);
          v39 = *(v0 + 64);
          v40 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v68 = v59;
          *v40 = 136446466;
          v62(v38, v36, v39);
          v41 = sub_252692C20();
          v43 = v42;
          (*(v37 + 8))(v36, v39);
          v44 = v41;
          v7 = 0x27F4DA000;
          v45 = sub_2525BDA90(v44, v43, &v68);

          *(v40 + 4) = v45;
          *(v40 + 12) = 2082;
          sub_25260C914(&qword_27F4DB2B8, MEMORY[0x277CC95F0]);
          v46 = sub_252693370();
          v48 = v47;
          sub_25260B634(v35, type metadata accessor for Device.Control);
          v49 = sub_2525BDA90(v46, v48, &v68);

          *(v40 + 14) = v49;
          _os_log_impl(&dword_252309000, v31, v60, "Ignoring setting control because it's unchanged. deviceIdentifier: %{public}s newControl: %{public}s", v40, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A5A40](v59, -1, -1);
          MEMORY[0x2530A5A40](v40, -1, -1);

          sub_25260B634(v63, type metadata accessor for Device.Control);
          sub_25260B634(v64, type metadata accessor for Device.Control);
          (*v65)(v61, v66);
        }

        else
        {
          v50 = *(v0 + 64);
          v51 = *(v0 + 72);

          sub_25260B634(v35, type metadata accessor for Device.Control);
          (*(v51 + 8))(v36, v50);
          sub_25260B634(v63, type metadata accessor for Device.Control);
          sub_25260B634(v64, type metadata accessor for Device.Control);
          (*v65)(v34, v66);
        }

        v6 = *(v0 + 200);
        v5 = (*(v0 + 192) - 1) & *(v0 + 192);
        if (!v5)
        {
          goto LABEL_9;
        }

LABEL_8:
        v8 = *(v0 + 16);
      }

      sub_25260B634(*(v0 + 128), type metadata accessor for Device.Control);
LABEL_7:
      v5 &= v5 - 1;
      (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
      if (!v5)
      {
        continue;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_29:
  v67 = (*(*(v0 + 48) + 40) + **(*(v0 + 48) + 40));
  v54 = swift_task_alloc();
  *(v0 + 208) = v54;
  *v54 = v0;
  v54[1] = sub_2526029AC;
  v55 = *(v0 + 120);
  v56 = *(v0 + 48);
  v57 = *(v0 + 32);
  v58 = *(v0 + 40);

  return v67(v55, v57, v58, v56);
}

uint64_t sub_2526029AC()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_25260320C;
  }

  else
  {
    v5 = sub_252602AE8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_252602AE8()
{
  v70 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_25260B634(*(v0 + 120), type metadata accessor for Device.Control);
  sub_25260B634(v4, type metadata accessor for Device.Control);
  (*(v2 + 8))(v1, v3);
  while (2)
  {
    v5 = *(v0 + 200);
    v6 = (*(v0 + 192) - 1) & *(v0 + 192);
    while (1)
    {
      if (!v6)
      {
        while (1)
        {
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            __break(1u);
            goto LABEL_25;
          }

          if (v8 >= (((1 << *(v0 + 224)) + 63) >> 6))
          {
            break;
          }

          v7 = *(v0 + 16);
          v6 = *(v7 + 8 * v8 + 64);
          ++v5;
          if (v6)
          {
            v5 = v8;
            goto LABEL_11;
          }
        }

        v51 = *(v0 + 8);

        return v51();
      }

      v7 = *(v0 + 16);
LABEL_11:
      *(v0 + 192) = v6;
      *(v0 + 200) = v5;
      v10 = *(v0 + 152);
      v9 = *(v0 + 160);
      v12 = *(v0 + 136);
      v11 = *(v0 + 144);
      v13 = *(v0 + 24);
      (*(v11 + 16))(v9, *(v7 + 48) + *(v11 + 72) * (__clz(__rbit64(v6)) | (v5 << 6)), v12);
      (*(v11 + 32))(v10, v9, v12);
      if (*(v13 + 16))
      {
        v14 = sub_252367880(*(v0 + 152));
        if (v15)
        {
          break;
        }
      }

LABEL_4:
      v6 &= v6 - 1;
      (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    }

    v16 = *(v0 + 16);
    v17 = *(*(v0 + 96) + 72);
    sub_25260B694(*(*(v0 + 24) + 56) + v17 * v14, *(v0 + 128), type metadata accessor for Device.Control);
    if (!*(v16 + 16) || (v18 = sub_252367880(*(v0 + 152)), (v19 & 1) == 0))
    {
      sub_25260B634(*(v0 + 128), type metadata accessor for Device.Control);
      goto LABEL_4;
    }

    v21 = *(v0 + 120);
    v20 = *(v0 + 128);
    v22 = *(v0 + 112);
    sub_25260B694(*(*(v0 + 16) + 56) + v18 * v17, v22, type metadata accessor for Device.Control);
    sub_25260B5CC(v22, v21, type metadata accessor for Device.Control);
    if (_s22HomeAccessoryControlUI6DeviceV0C0V2eeoiySbAE_AEtFZ_0(v20, v21))
    {
      if (qword_27F4DABD0 != -1)
      {
        swift_once();
      }

      v23 = *(v0 + 120);
      v66 = *(v0 + 104);
      v24 = *(v0 + 88);
      v26 = *(v0 + 64);
      v25 = *(v0 + 72);
      v27 = *(v0 + 32);
      v28 = sub_2526905A0();
      __swift_project_value_buffer(v28, qword_27F4E4B18);
      v29 = *(v25 + 16);
      v29(v24, v27, v26);
      sub_25260B694(v23, v66, type metadata accessor for Device.Control);
      v30 = sub_252690580();
      v31 = sub_252692ED0();
      v32 = os_log_type_enabled(v30, v31);
      v67 = *(v0 + 152);
      v33 = *(v0 + 136);
      v64 = *(v0 + 120);
      v65 = *(v0 + 128);
      v34 = *(v0 + 104);
      v35 = *(v0 + 88);
      v63 = (*(v0 + 144) + 8);
      if (v32)
      {
        v60 = *(v0 + 136);
        v58 = v29;
        v36 = *(v0 + 72);
        v37 = *(v0 + 80);
        v62 = v31;
        v38 = *(v0 + 64);
        v59 = *(v0 + 104);
        v39 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v69 = v61;
        *v39 = 136446466;
        v58(v37, v35, v38);
        v40 = sub_252692C20();
        v41 = v30;
        v43 = v42;
        (*(v36 + 8))(v35, v38);
        v44 = sub_2525BDA90(v40, v43, &v69);

        *(v39 + 4) = v44;
        *(v39 + 12) = 2082;
        sub_25260C914(&qword_27F4DB2B8, MEMORY[0x277CC95F0]);
        v45 = sub_252693370();
        v47 = v46;
        sub_25260B634(v59, type metadata accessor for Device.Control);
        v48 = sub_2525BDA90(v45, v47, &v69);

        *(v39 + 14) = v48;
        _os_log_impl(&dword_252309000, v41, v62, "Ignoring setting control because it's unchanged. deviceIdentifier: %{public}s newControl: %{public}s", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530A5A40](v61, -1, -1);
        MEMORY[0x2530A5A40](v39, -1, -1);

        sub_25260B634(v64, type metadata accessor for Device.Control);
        sub_25260B634(v65, type metadata accessor for Device.Control);
        (*v63)(v67, v60);
      }

      else
      {
        v49 = *(v0 + 64);
        v50 = *(v0 + 72);

        sub_25260B634(v34, type metadata accessor for Device.Control);
        (*(v50 + 8))(v35, v49);
        sub_25260B634(v64, type metadata accessor for Device.Control);
        sub_25260B634(v65, type metadata accessor for Device.Control);
        (*v63)(v67, v33);
      }

      continue;
    }

    break;
  }

LABEL_25:
  v68 = (*(*(v0 + 48) + 40) + **(*(v0 + 48) + 40));
  v53 = swift_task_alloc();
  *(v0 + 208) = v53;
  *v53 = v0;
  v53[1] = sub_2526029AC;
  v54 = *(v0 + 120);
  v55 = *(v0 + 48);
  v56 = *(v0 + 32);
  v57 = *(v0 + 40);

  return v68(v54, v56, v57, v55);
}

uint64_t sub_25260320C()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];

  sub_25260B634(v5, type metadata accessor for Device.Control);
  sub_25260B634(v4, type metadata accessor for Device.Control);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t DeviceDataModel.controlsBinding(for:errorHandler:onSet:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a4;
  v40 = a2;
  v41 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v33 - v16;
  v18 = *(a7 + 32);
  v39 = v7;
  result = v18(a1, a6, a7, v15);
  if (!v8)
  {
    v20 = result;
    v37 = 0;
    v34 = sub_252692E00();

    v21 = sub_252692DF0();
    v35 = a5;
    v22 = v21;
    v23 = swift_allocObject();
    v36 = v23;
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v20;
    (*(v13 + 16))(v17, a1, AssociatedTypeWitness);
    swift_unknownObjectRetain();
    sub_25235E21C(v40);
    sub_25235E21C(v43);
    v34 = sub_252692DF0();
    v25 = (*(v13 + 80) + 64) & ~*(v13 + 80);
    v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 2) = v34;
    *(v27 + 3) = MEMORY[0x277D85700];
    *(v27 + 4) = a6;
    *(v27 + 5) = a7;
    *(v27 + 6) = v20;
    v28 = AssociatedTypeWitness;
    *(v27 + 7) = v39;
    (*(v13 + 32))(&v27[v25], v17, v28);
    v29 = &v27[v26];
    v30 = v41;
    *v29 = v40;
    *(v29 + 1) = v30;
    v31 = &v27[(v26 + 23) & 0xFFFFFFFFFFFFFFF8];
    v32 = v35;
    *v31 = v43;
    *(v31 + 1) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2A48);
    sub_2526926E0();
    return v42;
  }

  return result;
}

uint64_t sub_2526035E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v41 = a7;
  v42 = a8;
  v47 = a5;
  v48 = a10;
  v51 = a12;
  v49 = a9;
  v50 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = &v40 - v19;
  v44 = &v40 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v40 - v22;
  v46 = _s22HomeAccessoryControlUI6DeviceV0C6ModuleV18controlsDictionary4withSDy10Foundation4UUIDVAC0C0VGSayAEG_tFZ_0(*a1);
  v45 = _s22HomeAccessoryControlUI6DeviceV0C6ModuleV18controlsDictionary4withSDy10Foundation4UUIDVAC0C0VGSayAEG_tFZ_0(a4);
  v24 = sub_252692E30();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  (*(v17 + 16))(v20, a6, AssociatedTypeWitness);
  sub_252692E00();
  v25 = v47;
  swift_unknownObjectRetain();
  sub_25235E21C(a7);
  v27 = v48;
  v26 = v49;
  sub_25235E21C(v49);
  v28 = sub_252692DF0();
  v29 = (*(v17 + 80) + 72) & ~*(v17 + 80);
  v30 = (v18 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  *(v31 + 2) = v28;
  *(v31 + 3) = v32;
  v33 = v51;
  *(v31 + 4) = v50;
  *(v31 + 5) = v33;
  v34 = v45;
  v35 = v46;
  *(v31 + 6) = v25;
  *(v31 + 7) = v35;
  *(v31 + 8) = v34;
  (*(v17 + 32))(&v31[v29], v44, v43);
  v36 = &v31[v30];
  v37 = v42;
  *v36 = v41;
  v36[1] = v37;
  v38 = &v31[(v30 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v38 = v26;
  v38[1] = v27;
  sub_2525738C0(0, 0, v23, &unk_2526A9B60, v31);
}

uint64_t sub_252603898(uint64_t *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2526035E8(a1, v1[2], v1[3], v1[6], v1[7], v1 + v6, *(v1 + v7), *(v1 + v7 + 8), *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v3, v4);
}

unint64_t sub_252603978()
{
  result = qword_27F4E3758;
  if (!qword_27F4E3758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3758);
  }

  return result;
}

uint64_t dispatch thunk of DeviceDataModel.set(control:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2523E233C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_252603BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = v16;
  *(v8 + 24) = v15;
  *(v8 + 16) = a8;
  *(v8 + 48) = sub_252692E00();
  *(v8 + 56) = sub_252692DF0();
  v12 = swift_task_alloc();
  *(v8 + 64) = v12;
  *v12 = v8;
  v12[1] = sub_252603CC0;

  return sub_2526020AC(a5, a6, a7, v17, v18);
}

uint64_t sub_252603CC0()
{
  *(*v1 + 72) = v0;

  v3 = sub_252692DE0();
  if (v0)
  {
    v4 = sub_252603E90;
  }

  else
  {
    v4 = sub_252603E1C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_252603E1C()
{

  v2 = *(v0 + 32);
  if (v2)
  {
    v2(v1);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252603E90()
{
  v1 = v0[2];

  v2 = v0[9];
  if (v1)
  {
    (v0[2])(v0[9]);
  }

  v3 = v0[4];
  if (v3)
  {
    v3();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_252603F28(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25266C368(a1);
  }

  return result;
}

uint64_t sub_252603F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_userHasInteractedWithControls;
    if ((*(result + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_userHasInteractedWithControls) & 1) == 0)
    {
      v10 = result;
      (*(a5 + 56))(a3, a4, a5);
      result = v10;
    }

    *(result + v9) = 1;
  }

  return result;
}

uint64_t sub_252604038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v31 = a2;
  v41 = sub_25268DA10();
  v2 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  v30 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v35 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = v29 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3760);
  MEMORY[0x28223BE20](v37);
  v36 = v29 - v7;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DD8);
  sub_2526926C0();

  v8 = v49;
  v9 = v50;
  v10 = v51;
  v45 = v49;
  v46 = v50;
  v47 = v51;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3768);
  v12 = sub_25260AD60(&qword_27F4E3770, &qword_27F4E3778);
  sub_252692700();
  v13 = v48;
  v51 = v10;
  v52 = v48;
  v49 = v8;
  v50 = v9;
  sub_252692710();
  if (v13 == v45)
  {
LABEL_2:

    return (*(v30 + 56))(v31, 1, 1, v43);
  }

  else
  {
    v38 = (v2 + 8);
    v33 = v9;
    v34 = v8;
    v32 = v10;
    v29[1] = v11;
    v29[0] = v12;
    while (1)
    {
      v45 = v13;
      v49 = v8;
      v50 = v9;
      v51 = v10;
      v15 = v36;
      sub_252692730();
      v49 = v8;
      v50 = v9;
      v51 = v10;
      sub_252692720();
      swift_getKeyPath();
      sub_2526926C0();

      sub_252372288(v15, &qword_27F4E3760);
      v16 = v49;
      v17 = v50;
      v18 = v51;
      v45 = v49;
      v46 = v50;
      v47 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3780);
      sub_25260AD60(&qword_27F4E3788, &qword_27F4E3790);
      sub_252692700();
      v48 = v44;
      v49 = v16;
      v50 = v17;
      v51 = v18;
      sub_252692710();
      v19 = v48;
      v20 = &qword_27F4DAE18;
      v21 = &unk_2526A7F90;
      v22 = v35;
      if (v48 != v45)
      {
        break;
      }

LABEL_4:

      v9 = v33;
      v8 = v34;
      v49 = v34;
      v50 = v33;
      v10 = v32;
      v51 = v32;
      sub_252692710();
      v13 = v52;
      if (v52 == v45)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v45 = v19;
      v49 = v16;
      v50 = v17;
      v51 = v18;
      v23 = v40;
      sub_252692730();
      v49 = v16;
      v50 = v17;
      v51 = v18;
      sub_252692720();
      sub_2523714D4(v23, v22, v20);
      sub_25260C914(&qword_27F4E37A0, type metadata accessor for Device.Control);
      v24 = v21;
      v25 = v20;
      v26 = v39;
      sub_252692740();
      v27 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
      (*v38)(v26, v41);
      if (v27)
      {
        break;
      }

      sub_252372288(v22, v25);
      v49 = v16;
      v50 = v17;
      v51 = v18;
      sub_252692710();
      v19 = v48;
      v20 = v25;
      v21 = v24;
      if (v48 == v45)
      {
        goto LABEL_4;
      }
    }

    v28 = v31;
    sub_2523714D4(v22, v31, &qword_27F4DAE18);
    return (*(v30 + 56))(v28, 0, 1, v43);
  }
}

uint64_t sub_25260463C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Device.Control(0);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2530A4210](v2, v11);
  sub_25260B694(&v13[*(v10 + 28)], v8, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v13, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(&v20);
  sub_25260B634(v8, type metadata accessor for Device.Control.Kind);
  if (v20 <= 4u && !v20)
  {

LABEL_7:
    sub_25237153C(v1, v5, &qword_27F4DAE18);
    v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    sub_2523714D4(v5, v16 + v15, &qword_27F4DAE18);
    sub_25237153C(v1, v5, &qword_27F4DAE18);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    sub_2523714D4(v5, v17 + v15, &qword_27F4DAE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBBD0);
    sub_2526926E0();
    return v20;
  }

  v14 = sub_2526933B0();

  if (v14)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_252604A80@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210](v9);
  sub_25260B694(&v8[*(v6 + 28)], v4, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_25260B634(v4, type metadata accessor for Device.Control.Kind);
    v11 = 0;
  }

  else
  {
    v12 = *v4;
    v13 = v4[1];
    v14 = v4[2];
    v15 = v4[3];
    v16 = v4[4];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428);
    result = sub_25260B634(v4 + *(v17 + 48), type metadata accessor for AccessoryControl.BinaryViewConfig);
    if (v16 == 1)
    {
      v11 = 2;
    }

    else
    {
      result = sub_252393F68(v12, v13, v14, v15, v16);
      v11 = v12 & 1;
    }
  }

  *a1 = v11;
  return result;
}

uint64_t sub_252604C54(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798);
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - v3;
  v5 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (&v37 - v9);
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v15 - 8);
  v42 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v14[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v14, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  }

  v38 = v4;
  v39 = v2;
  v20 = *v10;
  v19 = v10[1];
  v21 = v10[3];
  v40 = v10[2];
  v41 = v21;
  v22 = v10[4];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428);
  sub_25260B5CC(v10 + *(v23 + 48), v42, type metadata accessor for AccessoryControl.BinaryViewConfig);
  if (v17 == 2)
  {
    sub_25260B634(v42, type metadata accessor for AccessoryControl.BinaryViewConfig);
    v24 = v20;
    v25 = v19;
    v26 = v40;
    v27 = v41;
    v28 = v22;
  }

  else
  {
    if (v22 == 1)
    {
      v29 = v20;
    }

    else
    {
      v29 = v20 & 0xFFFFFFFFFFFFFF00 | v17 & 1;
    }

    swift_getKeyPath();
    v30 = v22;
    v31 = v38;
    sub_2526926C0();

    v32 = *(v23 + 48);
    *v7 = v29;
    v7[1] = v19;
    v33 = v19;
    v34 = v40;
    v35 = v41;
    v7[2] = v40;
    v7[3] = v35;
    v7[4] = v22;
    v36 = v42;
    sub_25260B694(v42, v7 + v32, type metadata accessor for AccessoryControl.BinaryViewConfig);
    swift_storeEnumTagMultiPayload();
    sub_25239F750(v29, v33, v34, v35, v30);
    sub_2526926B0();
    sub_252372288(v31, &qword_27F4E3798);
    sub_25260B634(v36, type metadata accessor for AccessoryControl.BinaryViewConfig);
    v24 = v29;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v28 = v30;
  }

  return sub_252393F68(v24, v25, v26, v27, v28);
}

double sub_252605008@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-1] - v6;
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(v25);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (LOBYTE(v25[0]) <= 4u && !LOBYTE(v25[0]))
  {

LABEL_7:
    sub_25237153C(v2, v7, &qword_27F4DAE18);
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    sub_2523714D4(v7, v18 + v17, &qword_27F4DAE18);
    sub_25237153C(v2, v7, &qword_27F4DAE18);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_2523714D4(v7, v19 + v17, &qword_27F4DAE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4E0);
    sub_2526926E0();
    v20 = v25[1];
    v21 = v28;
    *a1 = v25[0];
    *(a1 + 8) = v20;
    result = *&v26;
    v23 = v27;
    *(a1 + 16) = v26;
    *(a1 + 32) = v23;
    *(a1 + 48) = v21;
    return result;
  }

  v16 = sub_2526933B0();

  if (v16)
  {
    goto LABEL_7;
  }

  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_252605470@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210](v9);
  sub_25260B694(&v8[*(v6 + 28)], v4, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_25260B634(v4, type metadata accessor for Device.Control.Kind);
    v11 = 0;
    v12 = xmmword_252695730;
    v13 = 0uLL;
  }

  else
  {
    v14 = *(v4 + 1);
    v16 = *v4;
    v17 = v14;
    v11 = *(v4 + 4);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428);
    result = sub_25260B634(&v4[*(v15 + 48)], type metadata accessor for AccessoryControl.BinaryViewConfig);
    v13 = v16;
    v12 = v17;
  }

  *a1 = v13;
  *(a1 + 16) = v12;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_252605628(uint64_t *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798);
  MEMORY[0x28223BE20](v34);
  v3 = &v29 - v2;
  v4 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v29 - v8);
  v10 = type metadata accessor for Device.Control(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v32 = a1[1];
  v33 = v17;
  v18 = a1[2];
  v19 = a1[3];
  v30 = a1[4];
  v31 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v13[*(v11 + 28)], v9, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v13, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload())
  {
    v20 = type metadata accessor for Device.Control.Kind;
    v21 = v9;
  }

  else
  {
    sub_252393F68(*v9, v9[1], v9[2], v9[3], v9[4]);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428);
    sub_25260B5CC(v9 + *(v22 + 48), v16, type metadata accessor for AccessoryControl.BinaryViewConfig);
    swift_getKeyPath();
    sub_2526926C0();

    v23 = *(v22 + 48);
    v25 = v32;
    v24 = v33;
    *v6 = v33;
    v6[1] = v25;
    v27 = v30;
    v26 = v31;
    v6[2] = v31;
    v6[3] = v19;
    v6[4] = v27;
    sub_25260B694(v16, v6 + v23, type metadata accessor for AccessoryControl.BinaryViewConfig);
    swift_storeEnumTagMultiPayload();
    sub_25239F750(v24, v25, v26, v19, v27);
    sub_2526926B0();
    sub_252372288(v3, &qword_27F4E3798);
    v20 = type metadata accessor for AccessoryControl.BinaryViewConfig;
    v21 = v16;
  }

  return sub_25260B634(v21, v20);
}

uint64_t sub_252605974@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-v6];
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(&v24);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (v24 < 2u && v24)
  {
  }

  else
  {
    v16 = sub_2526933B0();

    if ((v16 & 1) == 0)
    {
      v20 = 1;
      goto LABEL_5;
    }
  }

  sub_25237153C(v2, v7, &qword_27F4DAE18);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_2523714D4(v7, v18 + v17, &qword_27F4DAE18);
  sub_25237153C(v2, v7, &qword_27F4DAE18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_2523714D4(v7, v19 + v17, &qword_27F4DAE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  sub_2526926E0();
  v20 = 0;
LABEL_5:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810);
  return (*(*(v21 - 8) + 56))(a1, v20, 1, v21);
}

uint64_t sub_252605E1C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210](v12);
  sub_25260B694(&v8[*(v6 + 28)], v4, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8) + 48);
    sub_2523714D4(v4, v11, &qword_27F4DB218);
    sub_25260B634(&v4[v13], type metadata accessor for AccessoryControl.IncrementalConfig);
    return sub_2523714D4(v11, a1, &qword_27F4DB218);
  }

  else
  {
    sub_25260B634(v4, type metadata accessor for Device.Control.Kind);
    *a1 = 0;
    v15 = *MEMORY[0x277D15BB8];
    v16 = sub_25268ED70();
    (*(*(v16 - 8) + 104))(a1, v15, v16);
    v17 = type metadata accessor for AccessoryControl.IncrementalState(0);
    *(a1 + *(v17 + 20)) = 0;
    return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
  }
}

uint64_t sub_2526060CC(uint64_t a1)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798);
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - v2;
  v4 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Device.Control(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v13[*(v11 + 28)], v9, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v13, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8);
    sub_25260B5CC(&v9[*(v17 + 48)], v16, type metadata accessor for AccessoryControl.IncrementalConfig);
    v22 = v1;
    sub_252372288(v9, &qword_27F4DB218);
    swift_getKeyPath();
    sub_2526926C0();

    v18 = *(v17 + 48);
    sub_25237153C(v23, v6, &qword_27F4DB218);
    sub_25260B694(v16, &v6[v18], type metadata accessor for AccessoryControl.IncrementalConfig);
    swift_storeEnumTagMultiPayload();
    sub_2526926B0();
    sub_252372288(v3, &qword_27F4E3798);
    v19 = type metadata accessor for AccessoryControl.IncrementalConfig;
    v20 = v16;
  }

  else
  {
    v19 = type metadata accessor for Device.Control.Kind;
    v20 = v9;
  }

  return sub_25260B634(v20, v19);
}

uint64_t sub_252606404@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(&v23);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (v23 == 2)
  {

LABEL_4:
    sub_25237153C(v2, v7, &qword_27F4DAE18);
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_2523714D4(v7, v19 + v18, &qword_27F4DAE18);
    sub_25237153C(v2, v7, &qword_27F4DAE18);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    sub_2523714D4(v7, v20 + v18, &qword_27F4DAE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3C8);
    result = sub_2526926E0();
    v21 = v24;
    v22 = v25;
    *a1 = v23;
    *(a1 + 16) = v21;
    *(a1 + 24) = v22;
    return result;
  }

  v16 = sub_2526933B0();

  if (v16)
  {
    goto LABEL_4;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_252606864@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210](v9);
  sub_25260B694(&v8[*(v6 + 28)], v4, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v10 = *v4;
    v11 = v4[8];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0);
    result = sub_25260B634(&v4[*(v12 + 48)], type metadata accessor for AccessoryControl.PickerViewConfig);
  }

  else
  {
    result = sub_25260B634(v4, type metadata accessor for Device.Control.Kind);
    v10 = 0;
    v11 = 0;
  }

  *a1 = v10;
  *(a1 + 8) = v11;
  return result;
}

uint64_t sub_252606A0C(uint64_t *a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798);
  MEMORY[0x28223BE20](v25);
  v3 = &v23[-v2];
  v4 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v23[-v8];
  v10 = type metadata accessor for Device.Control(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *a1;
  v24 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v13[*(v11 + 28)], v9, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v13, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0);
    sub_25260B5CC(&v9[*(v18 + 48)], v16, type metadata accessor for AccessoryControl.PickerViewConfig);
    swift_getKeyPath();
    sub_2526926C0();

    v19 = *(v18 + 48);
    *v6 = v17;
    v6[8] = v24;
    sub_25260B694(v16, &v6[v19], type metadata accessor for AccessoryControl.PickerViewConfig);
    swift_storeEnumTagMultiPayload();
    sub_2526926B0();
    sub_252372288(v3, &qword_27F4E3798);
    v20 = type metadata accessor for AccessoryControl.PickerViewConfig;
    v21 = v16;
  }

  else
  {
    v20 = type metadata accessor for Device.Control.Kind;
    v21 = v9;
  }

  return sub_25260B634(v21, v20);
}

uint64_t sub_252606D24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(&v23);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (v23 > 8u)
  {

LABEL_4:
    sub_25237153C(v2, v7, &qword_27F4DAE18);
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_2523714D4(v7, v19 + v18, &qword_27F4DAE18);
    sub_25237153C(v2, v7, &qword_27F4DAE18);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    sub_2523714D4(v7, v20 + v18, &qword_27F4DAE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3C8);
    result = sub_2526926E0();
    v21 = v24;
    v22 = v25;
    *a1 = v23;
    *(a1 + 16) = v21;
    *(a1 + 24) = v22;
    return result;
  }

  v16 = sub_2526933B0();

  if (v16)
  {
    goto LABEL_4;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_252607184@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - v3;
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210](v18);
  sub_25260B694(&v8[*(v6 + 28)], v14, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() != 9)
  {
    goto LABEL_5;
  }

  v19 = swift_projectBox();
  sub_25237153C(v19, v4, &qword_27F4DB430);
  v20 = *(v2 + 48);
  sub_25260B5CC(v4, v17, type metadata accessor for Device.Control.Kind);
  sub_25260B634(&v4[v20], type metadata accessor for AccessoryControl.DecorationControlConfig);

  sub_25260B5CC(v17, v11, type metadata accessor for Device.Control.Kind);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v14 = v11;
LABEL_5:
    result = sub_25260B634(v14, type metadata accessor for Device.Control.Kind);
    v21 = 0;
    v22 = 0;
    goto LABEL_6;
  }

  v21 = *v11;
  v22 = v11[8];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0);
  result = sub_25260B634(&v11[*(v23 + 48)], type metadata accessor for AccessoryControl.PickerViewConfig);
LABEL_6:
  *a1 = v21;
  *(a1 + 8) = v22;
  return result;
}

uint64_t sub_252607468(uint64_t *a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798);
  MEMORY[0x28223BE20](v44);
  v43 = &v39[-v2];
  v3 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430);
  MEMORY[0x28223BE20](v46);
  v6 = &v39[-v5];
  v7 = type metadata accessor for Device.Control(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  MEMORY[0x28223BE20](v11 - 8);
  v45 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v39[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v39[-v20];
  MEMORY[0x28223BE20](v22);
  v24 = &v39[-v23];
  v41 = *a1;
  v40 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v10[*(v8 + 28)], v21, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v10, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v25 = swift_projectBox();
    sub_25237153C(v25, v6, &qword_27F4DB430);
    v26 = *(v46 + 48);
    sub_25260B5CC(v6, v24, type metadata accessor for Device.Control.Kind);
    v27 = v45;
    sub_25260B5CC(&v6[v26], v45, type metadata accessor for AccessoryControl.DecorationControlConfig);

    sub_25260B694(v24, v18, type metadata accessor for Device.Control.Kind);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0);
      v29 = &v18[*(v28 + 48)];
      v30 = v42;
      sub_25260B5CC(v29, v42, type metadata accessor for AccessoryControl.PickerViewConfig);
      swift_getKeyPath();
      v31 = v43;
      sub_2526926C0();

      v32 = v46;
      v33 = swift_allocBox();
      v35 = v34;
      v36 = *(v32 + 48);
      v37 = *(v28 + 48);
      *v34 = v41;
      *(v34 + 8) = v40;
      sub_25260B694(v30, v34 + v37, type metadata accessor for AccessoryControl.PickerViewConfig);
      swift_storeEnumTagMultiPayload();
      sub_25260B694(v27, v35 + v36, type metadata accessor for AccessoryControl.DecorationControlConfig);
      *v15 = v33;
      swift_storeEnumTagMultiPayload();
      sub_2526926B0();
      sub_252372288(v31, &qword_27F4E3798);
      sub_25260B634(v30, type metadata accessor for AccessoryControl.PickerViewConfig);
      sub_25260B634(v27, type metadata accessor for AccessoryControl.DecorationControlConfig);
      v18 = v24;
    }

    else
    {
      sub_25260B634(v27, type metadata accessor for AccessoryControl.DecorationControlConfig);
      sub_25260B634(v24, type metadata accessor for Device.Control.Kind);
    }
  }

  else
  {
    v18 = v21;
  }

  return sub_25260B634(v18, type metadata accessor for Device.Control.Kind);
}

double sub_2526079D0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-1] - v6;
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(v25);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (LOBYTE(v25[0]) > 8u)
  {

LABEL_4:
    sub_25237153C(v2, v7, &qword_27F4DAE18);
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    sub_2523714D4(v7, v18 + v17, &qword_27F4DAE18);
    sub_25237153C(v2, v7, &qword_27F4DAE18);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_2523714D4(v7, v19 + v17, &qword_27F4DAE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4E0);
    sub_2526926E0();
    v20 = v25[1];
    v21 = v28;
    *a1 = v25[0];
    *(a1 + 8) = v20;
    result = *&v26;
    v23 = v27;
    *(a1 + 16) = v26;
    *(a1 + 32) = v23;
    *(a1 + 48) = v21;
    return result;
  }

  v16 = sub_2526933B0();

  if (v16)
  {
    goto LABEL_4;
  }

  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double sub_252607E38@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430);
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - v3;
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210](v18);
  sub_25260B694(&v8[*(v6 + 28)], v14, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v19 = swift_projectBox();
    sub_25237153C(v19, v4, &qword_27F4DB430);
    v20 = *(v2 + 48);
    sub_25260B5CC(v4, v17, type metadata accessor for Device.Control.Kind);
    sub_25260B634(&v4[v20], type metadata accessor for AccessoryControl.DecorationControlConfig);

    sub_25260B5CC(v17, v11, type metadata accessor for Device.Control.Kind);
    if (!swift_getEnumCaseMultiPayload())
    {
      v22 = *(v11 + 4);
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428) + 48);
      v24 = *v11;
      v26 = *(v11 + 1);
      v27 = v24;
      sub_25260B634(&v11[v23], type metadata accessor for AccessoryControl.BinaryViewConfig);
      v25 = v26;
      result = *&v27;
      *a1 = v27;
      *(a1 + 16) = v25;
      *(a1 + 32) = v22;
      return result;
    }

    v14 = v11;
  }

  sub_25260B634(v14, type metadata accessor for Device.Control.Kind);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_25260812C(uint64_t *a1)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798);
  MEMORY[0x28223BE20](v53);
  v54 = &v44 - v2;
  v3 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = type metadata accessor for Device.Control(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  MEMORY[0x28223BE20](v12 - 8);
  v55 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v14);
  v51 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v44 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = (&v44 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = (&v44 - v23);
  v25 = *a1;
  v49 = a1[1];
  v50 = v25;
  v26 = a1[2];
  v47 = a1[3];
  v48 = v26;
  v46 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v11[*(v9 + 28)], v21, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v11, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v27 = swift_projectBox();
    sub_25237153C(v27, v7, &qword_27F4DB430);
    v28 = *(v5 + 48);
    sub_25260B5CC(v7, v24, type metadata accessor for Device.Control.Kind);
    v29 = &v7[v28];
    v30 = v55;
    sub_25260B5CC(v29, v55, type metadata accessor for AccessoryControl.DecorationControlConfig);

    sub_25260B694(v24, v18, type metadata accessor for Device.Control.Kind);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_25260B634(v30, type metadata accessor for AccessoryControl.DecorationControlConfig);
      sub_25260B634(v24, type metadata accessor for Device.Control.Kind);
    }

    else
    {
      sub_252393F68(*v18, v18[1], v18[2], v18[3], v18[4]);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428);
      v32 = v52;
      sub_25260B5CC(v18 + *(v31 + 48), v52, type metadata accessor for AccessoryControl.BinaryViewConfig);
      swift_getKeyPath();
      sub_2526926C0();

      v33 = swift_allocBox();
      v35 = v34;
      v44 = *(v5 + 48);
      v45 = v33;
      v36 = *(v31 + 48);
      v38 = v49;
      v37 = v50;
      *v34 = v50;
      v34[1] = v38;
      v40 = v47;
      v39 = v48;
      v34[2] = v48;
      v34[3] = v40;
      v41 = v46;
      v34[4] = v46;
      sub_25260B694(v32, v34 + v36, type metadata accessor for AccessoryControl.BinaryViewConfig);
      swift_storeEnumTagMultiPayload();
      sub_25260B694(v30, v35 + v44, type metadata accessor for AccessoryControl.DecorationControlConfig);
      *v51 = v45;
      swift_storeEnumTagMultiPayload();
      sub_25239F750(v37, v38, v39, v40, v41);
      v42 = v54;
      sub_2526926B0();
      sub_252372288(v42, &qword_27F4E3798);
      sub_25260B634(v32, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_25260B634(v30, type metadata accessor for AccessoryControl.DecorationControlConfig);
      v18 = v24;
    }
  }

  else
  {
    v18 = v21;
  }

  return sub_25260B634(v18, type metadata accessor for Device.Control.Kind);
}

uint64_t sub_2526086C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-v6];
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(&v24);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (v24 == 5)
  {
  }

  else
  {
    v16 = sub_2526933B0();

    if ((v16 & 1) == 0)
    {
      v20 = 1;
      goto LABEL_6;
    }
  }

  sub_25237153C(v2, v7, &qword_27F4DAE18);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_2523714D4(v7, v18 + v17, &qword_27F4DAE18);
  sub_25237153C(v2, v7, &qword_27F4DAE18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_2523714D4(v7, v19 + v17, &qword_27F4DAE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258);
  sub_2526926E0();
  v20 = 0;
LABEL_6:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20);
  return (*(*(v21 - 8) + 56))(a1, v20, 1, v21);
}

uint64_t sub_252608B70@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210](v9);
  sub_25260B694(&v8[*(v6 + 28)], v4, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0);

    return sub_2523714D4(v4, a1, &qword_27F4DB258);
  }

  else
  {
    sub_25260B634(v4, type metadata accessor for Device.Control.Kind);
    v11 = type metadata accessor for AccessoryControl.ThermostatState(0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_252608D4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798);
  MEMORY[0x28223BE20](v2);
  v4 = v25 - v3;
  v5 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v14[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v14, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    return sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0);
  v16 = &v10[*(v15 + 48)];
  v17 = *(v16 + 5);
  v30 = *(v16 + 4);
  v31 = v17;
  v32 = *(v16 + 48);
  v18 = *(v16 + 1);
  v26 = *v16;
  v27 = v18;
  v19 = *(v16 + 3);
  v28 = *(v16 + 2);
  v29 = v19;
  v25[1] = v2;
  sub_252372288(v10, &qword_27F4DB258);
  swift_getKeyPath();
  sub_2526926C0();

  v20 = &v7[*(v15 + 48)];
  sub_25237153C(a1, v7, &qword_27F4DB258);
  v21 = v31;
  *(v20 + 4) = v30;
  *(v20 + 5) = v21;
  *(v20 + 48) = v32;
  v22 = v27;
  *v20 = v26;
  *(v20 + 1) = v22;
  v23 = v29;
  *(v20 + 2) = v28;
  *(v20 + 3) = v23;
  swift_storeEnumTagMultiPayload();
  sub_2526926B0();
  return sub_252372288(v4, &qword_27F4E3798);
}

uint64_t sub_252609030@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-v6];
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(&v24);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (v24 == 3)
  {
  }

  else
  {
    v16 = sub_2526933B0();

    if ((v16 & 1) == 0)
    {
      v20 = 1;
      goto LABEL_6;
    }
  }

  sub_25237153C(v2, v7, &qword_27F4DAE18);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_2523714D4(v7, v18 + v17, &qword_27F4DAE18);
  sub_25237153C(v2, v7, &qword_27F4DAE18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_2523714D4(v7, v19 + v17, &qword_27F4DAE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  sub_2526926E0();
  v20 = 0;
LABEL_6:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658);
  return (*(*(v21 - 8) + 56))(a1, v20, 1, v21);
}

uint64_t sub_2526094D4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210](v9);
  sub_25260B694(&v8[*(v6 + 28)], v4, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8);

    return sub_2523714D4(v4, a1, &qword_27F4DB2A0);
  }

  else
  {
    sub_25260B634(v4, type metadata accessor for Device.Control.Kind);
    v11 = type metadata accessor for AccessoryControl.ColorState(0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_2526096B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - v3;
  v5 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v14[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v14, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    return sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8);
  v16 = &v10[*(v15 + 48)];
  v19 = *v16;
  v20 = *(v16 + 2);
  sub_252372288(v10, &qword_27F4DB2A0);
  swift_getKeyPath();
  sub_2526926C0();

  v17 = &v7[*(v15 + 48)];
  sub_25237153C(a1, v7, &qword_27F4DB2A0);
  *v17 = v19;
  *(v17 + 2) = v20;
  swift_storeEnumTagMultiPayload();
  sub_2526926B0();
  return sub_252372288(v4, &qword_27F4E3798);
}

double sub_252609970@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - v6;
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(v23);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (LOBYTE(v23[0]) == 7)
  {

LABEL_4:
    sub_25237153C(v2, v7, &qword_27F4DAE18);
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    sub_2523714D4(v7, v18 + v17, &qword_27F4DAE18);
    sub_25237153C(v2, v7, &qword_27F4DAE18);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_2523714D4(v7, v19 + v17, &qword_27F4DAE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4B8);
    sub_2526926E0();
    v20 = v23[1];
    *a1 = v23[0];
    *(a1 + 8) = v20;
    result = *&v24;
    v22 = v25;
    *(a1 + 16) = v24;
    *(a1 + 32) = v22;
    return result;
  }

  v16 = sub_2526933B0();

  if (v16)
  {
    goto LABEL_4;
  }

  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_252609DD4@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210](v9);
  sub_25260B694(&v8[*(v6 + 28)], v4, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v10 = v4[1];
    v14 = *v4;
    v15 = v10;

    v12 = v14;
    v13 = v15;
  }

  else
  {
    result = sub_25260B634(v4, type metadata accessor for Device.Control.Kind);
    v12 = 0uLL;
    v13 = 0uLL;
  }

  *a1 = v12;
  a1[1] = v13;
  return result;
}

void sub_252609F68(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  if (v14)
  {
    v24 = v4;
    v25 = v2;
    v26 = *a1;
    v16 = a1[2];
    v15 = a1[3];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
    MEMORY[0x2530A4210]();
    sub_25260B694(&v13[*(v11 + 20)], v10, type metadata accessor for Device.Control.Kind);
    sub_25260B634(v13, type metadata accessor for Device.Control);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v17 = *v10;
      v18 = *(v10 + 1);
      v19 = *(v10 + 4);
      v23 = v10[40];
      v22 = *(v10 + 6);
      v21 = *(v10 + 56);
      sub_2523E2E24(v17, v18);
      swift_getKeyPath();
      v20 = v24;
      sub_2526926C0();

      *v7 = v26;
      *(v7 + 1) = v14;
      *(v7 + 2) = v16;
      *(v7 + 3) = v15;
      *(v7 + 4) = v19;
      v7[40] = v23;
      *(v7 + 6) = v22;
      *(v7 + 56) = v21;
      swift_storeEnumTagMultiPayload();
      sub_2526926B0();
      sub_252372288(v20, &qword_27F4E3798);
    }

    else
    {
      sub_2523E2E24(v26, v14);
      sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
    }
  }
}

uint64_t sub_25260A248@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-v6];
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(&v24);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (v24 == 8)
  {
  }

  else
  {
    v16 = sub_2526933B0();

    if ((v16 & 1) == 0)
    {
      v20 = 1;
      goto LABEL_6;
    }
  }

  sub_25237153C(v2, v7, &qword_27F4DAE18);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_2523714D4(v7, v18 + v17, &qword_27F4DAE18);
  sub_25237153C(v2, v7, &qword_27F4DAE18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_2523714D4(v7, v19 + v17, &qword_27F4DAE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440);
  sub_2526926E0();
  v20 = 0;
LABEL_6:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420);
  return (*(*(v21 - 8) + 56))(a1, v20, 1, v21);
}

uint64_t sub_25260A6E8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210](v9);
  sub_25260B694(&v8[*(v6 + 28)], v4, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98);

    return sub_2523714D4(v4, a1, &qword_27F4DB440);
  }

  else
  {
    sub_25260B634(v4, type metadata accessor for Device.Control.Kind);
    v11 = type metadata accessor for AccessoryControl.StatusButtonState(0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_25260A8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - v5;
  v36 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v36);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v15, &qword_27F4DB440);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_252372288(v15, &qword_27F4DB440);
  }

  sub_25260B5CC(v15, v19, type metadata accessor for AccessoryControl.StatusButtonState);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v12[*(v10 + 20)], v9, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v12, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98);
    v22 = &v9[*(v21 + 48)];
    v23 = *v22;
    v24 = *(v22 + 1);
    v31 = *(v22 + 4);
    v30 = *(v22 + 1);
    sub_252372288(v9, &qword_27F4DB440);
    swift_getKeyPath();
    v25 = v33;
    sub_2526926C0();

    v26 = v32;
    v27 = v32 + *(v21 + 48);
    sub_25260B694(v19, v32, type metadata accessor for AccessoryControl.StatusButtonState);
    (*(v17 + 56))(v26, 0, 1, v16);
    *v27 = v23;
    *(v27 + 8) = v24;
    *(v27 + 16) = v30;
    *(v27 + 32) = v31;
    swift_storeEnumTagMultiPayload();
    sub_2526926B0();
    sub_252372288(v25, &qword_27F4E3798);
    v28 = type metadata accessor for AccessoryControl.StatusButtonState;
    v29 = v19;
  }

  else
  {
    sub_25260B634(v19, type metadata accessor for AccessoryControl.StatusButtonState);
    v28 = type metadata accessor for Device.Control.Kind;
    v29 = v9;
  }

  return sub_25260B634(v29, v28);
}

uint64_t sub_25260AD60(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25260AE14(uint64_t a1)
{
  v3 = v2;
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v12 = v1[3];
  v13 = v1[2];
  v10 = v1[7];
  v11 = v1[6];
  v6 = v1[8];
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2523E233C;

  return sub_252603BC0(a1, v13, v12, v11, v10, v6, v1 + v5, v7);
}

uint64_t sub_25260AFA4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_252603F88(v4, v5, v6, v1, v2);
}

uint64_t sub_25260B03C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25260B08C@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);

  return sub_252604A80(a1);
}

uint64_t sub_25260B10C(unsigned __int8 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);

  return sub_252604C54(a1);
}

uint64_t sub_25260B1D4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_25260B280(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_25260B374@<X0>(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);

  return sub_252609DD4(a1);
}

void sub_25260B3F4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);

  sub_252609F68(a1);
}

uint64_t sub_25260B48C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_25260B538(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_25260B5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25260B634(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25260B694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25260B714(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18) - 8);
  v2 = *(*v1 + 80);
  v94 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v3 = v0 + ((v2 + 32) & ~v2) + v1[10];
  v4 = sub_25268DA10();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = type metadata accessor for Device.Control(0);
  v7 = v3 + *(v6 + 20);
  type metadata accessor for Device.Control.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        if (*(v7 + 8))
        {
        }

        goto LABEL_48;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v47 = type metadata accessor for AccessoryControl.StatusButtonState(0);
        if (!(*(*(v47 - 8) + 48))(v7, 1, v47))
        {

          v48 = v7 + *(v47 + 24);
          v49 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
          if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
          {
            v85 = swift_getEnumCaseMultiPayload();
            if (v85 == 2)
            {
            }

            else if (v85 <= 1)
            {
              type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
              if (swift_getEnumCaseMultiPayload() == 2)
              {
                v5(v48, v4);
              }
            }
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98);

        goto LABEL_48;
      }

      if (EnumCaseMultiPayload != 9)
      {
        goto LABEL_49;
      }

      goto LABEL_10;
    }

    if (EnumCaseMultiPayload != 5)
    {
      v5(v7, v4);
      goto LABEL_49;
    }

    v32 = type metadata accessor for AccessoryControl.ThermostatState(0);
    if ((*(*(v32 - 8) + 48))(v7, 1, v32))
    {
LABEL_27:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0);
LABEL_48:

      goto LABEL_49;
    }

    v33 = v7 + *(v32 + 32);
    v34 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
    if (!(*(*(v34 - 8) + 48))(v33, 1, v34))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v82 - 8) + 48))(v33, 1, v82))
        {
          goto LABEL_25;
        }

        v83 = *(v82 + 48);
        v84 = sub_25268D990();
        (*(*(v84 - 8) + 8))(v33 + v83, v84);
      }

      else
      {
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        if ((*(*(v82 - 8) + 48))(v33, 3, v82))
        {
          goto LABEL_25;
        }

        v86 = *(v82 + 48);
        v87 = sub_25268D990();
        v93 = *(v87 - 8);
        if (!(*(v93 + 48))(v33 + v86, 1, v87))
        {
          (*(v93 + 8))(v33 + v86, v87);
        }
      }

      v88 = *(v82 + 64);
      v89 = sub_25268DB10();
      (*(*(v89 - 8) + 8))(v33 + v88, v89);
    }

LABEL_25:
    if (*(v7 + *(v32 + 36) + 8) >= 8uLL)
    {
    }

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_49;
      }

      v9 = type metadata accessor for AccessoryControl.IncrementalState(0);
      if (!(*(*(v9 - 8) + 48))(v7, 1, v9))
      {
        v10 = sub_25268ED70();
        (*(*(v10 - 8) + 8))(v7, v10);
      }

      v11 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8) + 48);

      v12 = type metadata accessor for IconDescriptor();
      v13 = *(v12 + 20);
      v14 = sub_25268F910();
      v15 = *(*(v14 - 8) + 8);
      v15(v11 + v13, v14);
      v16 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v15(v16 + *(v12 + 20), v14);
      v17 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

      v18 = *(v17 + 28);
      v19 = sub_25268EEA0();
      (*(*(v19 - 8) + 8))(v11 + v18, v19);

      v20 = v11 + *(v17 + 56);
      goto LABEL_31;
    }

    if (*(v7 + 32) != 1)
    {
    }

    v21 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428) + 48);

    v22 = type metadata accessor for IconDescriptor();
    v23 = *(v22 + 20);
    v24 = sub_25268F910();
    v25 = *(*(v24 - 8) + 8);
    v25(v21 + v23, v24);
    v26 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

    v25(v26 + *(v22 + 20), v24);
    v27 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

    v28 = v21 + v27[6];
    type metadata accessor for ControlTextModifier.Config(0);
    v29 = swift_getEnumCaseMultiPayload();
    if (v29 == 1)
    {
    }

    else if (!v29)
    {
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
      v31 = sub_25268D990();
      (*(*(v31 - 8) + 8))(v28 + v30, v31);
    }

    v73 = v21 + v27[7];
    v74 = *(v73 + 32);
    if (v74 != 255)
    {
      sub_252376DBC(*v73, *(v73 + 8), *(v73 + 16), *(v73 + 24), v74);
    }

    v75 = v21 + v27[8];
    v76 = *(v75 + 32);
    if (v76 != 255)
    {
      sub_252376DBC(*v75, *(v75 + 8), *(v75 + 16), *(v75 + 24), v76);
    }

    v77 = v21 + v27[11];
    type metadata accessor for AccessoryControl.StatusProvider();
    v78 = swift_getEnumCaseMultiPayload();
    if (v78 <= 3)
    {
      if (v78 != 1 && v78 != 3)
      {
        goto LABEL_10;
      }

      goto LABEL_87;
    }

    if (v78 == 4)
    {
      v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
      v80 = sub_25268D990();
      v81 = *(v80 - 8);
      if (!(*(v81 + 48))(v77 + v79, 1, v80))
      {
        (*(v81 + 8))(v77 + v79, v80);
      }

      goto LABEL_10;
    }

    if (v78 == 5 || v78 == 7)
    {
LABEL_87:
    }

LABEL_10:

    goto LABEL_49;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v44 = type metadata accessor for AccessoryControl.ColorState(0);
      if (!(*(*(v44 - 8) + 48))(v7, 1, v44))
      {
        v45 = sub_25268ED20();
        v46 = *(v45 - 8);
        if (!(*(v46 + 48))(v7, 1, v45))
        {
          (*(v46 + 8))(v7, v45);
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8);
    }

    goto LABEL_48;
  }

  v35 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0) + 48);

  v36 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v37 = v35 + *(v36 + 24);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {

    v39 = type metadata accessor for IconDescriptor();
    v91 = *(v39 + 20);
    v92 = v39;
    v40 = sub_25268F910();
    v41 = *(*(v40 - 8) + 8);
    v41(v37 + v91, v40);
    v42 = v37 + *(v38 + 28);

    v41(v42 + *(v92 + 20), v40);
  }

  v20 = v35 + *(v36 + 40);
LABEL_31:
  type metadata accessor for AccessoryControl.StatusProvider();
  v43 = swift_getEnumCaseMultiPayload();
  if (v43 <= 3)
  {
    if (v43 == 1 || v43 == 3)
    {
      goto LABEL_48;
    }
  }

  else if (v43 == 4)
  {
    v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v71 = sub_25268D990();
    v72 = *(v71 - 8);
    if (!(*(v72 + 48))(v20 + v70, 1, v71))
    {
      (*(v72 + 8))(v20 + v70, v71);
    }
  }

  else if (v43 == 5 || v43 == 7)
  {
    goto LABEL_48;
  }

LABEL_49:
  v50 = v3 + *(v6 + 24);
  type metadata accessor for Device.Control.Source(0);
  v51 = swift_getEnumCaseMultiPayload();
  if (v51 <= 2)
  {
    if (v51)
    {
      if (v51 == 1)
      {
        v55 = sub_25268E710();
        (*(*(v55 - 8) + 8))(v50, v55);
        v56 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
        v57 = sub_25268E310();
        v58 = *(v57 - 8);
        if (!(*(v58 + 48))(v50 + v56, 1, v57))
        {
          (*(v58 + 8))(v50 + v56, v57);
        }

        v59 = type metadata accessor for MatterControlSolver.Source(0);

        v60 = v59[6];
        v61 = sub_25268F130();
        v62 = *(v61 - 8);
        if (!(*(v62 + 48))(v50 + v60, 1, v61))
        {
          (*(v62 + 8))(v50 + v60, v61);
        }

        v63 = v59[8];
        v64 = sub_25268F8E0();
        (*(*(v64 - 8) + 8))(v50 + v63, v64);
        v65 = v59[11];
        v66 = sub_25268EDA0();
        v67 = *(v66 - 8);
        if (!(*(v67 + 48))(v50 + v65, 1, v66))
        {
          (*(v67 + 8))(v50 + v65, v66);
        }

        v68 = v59[13];
        v69 = sub_25268E2F0();
        (*(*(v69 - 8) + 8))(v50 + v68, v69);
      }

      else if (v51 != 2)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v52 = sub_25268F4D0();
      (*(*(v52 - 8) + 8))(v50, v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3088);
    }
  }

  else if (v51 > 4)
  {
    if (v51 == 5 || v51 == 6)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if (v51 != 3)
    {
LABEL_59:

      goto LABEL_70;
    }

    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3090) + 48);
    v54 = sub_25268E530();
    (*(*(v54 - 8) + 8))(v50 + v53, v54);
  }

LABEL_70:

  return MEMORY[0x2821FE8E8](v0, ((v2 + 32) & ~v2) + v94, v2 | 7);
}

uint64_t sub_25260C880(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_25260C914(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Device.Control.init(id:kind:source:role:accessibilityIdentifier:sizeConstraint:preferredViewType:enabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v14 = *a4;
  v15 = *a7;
  v16 = *a8;
  v17 = type metadata accessor for Device.Control(0);
  v18 = (a9 + v17[8]);
  v19 = v17[10];
  *(a9 + v19) = 16;
  v20 = sub_25268DA10();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  sub_25260CAD4(a2, a9 + v17[5], type metadata accessor for Device.Control.Kind);
  result = sub_25260CAD4(a3, a9 + v17[6], type metadata accessor for Device.Control.Source);
  *(a9 + v17[7]) = v14;
  *v18 = a5;
  v18[1] = a6;
  *(a9 + v17[9]) = v15;
  *(a9 + v19) = v16;
  *(a9 + v17[11]) = a10;
  return result;
}

uint64_t sub_25260CAD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Device.Control.Kind.primitive.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25260D07C(v2, v6, type metadata accessor for Device.Control.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8) + 48);
        *a1 = 1;
        sub_25260CE88(v6 + v13, type metadata accessor for AccessoryControl.IncrementalConfig);
        v8 = &qword_27F4DB218;
        return sub_252372288(v6, v8);
      }

      sub_252393F68(*v6, v6[1], v6[2], v6[3], v6[4]);
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428) + 48);
      *a1 = 0;
      v10 = type metadata accessor for AccessoryControl.BinaryViewConfig;
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8);

          *a1 = 3;
          v8 = &qword_27F4DB2A0;
          return sub_252372288(v6, v8);
        }

        result = sub_25260CE88(v6, type metadata accessor for Device.Control.Kind);
        v12 = 4;
LABEL_19:
        *a1 = v12;
        return result;
      }

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0) + 48);
      *a1 = 2;
      v10 = type metadata accessor for AccessoryControl.PickerViewConfig;
    }

    return sub_25260CE88(v6 + v9, v10);
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      result = sub_25260CE88(v6, type metadata accessor for Device.Control.Kind);
      v12 = 7;
    }

    else
    {
      if (EnumCaseMultiPayload == 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98);

        *a1 = 8;
        v8 = &qword_27F4DB440;
        return sub_252372288(v6, v8);
      }

      result = sub_25260CE88(v6, type metadata accessor for Device.Control.Kind);
      v12 = 9;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 5)
  {
    *a1 = 6;
    return sub_25260CE88(v6, type metadata accessor for Device.Control.Kind);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0);

  *a1 = 5;
  v8 = &qword_27F4DB258;
  return sub_252372288(v6, v8);
}

uint64_t sub_25260CE88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Device.Control.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25268DA10();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_25260D07C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25260D130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t Device.Control.role.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Device.Control(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t Device.Control.role.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Device.Control(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t Device.Control.accessibilityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for Device.Control(0) + 32));

  return v1;
}

uint64_t Device.Control.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Device.Control(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Device.Control.sizeConstraint.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for Device.Control(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t Device.Control.sizeConstraint.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for Device.Control(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t Device.Control.preferredViewType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Device.Control(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t Device.Control.preferredViewType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Device.Control(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t Device.Control.enabled.setter(char a1)
{
  result = type metadata accessor for Device.Control(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t static Device.Control.Kind.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v271 = a1;
  v272 = a2;
  v235 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  MEMORY[0x28223BE20](v235);
  v265 = &v230 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v263 = &v230 - v4;
  v5 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  v261 = *(v5 - 8);
  v262 = v5;
  MEMORY[0x28223BE20](v5);
  v234 = (&v230 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440);
  MEMORY[0x28223BE20](v7 - 8);
  v239 = (&v230 - v8);
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7C8);
  MEMORY[0x28223BE20](v257);
  v264 = &v230 - v9;
  v10 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig(0);
  MEMORY[0x28223BE20](v10 - 8);
  v255 = &v230 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v258 = *(v12 - 8);
  v259 = v12;
  MEMORY[0x28223BE20](v12);
  v233 = &v230 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258);
  MEMORY[0x28223BE20](v14 - 8);
  v238 = &v230 - v15;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7C0);
  MEMORY[0x28223BE20](v252);
  v260 = &v230 - v16;
  v17 = type metadata accessor for AccessoryControl.ColorState(0);
  v253 = *(v17 - 8);
  v254 = v17;
  MEMORY[0x28223BE20](v17);
  v232 = &v230 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v19 - 8);
  v237 = &v230 - v20;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7B8);
  MEMORY[0x28223BE20](v244);
  v256 = &v230 - v21;
  v22 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v22 - 8);
  v245 = &v230 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v246 = &v230 - v25;
  v26 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v247 = *(v26 - 8);
  v248 = v26;
  MEMORY[0x28223BE20](v26);
  v231 = &v230 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v28 - 8);
  v236 = &v230 - v29;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7B0);
  MEMORY[0x28223BE20](v243);
  v249 = &v230 - v30;
  v31 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v31 - 8);
  v250 = (&v230 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v251 = (&v230 - v34);
  v35 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v35 - 8);
  v240 = (&v230 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  v266 = (&v230 - v38);
  v39 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v39);
  v241 = &v230 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v242 = &v230 - v42;
  MEMORY[0x28223BE20](v43);
  v267 = &v230 - v44;
  MEMORY[0x28223BE20](v45);
  *(&v270 + 1) = &v230 - v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v230 - v48;
  MEMORY[0x28223BE20](v50);
  v269 = &v230 - v51;
  MEMORY[0x28223BE20](v52);
  *&v270 = &v230 - v53;
  MEMORY[0x28223BE20](v54);
  v56 = &v230 - v55;
  MEMORY[0x28223BE20](v57);
  v268 = &v230 - v58;
  MEMORY[0x28223BE20](v59);
  v61 = &v230 - v60;
  MEMORY[0x28223BE20](v62);
  v64 = &v230 - v63;
  MEMORY[0x28223BE20](v65);
  v67 = (&v230 - v66);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E37A8);
  MEMORY[0x28223BE20](v68 - 8);
  v70 = &v230 - v69;
  v72 = (&v230 + *(v71 + 56) - v69);
  sub_25260D07C(v271, &v230 - v69, type metadata accessor for Device.Control.Kind);
  v73 = v272;
  v272 = v72;
  sub_25260D07C(v73, v72, type metadata accessor for Device.Control.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      v83 = v272;
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload != 8)
        {
          v155 = v267;
          sub_25260D07C(v70, v267, type metadata accessor for Device.Control.Kind);
          v156 = *v155;
          if (swift_getEnumCaseMultiPayload() != 9)
          {

            goto LABEL_66;
          }

          v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430);
          v158 = swift_projectBox();
          v271 = v156;
          v159 = v158;
          v160 = *(v157 + 48);
          v161 = swift_projectBox();
          v162 = v242;
          sub_25260D07C(v159, v242, type metadata accessor for Device.Control.Kind);
          v163 = v241;
          sub_25260D07C(v161, v241, type metadata accessor for Device.Control.Kind);
          v164 = v263;
          sub_25260D07C(v159 + v160, v263, type metadata accessor for AccessoryControl.DecorationControlConfig);
          v165 = v161 + v160;
          v166 = v265;
          sub_25260D07C(v165, v265, type metadata accessor for AccessoryControl.DecorationControlConfig);
          if (static Device.Control.Kind.== infix(_:_:)(v162, v163))
          {
            v167 = sub_25268EE80();
            sub_25260CE88(v163, type metadata accessor for Device.Control.Kind);
            sub_25260CE88(v162, type metadata accessor for Device.Control.Kind);
            if ((v167 & 1) != 0 && *(v164 + *(v235 + 20)) == *(v166 + *(v235 + 20)))
            {
              v168 = v235;
              v169 = *(v164 + *(v235 + 24));
              sub_25260CE88(v164, type metadata accessor for AccessoryControl.DecorationControlConfig);
              LODWORD(v168) = *(v166 + *(v168 + 24));
              sub_25260CE88(v166, type metadata accessor for AccessoryControl.DecorationControlConfig);

              if (v169 != v168)
              {
                goto LABEL_111;
              }

              goto LABEL_79;
            }

            sub_25260CE88(v166, type metadata accessor for AccessoryControl.DecorationControlConfig);
            sub_25260CE88(v164, type metadata accessor for AccessoryControl.DecorationControlConfig);

LABEL_111:
            v201 = v70;
            goto LABEL_132;
          }

          sub_25260CE88(v166, type metadata accessor for AccessoryControl.DecorationControlConfig);
          sub_25260CE88(v164, type metadata accessor for AccessoryControl.DecorationControlConfig);
          sub_25260CE88(v163, type metadata accessor for Device.Control.Kind);
          sub_25260CE88(v162, type metadata accessor for Device.Control.Kind);

          v201 = v70;
LABEL_132:
          sub_25260CE88(v201, type metadata accessor for Device.Control.Kind);
          goto LABEL_133;
        }

        v271 = v70;
        v84 = *(&v270 + 1);
        sub_25260D07C(v70, *(&v270 + 1), type metadata accessor for Device.Control.Kind);
        v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98) + 48);
        v86 = *(v84 + v85);
        v87 = *(v84 + v85 + 8);
        v88 = *(v84 + v85 + 16);
        v89 = *(v84 + v85 + 24);
        v90 = *(v84 + v85 + 32);
        if (swift_getEnumCaseMultiPayload() != 8)
        {

          sub_252372288(v84, &qword_27F4DB440);
          v70 = v271;
          goto LABEL_66;
        }

        v266 = v87;
        LODWORD(v267) = v86;
        LODWORD(v265) = *(v83 + v85);
        v91 = *(v83 + v85 + 16);
        v263 = *(v83 + v85 + 8);
        v92 = *(v83 + v85 + 32);
        v269 = *(v83 + v85 + 24);
        *&v270 = v91;
        v268 = v92;
        v93 = *(v257 + 48);
        v94 = v264;
        sub_2523714D4(v84, v264, &qword_27F4DB440);
        sub_2523714D4(v83, v94 + v93, &qword_27F4DB440);
        v95 = v262;
        v96 = *(v261 + 48);
        if (v96(v94, 1, v262) == 1)
        {
          if (v96(v94 + v93, 1, v95) == 1)
          {
            sub_252372288(v94, &qword_27F4DB440);
LABEL_107:
            LOBYTE(v294) = v267;
            *(&v294 + 1) = v266;
            *&v295 = v88;
            *(&v295 + 1) = v89;
            *&v296 = v90;
            LOBYTE(v287) = v265;
            *(&v287 + 1) = v263;
            *&v288 = v270;
            *(&v288 + 1) = v269;
            *&v289 = v268;
            v178 = _s22HomeAccessoryControlUI0bC0V22StatusButtonViewConfigV2eeoiySbAE_AEtFZ_0(&v294, &v287);

LABEL_123:

            sub_25260CE88(v271, type metadata accessor for Device.Control.Kind);
            return v178 & 1;
          }

          goto LABEL_103;
        }

        v200 = v239;
        sub_25237153C(v94, v239, &qword_27F4DB440);
        if (v96(v94 + v93, 1, v95) == 1)
        {

          sub_25260CE88(v200, type metadata accessor for AccessoryControl.StatusButtonState);
LABEL_103:
          sub_252372288(v94, &qword_27F4DB7C8);
LABEL_131:
          v201 = v271;
          goto LABEL_132;
        }

        v215 = v234;
        sub_25260CAD4(v94 + v93, v234, type metadata accessor for AccessoryControl.StatusButtonState);
        v216 = _s22HomeAccessoryControlUI0bC0V17StatusButtonStateV2eeoiySbAE_AEtFZ_0(v200, v215);
        sub_25260CE88(v215, type metadata accessor for AccessoryControl.StatusButtonState);
        sub_25260CE88(v200, type metadata accessor for AccessoryControl.StatusButtonState);
        sub_252372288(v94, &qword_27F4DB440);
        if (v216)
        {
          goto LABEL_107;
        }

LABEL_130:

        goto LABEL_131;
      }

      v271 = v70;
      sub_25260D07C(v70, v49, type metadata accessor for Device.Control.Kind);
      v128 = *v49;
      v129 = *(v49 + 1);
      v131 = *(v49 + 2);
      v130 = *(v49 + 3);
      v132 = *(v49 + 4);
      LODWORD(v270) = v49[40];
      v133 = *(v49 + 7);
      v269 = *(v49 + 6);
      *(&v270 + 1) = v133;
      v134 = *(v49 + 8);
      if (swift_getEnumCaseMultiPayload() != 7)
      {

        sub_2523E2E24(v128, v129);
        v70 = v271;
        goto LABEL_66;
      }

      v268 = v132;
      v136 = *v83;
      v135 = *(v83 + 8);
      v137 = *(v83 + 16);
      v138 = *(v83 + 32);
      v139 = *(v83 + 40);
      v141 = *(v83 + 48);
      v140 = *(v83 + 56);
      v266 = *(v83 + 24);
      v267 = v140;
      v142 = *(v83 + 64);
      if (v129)
      {
        v265 = v136;
        if (v135)
        {
          v262 = v141;
          LODWORD(v263) = v139;
          v272 = v142;
          v264 = v138;
          if (v128 == v136 && v129 == v135 || (v143 = v137, v144 = sub_2526933B0(), v137 = v143, (v144 & 1) != 0))
          {
            v145 = sub_2523E5934(v131, v137);
            sub_2523E165C(v128, v129);
            if (v145)
            {
              sub_2523E165C(v128, v129);
              v147 = v265;
              v146 = v266;
              sub_2523E165C(v265, v135);
              LODWORD(v261) = sub_252436F58(v130, v146);
              sub_2523E2E24(v147, v135);
              sub_2523E2E24(v128, v129);
              sub_2523E2E24(v147, v135);

              sub_2523E2E24(v128, v129);
              if ((v261 & 1) == 0)
              {
                goto LABEL_130;
              }

LABEL_122:
              *&v294 = v268;
              BYTE8(v294) = v270;
              *&v295 = v269;
              *(&v295 + 1) = *(&v270 + 1);
              *&v296 = v134;
              *&v287 = v264;
              BYTE8(v287) = v263;
              *&v288 = v262;
              *(&v288 + 1) = v267;
              *&v289 = v272;
              v178 = _s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV2eeoiySbAE_AEtFZ_0(&v294, &v287);

              goto LABEL_123;
            }
          }

          else
          {
            sub_2523E165C(v128, v129);
          }

          sub_2523E2E24(v265, v135);

          sub_2523E2E24(v128, v129);
          goto LABEL_130;
        }

        v272 = 0;
        sub_2523E165C(v128, v129);
        sub_2523E165C(v128, v129);
        sub_2523E165C(v136, 0);
        v135 = v272;

        v205 = v265;

        sub_2523E2E24(v205, 0);
        sub_2523E2E24(v128, v129);
      }

      else
      {
        if (!v135)
        {
          v262 = v141;
          LODWORD(v263) = v139;
          v272 = v142;
          v264 = v138;
          sub_2523E2E24(v128, 0);
          goto LABEL_122;
        }

        v205 = v136;
      }

      sub_2523E2E24(v128, v129);
      sub_2523E2E24(v205, v135);
      goto LABEL_131;
    }

    v104 = v272;
    if (EnumCaseMultiPayload != 5)
    {
      v181 = v269;
      sub_25260D07C(v70, v269, type metadata accessor for Device.Control.Kind);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v182 = v255;
        sub_25260CAD4(v104, v255, type metadata accessor for AccessoryControl.AlarmAndTimerConfig);
        v178 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
        v179 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig;
        sub_25260CE88(v182, type metadata accessor for AccessoryControl.AlarmAndTimerConfig);
        v180 = v181;
        goto LABEL_75;
      }

      v183 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig;
      v184 = v181;
LABEL_65:
      sub_25260CE88(v184, v183);
      goto LABEL_66;
    }

    v75 = v270;
    sub_25260D07C(v70, v270, type metadata accessor for Device.Control.Kind);
    v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0) + 48);
    v106 = *(v75 + v105 + 80);
    v298 = *(v75 + v105 + 64);
    v299 = v106;
    v300 = *(v75 + v105 + 96);
    v107 = *(v75 + v105 + 16);
    v294 = *(v75 + v105);
    v295 = v107;
    v108 = *(v75 + v105 + 48);
    v296 = *(v75 + v105 + 32);
    v297 = v108;
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_252385F08(&v294);
      v185 = &qword_27F4DB258;
LABEL_62:
      sub_252372288(v75, v185);
      goto LABEL_66;
    }

    v109 = *(v104 + v105 + 80);
    v291 = *(v104 + v105 + 64);
    v292 = v109;
    v293 = *(v104 + v105 + 96);
    v110 = *(v104 + v105 + 16);
    v287 = *(v104 + v105);
    v288 = v110;
    v111 = *(v104 + v105 + 48);
    v289 = *(v104 + v105 + 32);
    v290 = v111;
    v112 = *(v252 + 48);
    v113 = v75;
    v80 = v260;
    sub_2523714D4(v113, v260, &qword_27F4DB258);
    sub_2523714D4(v104, v80 + v112, &qword_27F4DB258);
    v114 = v259;
    v115 = *(v258 + 48);
    if (v115(v80, 1, v259) == 1)
    {
      if (v115(v80 + v112, 1, v114) == 1)
      {
        sub_252372288(v80, &qword_27F4DB258);
        goto LABEL_113;
      }

      sub_252385F08(&v287);
      sub_252385F08(&v294);
    }

    else
    {
      v202 = v238;
      sub_25237153C(v80, v238, &qword_27F4DB258);
      if (v115(v80 + v112, 1, v114) != 1)
      {
        v217 = v80 + v112;
        v218 = v233;
        sub_25260CAD4(v217, v233, type metadata accessor for AccessoryControl.ThermostatState);
        v219 = _s22HomeAccessoryControlUI0bC0V15ThermostatStateV2eeoiySbAE_AEtFZ_0(v202, v218);
        sub_25260CE88(v218, type metadata accessor for AccessoryControl.ThermostatState);
        sub_25260CE88(v202, type metadata accessor for AccessoryControl.ThermostatState);
        sub_252372288(v80, &qword_27F4DB258);
        if ((v219 & 1) == 0)
        {
          sub_252385F08(&v287);
          sub_252385F08(&v294);
          goto LABEL_111;
        }

LABEL_113:
        v284 = v298;
        v285 = v299;
        v286 = v300;
        v280 = v294;
        v281 = v295;
        v282 = v296;
        v283 = v297;
        v277 = v291;
        v278 = v292;
        v279 = v293;
        v273 = v287;
        v274 = v288;
        v275 = v289;
        v276 = v290;
        v178 = _s22HomeAccessoryControlUI0bC0V16ThermostatConfigV2eeoiySbAE_AEtFZ_0(&v280, &v273);
        sub_252385F08(&v287);
        sub_252385F08(&v294);
        goto LABEL_76;
      }

      sub_252385F08(&v287);
      sub_252385F08(&v294);
      sub_25260CE88(v202, type metadata accessor for AccessoryControl.ThermostatState);
    }

    v211 = &qword_27F4DB7C0;
LABEL_110:
    sub_252372288(v80, v211);
    goto LABEL_111;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v271 = v70;
      sub_25260D07C(v70, v67, type metadata accessor for Device.Control.Kind);
      v98 = *v67;
      v97 = v67[1];
      v100 = v67[2];
      v99 = v67[3];
      v101 = v67[4];
      v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428) + 48);
      v103 = v272;
      if (swift_getEnumCaseMultiPayload())
      {
        sub_25260CE88(v67 + v102, type metadata accessor for AccessoryControl.BinaryViewConfig);
        sub_252393F68(v98, v97, v100, v99, v101);
        v70 = v271;
        goto LABEL_66;
      }

      *&v270 = v98;
      *(&v270 + 1) = v97;
      v186 = v103[1];
      v267 = *v103;
      v268 = v186;
      v187 = v103[3];
      v269 = v103[2];
      v188 = v103[4];
      sub_25260CAD4(v67 + v102, v266, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v189 = v103 + v102;
      v190 = v240;
      sub_25260CAD4(v189, v240, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v191 = v101;
      if (v101 == 1)
      {
        v192 = *(&v270 + 1);
        v193 = v271;
        v194 = v99;
        v195 = v100;
        v196 = v270;
        if (v188 == 1)
        {
          sub_252393F68(v270, *(&v270 + 1), v100, v99, 1);
LABEL_120:
          v228 = v266;
          v178 = _s22HomeAccessoryControlUI0bC0V16BinaryViewConfigV2eeoiySbAE_AEtFZ_0(v266, v190);
          sub_25260CE88(v190, type metadata accessor for AccessoryControl.BinaryViewConfig);
          sub_25260CE88(v228, type metadata accessor for AccessoryControl.BinaryViewConfig);
          sub_25260CE88(v193, type metadata accessor for Device.Control.Kind);
          return v178 & 1;
        }
      }

      else
      {
        v206 = v187;
        v207 = v270;
        v208 = v188;
        v209 = *(&v270 + 1);
        v294 = v270;
        v195 = v100;
        *&v295 = v100;
        *(&v295 + 1) = v99;
        v194 = v99;
        *&v296 = v191;
        if (v208 != 1)
        {
          LOBYTE(v287) = v267 & 1;
          *(&v287 + 1) = v268;
          LOBYTE(v288) = v269 & 1;
          *(&v288 + 1) = v206;
          *&v289 = v208;
          v225 = v191;
          v226 = v195;
          v227 = _s22HomeAccessoryControlUI0bC0V11BinaryStateV2eeoiySbAE_AEtFZ_0(&v294, &v287);
          sub_25239F750(v207, v209, v226, v194, v225);

          sub_252393F68(v207, v209, v226, v194, v225);
          v193 = v271;
          if (v227)
          {
            goto LABEL_120;
          }

          goto LABEL_99;
        }

        v210 = v191;
        sub_25239F750(v270, *(&v270 + 1), v100, v99, v191);

        v191 = v210;
        v192 = *(&v270 + 1);
        v196 = v270;
        v188 = 1;
        v187 = v206;
        v193 = v271;
      }

      sub_252393F68(v196, v192, v195, v194, v191);
      sub_252393F68(v267, v268, v269, v187, v188);
LABEL_99:
      sub_25260CE88(v190, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_25260CE88(v266, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v201 = v193;
      goto LABEL_132;
    }

    sub_25260D07C(v70, v64, type metadata accessor for Device.Control.Kind);
    v170 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8) + 48);
    v171 = v272;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_25260CE88(&v64[v170], type metadata accessor for AccessoryControl.IncrementalConfig);
      sub_252372288(v64, &qword_27F4DB218);
      goto LABEL_66;
    }

    v172 = v251;
    sub_25260CAD4(&v64[v170], v251, type metadata accessor for AccessoryControl.IncrementalConfig);
    v173 = v250;
    sub_25260CAD4(v171 + v170, v250, type metadata accessor for AccessoryControl.IncrementalConfig);
    v174 = *(v243 + 48);
    v175 = v249;
    sub_2523714D4(v64, v249, &qword_27F4DB218);
    sub_2523714D4(v171, v175 + v174, &qword_27F4DB218);
    v176 = v248;
    v177 = *(v247 + 48);
    if (v177(v175, 1, v248) == 1)
    {
      if (v177(v175 + v174, 1, v176) == 1)
      {
        sub_252372288(v175, &qword_27F4DB218);
LABEL_52:
        v178 = _s22HomeAccessoryControlUI0bC0V17IncrementalConfigV2eeoiySbAE_AEtFZ_0(v172, v173);
        v179 = type metadata accessor for AccessoryControl.IncrementalConfig;
        sub_25260CE88(v173, type metadata accessor for AccessoryControl.IncrementalConfig);
        v180 = v172;
        goto LABEL_75;
      }
    }

    else
    {
      v203 = v236;
      sub_25237153C(v175, v236, &qword_27F4DB218);
      if (v177(v175 + v174, 1, v176) != 1)
      {
        v220 = v175 + v174;
        v221 = v231;
        sub_25260CAD4(v220, v231, type metadata accessor for AccessoryControl.IncrementalState);
        if (sub_25268ED60())
        {
          v222 = *(v176 + 20);
          v223 = *(v203 + v222);
          v224 = *(v221 + v222);
          sub_25260CE88(v221, type metadata accessor for AccessoryControl.IncrementalState);
          sub_25260CE88(v203, type metadata accessor for AccessoryControl.IncrementalState);
          sub_252372288(v175, &qword_27F4DB218);
          if (v223 == v224)
          {
            goto LABEL_52;
          }

LABEL_91:
          v126 = type metadata accessor for AccessoryControl.IncrementalConfig;
          sub_25260CE88(v173, type metadata accessor for AccessoryControl.IncrementalConfig);
          v127 = v172;
          goto LABEL_92;
        }

        sub_25260CE88(v221, type metadata accessor for AccessoryControl.IncrementalState);
        sub_25260CE88(v203, type metadata accessor for AccessoryControl.IncrementalState);
        v204 = &qword_27F4DB218;
LABEL_90:
        sub_252372288(v175, v204);
        goto LABEL_91;
      }

      sub_25260CE88(v203, type metadata accessor for AccessoryControl.IncrementalState);
    }

    v204 = &qword_27F4DB7B0;
    goto LABEL_90;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v75 = v268;
      sub_25260D07C(v70, v268, type metadata accessor for Device.Control.Kind);
      v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8) + 48);
      v294 = *(v75 + v76);
      *&v295 = *(v75 + v76 + 16);
      v77 = v272;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v287 = *(v77 + v76);
        *&v288 = *(v77 + v76 + 16);
        v78 = *(v244 + 48);
        v79 = v75;
        v80 = v256;
        sub_2523714D4(v79, v256, &qword_27F4DB2A0);
        sub_2523714D4(v77, v80 + v78, &qword_27F4DB2A0);
        v81 = v254;
        v82 = *(v253 + 48);
        if (v82(v80, 1, v254) == 1)
        {
          if (v82(v80 + v78, 1, v81) == 1)
          {
            sub_252372288(v80, &qword_27F4DB2A0);
LABEL_105:
            v280 = v294;
            *&v281 = v295;
            v273 = v287;
            *&v274 = v288;
            v178 = _s22HomeAccessoryControlUI0bC0V17ColorPickerConfigV2eeoiySbAE_AEtFZ_0(&v280, &v273);
            sub_252394280(&v287);
            sub_252394280(&v294);
            goto LABEL_76;
          }

          sub_252394280(&v287);
          sub_252394280(&v294);
        }

        else
        {
          v199 = v237;
          sub_25237153C(v80, v237, &qword_27F4DB2A0);
          if (v82(v80 + v78, 1, v81) != 1)
          {
            v212 = v80 + v78;
            v213 = v232;
            sub_25260CAD4(v212, v232, type metadata accessor for AccessoryControl.ColorState);
            v214 = _s22HomeAccessoryControlUI0bC0V10ColorStateV2eeoiySbAE_AEtFZ_0(v199, v213);
            sub_25260CE88(v213, type metadata accessor for AccessoryControl.ColorState);
            sub_25260CE88(v199, type metadata accessor for AccessoryControl.ColorState);
            sub_252372288(v80, &qword_27F4DB2A0);
            if (v214)
            {
              goto LABEL_105;
            }

            sub_252394280(&v287);
            sub_252394280(&v294);
            goto LABEL_111;
          }

          sub_252394280(&v287);
          sub_252394280(&v294);
          sub_25260CE88(v199, type metadata accessor for AccessoryControl.ColorState);
        }

        v211 = &qword_27F4DB7B8;
        goto LABEL_110;
      }

      sub_252394280(&v294);
      v185 = &qword_27F4DB2A0;
      goto LABEL_62;
    }

    sub_25260D07C(v70, v56, type metadata accessor for Device.Control.Kind);
    v149 = *v56;
    v148 = *(v56 + 1);
    v150 = v56[16];
    v151 = v272;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v152 = *v151;
      v153 = v151[1];
      v154 = *(v151 + 16);
      if (v149 == v152 && v148 == v153)
      {

        if (v150 != v154)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v198 = sub_2526933B0();

        if (v198 & 1) == 0 || ((v150 ^ v154))
        {
          goto LABEL_111;
        }
      }

LABEL_79:
      sub_25260CE88(v70, type metadata accessor for Device.Control.Kind);
      v178 = 1;
      return v178 & 1;
    }

LABEL_66:
    sub_252372288(v70, &qword_27F4E37A8);
LABEL_133:
    v178 = 0;
    return v178 & 1;
  }

  sub_25260D07C(v70, v61, type metadata accessor for Device.Control.Kind);
  v116 = *v61;
  v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0) + 48);
  v118 = v272;
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v183 = type metadata accessor for AccessoryControl.PickerViewConfig;
    v184 = &v61[v117];
    goto LABEL_65;
  }

  v119 = v61[8];
  v120 = *v118;
  v121 = *(v118 + 8);
  v122 = &v61[v117];
  v123 = v246;
  sub_25260CAD4(v122, v246, type metadata accessor for AccessoryControl.PickerViewConfig);
  v124 = v118 + v117;
  v125 = v245;
  sub_25260CAD4(v124, v245, type metadata accessor for AccessoryControl.PickerViewConfig);
  if (v119)
  {
    if (!v121)
    {
LABEL_27:
      v126 = type metadata accessor for AccessoryControl.PickerViewConfig;
      sub_25260CE88(v125, type metadata accessor for AccessoryControl.PickerViewConfig);
      v127 = v123;
LABEL_92:
      sub_25260CE88(v127, v126);
      goto LABEL_111;
    }
  }

  else
  {
    if (v116 == v120)
    {
      v197 = v121;
    }

    else
    {
      v197 = 1;
    }

    if (v197)
    {
      goto LABEL_27;
    }
  }

  v178 = _s22HomeAccessoryControlUI0bC0V16PickerViewConfigV2eeoiySbAE_AEtFZ_0(v123, v125);
  v179 = type metadata accessor for AccessoryControl.PickerViewConfig;
  sub_25260CE88(v125, type metadata accessor for AccessoryControl.PickerViewConfig);
  v180 = v123;
LABEL_75:
  sub_25260CE88(v180, v179);
LABEL_76:
  sub_25260CE88(v70, type metadata accessor for Device.Control.Kind);
  return v178 & 1;
}