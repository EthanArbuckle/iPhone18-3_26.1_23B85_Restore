unint64_t sub_24881E828()
{
  result = qword_27EEAA548;
  if (!qword_27EEAA548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA548);
  }

  return result;
}

uint64_t sub_24881E87C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t InSessionRecoveryData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v41 = type metadata accessor for UnderwaterTime(0);
  v3 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41, v4, v5, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24882ABE8();
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9, v11, v12, v13);
  v43 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA558, &qword_24882F338);
  v42 = *(v45 - 8);
  v15 = *(v42 + 64);
  MEMORY[0x28223BE20](v45, v16, v17, v18);
  v20 = &v39 - v19;
  v21 = type metadata accessor for InSessionRecoveryData(0);
  v22 = *(*(v21 - 1) + 64);
  MEMORY[0x28223BE20](v21, v23, v24, v25);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24881E828();
  v44 = v20;
  v29 = v46;
  sub_24882B558();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v30 = v27;
  v31 = v40;
  LOBYTE(v47) = 0;
  sub_24881E87C(&qword_27EEAA1C0, MEMORY[0x277CC95F0]);
  sub_24882B418();
  v32 = *(v31 + 32);
  v46 = v9;
  v32(v30, v43, v9);
  LOBYTE(v47) = 1;
  sub_24881E87C(&qword_27EEAA560, type metadata accessor for UnderwaterTime);
  sub_24882B418();
  sub_24881F7CC(v8, v30 + v21[5], type metadata accessor for UnderwaterTime);
  v49 = 2;
  sub_24880ED44();
  sub_24882B418();
  v33 = BYTE8(v47);
  v34 = v30 + v21[6];
  *v34 = v47;
  *(v34 + 8) = v33;
  v49 = 3;
  sub_24880ED98();
  sub_24882B418();
  v36 = v48;
  v37 = v30 + v21[7];
  *v37 = v47;
  *(v37 + 16) = v36;
  LOBYTE(v47) = 4;
  v38 = sub_24882B3F8();
  (*(v42 + 8))(v44, v45);
  *(v30 + v21[8]) = v38 & 1;
  sub_24881EDE4(v30, v39, type metadata accessor for InSessionRecoveryData);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_24881EE4C(v30, type metadata accessor for InSessionRecoveryData);
}

uint64_t sub_24881EDE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24881EE4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24881EEDC()
{
  v1 = 0x6F69737365536E69;
  if (*v0 != 1)
  {
    v1 = 0x7972616D6D7573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_24881EF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_248820A40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24881EF5C(uint64_t a1)
{
  v2 = sub_24881F778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881EF98(uint64_t a1)
{
  v2 = sub_24881F778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24881EFD4(uint64_t a1)
{
  v2 = sub_24881F888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881F010(uint64_t a1)
{
  v2 = sub_24881F888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24881F04C(uint64_t a1)
{
  v2 = sub_24881F8DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881F088(uint64_t a1)
{
  v2 = sub_24881F8DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24881F0C4(uint64_t a1)
{
  v2 = sub_24881F834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881F100(uint64_t a1)
{
  v2 = sub_24881F834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SessionRecoveryData.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA568, &qword_24882F340);
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v2, v4, v5, v6);
  v65 = &v57 - v7;
  v63 = type metadata accessor for DescentSummary();
  v8 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63, v9, v10, v11);
  v64 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA570, &qword_24882F348);
  v61 = *(v13 - 8);
  v62 = v13;
  v14 = *(v61 + 64);
  MEMORY[0x28223BE20](v13, v15, v16, v17);
  v60 = &v57 - v18;
  v58 = type metadata accessor for InSessionRecoveryData(0);
  v19 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58, v20, v21, v22);
  v59 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA578, &qword_24882F350);
  v57 = *(v24 - 8);
  v25 = *(v57 + 64);
  MEMORY[0x28223BE20](v24, v26, v27, v28);
  v30 = &v57 - v29;
  v31 = type metadata accessor for SessionRecoveryData(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31, v33, v34, v35);
  v37 = &v57 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA580, &qword_24882F358);
  v38 = *(v69 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v69, v40, v41, v42);
  v44 = &v57 - v43;
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24881F778();
  sub_24882B568();
  sub_24881EDE4(v68, v37, type metadata accessor for SessionRecoveryData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v47 = v64;
      sub_24881F7CC(v37, v64, type metadata accessor for DescentSummary);
      v72 = 2;
      sub_24881F834();
      v48 = v65;
      v49 = v69;
      sub_24882B438();
      sub_24881E87C(&qword_27EEAA598, type metadata accessor for DescentSummary);
      v50 = v67;
      sub_24882B488();
      (*(v66 + 8))(v48, v50);
      sub_24881EE4C(v47, type metadata accessor for DescentSummary);
      return (*(v38 + 8))(v44, v49);
    }

    else
    {
      v70 = 0;
      sub_24881F8DC();
      v56 = v69;
      sub_24882B438();
      (*(v57 + 8))(v30, v24);
      return (*(v38 + 8))(v44, v56);
    }
  }

  else
  {
    v52 = v59;
    sub_24881F7CC(v37, v59, type metadata accessor for InSessionRecoveryData);
    v71 = 1;
    sub_24881F888();
    v53 = v60;
    v54 = v69;
    sub_24882B438();
    sub_24881E87C(&qword_27EEAA5A8, type metadata accessor for InSessionRecoveryData);
    v55 = v62;
    sub_24882B488();
    (*(v61 + 8))(v53, v55);
    sub_24881EE4C(v52, type metadata accessor for InSessionRecoveryData);
    return (*(v38 + 8))(v44, v54);
  }
}

unint64_t sub_24881F778()
{
  result = qword_27EEAA588;
  if (!qword_27EEAA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA588);
  }

  return result;
}

uint64_t sub_24881F7CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24881F834()
{
  result = qword_27EEAA590;
  if (!qword_27EEAA590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA590);
  }

  return result;
}

unint64_t sub_24881F888()
{
  result = qword_27EEAA5A0;
  if (!qword_27EEAA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA5A0);
  }

  return result;
}

unint64_t sub_24881F8DC()
{
  result = qword_27EEAA5B0;
  if (!qword_27EEAA5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA5B0);
  }

  return result;
}

uint64_t SessionRecoveryData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA5B8, &qword_24882F360);
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v3, v5, v6, v7);
  v76 = &v67 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA5C0, &qword_24882F368);
  v73 = *(v79 - 8);
  v9 = *(v73 + 64);
  MEMORY[0x28223BE20](v79, v10, v11, v12);
  v78 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA5C8, &qword_24882F370);
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v14, v16, v17, v18);
  v77 = &v67 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA5D0, &unk_24882F378);
  v81 = *(v20 - 8);
  v21 = *(v81 + 64);
  MEMORY[0x28223BE20](v20, v22, v23, v24);
  v26 = &v67 - v25;
  v27 = type metadata accessor for SessionRecoveryData(0);
  v28 = *(*(v27 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v27, v29, v30, v31);
  v34 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v32, v35, v36, v37);
  v40 = &v67 - v39;
  MEMORY[0x28223BE20](v38, v41, v42, v43);
  v45 = &v67 - v44;
  v47 = a1[3];
  v46 = a1[4];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v47);
  sub_24881F778();
  v48 = v82;
  sub_24882B558();
  if (!v48)
  {
    v68 = v40;
    v69 = v34;
    v50 = v77;
    v49 = v78;
    v82 = v45;
    v70 = v27;
    v52 = v79;
    v51 = v80;
    v53 = sub_24882B428();
    v54 = (2 * *(v53 + 16)) | 1;
    v84 = v53;
    v85 = v53 + 32;
    v86 = 0;
    v87 = v54;
    v55 = sub_2487FF2E4();
    if (v55 == 3 || v86 != v87 >> 1)
    {
      v59 = sub_24882B2E8();
      swift_allocError();
      v61 = v60;
      v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D20, &qword_24882CE60) + 48);
      *v61 = v70;
      sub_24882B3C8();
      sub_24882B2D8();
      (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D84160], v59);
      swift_willThrow();
      (*(v81 + 8))(v26, v20);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v55)
      {
        if (v55 == 1)
        {
          v88 = 1;
          sub_24881F888();
          v56 = v49;
          sub_24882B3B8();
          v57 = v81;
          type metadata accessor for InSessionRecoveryData(0);
          sub_24881E87C(&qword_27EEAA5E0, type metadata accessor for InSessionRecoveryData);
          v58 = v68;
          sub_24882B418();
          (*(v73 + 8))(v56, v52);
        }

        else
        {
          v88 = 2;
          sub_24881F834();
          sub_24882B3B8();
          v57 = v81;
          type metadata accessor for DescentSummary();
          sub_24881E87C(&qword_27EEAA5D8, type metadata accessor for DescentSummary);
          v58 = v69;
          v66 = v75;
          v65 = v76;
          sub_24882B418();
          (*(v74 + 8))(v65, v66);
        }

        (*(v57 + 8))(v26, v20);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v64 = v82;
        sub_24881F7CC(v58, v82, type metadata accessor for SessionRecoveryData);
      }

      else
      {
        v88 = 0;
        sub_24881F8DC();
        sub_24882B3B8();
        (*(v71 + 8))(v50, v72);
        (*(v81 + 8))(v26, v20);
        swift_unknownObjectRelease();
        v64 = v82;
        swift_storeEnumTagMultiPayload();
      }

      sub_24881F7CC(v64, v51, type metadata accessor for SessionRecoveryData);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_248820104()
{
  result = sub_24882ABE8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UnderwaterTime(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2488201A4()
{
  result = type metadata accessor for InSessionRecoveryData(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DescentSummary();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InSessionRecoveryData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InSessionRecoveryData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2488203AC()
{
  result = qword_27EEAA608;
  if (!qword_27EEAA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA608);
  }

  return result;
}

unint64_t sub_248820404()
{
  result = qword_27EEAA610;
  if (!qword_27EEAA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA610);
  }

  return result;
}

unint64_t sub_24882045C()
{
  result = qword_27EEAA618;
  if (!qword_27EEAA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA618);
  }

  return result;
}

unint64_t sub_2488204B4()
{
  result = qword_27EEAA620;
  if (!qword_27EEAA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA620);
  }

  return result;
}

