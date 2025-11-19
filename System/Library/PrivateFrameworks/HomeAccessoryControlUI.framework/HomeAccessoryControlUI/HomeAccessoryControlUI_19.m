uint64_t sub_25252AA30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DecorationControlView.Appearance.Button(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_index_8Tm);
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconDescriptor();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25252AB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DecorationControlView.Appearance.Button(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_9Tm);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IconDescriptor();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_25252AC60(uint64_t a1)
{
  result = type metadata accessor for DecorationControlView.Appearance.Button(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_25252AD14(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  MEMORY[0x28223BE20](v8);
  v29 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v26 = &v23 - v12;
  v13 = *v3;
  v28 = *(*v3 + 16);
  if (v28)
  {
    v14 = 0;
    v15 = (v11 + 56);
    v25 = v11;
    v16 = (v11 + 48);
    v17 = MEMORY[0x277D84F90];
    v18 = v13 + 40;
    v27 = a2 & 1;
    while (v14 < *(v13 + 16))
    {
      v19 = *(v18 - 8);
      v31 = v30;
      v32 = v27;

      v19(&v31);
      (*v15)(v7, 0, 1, v8);

      if ((*v16)(v7, 1, v8) == 1)
      {
        sub_252372288(v7, &qword_27F4DB140);
      }

      else
      {
        v20 = v26;
        sub_25252EE9C(v7, v26, type metadata accessor for AccessoryControl.WriteSpecification);
        sub_25252EE9C(v20, v29, type metadata accessor for AccessoryControl.WriteSpecification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_2523698CC(0, v17[2] + 1, 1, v17);
        }

        v22 = v17[2];
        v21 = v17[3];
        if (v22 >= v21 >> 1)
        {
          v17 = sub_2523698CC(v21 > 1, v22 + 1, 1, v17);
        }

        v17[2] = v22 + 1;
        sub_25252EE9C(v29, v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for AccessoryControl.WriteSpecification);
      }

      ++v14;
      v18 += 16;
      if (v28 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_13:
    static AccessoryControl.WriteSpecification.merge(writeSpecifications:)(v17, v24);
  }
}

uint64_t sub_25252B02C()
{
  v1 = type metadata accessor for DecorationControlView.Appearance.Button(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DecorationControlView.Appearance(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25252ECC8(v0, v7, type metadata accessor for DecorationControlView.Appearance);
  sub_25252EE9C(v7, v4, type metadata accessor for DecorationControlView.Appearance.Button);
  MEMORY[0x2530A4FE0](0);
  sub_252692C80();
  type metadata accessor for IconDescriptor();
  sub_25268F910();
  sub_25252B5CC(&qword_27F4DB560, MEMORY[0x277D165A0]);
  sub_252692B30();
  sub_252693480();
  MEMORY[0x2530A4FE0](v4[*(v2 + 28)]);
  return sub_25252EE3C(v4, type metadata accessor for DecorationControlView.Appearance.Button);
}

uint64_t sub_25252B1E0(uint64_t a1)
{
  sub_252693460();
  sub_252692C80();
  type metadata accessor for IconDescriptor();
  sub_25268F910();
  sub_25252B5CC(&qword_27F4DB560, MEMORY[0x277D165A0]);
  sub_252692B30();
  sub_252693480();
  MEMORY[0x2530A4FE0](*(v1 + *(a1 + 20)));
  return sub_2526934C0();
}

uint64_t sub_25252B2C0(uint64_t a1, uint64_t a2)
{
  sub_252692C80();
  type metadata accessor for IconDescriptor();
  sub_25268F910();
  sub_25252B5CC(&qword_27F4DB560, MEMORY[0x277D165A0]);
  sub_252692B30();
  sub_252693480();
  return MEMORY[0x2530A4FE0](*(v2 + *(a2 + 20)));
}

uint64_t sub_25252B380(uint64_t a1, uint64_t a2)
{
  sub_252693460();
  sub_252692C80();
  type metadata accessor for IconDescriptor();
  sub_25268F910();
  sub_25252B5CC(&qword_27F4DB560, MEMORY[0x277D165A0]);
  sub_252692B30();
  sub_252693480();
  MEMORY[0x2530A4FE0](*(v2 + *(a2 + 20)));
  return sub_2526934C0();
}

uint64_t sub_25252B460()
{
  sub_252693460();
  sub_25252B02C();
  return sub_2526934C0();
}

uint64_t sub_25252B4A4()
{
  sub_252693460();
  sub_25252B02C();
  return sub_2526934C0();
}

unint64_t sub_25252B4E8()
{
  result = qword_27F4E12B0;
  if (!qword_27F4E12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E12B0);
  }

  return result;
}

uint64_t sub_25252B5CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25252B630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = type metadata accessor for DecorationControlView(0);
  MEMORY[0x28223BE20](v3);
  v87 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E12D0);
  MEMORY[0x28223BE20](v97);
  v98 = &v81 - v5;
  v6 = sub_2526910F0();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x28223BE20](v6);
  v84 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_252691BD0();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DecorationControlView.Appearance.Button(0);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DecorationControlView.Appearance(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E12D8);
  MEMORY[0x28223BE20](v94);
  v95 = &v81 - v14;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E12E0);
  v93 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v81 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v81 - v17;
  v19 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v3;
  v26 = *(v3 + 20);
  v27 = a1;
  v28 = a1 + v26;
  v29 = type metadata accessor for AccessoryControl(0);
  sub_25252ECC8(v28 + *(v29 + 20), v24, type metadata accessor for AccessoryControl.State);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);
    v82 = v21;
    sub_25252EE9C(v24, v21, type metadata accessor for AccessoryControl.PickerViewConfig);
    v31 = &v24[v30];
    v32 = v18;
    sub_2523714D4(v31, v18, &qword_27F4DAD68);
    v33 = v95;
    sub_25252ECC8(v21, v95, type metadata accessor for AccessoryControl.PickerViewConfig);
    v34 = v94;
    v35 = v32;
    sub_25237153C(v32, v33 + *(v94 + 9), &qword_27F4DAD68);
    v36 = v33 + *(v34 + 40);
    v37 = v27;
    sub_25252ECC8(v27, v13, type metadata accessor for DecorationControlView.Appearance);
    v38 = v88;
    sub_25252EE9C(v13, v88, type metadata accessor for DecorationControlView.Appearance.Button);
    sub_25252ECC8(v38, v36, type metadata accessor for DecorationControlView.Appearance.Button);
    v39 = type metadata accessor for DecorationControlView.ButtonAppearanceContent(0);
    sub_25252ECC8(v28, v36 + v39[5], type metadata accessor for AccessoryControl);
    v40 = *(v25 + 24);
    v41 = v39[6];
    v42 = sub_252690CA0();
    (*(*(v42 - 8) + 16))(v36 + v41, v37 + v40, v42);
    v100 = 0x4038000000000000;
    (*(v89 + 104))(v90, *MEMORY[0x277CE0A50], v91);
    sub_252471B6C();
    sub_252690940();
    sub_25252EE3C(v38, type metadata accessor for DecorationControlView.Appearance.Button);
    v43 = v36 + v39[8];
    KeyPath = swift_getKeyPath();
    *v43 = KeyPath;
    *(v43 + 8) = 0;
    v45 = v37 + *(v25 + 28);
    v46 = *v45;
    v47 = *(v45 + 8) == 1;
    v48 = v34;
    v83 = v35;
    if (!v47)
    {

      sub_252692F00();
      v49 = sub_2526919C0();
      sub_252690570();

      v50 = v84;
      sub_2526910E0();
      swift_getAtKeyPath();
      sub_25235E264(v46, 0);
      KeyPath = (*(v85 + 8))(v50, v86);
    }

    v94 = &v81;
    MEMORY[0x28223BE20](KeyPath);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E12E8);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E12F0);
    v53 = sub_252400FC8(&qword_27F4E12F8, &qword_27F4E12D8);
    v54 = sub_25252ED30();
    v100 = v34;
    v101 = MEMORY[0x277CE1120];
    v102 = v53;
    v103 = v54;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v80 = sub_25252ED84();
    v55 = v92;
    v56 = v95;
    sub_252691D60();
    sub_252372288(v56, &qword_27F4E12D8);
    v57 = v93;
    v58 = v96;
    (*(v93 + 16))(v98, v55, v96);
    swift_storeEnumTagMultiPayload();
    v100 = v48;
    v101 = v51;
    v102 = v52;
    v103 = v53;
    v104 = OpaqueTypeConformance2;
    v105 = v80;
    swift_getOpaqueTypeConformance2();
    sub_252691470();
    (*(v57 + 8))(v55, v58);
    sub_252372288(v83, &qword_27F4DAD68);
    v59 = type metadata accessor for AccessoryControl.PickerViewConfig;
    v60 = v82;
  }

  else
  {
    v61 = v94;
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v62 = sub_2526905A0();
    __swift_project_value_buffer(v62, qword_27F4E4B18);
    v63 = v87;
    sub_25252ECC8(v27, v87, type metadata accessor for DecorationControlView);
    v64 = sub_252690580();
    v65 = sub_252692F00();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v100 = v67;
      *v66 = 136315138;
      v68 = AccessoryControl.State.description.getter();
      v70 = v69;
      sub_25252EE3C(v63, type metadata accessor for DecorationControlView);
      v71 = sub_2525BDA90(v68, v70, &v100);

      *(v66 + 4) = v71;
      _os_log_impl(&dword_252309000, v64, v65, "Unhandled control state in DecorationControlView: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x2530A5A40](v67, -1, -1);
      MEMORY[0x2530A5A40](v66, -1, -1);
    }

    else
    {

      sub_25252EE3C(v63, type metadata accessor for DecorationControlView);
    }

    swift_storeEnumTagMultiPayload();
    v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E12E8);
    v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E12F0);
    v74 = sub_252400FC8(&qword_27F4E12F8, &qword_27F4E12D8);
    v75 = sub_25252ED30();
    v100 = v61;
    v101 = MEMORY[0x277CE1120];
    v102 = v74;
    v103 = v75;
    v76 = swift_getOpaqueTypeConformance2();
    v77 = sub_25252ED84();
    v100 = v61;
    v101 = v72;
    v102 = v73;
    v103 = v74;
    v104 = v76;
    v105 = v77;
    swift_getOpaqueTypeConformance2();
    sub_252691470();
    v59 = type metadata accessor for AccessoryControl.State;
    v60 = v24;
  }

  return sub_25252EE3C(v60, v59);
}

uint64_t sub_25252C274()
{
  type metadata accessor for DecorationControlView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E12D8);
  sub_252400FC8(&qword_27F4E12F8, &qword_27F4E12D8);
  sub_25252ED30();
  return sub_252691F90();
}

uint64_t sub_25252C330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2526952C0;
  v5 = sub_252691A70();
  *(inited + 32) = v5;
  v6 = sub_252691A50();
  *(inited + 33) = v6;
  v7 = sub_252691A30();
  *(inited + 34) = v7;
  v8 = sub_252691A60();
  sub_252691A60();
  if (sub_252691A60() != v5)
  {
    v8 = sub_252691A60();
  }

  sub_252691A60();
  if (sub_252691A60() != v6)
  {
    v8 = sub_252691A60();
  }

  sub_252691A60();
  if (sub_252691A60() != v7)
  {
    v8 = sub_252691A60();
  }

  sub_252690760();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_25237153C(a1, a2, &qword_27F4E12D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E12F0);
  v18 = a2 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_25252C4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = *(a1 + 16);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E13E8);
  v37 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E13F0);
  sub_252691130();
  sub_252400FC8(&qword_27F4E13F8, &qword_27F4E13F0);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v3;
  v49 = v33;
  v50 = v37;
  v51 = OpaqueTypeConformance2;
  v34 = sub_252691C30();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = v28 - v7;
  v8 = *(a1 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v28[1] = v11;
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v8 + 16);
  v29(v12, v2, a1, v10);
  sub_252692E00();
  v13 = sub_252692DF0();
  v14 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 2) = v13;
  *(v15 + 3) = v16;
  v17 = v37;
  *(v15 + 4) = v3;
  *(v15 + 5) = v17;
  v18 = *(v8 + 32);
  v28[0] = a1;
  v18(&v15[v14], v12, a1);
  (v29)(v12, v38, a1);
  v19 = sub_252692DF0();
  v20 = swift_allocObject();
  *(v20 + 2) = v19;
  *(v20 + 3) = MEMORY[0x277D85700];
  *(v20 + 4) = v3;
  v21 = v37;
  *(v20 + 5) = v37;
  v18(&v20[v14], v12, v28[0]);
  sub_2526926E0();
  v42 = v3;
  v43 = v21;
  v44 = v48;
  v45 = v49;
  v46 = v50;
  v47 = v38;
  v39 = v3;
  v40 = v21;
  v41 = v38;
  v22 = v30;
  sub_252691C20();

  v23 = v34;
  WitnessTable = swift_getWitnessTable();
  v25 = v31;
  sub_25268A710(v22, v23, WitnessTable);
  v26 = *(v35 + 8);
  v26(v22, v23);
  sub_25268A710(v25, v23, WitnessTable);
  return (v26)(v25, v23);
}

uint64_t sub_25252C974@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for DecorationControlView.PickerControlView() + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  v5 = 0;
  v6 = (v3 + *(result + 40));
  if ((v6[1] & 1) == 0)
  {
    v5 = *v6;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_25252C9E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a4 + *(type metadata accessor for DecorationControlView.PickerControlView() + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  if ((*(v9 + *(result + 40) + 8) & 1) == 0)
  {
    v11 = result;
    sub_25252AD14(*a1, 0, v8);
    sub_2523FEEC8(v9 + *(v11 + 36), v8, 0, 0);
    return sub_25252EE3C(v8, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  return result;
}

uint64_t sub_25252CAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21 = a4;
  v22 = a6;
  v23 = a7;
  v11 = sub_252691130();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E13F0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v20 - v17;
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v24 = a5;
  v25 = v22;
  v26 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1400);
  sub_2525308D0();
  sub_2526925D0();
  sub_252691120();
  sub_252400FC8(&qword_27F4E13F8, &qword_27F4E13F0);
  sub_252691E00();
  (*(v12 + 8))(v14, v11);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_25252CD58()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1418);
  sub_252400FC8(&qword_27F4E1420, &qword_27F4E1410);
  swift_getOpaqueTypeConformance2();
  sub_252530998();
  return sub_2526927B0();
}

uint64_t sub_25252CE8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_252404480();

  result = sub_252691D50();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  return result;
}

uint64_t sub_25252CF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DecorationControlView.PickerControlView();
  sub_25268A710(a1 + *(v9 + 40), a2, a3);
  sub_25268A710(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

unint64_t sub_25252D000()
{
  v1 = v0;
  v2 = type metadata accessor for DecorationControlView.Appearance.Button(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v0 + *(type metadata accessor for DecorationControlView.ButtonAppearanceContent(0) + 20);
  v6 = (v5 + *(type metadata accessor for AccessoryControl(0) + 28));
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_252693210();

    v12 = 0xD000000000000022;
    v13 = 0x80000002526B15F0;
    MEMORY[0x2530A4800](v8, v7);
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_252693210();

    v12 = 0xD00000000000002ELL;
    v13 = 0x80000002526B15C0;
    sub_25252ECC8(v1, v4, type metadata accessor for DecorationControlView.Appearance.Button);
    v9 = *v4;
    v10 = v4[1];

    sub_25252EE3C(v4, type metadata accessor for IconDescriptor);
    MEMORY[0x2530A4800](v9, v10);
  }

  return v12;
}

uint64_t sub_25252D184@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = sub_2526917F0();
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  v70 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2526910F0();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v54 - v7;
  v8 = type metadata accessor for DecorationControlView.Appearance.Button(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = (&v54 - v16);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1430);
  MEMORY[0x28223BE20](v67);
  v63 = &v54 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1438);
  v68 = *(v19 - 8);
  v69 = v19;
  MEMORY[0x28223BE20](v19);
  v66 = &v54 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1440);
  MEMORY[0x28223BE20](v65);
  v64 = &v54 - v21;
  sub_25252ECC8(v1, v17, type metadata accessor for DecorationControlView.Appearance.Button);

  v62 = v17;
  sub_25252EE3C(v17, type metadata accessor for IconDescriptor);
  v60 = sub_2526923D0();
  v22 = v1;
  sub_25252ECC8(v1, v14, type metadata accessor for DecorationControlView.Appearance.Button);
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v57 = v14[*(v9 + 28)];
  v58 = v23;
  sub_25252EE3C(v14, type metadata accessor for DecorationControlView.Appearance.Button);
  sub_25252ECC8(v1, v11, type metadata accessor for DecorationControlView.Appearance.Button);
  v24 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v26 = v11[*(v9 + 28)];
  sub_25252EE3C(v11, type metadata accessor for DecorationControlView.Appearance.Button);
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v27 = type metadata accessor for DecorationControlView.ButtonAppearanceContent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB00);
  sub_252690950();
  v28 = sub_252691B00();
  v29 = v61;
  (*(*(v28 - 8) + 56))(v61, 1, 1, v28);
  v30 = sub_252691B50();
  sub_252372288(v29, &qword_27F4DBD40);
  v31 = swift_getKeyPath();
  v32 = *(v27 + 32);
  v33 = v22;
  v34 = v22 + v32;
  v35 = *v34;
  if (*(v34 + 8) != 1)
  {

    sub_252692F00();
    v36 = v24;
    v37 = sub_2526919C0();
    sub_252690570();

    v24 = v36;
    v38 = v54;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v35, 0);
    (*(v55 + 8))(v38, v56);
    LOBYTE(v35) = v83[0];
  }

  *&v76 = v60;
  WORD4(v76) = (0x201u >> (8 * v57));
  *&v77 = KeyPath;
  v39 = 0.5;
  if (v35)
  {
    v39 = 1.0;
  }

  BYTE8(v77) = 0;
  *&v78 = v58;
  BYTE8(v78) = 0;
  LOBYTE(v79) = 0x201u >> (8 * v26);
  *(&v79 + 1) = v24;
  LOBYTE(v80) = 0;
  *(&v80 + 1) = v25;
  LOBYTE(v81) = 0;
  *(&v81 + 1) = v31;
  *&v82 = v30;
  *(&v82 + 1) = v39;
  sub_25252D000();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1448);
  sub_2525309EC();
  v40 = v63;
  sub_252692070();

  v83[4] = v80;
  v83[5] = v81;
  v83[6] = v82;
  v83[0] = v76;
  v83[1] = v77;
  v83[2] = v78;
  v83[3] = v79;
  sub_252372288(v83, &qword_27F4E1448);
  v41 = v70;
  sub_2526917C0();
  v42 = sub_252530CF0();
  v44 = v66;
  v43 = v67;
  sub_252692020();
  (*(v71 + 8))(v41, v72);
  sub_252372288(v40, &qword_27F4E1430);
  v45 = v62;
  sub_25252ECC8(v33, v62, type metadata accessor for DecorationControlView.Appearance.Button);
  v46 = *v45;
  v47 = v45[1];

  sub_25252EE3C(v45, type metadata accessor for IconDescriptor);
  v48 = sub_252685F88(v46, v47);
  v50 = v49;

  *&v76 = v48;
  *(&v76 + 1) = v50;
  v74 = v43;
  v75 = v42;
  swift_getOpaqueTypeConformance2();
  sub_252404480();
  v51 = v64;
  v52 = v69;
  sub_252691FB0();

  (*(v68 + 8))(v44, v52);
  sub_252690BF0();
  return sub_252323BF0(v51);
}

uint64_t sub_25252D9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25252B630(v2, a2);
  v5 = v2 + *(a1 + 20);
  v6 = *(v5 + *(type metadata accessor for AccessoryControl(0) + 40));
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = (v6 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E12C8);
  v10 = (a2 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = sub_25247D5D8;
  v10[2] = v8;
  return result;
}

uint64_t sub_25252DA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  *&v26 = sub_2526910F0();
  *&v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_252691640();
  MEMORY[0x28223BE20](v27);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E14C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  *&v31[0] = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E14C8);
  type metadata accessor for AccessoryControl.ElementIdentifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E14D0);
  sub_252400FC8(&qword_27F4E14D8, &qword_27F4E14C8);
  sub_252530F90();
  sub_25252B5CC(&qword_27F4E1520, type metadata accessor for AccessoryControlGroup);
  sub_2526927B0();
  v13 = *(a1 + 8);
  v32 = *(a1 + 72);
  v14 = *(a1 + 24);
  v31[0] = v13;
  v31[1] = v14;
  v15 = *(a1 + 56);
  v31[2] = *(a1 + 40);
  v31[3] = v15;
  if ((v32 & 0x100) != 0)
  {
    v16 = *(a1 + 32);
    *v30 = *(a1 + 16);
    *&v30[16] = v16;
    *&v30[32] = *(a1 + 48);
    *&v30[41] = *(a1 + 57);
    v29 = v13;
  }

  else
  {
    sub_25237153C(v31, &v29, &qword_27F4DC510);
    sub_252692F00();
    v17 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v31, &qword_27F4DC510);
    (*(v25 + 8))(v4, v26);
  }

  v18 = *(v27 + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_252691260();
  v21 = *(*(v20 - 8) + 104);
  v26 = *&v30[8];
  v25 = *&v30[24];
  v21(&v9[v18], v19, v20);
  v22 = v25;
  *v9 = v26;
  *(v9 + 1) = v22;
  sub_25252ECC8(v9, v6, MEMORY[0x277CE0550]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1528);
  sub_25252B5CC(&qword_27F4E1530, MEMORY[0x277CE0550]);
  v23 = v28;
  sub_2526919D0();
  sub_25252EE3C(v9, MEMORY[0x277CE0550]);
  return sub_2523714D4(v12, v23, &qword_27F4E14C0);
}

uint64_t sub_25252DF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1538);
  MEMORY[0x28223BE20](v95);
  v96 = &v83 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1510);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = &v83 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1500);
  MEMORY[0x28223BE20](v94);
  v86 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v88 = &v83 - v8;
  v92 = type metadata accessor for DecorationControlView.Appearance(0);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v87 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E14F0);
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v93 = &v83 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1540);
  MEMORY[0x28223BE20](v11 - 8);
  v90 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v83 - v14;
  MEMORY[0x28223BE20](v16);
  v98 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v83 - v19;
  v21 = type metadata accessor for IconDescriptor();
  MEMORY[0x28223BE20](v21);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v97 = (&v83 - v25);
  v26 = type metadata accessor for AccessoryControlGroup.Layout(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig();
  MEMORY[0x28223BE20](v29);
  v84 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v83 - v32;
  v34 = type metadata accessor for AccessoryControl(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AccessoryControlGroup(0);
  sub_25252ECC8(a1 + *(v37 + 20), v28, type metadata accessor for AccessoryControlGroup.Layout);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0) + 48);
    sub_25252EE9C(v28, v36, type metadata accessor for AccessoryControl);
    sub_25252EE9C(&v28[v38], v33, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    sub_25268F0D0();
    v83 = v39;
    sub_2523D0890(v20);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
    if ((*(*(v40 - 8) + 48))(v20, 1, v40) == 1)
    {
      sub_252372288(v20, &qword_27F4DADB8);
      v41 = *(v21 + 20);
      v42 = *MEMORY[0x277D16588];
      v43 = sub_25268F910();
      v44 = v97;
      (*(*(v43 - 8) + 104))(v97 + v41, v42, v43);
      *v44 = 0;
      v44[1] = 0xE000000000000000;
      *(v44 + *(v21 + 24)) = 0;
    }

    else
    {
      sub_25252ECC8(v20, v23, type metadata accessor for IconDescriptor);
      sub_252372288(v20, &qword_27F4DAD88);
      v44 = v97;
      sub_25252EE9C(v23, v97, type metadata accessor for IconDescriptor);
    }

    v48 = v33[*(v29 + 20)];
    v89 = v33;
    if (v48 != 3 && v48)
    {
      v51 = 1;
    }

    else
    {
      sub_25252ECC8(v44, v15, type metadata accessor for IconDescriptor);
      v49 = v33[*(v29 + 24)];
      v50 = type metadata accessor for DecorationControlView.Appearance.Button(0);
      v51 = 0;
      v15[*(v50 + 20)] = v49;
    }

    v46 = v100;
    v47 = v101;
    v52 = v91;
    v53 = v92;
    (*(v91 + 56))(v15, v51, 1, v92);
    v54 = v15;
    v55 = v98;
    sub_2523714D4(v54, v98, &qword_27F4E1540);
    v56 = v55;
    v57 = v90;
    sub_25237153C(v56, v90, &qword_27F4E1540);
    if ((*(v52 + 48))(v57, 1, v53) == 1)
    {
      sub_252372288(v57, &qword_27F4E1540);
      if (qword_27F4DABD0 != -1)
      {
        swift_once();
      }

      v58 = sub_2526905A0();
      __swift_project_value_buffer(v58, qword_27F4E4B18);
      v59 = v84;
      sub_25252ECC8(v89, v84, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
      v60 = sub_252690580();
      v61 = sub_252692F00();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v102[0] = v63;
        *v62 = 136315138;
        v64 = AccessoryControlGroup.DecorationControlConfig.description.getter();
        v66 = v65;
        sub_25252EE3C(v59, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
        v67 = sub_2525BDA90(v64, v66, v102);
        v44 = v97;

        *(v62 + 4) = v67;
        _os_log_impl(&dword_252309000, v60, v61, "Unhandled appearance in DecorationControlView: %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x2530A5A40](v63, -1, -1);
        MEMORY[0x2530A5A40](v62, -1, -1);
      }

      else
      {

        sub_25252EE3C(v59, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
      }

      v79 = v93;
      v71 = v36;
      swift_storeEnumTagMultiPayload();
      sub_2525310A0();
      sub_252691470();
    }

    else
    {
      v68 = v87;
      sub_25252EE9C(v57, v87, type metadata accessor for DecorationControlView.Appearance);
      v69 = v85;
      sub_25252ECC8(v68, v85, type metadata accessor for DecorationControlView.Appearance);
      v70 = type metadata accessor for DecorationControlView(0);
      v71 = v36;
      sub_25252ECC8(v36, v69 + *(v70 + 20), type metadata accessor for AccessoryControl);
      sub_25266D8FC();
      v72 = v69 + *(v70 + 28);
      *v72 = swift_getKeyPath();
      *(v72 + 8) = 0;
      sub_252690D70();
      v73 = v86;
      sub_2523714D4(v69, v86, &qword_27F4E1510);
      v74 = (v73 + *(v94 + 36));
      v75 = v102[5];
      v74[4] = v102[4];
      v74[5] = v75;
      v74[6] = v102[6];
      v76 = v102[1];
      *v74 = v102[0];
      v74[1] = v76;
      v77 = v102[3];
      v74[2] = v102[2];
      v74[3] = v77;
      v78 = v88;
      sub_2523714D4(v73, v88, &qword_27F4E1500);
      sub_25237153C(v78, v96, &qword_27F4E1500);
      swift_storeEnumTagMultiPayload();
      sub_2525310A0();
      v79 = v93;
      sub_252691470();
      sub_252372288(v78, &qword_27F4E1500);
      v80 = v68;
      v47 = v101;
      sub_25252EE3C(v80, type metadata accessor for DecorationControlView.Appearance);
    }

    v81 = v89;
    sub_252372288(v98, &qword_27F4E1540);
    sub_25252EE3C(v44, type metadata accessor for IconDescriptor);
    sub_25252EE3C(v81, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
    sub_25252EE3C(v71, type metadata accessor for AccessoryControl);
    sub_2523714D4(v79, v46, &qword_27F4E14F0);
    v45 = 0;
  }

  else
  {
    sub_25252EE3C(v28, type metadata accessor for AccessoryControlGroup.Layout);
    v45 = 1;
    v46 = v100;
    v47 = v101;
  }

  return (*(v99 + 56))(v46, v45, 1, v47);
}

uint64_t sub_25252EBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v15[2] = v2[2];
  v16[0] = v5;
  *(v16 + 10) = *(v2 + 58);
  v6 = v2[1];
  v15[0] = *v2;
  v15[1] = v6;
  v7 = sub_252692920();
  v9 = v8;
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E14A8) + 36);
  sub_25252DA68(v15, v10);
  v11 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E14B0) + 36));
  *v11 = v7;
  v11[1] = v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E14B8);
  v13 = *(*(v12 - 8) + 16);

  return v13(a2, a1, v12);
}

