uint64_t sub_216A6576C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_216A657C4()
{
  result = qword_27CAC0B50;
  if (!qword_27CAC0B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0B28);
    sub_216A65CBC(&qword_27CAC0B58, type metadata accessor for Content);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0B50);
  }

  return result;
}

unint64_t sub_216A6589C()
{
  result = qword_27CAC0B90;
  if (!qword_27CAC0B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0B88);
    sub_216A65954();
    sub_2166D9530(&qword_280E2A810, &qword_27CAB8A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0B90);
  }

  return result;
}

unint64_t sub_216A65954()
{
  result = qword_27CAC0B98;
  if (!qword_27CAC0B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0BA0);
    sub_2166D9530(&qword_27CAC0BA8, &qword_27CAC0BB0);
    sub_2166D9530(&qword_27CAC0BB8, &qword_27CAC0BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0B98);
  }

  return result;
}

uint64_t sub_216A65A38@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Content();
  OUTLINED_FUNCTION_36(v2);
  return sub_216A62468(a1);
}

uint64_t sub_216A65AC4()
{
  v0 = type metadata accessor for Content();
  OUTLINED_FUNCTION_36(v0);

  return sub_216A63CB8();
}

uint64_t sub_216A65B20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_216A65B78()
{
  result = qword_27CAC0C18;
  if (!qword_27CAC0C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0BD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0C20);
    sub_2170087F4();
    sub_2166D9530(&qword_27CAC0C28, &qword_27CAC0C20);
    sub_216A65CBC(&qword_27CAC0C30, MEMORY[0x277CDD9E0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0C18);
  }

  return result;
}

uint64_t sub_216A65CBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A65D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Content();
  OUTLINED_FUNCTION_36(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_216A646C8(a1, a2, v9, a3);
}

unint64_t sub_216A65D88()
{
  result = qword_27CAC0CA0;
  if (!qword_27CAC0CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0C88);
    sub_2166D9530(&qword_27CAC0CA8, &qword_27CAC0C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0CA0);
  }

  return result;
}

unint64_t sub_216A65E40()
{
  result = qword_27CAC0CB0;
  if (!qword_27CAC0CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0C98);
    sub_2166D9530(&qword_27CAB8778, &qword_27CAB8780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0CB0);
  }

  return result;
}

uint64_t sub_216A65EF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216A65F50(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216A65FA8()
{
  result = qword_27CAC0CE8;
  if (!qword_27CAC0CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0CE0);
    sub_216A66034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0CE8);
  }

  return result;
}

unint64_t sub_216A66034()
{
  result = qword_27CAC0CF0;
  if (!qword_27CAC0CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0CF8);
    sub_2167E947C();
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0CF0);
  }

  return result;
}

unint64_t sub_216A660EC()
{
  result = qword_27CAC0D48;
  if (!qword_27CAC0D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0D50);
    sub_216A66170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0D48);
  }

  return result;
}

unint64_t sub_216A66170()
{
  result = qword_27CAC0D58;
  if (!qword_27CAC0D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0D60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0B60);
    type metadata accessor for ActionButtonStyle(255);
    sub_2166D9530(&qword_27CAC0B80, &qword_27CAC0B60);
    sub_216A65CBC(&qword_280E404C0, type metadata accessor for ActionButtonStyle);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0B88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEEF0);
    type metadata accessor for ContextMenuPreview(255);
    sub_216A6589C();
    sub_2169C31CC();
    sub_216A65CBC(qword_280E3F158, type metadata accessor for ContextMenuPreview);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0D58);
  }

  return result;
}

uint64_t sub_216A663C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v121 = v5;
  MEMORY[0x28223BE20](v6);
  v119 = &v104 - v7;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v117 = v8;
  MEMORY[0x28223BE20](v9);
  v116 = &v104 - v10;
  v113 = type metadata accessor for PresentAlertAction();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v115 = v13 - v12;
  v123 = _s6ActionVMa();
  OUTLINED_FUNCTION_1();
  v125 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  v20 = &v104 - v19;
  v21 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v124 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7();
  v26 = v25 - v24;
  v27 = sub_21700D284();
  MEMORY[0x28223BE20](v27 - 8);
  OUTLINED_FUNCTION_7();
  v30 = v29 - v28;
  type metadata accessor for UserSocialProfileCoordinator();
  v31 = type metadata accessor for ObjectGraph();
  v120 = a2;
  v111 = v31;
  sub_21700E094();
  v32 = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  v33 = sub_21700E244();
  v34 = (a1 + *(type metadata accessor for PromptSuggestedHandleAction() + 20));
  v35 = v34[1];
  v36 = MEMORY[0x277D21CB8];
  v126 = v33;
  v122 = v4;
  v110 = v21;
  if (v35)
  {
    v37 = *v34;
    sub_21700DF14();
    v107 = sub_216983738(366);
    v104 = v38;
    sub_21700D234();
    v39 = swift_allocObject();
    v39[2] = v32;
    v39[3] = v37;
    v108 = v37;
    v39[4] = v35;
    v39[5] = v33;
    v133 = sub_21700D2C4();
    v134 = v36;
    __swift_allocate_boxed_opaque_existential_1(&v132);
    sub_21700DF14();
    v105 = v32;
    v40 = v32;

    v106 = v30;
    sub_21700D2B4();
    sub_217006214();
    v41 = sub_2170061F4();
    v43 = v42;
    v44 = *(v124 + 8);
    v44(v26, v21);
    v128 = v41;
    v129 = v43;
    v130 = v107;
    v131 = v104;
    sub_2167ADC3C(&v128, v20);
    v45 = v123;
    v46 = *(v123 + 20);
    v47 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(&v20[v46], 1, 1, v47);
    sub_217006214();
    v48 = sub_2170061F4();
    v50 = v49;
    v44(v26, v21);
    v51 = &v20[*(v45 + 24)];
    *v51 = v48;
    v51[1] = v50;
    OUTLINED_FUNCTION_2_87();
    v52 = v109;
    sub_216A670CC(v20, v109, v53);
    sub_21693843C(0, 1, 1, MEMORY[0x277D84F90]);
    v55 = v54;
    v57 = *(v54 + 16);
    v56 = *(v54 + 24);
    if (v57 >= v56 >> 1)
    {
      OUTLINED_FUNCTION_7_60(v56);
      v55 = v103;
    }

    OUTLINED_FUNCTION_3_84();
    sub_21681622C(v52, v58 + v59 * v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013DA0;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_2167C6E08();
    *(inited + 32) = v108;
    *(inited + 40) = v35;
    v108 = sub_216983808(7);
    v107 = v61;
    OUTLINED_FUNCTION_1_106();
    sub_2167D57C8(v20, v62);
    sub_2167ADC98(&v128);
    v33 = v126;
    v32 = v105;
    v63 = MEMORY[0x277D21CB8];
  }

  else
  {
    v108 = 0;
    v107 = 0;
    v55 = MEMORY[0x277D84F90];
    v63 = MEMORY[0x277D21CB8];
  }

  v64 = sub_216983738(344);
  v66 = v65;
  sub_21700D234();
  v67 = swift_allocObject();
  *(v67 + 16) = v32;
  *(v67 + 24) = v33;
  v133 = sub_21700D2C4();
  v134 = v63;
  __swift_allocate_boxed_opaque_existential_1(&v132);
  v109 = v32;

  sub_21700D2B4();
  sub_217006214();
  v68 = sub_2170061F4();
  v70 = v69;
  v71 = *(v124 + 8);
  v72 = v110;
  v71(v26, v110);
  v128 = v68;
  v129 = v70;
  v130 = v64;
  v131 = v66;
  v73 = v114;
  sub_2167ADC3C(&v128, v114);
  v74 = v123;
  v75 = *(v123 + 20);
  v76 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v73 + v75, 1, 1, v76);
  sub_217006214();
  v77 = sub_2170061F4();
  v79 = v78;
  v71(v26, v72);
  v80 = (v73 + *(v74 + 24));
  *v80 = v77;
  v80[1] = v79;
  OUTLINED_FUNCTION_2_87();
  v81 = v112;
  sub_216A670CC(v73, v112, v82);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21693843C(0, *(v55 + 16) + 1, 1, v55);
    v55 = v101;
  }

  v83 = v122;
  v85 = *(v55 + 16);
  v84 = *(v55 + 24);
  if (v85 >= v84 >> 1)
  {
    OUTLINED_FUNCTION_7_60(v84);
    v55 = v102;
  }

  OUTLINED_FUNCTION_3_84();
  sub_21681622C(v81, v86 + v87 * v85);
  v88 = sub_216983738(368);
  sub_216933384(v88, v89, v55, v108, v107, v135);
  v90 = v115;
  sub_21700D234();
  v91 = v113;
  v92 = v90 + *(v113 + 20);
  v93 = v135[1];
  *v92 = v135[0];
  *(v92 + 16) = v93;
  *(v92 + 32) = v136;
  v94 = v116;
  v95 = v118;
  sub_21700E094();
  v127[3] = v91;
  v127[4] = sub_216A67084(qword_280E3EB18, type metadata accessor for PresentAlertAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v127);
  sub_216A670CC(v90, boxed_opaque_existential_1, type metadata accessor for PresentAlertAction);
  v97 = v121;
  v98 = v119;
  (*(v121 + 104))(v119, *MEMORY[0x277D21E18], v83);
  sub_21700D5E4();

  (*(v97 + 8))(v98, v83);
  (*(v117 + 8))(v94, v95);
  sub_2167D57C8(v90, type metadata accessor for PresentAlertAction);
  OUTLINED_FUNCTION_1_106();
  sub_2167D57C8(v73, v99);
  sub_2167ADC98(&v128);
  __swift_destroy_boxed_opaque_existential_1Tm(v127);
  return v126;
}

uint64_t sub_216A66D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21700D2A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[7] = MEMORY[0x277D837D0];
  v10[4] = a2;
  v10[5] = a3;
  swift_beginAccess();
  sub_21700DF14();
  sub_2166EF928();
  swift_endAccess();
  (*(v6 + 104))(v8, *MEMORY[0x277D21CA8], v5);
  sub_21700E224();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_216A66F08()
{
  v0 = sub_21700D2A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memset(&v5[32], 0, 32);
  swift_beginAccess();
  sub_2166EF928();
  swift_endAccess();
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA0], v0);
  sub_21700E224();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_216A67084(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A670CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216A671A4(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v43 = v3;
  MEMORY[0x28223BE20](v4);
  v44 = &v39 - v5;
  v6 = type metadata accessor for PresentSheetAction();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v45 = v11;
  MEMORY[0x28223BE20](v12);
  v41 = &v39 - v13;
  type metadata accessor for MusicAppDestination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v39 - v19;
  v21 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v27 = v26 - v25;
  v28 = type metadata accessor for CollaborationAction();
  v29 = a1;
  sub_216A676B0(a1 + *(v28 + 20), v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_216A67720(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
    sub_216A67788();
    swift_allocError();
    return sub_21700E1E4();
  }

  else
  {
    (*(v23 + 32))(v27, v20, v21);
    (*(v23 + 16))(v17, v27, v21);
    v40 = v17;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ObjectGraph();
    v31 = v41;
    v32 = v42;
    sub_21700E094();
    sub_2169152B0(v17, v10 + *(v6 + 20), type metadata accessor for MusicAppDestination);
    type metadata accessor for ModalActionModelDestinations.Destination();
    swift_storeEnumTagMultiPayload();
    sub_21700D284();
    OUTLINED_FUNCTION_34();
    (*(v33 + 16))(v10, v29);
    v48[3] = v6;
    v48[4] = sub_216A677DC(qword_280E3EA78, type metadata accessor for PresentSheetAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
    sub_2169152B0(v10, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
    v36 = v43;
    v35 = v44;
    v37 = v46;
    (*(v43 + 104))(v44, *MEMORY[0x277D21E18], v46);
    v30 = sub_21700D5E4();
    (*(v36 + 8))(v35, v37);
    sub_216915310(v10, type metadata accessor for PresentSheetAction);
    (*(v45 + 8))(v31, v32);
    sub_216915310(v40, type metadata accessor for MusicAppDestination);
    (*(v23 + 8))(v27, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  return v30;
}

uint64_t sub_216A676B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A67720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216A67788()
{
  result = qword_27CAC0D70;
  if (!qword_27CAC0D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0D70);
  }

  return result;
}

uint64_t sub_216A677DC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for CollaborationActionImplementation.PerformError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_216A678D4()
{
  result = qword_27CAC0D78;
  if (!qword_27CAC0D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0D78);
  }

  return result;
}

uint64_t sub_216A67994@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D80);
  OUTLINED_FUNCTION_1();
  v36 = v3;
  MEMORY[0x28223BE20](v4);
  v35 = &v33 - v5;
  v6 = sub_217009684();
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D88);
  OUTLINED_FUNCTION_1();
  v34 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D90);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  type metadata accessor for ShareMusicItemAction();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D98);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v33 - v24;
  sub_216A67E1C(v16);
  if (OUTLINED_FUNCTION_7_61() == 1)
  {
    sub_2166997CC(v16, &qword_27CAC0D90);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v2);
    v26 = OUTLINED_FUNCTION_5_65(&qword_27CAC0DA0, &qword_27CAC0D88);
    v39 = v8;
    v40 = v26;
    OUTLINED_FUNCTION_2_2();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_18_33();
    sub_2167272C8(v22);
  }

  else
  {
    sub_216A6978C(v16, v19, type metadata accessor for ShareMusicItemAction);
    v27 = sub_217009634();
    MEMORY[0x28223BE20](v27);
    *(&v33 - 2) = v1;
    *(&v33 - 1) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0DB0);
    sub_216A69558();
    sub_217008B94();
    v28 = OUTLINED_FUNCTION_5_65(&qword_27CAC0DA0, &qword_27CAC0D88);
    v29 = v35;
    MEMORY[0x21CE9A570](v12, v8, v28);
    v30 = v36;
    (*(v36 + 16))(v22, v29, v2);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v2);
    v39 = v8;
    v40 = v28;
    OUTLINED_FUNCTION_2_2();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_18_33();
    sub_2167272C8(v22);
    (*(v30 + 8))(v29, v2);
    (*(v34 + 8))(v12, v8);
    sub_216A69A2C(v19, type metadata accessor for ShareMusicItemAction);
  }

  v31 = sub_216A6945C();
  MEMORY[0x21CE9A570](v25, v37, v31);
  return sub_2167272C8(v25);
}

uint64_t sub_216A67E1C@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v2 = sub_21700CFB4();
  v89 = *(v2 - 8);
  v90 = v2;
  MEMORY[0x28223BE20](v2);
  v87 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_21700D704();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v84 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v85 = &v78 - v6;
  v7 = sub_21700D284();
  v92 = *(v7 - 8);
  v93 = v7;
  MEMORY[0x28223BE20](v7);
  v91 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v78 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v78 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v78 - v16;
  v18 = type metadata accessor for ShareURLDescriptor(0);
  MEMORY[0x28223BE20](v18);
  v95 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v94 = &v78 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v78 - v26;
  v28 = sub_217005EF4();
  v97 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v96 = &v78 - v32;
  v33 = type metadata accessor for CuratorDetailHeaderComponentModel();
  sub_216788294(v1 + v33[5], &v101);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  v82 = v30;
  v34 = *(&v100[0] + 1);
  v83 = *&v100[0];
  sub_216681B04(v1 + v33[7], v27, &qword_27CABA820);
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {

    sub_2166997CC(v27, &qword_27CABA820);
LABEL_4:
    v35 = type metadata accessor for ShareMusicItemAction();
    v36 = v98;
    v37 = 1;
    return __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
  }

  v81 = v34;
  v38 = *(v97 + 32);
  v80 = v97 + 32;
  v79 = v38;
  v38(v96, v27, v28);
  sub_216681B04(v1 + v33[8], v14, &qword_27CAB6D60);
  v39 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v14, 1, v39) == 1)
  {
    sub_2166997CC(v14, &qword_27CAB6D60);
    v40 = sub_21700C4B4();
    v41 = v17;
    v42 = 1;
  }

  else
  {
    v43 = sub_21700C4B4();
    (*(*(v43 - 8) + 16))(v17, v14, v43);
    sub_216A69A2C(v14, type metadata accessor for Artwork);
    v41 = v17;
    v42 = 0;
    v40 = v43;
  }

  __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
  v44 = v85;
  sub_216681B04(v1 + v33[12], v11, &qword_27CAB6A00);
  v45 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v11, 1, v45) == 1)
  {
    sub_2166997CC(v11, &qword_27CAB6A00);
    v46 = 23;
  }

  else
  {
    v46 = *v11;
    sub_216A69A2C(v11, type metadata accessor for ContentDescriptor);
  }

  v47 = (v1 + v33[6]);
  v49 = *v47;
  v48 = v47[1];
  v50 = v97;
  v51 = v95;
  (*(v97 + 16))(v95 + v18[7], v96, v28);
  sub_216A699BC(v17, v51);
  *(v51 + v18[5]) = v46;
  v52 = (v51 + v18[6]);
  *v52 = v49;
  v52[1] = v48;
  v53 = v94;
  __swift_storeEnumTagSinglePayload(v94, 1, 1, v28);
  sub_21700DF14();
  sub_21700D6F4();
  v54 = MEMORY[0x277D837D0];
  v102 = MEMORY[0x277D837D0];
  *&v101 = 0x6572616873;
  *(&v101 + 1) = 0xE500000000000000;
  sub_2166EF9C4(&v101, v100);
  v55 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v99 = v55;
  sub_2166EF9D4();
  v56 = v99;
  sub_216681B04(v53, v22, &qword_27CABA820);
  if (__swift_getEnumTagSinglePayload(v22, 1, v28) == 1)
  {
    sub_2166997CC(v22, &qword_27CABA820);
  }

  else
  {
    v57 = v82;
    v79(v82, v22, v28);
    v58 = sub_217005DE4();
    v102 = v54;
    *&v101 = v58;
    *(&v101 + 1) = v59;
    sub_2166EF9C4(&v101, v100);
    swift_isUniquelyReferenced_nonNull_native();
    v99 = v56;
    sub_2166EF9D4();
    v56 = v99;
    (*(v50 + 8))(v57, v28);
  }

  v60 = v81;
  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v61 = sub_21700CF84();
  v62 = __swift_project_value_buffer(v61, qword_280E73DB0);
  v63 = v87;
  MEMORY[0x21CE9DD70](v83, v60, 0x6E6F74747562, 0xE600000000000000, v56, v62);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v64 = v89;
  v65 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_217013DA0;
  v67 = v66 + v65;
  v68 = v90;
  (*(v64 + 16))(v67, v63, v90);
  v69 = v86;
  v70 = v44;
  v71 = v88;
  (*(v86 + 16))(v84, v44, v88);
  v72 = v91;
  sub_21700D244();
  (*(v64 + 8))(v63, v68);
  (*(v69 + 8))(v70, v71);
  sub_2166997CC(v94, &qword_27CABA820);
  (*(v97 + 8))(v96, v28);
  v73 = type metadata accessor for ShareMusicItemAction();
  v74 = *(v73 + 20);
  v75 = v98;
  sub_216A6978C(v95, v98 + v74, type metadata accessor for ShareURLDescriptor);
  v76 = type metadata accessor for ShareableMusicItem(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v75 + v74, 0, 1, v76);
  __swift_storeEnumTagSinglePayload(v75 + *(v73 + 24), 1, 1, v28);
  (*(v92 + 32))(v75, v72, v93);
  v36 = v75;
  v37 = 0;
  v35 = v73;
  return __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
}

uint64_t sub_216A688F4()
{
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0DC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF158);
  sub_216A69688();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF160);
  sub_2166D9530(&qword_27CABF168, &qword_27CABF160);
  swift_getOpaqueTypeConformance2();
  return sub_21700B324();
}

uint64_t sub_216A68A64(uint64_t a1)
{
  v3 = sub_21700D8E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = type metadata accessor for ShareMusicItemAction();
  v12[4] = sub_216A698B4(&qword_27CAB82E0, type metadata accessor for ShareMusicItemAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  sub_216A6972C(a1, boxed_opaque_existential_1, type metadata accessor for ShareMusicItemAction);
  v8 = *(type metadata accessor for CuratorDetailHeaderComponentModel() + 20);
  v11[3] = MEMORY[0x277D84030];
  v11[0] = swift_allocObject();
  sub_216788294(v1 + v8, v11[0] + 16);
  memset(v10, 0, sizeof(v10));
  sub_21700D854();
  sub_2166997CC(v10, &unk_27CABF7A0);
  sub_2166997CC(v11, &unk_27CABF7A0);
  sub_216A69688();
  sub_21700A204();
  (*(v4 + 8))(v6, v3);
  return sub_216A69968(v12);
}

uint64_t sub_216A68C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = sub_21700D8E4();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratorToolbarContent(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = type metadata accessor for ShareMusicItemAction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_216A6972C(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareMusicItemAction);
  sub_216A6972C(v2, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CuratorToolbarContent);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v8 + 80) + v13) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_216A6978C(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for ShareMusicItemAction);
  sub_216A6978C(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for CuratorToolbarContent);
  v21[4] = sub_216A697EC;
  v21[5] = v15;
  v16 = *(type metadata accessor for CuratorDetailHeaderComponentModel() + 20);
  v21[3] = MEMORY[0x277D84030];
  v21[0] = swift_allocObject();
  sub_216788294(v2 + v16, v21[0] + 16);
  memset(v20, 0, sizeof(v20));
  sub_21700D854();
  sub_2166997CC(v20, &unk_27CABF7A0);
  sub_2166997CC(v21, &unk_27CABF7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF160);
  sub_2166D9530(&qword_27CABF168, &qword_27CABF160);
  sub_21700A204();
  (*(v4 + 8))(v6, v19);
}

uint64_t sub_216A68FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for CuratorToolbarContent(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  a3[3] = type metadata accessor for ShareMusicItemAction();
  a3[4] = sub_216A698B4(&qword_27CAB82E0, type metadata accessor for ShareMusicItemAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  sub_216A6972C(a1, boxed_opaque_existential_1, type metadata accessor for ShareMusicItemAction);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF170);
  v11 = v10[11];
  v12 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(a3 + v11, 1, 1, v12);
  sub_216A6972C(a2, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CuratorToolbarContent);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_216A6978C(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for CuratorToolbarContent);
  v15 = v10[12];
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v16 = a3 + v10[13];
  result = swift_getKeyPath();
  *v16 = result;
  v16[40] = 0;
  a3[5] = sub_216A698FC;
  a3[6] = v14;
  a3[7] = 0;
  a3[8] = 0;
  return result;
}