unint64_t sub_24882050C()
{
  result = qword_27EEAA628;
  if (!qword_27EEAA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA628);
  }

  return result;
}

unint64_t sub_248820564()
{
  result = qword_27EEAA630;
  if (!qword_27EEAA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA630);
  }

  return result;
}

unint64_t sub_2488205BC()
{
  result = qword_27EEAA638;
  if (!qword_27EEAA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA638);
  }

  return result;
}

unint64_t sub_248820614()
{
  result = qword_27EEAA640;
  if (!qword_27EEAA640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA640);
  }

  return result;
}

unint64_t sub_24882066C()
{
  result = qword_27EEAA648;
  if (!qword_27EEAA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA648);
  }

  return result;
}

unint64_t sub_2488206C4()
{
  result = qword_27EEAA650;
  if (!qword_27EEAA650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA650);
  }

  return result;
}

unint64_t sub_24882071C()
{
  result = qword_27EEAA658;
  if (!qword_27EEAA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA658);
  }

  return result;
}

unint64_t sub_248820774()
{
  result = qword_27EEAA660;
  if (!qword_27EEAA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA660);
  }

  return result;
}

unint64_t sub_2488207CC()
{
  result = qword_27EEAA668;
  if (!qword_27EEAA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA668);
  }

  return result;
}

unint64_t sub_248820824()
{
  result = qword_27EEAA670;
  if (!qword_27EEAA670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA670);
  }

  return result;
}

uint64_t sub_248820878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x556E6F6973736573 && a2 == 0xEB00000000444955;
  if (v4 || (sub_24882B4B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461777265646E75 && a2 == 0xEE00656D69547265 || (sub_24882B4B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x687470654478616DLL && a2 == 0xE800000000000000 || (sub_24882B4B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000248830B10 == a2 || (sub_24882B4B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000248830CE0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24882B4B8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_248820A40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_24882B4B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69737365536E69 && a2 == 0xE90000000000006ELL || (sub_24882B4B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24882B4B8();

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

uint64_t sub_248820B6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t LastDive.dive.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1);

  return sub_248820C10(a1, v1);
}

uint64_t sub_248820C10(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t LastDive.graphData.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_248820CB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24882AD08();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_248820D38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24882AD18();
}

uint64_t HealthKitProvider.maxDepth.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24882AD18();
}

uint64_t (*HealthKitProvider.maxDepth.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_24882ACF8();
  return sub_248820EE0;
}

uint64_t sub_248820F00(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA688, &qword_24882FA20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v10 = MEMORY[0x28223BE20](v4, v7, v8, v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13, v14, v15);
  v17 = &v21 - v16;
  v18 = *(v5 + 16);
  v18(&v21 - v16, a1, v4);
  v19 = *a2;
  v18(v12, v17, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA680, &qword_24882FA18);
  sub_24882ACE8();
  swift_endAccess();
  return (*(v5 + 8))(v17, v4);
}

uint64_t HealthKitProvider.$maxDepth.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA688, &qword_24882FA20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5, v6, v7);
  (*(v3 + 16))(&v10 - v8, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA680, &qword_24882FA18);
  sub_24882ACE8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*HealthKitProvider.$maxDepth.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA688, &qword_24882FA20);
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

  v10 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__maxDepth;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA680, &qword_24882FA18);
  sub_24882ACD8();
  swift_endAccess();
  return sub_24882132C;
}

uint64_t sub_248821344()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24882AD08();
}

uint64_t sub_2488213B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24882AD08();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_24882143C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24882AD18();
}

uint64_t HealthKitProvider.minTemperature.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24882AD18();
}

uint64_t (*HealthKitProvider.minTemperature.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_24882ACF8();
  return sub_248825EDC;
}

uint64_t sub_248821600(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6A0, &qword_24882FA78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v10 = MEMORY[0x28223BE20](v4, v7, v8, v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13, v14, v15);
  v17 = &v21 - v16;
  v18 = *(v5 + 16);
  v18(&v21 - v16, a1, v4);
  v19 = *a2;
  v18(v12, v17, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA698, &qword_24882FA70);
  sub_24882ACE8();
  swift_endAccess();
  return (*(v5 + 8))(v17, v4);
}

uint64_t HealthKitProvider.$minTemperature.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6A0, &qword_24882FA78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5, v6, v7);
  (*(v3 + 16))(&v10 - v8, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA698, &qword_24882FA70);
  sub_24882ACE8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*HealthKitProvider.$minTemperature.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6A0, &qword_24882FA78);
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

  v10 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__minTemperature;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA698, &qword_24882FA70);
  sub_24882ACD8();
  swift_endAccess();
  return sub_248825EE0;
}

uint64_t HealthKitProvider.lastDive.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24882AD08();
}

uint64_t sub_248821AA4(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24882AD08();
}

uint64_t sub_248821B20(uint64_t a1, uint64_t *a2)
{
  sub_248825C18(a1, v6, &qword_27EEAA6B0, &qword_24882FAC8);
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_248825C18(v6, &v5, &qword_27EEAA6B0, &qword_24882FAC8);

  sub_24882AD18();
  return sub_24880C924(v6, &qword_27EEAA6B0, &qword_24882FAC8);
}

uint64_t HealthKitProvider.lastDive.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_248825C18(a1, &v3, &qword_27EEAA6B0, &qword_24882FAC8);

  sub_24882AD18();
  return sub_24880C924(a1, &qword_27EEAA6B0, &qword_24882FAC8);
}

uint64_t (*HealthKitProvider.lastDive.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_24882ACF8();
  return sub_248825EDC;
}

void sub_248821D28(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_248821DAC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_24882ACD8();
  return swift_endAccess();
}

uint64_t sub_248821E24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_24882ACD8();
  return swift_endAccess();
}

uint64_t sub_248821EA0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6C0, &qword_24882FAD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v10 = MEMORY[0x28223BE20](v4, v7, v8, v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13, v14, v15);
  v17 = &v21 - v16;
  v18 = *(v5 + 16);
  v18(&v21 - v16, a1, v4);
  v19 = *a2;
  v18(v12, v17, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6B8, &qword_24882FAD0);
  sub_24882ACE8();
  swift_endAccess();
  return (*(v5 + 8))(v17, v4);
}

uint64_t HealthKitProvider.$lastDive.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6C0, &qword_24882FAD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5, v6, v7);
  (*(v3 + 16))(&v10 - v8, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6B8, &qword_24882FAD0);
  sub_24882ACE8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*HealthKitProvider.$lastDive.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6C0, &qword_24882FAD8);
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

  v10 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__lastDive;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6B8, &qword_24882FAD0);
  sub_24882ACD8();
  swift_endAccess();
  return sub_248825EE0;
}

void sub_2488222CC(uint64_t a1, char a2)
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
    sub_24882ACE8();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_24882ACE8();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t HealthKitProvider.__allocating_init(withConfiguration:maxDepth:minTemperature:)(uint64_t a1)
{
  v2 = *(a1 + 112);
  v16 = *(a1 + 96);
  v17 = v2;
  v18 = *(a1 + 128);
  v3 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = v3;
  v4 = *(a1 + 80);
  v14 = *(a1 + 64);
  v15 = v4;
  v5 = *(a1 + 16);
  v11 = *a1;
  v6 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v7 = *(v1 + 48);
  v8 = *(v1 + 52);
  swift_allocObject();
  v9 = sub_2488250B8(&v11, v6);

  return v9;
}

uint64_t HealthKitProvider.__allocating_init(withConfiguration:healthStore:)(__int128 *a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_2488250B8(a1, a2);

  return v7;
}

uint64_t HealthKitProvider.init(withConfiguration:healthStore:)(__int128 *a1, void *a2)
{
  v3 = sub_2488250B8(a1, a2);

  return v3;
}

uint64_t sub_248822550(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2488225B0(v1);
  }

  return result;
}