uint64_t sub_25252ECC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25252ED30()
{
  result = qword_27F4E1300;
  if (!qword_27F4E1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1300);
  }

  return result;
}

unint64_t sub_25252ED84()
{
  result = qword_27F4E1308;
  if (!qword_27F4E1308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E12F0);
    sub_252400FC8(&qword_27F4E12F8, &qword_27F4E12D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1308);
  }

  return result;
}

uint64_t sub_25252EE3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25252EE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_25252EF2C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for IconDescriptor();
  if ((sub_25268F900() & 1) == 0 || *(a1 + *(v5 + 24)) != *(a2 + *(v5 + 24)))
  {
    return 0;
  }

  v7 = type metadata accessor for DecorationControlView.Appearance.Button(0);
  return *(a1 + *(v7 + 20)) == *(a2 + *(v7 + 20));
}

BOOL sub_25252EFD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DecorationControlView.Appearance.Button(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v19 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1310);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v14 = *(v13 + 56);
  sub_25252ECC8(a1, &v19 - v11, type metadata accessor for DecorationControlView.Appearance);
  sub_25252ECC8(a2, &v12[v14], type metadata accessor for DecorationControlView.Appearance);
  sub_25252EE9C(v12, v9, type metadata accessor for DecorationControlView.Appearance.Button);
  sub_25252EE9C(&v12[v14], v6, type metadata accessor for DecorationControlView.Appearance.Button);
  v15 = *v9 == *v6 && v9[1] == v6[1];
  v17 = 0;
  if (v15 || (sub_2526933B0() & 1) != 0)
  {
    v16 = type metadata accessor for IconDescriptor();
    if ((sub_25268F900() & 1) != 0 && *(v9 + *(v16 + 24)) == *(v6 + *(v16 + 24)) && *(v9 + *(v4 + 20)) == *(v6 + *(v4 + 20)))
    {
      v17 = 1;
    }
  }

  sub_25252EE3C(v6, type metadata accessor for DecorationControlView.Appearance.Button);
  sub_25252EE3C(v9, type metadata accessor for DecorationControlView.Appearance.Button);
  return v17;
}

void sub_25252F204()
{
  type metadata accessor for DecorationControlView.Appearance.Button(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AccessoryControl(319);
    if (v1 <= 0x3F)
    {
      sub_252690CA0();
      if (v2 <= 0x3F)
      {
        sub_252471B10();
        if (v3 <= 0x3F)
        {
          sub_25252F2E0(319, &qword_27F4DE328);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25252F2E0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2526908A0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_25252F32C()
{
  type metadata accessor for AccessoryControl.PickerViewConfig(319);
  if (v0 <= 0x3F)
  {
    sub_25252FF68();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25252F3CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(sub_25268F910() - 8);
  v6 = *(v5 + 84);
  v48 = v6;
  if (v6 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  v7 = v6 - 1;
  v49 = v7;
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(sub_25268D990() - 8);
  v10 = *(v9 + 80);
  if (*(v9 + 84))
  {
    v11 = *(v9 + 64);
  }

  else
  {
    v11 = *(v9 + 64) + 1;
  }

  v12 = v11 + ((v10 + 17) & ~v10);
  if (v12 <= 0x31)
  {
    v13 = 49;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(sub_25268DA10() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v14 + 84);
  }

  v18 = v17 - 1;
  if ((v17 - 1) <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v17 - 1;
  }

  if (v19 <= v8)
  {
    v20 = v8;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(*(a3 + 16) - 8);
  v22 = *(v21 + 84);
  v23 = *(v5 + 80);
  v24 = *(v14 + 80);
  v25 = *(v14 + 64);
  v26 = *(v21 + 80);
  if (v22 <= v20)
  {
    v27 = v20;
  }

  else
  {
    v27 = *(v21 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v28 = v23 | 7;
  v29 = *(v5 + 64) + ((v23 + 16) & ~v23) + 1;
  v30 = v24 | 7;
  v31 = ((v13 + ((v10 + (((((((v23 | 7) + 9) & ~(v23 | 7)) + v29 + ((v29 + (v23 | 7)) & ~(v23 | 7))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & (v10 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 8) & 0xFFFFFFFFFFFFFFF8) + (v24 | 7) + 9;
  v32 = ((v25 - (((-41 - v24) | v24) + ((-9 - v24) | v24 | 7)) + 5) & 0xFFFFFFFFFFFFFFF8) + v26 + 9;
  if (a2 <= v27)
  {
    goto LABEL_48;
  }

  v33 = ((v32 + (v31 & ~v30)) & ~v26) + *(v21 + 64);
  v34 = 8 * v33;
  if (v33 > 3)
  {
    goto LABEL_27;
  }

  v37 = ((a2 - v27 + ~(-1 << v34)) >> v34) + 1;
  if (HIWORD(v37))
  {
    v35 = *(a1 + v33);
    if (v35)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v37 <= 0xFF)
    {
      if (v37 < 2)
      {
        goto LABEL_48;
      }

LABEL_27:
      v35 = *(a1 + v33);
      if (!*(a1 + v33))
      {
        goto LABEL_48;
      }

LABEL_35:
      v38 = (v35 - 1) << v34;
      if (v33 > 3)
      {
        v38 = 0;
      }

      if (v33)
      {
        if (v33 <= 3)
        {
          v39 = ((v32 + (v31 & ~v30)) & ~v26) + *(v21 + 64);
        }

        else
        {
          v39 = 4;
        }

        if (v39 > 2)
        {
          if (v39 == 3)
          {
            v40 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v40 = *a1;
          }
        }

        else if (v39 == 1)
        {
          v40 = *a1;
        }

        else
        {
          v40 = *a1;
        }
      }

      else
      {
        v40 = 0;
      }

      return v27 + (v40 | v38) + 1;
    }

    v35 = *(a1 + v33);
    if (*(a1 + v33))
    {
      goto LABEL_35;
    }
  }

LABEL_48:
  if (v8 == v27)
  {
    if ((v49 & 0x80000000) == 0)
    {
      v41 = *a1;
LABEL_54:
      if (v41 >= 0xFFFFFFFF)
      {
        LODWORD(v41) = -1;
      }

      return (v41 + 1);
    }

    v45 = a1 + v28 + 9;
    if ((v48 & 0x80000000) == 0)
    {
      v46 = *((v45 & ~v28) + 8);
LABEL_64:
      if (v46 >= 0xFFFFFFFF)
      {
        LODWORD(v46) = -1;
      }

      v47 = v46 + 1;
      goto LABEL_72;
    }

    v47 = (*(v5 + 48))((v23 + 16 + (v45 & ~v28)) & ~v23);
    goto LABEL_72;
  }

  v42 = ((a1 + v31) & ~v30);
  if (v19 == v27)
  {
    if ((v18 & 0x80000000) == 0)
    {
      v41 = *v42;
      goto LABEL_54;
    }

    if ((v16 & 0x80000000) == 0)
    {
      v46 = *(((v42 + v24 + 8) & ~v30) + 0x18);
      goto LABEL_64;
    }

    v47 = (*(v15 + 48))((v24 + ((v42 + v24 + 8) & ~v30) + 40) & ~v24);
LABEL_72:
    if (v47 >= 2)
    {
      return v47 - 1;
    }

    else
    {
      return 0;
    }
  }

  v43 = ~v26;
  v44 = *(v21 + 48);

  return v44((v42 + v32) & v43, v22);
}

void sub_25252F888(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_25268F910() - 8);
  v65 = v5;
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v62 = v7;
  v8 = v7 - 1;
  if ((v7 - 1) <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7 - 1;
  }

  v10 = *(sub_25268D990() - 8);
  v11 = *(v10 + 80);
  if (*(v10 + 84))
  {
    v12 = *(v10 + 64);
  }

  else
  {
    v12 = *(v10 + 64) + 1;
  }

  v13 = v12 + ((v11 + 17) & ~v11);
  if (v13 <= 0x31)
  {
    v14 = 49;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(sub_25268DA10() - 8);
  v16 = v15;
  v17 = *(v15 + 84);
  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = *(v15 + 84);
  }

  v19 = v18 - 1;
  if (v18 - 1 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v18 - 1;
  }

  if (v20 <= v9)
  {
    v21 = v9;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(*(a4 + 16) - 8);
  v23 = *(v22 + 84);
  v24 = *(v5 + 80);
  v25 = *(v15 + 80);
  v26 = *(v15 + 64);
  v27 = *(v22 + 80);
  if (v23 <= v21)
  {
    v28 = v21;
  }

  else
  {
    v28 = *(v22 + 84);
  }

  v29 = v24 | 7;
  v30 = *(v5 + 64) + ((v24 + 16) & ~v24) + 1;
  v31 = ((v30 + (v24 | 7)) & ~(v24 | 7)) + v30;
  v32 = (v11 + ((((v31 + (((v24 | 7) + 9) & ~(v24 | 7))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & (v11 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8);
  v33 = v25 | 7;
  v34 = v25 + 8;
  v35 = ((v25 + 40) & ~v25) + v26;
  v36 = ((v14 + v32 + 8) & 0xFFFFFFFFFFFFFFF8) + (v25 | 7) + 9;
  v37 = ((v35 + ((v25 + 8) & ~(v25 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + v27 + 9;
  v38 = ((v37 + (v36 & ~(v25 | 7))) & ~v27) + *(v22 + 64);
  if (a3 <= v28)
  {
    v39 = 0;
  }

  else if (v38 <= 3)
  {
    v42 = ((a3 - v28 + ~(-1 << (8 * v38))) >> (8 * v38)) + 1;
    if (HIWORD(v42))
    {
      v39 = 4;
    }

    else
    {
      if (v42 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v42 < 2)
      {
        v39 = 0;
      }
    }
  }

  else
  {
    v39 = 1;
  }

  if (v28 < a2)
  {
    v40 = ~v28 + a2;
    if (v38 >= 4)
    {
      bzero(a1, v38);
      *a1 = v40;
      v41 = 1;
      if (v39 > 1)
      {
        goto LABEL_32;
      }

      goto LABEL_78;
    }

    v41 = (v40 >> (8 * v38)) + 1;
    if (v38)
    {
      v43 = v40 & ~(-1 << (8 * v38));
      bzero(a1, v38);
      if (v38 != 3)
      {
        if (v38 == 2)
        {
          *a1 = v43;
          if (v39 > 1)
          {
            goto LABEL_32;
          }
        }

        else
        {
          *a1 = v40;
          if (v39 > 1)
          {
LABEL_32:
            if (v39 == 2)
            {
              *&a1[v38] = v41;
            }

            else
            {
              *&a1[v38] = v41;
            }

            return;
          }
        }

LABEL_78:
        if (v39)
        {
          a1[v38] = v41;
        }

        return;
      }

      *a1 = v43;
      a1[2] = BYTE2(v43);
    }

    if (v39 > 1)
    {
      goto LABEL_32;
    }

    goto LABEL_78;
  }

  if (v39 > 1)
  {
    if (v39 != 2)
    {
      *&a1[v38] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_53;
    }

    *&a1[v38] = 0;
  }

  else if (v39)
  {
    a1[v38] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_53;
  }

  if (!a2)
  {
    return;
  }

LABEL_53:
  if (v9 != v28)
  {
    v46 = (&a1[v36] & ~v33);
    if (v20 == v28)
    {
      if ((v19 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v47 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v47 = a2 - 1;
        }

        *v46 = v47;
        return;
      }

      v45 = ~v33;
      v52 = (v46 + v34) & ~v33;
      if (v19 >= a2)
      {
        if (a2 < v18)
        {
          v56 = a2 + 1;
          if ((v17 & 0x80000000) != 0)
          {
            v61 = *(v16 + 56);

            v61((v25 + 40 + v52) & ~v25, v56);
          }

          else if ((v56 & 0x80000000) != 0)
          {
            *(((v46 + v34) & v45) + 8) = 0u;
            *(((v46 + v34) & v45) + 0x18) = 0u;
            *v52 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(((v46 + v34) & v45) + 0x18) = a2;
          }

          return;
        }

        if (v35 <= 3)
        {
          v60 = ~(-1 << (8 * v35));
        }

        else
        {
          v60 = -1;
        }

        if (!v35)
        {
          return;
        }

        v54 = v60 & (a2 - v18);
      }

      else
      {
        if (v35 <= 3)
        {
          v55 = ~(-1 << (8 * v35));
        }

        else
        {
          v55 = -1;
        }

        if (!v35)
        {
          return;
        }

        v54 = v55 & (a2 - v18);
      }

      if (v35 <= 3)
      {
        v58 = v35;
      }

      else
      {
        v58 = 4;
      }

      v59 = v52;
      v31 = v35;
      goto LABEL_118;
    }

    v48 = *(v22 + 56);
    v49 = (v46 + v37) & ~v27;
    v50 = a2;
    v51 = v23;
LABEL_67:

    v48(v49, v50, v51);
    return;
  }

  if ((v8 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v44 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v44 = a2 - 1;
    }

    *a1 = v44;
    return;
  }

  v52 = &a1[v29 + 9] & ~v29;
  if (v8 < a2)
  {
    if (v31 <= 3)
    {
      v53 = ~(-1 << (8 * v31));
    }

    else
    {
      v53 = -1;
    }

    if (v31)
    {
      v54 = v53 & (a2 - v62);
LABEL_105:
      if (v31 <= 3)
      {
        v58 = v31;
      }

      else
      {
        v58 = 4;
      }

      v59 = (&a1[v29 + 9] & ~v29);
LABEL_118:
      bzero(v59, v31);
      if (v58 > 2)
      {
        if (v58 == 3)
        {
          *v52 = v54;
          *(v52 + 2) = BYTE2(v54);
        }

        else
        {
          *v52 = v54;
        }
      }

      else if (v58 == 1)
      {
        *v52 = v54;
      }

      else
      {
        *v52 = v54;
      }

      return;
    }

    return;
  }

  if (a2 < v62)
  {
    v50 = a2 + 1;
    if ((v6 & 0x80000000) == 0)
    {
      if ((v50 & 0x80000000) != 0)
      {
        *v52 = a2 - 0x7FFFFFFF;
        *((&a1[v29 + 9] & ~v29) + 8) = 0;
      }

      else
      {
        *((&a1[v29 + 9] & ~v29) + 8) = a2;
      }

      return;
    }

    v48 = *(v65 + 56);
    v49 = (v24 + 16 + v52) & ~v24;
    v51 = v6;
    goto LABEL_67;
  }

  if (v31 <= 3)
  {
    v57 = ~(-1 << (8 * v31));
  }

  else
  {
    v57 = -1;
  }

  if (v31)
  {
    v54 = v57 & (a2 - v62);
    goto LABEL_105;
  }
}

void sub_25252FF68()
{
  if (!qword_27F4E13A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB3C8);
    sub_25252FFD8();
    v0 = type metadata accessor for ControlBinding();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E13A8);
    }
  }
}

unint64_t sub_25252FFD8()
{
  result = qword_27F4E13B0;
  if (!qword_27F4E13B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB3C8);
    sub_25253005C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E13B0);
  }

  return result;
}

unint64_t sub_25253005C()
{
  result = qword_27F4E13B8;
  if (!qword_27F4E13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E13B8);
  }

  return result;
}

unint64_t sub_2525300B0()
{
  result = qword_27F4E13C0;
  if (!qword_27F4E13C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E12C8);
    sub_252530168();
    sub_252400FC8(&qword_27F4DF0F8, &qword_27F4DF100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E13C0);
  }

  return result;
}

unint64_t sub_252530168()
{
  result = qword_27F4E13C8;
  if (!qword_27F4E13C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E13D0);
    sub_2525301EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E13C8);
  }

  return result;
}

unint64_t sub_2525301EC()
{
  result = qword_27F4E13D8;
  if (!qword_27F4E13D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E13E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E12D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E12E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E12F0);
    sub_252400FC8(&qword_27F4E12F8, &qword_27F4E12D8);
    sub_25252ED30();
    swift_getOpaqueTypeConformance2();
    sub_25252ED84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E13D8);
  }

  return result;
}

uint64_t sub_2525303C8@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for DecorationControlView.PickerControlView() - 8);
  v4 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_25252C974(v4, a1);
}

uint64_t objectdestroy_48Tm_0()
{
  v1 = *(v0 + 32);
  v28 = type metadata accessor for DecorationControlView.PickerControlView();
  v2 = *(*(v28 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v27 = *(*(v28 - 8) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  v5 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v6 = v0 + v3 + *(v5 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {

    v8 = type metadata accessor for IconDescriptor();
    v9 = *(v8 + 20);
    v25 = (v2 + 48) & ~v2;
    v26 = v2;
    v10 = sub_25268F910();
    v11 = *(*(v10 - 8) + 8);
    v11(v6 + v9, v10);
    v12 = v6 + *(v7 + 28);

    v13 = v10;
    v2 = v26;
    v11(v12 + *(v8 + 20), v13);
    v3 = v25;
  }

  v14 = v4 + *(v5 + 40);
  type metadata accessor for AccessoryControl.StatusProvider();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v22 = sub_25268D990();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v14 + v21, 1, v22))
    {
      (*(v23 + 8))(v14 + v21, v22);
    }
  }

  else if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 7)
  {
LABEL_10:
  }

  v16 = v4 + *(v28 + 36);

  v17 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) + 36);
  v18 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v19 = *(v18 + 20);
    v20 = sub_25268DA10();
    (*(*(v20 - 8) + 8))(v17 + v19, v20);
  }

  (*(*(v1 - 8) + 8))(v4 + *(v28 + 40), v1);

  return MEMORY[0x2821FE8E8](v0, v3 + v27, v2 | 7);
}

uint64_t sub_252530818(uint64_t *a1)
{
  v3 = *(type metadata accessor for DecorationControlView.PickerControlView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_25252C9E0(a1, v4, v5, v6);
}

unint64_t sub_2525308D0()
{
  result = qword_27F4E1408;
  if (!qword_27F4E1408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1400);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1408);
  }

  return result;
}

unint64_t sub_252530998()
{
  result = qword_27F4E1428;
  if (!qword_27F4E1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1428);
  }

  return result;
}

unint64_t sub_2525309EC()
{
  result = qword_27F4E1450;
  if (!qword_27F4E1450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1448);
    sub_252530A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1450);
  }

  return result;
}

unint64_t sub_252530A78()
{
  result = qword_27F4E1458;
  if (!qword_27F4E1458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1460);
    sub_252530B30();
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1458);
  }

  return result;
}

unint64_t sub_252530B30()
{
  result = qword_27F4E1468;
  if (!qword_27F4E1468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1470);
    sub_252530BBC();
    sub_252530C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1468);
  }

  return result;
}

unint64_t sub_252530BBC()
{
  result = qword_27F4E1478;
  if (!qword_27F4E1478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1480);
    sub_252530C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1478);
  }

  return result;
}

unint64_t sub_252530C48()
{
  result = qword_27F4E1488;
  if (!qword_27F4E1488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1488);
  }

  return result;
}

unint64_t sub_252530C9C()
{
  result = qword_27F4E1490;
  if (!qword_27F4E1490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1490);
  }

  return result;
}

unint64_t sub_252530CF0()
{
  result = qword_27F4E1498;
  if (!qword_27F4E1498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1430);
    sub_2525309EC();
    sub_25252B5CC(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1498);
  }

  return result;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_252530DD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_252530E18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_252530E7C()
{
  result = qword_27F4E14A0;
  if (!qword_27F4E14A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1430);
    sub_252530CF0();
    swift_getOpaqueTypeConformance2();
    sub_25252B5CC(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E14A0);
  }

  return result;
}

unint64_t sub_252530F90()
{
  result = qword_27F4E14E0;
  if (!qword_27F4E14E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E14D0);
    sub_252531014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E14E0);
  }

  return result;
}

unint64_t sub_252531014()
{
  result = qword_27F4E14E8;
  if (!qword_27F4E14E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E14F0);
    sub_2525310A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E14E8);
  }

  return result;
}

unint64_t sub_2525310A0()
{
  result = qword_27F4E14F8;
  if (!qword_27F4E14F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1500);
    sub_25253112C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E14F8);
  }

  return result;
}

unint64_t sub_25253112C()
{
  result = qword_27F4E1508;
  if (!qword_27F4E1508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1510);
    sub_25252B5CC(&qword_27F4E1518, type metadata accessor for DecorationControlView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1508);
  }

  return result;
}

unint64_t sub_2525311E0()
{
  result = qword_27F4E1548;
  if (!qword_27F4E1548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E14A8);
    sub_252400FC8(&qword_27F4E1550, &qword_27F4E14B8);
    sub_252400FC8(&qword_27F4E1558, &qword_27F4E14B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1548);
  }

  return result;
}

id sub_2525312C8()
{
  v0 = objc_allocWithZone(type metadata accessor for MediaPlayerWrapperView.Coordinator());

  return [v0 init];
}

uint64_t sub_2525312FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_252692780();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1630);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v30[-v10];
  v60 = *(a1 + 32);
  v59 = *(a1 + 1);
  v12 = v60;
  v35 = &v30[-v10];
  if (v60 == 1)
  {
    sub_252692770();
    (*(v4 + 32))(v11, v6, v3);
    (*(v4 + 56))(v11, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(&v30[-v10], 1, 1, v3);
  }

  type metadata accessor for MediaPlayerWrapperView.Coordinator();
  sub_252532708(&qword_27F4E1600, v13, type metadata accessor for MediaPlayerWrapperView.Coordinator);
  v14 = sub_2526908C0();
  v33 = *(&v59 + 1);
  v34 = v59;
  v15 = v60;
  v14[OBJC_IVAR____TtCV22HomeAccessoryControlUI22MediaPlayerWrapperView11Coordinator_useCompactLayout] = v12;
  sub_252532A14(&v59, v49);
  v16 = v14;
  sub_252531B00(0, 0, 1);

  v31 = *(a1 + 8);
  v32 = *a1;

  sub_252692920();
  sub_2526909C0();
  v17 = v35;
  v18 = v37;
  sub_25237153C(v35, v37, &qword_27F4E1630);
  v19 = v36;
  sub_25237153C(v18, v36, &qword_27F4E1630);
  v20 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1638) + 48));
  v21 = v33;
  v22 = v34;
  *&v43 = v34;
  *(&v43 + 1) = v33;
  LOBYTE(v44) = v15 & 1;
  LOBYTE(v19) = v15 & 1;
  *(&v44 + 1) = *v42;
  DWORD1(v44) = *&v42[3];
  *(&v44 + 1) = v16;
  v23 = v31;
  LOBYTE(v45) = v31;
  *(&v45 + 1) = *v41;
  DWORD1(v45) = *&v41[3];
  v24 = v32;
  *(&v45 + 1) = v32;
  v47 = v39;
  v48 = v40;
  v46 = v38;
  v25 = v44;
  *v20 = v43;
  v20[1] = v25;
  v26 = v45;
  v27 = v46;
  v28 = v48;
  v20[4] = v47;
  v20[5] = v28;
  v20[2] = v26;
  v20[3] = v27;
  sub_25237153C(&v43, v49, &qword_27F4E1640);
  sub_252372288(v17, &qword_27F4E1630);
  v49[0] = v22;
  v49[1] = v21;
  v50 = v19;
  *v51 = *v42;
  *&v51[3] = *&v42[3];
  v52 = v16;
  v53 = v23;
  *v54 = *v41;
  *&v54[3] = *&v41[3];
  v55 = v24;
  v56 = v38;
  v57 = v39;
  v58 = v40;
  sub_252372288(v49, &qword_27F4E1640);
  return sub_252372288(v18, &qword_27F4E1630);
}

uint64_t sub_252531754@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 9) = *(v1 + 41);
  *a1 = sub_2526912E0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1628);
  return sub_2525312FC(v6, a1 + *(v4 + 44));
}

id sub_2525317C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = sub_2525327C8(v1, v2, v3);
  [v5 setDelegate_];
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v6 = sub_2526905A0();
  __swift_project_value_buffer(v6, qword_27F4E4B18);
  v7 = v5;
  v8 = sub_252690580();
  v9 = sub_252692F10();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_252309000, v8, v9, "Creating new MRUNowPlayingViewController: %@", v10, 0xCu);
    sub_252372288(v11, &qword_27F4DB950);
    MEMORY[0x2530A5A40](v11, -1, -1);
    MEMORY[0x2530A5A40](v10, -1, -1);
  }

  return v7;
}