uint64_t sub_216A69224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for MenuActionType();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CuratorDetailHeaderComponentModel();
  sub_216681B04(a1 + *(v10 + 48), v6, &qword_27CAB6A00);
  v11 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    sub_2166997CC(v6, &qword_27CAB6A00);
    v12 = 9;
  }

  else
  {
    v12 = *v6;
    sub_216A69A2C(v6, type metadata accessor for ContentDescriptor);
  }

  *v9 = v12;
  swift_storeEnumTagMultiPayload();
  sub_216A6978C(v9, a2, type metadata accessor for MenuActionType);
  v13 = type metadata accessor for ContextMenuItem();
  *(a2 + v13[5]) = 0;
  *(a2 + v13[6]) = 0;
  v14 = v13[7];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_216A6945C()
{
  result = qword_27CAC0DA8;
  if (!qword_27CAC0DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0D88);
    sub_2166D9530(&qword_27CAC0DA0, &qword_27CAC0D88);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0DA8);
  }

  return result;
}

unint64_t sub_216A69558()
{
  result = qword_27CAC0DB8;
  if (!qword_27CAC0DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0DB0);
    sub_216A69688();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF160);
    sub_2166D9530(&qword_27CABF168, &qword_27CABF160);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0DB8);
  }

  return result;
}

unint64_t sub_216A69688()
{
  result = qword_27CAC0DC0;
  if (!qword_27CAC0DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0DC0);
  }

  return result;
}

uint64_t sub_216A6972C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216A6978C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216A697EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ShareMusicItemAction();
  OUTLINED_FUNCTION_2(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for CuratorToolbarContent(0);
  OUTLINED_FUNCTION_36(v8);
  v10 = v1 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_216A68FFC(v1 + v5, v10, a1);
}

uint64_t sub_216A698B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A698FC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CuratorToolbarContent(0);
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_216A69224(v5, a1);
}

uint64_t sub_216A699BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A69A2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_216A69A80()
{
  sub_2166B0B84();
  if (v0 <= 0x3F)
  {
    sub_2167EE974();
    if (v1 <= 0x3F)
    {
      sub_21680D428();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216A69BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v10[3];
  v13 = v10[4];
  v14 = v10[5];
  v45 = v10[2];
  v11 = v45;
  v46 = v12;
  v47 = v13;
  v48 = v14;
  v15 = sub_217009F14();
  OUTLINED_FUNCTION_1();
  v33 = v16;
  MEMORY[0x28223BE20](v17);
  v31 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v32 = &v29 - v21;
  (*(v6 + 16))(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v20);
  v22 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v11;
  *(v23 + 3) = v12;
  *(v23 + 4) = v13;
  *(v23 + 5) = v14;
  (*(v6 + 32))(&v23[v22], &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v40 = v11;
  v41 = v12;
  v42 = v13;
  v43 = v14;
  v44 = v30;
  v35 = v11;
  v36 = v12;
  v37 = v13;
  v38 = v14;
  v39 = v30;
  v24 = v31;
  sub_217009EF4();
  OUTLINED_FUNCTION_0_126();
  WitnessTable = swift_getWitnessTable();
  v26 = v32;
  sub_2166C24DC(v24, v15, WitnessTable);
  v27 = *(v33 + 8);
  v27(v24, v15);
  sub_2166C24DC(v26, v15, WitnessTable);
  return (v27)(v26, v15);
}

void sub_216A69E78(char a1)
{
  if (a1)
  {
    v1 = type metadata accessor for MenuButton();
    sub_216A69EC0(v1);
  }
}

void sub_216A69EC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2170075A4();
  v74 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v72 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21700CFB4();
  v6 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217005EF4();
  v63 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_21700D704();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v65 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v21 = sub_21700D284();
  MEMORY[0x28223BE20](v21 - 8);
  v64 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_21700CE94();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  sub_216C0C534(&v77);
  if (v78)
  {
    v60 = v24;
    v62 = v4;
    sub_2167B8EF0(&v77, v80);
    v59 = *v2;
    v61 = v2;
    v25 = v2[1];
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v8);
    sub_21700D6F4();
    v78 = MEMORY[0x277D837D0];
    *&v77 = 0x68536E6F69746361;
    *(&v77 + 1) = 0xEB00000000746565;
    sub_2166EF9C4(&v77, v76);
    v26 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v75 = v26;
    sub_2166EF9D4();
    v27 = v75;
    sub_2167DE934(v20, v17);
    v28 = v14;
    if (__swift_getEnumTagSinglePayload(v17, 1, v8) == 1)
    {
      sub_2166997CC(v17, &qword_27CABA820);
    }

    else
    {
      v33 = v25;
      v34 = v63;
      (*(v63 + 32))(v10, v17, v8);
      v35 = sub_217005DE4();
      v78 = MEMORY[0x277D837D0];
      *&v77 = v35;
      *(&v77 + 1) = v36;
      sub_2166EF9C4(&v77, v76);
      swift_isUniquelyReferenced_nonNull_native();
      v75 = v27;
      sub_2166EF9D4();
      v27 = v75;
      (*(v34 + 8))(v10, v8);
      v25 = v33;
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v37 = sub_21700CF84();
    v38 = __swift_project_value_buffer(v37, qword_280E73DB0);
    v39 = v70;
    MEMORY[0x21CE9DD70](v59, v25, 0x6E6F74747562, 0xE600000000000000, v27, v38);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v40 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_217013DA0;
    v42 = v41 + v40;
    v43 = v71;
    (*(v6 + 16))(v42, v39, v71);
    v44 = v68;
    v45 = v69;
    (*(v68 + 16))(v65, v28, v69);
    sub_21700D244();
    (*(v6 + 8))(v39, v43);
    (*(v44 + 8))(v28, v45);
    sub_2166997CC(v20, &qword_27CABA820);
    v46 = v60;
    sub_21700CE84();
    __swift_project_boxed_opaque_existential_1(v80, v80[3]);
    v47 = v67;
    v78 = v67;
    v79 = MEMORY[0x277D21B60];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v77);
    v49 = v66;
    v50 = (*(v66 + 16))(boxed_opaque_existential_1, v46, v47);
    v51 = v72;
    sub_216C0C548(v50, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    sub_217007544();
    (*(v74 + 8))(v51, v62);
    (*(v49 + 8))(v46, v47);
    __swift_destroy_boxed_opaque_existential_1Tm(&v77);
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
  }

  else
  {
    sub_2166997CC(&v77, &qword_27CAB7310);
    if (qword_27CAB5C60 != -1)
    {
      swift_once();
    }

    v29 = sub_217007CA4();
    __swift_project_value_buffer(v29, qword_27CAC0DD0);
    v30 = sub_217007C84();
    v31 = sub_21700ED84();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_216679000, v30, v31, "Attempted to report metrics without performAction available on environment", v32, 2u);
      MEMORY[0x21CEA1440](v32, -1, -1);
    }
  }
}

uint64_t sub_216A6A754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  (*(v11 + 16))();
  sub_2166C24DC(v10, a3, a5);
  v14 = *(v7 + 8);
  v14(v10, a3);
  sub_2166C24DC(v13, a3, a5);
  return (v14)(v13, a3);
}

uint64_t sub_216A6A888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v15 - v11;
  (*(v10 + 32))();
  sub_2166C24DC(v9, a2, a4);
  v13 = *(v6 + 8);
  v13(v9, a2);
  sub_2166C24DC(v12, a2, a4);
  return (v13)(v12, a2);
}

void sub_216A6A9C0(char a1)
{
  type metadata accessor for MenuButton();

  sub_216A69E78(a1);
}

uint64_t sub_216A6AAB4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC0DD0);
  __swift_project_value_buffer(v0, qword_27CAC0DD0);
  return sub_217007C94();
}

uint64_t sub_216A6AC0C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7F)
  {
    if (a2 + 129 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 129) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 130;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v5 >= 0x7E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *sub_216A6ACA0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7E)
  {
    v6 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
          *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_216A6ADC0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216A6AE9C()
{
  result = qword_27CAC0DE8;
  if (!qword_27CAC0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0DE8);
  }

  return result;
}

unint64_t sub_216A6AEF4()
{
  result = qword_27CAC0DF0;
  if (!qword_27CAC0DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0DF0);
  }

  return result;
}

uint64_t sub_216A6AF78@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v59 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v55 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  sub_21700D7A4();
  OUTLINED_FUNCTION_1_84();
  sub_21700CE04();
  v18 = *(v55 + 16);
  v53 = v4;
  v48 = v55 + 16;
  v49 = v18;
  v18(v8, v56, v4);
  v50 = v8;
  sub_21700D734();
  v54 = a1;
  sub_21700CE04();
  v19 = sub_21700CDB4();
  v21 = v20;
  v22 = *(v11 + 8);
  v51 = v11 + 8;
  v52 = v9;
  v22(v14, v9);
  if (v21)
  {
    v23 = type metadata accessor for SongDetailListHeaderLockup();
    v57 = v19;
    v58 = v21;
    v47 = v22;
    sub_21700F364();
    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_1_84();
    sub_21700CE04();
    v24 = v49;
    v25 = v50;
    v26 = v53;
    v49(v50, v56, v53);
    sub_216A6B5D0(qword_280E40390, type metadata accessor for ContentDescriptor);
    OUTLINED_FUNCTION_3_85();
    type metadata accessor for Artwork();
    sub_21700CE04();
    v24(v25, v56, v26);
    v27 = v23;
    sub_216A6B5D0(&qword_280E2BF60, type metadata accessor for Artwork);
    v28 = v59;
    OUTLINED_FUNCTION_3_85();
    v29 = v54;
    sub_21700CE04();
    v30 = sub_21700CDB4();
    v32 = v31;
    v33 = v52;
    v34 = v47;
    v47(v17, v52);
    v35 = (v28 + *(v27 + 24));
    *v35 = v30;
    v35[1] = v32;
    sub_21700CE04();
    v36 = sub_21700CDB4();
    v38 = v37;
    v34(v17, v33);
    v39 = (v28 + *(v27 + 28));
    *v39 = v36;
    v39[1] = v38;
    sub_21700CE04();
    v40 = v56;
    sub_21700D2E4();
    v34(v17, v33);
    sub_21700CE04();
    sub_21700D2E4();
    (*(v55 + 8))(v40, v53);
    v34(v29, v33);
    return (v34)(v17, v33);
  }

  else
  {
    v42 = sub_21700E2E4();
    sub_216A6B5D0(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v44 = v43;
    v45 = type metadata accessor for SongDetailListHeaderLockup();
    *v44 = 25705;
    v44[1] = 0xE200000000000000;
    v44[2] = v45;
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D22530], v42);
    swift_willThrow();
    (*(v55 + 8))(v56, v53);
    v22(v54, v52);
    return sub_2167B0250(v59);
  }
}

uint64_t sub_216A6B5D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ArtistDetailPageIntent()
{
  result = qword_27CAC0E00;
  if (!qword_27CAC0E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A6B6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v51, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44));
  if (v25)
  {
    (*(v8 + 8))(v51, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v51;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for ArtistDetailPageIntent();
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_216A6BA64(JSContext a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v8 = type metadata accessor for ArtistDetailPageIntent();
    sub_2168CC268(v1 + *(v8 + 20), v5);
    v9 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_2168CC2D8(v5);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v5);
    }

    sub_2166F1F64(isa);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216A6BC38(uint64_t a1)
{
  result = sub_2166CE54C(&qword_27CAC0E10, type metadata accessor for ArtistDetailPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A6BCD8(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE54C(&qword_27CAC0E10, type metadata accessor for ArtistDetailPageIntent);
  result = sub_2166CE54C(&qword_27CAC0E18, type metadata accessor for ArtistDetailPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DismissArtistFavoritingTooltipAction()
{
  result = qword_280E2E190;
  if (!qword_280E2E190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A6BDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v21 = v16;
  v22 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v24)
  {
    return (*(v13 + 8))(a1, v25);
  }

  (*(v13 + 8))(a1, v25);
  return (*(v21 + 32))(a3, v19, v22);
}

uint64_t type metadata accessor for UnifiedMessagesRequestAction()
{
  result = qword_280E31D08;
  if (!qword_280E31D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A6C0C4()
{
  sub_21700D284();
  if (v0 <= 0x3F)
  {
    sub_2166D654C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216A6C150@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v70 = a1;
  v72[4] = *MEMORY[0x277D85DE8];
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v67 = v10;
  v68 = v11;
  MEMORY[0x28223BE20](v10);
  v61 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = v55 - v14;
  MEMORY[0x28223BE20](v15);
  v16 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v64 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UnifiedMessagesRequestAction();
  v22 = *(v21 + 24);
  v65 = sub_21700E384();
  v63 = a3;
  *(a3 + v22) = v65;
  sub_21700CE04();
  v23 = v4;
  v24 = v69;
  (*(v6 + 16))(v9, v69, v23);
  v25 = v66;
  sub_21700D224();
  if (v25)
  {
    (*(v6 + 8))(v24, v23);
    (*(v68 + 8))(v70, v67);
  }

  v27 = v61;
  v57 = v22;
  v58 = v16;
  v66 = v21;
  v59 = v6;
  v60 = v23;
  v28 = v63;
  (*(v64 + 32))(v63, v20, v16);
  v29 = v62;
  v30 = v70;
  sub_21700CE04();
  v31 = sub_21700CDB4();
  v33 = v32;
  v34 = v68 + 8;
  v35 = *(v68 + 8);
  v36 = v29;
  v37 = v67;
  v35(v36, v67);
  if (!v33)
  {
    v56 = 0;
    v41 = v28;
    v42 = sub_21700E2E4();
    sub_216A6C8E0(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    *v43 = 0x6E656D6563616C70;
    v44 = v66;
    v43[1] = 0xE900000000000074;
    v43[2] = v44;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D22530], v42);
    swift_willThrow();
    goto LABEL_7;
  }

  v62 = v35;
  v38 = (v28 + *(v66 + 20));
  *v38 = v31;
  v38[1] = v33;
  sub_2170058C4();
  swift_allocObject();
  v39 = sub_2170058B4();
  sub_21700CE04();
  sub_216A6C8E0(&qword_280E2A2B8, MEMORY[0x277D21B10]);
  v40 = sub_2170058A4();
  v46 = v45;
  v55[1] = v39;
  v56 = v33;
  v47 = v40;
  v68 = v34;
  v35 = v62;
  (v62)(v27, v37);
  v48 = objc_opt_self();
  v49 = sub_217005F94();
  v72[0] = 0;
  v50 = [v48 JSONObjectWithData:v49 options:0 error:v72];

  if (!v50)
  {
    v53 = v72[0];
    sub_217005D34();

    swift_willThrow();
    sub_21677A524(v47, v46);

    v41 = v63;
LABEL_7:
    (*(v59 + 8))(v69, v60);
    v35(v30, v37);
    (*(v64 + 8))(v41, v58);
    if (v56)
    {
    }
  }

  v51 = v72[0];
  sub_21700F1E4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  if (swift_dynamicCast())
  {
    v52 = v71;
  }

  else
  {
    v52 = sub_21700E384();
  }

  sub_21677A524(v47, v46);

  v54 = v57;
  (*(v59 + 8))(v69, v60);
  v35(v30, v37);

  *(v63 + v54) = v52;
  return result;
}

uint64_t sub_216A6C8E0(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_216A6C950(uint64_t a1)
{
  sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  type metadata accessor for LibraryAlbumDataSource(0);
  swift_allocObject();
  return sub_2168AF18C(v5);
}

uint64_t sub_216A6CA54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23[0] = a1;
  v23[1] = a2;
  v2 = sub_217006624();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E20);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E28);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  v17 = v23 - v16;
  *v17 = sub_2170093C4();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E30);
  sub_216A6CCC4(&v17[*(v18 + 44)]);
  v19 = sub_21700ACD4();
  v20 = sub_217009C84();
  v21 = &v17[*(v14 + 36)];
  *v21 = v19;
  v21[8] = v20;
  sub_216A6CFA4();
  sub_21700A2A4();
  sub_216697664(v17, &qword_27CAC0E28);
  (*(v4 + 104))(v7, *MEMORY[0x277D26AA8], v2);
  sub_217006494();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_216A6CCC4@<X0>(uint64_t *a1@<X8>)
{
  v13 = type metadata accessor for ContainerDetailTrackListFooterView();
  MEMORY[0x28223BE20](v13);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  type metadata accessor for LibraryAlbumDataSource(0);
  sub_216A6EA10(&qword_27CAC0E50, type metadata accessor for LibraryAlbumDataSource);
  sub_2170081B4();
  v14 = sub_2168B02FC();

  sub_2170081B4();
  v7 = sub_2168B0624();

  v8 = 0;
  if (v7)
  {
    sub_2170081B4();
    v8 = sub_2168B03F0();
  }

  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  v9 = &v6[*(v13 + 20)];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  sub_216A6E958(v6, v3, type metadata accessor for ContainerDetailTrackListFooterView);
  *a1 = v14;
  a1[1] = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E58);
  sub_216A6E958(v3, a1 + *(v10 + 64), type metadata accessor for ContainerDetailTrackListFooterView);
  v11 = a1 + *(v10 + 80);
  *v11 = 0;
  v11[8] = 1;
  sub_21700DF14();

  sub_216A6E9B8(v6, type metadata accessor for ContainerDetailTrackListFooterView);
  sub_216A6E9B8(v3, type metadata accessor for ContainerDetailTrackListFooterView);
}

unint64_t sub_216A6CFA4()
{
  result = qword_27CAC0E38;
  if (!qword_27CAC0E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0E28);
    sub_2166D9530(&qword_27CAC0E40, &qword_27CAC0E48);
    sub_2166D9530(&qword_280E2A840, &qword_27CAB7BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0E38);
  }

  return result;
}

uint64_t sub_216A6D0B4()
{
  v0 = sub_217009714();
  MEMORY[0x28223BE20](v0);
  sub_2170093B4();
  sub_216A6EA10(&qword_280E2A8F0, MEMORY[0x277CE0428]);
  sub_21700F9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E60);
  sub_216A6E6AC();
  return sub_217008014();
}

uint64_t sub_216A6D1EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E90);
  MEMORY[0x28223BE20](v0);
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB430);
  sub_2166D9530(&qword_27CAC0E98, &qword_27CABB430);
  sub_2170075C4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E78);
  sub_2166D9530(&qword_27CAC0EA0, &qword_27CAC0E90);
  sub_216A6E730();
  return sub_21700B154();
}

uint64_t sub_216A6D390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC58);
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB538);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v14[-v11];
  sub_216A6E958(a2, &v14[-v11], type metadata accessor for LibraryAlbumDataSource.HeaderType);
  *&v12[*(v10 + 56)] = a3;
  v15 = v12;
  v16 = a1;
  sub_21700DF14();
  sub_216A6D98C(v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E88);
  sub_216A6E7F4();
  sub_2166D9530(&qword_27CAC0E80, &qword_27CAC0E88);
  sub_21700B194();
  return sub_216697664(v12, &qword_27CABB538);
}

uint64_t sub_216A6D564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB538);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v17 - v8;
  sub_216681B04(a1, v17 - v8, &qword_27CABB538);
  v10 = *&v9[*(v7 + 56)];
  *(a3 + 32) = &type metadata for StaticGridLayout;
  *(a3 + 40) = &off_282933558;
  v11 = swift_allocObject();
  *(a3 + 8) = v11;
  *(v11 + 16) = 1;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 32;
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_21700F3B4();

  v18 = 0xD000000000000010;
  v19 = 0x80000002170873E0;
  v17[1] = a2;
  v12 = sub_21700F784();
  MEMORY[0x21CE9F490](v12);

  v13 = v18;
  v14 = v19;
  *a3 = v10;
  *(a3 + 144) = swift_getKeyPath();
  *(a3 + 152) = 0;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E88) + 92);
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 3;
  *(a3 + 72) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 120) = sub_216A6D790;
  *(a3 + 80) = v13;
  *(a3 + 88) = v14;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  return sub_216A6E9B8(v9, type metadata accessor for LibraryAlbumDataSource.HeaderType);
}

uint64_t sub_216A6D790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700C2F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_2168C032C();
  v9 = sub_21700C2A4();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  type metadata accessor for PlaybackPresenter();
  sub_216A6EA10(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);

  *(a2 + 8) = sub_217008CF4();
  *(a2 + 16) = v12;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = swift_getKeyPath();
  *(a2 + 48) = 0;
  type metadata accessor for AlbumTrackLockupView();
  v16 = 0x4036000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  v16 = 0x4050400000000000;
  sub_2170082B4();
  *a2 = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0EB0);
  v14 = (a2 + *(result + 52));
  *v14 = v9;
  v14[1] = v11;
  return result;
}