uint64_t sub_2488225B0(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (!*(result + 16) || (sub_248825B0C(result + 32, v13), v15 == 255))
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    goto LABEL_10;
  }

  v9[0] = v13[0];
  v9[1] = v13[1];
  v10 = v14;
  v11 = v15;
  sub_248820C10(v9, v12);
  sub_248820C10(v12, &v16);
  *(&v18 + 1) = 0;
  if (!*(&v17 + 1))
  {
LABEL_10:
    sub_24880C924(&v16, &qword_27EEAA6B0, &qword_24882FAC8);
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_248825C18(&v19, &v16, &qword_27EEAA6B0, &qword_24882FAC8);

    sub_24882AD18();
    sub_24880C924(&v19, &qword_27EEAA6B0, &qword_24882FAC8);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v19 = 0;
    BYTE8(v19) = 3;

    sub_24882AD18();
    swift_getKeyPath();
    swift_getKeyPath();
    *&v19 = 0;
    BYTE8(v19) = 1;

    return sub_24882AD18();
  }

  v19 = v16;
  v20 = v17;
  v21 = v18;
  sub_248825B68(&v19, &v16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_248825C18(&v16, v13, &qword_27EEAA6B0, &qword_24882FAC8);

  sub_24882AD18();
  sub_24880C924(&v16, &qword_27EEAA6B0, &qword_24882FAC8);
  v1 = *(&v20 + 1);
  v2 = v21;
  __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
  (*(v2 + 24))(&v16, v1, v2);
  v3 = v16;
  v4 = BYTE8(v16);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v13[0] = v3;
  BYTE8(v13[0]) = v4;

  sub_24882AD18();
  v5 = *(&v20 + 1);
  v6 = v21;
  __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
  (*(v6 + 32))(&v16, v5, v6);
  v7 = v17 > 1u;
  if (v17 <= 1u)
  {
    v8 = v16;
  }

  else
  {
    v8 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v16 = v8;
  BYTE8(v16) = v7;

  sub_24882AD18();
  sub_248823004(&v19);
  return sub_248825BA0(&v19);
}

Swift::Void __swiftcall HealthKitProvider.refresh()()
{
  v0 = sub_24882AD58();
  v22 = *(v0 - 8);
  v1 = *(v22 + 64);
  MEMORY[0x28223BE20](v0, v2, v3, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24882AD88();
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21, v9, v10, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEA9960 != -1)
  {
    swift_once();
  }

  v14 = sub_24882AC88();
  __swift_project_value_buffer(v14, qword_27EEAA840);
  v15 = sub_24882AC68();
  v16 = sub_24882B148();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2487F4000, v15, v16, "HealthKitProvider: Refreshing data", v17, 2u);
    MEMORY[0x24C1DA290](v17, -1, -1);
  }

  sub_248806BE0();
  v18 = sub_24882B168();
  v19 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2488255E8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_248822FC0;
  aBlock[3] = &block_descriptor_0;
  v20 = _Block_copy(aBlock);

  sub_24882AD78();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_248825BD0(&unk_27EEAA7F0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6D0, &qword_24882FAE0);
  sub_248825AC4(&unk_27EEAA800, &qword_27EEAA6D0, &qword_24882FAE0);
  sub_24882B258();
  MEMORY[0x24C1D98E0](0, v13, v6, v20);
  _Block_release(v20);

  (*(v22 + 8))(v6, v0);
  (*(v7 + 8))(v13, v21);
}

void sub_248822CE4()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24882AD08();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_248825C18(&v9, &v7, &qword_27EEAA6B0, &qword_24882FAC8);

    sub_24882AD18();
    sub_24880C924(&v9, &qword_27EEAA6B0, &qword_24882FAC8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24882AD08();

    v0 = v9;
    v1 = v10;
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v0;
    v8 = v1;

    sub_24882AD18();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24882AD08();

    v2 = v9;
    LOBYTE(v0) = v10;
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v2;
    v8 = v0;
    sub_24882AD18();
  }

  else
  {
    if (qword_27EEA9960 != -1)
    {
      swift_once();
    }

    v3 = sub_24882AC88();
    __swift_project_value_buffer(v3, qword_27EEAA840);
    v4 = sub_24882AC68();
    v5 = sub_24882B138();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2487F4000, v4, v5, "HealthKitProvider: Deallocated while refreshing", v6, 2u);
      MEMORY[0x24C1DA290](v6, -1, -1);
    }
  }
}

uint64_t sub_248822FC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_248823004(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F48, &qword_24882FBA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6, v7, v8);
  v91 = &v82 - v9;
  v10 = sub_24882ABE8();
  v89 = *(v10 - 8);
  v90 = v10;
  v11 = *(v89 + 64);
  MEMORY[0x28223BE20](v10, v12, v13, v14);
  v88 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6F0, &qword_24882FAE8);
  v17 = *(*(v16 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v16 - 8, v18, v19, v20);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24, v25, v26);
  v28 = &v82 - v27;
  Operation = type metadata accessor for GraphFetchOperation(0);
  v30 = *(Operation - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](Operation, v32, v33, v34);
  v36 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  v39 = (*(v38 + 40))(v37, v38);
  v40 = *(v1 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 48);
  v96 = *(v1 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 32);
  v97 = v40;
  v98 = *(v1 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 64);
  v41 = *(v1 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 16);
  v94 = *(v1 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration);
  v95 = v41;
  if (DepthSettings.deepDiveTimeThreshold.getter() <= v39)
  {
    v55 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider_graphFetchOperation;
    swift_beginAccess();
    v86 = v55;
    sub_248825C18(v2 + v55, v28, &qword_27EEAA6F0, &qword_24882FAE8);
    v56 = (*(v30 + 48))(v28, 1, Operation);
    v87 = v30;
    if (v56 == 1)
    {
      sub_24880C924(v28, &qword_27EEAA6F0, &qword_24882FAE8);
    }

    else
    {
      sub_248825DB0(v28, v36);
      if (qword_27EEA9960 != -1)
      {
        swift_once();
      }

      v57 = sub_24882AC88();
      __swift_project_value_buffer(v57, qword_27EEAA840);
      sub_248820B6C(a1, &v94);
      v58 = sub_24882AC68();
      v59 = sub_24882B148();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v83 = v60;
        v85 = swift_slowAlloc();
        v92 = v85;
        *v60 = 136315138;
        v84 = v59;
        v61 = v96;
        __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
        v62 = *(v61 + 8);
        v63 = v88;
        sub_24882B2A8();
        sub_248825BD0(&qword_27EEAA250, MEMORY[0x277CC95F0]);
        v64 = v90;
        v65 = sub_24882B498();
        v67 = v66;
        (*(v89 + 8))(v63, v64);
        __swift_destroy_boxed_opaque_existential_0(&v94);
        v68 = sub_2487F852C(v65, v67, &v92);

        v69 = v83;
        *(v83 + 1) = v68;
        v70 = v69;
        _os_log_impl(&dword_2487F4000, v58, v84, "HealthKitProvider: Cancelling existing graph fetch for uuid=%s", v69, 0xCu);
        v71 = v85;
        __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x24C1DA290](v71, -1, -1);
        MEMORY[0x24C1DA290](v70, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(&v94);
      }

      v72 = *&v36[*(Operation + 20)];
      sub_24882B0C8();
      sub_248825E7C(v36, type metadata accessor for GraphFetchOperation);
    }

    v73 = sub_24882B0B8();
    v74 = v91;
    (*(*(v73 - 8) + 56))(v91, 1, 1, v73);
    sub_248820B6C(a1, &v94);
    sub_24882B098();

    v75 = sub_24882B088();
    v76 = swift_allocObject();
    v77 = MEMORY[0x277D85700];
    v76[2] = v75;
    v76[3] = v77;
    sub_248820C10(&v94, (v76 + 4));
    v76[9] = v2;
    v78 = sub_248825F90(0, 0, v74, &unk_24882FBB0, v76);
    v79 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v80 = *(v79 + 8);
    sub_24882B2A8();
    *&v23[*(Operation + 20)] = v78;
    (*(v87 + 56))(v23, 0, 1, Operation);
    v81 = v86;
    swift_beginAccess();
    sub_248825D40(v23, v2 + v81);
    swift_endAccess();
  }

  else
  {
    if (qword_27EEA9960 != -1)
    {
      swift_once();
    }

    v42 = sub_24882AC88();
    __swift_project_value_buffer(v42, qword_27EEAA840);
    sub_248820B6C(a1, &v94);
    v43 = sub_24882AC68();
    v44 = sub_24882B148();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v93 = v46;
      *v45 = 136315138;
      v47 = v96;
      __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
      v48 = *(v47 + 8);
      v49 = v88;
      sub_24882B2A8();
      sub_248825BD0(&qword_27EEAA250, MEMORY[0x277CC95F0]);
      v50 = v90;
      v51 = sub_24882B498();
      v53 = v52;
      (*(v89 + 8))(v49, v50);
      __swift_destroy_boxed_opaque_existential_0(&v94);
      v54 = sub_2487F852C(v51, v53, &v93);

      *(v45 + 4) = v54;
      _os_log_impl(&dword_2487F4000, v43, v44, "HealthKitProvider: Graph data not needed for dive uuid=%s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x24C1DA290](v46, -1, -1);
      MEMORY[0x24C1DA290](v45, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v94);
    }
  }
}

uint64_t sub_24882384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA758, &qword_24882FBB8);
  v5[19] = v6;
  v7 = *(v6 - 8);
  v5[20] = v7;
  v8 = *(v7 + 64) + 15;
  v5[21] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA760, qword_24882FBC0) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v10 = sub_24882ABE8();
  v5[24] = v10;
  v11 = *(v10 - 8);
  v5[25] = v11;
  v12 = *(v11 + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_24882B098();
  v5[28] = sub_24882B088();
  v14 = sub_24882B078();
  v5[29] = v14;
  v5[30] = v13;

  return MEMORY[0x2822009F8](sub_2488239F8, v14, v13);
}