void sub_252531928(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    sub_252532510();
    [v2 sizeThatFits_];
    v4 = v3;
    v6 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4E1610);
    sub_2526919B0();
    sub_252531B00(v4, v6, 0);

    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v7 = sub_2526905A0();
    __swift_project_value_buffer(v7, qword_27F4E4B18);
    v8 = sub_252690580();
    v9 = sub_252692EE0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134218240;
      *(v10 + 4) = v4;
      *(v10 + 12) = 2048;
      *(v10 + 14) = v6;
      _os_log_impl(&dword_252309000, v8, v9, "update MediaPlayerConrolView with new width: %f new height: %f", v10, 0x16u);
      MEMORY[0x2530A5A40](v10, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_252531B00(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_252692A80();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252692AB0();
  v31 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v4[OBJC_IVAR____TtCV22HomeAccessoryControlUI22MediaPlayerWrapperView11Coordinator_viewSize];
  v16 = *&v4[OBJC_IVAR____TtCV22HomeAccessoryControlUI22MediaPlayerWrapperView11Coordinator_viewSize];
  v17 = *&v4[OBJC_IVAR____TtCV22HomeAccessoryControlUI22MediaPlayerWrapperView11Coordinator_viewSize + 8];
  if (a3)
  {
    v18 = v4[OBJC_IVAR____TtCV22HomeAccessoryControlUI22MediaPlayerWrapperView11Coordinator_useCompactLayout];
    if (v18 == 2 || (v18 & 1) == 0)
    {
      sub_252532510();
      v20 = v24;
      sub_252532510();
      v22 = 0.6;
    }

    else
    {
      sub_252532510();
      v20 = v19;
      sub_252532510();
      v22 = 0.25;
    }

    v23 = v21 * v22;
  }

  else
  {
    v20 = *&a1;
    v23 = *&a2;
  }

  if (v16 != v20 || v17 != v23)
  {
    *v15 = v20;
    v15[1] = v23;
    sub_25242D500();
    v30 = sub_252692FB0();
    v26 = swift_allocObject();
    *(v26 + 16) = v4;
    aBlock[4] = sub_2525326E8;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_252576CB4;
    aBlock[3] = &block_descriptor_0;
    v27 = _Block_copy(aBlock);
    v28 = v4;

    sub_252692A90();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_252532708(&qword_27F4DC400, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4E15F0);
    sub_252400FC8(&qword_27F4DC408, &unk_27F4E15F0);
    sub_252693190();
    v29 = v30;
    MEMORY[0x2530A4B30](0, v14, v11, v27);
    _Block_release(v27);

    (*(v9 + 8))(v11, v8);
    (*(v31 + 8))(v14, v12);
  }
}

uint64_t sub_252531E80()
{
  type metadata accessor for MediaPlayerWrapperView.Coordinator();
  sub_252532708(&qword_27F4E1600, v0, type metadata accessor for MediaPlayerWrapperView.Coordinator);
  sub_252690630();
  sub_252690650();
}

uint64_t sub_252531F04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = sub_252691860();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = sub_252692950();
  }

  v19 = &v19;
  MEMORY[0x28223BE20](v12);
  *(&v19 - 2) = a2;
  *(&v19 - 1) = a3;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v5;
  v15[4] = a4;
  v15[5] = a5;
  v16 = a1;
  v17 = v5;
  sub_25235E21C(a4);
  sub_252691850();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E15D8);
  sub_252690A70();

  return (*(v11 + 8))(v14, v20);
}

void sub_2525320F4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    sub_252532510();
    [v5 sizeThatFits_];
    v7 = v6;
    v9 = v8;

    sub_252531B00(v7, v9, 0);
    if (a3)
    {
      a3();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_2525322C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaPlayerWrapperView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25253231C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MediaPlayerWrapperView.Coordinator();
  result = sub_252690630();
  *a1 = result;
  return result;
}

uint64_t sub_252532358@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    result = v3();
  }

  *a1 = v3 == 0;
  return result;
}

id sub_2525323D8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return v2;
}

uint64_t sub_252532420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2525328D4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_252532484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2525328D4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2525324E8()
{
  sub_2525328D4();
  sub_2526918D0();
  __break(1u);
}

void sub_252532510()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2)
  {
    v3 = [v0 currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 1)
    {
      v5 = [objc_opt_self() sharedApplication];
      v6 = [v5 keyWindow];

      if (v6)
      {
        v7 = [v6 rootViewController];
        if (v7 && (v8 = v7, v9 = [v7 view], v8, v9))
        {
          [v9 frame];
          CGRectGetWidth(v11);
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v10 = [objc_opt_self() mainScreen];
    [v10 bounds];
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252532708(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252532774()
{
  result = qword_27F4E1608;
  if (!qword_27F4E1608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1608);
  }

  return result;
}

id sub_2525327C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_allocWithZone(MEMORY[0x277D268B8]);
  v5 = sub_252692BA0();
  v6 = [v4 initWithRouteUID_];

  if (a3)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  [v6 setLayout_];
  [v6 setSupportsHorizontalLayout_];
  [v6 setContext_];
  [v6 setContentEdgeInsets_];
  v8 = [objc_allocWithZone(MEMORY[0x277D268C0]) init];
  [v6 setStylingProvider_];

  return v6;
}

unint64_t sub_2525328D4()
{
  result = qword_27F4E1620;
  if (!qword_27F4E1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1620);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_252532950(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_252532998(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t type metadata accessor for MenuPickerControlView()
{
  result = qword_27F4E16C0;
  if (!qword_27F4E16C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252532AE8()
{
  type metadata accessor for AccessoryControl.PickerViewConfig(319);
  if (v0 <= 0x3F)
  {
    sub_252532B84();
    if (v1 <= 0x3F)
    {
      sub_252420F5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252532B84()
{
  if (!qword_27F4E16D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB3C8);
    v0 = sub_252692750();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E16D0);
    }
  }
}

void (*sub_252532C04(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for MenuPickerControlView() + 20));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 96) = *v5;
  *(v4 + 104) = v7;
  v8 = v5[2];
  *(v4 + 112) = v8;
  LOBYTE(v5) = *(v5 + 24);
  *(v4 + 25) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v8;
  *(v4 + 24) = v5;

  *(v4 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1758);
  MEMORY[0x2530A4210]();
  return sub_252532CD4;
}

void sub_252532CD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 25);
  v5 = *(*a1 + 112);
  *(*a1 + 32) = *(*a1 + 96);
  *(v1 + 48) = v5;
  *(v1 + 56) = v4;
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  sub_2526926B0();

  free(v1);
}

__n128 sub_252532D50@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E16D8);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = &v39 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E16E0);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E16E8);
  MEMORY[0x28223BE20](v45);
  v47 = &v39 - v5;
  v41 = type metadata accessor for MenuPickerControlView();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  sub_2525348CC(v1, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_252692E00();
  v8 = sub_252692DF0();
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v8;
  *(v10 + 24) = v11;
  sub_252534930(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_2525348CC(v1, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_252692DF0();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  sub_252534930(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v9);
  sub_2526926E0();
  v52 = v57;
  v53 = v58;
  v54 = v2;
  v49 = v2;
  v50 = v57;
  v51 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E16F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E16F8);
  sub_252534DAC();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1748);
  v15 = sub_252691130();
  v16 = sub_252400FC8(&qword_27F4E1750, &qword_27F4E1748);
  *&v57 = v14;
  *(&v57 + 1) = v15;
  v17 = v40;
  *&v58 = v16;
  *(&v58 + 1) = MEMORY[0x277CDDDA0];
  swift_getOpaqueTypeConformance2();
  sub_252691C20();
  if (*(v2 + 8) == 1)
  {
    v18 = v41;
    v19 = v2 + *(v41 + 20);
    v20 = *v19;
    v21 = *(v19 + 16);
    LOBYTE(v19) = *(v19 + 24);
    v57 = v20;
    *&v58 = v21;
    BYTE8(v58) = v19;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1758);
    MEMORY[0x2530A4210](&v55, v22);
    v23 = v56 ^ 1;
  }

  else
  {
    v23 = 0;
    v18 = v41;
  }

  v24 = v46;
  (*(v43 + 32))(v46, v17, v44);
  *(v24 + *(v42 + 36)) = v23 & 1;
  v25 = v2 + *(v18 + 20);
  v26 = *v25;
  v27 = *(v25 + 16);
  LOBYTE(v25) = *(v25 + 24);
  v57 = v26;
  *&v58 = v27;
  BYTE8(v58) = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1758);
  MEMORY[0x2530A4210](&v55, v28);
  v29 = v56;
  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  v32 = v47;
  sub_2523714D4(v24, v47, &qword_27F4E16E0);
  v33 = (v32 + *(v45 + 36));
  *v33 = KeyPath;
  v33[1] = sub_25247D5D8;
  v33[2] = v31;
  sub_2526912E0();
  sub_2526911D0();
  sub_252690D70();

  v34 = v48;
  sub_2523714D4(v32, v48, &qword_27F4E16E8);
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1760) + 36);
  v36 = v62;
  *(v35 + 64) = v61;
  *(v35 + 80) = v36;
  *(v35 + 96) = v63;
  v37 = v58;
  *v35 = v57;
  *(v35 + 16) = v37;
  result = v60;
  *(v35 + 32) = v59;
  *(v35 + 48) = result;
  return result;
}

void *sub_2525333BC@<X0>(void *a1@<X8>)
{
  type metadata accessor for MenuPickerControlView();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1758);
  result = MEMORY[0x2530A4210](&v5, v2);
  if (v6)
  {
    v4 = 0;
  }

  else
  {
    v4 = v5;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_252533448(uint64_t *a1)
{
  v1 = *a1;
  v3 = sub_252532C04(v5);
  if (*(v2 + 8) != 1)
  {
    *v2 = v1;
  }

  return (v3)(v5, 0);
}

uint64_t sub_2525334B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[1] = a5;
  v9 = sub_252691130();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1748);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v18 - v15;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a3;
  v18[4] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E17B0);
  sub_252535100();
  sub_2526925D0();
  sub_252691120();
  sub_252400FC8(&qword_27F4E1750, &qword_27F4E1748);
  sub_252691E00();
  (*(v10 + 8))(v12, v9);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_252533714()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E17C8);
  sub_252400FC8(&qword_27F4E1420, &qword_27F4E1410);
  sub_252535184();
  sub_252530998();
  return sub_2526927B0();
}

uint64_t sub_252533808@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v18[0] = v7;
  v18[1] = v9;
  sub_252404480();

  *a2 = sub_252691D50();
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = v8;
  *(a2 + 40) = 1;
  v13 = sub_252691B00();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = sub_252691B50();
  sub_252372288(v6, &qword_27F4DBD40);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E17C8);
  v17 = (a2 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = v14;
  return result;
}

uint64_t sub_252533980@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7[1] = a1;
  v7[2] = a2;
  v7[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1768);
  MEMORY[0x2530A4210](v7, v5);
  return sub_2525339EC(v7[0], a4);
}

uint64_t sub_2525339EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1730);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1720);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1710);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = v32 - v15;
  *v8 = sub_2526911D0();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1770);
  sub_252533D44(v3, a1, &v8[*(v17 + 44)]);
  v18 = [objc_opt_self() mainScreen];
  [v18 bounds];

  sub_252692920();
  sub_252690D70();
  sub_2523714D4(v8, v12, &qword_27F4E1730);
  v19 = &v12[*(v10 + 44)];
  v20 = v32[5];
  *(v19 + 4) = v32[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v32[6];
  v21 = v32[1];
  *v19 = v32[0];
  *(v19 + 1) = v21;
  v22 = v32[3];
  *(v19 + 2) = v32[2];
  *(v19 + 3) = v22;
  v23 = sub_252692920();
  v25 = v24;
  sub_2523714D4(v12, v16, &qword_27F4E1720);
  v26 = &v16[*(v14 + 44)];
  *v26 = sub_252534740;
  v26[1] = 0;
  v26[2] = v23;
  v26[3] = v25;
  v27 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E16F0) + 36));
  v28 = *(sub_252690D30() + 20);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_252691260();
  (*(*(v30 - 8) + 104))(&v27->i8[v28], v29, v30);
  *v27 = vdupq_n_s64(0x4059000000000000uLL);
  v27->i8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF340) + 36)] = 0;
  return sub_2523714D4(v16, a2, &qword_27F4E1710);
}

uint64_t sub_252533D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1778);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1780);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v46 - v13;
  v15 = (*a1 + 32);
  v16 = *(*a1 + 16) + 1;
  while (--v16)
  {
    v17 = v15 + 4;
    v18 = *v15;
    v15 += 4;
    if (v18 == a2)
    {
      v46[1] = v46;
      v19 = *(v17 - 2);
      v49 = *(v17 - 1);
      MEMORY[0x28223BE20](v49);
      v46[-6] = a2;
      v46[-5] = v20;
      v46[-4] = v19;
      v46[-3] = v21;
      v48 = v19;
      v46[-2] = a1;
      MEMORY[0x28223BE20](v21);
      v46[-2] = a1;
      v50 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1788);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF18);
      v47 = a3;
      sub_252534FEC();
      sub_252422068();
      sub_252692450();
      sub_252400FC8(&qword_27F4E1798, &qword_27F4E1778);
      sub_2525350A4();
      sub_252691DB0();
      (*(v7 + 8))(v9, v6);
      v23 = sub_252691A80();
      sub_252690760();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v32 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E17A8) + 36)];
      *v32 = v23;
      *(v32 + 1) = v25;
      *(v32 + 2) = v27;
      *(v32 + 3) = v29;
      *(v32 + 4) = v31;
      v32[40] = 0;
      v33 = sub_252691A10();
      sub_252690760();
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v42 = &v14[*(v10 + 36)];
      *v42 = v33;
      *(v42 + 1) = v35;
      *(v42 + 2) = v37;
      *(v42 + 3) = v39;
      *(v42 + 4) = v41;
      v42[40] = 0;
      v43 = v47;
      sub_2523714D4(v14, v47, &qword_27F4E1780);
      return (*(v50 + 56))(v43, 0, 1, v10);
    }
  }

  v45 = *(v11 + 56);

  return v45(a3, 1, 1, v10, v12);
}

uint64_t sub_252534170@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v27 = a1;
  v7 = sub_2526910F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &KeyPath - v12;
  KeyPath = swift_getKeyPath();
  v14 = sub_252691B00();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);

  sub_252691B50();
  sub_252372288(v13, &qword_27F4DBD40);
  sub_252691B20();
  v15 = sub_252691B90();

  v16 = swift_getKeyPath();
  v34 = 0;
  v33 = 0;
  v17 = (a3 + *(type metadata accessor for MenuPickerControlView() + 24));
  v36 = *(v17 + 32);
  v18 = v17[3];
  v35[2] = v17[2];
  v35[3] = v18;
  v19 = v17[1];
  v35[0] = *v17;
  v35[1] = v19;
  if ((v36 & 0x100) != 0)
  {
    v20 = v17[3];
    v30 = v17[2];
    v31 = v20;
    v32 = *(v17 + 64);
    v21 = v17[1];
    v28 = *v17;
    v29 = v21;
  }

  else
  {

    sub_252692F00();
    v22 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v35, &qword_27F4DC120);
    (*(v8 + 8))(v10, v7);
  }

  v23 = MEMORY[0x277D84F90];
  if (v28 == 1)
  {
    result = sub_252692360();
  }

  else
  {
    result = sub_252692330();
  }

  *a4 = v27;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  v25 = KeyPath;
  *(a4 + 24) = v23;
  *(a4 + 32) = v25;
  *(a4 + 40) = 1;
  *(a4 + 48) = 0;
  *(a4 + 56) = v16;
  *(a4 + 64) = v15;
  *(a4 + 72) = result;
  return result;
}

uint64_t sub_252534478@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2526910F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  v11 = sub_2526923D0();
  v12 = sub_252691B00();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_252691B50();
  sub_252372288(v10, &qword_27F4DBD40);
  sub_252691B20();
  v13 = sub_252691B90();

  KeyPath = swift_getKeyPath();
  v15 = a1 + *(type metadata accessor for MenuPickerControlView() + 24);
  v25 = *(v15 + 64);
  v16 = *(v15 + 48);
  v24[2] = *(v15 + 32);
  v24[3] = v16;
  v17 = *(v15 + 16);
  v24[0] = *v15;
  v24[1] = v17;
  if ((v25 & 0x100) != 0)
  {
    v18 = *(v15 + 48);
    v22[2] = *(v15 + 32);
    v22[3] = v18;
    v23 = *(v15 + 64);
    v19 = *(v15 + 16);
    v22[0] = *v15;
    v22[1] = v19;
  }

  else
  {

    sub_252692F00();
    v20 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v24, &qword_27F4DC120);
    (*(v5 + 8))(v7, v4);
  }

  if (LOBYTE(v22[0]) == 1)
  {
    result = sub_252692360();
  }

  else
  {
    result = sub_252692330();
  }

  *a2 = v11;
  a2[1] = KeyPath;
  a2[2] = v13;
  a2[3] = result;
  return result;
}

int64x2_t sub_252534740@<Q0>(uint64_t a1@<X8>)
{
  sub_2526909F0();
  v3 = v2;
  v5 = v4;
  *a1 = swift_getKeyPath();
  *(a1 + 65) = 0;
  v6 = type metadata accessor for ControlBackgroundView();
  v7 = v6[5];
  *(a1 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  swift_storeEnumTagMultiPayload();
  *(a1 + v6[7]) = 2;
  v8 = v6[8];
  v9 = [objc_opt_self() systemGray4Color];
  *(a1 + v8) = sub_252692240();
  v10 = v5 * 0.5;
  if (v5 * 0.5 >= v3 * 0.5)
  {
    v10 = v3 * 0.5;
  }

  if (v10 > 100.0)
  {
    v10 = 100.0;
  }

  v11 = a1 + v6[6];
  *v11 = v10;
  *(v11 + 8) = 0;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4DF370) + 36));
  v13 = *(sub_252690D30() + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_252691260();
  (*(*(v15 - 8) + 104))(&v12->i8[v13], v14, v15);
  result = vdupq_n_s64(0x4059000000000000uLL);
  *v12 = result;
  return result;
}

uint64_t sub_2525348CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuPickerControlView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252534930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuPickerControlView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_252534994@<X0>(void *a1@<X8>)
{
  type metadata accessor for MenuPickerControlView();

  return sub_2525333BC(a1);
}

uint64_t objectdestroyTm_19()
{
  v1 = type metadata accessor for MenuPickerControlView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v26 = v0;
  v5 = v0 + v3;

  v6 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v7 = v0 + v3 + *(v6 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v9 = type metadata accessor for IconDescriptor();
    v24 = v1;
    v10 = v4;
    v11 = *(v9 + 20);
    v25 = v2;
    v12 = sub_25268F910();
    v13 = *(*(v12 - 8) + 8);
    v14 = v7 + v11;
    v4 = v10;
    v1 = v24;
    v13(v14, v12);
    v15 = v7 + *(v8 + 28);

    v16 = v12;
    v2 = v25;
    v13(v15 + *(v9 + 20), v16);
  }

  v17 = v5 + *(v6 + 40);
  type metadata accessor for AccessoryControl.StatusProvider();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v21 = sub_25268D990();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v17 + v20, 1, v21))
    {
      (*(v22 + 8))(v17 + v20, v21);
    }
  }

  else if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 7)
  {
LABEL_10:
  }

  v19 = v5 + *(v1 + 24);
  sub_252457A80(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24), *(v19 + 32), *(v19 + 40), *(v19 + 48), *(v19 + 56), *(v19 + 64), *(v19 + 65));

  return MEMORY[0x2821FE8E8](v26, v3 + v4, v2 | 7);
}

uint64_t sub_252534D20(uint64_t *a1)
{
  type metadata accessor for MenuPickerControlView();

  return sub_252533448(a1);
}

unint64_t sub_252534DAC()
{
  result = qword_27F4E1700;
  if (!qword_27F4E1700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E16F0);
    sub_252534E64();
    sub_252400FC8(&qword_27F4DF368, &qword_27F4DF340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1700);
  }

  return result;
}

unint64_t sub_252534E64()
{
  result = qword_27F4E1708;
  if (!qword_27F4E1708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1710);
    sub_252534F1C();
    sub_252400FC8(&qword_27F4E1738, &qword_27F4E1740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1708);
  }

  return result;
}

unint64_t sub_252534F1C()
{
  result = qword_27F4E1718;
  if (!qword_27F4E1718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1720);
    sub_252400FC8(&qword_27F4E1728, &qword_27F4E1730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1718);
  }

  return result;
}

unint64_t sub_252534FEC()
{
  result = qword_27F4E1790;
  if (!qword_27F4E1790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1788);
    sub_2524B9180();
    sub_252400FC8(&qword_27F4DBEE8, &qword_27F4DBEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1790);
  }

  return result;
}

unint64_t sub_2525350A4()
{
  result = qword_27F4E17A0;
  if (!qword_27F4E17A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E17A0);
  }

  return result;
}

unint64_t sub_252535100()
{
  result = qword_27F4E17B8;
  if (!qword_27F4E17B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E17B0);
    sub_252535184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E17B8);
  }

  return result;
}

unint64_t sub_252535184()
{
  result = qword_27F4E17C0;
  if (!qword_27F4E17C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E17C8);
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E17C0);
  }

  return result;
}

unint64_t sub_252535280()
{
  result = qword_27F4E17D0;
  if (!qword_27F4E17D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1760);
    sub_25253530C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E17D0);
  }

  return result;
}

unint64_t sub_25253530C()
{
  result = qword_27F4E17D8;
  if (!qword_27F4E17D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E16E8);
    sub_2525353C4();
    sub_252400FC8(&qword_27F4DF0F8, &qword_27F4DF100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E17D8);
  }

  return result;
}

unint64_t sub_2525353C4()
{
  result = qword_27F4E17E0;
  if (!qword_27F4E17E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E16E0);
    sub_252400FC8(&qword_27F4E17E8, &qword_27F4E16D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E17E0);
  }

  return result;
}

uint64_t sub_2525354A8@<X0>(void *a1@<X8>)
{
  v32 = a1;
  v31 = sub_252691690();
  v28 = *(v31 - 8);
  v1 = v28;
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v27 = &v25 - v4;
  v6 = sub_2526916B0();
  v29 = *(v6 - 8);
  v7 = v29;
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  sub_2526916C0();
  sub_2526916A0();
  v34 = 1;
  v13 = *(v7 + 16);
  v26 = v9;
  v13(v9, v12, v6);
  v33 = 1;
  v25 = *(v1 + 16);
  v14 = v30;
  v15 = v5;
  v16 = v31;
  v25(v30, v15, v31);
  v17 = v34;
  v18 = v32;
  *v32 = 0;
  *(v18 + 8) = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E17F8);
  v13(v18 + v19[12], v9, v6);
  v20 = v18 + v19[16];
  v21 = v33;
  *v20 = 0;
  v20[8] = v21;
  v25(v18 + v19[20], v14, v16);
  v22 = *(v28 + 8);
  v22(v27, v16);
  v23 = *(v29 + 8);
  v23(v12, v6);
  v22(v14, v16);
  return (v23)(v26, v6);
}

uint64_t sub_252535770@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2526911D0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E17F0);
  return sub_2525354A8((a1 + *(v2 + 44)));
}

unint64_t sub_2525357C8()
{
  result = qword_27F4E1800;
  if (!qword_27F4E1800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1800);
  }

  return result;
}