uint64_t sub_216A6D98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCA0);
  MEMORY[0x28223BE20](v62);
  v56 = (&v53 - v3);
  v4 = type metadata accessor for DefaultSectionHeader();
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCA8);
  MEMORY[0x28223BE20](v64);
  v65 = &v53 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCB0);
  MEMORY[0x28223BE20](v59);
  v60 = &v53 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC68);
  MEMORY[0x28223BE20](v63);
  v61 = &v53 - v8;
  v54 = type metadata accessor for AlbumTrackLockup();
  MEMORY[0x28223BE20](v54);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB538);
  MEMORY[0x28223BE20](v55);
  v12 = &v53 - v11;
  v13 = type metadata accessor for ComposerHeaderLockupView();
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC78);
  MEMORY[0x28223BE20](v58);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v21 = type metadata accessor for ComposerSectionHeader();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LibraryAlbumDataSource.HeaderType(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216A6E958(a1, v26, type metadata accessor for LibraryAlbumDataSource.HeaderType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_21695EE54();
      return sub_217009554();
    }

    v28 = v57;
    sub_216A6E888(v26, v57, type metadata accessor for DefaultSectionHeader);
    v29 = sub_2170091A4();
    v30 = v56;
    *v56 = v29;
    *(v30 + 8) = 0;
    *(v30 + 16) = 1;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC8);
    sub_216A6E304(v28, v30 + *(v31 + 44));
    sub_216681B04(v30, v60, &qword_27CABDCA0);
    swift_storeEnumTagMultiPayload();
    sub_21695EF0C();
    sub_2166D9530(&qword_27CABDC98, &qword_27CABDCA0);
    v32 = v61;
    sub_217009554();
    sub_216681B04(v32, v65, &qword_27CABDC68);
    swift_storeEnumTagMultiPayload();
    sub_21695EE54();
    sub_217009554();
    sub_216697664(v32, &qword_27CABDC68);
    sub_216697664(v30, &qword_27CABDCA0);
    v33 = type metadata accessor for DefaultSectionHeader;
    v34 = v28;
  }

  else
  {
    v57 = v17;
    v35 = v20;
    sub_216A6E888(v26, v23, type metadata accessor for ComposerSectionHeader);
    v36 = v23;
    sub_216A6E958(v23, v15, type metadata accessor for ComposerSectionHeader);
    v15[*(v13 + 20)] = 0;
    sub_216681B04(a1, v12, &qword_27CABB538);
    v37 = *&v12[*(v55 + 48)];
    v38 = v15;
    v39 = v12;
    if (sub_2166BF3C8(v37))
    {
      sub_216C746F0(0);
      v40 = v35;
      v41 = v57;
      if ((v37 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CEA0220](0, v37);
      }

      else
      {
      }

      v42 = v10;
      v43 = v54;

      sub_2168ABD3C();

      sub_216681B04(v42 + *(v43 + 92), &v67, &qword_27CAB6DB0);
      sub_216A6E9B8(v42, type metadata accessor for AlbumTrackLockup);
      sub_216A6E9B8(v39, type metadata accessor for LibraryAlbumDataSource.HeaderType);
      v44 = v36;
    }

    else
    {

      sub_216A6E9B8(v12, type metadata accessor for LibraryAlbumDataSource.HeaderType);
      v67 = 0u;
      v68 = 0u;
      v69 = 0;
      v40 = v35;
      v44 = v36;
      v41 = v57;
    }

    v46 = v41 + *(v58 + 36);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC90);
    sub_217008AC4();
    v48 = v68;
    *v46 = v67;
    *(v46 + 16) = v48;
    *(v46 + 32) = v69;
    *(v46 + 40) = 0u;
    *(v46 + 56) = 0u;
    *(v46 + 72) = 0;
    v49 = (v46 + v47[11]);
    *v49 = 0;
    v49[1] = 0;
    v50 = v47[12];
    *(v46 + v50) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    swift_storeEnumTagMultiPayload();
    v51 = v46 + v47[13];
    *v51 = swift_getKeyPath();
    *(v51 + 40) = 0;
    sub_216A6E888(v38, v41, type metadata accessor for ComposerHeaderLockupView);
    sub_216A6E8E8(v41, v40);
    sub_216681B04(v40, v60, &qword_27CABDC78);
    swift_storeEnumTagMultiPayload();
    sub_21695EF0C();
    sub_2166D9530(&qword_27CABDC98, &qword_27CABDCA0);
    v52 = v61;
    sub_217009554();
    sub_216681B04(v52, v65, &qword_27CABDC68);
    swift_storeEnumTagMultiPayload();
    sub_21695EE54();
    sub_217009554();
    sub_216697664(v52, &qword_27CABDC68);
    sub_216697664(v40, &qword_27CABDC78);
    v33 = type metadata accessor for ComposerSectionHeader;
    v34 = v44;
  }

  return sub_216A6E9B8(v34, v33);
}

uint64_t sub_216A6E304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DefaultSectionHeaderView();
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  sub_21700B3B4();
  sub_2170083C4();
  v11 = v27;
  v12 = v29;
  v13 = v31;
  v25 = v32;
  v35 = 1;
  v34 = v28;
  v33 = v30;
  sub_216A6E958(a1, v10, type metadata accessor for DefaultSectionHeader);
  v14 = v5[7];
  *&v10[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  swift_storeEnumTagMultiPayload();
  v15 = &v10[v5[8]];
  *v15 = swift_getKeyPath();
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  v15[32] = 0;
  v16 = v5[9];
  *&v10[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  v17 = v5[10];
  *&v10[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCD0);
  swift_storeEnumTagMultiPayload();
  v26 = 0x402E000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  v26 = 0x402A000000000000;
  sub_2170082B4();
  v26 = 0x4038000000000000;
  sub_2170082B4();
  LOBYTE(v17) = v35;
  v18 = v34;
  v19 = v33;
  sub_216A6E958(v10, v7, type metadata accessor for DefaultSectionHeaderView);
  *a2 = 0;
  *(a2 + 8) = v17;
  *(a2 + 16) = v11;
  *(a2 + 24) = v18;
  *(a2 + 32) = v12;
  *(a2 + 40) = v19;
  v20 = v25;
  *(a2 + 48) = v13;
  *(a2 + 56) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCD8);
  sub_216A6E958(v7, a2 + *(v21 + 48), type metadata accessor for DefaultSectionHeaderView);
  v22 = a2 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_216A6E9B8(v10, type metadata accessor for DefaultSectionHeaderView);
  return sub_216A6E9B8(v7, type metadata accessor for DefaultSectionHeaderView);
}

uint64_t sub_216A6E618(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0EA8) + 48);
  v3 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB538) + 48));

  return sub_216A6D390(v1, v2, v3);
}

unint64_t sub_216A6E6AC()
{
  result = qword_27CAC0E68;
  if (!qword_27CAC0E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0E60);
    sub_216A6E730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0E68);
  }

  return result;
}

unint64_t sub_216A6E730()
{
  result = qword_27CAC0E70;
  if (!qword_27CAC0E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0E78);
    sub_216A6E7F4();
    sub_2166D9530(&qword_27CAC0E80, &qword_27CAC0E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0E70);
  }

  return result;
}

unint64_t sub_216A6E7F4()
{
  result = qword_27CABDC50;
  if (!qword_27CABDC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC58);
    sub_21695EE54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDC50);
  }

  return result;
}

uint64_t sub_216A6E888(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216A6E8E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A6E958(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216A6E9B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216A6EA10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A6EA84()
{
  v1 = v0;
  v2 = sub_21700D8E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0EC8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v9 = (v24 - v8);
  v10 = v0[3];
  v11 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v10);
  (*(v11 + 16))(v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0ED0);
  v13 = v12[11];
  v14 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v9 + v13, 1, 1, v14);
  v15 = v12[12];
  *(v9 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v16 = v9 + v12[13];
  *v16 = swift_getKeyPath();
  v16[40] = 0;
  v9[7] = 0;
  v9[8] = 0;
  v9[5] = sub_216A6EDA8;
  v9[6] = 0;
  KeyPath = swift_getKeyPath();
  v18 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0ED8) + 36);
  *v18 = KeyPath;
  v18[8] = 0;
  v19 = sub_21700AC54();
  v20 = sub_21700B3B4();
  v21 = v9 + *(v6 + 36);
  *v21 = v19;
  *(v21 + 4) = 256;
  *(v21 + 2) = v20;
  *(v21 + 3) = v22;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v25[3] = MEMORY[0x277D84030];
  v25[0] = swift_allocObject();
  sub_21700D314();
  memset(v24, 0, sizeof(v24));
  sub_21700D854();
  sub_216697664(v24, &unk_27CABF7A0);
  sub_216697664(v25, &unk_27CABF7A0);
  sub_216A6F0F4();
  sub_21700A204();
  (*(v3 + 8))(v5, v2);
  return sub_216728A50(v9);
}

uint64_t sub_216A6EDA8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_217008844();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F08);
  MEMORY[0x28223BE20](v27);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F10);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = (&v25 - v8);
  v26 = sub_21700ADB4();
  v25 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  sub_217009D54();
  sub_217009DC4();
  v11 = sub_217009E34();

  v12 = swift_getKeyPath();
  v13 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F18) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820) + 28);
  v15 = *MEMORY[0x277CE1048];
  v16 = sub_21700ADF4();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  v17 = v25;
  *v9 = v26;
  v9[1] = KeyPath;
  v9[2] = v17;
  v9[3] = v12;
  v9[4] = v11;
  v18 = swift_getKeyPath();
  v19 = (v9 + *(v7 + 44));
  *v19 = v18;
  v19[1] = 0x3FE0000000000000;
  sub_21700B3B4();
  sub_2170083C4();
  sub_216A6F2E4(v9, v5);
  v20 = v28;
  v21 = &v5[*(v27 + 36)];
  v22 = v32;
  *v21 = v31;
  *(v21 + 1) = v22;
  *(v21 + 2) = v33;
  v23 = v29;
  (*(v20 + 104))(v3, *MEMORY[0x277CDF9E8], v29);
  sub_216A6F354();
  sub_21700A5A4();
  (*(v20 + 8))(v3, v23);
  return sub_216697664(v5, &qword_27CAC0F08);
}

unint64_t sub_216A6F0F4()
{
  result = qword_27CAC0EE0;
  if (!qword_27CAC0EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0EC8);
    sub_216A6F1AC();
    sub_2166D9530(&qword_27CAC0EF8, &qword_27CAC0F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0EE0);
  }

  return result;
}

unint64_t sub_216A6F1AC()
{
  result = qword_27CAC0EE8;
  if (!qword_27CAC0EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0ED8);
    sub_2166D9530(&qword_27CAC0EF0, &qword_27CAC0ED0);
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0EE8);
  }

  return result;
}

uint64_t sub_216A6F290@<X0>(void *a1@<X8>)
{
  result = sub_217008F44();
  *a1 = v3;
  return result;
}

uint64_t sub_216A6F2E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216A6F354()
{
  result = qword_27CAC0F20;
  if (!qword_27CAC0F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0F08);
    sub_216A6F3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0F20);
  }

  return result;
}

unint64_t sub_216A6F3E0()
{
  result = qword_27CAC0F28;
  if (!qword_27CAC0F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0F10);
    sub_216A6F498();
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0F28);
  }

  return result;
}

unint64_t sub_216A6F498()
{
  result = qword_27CAC0F30;
  if (!qword_27CAC0F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0F18);
    sub_216A6F550();
    sub_2166D9530(&qword_280E2A710, &qword_27CAB7820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0F30);
  }

  return result;
}

unint64_t sub_216A6F550()
{
  result = qword_27CAC0F38;
  if (!qword_27CAC0F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0F40);
    sub_216A6F608();
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0F38);
  }

  return result;
}

unint64_t sub_216A6F608()
{
  result = qword_27CAC0F48;
  if (!qword_27CAC0F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0F50);
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0F48);
  }

  return result;
}

id sub_216A6F6C0(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    sub_21700F494();
    v6 = (a2 + 40);
    do
    {
      v7 = *v6;
      v11[0] = *(v6 - 1);
      v11[1] = v7;
      sub_21700DF14();
      sub_21700DCD4();

      sub_21700F464();
      sub_21700F4A4();
      sub_21700F4B4();
      sub_21700F474();
      v6 += 2;
      --v3;
    }

    while (v3);
    v4 = v12;
  }

  sub_216685F4C(0, &qword_280E29B58);
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0FA8);
  v11[0] = v4;
  sub_21700DF14();
  v8 = a1;
  result = sub_2166F1E10(v11, a1);
  if (result)
  {
    v10 = result;

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_216A6F814(objc_class *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = objc_opt_self();
  result = [v6 valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = result;
  LOBYTE(v17) = *v1;
  sub_21700DD04();
  sub_21700F0B4();
  LOBYTE(v17) = v1[2];
  sub_21700DD04();
  sub_21700F0B4();
  LOBYTE(v17) = v1[1];
  sub_21700DD04();
  sub_21700F0B4();
  LOBYTE(v17) = v1[3];
  sub_21700DD04();
  sub_21700F0B4();
  v9 = type metadata accessor for JSUserSocialProfile(0);
  sub_2166A6E54(&v1[v9[8]], v5, &qword_27CAB6D60);
  v10 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v5, 1, v10) == 1)
  {
    sub_216697664(v5, &qword_27CAB6D60);
    if ([v6 valueWithUndefinedInContext_])
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v11.super.isa = a1;
  sub_216C7D280(v11);
  sub_216A72FCC(v5, type metadata accessor for Artwork);
LABEL_6:
  sub_21700F0B4();
  v12 = &v1[v9[10]];
  v13 = v12[1];
  if (v13)
  {
    v17 = *v12;
    v18 = v13;
    sub_21700DF14();
    sub_21700DD04();

    goto LABEL_9;
  }

  result = [v6 valueWithUndefinedInContext_];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_9:
  sub_21700F0B4();
  v14 = &v1[v9[9]];
  v15 = v14[1];
  if (v15)
  {
    v17 = *v14;
    v18 = v15;
    sub_21700DF14();
    sub_21700DD04();

    goto LABEL_12;
  }

  result = [v6 valueWithUndefinedInContext_];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_12:
  sub_21700F0B4();
  if ((v1[v9[11] + 8] & 1) == 0)
  {
LABEL_15:
    Int.makeValue(in:)(a1);
    goto LABEL_16;
  }

  if (![v6 valueWithUndefinedInContext_])
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  sub_21700F0B4();
  v16 = *&v1[v9[12]];
  if (v16)
  {
    sub_216A6F6C0(a1, v16);
LABEL_19:
    sub_21700F0B4();
    LOBYTE(v17) = v1[v9[13]];
    sub_21700DD04();
    sub_21700F0B4();
    LOBYTE(v17) = v1[v9[14]];
    sub_21700DD04();
    sub_21700F0B4();
    return v8;
  }

  result = [v6 valueWithUndefinedInContext_];
  if (result)
  {
    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t (*sub_216A6FD0C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_216A72B80;
}

uint64_t sub_216A6FD70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F88);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_21700CCA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingProfileFetchResolution;
  swift_beginAccess();
  sub_2166A6E54(v0 + v11, v3, &qword_27CAC0F88);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    return sub_216697664(v3, &qword_27CAC0F88);
  }

  v13 = *(v5 + 32);
  v13(v10, v3, v4);
  (*(v5 + 16))(v7, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v13((v15 + v14), v7, v4);
  *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v0;
  v16 = v0;
  sub_216A72074(sub_216A729F4, v15);

  return (*(v5 + 8))(v10, v4);
}

uint64_t (*sub_216A6FFD4(void *a1))(void *a1)
{
  v1 = sub_216A6FD0C(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_216856F1C;
}

char *sub_216A7009C(objc_class *a1, uint64_t a2)
{
  v59 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v48 - v4;
  v57 = type metadata accessor for JSUserSocialProfile(0);
  MEMORY[0x28223BE20](v57);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a2;
  v8 = *(a2 + OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_userSocialProfileCoordinator);
  v9 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock;
  v10 = *&v8[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v11 = *(v10 + 16);
  v12 = v8;
  os_unfair_lock_lock(v11);
  v13 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile;
  v14 = *&v12[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v15 = *(v10 + 16);
  v16 = v14;
  os_unfair_lock_unlock(v15);

  if (!v14)
  {
    v20 = [objc_opt_self() valueWithNullInContext_];
    if (v20)
    {
      return v20;
    }

    __break(1u);
    goto LABEL_6;
  }

  v54 = v12[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded];
  v53 = [v16 isVerified];
  v55 = v16;
  v52 = [v16 isPrivate];
  v51 = v12[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isCollaborationAllowed];
  v17 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_artwork;
  swift_beginAccess();
  v56 = v5;
  sub_2166A6E54(&v12[v17], v5, &qword_27CAB6D60);
  v18 = *&v8[v9];
  v19 = *(v18 + 16);
  v20 = v12;
  os_unfair_lock_lock(v19);
  v21 = *&v12[v13];
  v22 = *(v18 + 16);
  v23 = v21;
  os_unfair_lock_unlock(v22);

  if (!v21)
  {
LABEL_6:
    v49 = 0;
    v50 = 0;
    goto LABEL_7;
  }

  v24 = sub_2167DEA8C(v23);
  v49 = v25;
  v50 = v24;
LABEL_7:
  v26 = *&v8[v9];
  v27 = *(v26 + 16);
  v28 = v20;
  os_unfair_lock_lock(v27);
  v29 = *&v12[v13];
  v30 = *(v26 + 16);
  v31 = v29;
  os_unfair_lock_unlock(v30);

  if (v29)
  {
    v32 = sub_216A72AB8(v31);
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = sub_216CAD29C();
  swift_beginAccess();
  v36 = sub_21700DF14();
  v37 = sub_216AB4158(v36);
  v38 = v28[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isContactCheckAllowed];
  v39 = v28[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isDiscoverableByContact];
  v40 = v53;
  *v7 = v54;
  v7[1] = v40;
  v41 = v51;
  v7[2] = v52;
  v7[3] = v41;
  v42 = v57;
  sub_216A72F5C(v56, &v7[*(v57 + 32)]);
  v43 = &v7[v42[9]];
  v44 = v49;
  *v43 = v50;
  *(v43 + 1) = v44;
  v45 = &v7[v42[10]];
  *v45 = v32;
  v45[1] = v34;
  v46 = &v7[v42[11]];
  *v46 = v35;
  v46[8] = 0;
  *&v7[v42[12]] = v37;
  v7[v42[13]] = v38;
  v7[v42[14]] = v39;
  v20 = sub_216A6F814(v59);

  sub_216A72FCC(v7, type metadata accessor for JSUserSocialProfile);
  return v20;
}

uint64_t sub_216A70470()
{
  sub_216685F4C(0, &qword_280E29AF8);
  v0 = sub_21700F124();
  v1 = sub_21700F134();

  return v1;
}

char *sub_216A704E4(void *a1, void *a2)
{
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0FA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = sub_21700E314();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  sub_21700D904();
  v16 = MEMORY[0x21CE9E710]();
  if (!v16)
  {
    v19 = "cialProfileCoordinator";
    sub_21700E0D4();
    sub_216A72BF8(&qword_27CABE188, MEMORY[0x277D22430]);
    swift_allocError();
    sub_21700E0A4();
    swift_willThrow();
    return v19;
  }

  v17 = v16;
  v25 = v5;
  v18 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingProfileFetch;
  swift_beginAccess();
  sub_2166A6E54(a2 + v18, v8, &qword_27CAC0FA0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v15, v8, v9);
    v12 = v15;
LABEL_8:
    v19 = sub_21700E304();

    (*(v10 + 8))(v12, v9);
    return v19;
  }

  sub_216697664(v8, &qword_27CAC0FA0);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = v17;
  v20 = v26;
  v21 = a2;

  v22 = v27;
  sub_21700E2F4();
  if (!v22)
  {
    v23 = v25;
    (*(v10 + 16))(v25, v12, v9);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v9);
    swift_beginAccess();
    sub_2168BB274(v23, a2 + v18, &qword_27CAC0FA0);
    swift_endAccess();
    goto LABEL_8;
  }

  return v19;
}

uint64_t sub_216A708A0(uint64_t a1, uint64_t (*a2)(), uint64_t a3, void *a4, uint64_t a5)
{
  v47 = a5;
  v42 = a3;
  v45 = a2;
  v7 = sub_21700CCA4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v48 = &v36 - v11;
  v49 = sub_21700CE24();
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2166B8854(1);
  sub_21700CE14();
  v14 = *(v8 + 16);
  v41 = v14;
  v37 = v7;
  v14(v12, v45, v7);
  v15 = v44;
  v14(v44, a3, v7);
  v16 = *(v8 + 80);
  v17 = (v16 + 24) & ~v16;
  v43 = v17 + v9;
  v40 = v17;
  v18 = (v17 + v9 + v16) & ~v16;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  v20 = *(v8 + 32);
  v39 = v20;
  v21 = v19 + v17;
  v22 = v37;
  v20(v21, v48, v37);
  v20(v19 + v18, v15, v22);
  v23 = v38;
  v24 = sub_216A70F88(v38, sub_216A72C5C, v19);
  v44 = v25;
  v45 = v24;
  v26 = a4;

  v27 = *(v51 + 8);
  v51 += 8;
  v27(v23, v49);
  sub_21700CE14();
  v28 = v48;
  v41(v48, v42, v22);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  v39(v29 + v40, v28, v22);
  v30 = sub_216A710EC(v23, sub_216A72CE4, v29);
  v32 = v31;
  v33 = v26;

  v27(v23, v49);
  v34 = swift_allocObject();
  *(v34 + 16) = v30;
  *(v34 + 24) = v32;
  v50[3] = sub_21700D904();
  v50[4] = MEMORY[0x277D22078];
  v50[0] = v47;

  sub_21700E1C4();

  return __swift_destroy_boxed_opaque_existential_1Tm(v50);
}

void sub_216A70CB8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[5] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0FA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v22 - v12;
  v14 = *a1;
  v15 = sub_21700E314();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v15);
  v16 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingProfileFetch;
  swift_beginAccess();
  sub_2168BB274(v13, a2 + v16, &qword_27CAC0FA0);
  swift_endAccess();
  switch(v14)
  {
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_217013DA0;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 32) = 0xD00000000000001BLL;
      *(v20 + 40) = 0x80000002170875A0;
      goto LABEL_5;
    case 3:
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_217013DA0;
      *(v17 + 56) = MEMORY[0x277D84F78] + 8;
LABEL_5:
      v21 = sub_21700CC94();

      if (!v4)
      {
      }

      break;
    default:
      v18 = sub_21700CCA4();
      (*(*(v18 - 8) + 16))(v10, a3, v18);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v18);
      v19 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingProfileFetchResolution;
      swift_beginAccess();
      sub_2168BB274(v10, a2 + v19, &qword_27CAC0F88);
      swift_endAccess();
      break;
  }
}

uint64_t (*sub_216A70F88(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  ObjectType = swift_getObjectType();
  v7 = sub_21700CE24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

  return sub_216A72EA0;
}

uint64_t (*sub_216A710EC(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v7 = sub_21700CE24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

  return sub_216A72B30;
}

uint64_t (*sub_216A71250(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v7 = sub_21700CE24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

  return sub_216A72B30;
}

void sub_216A713B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0FA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  v7 = sub_21700E314();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingProfileFetch;
  swift_beginAccess();
  sub_2168BB274(v6, a2 + v8, &qword_27CAC0FA0);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_217013DA0;
  swift_getErrorValue();
  v10 = v14[1];
  v11 = v15;
  *(v9 + 56) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v9 + 32));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v10, v11);
  v13 = sub_21700CC94();

  if (!v2)
  {
  }
}