uint64_t sub_2488239F8()
{
  v25 = v0;
  if (qword_27EEA9960 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_24882AC88();
  v0[31] = __swift_project_value_buffer(v2, qword_27EEAA840);
  sub_248820B6C(v1, (v0 + 2));
  v3 = sub_24882AC68();
  v4 = sub_24882B148();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v6 = v0[24];
    v7 = v0[25];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    v10 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v11 = *(v10 + 8);
    sub_24882B2A8();
    sub_248825BD0(&qword_27EEAA250, MEMORY[0x277CC95F0]);
    v12 = sub_24882B498();
    v14 = v13;
    (*(v7 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v15 = sub_2487F852C(v12, v14, &v24);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_2487F4000, v3, v4, "HealthKitProvider: Starting graph data fetch for uuid=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C1DA290](v9, -1, -1);
    MEMORY[0x24C1DA290](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v16 = v0[26];
  v17 = v0[17];
  v18 = *(v0[18] + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_diveGraphDataProvider);
  v19 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v20 = *(v19 + 8);
  sub_24882B2A8();
  v21 = swift_task_alloc();
  v0[32] = v21;
  *v21 = v0;
  v21[1] = sub_248823CB0;
  v22 = v0[26];

  return sub_248809448(v22, 40);
}

uint64_t sub_248823CB0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *(*v2 + 208);
  v7 = *(*v2 + 200);
  v8 = *(*v2 + 192);
  v9 = *v2;
  v4[33] = a1;
  v4[34] = v1;

  v10 = *(v7 + 8);
  v4[35] = v10;
  v4[36] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  v11 = v3[30];
  v12 = v3[29];
  if (v1)
  {
    v13 = sub_2488243A4;
  }

  else
  {
    v13 = sub_248823E64;
  }

  return MEMORY[0x2822009F8](v13, v12, v11);
}

void sub_248823E64()
{
  v71 = v0;
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[20];
  v68 = v0[19];

  v4 = 0;
  v67 = v1;
  v5 = *(v1 + 16);
  v6 = (v3 + 56);
  v7 = (v3 + 48);
  while (1)
  {
    if (v4 == v5)
    {
      v8 = 1;
      v4 = v5;
    }

    else
    {
      if (v4 >= *(v67 + 16))
      {
        __break(1u);
        return;
      }

      v9 = v0[33];
      v11 = v0[21];
      v10 = v0[22];
      v12 = *(type metadata accessor for DepthIntervalSummary() - 8);
      v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v4;
      v14 = *(v68 + 48);
      *v11 = v4;
      sub_24880BF68(v13, v11 + v14);
      sub_248825E14(v11, v10, &qword_27EEAA758, &qword_24882FBB8);
      v8 = 0;
      ++v4;
    }

    v16 = v0[22];
    v15 = v0[23];
    v17 = v0[19];
    (*v6)(v16, v8, 1, v17);
    sub_248825E14(v16, v15, &qword_27EEAA760, qword_24882FBC0);
    if ((*v7)(v15, 1, v17) == 1)
    {
      break;
    }

    v18 = v0[31];
    v19 = v0[23];
    v20 = *v19;
    v21 = v19 + *(v68 + 48);
    v22 = v21 + *(type metadata accessor for DepthIntervalSummary() + 20);
    v24 = *v22;
    v23 = *(v22 + 8);
    v25 = *(v22 + 16);
    sub_248825E7C(v21, type metadata accessor for DepthIntervalSummary);
    v26 = sub_24882AC68();
    v27 = sub_24882B148();
    v28 = os_log_type_enabled(v26, v27);
    if (v25)
    {
      if (v28)
      {
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        *(v29 + 4) = v20;
        v30 = v27;
        v31 = v26;
        v32 = "HealthKitProvider: %ld: NULL";
        v33 = v29;
        v34 = 12;
LABEL_2:
        _os_log_impl(&dword_2487F4000, v31, v30, v32, v33, v34);
        MEMORY[0x24C1DA290](v29, -1, -1);
      }
    }

    else if (v28)
    {
      v29 = swift_slowAlloc();
      *v29 = 134218496;
      *(v29 + 4) = v20;
      *(v29 + 12) = 2048;
      *(v29 + 14) = v24;
      *(v29 + 22) = 2048;
      *(v29 + 24) = v23;
      v30 = v27;
      v31 = v26;
      v32 = "HealthKitProvider: %ld: %f-%f";
      v33 = v29;
      v34 = 32;
      goto LABEL_2;
    }
  }

  v35 = v0[33];
  v36 = v0[31];
  sub_248820B6C(v0[17], (v0 + 12));

  v37 = sub_24882AC68();
  v38 = sub_24882B148();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = v0[35];
    v69 = v0[36];
    v40 = v0[33];
    v41 = v0[27];
    v42 = v0[24];
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v70 = v44;
    *v43 = 134218242;
    *(v43 + 4) = *(v67 + 16);

    *(v43 + 12) = 2080;
    v45 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
    v46 = *(v45 + 8);
    sub_24882B2A8();
    sub_248825BD0(&qword_27EEAA250, MEMORY[0x277CC95F0]);
    v47 = sub_24882B498();
    v49 = v48;
    v39(v41, v42);
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    v50 = sub_2487F852C(v47, v49, &v70);

    *(v43 + 14) = v50;
    _os_log_impl(&dword_2487F4000, v37, v38, "HealthKitProvider: Completed graph fetch with count=%ld for uuid=%s", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x24C1DA290](v44, -1, -1);
    MEMORY[0x24C1DA290](v43, -1, -1);
  }

  else
  {
    v51 = v0[33];

    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  }

  v53 = v0[35];
  v52 = v0[36];
  v54 = v0[33];
  v55 = v0[27];
  v56 = v0[24];
  v57 = v0[17];
  v58 = v0[18];
  v59 = v57[4];
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  v60 = *(v59 + 8);
  sub_24882B2A8();
  sub_248824658(v54, v55);

  v53(v55, v56);
  v62 = v0[26];
  v61 = v0[27];
  v64 = v0[22];
  v63 = v0[23];
  v65 = v0[21];

  v66 = v0[1];

  v66();
}

uint64_t sub_2488243A4()
{
  v32 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 136);

  sub_248820B6C(v4, v0 + 56);
  v5 = v1;
  v6 = sub_24882AC68();
  v7 = sub_24882B138();

  if (os_log_type_enabled(v6, v7))
  {
    v28 = *(v0 + 280);
    v29 = *(v0 + 288);
    v30 = *(v0 + 272);
    v8 = *(v0 + 216);
    v9 = *(v0 + 192);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v10 = 136315394;
    v13 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v14 = *(v13 + 8);
    sub_24882B2A8();
    sub_248825BD0(&qword_27EEAA250, MEMORY[0x277CC95F0]);
    v15 = sub_24882B498();
    v17 = v16;
    v28(v8, v9);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v18 = sub_2487F852C(v15, v17, &v31);

    *(v10 + 4) = v18;
    *(v10 + 12) = 2112;
    v19 = v30;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v20;
    *v11 = v20;
    _os_log_impl(&dword_2487F4000, v6, v7, "HealthKitProvider: Failed to fetch graph data for uuid=%s with error=%@", v10, 0x16u);
    sub_24880C924(v11, &qword_27EEAA230, &qword_24882D968);
    MEMORY[0x24C1DA290](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1DA290](v12, -1, -1);
    MEMORY[0x24C1DA290](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  }

  v22 = *(v0 + 208);
  v21 = *(v0 + 216);
  v24 = *(v0 + 176);
  v23 = *(v0 + 184);
  v25 = *(v0 + 168);

  v26 = *(v0 + 8);

  return v26();
}

void sub_248824658(uint64_t a1, uint64_t a2)
{
  v4 = sub_24882ABE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v10 = MEMORY[0x28223BE20](v4, v7, v8, v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13, v14, v15);
  v17 = &v54 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24882AD08();

  if (*(&v58 + 1))
  {
    v60[1] = v58;
    v60[2] = v59;
    v60[0] = v57;
    v18 = v59;
    __swift_project_boxed_opaque_existential_1(v60, *(&v58 + 1));
    v19 = *(v18 + 8);
    sub_24882B2A8();
    LOBYTE(v18) = _s9DepthCore11DiveSummaryV2eeoiySbAC_ACtFZ_0();
    v20 = *(v5 + 8);
    v20(v17, v4);
    if (v18)
    {
      if (qword_27EEA9960 != -1)
      {
        swift_once();
      }

      v21 = sub_24882AC88();
      __swift_project_value_buffer(v21, qword_27EEAA840);
      sub_248825B68(v60, &v57);
      v22 = sub_24882AC68();
      v23 = sub_24882B148();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v55 = a1;
        v56[0] = v25;
        v26 = v25;
        *v24 = 136315138;
        v54 = v20;
        v27 = v59;
        __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
        v28 = *(v27 + 8);
        sub_24882B2A8();
        sub_248825BD0(&qword_27EEAA250, MEMORY[0x277CC95F0]);
        v29 = sub_24882B498();
        v31 = v30;
        v54(v17, v4);
        sub_248825BA0(&v57);
        v32 = sub_2487F852C(v29, v31, v56);

        *(v24 + 4) = v32;
        _os_log_impl(&dword_2487F4000, v22, v23, "HealthKitProvider: Adding graph data for uuid=%s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        v33 = v26;
        a1 = v55;
        MEMORY[0x24C1DA290](v33, -1, -1);
        MEMORY[0x24C1DA290](v24, -1, -1);
      }

      else
      {

        sub_248825BA0(&v57);
      }

      sub_248820B6C(v60, &v57);
      *(&v59 + 1) = a1;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_248825C18(&v57, v56, &qword_27EEAA6B0, &qword_24882FAC8);

      sub_24882AD18();
      sub_24880C924(&v57, &qword_27EEAA6B0, &qword_24882FAC8);
    }

    else
    {
      if (qword_27EEA9960 != -1)
      {
        swift_once();
      }

      v38 = sub_24882AC88();
      __swift_project_value_buffer(v38, qword_27EEAA840);
      sub_248825B68(v60, &v57);
      (*(v5 + 16))(v12, a2, v4);
      v39 = sub_24882AC68();
      v40 = sub_24882B148();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56[0] = v55;
        *v41 = 136315394;
        LODWORD(v54) = v40;
        v42 = v59;
        __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
        v43 = *(v42 + 8);
        sub_24882B2A8();
        sub_248825BD0(&qword_27EEAA250, MEMORY[0x277CC95F0]);
        v44 = sub_24882B498();
        v45 = v20;
        v47 = v46;
        v45(v17, v4);
        sub_248825BA0(&v57);
        v48 = sub_2487F852C(v44, v47, v56);

        *(v41 + 4) = v48;
        *(v41 + 12) = 2080;
        v49 = sub_24882B498();
        v51 = v50;
        v45(v12, v4);
        v52 = sub_2487F852C(v49, v51, v56);

        *(v41 + 14) = v52;
        _os_log_impl(&dword_2487F4000, v39, v54, "HealthKitProvider: Not updating lastDive graph data, current dive is %s, graph data supplied for %s", v41, 0x16u);
        v53 = v55;
        swift_arrayDestroy();
        MEMORY[0x24C1DA290](v53, -1, -1);
        MEMORY[0x24C1DA290](v41, -1, -1);
      }

      else
      {

        v20(v12, v4);
        sub_248825BA0(&v57);
      }
    }

    sub_248825BA0(v60);
  }

  else
  {
    sub_24880C924(&v57, &qword_27EEAA6B0, &qword_24882FAC8);
    if (qword_27EEA9960 != -1)
    {
      swift_once();
    }

    v34 = sub_24882AC88();
    __swift_project_value_buffer(v34, qword_27EEAA840);
    v35 = sub_24882AC68();
    v36 = sub_24882B148();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2487F4000, v35, v36, "HealthKitProvider: Not updating lastDive graphData, lastDive is nil", v37, 2u);
      MEMORY[0x24C1DA290](v37, -1, -1);
    }
  }
}