uint64_t type metadata accessor for SliderControlView()
{
  result = qword_27F4E1818;
  if (!qword_27F4E1818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2525358A0()
{
  sub_25251B6E8(319, &qword_27F4E1828, &qword_27F4DB218, &unk_252696080, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AccessoryControl.IncrementalConfig(319);
    if (v1 <= 0x3F)
    {
      sub_25251B6E8(319, &qword_27F4E1830, &qword_27F4DBBE8, &unk_2526994A0, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_2524B95D8(319, &qword_27F4DE678, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_25251B6E8(319, &qword_27F4E1838, &qword_27F4E1840, &unk_2526AAB40, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_2524B95D8(319, &qword_27F4DE328, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_252535A84(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E19D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E19D8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  sub_25237153C(a1, &v25 - v16, &qword_27F4DE658);
  v18 = *(v14 + 36);
  sub_25253D29C(a2, &v17[v18], type metadata accessor for AccessoryControl.ColorState);
  if (*(v2 + 24) == 1 && !*(v2 + 16))
  {
    sub_25253D29C(&v17[v18], v13, type metadata accessor for AccessoryControl.ColorState);
    v24 = type metadata accessor for AccessoryControl.ColorState(0);
    (*(*(v24 - 8) + 56))(v13, 0, 1, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658);
    sub_2526926B0();
  }

  else
  {
    sub_25237153C(v17, v10, &qword_27F4E19D8);
    v19 = (*(v15 + 56))(v10, 0, 1, v14);
    MEMORY[0x28223BE20](v19);
    v20 = type metadata accessor for AccessoryControl.ColorState(0);
    *(&v25 - 2) = v20;
    v21 = sub_25253D304(&qword_27F4E19E0, type metadata accessor for AccessoryControl.ColorState);
    *(&v25 - 1) = v21;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v25 - 2) = v20;
    *(&v25 - 1) = v21;
    swift_getKeyPath();
    sub_25237153C(v10, v7, &qword_27F4E19D0);

    sub_252690690();
    sub_252372288(v10, &qword_27F4E19D0);
  }

  return sub_252372288(v17, &qword_27F4E19D8);
}

uint64_t sub_252535E4C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D38);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D30);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  sub_25237153C(a1, &v25 - v16, &qword_27F4E0C20);
  v18 = *(v14 + 36);
  sub_25253D29C(a2, &v17[v18], type metadata accessor for AccessoryControl.ThermostatState);
  if (*(v2 + 24) == 1 && !*(v2 + 16))
  {
    sub_25253D29C(&v17[v18], v13, type metadata accessor for AccessoryControl.ThermostatState);
    v24 = type metadata accessor for AccessoryControl.ThermostatState(0);
    (*(*(v24 - 8) + 56))(v13, 0, 1, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20);
    sub_2526926B0();
  }

  else
  {
    sub_25237153C(v17, v10, &qword_27F4E0D30);
    v19 = (*(v15 + 56))(v10, 0, 1, v14);
    MEMORY[0x28223BE20](v19);
    v20 = type metadata accessor for AccessoryControl.ThermostatState(0);
    *(&v25 - 2) = v20;
    v21 = sub_25253D304(&qword_27F4E0D40, type metadata accessor for AccessoryControl.ThermostatState);
    *(&v25 - 1) = v21;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v25 - 2) = v20;
    *(&v25 - 1) = v21;
    swift_getKeyPath();
    sub_25237153C(v10, v7, &qword_27F4E0D38);

    sub_252690690();
    sub_252372288(v10, &qword_27F4E0D38);
  }

  return sub_252372288(v17, &qword_27F4E0D30);
}

uint64_t sub_252536214(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1900);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1908);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  sub_25237153C(a1, &v25 - v16, &qword_27F4E1810);
  v18 = *(v14 + 36);
  sub_25253D29C(a2, &v17[v18], type metadata accessor for AccessoryControl.IncrementalState);
  if (*(v2 + 24) == 1 && !*(v2 + 16))
  {
    sub_25253D29C(&v17[v18], v13, type metadata accessor for AccessoryControl.IncrementalState);
    v24 = type metadata accessor for AccessoryControl.IncrementalState(0);
    (*(*(v24 - 8) + 56))(v13, 0, 1, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810);
    sub_2526926B0();
  }

  else
  {
    sub_25237153C(v17, v10, &qword_27F4E1908);
    v19 = (*(v15 + 56))(v10, 0, 1, v14);
    MEMORY[0x28223BE20](v19);
    v20 = type metadata accessor for AccessoryControl.IncrementalState(0);
    *(&v25 - 2) = v20;
    v21 = sub_25253D304(&qword_27F4E1910, type metadata accessor for AccessoryControl.IncrementalState);
    *(&v25 - 1) = v21;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v25 - 2) = v20;
    *(&v25 - 1) = v21;
    swift_getKeyPath();
    sub_25237153C(v10, v7, &qword_27F4E1900);

    sub_252690690();
    sub_252372288(v10, &qword_27F4E1900);
  }

  return sub_252372288(v17, &qword_27F4E1908);
}

void (*sub_2525365DC(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218) - 8) + 64);
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810);
  a1[2] = v6;
  if (v4)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v6 - 8) + 64));
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for SliderControlView();
  sub_25237153C(v1 + *(v9 + 20), v8, &qword_27F4E1810);
  MEMORY[0x2530A4210](v6);
  return sub_25253671C;
}

void sub_25253671C(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_25237153C(*(a1 + 8), v3, &qword_27F4DB218);
    sub_2526926B0();
    sub_252372288(v2, &qword_27F4E1810);
    v5 = v4;
    v6 = &qword_27F4DB218;
  }

  else
  {
    sub_2526926B0();
    v6 = &qword_27F4E1810;
    v5 = v2;
  }

  sub_252372288(v5, v6);
  free(v2);
  free(v4);

  free(v3);
}

uint64_t sub_2525367F4()
{
  v0 = sub_25268ED70();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SliderControlView();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810);
  MEMORY[0x2530A4210](v11);
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    *v10 = 0;
    v13 = *MEMORY[0x277D15BB8];
    (*(v1 + 104))(v10, *MEMORY[0x277D15BB8], v0);
    if (v12(v6, 1, v7) != 1)
    {
      sub_252372288(v6, &qword_27F4DB218);
    }
  }

  else
  {
    sub_25253CDDC(v6, v10, type metadata accessor for AccessoryControl.IncrementalState);
    v13 = *MEMORY[0x277D15BB8];
  }

  (*(v1 + 32))(v3, v10, v0);
  result = (*(v1 + 88))(v3, v0);
  if (result != v13)
  {
    if (result == *MEMORY[0x277D15BB0])
    {
      return (*(v1 + 96))(v3, v0, 0.0);
    }

    else
    {
      result = sub_2526933A0();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_252536AE0()
{
  v0 = sub_25268ED70();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SliderControlView();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810);
  MEMORY[0x2530A4210](v11);
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    *v10 = 0;
    v13 = *MEMORY[0x277D15BB8];
    (*(v1 + 104))(v10, *MEMORY[0x277D15BB8], v0);
    if (v12(v6, 1, v7) != 1)
    {
      sub_252372288(v6, &qword_27F4DB218);
    }
  }

  else
  {
    sub_25253CDDC(v6, v10, type metadata accessor for AccessoryControl.IncrementalState);
    v13 = *MEMORY[0x277D15BB8];
  }

  (*(v1 + 32))(v3, v10, v0);
  v14 = (*(v1 + 88))(v3, v0);
  if (v14 == v13 || v14 == *MEMORY[0x277D15BB0])
  {
    return (*(v1 + 96))(v3, v0);
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t sub_252536DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v166 = a3;
  v165 = sub_2526917F0();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v163 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1848);
  MEMORY[0x28223BE20](v160);
  v161 = &v127 - v6;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1850);
  MEMORY[0x28223BE20](v159);
  v158 = &v127 - v7;
  v177 = sub_252690A20();
  v181 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v175 = v8;
  v176 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_25268EEA0();
  v170 = *(v171 - 1);
  MEMORY[0x28223BE20](v171);
  v139 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for ValueThrottleModifier.Config(0);
  MEMORY[0x28223BE20](v145);
  v149 = (&v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = type metadata accessor for ValueThrottleModifier(0);
  MEMORY[0x28223BE20](v147);
  v150 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v136);
  v137 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v135 = &v127 - v14;
  v15 = type metadata accessor for SliderControlView();
  v169 = *(v15 - 1);
  v16 = *(v169 + 64);
  MEMORY[0x28223BE20](v15);
  v180 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1858);
  MEMORY[0x28223BE20](v131);
  v18 = (&v127 - v17);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1860);
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v172 = &v127 - v19;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1868);
  MEMORY[0x28223BE20](v138);
  v146 = &v127 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1870);
  MEMORY[0x28223BE20](v21);
  v148 = &v127 - v22;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1878);
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v127 - v23;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1880);
  MEMORY[0x28223BE20](v157);
  v155 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v156 = &v127 - v26;
  v174 = sub_25268ED70();
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v133 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v179 = (&v127 - v29);
  v30 = sub_2525382BC();
  sub_2525367F4();
  v32 = v31;
  v33 = a2 + v15[8];
  v34 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  v35 = *(v33 + v34[9]) - *(v33 + v34[8]);
  v36 = v32 / v35;
  v183 = a2;
  sub_252536AE0();
  v37 = v34[7];
  v144 = v33;
  v39 = v38 / v35;
  v132 = v33 + v37;
  sub_25268EE90();
  sub_252692910();
  LOBYTE(v34) = sub_2526928F0();
  sub_2526909F0();
  v41 = v40;
  v151 = v21;
  if (v34)
  {
    v42 = v39 * v40;
  }

  else
  {
    sub_2526909F0();
    v42 = v41 - v39 * v43;
  }

  v44 = (v183 + v15[9]);
  v45 = v183;
  v46 = *v44;
  v47 = *(v44 + 8);
  v48 = v44[2];
  *&v193 = v46;
  BYTE8(v193) = v47;
  *&v194 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1888);
  sub_2526924E0();
  if (v188)
  {
    v49 = v42;
  }

  else
  {
    v49 = v187;
  }

  sub_2526909F0();
  v51 = v36 * v50;
  v52 = v45 + v15[10];
  v53 = *v52;
  v54 = *(v52 + 8);
  v55 = *(v52 + 16);
  *&v193 = v53;
  BYTE8(v193) = v54;
  *&v194 = v55;
  sub_2526924E0();
  if (v188)
  {
    v56 = v51;
  }

  else
  {
    v56 = v187;
  }

  sub_2525385B8(v179, v42, v51);
  *v18 = sub_252692910();
  v18[1] = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1890);
  sub_2525388CC(v45, a1, v30 & 1, v18 + *(v58 + 44), v56);
  v178 = type metadata accessor for SliderControlView;
  v59 = v45;
  v60 = v15;
  v61 = v45;
  v134 = v30;
  v62 = v180;
  sub_25253D29C(v59, v180, type metadata accessor for SliderControlView);
  v63 = *(v169 + 80);
  v140 = ~v63;
  v182 = a1;
  v162 = v16;
  v64 = ((v63 + 16) & ~v63) + v16;
  v65 = (v63 + 16) & ~v63;
  v142 = v63;
  v130 = v64;
  v167 = v63 | 7;
  v66 = swift_allocObject();
  v169 = v65;
  v168 = type metadata accessor for SliderControlView;
  sub_25253CDDC(v62, v66 + v65, type metadata accessor for SliderControlView);
  v67 = (v18 + *(v131 + 36));
  *v67 = sub_25253C188;
  v67[1] = v66;
  v67[2] = 0;
  v67[3] = 0;
  v129 = v60[5];
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810);
  v68 = v135;
  MEMORY[0x2530A4210]();
  sub_25253D29C(v61, v62, v178);
  v69 = swift_allocObject();
  sub_25253CDDC(v62, v69 + v65, type metadata accessor for SliderControlView);
  sub_25253C610();
  sub_25253C6C8();
  sub_2526921E0();

  sub_252372288(v68, &qword_27F4DB218);
  sub_252372288(v18, &qword_27F4E1858);
  sub_2526909F0();
  v71 = v70;
  v72 = v173;
  v73 = v133;
  v74 = v174;
  (*(v173 + 16))(v133, v179, v174);
  v75 = v170;
  v76 = v139;
  v77 = v171;
  (*(v170 + 16))(v139, v132, v171);
  v78 = v183;
  v79 = v137;
  MEMORY[0x2530A4210](v128);
  v80 = type metadata accessor for AccessoryControl.IncrementalState(0);
  LOBYTE(v65) = (*(*(v80 - 8) + 48))(v79, 1, v80) != 1;
  sub_252372288(v79, &qword_27F4DB218);
  v81 = v149;
  *v149 = 0;
  *(v81 + 8) = v71;
  v82 = v145;
  (*(v72 + 32))(v81 + *(v145 + 24), v73, v74);
  (*(v75 + 32))(v81 + *(v82 + 28), v76, v77);
  *(v81 + *(v82 + 32)) = v65;
  v83 = v180;
  sub_25253D29C(v78, v180, v178);
  v84 = v181;
  v85 = (v181 + 16);
  v170 = *(v181 + 16);
  v86 = v176;
  v87 = v177;
  (v170)(v176, v182, v177);
  v88 = *(v84 + 80);
  v145 = ~v88;
  v137 = (((v130 + v88) & ~v88) + v175);
  v89 = ((v130 + v88) & ~v88);
  v139 = v89;
  v90 = swift_allocObject();
  sub_25253CDDC(v83, v90 + v169, v168);
  v171 = *(v84 + 32);
  (v171)(&v89[v90], v86, v87);
  v187 = 0.0;
  LOBYTE(v188) = 1;
  v189 = 0;
  v190 = 1;
  v191 = 0;
  v192 = 513;
  sub_2526924D0();
  v91 = v195;
  v92 = v150;
  *(v150 + 1) = v194;
  *(v92 + 32) = v91;
  *(v92 + 48) = v196;
  *v92 = v193;
  v93 = v147;
  sub_25253CDDC(v81, v92 + *(v147 + 20), type metadata accessor for ValueThrottleModifier.Config);
  v94 = (v92 + *(v93 + 24));
  *v94 = sub_25253C77C;
  v94[1] = v90;
  v95 = v146;
  (*(v141 + 32))(v146, v172, v143);
  sub_25253CDDC(v92, v95 + *(v138 + 36), type metadata accessor for ValueThrottleModifier);
  sub_25253D29C(v183, v83, v178);
  v172 = v85;
  (v170)(v86, v182, v87);
  v96 = (v137 + 7) & 0xFFFFFFFFFFFFFFF8;
  v178 = v88;
  v97 = swift_allocObject();
  sub_25253CDDC(v83, v97 + v169, v168);
  v181 = v84 + 32;
  (v171)(&v139[v97], v86, v87);
  *(v97 + v96) = v39;
  *(v97 + ((v96 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;
  KeyPath = swift_getKeyPath();
  v99 = v158;
  sub_25237153C(v95, v158, &qword_27F4E1868);
  v100 = v99 + *(v159 + 36);
  *v100 = 1;
  *(v100 + 8) = sub_25253C850;
  *(v100 + 16) = v97;
  *(v100 + 24) = KeyPath;
  *(v100 + 32) = 0;
  sub_25237153C(v99, v161, &qword_27F4E1850);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E18B8);
  sub_25253C96C();
  sub_25253CB1C();
  v101 = v148;
  sub_252691470();
  sub_252372288(v99, &qword_27F4E1850);
  sub_252372288(v95, &qword_27F4E1868);
  v102 = v163;
  sub_2526917C0();
  v103 = sub_25253CC30();
  v104 = v152;
  v105 = v151;
  sub_252692020();
  (*(v164 + 8))(v102, v165);
  sub_252372288(v101, &qword_27F4E1870);
  v106 = v144;
  if ((v134 & 1) == 0)
  {
    v106 = (v106 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28));
  }

  v107 = *v106;
  v108 = v106[1];

  *&v109 = COERCE_DOUBLE(sub_252685F88(v107, v108));
  v111 = v110;

  v187 = *&v109;
  v188 = v111;
  v185 = v105;
  v186 = v103;
  swift_getOpaqueTypeConformance2();
  sub_252404480();
  v112 = v155;
  v113 = v154;
  sub_252691FB0();

  (*(v153 + 8))(v104, v113);
  v114 = v182;
  sub_2526909F0();
  v184 = 0x4059000000000000;
  v187 = (v49 - v56) / v115 * 100.0;
  v185 = 0;
  sub_252471B6C();
  v187 = COERCE_DOUBLE(sub_252692C50());
  v188 = v116;
  v117 = v156;
  sub_252690BE0();

  sub_252372288(v112, &qword_27F4E1880);
  v118 = v176;
  v119 = v177;
  (v170)(v176, v114, v177);
  v120 = v180;
  sub_25253D29C(v183, v180, type metadata accessor for SliderControlView);
  v121 = (v178 + 16) & v145;
  v122 = (v175 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
  v123 = (v122 + 15) & 0xFFFFFFFFFFFFFFF8;
  v124 = (v142 + v123 + 8) & v140;
  v125 = swift_allocObject();
  (v171)(v125 + v121, v118, v119);
  *(v125 + v122) = v49;
  *(v125 + v123) = v56;
  sub_25253CDDC(v120, v125 + v124, type metadata accessor for SliderControlView);
  sub_252690C20();

  sub_252372288(v117, &qword_27F4E1880);
  return (*(v173 + 8))(v179, v174);
}

uint64_t sub_2525382BC()
{
  v0 = sub_25268ED70();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SliderControlView();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810);
  MEMORY[0x2530A4210](v11);
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    *v10 = 0;
    v13 = *MEMORY[0x277D15BB8];
    (*(v1 + 104))(v10, *MEMORY[0x277D15BB8], v0);
    if (v12(v6, 1, v7) != 1)
    {
      sub_252372288(v6, &qword_27F4DB218);
    }
  }

  else
  {
    sub_25253CDDC(v6, v10, type metadata accessor for AccessoryControl.IncrementalState);
    v13 = *MEMORY[0x277D15BB8];
  }

  (*(v1 + 32))(v3, v10, v0);
  v14 = (*(v1 + 88))(v3, v0);
  if (v14 == v13)
  {
    (*(v1 + 96))(v3, v0);
    return *v3 > 0.0;
  }

  else if (v14 == *MEMORY[0x277D15BB0])
  {
    return 1;
  }

  else
  {
    result = sub_2526933A0();
    __break(1u);
  }

  return result;
}

uint64_t sub_2525385B8@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = sub_25268ED70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SliderControlView();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810);
  MEMORY[0x2530A4210](v17);
  v18 = *(v14 + 48);
  if (v18(v12, 1, v13) == 1)
  {
    *v16 = 0;
    v19 = *MEMORY[0x277D15BB8];
    (*(v7 + 104))(v16, v19, v6);
    if (v18(v12, 1, v13) != 1)
    {
      sub_252372288(v12, &qword_27F4DB218);
    }
  }

  else
  {
    sub_25253CDDC(v12, v16, type metadata accessor for AccessoryControl.IncrementalState);
    v19 = *MEMORY[0x277D15BB8];
  }

  (*(v7 + 32))(v9, v16, v6);
  v20 = (*(v7 + 88))(v9, v6);
  v21 = a1;
  if (v20 == v19)
  {
    goto LABEL_8;
  }

  if (v20 == *MEMORY[0x277D15BB0])
  {
    *a1 = a3;
    v21 = a1 + 1;
    v19 = v20;
LABEL_8:
    *v21 = a2;
    return (*(v7 + 104))(a1, v19, v6);
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t sub_2525388CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D1>)
{
  v125 = a3;
  v124 = a2;
  v122 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD48);
  MEMORY[0x28223BE20](v7 - 8);
  v108 = &v97 - v8;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1920);
  MEMORY[0x28223BE20](v107);
  v113 = &v97 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1928);
  MEMORY[0x28223BE20](v111);
  v112 = &v97 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1930);
  MEMORY[0x28223BE20](v109);
  v115 = &v97 - v11;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1938);
  MEMORY[0x28223BE20](v114);
  v117 = &v97 - v12;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1940);
  MEMORY[0x28223BE20](v119);
  v118 = &v97 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1948);
  MEMORY[0x28223BE20](v14 - 8);
  v121 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v120 = &v97 - v17;
  v104 = sub_252692270();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25268EEA0();
  v98 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1950);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v116 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = (&v97 - v26);
  v28 = type metadata accessor for SliderControlView();
  v29 = a1 + *(v28 + 32);
  v30 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  v31 = *(v30 + 28);
  *v27 = sub_25268EE90();
  v27[1] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1958);
  sub_2525394D0(a1, v124, v27 + *(v33 + 44), a5);
  v105 = v28;
  v34 = *(v28 + 24);
  v35 = v30;
  v106 = a1;
  v36 = *(a1 + v34);
  v37 = type metadata accessor for AnimationModel();
  v38 = sub_25253D304(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  v101 = v37;
  v100 = v38;
  v39 = sub_252690DF0();
  v41 = v40;
  v126 = 1;
  sub_2526924D0();
  v42 = v127;
  v43 = v128;
  v44 = *(v23 + 44);
  v110 = v27;
  v45 = v27 + v44;
  *v45 = v39;
  *(v45 + 1) = v41;
  *(v45 + 2) = v36;
  v45[24] = v42;
  *(v45 + 4) = v43;
  LODWORD(v123) = sub_25248DA50();
  v124 = sub_252692330();
  v46 = *MEMORY[0x277D15CE8];
  v47 = v98;
  v48 = *(v98 + 104);
  v48(v21, v46, v19);
  v99 = v31;
  v49 = v47;
  LOBYTE(v47) = sub_25268EE80();
  v50 = *(v49 + 8);
  v50(v21, v19);
  if (v47)
  {
  }

  else
  {
    sub_252692330();
  }

  if (v123)
  {
    v51 = *MEMORY[0x277CE0EE0];
    v52 = *(v103 + 104);
    v98 = v35;
    v52(v102, v51, v104);
    v53 = sub_2526923A0();
    v54 = v124;
    if (sub_25248DA50())
    {
      v54 = v53;
    }

    v124 = v54;
    v35 = v98;
  }

  sub_252692330();
  v48(v21, v46, v19);
  v55 = sub_25268EE80();
  v50(v21, v19);
  if (v55)
  {
    v56 = *(v29 + *(v35 + 20));
  }

  else
  {
    v56 = sub_252692330();
  }

  if (v123)
  {
    (*(v103 + 104))(v102, *MEMORY[0x277CE0EE0], v104);
    v57 = sub_2526923A0();
    if (sub_25248DA50())
    {
      v56 = v57;
    }
  }

  v123 = v56;
  if (v125)
  {

    v56 = v124;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  }

  v58 = sub_2526923D0();
  v59 = *v106;
  v60 = *(v106 + *(v105 + 28));
  v61 = sub_252690DF0();
  v63 = v62;
  if ((v125 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  }

  type metadata accessor for IconDescriptor();
  v64 = v108;
  sub_25268F8F0();
  v65 = sub_252691340();
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  KeyPath = swift_getKeyPath();
  v67 = v113;
  v68 = &v113[*(v107 + 36)];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0630);
  sub_2523714D4(v64, v68 + *(v69 + 28), &qword_27F4DBD48);
  *v68 = KeyPath;
  *v67 = v58;
  *(v67 + 8) = v61;
  *(v67 + 16) = v63;
  *(v67 + 24) = v59;
  *(v67 + 32) = v60;
  if (qword_27F4DAB00 != -1)
  {
    swift_once();
  }

  v70 = qword_27F4FB4A0;
  v71 = swift_getKeyPath();
  v72 = v112;
  sub_2523714D4(v67, v112, &qword_27F4E1920);
  v73 = (v72 + *(v111 + 36));
  *v73 = v71;
  v73[1] = v70;
  v74 = swift_getKeyPath();
  v75 = v115;
  sub_2523714D4(v72, v115, &qword_27F4E1928);
  v76 = (v75 + *(v109 + 36));
  *v76 = v74;
  v76[1] = v56;

  LOBYTE(v74) = sub_252691A20();
  sub_252690760();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = v117;
  sub_2523714D4(v75, v117, &qword_27F4E1930);
  v86 = v85 + *(v114 + 36);
  *v86 = v74;
  *(v86 + 8) = v78;
  *(v86 + 16) = v80;
  *(v86 + 24) = v82;
  *(v86 + 32) = v84;
  *(v86 + 40) = 0;
  if (qword_27F4DAB08 != -1)
  {
    swift_once();
  }

  v87 = qword_27F4FB4A8;
  v88 = v118;
  sub_2523714D4(v85, v118, &qword_27F4E1938);
  v89 = v88 + *(v119 + 36);
  *v89 = v87;
  *(v89 + 8) = v125 & 1;
  sub_25253CE44();

  v90 = v120;
  sub_252691EA0();
  sub_252372288(v88, &qword_27F4E1940);
  v91 = v110;
  v92 = v116;
  sub_25237153C(v110, v116, &qword_27F4E1950);
  v93 = v121;
  sub_25237153C(v90, v121, &qword_27F4E1948);
  v94 = v122;
  sub_25237153C(v92, v122, &qword_27F4E1950);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E19B0);
  sub_25237153C(v93, v94 + *(v95 + 48), &qword_27F4E1948);

  sub_252372288(v90, &qword_27F4E1948);
  sub_252372288(v91, &qword_27F4E1950);
  sub_252372288(v93, &qword_27F4E1948);
  return sub_252372288(v92, &qword_27F4E1950);
}

uint64_t sub_2525394D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v49 = a2;
  v55 = a3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E19B8);
  MEMORY[0x28223BE20](v51);
  v7 = (&v49 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E18F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v49 - v12;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E19C0);
  MEMORY[0x28223BE20](v50);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v18);
  v52 = &v49 - v19;
  v20 = type metadata accessor for ControlBackgroundView();
  v21 = (v20 - 8);
  MEMORY[0x28223BE20](v20);
  v53 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v49 - v24;
  v26 = type metadata accessor for SliderControlView();
  v27 = *(a1 + *(v26 + 24));
  KeyPath = swift_getKeyPath();
  v61 = 0;
  *v25 = KeyPath;
  v25[65] = 0;
  v29 = v21[7];
  *&v25[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  swift_storeEnumTagMultiPayload();
  v30 = &v25[v21[8]];
  v25[v21[9]] = 2;
  v31 = v21[10];
  v32 = [objc_opt_self() systemGray4Color];
  *&v25[v31] = sub_252692240();
  *v30 = v27;
  v30[8] = 0;
  v33 = a1 + *(v26 + 32);
  v34 = *(v33 + *(type metadata accessor for AccessoryControl.IncrementalConfig(0) + 24));
  sub_2526909F0();
  sub_252692920();
  sub_2526909C0();
  v35 = qword_27F4DAB08;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = qword_27F4FB4A8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810);
  MEMORY[0x2530A4210](v37);
  v38 = type metadata accessor for AccessoryControl.IncrementalState(0);
  if ((*(*(v38 - 8) + 48))(v10, 1, v38))
  {
    sub_252372288(v10, &qword_27F4DB218);
    v39 = sub_25268ED70();
    (*(*(v39 - 8) + 56))(v13, 1, 1, v39);
  }

  else
  {
    v40 = sub_25268ED70();
    v41 = *(v40 - 8);
    (*(v41 + 16))(v13, v10, v40);
    sub_252372288(v10, &qword_27F4DB218);
    (*(v41 + 56))(v13, 0, 1, v40);
  }

  sub_2523714D4(v13, v7 + *(v51 + 36), &qword_27F4E18F0);
  *v7 = v36;
  sub_25237153C(v7, &v17[*(v50 + 36)], &qword_27F4E19B8);
  *v17 = v34;
  *(v17 + 4) = 256;
  *(v17 + 10) = v59;
  *(v17 + 7) = v60;
  *(v17 + 2) = 0;
  *(v17 + 3) = -a4;
  v42 = v57;
  *(v17 + 2) = v56;
  *(v17 + 3) = v42;
  *(v17 + 4) = v58;

  sub_252372288(v7, &qword_27F4E19B8);
  v43 = v52;
  sub_2523714D4(v17, v52, &qword_27F4E19C0);
  v44 = v53;
  sub_25253D29C(v25, v53, type metadata accessor for ControlBackgroundView);
  v45 = v54;
  sub_25237153C(v43, v54, &qword_27F4E19C0);
  v46 = v55;
  sub_25253D29C(v44, v55, type metadata accessor for ControlBackgroundView);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E19C8);
  sub_25237153C(v45, v46 + *(v47 + 48), &qword_27F4E19C0);
  sub_252372288(v43, &qword_27F4E19C0);
  sub_25253D23C(v25, type metadata accessor for ControlBackgroundView);
  sub_252372288(v45, &qword_27F4E19C0);
  return sub_25253D23C(v44, type metadata accessor for ControlBackgroundView);
}