uint64_t sub_216A715C4(void *a1, uint64_t a2)
{
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0FA0);
  MEMORY[0x28223BE20](v3 - 8);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = sub_21700E314();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingIsCloudAndMediaAccountIdenticalFetch;
  swift_beginAccess();
  sub_2166A6E54(a2 + v15, v7, &qword_27CAC0FA0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_216697664(v7, &qword_27CAC0FA0);
    v16 = swift_allocObject();
    v17 = v23;
    *(v16 + 16) = v23;
    v18 = v17;
    v19 = v24;
    sub_21700E2F4();
    if (v19)
    {
      return a2;
    }

    v20 = v22;
    (*(v9 + 16))(v22, v11, v8);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v8);
    swift_beginAccess();
    sub_2168BB274(v20, a2 + v15, &qword_27CAC0FA0);
    swift_endAccess();
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v11 = v14;
  }

  a2 = sub_21700E304();
  (*(v9 + 8))(v11, v8);
  return a2;
}

void sub_216A718A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v7 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];
  v8 = *MEMORY[0x277CED1A0];
  v9 = [v7 accountForService_];
  if (!v9)
  {
LABEL_11:
    v25 = sub_21700CC94();

    if (!v4)
    {
    }

    return;
  }

  v10 = v9;
  v47 = a4;
  v11 = *MEMORY[0x277CED1C0];
  v12 = [v7 accountForService_];
  if (!v12)
  {

    goto LABEL_11;
  }

  v48 = v12;
  v13 = [v7 altDSIDForAccount:v10 service:v8];
  if (v13)
  {
    v14 = v13;
    v45 = sub_21700E514();
    v16 = v15;

    v17 = [v7 altDSIDForAccount:v48 service:v11];
    if (v17)
    {
      v18 = v17;
      v19 = sub_21700E514();
      v21 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_217013DA0;
      if (v45 == v19 && v16 == v21)
      {
        v24 = 1;
      }

      else
      {
        v24 = sub_21700F7D4();
      }

      v38 = [objc_opt_self() valueWithBool:v24 & 1 inContext:v47];
      if (v38)
      {
        v39 = v38;

        *(v22 + 56) = sub_216685F4C(0, &qword_280E29B58);
        *(v22 + 32) = v39;
        v40 = sub_21700CC94();
        if (v4)
        {

          return;
        }

        v41 = v40;

LABEL_32:

        return;
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  v26 = [v7 DSIDForAccount:v10 service:{v8, v45}];
  if (v26)
  {
    v27 = v26;
    v46 = sub_21700E514();
    v29 = v28;

    v30 = [v7 DSIDForAccount:v48 service:v11];
    if (v30)
    {
      v31 = v30;
      v32 = sub_21700E514();
      v34 = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_217013DA0;
      if (v46 == v32 && v29 == v34)
      {
        v37 = 1;
      }

      else
      {
        v37 = sub_21700F7D4();
      }

      v43 = [objc_opt_self() valueWithBool:v37 & 1 inContext:v47];
      if (v43)
      {
        v44 = v43;

        *(v35 + 56) = sub_216685F4C(0, &qword_280E29B58);
        *(v35 + 32) = v44;
        v41 = sub_21700CC94();

        if (v4)
        {
          return;
        }

        goto LABEL_32;
      }

LABEL_35:
      __break(1u);
      return;
    }
  }

  v42 = sub_21700CC94();

  if (!v4)
  {
  }
}

uint64_t sub_216A71D80()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC0F58);
  __swift_project_value_buffer(v0, qword_27CAC0F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F98);
  sub_21700E5B4();
  return sub_217007C94();
}

id (*sub_216A71E2C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_216A72B78;
}

id sub_216A71E90(void *a1)
{
  v1 = [a1 self];

  return v1;
}

uint64_t sub_216A71EC4@<X0>(void **a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = sub_216A71E2C(*a1);
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_216A72B48;
  a2[1] = result;
  return result;
}

uint64_t sub_216A71F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_217013DA0;
  *(v8 + 56) = MEMORY[0x277D84F78] + 8;
  v9 = sub_21700CC84();

  if (!v3)
  {

    v11 = sub_21700CCA4();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
    v12 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingProfileFetchResolution;
    swift_beginAccess();
    sub_2168BB274(v7, a3 + v12, &qword_27CAC0F88);
    return swift_endAccess();
  }

  return result;
}

void sub_216A72074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBA0);
  sub_21700D4B4();
  v7 = v16[0];
  if (v16[0] >= 2uLL)
  {
    sub_216E4F1A8();
    v12 = swift_allocObject();
    v12[2] = v2;
    v12[3] = a1;
    v12[4] = a2;
    *(swift_allocObject() + 16) = ObjectType;
    v13 = sub_216685F4C(0, &qword_280E29CD0);
    v14 = v3;

    v15 = sub_21700EE84();
    v16[3] = v13;
    v16[4] = MEMORY[0x277D225C0];
    v16[0] = v15;
    sub_21700E1C4();

    sub_216A59A7C(v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    if (qword_27CAB5C68 != -1)
    {
      swift_once();
    }

    v8 = sub_217007CA4();
    __swift_project_value_buffer(v8, qword_27CAC0F58);
    v9 = sub_217007C84();
    v10 = sub_21700ED84();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_216679000, v9, v10, "Failed to dispatch block onto JS Thread. Stack manager is not available.", v11, 2u);
      MEMORY[0x21CEA1440](v11, -1, -1);
    }
  }
}

uint64_t sub_216A722A0(char a1, uint64_t (*a2)(char *, double))
{
  v4 = sub_21700CE24();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = a1;
  return a2(&v7, v5);
}

uint64_t sub_216A725A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21700CE24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE14();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = sub_216A71250(v9, sub_216A72A8C, v10);
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  sub_21700E104();
}

void sub_216A72734(void *a1)
{
  if (qword_27CAB5C68 != -1)
  {
    swift_once();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_27CAC0F58);
  v3 = a1;
  oslog = sub_217007C84();
  v4 = sub_21700ED84();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_21700F884();
    v9 = sub_2166A85FC(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_216679000, oslog, v4, "Failed to dispatch block onto JS Thread %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x21CEA1440](v6, -1, -1);
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_216A729F4()
{
  v2 = OUTLINED_FUNCTION_4_71();
  OUTLINED_FUNCTION_2(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  return sub_216A71F28(v1, v0 + v7, *(v0 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_216A72AB8(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21700E514();

  return v3;
}

uint64_t sub_216A72B48@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_216A72BF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_216A72C5C()
{
  v2 = OUTLINED_FUNCTION_4_71();
  OUTLINED_FUNCTION_2(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  sub_216A70CB8(v1, *(v0 + 16), v0 + ((v7 + 24) & ~v7), v0 + ((*(v6 + 64) + v7 + ((v7 + 24) & ~v7)) & ~v7));
}

uint64_t sub_216A72D48(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = sub_21700CE24();
  OUTLINED_FUNCTION_2(v2);
  v3 = OUTLINED_FUNCTION_3_86();

  return a2(v3);
}

uint64_t objectdestroy_20Tm_0()
{
  v1 = sub_21700CE24();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_216A72EA0()
{
  v0 = sub_21700CE24();
  OUTLINED_FUNCTION_2(v0);
  v1 = OUTLINED_FUNCTION_3_86();

  return sub_216A72B28(v1, v2);
}

uint64_t sub_216A72F5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A72FCC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_216A7304C()
{
  sub_2166EED8C(319, &qword_280E2BF20, type metadata accessor for Artwork);
  if (v0 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070);
    if (v1 <= 0x3F)
    {
      sub_216688560(319, &qword_280E29DA0);
      if (v2 <= 0x3F)
      {
        sub_2166CF478();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216A73178@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a3;
  v60 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  v59 = &v51 - v6;
  v58 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v56 = v7;
  MEMORY[0x28223BE20](v8);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20);
  v23 = OUTLINED_FUNCTION_36(v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v51 - v24;
  v26 = a1;
  sub_21700CE04();
  sub_21700CCB4();
  v27 = *(v12 + 8);
  v27(v21, v10);
  v28 = sub_21700D3E4();
  if (__swift_getEnumTagSinglePayload(v25, 1, v28) == 1)
  {
    sub_2166997CC(v25, &qword_27CAB7D20);
LABEL_7:
    v30 = 0xE800000000000000;
    v31 = v26;
    v35 = 0x73746E65746E6F63;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
  v29 = sub_21700D3D4();
  (*(*(v28 - 8) + 8))(v25, v28);
  if (!v29)
  {
    goto LABEL_7;
  }

  v54 = v29;
  v30 = 0xEB00000000687361;
  v31 = v26;
  sub_21700CE04();
  v32 = sub_21700CDB4();
  v34 = v33;
  v27(v18, v10);
  if (v34)
  {
    v52 = v32;
    v53 = v34;
    v30 = 0xEE00657461446E6FLL;
    v35 = 0x6974617269707865;
    sub_21700CE04();
    v36 = v59;
    sub_21700CD54();
    v27(v15, v10);
    v37 = v58;
    if (__swift_getEnumTagSinglePayload(v36, 1, v58) != 1)
    {
      sub_21700CF34();
      OUTLINED_FUNCTION_9_0();
      (*(v44 + 8))(v60);
      v27(v31, v10);
      v45 = v36;
      v46 = v55;
      v47 = *(v56 + 32);
      v47(v55, v45, v37);
      v48 = type metadata accessor for SocialBadgingMap();
      v49 = v57;
      *(v57 + *(v48 + 24)) = v54;
      v50 = v53;
      *v49 = v52;
      v49[1] = v50;
      return (v47)(v49 + *(v48 + 20), v46, v37);
    }

    sub_2166997CC(v36, &qword_27CAB74E8);
  }

  else
  {

    v35 = 0x486E6F6973726576;
  }

LABEL_8:
  v38 = sub_21700E2E4();
  sub_2167B1EA4();
  swift_allocError();
  v40 = v39;
  v41 = type metadata accessor for SocialBadgingMap();
  *v40 = v35;
  v40[1] = v30;
  v40[2] = v41;
  (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D22530], v38);
  swift_willThrow();
  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v42 + 8))(v60);
  return (v27)(v31, v10);
}

uint64_t sub_216A73704(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    return 0;
  }

  v5 = *(a1 + 80);
  v6 = *(v2 + *(type metadata accessor for SocialBadgingMap() + 24));
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_2166AF66C(v5, v3);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  sub_21700DF14();
  v10 = sub_216A73848(a2, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if ((v15 & 1) == 0)
  {
LABEL_5:
    sub_216A73A2C(v10, v12, v14, v16);
    v18 = v17;
LABEL_14:
    swift_unknownObjectRelease();
    return v18;
  }

  sub_21700F7E4();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = MEMORY[0x277D84F90];
  }

  v21 = *(v20 + 16);

  if (__OFSUB__(v16 >> 1, v14))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v21 != (v16 >> 1) - v14)
  {
LABEL_16:
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v18 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v18)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  return v18;
}

uint64_t sub_216A73848(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_216A73F58(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_216A73E00(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_216A738DC(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_21700F5A4();

    return v10;
  }

  v4 = sub_2166BF3C8(a2);
  v5 = sub_216A73F58(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_216A73DA8(0, a2);
  sub_216A73DA8(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_216A73F14();
    sub_21700DF14();
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_21700F3E4();
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
    sub_21700DF14();
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

void sub_216A73A2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_1(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

size_t sub_216A73AFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_216AB8C70();
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  OUTLINED_FUNCTION_36(Friends);
  sub_216ABD618();
  v5 = v4;
  sub_21700DF14();
  sub_216687978();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

void sub_216A73BEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_216AB8BD0((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      sub_21700C4B4();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_216A73CCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_1(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_216A73F14();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_216A73DA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_21700F2B4();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

unint64_t sub_216A73E00(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_21700DF14();
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_216A73E6C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = sub_21700C4B4();
    OUTLINED_FUNCTION_36(v5);
    return sub_21700DF14();
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_216A73F14()
{
  result = qword_280E29D90;
  if (!qword_280E29D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29D90);
  }

  return result;
}

uint64_t sub_216A73F58(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_216A73FA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v49 = a3;
  v56 = a2;
  v6 = sub_21700CB64();
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CBE4();
  OUTLINED_FUNCTION_1();
  v52 = v10;
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v50 = v11;
  MEMORY[0x28223BE20](v12);
  v51 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v18 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v47 = v22;
  v24 = MEMORY[0x28223BE20](v23);
  v48 = &v46 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v46 - v26;
  v28 = sub_21700E064();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a4;
  *a4 = a1;
  v34 = a1;
  sub_21700E054();
  v35 = sub_21700E044();
  v37 = v36;
  (*(v30 + 8))(v33, v28);
  sub_216A7486C(v35, v37, v17);

  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_21669987C(v17, &qword_27CABA820);
    type metadata accessor for Platform();
    if (sub_2166AF4DC(v49 & 1))
    {
      if (qword_27CAB5C88 != -1)
      {
        swift_once();
      }

      v38 = &qword_27CAC0FD8;
    }

    else
    {
      if (qword_280E3E760 != -1)
      {
        swift_once();
      }

      v38 = &qword_280E3E768;
    }

    v44 = *v38;
    v59 = sub_21700CAF4();
    v60 = sub_216A75710(&qword_280E2A348, MEMORY[0x277D219C8]);
    __swift_allocate_boxed_opaque_existential_1(v58);
    swift_unknownObjectRetain();
    sub_21700CB04();
  }

  else
  {
    (*(v20 + 32))(v27, v17, v18);
    v39 = v48;
    sub_216A74ADC(v27, v48);
    v41 = v51;
    v40 = v52;
    v42 = v53;
    (*(v52 + 104))(v51, *MEMORY[0x277D21A70], v53);
    v59 = sub_21700CAD4();
    v60 = sub_216A75710(&qword_27CAC0FF0, MEMORY[0x277D219B0]);
    __swift_allocate_boxed_opaque_existential_1(v58);
    (*(v20 + 16))(v47, v39, v18);
    (*(v40 + 16))(v50, v41, v42);
    sub_21700CAE4();
    (*(v40 + 8))(v41, v42);
    v43 = *(v20 + 8);
    v43(v39, v18);
    v43(v27, v18);
  }

  sub_21700CB54();
  sub_21700CB84();
  swift_allocObject();
  sub_21700CB74();
  sub_2167B7D58(v58, v57);
  type metadata accessor for SourceBundleLoader();
  sub_21700CB34();
  return __swift_destroy_boxed_opaque_existential_1Tm(v58);
}

id sub_216A745B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700DFD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = objc_opt_self();
  v10 = [v9 currentProcess];
  v11 = [v8 ams:v10 configurationWithProcessInfo:a1 bag:?];

  swift_unknownObjectRetain();
  sub_21700DF74();
  v12 = [v9 currentProcess];
  sub_216A74738(a2, v7, v12);

  (*(v5 + 8))(v7, v4);
  return v11;
}

id sub_216A74738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CEE6D8]) initWithBag_];
  swift_unknownObjectRelease();
  [v4 setAnisetteType_];
  [v4 setMescalType_];
  [v4 setAccount_];
  [v4 setRequestEncoding_];
  [v4 setDialogOptions_];
  [v4 setClientInfo_];
  [v4 setDisableResponseDecoding_];
  if (qword_280E2B920 != -1)
  {
    swift_once();
  }

  [v4 setUrlKnownToBeTrusted_];
  return v4;
}

uint64_t sub_216A7486C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21[-v7];
  v9 = sub_217005EF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2166AF3EC();
  if (!v13)
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    goto LABEL_11;
  }

  sub_216A75260(v8);

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
LABEL_11:
    sub_21669987C(v8, &qword_27CABA820);
    goto LABEL_12;
  }

  v14 = *(v10 + 32);
  v14(v12, v8, v9);
  v15 = sub_216784490();
  if (v16)
  {
    if (v15 == a1 && v16 == a2)
    {
    }

    else
    {
      v22 = sub_21700F7D4();

      if ((v22 & 1) == 0)
      {
        sub_216784500(0, 0);
        sub_216784404(0, 0);
        (*(v10 + 8))(v12, v9);
LABEL_12:
        v18 = 1;
        return __swift_storeEnumTagSinglePayload(a3, v18, 1, v9);
      }
    }
  }

  sub_216784490();
  if (v19)
  {
  }

  else
  {
    sub_21700DF14();
    sub_216784500(a1, a2);
  }

  v14(a3, v12, v9);
  v18 = 0;
  return __swift_storeEnumTagSinglePayload(a3, v18, 1, v9);
}

uint64_t sub_216A74ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_217005DD4() == 0x6B63617074656ALL && v4 == 0xE700000000000000)
  {
  }

  else
  {
    v6 = sub_21700F7D4();

    if ((v6 & 1) == 0)
    {
      return sub_217005E34();
    }
  }

  v8 = sub_217005EF4();
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_216A74BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_217005DD4() == 0x6B63617074656ALL && v4 == 0xE700000000000000)
  {
  }

  else
  {
    v6 = sub_21700F7D4();

    if ((v6 & 1) == 0)
    {
      return sub_217005E34();
    }
  }

  v8 = sub_217005EF4();
  return (*(*(v8 - 8) + 16))(a2, a1, v8);
}

uint64_t sub_216A74CB0()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v2 + 312) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 56);
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216A74DBC()
{
  v2 = v0[36];
  v1 = v0[37];
  v13 = v0[34];
  v14 = v0[35];
  v12 = v0[31];
  v3 = v0[26];
  v4 = v0[21];
  v5 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[17];
  v8 = v0[18];
  sub_2166A8544();
  sub_21677A524(v2, v1);
  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v5, v6);
  sub_21669987C(v3, &qword_27CAB94C8);
  v14(v13, v12);

  OUTLINED_FUNCTION_3();

  return v10();
}

uint64_t sub_216A74F24()
{
  v1 = v0[26];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v7 = v0[18];
  sub_21677A524(v0[36], v0[37]);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_21669987C(v1, &qword_27CAB94C8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
  v8 = v0[39];
  v9 = v0[34];
  v10 = v0[35];
  v11 = v0[31];
  sub_216A756BC();
  swift_allocError();
  *v12 = v8;
  swift_willThrow();
  v10(v9, v11);
  OUTLINED_FUNCTION_7_62();

  OUTLINED_FUNCTION_3();

  return v13();
}

uint64_t sub_216A75094()
{
  sub_21669987C(*(v0 + 80), &qword_27CAB94C8);

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216A7512C()
{
  OUTLINED_FUNCTION_33();
  v0 = OUTLINED_FUNCTION_14_41();
  v1(v0);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216A751A0()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC0FC0);
  __swift_project_value_buffer(v0, qword_27CAC0FC0);
  return sub_217007C94();
}

uint64_t sub_216A75220()
{
  result = sub_21700E4D4();
  qword_280E3E768 = result;
  return result;
}

uint64_t sub_216A75260@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217005DC4();
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = sub_217005EF4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v33 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  sub_217005ED4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    v31 = v2;
    v32 = a1;
    v30 = v11;
    v20 = *(v11 + 32);
    v20(v18, v9, v10);
    if (sub_217005DA4() & 1) != 0 && (sub_21700E6E4())
    {
      v21 = [objc_opt_self() defaultManager];
      v22 = [v21 URLsForDirectory:9 inDomains:1];

      sub_21700E824();
      sub_216CE0C14();

      if (__swift_getEnumTagSinglePayload(v7, 1, v10) != 1)
      {
        v20(v16, v7, v10);
        v24 = v33;
        sub_217005E44();
        v36 = sub_217005DB4();
        v37 = v25;
        v27 = v34;
        v26 = v35;
        v28 = v31;
        (*(v35 + 104))(v34, *MEMORY[0x277CC91D8], v31);
        sub_2167B2E14();
        a1 = v32;
        sub_217005EE4();
        (*(v26 + 8))(v27, v28);

        v29 = *(v30 + 8);
        v29(v24, v10);
        v29(v16, v10);
        v29(v18, v10);
        goto LABEL_8;
      }

      sub_21669987C(v7, &qword_27CABA820);
    }

    a1 = v32;
    v20(v32, v18, v10);
LABEL_8:
    v19 = 0;
    return __swift_storeEnumTagSinglePayload(a1, v19, 1, v10);
  }

  sub_21669987C(v9, &qword_27CABA820);
  v19 = 1;
  return __swift_storeEnumTagSinglePayload(a1, v19, 1, v10);
}

unint64_t sub_216A756BC()
{
  result = qword_27CAC0FE0;
  if (!qword_27CAC0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0FE0);
  }

  return result;
}

uint64_t sub_216A75710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A75790()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  v19 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationDidBecomeActiveSubscription;
  OUTLINED_FUNCTION_17_2();
  v32 = v19;
  sub_216681B64(v0 + v19, v9, &qword_27CAB8EF8);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_21669987C(v9, &qword_27CAB8EF8);
  }

  else
  {
    (*(v11 + 32))(v18, v9, v10);

    sub_21700CC24();

    (*(v11 + 8))(v18, v10);
  }

  v20 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationWillResignActiveSubscription;
  OUTLINED_FUNCTION_17_2();
  sub_216681B64(v0 + v20, v6, &qword_27CAB8EF8);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    sub_21669987C(v6, &qword_27CAB8EF8);
  }

  else
  {
    (*(v11 + 32))(v15, v6, v10);

    sub_21700CC24();

    (*(v11 + 8))(v15, v10);
  }

  v21 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationDidFinishLaunchingSubscription;
  OUTLINED_FUNCTION_17_2();
  sub_216681B64(v0 + v21, v3, &qword_27CAB8EF8);
  if (__swift_getEnumTagSinglePayload(v3, 1, v10) == 1)
  {
    sub_21669987C(v3, &qword_27CAB8EF8);
  }

  else
  {
    v22 = v31;
    (*(v11 + 32))(v31, v3, v10);

    sub_21700CC24();

    (*(v11 + 8))(v22, v10);
  }

  OUTLINED_FUNCTION_42();
  sub_21669987C(v23, v24);
  OUTLINED_FUNCTION_42();
  sub_21669987C(v25, v26);
  OUTLINED_FUNCTION_42();
  sub_21669987C(v27, v28);

  return v0;
}

uint64_t sub_216A75C1C()
{
  sub_216A75790();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_216A75CEC()
{
  result = qword_27CAC0FF8;
  if (!qword_27CAC0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0FF8);
  }

  return result;
}