uint64_t HealthKitProvider.deinit()
{
  v1 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__maxDepth;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA680, &qword_24882FA18);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__minTemperature;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA698, &qword_24882FA70);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__lastDive;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6B8, &qword_24882FAD0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 112);
  v15[6] = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 96);
  v15[7] = v7;
  v16 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 128);
  v8 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 48);
  v15[2] = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 32);
  v15[3] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 80);
  v15[4] = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 64);
  v15[5] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 16);
  v15[0] = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration);
  v15[1] = v10;
  sub_2487F5E64(v15);
  v11 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_historyObserver);

  v12 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_diveGraphDataProvider);

  sub_24880C924(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_graphFetchOperation, &qword_27EEAA6F0, &qword_24882FAE8);
  v13 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_subscriptions);

  return v0;
}

uint64_t HealthKitProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__maxDepth;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA680, &qword_24882FA18);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__minTemperature;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA698, &qword_24882FA70);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__lastDive;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6B8, &qword_24882FAD0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 112);
  v17[6] = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 96);
  v17[7] = v7;
  v18 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 128);
  v8 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 48);
  v17[2] = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 32);
  v17[3] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 80);
  v17[4] = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 64);
  v17[5] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 16);
  v17[0] = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration);
  v17[1] = v10;
  sub_2487F5E64(v17);
  v11 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_historyObserver);

  v12 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_diveGraphDataProvider);

  sub_24880C924(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_graphFetchOperation, &qword_27EEAA6F0, &qword_24882FAE8);
  v13 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_subscriptions);

  v14 = *(*v0 + 48);
  v15 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_2488250B8(__int128 *a1, void *a2)
{
  v3 = v2;
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6B8, &qword_24882FAD0);
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v51, v7, v8, v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA698, &qword_24882FA70);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15, v16, v17);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA680, &qword_24882FA18);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23, v24, v25);
  v27 = &v51 - v26;
  v28 = a1[7];
  v61 = a1[6];
  v62 = v28;
  v63 = *(a1 + 16);
  v29 = a1[3];
  v57 = a1[2];
  v58 = v29;
  v30 = a1[5];
  v59 = a1[4];
  v60 = v30;
  v31 = a1[1];
  v55 = *a1;
  v56 = v31;
  v32 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__maxDepth;
  *&v54[0] = 0;
  BYTE8(v54[0]) = 3;
  sub_24882ACC8();
  (*(v21 + 32))(v3 + v32, v27, v20);
  v33 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__minTemperature;
  *&v54[0] = 0;
  BYTE8(v54[0]) = 1;
  sub_24882ACC8();
  (*(v13 + 32))(v3 + v33, v19, v12);
  v34 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__lastDive;
  memset(v54, 0, sizeof(v54));
  sub_248825C18(v54, v53, &qword_27EEAA6B0, &qword_24882FAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6B0, &qword_24882FAC8);
  sub_24882ACC8();
  sub_24880C924(v54, &qword_27EEAA6B0, &qword_24882FAC8);
  (*(v5 + 32))(v3 + v34, v11, v51);
  v35 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider_graphFetchOperation;
  Operation = type metadata accessor for GraphFetchOperation(0);
  (*(*(Operation - 8) + 56))(v3 + v35, 1, 1, Operation);
  *(v3 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_subscriptions) = MEMORY[0x277D84FA0];
  v37 = v3 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration;
  v38 = v62;
  *(v37 + 96) = v61;
  *(v37 + 112) = v38;
  *(v37 + 128) = v63;
  v39 = v58;
  *(v37 + 32) = v57;
  *(v37 + 48) = v39;
  v40 = v60;
  *(v37 + 64) = v59;
  *(v37 + 80) = v40;
  v41 = v56;
  *v37 = v55;
  *(v37 + 16) = v41;
  type metadata accessor for HealthKitHistoryObserver();
  v42 = swift_allocObject();
  *&v54[0] = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA748, &unk_24882FC10);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = v52;
  v47 = sub_24882ACB8();
  *(v42 + 32) = 0u;
  *(v42 + 48) = 0u;
  *(v42 + 16) = v47;
  *(v42 + 24) = v46;
  *(v3 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_historyObserver) = v42;
  type metadata accessor for DiveGraphDataProvider();
  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  *(v3 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_diveGraphDataProvider) = v48;
  *&v54[0] = v47;
  swift_allocObject();
  swift_weakInit();
  sub_248825AC4(&qword_27EEAA750, &qword_27EEAA748, &unk_24882FC10);
  v49 = v46;

  sub_24882AD38();

  swift_beginAccess();
  sub_24882AC98();
  swift_endAccess();

  return v3;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_248825608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_248825650(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2488256D4()
{
  sub_248825884(319, &qword_27EEAA710);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_248825884(319, &qword_27EEAA718);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_2488258D0();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_248825934();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_248825884(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24882AD28();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2488258D0()
{
  if (!qword_27EEAA720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEAA6B0, &qword_24882FAC8);
    v0 = sub_24882AD28();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEAA720);
    }
  }
}

void sub_248825934()
{
  if (!qword_27EEAA728)
  {
    type metadata accessor for GraphFetchOperation(255);
    v0 = sub_24882B218();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEAA728);
    }
  }
}

void sub_2488259D4()
{
  sub_24882ABE8();
  if (v0 <= 0x3F)
  {
    sub_248825A58();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_248825A58()
{
  if (!qword_27EEAA740)
  {
    v0 = sub_24882B0D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEAA740);
    }
  }
}

uint64_t sub_248825AC4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_248825BD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_248825C18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_248825C80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_248801C8C;

  return sub_24882384C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_248825D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6F0, &qword_24882FAE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_248825DB0(uint64_t a1, uint64_t a2)
{
  Operation = type metadata accessor for GraphFetchOperation(0);
  (*(*(Operation - 8) + 32))(a2, a1, Operation);
  return a2;
}