uint64_t sub_252539B68(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for SliderControlView() + 32);
  v2 = v1 + *(type metadata accessor for AccessoryControl.IncrementalConfig(0) + 44);
  v3 = *v2;
  v4 = *(v2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1918);
  swift_allocObject();
  sub_252626140(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E18F8);
  return sub_2526924F0();
}

uint64_t sub_252539C2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v51 - v6;
  v8 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (v51 - v13);
  v56 = type metadata accessor for SliderControlView();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810);
  v55 = a1;
  MEMORY[0x2530A4210]();
  v16 = *(v9 + 48);
  v17 = v16(v7, 1, v8);
  v18 = MEMORY[0x277D15BB8];
  if (v17 == 1)
  {
    *v14 = 0;
    v19 = *v18;
    v20 = sub_25268ED70();
    (*(*(v20 - 8) + 104))(v14, v19, v20);
    *(v14 + *(v8 + 20)) = 0;
    if (v16(v7, 1, v8) != 1)
    {
      sub_252372288(v7, &qword_27F4DB218);
    }
  }

  else
  {
    sub_25253CDDC(v7, v14, type metadata accessor for AccessoryControl.IncrementalState);
  }

  v21 = *(v14 + *(v8 + 20));
  sub_25253D23C(v14, type metadata accessor for AccessoryControl.IncrementalState);
  v22 = v55;
  v23 = v56;
  if ((v21 & 1) == 0)
  {
    v24 = (v55 + *(v56 + 44));
    v25 = *v24;
    v26 = *(v24 + 1);
    LOBYTE(v59) = v25;
    v60 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
    sub_2526924E0();
    if ((v57 & 1) == 0)
    {
      v27 = (v22 + v23[10]);
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = v27[2];
      v54 = v28;
      v59 = v28;
      v53 = v29;
      LOBYTE(v60) = v29;
      v52 = v30;
      v61 = v30;
      v51[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1888);
      sub_2526924E0();
      if ((v58 & 1) == 0)
      {
        if (qword_27F4DABD0 != -1)
        {
          swift_once();
        }

        v31 = sub_2526905A0();
        __swift_project_value_buffer(v31, qword_27F4E4B18);
        v32 = sub_252690580();
        v33 = sub_252692F10();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_252309000, v32, v33, "user finger lifted, undo stagging value for lower point", v34, 2u);
          v35 = v34;
          v22 = v55;
          MEMORY[0x2530A5A40](v35, -1, -1);
        }

        v59 = v54;
        LOBYTE(v60) = v53;
        v61 = v52;
        v57 = 0;
        v58 = 1;
        sub_2526924F0();
        v23 = v56;
      }
    }
  }

  MEMORY[0x2530A4210](v15);
  if (v16(v4, 1, v8) == 1)
  {
    *v11 = 0;
    v36 = *MEMORY[0x277D15BB8];
    v37 = sub_25268ED70();
    (*(*(v37 - 8) + 104))(v11, v36, v37);
    *(v11 + *(v8 + 20)) = 0;
    if (v16(v4, 1, v8) != 1)
    {
      sub_252372288(v4, &qword_27F4DB218);
    }
  }

  else
  {
    sub_25253CDDC(v4, v11, type metadata accessor for AccessoryControl.IncrementalState);
  }

  v38 = *(v11 + *(v8 + 20));
  result = sub_25253D23C(v11, type metadata accessor for AccessoryControl.IncrementalState);
  if ((v38 & 1) == 0)
  {
    v40 = (v22 + v23[11]);
    v41 = *v40;
    v42 = *(v40 + 1);
    LOBYTE(v59) = v41;
    v60 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
    result = sub_2526924E0();
    if ((v57 & 1) == 0)
    {
      v43 = (v22 + v23[9]);
      v44 = *v43;
      v45 = *(v43 + 8);
      v46 = v43[2];
      v59 = *v43;
      LOBYTE(v60) = v45;
      v61 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1888);
      result = sub_2526924E0();
      if ((v58 & 1) == 0)
      {
        if (qword_27F4DABD0 != -1)
        {
          swift_once();
        }

        v47 = sub_2526905A0();
        __swift_project_value_buffer(v47, qword_27F4E4B18);
        v48 = sub_252690580();
        v49 = sub_252692F10();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_252309000, v48, v49, "user finger lifted, undo stagging value for upper point", v50, 2u);
          MEMORY[0x2530A5A40](v50, -1, -1);
        }

        v59 = v44;
        LOBYTE(v60) = v45;
        v61 = v46;
        v57 = 0;
        v58 = 1;
        return sub_2526924F0();
      }
    }
  }

  return result;
}

uint64_t sub_25253A2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v124 = a3;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810);
  MEMORY[0x28223BE20](v123);
  v122 = &v113 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v6 - 8);
  v121 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v120 = &v113 - v9;
  v127 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v119 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v129 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25268ED70();
  v130 = *(v11 - 8);
  v131 = v11;
  MEMORY[0x28223BE20](v11);
  v128 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E18E8);
  MEMORY[0x28223BE20](v13);
  v15 = &v113 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E18F0);
  MEMORY[0x28223BE20](v16 - 8);
  v126 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v125 = (&v113 - v19);
  MEMORY[0x28223BE20](v20);
  v134 = &v113 - v21;
  v22 = sub_2526910F0();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v27 = *(a1 + 8);
  result = type metadata accessor for SliderControlView();
  v132 = result;
  v133 = a2;
  v29 = a2 + *(result + 52);
  v30 = *v29;
  if (*(v29 + 8) != 1)
  {

    sub_252692F00();
    v31 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v30, 0);
    result = (*(v23 + 8))(v25, v22);
    if (v137 != 1)
    {
      return result;
    }

LABEL_5:
    v33 = v132;
    v32 = v133;
    v34 = (v133 + v132[11]);
    v35 = *(v34 + 1);
    LODWORD(v114) = *v34;
    LOBYTE(v137) = v114;
    *(&v137 + 1) = v35;
    LOBYTE(v135) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
    sub_2526924F0();
    v36 = *(v130 + 56);
    v117 = v130 + 56;
    v116 = v36;
    v36(v134, 1, 1, v131);
    v37 = v26;
    v38 = v32 + v33[8];
    v118 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
    v39 = v118[7];
    v40 = &v15[*(v13 + 48)];
    v41 = sub_25268EEA0();
    v42 = *(v41 - 8);
    v43 = *(v42 + 16);
    v115 = v38;
    v44 = v38 + v39;
    v45 = v37;
    v43(v15, v44, v41);
    *v40 = v37;
    v40[8] = v27;
    if (v27)
    {
      if (v27 == 1)
      {
        if ((*(v42 + 88))(v15, v41) == *MEMORY[0x277D15CF0])
        {
          v46 = (v133 + v132[10]);
          v47 = *v46;
          v48 = *(v46 + 8);
          v49 = v46[2];
          *&v137 = v47;
          BYTE8(v137) = v48;
          v138 = v49;
          v135 = v37;
          v136 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1888);
          sub_2526924F0();
          sub_2526909F0();
          v51 = v50;
          v52 = v115;
          sub_25268EE90();
          sub_252692910();
          v53 = sub_2526928F0();
          v54 = v51 - v45;
          if (v53)
          {
            v54 = v45;
          }

          v55 = *(v52 + v118[10]);
          v56 = v55 * round(round(v54 / v51 * (*(v52 + v118[9]) - *(v52 + v118[8]))) / v55);
          sub_252536AE0();
          v58 = v57;
          v59 = v134;
          sub_252372288(v134, &qword_27F4E18F0);
          v60 = v125;
          *v125 = v56;
          *(v60 + 8) = v58;
LABEL_17:
          v77 = v130;
          v76 = v131;
          (*(v130 + 104))(v60, *MEMORY[0x277D15BB0], v131);
          v116(v60, 0, 1, v76);
          sub_2523714D4(v60, v59, &qword_27F4E18F0);
          v79 = v128;
          v78 = v129;
          v81 = v126;
          v80 = v127;
          goto LABEL_40;
        }

        goto LABEL_23;
      }

      LOBYTE(v137) = v114;
      *(&v137 + 1) = v35;
      LOBYTE(v135) = 0;
      sub_2526924F0();
      if (qword_27F4DABD0 != -1)
      {
        swift_once();
      }

      v82 = sub_2526905A0();
      __swift_project_value_buffer(v82, qword_27F4E4B18);
      v83 = sub_252690580();
      v84 = sub_252692F10();
      v85 = os_log_type_enabled(v83, v84);
      v78 = v129;
      v77 = v130;
      v59 = v134;
      v81 = v126;
      if (v85)
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_252309000, v83, v84, "user finger lifted", v86, 2u);
        MEMORY[0x2530A5A40](v86, -1, -1);
      }

      (*(v42 + 8))(v15, v41);
      v76 = v131;
      v79 = v128;
    }

    else
    {
      v61 = (*(v42 + 88))(v15, v41);
      if (v61 != *MEMORY[0x277D15CE8] && v61 != *MEMORY[0x277D15CE0])
      {
        if (v61 == *MEMORY[0x277D15CF0])
        {
          v62 = (v133 + v132[9]);
          v63 = *v62;
          v64 = *(v62 + 8);
          v65 = v62[2];
          *&v137 = v63;
          BYTE8(v137) = v64;
          v138 = v65;
          v135 = v37;
          v136 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1888);
          sub_2526924F0();
          sub_2526909F0();
          v67 = v66;
          v68 = v115;
          sub_25268EE90();
          sub_252692910();
          v69 = sub_2526928F0();
          v70 = v67 - v45;
          if (v69)
          {
            v70 = v45;
          }

          v71 = v118;
          v72 = round(v70 / v67 * (*(v68 + v118[9]) - *(v68 + v118[8])));
          sub_2525367F4();
          v74 = v73;
          v75 = *(v68 + v71[10]);
          v59 = v134;
          sub_252372288(v134, &qword_27F4E18F0);
          v60 = v125;
          *v125 = v74;
          *(v60 + 8) = v75 * round(v72 / v75);
          goto LABEL_17;
        }

LABEL_23:
        sub_252372288(v134, &qword_27F4E18F0);
        v87 = &qword_27F4E18E8;
        v88 = v15;
        return sub_252372288(v88, v87);
      }

      v114 = v39;
      v89 = (v133 + v132[9]);
      v90 = *v89;
      v91 = *(v89 + 8);
      v92 = v89[2];
      *&v137 = *v89;
      BYTE8(v137) = v91;
      v138 = v92;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1888);
      sub_2526924E0();
      v93 = v115;
      v94 = v118;
      if (v136 == 1)
      {
        v95 = (*(v115 + v118[9]) - *(v115 + v118[8])) * 0.5;
      }

      else
      {
        v95 = v135;
      }

      v77 = v130;
      v76 = v131;
      *&v137 = v90;
      BYTE8(v137) = v91;
      v138 = v92;
      v135 = v45;
      v136 = 0;
      sub_2526924F0();
      sub_2526909F0();
      v97 = v96;
      sub_25268EE90();
      sub_252692910();
      v98 = sub_2526928F0();
      v99 = v97 - v95;
      if (v98)
      {
        v99 = v95;
      }

      v100 = *(v93 + v94[9]);
      v101 = *(v93 + v94[8]);
      v102 = v99 / v97 * (v100 - v101);
      sub_2526909F0();
      v104 = v103;
      sub_25268EE90();
      sub_252692910();
      v105 = sub_2526928F0();
      v106 = v104 - v45;
      if (v105)
      {
        v106 = v45;
      }

      v107 = (v100 - v101) * (v106 / v104);
      v79 = v128;
      v78 = v129;
      v59 = v134;
      v81 = v126;
      if (v107 == v100 && v102 < v100 || v107 == v101 && v101 < v102)
      {
        if (qword_27F4DAB10 != -1)
        {
          swift_once();
        }

        v108 = qword_27F4FB4B0;
        [qword_27F4FB4B0 impactOccurred];
        [v108 prepare];
      }

      v109 = *(v93 + v118[10]);
      sub_252372288(v59, &qword_27F4E18F0);
      v110 = v125;
      *v125 = v109 * round(v107 / v109);
      (*(v77 + 104))(v110, *MEMORY[0x277D15BB8], v76);
      v116(v110, 0, 1, v76);
      sub_2523714D4(v110, v59, &qword_27F4E18F0);
    }

    v80 = v127;
LABEL_40:
    sub_25237153C(v59, v81, &qword_27F4E18F0);
    if ((*(v77 + 48))(v81, 1, v76) == 1)
    {
      sub_252372288(v59, &qword_27F4E18F0);
      v88 = v81;
      v87 = &qword_27F4E18F0;
    }

    else
    {
      (*(v77 + 32))(v79, v81, v76);
      (*(v77 + 16))(v78, v79, v76);
      *(v78 + *(v80 + 20)) = 1;
      v137 = *(v133 + v132[12]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E18F8);
      sub_2526924E0();
      if (v135 == 0.0)
      {
        v112 = v120;
        sub_25253D29C(v78, v120, type metadata accessor for AccessoryControl.IncrementalState);
        (*(v119 + 56))(v112, 0, 1, v80);
        sub_25237153C(v112, v121, &qword_27F4DB218);
        sub_2526926B0();
        sub_252372288(v112, &qword_27F4DB218);
        sub_25253D23C(v78, type metadata accessor for AccessoryControl.IncrementalState);
        (*(v77 + 8))(v79, v76);
        v87 = &qword_27F4E18F0;
        v88 = v134;
      }

      else
      {
        v111 = v122;
        sub_2526926D0();
        sub_252536214(v111, v78);

        sub_252372288(v111, &qword_27F4E1810);
        sub_25253D23C(v78, type metadata accessor for AccessoryControl.IncrementalState);
        (*(v77 + 8))(v79, v76);
        v87 = &qword_27F4E18F0;
        v88 = v59;
      }
    }

    return sub_252372288(v88, v87);
  }

  if (v30)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_25253B1A4()
{
  sub_2526929C0();
  sub_252690A80();
}

uint64_t sub_25253B244(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = sub_25268ED70();
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x28223BE20](v11);
  v84 = (&v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_25268EEA0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v82 - v18;
  v87 = a2;
  sub_2526909F0();
  v21 = v20;
  v22 = type metadata accessor for SliderControlView();
  v23 = a1 + v22[8];
  v24 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  v25 = v24[8];
  v26 = *(v23 + v24[9]);
  v83 = v24;
  v27 = v24[7];
  v28 = v26 - *(v23 + v25);
  v29 = (v21 - a4) * v28 / v21;
  if (v28 < v29)
  {
    v29 = v28;
  }

  if (v29 <= 0.0)
  {
    v29 = 0.0;
  }

  v30 = round(v29 / 10.0) * 10.0 / v28;
  v31 = *(v14 + 16);
  v88 = v23;
  v31(v19, v23 + v27, v13);
  (*(v14 + 104))(v16, *MEMORY[0x277D15CF0], v13);
  v32 = sub_25268EE80();
  v33 = *(v14 + 8);
  v33(v16, v13);
  v33(v19, v13);
  if (v32)
  {
    if (vabdd_f64(v30, a5) >= vabdd_f64(v30, a6))
    {
      v47 = (a1 + v22[10]);
      v48 = *v47;
      v49 = *(v47 + 8);
      v50 = v47[2];
      v89 = *v47;
      v90 = v49;
      v91 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1888);
      sub_2526924E0();
      v51 = v93;
      if (v93)
      {
        v52 = v92;
      }

      else
      {
        sub_2526909F0();
        v52 = v30 * v73;
      }

      v89 = v48;
      v90 = v49;
      v91 = v50;
      v92 = v52;
      v93 = v51;
      sub_2526924F0();
      v56 = sub_2525365DC(&v89);
      v68 = v74;
      v75 = type metadata accessor for AccessoryControl.IncrementalState(0);
      if (!(*(*(v75 - 8) + 48))(v68, 1, v75))
      {
        v76 = *(v88 + v83[10]);
        v77 = v76 * round(v28 * v30 / v76);
        sub_252536AE0();
        v70 = v84;
        *v84 = v77;
        *(v70 + 1) = v78;
        goto LABEL_24;
      }
    }

    else
    {
      v34 = (a1 + v22[9]);
      v35 = *v34;
      v36 = *(v34 + 8);
      v37 = v34[2];
      v89 = *v34;
      v90 = v36;
      v91 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1888);
      sub_2526924E0();
      v38 = v93;
      if (v93)
      {
        v39 = v92;
      }

      else
      {
        sub_2526909F0();
        v65 = v64;
        sub_25268EE90();
        sub_252692910();
        v66 = sub_2526928F0();
        v39 = v30 * v65;
        if ((v66 & 1) == 0)
        {
          v39 = v65 - v30 * v65;
        }
      }

      v89 = v35;
      v90 = v36;
      v91 = v37;
      v92 = v39;
      v93 = v38;
      sub_2526924F0();
      v56 = sub_2525365DC(&v89);
      v68 = v67;
      v69 = type metadata accessor for AccessoryControl.IncrementalState(0);
      if (!(*(*(v69 - 8) + 48))(v68, 1, v69))
      {
        sub_2525367F4();
        v70 = v84;
        v71 = *(v88 + v83[10]);
        *v84 = v72;
        v70[1] = v71 * round(v28 * v30 / v71);
LABEL_24:
        v80 = v85;
        v79 = v86;
        (*(v85 + 104))(v70, *MEMORY[0x277D15BB0], v86);
        (*(v80 + 40))(v68, v70, v79);
      }
    }
  }

  else
  {
    v40 = v22[9];
    v82 = a1;
    v41 = (a1 + v40);
    v42 = *v41;
    v43 = *(v41 + 8);
    v44 = v41[2];
    v89 = *v41;
    v90 = v43;
    v91 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1888);
    sub_2526924E0();
    v45 = v93;
    if (v93)
    {
      v46 = v92;
    }

    else
    {
      sub_2526909F0();
      v54 = v53;
      sub_25268EE90();
      sub_252692910();
      v55 = sub_2526928F0();
      v46 = v30 * v54;
      if ((v55 & 1) == 0)
      {
        v46 = v54 - v30 * v54;
      }
    }

    v89 = v42;
    v90 = v43;
    v91 = v44;
    v92 = v46;
    v93 = v45;
    sub_2526924F0();
    v56 = sub_2525365DC(&v89);
    v58 = v57;
    v59 = type metadata accessor for AccessoryControl.IncrementalState(0);
    if (!(*(*(v59 - 8) + 48))(v58, 1, v59))
    {
      v60 = v84;
      v61 = *(v88 + v83[10]);
      *v84 = v61 * round(v28 * v30 / v61);
      v63 = v85;
      v62 = v86;
      (*(v85 + 104))(v60, *MEMORY[0x277D15BB8], v86);
      (*(v63 + 40))(v58, v60, v62);
    }
  }

  return (v56)(&v89, 0);
}

uint64_t sub_25253B914(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_25268DBC0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25268ED70();
  v55 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v54 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_252691900();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x277CDE498])
  {
    v53 = v13;
    v56 = v10;
    v57 = v9;
    sub_2526909F0();
    v22 = v21;
    sub_2526909F0();
    v23 = a2 - a3;
    if (v23 + v24 * 0.05 >= v22)
    {
      v25 = v22;
    }

    else
    {
      v25 = v23 + v24 * 0.05;
    }
  }

  else
  {
    if (v20 != *MEMORY[0x277CDE490])
    {
      return (*(v16 + 8))(v19, v15);
    }

    v53 = v13;
    v56 = v10;
    v57 = v9;
    sub_2526909F0();
    if (a2 - a3 + v26 * -0.05 < 0.0)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = a2 - a3 + v26 * -0.05;
    }
  }

  sub_2526909F0();
  v28 = v25 / v27;
  v29 = type metadata accessor for SliderControlView();
  v30 = a5 + *(v29 + 36);
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = *(v30 + 16);
  v59 = *v30;
  v60 = v32;
  v61 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1888);
  sub_2526924E0();
  v34 = v63;
  if (v63)
  {
    v35 = v62;
  }

  else
  {
    sub_2526909F0();
    v37 = v36;
    type metadata accessor for AccessoryControl.IncrementalConfig(0);
    sub_25268EE90();
    sub_252692910();
    v38 = sub_2526928F0();
    v35 = v28 * v37;
    if ((v38 & 1) == 0)
    {
      v35 = v37 - v28 * v37;
    }
  }

  v59 = v31;
  v60 = v32;
  v61 = v33;
  v62 = v35;
  v63 = v34;
  sub_2526924F0();
  v39 = sub_2525365DC(&v59);
  v41 = v40;
  v42 = type metadata accessor for AccessoryControl.IncrementalState(0);
  if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
  {
    v43 = a5 + *(v29 + 32);
    v44 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
    v45 = *(v43 + v44[10]);
    v47 = v54;
    v46 = v55;
    *v54 = v45 * round(v28 * (*(v43 + v44[9]) - *(v43 + v44[8])) / v45);
    v48 = v53;
    (*(v46 + 104))(v47, *MEMORY[0x277D15BB8], v53);
    (*(v46 + 40))(v41, v47, v48);
  }

  v39(&v59, 0);
  v50 = v56;
  v49 = v57;
  v58 = 0x4059000000000000;
  v59 = v28 * 100.0;
  v62 = 0.0;
  sub_252474424();
  v51 = sub_252692C50();
  MEMORY[0x25309F740](v51);
  sub_25268DBB0();
  return (*(v50 + 8))(v12, v49);
}

uint64_t sub_25253BE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  sub_25253D29C(v2, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SliderControlView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_25253CDDC(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for SliderControlView);
  v9 = v2 + *(v4 + 60);
  v10 = *v9;
  v11 = *(v9 + 8);
  if (sub_25268A420(*v9, v11))
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.5;
  }

  result = sub_25268A420(v10, v11);
  v14 = 0.0;
  *a2 = sub_25253BF8C;
  *(a2 + 8) = v8;
  if ((result & 1) == 0)
  {
    v14 = 1.0;
  }

  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_25253BF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SliderControlView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_252536DE8(a1, v6, a2);
}

uint64_t sub_25253C00C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_252691B20();
  v3 = sub_252691B00();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_252691B50();
  result = sub_252372288(v2, &qword_27F4DBD40);
  qword_27F4FB4A0 = v4;
  return result;
}

uint64_t sub_25253C104()
{
  result = sub_252692950();
  qword_27F4FB4A8 = result;
  return result;
}

id sub_25253C13C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755F0]) init];
  result = [v0 prepare];
  qword_27F4FB4B0 = v0;
  return result;
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for SliderControlView();
  v2 = *(*(v1 - 1) + 80);
  v25 = v0;
  v26 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  v5 = v0 + v3 + v1[5];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810) + 32);
  v7 = type metadata accessor for AccessoryControl.IncrementalState(0);
  if (!(*(*(v7 - 8) + 48))(v5 + v6, 1, v7))
  {
    v8 = sub_25268ED70();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = v4 + v1[8];

  v10 = type metadata accessor for IconDescriptor();
  v11 = *(v10 + 20);
  v12 = sub_25268F910();
  v13 = *(*(v12 - 8) + 8);
  v13(v9 + v11, v12);
  v14 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

  v13(v14 + *(v10 + 20), v12);
  v15 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

  v16 = *(v15 + 28);
  v17 = sub_25268EEA0();
  (*(*(v17 - 8) + 8))(v9 + v16, v17);

  v18 = v9 + *(v15 + 56);
  type metadata accessor for AccessoryControl.StatusProvider();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v20 = v25;
    }

    else
    {
      v20 = v25;
      if (EnumCaseMultiPayload == 3)
      {
LABEL_7:
      }
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v22 = sub_25268D990();
    v23 = *(v22 - 8);
    v20 = v25;
    if (!(*(v23 + 48))(v18 + v21, 1, v22))
    {
      (*(v23 + 8))(v18 + v21, v22);
    }
  }

  else
  {
    v20 = v25;
    if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 7)
    {
      goto LABEL_7;
    }
  }

  sub_25235E264(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return MEMORY[0x2821FE8E8](v20, v3 + v26, v2 | 7);
}

uint64_t sub_25253C59C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SliderControlView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_25253C610()
{
  result = qword_27F4E1898;
  if (!qword_27F4E1898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1858);
    sub_252400FC8(&qword_27F4E18A0, &qword_27F4E18A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1898);
  }

  return result;
}

unint64_t sub_25253C6C8()
{
  result = qword_27F4E18B0;
  if (!qword_27F4E18B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB218);
    sub_25253D304(&qword_27F4DCA38, type metadata accessor for AccessoryControl.IncrementalState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E18B0);
  }

  return result;
}

uint64_t sub_25253C77C(uint64_t a1)
{
  v3 = *(type metadata accessor for SliderControlView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_252690A20() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_25253A2A0(a1, v1 + v4, v7);
}

uint64_t sub_25253C850()
{
  type metadata accessor for SliderControlView();
  sub_252690A20();

  return sub_25253B1A4();
}

unint64_t sub_25253C96C()
{
  result = qword_27F4E18C0;
  if (!qword_27F4E18C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1850);
    sub_25253C9F8();
    sub_25249A86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E18C0);
  }

  return result;
}

unint64_t sub_25253C9F8()
{
  result = qword_27F4E18C8;
  if (!qword_27F4E18C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB218);
    sub_25253C610();
    sub_25253C6C8();
    swift_getOpaqueTypeConformance2();
    sub_25253D304(&qword_27F4E18D0, type metadata accessor for ValueThrottleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E18C8);
  }

  return result;
}

unint64_t sub_25253CB1C()
{
  result = qword_27F4E18D8;
  if (!qword_27F4E18D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E18B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1868);
    sub_2526914B0();
    sub_25253C9F8();
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E18D8);
  }

  return result;
}

unint64_t sub_25253CC30()
{
  result = qword_27F4E18E0;
  if (!qword_27F4E18E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1870);
    sub_25253C96C();
    sub_25253CB1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E18E0);
  }

  return result;
}

uint64_t sub_25253CCBC(uint64_t a1)
{
  v3 = *(sub_252690A20() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for SliderControlView() - 8);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = v1 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return sub_25253B914(a1, v8, v9, v1 + v4, v10);
}