uint64_t sub_216A75D40()
{
  OUTLINED_FUNCTION_93();
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v2;
  v2[27] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_216A7602C;
  }

  else
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 2));
    v7 = sub_216A75ECC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_216A75ECC()
{
  OUTLINED_FUNCTION_93();
  v4 = OUTLINED_FUNCTION_7_63();
  v5(v4);
  (*(v3 + 8))(v0, v2);
  sub_21669987C(v1, &qword_27CAB89C0);
  OUTLINED_FUNCTION_12_43();

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_216A75F9C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_11_46();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A7602C()
{
  OUTLINED_FUNCTION_93();
  v5 = OUTLINED_FUNCTION_7_63();
  v6(v5);
  (*(v4 + 8))(v0, v2);
  sub_21669987C(v1, &qword_27CAB89C0);
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 16);
  OUTLINED_FUNCTION_11_46();

  OUTLINED_FUNCTION_3();

  return v7();
}

unint64_t sub_216A76104()
{
  result = qword_280E36D98;
  if (!qword_280E36D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E36D98);
  }

  return result;
}

uint64_t type metadata accessor for CreateStationAction()
{
  result = qword_280E3E220;
  if (!qword_280E3E220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A761CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v54 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v42 - v4;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v44 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v50 = v14;
  v51 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v43 = v15;
  MEMORY[0x28223BE20](v16);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v46 = v18;
  v47 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(type metadata accessor for CreateStationAction() + 20);
  v22 = type metadata accessor for ContentDescriptor();
  v53 = a2;
  v49 = v21;
  __swift_storeEnumTagSinglePayload(a2 + v21, 1, 1, v22);
  sub_21700CE04();
  v23 = *(v7 + 16);
  v52 = v5;
  v23(v12, v54, v5);
  v24 = v48;
  sub_21700D224();
  if (v24)
  {
    (*(v7 + 8))(v54, v52);
    v25 = OUTLINED_FUNCTION_1_108();
    v26(v25);
    return sub_2168F3EB8(v53 + v49);
  }

  else
  {
    v42 = v22;
    v48 = v7;
    v27 = v53;
    (*(v46 + 32))(v53, v20, v47);
    v28 = v43;
    sub_21700CE04();
    v29 = v44;
    v23(v44, v54, v52);
    v30 = v45;
    ContentDescriptor.init(deserializing:using:)(v28, v29, v31, v32, v33, v34, v35, v36, v42, v43, SWORD2(v43), SBYTE6(v43), SHIBYTE(v43));
    v38 = OUTLINED_FUNCTION_2_88();
    v39(v38);
    v40 = OUTLINED_FUNCTION_1_108();
    v41(v40);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v42);
    return sub_216A765E0(v30, v27 + v49);
  }
}

uint64_t sub_216A765E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A76694(char *a1, uint64_t a2)
{
  v48 = a2;
  v3 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_77();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v49 = a1;
  sub_21700CE04();
  v16 = sub_21700CDB4();
  v18 = v17;
  v19 = *(v5 + 8);
  v19(v15, v3);
  if (!v18)
  {
    v18 = sub_21700E2E4();
    sub_2167B1EA4();
    OUTLINED_FUNCTION_1_109();
    OUTLINED_FUNCTION_2_89();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_217013DA0;
    *(v28 + 32) = OUTLINED_FUNCTION_1_109();
    *v29 = 1684957547;
    v29[1] = 0xE400000000000000;
    v29[2] = &type metadata for PerformPlaylistCollaborationRequestAction.PlaylistCollaborationRequest;
    v30 = *(*(v18 - 8) + 104);
    v30(v29, *MEMORY[0x277D22530], v18);
    *v27 = &type metadata for PerformPlaylistCollaborationRequestAction.PlaylistCollaborationRequest;
    v27[1] = v28;
    v19 = v3;
    v3 = v47;
    v30(v27, *MEMORY[0x277D22538], v18);
    v22 = v49;
LABEL_12:
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v38 + 8))(v48);
    v19(v22, v3);
    return v18;
  }

  v20 = v16 == 1852403562 && v18 == 0xE400000000000000;
  if (!v20 && (sub_21700F7D4() & 1) == 0)
  {
    v40 = v16 == 0x676E69646E6570 && v18 == 0xE700000000000000;
    v22 = v49;
    if (!v40 && (sub_21700F7D4() & 1) == 0)
    {
      v45 = sub_21700E2E4();
      sub_2167B1EA4();
      swift_allocError();
      *v46 = v16;
      v46[1] = v18;
      v46[2] = &type metadata for PerformPlaylistCollaborationRequestAction.PlaylistCollaborationRequest;
      (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D22520], v45);
      goto LABEL_12;
    }

    v21 = 0xEA00000000006C72;

    sub_21700CE04();
    v18 = sub_21700CDB4();
    v42 = v41;
    v19(v9, v3);
    if (v42)
    {
      goto LABEL_8;
    }

    v18 = sub_21700E2E4();
    sub_2167B1EA4();
    OUTLINED_FUNCTION_1_109();
    OUTLINED_FUNCTION_2_89();
    v32 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_217013DA0;
    v44 = OUTLINED_FUNCTION_1_109();
    v36 = v35;
    *(v33 + 32) = v44;
    *v35 = 0x5565766F72707061;
    goto LABEL_11;
  }

  v21 = 0xE90000000000006CLL;

  v22 = v49;
  sub_21700CE04();
  v18 = sub_21700CDB4();
  v24 = v23;
  v19(v12, v3);
  if (!v24)
  {
    v18 = sub_21700E2E4();
    sub_2167B1EA4();
    OUTLINED_FUNCTION_6_56();
    OUTLINED_FUNCTION_2_89();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_217013DA0;
    v34 = OUTLINED_FUNCTION_6_56();
    v36 = v35;
    *(v33 + 32) = v34;
    *v35 = 0x7255657469766E69;
LABEL_11:
    v35[1] = v21;
    v35[2] = &type metadata for PerformPlaylistCollaborationRequestAction.PlaylistCollaborationRequest;
    v37 = *(*(v18 - 8) + 104);
    v37(v36, *MEMORY[0x277D22530], v18);
    *v32 = &type metadata for PerformPlaylistCollaborationRequestAction.PlaylistCollaborationRequest;
    v32[1] = v33;
    v19 = v3;
    v3 = v47;
    v22 = v49;
    v37(v32, *MEMORY[0x277D22538], v18);
    goto LABEL_12;
  }

LABEL_8:
  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v25 + 8))(v48);
  v19(v22, v3);
  return v18;
}

uint64_t sub_216A76C50@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_216A76694(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7 & 1;
  }

  return result;
}

uint64_t sub_216A76C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  v52 = v11 - v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  v55 = &v51 - v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  v59 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77();
  v51 = v21 - v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  v54 = &v51 - v24;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v25);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v56 = v27;
  v57 = v26;
  MEMORY[0x28223BE20](v26);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v30 = *(v9 + 16);
  v61 = v7;
  v31 = v7;
  v32 = v30;
  v30(v17, a2, v31);
  v33 = v58;
  sub_21700D224();
  if (v33)
  {
    (*(v9 + 8))(a2, v61);
    return (*(v19 + 8))(a1, v59);
  }

  else
  {
    v58 = v19;
    (*(v56 + 32))(v60, v29, v57);
    v35 = v54;
    sub_21700CE04();
    v36 = v55;
    v32(v55, a2, v61);
    v37 = sub_216A76694(v35, v36);
    v39 = v38;
    v41 = v40;
    v55 = type metadata accessor for PerformPlaylistCollaborationRequestAction();
    v42 = v60 + *(v55 + 5);
    *v42 = v37;
    *(v42 + 8) = v39;
    *(v42 + 16) = v41 & 1;
    v43 = v51;
    sub_21700CE04();
    v44 = v52;
    v32(v52, a2, v61);
    ContentDescriptor.init(deserializing:using:)(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, SWORD2(v52), SBYTE6(v52), SHIBYTE(v52));
    (*(v9 + 8))(a2, v61);
    (*(v58 + 8))(a1, v59);
    return sub_2168ED900(v53, v60 + *(v55 + 6));
  }
}

uint64_t type metadata accessor for GoToTVShowViewModel()
{
  result = qword_280E3DF60;
  if (!qword_280E3DF60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A771D0()
{
  result = sub_217007324();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObjectGraph();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_216A77258()
{
  result = qword_27CAC5960;
  if (!qword_27CAC5960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB78F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5960);
  }

  return result;
}

uint64_t sub_216A772BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1008);
  v2[4] = swift_task_alloc();
  v3 = sub_21700B804();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_217007324();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A77410, 0, 0);
}

uint64_t sub_216A77410()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
  v4 = swift_allocObject();
  v0[11] = v4;
  *(v4 + 16) = xmmword_21701D820;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1010);
  *(v4 + 32) = sub_21700B6A4();
  (*(v2 + 104))(v1, *MEMORY[0x277CD7CF8], v3);
  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = MEMORY[0x277D2AD78];
  v7 = sub_216A77BE8(&qword_27CAC1018, MEMORY[0x277D2AD78]);
  v8 = sub_216A77BE8(&qword_27CAC1020, v6);
  v9 = sub_216A77BE8(&qword_27CAC1028, v6);
  *v5 = v0;
  v5[1] = sub_216A775D8;
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];

  return MEMORY[0x282124810](v10, v4, v11, v12, v7, v8, v9);
}

uint64_t sub_216A775D8()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_216A778E4;
  }

  else
  {
    v5 = sub_216A7776C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_216A7776C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  sub_2170072E4();
  (*(v2 + 8))(v1, v3);
  v5 = sub_217007264();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_21669987C(v0[4], &qword_27CAC1008);
    sub_216A77C30();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(*(v5 - 8) + 32))(v0[2], v0[4], v5);
  }

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_216A778E4()
{

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A77964()
{
  v1 = v0;
  v2 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217007254();
  if (!v6)
  {
    v5 = sub_217007214();
  }

  v7 = v5;
  v8 = v6;
  LOBYTE(v23[0]) = 1;
  v9 = *(v2 + 24);
  v10 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(&v4[v9], 1, 1, v10);
  *v4 = 22;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 11) = v7;
  *(v4 + 12) = v8;
  *(v4 + 13) = 0;
  v4[112] = 1;
  v11 = type metadata accessor for TVShowDetailPageIntent();
  v24 = v11;
  v25 = sub_216A77BE8(&qword_27CAC1000, type metadata accessor for TVShowDetailPageIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  sub_21695BC04(v4, boxed_opaque_existential_1);
  v13 = *(v11 + 20);
  v14 = type metadata accessor for ReferrerInfo();
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v13, 1, 1, v14);
  sub_2168466D8(v23, &v20);
  v15 = *(v1 + *(type metadata accessor for GoToTVShowViewModel() + 20));
  v26 = 0u;
  v27 = 0u;
  LOWORD(v28) = 1;

  sub_216CCC700(&v20, v15, &v26, 0, 0, v16, v17, v18, v20, v21, v22, v23[0], v23[1], v23[2], v24, v25, v26, *(&v26 + 1), v27, *(&v27 + 1), v28, v29);
  sub_2168F3F20(v4);
  return sub_21669987C(v23, &qword_27CAB6AB8);
}

uint64_t sub_216A77B4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2167AF644;

  return sub_216A772BC(a1);
}

uint64_t sub_216A77BE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216A77C30()
{
  result = qword_27CAC1030;
  if (!qword_27CAC1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1030);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GoToTVShowViewModel.GoToTVShowError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_216A77D34()
{
  result = qword_27CAC1038;
  if (!qword_27CAC1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1038);
  }

  return result;
}

void sub_216A77DD0()
{
  sub_2166D7D5C();
  if (v0 <= 0x3F)
  {
    sub_216A7FAA4(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21680D428();
      if (v2 <= 0x3F)
      {
        sub_2168AEB44(319, &qword_280E2B488);
        if (v3 <= 0x3F)
        {
          sub_2168AEB44(319, &qword_280E2B480);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_216A77F08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v117 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1048);
  OUTLINED_FUNCTION_1();
  v113 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105();
  v110 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1050);
  OUTLINED_FUNCTION_1();
  v114 = v7;
  v115 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v112 = v9;
  v111 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v109 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_70(v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_70(v95 - v14);
  v108 = v15;
  MEMORY[0x28223BE20](v16);
  v119 = v95 - v17;
  v18 = type metadata accessor for SuperHeroLockupView(0);
  v96 = *(v18 - 8);
  v19 = *(v96 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SuperHeroLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  v24 = v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1058);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  v28 = v95 - v27;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1060);
  OUTLINED_FUNCTION_1();
  v97 = v29;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1068);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v34);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1070);
  OUTLINED_FUNCTION_1();
  v102 = v35;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v37);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1078);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_105();
  v118 = v39;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1080);
  OUTLINED_FUNCTION_1();
  v106 = v40;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v42);
  v43 = *v1;
  sub_216DE9208();
  sub_216683A80(&v24[*(v21 + 24)], &v120, &qword_27CAB6DB0);
  OUTLINED_FUNCTION_5_66();
  v100 = v43;
  if (v121)
  {
    sub_2166A0F18(&v120, &v122);
  }

  else
  {
    sub_216DE9208();
    sub_216683A80(&v24[*(v21 + 92)], &v122, &qword_27CAB6DB0);
    OUTLINED_FUNCTION_5_66();
    if (v121)
    {
      sub_216699778(&v120, &qword_27CAB6DB0);
    }
  }

  v44 = v25[11];
  v45 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(&v28[v44], 1, 1, v45);
  OUTLINED_FUNCTION_2_90();
  sub_216A7E918(v2, v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v46);
  v47 = swift_allocObject();
  OUTLINED_FUNCTION_3_89(v47);
  v48 = v25[12];
  *&v28[v48] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v49 = &v28[v25[13]];
  *v49 = swift_getKeyPath();
  v49[40] = 0;
  v50 = v124;
  v51 = v123;
  *v28 = v122;
  *(v28 + 1) = v51;
  *(v28 + 4) = v50;
  *(v28 + 5) = sub_216A7E8B4;
  *(v28 + 6) = v47;
  *(v28 + 7) = 0;
  *(v28 + 8) = 0;
  sub_216E31728();
  sub_216699778(v28, &qword_27CAC1058);
  v52 = v99;
  v53 = v99 + *(v32 + 36);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90);
  sub_217008C64();
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v55 = sub_217008B34();
  v56 = __swift_project_value_buffer(v55, qword_280E73A88);
  sub_216A7E918(v56, v53, MEMORY[0x277CDFBC8]);
  *(v53 + *(v54 + 36)) = 0;
  v57 = OUTLINED_FUNCTION_13_39();
  v59 = v58(v57);
  v98 = v95;
  MEMORY[0x28223BE20](v59);
  MEMORY[0x28223BE20](v60);
  v95[1] = v2;
  OUTLINED_FUNCTION_2_90();
  sub_216A7E918(v61, v20, v62);
  v63 = swift_allocObject();
  OUTLINED_FUNCTION_3_89(v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0);
  type metadata accessor for ContextMenuPreview(0);
  sub_216A7E9D8();
  sub_21669E098(qword_280E2BAE8, &qword_27CAB8AA0);
  sub_2166D7E84(qword_280E3F158, type metadata accessor for ContextMenuPreview);
  v64 = v101;
  sub_21700A394();

  sub_216699778(v52, &qword_27CAC1068);
  v65 = v111;
  *(&v123 + 1) = v111;
  v124 = sub_2166D7E84(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1Tm(&v122);
  sub_216CCB698();
  v66 = v104;
  v67 = (v118 + *(v104 + 36));
  sub_2167B7D58(&v122, (v67 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2166D7E84(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  *v67 = sub_217008CF4();
  v67[1] = v68;
  v69 = OUTLINED_FUNCTION_13_39();
  v70(v69);
  __swift_destroy_boxed_opaque_existential_1Tm(&v122);
  v71 = v119;
  v72 = sub_216CCB698();
  v103 = v95;
  MEMORY[0x28223BE20](v72);
  v73 = v109;
  v74 = *(v109 + 16);
  v75 = OUTLINED_FUNCTION_16_38(&v125);
  v74(v75);
  LODWORD(v100) = (*(v73 + 88))(v64, v65) != *MEMORY[0x277D2A410];
  v76 = *(v73 + 8);
  v101 = (v73 + 8);
  v102 = v76;
  v76(v64, v65);
  *(&v123 + 1) = v65;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v122);
  (v74)(boxed_opaque_existential_1Tm, v71, v65);
  v78 = OUTLINED_FUNCTION_16_38(&v126);
  v74(v78);
  v79 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v80 = swift_allocObject();
  v81 = (*(v73 + 32))(v80 + v79, v64, v65);
  MEMORY[0x28223BE20](v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA000);
  *&v94 = sub_216A7EB58();
  *(&v94 + 1) = sub_216A7FEBC(&qword_280E2AE70, &qword_27CABA000, &unk_21701F600, sub_21686AFD8);
  v83 = v110;
  v84 = v118;
  sub_21700AA24();

  sub_216699778(&v122, &unk_27CABF7A0);
  *&v122 = v66;
  *(&v122 + 1) = v82;
  v123 = v94;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = v112;
  v87 = v116;
  sub_21700A724();
  (*(v113 + 8))(v83, v87);
  *&v122 = v87;
  *(&v122 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v88 = v105;
  v89 = v115;
  sub_21700A8D4();
  (*(v114 + 8))(v86, v89);
  v102(v119, v65);
  sub_216699778(v84, &qword_27CAC1078);
  KeyPath = swift_getKeyPath();
  v91 = v117;
  (*(v106 + 32))(v117, v88, v107);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1088);
  v93 = v91 + *(result + 36);
  *v93 = KeyPath;
  *(v93 + 8) = 0;
  return result;
}

uint64_t sub_216A78CC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1090);
  v120 = *(v3 - 8);
  v121 = v3;
  MEMORY[0x28223BE20](v3);
  v119 = &v104 - v4;
  v113 = sub_217008B44();
  MEMORY[0x28223BE20](v113);
  v116 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SuperHeroLockup();
  MEMORY[0x28223BE20](v6);
  v118 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v110 = &v104 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v104 - v11;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1098);
  MEMORY[0x28223BE20](v111);
  v14 = &v104 - v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC10A0);
  MEMORY[0x28223BE20](v115);
  v114 = &v104 - v15;
  v16 = *a1;
  sub_216DE9208();
  *&v112 = a1;
  v17 = sub_216A7971C();
  v18 = *(type metadata accessor for SuperHeroArtworkView(0) + 20);
  v123 = v14;
  v14[v18] = v17;
  v19 = sub_21700B3A4();
  v108 = v20;
  v109 = v19;
  v124 = v16;
  sub_216DE9208();
  v125 = v6;
  v21 = v12[*(v6 + 72)];
  v117 = v12;
  sub_216A7ECD0(v12, type metadata accessor for SuperHeroLockup);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (v21 == 1)
  {
    if (qword_27CAB5940 != -1)
    {
      swift_once();
    }

    v33 = qword_27CB22858;
    sub_21700DF14();
    sub_21700B554();
    sub_21700B544();
    MEMORY[0x21CE9C070](v33);
    sub_2170085D4();
    sub_21700B3B4();
    sub_2170083C4();
    v22 = v140[13];
    v23 = v140[14];
    v24 = v140[15];
    v25 = v140[16];
    v26 = v140[17];
    v27 = v140[18];
    v28 = v140[19];
    v29 = v140[20];
    v30 = v140[21];
    v31 = v140[22];
    v32 = v140[23];
  }

  v104 = v29;
  v105 = v30;
  v106 = v31;
  v107 = v32;
  v139[0] = v22;
  v139[1] = v23;
  v139[2] = v24;
  v139[3] = v25;
  v139[4] = v26;
  v139[5] = v27;
  v139[6] = v28;
  v139[7] = v29;
  v139[8] = v30;
  v139[9] = v31;
  v139[10] = v32;
  v34 = v108;
  v35 = v109;
  v139[11] = v109;
  v139[12] = v108;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC10A8);
  memcpy(&v123[*(v36 + 36)], v139, 0x68uLL);
  v140[0] = v22;
  v140[1] = v23;
  v140[2] = v24;
  v140[3] = v25;
  v140[4] = v26;
  v140[5] = v27;
  v140[6] = v28;
  v140[7] = v104;
  v140[8] = v105;
  v140[9] = v106;
  v140[10] = v107;
  v140[11] = v35;
  v140[12] = v34;
  sub_216683A80(v139, v136, &qword_27CABA0F8);
  sub_216699778(v140, &qword_27CABA0F8);
  v37 = sub_21700B394();
  v39 = v38;
  v40 = v110;
  sub_216DE9208();
  v41 = (v40 + *(v125 + 32));
  v43 = *v41;
  v42 = v41[1];
  sub_21700DF14();
  sub_216A7ECD0(v40, type metadata accessor for SuperHeroLockup);
  v44 = v112;
  if (sub_216A7971C())
  {
    v45 = 1.0;
  }

  else
  {
    v45 = 0.7;
  }

  if (sub_216A7971C())
  {
    v46 = 16.0;
  }

  else
  {
    v46 = 0.0;
  }

  if (sub_216A7971C())
  {
    v47 = 20.0;
  }

  else
  {
    v47 = 26.0;
  }

  if (sub_216A7971C())
  {
    v48 = 3;
  }

  else
  {
    v48 = 2;
  }

  v49 = sub_216A7990C();
  KeyPath = swift_getKeyPath();
  v127[224] = 0;
  v49 &= 1u;
  v128[0] = v43;
  v128[1] = v42;
  *&v128[2] = v45;
  *&v128[3] = v46;
  *&v128[4] = v47;
  v128[5] = v48;
  LOBYTE(v128[6]) = v49;
  v128[7] = KeyPath;
  LOBYTE(v128[8]) = 0;
  v128[9] = v37;
  v128[10] = v39;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC10B0);
  v52 = v123;
  memcpy(&v123[*(v51 + 36)], v128, 0x58uLL);
  v129[0] = v43;
  v129[1] = v42;
  *&v129[2] = v45;
  *&v129[3] = v46;
  *&v129[4] = v47;
  v129[5] = v48;
  v130 = v49;
  v131 = KeyPath;
  v53 = v52;
  v132 = 0;
  v133 = v37;
  v134 = v39;
  sub_216683A80(v128, v136, &qword_27CAC10B8);
  sub_216699778(v129, &qword_27CAC10B8);
  v54 = sub_21700B3A4();
  v56 = v55;
  sub_216A79A78(v44, v127);
  memcpy(v135, v127, 0xE0uLL);
  v135[28] = v54;
  v135[29] = v56;
  memcpy((v52 + *(v111 + 36)), v135, 0xF0uLL);
  memcpy(v136, v127, sizeof(v136));
  v137 = v54;
  v138 = v56;
  sub_216683A80(v135, &v126, &qword_27CAC10C0);
  sub_216699778(v136, &qword_27CAC10C0);
  v57 = v113;
  v58 = *(v113 + 20);
  v59 = *MEMORY[0x277CE0118];
  v60 = sub_217009294();
  v61 = *(*(v60 - 8) + 104);
  v62 = v116;
  v61(&v116[v58], v59, v60);
  __asm { FMOV            V0.2D, #24.0 }

  v112 = _Q0;
  *v62 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v68 = v114;
  sub_216E2FCB0();
  sub_216A7ECD0(v62, MEMORY[0x277CDFC08]);
  sub_216699778(v53, &qword_27CAC1098);
  if (qword_280E2C2D8 != -1)
  {
    swift_once();
  }

  v69 = xmmword_280E73AF0;
  v70 = qword_280E73B00;
  v71 = qword_280E73B08;
  v61(&v62[*(v57 + 20)], v59, v60);
  *v62 = v112;
  v72 = sub_21700B3B4();
  v74 = v73;
  v75 = v68 + *(v115 + 36);
  sub_216A7E918(v62, v75, MEMORY[0x277CDFC08]);
  v76 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73B0) + 36);
  *v76 = v71;
  *(v76 + 8) = v70;
  *(v76 + 16) = v69;

  v77 = sub_217009C84();
  sub_217007F24();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v86 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73B8) + 36);
  *v86 = v77;
  *(v86 + 8) = v79;
  *(v86 + 16) = v81;
  *(v86 + 24) = v83;
  *(v86 + 32) = v85;
  *(v86 + 40) = 0;
  v87 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9FF8) + 36));
  *v87 = v72;
  v87[1] = v74;
  sub_216A7ECD0(v62, MEMORY[0x277CDFC08]);
  sub_216A7EDA4();
  v88 = v119;
  sub_21700A2A4();
  sub_216699778(v68, &qword_27CAC10A0);
  v89 = v117;
  sub_216DE9208();
  sub_216A79F40();
  sub_216A7ECD0(v89, type metadata accessor for SuperHeroLockup);
  v90 = v121;
  v91 = v122;
  sub_2170064C4();

  (*(v120 + 8))(v88, v90);
  v92 = sub_21700B354();
  v94 = v93;
  v95 = v118;
  sub_216DE9208();
  v96 = v95 + *(v125 + 84);
  v98 = *v96;
  v97 = *(v96 + 8);
  v99 = *(v96 + 16);
  sub_21700DF14();
  sub_216A7ECD0(v95, type metadata accessor for SuperHeroLockup);
  if (v97)
  {
    v100 = v98;
  }

  else
  {
    v100 = 0;
  }

  if (v97)
  {
    v101 = v99 & 1;
  }

  else
  {
    v101 = 0;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC10E8);
  v103 = v91 + *(result + 36);
  *v103 = v100;
  *(v103 + 8) = v97;
  *(v103 + 16) = v101;
  *(v103 + 24) = v92;
  *(v103 + 32) = v94;
  return result;
}