uint64_t sub_248825E14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_248825E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_248825F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F48, &qword_24882FBA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11, v12, v13);
  v15 = v30 - v14;
  sub_2488291F4(a3, v30 - v14);
  v16 = sub_24882B0B8();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);

  if (v18 == 1)
  {
    sub_24880C924(v15, &qword_27EEA9F48, &qword_24882FBA0);
  }

  else
  {
    sub_24882B0A8();
    (*(v17 + 8))(v15, v16);
  }

  v20 = *(a5 + 16);
  v19 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = sub_24882B078();
    v23 = v22;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24 = sub_24882AF68() + 32;
      v25 = swift_allocObject();
      *(v25 + 16) = a4;
      *(v25 + 24) = a5;

      if (v23 | v21)
      {
        v31[0] = 0;
        v31[1] = 0;
        v26 = v31;
        v31[2] = v21;
        v31[3] = v23;
      }

      else
      {
        v26 = 0;
      }

      v30[1] = 7;
      v30[2] = v26;
      v30[3] = v24;
      v28 = swift_task_create();

      sub_24880C924(a3, &qword_27EEA9F48, &qword_24882FBA0);

      return v28;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24880C924(a3, &qword_27EEA9F48, &qword_24882FBA0);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  if (v23 | v21)
  {
    v31[4] = 0;
    v31[5] = 0;
    v31[6] = v21;
    v31[7] = v23;
  }

  return swift_task_create();
}

uint64_t sub_248826280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F48, &qword_24882FBA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11, v12, v13);
  v15 = v30 - v14;
  sub_2488291F4(a3, v30 - v14);
  v16 = sub_24882B0B8();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);

  if (v18 == 1)
  {
    sub_24880C924(v15, &qword_27EEA9F48, &qword_24882FBA0);
  }

  else
  {
    sub_24882B0A8();
    (*(v17 + 8))(v15, v16);
  }

  v20 = *(a5 + 16);
  v19 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = sub_24882B078();
    v23 = v22;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24 = sub_24882AF68() + 32;
      v25 = swift_allocObject();
      *(v25 + 16) = a4;
      *(v25 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA7B8, &qword_24882FE10);
      v26 = (v23 | v21);
      if (v23 | v21)
      {
        v31[0] = 0;
        v31[1] = 0;
        v26 = v31;
        v31[2] = v21;
        v31[3] = v23;
      }

      v30[1] = 7;
      v30[2] = v26;
      v30[3] = v24;
      v27 = swift_task_create();

      sub_24880C924(a3, &qword_27EEA9F48, &qword_24882FBA0);

      return v27;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24880C924(a3, &qword_27EEA9F48, &qword_24882FBA0);
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  *(v29 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA7B8, &qword_24882FE10);
  if (v23 | v21)
  {
    v31[4] = 0;
    v31[5] = 0;
    v31[6] = v21;
    v31[7] = v23;
  }

  return swift_task_create();
}

uint64_t HealthKitHistoryObserver.__allocating_init(healthStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA748, &unk_24882FC10);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_24882ACB8();
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 16) = v6;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t DiveHistoryEntry.isSaved.getter()
{
  sub_248825B0C(v0, v3);
  v1 = v3[40];
  sub_24882680C(v3);
  return v1;
}

uint64_t DiveHistoryEntry.id.getter()
{
  sub_248825B0C(v0, v4);
  sub_248820C10(v4, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v2 + 56))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_24882670C()
{
  sub_248825B0C(v0, v4);
  sub_248820C10(v4, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v2 + 56))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t HealthKitHistoryObserver.init(healthStore:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA748, &unk_24882FC10);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_24882ACB8();
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 16) = v6;
  *(v1 + 24) = a1;
  return v1;
}

void sub_24882683C()
{
  sub_2487FCC20(0, &qword_27EEAA030, 0x277CCD8D8);
  v1 = [swift_getObjCClassFromMetadata() workoutType];
  v2 = [objc_opt_self() predicateForWorkoutsWithWorkoutActivityType_];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = objc_allocWithZone(MEMORY[0x277CCD730]);
  v8[4] = sub_248829694;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2488288A0;
  v8[3] = &block_descriptor_1;
  v5 = _Block_copy(v8);

  v6 = [v4 initWithSampleType:v1 predicate:v2 updateHandler:v5];

  _Block_release(v5);

  [*(v0 + 24) executeQuery_];
  v7 = *(v0 + 56);
  *(v0 + 56) = v6;
}

uint64_t sub_2488269D0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F48, &qword_24882FBA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9, v10, v11);
  v13 = &v29 - v12;
  if (qword_27EEA9950 != -1)
  {
    swift_once();
  }

  v14 = sub_24882AC88();
  __swift_project_value_buffer(v14, qword_27EEAA810);
  v15 = sub_24882AC68();
  v16 = sub_24882B148();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2487F4000, v15, v16, "DiveHistorySource: Workout observer query triggered", v17, 2u);
    MEMORY[0x24C1DA290](v17, -1, -1);
  }

  if (a4)
  {
    v18 = a4;
    v19 = sub_24882AC68();
    v20 = sub_24882B138();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = a4;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_2487F4000, v19, v20, "DiveWorkoutSource: Failed to observer dive workouts with error %@", v21, 0xCu);
      sub_24880C924(v22, &qword_27EEAA230, &qword_24882D968);
      MEMORY[0x24C1DA290](v22, -1, -1);
      MEMORY[0x24C1DA290](v21, -1, -1);
    }

    return a2();
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v26 = result;
      v27 = sub_24882B0B8();
      (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v28[4] = v26;
      v28[5] = a2;
      v28[6] = a3;

      sub_248825F90(0, 0, v13, &unk_24882FE50, v28);
    }
  }

  return result;
}

uint64_t sub_248826CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_248801C8C;

  return sub_248826D74(a5, a6);
}

uint64_t sub_248826D74(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F48, &qword_24882FBA0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA768, &qword_24882FD78) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for DiveSummary();
  v3[13] = v6;
  v7 = *(v6 - 8);
  v3[14] = v7;
  v8 = *(v7 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA770, &qword_24882FD80);
  v3[17] = v9;
  v10 = *(v9 - 8);
  v3[18] = v10;
  v11 = *(v10 + 64) + 15;
  v3[19] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA778, &qword_24882FD88);
  v3[20] = v12;
  v13 = *(v12 - 8);
  v3[21] = v13;
  v14 = *(v13 + 64) + 15;
  v3[22] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA780, &unk_24882FD90);
  v3[23] = v15;
  v16 = *(v15 - 8);
  v3[24] = v16;
  v17 = *(v16 + 64) + 15;
  v3[25] = swift_task_alloc();
  v18 = sub_24882AC38();
  v3[26] = v18;
  v19 = *(v18 - 8);
  v3[27] = v19;
  v20 = *(v19 + 64) + 15;
  v3[28] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA050, &qword_24882CD28) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v22 = sub_24882AC48();
  v3[30] = v22;
  v23 = *(v22 - 8);
  v3[31] = v23;
  v24 = *(v23 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v25 = sub_24882AB78();
  v3[34] = v25;
  v26 = *(v25 - 8);
  v3[35] = v26;
  v27 = *(v26 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248827150, 0, 0);
}

uint64_t sub_248827150()
{
  if (qword_27EEA9950 != -1)
  {
    swift_once();
  }

  v1 = sub_24882AC88();
  v0[38] = __swift_project_value_buffer(v1, qword_27EEAA810);
  v2 = sub_24882AC68();
  v3 = sub_24882B148();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2487F4000, v2, v3, "DiveHistorySource: Starting new historical query", v4, 2u);
    MEMORY[0x24C1DA290](v4, -1, -1);
  }

  v5 = v0[37];
  v56 = v0[35];
  v58 = v0[34];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[31];
  v54 = v0[30];
  v10 = v0[28];
  v9 = v0[29];
  v12 = v0[26];
  v11 = v0[27];

  sub_24882AB68();
  sub_24882AC28();
  sub_24882AC28();
  (*(v11 + 104))(v10, *MEMORY[0x277CC9968], v12);
  sub_24882AC18();
  (*(v11 + 8))(v10, v12);
  v13 = *(v8 + 8);
  v13(v7, v54);
  v14 = (*(v56 + 48))(v9, 1, v58);
  if (v14 == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = v0[36];
    v16 = v0[37];
    v19 = v0[34];
    v18 = v0[35];
    v20 = v0[33];
    v22 = v0[29];
    v21 = v0[30];
    v51 = v0[24];
    v52 = v0[23];
    v49 = v0[25];
    v50 = v0[22];
    v53 = v0[21];
    v55 = v0[20];
    v57 = v0[19];
    v59 = v0[10];
    sub_24882ABF8();
    v13(v20, v21);
    v23 = *(v18 + 8);
    v0[39] = v23;
    v0[40] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v22, v19);
    v24 = objc_opt_self();
    v25 = sub_24882AB28();
    v26 = sub_24882AB28();
    v27 = [v24 predicateForSamplesWithStartDate:v25 endDate:v26 options:0];
    v0[41] = v27;

    v28 = [v24 _predicateForObjectsFromAppleWatches];
    v0[42] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA788, &unk_24882FDA0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_24882FC00;
    *(v29 + 32) = v27;
    *(v29 + 40) = v28;
    v30 = v27;
    v31 = v28;
    *(v29 + 48) = [v24 predicateForWorkoutsWithWorkoutActivityType_];
    v32 = objc_allocWithZone(MEMORY[0x277CCA920]);
    sub_2487FCC20(0, &qword_27EEAA790, 0x277CCAC30);
    v33 = sub_24882AFE8();

    v34 = [v32 initWithType:1 subpredicates:v33];
    v0[43] = v34;

    sub_2487FCC20(0, &qword_27EEAA038, 0x277CCD8A8);
    v35 = v34;
    sub_24882ADE8();

    KeyPath = swift_getKeyPath();
    MEMORY[0x24C1D9220](KeyPath, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA798, &qword_24882FDD8);
    v37 = *(v51 + 72);
    v38 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_24882BFD0;
    (*(v51 + 16))(v39 + v38, v49, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA7A0, &unk_24882FDE0);
    v40 = *(v53 + 72);
    v41 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_24882BFD0;
    (*(v53 + 16))(v42 + v41, v50, v55);
    sub_2487FCC20(0, &qword_27EEAA7A8, 0x277CCDBE8);
    sub_24882ADF8();
    v43 = *(v59 + 24);
    v0[44] = v43;
    v44 = *(MEMORY[0x277CCB608] + 4);
    v45 = v43;
    v46 = swift_task_alloc();
    v0[45] = v46;
    *v46 = v0;
    v46[1] = sub_2488276BC;
    v47 = v0[19];
    v15 = v0[17];
    v14 = v45;
  }

  return MEMORY[0x282120380](v14, v15);
}