uint64_t sub_25253CDDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25253CE44()
{
  result = qword_27F4E1960;
  if (!qword_27F4E1960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1940);
    sub_25253CEFC();
    sub_252400FC8(&qword_27F4E19A0, &qword_27F4E19A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1960);
  }

  return result;
}

unint64_t sub_25253CEFC()
{
  result = qword_27F4E1968;
  if (!qword_27F4E1968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1938);
    sub_25253CF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1968);
  }

  return result;
}

unint64_t sub_25253CF88()
{
  result = qword_27F4E1970;
  if (!qword_27F4E1970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1930);
    sub_25253D040();
    sub_252400FC8(&qword_27F4DC108, &qword_27F4DC110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1970);
  }

  return result;
}

unint64_t sub_25253D040()
{
  result = qword_27F4E1978;
  if (!qword_27F4E1978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1928);
    sub_25253D0F8();
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1978);
  }

  return result;
}

unint64_t sub_25253D0F8()
{
  result = qword_27F4E1980;
  if (!qword_27F4E1980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1920);
    sub_25253D1B0();
    sub_252400FC8(&qword_27F4E1998, &qword_27F4E0630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1980);
  }

  return result;
}

unint64_t sub_25253D1B0()
{
  result = qword_27F4E1988;
  if (!qword_27F4E1988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1990);
    sub_252421A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1988);
  }

  return result;
}

uint64_t sub_25253D23C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25253D29C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25253D304(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25253D34C()
{
  result = qword_27F4E19E8;
  if (!qword_27F4E19E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E19F0);
    sub_25253D3D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E19E8);
  }

  return result;
}

unint64_t sub_25253D3D8()
{
  result = qword_27F4E19F8;
  if (!qword_27F4E19F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1A00);
    sub_252400FC8(&qword_27F4E1A08, &qword_27F4E1A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E19F8);
  }

  return result;
}

uint64_t type metadata accessor for StatusButtonControlView()
{
  result = qword_27F4E1A18;
  if (!qword_27F4E1A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25253D504()
{
  sub_252527474();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AccessoryControl.BinaryViewConfig(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25253D5BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_252692920();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1A28);
  return sub_25253D61C(a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_25253D61C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79[1] = a2;
  v81 = a3;
  v4 = type metadata accessor for ButtonControlView();
  MEMORY[0x28223BE20](v4);
  v83 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v89 = v79 - v7;
  v9 = a1[1];
  v8 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  *&v135 = v9;
  v86 = v10;
  v87 = v8;
  *(&v135 + 1) = v8;
  *&v136 = v10;
  *&v85 = v11;
  *(&v136 + 1) = v11;
  *&v84 = v12;
  *&v137 = v12;
  *(&v137 + 1) = v13;
  *&v138 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1198);
  MEMORY[0x2530A4210](&v126);
  if (*&v127[16] == 1)
  {
    sub_252393F68(v126, *(&v126 + 1), *v127, *&v127[8], 1);
    KeyPath = 0;
    v16 = 0.0;
    v88 = 0xFFuLL;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_15;
  }

  v80 = v9;
  v21 = v127[0];
  v22 = *(&v126 + 1);
  sub_252393F68(v126, *(&v126 + 1), *v127, *&v127[8], *&v127[16]);
  v16 = 0.0;
  if ((v21 & 1) == 0)
  {
    *&v135 = v80;
    *(&v135 + 1) = v87;
    *&v136 = v86;
    *(&v136 + 1) = v85;
    *&v137 = v84;
    *(&v137 + 1) = v13;
    *&v138 = v14;
    MEMORY[0x2530A4210](&v126, v15);
    if (*&v127[16] == 1)
    {
      sub_252393F68(v126, *(&v126 + 1), *v127, *&v127[8], 1);
    }

    else
    {
      v23 = v126;
      sub_252393F68(v126, *(&v126 + 1), *v127, *&v127[8], *&v127[16]);
      if (v23 == 1)
      {
        KeyPath = swift_getKeyPath();
        v24 = 1.0;
        if (v22 <= 1.0)
        {
          v24 = v22;
        }

        if (v24 < 0.0)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = v24;
        }

        v25 = sub_252691A20();
        sub_252690760();
        v17 = v26;
        v18 = v27;
        v19 = v28;
        v20 = v29;
        LOBYTE(v135) = 0;
        LOBYTE(v126) = 0;
        *&v88 = 0;
        *(&v88 + 1) = v25;
        goto LABEL_14;
      }
    }
  }

  KeyPath = 0;
  v88 = 0xFFuLL;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
LABEL_14:
  v9 = v80;
LABEL_15:
  v80 = *a1;
  *&v126 = v9;
  *(&v126 + 1) = v87;
  *v127 = v86;
  *&v127[8] = v85;
  *&v127[16] = v84;
  *&v127[24] = v13;
  *&v127[32] = v14;
  sub_2526926D0();
  v30 = v135;
  v87 = v15;
  v31 = *(&v135 + 1);
  v86 = v138;
  v32 = type metadata accessor for StatusButtonControlView();
  v33 = *(v32 + 24);
  v34 = *(v4 + 24);
  v84 = v137;
  v85 = v136;
  v35 = v4;
  v36 = v89;
  sub_25253E798(a1 + v33, v89 + v34, type metadata accessor for AccessoryControl.BinaryViewConfig);
  LOBYTE(v32) = *(a1 + *(v32 + 28));
  v37 = v36 + v35[8];
  *v37 = swift_getKeyPath();
  *(v37 + 8) = 0;
  v38 = v36 + v35[9];
  __asm { FMOV            V0.2D, #1.0 }

  v111 = _Q0;
  type metadata accessor for CGSize(0);
  sub_2526924D0();
  v44 = *v127;
  *v38 = v126;
  *(v38 + 16) = v44;
  v45 = v36 + v35[10];
  LOBYTE(v111) = 0;
  sub_2526924D0();
  v46 = *(&v126 + 1);
  *v45 = v126;
  *(v45 + 8) = v46;
  *v36 = v80;
  *(v36 + 8) = v30;
  *(v36 + 16) = v31;
  v47 = v85;
  *(v36 + 40) = v84;
  *(v36 + 24) = v47;
  v48 = v87;
  *(v36 + 56) = v86;
  *(v36 + v35[7]) = v32;
  v49 = a1[2];
  v50 = a1[7];
  *&v135 = a1[1];
  *(&v135 + 1) = v49;
  v51 = *(a1 + 5);
  v136 = *(a1 + 3);
  v137 = v51;
  *&v138 = v50;
  MEMORY[0x2530A4210](&v126, v48);
  v52 = *&v127[16];
  if (*&v127[16] == 1)
  {
    sub_252393F68(v126, *(&v126 + 1), *v127, *&v127[8], 1);
LABEL_19:
    sub_25253E770(&v135);
    goto LABEL_20;
  }

  v53 = v126;
  v54 = *&v127[8];
  v55 = *v127;

  sub_252393F68(v53, *(&v53 + 1), v55, v54, v52);
  if (!v52)
  {
    goto LABEL_19;
  }

  sub_2526909F0();
  v56 = sub_2526911D0();
  LOBYTE(v128[0]) = 1;
  sub_25253DF24(&v135);
  v101 = v145;
  v102 = v146;
  v103 = v147;
  v97 = v141;
  v98 = v142;
  v99 = v143;
  v100 = v144;
  v93 = v137;
  v94 = v138;
  v95 = v139;
  v96 = v140;
  v91 = v135;
  v92 = v136;
  v121 = v145;
  v122 = v146;
  v123 = v147;
  v117 = v141;
  v118 = v142;
  v119 = v143;
  v120 = v144;
  v113 = v137;
  v114 = v138;
  v115 = v139;
  v116 = v140;
  v111 = v135;
  v112 = v136;
  sub_25237153C(&v91, &v126, &qword_27F4E1A48);
  sub_252372288(&v111, &qword_27F4E1A48);

  *&v90[151] = v100;
  *&v90[167] = v101;
  *&v90[183] = v102;
  *&v90[199] = v103;
  *&v90[87] = v96;
  *&v90[103] = v97;
  *&v90[119] = v98;
  *&v90[135] = v99;
  *&v90[23] = v92;
  *&v90[39] = v93;
  *&v90[55] = v94;
  *&v90[71] = v95;
  *&v90[7] = v91;
  *&v127[161] = *&v90[160];
  *&v127[177] = *&v90[176];
  *&v127[193] = *&v90[192];
  *&v127[97] = *&v90[96];
  *&v127[113] = *&v90[112];
  *&v127[129] = *&v90[128];
  *&v127[145] = *&v90[144];
  *&v127[33] = *&v90[32];
  *&v127[49] = *&v90[48];
  *&v127[65] = *&v90[64];
  *&v127[81] = *&v90[80];
  *&v127[1] = *v90;
  v126 = v56;
  v127[0] = v128[0];
  *&v127[208] = *(&v103 + 1);
  *&v127[17] = *&v90[16];
  CGPointMake(&v126);
  v147 = *&v127[176];
  v148 = *&v127[192];
  v149 = *&v127[208];
  v143 = *&v127[112];
  v144 = *&v127[128];
  v145 = *&v127[144];
  v146 = *&v127[160];
  v139 = *&v127[48];
  v140 = *&v127[64];
  v141 = *&v127[80];
  v142 = *&v127[96];
  v135 = v126;
  v136 = *v127;
  v137 = *&v127[16];
  v138 = *&v127[32];
LABEL_20:
  v57 = v89;
  v58 = v83;
  sub_25253E798(v89, v83, type metadata accessor for ButtonControlView);
  v103 = v147;
  v104 = v148;
  v105 = v149;
  v99 = v143;
  v100 = v144;
  v101 = v145;
  v102 = v146;
  v95 = v139;
  v96 = v140;
  v97 = v141;
  v98 = v142;
  v91 = v135;
  v92 = v136;
  v93 = v137;
  v94 = v138;
  *&v106 = v16;
  v59 = v81;
  v60 = KeyPath;
  *(&v106 + 1) = KeyPath;
  v107 = v88;
  *&v108 = v17;
  *(&v108 + 1) = v18;
  *&v109 = v19;
  *(&v109 + 1) = v20;
  v110 = 0;
  *(v81 + 64) = 0;
  v61 = v109;
  v59[2] = v108;
  v59[3] = v61;
  v62 = v107;
  *v59 = v106;
  v59[1] = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1A30);
  sub_25253E798(v58, v59 + *(v63 + 48), type metadata accessor for ButtonControlView);
  v64 = v59 + *(v63 + 64);
  v65 = v102;
  v123 = v103;
  v124 = v104;
  v66 = v98;
  v67 = v99;
  v119 = v99;
  v120 = v100;
  v68 = v100;
  v69 = v101;
  v121 = v101;
  v122 = v102;
  v70 = v94;
  v71 = v95;
  v115 = v95;
  v116 = v96;
  v72 = v96;
  v73 = v97;
  v117 = v97;
  v118 = v98;
  v111 = v91;
  v112 = v92;
  v75 = v91;
  v74 = v92;
  v76 = v93;
  v113 = v93;
  v114 = v94;
  v77 = v104;
  *(v64 + 12) = v103;
  *(v64 + 13) = v77;
  *(v64 + 8) = v67;
  *(v64 + 9) = v68;
  *(v64 + 10) = v69;
  *(v64 + 11) = v65;
  *(v64 + 4) = v71;
  *(v64 + 5) = v72;
  *(v64 + 6) = v73;
  *(v64 + 7) = v66;
  *v64 = v75;
  *(v64 + 1) = v74;
  v125 = v105;
  *(v64 + 28) = v105;
  *(v64 + 2) = v76;
  *(v64 + 3) = v70;
  sub_25237153C(&v106, &v126, &qword_27F4E1A38);
  sub_25237153C(&v111, &v126, &qword_27F4E1A40);
  sub_25253E800(v57);
  *&v127[176] = v103;
  *&v127[192] = v104;
  *&v127[208] = v105;
  *&v127[112] = v99;
  *&v127[128] = v100;
  *&v127[144] = v101;
  *&v127[160] = v102;
  *&v127[48] = v95;
  *&v127[64] = v96;
  *&v127[80] = v97;
  *&v127[96] = v98;
  v126 = v91;
  *v127 = v92;
  *&v127[16] = v93;
  *&v127[32] = v94;
  sub_252372288(&v126, &qword_27F4E1A40);
  sub_25253E800(v58);
  *v128 = v16;
  v128[1] = v60;
  v129 = v88;
  v130 = v17;
  v131 = v18;
  v132 = v19;
  v133 = v20;
  v134 = 0;
  return sub_252372288(v128, &qword_27F4E1A38);
}

uint64_t sub_25253DF24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2526912E0();
  v20[0] = 1;
  sub_25253E248(&v39);
  v32 = *&v40[112];
  v33 = *&v40[128];
  v28 = *&v40[48];
  v29 = *&v40[64];
  v30 = *&v40[80];
  v31 = *&v40[96];
  v24 = v39;
  v25 = *v40;
  v26 = *&v40[16];
  v27 = *&v40[32];
  v35[8] = *&v40[112];
  v35[9] = *&v40[128];
  v35[4] = *&v40[48];
  v35[5] = *&v40[64];
  v35[6] = *&v40[80];
  v35[7] = *&v40[96];
  v35[0] = v39;
  v35[1] = *v40;
  v34 = *&v40[144];
  v36 = *&v40[144];
  v35[2] = *&v40[16];
  v35[3] = *&v40[32];
  sub_25237153C(&v24, &v37, &qword_27F4E1A50);
  sub_252372288(v35, &qword_27F4E1A50);
  *&v23[119] = v31;
  *&v23[135] = v32;
  *&v23[151] = v33;
  *&v23[167] = v34;
  *&v23[55] = v27;
  *&v23[71] = v28;
  *&v23[87] = v29;
  *&v23[103] = v30;
  *&v23[7] = v24;
  *&v23[23] = v25;
  *&v23[39] = v26;
  v37 = v2;
  v38[0] = 1;
  *&v38[113] = *&v23[112];
  v3 = *&v23[112];
  v4 = *&v23[128];
  *&v38[129] = *&v23[128];
  v5 = *&v23[144];
  *&v38[145] = *&v23[144];
  *&v38[160] = *&v23[159];
  *&v38[49] = *&v23[48];
  v6 = *&v23[48];
  v7 = *&v23[64];
  *&v38[65] = *&v23[64];
  *&v38[81] = *&v23[80];
  v8 = *&v23[80];
  v9 = *&v23[96];
  *&v38[97] = *&v23[96];
  v10 = *&v23[16];
  *&v38[1] = *v23;
  v11 = *v23;
  *&v38[17] = *&v23[16];
  v12 = *&v23[32];
  *&v38[33] = *&v23[32];
  *&v21[135] = *&v38[112];
  *&v21[151] = *&v38[128];
  *&v21[167] = *&v38[144];
  *&v21[183] = *&v23[159];
  *&v21[71] = *&v38[48];
  *&v21[87] = *&v38[64];
  *&v21[103] = *&v38[80];
  *&v21[119] = *&v38[96];
  *&v21[7] = v2;
  *&v21[23] = *v38;
  *&v21[39] = *&v38[16];
  *&v21[55] = *&v38[32];
  v13 = *&v21[128];
  *(a1 + 153) = *&v21[144];
  v14 = *&v21[176];
  *(a1 + 169) = *&v21[160];
  *(a1 + 185) = v14;
  v15 = *&v21[64];
  *(a1 + 89) = *&v21[80];
  v16 = *&v21[112];
  *(a1 + 105) = *&v21[96];
  *(a1 + 121) = v16;
  *(a1 + 137) = v13;
  v17 = *v21;
  *(a1 + 25) = *&v21[16];
  v18 = *&v21[48];
  *(a1 + 41) = *&v21[32];
  *(a1 + 57) = v18;
  *(a1 + 73) = v15;
  *(a1 + 9) = v17;
  *&v40[113] = v3;
  *&v40[129] = v4;
  *&v40[145] = v5;
  *&v40[160] = *&v23[159];
  *&v40[49] = v6;
  *&v40[65] = v7;
  *&v40[81] = v8;
  *&v40[97] = v9;
  *&v40[1] = v11;
  *&v40[17] = v10;
  v22 = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 200) = *&v21[191];
  v39 = v2;
  v40[0] = 1;
  *&v40[33] = v12;
  sub_25237153C(&v37, v20, &qword_27F4E1A58);
  return sub_252372288(&v39, &qword_27F4E1A58);
}

uint64_t sub_25253E248@<X0>(uint64_t a1@<X8>)
{

  v24 = sub_2526923D0();
  sub_252692920();
  sub_2526909C0();
  v2 = v35;
  v22 = v36;
  v23 = v34;
  v3 = v37;
  v20 = v39;
  v21 = v38;
  v19 = sub_2526922F0();
  KeyPath = swift_getKeyPath();
  LOBYTE(v52) = v35;
  v25[0] = v37;
  v4 = sub_252692920();
  v6 = v5;
  v7 = sub_252692330();
  sub_252692920();
  sub_2526909C0();
  *&v33[6] = v40;
  *&v33[22] = v41;
  *&v33[38] = v42;
  *v43 = v7;
  *&v43[8] = 256;
  *&v43[10] = *v33;
  *&v43[26] = *&v33[16];
  *&v43[42] = *&v33[32];
  *&v43[56] = *(&v42 + 1);
  *&v44 = v4;
  *(&v44 + 1) = v6;
  v28 = *v43;
  v29 = *&v43[16];
  v30 = *&v43[32];
  v31 = *&v43[48];
  v32 = v44;
  v45 = v7;
  v46 = 256;
  *&v49[14] = *(&v42 + 1);
  *v49 = *&v33[32];
  v48 = *&v33[16];
  v47 = *v33;
  v50 = v4;
  v51 = v6;
  sub_25237153C(v43, v57, &qword_27F4E1A60);
  sub_252372288(&v45, &qword_27F4E1A60);
  *&v52 = v24;
  *(&v52 + 1) = v34;
  LOBYTE(v53) = v35;
  *(&v53 + 1) = v36;
  LOBYTE(v54) = v37;
  *(&v54 + 1) = v38;
  *&v55 = v39;
  *(&v55 + 1) = KeyPath;
  *v56 = v19;
  *&v56[8] = v28;
  v8 = v28;
  v9 = v29;
  *&v56[24] = v29;
  *&v56[40] = v30;
  v10 = v30;
  v11 = v31;
  *&v56[56] = v31;
  v12 = v32;
  *&v56[72] = v32;
  *(&v26[1] + 7) = v53;
  *(&v26[4] + 7) = *v56;
  *(&v26[3] + 7) = v55;
  *(&v26[2] + 7) = v54;
  *(v26 + 7) = v52;
  *(&v26[5] + 7) = *&v56[16];
  *(&v26[9] + 7) = *(&v32 + 1);
  *(&v26[8] + 7) = *&v56[64];
  *(&v26[7] + 7) = *&v56[48];
  *(&v26[6] + 7) = *&v56[32];
  v13 = v26[7];
  *(a1 + 105) = v26[6];
  *(a1 + 121) = v13;
  *(a1 + 137) = v26[8];
  *(a1 + 152) = *(&v26[8] + 15);
  v14 = v26[3];
  *(a1 + 41) = v26[2];
  *(a1 + 57) = v14;
  v15 = v26[5];
  *(a1 + 73) = v26[4];
  *(a1 + 89) = v15;
  v16 = v26[1];
  *(a1 + 9) = v26[0];
  *(a1 + 25) = v16;
  v66 = v9;
  v67 = v10;
  v68 = v11;
  v69 = v12;
  v27 = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v57[0] = v24;
  v57[1] = v23;
  v58 = v2;
  v59 = v22;
  v60 = v3;
  v61 = v21;
  v62 = v20;
  v63 = KeyPath;
  v64 = v19;
  v65 = v8;
  sub_25237153C(&v52, v25, &qword_27F4E1A68);
  return sub_252372288(v57, &qword_27F4E1A68);
}

uint64_t sub_25253E58C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_25253E798(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StatusButtonControlView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_25253E68C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_25253E6F0;
  a2[1] = v7;
  return result;
}

uint64_t sub_25253E68C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusButtonControlView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25253E6F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for StatusButtonControlView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_25253D5BC(a1, v6, a2);
}

double sub_25253E770(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_25253E798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25253E800(uint64_t a1)
{
  v2 = type metadata accessor for ButtonControlView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25253E85C()
{
  result = qword_27F4E1A70;
  if (!qword_27F4E1A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1A70);
  }

  return result;
}

void sub_25253E908()
{
  sub_252483C9C();
  if (v0 <= 0x3F)
  {
    sub_25253EA34(319, &qword_27F4E1A90, &qword_27F4DBBD0, &unk_2526A9B70, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AccessoryControl.BinaryViewConfig(319);
      if (v2 <= 0x3F)
      {
        sub_25253EA34(319, &qword_27F4E1830, &qword_27F4DBBE8, &unk_2526994A0, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25253EA34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void (*sub_25253EAB4(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 40);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1AF8);
  MEMORY[0x2530A4210]();
  return sub_25253EB68;
}

void sub_25253EB68(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_2526926B0();

  free(v1);
}

uint64_t sub_25253EBE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2526910F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for SwitchControlView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_252542654(v2, &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SwitchControlView);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = sub_252541B60(&v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for SwitchControlView);
  v14 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_252692F00();
    v15 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v14, 0);
    result = (*(v5 + 8))(v7, v4);
    LOBYTE(v14) = v17[15];
  }

  v16 = 0.5;
  if (v14)
  {
    v16 = 1.0;
  }

  *a1 = sub_252541AC0;
  *(a1 + 8) = v12;
  *(a1 + 16) = v16;
  return result;
}

uint64_t sub_25253EE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v184 = a3;
  v186 = sub_2526912C0();
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v183 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_2526917F0();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v180 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1A98);
  MEMORY[0x28223BE20](v177);
  v179 = &v145 - v7;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1AA0);
  MEMORY[0x28223BE20](v178);
  v176 = &v145 - v8;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1AA8);
  MEMORY[0x28223BE20](v162);
  v165 = &v145 - v9;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1AB0);
  MEMORY[0x28223BE20](v163);
  v161 = &v145 - v10;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1AB8);
  MEMORY[0x28223BE20](v159);
  v155 = &v145 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1AC0);
  MEMORY[0x28223BE20](v12 - 8);
  v167 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v145 - v15;
  v148 = sub_2526910F0();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for ControlTextModifier.Config(0);
  MEMORY[0x28223BE20](v152);
  v158 = &v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ControlTextModifier(0);
  MEMORY[0x28223BE20](v18 - 8);
  v151 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1AC8);
  MEMORY[0x28223BE20](v150);
  v153 = (&v145 - v20);
  v21 = type metadata accessor for ControlBackgroundView();
  v22 = (v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1AD0);
  MEMORY[0x28223BE20](v149);
  v157 = &v145 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v145 - v27;
  MEMORY[0x28223BE20](v29);
  v187 = &v145 - v30;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1AD8);
  MEMORY[0x28223BE20](v156);
  v32 = (&v145 - v31);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1AE0);
  MEMORY[0x28223BE20](v169);
  v168 = &v145 - v33;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1AE8);
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v170 = &v145 - v34;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1AF0);
  MEMORY[0x28223BE20](v175);
  v173 = &v145 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v174 = &v145 - v37;
  v38 = type metadata accessor for SwitchControlView(0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v166 = a1;
  sub_2526909F0();
  v42 = v41 * 0.5;
  v43 = v41 * 0.25;
  sub_252542654(a2, &v145 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SwitchControlView);
  v44 = *(v39 + 80);
  v154 = v40;
  v45 = swift_allocObject();
  *(v45 + 16) = v43;
  v189 = v45;
  v160 = &v145 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252541B60(v160, v45 + ((v44 + 24) & ~v44), type metadata accessor for SwitchControlView);
  v46 = *(a2 + 32);
  v47 = *(a2 + 40);
  v193 = *(a2 + 24);
  *&v201 = v193;
  *(&v201 + 1) = v46;
  v192 = v46;
  v191 = v47;
  LOBYTE(v202) = v47;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1AF8);
  MEMORY[0x2530A4210](v206);
  v48 = 0.0;
  if ((v206[0] & 1) == 0)
  {
    v48 = v42;
  }

  if (LOBYTE(v206[0]) == 2)
  {
    v49 = v42;
  }

  else
  {
    v49 = v48;
  }

  v50 = a2 + *(v38 + 40);
  v51 = *v50;
  v52 = *(v50 + 8);
  v53 = *(v50 + 16);
  *&v201 = v51;
  BYTE8(v201) = v52;
  *&v202 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1888);
  sub_2526924E0();
  if (BYTE8(v206[0]))
  {
    v54 = v49;
  }

  else
  {
    v54 = *v206;
  }

  *v32 = sub_252692910();
  v32[1] = v55;
  v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1B00) + 44);
  v188 = v32;
  v57 = (v32 + v56);
  *v57 = sub_252692900();
  v57[1] = v58;
  v59 = *(a2 + 48);
  KeyPath = swift_getKeyPath();
  v205 = 0;
  *v24 = KeyPath;
  v24[65] = 0;
  v61 = v22[7];
  *&v24[v61] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  swift_storeEnumTagMultiPayload();
  v62 = &v24[v22[8]];
  v24[v22[9]] = 2;
  v63 = v22[10];
  v64 = [objc_opt_self() systemGray4Color];
  *&v24[v63] = sub_252692240();
  *v62 = v59;
  v62[8] = 0;
  if (v54 > v43)
  {
    v67 = v158;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v65 = a2 + *(v38 + 36);
    v66 = v65 + *(type metadata accessor for AccessoryControl.BinaryViewConfig(0) + 24);
    v67 = v158;
    sub_252542654(v66, v158, type metadata accessor for ControlTextModifier.Config);
  }

  v158 = v44;
  v152 = ~v44;
  v68 = v151;
  sub_252541B60(v67, v151, type metadata accessor for ControlTextModifier.Config);
  type metadata accessor for AnimationModel();
  sub_252541D30(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  v69 = sub_252690DF0();
  v71 = v70;
  LOBYTE(v206[0]) = 1;
  sub_2526924D0();
  v72 = v201;
  v73 = *(&v201 + 1);
  v74 = v68;
  v75 = v153;
  sub_252541B60(v74, v153, type metadata accessor for ControlTextModifier);
  v76 = v75 + *(v150 + 36);
  *v76 = v69;
  *(v76 + 8) = v71;
  *(v76 + 16) = v59;
  *(v76 + 24) = v72;
  *(v76 + 32) = v73;
  sub_252541B60(v24, v28, type metadata accessor for ControlBackgroundView);
  sub_2523714D4(v75, &v28[*(v149 + 36)], &qword_27F4E1AC8);
  sub_2523714D4(v28, v187, &qword_27F4E1AD0);
  v77 = *a2;
  v78 = a2;
  if (*(a2 + 8) == 1)
  {
    if ((v77 & 1) == 0)
    {
LABEL_14:
      sub_252692330();
      v79 = sub_252692350();

      v80 = *(v38 + 36);
      goto LABEL_17;
    }
  }

  else
  {

    sub_252692F00();
    v81 = sub_2526919C0();
    sub_252690570();

    v82 = v146;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v77, 0);
    (*(v147 + 8))(v82, v148);
    if (v201 != 1)
    {
      goto LABEL_14;
    }
  }

  v80 = *(v38 + 36);
  v79 = *(a2 + v80 + *(type metadata accessor for AccessoryControl.BinaryViewConfig(0) + 20));