BOOL sub_216A7971C()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SuperHeroLockup();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_216DE9208();
  v9 = v8[*(v6 + 96)];
  sub_216A7ECD0(v8, type metadata accessor for SuperHeroLockup);
  v10 = v0 + *(type metadata accessor for SuperHeroLockupView(0) + 28);
  v11 = *v10;
  if (*(v10 + 8) != 1)
  {

    sub_21700ED94();
    v12 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v11, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v11) = v15[15];
  }

  if (v9)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  return sub_216A12194(v11, v13);
}

BOOL sub_216A7990C()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SuperHeroLockupView(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_21700ED94();
    v8 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = *&v10[1];
  }

  return v7 <= 328.0;
}

double sub_216A79A78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for SuperHeroLockup();
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - v20;
  v49 = a1;
  sub_216DE9208();
  v22 = &v21[v7[9]];
  v23 = *(v22 + 1);
  *&v48 = *v22;
  *(&v48 + 1) = v23;
  sub_21700DF14();
  sub_216A7ECD0(v21, type metadata accessor for SuperHeroLockup);
  sub_216DE9208();
  v24 = &v18[v7[10]];
  v25 = *(v24 + 1);
  v47 = *v24;
  sub_21700DF14();
  sub_216A7ECD0(v18, type metadata accessor for SuperHeroLockup);
  sub_216DE9208();
  v26 = &v15[v7[11]];
  v27 = *(v26 + 1);
  v46 = *v26;
  sub_21700DF14();
  sub_216A7ECD0(v15, type metadata accessor for SuperHeroLockup);
  sub_216DE9208();
  v28 = v12[v7[19]];
  sub_216A7ECD0(v12, type metadata accessor for SuperHeroLockup);
  sub_216DE9208();
  sub_216683A80(&v9[v7[24]], v6, &qword_27CAB6A00);
  v29 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v6, 1, v29) == 1)
  {
    sub_216A7ECD0(v9, type metadata accessor for SuperHeroLockup);
    sub_216699778(v6, &qword_27CAB6A00);
  }

  else
  {
    memcpy(__dst, v6 + 8, 0x69uLL);
    sub_21686BC90(__dst, v50);
    sub_216A7ECD0(v6, type metadata accessor for ContentDescriptor);
    v30 = *&v9[v7[13]];
    sub_216A7ECD0(v9, type metadata accessor for SuperHeroLockup);
    if (v30 >= 1)
    {
      v44 = __dst[1];
      v45 = __dst[0];
      v42 = __dst[3];
      v43 = __dst[2];
      v40 = __dst[5];
      v41 = __dst[4];
      v31 = *&__dst[6];
      v32 = BYTE8(__dst[6]);
      goto LABEL_7;
    }

    sub_21686BCEC(__dst);
  }

  v31 = 0;
  v32 = 0;
  v30 = 0;
  v45 = xmmword_217016ED0;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
LABEL_7:
  if (sub_216A7971C())
  {
    v33 = 1.0;
  }

  else
  {
    v33 = 0.675;
  }

  if (sub_216A7971C())
  {
    v34 = 16.0;
  }

  else
  {
    v34 = 0.0;
  }

  if (sub_216A7971C())
  {
    v35 = 20.0;
  }

  else
  {
    v35 = 26.0;
  }

  v36 = !sub_216A7971C();
  KeyPath = swift_getKeyPath();
  *&v38 = v47;
  *(&v38 + 1) = v25;
  *a2 = v48;
  *(a2 + 16) = v38;
  *(a2 + 32) = v46;
  *(a2 + 40) = v27;
  *(a2 + 48) = v28;
  *(a2 + 72) = v44;
  *(a2 + 56) = v45;
  *(a2 + 104) = v42;
  *(a2 + 88) = v43;
  *(a2 + 136) = v40;
  result = *&v41;
  *(a2 + 120) = v41;
  *(a2 + 152) = v31;
  *(a2 + 160) = v32;
  *(a2 + 168) = v30;
  *(a2 + 176) = v33;
  *(a2 + 184) = v34;
  *(a2 + 192) = v35;
  *(a2 + 200) = v36;
  *(a2 + 208) = KeyPath;
  *(a2 + 216) = 0;
  return result;
}

void sub_216A79F40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217018C90;
  v2 = type metadata accessor for SuperHeroLockup();
  v3 = (v0 + v2[8]);
  v4 = v3[1];
  *(inited + 32) = *v3;
  *(inited + 40) = v4;
  v5 = (v0 + v2[9]);
  v6 = v5[1];
  *(inited + 48) = *v5;
  *(inited + 56) = v6;
  v7 = (v0 + v2[10]);
  v8 = v7[1];
  *(inited + 64) = *v7;
  *(inited + 72) = v8;
  v9 = (v0 + v2[11]);
  v10 = v9[1];
  *(inited + 80) = *v9;
  *(inited + 88) = v10;
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
LABEL_2:
  v13 = 16 * v11 + 40;
  while (1)
  {
    if (v11 == 4)
    {
      swift_setDeallocating();
      sub_2169FAC80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
      sub_21669E098(&qword_280E29E38, &qword_27CAB74F8);
      v21 = sub_21700E454();
      v23 = v22;

      sub_21700F9C4();
      MEMORY[0x21CE9F490](8250, 0xE200000000000000);
      MEMORY[0x21CE9F490](v21, v23);

      return;
    }

    if (v11 > 3)
    {
      break;
    }

    ++v11;
    v14 = v13 + 16;
    v15 = *(inited + v13);
    v13 += 16;
    if (v15)
    {
      v16 = *(inited + v14 - 24);
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v12 = v19;
      }

      v17 = *(v12 + 16);
      if (v17 >= *(v12 + 24) >> 1)
      {
        sub_21693776C();
        v12 = v20;
      }

      *(v12 + 16) = v17 + 1;
      v18 = v12 + 16 * v17;
      *(v18 + 32) = v16;
      *(v18 + 40) = v15;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_216A7A18C@<X0>(void (**a1)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)@<X8>)
{
  v28 = a1;
  v26 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SuperHeroLockup();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = sub_2170067A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_216CCB698();
  sub_216DE9208();
  swift_storeEnumTagMultiPayload();
  sub_2168A7A50();
  sub_216A7ECD0(v2, type metadata accessor for MenuContext);
  sub_216A7ECD0(v5, type metadata accessor for SuperHeroLockup);
  v18 = *(v12 + 32);
  v18(v14, v17, v11);
  v19 = v25;
  sub_216A7ED28(v10, v25, type metadata accessor for MenuConfiguration);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + *(v27 + 80) + v20) & ~*(v27 + 80);
  v22 = swift_allocObject();
  v18((v22 + v20), v14, v11);
  result = sub_216A7ED28(v19, v22 + v21, type metadata accessor for MenuConfiguration);
  v24 = v28;
  *v28 = sub_21680CDC8;
  v24[1] = v22;
  return result;
}

uint64_t sub_216A7A4C4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SuperHeroLockup();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_2170067A4();
  v17 = sub_2166D7E84(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1Tm(&v15);
  sub_216CCB698();
  sub_216DE9208();
  sub_216683A80(&v5[*(v3 + 32)], v13, &qword_27CAB6DB0);
  sub_216A7ECD0(v5, type metadata accessor for SuperHeroLockup);
  LOBYTE(v5) = v14 != 0;
  sub_216699778(v13, &qword_27CAB6DB0);
  v6 = type metadata accessor for ContextMenuPreview(0);
  v7 = v6[7];
  v8 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v8);
  v9 = v6[8];
  v10 = sub_21700C444();
  __swift_storeEnumTagSinglePayload(a1 + v9, 1, 1, v10);
  sub_2166A0F18(&v15, a1 + v6[6]);
  *(a1 + v6[5]) = v5;
  v11 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
}

uint64_t sub_216A7A680()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  v28 = sub_2170075A4();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SuperHeroLockup();
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9208();
  sub_216683A80(&v13[*(v11 + 32)], &v34, &qword_27CAB6DB0);
  sub_216A7ECD0(v13, type metadata accessor for SuperHeroLockup);
  sub_216CCB698();
  type metadata accessor for SuperHeroLockupView(0);
  v14 = sub_216C0C534(&v29);
  sub_216C0C548(v14, v15, v16, v17, v18, v19, v20, v21, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  v22 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v22);
  sub_2167B9BDC(&v34, v9, &v29, v5, v2, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  sub_216699778(v2, &qword_27CAB6DE8);
  (*(v3 + 8))(v5, v28);
  sub_216699778(&v29, &qword_27CAB7310);
  (*(v7 + 8))(v9, v6);
  return sub_216699778(&v34, &qword_27CAB6DB0);
}

uint64_t sub_216A7A974@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA020);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = &v44 - v2;
  v47 = sub_217009D24();
  MEMORY[0x28223BE20](v47);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v45 = sub_217007474();
  v7 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7680);
  MEMORY[0x28223BE20](v46);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA028);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v51[3] = sub_2170067A4();
  v51[4] = sub_2166D7E84(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1Tm(v51);
  sub_216CCB698();
  sub_2167BB664(v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  sub_216683A80(v20, v17, &qword_27CABA028);
  v21 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    sub_216699778(v20, &qword_27CABA028);
    sub_216699778(v17, &qword_27CABA028);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA010);
    v23 = v50;
    v24 = 1;
  }

  else
  {
    sub_216683A80(v17, v6, &qword_27CABF770);
    sub_217007434();
    sub_2170073E4();
    v25 = *(v7 + 8);
    v44 = v14;
    v26 = v45;
    v25(v9, v45);
    v27 = &v17[*(v21 + 20)];
    v28 = *v27;
    v29 = v27[1];
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
    sub_2167B8890(v28, v29);
    sub_2167C505C();
    v31 = v44;
    sub_2170073F4();

    v25(v12, v26);
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v32 = qword_280E73AA0;
    v33 = byte_280E73AA8;
    v34 = qword_280E73AB0;
    v35 = v49;
    sub_217009D14();
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v47);
    sub_217009D04();
    sub_216699778(v35, &qword_27CABA020);
    v36 = v31 + *(v46 + 36);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F0);
    v38 = v31;
    v39 = v36 + *(v37 + 36);
    sub_217009374();
    sub_216699778(v20, &qword_27CABA028);
    *(v39 + *(type metadata accessor for InsettableConcentricRectangle() + 20)) = 0;
    v40 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76E0) + 36);
    sub_216A7E918(v39, v40, type metadata accessor for InsettableConcentricRectangle);
    *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76E8) + 36)) = 256;
    *v36 = v32;
    *(v36 + 8) = v33;
    *(v36 + 16) = v34;
    v41 = v36 + *(v37 + 40);
    *v41 = swift_getKeyPath();
    *(v41 + 8) = 0;

    sub_216A7ECD0(v17, type metadata accessor for ContextMenuPreview.ContextPreviewArtwork);
    v42 = v50;
    sub_2167C5834(v38, v50, &qword_27CAB7680);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA010);
    *(v42 + *(v22 + 36)) = xmmword_21701F260;
    v23 = v42;
    v24 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
}

uint64_t sub_216A7B008@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for SuperHeroLockupView(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + v3[6];
  *v5 = swift_getKeyPath();
  v5[40] = 0;
  v6 = a2 + v3[7];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = a2 + v3[8];
  result = swift_getKeyPath();
  *v7 = result;
  v7[8] = 0;
  return result;
}

uint64_t sub_216A7B11C(uint64_t a1)
{
  result = sub_2166D7E84(qword_280E3CFA0, type metadata accessor for SuperHeroLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A7B174@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v2 - 8);
  v94 = &v78 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v4 - 8);
  v95 = &v78 - v5;
  v103 = type metadata accessor for SuperHeroArtworkView.StaticArtworkView(0);
  MEMORY[0x28223BE20](v103);
  v96 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v78 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC10F0);
  MEMORY[0x28223BE20](v101);
  v102 = &v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v78 - v11;
  v12 = sub_2170063E4();
  v90 = *(v12 - 8);
  v91 = v12;
  MEMORY[0x28223BE20](v12);
  v88 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC10F8);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v78 - v14;
  v15 = sub_217005EF4();
  MEMORY[0x28223BE20](v15 - 8);
  v80 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1100);
  v82 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v81 = &v78 - v17;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1108);
  v84 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v83 = &v78 - v18;
  v19 = sub_2170071B4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
  MEMORY[0x28223BE20](v23 - 8);
  v79 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v78 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v78 - v29;
  v31 = sub_217006EC4();
  v93 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v92 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v1 + *(type metadata accessor for SuperHeroArtworkView(0) + 20));
  v34 = type metadata accessor for SuperHeroLockup();
  v35 = 68;
  if (v33)
  {
    v35 = 64;
  }

  v36 = *(v34 + v35);
  v98 = v1;
  sub_216683A80(v1 + v36, v27, &qword_27CABBEA8);
  v37 = type metadata accessor for VideoArtwork();
  if (__swift_getEnumTagSinglePayload(v27, 1, v37) == 1)
  {
    sub_216699778(v27, &qword_27CABBEA8);
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v31);
LABEL_9:
    sub_216699778(v30, &qword_27CABBF10);
    v39 = type metadata accessor for SuperHeroLockup();
    v40 = v39;
    v41 = 60;
    if (v33)
    {
      v41 = 56;
      v42 = 0.8;
    }

    else
    {
      v42 = 2.44444444;
    }

    v43 = v98;
    v44 = v95;
    sub_216683A80(v98 + *(v39 + v41), v95, &qword_27CAB6D60);
    v45 = v94;
    sub_216683A80(v43 + *(v40 + 96), v94, &qword_27CAB6A00);
    v46 = type metadata accessor for ContentDescriptor();
    if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
    {
      sub_216699778(v45, &qword_27CAB6A00);
      v47 = 23;
    }

    else
    {
      v47 = *v45;
      sub_216A7ECD0(v45, type metadata accessor for ContentDescriptor);
    }

    v48 = v103;
    v49 = v99;
    LOBYTE(v105) = v47;
    v50 = sub_216E41068(&v105, 0);
    v52 = v51;
    v53 = v96;
    sub_2167C5834(v44, v96, &qword_27CAB6D60);
    *(v53 + v48[5]) = v42;
    v54 = (v53 + v48[6]);
    *v54 = v50;
    v54[1] = v52;
    v55 = v53 + v48[7];
    *v55 = swift_getKeyPath();
    *(v55 + 8) = 0;
    v56 = v53;
    v57 = v97;
    sub_216A7ED28(v56, v97, type metadata accessor for SuperHeroArtworkView.StaticArtworkView);
    sub_216A7E918(v57, v102, type metadata accessor for SuperHeroArtworkView.StaticArtworkView);
    swift_storeEnumTagMultiPayload();
    v58 = sub_21669E098(&qword_280E4A4B8, &qword_27CAC1100);
    v105 = v49;
    v106 = v58;
    swift_getOpaqueTypeConformance2();
    sub_2166D7E84(qword_280E3B0F8, type metadata accessor for SuperHeroArtworkView.StaticArtworkView);
    sub_217009554();
    return sub_216A7ECD0(v57, type metadata accessor for SuperHeroArtworkView.StaticArtworkView);
  }

  if (v33)
  {
    sub_217007144();
  }

  else
  {
    sub_217007154();
  }

  sub_216DEE900(v30);
  (*(v20 + 8))(v22, v19);
  sub_216A7ECD0(v27, type metadata accessor for VideoArtwork);
  v38 = v31;
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    goto LABEL_9;
  }

  (*(v93 + 32))(v92, v30, v31);
  v60 = sub_217006EB4();
  MEMORY[0x28223BE20](v60);
  MEMORY[0x28223BE20](v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1110);
  sub_216A7F7AC();
  v97 = sub_2166D7E84(qword_280E3B0F8, type metadata accessor for SuperHeroArtworkView.StaticArtworkView);
  v62 = v81;
  sub_2170063C4();
  v63 = sub_21669E098(&qword_280E4A4B8, &qword_27CAC1100);
  v64 = v85;
  v65 = v99;
  sub_21700A2A4();
  (*(v82 + 8))(v62, v65);
  v66 = v79;
  sub_216B0CCC4();
  if (__swift_getEnumTagSinglePayload(v66, 1, v37) == 1)
  {
    sub_216699778(v66, &qword_27CABBEA8);
    v67 = sub_21700C444();
    v68 = v89;
    v69 = v89;
    v70 = 1;
  }

  else
  {
    v71 = *(v37 + 20);
    v72 = sub_21700C444();
    v68 = v89;
    (*(*(v72 - 8) + 16))(v89, v66 + v71, v72);
    sub_216A7ECD0(v66, type metadata accessor for VideoArtwork);
    v69 = v68;
    v70 = 0;
    v67 = v72;
  }

  __swift_storeEnumTagSinglePayload(v69, v70, 1, v67);
  v73 = v88;
  sub_216B50CD4(v68, v88);
  v74 = v83;
  v75 = v87;
  sub_217006454();
  (*(v90 + 8))(v73, v91);
  (*(v86 + 8))(v64, v75);
  v76 = v84;
  v77 = v100;
  (*(v84 + 16))(v102, v74, v100);
  swift_storeEnumTagMultiPayload();
  v105 = v65;
  v106 = v63;
  swift_getOpaqueTypeConformance2();
  sub_217009554();
  (*(v76 + 8))(v74, v77);
  return (*(v93 + 8))(v92, v38);
}

uint64_t sub_216A7BEF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &__src[-v5];
  v7 = sub_217007474();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &__src[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1128);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &__src[-v13];
  sub_217006EA4();
  v15 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v15);
  sub_217007464();
  sub_21700B3B4();
  sub_217008BB4();
  (*(v8 + 32))(v14, v10, v7);
  memcpy(&v14[*(v12 + 44)], __src, 0x70uLL);
  if (*(a1 + *(type metadata accessor for SuperHeroArtworkView(0) + 20)))
  {
    v16 = 0x3FE999999999999ALL;
  }

  else
  {
    v16 = 0x40038E38E38E38E4;
  }

  sub_2167C5834(v14, a2, &qword_27CAC1128);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1110);
  v18 = a2 + *(result + 36);
  *v18 = v16;
  *(v18 + 8) = 256;
  return result;
}

uint64_t sub_216A7C17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24[-v8];
  v10 = *(a1 + *(type metadata accessor for SuperHeroArtworkView(0) + 20));
  v11 = type metadata accessor for SuperHeroLockup();
  v12 = v11;
  v13 = 60;
  if (v10)
  {
    v13 = 56;
  }

  sub_216683A80(a1 + *(v11 + v13), v9, &qword_27CAB6D60);
  type metadata accessor for SuperHeroLockup();
  sub_216683A80(a1 + *(v12 + 96), v6, &qword_27CAB6A00);
  v14 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
  {
    sub_216699778(v6, &qword_27CAB6A00);
    v15 = 23;
  }

  else
  {
    v15 = *v6;
    sub_216A7ECD0(v6, type metadata accessor for ContentDescriptor);
  }

  if (v10)
  {
    v16 = 0.8;
  }

  else
  {
    v16 = 2.44444444;
  }

  v25 = v15;
  v17 = sub_216E41068(&v25, 0);
  v19 = v18;
  sub_2167C5834(v9, a2, &qword_27CAB6D60);
  v20 = type metadata accessor for SuperHeroArtworkView.StaticArtworkView(0);
  *(a2 + v20[5]) = v16;
  v21 = (a2 + v20[6]);
  *v21 = v17;
  v21[1] = v19;
  v22 = a2 + v20[7];
  result = swift_getKeyPath();
  *v22 = result;
  *(v22 + 8) = 0;
  return result;
}