uint64_t sub_2488276BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 360);
  v7 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v5 = sub_248827E9C;
  }

  else
  {

    v5 = sub_2488277D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2488277D8()
{
  v1 = *(v0 + 368);
  v68 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24882B358())
  {
    v3 = MEMORY[0x277D84F90];
    v70 = v1;
    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = *(v0 + 112);
    v79 = v1 & 0xC000000000000001;
    v73 = *(v0 + 368) + 32;
    v76 = v1 & 0xFFFFFFFFFFFFFF8;
    v1 = v5 + 48;
    while (1)
    {
      if (v79)
      {
        v6 = MEMORY[0x24C1D9A30](v4, *(v0 + 368));
      }

      else
      {
        if (v4 >= *(v76 + 16))
        {
          goto LABEL_37;
        }

        v6 = *(v73 + 8 * v4);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = *(v0 + 96);
      v10 = *(v0 + 104);
      static DiveSummary.fromHKWorkout(_:)(v6, v9);

      if ((*v1)(v9, 1, v10) == 1)
      {
        sub_24880C924(*(v0 + 96), &qword_27EEAA768, &qword_24882FD78);
      }

      else
      {
        sub_248828FC0(*(v0 + 96), *(v0 + 128));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_248828D88(0, v3[2] + 1, 1, v3, &qword_27EEAA7C0, &unk_24882FE20, type metadata accessor for DiveSummary);
        }

        v12 = v3[2];
        v11 = v3[3];
        if (v12 >= v11 >> 1)
        {
          v3 = sub_248828D88(v11 > 1, v12 + 1, 1, v3, &qword_27EEAA7C0, &unk_24882FE20, type metadata accessor for DiveSummary);
        }

        v13 = *(v0 + 128);
        v3[2] = v12 + 1;
        sub_248828FC0(v13, v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12);
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

LABEL_18:
  v14 = v3[2];
  if (v14)
  {
    v15 = *(v0 + 112);
    v82 = MEMORY[0x277D84F90];
    sub_2487FC2D0(0, v14, 0);
    v16 = v82;
    v17 = v3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v18 = *(v15 + 72);
    do
    {
      v19 = *(v0 + 120);
      v20 = *(v0 + 104);
      sub_248829024(v17, v19);
      *(v0 + 40) = v20;
      *(v0 + 48) = sub_248829088(&qword_27EEAA7B0, type metadata accessor for DiveSummary);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_248828FC0(v19, boxed_opaque_existential_1);
      *(v0 + 56) = 1;
      v23 = *(v82 + 16);
      v22 = *(v82 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2487FC2D0((v22 > 1), v23 + 1, 1);
      }

      *(v82 + 16) = v23 + 1;
      v24 = (v82 + 48 * v23);
      v25 = *(v0 + 16);
      v26 = *(v0 + 32);
      *(v24 + 57) = *(v0 + 41);
      v24[2] = v25;
      v24[3] = v26;
      v17 += v18;
      --v14;
    }

    while (v14);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v27 = *(v0 + 368);
  v28 = *(v0 + 304);

  v29 = sub_24882AC68();
  v30 = sub_24882B148();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134218240;
    *(v31 + 4) = *(v16 + 16);

    *(v31 + 12) = 2048;
    if (v68)
    {
      v34 = *(v0 + 368);
      if (v70 < 0)
      {
        v35 = *(v0 + 368);
      }

      v32 = sub_24882B358();
    }

    else
    {
      v32 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = *(v0 + 368);

    *(v31 + 14) = v32;

    _os_log_impl(&dword_2487F4000, v29, v30, "DiveHistorySource: Parsed %ld valid dive summaries from %ld workouts", v31, 0x16u);
    MEMORY[0x24C1DA290](v31, -1, -1);
  }

  else
  {
    v33 = *(v0 + 368);
    swift_bridgeObjectRelease_n();
  }

  v62 = *(v0 + 344);
  v63 = *(v0 + 336);
  v64 = *(v0 + 328);
  v74 = *(v0 + 312);
  v77 = *(v0 + 320);
  v80 = *(v0 + 296);
  v37 = *(v0 + 272);
  v38 = *(v0 + 192);
  v69 = *(v0 + 200);
  v71 = *(v0 + 288);
  v66 = *(v0 + 176);
  v67 = *(v0 + 184);
  v39 = *(v0 + 168);
  v65 = *(v0 + 160);
  v40 = *(v0 + 144);
  v60 = *(v0 + 136);
  v61 = *(v0 + 152);
  v41 = *(v0 + 80);
  v42 = *(v0 + 88);
  v43 = sub_24882B0B8();
  (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
  v44 = swift_allocObject();
  swift_weakInit();
  sub_24882B098();

  v45 = sub_24882B088();
  v46 = swift_allocObject();
  v47 = MEMORY[0x277D85700];
  v46[2] = v45;
  v46[3] = v47;
  v46[4] = v44;
  v46[5] = v16;

  sub_248826280(0, 0, v42, &unk_24882FDF8, v46);

  (*(v40 + 8))(v61, v60);
  (*(v39 + 8))(v66, v65);
  (*(v38 + 8))(v69, v67);
  v74(v71, v37);
  v74(v80, v37);
  v48 = *(v0 + 288);
  v49 = *(v0 + 296);
  v51 = *(v0 + 256);
  v50 = *(v0 + 264);
  v53 = *(v0 + 224);
  v52 = *(v0 + 232);
  v54 = *(v0 + 200);
  v55 = *(v0 + 176);
  v56 = *(v0 + 152);
  v72 = *(v0 + 128);
  v75 = *(v0 + 120);
  v78 = *(v0 + 96);
  v81 = *(v0 + 88);
  v57 = *(v0 + 72);
  sub_248828160(*(v0 + 64));

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_248827E9C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 304);

  v3 = v1;
  v4 = sub_24882AC68();
  v5 = sub_24882B138();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 376);
  v37 = *(v0 + 344);
  v38 = *(v0 + 336);
  v39 = *(v0 + 328);
  v8 = *(v0 + 312);
  v46 = *(v0 + 296);
  v9 = *(v0 + 272);
  v10 = *(v0 + 192);
  v42 = *(v0 + 200);
  v44 = *(v0 + 288);
  v40 = *(v0 + 184);
  v11 = *(v0 + 168);
  v35 = *(v0 + 160);
  v36 = *(v0 + 176);
  v12 = *(v0 + 144);
  v13 = *(v0 + 136);
  v33 = v13;
  v34 = *(v0 + 152);
  if (v6)
  {
    v32 = *(v0 + 320);
    v14 = swift_slowAlloc();
    v31 = v8;
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_2487F4000, v4, v5, "DiveHistorySource: Failed to query dive workout history with error %@", v14, 0xCu);
    sub_24880C924(v15, &qword_27EEAA230, &qword_24882D968);
    v18 = v15;
    v8 = v31;
    MEMORY[0x24C1DA290](v18, -1, -1);
    MEMORY[0x24C1DA290](v14, -1, -1);
  }

  (*(v12 + 8))(v34, v33);
  (*(v11 + 8))(v36, v35);
  (*(v10 + 8))(v42, v40);
  v8(v44, v9);
  v8(v46, v9);
  v19 = *(v0 + 288);
  v20 = *(v0 + 296);
  v22 = *(v0 + 256);
  v21 = *(v0 + 264);
  v24 = *(v0 + 224);
  v23 = *(v0 + 232);
  v25 = *(v0 + 200);
  v26 = *(v0 + 176);
  v27 = *(v0 + 152);
  v41 = *(v0 + 128);
  v43 = *(v0 + 120);
  v45 = *(v0 + 96);
  v47 = *(v0 + 88);
  v28 = *(v0 + 72);
  sub_248828160(*(v0 + 64));

  v29 = *(v0 + 8);

  return v29();
}

void sub_248828160(void (*a1)(void))
{
  if (qword_27EEA9950 != -1)
  {
    swift_once();
  }

  v2 = sub_24882AC88();
  __swift_project_value_buffer(v2, qword_27EEAA810);
  sub_2487F5FD8(a1);
  v3 = sub_24882AC68();
  v4 = sub_24882B148();
  sub_248806BB0(a1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    if (a1)
    {
      v7 = 5457241;
    }

    else
    {
      v7 = 20302;
    }

    if (a1)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    v9 = sub_2487F852C(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2487F4000, v3, v4, "DiveHistorySource: Calling completion %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1DA290](v6, -1, -1);
    MEMORY[0x24C1DA290](v5, -1, -1);
  }

  if (a1)
  {
    a1();
  }
}

void sub_2488282F0(id *a1)
{
  v1 = [*a1 endDate];
  sub_24882AB58();
}

uint64_t sub_248828350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  sub_24882B098();
  v5[9] = sub_24882B088();
  v7 = sub_24882B078();

  return MEMORY[0x2822009F8](sub_2488283EC, v7, v6);
}

uint64_t sub_2488283EC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    v5 = *(v0 + 64);
    v6 = *(Strong + 16);

    *(v0 + 40) = v5;

    sub_24882ACA8();
  }

  **(v0 + 48) = v4 == 0;
  v7 = *(v0 + 8);

  return v7();
}