LABEL_17:
  v151 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1B08) + 44);
  v83 = *(a2 + 16);
  v84 = *(a2 + 56);
  v85 = a2 + v80;
  v86 = type metadata accessor for KnobView(0);
  v87 = v155;
  v88 = &v155[v86[6]];
  v153 = v85;
  sub_25237153C(v85, v88, &qword_27F4DAD88);
  *v87 = v83;
  *(v87 + 8) = v84;
  *(v87 + v86[7]) = v54 <= v43;
  *(v87 + v86[8]) = v79;
  *(v87 + v86[9]) = v59;
  v89 = v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1B10) + 36);
  *v89 = 0;
  *(v89 + 8) = v54;

  sub_2526909F0();
  sub_252692920();
  sub_2526909C0();
  v90 = (v87 + *(v159 + 36));
  v91 = v206[1];
  *v90 = v206[0];
  v90[1] = v91;
  v90[2] = v206[2];
  sub_252541BE8();
  v92 = v161;
  sub_252691E60();
  v93 = swift_getKeyPath();
  v94 = v92 + *(v163 + 36);
  *v94 = v93;
  *(v94 + 8) = 1;
  v166 = v78;
  sub_25237153C(v92, v165, &qword_27F4E1AB0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1B30);
  sub_252541D78();
  sub_252541E04();
  v95 = v164;
  sub_252691470();
  sub_252372288(v92, &qword_27F4E1AB0);
  sub_252372288(v87, &qword_27F4E1AB8);
  v96 = v187;
  v97 = v157;
  sub_25237153C(v187, v157, &qword_27F4E1AD0);
  v98 = v167;
  sub_25237153C(v95, v167, &qword_27F4E1AC0);
  v99 = v151;
  sub_25237153C(v97, v151, &qword_27F4E1AD0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1B48);
  sub_25237153C(v98, v99 + *(v100 + 48), &qword_27F4E1AC0);

  sub_252372288(v95, &qword_27F4E1AC0);
  sub_252372288(v96, &qword_27F4E1AD0);
  sub_252372288(v98, &qword_27F4E1AC0);
  sub_252372288(v97, &qword_27F4E1AD0);
  v101 = v188 + *(v156 + 36);
  v187 = type metadata accessor for ValueThrottleModifier(0);
  v102 = &v101[*(v187 + 20)];
  v103 = type metadata accessor for ValueThrottleModifier.Config(0);
  v104 = v103[6];
  *&v102[v104] = v49;
  v105 = *MEMORY[0x277D15BB8];
  v106 = sub_25268ED70();
  (*(*(v106 - 8) + 104))(&v102[v104], v105, v106);
  *&v201 = v193;
  *(&v201 + 1) = v192;
  LOBYTE(v202) = v191;
  MEMORY[0x2530A4210](&v195, v190);
  LOBYTE(v104) = v195 != 2;
  v107 = v103[7];
  v108 = *MEMORY[0x277D15CE0];
  v109 = sub_25268EEA0();
  (*(*(v109 - 8) + 104))(&v102[v107], v108, v109);
  *v102 = 0;
  *(v102 + 1) = v42;
  v102[v103[8]] = v104;
  v110 = v166;
  v111 = v160;
  sub_252542654(v166, v160, type metadata accessor for SwitchControlView);
  v112 = (v158 + 16) & v152;
  v113 = (v112 + v154 + 7) & 0xFFFFFFFFFFFFFFF8;
  v114 = swift_allocObject();
  sub_252541B60(v111, v114 + v112, type metadata accessor for SwitchControlView);
  v115 = (v114 + v113);
  v116 = v189;
  *v115 = sub_252541AEC;
  v115[1] = v116;
  v195 = 0;
  LOBYTE(v196) = 1;
  v197 = 0;
  v198 = 1;
  v199 = 0;
  v200 = 513;

  sub_2526924D0();
  v117 = v202;
  *v101 = v201;
  *(v101 + 1) = v117;
  *(v101 + 2) = v203;
  *(v101 + 6) = v204;
  v118 = &v101[*(v187 + 24)];
  *v118 = sub_252541EF8;
  v118[1] = v114;
  sub_252542654(v110, v111, type metadata accessor for SwitchControlView);
  v119 = swift_allocObject();
  sub_252541B60(v111, v119 + v112, type metadata accessor for SwitchControlView);
  v120 = swift_allocObject();
  *(v120 + 16) = sub_252542300;
  *(v120 + 24) = v119;
  v121 = swift_getKeyPath();
  v122 = v188;
  v123 = v176;
  sub_25237153C(v188, v176, &qword_27F4E1AD8);
  v124 = v123 + *(v178 + 36);
  *v124 = 1;
  *(v124 + 8) = sub_25249A7D8;
  *(v124 + 16) = v120;
  *(v124 + 24) = v121;
  *(v124 + 32) = 0;
  sub_25237153C(v123, v179, &qword_27F4E1AA0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1B50);
  sub_252542360();
  sub_2525424D4();
  v125 = v168;
  sub_252691470();
  sub_252372288(v123, &qword_27F4E1AA0);
  sub_252372288(v122, &qword_27F4E1AD8);
  v126 = v180;
  sub_2526917C0();
  v127 = sub_2525425C8();
  v128 = v170;
  v129 = v169;
  sub_252692020();
  (*(v181 + 8))(v126, v182);
  sub_252372288(v125, &qword_27F4E1AE0);
  v195 = v193;
  v196 = v192;
  LOBYTE(v197) = v191;
  MEMORY[0x2530A4210](v194, v190);
  if (LOBYTE(v194[0]) == 2)
  {
    v130 = v153;
  }

  else
  {
    v130 = v153;
    if ((v194[0] & 1) == 0)
    {
      v130 = (v130 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28));
    }
  }

  v131 = *v130;
  v132 = v130[1];

  v133 = sub_252685F88(v131, v132);
  v135 = v134;

  v195 = v133;
  v196 = v135;
  v194[0] = v129;
  v194[1] = v127;
  swift_getOpaqueTypeConformance2();
  sub_252404480();
  v136 = v173;
  v137 = v172;
  sub_252691FB0();

  (*(v171 + 8))(v128, v137);
  v195 = v193;
  v196 = v192;
  LOBYTE(v197) = v191;
  MEMORY[0x2530A4210](v194, v190);
  v195 = sub_252692C40();
  v196 = v138;
  v139 = v174;
  sub_252690BE0();

  sub_252372288(v136, &qword_27F4E1AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD308);
  v140 = v185;
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_252694EA0;
  sub_2526912B0();
  sub_2526912A0();
  v195 = v141;
  sub_252541D30(&qword_27F4DD310, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD318);
  sub_252400FC8(&qword_27F4DD320, &qword_27F4DD318);
  v142 = v183;
  v143 = v186;
  sub_252693190();
  sub_252690C00();

  (*(v140 + 8))(v142, v143);
  return sub_252372288(v139, &qword_27F4E1AF0);
}

void *sub_252540710(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1AF8);
  result = MEMORY[0x2530A4210](&v10);
  if (v10 != 2)
  {
    v11 = v5;
    v12 = v6;
    v13 = v7;
    result = MEMORY[0x2530A4210](&v10, v8);
    if (v10 == 2 || (((a2 <= a3) ^ v10) & 1) != 0)
    {
      v11 = v5;
      v12 = v6;
      v13 = v7;
      v10 = a2 <= a3;
      return sub_2526926B0();
    }
  }

  return result;
}

void sub_2525407EC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, double))
{
  v6 = sub_2526910F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *a2;
  if (*(a2 + 8) == 1)
  {
    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    HIDWORD(v23) = v11;

    sub_252692F00();
    v13 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v12, 0);
    (*(v7 + 8))(v9, v6);
    v11 = HIDWORD(v23);
    if (v26 != 1)
    {
      return;
    }
  }

  if (v11)
  {
    if (v11 != 1)
    {
      v14 = (a2 + *(type metadata accessor for SwitchControlView(0) + 40));
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = v14[2];
      v26 = v15;
      v27 = v16;
      v28 = v17;
      v24 = 0.0;
      v25 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1888);
      sub_2526924F0();
    }
  }

  else
  {
    v18 = (a2 + *(type metadata accessor for SwitchControlView(0) + 40));
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = v18[2];
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v24 = v10;
    v25 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1888);
    v22 = sub_2526924F0();
    a3(v22, v10);
  }
}

uint64_t sub_252540A50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v13[0] = *(a1 + 24);
  v13[1] = v1;
  v14 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1AF8);
  MEMORY[0x2530A4210](&v15, v3);
  v4 = v15;
  if (v15 != 2)
  {
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v5 = sub_2526905A0();
    __swift_project_value_buffer(v5, qword_27F4E4B18);
    v6 = sub_252690580();
    v7 = sub_252692F10();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = (v4 & 1) == 0;
      _os_log_impl(&dword_252309000, v6, v7, "SwitchView setting %{BOOL}d", v8, 8u);
      MEMORY[0x2530A5A40](v8, -1, -1);
    }
  }

  v10 = sub_25253EAB4(v13);
  v11 = *v9;
  if (v11 != 2)
  {
    *v9 = (v11 & 1) == 0;
  }

  return (v10)(v13, 0);
}

uint64_t sub_252540BD0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1BB8);
  MEMORY[0x28223BE20](v3);
  v5 = &v22[-v4];
  sub_2526909F0();
  v7 = v6 * 0.05;
  v8 = type metadata accessor for KnobView(0);
  v9 = *(a2 + *(v8 + 36)) - v7;
  *v5 = sub_252692920();
  v5[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1BC0);
  sub_252540DBC(a2, v5 + *(v11 + 44), v9);
  if (qword_27F4DAB28 != -1)
  {
    swift_once();
  }

  v12 = qword_27F4FB4C8;
  v13 = *(a2 + *(v8 + 28));
  v14 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1BC8) + 36);
  *v14 = v12;
  v14[8] = v13;

  v15 = sub_252691A20();
  sub_252690760();
  v16 = v5 + *(v3 + 36);
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v22[15] = v13;
  sub_25254296C();
  sub_2526921E0();
  return sub_252372288(v5, &qword_27F4E1BB8);
}

uint64_t sub_252540DBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v125 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD48);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v92 - v6;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1BF0);
  MEMORY[0x28223BE20](v129);
  v122 = (&v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v92 - v10);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1BF8);
  MEMORY[0x28223BE20](v127);
  v124 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v123 = &v92 - v14;
  MEMORY[0x28223BE20](v15);
  v118 = &v92 - v16;
  MEMORY[0x28223BE20](v17);
  v121 = &v92 - v18;
  MEMORY[0x28223BE20](v19);
  v115 = &v92 - v20;
  MEMORY[0x28223BE20](v21);
  v128 = &v92 - v22;
  v23 = type metadata accessor for IconDescriptor();
  MEMORY[0x28223BE20](v23);
  v119 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v92 - v26;
  v28 = type metadata accessor for KnobView(0);
  v112 = a1 + v28[6];
  sub_252542654(v112, v27, type metadata accessor for IconDescriptor);
  v126 = *(a1 + 8);
  v104 = *(a1 + v28[7]);
  v99 = sub_252692330();
  v117 = *(a1 + v28[8]);
  v114 = sub_252690D30();
  v29 = *(v114 + 20);
  v30 = *MEMORY[0x277CE0118];
  v31 = sub_252691260();
  v32 = *(v31 - 8);
  v33 = *(v32 + 104);
  v113 = v30;
  v110 = v33;
  v111 = v31;
  v109 = v32 + 104;
  (v33)(v11 + v29, v30);
  *v11 = a3;
  v11[1] = a3;
  v98 = v11;
  v34 = sub_252692920();
  v96 = v35;
  v97 = v34;

  sub_2526923D0();
  v116 = v23;
  v120 = v27;
  sub_25268F8F0();
  v36 = sub_252691340();
  v37 = *(v36 - 8);
  v107 = *(v37 + 56);
  v108 = v36;
  v106 = v37 + 56;
  v107(v7, 0, 1);
  v38 = sub_252692400();

  v105 = v7;
  sub_252372288(v7, &qword_27F4DBD48);
  if (qword_27F4DAB20 != -1)
  {
    swift_once();
  }

  v39 = qword_27F4FB4C0;
  KeyPath = swift_getKeyPath();
  v93 = KeyPath;
  v41 = *a1;
  v102 = type metadata accessor for AnimationModel();
  v101 = sub_252541D30(&qword_27F4DBCC0, type metadata accessor for AnimationModel);

  v42 = sub_252690DF0();
  v44 = v43;
  v94 = swift_getKeyPath();
  v95 = v39;
  *&v146 = v38;
  *(&v146 + 1) = KeyPath;
  *&v147 = v39;
  *(&v147 + 1) = v42;
  *&v148 = v44;
  *(&v148 + 1) = v41;
  v100 = v41;
  v45 = v126;
  LOBYTE(v149) = v126;
  *(&v149 + 1) = *v145;
  DWORD1(v149) = *&v145[3];
  *(&v149 + 1) = v94;
  v46 = v99;
  *&v150 = v99;
  v92 = v38;
  v48 = v96;
  v47 = v97;
  *(&v150 + 1) = v97;
  v151 = v96;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1C00);
  v49 = v98;
  v50 = v98 + *(v103 + 36);
  v51 = v149;
  *(v50 + 2) = v148;
  *(v50 + 3) = v51;
  *(v50 + 4) = v150;
  *(v50 + 10) = v151;
  v52 = v147;
  *v50 = v146;
  *(v50 + 1) = v52;
  v152[0] = v92;
  v152[1] = v93;
  v152[2] = v39;
  v152[3] = v42;
  v152[4] = v44;
  v152[5] = v41;
  v153 = v45;
  *&v154[3] = *&v145[3];
  *v154 = *v145;
  v155 = v94;
  v156 = v46;
  v157 = v47;
  v158 = v48;
  sub_25237153C(&v146, v138, &qword_27F4E1C08);
  sub_252372288(v152, &qword_27F4E1C08);
  v53 = swift_getKeyPath();
  v54 = (v49 + *(v129 + 36));
  v55 = v117;
  *v54 = v53;
  v54[1] = v55;
  v56 = v115;
  sub_2523714D4(v49, v115, &qword_27F4E1BF0);
  v57 = v104 == 0;
  if (v104)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.0;
  }

  v59 = v128;
  *(v56 + *(v127 + 36)) = v58;
  if (v57)
  {
    v60 = 1.0;
  }

  else
  {
    v60 = 0.0;
  }

  sub_2523714D4(v56, v59, &qword_27F4E1BF8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v62 = v119;
  sub_252542654(v112 + *(v61 + 28), v119, type metadata accessor for IconDescriptor);

  sub_2526922F0();
  v115 = sub_252692350();

  v63 = v122;
  v110(v122 + *(v114 + 20), v113, v111);
  *v63 = a3;
  v63[1] = a3;
  v114 = sub_252692920();
  v65 = v64;

  sub_2526923D0();
  v66 = v105;
  sub_25268F8F0();
  (v107)(v66, 0, 1, v108);
  v67 = sub_252692400();

  sub_252372288(v66, &qword_27F4DBD48);
  v68 = swift_getKeyPath();
  v69 = v95;

  v70 = sub_252690DF0();
  v72 = v71;
  v73 = swift_getKeyPath();
  v74 = *v131;
  *(&v135 + 1) = *v131;
  DWORD1(v135) = *&v131[3];
  *&v132 = v67;
  *(&v132 + 1) = v68;
  *&v133 = v69;
  *(&v133 + 1) = v70;
  v75 = v100;
  *&v134 = v72;
  *(&v134 + 1) = v100;
  v76 = v126;
  LOBYTE(v135) = v126;
  *(&v135 + 1) = v73;
  *&v136 = v55;
  v77 = v114;
  *(&v136 + 1) = v114;
  v137 = v65;
  v78 = v63 + *(v103 + 36);
  v79 = v133;
  *v78 = v132;
  *(v78 + 1) = v79;
  *(v78 + 10) = v65;
  v80 = v136;
  *(v78 + 3) = v135;
  *(v78 + 4) = v80;
  *(v78 + 2) = v134;
  v138[0] = v67;
  v138[1] = v68;
  v138[2] = v69;
  v138[3] = v70;
  v138[4] = v72;
  v138[5] = v75;
  v139 = v76;
  *&v140[3] = *&v131[3];
  *v140 = v74;
  v141 = v73;
  v142 = v55;
  v143 = v77;
  v144 = v65;

  sub_25237153C(&v132, &v130, &qword_27F4E1C08);
  sub_252372288(v138, &qword_27F4E1C08);
  v81 = swift_getKeyPath();
  v82 = (v63 + *(v129 + 36));
  v83 = v115;
  *v82 = v81;
  v82[1] = v83;
  v84 = v118;
  sub_2523714D4(v63, v118, &qword_27F4E1BF0);
  *(v84 + *(v127 + 36)) = v60;
  v85 = v121;
  sub_2523714D4(v84, v121, &qword_27F4E1BF8);
  v86 = v128;
  v87 = v123;
  sub_25237153C(v128, v123, &qword_27F4E1BF8);
  v88 = v124;
  sub_25237153C(v85, v124, &qword_27F4E1BF8);
  v89 = v125;
  sub_25237153C(v87, v125, &qword_27F4E1BF8);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1C10);
  sub_25237153C(v88, v89 + *(v90 + 48), &qword_27F4E1BF8);
  sub_252372288(v85, &qword_27F4E1BF8);
  sub_252542ADC(v62);
  sub_252372288(v86, &qword_27F4E1BF8);
  sub_252542ADC(v120);
  sub_252372288(v88, &qword_27F4E1BF8);
  return sub_252372288(v87, &qword_27F4E1BF8);
}

id sub_2525417AC()
{
  if (qword_27F4DAB18 != -1)
  {
    swift_once();
  }

  v0 = qword_27F4FB4B8;
  [qword_27F4FB4B8 impactOccurred];

  return [v0 prepare];
}

uint64_t sub_25254182C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_252542654(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for KnobView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_252541B60(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for KnobView);
  *a2 = sub_2525428A8;
  a2[1] = v7;
  return result;
}

id sub_252541940()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755F0]) init];
  result = [v0 prepare];
  qword_27F4FB4B8 = v0;
  return result;
}

uint64_t sub_25254198C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_252691B20();
  v3 = sub_252691B00();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_252691B50();
  result = sub_252372288(v2, &qword_27F4DBD40);
  qword_27F4FB4C0 = v4;
  return result;
}

uint64_t sub_252541A84()
{
  result = sub_252692950();
  qword_27F4FB4C8 = result;
  return result;
}

void *sub_252541AEC(double a1)
{
  v3 = *(type metadata accessor for SwitchControlView(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_252540710(v5, a1, v4);
}

uint64_t sub_252541B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_252541BE8()
{
  result = qword_27F4E1B18;
  if (!qword_27F4E1B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1AB8);
    sub_252541C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1B18);
  }

  return result;
}

unint64_t sub_252541C74()
{
  result = qword_27F4E1B20;
  if (!qword_27F4E1B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1B10);
    sub_252541D30(&qword_27F4E1B28, type metadata accessor for KnobView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1B20);
  }

  return result;
}

uint64_t sub_252541D30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252541D78()
{
  result = qword_27F4E1B38;
  if (!qword_27F4E1B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1B30);
    sub_252541BE8();
    sub_25249A86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1B38);
  }

  return result;
}

unint64_t sub_252541E04()
{
  result = qword_27F4E1B40;
  if (!qword_27F4E1B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1AB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1AB8);
    sub_252541BE8();
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1B40);
  }

  return result;
}

void sub_252541EF8(uint64_t a1)
{
  v3 = *(type metadata accessor for SwitchControlView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2525407EC(a1, v1 + v4, v5);
}

uint64_t objectdestroyTm_21()
{
  v1 = type metadata accessor for SwitchControlView(0);
  v2 = *(*(v1 - 8) + 80);
  v25 = *(*(v1 - 8) + 64);
  v26 = v0;
  v3 = (v2 + 16) & ~v2;
  sub_25235E264(*(v0 + v3), *(v0 + v3 + 8));

  v4 = v0 + v3 + *(v1 + 36);

  v5 = type metadata accessor for IconDescriptor();
  v6 = *(v5 + 20);
  v7 = sub_25268F910();
  v8 = *(*(v7 - 8) + 8);
  v8(v4 + v6, v7);
  v9 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

  v8(v9 + *(v5 + 20), v7);
  v10 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

  v11 = v4 + v10[6];
  type metadata accessor for ControlTextModifier.Config(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
    v14 = sub_25268D990();
    (*(*(v14 - 8) + 8))(v11 + v13, v14);
  }

  v15 = v4 + v10[7];
  v16 = *(v15 + 32);
  if (v16 != 255)
  {
    sub_252376DBC(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), v16);
  }

  v17 = v4 + v10[8];
  v18 = *(v17 + 32);
  if (v18 != 255)
  {
    sub_252376DBC(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), v18);
  }

  v19 = v4 + v10[11];
  type metadata accessor for AccessoryControl.StatusProvider();
  v20 = swift_getEnumCaseMultiPayload();
  if (v20 <= 3)
  {
    if (v20 == 1 || v20 == 3)
    {
      goto LABEL_16;
    }
  }

  else if (v20 == 4)
  {
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v22 = sub_25268D990();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v19 + v21, 1, v22))
    {
      (*(v23 + 8))(v19 + v21, v22);
    }
  }

  else if (v20 == 5 || v20 == 7)
  {
LABEL_16:
  }

  return MEMORY[0x2821FE8E8](v26, v3 + v25, v2 | 7);
}

uint64_t sub_252542300()
{
  v1 = *(type metadata accessor for SwitchControlView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_252540A50(v2);
}

unint64_t sub_252542360()
{
  result = qword_27F4E1B58;
  if (!qword_27F4E1B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1AA0);
    sub_2525423EC();
    sub_25249A86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1B58);
  }

  return result;
}

unint64_t sub_2525423EC()
{
  result = qword_27F4E1B60;
  if (!qword_27F4E1B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1AD8);
    sub_252400FC8(&qword_27F4E1B68, &qword_27F4E1B70);
    sub_252541D30(&qword_27F4E18D0, type metadata accessor for ValueThrottleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1B60);
  }

  return result;
}

unint64_t sub_2525424D4()
{
  result = qword_27F4E1B78;
  if (!qword_27F4E1B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1B50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1AD8);
    sub_2525423EC();
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1B78);
  }

  return result;
}

unint64_t sub_2525425C8()
{
  result = qword_27F4E1B80;
  if (!qword_27F4E1B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1AE0);
    sub_252542360();
    sub_2525424D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1B80);
  }

  return result;
}

uint64_t sub_252542654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2525426E4()
{
  sub_25254277C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25254277C()
{
  if (!qword_27F4DCE88)
  {
    type metadata accessor for IconDescriptor();
    v0 = type metadata accessor for StateDependentValue();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DCE88);
    }
  }
}

unint64_t sub_2525427D4()
{
  result = qword_27F4E1B98;
  if (!qword_27F4E1B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1BA0);
    sub_252400FC8(&qword_27F4E1BA8, &qword_27F4E1BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1B98);
  }

  return result;
}

uint64_t sub_2525428D4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_25254296C()
{
  result = qword_27F4E1BD0;
  if (!qword_27F4E1BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1BB8);
    sub_2525429F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1BD0);
  }

  return result;
}

unint64_t sub_2525429F8()
{
  result = qword_27F4E1BD8;
  if (!qword_27F4E1BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1BC8);
    sub_252400FC8(&qword_27F4E1BE0, &qword_27F4E1BE8);
    sub_252400FC8(&qword_27F4E19A0, &qword_27F4E19A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1BD8);
  }

  return result;
}