uint64_t sub_216A7C3C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v55 - v5;
  v6 = sub_21700C444();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v68 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2170090F4();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v55 - v19;
  v21 = sub_217007474();
  v66 = *(v21 - 8);
  v67 = v21;
  MEMORY[0x28223BE20](v21);
  v70 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v65 = &v55 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  v63 = *(v25 - 8);
  v64 = v25;
  MEMORY[0x28223BE20](v25);
  v62 = &v55 - v26;
  sub_216683A80(v1, v17, &qword_27CAB6D60);
  v27 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v17, 1, v27) == 1)
  {
    sub_216699778(v17, &qword_27CAB6D60);
    v28 = sub_21700C4B4();
    v29 = v20;
    v30 = 1;
  }

  else
  {
    v31 = sub_21700C4B4();
    (*(*(v31 - 8) + 16))(v20, v17, v31);
    sub_216A7ECD0(v17, type metadata accessor for Artwork);
    v29 = v20;
    v30 = 0;
    v28 = v31;
  }

  __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  v32 = type metadata accessor for SuperHeroArtworkView.StaticArtworkView(0);
  v33 = v2 + *(v32 + 28);
  v34 = *v33;
  if (*(v33 + 8) != 1)
  {

    sub_21700ED94();
    v58 = v6;
    v35 = sub_217009C34();
    v59 = v2;
    v36 = v35;
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v34, 0);
    v56 = a1;
    v57 = v7;
    v55 = v27;
    v37 = v61;
    v38 = *(v60 + 8);
    v38(v11, v61);

    sub_21700ED94();
    v39 = sub_217009C34();
    v2 = v59;
    sub_217007BC4();

    v6 = v58;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v34, 0);
    v38(v11, v37);
    v27 = v55;
    a1 = v56;
    v7 = v57;
  }

  sub_217007434();
  sub_216683A80(v2, v14, &qword_27CAB6D60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v27);
  v41 = v68;
  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v14, &qword_27CAB6D60);
    v42 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v6);
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v42, 1, v6) != 1)
    {
      sub_216699778(v42, &qword_27CAB7530);
    }
  }

  else
  {
    v43 = &v14[*(v27 + 20)];
    v44 = v69;
    (*(v7 + 16))(v69, v43, v6);
    sub_216A7ECD0(v14, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v6);
    (*(v7 + 32))(v41, v44, v6);
  }

  v45 = v65;
  v46 = v70;
  sub_2170073E4();
  (*(v7 + 8))(v41, v6);
  v47 = v67;
  v48 = *(v66 + 8);
  v48(v46, v67);
  v49 = (v2 + *(v32 + 24));
  v50 = *v49;
  v51 = v49[1];
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  *(v52 + 24) = v51;
  sub_2167B8890(v50, v51);
  sub_2167C505C();
  v53 = v62;
  sub_2170073F4();

  v48(v45, v47);
  return (*(v63 + 32))(a1, v53, v64);
}

void *sub_216A7CBA0@<X0>(void *a1@<X8>)
{
  v3 = sub_2170090F4();
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_8:
    sub_216A7F9A0(v61);
    return memcpy(a1, v61, 0x111uLL);
  }

  v44 = v4;
  v51 = a1;
  if (*(v1 + 48))
  {
    v9 = qword_27CAB5C90;
    sub_21700DF14();
    if (v9 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v10 = qword_280E2C348;
  sub_21700DF14();
  if (v10 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_10:

  v11 = sub_21700A094();
  v13 = v12;
  v15 = v14;

  sub_21700ACF4();
  v16 = sub_21700A034();
  v49 = v17;
  v50 = v16;
  v19 = v18;
  v48 = v20;

  sub_21678817C(v11, v13, v15 & 1);

  v47 = *(v1 + 40);
  KeyPath = swift_getKeyPath();
  v21 = sub_217009CE4();
  sub_217007F24();
  v45 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v19 & 1;
  v55 = v19 & 1;
  v54 = 0;
  v53 = 0;
  v30 = sub_217009C74();
  sub_217007F24();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v56 = 0;
  v59 = *(v1 + 56);
  v60 = *(v1 + 64);
  if (v60 != 1)
  {

    sub_21700ED94();
    v39 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216699778(&v59, &unk_27CAC1180);
    (*(v44 + 8))(v6, v3);
  }

  sub_21700B3B4();
  sub_217008BB4();
  memcpy(&v57[7], v58, 0x70uLL);
  v40 = swift_getKeyPath();
  v52[0] = v50;
  v52[1] = v49;
  LOBYTE(v52[2]) = v29;
  v52[3] = v48;
  v52[4] = KeyPath;
  v52[5] = v47;
  LOBYTE(v52[6]) = 0;
  LOBYTE(v52[7]) = v21;
  v52[8] = v45;
  v52[9] = v24;
  v52[10] = v26;
  v52[11] = v28;
  LOBYTE(v52[12]) = 0;
  LOBYTE(v52[13]) = v30;
  v52[14] = v32;
  v52[15] = v34;
  v52[16] = v36;
  v52[17] = v38;
  LOBYTE(v52[18]) = 0;
  memcpy(&v52[18] + 1, v57, 0x77uLL);
  v52[33] = v40;
  LOBYTE(v52[34]) = 1;
  nullsub_1(v52, v41, v42);
  memcpy(v61, v52, 0x111uLL);
  a1 = v51;
  return memcpy(a1, v61, 0x111uLL);
}

uint64_t sub_216A7D094@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1130);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v52[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1138);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v52[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1140);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v52[-1] - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1148);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v52[-1] - v16;
  memcpy(v59, v2, 0xD9uLL);
  *v5 = sub_2170093B4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1150);
  sub_216A7D5E4(v59, &v5[*(v18 + 44)]);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v5, v9, &qword_27CAC1130);
  memcpy(&v9[*(v7 + 44)], v58, 0x70uLL);
  LOBYTE(v5) = sub_217009C74();
  sub_217007F24();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_2167C5834(v9, v13, &qword_27CAC1138);
  v27 = &v13[*(v11 + 44)];
  *v27 = v5;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  LOBYTE(v9) = sub_217009CA4();
  sub_217007F24();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_2167C5834(v13, v17, &qword_27CAC1140);
  v36 = &v17[*(v15 + 44)];
  *v36 = v9;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_21700B384();
  v39 = v38;
  if (v59[200])
  {
    memcpy(__dst, &v59[56], 0x78uLL);
    v40 = swift_allocObject();
    memcpy((v40 + 16), v59, 0xD9uLL);
    v41 = memcpy(v53, &v59[56], sizeof(v53));
    MEMORY[0x28223BE20](v41);
    type metadata accessor for SocialBadgingRequestCoordinator();
    sub_2166D7E84(&qword_280E2FFC0, type metadata accessor for SocialBadgingRequestCoordinator);
    KeyPath = swift_getKeyPath();
    sub_216683A80(__dst, v52, &qword_27CABA180);
    sub_216A7F904(v59, v52);
    v43 = sub_217008CF4();
    v45 = v44;
    LOBYTE(v55[0]) = 0;
    memcpy(v52, v53, 0x78uLL);
    v52[15] = sub_216A7F8FC;
    v52[16] = v40;
    v52[17] = KeyPath;
    LOBYTE(v52[18]) = 0;
    v52[19] = v43;
    v52[20] = v45;
    v52[21] = sub_216B0E6FC;
    v52[22] = 0;
    LOBYTE(v52[23]) = 0;
    nullsub_1(v52, v46, v47);
    memcpy(v57, v52, 0xB9uLL);
  }

  else
  {
    sub_216A7F8F4(v57);
  }

  memcpy(v56, v57, 0xB9uLL);
  memcpy(v55, v56, 0xC0uLL);
  v55[24] = v37;
  v55[25] = v39;
  v48 = v51;
  sub_2167C5834(v17, v51, &qword_27CAC1148);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1158);
  memcpy((v48 + *(v49 + 36)), v55, 0xD0uLL);
  memcpy(v52, v56, 0xC0uLL);
  v52[24] = v37;
  v52[25] = v39;
  sub_216683A80(v55, &v54, &qword_27CAC1160);
  return sub_216699778(v52, &qword_27CAC1160);
}

uint64_t sub_216A7D5E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v47 = a2;
  v3 = sub_2170090F4();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1168);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v38 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1170);
  MEMORY[0x28223BE20](v42);
  v46 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  if (*(a1 + 200))
  {
    sub_216A7F944(v58);
  }

  else
  {
    memcpy(v57, (a1 + 56), sizeof(v57));
    v14 = memcpy(v51, (a1 + 56), sizeof(v51));
    MEMORY[0x28223BE20](v14);
    type metadata accessor for SocialBadgingRequestCoordinator();
    sub_2166D7E84(&qword_280E2FFC0, type metadata accessor for SocialBadgingRequestCoordinator);
    KeyPath = swift_getKeyPath();
    sub_216683A80(v57, v58, &qword_27CABA180);
    v16 = sub_217008CF4();
    v18 = v17;
    v48[0] = 0;
    v54[0] = 0;
    sub_21700B3D4();
    sub_217008BB4();
    memcpy(&v52[7], v53, 0x70uLL);
    v19 = sub_217009CA4();
    sub_217007F24();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v49[0] = 0;
    memcpy(v50, v51, 0x78uLL);
    v50[15] = sub_2168D0DF4;
    v50[16] = 0;
    v50[17] = KeyPath;
    LOBYTE(v50[18]) = 0;
    v50[19] = v16;
    v50[20] = v18;
    v50[21] = sub_216B0E6FC;
    v50[22] = 0;
    LOBYTE(v50[23]) = 0;
    memcpy(&v50[23] + 1, v52, 0x77uLL);
    LOBYTE(v50[38]) = v19;
    v50[39] = v21;
    v50[40] = v23;
    v50[41] = v25;
    v50[42] = v27;
    LOBYTE(v50[43]) = 0;
    nullsub_1(v50, v28, v29);
    memcpy(v58, v50, 0x159uLL);
  }

  v30 = sub_2170093B4();
  MEMORY[0x28223BE20](v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1178);
  sub_21669E098(&qword_280E2A498, &qword_27CAC1178);
  v31 = v43;
  sub_217006594();
  v56 = *(a1 + 216);
  v55 = *(a1 + 208);
  if (v56 != 1)
  {

    sub_21700ED94();
    v32 = sub_217009C34();
    sub_217007BC4();

    v33 = v39;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216699778(&v55, &unk_27CAC1180);
    (*(v40 + 8))(v33, v41);
  }

  sub_21700B3B4();
  sub_217008BB4();
  (*(v44 + 32))(v10, v31, v45);
  memcpy(&v10[*(v42 + 36)], v54, 0x70uLL);
  sub_2167C5834(v10, v13, &qword_27CAC1170);
  memcpy(v48, v58, sizeof(v48));
  v34 = v46;
  sub_216683A80(v13, v46, &qword_27CAC1170);
  memcpy(v49, v48, 0x159uLL);
  v35 = v47;
  memcpy(v47, v48, 0x159uLL);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1188);
  sub_216683A80(v34, v35 + *(v36 + 48), &qword_27CAC1170);
  sub_216683A80(v49, v50, &qword_27CAC1190);
  sub_216699778(v13, &qword_27CAC1170);
  sub_216699778(v34, &qword_27CAC1170);
  memcpy(v50, v48, 0x159uLL);
  return sub_216699778(v50, &qword_27CAC1190);
}

uint64_t sub_216A7DD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1198);
  v87 = *(v3 - 8);
  v88 = v3;
  MEMORY[0x28223BE20](v3);
  v85 = &v79 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11A0);
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x28223BE20](v5);
  v90 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v79 - v8;
  MEMORY[0x28223BE20](v9);
  v86 = &v79 - v10;
  MEMORY[0x28223BE20](v11);
  v96 = &v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11A8);
  v81 = *(v13 - 8);
  v82 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v79 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11B0);
  v83 = *(v16 - 8);
  v84 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v79 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11B8);
  MEMORY[0x28223BE20](v79);
  v20 = &v79 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11C0);
  MEMORY[0x28223BE20](v80);
  v22 = &v79 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11C8);
  MEMORY[0x28223BE20](v23 - 8);
  v94 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v79 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v79 - v29;
  v102[0] = *a1;
  sub_216683A80(v102, __src, &qword_27CABAA40);
  type metadata accessor for ExplicitBadgingPresenter();
  sub_2166D7E84(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter);
  v31 = sub_217008CF4();
  v95 = v30;
  if (*(&v102[0] + 1))
  {
    v33 = HIBYTE(*(&v102[0] + 1)) & 0xFLL;
    if ((*(&v102[0] + 1) & 0x2000000000000000) == 0)
    {
      v33 = *&v102[0] & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v34 = *(a1 + 48);
      *&__src[0] = v31;
      *(&__src[0] + 1) = v32;
      __src[1] = v102[0];
      LOBYTE(__src[2]) = v34;
      sub_216A7F94C();
      sub_21700A2A4();

      sub_216699778(v102, &qword_27CABAA40);
      v35 = v82;
      sub_217006484();
      (*(v81 + 8))(v15, v35);
      sub_217009D54();
      sub_217009DE4();
      v36 = sub_217009E34();

      KeyPath = swift_getKeyPath();
      (*(v83 + 32))(v20, v18, v84);
      v38 = &v20[*(v79 + 36)];
      *v38 = KeyPath;
      v38[1] = v36;
      v39 = sub_21700ACF4();
      v40 = swift_getKeyPath();
      sub_2167C5834(v20, v22, &qword_27CAC11B8);
      v41 = &v22[*(v80 + 36)];
      *v41 = v40;
      v41[1] = v39;
      v30 = v95;
      v42 = swift_getKeyPath();
      sub_2167C5834(v22, v27, &qword_27CAC11C0);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11D0);
      v44 = &v27[*(v43 + 36)];
      *v44 = v42;
      v44[8] = 1;
      v45 = v27;
      v46 = 0;
      goto LABEL_9;
    }

    sub_216699778(v102, &qword_27CABAA40);
  }

  else
  {
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11D0);
  v45 = v27;
  v46 = 1;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v45, v46, 1, v43);
  sub_2167C5834(v27, v30, &qword_27CAC11C8);
  v101 = *(a1 + 16);
  v47 = a1;
  v48 = *(&v101 + 1);
  if (*(&v101 + 1))
  {
    v49 = v101;
  }

  else
  {
    v49 = 0;
  }

  v50 = MEMORY[0x277D84F90];
  if (*(&v101 + 1))
  {
    v51 = MEMORY[0x277D84F90];
  }

  else
  {
    v51 = 0;
  }

  sub_216683A80(&v101, __src, &qword_27CABAA40);
  v52 = sub_217009D44();
  v53 = swift_getKeyPath();
  v54 = sub_21700ACF4();
  v55 = swift_getKeyPath();
  v56 = swift_getKeyPath();
  *&__src[0] = v49;
  *(&__src[0] + 1) = v48;
  *&__src[1] = 0;
  *(&__src[1] + 1) = v51;
  *&__src[2] = v53;
  *(&__src[2] + 1) = v52;
  *&__src[3] = v55;
  *(&__src[3] + 1) = v54;
  *&__src[4] = v56;
  BYTE8(__src[4]) = 1;
  memcpy(v98, __src, 0x49uLL);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1B8);
  sub_21686BE88();
  v57 = v85;
  sub_21700A2A4();
  sub_216699778(__src, &qword_27CABA1B8);
  v58 = v88;
  sub_217006484();
  v87 = *(v87 + 8);
  (v87)(v57, v58);
  v100 = *(v47 + 32);
  v59 = *(&v100 + 1);
  if (*(&v100 + 1))
  {
    v60 = v100;
  }

  else
  {
    v60 = 0;
  }

  if (*(&v100 + 1))
  {
    v61 = v50;
  }

  else
  {
    v61 = 0;
  }

  v82 = v60;
  v83 = v61;
  sub_216683A80(&v100, v98, &qword_27CABAA40);
  v62 = sub_217009D44();
  v63 = swift_getKeyPath();
  v64 = sub_21700ACF4();
  v65 = swift_getKeyPath();
  v66 = swift_getKeyPath();
  v98[0] = v82;
  v98[1] = v59;
  v98[2] = 0;
  v98[3] = v83;
  v98[4] = v63;
  v98[5] = v62;
  v98[6] = v65;
  v98[7] = v64;
  v98[8] = v66;
  LOBYTE(v98[9]) = 1;
  memcpy(v97, v98, sizeof(v97));
  sub_21700A2A4();
  sub_216699778(v98, &qword_27CABA1B8);
  v67 = v86;
  sub_217006484();
  (v87)(v57, v58);
  v68 = v94;
  sub_216683A80(v95, v94, &qword_27CAC11C8);
  v70 = v91;
  v69 = v92;
  v71 = *(v91 + 16);
  v72 = v89;
  v71(v89, v96, v92);
  v73 = v90;
  v71(v90, v67, v69);
  v74 = v68;
  v75 = v93;
  sub_216683A80(v74, v93, &qword_27CAC11C8);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC11D8);
  v71((v75 + *(v76 + 48)), v72, v69);
  v71((v75 + *(v76 + 64)), v73, v69);
  v77 = *(v70 + 8);
  v77(v67, v69);
  v77(v96, v69);
  sub_216699778(v95, &qword_27CAC11C8);
  v77(v73, v69);
  v77(v72, v69);
  return sub_216699778(v94, &qword_27CAC11C8);
}

uint64_t sub_216A7E75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217009CD4();
  sub_217007F24();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_21700DF14();
  v13 = sub_217009CA4();
  result = sub_217007F24();
  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 48) = 0;
  *(a2 + 56) = v13;
  *(a2 + 64) = v15;
  *(a2 + 72) = v16;
  *(a2 + 80) = v17;
  *(a2 + 88) = v18;
  *(a2 + 96) = 0;
  return result;
}

uint64_t sub_216A7E85C(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  *a4 = *a3;
}

uint64_t sub_216A7E8B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SuperHeroLockupView(0);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return sub_216A78CC8(v4, a1);
}

uint64_t sub_216A7E918(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216A7E984()
{
  v0 = type metadata accessor for SuperHeroLockupView(0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_31_3(*(v1 + 80));

  return sub_216A7A680();
}

unint64_t sub_216A7E9D8()
{
  result = qword_280E2B198;
  if (!qword_280E2B198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1058);
    type metadata accessor for ActionButtonStyle(255);
    sub_21669E098(qword_280E44E08, &qword_27CAC1058);
    sub_2166D7E84(&qword_280E404C0, type metadata accessor for ActionButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A810, &qword_27CAB8A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B198);
  }

  return result;
}

unint64_t sub_216A7EB58()
{
  result = qword_280E2B178;
  if (!qword_280E2B178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0);
    type metadata accessor for ContextMenuPreview(255);
    sub_216A7E9D8();
    sub_21669E098(qword_280E2BAE8, &qword_27CAB8AA0);
    sub_2166D7E84(qword_280E3F158, type metadata accessor for ContextMenuPreview);
    swift_getOpaqueTypeConformance2();
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B178);
  }

  return result;
}

uint64_t sub_216A7ECD0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216A7ED28(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_216A7EDA4()
{
  result = qword_280E2B120;
  if (!qword_280E2B120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC10A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC10C8);
    sub_216A7EE98();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2AC00, &qword_27CAB9FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B120);
  }

  return result;
}

unint64_t sub_216A7EE98()
{
  result = qword_280E2AD70;
  if (!qword_280E2AD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC10C8);
    sub_216A7EF50();
    sub_21669E098(&qword_280E2A808, &qword_27CAB72E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AD70);
  }

  return result;
}

unint64_t sub_216A7EF50()
{
  result = qword_280E2AD90;
  if (!qword_280E2AD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC10D0);
    sub_216A7F008();
    sub_21669E098(qword_280E382B8, &qword_27CAB7440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AD90);
  }

  return result;
}

unint64_t sub_216A7F008()
{
  result = qword_280E2ADE8;
  if (!qword_280E2ADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC10D8);
    sub_216A7F094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ADE8);
  }

  return result;
}

unint64_t sub_216A7F094()
{
  result = qword_280E2AE60;
  if (!qword_280E2AE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC10E0);
    sub_216A7F14C();
    sub_21669E098(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE60);
  }

  return result;
}

unint64_t sub_216A7F14C()
{
  result = qword_280E2AF28;
  if (!qword_280E2AF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1098);
    sub_216A7F204();
    sub_21669E098(&qword_280E2AD10, &unk_27CAC10C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF28);
  }

  return result;
}

unint64_t sub_216A7F204()
{
  result = qword_280E2B048;
  if (!qword_280E2B048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC10B0);
    sub_216A7F2BC();
    sub_21669E098(&qword_280E2AD18, &unk_27CAC10B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B048);
  }

  return result;
}

unint64_t sub_216A7F2BC()
{
  result = qword_280E2B2A0;
  if (!qword_280E2B2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC10A8);
    sub_2166D7E84(qword_280E3B058, type metadata accessor for SuperHeroArtworkView);
    sub_21669E098(&qword_280E2ACF8, &qword_27CABA0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B2A0);
  }

  return result;
}

uint64_t sub_216A7F3B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 217))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216A7F40C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 216) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 217) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 217) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_216A7F4E0()
{
  result = type metadata accessor for SuperHeroLockup();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_216A7F554()
{
  result = qword_280E2B138;
  if (!qword_280E2B138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1088);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1050);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA000);
    sub_216A7EB58();
    sub_216A7FEBC(&qword_280E2AE70, &qword_27CABA000, &unk_21701F600, sub_21686AFD8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B138);
  }

  return result;
}