void sub_2488284CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F48, &qword_24882FBA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3, v4, v5);
  v7 = &v14 - v6;
  if (*(v0 + 56))
  {
    if (qword_27EEA9950 != -1)
    {
      swift_once();
    }

    v8 = sub_24882AC88();
    __swift_project_value_buffer(v8, qword_27EEAA810);
    v15 = sub_24882AC68();
    v9 = sub_24882B138();
    if (os_log_type_enabled(v15, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2487F4000, v15, v9, "DiveHistorySource: start() should not be called multiple times", v10, 2u);
      MEMORY[0x24C1DA290](v10, -1, -1);
    }

    v11 = v15;
  }

  else
  {
    sub_24882683C();
    v12 = sub_24882B0B8();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v0;

    sub_248825F90(0, 0, v7, &unk_24882FC28, v13);
  }
}

uint64_t sub_2488286BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248807F14;

  return sub_248826D74(0, 0);
}

uint64_t sub_248828754()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_248807F14;

  return sub_2488286BC();
}

uint64_t HealthKitHistoryObserver.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  sub_248806BB0(*(v0 + 32));

  return v0;
}

uint64_t HealthKitHistoryObserver.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  sub_248806BB0(*(v0 + 32));

  return swift_deallocClassInstance();
}

void sub_2488288A0(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v11 = a2;
  v10 = a4;
  v7(v11, sub_2488296B4, v9, a4);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2488289DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248828A18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_248828A64(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_248828B10(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248828C08;

  return v7(a1);
}

uint64_t sub_248828C08()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_248828D00(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

size_t sub_248828D88(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

void *sub_248828F64(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_248828F84@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_248828FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiveSummary();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_248829024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiveSummary();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248829088(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_248829134(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248807F14;

  return sub_248828350(a1, v4, v5, v7, v6);
}

uint64_t sub_2488291F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F48, &qword_24882FBA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248829264(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_248829358;

  return v6(v2 + 32);
}

uint64_t sub_248829358()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24882946C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248807F14;

  return sub_248829264(a1, v5);
}

uint64_t sub_248829524(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248801C8C;

  return sub_248829264(a1, v5);
}

uint64_t sub_2488295DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248807F14;

  return sub_248828B10(a1, v5);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2488296C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_248801C8C;

  return sub_248826CC8(a1, v4, v5, v6, v7, v8);
}

__n128 DiveConfiguration.depth.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 DiveConfiguration.depth.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v2;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t DiveConfiguration.temperature.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 112);
  *(a1 + 32) = v6;
  return sub_248812C50(v2, v3, v4, v5, v6);
}

__n128 DiveConfiguration.temperature.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_248812CB0(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v5;
  *(v1 + 112) = v3;
  return result;
}

void DiveConfiguration.units.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 115);
  *a1 = *(v1 + 114);
  a1[1] = v2;
}

_BYTE *DiveConfiguration.units.setter(_BYTE *result)
{
  v2 = result[1];
  *(v1 + 114) = *result;
  *(v1 + 115) = v2;
  return result;
}

__n128 DiveConfiguration.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 120);
  *a1 = result;
  return result;
}

__n128 DiveConfiguration.location.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 120) = *a1;
  return result;
}

double DiveConfiguration.init()@<D0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V1.2D, #1.0 }

  *a1 = xmmword_24882D920;
  *(a1 + 16) = _Q1;
  *(a1 + 32) = xmmword_24882D930;
  *(a1 + 48) = xmmword_24882D940;
  *(a1 + 64) = xmmword_24882D950;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 16777344;
  *(a1 + 116) = 1;
  result = 120.0;
  *(a1 + 120) = xmmword_24882FE60;
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_2488299E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 136))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 113);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_248829A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 113) = a2 + 1;
    }
  }

  return result;
}

uint64_t BackgroundTimer.__allocating_init(interval:completion:)(uint64_t a1, uint64_t a2, double a3)
{
  swift_allocObject();
  v6 = sub_248829CDC(a1, a2, a3);

  return v6;
}

uint64_t BackgroundTimer.init(interval:completion:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = sub_248829CDC(a1, a2, a3);

  return v3;
}

uint64_t sub_248829B50()
{
  sub_24882AD58();
  sub_24882A42C(&unk_27EEAA7F0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6D0, &qword_24882FAE0);
  sub_24882A474(&unk_27EEAA800, &qword_27EEAA6D0, &qword_24882FAE0);
  return sub_24882B258();
}

uint64_t sub_248829C28()
{
  v1 = *(v0 + 16);
  swift_getObjectType();
  return sub_24882B1C8();
}

uint64_t BackgroundTimer.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BackgroundTimer.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_248829CAC()
{
  v1 = *(*v0 + 16);
  swift_getObjectType();
  return sub_24882B1C8();
}

uint64_t sub_248829CDC(uint64_t a1, uint64_t a2, double a3)
{
  v77 = a1;
  v78 = a2;
  v4 = sub_24882AD58();
  v82 = *(v4 - 8);
  v83 = v4;
  v5 = *(v82 + 64);
  MEMORY[0x28223BE20](v4, v6, v7, v8);
  v79 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24882AD88();
  v80 = *(v10 - 8);
  v81 = v10;
  v11 = *(v80 + 64);
  MEMORY[0x28223BE20](v10, v12, v13, v14);
  v76 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24882AD48();
  v73 = *(v16 - 8);
  v74 = v16;
  v17 = *(v73 + 64);
  MEMORY[0x28223BE20](v16, v18, v19, v20);
  v22 = (&v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_24882ADA8();
  v71 = *(v23 - 8);
  v72 = v23;
  v24 = *(v71 + 64);
  v28 = MEMORY[0x28223BE20](v23, v25, v26, v27);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31, v32, v33);
  v70 = &v69 - v34;
  v35 = sub_24882B198();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35, v38, v39, v40);
  v42 = &v69 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_24882AD68();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46, v47, v48);
  v50 = &v69 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_2487FCC20(0, &qword_27EEAA7C8, 0x277D85CA0);
  sub_2487FCC20(0, &qword_27EEAA7D0, 0x277D85C78);
  (*(v44 + 104))(v50, *MEMORY[0x277D851C8], v43);
  v51 = sub_24882B188();
  (*(v44 + 8))(v50, v43);
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24882A42C(&qword_27EEAA7D8, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA7E0, &qword_24882FF78);
  sub_24882A474(&qword_27EEAA7E8, &qword_27EEAA7E0, &qword_24882FF78);
  sub_24882B258();
  v52 = sub_24882B1A8();

  (*(v36 + 8))(v42, v35);
  v53 = v75;
  *(v75 + 16) = v52;
  ObjectType = swift_getObjectType();
  sub_24882AD98();
  v55 = v70;
  sub_24882ADB8();
  v56 = v72;
  v57 = *(v71 + 8);
  v57(v30, v72);
  *v22 = 0;
  v59 = v73;
  v58 = v74;
  (*(v73 + 104))(v22, *MEMORY[0x277D85168], v74);
  MEMORY[0x24C1D9960](v55, v22, ObjectType, a3);
  (*(v59 + 8))(v22, v58);
  v57(v55, v56);
  v60 = *(v53 + 16);
  v61 = v53;
  swift_getObjectType();
  v62 = swift_allocObject();
  v63 = v78;
  *(v62 + 16) = v77;
  *(v62 + 24) = v63;
  aBlock[4] = sub_24882A3EC;
  aBlock[5] = v62;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_248822FC0;
  aBlock[3] = &block_descriptor_2;
  v64 = _Block_copy(aBlock);

  v65 = v76;
  sub_24882AD78();
  v66 = v79;
  sub_248829B50();
  sub_24882B1B8();
  _Block_release(v64);
  (*(v82 + 8))(v66, v83);
  (*(v80 + 8))(v65, v81);

  v67 = *(v61 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_24882B1D8();
  swift_unknownObjectRelease();
  return v61;
}

uint64_t sub_24882A3EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24882A42C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24882A474(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24882A5A4()
{
  sub_24882A98C();
  result = sub_24882B208();
  qword_27EEAA858 = result;
  return result;
}

id static DepthLog.osLogger.getter()
{
  if (qword_27EEA9968 != -1)
  {
    swift_once();
  }

  v1 = qword_27EEAA858;

  return v1;
}

uint64_t sub_24882A7D8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24882AC88();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_24882AC78();
}

uint64_t sub_24882A880@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_24882AC88();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_24882A98C()
{
  result = qword_27EEAA8F0;
  if (!qword_27EEAA8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEAA8F0);
  }

  return result;
}