uint64_t sub_252542ADC(uint64_t a1)
{
  v2 = type metadata accessor for IconDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for VerticalPickerControlView()
{
  result = qword_27F4E1C28;
  if (!qword_27F4E1C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252542BAC()
{
  sub_25251B6E8(319, &qword_27F4E16D0, &qword_27F4DB3C8, &unk_252695A60, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AccessoryControl.PickerViewConfig(319);
    if (v1 <= 0x3F)
    {
      sub_252483C9C();
      if (v2 <= 0x3F)
      {
        sub_25251B6E8(319, &qword_27F4E1830, &qword_27F4DBBE8, &unk_2526994A0, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_25251B6E8(319, &qword_27F4E0F20, &qword_27F4E0F00, &unk_2526A4680, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void (*sub_252542D20(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  *(v4 + 96) = *v1;
  *(v4 + 104) = v6;
  v7 = v1[2];
  *(v4 + 112) = v7;
  v8 = *(v1 + 24);
  *(v4 + 25) = v8;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;

  *(v4 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1758);
  MEMORY[0x2530A4210]();
  return sub_252532CD4;
}

uint64_t sub_252542DE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252542E8C();
  if ((v4 & 1) == 0)
  {
    v5 = result;
    result = type metadata accessor for VerticalPickerControlView();
    v6 = *(v1 + *(result + 20));
    v7 = (v6 + 32);
    v8 = *(v6 + 16) + 1;
    while (--v8)
    {
      v9 = v7 + 4;
      v10 = *v7;
      v7 += 4;
      if (v10 == v5)
      {
        v11 = *(v9 - 3);
        v12 = *(v9 - 2);
        v13 = *(v9 - 1);
        *a1 = v5;
        a1[1] = v11;
        a1[2] = v12;
        a1[3] = v13;
      }
    }
  }

  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

uint64_t sub_252542E8C()
{
  type metadata accessor for VerticalPickerControlView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0A18);
  sub_2526924E0();
  if (v3 == 1 && (v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1758), MEMORY[0x2530A4210](&v2, v0), (v3 & 1) != 0))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252542F5C(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for VerticalPickerControlView() + 20));
  v4 = *(v3 + 16);
  result = 0;
  if (v4)
  {
    v6 = (v3 + 32);
    while (1)
    {
      v7 = *v6;
      v6 += 4;
      if (v7 == a1)
      {
        break;
      }

      if (v4 == ++result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_252542FC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2526910F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for VerticalPickerControlView();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_252545BDC(v2, &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = sub_252546460(&v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for VerticalPickerControlView);
  v15 = v2 + *(v9 + 36);
  v16 = *v15;
  if (*(v15 + 8) != 1)
  {

    sub_252692F00();
    v17 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v16, 0);
    result = (*(v5 + 8))(v7, v4);
    LOBYTE(v16) = v19[15];
  }

  v18 = 0.5;
  if (v16)
  {
    v18 = 1.0;
  }

  *a1 = sub_252545C40;
  *(a1 + 8) = v13;
  *(a1 + 16) = v18;
  return result;
}

uint64_t sub_252543218@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v70 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1C38);
  MEMORY[0x28223BE20](v69);
  v68 = &v59 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1C40);
  MEMORY[0x28223BE20](v67);
  v66 = &v59 - v4;
  v5 = type metadata accessor for VerticalPickerControlView();
  v6 = v5 - 8;
  v65 = *(v5 - 8);
  v64 = *(v65 + 64);
  MEMORY[0x28223BE20](v5);
  v72 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_25268ED70();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v71 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ValueThrottleModifier.Config(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for ValueThrottleModifier(0) - 8;
  MEMORY[0x28223BE20](v63);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1C48);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = (&v59 - v17);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1C50) - 8;
  MEMORY[0x28223BE20](v62);
  v61 = &v59 - v19;
  sub_2526909F0();
  v20 = *(a1 + *(v6 + 28));
  v22 = v21 / *(v20 + 16);
  v23 = COERCE_DOUBLE(sub_2525439AC(v22));
  v25 = v24;
  *v18 = sub_252692900();
  v18[1] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1C58);
  if (v25)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v23;
  }

  sub_252543AB0(a1, *&v23, v25 & 1, v18 + *(v27 + 44));
  v29 = sub_252692980();
  v30 = sub_252542E8C();
  v31 = v18 + *(v16 + 44);
  *v31 = v29;
  *(v31 + 1) = v30;
  v31[16] = v32 & 1;
  v33 = *(v20 + 16) - 1;
  *v71 = v28;
  v34 = v59;
  v35 = v60;
  (*(v59 + 104))();
  v36 = *(a1 + 16);
  v37 = *(a1 + 24);
  v79 = *a1;
  *&v80 = v36;
  BYTE8(v80) = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1758);
  MEMORY[0x2530A4210](&v73, v38);
  v39 = v74 | v25;
  v40 = v22 * v33;
  v41 = v10[9];
  v42 = *MEMORY[0x277D15CE0];
  v43 = sub_25268EEA0();
  (*(*(v43 - 8) + 104))(v12 + v41, v42, v43);
  *v12 = 0.0;
  v12[1] = v40;
  (*(v34 + 32))(v12 + v10[8], v71, v35);
  *(v12 + v10[10]) = (v39 & 1) == 0;
  v44 = v72;
  sub_252545BDC(a1, v72);
  v45 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v46 = (v64 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  sub_252546460(v44, v47 + v45, type metadata accessor for VerticalPickerControlView);
  *(v47 + v46) = v22;
  v73 = 0;
  v74 = 1;
  v75 = 0;
  v76 = 1;
  v77 = 0;
  v78 = 513;
  sub_2526924D0();
  v48 = v81;
  *(v14 + 1) = v80;
  *(v14 + 2) = v48;
  *(v14 + 6) = v82;
  *v14 = v79;
  v49 = v63;
  sub_252546460(v12, &v14[*(v63 + 28)], type metadata accessor for ValueThrottleModifier.Config);
  v50 = &v14[*(v49 + 32)];
  *v50 = sub_252545CC0;
  v50[1] = v47;
  v51 = v61;
  sub_2523714D4(v18, v61, &qword_27F4E1C48);
  sub_252546460(v14, v51 + *(v62 + 44), type metadata accessor for ValueThrottleModifier);
  v52 = v72;
  sub_252545BDC(a1, v72);
  v53 = swift_allocObject();
  sub_252546460(v52, v53 + v45, type metadata accessor for VerticalPickerControlView);
  *(v53 + v46) = v22;
  KeyPath = swift_getKeyPath();
  v55 = v66;
  sub_25237153C(v51, v66, &qword_27F4E1C50);
  v56 = v68;
  v57 = v55 + *(v67 + 36);
  *v57 = 1;
  *(v57 + 8) = sub_25254607C;
  *(v57 + 16) = v53;
  *(v57 + 24) = KeyPath;
  *(v57 + 32) = 0;
  sub_25237153C(v55, v56, &qword_27F4E1C40);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1C60);
  sub_252546120();
  sub_25254634C();
  sub_252691470();
  sub_252372288(v55, &qword_27F4E1C40);
  return sub_252372288(v51, &qword_27F4E1C50);
}

uint64_t sub_2525439AC(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1758);
  MEMORY[0x2530A4210](&v8, v2);
  if (v9)
  {
    return 0;
  }

  v3 = sub_252542F5C(*&v8);
  if (v4)
  {
    return 0;
  }

  v6 = v3;
  type metadata accessor for VerticalPickerControlView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1888);
  sub_2526924E0();
  v7 = v8;
  if (v9)
  {
    v7 = v6 * a1;
  }

  return *&v7;
}

uint64_t sub_252543AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v114) = a3;
  v117 = a2;
  v95 = a1;
  v111 = a4;
  v4 = type metadata accessor for VerticalPickerControlView();
  v102 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v103 = v5;
  v104 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1CA8);
  MEMORY[0x28223BE20](v6 - 8);
  v101 = (&v94 - v7);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1CB0);
  MEMORY[0x28223BE20](v105);
  v108 = &v94 - v8;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1CB8);
  MEMORY[0x28223BE20](v107);
  v110 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v106 = &v94 - v11;
  MEMORY[0x28223BE20](v12);
  v109 = &v94 - v13;
  v14 = sub_2526910F0();
  v112 = *(v14 - 8);
  v113 = v14;
  MEMORY[0x28223BE20](v14);
  v100 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ControlBackgroundView();
  v17 = (v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1CC0);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v94 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1CC8);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  v116 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v94 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v94 - v31;
  KeyPath = swift_getKeyPath();
  v144 = 0;
  *v19 = KeyPath;
  v19[65] = 0;
  v34 = v17[7];
  *&v19[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  swift_storeEnumTagMultiPayload();
  v35 = &v19[v17[8]];
  v19[v17[9]] = 2;
  v36 = v17[10];
  v37 = [objc_opt_self() systemGray4Color];
  *&v19[v36] = sub_252692240();
  v38 = v4;
  *v35 = 0;
  v35[8] = 1;
  sub_252692920();
  sub_252690D70();
  sub_252546460(v19, v23, type metadata accessor for ControlBackgroundView);
  v39 = *(v21 + 44);
  v40 = v95;
  v41 = &v23[v39];
  v42 = v129;
  *(v41 + 4) = v128;
  *(v41 + 5) = v42;
  *(v41 + 6) = v130;
  v43 = v125;
  *v41 = v124;
  *(v41 + 1) = v43;
  v44 = v127;
  *(v41 + 2) = v126;
  *(v41 + 3) = v44;
  v45 = *(v40 + *(v4 + 24));
  v46 = &v29[*(v25 + 44)];
  v47 = *(sub_252690D30() + 20);
  v48 = *MEMORY[0x277CE0118];
  v49 = sub_252691260();
  (*(*(v49 - 8) + 104))(&v46[v47], v48, v49);
  *v46 = v45;
  *(v46 + 1) = v45;
  sub_2523714D4(v23, v29, &qword_27F4E1CC0);
  v115 = v32;
  sub_2523714D4(v29, v32, &qword_27F4E1CC8);
  if ((v114 & 1) == 0)
  {
    sub_252542DE0(&v137);
    v50 = v138;
    if (v138)
    {
      v51 = *(&v137 + 1);
      v114 = v137;
      v52 = *(&v138 + 1);
      v53 = v40 + *(v4 + 28);
      v54 = *v53;
      if (*(v53 + 8) == 1)
      {
        if ((v54 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {

        sub_252692F00();
        v55 = sub_2526919C0();
        sub_252690570();

        v56 = v100;
        sub_2526910E0();
        swift_getAtKeyPath();
        sub_25235E264(v54, 0);
        (*(v112 + 8))(v56, v113);
        if (v137 != 1)
        {
          goto LABEL_10;
        }
      }

      if (v52)
      {

        v57 = v52;
LABEL_11:
        v38 = v4;
        v112 = v57;
        sub_252692920();
        sub_2526909C0();
        sub_25239F874(v114, v51, v50);
        v99 = v132;
        v100 = v131;
        v97 = v134;
        v98 = v133;
        v96 = v45;
        v113 = v136;
        v114 = v135;
        goto LABEL_12;
      }

LABEL_10:
      sub_2526922F0();
      v57 = sub_252692350();

      goto LABEL_11;
    }
  }

  v112 = 0;
  v113 = 0;
  v96 = 0;
  v97 = 0;
  v117 = 0;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  v114 = 0;
LABEL_12:
  v58 = sub_2526912E0();
  v59 = v101;
  *v101 = v58;
  *(v59 + 8) = 0;
  *(v59 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1CD0);
  *&v137 = *(v40 + *(v38 + 20));
  v60 = v104;
  sub_252545BDC(v40, v104);
  v61 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v62 = swift_allocObject();
  sub_252546460(v60, v62 + v61, type metadata accessor for VerticalPickerControlView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1CD8);
  sub_252400FC8(&qword_27F4E1420, &qword_27F4E1410);
  sub_252400FC8(&qword_27F4E1CE0, &qword_27F4E1CD8);
  sub_252530998();
  sub_2526927B0();
  sub_252692920();
  sub_252690D70();
  v63 = v108;
  sub_2523714D4(v59, v108, &qword_27F4E1CA8);
  v64 = (v63 + *(v105 + 36));
  v65 = v142;
  v64[4] = v141;
  v64[5] = v65;
  v64[6] = v143;
  v66 = v138;
  *v64 = v137;
  v64[1] = v66;
  v67 = v140;
  v64[2] = v139;
  v64[3] = v67;
  v68 = sub_252691A20();
  sub_252690760();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v77 = v63;
  v78 = v106;
  sub_2523714D4(v77, v106, &qword_27F4E1CB0);
  v79 = v78 + *(v107 + 36);
  *v79 = v68;
  *(v79 + 8) = v70;
  *(v79 + 16) = v72;
  *(v79 + 24) = v74;
  *(v79 + 32) = v76;
  *(v79 + 40) = 0;
  v80 = v109;
  sub_2523714D4(v78, v109, &qword_27F4E1CB8);
  v81 = v116;
  sub_25237153C(v115, v116, &qword_27F4E1CC8);
  v82 = v110;
  sub_25237153C(v80, v110, &qword_27F4E1CB8);
  v83 = v111;
  sub_25237153C(v81, v111, &qword_27F4E1CC8);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1CE8);
  v85 = (v83 + *(v84 + 48));
  v86 = v96;
  v87 = v97;
  *&v118 = v112;
  *(&v118 + 1) = v96;
  *&v119 = 0;
  *(&v119 + 1) = v117;
  v89 = v99;
  v88 = v100;
  *&v120 = v100;
  *(&v120 + 1) = v99;
  v90 = v98;
  *&v121 = v98;
  *(&v121 + 1) = v97;
  *&v122 = v114;
  *(&v122 + 1) = v113;
  v91 = v119;
  *v85 = v118;
  v85[1] = v91;
  v92 = v121;
  v85[2] = v120;
  v85[3] = v92;
  v85[4] = v122;
  sub_25237153C(v82, v83 + *(v84 + 64), &qword_27F4E1CB8);
  sub_25237153C(&v118, v123, &qword_27F4E1CF0);
  sub_252372288(v80, &qword_27F4E1CB8);
  sub_252372288(v115, &qword_27F4E1CC8);
  sub_252372288(v82, &qword_27F4E1CB8);
  v123[0] = v112;
  v123[1] = v86;
  v123[2] = 0;
  v123[3] = v117;
  v123[4] = v88;
  v123[5] = v89;
  v123[6] = v90;
  v123[7] = v87;
  v123[8] = v114;
  v123[9] = v113;
  sub_252372288(v123, &qword_27F4E1CF0);
  return sub_252372288(v116, &qword_27F4E1CC8);
}

uint64_t sub_25254461C@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1CF8);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v67 - v8;
  v9 = sub_2526912C0();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x28223BE20](v9);
  v74 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1D00);
  v70 = *(v11 - 8);
  v71 = v11;
  MEMORY[0x28223BE20](v11);
  v83 = &v67 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1D08);
  MEMORY[0x28223BE20](v69);
  v68 = &v67 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1D10);
  MEMORY[0x28223BE20](v81);
  v82 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1D18);
  MEMORY[0x28223BE20](v15 - 8);
  v73 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v72 = &v67 - v18;
  v19 = a1[1];
  v84 = *a1;
  v20 = a1[2];
  *&v102 = v19;
  *(&v102 + 1) = v20;
  sub_252404480();

  v21 = sub_252691D50();
  v80 = v22;
  v24 = v23;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4F8);
  v27 = swift_allocObject();
  v67 = xmmword_252694EA0;
  *(v27 + 16) = xmmword_252694EA0;
  v28 = sub_252691A30();
  *(v27 + 32) = v28;
  v29 = sub_252691A40();
  *(v27 + 33) = v29;
  v30 = sub_252691A60();
  sub_252691A60();
  if (sub_252691A60() != v28)
  {
    v30 = sub_252691A60();
  }

  sub_252691A60();
  if (sub_252691A60() != v29)
  {
    v30 = sub_252691A60();
  }

  v106 = v24 & 1;
  v105 = 1;
  sub_252692920();
  sub_252690D70();
  *(&v107[6] + 7) = *&v107[21];
  *(&v107[8] + 7) = *&v107[23];
  *(&v107[10] + 7) = *&v107[25];
  *(&v107[12] + 7) = v108;
  *(v107 + 7) = *&v107[15];
  *(&v107[2] + 7) = *&v107[17];
  *(&v107[4] + 7) = *&v107[19];
  *(v104 + 8) = 0u;
  *(&v104[1] + 8) = 0u;
  *(&v104[6] + 9) = *&v107[8];
  *(&v104[7] + 9) = *&v107[10];
  *(&v104[8] + 9) = *&v107[12];
  *(&v104[2] + 9) = *v107;
  *(&v104[3] + 9) = *&v107[2];
  *(&v104[4] + 9) = *&v107[4];
  *&v102 = v21;
  *(&v102 + 1) = v80;
  LOBYTE(v103) = v24 & 1;
  *(&v103 + 1) = v26;
  LOBYTE(v104[0]) = v30;
  BYTE8(v104[2]) = 1;
  *(&v104[9] + 1) = *(&v108 + 1);
  *(&v104[5] + 9) = *&v107[6];
  v31 = *(a2 + 2);
  v32 = *(a2 + 24);
  v90 = *a2;
  *&v91 = v31;
  BYTE8(v91) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1758);
  MEMORY[0x2530A4210](&v85);
  if (BYTE8(v85))
  {
    v34 = v83;
  }

  else
  {
    v34 = v83;
    if (v85 == v84)
    {
      sub_252542DE0(&v90);
      v35 = v91;
      if (v91)
      {
        v36 = *(&v91 + 1);
        v37 = *(&v90 + 1);
        v38 = v90;

        v39 = v38;
        v34 = v83;
        sub_25239F874(v39, v37, v35);
        if (v36)
        {

          sub_252691B40();
          goto LABEL_12;
        }
      }
    }
  }

  sub_252691B30();
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1D20);
  sub_25254685C();
  sub_252691DA0();
  v98 = v104[6];
  v99 = v104[7];
  v100 = v104[8];
  v101 = v104[9];
  v94 = v104[2];
  v95 = v104[3];
  v96 = v104[4];
  v97 = v104[5];
  v90 = v102;
  v91 = v103;
  v92 = v104[0];
  v93 = v104[1];
  sub_252372288(&v90, &qword_27F4E1D20);
  v40 = *(a2 + 2);
  v41 = *(a2 + 24);
  v85 = *a2;
  v86 = v40;
  LOBYTE(v87) = v41;
  MEMORY[0x2530A4210](&v88, v33);
  if (v89)
  {
    v43 = v75;
    v42 = v76;
    v44 = v81;
  }

  else
  {
    v43 = v75;
    v42 = v76;
    v44 = v81;
    if (v88 == v84)
    {
      sub_252542DE0(&v85);
      v45 = v86;
      if (v86)
      {
        v46 = v87;
        v47 = *(&v85 + 1);
        v48 = v85;

        v49 = v48;
        v34 = v83;
        sub_25239F874(v49, v47, v45);
        if (v46)
        {

          v50 = sub_2526922F0();
          goto LABEL_19;
        }
      }
    }
  }

  v50 = sub_252692330();
LABEL_19:
  v51 = v50;
  KeyPath = swift_getKeyPath();
  v53 = v68;
  (*(v70 + 32))(v68, v34, v71);
  v54 = (v53 + *(v69 + 36));
  *v54 = KeyPath;
  v54[1] = v51;
  v55 = v82;
  sub_2523714D4(v53, v82, &qword_27F4E1D08);
  *(v55 + *(v44 + 36)) = 0;
  v56 = *(a2 + 2);
  v57 = *(a2 + 24);
  v85 = *a2;
  v86 = v56;
  LOBYTE(v87) = v57;
  MEMORY[0x2530A4210](&v88, v33);
  if (v89)
  {
    v58 = v74;
LABEL_23:
    sub_2526912A0();
    goto LABEL_24;
  }

  v58 = v74;
  if (v88 != v84)
  {
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD308);
  v59 = swift_allocObject();
  *(v59 + 16) = v67;
  sub_2526912A0();
  sub_252691270();
  *&v85 = v59;
  sub_252546B18(&qword_27F4DD310, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD318);
  sub_252400FC8(&qword_27F4DD320, &qword_27F4DD318);
  v55 = v82;
  sub_252693190();
LABEL_24:
  sub_25254696C();
  v60 = v72;
  sub_252691EB0();
  (*(v43 + 8))(v58, v42);
  sub_252372288(v55, &qword_27F4E1D10);
  v61 = v77;
  sub_252544FB0(v84, v77);
  v62 = v73;
  sub_25237153C(v60, v73, &qword_27F4E1D18);
  v63 = v79;
  sub_25237153C(v61, v79, &qword_27F4E1CF8);
  v64 = v78;
  sub_25237153C(v62, v78, &qword_27F4E1D18);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1D48);
  sub_25237153C(v63, v64 + *(v65 + 48), &qword_27F4E1CF8);
  sub_252372288(v61, &qword_27F4E1CF8);
  sub_252372288(v60, &qword_27F4E1D18);
  sub_252372288(v63, &qword_27F4E1CF8);
  return sub_252372288(v62, &qword_27F4E1D18);
}

uint64_t sub_252544FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE488);
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1D50);
  MEMORY[0x28223BE20](v51);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1D58);
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v16 = sub_252542F5C(a1);
  if ((v17 & 1) != 0 || v16 >= *(*(v2 + *(type metadata accessor for VerticalPickerControlView() + 20)) + 16) - 1)
  {
    v48 = *(v52 + 56);

    return v48(a2, 1, 1, v10);
  }

  else
  {
    v49 = a1;
    v50 = a2;
    v18 = *(sub_252690D30() + 20);
    v19 = *MEMORY[0x277CE0118];
    v20 = sub_252691260();
    (*(*(v20 - 8) + 104))(&v7[v18], v19, v20);
    __asm { FMOV            V0.2D, #0.5 }

    *v7 = _Q0;
    sub_252692920();
    sub_2526909C0();
    v26 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE480) + 36)];
    v27 = v54;
    *v26 = v53;
    *(v26 + 1) = v27;
    *(v26 + 2) = v55;
    sub_252692330();
    v28 = sub_252692350();

    KeyPath = swift_getKeyPath();
    v30 = &v7[*(v5 + 36)];
    *v30 = KeyPath;
    v30[1] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252694EA0;
    v32 = sub_252691A50();
    *(inited + 32) = v32;
    v33 = sub_252691A70();
    *(inited + 33) = v33;
    v34 = sub_252691A60();
    sub_252691A60();
    if (sub_252691A60() != v32)
    {
      v34 = sub_252691A60();
    }

    sub_252691A60();
    if (sub_252691A60() != v33)
    {
      v34 = sub_252691A60();
    }

    v35 = v49;
    v36 = v50;
    sub_252690760();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_2523714D4(v7, v9, &qword_27F4DE488);
    v45 = &v9[*(v51 + 36)];
    *v45 = v34;
    *(v45 + 1) = v38;
    *(v45 + 2) = v40;
    *(v45 + 3) = v42;
    *(v45 + 4) = v44;
    v45[40] = 0;
    if (sub_25254594C(v35))
    {
      v46 = 1.0;
    }

    else
    {
      v46 = 0.0;
    }

    sub_2523714D4(v9, v12, &qword_27F4E1D50);
    *&v12[*(v10 + 36)] = v46;
    sub_2523714D4(v12, v15, &qword_27F4E1D58);
    sub_2523714D4(v15, v36, &qword_27F4E1D58);
    return (*(v52 + 56))(v36, 0, 1, v10);
  }
}

uint64_t sub_25254545C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_2526910F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  result = type metadata accessor for VerticalPickerControlView();
  v13 = result;
  v14 = a2 + *(result + 28);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  else
  {

    sub_252692F00();
    v16 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v15, 0);
    result = (*(v7 + 8))(v9, v6);
    if (v32 != 1)
    {
      return result;
    }
  }

  if (v11)
  {
    if (v11 != 1)
    {
      v17 = a2 + *(v13 + 32);
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v32 = v18;
      v33 = v19;
      v34 = v20;
      v35 = 0.0;
      v36 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1888);
      return sub_2526924F0();
    }
  }

  else
  {
    v21 = a2 + *(v13 + 32);
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v35 = v10;
    v36 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1888);
    sub_2526924F0();
    sub_252545750(&v32, v10, a3);
    v25 = v32;
    v26 = a2 + *(v13 + 36);
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 16);
    v32 = v27;
    v33 = v28;
    v34 = v29;
    v35 = *&v25;
    v36 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0A18);
    sub_2526924F0();
    v31 = sub_252542D20(&v32);
    if (*(v30 + 8) != 1)
    {
      *v30 = v25;
    }

    (v31)(&v32, 0);
  }

  return result;
}

void sub_252545750(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v5 = floor((a3 * 0.5 + a2) / a3);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v3 + *(type metadata accessor for VerticalPickerControlView() + 20));
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v8 = v7 - 1;
  if (v8 >= (v5 & ~(v5 >> 63)))
  {
    v8 = v5 & ~(v5 >> 63);
  }

  v9 = v6 + 32 * v8;
  v11 = *(v9 + 48);
  v10 = *(v9 + 56);
  *a1 = *(v9 + 32);
  *(a1 + 16) = v11;
  *(a1 + 24) = v10;
}

uint64_t sub_25254582C(uint64_t a1, double a2, double a3, double a4)
{
  result = type metadata accessor for VerticalPickerControlView();
  v8 = *(a1 + *(result + 20));
  v9 = *(v8 + 16);
  if (!v9)
  {
    return result;
  }

  v10 = floor(a3 / a4);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v11 = v9 - 1;
  if (v11 >= (v10 & ~(v10 >> 63)))
  {
    v11 = v10 & ~(v10 >> 63);
  }

  v12 = *(v8 + 32 * v11 + 32);

  v14 = sub_252542D20(v15);
  if (*(v13 + 8) != 1)
  {
    *v13 = v12;
  }

  (v14)(v15, 0);
}

uint64_t sub_25254594C(uint64_t a1)
{
  v3 = sub_252542F5C(a1);
  if (v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = *(v1 + *(type metadata accessor for VerticalPickerControlView() + 20));
  if (v5 >= *(v6 + 16))
  {
    return 0;
  }

  v7 = sub_252542E8C();
  if (v8)
  {
    return 1;
  }

  v9 = v7;
  result = sub_252542F5C(v7);
  if (v11)
  {
    return 1;
  }

  if (result < 1)
  {
    v12 = 0;
  }

  else
  {
    if (result > *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    v12 = *(v6 + 32 * result);
  }

  v14 = result < 1 || v12 != a1;
  return v9 != a1 && v14;
}

uint64_t sub_252545A00@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>, double a3@<D0>)
{
  sub_2526909F0();
  v7 = a3 - v6 * 0.05;
  *a2 = sub_252692920();
  a2[1] = v8;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1D80) + 44));
  v10 = *(sub_252690D30() + 20);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_252691260();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = v7;
  v9[1] = v7;
  KeyPath = swift_getKeyPath();
  v14 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1D88) + 36));
  *v14 = KeyPath;
  v14[1] = a1;

  LOBYTE(KeyPath) = sub_252691A20();
  sub_252690760();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1D90);
  v24 = a2 + *(result + 36);
  *v24 = KeyPath;
  *(v24 + 1) = v16;
  *(v24 + 2) = v18;
  *(v24 + 3) = v20;
  *(v24 + 4) = v22;
  v24[40] = 0;
  return result;
}