unint64_t sub_216A7F7AC()
{
  result = qword_27CAC1118;
  if (!qword_27CAC1118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1110);
    sub_216A7F838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1118);
  }

  return result;
}

unint64_t sub_216A7F838()
{
  result = qword_27CAC1120;
  if (!qword_27CAC1120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1128);
    sub_2166D7E84(&qword_280E4A3F0, MEMORY[0x277CE43D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1120);
  }

  return result;
}

unint64_t sub_216A7F94C()
{
  result = qword_280E402B8;
  if (!qword_280E402B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E402B8);
  }

  return result;
}

void sub_216A7F9D0()
{
  sub_216A7FAA4(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2168AEB44(319, &qword_280E2B480);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216A7FAA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_216A7FB08()
{
  result = qword_280E2AAD8;
  if (!qword_280E2AAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC11E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1100);
    sub_21669E098(&qword_280E4A4B8, &qword_27CAC1100);
    swift_getOpaqueTypeConformance2();
    sub_2166D7E84(qword_280E3B0F8, type metadata accessor for SuperHeroArtworkView.StaticArtworkView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AAD8);
  }

  return result;
}

unint64_t sub_216A7FC34()
{
  result = qword_280E2ADF8;
  if (!qword_280E2ADF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1158);
    sub_216A7FCEC();
    sub_21669E098(&qword_280E2AD00, &qword_27CAC1160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ADF8);
  }

  return result;
}

unint64_t sub_216A7FCEC()
{
  result = qword_280E2AE90;
  if (!qword_280E2AE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1148);
    sub_216A7FD78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE90);
  }

  return result;
}

unint64_t sub_216A7FD78()
{
  result = qword_280E2AF68;
  if (!qword_280E2AF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1140);
    sub_216A7FE04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF68);
  }

  return result;
}

unint64_t sub_216A7FE04()
{
  result = qword_280E2B0A0;
  if (!qword_280E2B0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1138);
    sub_21669E098(&qword_280E2A520, &qword_27CAC1130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0A0);
  }

  return result;
}

uint64_t sub_216A7FEBC(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216A7FF34()
{
  result = qword_280E2ADE0;
  if (!qword_280E2ADE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC11F0);
    sub_216A7FFEC();
    sub_21669E098(&qword_280E2A730, &unk_27CAB8688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ADE0);
  }

  return result;
}

unint64_t sub_216A7FFEC()
{
  result = qword_280E2AE48;
  if (!qword_280E2AE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC11F8);
    sub_216A80078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE48);
  }

  return result;
}

unint64_t sub_216A80078()
{
  result = qword_280E2AF10;
  if (!qword_280E2AF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1200);
    sub_216A80104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF10);
  }

  return result;
}

unint64_t sub_216A80104()
{
  result = qword_280E2B010;
  if (!qword_280E2B010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1208);
    sub_21680DC54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B010);
  }

  return result;
}

unint64_t sub_216A801AC()
{
  result = qword_280E2B328;
  if (!qword_280E2B328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1210);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B328);
  }

  return result;
}

id sub_216A802AC(uint64_t a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v2 = result;
    sub_21700DD04();
    sub_21700F0B4();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216A80368(uint64_t a1)
{
  result = sub_21668F0F0(&qword_27CAC1218, type metadata accessor for SocialBadgingMap);
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SocialBadgingMapIntent(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216A804A0()
{
  result = qword_27CAC1220;
  if (!qword_27CAC1220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1228);
    sub_21668F0F0(&qword_27CAC1230, type metadata accessor for SocialBadgingMap);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1220);
  }

  return result;
}

unint64_t sub_216A80554(uint64_t a1)
{
  *(a1 + 8) = sub_216A80584();
  result = sub_216A805D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216A80584()
{
  result = qword_27CAC1238;
  if (!qword_27CAC1238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1238);
  }

  return result;
}

unint64_t sub_216A805D8()
{
  result = qword_27CAC1240;
  if (!qword_27CAC1240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1240);
  }

  return result;
}

uint64_t type metadata accessor for TVShowDetailPageIntent()
{
  result = qword_27CAC1248;
  if (!qword_27CAC1248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A806EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v51, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44));
  if (v25)
  {
    (*(v8 + 8))(v51, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v51;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for TVShowDetailPageIntent();
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_216A80A7C(JSContext a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v8 = type metadata accessor for TVShowDetailPageIntent();
    sub_2168CC268(v1 + *(v8 + 20), v5);
    v9 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_2168CC2D8(v5);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v5);
    }

    sub_2166F1F64(isa);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216A80C50(uint64_t a1)
{
  result = sub_2166CE594(&qword_27CAC1258, type metadata accessor for TVShowDetailPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A80CF0(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE594(&qword_27CAC1258, type metadata accessor for TVShowDetailPageIntent);
  result = sub_2166CE594(&qword_27CAC1260, type metadata accessor for TVShowDetailPageIntent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216A80D88()
{
  result = qword_280E34220;
  if (!qword_280E34220)
  {
    type metadata accessor for PromptRemoveFollowerAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E34220);
  }

  return result;
}

uint64_t sub_216A80DE0()
{
  v0 = sub_21700D2A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA0], v0);
  return sub_21700E1F4();
}

uint64_t sub_216A80ECC(char *a1)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for PlaylistDetailHeaderLockup();
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v38 = v6 - v5;
  v7 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v35 = v8;
  v10 = MEMORY[0x28223BE20](v9);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1318);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC12C8);
  OUTLINED_FUNCTION_34();
  v21 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v35 - v22;
  v24 = OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource__footerModel;
  v25 = type metadata accessor for ContainerDetailTracklistFooterLockup();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  sub_2166A6EA4();
  sub_217007DA4();
  sub_2166997CC(v23, &qword_27CAC12C8);
  (*(v16 + 32))(v1 + v24, v19, v14);
  *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource_containerItemAutoupdatingResponseSubscription) = 0;
  v26 = OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource_libraryData;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC12E8);
  __swift_storeEnumTagSinglePayload(v2 + v26, 1, 1, v27);
  *(v2 + OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource_modelsUpdateTask) = 0;
  v28 = v35;
  v29 = *(v35 + 16);
  v30 = v37;
  v29(v13, v37, v7);
  OUTLINED_FUNCTION_16_5();
  v29(v36, v13, v7);
  sub_217007DA4();
  v31 = *(v28 + 8);
  v31(v13, v7);
  swift_endAccess();
  v29(v13, v30, v7);
  sub_216BCA75C(v13, v38);
  v29(v13, v30, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C8);
  swift_allocObject();
  sub_216DC4A18();
  v33 = v32;
  OUTLINED_FUNCTION_16_5();
  v39 = v33;
  sub_217007DA4();
  swift_endAccess();
  OUTLINED_FUNCTION_16_5();
  v39 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC12D8);
  sub_217007DA4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  sub_217007DE4();

  sub_216A81578(v13);
  v31(v13, v7);
  sub_216A817EC();
  v31(v30, v7);
  return v2;
}

uint64_t sub_216A8137C()
{
  OUTLINED_FUNCTION_31_0();
  v1 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v7, v0, v1);

  sub_217007DF4();
  sub_216A818EC();
  v8 = OUTLINED_FUNCTION_116();
  return v9(v8);
}

uint64_t sub_216A8148C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_60_0();
  return sub_217007DF4();
}

uint64_t sub_216A814F8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_60_0();
  return sub_217007DF4();
}

uint64_t sub_216A81578(uint64_t a1)
{
  v18 = *v1;
  v3 = sub_21700C924();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource_modelsUpdateTask;
  if (*(v1 + OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource_modelsUpdateTask))
  {

    sub_21700EB04();
  }

  sub_21700EA44();
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v4 + 32))(v14 + v12, v6, v3);
  *(v14 + v13) = v1;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;

  v15 = sub_216888C34(0, 0, v9, &unk_21703D708, v14);
  sub_2166997CC(v9, &unk_27CABFAC0);
  *(v1 + v10) = v15;
}

uint64_t sub_216A817EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_21700EA34();

  v6 = sub_21700EA24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_21677BBA0();
}

uint64_t sub_216A818EC()
{
  v0 = sub_21700C924();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  sub_216A81578(v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_216A819F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_34();

  return v1;
}

uint64_t sub_216A81A6C()
{
  v0 = OUTLINED_FUNCTION_82();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_60_0();
  sub_2166A6EA4();

  sub_217007DF4();
  v3 = OUTLINED_FUNCTION_116();
  return sub_2166997CC(v3, v4);
}

uint64_t sub_216A81B48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_34();

  return v1;
}

uint64_t sub_216A81BA8(uint64_t a1)
{
  v2 = sub_21700C924();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_216A8137C();
}

BOOL sub_216A81CCC()
{
  v0 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1398);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  sub_21700C904();
  (*(v2 + 8))(v6, v0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13A0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2166997CC(v10, &qword_27CAC1398);
    return 0;
  }

  else
  {
    sub_2166D9530(&qword_27CAC13B8, &qword_27CAC13A0);
    OUTLINED_FUNCTION_82();
    sub_21700EC54();
    OUTLINED_FUNCTION_82();
    sub_21700EC94();
    OUTLINED_FUNCTION_60_0();
    v13 = sub_21700EC84();
    v14 = OUTLINED_FUNCTION_116();
    v15(v14);
    return v13 > 0;
  }
}

uint64_t sub_216A81F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21700EA34();
  *(v4 + 24) = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216A81F98, v6, v5);
}

uint64_t sub_216A81F98()
{
  OUTLINED_FUNCTION_33();

  sub_216A81FF4();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A81FF4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1330);
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x28223BE20](v4);
  v48 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1338);
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  MEMORY[0x28223BE20](v7);
  v49 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1340);
  v11 = *(v10 - 8);
  v56 = v10;
  v57 = v11;
  MEMORY[0x28223BE20](v10);
  v50 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1328);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v46 - v14;
  v16 = sub_21700C924();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1348);
  v21 = *(v20 - 8);
  v46 = v20;
  v47 = v21;
  MEMORY[0x28223BE20](v20);
  v58 = &v46 - v22;
  sub_21700B7E4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4F8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_217013DA0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  v25 = sub_21700C7C4();
  v27 = v26;
  (*(v17 + 8))(v19, v16);
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  v28 = v46;
  v29 = v58;
  MEMORY[0x21CE9C5F0](KeyPath, v24, v46, MEMORY[0x277CD7E88]);

  sub_2166D9530(&qword_280E2A448, &qword_27CAC1348);
  v30 = sub_217006944();
  v31 = *(v21 + 16);
  v32 = v28;
  v31(v15, v29, v28);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC12E8);
  *&v15[*(v33 + 36)] = v30;
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v33);
  v34 = OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource_libraryData;
  swift_beginAccess();

  sub_216A85574(v15, v1 + v34);
  swift_endAccess();
  v35 = v48;
  sub_217006974();
  sub_2166AF2EC();
  v36 = sub_21700EE84();
  v59 = v36;
  v37 = sub_21700EE64();
  v38 = v51;
  __swift_storeEnumTagSinglePayload(v51, 1, 1, v37);
  sub_2166D9530(&qword_280E484C0, &qword_27CAC1330);
  sub_2166D572C(&qword_280E29CD8, sub_2166AF2EC);
  v39 = v49;
  v40 = v52;
  sub_217007E54();
  sub_2166997CC(v38, &qword_27CABE1F0);

  (*(v53 + 8))(v35, v40);
  sub_2166D9530(&qword_27CAC1350, &qword_27CAC1338);
  v41 = v50;
  v42 = v54;
  sub_217007E64();
  (*(v55 + 8))(v39, v42);
  swift_allocObject();
  swift_weakInit();
  sub_2166D9530(&qword_27CAC1358, &qword_27CAC1340);
  v43 = v56;
  v44 = sub_217007E84();

  (*(v57 + 8))(v41, v43);
  (*(v47 + 8))(v58, v32);
  *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryPlaylistDataSource_containerItemAutoupdatingResponseSubscription) = v44;
}

uint64_t sub_216A8276C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_21700BF04();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216A827B4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1360);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_2166A6EA4();
  sub_21700EA34();

  v8 = sub_21700EA24();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  sub_2167A4788();
  sub_21677BBA0();
}

uint64_t sub_216A82984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_21700B804();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1370);
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1360);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v8 = sub_21700C924();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  sub_21700EA34();
  v5[20] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v5[21] = v10;
  v5[22] = v9;

  return MEMORY[0x2822009F8](sub_216A82BC4, v10, v9);
}

uint64_t sub_216A82F48()
{
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];

    (*(v5 + 8))(v4, v6);
    v7 = v2[21];
    v8 = v2[22];
    v9 = sub_216A83210;
  }

  else
  {
    v10 = v2[16];
    v11 = v2[17];
    v12 = v2[14];
    (*(v2[8] + 8))(v2[9], v2[7]);

    v13 = *(v11 + 8);
    v2[26] = v13;
    v2[27] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v12, v10);
    v7 = v2[21];
    v8 = v2[22];
    v9 = sub_216A830F0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216A830F0()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[26];
  v2 = v0[19];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];

  __swift_storeEnumTagSinglePayload(v6, 0, 1, v5);
  (*(v4 + 32))(v2, v6, v5);
  (*(v4 + 16))(v3, v2, v5);
  sub_216A8137C();

  v1(v2, v5);
  OUTLINED_FUNCTION_13_0();

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t sub_216A83210()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];

  (*(v3 + 8))(v4, v2);
  OUTLINED_FUNCTION_29_14();
  sub_2166997CC(v1, &qword_27CAB74B8);
  OUTLINED_FUNCTION_13_0();

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_216A832F8(uint64_t a1)
{
  v94 = type metadata accessor for LibraryPlaylistDataSource.TrackData(0);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v97 = (&v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB810);
  MEMORY[0x28223BE20](v3 - 8);
  v111 = &v88 - v4;
  v5 = sub_21700C894();
  v6 = *(v5 - 8);
  v118 = v5;
  v119 = v6;
  MEMORY[0x28223BE20](v5);
  v92 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v96 = &v88 - v9;
  v113 = sub_21700C924();
  v106 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlaylistTrackLockup();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v88 - v15;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1378);
  MEMORY[0x28223BE20](v116);
  v117 = &v88 - v17;
  v95 = sub_21700C8E4();
  v105 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v110 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v88 - v20;
  MEMORY[0x28223BE20](v22);
  v101 = &v88 - v23;
  MEMORY[0x28223BE20](v24);
  v100 = &v88 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1380);
  MEMORY[0x28223BE20](v26 - 8);
  v115 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v114 = &v88 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1388);
  MEMORY[0x28223BE20](v30 - 8);
  v121 = &v88 - v31;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1390);
  MEMORY[0x28223BE20](v122);
  v33 = &v88 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1398);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v88 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13A0);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v88 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v88 - v42;
  v124 = a1;
  sub_21700C904();
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    sub_2166997CC(v36, &qword_27CAC1398);
    return MEMORY[0x277D84F90];
  }

  v107 = v16;
  v91 = v13;
  v45 = *(v38 + 32);
  v45(v43, v36, v37);
  v46 = *(v38 + 16);
  v47 = v121;
  v123 = v43;
  v46(v121, v43, v37);
  v45(v40, v47, v37);
  sub_2166D9530(&qword_27CAC13A8, &qword_27CAC13A0);
  sub_21700E754();
  v99 = *(v122 + 36);
  *&v33[v99] = 0;
  v109 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13B0) + 36);
  v48 = sub_2166D9530(&qword_27CAC13B8, &qword_27CAC13A0);
  v108 = 0;
  v121 = v105 + 32;
  v122 = (v105 + 16);
  v106 += 2;
  v90 = (v119 + 32);
  v89 = (v119 + 16);
  v88 = (v119 + 8);
  v98 = MEMORY[0x277D84F90];
  v102 = (v105 + 8);
  v49 = v117;
  v50 = v95;
  v120 = v21;
  v105 = v33;
  v51 = v37;
  v104 = v37;
  v52 = v38;
  v119 = v38;
  v103 = v48;
LABEL_4:
  for (i = v123; ; i = v123)
  {
    sub_21700EC94();
    if (*&v33[v109] == v125)
    {
      v54 = v52;
      v55 = 1;
      v56 = v115;
      v57 = v116;
      goto LABEL_9;
    }

    v58 = sub_21700ECE4();
    v59 = v101;
    (*v122)(v101);
    v58(&v125, 0);
    sub_21700ECA4();
    v60 = *v121;
    v61 = v100;
    (*v121)(v100, v59, v50);
    v57 = v116;
    v62 = *(v116 + 48);
    v63 = v108;
    *v49 = v108;
    result = v60(&v49[v62], v61, v50);
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      break;
    }

    v108 = v65;
    *&v33[v99] = v65;
    v56 = v115;
    sub_2167A4788();
    v55 = 0;
    v54 = v119;
    v21 = v120;
    i = v123;
LABEL_9:
    __swift_storeEnumTagSinglePayload(v56, v55, 1, v57);
    v66 = v114;
    sub_2167A4788();
    if (__swift_getEnumTagSinglePayload(v66, 1, v57) == 1)
    {
      sub_2166997CC(v33, &qword_27CAC1390);
      (*(v54 + 8))(i, v51);
      return v98;
    }

    v67 = *v66;
    (*v121)(v21, &v66[*(v57 + 48)], v50);
    result = sub_21700C914();
    if (result == 2 || (result & 1) == 0)
    {
      v68 = 0;
      v69 = 1;
    }

    else
    {
      v68 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_24;
      }

      v69 = 0;
    }

    v70 = *v122;
    v71 = v110;
    v21 = v120;
    (*v122)(v110, v120, v50);
    v72 = v50;
    v73 = *v106;
    v74 = v112;
    (*v106)(v112, v124, v113);
    sub_216BCB944(v71, v74, 0, v68, v69, v107);
    v75 = v111;
    sub_21700C8A4();
    if (__swift_getEnumTagSinglePayload(v75, 1, v118) != 1)
    {
      v76 = v96;
      v77 = v118;
      (*v90)(v96, v75, v118);
      sub_216A85BE0();
      (*v89)(v92, v76, v77);
      v73(v112, v124, v113);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF910);
      swift_allocObject();
      sub_2168C7664();
      v79 = v78;
      v80 = v97;
      v70(v97 + *(v94 + 20), v21, v72);
      *v80 = v79;
      v81 = v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v72;
      v51 = v104;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_216938CDC(0, *(v81 + 16) + 1, 1, v81);
        v81 = v86;
      }

      v49 = v117;
      v33 = v105;
      v52 = v119;
      v98 = v81;
      v84 = *(v81 + 16);
      v83 = *(v81 + 24);
      if (v84 >= v83 >> 1)
      {
        sub_216938CDC(v83 > 1, v84 + 1, 1, v98);
        v98 = v87;
      }

      (*v88)(v96, v118);
      sub_216A85B90();
      (*v102)(v21, v50);
      v85 = v98;
      *(v98 + 16) = v84 + 1;
      sub_216A85C38(v97, v85 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v84);
      goto LABEL_4;
    }

    sub_216A85B90();
    (*v102)(v21, v72);
    sub_2166997CC(v75, &qword_27CABB810);
    v49 = v117;
    v50 = v72;
    v33 = v105;
    v51 = v104;
    v52 = v119;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_216A84094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[277] = a6;
  v6[271] = a5;
  v6[265] = a4;
  v7 = sub_21700C924();
  v6[283] = v7;
  v8 = *(v7 - 8);
  v6[289] = v8;
  v6[295] = *(v8 + 64);
  v6[296] = swift_task_alloc();
  v6[297] = swift_task_alloc();
  v6[298] = swift_task_alloc();
  v6[299] = type metadata accessor for ContainerDetailTracklistFooterLockup();
  v6[300] = swift_task_alloc();
  v6[301] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A841B8, 0, 0);
}

uint64_t sub_216A841B8()
{
  if (sub_21700EB24())
  {
    OUTLINED_FUNCTION_19_34();

    OUTLINED_FUNCTION_3();

    return v1();
  }

  else
  {
    v3 = v0[298];
    v17 = v0[297];
    v4 = v0[295];
    v5 = v0[289];
    v6 = v0[283];
    v18 = v0[277];
    v19 = v0[296];
    v20 = *(v5 + 16);
    v21 = v0[265];
    v20(v3);
    v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v8 = swift_allocObject();
    v0[302] = v8;
    v9 = *(v5 + 32);
    v10 = v7;
    v9(v8 + v7, v3, v6);
    swift_asyncLet_begin();
    (v20)(v17, v21, v6);
    v11 = (v7 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    v0[303] = v12;
    v9(v12 + v10, v17, v6);
    *(v12 + v11) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC12D8);
    swift_asyncLet_begin();
    (v20)(v19, v21, v6);
    v13 = swift_allocObject();
    v0[304] = v13;
    v9(v13 + v10, v19, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C8);
    swift_asyncLet_begin();
    v14 = OUTLINED_FUNCTION_15_41();

    return MEMORY[0x282200928](v14, v15, v16, v0 + 242);
  }
}

uint64_t sub_216A844A0()
{
  OUTLINED_FUNCTION_33();
  *(v0 + 2440) = *(v0 + 2024);

  return MEMORY[0x282200928](v0 + 656, v0 + 1976, sub_216A8450C, v0 + 1984);
}

uint64_t sub_216A8450C()
{
  OUTLINED_FUNCTION_33();
  v0[306] = v0[247];
  sub_21700DF14();
  v1 = v0[301];

  return MEMORY[0x282200928](v0 + 2, v1, sub_216A84578, v0 + 254);
}

uint64_t sub_216A8458C()
{
  OUTLINED_FUNCTION_33();
  sub_216A85BE0();
  if (sub_21700EB24())
  {

    OUTLINED_FUNCTION_6_57();
    sub_216A85B90();
    v1 = OUTLINED_FUNCTION_15_41();

    return MEMORY[0x282200920](v1, v2, v3, v0 + 2224);
  }

  else
  {
    swift_weakInit();
    sub_21700EA34();
    *(v0 + 2456) = sub_21700EA24();
    v5 = sub_21700E9B4();

    return MEMORY[0x2822009F8](sub_216A846A8, v5, v4);
  }
}

uint64_t sub_216A846A8()
{
  OUTLINED_FUNCTION_31();

  sub_216A84D38();

  swift_weakDestroy();

  return MEMORY[0x2822009F8](sub_216A84780, 0, 0);
}